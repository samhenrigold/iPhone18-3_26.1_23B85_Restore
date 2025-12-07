uint64_t sub_21D9CB054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_21D1074E8(a3, &v10 - v6, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
  v8 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_21D9C50E0(a2, v7);
  return sub_21D0CF7E0(v7, &unk_27CE60DA0, &unk_21DC0C0C0);
}

void sub_21D9CB16C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;
  sub_21DBF8E0C();
  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_21D1074E8(*(a2 + 48) + *(v4 + 72) * (v13 | (v12 << 6)), v6, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21D9C6FDC(v6);
    sub_21D9D9170(v6, type metadata accessor for TTRRecurrenceRuleModel);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(a2 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_21D9CB324(void *a1)
{
  v3 = [*(v1 + 16) assignmentContext];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 assignments];
    sub_21D0D8CF0(0, &qword_27CE59850, 0x277D44598);
    sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850, 0x277D44598);
    v5 = sub_21DBFAAAC();

    LOBYTE(v4) = sub_21D1E22D8(a1, v5);

    if (v4)
    {
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v6 = sub_21DBF84BC();
      __swift_project_value_buffer(v6, qword_280D0F2C0);
      v7 = sub_21DBF84AC();
      v8 = sub_21DBFAE9C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_21D0C9000, v7, v8, "Ignoring add(assignment:) because the assignment has already been added", v9, 2u);
        MEMORY[0x223D46520](v9, -1, -1);
      }
    }

    else
    {
      [v12 addAssignment_];
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      v11 = a1;
      sub_21D182E74(sub_21D9D974C, v10);
    }
  }
}

void sub_21D9CB53C(void *a1, uint64_t a2, id a3, char a4)
{
  v5 = off_282EEAE50;
  v6 = sub_21D0D8CF0(0, &qword_280D0C218, 0x277D447B8);
  v7 = v5(v6, &protocol witness table for REMReminderHashtagContextChangeItem);
  v8 = v7 & 0xC000000000000001;
  if ((a4 & 1) == 0)
  {
    if (v8)
    {
      swift_unknownObjectRetain();
      sub_21DBFBD1C();
      sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
      sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
      sub_21DBFAB5C();
      v14 = v52;
      v15 = v53;
      v16 = v54;
      v17 = v55;
      v18 = v56;
    }

    else
    {
      v32 = -1 << *(v7 + 32);
      v15 = v7 + 56;
      v16 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v18 = v34 & *(v7 + 56);
      v17 = 0;
      v14 = sub_21DBF8E0C();
    }

    v47 = v16;
    v35 = (v16 + 64) >> 6;
    while (1)
    {
      if (v14 < 0)
      {
        if (!sub_21DBFBDBC() || (sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648), swift_dynamicCast(), v40 = v51, v38 = v17, v39 = v18, !v51))
        {
LABEL_46:
          v31 = v14;
          goto LABEL_47;
        }
      }

      else
      {
        v36 = v17;
        v37 = v18;
        v38 = v17;
        if (!v18)
        {
          while (1)
          {
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v38 >= v35)
            {
              goto LABEL_46;
            }

            v37 = *(v15 + 8 * v38);
            ++v36;
            if (v37)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }

LABEL_36:
        v39 = (v37 - 1) & v37;
        v40 = *(*(v14 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
        if (!v40)
        {
          goto LABEL_46;
        }
      }

      v41 = [v40 name];
      v42 = sub_21DBFA16C();
      v44 = v43;

      if (v42 == a1 && v44 == a2)
      {
      }

      else
      {
        v46 = sub_21DBFC64C();

        if ((v46 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if ([v40 type] == a3)
      {
        v31 = v14;
        goto LABEL_47;
      }

LABEL_30:

      v17 = v38;
      v18 = v39;
    }
  }

  if (v8)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
    sub_21DBFAB5C();
    v10 = v52;
    v9 = v53;
    v11 = v54;
    v12 = v55;
    v13 = v56;
  }

  else
  {
    v19 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v11 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v13 = v21 & *(v7 + 56);
    v12 = 0;
    v10 = sub_21DBF8E0C();
  }

  v22 = (v11 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v23 = v12;
  v24 = v13;
  for (i = v12; !v24; ++v23)
  {
    i = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_51;
    }

    if (i >= v22)
    {
      goto LABEL_22;
    }

    v24 = *(v9 + 8 * i);
  }

  v26 = (v24 - 1) & v24;
  v27 = *(*(v10 + 48) + ((i << 9) | (8 * __clz(__rbit64(v24)))));
  if (v27)
  {
    while (1)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v28 = [v27 objectID];
      v29 = [a1 objectID];
      v30 = sub_21DBFB63C();

      if (v30)
      {
        break;
      }

      v12 = i;
      v13 = v26;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (sub_21DBFBDBC())
      {
        sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
        swift_dynamicCast();
        v27 = v51;
        i = v12;
        v26 = v13;
        if (v51)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v31 = v10;
  }

  else
  {
LABEL_22:
    v31 = v10;
  }

LABEL_47:
  sub_21D0CFAF8(v31);
}

uint64_t sub_21D9CBA60(uint64_t a1, void *a2, char a3)
{
  v10 = 0;
  v11 = 0;
  v9 = a2;
  v12 = 1;
  v4 = a2;
  v5 = sub_21D9C7BBC(&v9, a3);
  v7 = v6;
  sub_21D24B434(v9, v10, v11, v12);
  if (!v5)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_21D9CBAD8(void *a1, void *a2)
{
  if ([a1 type] != 1)
  {
    return 0;
  }

  v5 = *(v2 + 16);
  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    if ([a1 type] == 1)
    {
      v47 = v2;
      v48 = a2;
      v8 = swift_allocObject();
      *(v8 + 16) = MEMORY[0x277D84F90];
      v9 = [a1 objectIdentifier];
      v10 = sub_21DBFA16C();
      v12 = v11;

      v13 = [v7 string];
      v14 = sub_21DBFA16C();
      v16 = v15;

      v17 = MEMORY[0x223D42B30](v14, v16);

      v18 = swift_allocObject();
      v18[2] = v10;
      v18[3] = v12;
      v18[4] = v8;
      v54 = sub_21D9D9744;
      v55 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_21D472974;
      v53 = &block_descriptor_209_0;
      v19 = _Block_copy(&aBlock);

      [v7 rem:0 enumerateHashtagInRange:v17 options:0 usingBlock:v19];
      _Block_release(v19);
      swift_beginAccess();
      if (*(*(v8 + 16) + 16))
      {
        a2 = v48;
        v20 = v48;
        v21 = sub_21D479BC4(v7, (v8 + 16), v48);

        v22 = sub_21D9CA3E0(v21, 0, 1);
      }

      else
      {

        v22 = 0;
        a2 = v48;
      }
    }

    else
    {

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [v5 notes];
  if (!v23)
  {
    goto LABEL_15;
  }

  v24 = v23;
  if ([a1 type] != 1)
  {

LABEL_15:
    v40 = 0;
    goto LABEL_16;
  }

  v49 = a2;
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F90];
  v26 = [a1 objectIdentifier];
  v27 = sub_21DBFA16C();
  v29 = v28;

  v30 = [v24 string];
  v31 = sub_21DBFA16C();
  v33 = v32;

  v34 = MEMORY[0x223D42B30](v31, v33);

  v35 = swift_allocObject();
  v35[2] = v27;
  v35[3] = v29;
  v35[4] = v25;
  v54 = sub_21D9D8FD0;
  v55 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_21D472974;
  v53 = &block_descriptor_201_0;
  v36 = _Block_copy(&aBlock);

  [v24 rem:0 enumerateHashtagInRange:v34 options:0 usingBlock:v36];
  _Block_release(v36);
  swift_beginAccess();
  if (!*(*(v25 + 16) + 16))
  {

    goto LABEL_15;
  }

  v37 = v49;
  v38 = sub_21D479BC4(v24, (v25 + 16), v49);

  v39 = v38;
  v40 = sub_21D9C7928(v38);

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64910, &qword_21DC34FC8);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21DC08D20;
  *(v41 + 32) = v22;
  *(v41 + 40) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
  v42 = swift_allocObject();
  v56 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64888, &unk_21DC34BF0);
  sub_21D0D0F1C(&qword_280D0C3F8, &qword_27CE64888, &unk_21DC34BF0, MEMORY[0x277D83970]);
  v43 = sub_21DBFA41C();

  if (v43 >> 62)
  {
    v44 = sub_21DBFBD7C();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v44)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    result = v42;
    *(v42 + 16) = sub_21D9D978C;
    *(v42 + 24) = v45;
    return result;
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_21D9CC104(void **a1, uint64_t a2, void *a3, char a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8)
  {
    v15 = v7;
    v9 = *(v8 + 16);

    v9(&v15);
  }

  v16 = 0;
  v17 = 0;
  v15 = a3;
  v18 = 1;
  v10 = a3;
  v11 = sub_21D9D7AEC(&v15, a4 & 1);
  v13 = v12;
  sub_21D24B434(v15, v16, v17, v18);
  if (!v11)
  {
    return 0;
  }

  return v13;
}

void *sub_21D9CC1E4(void **a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    v14 = *a1;
    (*(a2 + 16))(&v14);
  }

  v15 = 0;
  v16 = 0;
  v14 = a3;
  v17 = 1;
  v11 = 0;
  v12 = 0;
  v10 = a4;
  v13 = 1;
  v6 = a3;
  v7 = a4;
  v8 = sub_21D9C7D50(&v14, &v10, 1);
  sub_21D24B434(v10, v11, v12, v13);
  sub_21D24B434(v14, v15, v16, v17);
  return v8;
}

void sub_21D9CC298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v12 = [a1 objectIdentifier];
    v13 = sub_21DBFA16C();
    v15 = v14;

    if (v13 == a5 && v15 == a6)
    {
    }

    else
    {
      v17 = sub_21DBFC64C();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    swift_beginAccess();
    v18 = *(a7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 16) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_21D211158(0, *(v18 + 2) + 1, 1, v18);
      *(a7 + 16) = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_21D211158((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[16 * v21];
    *(v22 + 4) = a2;
    *(v22 + 5) = a3;
    *(a7 + 16) = v18;
  }
}

uint64_t TTRReminderEditor.deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80, &unk_21DC093F0);

  return v0;
}

uint64_t TTRReminderEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80, &unk_21DC093F0);

  return swift_deallocClassInstance();
}

id static TTRReminderEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

void sub_21D9CC4B0(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, char a5@<W3>)
{
  v7 = *a1;
  v8 = sub_21D9D6AE0(*a1, a2, a4, a5);

  *a3 = v8;
}

id static TTRReminderEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedReminderChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateReminder_];

  return v2;
}

id static TTRReminderEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id sub_21D9CC5C4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21D9D7A2C(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D9CC5F4(void *a1, id a2)
{
  v2 = [a2 _trackedReminderChangeItemForObjectID_];

  return v2;
}

id sub_21D9CC634(void *a1, id a2)
{
  v2 = [a2 updateReminder_];

  return v2;
}

uint64_t sub_21D9CC6A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>)
{
  result = _s15RemindersUICore17TTRReminderEditorC10changeItem11undoContextACSo017REMReminderChangeF0C_AA07TTRUndoH0_pSgtcfC_0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t TTRReminderEditor.AllDayColloquialDateType.init(dueDateComponents:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v5 = sub_21DBF5A2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_21DBF563C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  v17 = *(v6 + 8);
  v17(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE58D68, &unk_21DC0C060);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F2C0);
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAEBC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to extract date from due date components when checking for colloquial date type", v21, 2u);
      MEMORY[0x223D46520](v21, -1, -1);
    }

    (*(v13 + 8))(a2, v12);
    v22 = sub_21DBF509C();
    result = (*(*(v22 - 8) + 8))(a1, v22);
    v24 = 4;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v25 = sub_21DBF589C();
    v17(v8, v5);
    if (v25)
    {
      v26 = *(v13 + 8);
      v26(a2, v12);
      v27 = sub_21DBF509C();
      (*(*(v27 - 8) + 8))(a1, v27);
      result = (v26)(v15, v12);
      v24 = 2;
    }

    else
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v28 = sub_21DBF590C();
      v17(v8, v5);
      if (v28)
      {
        v29 = *(v13 + 8);
        v29(a2, v12);
        v30 = sub_21DBF509C();
        (*(*(v30 - 8) + 8))(a1, v30);
        result = (v29)(v15, v12);
        v24 = 3;
      }

      else
      {
        type metadata accessor for TTRReminderEditor();
        sub_21D9CCBE4(v15, a2, &v34);
        v31 = *(v13 + 8);
        v31(a2, v12);
        v32 = sub_21DBF509C();
        (*(*(v32 - 8) + 8))(a1, v32);
        result = (v31)(v15, v12);
        if (v34 == 2)
        {
          v24 = 4;
        }

        else
        {
          v24 = v34 & 1;
        }
      }
    }
  }

  *v33 = v24;
  return result;
}

uint64_t sub_21D9CCBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v132 = a2;
  v134 = a3;
  v131 = sub_21DBF58EC();
  v135 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A0C();
  v127 = *(v5 - 8);
  v128 = v5;
  MEMORY[0x28223BE20](v5);
  v126 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v120 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v121 = &v103 - v10;
  v129 = sub_21DBF563C();
  v125 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v119 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v103 - v13;
  MEMORY[0x28223BE20](v14);
  v118 = &v103 - v15;
  v16 = sub_21DBF4D0C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v113 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = &v103 - v20;
  MEMORY[0x28223BE20](v21);
  v114 = &v103 - v22;
  MEMORY[0x28223BE20](v23);
  v122 = &v103 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610, &unk_21DC34BE0);
  MEMORY[0x28223BE20](v25 - 8);
  v115 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v103 - v28;
  MEMORY[0x28223BE20](v30);
  v117 = &v103 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v103 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v103 - v36;
  v38 = sub_21DBF5A2C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v103 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v116 = a1;
  sub_21DBF595C();
  v133 = v17;
  v42 = *(v17 + 48);
  if (v42(v37, 1, v16) == 1)
  {
    (*(v39 + 8))(v41, v38);
    v43 = &qword_27CE5C610;
    v44 = &unk_21DC34BE0;
    v45 = v37;
LABEL_16:
    result = sub_21D0CF7E0(v45, v43, v44);
    v90 = 2;
    goto LABEL_17;
  }

  v111 = v38;
  v112 = v39;
  sub_21D0CF7E0(v37, &qword_27CE5C610, &unk_21DC34BE0);
  sub_21DBF595C();
  v46 = v42(v34, 1, v16);
  v47 = MEMORY[0x277CC98E8];
  v48 = v16;
  v109 = v42;
  v110 = v16;
  if (v46 == 1)
  {
    sub_21D0CF7E0(v34, &qword_27CE5C610, &unk_21DC34BE0);
  }

  else
  {
    v108 = v29;
    v49 = *(v133 + 32);
    v50 = v122;
    v105 = v133 + 32;
    v104 = v49;
    v49(v122, v34, v16);
    v52 = v126;
    v51 = v127;
    v53 = v128;
    (*(v127 + 104))(v126, *MEMORY[0x277CC9968], v128);
    v54 = v124;
    sub_21DBF4CCC();
    v55 = v121;
    sub_21DBF599C();
    v56 = v125;
    v57 = *(v125 + 8);
    v58 = v129;
    v107 = v125 + 8;
    v106 = v57;
    v57(v54, v129);
    (*(v51 + 8))(v52, v53);
    if ((*(v56 + 48))(v55, 1, v58) == 1)
    {
      v59 = v110;
      (*(v133 + 8))(v50, v110);
      sub_21D0CF7E0(v55, &qword_27CE58D68, &unk_21DC0C060);
      v48 = v59;
      v42 = v109;
      v29 = v108;
    }

    else
    {
      v60 = v118;
      (*(v56 + 32))(v118, v55, v58);
      v61 = v135;
      v63 = v130;
      v62 = v131;
      (*(v135 + 104))(v130, *MEMORY[0x277CC98E8], v131);
      v64 = v117;
      sub_21DBF587C();
      (*(v61 + 8))(v63, v62);
      v48 = v110;
      v65 = v109(v64, 1, v110);
      v29 = v108;
      if (v65 != 1)
      {
        v91 = v114;
        v104(v114, v64, v48);
        v92 = v122;
        if (sub_21DBF4CEC())
        {
          v93 = *(v133 + 8);
          v93(v91, v48);
          v106(v60, v129);
          v93(v92, v48);
          result = (*(v112 + 8))(v41, v111);
          v90 = 0;
          goto LABEL_17;
        }

        v100 = sub_21DBF4CEC();
        v101 = *(v133 + 8);
        v101(v91, v48);
        v106(v60, v129);
        v101(v92, v48);
        result = (*(v112 + 8))(v41, v111);
        goto LABEL_24;
      }

      v106(v60, v129);
      (*(v133 + 8))(v122, v48);
      sub_21D0CF7E0(v64, &qword_27CE5C610, &unk_21DC34BE0);
      v42 = v109;
    }

    v47 = MEMORY[0x277CC98E8];
  }

  v66 = *v47;
  v67 = v135;
  v68 = *(v135 + 104);
  v69 = v130;
  v70 = v131;
  LODWORD(v122) = v66;
  v121 = v68;
  (v68)(v130);
  sub_21DBF587C();
  v71 = *(v67 + 8);
  v135 = v67 + 8;
  v71(v69, v70);
  if (v42(v29, 1, v48) == 1)
  {
    (*(v112 + 8))(v41, v111);
    v43 = &qword_27CE5C610;
    v44 = &unk_21DC34BE0;
    v45 = v29;
    goto LABEL_16;
  }

  v118 = v71;
  v72 = *(v133 + 32);
  v117 = (v133 + 32);
  v114 = v72;
  (v72)(v123, v29, v48);
  v74 = v126;
  v73 = v127;
  v75 = v128;
  (*(v127 + 104))(v126, *MEMORY[0x277CC9968], v128);
  v76 = v124;
  sub_21DBF4CCC();
  v77 = v120;
  sub_21DBF599C();
  v78 = v125;
  v79 = *(v125 + 8);
  v80 = v129;
  v132 = v125 + 8;
  v124 = v79;
  (v79)(v76, v129);
  (*(v73 + 8))(v74, v75);
  v81 = (*(v78 + 48))(v77, 1, v80);
  v82 = v111;
  if (v81 == 1)
  {
    (*(v133 + 8))(v123, v110);
    (*(v112 + 8))(v41, v82);
    v43 = &qword_27CE58D68;
    v44 = &unk_21DC0C060;
    v45 = v77;
    goto LABEL_16;
  }

  v83 = v77;
  v84 = v119;
  (*(v78 + 32))(v119, v83, v80);
  v85 = v130;
  v86 = v131;
  (v121)(v130, v122, v131);
  v87 = v115;
  sub_21DBF587C();
  (v118)(v85, v86);
  v88 = v110;
  if (v109(v87, 1, v110) == 1)
  {
    (v124)(v84, v80);
    (*(v133 + 8))(v123, v88);
    (*(v112 + 8))(v41, v82);
    v43 = &qword_27CE5C610;
    v44 = &unk_21DC34BE0;
    v45 = v87;
    goto LABEL_16;
  }

  v94 = v113;
  (v114)(v113, v87, v88);
  v95 = v123;
  v96 = sub_21DBF4CEC();
  v97 = v133;
  v98 = v112;
  if (v96)
  {
    v99 = *(v133 + 8);
    v99(v94, v88);
    (v124)(v119, v129);
    v99(v95, v88);
    result = (*(v98 + 8))(v41, v82);
    v90 = 0;
    goto LABEL_17;
  }

  v100 = sub_21DBF4CEC();
  v102 = *(v97 + 8);
  v102(v94, v88);
  (v124)(v119, v129);
  v102(v95, v88);
  result = (*(v98 + 8))(v41, v82);
LABEL_24:
  if (v100)
  {
    v90 = 1;
  }

  else
  {
    v90 = 2;
  }

LABEL_17:
  *v134 = v90;
  return result;
}

BOOL static TTRReminderEditor.AllDayColloquialDateType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t static TTRReminderEditor.startOfWeekDate(now:)@<X0>(uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_21DBF4D0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21DBF58EC();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610, &unk_21DC34BE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v33 = sub_21DBF5A2C();
  v18 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v31 = v4;
  v32 = v3;
  (*(v4 + 56))(v17, 1, 1, v3);
  if (sub_21DBF58FC())
  {
    sub_21DBF595C();
  }

  else
  {
    v21 = v29;
    (*(v6 + 104))(v8, *MEMORY[0x277CC98E8], v29);
    sub_21DBF587C();
    (*(v6 + 8))(v8, v21);
  }

  sub_21D0CF7E0(v17, &qword_27CE5C610, &unk_21DC34BE0);
  sub_21D0D523C(v14, v17, &qword_27CE5C610, &unk_21DC34BE0);
  sub_21D0D3954(v17, v11, &qword_27CE5C610, &unk_21DC34BE0);
  v23 = v31;
  v22 = v32;
  if ((*(v31 + 48))(v11, 1, v32) == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE5C610, &unk_21DC34BE0);
    (*(v18 + 8))(v20, v33);
    sub_21D0CF7E0(v11, &qword_27CE5C610, &unk_21DC34BE0);
    v24 = 1;
    v25 = v34;
  }

  else
  {
    v26 = v30;
    (*(v23 + 32))(v30, v11, v22);
    v25 = v34;
    sub_21DBF4CCC();
    (*(v23 + 8))(v26, v22);
    sub_21D0CF7E0(v17, &qword_27CE5C610, &unk_21DC34BE0);
    (*(v18 + 8))(v20, v33);
    v24 = 0;
  }

  v27 = sub_21DBF563C();
  return (*(*(v27 - 8) + 56))(v25, v24, 1, v27);
}

uint64_t TTRReminderEditor.WeekendType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D9CDF64@<X0>(uint64_t a2@<X8>)
{
  v109 = a2;
  v2 = sub_21DBF5A0C();
  v100 = *(v2 - 8);
  v101 = v2;
  MEMORY[0x28223BE20](v2);
  v99 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = &v77 - v5;
  v103 = sub_21DBF563C();
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v93 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64870, &qword_21DC34BB8);
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v102 = &v77 - v10;
  v11 = sub_21DBF58EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610, &unk_21DC34BE0);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v104 = &v77 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v24 = sub_21DBF4D0C();
  v106 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v84 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v94 = &v77 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - v29;
  v31 = sub_21DBF5A2C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v35 = *(v12 + 104);
  v87 = *MEMORY[0x277CC98E8];
  v88 = v12 + 104;
  v86 = v35;
  v35(v14);
  sub_21DBF587C();
  v36 = *(v12 + 8);
  v89 = v14;
  v37 = v14;
  v38 = v106;
  v91 = v11;
  v90 = v12 + 8;
  v85 = v36;
  v36(v37, v11);
  v39 = *(v38 + 48);
  if (v39(v23, 1, v24) != 1)
  {
    v95 = v32;
    v81 = v31;
    v46 = *(v38 + 32);
    v82 = v30;
    v80 = v46;
    v46(v30, v23, v24);
    v47 = v104;
    sub_21DBF595C();
    v83 = v24;
    v79 = v39;
    if (v39(v47, 1, v24) == 1)
    {
      v77 = v38 + 32;
      sub_21D0CF7E0(v47, &qword_27CE5C610, &unk_21DC34BE0);
      v49 = v99;
      v48 = v100;
      v50 = *(v100 + 104);
      LODWORD(v104) = *MEMORY[0x277CC9968];
      v51 = v101;
      v78 = v50;
      v50(v99);
      v52 = v98;
      sub_21DBF599C();
      v100 = *(v48 + 8);
      (v100)(v49, v51);
      v53 = v103;
      v54 = (*(v105 + 48))(v52, 1, v103);
      v55 = v95;
      if (v54 == 1)
      {
        (*(v38 + 8))(v82, v83);
        (*(v55 + 8))(v34, v81);
        v40 = &qword_27CE58D68;
        v41 = &unk_21DC0C060;
        v42 = v52;
        goto LABEL_3;
      }

      v63 = v97;
      (*(v105 + 32))(v97, v52, v53);
      v78(v49, v104, v51);
      v64 = v96;
      sub_21DBF588C();
      (v100)(v49, v51);
      v57 = v83;
      v65 = v34;
      if (v79(v64, 1, v83) == 1)
      {
        (*(v105 + 8))(v63, v53);
        (*(v38 + 8))(v82, v57);
        (*(v95 + 8))(v34, v81);
LABEL_12:
        v40 = &qword_27CE5C610;
        v41 = &unk_21DC34BE0;
        v42 = v64;
        goto LABEL_3;
      }

      v66 = v94;
      v59 = v80;
      v80(v94, v64, v57);
      v67 = sub_21DBF4CFC();
      *v68 = *v68 + -1.0;
      v67(v110, 0);
      v69 = v82;
      if (sub_21DBF4CBC())
      {
        v70 = v93;
        sub_21DBF4CCC();
        v71 = v89;
        v72 = v91;
        v86(v89, v87, v91);
        v64 = v92;
        sub_21DBF587C();
        v85(v71, v72);
        v104 = v65;
        v73 = *(v105 + 8);
        v74 = v103;
        v73(v70, v103);
        v75 = *(v38 + 8);
        v75(v94, v57);
        v73(v97, v74);
        v75(v69, v57);
        (*(v95 + 8))(v104, v81);
        if (v79(v64, 1, v57) == 1)
        {
          goto LABEL_12;
        }

        v76 = v84;
        v59 = v80;
        v80(v84, v64, v57);
        v56 = 1;
        v58 = v76;
        v45 = v108;
      }

      else
      {
        (*(v38 + 8))(v66, v57);
        (*(v105 + 8))(v97, v103);
        (*(v95 + 8))(v65, v81);
        v56 = 0;
        v45 = v108;
        v58 = v69;
      }
    }

    else
    {
      (*(v95 + 8))(v34, v81);
      sub_21D0CF7E0(v47, &qword_27CE5C610, &unk_21DC34BE0);
      v56 = 1;
      v45 = v108;
      v57 = v83;
      v58 = v82;
      v59 = v80;
    }

    v60 = v102;
    v59(v102, v58, v57);
    *(v60 + *(v45 + 48)) = v56;
    v61 = v109;
    sub_21D0D523C(v60, v109, &qword_27CE64870, &qword_21DC34BB8);
    v44 = v61;
    v43 = 0;
    return (*(v107 + 56))(v44, v43, 1, v45);
  }

  (*(v32 + 8))(v34, v31);
  v40 = &qword_27CE5C610;
  v41 = &unk_21DC34BE0;
  v42 = v23;
LABEL_3:
  sub_21D0CF7E0(v42, v40, v41);
  v43 = 1;
  v45 = v108;
  v44 = v109;
  return (*(v107 + 56))(v44, v43, 1, v45);
}

uint64_t sub_21D9CEAC0(uint64_t a1, char *a2)
{
  v389 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v375 = &v325 - v4;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0, &unk_21DC18EA0);
  MEMORY[0x28223BE20](v388);
  v396 = &v325 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648B0, &qword_21DC34C20);
  MEMORY[0x28223BE20](v6 - 8);
  v399 = &v325 - v7;
  v394 = sub_21DBF7E0C();
  v400 = *(v394 - 8);
  MEMORY[0x28223BE20](v394);
  v378 = &v325 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v393 = &v325 - v10;
  v366 = sub_21DBF7DAC();
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v362 = &v325 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v361 = &v325 - v13;
  v364 = sub_21DBF7DCC();
  v363 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v360 = &v325 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_21DBF563C();
  v380 = *(v379 - 8);
  MEMORY[0x28223BE20](v379);
  v350 = &v325 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v348 = &v325 - v17;
  MEMORY[0x28223BE20](v18);
  v356 = &v325 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64900, &qword_21DC34FB8);
  MEMORY[0x28223BE20](v20 - 8);
  v352 = &v325 - v21;
  v358 = sub_21DBF7D8C();
  v357 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v355 = &v325 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = sub_21DBF5C4C();
  v382 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v370 = &v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v340 = &v325 - v25;
  MEMORY[0x28223BE20](v26);
  v330 = &v325 - v27;
  MEMORY[0x28223BE20](v28);
  v332 = &v325 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v30 - 8);
  v374 = &v325 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v381 = &v325 - v33;
  MEMORY[0x28223BE20](v34);
  v344 = &v325 - v35;
  MEMORY[0x28223BE20](v36);
  v349 = &v325 - v37;
  MEMORY[0x28223BE20](v38);
  v333 = &v325 - v39;
  MEMORY[0x28223BE20](v40);
  v341 = &v325 - v41;
  MEMORY[0x28223BE20](v42);
  v342 = &v325 - v43;
  MEMORY[0x28223BE20](v44);
  v343 = &v325 - v45;
  v46 = sub_21DBF509C();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v371 = &v325 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v397 = &v325 - v50;
  MEMORY[0x28223BE20](v51);
  v377 = &v325 - v52;
  MEMORY[0x28223BE20](v53);
  v339 = &v325 - v54;
  MEMORY[0x28223BE20](v55);
  v329 = &v325 - v56;
  MEMORY[0x28223BE20](v57);
  v331 = &v325 - v58;
  MEMORY[0x28223BE20](v59);
  v373 = &v325 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v61 - 8);
  v347 = &v325 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v345 = &v325 - v64;
  MEMORY[0x28223BE20](v65);
  v390 = &v325 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648C8, &unk_21DC40310);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v325 - v68;
  v70 = sub_21DBF7DEC();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v384 = &v325 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v75 = &v325 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v76 - 8);
  v387 = &v325 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v395 = &v325 - v79;
  MEMORY[0x28223BE20](v80);
  v386 = &v325 - v81;
  MEMORY[0x28223BE20](v82);
  v368 = &v325 - v83;
  MEMORY[0x28223BE20](v84);
  v369 = &v325 - v85;
  MEMORY[0x28223BE20](v86);
  v367 = &v325 - v87;
  MEMORY[0x28223BE20](v88);
  v385 = &v325 - v89;
  MEMORY[0x28223BE20](v90);
  v383 = &v325 - v91;
  MEMORY[0x28223BE20](v92);
  v94 = &v325 - v93;
  MEMORY[0x28223BE20](v95);
  v335 = &v325 - v96;
  MEMORY[0x28223BE20](v97);
  v336 = &v325 - v98;
  MEMORY[0x28223BE20](v99);
  v337 = &v325 - v100;
  MEMORY[0x28223BE20](v101);
  v327 = &v325 - v102;
  MEMORY[0x28223BE20](v103);
  v328 = &v325 - v104;
  MEMORY[0x28223BE20](v105);
  v338 = &v325 - v106;
  MEMORY[0x28223BE20](v107);
  v334 = &v325 - v108;
  MEMORY[0x28223BE20](v109);
  v391 = &v325 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v325 - v112;
  MEMORY[0x28223BE20](v114);
  v116 = &v325 - v115;
  MEMORY[0x28223BE20](v117);
  v351 = &v325 - v118;
  MEMORY[0x28223BE20](v119);
  v346 = &v325 - v120;
  v122 = MEMORY[0x28223BE20](v121);
  v403 = &v325 - v123;
  v404 = v47;
  v124 = *(v47 + 56);
  v398 = v46;
  v401 = v47 + 56;
  v402 = v124;
  v124(v122);
  v392 = a1;
  sub_21DBF7F5C();
  v125 = &selRef__setContentViewMarginType_;
  v376 = (*(v71 + 48))(v69, 1, v70);
  if (v376 != 1)
  {
    (*(v71 + 32))(v75, v69, v70);
    v359 = *(v405 + 16);
    v133 = [v359 displayDate];
    if (v133)
    {
      v134 = v133;
      v135 = [v133 date];

      v136 = v390;
      sub_21DBF55FC();

      v137 = 0;
    }

    else
    {
      v137 = 1;
      v136 = v390;
    }

    v138 = v379;
    v380[7](v136, v137, 1, v379);
    v139 = v384;
    (*(v71 + 16))(v384, v75, v70);
    v140 = (*(v71 + 88))(v139, v70);
    v141 = v140 == *MEMORY[0x277D45850];
    v354 = v70;
    v353 = v71;
    v326 = v75;
    if (!v141)
    {
      if (v140 != *MEMORY[0x277D45858])
      {
        if (v140 == *MEMORY[0x277D45840])
        {
          v153 = v384;
          (*(v71 + 96))(v384, v70);
          v154 = v363;
          v155 = v360;
          v156 = v364;
          (*(v363 + 32))(v360, v153, v364);
          v157 = v361;
          sub_21DBF7DBC();
          v158 = v365;
          v159 = v362;
          v160 = v366;
          (*(v365 + 104))(v362, *MEMORY[0x277D45828], v366);
          sub_21D9D77FC(&qword_27CE64908, 255, MEMORY[0x277D45830], MEMORY[0x277D45838]);
          LOBYTE(v153) = sub_21DBFA10C();
          v161 = *(v158 + 8);
          v161(v159, v160);
          v161(v157, v160);
          v162 = (v153 & 1) == 0;
          v136 = v390;
          v142 = v391;
          sub_21D9D1B94(v162, v389, v390, v405, v391);
          (*(v154 + 8))(v155, v156);
          goto LABEL_10;
        }

        if (v140 != *MEMORY[0x277D45820] && v140 != *MEMORY[0x277D45810])
        {
          if (v140 != *MEMORY[0x277D45818])
          {
            if (v140 == *MEMORY[0x277D45848])
            {
              v232 = v359;
              v233 = [v359 dueDateComponents];
              v128 = v394;
              v129 = v400;
              v131 = v398;
              v132 = v403;
              v143 = v377;
              if (v233)
              {
                v234 = v373;
                v235 = v233;
                sub_21DBF4EFC();

                v384 = *(v404 + 32);
                v236 = v351;
                (v384)(v351, v234, v131);
                v237 = v402;
                (v402)(v236, 0, 1, v131);
                v238 = v346;
                (v384)(v346, v236, v131);
                v239 = v238;
                v127 = v396;
              }

              else
              {
                v257 = 1;
                v258 = v402;
                (v402)(v351, 1, 1, v398);
                v259 = [v232 dueDateComponents];
                if (v259)
                {
                  v260 = v259;
                  sub_21DBF4EFC();

                  v257 = 0;
                }

                v261 = v343;
                (v258)(v113, v257, 1, v131);
                sub_21D0D523C(v113, v116, &qword_27CE58D60, &unk_21DC0A690);
                v262 = *(v404 + 48);
                v384 = (v404 + 48);
                v380 = v262;
                if ((v262)(v116, 1, v131))
                {
                  sub_21D0CF7E0(v116, &qword_27CE58D60, &unk_21DC0A690);
                  v263 = v382;
                  v264 = v372;
                  (*(v382 + 56))(v261, 1, 1, v372);
                }

                else
                {
                  sub_21DBF507C();
                  sub_21D0CF7E0(v116, &qword_27CE58D60, &unk_21DC0A690);
                  v264 = v372;
                  v263 = v382;
                }

                v288 = v342;
                v379 = sub_21DBF55BC();
                sub_21D0D3954(v261, v288, &unk_27CE60DB0, qword_21DC0BF70);
                v289 = *(v263 + 48);
                v290 = v289(v288, 1, v264);
                v127 = v396;
                if (v290 == 1)
                {
                  v291 = [objc_opt_self() defaultTimeZone];
                  v292 = v332;
                  sub_21DBF5C2C();

                  v293 = v342;
                  if (v289(v342, 1, v264) != 1)
                  {
                    sub_21D0CF7E0(v293, &unk_27CE60DB0, qword_21DC0BF70);
                  }
                }

                else
                {
                  v292 = v332;
                  (*(v263 + 32))(v332, v288, v264);
                }

                v294 = objc_opt_self();
                v295 = v292;
                v296 = sub_21DBF5C0C();
                (*(v263 + 8))(v295, v264);
                v297 = v379;
                v298 = [v294 rem:v379 dateComponentsWithDate:v296 timeZone:1 isAllDay:?];

                v299 = v331;
                sub_21DBF4EFC();

                v300 = sub_21DBF4EDC();
                v301 = [v300 rem_strippingTimeZone];

                v239 = v346;
                sub_21DBF4EFC();

                v131 = v398;
                (*(v404 + 8))(v299, v398);
                sub_21D0CF7E0(v343, &unk_27CE60DB0, qword_21DC0BF70);
                v302 = v351;
                v303 = (v380)(v351, 1, v131);
                v237 = v402;
                v132 = v403;
                if (v303 != 1)
                {
                  sub_21D0CF7E0(v302, &qword_27CE58D60, &unk_21DC0A690);
                }
              }

              (v237)(v239, 0, 1, v131);
              sub_21D0F02F4(v239, v132, &qword_27CE58D60, &unk_21DC0A690);
              v125 = &selRef__setContentViewMarginType_;
              v130 = v399;
              v136 = v390;
            }

            else
            {
              v128 = v394;
              v129 = v400;
              v131 = v398;
              v132 = v403;
              v143 = v377;
              if (v140 != *MEMORY[0x277D45808])
              {
                goto LABEL_140;
              }

              sub_21D0CF7E0(v403, &qword_27CE58D60, &unk_21DC0A690);
              (v402)(v132, 1, 1, v131);
              v127 = v396;
              v130 = v399;
            }

            goto LABEL_11;
          }

          v163 = v352;
          sub_21DBF7DDC();
          v164 = v357;
          v165 = v358;
          if ((*(v357 + 48))(v163, 1, v358) == 1)
          {
            sub_21D0CF7E0(v163, &qword_27CE64900, &qword_21DC34FB8);
            v127 = v396;
            if (qword_280D0F2B8 != -1)
            {
              swift_once();
            }

            v166 = sub_21DBF84BC();
            __swift_project_value_buffer(v166, qword_280D0F2C0);
            v167 = sub_21DBF84AC();
            v168 = sub_21DBFAECC();
            v169 = os_log_type_enabled(v167, v168);
            v129 = v400;
            v131 = v398;
            v132 = v403;
            v143 = v377;
            if (v169)
            {
              v170 = swift_slowAlloc();
              *v170 = 0;
              _os_log_impl(&dword_21D0C9000, v167, v168, "could not get a closed range when one should be available", v170, 2u);
              MEMORY[0x223D46520](v170, -1, -1);
            }

            v125 = &selRef__setContentViewMarginType_;
            v171 = [v359 dueDateComponents];
            v130 = v399;
            if (v171)
            {
              v172 = v171;
              sub_21DBF4EFC();

              v125 = &selRef__setContentViewMarginType_;
              v173 = 0;
            }

            else
            {
              v173 = 1;
            }

            v136 = v390;
            (v402)(v94, v173, 1, v131);
            v256 = v94;
            v128 = v394;
            goto LABEL_138;
          }

          (*(v164 + 32))(v355, v163, v165);
          v240 = v345;
          sub_21DBF7D5C();
          v241 = v380;
          v242 = v380[6];
          v243 = (v242)(v240, 1, v138);
          v127 = v396;
          if (v243 == 1)
          {
            v244 = v348;
            (v241[2])(v348, v389, v138);
            if ((v242)(v240, 1, v138) != 1)
            {
              sub_21D0CF7E0(v240, &qword_27CE58D68, &unk_21DC0C060);
            }
          }

          else
          {
            v244 = v348;
            (v241[4])(v348, v240, v138);
          }

          sub_21D9D77FC(&qword_27CE62FF0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v245 = v389;
          if (sub_21DBFA09C())
          {
            (v241[1])(v244, v138);
            (v241[2])(v356, v245, v138);
          }

          else
          {
            (v241[4])(v356, v244, v138);
          }

          v130 = v399;
          v246 = v347;
          sub_21D0D3954(v390, v347, &qword_27CE58D68, &unk_21DC0C060);
          if ((v242)(v246, 1, v138) == 1)
          {
            sub_21D0CF7E0(v246, &qword_27CE58D68, &unk_21DC0C060);
            v247 = [v359 dueDateComponents];
            v128 = v394;
            if (v247)
            {
              v248 = v335;
              v249 = v247;
              sub_21DBF4EFC();

              v250 = 0;
              v129 = v400;
              v131 = v398;
              v143 = v377;
              v251 = v349;
            }

            else
            {
              v250 = 1;
              v129 = v400;
              v131 = v398;
              v143 = v377;
              v251 = v349;
              v248 = v335;
            }

            (v402)(v248, v250, 1, v131);
            v269 = v248;
            v270 = v336;
            sub_21D0D523C(v269, v336, &qword_27CE58D60, &unk_21DC0A690);
            if ((*(v404 + 48))(v270, 1, v131))
            {
              sub_21D0CF7E0(v270, &qword_27CE58D60, &unk_21DC0A690);
              v271 = v382;
              v272 = v372;
              (*(v382 + 56))(v251, 1, 1, v372);
            }

            else
            {
              sub_21DBF507C();
              sub_21D0CF7E0(v270, &qword_27CE58D60, &unk_21DC0A690);
              v272 = v372;
              v271 = v382;
            }

            v377 = sub_21DBF55BC();
            v273 = v344;
            sub_21D0D3954(v251, v344, &unk_27CE60DB0, qword_21DC0BF70);
            v274 = *(v271 + 48);
            if (v274(v273, 1, v272) == 1)
            {
              v275 = [objc_opt_self() defaultTimeZone];
              v276 = v340;
              sub_21DBF5C2C();

              v277 = v344;
              v278 = v274(v344, 1, v272);
              v132 = v403;
              if (v278 != 1)
              {
                sub_21D0CF7E0(v277, &unk_27CE60DB0, qword_21DC0BF70);
              }
            }

            else
            {
              v279 = *(v271 + 32);
              v276 = v340;
              v279(v340, v273, v272);
              v132 = v403;
            }

            v280 = objc_opt_self();
            v281 = sub_21DBF5C0C();
            (*(v382 + 8))(v276, v272);
            v282 = v377;
            v283 = [v280 rem:v377 dateComponentsWithDate:v281 timeZone:1 isAllDay:?];

            v284 = v339;
            sub_21DBF4EFC();

            v285 = sub_21DBF4EDC();
            v286 = [v285 rem_strippingTimeZone];

            v287 = v337;
            sub_21DBF4EFC();

            (*(v404 + 8))(v284, v131);
            sub_21D0CF7E0(v349, &unk_27CE60DB0, qword_21DC0BF70);
            (v380[1])(v356, v379);
            (*(v357 + 8))(v355, v358);
          }

          else
          {
            (v380[4])(v350, v246, v138);
            v252 = sub_21DBF7D7C();
            v253 = [v359 dueDateComponents];
            v128 = v394;
            v254 = v404;
            if (v252)
            {
              v132 = v403;
              if (v253)
              {
                v255 = v253;
                sub_21DBF4EFC();

                LODWORD(v366) = 0;
              }

              else
              {
                LODWORD(v366) = 1;
              }

              v129 = v400;
              v143 = v377;
              v304 = v380[1];
              v305 = v379;
              (v304)(v350, v379);
              (v304)(v356, v305);
              (*(v357 + 8))(v355, v358);
              v306 = v334;
              v131 = v398;
              (v402)(v334, v366, 1, v398);
              v256 = v306;
              v125 = &selRef__setContentViewMarginType_;
              goto LABEL_137;
            }

            if (v253)
            {
              v265 = v327;
              v266 = v253;
              sub_21DBF4EFC();

              v131 = v398;
              v267 = v341;
              v268 = v328;
              (v402)(v265, 0, 1, v398);
            }

            else
            {
              v131 = v398;
              v267 = v341;
              v268 = v328;
              v265 = v327;
              (v402)(v327, 1, 1, v398);
            }

            sub_21D0D523C(v265, v268, &qword_27CE58D60, &unk_21DC0A690);
            if ((*(v254 + 48))(v268, 1, v131))
            {
              sub_21D0CF7E0(v268, &qword_27CE58D60, &unk_21DC0A690);
              v307 = v382;
              v308 = v372;
              (*(v382 + 56))(v267, 1, 1, v372);
              v129 = v400;
            }

            else
            {
              sub_21DBF507C();
              sub_21D0CF7E0(v268, &qword_27CE58D60, &unk_21DC0A690);
              v129 = v400;
              v308 = v372;
              v307 = v382;
            }

            v143 = v377;
            v377 = sub_21DBF55BC();
            v309 = v333;
            sub_21D0D3954(v267, v333, &unk_27CE60DB0, qword_21DC0BF70);
            v310 = *(v307 + 48);
            if (v310(v309, 1, v308) == 1)
            {
              v311 = [objc_opt_self() defaultTimeZone];
              v312 = v330;
              sub_21DBF5C2C();

              v313 = v333;
              v314 = v310(v333, 1, v308);
              v132 = v403;
              if (v314 != 1)
              {
                sub_21D0CF7E0(v313, &unk_27CE60DB0, qword_21DC0BF70);
              }
            }

            else
            {
              v315 = *(v307 + 32);
              v312 = v330;
              v315(v330, v309, v308);
              v132 = v403;
            }

            v316 = objc_opt_self();
            v317 = sub_21DBF5C0C();
            (*(v382 + 8))(v312, v308);
            v318 = v377;
            v319 = [v316 rem:v377 dateComponentsWithDate:v317 timeZone:1 isAllDay:?];

            v320 = v329;
            sub_21DBF4EFC();

            v321 = sub_21DBF4EDC();
            v322 = [v321 rem_strippingTimeZone];

            sub_21DBF4EFC();
            (*(v404 + 8))(v320, v131);
            sub_21D0CF7E0(v341, &unk_27CE60DB0, qword_21DC0BF70);
            v323 = v380[1];
            v324 = v379;
            (v323)(v350, v379);
            (v323)(v356, v324);
            (*(v357 + 8))(v355, v358);
            v287 = v338;
          }

          (v402)(v287, 0, 1, v131);
          v256 = v287;
          v125 = &selRef__setContentViewMarginType_;
          v130 = v399;
LABEL_137:
          v136 = v390;
LABEL_138:
          sub_21D0F02F4(v256, v132, &qword_27CE58D60, &unk_21DC0A690);
          (*(v353 + 8))(v384, v354);
          goto LABEL_11;
        }
      }

      (*(v71 + 8))(v384, v70);
    }

    v142 = v391;
    sub_21D9D1B94(1, v389, v136, v405, v391);
LABEL_10:
    v132 = v403;
    sub_21D0F02F4(v142, v403, &qword_27CE58D60, &unk_21DC0A690);
    v127 = v396;
    v128 = v394;
    v129 = v400;
    v131 = v398;
    v130 = v399;
    v125 = &selRef__setContentViewMarginType_;
    v143 = v377;
LABEL_11:
    v144 = [v359 v125[180]];
    if (v144)
    {
      v145 = v144;
      sub_21DBF4EFC();

      v146 = *(v404 + 48);
      if (!v146(v132, 1, v131))
      {
        sub_21DBF4F5C();
        sub_21DBF4F6C();
        v136 = v390;
      }

      if (!v146(v132, 1, v131))
      {
        sub_21DBF4FCC();
        sub_21DBF4FDC();
        v136 = v390;
      }

      (*(v404 + 8))(v143, v131);
      v125 = &selRef__setContentViewMarginType_;
      v130 = v399;
    }

    sub_21D0CF7E0(v136, &qword_27CE58D68, &unk_21DC0C060);
    (*(v353 + 8))(v326, v354);
    v126 = v397;
    goto LABEL_18;
  }

  sub_21D0CF7E0(v69, &qword_27CE648C8, &unk_21DC40310);
  v127 = v396;
  v126 = v397;
  v128 = v394;
  v129 = v400;
  v131 = v398;
  v130 = v399;
  v132 = v403;
LABEL_18:
  sub_21DBF7F6C();
  if ((*(v129 + 48))(v130, 1, v128) == 1)
  {
    sub_21D0CF7E0(v130, &qword_27CE648B0, &qword_21DC34C20);
    v147 = v404;
    if (v376 == 1)
    {
      goto LABEL_78;
    }

LABEL_66:
    v215 = v386;
    sub_21D0D3954(v132, v386, &qword_27CE58D60, &unk_21DC0A690);
    v216 = [*(v405 + 16) v125[180]];
    if (v216)
    {
      v217 = v395;
      v218 = v216;
      sub_21DBF4EFC();

      v219 = 0;
      v220 = v387;
    }

    else
    {
      v219 = 1;
      v220 = v387;
      v217 = v395;
    }

    (v402)(v217, v219, 1, v131);
    v221 = *(v388 + 48);
    sub_21D0D3954(v215, v127, &qword_27CE58D60, &unk_21DC0A690);
    sub_21D0D3954(v217, v127 + v221, &qword_27CE58D60, &unk_21DC0A690);
    v222 = *(v147 + 48);
    if (v222(v127, 1, v131) == 1)
    {
      sub_21D0CF7E0(v217, &qword_27CE58D60, &unk_21DC0A690);
      sub_21D0CF7E0(v215, &qword_27CE58D60, &unk_21DC0A690);
      if (v222(v127 + v221, 1, v131) == 1)
      {
        v223 = 0;
        v132 = v403;
LABEL_76:
        sub_21D0CF7E0(v127, &qword_27CE58D60, &unk_21DC0A690);
LABEL_79:
        sub_21D0CF7E0(v132, &qword_27CE58D60, &unk_21DC0A690);
        return v223;
      }
    }

    else
    {
      sub_21D0D3954(v127, v220, &qword_27CE58D60, &unk_21DC0A690);
      if (v222(v127 + v221, 1, v131) != 1)
      {
        v226 = v404;
        v227 = v127 + v221;
        v228 = v373;
        (*(v404 + 32))(v373, v227, v131);
        sub_21D9D77FC(&qword_27CE5D1A8, 255, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
        v229 = sub_21DBFA10C();
        v230 = *(v226 + 8);
        v230(v228, v131);
        sub_21D0CF7E0(v395, &qword_27CE58D60, &unk_21DC0A690);
        sub_21D0CF7E0(v215, &qword_27CE58D60, &unk_21DC0A690);
        v230(v220, v131);
        sub_21D0CF7E0(v127, &qword_27CE58D60, &unk_21DC0A690);
        v132 = v403;
        if (v229)
        {
LABEL_78:
          v223 = 0;
          goto LABEL_79;
        }

        goto LABEL_75;
      }

      sub_21D0CF7E0(v395, &qword_27CE58D60, &unk_21DC0A690);
      sub_21D0CF7E0(v215, &qword_27CE58D60, &unk_21DC0A690);
      (*(v404 + 8))(v220, v131);
    }

    sub_21D0CF7E0(v127, &qword_27CE5D1A0, &unk_21DC18EA0);
    v132 = v403;
LABEL_75:
    v127 = v391;
    sub_21D0D3954(v132, v391, &qword_27CE58D60, &unk_21DC0A690);
    v224 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
    v223 = 1;
    v225 = v375;
    (*(*(v224 - 8) + 56))(v375, 1, 1, v224);
    sub_21D9C50E0(v127, v225);
    sub_21D0CF7E0(v225, &unk_27CE60DA0, &unk_21DC0C0C0);
    goto LABEL_76;
  }

  v148 = v393;
  (*(v129 + 32))(v393, v130, v128);
  v149 = v378;
  (*(v129 + 16))(v378, v148, v128);
  v150 = (*(v129 + 88))(v149, v128);
  if (v150 == *MEMORY[0x277D45868])
  {
    v151 = v383;
    v147 = v404;
    v152 = v385;
LABEL_41:
    v399 = sub_21DBFB39C();
    sub_21D0D3954(v132, v152, &qword_27CE58D60, &unk_21DC0A690);
    v174 = *(v147 + 48);
    if (v174(v152, 1, v131) == 1)
    {
      v175 = v147;
      v176 = v128;
      v177 = v126;
      v178 = [*(v405 + 16) dueDateComponents];
      if (v178)
      {
        v179 = v367;
        v180 = v178;
        sub_21DBF4EFC();

        v151 = v383;
        v181 = 0;
      }

      else
      {
        v181 = 1;
        v179 = v367;
      }

      (v402)(v179, v181, 1, v131);
      sub_21D0D523C(v179, v151, &qword_27CE58D60, &unk_21DC0A690);
      v182 = v385;
      v183 = v174(v385, 1, v131);
      v126 = v177;
      v128 = v176;
      v147 = v175;
      v127 = v396;
      if (v183 != 1)
      {
        sub_21D0CF7E0(v182, &qword_27CE58D60, &unk_21DC0A690);
      }
    }

    else
    {
      (*(v147 + 32))(v151, v152, v131);
      (v402)(v151, 0, 1, v131);
    }

    if (v174(v151, 1, v131) != 1)
    {
      v192 = v151;
      goto LABEL_64;
    }

    v184 = v127;
    sub_21D0CF7E0(v151, &qword_27CE58D60, &unk_21DC0A690);
    LODWORD(v394) = 0;
    v185 = v402;
LABEL_50:
    v186 = v128;
    v187 = [*(v405 + 16) dueDateComponents];
    if (v187)
    {
      v188 = v368;
      v189 = v187;
      sub_21DBF4EFC();

      v190 = v188;
      v191 = 0;
    }

    else
    {
      v191 = 1;
      v190 = v368;
    }

    (v185)(v190, v191, 1, v131);
    v193 = v190;
    v194 = v369;
    sub_21D0D523C(v193, v369, &qword_27CE58D60, &unk_21DC0A690);
    if ((*(v147 + 48))(v194, 1, v131))
    {
      sub_21D0CF7E0(v194, &qword_27CE58D60, &unk_21DC0A690);
      v195 = v382;
      v196 = v381;
      v197 = v372;
      (*(v382 + 56))(v381, 1, 1, v372);
    }

    else
    {
      v196 = v381;
      sub_21DBF507C();
      sub_21D0CF7E0(v194, &qword_27CE58D60, &unk_21DC0A690);
      v197 = v372;
      v195 = v382;
    }

    v128 = v186;
    v198 = sub_21DBF55BC();
    v199 = v374;
    sub_21D0D3954(v196, v374, &unk_27CE60DB0, qword_21DC0BF70);
    v200 = v195;
    v201 = *(v195 + 48);
    v127 = v184;
    if (v201(v199, 1, v197) == 1)
    {
      v202 = [objc_opt_self() defaultTimeZone];
      v203 = v370;
      sub_21DBF5C2C();

      v204 = v374;
      v205 = v201(v374, 1, v197);
      v126 = v397;
      v131 = v398;
      if (v205 != 1)
      {
        sub_21D0CF7E0(v204, &unk_27CE60DB0, qword_21DC0BF70);
      }
    }

    else
    {
      v206 = *(v200 + 32);
      v203 = v370;
      v206(v370, v199, v197);
      v126 = v397;
      v131 = v398;
    }

    v207 = objc_opt_self();
    v208 = v203;
    v209 = sub_21DBF5C0C();
    (*(v382 + 8))(v208, v197);
    LODWORD(v208) = v394;
    v210 = [v207 rem:v198 dateComponentsWithDate:v209 timeZone:v394 isAllDay:?];

    v192 = v371;
    sub_21DBF4EFC();

    if (v208)
    {
      v211 = sub_21DBF4EDC();
      v212 = [v211 rem_strippingTimeZone];

      v213 = v373;
      sub_21DBF4EFC();

      v147 = v404;
      (*(v404 + 8))(v192, v131);
      sub_21D0CF7E0(v381, &unk_27CE60DB0, qword_21DC0BF70);
      v214 = *(v147 + 32);
      v214(v192, v213, v131);
      v214(v126, v192, v131);
      v132 = v403;
      v125 = &selRef__setContentViewMarginType_;
LABEL_65:
      (*(v400 + 8))(v393, v128);
      sub_21D0CF7E0(v132, &qword_27CE58D60, &unk_21DC0A690);
      v214(v132, v126, v131);
      (v402)(v132, 0, 1, v131);
      goto LABEL_66;
    }

    sub_21D0CF7E0(v381, &unk_27CE60DB0, qword_21DC0BF70);
    v147 = v404;
LABEL_64:
    v132 = v403;
    v125 = &selRef__setContentViewMarginType_;
    v214 = *(v147 + 32);
    v214(v126, v192, v131);
    sub_21DBF4F6C();
    sub_21DBF4FDC();
    sub_21DBF4FFC();
    goto LABEL_65;
  }

  v151 = v383;
  v147 = v404;
  v152 = v385;
  if (v150 == *MEMORY[0x277D45880] || v150 == *MEMORY[0x277D45888] || v150 == *MEMORY[0x277D45878] || v150 == *MEMORY[0x277D45870])
  {
    goto LABEL_41;
  }

  if (v150 == *MEMORY[0x277D45860])
  {
    v184 = v127;
    v399 = 0;
    LODWORD(v394) = 1;
    v185 = v402;
    goto LABEL_50;
  }

  sub_21DBFC63C();
  __break(1u);
LABEL_140:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D9D1B94@<X0>(int a1@<W1>, char *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v135 = a2;
  v136 = a4;
  v128 = a3;
  v125 = a1;
  v138 = a5;
  v5 = sub_21DBF5C4C();
  v131 = *(v5 - 8);
  v132 = v5;
  MEMORY[0x28223BE20](v5);
  v124 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_21DBF509C();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v116 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v127 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v111 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v14 - 8);
  v129 = (&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v120 = &v111 - v17;
  MEMORY[0x28223BE20](v18);
  v119 = &v111 - v19;
  MEMORY[0x28223BE20](v20);
  v121 = &v111 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = &v111 - v23;
  v24 = sub_21DBF563C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v134 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v118 = &v111 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v29 - 8);
  v130 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v111 - v32;
  MEMORY[0x28223BE20](v34);
  v117 = &v111 - v35;
  MEMORY[0x28223BE20](v36);
  v114 = &v111 - v37;
  MEMORY[0x28223BE20](v38);
  v115 = &v111 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v111 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v111 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64900, &qword_21DC34FB8);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v111 - v47;
  v49 = sub_21DBF7D8C();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v111 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF7DDC();
  if ((v50[6])(v48, 1, v49) == 1)
  {
    sub_21D0CF7E0(v48, &qword_27CE64900, &qword_21DC34FB8);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v53 = sub_21DBF84BC();
    __swift_project_value_buffer(v53, qword_280D0F2C0);
    v54 = sub_21DBF84AC();
    v55 = sub_21DBFAECC();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v139;
    v58 = v137;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_21D0C9000, v54, v55, "could not get a closed range when one should be available", v59, 2u);
      MEMORY[0x223D46520](v59, -1, -1);
    }

    v60 = [*(v136 + 16) dueDateComponents];
    if (v60)
    {
      v61 = v129;
      v62 = v60;
      sub_21DBF4EFC();

      v63 = 0;
    }

    else
    {
      v63 = 1;
      v61 = v129;
    }

    v58[7](v61, v63, 1, v57);
  }

  else
  {
    v129 = v50;
    v64 = v50[4];
    v113 = v49;
    (v64)(v52, v48, v49);
    v65 = *(v25 + 56);
    v135 = v45;
    v65(v45, 1, 1, v24);
    sub_21D0D3954(v128, v42, &qword_27CE58D68, &unk_21DC0C060);
    v66 = *(v25 + 48);
    v67 = v66(v42, 1, v24);
    v128 = v24;
    v123 = v25;
    v112 = v52;
    v111 = v66;
    if (v67 == 1)
    {
      sub_21D0CF7E0(v42, &qword_27CE58D68, &unk_21DC0C060);
      sub_21DBF7D6C();
      v24 = v128;
      if (v66(v33, 1, v128) == 1)
      {
        v68 = v117;
        sub_21DBF7D5C();
        v24 = v128;
        v69 = v135;
        sub_21D0CF7E0(v135, &qword_27CE58D68, &unk_21DC0C060);
        v70 = v66(v33, 1, v24);
        v71 = v139;
        v72 = v132;
        v73 = v133;
        v74 = v129;
        if (v70 != 1)
        {
          sub_21D0CF7E0(v33, &qword_27CE58D68, &unk_21DC0C060);
        }
      }

      else
      {
        v69 = v135;
        sub_21D0CF7E0(v135, &qword_27CE58D68, &unk_21DC0C060);
        v78 = v65;
        v68 = v117;
        (*(v123 + 32))(v117, v33, v24);
        v78(v68, 0, 1, v24);
        v71 = v139;
        v72 = v132;
        v73 = v133;
        v74 = v129;
      }

      sub_21D0D523C(v68, v69, &qword_27CE58D68, &unk_21DC0C060);
      v77 = v137;
    }

    else
    {
      v117 = v65;
      v75 = *(v25 + 32);
      v76 = v118;
      v75(v118, v42, v24);
      if (sub_21DBF7D7C())
      {
        (*(v25 + 8))(v76, v24);
        v71 = v139;
        v77 = v137;
        v72 = v132;
        v73 = v133;
        v69 = v135;
        v74 = v129;
      }

      else
      {
        v79 = v114;
        sub_21DBF7D6C();
        if (v66(v79, 1, v24) == 1)
        {
          v80 = v115;
          sub_21DBF7D5C();
          v24 = v128;
          (*(v123 + 8))(v76, v128);
          v69 = v135;
          sub_21D0CF7E0(v135, &qword_27CE58D68, &unk_21DC0C060);
          v81 = v66(v79, 1, v24);
          v77 = v137;
          v74 = v129;
          if (v81 != 1)
          {
            sub_21D0CF7E0(v79, &qword_27CE58D68, &unk_21DC0C060);
          }
        }

        else
        {
          (*(v123 + 8))(v76, v24);
          v69 = v135;
          sub_21D0CF7E0(v135, &qword_27CE58D68, &unk_21DC0C060);
          v82 = v115;
          v75(v115, v79, v24);
          v80 = v82;
          (v117)(v82, 0, 1, v24);
          v77 = v137;
          v74 = v129;
        }

        sub_21D0D523C(v80, v69, &qword_27CE58D68, &unk_21DC0C060);
        v72 = v132;
        v73 = v133;
        v71 = v139;
      }
    }

    v83 = v130;
    sub_21D0D3954(v69, v130, &qword_27CE58D68, &unk_21DC0C060);
    if (v111(v83, 1, v24) == 1)
    {
      sub_21D0CF7E0(v83, &qword_27CE58D68, &unk_21DC0C060);
      v84 = [*(v136 + 16) dueDateComponents];
      if (v84)
      {
        v85 = v120;
        v86 = v84;
        sub_21DBF4EFC();

        v87 = 0;
        v88 = v113;
      }

      else
      {
        v87 = 1;
        v88 = v113;
        v85 = v120;
      }

      sub_21D0CF7E0(v69, &qword_27CE58D68, &unk_21DC0C060);
      v74[1](v112, v88);
      v77[7](v85, v87, 1, v71);
      v61 = v85;
    }

    else
    {
      (*(v123 + 32))(v134, v83, v24);
      v89 = [*(v136 + 16) dueDateComponents];
      if (v89)
      {
        v90 = v119;
        v91 = v89;
        sub_21DBF4EFC();

        v92 = 0;
        v93 = v131;
        v94 = v121;
        v95 = v122;
      }

      else
      {
        v92 = 1;
        v93 = v131;
        v94 = v121;
        v95 = v122;
        v90 = v119;
      }

      v137 = v77[7];
      (v137)(v90, v92, 1, v71);
      sub_21D0D523C(v90, v94, &qword_27CE58D60, &unk_21DC0A690);
      if ((v77[6])(v94, 1, v71))
      {
        sub_21D0CF7E0(v94, &qword_27CE58D60, &unk_21DC0A690);
        (*(v93 + 56))(v73, 1, 1, v72);
      }

      else
      {
        sub_21DBF507C();
        sub_21D0CF7E0(v94, &qword_27CE58D60, &unk_21DC0A690);
      }

      v96 = sub_21DBF55BC();
      sub_21D0D3954(v73, v95, &unk_27CE60DB0, qword_21DC0BF70);
      v97 = *(v93 + 48);
      if (v97(v95, 1, v72) == 1)
      {
        v98 = [objc_opt_self() defaultTimeZone];
        v99 = v124;
        sub_21DBF5C2C();

        if (v97(v95, 1, v72) != 1)
        {
          sub_21D0CF7E0(v95, &unk_27CE60DB0, qword_21DC0BF70);
        }
      }

      else
      {
        v99 = v124;
        (*(v93 + 32))(v124, v95, v72);
      }

      v100 = objc_opt_self();
      v101 = sub_21DBF5C0C();
      (*(v131 + 8))(v99, v72);
      v102 = v125;
      v103 = [v100 rem:v96 dateComponentsWithDate:v101 timeZone:v125 & 1 isAllDay:?];

      v104 = v127;
      sub_21DBF4EFC();

      if (v102)
      {
        v105 = sub_21DBF4EDC();
        v106 = [v105 rem_strippingTimeZone];

        v107 = v116;
        sub_21DBF4EFC();

        v108 = v139;
        (v77[1])(v104, v139);
        sub_21D0CF7E0(v73, &unk_27CE60DB0, qword_21DC0BF70);
        (*(v123 + 8))(v134, v128);
        sub_21D0CF7E0(v135, &qword_27CE58D68, &unk_21DC0C060);
        v129[1](v112, v113);
        v109 = v77[4];
        (v109)(v104, v107, v108);
        v61 = v126;
      }

      else
      {
        sub_21D0CF7E0(v73, &unk_27CE60DB0, qword_21DC0BF70);
        (*(v123 + 8))(v134, v128);
        sub_21D0CF7E0(v135, &qword_27CE58D68, &unk_21DC0C060);
        v129[1](v112, v113);
        v109 = v77[4];
        v61 = v126;
        v108 = v139;
      }

      (v109)(v61, v104, v108);
      (v137)(v61, 0, 1, v108);
    }
  }

  return sub_21D0D523C(v61, v138, &qword_27CE58D60, &unk_21DC0A690);
}

void static TTRReminderEditor.canMatch(reminder:to:now:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BOOL8 *a4@<X8>)
{
  v209 = a3;
  v219 = a4;
  v214 = 0;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64878, &unk_21DC34BC0);
  MEMORY[0x28223BE20](v211);
  v225 = v192 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880, &unk_21DC40300);
  MEMORY[0x28223BE20](v7 - 8);
  v223 = v192 - v8;
  v224 = sub_21DBF7E8C();
  v230 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v218 = v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648B0, &qword_21DC34C20);
  MEMORY[0x28223BE20](v10 - 8);
  v221 = v192 - v11;
  v222 = sub_21DBF7E0C();
  v227 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v226 = v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_21DBF563C();
  v199 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v196 = v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v192 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648B8, &qword_21DC34C28);
  MEMORY[0x28223BE20](v17 - 8);
  v208 = v192 - v18;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648C0, &unk_21DC34C30);
  v207 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v198 = v192 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648C8, &unk_21DC40310);
  MEMORY[0x28223BE20](v20 - 8);
  v220 = v192 - v21;
  v22 = sub_21DBF7DEC();
  v23 = *(v22 - 8);
  v228 = v22;
  v229 = v23;
  MEMORY[0x28223BE20](v22);
  v213 = v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v217 = v192 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648D0, &qword_21DC34C40);
  MEMORY[0x28223BE20](v27);
  v29 = v192 - v28;
  v202 = sub_21DBF7FEC();
  v203 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v201 = v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_21DBF78CC();
  v205 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v200 = v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v206 = v192 - v33;
  MEMORY[0x28223BE20](v34);
  v215 = v192 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70, &unk_21DC299D0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v192 - v37;
  v39 = sub_21DBF7E5C();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = (v192 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v45 = v192 - v44;
  v233 = MEMORY[0x277D84FA0];
  v234 = MEMORY[0x277D84FA0];
  v231 = a2;
  sub_21DBF7FCC();
  v46 = (*(v40 + 48))(v38, 1, v39);
  v197 = v16;
  if (v46 == 1)
  {
    sub_21D0CF7E0(v38, &qword_27CE61B70, &unk_21DC299D0);
LABEL_10:
    LODWORD(v216) = 0;
    v76 = v230;
    v77 = v226;
    v79 = v220;
    v78 = v221;
    v72 = v229;
    goto LABEL_11;
  }

  (*(v40 + 32))(v45, v38, v39);
  v47 = [a1 hashtagContext];
  if (!v47)
  {
    sub_21D29EC0C(&v232, 2);
    (*(v40 + 8))(v45, v39);
    goto LABEL_10;
  }

  v195 = a1;
  v194 = v47;
  v48 = [v47 hashtags];
  sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
  sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
  v49 = sub_21DBFAAAC();

  v50 = v214;
  sub_21D9B2298(v49);
  v214 = v50;

  sub_21DBF784C();
  (*(v40 + 16))(v42, v45, v39);
  v51 = (*(v40 + 88))(v42, v39);
  v52 = v45;
  if (v51 == *MEMORY[0x277D458A0])
  {
    v193 = v45;
    (*(v40 + 96))(v42, v39);
    v54 = *v42;
    v53 = v42[1];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78, &unk_21DC34BD0);
    v56 = v203;
    v57 = v42 + *(v55 + 64);
    v58 = v201;
    v59 = v202;
    (*(v203 + 32))(v201, v57, v202);
    sub_21DBF8E0C();
    v216 = v54;
    sub_21DBF784C();
    sub_21DBF8E0C();
    v192[1] = v53;
    sub_21DBF784C();
    v60 = sub_21DBF786C();
    v61 = sub_21DBF786C();
    v62 = *(v27 + 48);
    v192[0] = v27;
    v63 = *(v27 + 64);
    v64 = v58;
    v65 = v61;
    (*(v56 + 16))(v29, v64, v59);
    v29[v62] = (v60 & 1) == 0;
    v29[v63] = (v65 & 1) == 0;
    v66 = (*(v56 + 88))(v29, v59);
    if (v66 == *MEMORY[0x277D458F0])
    {

      if ((v60 & 1) == 0)
      {
        v67 = v65;
        v68 = v215;
        v69 = v206;
        v70 = sub_21DBF787C();
        v71 = v70;
        a1 = v195;
        v72 = v229;
        if (v67)
        {

          v73 = *(v205 + 8);
          v74 = v69;
          v75 = v204;
          v73(v200, v204);
          v73(v74, v75);
          (*(v203 + 8))(v201, v202);
          v73(v68, v75);
          (*(v40 + 8))(v193, v39);
          LODWORD(v216) = v71 ^ 1;
          v76 = v230;
          v77 = v226;
          v78 = v221;
        }

        else
        {
          v78 = v221;
          if (v70)
          {
            v155 = v215;
            v156 = v200;
            LODWORD(v216) = sub_21DBF77BC();

            v157 = *(v205 + 8);
            v158 = v156;
            v159 = v69;
            v160 = v204;
            v157(v158, v204);
            v157(v159, v160);
            (*(v203 + 8))(v201, v202);
            v157(v155, v160);
            (*(v40 + 8))(v193, v39);
            v161 = v216 ^ 1;
          }

          else
          {

            v165 = *(v205 + 8);
            v166 = v204;
            v165(v200, v204);
            v165(v69, v166);
            (*(v203 + 8))(v201, v202);
            v165(v215, v166);
            (*(v40 + 8))(v193, v39);
            v161 = 1;
          }

          LODWORD(v216) = v161;
          v76 = v230;
          v77 = v226;
        }

        v79 = v220;
        goto LABEL_11;
      }
    }

    else
    {
      if (v66 != *MEMORY[0x277D458E8])
      {
        goto LABEL_143;
      }

      if ((v60 & 1) == 0)
      {
        v150 = v215;
        v151 = v206;
        v152 = sub_21DBF77BC();
        a1 = v195;
        v72 = v229;
        if ((v65 & 1) == 0)
        {
          v78 = v221;
          if (v152)
          {

            v162 = *(v205 + 8);
            v163 = v204;
            v162(v200, v204);
            v162(v206, v163);
            (*(v203 + 8))(v201, v202);
            v162(v215, v163);
            (*(v40 + 8))(v193, v39);
            v164 = 1;
          }

          else
          {
            v167 = v215;
            v168 = v200;
            LODWORD(v216) = sub_21DBF77BC();

            v169 = *(v205 + 8);
            v170 = v168;
            v171 = v204;
            v169(v170, v204);
            v169(v206, v171);
            (*(v203 + 8))(v201, v202);
            v169(v167, v171);
            (*(v40 + 8))(v193, v39);
            v164 = v216 ^ 1;
          }

          LODWORD(v216) = v164;
          v76 = v230;
          v77 = v226;
          goto LABEL_93;
        }

        LODWORD(v216) = v152;

        v153 = *(v205 + 8);
        v154 = v204;
        v153(v200, v204);
        v153(v151, v154);
        (*(v203 + 8))(v201, v202);
        v153(v150, v154);
        (*(v40 + 8))(v193, v39);
LABEL_92:
        v76 = v230;
        v77 = v226;
        v78 = v221;
LABEL_93:
        v79 = v220;
        goto LABEL_11;
      }
    }

    a1 = v195;
    v72 = v229;
    if (v65)
    {

      v102 = *(v205 + 8);
      v103 = v204;
      v102(v200, v204);
      v102(v206, v103);
      (*(v203 + 8))(v201, v202);
      v102(v215, v103);
      (*(v40 + 8))(v193, v39);
      LODWORD(v216) = 0;
    }

    else
    {
      v144 = v215;
      v145 = v200;
      v146 = sub_21DBF77BC();

      v147 = *(v205 + 8);
      v148 = v145;
      v149 = v204;
      v147(v148, v204);
      v147(v206, v149);
      (*(v203 + 8))(v201, v202);
      v147(v144, v149);
      (*(v40 + 8))(v193, v39);
      LODWORD(v216) = v146 ^ 1;
    }

    goto LABEL_92;
  }

  v76 = v230;
  v79 = v220;
  v78 = v221;
  if (v51 == *MEMORY[0x277D458A8])
  {
    v92 = v215;
    v93 = sub_21DBF786C();

    (*(v205 + 8))(v92, v204);
    (*(v40 + 8))(v52, v39);
    LODWORD(v216) = v93 ^ 1;
    a1 = v195;
    v77 = v226;
    v72 = v229;
  }

  else
  {
    v104 = v52;
    a1 = v195;
    v72 = v229;
    if (v51 != *MEMORY[0x277D45898])
    {
LABEL_144:
      sub_21DBFC63C();
      __break(1u);
      goto LABEL_145;
    }

    sub_21D29EC0C(&v232, 0);

    (*(v205 + 8))(v215, v204);
    (*(v40 + 8))(v104, v39);
    LODWORD(v216) = 0;
    v77 = v226;
  }

LABEL_11:
  sub_21DBF7F5C();
  v80 = v228;
  v81 = (*(v72 + 48))(v79, 1, v228);
  v82 = v225;
  v83 = v222;
  if (v81 == 1)
  {
    sub_21D0CF7E0(v79, &qword_27CE648C8, &unk_21DC40310);
    v84 = v76;
    goto LABEL_40;
  }

  v85 = v217;
  (*(v72 + 32))(v217, v79, v80);
  v86 = a1;
  v87 = v213;
  (*(v72 + 16))(v213, v85, v80);
  v88 = v87;
  a1 = v86;
  v89 = (*(v72 + 88))(v88, v80);
  v90 = v212;
  if (v89 == *MEMORY[0x277D45850])
  {
    goto LABEL_25;
  }

  if (v89 == *MEMORY[0x277D45858] || v89 == *MEMORY[0x277D45840] || v89 == *MEMORY[0x277D45820] || v89 == *MEMORY[0x277D45810] || v89 == *MEMORY[0x277D45818])
  {
    (*(v229 + 8))(v213, v80);
    v85 = v217;
LABEL_25:
    v94 = v208;
    sub_21DBF7D9C();
    if ((*(v207 + 48))(v94, 1, v210) == 1)
    {
      (*(v229 + 8))(v85, v228);
      sub_21D0CF7E0(v94, &qword_27CE648B8, &qword_21DC34C28);
    }

    else
    {
      v95 = v94;
      v96 = v198;
      sub_21D0D523C(v95, v198, &qword_27CE648C0, &unk_21DC34C30);
      v97 = [a1 displayDate];
      if (v97)
      {
        v98 = v97;
        v99 = [v97 date];

        v100 = v196;
        sub_21DBF55FC();

        v101 = v197;
        (*(v199 + 32))(v197, v100, v90);
        sub_21D9D77FC(&qword_27CE62FF0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if ((sub_21DBFA09C() & 1) == 0 || (sub_21DBFA0AC() & 1) == 0)
        {
          sub_21D29EBF4(&v232, 0);
        }

        (*(v199 + 8))(v101, v90);
        sub_21D0CF7E0(v96, &qword_27CE648C0, &unk_21DC34C30);
        (*(v229 + 8))(v217, v228);
        v77 = v226;
      }

      else
      {
        sub_21D0CF7E0(v96, &qword_27CE648C0, &unk_21DC34C30);
        (*(v229 + 8))(v217, v228);
        LODWORD(v216) = 1;
      }
    }

    v84 = v230;
    goto LABEL_40;
  }

  if (v89 == *MEMORY[0x277D45848])
  {
    v91 = [v86 displayDate];
    (*(v229 + 8))(v217, v80);
    if (v91)
    {
    }

    else
    {
      LODWORD(v216) = 1;
    }

    v77 = v226;
    v84 = v76;
  }

  else
  {
    v131 = v217;
    if (v89 != *MEMORY[0x277D45808])
    {
LABEL_145:
      sub_21DBFC63C();
      __break(1u);
      return;
    }

    v132 = [v86 displayDate];
    if (v132)
    {

      sub_21D29EBF4(&v232, 0);
    }

    (*(v229 + 8))(v131, v80);
    v84 = v76;
  }

LABEL_40:
  sub_21DBF7F6C();
  v105 = v227;
  if ((*(v227 + 48))(v78, 1, v83) == 1)
  {
    sub_21D0CF7E0(v78, &qword_27CE648B0, &qword_21DC34C20);
  }

  else
  {
    (*(v105 + 32))(v77, v78, v83);
    v106 = [a1 displayDate];
    v107 = v77;
    if (v106)
    {
      v108 = v106;
      if (sub_21DBF7DFC())
      {
        (*(v227 + 8))(v107, v83);
      }

      else
      {
        sub_21D29EBF4(&v232, 0);

        (*(v227 + 8))(v107, v83);
      }
    }

    else
    {
      (*(v105 + 8))(v77, v83);
      LODWORD(v216) = 1;
    }
  }

  v109 = v224;
  v110 = sub_21DBF7E9C();
  if (v110)
  {
    v111 = v110;
    [a1 priority];
    v112 = REMReminderPriorityLevelForPriority();
    v113 = *(v111 + 16);
    v114 = 32;
    v115 = v113;
    while (v115)
    {
      v116 = *(v111 + v114);
      v114 += 8;
      --v115;
      if (v116 == v112)
      {

        goto LABEL_74;
      }
    }

    v117 = 32;
    v118 = *(v111 + 16);
    do
    {
      v119 = v118;
      if (v118-- == 0)
      {
        break;
      }

      v121 = *(v111 + v117);
      v117 += 8;
    }

    while (v121 != 1);
    v122 = a1;
    v123 = 32;
    v124 = *(v111 + 16);
    do
    {
      v125 = v124;
      if (!v124)
      {
        break;
      }

      v126 = *(v111 + v123);
      v123 += 8;
      --v124;
    }

    while (v126 != 2);
    v127 = 32;
    while (v113)
    {
      v128 = *(v111 + v127);
      v127 += 8;
      --v113;
      if (v128 == 3)
      {

        v129 = 3;
        goto LABEL_66;
      }
    }

    v130 = v119 != 0;

    if (v125)
    {
      v129 = 2;
    }

    else
    {
      v129 = v130;
    }

LABEL_66:
    a1 = v122;
    [v122 priority];
    if (REMReminderPriorityLevelForPriority() != v129)
    {
      [v122 priority];
      if (REMReminderPriorityLevelForPriority())
      {
        sub_21D29EBF4(&v232, 1);
      }

      else
      {
        LODWORD(v216) = 1;
      }
    }
  }

LABEL_74:
  v133 = sub_21DBF7FAC();
  if (v133 != 2)
  {
    v134 = v133;
    v135 = [a1 flaggedContext];
    if (v135)
    {
      v136 = v135;
      if ([v135 flagged] < 1 || (v134 & 1) != 0)
      {
        v137 = [v136 flagged];

        LODWORD(v216) = (v137 > 0) ^ v134 | v216;
      }

      else
      {
        sub_21D29EBF4(&v232, 2);
      }
    }

    else
    {
      sub_21D29EC0C(&v232, 3);
    }
  }

  v138 = v223;
  sub_21DBF7FDC();
  if ((*(v84 + 48))(v138, 1, v109) != 1)
  {
    v139 = v218;
    (*(v84 + 32))(v218, v138, v109);
    v140 = sub_21D7A608C();
    if (v140 >> 62)
    {
      v172 = v140;
      v173 = sub_21DBFBD7C();
      v140 = v172;
      if (v173)
      {
        goto LABEL_85;
      }
    }

    else if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_85:
      if ((v140 & 0xC000000000000001) != 0)
      {
        v141 = MEMORY[0x223D44740](0);
        goto LABEL_88;
      }

      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v141 = *(v140 + 32);
LABEL_88:
        v142 = v141;

        v143 = sub_21DBF7E7C();
LABEL_112:
        v175 = v143;

        v176 = v175 ^ 1;
        v177 = 1;
        goto LABEL_113;
      }

      __break(1u);
      goto LABEL_139;
    }

    v140 = sub_21D7A6080();
    if (!(v140 >> 62))
    {
      if (!*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_140:

        v176 = 0;
        v177 = 0;
LABEL_113:
        v178 = *(v211 + 64);
        *v82 = v177;
        v82[1] = v176 & 1;
        (*(v84 + 16))(&v82[v178], v139, v109);
        v179 = *(v84 + 88);
        v180 = v179(&v82[v178], v109);
        v181 = *MEMORY[0x277D458C0];
        if (v180 == *MEMORY[0x277D458C0] || v180 == *MEMORY[0x277D458C8])
        {
          if (v176 & 1 | ((v177 & 1) == 0))
          {
LABEL_116:
            v182 = *(v230 + 8);
            v182(&v82[v178], v109);
            sub_21D29EBF4(&v232, 3);
            v182(v218, v109);
            goto LABEL_131;
          }
        }

        else
        {
          if (v180 == *MEMORY[0x277D458B8])
          {
            sub_21D29EC0C(&v232, 1);
            goto LABEL_130;
          }

          if (v180 == *MEMORY[0x277D458B0])
          {
            v183 = v177;
          }

          else
          {
            v183 = 0;
          }

          if (v183)
          {
            goto LABEL_116;
          }

          if (v176)
          {
            v184 = *(v230 + 8);
            v184(v218, v109);
            v184(&v82[v178], v109);
            LODWORD(v216) = 1;
            goto LABEL_131;
          }

          if ((v177 & 1) == 0)
          {
LABEL_130:
            v186 = *(v230 + 8);
            v186(v218, v109);
            v186(&v82[v178], v109);
            goto LABEL_131;
          }
        }

        v185 = v179(&v82[v178], v109);
        if (v185 == v181)
        {
          (*(v230 + 8))(v218, v109);
          goto LABEL_131;
        }

        if (v185 == *MEMORY[0x277D458C8])
        {
          goto LABEL_130;
        }

        goto LABEL_143;
      }

      goto LABEL_108;
    }

LABEL_139:
    v190 = v140;
    v191 = sub_21DBFBD7C();
    v140 = v190;
    if (!v191)
    {
      goto LABEL_140;
    }

LABEL_108:
    if ((v140 & 0xC000000000000001) != 0)
    {
      v174 = MEMORY[0x223D44740](0);
      goto LABEL_111;
    }

    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v174 = *(v140 + 32);
LABEL_111:
      v142 = v174;

      v143 = sub_21DBF7E6C();
      goto LABEL_112;
    }

    __break(1u);
LABEL_143:
    sub_21DBFC63C();
    __break(1u);
    goto LABEL_144;
  }

  sub_21D0CF7E0(v138, &qword_27CE64880, &unk_21DC40300);
LABEL_131:
  v187 = v234;
  if (*(v234 + 16))
  {

    v188 = 0;
  }

  else
  {

    v187 = v233;
    if (*(v233 + 16))
    {
      v188 = 1;
    }

    else
    {

      v187 = (v216 & 1) == 0;
      v188 = 2;
    }
  }

  v189 = v219;
  *v219 = v187;
  *(v189 + 8) = v188;
}

uint64_t static TTRReminderEditor.move(moves:saveRequest:shouldSave:undoManager:)(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = 0;
  if (a4)
  {
    v7 = type metadata accessor for TTRBasicUndoContext();
    v6 = swift_allocObject();
    *(v6 + 16) = a4;
    v8 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v34[1] = 0;
    v34[2] = 0;
  }

  v34[0] = v6;
  v34[3] = v7;
  v34[4] = v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a4;
    v29 = v9 - 1;
    for (i = (a1 + 40); ; i += 2)
    {
      v12 = *(i - 1);
      v13 = *i;
      sub_21D0D3954(v34, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0D3954(aBlock, v33, &unk_27CE60D80, &unk_21DC093F0);
      v14 = v12;
      v15 = v13;
      v16 = [a2 updateReminder_];
      sub_21D0D3954(v33, v32, &unk_27CE60D80, &unk_21DC093F0);
      v31[6] = 0;
      sub_21D0D3954(v32, v31, &unk_27CE60D80, &unk_21DC093F0);
      v17 = [v16 fetchedCurrentDueDateDeltaAlert];
      sub_21D0CF7E0(v32, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(v33, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v18 = [v16 subtaskContext];
      if (v18)
      {
        v19 = v18;
        v20 = [v16 listChangeItem];
        if (v20)
        {
          v21 = v20;
          v22 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v15, v20, v19, 0);
        }

        else
        {
          v22 = v15;
        }

        [v19 insertReminderChangeItem:v22 afterReminderChangeItem:0];
      }

      else
      {
      }

      sub_21D0CF7E0(v31, &unk_27CE60D80, &unk_21DC093F0);

      if (!v29)
      {
        break;
      }

      --v29;
    }
  }

  else
  {
    v23 = a4;
  }

  if (a3)
  {
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v24 = sub_21DBFB12C();
    aBlock[4] = sub_21D9C89C0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_116_0;
    v25 = _Block_copy(aBlock);
    [a2 saveWithQueue:v24 completion:v25];
    _Block_release(v25);
  }

  return sub_21D0CF7E0(v34, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D9D4DB4(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRecurrenceRuleModel.init(sourceRule:)(*a1, v6);
  LOBYTE(a2) = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v6, a2);
  sub_21D9D9170(v6, type metadata accessor for TTRRecurrenceRuleModel);
  return a2 & 1;
}

void *sub_21D9D4E8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6));
      v15 = *(v14 + 16);
      v7 &= v7 - 1;
      *a2 = *v14;
      *(a2 + 16) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_21D9D4F98(void *result, void *a2, uint64_t a3, uint64_t a4)
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
        sub_21DBF8E0C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_21DBF8E0C();
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

void sub_21D9D50F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
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
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_21D1074E8(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for TTRRecurrenceRuleModel);
      v23 = v22;
      v24 = v30;
      sub_21D9D9028(v23, v30, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D9D9028(v24, a2, type metadata accessor for TTRRecurrenceRuleModel);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_21D9D5368(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70, &unk_21DC0D058);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v32 - v11;
  v12 = a4 + 8;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & a4[8];
  if (!a2)
  {
LABEL_19:
    v22 = 0;
LABEL_26:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a3;
    v16 = 0;
    v33 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
      v39 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      a1 = a4;
      v23 = a4[7];
      v24 = v37;
      v25 = *(v38 + 72);
      sub_21D0D3954(v23 + v25 * (v21 | (v16 << 6)), v37, &qword_27CE59D70, &unk_21DC0D058);
      v26 = v24;
      v27 = v36;
      sub_21D0D523C(v26, v36, &qword_27CE59D70, &unk_21DC0D058);
      v28 = v27;
      v29 = v39;
      sub_21D0D523C(v28, v39, &qword_27CE59D70, &unk_21DC0D058);
      if (v18 == v35)
      {
        a4 = a1;
        a1 = v34;
        goto LABEL_24;
      }

      a2 = v29 + v25;
      v30 = __OFADD__(v18++, 1);
      a4 = a1;
      v16 = v22;
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
        goto LABEL_29;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = v12[v20];
      ++v19;
      if (v15)
      {
        v39 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v31 = v16 + 1;
    }

    else
    {
      v31 = v17;
    }

    v22 = v31 - 1;
    a1 = v34;
LABEL_24:
    v13 = v33;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

void *sub_21D9D55E8(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v25[3] = v18[3];
      v25[4] = v19;
      v25[1] = v21;
      v25[2] = v20;
      memmove(v11, v18, 0x50uLL);
      if (v14 == v10)
      {
        sub_21D1D9B34(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      sub_21D1D9B34(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_21D9D5774(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_21DBF8E0C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_21DBF8E0C();
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

uint64_t sub_21D9D58E0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_21DBFC21C();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_21DBFC2DC())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_21D0D8CF0(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 56) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

void sub_21D9D5ADC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_21DBF5D5C();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
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
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
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
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
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
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t *sub_21D9D5D9C(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_21DBFBD1C();
  sub_21D0D8CF0(0, a5, a6);
  sub_21D19F2B8(a7, a5, a6);
  result = sub_21DBFAB5C();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_21DBFBDBC())
      {
        goto LABEL_30;
      }

      sub_21D0D8CF0(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void sub_21D9D5FCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
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
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_21D1074E8(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      v23 = v22;
      v24 = v30;
      sub_21D9D9028(v23, v30, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D9D9028(v24, a2, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_21D9D6244(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_21D9D6344(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

void *sub_21D9D63C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58860, &qword_21DC2FB10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_21D9D6480(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64918, qword_21DC34FD0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70, &unk_21DC0D058) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

void *sub_21D9D6588(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0, &unk_21DC0D000);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21D9D660C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8, &qword_21DC34FC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_21D9D669C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

void *sub_21D9D674C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D9D6848(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = (*(a2 + 16))(&v4);
  if (result)
  {
    v3 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v3);
  }

  return result;
}

void *sub_21D9D68C8(uint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v5[2] = &v6;
  v2 = sub_21D4E5FC8(sub_21D9D8F1C, v5, a2);
  v3 = sub_21D198784(v2);

  sub_21D7F5F48(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
  swift_allocObject();
  return sub_21D9BDF28();
}

uint64_t _s15RemindersUICore17TTRReminderEditorC11FilterMatchO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      v6 = sub_21D322DA4();
      sub_21D9D82E8(v4, 0);
      sub_21D9D82E8(v2, 0);
      sub_21D9D830C(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      LOBYTE(v6) = sub_21D322DA4();
      sub_21D9D82E8(v4, 1u);
      sub_21D9D82E8(v2, 1u);
      sub_21D9D830C(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_21D9D830C(v7, v8);
      return v6 & 1;
    }

    goto LABEL_19;
  }

  if (!v2)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_21D9D830C(0, 2u);
      sub_21D9D830C(0, 2u);
      return 1;
    }

    goto LABEL_19;
  }

  if (v5 != 2 || v4 != 1)
  {
LABEL_19:
    sub_21D9D82E8(*a2, *(a2 + 8));
    sub_21D9D82E8(v2, v3);
    sub_21D9D830C(v2, v3);
    sub_21D9D830C(v4, v5);
    return 0;
  }

  v11 = 1;
  sub_21D9D830C(1, 2u);
  sub_21D9D830C(1, 2u);
  return v11;
}

uint64_t sub_21D9D6AE0(uint64_t a1, id a2, uint64_t a3, char a4)
{
  v6 = [a2 updateReminder_];
  sub_21D0D3954(a3, v10, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 16) = v6;
  sub_21D0D3954(v10, v7 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v7 + 64) = a4;
  v8 = [v6 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a3, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v10, &unk_27CE60D80, &unk_21DC093F0);
  *(v7 + 72) = v8;
  return v7;
}

uint64_t sub_21D9D6BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = 0;
  v7 = *(v5 - 8);
  v8 = *(v7 + 72);
  v9 = (a1 + *(v5 + 20) + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  while (*v9 != 4)
  {
    v9 = (v9 + v8);
    if (v2 == ++v6)
    {
      return 0;
    }
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F2C0);

  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = [*(a2 + 16) objectID];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_21D0C9000, v12, v13, "Removing hourly recurrenceRule because dueDate is allDay {reminderID: %{public}@}", v14, 0xCu);
    sub_21D0CF7E0(v15, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  return v6;
}

id sub_21D9D6DF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(v3 + 16);
  v7 = [v6 subtaskContext];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v6 saveRequest];
  v10 = sub_21DBFA12C();
  v11 = [v9 addReminderWithTitle:v10 toReminderSubtaskContextChangeItem:v8];

  if (v5 < 2 || v4)
  {
    v14 = v4;
    v15 = v5;
    v12 = TTRReminderEditor.moveAsSubtask(_:position:)(v11, &v14);
  }

  else
  {
  }

  return v11;
}

BOOL sub_21D9D6EFC(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 string];
    v4 = sub_21DBFA16C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  v9 = [a2 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  return v13 == 0;
}

uint64_t _s15RemindersUICore17TTRReminderEditorC10changeItem11undoContextACSo017REMReminderChangeF0C_AA07TTRUndoH0_pSgtcfC_0(void *a1, uint64_t a2)
{
  sub_21D0D3954(a2, v7, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 16) = a1;
  sub_21D0D3954(v7, v4 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v4 + 64) = 0;
  v5 = [a1 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a2, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v7, &unk_27CE60D80, &unk_21DC093F0);
  *(v4 + 72) = v5;
  return v4;
}

uint64_t type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(uint64_t a1)
{
  result = qword_27CE648F0;
  if (!qword_27CE648F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21D9D715C(void *a1, uint64_t *a2, void *a3)
{
  v40 = sub_21DBF4CAC();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *a2;
  v10 = *(*a2 + 16);
  if (v10)
  {
    v38 = (v6 + 8);
    sub_21DBF8E0C();
    v11 = (v9 + 16 * v10 + 24);
    v41 = v9;
    v42 = a3;
    while (v10 <= *(v9 + 16))
    {
      v24 = *(v11 - 1);
      v25 = *v11;
      [a1 rem:v24 removeHashtagInRange:*v11];
      if (a3)
      {
        v12 = sub_21DBFA23C();
        v14 = v13;
        v15 = [a3 name];
        v16 = sub_21DBFA16C();
        v18 = v17;

        v43 = v12;
        v44 = v14;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v16, v18);

        v19 = v43;
        v20 = v44;
        v21 = sub_21DBFA12C();
        [a1 replaceCharactersInRange:v24 withString:{v25, v21}];

        a3 = v42;
        v22 = MEMORY[0x223D42B30](v19, v20);

        v23 = [objc_opt_self() attributeFromHashtag_];
        [a1 rem:v23 addHashtag:v24 range:v22];

        v9 = v41;
      }

      else
      {
        v26 = [a1 string];
        if (!v26)
        {
          sub_21DBFA16C();
          v26 = sub_21DBFA12C();
        }

        v27 = [v26 rangeOfComposedCharacterSequenceAtIndex_];
        v29 = v28;
        if (v27 == sub_21DBF4B4C())
        {
        }

        else
        {
          v30 = [v26 substringWithRange_];
          v31 = sub_21DBFA16C();
          v33 = v32;

          sub_21D1954D0(v31, v33);
          v35 = v34;

          if (v35)
          {
            v36 = v39;
            sub_21DBF4C1C();
            v37 = sub_21DBF4BFC();

            (*v38)(v36, v40);

            v9 = v41;
            a3 = v42;
            if (v37)
            {
              [a1 deleteCharactersInRange_];
            }
          }

          else
          {

            v9 = v41;
            a3 = v42;
          }
        }
      }

      v11 -= 2;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
  }

  return result;
}

id sub_21D9D74E0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 string];
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_opt_self() allowedAttributesForModel];
  type metadata accessor for Key(0);
  sub_21D9D77FC(&qword_280D17790, 255, type metadata accessor for Key, byte_21DC082E8);
  v8 = sub_21DBFAAAC();

  v9 = [v1 string];
  if (!v9)
  {
    sub_21DBFA16C();
    v9 = sub_21DBFA12C();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  if (!*(v8 + 16))
  {
    goto LABEL_10;
  }

  [v10 beginEditing];
  v11 = [v1 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D47B3FC;
  *(v17 + 24) = v16;
  v20[4] = sub_21D301E58;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_21D472CC4;
  v20[3] = &block_descriptor_227_0;
  v18 = _Block_copy(v20);
  sub_21DBF8E0C();
  v10 = v10;

  [v1 enumerateAttributesInRange:0 options:v15 usingBlock:{0, v18}];
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    [v10 endEditing];

LABEL_10:

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D9D77FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21D9D7884(uint64_t a1)
{
  v3 = *(sub_21DBF509C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21D9C62D4(a1, v1 + v4, v5);
}

id sub_21D9D7A2C(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchReminderWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

id sub_21D9D7AEC(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = [*(v2 + 16) hashtagContext];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  sub_21D9CB53C(v4, v5, v6, v7);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (v7)
    {
      v11 = v4;
      [v9 addHashtag_];
      v12 = [v11 objectID];
      [v9 undeleteHashtagWithID_];
    }

    else
    {
      v12 = sub_21DBFA12C();
      v11 = [v9 addHashtagWithType:v6 name:v12];
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21D9D9784;
    *(v14 + 24) = v13;
    v15 = v11;
  }

  return v11;
}

double sub_21D9D7C80(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a1;
  }

  else
  {
    sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D9D7CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_21D1074E8(a1, a2, type metadata accessor for TTRRecurrenceRuleModel);
  return sub_21D313BC4(v4, a2);
}

uint64_t sub_21D9D7EDC(uint64_t a1, uint64_t a2)
{
  result = sub_21D9D77FC(&qword_280D16328, a2, type metadata accessor for TTRReminderEditor, protocol conformance descriptor for TTRReminderEditor);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_21D9D7F68()
{
  result = qword_27CE648D8;
  if (!qword_27CE648D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderEditor.WeekendType, &type metadata for TTRReminderEditor.WeekendType, v0, v1);
    atomic_store(result, &qword_27CE648D8);
  }

  return result;
}

unint64_t sub_21D9D7FC0()
{
  result = qword_27CE648E0;
  if (!qword_27CE648E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderEditor.FilterMatch.Failure, &type metadata for TTRReminderEditor.FilterMatch.Failure, v0, v1);
    atomic_store(result, &qword_27CE648E0);
  }

  return result;
}

unint64_t sub_21D9D8018()
{
  result = qword_27CE648E8;
  if (!qword_27CE648E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderEditor.FilterMatch.Override, &type metadata for TTRReminderEditor.FilterMatch.Override, v0, v1);
    atomic_store(result, &qword_27CE648E8);
  }

  return result;
}

uint64_t initializeWithCopy for TTRHashtagSpecifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D9D7C80(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for TTRHashtagSpecifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D9D7C80(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_21D24B434(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for TTRHashtagSpecifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_21D24B434(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRHashtagSpecifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for TTRHashtagSpecifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

double sub_21D9D82E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    sub_21DBF8E0C();
  }

  return result;
}

double sub_21D9D830C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderEditor.FilterMatch(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D9D82E8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D9D830C(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRReminderEditor.FilterMatch(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D9D830C(v4, v5);
  return a1;
}

uint64_t *sub_21D9D83E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    v13 = *(a2 + v11);
    *(a1 + v11) = v13;
    *(a1 + v12) = *(a2 + v12);
    v14 = v13;
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21D9D8574(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  return result;
}

char *sub_21D9D864C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  v11 = *&a2[v9];
  *&a1[v9] = v11;
  *&a1[v10] = *&a2[v10];
  v12 = v11;
  sub_21DBF8E0C();
  return a1;
}

char *sub_21D9D8790(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a1[v12];
  v14 = *&a2[v12];
  *&a1[v12] = v14;
  v15 = v14;

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  sub_21DBF8E0C();

  return a1;
}

char *sub_21D9D894C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];
  return a1;
}

char *sub_21D9D8A84(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

void sub_21D9D8C5C(uint64_t a1)
{
  sub_21D4D5850(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t objectdestroy_80Tm()
{
  v1 = *(type metadata accessor for TTRRecurrenceRuleModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for TTRRecurrenceEndModel(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3) && !swift_getEnumCaseMultiPayload())
  {
    v4 = sub_21DBF563C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D9D8F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = **(v2 + 16);
  result = (*(v4 + 16))(&v6);
  *a2 = result;
  return result;
}

uint64_t sub_21D9D9028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9D9090(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21D9CB054(a1, v1 + v4, v7);
}

uint64_t sub_21D9D9170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D9D91D0(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = *a1;
  result = sub_21D9D6BDC(*a1, a2);
  if (!v2)
  {
    v42 = a1;
    v47 = v14;
    v39 = 0;
    if (v17)
    {
      return v15[2];
    }

    v43 = v8;
    v44 = v11;
    v46 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15 + 2;
      v20 = v15[2];
      if (v19 == v20)
      {
        return v46;
      }

      *&v18 = 138543362;
      v41 = v18;
      v40 = v5;
      v45 = v6;
      while (v19 < v20)
      {
        v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v48 = v15;
        v23 = v15 + v22;
        v24 = *(v6 + 72);
        v25 = v24 * v19;
        v26 = v47;
        sub_21D1074E8(&v23[v24 * v19], v47, type metadata accessor for TTRRecurrenceRuleModel);
        if (*(v26 + *(v5 + 20)) == 4)
        {
          if (qword_280D0F2B8 != -1)
          {
            swift_once();
          }

          v27 = sub_21DBF84BC();
          __swift_project_value_buffer(v27, qword_280D0F2C0);

          v28 = sub_21DBF84AC();
          v29 = sub_21DBFAEDC();

          v30 = os_log_type_enabled(v28, v29);
          v6 = v45;
          if (v30)
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v31 = v41;
            v33 = [*(a2 + 16) objectID];
            *(v31 + 4) = v33;
            *v32 = v33;
            _os_log_impl(&dword_21D0C9000, v28, v29, "Removing hourly recurrenceRule because dueDate is allDay {reminderID: %{public}@}", v31, 0xCu);
            sub_21D0CF7E0(v32, &unk_27CE60070, &unk_21DC09550);
            MEMORY[0x223D46520](v32, -1, -1);
            MEMORY[0x223D46520](v31, -1, -1);
          }

          result = sub_21D9D9170(v47, type metadata accessor for TTRRecurrenceRuleModel);
          v15 = v48;
        }

        else
        {
          result = sub_21D9D9170(v26, type metadata accessor for TTRRecurrenceRuleModel);
          v34 = v46;
          if (v19 == v46)
          {
            v15 = v48;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            v35 = v42;
            v36 = a2;
            v37 = *v21;
            if (v46 >= *v21)
            {
              goto LABEL_29;
            }

            v38 = v24 * v46;
            result = sub_21D1074E8(&v23[v24 * v46], v44, type metadata accessor for TTRRecurrenceRuleModel);
            if (v19 >= v37)
            {
              goto LABEL_30;
            }

            sub_21D1074E8(&v23[v25], v43, type metadata accessor for TTRRecurrenceRuleModel);
            v15 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_21D256CA4(v15);
            }

            a2 = v36;
            result = sub_21D9D9618(v43, v15 + v22 + v38);
            if (v19 >= v15[2])
            {
              goto LABEL_31;
            }

            result = sub_21D9D9618(v44, v15 + v22 + v25);
            *v35 = v15;
            v5 = v40;
            v34 = v46;
          }

          v46 = v34 + 1;
          v6 = v45;
        }

        ++v19;
        v21 = v15 + 2;
        v20 = v15[2];
        if (v19 == v20)
        {
          return v46;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D9D9618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_34Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D9D9794(unint64_t a1)
{
  if (a1 >= 5)
  {
    if (qword_280D0F340 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F348);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      sub_21D679D9C();
      v7 = sub_21DBFBC0C();
      v9 = sub_21D0CDFB4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_21D0C9000, v3, v4, "Unexpected authorization status: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D46520](v6, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x1Cu >> a1;
  }

  return v1 & 1;
}

uint64_t sub_21D9D9904()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F348);
  v1 = __swift_project_value_buffer(v0, qword_280D0F348);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*sub_21D9D99E4(void *a1))(void *a1)
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
  v2[4] = sub_21D9D9A54(v2);
  return sub_21D4C30A8;
}

void (*sub_21D9D9A54(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
    a1[2] = v5;
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
    a1[2] = v5;
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[3] = v6;
  v8 = [v2 lastViewedNotificationsPermissionWarmingSheetDate];
  if (v8)
  {
    v9 = v8;
    sub_21DBF55FC();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 56))(v5, v10, 1, v11);
  sub_21D46CA8C(v5, v7);
  return sub_21D9D9BB4;
}

void sub_21D9D9BCC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = v4;
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(a1, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_21DBF55BC();
    (*(v9 + 8))(a1, v8);
    v11 = v12;
  }

  v13 = v11;
  [v6 *a4];
}

void (*sub_21D9D9CCC(void *a1))(void *a1)
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
  v2[4] = sub_21D9D9D3C(v2);
  return sub_21D4C3D30;
}

void (*sub_21D9D9D3C(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
    a1[2] = v5;
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
    a1[2] = v5;
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[3] = v6;
  v8 = [v2 lastDismissedNotificationsPermissionInlineRequestDate];
  if (v8)
  {
    v9 = v8;
    sub_21DBF55FC();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 56))(v5, v10, 1, v11);
  sub_21D46CA8C(v5, v7);
  return sub_21D9D9E9C;
}

void sub_21D9D9EA8(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 24);
  if (a2)
  {
    v6 = *(a1 + 8);
    sub_21D46CAFC(*(a1 + 24), v6);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v6, v7);
      v5 = *(a1 + 24);
      v6 = *(a1 + 8);
    }

    v13 = *(a1 + 16);
    [*a1 *a3];

    sub_21D0CF7E0(v5, &qword_27CE58D68, &unk_21DC0C060);
  }

  else
  {
    v10 = sub_21DBF563C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_21DBF55BC();
      (*(v11 + 8))(v5, v10);
      v5 = *(a1 + 24);
    }

    v6 = *(a1 + 8);
    v13 = *(a1 + 16);
    [*a1 *a3];
  }

  free(v5);
  free(v13);

  free(v6);
}

id TTRNotificationsAccessService.authorizationStatus.getter()
{
  v1 = [*(v0 + 32) notificationSettings];
  v2 = [v1 authorizationStatus];

  return v2;
}

uint64_t TTRNotificationsAccessService.lastPresentedWarmingSheetDate.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t TTRNotificationsAccessService.lastPresentedWarmingSheetDate.setter(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v28[-v16];
  v18 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 8);
  v31 = ObjectType;
  v20(ObjectType, v18);
  v21 = *(v7 + 56);
  v33 = a1;
  sub_21D46CAFC(a1, v9);
  sub_21D46CAFC(v17, &v9[v21]);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    sub_21D46CAFC(v9, v14);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v26 = v30;
      (*(v4 + 32))(v30, &v9[v21], v3);
      sub_21D721DC4();
      v29 = sub_21DBFA10C();
      v27 = *(v4 + 8);
      v27(v26, v3);
      sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
      v27(v14, v3);
      sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
      v23 = v33;
      if (v29)
      {
        return sub_21D0CF7E0(v23, &qword_27CE58D68, &unk_21DC0C060);
      }

      goto LABEL_7;
    }

    sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
    (*(v4 + 8))(v14, v3);
LABEL_6:
    sub_21D0CF7E0(v9, &qword_27CE5BE10, &qword_21DC28540);
    v23 = v33;
LABEL_7:
    v24 = v32;
    sub_21D46CAFC(v23, v32);
    (*(v18 + 16))(v24, v31, v18);
    return sub_21D0CF7E0(v23, &qword_27CE58D68, &unk_21DC0C060);
  }

  sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
  if (v22(&v9[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
  v23 = v33;
  return sub_21D0CF7E0(v23, &qword_27CE58D68, &unk_21DC0C060);
}

void (*TTRNotificationsAccessService.lastPresentedWarmingSheetDate.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(ObjectType, v5);
  return sub_21D9DA614;
}

uint64_t TTRNotificationsAccessService.lastDismissedInlineRequestDate.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_21D9DA680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21D46CAFC(a1, &v11 - v8);
  return a5(v9);
}

uint64_t TTRNotificationsAccessService.lastDismissedInlineRequestDate.setter(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v28[-v16];
  v18 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 32);
  v31 = ObjectType;
  v20(ObjectType, v18);
  v21 = *(v7 + 56);
  v33 = a1;
  sub_21D46CAFC(a1, v9);
  sub_21D46CAFC(v17, &v9[v21]);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    sub_21D46CAFC(v9, v14);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v26 = v30;
      (*(v4 + 32))(v30, &v9[v21], v3);
      sub_21D721DC4();
      v29 = sub_21DBFA10C();
      v27 = *(v4 + 8);
      v27(v26, v3);
      sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
      v27(v14, v3);
      sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
      v23 = v33;
      if (v29)
      {
        return sub_21D0CF7E0(v23, &qword_27CE58D68, &unk_21DC0C060);
      }

      goto LABEL_7;
    }

    sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
    (*(v4 + 8))(v14, v3);
LABEL_6:
    sub_21D0CF7E0(v9, &qword_27CE5BE10, &qword_21DC28540);
    v23 = v33;
LABEL_7:
    v24 = v32;
    sub_21D46CAFC(v23, v32);
    (*(v18 + 40))(v24, v31, v18);
    return sub_21D0CF7E0(v23, &qword_27CE58D68, &unk_21DC0C060);
  }

  sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
  if (v22(&v9[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
  v23 = v33;
  return sub_21D0CF7E0(v23, &qword_27CE58D68, &unk_21DC0C060);
}

void (*TTRNotificationsAccessService.lastDismissedInlineRequestDate.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);
  return sub_21D9DABF0;
}

void sub_21D9DAC08(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_21D46CAFC(v5, v4);
    a3(v4);
    sub_21D0CF7E0(v5, &qword_27CE58D68, &unk_21DC0C060);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

Swift::Void __swiftcall TTRNotificationsAccessService.resetInlineRequestDismissedDate()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  v3 = sub_21DBF563C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  TTRNotificationsAccessService.lastDismissedInlineRequestDate.setter(v2);
}

uint64_t sub_21D9DAD68()
{
  v1 = *(v0[27] + 32);
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_21D9DAE90;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64928, &qword_21DC35018);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21D9DB284;
  v0[21] = &block_descriptor_4;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:15 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21D9DAE90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_21D9DB218;
  }

  else
  {
    v2 = sub_21D9DAFA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D9DAFA0()
{
  v1 = v0[28];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_21D9DB0BC;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64920, &qword_21DC35008);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21D123608;
  v0[21] = &block_descriptor_7_5;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21D9DB0BC()
{

  return MEMORY[0x2822009F8](sub_21D9DB19C, 0, 0);
}

uint64_t sub_21D9DB19C()
{
  v1 = *(v0 + 208);
  v2 = [v1 authorizationStatus];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21D9DB218(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_21D9DB284(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t TTRNotificationsAccessService.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRNotificationsAccessService.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_21D9DB408()
{
  v1 = [*(v0 + 32) notificationSettings];
  v2 = [v1 authorizationStatus];

  return v2;
}

uint64_t sub_21D9DB458()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

void (*sub_21D9DB4B0(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(ObjectType, v5);
  return sub_21D9DA614;
}

void (*sub_21D9DB59C(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);
  return sub_21D9DABF0;
}

uint64_t sub_21D9DB684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_21DBF563C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return TTRNotificationsAccessService.lastDismissedInlineRequestDate.setter(v2);
}

uint64_t sub_21D9DB738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D203124;

  return TTRNotificationsAccessService.requestSystemNotificationsAuthorization()();
}

uint64_t dispatch thunk of TTRNotificationsAccessServiceType.authorizationStatus()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1237C4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRNotificationsAccessServiceType.requestSystemNotificationsAuthorization()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D22C140;

  return v7(a1, a2);
}

void CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v14.origin.x = a3;
      v14.origin.y = a4;
      v14.size.width = a5;
      v14.size.height = a6;
      CGRectGetMinX(v14);
      v15.origin.x = a3;
      v15.origin.y = a4;
      v15.size.width = a5;
      v15.size.height = a6;
      CGRectGetWidth(v15);
    }

    else
    {
      if (qword_27CE56F38 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF84BC();
      __swift_project_value_buffer(v10, qword_27CE64930);
      v11 = MEMORY[0x277D84F90];
      v12 = sub_21D17716C(MEMORY[0x277D84F90]);
      v13 = sub_21D17716C(v11);
      sub_21DAEAB00("unknown language direction", 26, 2, v12, v13);
      __break(1u);
    }
  }
}

CGPoint __swiftcall CGRect.topLeftPoint(isFlipped:)(Swift::Bool isFlipped)
{
  if (!isFlipped)
  {
    v1 = v1 + v2;
  }

  result.y = v1;
  return result;
}

CGPoint __swiftcall CGRect.bottomLeftPoint(isFlipped:)(Swift::Bool isFlipped)
{
  if (isFlipped)
  {
    v1 = v1 + v2;
  }

  result.y = v1;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

__C::CGRect __swiftcall CGRect.centered(at:)(CGPoint at)
{
  v3 = v2;
  v4 = v1;
  v5 = at.x - v1 * 0.5;
  v6 = at.y - v2 * 0.5;
  result.size.height = v3;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

double CGRect.pixelAligned(toScale:)(double a1, double a2)
{
  if (a1 == 1.0)
  {
    return floor(a2);
  }

  else
  {
    return floor(a1 * a2) / a1;
  }
}

uint64_t sub_21D9DBD5C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64930);
  v1 = __swift_project_value_buffer(v0, qword_27CE64930);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__C::CGRect __swiftcall CGRect.init(size:topLeftPoint:isFlipped:)(CGSize size, CGPoint topLeftPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  if (isFlipped)
  {
    y = topLeftPoint.y;
  }

  else
  {
    y = topLeftPoint.y - size.height;
  }

  x = topLeftPoint.x;
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

__C::CGRect __swiftcall CGRect.init(size:bottomLeftPoint:isFlipped:)(CGSize size, CGPoint bottomLeftPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  if (isFlipped)
  {
    y = bottomLeftPoint.y - size.height;
  }

  else
  {
    y = bottomLeftPoint.y;
  }

  x = bottomLeftPoint.x;
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

__C::CGRect __swiftcall CGRect.init(size:topRightPoint:isFlipped:)(CGSize size, CGPoint topRightPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  v5 = topRightPoint.x - size.width;
  y = topRightPoint.y - size.height;
  if (isFlipped)
  {
    y = topRightPoint.y;
  }

  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = v5;
  return result;
}

__C::CGRect __swiftcall CGRect.init(size:bottomRightPoint:isFlipped:)(CGSize size, CGPoint bottomRightPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  v5 = bottomRightPoint.x - size.width;
  y = bottomRightPoint.y - size.height;
  if (!isFlipped)
  {
    y = bottomRightPoint.y;
  }

  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = v5;
  return result;
}

uint64_t TTRRemindersListEditingState.editingItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8, &qword_21DC28C10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  (*(a2 + 8))(a1, a2, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0, &qword_21DC1D4B0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5E8E8, &qword_21DC28C10);
    v11 = 1;
  }

  else
  {
    sub_21D1056FC(v9, a3, type metadata accessor for TTRRemindersListViewModel.Item);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t TTRRemindersListEditingState.editingAttribute.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8, &qword_21DC28C10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  (*(a2 + 8))(a1, a2, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0, &qword_21DC1D4B0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    result = sub_21D0CF7E0(v9, &qword_27CE5E8E8, &qword_21DC28C10);
    v12 = 3;
  }

  else
  {
    v12 = v9[*(v10 + 48)];
    result = sub_21D106978(v9, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  *a3 = v12;
  return result;
}

unint64_t TTRRemindersListEditingState.loggingDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = TTRRemindersListEditingState.isEditingItem.getter(a1, a2);
  v5 = (*(a2 + 16))(a1, a2);
  v6 = 0xD000000000000014;
  if ((v5 & 1) == 0)
  {
    v6 = 0x20676E6974696465;
  }

  v7 = 0x7469646520746F6ELL;
  if (v5)
  {
    v7 = 0x20676E6974696465;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

BOOL TTRRemindersListEditingState.isEditingItem.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  TTRRemindersListEditingState.editingItem.getter(a1, a2, &v10 - v5);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_21D0CF7E0(v6, &unk_27CE5CD80, &qword_21DC0CE80);
  return v8;
}

uint64_t TTRRemindersListEditingState.isEditing(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  TTRRemindersListEditingState.editingItem.getter(a2, a3, v13);
  v23 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
  {
    sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
    v24 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v22);
    sub_21D106978(v13, type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = 0;
  }

  v25 = *(v6 + 56);
  v25(v22, v24, 1, v5);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
  v25(v19, 0, 1, v5);
  v26 = *(v8 + 48);
  sub_21D569DB4(v22, v10);
  sub_21D569DB4(v19, &v10[v26]);
  v27 = *(v6 + 48);
  if (v27(v10, 1, v5) != 1)
  {
    sub_21D569DB4(v10, v16);
    if (v27(&v10[v26], 1, v5) != 1)
    {
      v29 = v32;
      sub_21D1056FC(&v10[v26], v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v28 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v16, v29);
      sub_21D106978(v29, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v19, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D0CF7E0(v22, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D106978(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v10, &qword_27CE5FB90, &unk_21DC09290);
      return v28 & 1;
    }

    sub_21D0CF7E0(v19, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D0CF7E0(v22, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D106978(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
    goto LABEL_9;
  }

  sub_21D0CF7E0(v19, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D0CF7E0(v22, &qword_27CE5FB90, &unk_21DC09290);
  if (v27(&v10[v26], 1, v5) != 1)
  {
LABEL_9:
    sub_21D0CF7E0(v10, &qword_27CE5F2E0, &unk_21DC0F9C0);
    v28 = 0;
    return v28 & 1;
  }

  sub_21D0CF7E0(v10, &qword_27CE5FB90, &unk_21DC09290);
  v28 = 1;
  return v28 & 1;
}

uint64_t TTRRemindersListEditingState.isEditing(_:of:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[1] = a2;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8, &qword_21DC28C10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EAD0, &unk_21DC1D6B0);
  MEMORY[0x28223BE20](v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  (*(a4 + 8))(a3, a4, v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0, &qword_21DC1D4B0);
  if ((*(*(v24 - 8) + 48))(v15, 1, v24) != 1)
  {
    v26 = v15[*(v24 + 48)];
    v27 = *(v16 + 48);
    sub_21D1056FC(v15, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    v18[v27] = v26;
    v28 = v18[*(v16 + 48)];
    sub_21D1056FC(v18, v22, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
    v29 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v12, v9);
    sub_21D106978(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106978(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if ((v29 & 1) == 0)
    {
      v25 = 0;
LABEL_21:
      sub_21D106978(v22, type metadata accessor for TTRRemindersListViewModel.Item);
      return v25 & 1;
    }

    if (v28)
    {
      if (v28 == 1)
      {
        v30 = 0xE500000000000000;
        v31 = 0x7365746F6ELL;
        if (!v23)
        {
LABEL_14:
          v32 = 0xE500000000000000;
          if (v31 != 0x656C746974)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v30 = 0xE800000000000000;
        v31 = 0x7367617468736168;
        if (!v23)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v30 = 0xE500000000000000;
      v31 = 0x656C746974;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    if (v23 == 1)
    {
      v32 = 0xE500000000000000;
      if (v31 != 0x7365746F6ELL)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v32 = 0xE800000000000000;
      if (v31 != 0x7367617468736168)
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    if (v30 == v32)
    {
      v25 = 1;
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    v25 = sub_21DBFC64C();
    goto LABEL_20;
  }

  sub_21D0CF7E0(v15, &qword_27CE5E8E8, &qword_21DC28C10);
  v25 = 0;
  return v25 & 1;
}

uint64_t TTRPermissionConfiguration.Action.title.getter()
{
  v1 = *v0 >> 61;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_16;
    }

LABEL_8:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_16;
  }

  if (v1 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_16;
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_16;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_16:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRPermissionConfiguration.TTRUpgradeType.description.getter()
{
  if (*v0)
  {
    return 0x795364756F6C4369;
  }

  else
  {
    return 0x5641446C6163;
  }
}

RemindersUICore::TTRPermissionConfiguration::TTRUpgradeType_optional __swiftcall TTRPermissionConfiguration.TTRUpgradeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D9DD018()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D9DD09C(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D9DD10C(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D9DD18C(char *a2@<X8>)
{
  v3 = sub_21DBFC45C();

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

void sub_21D9DD1EC(uint64_t *a1@<X8>)
{
  v2 = 0x5641446C6163;
  if (*v1)
  {
    v2 = 0x795364756F6C4369;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21D9DD22C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x795364756F6C4369;
  }

  else
  {
    v3 = 0x5641446C6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA0000000000636ELL;
  }

  if (*a2)
  {
    v5 = 0x795364756F6C4369;
  }

  else
  {
    v5 = 0x5641446C6163;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000636ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

uint64_t sub_21D9DD2D4()
{
  if (*v0)
  {
    return 0x795364756F6C4369;
  }

  else
  {
    return 0x5641446C6163;
  }
}

id TTRPermissionConfiguration.Header.icon.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRPermissionConfiguration.Header.title.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRPermissionConfiguration.Header.body.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

unint64_t TTRPermissionConfiguration.Header.action.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D5D5D9C(v2, v3);
}

__n128 TTRPermissionConfiguration.Header.init(icon:title:body:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  result = *a6;
  *(a7 + 40) = *a6;
  return result;
}

uint64_t TTRPermissionConfiguration.PrimaryButton.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

unint64_t TTRPermissionConfiguration.PrimaryButton.action.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D5D5D9C(v2, v3);
}

uint64_t TTRPermissionConfiguration.PrimaryButton.init(action:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = TTRPermissionConfiguration.Action.title.getter();
  *a2 = result;
  a2[1] = v6;
  a2[2] = v3;
  a2[3] = v4;
  return result;
}

__n128 TTRPermissionConfiguration.PrimaryButton.init(title:action:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

__n128 TTRPermissionConfiguration.init(header:primaryButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 40) = *(a1 + 40);
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 72) = v4;
  return result;
}

double static TTRPermissionConfiguration.notificationPermissionRequest()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBFA12C();
  v3 = [objc_opt_self() _systemImageNamed_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  v7 = sub_21DBF516C();
  v9 = v8;
  v10 = sub_21DBF516C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  result = 1.49166815e-154;
  *(a1 + 72) = xmmword_21DC35160;
  return result;
}

double static TTRPermissionConfiguration.notificationPermissionDisabled()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBFA12C();
  v3 = [objc_opt_self() _systemImageNamed_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  v7 = sub_21DBF516C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  result = 2.0;
  *(a1 + 72) = xmmword_21DC220E0;
  return result;
}

uint64_t static TTRPermissionConfiguration.updateRequest(accountID:isLocalAccount:)@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF516C();
    v9 = v8;
    v10 = sub_21DBF516C();
    v12 = v11;
    v13 = 0x6000000000000001;
    v14 = a1;
    result = TTRPermissionConfiguration.Action.title.getter();
    v17 = 0x8000000000000001;
  }

  else
  {
    v18 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF516C();
    v9 = v19;
    v10 = sub_21DBF516C();
    v12 = v20;
    v13 = 0x6000000000000000;
    v21 = a1;
    result = TTRPermissionConfiguration.Action.title.getter();
    v17 = 0x8000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v9;
  a3[3] = v10;
  a3[4] = v12;
  a3[5] = v17;
  a3[6] = 0;
  a3[7] = result;
  a3[8] = v16;
  a3[9] = v13;
  a3[10] = a1;
  return result;
}

uint64_t _s15RemindersUICore26TTRPermissionConfigurationV6ActionO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1 >> 61;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v4 >> 61 != 1)
      {
        goto LABEL_44;
      }
    }

    else if (v4 >> 61)
    {
      goto LABEL_44;
    }

LABEL_42:
    v15 = sub_21D25C354(*a1, *a2);
    goto LABEL_45;
  }

  if (v6 == 2)
  {
    if (v4 >> 61 != 2)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 != 3)
  {
    if (v4 >> 61 == 4)
    {
      if (v2)
      {
        v11 = 0x795364756F6C4369;
      }

      else
      {
        v11 = 0x5641446C6163;
      }

      if (v2)
      {
        v12 = 0xEA0000000000636ELL;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v4)
      {
        v13 = 0x795364756F6C4369;
      }

      else
      {
        v13 = 0x5641446C6163;
      }

      if (v4)
      {
        v14 = 0xEA0000000000636ELL;
      }

      else
      {
        v14 = 0xE600000000000000;
      }

      if (v11 == v13 && v12 == v14)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_21DBFC64C();
      }

      goto LABEL_45;
    }

LABEL_44:
    sub_21D5D5DB0(v4, v5);
    v15 = 0;
    goto LABEL_45;
  }

  if (v4 >> 61 != 3)
  {
    v16 = v3;
    goto LABEL_44;
  }

  if (v2)
  {
    v7 = 0x795364756F6C4369;
  }

  else
  {
    v7 = 0x5641446C6163;
  }

  if (v2)
  {
    v8 = 0xEA0000000000636ELL;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4)
  {
    v9 = 0x795364756F6C4369;
  }

  else
  {
    v9 = 0x5641446C6163;
  }

  if (v4)
  {
    v10 = 0xEA0000000000636ELL;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    sub_21D5D5DB0(*a2, *(a2 + 8));
    sub_21D5D5DB0(v2, v3);

LABEL_47:
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v15 = sub_21DBFB63C();
    goto LABEL_45;
  }

  v18 = sub_21DBFC64C();
  sub_21D5D5DB0(v4, v5);
  sub_21D5D5DB0(v2, v3);

  v15 = 0;
  if (v18)
  {
    goto LABEL_47;
  }

LABEL_45:
  sub_21D5D61D4(v2, v3);
  sub_21D5D61D4(v4, v5);
  return v15 & 1;
}

BOOL _s15RemindersUICore26TTRPermissionConfigurationV6HeaderV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v21 = *(a2 + 40);
  v22 = *(a1 + 40);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v18 = *(a2 + 24);
    v19 = *(a2 + 48);
    v20 = *(a1 + 24);
    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v11 = v8;
    v12 = v2;
    v13 = sub_21DBFB63C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = *(a2 + 24);
    v19 = *(a2 + 48);
    v20 = *(a1 + 24);
    if (v8)
    {
      return 0;
    }
  }

  if ((v3 != v7 || v4 != v9) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v20 != v18 || v5 != v10) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v22 >> 3 == 0xFFFFFFFF)
  {
    sub_21D5D5D9C(v22, v6);
    v14 = v21;
    v15 = v19;
    sub_21D5D5D9C(v21, v19);
    if (v21 >> 3 == 0xFFFFFFFF)
    {
      sub_21D5D61C0(v22, v6);
      return 1;
    }

    goto LABEL_21;
  }

  v25 = v22;
  v26 = v6;
  v14 = v21;
  if (v21 >> 3 == 0xFFFFFFFF)
  {
    sub_21D5D5D9C(v22, v6);
    v15 = v19;
    sub_21D5D5D9C(v21, v19);
    sub_21D5D5D9C(v22, v6);
    sub_21D5D61D4(v22, v6);
LABEL_21:
    sub_21D5D61C0(v22, v6);
    sub_21D5D61C0(v14, v15);
    return 0;
  }

  v23 = v21;
  v24 = v19;
  sub_21D5D5D9C(v22, v6);
  sub_21D5D5D9C(v21, v19);
  sub_21D5D5D9C(v22, v6);
  v17 = _s15RemindersUICore26TTRPermissionConfigurationV6ActionO2eeoiySbAE_AEtFZ_0(&v25, &v23);
  sub_21D5D61D4(v23, v24);
  sub_21D5D61D4(v25, v26);
  sub_21D5D61C0(v22, v6);
  return (v17 & 1) != 0;
}

BOOL _s15RemindersUICore26TTRPermissionConfigurationV13PrimaryButtonV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 >> 3 == 0xFFFFFFFF)
    {
      sub_21D5D5D9C(v2, v3);
      sub_21D5D5D9C(v5, v4);
      if (v5 >> 3 == 0xFFFFFFFF)
      {
        sub_21D5D61C0(v2, v3);
        return 1;
      }
    }

    else
    {
      v12 = v2;
      v13 = v3;
      if (v5 >> 3 != 0xFFFFFFFF)
      {
        v10 = v5;
        v11 = v4;
        sub_21D5D5D9C(v2, v3);
        sub_21D5D5D9C(v5, v4);
        sub_21D5D5D9C(v2, v3);
        v9 = _s15RemindersUICore26TTRPermissionConfigurationV6ActionO2eeoiySbAE_AEtFZ_0(&v12, &v10);
        sub_21D5D61D4(v10, v11);
        sub_21D5D61D4(v12, v13);
        sub_21D5D61C0(v2, v3);
        return (v9 & 1) != 0;
      }

      sub_21D5D5D9C(v2, v3);
      sub_21D5D5D9C(v5, v4);
      sub_21D5D5D9C(v2, v3);
      sub_21D5D61D4(v2, v3);
    }

    sub_21D5D61C0(v2, v3);
    sub_21D5D61C0(v5, v4);
    return 0;
  }

  return result;
}

BOOL _s15RemindersUICore26TTRPermissionConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 8);
  v37 = *(a1 + 7);
  v38 = *(a1 + 72);
  v9 = *(a2 + 2);
  v8 = *(a2 + 3);
  v11 = *(a2 + 4);
  v10 = *(a2 + 5);
  v12 = *(a2 + 6);
  v35 = *(a2 + 7);
  v34 = *(a2 + 8);
  v13 = *(a2 + 10);
  v36 = *(a2 + 9);
  v45 = *a1;
  *&v46 = v3;
  *(&v46 + 1) = v2;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v39 = *a2;
  v40 = v9;
  v41 = v8;
  v42 = v11;
  v43 = v10;
  v44 = v12;
  sub_21DBF8E0C();
  v14 = v45;
  sub_21DBF8E0C();
  sub_21D5D5D9C(v5, v6);
  sub_21DBF8E0C();
  v15 = v39;
  sub_21DBF8E0C();
  sub_21D5D5D9C(v10, v12);
  LOBYTE(v12) = _s15RemindersUICore26TTRPermissionConfigurationV6HeaderV2eeoiySbAE_AEtFZ_0(&v45, &v39);
  v16 = v39;
  v17 = v43;
  v18 = v44;

  sub_21D5D61C0(v17, v18);
  v19 = v45;
  v20 = v48;
  v21 = v49;

  sub_21D5D61C0(v20, v21);
  if (v12)
  {
    if (v7)
    {
      v23 = v37;
      v22 = v38;
      *&v45 = v37;
      *(&v45 + 1) = v7;
      v24 = *(&v38 + 1);
      v46 = v38;
      v25 = v13;
      v27 = v35;
      v26 = v36;
      v28 = v34;
      if (v34)
      {
        *&v39 = v35;
        *(&v39 + 1) = v34;
        v40 = v36;
        v41 = v25;
        sub_21D5D5DC4(v37, v7, v38, *(&v38 + 1));
        sub_21D5D5DC4(v35, v34, v36, v25);
        sub_21D5D5DC4(v37, v7, v38, *(&v38 + 1));
        v29 = _s15RemindersUICore26TTRPermissionConfigurationV13PrimaryButtonV2eeoiySbAE_AEtFZ_0(&v45, &v39);
        v30 = v40;
        v31 = v41;

        sub_21D5D61C0(v30, v31);
        v32 = v46;

        sub_21D5D61C0(v32, *(&v32 + 1));
        sub_21D5D61E8(v37, v7, v38, *(&v38 + 1));
        return v29;
      }

      sub_21D5D5DC4(v37, v7, v38, *(&v38 + 1));
      sub_21D5D5DC4(v35, 0, v36, v25);
      sub_21D5D5DC4(v37, v7, v38, *(&v38 + 1));

      sub_21D5D61C0(v38, *(&v38 + 1));
    }

    else
    {
      v23 = v37;
      v24 = *(&v38 + 1);
      v22 = v38;
      sub_21D5D5DC4(v37, 0, v38, *(&v38 + 1));
      v25 = v13;
      v27 = v35;
      v26 = v36;
      v28 = v34;
      if (!v34)
      {
        sub_21D5D5DC4(v35, 0, v36, v25);
        sub_21D5D61E8(v37, 0, v38, *(&v38 + 1));
        return 1;
      }

      sub_21D5D5DC4(v35, v34, v36, v25);
    }

    sub_21D5D61E8(v23, v7, v22, v24);
    sub_21D5D61E8(v27, v28, v26, v25);
  }

  return 0;
}

unint64_t sub_21D9DE488()
{
  result = qword_27CE64948;
  if (!qword_27CE64948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRPermissionConfiguration.TTRUpgradeType, &type metadata for TTRPermissionConfiguration.TTRUpgradeType, v0, v1);
    atomic_store(result, &qword_27CE64948);
  }

  return result;
}

void destroy for TTRPermissionConfiguration(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    sub_21D5D61D4(v2, *(a1 + 48));
  }

  if (*(a1 + 64))
  {

    v3 = *(a1 + 72);
    if (v3 >> 3 != 0xFFFFFFFF)
    {
      v4 = *(a1 + 80);

      sub_21D5D61D4(v3, v4);
    }
  }
}

uint64_t initializeWithCopy for TTRPermissionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v8 = (a2 + 40);
  v7 = *(a2 + 40);
  v9 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 >> 3 != 0xFFFFFFFF)
  {
    v13 = *(a2 + 48);
    sub_21D5D5DB0(v7, v13);
    *(a1 + 40) = v7;
    *(a1 + 48) = v13;
    v10 = *(a2 + 64);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a1 + 56) = *(a2 + 56);
    v12 = *(a2 + 72);
    goto LABEL_7;
  }

  *(a1 + 40) = *v8;
  v10 = *(a2 + 64);
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v10;
  sub_21DBF8E0C();
  if (v11 >> 3 != 0xFFFFFFFF)
  {
    v14 = *(a2 + 80);
    sub_21D5D5DB0(v11, v14);
    *(a1 + 72) = v11;
    *(a1 + 80) = v14;
    return a1;
  }

  v12 = *(a2 + 72);
LABEL_7:
  *(a1 + 72) = v12;
  return a1;
}

uint64_t assignWithCopy for TTRPermissionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v7 = *(a2 + 40);
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 40) >> 3 == 0xFFFFFFFFLL)
  {
    if (v8 != 0x7FFFFFFF8)
    {
      v9 = *(a2 + 48);
      sub_21D5D5DB0(*(a2 + 40), v9);
      *(a1 + 40) = v7;
      *(a1 + 48) = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v8 == 0x7FFFFFFF8)
  {
    sub_21D9DE880(a1 + 40);
LABEL_6:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_8;
  }

  v10 = *(a2 + 48);
  sub_21D5D5DB0(*(a2 + 40), v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v10;
  sub_21D5D61D4(v11, v12);
LABEL_8:
  v13 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v13)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      sub_21DBF8E0C();

      v14 = *(a2 + 72);
      v15 = v14 & 0xFFFFFFFFFFFFFFF8;
      if (*(a1 + 72) >> 3 != 0xFFFFFFFFLL)
      {
        if (v15 != 0x7FFFFFFF8)
        {
          v19 = *(a2 + 80);
          sub_21D5D5DB0(v14, v19);
          v20 = *(a1 + 72);
          v21 = *(a1 + 80);
          *(a1 + 72) = v14;
          *(a1 + 80) = v19;
          sub_21D5D61D4(v20, v21);
          return a1;
        }

        sub_21D9DE880(a1 + 72);
        goto LABEL_20;
      }

      if (v15 == 0x7FFFFFFF8)
      {
LABEL_20:
        *(a1 + 72) = *(a2 + 72);
        return a1;
      }

      goto LABEL_17;
    }

    sub_21D9DE8B0(a1 + 56);
    v16 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v16;
  }

  else
  {
    if (!v13)
    {
      v18 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v18;
      return a1;
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 72);
    sub_21DBF8E0C();
    if (v14 >> 3 != 0xFFFFFFFF)
    {
LABEL_17:
      v17 = *(a2 + 80);
      sub_21D5D5DB0(v14, v17);
      *(a1 + 72) = v14;
      *(a1 + 80) = v17;
      return a1;
    }

    *(a1 + 72) = *(a2 + 72);
  }

  return a1;
}

uint64_t assignWithTake for TTRPermissionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 >> 3 == 0xFFFFFFFF)
  {
LABEL_4:
    *(a1 + 40) = *(a2 + 40);
    if (!*(a1 + 64))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v8 >> 3 == 0xFFFFFFFF)
  {
    sub_21D9DE880(a1 + 40);
    goto LABEL_4;
  }

  v9 = *(a2 + 48);
  v10 = *(a1 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  sub_21D5D61D4(v7, v10);
  if (!*(a1 + 64))
  {
LABEL_13:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    return a1;
  }

LABEL_7:
  v11 = *(a2 + 64);
  if (!v11)
  {
    sub_21D9DE8B0(a1 + 56);
    goto LABEL_13;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v11;

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12 >> 3 != 0xFFFFFFFF)
  {
    if (v13 >> 3 != 0xFFFFFFFF)
    {
      v15 = *(a2 + 80);
      v16 = *(a1 + 80);
      *(a1 + 72) = v13;
      *(a1 + 80) = v15;
      sub_21D5D61D4(v12, v16);
      return a1;
    }

    sub_21D9DE880(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

unint64_t *assignWithCopy for TTRPermissionConfiguration.Action(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D5D5DB0(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_21D5D61D4(v5, v6);
  return a1;
}

unint64_t *assignWithTake for TTRPermissionConfiguration.Action(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_21D5D61D4(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRPermissionConfiguration.Action(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRPermissionConfiguration.Action(uint64_t result, int a2, int a3)
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
      *result = 8 * -a2;
      *(result + 8) = 0;
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

void destroy for TTRPermissionConfiguration.Header(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    v3 = *(a1 + 48);

    sub_21D5D61D4(v2, v3);
  }
}

uint64_t initializeWithCopy for TTRPermissionConfiguration.Header(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v8 = (a2 + 40);
  v7 = *(a2 + 40);
  v9 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 >> 3 == 0xFFFFFFFF)
  {
    *(a1 + 40) = *v8;
  }

  else
  {
    v10 = *(a2 + 48);
    sub_21D5D5DB0(v7, v10);
    *(a1 + 40) = v7;
    *(a1 + 48) = v10;
  }

  return a1;
}

uint64_t assignWithCopy for TTRPermissionConfiguration.Header(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v7 = *(a2 + 40);
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 40) >> 3 != 0xFFFFFFFFLL)
  {
    if (v8 != 0x7FFFFFFF8)
    {
      v10 = *(a2 + 48);
      sub_21D5D5DB0(v7, v10);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *(a1 + 40) = v7;
      *(a1 + 48) = v10;
      sub_21D5D61D4(v11, v12);
      return a1;
    }

    sub_21D9DE880(a1 + 40);
    goto LABEL_6;
  }

  if (v8 == 0x7FFFFFFF8)
  {
LABEL_6:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  v9 = *(a2 + 48);
  sub_21D5D5DB0(v7, v9);
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithTake for TTRPermissionConfiguration.Header(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  v6 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v6;

  v7 = *(a1 + 40);
  v8 = a2[5];
  if (v7 >> 3 != 0xFFFFFFFF)
  {
    if (v8 >> 3 != 0xFFFFFFFF)
    {
      v9 = a2[6];
      v10 = *(a1 + 48);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      sub_21D5D61D4(v7, v10);
      return a1;
    }

    sub_21D9DE880(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRPermissionConfiguration.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for TTRPermissionConfiguration.Header(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void destroy for TTRPermissionConfiguration.PrimaryButton(uint64_t a1)
{

  v2 = *(a1 + 16);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    v3 = *(a1 + 24);

    sub_21D5D61D4(v2, v3);
  }
}

uint64_t initializeWithCopy for TTRPermissionConfiguration.PrimaryButton(uint64_t a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = a2 + 2;
  v5 = a2[2];
  sub_21DBF8E0C();
  if (v5 >> 3 == 0xFFFFFFFF)
  {
    *(a1 + 16) = *v6;
  }

  else
  {
    v7 = a2[3];
    sub_21D5D5DB0(v5, v7);
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
  }

  return a1;
}

void *assignWithCopy for TTRPermissionConfiguration.PrimaryButton(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v4 = a2[2];
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (a1[2] >> 3 != 0xFFFFFFFFLL)
  {
    if (v5 != 0x7FFFFFFF8)
    {
      v7 = a2[3];
      sub_21D5D5DB0(v4, v7);
      v8 = a1[2];
      v9 = a1[3];
      a1[2] = v4;
      a1[3] = v7;
      sub_21D5D61D4(v8, v9);
      return a1;
    }

    sub_21D9DE880((a1 + 2));
    goto LABEL_6;
  }

  if (v5 == 0x7FFFFFFF8)
  {
LABEL_6:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  v6 = a2[3];
  sub_21D5D5DB0(v4, v6);
  a1[2] = v4;
  a1[3] = v6;
  return a1;
}

void *assignWithTake for TTRPermissionConfiguration.PrimaryButton(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a1[2];
  v6 = a2[2];
  if (v5 >> 3 != 0xFFFFFFFF)
  {
    if (v6 >> 3 != 0xFFFFFFFF)
    {
      v7 = a2[3];
      v8 = a1[3];
      a1[2] = v6;
      a1[3] = v7;
      sub_21D5D61D4(v5, v8);
      return a1;
    }

    sub_21D9DE880((a1 + 2));
  }

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t TTRTreeContentsQueryable.parentAndChildIndex(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  (*(a3 + 48))(a1, a2, a3, v10);
  v13 = TTRTreeContentsQueryable.childIndex(of:inParent:)(a1, v12, a2, a3);
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a4, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v17 = v13;
    v18 = swift_getTupleTypeMetadata2();
    v19 = *(v18 + 48);
    (*(v9 + 32))(a4, v12, v8);
    *(a4 + v19) = v17;
    return (*(*(v18 - 8) + 56))(a4, 0, 1, v18);
  }
}

uint64_t TTRTreeContentsQueryable.childrenCollection(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_21DBFBA8C();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v22 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 24);
  v23 = a3;
  result = v15(a1, a2, a3, v13);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = 0;
    v27 = result;
    (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
    v17 = v24;
    (*(v7 + 16))(v9, a1, v24);
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v19 = (v11 + v18 + *(v7 + 80)) & ~*(v7 + 80);
    v20 = swift_allocObject();
    v21 = v23;
    *(v20 + 16) = a2;
    *(v20 + 24) = v21;
    (*(v10 + 32))(v20 + v18, v14, a2);
    (*(v7 + 32))(v20 + v19, v9, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64950, &qword_21DC35370);
    sub_21D0D0F1C(&qword_280D0C190, &qword_27CE64950, &qword_21DC35370, MEMORY[0x277D840E0]);
    sub_21DBFC43C();

    return v28;
  }

  return result;
}

uint64_t TTRTreeContentsQueryable.contains(_:inSubtreeAtRoot:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v44 = &v43 - v8;
  v9 = sub_21DBFBA8C();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v56 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = AssociatedConformanceWitness + 24;
  v24 = *(AssociatedConformanceWitness + 24);
  v64 = &v43 - v25;
  v61 = AssociatedConformanceWitness;
  v26 = AssociatedConformanceWitness;
  v27 = v45;
  v58 = v24;
  v59 = v23;
  (v24)(AssociatedTypeWitness, v26, v22);
  (*(v7 + 16))(v16, v63, AssociatedTypeWitness);
  (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
  v28 = *(v27 + 16);
  v62 = v16;
  v63 = v9;
  v53 = v28;
  v54 = v27 + 16;
  v28(v13, v16, v9);
  v51 = *(v7 + 48);
  v52 = v7 + 48;
  if (v51(v13, 1, AssociatedTypeWitness) == 1)
  {
    v29 = *(v27 + 8);
LABEL_7:
    v41 = v63;
    v29(v62, v63);
    (*(v19 + 8))(v64, v18);
    v29(v13, v41);
    return 0;
  }

  else
  {
    v31 = *(v7 + 32);
    v30 = v7 + 32;
    v49 = v31;
    v43 = v19;
    v57 = (v19 + 8);
    v46 = a4 + 48;
    v47 = a4;
    v48 = (v30 - 24);
    v50 = (v27 + 8);
    v32 = v44;
    v33 = (v27 + 32);
    while (1)
    {
      v34 = v30;
      v49(v32, v13, AssociatedTypeWitness);
      v35 = v60;
      v58(AssociatedTypeWitness, v61);
      swift_getAssociatedConformanceWitness();
      v36 = sub_21DBFA10C();
      v37 = *v57;
      (*v57)(v35, v18);
      if (v36)
      {
        break;
      }

      v38 = v55;
      (*(v47 + 48))(v32, v56);
      (*v48)(v32, AssociatedTypeWitness);
      v29 = *v50;
      v39 = v62;
      v40 = v63;
      (*v50)(v62, v63);
      (*v33)(v39, v38, v40);
      v53(v13, v39, v40);
      v30 = v34;
      if (v51(v13, 1, AssociatedTypeWitness) == 1)
      {
        v19 = v43;
        goto LABEL_7;
      }
    }

    (*v48)(v32, AssociatedTypeWitness);
    (*v50)(v62, v63);
    v37(v64, v18);
    return 1;
  }
}

uint64_t TTRTreeContentsQueryable.indexPath(for:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_21DBFBA8C();
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v51 - v10;
  v66 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v66);
  v65 = &v51 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v70 = &v51 - v14;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v51 - v23;
  (*(v12 + 16))(&v51 - v23, a1, AssociatedTypeWitness, v22);
  (*(v12 + 56))(v24, 0, 1, AssociatedTypeWitness);
  v25 = *(v15 + 16);
  v71 = v24;
  v75 = v7;
  v63 = v25;
  v64 = v15 + 16;
  v25(v20, v24, v7);
  v26 = *(v12 + 48);
  v72 = v20;
  v61 = v26;
  v62 = v12 + 48;
  if (v26(v20, 1, AssociatedTypeWitness) == 1)
  {
    v27 = MEMORY[0x277D84F90];
    (*(v15 + 8))(v72, v75);
LABEL_13:
    if (*(v27 + 2))
    {
LABEL_14:
      v76 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D8, &qword_21DC0F9D0);
      sub_21D0D0F1C(&qword_27CE5A4E0, &qword_27CE5A4D8, &qword_21DC0F9D0, MEMORY[0x277D84440]);
      sub_21DBF5D3C();
      (*(v15 + 8))(v71, v75);
      v48 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v51 = v9;
    v53 = a4;
    v29 = *(v12 + 32);
    v28 = v12 + 32;
    v59 = TupleTypeMetadata2 - 8;
    v60 = v29;
    v73 = (v15 + 32);
    v58 = (v28 - 24);
    v52 = v15;
    v57 = (v15 + 8);
    v27 = MEMORY[0x277D84F90];
    v30 = v70;
    v31 = v72;
    v56 = TupleTypeMetadata2;
    v55 = v28;
    while (1)
    {
      v60(v30, v31, AssociatedTypeWitness);
      v32 = v67;
      TTRTreeContentsQueryable.parentAndChildIndex(for:)(v30, v68, v69, v67);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v32, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v33 = *(v32 + *(TupleTypeMetadata2 + 48));
      v35 = v65;
      v34 = v66;
      v36 = *(v66 + 48);
      v37 = *v73;
      v38 = v75;
      (*v73)(v65, v32, v75);
      *&v35[v36] = v33;
      v39 = *&v35[*(v34 + 48)];
      v37(v74, v35, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_21D211BD0(0, *(v27 + 2) + 1, 1, v27);
      }

      v41 = *(v27 + 2);
      v40 = *(v27 + 3);
      v30 = v70;
      if (v41 >= v40 >> 1)
      {
        v27 = sub_21D211BD0((v40 > 1), v41 + 1, 1, v27);
      }

      (*v58)(v30, AssociatedTypeWitness);
      v42 = *v57;
      v43 = v71;
      v44 = AssociatedTypeWitness;
      v45 = v75;
      (*v57)(v71, v75);
      *(v27 + 2) = v41 + 1;
      *&v27[8 * v41 + 32] = v39;
      v37(v43, v74, v45);
      v31 = v72;
      v46 = v45;
      AssociatedTypeWitness = v44;
      v63(v72, v43, v46);
      v47 = v61(v31, 1, v44);
      TupleTypeMetadata2 = v56;
      if (v47 == 1)
      {
        a4 = v53;
        v15 = v52;
        v42(v72, v75);
        goto LABEL_13;
      }
    }

    (*v58)(v30, AssociatedTypeWitness);
    (*(v54 + 8))(v32, v51);
    a4 = v53;
    v15 = v52;
    if (*(v27 + 2))
    {
      goto LABEL_14;
    }
  }

  (*(v15 + 8))(v71, v75);

  v48 = 1;
LABEL_15:
  v49 = sub_21DBF5D5C();
  return (*(*(v49 - 8) + 56))(a4, v48, 1, v49);
}

BOOL TTRTreeContentsQueryable.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  (*(a3 + 40))(v9, v17, a3);
  (*(v7 + 8))(v9, v6);
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1;
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t TTRTreeContentsQueryable<>.diff(with:contentEqualityChecker:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v34 = a6;
  v35 = a7;
  v36 = a2;
  v37 = a3;
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_21DBFBA8C();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(*(AssociatedTypeWitness - 8) + 56);
  v16(&v28 - v14, 1, 1, AssociatedTypeWitness, v13);
  v33 = TTRTreeContentsQueryable.children(of:)(v15, a4, a5);
  v17 = *(v12 + 8);
  v17(v15, v11);
  v31 = a1;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (v16)(v15, 1, 1, AssociatedTypeWitness);
  v20 = TTRTreeContentsQueryable.children(of:)(v15, v18, v19);
  v17(v15, v29);
  v21 = v32;
  v22 = v34;
  v23 = sub_21D9E50FC(v30, a4, v32, v34);
  v45 = a4;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v25 = sub_21D9E53A8(v31, a4, v21, v22);
  v39 = a4;
  v40 = v21;
  v41 = v22;
  v42 = v25;
  v43 = v26;
  TTRCheapTreeDiff<A>(source:target:sourceChildrenGetter:targetChildrenGetter:contentEqualityChecker:)(v33, v20, sub_21D9E61EC, v44, sub_21D9E6E78, v38, v36, v37, v35, AssociatedTypeWitness, v22);
}

uint64_t TTRTreeContentsQueryable.allItems.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v4 + 32))(v9 + v8, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for DerivedTreePreorderIterator(0, a1, a2, v10);
  swift_getWitnessTable(byte_21DC354B0, v11);
  return sub_21DBFBE7C();
}

uint64_t TTRTreeContentsQueryable.lastDescendant(of:)@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v77 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v58 - v9;
  v11 = sub_21DBFBA8C();
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11);
  v72 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = *(v8 + 56);
  v73 = a4;
  v74 = v24;
  v75 = v8 + 56;
  (v24)(a4, 1, 1, AssociatedTypeWitness, v21);
  v25 = a2;
  v26 = a2;
  v27 = a3;
  TTRTreeContentsQueryable.lastChild(of:)(v77, v26, a3, v23);
  v28 = v23;
  v29 = v12 + 16;
  v30 = *(v12 + 16);
  v31 = v59;
  v70 = v30;
  v71 = v29;
  (v30)(v19, v23);
  v61 = v8;
  v32 = v8 + 48;
  v33 = *(v8 + 48);
  v34 = v19;
  v35 = AssociatedTypeWitness;
  v36 = AssociatedTypeWitness;
  v37 = v32;
  v69 = v33;
  v38 = v33(v19, 1, v36);
  v40 = v60 + 8;
  v39 = *(v60 + 8);
  if (v38 != 1)
  {
    v41 = v61;
    v63 = (v61 + 4);
    v64 = v37;
    ++v61;
    v62 = (v41 + 2);
    v60 += 32;
    v67 = v25;
    v68 = v28;
    v65 = v34;
    v66 = v27;
    v76 = v40;
    v77 = v39;
    do
    {
      v42 = v73;
      v43 = v31;
      v77(v73, v31);
      (*v63)(v10, v34, v35);
      v44 = v72;
      v45 = v16;
      v46 = v35;
      v47 = *v62;
      (*v62)(v42, v10, v35);
      v48 = v35;
      v49 = v74;
      v74(v42, 0, 1, v48);
      v47(v44, v10, v46);
      v51 = v66;
      v50 = v67;
      v49(v44, 0, 1, v46);
      TTRTreeContentsQueryable.lastChild(of:)(v44, v50, v51, v45);
      v28 = v68;
      v77(v44, v43);
      (*v61)(v10, v46);
      v77(v28, v43);
      v16 = v45;
      (*v60)(v28, v45, v43);
      v52 = v65;
      v31 = v43;
      v70(v65, v28, v43);
      v34 = v52;
      v53 = v52;
      v35 = v46;
      v54 = v69(v53, 1, v46);
      v39 = v77;
    }

    while (v54 != 1);
  }

  v55 = v28;
  v56 = v39;
  v39(v55, v31);
  return (v56)(v34, v31);
}

uint64_t TTRTreeContentsQueryable.ancestors(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_allocBox();
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, a1, AssociatedTypeWitness);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v15 = sub_21DBFBE3C();
  swift_getWitnessTable(MEMORY[0x277D84058], v15);
  return sub_21DBFBE7C();
}

uint64_t TTRTreeContentsQueryable.childIndex(of:inParent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = TTRTreeContentsQueryable.childrenCollection(of:)(a2, a3, a4);
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050, &qword_21DC10D10);
  swift_getAssociatedTypeWitness();
  sub_21D0E8418(qword_27CE5C010, MEMORY[0x277D83D28]);
  v7 = sub_21DBFC0EC();
  v9[0] = sub_21D0E8418(&qword_280D17898, MEMORY[0x277D83D48]);
  swift_getWitnessTable(MEMORY[0x277D84300], v7, v9);
  sub_21DBFACCC();

  return v9[6];
}