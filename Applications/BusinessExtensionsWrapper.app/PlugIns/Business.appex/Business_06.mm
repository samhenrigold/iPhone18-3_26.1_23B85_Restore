unint64_t sub_10008C600()
{
  result = qword_1000F35A8;
  if (!qword_1000F35A8)
  {
    sub_1000041E8(&qword_1000F35A0, &qword_1000B4E68);
    sub_10008C684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F35A8);
  }

  return result;
}

unint64_t sub_10008C684()
{
  result = qword_1000EF128;
  if (!qword_1000EF128)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF128);
  }

  return result;
}

id sub_10008C6EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel;
  *&v2[v4] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView] = 0;
  if (a2)
  {
    v5 = sub_1000AC02C();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for IMBDefaultSectionHeader();
  v6 = objc_msgSendSuper2(&v9, "initWithReuseIdentifier:", v5);

  v7 = v6;
  sub_10008C880();
  sub_10008CC70();

  return v7;
}

void sub_10008C880()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel];
  if (sub_10002CE60() >= 2u)
  {
    v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
    sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
    inited = swift_initStackObject();
    v19 = xmmword_1000AF0E0;
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1000AF0E0;
    *(v5 + 32) = UIFontWeightTrait;
    *(v5 + 40) = UIFontWeightSemibold;
    v6 = UIFontDescriptorTraitsAttribute;
    v7 = UIFontWeightTrait;
    v8 = sub_10004FA58(v5);
    swift_setDeallocating();
    sub_10000E784(v5 + 32, &qword_1000EF8C0, &qword_1000B0608);
    *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
    *(inited + 40) = v8;
    sub_10004FB48(inited);
    swift_setDeallocating();
    sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
    type metadata accessor for AttributeName(0);
    sub_100013968();
    isa = sub_1000ABFAC().super.isa;

    v10 = [v3 fontDescriptorByAddingAttributes:isa];

    v11 = [objc_opt_self() fontWithDescriptor:v10 size:11.0];
    v12 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v2 = [v12 scaledFontForFont:v11];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  }

  [v1 setFont:{v2, v19}];

  v13 = objc_opt_self();
  v14 = [v13 secondaryLabelColor];
  [v1 setTextColor:v14];

  [v1 setNumberOfLines:0];
  v15 = [v0 contentView];
  if (sub_10002CE60() >= 2u)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    v16 = qword_1000FBEF0;
  }

  else
  {
    v16 = [v13 systemGroupedBackgroundColor];
  }

  v17 = v16;
  [v15 setBackgroundColor:v16];

  [v0 addSubview:v1];
  v18 = sub_10008D2BC();
  [v0 addSubview:v18];
}

void sub_10008CC70()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v4 = sub_10002CE60();
  v5 = 12.0;
  if ((v4 & 0xFE) == 0)
  {
    v5 = 30.0;
  }

  v6 = [v2 constraintEqualToAnchor:v3 constant:v5];

  [v6 setActive:1];
  if (sub_10002CE60() == 2)
  {
    v7 = [v1 leadingAnchor];
    v8 = [v0 leadingAnchor];
    v9 = 0.0;
    if ((sub_10002CE60() & 0xFE) != 0)
    {
      v10 = 16.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [v7 constraintEqualToAnchor:v8 constant:v10];

    [v11 setActive:1];
    v12 = [v1 trailingAnchor];
    v13 = [v0 trailingAnchor];
    if (sub_10002CE60() >= 2u)
    {
      if ((sub_10002CE60() & 0xFE) != 0)
      {
        v9 = 16.0;
      }

      else
      {
        v9 = 0.0;
      }
    }

    v14 = [v12 constraintEqualToAnchor:v13 constant:-v9];
  }

  else
  {
    v15 = [v1 leftAnchor];
    v16 = [v0 layoutMarginsGuide];
    v17 = [v16 leftAnchor];

    sub_10002CE60();
    v18 = [v15 constraintEqualToAnchor:v17 constant:0.0];

    [v18 setActive:1];
    v12 = [v1 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v13 = [v19 rightAnchor];

    v14 = [v12 constraintEqualToAnchor:v13];
  }

  v20 = v14;

  [v20 setActive:1];
  v21 = v0;
  v22 = sub_10002CE60();
  v23 = v21;
  v24 = 0.0;
  if (sub_10002CE60() >= 2u)
  {
    if ((sub_10002CE60() & 0xFE) != 0)
    {
      v24 = 16.0;
    }

    else
    {
      v24 = 0.0;
    }
  }

  v25 = v23;
  v26 = sub_10008D2BC();
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView;
  v28 = [*&v25[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView] heightAnchor];
  v29 = [v25 traitCollection];
  [v29 displayScale];
  v31 = v30;

  if (v31 <= 0.0)
  {
    v32 = [objc_opt_self() mainScreen];
    [v32 scale];
    v34 = v33;

    if (v34 <= 0.0)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = v34;
    }
  }

  if ((v22 & 0xFE) != 0)
  {
    v35 = 16.0;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = [v28 constraintEqualToConstant:1.0 / v31];

  [v36 setActive:1];
  v37 = [*&v25[v27] bottomAnchor];
  v38 = [v25 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:0.0];

  [v39 setActive:1];
  v40 = [*&v25[v27] leadingAnchor];
  v41 = [v25 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:v35];

  [v42 setActive:1];
  v43 = [*&v25[v27] trailingAnchor];
  v44 = [v25 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v24];

  [v45 setActive:1];
  v46 = [*&v25[v27] topAnchor];
  v47 = [v1 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v47 constant:8.0];

  LODWORD(v48) = 1144750080;
  [v49 setPriority:v48];
  [v49 setActive:1];
}

id sub_10008D2BC()
{
  v1 = OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10008D334(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBDefaultSectionHeader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10008D3D8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  if ([*&v1[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject])
  {
    type metadata accessor for IMBProposedEvent();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent] = v2;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_10008F6D4();
  sub_10008E740();
  return [*&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setSeparatorStyle:0];
}

void sub_10008D4EC(uint64_t a1)
{
  v2 = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  objc_msgSendSuper2(&v11, "viewWillAppear:", v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  v4 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    v6 = sub_1000AC65C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v3 setHidden:v6 != 0];
  v7 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000001000BD080;
  v12._countAndFlagsBits = 0xD000000000000016;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v8.super.isa = v7;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1000AB61C(v12, v13, v8, v14, 0, v10);

  v9 = sub_1000AC02C();

  [v3 setText:v9];
}

void sub_10008D6B0()
{
  sub_100081EF4();
  if (sub_10002CE60() == 2)
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
      return;
    }

    v2 = v1;
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_1000FBEF0];
  }

  v3 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  [v3 setEstimatedRowHeight:UITableViewAutomaticDimension];
  type metadata accessor for IMBDateTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1000AC02C();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  v9 = sub_10008240C();
  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 48))(0, ObjectType, v7);
}

char *sub_10008D81C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v2 = [v1 receivedMessage];
  if (v2 && (v3 = v2, v4 = [v2 title], v3, v4))
  {
    v5 = sub_1000AC06C();
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0xE000000000000000;
    v20._object = 0x80000001000BD060;
    v20._countAndFlagsBits = 0xD000000000000019;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v7.super.isa = v4;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v5 = sub_1000AB61C(v20, v21, v7, v22, 0, v19);
  }

  v8 = v5;
  v9 = v6;

  v10 = [v1 receivedMessage];
  if (v10 && (v11 = v10, v12 = [v10 subtitle], v11, v12))
  {
    v13 = sub_1000AC06C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v17 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v8, v9, v13, v15, v16);
}

uint64_t sub_10008D9C8()
{
  v0 = sub_10002CE60();
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v13._countAndFlagsBits = 0xE000000000000000;
  v15._countAndFlagsBits = 1145980243;
  v15._object = 0xE400000000000000;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v3.super.isa = v2;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v4 = sub_1000AB61C(v15, v17, v3, v19, 0, v13);
  v6 = v5;

  if (v0 == 2)
  {
    v7 = [v1 mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v16._countAndFlagsBits = 0x4C45434E4143;
    v16._object = 0xE600000000000000;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v8.super.isa = v7;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v9 = sub_1000AB61C(v16, v18, v8, v20, 0, v14);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  type metadata accessor for FooterToolbarModel();
  result = swift_allocObject();
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 1;
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(result + 32) = 0;
  *(result + 40) = v4;
  *(result + 48) = v6;
  *(result + 56) = 2;
  *(result + 64) = v9;
  *(result + 72) = v11;
  return result;
}

void sub_10008DBEC(void *a1)
{
  v2 = v1;
  v4 = sub_1000AC02C();
  v5 = [a1 dequeueReusableCellWithIdentifier:v4];

  if (!v5)
  {
    goto LABEL_22;
  }

  type metadata accessor for IMBDateTableViewCell();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = sub_1000AB95C();
  v8 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = sub_1000AC5AC();

    goto LABEL_6;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v9 + 8 * v7 + 32);

LABEL_6:
  *&v6[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData] = v10;

  sub_10006DC7C();
  sub_10006E700();

  *&v6[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate + 8] = &off_1000DDC40;
  swift_unknownObjectWeakAssign();
  v11 = *(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
  v5 = v5;
  v12 = [v11 separatorColor];
  [v6 setSeparatorColor:v12];

  v2 = *(v2 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot);
  v13 = *&v6[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
  v14 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  swift_beginAccess();
  v8 = *(v13 + v14);
  if (!v8)
  {
    goto LABEL_20;
  }

  if (!(v8 >> 62))
  {
    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_20:

    return;
  }

LABEL_19:
  v15 = sub_1000AC65C();
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v15 < 1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v17 = sub_1000AC5AC();
    }

    else
    {
      v17 = *(v8 + 8 * i + 32);
    }

    v18 = v17;
    sub_100079ACC(v2);
  }
}

void sub_10008DFCC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent);
  if (!v2)
  {
    return;
  }

  v39 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot;
  v4 = *(v1 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot);
  if (v4)
  {
    v5 = *(a1 + 16) == *(v4 + 16) && *(a1 + 24) == *(v4 + 24);
    if (v5 || (sub_1000AC7AC() & 1) != 0)
    {

      sub_10008E668();

      return;
    }
  }

  v6 = sub_10008EE9C();
  v40 = v1;
  v8 = v7;
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B04C0;
  *(inited + 32) = a1;

  v10 = sub_100010490(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v2 + 80) = v10;

  *(v40 + v39) = a1;

  *(v40 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent) = v2;

  v11 = *(v40 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage);
  *(v40 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage) = v6;
  v12 = v6;

  v13 = *(v40 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
  *(v40 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo) = v8;
  v14 = v8;
  v15 = v40;
  v16 = v14;

  v17 = sub_10008240C();
  v19 = v18;
  ObjectType = swift_getObjectType();
  (*(v19 + 48))(1, ObjectType, v19);

  v21 = [*(v40 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) visibleCells];
  sub_100005A24(0, &qword_1000F3650, UITableViewCell_ptr);
  v22 = sub_1000AC19C();

  if (v22 >> 62)
  {
    goto LABEL_39;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
LABEL_13:
    v35 = v16;
    v36 = v12;
    v24 = 0;
    v41 = v22 & 0xC000000000000001;
    v38 = v22 & 0xFFFFFFFFFFFFFF8;
    v37 = v22 + 32;
    v25 = v39;
    while (1)
    {
      if (v41)
      {
        v26 = sub_1000AC5AC();
      }

      else
      {
        if (v24 >= *(v38 + 16))
        {
          goto LABEL_37;
        }

        v26 = *(v37 + 8 * v24);
      }

      v27 = v26;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v23 = sub_1000AC65C();
        if (!v23)
        {
          break;
        }

        goto LABEL_13;
      }

      type metadata accessor for IMBDateTableViewCell();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v16 = v22;
        v30 = *(v15 + v25);
        v31 = *(v29 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView);
        v22 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
        swift_beginAccess();
        v12 = *(v31 + v22);
        if (v12)
        {
          if (v12 >> 62)
          {
            v15 = sub_1000AC65C();
            if (!v15)
            {
LABEL_34:

              v15 = v40;
              v22 = v16;
              goto LABEL_15;
            }
          }

          else
          {
            v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v15)
            {
              goto LABEL_34;
            }
          }

          if (v15 < 1)
          {
            goto LABEL_38;
          }

          for (i = 0; i != v15; ++i)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v33 = sub_1000AC5AC();
            }

            else
            {
              v33 = *(v12 + 8 * i + 32);
            }

            v34 = v33;
            sub_100079ACC(v30);
          }

          v25 = v39;
          v15 = v40;
          v22 = v16;
        }

        else
        {

          v22 = v16;
        }
      }

      else
      {
      }

LABEL_15:
      if (v24 == v23)
      {

        goto LABEL_41;
      }
    }
  }

LABEL_41:
}

void sub_10008E44C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
    if (v2)
    {
      if (*(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent))
      {

        v3 = v2;
        v4 = v1;
        v5 = v0;
        v6 = sub_10008240C();
        v8 = v7;
        ObjectType = swift_getObjectType();
        (*(v8 + 48))(0, ObjectType, v8);

        v10 = *(v5 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
        v11 = *(v5 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
        v12 = BCMessageRootEventKey;

        v13 = v3;
        v24 = v4;
        v14 = v10;
        v15 = v11;
        v16 = v12;
        sub_100036FA8(1);
        v17 = v5 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = *(v17 + 8);
            v19 = swift_getObjectType();
            v23 = v13;
            v20 = v14;
            v21 = *(v18 + 16);
            v22 = type metadata accessor for IMBTimeSelectionTableViewController();
            v21(v5, v22, v19, v18);

            v13 = v23;
            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_10008E668()
{
  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot) = 0;

  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent) = 0;

  v1 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage);
  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
  *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo) = 0;

  [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
  v6 = sub_10008240C();
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 48))(0, ObjectType, v4);
}

uint64_t sub_10008E740()
{
  v53 = sub_1000ABF3C();
  v1 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000ABF6C();
  v3 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000AB7EC();
  v55 = *(v49 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v49);
  v48 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000ABF4C();
  v6 = *(v47 - 8);
  result = __chkstk_darwin(v47);
  v46 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v0;
  v56 = *&v0[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent];
  if (!v56)
  {
    return result;
  }

  v9 = *(v56 + 80);
  if (!v9)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v9 >> 62)
  {
    result = sub_1000AC65C();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  result = sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v45 = result;
  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v42 = v9 & 0xC000000000000001;
  v41 = (v6 + 104);
  v40 = enum case for DispatchQoS.QoSClass.default(_:);
  v39 = (v6 + 8);
  v38 = v55 + 16;
  v37 = v5 + 7;
  v36 = v55 + 32;
  v35 = v61;
  v34 = (v1 + 8);
  v33 = (v3 + 8);

  v11 = 0;
  v44 = v9;
  v43 = v10;
  v12 = v55;
  do
  {
    if (v42)
    {
      v13 = sub_1000AC5AC();
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    ++v11;
    v57 = *(v56 + 16);
    v14 = OBJC_IVAR____TtC8Business15IMBProposedDate_date;
    v15 = swift_allocObject();
    v16 = v54;
    *(v15 + 16) = v54;
    *(v15 + 24) = v13;
    v17 = v46;
    v18 = v47;
    (*v41)(v46, v40, v47);
    v19 = v16;

    v58 = sub_1000AC35C();
    (*v39)(v17, v18);
    v20 = v48;
    v21 = v49;
    (*(v12 + 16))(v48, v13 + v14, v49);
    v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v23 = (v37 + v22) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v22, v20, v21);
    v25 = v57;
    *(v24 + v23) = v57;
    v26 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_100090044;
    v26[1] = v15;
    v61[2] = sub_100063BB4;
    v61[3] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v61[0] = sub_100023BE0;
    v61[1] = &unk_1000DDCB0;
    v27 = _Block_copy(aBlock);
    v28 = v25;

    v29 = v50;
    sub_1000ABF5C();
    v59 = _swiftEmptyArrayStorage;
    sub_100042004();
    sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
    sub_10004205C();
    v31 = v52;
    v30 = v53;
    sub_1000AC49C();
    v32 = v58;
    sub_1000AC33C();
    _Block_release(v27);

    (*v34)(v31, v30);
    (*v33)(v29, v51);

    v9 = v44;
  }

  while (v43 != v11);
}

void sub_10008EDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary;
    swift_beginAccess();
    v8 = *(a2 + v7);
    if (*(v8 + 16))
    {

      v9 = sub_10004F0CC(v5, v6);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        *(v11 + 32) = a1;

        [*(a2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
      }

      else
      {
      }
    }
  }
}

id sub_10008EE9C()
{
  v1 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v59 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v8 = [v7 replyMessage];
  if (v8 && (v9 = v8, v10 = [v8 imageIdentifier], v9, v10))
  {
    v61 = sub_1000AC06C();
    v67 = v11;
  }

  else
  {
    v61 = 0;
    v67 = 0;
  }

  v12 = [v7 replyMessage];
  if (v12 && (v13 = v12, v14 = [v12 imageDescription], v13, v14))
  {
    v60 = sub_1000AC06C();
    v64 = v15;
  }

  else
  {
    v60 = 0;
    v64 = 0;
  }

  v16 = [v7 replyMessage];
  if (v16 || (v16 = [v7 receivedMessage]) != 0)
  {
    v17 = v16;
    v66 = [v16 style];
  }

  else
  {
    v66 = BCBubbleViewStyleIcon;
  }

  v63 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v18 = [v63 selectedMessage];
  v19 = [v18 session];

  if (!v19)
  {
    v19 = [objc_allocWithZone(MSSession) init];
  }

  v20 = objc_allocWithZone(MSMessage);
  v65 = v19;
  v68 = [v20 initWithSession:v19];
  v21 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v22 = [objc_allocWithZone(NSDateFormatter) init];
  [v22 setTimeStyle:1];
  [v22 setDateStyle:2];
  v23 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent);
  if (v23)
  {
    v24 = *(v23 + 56);

    v25 = [v24 timeZone];
    if (v25)
    {
      v26 = v25;
      sub_1000AB8FC();

      v27 = sub_1000AB91C();
      (*(*(v27 - 8) + 56))(v4, 0, 1, v27);
    }

    else
    {

      v27 = sub_1000AB91C();
      (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
    }

    sub_1000126F0(v4, v6);
    sub_1000AB91C();
    v30 = *(v27 - 8);
    isa = 0;
    if ((*(v30 + 48))(v6, 1, v27) != 1)
    {
      isa = sub_1000AB8EC().super.isa;
      (*(v30 + 8))(v6, v27);
    }
  }

  else
  {
    v28 = sub_1000AB91C();
    (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
    isa = 0;
  }

  [v22 setTimeZone:isa];

  v31 = sub_1000AB77C().super.isa;
  v32 = [v22 stringFromDate:v31];

  v33 = v32;
  v34 = v32;
  v35 = v32;
  if (!v32)
  {
    sub_1000AC06C();
    v35 = sub_1000AC02C();

    sub_1000AC06C();
    v34 = sub_1000AC02C();

    sub_1000AC06C();
    v33 = sub_1000AC02C();
  }

  v62 = sub_1000AC06C();
  v36 = v32;
  [v21 setCaption:v35];

  [v68 setAccessibilityLabel:v34];
  v37 = [v7 replyMessage];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 image];
  }

  else
  {
    v39 = 0;
  }

  [v21 setImage:v39];

  v40 = [v7 replyMessage];
  if (v40 && (v41 = v40, v42 = [v40 subtitle], v41, v42))
  {
    v43 = v64;
    sub_1000AC06C();
    v45 = v44;
  }

  else
  {
    v43 = v64;
    v45 = 0;
  }

  v46 = [v63 selectedMessage];
  if (v46 && (v47 = v46, v48 = [v46 layout], v47, v48) && (objc_opt_self(), v49 = swift_dynamicCastObjCClass(), v48, v49))
  {
    v50 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v21];
    [v68 setLayout:v50];

    if (!v45)
    {
LABEL_34:
      [v21 setSubcaption:0];
      v51 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    [v68 setLayout:v21];
    if (!v45)
    {
      goto LABEL_34;
    }
  }

  v52 = sub_1000AC02C();

  [v21 setSubcaption:v52];

  v51 = sub_1000AC02C();

LABEL_37:
  v53 = sub_1000AC02C();

  if (!v67)
  {
    v54 = 0;
    if (v43)
    {
      goto LABEL_39;
    }

LABEL_41:
    v55 = 0;
    goto LABEL_42;
  }

  v54 = sub_1000AC02C();

  if (!v43)
  {
    goto LABEL_41;
  }

LABEL_39:
  v55 = sub_1000AC02C();

LABEL_42:
  v56 = objc_allocWithZone(BCMessageInfo);
  v57 = v66;
  [v56 initWithTitle:v33 subtitle:v51 style:v66 alternateTitle:v53 imageIdentifier:v54 imageDescription:v55];

  return v68;
}

uint64_t sub_10008F6D4()
{
  v1 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v44 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v44 - v9;
  result = __chkstk_darwin(v8);
  v13 = &v44 - v12;
  v54 = *&v0[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent];
  if (!v54)
  {
    return result;
  }

  isUniquelyReferenced_nonNull_native = *(v54 + 80);
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_38;
  }

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_35;
  }

  v15 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
LABEL_5:
    if (v15 < 1)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1000AC7EC();
      __break(1u);
      return result;
    }

    v45 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
    v50 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v51 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary;

    v16 = 0;
    v52 = v7;
    v53 = v0;
    v48 = v13;
    v49 = v10;
    v46 = v15;
    v47 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v50)
      {
        v57 = sub_1000AC5AC();
      }

      else
      {
        v57 = *(isUniquelyReferenced_nonNull_native + 8 * v16 + 32);
      }

      v17 = [*(v54 + 56) timeZone];
      v55 = v16;
      if (v17)
      {
        v18 = v17;
        sub_1000AB8FC();

        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = sub_1000AB91C();
      v21 = *(v20 - 8);
      v22 = *(v21 + 56);
      v22(v10, v19, 1, v20);
      sub_1000126F0(v10, v13);
      type metadata accessor for IMBTableViewCellData(0);
      v10 = swift_allocObject();
      v10[24] = 0;
      *(v10 + 4) = 0;
      v56 = v22;
      v22(&v10[OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone], 1, 1, v20);
      *(v10 + 2) = v57;
      sub_100012680(v13, v4);
      v23 = *(v21 + 48);
      v24 = v23(v4, 1, v20);

      if (v24 == 1)
      {
        v25 = v52;
        sub_1000AB90C();
        sub_100072654(v13);
        if (v23(v4, 1, v20) != 1)
        {
          sub_100072654(v4);
        }
      }

      else
      {
        sub_100072654(v13);
        v25 = v52;
        (*(v21 + 32))(v52, v4, v20);
      }

      v56(v25, 0, 1, v20);
      v26 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
      swift_beginAccess();
      sub_10008FF94(v25, &v10[v26]);
      swift_endAccess();
      v27 = *(v57 + 16);
      v28 = *(v57 + 24);
      v7 = v53;
      v13 = v51;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *&v13[v7];
      v0 = v58;
      *&v13[v7] = 0x8000000000000000;
      v30 = sub_10004F0CC(v27, v28);
      v31 = *(v0 + 2);
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        result = sub_1000AC65C();
        v15 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_5;
      }

      v34 = v29;
      if (*(v0 + 3) >= v33)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v58;
          if (v29)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v0 = &v58;
          sub_10003AF54();
          isUniquelyReferenced_nonNull_native = v58;
          if (v34)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_100039788(v33, isUniquelyReferenced_nonNull_native);
        v0 = v58;
        v35 = sub_10004F0CC(v27, v28);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_39;
        }

        v30 = v35;
        isUniquelyReferenced_nonNull_native = v58;
        if (v34)
        {
LABEL_24:
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v30) = v10;

          goto LABEL_28;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v37 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v30);
      *v37 = v27;
      v37[1] = v28;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v30) = v10;
      v38 = *(isUniquelyReferenced_nonNull_native + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_34;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v40;
LABEL_28:
      *&v13[v7] = isUniquelyReferenced_nonNull_native;
      swift_endAccess();
      v41 = v45;
      swift_beginAccess();

      sub_1000AC17C();
      v13 = v48;
      v42 = v46;
      v43 = v55;
      if (*((*&v7[v41] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v41] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000AC1BC();
      }

      v16 = v43 + 1;
      sub_1000AC1DC();
      swift_endAccess();

      v10 = v49;
      isUniquelyReferenced_nonNull_native = v47;
      if (v42 == v16)
      {
      }
    }
  }

  return result;
}

id sub_10008FCB4(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_conflictedEvents] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage] = 0;
  *&v1[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_10008FDB4()
{

  v1 = *(v0 + OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo);
}

id sub_10008FE54(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBTimeSelectionTableViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10008FF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100090004()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009004C()
{
  v1 = sub_1000AB7EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

double sub_1000900FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100090154(char a1, void *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v8 = a3();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = *a4;
  v10 = [*&v4[*a4] heightAnchor];
  v11 = [v4 traitCollection];
  [v11 displayScale];
  v13 = v12;

  if (v13 <= 0.0)
  {
    v14 = [objc_opt_self() mainScreen];
    [v14 scale];
    v13 = v15;

    if (v13 <= 0.0)
    {
      v13 = 1.0;
    }
  }

  v16 = [v10 constraintEqualToConstant:1.0 / v13];

  [v16 setActive:1];
  v17 = 0.0;
  if (sub_10002CE60() == 2)
  {
    sub_10002CE60();
    v17 = 20.0;
  }

  v18 = [*&v4[v9] leadingAnchor];
  v19 = [a2 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v17];

  [v20 setActive:1];
  v21 = [*&v4[v9] trailingAnchor];
  v22 = [a2 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-v17];

  [v23 setActive:1];
  if (a1)
  {
    v24 = &selRef_bottomAnchor;
  }

  else
  {
    v24 = &selRef_topAnchor;
  }

  v25 = [*&v4[v9] *v24];
  v26 = [a2 *v24];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setActive:1];
}

id sub_10009043C()
{
  v1 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    sub_10002CF08();
    v6 = v5;
    [v4 setFont:v5];

    v7 = [objc_opt_self() labelColor];
    [v4 setTextColor:v7];

    [v4 setNumberOfLines:0];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100090524()
{
  v1 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = sub_100090584();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100090584()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (sub_10002CE60() >= 2u)
  {
    v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v3 = [objc_opt_self() systemFontOfSize:11.0];
    v1 = [v2 scaledFontForFont:v3];
  }

  else
  {
    v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  }

  [v0 setFont:v1];

  sub_10002CE60();
  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v4];

  [v0 setNumberOfLines:0];
  return v0;
}

char *sub_1000906F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView] = 0;
  v9 = OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor;
  *&v5[v9] = [objc_opt_self() blackColor];
  v18.receiver = v5;
  v18.super_class = type metadata accessor for IMBTableHeaderView();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = sub_10009043C();
  if (a2)
  {
    v12 = sub_1000AC02C();
  }

  else
  {
    v12 = 0;
  }

  [v11 setText:v12];

  v13 = sub_100090524();
  if (a4)
  {
    v14 = sub_1000AC02C();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText:v14];

  v15 = *&v10[OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor];
  *&v10[OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor] = a5;
  v16 = a5;

  sub_10009093C();
  sub_100090AA0();

  return v10;
}

id sub_10009093C()
{
  if (sub_10002CE60() >= 2u)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    v1 = qword_1000FBEF0;
  }

  else
  {
    v1 = [objc_opt_self() systemBackgroundColor];
  }

  v2 = v1;
  [v0 setBackgroundColor:v1];

  v3 = sub_100090FA4();
  v4 = *&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor];
  [v3 setBackgroundColor:v4];

  v5 = sub_10009043C();
  [v0 addSubview:v5];

  v6 = sub_100090524();
  [v0 addSubview:v6];

  result = sub_10002CE60();
  if (result != 2)
  {
    v8 = *&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView];

    return [v0 addSubview:v8];
  }

  return result;
}

void sub_100090AA0()
{
  v1 = sub_10009043C();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel;
  v3 = [*&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel] topAnchor];
  v4 = [v0 topAnchor];
  v5 = sub_10002CE60();
  v6 = 18.0;
  if (v5 == 2)
  {
    v6 = 20.0;
  }

  v7 = [v3 constraintEqualToAnchor:v4 constant:v6];

  [v7 setActive:1];
  v8 = [*&v0[v2] leadingAnchor];
  v9 = [v0 safeAreaLayoutGuide];
  v10 = [v9 leadingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v11 = 16.0;
  }

  else
  {
    v11 = 20.0;
  }

  v12 = [v8 constraintEqualToAnchor:v10 constant:v11];

  [v12 setActive:1];
  v13 = [*&v0[v2] trailingAnchor];
  v14 = [v0 safeAreaLayoutGuide];
  v15 = [v14 trailingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v16 = -16.0;
  }

  else
  {
    v16 = -20.0;
  }

  v17 = [v13 constraintEqualToAnchor:v15 constant:v16];

  [v17 setActive:1];
  v18 = sub_100090524();
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel;
  v20 = [*&v0[OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel] topAnchor];
  v21 = [*&v0[v2] bottomAnchor];
  v22 = sub_10002CE60();
  v23 = 2.0;
  if (v22 == 2)
  {
    v23 = 4.0;
  }

  v24 = [v20 constraintEqualToAnchor:v21 constant:v23];

  [v24 setActive:1];
  v25 = [*&v0[v19] leadingAnchor];
  v26 = [v0 safeAreaLayoutGuide];
  v27 = [v26 leadingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v28 = 16.0;
  }

  else
  {
    v28 = 20.0;
  }

  v29 = [v25 constraintEqualToAnchor:v27 constant:v28];

  [v29 setActive:1];
  v30 = [*&v0[v19] trailingAnchor];
  v31 = [v0 safeAreaLayoutGuide];
  v32 = [v31 trailingAnchor];

  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v33 = -16.0;
  }

  else
  {
    v33 = -20.0;
  }

  v34 = [v30 constraintEqualToAnchor:v32 constant:v33];

  [v34 setActive:1];
  if (sub_10002CE60() == 2)
  {
    v35 = [v0 bottomAnchor];
    v36 = [*&v0[v19] bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];
  }

  else
  {
    sub_100090154(1, v0, sub_100090FA4, &OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView);
    v38 = sub_100090FA4();
    v35 = [v38 topAnchor];

    v36 = [*&v0[v19] bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:18.0];
  }

  v39 = v37;

  [v39 setActive:1];
}

id sub_100090FA4()
{
  v1 = OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10009104C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBTableHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100091110()
{
  v1 = OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
  swift_beginAccess();
  *(v0 + v1) = _swiftEmptyDictionarySingleton;

  v2 = sub_1000AC06C();
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC8Business14IMBNetworkBody_message);
  v6 = [v5 requestIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000AC06C();
    v10 = v9;

    v11 = &type metadata for String;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v17[2] = 0;
  }

  v17[0] = v8;
  v17[1] = v10;
  v18 = v11;
  swift_beginAccess();
  sub_1000382BC(v17, v2, v4);
  swift_endAccess();
  v12 = sub_1000AC06C();
  v14 = v13;
  v15 = [v5 version];
  v18 = &type metadata for Int;
  v17[0] = v15;
  swift_beginAccess();
  sub_1000382BC(v17, v12, v14);
  swift_endAccess();
  return result;
}

unint64_t sub_100091290(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100005914(*(a1 + 48) + 40 * v12, v27);
        sub_1000068B4(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100005914(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000068B4(v25 + 8, v20);
        sub_100091F60(v24);
        v21 = v18;
        sub_100006910(v20, v22);
        v13 = v21;
        sub_100006910(v22, v23);
        sub_100006910(v23, &v21);
        result = sub_10004F0CC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_10000E738(v10);
          result = sub_100006910(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100006910(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100091F60(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10009154C(uint64_t a1, unint64_t a2)
{
  sub_100091110();
  v3 = sub_10000AFBC();
  *&v16 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
LABEL_14:
    v4 = sub_1000AC65C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          sub_1000AC5AC();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v8 = v16;
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_11;
          }
        }

        v7 = sub_100020350();

        sub_1000A50E4(v7);
        ++v5;
        if (v6 == v4)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_16:
  v17 = sub_10000413C(&qword_1000F36D8, &qword_1000B4F38);
  *&v16 = v8;
  sub_100006910(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v15, 0x73726F727265, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v3;
  v11 = sub_1000AC06C();
  v13 = v12;
  v17 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *&v16 = v10;
  swift_beginAccess();
  sub_1000382BC(&v16, v11, v13);
  swift_endAccess();
}

id sub_100091770(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IMBNetworkBody();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100091814(void *a1)
{
  v2 = [a1 dictionaryRepresentation];
  if (v2 && (v3 = v2, v4 = sub_1000ABFBC(), v3, v5 = sub_100091290(v4), , v5))
  {
    v6 = sub_1000AC06C();
    v8 = v7;
    v11[3] = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    v11[0] = v5;
    v9 = v1 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    sub_1000382BC(v11, v6, v8);
    swift_endAccess();
  }

  else
  {
    v9 = v1 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
  }

  return *v9;
}

uint64_t sub_10009193C(void *a1)
{
  v2 = v1;
  v4 = [a1 dictionaryRepresentation];
  if (v4 && (v5 = v4, v6 = sub_1000ABFBC(), v5, v7 = sub_100091290(v6), , v7))
  {
    v8 = sub_10004FE58(_swiftEmptyArrayStorage);
    v9 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    v28 = v9;
    *&v27 = v7;
    sub_100006910(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v26, 0x4D746E656D796170, 0xED0000646F687465, isUniquelyReferenced_nonNull_native);
    v11 = sub_1000AC06C();
    v13 = v12;
    v28 = v9;
    *&v27 = v8;
    v14 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    v15 = v11;
    v16 = v13;
  }

  else
  {
    sub_10000413C(&qword_1000F36E8, &qword_1000B4F48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0F0;
    strcpy((inited + 32), "paymentNetwork");
    *(inited + 47) = -18;
    v18 = [a1 network];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1000AC06C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    *(inited + 48) = v20;
    *(inited + 56) = v22;
    *(inited + 64) = 0x54746E656D796170;
    *(inited + 72) = 0xEB00000000657079;
    [a1 type];
    type metadata accessor for PKPaymentMethodType(0);
    *(inited + 80) = sub_1000AC0EC();
    *(inited + 88) = v23;
    v24 = sub_10004FF88(inited);
    swift_setDeallocating();
    sub_10000413C(&qword_1000F36F0, &qword_1000B4F50);
    swift_arrayDestroy();
    v28 = sub_10000413C(&qword_1000F36F8, &qword_1000B4F58);
    *&v27 = v24;
    v14 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    v15 = 0x4D746E656D796170;
    v16 = 0xED0000646F687465;
  }

  sub_1000382BC(&v27, v15, v16);
  swift_endAccess();
  return *v14;
}

uint64_t sub_100091C34(void *a1)
{
  v2 = v1;
  v3 = [a1 dictionaryRepresentation];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000ABFBC();

    v6 = sub_100091290(v5);

    if (v6)
    {
      v7 = sub_10004FE58(_swiftEmptyArrayStorage);
      v8 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      v18 = v8;
      *&v17 = v6;
      sub_100006910(&v17, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v16, 0x676E697070696873, 0xEE00646F6874654DLL, isUniquelyReferenced_nonNull_native);
      v10 = v7;
      v11 = sub_1000AC06C();
      v13 = v12;
      v18 = v8;
      *&v17 = v10;
      swift_beginAccess();
      sub_1000382BC(&v17, v11, v13);
      swift_endAccess();
    }
  }

  v14 = OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
  swift_beginAccess();
  return *(v2 + v14);
}

uint64_t sub_100091DC4(void *a1)
{
  v2 = v1;
  v3 = [a1 dictionaryRepresentation];
  if (v3 && (v4 = v3, v5 = sub_1000ABFBC(), v4, v6 = sub_100091290(v5), , v6))
  {
    v7 = sub_10004FE58(_swiftEmptyArrayStorage);
    v8 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    v18 = v8;
    *&v17 = v6;
    sub_100006910(&v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v16, 0x676E697070696873, 0xEF746361746E6F43, isUniquelyReferenced_nonNull_native);
    v10 = v7;
    v11 = sub_1000AC06C();
    v13 = v12;
    v18 = v8;
    *&v17 = v10;
    v14 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
    sub_1000382BC(&v17, v11, v13);
    swift_endAccess();
  }

  else
  {
    v14 = v2 + OBJC_IVAR____TtC8Business14IMBNetworkBody__body;
    swift_beginAccess();
  }

  return *v14;
}

uint64_t sub_100091F60(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F36E0, &qword_1000B4F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100091FC8()
{
  v1 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel);
  }

  else
  {
    v4 = sub_100092028();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100092028()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._object = 0x80000001000BD200;
  v11._countAndFlagsBits = 0xD000000000000010;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v2.super.isa = v1;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1000AB61C(v11, v12, v2, v13, 0, v10);

  v3 = sub_1000AC02C();

  [v0 setText:v3];

  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v4];

  [v0 setNumberOfLines:0];
  [v0 setTextAlignment:1];
  LODWORD(v5) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v8];
  return v0;
}

id sub_1000921E8()
{
  v1 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton;
  v2 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton);
  }

  else
  {
    v4 = sub_10009224C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10009224C(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType:1];
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v4 setFont:v5];
  }

  v6 = [objc_opt_self() mainBundle];
  v13._countAndFlagsBits = 0xE000000000000000;
  v14._object = 0x80000001000BD1E0;
  v14._countAndFlagsBits = 0xD000000000000012;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v7.super.isa = v6;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_1000AB61C(v14, v15, v7, v16, 0, v13);

  v8 = sub_1000AC02C();

  [v2 setTitle:v8 forState:0];

  v9 = v2;
  [v9 addTarget:a1 action:"retryLoadingBundle" forControlEvents:64];
  [v9 setContentHorizontalAlignment:0];

  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v11];
  return v9;
}

id sub_100092434()
{
  *&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel] = 0;
  *&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton] = 0;
  *&v0[OBJC_IVAR____TtC8Business9RetryView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for RetryView();
  v1 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v2 = v1;
  v3 = sub_1000AC3FC();
  v4 = sub_1000AC2BC();
  sub_1000ABA5C("JITAppKit : Setting up Retry Page View", 38, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);

  v5 = sub_100091FC8();
  [v2 addSubview:v5];

  v6 = sub_1000921E8();
  [v2 addSubview:v6];

  sub_100092620();
  return v2;
}

void sub_100092620()
{
  v1 = sub_100091FC8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = sub_1000921E8();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000B08F0;
  v4 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel;
  v5 = [*&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___messageLabel] topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:0.0];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] bottomAnchor];
  v9 = OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton;
  v10 = [*&v0[OBJC_IVAR____TtC8Business9RetryView____lazy_storage___retryButton] topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-20.0];

  *(v3 + 40) = v11;
  v12 = [*&v0[v4] leadingAnchor];
  v13 = [v0 layoutMarginsGuide];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v3 + 48) = v15;
  v16 = [*&v0[v4] trailingAnchor];
  v17 = [v0 layoutMarginsGuide];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v3 + 56) = v19;
  v20 = [*&v0[v9] leadingAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v3 + 64) = v23;
  v24 = [*&v0[v9] trailingAnchor];
  v25 = [v0 layoutMarginsGuide];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v3 + 72) = v27;
  v28 = [*&v0[v9] bottomAnchor];
  v29 = [v0 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:0.0];

  *(v3 + 80) = v30;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v31 activateConstraints:isa];
}

id sub_100092A40()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion + 8);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion);

      sub_10006A440();
      sub_100068638();
      if (qword_1000EEEA8 != -1)
      {
        swift_once();
      }

      [qword_1000F3AE0 setBundleState:0];
      v5 = qword_1000F3AE0;
      v6._countAndFlagsBits = v4;
      v6._object = v3;
      IMBJITAppBundleManager.load(_:)(v6);
    }

    swift_unknownObjectRelease();
  }

  [v1 removeFromSuperview];

  return [v1 setHidden:1];
}

id sub_100092BD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RetryView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100092C88(char a1, void *a2, id a3)
{
  if (![a3 rootObject])
  {
    goto LABEL_6;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v8 = [v7 error];
  swift_unknownObjectRelease();
  if (!v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = 1;
LABEL_7:
  *(v3 + OBJC_IVAR____TtC8Business27IMBAuthenticationBubbleView_authenticationFailed) = v9;
  v10 = a2;
  v11 = a3;
  v12 = sub_100080C58(a1 & 1, v10, v11);

  v13 = v12;
  sub_100092E40();

  return v13;
}

void sub_100092DF0()
{
  *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage) = (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid) & 1) == 0;
  sub_10007F3F0();

  sub_100092E40();
}

void sub_100092E40()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message];
  v2 = [v1 isFromMe];
  v3 = &selRef_replyMessage;
  if (!v2)
  {
    v3 = &selRef_receivedMessage;
  }

  v4 = [v1 *v3];
  v32 = v4;
  if (v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid] == 1)
  {
    v5 = [objc_opt_self() defaultBubbleTitleFor:v1];
    v6 = sub_1000AC06C();
    v8 = v7;

    v9 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    *v9 = v6;
    v9[1] = v8;

    sub_1000A9FF0();
    v10 = 0;
  }

  else
  {
    if (!v4 || (v11 = [v4 alternateTitle]) == 0 && (v11 = objc_msgSend(v32, "title")) == 0)
    {
      v11 = [objc_opt_self() defaultBubbleTitleFor:v1];
    }

    v12 = v11;
    v13 = sub_1000AC06C();
    v15 = v14;

    v16 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    *v16 = v13;
    v16[1] = v15;

    sub_1000A9FF0();
    if (v32 && (v17 = [v32 subtitle]) != 0)
    {
      v18 = v17;
      v19 = sub_1000AC06C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
    *v22 = v19;
    v22[1] = v21;

    v23 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
    if (v21)
    {

      v24 = sub_1000AC02C();
    }

    else
    {
      v24 = 0;
    }

    [v23 setText:v24];

    v25 = v32;
    if (v32)
    {
      v25 = [v32 image];
    }

    v26 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
    v27 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
    *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = v25;
    v28 = v25;

    sub_1000AA2B0();
    v29 = *&v0[v26];
    if (v29)
    {
      v30 = v29;
      if (!v32 || (v31 = [v32 imageDescription]) == 0)
      {
        v31 = 0;
      }

      [v30 setAccessibilityLabel:v31];
    }

    v10 = [v1 isFromMe] ^ 1;
  }

  [v0 setUserInteractionEnabled:v10];
}

id sub_10009314C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBAuthenticationBubbleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000931A4(void *a1)
{
  v3 = [v1 childViewControllers];
  sub_10009334C();
  v4 = sub_1000AC19C();

  v14 = a1;
  v13[2] = &v14;
  LOBYTE(v3) = sub_100093398(sub_1000934C0, v13, v4);

  if (v3)
  {
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 view];
      if (v7)
      {
        v8 = v7;
        [v6 bringSubviewToFront:v7];

        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [a1 willMoveToParentViewController:v1];
  [v1 addChildViewController:a1];
  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [a1 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  [v10 addSubview:v11];

  [a1 didMoveToParentViewController:v1];
}

unint64_t sub_10009334C()
{
  result = qword_1000F1DE0;
  if (!qword_1000F1DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F1DE0);
  }

  return result;
}

uint64_t sub_100093398(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1000AC5AC();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1000AC65C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_100093634(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BubbleHostingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000936D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Business17BubbleHostingView_delegate);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_1000936F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business17BubbleHostingView_subview);
  if (!v1)
  {
    return 0.0;
  }

  [v1 sizeThatFits:?];
  return result;
}

uint64_t sub_100093734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v7 = [objc_allocWithZone(UIImage) init];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  *(v6 + 88) = 257;
  return v6;
}

uint64_t sub_10009378C()
{

  return swift_deallocClassInstance();
}

id sub_100093808()
{
  if ([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject])
  {
    type metadata accessor for IMBProposedEvent();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      *&v0[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent] = v1;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for IMBTimeSelectedViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  sub_100093E24();
  result = sub_10002CE60();
  if (result == 2)
  {
    return [*&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];
  }

  return result;
}

char *sub_1000939D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v2 = [v1 replyMessage];
  if (v2 && (v3 = v2, v4 = [v2 title], v3, v4))
  {
    v5 = sub_1000AC06C();
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0xE000000000000000;
    v20._object = 0x80000001000BD420;
    v20._countAndFlagsBits = 0xD000000000000022;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v7.super.isa = v4;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v5 = sub_1000AB61C(v20, v21, v7, v22, 0, v19);
  }

  v8 = v5;
  v9 = v6;

  v10 = [v1 replyMessage];
  if (v10 && (v11 = v10, v12 = [v10 subtitle], v11, v12))
  {
    v13 = sub_1000AC06C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v17 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v8, v9, v13, v15, v16);
}

uint64_t sub_100093B84()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_opt_self() mainBundle];
    v6._countAndFlagsBits = 0xE000000000000000;
    v7._countAndFlagsBits = 1162760004;
    v7._object = 0xE400000000000000;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0;
    v1.super.isa = v0;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v2 = sub_1000AB61C(v7, v8, v1, v9, 0, v6);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  type metadata accessor for FooterToolbarModel();
  result = swift_allocObject();
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 1;
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0xE000000000000000;
  *(result + 56) = 2;
  *(result + 64) = v2;
  *(result + 72) = v4;
  return result;
}

void sub_100093C60()
{
  sub_100081EF4();
  if (sub_10002CE60() == 2)
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
      return;
    }

    v2 = v1;
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_1000FBEF0];
  }

  v3 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  [v3 setEstimatedRowHeight:44.0];
  type metadata accessor for IMBInfoTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1000AC02C();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  type metadata accessor for IMBImageTableViewCell();
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_1000AC02C();
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  type metadata accessor for IMBActionTableViewCell();
  v8 = swift_getObjCClassFromMetadata();
  v9 = sub_1000AC02C();
  [v3 registerClass:v8 forCellReuseIdentifier:v9];
}

void sub_100093E24()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v95[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v95[-v6];
  v8 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent;
  v9 = *(v0 + OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent);
  p_attr = &stru_1000E5FF8.attr;
  v11 = &off_1000F3000;
  if (!v9)
  {
    goto LABEL_44;
  }

  v12 = *(v9 + 88);
  if (v12)
  {
    v13 = [v12 image];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for IMBSelectedCellData();
      v15 = swift_allocObject();
      *(v15 + 72) = 0;
      *(v15 + 80) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0xE000000000000000;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0xE000000000000000;
      *(v15 + 48) = 0x6C65436567616D49;
      *(v15 + 56) = 0xE90000000000006CLL;
      *(v15 + 64) = v14;
      *(v15 + 88) = 257;
      v16 = *(v0 + v8);
      if (v16 && (v17 = *(v16 + 88)) != 0)
      {
        v18 = v14;
        v19 = [v17 description];
        if (!v19)
        {
          sub_1000AC06C();
          v19 = sub_1000AC02C();
        }
      }

      else
      {
        v20 = v14;
        v19 = 0;
      }

      [v14 setAccessibilityLabel:v19];

      *(v15 + 89) = sub_10002CE60() < 2u;
      v21 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
      swift_beginAccess();

      sub_1000AC17C();
      if (*((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000AC1BC();
        v11 = &off_1000F3000;
      }

      sub_1000AC1DC();
      swift_endAccess();

      p_attr = &stru_1000E5FF8.attr;
    }
  }

  v22 = *(v1 + v8);
  if (!v22)
  {
    goto LABEL_44;
  }

  v23 = *(v22 + 80);
  if (!v23)
  {
    goto LABEL_65;
  }

  v24 = &stru_1000E5FF8.attr;
  if (v23 >> 62)
  {
    if (!sub_1000AC65C())
    {
      goto LABEL_36;
    }
  }

  else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {

    v25 = sub_1000AC5AC();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v25 = *(v23 + 32);
  }

  v26 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
  swift_beginAccess();
  v27 = *(v25 + v26);

  if (v27 >> 62)
  {
    if (sub_1000AC65C())
    {
LABEL_21:
      if ((v27 & 0xC000000000000001) == 0)
      {
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

LABEL_24:

          v28 = [objc_allocWithZone(NSDateFormatter) init];
          v29 = 1;
          [v28 setTimeStyle:1];
          [v28 setDateStyle:2];
          [v28 setDoesRelativeDateFormatting:1];
          v30 = [*(v22 + 56) timeZone];
          v31 = v8;
          if (v30)
          {
            v32 = v30;
            sub_1000AB8FC();

            v29 = 0;
          }

          v33 = sub_1000AB91C();
          v34 = *(v33 - 8);
          (*(v34 + 56))(v5, v29, 1, v33);
          sub_1000126F0(v5, v7);
          isa = 0;
          if ((*(v34 + 48))(v7, 1, v33) != 1)
          {
            isa = sub_1000AB8EC().super.isa;
            (*(v34 + 8))(v7, v33);
          }

          [v28 setTimeZone:isa];

          v36 = [objc_opt_self() mainBundle];
          v93._countAndFlagsBits = 0xE000000000000000;
          v96._countAndFlagsBits = 1162692948;
          v96._object = 0xE400000000000000;
          v103.value._countAndFlagsBits = 0;
          v103.value._object = 0;
          v37.super.isa = v36;
          v108._countAndFlagsBits = 0;
          v108._object = 0xE000000000000000;
          v38 = sub_1000AB61C(v96, v103, v37, v108, 0, v93);
          v40 = v39;

          v41 = sub_1000AB77C().super.isa;
          v42 = [v28 stringFromDate:v41];

          v43 = sub_1000AC06C();
          v45 = v44;

          type metadata accessor for IMBSelectedCellData();
          swift_allocObject();
          sub_100093734(v38, v40, v43, v45, 0x6C65436C6562614CLL, 0xE90000000000006CLL);
          v11 = &off_1000F3000;
          v46 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
          swift_beginAccess();

          sub_1000AC17C();
          if (*((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000AC1BC();
            v11 = &off_1000F3000;
          }

          sub_1000AC1DC();
          swift_endAccess();

          v8 = v31;
          v24 = (&stru_1000E5FF8 + 8);
          goto LABEL_36;
        }

        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

LABEL_63:
      sub_1000AC5AC();
      goto LABEL_24;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_36:
  v47 = *(v1 + v8);
  p_attr = v24;
  if (v47)
  {
    v48 = [*(v47 + 56) structuredLocation];
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() v24[384]];
      v51 = 0xE000000000000000;
      v93._countAndFlagsBits = 0xE000000000000000;
      v97._countAndFlagsBits = 0x4E4F495441434F4CLL;
      v97._object = 0xE800000000000000;
      v104.value._countAndFlagsBits = 0;
      v104.value._object = 0;
      v52.super.isa = v50;
      v109._countAndFlagsBits = 0;
      v109._object = 0xE000000000000000;
      v53 = sub_1000AB61C(v97, v104, v52, v109, 0, v93);
      v55 = v54;

      v56 = [v49 title];
      if (v56)
      {
        v57 = v56;
        v58 = sub_1000AC06C();
        v51 = v59;
      }

      else
      {
        v58 = 0;
      }

      type metadata accessor for IMBSelectedCellData();
      swift_allocObject();
      sub_100093734(v53, v55, v58, v51, 0x6C65436C6562614CLL, 0xE90000000000006CLL);
      v60 = v11[311];
      swift_beginAccess();

      sub_1000AC17C();
      if (*((*(v60 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v60 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000AC1BC();
      }

      sub_1000AC1DC();
      swift_endAccess();

      p_attr = v24;
    }
  }

LABEL_44:
  if (sub_10002CE60() != 2)
  {
    v61 = [objc_opt_self() p_attr[384]];
    v93._countAndFlagsBits = 0xE000000000000000;
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    v105.value._countAndFlagsBits = 0;
    v105.value._object = 0;
    v62.super.isa = v61;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v63 = sub_1000AB61C(v98, v105, v62, v110, 0, v93);
    v65 = v64;

    type metadata accessor for IMBSelectedCellData();
    v66 = swift_allocObject();
    sub_100093734(v63, v65, 0, 0xE000000000000000, 0x6C65436C6562614CLL, 0xE90000000000006CLL);
    *(v66 + 89) = 0;
    v67 = v11[311];
    swift_beginAccess();

    sub_1000AC17C();
    if (*((*(v67 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v67 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    swift_endAccess();
  }

  v68 = objc_opt_self();
  v69 = [v68 p_attr[384]];
  v93._countAndFlagsBits = 0xE000000000000000;
  v99._countAndFlagsBits = 0x435F4F545F444441;
  v99._object = 0xEF5241444E454C41;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v70.super.isa = v69;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v71 = sub_1000AB61C(v99, v106, v70, v111, 0, v93);
  v73 = v72;

  type metadata accessor for IMBSelectedCellData();
  v74 = swift_allocObject();
  sub_100093734(v71, v73, 0, 0xE000000000000000, 0x65436E6F69746341, 0xEA00000000006C6CLL);
  v75 = 0;
  if (sub_10002CE60() != 2)
  {
    sub_100005A24(0, &qword_1000F3A70, UIImage_ptr);
    v100._countAndFlagsBits = 0x6E656C6143646441;
    v100._object = 0xEF6E6F6349726164;
    v76 = sub_1000AC3AC(v100).super.isa;
    v75 = [(objc_class *)v76 imageWithRenderingMode:2];
  }

  v77 = *(v74 + 64);
  *(v74 + 64) = v75;

  v78 = v8;
  *(v74 + 88) = *(v1 + v8) != 0;
  v79 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  swift_beginAccess();

  sub_1000AC17C();
  if (*((*(v1 + v79) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v79) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  swift_endAccess();
  v80 = [v68 p_attr[384]];
  v94._countAndFlagsBits = 0xE000000000000000;
  v101._countAndFlagsBits = 0x455249445F544547;
  v101._object = 0xEE00534E4F495443;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v81.super.isa = v80;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v82 = sub_1000AB61C(v101, v107, v81, v112, 0, v94);
  v84 = v83;

  v85 = swift_allocObject();
  sub_100093734(v82, v84, 0, 0xE000000000000000, 0x65436E6F69746341, 0xEA00000000006C6CLL);
  v86 = 0;
  if (sub_10002CE60() != 2)
  {
    sub_100005A24(0, &qword_1000F3A70, UIImage_ptr);
    v102._countAndFlagsBits = 0x6F69746365726944;
    v102._object = 0xEE006E6F6349736ELL;
    v87 = sub_1000AC3AC(v102).super.isa;
    v86 = [(objc_class *)v87 imageWithRenderingMode:2];
  }

  v88 = *(v85 + 64);
  *(v85 + 64) = v86;

  v89 = *(v1 + v78);
  if (v89)
  {
    v90 = [*(v89 + 56) structuredLocation];
    if (v90 && (v91 = v90, v92 = [v90 geoLocation], v91, v92))
    {

      LOBYTE(v89) = 1;
    }

    else
    {
      LOBYTE(v89) = 0;
    }
  }

  *(v85 + 88) = v89;
  *(v85 + 89) = sub_10002CE60() > 1u;
  swift_beginAccess();

  sub_1000AC17C();
  if (*((*(v1 + v79) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v79) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  swift_endAccess();
  [*(v1 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
}

void sub_100094BC4()
{
  v1 = v0;
  v67 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v67);
  v66 = &v59 - v2;
  v3 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v3 - 8);
  v5 = &v59 - v4;
  v6 = sub_1000AB6EC();
  v68 = *(v6 - 1);
  __chkstk_darwin(v6);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000AB7EC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v59 - v13;
  v15 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent;
  v16 = *&v0[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent];
  if (v16)
  {
    v17 = *(v16 + 80);
    if (!v17)
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v17 >> 62)
    {
      if (!sub_1000AC65C())
      {
        return;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {

      v18 = sub_1000AC5AC();
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v18 = *(v17 + 32);
    }

    v19 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
    swift_beginAccess();
    v20 = *(v18 + v19);

    if (v20 >> 62)
    {
      if (sub_1000AC65C())
      {
LABEL_10:
        if ((v20 & 0xC000000000000001) == 0)
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v21 = *(v20 + 32);

LABEL_13:

          v22 = *&v1[v15];
          if (!v22)
          {

            return;
          }

          v60 = v6;
          v23 = *(v22 + 56);
          v64 = v9;
          v24 = v21;
          v25 = *(v22 + 16);
          v6 = v23;
          v26 = v25;
          v63 = v8;
          v27 = v26;
          v28 = [v26 defaultCalendarForNewEvents];
          [v6 setCalendar:v28];

          isa = sub_1000AB77C().super.isa;
          [v6 setStartDate:isa];

          sub_1000AB7AC();
          v62 = v24;
          v30 = v27;
          v31 = v63;
          sub_1000AB79C();
          v32 = sub_1000AB77C().super.isa;
          v33 = *(v64 + 8);
          v33(v14, v31);
          [v6 setEndDate:v32];

          v70[0] = 0;
          v61 = v30;
          v34 = [v30 saveEvent:v6 span:0 error:v70];
          v35 = v70[0];
          if (v34)
          {
            v36 = &v1[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper];
            sub_10000E6D4(&v1[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper], v70);
            sub_1000058D0(v70, v70[3]);
            v37 = v35;
            v38 = [v6 startDate];
            if (v38)
            {
              v39 = v38;
              sub_1000AB7BC();

              sub_10004EC6C();
              v33(v12, v31);
              v40 = v68;
              v41 = v60;
              if ((*(v68 + 48))(v5, 1, v60) != 1)
              {
                v55 = v65;
                (*(v40 + 32))(v65, v5, v41);
                sub_10000E738(v70);
                sub_1000058D0(v36, *(v36 + 3));
                sub_10004E400(v55, 1, 0, 0);

                (*(v40 + 8))(v55, v41);
                return;
              }

              sub_10004B9C0(v5);
              sub_10000E738(v70);
              if (qword_1000EEE80 != -1)
              {
                swift_once();
              }

              v42 = qword_1000FC008;
              v43 = sub_1000AC2AC();
              sub_10000413C(&qword_1000F0060, &unk_1000B0470);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1000AF0E0;
              v45 = [v6 startDate];
              v46 = v66;
              if (v45)
              {
                v47 = v45;
                sub_1000AB7BC();

                v48 = 0;
              }

              else
              {
                v48 = 1;
              }

              (*(v64 + 56))(v46, v48, 1, v31);
              v56 = sub_1000AC0CC();
              v58 = v57;
              *(v44 + 56) = &type metadata for String;
              *(v44 + 64) = sub_10000587C();
              *(v44 + 32) = v56;
              *(v44 + 40) = v58;
              sub_1000ABA5C("IMBTimeSelectedViewController: Failed to generate calShow url for date %@", 73, 2, &_mh_execute_header, v42, v43, v44);

              goto LABEL_31;
            }

LABEL_38:
            __break(1u);
            return;
          }

          v49 = v70[0];
          v50 = sub_1000AB63C();

          swift_willThrow();
          v70[0] = v50;
          sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
          v18 = sub_100005A24(0, &qword_1000F3B90, NSError_ptr);
          swift_dynamicCast();
          v1 = v69;
          if (qword_1000EEE80 == -1)
          {
LABEL_23:
            v51 = qword_1000FC008;
            v52 = sub_1000AC2AC();
            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_1000AF0E0;
            *(v53 + 56) = v18;
            *(v53 + 64) = sub_100096660();
            *(v53 + 32) = v1;
            v54 = v1;
            sub_1000ABA5C("IMBTimeSelectedViewController: Failed to add event to calendar %@", 65, 2, &_mh_execute_header, v51, v52, v53);

            return;
          }

LABEL_36:
          swift_once();
          goto LABEL_23;
        }

LABEL_34:
        v21 = sub_1000AC5AC();
        goto LABEL_13;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_31:
  }
}

void sub_100095428()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent);
  if (v1)
  {
    v2 = [*(v1 + 56) structuredLocation];
    if (v2)
    {
      v27 = v2;
      v3 = [v2 geoLocation];
      if (v3)
      {
        v4 = v3;
        v5 = objc_opt_self();
        v6 = [v5 mapItemForCurrentLocation];
        [v4 coordinate];
        v9 = [objc_allocWithZone(MKPlacemark) initWithCoordinate:{v7, v8}];
        v10 = [objc_allocWithZone(MKMapItem) initWithPlacemark:v9];
        v11 = sub_1000AC06C();
        v13 = v12;
        v14 = sub_1000AC06C();
        v16 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10003A704(v14, v16, v11, v13, isUniquelyReferenced_nonNull_native);

        v18 = [v27 title];
        [v10 setName:v18];

        sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1000B3780;
        *(v19 + 32) = v6;
        *(v19 + 40) = v10;
        sub_100005A24(0, &qword_1000F3A58, MKMapItem_ptr);
        v20 = v6;
        v21 = v10;
        isa = sub_1000AC18C().super.isa;

        sub_10004DCE8(_swiftEmptyDictionarySingleton);

        v23 = sub_1000ABFAC().super.isa;

        LOBYTE(v5) = [v5 openMapsWithItems:isa launchOptions:v23];

        if ((v5 & 1) == 0)
        {
          if (qword_1000EEE80 != -1)
          {
            swift_once();
          }

          v24 = qword_1000FC008;
          v25 = sub_1000AC2AC();
          sub_1000ABA5C("IMBTimeSelectedViewController: Failed to get directions", 55, 2, &_mh_execute_header, v24, v25, _swiftEmptyArrayStorage);
        }

        v26 = v21;
      }

      else
      {
        v26 = v27;
      }
    }
  }
}

void sub_1000957F8(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_1000AB95C();
  v6 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 8 * v5 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_33;
  }

  v8 = sub_1000AC5AC();

LABEL_5:
  v10 = *(v8 + 48);
  v9 = *(v8 + 56);
  v11 = v10 == 0x6C65436C6562614CLL && v9 == 0xE90000000000006CLL;
  if (!v11 && (sub_1000AC7AC() & 1) == 0)
  {
    v24 = v10 == 0x6C65436567616D49 && v9 == 0xE90000000000006CLL;
    if (!v24 && (sub_1000AC7AC() & 1) == 0)
    {

      v33 = sub_1000AC02C();

      v34 = [a1 dequeueReusableCellWithIdentifier:v33];

      if (v34)
      {
        type metadata accessor for IMBActionTableViewCell();
        v14 = swift_dynamicCastClassUnconditional();
        v35 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView;
        [*&v14[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView] setImage:*(v8 + 64)];
        [*&v14[v35] setHidden:*(v8 + 64) == 0];
        v36 = *&v14[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];

        v37 = sub_1000AC02C();

        [v36 setText:v37];

        v38 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled;
        v14[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] = *(v8 + 88);
        sub_100055680();
        v39 = UIAccessibilityTraitButton;
        if ((v14[v38] & 1) == 0)
        {
          v40 = UIAccessibilityTraitNotEnabled;
          if ((UIAccessibilityTraitNotEnabled & ~UIAccessibilityTraitButton) == 0)
          {
            v40 = 0;
          }

          v39 = v40 | UIAccessibilityTraitButton;
        }

        [v14 setAccessibilityTraits:v39];
        goto LABEL_12;
      }

LABEL_35:
      __break(1u);
      return;
    }

    v25 = sub_1000AC02C();

    v26 = [a1 dequeueReusableCellWithIdentifier:v25];

    if (v26)
    {
      type metadata accessor for IMBImageTableViewCell();
      v14 = swift_dynamicCastClassUnconditional();
      v27 = OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView;
      [*&v14[OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView] setImage:*(v8 + 64)];
      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1000AF0E0;
      v29 = *&v14[v27];
      *(v28 + 56) = sub_100005A24(0, &qword_1000EF990, UIImageView_ptr);
      *(v28 + 32) = v29;
      v30 = v26;
      v31 = v29;
      isa = sub_1000AC18C().super.isa;

      [v14 setAccessibilityElements:isa];

      goto LABEL_12;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = sub_1000AC02C();

  v13 = [a1 dequeueReusableCellWithIdentifier:v12];

  if (!v13)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for IMBInfoTableViewCell();
  v14 = swift_dynamicCastClassUnconditional();
  v15 = *&v14[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel];

  v16 = sub_1000AC02C();

  [v15 setText:v16];

  v17 = *&v14[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel];

  v18 = sub_1000AC02C();

  [v17 setText:v18];

LABEL_12:
  if (*(v8 + 89) == 1)
  {
    if (sub_10002CE60() != 2)
    {
      [a1 layoutMargins];
      [v14 setSeparatorInset:{v19, v20, v21, v22}];
    }
  }

  else
  {
    [a1 bounds];
    [v14 setSeparatorInset:{0.0, v23, 0.0, 0.0}];
  }
}

void sub_100095F74(void *a1, __n128 a2)
{
  v4 = sub_1000AB95C();
  v5 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = sub_1000AC5AC();

LABEL_5:
    isa = sub_1000AB92C().super.isa;
    [a1 deselectRowAtIndexPath:isa animated:1];

    v9 = *(v7 + 48) == 0x65436E6F69746341 && *(v7 + 56) == 0xEA00000000006C6CLL;
    if (!v9 && (sub_1000AC7AC() & 1) == 0 || *(v7 + 88) != 1)
    {
      goto LABEL_21;
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    v12 = objc_opt_self();

    v13 = [v12 mainBundle];
    v28._countAndFlagsBits = 0xE000000000000000;
    v30._countAndFlagsBits = 0x435F4F545F444441;
    v30._object = 0xEF5241444E454C41;
    v32.value._countAndFlagsBits = 0;
    v32.value._object = 0;
    v14.super.isa = v13;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v15 = sub_1000AB61C(v30, v32, v14, v34, 0, v28);
    v17 = v16;

    if (v11 == v15 && v10 == v17)
    {
    }

    else
    {
      v19 = sub_1000AC7AC();

      if ((v19 & 1) == 0)
      {
        v21 = *(v7 + 16);
        v20 = *(v7 + 24);

        v22 = [v12 mainBundle];
        v29._countAndFlagsBits = 0xE000000000000000;
        v31._countAndFlagsBits = 0x455249445F544547;
        v31._object = 0xEE00534E4F495443;
        v33.value._countAndFlagsBits = 0;
        v33.value._object = 0;
        v23.super.isa = v22;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v24 = sub_1000AB61C(v31, v33, v23, v35, 0, v29);
        v26 = v25;

        if (v21 == v24 && v20 == v26)
        {

LABEL_23:
          sub_100095428();
          goto LABEL_21;
        }

        v27 = sub_1000AC7AC();

        if (v27)
        {
          goto LABEL_23;
        }

LABEL_21:

        return;
      }
    }

    sub_100094BC4();
    goto LABEL_21;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 8 * v4 + 32);

    goto LABEL_5;
  }

  __break(1u);
}

id sub_100096368(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dayLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dateLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_timeLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_warningLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_containerView;
  *&v1[v7] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for IMBTimeSelectedViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

double sub_1000964B8()
{

  return result;
}

id sub_100096548(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBTimeSelectedViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100096660()
{
  result = qword_1000F3A68;
  if (!qword_1000F3A68)
  {
    sub_100005A24(255, &qword_1000F3B90, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3A68);
  }

  return result;
}

void sub_1000966C8(__n128 a1)
{
  v2 = v1;
  v3 = sub_1000AB95C();
  v4 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1000AC5AC();

    goto LABEL_5;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * v3 + 32);

LABEL_5:
  v7 = *(v6 + 48) == 0x6C65436567616D49 && *(v6 + 56) == 0xE90000000000006CLL;
  if (v7 || (sub_1000AC7AC() & 1) != 0)
  {
    [*(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) bounds];
    CGRectGetWidth(v8);
  }

  else
  {
  }
}

__n128 sub_100096824(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100096838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100096880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1000968D0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_13;
  }

  v3 = a1;
  v4 = sub_1000AC06C();
  if (!*(a2 + 16))
  {

    goto LABEL_12;
  }

  v6 = sub_10004F0CC(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1000068B4(*(a2 + 56) + 32 * v6, v42);

  sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v15 = qword_1000FC008;
    v16 = sub_1000AC2AC();
    v17 = "quickReply json is required";
    goto LABEL_16;
  }

  if (!*(v40 + 16) || (v9 = sub_10004F0CC(0x736D657469, 0xE500000000000000), (v10 & 1) == 0) || (sub_1000068B4(*(v40 + 56) + 32 * v9, v42), sub_10000413C(&unk_1000F0240, &qword_1000B05A0), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v15 = qword_1000FC008;
    v16 = sub_1000AC2AC();
    v17 = "items json is required";
    goto LABEL_22;
  }

  v11 = v40;
  v39 = *(v40 + 16);
  if ((v39 - 6) < 0xFFFFFFFFFFFFFFFCLL)
  {

    if (qword_1000EEE80 != -1)
    {
LABEL_64:
      swift_once();
    }

    v12 = qword_1000FC008;
    v13 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000AF0E0;
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 64) = &protocol witness table for Int;
    *(v14 + 32) = v39;
    sub_1000ABA5C("message must have 2 to 5 items - count: %{public}ld", 51, 2, &_mh_execute_header, v12, v13, v14);

    return 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v38 = v40;
  do
  {
    if (v20 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v22 = *(v11 + 8 * v20 + 32);
    if (!*(v22 + 16))
    {

      goto LABEL_40;
    }

    v23 = v21;

    v24 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
    if ((v25 & 1) == 0 || (sub_1000068B4(*(v22 + 56) + 32 * v24, v42), (swift_dynamicCast() & 1) == 0))
    {

LABEL_40:

      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v15 = qword_1000FC008;
      v16 = sub_1000AC2AC();
      v17 = "item identifier is required";
LABEL_16:
      v18 = 27;
LABEL_17:
      sub_1000ABA5C(v17, v18, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage, v38);
      return 0;
    }

    if (!*(v22 + 16) || (v26 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v27 & 1) == 0))
    {

LABEL_44:

      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v15 = qword_1000FC008;
      v16 = sub_1000AC2AC();
      v17 = "item title is required";
LABEL_22:
      v18 = 22;
      goto LABEL_17;
    }

    sub_1000068B4(*(v22 + 56) + 32 * v26, v42);

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_44;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_100038B5C(0, *(v23 + 2) + 1, 1, v23);
    }

    v21 = v23;
    v28 = *(v23 + 2);
    v29 = *(v21 + 3);
    if (v28 >= v29 >> 1)
    {
      v21 = sub_100038B5C((v29 > 1), v28 + 1, 1, v21);
    }

    ++v20;
    *(v21 + 2) = v28 + 1;
    v30 = &v21[32 * v28];
    *(v30 + 4) = v40;
    *(v30 + 5) = v41;
    *(v30 + 6) = v40;
    *(v30 + 7) = v41;
    v11 = v40;
  }

  while (v39 != v20);
  v31 = v21;

  if ((v3 & 1) == 0)
  {

    return v31;
  }

  if (!*(v40 + 16) || (v32 = sub_10004F0CC(0x64657463656C6573, 0xED00007865646E49), (v33 & 1) == 0))
  {

LABEL_59:

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v36 = qword_1000FC008;
    v37 = sub_1000AC2AC();
    sub_1000ABA5C("message from me must have a selected item index", 47, 2, &_mh_execute_header, v36, v37, _swiftEmptyArrayStorage);
    return 0;
  }

  sub_1000068B4(*(v40 + 56) + 32 * v32, v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_59;
  }

  result = v31;
  if ((v40 & 0x8000000000000000) == 0 && v40 < *(v31 + 2))
  {
    return result;
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v34 = qword_1000FC008;
  v35 = sub_1000AC2AC();
  sub_1000ABA5C("message from me must contain selected item index", 48, 2, &_mh_execute_header, v34, v35, _swiftEmptyArrayStorage);
  return 0;
}

char *sub_100096FFC(void *a1)
{
  v2 = [a1 isFromMe];
  v3 = [a1 messageData];
  if (v3 && (v4 = v3, v5 = [v3 jsonDictionary], v4, v5))
  {
    v6 = sub_1000ABFBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1000968D0(v2, v6);

  if (v7)
  {
  }

  return v7;
}

__n128 sub_1000970E0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000970EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100097134(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_1000971A0()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

Swift::Int sub_100097214()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

unint64_t sub_100097258@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009A244(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id IMBJITAppBundleManager.containerID.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID;
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID);
  }

  else
  {
    if (_BSIsInternalInstall())
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = objc_allocWithZone(CKContainerID);
    v6 = sub_1000AC02C();
    v7 = [v5 initWithContainerIdentifier:v6 environment:v4];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id IMBJITAppBundleManager.container.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container;
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container);
  }

  else
  {
    v4 = IMBJITAppBundleManager.containerID.getter();
    v5 = [objc_allocWithZone(CKContainer) initWithContainerID:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id IMBJITAppBundleManager.database.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database;
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database);
  }

  else
  {
    v4 = IMBJITAppBundleManager.container.getter();
    v5 = [v4 publicCloudDatabase];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t IMBJITAppBundleManager.currentLoadedBundleVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t IMBJITAppBundleManager.currentLoadedBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_100097584()
{
  result = [objc_allocWithZone(type metadata accessor for IMBJITAppBundleManager()) init];
  qword_1000F3AE0 = result;
  return result;
}

uint64_t IMBJITAppBundleManager.bundleState.getter()
{
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IMBJITAppBundleManager.bundleState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10006A938();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000977B4()
{
  if (qword_1000EEEA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000F3AE0;

  return v1;
}

uint64_t IMBJITAppBundleManager.savedBundleVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults);
  v2 = sub_1000AC02C();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_1000AC47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_10000E784(v11, &unk_1000F1DF0, &qword_1000B18F0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = 3157552;
    v5 = sub_1000AC02C();
    v6 = sub_1000AC02C();
    [v1 setObject:v5 forKey:v6];

    return v4;
  }

  return v8;
}

uint64_t IMBJITAppBundleManager.recordChangeTag.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults);
  v2 = sub_1000AC02C();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_1000AC47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10000E784(v8, &unk_1000F1DF0, &qword_1000B18F0);
  }

  return 0;
}

uint64_t IMBJITAppBundleManager.bundleBasePath.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000AB6EC();
  v14 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:13 inDomains:1];
  v10 = sub_1000AC19C();

  if (*(v10 + 16))
  {
    (*(v14 + 16))(v5, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v2);

    (*(v14 + 32))(v7, v5, v2);
    sub_1000AB68C();

    (*(v14 + 8))(v7, v2);
    return (*(v14 + 56))(a1, 0, 1, v2);
  }

  else
  {

    v12 = *(v14 + 56);

    return v12(a1, 1, 1, v2);
  }
}

uint64_t IMBJITAppBundleManager.savedBundlePath.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1000AB6EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults);
  v11 = sub_1000AC02C();
  v12 = [v10 URLForKey:v11];

  if (!v12)
  {
    goto LABEL_5;
  }

  sub_1000AB6AC();

  v13 = *(v4 + 32);
  v13(v9, v7, v3);
  v14 = [objc_opt_self() defaultManager];
  sub_1000AB6BC();
  v15 = sub_1000AC02C();

  v16 = [v14 fileExistsAtPath:v15];

  if (!v16)
  {
    (*(v4 + 8))(v9, v3);
LABEL_5:
    v17 = 1;
    return (*(v4 + 56))(a1, v17, 1, v3);
  }

  v13(a1, v9, v3);
  v17 = 0;
  return (*(v4 + 56))(a1, v17, 1, v3);
}

Swift::Void __swiftcall IMBJITAppBundleManager.load(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = sub_1000AB6EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IMBJITAppBundleManager.savedBundlePath.getter(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000E784(v10, &unk_1000F06A0, &unk_1000B0450);
LABEL_5:
    [v2 setBundleState:4];
    goto LABEL_6;
  }

  (*(v12 + 32))(v14, v10, v11);
  v22[2] = IMBJITAppBundleManager.savedBundleVersion.getter();
  v22[3] = v15;
  v22[0] = countAndFlagsBits;
  v22[1] = object;
  v16 = sub_1000AB83C();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_10002BD70();
  v17 = sub_1000AC45C();
  sub_10000E784(v7, &unk_1000F3B10, &qword_1000B4168);

  if (v17)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_5;
  }

  if ([v2 bundleState] == 3)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v18 = qword_1000FC008;
    v19 = sub_1000AC28C();
    sub_1000ABA5C("JITAppKit : Template Bundle with the same version already loaded, skip load.", 76, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v20 = qword_1000FC008;
    v21 = sub_1000AC28C();
    sub_1000ABA5C("JITAppKit : Template Bundle not loaded. Proceed to load bundle.", 63, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);
    IMBJITAppBundleManager.loadBundle(_:version:)(v14, countAndFlagsBits, object);
  }

  (*(v12 + 8))(v14, v11);
LABEL_6:
  IMBJITAppBundleManager.updateBundle(_:)(countAndFlagsBits, object);
}

void IMBJITAppBundleManager.updateBundle(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate;
  if (*(v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate) != 1)
  {
LABEL_6:
    v21 = (v3 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
    *v21 = a1;
    v21[1] = a2;

    *(v3 + v9) = 1;
    sub_100005A24(0, &qword_1000F3BA0, NSPredicate_ptr);
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000AF0E0;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10000587C();
    *(v22 + 32) = a1;
    *(v22 + 40) = a2;

    v23 = sub_1000AC27C();
    sub_100005A24(0, &qword_1000F3BA8, CKQuery_ptr);
    v24 = v23;
    v38._countAndFlagsBits = 0x6F43656C646E7542;
    v38._object = 0xEC0000006769666ELL;
    isa = sub_1000AC38C(v38, v24).super.isa;
    v26 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
    v27 = [objc_opt_self() defaultRecordZone];
    v28 = [v27 zoneID];

    [v26 setZoneID:v28];
    [v26 setQualityOfService:25];
    v29 = swift_allocObject();
    *(v29 + 16) = _swiftEmptyArrayStorage;

    sub_1000AC2EC();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v29;
    v31[3] = v30;
    v31[4] = a1;
    v31[5] = a2;

    sub_1000AC2DC();

    v32 = *(v3 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation);
    *(v3 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation) = v26;
    v33 = v26;

    v34 = IMBJITAppBundleManager.database.getter();
    [v34 addOperation:v33];

    return;
  }

  v10 = (v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
  v11 = *(v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion + 8);
  v37[2] = *(v2 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
  v37[3] = v11;
  v37[0] = a1;
  v37[1] = a2;
  v12 = sub_1000AB83C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_10002BD70();

  v13 = sub_1000AC45C();
  sub_10000E784(v8, &unk_1000F3B10, &qword_1000B4168);

  if (v13)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v14 = qword_1000FC008;
    v15 = sub_1000AC28C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000AF0F0;
    v18 = *v10;
    v17 = v10[1];
    *(v16 + 56) = &type metadata for String;
    v19 = sub_10000587C();
    *(v16 + 32) = v18;
    *(v16 + 40) = v17;
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v19;
    *(v16 + 64) = v19;
    *(v16 + 72) = a1;
    *(v16 + 80) = a2;

    sub_1000ABA5C("JITAppKit : Cancelling ongoing template update due to mismatch in template bundle version. \nOngoing Update Version: %@ Requested Version: %@", 140, 2, &_mh_execute_header, v14, v15, v16);

    IMBJITAppBundleManager.clearUpdateFlags()(v20);
    goto LABEL_6;
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v35 = qword_1000FC008;
  v36 = sub_1000AC28C();
  sub_1000ABA5C("JITAppKit : update template bundle in progress for the same version. Skipping update", 84, 2, &_mh_execute_header, v35, v36, _swiftEmptyArrayStorage);
}

double sub_1000987FC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v5 = qword_1000FC008;
    v6 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v8 = sub_1000AC7FC();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10000587C();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1000ABA5C("JITAppKit: Error while fetching record: %@", 42, 2, &_mh_execute_header, v5, v6, v7);
  }

  else
  {
    swift_beginAccess();
    v13 = a2;
    sub_1000AC17C();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    swift_endAccess();
  }

  return result;
}

void sub_100098990(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v6 = qword_1000FC008;
    v7 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v9 = sub_1000AC7FC();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10000587C();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1000ABA5C("JITAppKit : Error querying CloudKit: %@", 39, 2, &_mh_execute_header, v6, v7, v8);

    goto LABEL_15;
  }

  swift_beginAccess();
  v15 = *(a3 + 16);
  if (v15 >> 62)
  {
    if (sub_1000AC65C())
    {
      goto LABEL_7;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    if ((v15 & 0xC000000000000001) != 0)
    {

      v16 = sub_1000AC5AC();

LABEL_10:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        IMBJITAppBundleManager.processFetchedRecord(_:version:)(v16, a5, a6);
      }

      goto LABEL_20;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_1000EEE80 != -1)
  {
LABEL_24:
    swift_once();
  }

  v19 = qword_1000FC008;
  v20 = sub_1000AC2AC();
  sub_1000ABA5C("JITAppKit : Error querying CloudKit: Could not find bundle matching the version", 79, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);
LABEL_15:
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    return;
  }

  v16 = v21;
  if ([v21 bundleState] != 2 || objc_msgSend(v16, "bundleState") != 3)
  {
    [v16 setBundleState:5];
  }

  IMBJITAppBundleManager.clearUpdateFlags()(v22);
LABEL_20:
}

void IMBJITAppBundleManager.processFetchedRecord(_:version:)(void *a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v67 = a3;
  v4 = sub_1000AB6EC();
  v68 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v60 - v9;
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = sub_1000AC3BC();
  if (!v22)
  {
    return;
  }

  v70 = v22;
  sub_10000413C(&qword_1000F3B98, &qword_1000B51E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v72 == *&v69[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion] && v73 == *&v69[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion + 8])
  {
  }

  else
  {
    v23 = sub_1000AC7AC();

    if ((v23 & 1) == 0)
    {
      return;
    }
  }

  v24 = [a1 recordChangeTag];
  if (!v24)
  {
    return;
  }

  v64 = v24;
  v63 = sub_1000AC06C();
  v65 = v25;
  IMBJITAppBundleManager.savedBundlePath.getter(v21);
  v61 = v68[6];
  v62 = v68 + 6;
  v26 = v61(v21, 1, v4);
  sub_10000E784(v21, &unk_1000F06A0, &unk_1000B0450);
  if (v26 != 1)
  {
    if (IMBJITAppBundleManager.recordChangeTag.getter() == v63 && v27 == v65)
    {

      goto LABEL_13;
    }

    v28 = sub_1000AC7AC();

    if (v28)
    {
LABEL_13:
      v72 = IMBJITAppBundleManager.savedBundleVersion.getter();
      v73 = v29;
      v70 = v66;
      v71 = v67;
      v30 = sub_1000AB83C();
      (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
      sub_10002BD70();
      v31 = sub_1000AC45C();
      sub_10000E784(v15, &unk_1000F3B10, &qword_1000B4168);

      if (!v31)
      {

        if (qword_1000EEE80 != -1)
        {
          swift_once();
        }

        v37 = qword_1000FC008;
        v38 = sub_1000AC28C();
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1000AF0E0;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = sub_10000587C();
        v40 = v65;
        *(v39 + 32) = v63;
        *(v39 + 40) = v40;
        sub_1000ABA5C("JITAppKit : CloudKit Contains the same bundle as stored on disk. changeTag: %@", 78, 2, &_mh_execute_header, v37, v38, v39);

        goto LABEL_29;
      }
    }
  }

  if (!sub_1000AC3BC())
  {

    goto LABEL_25;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v33 = [v32 fileURL];
  if (!v33)
  {
    swift_unknownObjectRelease();

    goto LABEL_25;
  }

  v34 = v33;
  sub_1000AB6AC();

  v35 = v68;
  v36 = v68[4];
  v36(v12, v10, v4);
  IMBJITAppBundleManager.copyBundle(_:)(v19);
  if (v61(v19, 1, v4) == 1)
  {
    (v35[1])(v12, v4);

    swift_unknownObjectRelease();

    sub_10000E784(v19, &unk_1000F06A0, &unk_1000B0450);
LABEL_25:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v42 = qword_1000FC008;
    v43 = sub_1000AC2AC();
    sub_1000ABA5C("JITAppKit : Unable to load bundle!", 34, 2, &_mh_execute_header, v42, v43, _swiftEmptyArrayStorage);
    v44 = v69;
    if ([v69 bundleState] == 4)
    {
      [v44 setBundleState:5];
    }

LABEL_29:
    IMBJITAppBundleManager.clearUpdateFlags()(v41);
    return;
  }

  v36(v7, v19, v4);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v45 = qword_1000FC008;
  v46 = sub_1000AC28C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1000AF0E0;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_10000587C();
  v48 = v65;
  *(v47 + 32) = v63;
  *(v47 + 40) = v48;
  sub_1000ABA5C("JITAppKit : Copied new templates ! for newTag : %@", 50, 2, &_mh_execute_header, v45, v46, v47);

  v49 = *&v69[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults];
  v50 = sub_1000AC02C();
  v51 = sub_1000AC02C();
  [v49 setObject:v50 forKey:v51];

  v52 = sub_1000AC02C();
  v53 = v64;
  [v49 setObject:v64 forKey:v52];

  sub_1000AB67C(v54);
  v56 = v55;
  v57 = sub_1000AC02C();
  [v49 setURL:v56 forKey:v57];

  IMBJITAppBundleManager.loadBundle(_:version:)(v7, v66, v67);
  IMBJITAppBundleManager.clearUpdateFlags()(v58);
  swift_unknownObjectRelease();
  v59 = v68[1];
  v59(v7, v4);
  v59(v12, v4);
}

void IMBJITAppBundleManager.clearUpdateFlags()(__n128 a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FC008;
  v3 = sub_1000AC28C();
  sub_1000ABA5C("JITAppKit : Clearing update flags", 33, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate) = 0;
  v4 = (v1 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion);
  *v4 = 3157552;
  v4[1] = 0xE300000000000000;

  v5 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation;
  v6 = *(v1 + OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation);
  if (v6)
  {
    [v6 cancel];
    v6 = *(v1 + v5);
  }

  *(v1 + v5) = 0;
}

uint64_t IMBJITAppBundleManager.copyBundle(_:)@<X0>(char *a1@<X8>)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_1000AB6EC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  v15 = [objc_opt_self() defaultManager];
  IMBJITAppBundleManager.bundleBasePath.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_10000E784(v4, &unk_1000F06A0, &unk_1000B0450);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v48 = a1;
  v47 = *(v6 + 32);
  v47(v14, v4, v5);
  sub_1000AB67C(v17);
  v19 = v18;
  v50 = 0;
  v20 = [v15 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v50];

  if (v20)
  {
    v21 = v50;
    sub_1000AB66C();
    sub_1000AB68C();

    sub_1000AB6BC();
    v22 = sub_1000AC02C();

    v23 = [v15 fileExistsAtPath:v22];

    if (!v23)
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v37 = qword_1000FC008;
      v38 = sub_1000AC2AC();
      sub_1000ABA5C("JITAppKit : File does not exist at given path.", 46, 2, &_mh_execute_header, v37, v38, _swiftEmptyArrayStorage);

      v39 = *(v6 + 8);
      v39(v12, v5);
      v39(v14, v5);
      a1 = v48;
      return (*(v6 + 56))(a1, 1, 1, v5);
    }

    sub_1000AB67C(v24);
    v26 = v25;
    sub_1000AB6BC();
    sub_1000AB65C();

    sub_1000AB67C(v27);
    v29 = v28;
    v46 = *(v6 + 8);
    v46(v9, v5);
    v50 = 0;
    v30 = [v15 copyItemAtURL:v26 toURL:v29 error:&v50];

    if (v30)
    {
      v31 = v50;
      v46(v14, v5);

      v32 = v48;
      v47(v48, v12, v5);
      return (*(v6 + 56))(v32, 0, 1, v5);
    }

    v40 = v46;
    v41 = v50;
    v42 = sub_1000AB63C();

    swift_willThrow();
    v50 = v42;
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    sub_100005A24(0, &qword_1000F3B90, NSError_ptr);
    swift_dynamicCast();

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v43 = qword_1000FC008;
    v44 = sub_1000AC2AC();
    sub_1000ABA5C("JITAppKit : Unable to copy item to specified location", 53, 2, &_mh_execute_header, v43, v44, _swiftEmptyArrayStorage);

    v40(v12, v5);
    v40(v14, v5);
  }

  else
  {
    v33 = v50;
    v34 = sub_1000AB63C();

    swift_willThrow();
    v50 = v34;
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    sub_100005A24(0, &qword_1000F3B90, NSError_ptr);
    swift_dynamicCast();

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v35 = qword_1000FC008;
    v36 = sub_1000AC2AC();
    sub_1000ABA5C("JITAppKit : Unable to create destination folder !", 49, 2, &_mh_execute_header, v35, v36, _swiftEmptyArrayStorage);

    (*(v6 + 8))(v14, v5);
  }

  (*(v6 + 56))(v48, 1, 1, v5);
}

void IMBJITAppBundleManager.loadBundle(_:version:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [v3 setBundleState:2];
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v7 = qword_1000FC008;
  v8 = sub_1000AC28C();
  sub_1000ABA5C("JITAppKit : Trying to load template bundle", 42, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);
  v9 = [objc_opt_self() shared];
  sub_1000AB67C(v10);
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a2;
  v13[4] = a3;
  v16[4] = sub_10009A320;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10003839C;
  v16[3] = &unk_1000DDEA0;
  v14 = _Block_copy(v16);
  v15 = v4;

  [v9 loadBundle:v12 completion:v14];
  _Block_release(v14);
}

uint64_t sub_100099E40(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v6 = qword_1000FC008;
    v7 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v9 = sub_1000AC7FC();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10000587C();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1000ABA5C("JITAppKit : Error while trying to load bundle from stored location : %@", 71, 2, &_mh_execute_header, v6, v7, v8);

    [a2 setBundleState:5];
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v15 = qword_1000FC008;
    v16 = sub_1000AC28C();
    sub_1000ABA5C("JITAppKit : Bundle sucessfully loaded, ready to load view", 57, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);
    [a2 setBundleState:3];
    v17 = &a2[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion];
    swift_beginAccess();
    *v17 = a3;
    *(v17 + 1) = a4;
  }
}

id IMBJITAppBundleManager.init()()
{
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___containerID] = 0;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___container] = 0;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager____lazy_storage___database] = 0;
  v1 = OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_userDefaults;
  *&v0[v1] = [objc_opt_self() standardUserDefaults];
  v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingBundleUpdate] = 0;
  v2 = &v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingUpdateVersion];
  *v2 = 3157552;
  v2[1] = 0xE300000000000000;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_pendingQueryOperation] = 0;
  v3 = &v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_currentLoadedBundleVersion];
  *v3 = 3157552;
  v3[1] = 0xE300000000000000;
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_bundleState] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for IMBJITAppBundleManager();
  return objc_msgSendSuper2(&v5, "init");
}

id IMBJITAppBundleManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBJITAppBundleManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10009A244(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10009A27C()
{
  result = qword_1000F3B58;
  if (!qword_1000F3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3B58);
  }

  return result;
}

uint64_t sub_10009A2E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10009A32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10009A344()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A388()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A3C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009A420(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v26 = a1 + 32;
  while (1)
  {
    v4 = *(v26 + 8 * v1);
    v5 = v4 >> 62;
    v6 = v4 >> 62 ? sub_1000AC65C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_1000AC65C();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (!result)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_17;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = v4;
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v28 = v2;
    v16 = v10 + 8 * v11 + 32;
    v25 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10009C73C();
      for (i = 0; i != v14; ++i)
      {
        sub_10000413C(&qword_1000F3C18, &unk_1000B52C0);
        v18 = sub_1000A79F8(v29, i, v13);
        v20 = *v19;
        (v18)(v29, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_10000F840();
      swift_arrayInitWithCopy();
    }

    v2 = v28;
    if (v30 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v30);
      v23 = v21 + v30;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_17:
  sub_1000AC65C();
LABEL_18:
  result = sub_1000AC5BC();
  v2 = result;
  v10 = result & 0xFFFFFFFFFFFFFF8;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_19:
  v13 = v4;
  v15 = v10;
  result = sub_1000AC65C();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_10009A6E4()
{
  v1 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10009A758()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = sub_10009A6E4();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel;
  v6 = qword_1000EEE00;
  v7 = *&v0[OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel];
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1000FBF30;
  [v7 setTextColor:qword_1000FBF30];

  v9 = qword_1000EEDF8;
  v10 = *&v0[v5];
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setFont:qword_1000FBF28];

  [*&v0[v5] setLineBreakMode:0];
  [*&v0[v5] setNumberOfLines:0];
  LODWORD(v11) = 1148846080;
  [*&v0[v5] setContentCompressionResistancePriority:1 forAxis:v11];
  v12 = [v0 view];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  [v12 addSubview:*&v0[v5]];

  v14 = [objc_allocWithZone(UIImageView) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setTintColor:v8];
  [v14 setContentMode:1];
  v15 = sub_1000AC02C();
  v16 = [objc_opt_self() systemImageNamed:v15];

  [v14 setImage:v16];
  LODWORD(v17) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v17];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v18 addSubview:v14];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  [v20 _setCornerRadius:8.0];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v23 = v22;
  if (qword_1000EEE08 != -1)
  {
    swift_once();
  }

  [v23 setBackgroundColor:qword_1000FBF38];

  sub_10000413C(&qword_1000F3BF8, &qword_1000B52A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0F0;
  strcpy((inited + 32), "optionsLabel");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v25 = *&v0[v5];
  *(inited + 48) = v25;
  strcpy((inited + 56), "optionsChevron");
  *(inited + 71) = -18;
  *(inited + 72) = v14;
  v26 = v25;
  v46 = sub_100050198(inited);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F3C00, &qword_1000B52A8);
  swift_arrayDestroy();
  v27 = sub_1000502A8(&off_1000DA858);
  sub_10000413C(&qword_1000F3C08, &qword_1000B52B0);
  swift_arrayDestroy();
  v28 = objc_opt_self();
  sub_10000413C(&qword_1000F3C10, &qword_1000B52B8);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1000B0620;
  v29 = sub_1000AC02C();
  sub_10004DF40(v27);
  isa = sub_1000ABFAC().super.isa;

  sub_10004E188(v46);
  v48 = v14;
  v31 = sub_1000ABFAC().super.isa;

  v32 = v28;
  v33 = [v28 constraintsWithVisualFormat:v29 options:0 metrics:isa views:v31];

  sub_10000F840();
  v34 = sub_1000AC19C();

  *(v47 + 32) = v34;
  v35 = sub_1000AC02C();
  sub_10004DF40(v27);
  v36 = sub_1000ABFAC().super.isa;

  sub_10004E188(v46);
  v37 = sub_1000ABFAC().super.isa;

  v38 = [v32 constraintsWithVisualFormat:v35 options:0 metrics:v36 views:v37];

  v39 = sub_1000AC19C();
  *(v47 + 40) = v39;
  v40 = sub_1000AC02C();
  sub_10004DF40(v27);

  v41 = sub_1000ABFAC().super.isa;

  sub_10004E188(v46);

  v42 = sub_1000ABFAC().super.isa;

  v43 = [v32 constraintsWithVisualFormat:v40 options:0 metrics:v41 views:v42];

  v44 = sub_1000AC19C();
  *(v47 + 48) = v44;
  sub_10009A420(v47);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F3C18, &unk_1000B52C0);
  swift_arrayDestroy();
  v45 = sub_1000AC18C().super.isa;

  [v32 activateConstraints:v45];
}

uint64_t sub_10009AFBC()
{
  v1 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  __chkstk_darwin(v1);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = type metadata accessor for BIABubbleViewModel(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  swift_beginAccess();
  sub_10000E66C(v0 + v11, v6, &qword_1000F08E0, &unk_1000B4690);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000E784(v6, &qword_1000F08E0, &unk_1000B4690);
    v12 = sub_10009A6E4();
    v13 = sub_1000AC02C();
    [v12 setText:v13];

    swift_getKeyPath();
    swift_getKeyPath();
    v24 = 0;
    v14 = v0;
    return sub_1000ABC3C();
  }

  sub_10009C2C0(v6, v10, type metadata accessor for BIABubbleViewModel);
  sub_10009C674(&v10[*(v7 + 32)], v3, type metadata accessor for BIABubbleViewModelUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = sub_10000413C(&qword_1000F1150, &unk_1000B5280);
      sub_10000E784(&v3[*(v17 + 48)], &qword_1000F1148, &unk_1000B3580);
      sub_10000E784(v3, &qword_1000F1148, &unk_1000B3580);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {

      v20 = sub_10009A6E4();
      v21 = sub_1000AC02C();

      [v20 setText:v21];

      swift_getKeyPath();
      swift_getKeyPath();
      v24 = 1;
      goto LABEL_10;
    }

    sub_10009C6DC(v3, type metadata accessor for BIABubbleViewModelUserAction);
  }

  v18 = sub_10009A6E4();
  v19 = sub_1000AC02C();
  [v18 setText:v19];

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = 0;
LABEL_10:
  v22 = v0;
  sub_1000ABC3C();
  return sub_10009C6DC(v10, type metadata accessor for BIABubbleViewModel);
}

void sub_10009B3C8(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer;
  if (a1 && *(v2 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer))
  {
    [a1 removeGestureRecognizer:?];
    v4 = OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer;
  }

  v5 = *(v2 + v4);
  *(v2 + v4) = 0;

  if (a2)
  {
    v6 = objc_allocWithZone(UITapGestureRecognizer);
    v7 = a2;
    v8 = [v6 initWithTarget:v2 action:"_handleBubbleTapped"];
    [v7 addGestureRecognizer:v8];

    v9 = *(v2 + v4);
    *(v2 + v4) = v8;
  }
}

uint64_t sub_10009B4AC()
{
  v1 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = __chkstk_darwin(v1);
  v82 = (&v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v81 = &v73 - v4;
  v5 = type metadata accessor for BIABubbleViewModelUserAction(0);
  __chkstk_darwin(v5 - 8);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  __chkstk_darwin(v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  __chkstk_darwin(v10 - 8);
  v12 = &v73 - v11;
  v13 = type metadata accessor for BIABubbleViewModel(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  swift_beginAccess();
  v79 = v0;
  sub_10000E66C(&v0[v17], v12, &qword_1000F08E0, &unk_1000B4690);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_26;
  }

  sub_10009C2C0(v12, v16, type metadata accessor for BIABubbleViewModel);
  sub_10009C674(&v16[*(v13 + 32)], v9, type metadata accessor for BIABubbleViewModelUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10009C6DC(v16, type metadata accessor for BIABubbleViewModel);
      v21 = sub_10000413C(&qword_1000F1150, &unk_1000B5280);
      sub_10000E784(&v9[*(v21 + 48)], &qword_1000F1148, &unk_1000B3580);
      return sub_10000E784(v9, &qword_1000F1148, &unk_1000B3580);
    }

    return sub_10009C6DC(v16, type metadata accessor for BIABubbleViewModel);
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = v80;
    sub_10009C2C0(v9, v80, type metadata accessor for BIABubbleViewModelUserAction);
    v20 = sub_1000058D0(&v79[OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context], *&v79[OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context + 24]);
    sub_10009C328(*v20, v19);
    sub_10009C6DC(v19, type metadata accessor for BIABubbleViewModelUserAction);
    return sub_10009C6DC(v16, type metadata accessor for BIABubbleViewModel);
  }

  v23 = *(v9 + 2);
  v24 = v79;
  v25 = [v79 parentViewController];
  if (!v25)
  {
    goto LABEL_27;
  }

  v12 = v25;
  v26 = [v25 view];

  if (!v26)
  {
    goto LABEL_27;
  }

  v27 = [v24 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = v27;
  v28 = [v24 view];
  if (!v28)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    sub_10000E784(v12, &qword_1000F08E0, &unk_1000B4690);
LABEL_27:
    result = sub_1000AC63C();
    __break(1u);
    return result;
  }

  v29 = v28;

  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v12 convertRect:v26 toCoordinateSpace:{v31, v33, v35, v37}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_10000E6D4(v24 + OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context, v84);
  v46 = sub_1000058D0(v84, v84[3]);
  v47 = *(v23 + 16);
  v48 = _swiftEmptyArrayStorage;
  v76 = v26;
  if (v47)
  {
    v73 = v46;
    v75 = v16;
    v83 = _swiftEmptyArrayStorage;
    sub_10009C258(0, v47, 0);
    v49 = v83;
    v50 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v74 = v23;
    v51 = v23 + v50;
    v80 = *(v77 + 72);
    v52 = v23 + v50;
    v53 = v47;
    v54 = v78;
    do
    {
      v55 = v81;
      sub_10000E66C(v52, v81, &qword_1000F1140, &unk_1000B5290);
      v56 = v82;
      sub_100052750(v55, v82);
      v57 = *v56;
      v58 = v56[1];

      sub_10009C6DC(v56 + *(v54 + 64), type metadata accessor for BIABubbleViewModelUserAction);
      v83 = v49;
      v60 = v49[2];
      v59 = v49[3];
      if (v60 >= v59 >> 1)
      {
        sub_10009C258((v59 > 1), v60 + 1, 1);
        v54 = v78;
        v49 = v83;
      }

      v49[2] = v60 + 1;
      v61 = &v49[2 * v60];
      v61[4] = v57;
      v61[5] = v58;
      v52 += v80;
      --v53;
    }

    while (v53);
    v83 = _swiftEmptyArrayStorage;
    sub_10009C258(0, v47, 0);
    v62 = v78;
    v48 = v83;
    do
    {
      v63 = v81;
      sub_10000E66C(v51, v81, &qword_1000F1140, &unk_1000B5290);
      v64 = v82;
      sub_100052750(v63, v82);

      v65 = *(v64 + 16);
      v66 = *(v64 + 24);
      sub_10009C6DC(v64 + *(v62 + 64), type metadata accessor for BIABubbleViewModelUserAction);
      v83 = v48;
      v68 = v48[2];
      v67 = v48[3];
      if (v68 >= v67 >> 1)
      {
        sub_10009C258((v67 > 1), v68 + 1, 1);
        v62 = v78;
        v48 = v83;
      }

      v48[2] = v68 + 1;
      v69 = &v48[2 * v68];
      v69[4] = v65;
      v69[5] = v66;
      v51 += v80;
      --v47;
    }

    while (v47);
    v16 = v75;
    v23 = v74;
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
  }

  v70 = swift_allocObject();
  v71 = v79;
  *(v70 + 16) = v23;
  *(v70 + 24) = v71;
  type metadata accessor for PluginBubbleContext();
  v72 = v71;
  sub_10001682C(v49, v48, sub_10009C2B8, v70, v39, v41, v43, v45);

  sub_10009C6DC(v16, type metadata accessor for BIABubbleViewModel);
  return sub_10000E738(v84);
}

uint64_t sub_10009BD68(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  result = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = *(a2 + 16);
  if (v11 != a1)
  {
    if (a1 < 0 || v11 <= a1)
    {
      __break(1u);
    }

    else
    {
      sub_10000E66C(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, &v14 - v9, &qword_1000F1140, &unk_1000B5290);

      v12 = *(v6 + 64);
      v13 = sub_1000058D0((a3 + OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context), *(a3 + OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context + 24));
      sub_10009C328(*v13, &v10[v12]);
      return sub_10009C6DC(&v10[v12], type metadata accessor for BIABubbleViewModelUserAction);
    }
  }

  return result;
}

void sub_10009BFA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer);
}

id sub_10009BFE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BIABubbleOptionsiOSViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BIABubbleOptionsiOSViewController(uint64_t a1)
{
  result = qword_1000F3BE8;
  if (!qword_1000F3BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009C100(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a2 = v3;
}

uint64_t sub_10009C184(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1000ABC3C();
}

void *sub_10009C1F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A11EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009C218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A1320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009C238(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A1510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009C258(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A16E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10009C278()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009C2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009C328(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHelper(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000AB6EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for BIABubbleViewModelUserAction(0);
  __chkstk_darwin(v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for PluginBubbleContext();
  v34[3] = v14;
  v34[4] = &off_1000DAEB0;
  v34[0] = a1;
  sub_10009C674(a2, v13, type metadata accessor for BIABubbleViewModelUserAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = v13[16];
    v19 = *(v13 + 3);
    v18 = *(v13 + 4);
    v21 = *(v13 + 5);
    v20 = *(v13 + 6);
    sub_1000058D0(v34, v14);
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v19;
    v31 = v18;
    v32 = v21;
    v33 = v20;
    sub_100020F80();
    sub_100020FD4();
    v22 = a1;

    sub_1000ABA4C();
    v24 = BCMessageRootNotificationKey;

    sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    swift_dynamicCast();
    sub_1000164C4(v24, v27, v19, v18);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v23 = a1;
    sub_10004EA70(v6);
    sub_10004E400(v10, 1, sub_1000584D4, 0);
    sub_10009C6DC(v6, type metadata accessor for URLHelper);
    (*(v8 + 8))(v10, v7);
  }

  return sub_10000E738(v34);
}

uint64_t sub_10009C674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009C6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10009C73C()
{
  result = qword_1000F3C20;
  if (!qword_1000F3C20)
  {
    sub_1000041E8(&qword_1000F3C18, &unk_1000B52C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3C20);
  }

  return result;
}

uint64_t sub_10009C7A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AB97C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath), v7 = sub_1000ABFFC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10009EED8(&qword_1000EFE98, &protocol conformance descriptor for IndexPath);
      v15 = sub_1000AC01C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_10009CA00(uint64_t a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for MacListPickerTableViewController();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  if (qword_1000EEDC0 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_1000FBEF0];

  v4 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  type metadata accessor for IMBDefaultSectionHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1000AC02C();
  [v4 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v6];

  type metadata accessor for MacListPickerTableViewCell();
  v7 = swift_getObjCClassFromMetadata();
  v8 = sub_1000AC02C();
  [v4 registerClass:v7 forCellReuseIdentifier:v8];

  [v4 setEstimatedRowHeight:140.0];
  [v4 setSectionHeaderHeight:UITableViewAutomaticDimension];
  [v4 setEstimatedSectionHeaderHeight:80.0];
  [v4 setSeparatorStyle:0];
  [v4 setBackgroundColor:qword_1000FBEF0];
  [v4 _setSectionContentInset:{0.0, 8.0, 0.0, 8.0}];
  [v4 _setSectionCornerRadius:0.0];
  if (!v1[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType])
  {
    v9 = 0;
    v10 = &selRef_setAllowsSelection_;
    goto LABEL_8;
  }

  if (v1[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType] == 2)
  {
    v9 = 1;
    v10 = &selRef_setAllowsMultipleSelection_;
LABEL_8:
    [v4 *v10];
  }

  v11 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  v12 = *&v1[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest];
  if (v12)
  {
    v13 = *(v12 + 24);
    if (v13 >> 62)
    {
      v14 = sub_1000AC65C();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v14 = 0;
  }

  [v11 setHidden:v14 > 0];
  v15 = [objc_opt_self() mainBundle];
  v24._countAndFlagsBits = 0xE000000000000000;
  v26._object = 0x80000001000B7070;
  v26._countAndFlagsBits = 0xD000000000000012;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v16.super.isa = v15;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1000AB61C(v26, v27, v16, v28, 0, v24);

  v17 = sub_1000AC02C();

  [v11 setText:v17];

  v18 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
  swift_beginAccess();
  v19 = *(*&v1[v18] + 16) != 0;
  v20 = sub_10008240C();
  v22 = v21;
  ObjectType = swift_getObjectType();
  (*(v22 + 48))(v19, ObjectType, v22);
}

char *sub_10009CDFC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for MacTableHeaderView()) init];
  v3 = *(v1 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType);
  v4 = sub_100012B64();
  v5 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  if (v3)
  {
    v6 = [*(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) receivedMessage];
    if (v6 && (v7 = v6, v8 = [v6 title], v7, v8))
    {
      sub_1000AC06C();
    }

    else
    {
      v8 = [objc_opt_self() mainBundle];
      v27._countAndFlagsBits = 0xE000000000000000;
      v28._object = 0x80000001000B7050;
      v28._countAndFlagsBits = 0xD000000000000019;
      v30.value._countAndFlagsBits = 0;
      v30.value._object = 0;
      v9.super.isa = v8;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_1000AB61C(v28, v30, v9, v32, 0, v27);
    }

    v10 = sub_1000AC02C();

    [v4 setText:v10];

    v11 = sub_100012E84();
    v12 = [v5 receivedMessage];
    if (!v12 || (v13 = v12, v14 = [v12 subtitle], v13, !v14))
    {
      v14 = 0;
    }

    [v11 setText:v14];
  }

  else
  {
    v15 = [*(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) replyMessage];
    if (v15 && (v16 = v15, v17 = [v15 title], v16, v17))
    {
      sub_1000AC06C();
    }

    else
    {
      v17 = [objc_opt_self() mainBundle];
      v27._countAndFlagsBits = 0xE000000000000000;
      v29._countAndFlagsBits = 0xD000000000000022;
      v29._object = 0x80000001000B7020;
      v31.value._countAndFlagsBits = 0;
      v31.value._object = 0;
      v18.super.isa = v17;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      sub_1000AB61C(v29, v31, v18, v33, 0, v27);
    }

    v19 = sub_1000AC02C();

    [v4 setText:v19];

    v14 = sub_100012E84();
    [v14 setText:0];
  }

  v20 = [objc_opt_self() separatorColor];
  v21 = sub_10001380C();
  [v21 setBackgroundColor:v20];

  v22 = *&v2[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView];
  v23 = *(v1 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
  if (v23)
  {
    v24 = *(v23 + 24);
    if (v24 >> 62)
    {
      v26 = *&v2[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView];
      v23 = sub_1000AC65C();
      v22 = v26;
    }

    else
    {
      v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  [v22 setHidden:v23 > 1];
  return v2;
}

uint64_t sub_10009D184()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v16._countAndFlagsBits = 0xE000000000000000;
  if (v1)
  {
    v18._countAndFlagsBits = 1145980243;
    v18._object = 0xE400000000000000;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v4.super.isa = v3;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v5 = sub_1000AB61C(v18, v21, v4, v24, 0, v16);
    v7 = v6;

    v8 = [v2 mainBundle];
    v17._countAndFlagsBits = 0xE000000000000000;
    v19._countAndFlagsBits = 0x4C45434E4143;
    v19._object = 0xE600000000000000;
    v22.value._countAndFlagsBits = 0;
    v22.value._object = 0;
    v9.super.isa = v8;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v10 = sub_1000AB61C(v19, v22, v9, v25, 0, v17);
    v12 = v11;

    type metadata accessor for FooterToolbarModel();
    result = swift_allocObject();
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 1;
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
    *(result + 32) = 0;
    *(result + 40) = v5;
    *(result + 48) = v7;
  }

  else
  {
    v20._countAndFlagsBits = 1162760004;
    v20._object = 0xE400000000000000;
    v23.value._countAndFlagsBits = 0;
    v23.value._object = 0;
    v14.super.isa = v3;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v10 = sub_1000AB61C(v20, v23, v14, v26, 0, v16);
    v12 = v15;

    type metadata accessor for FooterToolbarModel();
    result = swift_allocObject();
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 1;
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0xE000000000000000;
  }

  *(result + 56) = 2;
  *(result + 64) = v10;
  *(result + 72) = v12;
  return result;
}

void sub_10009D324()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  __chkstk_darwin(v2 - 8);
  v33 = &v29 - v3;
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v31 = (v5 + 8);
  v32 = v5 + 16;
  v34 = v8;
  v35 = v7;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v30 = v5;
  while (v12)
  {
LABEL_11:
    v16 = v36;
    (*(v5 + 16))(v36, *(v34 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v14 << 6)), v4);
    swift_beginAccess();
    v17 = v33;
    sub_1000A2DC4(v16, v33);
    sub_1000A4758(v17);
    swift_endAccess();
    v18 = *(v1 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
    isa = sub_1000AB92C().super.isa;
    v20 = [v18 cellForRowAtIndexPath:isa];

    if (v20)
    {
      type metadata accessor for MacListPickerTableViewCell();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        *(v21 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
        v22 = v20;
        sub_100065F44(v23);
        sub_1000662E8();

        v5 = v30;
      }
    }

    v12 &= v12 - 1;
    (*v31)(v36, v4);
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      v24 = *(*(v1 + v35) + 16) != 0;
      v25 = sub_10008240C();
      v27 = v26;
      ObjectType = swift_getObjectType();
      (*(v27 + 48))(v24, ObjectType, v27);

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10009D660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FC010;
  v5 = sub_1000AC29C();
  sub_1000ABA5C("Right button tapped", 19, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);
  v6 = *(v3 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_10009EFA4(*(v8 + 16), 0);
    v11 = *(sub_1000AB97C() - 8);
    v21 = sub_1000A4338(&v23, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
    v12 = v23;
    swift_retain_n();

    sub_100012760(v12);
    if (v21 != v9)
    {
      __break(1u);
LABEL_7:
      sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
      v22 = sub_1000AC3FC();
      v13 = sub_1000AC2BC();
      sub_1000ABA5C("Failed to send reply because there is no list request", 53, 2, &_mh_execute_header, v22, v13, _swiftEmptyArrayStorage);

      return;
    }
  }

  else
  {
    swift_retain_n();
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for IMBListResponse();
  v14 = swift_allocObject();
  v14[4] = 0;
  v14[2] = v6;
  v23 = v10;

  sub_1000A17F4(&v23);

  v15 = *(v3 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v14[3] = v23;
  sub_100060250(v15, *(v3 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message));
  v16 = v3 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      v19 = *(v17 + 16);
      v20 = type metadata accessor for MacListPickerTableViewController();
      v19(v3, v20, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

unint64_t sub_10009DB0C(void *a1, uint64_t a2)
{
  v5 = sub_1000AC02C();
  v6 = [a1 dequeueReusableCellWithIdentifier:v5];

  if (v6)
  {
    type metadata accessor for MacListPickerTableViewCell();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
      if (!v8)
      {
        v9 = [objc_allocWithZone(UITableViewCell) init];
LABEL_27:

        return v9;
      }

      v9 = v7;
      v10 = v2;
      v11 = *(v8 + 24);

      result = sub_1000AB96C();
      if ((v11 & 0xC000000000000001) != 0)
      {
        v13 = sub_1000AC5AC();
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_30;
        }

        if (result >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v13 = *(v11 + 8 * result + 32);
      }

      v14 = *(v13 + 40);

      result = sub_1000AB95C();
      if ((v14 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_34:
            __break(1u);
            return result;
          }

          v15 = v10;
          v16 = *(v14 + 8 * result + 32);

          goto LABEL_12;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_30:
      v16 = sub_1000AC5AC();
      v15 = v10;
LABEL_12:

      v17 = *(v15 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType);
      v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] = v17;
      v18 = v15;
      sub_100065F44(v19);
      *&v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem] = v16;
      swift_retain_n();

      sub_100065F44(v20);

      v21 = objc_opt_self();
      v6 = v6;
      v22 = [v21 separatorColor];
      [v9 setSeparatorColor:v22];

      [v9 setSelectionStyle:0];
      v23 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
      swift_beginAccess();
      v24 = *(v18 + v23);

      LOBYTE(v18) = sub_10009C7A0(a2, v24);

      v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] = v18 & 1;
      sub_100065F44(v25);
      sub_1000662E8();
      if (v17)
      {
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton] = 1;
      }

      else
      {
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton] = 0;
        sub_1000662E8();
        v27 = sub_1000AB96C() != 0;
        v28 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed;
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed] = v27;
        v29 = [v9 contentView];
        v30 = v29;
        v31 = 0.3;
        if (!v9[v28])
        {
          v31 = 1.0;
        }

        [v29 setAlpha:v31];
      }

      sub_1000662E8();
      v32 = sub_1000AB95C();
      result = [a1 numberOfRowsInSection:sub_1000AB96C()];
      if (!__OFSUB__(result, 1))
      {
        v33 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator;
        v9[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator] = v32 != result - 1;
        v34 = sub_100066378();
        [v34 setHidden:(v9[v33] & 1) == 0];

        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  v26 = objc_allocWithZone(UITableViewCell);

  return [v26 init];
}

char *sub_10009E0C4(char *result, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
  if (!v4)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v7 = result;
      v8 = *(v6 + 8 * a2 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = result;

  v8 = sub_1000AC5AC();
LABEL_6:
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (v12 = sub_1000AC02C(), v13 = [v7 dequeueReusableHeaderFooterViewWithIdentifier:v12], v12, !v13))
  {

    return 0;
  }

  type metadata accessor for IMBDefaultSectionHeader();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  v3 = *&result[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel];
  v14 = *(v4 + 24);
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v15 = result;
    v20 = v3;
    sub_1000AC5AC();
    goto LABEL_15;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v15 = result;
    v16 = v3;

LABEL_15:

    sub_1000AC0FC();

    v17 = sub_1000AC02C();

    [v3 setText:v17];

    v18 = [*(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
    v19 = sub_10008D2BC();
    [v19 setBackgroundColor:v18];

    return v15;
  }

  __break(1u);
  return result;
}

void sub_10009E3A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_1000AB97C();
  v55 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType))
  {
    v54 = v10;
    v13 = OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths;
    v14 = swift_beginAccess();
    v15 = *(v2 + v13);
    __chkstk_darwin(v14);
    *(&v48 - 2) = a2;

    v56 = sub_1000A333C(sub_10001E8E0, (&v48 - 4), v15);
    v16 = *(v3 + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
    if (!v16)
    {
      goto LABEL_7;
    }

    v17 = *(v16 + 24);

    v18 = sub_1000AB96C();
    if ((v17 & 0xC000000000000001) != 0)
    {
      v24 = sub_1000AC5AC();

      v25 = *(v24 + 48);
      swift_unknownObjectRelease();
      if (v25)
      {
LABEL_7:

        v21 = *(v3 + v13);

        v22 = sub_10009C7A0(a2, v21);

        if ((v22 & 1) == 0)
        {
          v23 = a2;
LABEL_27:
          sub_10009E884(v23, v3, a1);
          goto LABEL_28;
        }

LABEL_12:
        sub_10009EA4C(a2, a1, v3);
LABEL_28:
        v43 = *(*(v3 + v13) + 16) != 0;
        v44 = sub_10008240C();
        v46 = v45;
        ObjectType = swift_getObjectType();
        (*(v46 + 48))(v43, ObjectType, v46);

        return;
      }
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_32:
        __break(1u);
        return;
      }

      v19 = *(v17 + 8 * v18 + 32);

      v20 = *(v19 + 48);

      if (v20)
      {
        goto LABEL_7;
      }
    }

    v26 = *(v3 + v13);

    v27 = sub_10009C7A0(a2, v26);

    if (v27)
    {

      goto LABEL_12;
    }

    v49 = a2;
    v28 = v56 + 56;
    v29 = 1 << v56[32];
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v56 + 7);
    v32 = (v29 + 63) >> 6;
    v52 = v55 + 16;
    v53 = v8;
    v51 = (v55 + 8);

    v33 = 0;
    v34 = v54;
    v50 = a1;
    while (v31)
    {
LABEL_23:
      (*(v55 + 16))(v12, *(v56 + 6) + *(v55 + 72) * (__clz(__rbit64(v31)) | (v33 << 6)), v34);
      isa = sub_1000AB92C().super.isa;
      [a1 deselectRowAtIndexPath:isa animated:1];

      swift_beginAccess();
      v37 = v53;
      sub_1000A2DC4(v12, v53);
      sub_1000A4758(v37);
      swift_endAccess();
      v38 = sub_1000AB92C().super.isa;
      v39 = [a1 cellForRowAtIndexPath:v38];

      if (v39)
      {
        type metadata accessor for MacListPickerTableViewCell();
        v40 = swift_dynamicCastClass();
        if (v40)
        {
          *(v40 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
          v41 = v39;
          sub_100065F44(v42);
          sub_1000662E8();

          a1 = v50;
        }
      }

      v31 &= v31 - 1;
      v34 = v54;
      (*v51)(v12, v54);
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {

        v23 = v49;
        goto LABEL_27;
      }

      v31 = *&v28[8 * v35];
      ++v33;
      if (v31)
      {
        v33 = v35;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }
}

void sub_10009E884(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000AB97C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  (*(v6 + 16))(v9, a1, v5);
  swift_beginAccess();
  sub_10009F4B4(v11, v9);
  (*(v6 + 8))(v11, v5);
  swift_endAccess();
  isa = sub_1000AB92C().super.isa;
  v13 = [a3 cellForRowAtIndexPath:isa];

  if (v13)
  {
    type metadata accessor for MacListPickerTableViewCell();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 1;
      v15 = v13;
      sub_100065F44(v16);
      sub_1000662E8();
    }
  }
}

void sub_10009EA4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  isa = sub_1000AB92C().super.isa;
  [a2 deselectRowAtIndexPath:isa animated:1];

  swift_beginAccess();
  sub_1000A2DC4(a1, v7);
  sub_1000A4758(v7);
  swift_endAccess();
  v9 = sub_1000AB92C().super.isa;
  v10 = [a2 cellForRowAtIndexPath:v9];

  if (v10)
  {
    type metadata accessor for MacListPickerTableViewCell();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      *(v11 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
      v12 = v10;
      sub_100065F44(v13);
      sub_1000662E8();
    }
  }
}

uint64_t sub_10009ED8C()
{
}

id sub_10009EDCC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MacListPickerTableViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10009EE84()
{
  result = qword_1000F3C68;
  if (!qword_1000F3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3C68);
  }

  return result;
}

uint64_t sub_10009EED8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000AB97C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10009EF1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000413C(&qword_1000F0840, &qword_1000B1B40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10009EFA4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000413C(&qword_1000F0818, &unk_1000B5370);
  v4 = *(sub_1000AB97C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10009F0A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10009F128(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000A36D4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10009F1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000AC87C();
  sub_1000AC11C();
  v8 = sub_1000AC8CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000AC7AC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10009FF90(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10009F308(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v7 = sub_1000AC8CC();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1000AC06C();
      v13 = v12;
      if (v11 == sub_1000AC06C() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1000AC7AC();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1000A0110(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_10009F4B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath);
  v33 = a2;
  v11 = sub_1000ABFFC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10009EED8(&qword_1000EFE98, &protocol conformance descriptor for IndexPath);
      v21 = sub_1000AC01C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000A02F8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_10009F76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000413C(&qword_1000F3C98, &qword_1000B53B0);
  v4 = sub_1000AC56C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1000AC87C();
      sub_1000AC11C();
      v21 = sub_1000AC8CC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10009F9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000413C(&qword_1000F3CA0, &qword_1000B53B8);
  v4 = sub_1000AC56C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000AC06C();
      sub_1000AC87C();
      sub_1000AC11C();
      v18 = sub_1000AC8CC();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10009FC48(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000AB97C();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  v6 = sub_1000AC56C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath);
      v21 = sub_1000ABFFC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10009FF90(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10009F76C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000A0574();
      goto LABEL_16;
    }

    sub_1000A0A58(v8 + 1);
  }

  v10 = *v4;
  sub_1000AC87C();
  sub_1000AC11C();
  v11 = sub_1000AC8CC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1000AC7AC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1000AC7DC();
  __break(1u);
}

void sub_1000A0110(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10009F9CC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1000A06D0();
      goto LABEL_16;
    }

    sub_1000A0C90(v7 + 1);
  }

  v9 = *v3;
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v10 = sub_1000AC8CC();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for PKContactField(0);
    do
    {
      v13 = sub_1000AC06C();
      v15 = v14;
      if (v13 == sub_1000AC06C() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1000AC7AC();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = result;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_1000AC7DC();
  __break(1u);
}

uint64_t sub_1000A02F8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10009FC48(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000A0820();
      goto LABEL_12;
    }

    sub_1000A0EE4(v10 + 1);
  }

  v12 = *v3;
  sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath);
  v13 = sub_1000ABFFC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10009EED8(&qword_1000EFE98, &protocol conformance descriptor for IndexPath);
      v21 = sub_1000AC01C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000AC7DC();
  __break(1u);
  return result;
}

void sub_1000A0574()
{
  v1 = v0;
  sub_10000413C(&qword_1000F3C98, &qword_1000B53B0);
  v2 = *v0;
  v3 = sub_1000AC55C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000A06D0()
{
  v1 = v0;
  sub_10000413C(&qword_1000F3CA0, &qword_1000B53B8);
  v2 = *v0;
  v3 = sub_1000AC55C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000A0820()
{
  v1 = v0;
  v2 = sub_1000AB97C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  v6 = *v0;
  v7 = sub_1000AC55C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1000A0A58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000413C(&qword_1000F3C98, &qword_1000B53B0);
  v4 = sub_1000AC56C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000AC87C();

      sub_1000AC11C();
      v20 = sub_1000AC8CC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1000A0C90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000413C(&qword_1000F3CA0, &qword_1000B53B8);
  v4 = sub_1000AC56C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000AC06C();
      sub_1000AC87C();
      v18 = v17;
      sub_1000AC11C();
      v19 = sub_1000AC8CC();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1000A0EE4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1000AB97C();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  v7 = sub_1000AC56C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath);
      v21 = sub_1000ABFFC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void *sub_1000A11EC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000413C(&qword_1000F3C88, &qword_1000B53A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F3C90, &qword_1000B53A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000A1320(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000413C(&qword_1000F3C80, &unk_1000B5390);
  v10 = *(sub_10000413C(&qword_1000F1140, &unk_1000B5290) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000413C(&qword_1000F1140, &unk_1000B5290) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000A1510(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000413C(&qword_1000F0818, &unk_1000B5370);
  v10 = *(sub_1000AB97C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000AB97C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000A16E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000413C(&qword_1000F0840, &qword_1000B1B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1000A17F4(uint64_t *a1)
{
  v2 = *(sub_1000AB97C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000A4744(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000A189C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000A189C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000AC77C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000AB97C();
        v6 = sub_1000AC1CC();
        v6[2] = v5;
      }

      v7 = *(sub_1000AB97C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000A1C78(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1000A19C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000A19C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000AB97C();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_10009EED8(&qword_1000F3C70, &protocol conformance descriptor for IndexPath);
      v26 = sub_1000AC00C();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A1C78(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1000AB97C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1000A2CCC(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1000A2678(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000A2CCC(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1000A2C40(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_10009EED8(&qword_1000F3C70, &protocol conformance descriptor for IndexPath);
      LODWORD(v133) = sub_1000AC00C();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1000AC00C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1000386A8((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1000A2678(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000A2CCC(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1000A2C40(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_10009EED8(&qword_1000F3C70, &protocol conformance descriptor for IndexPath);
    v109 = sub_1000AC00C();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000A2678(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = sub_1000AB97C();
  v8 = *(v55 - 8);
  v9 = __chkstk_darwin(v55);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v52 = &v43 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v54 = a3;
  v16 = (a2 - a1) / v14;
  v58 = a1;
  v57 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v47 = (v8 + 8);
      v48 = (v8 + 16);
      v29 = a4 + v18;
      v30 = v54;
      v45 = a1;
      v46 = a4;
      v49 = v28;
      do
      {
        v43 = v27;
        v31 = a2 + v28;
        v32 = v27;
        v50 = a2;
        v51 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v58 = a2;
            v27 = v43;
            goto LABEL_59;
          }

          v34 = v30;
          v44 = v32;
          v54 = v30 + v28;
          v35 = v29 + v28;
          v36 = *v48;
          v37 = v52;
          v38 = v29 + v28;
          v39 = v29;
          v40 = v55;
          (*v48)(v52, v38, v55);
          v41 = v53;
          (v36)(v53, v31, v40);
          sub_10009EED8(&qword_1000F3C70, &protocol conformance descriptor for IndexPath);
          LOBYTE(v36) = sub_1000AC00C();
          v42 = *v47;
          (*v47)(v41, v40);
          v42(v37, v40);
          if (v36)
          {
            break;
          }

          v32 = v35;
          v30 = v54;
          if (v34 < v39 || v54 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
            a1 = v45;
          }

          else
          {
            v31 = v51;
            a1 = v45;
            if (v34 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v33 = v35 > v46;
          v28 = v49;
          a2 = v50;
          if (!v33)
          {
            v27 = v32;
            goto LABEL_58;
          }
        }

        v30 = v54;
        if (v34 < v50 || v54 >= v50)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v45;
          v29 = v39;
        }

        else
        {
          a2 = v51;
          a1 = v45;
          v29 = v39;
          if (v34 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v44;
        v28 = v49;
      }

      while (v29 > v46);
    }

LABEL_58:
    v58 = a2;
LABEL_59:
    v56 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v17;
    v56 = a4 + v17;
    if (v17 >= 1 && a2 < v54)
    {
      v49 = *(v8 + 16);
      v50 = v8 + 16;
      v47 = v14;
      v48 = (v8 + 8);
      do
      {
        v20 = v52;
        v21 = v55;
        v22 = v49;
        v49(v52, a2, v55);
        v23 = v53;
        v22(v53, a4, v21);
        sub_10009EED8(&qword_1000F3C70, &protocol conformance descriptor for IndexPath);
        LOBYTE(v22) = sub_1000AC00C();
        v24 = *v48;
        (*v48)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v47;
          if (a1 < a2 || a1 >= v47 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v47;
          v26 = v47 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = v26;
          a4 += v25;
        }

        a1 += v25;
        v58 = a1;
      }

      while (a4 < v51 && a2 < v54);
    }
  }

  sub_1000A2CE0(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_1000A2C40(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000A2CCC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000A2CE0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000AB97C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000A2DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000AB97C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath);
  v31 = a1;
  v10 = sub_1000ABFFC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10009EED8(&qword_1000EFE98, &protocol conformance descriptor for IndexPath);
      v19 = sub_1000AC01C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000A0820();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000A3044(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_1000A3044(int64_t a1)
{
  v3 = sub_1000AB97C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1000AC4BC();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath);
        v23 = sub_1000ABFFC();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void *sub_1000A333C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v11;
    v41 = v10;
    v42 = v8;
    v46 = v4;
    v37 = &v34;
    __chkstk_darwin(v8);
    v36 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v13 = 0;
    v44 = a3;
    v15 = *(a3 + 56);
    a3 += 56;
    v14 = v15;
    v16 = 1 << *(a3 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v10 = ((v16 + 63) >> 6);
    v38 = 0;
    v39 = v7 + 16;
    v40 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
LABEL_12:
      v11 = v19 | (v13 << 6);
      v22 = *(v44 + 48) + *(v7 + 72) * v11;
      v4 = v7;
      v23 = *(v7 + 16);
      v24 = v41;
      v25 = v42;
      v23(v41, v22, v42);
      v26 = v46;
      v27 = v43(v24);
      v46 = v26;
      if (v26)
      {
        (*v40)(v24, v25);

        return swift_willThrow();
      }

      v28 = v27;
      v8 = (*v40)(v24, v25);
      v7 = v4;
      v18 = v45;
      if (v28)
      {
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_1000A3934(v36, v35, v38, v44);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        return sub_1000A3934(v36, v35, v38, v44);
      }

      v21 = *(a3 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v31 = v8;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v31;
  }

  v32 = swift_slowAlloc();
  v33 = sub_10009F128(v32, v11, a3, v43);

  if (!v4)
  {
    return v33;
  }

  return result;
}

uint64_t sub_1000A36D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1000AB97C();
  result = __chkstk_darwin(v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_1000A3934(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A3934(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1000AB97C();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  result = sub_1000AC57C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10009EED8(&qword_1000F0828, &protocol conformance descriptor for IndexPath);
    result = sub_1000ABFFC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1000A3C48(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1000A3DA0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000A3EF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1000AB97C();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000A4198(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1000068B4(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000A4338(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1000AB97C();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000A45DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000A4758(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000A47C0(void *a1, void *a2, uint64_t a3, char *a4)
{
  v25[3] = type metadata accessor for URLHelper(0);
  v25[4] = &off_1000DCB20;
  v8 = sub_100030970(v25);
  sub_100078F7C(a3, v8);
  *&a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation] = a1;
  *&a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] = a2;
  sub_10000E6D4(v25, &a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper]);
  v24.receiver = a4;
  v24.super_class = type metadata accessor for IMBDetailedMessageViewController();
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  v12 = qword_1000EEE80;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1000FC008;
  v15 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000AF0F0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(ObjCClassFromMetadata);
  v19 = sub_1000AC06C();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10000587C();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  *(v16 + 96) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
  *(v16 + 104) = sub_1000420C4();
  *(v16 + 72) = v10;
  v22 = v10;
  sub_1000ABA5C("Created a %@ for message: %@", 28, 2, &_mh_execute_header, v14, v15, v16);

  sub_10000E738(v25);
  return v13;
}

id sub_1000A49E0(void *a1, void *a2, uint64_t a3, char *a4)
{
  v19[3] = type metadata accessor for URLHelper(0);
  v19[4] = &off_1000DCB20;
  v8 = sub_100030970(v19);
  sub_100078F7C(a3, v8);
  v9 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView;
  *&a4[v9] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel;
  *&a4[v10] = [objc_allocWithZone(UILabel) init];
  *&a4[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader] = 0;
  *&a4[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel] = 0;
  v11 = &a4[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_10000E6D4(v19, v18);
  v12 = sub_1000315C0(v18, v18[3]);
  __chkstk_darwin(v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_1000A47C0(a1, a2, v14, a4);
  sub_10000E738(v19);
  sub_10000E738(v18);
  return v16;
}

id sub_1000A4BA8(void *a1, void *a2, char a3)
{
  v7 = type metadata accessor for URLHelper(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  *&v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths] = &_swiftEmptySetSingleton;
  if (![a2 rootObject])
  {
    goto LABEL_8;
  }

  type metadata accessor for IMBListRequest();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v14 = 0;
    *&v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest] = 0;
    goto LABEL_10;
  }

  *&v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest] = v13;
  if (a3)
  {
    if (*(v13 + 16))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType] = v14;
  sub_10004EA70(v12);
  sub_10001E764(v12, v10);
  v15 = sub_1000A49E0(a1, a2, v10, v3);
  sub_10001E7C8(v12);
  return v15;
}

uint64_t sub_1000A4D2C()
{

  sub_100072654(v0 + OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBTableViewCellData(uint64_t a1)
{
  result = qword_1000F3CD0;
  if (!qword_1000F3CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A4DF4(uint64_t a1)
{
  sub_1000723C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1000A5008(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBDetailedMessageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1000A50E4(void *result)
{
  v4 = result[2];
  v5 = *v1;
  v6 = *(*v1 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v5[3] >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = sub_100038A14(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = v5[3] >> 1;
  }

  v12 = v5[2];
  v13 = v10 - v12;
  result = sub_1000A4198(v49, &v5[6 * v12 + 4], v10 - v12, v8);
  if (result < v4)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = v5[2];
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    v5[2] = v16;
  }

  if (result != v13)
  {
    result = sub_100012760(v49[0]);
LABEL_14:
    *v1 = v5;
    return result;
  }

LABEL_17:
  v3 = v5[2];
  v13 = v49[1];
  v41 = v49[0];
  v2 = v49[2];
  v16 = v50;
  v17 = v51;
  if (v51)
  {
    v18 = v50;
LABEL_27:
    v22 = (v17 - 1) & v17;
    v23 = __clz(__rbit64(v17)) | (v18 << 6);
    v24 = (*(v41 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    sub_1000068B4(*(v41 + 56) + 32 * v23, &v43);
    *&v46 = v26;
    *(&v46 + 1) = v25;
    sub_100006910(&v43, &v47);

    v21 = v18;
    while (1)
    {
      sub_1000A7CB8(&v46, &v43);
      if (!*(&v43 + 1))
      {
        break;
      }

      v27 = (v2 + 64) >> 6;
      while (1)
      {
        sub_10000E784(&v43, &qword_1000F3EA0, &qword_1000B54C8);
        v28 = v5[3];
        v29 = v28 >> 1;
        if ((v28 >> 1) < v3 + 1)
        {
          v5 = sub_100038A14((v28 > 1), v3 + 1, 1, v5);
          v29 = v5[3] >> 1;
        }

        sub_1000A7CB8(&v46, v42);
        if (*(&v42[0] + 1))
        {
          break;
        }

        v2 = v21;
LABEL_52:
        sub_10000E784(v42, &qword_1000F3EA0, &qword_1000B54C8);
        v30 = v3;
        v21 = v2;
LABEL_31:
        v5[2] = v30;
        sub_1000A7CB8(&v46, &v43);
        if (!*(&v43 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v3 <= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v3;
      }

      while (1)
      {
        v43 = v42[0];
        v44 = v42[1];
        v45 = v42[2];
        if (v3 == v30)
        {
          sub_10000E784(&v43, &qword_1000F07E0, &qword_1000B54D0);
          v3 = v30;
          goto LABEL_31;
        }

        sub_10000E784(&v46, &qword_1000F3EA0, &qword_1000B54C8);
        v31 = &v5[6 * v3 + 4];
        v33 = v44;
        v32 = v45;
        *v31 = v43;
        v31[1] = v33;
        v31[2] = v32;
        if (!v22)
        {
          break;
        }

        v34 = v21;
LABEL_50:
        v36 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v37 = v36 | (v34 << 6);
        v38 = (*(v41 + 48) + 16 * v37);
        v40 = *v38;
        v39 = v38[1];
        sub_1000068B4(*(v41 + 56) + 32 * v37, v42);
        *&v46 = v40;
        *(&v46 + 1) = v39;
        sub_100006910(v42, &v47);

        v2 = v34;
LABEL_39:
        ++v3;
        sub_1000A7CB8(&v46, v42);
        v21 = v2;
        if (!*(&v42[0] + 1))
        {
          goto LABEL_52;
        }
      }

      if (v27 <= (v21 + 1))
      {
        v35 = v21 + 1;
      }

      else
      {
        v35 = v27;
      }

      v2 = v35 - 1;
      while (1)
      {
        v34 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v34 >= v27)
        {
          v22 = 0;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          goto LABEL_39;
        }

        v22 = *(v13 + 8 * v34);
        ++v21;
        if (v22)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v22 = 0;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
    }

LABEL_53:
    sub_10000E784(&v46, &qword_1000F3EA0, &qword_1000B54C8);
    sub_100012760(v41);
    result = sub_10000E784(&v43, &qword_1000F3EA0, &qword_1000B54C8);
    goto LABEL_14;
  }

LABEL_20:
  v19 = (v2 + 64) >> 6;
  if (v19 <= (v16 + 1))
  {
    v20 = (v16 + 1);
  }

  else
  {
    v20 = (v2 + 64) >> 6;
  }

  v21 = v20 - 1;
  while (1)
  {
    v18 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_55;
    }

    v17 = *(v13 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A5500(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1000AC65C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1000AC65C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000A6E38(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1000A55F8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macRightButton] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macDismissButton] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MacFooterToolbarViewController();
  v3 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  v4 = *&v3[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  *(v4 + 80) = sub_1000A7D60;
  *(v4 + 88) = v5;

  sub_100026FE0(v6, v7);

  return v3;
}

void sub_1000A5728(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000A65BC();

    [v5 setHidden:(a1 & 1) == 0];
  }
}

void sub_1000A57DC(uint64_t a1)
{
  v2 = v1;
  v92.receiver = v1;
  v92.super_class = type metadata accessor for MacFooterToolbarViewController();
  objc_msgSendSuper2(&v92, "viewDidLoad");
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v3;
  if (qword_1000EEDC0 != -1)
  {
    swift_once();
  }

  [v4 setBackgroundColor:qword_1000FBEF0];

  v5 = [v2 view];
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = v5;
  v7 = sub_1000A65BC();
  [v6 addSubview:v7];

  v8 = [v2 view];
  if (!v8)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v8;
  v10 = sub_1000A6634();
  [v9 addSubview:v10];

  v11 = *&v2[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel];
  v12 = *(v11 + 24);
  v13 = *(v11 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  if (v13)
  {
    v14 = sub_1000A670C();

    v15 = sub_1000AC02C();

    [v14 setTitle:v15 forState:0];

    [*&v2[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView] addArrangedSubview:*&v2[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton]];
  }

  v16 = [objc_allocWithZone(UIView) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView;
  v84 = v16;
  [*&v2[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView] addArrangedSubview:v16];
  v18 = *(v11 + 72);
  v19 = *(v11 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  if (v19 && sub_10002CE60() == 2)
  {
    v20 = sub_1000A67D8();

    v21 = sub_1000AC02C();

    [v20 setTitle:v21 forState:0];

    [*&v2[v17] addArrangedSubview:*&v2[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macDismissButton]];
  }

  v22 = *(v11 + 48);
  v23 = *(v11 + 40) & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  if (v23)
  {
    v24 = sub_1000A67C0();

    v25 = sub_1000AC02C();

    [v24 setTitle:v25 forState:0];

    [*&v2[v17] addArrangedSubview:*&v2[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macRightButton]];
  }

  v26 = [objc_opt_self() separatorColor];
  v27 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView;
  v28 = *&v2[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView];
  [v28 setBackgroundColor:v26];

  [*&v2[v27] setHidden:(*(v11 + 96) & 1) == 0];
  v29 = [v2 view];
  if (!v29)
  {
    goto LABEL_40;
  }

  v30 = v29;
  v31 = sub_100005A24(0, &qword_1000F0F30, UIView_ptr);
  v91[3] = v31;
  v91[4] = &off_1000DD8B0;
  v91[0] = v30;
  v32 = [v2 view];
  if (!v32)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v89 = v31;
  v90 = &off_1000DD8B0;
  v88[0] = v32;
  v33 = [v2 view];
  if (!v33)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v86 = v31;
  v87 = &off_1000DD8B0;
  v85[0] = v33;
  [*&v2[v27] setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [*&v2[v27] heightAnchor];
  v35 = [v2 traitCollection];
  [v35 displayScale];
  v37 = v36;

  if (v37 <= 0.0)
  {
    v38 = [objc_opt_self() mainScreen];
    [v38 scale];
    v37 = v39;

    if (v37 <= 0.0)
    {
      v37 = 1.0;
    }
  }

  v40 = [v34 constraintEqualToConstant:1.0 / v37];

  [v40 setActive:1];
  v41 = [*&v2[v27] topAnchor];
  sub_1000058D0(v91, v31);
  v42 = sub_10007BF08();
  v43 = [v41 constraintEqualToAnchor:v42 constant:0.0];

  [v43 setActive:1];
  v44 = [*&v2[v27] leadingAnchor];
  v45 = v89;
  v46 = v90;
  sub_1000058D0(v88, v89);
  v47 = (v46[1])(v45, v46);
  v48 = [v44 constraintEqualToAnchor:v47 constant:16.0];

  [v48 setActive:1];
  v49 = [*&v2[v27] trailingAnchor];
  v50 = v86;
  v51 = v87;
  sub_1000058D0(v85, v86);
  v52 = (v51[2])(v50, v51);
  v53 = [v49 constraintEqualToAnchor:v52 constant:-16.0];

  [v53 setActive:1];
  sub_10000E738(v85);
  sub_10000E738(v88);
  sub_10000E738(v91);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1000B04D0;
  v55 = [*&v2[v17] leadingAnchor];
  v56 = [v2 view];
  if (!v56)
  {
    goto LABEL_43;
  }

  v57 = v56;
  v58 = [v56 leadingAnchor];

  v59 = [v55 constraintEqualToAnchor:v58 constant:16.0];
  *(v54 + 32) = v59;
  v60 = [*&v2[v17] topAnchor];
  v61 = [*&v2[v27] bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:16.0];

  *(v54 + 40) = v62;
  v63 = [*&v2[v17] trailingAnchor];
  v64 = [v2 view];
  if (!v64)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v65 = v64;
  v66 = [v64 trailingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66 constant:-16.0];
  *(v54 + 48) = v67;
  v68 = [*&v2[v17] bottomAnchor];
  v69 = [v2 view];
  if (!v69)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = objc_opt_self();
  v72 = [v70 bottomAnchor];

  v73 = [v68 constraintEqualToAnchor:v72 constant:-16.0];
  *(v54 + 56) = v73;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v71 activateConstraints:isa];

  v75 = *(v11 + 72);
  v76 = *(v11 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v75 & 0x2000000000000000) != 0)
  {
    v76 = HIBYTE(v75) & 0xF;
  }

  if (v76 && sub_10002CE60() == 2)
  {
    v77 = *(v11 + 48);
    v78 = *(v11 + 40) & 0xFFFFFFFFFFFFLL;
    if ((v77 & 0x2000000000000000) != 0)
    {
      v78 = HIBYTE(v77) & 0xF;
    }

    if (v78)
    {
      v79 = sub_1000A67D8();
      v80 = [v79 widthAnchor];

      v81 = sub_1000A67C0();
      v82 = [v81 widthAnchor];

      v83 = [v80 constraintEqualToAnchor:v82];
      [v83 setActive:1];
    }
  }
}

void *sub_1000A6360(uint64_t a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for MacFooterToolbarViewController();
  v2 = objc_msgSendSuper2(&v19, "keyCommands");
  if (v2)
  {
    v3 = v2;
    sub_100005A24(0, &qword_1000F3E88, UIKeyCommand_ptr);
    v4 = sub_1000AC19C();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v20 = v4;
  v5 = *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel];
  v6 = v5[9];
  v7 = v5[8] & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (v7)
  {
    if (sub_10002CE60() == 2)
    {
      v8 = sub_1000A67D8();
      v9 = [v8 isEnabled];

      if (v9)
      {
        sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000B04C0;
        *(inited + 32) = [objc_opt_self() keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"dismissButtonTapped"];
        sub_1000A5500(inited, sub_1000A7858);
      }
    }
  }

  v11 = v5[6];
  v12 = v5[5] & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  if (v12)
  {
    v13 = sub_1000A67C0();
    v14 = [v13 isEnabled];

    if (v14)
    {
      sub_10000413C(&unk_1000F06B0, qword_1000B0520);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1000B04C0;
      v16 = sub_1000AC02C();
      v17 = [objc_opt_self() keyCommandWithInput:v16 modifierFlags:0 action:"rightButtonTapped"];

      *(v15 + 32) = v17;
      sub_1000A5500(v15, sub_1000A7858);
    }
  }

  return v20;
}

id sub_1000A65BC()
{
  v1 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000A6634()
{
  v1 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAxis:0];
    [v4 setDistribution:0];
    [v4 setAlignment:5];
    [v4 setSpacing:12.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000A670C()
{
  v1 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton;
  v2 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton);
  }

  else
  {
    type metadata accessor for MacLeftButton();
    v4 = [swift_getObjCClassFromMetadata() buttonWithType:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addTarget:v0 action:"leftButtonTapped" forControlEvents:64];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000A67F0(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_opt_self() buttonWithType:1];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addTarget:v3 action:*a2 forControlEvents:64];
    [v9 setRole:a3];
    v10 = *(v3 + v4);
    *(v3 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

uint64_t sub_1000A6C08(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1000A6C54(char a1)
{
  v2 = sub_1000A670C();
  [v2 setEnabled:a1 & 1];

  v3 = sub_1000A67C0();
  [v3 setEnabled:a1 & 1];
}

id sub_1000A6DDC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000A6E38(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1000AC65C();
LABEL_9:
  result = sub_1000AC5BC();
  *v2 = result;
  return result;
}

uint64_t sub_1000A6ED8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3C20, &qword_1000F3C18, &unk_1000B52C0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3C18, &unk_1000B52C0);
            v9 = sub_1000A79F8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A7078(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EE0, &qword_1000F3ED8, &qword_1000B54F0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3ED8, &qword_1000B54F0);
            v9 = sub_1000A7A78(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IMBProposedDate(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A7208(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3ED0, &qword_1000F3EC8, &qword_1000B54E8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EC8, &qword_1000B54E8);
            v9 = sub_1000A7A78(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IMBProposedTimeslot(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A7398(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EC0, &qword_1000F3EB8, &qword_1000B54E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EB8, &qword_1000B54E0);
            v9 = sub_1000A7AF8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IMBListItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A7528(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EB0, &qword_1000F3EA8, &qword_1000B54D8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EA8, &qword_1000B54D8);
            v9 = sub_1000A7A78(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IMBListSection();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A76B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EF0, &qword_1000F3EE8, &qword_1000B54F8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EE8, &qword_1000B54F8);
            v9 = sub_1000A79F8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005A24(0, &qword_1000F1BF0, EKEvent_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A7858(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3E98, &qword_1000F3E90, &unk_1000B54B8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3E90, &unk_1000B54B8);
            v9 = sub_1000A7B80(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005A24(0, &qword_1000F3E88, UIKeyCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000A79F8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000AC5AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000A7DC0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000A7A78(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000AC5AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000A7DBC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000A7AF8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000AC5AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000A7B78;
  }

  __break(1u);
  return result;
}

void (*sub_1000A7B80(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000AC5AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000A7C00;
  }

  __break(1u);
  return result;
}

void sub_1000A7C08()
{
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macRightButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macDismissButton) = 0;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_1000A7CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F3EA0, &qword_1000B54C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7D28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7D68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000041E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A7DC4()
{
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000B08F0;
  v2 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
  v3 = [v2 leadingAnchor];
  v4 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];

  *(v1 + 32) = v6;
  v7 = [v2 topAnchor];
  v8 = [v4 topAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8 constant:10.0];

  *(v1 + 40) = v9;
  v10 = [v2 bottomAnchor];
  v11 = [v4 bottomAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor:v11 constant:-10.0];

  *(v1 + 48) = v12;
  v13 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
  v14 = [v13 leadingAnchor];
  v15 = [v2 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];

  *(v1 + 56) = v16;
  v17 = [v13 trailingAnchor];
  v18 = [v4 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v1 + 64) = v19;
  v20 = [v13 centerYAnchor];
  v21 = [v4 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v1 + 72) = v22;
  v23 = [v2 centerYAnchor];
  v24 = [v4 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v1 + 80) = v25;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall) = v1;

  v26 = [v2 leadingAnchor];
  v27 = [v13 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];

  v29 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint;
  v30 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint);
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint) = v28;

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000B08F0;
  v32 = [v13 centerYAnchor];
  v33 = [v4 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [v13 leadingAnchor];
  v36 = [v4 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  v38 = *(v0 + v29);
  *(v31 + 40) = v37;
  *(v31 + 48) = v38;
  v39 = v38;
  v40 = [v2 topAnchor];
  v41 = [v4 topAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:10.0];

  *(v31 + 56) = v42;
  v43 = [v2 bottomAnchor];
  v44 = [v4 bottomAnchor];
  v45 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:-10.0];

  *(v31 + 64) = v45;
  v46 = [v2 trailingAnchor];
  v47 = [v4 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v31 + 72) = v48;
  v49 = [v2 centerYAnchor];
  v50 = [v4 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v31 + 80) = v51;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall) = v31;

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1000B08E0;
  v53 = [v2 leadingAnchor];
  v54 = [v4 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v52 + 32) = v55;
  v56 = [v2 topAnchor];
  v57 = [v4 topAnchor];
  v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57 constant:10.0];

  *(v52 + 40) = v58;
  v59 = [v2 bottomAnchor];
  v60 = [v4 bottomAnchor];
  v61 = [v59 constraintLessThanOrEqualToAnchor:v60 constant:-10.0];

  *(v52 + 48) = v61;
  v62 = [v2 trailingAnchor];
  v63 = [v4 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v52 + 56) = v64;
  v65 = [v2 centerYAnchor];
  v66 = [v4 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v52 + 64) = v67;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints) = v52;
}

void sub_1000A8634()
{
  [v0 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_style];
  v2 = sub_1000AC06C();
  v4 = v3;
  if (v2 == sub_1000AC06C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1000AC7AC();
    v8 = v1;

    if (v7)
    {
    }

    else
    {
      v9 = sub_1000AC06C();
      v11 = v10;
      if (v9 != sub_1000AC06C() || v11 != v12)
      {
        sub_1000AC7AC();
      }
    }
  }
}

void sub_1000A8790()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor];
  [v0 setBackgroundColor:v1];
  [v0 setLayoutMargins:{0.0, 15.0, 0.0, 15.0}];
  if (!UIApp)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v4 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel];
  if (IsAccessibilityContentSizeCategory)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  [*&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel] setNumberOfLines:v5];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = [v6 fontWithDescriptor:v9 size:0.0];

  [v4 setFont:v10];
  [v4 setLineBreakMode:4];
  v11 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorWithSymbolicTraits:0x8000];

  if (!v14)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v15 = [v6 fontWithDescriptor:v14 size:0.0];

  [v11 setFont:v15];
  [v11 setLineBreakMode:4];
  v16 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor:v16];

  [v11 setNumberOfLines:0];
  v17 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageView];
  [v17 setContentMode:2];
  v18 = [v17 layer];
  [v18 setMasksToBounds:1];

  v19 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer];
  [v19 addSubview:v4];
  [v19 addSubview:v11];
  v20 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];
  [v20 setBackgroundColor:v1];
  v21 = sub_1000AC06C();
  v23 = v22;
  if (v21 == sub_1000AC06C() && v23 == v24)
  {
  }

  else
  {
    v25 = sub_1000AC7AC();

    if ((v25 & 1) == 0)
    {
      v26 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationView];
      [v26 addSubview:v19];
      [v26 addSubview:v17];
      v27 = [v17 layer];
      [v27 setCornerRadius:10.0];

      goto LABEL_13;
    }
  }

  v26 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationView];
  [v26 addSubview:v19];
  [v0 addSubview:v17];
LABEL_13:
  [v0 addSubview:v20];

  [v0 addSubview:v26];
}

void sub_1000A8C28()
{
  sub_1000A7DC4();
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v141 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageView];
  [v141 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v139 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationView];
  [v139 setTranslatesAutoresizingMaskIntoConstraints:0];
  v140 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];
  [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v0 widthAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];

  v6 = OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint;
  v7 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint] = v5;

  v8 = [v0 heightAnchor];
  v9 = [v8 constraintEqualToConstant:0.0];

  v10 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint] = v9;
  v11 = v9;

  LODWORD(v12) = 1148846080;
  [v11 setPriority:v12];

  v13 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000B04C0;
  v15 = *&v0[v6];
  *(v14 + 32) = v15;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  v16 = v15;
  isa = sub_1000AC18C().super.isa;

  v142 = v13;
  [v13 activateConstraints:isa];

  LODWORD(v18) = 1144750080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v18];
  v19 = [v2 topAnchor];
  v20 = [v1 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  v22 = [v2 leftAnchor];
  v23 = [v1 leftAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = [v2 rightAnchor];
  v26 = [v1 rightAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setActive:1];
  LODWORD(v28) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v28];
  v29 = [v3 firstBaselineAnchor];
  v30 = [v2 lastBaselineAnchor];
  v31 = [v29 constraintEqualToSystemSpacingBelowAnchor:v30 multiplier:1.0];

  [v31 setActive:1];
  v32 = [v3 leftAnchor];
  v33 = [v1 leftAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  [v34 setActive:1];
  v35 = [v3 rightAnchor];
  v36 = [v1 rightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  [v37 setActive:1];
  v38 = [v3 bottomAnchor];
  v39 = [v1 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  LODWORD(v41) = 1144750080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v41];
  v42 = [v3 heightAnchor];
  v43 = [v3 font];
  if (!v43)
  {
    __break(1u);
    return;
  }

  v44 = v43;
  [v43 lineHeight];
  v46 = v45;

  v47 = [v42 constraintGreaterThanOrEqualToConstant:v46];
  v48 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint] = v47;

  v49 = [v139 rightAnchor];
  v50 = [v0 layoutMarginsGuide];
  v51 = [v50 rightAnchor];

  v52 = [v49 constraintEqualToAnchor:v51];
  LODWORD(v53) = 1148829696;
  [v52 setPriority:v53];
  v54 = [v139 leftAnchor];
  v55 = [v0 layoutMarginsGuide];
  v56 = [v55 leftAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  [v57 setActive:1];

  v58 = [v139 bottomAnchor];
  v59 = [v0 bottomAnchor];
  if (qword_1000EEDB8 != -1)
  {
    swift_once();
  }

  v60 = -*&qword_1000FBEE8;
  v61 = [v58 constraintEqualToAnchor:v59 constant:{-*&qword_1000FBEE8, 1, 3}];

  [v61 setActive:1];
  v62 = swift_allocObject();
  *(v62 + 16) = v137;
  *(v62 + 32) = v52;
  v138 = v52;
  v63 = sub_1000AC18C().super.isa;

  [v13 activateConstraints:v63];

  v64 = [v140 heightAnchor];
  v65 = [v139 heightAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  [v66 setActive:1];
  v67 = [v140 leftAnchor];
  v68 = [v0 leftAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  [v69 setActive:1];
  v70 = [v140 rightAnchor];
  v71 = [v0 rightAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  [v72 setActive:1];
  v73 = [v140 bottomAnchor];
  v74 = [v0 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:v60];

  [v75 setActive:1];
  v76 = OBJC_IVAR____TtC8Business13IMBBubbleView_style;
  v77 = sub_1000AC06C();
  v79 = v78;
  if (v77 == sub_1000AC06C() && v79 == v80)
  {
    v81 = v141;
    v82 = v139;
    goto LABEL_7;
  }

  v83 = sub_1000AC7AC();

  v81 = v141;
  v82 = v139;
  if (v83)
  {
    goto LABEL_9;
  }

  v96 = sub_1000AC06C();
  v98 = v97;
  if (v96 == sub_1000AC06C() && v98 == v99)
  {
LABEL_7:

LABEL_9:
    v84 = [v82 topAnchor];
    v85 = [v0 topAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];

    [v86 setActive:1];
    v87 = [v81 heightAnchor];
    v88 = [v81 widthAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 multiplier:1.0];

    goto LABEL_10;
  }

  v100 = sub_1000AC7AC();

  if (v100)
  {
    goto LABEL_9;
  }

  v101 = [v141 topAnchor];
  v102 = [v0 topAnchor];
  v103 = [v101 constraintEqualToAnchor:v102];

  [v103 setActive:1];
  v104 = [v141 leftAnchor];
  v105 = [v0 leftAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];

  [v106 setActive:1];
  v107 = [v141 rightAnchor];
  v108 = [v0 rightAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  [v109 setActive:1];
  v110 = [v141 bottomAnchor];
  v111 = [v139 topAnchor];
  v112 = [v110 constraintEqualToAnchor:v111];

  [v112 setActive:1];
  v113 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
  v114 = [v141 heightAnchor];
  v115 = v114;
  v116 = 150.0;
  if (!v113)
  {
    v116 = 0.0;
  }

  v117 = [v114 constraintEqualToConstant:v116];

  v88 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint] = v117;
  v89 = v117;
LABEL_10:

  [v89 setActive:1];
  v90 = sub_1000AC06C();
  v92 = v91;
  if (v90 == sub_1000AC06C() && v92 == v93)
  {
  }

  else
  {
    v94 = sub_1000AC7AC();

    if ((v94 & 1) == 0)
    {

      v118 = sub_1000AC18C().super.isa;

      [v142 activateConstraints:v118];

      v95.super.isa = [v81 layer];
      [(objc_class *)v95.super.isa setCornerRadius:10.0];
      goto LABEL_22;
    }
  }

  v95.super.isa = sub_1000AC18C().super.isa;

  [v142 activateConstraints:v95.super.isa];
LABEL_22:

  v119 = *&v0[v76];
  v120 = sub_1000AC06C();
  v122 = v121;
  if (v120 == sub_1000AC06C() && v122 == v123)
  {

LABEL_27:
    p_attr = &stru_1000E5FF8.attr;
    v127 = [v81 widthAnchor];
    v128 = [v127 constraintEqualToConstant:60.0];
    goto LABEL_28;
  }

  v124 = sub_1000AC7AC();
  v125 = v119;

  if (v124)
  {

    goto LABEL_27;
  }

  v132 = sub_1000AC06C();
  v134 = v133;
  p_attr = (&stru_1000E5FF8 + 8);
  if (v132 == sub_1000AC06C() && v134 == v135)
  {

    goto LABEL_29;
  }

  v136 = sub_1000AC7AC();

  if (v136)
  {
    goto LABEL_29;
  }

  v127 = [v81 widthAnchor];
  v128 = [v127 constraintEqualToConstant:40.0];
LABEL_28:
  v129 = v128;

  v130 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint] = v129;

LABEL_29:
  v131 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint];
  [v131 p_attr[316]];
}

id sub_1000A9D9C()
{
  v1 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor];
  [v0 setBackgroundColor:v2];
  v3 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];

  return [v3 setBackgroundColor:v2];
}

uint64_t sub_1000A9E1C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1000AC4CC();
    v5 = v4;
    v6 = sub_1000AC51C();
    v8 = v7;
    v9 = sub_1000AC4DC();
    sub_1000AB50C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000AB50C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1000AC4AC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000AAB90(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000AB50C(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1000A9F38()
{
  v1 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &off_1000DE0A0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000A9FF0()
{
  if (UIApp)
  {
    v1 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v3 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
    if (IsAccessibilityContentSizeCategory)
    {
      if (v3)
      {

        v4 = sub_1000AC02C();

        v5 = sub_1000AC02C();
        v6 = sub_1000AC02C();
        v7 = [v4 stringByReplacingOccurrencesOfString:v5 withString:v6];

        if (!v7)
        {
          sub_1000AC06C();
          v7 = sub_1000AC02C();
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel);
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel);
      if (v3)
      {

        v7 = sub_1000AC02C();
      }

      else
      {
        v7 = 0;
      }
    }

    [v8 setText:v7];

    v9 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
    if (!v9 || (!*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title) ? (v10 = v9 == 0xE000000000000000) : (v10 = 0), v10 || (sub_1000AC7AC() & 1) != 0))
    {
      v11 = [v8 heightAnchor];
      v12 = [v11 constraintEqualToConstant:0.0];

      [v12 setActive:1];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000AA2B0()
{
  v1 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
  [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView) setImage:*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image)];
  if (*(v0 + v1))
  {
    v2 = sub_1000AC06C();
    v4 = v3;
    if (v2 == sub_1000AC06C() && v4 == v5)
    {
    }

    else
    {
      v7 = sub_1000AC7AC();

      if ((v7 & 1) == 0)
      {
        v8 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint);
        if (v8)
        {
          v9 = sub_1000AC06C();
          v11 = v10;
          if (v9 == sub_1000AC06C() && v11 == v12)
          {
            v25 = v8;

            v15 = 40.0;
          }

          else
          {
            v14 = sub_1000AC7AC();
            v25 = v8;

            v15 = 60.0;
            if (v14)
            {
              v15 = 40.0;
            }
          }

          [v25 setConstant:v15];
        }

        return;
      }
    }

    v23 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint);
    if (!v23)
    {
      return;
    }

    v24 = 150.0;
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint);
    if (v16)
    {
      [v16 setConstant:1.0];
    }

    [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint) setConstant:0.0];
    v17 = sub_1000AC06C();
    v19 = v18;
    if (v17 == sub_1000AC06C() && v19 == v20)
    {
    }

    else
    {
      v22 = sub_1000AC7AC();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v23 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint);
    v24 = 0.0;
  }

  [v23 setConstant:v24];
}

void sub_1000AA5C4(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for IMBBubbleView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint];
  v3 = *&v1[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  v4 = v2;
  v5 = [v3 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000AC06C();
    v9 = v8;

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 == 0xE000000000000000;
    }

    if (v10)
    {

      goto LABEL_10;
    }

    v11 = sub_1000AC7AC();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  v12 = [v3 text];
  if (!v12)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v13 = 1;
LABEL_11:
  [v4 setActive:v13];
}

uint64_t sub_1000AA754(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
  sub_100080BF0();
  v8 = sub_1000AC26C();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

id sub_1000AA8BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBBubbleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000AAB08(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1000AAB90(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000AC50C();
      sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
    if (sub_1000AC4EC() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1000AC4FC();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_1000AC3CC(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_1000AC3DC();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_1000AADB4()
{
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchDelay) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = BCBubbleViewStyleIcon;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style) = BCBubbleViewStyleIcon;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_type) = 0;
  v2 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel;
  v3 = objc_allocWithZone(UILabel);
  v4 = v1;
  *(v0 + v2) = [v3 init];
  v5 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  v9 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageView;
  *(v0 + v9) = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor;
  if (qword_1000EEDA8 != -1)
  {
    swift_once();
  }

  v11 = qword_1000FBED8;
  *(v0 + v10) = qword_1000FBED8;
  v12 = OBJC_IVAR____TtC8Business13IMBBubbleView_highlightColor;
  v13 = qword_1000EEDB0;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1000FBEE0;
  *(v0 + v12) = qword_1000FBEE0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelWidthConstraint) = 0;
  v16 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_touch;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints) = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewSpacingConstraint;
  v19 = objc_allocWithZone(NSLayoutConstraint);
  v20 = v15;
  *(v0 + v18) = [v19 init];
  v21 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerWidthConstraint;
  *(v0 + v21) = [objc_allocWithZone(NSLayoutConstraint) init];
  v22 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint;
  *(v0 + v22) = [objc_allocWithZone(NSLayoutConstraint) init];
  v23 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabelWidthConstraint;
  *(v0 + v23) = [objc_allocWithZone(NSLayoutConstraint) init];
  v24 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelWidthConstraint;
  *(v0 + v24) = [objc_allocWithZone(NSLayoutConstraint) init];
  v25 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint;
  *(v0 + v25) = [objc_allocWithZone(NSLayoutConstraint) init];
  v26 = OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint;
  *(v0 + v26) = [objc_allocWithZone(NSLayoutConstraint) init];
  v27 = OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint;
  *(v0 + v27) = [objc_allocWithZone(NSLayoutConstraint) init];
  v28 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle);
  *v29 = 0;
  v29[1] = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = 0;
  sub_1000AC63C();
  __break(1u);
}

id sub_1000AB154(uint64_t a1)
{
  v2 = sub_1000A9E1C(a1);
  if (v2)
  {
    v3 = [v1 window];
    [v2 locationInView:v3];
    v11 = v4;
    v12 = v5;

    *&v6 = v11;
    *(&v6 + 1) = v12;
  }

  else
  {
    v6 = 0uLL;
  }

  v7 = &v1[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v7 = v6;
  v7[16] = v2 == 0;
  v8 = *&v1[OBJC_IVAR____TtC8Business13IMBBubbleView_highlightColor];
  [v1 setBackgroundColor:v8];
  v9 = *&v1[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];

  return [v9 setBackgroundColor:v8];
}

void sub_1000AB238(uint64_t a1)
{
  v2 = sub_1000A9E1C(a1);
  if (v2)
  {
    v25 = v2;
    Strong = [v2 tapCount];
    if (!Strong)
    {
      goto LABEL_16;
    }

    v4 = (v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp);
    if ((*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp + 8) & 1) == 0)
    {
      v5 = *v4 + 2.0;
      Strong = [v25 timestamp];
      if (v6 < v5)
      {
        goto LABEL_16;
      }
    }

    Strong = [v25 timestamp];
    *v4 = v7;
    *(v4 + 8) = 0;
    v8 = (v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touch);
    if (*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touch + 16) == 1)
    {
      goto LABEL_16;
    }

    v10 = *v8;
    v9 = v8[1];
    v11 = [v1 window];
    [v25 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = sqrt((v10 - v13) * (v10 - v13) + (v9 - v15) * (v9 - v15));
    Strong = [v25 locationInView:v1];
    if (*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget) == 1)
    {
      v19 = v17;
      v20 = v18;
      [*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground) frame];
      v27.x = v19;
      v27.y = v20;
      Strong = CGRectContainsPoint(v28, v27);
      if (v16 < 15.0)
      {
        if ((Strong & 1) == 0)
        {
          v21 = v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v22 = *(v21 + 1);
            ObjectType = swift_getObjectType();
            (*(v22 + 16))(v1, &off_1000DE0A0, ObjectType, v22);
            Strong = swift_unknownObjectRelease();
          }

          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if (v16 < 15.0)
    {
LABEL_15:
      Strong = (*((swift_isaMask & *v1) + 0x3B8))();
    }

LABEL_16:
    (*((swift_isaMask & *v1) + 0x3A8))(Strong);

    return;
  }

  v24 = *((swift_isaMask & *v1) + 0x3A8);

  v24();
}

uint64_t sub_1000AB50C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}