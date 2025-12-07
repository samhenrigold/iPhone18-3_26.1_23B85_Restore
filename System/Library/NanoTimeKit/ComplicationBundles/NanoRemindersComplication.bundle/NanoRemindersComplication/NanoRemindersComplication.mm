NSBundle *TTRComplicationBundleGet()
{
  v0 = objc_opt_class();

  return [NSBundle bundleForClass:v0];
}

id TTRBundleGet(uint64_t a1)
{
  if (qword_173E0 != -1)
  {
    sub_7CEC();
  }

  v2 = qword_173D8;

  return v2;
}

void sub_3FFC(id a1)
{
  qword_173D8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id TTRIComplicationSwitcherTimelineModelSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIComplicationSwitcherTimelineModelSource.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model] = [objc_allocWithZone(type metadata accessor for TTRComplicationSwitcherTimelineModel()) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIComplicationSwitcherTimelineModelSource();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t TTRIComplicationSwitcherTimelineModelSource.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t TTRIComplicationSwitcherTimelineModelSource.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIComplicationSwitcherTimelineModelSource.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_67E4;
}

void sub_67E4(void **a1, char a2)
{
  v3 = *a1;
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
  }

  free(v3);
}

Class sub_6900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_7EA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E80();
  (*(v4 + 8))(v6, v3);
  sub_6A88();
  v7.super.isa = sub_7FC0().super.isa;

  return v7.super.isa;
}

id sub_6A50(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_6A88()
{
  result = qword_17240;
  if (!qword_17240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_17240);
  }

  return result;
}

id sub_6AD4()
{
  v0 = sub_7F40();
  v70 = *(v0 - 8);
  v71 = v0;
  __chkstk_darwin(v0);
  v69 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_7E30();
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin(v2);
  v78 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_7EC0();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7ED0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7EB0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_73AC(&qword_17248, qword_C9A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v62 - v14;
  v16 = sub_7EA0();
  v17 = *(v16 - 8);
  v66 = v16;
  v67 = v17;
  v18 = __chkstk_darwin(v16);
  v76 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v62 - v21;
  __chkstk_darwin(v20);
  v77 = &v62 - v23;
  v24 = sub_7F10();
  v72 = *(v24 - 8);
  v73 = v24;
  __chkstk_darwin(v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = TTRComplicationCalendarCreate();
  v79 = v26;
  sub_7EF0();

  result = [objc_opt_self() unmodifiedDate];
  if (result)
  {
    v29 = result;
    v30 = v22;
    sub_7E80();

    v31 = *(v10 + 104);
    v63 = v9;
    v31(v12, enum case for Calendar.MatchingPolicy.nextTime(_:), v9);
    v32 = *(v6 + 104);
    v62 = v5;
    v32(v8, enum case for Calendar.RepeatedTimePolicy.first(_:), v5);
    v34 = v64;
    v33 = v65;
    v35 = v68;
    (*(v64 + 104))(v65, enum case for Calendar.SearchDirection.forward(_:), v68);
    sub_7F00();
    (*(v34 + 8))(v33, v35);
    (*(v6 + 8))(v8, v62);
    (*(v10 + 8))(v12, v63);
    v36 = v66;
    v37 = v67;
    v38 = v30;
    v39 = *(v67 + 8);
    v39(v38, v66);
    v40 = *(v37 + 48);
    if (v40(v15, 1, v36) == 1)
    {
      sub_7E90();
      if (v40(v15, 1, v36) != 1)
      {
        sub_73F4(v15);
      }
    }

    else
    {
      (*(v37 + 32))(v77, v15, v36);
    }

    v41 = objc_opt_self();
    isa = sub_7E70().super.isa;
    v43 = v69;
    sub_7F20();
    v44 = sub_7F30().super.isa;
    (*(v70 + 8))(v43, v71);
    v45 = [v41 rem_dateComponentsWithDate:isa timeZone:v44 isAllDay:0];

    sub_7E20();
    v46 = objc_allocWithZone(TTRComplicationReminderDueDate);
    v47 = sub_7E10().super.isa;
    v48 = sub_7EE0().super.isa;
    v49 = [v46 initWithDateComponents:v47 inCalendar:v48];

    if (!v49)
    {
      v50 = v76;
      sub_7E90();
      v51 = objc_allocWithZone(TTRComplicationReminderDueDate);
      v52 = sub_7E70().super.isa;
      v49 = [v51 initWithDate:v52 precision:0];

      v39(v50, v36);
    }

    v80._countAndFlagsBits = 0x6D6163206B6F6F42;
    v80._object = 0xEE00657469732070;
    v81._object = 0x800000000000C7D0;
    v81._countAndFlagsBits = 0xD000000000000049;
    sub_7F50(v80, v81);
    v53 = v76;
    sub_7E90();
    v54 = objc_allocWithZone(TTRComplicationReminder);
    v55 = v49;
    v56 = sub_7E70().super.isa;
    v57 = sub_7FB0();

    v58 = [v54 initWithCreationDate:v56 dueDate:v55 title:v57];

    v39(v53, v36);
    sub_7E60();
    v59 = objc_allocWithZone(TTRComplicationTimelineModelEntry);
    v60 = sub_7E70().super.isa;
    v61 = [v59 initWithStartDate:v60 overdueCount:0 remainingDueTodayCount:1 representativeReminder:v58];

    v39(v53, v36);
    (*(v74 + 8))(v78, v75);
    v39(v77, v36);
    (*(v72 + 8))(v79, v73);
    return v61;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_73AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_73F4(uint64_t a1)
{
  v2 = sub_73AC(&qword_17248, qword_C9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TTRComplicationRouter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRComplicationRouter();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRComplicationRouter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRComplicationRouter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t TTRComplicationRouter.launchURLForTimeline(withEntryCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_73AC(&qword_172B0, qword_C9C0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_7FA0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = (v11 + 104);
  if (a1)
  {
    v18 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v19 = sub_7F60();
    (*(*(v19 - 8) + 104))(v14, v18, v19);
    (*v17)(v14, enum case for REMNavigationSpecifier.today(_:), v10);
    sub_7F80();
    v20 = sub_7E50();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v7, 1, v20) == 1)
    {
      sub_7F90();
      (*(v11 + 8))(v14, v10);
      result = v22(v7, 1, v20);
      if (result == 1)
      {
        return result;
      }

      v24 = v7;
      return sub_7958(v24);
    }

    (*(v11 + 8))(v14, v10);
    return (*(v21 + 32))(a2, v7, v20);
  }

  else
  {
    v25 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
    v26 = sub_7F70();
    (*(*(v26 - 8) + 104))(v16, v25, v26);
    (*v17)(v16, enum case for REMNavigationSpecifier.root(_:), v10);
    sub_7F80();
    v27 = sub_7E50();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v9, 1, v27) == 1)
    {
      sub_7F90();
      (*(v11 + 8))(v16, v10);
      result = v29(v9, 1, v27);
      if (result == 1)
      {
        return result;
      }

      v24 = v9;
      return sub_7958(v24);
    }

    (*(v11 + 8))(v16, v10);
    return (*(v28 + 32))(a2, v9, v27);
  }
}

uint64_t sub_7958(uint64_t a1)
{
  v2 = sub_73AC(&qword_172B0, qword_C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_7B7C(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "No template generator available for complication family; using empty template generator. {family: %@}", &v4, 0xCu);
}

void sub_7C20(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Unable to determine date for components; returning nil {dateComponents: %@, timeZone: %@}", &v3, 0x16u);
}