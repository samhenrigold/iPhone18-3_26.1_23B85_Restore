uint64_t TTRRecurrenceRuleModel.naturalLanguageString(startDate:)()
{
  v1 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v39 = *(v0 + v1[6]);
  v40 = *(v0 + v1[5]);
  v2 = *(v0 + v1[8]);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_21DBFC01C();
      v4 = objc_opt_self();
      v5 = (v2 + 40);
      do
      {
        v6 = [v4 dayOfWeek:*(v5 - 1) weekNumber:*v5];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v5 += 2;
        --v3;
      }

      while (v3);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8, 0x277D44718);
    v38 = sub_21DBFA5DC();
  }

  else
  {
    v38 = 0;
  }

  v7 = *(v0 + v1[9]);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      sub_21DBFC01C();
      v9 = (v7 + 32);
      do
      {
        v10 = *v9++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v8;
      }

      while (v8);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v37 = sub_21DBFA5DC();
  }

  else
  {
    v37 = 0;
  }

  v11 = *(v0 + v1[12]);
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      sub_21DBFC01C();
      v13 = (v11 + 32);
      do
      {
        v14 = *v13++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v12;
      }

      while (v12);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v15 = sub_21DBFA5DC();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + v1[11]);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_21DBFC01C();
      v18 = (v16 + 32);
      do
      {
        v19 = *v18++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v17;
      }

      while (v17);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v20 = sub_21DBFA5DC();
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + v1[10]);
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      sub_21DBFC01C();
      v23 = (v21 + 32);
      do
      {
        v24 = *v23++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v22;
      }

      while (v22);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v25 = sub_21DBFA5DC();
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v0 + v1[13]);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      sub_21DBFC01C();
      v28 = (v26 + 32);
      do
      {
        v29 = *v28++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v27;
      }

      while (v27);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v30 = sub_21DBFA5DC();
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_self();
  v32 = sub_21D7D789C();
  v33 = sub_21DBF55BC();
  v34 = [v31 naturalLanguageDescriptionForFrequency:v40 interval:v39 daysOfTheWeek:v38 daysOfTheMonth:v37 monthsOfTheYear:v15 weeksOfTheYear:v20 daysOfTheYear:v25 setPositions:v30 end:v32 withStartDate:v33];

  v35 = sub_21DBFA16C();
  return v35;
}

uint64_t sub_21D7D6B48()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61AF0);
  v1 = __swift_project_value_buffer(v0, qword_27CE61AF0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRecurrenceRuleModel.frequency.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.interval.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.firstDayOfTheWeek.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

double TTRRecurrenceRuleModel.daysOfTheWeek.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  sub_21DBF8E0C();
  return result;
}

void TTRRecurrenceRuleModel.daysOfTheWeek.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 32);

  *(v1 + v3) = a1;
}

double TTRRecurrenceRuleModel.daysOfTheMonth.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  sub_21DBF8E0C();
  return result;
}

void TTRRecurrenceRuleModel.daysOfTheMonth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 36);

  *(v1 + v3) = a1;
}

double TTRRecurrenceRuleModel.daysOfTheYear.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  sub_21DBF8E0C();
  return result;
}

void TTRRecurrenceRuleModel.daysOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 40);

  *(v1 + v3) = a1;
}

double TTRRecurrenceRuleModel.weeksOfTheYear.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  sub_21DBF8E0C();
  return result;
}

void TTRRecurrenceRuleModel.weeksOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 44);

  *(v1 + v3) = a1;
}

double TTRRecurrenceRuleModel.monthsOfTheYear.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  sub_21DBF8E0C();
  return result;
}

void TTRRecurrenceRuleModel.monthsOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 48);

  *(v1 + v3) = a1;
}

double TTRRecurrenceRuleModel.setPositions.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  sub_21DBF8E0C();
  return result;
}

void TTRRecurrenceRuleModel.setPositions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 52);

  *(v1 + v3) = a1;
}

int *TTRRecurrenceRuleModel.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(a1 + result[5]) = 0;
  *(a1 + result[6]) = 0;
  *(a1 + result[7]) = 0;
  *(a1 + result[8]) = 0;
  *(a1 + result[9]) = 0;
  *(a1 + result[10]) = 0;
  *(a1 + result[11]) = 0;
  *(a1 + result[12]) = 0;
  *(a1 + result[13]) = 0;
  return result;
}

char *sub_21D7D7330(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_21D212558(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_21D212558((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  *&v2[16 * v4 + 32] = xmmword_21DC241F0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_21D212558((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    *&v2[16 * v6 + 32] = xmmword_21DC292E0;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_21D212558((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    *&v2[16 * v8 + 32] = xmmword_21DC292F0;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_21D212558((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  *&v2[16 * v10 + 32] = xmmword_21DC29300;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = sub_21D212558((v11 > 1), v12 + 1, 1, v2);
  }

  *(v2 + 2) = v12 + 1;
  *&v2[16 * v12 + 32] = xmmword_21DC18630;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      return v2;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_21D212558((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  *&v2[16 * v14 + 32] = xmmword_21DC292D0;
  if ((a1 & 0x40) != 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_21D212558((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    *&v2[16 * v16 + 32] = xmmword_21DC11550;
  }

  return v2;
}

Swift::Void __swiftcall TTRRecurrenceRuleModel.setDay(_:setPosition:)(RemindersUICore::TTRRecurrenceRuleModel::Day _, Swift::Int_optional setPosition)
{
  is_nil = setPosition.is_nil;
  value = setPosition.value;
  v5 = *_;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960, &qword_21DC0CEF0);
  switch(v5)
  {
    case 9:
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC08D20;
      *(v6 + 32) = xmmword_21DC11550;
      *(v6 + 48) = 7;
      *(v6 + 56) = 0;
      if (is_nil)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    case 8:
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC1C120;
      *(v6 + 32) = xmmword_21DC241F0;
      *(v6 + 48) = xmmword_21DC292E0;
      *(v6 + 64) = xmmword_21DC292F0;
      *(v6 + 80) = xmmword_21DC29300;
      *(v6 + 96) = 6;
      *(v6 + 104) = 0;
      if (is_nil)
      {
LABEL_7:
        v7 = 0;
        goto LABEL_14;
      }

LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0, &unk_21DC0D000);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21DC08D00;
      *(v7 + 32) = value;
      goto LABEL_14;
    case 7:
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC0B380;
      *(v6 + 32) = xmmword_21DC11550;
      *(v6 + 48) = xmmword_21DC241F0;
      *(v6 + 64) = xmmword_21DC292E0;
      *(v6 + 80) = xmmword_21DC292F0;
      *(v6 + 96) = xmmword_21DC29300;
      *(v6 + 112) = xmmword_21DC18630;
      *(v6 + 128) = 7;
      *(v6 + 136) = 0;
      if (!is_nil)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
  }

  v8 = swift_allocObject();
  v6 = v8;
  v7 = 0;
  *(v8 + 16) = xmmword_21DC08D00;
  if (is_nil)
  {
    v9 = 0;
  }

  else
  {
    v9 = value;
  }

  *(v8 + 32) = v5 + 1;
  *(v8 + 40) = v9;
LABEL_14:
  v10 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v11 = *(v10 + 52);

  *(v2 + v11) = v7;
  v12 = *(v10 + 32);

  *(v2 + v12) = v6;
}

id sub_21D7D789C()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TTRRecurrenceEndModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_21D3139B4(v1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &unk_27CE62610, &unk_21DC0DF00);
    return 0;
  }

  else
  {
    sub_21D7DA7B4(v8, v15, type metadata accessor for TTRRecurrenceEndModel);
    sub_21D7DB218(v15, v12, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];
      sub_21D23D650(v15, type metadata accessor for TTRRecurrenceEndModel);
      return v17;
    }

    else
    {
      (*(v3 + 32))(v5, v12, v2);
      v18 = sub_21DBF55BC();
      v19 = [objc_opt_self() recurrenceEndWithEndDate_];

      (*(v3 + 8))(v5, v2);
      sub_21D23D650(v15, type metadata accessor for TTRRecurrenceEndModel);
      return v19;
    }
  }
}

double TTRRecurrenceRuleModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRecurrenceEndModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  sub_21D3139B4(v2, &v44 - v15);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21D7DA7B4(v16, v13, type metadata accessor for TTRRecurrenceEndModel);
    sub_21DBFC7FC();
    sub_21D7DB218(v13, v10, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v10;
      MEMORY[0x223D44FA0](1);
      MEMORY[0x223D44FA0](v17);
    }

    else
    {
      (*(v4 + 32))(v6, v10, v3);
      MEMORY[0x223D44FA0](0);
      sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_21DBFA00C();
      (*(v4 + 8))(v6, v3);
    }

    sub_21D23D650(v13, type metadata accessor for TTRRecurrenceEndModel);
  }

  v18 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x223D44FA0](*(v2 + v18[5]));
  MEMORY[0x223D44FA0](*(v2 + v18[6]));
  MEMORY[0x223D44FA0](*(v2 + v18[7]));
  v19 = *(v2 + v18[8]);
  if (v19)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v19 + 16));
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 40);
      do
      {
        v22 = *v21;
        MEMORY[0x223D44FA0](*(v21 - 1));
        MEMORY[0x223D44FA0](v22);
        v21 += 2;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v23 = *(v2 + v18[9]);
  if (v23)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v23 + 16));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = (v23 + 32);
      do
      {
        v26 = *v25++;
        MEMORY[0x223D44FA0](v26);
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v27 = *(v2 + v18[10]);
  if (v27)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v27 + 16));
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 32);
      do
      {
        v30 = *v29++;
        MEMORY[0x223D44FA0](v30);
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v31 = *(v2 + v18[11]);
  if (v31)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v31 + 16));
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = (v31 + 32);
      do
      {
        v34 = *v33++;
        MEMORY[0x223D44FA0](v34);
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v35 = *(v2 + v18[12]);
  if (v35)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v35 + 16));
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = (v35 + 32);
      do
      {
        v38 = *v37++;
        MEMORY[0x223D44FA0](v38);
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v39 = *(v2 + v18[13]);
  if (v39)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v39 + 16));
    v41 = *(v39 + 16);
    if (v41)
    {
      v42 = (v39 + 32);
      do
      {
        v43 = *v42++;
        MEMORY[0x223D44FA0](v43);
        --v41;
      }

      while (v41);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  return result;
}

uint64_t TTRRecurrenceRuleModel.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D7D810C()
{
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D7D8150(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)(v2);
  return sub_21DBFC82C();
}

RemindersUICore::TTRRecurrenceRuleModel::Week_optional __swiftcall TTRRecurrenceRuleModel.Week.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RemindersUICore::TTRRecurrenceRuleModel::Day_optional __swiftcall TTRRecurrenceRuleModel.Day.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xA)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21D7D81D4()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1 + 1);
  return sub_21DBFC82C();
}

uint64_t sub_21D7D824C(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v2 + 1);
  return sub_21DBFC82C();
}

uint64_t TTRRecurrenceRuleModel.DaysType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

Swift::tuple_RemindersUICore_TTRRecurrenceRuleModel_Week_RemindersUICore_TTRRecurrenceRuleModel_Day_optional __swiftcall TTRRecurrenceRuleModel.weekAndDay()()
{
  v2 = v0;
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v1 + *(v3 + 32));
  if (v5 && v5[2])
  {
    v7 = v5[4];
    v6 = v5[5];
    if (v6 != -1)
    {
      v8 = __OFSUB__(v6, 1);
      v9 = v6 - 1;
      if (v8)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 != -1)
      {
        goto LABEL_6;
      }

      v12 = *(v1 + *(v3 + 52));
      if (!v12 || *(v12 + 16) != 1)
      {
        v10 = 0;
        goto LABEL_18;
      }

      v13 = *(v12 + 32);
      if (v13 != -1)
      {
        v8 = __OFSUB__(v13, 1);
        v9 = v13 - 1;
        if (!v8)
        {
LABEL_6:
          if (v9 <= 5)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_18;
        }

        __break(1u);
      }
    }

    v10 = 5;
LABEL_18:
    sub_21D7D8444(&v17);
    if (v17 > 1u)
    {
      if (v17 == 2)
      {
        v14 = 8;
      }

      else
      {
        v14 = 9;
      }
    }

    else if (v17)
    {
      v14 = 7;
    }

    else
    {
      LOBYTE(v3) = TTRRecurrenceRuleModel.Day.init(rawValue:)(v7);
      v14 = v16;
      if (v16 == 10)
      {
        v14 = 0;
      }
    }

    v11 = v10 | (v14 << 8);
    goto LABEL_28;
  }

  v11 = 6;
LABEL_28:
  *v2 = v11;
LABEL_30:
  result.value._0 = v3;
  result.value._1 = v4;
  return result;
}

void sub_21D7D8444(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for TTRRecurrenceRuleModel(0) + 32));
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v42 = MEMORY[0x277D84F90];
      sub_21D18E658(0, v4, 0);
      v5 = v42;
      v6 = (v3 + 32);
      v7 = *(v42 + 16);
      v8 = v4;
      do
      {
        v10 = *v6;
        v6 += 2;
        v9 = v10;
        v43 = v5;
        v11 = *(v5 + 24);
        v12 = v7 + 1;
        if (v7 >= v11 >> 1)
        {
          sub_21D18E658((v11 > 1), v7 + 1, 1);
          v5 = v43;
        }

        *(v5 + 16) = v12;
        *(v5 + 8 * v7++ + 32) = v9;
        --v8;
      }

      while (v8);
      switch(v4)
      {
        case 7:
          v28 = 0;
          while (v12 != v28)
          {
            v29 = v5 + 8 * v28++;
            if (*(v29 + 32) == 1)
            {
              v30 = 0;
              while (v12 != v30)
              {
                v31 = v5 + 8 * v30++;
                if (*(v31 + 32) == 2)
                {
                  v32 = 0;
                  while (v12 != v32)
                  {
                    v33 = v5 + 8 * v32++;
                    if (*(v33 + 32) == 3)
                    {
                      v34 = 0;
                      while (v12 != v34)
                      {
                        v35 = v5 + 8 * v34++;
                        if (*(v35 + 32) == 4)
                        {
                          v36 = 0;
                          while (v12 != v36)
                          {
                            v37 = v5 + 8 * v36++;
                            if (*(v37 + 32) == 5)
                            {
                              v38 = 0;
                              while (v12 != v38)
                              {
                                v39 = v5 + 8 * v38++;
                                if (*(v39 + 32) == 6)
                                {
                                  v40 = 0;
                                  while (v12 != v40)
                                  {
                                    v41 = v5 + 8 * v40++;
                                    if (*(v41 + 32) == 7)
                                    {

                                      v17 = 1;
                                      goto LABEL_57;
                                    }
                                  }

                                  goto LABEL_55;
                                }
                              }

                              goto LABEL_55;
                            }
                          }

                          goto LABEL_55;
                        }
                      }

                      goto LABEL_55;
                    }
                  }

                  goto LABEL_55;
                }
              }

              goto LABEL_55;
            }
          }

          break;
        case 5:
          v18 = 0;
          while (v12 != v18)
          {
            v19 = v5 + 8 * v18++;
            if (*(v19 + 32) == 2)
            {
              v20 = 0;
              while (v12 != v20)
              {
                v21 = v5 + 8 * v20++;
                if (*(v21 + 32) == 3)
                {
                  v22 = 0;
                  while (v12 != v22)
                  {
                    v23 = v5 + 8 * v22++;
                    if (*(v23 + 32) == 4)
                    {
                      v24 = 0;
                      while (v12 != v24)
                      {
                        v25 = v5 + 8 * v24++;
                        if (*(v25 + 32) == 5)
                        {
                          v26 = 0;
                          while (v12 != v26)
                          {
                            v27 = v5 + 8 * v26++;
                            if (*(v27 + 32) == 6)
                            {

                              v17 = 2;
                              goto LABEL_57;
                            }
                          }

                          goto LABEL_55;
                        }
                      }

                      goto LABEL_55;
                    }
                  }

                  goto LABEL_55;
                }
              }

              goto LABEL_55;
            }
          }

          break;
        case 2:
          v13 = 0;
          while (v12 != v13)
          {
            v14 = v5 + 8 * v13++;
            if (*(v14 + 32) == 1)
            {
              v15 = 0;
              while (v12 != v15)
              {
                v16 = v5 + 8 * v15++;
                if (*(v16 + 32) == 7)
                {

                  v17 = 3;
                  goto LABEL_57;
                }
              }

              goto LABEL_55;
            }
          }

          break;
      }
    }

LABEL_55:
  }

  v17 = 0;
LABEL_57:
  *a1 = v17;
}

Swift::Void __swiftcall TTRRecurrenceRuleModel.setWeekAndDay(weeks:days:)(RemindersUICore::TTRRecurrenceRuleModel::Week weeks, RemindersUICore::TTRRecurrenceRuleModel::Day days)
{
  v3 = days;
  v4 = weeks;
  v5 = *(v2 + *(type metadata accessor for TTRRecurrenceRuleModel(0) + 20));
  if (v5 > 4)
  {
    if (qword_27CE56CD0 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE61AF0);
    v10 = MEMORY[0x277D84F90];
    v11 = sub_21D17716C(MEMORY[0x277D84F90]);
    v12 = sub_21D17716C(v10);
    sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2, v11, v12);
    __break(1u);
  }

  else if (((1 << v5) & 0x13) != 0)
  {
    if (qword_27CE56CD0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61AF0);
    oslog = sub_21DBF84AC();
    v7 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v7, "setWeekAndDay called for frequencies other .monthly or .yearly", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }
  }

  else
  {
    v16.value = qword_21DC29748[*v4];
    v14 = *v3;
    v16.is_nil = 0;
    TTRRecurrenceRuleModel.setDay(_:setPosition:)(&v14, v16);
  }
}

void sub_21D7D8908(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (*(v5 + v10[5]) != 2 || (v11 = *(v5 + v10[13])) != 0 && *(v11 + 16) || (v12 = *(v5 + v10[8])) != 0 && *(v12 + 16) || (v13 = *(v5 + v10[9])) != 0 && *(v13 + 16))
  {
    sub_21D7DB218(v5, a4, type metadata accessor for TTRRecurrenceRuleModel);
    return;
  }

  v14 = v10;
  sub_21D7DB218(v5, a4, type metadata accessor for TTRRecurrenceRuleModel);
  if ((a3 & 1) == 0)
  {
    v15 = v14[13];

    *(a4 + v15) = &unk_282EA6CF8;
    v16 = a2 - a1;
    if (__OFSUB__(a2, a1))
    {
      __break(1u);
    }

    else
    {
      v17 = v16 + 1;
      if (!__OFADD__(v16, 1))
      {
        if (v16 != -1)
        {
          v18 = sub_21D9D6588(v16 + 1, 0);
          if (sub_21D1985F4(&v20, (v18 + 4), v17, a1, a2) == v17)
          {
LABEL_17:
            v19 = v14[9];

            *(a4 + v19) = v18;
            return;
          }

          __break(1u);
        }

        v18 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

uint64_t TTRRecurrenceRuleModel.adjustingFixUp(from:to:)(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21D7DAFA0(a2);
  v12 = v11;
  v14 = v13;
  if ((sub_21D7D8BE8(v10, v11, v13 & 1) & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = sub_21D7DAFA0(a3);
  v18 = v17;
  if ((v14 & 1) == 0)
  {
    if ((v17 & 1) != 0 || v10 != v15 || v12 != v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_21D7DB218(v3, a1, type metadata accessor for TTRRecurrenceRuleModel);
    return 0;
  }

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_9:
  v20 = v15;
  v21 = v3;
  v22 = v16;
  sub_21D7DB218(v21, v9, type metadata accessor for TTRRecurrenceRuleModel);
  v23 = *(v7 + 52);

  *&v9[v23] = 0;
  v24 = *(v7 + 36);

  *&v9[v24] = 0;
  sub_21D7D8908(v20, v22, v18 & 1, a1);
  sub_21D23D650(v9, type metadata accessor for TTRRecurrenceRuleModel);
  return 1;
}

uint64_t sub_21D7D8BE8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (*(v3 + v7[5]) != 2)
  {
    return 0;
  }

  v8 = *(v3 + v7[8]);
  if (v8)
  {
    if (*(v8 + 16))
    {
      return 0;
    }
  }

  v9 = *(v3 + v7[13]);
  if ((a3 & 1) == 0)
  {
    if (!v9)
    {
      return 0;
    }

    v12 = v7;
    result = sub_21D1D76BC(*(v3 + v7[13]), &unk_282EA7AA0);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v13 = a2 - a1;
    if (__OFSUB__(a2, a1))
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        v15 = *(v3 + v12[9]);
        if (v13 == -1)
        {
          v16 = MEMORY[0x277D84F90];
          if (v15)
          {
            goto LABEL_16;
          }

          goto LABEL_19;
        }

        v16 = sub_21D9D6588(v14, 0);
        result = sub_21D1985F4(&v18, (v16 + 4), v14, a1, a2);
        if (result == v14)
        {
          if (v15)
          {
LABEL_16:
            v17 = sub_21D1D76BC(v15, v16);

            return v17 & 1;
          }

LABEL_19:

          return 0;
        }

LABEL_24:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v9 && *(v9 + 16))
  {
    return 0;
  }

  v10 = *(v3 + v7[9]);
  return !v10 || *(v10 + 16) == 0;
}

void TTRRecurrenceEndModel.init(_:recurrenceRule:)(_BYTE *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v98 = a1;
  v91 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v100 = &v87[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v87[-v7];
  v104 = sub_21DBF563C();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v10 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v95 = &v87[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v87[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v87[-v17];
  v99 = sub_21DBF509C();
  isa = v99[-1].isa;
  MEMORY[0x28223BE20](v99);
  v89 = &v87[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v90 = &v87[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v87[-v23];
  MEMORY[0x28223BE20](v25);
  v103 = &v87[-v26];
  v27 = sub_21DBF5A2C();
  v101 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v87[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  v31 = [a2 frequency];
  v92 = v27;
  v93 = a2;
  if (v31 <= 1)
  {
    v32 = v98;
    if (!v31)
    {
LABEL_10:
      (*(v101 + 56))(v18, 1, 1, v27);
      v34 = sub_21DBF5C4C();
      (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
      sub_21DBF504C();
      goto LABEL_11;
    }

    if (v31 == 1)
    {
      [a2 interval];
      (*(v101 + 56))(v18, 1, 1, v27);
      v33 = sub_21DBF5C4C();
      (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
      sub_21DBF504C();
      v32 = v98;
LABEL_11:
      sub_21DBF597C();
      v35 = *(v102 + 48);
      v36 = v35(v8, 1, v104);
      v37 = v99;
      v97 = v29;
      v94 = v10;
      if (v36 == 1)
      {
        sub_21D0CF7E0(v8, &qword_27CE58D68, &unk_21DC0C060);
        if (qword_27CE56CD0 != -1)
        {
          swift_once();
        }

        v38 = sub_21DBF84BC();
        __swift_project_value_buffer(v38, qword_27CE61AF0);
        v39 = isa;
        (*(isa + 2))(v24, v32, v37);
        v40 = sub_21DBF84AC();
        v41 = sub_21DBFAECC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v105 = v43;
          *v42 = 136315138;
          sub_21D7DB280(&qword_27CE5A8F0, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
          v44 = sub_21DBFC5BC();
          v45 = v39;
          v47 = v46;
          (*(v45 + 1))(v24, v99);
          v48 = sub_21D0CDFB4(v44, v47, &v105);
          v32 = v98;

          *(v42 + 4) = v48;
          _os_log_impl(&dword_21D0C9000, v40, v41, "Unable to create dueDate from components -- Falling back to now() {dueDateComponents: %s}", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x223D46520](v43, -1, -1);
          v49 = v42;
          v37 = v99;
          MEMORY[0x223D46520](v49, -1, -1);
        }

        else
        {

          (*(v39 + 1))(v24, v37);
        }

        v10 = v94;
        v50 = v95;
        v51 = v103;
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      }

      else
      {
        v50 = v95;
        (*(v102 + 32))();
        v51 = v103;
      }

      v52 = v100;
      v53 = v97;
      sub_21DBF598C();
      if (v35(v52, 1, v104) == 1)
      {
        v54 = v32;
        sub_21D0CF7E0(v100, &qword_27CE58D68, &unk_21DC0C060);
        if (qword_27CE56CD0 != -1)
        {
          swift_once();
        }

        v55 = sub_21DBF84BC();
        __swift_project_value_buffer(v55, qword_27CE61AF0);
        v56 = isa;
        v57 = *(isa + 2);
        v58 = v90;
        v57(v90, v54, v37);
        v59 = v89;
        v57(v89, v103, v37);
        v60 = sub_21DBF84AC();
        v61 = sub_21DBFAECC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v105 = v100;
          *v62 = 136315394;
          sub_21D7DB280(&qword_27CE5A8F0, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
          v99 = v60;
          v63 = sub_21DBFC5BC();
          v64 = v56;
          v66 = v65;
          v88 = v61;
          v67 = *(v64 + 1);
          v67(v58, v37);
          v68 = sub_21D0CDFB4(v63, v66, &v105);
          v69 = v98;

          *(v62 + 4) = v68;
          *(v62 + 12) = 2080;
          v70 = sub_21DBFC5BC();
          v72 = v71;
          v67(v59, v37);
          v73 = sub_21D0CDFB4(v70, v72, &v105);
          v10 = v94;

          *(v62 + 14) = v73;
          v74 = v99;
          _os_log_impl(&dword_21D0C9000, v99, v88, "Unable to calculate date by adding dateComponents -- Falling back to now() {dueDateComponents: %s, dateComponentsToAdd: %s}", v62, 0x16u);
          v75 = v100;
          swift_arrayDestroy();
          MEMORY[0x223D46520](v75, -1, -1);
          v76 = v62;
          v50 = v95;
          MEMORY[0x223D46520](v76, -1, -1);

          v77 = v97;
        }

        else
        {

          v67 = *(v56 + 1);
          v67(v59, v37);
          v67(v58, v37);
          v77 = v97;
          v69 = v54;
          v10 = v94;
        }

        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();

        v67(v69, v37);
        v82 = v102;
        (*(v102 + 8))(v50, v104);
        v67(v103, v37);
        (*(v101 + 8))(v77, v92);
        v81 = *(v82 + 32);
      }

      else
      {

        v78 = *(isa + 1);
        v78(v32, v37);
        v79 = v102;
        v80 = v104;
        (*(v102 + 8))(v50, v104);
        v78(v51, v37);
        (*(v101 + 8))(v53, v92);
        v81 = *(v79 + 32);
        v81(v10, v100, v80);
      }

      v81(v91, v10, v104);
      type metadata accessor for TTRRecurrenceEndModel(0);
      swift_storeEnumTagMultiPayload();
      return;
    }
  }

  else
  {
    v32 = v98;
    if (v31 == 2 || v31 == 3 || v31 == 4)
    {
      goto LABEL_10;
    }
  }

  if (qword_27CE56CD0 != -1)
  {
    swift_once();
  }

  v83 = sub_21DBF84BC();
  __swift_project_value_buffer(v83, qword_27CE61AF0);
  v84 = MEMORY[0x277D84F90];
  v85 = sub_21D17716C(MEMORY[0x277D84F90]);
  v86 = sub_21D17716C(v84);
  sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2, v85, v86);
  __break(1u);
}

uint64_t TTRRecurrenceEndModel.normalizingEndDate()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D7DB218(v1, v9, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D7DB218(v1, a1, type metadata accessor for TTRRecurrenceEndModel);
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_21DBF554C();
  sub_21DBF553C();
  (*(v4 + 8))(v6, v3);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRecurrenceEndModel.hash(into:)(uint64_t a1)
{
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D7DB218(v1, v8, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x223D44FA0](1);
    return MEMORY[0x223D44FA0](v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21DBFA00C();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t TTRRecurrenceEndModel.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBFC7DC();
  sub_21D7DB218(v1, v8, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x223D44FA0](1);
    MEMORY[0x223D44FA0](v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21DBFA00C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D7DA1DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D7DB218(v2, v9, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    MEMORY[0x223D44FA0](1);
    return MEMORY[0x223D44FA0](v10);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21DBFA00C();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21D7DA3AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBFC7DC();
  sub_21D7DB218(v3, v10, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x223D44FA0](1);
    MEMORY[0x223D44FA0](v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21DBFA00C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_21DBFC82C();
}

uint64_t TTRRecurrenceDayOfWeekModel.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x223D44FA0](*v0);
  return MEMORY[0x223D44FA0](v1);
}

uint64_t TTRRecurrenceDayOfWeekModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D7DA6C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D7DA720()
{
  v1 = v0[1];
  MEMORY[0x223D44FA0](*v0);
  return MEMORY[0x223D44FA0](v1);
}

uint64_t sub_21D7DA75C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v2);
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D7DA7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7DA81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s15RemindersUICore21TTRRecurrenceEndModelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v23 = sub_21DBF563C();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B38, &qword_21DC29730);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_21D7DB218(a1, &v22 - v14, type metadata accessor for TTRRecurrenceEndModel);
  sub_21D7DB218(a2, &v15[v17], type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D7DB218(v15, v9, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *v9 == *&v15[v17];
LABEL_8:
      sub_21D23D650(v15, type metadata accessor for TTRRecurrenceEndModel);
      return v18 & 1;
    }
  }

  else
  {
    sub_21D7DB218(v15, v12, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = v23;
      (*(v4 + 32))(v6, &v15[v17], v23);
      v18 = sub_21DBF55EC();
      v20 = *(v4 + 8);
      v20(v6, v19);
      v20(v12, v19);
      goto LABEL_8;
    }

    (*(v4 + 8))(v12, v23);
  }

  sub_21D0CF7E0(v15, &qword_27CE61B38, &qword_21DC29730);
  v18 = 0;
  return v18 & 1;
}

uint64_t _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceEndModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B40, &unk_21DC29738);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v15 = *(v14 + 56);
  sub_21D3139B4(a1, &v44 - v12);
  sub_21D3139B4(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE62610, &unk_21DC0DF00);
      goto LABEL_8;
    }

LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE61B40, &unk_21DC29738);
    goto LABEL_38;
  }

  sub_21D3139B4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D23D650(v10, type metadata accessor for TTRRecurrenceEndModel);
    goto LABEL_6;
  }

  sub_21D7DA7B4(&v13[v15], v7, type metadata accessor for TTRRecurrenceEndModel);
  v17 = _s15RemindersUICore21TTRRecurrenceEndModelO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_21D23D650(v7, type metadata accessor for TTRRecurrenceEndModel);
  sub_21D23D650(v10, type metadata accessor for TTRRecurrenceEndModel);
  sub_21D0CF7E0(v13, &unk_27CE62610, &unk_21DC0DF00);
  if ((v17 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_8:
  v18 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (*(a1 + v18[5]) != *(a2 + v18[5]) || *(a1 + v18[6]) != *(a2 + v18[6]) || *(a1 + v18[7]) != *(a2 + v18[7]))
  {
    goto LABEL_38;
  }

  v19 = v18[8];
  v20 = *(a2 + v19);
  if (*(a1 + v19))
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = v18;
    v22 = sub_21D1D7644(*(a1 + v19), v20);
    v18 = v21;
    if ((v22 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v20)
  {
    goto LABEL_38;
  }

  v23 = v18[9];
  v24 = *(a2 + v23);
  if (*(a1 + v23))
  {
    if (!v24)
    {
      goto LABEL_38;
    }

    v25 = v18;
    v26 = sub_21D1D76BC(*(a1 + v23), v24);
    v18 = v25;
    if ((v26 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v24)
  {
    goto LABEL_38;
  }

  v27 = v18[10];
  v28 = *(a2 + v27);
  if (*(a1 + v27))
  {
    if (!v28)
    {
      goto LABEL_38;
    }

    v29 = v18;
    v30 = sub_21D1D76BC(*(a1 + v27), v28);
    v18 = v29;
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v28)
  {
    goto LABEL_38;
  }

  v31 = v18[11];
  v32 = *(a2 + v31);
  if (*(a1 + v31))
  {
    if (!v32)
    {
      goto LABEL_38;
    }

    v33 = v18;
    v34 = sub_21D1D76BC(*(a1 + v31), v32);
    v18 = v33;
    if ((v34 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v32)
  {
    goto LABEL_38;
  }

  v35 = v18[12];
  v36 = *(a2 + v35);
  if (!*(a1 + v35))
  {
    if (!v36)
    {
      goto LABEL_34;
    }

LABEL_38:
    v42 = 0;
    return v42 & 1;
  }

  if (!v36)
  {
    goto LABEL_38;
  }

  v37 = v18;
  v38 = sub_21D1D76BC(*(a1 + v35), v36);
  v18 = v37;
  if ((v38 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v39 = v18[13];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  v42 = (v40 | v41) == 0;
  if (v40 && v41)
  {
    v42 = sub_21D1D76BC(v40, v41);
  }

  return v42 & 1;
}

uint64_t sub_21D7DAFA0(void *a1)
{
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF5A0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF5A2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9968], v6);
  v14 = [a1 date];
  sub_21DBF55FC();

  v15 = sub_21DBF5A1C();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  if ((v15 - 32) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    return 28;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D7DB218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7DB280(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D7DB314()
{
  result = qword_27CE61B10;
  if (!qword_27CE61B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRecurrenceRuleModel.Week, &type metadata for TTRRecurrenceRuleModel.Week, v0, v1);
    atomic_store(result, &qword_27CE61B10);
  }

  return result;
}

unint64_t sub_21D7DB36C()
{
  result = qword_27CE61B18;
  if (!qword_27CE61B18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRecurrenceRuleModel.Day, &type metadata for TTRRecurrenceRuleModel.Day, v0, v1);
    atomic_store(result, &qword_27CE61B18);
  }

  return result;
}

unint64_t sub_21D7DB3C4()
{
  result = qword_27CE61B20;
  if (!qword_27CE61B20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRecurrenceRuleModel.DaysType, &type metadata for TTRRecurrenceRuleModel.DaysType, v0, v1);
    atomic_store(result, &qword_27CE61B20);
  }

  return result;
}

unint64_t sub_21D7DB464()
{
  result = qword_27CE61B30;
  if (!qword_27CE61B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRecurrenceDayOfWeekModel, &type metadata for TTRRecurrenceDayOfWeekModel, v0, v1);
    atomic_store(result, &qword_27CE61B30);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRecurrenceRuleModel(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRecurrenceEndModel(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v8 + 64));
      }

      else
      {
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        swift_storeEnumTagMultiPayload();
      }

      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v12) = *(a2 + v12);
    v13 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v13) = *(a2 + v13);
    v14 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v14) = *(a2 + v14);
    v15 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + v15) = *(a2 + v15);
    *(a1 + a3[13]) = *(a2 + a3[13]);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

double destroy for TTRRecurrenceRuleModel(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceEndModel(0);
  if (!(*(*(v2 - 8) + 48))(a1, 1, v2) && !swift_getEnumCaseMultiPayload())
  {
    v3 = sub_21DBF563C();
    (*(*(v3 - 8) + 8))(a1, v3);
  }

  return result;
}

char *initializeWithCopy for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v12] = *&a2[v12];
  v13 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v13] = *&a2[v13];
  *&a1[a3[13]] = *&a2[a3[13]];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
      if (!swift_getEnumCaseMultiPayload())
      {
        v14 = sub_21DBF563C();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
LABEL_7:
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  sub_21DBF8E0C();

  *&a1[a3[9]] = *&a2[a3[9]];
  sub_21DBF8E0C();

  *&a1[a3[10]] = *&a2[a3[10]];
  sub_21DBF8E0C();

  *&a1[a3[11]] = *&a2[a3[11]];
  sub_21DBF8E0C();

  *&a1[a3[12]] = *&a2[a3[12]];
  sub_21DBF8E0C();

  *&a1[a3[13]] = *&a2[a3[13]];
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v12] = *&a2[v12];
  v13 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v13] = *&a2[v13];
  *&a1[a3[13]] = *&a2[a3[13]];
  return a1;
}

char *assignWithTake for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
      if (!swift_getEnumCaseMultiPayload())
      {
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(a1, a2, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
LABEL_7:
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 32))(a1, a2, v12);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v13 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[v14] = *&a2[v14];

  *&a1[a3[9]] = *&a2[a3[9]];

  *&a1[a3[10]] = *&a2[a3[10]];

  *&a1[a3[11]] = *&a2[a3[11]];

  *&a1[a3[12]] = *&a2[a3[12]];

  *&a1[a3[13]] = *&a2[a3[13]];

  return a1;
}

void sub_21D7DC200(uint64_t a1)
{
  sub_21D31395C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for TTRRecurrenceRuleModel.Day(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRecurrenceRuleModel.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRecurrenceEndModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v5 + 64);

  return memcpy(a1, a2, v7);
}

uint64_t destroy for TTRRecurrenceEndModel(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v4 = sub_21DBF563C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithCopy for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *initializeWithTake for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D7DC91C(uint64_t a1)
{
  result = sub_21DBF563C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D7DC9C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v4 = a1;
    v6 = a3 >> 62;
    if (!(a3 >> 62))
    {
      v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 < v7)
      {
        v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 < v4)
      {
        goto LABEL_38;
      }

      if (v8 >= v4)
      {
        goto LABEL_7;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v20 = sub_21DBFBD7C();
  if (v20 < v7)
  {
    v7 = v20;
  }

  if (v7 < v4)
  {
    goto LABEL_38;
  }

  if (sub_21DBFBD7C() < v4)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v4 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6)
  {
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < v7)
  {
    goto LABEL_40;
  }

  if (v7 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v5 & 0xC000000000000001) == 0 || v7 == v4)
  {
    sub_21DBF8E0C();
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_22:

    v5 = sub_21DBFC3BC();
    v4 = v13;
    v7 = v14;
    if (v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_21D198B38(v5, v12, v4, v7);
    v16 = v15;
LABEL_30:
    swift_unknownObjectRelease();
    return v16;
  }

  if (v7 <= v4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21DBF8E0C();
  v10 = v4;
  do
  {
    v11 = v10 + 1;
    sub_21DBFBF6C();
    v10 = v11;
  }

  while (v7 != v11);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_19:
  v5 &= 0xFFFFFFFFFFFFFF8uLL;
  v12 = v5 + 32;
  v7 = (2 * v7) | 1;
  if ((v7 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v6 = v12;
  sub_21DBFC66C();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v7 >> 1, v4))
  {
    goto LABEL_43;
  }

  if (v18 != (v7 >> 1) - v4)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v12 = v6;
    goto LABEL_23;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v16)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  return v16;
}

uint64_t sub_21D7DCC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21D0D3954(a3, v22 - v9, &unk_27CE5F150, &qword_21DC0D090);
  v11 = sub_21DBFA89C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5F150, &qword_21DC0D090);
  }

  else
  {
    sub_21DBFA88C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21DBFA7CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21DBFA1EC() + 32;
      sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21D7DCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21D0D3954(a3, v23 - v10, &unk_27CE5F150, &qword_21DC0D090);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5F150, &qword_21DC0D090);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21D7DD108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21D0D3954(a3, v22 - v9, &unk_27CE5F150, &qword_21DC0D090);
  v11 = sub_21DBFA89C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5F150, &qword_21DC0D090);
  }

  else
  {
    sub_21DBFA88C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21DBFA7CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21DBFA1EC() + 32;
      sub_21DBF78CC();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DBF78CC();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21D7DD3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  sub_21D0D3954(a3, v26 - v13, &unk_27CE5F150, &qword_21DC0D090);
  v15 = sub_21DBFA89C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_21D0CF7E0(v14, &unk_27CE5F150, &qword_21DC0D090);
  }

  else
  {
    sub_21DBFA88C();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_21DBFA7CC();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_21DBFA1EC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_21D7DD624()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61B48);
  v1 = __swift_project_value_buffer(v0, qword_27CE61B48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRHashtagAssociationInteractor.__allocating_init(store:backgroundTaskPerformer:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = a1;
  sub_21D0D0FD0(a2, v4 + 32);
  return v4;
}

uint64_t TTRHashtagAssociationInteractor.confirmationMessage(forRemovingHashtagLabels:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v3[5] = swift_task_alloc();
  sub_21DBFA84C();
  v3[6] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_21D7DD8AC, v5, v4);
}

uint64_t sub_21D7DD8AC(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[3];
  sub_21DBFA85C();
  v5 = sub_21DBFA89C();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v6[5] = v4;

  sub_21DBF8E0C();
  v7 = sub_21D7DCEA0(0, 0, v3, &unk_21DC297A8, v6, &type metadata for TTRHashtagAssociationDeleteTagConfirmationMessage);
  v1[9] = v7;
  sub_21D0CF7E0(v3, &unk_27CE5F150, &qword_21DC0D090);
  v8 = swift_task_alloc();
  v1[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  *v8 = v1;
  v8[1] = sub_21D7DDA48;
  v10 = v1[2];
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v10, v7, &type metadata for TTRHashtagAssociationDeleteTagConfirmationMessage, v9, v11);
}

uint64_t sub_21D7DDA48()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_21D7DDBFC;
  }

  else
  {
    v5 = sub_21D7DDB84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7DDB84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DDBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DDC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40, &qword_21DC18E80);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_21DBF78CC();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_21DBF74BC();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D7DDDFC, 0, 0);
}

uint64_t sub_21D7DDDFC()
{
  v31 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = MEMORY[0x277D84FA0];
  *v1 = v0[4];
  v1[1] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D45538], v3);
  sub_21DBF8E0C();
  v5 = sub_21D7DE21C(v1);
  (*(v2 + 8))(v1, v3);
  if (v5 >> 62)
  {
    v29 = sub_21DBFBD7C();
  }

  else
  {
    v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0[4];

  v7 = *(v6 + 16);
  if (v7 && (v8 = v0[4], v9 = sub_21D9D6344(*(v6 + 16), 0), v27 = sub_21D9D4F98(&v30, v9 + 4, v7, v8), v10 = v30, sub_21DBF8E0C(), result = sub_21D0CFAF8(v10), v27 != v7))
  {
    __break(1u);
  }

  else
  {
    v12 = v0[10];
    sub_21DBF784C();
    v13 = sub_21D7DE800(v12, 1);
    v14 = MEMORY[0x277D84F90];
    v30 = MEMORY[0x277D84F90];
    v15 = v13[2];
    v28 = v13;
    if (v15)
    {
      v16 = v0[6];
      v17 = v0[7];
      v18 = *(v0[5] + 36);
      v19 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v20 = *(v16 + 72);
      do
      {
        sub_21D0D3954(v19, v0[7], &qword_27CE59B40, &qword_21DC18E80);
        v21 = v0[7];
        if (*(v17 + v18) == 1)
        {
          v22 = *v21;
          v23 = sub_21D0CF7E0(v21, &qword_27CE59B40, &qword_21DC18E80);
          MEMORY[0x223D42D80](v23);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v14 = v30;
        }

        else
        {
          sub_21D0CF7E0(v0[7], &qword_27CE59B40, &qword_21DC18E80);
        }

        v19 += v20;
        --v15;
      }

      while (v15);
    }

    v24 = v0[2];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v25 = v28[2];

    *v24 = v29;
    v24[1] = v25;
    v24[2] = v14;

    v26 = v0[1];

    return v26();
  }

  return result;
}

uint64_t sub_21D7DE15C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D7DDC74(a1, v4, v5, v7, v6);
}

uint64_t sub_21D7DE21C(uint64_t a1)
{
  v54 = a1;
  v1 = sub_21DBF773C();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF700C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF6A9C();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21DBF734C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF71BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80, &unk_21DC299E0);
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = *MEMORY[0x277D45420];
  v48 = v14;
  v22 = *(v14 + 104);
  v51 = v13;
  v23 = v13;
  v24 = v47;
  v22(v16, v21, v23, v18);
  v25 = *MEMORY[0x277D45468];
  v52 = v10;
  v53 = v9;
  (*(v10 + 104))(v12, v25, v9);
  (*(v56 + 104))(v24, *MEMORY[0x277D45500], v57);
  v26 = v49;
  v27 = v50;
  (*(v49 + 104))(v7, *MEMORY[0x277D45310]);
  v38 = v20;
  v28 = v55;
  sub_21DBF702C();
  if (v28)
  {
    v30 = *(v26 + 8);
    v29 = v26 + 8;
    v30(v7, v27);
    (*(v56 + 8))(v24, v57);
    (*(v52 + 8))(v12, v53);
    (*(v48 + 8))(v16, v51);
  }

  else
  {
    (*(v26 + 8))(v7, v27);
    (*(v56 + 8))(v24, v57);
    (*(v52 + 8))(v12, v53);
    (*(v48 + 8))(v16, v51);
    v32 = v40;
    v31 = v41;
    v33 = v38;
    sub_21DBF76DC();
    v34 = v44;
    sub_21DBF6FBC();
    v35.n128_f64[0] = (*(v42 + 8))(v31, v43);
    v29 = sub_21D7E4A80(v35);
    (*(v45 + 8))(v34, v46);
    (*(v39 + 8))(v33, v32);
  }

  return v29;
}

void *sub_21D7DE800(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = *(v2 + 24);
  v17[0] = 0;
  v7 = [v6 fetchCustomSmartListsWithError_];
  v8 = v17[0];
  if (v7)
  {
    v9 = v7;
    sub_21D0D8CF0(0, &qword_280D0C320, 0x277D447F8);
    v10 = sub_21DBFA5EC();
    v11 = v8;

    sub_21D7E6590(v12);
    if (v3)
    {
    }

    else
    {
      MEMORY[0x28223BE20](v13);
      v15[2] = a1;
      v16 = a2 & 1;
      a2 = sub_21D4E7614(sub_21D7E6688, v15, v10);
    }
  }

  else
  {
    a2 = v17[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return a2;
}

uint64_t TTRHashtagAssociationInteractor.confirmationMessage(forRenamingHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v4[6] = swift_task_alloc();
  sub_21DBFA84C();
  v4[7] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21D7DEA50, v6, v5);
}

uint64_t sub_21D7DEA50(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_21DBFA85C();
  v6 = sub_21DBFA89C();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v5;
  v7[6] = v4;

  sub_21DBF8E0C();
  v8 = sub_21D7DCEA0(0, 0, v3, &unk_21DC297C8, v7, &type metadata for TTRHashtagAssociationRenameTagConfirmationMessage);
  v1[10] = v8;
  sub_21D0CF7E0(v3, &unk_27CE5F150, &qword_21DC0D090);
  v9 = swift_task_alloc();
  v1[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  *v9 = v1;
  v9[1] = sub_21D7DEBF8;
  v11 = v1[2];
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v11, v8, &type metadata for TTRHashtagAssociationRenameTagConfirmationMessage, v10, v12);
}

uint64_t sub_21D7DEBF8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_21D7DEDAC;
  }

  else
  {
    v5 = sub_21D7DED34;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7DED34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DEDAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DEE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  v7 = sub_21DBF78CC();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_21DBF74BC();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D7DEF44, 0, 0);
}

uint64_t sub_21D7DEF44()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  sub_21DBF8E0C();
  v7 = sub_21D1CDB50(inited);
  swift_setDeallocating();
  sub_21D6C9C70(inited + 32);
  v8 = MEMORY[0x277D84FA0];
  *v1 = v7;
  v1[1] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D45540], v3);
  v9 = sub_21D7DE21C(v1);
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v9 >> 62)
  {
    v10 = sub_21DBFBD7C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC08D00;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  sub_21DBF8E0C();
  sub_21DBF784C();
  v15 = sub_21D7DE800(v11, 0);
  v17 = v0[8];
  v18 = v15;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v19 = v18[2];

  *v17 = v10;
  v17[1] = v19;

  v20 = v0[1];

  return v20();
}

uint64_t sub_21D7DF194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D0F00D0;

  return sub_21D7DEE24(a1, v4, v5, v6, v7, v8);
}

uint64_t TTRHashtagAssociationInteractor.removeReminderAssociationWithHashtagLabels(_:preferences:)(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D7DF2FC, v5, v4);
}

uint64_t sub_21D7DF2FC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21D7DF3FC;

  return sub_21D7DFC38(v5, sub_21D7DF588, v4);
}

uint64_t sub_21D7DF3FC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D7DF518;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D659954;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7DF518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DF5A0(void *a1, void **a2)
{
  v4 = v3;
  v5 = v2;
  v63 = sub_21DBF78CC();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF74BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = *a2;
  if (qword_27CE56CD8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DBF84BC();
  v14 = __swift_project_value_buffer(v13, qword_27CE61B48);
  sub_21DBF8E0C();
  v58 = v14;
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAEDC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v57 = v5;
    v55 = v19;
    v62 = v19;
    *v18 = 136315394;
    v20 = sub_21DBFAABC();
    v22 = v10;
    v23 = v9;
    v24 = a1;
    v25 = sub_21D0CDFB4(v20, v21, &v62);

    *(v18 + 4) = v25;
    a1 = v24;
    v9 = v23;
    v10 = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = 500;
    _os_log_impl(&dword_21D0C9000, v15, v16, "TTRHashtagAssociationInteractor: remove association with hashtag label {labels: %s, chunkSize: %ld}", v18, 0x16u);
    v26 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223D46520](v26, -1, -1);
    v27 = v18;
    v4 = v56;
    MEMORY[0x223D46520](v27, -1, -1);
  }

  v28 = MEMORY[0x277D84FA0];
  *v12 = a1;
  v12[1] = v28;
  v29 = (*(v10 + 104))(v12, *MEMORY[0x277D45538], v9);
  MEMORY[0x28223BE20](v29);
  *(&v55 - 2) = a1;
  sub_21DBF8E0C();
  sub_21D7E1B54(v12, sub_21D7E67EC);
  if (v4)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 8))(v12, v9);
  v31 = sub_21DBFB6DC();
  v32 = v31;
  v33 = v31 >> 62;
  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_18:

    v39 = a1[2];
    if (!v39)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_18;
  }

LABEL_9:
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v34 = sub_21DBF84AC();
  v35 = sub_21DBFAEDC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = a1;
    v37 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v62 = v58;
    *v37 = 134218498;
    if (v33)
    {
      v38 = sub_21DBFBD7C();
    }

    else
    {
      v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v38;

    *(v37 + 12) = 2080;
    v40 = sub_21DBFAABC();
    v42 = sub_21D0CDFB4(v40, v41, &v62);

    *(v37 + 14) = v42;
    *(v37 + 22) = 2082;
    v43 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v44 = MEMORY[0x223D42DB0](v32, v43);
    v46 = v45;

    v47 = sub_21D0CDFB4(v44, v46, &v62);

    *(v37 + 24) = v47;
    _os_log_impl(&dword_21D0C9000, v34, v35, "TTRHashtagAssociationInteractor: found and repaired %ld phantom hashtags {labels: %s, phantomHashtagIDs: %{public}s}", v37, 0x20u);
    v48 = v58;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v48, -1, -1);
    v49 = v37;
    a1 = v36;
    MEMORY[0x223D46520](v49, -1, -1);

    v39 = v36[2];
    if (!v39)
    {
      goto LABEL_20;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v39 = a1[2];
    if (!v39)
    {
      goto LABEL_20;
    }
  }

LABEL_19:
  v50 = sub_21D9D6344(v39, 0);
  v51 = sub_21D9D4F98(&v62, v50 + 4, v39, a1);
  v52 = v62;
  sub_21DBF8E0C();
  result = sub_21D0CFAF8(v52);
  if (v51 == v39)
  {
LABEL_20:
    v53 = v60;
    v54 = sub_21DBF784C();
    MEMORY[0x28223BE20](v54);
    *(&v55 - 2) = v59;
    *(&v55 - 1) = v53;
    sub_21D7E2D58(v53, 1, sub_21D7E67F4, (&v55 - 4));
    return (*(v61 + 8))(v53, v63);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D7DFC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v4[21] = swift_task_alloc();
  sub_21DBFA84C();
  v4[22] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_21D7DFD0C, v6, v5);
}

uint64_t sub_21D7DFD0C()
{
  v1 = v0[20];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {

    v2 = objc_opt_self();
    v3 = sub_21DBFA12C();
    [v2 internalErrorWithDebugDescription_];

    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[20];
    v6 = v0[21];
    v20 = v0[18];
    v21 = v0[19];
    *(v1 + 16) = 1;
    v8 = swift_allocObject();
    v0[25] = v8;
    *(v8 + 16) = 0;
    v9 = v7[7];
    v10 = v7[8];
    __swift_project_boxed_opaque_existential_1(v7 + 4, v9);
    v11 = *(v10 + 8);

    v11(0xD00000000000001ALL, 0x800000021DC6B7E0, sub_21D7E6724, v8, v9, v10);

    sub_21DBFA85C();
    v12 = sub_21DBFA89C();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v20;
    v13[5] = v21;

    v14 = MEMORY[0x277D84F78];
    v15 = sub_21D7DCEA0(0, 0, v6, &unk_21DC299F8, v13, MEMORY[0x277D84F78] + 8);
    v0[26] = v15;
    sub_21D0CF7E0(v6, &unk_27CE5F150, &qword_21DC0D090);
    swift_beginAccess();
    *(v8 + 16) = v15;

    v16 = swift_task_alloc();
    v0[27] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    *v16 = v0;
    v16[1] = sub_21D7E0064;
    v18 = v0[17];
    v19 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v18, v15, v14 + 8, v17, v19);
  }
}

uint64_t sub_21D7E0064()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_21D7E0284;
  }

  else
  {
    v5 = sub_21D7E01A0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7E01A0()
{
  v1 = v0[25];
  v2 = v0[20];

  *(v1 + 16) = 0;

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 8))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  *(v2 + 16) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21D7E0284()
{
  v18 = v0;

  if (qword_27CE56CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE61B48);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21DBFC75C();
    v10 = sub_21D0CDFB4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRHashtagAssociationInteractor: performTask failed {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  v11 = v0[25];
  v12 = v0[20];
  swift_willThrow();
  *(v11 + 16) = 0;

  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  (*(v14 + 8))(v13, v14);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  *(v12 + 16) = 0;

  v15 = v0[1];

  return v15();
}

uint64_t TTRHashtagAssociationInteractor.replaceReminderAssociationWithHashtagLabel(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_21DBFA84C();
  v5[7] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_21D7E0548, v7, v6);
}

uint64_t sub_21D7E0548()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_21D7E0650;

  return sub_21D7DFC38(v7, sub_21D7E0840, v6);
}

uint64_t sub_21D7E0650()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E07D0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E076C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7E076C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E07D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21D7E0858(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_21DBF78CC();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v59 - v11;
  v13 = sub_21DBF74BC();
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = (v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v15 - 8);
  v66 = v59 - v16;
  if (qword_27CE56CD8 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  v18 = __swift_project_value_buffer(v17, qword_27CE61B48);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEDC();

  v21 = os_log_type_enabled(v19, v20);
  v62 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = a1;
    v24 = a3;
    v25 = swift_slowAlloc();
    v70[0] = v25;
    *v22 = 136315394;
    *(v22 + 4) = sub_21D0CDFB4(v23, a2, v70);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_21D0CDFB4(v24, a4, v70);
    _os_log_impl(&dword_21D0C9000, v19, v20, "TTRHashtagAssociationInteractor: replace association with hashtag label {from: %s, to: %s}", v22, 0x16u);
    swift_arrayDestroy();
    v26 = v25;
    a3 = v24;
    a1 = v23;
    MEMORY[0x223D46520](v26, -1, -1);
    MEMORY[0x223D46520](v22, -1, -1);
  }

  if (a1 == a3 && a2 == a4 || (sub_21DBFC64C() & 1) != 0)
  {
    v27 = sub_21DBF84AC();
    v28 = sub_21DBFAEDC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_21D0C9000, v27, v28, "TTRHashtagAssociationInteractor: srcLabel == destLabel; nothing to do", v29, 2u);
      MEMORY[0x223D46520](v29, -1, -1);
    }
  }

  else
  {
    v59[1] = v18;
    v70[0] = a1;
    v70[1] = a2;
    v30 = v66;
    sub_21DBF57AC();
    v31 = sub_21DBF582C();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    sub_21D176F0C();
    v32 = sub_21DBFBBEC();
    v34 = v33;
    sub_21D0CF7E0(v30, &unk_27CE65010, &qword_21DC08D60);
    v59[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    inited = swift_initStackObject();
    v61 = xmmword_21DC08D00;
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    sub_21DBF8E0C();
    v36 = sub_21D1CDB50(inited);
    v66 = a3;
    v37 = v36;
    swift_setDeallocating();
    sub_21D6C9C70(inited + 32);
    v38 = MEMORY[0x277D84FA0];
    v39 = v67;
    v40 = v68;
    *v67 = v37;
    *(v39 + 8) = v38;
    v60 = a1;
    v41 = v66;
    v42 = v69;
    v43 = (*(v40 + 104))(v39, *MEMORY[0x277D45540], v69);
    MEMORY[0x28223BE20](v43);
    v59[-4] = v41;
    v59[-3] = a4;
    v59[-2] = v32;
    v59[-1] = v34;
    v44 = v71;
    sub_21D7E1B54(v39, sub_21D7E657C);
    v71 = v44;
    if (v44)
    {
      (*(v40 + 8))(v39, v42);
    }

    else
    {
      (*(v40 + 8))(v39, v42);

      v45 = swift_allocObject();
      *(v45 + 16) = v61;
      v46 = v60;
      *(v45 + 32) = v60;
      *(v45 + 40) = a2;
      sub_21DBF8E0C();
      v47 = v62;
      sub_21DBF784C();
      v48 = swift_allocObject();
      *(v48 + 16) = v61;
      *(v48 + 32) = v41;
      *(v48 + 40) = a4;
      sub_21DBF8E0C();
      v49 = v65;
      v50 = sub_21DBF784C();
      MEMORY[0x28223BE20](v50);
      v59[-2] = v47;
      v59[-1] = v49;
      v51 = v71;
      sub_21D7E2D58(v47, 0, sub_21D7E6588, &v59[-4]);
      if (!v51)
      {
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v52 = sub_21DBF84AC();
        v53 = sub_21DBFAEDC();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v70[0] = v55;
          *v54 = 136315394;
          *(v54 + 4) = sub_21D0CDFB4(v46, a2, v70);
          *(v54 + 12) = 2080;
          *(v54 + 14) = sub_21D0CDFB4(v66, a4, v70);
          _os_log_impl(&dword_21D0C9000, v52, v53, "TTRHashtagAssociationInteractor: finished replacing association with hashtag label {from: %s, to: %s}", v54, 0x16u);
          swift_arrayDestroy();
          v56 = v55;
          v49 = v65;
          MEMORY[0x223D46520](v56, -1, -1);
          MEMORY[0x223D46520](v54, -1, -1);
        }
      }

      v57 = v64;
      v58 = *(v63 + 8);
      v58(v49, v64);
      v58(v47, v57);
    }
  }
}

uint64_t TTRHashtagAssociationInteractor.fetchAllHashtagLabels()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v2[4] = swift_task_alloc();
  sub_21DBFA84C();
  v2[5] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21D7E10DC, v4, v3);
}

uint64_t sub_21D7E10DC(uint64_t a1)
{
  v2 = v1[4];
  v3 = *(v1[3] + 24);
  sub_21DBFA85C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v6 = v3;
  v7 = sub_21D7DD108(0, 0, v2, &unk_21DC297F8, v5);
  v1[8] = v7;
  sub_21D0CF7E0(v2, &unk_27CE5F150, &qword_21DC0D090);
  v8 = swift_task_alloc();
  v1[9] = v8;
  v9 = sub_21DBF78CC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  *v8 = v1;
  v8[1] = sub_21D7E126C;
  v11 = v1[2];
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v11, v7, v9, v10, v12);
}

uint64_t sub_21D7E126C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_21D7E1420;
  }

  else
  {
    v5 = sub_21D7E13A8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7E13A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E1420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E1498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_21DBF78CC();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = sub_21DBF684C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_21DBF6A2C();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = sub_21DBF69DC();
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D7E1678, 0, 0);
}

char *sub_21D7E1678()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_21DBF6A3C();
  sub_21DBF683C();
  sub_21DBF681C();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[12];
  sub_21DBF6A1C();
  (*(v6 + 8))(v4, v5);
  v7 = sub_21DBF68EC();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_21DBFBD7C();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v30 = MEMORY[0x277D84F90];
  result = sub_21D18E678(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223D44740](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = [v12 name];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v19 = *(v30 + 16);
    v18 = *(v30 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_21D18E678((v18 > 1), v19 + 1, 1);
    }

    ++v11;
    *(v30 + 16) = v19 + 1;
    v20 = v30 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
  }

  while (v9 != v11);
LABEL_13:

  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[14];
  v24 = v0[6];
  v25 = v0[7];
  v27 = v0[4];
  v26 = v0[5];
  sub_21DBF784C();
  sub_21DBF689C();
  sub_21DBF784C();
  sub_21DBF782C();
  v28 = *(v26 + 8);
  v28(v24, v27);
  v28(v25, v27);
  (*(v22 + 8))(v21, v23);

  v29 = v0[1];

  return v29();
}

uint64_t sub_21D7E1998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D7E1498(a1, v4, v5, v6);
}

void sub_21D7E1A4C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  sub_21DBF8E0C();
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      sub_21DBF8E0C();
      v14._countAndFlagsBits = v12;
      v14._object = v13;
      TTRReminderEditor.edit(tagged:withHashtagNamed:)(0, v14);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

void sub_21D7E1B54(uint64_t a1, char *a2)
{
  v4 = v2;
  v83 = *MEMORY[0x277D85DE8];
  v6 = sub_21D7DE21C(a1);
  if (!v3)
  {
    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_79;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v70 = a2;
    if (v8 < 1)
    {
      v11 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_76;
        }

        v12 = __OFADD__(v10, 500);
        v10 += 500;
        if (v12)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v9;
      }

      while (v10 < v8);
    }

    *&v81[0] = MEMORY[0x277D84F90];
    sub_21D18F4AC(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
    }

    v13 = *&v81[0];
    v65 = v4;
    if (v11)
    {
      v14 = 0;
      do
      {
        if (v14 >= v8)
        {
          goto LABEL_77;
        }

        if (__OFADD__(v14, 500))
        {
          v4 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v4 = v14 + 500;
        }

        v15 = sub_21D7DC9C0(v14, 500, v7);
        *&v81[0] = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        a2 = (v17 + 1);
        if (v17 >= v16 >> 1)
        {
          v76 = v15;
          sub_21D18F4AC((v16 > 1), v17 + 1, 1);
          v15 = v76;
          v13 = *&v81[0];
        }

        *(v13 + 16) = a2;
        *(v13 + 8 * v17 + 32) = v15;
        v14 = v4;
        --v11;
      }

      while (v11);
    }

    else
    {
      v4 = 0;
    }

    if (v4 < v8)
    {
      do
      {
        v18 = __OFADD__(v4, 500);
        v19 = sub_21D7DC9C0(v4, 500, v7);
        *&v81[0] = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        a2 = (v21 + 1);
        if (v21 >= v20 >> 1)
        {
          v77 = v19;
          sub_21D18F4AC((v20 > 1), v21 + 1, 1);
          v19 = v77;
          v13 = *&v81[0];
        }

        *(v13 + 16) = a2;
        *(v13 + 8 * v21 + 32) = v19;
        v22 = v4 + 500 >= v8 || v18;
        v4 += 500;
      }

      while ((v22 & 1) == 0);
    }

    v68 = *(v13 + 16);
    if (v68)
    {
      v7 = 0;
      v67 = v13 + 32;
      v23 = v65;
      v66 = v13;
      while (1)
      {
        if (v7 >= *(v13 + 16))
        {
          goto LABEL_78;
        }

        v24 = *(v67 + 8 * v7);
        v25 = sub_21DBF8E0C();
        sub_21D7E6590(v25);
        v69 = v7;
        if (qword_27CE56CD8 != -1)
        {
          swift_once();
        }

        v26 = sub_21DBF84BC();
        __swift_project_value_buffer(v26, qword_27CE61B48);
        v27 = sub_21DBF84AC();
        v28 = sub_21DBFAEDC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          *(v29 + 4) = v69;
          *(v29 + 12) = 2048;
          *(v29 + 14) = v68;
          _os_log_impl(&dword_21D0C9000, v27, v28, "TTRHashtagAssociationInteractor: processing reminders {chunk: %ld of %ld}", v29, 0x16u);
          MEMORY[0x223D46520](v29, -1, -1);
        }

        v30 = *(v23 + 24);
        v73 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
        [v73 setSaveIsNoopIfNoChangedKeys_];
        v7 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v31 = sub_21DBFA5DC();
        *&v81[0] = 0;
        a2 = [v30 fetchRemindersWithObjectIDs:v31 error:v81];

        v32 = *&v81[0];
        if (!a2)
        {
          v52 = *&v81[0];

          v53 = sub_21DBF52DC();

          swift_willThrow();
          v54 = v53;
          v55 = sub_21DBF84AC();
          v4 = sub_21DBFAEBC();

          if (os_log_type_enabled(v55, v4))
          {
            a2 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v81[0] = v56;
            *a2 = 136315138;
            swift_getErrorValue();
            v57 = sub_21DBFC75C();
            v59 = sub_21D0CDFB4(v57, v58, v81);

            *(a2 + 4) = v59;
            _os_log_impl(&dword_21D0C9000, v55, v4, "TTRHashtagAssociationInteractor: failed to fetch reminders for chunk; skipping {error: %s}", a2, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            MEMORY[0x223D46520](v56, -1, -1);
            MEMORY[0x223D46520](a2, -1, -1);
          }

          else
          {
          }

          goto LABEL_37;
        }

        sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
        v75 = sub_21DBF9E6C();
        v33 = v32;

        if (!(v24 >> 62))
        {
          v4 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v4)
          {
            break;
          }

          goto LABEL_67;
        }

        v4 = sub_21DBFBD7C();
        if (v4)
        {
          break;
        }

LABEL_67:

        v60 = sub_21DBF84AC();
        v61 = sub_21DBFAEDC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 134218240;
          *(v62 + 4) = v69;
          *(v62 + 12) = 2048;
          *(v62 + 14) = v68;
          _os_log_impl(&dword_21D0C9000, v60, v61, "TTRHashtagAssociationInteractor: saving reminders {chunk: %ld of %ld}", v62, 0x16u);
          MEMORY[0x223D46520](v62, -1, -1);
        }

        *&v81[0] = 0;
        v23 = v65;
        if (![v73 saveSynchronouslyWithError_])
        {
          v64 = *&v81[0];

          sub_21DBF52DC();

          swift_willThrow();
          return;
        }

        v63 = *&v81[0];

LABEL_37:
        v13 = v66;
        v7 = v69 + 1;
        if (v69 + 1 == v68)
        {
          goto LABEL_71;
        }
      }

      v34 = 0;
      v78 = v24 & 0xC000000000000001;
      v71 = v24;
      v72 = v24 & 0xFFFFFFFFFFFFFF8;
      v74 = v4;
      while (1)
      {
        if (v78)
        {
          v38 = MEMORY[0x223D44740](v34, v24);
        }

        else
        {
          if (v34 >= *(v72 + 16))
          {
            goto LABEL_75;
          }

          v38 = *(v24 + 8 * v34 + 32);
        }

        v39 = v38;
        v40 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v8 = sub_21DBFBD7C();
          goto LABEL_4;
        }

        sub_21DBFA99C();
        if ((v75 & 0xC000000000000001) != 0)
        {
          v41 = v39;
          v42 = sub_21DBFC2CC();

          if (!v42)
          {
            goto LABEL_62;
          }

          v80[0] = v42;
          swift_dynamicCast();
          v43 = *&v81[0];
          if (!*&v81[0])
          {
            goto LABEL_62;
          }
        }

        else if (!*(v75 + 16) || (v44 = sub_21D17E07C(v39), (v45 & 1) == 0) || (v43 = *(*(v75 + 56) + 8 * v44)) == 0)
        {
LABEL_62:
          a2 = v39;
          v7 = sub_21DBF84AC();
          v51 = sub_21DBFAEBC();
          if (os_log_type_enabled(v7, v51))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v35 = 138412290;
            *(v35 + 4) = a2;
            *v36 = a2;
            _os_log_impl(&dword_21D0C9000, v7, v51, "TTRHashtagAssociationInteractor: REMReminder not fetched; skipping {objectID: %@}", v35, 0xCu);
            sub_21D0CF7E0(v36, &unk_27CE60070, &unk_21DC09550);
            MEMORY[0x223D46520](v36, -1, -1);
            v37 = v35;
            v4 = v74;
            MEMORY[0x223D46520](v37, -1, -1);
          }

          else
          {
          }

          goto LABEL_48;
        }

        v82 = 0;
        memset(v81, 0, sizeof(v81));
        sub_21D0D3954(v81, v80, &unk_27CE60D80, &unk_21DC093F0);
        a2 = v43;
        v46 = v73;
        v47 = [v46 updateReminder_];
        sub_21D0D3954(v80, v79, &unk_27CE60D80, &unk_21DC093F0);
        type metadata accessor for TTRReminderEditor();
        v7 = swift_allocObject();
        *(v7 + 72) = 0;
        *(v7 + 16) = v47;
        sub_21D0D3954(v79, v7 + 24, &unk_27CE60D80, &unk_21DC093F0);
        *(v7 + 64) = 0;
        v48 = v47;
        v49 = [v48 fetchedCurrentDueDateDeltaAlert];

        v4 = v74;
        sub_21D0CF7E0(v79, &unk_27CE60D80, &unk_21DC093F0);
        sub_21D0CF7E0(v80, &unk_27CE60D80, &unk_21DC093F0);
        v24 = v71;
        sub_21D0CF7E0(v81, &unk_27CE60D80, &unk_21DC093F0);
        v50 = *(v7 + 72);
        *(v7 + 72) = v49;

        (v70)(v7);

LABEL_48:

        ++v34;
        if (v40 == v4)
        {
          goto LABEL_67;
        }
      }
    }

LABEL_71:
  }
}

uint64_t sub_21D7E2644(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v65 = sub_21DBF78CC();
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_21DBF7FEC();
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70, &unk_21DC299D0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = (&v53 - v22);
  v66 = *a1;
  v24 = [*(v66 + 16) objectID];
  if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B68, &unk_21DC299C0) + 36)) != 1)
  {
    v58 = a1[1];
    v59 = v24;
    sub_21DBF7FCC();
    v29 = sub_21DBF7E5C();
    v30 = *(v29 - 8);
    v31 = 1;
    if ((*(v30 + 48))(v19, 1, v29) != 1)
    {
      v32 = (*(v30 + 88))(v19, v29);
      if (v32 == *MEMORY[0x277D458A0])
      {
        v56 = v32;
        (*(v30 + 96))(v19, v29);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78, &unk_21DC34BD0);
        v33 = *(v62 + 32);
        v34 = &v19[*(v53 + 64)];
        v57 = v12;
        v54 = v33;
        v55 = v62 + 32;
        v33(v64, v34, v12);
        sub_21DBF784C();
        sub_21DBF77CC();
        v61 = *(v61 + 8);
        v35 = v65;
        (v61)(v8, v65);
        sub_21DBF784C();
        v36 = v60;
        sub_21DBF77CC();
        v37 = v35;
        v38 = v61;
        (v61)(v8, v37);
        if (sub_21DBF786C() & 1) != 0 && (sub_21DBF786C())
        {
          v39 = v65;
          v38(v36, v65);
          v38(v11, v39);
          (*(v62 + 8))(v64, v57);
          v31 = 1;
          goto LABEL_23;
        }

        v47 = *(v53 + 64);
        *v23 = sub_21DBF785C();
        v48 = sub_21DBF785C();
        v49 = v36;
        v50 = v65;
        v38(v49, v65);
        v38(v11, v50);
        v23[1] = v48;
        v54(v23 + v47, v64, v57);
        (*(v30 + 104))(v23, v56, v29);
      }

      else
      {
        if (v32 != *MEMORY[0x277D458A8] && v32 != *MEMORY[0x277D45898])
        {
          result = sub_21DBFC63C();
          __break(1u);
          return result;
        }

        (*(v30 + 104))(v23, v32, v29);
      }

      v31 = 0;
    }

LABEL_23:
    (*(v30 + 56))(v23, v31, 1, v29);
    sub_21DBF801C();
    sub_21D0D3954(v23, v16, &qword_27CE61B70, &unk_21DC299D0);
    v51 = v58;
    v52 = sub_21DBF7F8C();
    TTRSmartListEditor.edit(filter:)(v52);

    sub_21D0CF7E0(v23, &qword_27CE61B70, &unk_21DC299D0);
    return 0;
  }

  if (*(a2 + 16) && (v25 = sub_21D17E07C(v24), (v26 & 1) != 0))
  {
    v27 = *(*(a2 + 56) + v25);

    if (v27)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_27CE56CD8 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_27CE61B48);
    v41 = v24;
    v42 = sub_21DBF84AC();
    v43 = sub_21DBFAEBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_21D0C9000, v42, v43, "TTRHashtagAssociationInteractor: no preferences specified for handling deletable custom smart list {smartListID: %@}", v44, 0xCu);
      sub_21D0CF7E0(v45, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v45, -1, -1);
      MEMORY[0x223D46520](v44, -1, -1);
    }

    else
    {
    }

    return 2;
  }
}

void sub_21D7E2D58(uint64_t a1, void *a2, unsigned __int8 (*a3)(uint64_t *), uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v71 = a3;
  v72 = a4;
  v80 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B68, &unk_21DC299C0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40, &qword_21DC18E80);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  v17 = sub_21D7DE800(a1, a2);
  if (!v5)
  {
    v60 = v7;
    v73 = v12;
    v74 = v13;
    v69 = *(v17 + 2);
    v70 = v14;
    if (v69)
    {
      v18 = v17;
      if (qword_27CE56CD8 != -1)
      {
LABEL_37:
        swift_once();
      }

      v19 = sub_21DBF84BC();
      v20 = __swift_project_value_buffer(v19, qword_27CE61B48);
      sub_21DBF8E0C();
      v64 = v20;
      v21 = sub_21DBF84AC();
      v22 = sub_21DBFAEDC();
      v23 = os_log_type_enabled(v21, v22);
      v68 = v10;
      if (v23)
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = *(v18 + 2);

        _os_log_impl(&dword_21D0C9000, v21, v22, "TTRHashtagAssociationInteractor: processing smart lists w/ hashtag filter {count: %ld}", v24, 0xCu);
        MEMORY[0x223D46520](v24, -1, -1);
      }

      else
      {
      }

      v25 = v70;
      v26 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
      [v26 setSaveIsNoopIfNoChangedKeys_];
      v63 = 0;
      v61 = 0;
      v62 = 0;
      v10 = 0;
      v27 = *(v25 + 80);
      v75 = MEMORY[0x277D84F98];
      v67 = v18 + ((v27 + 32) & ~v27);
      *&v28 = 138412290;
      v59 = v28;
      v29 = v18;
      v66 = v18;
      v65 = v26;
      do
      {
        if (v10 >= *(v29 + 2))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_21D0D3954(&v67[*(v25 + 72) * v10], v16, &qword_27CE59B40, &qword_21DC18E80);
        sub_21DBFA99C();
        v18 = v6;
        if (v6)
        {
          v30 = sub_21DBF84AC();
          v31 = sub_21DBFAEDC();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_21D0C9000, v30, v31, "TTRHashtagAssociationInteractor: receive task cancellation signal", v32, 2u);
            MEMORY[0x223D46520](v32, -1, -1);
          }

          v18 = 0;
        }

        v33 = *v16;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_21D0D3954(v78, v76, &unk_27CE60D80, &unk_21DC093F0);
        v34 = [v26 updateSmartList_];
        sub_21D0CF7E0(v78, &unk_27CE60D80, &unk_21DC093F0);
        type metadata accessor for TTRSmartListEditor();
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v36 = v76[1];
        *(v35 + 24) = v76[0];
        *(v35 + 40) = v36;
        *(v35 + 56) = v77;
        *(v35 + 64) = 0;
        v37 = *(v16 + 1);
        v38 = *(v74 + 32);
        v6 = v68;
        v39 = v68[8];
        v40 = sub_21DBF78CC();
        v41 = v73 + v39;
        v42 = v73;
        (*(*(v40 - 8) + 16))(v41, &v16[v38], v40);
        v43 = v16[*(v74 + 36)];
        *v42 = v35;
        v42[1] = v37;
        *(v42 + v6[9]) = v43;
        v44 = v37;
        v45 = v71(v42);
        if (v45)
        {
          if (v45 == 1)
          {
            v46 = v33;
            v47 = sub_21DBF84AC();
            v48 = sub_21DBFAEDC();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              *v49 = v59;
              v51 = [v46 objectID];
              *(v49 + 4) = v51;
              *v50 = v51;
              _os_log_impl(&dword_21D0C9000, v47, v48, "TTRHashtagAssociationInteractor: delete custom smart list {objectID: %@}", v49, 0xCu);
              sub_21D0CF7E0(v50, &unk_27CE60070, &unk_21DC09550);
              v52 = v50;
              v42 = v73;
              MEMORY[0x223D46520](v52, -1, -1);
              MEMORY[0x223D46520](v49, -1, -1);
            }

            v53 = [v46 accountID];
            v26 = v65;
            sub_21D7E5394(v53, &v75, v60, v65);
            v6 = v18;
            if (v18)
            {

              sub_21D0CF7E0(v42, &qword_27CE61B68, &unk_21DC299C0);

              sub_21D0CF7E0(v16, &qword_27CE59B40, &qword_21DC18E80);
              return;
            }

            TTRAccountEditor.removeCustomSmartList(_:)(v46);

            sub_21D0CF7E0(v42, &qword_27CE61B68, &unk_21DC299C0);
            if (__OFADD__(v61, 1))
            {
              goto LABEL_36;
            }

            ++v61;
            v29 = v66;
          }

          else
          {
            sub_21D0CF7E0(v42, &qword_27CE61B68, &unk_21DC299C0);
            v29 = v66;
            v26 = v65;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_35;
            }

            v6 = v18;
            ++v63;
          }
        }

        else
        {
          sub_21D0CF7E0(v42, &qword_27CE61B68, &unk_21DC299C0);
          v29 = v66;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_34;
          }

          ++v62;
          v6 = v18;
          v26 = v65;
        }

        ++v10;
        sub_21D0CF7E0(v16, &qword_27CE59B40, &qword_21DC18E80);
        v25 = v70;
      }

      while (v69 != v10);

      v54 = sub_21DBF84AC();
      v55 = sub_21DBFAEDC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134218496;
        *(v56 + 4) = v62;
        *(v56 + 12) = 2048;
        *(v56 + 14) = v61;
        *(v56 + 22) = 2048;
        *(v56 + 24) = v63;
        _os_log_impl(&dword_21D0C9000, v54, v55, "TTRHashtagAssociationInteractor: saving smart lists {updatedCount: %ld, deletedCount: %ld, skippedCount: %ld}", v56, 0x20u);
        MEMORY[0x223D46520](v56, -1, -1);
      }

      *&v78[0] = 0;
      if ([v26 saveSynchronouslyWithError_])
      {
        v57 = *&v78[0];
      }

      else
      {
        v58 = *&v78[0];
        sub_21DBF52DC();

        swift_willThrow();
      }
    }

    else
    {
    }
  }
}

void sub_21D7E3630(uint64_t a1, void *a2, char **a3, id a4, void *a5)
{
  v100 = a5;
  v102 = a4;
  v95 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v92 - v9;
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v93 = a1;
  v101 = *(a1 + 16);
  v12 = [v101 hashtagContext];
  if (!v12)
  {
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_75;
    }

    goto LABEL_4;
  }

  v13 = v12;
  v14 = [v12 hashtags];

  isUniquelyReferenced_nonNull_native = &qword_280D0C348;
  sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
  sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
  v15 = sub_21DBFAAAC();

LABEL_5:
  v94 = a3;
  if ((v15 & 0xC000000000000001) != 0)
  {
    isUniquelyReferenced_nonNull_native = sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
    sub_21DBFAB5C();
    v15 = v107;
    v16 = v108;
    v17 = v109;
    v18 = v110;
    v19 = v111;
  }

  else
  {
    v18 = 0;
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);
  }

  v97 = v17;
  v98 = MEMORY[0x277D84F90];
  v23 = (v17 + 64) >> 6;
  v24 = MEMORY[0x277D84F98];
  while (2)
  {
    v99 = v24;
    while (1)
    {
      if (v15 < 0)
      {
        v27 = sub_21DBFBDBC();
        if (v27)
        {
          *&v103 = v27;
          sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
          swift_dynamicCast();
          isUniquelyReferenced_nonNull_native = v105[0];
          if (v105[0])
          {
            goto LABEL_22;
          }
        }

LABEL_46:
        sub_21D0CFAF8(v15);
        isUniquelyReferenced_nonNull_native = v98;
        if (!(v98 >> 62))
        {
          v58 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_48;
        }

LABEL_73:
        v58 = sub_21DBFBD7C();
LABEL_48:
        v59 = v94;
        a3 = &selRef__setContentViewMarginType_;
        v60 = &selRef__setContentViewMarginType_;
        v61 = v99;
        if (!v58)
        {
LABEL_71:

          return;
        }

        if (v58 >= 1)
        {
          v62 = 0;
          v96 = (isUniquelyReferenced_nonNull_native & 0xC000000000000001);
          v92 = xmmword_21DC08D00;
          v97 = v58;
          while (1)
          {
            if (v96)
            {
              v65 = MEMORY[0x223D44740](v62, isUniquelyReferenced_nonNull_native);
            }

            else
            {
              v65 = *(isUniquelyReferenced_nonNull_native + 8 * v62 + 32);
            }

            v66 = v65;
            [v65 v60[241]];
            if (v61[2] && (v67 = sub_21D181E04(), (v68 & 1) != 0))
            {
              v69 = *(v61[7] + 8 * v67);
              v70 = v69;
              v71 = 0;
              v102 = 0;
              v72 = 1;
            }

            else
            {
              sub_21DBF8E0C();
              v102 = [v66 v60[241]];
              v72 = 0;
              v70 = 0;
              v69 = v95;
              v71 = v59;
            }

            v73 = [v101 a3[436]];
            if (v73)
            {
              v63 = v73;
              v100 = v70;
              sub_21D9CB53C(v66, 0, 0, 1);
              if (v74)
              {
                v75 = v74;
                [v63 removeHashtag_];
                v76 = [v75 objectID];
                [v63 cancelUndeleteHashtagWithID_];

                sub_21D9CB53C(v69, v71, v102, v72);
                v78 = v77;
                if (v77)
                {
                  v79 = v77;
                }

                else
                {
                  if (v72)
                  {
                    v80 = v69;
                    [v63 addHashtag_];
                    v81 = v80;
                  }

                  else
                  {
                    v82 = sub_21DBFA12C();
                    v83 = [v63 addHashtagWithType:v102 name:v82];

                    v81 = v83;
                  }

                  v79 = v81;
                }

                v84 = v78;
                v85 = v79;
                v86 = sub_21D9CBAD8(v75, v79);

                v87 = swift_allocObject();
                v87[2] = v86;
                v87[3] = v85;
                v87[4] = v75;
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
                v88 = swift_allocObject();
                *(v88 + 16) = sub_21D7E6718;
                *(v88 + 24) = v87;
                v105[3] = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
                swift_retain_n();
                v105[0] = [v101 objectID];
                v89 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
                v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
                *&v103 = v89;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
                v90 = swift_allocObject();
                *(v90 + 16) = v92;
                sub_21D0CEB98(v105, v90 + 32);
                sub_21D0CF2E8(&v103, (v90 + 64));
                __swift_destroy_boxed_opaque_existential_0(v105);
                sub_21D1C442C(v90, sub_21D23298C, v88);

                sub_21D24B434(v69, v71, v102, v72);

                v59 = v94;
                a3 = &selRef__setContentViewMarginType_;
                v60 = &selRef__setContentViewMarginType_;
                v64 = v97;
                isUniquelyReferenced_nonNull_native = v98;
                v70 = v100;
                goto LABEL_53;
              }

              v60 = &selRef__setContentViewMarginType_;
              v70 = v100;
            }

            else
            {
              v63 = v66;
            }

            sub_21D24B434(v69, v71, v102, v72);
            v64 = v97;
            isUniquelyReferenced_nonNull_native = v98;
LABEL_53:
            ++v62;

            v61 = v99;
            if (v64 == v62)
            {
              goto LABEL_71;
            }
          }
        }

        __break(1u);
LABEL_75:
        if (sub_21DBFBD7C())
        {
          sub_21D1D1C64(MEMORY[0x277D84F90]);
          v15 = v91;
        }

        else
        {
LABEL_4:
          v15 = MEMORY[0x277D84FA0];
        }

        goto LABEL_5;
      }

      v25 = v18;
      v26 = v19;
      if (!v19)
      {
        while (1)
        {
          v18 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v18 >= v23)
          {
            goto LABEL_46;
          }

          v26 = *(v16 + 8 * v18);
          ++v25;
          if (v26)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_73;
      }

LABEL_18:
      v19 = (v26 - 1) & v26;
      isUniquelyReferenced_nonNull_native = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_46;
      }

LABEL_22:
      v28 = [isUniquelyReferenced_nonNull_native name];
      v29 = sub_21DBFA16C();
      v31 = v30;

      if (v29 == v95 && v31 == v94)
      {
        break;
      }

      v33 = sub_21DBFC64C();

      if (v33)
      {
        goto LABEL_36;
      }

      v34 = [isUniquelyReferenced_nonNull_native name];
      v35 = sub_21DBFA16C();
      v37 = v36;

      v105[0] = v35;
      v105[1] = v37;
      sub_21DBF57AC();
      v38 = sub_21DBF582C();
      (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
      sub_21D176F0C();
      v39 = sub_21DBFBBEC();
      v41 = v40;
      sub_21D0CF7E0(v10, &unk_27CE65010, &qword_21DC08D60);

      if (v39 == v102 && v41 == v100)
      {

LABEL_32:
        isUniquelyReferenced_nonNull_native = isUniquelyReferenced_nonNull_native;
        MEMORY[0x223D42D80]();
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v98 = v106;
      }

      else
      {
        v42 = sub_21DBFC64C();

        if (v42)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_36:
    v43 = [isUniquelyReferenced_nonNull_native type];
    v96 = isUniquelyReferenced_nonNull_native;
    v44 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105[0] = v44;
    v45 = sub_21D181E04();
    v47 = v44[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v51 = v46;
    if (v44[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_41:
        v24 = v105[0];
        if (v51)
        {
          goto LABEL_42;
        }

LABEL_44:
        v24[(v45 >> 6) + 8] |= 1 << v45;
        *(v24[6] + 8 * v45) = v43;
        v55 = v96;
        *(v24[7] + 8 * v45) = v96;

        v56 = v24[2];
        v49 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v49)
        {
          goto LABEL_78;
        }

        v24[2] = v57;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v45;
        sub_21D22512C();
        v45 = isUniquelyReferenced_nonNull_native;
        v24 = v105[0];
        if ((v51 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_42:
        v53 = v24[7];
        isUniquelyReferenced_nonNull_native = *(v53 + 8 * v45);
        v54 = v96;
        *(v53 + 8 * v45) = v96;
      }

      continue;
    }

    break;
  }

  sub_21D21D960(v50, isUniquelyReferenced_nonNull_native);
  v45 = sub_21D181E04();
  if ((v51 & 1) == (v52 & 1))
  {
    goto LABEL_41;
  }

LABEL_79:
  type metadata accessor for REMHashtagType(0);
  sub_21DBFC70C();
  __break(1u);
}

uint64_t sub_21D7E40A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v74 = a2;
  v4 = sub_21DBF78CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v60 - v8;
  MEMORY[0x28223BE20](v9);
  v80 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v82 = &v60 - v12;
  MEMORY[0x28223BE20](v13);
  v72 = &v60 - v14;
  MEMORY[0x28223BE20](v15);
  v73 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v76 = &v60 - v20;
  MEMORY[0x28223BE20](v21);
  v79 = &v60 - v22;
  MEMORY[0x28223BE20](v23);
  v81 = &v60 - v24;
  v77 = sub_21DBF7FEC();
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70, &unk_21DC299D0);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v60 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = (&v60 - v33);
  v35 = *a1;
  v83 = a1[1];
  v84 = v35;
  sub_21DBF7FCC();
  v36 = sub_21DBF7E5C();
  v37 = *(v36 - 8);
  v38 = 1;
  if ((*(v37 + 48))(v31, 1, v36) == 1)
  {
    goto LABEL_17;
  }

  v39 = (*(v37 + 88))(v31, v36);
  if (v39 == *MEMORY[0x277D458A0])
  {
    v64 = v39;
    v40 = *(v37 + 96);
    v66 = v36;
    v40(v31, v36);
    v65 = *(v31 + 1);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78, &unk_21DC34BD0);
    v41 = *(v70 + 32);
    v42 = &v31[*(v61 + 64)];
    v63 = v70 + 32;
    v62 = v41;
    v41(v75, v42, v77);
    sub_21DBF784C();
    sub_21DBF77DC();
    v43 = sub_21DBF786C();
    v67 = v28;
    if (v43)
    {
      sub_21DBF78BC();
    }

    else
    {
      (*(v5 + 16))(v76, v68, v4);
    }

    v44 = v4;
    v45 = v72;
    sub_21DBF77CC();
    v46 = v73;
    sub_21DBF77CC();
    v47 = *(v5 + 8);
    v47(v45, v44);
    sub_21DBF782C();
    v47(v46, v44);
    sub_21DBF784C();
    sub_21DBF77DC();
    if (sub_21DBF786C())
    {
      v48 = v71;
      sub_21DBF78BC();
    }

    else
    {
      v48 = v71;
      (*(v5 + 16))(v71, v68, v44);
    }

    v28 = v67;
    v49 = v72;
    sub_21DBF77CC();
    v50 = v73;
    sub_21DBF77CC();
    v47(v49, v44);
    v51 = v69;
    sub_21DBF782C();
    v52 = v50;
    v53 = v44;
    v47(v52, v44);
    if (sub_21DBF786C() & 1) != 0 && (sub_21DBF786C())
    {
      v47(v51, v44);
      v47(v48, v44);
      v47(v80, v44);
      v47(v82, v44);
      v47(v78, v44);
      v47(v76, v44);
      v47(v79, v44);
      v47(v81, v44);
      (*(v70 + 8))(v75, v77);
      v38 = 1;
      v36 = v66;
LABEL_17:
      (*(v37 + 56))(v34, v38, 1, v36);
      sub_21DBF801C();
      sub_21D0D3954(v34, v28, &qword_27CE61B70, &unk_21DC299D0);
      v57 = v83;
      v58 = sub_21DBF7F8C();
      TTRSmartListEditor.edit(filter:)(v58);

      sub_21D0CF7E0(v34, &qword_27CE61B70, &unk_21DC299D0);
      return 0;
    }

    v54 = *(v61 + 64);
    v55 = v78;
    *v34 = sub_21DBF785C();
    v56 = sub_21DBF785C();
    v47(v51, v53);
    v47(v71, v53);
    v47(v80, v53);
    v47(v82, v53);
    v47(v55, v53);
    v47(v76, v53);
    v47(v79, v53);
    v47(v81, v53);
    v34[1] = v56;
    v62(v34 + v54, v75, v77);
    v36 = v66;
    (*(v37 + 104))(v34, v64, v66);
LABEL_16:
    v38 = 0;
    goto LABEL_17;
  }

  if (v39 == *MEMORY[0x277D458A8] || v39 == *MEMORY[0x277D45898])
  {
    (*(v37 + 104))(v34, v39, v36);
    goto LABEL_16;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

void sub_21D7E4950(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    sub_21DBFA96C();
  }
}

uint64_t sub_21D7E49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21D7E49FC, 0, 0);
}

uint64_t sub_21D7E49FC()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E4A80(__n128 a1)
{
  v1 = sub_21DBF6D7C();
  v25 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  sub_21DBF718C();

  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v7 = sub_21DBFBF9C();
    v30 = v7;
    v8 = sub_21DBF718C();
    v24 = *(v8 + 16);
    if (!v24)
    {
      break;
    }

    v9 = 0;
    v20 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v21 = v6;
    v22 = v8 + v20;
    v23 = v8;
    v28 = (v25 + 8);
    v29 = v25 + 16;
    while (v9 < *(v8 + 16))
    {
      v10 = *(v25 + 72);
      v27 = v9;
      v11 = *(v25 + 16);
      v11(v6, v22 + v10 * v9, v1);
      sub_21DBF6D5C();
      MEMORY[0x223D42D80]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v7 = v30;
      v12 = sub_21DBF6D6C();
      v13 = *v28;
      (*v28)(v6, v1);
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      v15 = *(v14 + 16);
      if (v15)
      {
        v26 = v14;
        v16 = v14 + v20;
        do
        {
          v11(v3, v16, v1);
          sub_21DBF6D5C();
          v17 = (v13)(v3, v1);
          MEMORY[0x223D42D80](v17);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v16 += v10;
          --v15;
        }

        while (v15);
        v7 = v30;

        v6 = v21;
      }

      else
      {
      }

      v9 = v27 + 1;
      v8 = v23;
      if (v27 + 1 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    sub_21DBFBD7C();
  }

LABEL_18:

  return v7;
}

uint64_t sub_21D7E4DA0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v56 = a3;
  v58 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40, &qword_21DC18E80);
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v50 - v6;
  v7 = sub_21DBF78CC();
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v61 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70, &unk_21DC299D0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v50 - v21;
  v23 = *a1;
  v24 = [*a1 customContext];
  if (!v24)
  {
    return (*(v5 + 56))(v62, 1, 1, v63);
  }

  v25 = v24;
  v26 = sub_21DBFB4FC();

  if (!v26)
  {
    return (*(v5 + 56))(v62, 1, 1, v63);
  }

  v55 = v18;
  sub_21DBF7FCC();
  v27 = sub_21DBF7E5C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v22, 1, v27) == 1)
  {
LABEL_4:

    return (*(v5 + 56))(v62, 1, 1, v63);
  }

  v30 = (*(v28 + 88))(v22, v27);
  if (v30 == *MEMORY[0x277D458A0])
  {
    v51 = v28;
    v52 = v27;
    (*(v28 + 96))(v22, v27);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78, &unk_21DC34BD0) + 64);
    sub_21DBF784C();
    sub_21DBF784C();
    sub_21DBF782C();
    v32 = v60 + 8;
    v31 = *(v60 + 8);
    v33 = v10;
    v10 = v59;
    v31(v33, v59);
    v34 = v13;
    v13 = v31;
    v53 = v32;
    v31(v34, v10);
    if (sub_21DBF77BC())
    {
      v31(v61, v10);

      (*(v5 + 56))(v62, 1, 1, v63);
      v35 = sub_21DBF7FEC();
      return (*(*(v35 - 8) + 8))(&v22[v54], v35);
    }
  }

  else
  {
    if (v30 == *MEMORY[0x277D458A8] || v30 == *MEMORY[0x277D45898])
    {
      goto LABEL_4;
    }

    sub_21DBFC63C();
    __break(1u);
  }

  v50 = v13;
  v36 = v10;
  v37 = v63;
  v38 = v57;
  (*(v60 + 16))(&v57[*(v63 + 32)], v61, v36);
  *v38 = v23;
  v38[1] = v26;
  v39 = *(v37 + 36);
  *(v38 + v39) = 0;
  v40 = v23;
  if (v56)
  {
    v41 = v26;
    v42 = v61;
    v43 = sub_21DBF78AC();
    v44 = v42;
    v45 = v54;
    if (v43)
    {
      sub_21DBF801C();
      (*(v51 + 56))(v55, 1, 1, v52);
      v46 = sub_21DBF7F8C();
      v47 = sub_21DBF7FBC();

      v50(v44, v59);
      v38 = v57;
      if (v47)
      {
        v57[v39] = 1;
      }
    }

    else
    {

      v50(v42, v59);
      v38 = v57;
    }
  }

  else
  {
    v50(v61, v36);
    v45 = v54;
  }

  v48 = v62;
  sub_21D7E66A8(v38, v62);
  (*(v5 + 56))(v48, 0, 1, v63);
  v49 = sub_21DBF7FEC();
  return (*(*(v49 - 8) + 8))(&v22[v45], v49);
}

uint64_t sub_21D7E5394(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v8 = sub_21D1AA2E0(a1, *a2);
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = *(a3 + 24);
    *&v24[0] = 0;
    v11 = [v10 fetchAccountWithObjectID:a1 error:v24];
    v9 = *&v24[0];
    if (v11)
    {
      v12 = v11;
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_21D0D3954(v24, v22, &unk_27CE60D80, &unk_21DC093F0);
      v13 = v9;
      v14 = [a4 updateAccount_];
      sub_21D0CF7E0(v24, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRAccountEditor();
      v9 = swift_allocObject();
      *(v9 + 16) = v14;
      v15 = v22[1];
      *(v9 + 24) = v22[0];
      *(v9 + 40) = v15;
      *(v9 + 56) = v23;
      *(v9 + 64) = 0;
      swift_beginAccess();
      v16 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        if (v16 < 0)
        {
          v17 = *a2;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFFFFFFFF8;
        }

        v18 = sub_21DBFBD7C();
        if (__OFADD__(v18, 1))
        {
          __break(1u);
        }

        *a2 = sub_21D984B60(v17, v18 + 1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v22[0] = *a2;
      sub_21D478DD0(v9, a1, isUniquelyReferenced_nonNull_native);
      *a2 = *&v22[0];
      swift_endAccess();
    }

    else
    {
      v19 = *&v24[0];
      sub_21DBF52DC();

      swift_willThrow();
    }
  }

  return v9;
}

uint64_t TTRHashtagAssociationInteractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_21D7E567C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return TTRHashtagAssociationInteractor.confirmationMessage(forRemovingHashtagLabels:)(a1, a2);
}

uint64_t sub_21D7E5724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D1B795C;

  return TTRHashtagAssociationInteractor.confirmationMessage(forRenamingHashtagLabel:)(a1, a2, a3);
}

uint64_t sub_21D7E57D4(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D7E5874, v5, v4);
}

uint64_t sub_21D7E5874()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21D7E5974;

  return sub_21D7DFC38(v5, sub_21D7E7500, v4);
}

uint64_t sub_21D7E5974()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D7E7518;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D7E7520;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7E5A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_21DBFA84C();
  v5[7] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_21D7E5B30, v7, v6);
}

uint64_t sub_21D7E5B30()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_21D7E5C38;

  return sub_21D7DFC38(v7, sub_21D7E74E8, v6);
}

uint64_t sub_21D7E5C38()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E751C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E7524;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7E5D54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return TTRHashtagAssociationInteractor.fetchAllHashtagLabels()(a1);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRemovingHashtagLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRenamingHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21D0F00D0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.removeReminderAssociationWithHashtagLabels(_:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.replaceReminderAssociationWithHashtagLabel(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21D0F00D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.fetchAllHashtagLabels()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t objectdestroy_11Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_21D7E6548()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21D7DF5A0(v1, &v3);
}

void sub_21D7E6590(uint64_t a1)
{
  sub_21DBFA99C();
  if (v1)
  {
    if (qword_27CE56CD8 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE61B48);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEDC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21D0C9000, v3, v4, "TTRHashtagAssociationInteractor: receive task cancellation signal", v5, 2u);
      MEMORY[0x223D46520](v5, -1, -1);
    }
  }
}

uint64_t sub_21D7E66A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40, &qword_21DC18E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7E672C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D7E49D8(a1, v4, v5, v7, v6);
}

uint64_t sub_21D7E67FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF78CC();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D7E68DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_21DBF78CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = v10 | *(v6 + 80) & 0xF8;
  if (v12 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v11 - ((-9 - (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10)) | v10) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v17 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = *v18++;
    v19 = v20;
    *v17++ = v20;
    v21 = *(v9 + 16);
    v22 = v19;
    v21(v17, v18, v16);
    *(v17 + v11) = *(v18 + v11);
  }

  return a1;
}

uint64_t sub_21D7E6A88(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);

  v5 = sub_21DBF78CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  return v7(v8, v5);
}

uint64_t sub_21D7E6B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  *v7 = *v8;
  v10 = sub_21DBF78CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = v11 + 16;
  v14 = *(v11 + 80);
  v15 = (v7 + v14 + 8) & ~v14;
  v16 = (v8 + v14 + 8) & ~v14;
  v17 = v9;
  v12(v15, v16, v10);
  *(*(v13 + 48) + v15) = *(*(v13 + 48) + v16);
  return a1;
}

uint64_t sub_21D7E6C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *v7;
  *v7 = *v8;
  v11 = v9;

  v12 = sub_21DBF78CC();
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v7 + v15 + 8) & ~v15;
  v17 = (v8 + v15 + 8) & ~v15;
  (*(v13 + 24))(v16, v17, v12);
  *(*(v14 + 40) + v16) = *(*(v14 + 40) + v17);
  return a1;
}

uint64_t sub_21D7E6D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_21DBF78CC();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 32))(v13, v14, v9);
  *(*(v11 + 32) + v13) = *(*(v11 + 32) + v14);
  return a1;
}

uint64_t sub_21D7E6E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = *v8;

  v10 = sub_21DBF78CC();
  v11 = *(v10 - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = (v8 + v13 + 8) & ~v13;
  (*(v11 + 40))(v14, v15, v10);
  *(*(v12 + 24) + v14) = *(*(v12 + 24) + v15);
  return a1;
}

uint64_t sub_21D7E6EF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_21DBF78CC();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = *(*(v8 - 8) + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 8) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_21D7E7198(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_21DBF78CC() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 1;
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 >= 4)
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (*(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
LABEL_14:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

LABEL_51:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 == v14)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v23 + v12 + 8) & ~v12, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

uint64_t sub_21D7E7528(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v48 = sub_21DBF5B9C();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58848, &qword_21DC09A90);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D50, &qword_21DC29EA8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = (&v35 - v13);
  MEMORY[0x28223BE20](v14);
  v40 = &v35 - v15;
  v51 = MEMORY[0x277D84F90];
  sub_21D18F4EC(0, 0, 0);
  v16 = v51;
  v39 = *(a1 + 16);
  if (v39)
  {
    v17 = 0;
    v37 = (v3 + 8);
    v38 = (v3 + 16);
    v18 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v36 = *(v6 + 72);
    do
    {
      v50 = v16;
      v19 = v43;
      v20 = *(v43 + 48);
      v21 = v41;
      *v41 = v17;
      sub_21D0FE6CC(v18, v21 + v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      v22 = v40;
      sub_21D0D523C(v21, v40, &qword_27CE61D50, &qword_21DC29EA8);
      v23 = v42;
      sub_21D0D3954(v22, v42, &qword_27CE61D50, &qword_21DC29EA8);
      v24 = v23 + *(v19 + 48);
      v25 = v46;
      sub_21D7F4090(v24, v46, type metadata accessor for TTRAccountsListsViewModel.Item);
      v26 = *(v45 + 48);
      sub_21D0FE6CC(v25, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      v27 = v47;
      v28 = v10;
      v29 = v48;
      (*v38)(v47, v49, v48);
      LOBYTE(v21) = sub_21DBF5B2C();
      v30 = v27;
      v16 = v50;
      v31 = v29;
      v10 = v28;
      (*v37)(v30, v31);
      sub_21D101390(v25, type metadata accessor for TTRAccountsListsViewModel.Item);
      *(v28 + v26) = v21 & 1;
      sub_21D0CF7E0(v22, &qword_27CE61D50, &qword_21DC29EA8);
      v51 = v16;
      v33 = *(v16 + 16);
      v32 = *(v16 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21D18F4EC((v32 > 1), v33 + 1, 1);
        v16 = v51;
      }

      ++v17;
      *(v16 + 16) = v33 + 1;
      sub_21D0D523C(v28, v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33, &qword_27CE58848, &qword_21DC09A90);
      v18 += v36;
    }

    while (v39 != v17);
  }

  return v16;
}

uint64_t sub_21D7E79C0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21D830500(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21D7EF748(v6);
  return sub_21DBFBFFC();
}

void sub_21D7E7A3C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D50, &qword_21DC29EA8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for TTRAccountsListsViewModel.Item(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      sub_21D0FE6CC(v13, v7 + v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_21D0D523C(v7, a1, &qword_27CE61D50, &qword_21DC29EA8);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D7E7C2C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61C10);
  v1 = __swift_project_value_buffer(v0, qword_27CE61C10);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams.anchor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 10) = *(v1 + 202);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 202) = *(v1 + 202);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_21D567868(v21, &v20);
}

__n128 TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams.init(anchor:members:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v3;
  *(a3 + 192) = *(a1 + 192);
  *(a3 + 202) = *(a1 + 202);
  v4 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v4;
  v5 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v5;
  v6 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v6;
  v7 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  *(a3 + 224) = a2;
  return result;
}

unint64_t TTRAccountsListsPresenterCapability.GroupCreationValidationError.description.getter()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  v3 = 0xD000000000000028;
  if (v2 != 6)
  {
    v3 = 0xD000000000000031;
  }

  v4 = 0xD00000000000001DLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000026;
  if (v2 != 2)
  {
    v5 = 0xD000000000000020;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t TTRAccountsListsPresenterCapability.GroupCreationValidationError.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D7E7F60()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  v3 = 0xD000000000000028;
  if (v2 != 6)
  {
    v3 = 0xD000000000000031;
  }

  v4 = 0xD00000000000001DLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000026;
  if (v2 != 2)
  {
    v5 = 0xD000000000000020;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

id TTRAccountsListsPresenterCapability.GroupCreationParams.anchor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

double TTRAccountsListsPresenterCapability.ListPinningParams.action.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D7E80B8(v2);
}

double sub_21D7E80B8(unint64_t a1)
{
  if (a1 >= 2)
  {
    sub_21DBF8E0C();
  }

  return result;
}

void (*TTRAccountsListsPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRAccountsListsPresenterCapability.__allocating_init(contactsProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = MEMORY[0x277D84F98];
  sub_21D0D0FD0(a1, v2 + 40);
  return v2;
}

uint64_t TTRAccountsListsPresenterCapability.canMove(_:into:atUnadjustedIndex:containerIsInEditMode:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27[-v12];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v14 = *(v5 + 24), ObjectType = swift_getObjectType(), v16 = (*(v14 + 8))(v5, ObjectType, v14), swift_unknownObjectRelease(), v16))
  {
    sub_21D0D3954(a2, v13, &qword_27CE5A490, &unk_21DC0F950);
    if (a4)
    {
      v17 = 0;
    }

    else
    {
      v17 = a3;
    }

    type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionRequest(0);
    v18 = swift_allocObject();
    v19 = (v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter);
    *v19 = 0;
    v19[1] = 0;
    v20 = v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget;
    *v20 = 0;
    *(v20 + 8) = -1;
    sub_21D0D523C(v13, v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &qword_27CE5A490, &unk_21DC0F950);
    *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex) = v17;
    *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_viewModel) = v16;
    *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_containerIsInEditMode) = a5 & 1;
    type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan(0);
    v21 = swift_allocObject();
    *(v21 + 16) = MEMORY[0x277D84F90];
    *(v21 + 24) = 1;
    *(v21 + 40) = 0;
    v22 = OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8, &qword_21DC0F9D8);
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    *(v21 + 32) = v18;

    sub_21D7ECA9C(a1);

    swift_beginAccess();
    v24 = *(v21 + 24);

    v25 = v24 ^ 1;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v14 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 8))(v5, ObjectType, v14);
  swift_unknownObjectRelease();
  if (!v16)
  {
    return 0;
  }

  sub_21D0D3954(a2, v13, &qword_27CE5A490, &unk_21DC0F950);
  if (a4)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionRequest(0);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter);
  *v19 = 0;
  v19[1] = 0;
  v20 = v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget;
  *v20 = 0;
  *(v20 + 8) = -1;
  sub_21D0D523C(v13, v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &qword_27CE5A490, &unk_21DC0F950);
  *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex) = v17;
  *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_viewModel) = v16;
  *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_containerIsInEditMode) = a5 & 1;
  type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan(0);
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x277D84F90];
  *(v21 + 24) = 1;
  *(v21 + 40) = 0;
  v22 = OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8, &qword_21DC0F9D8);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 32) = v18;

  sub_21D7ECA9C(a1);

  return v21;
}

void TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 8))(v3, ObjectType, v10);
  swift_unknownObjectRelease();
  if (!v12)
  {
    goto LABEL_7;
  }

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a2, &v80);
  v13 = BYTE8(v80);
  if (BYTE8(v80) == 255)
  {
    goto LABEL_6;
  }

  v14 = v80;
  v15 = [v80 parentListID];
  if (v15)
  {

    sub_21D157864(v14, v13);
LABEL_6:

    goto LABEL_7;
  }

  sub_21D0FE6CC(a2, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:

      sub_21D157864(v14, v13);
      sub_21D101390(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
      break;
    case 5u:
    case 6u:
      v25 = v9[217];
      v26 = v9[216];
      v27 = v9[148];
      v28 = v9[147];
      v29 = v9[146];
      v30 = v9[145];
      v31 = v9[144];
      v32 = v9[120];
      v34 = *(v9 + 5);
      v33 = *(v9 + 6);
      v35 = *(v9 + 2);
      v75 = *v9;
      *(v76 + 8) = *(v9 + 24);
      *&v76[0] = v35;
      *(&v76[1] + 1) = v34;
      *&v77[0] = v33;
      *(v77 + 8) = *(v9 + 56);
      *(&v77[1] + 8) = *(v9 + 72);
      *(&v77[2] + 8) = *(v9 + 88);
      *(&v77[3] + 8) = *(v9 + 104);
      BYTE8(v77[4]) = v32;
      v78 = *(v9 + 8);
      LOBYTE(v79[0]) = v31;
      BYTE1(v79[0]) = v30;
      BYTE2(v79[0]) = v29;
      BYTE3(v79[0]) = v28;
      BYTE4(v79[0]) = v27;
      *(v79 + 8) = *(v9 + 152);
      *(&v79[1] + 8) = *(v9 + 168);
      *(&v79[2] + 8) = *(v9 + 184);
      *(&v79[3] + 8) = *(v9 + 200);
      BYTE8(v79[4]) = v26;
      BYTE9(v79[4]) = v25;
      if (v29 != 2 && (v29 & 1) != 0)
      {

        sub_21D157864(v14, v13);
        sub_21D1077D8(&v75);
        break;
      }

      v56 = &v56;
      v57 = v14;
      *&v80 = a1;
      MEMORY[0x28223BE20](v35);
      *(&v56 - 2) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60, &unk_21DC29A40);
      sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60, &unk_21DC29A40, MEMORY[0x277D83970]);
      v36 = sub_21DBFA43C();
      if (v36)
      {
        v37 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A38, &qword_21DC0CC48);
        v38 = swift_allocObject();
        v39 = v79[1];
        v40 = v79[3];
        v38[13] = v79[2];
        v38[14] = v40;
        *(v38 + 234) = *(&v79[3] + 10);
        v41 = v77[3];
        v42 = v78;
        v43 = v79[0];
        v38[9] = v77[4];
        v38[10] = v42;
        v38[11] = v43;
        v38[12] = v39;
        v44 = v76[1];
        v45 = v77[1];
        v46 = v77[2];
        v38[5] = v77[0];
        v38[6] = v45;
        v38[7] = v46;
        v38[8] = v41;
        v47 = v75;
        v48 = v76[0];
        v38[1] = xmmword_21DC08D00;
        v38[2] = v47;
        v38[3] = v48;
        v38[4] = v44;
        v73[0] = v38;
        sub_21D567868(&v75, &v58);
        sub_21D567868(&v75, &v58);
        sub_21D563244(v37);
        v90 = v79[1];
        v91 = v79[2];
        v92[0] = v79[3];
        *(v92 + 10) = *(&v79[3] + 10);
        v86 = v77[3];
        v87 = v77[4];
        v88 = v78;
        v89 = v79[0];
        v82 = v76[1];
        v83 = v77[0];
        v84 = v77[1];
        v85 = v77[2];
        v80 = v75;
        v81 = v76[0];
        v93 = v73[0];
        v70 = v92[0];
        v71 = v92[1];
        v72 = v73[0];
        v66 = v78;
        v67 = v79[0];
        v68 = v79[1];
        v69 = v79[2];
        v62 = v77[1];
        v63 = v77[2];
        v64 = v77[3];
        v65 = v77[4];
        v58 = v75;
        v59 = v76[0];
        v60 = v76[1];
        v61 = v77[0];
        TTRAccountsListsPresenterCapability.groupCreationParams(for:)(&v58, v73);

        sub_21D1077D8(&v75);
        sub_21D157864(v57, v13);
        if (v74)
        {
          sub_21D7ED24C(&v80);
          sub_21D7ED208(&v58);
        }

        else
        {
          sub_21D7ED27C(v73[0], v73[1], v73[2], v73[3], v73[4], 0);
          v70 = v92[0];
          v71 = v92[1];
          v72 = v93;
          v66 = v88;
          v67 = v89;
          v68 = v90;
          v69 = v91;
          v62 = v84;
          v63 = v85;
          v64 = v86;
          v65 = v87;
          v58 = v80;
          v59 = v81;
          v60 = v82;
          v61 = v83;
          nullsub_1();
        }

        v50 = v71;
        *(a3 + 192) = v70;
        *(a3 + 208) = v50;
        *(a3 + 224) = v72;
        v51 = v67;
        *(a3 + 128) = v66;
        *(a3 + 144) = v51;
        v52 = v69;
        *(a3 + 160) = v68;
        *(a3 + 176) = v52;
        v53 = v63;
        *(a3 + 64) = v62;
        *(a3 + 80) = v53;
        v54 = v65;
        *(a3 + 96) = v64;
        *(a3 + 112) = v54;
        v55 = v59;
        *a3 = v58;
        *(a3 + 16) = v55;
        v23 = v60;
        v22 = v61;
        goto LABEL_8;
      }

      sub_21D1077D8(&v75);
      v24 = v57;
LABEL_20:
      sub_21D157864(v24, v13);
      break;
    case 0xFu:
    case 0x10u:

      v24 = v14;
      goto LABEL_20;
    default:

      sub_21D157864(v14, v13);
      v49 = sub_21DBF56BC();
      (*(*(v49 - 8) + 8))(v9, v49);
      break;
  }

LABEL_7:
  sub_21D7ED208(&v80);
  v16 = v92[1];
  *(a3 + 192) = v92[0];
  *(a3 + 208) = v16;
  *(a3 + 224) = v93;
  v17 = v89;
  *(a3 + 128) = v88;
  *(a3 + 144) = v17;
  v18 = v91;
  *(a3 + 160) = v90;
  *(a3 + 176) = v18;
  v19 = v85;
  *(a3 + 64) = v84;
  *(a3 + 80) = v19;
  v20 = v87;
  *(a3 + 96) = v86;
  *(a3 + 112) = v20;
  v21 = v81;
  *a3 = v80;
  *(a3 + 16) = v21;
  v23 = v82;
  v22 = v83;
LABEL_8:
  *(a3 + 32) = v23;
  *(a3 + 48) = v22;
}

double sub_21D7E8D7C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v37[-v11];
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(&v37[-v11]);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v9);
  v13 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v12, v9);
  sub_21D101390(v9, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D101390(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v13)
  {
    sub_21D7F4008(&v39);
    v14 = *&v43[32];
    a2[10] = *&v43[16];
    a2[11] = v14;
    a2[12] = *&v43[48];
    v15 = *&v43[58];
  }

  else
  {
    sub_21D0FE6CC(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        sub_21D101390(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_5;
      case 5u:
      case 6u:
        v23 = v6[217];
        v24 = v6[216];
        v25 = v6[148];
        v26 = v6[147];
        v27 = v6[146];
        v28 = v6[145];
        v29 = v6[144];
        v31 = *(v6 + 5);
        v30 = *(v6 + 6);
        v32 = *(v6 + 2);
        v33 = *v6;
        v38 = v6[120];
        v37[8] = v29;
        v39 = v33;
        *&v40[0] = v32;
        *(v40 + 8) = *(v6 + 24);
        *(&v40[1] + 1) = v31;
        *v41 = v30;
        v34 = *(v6 + 72);
        *&v41[8] = *(v6 + 56);
        *&v41[24] = v34;
        v35 = *(v6 + 104);
        *&v41[40] = *(v6 + 88);
        *&v41[56] = v35;
        v41[72] = v38;
        v42 = *(v6 + 8);
        v43[0] = v29;
        v43[1] = v28;
        v43[2] = v27;
        v43[3] = v26;
        v43[4] = v25;
        *&v43[8] = *(v6 + 152);
        *&v43[24] = *(v6 + 168);
        *&v43[40] = *(v6 + 184);
        *&v43[56] = *(v6 + 200);
        v43[72] = v24;
        v43[73] = v23;
        nullsub_1();
        goto LABEL_6;
      case 0xFu:
      case 0x10u:
        goto LABEL_5;
      default:
        v36 = sub_21DBF56BC();
        (*(*(v36 - 8) + 8))(v6, v36);
LABEL_5:
        sub_21D7F4008(&v39);
LABEL_6:
        v16 = *&v43[32];
        a2[10] = *&v43[16];
        a2[11] = v16;
        a2[12] = *&v43[48];
        v15 = *&v43[58];
        break;
    }
  }

  *(a2 + 202) = v15;
  v17 = *&v41[64];
  a2[6] = *&v41[48];
  a2[7] = v17;
  v18 = *v43;
  a2[8] = v42;
  a2[9] = v18;
  v19 = *v41;
  a2[2] = v40[1];
  a2[3] = v19;
  v20 = *&v41[32];
  a2[4] = *&v41[16];
  a2[5] = v20;
  result = *&v39;
  v22 = v40[0];
  *a2 = v39;
  a2[1] = v22;
  return result;
}

void TTRAccountsListsPresenterCapability.groupCreationParams(for:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[28];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(v2, ObjectType, v5);
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (!*(v4 + 16))
  {

LABEL_10:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_11:
    *(a2 + 40) = 1;
    return;
  }

  *&v54 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C70, &unk_21DC29A50);
  sub_21D0D0F1C(&qword_27CE61C78, &qword_27CE61C70, &unk_21DC29A50, MEMORY[0x277D83970]);
  v8 = sub_21DBFA43C();
  if (!v8)
  {
LABEL_51:

LABEL_52:
    v22 = 4;
LABEL_53:
    *a2 = v22;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    *&v54 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v12 = (v9 + 32);
    v13 = v10;
    do
    {
      v14 = *v12;
      v12 += 2;
      v15 = [v14 objectID];
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v13;
    }

    while (v13);
    v16 = v54;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  *&v54 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
  sub_21D0D0F1C(&qword_27CE59838, &qword_27CE58858, &unk_21DC09AA0, MEMORY[0x277D83970]);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v17 = sub_21DBFA4AC();

  if (v17 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {

    if (i != v10)
    {

      *a2 = 1;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 1;
      return;
    }

    v19 = *(v9 + 16);
    if (!v19)
    {
      break;
    }

    v20 = 0;
    v21 = (v9 + 40);
    do
    {
      if (v20 >= *(v9 + 16))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (*v21 != 1 && ([*(v21 - 1) isGroup] & 1) != 0)
      {

        v22 = 5;
        goto LABEL_53;
      }

      ++v20;
      v21 += 2;
    }

    while (v19 != v20);
    v23 = 0;
    v24 = (v9 + 40);
    while (v23 < *(v9 + 16))
    {
      if (*v24 != 1 && ([*(v24 - 1) canBeIncludedInGroup] & 1) == 0)
      {

        v22 = 7;
        goto LABEL_53;
      }

      ++v23;
      v24 += 2;
      if (v19 == v23)
      {
        goto LABEL_30;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_30:
  v25 = 0;
  v26 = v9 + 40;
  v10 = v11;
  *&v54 = v11;
  v11 = -v19;
LABEL_31:
  v27 = v25 + 1;
  v28 = (v26 + 16 * v25);
  while (v27 - v19 != 1)
  {
    v25 = v27;
    if ((v27 - 1) >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    v29 = *(v28 - 1);
    if ((*v28 & 1) == 0)
    {
      v30 = v29;
      v31 = [v30 account];
      v32 = [v31 objectID];

LABEL_38:
      MEMORY[0x223D42D80]();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v10 = v54;
      v26 = v9 + 40;
      goto LABEL_31;
    }

    ++v27;
    v28 += 16;
    if ([v29 parentAccountID])
    {
      goto LABEL_38;
    }
  }

  *&v54 = v10;
  v33 = sub_21DBFA4AC();

  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_43;
    }

LABEL_71:

    v22 = 2;
    goto LABEL_53;
  }

  if (sub_21DBFBD7C() != 1 || !sub_21DBFBD7C())
  {
    goto LABEL_71;
  }

LABEL_43:
  if ((v33 & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (j = *(v33 + 32); ; j = MEMORY[0x223D44740](0, v33))
    {
      v35 = j;

      TTRAccountsListsViewModel.account(with:)(v35, &v54);
      v36 = *(&v54 + 1);
      if (!*(&v54 + 1))
      {

        goto LABEL_51;
      }

      v37 = v54;
      v38 = v55;
      sub_21DA1CE20(v55, &v54);
      v39 = BYTE8(v54);
      if (BYTE8(v54))
      {
        break;
      }

      v33 = v54;
      v40 = [v54 groupContext];
      if (!v40)
      {

        sub_21D1576C8(v37, v36, v38);
        sub_21D103A34(v33, 0);

        v22 = 3;
        goto LABEL_53;
      }

      v47 = v40;
      v48 = v33;
      v49 = v37;
      v50 = v38;
      v51 = v36;
      v52 = v35;
      if (!v19)
      {
LABEL_60:

        sub_21D103A34(v48, 0);

        sub_21D1576C8(v49, v51, v50);

        v22 = 6;
        goto LABEL_53;
      }

      v41 = 0;
      v42 = (v9 + 40);
      while (v41 < *(v9 + 16))
      {
        v43 = *(v42 - 1);
        v53 = *v42;
        v44 = v43;
        v45 = [v44 objectID];
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v33 = sub_21DBFB63C();

        if (v33)
        {

          sub_21D1576C8(v49, v51, v50);

          *a2 = v48;
          *(a2 + 8) = v47;
          *(a2 + 16) = v43;
          *(a2 + 24) = v53;
          *(a2 + 32) = v9;
          *(a2 + 40) = 0;
          return;
        }

        ++v41;

        v42 += 16;
        if (v19 == v41)
        {
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_73:
      ;
    }

    if (BYTE8(v54) == 255)
    {
    }

    else
    {
      v46 = v54;

      sub_21D103A34(v46, v39);
    }

    sub_21D1576C8(v37, v36, v38);
    goto LABEL_52;
  }

  __break(1u);
}

id sub_21D7E98E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  v28 = a1[10];
  v29 = v4;
  v30[0] = a1[12];
  *(v30 + 10) = *(a1 + 202);
  v5 = a1[7];
  v24 = a1[6];
  v25 = v5;
  v6 = a1[9];
  v26 = a1[8];
  v27 = v6;
  v7 = a1[3];
  v20 = a1[2];
  v21 = v7;
  v8 = a1[5];
  v22 = a1[4];
  v23 = v8;
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  result = TTRAccountsListsViewModel.remList(for:)(&v18);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  else
  {
    v11 = a1[11];
    v28 = a1[10];
    v29 = v11;
    v30[0] = a1[12];
    *(v30 + 10) = *(a1 + 202);
    v12 = a1[7];
    v24 = a1[6];
    v25 = v12;
    v13 = a1[9];
    v26 = a1[8];
    v27 = v13;
    v14 = a1[3];
    v20 = a1[2];
    v21 = v14;
    v15 = a1[5];
    v22 = a1[4];
    v23 = v15;
    v16 = a1[1];
    v18 = *a1;
    v19 = v16;
    result = TTRAccountsListsViewModel.remSmartList(for:)(&v18);
    if (result)
    {
      *a2 = result;
      v17 = 1;
    }

    else
    {
      *a2 = 0;
      v17 = -1;
    }

    *(a2 + 8) = v17;
  }

  return result;
}

uint64_t TTRAccountsListsPresenterCapability.customSmartListCreationParams(forHashtagLabels:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70, &unk_21DC299D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_21DBF6C1C();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF7E5C();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(v2, ObjectType, v19);
    result = swift_unknownObjectRelease();
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
      v23 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
      result = sub_21D0E8DA0(v17);
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v24 = result;
      v40 = v9;
      v41 = v6;
      sub_21D0D523C(v17, v14, &qword_27CE5A490, &unk_21DC0F950);
      v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v22;
      sub_21D0D523C(v14, v26 + v25, &qword_27CE5A490, &unk_21DC0F950);
      v48 = 0;
      v49 = v24;
      v50 = sub_21D10791C;
      v51 = v26;
      v52 = sub_21D108104;
      v53 = v21;
      v54 = sub_21D1083B8;
      v55 = 0;
      v56 = sub_21D11DAE4;
      v57 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C80, &qword_21DC375B0);
      sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
      sub_21D0D0F1C(&qword_27CE61C88, &qword_27CE61C80, &qword_21DC375B0, MEMORY[0x277D842F0]);
      sub_21DBFA48C();

      v27 = v58;
      if (v58)
      {
        v28 = v47;
        sub_21D7EA018(v47);
        v39 = v29;
        v31 = v30;
        (*(v43 + 16))(v42, v28, v44);
        v32 = v45;
        sub_21DBF7E4C();
        sub_21DBF801C();
        sub_21DBF800C();
        v33 = v46;
        v34 = v41;
        v35 = v40;
        (*(v46 + 16))(v41, v32, v40);
        (*(v33 + 56))(v34, 0, 1, v35);
        v36 = sub_21DBF7F8C();

        result = (*(v33 + 8))(v32, v35);
        v37 = v39;
        *a2 = v27;
        a2[1] = v37;
        a2[2] = v31;
        a2[3] = v36;
        return result;
      }
    }
  }

  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void sub_21D7E9F5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21DA1CE20(*(a1 + 16), &v8);
  v3 = v9;
  if (v9 == 255)
  {
    goto LABEL_7;
  }

  v4 = v8;
  if (v9)
  {
    v7 = v8;
    goto LABEL_6;
  }

  v5 = [v8 capabilities];
  v6 = [v5 supportsCustomSmartLists];

  if ((v6 & 1) == 0)
  {
    v7 = v4;
    v3 = 0;
LABEL_6:
    sub_21D103A34(v7, v3);
LABEL_7:
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21D7EA018(uint64_t a1)
{
  v2 = sub_21DBF78CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF6C1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D45378])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    v13 = v10[1];
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
    sub_21D996B68(v13, v12);
    v21[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B3E0, "tY\n");
    sub_21D0D0F1C(&qword_27CE5B3E8, &qword_27CE5B3E0, "tY\n", MEMORY[0x277D83B68]);
    sub_21DBF77EC();

    sub_21DBF784C();
    REMHashtagLabelCollection.localizedDescription.getter();
    (*(v3 + 8))(v5, v2);
    v16 = sub_21DBF6C0C();
    (*(*(v16 - 8) + 8))(v10 + v14, v16);
    return;
  }

  if (v11 == *MEMORY[0x277D45398])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x277D45380])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_8:
      sub_21DBF516C();
      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_8;
  }

  if (qword_27CE56CE0 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE61C10);
  v18 = MEMORY[0x277D84F90];
  v19 = sub_21D17716C(MEMORY[0x277D84F90]);
  v20 = sub_21D17716C(v18);
  sub_21DAEAB00("Unknown hashtag label type", 26, 2, v19, v20);
  __break(1u);
}

void TTRAccountsListsPresenterCapability.listPinningParams(for:wantsPinned:)(uint64_t a1@<X0>, int a2@<W1>, char **a3@<X8>)
{
  v7 = *(a1 + 16);
  swift_beginAccess();
  if (v7)
  {
    v8 = 0;
    v64 = 0;
    v9 = a1 + 32;
    v10 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
    v68 = v7;
    v65 = a3;
    v66 = a2;
    v69 = v3;
    v63 = v9;
    while (1)
    {
      v11 = (v9 + 224 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= v7)
        {
          __break(1u);
LABEL_75:
          __break(1u);
          return;
        }

        v13 = v11[11];
        v77 = v11[10];
        v78 = v13;
        v79[0] = v11[12];
        *(v79 + 10) = *(v11 + 202);
        v14 = v11[7];
        v75[6] = v11[6];
        v75[7] = v14;
        v15 = v11[9];
        v75[8] = v11[8];
        v76 = v15;
        v16 = v11[3];
        v75[2] = v11[2];
        v75[3] = v16;
        v17 = v11[5];
        v75[4] = v11[4];
        v75[5] = v17;
        v18 = v11[1];
        v75[0] = *v11;
        v75[1] = v18;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_75;
        }

        v19 = BYTE2(v76);
        if (BYTE2(v76) == 2 || !swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_53;
        }

        v70 = v12 + 1;
        v71 = v10;
        v20 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 8);
        sub_21D567868(v75, &v73);
        v23 = v22(v3, ObjectType, v20);
        v24 = swift_unknownObjectRelease();
        if (!v23)
        {
          sub_21D1077D8(v75);
          v10 = v71;
          goto LABEL_53;
        }

        v25 = *&v75[0];
        if (v19)
        {
          break;
        }

        sub_21DA1CE20(*&v75[0], &v73);
        v26 = v73;
        v10 = v71;
        if (v74 == 1 || v74 == 4)
        {

          v27 = 0;
        }

        else
        {
          if (v74 != 255)
          {
            sub_21D103A34(v73, v74);
          }

          sub_21DA1CE20(v25, &v73);

          v26 = v73;
          if (v74 != 2)
          {
            if (v74 != 255)
            {
              sub_21D103A34(v73, v74);
            }

LABEL_52:
            sub_21D1077D8(v75);
LABEL_53:
            v53 = v66;
            if (v66 == 2)
            {
              v54 = *(v10 + 2);
              v55 = *(v67 + 2);

              v53 = v54 >= v55;
            }

            else
            {
            }

            v56 = v65;
            *v65 = 0;
            *(v56 + 8) = v53;
            return;
          }

          v27 = 1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21D2146A4(0, *(v10 + 2) + 1, 1, v10);
        }

        v29 = *(v10 + 2);
        v28 = *(v10 + 3);
        if (v29 >= v28 >> 1)
        {
          v10 = sub_21D2146A4((v28 > 1), v29 + 1, 1, v10);
        }

        sub_21D1077D8(v75);
        *(v10 + 2) = v29 + 1;
        v30 = &v10[16 * v29];
        *(v30 + 4) = v26;
        v30[40] = v27;
        ++v12;
        v11 += 14;
        v7 = v68;
        v3 = v69;
        if (v70 == v68)
        {
          a3 = v65;
          LOBYTE(a2) = v66;
          goto LABEL_38;
        }
      }

      v31 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
      v72 = *(v23 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
      MEMORY[0x28223BE20](v24);
      *(&v62 - 2) = v25;
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
      sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
      v32 = v64;
      sub_21DBFA48C();

      v10 = v71;
      if (v74 == 255)
      {
        goto LABEL_26;
      }

      v34 = v73;
      if (v74)
      {
        break;
      }

      v64 = v32;

      v35 = 0;
LABEL_30:
      v36 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v63;
      v8 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_21D2146A4(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = v36;
      v39 = *(v36 + 2);
      v67 = v38;
      v40 = *(v38 + 3);
      if (v39 >= v40 >> 1)
      {
        v67 = sub_21D2146A4((v40 > 1), v39 + 1, 1, v67);
      }

      sub_21D1077D8(v75);
      v41 = v67;
      *(v67 + 2) = v39 + 1;
      v42 = &v41[16 * v39];
      *(v42 + 4) = v34;
      v42[40] = v35;
      v7 = v68;
      v3 = v69;
      a3 = v65;
      LOBYTE(a2) = v66;
      if (v8 == v68)
      {
        goto LABEL_38;
      }
    }

    sub_21D157864(v73, v74);
LABEL_26:
    v64 = &v62;
    v72 = *(v23 + v31);
    MEMORY[0x28223BE20](v33);
    *(&v62 - 2) = v25;
    sub_21DBF8E0C();
    sub_21DBFA48C();

    if (v74 == 255)
    {
      goto LABEL_52;
    }

    v34 = v73;
    if ((v74 & 1) == 0)
    {
      sub_21D157864(v73, v74);
      goto LABEL_52;
    }

    v64 = v32;
    v35 = 1;
    goto LABEL_30;
  }

  v10 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
LABEL_38:
  if (a2 != 2)
  {
    if (a2)
    {
      v45 = *(v10 + 2);
      sub_21DBF8E0C();
      if (v45)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v46 = a2;
          v47 = *(v3 + 24);
          v48 = swift_getObjectType();
          v49 = (*(v47 + 8))(v3, v48, v47);
          swift_unknownObjectRelease();
          if (v49)
          {
            v50 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(*(v10 + 2));

            if (v50)
            {
LABEL_62:

              *a3 = 1;
              *(a3 + 8) = 1;
              return;
            }
          }

          else
          {
          }

          LOBYTE(a2) = v46;
        }

        else
        {
        }

        goto LABEL_70;
      }
    }

    else
    {
      v51 = v67;
      v52 = *(v67 + 2);
      sub_21DBF8E0C();
      if (v52)
      {

        v10 = v51;
LABEL_70:
        *a3 = v10;
        goto LABEL_71;
      }
    }

    *a3 = 0;
LABEL_71:
    v61 = a2 & 1;
    goto LABEL_72;
  }

  v43 = *(v10 + 2);
  v44 = *(v67 + 2);
  if (!v43)
  {

    if (v44)
    {
      *a3 = v67;
      *(a3 + 8) = 0;
      return;
    }

    goto LABEL_66;
  }

  if (v44)
  {

LABEL_66:

    v61 = v43 >= v44;
    *a3 = 0;
    goto LABEL_72;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v57 = *(v3 + 24), v58 = swift_getObjectType(), v59 = (*(v57 + 8))(v3, v58, v57), swift_unknownObjectRelease(), v59))
  {
    v60 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(*(v10 + 2));

    if (v60)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  *a3 = v10;
  v61 = 1;
LABEL_72:
  *(a3 + 8) = v61;
}

uint64_t sub_21D7EAC70(uint64_t a1, char *a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[4];
  if (!*(v6 + 16) || (v7 = sub_21D17E07C(a1), (v8 & 1) == 0))
  {
    swift_endAccess();
    sub_21DBF8E0C();
    goto LABEL_42;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  sub_21DBF8E0C();
  v10 = sub_21DBF8E0C();
  v11 = sub_21D19F818(v10);

  v40[0] = v11;
  if (v9 >> 62)
  {
    goto LABEL_39;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_5:
  v29 = a1;
  v30 = a3;
  v13 = 0;
  v35 = sub_21D0D8CF0(0, &unk_27CE626A0, 0x277D445D8);
  v36 = v9 & 0xC000000000000001;
  v31 = v9 + 32;
  v32 = v9 & 0xFFFFFFFFFFFFFF8;
  v33 = v12;
  v34 = v9;
  while (1)
  {
LABEL_7:
    if (v36)
    {
      v14 = MEMORY[0x223D44740](v13, v9);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v13 >= *(v32 + 16))
      {
        goto LABEL_38;
      }

      v14 = *(v31 + 8 * v13);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v12 = sub_21DBFBD7C();
        if (!v12)
        {
          goto LABEL_40;
        }

        goto LABEL_5;
      }
    }

    a3 = v14;
    v11 = v35;
    v38 = sub_21DBFB4AC();
    if (v38)
    {
      break;
    }

    if (v13 == v12)
    {
      goto LABEL_34;
    }
  }

  v37 = a3;
  v16 = v40[0];
  if ((v40[0] & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
    sub_21D19F2B8(&qword_27CE58AB8, &qword_280D0C1A0, 0x277CBDA58);
    sub_21DBFAB5C();
    v16 = v40[3];
    v9 = v40[4];
    v11 = v40[5];
    a1 = v40[6];
    v17 = v40[7];
  }

  else
  {
    v18 = -1 << *(v40[0] + 32);
    v9 = v40[0] + 56;
    v11 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v40[0] + 56);
    sub_21DBF8E0C();
    a1 = 0;
  }

  v21 = (v11 + 64) >> 6;
  while (1)
  {
    a3 = a1;
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_21DBFBDBC())
    {
      goto LABEL_32;
    }

    sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
    swift_dynamicCast();
    v24 = v39;
    if (!v39)
    {
      goto LABEL_32;
    }

LABEL_30:
    v11 = sub_21DBFB4BC();

    if (v11)
    {

      sub_21D199874(v16);
      goto LABEL_33;
    }
  }

  v22 = a1;
  v23 = v17;
  if (!v17)
  {
    while (1)
    {
      a1 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (a1 >= v21)
      {
        goto LABEL_32;
      }

      v23 = *(v9 + 8 * a1);
      ++v22;
      if (v23)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_26:
  v17 = (v23 - 1) & v23;
  v24 = *(*(v16 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v23)))));
  if (v24)
  {
    goto LABEL_30;
  }

LABEL_32:
  sub_21D199874(v16);
  v25 = v37;
  v11 = v40;
  sub_21D29E7EC(&v39, v25);

LABEL_33:
  v12 = v33;
  v9 = v34;
  if (v13 != v33)
  {
    goto LABEL_7;
  }

LABEL_34:

  v11 = v40[0];
  a1 = v29;
  a3 = v30;
LABEL_41:
  v39 = sub_21D198B4C(v11);
  sub_21D7E79C0(&v39);

  a2 = v39;
LABEL_42:
  swift_beginAccess();
  v26 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = a3[4];
  a3[4] = 0x8000000000000000;
  sub_21D478F18(a2, v26, isUniquelyReferenced_nonNull_native);

  a3[4] = v39;
  return swift_endAccess();
}

void sub_21D7EB0E8(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50, &unk_21DC183E0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v42 - v7);
  v9 = *a1;
  v10 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  if (v11)
  {
    v50 = v5;
    v12 = 0;
    v51 = v9;
    v13 = (v9 + 32);
    v49 = (v6 + 88);
    v48 = *MEMORY[0x277D450E0];
    v44 = *MEMORY[0x277D450E8];
    v43 = *MEMORY[0x277D450D8];
    v42 = (v6 + 8);
    v46 = (v6 + 96);
    v52 = v11 - 1;
    v47 = xmmword_21DC09CF0;
    v53 = xmmword_21DC08D00;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v63 = v13[4];
      v17 = *v13;
      v61 = v15;
      v62 = v16;
      v59 = v17;
      v60 = v14;
      v18 = *(&v63 + 1);
      if (*(&v63 + 1))
      {
        v19 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
        v20 = swift_allocObject();
        *(v20 + 16) = v53;
        *(v20 + 32) = v19;
        *(v20 + 40) = v18;
        v21 = *(&v62 + 1);
        if (!*(&v62 + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        v21 = *(&v62 + 1);
        if (!*(&v62 + 1))
        {
LABEL_8:
          v23 = MEMORY[0x277D84F90];
          if (*(v20 + 16))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      v22 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
      v23 = swift_allocObject();
      *(v23 + 16) = v53;
      *(v23 + 32) = v22;
      *(v23 + 40) = v21;
      if (*(v20 + 16))
      {
        goto LABEL_10;
      }

LABEL_9:
      if (!*(v23 + 16))
      {
        sub_21D1D9B34(&v59, &v54);
        sub_21DBF8E0C();
        sub_21DBF8E0C();

LABEL_20:
        sub_21D1D9B90(&v59);
        goto LABEL_27;
      }

LABEL_10:
      v24 = objc_allocWithZone(MEMORY[0x277D445D8]);
      sub_21D1D9B34(&v59, &v54);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v25 = sub_21DBFA5DC();

      v26 = sub_21DBFA5DC();

      v27 = [v24 initWithPhones:v25 emails:v26];

      if (!v27)
      {
        goto LABEL_20;
      }

      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v28 = swift_allocObject();
      *(v28 + 16) = v47;
      *(v28 + 32) = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];
      sub_21DBF6A7C();

      v29 = v50;
      v30 = (*v49)(v8, v50);
      if (v30 == v48)
      {
        (*v46)(v8, v29);

        MEMORY[0x223D42D80](v31);
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v45 = v65;
        v56 = v61;
        v57 = v62;
        v58 = v63;
        v55 = v60;
        v54 = v59;
        v32 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v54);
        sub_21D1D9B90(&v59);
        v33 = v32;
        MEMORY[0x223D42D80]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
      }

      else
      {
        if (v30 == v44)
        {
          sub_21D1D9B90(&v59);
          (*v46)(v8, v29);
          v34 = *v8;
        }

        else
        {
          if (v30 != v43)
          {
            goto LABEL_36;
          }

          (*v42)(v8, v29);
          v56 = v61;
          v57 = v62;
          v58 = v63;
          v55 = v60;
          v54 = v59;
          v35 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v54);
          sub_21D1D9B90(&v59);
          v34 = v35;
        }

        v36 = v34;
        MEMORY[0x223D42D80]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
      }

LABEL_27:
      if (v52 == v12)
      {
        v10 = MEMORY[0x277D84F90];
        v37 = v45;
        if (v45 >> 62)
        {
          goto LABEL_34;
        }

LABEL_31:
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

LABEL_35:

        *&v59 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C98, &qword_21DC29A68);
        swift_allocObject();
        sub_21DBF824C();
        return;
      }

      ++v12;
      v13 += 5;
      if (v12 >= *(v51 + 16))
      {
        __break(1u);
LABEL_36:
        if (qword_27CE56CE0 != -1)
        {
          swift_once();
        }

        v38 = sub_21DBF84BC();
        __swift_project_value_buffer(v38, qword_27CE61C10);
        v39 = MEMORY[0x277D84F90];
        v40 = sub_21D17716C(MEMORY[0x277D84F90]);
        v41 = sub_21D17716C(v39);
        sub_21DAEAB00("Unknown contact status type", 27, 2, v40, v41);
        __break(1u);
        return;
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_31;
  }

LABEL_34:
  if (!sub_21DBFBD7C())
  {
    goto LABEL_35;
  }

LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60918, &qword_21DC29E90);
  *&v59 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D38, &qword_21DC29E98);
  sub_21D0D0F1C(&qword_27CE61D40, &qword_27CE61D38, &qword_21DC29E98, MEMORY[0x277D83988]);
  sub_21DBF819C();
}

uint64_t sub_21D7EB8A8(unint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  if (*a1 >> 62)
  {
    v6 = *a1;
    v7 = a3;
    result = sub_21DBFBD7C();
    a3 = v7;
    v4 = v6;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  return sub_21D7EAC70(*a3, v4, a2);
}

uint64_t TTRAccountsListsPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}