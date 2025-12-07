id sub_21D938210()
{
  if (*(v0 + qword_27CE63F40 + 8))
  {
    v1 = *(v0 + qword_27CE5AF20);
    [v1 setEdgesPreservingSuperviewLayoutMargins_];
    [v1 directionalLayoutMargins];
    v2 = 8.0;
    v3 = v1;
  }

  else
  {
    v4 = *(v0 + qword_27CE63F40);
    v5 = *(v0 + qword_27CE5AF20);
    [v5 setEdgesPreservingSuperviewLayoutMargins_];
    [v5 directionalLayoutMargins];
    v3 = v5;
    v2 = v4;
  }

  return [v3 setDirectionalLayoutMargins_];
}

id TTRIReminderAttributedTextTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIReminderAttributedTextTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[qword_27CE63F30] = 0;
  v3[qword_27CE63F38] = 0;
  v8 = &v3[qword_27CE63F40];
  *v8 = 0;
  v8[8] = 1;
  v34 = 0;
  v9 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v10 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 5, 0, &v34, 0);
  v11 = qword_280D176B8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_21D900614(1);
  [v12 setFont_];

  [v12 setAdjustsFontForContentSizeCategory_];
  v14 = [objc_opt_self() labelColor];
  [v12 setTextColor_];

  [v12 setEditable_];
  v15 = v12;
  [v15 setBackgroundColor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = v15;
  v17 = objc_allocWithZone(MEMORY[0x277CEC628]);
  sub_21D114EC8();
  v18 = sub_21DBFA5DC();

  v19 = [v17 initWithArrangedSubviews_];

  [v19 setLayoutMarginsRelativeArrangement_];
  v20 = v19;
  [v20 setPreservesSuperviewLayoutMargins_];
  [v20 setLayoutMargins_];
  [v20 setCustomAlignmentRectInsets_];
  *&v4[qword_27CE63F48] = v15;
  v21 = v15;
  if (a3)
  {
    v22 = sub_21DBFA12C();
  }

  else
  {
    v22 = 0;
  }

  v33.receiver = v4;
  v33.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v33, sel_initWithStyle_reuseIdentifier_, a1, v22);

  v24 = qword_27CE5AF20;
  v25 = *&v23[qword_27CE5AF20];
  v26 = v23;
  [v25 setHorizontalAlignment_];
  v27 = *&v23[v24];
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21DC09CF0;
  *(v28 + 32) = v20;
  v29 = v27;
  v30 = sub_21DBFA5DC();

  [v29 setArrangedSubviews_];

  if (v26[qword_27CE63F30])
  {
    v31 = 0;
  }

  else
  {
    v31 = 3;
  }

  [*&v23[v24] setVerticalAlignment_];

  return v26;
}

char *sub_21D93873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIReminderAttributedTextTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

void TTRIReminderAttributedTextTableViewCell.preferredSeparatorInsetType.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + qword_27CE63F38))
  {
    v3 = 0;
LABEL_13:
    *a1 = v3;
    return;
  }

  v4 = [*(v1 + qword_27CE5AF20) arrangedSubviews];
  if (!v4)
  {
LABEL_12:
    v3 = 1;
    goto LABEL_13;
  }

  v5 = v4;
  sub_21D114EC8();
  v6 = sub_21DBFA5EC();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!sub_21DBFBD7C())
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D44740](0, v6);
    goto LABEL_9;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_9:
    v3 = v7;

    goto LABEL_13;
  }

  __break(1u);
}

id TTRIReminderAttributedTextTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIReminderAttributedTextTableViewCell.init(coder:)()
{
  *(v0 + qword_27CE63F30) = 0;
  *(v0 + qword_27CE63F38) = 0;
  v1 = v0 + qword_27CE63F40;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D938958(uint64_t a1)
{
  *(a1 + qword_27CE63F30) = 0;
  *(a1 + qword_27CE63F38) = 0;
  v1 = a1 + qword_27CE63F40;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_21DBFC31C();
  __break(1u);
}

void TTRIReminderAttributedTextTableViewCell.init(reuseIdentifier:)()
{
  *(v0 + qword_27CE63F30) = 0;
  *(v0 + qword_27CE63F38) = 0;
  v1 = v0 + qword_27CE63F40;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_21DBFC31C();
  __break(1u);
}

void TTRIReminderAttributedTextTableViewCell.preferredMinHeightForInsetGrouppedStyle.getter(char *a1@<X8>)
{
  if (*(v1 + qword_27CE63F30) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    Height = CGRectGetHeight(v25);
    v14 = [v3 mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v26.origin.x = v16;
    v26.origin.y = v18;
    v26.size.width = v20;
    v26.size.height = v22;
    Width = CGRectGetWidth(v26);
    if (Height > Width)
    {
      Width = Height;
    }

    v24 = Width > 667.0;
  }

  else if (*(v1 + qword_27CE63F40 + 8))
  {
    v24 = 0;
  }

  else
  {
    v24 = 3;
  }

  *a1 = v24;
}

id TTRIReminderAttributedTextTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TTRIReminderAttributedTextTableViewCell(uint64_t a1)
{
  result = qword_27CE63F50;
  if (!qword_27CE63F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D938D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v9[2] = a2;
  v9[3] = v11;
  v5 = *(a2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D939630;
  *(v6 + 24) = v9;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_118;
  v7 = _Block_copy(aBlock);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_21D938E74(char *a1, uint64_t a2)
{
  v4 = *&a1[qword_27CE65590];
  v5 = sub_21DBFA12C();
  [v4 setText_];

  v6 = *&a1[qword_27CE63F70];
  v7 = sub_21DBFA12C();
  [v6 setText_];

  v8 = *(a2 + 80);
  v23 = *(a2 + 64);
  v24 = v8;
  v25 = *(a2 + 96);
  v9 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v9;
  v10 = &a1[qword_27CE655A0];
  swift_beginAccess();
  v11 = *(v10 + 3);
  v28 = *(v10 + 2);
  v29 = v11;
  v30 = v10[64];
  v12 = *(v10 + 1);
  v26 = *v10;
  v27 = v12;
  v31[2] = v28;
  v31[3] = v11;
  v32 = v30;
  v31[0] = v26;
  v31[1] = v12;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v10[64] = v25;
  *(v10 + 2) = v15;
  *(v10 + 3) = v16;
  *v10 = v13;
  *(v10 + 1) = v14;
  sub_21D1ADB0C(&v21, v19);
  sub_21D1ADB0C(&v26, v19);
  sub_21D0CF7E0(v31, &unk_27CE5EA00, &unk_21DC0A7C0);
  v19[2] = v28;
  v19[3] = v29;
  v20 = v30;
  v19[0] = v26;
  v19[1] = v27;
  sub_21DA7EF48(v19);
  sub_21D0CF7E0(&v26, &unk_27CE5EA00, &unk_21DC0A7C0);
  v17 = sub_21DBFA12C();
  [a1 setAccessibilityLabel_];

  v18 = sub_21DBFA12C();
  [a1 setAccessibilityValue_];
}

char *sub_21D9390D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v9 = sub_21D900614(1);
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setLineBreakMode_];
  v10 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC09CF0;
  *(v11 + 32) = v8;
  v12 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D114EC8();
  v13 = v8;
  v14 = sub_21DBFA5DC();

  v15 = [v12 initWithArrangedSubviews_];

  [v15 setAxis_];
  [v15 setDistribution_];
  [v15 setAlignment_];
  [v15 setSpacing_];
  *&v4[qword_27CE63F70] = v13;
  v16 = v13;
  if (a3)
  {
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  v33.receiver = v4;
  v33.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v33, sel_initWithStyle_reuseIdentifier_, a1, v17);

  type metadata accessor for TTRIDetailSectionTableViewCell.ExtraAccessoryProvider();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v13;
  v20 = &v18[qword_27CE65610];
  swift_beginAccess();
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  v25 = *(v20 + 4);
  *v20 = v19;
  *(v20 + 1) = &off_282EDBE80;
  *(v20 + 3) = 0;
  *(v20 + 4) = 0;
  *(v20 + 2) = 0;
  LOBYTE(v19) = v20[40];
  v20[40] = 2;
  v26 = v18;
  v27 = v13;
  v28 = v26;
  v29 = v15;
  sub_21D361B20(v21, v22, v23, v24, v25, v19);
  sub_21D361BB4(v21, v22, v23, v24, v25, v19);
  v31[0] = v21;
  v31[1] = v22;
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v19;
  sub_21DA7F6B4(v31);

  sub_21D361BB4(v21, v22, v23, v24, v25, v19);
  return v28;
}

char *sub_21D939458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D9390D8(a3, a4, v6);
}

unint64_t sub_21D9395DC()
{
  result = qword_27CE63F88;
  if (!qword_27CE63F88)
  {
    result = swift_getWitnessTable(byte_21DC32008, &type metadata for TTRISectionCellStateAdaptor.State, v0, v1);
    atomic_store(result, &qword_27CE63F88);
  }

  return result;
}

uint64_t TTRRemindersListReminderFormatter.DueDateSource.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void TTRRemindersListReminderFormatter.dueDateSource.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t TTRRemindersListReminderFormatter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TTRRemindersListReminderFormatter.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t TTRRemindersListReminderFormatter.localizedDescription(for:customDisplayDate:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_21D0D32E4(a1, v35);
  v35[5] = 0;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)(v11, v35, v33, MEMORY[0x277D84F90], v14);
  v16 = a2;
  if (a2)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v17 = *(v3 + 16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  if (v17)
  {
    (*(v19 + 160))(v18, v19);
    v20 = sub_21DBF509C();
    v21 = *(v20 - 8);
    v22 = 0;
    if ((*(v21 + 48))(v8, 1, v20) != 1)
    {
      v22 = sub_21DBF4EDC();
      (*(v21 + 8))(v8, v20);
    }

    v23 = objc_allocWithZone(MEMORY[0x277D44600]);
    sub_21D939B74();
    v24 = sub_21DBFA5DC();
    v16 = [v23 initWithDueDateComponents:v22 alarms:v24];

    if (v16)
    {
      goto LABEL_6;
    }

LABEL_10:
    v27 = 0;
    v28 = 0;
    goto LABEL_8;
  }

  v16 = (*(v19 + 104))(v18, v19);
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_6:
  v25 = v16;
LABEL_7:
  v32 = v16;
  v26 = a2;
  sub_21D939BC0(&v32, v33);

  v28 = *(&v33[0] + 1);
  v27 = *&v33[0];
LABEL_8:
  v29 = sub_21D939E8C(v14, v27, v28);

  sub_21D93A4EC(v14, type metadata accessor for TTRRemindersListViewModel.Reminder);
  return v29;
}

unint64_t sub_21D939B74()
{
  result = qword_280D17670;
  if (!qword_280D17670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17670);
  }

  return result;
}

uint64_t sub_21D939BC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 date];
  sub_21DBF55FC();

  LODWORD(v10) = [v9 isAllDay];
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v11 setDoesRelativeDateFormatting_];
  [v11 setDateStyle_];
  [v11 setTimeStyle_];
  v12 = sub_21DBF55BC();
  v13 = [v11 stringFromDate_];

  v14 = sub_21DBFA16C();
  v16 = v15;

  result = (*(v5 + 8))(v8, v4);
  *a2 = v14;
  a2[1] = v16;
  return result;
}

uint64_t sub_21D939D7C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      swift_beginAccess();
      v7 = *(a3 + 16);
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
        *(a3 + 16) = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_21D210A84((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[16 * v10];
      *(v11 + 4) = v4;
      *(v11 + 5) = a2;
      *(a3 + 16) = v7;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_21D939E8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v11 = *(a1 + v10[7]);
  if (v11)
  {
    v12 = [v11 string];
    v13 = sub_21DBFA16C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = *(a1 + v10[27]);
  switch(v16)
  {
    case 3:
      v17 = 539042081;
      v18 = 0xE400000000000000;
      break;
    case 2:
      v17 = 2105633;
      v18 = 0xE300000000000000;
      break;
    case 1:
      v17 = 8225;
      v18 = 0xE200000000000000;
      break;
    default:
      goto LABEL_11;
  }

  v48 = v17;
  v49 = v18;
  MEMORY[0x223D42AA0](v13, v15);

  v13 = v48;
  v15 = v49;
LABEL_11:
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v20 = swift_allocObject();
  *(v19 + 16) = v20;
  v45 = xmmword_21DC08D00;
  *(v20 + 16) = xmmword_21DC08D00;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  v21 = a3;
  if (!a3)
  {
    sub_21D93A414(a1 + v10[11], v7);
    if ((*(v44 + 48))(v7, 1, v8) == 1)
    {
      sub_21D93A484(v7);
      v46 = 0;
      v21 = 0;
    }

    else
    {
      v22 = v7;
      v23 = v43;
      sub_21D3DA2C4(v22, v43);
      v24 = *(v23 + *(v8 + 32));
      v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v25 setDoesRelativeDateFormatting_];
      [v25 setDateStyle_];
      [v25 setTimeStyle_];
      v26 = sub_21DBF55BC();
      v27 = [v25 stringFromDate_];

      v46 = sub_21DBFA16C();
      v21 = v28;

      sub_21D93A4EC(v23, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
    }
  }

  sub_21DBF8E0C();
  sub_21D939D7C(v46, v21, v19);

  v29 = *(a1 + v10[15]);
  if (v29)
  {
    v30 = [v29 string];
    v31 = sub_21DBFA16C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  sub_21D939D7C(v31, v33, v19);

  v34 = (a1 + v10[13]);
  v35 = v34[3];
  if (v35)
  {
    v37 = v34[4];
    v36 = v34[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v38 = swift_allocObject();
    *(v38 + 16) = v45;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_21D17A884();
    *(v38 + 32) = v37;
    *(v38 + 40) = v36;
    sub_21DBF8E0C();
    v39 = sub_21DBFA17C();
    v35 = v40;
  }

  else
  {
    v39 = 0;
  }

  sub_21D939D7C(v39, v35, v19);

  swift_beginAccess();
  v47 = *(v19 + 16);
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v41 = sub_21DBFA07C();

  return v41;
}

unint64_t sub_21D93A360()
{
  result = qword_27CE63F90;
  if (!qword_27CE63F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListReminderFormatter.DueDateSource, &type metadata for TTRRemindersListReminderFormatter.DueDateSource, v0, v1);
    atomic_store(result, &qword_27CE63F90);
  }

  return result;
}

uint64_t sub_21D93A414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D93A484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D93A4EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall TTRIReminderTitleCellContent.beginEditing()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v2 + qword_27CE63F48);
    v4 = [v3 window];
    [v4 makeKeyWindow];

    [v3 becomeFirstResponder];
  }
}

Swift::Void __swiftcall TTRIReminderTitleCellContent.selectAllText()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v2 + qword_27CE63F48);
    v4 = [v3 beginningOfDocument];
    v5 = [v3 endOfDocument];
    v6 = [v3 textRangeFromPosition:v4 toPosition:v5];

    [v3 setSelectedTextRange_];
  }
}

id TTRIReminderTitleCellContent.__allocating_init(placeholder:accessibilityIdentifier:isSeparatorHidden:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v35 = a4;
  v36 = a6;
  v33 = a5;
  v34 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240, &unk_21DC32120);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32[-v10];
  v12 = sub_21DBF56BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = objc_allocWithZone(v6);
  v17 = (v16 + qword_27CE8EBC8);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v38, "ReminderTitle-");
  HIBYTE(v38[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = (v16 + qword_27CE63F98);
  *v21 = a1;
  v21[1] = a2;
  *(v16 + qword_27CE63FA0) = v33;
  v22 = v38[0];
  v23 = v38[1];
  v24 = (v16 + qword_27CE8EBD0);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = v36;
  sub_21D0D3954(v36, v11, &qword_27CE62240, &unk_21DC32120);
  v27 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x68)) = 0;
  *(v16 + *((*v27 & *v16) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v27 & *v16) + 0x90)) = 0;
  sub_21D0D3954(v11, v16 + *((*v27 & *v16) + 0x78), &qword_27CE62240, &unk_21DC32120);
  *(v16 + *((*v27 & *v16) + 0x80)) = 0;
  v28 = (v16 + *((*v27 & *v16) + 0x88));
  *v28 = v22;
  v28[1] = v23;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62248, &qword_21DC2B1A0);
  v37.receiver = v16;
  v37.super_class = v29;
  v30 = objc_msgSendSuper2(&v37, sel_init);
  sub_21D0CF7E0(v26, &qword_27CE62240, &unk_21DC32120);
  sub_21D0CF7E0(v11, &qword_27CE62240, &unk_21DC32120);
  return v30;
}

double TTRIReminderTitleCellContent.titleModule.setter(uint64_t a1)
{
  v3 = &v1[qword_27CE8EBC8];
  swift_beginAccess();
  sub_21D93B5EC(a1, v3);
  swift_endAccess();
  if (!*v3)
  {
    goto LABEL_4;
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = v1;
  v6(v1, &protocol witness table for TTRIReminderTitleCellContent, ObjectType, v4);
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9)
  {
    v10 = *(v4 + 48);
    v11 = *(v9 + qword_27CE63F48);
    v10();
    swift_unknownObjectRelease();

LABEL_4:
    sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
    return result;
  }

  sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
  swift_unknownObjectRelease();
  return result;
}

uint64_t TTRIReminderTitleCellContentState.init(item:attributedTitle:hashtagVisibility:titleFont:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v11 = v10[7];
  result = sub_21D10596C(a1, a5, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a5 + v10[5]) = a2;
  *(a5 + v10[6]) = v9;
  *(a5 + v11) = a4;
  return result;
}

id TTRIReminderTitleCellContent.currentText.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [*(v2 + qword_27CE63F48) attributedText];
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall TTRIReminderTitleCellContent.endEditing()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [*(v2 + qword_27CE63F48) resignFirstResponder];
  }
}

id TTRIReminderTitleCellContentState.attributedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 20));

  return v1;
}

void TTRIReminderTitleCellContentState.attributedTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 20);

  *(v1 + v3) = a1;
}

double TTRIReminderTitleCellContentState.hashtagVisibility.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 24));

  sub_21DBF8E0C();
  return result;
}

void TTRIReminderTitleCellContentState.hashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 24);

  *(v1 + v3) = v2;
}

void *TTRIReminderTitleCellContentState.titleFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 28));
  v2 = v1;
  return v1;
}

void TTRIReminderTitleCellContentState.titleFont.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t TTRIReminderTitleCellContent.ttriAccessibilityIdentifierForTextView.getter()
{
  v1 = *(v0 + qword_27CE8EBD0);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIReminderTitleCellContent.titleModule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27CE8EBC8;
  swift_beginAccess();
  return sub_21D0D3954(v1 + v3, a1, &unk_27CE5F240, &unk_21DC104A0);
}

uint64_t (*TTRIReminderTitleCellContent.titleModule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = qword_27CE8EBC8;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D93B160;
}

void sub_21D93B160(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    if (*v5)
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 24);
      swift_unknownObjectRetain();
      v9 = v4;
      v8(v4, &protocol witness table for TTRIReminderTitleCellContent, ObjectType, v6);
      v10 = *((*MEMORY[0x277D85000] & *v9) + 0x68);
      swift_beginAccess();
      v11 = *&v9[v10];
      if (v11)
      {
        v12 = *(v6 + 48);
        v13 = *(v11 + qword_27CE63F48);
        v12();
      }

      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id TTRIReminderTitleCellContent.init(placeholder:accessibilityIdentifier:isSeparatorHidden:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v35 = a4;
  v36 = a6;
  v33 = a5;
  v34 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240, &unk_21DC32120);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32[-v11];
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = (v6 + qword_27CE8EBC8);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v38, "ReminderTitle-");
  HIBYTE(v38[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = (v6 + qword_27CE63F98);
  *v21 = a1;
  v21[1] = a2;
  *(v6 + qword_27CE63FA0) = v33;
  v22 = v38[0];
  v23 = v38[1];
  v24 = (v7 + qword_27CE8EBD0);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = v36;
  sub_21D0D3954(v36, v12, &qword_27CE62240, &unk_21DC32120);
  v27 = MEMORY[0x277D85000];
  *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0x68)) = 0;
  *(v7 + *((*v27 & *v7) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + *((*v27 & *v7) + 0x90)) = 0;
  sub_21D0D3954(v12, v7 + *((*v27 & *v7) + 0x78), &qword_27CE62240, &unk_21DC32120);
  *(v7 + *((*v27 & *v7) + 0x80)) = 0;
  v28 = (v7 + *((*v27 & *v7) + 0x88));
  *v28 = v22;
  v28[1] = v23;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62248, &qword_21DC2B1A0);
  v37.receiver = v7;
  v37.super_class = v29;
  v30 = objc_msgSendSuper2(&v37, sel_init);
  sub_21D0CF7E0(v26, &qword_27CE62240, &unk_21DC32120);
  sub_21D0CF7E0(v12, &qword_27CE62240, &unk_21DC32120);
  return v30;
}

uint64_t sub_21D93B5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F240, &unk_21DC104A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21D93B67C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & **a1) + 0x68);
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    result = [*(v5 + qword_27CE63F48) attributedText];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void TTRIReminderTitleCellContent.currentText.setter(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + qword_27CE63F48);
    if (a1)
    {
      v6 = v5;
      v7 = a1;
    }

    else
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v9 = v5;
      v7 = [v8 init];
    }

    v10 = a1;
    [v5 setAttributedText_];
  }

  else
  {
    v5 = a1;
  }
}

void (*TTRIReminderTitleCellContent.currentText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = [*(v6 + qword_27CE63F48) attributedText];
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 24) = v7;
  return sub_21D93B8EC;
}

void sub_21D93B8EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*(*a1 + 32) + *(*a1 + 40));
  if (a2)
  {
    if (v5)
    {
      v6 = *(v5 + qword_27CE63F48);
      if (v3)
      {
        v7 = v6;
        v8 = v3;
      }

      else
      {
        v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v13 = v6;
        v8 = [v12 init];
      }

      v14 = v3;
      [v6 setAttributedText_];

      v3 = *v4;
    }
  }

  else if (v5)
  {
    v9 = *(v5 + qword_27CE63F48);
    if (v3)
    {
      v10 = v9;
      v11 = v3;
    }

    else
    {
      v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v16 = v9;
      v11 = [v15 init];
    }

    v17 = v3;
    [v9 setAttributedText_];

    goto LABEL_13;
  }

  v9 = v3;
LABEL_13:

  free(v2);
}

double TTRIReminderTitleCellContent.didAssignCell(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + qword_27CE63F30);
  *(a1 + qword_27CE63F30) = 0;
  if (v4 == 1)
  {
    [*(a1 + qword_27CE5AF20) setVerticalAlignment_];
  }

  v5 = *(v2 + qword_27CE63FA0);
  v6 = *(a1 + qword_27CE63F38);
  *(a1 + qword_27CE63F38) = v5;
  if (v5 != v6)
  {
    [*(a1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  v7 = *(a1 + qword_27CE63F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 placeholderTextColor];
  v13 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v14 = MEMORY[0x277D740A8];
  *(inited + 40) = v12;
  v15 = *v14;
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = qword_280D176B8;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_21D900614(1);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 80) = v18;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v21 = sub_21DBF9E5C();

  v22 = [v19 initWithString:v20 attributes:v21];

  [v7 setAttributedPlaceholder_];
  v23 = sub_21DBFA12C();
  [v7 setAccessibilityIdentifier_];

  v24 = sub_21DBFA12C();
  [v7 setAccessibilityLabel_];

  v25 = &v7[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[8];
  *v25 = 5;
  v25[8] = 0;
  if ((v27 & 1) != 0 || v26 != 5)
  {
    [v7 invalidateIntrinsicContentSize];
  }

  v28 = (v2 + qword_27CE8EBC8);
  swift_beginAccess();
  if (*v28)
  {
    v30 = v28[1];
    ObjectType = swift_getObjectType();
    v32 = *(v30 + 48);
    swift_unknownObjectRetain();
    v32(v7, ObjectType, v30);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIReminderTitleCellContent.updateCell(_:)()
{
  v1 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240, &unk_21DC32120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520, &qword_21DC169F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-v12];
  v14 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  sub_21D0D3954(v0 + v14, v7, &qword_27CE62240, &unk_21DC32120);
  v15 = 1;
  if ((*(v2 + 48))(v7, 1, v1) != 1)
  {
    sub_21D10596C(v7, v4, type metadata accessor for TTRIReminderTitleCellContentState);
    sub_21D93C17C(v4, v13);
    sub_21D9412F0(v4, type metadata accessor for TTRIReminderTitleCellContentState);
    v15 = 0;
  }

  v16 = type metadata accessor for TTRReminderCellTitleViewModel(0);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  v17 = (v0 + qword_27CE8EBC8);
  swift_beginAccess();
  if (*v17)
  {
    v18 = v17[1];
    swift_endAccess();
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v13, v10, &qword_27CE5E520, &qword_21DC169F0);
    v20 = *(v18 + 8);
    v21 = *(v20 + 16);
    swift_unknownObjectRetain();
    v21(v10, ObjectType, v20);
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v13, &qword_27CE5E520, &qword_21DC169F0);
  }

  else
  {
    sub_21D0CF7E0(v13, &qword_27CE5E520, &qword_21DC169F0);
    return swift_endAccess();
  }
}

uint64_t sub_21D93C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10548C(a1, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  v7 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v8 = *(a1 + v7[5]);
  v9 = *(a1 + v7[7]);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v12 = qword_280D176B8;
    v13 = v8;
    if (v12 != -1)
    {
      swift_once();
    }

    v11 = sub_21D900614(1);
    v9 = 0;
  }

  v14 = *(a1 + v7[6]);
  v15 = objc_opt_self();
  sub_21DBF8E0C();
  v16 = v9;
  v17 = [v15 secondaryLabelColor];
  v18 = type metadata accessor for TTRReminderCellTitleViewModel(0);
  v19 = v18[7];
  v20 = a2 + v18[9];
  result = sub_21D10596C(v6, a2, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a2 + v18[5]) = 1;
  *(a2 + v19) = v8;
  *(a2 + v18[6]) = v11;
  *(a2 + v18[8]) = 0;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(a2 + v18[10]) = v14;
  *(a2 + v18[11]) = v17;
  *(a2 + v18[12]) = 0;
  return result;
}

double sub_21D93C394()
{

  sub_21D0CF7E0(v0 + qword_27CE8EBC8, &unk_27CE5F240, &unk_21DC104A0);

  return result;
}

id TTRIReminderTitleCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_21D93C434(uint64_t a1)
{

  sub_21D0CF7E0(a1 + qword_27CE8EBC8, &unk_27CE5F240, &unk_21DC104A0);

  return result;
}

void *TTRIReminderTitleCellContent.editableReminderCell(hosting:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void *sub_21D93C56C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL _s15RemindersUICore33TTRIReminderTitleCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v23 - v8);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
  v10 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
  sub_21D9412F0(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D9412F0(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v11 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 24);
  v13 = *(a2 + v12);
  if (*(a1 + v12))
  {
    if (!v13)
    {

      return 0;
    }

    sub_21DBF8E0C();
    v14 = sub_21DBF8E0C();
    v15 = sub_21D3220EC(v14, v13);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v13)
    {
      return 0;
    }
  }

  v16 = *(v11 + 28);
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
    v19 = v18;
    v20 = v17;
    v21 = sub_21DBFB63C();

    return (v21 & 1) != 0;
  }

  return !v18;
}

void sub_21D93C820(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240, &unk_21DC32120);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 3)
  {
    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    sub_21D0D3954(v1 + v14, v8, &qword_27CE62240, &unk_21DC32120);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE62240, &unk_21DC32120);
    }

    else
    {
      sub_21D10596C(v8, v12, type metadata accessor for TTRIReminderTitleCellContentState);
      v15 = *((*v13 & *v1) + 0x68);
      swift_beginAccess();
      v16 = *(v1 + v15);
      if (!v16 || (v17 = [*(v16 + qword_27CE63F48) attributedText]) == 0)
      {
        v17 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      }

      v18 = *(v9 + 20);

      *&v12[v18] = v17;
      sub_21D10548C(v12, v5, type metadata accessor for TTRIReminderTitleCellContentState);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_21D71E4D0(v5);
      sub_21D0CF7E0(v5, &qword_27CE62240, &unk_21DC32120);
      sub_21D9412F0(v12, type metadata accessor for TTRIReminderTitleCellContentState);
    }
  }
}

void **initializeBufferWithCopyOfBuffer for TTRIReminderTitleCellContentState(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v3, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v3, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v117 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v117(a1 + v39, v3 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (v3 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_130;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(v3, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, v3, v48);
              *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
            goto LABEL_130;
          case 8:
            *a1 = *v3;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_130:
            swift_storeEnumTagMultiPayload();
            goto LABEL_131;
        }

LABEL_35:
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_131:
        v105 = v6[5];
        v106 = v6[6];
        v107 = *(v3 + v105);
        *(a1 + v105) = v107;
        *(a1 + v106) = *(v3 + v106);
        v108 = v6[7];
        v109 = *(v3 + v108);
        *(a1 + v108) = v109;
        v110 = v107;
        sub_21DBF8E0C();
        v111 = v109;
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v20 = v3[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_130;
      }

      v31 = *v3;
      *a1 = *v3;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(v3 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
        goto LABEL_130;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_115;
          }

          goto LABEL_128;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_128;
        }

LABEL_114:
        v102 = *(v3 + v15);
        *(a1 + v15) = v102;
        v103 = v102;
        swift_storeEnumTagMultiPayload();
LABEL_129:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_130;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_115;
          }

LABEL_128:
          memcpy(a1 + v15, v3 + v15, *(v17 + 64));
          goto LABEL_129;
        }

        goto LABEL_114;
      }

LABEL_115:
      v104 = sub_21DBF563C();
      (*(*(v104 - 8) + 16))(a1 + v15, v3 + v15, v104);
      swift_storeEnumTagMultiPayload();
      goto LABEL_129;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v38 > 2)
        {
          goto LABEL_115;
        }

        if (v38 == 1)
        {
          goto LABEL_114;
        }

        if (v38 != 2)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v37 > 2)
        {
          goto LABEL_115;
        }

        if (v37 == 1)
        {
          goto LABEL_114;
        }

        if (v37 != 2)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_115;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v121 = v6;
      if (v13 > 4)
      {
        if (v13 <= 7)
        {
          if (v13 == 5 || v13 == 6)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

        if (v13 != 8 && v13 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
LABEL_92:
          v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v57 = v56[5];
          v58 = a1 + v57;
          v59 = v3 + v57;
          v60 = *(v3 + v57 + 8);
          if (v60)
          {
            v118 = v3;
            *v58 = *v59;
            *(v58 + 1) = v60;
            v61 = *(v59 + 2);
            v62 = *(v59 + 3);
            v63 = *(v59 + 4);
            v64 = *(v59 + 5);
            v66 = *(v59 + 6);
            v65 = *(v59 + 7);
            v113 = v59[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v113);
            *(v58 + 2) = v61;
            *(v58 + 3) = v62;
            *(v58 + 4) = v63;
            *(v58 + 5) = v64;
            *(v58 + 6) = v66;
            *(v58 + 7) = v65;
            v58[64] = v113;
            *(v58 + 65) = *(v59 + 65);
            v67 = v59[120];
            if (v67 == 255)
            {
              *(v58 + 72) = *(v59 + 72);
              *(v58 + 88) = *(v59 + 88);
              *(v58 + 104) = *(v59 + 104);
              v58[120] = v59[120];
            }

            else
            {
              v68 = *(v59 + 9);
              v114 = *(v59 + 10);
              v69 = *(v59 + 11);
              v70 = *(v59 + 12);
              v71 = *(v59 + 13);
              v72 = *(v59 + 14);
              v73 = v67 & 1;
              sub_21D0FB960(v68, v114, v69, v70, v71, v72, v67 & 1);
              *(v58 + 9) = v68;
              *(v58 + 10) = v114;
              *(v58 + 11) = v69;
              *(v58 + 12) = v70;
              *(v58 + 13) = v71;
              *(v58 + 14) = v72;
              v58[120] = v73;
            }

            v6 = v121;
            v58[121] = v59[121];
            v3 = v118;
          }

          else
          {
            v74 = *(v59 + 5);
            *(v58 + 4) = *(v59 + 4);
            *(v58 + 5) = v74;
            *(v58 + 6) = *(v59 + 6);
            *(v58 + 106) = *(v59 + 106);
            v75 = *(v59 + 1);
            *v58 = *v59;
            *(v58 + 1) = v75;
            v76 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v76;
          }

          *(a1 + v56[6]) = *(v3 + v56[6]);
          *(a1 + v56[7]) = *(v3 + v56[7]);
          *(a1 + v56[8]) = *(v3 + v56[8]);
          *(a1 + v56[9]) = *(v3 + v56[9]);
          *(a1 + v56[10]) = *(v3 + v56[10]);
          v77 = v56[11];
          v78 = *(v3 + v77);
          *(a1 + v77) = v78;
          v79 = v78;
          goto LABEL_130;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

LABEL_91:
          memcpy(a1, v3, *(*(v12 - 8) + 64));
          goto LABEL_92;
        }
      }

      v51 = *v3;
      *a1 = *v3;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v122 = v6;
    if (v23 > 4)
    {
      if (v23 <= 7)
      {
        if (v23 == 5 || v23 == 6)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

      if (v23 != 8 && v23 != 9)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
LABEL_100:
        v80 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v81 = v80[5];
        v82 = a1 + v81;
        v83 = v3 + v81;
        v84 = *(v3 + v81 + 8);
        if (v84)
        {
          *v82 = *v83;
          *(v82 + 1) = v84;
          v85 = *(v83 + 2);
          v86 = *(v83 + 3);
          v87 = *(v83 + 4);
          v88 = *(v83 + 5);
          v89 = *(v83 + 6);
          v119 = *(v83 + 7);
          v115 = v83[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v119, v115);
          *(v82 + 2) = v85;
          *(v82 + 3) = v86;
          *(v82 + 4) = v87;
          *(v82 + 5) = v88;
          *(v82 + 6) = v89;
          *(v82 + 7) = v119;
          v82[64] = v115;
          *(v82 + 65) = *(v83 + 65);
          v90 = v83[120];
          if (v90 == 255)
          {
            *(v82 + 72) = *(v83 + 72);
            *(v82 + 88) = *(v83 + 88);
            *(v82 + 104) = *(v83 + 104);
            v82[120] = v83[120];
          }

          else
          {
            v116 = *(v83 + 10);
            v120 = *(v83 + 9);
            v91 = *(v83 + 11);
            v92 = *(v83 + 12);
            v93 = *(v83 + 13);
            v94 = *(v83 + 14);
            v95 = v90 & 1;
            sub_21D0FB960(v120, v116, v91, v92, v93, v94, v90 & 1);
            *(v82 + 9) = v120;
            *(v82 + 10) = v116;
            *(v82 + 11) = v91;
            *(v82 + 12) = v92;
            *(v82 + 13) = v93;
            *(v82 + 14) = v94;
            v82[120] = v95;
          }

          v6 = v122;
          v82[121] = v83[121];
        }

        else
        {
          v96 = *(v83 + 5);
          *(v82 + 4) = *(v83 + 4);
          *(v82 + 5) = v96;
          *(v82 + 6) = *(v83 + 6);
          *(v82 + 106) = *(v83 + 106);
          v97 = *(v83 + 1);
          *v82 = *v83;
          *(v82 + 1) = v97;
          v98 = *(v83 + 3);
          *(v82 + 2) = *(v83 + 2);
          *(v82 + 3) = v98;
        }

        *(a1 + v80[6]) = *(v3 + v80[6]);
        *(a1 + v80[7]) = *(v3 + v80[7]);
        *(a1 + v80[8]) = *(v3 + v80[8]);
        *(a1 + v80[9]) = *(v3 + v80[9]);
        *(a1 + v80[10]) = *(v3 + v80[10]);
        v99 = v80[11];
        v100 = *(v3 + v99);
        *(a1 + v99) = v100;
        v101 = v100;
        goto LABEL_130;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

LABEL_99:
        memcpy(a1, v3, *(*(v22 - 8) + 64));
        goto LABEL_100;
      }
    }

    v54 = *v3;
    *a1 = *v3;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    goto LABEL_100;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRIReminderTitleCellContentState(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:

  v22 = *(a1 + *(a2 + 28));
}

void **initializeWithCopy for TTRIReminderTitleCellContentState(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v113 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      v58 = *(a2 + v55 + 8);
      if (v58)
      {
        v108 = a1;
        v111 = a2;
        *v56 = *v57;
        *(v56 + 1) = v58;
        v59 = *(v57 + 2);
        v60 = *(v57 + 3);
        v61 = *(v57 + 4);
        v62 = *(v57 + 5);
        v64 = *(v57 + 6);
        v63 = *(v57 + 7);
        v65 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v64, v63, v65);
        *(v56 + 2) = v59;
        *(v56 + 3) = v60;
        *(v56 + 4) = v61;
        *(v56 + 5) = v62;
        *(v56 + 6) = v64;
        *(v56 + 7) = v63;
        v56[64] = v65;
        *(v56 + 65) = *(v57 + 65);
        v66 = v57[120];
        if (v66 == 255)
        {
          *(v56 + 72) = *(v57 + 72);
          *(v56 + 88) = *(v57 + 88);
          *(v56 + 104) = *(v57 + 104);
          v56[120] = v57[120];
        }

        else
        {
          v67 = *(v57 + 9);
          v68 = *(v57 + 10);
          v69 = *(v57 + 11);
          v70 = *(v57 + 12);
          v71 = *(v57 + 13);
          v72 = *(v57 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v56 + 9) = v67;
          *(v56 + 10) = v68;
          *(v56 + 11) = v69;
          *(v56 + 12) = v70;
          *(v56 + 13) = v71;
          *(v56 + 14) = v72;
          v56[120] = v73;
        }

        a3 = v113;
        v56[121] = v57[121];
        a1 = v108;
        a2 = v111;
        goto LABEL_96;
      }

LABEL_93:
      v74 = *(v57 + 5);
      *(v56 + 4) = *(v57 + 4);
      *(v56 + 5) = v74;
      *(v56 + 6) = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      v75 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v75;
      v76 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v76;
LABEL_96:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v77 = v54[11];
      v78 = *(a2 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v114 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v54[5];
    v56 = a1 + v80;
    v57 = a2 + v80;
    v81 = *(a2 + v80 + 8);
    if (v81)
    {
      v109 = a1;
      v112 = a2;
      *v56 = *v57;
      *(v56 + 1) = v81;
      v82 = *(v57 + 2);
      v83 = *(v57 + 3);
      v84 = *(v57 + 4);
      v85 = *(v57 + 5);
      v86 = *(v57 + 6);
      v87 = *(v57 + 7);
      v88 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v88);
      *(v56 + 2) = v82;
      *(v56 + 3) = v83;
      *(v56 + 4) = v84;
      *(v56 + 5) = v85;
      *(v56 + 6) = v86;
      *(v56 + 7) = v87;
      v56[64] = v88;
      *(v56 + 65) = *(v57 + 65);
      v89 = v57[120];
      if (v89 == 255)
      {
        *(v56 + 72) = *(v57 + 72);
        *(v56 + 88) = *(v57 + 88);
        *(v56 + 104) = *(v57 + 104);
        v56[120] = v57[120];
      }

      else
      {
        v90 = *(v57 + 9);
        v91 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v89 & 1;
        sub_21D0FB960(v90, v91, v92, v93, v94, v95, v89 & 1);
        *(v56 + 9) = v90;
        *(v56 + 10) = v91;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v114;
      v56[121] = v57[121];
      a1 = v109;
      a2 = v112;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v97 = *(a2 + v13);
      *(a1 + v13) = v97;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v99 = sub_21DBF563C();
    (*(*(v99 - 8) + 16))(a1 + v13, a2 + v13, v99);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v110 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v110(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v40 = (a1 + v39);
      v41 = (a2 + v39);
      v42 = v41[1];
      if (v42)
      {
        *v40 = *v41;
        v40[1] = v42;
        v43 = v41[2];
        v40[2] = v43;
        sub_21DBF8E0C();
        v44 = v43;
      }

      else
      {
        *v40 = *v41;
        v40[2] = v41[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1, a2, v46);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  v100 = a3[5];
  v101 = a3[6];
  v102 = *(a2 + v100);
  *(a1 + v100) = v102;
  *(a1 + v101) = *(a2 + v101);
  v103 = a3[7];
  v104 = *(a2 + v103);
  *(a1 + v103) = v104;
  v105 = v102;
  sub_21DBF8E0C();
  v106 = v104;
  return a1;
}

void **assignWithCopy for TTRIReminderTitleCellContentState(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D9412F0(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v124 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v124(a1 + v37, a2 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (a2 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_129;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, a2, v46);
              *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v18 = a2[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_129;
      }

      v29 = *a2;
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(a2 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
        goto LABEL_129;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v108 = *(a2 + v13);
        *(a1 + v13) = v108;
        v109 = v108;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_129;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v13, a2 + v13, *(v15 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v110 = sub_21DBF563C();
      (*(*(v110 - 8) + 16))(a1 + v13, a2 + v13, v110);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v36 > 2)
        {
          goto LABEL_114;
        }

        if (v36 == 1)
        {
          goto LABEL_113;
        }

        if (v36 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v35 > 2)
        {
          goto LABEL_114;
        }

        if (v35 == 1)
        {
          goto LABEL_113;
        }

        if (v35 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_130;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v129 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_91:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          if (*(a2 + v55 + 8))
          {
            *v56 = *v57;
            *(v56 + 1) = *(v57 + 1);
            v58 = *(v57 + 2);
            v59 = *(v57 + 3);
            v60 = *(v57 + 4);
            v61 = *(v57 + 5);
            v62 = *(v57 + 6);
            v120 = *(v57 + 7);
            v125 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v58, v59, v60, v61, v62, v120, v125);
            *(v56 + 2) = v58;
            *(v56 + 3) = v59;
            *(v56 + 4) = v60;
            *(v56 + 5) = v61;
            *(v56 + 6) = v62;
            *(v56 + 7) = v120;
            v56[64] = v125;
            v56[65] = v57[65];
            v56[66] = v57[66];
            v56[67] = v57[67];
            v56[68] = v57[68];
            v63 = v57[120];
            if (v63 == 255)
            {
              v75 = *(v57 + 72);
              v76 = *(v57 + 88);
              v77 = *(v57 + 104);
              v56[120] = v57[120];
              *(v56 + 104) = v77;
              *(v56 + 88) = v76;
              *(v56 + 72) = v75;
            }

            else
            {
              v121 = *(v57 + 10);
              v126 = *(v57 + 9);
              v64 = *(v57 + 11);
              v65 = *(v57 + 12);
              v66 = *(v57 + 13);
              v67 = *(v57 + 14);
              v68 = v63 & 1;
              sub_21D0FB960(v126, v121, v64, v65, v66, v67, v63 & 1);
              *(v56 + 9) = v126;
              *(v56 + 10) = v121;
              *(v56 + 11) = v64;
              *(v56 + 12) = v65;
              *(v56 + 13) = v66;
              *(v56 + 14) = v67;
              v56[120] = v68;
            }

            a3 = v129;
            v56[121] = v57[121];
          }

          else
          {
            v69 = *v57;
            v70 = *(v57 + 1);
            v71 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v71;
            *v56 = v69;
            *(v56 + 1) = v70;
            v72 = *(v57 + 4);
            v73 = *(v57 + 5);
            v74 = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            *(v56 + 5) = v73;
            *(v56 + 6) = v74;
            *(v56 + 4) = v72;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v78 = v54[11];
          v79 = *(a2 + v78);
          *(a1 + v78) = v79;
          v80 = v79;
          goto LABEL_129;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

LABEL_90:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_91;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_91;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v130 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        v81 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v82 = v81[5];
        v83 = a1 + v82;
        v84 = a2 + v82;
        if (*(a2 + v82 + 8))
        {
          *v83 = *v84;
          *(v83 + 1) = *(v84 + 1);
          v85 = *(v84 + 2);
          v86 = *(v84 + 3);
          v87 = *(v84 + 4);
          v88 = *(v84 + 5);
          v89 = *(v84 + 6);
          v127 = *(v84 + 7);
          v122 = v84[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v127, v122);
          *(v83 + 2) = v85;
          *(v83 + 3) = v86;
          *(v83 + 4) = v87;
          *(v83 + 5) = v88;
          *(v83 + 6) = v89;
          *(v83 + 7) = v127;
          v83[64] = v122;
          v83[65] = v84[65];
          v83[66] = v84[66];
          v83[67] = v84[67];
          v83[68] = v84[68];
          v90 = v84[120];
          if (v90 == 255)
          {
            v102 = *(v84 + 72);
            v103 = *(v84 + 88);
            v104 = *(v84 + 104);
            v83[120] = v84[120];
            *(v83 + 104) = v104;
            *(v83 + 88) = v103;
            *(v83 + 72) = v102;
          }

          else
          {
            v123 = *(v84 + 10);
            v128 = *(v84 + 9);
            v91 = *(v84 + 11);
            v92 = *(v84 + 12);
            v93 = *(v84 + 13);
            v94 = *(v84 + 14);
            v95 = v90 & 1;
            sub_21D0FB960(v128, v123, v91, v92, v93, v94, v90 & 1);
            *(v83 + 9) = v128;
            *(v83 + 10) = v123;
            *(v83 + 11) = v91;
            *(v83 + 12) = v92;
            *(v83 + 13) = v93;
            *(v83 + 14) = v94;
            v83[120] = v95;
          }

          a3 = v130;
          v83[121] = v84[121];
        }

        else
        {
          v96 = *v84;
          v97 = *(v84 + 1);
          v98 = *(v84 + 3);
          *(v83 + 2) = *(v84 + 2);
          *(v83 + 3) = v98;
          *v83 = v96;
          *(v83 + 1) = v97;
          v99 = *(v84 + 4);
          v100 = *(v84 + 5);
          v101 = *(v84 + 6);
          *(v83 + 106) = *(v84 + 106);
          *(v83 + 5) = v100;
          *(v83 + 6) = v101;
          *(v83 + 4) = v99;
        }

        *(a1 + v81[6]) = *(a2 + v81[6]);
        *(a1 + v81[7]) = *(a2 + v81[7]);
        *(a1 + v81[8]) = *(a2 + v81[8]);
        *(a1 + v81[9]) = *(a2 + v81[9]);
        *(a1 + v81[10]) = *(a2 + v81[10]);
        v105 = v81[11];
        v106 = *(a2 + v105);
        *(a1 + v105) = v106;
        v107 = v106;
        goto LABEL_129;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

LABEL_98:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_99;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_99;
  }

LABEL_130:
  v111 = a3[5];
  v112 = *(a2 + v111);
  v113 = *(a1 + v111);
  *(a1 + v111) = v112;
  v114 = v112;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  sub_21DBF8E0C();

  v115 = a3[7];
  v116 = *(a1 + v115);
  v117 = *(a2 + v115);
  *(a1 + v115) = v117;
  v118 = v117;

  return a1;
}

uint64_t sub_21D9412F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRIReminderTitleCellContentState(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

void *assignWithTake for TTRIReminderTitleCellContentState(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D9412F0(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  v42 = a3[5];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  v44 = a3[7];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);

  return a1;
}

uint64_t sub_21D943588(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double sub_21D9437F0(uint64_t a1)
{
  v3 = &v1[qword_27CE8EBE0];
  swift_beginAccess();
  sub_21D93B5EC(a1, v3);
  swift_endAccess();
  if (!*v3)
  {
    goto LABEL_4;
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = v1;
  v6(v1, &off_282EDC078, ObjectType, v4);
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9)
  {
    v10 = *(v4 + 48);
    v11 = *(v9 + qword_27CE63FE8);
    v10();
    swift_unknownObjectRelease();

LABEL_4:
    sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
    return result;
  }

  sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
  swift_unknownObjectRelease();
  return result;
}

void sub_21D943970()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [*(v2 + qword_27CE63FE8) resignFirstResponder];
    v3 = *(v0 + v1);
    if (v3)
    {
      v4 = *(v3 + qword_27CE63FF0);
      if (v4)
      {
        v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
        swift_beginAccess();
        v6 = *(v4 + v5);
        if (v6)
        {
          [v6 resignFirstResponder];
        }
      }
    }
  }
}

void sub_21D943A3C(uint64_t a1, char a2)
{
  v4 = (v2 + qword_27CE8EBE8);
  swift_beginAccess();
  v5 = MEMORY[0x277D85000];
  if (*v4)
  {
    v6 = v4[1];
    v7 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78);
    swift_beginAccess();
    v8 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v9 = &v7[*(v8 + 24)];
      if (*v9 == 1)
      {
        v10 = *(v9 + 1);
        v11 = *(v9 + 2);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        swift_unknownObjectRetain();
        if (a2 & 1) != 0 || (sub_21D944554())
        {
          v12 = sub_21D944724();
          ObjectType = swift_getObjectType();
          (v6)[20](v12, ObjectType, v6);
          v17[0] = 1;
          v17[1] = v10;
          v17[2] = v11;
          (v6)[6](v17, ObjectType, v6);
          v6[23](1, ObjectType, v6);
          [v12 setHidden_];
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v14 = *((*v5 & *v2) + 0x68);
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (v15)
  {
    v16 = *(v15 + qword_27CE63FF0);
    if (v16)
    {
      [v16 setHidden_];
    }
  }
}

double sub_21D943CB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + qword_27CE63FD0);
  v5 = *(a1 + qword_27CE63FF8);
  *(a1 + qword_27CE63FF8) = v4;
  if (v4 != v5)
  {
    [*(a1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  v6 = *(a1 + qword_27CE63FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v8 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 placeholderTextColor];
  v12 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v13 = MEMORY[0x277D740A8];
  *(inited + 40) = v11;
  v14 = *v13;
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  v15 = qword_280D176B8;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_21D900614(1);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 80) = v17;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v20 = sub_21DBF9E5C();

  v21 = [v18 initWithString:v19 attributes:v20];

  [v6 setAttributedPlaceholder_];
  v22 = sub_21DBFA12C();
  [v6 setAccessibilityIdentifier_];

  v23 = sub_21DBFA12C();
  [v6 setAccessibilityLabel_];

  v24 = &v6[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[8];
  *v24 = 5;
  v24[8] = 0;
  if ((v26 & 1) != 0 || v25 != 5)
  {
    [v6 invalidateIntrinsicContentSize];
  }

  v27 = (v2 + qword_27CE8EBE0);
  swift_beginAccess();
  if (*v27)
  {
    v29 = v27[1];
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 48);
    swift_unknownObjectRetain();
    v31(v6, ObjectType, v29);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D94403C(uint64_t a1)
{
  v24[0] = a1;
  v2 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D8, &unk_21DC323F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520, &qword_21DC169F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  v15 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D0D3954(v1 + v15, v8, &qword_27CE5E9D8, &unk_21DC323F0);
  v16 = 1;
  if ((*(v3 + 48))(v8, 1, v2) != 1)
  {
    sub_21D94BB74(v8, v5, type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState);
    sub_21D94437C(v5, v14);
    sub_21D106F18(v5, type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState);
    v16 = 0;
  }

  v17 = type metadata accessor for TTRReminderCellTitleViewModel(0);
  (*(*(v17 - 8) + 56))(v14, v16, 1, v17);
  v18 = (v1 + qword_27CE8EBE0);
  swift_beginAccess();
  if (*v18)
  {
    v19 = v18[1];
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v14, v11, &qword_27CE5E520, &qword_21DC169F0);
    v21 = *(v19 + 8);
    v22 = *(v21 + 16);
    swift_unknownObjectRetain();
    v22(v11, ObjectType, v21);
    swift_unknownObjectRelease();
  }

  sub_21D943A3C(v24[0], 0);
  return sub_21D0CF7E0(v14, &qword_27CE5E520, &qword_21DC169F0);
}

uint64_t sub_21D94437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1D338C(a1, v6);
  v7 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
  v8 = *(a1 + v7[5]);
  v9 = *(a1 + v7[7]);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v12 = qword_280D176B8;
    v13 = v8;
    if (v12 != -1)
    {
      swift_once();
    }

    v11 = sub_21D900614(1);
    v9 = 0;
  }

  v14 = *(a1 + v7[6] + 8);
  v15 = objc_opt_self();
  sub_21DBF8E0C();
  v16 = v9;
  v17 = [v15 secondaryLabelColor];
  v18 = type metadata accessor for TTRReminderCellTitleViewModel(0);
  v19 = v18[7];
  v20 = a2 + v18[9];
  result = sub_21D94BB74(v6, a2, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a2 + v18[5]) = 1;
  *(a2 + v19) = v8;
  *(a2 + v18[6]) = v11;
  *(a2 + v18[8]) = 0;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(a2 + v18[10]) = v14;
  *(a2 + v18[11]) = v17;
  *(a2 + v18[12]) = 0;
  return result;
}

uint64_t sub_21D944554()
{
  v1 = qword_27CE8EBE8;
  swift_beginAccess();
  sub_21D0D3954(v0 + v1, v13, &unk_27CE5EB40, &unk_21DC1D730);
  v2 = v13[0];
  sub_21D0CF7E0(v13, &unk_27CE5EB40, &unk_21DC1D730);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x277D85000];
  v4 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  v5 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = &v4[*(v5 + 24)];
    if (*v6 == 1)
    {
      v7 = *(v6 + 2);
      if (v7 >> 62)
      {
        if (sub_21DBFBD7C())
        {
          return 1;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return 1;
      }
    }
  }

  v9 = *((*v3 & *v0) + 0x68);
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + qword_27CE63FF0);
  if (!v11)
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  result = *(v11 + v12);
  if (result)
  {
    return [result isEditing];
  }

  return result;
}

id sub_21D944724()
{
  v1 = qword_27CE63FF0;
  v2 = *(v0 + qword_27CE63FF0);
  if (v2)
  {
    v3 = *(v0 + qword_27CE63FF0);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListDescriptionAndTagsView()) init];
    [*(v0 + qword_27CE64000) insertArrangedSubview:v4 atIndex:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_21D9447EC()
{

  sub_21D0CF7E0(v0 + qword_27CE8EBE0, &unk_27CE5F240, &unk_21DC104A0);
  sub_21D0CF7E0(v0 + qword_27CE8EBE8, &unk_27CE5EB40, &unk_21DC1D730);

  return result;
}

double sub_21D944874(uint64_t a1)
{

  sub_21D0CF7E0(a1 + qword_27CE8EBE0, &unk_27CE5F240, &unk_21DC104A0);
  sub_21D0CF7E0(a1 + qword_27CE8EBE8, &unk_27CE5EB40, &unk_21DC1D730);

  return result;
}

char *sub_21D94498C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[qword_27CE63FF0] = 0;
  v3[qword_27CE63FF8] = 0;
  v33 = 0;
  v8 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v9 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 5, 0, &v33, 0);
  v10 = qword_280D176B8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_21D900614(1);
  [v11 setFont_];

  [v11 setAdjustsFontForContentSizeCategory_];
  v13 = [objc_opt_self() labelColor];
  [v11 setTextColor_];

  [v11 setEditable_];
  v14 = v11;
  [v14 setBackgroundColor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DC09CF0;
  *(v15 + 32) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v17 = sub_21DBFA5DC();

  v18 = [v16 initWithArrangedSubviews_];

  [v18 setAxis_];
  [v18 setAlignment_];
  [v18 setDistribution_];
  [v18 setSpacing_];
  [v18 setLayoutMarginsRelativeArrangement_];
  v19 = v18;
  [v19 setPreservesSuperviewLayoutMargins_];
  [v19 setLayoutMargins_];
  *&v4[qword_27CE63FE8] = v14;
  *&v4[qword_27CE64000] = v19;
  v20 = v14;
  v21 = v19;
  if (a3)
  {
    v22 = sub_21DBFA12C();
  }

  else
  {
    v22 = 0;
  }

  v32.receiver = v4;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, sel_initWithStyle_reuseIdentifier_, a1, v22);

  v24 = qword_27CE5AF20;
  v25 = *&v23[qword_27CE5AF20];
  v26 = v23;
  [v25 setHorizontalAlignment_];
  [*&v23[v24] setVerticalAlignment_];
  v27 = *&v23[v24];
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21DC09CF0;
  *(v28 + 32) = v19;
  v29 = v27;
  v30 = sub_21DBFA5DC();

  [v29 setArrangedSubviews_];

  return v26;
}

char *sub_21D944D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D94498C(a3, a4, v6);
}

void sub_21D944DB8(uint64_t a1)
{
  *(a1 + qword_27CE63FF0) = 0;
  *(a1 + qword_27CE63FF8) = 0;
  sub_21DBFC31C();
  __break(1u);
}

id sub_21D944E88@<X0>(void *a1@<X8>)
{
  if (*(v1 + qword_27CE63FF8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + qword_27CE63FE8);
    result = v3;
  }

  *a1 = v3;
  return result;
}

void sub_21D944ED4()
{
  v1 = *(v0 + qword_27CE64000);
}

void sub_21D944F24(uint64_t a1)
{
  v2 = *(a1 + qword_27CE64000);
}

void **sub_21D945004(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v3, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v3, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v120 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v120(a1 + v39, v3 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (v3 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_130;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(v3, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, v3, v48);
              *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
            goto LABEL_130;
          case 8:
            *a1 = *v3;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_130:
            swift_storeEnumTagMultiPayload();
            goto LABEL_131;
        }

LABEL_35:
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_131:
        v105 = v6[5];
        v106 = v6[6];
        v107 = *(v3 + v105);
        *(a1 + v105) = v107;
        v108 = a1 + v106;
        v109 = v3 + v106;
        *v108 = *v109;
        v110 = *(v109 + 2);
        *(v108 + 1) = *(v109 + 1);
        *(v108 + 2) = v110;
        v111 = v6[7];
        v112 = *(v3 + v111);
        *(a1 + v111) = v112;
        v113 = v107;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v114 = v112;
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v20 = v3[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_130;
      }

      v31 = *v3;
      *a1 = *v3;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(v3 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
        goto LABEL_130;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_115;
          }

          goto LABEL_128;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_128;
        }

LABEL_114:
        v102 = *(v3 + v15);
        *(a1 + v15) = v102;
        v103 = v102;
        swift_storeEnumTagMultiPayload();
LABEL_129:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_130;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_115;
          }

LABEL_128:
          memcpy(a1 + v15, v3 + v15, *(v17 + 64));
          goto LABEL_129;
        }

        goto LABEL_114;
      }

LABEL_115:
      v104 = sub_21DBF563C();
      (*(*(v104 - 8) + 16))(a1 + v15, v3 + v15, v104);
      swift_storeEnumTagMultiPayload();
      goto LABEL_129;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v38 > 2)
        {
          goto LABEL_115;
        }

        if (v38 == 1)
        {
          goto LABEL_114;
        }

        if (v38 != 2)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v37 > 2)
        {
          goto LABEL_115;
        }

        if (v37 == 1)
        {
          goto LABEL_114;
        }

        if (v37 != 2)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_115;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v124 = v6;
      if (v13 > 4)
      {
        if (v13 <= 7)
        {
          if (v13 == 5 || v13 == 6)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

        if (v13 != 8 && v13 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
LABEL_92:
          v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v57 = v56[5];
          v58 = a1 + v57;
          v59 = v3 + v57;
          v60 = *(v3 + v57 + 8);
          if (v60)
          {
            v121 = v3;
            *v58 = *v59;
            *(v58 + 1) = v60;
            v61 = *(v59 + 2);
            v62 = *(v59 + 3);
            v63 = *(v59 + 4);
            v64 = *(v59 + 5);
            v66 = *(v59 + 6);
            v65 = *(v59 + 7);
            v116 = v59[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v116);
            *(v58 + 2) = v61;
            *(v58 + 3) = v62;
            *(v58 + 4) = v63;
            *(v58 + 5) = v64;
            *(v58 + 6) = v66;
            *(v58 + 7) = v65;
            v58[64] = v116;
            *(v58 + 65) = *(v59 + 65);
            v67 = v59[120];
            if (v67 == 255)
            {
              *(v58 + 72) = *(v59 + 72);
              *(v58 + 88) = *(v59 + 88);
              *(v58 + 104) = *(v59 + 104);
              v58[120] = v59[120];
            }

            else
            {
              v68 = *(v59 + 9);
              v117 = *(v59 + 10);
              v69 = *(v59 + 11);
              v70 = *(v59 + 12);
              v71 = *(v59 + 13);
              v72 = *(v59 + 14);
              v73 = v67 & 1;
              sub_21D0FB960(v68, v117, v69, v70, v71, v72, v67 & 1);
              *(v58 + 9) = v68;
              *(v58 + 10) = v117;
              *(v58 + 11) = v69;
              *(v58 + 12) = v70;
              *(v58 + 13) = v71;
              *(v58 + 14) = v72;
              v58[120] = v73;
            }

            v6 = v124;
            v58[121] = v59[121];
            v3 = v121;
          }

          else
          {
            v74 = *(v59 + 5);
            *(v58 + 4) = *(v59 + 4);
            *(v58 + 5) = v74;
            *(v58 + 6) = *(v59 + 6);
            *(v58 + 106) = *(v59 + 106);
            v75 = *(v59 + 1);
            *v58 = *v59;
            *(v58 + 1) = v75;
            v76 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v76;
          }

          *(a1 + v56[6]) = *(v3 + v56[6]);
          *(a1 + v56[7]) = *(v3 + v56[7]);
          *(a1 + v56[8]) = *(v3 + v56[8]);
          *(a1 + v56[9]) = *(v3 + v56[9]);
          *(a1 + v56[10]) = *(v3 + v56[10]);
          v77 = v56[11];
          v78 = *(v3 + v77);
          *(a1 + v77) = v78;
          v79 = v78;
          goto LABEL_130;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

LABEL_91:
          memcpy(a1, v3, *(*(v12 - 8) + 64));
          goto LABEL_92;
        }
      }

      v51 = *v3;
      *a1 = *v3;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v125 = v6;
    if (v23 > 4)
    {
      if (v23 <= 7)
      {
        if (v23 == 5 || v23 == 6)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

      if (v23 != 8 && v23 != 9)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
LABEL_100:
        v80 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v81 = v80[5];
        v82 = a1 + v81;
        v83 = v3 + v81;
        v84 = *(v3 + v81 + 8);
        if (v84)
        {
          *v82 = *v83;
          *(v82 + 1) = v84;
          v85 = *(v83 + 2);
          v86 = *(v83 + 3);
          v87 = *(v83 + 4);
          v88 = *(v83 + 5);
          v89 = *(v83 + 6);
          v122 = *(v83 + 7);
          v118 = v83[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v122, v118);
          *(v82 + 2) = v85;
          *(v82 + 3) = v86;
          *(v82 + 4) = v87;
          *(v82 + 5) = v88;
          *(v82 + 6) = v89;
          *(v82 + 7) = v122;
          v82[64] = v118;
          *(v82 + 65) = *(v83 + 65);
          v90 = v83[120];
          if (v90 == 255)
          {
            *(v82 + 72) = *(v83 + 72);
            *(v82 + 88) = *(v83 + 88);
            *(v82 + 104) = *(v83 + 104);
            v82[120] = v83[120];
          }

          else
          {
            v119 = *(v83 + 10);
            v123 = *(v83 + 9);
            v91 = *(v83 + 11);
            v92 = *(v83 + 12);
            v93 = *(v83 + 13);
            v94 = *(v83 + 14);
            v95 = v90 & 1;
            sub_21D0FB960(v123, v119, v91, v92, v93, v94, v90 & 1);
            *(v82 + 9) = v123;
            *(v82 + 10) = v119;
            *(v82 + 11) = v91;
            *(v82 + 12) = v92;
            *(v82 + 13) = v93;
            *(v82 + 14) = v94;
            v82[120] = v95;
          }

          v6 = v125;
          v82[121] = v83[121];
        }

        else
        {
          v96 = *(v83 + 5);
          *(v82 + 4) = *(v83 + 4);
          *(v82 + 5) = v96;
          *(v82 + 6) = *(v83 + 6);
          *(v82 + 106) = *(v83 + 106);
          v97 = *(v83 + 1);
          *v82 = *v83;
          *(v82 + 1) = v97;
          v98 = *(v83 + 3);
          *(v82 + 2) = *(v83 + 2);
          *(v82 + 3) = v98;
        }

        *(a1 + v80[6]) = *(v3 + v80[6]);
        *(a1 + v80[7]) = *(v3 + v80[7]);
        *(a1 + v80[8]) = *(v3 + v80[8]);
        *(a1 + v80[9]) = *(v3 + v80[9]);
        *(a1 + v80[10]) = *(v3 + v80[10]);
        v99 = v80[11];
        v100 = *(v3 + v99);
        *(a1 + v99) = v100;
        v101 = v100;
        goto LABEL_130;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

LABEL_99:
        memcpy(a1, v3, *(*(v22 - 8) + 64));
        goto LABEL_100;
      }
    }

    v54 = *v3;
    *a1 = *v3;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    goto LABEL_100;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void sub_21D9466AC(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:

  v22 = *(a1 + *(a2 + 28));
}

void **sub_21D946B14(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v116 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      v58 = *(a2 + v55 + 8);
      if (v58)
      {
        v111 = a1;
        v114 = a2;
        *v56 = *v57;
        *(v56 + 1) = v58;
        v59 = *(v57 + 2);
        v60 = *(v57 + 3);
        v61 = *(v57 + 4);
        v62 = *(v57 + 5);
        v64 = *(v57 + 6);
        v63 = *(v57 + 7);
        v65 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v64, v63, v65);
        *(v56 + 2) = v59;
        *(v56 + 3) = v60;
        *(v56 + 4) = v61;
        *(v56 + 5) = v62;
        *(v56 + 6) = v64;
        *(v56 + 7) = v63;
        v56[64] = v65;
        *(v56 + 65) = *(v57 + 65);
        v66 = v57[120];
        if (v66 == 255)
        {
          *(v56 + 72) = *(v57 + 72);
          *(v56 + 88) = *(v57 + 88);
          *(v56 + 104) = *(v57 + 104);
          v56[120] = v57[120];
        }

        else
        {
          v67 = *(v57 + 9);
          v68 = *(v57 + 10);
          v69 = *(v57 + 11);
          v70 = *(v57 + 12);
          v71 = *(v57 + 13);
          v72 = *(v57 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v56 + 9) = v67;
          *(v56 + 10) = v68;
          *(v56 + 11) = v69;
          *(v56 + 12) = v70;
          *(v56 + 13) = v71;
          *(v56 + 14) = v72;
          v56[120] = v73;
        }

        a3 = v116;
        v56[121] = v57[121];
        a1 = v111;
        a2 = v114;
        goto LABEL_96;
      }

LABEL_93:
      v74 = *(v57 + 5);
      *(v56 + 4) = *(v57 + 4);
      *(v56 + 5) = v74;
      *(v56 + 6) = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      v75 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v75;
      v76 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v76;
LABEL_96:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v77 = v54[11];
      v78 = *(a2 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v117 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v54[5];
    v56 = a1 + v80;
    v57 = a2 + v80;
    v81 = *(a2 + v80 + 8);
    if (v81)
    {
      v112 = a1;
      v115 = a2;
      *v56 = *v57;
      *(v56 + 1) = v81;
      v82 = *(v57 + 2);
      v83 = *(v57 + 3);
      v84 = *(v57 + 4);
      v85 = *(v57 + 5);
      v86 = *(v57 + 6);
      v87 = *(v57 + 7);
      v88 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v88);
      *(v56 + 2) = v82;
      *(v56 + 3) = v83;
      *(v56 + 4) = v84;
      *(v56 + 5) = v85;
      *(v56 + 6) = v86;
      *(v56 + 7) = v87;
      v56[64] = v88;
      *(v56 + 65) = *(v57 + 65);
      v89 = v57[120];
      if (v89 == 255)
      {
        *(v56 + 72) = *(v57 + 72);
        *(v56 + 88) = *(v57 + 88);
        *(v56 + 104) = *(v57 + 104);
        v56[120] = v57[120];
      }

      else
      {
        v90 = *(v57 + 9);
        v91 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v89 & 1;
        sub_21D0FB960(v90, v91, v92, v93, v94, v95, v89 & 1);
        *(v56 + 9) = v90;
        *(v56 + 10) = v91;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v117;
      v56[121] = v57[121];
      a1 = v112;
      a2 = v115;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v97 = *(a2 + v13);
      *(a1 + v13) = v97;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v99 = sub_21DBF563C();
    (*(*(v99 - 8) + 16))(a1 + v13, a2 + v13, v99);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v113 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v113(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v40 = (a1 + v39);
      v41 = (a2 + v39);
      v42 = v41[1];
      if (v42)
      {
        *v40 = *v41;
        v40[1] = v42;
        v43 = v41[2];
        v40[2] = v43;
        sub_21DBF8E0C();
        v44 = v43;
      }

      else
      {
        *v40 = *v41;
        v40[2] = v41[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1, a2, v46);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  v100 = a3[5];
  v101 = a3[6];
  v102 = *(a2 + v100);
  *(a1 + v100) = v102;
  v103 = a1 + v101;
  v104 = a2 + v101;
  *v103 = *v104;
  v105 = *(v104 + 2);
  *(v103 + 1) = *(v104 + 1);
  *(v103 + 2) = v105;
  v106 = a3[7];
  v107 = *(a2 + v106);
  *(a1 + v106) = v107;
  v108 = v102;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v109 = v107;
  return a1;
}

void **sub_21D94814C(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D106F18(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v127 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v127(a1 + v37, a2 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (a2 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_129;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, a2, v46);
              *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v18 = a2[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_129;
      }

      v29 = *a2;
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(a2 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
        goto LABEL_129;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v108 = *(a2 + v13);
        *(a1 + v13) = v108;
        v109 = v108;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_129;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v13, a2 + v13, *(v15 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v110 = sub_21DBF563C();
      (*(*(v110 - 8) + 16))(a1 + v13, a2 + v13, v110);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v36 > 2)
        {
          goto LABEL_114;
        }

        if (v36 == 1)
        {
          goto LABEL_113;
        }

        if (v36 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v35 > 2)
        {
          goto LABEL_114;
        }

        if (v35 == 1)
        {
          goto LABEL_113;
        }

        if (v35 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_130;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v132 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_91:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          if (*(a2 + v55 + 8))
          {
            *v56 = *v57;
            *(v56 + 1) = *(v57 + 1);
            v58 = *(v57 + 2);
            v59 = *(v57 + 3);
            v60 = *(v57 + 4);
            v61 = *(v57 + 5);
            v62 = *(v57 + 6);
            v123 = *(v57 + 7);
            v128 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v58, v59, v60, v61, v62, v123, v128);
            *(v56 + 2) = v58;
            *(v56 + 3) = v59;
            *(v56 + 4) = v60;
            *(v56 + 5) = v61;
            *(v56 + 6) = v62;
            *(v56 + 7) = v123;
            v56[64] = v128;
            v56[65] = v57[65];
            v56[66] = v57[66];
            v56[67] = v57[67];
            v56[68] = v57[68];
            v63 = v57[120];
            if (v63 == 255)
            {
              v75 = *(v57 + 72);
              v76 = *(v57 + 88);
              v77 = *(v57 + 104);
              v56[120] = v57[120];
              *(v56 + 104) = v77;
              *(v56 + 88) = v76;
              *(v56 + 72) = v75;
            }

            else
            {
              v124 = *(v57 + 10);
              v129 = *(v57 + 9);
              v64 = *(v57 + 11);
              v65 = *(v57 + 12);
              v66 = *(v57 + 13);
              v67 = *(v57 + 14);
              v68 = v63 & 1;
              sub_21D0FB960(v129, v124, v64, v65, v66, v67, v63 & 1);
              *(v56 + 9) = v129;
              *(v56 + 10) = v124;
              *(v56 + 11) = v64;
              *(v56 + 12) = v65;
              *(v56 + 13) = v66;
              *(v56 + 14) = v67;
              v56[120] = v68;
            }

            a3 = v132;
            v56[121] = v57[121];
          }

          else
          {
            v69 = *v57;
            v70 = *(v57 + 1);
            v71 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v71;
            *v56 = v69;
            *(v56 + 1) = v70;
            v72 = *(v57 + 4);
            v73 = *(v57 + 5);
            v74 = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            *(v56 + 5) = v73;
            *(v56 + 6) = v74;
            *(v56 + 4) = v72;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v78 = v54[11];
          v79 = *(a2 + v78);
          *(a1 + v78) = v79;
          v80 = v79;
          goto LABEL_129;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

LABEL_90:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_91;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_91;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v133 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        v81 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v82 = v81[5];
        v83 = a1 + v82;
        v84 = a2 + v82;
        if (*(a2 + v82 + 8))
        {
          *v83 = *v84;
          *(v83 + 1) = *(v84 + 1);
          v85 = *(v84 + 2);
          v86 = *(v84 + 3);
          v87 = *(v84 + 4);
          v88 = *(v84 + 5);
          v89 = *(v84 + 6);
          v130 = *(v84 + 7);
          v125 = v84[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v130, v125);
          *(v83 + 2) = v85;
          *(v83 + 3) = v86;
          *(v83 + 4) = v87;
          *(v83 + 5) = v88;
          *(v83 + 6) = v89;
          *(v83 + 7) = v130;
          v83[64] = v125;
          v83[65] = v84[65];
          v83[66] = v84[66];
          v83[67] = v84[67];
          v83[68] = v84[68];
          v90 = v84[120];
          if (v90 == 255)
          {
            v102 = *(v84 + 72);
            v103 = *(v84 + 88);
            v104 = *(v84 + 104);
            v83[120] = v84[120];
            *(v83 + 104) = v104;
            *(v83 + 88) = v103;
            *(v83 + 72) = v102;
          }

          else
          {
            v126 = *(v84 + 10);
            v131 = *(v84 + 9);
            v91 = *(v84 + 11);
            v92 = *(v84 + 12);
            v93 = *(v84 + 13);
            v94 = *(v84 + 14);
            v95 = v90 & 1;
            sub_21D0FB960(v131, v126, v91, v92, v93, v94, v90 & 1);
            *(v83 + 9) = v131;
            *(v83 + 10) = v126;
            *(v83 + 11) = v91;
            *(v83 + 12) = v92;
            *(v83 + 13) = v93;
            *(v83 + 14) = v94;
            v83[120] = v95;
          }

          a3 = v133;
          v83[121] = v84[121];
        }

        else
        {
          v96 = *v84;
          v97 = *(v84 + 1);
          v98 = *(v84 + 3);
          *(v83 + 2) = *(v84 + 2);
          *(v83 + 3) = v98;
          *v83 = v96;
          *(v83 + 1) = v97;
          v99 = *(v84 + 4);
          v100 = *(v84 + 5);
          v101 = *(v84 + 6);
          *(v83 + 106) = *(v84 + 106);
          *(v83 + 5) = v100;
          *(v83 + 6) = v101;
          *(v83 + 4) = v99;
        }

        *(a1 + v81[6]) = *(a2 + v81[6]);
        *(a1 + v81[7]) = *(a2 + v81[7]);
        *(a1 + v81[8]) = *(a2 + v81[8]);
        *(a1 + v81[9]) = *(a2 + v81[9]);
        *(a1 + v81[10]) = *(a2 + v81[10]);
        v105 = v81[11];
        v106 = *(a2 + v105);
        *(a1 + v105) = v106;
        v107 = v106;
        goto LABEL_129;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

LABEL_98:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_99;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_99;
  }

LABEL_130:
  v111 = a3[5];
  v112 = *(a2 + v111);
  v113 = *(a1 + v111);
  *(a1 + v111) = v112;
  v114 = v112;

  v115 = a3[6];
  v116 = a1 + v115;
  v117 = a2 + v115;
  *v116 = *(a2 + v115);
  *(v116 + 1) = *(a2 + v115 + 8);
  sub_21DBF8E0C();

  *(v116 + 2) = *(v117 + 2);
  sub_21DBF8E0C();

  v118 = a3[7];
  v119 = *(a1 + v118);
  v120 = *(a2 + v118);
  *(a1 + v118) = v120;
  v121 = v120;

  return a1;
}

_BYTE *sub_21D949840(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v43 = &a1[v42];
  v44 = &a2[v42];
  *v43 = *v44;
  *(v43 + 2) = *(v44 + 2);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

void *sub_21D94A938(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D106F18(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  v42 = a3[5];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = a3[6];
  v45 = a1 + v44;
  v46 = a2 + v44;
  *v45 = *(a2 + v44);
  *(v45 + 1) = *(a2 + v44 + 8);

  *(v45 + 2) = *(v46 + 2);

  v47 = a3[7];
  v48 = *(a1 + v47);
  *(a1 + v47) = *(a2 + v47);

  return a1;
}

uint64_t sub_21D94BAC8(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D94BB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double TTRIReminderNotesCellContent.notesModule.setter(uint64_t a1)
{
  v3 = &v1[qword_27CE8EBF0];
  swift_beginAccess();
  sub_21D94BD60(a1, v3);
  swift_endAccess();
  if (!*v3)
  {
    goto LABEL_4;
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 40);
  swift_unknownObjectRetain();
  v7 = v1;
  v6(v1, &protocol witness table for TTRIReminderNotesCellContent, ObjectType, v4);
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9)
  {
    v10 = *(v4 + 64);
    v11 = *(v9 + qword_27CE63F48);
    v10();
    swift_unknownObjectRelease();

LABEL_4:
    sub_21D0CF7E0(a1, &unk_27CE62920, &unk_21DC2BF30);
    return result;
  }

  sub_21D0CF7E0(a1, &unk_27CE62920, &unk_21DC2BF30);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_21D94BD60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62920, &unk_21DC2BF30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t TTRIReminderNotesCellContentState.init(item:attributedNotes:hashtagVisibility:supportsStyling:usesReducedTopLayoutMargin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  v13 = v12[5];
  result = sub_21D1059D4(a1, a6, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a6 + v13) = a2;
  *(a6 + v12[6]) = v11;
  *(a6 + v12[7]) = a4;
  *(a6 + v12[8]) = a5;
  return result;
}

id TTRIReminderNotesCellContent.__allocating_init(placeholder:accessibilityIdentifier:prefersDoubleCellHeight:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v35 = a6;
  v34 = a5;
  v32 = a3;
  v33 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_21DBF56BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  v17 = (v16 + qword_27CE8EBF0);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v37, "ReminderNotes-");
  HIBYTE(v37[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = v37[0];
  v22 = v37[1];
  v23 = (v16 + qword_27CE64028);
  *v23 = a1;
  v23[1] = a2;
  v24 = (v16 + qword_27CE8EBF8);
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  *(v16 + qword_27CE64030) = v34;
  v26 = v35;
  sub_21D0D3954(v35, v11, &qword_27CE5E9D0, &unk_21DC1D5F0);
  v27 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x68)) = 0;
  *(v16 + *((*v27 & *v16) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v27 & *v16) + 0x90)) = 0;
  sub_21D0D3954(v11, v16 + *((*v27 & *v16) + 0x78), &qword_27CE5E9D0, &unk_21DC1D5F0);
  *(v16 + *((*v27 & *v16) + 0x80)) = 0;
  v28 = (v16 + *((*v27 & *v16) + 0x88));
  *v28 = v21;
  v28[1] = v22;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA40, &unk_21DC1D640);
  v36.receiver = v16;
  v36.super_class = v29;
  v30 = objc_msgSendSuper2(&v36, sel_init);
  sub_21D0CF7E0(v26, &qword_27CE5E9D0, &unk_21DC1D5F0);
  sub_21D0CF7E0(v11, &qword_27CE5E9D0, &unk_21DC1D5F0);
  return v30;
}

id TTRIReminderNotesCellContent.currentText.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [*(v2 + qword_27CE63F48) attributedText];
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall TTRIReminderNotesCellContent.beginEditing()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v2 + qword_27CE63F48);
    v4 = [v3 window];
    [v4 makeKeyWindow];

    [v3 becomeFirstResponder];
  }
}

Swift::Void __swiftcall TTRIReminderNotesCellContent.endEditing()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [*(v2 + qword_27CE63F48) resignFirstResponder];
  }
}

void *TTRIReminderNotesCellContentState.attributedNotes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRIReminderNotesCellContentState(0) + 20));
  v2 = v1;
  return v1;
}

void TTRIReminderNotesCellContentState.attributedNotes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIReminderNotesCellContentState(0) + 20);

  *(v1 + v3) = a1;
}

double TTRIReminderNotesCellContentState.hashtagVisibility.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRIReminderNotesCellContentState(0) + 24));

  sub_21DBF8E0C();
  return result;
}

void TTRIReminderNotesCellContentState.hashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRIReminderNotesCellContentState(0) + 24);

  *(v1 + v3) = v2;
}

uint64_t TTRIReminderNotesCellContentState.supportsStyling.setter(char a1)
{
  result = type metadata accessor for TTRIReminderNotesCellContentState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TTRIReminderNotesCellContentState.usesReducedTopLayoutMargin.setter(char a1)
{
  result = type metadata accessor for TTRIReminderNotesCellContentState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TTRIReminderNotesCellContent.ttriAccessibilityIdentifierForTextView.getter()
{
  v1 = *(v0 + qword_27CE8EBF8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIReminderNotesCellContent.notesModule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27CE8EBF0;
  swift_beginAccess();
  return sub_21D0D3954(v1 + v3, a1, &unk_27CE62920, &unk_21DC2BF30);
}

uint64_t (*TTRIReminderNotesCellContent.notesModule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = qword_27CE8EBF0;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D94C800;
}

void sub_21D94C800(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    if (*v5)
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 40);
      swift_unknownObjectRetain();
      v9 = v4;
      v8(v4, &protocol witness table for TTRIReminderNotesCellContent, ObjectType, v6);
      v10 = *((*MEMORY[0x277D85000] & *v9) + 0x68);
      swift_beginAccess();
      v11 = *&v9[v10];
      if (v11)
      {
        v12 = *(v6 + 64);
        v13 = *(v11 + qword_27CE63F48);
        v12();
      }

      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id TTRIReminderNotesCellContent.init(placeholder:accessibilityIdentifier:prefersDoubleCellHeight:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v34 = a5;
  v32 = a3;
  v33 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v6 + qword_27CE8EBF0);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v37, "ReminderNotes-");
  HIBYTE(v37[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = v37[0];
  v22 = v37[1];
  v23 = (v7 + qword_27CE64028);
  *v23 = a1;
  v23[1] = a2;
  v24 = (v7 + qword_27CE8EBF8);
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  *(v7 + qword_27CE64030) = v34;
  v26 = v35;
  sub_21D0D3954(v35, v12, &qword_27CE5E9D0, &unk_21DC1D5F0);
  v27 = MEMORY[0x277D85000];
  *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0x68)) = 0;
  *(v7 + *((*v27 & *v7) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + *((*v27 & *v7) + 0x90)) = 0;
  sub_21D0D3954(v12, v7 + *((*v27 & *v7) + 0x78), &qword_27CE5E9D0, &unk_21DC1D5F0);
  *(v7 + *((*v27 & *v7) + 0x80)) = 0;
  v28 = (v7 + *((*v27 & *v7) + 0x88));
  *v28 = v21;
  v28[1] = v22;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA40, &unk_21DC1D640);
  v36.receiver = v7;
  v36.super_class = v29;
  v30 = objc_msgSendSuper2(&v36, sel_init);
  sub_21D0CF7E0(v26, &qword_27CE5E9D0, &unk_21DC1D5F0);
  sub_21D0CF7E0(v12, &qword_27CE5E9D0, &unk_21DC1D5F0);
  return v30;
}

void TTRIReminderNotesCellContent.currentText.setter(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + qword_27CE63F48);
    if (a1)
    {
      v6 = v5;
      v7 = a1;
    }

    else
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v9 = v5;
      v7 = [v8 init];
    }

    v10 = a1;
    [v5 setAttributedText_];
  }

  else
  {
    v5 = a1;
  }
}

void (*TTRIReminderNotesCellContent.currentText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = [*(v6 + qword_27CE63F48) attributedText];
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 24) = v7;
  return sub_21D93B8EC;
}

double TTRIReminderNotesCellContent.didAssignCell(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + qword_27CE64030);
  v5 = *(a1 + qword_27CE63F30);
  *(a1 + qword_27CE63F30) = v4;
  if (v4 != v5)
  {
    v6 = *(a1 + qword_27CE5AF20);
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    [v6 setVerticalAlignment_];
  }

  v8 = *(a1 + qword_27CE63F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v10 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 placeholderTextColor];
  v14 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v15 = MEMORY[0x277D740A8];
  *(inited + 40) = v13;
  v16 = *v15;
  *(inited + 64) = v14;
  *(inited + 72) = v16;
  v17 = qword_280D176B8;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_21D900614(1);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 80) = v19;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v21 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v22 = sub_21DBF9E5C();

  v23 = [v20 initWithString:v21 attributes:v22];

  [v8 setAttributedPlaceholder_];
  v24 = sub_21DBFA12C();
  [v8 setAccessibilityIdentifier_];

  v25 = sub_21DBFA12C();
  [v8 setAccessibilityLabel_];

  v26 = &v8[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[8];
  *v26 = 8;
  v26[8] = 0;
  if ((v28 & 1) != 0 || v27 != 8)
  {
    [v8 invalidateIntrinsicContentSize];
  }

  v29 = (v2 + qword_27CE8EBF0);
  swift_beginAccess();
  if (*v29)
  {
    v31 = v29[1];
    ObjectType = swift_getObjectType();
    v33 = *(v31 + 64);
    swift_unknownObjectRetain();
    v33(v8, ObjectType, v31);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIReminderNotesCellContent.updateCell(_:)(uint64_t a1)
{
  v35 = a1;
  v2 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300, &qword_21DC16A60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D0D3954(v15, v8, &qword_27CE5E9D0, &unk_21DC1D5F0);
  v34 = *(v3 + 48);
  if (v34(v8, 1, v2) == 1)
  {
    v16 = type metadata accessor for TTRIReminderCellNotesViewModel(0);
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  else
  {
    sub_21D1059D4(v8, v5, type metadata accessor for TTRIReminderNotesCellContentState);
    sub_21D1054F4(v5, v14, type metadata accessor for TTRRemindersListViewModel.Item);
    v17 = *&v5[v2[5]];
    v18 = *&v5[v2[6]];
    v19 = v5[v2[7]];
    sub_21DBF8E0C();
    v20 = v17;
    sub_21D952544(v5, type metadata accessor for TTRIReminderNotesCellContentState);
    v21 = type metadata accessor for TTRIReminderCellNotesViewModel(0);
    v23 = v21[6];
    v22 = v21[7];
    v14[v21[5]] = 1;
    *&v14[v23] = v17;
    *&v14[v22] = 0;
    *&v14[v21[8]] = v18;
    v14[v21[9]] = v19;
    (*(*(v21 - 1) + 56))(v14, 0, 1, v21);
  }

  v24 = (v1 + qword_27CE8EBF0);
  swift_beginAccess();
  if (*v24)
  {
    v25 = v24[1];
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v14, v11, &unk_27CE5F300, &qword_21DC16A60);
    v27 = *(v25 + 16);
    swift_unknownObjectRetain();
    v27(v11, ObjectType, v25);
    swift_unknownObjectRelease();
  }

  if (v34(v15, 1, v2) || *(v15 + v2[8]) != 1)
  {
    v31 = v35 + qword_27CE63F40;
    v32 = *(v35 + qword_27CE63F40 + 8);
    *v31 = 0;
    *(v31 + 8) = 1;
    if (v32 != 1)
    {
LABEL_12:
      sub_21D938210();
    }
  }

  else
  {
    v28 = v35 + qword_27CE63F40;
    v29 = *(v35 + qword_27CE63F40);
    v30 = *(v35 + qword_27CE63F40 + 8);
    *v28 = 0x3FF0000000000000;
    *(v28 + 8) = 0;
    if ((v30 & 1) != 0 || v29 != 1.0)
    {
      goto LABEL_12;
    }
  }

  return sub_21D0CF7E0(v14, &unk_27CE5F300, &qword_21DC16A60);
}

double sub_21D94D6A0()
{

  sub_21D0CF7E0(v0 + qword_27CE8EBF0, &unk_27CE62920, &unk_21DC2BF30);

  return result;
}

id TTRIReminderNotesCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_21D94D740(uint64_t a1)
{

  sub_21D0CF7E0(a1 + qword_27CE8EBF0, &unk_27CE62920, &unk_21DC2BF30);

  return result;
}

void *TTRIReminderNotesCellContent.editableReminderCell(hosting:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _s15RemindersUICore33TTRIReminderNotesCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v24 - v8);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
  v10 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
  sub_21D952544(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D952544(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  v12 = v11[5];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_16;
    }

    sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
    v15 = v14;
    v16 = v13;
    v17 = sub_21DBFB63C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v14)
  {
    goto LABEL_16;
  }

  v18 = v11[6];
  v19 = *(a2 + v18);
  if (!*(a1 + v18))
  {

    if (!v19)
    {

      goto LABEL_13;
    }

LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  if (!v19)
  {

    goto LABEL_16;
  }

  sub_21DBF8E0C();
  v20 = sub_21DBF8E0C();
  v21 = sub_21D3220EC(v20, v19);

  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (*(a1 + v11[7]) != *(a2 + v11[7]))
  {
    goto LABEL_16;
  }

  v22 = *(a1 + v11[8]) ^ *(a2 + v11[8]) ^ 1;
  return v22 & 1;
}

void sub_21D94DA6C(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 3)
  {
    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    sub_21D0D3954(v1 + v14, v8, &qword_27CE5E9D0, &unk_21DC1D5F0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5E9D0, &unk_21DC1D5F0);
    }

    else
    {
      sub_21D1059D4(v8, v12, type metadata accessor for TTRIReminderNotesCellContentState);
      v15 = *((*v13 & *v1) + 0x68);
      swift_beginAccess();
      v16 = *(v1 + v15);
      if (!v16 || (v17 = [*(v16 + qword_27CE63F48) attributedText]) == 0)
      {
        v17 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      }

      v18 = *(v9 + 20);

      *&v12[v18] = v17;
      sub_21D1054F4(v12, v5, type metadata accessor for TTRIReminderNotesCellContentState);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_21D71E4F8(v5);
      sub_21D0CF7E0(v5, &qword_27CE5E9D0, &unk_21DC1D5F0);
      sub_21D952544(v12, type metadata accessor for TTRIReminderNotesCellContentState);
    }
  }
}

void **initializeBufferWithCopyOfBuffer for TTRIReminderNotesCellContentState(void **a1, void **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(a2, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v113 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v113(a1 + v39, a2 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (a2 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_130;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(a2, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, a2, v48);
              *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(a2 + *(v49 + 20));
            goto LABEL_130;
          case 8:
            *a1 = *a2;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
LABEL_130:
            swift_storeEnumTagMultiPayload();
            goto LABEL_131;
        }

LABEL_35:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_131:
        v103 = v6[5];
        v104 = v6[6];
        v105 = *(a2 + v103);
        *(a1 + v103) = v105;
        *(a1 + v104) = *(a2 + v104);
        v106 = v6[8];
        *(a1 + v6[7]) = *(a2 + v6[7]);
        *(a1 + v106) = *(a2 + v106);
        v107 = v105;
        sub_21DBF8E0C();
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v20 = a2[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_130;
      }

      v31 = *a2;
      *a1 = *a2;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(a2 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v15, a2 + v15, *(*(v27 - 8) + 64));
        goto LABEL_130;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_115;
          }

          goto LABEL_128;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_128;
        }

LABEL_114:
        v100 = *(a2 + v15);
        *(a1 + v15) = v100;
        v101 = v100;
        swift_storeEnumTagMultiPayload();
LABEL_129:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_130;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_115;
          }

LABEL_128:
          memcpy(a1 + v15, a2 + v15, *(v17 + 64));
          goto LABEL_129;
        }

        goto LABEL_114;
      }

LABEL_115:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v15, a2 + v15, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_129;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v38 > 2)
        {
          goto LABEL_115;
        }

        if (v38 == 1)
        {
          goto LABEL_114;
        }

        if (v38 != 2)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v14 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v37 > 2)
        {
          goto LABEL_115;
        }

        if (v37 == 1)
        {
          goto LABEL_114;
        }

        if (v37 != 2)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_115;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v118 = v6;
      if (v13 > 4)
      {
        if (v13 <= 7)
        {
          if (v13 == 5 || v13 == 6)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

        if (v13 != 8 && v13 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
LABEL_92:
          v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v57 = v56[5];
          v58 = a1 + v57;
          v59 = a2 + v57;
          v60 = *(a2 + v57 + 8);
          if (v60)
          {
            *v58 = *v59;
            *(v58 + 1) = v60;
            v61 = *(v59 + 2);
            v62 = *(v59 + 3);
            v63 = *(v59 + 4);
            v64 = *(v59 + 5);
            v65 = *(v59 + 6);
            v109 = *(v59 + 7);
            v114 = v59[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v61, v62, v63, v64, v65, v109, v114);
            *(v58 + 2) = v61;
            *(v58 + 3) = v62;
            *(v58 + 4) = v63;
            *(v58 + 5) = v64;
            *(v58 + 6) = v65;
            *(v58 + 7) = v109;
            v58[64] = v114;
            *(v58 + 65) = *(v59 + 65);
            v66 = v59[120];
            if (v66 == 255)
            {
              *(v58 + 72) = *(v59 + 72);
              *(v58 + 88) = *(v59 + 88);
              *(v58 + 104) = *(v59 + 104);
              v58[120] = v59[120];
            }

            else
            {
              v110 = *(v59 + 10);
              v115 = *(v59 + 9);
              v67 = *(v59 + 11);
              v68 = *(v59 + 12);
              v69 = *(v59 + 13);
              v70 = *(v59 + 14);
              v71 = v66 & 1;
              sub_21D0FB960(v115, v110, v67, v68, v69, v70, v66 & 1);
              *(v58 + 9) = v115;
              *(v58 + 10) = v110;
              *(v58 + 11) = v67;
              *(v58 + 12) = v68;
              *(v58 + 13) = v69;
              *(v58 + 14) = v70;
              v58[120] = v71;
            }

            v6 = v118;
            v58[121] = v59[121];
          }

          else
          {
            v72 = *(v59 + 5);
            *(v58 + 4) = *(v59 + 4);
            *(v58 + 5) = v72;
            *(v58 + 6) = *(v59 + 6);
            *(v58 + 106) = *(v59 + 106);
            v73 = *(v59 + 1);
            *v58 = *v59;
            *(v58 + 1) = v73;
            v74 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v74;
          }

          *(a1 + v56[6]) = *(a2 + v56[6]);
          *(a1 + v56[7]) = *(a2 + v56[7]);
          *(a1 + v56[8]) = *(a2 + v56[8]);
          *(a1 + v56[9]) = *(a2 + v56[9]);
          *(a1 + v56[10]) = *(a2 + v56[10]);
          v75 = v56[11];
          v76 = *(a2 + v75);
          *(a1 + v75) = v76;
          v77 = v76;
          goto LABEL_130;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

LABEL_91:
          memcpy(a1, a2, *(*(v12 - 8) + 64));
          goto LABEL_92;
        }
      }

      v51 = *a2;
      *a1 = *a2;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v119 = v6;
    if (v23 > 4)
    {
      if (v23 <= 7)
      {
        if (v23 == 5 || v23 == 6)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

      if (v23 != 8 && v23 != 9)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
LABEL_100:
        v78 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v79 = v78[5];
        v80 = a1 + v79;
        v81 = a2 + v79;
        v82 = *(a2 + v79 + 8);
        if (v82)
        {
          *v80 = *v81;
          *(v80 + 1) = v82;
          v83 = *(v81 + 2);
          v84 = *(v81 + 3);
          v85 = *(v81 + 4);
          v86 = *(v81 + 5);
          v87 = *(v81 + 6);
          v116 = *(v81 + 7);
          v111 = v81[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v83, v84, v85, v86, v87, v116, v111);
          *(v80 + 2) = v83;
          *(v80 + 3) = v84;
          *(v80 + 4) = v85;
          *(v80 + 5) = v86;
          *(v80 + 6) = v87;
          *(v80 + 7) = v116;
          v80[64] = v111;
          *(v80 + 65) = *(v81 + 65);
          v88 = v81[120];
          if (v88 == 255)
          {
            *(v80 + 72) = *(v81 + 72);
            *(v80 + 88) = *(v81 + 88);
            *(v80 + 104) = *(v81 + 104);
            v80[120] = v81[120];
          }

          else
          {
            v112 = *(v81 + 10);
            v117 = *(v81 + 9);
            v89 = *(v81 + 11);
            v90 = *(v81 + 12);
            v91 = *(v81 + 13);
            v92 = *(v81 + 14);
            v93 = v88 & 1;
            sub_21D0FB960(v117, v112, v89, v90, v91, v92, v88 & 1);
            *(v80 + 9) = v117;
            *(v80 + 10) = v112;
            *(v80 + 11) = v89;
            *(v80 + 12) = v90;
            *(v80 + 13) = v91;
            *(v80 + 14) = v92;
            v80[120] = v93;
          }

          v6 = v119;
          v80[121] = v81[121];
        }

        else
        {
          v94 = *(v81 + 5);
          *(v80 + 4) = *(v81 + 4);
          *(v80 + 5) = v94;
          *(v80 + 6) = *(v81 + 6);
          *(v80 + 106) = *(v81 + 106);
          v95 = *(v81 + 1);
          *v80 = *v81;
          *(v80 + 1) = v95;
          v96 = *(v81 + 3);
          *(v80 + 2) = *(v81 + 2);
          *(v80 + 3) = v96;
        }

        *(a1 + v78[6]) = *(a2 + v78[6]);
        *(a1 + v78[7]) = *(a2 + v78[7]);
        *(a1 + v78[8]) = *(a2 + v78[8]);
        *(a1 + v78[9]) = *(a2 + v78[9]);
        *(a1 + v78[10]) = *(a2 + v78[10]);
        v97 = v78[11];
        v98 = *(a2 + v97);
        *(a1 + v97) = v98;
        v99 = v98;
        goto LABEL_130;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

LABEL_99:
        memcpy(a1, a2, *(*(v22 - 8) + 64));
        goto LABEL_100;
      }
    }

    v54 = *a2;
    *a1 = *a2;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    goto LABEL_100;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

double destroy for TTRIReminderNotesCellContentState(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:

  return result;
}

void **initializeWithCopy for TTRIReminderNotesCellContentState(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v119 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_90:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          v58 = *(a2 + v55 + 8);
          if (v58)
          {
            v113 = a1;
            v117 = a2;
            *v56 = *v57;
            *(v56 + 1) = v58;
            v59 = *(v57 + 2);
            v60 = *(v57 + 3);
            v61 = *(v57 + 4);
            v62 = *(v57 + 5);
            v64 = *(v57 + 6);
            v63 = *(v57 + 7);
            v65 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v59, v60, v61, v62, v64, v63, v65);
            *(v56 + 2) = v59;
            *(v56 + 3) = v60;
            *(v56 + 4) = v61;
            *(v56 + 5) = v62;
            *(v56 + 6) = v64;
            *(v56 + 7) = v63;
            v56[64] = v65;
            *(v56 + 65) = *(v57 + 65);
            v66 = v57[120];
            if (v66 == 255)
            {
              *(v56 + 72) = *(v57 + 72);
              *(v56 + 88) = *(v57 + 88);
              *(v56 + 104) = *(v57 + 104);
              v56[120] = v57[120];
            }

            else
            {
              v67 = *(v57 + 9);
              v68 = *(v57 + 10);
              v69 = *(v57 + 11);
              v70 = *(v57 + 12);
              v71 = *(v57 + 13);
              v72 = *(v57 + 14);
              v73 = v66 & 1;
              sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
              *(v56 + 9) = v67;
              *(v56 + 10) = v68;
              *(v56 + 11) = v69;
              *(v56 + 12) = v70;
              *(v56 + 13) = v71;
              *(v56 + 14) = v72;
              v56[120] = v73;
            }

            a3 = v119;
            v56[121] = v57[121];
            a1 = v113;
            a2 = v117;
          }

          else
          {
            v74 = *(v57 + 5);
            *(v56 + 4) = *(v57 + 4);
            *(v56 + 5) = v74;
            *(v56 + 6) = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            v75 = *(v57 + 1);
            *v56 = *v57;
            *(v56 + 1) = v75;
            v76 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v76;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v77 = v54[11];
          v78 = *(a2 + v77);
          *(a1 + v77) = v78;
          v79 = v78;
          goto LABEL_128;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

LABEL_89:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_90;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_90;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v120 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        v80 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v81 = v80[5];
        v82 = a1 + v81;
        v83 = a2 + v81;
        v84 = *(a2 + v81 + 8);
        if (v84)
        {
          v118 = a2;
          *v82 = *v83;
          *(v82 + 1) = v84;
          v85 = *(v83 + 2);
          v86 = *(v83 + 3);
          v87 = *(v83 + 4);
          v88 = *(v83 + 5);
          v89 = *(v83 + 6);
          v90 = *(v83 + 7);
          v114 = v83[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v90, v114);
          *(v82 + 2) = v85;
          *(v82 + 3) = v86;
          *(v82 + 4) = v87;
          *(v82 + 5) = v88;
          *(v82 + 6) = v89;
          *(v82 + 7) = v90;
          v82[64] = v114;
          *(v82 + 65) = *(v83 + 65);
          v91 = v83[120];
          if (v91 == 255)
          {
            *(v82 + 72) = *(v83 + 72);
            *(v82 + 88) = *(v83 + 88);
            *(v82 + 104) = *(v83 + 104);
            v82[120] = v83[120];
          }

          else
          {
            v92 = *(v83 + 9);
            v115 = *(v83 + 10);
            v93 = *(v83 + 11);
            v94 = *(v83 + 12);
            v95 = *(v83 + 13);
            v96 = *(v83 + 14);
            v97 = v91 & 1;
            sub_21D0FB960(v92, v115, v93, v94, v95, v96, v91 & 1);
            *(v82 + 9) = v92;
            *(v82 + 10) = v115;
            *(v82 + 11) = v93;
            *(v82 + 12) = v94;
            *(v82 + 13) = v95;
            *(v82 + 14) = v96;
            v82[120] = v97;
          }

          a3 = v120;
          v82[121] = v83[121];
          a2 = v118;
        }

        else
        {
          v98 = *(v83 + 5);
          *(v82 + 4) = *(v83 + 4);
          *(v82 + 5) = v98;
          *(v82 + 6) = *(v83 + 6);
          *(v82 + 106) = *(v83 + 106);
          v99 = *(v83 + 1);
          *v82 = *v83;
          *(v82 + 1) = v99;
          v100 = *(v83 + 3);
          *(v82 + 2) = *(v83 + 2);
          *(v82 + 3) = v100;
        }

        *(a1 + v80[6]) = *(a2 + v80[6]);
        *(a1 + v80[7]) = *(a2 + v80[7]);
        *(a1 + v80[8]) = *(a2 + v80[8]);
        *(a1 + v80[9]) = *(a2 + v80[9]);
        *(a1 + v80[10]) = *(a2 + v80[10]);
        v101 = v80[11];
        v102 = *(a2 + v101);
        *(a1 + v101) = v102;
        v103 = v102;
        goto LABEL_128;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

LABEL_97:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_98;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_98;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_128;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v104 = *(a2 + v13);
      *(a1 + v13) = v104;
      v105 = v104;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_128;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v106 = sub_21DBF563C();
    (*(*(v106 - 8) + 16))(a1 + v13, a2 + v13, v106);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v116 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v116(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v40 = (a1 + v39);
      v41 = (a2 + v39);
      v42 = v41[1];
      if (v42)
      {
        *v40 = *v41;
        v40[1] = v42;
        v43 = v41[2];
        v40[2] = v43;
        sub_21DBF8E0C();
        v44 = v43;
      }

      else
      {
        *v40 = *v41;
        v40[2] = v41[2];
      }

      goto LABEL_128;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1, a2, v46);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      goto LABEL_128;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
      swift_storeEnumTagMultiPayload();
      goto LABEL_129;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_129:
  v107 = a3[5];
  v108 = a3[6];
  v109 = *(a2 + v107);
  *(a1 + v107) = v109;
  *(a1 + v108) = *(a2 + v108);
  v110 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v110) = *(a2 + v110);
  v111 = v109;
  sub_21DBF8E0C();
  return a1;
}

void **assignWithCopy for TTRIReminderNotesCellContentState(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D952544(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v120 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v120(a1 + v37, a2 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (a2 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_129;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, a2, v46);
              *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v18 = a2[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_129;
      }

      v29 = *a2;
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(a2 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
        goto LABEL_129;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v108 = *(a2 + v13);
        *(a1 + v13) = v108;
        v109 = v108;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_129;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v13, a2 + v13, *(v15 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v110 = sub_21DBF563C();
      (*(*(v110 - 8) + 16))(a1 + v13, a2 + v13, v110);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v36 > 2)
        {
          goto LABEL_114;
        }

        if (v36 == 1)
        {
          goto LABEL_113;
        }

        if (v36 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v35 > 2)
        {
          goto LABEL_114;
        }

        if (v35 == 1)
        {
          goto LABEL_113;
        }

        if (v35 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_130;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v125 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_91:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          if (*(a2 + v55 + 8))
          {
            *v56 = *v57;
            *(v56 + 1) = *(v57 + 1);
            v58 = *(v57 + 2);
            v59 = *(v57 + 3);
            v60 = *(v57 + 4);
            v61 = *(v57 + 5);
            v62 = *(v57 + 6);
            v116 = *(v57 + 7);
            v121 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v58, v59, v60, v61, v62, v116, v121);
            *(v56 + 2) = v58;
            *(v56 + 3) = v59;
            *(v56 + 4) = v60;
            *(v56 + 5) = v61;
            *(v56 + 6) = v62;
            *(v56 + 7) = v116;
            v56[64] = v121;
            v56[65] = v57[65];
            v56[66] = v57[66];
            v56[67] = v57[67];
            v56[68] = v57[68];
            v63 = v57[120];
            if (v63 == 255)
            {
              v75 = *(v57 + 72);
              v76 = *(v57 + 88);
              v77 = *(v57 + 104);
              v56[120] = v57[120];
              *(v56 + 104) = v77;
              *(v56 + 88) = v76;
              *(v56 + 72) = v75;
            }

            else
            {
              v117 = *(v57 + 10);
              v122 = *(v57 + 9);
              v64 = *(v57 + 11);
              v65 = *(v57 + 12);
              v66 = *(v57 + 13);
              v67 = *(v57 + 14);
              v68 = v63 & 1;
              sub_21D0FB960(v122, v117, v64, v65, v66, v67, v63 & 1);
              *(v56 + 9) = v122;
              *(v56 + 10) = v117;
              *(v56 + 11) = v64;
              *(v56 + 12) = v65;
              *(v56 + 13) = v66;
              *(v56 + 14) = v67;
              v56[120] = v68;
            }

            a3 = v125;
            v56[121] = v57[121];
          }

          else
          {
            v69 = *v57;
            v70 = *(v57 + 1);
            v71 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v71;
            *v56 = v69;
            *(v56 + 1) = v70;
            v72 = *(v57 + 4);
            v73 = *(v57 + 5);
            v74 = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            *(v56 + 5) = v73;
            *(v56 + 6) = v74;
            *(v56 + 4) = v72;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v78 = v54[11];
          v79 = *(a2 + v78);
          *(a1 + v78) = v79;
          v80 = v79;
          goto LABEL_129;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

LABEL_90:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_91;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_91;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v126 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        v81 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v82 = v81[5];
        v83 = a1 + v82;
        v84 = a2 + v82;
        if (*(a2 + v82 + 8))
        {
          *v83 = *v84;
          *(v83 + 1) = *(v84 + 1);
          v85 = *(v84 + 2);
          v86 = *(v84 + 3);
          v87 = *(v84 + 4);
          v88 = *(v84 + 5);
          v89 = *(v84 + 6);
          v123 = *(v84 + 7);
          v118 = v84[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v123, v118);
          *(v83 + 2) = v85;
          *(v83 + 3) = v86;
          *(v83 + 4) = v87;
          *(v83 + 5) = v88;
          *(v83 + 6) = v89;
          *(v83 + 7) = v123;
          v83[64] = v118;
          v83[65] = v84[65];
          v83[66] = v84[66];
          v83[67] = v84[67];
          v83[68] = v84[68];
          v90 = v84[120];
          if (v90 == 255)
          {
            v102 = *(v84 + 72);
            v103 = *(v84 + 88);
            v104 = *(v84 + 104);
            v83[120] = v84[120];
            *(v83 + 104) = v104;
            *(v83 + 88) = v103;
            *(v83 + 72) = v102;
          }

          else
          {
            v119 = *(v84 + 10);
            v124 = *(v84 + 9);
            v91 = *(v84 + 11);
            v92 = *(v84 + 12);
            v93 = *(v84 + 13);
            v94 = *(v84 + 14);
            v95 = v90 & 1;
            sub_21D0FB960(v124, v119, v91, v92, v93, v94, v90 & 1);
            *(v83 + 9) = v124;
            *(v83 + 10) = v119;
            *(v83 + 11) = v91;
            *(v83 + 12) = v92;
            *(v83 + 13) = v93;
            *(v83 + 14) = v94;
            v83[120] = v95;
          }

          a3 = v126;
          v83[121] = v84[121];
        }

        else
        {
          v96 = *v84;
          v97 = *(v84 + 1);
          v98 = *(v84 + 3);
          *(v83 + 2) = *(v84 + 2);
          *(v83 + 3) = v98;
          *v83 = v96;
          *(v83 + 1) = v97;
          v99 = *(v84 + 4);
          v100 = *(v84 + 5);
          v101 = *(v84 + 6);
          *(v83 + 106) = *(v84 + 106);
          *(v83 + 5) = v100;
          *(v83 + 6) = v101;
          *(v83 + 4) = v99;
        }

        *(a1 + v81[6]) = *(a2 + v81[6]);
        *(a1 + v81[7]) = *(a2 + v81[7]);
        *(a1 + v81[8]) = *(a2 + v81[8]);
        *(a1 + v81[9]) = *(a2 + v81[9]);
        *(a1 + v81[10]) = *(a2 + v81[10]);
        v105 = v81[11];
        v106 = *(a2 + v105);
        *(a1 + v105) = v106;
        v107 = v106;
        goto LABEL_129;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

LABEL_98:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_99;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_99;
  }

LABEL_130:
  v111 = a3[5];
  v112 = *(a1 + v111);
  v113 = *(a2 + v111);
  *(a1 + v111) = v113;
  v114 = v113;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  sub_21DBF8E0C();

  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_21D952544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRIReminderNotesCellContentState(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  v43 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v43] = a2[v43];
  return a1;
}