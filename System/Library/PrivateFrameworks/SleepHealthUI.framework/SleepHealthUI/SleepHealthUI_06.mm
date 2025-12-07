uint64_t sub_269CBBE00()
{
  v1 = qword_28034F638;
  if (*(v0 + qword_28034F638))
  {
    v2 = *(v0 + qword_28034F638);
  }

  else
  {
    v2 = sub_269CBBE68(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_269CBBE68(uint64_t a1)
{
  v1 = *(a1 + qword_28034F628);
  v2 = *(a1 + qword_28034F630);
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for GoalSectionProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  LOBYTE(v6) = 0;
  sub_269C5281C();
  swift_allocObject();
  *(v4 + 32) = sub_269D987F0();
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v4 + 112) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = v1;

  sub_269D987C0();
  sub_269C2FDFC(0);
  swift_allocObject();
  *(v4 + 40) = sub_269D987F0();
  *(v4 + 48) = v2;
  sub_269D987C0();
  *(v4 + 64) = v6;
  *(v4 + 72) = v7;
  *(v4 + 96) = 1;
  *(v4 + 80) = sub_269CBE248;
  *(v4 + 88) = v3;
  return v4;
}

uint64_t sub_269CBBFCC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_269CBA6F4();
  }

  return result;
}

uint64_t sub_269CBC024(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_269D975C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_28034F638) = 0;
  v19[0] = a1;
  sub_269CBE180(0);
  swift_allocObject();
  v13 = a1;
  *(v4 + qword_28034F620) = sub_269D987F0();
  *v19 = a3;
  LOBYTE(v19[1]) = 0;
  sub_269C2FDFC(0);
  swift_allocObject();
  *(v4 + qword_28034F628) = sub_269D987F0();
  *(v4 + qword_28034F630) = a2;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_269D9B000();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_269D975B0();
  v14 = sub_269D97590();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x26D650930](v14, v16);

  MEMORY[0x26D650930](62, 0xE100000000000000);
  v17 = sub_269D980A0();

  sub_269CBA6F4();

  return v17;
}

uint64_t sub_269CBC26C()
{
}

uint64_t sub_269CBC2BC()
{
  sub_269D98100();

  return swift_deallocClassInstance();
}

uint64_t sub_269CBC348()
{
  type metadata accessor for ScheduleOccurrenceTableViewCell(0);
  sub_269CBD0B0(&qword_28034E3B0, type metadata accessor for ScheduleOccurrenceTableViewCell, &unk_269DA68F4);
  sub_269D9AAE0();
  type metadata accessor for AddScheduleTableViewCell();
  sub_269CBD0B0(&qword_28034F658, type metadata accessor for AddScheduleTableViewCell, &unk_269DA2E94);
  sub_269D9AAE0();
  sub_269D98060();
  sub_269D9AAE0();
  type metadata accessor for GoalTimePickerTableViewCell();
  sub_269CBD0B0(&qword_28034E160, type metadata accessor for GoalTimePickerTableViewCell, &unk_269DA65F8);
  return sub_269D9AAE0();
}

uint64_t sub_269CBC470@<X0>(uint64_t *a3@<X8>)
{
  sub_269CBD0F8(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CBDF00(0, &qword_28034F668, MEMORY[0x277D11208]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = sub_269D9AAD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_269D9AAB0();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v16, v11, v12);
    v18 = sub_269D97860();
    (*(v13 + 16))(v7, v16, v12);
    v19 = (*(v13 + 88))(v7, v12);
    if (v19 == *MEMORY[0x277D111F0])
    {
      if (v18 == 1)
      {
        if (qword_280C0AE70 == -1)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }

      goto LABEL_19;
    }

    if (v19 == *MEMORY[0x277D11200])
    {
      if (v18 == 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v19 == *MEMORY[0x277D111E8])
      {
        v20 = *(sub_269D980B0() + 16);

        if (v20 - 1 == v18)
        {
          sub_269D987C0();
          v21 = v25;
          if ([v25 weekdaysWithOccurrences])
          {
            if (![v21 weekdaysWithoutOccurrences])
            {

              goto LABEL_6;
            }

            [v21 weekdaysWithOccurrences];
          }

          if (qword_280C0AE70 == -1)
          {
LABEL_5:
            sub_269D972C0();
LABEL_6:
            a3[3] = sub_269D9AB10();
            a3[4] = sub_269CBD0B0(&qword_28034F680, MEMORY[0x277D11218], MEMORY[0x277D11210]);
            __swift_allocate_boxed_opaque_existential_1(a3);
            sub_269D9AAF0();
LABEL_21:
            v23 = *(v13 + 8);
            v23(v16, v12);
            return (v23)(v7, v12);
          }

LABEL_23:
          swift_once();
          goto LABEL_5;
        }

LABEL_19:
        a3[3] = sub_269D9AB30();
        a3[4] = sub_269CBD0B0(&qword_28034F670, MEMORY[0x277D11228], MEMORY[0x277D11220]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        sub_269D9AB20();
        goto LABEL_21;
      }

      if (v19 != *MEMORY[0x277D111F8])
      {
        goto LABEL_19;
      }

      v22 = *(sub_269D980B0() + 16);

      if (v22 - 1 == v18)
      {
        goto LABEL_19;
      }
    }

    a3[3] = sub_269D9AAA0();
    a3[4] = sub_269CBD0B0(&qword_28034F678, MEMORY[0x277D111E0], MEMORY[0x277D111D8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_269D9AA90();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_269CBCA64()
{
  type metadata accessor for ScheduleOccurrenceTableViewCell(0);
  sub_269CBD0B0(&qword_28034E3B0, type metadata accessor for ScheduleOccurrenceTableViewCell, &unk_269DA68F4);
  return sub_269D97F90();
}

uint64_t sub_269CBCB00()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.hash(into:)(v1);
  return sub_269D9B390();
}

uint64_t sub_269CBCB44(uint64_t a1)
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.hash(into:)(v2);
  return sub_269D9B390();
}

uint64_t sub_269CBCB80(uint64_t a1)
{
  sub_269CBE030();
  v3 = sub_269D9A660();
  MEMORY[0x26D650930](45, 0xE100000000000000);
  v1 = ScheduleOccurrenceViewModel.description.getter();
  MEMORY[0x26D650930](v1);

  return v3;
}

uint64_t sub_269CBCBF4(uint64_t a1)
{
  v2 = sub_269CBD0B0(&qword_28034F6F0, type metadata accessor for ScheduleOccurrenceRow, &unk_269DA4778);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_269CBCC74()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

void sub_269CBCD20()
{
  sub_269CBE650();
  sub_269D9A660();
  MEMORY[0x26D650930](45, 0xE100000000000000);
  v0 = HKSPIdentifierStringForWeekdays();
  v1 = sub_269D9A630();
  v3 = v2;

  MEMORY[0x26D650930](v1, v3);
}

uint64_t sub_269CBCDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269CBE5FC(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

uint64_t sub_269CBCE08()
{
  v1 = *(v0 + 8);
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269CBCE7C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_269D9B350();
  MEMORY[0x26D6515B0](v2);
  return sub_269D9B390();
}

id sub_269CBCF50(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    result = HKHealthTintColor();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (v2 != 1)
  {
LABEL_12:
    result = sub_269D9B290();
    __break(1u);
    return result;
  }

  result = BPSBridgeTintColor();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_269CBD004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269CBE0D4(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

unint64_t sub_269CBD05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F650;
  if (!qword_28034F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F650);
  }

  return result;
}

uint64_t sub_269CBD0B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269CBD0F8(uint64_t a1)
{
  if (!qword_28034F660)
  {
    sub_269D9AAD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F660);
    }
  }
}

uint64_t sub_269CBD160(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_269CBD20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = MEMORY[0x277D837D0];
  sub_269CBE1F8(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;

  v10 = HKSPIdentifierStringForWeekdays();
  v11 = sub_269D9A630();
  v13 = v12;

  *(inited + 32) = v11;
  *(inited + 40) = v13;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x8000000269DB04D0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269DA0D60;
  *(v14 + 32) = sub_269D9A630();
  *(v14 + 40) = v15;
  *(v14 + 48) = 0x7065656C53;
  *(v14 + 56) = 0xE500000000000000;
  *(v14 + 64) = 0x696472616F626E4FLL;
  *(v14 + 72) = 0xEA0000000000676ELL;

  sub_269C49A1C(v16);
  sub_269CBE1F8(0, &qword_280C0B4F0, v8, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v17 = sub_269D9A520();
  v19 = v18;

  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v17;
  a4[4] = v19;
  return result;
}

id sub_269CBD404(uint64_t a1, uint64_t a2)
{
  sub_269D987C0();
  v3 = [v8 occurrencesOnDays_];

  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  v4 = sub_269D9A7E0();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_269D9AF50();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D651260](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

void sub_269CBD50C(void *a1)
{
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280C0B728);
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_269C2EACC(0xD000000000000040, 0x8000000269DB03F0, v36);
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Edit schedule occurrence row tapped", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  v33[0] = a1;
  sub_269C1B0B8(0, &qword_28034DC38, 0x277D75D28);
  sub_269C3232C(0, &qword_28034F688, &protocol descriptor for ScheduleActionHandling);
  v8 = a1;
  if (swift_dynamicCast())
  {
    sub_269C25520(v34, v36);
    v9 = sub_269CBD404(*v1, *(v1 + 8));
    if (v9)
    {
      v10 = v9;
      v11 = v37;
      v12 = v38;
      __swift_project_boxed_opaque_existential_1Tm(v36, v37);
      (*(v12 + 16))(v10, v11, v12);
    }

    else
    {
      v34[0] = *(v1 + 24);

      sub_269CBDAB4(v34, v33);
      v24 = sub_269D98230();
      v25 = sub_269D9AB60();

      sub_269CBDB3C(v34);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33[0] = v27;
        *v26 = 136446466;
        *(v26 + 4) = sub_269C2EACC(0xD000000000000040, 0x8000000269DB03F0, v33);
        *(v26 + 12) = 2082;
        v28 = NSStringFromHKSPWeekdays();
        v29 = sub_269D9A630();
        v31 = v30;

        v32 = sub_269C2EACC(v29, v31, v33);

        *(v26 + 14) = v32;
        _os_log_impl(&dword_269C18000, v24, v25, "[%{public}s] Unable to edit occurrence for identifier: %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v27, -1, -1);
        MEMORY[0x26D652460](v26, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  else
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_269CBD9C4(v34);
    v13 = v8;
    v14 = sub_269D98230();
    v15 = sub_269D9AB80();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36[0] = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_269C2EACC(0xD000000000000040, 0x8000000269DB03F0, v36);
      *(v16 + 12) = 2082;
      v18 = v13;
      v19 = [v18 description];
      v20 = sub_269D9A630();
      v22 = v21;

      v23 = sub_269C2EACC(v20, v22, v36);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }
  }
}

uint64_t sub_269CBD9C4(uint64_t a1)
{
  sub_269CBDA4C(0, &qword_28034F690, &qword_28034F688, &protocol descriptor for ScheduleActionHandling, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269CBDA4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_269C3232C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_269CBDAB4(uint64_t a1, uint64_t a2)
{
  sub_269CBE1F8(0, &qword_280C0BF30, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CBDB3C(uint64_t a1)
{
  sub_269CBE1F8(0, &qword_280C0BF30, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269CBDBBC(void *a1)
{
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_269C2EACC(0xD00000000000003BLL, 0x8000000269DB0440, v24);
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Add schedule occurrence prompt row tapped", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v23 = a1;
  sub_269C1B0B8(0, &qword_28034DC38, 0x277D75D28);
  sub_269C3232C(0, &qword_28034F688, &protocol descriptor for ScheduleActionHandling);
  v7 = a1;
  if (swift_dynamicCast())
  {
    sub_269C25520(v21, v24);
    v8 = v25;
    v9 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_269CBD9C4(v21);
    v10 = v7;
    v11 = sub_269D98230();
    v12 = sub_269D9AB80();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_269C2EACC(0xD00000000000003BLL, 0x8000000269DB0440, v24);
      *(v13 + 12) = 2082;
      v15 = v10;
      v16 = [v15 description];
      v17 = sub_269D9A630();
      v19 = v18;

      v20 = sub_269C2EACC(v17, v19, v24);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] Unable to present schedule compose on unknown view controller: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v14, -1, -1);
      MEMORY[0x26D652460](v13, -1, -1);
    }
  }
}

void sub_269CBDF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_269CBDF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_269CBDFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F6A0;
  if (!qword_28034F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6A0);
  }

  return result;
}

unint64_t sub_269CBE030()
{
  result = qword_28034F6A8;
  if (!qword_28034F6A8)
  {
    type metadata accessor for ScheduleOccurrenceRow(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F6A8);
  }

  return result;
}

uint64_t sub_269CBE078(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleOccurrenceRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269CBE0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F6B0;
  if (!qword_28034F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6B0);
  }

  return result;
}

uint64_t sub_269CBE128(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_269D9B280() & 1;
  }
}

void sub_269CBE180(uint64_t a1)
{
  if (!qword_28034F6B8)
  {
    sub_269C1B0B8(255, &qword_28034E978, 0x277D62488);
    v1 = sub_269D987E0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F6B8);
    }
  }
}

void sub_269CBE1F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269CBE278(uint64_t a1)
{
  result = type metadata accessor for ScheduleOccurrenceViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269CBE2F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_269CBE340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269CBE398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_269CBE3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_269CBE464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F6D0;
  if (!qword_28034F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6D0);
  }

  return result;
}

unint64_t sub_269CBE4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F6D8;
  if (!qword_28034F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6D8);
  }

  return result;
}

unint64_t sub_269CBE5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F6E8;
  if (!qword_28034F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6E8);
  }

  return result;
}

unint64_t sub_269CBE5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F6F8;
  if (!qword_28034F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F6F8);
  }

  return result;
}

unint64_t sub_269CBE650()
{
  result = qword_28034F700;
  if (!qword_28034F700)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F700);
  }

  return result;
}

unint64_t sub_269CBE698()
{
  result = qword_28034F708;
  if (!qword_28034F708)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F708);
  }

  return result;
}

uint64_t ScheduleStatus.enabledTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t ScheduleStatus.disabledTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t ScheduleStatus.hashValue.getter()
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](0);
  return sub_269D9B390();
}

uint64_t sub_269CBE89C()
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](0);
  return sub_269D9B390();
}

uint64_t sub_269CBE908(uint64_t a1)
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](0);
  return sub_269D9B390();
}

unint64_t sub_269CBE94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F710;
  if (!qword_28034F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F710);
  }

  return result;
}

void sub_269CBE9B8(double a1)
{
  v1 = a1 / 3600.0;
  if (COERCE__INT64(fabs(a1 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = 3600 * v1;
  if ((v1 * 3600) >> 64 == v2 >> 63)
  {
    v3 = v2;
    v4 = a1 - v2;
    sub_269CC0AEC(0, &qword_280C0BBA0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_269D9EBF0;
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_269CBEA94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_269CC01F8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC0364(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC029C(0);
  v16 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v79 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v80 = &v68 - v22;
  v23 = *(*(v1 + 8) + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (v23)
  {
    [v23 windDownTime];
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = type metadata accessor for ShorterDateComponentsFormatter();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v91.receiver = v27;
  v91.super_class = v26;
  v28 = objc_msgSendSuper2(&v91, sel_init);
  v29 = [v28 stringFromTimeInterval_];

  if (!v29)
  {
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v72 = v16;
  v78 = v9;
  v73 = v6;
  v74 = a1;
  v75 = v5;
  v30 = sub_269D9A630();
  v32 = v31;

  v33 = swift_allocObject();
  v34 = v2[3];
  v33[3] = v2[2];
  v33[4] = v34;
  v33[5] = v2[4];
  v35 = v2[1];
  v33[1] = *v2;
  v33[2] = v35;
  MEMORY[0x28223BE20](v33, v36);
  *(&v68 - 2) = v30;
  *(&v68 - 1) = v32;
  sub_269CC0858(v2, &v85);
  sub_269CC0460(0);
  sub_269CC0DA4(&qword_28034F770, sub_269CC0460, MEMORY[0x277CE1138]);
  sub_269D99EB0();

  v37 = sub_269D99D40();
  KeyPath = swift_getKeyPath();
  v39 = &v14[*(v11 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v92 = v2[2];
  v85 = v2[2];
  sub_269CC0890(0, &qword_28034F7A8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v40 = swift_allocObject();
  v41 = v2[3];
  v40[3] = v2[2];
  v40[4] = v41;
  v40[5] = v2[4];
  v42 = v2[1];
  v40[1] = *v2;
  v40[2] = v42;
  sub_269CC0858(v2, &v85);
  sub_269CC0AEC(0, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
  sub_269CC058C();
  sub_269CC066C();
  sub_269D99C70();

  sub_269CC09F4(v14, sub_269CC0364);
  v85 = v2[1];
  sub_269CC0AEC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v76 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (v81 == 1)
  {
    v50 = v2[4];
    v81 = v2[3];
    v82 = v50;
    sub_269CC0AEC(0, &qword_28034F7B0, &type metadata for WindDownPickerModel, MEMORY[0x277CE10B8]);
    sub_269D99E90();
    v43 = *(&v85 + 1);
    v76 = v85;
    v44 = v86;
    v45 = v87;
    v46 = v88;
    v81 = v92;
    sub_269D99E90();
    v48 = *(&v85 + 1);
    v47 = v85;
    v49 = v86;
  }

  v68 = v47;
  *&v69 = v48;
  *(&v69 + 1) = v49;
  v70 = v45;
  v51 = v77;
  v52 = *(v77 + 16);
  v53 = v79;
  v71 = v43;
  v54 = v72;
  v52(v79, v80, v72);
  v55 = v76;
  v56 = v78;
  v52(v78, v53, v54);
  sub_269CC022C(0);
  v58 = (v56 + *(v57 + 48));
  *&v81 = v55;
  v59 = v55;
  *(&v81 + 1) = v43;
  *&v82 = v44;
  v60 = v70;
  *(&v82 + 1) = v70;
  v61 = v68;
  *&v83 = v46;
  *(&v83 + 1) = v68;
  v62 = v69;
  v84 = v69;
  v63 = v82;
  *v58 = v81;
  v58[1] = v63;
  v64 = v84;
  v58[2] = v83;
  v58[3] = v64;
  sub_269CC098C(&v81, &v85, sub_269CC0700);
  v65 = *(v51 + 8);
  v65(v80, v54);
  *&v85 = v59;
  *(&v85 + 1) = v71;
  v86 = v44;
  v87 = v60;
  v88 = v46;
  v89 = v61;
  v90 = v62;
  sub_269CC09F4(&v85, sub_269CC0700);
  v65(v79, v54);
  v66 = v74;
  sub_269C1F00C(v78, v74);
  return (*(v73 + 56))(v66, 0, 1, v75);
}

uint64_t sub_269CBF254(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor, v2);
  sub_269D9A1B0();
  sub_269D98BD0();
}

uint64_t sub_269CBF344(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_269CC098C(&v6, &v3, sub_269CC0A70);
  sub_269CC0AEC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v4 = v5;
  LOBYTE(v3) = (v3 & 1) == 0;
  sub_269D99E80();
  sub_269CC0B3C(&v5);
}

double sub_269CBF488@<D0>(uint64_t a3@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269D99090();
  v16 = 1;
  sub_269CBF608(&v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_269CC098C(&v17, &v9, sub_269CC04F4);
  sub_269CC09F4(v22, sub_269CC04F4);

  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a3 + 49) = *&v15[32];
  *(a3 + 65) = v5;
  *(a3 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a3 + 17) = *v15;
  v8 = v16;
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v8;
  *(a3 + 96) = *&v15[79];
  *(a3 + 33) = v7;
  return result;
}

uint64_t sub_269CBF608@<X0>(uint64_t a3@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v4 = qword_280C0D990;
  sub_269D972C0();

  sub_269C3EEE8(v5, v6, v7);
  v8 = sub_269D99960();
  v27 = v9;
  v28 = v8;
  v26 = v10;
  v29 = v11;

  v12 = sub_269D99960();
  v14 = v13;
  v16 = v15;
  v17 = [objc_opt_self() tintColor];
  sub_269D99CC0();
  v18 = sub_269D998F0();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_269C41568(v12, v14, v16 & 1);

  *a3 = v28;
  *(a3 + 8) = v27;
  *(a3 + 16) = v26 & 1;
  *(a3 + 24) = v29;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v18;
  *(a3 + 56) = v20;
  *(a3 + 64) = v22 & 1;
  *(a3 + 72) = v24;
  sub_269C41668(v28, v27, v26 & 1);

  sub_269C41668(v18, v20, v22 & 1);

  sub_269C41568(v18, v20, v22 & 1);

  sub_269C41568(v28, v27, v26 & 1);
}

uint64_t sub_269CBF8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269CBFAF8();
  v5 = v4;
  v6 = *(a3 + 8);
  v7 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  v8 = *(v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (v8)
  {
    [v8 windDownTime];
    if (v9 != v5)
    {
      v10 = *(v6 + v7);
LABEL_11:
      [v10 setWindDownTime_];
      sub_269C78F44();
      sub_269CBFD18(v5);
      v12 = type metadata accessor for ShortHourDateComponentsFormatter();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = 4;
      v18.receiver = v13;
      v18.super_class = v12;
      v14 = objc_msgSendSuper2(&v18, sel_init);
      [v14 setUnitsStyle_];
      [v14 setAllowedUnits_];
      v15 = type metadata accessor for ShortMinuteDateComponentsFormatter();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options] = 4;
      v17.receiver = v16;
      v17.super_class = v15;
      objc_msgSendSuper2(&v17, sel_init);
      sub_269CC0AEC(0, &qword_28034F7B0, &type metadata for WindDownPickerModel, MEMORY[0x277CE10B8]);
      sub_269D99E80();
    }
  }

  else if (v4 != 0.0)
  {
    v10 = 0;
    goto LABEL_11;
  }
}

double sub_269CBFAF8()
{
  sub_269CC0890(0, &qword_28034F7A8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v0 = *(v9 + 16);
  if (!v0)
  {
    v2 = 0.0;
    goto LABEL_10;
  }

  if (v0 <= 3)
  {
    v1 = 0;
    v2 = 0.0;
LABEL_8:
    v5 = v0 - v1;
    v6 = (v9 + 8 * v1 + 32);
    do
    {
      v7 = *v6++;
      v2 = v2 + v7;
      --v5;
    }

    while (v5);
    goto LABEL_10;
  }

  v1 = v0 & 0x7FFFFFFFFFFFFFFCLL;
  v3 = (v9 + 48);
  v2 = 0.0;
  v4 = v0 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v2 = v2 + *(v3 - 2) + *(v3 - 1) + *v3 + v3[1];
    v3 += 4;
    v4 -= 4;
  }

  while (v4);
  if (v0 != v1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return v2;
}

unint64_t sub_269CBFC2C(unint64_t result, unint64_t a2, uint64_t a3, id a4, id a5)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(a3 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(a3 + 8 * a2 + 32);
  if (*(v5 + 16) > result)
  {
    v6 = *(v5 + 8 * result + 32);
    if (a2)
    {
      v7 = [a5 stringFromTimeInterval_];
      if (v7)
      {
LABEL_7:
        v8 = v7;
        v9 = sub_269D9A630();

        return v9;
      }
    }

    else
    {
      v7 = [a4 stringFromTimeInterval_];
      if (v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_269CBFD18(double a1)
{
  v2 = *MEMORY[0x277D623D0] * 60.0;
  sub_269D70DE4(0.0, v2 + 1.0, 3600.0);
  v4 = v3;
  if (v2 <= a1)
  {
    v7 = &unk_287A9FF10;
    goto LABEL_5;
  }

  v5 = *MEMORY[0x277D623E8] * 60.0;
  if (v5 != 0.0)
  {
    sub_269D70DE4(0.0, 3600.0, v5);
    v7 = v6;
LABEL_5:
    sub_269CC0890(0, &qword_28034F718, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_269D9EBF0;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    return;
  }

  __break(1u);
}

__n128 sub_269CBFE08@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  sub_269D99E60();
  type metadata accessor for SleepScheduleModel();
  sub_269CC0DA4(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
  v4 = a1;
  v21 = sub_269D98C70();
  v6 = v5;
  v7 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  v8 = *&v4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule];
  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    [v8 windDownTime];
  }

  sub_269CBE9B8(v10);
  sub_269CC0AEC(0, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
  sub_269D99E60();
  v11 = *&v4[v7];
  if (v11)
  {
    [v11 windDownTime];
    v9 = v12;
  }

  sub_269CBFD18(v9);
  v13 = type metadata accessor for ShortHourDateComponentsFormatter();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = 4;
  v27.receiver = v14;
  v27.super_class = v13;
  v15 = objc_msgSendSuper2(&v27, sel_init);
  [v15 setUnitsStyle_];
  [v15 setAllowedUnits_];
  v16 = type metadata accessor for ShortMinuteDateComponentsFormatter();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options] = 4;
  v26.receiver = v17;
  v26.super_class = v16;
  v22 = objc_msgSendSuper2(&v26, sel_init);

  v18 = v15;
  v19 = v22;
  sub_269D99E60();

  result = v23;
  a2->n128_u64[0] = v21;
  a2->n128_u64[1] = v6;
  a2[1].n128_u8[0] = v23.n128_u8[0];
  a2[1].n128_u64[1] = v23.n128_u64[1];
  a2[2] = v23;
  a2[3] = v23;
  a2[4].n128_u64[0] = v24;
  a2[4].n128_u64[1] = v25;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_269CC00A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_269CC00F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269CC0160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_269CC0188(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269CC0188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F720;
  if (!qword_28034F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F720);
  }

  return result;
}

void sub_269CC022C(uint64_t a1)
{
  if (!qword_28034F730)
  {
    sub_269CC029C(255);
    sub_269CC0700(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F730);
    }
  }
}

void sub_269CC029C(uint64_t a1)
{
  if (!qword_28034F738)
  {
    sub_269CC0364(255);
    sub_269CC0AEC(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    sub_269CC058C();
    sub_269CC066C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F738);
    }
  }
}

void sub_269CC0364(uint64_t a1)
{
  if (!qword_28034F740)
  {
    sub_269CC03CC(255);
    sub_269C3C784(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F740);
    }
  }
}

void sub_269CC03CC(uint64_t a1)
{
  if (!qword_28034F748)
  {
    sub_269CC0460(255);
    sub_269CC0DA4(&qword_28034F770, sub_269CC0460, MEMORY[0x277CE1138]);
    v1 = sub_269D99EE0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F748);
    }
  }
}

void sub_269CC0460(uint64_t a1)
{
  if (!qword_28034F750)
  {
    sub_269CC04F4(255);
    sub_269CC0DA4(&qword_28034F768, sub_269CC04F4, MEMORY[0x277CE14C0]);
    v1 = sub_269D99F00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F750);
    }
  }
}

void sub_269CC0528()
{
  if (!qword_28034F760)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28034F760);
    }
  }
}

unint64_t sub_269CC058C()
{
  result = qword_28034F778;
  if (!qword_28034F778)
  {
    sub_269CC0364(255);
    sub_269CC0DA4(&qword_28034F780, sub_269CC03CC, MEMORY[0x277CDF028]);
    sub_269CC0DA4(&qword_280C0B5B8, sub_269C3C784, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F778);
  }

  return result;
}

unint64_t sub_269CC066C()
{
  result = qword_28034F788;
  if (!qword_28034F788)
  {
    sub_269CC0AEC(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F788);
  }

  return result;
}

void sub_269CC0734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CC0798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034F798)
  {
    v4 = sub_269CC07F4(0, a2, a3);
    v6 = type metadata accessor for MultiPicker(a1, &type metadata for WindDownPickerModel, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_28034F798);
    }
  }
}

unint64_t sub_269CC07F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F7A0;
  if (!qword_28034F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F7A0);
  }

  return result;
}

void sub_269CC0890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269CC0AEC(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_269CC098C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269CC09F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269CC0A70(uint64_t a1)
{
  if (!qword_28034F7B8)
  {
    sub_269CC0AEC(255, &qword_28034F7C0, MEMORY[0x277D839B0], MEMORY[0x277CDF3B0]);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F7B8);
    }
  }
}

void sub_269CC0AEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269CC0B3C(uint64_t a1)
{
  sub_269CC0AEC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269CC0BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 > 3)
    {
      v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
      v4 = (a1 + 48);
      v3 = 0.0;
      v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
        v4 += 4;
        v5 -= 4;
      }

      while (v5);
      if (v1 == v2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v2 = 0;
      v3 = 0.0;
    }

    v6 = v1 - v2;
    v7 = (a1 + 8 * v2 + 32);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v3 = 0.0;
  }

LABEL_10:
  v9 = *MEMORY[0x277D623D0] * 60.0;
  if (v3 <= v9)
  {
  }

  sub_269CC0AEC(0, &qword_280C0BBA0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
  result = swift_allocObject();
  *(result + 16) = xmmword_269D9EBF0;
  *(result + 32) = v9;
  *(result + 40) = 0;
  return result;
}

unint64_t sub_269CC0CCC()
{
  result = qword_28034F7C8;
  if (!qword_28034F7C8)
  {
    sub_269CC0734(255, &qword_28034F7D0, sub_269CC01F8, MEMORY[0x277D83D88]);
    sub_269CC0DA4(&qword_28034F7D8, sub_269CC01F8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F7C8);
  }

  return result;
}

uint64_t sub_269CC0DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269CC0DEC(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_269D9B3F0();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D9B3D0();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_269D9B440();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_269D9B450();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC11A8(0);
  sub_269D9B420();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_269D9EBF0;
  sub_269D9B400();
  sub_269D9B410();
  sub_269CF7698(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_269D9B430();
  sub_269D9B3C0();
  sub_269D9B3E0();
  sub_269D96EF0();

  (*(v25 + 8))(v5, v26);
  (*(v23 + 8))(v9, v24);
  (*(v10 + 8))(v13, v22);
  sub_269CC1200();
  v19 = v21;
  sub_269D9B460();
  (*(v14 + 8))(v17, v19);
  return v29;
}

void sub_269CC11A8(uint64_t a1)
{
  if (!qword_280C0AD78)
  {
    sub_269D9B420();
    v1 = sub_269D9B240();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0AD78);
    }
  }
}

unint64_t sub_269CC1200()
{
  result = qword_280C0AD58;
  if (!qword_280C0AD58)
  {
    sub_269D9B450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AD58);
  }

  return result;
}

Swift::Void __swiftcall UICollectionView.registerGoalTimePickerCell()()
{
  v0 = type metadata accessor for GoalTimePickerCollectionViewCell();
  v1 = sub_269CC12C0();

  MEMORY[0x28216A168](v0, v0, v1);
}

unint64_t sub_269CC12C0()
{
  result = qword_28034F7E0;
  if (!qword_28034F7E0)
  {
    type metadata accessor for GoalTimePickerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F7E0);
  }

  return result;
}

id sub_269CC1314(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for GoalTimePickerCollectionViewCell();
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_269C628D0();

  v11 = sub_269D912B8();
  v12 = &v10[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  v13 = *&v10[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
  *v12 = v14;
  v12[1] = v15;
  *(v12 + 2) = v11;
  *(v12 + 24) = v16 & 1;
  if (v13 != v15)
  {
    [v10 reloadAllComponents];
    sub_269CD94E4(1);
  }

  return v9;
}

id sub_269CC14B4(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for GoalTimePickerCollectionViewCell();
  v3 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_269C628D0();

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

id sub_269CC1620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalTimePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269CC169C(uint64_t a1)
{
  if (!qword_28034F800)
  {
    type metadata accessor for LockScreenContentModel(255);
    sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
    v1 = sub_269D98C90();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F800);
    }
  }
}

uint64_t sub_269CC174C@<X0>(void *a1@<X8>)
{
  v3 = sub_269D99040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LockScreenGreetingView(0);
  sub_269CC6074(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269D98CA0();
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

uint64_t sub_269CC1960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v118 = a2;
  v2 = type metadata accessor for LockScreenGreetingView(0);
  v111 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v112 = v4;
  v113 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D98CA0();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v106 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v105 = &v94 - v10;
  sub_269CC338C(0, v11, v12);
  v116 = *(v13 - 8);
  v117 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v115 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v114 = &v94 - v18;
  v19 = sub_269D997A0();
  v102 = *(v19 - 8);
  v103 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v101 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_269D97650();
  v99 = *(v22 - 8);
  v100 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_269D97580();
  v97 = *(v26 - 8);
  KeyPath = v26;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_269D97670();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_269D977A0();
  v95 = *(v35 - 8);
  v96 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC2F90(0);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v110 = &v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v119 = &v94 - v44;
  sub_269D9A8E0();
  v109 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = *(v120 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v104 = v45;
  sub_269D98880(&v139);

  if (v139 > 2u)
  {
    (*(v31 + 104))(v34, *MEMORY[0x277CC9830], v30);
    sub_269D97680();
    (*(v31 + 8))(v34, v30);
    sub_269D97570();
    sub_269D97630();
    v48 = Calendar.dayPeriod(for:in:)(v29);
    (*(v99 + 8))(v25, v100);
    (*(v97 + 8))(v29, KeyPath);
    (*(v95 + 8))(v38, v96);
    *&v130 = 0;
    sub_269D71D6C(&v130, v48);
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v49 = qword_280C0D990;
    v50 = sub_269D972C0();
    v99 = v51;
    v100 = v50;

    KeyPath = swift_getKeyPath();
    v52 = swift_getKeyPath();
    LOBYTE(v130) = 0;
    LOBYTE(v121) = 1;
    v53 = sub_269D99D20();
    v54 = swift_getKeyPath();
    sub_269D99650();
    v56 = v101;
    v55 = v102;
    v57 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x277CE0A10], v103);
    v58 = sub_269D997E0();

    (*(v55 + 8))(v56, v57);
    v59 = swift_getKeyPath();
    LOBYTE(v57) = sub_269D995F0();
    sub_269D98990();
    LOBYTE(v130) = 0;
    *&v121 = v100;
    *(&v121 + 1) = v99;
    LOBYTE(v122) = 0;
    *(&v122 + 1) = MEMORY[0x277D84F90];
    v123 = KeyPath;
    LOBYTE(v124) = 1;
    *(&v124 + 1) = v52;
    LOBYTE(v125) = 1;
    *(&v125 + 1) = v54;
    *&v126 = v53;
    *(&v126 + 1) = v59;
    *&v127 = v58;
    BYTE8(v127) = v57;
    *&v128 = v60;
    *(&v128 + 1) = v61;
    *v129 = v62;
    *&v129[8] = v63;
    v129[16] = 0;
    *&v129[17] = 256;
    sub_269CC3018(0);
    sub_269CC6B5C(&qword_28034F888, sub_269CC3018, sub_269CC5A5C, MEMORY[0x277CDFC48]);
    v47 = v119;
    sub_269D99BB0();
    v136 = v127;
    v137 = v128;
    *v138 = *v129;
    *&v138[15] = *&v129[15];
    v132 = v123;
    v133 = v124;
    v134 = v125;
    v135 = v126;
    v130 = v121;
    v131 = v122;
    sub_269CC5E10(&v130, sub_269CC3018);
    sub_269CC69F4(0, &qword_28034F828, sub_269CC3018, MEMORY[0x277CDE470]);
    (*(*(v64 - 8) + 56))(v47, 0, 1, v64);
  }

  else
  {
    sub_269CC69F4(0, &qword_28034F828, sub_269CC3018, MEMORY[0x277CDE470]);
    v47 = v119;
    (*(*(v46 - 8) + 56))(v119, 1, 1, v46);
  }

  v65 = v105;
  v66 = v120;
  sub_269CC174C(v105);
  v68 = v106;
  v67 = v107;
  v69 = v108;
  (*(v107 + 104))(v106, *MEMORY[0x277CDF9A8], v108);
  sub_269CC3564(&qword_280C0B658, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v70 = sub_269D9A540();
  v71 = *(v67 + 8);
  v71(v68, v69);
  v71(v65, v69);
  LOBYTE(v121) = v70 & 1;
  type metadata accessor for LockScreenContentModel(0);
  sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
  v72 = v104;
  v73 = sub_269D98C70();
  v75 = v74;
  v76 = sub_269D98C70();
  LOBYTE(v130) = v121;
  *(&v130 + 1) = v73;
  *&v131 = v75;
  *(&v131 + 1) = v76;
  *&v132 = v77;
  v78 = v113;
  sub_269CC5DA8(v66, v113, type metadata accessor for LockScreenGreetingView);
  v79 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v80 = swift_allocObject();
  sub_269CC6AF4(v78, v80 + v79, type metadata accessor for LockScreenGreetingView);
  sub_269CC3440(0, v81, v82);
  sub_269CC3564(&qword_28034F880, sub_269CC3440, &protocol conformance descriptor for OptionalContentGroup<A, B>);
  v83 = v114;
  sub_269D99AB0();

  v84 = v131;

  v85 = v110;
  sub_269CC5DA8(v47, v110, sub_269CC2F90);
  v87 = v115;
  v86 = v116;
  v88 = *(v116 + 16);
  v89 = v117;
  v88(v115, v83, v117);
  v90 = v118;
  sub_269CC5DA8(v85, v118, sub_269CC2F90);
  sub_269CC6944(0, &qword_28034F818, sub_269CC2F90, sub_269CC338C);
  v88((v90 + *(v91 + 48)), v87, v89);
  v92 = *(v86 + 8);
  v92(v83, v89);
  sub_269CC5E10(v119, sub_269CC2F90);
  v92(v87, v89);
  sub_269CC5E10(v85, sub_269CC2F90);
}

void sub_269CC2688(uint64_t a1)
{
  v2 = type metadata accessor for LockScreenGreetingView(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_269CC5E70(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D973D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v14 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D9A630();
  sub_269D973C0();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_269CC5E10(v8, sub_269CC5E70);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v15 = sub_269D98250();
    __swift_project_value_buffer(v15, qword_280351208);
    v16 = sub_269D98230();
    v17 = sub_269D9AB60();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_269C2EACC(0xD000000000000016, 0x8000000269DA4A50, &v32);
      _os_log_impl(&dword_269C18000, v16, v17, "[%{public}s] Error trying to open Weather app", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D652460](v19, -1, -1);
      MEMORY[0x26D652460](v18, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v20 = sub_269D98250();
    __swift_project_value_buffer(v20, qword_280351208);
    v21 = sub_269D98230();
    v22 = sub_269D9AB80();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[1] = v14;
      v25 = a1;
      v26 = v24;
      v32 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_269C2EACC(0xD000000000000016, 0x8000000269DA4A50, &v32);
      _os_log_impl(&dword_269C18000, v21, v22, "[%{public}s] Opening Weather app", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v27 = v26;
      a1 = v25;
      MEMORY[0x26D652460](v27, -1, -1);
      MEMORY[0x26D652460](v23, -1, -1);
    }

    sub_269CC5DA8(a1, v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LockScreenGreetingView);
    v28 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v29 = swift_allocObject();
    sub_269CC6AF4(v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for LockScreenGreetingView);
    DeepLinkOpener.open(url:completion:)(v13, sub_269CC5FE4, v29);

    (*(v10 + 8))(v13, v9);
  }
}

void sub_269CC2BC4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280351208);
    v6 = a1;
    v7 = sub_269D98230();
    v8 = sub_269D9AB60();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_269C2EACC(0xD000000000000016, 0x8000000269DA4A50, aBlock);
      *(v9 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v12 = MEMORY[0x28223BE20](ErrorValue, v23);
      (*(v14 + 16))(aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16, v12);
      v15 = sub_269D9A660();
      v17 = sub_269C2EACC(v15, v16, aBlock);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Error trying to open Weather app: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v10, -1, -1);
      MEMORY[0x26D652460](v9, -1, -1);
    }

    else
    {
    }
  }

  v18 = *(a2 + 8);
  v19 = *&v18[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  aBlock[4] = sub_269CC6054;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  [v19 dismissGoodMorningWithCompletion_];
  _Block_release(v21);
}

uint64_t sub_269CC2EE4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_269D99190();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_269CC6224(0, &qword_28034F808, sub_269CC2F54, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  return sub_269CC1960(v1, a1 + *(v3 + 44));
}

void sub_269CC2F90(uint64_t a1)
{
  if (!qword_28034F820)
  {
    sub_269CC69F4(255, &qword_28034F828, sub_269CC3018, MEMORY[0x277CDE470]);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F820);
    }
  }
}

void sub_269CC3068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_269CC30CC(uint64_t a1)
{
  if (!qword_28034F840)
  {
    sub_269CC314C(255);
    sub_269CC32D0(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F840);
    }
  }
}

void sub_269CC314C(uint64_t a1)
{
  if (!qword_28034F848)
  {
    sub_269CC31CC(255);
    sub_269CC32D0(255, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F848);
    }
  }
}

void sub_269CC31CC(uint64_t a1)
{
  if (!qword_28034F850)
  {
    sub_269CC3258(255);
    sub_269CC333C(255, &qword_280C0B040, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F850);
    }
  }
}

void sub_269CC3258(uint64_t a1)
{
  if (!qword_28034F858)
  {
    sub_269CC32D0(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F858);
    }
  }
}

void sub_269CC32D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269CC333C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_269D99530();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269CC333C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269CC338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034F860)
  {
    sub_269CC3440(255, a2, a3);
    sub_269CC3564(&qword_28034F880, sub_269CC3440, &protocol conformance descriptor for OptionalContentGroup<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F860);
    }
  }
}

void sub_269CC3440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034F868)
  {
    v8[0] = &type metadata for ShortWeatherDetailView;
    v8[1] = &type metadata for WeatherDetailView;
    v9 = sub_269CC34BC(0, a2, a3);
    v10 = sub_269CC3510(v9, v4, v5);
    v6 = type metadata accessor for OptionalContentGroup(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_28034F868);
    }
  }
}

unint64_t sub_269CC34BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F870;
  if (!qword_28034F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F870);
  }

  return result;
}

unint64_t sub_269CC3510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F878;
  if (!qword_28034F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F878);
  }

  return result;
}

uint64_t sub_269CC3564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269CC35AC@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WeatherIconView(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (v27 - v10);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269D9A8E0();
  v27[1] = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a1;
  sub_269D98880(v15);

  v17 = type metadata accessor for CurrentWeatherModel(0);
  v18 = (*(*(v17 - 8) + 48))(v15, 1, v17);
  v19 = 0xE000000000000000;
  v20 = sub_269C6C9C4;
  if (v18 == 1)
  {
    v21 = 0;
  }

  else
  {
    sub_269D9A460();
    swift_allocObject();
    sub_269D9A450();
    v21 = sub_269D9A440();
    v23 = v22;

    if (v23)
    {
      v19 = v23;
    }

    else
    {
      v21 = 0;
    }

    v20 = type metadata accessor for CurrentWeatherModel;
  }

  sub_269CC5E10(v15, v20);
  *(v11 + *(v4 + 20)) = swift_getKeyPath();
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LockScreenContentModel(0);
  sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
  *v11 = sub_269D98C70();
  v11[1] = v24;
  sub_269CC5DA8(v11, v7, type metadata accessor for WeatherIconView);
  *a2 = v21;
  a2[1] = v19;
  sub_269CC63B0(0);
  sub_269CC5DA8(v7, a2 + *(v25 + 48), type metadata accessor for WeatherIconView);

  sub_269CC5E10(v11, type metadata accessor for WeatherIconView);
  sub_269CC5E10(v7, type metadata accessor for WeatherIconView);
}

uint64_t sub_269CC3990@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_269D97810();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D97580();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269CBA014(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WeatherIconView(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v39 - v24);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v25 + *(v18 + 20)) = swift_getKeyPath();
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LockScreenContentModel(0);
  sub_269CC3564(&unk_28034EA90, type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
  v43;
  *v25 = sub_269D98C70();
  v25[1] = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v13);

  v27 = type metadata accessor for CurrentWeatherModel(0);
  if ((*(*(v27 - 8) + 48))(v13, 1, v27) == 1)
  {
    v28 = sub_269C6C9C4;
    v29 = v13;
  }

  else
  {
    sub_269D97900();
    sub_269D97800();
    sub_269D97A00();
    (*(v41 + 8))(v5, v42);
    (*(v39 + 8))(v9, v40);
    sub_269CC5E10(v13, type metadata accessor for CurrentWeatherModel);
    v30 = sub_269D978A0();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v17, 1, v30) != 1)
    {
      v32 = DayWeather.shortNaturalLanguageDescription.getter();
      v33 = v34;
      (*(v31 + 8))(v17, v30);
      goto LABEL_9;
    }

    v28 = sub_269CBA014;
    v29 = v17;
  }

  sub_269CC5E10(v29, v28);
  v32 = 0;
  v33 = 0xE000000000000000;
LABEL_9:
  sub_269CC5DA8(v25, v21, type metadata accessor for WeatherIconView);
  v35 = v44;
  sub_269CC5DA8(v21, v44, type metadata accessor for WeatherIconView);
  sub_269CC62C4(0);
  v37 = (v35 + *(v36 + 48));
  *v37 = v32;
  v37[1] = v33;

  sub_269CC5E10(v25, type metadata accessor for WeatherIconView);

  sub_269CC5E10(v21, type metadata accessor for WeatherIconView);
}

uint64_t sub_269CC3F60@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  *a3 = sub_269D99190();
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = 0;
  a1(0);
  return a2(v8, v7);
}

uint64_t sub_269CC3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39[0] = a1;
  v39[1] = a3;
  v4 = sub_269D997A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC6C80(0);
  v10 = v9;
  MEMORY[0x28223BE20](v9, v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_269D99370();
  KeyPath = swift_getKeyPath();
  sub_269CC6E64(0);
  v17 = &v13[*(v16 + 36)];
  sub_269CC6F78(0);
  v19 = *(v18 + 28);
  sub_269D9A160();
  v20 = sub_269D9A170();
  (*(*(v20 - 8) + 56))(v17 + v19, 0, 1, v20);
  *v17 = KeyPath;
  *v13 = v39[0];
  *(v13 + 1) = a2;
  v13[16] = 0;
  *(v13 + 3) = MEMORY[0x277D84F90];
  *(v13 + 8) = v14;
  v21 = swift_getKeyPath();
  sub_269CC69F4(0, &qword_28034F9B8, sub_269CC6E64, sub_269CC6FE0);
  v23 = &v13[*(v22 + 36)];
  sub_269CC6FE0(0);
  v25 = *(v24 + 28);
  v26 = *MEMORY[0x277CDF3C0];
  v27 = sub_269D989F0();
  (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
  *v23 = v21;
  sub_269D996C0();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v4);
  v28 = sub_269D997E0();

  (*(v5 + 8))(v8, v4);
  v29 = swift_getKeyPath();
  sub_269CC6DB4(0);
  v31 = &v13[*(v30 + 36)];
  *v31 = v29;
  v31[1] = v28;
  v32 = swift_getKeyPath();
  sub_269CC6D34(0);
  v34 = &v13[*(v33 + 36)];
  *v34 = v32;
  *(v34 + 1) = 0;
  v34[16] = 1;
  v35 = swift_getKeyPath();
  sub_269CC6CA8(0);
  v37 = &v13[*(v36 + 36)];
  *v37 = v35;
  v37[8] = 1;
  *&v13[*(v10 + 36)] = 256;
  sub_269CC7014();
  sub_269D99BB0();
  return sub_269CC5E10(v13, sub_269CC6C80);
}

uint64_t sub_269CC4364@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  sub_269CC6818(0);
  v26 = v2;
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_269D97920();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v23 - v17;
  v23 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v9);

  v19 = type metadata accessor for CurrentWeatherModel(0);
  if ((*(*(v19 - 8) + 48))(v9, 1, v19) == 1)
  {
    sub_269CC5E10(v9, sub_269C6C9C4);
    return (*(v24 + 56))(v25, 1, 1, v26);
  }

  else
  {
    (*(v11 + 16))(v14, v9, v10);
    sub_269CC5E10(v9, type metadata accessor for CurrentWeatherModel);
    (*(v11 + 32))(v18, v14, v10);
    *v5 = sub_269D99090();
    *(v5 + 1) = 0x4008000000000000;
    v5[16] = 0;
    sub_269CC6224(0, &qword_28034F980, sub_269CC68AC, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_269CC46F0(v18, v23, &v5[*(v21 + 44)]);
    v22 = v25;
    sub_269CC6AF4(v5, v25, sub_269CC6818);
    (*(v24 + 56))(v22, 0, 1, v26);
    return (*(v11 + 8))(v18, v10);
  }
}

uint64_t sub_269CC46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v105 = a1;
  v102 = a3;
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v99 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D9A370();
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D9AC20();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v92 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034E698, sub_269CB9FC8, MEMORY[0x277CC87D0]);
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v89 = &v85 - v14;
  sub_269C60724(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v101 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v100 = &v85 - v20;
  v21 = sub_269D99D70();
  v86 = *(v21 - 8);
  v87 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C71694(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_269D979B0();
  v29 = *(v103 - 1);
  MEMORY[0x28223BE20](v103, v30);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_269D9A360();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC69C0(0);
  v88 = v38;
  MEMORY[0x28223BE20](v38, v39);
  v106 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v104 = &v85 - v43;
  sub_269D9A8E0();
  v93 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97910();
  sub_269D978D0();
  sub_269D97990();
  v85 = *(v29 + 8);
  v85(v32, v103);
  sub_269D9A350();
  (*(v34 + 8))(v37, v33);
  sub_269D99D60();
  v44 = *MEMORY[0x277CE1010];
  v45 = sub_269D99DA0();
  v46 = *(v45 - 8);
  (*(v46 + 104))(v28, v44, v45);
  (*(v46 + 56))(v28, 0, 1, v45);
  sub_269D99D80();

  sub_269CC5E10(v28, sub_269C71694);
  v48 = v86;
  v47 = v87;
  (*(v86 + 104))(v24, *MEMORY[0x277CE0FE0], v87);
  v49 = sub_269D99DC0();

  (*(v48 + 8))(v24, v47);
  sub_269CC532C();
  sub_269CC532C();
  sub_269D9A180();
  sub_269D98AC0();
  *&v112[38] = v118;
  *&v112[22] = v117;
  *&v112[6] = v116;
  *&v111[2] = *v112;
  v113 = 1;
  v110 = v49;
  *v111 = 1;
  *&v111[18] = *&v112[16];
  *&v111[34] = *&v112[32];
  *&v111[48] = *(&v118 + 1);
  sub_269D97910();
  v50 = sub_269D979A0();
  v52 = v51;
  v85(v32, v103);
  v108 = v50;
  v109 = v52;
  sub_269CC6A68(0);
  v53 = sub_269CC6B5C(&qword_28034F988, sub_269CC6A68, sub_269CC6BDC, MEMORY[0x277CDF678]);
  sub_269C3EEE8(v53, v54, v55);
  v56 = v106;
  sub_269D99B50();

  v114[1] = *v111;
  v114[2] = *&v111[16];
  v114[3] = *&v111[32];
  v115 = *&v111[48];
  v114[0] = v110;
  sub_269CC5E10(v114, sub_269CC6A68);
  sub_269D98CE0();
  v103 = sub_269CC69C0;
  sub_269CC5E10(v56, sub_269CC69C0);
  v57 = v89;
  sub_269D978E0();
  v58 = v92;
  sub_269D9A340();
  v60 = v96;
  v59 = v97;
  v61 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x277D7B408], v98);
  sub_269D97DE0();
  sub_269D97DD0();
  sub_269CC3564(&qword_28034E6A8, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
  v62 = v91;
  v63 = v95;
  v105 = sub_269D96F10();
  v88 = v64;

  (*(v59 + 8))(v60, v61);
  (*(v94 + 8))(v58, v63);
  (*(v90 + 8))(v57, v62);
  sub_269CC561C();
  sub_269D99710();
  v65 = sub_269D996F0();
  v66 = v99;
  (*(*(v65 - 8) + 56))(v99, 1, 1, v65);
  sub_269D99730();
  sub_269CC5E10(v66, sub_269C424A0);
  v67 = sub_269D99920();
  v69 = v68;
  LOBYTE(v59) = v70;

  sub_269D99D20();
  v71 = sub_269D998F0();
  v73 = v72;
  LOBYTE(v60) = v74;
  v76 = v75;

  sub_269C41568(v67, v69, v59 & 1);

  *&v110 = v71;
  *(&v110 + 1) = v73;
  v111[0] = v60 & 1;
  *&v111[8] = v76;
  v77 = v100;
  sub_269D99BB0();
  sub_269C41568(v71, v73, v60 & 1);

  v78 = v104;
  v79 = v106;
  sub_269CC5DA8(v104, v106, sub_269CC69C0);
  v80 = v101;
  sub_269CC5DA8(v77, v101, sub_269C60724);
  v81 = v102;
  sub_269CC5DA8(v79, v102, sub_269CC69C0);
  sub_269CC6944(0, &qword_28034F958, sub_269CC69C0, sub_269C60724);
  sub_269CC5DA8(v80, v81 + *(v82 + 48), sub_269C60724);
  sub_269CC5E10(v77, sub_269C60724);
  v83 = v103;
  sub_269CC5E10(v78, v103);
  sub_269CC5E10(v80, sub_269C60724);
  sub_269CC5E10(v79, v83);
}

double sub_269CC532C()
{
  v1 = sub_269D99040();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - v8;
  v10 = sub_269D98CA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherIconView(0);
  sub_269CC6074(v0 + *(v15 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_269D9AB70();
    v16 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
  }

  v17 = (*(v11 + 88))(v14, v10);
  if (v17 == *MEMORY[0x277CDF9B8])
  {
    return 70.0;
  }

  if (v17 == *MEMORY[0x277CDF9D0])
  {
    return 79.0;
  }

  (*(v11 + 8))(v14, v10);
  return 60.0;
}

double sub_269CC561C()
{
  v1 = sub_269D99040();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - v8;
  v10 = sub_269D98CA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherIconView(0);
  sub_269CC6074(v0 + *(v15 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_269D9AB70();
    v16 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
  }

  v17 = (*(v11 + 88))(v14, v10);
  if (v17 == *MEMORY[0x277CDF9B8])
  {
    return 56.0;
  }

  if (v17 == *MEMORY[0x277CDF9D0])
  {
    return 60.0;
  }

  (*(v11 + 8))(v14, v10);
  return 52.0;
}

uint64_t sub_269CC5908(uint64_t a1)
{
  sub_269CC6FAC(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_269CC5DA8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_269CC6FAC);
  return sub_269D98F30();
}

uint64_t sub_269CC59A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_269D99010();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269CC5A08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269D98F80();
  *a1 = result;
  return result;
}

unint64_t sub_269CC5A5C()
{
  result = qword_28034F890;
  if (!qword_28034F890)
  {
    sub_269CC3040(255);
    sub_269CC7218(&qword_28034F898, sub_269CC30CC, sub_269CC5B0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F890);
  }

  return result;
}

unint64_t sub_269CC5B0C()
{
  result = qword_28034F8A0;
  if (!qword_28034F8A0)
  {
    sub_269CC314C(255);
    sub_269CC70C4(&qword_28034F8A8, sub_269CC31CC, sub_269CC5BDC);
    sub_269CC5CF8(&qword_280C0B5B8, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F8A0);
  }

  return result;
}

unint64_t sub_269CC5BDC()
{
  result = qword_28034F8B0;
  if (!qword_28034F8B0)
  {
    sub_269CC3258(255);
    sub_269CC5CF8(&qword_28034E2D0, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F8B0);
  }

  return result;
}

unint64_t sub_269CC5C7C()
{
  result = qword_280C0B048;
  if (!qword_280C0B048)
  {
    sub_269CC333C(255, &qword_280C0B040, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B048);
  }

  return result;
}

uint64_t sub_269CC5CF8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269CC32D0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269CC5D48()
{
  v1 = *(type metadata accessor for LockScreenGreetingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_269CC2688(v2);
}

uint64_t sub_269CC5DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269CC5E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for LockScreenGreetingView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_269D98CA0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_269CC5FE4(void *a1)
{
  v3 = *(type metadata accessor for LockScreenGreetingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_269CC2BC4(a1, v4);
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269CC6074(uint64_t a1, uint64_t a2)
{
  sub_269CC7628(0, &qword_28034F8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CC6128(uint64_t a1)
{
  if (!qword_28034F8C8)
  {
    sub_269CC2F54(255);
    sub_269CC3564(&qword_28034F8D0, sub_269CC2F54, MEMORY[0x277CE14C0]);
    v1 = sub_269D99FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F8C8);
    }
  }
}

void sub_269CC6224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_269D98BB0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269CC62C4(uint64_t a1)
{
  if (!qword_28034F8E8)
  {
    type metadata accessor for WeatherIconView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F8E8);
    }
  }
}

void sub_269CC63B0(uint64_t a1)
{
  if (!qword_28034F900)
  {
    type metadata accessor for WeatherIconView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F900);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_269CC7628(0, &qword_28034F7E8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_269CC7628(0, &qword_28034F7E8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_269CC65F4(uint64_t a1)
{
  sub_269CC169C(319);
  if (v1 <= 0x3F)
  {
    sub_269CC7628(319, &qword_28034F7E8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269CC66B8(uint64_t a1)
{
  if (!qword_28034F920)
  {
    sub_269CC6290(255);
    sub_269CC3564(&qword_28034F928, sub_269CC6290, MEMORY[0x277CE14C0]);
    v1 = sub_269D99FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F920);
    }
  }
}

void sub_269CC674C(uint64_t a1)
{
  if (!qword_28034F938)
  {
    sub_269CC637C(255);
    sub_269CC3564(&qword_28034F940, sub_269CC637C, MEMORY[0x277CE14C0]);
    v1 = sub_269D99FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F938);
    }
  }
}

void sub_269CC6818(uint64_t a1)
{
  if (!qword_28034F948)
  {
    sub_269CC68AC(255);
    sub_269CC3564(&qword_28034F978, sub_269CC68AC, MEMORY[0x277CE14C0]);
    v1 = sub_269D99F00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F948);
    }
  }
}

void sub_269CC68E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269CC6944(255, a3, a4, a5);
    v6 = sub_269D9A1C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269CC6944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269CC69F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_269CC6A68(uint64_t a1)
{
  if (!qword_28034F968)
  {
    sub_269CC6F24(255, &qword_28034F970, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F968);
    }
  }
}

uint64_t sub_269CC6AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269CC6B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t sub_269CC6BDC()
{
  result = qword_28034F990;
  if (!qword_28034F990)
  {
    sub_269CC6F24(255, &qword_28034F970, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F990);
  }

  return result;
}

void sub_269CC6CA8(uint64_t a1)
{
  if (!qword_28034F9A0)
  {
    sub_269CC6D34(255);
    sub_269CC333C(255, &qword_280C0B040, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F9A0);
    }
  }
}

void sub_269CC6D34(uint64_t a1)
{
  if (!qword_28034F9A8)
  {
    sub_269CC6DB4(255);
    sub_269CC32D0(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F9A8);
    }
  }
}

void sub_269CC6DB4(uint64_t a1)
{
  if (!qword_28034F9B0)
  {
    sub_269CC69F4(255, &qword_28034F9B8, sub_269CC6E64, sub_269CC6FE0);
    sub_269CC32D0(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F9B0);
    }
  }
}

void sub_269CC6E98(uint64_t a1)
{
  if (!qword_28034F9C8)
  {
    sub_269CC6F24(255, &qword_28034F9D0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F9C8);
    }
  }
}

void sub_269CC6F24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269CC7014()
{
  result = qword_28034F9F0;
  if (!qword_28034F9F0)
  {
    sub_269CC6C80(255);
    sub_269CC70C4(&qword_28034F9F8, sub_269CC6CA8, sub_269CC7148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F9F0);
  }

  return result;
}

uint64_t sub_269CC70C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_269CC5C7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CC7148()
{
  result = qword_28034FA00;
  if (!qword_28034FA00)
  {
    sub_269CC6D34(255);
    sub_269CC7218(&qword_28034FA08, sub_269CC6DB4, sub_269CC72BC);
    sub_269CC5CF8(&qword_28034E2D0, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA00);
  }

  return result;
}

uint64_t sub_269CC7218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_269CC5CF8(&qword_28034E0D0, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CC72BC()
{
  result = qword_28034FA10;
  if (!qword_28034FA10)
  {
    sub_269CC69F4(255, &qword_28034F9B8, sub_269CC6E64, sub_269CC6FE0);
    sub_269CC739C();
    sub_269CC3564(&qword_28034FA38, sub_269CC6FE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA10);
  }

  return result;
}

unint64_t sub_269CC739C()
{
  result = qword_28034FA18;
  if (!qword_28034FA18)
  {
    sub_269CC6E64(255);
    sub_269CC744C();
    sub_269CC3564(&qword_28034FA30, sub_269CC6F78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA18);
  }

  return result;
}

unint64_t sub_269CC744C()
{
  result = qword_28034FA20;
  if (!qword_28034FA20)
  {
    sub_269CC6E98(255);
    sub_269CC74CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA20);
  }

  return result;
}

unint64_t sub_269CC74CC()
{
  result = qword_28034FA28;
  if (!qword_28034FA28)
  {
    sub_269CC6F24(255, &qword_28034F9D0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA28);
  }

  return result;
}

unint64_t sub_269CC7550()
{
  result = qword_28034FA40;
  if (!qword_28034FA40)
  {
    sub_269CC7628(255, &qword_28034FA48, sub_269CC6818, MEMORY[0x277D83D88]);
    sub_269CC3564(&qword_28034FA50, sub_269CC6818, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA40);
  }

  return result;
}

void sub_269CC7628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269CC768C()
{
  result = qword_28034FA58;
  if (!qword_28034FA58)
  {
    sub_269CC69F4(255, &qword_28034FA60, sub_269CC6C80, MEMORY[0x277CDE470]);
    sub_269CC7014();
    sub_269CC3564(&qword_28034E0A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA58);
  }

  return result;
}

id static UIColor.dynamic(light:dark:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11[4] = sub_269CC7B20;
  v11[5] = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_269CC7F6C;
  v11[3] = &block_descriptor_17;
  v6 = _Block_copy(v11);
  v7 = a1;
  v8 = a2;
  v9 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  return v9;
}

id static UIColor.invertedGroupedCellBackground.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_269CC7C58;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_269CC7F6C;
  v4[3] = &block_descriptor_3_0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

CGColorRef __swiftcall UIColor.cgColor(with:)(UITraitCollection with)
{
  v2 = [v1 resolvedColorWithTraitCollection_];
  v3 = [v2 CGColor];

  return v3;
}

id static UIColor.invertedGroupedTableViewBackground.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2 = [v0 systemGroupedBackgroundColor];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = sub_269CC80D0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269CC7F6C;
  v8[3] = &block_descriptor_10;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

id sub_269CC7AC0(void *a1, void *a2, void *a3)
{
  v4 = [a1 userInterfaceStyle];
  if (v4)
  {
    v5 = v4 == 2;
    v6 = a3;
    if (!v5)
    {
      v6 = a2;
    }
  }

  else
  {
    v6 = a3;
  }

  return v6;
}

id static UIColor.dynamic(light:dark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13[4] = sub_269CC7FEC;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_269CC7F6C;
  v13[3] = &block_descriptor_16;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v11;
}

id sub_269CC7C70(void *a1, SEL *a2, SEL *a3, double a4)
{
  v8 = [a1 userInterfaceStyle];
  if (v8)
  {
    v9 = v8 == 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [objc_opt_self() *a3];

    return v10;
  }

  else
  {
    v11 = [objc_opt_self() *a2];
    v12 = [v11 resolvedColorWithTraitCollection_];

    v13 = [v12 colorWithAlphaComponent_];
    return v13;
  }
}

UIColor __swiftcall UIColor.resolved(with:)(UITraitCollection with)
{
  v2 = [v1 resolvedColorWithTraitCollection_];

  return v2;
}

id static UIColor.ringGoalMetColor.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 secondarySystemBackgroundColor];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = sub_269CC80D0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269CC7F6C;
  v8[3] = &block_descriptor_23;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

id static UIColor.ringGoalMissColor.getter()
{
  v0 = [objc_opt_self() systemOrangeColor];

  return v0;
}

id sub_269CC7F6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269CC7FEC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = [a1 userInterfaceStyle];
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v4(a1);
  }

  else
  {
    return v3(a1);
  }
}

id sub_269CC8064(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 userInterfaceStyle];
  if (v4 == 2)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t SleepOnboardingViewRepresentation.init(healthStore:sleepStore:onboardingContext:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  v26 = *(a3 + 8);
  v27 = a3[2];
  v8 = [objc_allocWithZone(MEMORY[0x277D12978]) init];
  *a4 = v8;
  v9 = sub_269D97D80();
  v10 = v8;
  v11 = a1;
  v12 = a2;
  v13 = sub_269D97D70();
  type metadata accessor for HealthStatusFeatureProvider();
  v14 = swift_allocObject();
  v29 = v9;
  v30 = MEMORY[0x277D62630];
  *&v28 = v13;
  v15 = *MEMORY[0x277CCC0F0];
  v16 = objc_allocWithZone(MEMORY[0x277CCD460]);
  swift_retain_n();
  v17 = v11;
  v18 = [v16 initWithFeatureIdentifier:v15 healthStore:v17];
  v19 = sub_269CC8B20();
  v20 = MEMORY[0x277D113B8];
  v14[5] = v19;
  v14[6] = v20;
  v14[2] = v18;

  sub_269C25520(&v28, (v14 + 7));
  v21 = type metadata accessor for SleepOnboardingManager();
  v22 = swift_allocObject();
  v23 = sub_269CC88A4(v12, v17, v14, v13, v22);

  type metadata accessor for SleepOnboardingCoordinator();
  v24 = swift_allocObject();
  *(v24 + 40) = v21;
  *(v24 + 48) = &protocol witness table for SleepOnboardingManager;
  *(v24 + 16) = v23;
  *(v24 + 96) = 0;
  *(v24 + 56) = v7;
  *(v24 + 64) = v26;
  *(v24 + 80) = 0;
  *(v24 + 88) = v10;
  *(v24 + 72) = v27;
  a4[1] = v24;

  sub_269D31A08(0, 0, 0);
}

id SleepOnboardingViewRepresentation.makeCoordinator()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent];
  *v5 = v2;
  *(v5 + 1) = v1;
  v8.receiver = v4;
  v8.super_class = v3;
  v6 = v2;

  return objc_msgSendSuper2(&v8, sel_init);
}

id SleepOnboardingViewRepresentation.Coordinator.__allocating_init(_:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

double sub_269CC83A8@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = v4;
  a2[1] = v5;
  v6 = v4;

  return result;
}

void sub_269CC8408(uint64_t a1, void *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v3;
  *(v4 + 8) = v2;
  v6 = v3;
}

double sub_269CC8484@<D0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = v4;
  a1[1] = v5;
  v6 = v4;

  return result;
}

void sub_269CC84E0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent);
  swift_beginAccess();
  v4 = *v3;
  *v3 = *a1;
}

id SleepOnboardingViewRepresentation.Coordinator.init(_:)(_OWORD *a1)
{
  *&v1[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SleepOnboardingViewRepresentation.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepOnboardingViewRepresentation.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_269CC8700@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = type metadata accessor for SleepOnboardingViewRepresentation.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV13SleepHealthUI33SleepOnboardingViewRepresentation11Coordinator_parent];
  *v7 = v4;
  *(v7 + 1) = v3;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = v4;

  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_269CC87B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269CC8D44(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_269CC8818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269CC8D44(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_269CC887C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269CC8D44(a1, a2, a3);
  sub_269D99510();
  __break(1u);
}

void *sub_269CC88A4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = type metadata accessor for HealthStatusFeatureProvider();
  v32 = &protocol witness table for HealthStatusFeatureProvider;
  *&v30 = a3;
  v28 = sub_269D97D80();
  v29 = MEMORY[0x277D62630];
  a5[2] = [a1 analyticsManager];
  a5[3] = a2;
  v10 = objc_opt_self();
  v11 = a2;
  v12 = [v10 hksp_healthNotificationCenter];
  type metadata accessor for SleepNotificationManager();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  a5[4] = v13;
  a5[8] = a1;
  v14 = type metadata accessor for SleepScheduleProvider();
  v15 = a1;
  v16 = SleepScheduleProvider.__allocating_init(sleepStore:)(v15);
  a5[12] = v14;
  a5[13] = &protocol witness table for SleepScheduleProvider;
  a5[9] = v16;
  v17 = v15;
  v18 = HKSPSleepStore.settings.getter();
  v19 = type metadata accessor for SleepSettingsProvider();
  v20 = objc_allocWithZone(v19);
  v21 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v17, v18);
  a5[17] = v19;
  a5[18] = &protocol witness table for SleepSettingsProvider;
  a5[14] = v21;
  a5[5] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0D0] sleepStore:v17];
  a5[6] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E0] sleepStore:v17];
  a5[7] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E8] sleepStore:v17];
  v22 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0C8] healthStore:v11];
  v23 = sub_269CC8B20();
  v24 = MEMORY[0x277D113B8];
  a5[22] = v23;
  a5[23] = v24;
  a5[19] = v22;
  v25 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0F8] healthStore:v11];
  a5[27] = v23;
  a5[28] = v24;
  a5[24] = v25;
  sub_269C25520(&v30, (a5 + 34));
  sub_269C25520(&v27, (a5 + 29));
  return a5;
}

unint64_t sub_269CC8B20()
{
  result = qword_28034F430;
  if (!qword_28034F430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034F430);
  }

  return result;
}

unint64_t sub_269CC8B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FA70;
  if (!qword_28034FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA70);
  }

  return result;
}

uint64_t sub_269CC8BE8(uint64_t *a1, int a2)
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

uint64_t sub_269CC8C30(uint64_t result, int a2, int a3)
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

unint64_t sub_269CC8D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FA78;
  if (!qword_28034FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FA78);
  }

  return result;
}

id WatchAppInstalledProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269CC8DCC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_269CC8E4C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_269D98890();
}

uint64_t sub_269CC8EBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v1);

  return v1;
}

uint64_t sub_269CC8F30(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_269D98890();
}

void (*sub_269CC8F9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269CC9040(void *a1)
{
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CC90C8(_BYTE *a1, uint64_t *a2)
{
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v16 - v12;
  v14 = *(v5 + 16);
  (v14)(&v16 - v12, a1, v4, v11);
  v14(v8, v13, v4);
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_269CC926C()
{
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CC92F0(uint64_t a1)
{
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v4 + 16))(&v9 - v7, a1, v3, v6);
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_269CC9448(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

char *WatchAppInstalledProvider.init()()
{
  sub_269CC9A78(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D9ACD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v35 = &v34 - v13;
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v38 = 0;
  sub_269D98840();
  (*(v16 + 32))(&v0[v20], v19, v15);
  *&v0[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = 0;
  v21 = type metadata accessor for WatchAppInstalledProvider(0);
  v37.receiver = v0;
  v37.super_class = v21;
  v22 = objc_msgSendSuper2(&v37, sel_init);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 defaultCenter];
  v26 = HKSPActivePairedDeviceApplicationsInstalledDistributedNotification();
  if (!v26)
  {
    sub_269D9A630();
    v26 = sub_269D9A5F0();
  }

  v27 = v35;
  sub_269D9ACE0();

  v28 = [v23 defaultCenter];
  v29 = HKSPActivePairedDeviceApplicationsUninstalledDistributedNotification();
  if (!v29)
  {
    sub_269D9A630();
    v29 = sub_269D9A5F0();
  }

  v30 = v36;
  sub_269D9ACE0();

  sub_269CC9D74(&qword_280C0B4B0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_269D988D0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269CC9D74(&qword_28034FA98, sub_269CC9A78, MEMORY[0x277CBCD48]);
  v31 = sub_269D98900();

  (*(v3 + 8))(v6, v2);
  *&v24[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = v31;

  sub_269CCA164();

  v32 = *(v8 + 8);
  v32(v30, v7);
  v32(v27, v7);
  return v24;
}

void sub_269CC9A78(uint64_t a1)
{
  if (!qword_28034FA88)
  {
    sub_269D9ACD0();
    sub_269CC9D74(&qword_280C0B4B0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v1 = sub_269D98700();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FA88);
    }
  }
}

uint64_t type metadata accessor for WatchAppInstalledProvider(uint64_t a1)
{
  result = qword_28034FAA0;
  if (!qword_28034FAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CC9B58(uint64_t a1, uint64_t a2)
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
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v4 = sub_269D98250();
    __swift_project_value_buffer(v4, qword_280C0B728);
    v5 = v3;
    v6 = sub_269D98230();
    v7 = sub_269D9AB80();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_getObjectType();
      sub_269CCAC74();
      v10 = sub_269D9A660();
      v12 = sub_269C2EACC(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_269C18000, v6, v7, "[%s] Responding to watch application change", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D652460](v9, -1, -1);
      MEMORY[0x26D652460](v8, -1, -1);
    }

    sub_269CCA164();
  }

  else
  {
  }
}

uint64_t sub_269CC9D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id WatchAppInstalledProvider.__allocating_init(isWatchAppInstalled:)(char a1)
{
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = objc_allocWithZone(v1);
  v10 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v14 = 0;
  sub_269D98840();
  (*(v5 + 32))(&v9[v10], v8, v4);
  *&v9[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = 0;
  swift_beginAccess();
  (*(v5 + 8))(&v9[v10], v4);
  v13 = a1;
  sub_269D98840();
  swift_endAccess();
  v12.receiver = v9;
  v12.super_class = v1;
  return objc_msgSendSuper2(&v12, sel_init);
}

id WatchAppInstalledProvider.init(isWatchAppInstalled:)(char a1)
{
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider__isWatchAppInstalled;
  v14 = 0;
  sub_269D98840();
  (*(v5 + 32))(&v1[v9], v8, v4);
  *&v1[OBJC_IVAR____TtC13SleepHealthUI25WatchAppInstalledProvider_watchAppStateObserver] = 0;
  swift_beginAccess();
  (*(v5 + 8))(&v1[v9], v4);
  v13 = a1;
  sub_269D98840();
  swift_endAccess();
  v10 = type metadata accessor for WatchAppInstalledProvider(0);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_269CCA164()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[4] = sub_269CCAB90;
    v4[5] = v2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_269C7A600;
    v4[3] = &block_descriptor_18;
    v3 = _Block_copy(v4);

    [v1 hksp:v3 activePairedDeviceHasSleepAppInstalledWithCompletion:?];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_269CCA26C(char a1, void *a2, uint64_t a3)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v11 = sub_269D98250();
      __swift_project_value_buffer(v11, qword_280C0B728);
      v12 = v10;
      v13 = a2;
      v14 = sub_269D98230();
      v15 = sub_269D9AB60();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v44 = v17;
        *v16 = 136315394;
        ObjectType = swift_getObjectType();
        sub_269CCAC74();
        v18 = sub_269D9A660();
        v20 = sub_269C2EACC(v18, v19, &v44);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        ObjectType = a2;
        v21 = a2;
        sub_269C80B44();
        v22 = sub_269D9A660();
        v24 = sub_269C2EACC(v22, v23, &v44);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_269C18000, v14, v15, "[%s] Error fetching watch sleep app: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v17, -1, -1);
        MEMORY[0x26D652460](v16, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v25 = sub_269D98250();
      __swift_project_value_buffer(v25, qword_280C0B728);
      v26 = v10;
      v27 = sub_269D98230();
      v28 = sub_269D9AB80();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v44 = v30;
        *v29 = 136315394;
        ObjectType = swift_getObjectType();
        sub_269CCAC74();
        v31 = sub_269D9A660();
        v33 = sub_269C2EACC(v31, v32, &v44);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        if (a1)
        {
          v34 = 1702195828;
        }

        else
        {
          v34 = 0x65736C6166;
        }

        if (a1)
        {
          v35 = 0xE400000000000000;
        }

        else
        {
          v35 = 0xE500000000000000;
        }

        v36 = sub_269C2EACC(v34, v35, &v44);

        *(v29 + 14) = v36;
        _os_log_impl(&dword_269C18000, v27, v28, "[%s] Sleep app is installed: %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v30, -1, -1);
        MEMORY[0x26D652460](v29, -1, -1);
      }

      v37 = sub_269D9A900();
      (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
      sub_269D9A8E0();
      v38 = v26;
      v39 = sub_269D9A8D0();
      v40 = swift_allocObject();
      v41 = MEMORY[0x277D85700];
      *(v40 + 16) = v39;
      *(v40 + 24) = v41;
      *(v40 + 32) = v38;
      *(v40 + 40) = a1 & 1;
      sub_269C79F94(0, 0, v8, &unk_269DA50D0, v40);
    }
  }
}

uint64_t sub_269CCA710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  sub_269D9A8E0();
  *(v5 + 24) = sub_269D9A8D0();
  v7 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269CCA7AC, v7, v6);
}

uint64_t sub_269CCA7AC()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;
  v3 = v2;
  sub_269D98890();
  v4 = *(v0 + 8);

  return v4();
}

id WatchAppInstalledProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchAppInstalledProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269CCA930@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WatchAppInstalledProvider(0);
  result = sub_269D98770();
  *a2 = result;
  return result;
}

void sub_269CCA978(uint64_t a1)
{
  sub_269C45D88(319, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269CCABB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C71C08;

  return sub_269CCA710(a1, v4, v5, v6, v7);
}

unint64_t sub_269CCAC74()
{
  result = qword_28034FAB0;
  if (!qword_28034FAB0)
  {
    type metadata accessor for WatchAppInstalledProvider(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034FAB0);
  }

  return result;
}

uint64_t sub_269CCACE8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  sub_269CCB36C(0, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v17[0] = v7;
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v17 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;

  v12 = a1;
  sub_269D99EB0();
  v19 = a2;
  v20 = a3;
  sub_269CCB2CC();
  sub_269D99E90();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  sub_269CCB36C(0, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  sub_269C9D934();
  sub_269CCB3C0();
  v14 = v12;

  v15 = v17[0];
  sub_269D99C00();

  return (*(v18 + 8))(v10, v15);
}

uint64_t sub_269CCAF74(uint64_t a1, char a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CCB4C0(a2 & 1, a3);
}

uint64_t sub_269CCB020@<X0>(uint64_t a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  sub_269D972C0();

  sub_269C3EEE8(v3, v4, v5);
  v6 = sub_269D99960();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_269CCB198@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *MEMORY[0x277D62120];
  sub_269CCB2CC();
  v7 = a1;
  v8 = v6;
  sub_269D99E90();
  LOBYTE(v6) = sub_269D995D0();

  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + 33) = v6;
  return result;
}

void sub_269CCB2CC()
{
  if (!qword_28034E300)
  {
    v0 = sub_269D99EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E300);
    }
  }
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

void sub_269CCB36C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269CCB3C0()
{
  result = qword_28034FAC0;
  if (!qword_28034FAC0)
  {
    sub_269CCB36C(255, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
    sub_269CCB46C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FAC0);
  }

  return result;
}

unint64_t sub_269CCB46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FAC8;
  if (!qword_28034FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FAC8);
  }

  return result;
}

uint64_t sub_269CCB4C0(char a1, uint64_t a2)
{
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_28035E4B8);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_269C2EACC(0xD000000000000012, 0x8000000269DA50F0, v10);
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Opening schedule editor", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  LOBYTE(v10[0]) = a1 & 1;
  v10[1] = a2;
  sub_269CCB2CC();
  return sub_269D99E80();
}

void SleepScheduleClock.set(bedtimeComponents:wakeUpComponents:timeInBedGoal:alarmEnabled:isForSingleDayOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  *&v55[0] = a3;
  v67 = a1;
  v11 = MEMORY[0x277D83D88];
  sub_269CCD978(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v55 - v14;
  sub_269CCD978(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v11);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v68 = v55 - v18;
  v19 = sub_269D971F0();
  v69 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v66 = v55 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = v55 - v28;
  v30 = *(v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152);
  v31 = *(v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160);
  v65 = v6;
  v32 = (v6 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v33 = *v32;
  v34 = *(v32 + 1);
  v63 = a5;
  v64 = a6;
  v62 = a4;
  v60 = v22;
  v61 = a2;
  if (v34 == 60 && __OFADD__(*&v33, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v35 = sub_269D977A0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v57 = v36 + 56;
  v58 = v37;
  v37(v68, 1, 1, v35);
  v38 = sub_269D97810();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  *&v55[2] = v39 + 56;
  v56 = v40;
  v40(v15, 1, 1, v38);
  v59 = v15;
  sub_269D971D0();
  v41 = sub_269C6C098();
  v42 = v67;
  v43 = sub_269D9A560();
  v44 = *(v69 + 8);
  v44(v29, v19);
  if ((v43 & 1) == 0)
  {
    v45 = v66;
    (*(v69 + 16))(v66, v42, v19);
    sub_269D1F790(v45);
  }

  v46 = *(v32 + 2);
  v47 = *(v32 + 3);
  *&v55[1] = v41;
  if (v47 == 60 && __OFADD__(v46, 1))
  {
    goto LABEL_21;
  }

  v58(v68, 1, 1, v35);
  v56(v59, 1, 1, v38);
  v48 = v60;
  sub_269D971D0();
  v49 = v61;
  v50 = sub_269D9A560();
  v44(v48, v19);
  if ((v50 & 1) == 0)
  {
    v51 = v66;
    (*(v69 + 16))(v66, v49, v19);
    sub_269D1F92C(v51);
  }

  v53 = v63;
  v52 = v64;
  v54 = v62;
  if (v32[5])
  {
    if (v62)
    {
      goto LABEL_15;
    }
  }

  else if ((v62 & 1) == 0 && v32[4] == v55[0])
  {
    goto LABEL_15;
  }

  v32[4] = v55[0];
  *(v32 + 40) = v54 & 1;
LABEL_15:
  if (*(v32 + 41) != (v53 & 1))
  {
    *(v32 + 41) = v53 & 1;
  }

  if (*(v32 + 42) != (v52 & 1))
  {
    *(v32 + 42) = v52 & 1;
  }

  sub_269D1FAC8(v30, v31);
  swift_endAccess();
  sub_269CCBCFC();
}

uint64_t SleepScheduleClock.timeInBedGoalMet.getter()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  swift_beginAccess();
  v5 = *(v1 + 27);
  if (BYTE13(v5))
  {
    return 2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144);
  if (HIBYTE(v5))
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  return *(&v5 + 5) <= v3 * round(v4 / v3);
}

void sub_269CCBCFC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring);
  v3 = sub_269CCE9B0();
  [v2 setPath_];

  v4 = sub_269CCE9B0();
  [v2 setShadowPath_];

  v5 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand);
  [v5 setCenter_];
  v6 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand);
  [v6 setCenter_];
  v7 = (v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v8 = *&v6[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_symbol];
  *&v6[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_symbol] = *(v7 + 41) | 0x1000;
  LOWORD(v64[0]) = v8;
  v56 = v6;
  sub_269D2F44C(v64);
  *&v67[11] = *(v7 + 27);
  v9 = v7[1];
  v66 = *v7;
  *v67 = v9;
  v10 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v57 = v7;
  if (v67[24])
  {
    goto LABEL_7;
  }

  v11 = *(v10 + 144);
  v12 = *&v67[16];
  if (v67[26])
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  if (v12 <= v11 * round(v13 / v11))
  {
LABEL_7:
    sub_269D307FC(v58);
  }

  else
  {
    sub_269D30C08(v58);
  }

  v15 = v58[3];
  v49 = v59;
  v14 = v59;
  v17 = v58[1];
  v16 = v58[2];
  v18 = v58[0];
  v19 = *(v10 + 112);
  v20 = &v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v53 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v54 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v50 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  v51 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  *v20 = v58[0];
  *(v20 + 1) = v17;
  *(v20 + 2) = v16;
  *(v20 + 3) = v15;
  v64[0] = v54;
  v64[1] = v53;
  v64[2] = v51;
  v64[3] = v50;
  v52 = *(v20 + 2);
  *(v20 + 4) = v14;
  *(v20 + 5) = v19;
  v65 = v52;
  v21 = v14;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v21;
  v27 = v25;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v29;
  v32 = v28;
  v33 = v27;
  sub_269D2F550(v64);

  v34 = &v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v36 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v35 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v38 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  v37 = *&v56[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  *v34 = v30;
  *(v34 + 1) = v31;
  *(v34 + 2) = v32;
  *(v34 + 3) = v33;
  v62[0] = v36;
  v62[1] = v35;
  v62[2] = v38;
  v62[3] = v37;
  v55 = *(v34 + 2);
  *(v34 + 4) = v49;
  *(v34 + 5) = v19;
  v63 = v55;
  v39 = v26;
  v40 = v33;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  sub_269D2F550(v62);

  sub_269CCE6F0();
  v44 = objc_opt_self();
  [v44 begin];
  [v44 setDisableActions_];
  v45 = (*(v57 + 1) / 60.0 + *v57) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

    ;
  }

    ;
  }

  v47 = v57[1];
  v60 = *v57;
  v61[0] = v47;
  *(v61 + 11) = *(v57 + 27);
  sub_269C67AF0();
  sub_269CD22C8(i, v48);
  [v44 commit];
}

void sub_269CCC1A4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer];
  v3 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration];
  [v2 setMinimumPressDuration_];
  [v2 addTarget:v1 action:sel_gestureReconizerDidChange_];
  [v2 setDelegate_];
  [v2 setCancelsTouchesInView_];
  [v1 addGestureRecognizer_];
  v4 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track];
  [v4 setFillColor_];
  [v4 setLineWidth_];
  v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring];
  [v5 setShadowOffset_];
  [v5 setShadowRadius_];
  LODWORD(v6) = *(v3 + 16);
  [v5 setShadowOpacity_];
  v7 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
  *&v7[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration] = vextq_s8(*(v3 + 120), *(v3 + 120), 8uLL);
  [v7 setNeedsLayout];
  v8 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand];
  [v8 frame];
  [v8 setFrame_];
  v9 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand];
  [v9 frame];
  [v9 setFrame_];
  v10 = *(v3 + 14);
  v12 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v13 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  v14 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  v34[0] = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v11 = v34[0];
  v34[1] = v12;
  v34[2] = v13;
  v34[3] = v14;
  v15 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 32];
  *&v8[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 40] = v10;
  v35 = v15;
  v16 = v15;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_269D2F550(v34);

  v21 = *(v3 + 14);
  v23 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v24 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  v25 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  v32[0] = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v22 = v32[0];
  v32[1] = v23;
  v32[2] = v24;
  v32[3] = v25;
  v26 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 32];
  *&v9[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 40] = v21;
  v33 = v26;
  v27 = v26;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  sub_269D2F550(v32);

  sub_269CCE6F0();
}

char *sub_269CCC4EC(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  v7 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v9 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand;
  sub_269D307FC(v47);
  v44[0] = 0;
  v10 = type metadata accessor for SleepScheduleClockHand();
  v11 = objc_allocWithZone(v10);
  *&v3[v9] = sub_269D2F848(v44, v47);
  v12 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand;
  sub_269D307FC(v48);
  v44[0] = 4097;
  v13 = objc_allocWithZone(v10);
  *&v3[v12] = sub_269D2F848(v44, v48);
  v14 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v17 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  *(v17 + 27) = *(a1 + 27);
  v18 = a1[1];
  *v17 = *a1;
  *(v17 + 1) = v18;
  memcpy(&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration], a2, 0x188uLL);
  v19 = *(a2 + 344);
  v49[8] = *(a2 + 328);
  v49[9] = v19;
  v20 = *(a2 + 376);
  v49[10] = *(a2 + 360);
  v49[11] = v20;
  v21 = *(a2 + 280);
  v49[4] = *(a2 + 264);
  v49[5] = v21;
  v22 = *(a2 + 312);
  v49[6] = *(a2 + 296);
  v49[7] = v22;
  v23 = *(a2 + 216);
  v49[0] = *(a2 + 200);
  v49[1] = v23;
  v24 = *(a2 + 248);
  v49[2] = *(a2 + 232);
  v49[3] = v24;
  v25 = objc_allocWithZone(type metadata accessor for SleepScheduleClockDial());
  sub_269C6AAB4(a2, v44);
  sub_269C6AB64(v49, v44);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dial] = sub_269CE8E8C(v49);
  v27 = *(a2 + 120);
  v26 = *(a2 + 128);
  v28 = objc_allocWithZone(type metadata accessor for RingGrabber());
  *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber] = sub_269CD1CF0(v26, v27);
  v43.receiver = v3;
  v43.super_class = type metadata accessor for SleepScheduleClock();
  v29 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v30 = sub_269D34838();
  v31 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration:v30 view:v29];

  v32 = sub_269C1B0B8(0, &qword_28034FC10, 0x277D75A10);
  v45 = v32;
  v46 = &off_287AA50F8;
  *v44 = v31;
  v33 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3534(v44, v29 + v33);
  swift_endAccess();
  v34 = sub_269D3485C();
  v35 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration:v34 view:v29];

  v45 = v32;
  v46 = &off_287AA50F8;
  *v44 = v35;
  v36 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3534(v44, v29 + v36);
  swift_endAccess();
  sub_269CCD978(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_269D9EBF0;
  v38 = sub_269D983D0();
  v39 = MEMORY[0x277D74DB8];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = sub_269D98290();
  v41 = MEMORY[0x277D74BF0];
  *(v37 + 48) = v40;
  *(v37 + 56) = v41;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_269C30054();
  sub_269D9AD50();
  swift_unknownObjectRelease();

  sub_269CCCA08();
  sub_269CCC1A4();
  sub_269C6AB10(a2);

  return v29;
}

void sub_269CCC93C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v4 = Strong;
    sub_269CCC1A4();
  }

  else
  {
  }
}

void sub_269CCCA08()
{
  v1 = [v0 layer];
  [v1 addSublayer_];

  [v0 addSubview_];
  v2 = [v0 layer];
  [v2 addSublayer_];

  v4 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v4 addSublayer_];
  v3 = [v0 layer];
  [v3 addSublayer_];

  [v0 addSubview_];
  [v0 addSubview_];
}

id sub_269CCCC08()
{
  v1 = v0;
  swift_getObjectType();
  v18.receiver = v0;
  v18.super_class = type metadata accessor for SleepScheduleClock();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout subviews", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dial];
  v11 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88];
  [v1 bounds];
  v19.origin.x = sub_269CD18D0(v12, v13, v14, v15);
  v20 = CGRectInset(v19, v11, v11);
  return [v10 setFrame_];
}

void sub_269CCCE90(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v33.receiver = v2;
  v33.super_class = type metadata accessor for SleepScheduleClock();
  objc_msgSendSuper2(&v33, sel_layoutSublayersOfLayer_, a1);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B728);
  v5 = sub_269D98230();
  v6 = sub_269D9AB50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v32[0] = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, v32);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Layout sublayers", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track];
  [v2 bounds];
  [v12 setFrame_];
  [v2 bounds];
  sub_269D9AD20();
  v13 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration];
  v16 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v14 startAngle:v15 endAngle:*&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (*&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5) clockwise:{0.0, 6.28318531}];
  v17 = [v16 CGPath];

  [v12 setPath_];
  v18 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring];
  [v2 bounds];
  [v18 setFrame_];
  v19 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
  [v19 transform];
  v20 = *(MEMORY[0x277CD9DE8] + 80);
  v28 = *(MEMORY[0x277CD9DE8] + 64);
  v29 = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 112);
  v30 = *(MEMORY[0x277CD9DE8] + 96);
  v31 = v21;
  v22 = *(MEMORY[0x277CD9DE8] + 16);
  v24 = *MEMORY[0x277CD9DE8];
  v25 = v22;
  v23 = *(MEMORY[0x277CD9DE8] + 48);
  v26 = *(MEMORY[0x277CD9DE8] + 32);
  v27 = v23;
  [v19 setTransform_];
  [v19 setFrame_];
  v28 = v32[4];
  v29 = v32[5];
  v30 = v32[6];
  v31 = v32[7];
  v24 = v32[0];
  v25 = v32[1];
  v26 = v32[2];
  v27 = v32[3];
  [v19 setTransform_];
  [v2 bounds];
  sub_269D9AD20();
  [v19 setPosition_];
  sub_269CCBCFC();
}

id sub_269CCD244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

uint64_t sub_269CCD470()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  result = swift_beginAccess();
  v3 = v1[2];
  if (__OFSUB__(v3, *v1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v1[3];
  v5 = v1[1];
  v6 = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    if (v6 <= 0xFFFFFFFFFFFFFFC4)
    {
      v6 = -60;
    }

    v7 = v5 + v6;
    v8 = v7 == v4 ? v1[3] : v4 + 1;
    v9 = (v7 - v8) / 0x3CuLL;
    if (v7 != v4)
    {
      ++v9;
    }

    if ((v3 ^ 0x8000000000000000) - *v1 <= v9)
    {
      goto LABEL_15;
    }
  }

  return result;
}

id SleepScheduleClock.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_269CCD978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void SleepScheduleClock.accessibilitySetModel(_:wakeUpComponents:timeInBedGoal:alarmEnabled:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  v7 = sub_269D97110();
  v8 = sub_269D97110();
  [v4 accessibilitySetModel:v7 wakeUpComponents:v8 timeInBedGoal:a4 & 1 alarmEnabled:0 isForSingleDayOverride:a2];
}

void SleepScheduleClock.accessibilitySetModel(_:wakeUpComponents:timeInBedGoal:alarmEnabled:isForSingleDayOverride:)(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v63 = a4;
  v66 = a1;
  v9 = MEMORY[0x277D83D88];
  sub_269CCD978(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v54 - v12;
  sub_269CCD978(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v9);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v54 - v16;
  v18 = sub_269D971F0();
  v67 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v65 = v54 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v28 = v54 - v27;
  v29 = *&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152];
  v30 = *&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160];
  v64 = v5;
  v31 = &v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v32 = *v31;
  v33 = *(v31 + 1);
  v62 = a3;
  v60 = v21;
  v61 = a2;
  if (v33 == 60 && __OFADD__(*&v32, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v34 = sub_269D977A0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v56 = v35 + 56;
  v57 = v36;
  v36(v17, 1, 1, v34);
  v37 = sub_269D97810();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v54[1] = v38 + 56;
  v55 = v39;
  v39(v13, 1, 1, v37);
  v58 = v17;
  v59 = v13;
  sub_269D971D0();
  sub_269C6C098();
  v40 = v66;
  v41 = sub_269D9A560();
  v42 = *(v67 + 8);
  v42(v28, v18);
  if ((v41 & 1) == 0)
  {
    v43 = v65;
    (*(v67 + 16))(v65, v40, v18);
    sub_269D1F790(v43);
  }

  v44 = *(v31 + 2);
  v45 = *(v31 + 3);
  v54[0] = v42;
  if (v45 == 60 && __OFADD__(v44, 1))
  {
    goto LABEL_18;
  }

  v57(v58, 1, 1, v34);
  v55(v59, 1, 1, v37);
  v46 = v60;
  sub_269D971D0();
  v47 = v61;
  v48 = sub_269D9A560();
  (v54[0])(v46, v18);
  if ((v48 & 1) == 0)
  {
    v49 = v65;
    (*(v67 + 16))(v65, v47, v18);
    sub_269D1F92C(v49);
  }

  v50 = v64;
  v51 = v62;
  if ((v31[5] & 1) != 0 || v31[4] != a5)
  {
    v31[4] = a5;
    *(v31 + 40) = 0;
  }

  v52 = v51 & 1;
  v53 = v63;
  if (*(v31 + 41) != v52)
  {
    *(v31 + 41) = v52;
  }

  if (*(v31 + 42) != (v53 & 1))
  {
    *(v31 + 42) = v53 & 1;
  }

  sub_269D1FAC8(v29, v30);
  swift_endAccess();
  sub_269CCBCFC();
  [v50 sendActionsForControlEvents_];
  sub_269CCBCFC();
}

id sub_269CCE53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  v12 = swift_beginAccess();
  v13 = v11[1];
  v16 = *v11;
  v17[0] = v13;
  *(v17 + 11) = *(v11 + 27);
  a4(v12, *(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  v14 = sub_269D97110();
  (*(v7 + 8))(v10, v6);

  return v14;
}

void sub_269CCE6F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track];
  v3 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration];
  v4 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 16];
  v5 = [v1 traitCollection];
  v6 = [v4 resolvedColorWithTraitCollection_];
  v7 = [v6 CGColor];

  [v2 setStrokeColor_];
  v8 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v24 = *(v8 + 27);
  if (BYTE13(v24))
  {
    goto LABEL_7;
  }

  v9 = *(v3 + 18);
  if (HIBYTE(v24))
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  if (*(&v24 + 5) <= v9 * round(v10 / v9))
  {
LABEL_7:
    v12 = 24;
    v11 = v3;
  }

  else
  {
    v11 = (v3 + 8);
    v12 = 32;
  }

  v13 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring];
  v14 = *v11;
  v15 = [v1 traitCollection];
  v16 = [v14 resolvedColorWithTraitCollection_];
  v17 = [v16 CGColor];

  [v13 setFillColor_];
  v18 = [*(v3 + 5) CGColor];
  [v13 setShadowColor_];

  v19 = *&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
  v20 = *&v3[v12];
  v21 = [v1 traitCollection];
  v22 = [v20 resolvedColorWithTraitCollection_];
  v23 = [v22 CGColor];

  [*(v19 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture) setStrokeColor_];
}

id sub_269CCE9B0()
{
  [v0 bounds];
  sub_269D9AD20();
  v16 = v1;
  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72];
  v5 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80];
  v6 = &v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v7 = (v6[1] / 60.0 + *v6) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

  v8 = *&qword_28035E4B0;
    ;
  }

    ;
  }

    ;
  }

    ;
  }

  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v16 startAngle:v3 endAngle:v4 * 0.5 - v5 clockwise:{i, j}];
  [v11 addArcWithCenter:1 radius:sub_269CCEE50() startAngle:? endAngle:? clockwise:?];
  [v0 bounds];
  sub_269D9AD20();
    ;
  }

    ;
  }

    ;
  }

    ;
  }

  [v11 addArcWithCenter:0 radius:*&v16 startAngle:? endAngle:? clockwise:?];
  [v11 addArcWithCenter:1 radius:sub_269CCECFC() startAngle:? endAngle:? clockwise:?];
  [v11 closePath];
  v14 = [v11 CGPath];

  return v14;
}

CGFloat sub_269CCECFC()
{
  v1 = &v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v2 = (v1[1] / 60.0 + *v1) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

    ;
  }

    ;
  }

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (*&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5);
  v5 = __sincos_stret(i).__cosval * v4;
  [v0 bounds];
  v6 = CGRectGetMidX(v8) + v5;
  [v0 bounds];
  CGRectGetMidY(v9);
  return v6;
}

CGFloat sub_269CCEE50()
{
  v1 = &v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v2 = (v1[3] / 60.0 + v1[2]) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    swift_once();
  }

    ;
  }

    ;
  }

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (*&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80] + *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5);
  v5 = __sincos_stret(i).__cosval * v4;
  [v0 bounds];
  v6 = CGRectGetMidX(v8) + v5;
  [v0 bounds];
  CGRectGetMidY(v9);
  return v6;
}

void sub_269CCEFA4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 state];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        if (qword_280C0B720 != -1)
        {
          swift_once();
        }

        v18 = sub_269D98250();
        __swift_project_value_buffer(v18, qword_280C0B728);
        v19 = sub_269D98230();
        v20 = sub_269D9AB50();
        if (!os_log_type_enabled(v19, v20))
        {
          goto LABEL_39;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136446210;
        v23 = sub_269D9B4D0();
        v25 = sub_269C2EACC(v23, v24, &v44);

        *(v21 + 4) = v25;
        v26 = "[%{public}s] Gesture ended";
        break;
      case 4:
        if (qword_280C0B720 != -1)
        {
          swift_once();
        }

        v39 = sub_269D98250();
        __swift_project_value_buffer(v39, qword_280C0B728);
        v19 = sub_269D98230();
        v20 = sub_269D9AB50();
        if (!os_log_type_enabled(v19, v20))
        {
LABEL_39:

          v5 = sel_gestureRecognizerDidEnd_;
          goto LABEL_40;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136446210;
        v40 = sub_269D9B4D0();
        v42 = sub_269C2EACC(v40, v41, &v44);

        *(v21 + 4) = v42;
        v26 = "[%{public}s] Gesture cancelled";
        break;
      case 5:
        if (qword_280C0B720 != -1)
        {
          swift_once();
        }

        v6 = sub_269D98250();
        __swift_project_value_buffer(v6, qword_280C0B728);
        oslog = sub_269D98230();
        v7 = sub_269D9AB50();
        if (!os_log_type_enabled(oslog, v7))
        {
          goto LABEL_26;
        }

        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v44 = v9;
        *v8 = 136446210;
        v10 = sub_269D9B4D0();
        v12 = sub_269C2EACC(v10, v11, &v44);

        *(v8 + 4) = v12;
        v13 = "[%{public}s] Gesture failed";
LABEL_25:
        _os_log_impl(&dword_269C18000, oslog, v7, v13, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x26D652460](v9, -1, -1);
        MEMORY[0x26D652460](v8, -1, -1);

        return;
      default:
        goto LABEL_21;
    }

    _os_log_impl(&dword_269C18000, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D652460](v22, -1, -1);
    MEMORY[0x26D652460](v21, -1, -1);
    goto LABEL_39;
  }

  switch(v4)
  {
    case 0:
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v14 = sub_269D98250();
      __swift_project_value_buffer(v14, qword_280C0B728);
      oslog = sub_269D98230();
      v7 = sub_269D9AB50();
      if (!os_log_type_enabled(oslog, v7))
      {
        goto LABEL_26;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44 = v9;
      *v8 = 136446210;
      v15 = sub_269D9B4D0();
      v17 = sub_269C2EACC(v15, v16, &v44);

      *(v8 + 4) = v17;
      v13 = "[%{public}s] Gesture is possible";
      goto LABEL_25;
    case 1:
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v31 = sub_269D98250();
      __swift_project_value_buffer(v31, qword_280C0B728);
      v32 = sub_269D98230();
      v33 = sub_269D9AB50();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 136446210;
        v36 = sub_269D9B4D0();
        v38 = sub_269C2EACC(v36, v37, &v44);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_269C18000, v32, v33, "[%{public}s] Gesture began", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x26D652460](v35, -1, -1);
        MEMORY[0x26D652460](v34, -1, -1);
      }

      v5 = sel_gestureRecognizerDidStart_;
      goto LABEL_40;
    case 2:
      v5 = sel_gestureRecognizerDidMove_;
LABEL_40:

      [v2 v5];
      return;
  }

LABEL_21:
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v27 = sub_269D98250();
  __swift_project_value_buffer(v27, qword_280C0B728);
  oslog = sub_269D98230();
  v7 = sub_269D9AB60();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136446210;
    v28 = sub_269D9B4D0();
    v30 = sub_269C2EACC(v28, v29, &v44);

    *(v8 + 4) = v30;
    v13 = "[%{public}s] Unknown gesture state";
    goto LABEL_25;
  }

LABEL_26:
}

Swift::Bool __swiftcall SleepScheduleClock.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  v3 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer);
  sub_269C1B0B8(0, &qword_28034FB10, 0x277D75548);
  v4 = v3;
  v5 = sub_269D9ADD0();

  return (v5 & 1) == 0;
}

Swift::Bool __swiftcall SleepScheduleClock.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer _, UITouch shouldReceive)
{
  [(objc_class *)shouldReceive.super.isa locationInView:v2];
  v4 = v3;
  v6 = v5;
  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand) frame];
  v9.x = v4;
  v9.y = v6;
  if (CGRectContainsPoint(v11, v9))
  {
    return 1;
  }

  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand) frame];
  v10.x = v4;
  v10.y = v6;
  if (CGRectContainsPoint(v12, v10))
  {
    return 1;
  }

  return sub_269CCF8A8(v4, v6);
}

BOOL sub_269CCF8A8(double a1, double i)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 88] * 0.5;
  v7 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5 - (v6 + *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 80]);
  v8 = v7 - v6;
  v9 = v6 + v7;
  if (v7 - v6 > v6 + v7)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  [v2 bounds];
  v10 = a1 - CGRectGetMidX(v37);
  [v2 bounds];
  MidY = CGRectGetMidY(v38);
  v12 = sqrt(v10 * v10 + (i - MidY) * (i - MidY));
  if (v8 > v12 || v12 > v9)
  {
    return 0;
  }

  [v2 bounds];
  v15 = a1 - CGRectGetMidX(v39);
  [v2 bounds];
  v16 = CGRectGetMidY(v40);
  v17 = atan2(i - v16, v15);
    ;
  }

    ;
  }

  if (qword_280C0B720 != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v18 = sub_269D98250();
  __swift_project_value_buffer(v18, qword_280C0B728);
  v19 = sub_269D98230();
  v20 = sub_269D9AB50();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v35 = v22;
    *v21 = 136446466;
    v23 = sub_269D9B4D0();
    v25 = sub_269C2EACC(v23, v24, &v35);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_269CD33F0(0, &qword_28034E6B0, &qword_28034FC00, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_269D9EBE0;
    *(v26 + 56) = MEMORY[0x277D85048];
    *(v26 + 64) = sub_269CD34E0(v26, v27, v28);
    *(v26 + 32) = i / 3.14159265;
    v29 = sub_269D9A640();
    v31 = sub_269C2EACC(v29, v30, &v35);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Checking angle: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v22, -1, -1);
    MEMORY[0x26D652460](v21, -1, -1);
  }

  v32 = &v3[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v33 = *(v32 + 1);
  v35 = *v32;
  v36[0] = v33;
  *(v36 + 11) = *(v32 + 27);
  return sub_269D1F2A4(i);
}

uint64_t sub_269CCFD5C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_269D9B250();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v64[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 locationInView_];
  v11 = v10;
  v13 = v12;
  [v2 bounds];
  v14 = v11 - CGRectGetMidX(v71);
  [v2 bounds];
  MidY = CGRectGetMidY(v72);
    ;
  }

    ;
  }

  v17 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand];
  [v17 frame];
  v69.x = v11;
  v69.y = v13;
  if (CGRectContainsPoint(v73, v69))
  {
    v18 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    swift_beginAccess();
    v19 = (v18[1] / 60.0 + *v18) / 24.0 * 6.28318531;
    if (qword_28034D638 != -1)
    {
      swift_once();
    }

    v20 = *&qword_28035E4B0;
      ;
    }

      ;
    }

    [v17 setHighlighted_];
    v22 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
      ;
    }

      ;
    }

    (*(v5 + 104))(v9, *MEMORY[0x277D84680], v4);
    v24 = sub_269CD1C9C();
    v25 = sub_269CD1A84(v9, v24, k);
    (*(v5 + 8))(v9, v4);
    v26 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset;
    *(v22 + v26) = fmod(v25 - k + *(v22 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset), *(v22 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle));
    v27 = 1;
    *(v22 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted) = 1;
  }

  else
  {
    v28 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand];
    [v28 frame];
    v70.x = v11;
    v70.y = v13;
    v29 = CGRectContainsPoint(v74, v70);
    v30 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    if (v29)
    {
      swift_beginAccess();
      v31 = (v30[3] / 60.0 + v30[2]) / 24.0 * 6.28318531;
      if (qword_28034D638 != -1)
      {
        swift_once();
      }

        ;
      }

        ;
      }

      [v28 setHighlighted_];
      v27 = 2;
    }

    else
    {
      swift_beginAccess();
      v32 = (v30[1] / 60.0 + *v30) / 24.0 * 6.28318531;
      if (qword_28034D638 != -1)
      {
        swift_once();
      }

        ;
      }

        ;
      }

      v27 = 0;
    }
  }

  v33 = CACurrentMediaTime();
  v34 = [objc_opt_self() functionWithName_];
  v35 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  swift_beginAccess();
  v36 = *(v35 + 5);
  *v35 = v27;
  *(v35 + 1) = i;
  *(v35 + 2) = v33;
  *(v35 + 3) = j;
  *(v35 + 4) = 0;
  *(v35 + 5) = v34;

  v37 = &v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v38 = *(v37 + 1);
  v67 = *v37;
  v68[0] = v38;
  *(v68 + 11) = *(v37 + 27);
  v39 = sub_269D1EFD8(i);
  v41 = v40;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v42 = sub_269D98250();
  __swift_project_value_buffer(v42, qword_280C0B728);
  v43 = sub_269D98230();
  v44 = sub_269D9AB50();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v67 = v46;
    *v45 = 136446978;
    v47 = sub_269D9B4D0();
    v49 = sub_269C2EACC(v47, v48, &v67);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    sub_269CD33F0(0, &qword_28034E6B0, &qword_28034FC00, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_269D9EBE0;
    *(v50 + 56) = MEMORY[0x277D85048];
    *(v50 + 64) = sub_269CD34E0(v50, v51, v52);
    *(v50 + 32) = i / 3.14159265;
    v53 = sub_269D9A640();
    v55 = sub_269C2EACC(v53, v54, &v67);

    *(v45 + 14) = v55;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v39;
    *(v45 + 32) = 2048;
    *(v45 + 34) = v41;
    _os_log_impl(&dword_269C18000, v43, v44, "[%{public}s] Did start dragging at %s, or %ld:%ld", v45, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v46, -1, -1);
    MEMORY[0x26D652460](v45, -1, -1);
  }

  [v2 sendActionsForControlEvents_];
  v56 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3360(&v2[v56], &v67);
  if (*(&v68[0] + 1))
  {
    sub_269C2DB5C(&v67, v64);
    sub_269CD3458(&v67);
    v57 = v65;
    v58 = v66;
    __swift_project_boxed_opaque_existential_1Tm(v64, v65);
    (*(v58 + 8))(v57, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  else
  {
    sub_269CD3458(&v67);
  }

  v59 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
  swift_beginAccess();
  sub_269CD3360(&v2[v59], &v67);
  if (!*(&v68[0] + 1))
  {
    return sub_269CD3458(&v67);
  }

  sub_269C2DB5C(&v67, v64);
  sub_269CD3458(&v67);
  v60 = v65;
  v61 = v66;
  __swift_project_boxed_opaque_existential_1Tm(v64, v65);
  (*(v61 + 8))(v60, v61);
  return __swift_destroy_boxed_opaque_existential_1Tm(v64);
}

void sub_269CD064C(void *a1)
{
  v2 = v1;
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;
  v7 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
  swift_beginAccess();
  v8 = *(v7 + 1);
  v45 = *v7;
  v46[0] = v8;
  *(v46 + 11) = *(v7 + 27);
  v9 = sub_269CCC48C(&v43);
  if (*(v10 + 40))
  {
    [v1 bounds];
    v11 = v4 - CGRectGetMidX(v47);
    [v1 bounds];
    MidY = CGRectGetMidY(v48);
      ;
    }

      ;
    }

    [v1 bounds];
    v14 = v4 - CGRectGetMidX(v49);
    [v1 bounds];
    v15 = CGRectGetMidY(v50);
    v16 = sub_269CBA204(i, sqrt(v14 * v14 + (v6 - v15) * (v6 - v15)) / (*&v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 72] * 0.5));
    (v9)(&v43, 0, v16);
  }

  else
  {
    (v9)(&v43, 0);
  }

  v17 = &v1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  swift_beginAccess();
  v18 = *(v17 + 5);
  if (v18)
  {
    v19 = *(v17 + 3);
    if (*v17)
    {
      if (*v17 == 1)
      {
        v20 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152];
        v21 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160];
        swift_beginAccess();
        v22 = v18;
        sub_269D1F15C(v19, v20, v21);
        swift_endAccess();
        sub_269CCBCFC();
        [v2 sendActionsForControlEvents_];
        v43 = v45;
        v44[0] = v46[0];
        *(v44 + 11) = *(v46 + 11);
        if ((sub_269CD0C40(&v43, sub_269D1E794) & 1) == 0)
        {
          v43 = v45;
          v44[0] = v46[0];
          *(v44 + 11) = *(v46 + 11);
          if ((sub_269CD0FF8(&v43) & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_22:
          v35 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
LABEL_23:
          swift_beginAccess();
          sub_269CD3360(&v2[v35], &v43);
          if (*(&v44[0] + 1))
          {
            sub_269C2DB5C(&v43, &v41);
            sub_269CD3458(&v43);
            v36 = *&v42[8];
            v37 = *&v42[16];
            __swift_project_boxed_opaque_existential_1Tm(&v41, *&v42[8]);
            (*(v37 + 16))(v36, v37);

            __swift_destroy_boxed_opaque_existential_1Tm(&v41);
          }

          else
          {

            sub_269CD3458(&v43);
          }

          return;
        }
      }

      else
      {
        v31 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152];
        v32 = *&v2[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160];
        swift_beginAccess();
        v33 = *(v7 + 1);
        v43 = *v7;
        v44[0] = v33;
        *(v44 + 11) = *(v7 + 27);
        v22 = v18;
        *(v7 + 2) = sub_269D1EFD8(v19);
        *(v7 + 3) = v34;
        sub_269D1FAC8(v31, v32);
        swift_endAccess();
        sub_269CCBCFC();
        [v2 sendActionsForControlEvents_];
        v43 = v45;
        v44[0] = v46[0];
        *(v44 + 11) = *(v46 + 11);
        if ((sub_269CD0C40(&v43, sub_269D1EA14) & 1) == 0)
        {
          v43 = v45;
          v44[0] = v46[0];
          *(v44 + 11) = *(v46 + 11);
          if ((sub_269CD11D4(&v43) & 1) == 0)
          {
LABEL_30:

            return;
          }

          goto LABEL_22;
        }
      }

      v35 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
      goto LABEL_23;
    }

    swift_beginAccess();
    v23 = *(v7 + 1);
    v43 = *v7;
    v44[0] = v23;
    *(v44 + 11) = *(v7 + 27);
    v24 = sub_269D1F4CC();
    v26 = v25;
    v22 = v18;
    *v7 = sub_269D1EFD8(v19);
    *(v7 + 1) = v27;
    sub_269D1FC18(v24, v26);
    swift_endAccess();
    sub_269CCBCFC();
    [v2 sendActionsForControlEvents_];
    v41 = v45;
    *v42 = v46[0];
    *&v42[11] = *(v46 + 11);
    if (sub_269CD0C40(&v41, sub_269D1E794) & 1) != 0 || (v41 = v45, *v42 = v46[0], *&v42[11] = *(v46 + 11), (sub_269CD0C40(&v41, sub_269D1EA14)))
    {
      v28 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
    }

    else
    {
      v41 = v45;
      *v42 = v46[0];
      *&v42[11] = *(v46 + 11);
      if ((sub_269CD0FF8(&v41) & 1) == 0)
      {
        v41 = v45;
        *v42 = v46[0];
        *&v42[11] = *(v46 + 11);
        if ((sub_269CD11D4(&v41) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v28 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
    }

    swift_beginAccess();
    sub_269CD3360(&v2[v28], &v41);
    if (*&v42[8])
    {
      sub_269C2DB5C(&v41, v38);
      sub_269CD3458(&v41);
      v29 = v39;
      v30 = v40;
      __swift_project_boxed_opaque_existential_1Tm(v38, v39);
      (*(v30 + 16))(v29, v30);

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    else
    {

      sub_269CD3458(&v41);
    }
  }
}

uint64_t sub_269CD0C40(_OWORD *a1, void (*a2)(double))
{
  v4 = v2;
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - v13;
  v15 = a1[1];
  *v46 = *a1;
  *&v46[16] = v15;
  *&v46[27] = *(a1 + 27);
  v16 = (v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration);
  a2(*(v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  v17 = (v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  v18 = swift_beginAccess();
  v19 = v17[1];
  *v46 = *v17;
  *&v46[16] = v19;
  *&v46[27] = *(v17 + 27);
  (a2)(v18, v16[18]);
  v20 = sub_269D97150();
  if (v21)
  {
    goto LABEL_5;
  }

  v22 = v20;
  v23 = sub_269D971A0();
  if (v24)
  {
    goto LABEL_5;
  }

  v25 = v23;
  v44 = sub_269D97150();
  if (v26)
  {
    goto LABEL_5;
  }

  v27 = sub_269D971A0();
  if (v28)
  {
    goto LABEL_5;
  }

  v31 = v27;
  memcpy(v46, v16, sizeof(v46));
  v32 = v4 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState;
  swift_beginAccess();
  v33 = *(v32 + 32);
  v34 = *(v32 + 40);
  result = sub_269C6AAB4(v46, &v45);
  v36 = v22 != v44 || v25 != v31;
  if (!*&v46[184])
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v44 == 0x8000000000000000 && *&v46[184] == -1)
  {
    goto LABEL_53;
  }

  if (v44 % *&v46[184] || !v36)
  {
    if (v22 == 0x8000000000000000)
    {
      v37 = 0;
      goto LABEL_22;
    }

    if (v22 % *&v46[184])
    {
      if (v22 == v44)
      {
LABEL_46:
        sub_269C6AB10(v46);
LABEL_5:
        v29 = *(v7 + 8);
        v29(v10, v6);
        v29(v14, v6);
        return 0;
      }
    }

    else if (v22 == v44 || !v25)
    {
      goto LABEL_46;
    }

    v37 = 0;
    if (v44 <= v22)
    {
      v38 = v22;
    }

    else
    {
      v38 = v44;
    }

    goto LABEL_43;
  }

  v37 = v31 == 0;
  if (v22 != 0x8000000000000000)
  {
    goto LABEL_23;
  }

LABEL_22:
  if (*&v46[184] == -1)
  {
LABEL_54:
    __break(1u);
    return result;
  }

LABEL_23:
  if (v22 % *&v46[184])
  {
    if (v22 == v44)
    {
      goto LABEL_37;
    }
  }

  else if (v22 == v44 || !v25)
  {
    goto LABEL_37;
  }

  if (v44 <= v22)
  {
    v38 = v22;
  }

  else
  {
    v38 = v44;
  }

  if (v38 == 0x8000000000000000 && *&v46[184] == -1)
  {
    __break(1u);
LABEL_37:
    sub_269C6AB10(v46);
    v39 = *(v7 + 8);
    v39(v10, v6);
    v39(v14, v6);
    return v37;
  }

LABEL_43:
  v40 = v38 % *&v46[184];
  v41 = *(v7 + 8);
  v41(v10, v6);
  v41(v14, v6);
  sub_269C6AB10(v46);
  if (!v40)
  {
    v42 = fabs(v33);
    if (!v34)
    {
      v42 = 0.0;
    }

    return *&v46[168] < v42 || v37;
  }

  return v37;
}

uint64_t sub_269CD0FF8(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144) / 60.0;
  v4 = v3 * round(*(result + 8) / v3);
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(v2 + 176);
  v6 = *(v2 + 192);
  v7 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  result = swift_beginAccess();
  v8 = v3 * round(*(v7 + 8) / v3);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState;
  result = swift_beginAccess();
  if (!v6)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v10 = v8 % 60;
  if (v10 == v4 % 60)
  {
    return 0;
  }

  v11 = fabs(*(v9 + 32));
  if (!*(v9 + 40))
  {
    v11 = 0.0;
  }

  v12 = v10 % v6;
  return v11 < v5 && v12 == 0;
}

uint64_t sub_269CD11D4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144) / 60.0;
  v4 = v3 * round(*(result + 24) / v3);
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(v2 + 176);
  v6 = *(v2 + 192);
  v7 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  result = swift_beginAccess();
  v8 = v3 * round(*(v7 + 24) / v3);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState;
  result = swift_beginAccess();
  if (!v6)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v10 = v8 % 60;
  if (v10 == v4 % 60)
  {
    return 0;
  }

  v11 = fabs(*(v9 + 32));
  if (!*(v9 + 40))
  {
    v11 = 0.0;
  }

  v12 = v10 % v6;
  return v11 < v5 && v12 == 0;
}

void sub_269CD13CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
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

double sub_269CD18D0(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  Width = CGRectGetWidth(*&a1);
  v14.origin.x = v7;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  if (CGRectGetHeight(v14) >= Width)
  {
    v20.origin.x = v7;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    v12 = CGRectGetWidth(v20);
    v21.origin.x = v7;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    if (v12 < CGRectGetHeight(v21))
    {
      v22.origin.x = v7;
      v22.origin.y = a2;
      v22.size.width = a3;
      v22.size.height = a4;
      CGRectGetMaxY(v22);
      v23.origin.x = v7;
      v23.origin.y = a2;
      v23.size.width = a3;
      v23.size.height = a4;
      CGRectGetMinY(v23);
      v24.origin.x = v7;
      v24.origin.y = a2;
      v24.size.width = a3;
      v24.size.height = a4;
      CGRectGetWidth(v24);
      v25.origin.x = v7;
      v25.origin.y = a2;
      v25.size.width = a3;
      v25.size.height = a4;
      CGRectGetWidth(v25);
      v26.origin.x = v7;
      v26.origin.y = a2;
      v26.size.width = a3;
      v26.size.height = a4;
      CGRectGetWidth(v26);
    }
  }

  else
  {
    v15.origin.x = v7;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    MaxX = CGRectGetMaxX(v15);
    v16.origin.x = v7;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    v10 = MaxX - CGRectGetMinX(v16);
    v17.origin.x = v7;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    v11 = (v10 - CGRectGetHeight(v17)) * 0.5;
    v18.origin.x = v7;
    v18.origin.y = a2;
    v18.size.width = a3;
    v18.size.height = a4;
    CGRectGetHeight(v18);
    v19.origin.x = v7;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetHeight(v19);
    return v11;
  }

  return v7;
}

double sub_269CD1A84(uint64_t a1, double a2, double a3)
{
  v6 = sub_269D9B250();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 / a2;
  v18 = v12;
  (*(v7 + 16))(v11, a1, v6, v9);
  v13 = (*(v7 + 88))(v11, v6);
  if (v13 == *MEMORY[0x277D84678])
  {
    v14 = round(v12);
  }

  else if (v13 == *MEMORY[0x277D84670])
  {
    v14 = rint(v12);
  }

  else if (v13 == *MEMORY[0x277D84680])
  {
    v14 = ceil(v12);
  }

  else if (v13 == *MEMORY[0x277D84688])
  {
    v14 = floor(v12);
  }

  else if (v13 == *MEMORY[0x277D84660])
  {
    v14 = trunc(v12);
  }

  else if (v13 == *MEMORY[0x277D84668])
  {
    v14 = ceil(v12);
    v15 = floor(v12);
    if (v12 < 0.0)
    {
      v14 = v15;
    }
  }

  else
  {
    sub_269D9A920();
    (*(v7 + 8))(v11, v6);
    v14 = v18;
  }

  return v14 * a2;
}

uint64_t sub_269CD1C6C()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances);
  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances + 8) != 1)
  {
    return *v1;
  }

  result = 144;
  *v1 = 144;
  v1[8] = 0;
  return result;
}

double sub_269CD1C9C()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle);
  if ((*(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 6.28318531 / sub_269CD1C6C();
  *v1 = result;
  v1[8] = 0;
  return result;
}

char *sub_269CD1CF0(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_tickInterval] = 0x4082C00000000000;
  v6 = &v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration];
  *v8 = a1;
  v8[1] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for RingGrabber();
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  v11 = *&v9[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture];
  v12 = v9;
  [v12 addSublayer_];
  [*&v9[v10] setLineCap_];
  [*&v9[v10] setFillColor_];
  v13 = sub_269CD1C9C();
  CATransform3DMakeRotation(&v15, v13, 0.0, 0.0, 1.0);
  [v12 setInstanceTransform_];

  return v12;
}

void *sub_269CD1E58(void *a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_tickInterval] = 0x4082C00000000000;
  v4 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration];
  *v6 = 0;
  v6[1] = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = sub_269D9B260();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RingGrabber();
  v8 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

void sub_269CD1FE0()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout sublayers", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture];
  [v1 bounds];
  [v10 setFrame_];
  v11 = &v1[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_configuration];
  [v10 setLineWidth_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v13 = v11[1] * 0.5;
  [v1 bounds];
  v14 = CGRectGetMaxX(v19) - v13;
  [v1 bounds];
  [v12 moveToPoint_];
  [v1 bounds];
  v15 = v13 + CGRectGetMaxX(v21) - *v11;
  [v1 bounds];
  [v12 addLineToPoint_];
  v16 = [v12 CGPath];
  [v10 setPath_];
}

id sub_269CD22C8(double a1, double a2)
{
  v5 = sub_269D9B250();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted] == 1)
  {
    (*(v6 + 104))(v10, *MEMORY[0x277D84680], v5, v8);
    v11 = sub_269CD1C9C();
    a1 = sub_269CD1A84(v10, v11, a1);
    (*(v6 + 8))(v10, v5);
  }

  CATransform3DMakeRotation(&v14, a1 - *&v2[OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset], 0.0, 0.0, 1.0);
  [v2 setTransform_];
  result = sub_269CD1C6C();
  v13 = floor(a2 / 60.0 / 60.0 / 24.0 * result);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 < 9.22337204e18)
  {
    return [v2 setInstanceCount_];
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_269CD24E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_269CD2560()
{
  v1 = MEMORY[0x277D83D88];
  sub_269CCD978(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v41 = &v33 - v4;
  sub_269CCD978(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v1);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v33 - v7;
  v40 = sub_269D971F0();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v33 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D62490]) init];
  [v17 setWeekdays_];
  v18 = v0[2];
  v19 = v0[3];
  v42 = v9;
  v38 = v12;
  v39 = v0;
  if (v19 == 60 && __OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = sub_269D977A0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v35 = v21 + 56;
    v36 = v22;
    v22(v8, 1, 1, v20);
    v23 = sub_269D97810();
    v24 = *(v23 - 8);
    v25 = *(v24 + 56);
    v33 = v24 + 56;
    v34 = v25;
    v25(v41, 1, 1, v23);
    v37 = v8;
    sub_269D971D0();
    v26 = sub_269D97110();
    v27 = v42 + 8;
    v28 = *(v42 + 8);
    v28(v16, v40);
    [v17 setWakeUpComponents_];

    v29 = *v39;
    v30 = v39[1];
    v42 = v27;
    if (v30 != 60 || !__OFADD__(v29, 1))
    {
      v36(v37, 1, 1, v20);
      v34(v41, 1, 1, v23);
      v31 = v38;
      sub_269D971D0();
      v32 = sub_269D97110();
      v28(v31, v40);
      [v17 setBedtimeComponents_];

      [v17 actualSleepInterval];
      return;
    }
  }

  __break(1u);
}

void sub_269CD2AA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  v3 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_track;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_ring;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand;
  sub_269D307FC(v14);
  LOWORD(v15[0]) = 0;
  v6 = type metadata accessor for SleepScheduleClockHand();
  v7 = objc_allocWithZone(v6);
  *(v1 + v5) = sub_269D2F848(v15, v14);
  v8 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand;
  sub_269D307FC(v15);
  v13 = 4097;
  v9 = objc_allocWithZone(v6);
  *(v1 + v8) = sub_269D2F848(&v13, v15);
  v10 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = (v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState);
  *v12 = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269CD2C1C()
{
  swift_getObjectType();
  v1 = COERCE_DOUBLE(sub_269D9B250());
  v2 = *(*&v1 - 8);
  MEMORY[0x28223BE20](*&v1, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_280C0B728);
  v7 = v0;
  v8 = sub_269D98230();
  v9 = sub_269D9AB50();

  v10 = os_log_type_enabled(v8, v9);
  v48 = v5;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v49.f64[0] = v1;
    v13 = v2;
    v14 = v12;
    v52.i64[0] = v12;
    *v11 = 136446466;
    v15 = sub_269D9B4D0();
    v17 = sub_269C2EACC(v15, v16, v52.i64);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    v18 = &v7[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    swift_beginAccess();
    v50 = *v18;
    v51[0] = *(v18 + 1);
    *(v51 + 11) = *(v18 + 27);
    v19 = sub_269D1F5F8();
    v21 = sub_269C2EACC(v19, v20, v52.i64);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Done editing model: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    v22 = v14;
    v2 = v13;
    v1 = v49.f64[0];
    MEMORY[0x26D652460](v22, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  v23 = &v7[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dragState];
  result = swift_beginAccess();
  v25 = *(v23 + 5);
  if (v25)
  {
    v26 = *v23;
    v27 = *&v7[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144];
    v28 = &v7[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model];
    swift_beginAccess();
    v29 = vcvtq_f64_s64(*v28);
    v49 = vdupq_n_s64(0x404E000000000000uLL);
    v30 = vmulq_f64(v29, v49);
    sub_269D225A8(v27 * round((60.0 * v30.f64[0] + v30.f64[1]) / v27), v52.i64);
    *v28 = v52;
    v31 = vmulq_f64(vcvtq_f64_s64(v28[1]), v49);
    sub_269D225A8(v27 * round((60.0 * v31.f64[0] + v31.f64[1]) / v27), v52.i64);
    v28[1] = v52;
    swift_endAccess();
    v32 = v25;
    sub_269CCBCFC();
    if (v26)
    {
      if (v26 == 1)
      {
        [*&v7[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand] setHighlighted_];
        v33 = *&v7[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_grabber];
        v34 = (v28->i64[1] / 60.0 + v28->i64[0]) / 24.0 * 6.28318531;
        if (qword_28034D638 != -1)
        {
          swift_once();
        }

        v35 = v34 + *&qword_28035E4B0;
          ;
        }

          ;
        }

        (*(v2 + 104))(v48, *MEMORY[0x277D84680], COERCE_FLOAT64_T(*&v1));
        v37 = sub_269CD1C9C();
        v38 = sub_269CD1A84(i, v37, v35);
        (*(v2 + 8))(i, COERCE_FLOAT64_T(*&v1));
        v39 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset;
        *(v33 + v39) = fmod(v38 - v35 + *(v33 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset), *(v33 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle));
        *(v33 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted) = 0;
      }

      else
      {
        [*&v7[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand] setHighlighted_];
      }
    }

    [v7 sendActionsForControlEvents_];
    [v7 sendActionsForControlEvents_];
    v40 = *(v23 + 5);
    *v23 = 0u;
    *(v23 + 1) = 0u;
    *(v23 + 2) = 0u;

    v41 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_majorFeedbackGenerator;
    swift_beginAccess();
    sub_269CD3360(&v7[v41], &v50);
    if (*(&v51[0] + 1))
    {
      sub_269C2DB5C(&v50, &v52);
      sub_269CD3458(&v50);
      v42 = v53;
      v43 = v54;
      __swift_project_boxed_opaque_existential_1Tm(&v52, v53);
      (*(v43 + 24))(v42, v43);
      __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    }

    else
    {
      sub_269CD3458(&v50);
    }

    v44 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_minorFeedbackGenerator;
    swift_beginAccess();
    sub_269CD3360(&v7[v44], &v50);
    if (*(&v51[0] + 1))
    {
      sub_269C2DB5C(&v50, &v52);
      sub_269CD3458(&v50);
      v45 = v53;
      v46 = v54;
      __swift_project_boxed_opaque_existential_1Tm(&v52, v53);
      (*(v46 + 24))(v45, v46);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    }

    else
    {

      return sub_269CD3458(&v50);
    }
  }

  return result;
}

void sub_269CD3284()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_texture;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_isHalted) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_activeAngleOffset) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber_tickInterval) = 0x4082C00000000000;
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___totalInstances;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC13SleepHealthUIP33_3908BEF921CD76B2D67B4136649A566B11RingGrabber____lazy_storage___transformAngle;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269CD3360(uint64_t a1, uint64_t a2)
{
  sub_269CD33F0(0, &qword_28034FBE8, &unk_28034FBF0, &protocol descriptor for FeedbackGenerator, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CD33F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_269C3232C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_269CD3458(uint64_t a1)
{
  sub_269CD33F0(0, &qword_28034FBE8, &unk_28034FBF0, &protocol descriptor for FeedbackGenerator, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269CD34E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FC08;
  if (!qword_28034FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FC08);
  }

  return result;
}

uint64_t sub_269CD3534(uint64_t a1, uint64_t a2)
{
  sub_269CD33F0(0, &qword_28034FBE8, &unk_28034FBF0, &protocol descriptor for FeedbackGenerator, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id HKHealthStore.isSleepCoachingSupported.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result hksp_supportsSleep];

    result = 0;
    if (v3)
    {
      v4 = [v0 profileIdentifier];
      v5 = [v4 type];

      if (v5 != 3)
      {
        return 1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL HKHealthStore.isSleepDataEntrySupported.getter()
{
  v1 = [v0 profileIdentifier];
  v2 = [v1 type];

  return v2 != 3;
}

uint64_t sub_269CD36E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_269CD3744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_269CD37C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v14 = v4;
  if (v3)
  {
    v11 = v3;
    sub_269CD411C(&v14, v11, v12);
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v4;
    v7 = v12[3];
    *(a1 + 32) = v12[2];
    *(a1 + 48) = v7;
    v8 = v13;
    v9 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v9;
    *(a1 + 64) = v8;
    *(a1 + 72) = sub_269CD4324;
    *(a1 + 80) = v6;

    return v11;
  }

  else
  {
    type metadata accessor for SleepActivityConfigurationModel(0);
    sub_269CD73A4(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel, &protocol conformance descriptor for SleepActivityConfigurationModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

uint64_t sub_269CD38D0@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  *a4 = sub_269D99190();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  sub_269CD4330(0);
  return sub_269CD3934(a1, a4 + *(v6 + 44));
}

uint64_t sub_269CD3934@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  sub_269CD43D4(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - v12;
  sub_269D9A8E0();
  v33 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v13 = sub_269D99090();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_269CD45FC(0);
  sub_269CD3C84(&v13[*(v14 + 44)]);
  v15 = sub_269D995E0();
  sub_269D98990();
  v16 = &v13[*(v6 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
  v21 = sub_269D98E40();
  if (a1)
  {
    v23 = v21;
    v24 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = a1;
    sub_269D98880(&v34);

    v26 = v34;
    v27 = sub_269D98760();
    sub_269CD74A4(v13, v9, sub_269CD43D4);
    sub_269CD74A4(v9, a3, sub_269CD43D4);
    sub_269CD6C8C(0, &qword_28034FC28, sub_269CD43D4, sub_269CD456C);
    v29 = (a3 + *(v28 + 48));
    *v29 = v23;
    v29[1] = v24;
    v29[2] = v27;
    v29[3] = v26;
    v30 = v23;

    v31 = v26;
    sub_269CD73EC(v13, sub_269CD43D4);

    sub_269CD73EC(v9, sub_269CD43D4);
  }

  else
  {
    type metadata accessor for SleepActivityConfigurationModel(0);
    sub_269CD73A4(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel, &protocol conformance descriptor for SleepActivityConfigurationModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

uint64_t sub_269CD3C84@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  sub_269C51C58(0);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v46 - v6);
  sub_269D9A8E0();
  v51 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v8 = qword_280C0D990;
  v9 = sub_269D972C0();
  v11 = v10;

  v54 = v9;
  v55 = v11;
  sub_269C3EEE8(v12, v13, v14);
  v15 = sub_269D99960();
  v17 = v16;
  v19 = v18;
  if (qword_28034D7C0 != -1)
  {
    swift_once();
  }

  v20 = sub_269D99920();
  v22 = v21;
  v24 = v23;
  sub_269C41568(v15, v17, v19 & 1);

  v25 = objc_opt_self();
  v26 = [v25 labelColor];
  sub_269D99CC0();
  v27 = sub_269D998F0();
  v29 = v28;
  v48 = v30;
  v49 = v31;

  sub_269C41568(v20, v22, v24 & 1);

  v47 = sub_269D99D60();
  v32 = [v25 tertiaryLabelColor];
  v33 = sub_269D99CC0();
  KeyPath = swift_getKeyPath();
  sub_269D996C0();
  v35 = sub_269D996D0();

  v36 = swift_getKeyPath();
  v37 = (v7 + *(v50 + 36));
  sub_269C51E5C(0);
  v39 = *(v38 + 28);
  v40 = *MEMORY[0x277CE1050];
  v41 = sub_269D99DB0();
  (*(*(v41 - 8) + 104))(v37 + v39, v40, v41);
  *v37 = swift_getKeyPath();
  *v7 = v47;
  v7[1] = KeyPath;
  v7[2] = v33;
  v7[3] = v36;
  v7[4] = v35;
  v42 = v53;
  sub_269CD74A4(v7, v53, sub_269C51C58);
  v43 = v52;
  *v52 = v27;
  v43[1] = v29;
  LOBYTE(v33) = v48 & 1;
  *(v43 + 16) = v48 & 1;
  v43[3] = v49;
  v43[4] = 0;
  *(v43 + 40) = 1;
  sub_269CD44FC(0);
  sub_269CD74A4(v42, v43 + *(v44 + 64), sub_269C51C58);
  sub_269C41668(v27, v29, v33);

  sub_269CD73EC(v7, sub_269C51C58);
  sub_269CD73EC(v42, sub_269C51C58);
  sub_269C41568(v27, v29, v33);
}

void sub_269CD411C(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_269D99E60();
  v6 = v13[1];
  *(a3 + 48) = v13[0];
  *(a3 + 56) = v6;
  *(a3 + 64) = v5;
  type metadata accessor for SleepActivityConfigurationModel(0);
  sub_269CD73A4(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel, &protocol conformance descriptor for SleepActivityConfigurationModel);
  v7 = a2;
  *a3 = sub_269D98C70();
  *(a3 + 8) = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v13);

  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
  *(a3 + 16) = sub_269D98C70();
  *(a3 + 24) = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v13);

  type metadata accessor for SleepSettingsModel();
  sub_269CD73A4(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
  v10 = sub_269D98C70();
  v12 = v11;

  *(a3 + 32) = v10;
  *(a3 + 40) = v12;
}

void sub_269CD4330(uint64_t a1)
{
  if (!qword_28034FC18)
  {
    sub_269CD4398(255);
    v1 = sub_269D98BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FC18);
    }
  }
}

void sub_269CD43D4(uint64_t a1)
{
  if (!qword_28034FC30)
  {
    sub_269CD4434(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FC30);
    }
  }
}

void sub_269CD4434(uint64_t a1)
{
  if (!qword_28034FC38)
  {
    sub_269CD44C8(255);
    sub_269CD73A4(&qword_28034FC50, sub_269CD44C8, MEMORY[0x277CE14C0]);
    v1 = sub_269D99F00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FC38);
    }
  }
}

void sub_269CD44FC(uint64_t a1)
{
  if (!qword_28034FC48)
  {
    sub_269C51C58(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28034FC48);
    }
  }
}

void sub_269CD45FC(uint64_t a1)
{
  if (!qword_28034FC70)
  {
    sub_269CD44C8(255);
    v1 = sub_269D98BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FC70);
    }
  }
}

uint64_t sub_269CD4664@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v41 = sub_269D99070();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6658(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6E7C(0);
  v42 = v11;
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6F4C(0);
  v45 = v15;
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[3];
  v55 = v1[2];
  v56 = v18;
  v57 = *(v1 + 64);
  v19 = v1[1];
  v53 = *v1;
  v54 = v19;
  v47 = &v53;
  sub_269CD6708(0);
  sub_269CD73A4(&qword_28034FD40, sub_269CD6708, MEMORY[0x277CE14C0]);
  sub_269D99870();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v20 = qword_280C0D990;
  v21 = sub_269D972C0();
  v23 = v22;

  v48 = v21;
  v49 = v23;
  v24 = sub_269CD73A4(&qword_28034FD50, sub_269CD6658, MEMORY[0x277CDE5A0]);
  v27 = sub_269C3EEE8(v24, v25, v26);
  v28 = MEMORY[0x277D837D0];
  sub_269D99B00();

  (*(v7 + 8))(v10, v6);
  v29 = v40;
  v30 = v41;
  (*(v40 + 104))(v4, *MEMORY[0x277CDDDC0], v41);
  v48 = v6;
  v49 = v28;
  v50 = v24;
  v51 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v42;
  sub_269D99BD0();
  (*(v29 + 8))(v4, v30);
  (*(v39 + 8))(v14, v33);
  v52 = v56;
  sub_269CD7054(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E90();
  v34 = swift_allocObject();
  v35 = v56;
  *(v34 + 48) = v55;
  *(v34 + 64) = v35;
  *(v34 + 80) = v57;
  v36 = v54;
  *(v34 + 16) = v53;
  *(v34 + 32) = v36;
  sub_269CD70AC(&v53, &v48);
  sub_269CD70E4(0, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  v48 = v33;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_269CCB3C0();
  v37 = v45;
  sub_269D99C00();

  return (*(v44 + 8))(v32, v37);
}

uint64_t sub_269CD4CA8@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v92 = a2;
  sub_269CD6B8C(0);
  v4 = v3;
  v89 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v86 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CD6B58(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v98 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v99 = &v86 - v12;
  sub_269CD6968(0);
  v103 = v13;
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v97 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v100 = &v86 - v18;
  sub_269CD690C();
  v96 = v19;
  v90 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v102 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v86 - v24;
  sub_269CD67D0(0);
  v101 = v26;
  v95 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v94 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v86 - v31;
  sub_269D9A8E0();
  v88 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = a1[3];
  v110 = a1[2];
  v111 = v33;
  v112 = *(a1 + 64);
  v34 = a1[1];
  v108 = *a1;
  v109 = v34;
  v104 = sub_269CD56D0();
  v105 = v35;
  v106 = v36 & 1;
  v107 = v37;
  MEMORY[0x28223BE20](v104, v35);
  sub_269CD6D30(0, &qword_28034FCC8, sub_269CD687C, sub_269CD4594, MEMORY[0x277CDFAB8]);
  sub_269CD7140();
  v93 = v32;
  v38 = sub_269D9A0D0();
  MEMORY[0x28223BE20](v38, v39);
  sub_269CD7340(v40, v41, v42);
  v43 = v25;
  sub_269D9A0C0();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v44 = qword_280C0D990;
  v45 = sub_269D972C0();
  v47 = v46;

  *&v108 = v45;
  *(&v108 + 1) = v47;
  sub_269C3EEE8(v48, v49, v50);
  *&v108 = sub_269D99960();
  *(&v108 + 1) = v51;
  LOBYTE(v109) = v52 & 1;
  *(&v109 + 1) = v53;
  MEMORY[0x28223BE20](v108, v51);
  sub_269CD69D0(0);
  sub_269CD456C(255);
  v55 = v54;
  v56 = sub_269CD6A54();
  v104 = v55;
  v105 = v56;
  v57 = 1;
  swift_getOpaqueTypeConformance2();
  sub_269D9A0B0();
  v58 = v4;
  v59 = v89;
  if (*(a1 + 64) == 4)
  {
    v60 = v44;
    v61 = sub_269D972C0();
    v63 = v62;

    *&v108 = v61;
    *(&v108 + 1) = v63;
    *&v108 = sub_269D99960();
    *(&v108 + 1) = v64;
    LOBYTE(v109) = v65 & 1;
    *(&v109 + 1) = v66;
    MEMORY[0x28223BE20](v108, v64);
    sub_269CD6BF4(0);
    sub_269CD73A4(&qword_28034FD88, sub_269CD6BF4, MEMORY[0x277CE14C0]);
    v67 = v86;
    sub_269D9A0B0();
    v59[4](v99, v67, v58);
    v57 = 0;
  }

  v68 = v99;
  (v59[7])(v99, v57, 1, v58);
  v69 = *(v95 + 16);
  v70 = v94;
  v69(v94, v93, v101);
  v71 = v90;
  v89 = *(v90 + 16);
  v87 = v43;
  (v89)(v102, v43, v96);
  v72 = v91;
  v86 = *(v91 + 16);
  v73 = v97;
  (v86)(v97, v100, v103);
  sub_269CD74A4(v68, v98, sub_269CD6B58);
  v74 = v92;
  v69(v92, v70, v101);
  sub_269CD673C(0);
  v76 = v75;
  v77 = v96;
  (v89)(&v74[*(v75 + 48)], v102, v96);
  v78 = v103;
  (v86)(&v74[*(v76 + 64)], v73, v103);
  v79 = v98;
  sub_269CD74A4(v98, &v74[*(v76 + 80)], sub_269CD6B58);
  sub_269CD73EC(v99, sub_269CD6B58);
  v80 = *(v72 + 8);
  v80(v100, v78);
  v81 = *(v71 + 8);
  v82 = v77;
  v81(v87, v77);
  v83 = *(v95 + 8);
  v84 = v101;
  v83(v93, v101);
  sub_269CD73EC(v79, sub_269CD6B58);
  v80(v97, v103);
  v81(v102, v82);
  v83(v94, v84);
}

uint64_t sub_269CD56D0()
{
  v1 = *(v0 + 24);
  [*(*(v0 + 40) + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) scheduledSleepMode];
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (v2)
  {
    [v2 windDownTime];
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v3 = qword_280C0D990;
  sub_269D972C0();

  sub_269C3EEE8(v4, v5, v6);
  return sub_269D99960();
}

uint64_t sub_269CD5868@<X0>(uint64_t *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepSettingsModel();
  sub_269CD73A4(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
  v3 = sub_269D98E40();
  v13 = v4;
  v14 = v3;
  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
  v5 = sub_269D98E40();
  v7 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v15);

  v8 = v15;
  v9 = sub_269D98760();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v15);

  v10 = v15;
  v11 = sub_269D98760();

  *a2 = v14;
  a2[1] = v13;
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = v9;
  a2[5] = v8;
  a2[6] = v11;
  a2[7] = v10;
  return result;
}

__n128 sub_269CD5A90@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 16);
  v4 = *(&v8 + 1);
  sub_269CD74A4(&v8, v7, sub_269CD750C);
  sub_269CBFE08(v4, v7);

  v5 = v7[3];
  a2[2] = v7[2];
  a2[3] = v5;
  a2[4] = v7[4];
  result = v7[1];
  *a2 = v7[0];
  a2[1] = result;
  return result;
}

void sub_269CD5B7C(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
  v2 = sub_269D98E40();
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v10);

  v5 = v10[0];
  v6 = sub_269D98760();
  v10[9] = v2;
  v10[10] = v4;
  v10[11] = v6;
  v10[12] = v5;
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  sub_269CD70AC(a1, v10);
  sub_269CD456C(0);
  sub_269CD6A54();
  sub_269D99AB0();
}

uint64_t sub_269CD5D7C(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_28035E4B8);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_269C2EACC(0xD000000000000037, 0x8000000269DB0C20, &v8);
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Opening schedule editor", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v8 = *(a1 + 48);
  sub_269CD7054(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E80();
}

void sub_269CD5F70(void *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepScheduleModel();
  sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
  v3 = sub_269D98E40();
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v11);

  v6 = v11[0];
  v7 = sub_269D98760();
  v12 = 2;
  v13 = 0u;
  v14 = 0u;
  v15 = 256;
  sub_269C9B4D0(&v12, v11);
  sub_269CD74A4(v11, v10, sub_269C98B8C);
  *a2 = v3;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;
  sub_269CD74A4(v10, (a2 + 4), sub_269C98B8C);
  v8 = v3;

  v9 = v6;
  sub_269CD73EC(v11, sub_269C98B8C);
  sub_269CD73EC(v10, sub_269C98B8C);
}

double sub_269CD6190@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[3];
  v18 = a1[2];
  v19 = v4;
  v20 = *(a1 + 64);
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  sub_269CD6274(&v11);

  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 33) = v9;
  return result;
}

uint64_t sub_269CD6274@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3;
  sub_269D98880(v17);

  v7 = v17[0];
  v8 = *(v17[0] + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24);
  v9 = *(v17[0] + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32);
  __swift_project_boxed_opaque_existential_1Tm((v17[0] + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider), v8);
  v10 = (*(v9 + 8))(v8, v9);

  v11 = *MEMORY[0x277D62120];
  v19 = v4;
  v20 = v5;
  sub_269CD7054(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v12 = v11;
  sub_269D99E90();
  v13 = v17[0];
  v14 = v17[1];
  v15 = v18;
  result = sub_269D995D0();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 33) = result;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_269CD63F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_269CD6438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269CD649C(uint64_t a1)
{
  if (!qword_28034FC80)
  {
    sub_269CD6554(255);
    v7[0] = v4;
    v7[1] = &type metadata for ScheduleListView;
    v8 = sub_269CD73A4(&qword_28034FC98, sub_269CD6554, MEMORY[0x277CE1198]);
    v9 = sub_269CD65E8(v8, v2, v3);
    v5 = type metadata accessor for NavigationLinkWithoutChevron(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_28034FC80);
    }
  }
}

void sub_269CD6554(uint64_t a1)
{
  if (!qword_28034FC88)
  {
    sub_269CD4398(255);
    sub_269CD73A4(&qword_28034FC90, sub_269CD4398, MEMORY[0x277CE14C0]);
    v1 = sub_269D99FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FC88);
    }
  }
}

unint64_t sub_269CD65E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FCA0;
  if (!qword_28034FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FCA0);
  }

  return result;
}

void sub_269CD6658(uint64_t a1)
{
  if (!qword_28034FCA8)
  {
    sub_269CD6708(255);
    sub_269CD73A4(&qword_28034FD40, sub_269CD6708, MEMORY[0x277CE14C0]);
    v1 = sub_269D99880();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FCA8);
    }
  }
}

void sub_269CD673C(uint64_t a1)
{
  if (!qword_28034FCB8)
  {
    sub_269CD67D0(255);
    sub_269CD690C();
    sub_269CD6968(255);
    sub_269CD6B58(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28034FCB8);
    }
  }
}

void sub_269CD67D0(uint64_t a1)
{
  if (!qword_28034FCC0)
  {
    sub_269CD6D30(255, &qword_28034FCC8, sub_269CD687C, sub_269CD4594, MEMORY[0x277CDFAB8]);
    v1 = sub_269D9A0E0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FCC0);
    }
  }
}

void sub_269CD690C()
{
  if (!qword_28034FCE8)
  {
    v0 = sub_269D9A0E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FCE8);
    }
  }
}

void sub_269CD6968(uint64_t a1)
{
  if (!qword_28034FCF0)
  {
    sub_269CD69D0(255);
    v1 = sub_269D9A0E0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FCF0);
    }
  }
}

void sub_269CD69D0(uint64_t a1)
{
  if (!qword_28034FCF8)
  {
    sub_269CD456C(255);
    sub_269CD6A54();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034FCF8);
    }
  }
}

unint64_t sub_269CD6A54()
{
  result = qword_28034FD00;
  if (!qword_28034FD00)
  {
    sub_269CD456C(255);
    sub_269CD6B04(v1, v2, v3);
    sub_269CD73A4(&qword_28034FD10, sub_269CD4594, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD00);
  }

  return result;
}

unint64_t sub_269CD6B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FD08;
  if (!qword_28034FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD08);
  }

  return result;
}

void sub_269CD6B8C(uint64_t a1)
{
  if (!qword_28034FD20)
  {
    sub_269CD6BF4(255);
    v1 = sub_269D9A0E0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FD20);
    }
  }
}

void sub_269CD6C30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269CD6C8C(255, a3, a4, a5);
    v6 = sub_269D9A1C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269CD6C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269CD6D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269CD6DB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_269CD6E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CD6E7C(uint64_t a1)
{
  if (!qword_28034FD48)
  {
    sub_269CD6658(255);
    v1 = sub_269CD73A4(&qword_28034FD50, sub_269CD6658, MEMORY[0x277CDE5A0]);
    sub_269C3EEE8(v1, v2, v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034FD48);
    }
  }
}

void sub_269CD6F4C(uint64_t a1)
{
  if (!qword_28034FD58)
  {
    sub_269CD6E7C(255);
    sub_269CD6658(255);
    v5 = sub_269CD73A4(&qword_28034FD50, sub_269CD6658, MEMORY[0x277CDE5A0]);
    sub_269C3EEE8(v5, v1, v2);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034FD58);
    }
  }
}

void sub_269CD7054(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269CD70E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269CD7140()
{
  result = qword_28034FD60;
  if (!qword_28034FD60)
  {
    sub_269CD6D30(255, &qword_28034FCC8, sub_269CD687C, sub_269CD4594, MEMORY[0x277CDFAB8]);
    sub_269CD7234();
    sub_269CD73A4(&qword_28034FD10, sub_269CD4594, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD60);
  }

  return result;
}

unint64_t sub_269CD7234()
{
  result = qword_28034FD68;
  if (!qword_28034FD68)
  {
    sub_269CD687C(255);
    sub_269CD72E4(v1, v2, v3);
    sub_269CD73A4(&qword_28034FD78, sub_269CD68A4, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD68);
  }

  return result;
}

unint64_t sub_269CD72E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FD70;
  if (!qword_28034FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD70);
  }

  return result;
}

unint64_t sub_269CD7340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034FD80;
  if (!qword_28034FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FD80);
  }

  return result;
}

uint64_t sub_269CD73A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269CD73EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_31Tm()
{

  return swift_deallocObject();
}

uint64_t sub_269CD74A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269CD750C(uint64_t a1)
{
  if (!qword_28034FD90)
  {
    type metadata accessor for SleepScheduleModel();
    sub_269CD73A4(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
    v1 = sub_269D98C90();
    if (!v2)
    {
      atomic_store(v1, &qword_28034FD90);
    }
  }
}

uint64_t sub_269CD75A0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_269CD7620(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269D98890();
}

uint64_t sub_269CD769C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a1);
}

uint64_t sub_269CD7714(void *a1)
{
  swift_beginAccess();
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CD77A4(_BYTE *a1, uint64_t *a2)
{
  sub_269CD9254(0, &qword_28034FDE8, &type metadata for SectionsViewModel, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v16 - v12;
  v14 = *(v5 + 16);
  (v14)(&v16 - v12, a1, v4, v11);
  v14(v8, v13, v4);
  swift_beginAccess();
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_269CD7960()
{
  swift_beginAccess();
  sub_269CD9254(0, &qword_28034FDA0, &type metadata for SectionsViewModel, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CD79EC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_269CD7A6C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_269D98890();
}

uint64_t sub_269CD7AE4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a1);
}

uint64_t sub_269CD7B5C(void *a1)
{
  swift_beginAccess();
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CD7BE4(_BYTE *a1, uint64_t *a2)
{
  sub_269CD91D0(0, &qword_28034FDE0, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v16 - v12;
  v14 = *(v5 + 16);
  (v14)(&v16 - v12, a1, v4, v11);
  v14(v8, v13, v4);
  swift_beginAccess();
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_269CD7D88()
{
  swift_beginAccess();
  sub_269CD91D0(0, &qword_28034FDB0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

id SleepActivityConfigurationDataSource.__allocating_init()()
{
  sub_269CD9254(0, &qword_28034E708, &type metadata for SleepActivityConfigurationSectionLayout, MEMORY[0x277CBCED0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v44 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v7 = objc_allocWithZone(MEMORY[0x277D62528]);
  v8 = sub_269D9A5F0();
  v9 = [v7 initWithIdentifier:v8 healthStore:v6];

  type metadata accessor for SleepScheduleProvider();
  v10 = v9;
  v11 = SleepScheduleProvider.__allocating_init(sleepStore:)(v10);
  v12 = v10;
  v46 = v11;
  v13 = HKSPSleepStore.settings.getter();
  v14 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  v15 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v12, v13);
  v16 = *MEMORY[0x277CCC0E0];
  v17 = objc_allocWithZone(MEMORY[0x277D62460]);
  v45 = v15;
  v48 = v12;
  v47 = [v17 initWithFeatureIdentifier:v16 sleepStore:v12];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v19 = result;
    v20 = HKSPCurrentDateProvider();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = [objc_allocWithZone(type metadata accessor for WatchAppInstalledProvider(0)) init];
    v44 = [objc_opt_self() hksp_internalUserDefaults];
    v23 = type metadata accessor for SleepActivityConfigurationModel(0);
    v24 = objc_allocWithZone(v23);
    v25 = OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel__layout;
    v52 = 0;
    sub_269D98840();
    (*(v2 + 32))(&v24[v25], v5, v1);
    v26 = &v24[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_configUIVisitedKey];
    *v26 = sub_269D9A630();
    v26[1] = v27;
    *&v24[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_subscriptions] = MEMORY[0x277D84FA0];
    sub_269D97D80();
    v28 = sub_269D97D70();
    v29 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
    v30 = v45;
    v31 = sub_269CB5A60(v30, v28, v29);

    swift_beginAccess();
    v51 = v31;
    sub_269D98840();
    swift_endAccess();
    v32 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
    v33 = v46;

    v34 = sub_269C79AD0(v33, sub_269C79AA4, v21, v32);

    swift_beginAccess();
    v51 = v34;
    sub_269D98840();
    swift_endAccess();
    v35 = v47;
    *&v24[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_featureAvailability] = v47;
    *&v24[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_watchAppInstalledProvider] = v22;
    *&v24[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] = v19;
    v50.receiver = v24;
    v50.super_class = v23;
    v36 = v35;
    v37 = v22;
    v38 = v19;
    v39 = objc_msgSendSuper2(&v50, sel_init);

    v40 = sub_269D9A5F0();

    v41 = v44;
    [v44 setBool:1 forKey:v40];

    sub_269C734BC();
    sub_269C72FDC();
    sub_269C55300();
    v42 = sub_269D9AC40();
    [v36 registerObserver:v39 queue:v42];

    v43 = (*(v49 + 232))(v39);

    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepActivityConfigurationDataSource.__allocating_init(sleepModel:)(void *a1)
{
  swift_allocObject();
  v2 = sub_269CD887C(a1);

  return v2;
}

uint64_t SleepActivityConfigurationDataSource.init(sleepModel:)(void *a1)
{
  v2 = sub_269CD887C(a1);

  return v2;
}

uint64_t sub_269CD83FC(uint64_t a1, uint64_t a2, char *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v9);

  v10 = v9;
  sub_269C5BE08(a3, &v11);
  v4 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v4;

  sub_269D98890();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v11);

  v5 = v11;
  if ([*&a3[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] isDeviceSupported])
  {
    v6 = v5 > 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = a3;
  }

  else
  {
    a3 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = a3;

  sub_269D98890();
}