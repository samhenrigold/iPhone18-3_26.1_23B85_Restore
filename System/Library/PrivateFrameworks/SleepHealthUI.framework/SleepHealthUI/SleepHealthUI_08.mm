uint64_t sub_269CEFC84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CEFAB4(v3, a1);
}

uint64_t sub_269CEFD34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269CEFD90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_269CEFDF0()
{
  result = qword_280350160;
  if (!qword_280350160)
  {
    sub_269CF0114(255, &qword_280350168, type metadata accessor for ScheduleOccurrenceView, MEMORY[0x277CE0FA8]);
    sub_269CEFEC8(&qword_280350170, type metadata accessor for ScheduleOccurrenceView, &protocol conformance descriptor for ScheduleOccurrenceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350160);
  }

  return result;
}

uint64_t sub_269CEFEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269CEFF80()
{
  result = qword_280350180;
  if (!qword_280350180)
  {
    sub_269CF0114(255, &qword_280350178, type metadata accessor for ScheduleOccurrenceViewModel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350180);
  }

  return result;
}

uint64_t sub_269CF0008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269CF006C()
{
  result = qword_280350190;
  if (!qword_280350190)
  {
    sub_269CF0114(255, &qword_280350198, sub_269CF0178, MEMORY[0x277CE0FA8]);
    sub_269CF027C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350190);
  }

  return result;
}

void sub_269CF0114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CF0178(uint64_t a1)
{
  if (!qword_2803501A0)
  {
    sub_269CF0114(255, &qword_280350178, type metadata accessor for ScheduleOccurrenceViewModel, MEMORY[0x277D83940]);
    type metadata accessor for ScheduleOccurrenceViewModel(255);
    type metadata accessor for ScheduleOccurrenceView(255);
    sub_269CEFF80();
    sub_269CEFEC8(&qword_280350188, type metadata accessor for ScheduleOccurrenceViewModel, &protocol conformance descriptor for ScheduleOccurrenceViewModel);
    v1 = sub_269D9A0A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803501A0);
    }
  }
}

unint64_t sub_269CF027C()
{
  result = qword_2803501A8;
  if (!qword_2803501A8)
  {
    sub_269CF0178(255);
    sub_269CEFEC8(&qword_280350170, type metadata accessor for ScheduleOccurrenceView, &protocol conformance descriptor for ScheduleOccurrenceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803501A8);
  }

  return result;
}

uint64_t sub_269CF0354(uint64_t *a1, uint64_t (*a2)(uint64_t), void *a3)
{
  v6 = v3;
  v7 = *a1;
  swift_beginAccess();
  sub_269C63264(&v6[v7], v28);
  if (!v29)
  {
    sub_269C8492C(v28, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    return sub_269C8492C(&v25, &qword_2803501D8, &qword_2803501E0, &protocol descriptor for TimePickerItem);
  }

  sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
  sub_269C3232C(0, &qword_2803501E0, &protocol descriptor for TimePickerItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    return sub_269C8492C(&v25, &qword_2803501D8, &qword_2803501E0, &protocol descriptor for TimePickerItem);
  }

  if (!*(&v26 + 1))
  {
    return sub_269C8492C(&v25, &qword_2803501D8, &qword_2803501E0, &protocol descriptor for TimePickerItem);
  }

  v8 = sub_269C25520(&v25, v28);
  v9 = a2(v8);
  v10 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher];

  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1Tm(v28, v29);
  v13 = (*(v12 + 24))(v11, v12);

  if (!v10 || (, v13 != v10))
  {
    v14 = *&v6[*a3];
    v15 = v29;
    v16 = v30;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v17 = *(v16 + 24);
    v18 = v14;
    *&v18[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher] = v17(v15, v16);

    sub_269CD9628();
  }

  __swift_project_boxed_opaque_existential_1Tm(v28, v29);
  v19 = sub_269D98160();
  if (v20)
  {
    v21 = *&v6[*a3];
    *&v25 = v19;
    *(&v25 + 1) = v20;
    v22 = v21;

    MEMORY[0x26D650930](0x72656B6369502ELL, 0xE700000000000000);

    v23 = sub_269D9A5F0();

    [v22 setAccessibilityIdentifier_];
  }

  [v6 layoutIfNeeded];
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

id sub_269CF0630()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  }

  else
  {
    v4 = v0;
    v5 = sub_269D912B8();
    v7 = v6;
    v9 = v8;
    v10 = v5;
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for TimeIntervalPickerView());
    v14 = sub_269CD9CE4(v10, v12 & 1, v7, v9);
    v15 = *(v4 + v1);
    *(v4 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_269CF06D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker] = 0;
  if (a3)
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for TimePickerTableViewCell();
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  sub_269CF0F78(sub_269CF0630);
  v9 = sub_269CF0630();
  v10 = [v8 contentView];
  UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(v10, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

  v11 = [v8 backgroundColor];
  if (!v11)
  {
    v11 = [objc_opt_self() systemGroupedBackgroundColor];
  }

  v12 = v11;
  [v8 setBackgroundColor_];
  v13 = [v8 selectedBackgroundView];
  [v13 setBackgroundColor_];

  return v8;
}

uint64_t sub_269CF0A98()
{
  MEMORY[0x26D650930](60, 0xE100000000000000);
  swift_getObjectType();
  sub_269CF12E8();
  v0 = sub_269D9A660();
  MEMORY[0x26D650930](v0);

  MEMORY[0x26D650930](32, 0xE100000000000000);
  sub_269D9B0E0();
  return 0;
}

void sub_269CF0B70(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for TimePickerTableViewCell();
  v6 = *a4;
  v7 = a1;
  objc_msgSendSuper2(&v8, v6);
  sub_269CF121C();
}

id sub_269CF0C40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimePickerTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269CF0CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item;
  swift_beginAccess();
  return sub_269C63264(v1 + v3, a1);
}

uint64_t sub_269CF0D54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item;
  swift_beginAccess();
  sub_269C6314C(a1, v1 + v3);
  swift_endAccess();
  sub_269CF0354(&OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item, sub_269CF0630, &OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
}

uint64_t (*sub_269CF0DFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269CF0E60;
}

uint64_t sub_269CF0E60(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_269CF0354(&OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item, sub_269CF0630, &OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  }

  return result;
}

uint64_t sub_269CF0EB8(uint64_t a1)
{
  *(a1 + 8) = sub_269CF0F20(&qword_2803501C8, &unk_269DA65F8);
  result = sub_269CF0F20(&qword_2803501D0, &unk_269DA6620);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_269CF0F20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimePickerTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269CF0F78(uint64_t (*a1)(void))
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setBackgroundView_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setSelectedBackgroundView_];

  v5 = [v1 contentView];
  v6 = a1();
  [v5 addSubview_];
}

void sub_269CF1064()
{
  v1 = v0;
  v2 = sub_269D97F80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v17 - v10;
  v12 = [v0 viewController];
  if (v12)
  {
    v13 = v12;
    sub_269D9AC00();

    (*(v3 + 32))(v11, v6, v2);
  }

  else
  {
    (*(v3 + 104))(v11, *MEMORY[0x277D10E40], v2);
  }

  v14 = sub_269D97F70();
  (*(v3 + 8))(v11, v2);
  v15 = v14;
  [v1 setBackgroundColor_];
  v16 = [v1 selectedBackgroundView];
  [v16 setBackgroundColor_];
}

void sub_269CF121C()
{
  v1 = [v0 backgroundColor];
  if (!v1)
  {
    v1 = [objc_opt_self() systemGroupedBackgroundColor];
  }

  v3 = v1;
  [v0 setBackgroundColor_];
  v2 = [v0 selectedBackgroundView];
  [v2 setBackgroundColor_];
}

unint64_t sub_269CF12E8()
{
  result = qword_2803501E8;
  if (!qword_2803501E8)
  {
    type metadata accessor for TimePickerTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2803501E8);
  }

  return result;
}

uint64_t AttributedString.applyingLetterSmallCaps(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_269D972A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CF1778(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v40 - v12;
  sub_269CF1778(0, &qword_280C0AF18, sub_269CF17CC);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v40 - v16;
  sub_269CF17CC(0);
  v49 = v18;
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v43 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v7 + 16);
  v45 = a2;
  v50 = v6;
  v51 = v3;
  result = v23(a2, v3, v6, v21);
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = sub_269D97650();
    v27 = *(v26 - 8);
    v48 = (v19 + 48);
    v40 = (v7 + 8);
    v28 = *(v27 + 56);
    v46 = v27 + 56;
    v47 = v28;
    v29 = (a1 + 40);
    v41 = v13;
    v42 = v17;
    v30 = v50;
    do
    {
      v31 = *v29;
      v52 = *(v29 - 1);
      v53 = v31;
      v47(v13, 1, 1, v26);
      v32 = sub_269CF224C(&qword_2803501F0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
      sub_269C3EEE8(v32, v33, v34);

      sub_269D97370();
      sub_269CF1860(v13, &qword_280C0B3E0, MEMORY[0x277CC9788]);
      if ((*v48)(v17, 1, v49) == 1)
      {

        result = sub_269CF1860(v17, &qword_280C0AF18, sub_269CF17CC);
      }

      else
      {
        v35 = v43;
        sub_269CF18BC(v17, v43);
        v36 = v26;
        v37 = v44;
        sub_269D9A700();

        sub_269CF224C(&qword_280C0AF10, sub_269CF17CC, MEMORY[0x277D83D30]);
        sub_269D97220();
        v38 = v37;
        v26 = v36;
        (*v40)(v38, v30);
        v39 = v35;
        v13 = v41;
        v17 = v42;
        result = sub_269CF1920(v39);
      }

      v29 += 2;
      --v25;
    }

    while (v25);
  }

  return result;
}

void sub_269CF1778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CF17CC(uint64_t a1)
{
  if (!qword_280C0AF20)
  {
    sub_269D97270();
    sub_269CF224C(&qword_280C0B3F0, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    v1 = sub_269D9AA60();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0AF20);
    }
  }
}

uint64_t sub_269CF1860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269CF1778(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269CF18BC(uint64_t a1, uint64_t a2)
{
  sub_269CF17CC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF1920(uint64_t a1)
{
  sub_269CF17CC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AttributedString.setNumericAttributes(_:)(uint64_t a1)
{
  v2 = v1;
  v33[1] = a1;
  sub_269CF17CC(0);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D96F60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v33 - v14;
  v16 = sub_269D97210();
  MEMORY[0x28223BE20](v16, v17);
  sub_269D97200();
  sub_269CF224C(&qword_280C0B3F8, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v35[0] = sub_269D9A760();
  v35[1] = v18;
  sub_269D96F40();
  sub_269D96F50();
  v19 = *(v8 + 8);
  v20 = v19(v15, v7);
  sub_269C3EEE8(v20, v21, v22);
  v23 = sub_269D9AE80();
  v19(v11, v7);

  v24 = sub_269CF20A4(v23);

  sub_269CF1CE4(v24, v2);
  v26 = v25;

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v34 + 80);
    v33[0] = v26;
    v29 = v26 + ((v28 + 32) & ~v28);
    v30 = *(v34 + 72);
    do
    {
      sub_269CF213C(v29, v6);
      sub_269CF224C(&qword_280C0AF10, sub_269CF17CC, MEMORY[0x277D83D30]);
      v31 = sub_269D972B0();
      sub_269D972D0();
      v31(v35, 0);
      sub_269CF1920(v6);
      v29 += v30;
      --v27;
    }

    while (v27);
  }
}

void sub_269CF1CE4(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  sub_269CF1778(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v42 = &v37 - v5;
  v41 = sub_269D972A0();
  MEMORY[0x28223BE20](v41, v6);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v38 = (v7 + 8);
  v39 = (v7 + 16);
  v44 = a1;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v12)
  {
    v47 = v15;
LABEL_11:
    v17 = (*(v44 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v17;
    v19 = v17[1];
    v20 = v40;
    v21 = v41;
    (*v39)(v40, v43, v41);
    v45 = v18;
    v46 = v19;
    v22 = sub_269D97650();
    v23 = v42;
    v24 = (*(*(v22 - 8) + 56))(v42, 1, 1, v22);
    sub_269C3EEE8(v24, v25, v26);

    v27 = sub_269D97280();
    sub_269CF1860(v23, &qword_280C0B3E0, MEMORY[0x277CC9788]);
    (*v38)(v20, v21);

    v28 = *(v27 + 16);
    v15 = v47;
    v29 = v47[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 > v15[3] >> 1)
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v15 = sub_269D623B4(isUniquelyReferenced_nonNull_native, v32, 1, v15);
    }

    v12 &= v12 - 1;
    if (*(v27 + 16))
    {
      v33 = (v15[3] >> 1) - v15[2];
      sub_269CF17CC(0);
      if (v33 < v28)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v34 = v15[2];
        v35 = __OFADD__(v34, v28);
        v36 = v34 + v28;
        if (v35)
        {
          goto LABEL_28;
        }

        v15[2] = v36;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v47 = v15;
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_269CF20A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D650BC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_269D690B4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_269CF213C(uint64_t a1, uint64_t a2)
{
  sub_269CF17CC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF21A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKCategoryValueSleepAnalysis(0);
  v4 = v3;
  v5 = sub_269CF224C(&qword_2803501F8, type metadata accessor for HKCategoryValueSleepAnalysis, &unk_269DA05DC);
  result = MEMORY[0x26D650BC0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_269D69204(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_269CF224C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepScorePetals(uint64_t a1)
{
  result = qword_280350230;
  if (!qword_280350230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CF2308(uint64_t a1)
{
  sub_269CF3830(319, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_269CF23FC@<X0>(void *a1@<X8>)
{
  v3 = sub_269D99040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CF3830(0, &qword_280C0B670, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for SleepScorePetals(0);
  sub_269CF3894(v1 + *(v12 + 44), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269D989F0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_269D9AB70();
    v15 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269CF2610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v104 = a2;
  v5 = sub_269D990F0();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v119 = sub_269D989F0();
  v7 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v8);
  v118 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v117 = &v92 - v12;
  v13 = sub_269D97AC0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v102 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v105 = &v92 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v92 - v22;
  sub_269CF34DC(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v97 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v96 = &v92 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v95 = &v92 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v93 = &v92 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v110 = &v92 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v114 = &v92 - v41;
  sub_269D9A8E0();
  v94 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = *(a1 + 48);
  v111 = *(a1 + 56);
  v43 = *(a1 + 64);
  v44 = *MEMORY[0x277D62588];
  v45 = *(v14 + 104);
  v107 = v14 + 104;
  v116 = v45;
  v45(v23, v44, v13);
  SleepScoreComponent.uiColor.getter();
  v46 = sub_269D99CC0();
  v47 = *(v14 + 8);
  v106 = v13;
  v109 = v14 + 8;
  v115 = v47;
  v47(v23, v13);
  v48 = v117;
  sub_269CF23FC(v117);
  v49 = *(v7 + 104);
  v50 = v118;
  v51 = v119;
  v99 = *MEMORY[0x277CDF3C0];
  v100 = v7 + 104;
  v98 = v49;
  v49(v118);
  v52 = sub_269D989E0();
  v53 = *(v7 + 8);
  v53(v50, v51);
  v103 = v7 + 8;
  v101 = v53;
  v53(v48, v51);
  if (v52)
  {
    v54 = 0.28;
  }

  else
  {
    v54 = 0.24;
  }

  v55 = *a1;
  v56 = *(a1 + 8);
  v57 = *(a1 + 72);
  v58 = a3 + -1.57079633;
  sub_269D9A250();
  *&v133 = a3;
  *(&v133 + 1) = v42;
  v108 = v42;
  v59 = v111;
  *&v134 = v111;
  *(&v134 + 1) = v43;
  *&v135 = v46;
  *(&v135 + 1) = v54;
  *&v136 = v55;
  *(&v136 + 1) = v56;
  *&v137 = v57;
  *(&v137 + 1) = a3 + -1.57079633;
  *&v138 = v60;
  *(&v138 + 1) = v61;
  sub_269D990E0();
  sub_269D990D0();
  if (qword_28034D668 != -1)
  {
    swift_once();
  }

  sub_269D990C0();
  sub_269D990D0();
  v62 = v55 * 100.0;
  if (COERCE__INT64(fabs(v55 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v62 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v62 < 9.22337204e18)
  {
    *&v132[0] = v62;
    sub_269D990A0();
    sub_269D990D0();
    sub_269D99110();
    sub_269CF3544();
    v64 = v63;
    v112 = sub_269CF3928(&qword_280350280, sub_269CF3544, sub_269CF3718);
    v113 = v64;
    sub_269D99B40();

    v132[2] = v135;
    v132[3] = v136;
    v132[4] = v137;
    v132[5] = v138;
    v132[0] = v133;
    v132[1] = v134;
    sub_269CF37D0(v132, sub_269CF3544);
    v65 = v105;
    v53 = v106;
    v116(v105, *MEMORY[0x277D62580], v106);
    SleepScoreComponent.uiColor.getter();
    v66 = sub_269D99CC0();
    v115(v65, v53);
    v58 = *(a1 + 16);
    v67 = *(a1 + 24);
    sub_269D9A250();
    *&v126 = 0x3FF41B2F769CF0E0;
    v54 = v108;
    *(&v126 + 1) = v108;
    *&v127 = v59;
    *(&v127 + 1) = v43;
    *&v128 = v66;
    *(&v128 + 1) = 0x3FD3333333333333;
    *&v129 = v58;
    *(&v129 + 1) = v67;
    *&v130 = v57;
    *(&v130 + 1) = 0x3FF921FB54442D18;
    *&v131 = v68;
    *(&v131 + 1) = v69;
    sub_269D990E0();
    sub_269D990D0();
    if (qword_28034D670 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_12:
  sub_269D990C0();
  sub_269D990D0();
  v70 = v58 * 100.0;
  v71 = v110;
  if (COERCE__INT64(fabs(v58 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v70 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v70 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  *&v133 = v70;
  sub_269D990A0();
  sub_269D990D0();
  sub_269D99110();
  sub_269D99B40();

  v135 = v128;
  v136 = v129;
  v137 = v130;
  v138 = v131;
  v133 = v126;
  v134 = v127;
  sub_269CF37D0(&v133, sub_269CF3544);
  v72 = v102;
  v116(v102, *MEMORY[0x277D62590], v53);
  SleepScoreComponent.uiColor.getter();
  v73 = sub_269D99CC0();
  v115(v72, v53);
  v74 = v117;
  sub_269CF23FC(v117);
  v76 = v118;
  v75 = v119;
  v98(v118, v99, v119);
  LOBYTE(v72) = sub_269D989E0();
  v77 = v101;
  v101(v76, v75);
  v77(v74, v75);
  if (v72)
  {
    v78 = 0.4;
  }

  else
  {
    v78 = 0.3;
  }

  v58 = *(a1 + 32);
  v79 = *(a1 + 40);
  sub_269D9A250();
  *&v120 = 0x400921FB54442D18;
  *(&v120 + 1) = v54;
  *&v121 = v59;
  *(&v121 + 1) = v43;
  *&v122 = v73;
  *(&v122 + 1) = v78;
  *&v123 = v58;
  *(&v123 + 1) = v79;
  *&v124 = v57;
  *(&v124 + 1) = 0x4012D97C7F3321D2;
  *&v125 = v80;
  *(&v125 + 1) = v81;
  sub_269D990E0();
  sub_269D990D0();
  if (qword_28034D678 != -1)
  {
    goto LABEL_30;
  }

LABEL_19:
  sub_269D990C0();
  result = sub_269D990D0();
  v83 = v58 * 100.0;
  v84 = v104;
  if (COERCE__INT64(fabs(v58 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v83 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v83 < 9.22337204e18)
  {
    *&v126 = v83;
    sub_269D990A0();
    sub_269D990D0();
    sub_269D99110();
    v85 = v93;
    sub_269D99B40();

    v128 = v122;
    v129 = v123;
    v130 = v124;
    v131 = v125;
    v126 = v120;
    v127 = v121;
    sub_269CF37D0(&v126, sub_269CF3544);
    v86 = v114;
    v87 = v95;
    sub_269CF376C(v114, v95);
    v88 = v96;
    sub_269CF376C(v71, v96);
    v89 = v97;
    sub_269CF376C(v85, v97);
    sub_269CF376C(v87, v84);
    sub_269CF3474(0);
    v91 = v90;
    sub_269CF376C(v88, v84 + *(v90 + 48));
    sub_269CF376C(v89, v84 + *(v91 + 64));
    sub_269CF37D0(v85, sub_269CF34DC);
    sub_269CF37D0(v71, sub_269CF34DC);
    sub_269CF37D0(v86, sub_269CF34DC);
    sub_269CF37D0(v89, sub_269CF34DC);
    sub_269CF37D0(v88, sub_269CF34DC);
    sub_269CF37D0(v87, sub_269CF34DC);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_269CF324C(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v7 = sub_269D97AC0();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *a2, v7, v10);
  v13 = sub_269D97A90();
  v15 = v14;
  result = (*(v8 + 8))(v12, v7);
  *a3 = v13;
  *a4 = v15;
  return result;
}

void sub_269CF3358(uint64_t *a2@<X8>)
{
  *a2 = sub_269D9A180();
  a2[1] = v4;
  sub_269CF33DC(0);
  sub_269CF2610(v2, a2 + *(v5 + 44), 1.88495559);
  sub_269D9A250();
  v7 = v6;
  v9 = v8;
  sub_269CF359C(0);
  v11 = (a2 + *(v10 + 36));
  *v11 = 0xBFFE28C731EB6950;
  v11[1] = v7;
  v11[2] = v9;
}

void sub_269CF33DC(uint64_t a1)
{
  if (!qword_280350240)
  {
    sub_269CF3830(255, &qword_280350248, sub_269CF3474, MEMORY[0x277CE14B8]);
    v1 = sub_269D98BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350240);
    }
  }
}

void sub_269CF3474(uint64_t a1)
{
  if (!qword_280350250)
  {
    sub_269CF34DC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280350250);
    }
  }
}

void sub_269CF34DC(uint64_t a1)
{
  if (!qword_280350258)
  {
    sub_269CF3544();
    sub_269D99540();
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350258);
    }
  }
}

void sub_269CF3544()
{
  if (!qword_280350260)
  {
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350260);
    }
  }
}

void sub_269CF359C(uint64_t a1)
{
  if (!qword_280350268)
  {
    sub_269CF35FC(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350268);
    }
  }
}

void sub_269CF35FC(uint64_t a1)
{
  if (!qword_280350270)
  {
    sub_269CF3830(255, &qword_280350248, sub_269CF3474, MEMORY[0x277CE14B8]);
    sub_269CF3690();
    v1 = sub_269D99FE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350270);
    }
  }
}

unint64_t sub_269CF3690()
{
  result = qword_280350278;
  if (!qword_280350278)
  {
    sub_269CF3830(255, &qword_280350248, sub_269CF3474, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350278);
  }

  return result;
}

unint64_t sub_269CF3718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350288;
  if (!qword_280350288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350288);
  }

  return result;
}

uint64_t sub_269CF376C(uint64_t a1, uint64_t a2)
{
  sub_269CF34DC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF37D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269CF3830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269CF3894(uint64_t a1, uint64_t a2)
{
  sub_269CF3830(0, &qword_280C0B670, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF3928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CF39AC()
{
  result = qword_280350298;
  if (!qword_280350298)
  {
    sub_269CF35FC(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350298);
  }

  return result;
}

uint64_t ScheduleOccurrenceComponentsAccessibilityTableViewCell.Component.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269CF3B18(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269CF3B84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_269C257D4;
}

uint64_t sub_269CF3C38(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C0F0(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  sub_269CF3DA8(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_269CF3CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  return sub_269C6C0F0(v1 + v3, a1);
}

uint64_t sub_269CF3D48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  sub_269CF3DA8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_269CF3DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_269CF3E6C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = sub_269D97580();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_269D977A0();
  v6 = *(v22[0] - 8);
  v8 = MEMORY[0x28223BE20](v22[0], v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker);
  result = [v11 calendar];
  if (result)
  {
    v13 = result;
    sub_269D97710();

    sub_269CF8298(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v14 = sub_269D97780();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_269D9EBF0;
    v19 = v18 + v17;
    v20 = *(v15 + 104);
    v20(v19, *MEMORY[0x277CC9980], v14);
    v20(v19 + v16, *MEMORY[0x277CC99A0], v14);
    sub_269CF7250(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = [v11 date];
    sub_269D97540();

    sub_269D976C0();

    (*(v23 + 8))(v5, v24);
    return (*(v6 + 8))(v10, v22[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269CF4184()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView);
  }

  else
  {
    v4 = sub_269CF7564();
    v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id ScheduleOccurrenceComponentsAccessibilityTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void sub_269CF435C()
{
  v1 = [v0 contentView];
  [v1 addSubview_];

  v2 = [v0 contentView];
  [v2 addSubview_];
}

id sub_269CF4400()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11[4] = sub_269CC7C58;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_269CC7F6C;
  v11[3] = &block_descriptor_22;
  v2 = _Block_copy(v11);
  v3 = [v1 initWithDynamicProvider_];
  _Block_release(v2);

  [v0 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel];
  LODWORD(v5) = 1148829696;
  [v4 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
  LODWORD(v8) = 1144750080;
  [v7 setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v9];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setContentHorizontalAlignment_];
  sub_269CF648C();
  [v7 addTarget:v0 action:sel_datePickerDidChange forControlEvents:4096];
  return [v7 addTarget:v0 action:sel_datePickerDidEndEditing forControlEvents:0x40000];
}

void sub_269CF45F0()
{
  v1 = v0;
  swift_getObjectType();
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v64 - v4;
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v64 - v13;
  v15 = v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 8);
    v70 = ObjectType;
    if (v18(v1))
    {
      v67 = v16;
      v68 = v7;
      v19 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
      v20 = (v7 + 24);
      v69 = v6;
      if (v19)
      {
        sub_269CF3E6C(v10);
        v21 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
        swift_beginAccess();
        v22 = type metadata accessor for SleepScheduleComponentsViewModel(0);
        v23 = v22[10];
        (*v20)(v21 + v23, v10, v6);
        v24 = *(v21 + v22[7]);
        v66 = v23;
        if (v24)
        {
          v25 = sub_269D09440(v21 + v22[9], v21 + v23) & 1;
          v26 = sub_269D09680();
          v27 = v25 | 2;
          if ((v26 & 1) == 0)
          {
            v27 = v25;
          }

          *(v21 + v22[15]) = v27;
          if (v27)
          {
            v29 = 0;
            v28 = 1;
            goto LABEL_27;
          }

          if (v27)
          {
            v28 = 0;
            v29 = 1;
LABEL_27:
            *(v21 + v22[13]) = v28;
            *(v21 + v22[14]) = v29;
            v65 = v22[5];
            sub_269D97720();
            v48 = sub_269D0CBC0(v5, v21);
            v50 = v49;
            sub_269C67C78(v5);
            v51 = (v21 + v22[18]);

            *v51 = v48;
            v51[1] = v50;
            sub_269D97720();
            v52 = sub_269D0CBC0(v5, v21);
            v54 = v53;
            sub_269C67C78(v5);
            v55 = (v21 + v22[19]);

            *v55 = v52;
            v55[1] = v54;
            sub_269D0A9B8();
            (*(v68 + 8))(v10, v69);
LABEL_30:
            swift_endAccess();
            (*(v67 + 16))(v1, v70);
            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          *(v21 + v22[15]) = 0;
        }

        v28 = 0;
        v29 = 0;
        goto LABEL_27;
      }

      v66 = v5;
      sub_269CF3E6C(v14);
      v38 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
      swift_beginAccess();
      v39 = type metadata accessor for SleepScheduleComponentsViewModel(0);
      v40 = v39[9];
      (*v20)(v38 + v40, v14, v6);
      if (*(v38 + v39[7]))
      {
        v41 = v39[10];
        v65 = v40;
        v42 = sub_269D09440(v38 + v40, v38 + v41) & 1;
        v43 = sub_269D09680();
        v44 = v42 | 2;
        if ((v43 & 1) == 0)
        {
          v44 = v42;
        }

        *(v38 + v39[15]) = v44;
        if (v44)
        {
          v47 = 0;
          v46 = 1;
          v45 = v66;
          goto LABEL_29;
        }

        v45 = v66;
        if (v44)
        {
          v46 = 0;
          v47 = 1;
LABEL_29:
          *(v38 + v39[13]) = v46;
          *(v38 + v39[14]) = v47;
          v66 = v39[5];
          sub_269D97720();
          v56 = sub_269D0CBC0(v45, v38);
          v58 = v57;
          sub_269C67C78(v45);
          v59 = (v38 + v39[18]);

          *v59 = v56;
          v59[1] = v58;
          sub_269D97720();
          v60 = sub_269D0CBC0(v45, v38);
          v62 = v61;
          sub_269C67C78(v45);
          v63 = (v38 + v39[19]);

          *v63 = v60;
          v63[1] = v62;
          sub_269D0A9B8();
          (*(v68 + 8))(v14, v69);
          goto LABEL_30;
        }
      }

      else
      {
        *(v38 + v39[15]) = 0;
        v45 = v66;
      }

      v46 = 0;
      v47 = 0;
      goto LABEL_29;
    }

    swift_unknownObjectRelease();
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v30 = sub_269D98250();
  __swift_project_value_buffer(v30, qword_280C0B728);
  v31 = sub_269D98230();
  v32 = sub_269D9AB50();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v71[0] = v34;
    *v33 = 136446210;
    v35 = sub_269D9B4D0();
    v37 = sub_269C2EACC(v35, v36, v71);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_269C18000, v31, v32, "[%{public}s] time components invalid", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x26D652460](v34, -1, -1);
    MEMORY[0x26D652460](v33, -1, -1);
  }
}

uint64_t sub_269CF4C70()
{
  v1 = v0;
  swift_getObjectType();
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    if (((*(v4 + 8))(v1, ObjectType, v4) & 1) == 0)
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v6 = sub_269D98250();
      __swift_project_value_buffer(v6, qword_280C0B728);
      v7 = sub_269D98230();
      v8 = sub_269D9AB50();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = v10;
        *v9 = 136446210;
        v11 = sub_269D9B4D0();
        v13 = sub_269C2EACC(v11, v12, &v14);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] time components were invalid, resetting date picker", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x26D652460](v10, -1, -1);
        MEMORY[0x26D652460](v9, -1, -1);
      }

      sub_269CF6A88();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269CF4E58(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_269CF4F24()
{
  v32 = objc_opt_self();
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_269DA6740;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 layoutMarginsGuide];

  v6 = [v5 &selRef_setTitleHyphenationFactor_];
  v7 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 &selRef_hk_sleepKeyColor];
  v10 = [v9 &off_279C862A8 + 1];

  v11 = [v10 leadingAnchor];
  v12 = [v8 &selRef:v11 setLargeContentImage:? + 5];

  *(v1 + 40) = v12;
  v13 = [v0 &selRef_hk_sleepKeyColor];
  v14 = [v13 &off_279C862A8 + 1];

  v15 = [v14 trailingAnchor];
  v16 = [v2 trailingAnchor];
  v17 = [v15 &selRef:v16 setLargeContentImage:? + 5];

  *(v1 + 48) = v17;
  v18 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
  v19 = [v18 topAnchor];
  v20 = [v2 bottomAnchor];
  v21 = [v19 &selRef:v20 setLargeContentImage:? + 5];

  *(v1 + 56) = v21;
  v22 = [v18 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 layoutMarginsGuide];

  v25 = [v24 leadingAnchor];
  v26 = [v22 constraintEqualToAnchor_];

  *(v1 + 64) = v26;
  v27 = [v0 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 trailingAnchor];
  v30 = [v18 trailingAnchor];
  v31 = [v29 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 72) = v31;
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v33 = sub_269D9A7D0();

  [v32 activateConstraints_];
}

void sub_269CF538C()
{
  v1 = objc_opt_self();
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_269DA2A30;
  v3 = [v0 contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = [v4 bottomAnchor];
  v6 = [*&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker] bottomAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v2 + 32) = v7;
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v8 = sub_269D9A7D0();

  [v1 activateConstraints_];
}

uint64_t sub_269CF55D0(uint64_t a1)
{
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v80 = &v78 - v5;
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  v88 = v6;
  v89 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v87 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v85 = &v78 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v78 - v15;
  v17 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v1;
  v21 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  v81 = v20;
  sub_269C6C0F0(v21, v20);
  v84 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v22 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v22 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v23 = v90;
  v24 = [v90 isEnabled];

  *v21 = v24;
  v86 = a1;
  sub_269D987C0();
  v25 = v91;
  swift_beginAccess();
  v26 = v17[7];
  v27 = *&v21[v26];
  *&v21[v26] = v25;

  if (!v25)
  {
    v34 = v17[15];
    v79 = v17 + 15;
    *&v21[v34] = 0;
LABEL_8:
    v32 = 0;
    v33 = 0;
    goto LABEL_10;
  }

  v28 = sub_269D09440(&v21[v17[9]], &v21[v17[10]]) & 1;
  v29 = sub_269D09680();
  v30 = v28 | 2;
  if ((v29 & 1) == 0)
  {
    v30 = v28;
  }

  v31 = v17[15];
  v79 = v17 + 15;
  *&v21[v31] = v30;
  if ((v30 & 1) == 0)
  {
    if (v30)
    {
      v32 = 0;
      v33 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v33 = 0;
  v32 = 1;
LABEL_10:
  v21[v17[13]] = v32;
  v21[v17[14]] = v33;
  swift_endAccess();
  v35 = v86;
  v36 = v84;
  v37 = [*(v86 + v84) wakeUpComponents];
  sub_269D97120();

  swift_beginAccess();
  v38 = v88;
  v39 = v89;
  v40 = *(v89 + 24);
  v40(&v21[v17[11]], v16, v88);
  sub_269D0A9B8();
  v41 = *(v39 + 8);
  v89 = v39 + 8;
  v83 = v41;
  v41(v16, v38);
  swift_endAccess();
  v42 = [*(v35 + v36) bedtimeComponents];
  v43 = v85;
  sub_269D97120();

  swift_beginAccess();
  v44 = v17[9];
  v40(&v21[v44], v43, v38);
  if (!*&v21[v17[7]])
  {
    v48 = v80;
    *&v21[*v79] = 0;
LABEL_17:
    v49 = 0;
    v50 = 0;
    goto LABEL_19;
  }

  v45 = sub_269D09440(&v21[v44], &v21[v17[10]]) & 1;
  v46 = sub_269D09680();
  v47 = v45 | 2;
  if ((v46 & 1) == 0)
  {
    v47 = v45;
  }

  *&v21[v17[15]] = v47;
  v48 = v80;
  if ((v47 & 1) == 0)
  {
    if (v47)
    {
      v49 = 0;
      v50 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v50 = 0;
  v49 = 1;
LABEL_19:
  v21[v17[13]] = v49;
  v21[v17[14]] = v50;
  sub_269D97720();
  v51 = sub_269D0CBC0(v48, v21);
  v53 = v52;
  sub_269C67C78(v48);
  v54 = &v21[v17[18]];

  *v54 = v51;
  v54[1] = v53;
  sub_269D97720();
  v55 = sub_269D0CBC0(v48, v21);
  v57 = v56;
  sub_269C67C78(v48);
  v58 = &v21[v17[19]];

  *v58 = v55;
  v58[1] = v57;
  sub_269D0A9B8();
  v59 = v88;
  v83(v85, v88);
  swift_endAccess();
  v60 = [*(v86 + v84) wakeUpComponents];
  v61 = v87;
  sub_269D97120();

  swift_beginAccess();
  v62 = v17[10];
  v40(&v21[v62], v61, v59);
  if (!*&v21[v17[7]])
  {
    *&v21[*v79] = 0;
LABEL_26:
    v66 = 0;
    v67 = 0;
    goto LABEL_28;
  }

  v63 = sub_269D09440(&v21[v17[9]], &v21[v62]) & 1;
  v64 = sub_269D09680();
  v65 = v63 | 2;
  if ((v64 & 1) == 0)
  {
    v65 = v63;
  }

  *&v21[v17[15]] = v65;
  if (v65)
  {
    v67 = 0;
    v66 = 1;
    goto LABEL_28;
  }

  if (!v65)
  {
    goto LABEL_26;
  }

  v66 = 0;
  v67 = 1;
LABEL_28:
  v21[v17[13]] = v66;
  v21[v17[14]] = v67;
  sub_269D97720();
  v68 = sub_269D0CBC0(v48, v21);
  v70 = v69;
  sub_269C67C78(v48);
  v71 = &v21[v17[18]];

  *v71 = v68;
  v71[1] = v70;
  sub_269D97720();
  v72 = sub_269D0CBC0(v48, v21);
  v74 = v73;
  sub_269C67C78(v48);
  v75 = &v21[v17[19]];

  *v75 = v72;
  v75[1] = v74;
  sub_269D0A9B8();
  v83(v87, v88);
  swift_endAccess();
  v76 = v81;
  (*((*MEMORY[0x277D85000] & *v82) + 0x110))(v81);
  return sub_269C6C03C(v76);
}

uint64_t sub_269CF5D70(uint64_t a1)
{
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v58 - v5;
  v7 = sub_269D971F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v64 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v1;
  v19 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  v62 = v18;
  sub_269C6C0F0(v19, v18);
  v20 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v21 = v20[1];
  v67 = *v20;
  v68[0] = v21;
  *(v68 + 11) = *(v20 + 27);
  v59 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  sub_269D1E794(*(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  swift_beginAccess();
  v22 = v15[9];
  v65 = v7;
  v66 = v8;
  v60 = *(v8 + 24);
  v61 = v14;
  v60(v19 + v22, v14, v7);
  if (!*(v19 + v15[7]))
  {
    v29 = v15[15];
    v58 = v15 + 15;
    *(v19 + v29) = 0;
LABEL_8:
    v27 = 0;
    v28 = 0;
    goto LABEL_10;
  }

  v23 = sub_269D09440(v19 + v22, v19 + v15[10]) & 1;
  v24 = sub_269D09680();
  v25 = v23 | 2;
  if ((v24 & 1) == 0)
  {
    v25 = v23;
  }

  v26 = v15[15];
  v58 = v15 + 15;
  *(v19 + v26) = v25;
  if ((v25 & 1) == 0)
  {
    if (v25)
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v28 = 0;
  v27 = 1;
LABEL_10:
  *(v19 + v15[13]) = v27;
  *(v19 + v15[14]) = v28;
  sub_269D97720();
  v30 = sub_269D0CBC0(v6, v19);
  v32 = v31;
  sub_269C67C78(v6);
  v33 = (v19 + v15[18]);

  *v33 = v30;
  v33[1] = v32;
  sub_269D97720();
  v34 = sub_269D0CBC0(v6, v19);
  v36 = v35;
  sub_269C67C78(v6);
  v37 = (v19 + v15[19]);

  *v37 = v34;
  v37[1] = v36;
  sub_269D0A9B8();
  v38 = v65;
  v39 = *(v66 + 8);
  v66 += 8;
  v39(v61, v65);
  swift_endAccess();
  v40 = v20[1];
  v67 = *v20;
  v68[0] = v40;
  *(v68 + 11) = *(v20 + 27);
  v41 = v64;
  sub_269D1EA14(*(v59 + 144));
  swift_beginAccess();
  v42 = v15[10];
  v60(v19 + v42, v41, v38);
  if (!*(v19 + v15[7]))
  {
    *(v19 + *v58) = 0;
LABEL_17:
    v46 = 0;
    v47 = 0;
    goto LABEL_19;
  }

  v43 = sub_269D09440(v19 + v15[9], v19 + v42) & 1;
  v44 = sub_269D09680();
  v45 = v43 | 2;
  if ((v44 & 1) == 0)
  {
    v45 = v43;
  }

  *(v19 + v15[15]) = v45;
  if (v45)
  {
    v47 = 0;
    v46 = 1;
    goto LABEL_19;
  }

  if (!v45)
  {
    goto LABEL_17;
  }

  v46 = 0;
  v47 = 1;
LABEL_19:
  *(v19 + v15[13]) = v46;
  *(v19 + v15[14]) = v47;
  sub_269D97720();
  v48 = sub_269D0CBC0(v6, v19);
  v50 = v49;
  sub_269C67C78(v6);
  v51 = (v19 + v15[18]);

  *v51 = v48;
  v51[1] = v50;
  sub_269D97720();
  v52 = sub_269D0CBC0(v6, v19);
  v54 = v53;
  sub_269C67C78(v6);
  v55 = (v19 + v15[19]);

  *v55 = v52;
  v55[1] = v54;
  sub_269D0A9B8();
  v39(v64, v65);
  swift_endAccess();
  v56 = v62;
  (*((*MEMORY[0x277D85000] & *v63) + 0x110))(v62);
  return sub_269C6C03C(v56);
}

uint64_t sub_269CF6324(unsigned __int8 *a1)
{
  v3 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v4 = &a1[v3[18]];
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = &v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model];
  result = swift_beginAccess();
  v9 = &v7[v3[18]];
  v10 = *(v9 + 1);
  if (v6)
  {
    if (!v10 || (v5 == *v9 ? (v11 = v6 == v10) : (v11 = 0), !v11 && (result = sub_269D9B280(), (result & 1) == 0)))
    {
LABEL_21:
      sub_269CF6A88();
      if (*a1 == *v7)
      {
LABEL_23:
        [v1 invalidateIntrinsicContentSize];
        return [v1 setNeedsLayout];
      }

LABEL_22:
      sub_269CF648C();
      goto LABEL_23;
    }
  }

  else if (v10)
  {
    goto LABEL_21;
  }

  v12 = v3[19];
  v13 = &a1[v12];
  v14 = *&a1[v12 + 8];
  v15 = &v7[v12];
  v16 = *(v15 + 1);
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_21;
    }

    result = *v13;
    if (*v13 != *v15 || v14 != v16)
    {
      result = sub_269D9B280();
      if ((result & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_21;
  }

  if (a1[v3[13]] != v7[v3[13]] || a1[v3[14]] != v7[v3[14]])
  {
    goto LABEL_21;
  }

  if (*a1 != *v7)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_269CF648C()
{
  v1 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CF8298(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v31 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel);
  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component))
  {
    v10 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
    swift_beginAccess();
    sub_269C6C0F0(v0 + v10, v4);
    v11 = *v4;
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v12 = sub_269D972C0();
    v14 = v13;

    v31[0] = v9;
    if (v11)
    {
      v15 = [objc_opt_self() hk_sleepKeyColor];
    }

    else
    {
      if (qword_28034D620 != -1)
      {
        swift_once();
      }

      v26 = qword_28034E060;
    }

    sub_269C1B0B8(0, &unk_28034EBF0, 0x277CCA898);
    v27 = sub_269D9ACA0();
    v28 = (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    v31[1] = v12;
    v31[2] = v14;
    sub_269C3EEE8(v28, v29, v30);
    sub_269D9AE90();

    [objc_opt_self() secondaryLabelColor];
    sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
    static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
    v25 = sub_269D9AC90();
    sub_269C6C03C(v4);
    v9 = v31[0];
  }

  else
  {
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v16 = sub_269D972C0();
    v18 = v17;
    sub_269C1B0B8(0, &unk_28034EBF0, 0x277CCA898);
    v19 = objc_opt_self();
    v20 = [v19 hk_sleepKeyColor];
    v21 = sub_269D9ACA0();
    v22 = (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v31[3] = v16;
    v31[4] = v18;
    sub_269C3EEE8(v22, v23, v24);
    sub_269D9AE90();

    [v19 secondaryLabelColor];
    sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
    static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
    v25 = sub_269D9AC90();
  }

  [v9 setAttributedText_];
}

uint64_t sub_269CF6A88()
{
  v1 = v0;
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v38 - v16;
  v18 = sub_269D97580();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v38 - v24;
  v26 = &v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model];
  if (v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component])
  {
    swift_beginAccess();
    v27 = 0;
    if (*(v26 + *(v10 + 56)) == 1)
    {
      v27 = sub_269CF4184();
    }

    [v1 setAccessoryView_];

    sub_269C6C0F0(v26, v13);
    sub_269D97720();
    sub_269C6C03C(v13);
    v29 = v39;
    v28 = v40;
    if ((*(v39 + 48))(v5, 1, v40) == 1)
    {
      return sub_269C67C78(v5);
    }

    else
    {
      (*(v29 + 32))(v21, v5, v28);
      v34 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
      v35 = sub_269D974B0();
      [v34 setDate_];

      return (*(v29 + 8))(v21, v28);
    }
  }

  else
  {
    swift_beginAccess();
    v31 = 0;
    if (*(v26 + *(v10 + 52)) == 1)
    {
      v31 = sub_269CF4184();
    }

    [v1 setAccessoryView_];

    sub_269C6C0F0(v26, v17);
    sub_269D97720();
    sub_269C6C03C(v17);
    v33 = v39;
    v32 = v40;
    if ((*(v39 + 48))(v9, 1, v40) == 1)
    {
      return sub_269C67C78(v9);
    }

    else
    {
      (*(v33 + 32))(v25, v9, v32);
      v36 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
      v37 = sub_269D974B0();
      [v36 setDate_];

      return (*(v33 + 8))(v25, v32);
    }
  }
}

void sub_269CF6E94()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component])
  {
    v2 = 0x7055656B6157;
  }

  else
  {
    v2 = 0x656D6974646542;
  }

  if (v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component])
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v4 = MEMORY[0x277D837D0];
  sub_269CF82FC(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000269DB1570;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269DA0D60;
  *(v6 + 32) = sub_269D9A630();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0x7065656C53;
  *(v6 + 56) = 0xE500000000000000;
  strcpy((v6 + 64), "ScheduleEditor");
  *(v6 + 79) = -18;
  v17 = v6;

  sub_269C49A1C(v8);
  sub_269CF82FC(0, &qword_280C0B4F0, v4, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v9 = sub_269D9A520();
  v11 = v10;

  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = sub_269D9A5F0();
  [v1 setAccessibilityIdentifier_];

  v13 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel];

  MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
  v14 = sub_269D9A5F0();

  [v13 setAccessibilityIdentifier_];

  v15 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];

  MEMORY[0x26D650930](0x636950657461442ELL, 0xEB0000000072656BLL);

  v16 = sub_269D9A5F0();

  [v15 setAccessibilityIdentifier_];
}

id ScheduleOccurrenceComponentsAccessibilityTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269CF7250(uint64_t a1)
{
  v2 = sub_269D97780();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_269CF8680(0);
    v11 = sub_269D9AFD0();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_269CF8250(&qword_2803502E0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v18 = sub_269D9A4D0();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_269CF8250(&qword_2803502E8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v25 = sub_269D9A560();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_269CF7564()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = sub_269D9A5F0();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_opt_self() systemOrangeColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  return v5;
}

uint64_t sub_269CF7698(uint64_t a1)
{
  v2 = sub_269D9B420();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_269CF81BC(0);
    v11 = sub_269D9AFD0();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_269CF8250(&qword_280C0AD68, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
      v18 = sub_269D9A4D0();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_269CF8250(&qword_280C0AD60, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD8]);
          v25 = sub_269D9A560();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void *sub_269CF79AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D977A0();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  (*(v7 + 104))(v10, *MEMORY[0x277CC9830], v6);
  sub_269D97680();
  (*(v7 + 8))(v10, v6);
  SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v14, &v3[v15]);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView] = 0;
  v16 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel;
  v17 = [objc_opt_self() secondaryLabelColor];
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v18 setTextColor_];

  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v19 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
  [v18 setFont_];

  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setAdjustsFontSizeToFitWidth_];
  [v18 setNumberOfLines_];
  *&v3[v16] = v18;
  v20 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker;
  v21 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v21 setDatePickerMode_];
  [v21 setPreferredDatePickerStyle_];
  [v21 setMinuteInterval_];
  *&v3[v20] = v21;
  if (a2)
  {
    if (a1 == 0xD00000000000003DLL && 0x8000000269DAC190 == a2)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_269D9B280() & 1;
    }

    v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component] = v22;
    v23 = sub_269D9A5F0();
  }

  else
  {
    v23 = 0;
    v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component] = 0;
  }

  v24 = type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(0);
  v32.receiver = v3;
  v32.super_class = v24;
  v25 = objc_msgSendSuper2(&v32, sel_initWithStyle_reuseIdentifier_, 0, v23);

  v26 = MEMORY[0x277D85000];
  v27 = *((*MEMORY[0x277D85000] & *v25) + 0xD0);
  v28 = v25;
  v29 = v27();
  (*((*v26 & *v28) + 0xD8))(v29);
  sub_269CF6E94();
  v30 = (*((*v26 & *v28) + 0xF0))();
  (*((*v26 & *v28) + 0xF8))(v30);

  return v28;
}

uint64_t type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(uint64_t a1)
{
  result = qword_2803502C8;
  if (!qword_2803502C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_269CF7E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803502B8;
  if (!qword_2803502B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803502B8);
  }

  return result;
}

uint64_t sub_269CF7EF4(uint64_t a1)
{
  result = type metadata accessor for SleepScheduleComponentsViewModel(319);
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

void sub_269CF81BC(uint64_t a1)
{
  if (!qword_280C0ADB8)
  {
    sub_269D9B420();
    sub_269CF8250(&qword_280C0AD68, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
    v1 = sub_269D9AFE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0ADB8);
    }
  }
}

uint64_t sub_269CF8250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269CF8298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CF82FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_269CF8364()
{
  v1 = v0;
  v2 = sub_269D97670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D977A0();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  (*(v3 + 104))(v6, *MEMORY[0x277CC9830], v2);
  sub_269D97680();
  (*(v3 + 8))(v6, v2);
  SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v10, (v1 + v11));
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView) = 0;
  v12 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel;
  v13 = [objc_opt_self() secondaryLabelColor];
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTextColor_];

  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v15 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
  [v14 setFont_];

  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setAdjustsFontSizeToFitWidth_];
  [v14 setNumberOfLines_];
  *(v1 + v12) = v14;
  v16 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker;
  v17 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v17 setDatePickerMode_];
  [v17 setPreferredDatePickerStyle_];
  [v17 setMinuteInterval_];
  *(v1 + v16) = v17;
  sub_269D9B100();
  __break(1u);
}

void sub_269CF8680(uint64_t a1)
{
  if (!qword_2803502D8)
  {
    sub_269D97780();
    sub_269CF8250(&qword_2803502E0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = sub_269D9AFE0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803502D8);
    }
  }
}

double sub_269CF8714@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CF8F8C(v1 + v3, v5, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
  if (!v6)
  {
    sub_269C8492C(v5, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
    goto LABEL_5;
  }

  sub_269C3232C(0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
  sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_269CF8810(uint64_t a1)
{
  v2 = v1;
  sub_269CF8F8C(a1, v10, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
  if (v11)
  {
    sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
    sub_269C3232C(0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        sub_269C25520(&v12, &v15);
        sub_269C2DB5C(&v15, &v12);
        v4 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
        swift_beginAccess();
        sub_269CF8FFC(&v12, v2 + v4);
        swift_endAccess();
        [v2 setNeedsUpdateConfiguration];
        sub_269C8492C(&v12, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
        __swift_destroy_boxed_opaque_existential_1Tm(&v15);
        goto LABEL_15;
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    sub_269C8492C(v10, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_269C8492C(&v12, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
  v5 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CF8F8C(v1 + v5, &v12, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
  if (!*(&v13 + 1))
  {
    sub_269C8492C(&v12, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_13;
  }

  sub_269C3232C(0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
  sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_13;
  }

  if (!*(&v16 + 1))
  {
LABEL_13:
    sub_269C8492C(&v15, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    swift_beginAccess();
    sub_269CF8FFC(&v15, v1 + v5);
    swift_endAccess();
    [v1 setNeedsUpdateConfiguration];
    v6 = &qword_2803502F0;
    v7 = &qword_2803502F8;
    v8 = &protocol descriptor for ScheduleOccurrenceViewModelProviding;
    goto LABEL_14;
  }

  v6 = &qword_28034E548;
  v7 = &qword_28034E550;
  v8 = MEMORY[0x277D10D48];
LABEL_14:
  sub_269C8492C(&v15, v6, v7, v8);
LABEL_15:
  sub_269CF8F8C(a1, v10, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
  if (v11)
  {
    sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
    sub_269C3232C(0, &qword_280350308, MEMORY[0x277D11148]);
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        sub_269C25520(&v12, &v15);
        __swift_project_boxed_opaque_existential_1Tm(&v15, *(&v16 + 1));
        [v2 setSelectionStyle_];
        sub_269C8492C(a1, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    sub_269C8492C(v10, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_269C8492C(&v12, &qword_280350300, &qword_280350308, MEMORY[0x277D11148]);
  [v2 setSelectionStyle_];
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
}

void (*sub_269CF8CB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CF8F8C(v1 + v5, v4 + 40, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
  if (*(v4 + 64))
  {
    sub_269C3232C(0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
    sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v4 + 32) = 0;
      *v4 = 0u;
      *(v4 + 16) = 0u;
    }
  }

  else
  {
    sub_269C8492C(v4 + 40, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  return sub_269CF8DF8;
}

void sub_269CF8DF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = MEMORY[0x277D10D48];
    sub_269CF8F8C(*a1, v2 + 40, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
    sub_269CF8810(v2 + 40);
    sub_269C8492C(v2, &qword_28034E548, &qword_28034E550, v3);
  }

  else
  {
    sub_269CF8810(*a1);
  }

  free(v2);
}

void (*sub_269CF8EA8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_269CF8CB0(v2);
  return sub_269C3CF88;
}

uint64_t sub_269CF8F8C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_269C84988(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_269CF8FFC(uint64_t a1, uint64_t a2)
{
  sub_269C84988(0, &qword_2803502F0, &qword_2803502F8, &protocol descriptor for ScheduleOccurrenceViewModelProviding);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_269CF9364(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlusMinusButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_269CF93BC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v1 = sub_269D9A5F0();
  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

id static UNUserNotificationCenter.healthNotificationCenter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v1 = sub_269D9A5F0();
  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t static MultiPickerModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 32);
  v6(a3, a4);
  v6(a3, v4);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  LOBYTE(v4) = sub_269D9A850();

  return v4 & 1;
}

uint64_t sub_269CF95C8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v2 = sub_269D9A830();

  return v2;
}

uint64_t sub_269CF9654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(a2, a3);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A870();

  v3 = sub_269D9A830();

  return v3;
}

uint64_t sub_269CF9718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A870();

  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_269D9AA30();

  return v5;
}

uint64_t sub_269CF9850(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A040();
  sub_269D9A020();
  return v2;
}

uint64_t MultiPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = *(a1 + 16);
  v4 = sub_269D9A040();
  MEMORY[0x28223BE20](v4, v5);
  v7 = v24 - v6;
  v8 = *(a1 + 24);
  v10 = type metadata accessor for MultiPickerLink(0, v3, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v24 - v17;
  sub_269D9A020();
  v19 = sub_269CF9850(a1);
  sub_269CF9AE0(v7, v19, v20, v21, v3, v8, v14);
  swift_getWitnessTable();
  sub_269CE81C8();
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_269CE81C8();
  return (v22)(v18, v10);
}

uint64_t sub_269CF9AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_269D9A040();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for MultiPickerLink(0, a5, a6, v15);
  v17 = (a7 + *(result + 36));
  *v17 = a2;
  v17[1] = a3;
  v17[2] = a4;
  return result;
}

uint64_t sub_269CF9BD4(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v5[1] = *v2;
  v6 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v3 = sub_269D9A040();
  MEMORY[0x26D650250](v5, v3);
  return v5[0];
}

uint64_t sub_269CF9C54(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A040();
  return sub_269D9A010();
}

uint64_t sub_269CF9D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MultiPickerLink(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_269CF9E00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269D9A260();
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D9A290();
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18, v19);
  if (sub_269CFA1EC(a2, a3))
  {
    sub_269C55300();
    v27 = sub_269D9AC40();
    (*(v16 + 16))(&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
    v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = *(a3 + 16);
    *(v21 + 32) = a1;
    (*(v16 + 32))(v21 + v20, &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    aBlock[4] = sub_269CFB630;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269CA6718;
    aBlock[3] = &block_descriptor_23;
    v22 = _Block_copy(aBlock);
    v23 = a1;
    sub_269D9A280();
    v31 = MEMORY[0x277D84F90];
    sub_269CFB6D0(&qword_28034EAA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_269C80BF8(0);
    sub_269CFB6D0(qword_28034EAB0, sub_269C80BF8, MEMORY[0x277D83970]);
    sub_269D9AEF0();
    v24 = v27;
    MEMORY[0x26D650EA0](0, v15, v11, v22);
    _Block_release(v22);

    (*(v30 + 8))(v11, v8);
    (*(v28 + 8))(v15, v29);
  }

  else
  {

    return sub_269CFA4F4(a1, a3);
  }
}

BOOL sub_269CFA1EC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9, v6);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v21 - v14;
  swift_getWitnessTable();
  sub_269D99460();
  sub_269D99450();
  v16 = v21[1];
  sub_269CFA904(v17, v5);

  v18 = sub_269D9A040();
  MEMORY[0x26D650250]();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x26D650250](v18);
  LOBYTE(v2) = sub_269D9A560();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v15, v7);
  return (v2 & 1) == 0;
}

uint64_t sub_269CFA410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 reloadAllComponents];
  v8 = type metadata accessor for MultiPickerLink(0, a3, a4, v7);
  sub_269CFA4F4(a1, v8);
}

uint64_t sub_269CFA4F4(void *a1, uint64_t a2)
{
  v38 = a1;
  v4 = *(*(a2 + 16) - 8);
  MEMORY[0x28223BE20](a1, a2);
  v40 = *(v6 + 24);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v49 = &v37 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = sub_269D9AE60();
  v13 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v14);
  v47 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v37 - v18);
  v43 = v2;
  v51[1] = sub_269CF9BD4(a2);
  v20 = sub_269D9A840();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D6509D0](v51, v20, WitnessTable);

  v50 = v51[0];
  sub_269D9B140();
  sub_269D9B110();
  v22 = sub_269D9B130();
  v45 = (v13 + 32);
  v46 = v22;
  v44 = TupleTypeMetadata2 - 8;
  v39 = (v9 + 32);
  v23 = (v4 + 8);
  v24 = (v9 + 8);
  v25 = v41;
  while (1)
  {
    v26 = v47;
    sub_269D9B120();
    (*v45)(v19, v26, v48);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v27 = *v19;
    v28 = TupleTypeMetadata2;
    v29 = v19 + *(TupleTypeMetadata2 + 48);
    v30 = v49;
    v31 = AssociatedTypeWitness;
    (*v39)(v49, v29, AssociatedTypeWitness);
    v32 = v42;
    v33 = sub_269D9A040();
    MEMORY[0x26D650250](v33);
    v34 = sub_269CF9718(v30, v27, v32, v40);
    LOBYTE(v30) = v35;
    (*v23)(v25, v32);
    if ((v30 & 1) == 0)
    {
      [v38 selectRow:v34 inComponent:v27 animated:0];
    }

    AssociatedTypeWitness = v31;
    (*v24)(v49, v31);
    TupleTypeMetadata2 = v28;
  }
}

uint64_t sub_269CFA904@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v5 = type metadata accessor for MultiPickerLink(0, *((*MEMORY[0x277D85000] & *v2) + 0x50), *((*MEMORY[0x277D85000] & *v2) + 0x58), a1);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, &v2[v4], v5);
}

uint64_t sub_269CFA9C0(void *a1, uint64_t a2, void *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  v8 = sub_269CFB810(v6, v7);

  return v8;
}

uint64_t sub_269CFAA7C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a1;
  v10 = sub_269CFB9CC(a4, v9);

  return v10;
}

id sub_269CFAB40(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a1;
  sub_269CFBC74(a4, a5);
  v12 = v11;

  if (v12)
  {
    v13 = sub_269D9A5F0();
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

void sub_269CFAC58(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a1;
  sub_269CFC010(a4, a5);
}

void sub_269CFAD44(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CFC62C();
}

id sub_269CFAE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MultiPickerLink.Coordinator(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_269CFAE80(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v6 = type metadata accessor for MultiPickerLink(0, *((*MEMORY[0x277D85000] & *a1) + 0x50), *((*MEMORY[0x277D85000] & *a1) + 0x58), a4);
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

uint64_t sub_269CFAF48(uint64_t a1)
{
  result = sub_269D9A040();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_269D9A840();
    result = sub_269D9A040();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269CFB004(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_269CFB154(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

id sub_269CFB354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_269CF9DC8(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_269CFB37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_269CFB3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_269CFB474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_269D99270();
  __break(1u);
}

uint64_t sub_269CFB4B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_269CFB508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v9 = type metadata accessor for MultiPickerLink(0, v7, v8, a4);
  (*(*(v9 - 8) + 16))(&v4[v6], a1, v9);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MultiPickerLink.Coordinator(0, v7, v8, v10);
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_269CFB630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = *(type metadata accessor for MultiPickerLink(0, v5, v6, a4) - 8);
  v8 = v4[4];
  v9 = v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_269CFA410(v8, v9, v5, v6);
}

double block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269CFB6D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_269CFB718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75840]) initWithFrame_];
  type metadata accessor for MultiPickerLink(255, a2, a3, v6);
  swift_getWitnessTable();
  sub_269D99460();
  sub_269D99450();
  [v5 setDataSource_];

  sub_269D99450();
  [v5 setDelegate_];

  return v5;
}

uint64_t sub_269CFB810(uint64_t a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v20 - v5;
  v9 = *((v8 & v7) + 0x58);
  v11 = type metadata accessor for MultiPickerLink(0, v3, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - v14;
  sub_269CFA904(v16, &v20 - v14);
  v17 = sub_269D9A040();
  MEMORY[0x26D650250](v17);
  (*(v12 + 8))(v15, v11);
  v18 = sub_269CF95C8(v3, v9);
  (*(v4 + 8))(v6, v3);
  return v18;
}

uint64_t sub_269CFB9CC(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v22 - v5;
  v9 = *((v8 & v7) + 0x58);
  v11 = type metadata accessor for MultiPickerLink(0, v3, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - v14;
  sub_269CFA904(v16, &v22 - v14);
  v24 = sub_269D9A040();
  MEMORY[0x26D650250]();
  v23 = *(v12 + 8);
  v23(v15, v11);
  (*(v9 + 32))(v3, v9);
  v22 = *(v4 + 8);
  v22(v6, v3);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v17 = sub_269D9A830();

  result = 0;
  if (v17 > v25)
  {
    v20 = v25;
    sub_269CFA904(v18, v15);
    MEMORY[0x26D650250](v24);
    v23(v15, v11);
    v21 = sub_269CF9654(v20, v3, v9);
    v22(v6, v3);
    return v21;
  }

  return result;
}

uint64_t sub_269CFBC74(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v28 = a1;
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v27 - v5;
  v9 = *((v8 & v7) + 0x58);
  v11 = type metadata accessor for MultiPickerLink(0, v3, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  sub_269CFA904(v16, &v27 - v14);
  v31 = sub_269D9A040();
  MEMORY[0x26D650250]();
  v17 = *(v12 + 8);
  v33 = v12 + 8;
  v34 = v11;
  v30 = v17;
  v17(v15, v11);
  v27 = *(v9 + 32);
  v27(v3, v9);
  v18 = *(v4 + 8);
  v29 = v4 + 8;
  v32 = v18;
  v18(v6, v3);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v19 = sub_269D9A830();

  if (v19 <= v35)
  {
    return 0;
  }

  v21 = v35;
  sub_269CFA904(v20, v15);
  MEMORY[0x26D650250](v31);
  v30(v15, v34);
  v27(v3, v9);
  v32(v6, v3);
  sub_269D9A870();

  v22 = sub_269D9A830();

  if (v22 <= v28)
  {
    return 0;
  }

  v24 = v28;
  sub_269CFA904(v23, v15);
  MEMORY[0x26D650250](v31);
  v30(v15, v34);
  v25 = (*(v9 + 40))(v24, v21, v3, v9);
  v32(v6, v3);
  return v25;
}

uint64_t sub_269CFC010(uint64_t a1, int64_t a2)
{
  v71 = a2;
  v64 = a1;
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v60 = &v53 - v7;
  v8 = *(v4 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v53 - v14;
  v17 = type metadata accessor for MultiPickerLink(0, v4, v3, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v59 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v57 = &v53 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v53 - v26;
  sub_269CFA904(v28, &v53 - v26);
  v66 = sub_269D9A040();
  MEMORY[0x26D650250]();
  v29 = *(v18 + 8);
  v68 = v18 + 8;
  v63 = v29;
  v29(v27, v17);
  v30 = *(v3 + 32);
  v69 = v3;
  v62 = v30;
  v30(v4, v3);
  v31 = *(v8 + 8);
  v70 = v8 + 8;
  v67 = v31;
  v31(v15, v4);
  v65 = AssociatedTypeWitness;
  v32 = sub_269D9A840();
  v33 = sub_269D9A830();

  if (v33 > v71)
  {
    sub_269CFA904(v35, v27);
    MEMORY[0x26D650250](v66);
    v63(v27, v17);
    v62(v4, v69);
    v67(v15, v4);
    sub_269D9A870();

    v36 = sub_269D9A830();

    if (v36 > v64)
    {
      sub_269CFA904(v37, v27);
      v54 = sub_269CF9BD4(v17);
      v38 = v63;
      v63(v27, v17);
      v55 = v32;
      v56 = v2;
      v39 = v38;
      v72 = v54;
      v40 = v57;
      sub_269CFA904(v41, v57);
      v42 = v58;
      MEMORY[0x26D650250](v66);
      v39(v40, v17);
      v62(v4, v69);
      v67(v42, v4);
      v43 = v71;
      sub_269D9A870();

      v44 = v60;
      v45 = v65;
      sub_269D9A870();

      sub_269D9A800();
      v46 = v72;
      sub_269CFB4B4(v43, v72, v45);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v48 = v46 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v48 = v46;
      }

      (*(v61 + 40))(v48 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v43, v44, v45);
      sub_269CFA904(v49, v27);
      v50 = v59;
      sub_269CFA904(v51, v59);
      MEMORY[0x26D650250](v66);
      v39(v50, v17);
      v52 = (*(v69 + 48))(v72, v4);

      v67(v15, v4);
      sub_269CF9C54(v52, v17);
      return (v39)(v27, v17);
    }
  }

  return result;
}

uint64_t HKSPSleepScheduleOccurrence.DateDescription.DayContext.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

_BYTE *HKSPSleepScheduleOccurrence.DateDescription.init(dayContext:dayPeriod:isSingleDayOverride:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_269CFC7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803504A8[0];
  if (!qword_2803504A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803504A8);
  }

  return result;
}

uint64_t _s15DateDescriptionVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s15DateDescriptionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void Date.formattedText.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = sub_269D974B0();
    v3 = [v1 formatDateAsTimeStyle_];

    if (v3)
    {
      sub_269D9A630();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t ForEachWithIndexAsID.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for ForEachWithIndexAsID(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t ForEachWithIndexAsID.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v42 = *(a1 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  *&v46 = *(v6 + 32);
  v8 = *(*(*(v46 + 8) + 8) + 8);
  v9 = sub_269D9B140();
  MEMORY[0x28223BE20](v9, v10);
  swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v12 = sub_269D9A840();
  v39 = v12;
  v13 = *(a1 + 24);
  WitnessTable = swift_getWitnessTable();
  v50 = v12;
  v51 = v11;
  v52 = v13;
  v53 = WitnessTable;
  v54 = MEMORY[0x277D83B98];
  v14 = sub_269D9A0A0();
  v41 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v37 = &v37 - v21;
  MEMORY[0x26D6509D0](v7, v8, v20);
  swift_getWitnessTable();
  v22 = sub_269D9A860();
  v23 = *(a1 + 40);
  *&v24 = v46;
  *(&v24 + 1) = v23;
  v50 = v22;
  *&v25 = v7;
  *(&v25 + 1) = v13;
  v45 = v24;
  v46 = v25;
  v47 = v25;
  v48 = v24;
  swift_getKeyPath();
  v26 = v42;
  v27 = v40;
  (*(v42 + 16))(v40, v3, a1);
  v28 = v26;
  v29 = (*(v26 + 80) + 48) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v31 = v45;
  *(v30 + 16) = v46;
  *(v30 + 32) = v31;
  (*(v28 + 32))(v30 + v29, v27, a1);
  v32 = swift_allocObject();
  v33 = v45;
  *(v32 + 16) = v46;
  *(v32 + 32) = v33;
  *(v32 + 48) = sub_269CFD034;
  *(v32 + 56) = v30;
  sub_269D9A080();
  v49 = v23;
  swift_getWitnessTable();
  v34 = v37;
  sub_269CE81C8();
  v35 = *(v41 + 8);
  v35(v17, v14);
  sub_269CE81C8();
  return (v35)(v34, v14);
}

uint64_t sub_269CFCE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a3;
  v24 = a2;
  v25 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - v17;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26[0] = a4;
  v26[1] = a5;
  v26[2] = a6;
  v26[3] = a7;
  v19 = type metadata accessor for ForEachWithIndexAsID(0, v26);
  (*(v23 + *(v19 + 52)))(v24);
  sub_269CE81C8();
  v20 = *(v12 + 8);
  v20(v14, a5);
  sub_269CE81C8();
  v20(v18, a5);
}

uint64_t sub_269CFD034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v14[0] = v3[2];
  v7 = v14[0];
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v11 = *(type metadata accessor for ForEachWithIndexAsID(0, v14) - 8);
  v12 = v3 + ((*(v11 + 80) + 48) & ~*(v11 + 80));

  return sub_269CFCE64(a1, a2, v12, v7, v8, v9, v10, a3);
}

uint64_t sub_269CFD0F8(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v8, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_269CFD1FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_269CFD578();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269CFD284(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_269CFD3C0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_269CFD578()
{
  result = qword_280350530;
  if (!qword_280350530)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280350530);
  }

  return result;
}

id sub_269CFD5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell____lazy_storage___occurrenceView;
  v8 = type metadata accessor for ScheduleOccurrenceView(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  if (a3)
  {
    v9 = sub_269D9A5F0();
  }

  else
  {
    v9 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for ScheduleOccurrenceTableViewCell(0);
  v10 = objc_msgSendSuper2(&v18, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = objc_allocWithZone(MEMORY[0x277D75348]);
  v17[4] = sub_269CC7C58;
  v17[5] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_269CC7F6C;
  v17[3] = &block_descriptor_24;
  v12 = _Block_copy(v17);
  v13 = v10;
  v14 = [v11 initWithDynamicProvider_];
  _Block_release(v12);

  [v13 setBackgroundColor_];

  [v13 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v13;
  v15 = v13;
  sub_269D9ABD0();

  return v15;
}

uint64_t sub_269CFD7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269CFDF18(0);
  v5[3] = v3;
  v5[4] = sub_269CFE078(&unk_280350570, sub_269CFDF18, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_269CFE140(0, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  sub_269CFDFB4();
  sub_269D99390();
  return MEMORY[0x26D650E10](v5);
}

uint64_t sub_269CFD8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScheduleOccurrenceView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CFE140(0, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v17 - v11;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CFE0C0(a1 + v13, &v18);
  if (v19)
  {
    sub_269CAC4E4(&v18, v20);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    (*(v15 + 8))(v14, v15);
    sub_269CFE278(v8, v12);
    (*(v5 + 56))(v12, 0, 1, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    sub_269CFE2DC(&v18, &qword_2803502F0, sub_269CFE194);
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_269CFE1F8(v12, a2);
}

id sub_269CFDD34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceTableViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ScheduleOccurrenceTableViewCell(uint64_t a1)
{
  result = qword_280350548;
  if (!qword_280350548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CFDE38(uint64_t a1)
{
  sub_269CFE140(319, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_269CFDF18(uint64_t a1)
{
  if (!qword_280350560)
  {
    sub_269CFE140(255, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
    sub_269CFDFB4();
    v1 = sub_269D993A0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350560);
    }
  }
}

unint64_t sub_269CFDFB4()
{
  result = qword_280350568;
  if (!qword_280350568)
  {
    sub_269CFE140(255, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
    sub_269CFE078(&qword_280350170, type metadata accessor for ScheduleOccurrenceView, &protocol conformance descriptor for ScheduleOccurrenceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350568);
  }

  return result;
}

uint64_t sub_269CFE078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269CFE0C0(uint64_t a1, uint64_t a2)
{
  sub_269CFE140(0, &qword_2803502F0, sub_269CFE194);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CFE140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269CFE194()
{
  result = qword_2803502F8;
  if (!qword_2803502F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803502F8);
  }

  return result;
}

uint64_t sub_269CFE1F8(uint64_t a1, uint64_t a2)
{
  sub_269CFE140(0, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CFE278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CFE2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269CFE140(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269CFE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1;
  if (sub_269D9A630() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_269D9B280();

  if (v8)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (sub_269D9A630() == v4 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_269D9B280();

  v9 = a2;
  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = 1;
LABEL_9:

  v4 = 0;
LABEL_10:
  *a3 = v4;
  a3[1] = v9;
  return result;
}

uint64_t UICollectionView.ElementKind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = *v0;
      goto LABEL_7;
    }

    sub_269D9A8E0();
    v3 = sub_269CFE53C;
    v4 = 42;
  }

  else
  {
    sub_269D9A8E0();
    v3 = sub_269CFE518;
    v4 = 40;
  }

  v5 = sub_269C71CFC(v3, 0, "SleepHealthUI/UICollectionView+ElementKind.swift", 48, 2, v4);
LABEL_7:
  sub_269CFE61C(v1, v2);
  return v5;
}

uint64_t sub_269CFE560@<X0>(uint64_t *a3@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269D9A630();
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_269CFE61C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_269CFE630@<D0>(_OWORD *a1@<X8>)
{
  UICollectionView.ElementKind.init(rawValue:)();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_269CFE670@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (!v4)
  {
    sub_269D9A8E0();
    v5 = sub_269CFE518;
    v6 = 40;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    sub_269D9A8E0();
    v5 = sub_269CFE53C;
    v6 = 42;
LABEL_5:
    v7 = sub_269C71CFC(v5, 0, "SleepHealthUI/UICollectionView+ElementKind.swift", 48, 2, v6);
    goto LABEL_7;
  }

  v7 = *v1;
  v8 = v1[1];
LABEL_7:
  *a1 = v7;
  a1[1] = v8;

  return sub_269CFE61C(v3, v4);
}

uint64_t get_enum_tag_for_layout_string_So16UICollectionViewC13SleepHealthUIE11ElementKindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_269CFE774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269CFE7C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_269CFE824(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_269CFE8A8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_269CFE8EC()
{
  v0 = objc_opt_self();
  result = [v0 _preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_];
  if (result)
  {
    v2 = result;
    v3 = [result fontDescriptor];
    sub_269D020E0(0, &unk_2803505B0, sub_269D02074, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    v5 = *MEMORY[0x277D74338];
    *(inited + 32) = *MEMORY[0x277D74338];
    v6 = v5;
    v7 = sub_269D7B4A8();
    sub_269D020E0(0, &qword_2803505C0, sub_269D02144, MEMORY[0x277D83940]);
    *(inited + 64) = v8;
    *(inited + 40) = v7;
    sub_269C44468(inited);
    swift_setDeallocating();
    sub_269D02228(inited + 32, sub_269D02074);
    type metadata accessor for AttributeName(0);
    sub_269D021E0(&qword_28034DBF8, type metadata accessor for AttributeName, &unk_269D9FC30);
    v9 = sub_269D9A480();

    v10 = [v3 fontDescriptorByAddingAttributes_];

    v11 = [v0 fontWithDescriptor:v10 size:0.0];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269CFEB34(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_269D97650();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v10 = &a1[v9[18]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = &v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model];
  swift_beginAccess();
  v14 = &v13[v9[18]];
  v15 = *(v14 + 1);
  if (!v12)
  {
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!v15 || (v11 == *v14 ? (v16 = v12 == v15) : (v16 = 0), !v16 && (sub_269D9B280() & 1) == 0))
  {
LABEL_10:
    sub_269CFEEF4();
  }

LABEL_11:
  v17 = v9[19];
  v18 = &a1[v17];
  v19 = *&a1[v17 + 8];
  v20 = &v13[v17];
  v21 = *(v20 + 1);
  if (!v19)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_269D9B280() & 1) == 0))
  {
LABEL_20:
    sub_269CFF05C();
  }

LABEL_21:
  if (a1[v9[13]] != v13[v9[13]])
  {
    sub_269CFEEF4();
  }

  if (a1[v9[14]] != v13[v9[14]])
  {
    sub_269CFF05C();
  }

  if (*a1 != *v13)
  {
    sub_269CFF1C4();
    v23 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
    if (*v13 == 1)
    {
      if (qword_28034D690 != -1)
      {
        swift_once();
      }

      v24 = &qword_280350590;
    }

    else
    {
      if (qword_28034D698 != -1)
      {
        swift_once();
      }

      v24 = &qword_280350598;
    }

    [v23 setTextColor_];

    [v2 invalidateIntrinsicContentSize];
    [v2 setNeedsLayout];
  }

  v25 = v9[17];
  v26 = &a1[v25];
  v27 = *&a1[v25 + 8];
  v28 = &v13[v25];
  v29 = *(v28 + 1);
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_269D9B280() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v29)
  {
    goto LABEL_48;
  }

  v30 = v9[16];
  v31 = &a1[v30];
  v32 = *&a1[v30 + 8];
  v33 = &v13[v30];
  v34 = *(v33 + 1);
  if (!v32)
  {
    if (!v34)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_269D9B280() & 1) == 0)
  {
LABEL_48:
    sub_269CFF6F8();
  }

LABEL_49:
  sub_269D97630();
  v35 = sub_269D97640();
  result = (*(v5 + 8))(v8, v4);
  v37 = v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime];
  v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime] = v35 & 1;
  if ((v35 & 1) != v37)
  {
    [v2 invalidateIntrinsicContentSize];
    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_269CFEEF4()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  v2 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v3 = v2;
  if (*(v1 + *(v2 + 52)) == 1 && (v4 = (v1 + *(v2 + 72)), (v5 = v4[1]) != 0))
  {
    v6 = *v4;

    v7 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
    v8 = sub_269D018CC(v6, v5);

    [v7 setAttributedText_];
  }

  else
  {
    v7 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
    if (*(v1 + *(v3 + 72) + 8))
    {

      v8 = sub_269D9A5F0();
    }

    else
    {
      v8 = 0;
    }

    [v7 setText_];
  }
}

void sub_269CFF05C()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  v2 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v3 = v2;
  if (*(v1 + *(v2 + 56)) == 1 && (v4 = (v1 + *(v2 + 76)), (v5 = v4[1]) != 0))
  {
    v6 = *v4;

    v7 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
    v8 = sub_269D018CC(v6, v5);

    [v7 setAttributedText_];
  }

  else
  {
    v7 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
    if (*(v1 + *(v3 + 76) + 8))
    {

      v8 = sub_269D9A5F0();
    }

    else
    {
      v8 = 0;
    }

    [v7 setText_];
  }
}

void sub_269CFF1C4()
{
  v1 = v0;
  sub_269D020E0(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v31 - v4;
  v34 = sub_269CFF8CC();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v36 = qword_280C0D990;
  v6 = sub_269D972C0();
  v8 = v7;
  v40 = sub_269C1B0B8(0, &unk_28034EBF0, 0x277CCA898);
  v31[0] = objc_opt_self();
  v31[1] = [v31[0] hk_sleepKeyColor];
  v9 = sub_269D9ACA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v38 = v10 + 56;
  v39 = v11;
  v12 = (v11)(v5, 1, 1, v9);
  v43 = v6;
  v44 = v8;
  v37 = sub_269C3EEE8(v12, v13, v14);
  sub_269D9AE90();

  if (qword_28034D680 != -1)
  {
    swift_once();
  }

  v15 = qword_280350580;
  v16 = sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v17 = *MEMORY[0x277D76968];
  v18 = *MEMORY[0x277D74420];
  v19 = v15;
  v32 = v17;
  v33 = v18;
  v35 = v16;
  static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v17, 0, 0, 0, 0, 0, 0, v18, 0);
  v20 = v19;
  v21 = sub_269D9AC90();
  v22 = v34;
  [v34 setAttributedText_];

  v23 = sub_269CFFC28();
  v24 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  LODWORD(v22) = *(v1 + v24);
  v25 = sub_269D972C0();
  v27 = v26;

  if (v22)
  {
    v28 = [v31[0] hk_sleepKeyColor];
  }

  else
  {
    if (qword_28034D620 != -1)
    {
      swift_once();
    }

    v29 = qword_28034E060;
  }

  v39(v5, 1, 1, v9);
  v41 = v25;
  v42 = v27;
  sub_269D9AE90();

  static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v32, 0, 0, 0, 0, 0, 0, v33, 0);
  v30 = sub_269D9AC90();
  [v23 setAttributedText_];
}

id sub_269CFF6F8()
{
  v1 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  v3 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  if (*(v2 + *(v3 + 64) + 8))
  {

    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  [v1 setText_];

  v5 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);
  if (*(v2 + *(v3 + 68) + 8))
  {

    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText_];

  if (*(v2 + *(v3 + 64) + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + *(v3 + 68) + 8) == 0;
  }

  [*(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel) setHidden_];
  return [*(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel) setHidden_];
}

id sub_269CFF8CC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel);
  }

  else
  {
    if (qword_28034D680 != -1)
    {
      swift_once();
    }

    v4 = qword_280350580;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setTextColor_];
    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setNumberOfLines_];
    LODWORD(v6) = 1148846080;
    [v5 setContentCompressionResistancePriority:1 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_269CFF9EC(uint64_t *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_269CFFA4C(v4, a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

id sub_269CFFA4C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269DA23C0;
  *(v7 + 32) = a2();
  *(v7 + 40) = sub_269CFFC88(a3, &qword_28034D690, &qword_280350590, sub_269CFE880);
  *(v7 + 48) = sub_269CFFC88(a4, &qword_28034D680, &qword_280350580, sub_269CFE858);
  v8 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_269C1B0B8(0, &qword_2803505E0, 0x277D75D18);
  v9 = sub_269D9A7D0();

  v10 = [v8 initWithArrangedSubviews_];

  [v10 setAxis_];
  [v10 setAlignment_];
  [v10 setDistribution_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v11) = 1148846080;
  [v10 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v12];
  return v10;
}

id sub_269CFFC28()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel);
  }

  else
  {
    v4 = sub_269CFFD80();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269CFFC88(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    if (*a2 != -1)
    {
      v14 = a3;
      swift_once();
      a3 = v14;
    }

    v8 = *a3;
    v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v9 setTextColor_];
    [v9 setTextAlignment_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v10) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v10];
    v11 = *(v4 + v5);
    *(v4 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

id sub_269CFFD80()
{
  if (qword_28034D680 != -1)
  {
    swift_once();
  }

  v0 = qword_280350580;
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setTextColor_];
  [v1 setTextAlignment_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];
  return v1;
}

_BYTE *sub_269CFFE6C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_269D97650();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_bedtimeLayoutGuide;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v11 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_wakeUpLayoutGuide;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel] = 0;
  v12 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime;
  sub_269D97630();
  v13 = sub_269D97640();
  (*(v6 + 8))(v9, v5);
  v2[v12] = v13 & 1;
  v42 = a1;
  sub_269C6C0F0(a1, &v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model]);
  v43.receiver = v2;
  v43.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269D00450();
  sub_269D00584();
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v15 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
  v16 = sub_269CFF8CC();
  v17 = v15;
  [v16 setFont_];

  v18 = sub_269CFFC28();
  [v18 setFont_];

  v19 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);
  [v19 setFont_];

  v20 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);
  [v20 setFont_];

  v21 = sub_269CFE8EC();
  v22 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
  v23 = v21;
  [v22 setFont_];

  v24 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
  [v24 setFont_];

  sub_269CFF1C4();
  sub_269CFF6F8();
  sub_269CFEEF4();
  sub_269CFF05C();
  v25 = *&v14[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel];
  v26 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  if (v14[v26] == 1)
  {
    v27 = qword_28034D690;
    v28 = v25;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = &qword_280350590;
  }

  else
  {
    v30 = qword_28034D698;
    v31 = v25;
    if (v30 != -1)
    {
      swift_once();
    }

    v29 = &qword_280350598;
  }

  [v25 setTextColor_];

  sub_269D00CF0();
  sub_269D020E0(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_269DA6D90;
  v33 = sub_269D983D0();
  v34 = MEMORY[0x277D74DB8];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  v35 = sub_269D98260();
  v36 = MEMORY[0x277D74B90];
  *(v32 + 48) = v35;
  *(v32 + 56) = v36;
  v37 = sub_269D98290();
  v38 = MEMORY[0x277D74BF0];
  *(v32 + 64) = v37;
  *(v32 + 72) = v38;
  v39 = sub_269D98270();
  v40 = MEMORY[0x277D74BA0];
  *(v32 + 80) = v39;
  *(v32 + 88) = v40;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AD50();

  swift_unknownObjectRelease();

  sub_269D02228(v42, type metadata accessor for SleepScheduleComponentsViewModel);
  return v14;
}

void sub_269D00450()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  [v0 addLayoutGuide_];
  [v0 addLayoutGuide_];
  v2 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView, sub_269CFF8CC, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel);
  [v0 addSubview_];

  v3 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView, sub_269CFFC28, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel);
  [v0 addSubview_];
}

void sub_269D00584()
{
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA6DA0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_bedtimeLayoutGuide];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(inited + 32) = v5;
  v6 = [v2 bottomAnchor];
  v7 = [v0 bottomAnchor];
  v8 = [v6 &selRef:v7 setLargeContentImage:? + 5];

  *(inited + 40) = v8;
  v56 = v2;
  v9 = [v2 leadingAnchor];
  v10 = [v0 &off_279C86528 + 1];
  v11 = [v9 constraintEqualToAnchor:v10 constant:12.0];

  *(inited + 48) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v0 centerXAnchor];
  v14 = [v12 &selRef:v13 setLargeContentImage:? + 5];

  *(inited + 56) = v14;
  v15 = *&v0[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_wakeUpLayoutGuide];
  v16 = [v15 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 &selRef:v17 setLargeContentImage:? + 5];

  *(inited + 64) = v18;
  v19 = [v15 bottomAnchor];
  v20 = [v0 bottomAnchor];
  v21 = [v19 &selRef:v20 setLargeContentImage:? + 5];

  *(inited + 72) = v21;
  v22 = [v15 leadingAnchor];
  v23 = [v0 centerXAnchor];
  v24 = [v22 &selRef:v23 setLargeContentImage:? + 5];

  *(inited + 80) = v24;
  v25 = [v15 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-12.0];

  *(inited + 88) = v27;
  v28 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView, sub_269CFFC28, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel);
  v29 = [v28 topAnchor];

  v30 = [v15 topAnchor];
  v31 = [v29 &selRef:v30 setLargeContentImage:? + 5];

  *(inited + 96) = v31;
  v55 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView;
  v32 = [*&v0[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView] bottomAnchor];
  v33 = [v15 bottomAnchor];
  v34 = [v32 &selRef:v33 setLargeContentImage:? + 5];

  *(inited + 104) = v34;
  v35 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
  v36 = [v35 centerYAnchor];

  v37 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
  v38 = [v37 centerYAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(inited + 112) = v39;
  v40 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView, sub_269CFF8CC, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel);
  v41 = [v40 centerXAnchor];

  v42 = [v56 centerXAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(inited + 120) = v43;
  v44 = [*&v0[v55] &selRef_initForTextStyle_ + 2];
  v45 = [v15 &selRef_initForTextStyle_ + 2];
  v46 = [v44 constraintEqualToAnchor_];

  *(inited + 128) = v46;
  v47 = [*&v0[v55] leadingAnchor];
  v48 = [v15 leadingAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 136) = v49;
  v50 = [*&v0[v55] trailingAnchor];
  v51 = [v15 trailingAnchor];
  v52 = [v50 constraintLessThanOrEqualToAnchor_];

  *(inited + 144) = v52;
  sub_269C49D30(inited);
  v53 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v54 = sub_269D9A7D0();

  [v53 activateConstraints_];
}

void sub_269D00CF0()
{
  v0 = MEMORY[0x277D837D0];
  sub_269CF82FC(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_269DA0D60;
  *(v1 + 32) = sub_269D9A630();
  *(v1 + 40) = v2;
  *(v1 + 48) = 0x7065656C53;
  *(v1 + 56) = 0xE500000000000000;
  strcpy((v1 + 64), "ScheduleEditor");
  *(v1 + 79) = -18;
  sub_269C49A1C(&unk_287A9F6C8);
  sub_269CF82FC(0, &qword_280C0B4F0, v0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v3 = sub_269D9A520();
  v5 = v4;

  sub_269C4BEAC(&unk_287A9F6E8);

  MEMORY[0x26D650930](0x656D69746465422ELL, 0xE800000000000000);
  v7 = v3;
  v6 = v5;

  MEMORY[0x26D650930](0x7055656B61572ELL, 0xE700000000000000);

  v9 = v3;
  v8 = v5;
  v10 = sub_269CFF8CC();
  v22 = v5;

  MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
  v11 = sub_269D9A5F0();

  [v10 setAccessibilityIdentifier_];

  v12 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);

  MEMORY[0x26D650930](0x747865547961442ELL, 0xE800000000000000);
  v13 = sub_269D9A5F0();

  [v12 &off_279C866F8];

  v14 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
  v23 = v6;

  MEMORY[0x26D650930](0x786554656D69542ELL, 0xE900000000000074);

  v15 = sub_269D9A5F0();

  [v14 setAccessibilityIdentifier_];

  v16 = sub_269CFFC28();

  MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
  v17 = sub_269D9A5F0();

  [v16 setAccessibilityIdentifier_];

  v18 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);

  MEMORY[0x26D650930](0x747865547961442ELL, 0xE800000000000000);
  v19 = sub_269D9A5F0();

  [v18 setAccessibilityIdentifier_];

  v20 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
  v24 = v8;

  MEMORY[0x26D650930](0x786554656D69542ELL, 0xE900000000000074);

  v21 = sub_269D9A5F0();

  [v20 setAccessibilityIdentifier_];
}

void sub_269D011BC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_269D01AB0(a2);
  }

  else
  {
  }
}

Swift::Void __swiftcall SleepScheduleComponentsHeader.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_tintColorDidChange);
  sub_269CFF1C4();
}

id sub_269D01470(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = sub_269CFFC88(a4, &qword_28034D690, &qword_280350590, sub_269CFE880);

  return v7;
}

id SleepScheduleComponentsHeader.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleComponentsHeader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScheduleComponentsHeader(uint64_t a1)
{
  result = qword_280C0C060;
  if (!qword_280C0C060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269D017F4(uint64_t a1)
{
  result = type metadata accessor for SleepScheduleComponentsViewModel(319);
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

uint64_t sub_269D018CC(uint64_t a1, uint64_t a2)
{
  sub_269D020E0(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - v4;
  sub_269C1B0B8(0, &unk_28034EBF0, 0x277CCA898);
  if (qword_28034D688 != -1)
  {
    swift_once();
  }

  v6 = qword_280350588;
  v7 = sub_269D9ACA0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = qword_28034D690;
  v9 = v6;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_280350590;
  sub_269CFE8EC();
  return sub_269D9AC90();
}

void sub_269D01AB0(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_12;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v13 = [v2 traitCollection];
  v14 = [v13 legibilityWeight];

  if (v14 != [a1 legibilityWeight])
  {
LABEL_12:
    sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
    v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
    v17 = sub_269CFF8CC();
    v18 = v16;
    [v17 setFont_];

    v19 = sub_269CFFC28();
    [v19 setFont_];

    v20 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);
    [v20 setFont_];

    v21 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580, sub_269CFE858);
    [v21 setFont_];

    v22 = sub_269CFE8EC();
    v23 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
    v24 = v22;
    [v23 setFont_];

    v25 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590, sub_269CFE880);
    [v25 setFont_];

    sub_269CFF1C4();
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 1;
LABEL_13:
  v26 = [v2 traitCollection];
  v27 = [v26 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (v15 && v27)
  {
    sub_269CFF1C4();
  }

  v28 = [v2 traitCollection];
  v29 = [v28 layoutDirection];

  if (!a1 || v29 != [a1 layoutDirection])
  {
    sub_269CFEEF4();

    sub_269CFF05C();
  }
}

void sub_269D01EA8()
{
  v1 = v0;
  v2 = sub_269D97650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_bedtimeLayoutGuide;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v8 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_wakeUpLayoutGuide;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel) = 0;
  v9 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime;
  sub_269D97630();
  LOBYTE(v8) = sub_269D97640();
  (*(v3 + 8))(v6, v2);
  *(v1 + v9) = v8 & 1;
  sub_269D9B100();
  __break(1u);
}

void sub_269D02074(uint64_t a1)
{
  if (!qword_28034DEC0)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034DEC0);
    }
  }
}

void sub_269D020E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D02144(uint64_t a1)
{
  if (!qword_2803505C8)
  {
    type metadata accessor for FeatureKey(255);
    sub_269D021E0(&unk_2803505D0, type metadata accessor for FeatureKey, &unk_269D9FC74);
    v1 = sub_269D9A4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803505C8);
    }
  }
}

uint64_t sub_269D021E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269D02228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269D022B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D022F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D02374(double *a1@<X0>, void *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[8];
  if (v4 / 2.45 > v4)
  {
    __break(1u);
  }

  else
  {
    v5 = *a1;
    v6 = a1[3] - v4 * 0.5;
    v7 = a1[2] + v4 * 0.5;
    v8 = a1[1] + v4;
    sub_269D98A20();
    *&v49 = v5;
    *(&v49 + 1) = v8;
    *&v50 = v7;
    *(&v50 + 1) = v6;
    *&v51 = v5;
    *(&v51 + 1) = v8;
    *&v52 = v7;
    *(&v52 + 1) = v6;
    v54[24] = 0;
    v9 = *(a1 + 4);
    sub_269D0307C(a1, v70);
    v23 = sub_269D99D30();
    v47 = v53;
    *v48 = *v54;
    *&v48[9] = *&v54[9];
    v43 = v49;
    v44 = v50;
    v46 = v52;
    v45 = v51;
    sub_269D029C0();
    v11 = v10;
    v24 = v13;
    v25 = v12;
    v15 = v14;
    sub_269D030B4(&v49, v70, sub_269D02C94);
    sub_269D98A20();
    v16 = v87;
    __dst = a2;
    v18 = v88;
    v17 = v89;
    v19 = v90;
    v20 = v91;
    v21 = v92;
    __src[4] = v53;
    __src[5] = *v54;
    *(&__src[5] + 9) = *&v54[9];
    __src[0] = v49;
    __src[1] = v50;
    __src[3] = v52;
    __src[2] = v51;
    sub_269D98A20();
    v55[4] = __src[4];
    v55[5] = __src[5];
    v55[6] = __src[6];
    v55[0] = __src[0];
    v55[1] = __src[1];
    v55[3] = __src[3];
    v55[2] = __src[2];
    *&v56 = v16;
    *(&v56 + 1) = __PAIR64__(v17, v18);
    *v57 = v19;
    *&v57[8] = v20;
    *&v57[16] = v21;
    *&v57[24] = 0;
    v57[26] = 1;
    v37 = __src[6];
    v38 = v56;
    v39[0] = *v57;
    *(v39 + 11) = *&v57[11];
    v33 = __src[2];
    v34 = __src[3];
    v35 = __src[4];
    v36 = __src[5];
    v31 = __src[0];
    v32 = __src[1];
    v58[4] = __src[4];
    v58[5] = __src[5];
    v58[6] = __src[6];
    v58[0] = __src[0];
    v58[1] = __src[1];
    v22 = *(a1 + 7);
    v58[3] = __src[3];
    v58[2] = __src[2];
    v59 = v16;
    v60 = v18;
    v61 = v17;
    v62 = v19;
    v63 = v20;
    v64 = v21;
    v65 = 0;
    v66 = 1;
    sub_269D030B4(v55, v70, sub_269D02E28);
    sub_269D0311C(v58, sub_269D02E28);
    *v68 = *&v48[16];
    v67[4] = v47;
    v67[5] = *v48;
    v67[0] = v43;
    v67[1] = v44;
    v67[3] = v46;
    v67[2] = v45;
    *&v68[16] = v23;
    *&v68[24] = 256;
    v30[4] = v47;
    v30[5] = *v48;
    v30[6] = *&v48[16];
    *(&v30[6] + 10) = *&v68[10];
    v30[0] = v43;
    v30[1] = v44;
    v30[2] = v45;
    v30[3] = v46;
    *&__src[0] = v11;
    *(&__src[0] + 1) = v25;
    *&__src[1] = v24;
    *(&__src[1] + 1) = v15;
    *&__src[2] = v11;
    *(&__src[2] + 1) = v25;
    *&__src[3] = v24;
    *(&__src[3] + 1) = v15;
    *&__src[6] = v42;
    __src[5] = v41;
    __src[4] = v40;
    BYTE8(__src[6]) = 0;
    *&__src[7] = v9;
    WORD4(__src[7]) = 256;
    *&__src[8] = v22;
    *(&__src[17] + 3) = *(v39 + 11);
    *(&__src[16] + 8) = v39[0];
    *(&__src[9] + 8) = v32;
    *(&__src[8] + 8) = v31;
    *(&__src[13] + 8) = v36;
    *(&__src[12] + 8) = v35;
    *(&__src[11] + 8) = v34;
    *(&__src[10] + 8) = v33;
    *(&__src[15] + 8) = v38;
    *(&__src[14] + 8) = v37;
    memcpy(&v30[8], __src, 0x123uLL);
    memcpy(__dst, v30, 0x1A3uLL);
    v70[0] = v11;
    v70[1] = v25;
    v70[2] = v24;
    v70[3] = v15;
    v70[4] = v11;
    v70[5] = v25;
    v70[6] = v24;
    v70[7] = v15;
    v71 = v40;
    v72 = v41;
    v73 = v42;
    v74 = 0;
    v75 = v9;
    v76 = 256;
    v77 = v22;
    v86[0] = v39[0];
    *(v86 + 11) = *(v39 + 11);
    v84 = v37;
    v85 = v38;
    v80 = v33;
    v81 = v34;
    v82 = v35;
    v83 = v36;
    v78 = v31;
    v79 = v32;
    sub_269D030B4(v67, v27, sub_269D02BE4);
    sub_269D030B4(__src, v27, sub_269D02D60);
    sub_269D0311C(v70, sub_269D02D60);
    v27[4] = v47;
    v27[5] = *v48;
    v27[6] = *&v48[16];
    v27[0] = v43;
    v27[1] = v44;
    v27[2] = v45;
    v27[3] = v46;
    v28 = v23;
    v29 = 256;
    sub_269D0311C(v27, sub_269D02BE4);
  }
}

void sub_269D029C0()
{
  if (v0[2] > v0[3] || v0[8] / 2.45 > v0[8])
  {
    __break(1u);
  }
}

void *sub_269D02A4C@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v4;
  v13 = *(v2 + 64);
  v5 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v5;
  v6 = sub_269D9A180();
  v8 = v7;
  sub_269D02374(v12, __src);
  memcpy(__dst, __src, 0x1A3uLL);
  memcpy(v15, __src, 0x1A3uLL);
  sub_269D030B4(__dst, &v10, sub_269D02B1C);
  sub_269D0311C(v15, sub_269D02B1C);
  *a2 = v6;
  a2[1] = v8;
  return memcpy(a2 + 2, __dst, 0x1A3uLL);
}

void sub_269D02B1C(uint64_t a1)
{
  if (!qword_2803505E8)
  {
    sub_269D02B74(255);
    v1 = sub_269D9A1C0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803505E8);
    }
  }
}

void sub_269D02B74(uint64_t a1)
{
  if (!qword_2803505F0)
  {
    sub_269D02BE4(255);
    sub_269D02D60(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803505F0);
    }
  }
}

void sub_269D02BE4(uint64_t a1)
{
  if (!qword_2803505F8)
  {
    sub_269D02C94(255);
    sub_269D0317C(&qword_280350618, sub_269D02C94, MEMORY[0x277CDF528]);
    v1 = sub_269D989D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803505F8);
    }
  }
}

void sub_269D02C94(uint64_t a1)
{
  if (!qword_280350600)
  {
    sub_269D02FCC(255, &qword_280350608, sub_269C5BAD4, &type metadata for Petal);
    sub_269C5BAD4(v1, v2, v3);
    sub_269D0302C(&qword_280350610, &qword_280350608, sub_269C5BAD4, &type metadata for Petal);
    v4 = sub_269D98A70();
    if (!v5)
    {
      atomic_store(v4, &qword_280350600);
    }
  }
}

void sub_269D02D60(uint64_t a1)
{
  if (!qword_280350620)
  {
    sub_269D02DC8(255);
    sub_269D02E28(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350620);
    }
  }
}

void sub_269D02DC8(uint64_t a1)
{
  if (!qword_280350628)
  {
    sub_269D02BE4(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350628);
    }
  }
}

void sub_269D02E28(uint64_t a1)
{
  if (!qword_280350630)
  {
    sub_269D02EBC(255);
    sub_269D0317C(&qword_280350650, sub_269D02EBC, MEMORY[0x277CDF528]);
    v1 = sub_269D98A40();
    if (!v2)
    {
      atomic_store(v1, &qword_280350630);
    }
  }
}

void sub_269D02EBC(uint64_t a1)
{
  if (!qword_280350638)
  {
    sub_269D02C94(255);
    v1 = MEMORY[0x277CE1120];
    sub_269D02FCC(255, &qword_280350640, sub_269CB19F8, MEMORY[0x277CE1120]);
    sub_269D0317C(&qword_280350618, sub_269D02C94, MEMORY[0x277CDF528]);
    sub_269D0302C(&qword_280350648, &qword_280350640, sub_269CB19F8, v1);
    v2 = sub_269D98A70();
    if (!v3)
    {
      atomic_store(v2, &qword_280350638);
    }
  }
}

void sub_269D02FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_269D98BA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269D0302C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269D02FCC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269D030B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D0311C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269D0317C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269D031C4(uint64_t a1)
{
  if (!qword_280350660)
  {
    sub_269D02B1C(255);
    sub_269D0317C(&qword_280350668, sub_269D02B1C, MEMORY[0x277CE14C0]);
    v1 = sub_269D99FE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350660);
    }
  }
}

void sub_269D0331C(uint64_t *a1@<X8>)
{
  v2 = sub_269D59EA0();
  v3 = [v2 text];

  if (v3)
  {
    v4 = sub_269D9A630();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

void sub_269D033A0(uint64_t *a1)
{
  v1 = a1[1];
  v2 = sub_269D59EA0();
  if (v1)
  {
    v3 = sub_269D9A5F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

uint64_t sub_269D03430()
{
  v0 = sub_269D59EA0();
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_269D9A630();

  return v2;
}

void sub_269D034B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_269D59EA0();
  if (a2)
  {
    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

void (*sub_269D03548(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR____TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView_headerView);
  v3 = sub_269D59EA0();
  v4 = [v3 text];

  if (v4)
  {
    v5 = sub_269D9A630();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_269D035E8;
}

void sub_269D035E8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    v3 = sub_269D59EA0();
    v6 = v3;
    if (v2)
    {
      v4 = sub_269D9A5F0();

      v3 = v6;
    }

    else
    {
      v4 = 0;
    }

    [v3 setText_];
  }

  else
  {
    v5 = sub_269D59EA0();
    v6 = v5;
    if (v2)
    {
      v4 = sub_269D9A5F0();

      v5 = v6;
    }

    else
    {
      v4 = 0;
    }

    [v5 setText_];
  }
}

id ScheduleOccurrenceSectionTableViewHeaderView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_269D9A5F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v4;
}

char *ScheduleOccurrenceSectionTableViewHeaderView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView_headerView] = [objc_allocWithZone(type metadata accessor for ScheduleOccurrenceHeaderView()) initWithFrame_];
  if (a2)
  {
    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  v31.receiver = v2;
  v31.super_class = type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  v5 = objc_msgSendSuper2(&v31, sel_initWithReuseIdentifier_, v4);

  v6 = v5;
  v7 = [v6 contentView];
  v8 = OBJC_IVAR____TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView_headerView;
  [v7 addSubview_];

  v9 = [*&v6[v8] topAnchor];
  v10 = [v6 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  LODWORD(v13) = 1148829696;
  [v12 setPriority_];
  v14 = objc_opt_self();
  sub_269C4E764();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269DA0E10;
  v16 = [*&v6[v8] leadingAnchor];
  v17 = [v6 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  *(v15 + 40) = v12;
  v20 = v12;
  v21 = [v6 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [*&v6[v8] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v15 + 48) = v24;
  v25 = [v6 contentView];

  v26 = [v25 bottomAnchor];
  v27 = [*&v6[v8] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v15 + 56) = v28;
  sub_269D03CA0();
  v29 = sub_269D9A7D0();

  [v14 activateConstraints_];

  [*&v6[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  return v6;
}

id ScheduleOccurrenceSectionTableViewHeaderView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269D03CA0()
{
  result = qword_28034E1C0;
  if (!qword_28034E1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E1C0);
  }

  return result;
}

uint64_t sub_269D03DA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269D03DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_269D03E7C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_269D04230();
  sub_269D9A8E0();
  v8 = a3;
  v9 = a1;
  v10 = sub_269D9A8D0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v13 = v9;
  v14 = v8;
  v15 = sub_269D9A8D0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v12;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v17 = sub_269D9A030();
  sub_269C3EEE8(v17, v18, v19);
  return sub_269D99F90();
}

uint64_t sub_269D03FCC@<X0>(uint64_t a1@<X2>, unsigned __int8 *a3@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v5 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) scheduledSleepMode];

    *a3 = v5;
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D04370(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

void sub_269D040E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v7 = *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings];
    v8 = a4;
    [v7 setScheduledSleepMode_];
    sub_269CB4B04();
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D04370(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    sub_269D98E30();
    __break(1u);
  }
}

uint64_t sub_269D04230()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269D04370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269D043B8()
{
  if (!qword_280350680)
  {
    v0 = sub_269D99FA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350680);
    }
  }
}

BOOL static MarqueeView.LoopBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MarqueeView.init(loopBehavior:speed:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_269D05C64(0, &qword_280350688, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v22 = 0;
  sub_269D99E60();
  *a4 = v23;
  v22 = 0;
  sub_269D99E60();
  *(a4 + 16) = v23;
  v22 = 0;
  sub_269D99E60();
  *(a4 + 32) = v23;
  *(a4 + 64) = v13;
  *(a4 + 72) = v14;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  sub_269D046C4();
  v15 = objc_opt_self();

  v16 = [v15 currentRunLoop];
  v17 = sub_269D9AE50();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_269D9AD80();

  sub_269D04710(v12);
  *&v23 = v18;
  sub_269D9AD70();
  sub_269D05D48(&qword_280350698, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v19 = sub_269D98800();

  *(a4 + 48) = v19;
  *(a4 + 56) = 0;
  return result;
}

unint64_t sub_269D046C4()
{
  result = qword_280350690;
  if (!qword_280350690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280350690);
  }

  return result;
}

uint64_t sub_269D04710(uint64_t a1)
{
  sub_269D05C64(0, &qword_280350688, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarqueeView.body.getter(uint64_t a1)
{
  v3 = v1[4];
  v41 = v1[5];
  v4 = v1[3];
  v38 = v1[2];
  v39 = v4;
  v40 = v3;
  v5 = v1[1];
  v36 = *v1;
  v37 = v5;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  v9 = v1[3];
  *(v6 + 64) = v1[2];
  *(v6 + 80) = v9;
  v10 = v1[5];
  *(v6 + 96) = v1[4];
  *(v6 + 112) = v10;
  v11 = v1[1];
  *(v6 + 32) = *v1;
  *(v6 + 48) = v11;
  sub_269D04FA4(0);
  v26 = v12;
  v13 = sub_269D05084();
  nullsub_1();
  v14 = v39;

  v15 = *(*(a1 - 8) + 16);
  v15(v27, &v36, a1);
  *v27 = v14;
  sub_269D05C64(0, &qword_2803507D8, sub_269D058E8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v8;
  v17 = v39;
  *(v16 + 64) = v38;
  *(v16 + 80) = v17;
  v18 = v41;
  *(v16 + 96) = v40;
  *(v16 + 112) = v18;
  v19 = v37;
  *(v16 + 32) = v36;
  *(v16 + 48) = v19;
  v15(v27, &v36, a1);
  *v27 = v7;
  *&v27[8] = v26;
  *&v27[16] = v8;
  v28 = v13;
  Subviews = type metadata accessor for GetSubviews(0, v27);
  sub_269D058E8(0);
  v22 = v21;
  WitnessTable = swift_getWitnessTable();
  v24 = sub_269D05D48(qword_2803506C8, sub_269D058E8, MEMORY[0x277CBCB30]);
  sub_269D99C90();

  *v27 = v22;
  *&v27[8] = Subviews;
  *&v27[16] = v24;
  v28 = WitnessTable;
  sub_269D98DC0();
  swift_getWitnessTable();
  sub_269CE81C8();

  v32 = *&v27[8];
  v31 = *v27;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  sub_269CE81C8();
}

uint64_t sub_269D04B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = sub_269D993C0();
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v27, v12);
  v13 = *a2;
  v14 = a2[1];
  v28 = type metadata accessor for MarqueeView(0, a3, a4, v15);
  *&v29 = v13;
  *(&v29 + 1) = v14;
  sub_269D05C14();
  sub_269D99E70();
  sub_269D993D0();
  v29 = *a2;
  sub_269D99E70();
  sub_269D05004(0);
  *(a5 + *(v16 + 52)) = v30;
  v17 = a1;
  v18 = v27;
  (*(v10 + 16))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v27);
  v19 = (*(v10 + 80) + 128) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = *(a2 + 3);
  *(v20 + 64) = *(a2 + 2);
  *(v20 + 80) = v21;
  v22 = *(a2 + 5);
  *(v20 + 96) = *(a2 + 4);
  *(v20 + 112) = v22;
  v23 = *(a2 + 1);
  *(v20 + 32) = *a2;
  *(v20 + 48) = v23;
  (*(v10 + 32))(v20 + v19, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  sub_269D04FA4(0);
  v25 = (a5 + *(v24 + 36));
  *v25 = sub_269D05CC8;
  v25[1] = v20;
  v25[2] = 0;
  v25[3] = 0;
  return (*(*(v28 - 8) + 16))(&v29, a2);
}

uint64_t sub_269D04DA4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  v18 = *a1;
  v10 = type metadata accessor for MarqueeView(0, a3, a4, v7);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v19, a1, v10);
  sub_269D993C0();
  sub_269D05D48(&qword_2803507E0, MEMORY[0x277CE05F0], MEMORY[0x277CE0610]);
  sub_269D9A9C0();
  sub_269D9AA00();
  v12 = sub_269D9A9F0();
  *&v19 = v8;
  *(&v19 + 1) = v9;
  v26 = v12;
  sub_269D05C14();
  sub_269D99E80();
  v19 = v18;
  v20 = v8;
  v21 = v9;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  (*(v11 + 8))(&v19, v10);
}

void sub_269D04FA4(uint64_t a1)
{
  if (!qword_2803506A0)
  {
    sub_269D05004(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_2803506A0);
    }
  }
}

void sub_269D05004(uint64_t a1)
{
  if (!qword_2803506A8)
  {
    sub_269D993B0();
    v1 = sub_269D99F10();
    if (!v2)
    {
      atomic_store(v1, &qword_2803506A8);
    }
  }
}

unint64_t sub_269D05084()
{
  result = qword_2803506B0;
  if (!qword_2803506B0)
  {
    sub_269D04FA4(255);
    sub_269D05D48(&qword_2803506B8, sub_269D05004, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803506B0);
  }

  return result;
}

uint64_t sub_269D05134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor, v5);
  sub_269D9A1B0();
  sub_269D98BD0();
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

uint64_t sub_269D052A4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for MarqueeView(0, a2, a3, v5);
  if (sub_269D054A4())
  {
    sub_269D05608(v6);
  }

  else
  {
    sub_269D053DC();
  }
}

uint64_t sub_269D053DC()
{
  v1 = *(v0 + 56);
  v3[0] = *(v0 + 48);
  v3[1] = v1;
  sub_269D05C64(0, &qword_2803507D8, sub_269D058E8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  sub_269D986A0();

  sub_269D9AD60();

  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_269D98720();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_269D054A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_269D05C14();
  sub_269D99E70();
  if (v4 >= 2)
  {
    if (v2 == 2)
    {
      return 1;
    }

    sub_269D99E70();
    if (v4 < v1)
    {
      return 1;
    }

    sub_269D99E70();
    if (v4 == v1)
    {
      sub_269D99E70();
      result = sub_269D99E70();
      if (__OFSUB__(v4, 1))
      {
LABEL_13:
        __break(1u);
        return result;
      }

      if (v4 < v4 - 1)
      {
        return 1;
      }
    }

    sub_269D99E70();
    result = sub_269D99E70();
    if (!__OFSUB__(v4, 1))
    {
      return 0;
    }

    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

void *sub_269D05608(uint64_t a1)
{
  v3 = v1[3];
  v39 = v1[2];
  v40 = v3;
  v4 = v1[5];
  v41 = v1[4];
  v42 = v4;
  v5 = v1[1];
  v37 = *v1;
  v38 = v5;
  sub_269D05C14();
  sub_269D99E70();
  v31 = v38;
  result = sub_269D99E70();
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v25 < v25 - 1)
  {
    v7 = v37;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v25 = v38;
    v26 = v39;
    v8 = *(a1 - 8);
    (*(v8 + 16))(&v31, &v37, a1);
    v31 = v7;
    result = sub_269D99E70();
    if (!__OFADD__(v16, 1))
    {
      v31 = v7;
      sub_269D99E80();
      v31 = v7;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v32 = v25;
      v33 = v26;
      return (*(v8 + 8))(&v31, a1);
    }

    goto LABEL_9;
  }

  v9 = v37;
  v21 = v40;
  v23 = v41;
  v24 = v42;
  v17 = v38;
  v19 = v39;
  v10 = *(a1 - 8);
  v11 = *(v10 + 16);
  v11(&v31, &v37, a1);
  v31 = v9;
  sub_269D99E80();
  v25 = v9;
  v28 = v21;
  v29 = v23;
  v30 = v24;
  v26 = v17;
  v27 = v19;
  v12 = *(v10 + 8);
  v12(&v25, a1);
  v14 = v37;
  v15 = v38;
  v13 = v39;
  v18 = v40;
  v20 = v41;
  v22 = v42;
  v11(&v31, &v37, a1);
  v31 = v13;
  result = sub_269D99E70();
  if (__OFADD__(v43, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v31 = v13;
  ++v43;
  sub_269D99E80();
  v31 = v14;
  v32 = v15;
  v33 = v13;
  v34 = v18;
  v35 = v20;
  v36 = v22;
  return (v12)(&v31, a1);
}

void sub_269D058E8(uint64_t a1)
{
  if (!qword_2803506C0)
  {
    sub_269D9AD70();
    sub_269D05D48(&qword_280350698, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
    v1 = sub_269D986B0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803506C0);
    }
  }
}

uint64_t sub_269D059C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_269D05A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D05A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_269D05AFC(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D05B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
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
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_269D05B98(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D05BB4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

void sub_269D05C14()
{
  if (!qword_2803507D0)
  {
    v0 = sub_269D99EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803507D0);
    }
  }
}

void sub_269D05C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D05CC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_269D993C0() - 8);
  v4 = v0 + ((*(v3 + 80) + 128) & ~*(v3 + 80));

  return sub_269D04DA4((v0 + 32), v4, v1, v2);
}

uint64_t sub_269D05D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269D05DA0()
{
  type metadata accessor for GoalTimePickerCollectionViewCell();
  sub_269CC12C0();
  return sub_269D97F90();
}

uint64_t sub_269D05E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269D05EE0(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

unint64_t sub_269D05E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803507E8;
  if (!qword_2803507E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803507E8);
  }

  return result;
}

unint64_t sub_269D05EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269D05EE0(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_269D05F34(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_269D05EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803507F0;
  if (!qword_2803507F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803507F0);
  }

  return result;
}

unint64_t sub_269D05F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803507F8;
  if (!qword_2803507F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803507F8);
  }

  return result;
}

unint64_t sub_269D05F88()
{
  result = qword_280350800;
  if (!qword_280350800)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280350800);
  }

  return result;
}

void sub_269D05FD0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_269D06030()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

BOOL sub_269D060BC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  return *(*(v0 + v1) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) != 0;
}

void sub_269D06118(int a1)
{
  v2 = v1;
  v4 = sub_269D97670();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D977A0();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  if ((((*(*(v2 + v17) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) == 0) ^ a1) & 1) == 0)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CC9830], v4);
    sub_269D97680();
    (*(v5 + 8))(v8, v4);
    SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v12, v16);
    v18 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsEditView(0));
    sub_269C6AE28(22, 0, 7, 0, v16, a1 & 1);
    v19 = *(v2 + v17);
    *(v2 + v17) = v20;
  }
}

void (*sub_269D06330(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_269D97670();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 48) = v8;
  v9 = *(*(sub_269D977A0() - 8) + 64);
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  *(v5 + 56) = v10;
  v11 = *(*(type metadata accessor for SleepScheduleComponentsViewModel(0) - 8) + 64);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(v11);
  }

  v13 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  *(v5 + 64) = v12;
  *(v5 + 72) = v13;
  swift_beginAccess();
  *(v5 + 80) = *(*(v1 + v13) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) != 0;
  return sub_269D064A8;
}

void sub_269D064A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[6];
    sub_269D06118(*(*a1 + 80));
  }

  else
  {
    v7 = v2[9];
    v8 = v2[3];
    if (v3 == (*(*(v8 + v7) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) == 0))
    {
      v10 = v2[7];
      v9 = v2[8];
      v11 = v2[5];
      v12 = v2[6];
      v13 = v2[4];
      (*(v11 + 104))(v12, *MEMORY[0x277CC9830], v13);
      sub_269D97680();
      (*(v11 + 8))(v12, v13);
      SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v10, v9);
      v14 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsEditView(0));
      sub_269C6AE28(22, 0, 7, 0, v9, v3);
      v15 = *(v8 + v7);
      *(v8 + v7) = v16;
    }

    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[6];
  }

  free(v4);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_269D06608@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_269D06688(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_269D06708()
{
  swift_beginAccess();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_269D06774(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269D067F8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  *(v3 + 104) = v1;
  *(v3 + 112) = v5;
  swift_beginAccess();
  swift_beginAccess();
  *(v4 + 96) = swift_unknownObjectWeakLoadStrong();
  return sub_269D068B4;
}

void sub_269D068B4(void **a1, char a2)
{
  v2 = *a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  free(v2);
}

id ScheduleOccurrenceComponentsEditTableViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ScheduleOccurrenceComponentsEditTableViewCell.apply(_:)(uint64_t a1)
{
  v28 = sub_269D971F0();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v14 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  v15 = v12;
  v16 = [v14 bedtimeComponents];
  sub_269D97120();

  v17 = [*(a1 + v13) wakeUpComponents];
  sub_269D97120();

  sub_269D987C0();
  v18 = v30;
  v19 = v31;
  sub_269D987C0();
  v20 = v30;
  v21 = [*(a1 + v13) alarmConfiguration];
  [v21 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  v22 = v29;
  LODWORD(v13) = [v29 isEnabled];

  sub_269C68F84(v10, v6, v18, v19, v20, v13, *(a1 + 57));
  v23 = *(v3 + 8);
  v24 = v6;
  v25 = v28;
  v23(v24, v28);
  return (v23)(v10, v25);
}

char *sub_269D0701C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D977A0();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v15 - 8, v16);
  v20 = &aBlock[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = 0x8000000269DAC1D0;
    if (a1 == 0xD000000000000030 && 0x8000000269DAC1D0 == a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_269D9B280() ^ 1;
    }
  }

  else
  {
    v21 = 1;
  }

  (*(v7 + 104))(v10, *MEMORY[0x277CC9830], v6, v17, v18);
  sub_269D97680();
  (*(v7 + 8))(v10, v6);
  SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v14, v20);
  v22 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsEditView(0));
  sub_269C6AE28(22, 0, 7, 0, v20, v21 & 1);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView] = v23;
  if (a2)
  {
    v24 = sub_269D9A5F0();
  }

  else
  {
    v24 = 0;
  }

  v25 = type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v38.receiver = v3;
  v38.super_class = v25;
  v26 = objc_msgSendSuper2(&v38, sel_initWithStyle_reuseIdentifier_, 0, v24);

  v27 = v26;
  v28 = [v27 contentView];
  v29 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  [v28 addSubview_];

  v30 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_25;
  v31 = _Block_copy(aBlock);
  v32 = [v30 initWithDynamicProvider_];
  _Block_release(v31);

  [v27 setBackgroundColor_];

  v33 = *&v27[v29];
  v34 = [v27 contentView];
  UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(v34, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

  return v27;
}

double block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_269D07578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepTimeDurationPickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269D07630()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280C0D990 = result;
  return result;
}

void sub_269D076AC()
{
  v0 = *MEMORY[0x277D62020];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 bundleWithIdentifier_];

  if (v3)
  {
    qword_280350820 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_269D07744(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_269D077C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_269D07830()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_269D07878(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_269D07930(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_269D079EC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_269D07ABC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor);
  if (v1)
  {
    return *(v1 + 50);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D07B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor);
    v5 = Strong;

    if (v4)
    {
      sub_269CA5FCC();
    }
  }
}

uint64_t sub_269D07C20(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v23.receiver = v2;
  v23.super_class = type metadata accessor for SleepOnboardingFlowTableViewController();
  objc_msgSendSuper2(&v23, sel_viewWillAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v5 = *(*&v2[v4] + 16);

  v6 = [v5 source];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if (v12)
    {
      return result;
    }

    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v14 = sub_269D98250();
    __swift_project_value_buffer(v14, qword_280C0B728);
    v15 = sub_269D98230();
    v16 = sub_269D9AB80();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446210;
      v19 = sub_269D9B4D0();
      v21 = sub_269C2EACC(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_269C18000, v15, v16, "[%{public}s] Observing sleep settings or schedule changes for dismissal", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D652460](v18, -1, -1);
      MEMORY[0x26D652460](v17, -1, -1);
    }

    *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_sleepChangeObserver] = sub_269C4AB48();
  }
}

id sub_269D07ECC(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v5 = *(*&v2[v4] + 16);

  v6 = [v5 source];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if ((v12 & 1) == 0)
    {
      *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_sleepChangeObserver] = 0;

      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v13 = sub_269D98250();
      __swift_project_value_buffer(v13, qword_280C0B728);
      v14 = sub_269D98230();
      v15 = sub_269D9AB80();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136446210;
        v18 = sub_269D9B4D0();
        v20 = sub_269C2EACC(v18, v19, &v23);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Done observing sleep settings or schedule changes", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x26D652460](v17, -1, -1);
        MEMORY[0x26D652460](v16, -1, -1);
      }
    }
  }

  v21 = type metadata accessor for SleepOnboardingFlowTableViewController();
  v24.receiver = v2;
  v24.super_class = v21;
  return objc_msgSendSuper2(&v24, sel_viewWillDisappear_, a1 & 1);
}

void sub_269D0814C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

id sub_269D082C4()
{
  v1 = v0;
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = [result window];

    if (v4)
    {

      v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor];
      if (v5)
      {
        if ((*(v5 + 49) & 1) == 0)
        {

          sub_269CA5FCC();
        }
      }
    }

    v6.receiver = v1;
    v6.super_class = type metadata accessor for SleepOnboardingFlowTableViewController();
    return objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269D08468()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id SleepOnboardingFlowTableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingFlowTableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_269D08588()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_269D08628(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_269D086F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor);
  if (v1)
  {
    return *(v1 + 50);
  }

  else
  {
    return 0;
  }
}

id sub_269D08734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

double sub_269D08804(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = v3;
  v34 = a1;
  sub_269D090C8(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D9AAA0();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269D9AAD0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_269D97870();
  v19 = *(v36 - 8);
  v21 = MEMORY[0x28223BE20](v36, v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D64DAA0](0, a2, v21);
  (*(v15 + 104))(v18, *a3, v14);
  sub_269D9AAC0();
  (*(v15 + 8))(v18, v14);
  v35 = *(v5 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSource);
  v39 = v35;
  sub_269C95CC0(0, &qword_28034F080, MEMORY[0x277D10F28], 0);
  sub_269C95CC0(0, &unk_280350870, MEMORY[0x277D11060], 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_269C25520(v37, v40);
    __swift_project_boxed_opaque_existential_1Tm(v40, v40[3]);
    sub_269D98150();

    sub_269C95CC0(0, &qword_280350880, MEMORY[0x277D10D40], 1);
    v24 = swift_dynamicCast();
    v25 = v33;
    v26 = *(v33 + 56);
    if (v24)
    {
      v26(v10, 0, 1, v11);
      v27 = v32;
      (*(v25 + 32))(v32, v10, v11);
      sub_269D9AA80();
      v29 = v28;
      (*(v25 + 8))(v27, v11);
      (*(v19 + 8))(v23, v36);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      return v29;
    }

    v26(v10, 1, 1, v11);
    sub_269D0917C(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {

    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_269D091D8(v37, &qword_28034F078, &unk_280350870, MEMORY[0x277D11060]);
  }

  if ([v34 style])
  {
    v29 = *MEMORY[0x277D76F30];
  }

  else
  {
    v29 = 0.0;
  }

  (*(v19 + 8))(v23, v36);
  return v29;
}

double sub_269D08CB8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double (*a6)(id, uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  v12 = a6(v10, a4);

  return v12;
}

void SleepOnboardingFlowTableViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = sub_269D97830();
  v3 = [a1 cellForRowAtIndexPath_];

  if (!v3 || (v9[0] = v3, sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48), sub_269C95CC0(0, &unk_280350890, MEMORY[0x277D10F68], 1), (swift_dynamicCast() & 1) == 0))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  if (!*(&v7 + 1))
  {
LABEL_6:
    sub_269D091D8(&v6, &qword_280350888, &unk_280350890, MEMORY[0x277D10F68]);
    goto LABEL_7;
  }

  sub_269C25520(&v6, v9);
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_269C2DB5C(v9, &v6);
  sub_269C1B0B8(0, &qword_2803505E0, 0x277D75D18);
  swift_dynamicCast();
  sub_269D98010();

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_7:
  v4 = sub_269D97830();
  [a1 deselectRowAtIndexPath:v4 animated:1];
}

void sub_269D090C8(uint64_t a1)
{
  if (!qword_280350858)
  {
    sub_269D9AAA0();
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_280350858);
    }
  }
}

void sub_269D09120(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269C95CC0(255, a3, a4, 1);
    v5 = sub_269D9AE60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269D0917C(uint64_t a1)
{
  sub_269D090C8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D091D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_269D09120(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t HKSPSleepScheduleRange.conflict(bedtimeComponents:wakeUpComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_269D09440(a1, a2) & 1;
  result = sub_269D09680();
  v6 = v4 | 2;
  if ((result & 1) == 0)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_269D09440(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D09880(a1);
  v10 = [v2 earliestBedtimeIsOnPreviousDay];
  if (v9)
  {
    if ((v10 & 1) == 0)
    {
      LOBYTE(v11) = 1;
      return v11 & 1;
    }
  }

  else if (v10)
  {
    goto LABEL_18;
  }

  v12 = [v2 earliestBedtimeComponents];
  sub_269D97120();

  v13 = sub_269D97150();
  v15 = v14;
  v16 = sub_269D97150();
  v18 = sub_269D68570(v16, v17 & 1, v13, v15 & 1);
  v20 = v19;
  v21 = sub_269D971A0();
  v23 = v22;
  v24 = sub_269D971A0();
  v26 = sub_269D68570(v24, v25 & 1, v21, v23 & 1);
  v28 = v27;
  sub_269D09970(0);
  if ((v20 & 1) == 0)
  {
    if (v18 == 1)
    {
      (*(v5 + 8))(v8, v4);
      LOBYTE(v11) = 1;
      return v11 & 1;
    }

    if (v18)
    {
      if (v18 != -1)
      {
        goto LABEL_21;
      }

      (*(v5 + 8))(v8, v4);
LABEL_18:
      LOBYTE(v11) = 0;
      return v11 & 1;
    }
  }

  (*(v5 + 8))(v8, v4);
  if (v28 & 1) != 0 && (v20)
  {
    goto LABEL_18;
  }

  if (v28)
  {
    v29 = v18;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29 + 1;
  if (v30 < 3)
  {
    v11 = 6u >> (v30 & 7);
    return v11 & 1;
  }

  sub_269D9B270();
  __break(1u);
LABEL_21:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

uint64_t sub_269D09680()
{
  v1 = sub_269D971F0();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 latestWakeUpComponents];
  sub_269D97120();

  v8 = sub_269D97150();
  v10 = v9;
  v11 = sub_269D97150();
  v13 = sub_269D68570(v11, v12 & 1, v8, v10 & 1);
  v15 = v14;
  v16 = sub_269D971A0();
  v18 = v17;
  v19 = sub_269D971A0();
  v21 = sub_269D68570(v19, v20 & 1, v16, v18 & 1);
  v23 = v22;
  sub_269D09970(0);
  if ((v15 & 1) == 0)
  {
    if (v13 == 1)
    {
      (*(v2 + 8))(v6, v1);
      LOBYTE(v26) = 1;
      return v26 & 1;
    }

    if (v13)
    {
      if (v13 != -1)
      {
        goto LABEL_17;
      }

      (*(v2 + 8))(v6, v1);
LABEL_14:
      LOBYTE(v26) = 0;
      return v26 & 1;
    }
  }

  (*(v2 + 8))(v6, v1);
  if (v23 & 1) != 0 && (v15)
  {
    goto LABEL_14;
  }

  if (v23)
  {
    v24 = v13;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 + 1;
  if (v25 < 3)
  {
    v26 = 6u >> (v25 & 7);
    return v26 & 1;
  }

  sub_269D9B270();
  __break(1u);
LABEL_17:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

uint64_t sub_269D09880(uint64_t a1)
{
  v1 = sub_269D97150();
  v3 = v2;
  v4 = sub_269D97150();
  v6 = sub_269D68570(v4, v5 & 1, v1, v3 & 1);
  v8 = v7;
  v9 = sub_269D971A0();
  v11 = v10;
  v12 = sub_269D971A0();
  v14 = sub_269D68570(v12, v13 & 1, v9, v11 & 1);
  v16 = v15;
  sub_269D09970(0);
  if (v8)
  {
LABEL_6:
    if (v16)
    {
      LOBYTE(v17) = 0;
      return v17 & 1;
    }

    goto LABEL_8;
  }

  if (v6 != -1 && v6 != 1)
  {
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v14 = v6;
LABEL_8:
  if ((v14 + 1) < 3)
  {
    v17 = 4u >> ((v14 + 1) & 7);
    return v17 & 1;
  }

LABEL_11:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

void sub_269D09970(uint64_t a1)
{
  if (!qword_280350900)
  {
    type metadata accessor for ComparisonResult(255);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_280350900);
    }
  }
}

uint64_t SleepScheduleComponentsViewModel.includeDayLabelsInHeader.setter(char a1)
{
  *(v1 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 32)) = a1;

  return sub_269D0A9B8();
}

uint64_t type metadata accessor for SleepScheduleComponentsViewModel(uint64_t a1)
{
  result = qword_280C0C048;
  if (!qword_280C0C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SleepScheduleComponentsViewModel.validScheduleRange.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v5 = v4[7];

  *(v2 + v5) = a1;
  if (!a1)
  {
    *(v2 + v4[15]) = 0;
LABEL_8:
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v6 = sub_269D09440(v2 + v4[9], v2 + v4[10]) & 1;
  v7 = sub_269D09680();
  v8 = v6 | 2;
  if ((v7 & 1) == 0)
  {
    v8 = v6;
  }

  *(v2 + v4[15]) = v8;
  if (v8)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_10;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = 0;
  v10 = 1;
LABEL_10:
  *(v2 + v4[13]) = v9;
  *(v2 + v4[14]) = v10;
}

uint64_t SleepScheduleComponentsViewModel.wakeUpComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 44);
  v4 = sub_269D971F0();
  v7 = *(v4 - 8);
  (*(v7 + 24))(v1 + v3, a1, v4);
  sub_269D0A9B8();
  v5 = *(v7 + 8);

  return v5(a1, v4);
}

uint64_t SleepScheduleComponentsViewModel.roundedBedtimeComponents.setter(uint64_t a1)
{
  v2 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v9 = v8[9];
  v10 = sub_269D971F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 24);
  v29 = v10;
  v30 = a1;
  v12(v2 + v9, a1);
  if (!*(v2 + v8[7]))
  {
    *(v2 + v8[15]) = 0;
LABEL_8:
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v13 = sub_269D09440(v2 + v9, v2 + v8[10]) & 1;
  v14 = sub_269D09680();
  v15 = v13 | 2;
  if ((v14 & 1) == 0)
  {
    v15 = v13;
  }

  *(v2 + v8[15]) = v15;
  if (v15)
  {
    v17 = 0;
    v16 = 1;
    goto LABEL_10;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = 0;
  v17 = 1;
LABEL_10:
  *(v2 + v8[13]) = v16;
  *(v2 + v8[14]) = v17;
  sub_269D97720();
  v18 = sub_269D0C704(v7, v2);
  v20 = v19;
  v21 = MEMORY[0x277CC9578];
  sub_269D0CB60(v7, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v22 = (v2 + v8[18]);

  *v22 = v18;
  v22[1] = v20;
  sub_269D97720();
  v23 = sub_269D0C704(v7, v2);
  v25 = v24;
  sub_269D0CB60(v7, &qword_280C0BB60, v21);
  v26 = (v2 + v8[19]);

  *v26 = v23;
  v26[1] = v25;
  sub_269D0A9B8();
  return (*(v11 + 8))(v30, v29);
}

uint64_t SleepScheduleComponentsViewModel.roundedWakeUpComponents.setter(uint64_t a1)
{
  v2 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v9 = v8[10];
  v10 = sub_269D971F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 24);
  v30 = v10;
  v31 = a1;
  v12(v2 + v9, a1);
  v13 = *(v2 + v8[7]);
  v29 = v9;
  if (!v13)
  {
    *(v2 + v8[15]) = 0;
LABEL_8:
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v14 = sub_269D09440(v2 + v8[9], v2 + v9) & 1;
  v15 = sub_269D09680();
  v16 = v14 | 2;
  if ((v15 & 1) == 0)
  {
    v16 = v14;
  }

  *(v2 + v8[15]) = v16;
  if (v16)
  {
    v18 = 0;
    v17 = 1;
    goto LABEL_10;
  }

  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 1;
LABEL_10:
  *(v2 + v8[13]) = v17;
  *(v2 + v8[14]) = v18;
  sub_269D97720();
  v19 = sub_269D0C704(v7, v2);
  v21 = v20;
  v22 = MEMORY[0x277CC9578];
  sub_269D0CB60(v7, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v23 = (v2 + v8[18]);

  *v23 = v19;
  v23[1] = v21;
  sub_269D97720();
  v24 = sub_269D0C704(v7, v2);
  v26 = v25;
  sub_269D0CB60(v7, &qword_280C0BB60, v22);
  v27 = (v2 + v8[19]);

  *v27 = v24;
  v27[1] = v26;
  sub_269D0A9B8();
  return (*(v11 + 8))(v31, v30);
}

uint64_t SleepScheduleComponentsViewModel.init(gregorianCalendar:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v53 = a1;
  v54 = MEMORY[0x277CC9578];
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v52 = &v45 - v5;
  sub_269D0C8FC(0, &unk_28034D9A0, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v45 - v8;
  sub_269D0C8FC(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v45 - v12;
  *a2 = 1;
  v14 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v15 = v14[6];
  v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v16 setDateStyle_];
  [v16 setTimeStyle_];
  *&a2[v15] = v16;
  *&a2[v14[7]] = 0;
  a2[v14[8]] = 0;
  v51 = v14[9];
  v17 = sub_269D977A0();
  v57 = *(v17 - 8);
  v49 = *(v57 + 56);
  v18 = v13;
  v19 = v13;
  v20 = v17;
  v49(v18, 1, 1);
  v55 = sub_269D97810();
  v21 = *(v55 - 8);
  v22 = *(v21 + 56);
  v47 = v21 + 56;
  v22(v9, 1, 1, v55);
  v48 = v22;
  v23 = v19;
  v46 = v19;
  v24 = v9;
  sub_269D971D0();
  v50 = v14[10];
  v56 = v20;
  v25 = v49;
  (v49)(v23, 1, 1, v20);
  v22(v24, 1, 1, v55);
  v26 = v46;
  sub_269D971D0();
  v25(v26, 1, 1, v20);
  v48(v24, 1, 1, v55);
  sub_269D971D0();
  v27 = v14[12];
  *&a2[v27] = [objc_allocWithZone(type metadata accessor for RelativeWeekdayFormatter()) init];
  v28 = v14[13];
  a2[v28] = 0;
  v29 = v14[14];
  a2[v29] = 0;
  v30 = v14[15];
  *&a2[v30] = 0;
  v31 = &a2[v14[16]];
  *v31 = 0;
  v31[1] = 0;
  v32 = &a2[v14[17]];
  *v32 = 0;
  v32[1] = 0;
  v33 = &a2[v14[18]];
  *v33 = 0;
  v33[1] = 0;
  v34 = &a2[v14[19]];
  *v34 = 0;
  v34[1] = 0;
  v35 = v53;
  (*(v57 + 16))(&a2[v14[5]], v53, v56);
  *&a2[v30] = 0;
  a2[v28] = 0;
  a2[v29] = 0;
  sub_269D0A9B8();
  v36 = v52;
  sub_269D97720();
  v37 = sub_269D0C704(v36, a2);
  v39 = v38;
  v40 = v54;
  sub_269D0CB60(v36, &qword_280C0BB60, v54);

  *v33 = v37;
  v33[1] = v39;
  sub_269D97720();
  v41 = sub_269D0C704(v36, a2);
  v43 = v42;
  (*(v57 + 8))(v35, v56);
  sub_269D0CB60(v36, &qword_280C0BB60, v40);

  *v34 = v41;
  v34[1] = v43;
  return result;
}

uint64_t SleepScheduleComponentsViewModel.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 20);
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0A7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D977A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(v5 + 24))(a2 + *(v10 + 20), v9, v4);
  sub_269D0A9B8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t SleepScheduleComponentsViewModel.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 20);
  v4 = sub_269D977A0();
  v7 = *(v4 - 8);
  (*(v7 + 24))(v1 + v3, a1, v4);
  sub_269D0A9B8();
  v5 = *(v7 + 8);

  return v5(a1, v4);
}