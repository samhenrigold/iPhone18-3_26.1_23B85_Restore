void sub_100001EB8(uint64_t a1)
{
  sub_10000359C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100001F64(uint64_t a1)
{
  v3 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = qword_1000260F0;
  swift_beginAccess();
  sub_1000077FC(a1, v1 + v7);
  swift_endAccess();
  if (!(*(v4 + 48))(v1 + v7, 1, v3))
  {
    (*(v4 + 16))(v6, v1 + v7, v3);
    sub_1000161BC();
    (*(v4 + 8))(v6, v3);
    swift_getObjectType();
    sub_1000081A0(&qword_100025808, type metadata accessor for TTRIExtensionCreateReminderNotesCellContent, &unk_1000177C8);
    swift_unknownObjectRetain();
    sub_10001643C();
    v8 = sub_100015E7C();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + qword_100025590);

      sub_10001644C();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_100007DC8(a1, &qword_100025800, &qword_1000181B0);
}

uint64_t sub_10000218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v28 = sub_100015CFC();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100015CDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1000260F0;
  v16 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_100016A9C(31);

  v29 = 0xD00000000000001DLL;
  v30 = 0x8000000100019360;
  sub_100015CCC();
  v17 = sub_100015CBC();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  v31._countAndFlagsBits = v17;
  v31._object = v19;
  sub_1000168EC(v31);

  v20 = (v4 + qword_100025528);
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  v22 = v27;
  sub_100007E28(v27, v10, &qword_1000257F8, &unk_100017800);
  (*(v5 + 104))(v7, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v28);
  v23 = sub_100015E8C();
  sub_100007DC8(v22, &qword_1000257F8, &unk_100017800);
  return v23;
}

uint64_t sub_100002480@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRITableCellSelectionBehavior.notSelectable(_:);
  v3 = sub_10001627C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100002510(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *(a1 + qword_100025590);
  v9 = sub_1000168AC();
  [v8 setAccessibilityIdentifier:v9];

  sub_100015F1C();
  v10 = qword_1000260F0;
  swift_beginAccess();
  result = (*(v5 + 48))(v2 + v10, 1, v4);
  if (!result)
  {
    (*(v5 + 16))(v7, v2 + v10, v4);
    sub_1000161BC();
    (*(v5 + 8))(v7, v4);
    swift_getObjectType();
    sub_10001644C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000026C4(_BYTE *a1)
{
  v64 = a1;
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  __chkstk_darwin(ReminderView - 8);
  v52 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
  __chkstk_darwin(v4 - 8);
  v63 = &v52 - v5;
  v6 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v54 = &v52 - v7;
  v59 = sub_1000164AC();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000160AC();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v13 = *(ReminderNotesCellContentState - 1);
  __chkstk_darwin(ReminderNotesCellContentState);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v25 = sub_100004FAC(&qword_1000258E8, &qword_100017848);
  v26 = __chkstk_darwin(v25 - 8);
  v53 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v52 - v28;
  v65 = v1;
  sub_100015E9C();
  sub_100007E28(v24, v22, &qword_1000257F8, &unk_100017800);
  v30 = 1;
  v60 = *(v13 + 48);
  if (v60(v22, 1, ReminderNotesCellContentState) != 1)
  {
    sub_10000786C(v22, v15, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
    (*(v55 + 16))(v11, v15, v56);
    v31 = *&v15[ReminderNotesCellContentState[5]];
    (*(v57 + 16))(v58, &v15[ReminderNotesCellContentState[7]], v59);
    v32 = v31;
    sub_10001625C();
    sub_10000779C(v15, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
    v30 = 0;
  }

  sub_100007DC8(v24, &qword_1000257F8, &unk_100017800);
  v33 = sub_10001626C();
  (*(*(v33 - 8) + 56))(v29, v30, 1, v33);
  v34 = qword_1000260F0;
  v35 = v65;
  swift_beginAccess();
  v37 = v61;
  v36 = v62;
  if (!(*(v61 + 48))(v35 + v34, 1, v62))
  {
    v38 = v54;
    (*(v37 + 16))(v54, v35 + v34, v36);
    sub_1000161BC();
    (*(v37 + 8))(v38, v36);
    swift_getObjectType();
    sub_100007E28(v29, v53, &qword_1000258E8, &qword_100017848);
    sub_10001645C();
    swift_unknownObjectRelease();
  }

  sub_100015E9C();
  if (v60(v19, 1, ReminderNotesCellContentState))
  {
    sub_100007DC8(v19, &qword_1000257F8, &unk_100017800);
    ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    result = (*(*(ReminderNotesCellContent - 8) + 56))(v63, 1, 1, ReminderNotesCellContent);
    v41 = v64;
  }

  else
  {
    v42 = v63;
    sub_100007E28(&v19[ReminderNotesCellContentState[8]], v63, &qword_1000256A0, &unk_1000176F0);
    sub_100007DC8(v19, &qword_1000257F8, &unk_100017800);
    v43 = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    result = (*(*(v43 - 8) + 48))(v42, 1, v43);
    v41 = v64;
    if (result != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = v52;
        sub_10000786C(v42, v52, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
        sub_100003168(v50);
        result = sub_10000779C(v50, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
      }

      else
      {
        v51 = *v42;
        sub_100002FD8(*v42, *(v42 + 8));
      }

LABEL_11:
      sub_10000339C(result);
      return sub_100007DC8(v29, &qword_1000258E8, &qword_100017848);
    }
  }

  if (v41[qword_1000255B0 + 8] == 2 && !*&v41[qword_1000255B0])
  {
    goto LABEL_11;
  }

  v44 = sub_1000160EC();
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_100007D64;
  *(v46 + 24) = v45;
  aBlock[4] = sub_100007DA8;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012278;
  aBlock[3] = &unk_1000213C0;
  v47 = _Block_copy(aBlock);
  v48 = v41;

  [v44 performBatchUpdates:v47];

  _Block_release(v47);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002FD8(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1000160EC();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2 & 1;
  *(v7 + 40) = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100007ED4;
  *(v8 + 24) = v7;
  v14[4] = sub_10000828C;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100012278;
  v14[3] = &unk_100021438;
  v9 = _Block_copy(v14);
  v10 = v2;
  v11 = a1;

  [v6 performBatchUpdates:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003168(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v5 = *(ReminderView - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(ReminderView - 8);
  v7 = sub_1000160EC();
  sub_1000078D4(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_10000786C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100007FFC;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10000828C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012278;
  aBlock[3] = &unk_1000214B0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v7 performBatchUpdates:v11];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_10000339C(uint64_t a1)
{
  v1 = sub_100015E7C();
  if (!v1)
  {
    v4 = 0;
    v10 = sub_100015E7C();
    if (!v10)
    {
      return;
    }

    goto LABEL_7;
  }

  v2 = v1;
  v3 = *(v1 + qword_100025590);

  v4 = [v3 attributedText];
  if (v4)
  {
    v5 = [v4 string];

    v6 = sub_1000168BC();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v4 = v9 != 0;
  }

  v10 = sub_100015E7C();
  if (v10)
  {
LABEL_7:
    v11 = v10;
    v12 = *(v10 + qword_100025598);

    [v12 setHidden:v4];
  }
}

void sub_10000359C(uint64_t a1)
{
  if (!qword_100025568)
  {
    sub_100003600(&unk_100025570, &unk_100017CF0);
    v1 = sub_100016A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_100025568);
    }
  }
}

uint64_t sub_100003600(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1000036E0(uint64_t a1)
{
  result = sub_100015E7C();
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_100003748(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[qword_1000255B0];
  if (v1[qword_1000255B0 + 8])
  {
    if (v1[qword_1000255B0 + 8] == 1)
    {
      v4 = v3;
      v5 = sub_1000160EC();
      [v5 setAxis:1];

      v6 = sub_1000160EC();
      [v6 setSpacing:8.0];

      v7 = *&v2[qword_1000255A8];
      [v7 setHidden:0];
      sub_100004FAC(&qword_1000258A8, &qword_100017820);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100017560;
      *(v8 + 32) = v4;
      sub_100007C80(0, &qword_1000258B0, UIView_ptr);
      v9 = v4;
      isa = sub_10001691C().super.isa;

      [v7 setArrangedSubviews:isa];

      [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
      [v7 setVerticalAlignment:0];
      [v7 setHorizontalAlignment:1];
    }

    else
    {
      v16 = sub_1000160EC();
      [v16 setAxis:0];

      v7 = *&v2[qword_1000255A8];
      [v7 setHidden:1];
      sub_100007C80(0, &qword_1000258B0, UIView_ptr);
      v9 = sub_10001691C().super.isa;
      [v7 setArrangedSubviews:v9];
    }
  }

  else
  {
    v11 = v3;
    v12 = sub_1000160EC();
    [v12 setAxis:0];

    v13 = sub_1000160EC();
    [v13 setSpacing:12.0];

    v7 = *&v2[qword_1000255A8];
    [v7 setHidden:0];
    sub_100004FAC(&qword_1000258A8, &qword_100017820);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100017560;
    *(v14 + 32) = v11;
    sub_100007C80(0, &qword_1000258B0, UIView_ptr);
    v9 = v11;
    v15 = sub_10001691C().super.isa;

    [v7 setArrangedSubviews:v15];

    [v7 setLayoutMargins:{15.0, 0.0, 0.0, 0.0}];
    [v7 setVerticalAlignment:1];
    [v7 setHorizontalAlignment:0];
  }

  sub_100004FAC(&qword_1000258C8, &qword_100017838);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100017570;
  v18 = *&v2[qword_100025590];
  *(v17 + 56) = sub_10001608C();
  *(v17 + 32) = v18;
  v19 = v18;
  if ([v7 isHidden])
  {
    v20 = 0;
    v21 = 0;
    *(v17 + 72) = 0;
    *(v17 + 80) = 0;
  }

  else
  {
    v21 = sub_100007C80(0, &qword_1000258D0, NUIContainerBoxView_ptr);
    v20 = v7;
  }

  *(v17 + 64) = v20;
  *(v17 + 88) = v21;
  sub_100004FAC(&qword_1000258D8, &qword_100017840);
  sub_100007CC8();
  sub_10001690C();

  v22 = sub_10001691C().super.isa;

  [v2 setAccessibilityElements:v22];
}

void sub_100003BA8(uint64_t a1, void *a2, char a3)
{
  if (*(a1 + qword_1000255B0 + 8))
  {
    v5 = sub_100003C8C(a1);
  }

  else
  {
    v5 = *(a1 + qword_1000255B0);
  }

  v9 = v5;
  if (a3)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = a2;
  [v9 setImage:a2];
  v8 = [v9 layer];
  [v8 setCornerRadius:v6];
}

id sub_100003C8C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setContentMode:2];
  [v2 setClipsToBounds:1];
  v3 = [v2 layer];

  [v3 setCornerCurve:kCACornerCurveContinuous];
  v4 = a1 + qword_1000255B0;
  v5 = *(a1 + qword_1000255B0);
  *v4 = v2;
  *(v4 + 8) = 0;
  v6 = v2;

  sub_100003748(v7);
  return v6;
}

void sub_100003D68(uint64_t a1, void **a2)
{
  if (*(a1 + qword_1000255B0 + 8) == 1)
  {
    v3 = *(a1 + qword_1000255B0);
  }

  else
  {
    v3 = sub_10000793C(a2, a1);
  }

  v7 = v3;
  v4 = *(a2 + *(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) + 24));
  v5 = v7;
  if (v4)
  {
    v6 = v4;
    sub_10001646C();

    v5 = v7;
  }
}

char *sub_100003E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v73 = a2;
  v84 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10001624C();
  __chkstk_darwin(v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v3;
  v7 = &v3[qword_1000255B0];
  *v7 = 0;
  v7[8] = 2;
  *&v3[qword_1000255B8] = 0;
  (*(v8 + 104))(v6, enum case for TTRHashtagTokenTextInteraction.TokenEditingBehavior.inline(_:));
  v9 = objc_allocWithZone(sub_10001608C());
  v10 = sub_10001607C();
  [v10 setScrollEnabled:{1, v73}];
  [v10 setShowsVerticalScrollIndicator:1];
  sub_100007C80(0, &qword_1000258A0, UIFont_ptr);
  v11 = v10;
  v12 = sub_100016A1C();
  [v11 setFont:v12];

  [v11 setAdjustsFontForContentSizeCategory:1];
  v13 = objc_opt_self();
  v14 = [v13 labelColor];
  [v11 setTextColor:v14];

  [v11 setEditable:1];
  v15 = v11;
  [v15 setBackgroundColor:0];
  LODWORD(v16) = 1132068864;
  v78 = v15;
  [v15 setContentHuggingPriority:0 forAxis:v16];
  v17 = [objc_allocWithZone(UILabel) init];
  [v17 setNumberOfLines:0];
  v18 = sub_100016A1C();
  [v17 setFont:v18];

  [v17 setAdjustsFontForContentSizeCategory:1];
  [v17 setTextAlignment:4];
  [v17 setUserInteractionEnabled:0];
  v19 = [v13 placeholderTextColor];
  [v17 setTextColor:v19];

  v86._countAndFlagsBits = 0x7365746F4ELL;
  v87._object = 0x8000000100019480;
  v86._object = 0xE500000000000000;
  v87._countAndFlagsBits = 0xD000000000000033;
  sub_100015E0C(v86, v87);
  v20 = sub_1000168AC();

  [v17 setText:v20];

  v80 = sub_100004FAC(&qword_1000258A8, &qword_100017820);
  v21 = swift_allocObject();
  v79 = xmmword_100017580;
  *(v21 + 16) = xmmword_100017580;
  *(v21 + 32) = v15;
  *(v21 + 40) = v17;
  v22 = objc_allocWithZone(NUIContainerBoxView);
  v23 = sub_100007C80(0, &qword_1000258B0, UIView_ptr);
  v24 = v17;
  v76 = v23;
  v77 = v24;
  isa = sub_10001691C().super.isa;

  v26 = [v22 initWithArrangedSubviews:isa];

  [v26 setHorizontalAlignment:0];
  [v26 setVerticalAlignment:0];
  v27 = v26;
  v74 = v27;
  [v27 setAlignment:1 forView:v24 inAxis:1];
  v28 = objc_allocWithZone(NUIContainerBoxView);
  v29 = sub_10001691C().super.isa;
  v30 = [v28 initWithArrangedSubviews:v29];

  v31 = v30;
  v75 = v31;
  [v31 setLayoutMarginsRelativeArrangement:1];
  sub_100004FAC(&qword_1000258B8, &qword_100017828);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100017570;
  *(v32 + 32) = v27;
  *(v32 + 40) = 1132068864;
  *(v32 + 48) = v31;
  *(v32 + 56) = 1144750080;
  sub_100004FAC(&qword_1000258C0, &qword_100017830);
  v33 = sub_1000160FC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100017590;
  v38 = (v37 + v36);
  *v38 = 0;
  v39 = enum case for TTRIViewContentPriorityType.hugging(_:);
  v40 = *(v34 + 104);
  v40(v38, enum case for TTRIViewContentPriorityType.hugging(_:), v33);
  *(v38 + v35) = 1;
  v40(v38 + v35, v39, v33);
  *(v38 + 2 * v35) = 0;
  v41 = enum case for TTRIViewContentPriorityType.compressionResistance(_:);
  v40(v38 + 2 * v35, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v33);
  *(v38 + 3 * v35) = 1;
  v42 = v38 + 3 * v35;
  v43 = v77;
  v44 = v41;
  v45 = v78;
  v40(v42, v44, v33);
  v46 = v81;
  v47 = v74;
  v48 = v75;
  v49 = v47;
  v50 = v48;
  sub_100016A2C();

  [v49 setDebugBoundingBoxesEnabled:0];

  v51 = v82;
  [v50 setDebugBoundingBoxesEnabled:0];
  *&v51[qword_100025590] = v45;
  *&v51[qword_100025598] = v43;
  *&v51[qword_1000255A0] = v49;
  *&v51[qword_1000255A8] = v50;
  v52 = v45;
  v53 = v43;
  v54 = v49;
  v55 = v50;
  if (v46)
  {
    v56 = sub_1000168AC();
  }

  else
  {
    v56 = 0;
  }

  v85.receiver = v51;
  v85.super_class = ObjectType;
  v57 = objc_msgSendSuper2(&v85, "initWithStyle:reuseIdentifier:", v84, v56);

  v58 = v57;
  v59 = sub_1000160EC();
  [v59 setEdgesPreservingSuperviewLayoutMargins:10];

  v60 = sub_1000160EC();
  [v60 layoutMargins];
  v62 = v61;
  v64 = v63;

  v65 = sub_1000160EC();
  [v65 setLayoutMargins:{12.0, v62, 12.0, v64}];

  v66 = v58;
  v67 = sub_1000160EC();

  v68 = swift_allocObject();
  *(v68 + 16) = v79;
  *(v68 + 32) = v49;
  *(v68 + 40) = v50;
  v69 = sub_10001691C().super.isa;

  [v67 setArrangedSubviews:v69];

  v70 = sub_100004690();
  [v49 setDelegate:v70];

  [v50 setDelegate:*&v66[qword_1000255B8]];
  [v66 setIsAccessibilityElement:0];

  sub_100003748(v71);
  return v66;
}

id sub_100004690()
{
  v1 = qword_1000255B8;
  v2 = *(v0 + qword_1000255B8);
  if (v2)
  {
    v3 = *(v0 + qword_1000255B8);
  }

  else
  {
    v4 = type metadata accessor for CustomSizeMeasurer();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, "init");
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_100004744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_1000168BC();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100003E08(a3, a4, v6);
}

void sub_100004790(uint64_t a1)
{
  v1 = a1 + qword_1000255B0;
  *v1 = 0;
  *(v1 + 8) = 2;
  *(a1 + qword_1000255B8) = 0;
  sub_100016AEC();
  __break(1u);
}

id sub_10000486C@<X0>(void *a1@<X8>)
{
  v6 = *(v1 + qword_100025590);
  *a1 = v6;
  v3 = enum case for TTRITableCellSeparatorInsetType.leadingOfDescendant(_:);
  v4 = sub_1000162BC();
  (*(*(v4 - 8) + 104))(a1, v3, v4);

  return v6;
}

void sub_100004904()
{
  v1 = *(v0 + qword_1000255B8);
}

void sub_100004988(uint64_t a1)
{
  v2 = *(a1 + qword_1000255B8);
}

id sub_100004ACC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderNotesTableCellC6LayoutOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t initializeWithTake for TTRIExtensionCreateReminderViewModel.Image(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t assignWithTake for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100004C94(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100004CB0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_100004CD8(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = (v21 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000160AC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = *(a2 + v8);
    *(a1 + v8) = v10;
    *(a1 + v9) = *(a2 + v9);
    v11 = a3[7];
    v12 = sub_1000164AC();
    v13 = *(*(v12 - 8) + 16);
    v14 = v10;
    v13(a1 + v11, a2 + v11, v12);
    v15 = a3[8];
    v16 = a1 + v15;
    v17 = (a2 + v15);
    ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    v19 = *(ReminderNotesCellContent - 8);
    if ((*(v19 + 48))(v17, 1, ReminderNotesCellContent))
    {
      v20 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *v17;
        *v16 = *v17;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v24 = *(ReminderView + 20);
        v25 = sub_100015C8C();
        v34 = *(*(v25 - 8) + 16);
        v26 = v22;
        v34(&v16[v24], v17 + v24, v25);
        v27 = *(ReminderView + 24);
        v28 = *(v17 + v27);
        *&v16[v27] = v28;
        v29 = v28;
      }

      else
      {
        v30 = *v17;
        v31 = *(v17 + 8);
        v32 = v30;
        *v16 = v30;
        v16[8] = v31;
      }

      swift_storeEnumTagMultiPayload();
      (*(v19 + 56))(v16, 0, 1, ReminderNotesCellContent);
    }
  }

  return a1;
}

uint64_t sub_100004FAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100004FF4(uint64_t a1, int *a2)
{
  v4 = sub_1000160AC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[7];
  v6 = sub_1000164AC();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = (a1 + a2[8]);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  if (!(*(*(ReminderNotesCellContent - 8) + 48))(v7, 1, ReminderNotesCellContent))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v10 = *(ReminderView + 20);
      v11 = sub_100015C8C();
      (*(*(v11 - 8) + 8))(v7 + v10, v11);
      v12 = *(v7 + *(ReminderView + 24));
    }

    else
    {
      v12 = *v7;
    }
  }
}

uint64_t sub_1000051A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  *(a1 + v8) = *(a2 + v8);
  v10 = a3[7];
  v11 = sub_1000164AC();
  v12 = *(*(v11 - 8) + 16);
  v13 = v9;
  v12(a1 + v10, a2 + v10, v11);
  v14 = a3[8];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v18 = *(ReminderNotesCellContent - 8);
  if ((*(v18 + 48))(v16, 1, ReminderNotesCellContent))
  {
    v19 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v16;
      *v15 = *v16;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v22 = *(ReminderView + 20);
      v23 = sub_100015C8C();
      v32 = *(*(v23 - 8) + 16);
      v24 = v20;
      v32(&v15[v22], v16 + v22, v23);
      v25 = *(ReminderView + 24);
      v26 = *(v16 + v25);
      *&v15[v25] = v26;
      v27 = v26;
    }

    else
    {
      v28 = *v16;
      v29 = *(v16 + 8);
      v30 = v28;
      *v15 = v28;
      v15[8] = v29;
    }

    swift_storeEnumTagMultiPayload();
    (*(v18 + 56))(v15, 0, 1, ReminderNotesCellContent);
  }

  return a1;
}

uint64_t sub_100005408(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  v11 = a3[7];
  v12 = sub_1000164AC();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  v13 = a3[8];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v17 = *(ReminderNotesCellContent - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, ReminderNotesCellContent);
  v20 = v18(v15, 1, ReminderNotesCellContent);
  if (v19)
  {
    if (!v20)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *v15;
        *v14 = *v15;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v23 = *(ReminderView + 20);
        v24 = sub_100015C8C();
        v46 = *(*(v24 - 8) + 16);
        v25 = v21;
        v46(&v14[v23], &v15[v23], v24);
        v26 = *(ReminderView + 24);
        v27 = *&v15[v26];
        *&v14[v26] = v27;
        v28 = v27;
      }

      else
      {
        v39 = *v15;
        v40 = v15[8];
        v41 = v39;
        *v14 = v39;
        v14[8] = v40;
      }

      swift_storeEnumTagMultiPayload();
      (*(v17 + 56))(v14, 0, 1, ReminderNotesCellContent);
      return a1;
    }

LABEL_7:
    v29 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    memcpy(v14, v15, *(*(v29 - 8) + 64));
    return a1;
  }

  if (v20)
  {
    sub_10000779C(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_10000779C(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v15;
      *v14 = *v15;
      v31 = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v32 = *(v31 + 20);
      v33 = sub_100015C8C();
      v34 = *(*(v33 - 8) + 16);
      v35 = v30;
      v34(&v14[v32], &v15[v32], v33);
      v36 = *(v31 + 24);
      v37 = *&v15[v36];
      *&v14[v36] = v37;
      v38 = v37;
    }

    else
    {
      v43 = *v15;
      v44 = v15[8];
      v45 = v43;
      *v14 = v43;
      v14[8] = v44;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10000579C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = sub_1000164AC();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v14 = *(ReminderNotesCellContent - 8);
  if ((*(v14 + 48))(v12, 1, ReminderNotesCellContent))
  {
    v15 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    memcpy(v11, v12, *(*(v15 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v11 = *v12;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v17 = *(ReminderView + 20);
      v18 = sub_100015C8C();
      (*(*(v18 - 8) + 32))(v11 + v17, v12 + v17, v18);
      *(v11 + *(ReminderView + 24)) = *(v12 + *(ReminderView + 24));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(v14 + 64));
    }

    (*(v14 + 56))(v11, 0, 1, ReminderNotesCellContent);
  }

  return a1;
}

uint64_t sub_1000059C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = sub_1000164AC();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v15 = *(ReminderNotesCellContent - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, ReminderNotesCellContent);
  v18 = v16(v13, 1, ReminderNotesCellContent);
  if (!v17)
  {
    if (!v18)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v12 = *v13;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v24 = *(ReminderView + 20);
        v25 = sub_100015C8C();
        (*(*(v25 - 8) + 32))(&v12[v24], &v13[v24], v25);
        *&v12[*(ReminderView + 24)] = *&v13[*(ReminderView + 24)];
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v22 = *(v15 + 64);
      goto LABEL_8;
    }

    sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
LABEL_7:
    v22 = *(*(sub_100004FAC(&qword_1000256A0, &unk_1000176F0) - 8) + 64);
LABEL_8:
    memcpy(v12, v13, v22);
    return a1;
  }

  if (v18)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v12 = *v13;
    v19 = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v20 = *(v19 + 20);
    v21 = sub_100015C8C();
    (*(*(v21 - 8) + 32))(&v12[v20], &v13[v20], v21);
    *&v12[*(v19 + 24)] = *&v13[*(v19 + 24)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v12, v13, *(v15 + 64));
  }

  (*(v15 + 56))(v12, 0, 1, ReminderNotesCellContent);
  return a1;
}

uint64_t sub_100005D04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1000164AC();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_100005EA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000160AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = sub_1000164AC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100006044(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000607C(uint64_t a1)
{
  sub_1000160AC();
  if (v1 <= 0x3F)
  {
    sub_1000164AC();
    if (v2 <= 0x3F)
    {
      sub_100006194(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_100006194(uint64_t a1)
{
  if (!qword_100025710)
  {
    type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(255);
    v1 = sub_100016A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_100025710);
    }
  }
}

char *sub_1000061EC(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v8 = *(ReminderView + 20);
      v9 = sub_100015C8C();
      v10 = *(*(v9 - 8) + 16);
      v11 = v6;
      v10(&a1[v8], a2 + v8, v9);
      v12 = *(ReminderView + 24);
      v13 = *(a2 + v12);
      *&a1[v12] = v13;
      v14 = v13;
    }

    else
    {
      v16 = *a2;
      v17 = *(a2 + 8);
      v18 = v16;
      *a1 = v16;
      a1[8] = v17;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_100006340(id *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v4 = *(ReminderView + 20);
    v5 = sub_100015C8C();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
    v6 = *(a1 + *(ReminderView + 24));
  }

  else
  {
    v6 = *a1;
  }
}

uint64_t sub_100006404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    v8 = sub_100015C8C();
    v9 = *(*(v8 - 8) + 16);
    v10 = v5;
    v9(a1 + v7, a2 + v7, v8);
    v11 = *(ReminderView + 24);
    v12 = *(a2 + v11);
    *(a1 + v11) = v12;
    v13 = v12;
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = v14;
    *a1 = v14;
    *(a1 + 8) = v15;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100006504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10000779C(a1, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v7 = *(ReminderView + 20);
      v8 = sub_100015C8C();
      v9 = *(*(v8 - 8) + 16);
      v10 = v5;
      v9(a1 + v7, a2 + v7, v8);
      v11 = *(ReminderView + 24);
      v12 = *(a2 + v11);
      *(a1 + v11) = v12;
      v13 = v12;
    }

    else
    {
      v14 = *a2;
      v15 = *(a2 + 8);
      v16 = v14;
      *a1 = v14;
      *(a1 + 8) = v15;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_100006628(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    v8 = sub_100015C8C();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    *&a1[*(ReminderView + 24)] = *&a2[*(ReminderView + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v10 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v10);
  }
}

char *sub_100006728(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10000779C(a1, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    v8 = sub_100015C8C();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    *&a1[*(ReminderView + 24)] = *&a2[*(ReminderView + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1000068B0(uint64_t a1)
{
  result = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_10000694C(uint64_t a1, uint64_t a2)
{
  result = sub_10001694C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_1000069A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001695C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

_DWORD *sub_100006A20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_100006A30@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100006A3C(uint64_t a1)
{
  sub_1000081A0(&qword_100025918, type metadata accessor for UILayoutPriority, &unk_100017950);
  sub_1000081A0(&unk_100025920, type metadata accessor for UILayoutPriority, &unk_1000178F0);
  return sub_100016B1C();
}

void sub_100006B00()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_100016B6C(LODWORD(v1));
}

uint64_t sub_100006B3C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_100006B6C(uint64_t a1, uint64_t a2)
{
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  __chkstk_darwin(ReminderView);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v8 = __chkstk_darwin(ReminderNotesCellContent);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = sub_100004FAC(&qword_100025820, &qword_100017818);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v33 - v15;
  v17 = &v33 + *(v14 + 56) - v15;
  sub_1000078D4(a1, &v33 - v15, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_1000078D4(a2, v17, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000078D4(v16, v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    v24 = *v12;
    v25 = v12[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_12;
    }

    v26 = *v17;
    if (v25)
    {
      if (v17[8])
      {
        if (!v24)
        {
          if (!v26)
          {

            goto LABEL_34;
          }

          v30 = 0;
          goto LABEL_23;
        }

        if (v26)
        {
          sub_100007C80(0, &qword_100025838, UIImage_ptr);
          v27 = v26;
          v28 = v24;
          v29 = sub_100016A3C();

          if (v29)
          {
            goto LABEL_34;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v30 = v24;
    }

    else
    {
      if ((v17[8] & 1) == 0)
      {
        sub_100007C80(0, &qword_100025828, NSObject_ptr);
        v31 = sub_100016A3C();

        if (v31)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v30 = v24;
    }

LABEL_23:

LABEL_28:
    sub_10000779C(v16, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    return 0;
  }

  sub_1000078D4(v16, v10, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000786C(v17, v6, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_100007C80(0, &qword_100025828, NSObject_ptr);
    if (sub_100016A3C() & 1) != 0 && (sub_100015C6C())
    {
      v18 = *(ReminderView + 24);
      v19 = *&v10[v18];
      v20 = *&v6[v18];
      if (v19)
      {
        if (v20)
        {
          sub_100007C80(0, &qword_100025830, LPLinkMetadata_ptr);
          v21 = v20;
          v22 = v19;
          v23 = sub_100016A3C();

          if (v23)
          {
            goto LABEL_8;
          }
        }
      }

      else if (!v20)
      {
LABEL_8:
        sub_10000779C(v6, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
        sub_10000779C(v10, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
LABEL_34:
        sub_10000779C(v16, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
        return 1;
      }
    }

    sub_10000779C(v6, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_10000779C(v10, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    goto LABEL_28;
  }

  sub_10000779C(v10, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
LABEL_12:
  sub_100007DC8(v16, &qword_100025820, &qword_100017818);
  return 0;
}

BOOL sub_100007058(uint64_t a1, uint64_t a2)
{
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v5 = *(ReminderNotesCellContent - 8);
  __chkstk_darwin(ReminderNotesCellContent);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100004FAC(&qword_100025810, &qword_100017810);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  if ((sub_10001609C() & 1) == 0)
  {
    return 0;
  }

  v28 = v5;
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v15 = ReminderNotesCellContentState[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    v27 = v7;
    sub_100007C80(0, &qword_100025818, NSAttributedString_ptr);
    v18 = v17;
    v19 = v16;
    v20 = sub_100016A3C();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v27 = v7;
    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + ReminderNotesCellContentState[6]) != *(a2 + ReminderNotesCellContentState[6]) || (sub_10001649C() & 1) == 0)
  {
    return 0;
  }

  v21 = ReminderNotesCellContentState[8];
  v22 = *(v11 + 48);
  sub_100007E28(a1 + v21, v13, &qword_1000256A0, &unk_1000176F0);
  sub_100007E28(a2 + v21, &v13[v22], &qword_1000256A0, &unk_1000176F0);
  v23 = *(v28 + 48);
  if (v23(v13, 1, ReminderNotesCellContent) == 1)
  {
    if (v23(&v13[v22], 1, ReminderNotesCellContent) == 1)
    {
      sub_100007DC8(v13, &qword_1000256A0, &unk_1000176F0);
      return 1;
    }

    goto LABEL_14;
  }

  sub_100007E28(v13, v10, &qword_1000256A0, &unk_1000176F0);
  if (v23(&v13[v22], 1, ReminderNotesCellContent) == 1)
  {
    sub_10000779C(v10, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
LABEL_14:
    sub_100007DC8(v13, &qword_100025810, &qword_100017810);
    return 0;
  }

  v25 = v27;
  sub_10000786C(&v13[v22], v27, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  v26 = sub_100006B6C(v10, v25);
  sub_10000779C(v25, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_10000779C(v10, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_100007DC8(v13, &qword_1000256A0, &unk_1000176F0);
  return (v26 & 1) != 0;
}

uint64_t sub_100007408(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v9 = *(ReminderNotesCellContentState - 8);
  __chkstk_darwin(ReminderNotesCellContentState);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001636C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000339C(v14);
  (*(v13 + 16))(v16, a1, v12);
  result = (*(v13 + 88))(v16, v12);
  if (result != enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:) && result != enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:) && result != enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
  {
    if (result == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      sub_100015E9C();
      if ((*(v9 + 48))(v7, 1, ReminderNotesCellContentState) == 1)
      {
        return sub_100007DC8(v7, &qword_1000257F8, &unk_100017800);
      }

      else
      {
        sub_10000786C(v7, v11, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
        v20 = sub_100015E7C();
        if (!v20 || (v21 = v20, v22 = *(v20 + qword_100025590), v21, v23 = [v22 attributedText], v22, !v23))
        {
          v23 = [objc_allocWithZone(NSAttributedString) init];
        }

        v24 = *(ReminderNotesCellContentState + 20);

        *&v11[v24] = v23;
        sub_1000078D4(v11, v5, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
        (*(v9 + 56))(v5, 0, 1, ReminderNotesCellContentState);
        sub_100015E6C();
        sub_100007DC8(v5, &qword_1000257F8, &unk_100017800);
        return sub_10000779C(v11, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
      }
    }

    else
    {
      result = sub_100016B2C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000779C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000077FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004FAC(&qword_100025800, &qword_1000181B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000786C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000078D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10000793C(void **a1, uint64_t a2)
{
  v4 = sub_100015C8C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  (*(v5 + 16))(v7, a1 + *(ReminderView + 20), v4);
  v9 = *a1;
  v10 = objc_allocWithZone(sub_10001648C());
  v11 = v9;
  v12 = sub_10001647C();
  [v12 _setApplyCornerRadius:1];
  [v12 _setPreferredSizeClass:8];
  v13 = v12;
  v14 = [v13 layer];
  [v14 setCornerRadius:16.0];

  v15 = [v13 layer];
  [v15 setMasksToBounds:1];

  [v13 setUserInteractionEnabled:0];
  v16 = a2 + qword_1000255B0;
  v17 = *(a2 + qword_1000255B0);
  *v16 = v13;
  *(v16 + 8) = 1;
  v18 = v13;

  sub_100003748(v19);
  return v18;
}

void sub_100007B0C(void *a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_100016A0C();
    return;
  }

  v7 = Strong;
  if (*(Strong + qword_100025590) == a1)
  {
    [a1 effectiveLayoutSizeFittingSize:{a2, a3}];
    v10 = v7[qword_1000255B0 + 8];
    v11 = *&v7[qword_1000255B0];

    if (v10)
    {
      if (v10 == 1)
      {
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = *(Strong + qword_1000255B0);
    if (*(Strong + qword_1000255B0 + 8))
    {
      if (*(Strong + qword_1000255B0 + 8) == 1 && v8 == a1)
      {
        [a1 effectiveLayoutSizeFittingSize:{a2, 120.0}];
LABEL_16:

        return;
      }

LABEL_15:
      sub_100016A0C();
      goto LABEL_16;
    }

    if (v8 != a1)
    {
      goto LABEL_15;
    }

    [a1 effectiveLayoutSizeFittingSize:{a2, a3}];
  }
}

uint64_t sub_100007C80(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100007CC8()
{
  result = qword_1000258E0;
  if (!qword_1000258E0)
  {
    sub_100003600(&qword_1000258D8, &qword_100017840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258E0);
  }

  return result;
}

uint64_t sub_100007D2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100007D64()
{
  v1 = *(v0 + 16) + qword_1000255B0;
  v2 = *v1;
  *v1 = 0;
  *(v1 + 8) = 2;

  sub_100003748(v3);
}

uint64_t sub_100007DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004FAC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004FAC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007E90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007EF4()
{
  v1 = (type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);
  v6 = v1[7];
  v7 = sub_100015C8C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_100007FFC()
{
  v1 = *(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  sub_100003D68(v2, v3);
}

__n128 initializeWithTake for TTRIExtensionCreateReminderViewController.Argument(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000080B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000080D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_10000810C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000081A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000829C()
{
  v0 = sub_10001687C();
  sub_10000C73C(v0, qword_100025990);
  v1 = sub_10000C698(v0, qword_100025990);
  if (qword_100025518 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C698(v0, qword_100026138);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100008364@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_1000164AC();
  v127 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015F8C();
  v126 = *(v6 - 8);
  __chkstk_darwin(v6);
  v125 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000167DC();
  v136 = *(v8 - 1);
  __chkstk_darwin(v8);
  v129 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001620C();
  v131 = *(v10 - 8);
  v132 = v10;
  __chkstk_darwin(v10);
  v133 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
  v13 = __chkstk_darwin(v12 - 8);
  v137 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v130 = &v105 - v15;
  v16 = sub_1000164FC();
  __chkstk_darwin(v16 - 8);
  v124 = sub_10001651C();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v134 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1000160AC();
  v121 = *(v122 - 8);
  v18 = __chkstk_darwin(v122);
  v120 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v128 = &v105 - v20;
  v135 = v1;
  swift_getObjectType();
  v21 = sub_1000165BC();
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = v21;
  v23 = sub_1000165BC();
  if (!v23)
  {

LABEL_9:
    ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
    v29 = *(*(ReminderViewModel - 8) + 56);

    return v29(a1, 1, 1, ReminderViewModel);
  }

  v106 = v8;
  v24 = v23;
  v25 = [v24 objectID];
  sub_1000160DC();

  if (swift_unknownObjectWeakLoadStrong() && (v26 = sub_100014DD8(), swift_unknownObjectRelease(), v26))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1000163DC();
    v115 = v26;
    swift_unknownObjectRelease();
    sub_10000CC08(&v140, &v141);
    sub_10000BDC4(&v141, v142);
    if (sub_10001634C())
    {
      sub_10000BDC4(&v141, v142);
      v111 = sub_10001635C();
      sub_10000CDB0(&v141);
      goto LABEL_16;
    }

    sub_10000CDB0(&v141);
    v27 = v115;
  }

  else
  {
    v27 = 0;
  }

  v115 = v27;
  v31 = [v22 titleAsString];
  if (v31)
  {
    v32 = v31;
    sub_1000168BC();

    sub_1000168CC();
    v111 = v33;
  }

  else
  {
    v111 = 0;
  }

LABEL_16:
  v142 = sub_100007C80(0, &qword_100025B80, REMReminderChangeItem_ptr);
  v143 = &protocol witness table for REMReminderChangeItem;
  v141 = v22;
  v34 = v22;
  sub_1000164EC();
  sub_10001650C();
  v35 = sub_1000164DC();
  if (v35)
  {
LABEL_17:
    v36 = v35;
    goto LABEL_19;
  }

  v36 = [v34 title];
  if (!v36)
  {
    v35 = [objc_allocWithZone(NSAttributedString) init];
    goto LABEL_17;
  }

LABEL_19:
  v37 = sub_1000164CC();
  if (!v37)
  {
    v37 = [v34 notes];
    if (!v37)
    {
      v37 = [objc_allocWithZone(NSAttributedString) init];
    }
  }

  v110 = v37;
  v38 = [v34 accountCapabilities];
  v109 = [v38 supportsTextStyling];

  v39 = [v34 attachmentContext];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 attachments];

    sub_100007C80(0, &qword_100025B98, REMAttachment_ptr);
    v42 = sub_10001692C();
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v112 = v6;
  v138 = v42 >> 62;
  v113 = v3;
  v114 = v34;
  v43 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v42 >> 62)
  {
LABEL_108:
    v44 = sub_100016AFC();
  }

  else
  {
    v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v42 & 0xC000000000000001;
  v117 = (v42 + 32);

  v46 = 0;
  v139 = v42;
  while (v44 != v46)
  {
    if (v45)
    {
      v47 = sub_100016ABC();
    }

    else
    {
      if (v46 >= *(v43 + 16))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v47 = *(v42 + 8 * v46 + 32);
    }

    v48 = v47;
    objc_opt_self();
    v49 = swift_dynamicCastObjCClass();

    if (v49)
    {
      v44 = v46;
      v42 = v139;
      break;
    }

    v50 = __OFADD__(v46++, 1);
    v42 = v139;
    if (v50)
    {
      goto LABEL_105;
    }
  }

  if (v138)
  {
    v51 = sub_100016AFC();
  }

  else
  {
    v51 = *(v43 + 16);
  }

  v108 = a1;
  v107 = v36;
  if (v44 == v51)
  {

    v52 = 0;
  }

  else
  {
    if (v45)
    {
      v53 = sub_100016ABC();
    }

    else
    {
      if (v44 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_111;
      }

      v53 = v117[v44];
    }

    v54 = v53;
    objc_opt_self();
    v55 = swift_dynamicCastObjCClass();
    if (!v55)
    {
      goto LABEL_113;
    }

    v52 = v55;
  }

  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v57 = *(ReminderView - 8);
  v58 = *(v57 + 56);
  v36 = (v57 + 56);
  v58(v130, 1, 1, ReminderView);
  v119 = v52;
  v118 = v5;
  if (v52)
  {
    v59 = v52;
    v60 = [v59 metadata];
    if (v60)
    {
      v61 = v60;
      v62 = sub_100015CAC();
      v64 = v63;

      sub_10000CB60(v62, v64);
      isa = sub_100015C9C().super.isa;
      v116 = [objc_opt_self() metadataWithDataRepresentation:isa];

      sub_10000CBB4(v62, v64);
      sub_10000CBB4(v62, v64);
    }

    else
    {
      v116 = 0;
    }

    v66 = [v59 objectID];
    v67 = [v59 url];
    v68 = v137;
    sub_100015C7C();

    v5 = &unk_100017D00;
    v69 = v130;
    sub_100007DC8(v130, &qword_100025B78, &unk_100017D00);
    *v68 = v66;
    *(v68 + *(ReminderView + 24)) = v116;
    v58(v68, 0, 1, ReminderView);
    sub_10000CAF8(v68, v69, &qword_100025B78, &unk_100017D00);
    v42 = v139;
  }

  if (v138)
  {
    v54 = sub_100016AFC();
  }

  else
  {
    v54 = *(v43 + 16);
  }

  v46 = 0;
  a1 = &_s15RemindersUICore027TTRIReminderCellModuleOwnerE4TypeOMa_ptr;
  while (v54 != v46)
  {
    if (v45)
    {
      v70 = sub_100016ABC();
    }

    else
    {
      if (v46 >= *(v43 + 16))
      {
        goto LABEL_104;
      }

      v70 = *(v42 + 8 * v46 + 32);
    }

    v71 = v70;
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();

    if (v72)
    {
      v54 = v46;
      break;
    }

    v50 = __OFADD__(v46++, 1);
    if (v50)
    {
      goto LABEL_106;
    }
  }

  v73 = v119;
  if (!v138)
  {
    if (v54 != *(v43 + 16))
    {
      goto LABEL_69;
    }

LABEL_77:
    swift_bridgeObjectRelease_n();
    if (v73)
    {
      v5 = 0;
      v81 = -1;
      v82 = v108;
LABEL_97:
      v96 = v121;
      v97 = v120;
      v98 = v128;
      v99 = v122;
      (*(v121 + 16))(v120, v128, v122);
      v100 = v125;
      v101 = v134;
      sub_1000164BC();
      sub_100015F7C();

      swift_unknownObjectRelease();
      (*(v126 + 8))(v100, v112);
      (*(v123 + 8))(v101, v124);
      (*(v96 + 8))(v98, v99);
      (*(v96 + 32))(v82, v97, v99);
      v102 = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
      *(v82 + v102[5]) = v111 & 1;
      *(v82 + v102[6]) = v107;
      *(v82 + v102[7]) = v110;
      *(v82 + v102[8]) = v109;
      (*(v127 + 32))(v82 + v102[9], v118, v113);
      sub_10000CAF8(v130, v82 + v102[10], &qword_100025B78, &unk_100017D00);
      v103 = v82 + v102[11];
      *v103 = v5;
      *(v103 + 8) = v81;
      return (*(*(v102 - 1) + 56))(v82, 0, 1, v102);
    }

    v83 = [v114 userActivity];
    v82 = v108;
    if (!v83)
    {
      v5 = 0;
      v81 = -1;
      goto LABEL_97;
    }

    v84 = v83;
    (*(v136 + 104))(v129, enum case for REMApplicationIconFormat.reminderListiOS(_:), v106);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v86 = [Strong view];
      if (!v86)
      {
        goto LABEL_116;
      }

      v87 = v86;
      v88 = [v86 traitCollection];

      [v88 displayScale];
      swift_unknownObjectRelease();
    }

    v104 = v129;
    v5 = sub_1000169CC();

    (*(v136 + 8))(v104, v106);
    if (!v5)
    {
      v81 = -1;
      goto LABEL_97;
    }

    v81 = 0;
    goto LABEL_96;
  }

  if (v54 == sub_100016AFC())
  {
    goto LABEL_77;
  }

LABEL_69:
  if (!v45)
  {
    if (v54 < *(v43 + 16))
    {
      v74 = v117[v54];
      goto LABEL_72;
    }

    __break(1u);
LABEL_113:

    __break(1u);
    goto LABEL_114;
  }

LABEL_111:
  v74 = sub_100016ABC();
LABEL_72:
  v46 = v74;
  v43 = v133;
  objc_opt_self();
  v75 = swift_dynamicCastObjCClass();
  if (v75)
  {
    v76 = v75;

    v77 = swift_unknownObjectWeakLoadStrong();
    if (!v77)
    {
LABEL_83:
      sub_10000A4EC();
      sub_100004FAC(&qword_1000258A8, &qword_100017820);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100017560;
      *(v89 + 32) = v76;
      v106 = v46;
      v90 = sub_1000161EC();

      v91 = *(v90 + 16);
      if (v91)
      {
        a1 = 0;
        v5 = 0;
        v92 = v131;
        v137 = (v131 + 88);
        v138 = v131 + 16;
        LODWORD(v136) = enum case for TTRAttachmentThumbnailsManager.Result.thumbnail(_:);
        LODWORD(v129) = enum case for TTRAttachmentThumbnailsManager.Result.pending(_:);
        v117 = (v131 + 8);
        v36 = (v131 + 96);
        v81 = -1;
        LODWORD(v116) = enum case for TTRAttachmentThumbnailsManager.Result.error(_:);
        v93 = v132;
        while (a1 < *(v90 + 16))
        {
          (*(v92 + 16))(v43, v90 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * a1, v93);
          v94 = (*(v92 + 88))(v43, v93);
          if (v94 == v136)
          {
            sub_10000CAC4(v5, v81);
            (*v36)(v43, v93);
            v5 = *v43;
          }

          else
          {
            if (v94 == v129)
            {
              (*v36)(v43, v93);

              sub_100007C80(0, &qword_100025B88, OS_dispatch_queue_ptr);
              v95 = sub_1000169FC();
              swift_allocObject();
              swift_weakInit();
              sub_100004FAC(&qword_100025B90, &qword_100017D10);
              sub_10001680C();
              sub_10000CAC4(v5, v81);
              v93 = v132;

              v92 = v131;

              v42 = v139;
              v43 = v133;
            }

            else
            {
              if (v94 != v116)
              {
                goto LABEL_117;
              }

              sub_10000CAC4(v5, v81);
              (*v117)(v43, v93);
            }

            v5 = 0;
          }

          ++a1;
          v81 = 1;
          if (v91 == a1)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_107;
      }

      v5 = 0;
      v81 = -1;
LABEL_95:

      v82 = v108;
LABEL_96:

      goto LABEL_97;
    }

    v78 = [v77 view];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 traitCollection];

      [v80 displayScale];
      swift_unknownObjectRelease();

      goto LABEL_83;
    }

    goto LABEL_115;
  }

LABEL_114:

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  result = sub_100016B2C();
  __break(1u);
  return result;
}

uint64_t sub_1000096EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a3;
  v34 = a6;
  v30 = a4;
  v31 = a1;
  v9 = v7;
  v32 = a2;
  v11 = sub_1000160AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004FAC(&qword_100025B60, &qword_100017CE8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  swift_getObjectType();
  v21 = sub_1000165BC();
  if (v21)
  {
    v22 = v21;
    v23 = [v22 objectID];
    sub_1000160DC();

    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  sub_100007E28(v20, v18, &qword_100025B60, &qword_100017CE8);
  v24 = 1;
  if ((*(v12 + 48))(v18, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v18, v11);
    v25 = *(v9 + *v30);
    v26 = sub_10000CD68(&qword_100025B68, type metadata accessor for TTRIExtensionCreateReminderPresenter, &unk_100017B48);
    v25(v14, v9, v26, v31, v32, v33);
    (*(v12 + 8))(v14, v11);
    v24 = 0;
  }

  sub_100007DC8(v20, &qword_100025B60, &qword_100017CE8);
  v27 = sub_100004FAC(a5, v34);
  return (*(*(v27 - 8) + 56))(a7, v24, 1, v27);
}

uint64_t sub_100009A04()
{
  v0 = sub_10001679C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v4 = sub_10001687C();
  sub_10000C698(v4, qword_100025990);
  v5 = sub_10000BF40(_swiftEmptyArrayStorage);
  sub_10000F4B0("ExtensionCreateReminder add reminder", 36, 2, v5);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_10001661C();

  sub_100015D9C();
  v6 = sub_100015D6C();
  sub_1000167CC();
  sub_1000167BC();
  v7 = sub_100004FAC(&qword_100025B38, &qword_100017CC0);
  v8 = &v3[*(v7 + 48)];
  v9 = &v3[*(v7 + 80)];
  v10 = enum case for REMUserOperation.commitNewReminder(_:);
  v11 = sub_10001678C();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  *v8 = sub_100015D7C();
  v8[1] = v12;
  sub_100015D8C();
  v16 = sub_100016B8C();
  v17 = v13;
  v18._countAndFlagsBits = 0x69736E657478452DLL;
  v18._object = 0xEA00000000006E6FLL;
  sub_1000168EC(v18);
  v14 = v17;
  *v9 = v16;
  v9[1] = v14;
  (*(v1 + 104))(v3, enum case for REMAnalyticsEvent.userOperation(_:), v0);
  sub_1000167AC();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100009D18(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    if (a2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;

        sub_10000C714(a1, 1);
        sub_10000D2E0();
        v9 = v8;

        v10 = sub_100015C5C();
        [v9 viewServiceDidFailWithError:v10];
        sub_10000C720(a1, 1);
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_10001685C();
    sub_10001684C();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_10000D2E0();
      v14 = v13;

      [v14 viewServiceDidFinish];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009E78()
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v0 = sub_10001687C();
  sub_10000C698(v0, qword_100025990);
  v1 = sub_10000BF40(_swiftEmptyArrayStorage);
  sub_10000F4B0("ExtensionCreateReminder cancel", 30, 2, v1);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10000D2E0();
      v6 = v5;

      [v6 viewServiceDidCancel];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100009F88(void *a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v39 = a6;
  v40 = a2;
  v47 = a5;
  v46 = a4;
  v8 = sub_100004FAC(&qword_100025B08, &qword_100017C98);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1000167EC();
  v37 = *(v11 - 8);
  v38 = v11;
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004FAC(&qword_100025B10, &qword_100017CA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v44 = sub_1000166FC();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10001604C();
  v19 = *(v41 - 8);
  __chkstk_darwin(v41);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100015FBC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v23 + 104);
  v28 = &enum case for TTRIReminderDetailStyle.sharingExtensionExtendedDetail(_:);
  if (!*(a3 + 48))
  {
    v28 = &enum case for TTRIReminderDetailStyle.sharingExtension(_:);
  }

  v29 = *v28;
  v43 = v24;
  v27(v26, v29);
  v30 = a1;
  sub_10001603C();
  v45 = a3;
  swift_getObjectType();
  sub_1000165EC();
  if (v40 < 1)
  {
    v31 = 1;
  }

  else
  {
    (*(v37 + 104))(v13, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v38);
    sub_100015D3C();
    v31 = 0;
  }

  v32 = sub_100015D4C();
  (*(*(v32 - 8) + 56))(v16, v31, 1, v32);
  sub_1000160CC();
  sub_10000CD68(&qword_100025B18, type metadata accessor for TTRIExtensionCreateReminderPresenter, &unk_100017BF8);
  v33 = sub_10001669C();
  (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
  v34 = v45;
  v35 = sub_1000160BC();
  sub_100007DC8(v10, &qword_100025B08, &qword_100017C98);
  sub_100007DC8(v16, &qword_100025B10, &qword_100017CA0);
  (*(v42 + 8))(v18, v44);
  (*(v19 + 8))(v21, v41);
  swift_unknownObjectRelease();
  sub_10000BDC4((v34 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router), *(v34 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router + 24));
  sub_10000FFE0(v35, v46 & 1);
  if (v47)
  {
    v47();

    (*(v23 + 8))(v26, v43);
  }

  else
  {
    (*(v23 + 8))(v26, v43);
  }
}

uint64_t sub_10000A4EC()
{
  v1 = v0;
  v2 = sub_1000163AC();
  __chkstk_darwin(v2);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager;
  if (*(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager))
  {
    v7 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager);
  }

  else
  {
    *v5 = 0x4072C00000000000;
    (*(v3 + 104))(v5, enum case for TTRAttachmentThumbnailSizeProvider.ContentMode.scaleAspectFill(_:));
    v8 = sub_1000163BC();
    swift_allocObject();
    v9 = sub_10001639C();
    v13[8] = v8;
    v13[9] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
    v13[5] = v9;
    sub_100007C80(0, &qword_100025B88, OS_dispatch_queue_ptr);
    sub_1000169FC();
    sub_10001677C();
    sub_10001676C();
    v10 = sub_100015F5C();
    swift_allocObject();
    v11 = sub_100015F4C();
    v13[3] = v10;
    v13[4] = &protocol witness table for TTRThumbnailGenerator;
    v13[0] = v11;
    sub_10001621C();
    swift_allocObject();
    v7 = sub_1000161FC();
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_10000A6E0@<X0>(BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    v5._object = 0x8000000100019710;
    v5._countAndFlagsBits = 0xD000000000000011;
    sub_100015DCC(v5);
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_10000A77C(uint64_t a1, uint64_t a2)
{
  sub_10000CDFC(v2 + 16, a2);
  sub_10000CDFC(v2 + 32, v3);
  sub_100007DC8(v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel, &qword_100025B58, &qword_100017CE0);
  swift_unknownObjectRelease();
  sub_10000CDB0((v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router));

  return v2;
}

uint64_t sub_10000A85C(uint64_t a1, uint64_t a2)
{
  sub_10000A77C(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t type metadata accessor for TTRIExtensionCreateReminderPresenter(uint64_t a1)
{
  result = qword_100025A18;
  if (!qword_100025A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A908(uint64_t a1)
{
  sub_10000A9F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000A9F8(uint64_t a1)
{
  if (!qword_100025A28)
  {
    type metadata accessor for TTRIExtensionCreateReminderViewModel(255);
    v1 = sub_100016A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_100025A28);
    }
  }
}

uint64_t sub_10000AA50(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_10000D2E0();
      v5 = v4;

      [v5 viewServiceDidCancel];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000AADC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_errorRetain();
      sub_10000D2E0();
      v5 = v4;

      v6 = sub_100015C5C();
      [v5 viewServiceDidFailWithError:v6];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000AB98()
{
  v0._object = 0x8000000100019710;
  v0._countAndFlagsBits = 0xD000000000000011;
  sub_100015DCC(v0);
}

uint64_t sub_10000ABDC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_10001601C();
    sub_1000150D4(v1, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000AC54()
{
  sub_10000BDC4((v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router), *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router + 24));

  sub_100010098(sub_10000BE08, v0);
}

void sub_10000ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v49 = a4;
  v50 = sub_10001633C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004FAC(&qword_100025B28, &qword_100017CB0);
  __chkstk_darwin(v6 - 8);
  v51 = &v46 - v7;
  v8 = sub_1000166AC();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004FAC(&qword_100025B20, &qword_100017CA8);
  v11 = __chkstk_darwin(v10 - 8);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - v14;
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = sub_100004FAC(&qword_100025B30, &qword_100017CB8);
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - v19;
  v21 = sub_10001602C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  sub_100007E28(a2, v17, &qword_100025B20, &qword_100017CA8);
  v25 = sub_1000166EC();
  v26 = *(v25 - 8);
  v57 = *(v26 + 48);
  if (v57(v17, 1, v25) == 1)
  {
    sub_100007DC8(v17, &qword_100025B20, &qword_100017CA8);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_100007DC8(v20, &qword_100025B30, &qword_100017CB8);
    goto LABEL_6;
  }

  sub_1000166CC();
  (*(v26 + 8))(v17, v25);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  (*(v22 + 32))(v24, v20, v21);
  swift_getObjectType();
  sub_10001663C();
  (*(v22 + 8))(v24, v21);
LABEL_6:
  v27 = v52;
  v28 = v55;
  sub_100007E28(v55, v15, &qword_100025B20, &qword_100017CA8);
  v29 = v57(v15, 1, v25);
  v30 = v51;
  if (v29 == 1)
  {
    sub_100007DC8(v15, &qword_100025B20, &qword_100017CA8);
    (*(v27 + 56))(v30, 1, 1, v53);
    v31 = v56;
LABEL_9:
    sub_100007DC8(v30, &qword_100025B28, &qword_100017CB0);
    goto LABEL_11;
  }

  sub_1000166DC();
  (*(v26 + 8))(v15, v25);
  v32 = v53;
  v33 = (*(v27 + 48))(v30, 1, v53);
  v31 = v56;
  if (v33 == 1)
  {
    goto LABEL_9;
  }

  v34 = *(v27 + 32);
  v52 = v26;
  v35 = v46;
  v34(v46, v30, v32);
  swift_getObjectType();
  sub_10001662C();
  v36 = v35;
  v26 = v52;
  (*(v27 + 8))(v36, v32);
LABEL_11:
  v37 = v54;
  sub_100007E28(v28, v54, &qword_100025B20, &qword_100017CA8);
  if (v57(v37, 1, v25) == 1)
  {
    sub_100007DC8(v37, &qword_100025B20, &qword_100017CA8);
  }

  else
  {
    v38 = sub_1000166BC();
    (*(v26 + 8))(v37, v25);
    if (v38)
    {
      goto LABEL_15;
    }
  }

  v58._object = 0x8000000100019710;
  v58._countAndFlagsBits = 0xD000000000000011;
  sub_100015DCC(v58);
LABEL_15:
  if (*(v31 + 48) == 1)
  {
LABEL_21:
    sub_100009A04();
    return;
  }

  v40 = v47;
  v39 = v48;
  v41 = v50;
  (*(v48 + 16))(v47, v49, v50);
  v42 = (*(v39 + 88))(v40, v41);
  if (v42 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
  {
    if (v42 != enum case for TTRIViewControllerDismissalState.requested(_:))
    {
      sub_100016B2C();
      __break(1u);
      return;
    }

    goto LABEL_21;
  }

  v43 = *(*sub_10000BDC4((v31 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router), *(v31 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router + 24)) + 24);
  if (v43)
  {
    v44 = [v43 navigationController];
    if (v44)
    {
      v45 = v44;
    }
  }
}

uint64_t sub_10000B498()
{
  if (*(v0 + 48) == 1)
  {
    return sub_100009E78();
  }

  return result;
}

uint64_t sub_10000B4BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100015F9C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10000B52C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v2 = sub_10001687C();
  sub_10000C698(v2, qword_100025990);
  v3 = sub_10001686C();
  v4 = sub_1000169AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIExtensionCreateReminderPresenter.autoCompletReminderListScope(for:) should not be called", v5, 2u);
  }

  v6 = sub_1000162CC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

uint64_t sub_10000B730@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000160AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *sub_10000B7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a2;
  v4 = sub_1000160AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = sub_1000165BC();
  if (result)
  {
    v9 = result;
    sub_1000165CC();
    if (v13)
    {
      sub_10000CC08(&v12, v14);
      (*(v5 + 16))(v7, a1, v4);
      sub_10000CCFC(v14, &v12);
      swift_allocObject();
      swift_weakInit();
      sub_1000163FC();
      swift_allocObject();

      v10 = sub_1000163EC();
      sub_10000CDB0(v14);

      return v10;
    }

    else
    {

      sub_100007DC8(&v12, &qword_100025BA0, &qword_100017D18);
      return 0;
    }
  }

  return result;
}

void sub_10000BA38(id a1)
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v2 = sub_10001687C();
  sub_10000C698(v2, qword_100025990);
  v3 = a1;
  oslog = sub_10001686C();
  v4 = sub_1000169AC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      a1 = [v3 objectID];
    }

    sub_100004FAC(&qword_100025BB0, &unk_100017D20);
    v7 = sub_100016A4C();
    v9 = v8;

    v10 = sub_10000F9CC(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v4, "TTRIExtensionCreateReminderPresenter: setPendingMoveTargetList is called unexpectedly {listID: %s}", v5, 0xCu);
    sub_10000CDB0(v6);
  }

  else
  {
  }
}

uint64_t sub_10000BC00(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001668C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001667C();
  sub_10000CD68(&qword_100025BA8, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
  v6 = sub_100016A7C();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10._object = 0x8000000100019710;
      v10._countAndFlagsBits = 0xD000000000000011;
      sub_100015DCC(v10);
    }
  }

  sub_10001666C();
  sub_100016A7C();
  return (v7)(v5, v2);
}

void *sub_10000BDC4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000BE10(uint64_t a1, uint64_t a2)
{
  sub_100016B5C();
  sub_1000168DC();
  v4 = sub_100016B7C();

  return sub_10000BE88(a1, a2, v4);
}

unint64_t sub_10000BE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100016B3C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000BF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004FAC(&qword_100025B48, &qword_100017CD0);
    v3 = sub_100016B0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007E28(v4, &v13, &qword_100025B50, &qword_100017CD8);
      v5 = v13;
      v6 = v14;
      result = sub_10000BE10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C72C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000C070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004FAC(&qword_100025B40, &qword_100017CC8);
    v3 = sub_100016B0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000BE10(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000C174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_10001633C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004FAC(&qword_100025B20, &qword_100017CA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v18 - v11;
  swift_getObjectType();
  sub_1000165FC();
  sub_100007E28(v18, v12, &qword_100025B20, &qword_100017CA8);
  (*(v5 + 16))(v7, v19, v4);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v5 + 80) + v14 + 8) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10000CAF8(v12, v16 + v13, &qword_100025B20, &qword_100017CA8);
  *(v16 + v14) = v3;
  (*(v5 + 32))(v16 + v15, v7, v4);

  v17 = sub_1000167FC();
  sub_10001680C();
}

uint64_t sub_10000C3E4()
{
  v1 = *(sub_100004FAC(&qword_100025B20, &qword_100017CA8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10001633C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1000166EC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

void sub_10000C59C(uint64_t a1)
{
  v3 = *(sub_100004FAC(&qword_100025B20, &qword_100017CA8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10001633C() - 8);
  sub_10000ACC8(a1, v1 + v4, *(v1 + v5), v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

uint64_t sub_10000C698(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C6D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000C714(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10000C720(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_OWORD *sub_10000C72C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_10000C73C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000C7A0()
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v2 = *(ReminderViewModel - 8);
  __chkstk_darwin(ReminderViewModel);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100008364(&v13 - v9);
  v11 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_10000C994(v10, v0 + v11);
  swift_endAccess();
  sub_100007E28(v0 + v11, v8, &qword_100025B58, &qword_100017CE0);
  if ((*(v2 + 48))(v8, 1, ReminderViewModel) == 1)
  {
    return sub_100007DC8(v8, &qword_100025B58, &qword_100017CE0);
  }

  sub_10000CA04(v8, v4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100012E48(v4);
    swift_unknownObjectRelease();
  }

  return sub_10000CA68(v4);
}

uint64_t sub_10000C994(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CA04(uint64_t a1, uint64_t a2)
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 32))(a2, a1, ReminderViewModel);
  return a2;
}

uint64_t sub_10000CA68(uint64_t a1)
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 8))(a1, ReminderViewModel);
  return a1;
}

void sub_10000CAC4(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_10000CAF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004FAC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000CB60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000CBB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000CC08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000CC20()
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v0 = sub_10001687C();
  sub_10000C698(v0, qword_100025990);
  v1 = sub_10001686C();
  v2 = sub_1000169AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "TTRIExtensionCreateReminderPresenter.shouldApplyListOfAutoCompleteSuggestion() should not be called", v3, 2u);
  }

  return 0;
}

uint64_t sub_10000CCFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000CDB0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000CE24()
{
  v0 = sub_10001687C();
  sub_10000C73C(v0, qword_100025BB8);
  v1 = sub_10000C698(v0, qword_100025BB8);
  if (qword_100025518 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C698(v0, qword_100026138);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10000CEEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_currentEventHandler];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&v3[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_contentNavigationController] = 0;
  v6 = &v3[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_extensionCreateReminderInterface];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_1000168AC();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for TTRIVSReminderCreationViewServiceViewController();
  v8 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v7, a3);

  v9 = qword_100025508;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_10001687C();
  sub_10000C698(v11, qword_100025BB8);
  v12 = sub_10001686C();
  v13 = sub_10001699C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "TTRIVSReminderCreationViewServiceViewController is ready and waiting", v14, 2u);
  }

  return v10;
}

void sub_10000D2E0()
{
  v1 = v0;
  v2 = sub_10001687C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _remoteViewControllerProxy])
  {
    sub_100016A6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  sub_10000EE9C(v18, &v16);
  if (*(&v17 + 1))
  {
    sub_100004FAC(&qword_100025D58, &unk_100017E20);
    if (swift_dynamicCast())
    {
      sub_10000EF0C(v18);
      return;
    }
  }

  else
  {
    sub_10000EF0C(&v16);
  }

  if (qword_100025508 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C698(v2, qword_100025BB8);
  (*(v3 + 16))(v5, v6, v2);
  sub_100004FAC(&qword_100025D50, &unk_100017E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017D30;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_10000EE9C(v18, &v12);
  if (v13)
  {
    sub_10000C72C(&v12, &v16);
  }

  else
  {
    *(&v17 + 1) = &type metadata for String;
    *&v16 = 0x296C696E28;
    *(&v16 + 1) = 0xE500000000000000;
  }

  sub_100016ADC();
  sub_10000CDB0(&v16);
  v9 = v14;
  v8 = v15;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v8;

  v10 = sub_10000BF40(inited);

  v11 = sub_10000BF40(_swiftEmptyArrayStorage);
  sub_10000F754("Expecting _remoteViewControllerProxy to be of type REMReminderCreationRemoteViewController, but got %@ instead", 110, 2, v10, v11);
  __break(1u);
}

void sub_10000D61C(uint64_t a1)
{
  v3 = OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_contentNavigationController;
  v4 = *&v1[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_contentNavigationController];
  if (!v4)
  {
LABEL_4:
    v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:a1];
    [v1 addChildViewController:v9];
    v10 = [v9 view];

    if (v10)
    {
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        [v11 addSubview:v10];

        sub_100004FAC(&qword_1000258A8, &qword_100017820);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100017D40;
        v14 = [v1 view];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 leadingAnchor];

          v17 = [v10 leadingAnchor];
          v18 = [v16 constraintEqualToAnchor:v17];

          *(v13 + 32) = v18;
          v19 = [v1 view];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 trailingAnchor];

            v22 = [v10 trailingAnchor];
            v23 = [v21 constraintEqualToAnchor:v22];

            *(v13 + 40) = v23;
            v24 = [v1 view];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 topAnchor];

              v27 = [v10 topAnchor];
              v28 = [v26 constraintEqualToAnchor:v27];

              *(v13 + 48) = v28;
              v29 = [v1 view];
              if (v29)
              {
                v30 = v29;
                v31 = objc_opt_self();
                v32 = [v30 bottomAnchor];

                v33 = [v10 bottomAnchor];
                v34 = [v32 constraintEqualToAnchor:v33];

                *(v13 + 56) = v34;
                sub_100007C80(0, &qword_100025D48, NSLayoutConstraint_ptr);
                isa = sub_10001691C().super.isa;

                [v31 activateConstraints:isa];

                [v9 didMoveToParentViewController:v1];
                v36 = *&v1[v3];
                *&v1[v3] = v9;
                v9;

                return;
              }

              goto LABEL_16;
            }

LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v5 willMoveToParentViewController:0];
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    [v6 removeFromSuperview];

    [v5 removeFromParentViewController];
    v8 = *&v1[v3];
    *&v1[v3] = 0;

    goto LABEL_4;
  }

LABEL_17:
  __break(1u);
}

id sub_10000DA40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIVSReminderCreationViewServiceViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000DAF4(uint64_t (*a1)(void, double, double), int a2, id a3)
{
  v4 = [a3 viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    [v4 frame];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  return a1(0, v7, v9);
}

void sub_10000DC0C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (a1)
  {
    v5 = a4.n128_u64[0];
    v6 = a3.n128_u64[0];
    v7 = sub_100015C5C();
    a3.n128_u64[0] = v6;
    a4.n128_u64[0] = v5;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a2 + 16))(a2, a3, a4);
}

uint64_t sub_10000DC8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000DCF8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_10001677C();
  v3 = v2;
  v4 = sub_10001675C();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  sub_1000163CC();
  v6 = v3;

  v7 = sub_10001681C();

  return v7;
}

uint64_t sub_10000DDBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DE24(void *a1, uint64_t a2, unsigned int a3)
{
  v25 = a3;
  v4 = [objc_allocWithZone(REMStore) init];
  v5 = objc_allocWithZone(TTRUndoManager);
  v6 = sub_1000168AC();
  v7 = [v5 initWithDebugIdentifier:v6];

  sub_10001606C();
  sub_10001605C();
  type metadata accessor for ReminderCreationEventHandler();
  sub_10000DCF8();
  sub_10001642C();
  swift_allocObject();
  v8 = a1;
  v9 = v4;

  v10 = v7;

  v11 = sub_10001640C();
  ReminderRouter = type metadata accessor for TTRIExtensionCreateReminderRouter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + 24) = 0;
  v27[3] = ReminderRouter;
  v27[4] = &off_100021720;
  v27[0] = v13;
  type metadata accessor for TTRIExtensionCreateReminderPresenter(0);
  v14 = swift_allocObject();
  v15 = sub_10000ED9C(v27, ReminderRouter);
  __chkstk_darwin(v15);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = v10;

  v21 = sub_10000E1F8(v11, v19, sub_10000EF74, 0, sub_10000F158, 0, v20, v25, v14);

  sub_10000CDB0(v27);
  type metadata accessor for TTRIExtensionCreateReminderViewController();
  v27[0] = v21;
  v27[1] = &off_100021590;
  sub_10000EDEC(&qword_100025D28, type metadata accessor for TTRIExtensionCreateReminderViewController, &unk_100018164);
  sub_100015E1C();
  v22 = v26;
  sub_10000EDEC(&qword_100025D30, type metadata accessor for TTRIExtensionCreateReminderPresenter, &unk_100017C40);

  sub_10001641C();

  v21[3] = &off_100021820;
  swift_unknownObjectWeakAssign();
  v21[5] = &off_100021638;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v22;
}

uint64_t *sub_10000E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t *a9)
{
  v43 = a3;
  v44 = a5;
  v45 = *a9;
  v15 = sub_10001679C();
  v46 = *(v15 - 8);
  v47 = v15;
  __chkstk_darwin(v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v50[3] = type metadata accessor for TTRIExtensionCreateReminderRouter();
  v50[4] = &off_100021720;
  v50[0] = a2;
  a9[3] = 0;
  swift_unknownObjectWeakInit();
  a9[5] = 0;
  swift_unknownObjectWeakInit();
  *(a9 + 48) = 0;
  v21 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 56))(a9 + v21, 1, 1, ReminderViewModel);
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager) = 0;
  v23 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_editingSessionSharedProperties;
  sub_10001673C();
  swift_allocObject();
  *(a9 + v23) = sub_10001672C();
  v24 = (a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  *v24 = a1;
  v24[1] = &protocol witness table for TTRExtensionCreateReminderInteractor;
  sub_10000CCFC(v50, a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router);
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_undoManager) = a7;
  *(a9 + 48) = a8;
  sub_1000165AC();
  swift_allocObject();
  v25 = a7;
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper) = sub_10001656C();
  v26 = (a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_makeCellTitleModule);
  v27 = v44;
  *v26 = v43;
  v26[1] = a4;
  v28 = (a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_makeCellNotesModule);
  *v28 = v27;
  v28[1] = a6;
  sub_100007C80(0, &qword_100025B88, OS_dispatch_queue_ptr);

  sub_1000169FC();
  sub_100015DFC();
  swift_allocObject();
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction) = sub_100015DDC();
  sub_10000EDEC(&qword_100025D38, type metadata accessor for TTRIExtensionCreateReminderPresenter, &unk_100017BC0);

  sub_100015DEC();

  sub_10000EDEC(&qword_100025D40, type metadata accessor for TTRIExtensionCreateReminderPresenter, &unk_100017B10);

  sub_10001659C();

  sub_100008364(v20);
  v29 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_10000EE34(v20, a9 + v29, &qword_100025B58, &qword_100017CE0);
  swift_endAccess();
  sub_100015D9C();
  v30 = sub_100015D6C();
  sub_1000167CC();
  sub_1000167BC();
  v31 = sub_100004FAC(&qword_100025B38, &qword_100017CC0);
  v32 = &v17[*(v31 + 48)];
  v33 = &v17[*(v31 + 80)];
  v34 = enum case for REMUserOperation.createReminder(_:);
  v35 = sub_10001678C();
  (*(*(v35 - 8) + 104))(v17, v34, v35);
  *v32 = sub_100015D7C();
  v32[1] = v36;
  sub_100015D8C();
  v48 = sub_100016B8C();
  v49 = v37;
  v51._countAndFlagsBits = 0x69736E657478452DLL;
  v51._object = 0xEA00000000006E6FLL;
  sub_1000168EC(v51);
  v38 = v49;
  *v33 = v48;
  v33[1] = v38;
  v40 = v46;
  v39 = v47;
  (*(v46 + 104))(v17, enum case for REMAnalyticsEvent.userOperation(_:), v47);
  sub_1000167AC();

  (*(v40 + 8))(v17, v39);
  sub_10000CDB0(v50);
  return a9;
}

void sub_10000E74C(void *a1, uint64_t a2, void (**a3)(void, void, double, double))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = type metadata accessor for ReminderCreationEventHandler();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_10001623C();
  v34 = &protocol witness table for TTRCurrentUserActivityProvider;
  sub_10000EC40(v32);
  _Block_copy(a3);
  sub_10001622C();
  sub_10001612C();
  swift_allocObject();
  *(v8 + 32) = sub_10001610C();
  *(v8 + 16) = a1;
  swift_unknownObjectWeakAssign();
  v33 = v7;
  v32[0] = v8;
  v9 = OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_currentEventHandler;
  swift_beginAccess();
  v10 = a1;

  sub_10000EE34(v32, a2 + v9, &qword_100025D20, &unk_100017E00);
  swift_endAccess();
  v11 = [v10 wantsExtendedDetailOnlyView];
  v12 = [v10 reminderID];

  v13 = sub_10000DE24(v12, v8, v11);
  v15 = v14;
  v17 = v16;

  v18 = (a2 + OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_extensionCreateReminderInterface);
  *v18 = v15;
  v18[1] = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_10000D61C(v13);
  v20 = v19;
  if (v11)
  {
    v21 = swift_allocObject();
    v21[2] = sub_10000EC38;
    v21[3] = v6;
    v21[4] = v20;
    swift_getObjectType();

    v22 = v20;
    sub_10001660C();
    v23 = swift_allocObject();
    *(v23 + 16) = v15;
    *(v23 + 24) = 0;
    *(v23 + 32) = sub_10000ECE4;
    *(v23 + 40) = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_10000ED38;
    *(v24 + 24) = v23;
    swift_unknownObjectRetain();

    v25 = sub_1000167FC();
    sub_10001680C();

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = [v19 viewIfLoaded];
    if (v26)
    {
      v27 = v26;
      [v26 frame];
      v29 = v28;
      v31 = v30;
    }

    else
    {
      v29 = 0.0;
      v31 = 0.0;
    }

    a3[2](a3, 0, v29, v31);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000EC00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_10000EC40(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000ECA4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ECF0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000ED48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ED9C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10000EDEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EE34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004FAC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004FAC(&qword_100025D20, &unk_100017E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EF0C(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_100025D20, &unk_100017E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000EF74@<X0>(uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17[0] = a6;
  v17[1] = a7;
  v7 = sub_100015CEC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001665C();
  swift_allocObject();
  v12 = sub_10001664C();
  v20[3] = v11;
  v20[4] = &protocol witness table for TTRReminderTitleAttributesNoOpInteractor;
  v19 = 0;
  v20[0] = v12;
  memset(v18, 0, sizeof(v18));
  (*(v8 + 104))(v10, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v7);
  v13 = sub_1000161DC();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  sub_10000F448(v18);
  sub_10000CDB0(v20);
  *&v18[0] = v13;
  *(&v18[0] + 1) = v15;
  sub_10000F3EC(v21, v20);
  sub_100004FAC(&qword_100025D98, &qword_100017EC8);
  sub_1000161AC();
  return sub_10000CDB0(v21);
}

uint64_t sub_10000F158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_100015CEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 104))(v9, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v6);
  v10 = sub_1000161CC();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v15 = v10;
  v16 = v12;
  sub_10000F3EC(v17, v14);
  sub_100004FAC(&qword_100025D88, &qword_100017EB8);
  sub_1000161AC();
  return sub_10000CDB0(v17);
}

id TTRIExtensionCreateReminderAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIExtensionCreateReminderAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIExtensionCreateReminderAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F3EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000F448(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_100025D90, &qword_100017EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000F4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001674C();
  sub_10001683C();
  sub_100004FAC(&qword_100025DA0, &qword_100017EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017D30;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_100016AAC();
  v5 = sub_1000168AC();

  *(inited + 48) = v5;
  sub_10000C070(inited);
  swift_setDeallocating();
  sub_10000FF74(inited + 32);
  sub_10001682C();

  if (qword_100025510 != -1)
  {
    swift_once();
  }

  v6 = sub_10001687C();
  sub_10000C698(v6, qword_100026120);

  v7 = sub_10001686C();
  v8 = sub_1000169BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = sub_100016AAC();
    v12 = sub_10000F9CC(v10, v11, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_10001689C();
    v15 = sub_10000F9CC(v13, v14, &v16);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s; UserInfo=%s", v9, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10000F754(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v5 = a3;

  v7 = sub_10001686C();
  v8 = sub_1000169AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446722;
    v10 = sub_100016AAC();
    v12 = sub_10000F9CC(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_10001689C();
    v15 = v5;
    v16 = sub_10000F9CC(v13, v14, &v20);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2082;
    v17 = sub_10001689C();
    v19 = sub_10000F9CC(v17, v18, &v20);
    v5 = v15;

    *(v9 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  if (v5)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000F958(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_10001687C();
  sub_10000C73C(v5, a2);
  sub_10000C698(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_10001688C();
}

unint64_t sub_10000F9CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FA98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000F3EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CDB0(v11);
  return v7;
}

unint64_t sub_10000FA98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000FBA4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100016ACC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10000FBA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000FBF0(a1, a2);
  sub_10000FD20(&off_1000212B8);
  return v3;
}

void *sub_10000FBF0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000FE0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100016ACC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000168FC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FE0C(v10, 0);
        result = sub_100016A8C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000FD20(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000FE80(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000FE0C(uint64_t a1, uint64_t a2)
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

  sub_100004FAC(&qword_100025DB0, &unk_100017EF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FE80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004FAC(&qword_100025DB0, &unk_100017EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000FF74(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_100025DA8, &qword_100017EE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000FFE0(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      [v6 pushViewController:a1 animated:a2 & 1];

      v7 = *(v2 + 24);
      *(v2 + 24) = a1;

      v8 = a1;
    }
  }
}

void sub_100010098(uint64_t a1, uint64_t a2)
{
  sub_100015F2C();
  v14._object = 0x8000000100019AB0;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v15._object = 0x8000000100019AD0;
  v14._countAndFlagsBits = 0xD000000000000016;
  sub_100015E0C(v14, v15);
  v4 = sub_1000168AC();

  v5 = sub_1000168AC();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  sub_100015F3C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_1000168AC();

  v13[4] = sub_1000103C0;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000102BC;
  v13[3] = &unk_100021768;
  v9 = _Block_copy(v13);

  v10 = [objc_opt_self() actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v6 addAction:v10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

void sub_1000102BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100010324(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v2, 32, 7);
}

uint64_t sub_100010388()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000103E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100010400(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = (v24 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000160AC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = a3[7];
    v11 = a3[8];
    v12 = *(a2 + v10);
    *(a1 + v10) = v12;
    *(a1 + v11) = *(a2 + v11);
    v13 = a3[9];
    v14 = sub_1000164AC();
    v15 = *(*(v14 - 8) + 16);
    v16 = v9;
    v17 = v12;
    v15(a1 + v13, a2 + v13, v14);
    v18 = a3[10];
    v19 = (a1 + v18);
    v20 = (a2 + v18);
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v22 = *(ReminderView - 8);
    if ((*(v22 + 48))(v20, 1, ReminderView))
    {
      v23 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
      memcpy(v19, v20, *(*(v23 - 8) + 64));
    }

    else
    {
      v25 = *v20;
      *v19 = *v20;
      v26 = *(ReminderView + 20);
      v27 = sub_100015C8C();
      v41 = *(*(v27 - 8) + 16);
      v28 = v25;
      v41(v19 + v26, v20 + v26, v27);
      v29 = *(ReminderView + 24);
      v30 = *(v20 + v29);
      *(v19 + v29) = v30;
      v31 = *(v22 + 56);
      v32 = v30;
      v31(v19, 0, 1, ReminderView);
    }

    v33 = a3[11];
    v34 = a1 + v33;
    v35 = a2 + v33;
    v36 = v35[8];
    if (v36 == 255)
    {
      *v34 = *v35;
      v34[8] = v35[8];
    }

    else
    {
      v37 = *v35;
      v38 = v36 & 1;
      v39 = *v35;
      *v34 = v37;
      v34[8] = v38;
    }
  }

  return a1;
}

void sub_1000106D8(uint64_t a1, int *a2)
{
  v4 = sub_1000160AC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[9];
  v6 = sub_1000164AC();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = (a1 + a2[10]);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  if (!(*(*(ReminderView - 8) + 48))(v7, 1, ReminderView))
  {

    v9 = *(ReminderView + 20);
    v10 = sub_100015C8C();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  v11 = a1 + a2[11];
  if (*(v11 + 8) != 255)
  {
    v12 = *v11;
  }
}

uint64_t sub_100010874(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = a3[8];
  v11 = *(a2 + v9);
  *(a1 + v9) = v11;
  *(a1 + v10) = *(a2 + v10);
  v12 = a3[9];
  v13 = sub_1000164AC();
  v14 = *(*(v13 - 8) + 16);
  v15 = v8;
  v16 = v11;
  v14(a1 + v12, a2 + v12, v13);
  v17 = a3[10];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v21 = *(ReminderView - 8);
  if ((*(v21 + 48))(v19, 1, ReminderView))
  {
    v22 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    v23 = *v19;
    *v18 = *v19;
    v24 = *(ReminderView + 20);
    v25 = sub_100015C8C();
    v39 = *(*(v25 - 8) + 16);
    v26 = v23;
    v39(v18 + v24, v19 + v24, v25);
    v27 = *(ReminderView + 24);
    v28 = *(v19 + v27);
    *(v18 + v27) = v28;
    v29 = *(v21 + 56);
    v30 = v28;
    v29(v18, 0, 1, ReminderView);
  }

  v31 = a3[11];
  v32 = a1 + v31;
  v33 = (a2 + v31);
  v34 = *(v33 + 8);
  if (v34 == 255)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
  }

  else
  {
    v35 = *v33;
    v36 = v34 & 1;
    v37 = *v33;
    *v32 = v35;
    *(v32 + 8) = v36;
  }

  return a1;
}

uint64_t sub_100010AE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = a3[7];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);
  *(a1 + v11) = v12;
  v14 = v12;

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v15 = a3[9];
  v16 = sub_1000164AC();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  v17 = a3[10];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v21 = *(ReminderView - 8);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, ReminderView);
  v24 = v22(v19, 1, ReminderView);
  if (v23)
  {
    if (!v24)
    {
      v25 = *v19;
      *v18 = *v19;
      v26 = *(ReminderView + 20);
      v27 = sub_100015C8C();
      v58 = *(*(v27 - 8) + 16);
      v28 = v25;
      v58(v18 + v26, v19 + v26, v27);
      v29 = *(ReminderView + 24);
      v30 = *(v19 + v29);
      *(v18 + v29) = v30;
      v31 = *(v21 + 56);
      v32 = v30;
      v31(v18, 0, 1, ReminderView);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v24)
  {
    sub_100010E58(v18);
LABEL_6:
    v33 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v18, v19, *(*(v33 - 8) + 64));
    goto LABEL_7;
  }

  v47 = *v19;
  v48 = *v18;
  *v18 = *v19;
  v49 = v47;

  v50 = *(ReminderView + 20);
  v51 = sub_100015C8C();
  (*(*(v51 - 8) + 24))(v18 + v50, v19 + v50, v51);
  v52 = *(ReminderView + 24);
  v53 = *(v18 + v52);
  v54 = *(v19 + v52);
  *(v18 + v52) = v54;
  v55 = v54;

LABEL_7:
  v34 = a3[11];
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *(a1 + v34 + 8);
  v38 = *(v36 + 8);
  if (v37 == 255)
  {
    if (v38 == 255)
    {
      v56 = *v36;
      *(v35 + 8) = *(v36 + 8);
      *v35 = v56;
    }

    else
    {
      v43 = *v36;
      v44 = v38 & 1;
      v45 = v43;
      *v35 = v43;
      *(v35 + 8) = v44;
    }
  }

  else if (v38 == 255)
  {
    sub_100010EB4(v35);
    v46 = *(v36 + 8);
    *v35 = *v36;
    *(v35 + 8) = v46;
  }

  else
  {
    v39 = *v36;
    v40 = v38 & 1;
    v41 = v39;
    v42 = *v35;
    *v35 = v39;
    *(v35 + 8) = v40;
  }

  return a1;
}

uint64_t sub_100010E58(uint64_t a1)
{
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  (*(*(ReminderView - 8) + 8))(a1, ReminderView);
  return a1;
}

uint64_t sub_100010EE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[9];
  v10 = sub_1000164AC();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v15 = *(ReminderView - 8);
  if ((*(v15 + 48))(v13, 1, ReminderView))
  {
    v16 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
  }

  else
  {
    *v12 = *v13;
    v17 = *(ReminderView + 20);
    v18 = sub_100015C8C();
    (*(*(v18 - 8) + 32))(v12 + v17, v13 + v17, v18);
    *(v12 + *(ReminderView + 24)) = *(v13 + *(ReminderView + 24));
    (*(v15 + 56))(v12, 0, 1, ReminderView);
  }

  v19 = a3[11];
  v20 = a1 + v19;
  v21 = a2 + v19;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  return a1;
}

uint64_t sub_1000110F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v12 = sub_1000164AC();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[10];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v17 = *(ReminderView - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, ReminderView);
  v20 = v18(v15, 1, ReminderView);
  if (v19)
  {
    if (!v20)
    {
      *v14 = *v15;
      v21 = *(ReminderView + 20);
      v22 = sub_100015C8C();
      (*(*(v22 - 8) + 32))(v14 + v21, v15 + v21, v22);
      *(v14 + *(ReminderView + 24)) = *(v15 + *(ReminderView + 24));
      (*(v17 + 56))(v14, 0, 1, ReminderView);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v20)
  {
    sub_100010E58(v14);
LABEL_6:
    v23 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v14, v15, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  v30 = *v14;
  *v14 = *v15;

  v31 = *(ReminderView + 20);
  v32 = sub_100015C8C();
  (*(*(v32 - 8) + 40))(v14 + v31, v15 + v31, v32);
  v33 = *(ReminderView + 24);
  v34 = *(v14 + v33);
  *(v14 + v33) = *(v15 + v33);

LABEL_7:
  v24 = a3[11];
  v25 = a1 + v24;
  v26 = a2 + v24;
  if (*(a1 + v24 + 8) == 255)
  {
LABEL_11:
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    return a1;
  }

  v27 = *(v26 + 8);
  if (v27 == 255)
  {
    sub_100010EB4(v25);
    goto LABEL_11;
  }

  v28 = *v25;
  *v25 = *v26;
  *(v25 + 8) = v27 & 1;

  return a1;
}

uint64_t sub_10001140C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000164AC();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000115A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000160AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_1000164AC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_100011740(uint64_t a1)
{
  sub_1000160AC();
  if (v1 <= 0x3F)
  {
    sub_1000164AC();
    if (v2 <= 0x3F)
    {
      sub_100011868(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_100011868(uint64_t a1)
{
  if (!qword_100025EC8)
  {
    type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(255);
    v1 = sub_100016A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_100025EC8);
    }
  }
}

uint64_t _s51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderViewModelV5ImageOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = *a1;
  *a1 = v3;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t assignWithTake for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderViewModel.Image(uint64_t result, unsigned int a2, unsigned int a3)
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

void **sub_100011A5C(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_100015C8C();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    v12 = *(a3 + 24);
    v13 = *(a2 + v12);
    *(v6 + v12) = v13;
    v14 = v13;
  }

  return v6;
}

void sub_100011B48(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_100015C8C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 24));
}

void **sub_100011BD0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = sub_100015C8C();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  v11 = *(a3 + 24);
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;
  v13 = v12;
  return a1;
}

void **sub_100011C74(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_100015C8C();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

char *sub_100011D14(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_100015C8C();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **sub_100011D9C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_100015C8C();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_100011E48(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100015C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100011F08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100015C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100011FAC(uint64_t a1)
{
  result = sub_100015C8C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100012070(void *a1, void *a2)
{
  sub_100007C80(0, &qword_100025828, NSObject_ptr);
  if (sub_100016A3C())
  {
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    if (sub_100015C6C())
    {
      v5 = *(ReminderView + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_100007C80(0, &qword_100025830, LPLinkMetadata_ptr);
          v8 = v7;
          v9 = v6;
          v10 = sub_100016A3C();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_100012150(void *a1, char a2, void *a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_100007C80(0, &qword_100025828, NSObject_ptr);
      return sub_100016A3C() & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  sub_100007C80(0, &qword_100025838, UIImage_ptr);
  v6 = a3;
  v7 = a1;
  v8 = sub_100016A3C();

  result = 1;
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000122DC()
{
  v0 = sub_10001687C();
  sub_10000C73C(v0, qword_100025FA8);
  v1 = sub_10000C698(v0, qword_100025FA8);
  if (qword_100025518 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C698(v0, qword_100026138);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000123A4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver] = 0;
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected] = 0;
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_isFirstUpdate] = 1;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell] = 0;
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_detailViewHasBeenAutomaticallyShown] = 0;
  sub_100015AB0(&qword_100025D28, v5, type metadata accessor for TTRIExtensionCreateReminderViewController, &unk_100018164);
  sub_100015E2C();
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter] = v8[1];
  v8[0].receiver = v2;
  v8[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v6 = [(objc_super *)v8 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v6)
  {
  }

  return v6;
}

void *sub_100012544()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v7 = *(ReminderViewModel - 8);
  __chkstk_darwin(ReminderViewModel);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidLoad");
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  sub_10001698C();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  sub_100015D5C();
  v13 = sub_1000168AC();

  [v12 setAccessibilityIdentifier:v13];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  [result setEditing:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v15 = result;
  [result setKeyboardDismissMode:3];

  sub_100012858();
  v16 = *&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
  v17 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_100007E28(v16 + v17, v5, &qword_100025B58, &qword_100017CE0);
  if ((*(v7 + 48))(v5, 1, ReminderViewModel) == 1)
  {
    sub_100007DC8(v5, &qword_100025B58, &qword_100017CE0);
  }

  else
  {
    sub_1000158A0(v5, v9, type metadata accessor for TTRIExtensionCreateReminderViewModel);
    sub_100012E48(v9);
    sub_10000CA68(v9);
  }

  sub_10001630C();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver] = sub_1000162FC();

  sub_10001658C();
}

void sub_100012858()
{
  v1 = sub_100015FAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004FAC(&qword_1000260A8, &unk_1000181E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v38 - v9;
  if (![v0 isViewLoaded])
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController])
  {
    v39 = v1;
    v40 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController;
    v41 = v2;
    sub_100004FAC(&qword_1000258A8, &qword_100017820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100018050;
    v16 = sub_10001619C();
    v17 = *(*(v16 - 8) + 56);
    v17(v10, 1, 1, v16);
    v17(v8, 1, 1, v16);
    v44 = sub_100004FAC(&qword_1000260B0, &qword_1000181F8);
    v18 = swift_allocObject();
    v43 = xmmword_100017D30;
    *(v18 + 16) = xmmword_100017D30;
    v42 = v0;
    v19 = sub_100013C94();
    v20 = sub_100015908(&qword_1000260B8, &qword_100026090, &unk_1000181D8);
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    sub_100015DBC();
    swift_allocObject();
    *(inited + 32) = sub_100015DAC();
    v38[1] = inited + 32;
    v17(v10, 1, 1, v16);
    v17(v8, 1, 1, v16);
    v21 = swift_allocObject();
    *(v21 + 16) = v43;
    v22 = sub_100013E3C();
    v23 = sub_100015908(&qword_1000260C0, &qword_100026088, &qword_1000181D0);
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    swift_allocObject();
    *(inited + 40) = sub_100015DAC();
    v17(v10, 1, 1, v16);
    v17(v8, 1, 1, v16);
    v24 = swift_allocObject();
    *(v24 + 16) = v43;
    v25 = v42;
    v26 = sub_100013F94();
    v27 = sub_100015908(&qword_1000260C8, &qword_100026050, &qword_1000181A0);
    *(v24 + 32) = v26;
    *(v24 + 40) = v27;
    swift_allocObject();
    *(inited + 48) = sub_100015DAC();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v46 = sub_100015854();
      v47 = &protocol witness table for UITableView;
      v45 = v29;
      sub_100014484(inited);
      (*(v41 + 104))(v4, enum case for TTRTableViewAnimations.middle(_:), v39);
      v30 = objc_allocWithZone(sub_10001600C());
      v31 = sub_100015FFC();
      sub_100015FDC();
      v32 = *&v25[v40];
      *&v25[v40] = v31;
      v33 = v31;

      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        v35 = v34;
        [v34 setDataSource:v33];

        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {
          v37 = v36;
          swift_setDeallocating();
          swift_arrayDestroy();
          [v37 setDelegate:v33];

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_100025520 != -1)
  {
    swift_once();
  }

  v11 = sub_10001687C();
  sub_10000C698(v11, qword_100025FA8);
  v44 = sub_10001686C();
  v12 = sub_1000169AC();
  if (os_log_type_enabled(v44, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v44, v12, "buildSections is called more than once", v13, 2u);
  }

  v14 = v44;
}

id sub_100012E48(char *a1)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_10001671C();
  v61 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004FAC(&qword_100026058, &qword_1000181A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_100015FEC();
  v59 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004FAC(&qword_100025800, &qword_1000181B0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = sub_100004FAC(&qword_100026060, &qword_1000181B8);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  result = [v2 isViewLoaded];
  if (result)
  {
    v57 = v5;
    v58 = v3;
    sub_100013C94();
    v25 = sub_100015D1C();

    sub_10001614C();

    v26 = sub_100004FAC(&qword_100025B70, &qword_1000181C0);
    v27 = (*(*(v26 - 8) + 48))(v23, 1, v26);
    sub_100007DC8(v23, &qword_100026060, &qword_1000181B8);
    if (v27 == 1)
    {

      v28 = sub_100015D1C();

      v30 = sub_100015AB0(&qword_100026068, v29, type metadata accessor for TTRIExtensionCreateReminderViewController, &unk_1000180B4);
      sub_1000096B4(v2, v30, v2, v21);
      sub_10001615C();
    }

    sub_100013E3C();
    v31 = sub_100015D1C();

    v32 = qword_1000260F0;
    swift_beginAccess();
    sub_100007E28(v31 + v32, v17, &qword_100025800, &qword_1000181B0);

    v33 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
    LODWORD(v31) = (*(*(v33 - 8) + 48))(v17, 1, v33);
    sub_100007DC8(v17, &qword_100025800, &qword_1000181B0);
    if (v31 == 1)
    {

      v34 = sub_100015D1C();

      v36 = sub_100015AB0(&qword_100026070, v35, type metadata accessor for TTRIExtensionCreateReminderViewController, &unk_10001808C);
      sub_1000096D0(v2, v36, v2, v15);
      sub_100001F64(v15);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v37 = result;
    ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
    v39 = v60;
    [v37 setEnabled:v60[*(ReminderViewModel + 20)]];

    v40 = v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_isFirstUpdate];
    v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_isFirstUpdate] = 0;
    v41 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController];
    if (v41)
    {
      *v11 = v40 ^ 1;
      v42 = v59;
      v43 = (*(v59 + 104))(v11, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v9);
      __chkstk_darwin(v43);
      *(&v57 - 2) = v2;
      *(&v57 - 1) = v39;
      v44 = v41;
      sub_100015FCC();

      (*(v42 + 8))(v11, v9);
    }

    v45 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
    swift_getObjectType();
    sub_1000165DC();
    v46 = v61;
    v47 = v58;
    if ((*(v61 + 48))(v8, 1, v58) == 1)
    {
      return sub_100007DC8(v8, &qword_100026058, &qword_1000181A8);
    }

    v48 = v57;
    sub_10001670C();
    sub_100015AB0(&qword_100026078, 255, &type metadata accessor for TTRExtensionCreateReminderInteractorRequestedActions, &protocol conformance descriptor for TTRExtensionCreateReminderInteractorRequestedActions);
    v49 = sub_100016A7C();
    v50 = *(v46 + 8);
    v50(v48, v47);
    result = (v50)(v8, v47);
    if (v49)
    {
      v51 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected;
      if ((v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected] & 1) == 0 && (*(v45 + 48) & 1) == 0)
      {
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v53 = [v2 transitionCoordinator];
        if (v53)
        {
          v54 = v53;
          if ([v53 isAnimated])
          {

            v55 = swift_allocObject();
            *(v55 + 16) = sub_1000157E4;
            *(v55 + 24) = v52;
            aBlock[4] = sub_1000103C0;
            aBlock[5] = v55;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100015074;
            aBlock[3] = &unk_100021900;
            v56 = _Block_copy(aBlock);

            [v54 animateAlongsideTransition:v56 completion:0];

            _Block_release(v56);
            result = swift_unknownObjectRelease();
LABEL_19:
            v2[v51] = 1;
            return result;
          }

          swift_unknownObjectRelease();
        }

        sub_100014FAC(v52);

        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t sub_100013708(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v6[3] = sub_100015854();
    v6[4] = &protocol witness table for UITableView;
    v6[0] = v4;
    sub_1000169EC();
    sub_10000CDB0(v6);
    sub_100015AB0(&qword_100026098, v5, type metadata accessor for TTRIExtensionCreateReminderViewController, &unk_1000180FC);
    result = sub_100015F0C();
    if (*&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver])
    {

      sub_1000162EC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100013928()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout) == 1)
  {
    *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10001583C;
    *(v4 + 24) = v3;
    v8[4] = sub_1000103C0;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100012278;
    v8[3] = &unk_100021978;
    v5 = _Block_copy(v8);
    v6 = v0;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100013C94()
{
  v1 = v0;
  v2 = sub_100004FAC(&qword_100026080, &qword_1000181C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell;
  if (*(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell))
  {
    v6 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell);
  }

  else
  {
    v11._countAndFlagsBits = 0x656C746954;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    v12._object = 0x8000000100019E00;
    v11._object = 0xE500000000000000;
    sub_100015E0C(v11, v12);
    v7 = sub_10001638C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = objc_allocWithZone(sub_10001618C());
    sub_10001613C();
    sub_100004FAC(&qword_100026090, &unk_1000181D8);
    swift_allocObject();
    v6 = sub_100015D2C();
    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100013E3C()
{
  v1 = v0;
  v2 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell;
  if (*(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell))
  {
    v6 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell);
  }

  else
  {
    ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
    (*(*(ReminderNotesCellContentState - 8) + 56))(v4, 1, 1, ReminderNotesCellContentState);
    v8 = objc_allocWithZone(type metadata accessor for TTRIExtensionCreateReminderNotesCellContent(0));
    sub_10000218C(0xD00000000000001CLL, 0x8000000100019DE0, v4);
    sub_100004FAC(&qword_100026088, &qword_1000181D0);
    swift_allocObject();
    v6 = sub_100015D2C();
    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100013F94()
{
  v1 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell;
  if (*(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell);
  }

  else
  {
    v2 = sub_100013FFC(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100013FFC(uint64_t a1)
{
  v1 = sub_100015E3C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004FAC(&qword_100026048, &qword_100018198);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_100015E5C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000162AC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v15._countAndFlagsBits = 0x736C6961746544;
  v17._object = 0x8000000100019D50;
  v15._object = 0xE700000000000000;
  v17._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100015E0C(v15, v17);
  v16._countAndFlagsBits = 0x7265646E696D6552;
  v18._countAndFlagsBits = 0xD000000000000028;
  v18._object = 0x8000000100019D70;
  v16._object = 0xE900000000000073;
  sub_100015E0C(v16, v18);
  (*(v2 + 104))(v4, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v1);
  sub_100015E4C();
  v10 = objc_allocWithZone(sub_10001629C());
  v11 = sub_10001628C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v11;

  sub_100015F6C();

  sub_100004FAC(&qword_100026050, &qword_1000181A0);
  swift_allocObject();
  return sub_100015D2C();
}

void sub_100014318(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000169DC();
    [v2 resignFirstResponder];
    v3 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10001660C();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_10000ED38;
    *(v5 + 24) = v4;
    swift_unknownObjectRetain();
    v6 = sub_1000167FC();
    sub_10001680C();

    swift_unknownObjectRelease();
  }
}

void *sub_100014484(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100016AFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10001595C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = sub_100016ABC();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_10001595C((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &protocol witness table for TTRITableSection;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_10001595C((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        v15[4] = v13;
        v15[5] = &protocol witness table for TTRITableSection;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001461C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  __chkstk_darwin(v3 - 8);
  v58 = &v48 - v4;
  v5 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
  __chkstk_darwin(v5 - 8);
  v51 = &v48 - v6;
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v49 = *(ReminderView - 8);
  v50 = ReminderView;
  __chkstk_darwin(ReminderView);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_1000164AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000160AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100004FAC(&qword_100026080, &qword_1000181C8);
  __chkstk_darwin(v20 - 8);
  v22 = &v48 - v21;
  v61 = a1;
  sub_100013C94();
  v23 = sub_100015D1C();

  v24 = *(v17 + 16);
  v25 = v52;
  v56 = v17 + 16;
  v57 = v16;
  v55 = v24;
  v24(v19, v52, v16);
  v26 = v25;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v28 = *(v26 + ReminderViewModel[6]);
  v29 = *(v13 + 16);
  v53 = ReminderViewModel[9];
  v54 = v29;
  v59 = v13 + 16;
  v60 = v12;
  v29(v15, v26 + v53, v12);
  v30 = v28;
  sub_10001637C();
  v31 = sub_10001638C();
  (*(*(v31 - 8) + 56))(v22, 0, 1, v31);
  sub_100015EAC();

  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v33 = *(*(ReminderNotesCellContent - 8) + 56);
  v33(v11, 1, 1, ReminderNotesCellContent);
  v34 = v26 + ReminderViewModel[11];
  v35 = *(v34 + 8);
  if (v35 != 255)
  {
    v36 = *v34;
    v37 = v35 & 1;
    v38 = *v34;
    sub_100007DC8(v11, &qword_1000256A0, &unk_1000176F0);
    *v11 = v36;
    v11[8] = v37;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v33(v11, 0, 1, ReminderNotesCellContent);
    goto LABEL_7;
  }

  v39 = v48;
  v40 = v51;
  sub_100007E28(v26 + ReminderViewModel[10], v51, &qword_100025B78, &unk_100017D00);
  if ((*(v49 + 48))(v40, 1, v50) != 1)
  {
    sub_100007DC8(v11, &qword_1000256A0, &unk_1000176F0);
    sub_1000158A0(v40, v39, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_1000158A0(v39, v11, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    goto LABEL_6;
  }

  sub_100007DC8(v40, &qword_100025B78, &unk_100017D00);
LABEL_7:
  sub_100013E3C();
  v41 = sub_100015D1C();

  v42 = v58;
  v55(v58, v26, v57);
  v43 = *(v26 + ReminderViewModel[7]);
  v44 = *(v26 + ReminderViewModel[8]);
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v54(&v42[ReminderNotesCellContentState[7]], v26 + v53, v60);
  sub_100007E28(v11, &v42[ReminderNotesCellContentState[8]], &qword_1000256A0, &unk_1000176F0);
  *&v42[ReminderNotesCellContentState[5]] = v43;
  v42[ReminderNotesCellContentState[6]] = v44;
  (*(*(ReminderNotesCellContentState - 1) + 56))(v42, 0, 1, ReminderNotesCellContentState);
  v46 = v43;
  sub_100015EAC();

  return sub_100007DC8(v11, &qword_1000256A0, &unk_1000176F0);
}

void sub_100014C78(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong performBatchUpdates:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100014DD8()
{
  v0 = sub_100004FAC(&qword_100025B70, &qword_1000181C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100004FAC(&qword_100026060, &qword_1000181B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_100013C94();
  v7 = sub_100015D1C();

  sub_10001614C();

  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_100007DC8(v6, &qword_100026060, &qword_1000181B8);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_100007DC8(v6, &qword_100026060, &qword_1000181B8);
    sub_1000161BC();
    (*(v1 + 8))(v3, v0);
    return v9;
  }
}

void sub_100014FAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100013C94();

    v3 = sub_100015D1C();

    sub_10001616C();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_100013C94();

    v6 = sub_100015D1C();

    sub_10001617C();
  }
}

uint64_t sub_100015074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000150D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100015E3C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004FAC(&qword_100026048, &qword_100018198);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_100015E5C();
  __chkstk_darwin(v10 - 8);
  v11 = *(v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController);
  v20 = v3;
  if (!v11)
  {
    if (qword_100025520 != -1)
    {
      swift_once();
    }

    v12 = sub_10001687C();
    sub_10000C698(v12, qword_100025FA8);
    v13 = sub_10001686C();
    v14 = sub_1000169AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "buildSections hasn't been called when update(listName:)", v15, 2u);
    }
  }

  sub_100013F94();
  v16 = sub_100015D1C();

  v17 = sub_1000162AC();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v21._countAndFlagsBits = 0x736C6961746544;
  v22._object = 0x8000000100019D50;
  v21._object = 0xE700000000000000;
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100015E0C(v21, v22);
  (*(v4 + 104))(v6, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v20);

  sub_100015E4C();
  sub_100015EAC();

  sub_100015D0C(0);
}

uint64_t sub_100015454()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015480(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return TTRKeyboardAvoidance<>.shouldAvoidKeyboard.getter(ObjectType, a2);
}

uint64_t sub_1000154BC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_100015F0C();
}

uint64_t sub_1000154F8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_100015EFC();
}

uint64_t sub_100015534(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillShow(duration:)(ObjectType, a3, v6);
}

uint64_t sub_100015580(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillHide(duration:)(ObjectType, a3, v6);
}

uint64_t sub_1000155CC(double a1, double a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return TTRKeyboardAvoidance<>.setKeyboardAvoidanceBottomInset(_:duration:)(ObjectType, a4, v8, v9);
}

void sub_100015628()
{
  v0._object = 0x8000000100019710;
  v0._countAndFlagsBits = 0xD000000000000011;
  sub_100015DCC(v0);
}

void sub_10001567C()
{
  v0[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout] = 1;
  v1 = [v0 viewIfLoaded];
  [v1 setNeedsLayout];
}

uint64_t sub_1000156E4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100015724()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001576C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000157EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015804()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100015854()
{
  result = qword_1000260A0;
  if (!qword_1000260A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000260A0);
  }

  return result;
}

uint64_t sub_1000158A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100015908(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003600(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10001595C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001597C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001597C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004FAC(&qword_1000260D0, &qword_100018200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004FAC(&qword_1000260D8, &qword_100018208);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100015AB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__int128 *_s51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewControllerC8ArgumentVwCP_0(__int128 *a1, __int128 *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for TTRIExtensionCreateReminderViewController.Argument(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v3;
  return a1;
}

void *assignWithTake for TTRIExtensionCreateReminderViewController.Argument(void *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderViewController.Argument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}