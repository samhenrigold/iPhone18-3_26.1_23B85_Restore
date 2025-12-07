uint64_t IntegrationEntry.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntegrationEntry.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntegrationEntry.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 20);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntegrationEntry.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 20);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntegrationEntry.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 24);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntegrationEntry.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 24);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntegrationEntry.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationEntry(0) + 32));

  return v1;
}

uint64_t IntegrationEntry.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntegrationEntry(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IntegrationEntry.allDay.setter(char a1)
{
  result = type metadata accessor for IntegrationEntry(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t IntegrationEntry.completed.setter(char a1)
{
  result = type metadata accessor for IntegrationEntry(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t IntegrationEntry.priority.setter(uint64_t a1)
{
  result = type metadata accessor for IntegrationEntry(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

void IntegrationEntry.color.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntegrationEntry(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_2427AE07C(v4, v5, v6, v7, v8, v9);
}

void sub_2427AE07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_2427A3288(a5, a6);
  }
}

__n128 IntegrationEntry.color.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for IntegrationEntry(0) + 52);
  sub_2427ACEDC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t IntegrationEntry.personaIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationEntry(0) + 56));

  return v1;
}

uint64_t IntegrationEntry.personaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntegrationEntry(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IntegrationEntry.externalIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationEntry(0) + 60));

  return v1;
}

uint64_t IntegrationEntry.externalIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntegrationEntry(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 IntegrationEntry.init(identifier:startDate:endDate:timeZone:title:allDay:completed:priority:recurrence:color:personaIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v40 = *(a13 + 32);
  v39 = *(a13 + 40);
  v18 = type metadata accessor for IntegrationEntry(0);
  v19 = v18[7];
  v20 = sub_2427B8DBC();
  v36 = *a13;
  v34 = *(a13 + 16);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v18[12];
  v22 = type metadata accessor for IntegrationRecurrence(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = &a9[v18[13]];
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *v23 = 0u;
  v24 = &a9[v18[14]];
  v25 = &a9[v18[15]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  v26 = v18[5];
  v27 = sub_2427B8D2C();
  v28 = *(*(v27 - 8) + 32);
  v28(&a9[v26], a3, v27);
  v28(&a9[v18[6]], a4, v27);
  sub_2427ACF3C(a5, &a9[v19], &qword_27ECC08E0, &qword_2427BB0B8);
  v29 = &a9[v18[8]];
  *v29 = a6;
  *(v29 + 1) = a7;
  a9[v18[9]] = a8;
  a9[v18[10]] = a10;
  *&a9[v18[11]] = a11;
  sub_2427ACF3C(a12, &a9[v21], &qword_27ECC08D8, &qword_2427BB0B0);
  sub_2427ACEDC(*v23, *(v23 + 1), *(v23 + 2), *(v23 + 3), *(v23 + 4), *(v23 + 5));
  result = v36;
  *v23 = v36;
  *(v23 + 1) = v34;
  *(v23 + 4) = v40;
  *(v23 + 5) = v39;
  *v24 = a14;
  *(v24 + 1) = a15;
  return result;
}

uint64_t IntegrationEntry.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntegrationRecurrence(0);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  MEMORY[0x28223BE20](v6 - 8);
  v20 = &v19 - v7;
  v8 = sub_2427B8DBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  sub_2427B8FCC();
  v15 = type metadata accessor for IntegrationEntry(0);
  sub_2427B8D2C();
  sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2427B8F8C();
  sub_2427B8F8C();
  sub_2427B2564(v1 + v15[7], v14, &qword_27ECC08E0, &qword_2427BB0B8);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_2427B942C();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_2427B942C();
    sub_2427B251C(&qword_27ECC0930, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
    sub_2427B8F8C();
    (*(v9 + 8))(v11, v8);
  }

  sub_2427B8FCC();
  sub_2427B942C();
  sub_2427B942C();
  MEMORY[0x245D18CB0](*(v1 + v15[11]));
  v16 = v20;
  sub_2427B2564(v2 + v15[12], v20, &qword_27ECC08D8, &qword_2427BB0B0);
  if ((*(v21 + 48))(v16, 1, v22) == 1)
  {
    sub_2427B942C();
  }

  else
  {
    v17 = v19;
    sub_2427B2630(v16, v19, type metadata accessor for IntegrationRecurrence);
    sub_2427B942C();
    IntegrationRecurrence.hash(into:)(a1);
    sub_2427B2698(v17, type metadata accessor for IntegrationRecurrence);
  }

  if (*(v2 + v15[13] + 8))
  {
    sub_2427B942C();
    sub_2427B8FCC();
    sub_2427B8FCC();
    sub_2427B8CDC();
  }

  else
  {
    sub_2427B942C();
  }

  if (*(v2 + v15[14] + 8))
  {
    sub_2427B942C();
    sub_2427B8FCC();
  }

  else
  {
    sub_2427B942C();
  }

  if (!*(v2 + v15[15] + 8))
  {
    return sub_2427B942C();
  }

  sub_2427B942C();
  return sub_2427B8FCC();
}

uint64_t sub_2427AEAA0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2427AEAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2427B8D2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2427AEB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2427B8D2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2427AEBEC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

void sub_2427AEC7C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  sub_2427AE07C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2427AECA0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_2427AECD8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t IntegrationRecurrence.firstDayOfTheWeek.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntegrationRecurrence(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t IntegrationRecurrence.firstDayOfTheWeek.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntegrationRecurrence(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t IntegrationRecurrence.daysOfTheWeek.getter()
{
  type metadata accessor for IntegrationRecurrence(0);
}

uint64_t IntegrationRecurrence.daysOfTheWeek.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.daysOfTheMonth.getter()
{
  type metadata accessor for IntegrationRecurrence(0);
}

uint64_t IntegrationRecurrence.daysOfTheMonth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.daysOfTheYear.getter()
{
  type metadata accessor for IntegrationRecurrence(0);
}

uint64_t IntegrationRecurrence.daysOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.weeksOfTheYear.getter()
{
  type metadata accessor for IntegrationRecurrence(0);
}

uint64_t IntegrationRecurrence.weeksOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.monthsOfTheYear.getter()
{
  type metadata accessor for IntegrationRecurrence(0);
}

uint64_t IntegrationRecurrence.monthsOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.setPositions.getter()
{
  type metadata accessor for IntegrationRecurrence(0);
}

uint64_t IntegrationRecurrence.setPositions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.RecurrenceEnd.hash(into:)(uint64_t a1)
{
  v2 = sub_2427B8D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B25CC(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x245D18CB0](1);
    return MEMORY[0x245D18CB0](v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2427B8F8C();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t IntegrationRecurrence.RecurrenceEnd.hashValue.getter()
{
  v1 = v0;
  v2 = sub_2427B8D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B940C();
  sub_2427B25CC(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x245D18CB0](1);
    MEMORY[0x245D18CB0](v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2427B8F8C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_2427B943C();
}

uint64_t sub_2427AF740(uint64_t a1, uint64_t a2)
{
  v3 = sub_2427B8D2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B25CC(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    MEMORY[0x245D18CB0](1);
    return MEMORY[0x245D18CB0](v10);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2427B8F8C();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2427AF8FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2427B8D2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B940C();
  sub_2427B25CC(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x245D18CB0](1);
    MEMORY[0x245D18CB0](v11);
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2427B8F8C();
    (*(v5 + 8))(v8, v4);
  }

  return sub_2427B943C();
}

uint64_t IntegrationRecurrence.DayOfTheWeek.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x245D18CB0](*v0);
  return MEMORY[0x245D18CB0](v1);
}

uint64_t IntegrationRecurrence.DayOfTheWeek.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  MEMORY[0x245D18CB0](v2);
  return sub_2427B943C();
}

uint64_t sub_2427AFC54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  MEMORY[0x245D18CB0](v2);
  return sub_2427B943C();
}

uint64_t sub_2427AFCB4()
{
  v1 = *(v0 + 1);
  MEMORY[0x245D18CB0](*v0);
  return MEMORY[0x245D18CB0](v1);
}

uint64_t sub_2427AFCF4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_2427B940C();
  MEMORY[0x245D18CB0](v2);
  MEMORY[0x245D18CB0](v3);
  return sub_2427B943C();
}

uint64_t IntegrationRecurrence.hash(into:)(uint64_t a1)
{
  v2 = sub_2427B8D2C();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  MEMORY[0x245D18CB0](*v1);
  MEMORY[0x245D18CB0](*(v1 + 1));
  v49 = type metadata accessor for IntegrationRecurrence(0);
  sub_2427B2564(&v1[*(v49 + 24)], v13, &qword_27ECC0890, &qword_2427BB3B0);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_2427B942C();
    v14 = v49;
  }

  else
  {
    sub_2427B2630(v13, v10, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    sub_2427B942C();
    sub_2427B25CC(v10, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *v8;
      MEMORY[0x245D18CB0](1);
      MEMORY[0x245D18CB0](v15);
    }

    else
    {
      v17 = v46;
      v16 = v47;
      v18 = v48;
      (*(v47 + 32))(v46, v8, v48);
      MEMORY[0x245D18CB0](0);
      sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_2427B8F8C();
      (*(v16 + 8))(v17, v18);
    }

    v14 = v49;
    sub_2427B2698(v10, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  }

  v19 = v1[v14[7]];
  sub_2427B942C();
  if (v19 != 7)
  {
    MEMORY[0x245D18CB0](v19);
  }

  v20 = *&v1[v14[8]];
  if (v20)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v20 + 16));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 40);
      do
      {
        v23 = *(v22 - 8);
        v24 = *v22;
        v22 += 2;
        MEMORY[0x245D18CB0](v23);
        MEMORY[0x245D18CB0](v24);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v25 = *&v1[v14[9]];
  if (v25)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v25 + 16));
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = (v25 + 32);
      do
      {
        v28 = *v27++;
        MEMORY[0x245D18CB0](v28);
        --v26;
      }

      while (v26);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v29 = *&v1[v14[10]];
  if (v29)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v29 + 16));
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = (v29 + 32);
      do
      {
        v32 = *v31++;
        MEMORY[0x245D18CB0](v32);
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v33 = *&v1[v14[11]];
  if (v33)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v33 + 16));
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = (v33 + 32);
      do
      {
        v36 = *v35++;
        MEMORY[0x245D18CB0](v36);
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v37 = *&v1[v14[12]];
  if (v37)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v37 + 16));
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (v37 + 32);
      do
      {
        v40 = *v39++;
        MEMORY[0x245D18CB0](v40);
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v41 = *&v1[v14[13]];
  if (!v41)
  {
    return sub_2427B942C();
  }

  sub_2427B942C();
  result = MEMORY[0x245D18CB0](*(v41 + 16));
  v43 = *(v41 + 16);
  if (v43)
  {
    v44 = (v41 + 32);
    do
    {
      v45 = *v44++;
      result = MEMORY[0x245D18CB0](v45);
      --v43;
    }

    while (v43);
  }

  return result;
}

uint64_t sub_2427B02F4(uint64_t (*a1)(void *))
{
  sub_2427B940C();
  a1(v3);
  return sub_2427B943C();
}

uint64_t sub_2427B0354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_2427B940C();
  a3(v5);
  return sub_2427B943C();
}

uint64_t sub_2427B03B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2427B940C();
  a4(v6);
  return sub_2427B943C();
}

uint64_t IntegrationColor.Identifier.providerIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntegrationColor.Identifier.providerIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntegrationColor.Identifier.colorIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntegrationColor.Identifier.colorIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static IntegrationColor.Identifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2427B939C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2427B939C();
    }
  }

  return result;
}

uint64_t IntegrationColor.Identifier.hash(into:)(uint64_t a1)
{
  sub_2427B8FCC();

  return sub_2427B8FCC();
}

uint64_t IntegrationColor.Identifier.hashValue.getter()
{
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  return sub_2427B943C();
}

uint64_t sub_2427B066C()
{
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  return sub_2427B943C();
}

uint64_t sub_2427B06D4(uint64_t a1)
{
  sub_2427B8FCC();

  return sub_2427B8FCC();
}

uint64_t sub_2427B0724(uint64_t a1)
{
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  return sub_2427B943C();
}

uint64_t sub_2427B0788(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2427B939C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2427B939C();
    }
  }

  return result;
}

uint64_t IntegrationColor.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 IntegrationColor.identifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t IntegrationColor.data.getter()
{
  v1 = *(v0 + 32);
  sub_2427A3288(v1, *(v0 + 40));
  return v1;
}

uint64_t IntegrationColor.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2427A32F0(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IntegrationColor.hash(into:)(uint64_t a1)
{
  sub_2427B8FCC();
  sub_2427B8FCC();

  return sub_2427B8CDC();
}

uint64_t IntegrationColor.hashValue.getter()
{
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  sub_2427B8CDC();
  return sub_2427B943C();
}

uint64_t sub_2427B0A68()
{
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  sub_2427B8CDC();
  return sub_2427B943C();
}

uint64_t sub_2427B0AEC(uint64_t a1)
{
  sub_2427B8FCC();
  sub_2427B8FCC();

  return sub_2427B8CDC();
}

uint64_t sub_2427B0B58(uint64_t a1)
{
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  sub_2427B8CDC();
  return sub_2427B943C();
}

uint64_t sub_2427B0BDC(uint64_t result, uint64_t a2)
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

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 8);
    v7 = *v4;
    v4 += 2;
    v6 = v7;
    result = *(v3 - 8) == v5 && *v3 == v6;
    v9 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2427B0C4C(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2427B0CA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2427B8B7C();
    if (v10)
    {
      v11 = sub_2427B8B9C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2427B8B8C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2427B8B7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2427B8B9C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2427B8B8C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2427B0ED8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2427B173C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2427A32F0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2427B0CA8(v13, a3, a4, &v12);
  v10 = v4;
  sub_2427A32F0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t _s26CalendarIntegrationSupport0B10RecurrenceV0D3EndO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427B8D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09C0, &qword_2427BB9B8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_2427B25CC(a1, &v22 - v16);
  sub_2427B25CC(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2427B25CC(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *v11 == *&v17[v18];
LABEL_8:
      sub_2427B2698(v17, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
      return v19 & 1;
    }
  }

  else
  {
    sub_2427B25CC(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      v19 = sub_2427B8D0C();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v13, v4);
      goto LABEL_8;
    }

    (*(v5 + 8))(v13, v4);
  }

  sub_2427A4230(v17, &qword_27ECC09C0, &qword_2427BB9B8);
  v19 = 0;
  return v19 & 1;
}

BOOL _s26CalendarIntegrationSupport0B10RecurrenceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09B8, &qword_2427BB9B0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v15 = v12;
  v16 = type metadata accessor for IntegrationRecurrence(0);
  v17 = a1;
  v18 = a2;
  v49 = v16;
  v50 = v17;
  v19 = *(v16 + 24);
  v20 = *(v15 + 48);
  sub_2427B2564(&v17[v19], v14, &qword_27ECC0890, &qword_2427BB3B0);
  v21 = &v18[v19];
  v22 = v18;
  sub_2427B2564(v21, &v14[v20], &qword_27ECC0890, &qword_2427BB3B0);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v20], 1, v4) == 1)
    {
      sub_2427A4230(v14, &qword_27ECC0890, &qword_2427BB3B0);
      goto LABEL_11;
    }

LABEL_8:
    sub_2427A4230(v14, &qword_27ECC09B8, &qword_2427BB9B0);
    return 0;
  }

  sub_2427B2564(v14, v10, &qword_27ECC0890, &qword_2427BB3B0);
  if (v23(&v14[v20], 1, v4) == 1)
  {
    sub_2427B2698(v10, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    goto LABEL_8;
  }

  sub_2427B2630(&v14[v20], v7, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  v25 = _s26CalendarIntegrationSupport0B10RecurrenceV0D3EndO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_2427B2698(v7, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  sub_2427B2698(v10, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  sub_2427A4230(v14, &qword_27ECC0890, &qword_2427BB3B0);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v27 = v49;
  v26 = v50;
  v28 = v49[7];
  v29 = v50[v28];
  v30 = v22[v28];
  if (v29 == 7)
  {
    if (v30 != 7)
    {
      return 0;
    }
  }

  else if (v29 != v30)
  {
    return 0;
  }

  v31 = v49[8];
  v32 = *&v50[v31];
  v33 = *&v22[v31];
  if (v32)
  {
    if (!v33 || (sub_2427B0BDC(v32, v33) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = v27[9];
  v35 = *&v26[v34];
  v36 = *&v22[v34];
  if (v35)
  {
    if (!v36 || (sub_2427B0C4C(v35, v36) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v27[10];
  v38 = *&v26[v37];
  v39 = *&v22[v37];
  if (v38)
  {
    if (!v39 || (sub_2427B0C4C(v38, v39) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = v27[11];
  v41 = *&v26[v40];
  v42 = *&v22[v40];
  if (v41)
  {
    if (!v42 || (sub_2427B0C4C(v41, v42) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = v27[12];
  v44 = *&v26[v43];
  v45 = *&v22[v43];
  if (v44)
  {
    if (!v45 || (sub_2427B0C4C(v44, v45) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v46 = v27[13];
  v47 = *&v26[v46];
  v48 = *&v22[v46];
  if (v47)
  {
    return v48 && (sub_2427B0C4C(v47, v48) & 1) != 0;
  }

  return !v48;
}

uint64_t sub_2427B173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2427B8B7C();
  v11 = result;
  if (result)
  {
    result = sub_2427B8B9C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2427B8B8C();
  sub_2427B0CA8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2427B17F4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2427A3288(a3, a4);
          return sub_2427B0ED8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s26CalendarIntegrationSupport0B5ColorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2427B939C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2427B939C() & 1) == 0)
  {
    return 0;
  }

  return sub_2427B17F4(v3, v5, v8, v9);
}

BOOL _s26CalendarIntegrationSupport0B5EntryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for IntegrationRecurrence(0);
  v121 = *(v4 - 8);
  v122 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v110[-v8];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09C8, &qword_2427BB9C0);
  MEMORY[0x28223BE20](v120);
  v10 = &v110[-v9];
  v11 = sub_2427B8DBC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v110[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v110[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09D0, &qword_2427BB9C8);
  MEMORY[0x28223BE20](v18);
  v20 = &v110[-v19];
  if (*a1 != *a2 && (sub_2427B939C() & 1) == 0)
  {
    return 0;
  }

  v118 = v10;
  v21 = type metadata accessor for IntegrationEntry(0);
  if ((sub_2427B8D0C() & 1) == 0 || (sub_2427B8D0C() & 1) == 0)
  {
    return 0;
  }

  v115 = v6;
  v116 = v21;
  v117 = a2;
  v22 = *(v21 + 28);
  v23 = *(v18 + 48);
  sub_2427B2564(a1 + v22, v20, &qword_27ECC08E0, &qword_2427BB0B8);
  v24 = v117 + v22;
  v25 = v117;
  sub_2427B2564(v24, &v20[v23], &qword_27ECC08E0, &qword_2427BB0B8);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) == 1)
  {
    if (v26(&v20[v23], 1, v11) == 1)
    {
      sub_2427A4230(v20, &qword_27ECC08E0, &qword_2427BB0B8);
      goto LABEL_12;
    }

LABEL_10:
    sub_2427A4230(v20, &qword_27ECC09D0, &qword_2427BB9C8);
    return 0;
  }

  sub_2427B2564(v20, v17, &qword_27ECC08E0, &qword_2427BB0B8);
  if (v26(&v20[v23], 1, v11) == 1)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_10;
  }

  (*(v12 + 32))(v14, &v20[v23], v11);
  sub_2427B251C(&qword_27ECC09D8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
  v27 = sub_2427B8F9C();
  v28 = *(v12 + 8);
  v28(v14, v11);
  v28(v17, v11);
  v25 = v117;
  sub_2427A4230(v20, &qword_27ECC08E0, &qword_2427BB0B8);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v29 = v116;
  v30 = v116[8];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (v25 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_2427B939C() & 1) == 0 || *(a1 + v29[9]) != *(v25 + v29[9]) || *(a1 + v29[10]) != *(v25 + v29[10]) || *(a1 + v29[11]) != *(v25 + v29[11]))
  {
    return 0;
  }

  v34 = v29[12];
  v35 = *(v120 + 48);
  v36 = v118;
  sub_2427B2564(a1 + v34, v118, &qword_27ECC08D8, &qword_2427BB0B0);
  v37 = v117 + v34;
  v38 = v117;
  sub_2427B2564(v37, v36 + v35, &qword_27ECC08D8, &qword_2427BB0B0);
  v39 = v122;
  v40 = *(v121 + 48);
  if (v40(v36, 1, v122) == 1)
  {
    if (v40(v36 + v35, 1, v39) == 1)
    {
      sub_2427A4230(v36, &qword_27ECC08D8, &qword_2427BB0B0);
      goto LABEL_25;
    }

LABEL_23:
    sub_2427A4230(v36, &qword_27ECC09C8, &qword_2427BB9C0);
    return 0;
  }

  v41 = v119;
  sub_2427B2564(v36, v119, &qword_27ECC08D8, &qword_2427BB0B0);
  if (v40(v36 + v35, 1, v39) == 1)
  {
    sub_2427B2698(v41, type metadata accessor for IntegrationRecurrence);
    goto LABEL_23;
  }

  v42 = v36 + v35;
  v43 = v115;
  sub_2427B2630(v42, v115, type metadata accessor for IntegrationRecurrence);
  v44 = _s26CalendarIntegrationSupport0B10RecurrenceV2eeoiySbAC_ACtFZ_0(v41, v43);
  sub_2427B2698(v43, type metadata accessor for IntegrationRecurrence);
  sub_2427B2698(v41, type metadata accessor for IntegrationRecurrence);
  sub_2427A4230(v36, &qword_27ECC08D8, &qword_2427BB0B0);
  if (!v44)
  {
    return 0;
  }

LABEL_25:
  v45 = v29[13];
  v46 = *(a1 + v45);
  v47 = *(a1 + v45 + 8);
  v49 = *(a1 + v45 + 16);
  v48 = *(a1 + v45 + 24);
  v51 = *(a1 + v45 + 32);
  v50 = *(a1 + v45 + 40);
  v52 = v38 + v45;
  v53 = *v52;
  v54 = *(v52 + 1);
  v55 = *(v52 + 2);
  v56 = *(v52 + 3);
  v58 = *(v52 + 4);
  v57 = *(v52 + 5);
  v120 = v58;
  v121 = v57;
  v122 = v50;
  if (!v47)
  {
    sub_2427AE07C(v46, 0, v49, v48, v51, v122);
    if (!v54)
    {
      sub_2427AE07C(v53, 0, v55, v56, v120, v121);
      sub_2427ACEDC(v46, 0, v49, v48, v51, v122);
      goto LABEL_43;
    }

    v71 = v53;
    v119 = v53;
    v72 = v55;
    v73 = v55;
    v75 = v120;
    v74 = v121;
    sub_2427AE07C(v71, v54, v73, v56, v120, v121);
    goto LABEL_38;
  }

  v119 = v53;
  if (!v54)
  {
    v113 = v49;
    v76 = v48;
    v77 = v51;
    v118 = v48;
    v78 = v51;
    v79 = v122;
    sub_2427AE07C(v46, v47, v49, v76, v77, v122);
    v80 = v53;
    v72 = v55;
    v81 = v55;
    v75 = v120;
    v74 = v121;
    sub_2427AE07C(v80, 0, v81, v56, v120, v121);
    sub_2427AE07C(v46, v47, v113, v118, v78, v79);

    v82 = v78;
    v83 = v79;
    v51 = v78;
    v48 = v118;
    sub_2427A32F0(v82, v83);
LABEL_38:
    sub_2427ACEDC(v46, v47, v49, v48, v51, v122);
    v84 = v119;
    v85 = v54;
    v86 = v72;
    v87 = v56;
    v88 = v75;
    v89 = v74;
LABEL_40:
    sub_2427ACEDC(v84, v85, v86, v87, v88, v89);
    return 0;
  }

  v114 = v55;
  v115 = v56;
  v59 = v55;
  if ((v46 != v53 || v47 != v54) && (sub_2427B939C() & 1) == 0 || (v49 != v55 || v48 != v115) && (sub_2427B939C() & 1) == 0)
  {
    v90 = v53;
    v91 = v122;
    sub_2427AE07C(v46, v47, v49, v48, v51, v122);
    v92 = v90;
    v93 = v59;
    v94 = v115;
    v96 = v120;
    v95 = v121;
    sub_2427AE07C(v92, v54, v93, v115, v120, v121);
    sub_2427AE07C(v46, v47, v49, v48, v51, v91);
    sub_2427ACEDC(v119, v54, v114, v94, v96, v95);

    sub_2427A32F0(v51, v91);
    v84 = v46;
    v85 = v47;
    v86 = v49;
    v87 = v48;
    v88 = v51;
    v89 = v91;
    goto LABEL_40;
  }

  v60 = v48;
  v118 = v48;
  v61 = v49;
  v62 = v53;
  v63 = v122;
  sub_2427AE07C(v46, v47, v49, v60, v51, v122);
  v64 = v62;
  v65 = v59;
  v66 = v115;
  v112 = v46;
  v68 = v120;
  v67 = v121;
  sub_2427AE07C(v64, v54, v65, v115, v120, v121);
  v69 = v46;
  v70 = v118;
  sub_2427AE07C(v69, v47, v61, v118, v51, v63);
  v111 = sub_2427B17F4(v51, v63, v68, v67);
  sub_2427ACEDC(v119, v54, v114, v66, v68, v67);

  sub_2427A32F0(v51, v63);
  sub_2427ACEDC(v112, v47, v61, v70, v51, v63);
  if (!v111)
  {
    return 0;
  }

LABEL_43:
  v99 = v116;
  v98 = v117;
  v100 = v116[14];
  v101 = (a1 + v100);
  v102 = *(a1 + v100 + 8);
  v103 = (v117 + v100);
  v104 = v103[1];
  if (v102)
  {
    if (!v104 || (*v101 != *v103 || v102 != v104) && (sub_2427B939C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  v105 = v99[15];
  v106 = (a1 + v105);
  v107 = *(a1 + v105 + 8);
  v108 = (v98 + v105);
  v109 = v108[1];
  if (v107)
  {
    return v109 && (*v106 == *v108 && v107 == v109 || (sub_2427B939C() & 1) != 0);
  }

  return !v109;
}

uint64_t sub_2427B251C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2427B2564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2427B25CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427B2630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2427B2698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2427B278C()
{
  result = qword_27ECC0948;
  if (!qword_27ECC0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0948);
  }

  return result;
}

unint64_t sub_2427B27E4()
{
  result = qword_27ECC0950;
  if (!qword_27ECC0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0950);
  }

  return result;
}

unint64_t sub_2427B283C()
{
  result = qword_27ECC0958;
  if (!qword_27ECC0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0958);
  }

  return result;
}

unint64_t sub_2427B28DC()
{
  result = qword_2813495E0[0];
  if (!qword_2813495E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813495E0);
  }

  return result;
}

unint64_t sub_2427B2934()
{
  result = qword_27ECC0968;
  if (!qword_27ECC0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0968);
  }

  return result;
}

void sub_2427B2AA0(uint64_t a1)
{
  sub_2427B8D2C();
  if (v1 <= 0x3F)
  {
    sub_2427B2BF0(319, &qword_281349D78, MEMORY[0x277CC9A70]);
    if (v2 <= 0x3F)
    {
      sub_2427B2BF0(319, qword_281349B10, type metadata accessor for IntegrationRecurrence);
      if (v3 <= 0x3F)
      {
        sub_2427B2DA0(319, &qword_27ECC0970, &type metadata for IntegrationColor);
        if (v4 <= 0x3F)
        {
          sub_2427B2DA0(319, &qword_27ECC0978, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2427B2BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2427B912C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2427B2C6C(uint64_t a1)
{
  sub_2427B2BF0(319, qword_281349BE0, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  if (v1 <= 0x3F)
  {
    sub_2427B2DA0(319, &qword_27ECC0980, &type metadata for IntegrationRecurrence.Weekday);
    if (v2 <= 0x3F)
    {
      sub_2427B2DEC(319, &qword_27ECC0988, &qword_27ECC0990, &qword_2427BB828);
      if (v3 <= 0x3F)
      {
        sub_2427B2DEC(319, &qword_27ECC0998, &qword_27ECC09A0, &qword_2427BB830);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2427B2DA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2427B912C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2427B2DEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2427B912C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2427B2E90(uint64_t a1)
{
  sub_2427B2F04();
  if (v1 <= 0x3F)
  {
    sub_2427B2F4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2427B2F04()
{
  if (!qword_27ECC09A8)
  {
    v0 = sub_2427B8D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECC09A8);
    }
  }
}

uint64_t sub_2427B2F4C()
{
  result = qword_27ECC09B0;
  if (!qword_27ECC09B0)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27ECC09B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationRecurrence.Frequency(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationRecurrence.Frequency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationRecurrence.Weekday(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationRecurrence.Weekday(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationRecurrence.DayOfTheWeek(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[16])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationRecurrence.DayOfTheWeek(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2427B32D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2427B3318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2427B3380(uint64_t a1, int a2)
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

uint64_t sub_2427B33C8(uint64_t result, int a2, int a3)
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

CalendarIntegrationSupport::SyncResult::IncrementalSyncInfo __swiftcall SyncResult.IncrementalSyncInfo.init(insertedAndUpdated:deleted:updatedColors:)(Swift::OpaquePointer insertedAndUpdated, Swift::OpaquePointer deleted, Swift::OpaquePointer updatedColors)
{
  v3->_rawValue = insertedAndUpdated._rawValue;
  v3[1]._rawValue = deleted._rawValue;
  v3[2]._rawValue = updatedColors._rawValue;
  result.updatedColors = updatedColors;
  result.deleted = deleted;
  result.insertedAndUpdated = insertedAndUpdated;
  return result;
}

__n128 SyncResult.init(modTag:syncType:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  result = *a1;
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  return result;
}

uint64_t ModTag.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ModTag.stringValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ModTag.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2427B939C();
  }
}

uint64_t sub_2427B3530(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2427B939C();
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2427B35F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_2427B3654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2427B36D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_2427B3720(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2427B3790(uint64_t *a1, int a2)
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

uint64_t sub_2427B37D8(uint64_t result, int a2, int a3)
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

uint64_t sub_2427B3824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2427B386C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2427B38BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2427B3904(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t IntegrationCollectionSync.__allocating_init(syncDataProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2427B8608(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t IntegrationCollectionSync.init(syncDataProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_2427B7B8C(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_2427B3AE0(uint64_t *a1)
{
  v3 = v1;
  v131[3] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v119 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = *(v3 + 56);
  v127 = v8;
  v128 = v9;
  v11 = sub_2427B8FAC();
  v13 = *(v3 + 40);
  v12 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v13);
  (*(v12 + 24))(v13, v12);
  v14 = v2;
  if (v2)
  {

    return;
  }

  v126 = a1;
  v124 = v7;
  sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
  v15 = sub_2427B8FFC();

  v16 = [v10 eventsWithExternalIdentifier:v11 inCalendars:v15];

  v17 = v3;
  if (!v16)
  {
    goto LABEL_26;
  }

  sub_2427A152C(0, &qword_281349478, 0x277CC5A28);
  v18 = sub_2427B901C();

  if (v18 >> 62)
  {
    v39 = sub_2427B917C();
    v20 = v124;
    if (v39)
    {
      goto LABEL_6;
    }

LABEL_25:

    goto LABEL_26;
  }

  v20 = v124;
  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_6:
  if ((v18 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_57:
    swift_once();
    goto LABEL_50;
  }

  for (i = *(v18 + 32); ; i = MEMORY[0x245D18A70](0, v18, v19))
  {
    v22 = i;

    v23 = v22;
    v24 = [v23 calendar];
    if (!v24)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    v25 = v24;
    v26 = [v24 source];

    if (!v26)
    {
      goto LABEL_59;
    }

    v27 = [v26 personaIdentifier];

    if (v27)
    {
      v28 = sub_2427B8FBC();
      v30 = v29;

      v31 = (v126 + *(type metadata accessor for IntegrationEntry(0) + 56));
      v32 = v31[1];
      if (v32)
      {
        if (v28 == *v31 && v32 == v30)
        {

LABEL_20:
          v34 = v126;
          v125 = v14;
          v35 = v23;
          v123 = v35;
          goto LABEL_29;
        }

        v33 = sub_2427B939C();

        if (v33)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    else if (!*(v126 + *(type metadata accessor for IntegrationEntry(0) + 56) + 8))
    {
      goto LABEL_20;
    }

    v36 = v17[7];
    v131[0] = 0;
    if (![v36 removeEvent:v23 span:1 commit:0 error:v131])
    {
      v38 = v131[0];
      sub_2427B8C4C();

      swift_willThrow();
      return;
    }

    v37 = v131[0];

LABEL_26:
    v40 = [objc_opt_self() eventWithEventStore_];
    v125 = v14;
    v41 = v17[5];
    v42 = v17[6];
    __swift_project_boxed_opaque_existential_1(v17 + 2, v41);
    v43 = (v126 + *(type metadata accessor for IntegrationEntry(0) + 56));
    v45 = *v43;
    v44 = v43[1];
    v46 = *(v42 + 32);
    v47 = v40;
    v48 = v125;
    v49 = v46(v45, v44, v41, v42);
    if (v48)
    {

      return;
    }

    v34 = v126;
    v125 = 0;
    v50 = v49;
    [v47 setCalendar_];

    v35 = v47;
    v51 = sub_2427B8FAC();
    [v35 setUniqueID_];

    v123 = 0;
    v20 = v124;
LABEL_29:
    v52 = type metadata accessor for IntegrationEntry(0);
    sub_2427B2564(v34 + v52[7], v20, &qword_27ECC08E0, &qword_2427BB0B8);
    v53 = sub_2427B8DBC();
    v54 = v20;
    v55 = *(v53 - 8);
    v56 = (*(v55 + 48))(v54, 1, v53);
    v57 = v35;
    v58 = 0;
    if (v56 != 1)
    {
      v58 = sub_2427B8DAC();
      (*(v55 + 8))(v54, v53);
    }

    v59 = v57;
    [v57 setTimeZone_];

    [v57 setAllDay_];
    v60 = sub_2427B8CFC();
    [v57 setStartDate_];

    v18 = v34 + v52[6];
    v61 = sub_2427B8CFC();
    [v57 setEndDate_];

    v62 = sub_2427B8FAC();
    [v57 setTitle_];

    [v57 setCompleted_];
    v63 = v34;
    v64 = sub_2427B8404(v34 + v52[12]);
    if (v64)
    {
      v18 = v64;
      sub_2427A152C(0, &qword_27ECC09F0, 0x277CC5AA8);
      v65 = sub_2427B8FFC();
    }

    else
    {
      v65 = 0;
    }

    v11 = v123;
    [v57 setRecurrenceRules_];

    v66 = *(v63 + v52[15] + 8);
    v126 = v17;
    v67 = v66 ? sub_2427B8FAC() : 0;
    [v57 setExternalID_];

    v68 = (v63 + v52[13]);
    v20 = v68[1];
    if (v20)
    {
      v122 = v57;
      v69 = v20;
      v70 = v11;
      v71 = *v68;
      v20 = v68[2];
      v72 = v68[3];
      v73 = v68[4];
      v74 = v68[5];
      v75 = v126;
      swift_beginAccess();
      v76 = v75[8];
      v77 = *(v76 + 16);
      v124 = v71;
      v78 = v71;
      v11 = v70;
      v79 = v69;
      v59 = v122;
      sub_2427AE07C(v78, v79, v20, v72, v73, v74);

      if (v77)
      {

        v80 = sub_2427B6A88(v124, v79, v20, v72);
        if (v81)
        {
          v82 = v80;

          v83 = *(*(v76 + 56) + 8 * v82);

          v18 = v59;
          v84 = v83;
          [v18 setColor_];
          sub_2427ACEDC(v124, v79, v20, v72, v73, v74);

          goto LABEL_46;
        }
      }

      v120 = v74;
      v121 = v73;
      v123 = v11;
      v85 = v126;
      v86 = v126[7];
      v87 = sub_2427B8FAC();
      v88 = v20;
      v89 = sub_2427B8FAC();
      v90 = [v86 colorWithProviderIdentifier:v87 externalIdentifier:v89];

      v91 = v90;
      if (!v90)
      {
        v92 = [objc_allocWithZone(MEMORY[0x277CC5A00]) init];
        v93 = sub_2427B8FAC();
        [v92 setProviderIdentifier_];

        v94 = sub_2427B8FAC();
        [v92 setExternalID_];

        v91 = v92;
      }

      swift_beginAccess();
      v95 = v91;
      v96 = v88;
      v119 = v88;
      v97 = v95;
      v98 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v85[8];
      v85[8] = 0x8000000000000000;
      v20 = v124;
      sub_2427B7298(v97, v124, v79, v96, v72, isUniquelyReferenced_nonNull_native);

      v85[8] = v129;
      swift_endAccess();
      v100 = v120;
      v18 = v121;
      v101 = sub_2427B8CBC();
      [v97 setData_];

      v102 = v59;
      [v102 setColor_];

      sub_2427ACEDC(v20, v79, v119, v72, v18, v100);
      v11 = v123;
    }

    else
    {
      [v57 setColor_];
    }

LABEL_46:
    v17 = v59;
    v103 = [v17 sequenceNumber];
    v19 = v103 + 1;
    v14 = v128;
    if (!__OFADD__(v103, 1))
    {
      break;
    }

    __break(1u);
LABEL_55:
    ;
  }

  [v17 setSequenceNumber_];

  v104 = v126[7];
  v130[0] = 0;
  v105 = v104;
  v106 = [v105 saveEvent:v17 span:1 commit:0 error:v130];

  if (v106)
  {
    v107 = v130[0];

    return;
  }

  v108 = v130[0];
  v20 = sub_2427B8C4C();

  swift_willThrow();
  if (qword_281349520 != -1)
  {
    goto LABEL_57;
  }

LABEL_50:
  v109 = sub_2427B8F0C();
  __swift_project_value_buffer(v109, qword_281349DA8);

  v110 = v20;
  v111 = sub_2427B8EEC();
  v112 = sub_2427B90BC();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = v11;
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v130[0] = v116;
    *v114 = 136446466;
    *(v114 + 4) = sub_2427A1BEC(v127, v14, v130);
    *(v114 + 12) = 2112;
    v117 = v20;
    v118 = _swift_stdlib_bridgeErrorToNSError();
    *(v114 + 14) = v118;
    *v115 = v118;
    _os_log_impl(&dword_24279B000, v111, v112, "Failed to save event for entry %{public}s: %@", v114, 0x16u);
    sub_2427A4230(v115, &qword_27ECC07C0, &qword_2427BADB0);
    MEMORY[0x245D19310](v115, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x245D19310](v116, -1, -1);
    MEMORY[0x245D19310](v114, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2427B475C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_2427B922C();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_2427B907C();
      sub_2427B920C();
      sub_2427B923C();
      sub_2427B924C();
      sub_2427B921C();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void sub_2427B4804(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v5 = sub_2427B8F0C();
  __swift_project_value_buffer(v5, qword_281349DA8);

  v6 = sub_2427B8EEC();
  v7 = sub_2427B90CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446722;
    *(v8 + 4) = sub_2427A1BEC(v3[9], v3[10], &v13);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2427A1BEC(v3[13], v3[14], &v13);
    *(v8 + 22) = 2048;
    *(v8 + 24) = *(v4 + 16);

    _os_log_impl(&dword_24279B000, v6, v7, "Performing a full sync for collection %{public}s %s with %ld IDs", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D19310](v9, -1, -1);
    MEMORY[0x245D19310](v8, -1, -1);
  }

  else
  {
  }

  v13 = v4;
  sub_2427B4A2C(&v13);
  if (!v2)
  {
    v10 = *(v4 + 16);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x245D18D70]();
        sub_2427B6510(v11, v3, 50, v4, &v13);
        if (__OFADD__(v11, 50))
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 += 50;
        }

        objc_autoreleasePoolPop(v12);
      }

      while (v11 < v10);
    }
  }
}

void sub_2427B4A2C(void *a1)
{
  v3 = v1;

  v5 = sub_2427B7CA4(v4);

  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v8 = (*(v7 + 24))(v6, v7);
  if (v2)
  {
  }

  else
  {
    v9 = v8;
    if (v8 >> 62)
    {
      goto LABEL_36;
    }

    v45 = v8 & 0xFFFFFFFFFFFFFF8;
    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2427B917C())
    {
      v41 = v3;
      v39 = v5;
      if (i)
      {
        v11 = 0;
        v3 = v9 & 0xC000000000000001;
        v12 = MEMORY[0x277D84F90];
        do
        {
          v40 = v12;
          v13 = v11;
          while (1)
          {
            if (v3)
            {
              v14 = MEMORY[0x245D18A70](v13, v9);
            }

            else
            {
              if (v13 >= *(v45 + 16))
              {
                goto LABEL_34;
              }

              v14 = *(v9 + 8 * v13 + 32);
            }

            v15 = v14;
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v16 = [v14 persistentObject];
            if (!v16)
            {
              __break(1u);
              return;
            }

            v17 = v16;
            v5 = [v16 isNew];

            if ((v5 & 1) == 0)
            {
              break;
            }

            ++v13;
            if (v11 == i)
            {
              v12 = v40;
              goto LABEL_24;
            }
          }

          v18 = [v15 calendarIdentifier];
          v19 = sub_2427B8FBC();
          v37 = v20;
          v38 = v19;

          v21 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2427ABCB4(0, *(v40 + 2) + 1, 1, v40);
          }

          v5 = *(v21 + 2);
          v22 = *(v21 + 3);
          v23 = v21;
          if (v5 >= v22 >> 1)
          {
            v23 = sub_2427ABCB4((v22 > 1), v5 + 1, 1, v21);
          }

          *(v23 + 2) = v5 + 1;
          v12 = v23;
          v24 = &v23[16 * v5];
          *(v24 + 4) = v38;
          *(v24 + 5) = v37;
        }

        while (v11 != i);
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

LABEL_24:

      v43 = 0;
      v44 = 0;
      v42 = 0;
      v5 = *(v12 + 2);
      if (!v5)
      {
        break;
      }

      v3 = 0;
      v25 = v12;
      v26 = (v12 + 40);
      while (v3 < *(v25 + 2))
      {
        v27 = *(v26 - 1);
        v28 = *v26;

        v30 = MEMORY[0x245D18D70](v29);
        v31 = v27;
        v9 = v41;
        sub_2427B4E4C(v39, v31, v28, &v42);

        ++v3;
        objc_autoreleasePoolPop(v30);
        v26 += 2;
        if (v5 == v3)
        {
          goto LABEL_28;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      v45 = v9 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v32 = sub_2427B8F0C();
    __swift_project_value_buffer(v32, qword_281349DA8);
    v33 = sub_2427B8EEC();
    v34 = sub_2427B90CC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218496;
      swift_beginAccess();
      v36 = v43;
      *(v35 + 4) = v44;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v42;
      *(v35 + 22) = 2048;
      *(v35 + 24) = v36;
      _os_log_impl(&dword_24279B000, v33, v34, "Looked at %ld and removed %ld that should not be present. (Failed to remove %ld.)", v35, 0x20u);
      MEMORY[0x245D19310](v35, -1, -1);
    }
  }
}

void sub_2427B4E4C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v76[3] = *MEMORY[0x277D85DE8];
  v9 = *(v4 + 56);
  v10 = sub_2427B8FAC();
  v11 = [v9 calendarWithIdentifier_];

  if (!v11)
  {
    if (qword_281349520 == -1)
    {
LABEL_10:
      v25 = sub_2427B8F0C();
      __swift_project_value_buffer(v25, qword_281349DA8);

      v26 = sub_2427B8EEC();
      v27 = sub_2427B90BC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v75[0] = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_2427A1BEC(a2, a3, v75);
        _os_log_impl(&dword_24279B000, v26, v27, "Couldn't find calendar with UUID %{public}s while looking for reminders to remove in a full sync; skipping it.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x245D19310](v29, -1, -1);
        MEMORY[0x245D19310](v28, -1, -1);
      }

      return;
    }

LABEL_62:
    swift_once();
    goto LABEL_10;
  }

  v12 = *(v4 + 56);
  v75[0] = 0;
  v76[0] = 0;
  [v12 loadEventIDs:v75 uniqueIDs:v76 calendar:v11];
  v13 = v76[0];
  v14 = v75[0];
  if (!v76[0] || !v75[0])
  {
    v30 = qword_281349520;
    v31 = v76[0];
    v32 = v14;
    if (v30 != -1)
    {
      swift_once();
    }

    v33 = sub_2427B8F0C();
    __swift_project_value_buffer(v33, qword_281349DA8);
    v34 = sub_2427B8EEC();
    v35 = sub_2427B90BC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_24279B000, v34, v35, "Couldn't fetch contents of calendar to check for removed reminders", v36, 2u);
      MEMORY[0x245D19310](v36, -1, -1);
    }

    return;
  }

  v15 = v4;
  v75[0] = 0;
  sub_2427A152C(0, &qword_27ECC09E0, 0x277CC5A60);
  v16 = v14;
  v17 = v13;
  v18 = v16;
  sub_2427B900C();
  if (!v75[0])
  {
LABEL_46:
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v55 = sub_2427B8F0C();
    __swift_project_value_buffer(v55, qword_281349DA8);
    v56 = sub_2427B8EEC();
    v57 = sub_2427B90BC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_24279B000, v56, v57, "Fetching contents of calendar returned unexpected results", v58, 2u);
      MEMORY[0x245D19310](v58, -1, -1);
    }

    return;
  }

  v66 = v75[0];
  v75[0] = 0;
  sub_2427B900C();
  v19 = v75[0];
  if (!v75[0])
  {

    goto LABEL_46;
  }

  v20 = *(v19 + 16);
  v21 = a4[2];
  v22 = __OFADD__(v21, v20);
  v23 = v21 + v20;
  if (v22)
  {
    __break(1u);
LABEL_64:
    v59 = sub_2427B917C();
    goto LABEL_54;
  }

  v70 = v5;
  a4[2] = v23;
  v16 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
  v67 = v15;
  swift_beginAccess();
  if (v20)
  {
    v24 = 0;
    v72 = v20;
    v73 = v19 + 32;
    a2 = a1 + 56;
    v69 = v66 & 0xC000000000000001;
LABEL_19:
    v68 = v16;
    a3 = v24;
    while (a3 < *(v19 + 16))
    {
      v41 = (v73 + 16 * a3);
      v42 = v41[1];
      v24 = a3 + 1;
      if (!*(a1 + 16))
      {
        v43 = v19;

        if (v69)
        {
          goto LABEL_41;
        }

LABEL_32:
        if (a3 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v51 = *(v66 + 32 + 8 * a3);
LABEL_34:
        MEMORY[0x245D18880]();
        if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2427B902C();
        }

        sub_2427B903C();

        v16 = v74;
        if (v74 >> 62)
        {
          if (sub_2427B917C() >= 51)
          {
LABEL_38:
            v52 = MEMORY[0x245D18D70]();
            sub_2427B5758(v74, v67, a4, v75);
            if (v70)
            {

              goto LABEL_58;
            }

            objc_autoreleasePoolPop(v52);

            v74 = MEMORY[0x277D84F90];
            v53 = v67[5];
            v54 = v67[6];
            __swift_project_boxed_opaque_existential_1(v67 + 2, v53);
            (*(v54 + 40))(v53, v54);
            v70 = 0;
            v37 = v67[5];
            v38 = v67[6];
            __swift_project_boxed_opaque_existential_1(v67 + 2, v37);
            v39 = (*(v38 + 8))(v37, v38);
            v40 = v67[7];
            v67[7] = v39;

            v67[8] = MEMORY[0x277D84F98];

            v16 = MEMORY[0x277D84F90];
          }
        }

        else if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 51)
        {
          goto LABEL_38;
        }

        v19 = v43;
        if (v24 == v72)
        {
          goto LABEL_52;
        }

        goto LABEL_19;
      }

      v43 = v19;
      v44 = *v41;
      sub_2427B940C();

      sub_2427B8FCC();
      v45 = sub_2427B943C();
      v46 = -1 << *(a1 + 32);
      v47 = v45 & ~v46;
      if (((*(a2 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
LABEL_31:
        if (!v69)
        {
          goto LABEL_32;
        }

LABEL_41:
        MEMORY[0x245D18A70](a3, v66);
        goto LABEL_34;
      }

      v48 = ~v46;
      while (1)
      {
        v49 = (*(a1 + 48) + 16 * v47);
        v50 = *v49 == v44 && v49[1] == v42;
        if (v50 || (sub_2427B939C() & 1) != 0)
        {
          break;
        }

        v47 = (v47 + 1) & v48;
        if (((*(a2 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      ++a3;
      v19 = v43;
      if (v24 == v72)
      {
        v16 = v68;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_52:

  if (v16 >> 62)
  {
    goto LABEL_64;
  }

  v59 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:
  if (v59 >= 1)
  {
    v52 = MEMORY[0x245D18D70]();
    sub_2427B5758(v16, v67, a4, v75);
    if (v70)
    {
LABEL_58:
      objc_autoreleasePoolPop(v52);
    }

    else
    {
      objc_autoreleasePoolPop(v52);

      v60 = v67[5];
      v61 = v67[6];
      __swift_project_boxed_opaque_existential_1(v67 + 2, v60);
      (*(v61 + 40))(v60, v61);
      v62 = v67[5];
      v63 = v67[6];
      __swift_project_boxed_opaque_existential_1(v67 + 2, v62);
      v64 = (*(v63 + 8))(v62, v63);
      v65 = v67[7];
      v67[7] = v64;

      swift_beginAccess();
      v67[8] = MEMORY[0x277D84F98];
    }
  }
}

void sub_2427B5758(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  v74[1] = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0x281349000uLL; v7; i = 0x281349000uLL)
  {
    v9 = 0;
    v73 = v6 & 0xC000000000000001;
    v68 = v6 & 0xFFFFFFFFFFFFFF8;
    v70 = a3 + 1;
    v69 = a3;
    v71 = v7;
    v72 = v6;
    v63 = a2;
    while (1)
    {
      if (v73)
      {
        v13 = MEMORY[0x245D18A70](v9);
      }

      else
      {
        if (v9 >= *(v68 + 16))
        {
          goto LABEL_29;
        }

        v13 = *(v6 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = [*(a2 + 56) eventForObjectID:v13 occurrenceDate:0 checkValid:0];
      if (!v16)
      {
        if (*(i + 1312) != -1)
        {
          swift_once();
        }

        v20 = sub_2427B8F0C();
        __swift_project_value_buffer(v20, qword_281349DA8);
        v21 = sub_2427B8EEC();
        v22 = sub_2427B90BC();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_24279B000, v21, v22, "Couldn't turn object ID into an event", v23, 2u);
          v24 = v23;
          a3 = v69;
          MEMORY[0x245D19310](v24, -1, -1);
        }

        v10 = v70;
        v11 = *v70 + 1;
        if (__OFADD__(*v70, 1))
        {
          goto LABEL_30;
        }

        goto LABEL_5;
      }

      v17 = v16;
      v18 = *(a2 + 56);
      v74[0] = 0;
      if ([v18 removeEvent:v17 span:1 commit:0 error:v74])
      {
        v19 = v74[0];

        v11 = *a3 + 1;
        if (__OFADD__(*a3, 1))
        {
          goto LABEL_31;
        }

        v10 = a3;
LABEL_5:
        v12 = v71;
        v6 = v72;
        goto LABEL_6;
      }

      v25 = v74[0];
      v26 = sub_2427B8C4C();

      swift_willThrow();
      if (*(i + 1312) != -1)
      {
        swift_once();
      }

      v27 = sub_2427B8F0C();
      __swift_project_value_buffer(v27, qword_281349DA8);
      v28 = v17;
      v29 = v26;
      v30 = sub_2427B8EEC();
      v31 = sub_2427B90BC();
      if (os_log_type_enabled(v30, v31))
      {
        v65 = v14;
        v66 = v31;
        log = v30;
        v32 = v26;
        v33 = v28;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v74[0] = v36;
        *v34 = 136446466;
        v37 = v33;
        v38 = [v33 uniqueID];
        if (!v38)
        {

          __break(1u);
        }

        v39 = v38;

        v64 = v37;
        v40 = sub_2427B8FBC();
        v42 = v41;

        v43 = sub_2427A1BEC(v40, v42, v74);

        *(v34 + 4) = v43;
        *(v34 + 12) = 2112;
        v44 = v32;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v45;
        *v35 = v45;
        _os_log_impl(&dword_24279B000, log, v66, "Failed to remove event for entry %{public}s: %@", v34, 0x16u);
        sub_2427A4230(v35, &qword_27ECC07C0, &qword_2427BADB0);
        MEMORY[0x245D19310](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x245D19310](v36, -1, -1);
        MEMORY[0x245D19310](v34, -1, -1);

        i = 0x281349000;
        a2 = v63;
      }

      else
      {
      }

      a3 = v69;
      v10 = v70;
      v11 = *v70 + 1;
      v12 = v71;
      v6 = v72;
      if (__OFADD__(*v70, 1))
      {
        goto LABEL_32;
      }

LABEL_6:
      *v10 = v11;
      ++v9;
      if (v15 == v12)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v46 = v6;
    v7 = sub_2427B917C();
    v6 = v46;
  }

LABEL_34:
  v47 = *(a2 + 56);
  v74[0] = 0;
  if ([v47 commitWithRollback_])
  {
    v48 = v74[0];
  }

  else
  {
    v49 = v74[0];
    v50 = sub_2427B8C4C();

    swift_willThrow();
    if (*(i + 1312) != -1)
    {
      swift_once();
    }

    v51 = sub_2427B8F0C();
    __swift_project_value_buffer(v51, qword_281349DA8);
    v52 = v50;
    v53 = sub_2427B8EEC();
    v54 = sub_2427B90BC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v50;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&dword_24279B000, v53, v54, "Failed to commit removals: %@", v55, 0xCu);
      sub_2427A4230(v56, &qword_27ECC07C0, &qword_2427BADB0);
      MEMORY[0x245D19310](v56, -1, -1);
      MEMORY[0x245D19310](v55, -1, -1);
    }

    sub_2427B87F8();
    v59 = swift_allocError();
    *v60 = 2;
    swift_willThrow();

    *v62 = v59;
  }
}

void sub_2427B5E14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v9 = a2;
  v10 = a1;
  v68 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v11 = a2[5];
    v12 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
    (*(v12 + 40))(v11, v12);
    if (v5)
    {
      goto LABEL_60;
    }

    v65 = 0;
    v13 = v9[5];
    v14 = v9[6];
    __swift_project_boxed_opaque_existential_1(v9 + 2, v13);
    v15 = (*(v14 + 8))(v13, v14);
    v16 = v9[7];
    v9[7] = v15;

    swift_beginAccess();
    v9[8] = MEMORY[0x277D84F98];
  }

  else
  {
    v65 = v5;
  }

  if (__OFADD__(v10, a3))
  {
    goto LABEL_48;
  }

  if (*(a4 + 16) >= v10 + a3)
  {
    v17 = v10 + a3;
  }

  else
  {
    v17 = *(a4 + 16);
  }

  v67 = MEMORY[0x277D84F90];
  if (v17 < v10)
  {
    goto LABEL_49;
  }

  if (v10 < 0)
  {
    goto LABEL_50;
  }

  if (v17 == v10)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v18 = a4 + 40;
  v58 = v17 - 1;
  v6 = MEMORY[0x277D84F90];
  v19 = v10;
  v59 = a4 + 40;
  v61 = v17;
  v62 = v9;
  do
  {
    v20 = v18 + 16 * v19;
    v21 = v19;
    v63 = v6;
    while (1)
    {
      if (v19 < v10 || v21 >= v17)
      {
        __break(1u);
        goto LABEL_46;
      }

      v64 = v21;
      v22 = v19;
      v23 = v10;
      v24 = v9[7];

      v25 = v24;
      v26 = sub_2427B8FAC();

      v27 = v9[5];
      v28 = v9[6];
      __swift_project_boxed_opaque_existential_1(v9 + 2, v27);
      (*(v28 + 24))(v27, v28);
      if (v65)
      {

        v5 = v65;
        goto LABEL_60;
      }

      sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
      v29 = sub_2427B8FFC();

      v30 = [v25 eventsWithExternalIdentifier:v26 inCalendars:v29];

      v10 = v23;
      v19 = v22;
      if (v30)
      {
        break;
      }

LABEL_15:
      v6 = v63;
      v21 = v64 + 1;
      v20 += 16;
      v17 = v61;
      v9 = v62;
      if (v61 == v64 + 1)
      {
        goto LABEL_33;
      }
    }

    sub_2427A152C(0, &qword_281349478, 0x277CC5A28);
    v31 = sub_2427B901C();

    v32 = v31;
    if (!(v31 >> 62))
    {
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

LABEL_22:

      goto LABEL_15;
    }

    v33 = sub_2427B917C();
    v32 = v31;
    if (!v33)
    {
      goto LABEL_22;
    }

LABEL_24:
    if ((v32 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x245D18A70](0);
      v9 = v62;
      v18 = v59;
    }

    else
    {
      v9 = v62;
      v18 = v59;
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v34 = *(v32 + 32);
    }

    v35 = v34;
    MEMORY[0x245D18880]();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2427B902C();
    }

    v19 = v64 + 1;
    sub_2427B903C();

    v6 = v67;
    v17 = v61;
  }

  while (v58 != v64);
LABEL_33:

  if (v6 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2427B917C())
  {
    v37 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x245D18A70](v37, v6);
      }

      else
      {
        if (v37 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v38 = *(v6 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v41 = v9[7];
      v66 = 0;
      if (![v41 removeEvent:v39 span:1 commit:0 error:&v66])
      {
        v43 = v66;

        v44 = sub_2427B8C4C();

        swift_willThrow();
        goto LABEL_55;
      }

      v42 = v66;

      ++v37;
      if (v40 == i)
      {
        goto LABEL_52;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:

  v45 = v9[7];
  v66 = 0;
  if ([v45 commitWithRollback_])
  {
    v46 = v66;
    return;
  }

  v47 = v66;
  v44 = sub_2427B8C4C();

  swift_willThrow();
LABEL_55:
  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v48 = sub_2427B8F0C();
  __swift_project_value_buffer(v48, qword_281349DA8);
  v49 = v44;
  v50 = sub_2427B8EEC();
  v51 = sub_2427B90BC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    v54 = v44;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 4) = v55;
    *v53 = v55;
    _os_log_impl(&dword_24279B000, v50, v51, "Failed to commit deletes to event store: %@", v52, 0xCu);
    sub_2427A4230(v53, &qword_27ECC07C0, &qword_2427BADB0);
    MEMORY[0x245D19310](v53, -1, -1);
    MEMORY[0x245D19310](v52, -1, -1);
  }

  sub_2427B87F8();
  v56 = swift_allocError();
  *v57 = 2;
  swift_willThrow();

  v5 = v56;
LABEL_60:
  *a5 = v5;
}

void sub_2427B6510(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = v5;
  v46 = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for IntegrationEntry(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a4;
  if (a1)
  {
    v43 = a3;
    v17 = a2[5];
    v18 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v17);
    (*(v18 + 40))(v17, v18);
    if (v5)
    {
LABEL_16:
      *a5 = v8;
      return;
    }

    v19 = a2[5];
    v6 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v19);
    v20 = (*(v6 + 8))(v19, v6);
    v21 = a2[7];
    a2[7] = v20;

    swift_beginAccess();
    a2[8] = MEMORY[0x277D84F98];

    a3 = v43;
    a4 = v44;
  }

  v22 = __OFADD__(a1, a3);
  v23 = a1 + a3;
  if (v22)
  {
    goto LABEL_29;
  }

  v42 = a5;
  v24 = *(a4 + 16);
  if (v24 >= v23)
  {
    a4 = v23;
  }

  else
  {
    a4 = *(a4 + 16);
  }

  v6 = a2[18];
  v43 = a2[19];
  __swift_project_boxed_opaque_existential_1(a2 + 15, v6);
  if (a4 < a1)
  {
    goto LABEL_30;
  }

  if (v24 < a1)
  {
    goto LABEL_31;
  }

  if (a1 < 0)
  {
    goto LABEL_32;
  }

  if (v23 < 0)
  {
    goto LABEL_33;
  }

  if (v24 != a4 - a1)
  {
    goto LABEL_34;
  }

  v25 = v44;

  while (1)
  {
    a1 = (*(v43 + 16))(v25, v6);

    if (v5)
    {
      a5 = v42;
      goto LABEL_16;
    }

    a4 = *(a1 + 16);
    if (!a4)
    {
      break;
    }

    v26 = 0;
    while (v26 < *(a1 + 16))
    {
      sub_2427B88A8(a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v26, v16, type metadata accessor for IntegrationEntry);
      sub_2427B3AE0(v16);
      ++v26;
      sub_2427B8910(v16, type metadata accessor for IntegrationEntry);
      if (a4 == v26)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_2427B7AB4(v44, v44 + 32, a1, (2 * a4) | 1);
    v25 = v41;
  }

LABEL_21:

  v27 = a2[7];
  v45 = 0;
  if (([v27 commitWithRollback_] & 1) == 0)
  {
    v29 = v45;
    v30 = sub_2427B8C4C();

    swift_willThrow();
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v31 = sub_2427B8F0C();
    __swift_project_value_buffer(v31, qword_281349DA8);
    v32 = v30;
    v33 = sub_2427B8EEC();
    v34 = sub_2427B90BC();

    v35 = os_log_type_enabled(v33, v34);
    a5 = v42;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v30;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_24279B000, v33, v34, "Failed to commit changes to event store: %@", v36, 0xCu);
      sub_2427A4230(v37, &qword_27ECC07C0, &qword_2427BADB0);
      MEMORY[0x245D19310](v37, -1, -1);
      MEMORY[0x245D19310](v36, -1, -1);
    }

    sub_2427B87F8();
    v8 = swift_allocError();
    *v40 = 2;
    swift_willThrow();

    goto LABEL_16;
  }

  v28 = v45;
}

uint64_t IntegrationCollectionSync.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_2427A51EC(v0 + 72);
  return v0;
}

uint64_t IntegrationCollectionSync.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_2427A51EC(v0 + 72);

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

unint64_t sub_2427B6A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  v8 = sub_2427B943C();

  return sub_2427B7440(a1, a2, a3, a4, v8);
}

unint64_t sub_2427B6B28(uint64_t a1)
{
  v2 = sub_2427B910C();

  return sub_2427B7540(a1, v2);
}

uint64_t sub_2427B6B6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C8, &qword_2427BBCE0);
  v37 = v4;
  result = sub_2427B932C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 48 * v20);
      v39 = *v22;
      v40 = v22[1];
      v23 = v22[3];
      v38 = v22[2];
      v24 = v22[4];
      v25 = v22[5];
      if ((v37 & 1) == 0)
      {
        v26 = v21;

        sub_2427A3288(v24, v25);
      }

      result = sub_2427B910C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v39;
      v16[1] = v40;
      v16[2] = v38;
      v16[3] = v23;
      v16[4] = v24;
      v16[5] = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2427B6E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0800, &unk_2427BBCC0);
  v38 = v4;
  result = sub_2427B932C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v40 = v22[2];
      v26 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_2427B940C();
      sub_2427B8FCC();
      sub_2427B8FCC();
      result = sub_2427B943C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v12 = v39;
      v16[2] = v40;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2427B7108(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2427B6B28(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2427B6B6C(v13, a3 & 1);
      v8 = sub_2427B6B28(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        sub_2427B93BC();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_2427B7780();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    v21 = (v18[7] + 48 * v8);
    v22 = *a1;
    v23 = a1[2];
    v21[1] = a1[1];
    v21[2] = v23;
    *v21 = v22;
    v24 = v18[2];
    v12 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v12)
    {
      v18[2] = v25;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v19 = v18[7] + 48 * v8;

  return sub_2427B884C(a1, v19);
}

uint64_t sub_2427B7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2427B6A88(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_2427B6E30(v20, a6 & 1);
      v15 = sub_2427B6A88(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_2427B93BC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_2427B7930();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 32 * v15);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t sub_2427B7440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_2427B939C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_2427B939C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_2427B7540(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2427B911C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2427B7628(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2427B931C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;

        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2427B7780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C8, &qword_2427BBCE0);
  v27 = v0;
  v1 = *v0;
  v2 = sub_2427B931C();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(*(v1 + 48) + 8 * v16);
        v18 = (*(v1 + 56) + 48 * v16);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        *(*(v3 + 48) + 8 * v16) = v17;
        v25 = (*(v3 + 56) + 48 * v16);
        *v25 = v19;
        v25[1] = v20;
        v25[2] = v21;
        v25[3] = v22;
        v25[4] = v23;
        v25[5] = v24;
        v26 = v17;

        result = sub_2427A3288(v23, v24);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v3;
  }

  return result;
}

id sub_2427B7930()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0800, &unk_2427BBCC0);
  v2 = *v0;
  v3 = sub_2427B931C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void sub_2427B7AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08A8, &qword_2427BB080);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2427B7B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 64) = sub_24279F380(MEMORY[0x277D84F90]);
  sub_24279F31C(v14, a2 + 16);
  *(a2 + 56) = (*(a4 + 8))(a3, a4);
  (*(a4 + 16))(v12, a3, a4);
  v9 = v12[3];
  *(a2 + 104) = v12[2];
  *(a2 + 120) = v9;
  *(a2 + 136) = v12[4];
  *(a2 + 152) = v13;
  v10 = v12[1];
  *(a2 + 72) = v12[0];
  *(a2 + 88) = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a2;
}

uint64_t sub_2427B7CA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D188F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24279EC78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_2427B7D3C(unsigned __int8 *a1)
{
  v2 = sub_2427B8D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v58 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v9 = *(v58 - 8);
  v10 = MEMORY[0x28223BE20](v58);
  v53 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v56 = &v50 - v12;
  v13 = *a1;
  if (*a1 <= 1u)
  {
    v14 = 0;
    if (!*a1)
    {
      return v13;
    }
  }

  else if (v13 == 2)
  {
    v14 = 1;
  }

  else if (v13 == 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  v51 = v5;
  v52 = v3;
  v15 = type metadata accessor for IntegrationRecurrence(0);
  v16 = *&a1[v15[8]];
  v57 = v14;
  if (v16)
  {
    v17 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    v18 = *(v16 + 16);
    if (v18)
    {
      v55 = v2;
      v19 = (v16 + 40);
      do
      {
        v20 = [objc_allocWithZone(MEMORY[0x277CC5A88]) initWithDayOfTheWeek:*(v19 - 8) + 1 weekNumber:*v19];
        MEMORY[0x245D18880]();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2427B902C();
        }

        v19 += 2;
        sub_2427B903C();

        --v18;
      }

      while (v18);
      v17 = v59;
      v2 = v55;
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = *&a1[v15[9]];
  if (v21)
  {
    v22 = sub_2427B475C(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *&a1[v15[12]];
  if (v23)
  {
    v24 = sub_2427B475C(v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = *&a1[v15[11]];
  v54 = v24;
  if (v25)
  {
    v55 = sub_2427B475C(v25);
  }

  else
  {
    v55 = 0;
  }

  v26 = v2;
  v27 = *&a1[v15[10]];
  if (v27)
  {
    v28 = sub_2427B475C(v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = *&a1[v15[13]];
  if (v29)
  {
    v30 = sub_2427B475C(v29);
  }

  else
  {
    v30 = 0;
  }

  sub_2427B2564(&a1[v15[6]], v8, &qword_27ECC0890, &qword_2427BB3B0);
  if ((*(v9 + 48))(v8, 1, v58) == 1)
  {
    sub_2427A4230(v8, &qword_27ECC0890, &qword_2427BB3B0);
    v31 = 0;
    v32 = v54;
    v33 = *(a1 + 1);
    if (v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v41 = v56;
    sub_2427B2630(v8, v56, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    v42 = v53;
    sub_2427B88A8(v41, v53, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithOccurrenceCount_];
    }

    else
    {
      v45 = v51;
      v44 = v52;
      (*(v52 + 32))(v51, v42, v26);
      v46 = objc_allocWithZone(MEMORY[0x277CC5A90]);
      v47 = sub_2427B8CFC();
      v43 = [v46 initWithEndDate_];

      (*(v44 + 8))(v45, v26);
      v41 = v56;
    }

    v32 = v54;
    sub_2427B8910(v41, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    v31 = v43;
    v33 = *(a1 + 1);
    if (v17)
    {
LABEL_34:
      sub_2427A152C(0, &qword_27ECC09F8, 0x277CC5A88);
      v34 = sub_2427B8FFC();

      if (v22)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }
  }

  v34 = 0;
  if (v22)
  {
LABEL_35:
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v35 = sub_2427B8FFC();

    v36 = v55;
    if (v32)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  v35 = 0;
  v36 = v55;
  if (v32)
  {
LABEL_36:
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v37 = sub_2427B8FFC();

    if (v36)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

LABEL_46:
  v37 = 0;
  if (v36)
  {
LABEL_37:
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v38 = sub_2427B8FFC();

    if (v28)
    {
      goto LABEL_38;
    }

LABEL_48:
    v39 = 0;
    if (v30)
    {
      goto LABEL_39;
    }

LABEL_49:
    v40 = 0;
    goto LABEL_50;
  }

LABEL_47:
  v38 = 0;
  if (!v28)
  {
    goto LABEL_48;
  }

LABEL_38:
  sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
  v39 = sub_2427B8FFC();

  if (!v30)
  {
    goto LABEL_49;
  }

LABEL_39:
  sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
  v40 = sub_2427B8FFC();

LABEL_50:
  v48 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
  v13 = [v48 initRecurrenceWithFrequency:v57 interval:v33 daysOfTheWeek:v34 daysOfTheMonth:v35 monthsOfTheYear:v37 weeksOfTheYear:v38 daysOfTheYear:v39 setPositions:v40 end:v31];

  return v13;
}

uint64_t sub_2427B8404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for IntegrationRecurrence(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B2564(a1, v4, &qword_27ECC08D8, &qword_2427BB0B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2427A4230(v4, &qword_27ECC08D8, &qword_2427BB0B0);
  }

  else
  {
    sub_2427B2630(v4, v8, type metadata accessor for IntegrationRecurrence);
    v9 = sub_2427B7D3C(v8);
    if (v9)
    {
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E8, &unk_2427BBCD0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2427BBC30;
      *(v11 + 32) = v10;
      sub_2427B8910(v8, type metadata accessor for IntegrationRecurrence);
      return v11;
    }

    sub_2427B8910(v8, type metadata accessor for IntegrationRecurrence);
  }

  return 0;
}

uint64_t sub_2427B8608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegrationCollectionSync();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_2427B7B8C(v9, v10, a3, a4);
}

unint64_t sub_2427B87F8()
{
  result = qword_27ECC09E8;
  if (!qword_27ECC09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC09E8);
  }

  return result;
}

uint64_t sub_2427B88A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2427B8910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationCollectionSync.SyncError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationCollectionSync.SyncError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2427B8B28()
{
  result = qword_27ECC0A00;
  if (!qword_27ECC0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0A00);
  }

  return result;
}