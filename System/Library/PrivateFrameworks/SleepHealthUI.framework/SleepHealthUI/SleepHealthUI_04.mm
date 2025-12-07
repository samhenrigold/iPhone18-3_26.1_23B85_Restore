void sub_269C85524(uint64_t a1, void *a2, uint64_t a3)
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
    sub_269C866B0(a2);
  }

  else
  {
  }
}

double sub_269C856D0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0.0; v3; i = 0.0)
  {
    v22 = v1;
    v5 = 0;
    v1 = (v2 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v6 = MEMORY[0x26D651260](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_269D9A8E0();
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v9 = [v7 isHidden];

      if (!v9)
      {
        [v7 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v23.origin.x = v11;
        v23.origin.y = v13;
        v23.size.width = v15;
        v23.size.height = v17;
        i = CGRectGetMinY(v23);
LABEL_15:
        v1 = v22;
        goto LABEL_16;
      }

      ++v5;
      if (v8 == v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v3 = sub_269D9AF50();
  }

LABEL_16:
  v18 = [v1 superview];
  [v1 convertPoint:v18 toView:{0.0, i}];
  v20 = v19;

  return v20;
}

void sub_269C858CC(unint64_t result)
{
  v2 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (v2 >> 62)
  {
    result = sub_269D9AF50();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D651260](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 setHidden_];
  }

LABEL_10:
  v7 = v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message];
  if (v7 != 6)
  {
    if (byte_287A9F278 == v7)
    {
      result = 0;
      goto LABEL_23;
    }

    if (byte_287A9F279 == v7)
    {
      result = 1;
      goto LABEL_23;
    }

    if (byte_287A9F27A == v7)
    {
      result = 2;
      goto LABEL_23;
    }

    if (byte_287A9F27B == v7)
    {
      result = 3;
      goto LABEL_23;
    }

    if (byte_287A9F27C == v7)
    {
      result = 4;
      goto LABEL_23;
    }

    if (byte_287A9F27D == v7)
    {
      result = 5;
LABEL_23:
      if ((v2 & 0xC000000000000001) == 0)
      {
        if (result >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v2 + 8 * result + 32);
        goto LABEL_26;
      }

LABEL_31:
      v8 = MEMORY[0x26D651260](result, v2);
LABEL_26:
      v9 = v8;
      [v8 setHidden_];
    }
  }

  [v1 setNeedsLayout];

  sub_269C85C44();
}

void sub_269C85AA0()
{
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_269D9ACF0();
  if (v1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (v4 >> 62)
  {
    v5 = sub_269D9AF50();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D651260](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    [v7 setFont_];
    [v8 setTextAlignment_];
  }

  while (v5 != v6);
LABEL_13:
  [v0 invalidateIntrinsicContentSize];
  [v0 setNeedsLayout];
}

void sub_269C85C44()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels);
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D651260](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_269D9A8E0();
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v7 = v5;
      v8 = [v7 isHidden];

      if (!v8)
      {
        v9 = MEMORY[0x277D837D0];
        sub_269C865F4(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_269DA0D60;
        *(v10 + 32) = sub_269D9A630();
        *(v10 + 40) = v11;
        *(v10 + 48) = 0x7065656C53;
        *(v10 + 56) = 0xE500000000000000;
        strcpy((v10 + 64), "ScheduleEditor");
        *(v10 + 79) = -18;
        sub_269C49A1C(&unk_287A9F228);
        sub_269C865F4(0, &qword_280C0B4F0, v9, MEMORY[0x277D83940]);
        sub_269C8659C(&qword_280C0AF30, &qword_280C0B4F0, v9, MEMORY[0x277D83958]);
        v12 = sub_269D9A520();
        v14 = v13;

        sub_269C4BEAC(&unk_287A9F248);
        v16 = v14;

        MEMORY[0x26D650930](0x6E6F69747061432ELL, 0xEC00000074786554);

        v15 = sub_269D9A5F0();

        [v7 setAccessibilityIdentifier_];

        return;
      }

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_269C85F54(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 4)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_13;
    }

    if (a1 == 1)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_13;
    }
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_13:
    swift_once();
  }

  return sub_269D972C0();
}

id SleepScheduleClockCaption.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleClockCaption.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepScheduleClockCaption();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for SleepScheduleClockCaption.Message(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepScheduleClockCaption.Message(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_269C86548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034EBE8;
  if (!qword_28034EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EBE8);
  }

  return result;
}

uint64_t sub_269C8659C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269C865F4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269C865F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269C86644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C866B0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = sub_269D9A630();
    v8 = v7;
    if (v6 == sub_269D9A630() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_269D9B280();

      if ((v11 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v12 = [v1 traitCollection];
    v13 = [v12 legibilityWeight];

    if (v13 == [a1 legibilityWeight])
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_11:

  sub_269C85AA0();
}

void sub_269C86828(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (([a1 isFiring] & 1) != 0 || objc_msgSend(a1, sel_isSnoozed))
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280351208);
    v6 = a1;
    v7 = sub_269D98230();
    v8 = sub_269D9AB80();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v9 = 136446466;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, aBlock);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      *(v9 + 14) = v6;
      *v10 = v6;
      v15 = v6;
      _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] dismissing active alarm: %{public}@", v9, 0x16u);
      sub_269C773DC(v10);
      MEMORY[0x26D652460](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v9, -1, -1);
    }

    v16 = [v6 alarmIDString];
    if (!v16)
    {
      sub_269D9A630();
      v16 = sub_269D9A5F0();
    }

    if ([v6 isSnoozed])
    {
      v17 = 6;
    }

    else if ([v6 isSleepAlarm])
    {
      v17 = 5;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v2 dismissAlarmWithIdentifier:v16 dismissAction:v17];

    if (v18)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = ObjectType;
      aBlock[4] = sub_269C87160;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_269C4D5F0;
      aBlock[3] = &block_descriptor_7;
      v20 = _Block_copy(aBlock);
      v21 = v6;

      v22 = [v18 addCompletionBlock_];
      _Block_release(v20);
    }
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v23 = sub_269D98250();
    __swift_project_value_buffer(v23, qword_280351208);
    v24 = a1;
    oslog = sub_269D98230();
    v25 = sub_269D9AB60();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v26 = 136446466;
      v29 = sub_269D9B4D0();
      v31 = sub_269C2EACC(v29, v30, aBlock);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v24;
      *v27 = v24;
      v32 = v24;
      _os_log_impl(&dword_269C18000, oslog, v25, "[%{public}s] attempting to dismiss inactive alarm: %{public}@", v26, 0x16u);
      sub_269C773DC(v27);
      MEMORY[0x26D652460](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D652460](v28, -1, -1);
      MEMORY[0x26D652460](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_269C86CF0(int a1, NSObject *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v6 = sub_269D98250();
    __swift_project_value_buffer(v6, qword_280351208);
    v7 = a2;
    v8 = sub_269D98230();
    v9 = sub_269D9AB60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136446466;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, &v35);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v16 = MEMORY[0x28223BE20](ErrorValue, v34[1]);
      (*(v18 + 16))(v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      v19 = sub_269D9A660();
      v21 = sub_269C2EACC(v19, v20, &v35);

      *(v10 + 14) = v21;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] failed to dismiss active alarm with error: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);

      return;
    }

    v33 = a2;
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v23 = sub_269D98250();
    __swift_project_value_buffer(v23, qword_280351208);
    v24 = a3;
    v34[0] = sub_269D98230();
    v25 = sub_269D9AB80();

    if (os_log_type_enabled(v34[0], v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v26 = 136446466;
      v29 = sub_269D9B4D0();
      v31 = sub_269C2EACC(v29, v30, &v35);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v24;
      *v27 = v24;
      v32 = v24;
      _os_log_impl(&dword_269C18000, v34[0], v25, "[%{public}s] dismissed active alarm: %{public}@", v26, 0x16u);
      sub_269C773DC(v27);
      MEMORY[0x26D652460](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D652460](v28, -1, -1);
      MEMORY[0x26D652460](v26, -1, -1);

      return;
    }

    v33 = v34[0];
  }
}

unint64_t sub_269C87114()
{
  result = qword_280C0ADD0;
  if (!qword_280C0ADD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0ADD0);
  }

  return result;
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_269C8722C()
{
  v1 = v0;
  sub_269C91F14(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v123 = &v111 - v4;
  v124 = sub_269D9ACD0();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v5);
  v120 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C2FB3C(0);
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v121 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C93388(0);
  v118 = *(v10 - 1);
  v119 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v117 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9348C(0);
  v116 = v13;
  v115 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v114 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = result;
  v113 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
  v19 = *&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model];
  v112 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider;
  sub_269C2DB5C(&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider], &aBlock);
  v20 = v131;
  v21 = v132;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v131);
  v22 = v21[3];

  v23 = v22(v20, v21);
  v24 = [v1 traitCollection];
  v25 = [v24 preferredContentSizeCategory];

  v26 = sub_269D9ACF0();
  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  objc_allocWithZone(type metadata accessor for QuickScheduleOverrideViewController.DataSource(0));
  v28 = v1;
  v29 = sub_269C905D4(v18, v19, v23, v26 & 1, sub_269C93588, v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  v30 = *&v28[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource];
  *&v28[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource] = v29;

  v31 = type metadata accessor for QuickScheduleOverrideViewController();
  v134.receiver = v28;
  v134.super_class = v31;
  objc_msgSendSuper2(&v134, sel_viewDidLoad);
  result = [v28 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = result;
  v33 = objc_opt_self();
  v34 = [v33 systemBackgroundColor];
  v35 = [v33 systemGroupedBackgroundColor];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  v37 = objc_allocWithZone(MEMORY[0x277D75348]);
  v132 = sub_269C57E64;
  v133 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v129 = 1107296256;
  v130 = sub_269CC7F6C;
  v131 = &block_descriptor_8;
  v38 = _Block_copy(&aBlock);
  v39 = [v37 initWithDynamicProvider_];
  _Block_release(v38);

  [v32 setBackgroundColor_];

  result = [v28 tableView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v40 = result;
  type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = sub_269D9A5F0();
  [v40 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v42];

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v43 = sub_269D9A5F0();

  [v28 setTitle_];

  v44 = [v28 navigationItem];
  v45 = [v28 title];
  [v44 setTitle_];

  v46 = [v28 navigationItem];
  v47 = [v28 title];
  [v46 setBackButtonTitle_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v48 = [v28 navigationController];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 navigationBar];

      v51 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      [v50 setShadowImage_];
    }

    if ((_UIBarsApplyChromelessEverywhere() & 1) == 0)
    {
      v52 = [v28 navigationController];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 navigationBar];

        [v54 setTranslucent_];
      }
    }

    v55 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    v56 = [v33 systemBackgroundColor];
    v57 = [v33 systemGroupedBackgroundColor];
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    *(v58 + 24) = v57;
    v59 = objc_allocWithZone(MEMORY[0x277D75348]);
    v132 = sub_269C937E4;
    v133 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v129 = 1107296256;
    v130 = sub_269CC7F6C;
    v131 = &block_descriptor_96;
    v60 = _Block_copy(&aBlock);
    v61 = [v59 initWithDynamicProvider_];
    _Block_release(v60);

    [v55 setBackgroundColor_];

    v62 = [v28 navigationController];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 navigationBar];

      [v64 setStandardAppearance_];
    }
  }

  v65 = [v28 navigationItem];
  v66 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v67 = v28;
  v68 = [v66 initWithBarButtonSystemItem:1 target:v67 action:sel_cancelButtonPressed];
  [v65 setLeftBarButtonItem_];

  v69 = [v67 navigationItem];
  v70 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v67 action:sel_saveButtonPressed_];

  [v69 setRightBarButtonItem_];
  v71 = [v67 navigationItem];
  v72 = [v71 rightBarButtonItem];

  v73 = v113;
  if (v72)
  {

    v74 = ScheduleOccurrenceEditModel.isValid.getter();

    [v72 setEnabled_];
  }

  aBlock = *(*(v73 + v1) + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D3B8(0);
  v75 = MEMORY[0x277CBCE20];
  sub_269C93760(&qword_28034EF70, sub_269C2D3B8, MEMORY[0x277CBCE20]);

  v76 = sub_269D98900();

  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_alarmConfigurationObserver] = v76;

  aBlock = *(*(v73 + v1) + 32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D498();
  sub_269C93760(&qword_28034D858, sub_269C2D498, v75);

  v77 = sub_269D98900();

  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_snoozeDurationPickerObserver] = v77;

  aBlock = *(*(v73 + v1) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D430(0);
  sub_269C93760(&qword_28034EF80, sub_269C2D430, v75);

  v78 = sub_269D98900();

  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelEditObserver] = v78;

  v79 = v112;
  sub_269C2DB5C(v1 + v112, &aBlock);
  v80 = v131;
  v81 = v132;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v131);
  v127 = v81[4](v80, v81);
  sub_269C9340C(0, &unk_280C0B130, &qword_280C0AE78, &unk_280C0AE80, 0x277D624C0);
  sub_269C93510();
  v82 = v114;
  sub_269D988F0();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = MEMORY[0x277CBCC18];
  sub_269C93760(&qword_28034EF88, sub_269C9348C, MEMORY[0x277CBCC18]);
  v84 = v116;
  v85 = sub_269D98900();

  (*(v115 + 8))(v82, v84);
  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver] = v85;

  sub_269C2DB5C(v1 + v79, &aBlock);
  v86 = v131;
  v87 = v132;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v131);
  v127 = v87[3](v86, v87);
  sub_269C9340C(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
  sub_269C300C0();
  v88 = v117;
  sub_269D988F0();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C93760(&unk_28034EF90, sub_269C93388, v83);
  v89 = v119;
  v90 = sub_269D98900();

  (*(v118 + 8))(v88, v89);
  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver] = v90;

  aBlock = *(*(v73 + v1) + 72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2FDFC(0);
  v91 = MEMORY[0x277CBCE48];
  sub_269C93760(&qword_28034FF20, sub_269C2FDFC, MEMORY[0x277CBCE48]);

  v92 = sub_269D98900();

  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepDurationGoalObserver] = v92;

  aBlock = *(*(v73 + v1) + 40);
  v93 = MEMORY[0x277CBCE30];
  sub_269C932C8(0, &qword_28034D830, MEMORY[0x277CBCE30]);
  sub_269C936A4(&qword_28034EFA0, &qword_28034D830, v93, v91);
  aBlock = sub_269D988B0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = MEMORY[0x277CBCD88];
  sub_269C932C8(0, &qword_28034D8B0, MEMORY[0x277CBCD88]);
  sub_269C936A4(&qword_28034EFB0, &qword_28034D8B0, v94, MEMORY[0x277CBCD90]);
  v95 = sub_269D98900();

  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_validScheduleRangeObserver] = v95;

  v119 = objc_opt_self();
  v96 = [v119 defaultCenter];
  v97 = v120;
  sub_269D9ACE0();

  v112 = sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  v98 = sub_269D9AC40();
  aBlock = v98;
  v117 = sub_269D9AC30();
  v99 = *(v117 - 1);
  v116 = *(v99 + 56);
  v118 = v99 + 56;
  v100 = v123;
  v116(v123, 1, 1, v117);
  v115 = sub_269C93760(&qword_280C0B4B0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v114 = sub_269C2FC08();
  v101 = v121;
  v102 = v124;
  sub_269D988E0();
  v113 = MEMORY[0x277D85248];
  sub_269C936E8(v100, &qword_280C0AED0, MEMORY[0x277D85248]);

  v122 = *(v122 + 8);
  (v122)(v97, v102);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = sub_269C93760(&qword_280C0B178, sub_269C2FB3C, MEMORY[0x277CBCD60]);
  v103 = v126;
  v104 = sub_269D98900();

  v125 = *(v125 + 8);
  (v125)(v101, v103);
  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_significantTimeChangeObserver] = v104;

  v105 = [v119 defaultCenter];
  sub_269D9ACE0();

  v106 = sub_269D9AC40();
  aBlock = v106;
  v116(v100, 1, 1, v117);
  sub_269D988E0();
  sub_269C936E8(v100, &qword_280C0AED0, v113);

  (v122)(v97, v102);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = sub_269D98900();

  (v125)(v101, v103);
  *&v67[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_willResignActiveObserver] = v107;

  sub_269C91F14(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_269D9EBE0;
  v109 = sub_269D983D0();
  v110 = MEMORY[0x277D74DB8];
  *(v108 + 32) = v109;
  *(v108 + 40) = v110;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AC10();
  swift_unknownObjectRelease();
}

void sub_269C88868(uint64_t a1, uint64_t a2)
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
  if (!Strong)
  {

    return;
  }

  v3 = Strong;
  v4 = [Strong tableView];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  v6 = [v4 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
  v7 = sub_269D9A7E0();

  if (v7 >> 62)
  {
    v8 = sub_269D9AF50();
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v17 = v7;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x26D651260](v9, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
      }

      v20 = v11;
      sub_269C3232C(0, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
      if (swift_dynamicCast())
      {
        sub_269C25520(v18, v21);
        v13 = v22;
        v12 = v23;
        __swift_project_boxed_opaque_existential_1Tm(v21, v22);
        v14 = v8;
        v15 = *(v12 + 8);

        v15(v16, v13, v12);
        v8 = v14;
        v7 = v17;

        __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      else
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        sub_269C91F78(v18);
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_269C88B30(uint64_t a1, uint64_t a2)
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
  if (!Strong)
  {

    return;
  }

  v3 = Strong;
  v4 = [Strong tableView];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  v6 = [v4 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
  v7 = sub_269D9A7E0();

  if (v7 >> 62)
  {
    v8 = sub_269D9AF50();
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v17 = v7;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x26D651260](v9, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
      }

      v20 = v11;
      sub_269C3232C(0, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
      if (swift_dynamicCast())
      {
        sub_269C25520(v18, v21);
        v13 = v22;
        v12 = v23;
        __swift_project_boxed_opaque_existential_1Tm(v21, v22);
        v14 = v8;
        v15 = *(v12 + 8);

        v15(v16, v13, v12);
        v8 = v14;
        v7 = v17;

        __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      else
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        sub_269C91F78(v18);
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_269C88DF8()
{
  v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelHasChanged] = 1;
  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
  {

    sub_269D98750();
  }

  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
  {

    sub_269D98750();
  }

  [v0 setModalInPresentation_];
  v1 = [v0 navigationItem];
  v3 = [v1 rightBarButtonItem];

  if (v3)
  {

    v2 = ScheduleOccurrenceEditModel.isValid.getter();

    [v3 setEnabled_];
  }
}

void sub_269C88F28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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
    v6 = Strong;
    a4();
  }

  else
  {
  }
}

uint64_t sub_269C89008()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Next occurrence did change while editing", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C2DB5C(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider, v14);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v11 + 24))(v10, v11);
  sub_269D987C0();

  sub_269C8B528(v13);

  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

void sub_269C891D8(void **a1, uint64_t a2)
{
  v2 = *a1;
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
    v4 = Strong;
    sub_269C892B4(v2);
  }

  else
  {
  }
}

void sub_269C892B4(void *a1)
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Sleep schedule did change while editing", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C8B528(a1);
}

void sub_269C89428(uint64_t a1, uint64_t a2)
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
  if (!Strong)
  {

    return;
  }

  v3 = Strong;
  v4 = [Strong tableView];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  v6 = [v4 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
  v7 = sub_269D9A7E0();

  if (v7 >> 62)
  {
    v8 = sub_269D9AF50();
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v17 = v7;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x26D651260](v9, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
      }

      v20 = v11;
      sub_269C3232C(0, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
      if (swift_dynamicCast())
      {
        sub_269C25520(v18, v21);
        v13 = v22;
        v12 = v23;
        __swift_project_boxed_opaque_existential_1Tm(v21, v22);
        v14 = v8;
        v15 = *(v12 + 8);

        v15(v16, v13, v12);
        v8 = v14;
        v7 = v17;

        __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      else
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        sub_269C91F78(v18);
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_269C896F0(uint64_t a1, uint64_t a2)
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
    v3 = Strong;
    v4 = [Strong navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {

      v6 = ScheduleOccurrenceEditModel.isValid.getter();

      [v5 setEnabled_];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_269C89840(uint64_t a1, uint64_t a2)
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
    v3 = Strong;
    [Strong handleSignificantTimeChange];
  }

  else
  {
  }
}

void sub_269C89910(uint64_t a1, uint64_t a2)
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
    v3 = Strong;
    sub_269C89D48();
  }

  else
  {
  }
}

void sub_269C899DC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - v8;
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
    v11 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
    v12 = Strong;
    v13 = v11;

    if (!v11)
    {
      __break(1u);
      return;
    }

    v14 = [a1 traitCollection];
    v15 = [v14 preferredContentSizeCategory];

    LOBYTE(v14) = sub_269D9ACF0();
    v13[qword_28034EED0] = v14 & 1;
    if (v13[qword_28034EE88] == 1)
    {

      return;
    }

    v13[qword_28034EE88] = 1;
    sub_269C9021C();
    *(swift_allocObject() + 16) = v13;
    v16 = v13;
    sub_269D983A0();

    (*(v6 + 8))(v9, v5);
  }
}

void sub_269C89D48()
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] App will resign active", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  sub_269D4B714();
}

void sub_269C8A0C4(void *a1)
{
  type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);

    v6 = [v5 alarmConfiguration];
    [v6 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
    swift_dynamicCast();
    v7 = v29[0];
    v8 = [v29[0] isEnabled];
LABEL_5:
    v12 = v8;

    [v4 setOn:v12 animated:1];

    [v4 setDelegate_];
    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v4 = v9;
    v10 = *(*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);

    v11 = [v10 alarmConfiguration];
    [v11 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
    swift_dynamicCast();
    v7 = v29[0];
    v8 = [v29[0] allowsSnooze];
    goto LABEL_5;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model);
    type metadata accessor for AlarmSnoozeDurationModel(0);
    v16 = swift_allocObject();

    sub_269D97A20();
    *(v16 + 16) = v15;
    v17 = OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel;
LABEL_11:
    *&v14[v17] = v16;

    [v14 setNeedsUpdateConfiguration];

    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v14 = v18;
    v19 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model);
    type metadata accessor for AlarmSnoozeDurationPickerModel(0);
    v16 = swift_allocObject();

    sub_269D97A20();
    *(v16 + 16) = v19;
    v17 = OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel;
    goto LABEL_11;
  }

  type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;

    sub_269CF55D0(v22);

    v23 = v21 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
    swift_beginAccess();
    *(v23 + 8) = &off_287AA3590;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v33 = a1;
    sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
    sub_269C3232C(0, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
    v24 = a1;
    if (swift_dynamicCast())
    {
      sub_269C25520(&v32, v29);
      v25 = v30;
      v26 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      v27 = *(v26 + 8);

      v27(v28, v25, v26);

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }
  }
}

void sub_269C8A544()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(*&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model] + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);

  v3 = [v2 alarmConfiguration];
  [v3 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();

  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v4 = objc_opt_self();
  v5 = [v16 toneIdentifier];
  v6 = [v16 vibrationIdentifier];
  v7 = [v4 hksh:v5 alarmPickerWithToneIdentifier:v6 vibrationIdentifier:*&v1[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_tonePickerStyleProvider] styleProvider:?];

  [v7 setDelegate_];
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Presenting tone picker", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  [v1 showViewController:v7 sender:0];
}

id sub_269C8AAE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource;
  v12 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v12)
  {
    sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_269D9EBF0;
    *(v13 + 32) = a2;
    *(v13 + 40) = 0;
    v14 = v12;
    MEMORY[0x26D64DA70](v13);
    sub_269D98380();

    (*(v7 + 8))(v10, v6);
    v16 = v33;
    v15 = v34;
    if (v34 && (v33 == 0xD00000000000002DLL && 0x8000000269DAC0F0 == v34 || (sub_269D9B280() & 1) != 0 || v16 == 0xD00000000000003ELL && 0x8000000269DAC150 == v15 || (sub_269D9B280() & 1) != 0 || v16 == 0xD000000000000029 && 0x8000000269DAC210 == v15 || (sub_269D9B280() & 1) != 0))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  type metadata accessor for EditScheduleLinkTableViewCell();
  v33 = sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  v17 = sub_269D9A660();
  if (v15)
  {
    if (v17 == v16 && v15 == v18)
    {

LABEL_18:

      return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
    }

    v20 = sub_269D9B280();

    if (v20)
    {
      return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
    }
  }

  else
  {
  }

  v21 = *(v3 + v11);
  if (v21)
  {
    v22 = v21;
    sub_269C92518(a2, v23);
    v25 = v24;

    if (v25)
    {
      v26 = sub_269D9A5F0();
      v27 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

      if (v27)
      {
        type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
        v28 = swift_dynamicCastClass();
        if (v28)
        {
          v29 = v28;
          v30 = v27;
          v31 = sub_269D59EA0();
          v32 = sub_269D9A5F0();

          [v31 setText_];

          return v29;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

double sub_269C8B0C0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t))
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
  v12 = a6(a4);

  return v12;
}

void sub_269C8B528(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_269D977A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_269D97580();
  MEMORY[0x28223BE20](v9, v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelHasChanged))
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v15 = sub_269D98250();
    __swift_project_value_buffer(v15, qword_280C0B220);
    v44 = sub_269D98230();
    v16 = sub_269D9AB80();
    if (os_log_type_enabled(v44, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v45[0] = v18;
      *v17 = 136446210;
      v19 = sub_269D9B4D0();
      v21 = sub_269C2EACC(v19, v20, v45);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_269C18000, v44, v16, "[%{public}s] Ignoring occurrence reset since the user has already edited the model.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D652460](v18, -1, -1);
      MEMORY[0x26D652460](v17, -1, -1);
    }

    else
    {
      v23 = v44;
    }
  }

  else
  {
    v43 = v12;
    v44 = v11;
    if (a1)
    {
      v22 = a1;
    }

    else
    {
      if (qword_280C0B218 != -1)
      {
        swift_once();
      }

      v24 = sub_269D98250();
      __swift_project_value_buffer(v24, qword_280C0B220);
      v25 = sub_269D98230();
      v26 = sub_269D9AB80();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v45[0] = v42;
        *v27 = 136446210;
        v28 = sub_269D9B4D0();
        v30 = sub_269C2EACC(v28, v29, v45);
        v41 = v26;
        v31 = v30;

        *(v27 + 4) = v31;
        _os_log_impl(&dword_269C18000, v25, v41, "[%{public}s] Sleep schedule is nil - creating empty schedule.", v27, 0xCu);
        v32 = v42;
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x26D652460](v32, -1, -1);
        MEMORY[0x26D652460](v27, -1, -1);
      }

      v22 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
    }

    v33 = a1;
    sub_269D97570();
    sub_269C2DB5C(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider, v45);
    v34 = v46;
    v35 = v47;
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    v36 = SleepScheduleProviding.sleepScheduleModel.getter(v34, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v37 = sub_269D974B0();
    (*(v5 + 16))(v8, *(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v4);
    v38 = sub_269D976E0();
    (*(v5 + 8))(v8, v4);
    v39 = [v36 generateOverrideOccurrenceForCurrentDate:v37 gregorianCalendar:v38 schedule:v22];

    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v39, 0);

    (*(v43 + 8))(v14, v44);
  }
}

void sub_269C8BA48()
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B220);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v25[0] = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, v25);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Significant time changed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  v8 = [v21 tableView];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v8 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
  v11 = sub_269D9A7E0();

  if (v11 >> 62)
  {
    v12 = sub_269D9AF50();
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_8:
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = v11 & 0xC000000000000001;
        do
        {
          if (v14)
          {
            v15 = MEMORY[0x26D651260](v13, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v13 + 32);
          }

          v24 = v15;
          sub_269C3232C(0, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
          if (swift_dynamicCast())
          {
            sub_269C25520(v22, v25);
            v17 = v26;
            v16 = v27;
            __swift_project_boxed_opaque_existential_1Tm(v25, v26);
            v18 = v12;
            v19 = *(v16 + 8);

            v19(v20, v17, v16);
            v12 = v18;
            v14 = v11 & 0xC000000000000001;

            __swift_destroy_boxed_opaque_existential_1Tm(v25);
          }

          else
          {
            v23 = 0;
            memset(v22, 0, sizeof(v22));
            sub_269C91F78(v22);
          }

          ++v13;
        }

        while (v12 != v13);

        return;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }
}

void sub_269C8BDCC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

void *sub_269C8BE98(uint64_t a1)
{
  v2 = v1;
  v88 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_269D977A0();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v89 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B220);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v95[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, v95);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Save button pressed", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  v15 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
  v16 = *&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model];
  if ((*(v16 + 56) & 1) == 0)
  {
    v17 = *(v16 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    swift_beginAccess();
    if ([v17 isEqual_])
    {
      v18 = sub_269D98230();
      v19 = sub_269D9AB80();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v94[0] = v21;
        *v20 = 136446210;
        v22 = sub_269D9B4D0();
        v24 = sub_269C2EACC(v22, v23, v94);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] save button pressed but no changes were made", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x26D652460](v21, -1, -1);
        MEMORY[0x26D652460](v20, -1, -1);
      }

      v25 = &v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate];
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v27 = result;
        if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
        {

          sub_269D98750();
        }

        if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
        {

          sub_269D98750();
        }

        [v27 cancelWithAnimated_];
        swift_unknownObjectRelease();
LABEL_39:
        *(v25 + 1) = 0;
        return swift_unknownObjectWeakAssign();
      }

      return result;
    }

    v16 = *&v2[v15];
  }

  if (*(v16 + 57) == 1)
  {

    sub_269D987C0();
    v28 = v93[0];
    if (v93[0])
    {
      swift_beginAccess();
      v29 = *(v16 + 48);
      v30 = [v28 overridenOccurrenceForOverrideOccurrence_];

      if (v30)
      {
        v31 = sub_269D98230();
        v32 = sub_269D9AB80();
        v33 = os_log_type_enabled(v31, v32);
        v86 = v30;
        if (v33)
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v93[0] = v35;
          *v34 = 136446210;
          v36 = sub_269D9B4D0();
          v38 = sub_269C2EACC(v36, v37, v93);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_269C18000, v31, v32, "[%{public}s] overriding an existing occurrence, asking if we should save", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          MEMORY[0x26D652460](v35, -1, -1);
          MEMORY[0x26D652460](v34, -1, -1);
        }

        v39 = *&v2[v15];
        (*(v90 + 16))(v89, v39 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v91);
        v40 = *(v39 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
        swift_beginAccess();
        v41 = *(v39 + 48);
        v42 = v40;

        v84 = v42;
        v43 = [v42 changesFromOccurrence_];
        v44 = [v43 hasChangeForPropertyIdentifier_];
        if ([v43 hasChangeForPropertyIdentifier_])
        {
          v45 = v44 | 2;
        }

        else
        {
          v45 = v44;
        }

        v46 = *MEMORY[0x277D62058];
        v47 = [v43 hasChangeForPropertyIdentifier_];

        if (v47)
        {
          v48 = v45 | 4;
        }

        else
        {
          v48 = v45;
        }

        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = ObjectType;
        v87 = v50;
        v85 = v49;

        v51 = sub_269D98230();
        v52 = sub_269D9AB80();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v92 = v54;
          *v53 = 136446210;
          v55 = sub_269D9B4D0();
          v57 = sub_269C2EACC(v55, v56, &v92);

          *(v53 + 4) = v57;
          _os_log_impl(&dword_269C18000, v51, v52, "[%{public}s] Presenting occurrence change alert", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x26D652460](v54, -1, -1);
          MEMORY[0x26D652460](v53, -1, -1);
        }

        v58 = v86;
        v83 = sub_269C1B0B8(0, &unk_28034EF40, 0x277D75110);
        v82 = [v58 weekdays];
        v92 = v48;
        v59 = swift_allocObject();
        v81 = v59;
        swift_unknownObjectWeakInit();
        v60 = swift_allocObject();
        v60[2] = v59;
        v60[3] = sub_269C932A4;
        v61 = v87;
        v60[4] = v87;
        v60[5] = ObjectType;
        v62 = ObjectType;
        v63 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v64 = swift_allocObject();
        v65 = v58;
        v66 = v84;
        v64[2] = v63;
        v64[3] = v66;
        v64[4] = v65;
        v64[5] = sub_269C932A4;
        v64[6] = v61;
        v64[7] = v62;
        v67 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v68 = swift_allocObject();
        *(v68 + 16) = v67;
        *(v68 + 24) = v62;
        swift_retain_n();
        v69 = v66;

        v86 = v65;

        v70 = v89;
        v71 = v69;
        v72 = static UIAlertController.createOccurrenceChangeAlert(calendar:occurrence:weekdays:changes:sender:changeNextHandler:changeAllHandler:cancelHandler:)(v89, v69, v82, &v92, v88, sub_269C932AC, v60, sub_269C932B8, v64, sub_269C937E0, v68);

        [v2 presentViewController:v72 animated:1 completion:0];

        (*(v90 + 8))(v70, v91);
      }
    }

    else
    {
    }
  }

  v73 = sub_269D98230();
  v74 = sub_269D9AB80();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v93[0] = v76;
    *v75 = 136446210;
    v77 = sub_269D9B4D0();
    v79 = sub_269C2EACC(v77, v78, v93);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_269C18000, v73, v74, "[%{public}s] not overriding an existing occurrence, saving", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    MEMORY[0x26D652460](v76, -1, -1);
    MEMORY[0x26D652460](v75, -1, -1);
  }

  v25 = &v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
    {

      sub_269D98750();
    }

    if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
    {

      sub_269D98750();
    }

    v80 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();

    sub_269D86254(v80, 0);
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  return result;
}

void sub_269C8C960(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280C0B220);
    v6 = sub_269D98230();
    v7 = sub_269D9AB80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17[0] = v9;
      *v8 = 136446466;
      v10 = sub_269D9B4D0();
      v12 = sub_269C2EACC(v10, v11, v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1026;
      *(v8 + 14) = a1 & 1;
      _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] saving (deleteOverride:%{BOOL,public}d)", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D652460](v9, -1, -1);
      MEMORY[0x26D652460](v8, -1, -1);
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = v13 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*&v14[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
      {

        sub_269D98750();
      }

      if (*&v14[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
      {

        sub_269D98750();
      }

      v16 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();

      sub_269D86254(v16, a1 & 1);
      swift_unknownObjectRelease();

      *(v15 + 8) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_269C8CBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v7 = sub_269D98250();
    __swift_project_value_buffer(v7, qword_280C0B220);
    v8 = sub_269D98230();
    v9 = sub_269D9AB80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] change next wake up only", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }
  }

  return a3(0);
}

void sub_269C8CD74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(_BOOL8), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_280C0B220);
    v13 = sub_269D98230();
    v14 = sub_269D9AB80();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25[0] = v24;
      *v15 = 136446210;
      v16 = sub_269D9B4D0();
      v18 = a4;
      v19 = a5;
      v20 = a6;
      v21 = sub_269C2EACC(v16, v17, v25);

      *(v15 + 4) = v21;
      a6 = v20;
      a5 = v19;
      a4 = v18;
      _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] change next and future wake ups", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D652460](v24, -1, -1);
      MEMORY[0x26D652460](v15, -1, -1);
    }
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_269C8CF58(a3, a4, a5, a6);
  }
}

void sub_269C8CF58(void *a1, uint64_t a2, void (*a3)(_BOOL8), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_269D971F0();
  v109 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v108 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C91F14(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v95 - v16;
  v18 = sub_269D977A0();
  MEMORY[0x28223BE20](v18, v19);
  MEMORY[0x28223BE20](v20, v21);
  v25 = v95 - v24;
  if (*(*&v5[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model] + 56))
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v26 = sub_269D98250();
    __swift_project_value_buffer(v26, qword_280C0B220);
    v110 = sub_269D98230();
    v27 = sub_269D9AB80();
    if (os_log_type_enabled(v110, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v112 = v29;
      *v28 = 136446210;
      v30 = sub_269D9B4D0();
      v32 = sub_269C2EACC(v30, v31, &v112);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_269C18000, v110, v27, "[%{public}s] isAdding unexpectedly true", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x26D652460](v29, -1, -1);
      MEMORY[0x26D652460](v28, -1, -1);
    }

    else
    {
      v48 = v110;
    }

    return;
  }

  v98 = v23;
  v99 = v11;
  v110 = v22;
  v107 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
  v103 = v17;
  v105 = a1;
  sub_269C2DB5C(&v5[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider], &v112);
  v33 = v114;
  v34 = v115;
  __swift_project_boxed_opaque_existential_1Tm(&v112, v114);
  (*(v34 + 24))(v33, v34);
  sub_269D987C0();

  v35 = v111;
  if (v111)
  {
    v95[1] = a4;
    v96 = a3;
    v97 = ObjectType;
    __swift_destroy_boxed_opaque_existential_1Tm(&v112);
    v36 = [v105 convertToScheduledOccurrenceOnSameDaysAsOccurrence_];
    v102 = v35;
    v101 = [v35 weekdaysWithOccurrences];
    v104 = v5;
    v37 = *&v5[v107];
    v38 = *(v37 + 72);
    v39 = *(v37 + 80);
    LODWORD(v100) = *(v37 + 88);
    v41 = v110 + 2;
    isa = v110[2].isa;
    isa(v25, v37 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v18);
    type metadata accessor for ScheduleOccurrenceEditModel(0);
    v42 = swift_allocObject();
    sub_269C2D3B8(0);
    swift_allocObject();

    *(v42 + 16) = sub_269D98790();
    sub_269C2D430(0);
    swift_allocObject();
    *(v42 + 24) = sub_269D98790();
    sub_269C2D498();
    swift_allocObject();
    *(v42 + 32) = sub_269D98790();
    v112 = 0;
    sub_269C932C8(0, &qword_28034D830, MEMORY[0x277CBCE30]);
    swift_allocObject();
    *(v42 + 40) = sub_269D987F0();
    *(v42 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
    [v36 copy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
    swift_dynamicCast();
    *(v42 + 48) = v111;
    *(v42 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v36;
    *(v42 + 56) = 0;
    v106 = v36;
    v43 = [v106 weekdays];
    *(v42 + 64) = v101 & ~v43;
    *(v42 + 72) = v38;
    *(v42 + 80) = v39;
    *(v42 + 88) = v100;
    v100 = isa;
    v101 = v41;
    isa((v42 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v25, v18);

    sub_269D987C0();
    v44 = v112;
    if (v112)
    {
      v45 = *(v42 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
      v46 = sub_269D976E0();
      v47 = [v44 allowableRangeForModifiedOccurrence:v45 gregorianCalendar:v46];
    }

    else
    {
      v47 = 0;
    }

    v112 = v47;
    sub_269D987D0();

    v57 = v110[1].isa;
    v57(v25, v18);
    if ((ScheduleOccurrenceEditModel.isValid.getter() & 1) == 0)
    {
      if (qword_280C0B218 != -1)
      {
        swift_once();
      }

      v76 = sub_269D98250();
      __swift_project_value_buffer(v76, qword_280C0B220);
      v77 = sub_269D98230();
      v78 = sub_269D9AB80();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v104;
      v81 = v97;
      if (v79)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v112 = v83;
        *v82 = 136446210;
        v84 = sub_269D9B4D0();
        v86 = sub_269C2EACC(v84, v85, &v112);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_269C18000, v77, v78, "[%{public}s] change is invalid, not saving", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x26D652460](v83, -1, -1);
        MEMORY[0x26D652460](v82, -1, -1);
      }

      sub_269C675BC(&v112);
      if (v113 != 1)
      {
        v87 = v112;
        sub_269C1B0B8(0, &unk_28034EF40, 0x277D75110);
        v112 = v87;
        v88 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v89 = swift_allocObject();
        *(v89 + 16) = v88;
        *(v89 + 24) = v81;
        v90 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v91 = swift_allocObject();
        *(v91 + 16) = v90;
        *(v91 + 24) = v81;

        v92 = sub_269C9EBF8(&v112, v105, sub_269C93364, v89, sub_269C9336C, v91);

        [v80 presentViewController:v92 animated:1 completion:0];
      }

      goto LABEL_36;
    }

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v58 = sub_269D98250();
    __swift_project_value_buffer(v58, qword_280C0B220);
    v59 = sub_269D98230();
    v60 = sub_269D9AB80();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v112 = v62;
      *v61 = 136446210;
      v63 = sub_269D9B4D0();
      v65 = sub_269C2EACC(v63, v64, &v112);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_269C18000, v59, v60, "[%{public}s] change is valid, updating the model and saving", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x26D652460](v62, -1, -1);
      MEMORY[0x26D652460](v61, -1, -1);
    }

    v66 = v102;
    v67 = v103;
    v68 = [v102 overrideOccurrence];
    if (v68)
    {
      v69 = v68;
      v70 = v98;
      v100(v98, *&v104[v107] + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v18);
      v71 = [v69 wakeUpComponents];
      v72 = v108;
      sub_269D97120();

      sub_269D97720();
      (*(v109 + 8))(v72, v99);
      v57(v70, v18);
      v73 = sub_269D97580();
      v74 = *(v73 - 8);
      if ((*(v74 + 48))(v67, 1, v73) != 1)
      {
        sub_269D974F0();
        v94 = v93;

        (*(v74 + 8))(v67, v73);
        v75 = v94 > 0.0;
        goto LABEL_35;
      }

      sub_269C936E8(v67, &qword_280C0BB60, MEMORY[0x277CC9578]);
    }

    v75 = 0;
LABEL_35:
    *&v104[v107] = v42;

    v96(v75);

LABEL_36:

    return;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v112);
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v49 = sub_269D98250();
  __swift_project_value_buffer(v49, qword_280C0B220);
  v50 = sub_269D98230();
  v51 = sub_269D9AB80();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v112 = v53;
    *v52 = 136446210;
    v54 = sub_269D9B4D0();
    v56 = sub_269C2EACC(v54, v55, &v112);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_269C18000, v50, v51, "[%{public}s] no current sleep schedule", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x26D652460](v53, -1, -1);
    MEMORY[0x26D652460](v52, -1, -1);
  }
}

void sub_269C8DCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v4 = sub_269D98250();
    __swift_project_value_buffer(v4, qword_280C0B220);
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      v9 = sub_269D9B4D0();
      v11 = sub_269C2EACC(v9, v10, v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] edit in health", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = v12 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*&v13[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
      {

        sub_269D98750();
      }

      if (*&v13[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
      {

        sub_269D98750();
      }

      sub_269D86240();
      swift_unknownObjectRelease();
      *(v14 + 8) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_269C8DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v4 = sub_269D98250();
    __swift_project_value_buffer(v4, qword_280C0B220);
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      v9 = sub_269D9B4D0();
      v11 = sub_269C2EACC(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] cancel", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }
  }
}

id sub_269C8E164(id a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver))
  {

    sub_269D98750();
  }

  if (*(a3 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver))
  {

    sub_269D98750();
  }

  return [a1 cancelWithAnimated_];
}

void sub_269C8E1F8(uint64_t a1)
{
  v23 = a1;
  sub_269C91F14(0, &qword_28034D998, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - v3;
  v5 = sub_269D97870();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource;
  v11 = (v10 + 48);
  v24 = (v10 + 8);
  v25 = (v10 + 32);
  v12 = 2;
  v13 = &off_287A9FCC8;
  do
  {
    v14 = *&v26[v9];
    if (!v14)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v15 = *v13;
    v27 = *(v13 - 1);
    v28 = v15;

    v16 = v14;
    sub_269D983B0();

    if ((*v11)(v4, 1, v5) == 1)
    {

      sub_269C936E8(v4, &qword_28034D998, MEMORY[0x277CC9AF8]);
    }

    else
    {
      (*v25)(v8, v4, v5);
      v17 = [v26 tableView];
      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = v17;

      v19 = sub_269D97830();
      v20 = [v18 cellForRowAtIndexPath_];

      if (v20)
      {
        type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(0);
        if (swift_dynamicCastClass())
        {
          sub_269CF5D70(v23);
        }
      }

      (*v24)(v8, v5);
    }

    v13 += 2;
    --v12;
  }

  while (v12);
  swift_arrayDestroy();
  v21 = [v26 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setEnabled_];
  }
}

uint64_t sub_269C8E53C(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19[-1] - v9;
  v11 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v12 = v11[1];
  v18 = *v11;
  v19[0] = v12;
  *(v19 + 11) = *(v11 + 27);
  v13 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v14 = *(v13 + 144);

  sub_269D1E794(v14);
  v15 = v11[1];
  v18 = *v11;
  v19[0] = v15;
  *(v19 + 11) = *(v11 + 27);
  sub_269D1EA14(*(v13 + 144));
  ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();

  v16 = *(v3 + 8);
  v16(v6, v2);
  return (v16)(v10, v2);
}

BOOL sub_269C8E704(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);

  sub_269CF3E6C(v6);
  if (v7)
  {
    v8 = ScheduleOccurrenceEditModel.isValid(wakeUpComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v6, 3600.0, 72000.0, 300.0);
  }

  else
  {
    v8 = ScheduleOccurrenceEditModel.isValid(bedtimeComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v6, 3600.0, 72000.0, 300.0);
  }

  v9 = v8;

  (*(v3 + 8))(v6, v2);
  return v9;
}

void sub_269C8E84C(void *a1)
{
  v2 = v1;
  v191 = v2;
  swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_269C91F14(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v183 = &v176 - v7;
  sub_269C91F14(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v4);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v182 = &v176 - v10;
  v11 = sub_269D971F0();
  v190 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v180 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v181 = &v176 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v187 = &v176 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v185 = &v176 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v176 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v176 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v179 = &v176 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v186 = &v176 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v184 = &v176 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v176 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v176 - v46;
  MEMORY[0x28223BE20](v48, v49);
  v188 = &v176 - v50;
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v51 = sub_269D98250();
  __swift_project_value_buffer(v51, qword_280C0B220);
  v52 = a1;
  v53 = sub_269D98230();
  v54 = sub_269D9AB50();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v178 = v47;
    v56 = v55;
    v57 = swift_slowAlloc();
    v177 = v43;
    v58 = v57;
    v195 = v57;
    *v56 = 136446722;
    v59 = sub_269D9B4D0();
    v61 = sub_269C2EACC(v59, v60, &v195);
    v189 = v30;
    v62 = v61;

    *(v56 + 4) = v62;
    *(v56 + 12) = 2080;
    LOBYTE(v192[0]) = *(v52 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
    v63 = sub_269D9A660();
    v65 = sub_269C2EACC(v63, v64, &v195);

    *(v56 + 14) = v65;
    *(v56 + 22) = 2080;
    v66 = v188;
    sub_269CF3E6C(v188);
    sub_269C93760(&unk_28034D9B0, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v67 = sub_269D9B230();
    v69 = v68;
    (*(v190 + 8))(v66, v11);
    v70 = sub_269C2EACC(v67, v69, &v195);
    v30 = v189;

    *(v56 + 24) = v70;
    _os_log_impl(&dword_269C18000, v53, v54, "[%{public}s] AX %s changed to %s", v56, 0x20u);
    swift_arrayDestroy();
    v71 = v58;
    v43 = v177;
    MEMORY[0x26D652460](v71, -1, -1);
    v72 = v56;
    v47 = v178;
    MEMORY[0x26D652460](v72, -1, -1);
  }

  v73 = *(v52 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
  v74 = *&v191[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model];

  if (v73)
  {
    sub_269CF3E6C(v30);
    v75 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
    v76 = [*(v74 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) bedtimeComponents];
    sub_269D97120();

    sub_269D97150();
    if (v77)
    {

      v78 = *(v190 + 8);
      v78(v26, v11);
      v78(v30, v11);
    }

    else
    {
      v189 = v30;
      sub_269D971A0();
      v81 = v80;
      v82 = v190;
      v83 = *(v190 + 8);
      v83(v26, v11);
      if (v81)
      {

        v83(v189, v11);
      }

      else
      {
        v176 = v11;
        v86 = v189;
        sub_269D97150();
        if (v87 & 1) != 0 || (sub_269D971A0(), (v88))
        {

          v83(v86, v176);
        }

        else
        {
          v96 = v185;
          v97 = v176;
          (*(v82 + 16))(v185, v86, v176);
          v98 = sub_269D97150();
          LODWORD(v190) = v99;
          v100 = v98;
          v101 = sub_269D971A0();
          v103 = v102;
          v83(v96, v97);
          v104 = v100 * 60.0 * 60.0;
          if (v190)
          {
            v104 = 0.0;
          }

          v105 = v101 * 60.0;
          if (v103)
          {
            v105 = 0.0;
          }

          sub_269D225A8(round((v104 + v105) / 300.0) * 300.0, &v195);
          v190 = v195;
          v188 = v196;
          v106 = [*(v74 + v75) bedtimeComponents];
          v107 = v187;
          sub_269D97120();

          v108 = sub_269D97150();
          v110 = v86;
          if (v109)
          {
            v111 = 0;
          }

          else
          {
            v111 = v108;
          }

          v112 = sub_269D971A0();
          v114 = v113;
          v115 = v107;
          v116 = v176;
          v83(v115, v176);
          v117 = (v114 & 1) == 0;
          v118 = v188;
          if (v117)
          {
            v119 = v112;
          }

          else
          {
            v119 = 0;
          }

          v120 = v190;
          sub_269C679CC(v111, v119, v190, v188);
          if (v121 <= 72000.0)
          {
            if (v121 >= 3600.0)
            {
              v146 = [*(v74 + v75) bedtimeComponents];
              v147 = v181;
              sub_269D97120();

              if (v118 == 60 && __OFADD__(v120, 1))
              {
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              v148 = sub_269D977A0();
              (*(*(v148 - 8) + 56))(v182, 1, 1, v148);
              v149 = sub_269D97810();
              (*(*(v149 - 8) + 56))(v183, 1, 1, v149);
              v150 = v180;
              sub_269D971D0();
              ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();

              v151 = v150;
              v152 = v176;
              v83(v151, v176);
              v83(v147, v152);
              v122 = v189;
              v123 = v152;
            }

            else
            {

              v122 = v189;
              v123 = v176;
            }
          }

          else
          {

            v122 = v110;
            v123 = v116;
          }

          v83(v122, v123);
        }
      }
    }
  }

  else
  {
    sub_269CF3E6C(v47);
    sub_269D97150();
    if (v79)
    {

      (*(v190 + 8))(v47, v11);
    }

    else
    {
      sub_269D971A0();
      v84 = v190;
      if (v85)
      {

        (*(v84 + 8))(v47, v11);
      }

      else
      {
        v89 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
        v90 = [*(v74 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) wakeUpComponents];
        sub_269D97120();

        sub_269D97150();
        if (v91)
        {

          v92 = *(v84 + 8);
          v92(v43, v11);
          v92(v47, v11);
        }

        else
        {
          sub_269D971A0();
          v94 = v93;
          v95 = *(v84 + 8);
          v95(v43, v11);
          if (v94)
          {

            v95(v47, v11);
          }

          else
          {
            v124 = v184;
            (*(v84 + 16))(v184, v47, v11);
            v125 = sub_269D97150();
            LODWORD(v190) = v126;
            v127 = v125;
            v128 = sub_269D971A0();
            v189 = v84 + 8;
            v130 = v129;
            v95(v124, v11);
            v131 = v127 * 60.0 * 60.0;
            if (v190)
            {
              v131 = 0.0;
            }

            v132 = v128 * 60.0;
            if (v130)
            {
              v132 = 0.0;
            }

            sub_269D225A8(round((v131 + v132) / 300.0) * 300.0, &v195);
            v133 = v195;
            v190 = v196;
            v187 = v89;
            v134 = [*(v74 + v89) wakeUpComponents];
            v135 = v186;
            sub_269D97120();

            v136 = sub_269D97150();
            if (v137)
            {
              v138 = 0;
            }

            else
            {
              v138 = v136;
            }

            v139 = sub_269D971A0();
            v140 = v95;
            v142 = v141;
            v140(v135, v11);
            if (v142)
            {
              v143 = 0;
            }

            else
            {
              v143 = v139;
            }

            v144 = v190;
            sub_269C679CC(v133, v190, v138, v143);
            if (v145 <= 72000.0 && v145 >= 3600.0)
            {
              if (v144 == 60 && __OFADD__(v133, 1))
              {
                goto LABEL_72;
              }

              v171 = sub_269D977A0();
              (*(*(v171 - 8) + 56))(v182, 1, 1, v171);
              v172 = sub_269D97810();
              (*(*(v172 - 8) + 56))(v183, 1, 1, v172);
              v173 = v179;
              sub_269D971D0();
              v174 = [*&v187[v74] wakeUpComponents];
              v175 = v188;
              sub_269D97120();

              ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();

              v140(v175, v11);
              v140(v173, v11);
              v140(v47, v11);
            }

            else
            {

              v140(v47, v11);
            }
          }
        }
      }
    }
  }

  v153 = [v191 tableView];
  if (v153)
  {
    v154 = v153;
    v155 = [v153 visibleCells];

    v156 = sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
    v157 = sub_269D9A7E0();

    if (v157 >> 62)
    {
      v158 = sub_269D9AF50();
      if (v158)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v158 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v158)
      {
LABEL_56:
        if (v158 >= 1)
        {
          v159 = 0;
          v190 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
          v160 = v157 & 0xC000000000000001;
          v161 = &protocol descriptor for ScheduleOccurrenceEditModelConsuming;
          v162 = &qword_28034EF00;
          v188 = v158;
          v189 = v157 & 0xC000000000000001;
          v187 = v156;
          do
          {
            if (v160)
            {
              v163 = MEMORY[0x26D651260](v159, v157);
            }

            else
            {
              v163 = *(v157 + 8 * v159 + 32);
            }

            v194 = v163;
            sub_269C3232C(0, v162, v161);
            if (swift_dynamicCast())
            {
              sub_269C25520(v192, &v195);
              v165 = v197;
              v164 = v198;
              __swift_project_boxed_opaque_existential_1Tm(&v195, v197);
              v166 = v162;
              v167 = v161;
              v168 = v157;
              v169 = *(v164 + 8);

              v169(v170, v165, v164);
              v157 = v168;
              v161 = v167;
              v162 = v166;
              v158 = v188;
              v160 = v189;

              __swift_destroy_boxed_opaque_existential_1Tm(&v195);
            }

            else
            {
              v193 = 0;
              memset(v192, 0, sizeof(v192));
              sub_269C91F78(v192);
            }

            ++v159;
          }

          while (v158 != v159);
          goto LABEL_69;
        }

        __break(1u);
        goto LABEL_71;
      }
    }

LABEL_69:

    return;
  }

LABEL_73:
  __break(1u);
}

void sub_269C8F900(void *a1)
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = a1;
  v4 = sub_269D98230();
  v5 = sub_269D9AB50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    [v3 value];
    v11 = sub_269D9A950();
    v13 = sub_269C2EACC(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Volume changed to %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  [v3 value];
  ScheduleOccurrenceEditModel.alarmVolume.setter(v14);

  sub_269D4B270();
}

void sub_269C8FB18(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

void sub_269C8FC04(uint64_t result, char a2)
{
  if (result)
  {
    type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
    if (swift_dynamicCastClass())
    {

      ScheduleOccurrenceEditModel.alarmEnabled.setter(a2 & 1);

      sub_269D4B714();
    }

    else
    {
      type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
      if (swift_dynamicCastClass())
      {

        ScheduleOccurrenceEditModel.allowsSnooze.setter(a2 & 1);
      }
    }
  }
}

uint64_t sub_269C8FFD4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(uint64_t, uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v12 = sub_269D9A630();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = a3;
  v15 = a1;
  sub_269C92DF0(v12, a4, a6, a7);
}

uint64_t type metadata accessor for QuickScheduleOverrideViewController.DataSource(uint64_t a1)
{
  result = qword_28034EEE8;
  if (!qword_28034EEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269C90138(uint64_t a1)
{
  result = sub_269D977A0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_269C9021C()
{
  sub_269D98350();
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  sub_269D98310();
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result healthAppHidden];

    if ((v3 & 1) == 0)
    {
      sub_269C9364C(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_269D9EBE0;
      type metadata accessor for EditScheduleLinkTableViewCell();
      sub_269C93238(0);
      sub_269C93258(0, &qword_28034EF38, sub_269C93238);
      *(v4 + 32) = sub_269D9A660();
      *(v4 + 40) = v5;
      sub_269D98310();

      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_269D9EBE0;
      *(v6 + 32) = sub_269D9A660();
      *(v6 + 40) = v7;
      sub_269D98300();
    }

    sub_269D98310();
    sub_269D98300();
    result = sub_269D98300();
    if (*(v0 + qword_28034EEB0) == 1)
    {
      sub_269D98310();
      result = sub_269D98300();
      if (*(v0 + qword_28034EEB8) == 1)
      {
        result = sub_269D98300();
        if (*(v0 + qword_28034EEC0) == 1)
        {
          return sub_269D98300();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269C90534(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_28034EE88) = 0;
}

char *sub_269C905D4(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v65 = a6;
  v66 = a7;
  v59 = a5;
  v60 = a1;
  v58 = a4;
  v64 = a3;
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v61 = v57 - v11;
  *(v7 + qword_28034EE70) = 0;
  *(v7 + qword_28034EE78) = 0;
  *(v7 + qword_28034EE80) = 0;
  *(v7 + qword_28034EE88) = 0;
  v57[1] = qword_28034EE90;
  swift_unknownObjectWeakInit();
  v12 = (v7 + qword_28034EEC8);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v14 = [*(a2 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v14 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v15 = v67;
  v16 = [v67 isEnabled];

  *(v7 + qword_28034EEB0) = v16;
  v17 = [*(a2 + v13) alarmConfiguration];
  [v17 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v18 = v67;
  LOBYTE(v17) = [v67 allowsSnooze];

  *(v7 + qword_28034EEB8) = v17;
  v19 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  *(v7 + qword_28034EEC0) = *(a2 + v19);
  *(v7 + qword_28034EE98) = v64;
  *(v7 + qword_28034EEA0) = *(a2 + 88);
  v20 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar;
  v21 = qword_28034EEA8;
  v22 = sub_269D977A0();
  (*(*(v22 - 8) + 16))(v7 + v21, a2 + v20, v22);
  *(v7 + qword_28034EED0) = v58;
  v23 = *v12;
  v24 = v12[1];
  v25 = v65;
  *v12 = v59;
  v12[1] = v25;

  sub_269C93228(v23, v24);
  swift_unknownObjectWeakAssign();
  v26 = v60;
  v27 = sub_269D98370();
  sub_269D98390();
  type metadata accessor for ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = sub_269D9A5F0();
  [v26 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v29];

  v30 = sub_269D9A5F0();
  [v26 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v30];

  type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v31 = swift_getObjCClassFromMetadata();
  v32 = sub_269D9A5F0();
  [v26 registerClass:v31 forCellReuseIdentifier:v32];

  v33 = sub_269D9A5F0();
  [v26 registerClass:v31 forCellReuseIdentifier:v33];

  type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  v34 = swift_getObjCClassFromMetadata();
  v35 = sub_269D9A5F0();
  [v26 registerClass:v34 forCellReuseIdentifier:v35];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v36 = swift_getObjCClassFromMetadata();
  v37 = sub_269D9A5F0();
  [v26 registerClass:v36 forCellReuseIdentifier:v37];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v38 = swift_getObjCClassFromMetadata();
  v39 = sub_269D9A5F0();
  [v26 registerClass:v38 forCellReuseIdentifier:v39];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v40 = swift_getObjCClassFromMetadata();
  v41 = sub_269D9A5F0();
  [v26 registerClass:v40 forCellReuseIdentifier:v41];

  type metadata accessor for ScheduleOccurrenceAlarmSoundTableViewCell();
  v42 = swift_getObjCClassFromMetadata();
  v43 = sub_269D9A5F0();
  [v26 registerClass:v42 forCellReuseIdentifier:v43];

  type metadata accessor for ScheduleOccurrenceAlarmVolumeTableViewCell();
  v44 = swift_getObjCClassFromMetadata();
  v45 = sub_269D9A5F0();
  [v26 registerClass:v44 forCellReuseIdentifier:v45];

  type metadata accessor for EditScheduleLinkTableViewCell();
  v46 = swift_getObjCClassFromMetadata();
  v67 = sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  sub_269D9A660();
  v47 = sub_269D9A5F0();

  [v26 registerClass:v46 forCellReuseIdentifier:v47];

  v48 = v61;
  sub_269C9021C();
  sub_269D983A0();
  (*(v62 + 8))(v48, v63);
  v67 = *(a2 + 16);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v50;
  sub_269C2D3B8(0);
  v52 = MEMORY[0x277CBCE20];
  sub_269C93760(&qword_28034EF70, sub_269C2D3B8, MEMORY[0x277CBCE20]);

  v53 = sub_269D98900();

  *&v27[qword_28034EE70] = v53;

  v67 = *(a2 + 32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D498();
  sub_269C93760(&qword_28034D858, sub_269C2D498, v52);

  v54 = sub_269D98900();

  *&v27[qword_28034EE78] = v54;

  v67 = v64;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_269C9340C(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
  sub_269C300C0();
  v55 = sub_269D98900();

  *&v27[qword_28034EE80] = v55;

  return v27;
}

id sub_269C90F5C(void *a1, uint64_t a2, uint64_t *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269D9A5F0();
  v5 = sub_269D97830();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  return v6;
}

void sub_269C9104C(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
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
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    sub_269C919E0(v3, v6);
  }

  else
  {
  }
}

void sub_269C91154(unsigned __int8 *a1, uint64_t a2)
{
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v11 = Strong;
  v12 = *(Strong + qword_28034EEC0);
  *(Strong + qword_28034EEC0) = v9;
  if (v9 != v12)
  {
    sub_269C9021C();
    sub_269D983A0();

    (*(v5 + 8))(v8, v4);
LABEL_6:

    return;
  }
}

uint64_t sub_269C91314(uint64_t a1, uint64_t a2)
{
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
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
    v9 = Strong;
    sub_269C9021C();
    sub_269D983A0();

    (*(v4 + 8))(v7, v3);
  }
}

id sub_269C914EC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
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
  a6(a4);
  v13 = v12;

  if (v13)
  {
    v14 = sub_269D9A5F0();
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

void *sub_269C91608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_269C499A4(0, &unk_28034EF10, MEMORY[0x277D74CC8]);
  v6 = sub_269D983C0();
  v7 = v6(a1, a2);
  type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
    v10 = v8;
    swift_beginAccess();
    v11 = *(v10 + v9);
    v12 = &v11[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model];
    swift_beginAccess();
    v12[*(type metadata accessor for SleepScheduleComponentsViewModel(0) + 32)] = 1;
    v13 = v7;
    v14 = v11;
    sub_269D0A9B8();
    swift_endAccess();
    sub_269C6A388();

    sub_269D06118((*(v3 + qword_28034EED0) & 1) == 0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = *(v10 + v9);

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  else
  {
    type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(0);
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      goto LABEL_6;
    }

    v18 = v17 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
    swift_beginAccess();
    *(v18 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 32)) = 1;
    Strong = v7;
    sub_269D0A9B8();
    swift_endAccess();
  }

LABEL_6:
  v19 = v3 + qword_28034EEC8;
  v20 = *(v3 + qword_28034EEC8);
  if (v20)
  {
    v21 = *(v19 + 8);

    v20(v7);
    sub_269C93228(v20, v21);
  }

  return v7;
}

id sub_269C91858(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  v11 = a3;
  v12 = a1;
  v13 = sub_269C91608(v11, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

id sub_269C919E0(void *a1, void *a2)
{
  v29 = a2;
  sub_269C91F14(0, &qword_28034D998, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - v6;
  v8 = sub_269D97870();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v28 - v16;
  v18 = qword_28034EEB0;
  v19 = *(v2 + qword_28034EEB0);
  *(v2 + v18) = [a1 isEnabled];
  v20 = qword_28034EEB8;
  v21 = *(v2 + qword_28034EEB8);
  result = [a1 allowsSnooze];
  *(v2 + v20) = result;
  if (v19 != *(v2 + v18) || ((v21 ^ result) & 1) != 0)
  {
    sub_269C9021C();
    sub_269D983A0();
    result = (*(v13 + 8))(v17, v12);
    if ((v19 & 1) == 0)
    {
      v32 = 0xD00000000000002ALL;
      v33 = 0x8000000269DAC270;
      sub_269D983B0();
      v24 = v30;
      v23 = v31;
      if ((*(v30 + 48))(v7, 1, v31) == 1)
      {
        return sub_269C936E8(v7, &qword_28034D998, MEMORY[0x277CC9AF8]);
      }

      else
      {
        v25 = v28;
        (*(v24 + 32))(v28, v7, v23);
        v26 = v29;
        if (v29)
        {
          v27 = sub_269D97830();
          [v26 scrollToRowAtIndexPath:v27 atScrollPosition:0 animated:1];
        }

        return (*(v24 + 8))(v25, v23);
      }
    }
  }

  return result;
}

uint64_t sub_269C91D1C()
{

  MEMORY[0x26D652550](v0 + qword_28034EE90);

  v1 = qword_28034EEA8;
  v2 = sub_269D977A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_28034EEC8);
  v4 = *(v0 + qword_28034EEC8 + 8);

  return sub_269C93228(v3, v4);
}

id sub_269C91E04(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_269C91E3C(uint64_t a1)
{

  MEMORY[0x26D652550](a1 + qword_28034EE90);

  v2 = qword_28034EEA8;
  v3 = sub_269D977A0();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_28034EEC8);
  v5 = *(a1 + qword_28034EEC8 + 8);

  return sub_269C93228(v4, v5);
}

void sub_269C91F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C91F78(uint64_t a1)
{
  sub_269C92000(0, &unk_28034DC20, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming, sub_269C3232C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C92000(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_269D9AE60();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C9205C()
{
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_alarmConfigurationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_snoozeDurationPickerObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelEditObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_significantTimeChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepDurationGoalObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_validScheduleRangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_willResignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelHasChanged) = 0;
  v1 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_tonePickerStyleProvider;
  v2 = type metadata accessor for TonePickerStyleProvider();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_vibrationPickerStyleProvider;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource) = 0;
  sub_269D9B100();
  __break(1u);
}

void sub_269C921A0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  sub_269D98380();

  if (v9 && (v8 == 0xD000000000000029 && 0x8000000269DAC210 == v9 || (sub_269D9B280() & 1) != 0))
  {

    sub_269C8A544();
    return;
  }

  type metadata accessor for EditScheduleLinkTableViewCell();
  sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  v4 = sub_269D9A660();
  if (!v9)
  {

    return;
  }

  if (v4 == v8 && v9 == v5)
  {
  }

  else
  {
    v6 = sub_269D9B280();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v7 = v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver))
    {

      sub_269D98750();
    }

    if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver))
    {

      sub_269D98750();
    }

    sub_269D86240();
    swift_unknownObjectRelease();
    *(v7 + 8) = 0;
    swift_unknownObjectWeakAssign();
  }
}

void sub_269C9238C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v2)
  {
    v3 = v2;
    sub_269D98380();

    if (v7 && (v6 == 0xD000000000000029 && 0x8000000269DAC210 == v7 || (sub_269D9B280() & 1) != 0 || v6 == 0xD000000000000025 && 0x8000000269DAC320 == v7 || (sub_269D9B280() & 1) != 0))
    {
      goto LABEL_13;
    }

    type metadata accessor for EditScheduleLinkTableViewCell();
    sub_269C93238(0);
    sub_269C93258(0, &qword_28034EF38, sub_269C93238);
    v4 = sub_269D9A660();
    if (!v7)
    {
      goto LABEL_13;
    }

    if (v4 == v6 && v7 == v5)
    {

LABEL_13:

      return;
    }

    sub_269D9B280();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269C92518(uint64_t a1, uint64_t a2)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269D9EBF0;
  *(v8 + 32) = a1;
  *(v8 + 40) = 0;
  MEMORY[0x26D64DA70]();
  sub_269D98380();
  (*(v4 + 8))(v7, v3);
  if (!v12)
  {
    return 0;
  }

  if (v11 != 0xD00000000000002BLL || 0x8000000269DAC120 != v12)
  {
    v9 = sub_269D9B280();

    if (v9)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

id sub_269C9271C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v9)
  {
    sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_269D9EBF0;
    *(v10 + 32) = a1;
    *(v10 + 40) = 0;
    v11 = v9;
    MEMORY[0x26D64DA70](v10);
    sub_269D98380();

    (*(v5 + 8))(v8, v4);
    v12 = v17;
    if (v17)
    {
      v13 = v16;
      if (v16 == 0xD00000000000002DLL && 0x8000000269DAC0F0 == v17 || (sub_269D9B280() & 1) != 0 || v13 == 0xD00000000000003ELL && 0x8000000269DAC150 == v12 || (sub_269D9B280() & 1) != 0 || v13 == 0xD00000000000002BLL && 0x8000000269DAC120 == v12)
      {

        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }

      v15 = sub_269D9B280();

      if (v15)
      {
        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }
    }
  }

  return 0;
}

double sub_269C9295C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v9)
  {
    sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_269D9EBF0;
    *(v10 + 32) = a1;
    *(v10 + 40) = 0;
    v11 = v9;
    MEMORY[0x26D64DA70](v10);
    sub_269D98380();

    (*(v5 + 8))(v8, v4);
    v13 = v18;
    v12 = v19;
    if (v19 && (v18 == 0xD000000000000029 && 0x8000000269DAC210 == v19 || (sub_269D9B280() & 1) != 0))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  type metadata accessor for EditScheduleLinkTableViewCell();
  v18 = sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  v14 = sub_269D9A660();
  if (!v12)
  {

    return *MEMORY[0x277D76F30];
  }

  if (v14 == v13 && v12 == v15)
  {

LABEL_12:

    return 1.0;
  }

  v17 = sub_269D9B280();

  result = 1.0;
  if ((v17 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

double sub_269C92BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (!v9)
  {
    return *MEMORY[0x277D76F30];
  }

  sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269D9EBF0;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  v11 = v9;
  MEMORY[0x26D64DA70](v10);
  sub_269D98380();

  (*(v5 + 8))(v8, v4);
  v12 = v17;
  if (!v17)
  {
    return *MEMORY[0x277D76F30];
  }

  v13 = v16;
  if (v16 == 0xD00000000000002BLL && 0x8000000269DAC120 == v17 || (sub_269D9B280() & 1) != 0 || v13 == 0xD00000000000002DLL && 0x8000000269DAC0F0 == v12 || (sub_269D9B280() & 1) != 0 || v13 == 0xD00000000000003ELL && 0x8000000269DAC150 == v12)
  {

    return 9.0;
  }

  v15 = sub_269D9B280();

  result = 9.0;
  if ((v15 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

uint64_t sub_269C92DF0(uint64_t a1, uint64_t a2, char *a3, void (*a4)(uint64_t, uint64_t))
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);

  v9 = sub_269D98230();
  v10 = sub_269D9AB80();

  if (os_log_type_enabled(v9, v10))
  {
    format = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    if (a2)
    {

      v16 = sub_269D9A660();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_269C2EACC(v16, v18, &v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_269C18000, v9, v10, format, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  a4(a1, a2);
}

uint64_t sub_269C93010(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269D9EBF0;
  *(v9 + 32) = a1;
  *(v9 + 40) = 0;
  MEMORY[0x26D64DA70]();
  sub_269D98380();
  (*(v5 + 8))(v8, v4);
  if (!v13)
  {
    return 0;
  }

  if (v12 == 0xD000000000000029 && 0x8000000269DAC210 == v13)
  {
  }

  else
  {
    v10 = sub_269D9B280();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v2 + qword_28034EEA0) != 1)
  {
    return 0;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t sub_269C93228(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_269C93258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_269C932C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_269C92000(255, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510, sub_269C1B0B8);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_269C93388(uint64_t a1)
{
  if (!qword_28034EF50)
  {
    sub_269C9340C(255, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
    sub_269C300C0();
    v1 = sub_269D986D0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034EF50);
    }
  }
}

void sub_269C9340C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_269C92000(255, a3, a4, a5, sub_269C1B0B8);
    v6 = sub_269D987E0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C9348C(uint64_t a1)
{
  if (!qword_28034EF58)
  {
    sub_269C9340C(255, &unk_280C0B130, &qword_280C0AE78, &unk_280C0AE80, 0x277D624C0);
    sub_269C93510();
    v1 = sub_269D986D0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034EF58);
    }
  }
}

unint64_t sub_269C93510()
{
  result = qword_28034EF68;
  if (!qword_28034EF68)
  {
    sub_269C9340C(255, &unk_280C0B130, &qword_280C0AE78, &unk_280C0AE80, 0x277D624C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EF68);
  }

  return result;
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_269C9364C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269C936A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269C932C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269C936E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269C91F14(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269C93760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_269C93828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_269C93870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t sub_269C9392C(uint64_t a1)
{
  v2 = sub_269D989F0();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_269D98E90();
}

uint64_t sub_269C93A18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v71 = a2;
  v63 = type metadata accessor for SleepScorePetals(0);
  MEMORY[0x28223BE20](v63, v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C94A98(0);
  v68 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C94AC0(0, &qword_28034EFE0, sub_269C94A98, MEMORY[0x277CDF910]);
  v66 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v60 - v11;
  sub_269C949F0(0);
  v70 = v13;
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v65 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C953C4(0, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
  v62 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v64 = &v60 - v18;
  v19 = sub_269D99040();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v61 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98AD0();
  v25 = v24;
  sub_269D98AD0();
  v27 = v26;
  v28 = *(a1 + 96);
  if (*(a1 + 144))
  {
    v29 = *(a1 + 136);
    v30 = *(a1 + 96);
    v60 = *(a1 + 120);
    v72 = *(a1 + 104);
    sub_269C95048(a1, v73);

    sub_269C95048(a1, v73);

    v76 = v60;
    v75 = v72;
    v74 = v28;
    v77 = v29;
    sub_269C95048(a1, v73);
    v32 = v72.n128_f64[1];
    v31 = v72.n128_f64[0];
  }

  else
  {
    sub_269C95048(a1, v73);
    sub_269D9AB70();
    v33 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95080(a1);
    v34 = *(v20 + 8);
    v35 = v34(v23, v19);
    v35.n128_u64[0] = v75.n128_u64[0];
    v72 = v35;

    sub_269C95048(a1, v73);
    sub_269D9AB70();
    v36 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95080(a1);
    v34(v23, v19);
    v30 = v74;

    sub_269C95048(a1, v73);
    sub_269D9AB70();
    v37 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95080(a1);
    v34(v23, v19);
    v31 = v72.n128_f64[0];
    v32 = v75.n128_f64[1];
  }

  if (v27 >= v25)
  {
    v38 = v25;
  }

  else
  {
    v38 = v27;
  }

  v39 = v38 * 0.5;
  v40 = v38 * 0.5 * v31;
  v41 = *(a1 + 16);
  v73[0] = *a1;
  v78 = *(a1 + 32);
  v79 = v41;

  *&v5[*(v63 + 44)] = swift_getKeyPath();
  sub_269C951C4(0, &qword_280C0B670, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v42 = v79;
  *v5 = v73[0];
  *(v5 + 1) = v42;
  *(v5 + 2) = v78;
  *(v5 + 6) = v39 * v30;
  *(v5 + 7) = v40;
  *(v5 + 8) = v39;
  *(v5 + 9) = v39 * v32;
  v43 = *(a1 + 64);
  sub_269D9A250();
  v45 = v44;
  v47 = v46;
  v48 = v67;
  sub_269C95228(v5, v67, type metadata accessor for SleepScorePetals);
  v49 = (v48 + *(v68 + 36));
  *v49 = v43;
  v49[1] = v43;
  v49[2] = v45;
  v49[3] = v47;
  v50 = *(a1 + 72);
  sub_269C95228(v48, v12, sub_269C94A98);
  *&v12[*(v66 + 36)] = v50;
  sub_269C94B24();
  v51 = v65;
  sub_269D99A20();
  sub_269C950B0(v12);
  v52 = sub_269D9A180();
  v54 = v53;
  v55 = v64;
  v56 = &v64[*(v62 + 36)];
  sub_269C941CC(a1, v56, v40);
  sub_269C94C78(0);
  v58 = (v56 + *(v57 + 36));
  *v58 = v52;
  v58[1] = v54;
  (*(v69 + 32))(v55, v51, v70);
  sub_269C1DAB8(v55, v71);
}

uint64_t sub_269C941CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v33 = sub_269D99040();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepScoreCountingText(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v34 = &v29 - v16;
  sub_269C951C4(0, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v29 - v19;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 56))
  {
    (*(v10 + 56))(v20, 1, 1, v9);
  }

  else
  {
    v31 = *(a1 + 48);
    v21 = a3 * 0.82 + a3 * 0.82;
    v22 = *(a1 + 96);
    if (*(a1 + 144))
    {
      v23 = *(a1 + 136);
      v37 = *(a1 + 104);
      v38 = *(a1 + 120);
      v36 = v22;
      v39 = v23;
      sub_269C95048(a1, v35);
    }

    else
    {
      sub_269C95048(a1, v35);
      sub_269D9AB70();
      v24 = sub_269D99590();
      v30 = a2;
      v25 = v24;
      sub_269D98200();

      a2 = v30;
      sub_269D99030();
      swift_getAtKeyPath();
      sub_269C95080(a1);
      (*(v32 + 8))(v8, v33);
      v23 = v39;
    }

    *v13 = v31;
    *(v13 + 1) = v23;
    *(v13 + 1) = *(a1 + 80);
    *(v13 + 4) = v21;
    v26 = *(v9 + 36);
    *&v13[v26] = swift_getKeyPath();
    sub_269C951C4(0, &qword_280C0B120, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v27 = v34;
    sub_269C95228(v13, v34, type metadata accessor for SleepScoreCountingText);
    sub_269C95228(v27, v20, type metadata accessor for SleepScoreCountingText);
    (*(v10 + 56))(v20, 0, 1, v9);
  }

  sub_269C95130(v20, a2);
}

uint64_t sub_269C94604@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_269D99440();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C948B4(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 112);
  v30[6] = *(v1 + 96);
  v30[7] = v12;
  v30[8] = *(v1 + 128);
  v31 = *(v1 + 144);
  v13 = *(v1 + 48);
  v30[2] = *(v1 + 32);
  v30[3] = v13;
  v14 = *(v1 + 80);
  v30[4] = *(v1 + 64);
  v30[5] = v14;
  v15 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v15;
  v16 = swift_allocObject();
  v17 = *(v1 + 112);
  *(v16 + 112) = *(v1 + 96);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(v1 + 128);
  *(v16 + 160) = *(v1 + 144);
  v18 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v18;
  v19 = *(v1 + 80);
  *(v16 + 80) = *(v1 + 64);
  *(v16 + 96) = v19;
  v20 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v20;
  v28[19] = sub_269C95040;
  v28[20] = v16;
  v28[21] = 0x3FF0000000000000;
  v29 = 0;
  sub_269C95048(v30, v28);
  sub_269D99430();
  sub_269C94AC0(0, &qword_28034EFC0, sub_269C9495C, MEMORY[0x277CE01B8]);
  v22 = v21;
  v23 = sub_269C94F60();
  sub_269D99B80();
  (*(v2 + 8))(v5, v26);

  v28[0] = v22;
  v28[1] = v23;
  swift_getOpaqueTypeConformance2();
  sub_269D99BC0();
  return (*(v8 + 8))(v11, v7);
}

void sub_269C948B4(uint64_t a1)
{
  if (!qword_28034EFB8)
  {
    sub_269C94AC0(255, &qword_28034EFC0, sub_269C9495C, MEMORY[0x277CE01B8]);
    sub_269C94F60();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034EFB8);
    }
  }
}

void sub_269C9495C(uint64_t a1)
{
  if (!qword_28034EFC8)
  {
    sub_269C953C4(255, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
    sub_269C94E2C();
    v1 = sub_269D98C00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034EFC8);
    }
  }
}

void sub_269C949F0(uint64_t a1)
{
  if (!qword_28034EFD8)
  {
    sub_269C94AC0(255, &qword_28034EFE0, sub_269C94A98, MEMORY[0x277CDF910]);
    sub_269C94B24();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034EFD8);
    }
  }
}

void sub_269C94AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_269D98D00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_269C94B24()
{
  result = qword_28034EFF0;
  if (!qword_28034EFF0)
  {
    sub_269C94AC0(255, &qword_28034EFE0, sub_269C94A98, MEMORY[0x277CDF910]);
    sub_269C94BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EFF0);
  }

  return result;
}

unint64_t sub_269C94BC8()
{
  result = qword_28034EFF8;
  if (!qword_28034EFF8)
  {
    sub_269C94A98(255);
    sub_269C94DE4(&qword_28034F000, type metadata accessor for SleepScorePetals, &unk_269DA66E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EFF8);
  }

  return result;
}

void sub_269C94C78(uint64_t a1)
{
  if (!qword_28034F008)
  {
    sub_269C951C4(255, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
    sub_269C94D0C();
    v1 = sub_269D98E00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F008);
    }
  }
}

unint64_t sub_269C94D0C()
{
  result = qword_28034F018;
  if (!qword_28034F018)
  {
    sub_269C951C4(255, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
    sub_269C94DE4(&qword_28034F020, type metadata accessor for SleepScoreCountingText, &unk_269DAA5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F018);
  }

  return result;
}

uint64_t sub_269C94DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269C94E2C()
{
  result = qword_28034F028;
  if (!qword_28034F028)
  {
    sub_269C953C4(255, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
    sub_269C94AC0(255, &qword_28034EFE0, sub_269C94A98, MEMORY[0x277CDF910]);
    sub_269C94B24();
    swift_getOpaqueTypeConformance2();
    sub_269C94DE4(&qword_28034F030, sub_269C94C78, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F028);
  }

  return result;
}

unint64_t sub_269C94F60()
{
  result = qword_28034F038;
  if (!qword_28034F038)
  {
    sub_269C94AC0(255, &qword_28034EFC0, sub_269C9495C, MEMORY[0x277CE01B8]);
    sub_269C94DE4(&qword_28034F040, sub_269C9495C, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F038);
  }

  return result;
}

uint64_t sub_269C950B0(uint64_t a1)
{
  sub_269C94AC0(0, &qword_28034EFE0, sub_269C94A98, MEMORY[0x277CDF910]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C95130(uint64_t a1, uint64_t a2)
{
  sub_269C951C4(0, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269C951C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C95228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269C95290()
{
  result = qword_28034F048;
  if (!qword_28034F048)
  {
    sub_269C953C4(255, &qword_28034F050, sub_269C948B4, MEMORY[0x277CDE470]);
    sub_269C94AC0(255, &qword_28034EFC0, sub_269C9495C, MEMORY[0x277CE01B8]);
    sub_269C94F60();
    swift_getOpaqueTypeConformance2();
    sub_269C94DE4(&qword_28034E0A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F048);
  }

  return result;
}

void sub_269C953C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269D98D00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for SleepDiffableTableViewDataSource(uint64_t a1)
{
  result = qword_28034F060;
  if (!qword_28034F060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_269C95538(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int *a6)
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
  sub_269C95720(a4, a6);
  v13 = v12;

  if (v13)
  {
    v14 = sub_269D9A5F0();
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

id sub_269C95664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDiffableTableViewDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C956AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(type metadata accessor for SleepDiffableTableViewDataSource(0));
  *&v3[qword_28034F058 + 8] = 0;
  swift_unknownObjectWeakInit();
  return sub_269D98370();
}

uint64_t sub_269C95720(uint64_t a1, unsigned int *a2)
{
  v4 = v2;
  sub_269C95BFC(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D9AB10();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269D9AAD0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269D97870();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D64DAA0](0, a1, v21);
  (*(v14 + 104))(v17, *a2, v13);
  sub_269D9AAC0();
  (*(v14 + 8))(v17, v13);
  v24 = v4 + qword_28034F058;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v19 + 8))(v23, v18);

    v38 = 0;
    v36 = 0u;
    v37 = 0u;
LABEL_9:
    sub_269C95D1C(&v36, sub_269C95C54);
    return 0;
  }

  v26 = *(v24 + 8);
  v39[0] = Strong;
  v39[1] = v26;
  sub_269C95CC0(0, &qword_28034F080, MEMORY[0x277D10F28], 0);
  sub_269C95CC0(0, &unk_280350870, MEMORY[0x277D11060], 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    goto LABEL_8;
  }

  if (!*(&v37 + 1))
  {
LABEL_8:
    (*(v19 + 8))(v23, v18);

    goto LABEL_9;
  }

  sub_269C25520(&v36, v39);
  __swift_project_boxed_opaque_existential_1Tm(v39, v39[3]);
  sub_269D98150();

  sub_269C95CC0(0, &qword_280350880, MEMORY[0x277D10D40], 1);
  v27 = v35;
  if (swift_dynamicCast())
  {
    v28 = v34;
    (*(v34 + 56))(v9, 0, 1, v27);
    v29 = v33;
    (*(v28 + 32))(v33, v9, v27);
    v30 = sub_269D9AB00();
    (*(v28 + 8))(v29, v27);
    (*(v19 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return v30;
  }

  (*(v19 + 8))(v23, v18);
  (*(v34 + 56))(v9, 1, 1, v27);
  sub_269C95D1C(v9, sub_269C95BFC);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  return 0;
}

void sub_269C95BFC(uint64_t a1)
{
  if (!qword_28034F070)
  {
    sub_269D9AB10();
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F070);
    }
  }
}

void sub_269C95C54(uint64_t a1)
{
  if (!qword_28034F078)
  {
    sub_269C95CC0(255, &unk_280350870, MEMORY[0x277D11060], 1);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F078);
    }
  }
}

uint64_t sub_269C95CC0(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_269C95D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_269C95D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for GoalTimePickerTableViewCell();
  v6 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = v6;
  v8 = sub_269CF0630();

  v9 = sub_269D912B8();
  v10 = &v8[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  v11 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
  *v10 = v12;
  v10[1] = v13;
  *(v10 + 2) = v9;
  *(v10 + 24) = v14 & 1;
  if (v11 != v13)
  {
    [v8 reloadAllComponents];
    sub_269CD94E4(1);
  }

  return v7;
}

id sub_269C95F38(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for GoalTimePickerTableViewCell();
  v3 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_269CF0630();

    v7 = sub_269D912B8();
    v8 = &v6[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
    v9 = *&v6[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
    *v8 = v10;
    v8[1] = v11;
    *(v8 + 2) = v7;
    *(v8 + 24) = v12 & 1;
    if (v9 != v11)
    {
      [v6 reloadAllComponents];
      sub_269CD94E4(1);
    }
  }

  return v4;
}

id sub_269C960A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GoalTimePickerTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double SectionContent.init(item:headerText:footerText:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  sub_269C9D5C8(0, &qword_28034E390, &type metadata for SectionItem, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v15;
  *(v14 + 16) = xmmword_269D9EBE0;
  *(v14 + 64) = v12;
  *(v14 + 72) = v13;
  sub_269C961DC(v14, a3, a4, a5, a6, v20);
  v16 = v21;
  result = *v20;
  v18 = v20[1];
  v19 = v20[2];
  *a2 = v20[0];
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  *(a2 + 48) = v16;
  return result;
}

void sub_269C961DC(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v6 = a5;
  v8 = result;
  if (a3 != 1)
  {
    v11 = a3;
    v10 = a2;
    v23 = a2;
    v24 = a3;
    v18 = sub_269C9E4F4(result, a2, a3);
    v19 = *(v18 + 24);
    sub_269C9E548(v10, v11);

    v19(v22, &type metadata for StaticTextProvider, v18);

    v20 = MEMORY[0x277CE0BD8];
    sub_269C9D5C8(0, &qword_28034F198, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
    sub_269C9D324(&qword_28034F190, &qword_28034F198, v20, MEMORY[0x277CE0BC8]);
    v12 = sub_269D99FF0();
    sub_269C9E55C(v10, v11);
    sub_269C98B48(0, 0, 0);
    if (v6 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    a4 = 0;
    v6 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a5 == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = a4;
  v24 = v6;
  v13 = sub_269C9E4F4(result, a2, a3);
  v21 = v12;
  v14 = v8;
  v15 = *(v13 + 24);
  sub_269C9E548(a4, v6);

  v15(v22, &type metadata for StaticTextProvider, v13);
  v8 = v14;
  v12 = v21;

  v16 = MEMORY[0x277CE0BD8];
  sub_269C9D5C8(0, &qword_28034F198, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
  sub_269C9D324(&qword_28034F190, &qword_28034F198, v16, MEMORY[0x277CE0BC8]);
  v17 = sub_269D99FF0();
  sub_269C9E55C(a4, v6);
  sub_269C98B48(0, 0, 0);
LABEL_6:
  *a6 = v10;
  a6[1] = v11;
  a6[2] = v12;
  a6[3] = a4;
  a6[4] = v6;
  a6[5] = v17;
  a6[6] = v8;
}

void sub_269C96434(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v35 = a1;
  sub_269C9D484(0, &qword_28034F1A8, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
  v34 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v19 = &v32 - v18;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a3 != 1)
  {
    v38 = a2;
    v39 = a3;
    v23 = sub_269C9E4F4(v15, v16, v17);
    v33 = a4;
    v24 = *(v23 + 24);
    sub_269C9E548(a2, a3);

    v25 = a6;
    v24(v36, &type metadata for StaticTextProvider, v23);

    v26 = MEMORY[0x277CE0BD8];
    sub_269C9D5C8(0, &qword_28034F198, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
    v27 = v26;
    a6 = v25;
    sub_269C9D324(&qword_28034F190, &qword_28034F198, v27, MEMORY[0x277CE0BC8]);
    a4 = v33;
    v22 = sub_269D99FF0();
    sub_269C9E55C(a2, a3);
    sub_269C98B48(0, 0, 0);
    v20 = a2;
    v21 = a3;
  }

  if (a5)
  {
    v36[0] = a4;
    v36[1] = a5;
    v37 = a6;

    v28 = SleepDeepLinkTextProvider.stringRepresentation.getter();
    v30 = v29;
    SleepDeepLinkTextProvider.text.getter(v19);

    sub_269C9D39C();
    v31 = sub_269D99FF0();

    sub_269C98B48(0, 0, 0);
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v31 = 0;
  }

  *a7 = v20;
  a7[1] = v21;
  a7[2] = v22;
  a7[3] = v28;
  a7[4] = v30;
  a7[5] = v31;
  a7[6] = v35;
}

void SectionContent.init<A, B>(items:headerProvider:footerProvider:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a7;
  *(&v59 + 1) = a6;
  v63 = a3;
  v66 = a1;
  v64 = sub_269D9AE60();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v12);
  v14 = &v54 - v13;
  v60 = a5;
  v61 = *(a5 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v57 = &v54 - v20;
  v21 = sub_269D9AE60();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v54 - v24;
  v26 = *(a4 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v54 - v34;
  v36 = *(v22 + 16);
  *&v65 = a2;
  v36(v25, a2, v21, v33);
  if ((*(v26 + 48))(v25, 1, a4) == 1)
  {
    (*(v22 + 8))(v25, v21);
    v37 = 0;
    v59 = 0uLL;
  }

  else
  {
    (*(v26 + 32))(v35, v25, a4);
    (*(v26 + 16))(v30, v35, a4);
    sub_269C989B0(v30, a4, *(&v59 + 1), &v67);
    (*(v26 + 8))(v35, a4);
    v59 = v67;
    v37 = v68;
    sub_269C98B48(0, 0, 0);
  }

  v38 = v21;
  v40 = v62;
  v39 = v63;
  v41 = v64;
  (*(v62 + 16))(v14, v63, v64);
  v43 = v60;
  v42 = v61;
  if ((*(v61 + 48))(v14, 1, v60) == 1)
  {
    v44 = *(v40 + 8);
    v44(v39, v41);
    (*(v22 + 8))(v65, v38);
    v44(v14, v41);
    v45 = 0;
    v46 = 0uLL;
  }

  else
  {
    v47 = *(v42 + 32);
    v55 = v37;
    v48 = v38;
    v49 = v57;
    v47(v57, v14, v43);
    v50 = v56;
    (*(v42 + 16))(v56, v49, v43);
    sub_269C989B0(v50, v43, v58, &v67);
    (*(v40 + 8))(v39, v41);
    v51 = v48;
    v37 = v55;
    (*(v22 + 8))(v65, v51);
    (*(v42 + 8))(v49, v43);
    v65 = v67;
    v45 = v68;
    sub_269C98B48(0, 0, 0);
    v46 = v65;
  }

  v52 = *(&v59 + 1);
  *a8 = v59;
  *(a8 + 8) = v52;
  *(a8 + 16) = v37;
  *(a8 + 24) = v46;
  v53 = v66;
  *(a8 + 40) = v45;
  *(a8 + 48) = v53;
}

BOOL sub_269C96BB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_269C96C70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v143 = a2 + 32;
  v144 = result + 32;
  v142 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      return result;
    }

    v4 = (v144 + 56 * v3);
    v5 = (v143 + 56 * v3);
    v172 = v5[6];
    v173 = v4[6];
    v6 = *(v173 + 16);
    if (v6 != *(v172 + 16))
    {
      return 0;
    }

    v7 = *v4;
    v8 = v4[1];
    v9 = v4[2];
    v10 = v4[3];
    v12 = v4[4];
    v11 = v4[5];
    v14 = *v5;
    v13 = v5[1];
    v16 = v5[2];
    v15 = v5[3];
    v17 = v5[4];
    v18 = v5[5];
    v156 = v12;
    v157 = v11;
    v154 = v8;
    v155 = v10;
    v160 = v9;
    v158 = v16;
    v159 = *v4;
    v152 = v13;
    v153 = v17;
    v149 = v3;
    v150 = v15;
    v151 = *v5;
    if (v6)
    {
      break;
    }

    sub_269C9E3F4(v7, v8, v9);
    sub_269C9E3F4(v10, v12, v11);

    sub_269C9E3F4(v14, v13, v16);
    sub_269C9E3F4(v15, v17, v18);

LABEL_88:
    if (!v160)
    {
      v88 = v156;
      v87 = v157;
      v86 = v154;
      v89 = v158;
      v90 = v151;
      v91 = v152;
      if (!v158)
      {
        goto LABEL_102;
      }

LABEL_97:
      if (v91)
      {
        goto LABEL_140;
      }

      goto LABEL_102;
    }

    v86 = v154;

    v88 = v156;
    v87 = v157;
    v89 = v158;
    v90 = v151;
    v91 = v152;
    if (v158)
    {

      if (!v154)
      {
        goto LABEL_97;
      }

      if (!v152)
      {
        goto LABEL_140;
      }

      if (v159 == v151 && v154 == v152)
      {
      }

      else
      {
        v92 = sub_269D9B280();

        if ((v92 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v154)
    {
LABEL_140:

LABEL_141:
      sub_269C98B48(v90, v91, v89);
      sub_269C98B48(v150, v153, v18);

      sub_269C98B48(v159, v86, v160);
      v139 = v155;
LABEL_143:
      v140 = v88;
      v141 = v87;
      goto LABEL_136;
    }

LABEL_102:
    if (!v87)
    {
      v94 = v155;
      v93 = v153;
      if (v18)
      {

LABEL_111:
        if (v93)
        {
          goto LABEL_142;
        }
      }

LABEL_114:
      sub_269C98B48(v90, v91, v89);
      v95 = v150;
      v96 = v93;
      goto LABEL_115;
    }

    if (!v18)
    {
      v94 = v155;
      v93 = v153;
      if (v88)
      {
LABEL_142:

        sub_269C98B48(v90, v91, v89);
        sub_269C98B48(v150, v93, v18);

        sub_269C98B48(v159, v86, v160);
        v139 = v94;
        goto LABEL_143;
      }

      goto LABEL_114;
    }

    v93 = v153;

    v94 = v155;
    if (!v88)
    {
      goto LABEL_111;
    }

    if (!v153)
    {
      goto LABEL_142;
    }

    if (v155 != v150 || v88 != v153)
    {
      v97 = sub_269D9B280();

      sub_269C98B48(v90, v91, v158);
      sub_269C98B48(v150, v153, v18);

      sub_269C98B48(v159, v86, v160);
      sub_269C98B48(v155, v88, v87);

      if ((v97 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_116;
    }

    sub_269C98B48(v90, v91, v89);
    v95 = v155;
    v96 = v88;
LABEL_115:
    sub_269C98B48(v95, v96, v18);

    sub_269C98B48(v159, v86, v160);
    sub_269C98B48(v94, v88, v87);

LABEL_116:
    v3 = v149 + 1;
    result = 1;
    v2 = v142;
    if (v149 + 1 == v142)
    {
      return result;
    }
  }

  sub_269C9E3F4(v7, v8, v9);
  sub_269C9E3F4(v10, v12, v11);

  sub_269C9E3F4(v14, v13, v16);
  sub_269C9E3F4(v15, v17, v18);
  if (v173 == )
  {
    goto LABEL_88;
  }

  v166 = v18;
  v19 = 0;
  v20 = v6 - 1;
  while (1)
  {
    v21 = *(v173 + v19 + 32);
    v22 = *(v173 + v19 + 40);
    v24 = *(v173 + v19 + 48);
    v23 = *(v173 + v19 + 56);
    v25 = *(v173 + v19 + 72);
    v26 = *(v173 + v19 + 73);
    v176 = v19;
    v177 = *(v173 + v19 + 64);
    v27 = v172 + v19;
    v29 = *(v172 + v19 + 32);
    v28 = *(v172 + v19 + 40);
    v30 = *(v172 + v19 + 48);
    v31 = *(v172 + v19 + 56);
    v32 = *(v172 + v19 + 64);
    v33 = *(v172 + v19 + 72);
    v34 = *(v27 + 73);
    v179[0] = v21;
    v179[1] = v22;
    v179[2] = v24;
    v179[3] = v23;
    v178 = v23;
    v179[4] = v177;
    v180 = v25;
    v181 = v26;
    v182 = v29;
    v183 = v28;
    v184 = v30;
    v185 = v31;
    v186 = v32;
    v187 = v33;
    v188 = v34;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v168 = v33;
        v59 = v30;
        v60 = v31;
        v61 = v32;
        if (v34 == 2)
        {
          v62 = v20;
          sub_269C9CC0C(v21, v22, v24, v23, v177, v25, 2u);
          sub_269C9CC0C(v29, v28, v59, v60, v61, v168, 2u);
          sub_269C9E438(v179, sub_269C9E498);
          v52 = v62;
          goto LABEL_39;
        }

        v117 = v22;
        v118 = v24;
        v170 = v22;
        v119 = v24;
        v120 = v25;
        sub_269C9CC0C(v21, v117, v118, v23, v177, v25, 2u);
        v121 = v21;
        v25 = v120;
        v24 = v119;
        v22 = v170;
        v32 = v61;
        v31 = v60;
        v30 = v59;
        v33 = v168;
      }

      else if (v26 == 3)
      {
        v171 = v32;
        v164 = v29;
        if (v34 == 3)
        {
          if (v21 != v29 || v22 != v28)
          {
            v35 = v25;
            v36 = v20;
            v37 = sub_269D9B280();
            v20 = v36;
            v25 = v35;
            if ((v37 & 1) == 0)
            {
              v134 = v21;
              v135 = v22;
              v136 = v24;
              v138 = v177;
              v137 = v178;
LABEL_129:
              sub_269C9CC0C(v134, v135, v136, v137, v138, v25, 3u);
              sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
LABEL_130:
              sub_269C9E438(v179, sub_269C9E498);
              goto LABEL_135;
            }
          }

          v161 = v20;
          if (v24 != v30 || v178 != v31)
          {
            v38 = v21;
            v39 = v22;
            v40 = v24;
            v41 = v25;
            v42 = sub_269D9B280();
            v25 = v41;
            v24 = v40;
            v22 = v39;
            v21 = v38;
            v29 = v164;
            if ((v42 & 1) == 0)
            {
              v134 = v21;
              v135 = v22;
              v136 = v24;
              v137 = v178;
              v138 = v177;
              goto LABEL_129;
            }
          }

          v174 = v24;
          v43 = v24;
          v44 = v25;
          sub_269C9CC0C(v21, v22, v43, v178, v177, v25, 3u);
          sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
          sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
          sub_269C9CC0C(v21, v22, v174, v178, v177, v44, 3u);
          sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
          sub_269C9CC0C(v21, v22, v174, v178, v177, v44, 3u);
          v145 = sub_269D99CD0();
          sub_269C9E438(v179, sub_269C9E498);
          sub_269C9CB74(v164, v28, v30, v31, v171, v33, 3u);
          sub_269C9CB74(v21, v22, v174, v178, v177, v44, 3u);
          sub_269C9CB74(v164, v28, v30, v31, v171, v33, 3u);
          v45 = v21;
          v46 = v22;
          v47 = v174;
          v48 = v178;
          v49 = v177;
          v50 = v44;
          v51 = 3;
          goto LABEL_21;
        }

        v110 = v21;
        v111 = v22;
        v112 = v24;
        v113 = v21;
        v114 = v22;
        v115 = v24;
        v116 = v25;
        sub_269C9CC0C(v110, v111, v112, v23, v177, v25, 3u);

LABEL_125:
        v25 = v116;
        v24 = v115;
        v22 = v114;
        v21 = v113;
        v29 = v164;
        v32 = v171;
      }

      else
      {
        if (v34 == 4)
        {
          v63 = v28;
          v64 = v30;
          v65 = v25;
          v66 = v20;
          sub_269C9CC0C(v29, v63, v64, v31, v32, v33, 4u);
          sub_269C9CC0C(v21, v22, v24, v178, v177, v65, 4u);
          sub_269C9E438(v179, sub_269C9E498);
          v52 = v66;
          goto LABEL_39;
        }

        v98 = v21;
        v99 = v22;
        v100 = v24;
        v148 = v28;
        v101 = v33;
        v102 = v30;
        v103 = v31;
        v104 = v32;
        v165 = v29;
        v105 = v21;
        v106 = v22;
        v107 = v24;
        v108 = v25;
        sub_269C9CC0C(v98, v99, v100, v23, v177, v25, 4u);
        v109 = v105;
        v32 = v104;
        v31 = v103;
        v30 = v102;
        v33 = v101;
        v28 = v148;
        v25 = v108;
        v24 = v107;
        v22 = v106;
        v21 = v105;
        v29 = v165;
      }

LABEL_126:
      v125 = v30;
      v126 = v25;
      sub_269C9CC0C(v29, v28, v125, v31, v32, v33, v34);
      sub_269C9E438(v179, sub_269C9E498);
      v129 = v21;
      v130 = v22;
      v131 = v24;
      v133 = v177;
      v132 = v178;
      v127 = v126;
      v128 = v26;
      goto LABEL_134;
    }

    v175 = v24;
    if (v26)
    {
      if (v34 != 1)
      {
        goto LABEL_126;
      }

      v162 = v21;
      if (v21)
      {
        if (v21 == 1)
        {
          v67 = 0x696472616F626E6FLL;
        }

        else
        {
          v67 = 0x63536567616E616DLL;
        }

        if (v21 == 1)
        {
          v68 = 0xEA0000000000676ELL;
        }

        else
        {
          v68 = 0xEE00656C75646568;
        }
      }

      else
      {
        v67 = 0x657078456E69616DLL;
        v68 = 0xEE0065636E656972;
      }

      v169 = v22;
      if (v29)
      {
        if (v29 == 1)
        {
          v77 = 0x696472616F626E6FLL;
        }

        else
        {
          v77 = 0x63536567616E616DLL;
        }

        if (v29 == 1)
        {
          v78 = 0xEA0000000000676ELL;
        }

        else
        {
          v78 = 0xEE00656C75646568;
        }
      }

      else
      {
        v77 = 0x657078456E69616DLL;
        v78 = 0xEE0065636E656972;
      }

      v79 = v20;
      v80 = v25;
      if (v67 == v77 && v68 == v78)
      {
        sub_269C9CC0C(v29, v28, v30, v31, v32, v33, 1u);

        sub_269C9E438(v179, sub_269C9E498);
        sub_269C9CB74(v21, v169, v175, v178, v177, v80, 1u);
        v53 = v176;
        v52 = v79;
        v18 = v166;
        if (!v79)
        {
          goto LABEL_88;
        }

        goto LABEL_76;
      }

      v81 = v33;
      v82 = v30;
      v83 = v31;
      v84 = v32;
      v146 = sub_269D9B280();
      sub_269C9CC0C(v29, v28, v82, v83, v84, v81, 1u);

      sub_269C9E438(v179, sub_269C9E498);
      sub_269C9CB74(v162, v169, v175, v178, v177, v80, 1u);
      v53 = v176;
      v52 = v79;
      if ((v146 & 1) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_75;
    }

    v171 = v32;
    v164 = v29;
    if (v34)
    {
      v122 = v21;
      v123 = v22;
      v124 = v24;
      v113 = v21;
      v114 = v22;
      v115 = v24;
      v116 = v25;
      sub_269C9CC0C(v122, v123, v124, v23, v177, v25, 0);

      goto LABEL_125;
    }

    v54 = v20;
    v163 = v25;
    sub_269C9CC0C(v21, v22, v24, v23, v177, v25, 0);
    sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 0);
    if ((v21 != v29 || v22 != v28) && (sub_269D9B280() & 1) == 0 || (v24 != v30 || v178 != v31) && (sub_269D9B280() & 1) == 0)
    {
      goto LABEL_130;
    }

    v161 = v54;
    v147 = v28;
    v167 = v33;
    if (v177)
    {
      if (!v171)
      {
        goto LABEL_130;
      }

      sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 0);
      v55 = v163;
      sub_269C9CC0C(v21, v22, v24, v178, v177, v163, 0);
      sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 0);
      v56 = v21;
      v57 = v22;
      sub_269C9CC0C(v21, v22, v175, v178, v177, v163, 0);

      v58 = sub_269D99CD0();

      if ((v58 & 1) == 0)
      {
        sub_269C9E438(v179, sub_269C9E498);
        sub_269C9CB74(v29, v28, v30, v31, v171, v167, 0);
        sub_269C9CB74(v21, v22, v175, v178, v177, v163, 0);
        sub_269C9CB74(v29, v28, v30, v31, v171, v167, 0);
        v129 = v21;
        v130 = v22;
        v131 = v175;
        v132 = v178;
        v133 = v177;
        goto LABEL_133;
      }
    }

    else
    {
      if (v171)
      {
        goto LABEL_130;
      }

      sub_269C9CC0C(v29, v28, v30, v31, 0, v33, 0);
      LODWORD(v55) = v163;
      sub_269C9CC0C(v21, v22, v24, v178, 0, v163, 0);
      sub_269C9CC0C(v29, v28, v30, v31, 0, v33, 0);
      v56 = v21;
      v57 = v22;
      sub_269C9CC0C(v21, v22, v175, v178, 0, v163, 0);
    }

    v69 = v56;
    if (v55 != 3)
    {
      break;
    }

    v70 = v56;
    sub_269C9E438(v179, sub_269C9E498);
    v71 = v167;
    v72 = v178;
    v53 = v176;
    if (v167 != 3)
    {
      goto LABEL_132;
    }

    sub_269C9CB74(v164, v147, v30, v31, v171, 3, 0);
    sub_269C9CB74(v69, v57, v175, v178, v177, 3, 0);
    sub_269C9CB74(v164, v147, v30, v31, v171, 3, 0);
    sub_269C9CB74(v69, v57, v175, v178, v177, 3, 0);
    v52 = v161;
    v18 = v166;
    if (!v161)
    {
      goto LABEL_88;
    }

LABEL_76:
    v20 = v52 - 1;
    v19 = v53 + 48;
  }

  v71 = v167;
  v72 = v178;
  if (v167 != 3)
  {
    if (v55)
    {
      if (v55 == 1)
      {
        v73 = 0x696472616F626E6FLL;
        v74 = 0xEA0000000000676ELL;
        if (v167)
        {
          goto LABEL_59;
        }

LABEL_78:
        v75 = 0x657078456E69616DLL;
        v85 = 0x65636E656972;
LABEL_82:
        v76 = v85 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        goto LABEL_83;
      }

      v73 = 0x63536567616E616DLL;
      v74 = 0xEE00656C75646568;
      if (!v167)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v73 = 0x657078456E69616DLL;
      v74 = 0xEE0065636E656972;
      if (!v167)
      {
        goto LABEL_78;
      }
    }

LABEL_59:
    if (v167 != 1)
    {
      v75 = 0x63536567616E616DLL;
      v85 = 0x656C75646568;
      goto LABEL_82;
    }

    v75 = 0x696472616F626E6FLL;
    v76 = 0xEA0000000000676ELL;
LABEL_83:
    if (v73 == v75 && v74 == v76)
    {

      sub_269C9E438(v179, sub_269C9E498);
      sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
      sub_269C9CB74(v56, v57, v175, v178, v177, v163, 0);
      sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
      sub_269C9CB74(v56, v57, v175, v178, v177, v163, 0);
      v52 = v161;
LABEL_39:
      v53 = v176;
      v18 = v166;
      if (!v52)
      {
        goto LABEL_88;
      }

      goto LABEL_76;
    }

    v145 = sub_269D9B280();

    sub_269C9E438(v179, sub_269C9E498);
    sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
    sub_269C9CB74(v56, v57, v175, v178, v177, v163, 0);
    sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
    v45 = v56;
    v46 = v57;
    v47 = v175;
    v48 = v178;
    v49 = v177;
    v50 = v163;
    v51 = 0;
LABEL_21:
    sub_269C9CB74(v45, v46, v47, v48, v49, v50, v51);
    v52 = v161;
    v53 = v176;
    if ((v145 & 1) == 0)
    {
      goto LABEL_135;
    }

LABEL_75:
    v18 = v166;
    if (!v52)
    {
      goto LABEL_88;
    }

    goto LABEL_76;
  }

  v70 = v56;
  sub_269C9E438(v179, sub_269C9E498);
LABEL_132:
  sub_269C9CB74(v164, v147, v30, v31, v171, v71, 0);
  v55 = v163;
  sub_269C9CB74(v70, v57, v175, v72, v177, v163, 0);
  sub_269C9CB74(v164, v147, v30, v31, v171, v71, 0);
  v129 = v70;
  v130 = v57;
  v131 = v175;
  v132 = v72;
  v133 = v177;
LABEL_133:
  v127 = v55;
  v128 = 0;
LABEL_134:
  sub_269C9CB74(v129, v130, v131, v132, v133, v127, v128);
LABEL_135:
  sub_269C98B48(v151, v152, v158);
  sub_269C98B48(v150, v153, v166);

  sub_269C98B48(v159, v154, v160);
  v139 = v155;
  v140 = v156;
  v141 = v157;
LABEL_136:
  sub_269C98B48(v139, v140, v141);

  return 0;
}

uint64_t sub_269C980F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v3 = (a2 + 73);
      v4 = (a1 + 73);
      do
      {
        v5 = *(v4 - 33);
        v6 = *(v4 - 25);
        v7 = *(v4 - 17);
        v8 = *(v4 - 9);
        v9 = *(v4 - 1);
        v10 = *v4;
        v27 = *(v4 - 41);
        v28 = v5;
        v29 = v6;
        v30 = v7;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v12 = *(v3 - 33);
        v13 = *(v3 - 25);
        v14 = *(v3 - 17);
        v15 = *(v3 - 9);
        v20 = *(v3 - 41);
        v11 = v20;
        v21 = v12;
        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = *(v3 - 1);
        v16 = v25;
        v26 = *v3;
        v17 = v26;
        sub_269C9CC0C(v27, v5, v6, v7, v8, v9, v10);
        sub_269C9CC0C(v11, v12, v13, v14, v15, v16, v17);
        v18 = _s13SleepHealthUI11SectionItemO2eeoiySbAC_ACtFZ_0(&v27, &v20);
        sub_269C9CB74(v20, v21, v22, v23, v24, v25, v26);
        sub_269C9CB74(v27, v28, v29, v30, v31, v32, v33);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_269C98258(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for SleepStageSegment(0);
  MEMORY[0x28223BE20](v37, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v11 = &v36 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v34 = 0;
    return v34 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = 0xEB00000000646569;
  v17 = 0x6669636570736E75;
  v36 = *(v9 + 72);
  while (1)
  {
    result = sub_269C9E114(v14, v11, type metadata accessor for SleepStageSegment);
    if (!v12)
    {
      break;
    }

    sub_269C9E114(v15, v6, type metadata accessor for SleepStageSegment);
    v19 = *v11;
    if (v19 <= 1)
    {
      v24 = 0x7065656C536D6572;
      if (*v11)
      {
        v22 = 0x7065656C536D6572;
      }

      else
      {
        v22 = 0x656B617761;
      }

      if (*v11)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }
    }

    else
    {
      if (v19 == 3)
      {
        v20 = 0x65656C5370656564;
      }

      else
      {
        v20 = v17;
      }

      if (v19 == 3)
      {
        v21 = 0xE900000000000070;
      }

      else
      {
        v21 = v16;
      }

      if (v19 == 2)
      {
        v22 = 0x65656C5365726F63;
      }

      else
      {
        v22 = v20;
      }

      if (v19 == 2)
      {
        v23 = 0xE900000000000070;
      }

      else
      {
        v23 = v21;
      }

      v24 = 0x7065656C536D6572;
    }

    v25 = *v6;
    v26 = v17;
    if (v25 == 3)
    {
      v27 = 0x65656C5370656564;
    }

    else
    {
      v27 = v17;
    }

    v28 = v16;
    if (v25 == 3)
    {
      v29 = 0xE900000000000070;
    }

    else
    {
      v29 = v16;
    }

    if (v25 == 2)
    {
      v27 = 0x65656C5365726F63;
      v29 = 0xE900000000000070;
    }

    if (*v6)
    {
      v30 = 0xE800000000000000;
    }

    else
    {
      v24 = 0x656B617761;
      v30 = 0xE500000000000000;
    }

    if (*v6 <= 1u)
    {
      v31 = v24;
    }

    else
    {
      v31 = v27;
    }

    if (*v6 <= 1u)
    {
      v32 = v30;
    }

    else
    {
      v32 = v29;
    }

    if (v22 == v31 && v23 == v32)
    {
    }

    else
    {
      v33 = sub_269D9B280();

      if ((v33 & 1) == 0)
      {
        sub_269C9E438(v6, type metadata accessor for SleepStageSegment);
        sub_269C9E438(v11, type metadata accessor for SleepStageSegment);
        v34 = 0;
        return v34 & 1;
      }
    }

    v34 = sub_269D96F80();
    sub_269C9E438(v6, type metadata accessor for SleepStageSegment);
    sub_269C9E438(v11, type metadata accessor for SleepStageSegment);
    if (v34)
    {
      v15 += v36;
      v14 += v36;
      v35 = v12-- == 1;
      v16 = v28;
      v17 = v26;
      if (!v35)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

__n128 SectionsViewModel.init(section:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = a1[2];
  v4 = *(a1 + 6);
  sub_269C9D5C8(0, &qword_28034E388, &type metadata for SectionContent, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  *(v5 + 16) = xmmword_269D9EBE0;
  *(v5 + 32) = v6;
  result = v9;
  *(v5 + 48) = v7;
  *(v5 + 64) = v9;
  *(v5 + 80) = v4;
  *a2 = v5;
  return result;
}

double SectionsViewModel.init(sectionItem:headerText:footerText:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = MEMORY[0x277D84560];
  sub_269C9D5C8(0, &qword_28034E388, &type metadata for SectionContent, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269D9EBE0;
  sub_269C9D5C8(0, &qword_28034E390, &type metadata for SectionItem, v14);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v17;
  *(v16 + 16) = xmmword_269D9EBE0;
  *(v16 + 64) = v12;
  *(v16 + 72) = v13;
  sub_269C961DC(v16, a2, a3, a4, a5, v22);
  v18 = v23;
  result = *v22;
  v20 = v22[1];
  v21 = v22[2];
  *(v15 + 32) = v22[0];
  *(v15 + 48) = v20;
  *(v15 + 64) = v21;
  *(v15 + 80) = v18;
  *a6 = v15;
  return result;
}

uint64_t SectionContent.view.getter()
{
  sub_269C9D5C8(0, &qword_28034F088, &type metadata for SectionItem, MEMORY[0x277D83940]);
  sub_269C98B8C(0);
  sub_269C98DAC();
  v0 = sub_269C98E28();
  sub_269C99360(v0, v1, v2);

  return sub_269D9A090();
}

uint64_t sub_269C98890@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 26);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C9B4D0(&v5, a2);
}

void SectionContent.header.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
  }

  *a1 = v3;
}

void SectionContent.footer.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
  }

  *a1 = v3;
}

uint64_t sub_269C989B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  *a4 = (*(a3 + 32))(a2, a3, v10);
  a4[1] = v11;
  (*(a3 + 24))(a2, a3);
  swift_getAssociatedConformanceWitness();
  v12 = sub_269D99FF0();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  a4[2] = v12;
  return result;
}

double SectionContent.init(items:headerText:footerText:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_269C961DC(a1, a2, a3, a4, a5, v10);
  v7 = v12;
  v8 = v10[1];
  *a6 = v10[0];
  *(a6 + 16) = v8;
  result = *&v11;
  *(a6 + 32) = v11;
  *(a6 + 48) = v7;
  return result;
}

void sub_269C98B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

void sub_269C98B8C(uint64_t a1)
{
  if (!qword_28034F090)
  {
    sub_269C9DC78(255, &qword_28034F098, sub_269C98C28, sub_269C98CE4, MEMORY[0x277CE0338]);
    v1 = sub_269D99D50();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F090);
    }
  }
}

void sub_269C98C28(uint64_t a1)
{
  if (!qword_28034F0A0)
  {
    v1 = MEMORY[0x277CE0338];
    sub_269C9DA44(255, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    sub_269C9DA44(255, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v1);
    v2 = sub_269D992E0();
    if (!v3)
    {
      atomic_store(v2, &qword_28034F0A0);
    }
  }
}

void sub_269C98CE4(uint64_t a1)
{
  if (!qword_28034F0B8)
  {
    sub_269C98D44(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F0B8);
    }
  }
}

unint64_t sub_269C98DAC()
{
  result = qword_28034F0D0;
  if (!qword_28034F0D0)
  {
    sub_269C9D5C8(255, &qword_28034F088, &type metadata for SectionItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0D0);
  }

  return result;
}

unint64_t sub_269C98E70()
{
  result = qword_28034F0E0;
  if (!qword_28034F0E0)
  {
    sub_269C9DC78(255, &qword_28034F098, sub_269C98C28, sub_269C98CE4, MEMORY[0x277CE0338]);
    sub_269C98F34();
    sub_269C9925C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0E0);
  }

  return result;
}

unint64_t sub_269C98F34()
{
  result = qword_28034F0E8;
  if (!qword_28034F0E8)
  {
    sub_269C98C28(255);
    sub_269C98FB4();
    sub_269C99108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0E8);
  }

  return result;
}

unint64_t sub_269C98FB4()
{
  result = qword_28034F0F0;
  if (!qword_28034F0F0)
  {
    sub_269C9DA44(255, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    v6 = sub_269C99060(v1, v2, v3);
    sub_269C990B4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0F0);
  }

  return result;
}

unint64_t sub_269C99060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F0F8;
  if (!qword_28034F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0F8);
  }

  return result;
}

unint64_t sub_269C990B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F100;
  if (!qword_28034F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F100);
  }

  return result;
}

unint64_t sub_269C99108()
{
  result = qword_28034F108;
  if (!qword_28034F108)
  {
    sub_269C9DA44(255, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, MEMORY[0x277CE0338]);
    v6 = sub_269C991B4(v1, v2, v3);
    sub_269C99208(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F108);
  }

  return result;
}

unint64_t sub_269C991B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F110;
  if (!qword_28034F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F110);
  }

  return result;
}

unint64_t sub_269C99208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F118;
  if (!qword_28034F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F118);
  }

  return result;
}

unint64_t sub_269C9925C()
{
  result = qword_28034F120;
  if (!qword_28034F120)
  {
    sub_269C98CE4(255);
    sub_269C9930C(v1, v2, v3);
    sub_269C9E17C(&qword_28034F130, sub_269C98D44, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F120);
  }

  return result;
}

unint64_t sub_269C9930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F128;
  if (!qword_28034F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F128);
  }

  return result;
}

unint64_t sub_269C99360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F138;
  if (!qword_28034F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F138);
  }

  return result;
}

uint64_t SectionContent.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  sub_269C9BC7C(a1, v1[6]);
  if (v3)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    sub_269D9B370();

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_269D9B370();

    sub_269D9A6A0();

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    sub_269D9B370();

    sub_269D9A6A0();
    goto LABEL_12;
  }

LABEL_11:
  sub_269D9B370();
LABEL_12:
}

uint64_t SectionContent.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_269D9B350();
  SectionContent.hash(into:)(v4);
  return sub_269D9B390();
}

uint64_t sub_269C9950C()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_269D9B350();
  SectionContent.hash(into:)(v4);
  return sub_269D9B390();
}

uint64_t sub_269C9956C(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_269D9B350();
  SectionContent.hash(into:)(v5);
  return sub_269D9B390();
}

void SectionContent.id.getter()
{
  v1 = *(v0 + 48);
  v21[2] = 0;
  v21[3] = 0xE000000000000000;
  v19 = *(v1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = (v1 + 73);
    v18 = v1;
    while (v2 < *(v1 + 16))
    {
      v7 = *(v3 - 41);
      v8 = *(v3 - 33);
      v9 = *(v3 - 25);
      v10 = *(v3 - 17);
      v11 = *(v3 - 9);
      v12 = *(v3 - 1);
      v13 = *v3;
      v20 = *(v3 - 1);
      if (v13 <= 1)
      {
        if (*v3)
        {
          sub_269D9B000();

          v21[0] = 0xD000000000000011;
          v21[1] = 0x8000000269DAF430;
          if (v7)
          {
            if (v7 == 1)
            {
              v16 = 0x696472616F626E6FLL;
            }

            else
            {
              v16 = 0x63536567616E616DLL;
            }

            if (v7 == 1)
            {
              v17 = 0xEA0000000000676ELL;
            }

            else
            {
              v17 = 0xEE00656C75646568;
            }
          }

          else
          {
            v16 = 0x657078456E69616DLL;
            v17 = 0xEE0065636E656972;
          }

          MEMORY[0x26D650930](v16, v17);

          MEMORY[0x26D650930](0xD000000000000019, 0x8000000269DAF450);
        }

        else
        {
          strcpy(v21, "promotion - ");
          BYTE5(v21[1]) = 0;
          HIWORD(v21[1]) = -5120;
          v14 = sub_269C9CC0C(v7, v8, v9, v10, v11, v12, 0);
          MEMORY[0x26D650930](v9, v10, v14);
        }

        v5 = v21[0];
        v6 = v21[1];
      }

      else if (v13 == 2)
      {
        v4 = v7;
        v5 = 0xD000000000000012;
        v6 = 0x8000000269DAF410;
      }

      else if (v13 == 3)
      {

        v5 = 0xD000000000000014;
        v6 = 0x8000000269DAF3F0;
      }

      else
      {
        v15 = v7;
        v5 = 0xD000000000000010;
        v6 = 0x8000000269DAF3D0;
      }

      ++v2;
      MEMORY[0x26D650930](v5, v6);
      sub_269C9CB74(v7, v8, v9, v10, v11, v20, v13);

      v3 += 48;
      v1 = v18;
      if (v19 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t SectionItem.id.getter()
{
  v1 = v0[41];
  if (v1 <= 1)
  {
    if (v0[41])
    {
      v6 = *v0;
      sub_269D9B000();

      v11[0] = 0xD000000000000011;
      v11[1] = 0x8000000269DAF430;
      v7 = 0xEA0000000000676ELL;
      v8 = 0x696472616F626E6FLL;
      if (v6 != 1)
      {
        v8 = 0x63536567616E616DLL;
        v7 = 0xEE00656C75646568;
      }

      if (v6)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x657078456E69616DLL;
      }

      if (v6)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0xEE0065636E656972;
      }

      MEMORY[0x26D650930](v9, v10);

      MEMORY[0x26D650930](0xD000000000000019, 0x8000000269DAF450);
    }

    else
    {
      v4 = *(v0 + 2);
      v5 = *(v0 + 3);
      strcpy(v11, "promotion - ");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      MEMORY[0x26D650930](v4, v5);
    }

    return v11[0];
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 3)
    {
      v2 = 0xD000000000000010;
    }

    if (v1 == 2)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v2;
    }
  }
}

void sub_269C99A78(void *a1@<X8>)
{
  SectionContent.id.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t AnyTextProvider.stringRepresentation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyTextProvider.stringRepresentation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnyTextProvider.text.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

double sub_269C99B7C@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t sub_269C99B88()
{
  v1 = *v0;

  return v1;
}

uint64_t StaticTextProvider.text.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(v4 + 8))
  {
    sub_269C3EEE8(a1, a2, a3);

    result = sub_269D99960();
    v10 = v9 & 1;
  }

  else
  {
    result = 0;
    v7 = 0;
    v10 = 0;
    v8 = 0;
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v8;
  return result;
}

uint64_t StaticTextProvider.stringRepresentation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_269C99C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(v4 + 8))
  {
    sub_269C3EEE8(a1, a2, a3);

    result = sub_269D99960();
    v10 = v9 & 1;
  }

  else
  {
    result = 0;
    v7 = 0;
    v10 = 0;
    v8 = 0;
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v8;
  return result;
}

uint64_t sub_269C99CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_269D993F0();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D99160();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0);
  v10 = v9 - 8;
  v46 = *(v9 - 8);
  v49 = *(v46 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269D972A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9D634(0);
  v48 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9DC30(0);
  v50 = v23;
  v25 = MEMORY[0x28223BE20](v23, v24);
  v47 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v2, v14, v25);
  v27 = sub_269D99950();
  v29 = v28;
  LOBYTE(v15) = v30;
  v32 = v31;
  v33 = *(v10 + 32);
  v34 = *(v2 + *(v10 + 28)) != 1;
  v45 = v2;
  v35 = *(v2 + v33 + 8);
  v61 = *(v2 + v33);
  v62 = v35;
  sub_269C9D5C8(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E90();
  sub_269D4345C(v34, v58, v59, v60, v27, v29, v15 & 1, v32, v22);

  sub_269C41568(v27, v29, v15 & 1);

  KeyPath = swift_getKeyPath();
  sub_269C9E114(v2, v13, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
  v37 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v38 = swift_allocObject();
  sub_269C9DCFC(v13, v38 + v37);
  v39 = &v22[*(v48 + 36)];
  sub_269C9DB98(0);
  sub_269D98B50();
  *v39 = KeyPath;
  v40 = v51;
  sub_269D99150();
  sub_269C9DDE0();
  v41 = v47;
  sub_269D99BA0();
  (*(v52 + 8))(v40, v53);
  sub_269C9E0B4(v22, sub_269C9D634);
  sub_269C9E114(v45, v13, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
  v42 = swift_allocObject();
  sub_269C9DCFC(v13, v42 + v37);
  v43 = v54;
  sub_269D993E0();
  sub_269D98CD0();

  (*(v56 + 8))(v43, v57);
  return sub_269C9E0B4(v41, sub_269C9DC30);
}

uint64_t sub_269C9A250(uint64_t a1)
{
  v2 = sub_269D98B60();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_269D98FD0();
}

uint64_t sub_269C9A318(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C9A3D4(a1);
  sub_269D98B40();
}

void sub_269C9A3D4(uint64_t a1)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 healthAppHidden];

    if (v4)
    {
      type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0);
      sub_269C9D5C8(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      sub_269D99E80();
    }

    else
    {
      DeepLinkOpener.open(url:completion:)(a1, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269C9A4C0(uint64_t a1)
{
  v2 = sub_269D973D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v21 - v13;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0);
  if (*(a1 + *(v15 + 20)))
  {
    v16 = MEMORY[0x277D62210];
    if (*(a1 + *(v15 + 20)) == 1)
    {
      v16 = MEMORY[0x277D62218];
    }

    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = HKSPSleepURL();

  if (v18)
  {
    sub_269D973B0();

    sub_269D97380();
    v19 = *(v3 + 8);
    v19(v6, v2);
    (*(v3 + 32))(v14, v10, v2);
    sub_269C9A3D4(v14);
    v19(v14, v2);
  }

  else
  {
  }
}

uint64_t SleepDeepLinkTextProvider.text.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  sub_269C9D484(0, &qword_28034F140, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, MEMORY[0x277CE0BD8], MEMORY[0x277CE0330]);
  v66 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v56 - v4;
  v67 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0);
  MEMORY[0x28223BE20](v67, v6);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D97230();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D97240();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_269D97260();
  MEMORY[0x28223BE20](v16 - 8, v17);
  sub_269C9DBCC(0, &qword_28034F148, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v56 - v20;
  sub_269C9CD24(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_269D972A0();
  MEMORY[0x28223BE20](v26, v27);
  v31 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v1;
  v33 = *(v1 + 8);
  v34 = *(v1 + 16);
  if (v34 == 3 || (v57 = v31, v59 = v29, v60 = v28, v70 = v32, v71 = v33, v72 = v34, v35 = sub_269C9AE6C(), !v36))
  {
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v38 = qword_280C0D990;
    v39 = sub_269D972C0();
    v41 = v40;

    v70 = v39;
    v71 = v41;
    sub_269C3EEE8(v42, v43, v44);
    *v5 = sub_269D99960();
    *(v5 + 1) = v45;
    v5[16] = v46 & 1;
    *(v5 + 3) = v47;
    swift_storeEnumTagMultiPayload();
    sub_269C9E17C(&qword_28034F158, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, &unk_269DA3710);
    return sub_269D992D0();
  }

  else
  {
    v58 = v35;
    v37 = sub_269D973D0();
    (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
    (*(v62 + 104))(v15, *MEMORY[0x277CC8BB0], v63);
    (*(v64 + 104))(v11, *MEMORY[0x277CC8B98], v65);
    sub_269D97250();
    sub_269D97290();
    v49 = v59;
    v48 = v60;
    (*(v59 + 56))(v25, 0, 1, v60);
    v50 = v57;
    (*(v49 + 32))(v57, v25, v48);
    v51 = v61;
    (*(v49 + 16))(v61, v50, v48);
    v52 = v67;
    v53 = v51 + *(v67 + 24);
    v69[0] = 0;
    sub_269D99E60();
    v54 = v71;
    *v53 = v70;
    *(v53 + 8) = v54;
    *(v51 + *(v52 + 20)) = v34;
    sub_269C9E114(v51, v5, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
    swift_storeEnumTagMultiPayload();
    sub_269C9E17C(&qword_28034F158, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, &unk_269DA3710);
    sub_269D992D0();
    sub_269C9E438(v51, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
    return (*(v49 + 8))(v50, v48);
  }
}

uint64_t sub_269C9AE6C()
{
  v1 = sub_269D973D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - v8;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return 0;
    }

    v11 = MEMORY[0x277D62210];
  }

  else
  {
    v10 = 0;
    if (!*(v0 + 16))
    {
      goto LABEL_7;
    }

    v11 = MEMORY[0x277D62218];
  }

  v10 = *v11;
LABEL_7:
  v12 = HKSPSleepURL();

  if (!v12)
  {
    return 0;
  }

  sub_269D973B0();

  (*(v2 + 32))(v9, v5, v1);
  v13 = sub_269D97390();
  v15 = v14;
  (*(v2 + 8))(v9, v1);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v16 = qword_280C0D990;
  sub_269D972C0();

  sub_269C9DBCC(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_269D9EBE0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_269C7172C(v17, v18, v19);
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  v20 = sub_269D9A600();

  return v20;
}

uint64_t SleepDeepLinkTextProvider.stringRepresentation.getter()
{
  if (*(v0 + 16) != 3)
  {
    return sub_269C9AE6C();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v1 = qword_280C0D990;
  v2 = sub_269D972C0();

  return v2;
}

unint64_t sub_269C9B230@<X0>(unint64_t *a1@<X8>)
{
  result = SectionItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SectionItem.hash(into:)(uint64_t a1)
{
  SectionItem.id.getter();
  sub_269D9A6A0();
}

uint64_t SectionItem.hashValue.getter()
{
  sub_269D9B350();
  SectionItem.id.getter();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269C9B354()
{
  sub_269D9B350();
  SectionItem.id.getter();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269C9B3D8(uint64_t a1)
{
  SectionItem.id.getter();
  sub_269D9A6A0();
}

uint64_t sub_269C9B44C(uint64_t a1)
{
  sub_269D9B350();
  SectionItem.id.getter();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269C9B4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v9 = *a1;
  v8 = *(a1 + 8);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 41);
  if (v13 <= 1)
  {
    if (*(a1 + 41))
    {
      v44 = &type metadata for DeepLinkOpener;
      v45 = &protocol witness table for DeepLinkOpener;
      LOBYTE(v50) = 0;
      sub_269D99E60();
      v46 = v55;
      v47 = *(&v55 + 1);
      v43[0] = v9;
      v33 = sub_269C9E22C(v43, &v55);
      v58[16] = 1;
      v36 = sub_269C99060(v33, v34, v35);
      sub_269C990B4(v36, v37, v38);
      sub_269D992D0();
      sub_269C9E288(&v50, &v55);
      v58[17] = 0;
      v39 = MEMORY[0x277CE0338];
      sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
      sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v39);
      sub_269C98FB4();
      sub_269C99108();
      sub_269D992D0();
      sub_269C9E318(&v50);
      sub_269C9E114(v48, &v50, sub_269C98C28);
      v54 = 0;
      sub_269C98C28(0);
      sub_269C98CE4(0);
      sub_269C98F34();
      sub_269C9925C();
      sub_269D992D0();
      sub_269C9E438(v48, sub_269C98C28);
      sub_269C9E3A0(v43);
      goto LABEL_14;
    }

    v18 = *(a1 + 40);
    *&v55 = *a1;
    *(&v55 + 1) = v8;
    *&v56 = v11;
    *(&v56 + 1) = v10;
    *&v57 = v12;
    BYTE8(v57) = v18;
    v58[16] = 0;
    v19 = sub_269C99060(isCurrentExecutor, v6, v7);
    sub_269C990B4(v19, v20, v21);

    sub_269D992D0();
    sub_269C9E288(&v50, &v55);
    v58[17] = 0;
    v22 = MEMORY[0x277CE0338];
    sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v22);
    sub_269C98FB4();
    sub_269C99108();
    sub_269D992D0();
    sub_269C9E318(&v50);
  }

  else
  {
    if (v13 == 2)
    {
      LOBYTE(v50) = 0;
      v23 = v4;
      sub_269D99E60();
      v48[0] = v9;
      v48[1] = v55;
      v48[3] = 0;
      v48[4] = 0;
      v48[2] = *(&v55 + 1);
      v49 = 0;
      v24 = sub_269C9E1C4(a1, &v55);
      v27 = sub_269C991B4(v24, v25, v26);
      sub_269C99208(v27, v28, v29);

      sub_269D992D0();
      v55 = v50;
      v56 = v51;
      *&v57 = v52;
      BYTE8(v57) = v53;
      v58[17] = 1;
      v30 = MEMORY[0x277CE0338];
      sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
      sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v30);
      sub_269C98FB4();
      sub_269C99108();
      sub_269D992D0();
      sub_269C9E114(v48, &v50, sub_269C98C28);
      v54 = 0;
      sub_269C98C28(0);
      sub_269C98CE4(0);
      sub_269C98F34();
      sub_269C9925C();
      sub_269D992D0();
      sub_269C9E1FC(a1);

      goto LABEL_11;
    }

    if (v13 != 3)
    {
      type metadata accessor for SleepActivityConfigurationModel(0);
      sub_269C9E17C(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel, &protocol conformance descriptor for SleepActivityConfigurationModel);
      *&v50 = sub_269D98E40();
      *(&v50 + 1) = v31;
      LOBYTE(v51) = v8;
      *(&v51 + 1) = sub_269D98760();
      v52 = v9;
      v54 = 1;
      sub_269C98C28(0);
      sub_269C98CE4(0);
      sub_269C98F34();
      sub_269C9925C();
      v32 = v4;
      sub_269D992D0();
      goto LABEL_14;
    }

    v14 = sub_269C991B4(isCurrentExecutor, v6, v7);
    sub_269C99208(v14, v15, v16);

    sub_269D992D0();
    v55 = v50;
    v56 = v51;
    *&v57 = v52;
    BYTE8(v57) = v53;
    v58[17] = 1;
    v17 = MEMORY[0x277CE0338];
    sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v17);
    sub_269C98FB4();
    sub_269C99108();
    sub_269D992D0();
  }

  sub_269C9E114(v48, &v50, sub_269C98C28);
  v54 = 0;
  sub_269C98C28(0);
  sub_269C98CE4(0);
  sub_269C98F34();
  sub_269C9925C();
  sub_269D992D0();
LABEL_11:
  sub_269C9E438(v48, sub_269C98C28);
LABEL_14:
  v40 = *v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v40;
  *(a2 + 63) = *&v58[15];
  v41 = v56;
  *a2 = v55;
  *(a2 + 16) = v41;
}

void sub_269C9BC7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D6515B0](v3);
  if (v3)
  {
    v4 = (a2 + 73);
    do
    {
      v6 = *(v4 - 41);
      v7 = *(v4 - 33);
      v8 = *(v4 - 25);
      v9 = *(v4 - 17);
      v10 = *(v4 - 9);
      v11 = *v4;
      v15 = *(v4 - 1);
      if (v11 <= 1)
      {
        if (*v4)
        {
          sub_269D9B000();

          if (v6)
          {
            if (v6 == 1)
            {
              v13 = 0x696472616F626E6FLL;
            }

            else
            {
              v13 = 0x63536567616E616DLL;
            }

            if (v6 == 1)
            {
              v14 = 0xEA0000000000676ELL;
            }

            else
            {
              v14 = 0xEE00656C75646568;
            }
          }

          else
          {
            v13 = 0x657078456E69616DLL;
            v14 = 0xEE0065636E656972;
          }

          MEMORY[0x26D650930](v13, v14);

          MEMORY[0x26D650930](0xD000000000000019, 0x8000000269DAF450);
        }

        else
        {
          v12 = sub_269C9CC0C(v6, v7, v8, v9, v10, *(v4 - 1), 0);
          MEMORY[0x26D650930](v8, v9, v12);
        }
      }

      else if (v11 == 3)
      {
      }

      else
      {
        v5 = v6;
      }

      v4 += 48;
      sub_269D9A6A0();

      sub_269C9CB74(v6, v7, v8, v9, v10, v15, v11);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_269C9BF50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SleepStageSegment(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x26D6515B0](v9, v6);
  if (v9)
  {
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_269C9E114(v11, v8, type metadata accessor for SleepStageSegment);
      sub_269D9A6A0();

      sub_269D97010();
      sub_269C9E17C(&qword_280C0BB98, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      sub_269D9A4E0();
      result = sub_269C9E438(v8, type metadata accessor for SleepStageSegment);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t _s13SleepHealthUI11SectionItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 41);
  v86 = v2;
  v87 = v5;
  if (v8 <= 1)
  {
    v85 = *a1;
    if (!*(a1 + 41))
    {
      if (!*(a2 + 41))
      {
        v90[0] = *a1;
        v90[1] = v2;
        v90[2] = v5;
        v90[3] = v4;
        v90[4] = v6;
        v91 = v7;
        v88[0] = v9;
        v88[1] = v10;
        v88[2] = v12;
        v88[3] = v11;
        v88[4] = v13;
        v89 = v14;
        v61 = v14;
        v81 = v14;
        v78 = v13;
        v80 = v9;
        v62 = v9;
        v63 = v4;
        v64 = v6;
        v65 = v13;
        v66 = v7;
        v67 = v2;
        v68 = v3;
        sub_269C9CC0C(v62, v10, v12, v11, v65, v61, 0);
        sub_269C9CC0C(v68, v67, v5, v63, v64, v66, 0);
        sub_269C9CC0C(v68, v67, v5, v63, v64, v66, 0);
        sub_269C9CC0C(v80, v10, v12, v11, v78, v81, 0);
        v45 = _s13SleepHealthUI18PromotionViewModelV2eeoiySbAC_ACtFZ_0(v90, v88);
        sub_269C9CB74(v85, v86, v5, v63, v64, v66, 0);
        sub_269C9CB74(v80, v10, v12, v11, v78, v81, 0);
        sub_269C9CB74(v80, v10, v12, v11, v78, v81, 0);
        sub_269C9CB74(v85, v86, v5, v63, v64, v66, 0);
        return v45 & 1;
      }

      v82 = *(a1 + 40);
      v83 = *(a1 + 32);
      v25 = *a2;
      v26 = *(a1 + 24);

      v27 = v26;
      v9 = v25;

      goto LABEL_40;
    }

    v27 = *(a1 + 24);
    v83 = *(a1 + 32);
    v82 = *(a1 + 40);
    if (v15 != 1)
    {
LABEL_40:
      sub_269C9CC0C(v9, v10, v12, v11, v13, v14, v15);
      sub_269C9CB74(v85, v86, v87, v27, v83, v82, v8);
      v54 = v9;
      v55 = v10;
      v56 = v12;
      v57 = v11;
      v58 = v13;
      v59 = v14;
      v60 = v15;
LABEL_41:
      sub_269C9CB74(v54, v55, v56, v57, v58, v59, v60);
      v45 = 0;
      return v45 & 1;
    }

    v47 = 0xEE0065636E656972;
    v48 = 0x657078456E69616DLL;
    if (v3)
    {
      if (v3 == 1)
      {
        v49 = 0x696472616F626E6FLL;
      }

      else
      {
        v49 = 0x63536567616E616DLL;
      }

      if (v3 == 1)
      {
        v50 = 0xEA0000000000676ELL;
      }

      else
      {
        v50 = 0xEE00656C75646568;
      }

      v51 = *a2;
      if (!*a2)
      {
LABEL_36:
        if (v49 == v48 && v50 == v47)
        {
          v45 = 1;
        }

        else
        {
          v45 = sub_269D9B280();
        }

        sub_269C9CB74(v85, v86, v87, v27, v83, v82, 1u);
        sub_269C9CB74(v9, v10, v12, v11, v13, v14, 1u);
        return v45 & 1;
      }
    }

    else
    {
      v49 = 0x657078456E69616DLL;
      v50 = 0xEE0065636E656972;
      v51 = *a2;
      if (!*a2)
      {
        goto LABEL_36;
      }
    }

    if (v51 == 1)
    {
      v48 = 0x696472616F626E6FLL;
    }

    else
    {
      v48 = 0x63536567616E616DLL;
    }

    if (v51 == 1)
    {
      v47 = 0xEA0000000000676ELL;
    }

    else
    {
      v47 = 0xEE00656C75646568;
    }

    goto LABEL_36;
  }

  if (v8 != 2)
  {
    if (v8 == 3)
    {
      v83 = *(a1 + 32);
      v82 = *(a1 + 40);
      if (v15 == 3)
      {
        if (v3 == v9 && v2 == v10 || (v16 = *(a1 + 24), v17 = *(a1 + 8), v18 = *a1, v19 = sub_269D9B280(), v3 = v18, v4 = v16, (v19 & 1) != 0))
        {
          v20 = v3;
          v84 = v3;
          if (v5 == v12 && v4 == v11 || (v16 = v4, v21 = sub_269D9B280(), v4 = v16, (v21 & 1) != 0))
          {
            v22 = v9;
            v79 = v9;
            v23 = v4;
            sub_269C9CC0C(v22, v10, v12, v11, v13, v14, 3u);
            sub_269C9CC0C(v20, v86, v5, v23, v83, v82, 3u);
            sub_269C9CC0C(v20, v86, v5, v23, v83, v82, 3u);
            sub_269C9CC0C(v79, v10, v12, v11, v13, v14, 3u);
            v77 = sub_269D99CD0();
            sub_269C9CB74(v84, v86, v5, v23, v83, v82, 3u);
            sub_269C9CB74(v79, v10, v12, v11, v13, v14, 3u);
            sub_269C9CB74(v79, v10, v12, v11, v13, v14, 3u);
            sub_269C9CB74(v84, v86, v5, v23, v83, v82, 3u);
            return v77 & 1;
          }

          v75 = v20;
          v76 = v5;
          v71 = v83;
          v72 = v82;
          sub_269C9CC0C(v75, v86, v76, v16, v83, v82, 3u);
          sub_269C9CC0C(v9, v10, v12, v11, v13, v14, 3u);
          v73 = v84;
          v74 = v86;
        }

        else
        {
          v69 = v17;
          v70 = v5;
          v71 = v83;
          v72 = v82;
          sub_269C9CC0C(v18, v69, v70, v16, v83, v82, 3u);
          sub_269C9CC0C(v9, v10, v12, v11, v13, v14, 3u);
          v73 = v18;
          v74 = v86;
        }

        sub_269C9CB74(v73, v74, v87, v16, v71, v72, 3u);
        v54 = v9;
        v55 = v10;
        v56 = v12;
        v57 = v11;
        v58 = v13;
        v59 = v14;
        v60 = 3;
        goto LABEL_41;
      }

      v85 = *a1;
      v52 = *a2;
      v53 = *(a1 + 24);

      v27 = v53;
      v9 = v52;

      goto LABEL_40;
    }

    if (v15 == 4)
    {
      v40 = *a2;
      v41 = *(a1 + 24);
      v42 = *(a1 + 32);
      v43 = *(a1 + 40);
      v44 = *a1;
      sub_269C9CC0C(v3, v2, *(a1 + 16), v4, v6, v43, 4u);
      sub_269C9CC0C(v40, v10, v12, v11, v13, v14, 4u);
      sub_269C9CB74(v44, v86, v87, v41, v42, v43, 4u);
      v33 = v40;
      v34 = v10;
      v35 = v12;
      v36 = v11;
      v37 = v13;
      v38 = v14;
      v39 = 4;
      goto LABEL_19;
    }

LABEL_20:
    v27 = *(a1 + 24);
    v83 = *(a1 + 32);
    v85 = *a1;
    v82 = *(a1 + 40);
    v46 = v3;
    goto LABEL_40;
  }

  if (v15 != 2)
  {
    goto LABEL_20;
  }

  v28 = *a2;
  v29 = *(a1 + 24);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v32 = *a1;
  sub_269C9CC0C(v3, v2, *(a1 + 16), v4, v6, v31, 2u);
  sub_269C9CC0C(v28, v10, v12, v11, v13, v14, 2u);
  sub_269C9CB74(v32, v86, v87, v29, v30, v31, 2u);
  v33 = v28;
  v34 = v10;
  v35 = v12;
  v36 = v11;
  v37 = v13;
  v38 = v14;
  v39 = 2;
LABEL_19:
  sub_269C9CB74(v33, v34, v35, v36, v37, v38, v39);
  v45 = 1;
  return v45 & 1;
}

uint64_t _s13SleepHealthUI14SectionContentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v15 = a2[3];
  v16 = a1[3];
  v10 = a2[4];
  v11 = a2[5];
  if ((sub_269C980F4(a1[6], a2[6]) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (!v9)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v2)
  {
LABEL_11:
    if (!v7)
    {
      goto LABEL_16;
    }

    v12 = 0;
LABEL_32:

    return v12 & 1;
  }

  if (!v7)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_32;
  }

  if (v3 == v8 && v2 == v7)
  {

    goto LABEL_16;
  }

  v13 = sub_269D9B280();

  if (v13)
  {
LABEL_16:
    if (v6)
    {

      if (v11)
      {

        if (v5)
        {
          if (v10)
          {
            if (v16 == v15 && v5 == v10)
            {

              v12 = 1;
            }

            else
            {
              v12 = sub_269D9B280();
            }

            goto LABEL_32;
          }

          goto LABEL_29;
        }

LABEL_26:
        if (v10)
        {
          v12 = 0;
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      if (v5)
      {
LABEL_29:
        v12 = 0;
        goto LABEL_32;
      }
    }

    else if (v11)
    {

      goto LABEL_26;
    }

LABEL_30:
    v12 = 1;
    return v12 & 1;
  }

LABEL_23:
  v12 = 0;
  return v12 & 1;
}

void sub_269C9CB74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3)
    {
      if (a7 != 4)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if (a7)
  {
    if (a7 != 2)
    {
      return;
    }

LABEL_4:

    return;
  }
}

double sub_269C9CC0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3)
    {
      if (a7 != 4)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else
  {
    if (a7)
    {
      if (a7 != 2)
      {
        return result;
      }

LABEL_4:

      v7 = a1;
      return result;
    }
  }

  return result;
}

uint64_t type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(uint64_t a1)
{
  result = qword_28034F1B0;
  if (!qword_28034F1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_269C9CD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F160;
  if (!qword_28034F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F160);
  }

  return result;
}

unint64_t sub_269C9CDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F168;
  if (!qword_28034F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F168);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepActivityConfigurationSectionBuilder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SleepActivityConfigurationSectionBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SleepHealthUI15AnyTextProviderVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_269C9CEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_269C9CF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269C9CF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269C9CFE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269C9D05C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_269C9D0B8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269C9D148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_269C9D190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_269C9D1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

void sub_269C9D268(uint64_t a1)
{
  if (!qword_28034F178)
  {
    sub_269C9D5C8(255, &qword_28034F088, &type metadata for SectionItem, MEMORY[0x277D83940]);
    sub_269C98B8C(255);
    sub_269C98DAC();
    v1 = sub_269D9A0A0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F178);
    }
  }
}

uint64_t sub_269C9D324(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269C9D5C8(255, a2, a3, MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269C9D39C()
{
  result = qword_28034F1A0;
  if (!qword_28034F1A0)
  {
    sub_269C9D484(255, &qword_28034F1A8, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    sub_269C9E17C(&qword_28034F158, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, &unk_269DA3710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F1A0);
  }

  return result;
}

void sub_269C9D484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_269C9D518(uint64_t a1)
{
  sub_269D972A0();
  if (v1 <= 0x3F)
  {
    sub_269C9D5C8(319, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269C9D5C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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