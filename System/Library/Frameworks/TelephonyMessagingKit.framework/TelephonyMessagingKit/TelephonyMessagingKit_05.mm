uint64_t RCSService.Business.DialPhoneNumberAction.init(phoneNumber:fallbackURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  return sub_1E4AFD6D0(a3, a4 + *(v6 + 20), &qword_1ECF92F88, &qword_1E4BFDD20);
}

uint64_t sub_1E4B4D07C()
{
  if (*v0)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_1E4B4D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B4D1AC(uint64_t a1)
{
  v2 = sub_1E4B5D680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4D1E8(uint64_t a1)
{
  v2 = sub_1E4B5D680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.DialPhoneNumberAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D78, &qword_1E4C07860);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D680();
  sub_1E4BF0ACC();
  v8[15] = 0;
  sub_1E4BF08FC();
  if (!v1)
  {
    type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
    v8[14] = 1;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RCSService.Business.DialPhoneNumberAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D88, &qword_1E4C07868);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D680();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v21 = 0;
  *v12 = sub_1E4BF083C();
  v12[1] = v14;
  sub_1E4BEFA6C();
  v20 = 1;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E4BF082C();
  (*(v13 + 8))(v9, v19);
  sub_1E4AFD6D0(v6, v12 + *(v10 + 20), &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4B5D6D4(v12, v17, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v12, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
}

double RCSService.Business.ShowLocationAction.method.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1E4B5D79C(v2, v3, v4);
}

uint64_t RCSService.Business.ShowLocationAction.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RCSService.Business.ShowLocationAction.init(method:label:fallbackURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  v8 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  return sub_1E4AFD6D0(a4, a5 + *(v8 + 24), &qword_1ECF92F88, &qword_1E4BFDD20);
}

uint64_t static RCSService.Business.ShowLocationAction.Method.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((v8 & 1) == 0 && v4 == v6)
    {
      return v5 == v7;
    }

    return 0;
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (*&v4 == *&v6 && *&v5 == *&v7)
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t sub_1E4B4D884()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646F6874656DLL;
  }
}

uint64_t sub_1E4B4D8E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B64200(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B4D908(uint64_t a1)
{
  v2 = sub_1E4B5D7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4D944(uint64_t a1)
{
  v2 = sub_1E4B5D7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ShowLocationAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D90, &qword_1E4C07870);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D7CC();
  sub_1E4BF0ACC();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v13 = *v3;
  v14 = v9;
  v15 = v10;
  v12[7] = 0;
  sub_1E4B5D79C(v13, v9, v10);
  sub_1E4B5D820();
  sub_1E4BF093C();
  sub_1E4B5D874(v13, v14, v15);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1E4BF08CC();
    type metadata accessor for RCSService.Business.ShowLocationAction(0);
    LOBYTE(v13) = 2;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.Business.ShowLocationAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DA8, &qword_1E4C07878);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D7CC();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v13 = v12;
  v14 = v21;
  v25 = 0;
  sub_1E4B5D884();
  v15 = v22;
  sub_1E4BF087C();
  v16 = v24;
  *v13 = v23;
  *(v13 + 16) = v16;
  LOBYTE(v23) = 1;
  *(v13 + 24) = sub_1E4BF080C();
  *(v13 + 32) = v17;
  sub_1E4BEFA6C();
  LOBYTE(v23) = 2;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E4BF082C();
  (*(v14 + 8))(v9, v15);
  sub_1E4AFD6D0(v6, v13 + *(v19 + 24), &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4B5D6D4(v13, v20, type metadata accessor for RCSService.Business.ShowLocationAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v13, type metadata accessor for RCSService.Business.ShowLocationAction);
}

uint64_t RCSService.Business.CreateCalendarEventAction.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.Business.CreateCalendarEventAction(0) + 20);
  v4 = sub_1E4BEFABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.Business.CreateCalendarEventAction.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business.CreateCalendarEventAction(0) + 24));

  return v1;
}

uint64_t RCSService.Business.CreateCalendarEventAction.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business.CreateCalendarEventAction(0) + 28));

  return v1;
}

uint64_t RCSService.Business.CreateCalendarEventAction.init(startTime:endTime:title:description:fallbackURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_1E4BEFABC();
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  v16(a8 + CalendarEventAction[5], a2, v15);
  v18 = (a8 + CalendarEventAction[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a8 + CalendarEventAction[7]);
  *v19 = a5;
  v19[1] = a6;
  return sub_1E4AFD6D0(a7, a8 + CalendarEventAction[8], &qword_1ECF92F88, &qword_1E4BFDD20);
}

uint64_t sub_1E4B4E190()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x656C746974;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6954646E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4B4E23C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B64314(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B4E264(uint64_t a1)
{
  v2 = sub_1E4B5D8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4E2A0(uint64_t a1)
{
  v2 = sub_1E4B5D8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.CreateCalendarEventAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DB8, &qword_1E4C07880);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D8F8();
  sub_1E4BF0ACC();
  v13 = 0;
  sub_1E4BEFABC();
  sub_1E4B5B390(&qword_1ECF925B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E4BF093C();
  if (!v1)
  {
    type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
    v12 = 1;
    sub_1E4BF093C();
    v11 = 2;
    sub_1E4BF08FC();
    v10 = 3;
    sub_1E4BF08CC();
    v9 = 4;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RCSService.Business.CreateCalendarEventAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v41 = sub_1E4BEFABC();
  v37 = *(v41 - 8);
  v6 = MEMORY[0x1EEE9AC00](v41);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DC8, &qword_1E4C07888);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  MEMORY[0x1EEE9AC00](CalendarEventAction);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D8F8();
  v42 = v12;
  v16 = v43;
  sub_1E4BF0ABC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v5;
  v34 = CalendarEventAction;
  v35 = v15;
  v43 = a1;
  v48 = 0;
  sub_1E4B5B390(&qword_1ECF925D8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v17 = v38;
  v18 = v40;
  sub_1E4BF087C();
  v19 = v35;
  v20 = v17;
  v21 = v41;
  v38 = *(v37 + 32);
  (v38)(v35, v20, v41);
  v47 = 1;
  sub_1E4BF087C();
  v22 = v34;
  (v38)(v19 + v34[5], v8, v21);
  v46 = 2;
  v23 = sub_1E4BF083C();
  v24 = v43;
  v25 = v39;
  v26 = (v19 + v22[6]);
  *v26 = v23;
  v26[1] = v27;
  v45 = 3;
  v28 = sub_1E4BF080C();
  v29 = (v19 + v22[7]);
  *v29 = v28;
  v29[1] = v30;
  sub_1E4BEFA6C();
  v44 = 4;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E4BF082C();
  (*(v25 + 8))(v42, v18);
  sub_1E4AFD6D0(v33, v19 + v22[8], &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4B5D6D4(v19, v36, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1E4B5D73C(v19, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
}

uint64_t RCSService.Business.ComposeTextAction.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RCSService.Business.ComposeTextAction.init(phoneNumber:text:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static RCSService.Business.ComposeTextAction.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E4BF099C();
    }
  }

  return result;
}

uint64_t sub_1E4B4EC88()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_1E4B4ECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B4EDA4(uint64_t a1)
{
  v2 = sub_1E4B5D94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4EDE0(uint64_t a1)
{
  v2 = sub_1E4B5D94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ComposeTextAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DD0, &qword_1E4C07890);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D94C();
  sub_1E4BF0ACC();
  v12 = 0;
  v8 = v10[3];
  sub_1E4BF08FC();
  if (!v8)
  {
    v11 = 1;
    sub_1E4BF08FC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RCSService.Business.ComposeTextAction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DE0, &qword_1E4C07898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D94C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1E4BF083C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1E4BF083C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B4F1F8(uint64_t a1)
{
  v2 = sub_1E4B5DA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4F234(uint64_t a1)
{
  v2 = sub_1E4B5DA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4F270()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t sub_1E4B4F29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69647561 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B4F370(uint64_t a1)
{
  v2 = sub_1E4B5D9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4F3AC(uint64_t a1)
{
  v2 = sub_1E4B5D9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4F3E8(uint64_t a1)
{
  v2 = sub_1E4B5D9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4F424(uint64_t a1)
{
  v2 = sub_1E4B5D9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ComposeRecordingAction.MediaType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DE8, &qword_1E4C078A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DF0, &qword_1E4C078A8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94DF8, &qword_1E4C078B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D9A0();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4B5D9F4();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4B5DA48();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t RCSService.Business.ComposeRecordingAction.MediaType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E18, &qword_1E4C078B8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E20, &qword_1E4C078C0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E28, &qword_1E4C078C8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5D9A0();
  v12 = v31;
  sub_1E4BF0ABC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E4BF088C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E4AE0F10();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E4BF06EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v22 = &type metadata for RCSService.Business.ComposeRecordingAction.MediaType;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E4B5D9F4();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E4B5DA48();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t RCSService.Business.ComposeRecordingAction.phoneNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RCSService.Business.ComposeRecordingAction.init(phoneNumber:mediaType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t static RCSService.Business.ComposeRecordingAction.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1E4BF099C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1E4B4FCD8()
{
  if (*v0)
  {
    return 0x707954616964656DLL;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_1E4B4FD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B4FE08(uint64_t a1)
{
  v2 = sub_1E4B5DA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4FE44(uint64_t a1)
{
  v2 = sub_1E4B5DA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ComposeRecordingAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E30, &qword_1E4C078D0);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5DA9C();
  sub_1E4BF0ACC();
  v13 = 0;
  sub_1E4BF08FC();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1E4B5DAF0();
    sub_1E4BF093C();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t RCSService.Business.ComposeRecordingAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E48, &qword_1E4C078D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5DA9C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_1E4BF083C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1E4B5DB44();
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B50238(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1E4BF099C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1E4B5029C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4C52556E65706FLL;
    v6 = 0x61636F4C776F6873;
    if (a1 != 2)
    {
      v6 = 0x61636F4C646E6573;
    }

    if (a1)
    {
      v5 = 0x6E6F68506C616964;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5465736F706D6F63;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E4B503EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B644D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B50420(uint64_t a1)
{
  v2 = sub_1E4B5E500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5045C(uint64_t a1)
{
  v2 = sub_1E4B5E500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50498(uint64_t a1)
{
  v2 = sub_1E4B5E6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B504D4(uint64_t a1)
{
  v2 = sub_1E4B5E6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50510(uint64_t a1)
{
  v2 = sub_1E4B5E5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5054C(uint64_t a1)
{
  v2 = sub_1E4B5E5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50588(uint64_t a1)
{
  v2 = sub_1E4B5E74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B505C4(uint64_t a1)
{
  v2 = sub_1E4B5E74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50600(uint64_t a1)
{
  v2 = sub_1E4B5E8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5063C(uint64_t a1)
{
  v2 = sub_1E4B5E8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50678(uint64_t a1)
{
  v2 = sub_1E4B5E554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B506B4(uint64_t a1)
{
  v2 = sub_1E4B5E554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B506F0(uint64_t a1)
{
  v2 = sub_1E4B5E904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5072C(uint64_t a1)
{
  v2 = sub_1E4B5E904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50768(uint64_t a1)
{
  v2 = sub_1E4B5E5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B507A4(uint64_t a1)
{
  v2 = sub_1E4B5E5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B507E0(uint64_t a1)
{
  v2 = sub_1E4B5E7A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5081C(uint64_t a1)
{
  v2 = sub_1E4B5E7A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B50858(uint64_t a1)
{
  v2 = sub_1E4B5E85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B50894(uint64_t a1)
{
  v2 = sub_1E4B5E85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.SuggestedAction.Action.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E58, &qword_1E4C078E0);
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v91 = &v70 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E60, &qword_1E4C078E8);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v70 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E68, &qword_1E4C078F0);
  v73 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v70 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E70, &qword_1E4C078F8);
  v72 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v70 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E78, &qword_1E4C07900);
  v71 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v70 - v7;
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  MEMORY[0x1EEE9AC00](CalendarEventAction);
  v100 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E80, &qword_1E4C07908);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v70 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E88, &qword_1E4C07910);
  v81 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v70 - v10;
  v78 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  MEMORY[0x1EEE9AC00](v78);
  v97 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E90, &qword_1E4C07918);
  v77 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v70 - v12;
  v76 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  MEMORY[0x1EEE9AC00](v76);
  v94 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94E98, &qword_1E4C07920);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v70 - v14;
  v16 = type metadata accessor for RCSService.Business.OpenURLAction(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94EA0, &qword_1E4C07928);
  v23 = *(v22 - 8);
  v105 = v22;
  v106 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5E500();
  v104 = v25;
  sub_1E4BF0ACC();
  sub_1E4B5D6D4(v103, v21, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v103 = v16;
    v33 = v18;
    v34 = v15;
    v35 = v95;
    v37 = v96;
    v36 = v97;
    v39 = v98;
    v38 = v99;
    v40 = v101;
    v41 = v102;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1E4B5E7F4(v21, v97, type metadata accessor for RCSService.Business.ShowLocationAction);
        LOBYTE(v107) = 2;
        sub_1E4B5E85C();
        v50 = v104;
        v49 = v105;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94F00, type metadata accessor for RCSService.Business.ShowLocationAction, &protocol conformance descriptor for RCSService.Business.ShowLocationAction);
        sub_1E4BF093C();
        (*(v81 + 8))(v39, v38);
        sub_1E4B5D73C(v36, type metadata accessor for RCSService.Business.ShowLocationAction);
        return (*(v106 + 8))(v50, v49);
      }

      else
      {
        v62 = v100;
        sub_1E4B5E7F4(v21, v100, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
        LOBYTE(v107) = 4;
        sub_1E4B5E74C();
        v64 = v104;
        v63 = v105;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94EE8, type metadata accessor for RCSService.Business.CreateCalendarEventAction, &protocol conformance descriptor for RCSService.Business.CreateCalendarEventAction);
        sub_1E4BF093C();
        (*(v71 + 8))(v40, v41);
        sub_1E4B5D73C(v62, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
        return (*(v106 + 8))(v64, v63);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v61 = v94;
        sub_1E4B5E7F4(v21, v94, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
        LOBYTE(v107) = 1;
        sub_1E4B5E8B0();
        v45 = v104;
        v44 = v105;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94F10, type metadata accessor for RCSService.Business.DialPhoneNumberAction, &protocol conformance descriptor for RCSService.Business.DialPhoneNumberAction);
        sub_1E4BF093C();
        (*(v77 + 8))(v35, v37);
        v47 = type metadata accessor for RCSService.Business.DialPhoneNumberAction;
        v48 = v61;
      }

      else
      {
        v42 = v33;
        sub_1E4B5E7F4(v21, v33, type metadata accessor for RCSService.Business.OpenURLAction);
        LOBYTE(v107) = 0;
        sub_1E4B5E904();
        v43 = v34;
        v45 = v104;
        v44 = v105;
        sub_1E4BF08BC();
        sub_1E4B5B390(&qword_1ECF94F20, type metadata accessor for RCSService.Business.OpenURLAction, &protocol conformance descriptor for RCSService.Business.OpenURLAction);
        v46 = v75;
        sub_1E4BF093C();
        (*(v74 + 8))(v43, v46);
        v47 = type metadata accessor for RCSService.Business.OpenURLAction;
        v48 = v42;
      }

      sub_1E4B5D73C(v48, v47);
      return (*(v106 + 8))(v45, v44);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      v28 = v104;
      v27 = v105;
      if (EnumCaseMultiPayload == 6)
      {
        LOBYTE(v107) = 3;
        sub_1E4B5E7A0();
        v59 = v79;
        sub_1E4BF08BC();
        v30 = *(v82 + 8);
        v31 = v59;
        v32 = &v111;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          LOBYTE(v107) = 8;
          sub_1E4B5E554();
          v65 = v91;
          sub_1E4BF08BC();
          v60 = v93;
          v30 = *(v92 + 8);
          v31 = v65;
          goto LABEL_20;
        }

        LOBYTE(v107) = 7;
        sub_1E4B5E5A8();
        v29 = v86;
        sub_1E4BF08BC();
        v30 = *(v88 + 8);
        v31 = v29;
        v32 = &v112;
      }

      v60 = *(v32 - 32);
LABEL_20:
      v30(v31, v60);
      return (*(v106 + 8))(v28, v27);
    }

    v53 = v104;
    v52 = v105;
    v55 = *v21;
    v54 = *(v21 + 1);
    if (EnumCaseMultiPayload == 4)
    {
      v56 = v21[16];
      LOBYTE(v107) = 5;
      sub_1E4B5E6A4();
      v57 = v84;
      sub_1E4BF08BC();
      v107 = v55;
      v108 = v54;
      LOBYTE(v109) = v56;
      sub_1E4B5E6F8();
      v58 = v85;
      sub_1E4BF093C();
      (*(v72 + 8))(v57, v58);
      (*(v106 + 8))(v53, v52);
    }

    else
    {
      v67 = *(v21 + 2);
      v66 = *(v21 + 3);
      LOBYTE(v107) = 6;
      sub_1E4B5E5FC();
      v68 = v87;
      sub_1E4BF08BC();
      v107 = v55;
      v108 = v54;
      v109 = v67;
      v110 = v66;
      sub_1E4B5E650();
      v69 = v90;
      sub_1E4BF093C();
      (*(v73 + 8))(v68, v69);
      (*(v106 + 8))(v53, v52);
    }
  }
}

uint64_t RCSService.Business.SuggestedAction.Action.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F28, &qword_1E4C07930);
  v128 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v121 = &v91 - v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F30, &qword_1E4C07938);
  v111 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v120 = &v91 - v4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F38, &qword_1E4C07940);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v119 = &v91 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F40, &qword_1E4C07948);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v127 = &v91 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F48, &qword_1E4C07950);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v118 = &v91 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F50, &qword_1E4C07958);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v117 = &v91 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F58, &qword_1E4C07960);
  v106 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v126 = &v91 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F60, &qword_1E4C07968);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v125 = &v91 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F68, &qword_1E4C07970);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v116 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94F70, &qword_1E4C07978);
  v123 = *(v12 - 8);
  v124 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - v13;
  v122 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  v15 = MEMORY[0x1EEE9AC00](v122);
  v98 = (&v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v97 = (&v91 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v91 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v91 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v91 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v91 - v31;
  v33 = a1[3];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1E4B5E500();
  v130 = v14;
  v34 = v139;
  sub_1E4BF0ABC();
  if (v34)
  {
    goto LABEL_12;
  }

  v92 = v30;
  v93 = v27;
  v94 = v24;
  v95 = v21;
  v35 = v125;
  v36 = v126;
  v139 = 0;
  v37 = v127;
  v38 = v128;
  v96 = v32;
  v40 = v129;
  v39 = v130;
  v41 = v124;
  v42 = sub_1E4BF088C();
  v43 = (2 * *(v42 + 16)) | 1;
  v135 = v42;
  v136 = v42 + 32;
  v137 = 0;
  v138 = v43;
  v44 = sub_1E4ADD488();
  if (v44 == 9 || v137 != v138 >> 1)
  {
    v49 = v39;
    v50 = sub_1E4BF06EC();
    swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v52 = v122;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v123 + 8))(v49, v41);
    goto LABEL_11;
  }

  if (v44 <= 3u)
  {
    if (v44 > 1u)
    {
      v55 = v123;
      v61 = v139;
      if (v44 != 2)
      {
        LOBYTE(v132) = 3;
        sub_1E4B5E7A0();
        v71 = v117;
        sub_1E4BF07EC();
        if (!v61)
        {
          (*(v104 + 8))(v71, v105);
          (*(v55 + 8))(v39, v41);
          swift_unknownObjectRelease();
          v87 = v96;
LABEL_39:
          swift_storeEnumTagMultiPayload();
LABEL_45:
          v88 = v131;
          goto LABEL_46;
        }

        goto LABEL_31;
      }

      LOBYTE(v132) = 2;
      sub_1E4B5E85C();
      v58 = v39;
      sub_1E4BF07EC();
      if (!v61)
      {
        type metadata accessor for RCSService.Business.ShowLocationAction(0);
        sub_1E4B5B390(&qword_1ECF94F90, type metadata accessor for RCSService.Business.ShowLocationAction, &protocol conformance descriptor for RCSService.Business.ShowLocationAction);
        v59 = v94;
        v62 = v101;
        sub_1E4BF087C();
        (*(v106 + 8))(v36, v62);
        (*(v55 + 8))(v130, v41);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }
    }

    else
    {
      v55 = v123;
      v56 = v139;
      if (v44)
      {
        LOBYTE(v132) = 1;
        sub_1E4B5E8B0();
        v70 = v35;
        v58 = v39;
        sub_1E4BF07EC();
        if (!v56)
        {
          type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
          sub_1E4B5B390(&qword_1ECF94F98, type metadata accessor for RCSService.Business.DialPhoneNumberAction, &protocol conformance descriptor for RCSService.Business.DialPhoneNumberAction);
          v59 = v93;
          v80 = v103;
          sub_1E4BF087C();
          (*(v102 + 8))(v70, v80);
          (*(v55 + 8))(v130, v41);
          swift_unknownObjectRelease();
          goto LABEL_42;
        }
      }

      else
      {
        LOBYTE(v132) = 0;
        sub_1E4B5E904();
        v57 = v116;
        v58 = v39;
        sub_1E4BF07EC();
        if (!v56)
        {
          type metadata accessor for RCSService.Business.OpenURLAction(0);
          sub_1E4B5B390(&qword_1ECF94FA0, type metadata accessor for RCSService.Business.OpenURLAction, &protocol conformance descriptor for RCSService.Business.OpenURLAction);
          v59 = v92;
          v60 = v100;
          sub_1E4BF087C();
          (*(v99 + 8))(v57, v60);
          (*(v55 + 8))(v130, v41);
          swift_unknownObjectRelease();
LABEL_42:
          swift_storeEnumTagMultiPayload();
          v86 = v59;
LABEL_44:
          v87 = v96;
          sub_1E4B5E7F4(v86, v96, type metadata accessor for RCSService.Business.SuggestedAction.Action);
          goto LABEL_45;
        }
      }
    }

    (*(v55 + 8))(v58, v41);
    goto LABEL_11;
  }

  if (v44 <= 5u)
  {
    if (v44 != 4)
    {
      LOBYTE(v132) = 5;
      sub_1E4B5E6A4();
      v76 = v37;
      v77 = v139;
      sub_1E4BF07EC();
      v78 = v39;
      v79 = v123;
      if (v77)
      {
        (*(v123 + 8))(v78, v41);
        goto LABEL_11;
      }

      v81 = v78;
      sub_1E4B5E9AC();
      v82 = v110;
      sub_1E4BF087C();
      (*(v109 + 8))(v76, v82);
      (*(v79 + 8))(v81, v41);
      swift_unknownObjectRelease();
      v89 = *(&v132 + 1);
      v90 = v133;
      v85 = v97;
      *v97 = v132;
      v85[1] = v89;
      *(v85 + 16) = v90;
LABEL_43:
      swift_storeEnumTagMultiPayload();
      v86 = v85;
      goto LABEL_44;
    }

    LOBYTE(v132) = 4;
    sub_1E4B5E74C();
    v63 = v118;
    v64 = v139;
    sub_1E4BF07EC();
    v55 = v123;
    if (!v64)
    {
      type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
      sub_1E4B5B390(&qword_1ECF94F88, type metadata accessor for RCSService.Business.CreateCalendarEventAction, &protocol conformance descriptor for RCSService.Business.CreateCalendarEventAction);
      v65 = v95;
      v66 = v108;
      sub_1E4BF087C();
      (*(v107 + 8))(v63, v66);
      (*(v55 + 8))(v39, v41);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v87 = v96;
      sub_1E4B5E7F4(v65, v96, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      v88 = v131;
      v40 = v129;
      goto LABEL_46;
    }

LABEL_31:
    (*(v55 + 8))(v39, v41);
    goto LABEL_11;
  }

  if (v44 == 6)
  {
    LOBYTE(v132) = 6;
    sub_1E4B5E5FC();
    v67 = v119;
    v68 = v139;
    sub_1E4BF07EC();
    if (v68)
    {
      (*(v123 + 8))(v39, v41);
      goto LABEL_11;
    }

    sub_1E4B5E958();
    v69 = v113;
    sub_1E4BF087C();
    (*(v112 + 8))(v67, v69);
    (*(v123 + 8))(v39, v41);
    swift_unknownObjectRelease();
    v83 = v133;
    v84 = v134;
    v85 = v98;
    *v98 = v132;
    v85[2] = v83;
    v85[3] = v84;
    goto LABEL_43;
  }

  if (v44 != 7)
  {
    LOBYTE(v132) = 8;
    sub_1E4B5E554();
    v72 = v121;
    v73 = v39;
    v74 = v139;
    sub_1E4BF07EC();
    v75 = v123;
    if (v74)
    {
      (*(v123 + 8))(v73, v41);
      swift_unknownObjectRelease();
      v53 = v131;
      return __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v38 + 8))(v72, v115);
    (*(v75 + 8))(v73, v41);
    swift_unknownObjectRelease();
    v87 = v96;
    swift_storeEnumTagMultiPayload();
    v88 = v131;
LABEL_46:
    sub_1E4B5E7F4(v87, v40, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    v53 = v88;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  LOBYTE(v132) = 7;
  sub_1E4B5E5A8();
  v45 = v120;
  v46 = v39;
  v47 = v139;
  sub_1E4BF07EC();
  v48 = v123;
  if (!v47)
  {
    (*(v111 + 8))(v45, v114);
    (*(v48 + 8))(v46, v41);
    swift_unknownObjectRelease();
    v87 = v96;
    goto LABEL_39;
  }

  (*(v123 + 8))(v46, v41);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v53 = v131;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t RCSService.Business.SuggestedAction.displayText.getter()
{
  v1 = *v0;

  return v1;
}

double RCSService.Business.SuggestedAction.postbackData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t RCSService.Business.SuggestedAction.init(displayText:postbackData:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  v7 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  return sub_1E4B5E7F4(a4, a5 + *(v7 + 24), type metadata accessor for RCSService.Business.SuggestedAction.Action);
}

uint64_t sub_1E4B52B20()
{
  v1 = 0x6B63616274736F70;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_1E4B52B88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B647C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B52BB0(uint64_t a1)
{
  v2 = sub_1E4B5EB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B52BEC(uint64_t a1)
{
  v2 = sub_1E4B5EB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.SuggestedAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94FA8, &qword_1E4C07980);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5EB14();
  sub_1E4BF0ACC();
  LOBYTE(v12) = 0;
  sub_1E4BF08FC();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v12 = *(v3 + 16);
    v13 = v9;
    v11[15] = 1;
    sub_1E4B5AF2C();

    sub_1E4BF08EC();

    type metadata accessor for RCSService.Business.SuggestedAction(0);
    LOBYTE(v12) = 2;
    type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
    sub_1E4B5B390(&qword_1ECF94FB8, type metadata accessor for RCSService.Business.SuggestedAction.Action, &protocol conformance descriptor for RCSService.Business.SuggestedAction.Action);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.Business.SuggestedAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94FC0, &qword_1E4C07988);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5EB14();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  LOBYTE(v20) = 0;
  *v10 = sub_1E4BF083C();
  *(v10 + 1) = v12;
  v14 = v12;
  v21 = 1;
  sub_1E4B5AF80();
  sub_1E4BF082C();
  *(v10 + 1) = v20;
  LOBYTE(v20) = 2;
  sub_1E4B5B390(&qword_1ECF94FC8, type metadata accessor for RCSService.Business.SuggestedAction.Action, &protocol conformance descriptor for RCSService.Business.SuggestedAction.Action);
  sub_1E4BF087C();
  (*(v11 + 8))(v7, v19);
  sub_1E4B5E7F4(v5, &v10[*(v15 + 24)], type metadata accessor for RCSService.Business.SuggestedAction.Action);
  sub_1E4B5D6D4(v10, v16, type metadata accessor for RCSService.Business.SuggestedAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v10, type metadata accessor for RCSService.Business.SuggestedAction);
}

uint64_t RCSService.Business.Card.imageAlignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.Card(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RCSService.Business.Card.init(orientation:titleFontStyle:descriptionFontStyle:styleSheetURL:imageAlignment:content:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a5;
  *a7 = *a1;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;
  v13 = type metadata accessor for RCSService.Business.Card(0);
  sub_1E4AFD6D0(a4, a7 + v13[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  *(a7 + v13[8]) = v12;
  return sub_1E4B5E7F4(a6, a7 + v13[9], type metadata accessor for RCSService.Business.Card.Content);
}

uint64_t sub_1E4B5334C()
{
  v1 = *v0;
  v2 = 0x7461746E6569726FLL;
  v3 = 0x656853656C797473;
  v4 = 0x696C416567616D69;
  if (v1 != 4)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F46656C746974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4B53438@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B648E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B53460(uint64_t a1)
{
  v2 = sub_1E4B5EF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5349C(uint64_t a1)
{
  v2 = sub_1E4B5EF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94FD0, &qword_1E4C07990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5EF68();
  sub_1E4BF0ACC();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_1E4B5EFBC();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = 1;
    sub_1E4B5F010();
    sub_1E4BF093C();
    v11 = *(v3 + 16);
    v12 = 2;
    sub_1E4BF093C();
    v9 = type metadata accessor for RCSService.Business.Card(0);
    LOBYTE(v11) = 3;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E4BF08EC();
    LOBYTE(v11) = *(v3 + *(v9 + 32));
    v12 = 4;
    sub_1E4B5F064();
    sub_1E4BF08EC();
    LOBYTE(v11) = 5;
    type metadata accessor for RCSService.Business.Card.Content(0);
    sub_1E4B5B390(&qword_1ECF94FF8, type metadata accessor for RCSService.Business.Card.Content, &protocol conformance descriptor for RCSService.Business.Card.Content);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.Business.Card.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for RCSService.Business.Card.Content(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95000, &qword_1E4C07998);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for RCSService.Business.Card(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E4B5EF68();
  v24 = v11;
  v16 = v25;
  sub_1E4BF0ABC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v25 = v3;
  v17 = v22;
  v20 = v5;
  v28 = 0;
  sub_1E4B5F0B8();
  sub_1E4BF087C();
  *v14 = v27;
  v28 = 1;
  sub_1E4B5F10C();
  sub_1E4BF087C();
  *(v14 + 1) = v27;
  v28 = 2;
  sub_1E4BF087C();
  *(v14 + 2) = v27;
  sub_1E4BEFA6C();
  LOBYTE(v27) = 3;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E4BF082C();
  sub_1E4AFD6D0(v8, &v14[v12[7]], &qword_1ECF92F88, &qword_1E4BFDD20);
  v28 = 4;
  sub_1E4B5F160();
  sub_1E4BF082C();
  v14[v12[8]] = v27;
  LOBYTE(v27) = 5;
  sub_1E4B5B390(&qword_1ECF95020, type metadata accessor for RCSService.Business.Card.Content, &protocol conformance descriptor for RCSService.Business.Card.Content);
  v18 = v20;
  sub_1E4BF087C();
  (*(v17 + 8))(v24, v23);
  sub_1E4B5E7F4(v18, &v14[v12[9]], type metadata accessor for RCSService.Business.Card.Content);
  sub_1E4B5D6D4(v14, v21, type metadata accessor for RCSService.Business.Card);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1E4B5D73C(v14, type metadata accessor for RCSService.Business.Card);
}

double RCSService.Business.CardCarousel.contents.getter()
{
  type metadata accessor for RCSService.Business.CardCarousel(0);

  return result;
}

uint64_t RCSService.Business.CardCarousel.init(width:titleFontStyle:descriptionFontStyle:styleSheetURL:contents:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  *a6 = *a1;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10;
  v11 = type metadata accessor for RCSService.Business.CardCarousel(0);
  result = sub_1E4AFD6D0(a4, a6 + *(v11 + 28), &qword_1ECF92F88, &qword_1E4BFDD20);
  *(a6 + *(v11 + 32)) = a5;
  return result;
}

unint64_t sub_1E4B53E80()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0xD000000000000014;
  v4 = 0x656853656C797473;
  if (v1 != 3)
  {
    v4 = 0x73746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F46656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4B53F34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B64B04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B53F5C(uint64_t a1)
{
  v2 = sub_1E4B5F1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B53F98(uint64_t a1)
{
  v2 = sub_1E4B5F1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.CardCarousel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95028, &qword_1E4C079A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F1D4();
  sub_1E4BF0ACC();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_1E4B5F228();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = 1;
    sub_1E4B5F010();
    sub_1E4BF093C();
    v11 = *(v3 + 16);
    v12 = 2;
    sub_1E4BF093C();
    v9 = type metadata accessor for RCSService.Business.CardCarousel(0);
    LOBYTE(v11) = 3;
    sub_1E4BEFA6C();
    sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E4BF08EC();
    v11 = *(v3 + *(v9 + 32));
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95040, &qword_1E4C079A8);
    sub_1E4B5F2D0(&qword_1ECF95048, &qword_1ECF94FF8, &protocol conformance descriptor for RCSService.Business.Card.Content, MEMORY[0x1E69E6300]);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.Business.CardCarousel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95050, &qword_1E4C079B0);
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for RCSService.Business.CardCarousel(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E4B5F1D4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v21 = v10;
  v22 = v6;
  v14 = v12;
  v27 = 0;
  sub_1E4B5F27C();
  v15 = v24;
  sub_1E4BF087C();
  *v14 = v26;
  v27 = 1;
  sub_1E4B5F10C();
  sub_1E4BF087C();
  v16 = v7;
  *(v14 + 1) = v26;
  v27 = 2;
  sub_1E4BF087C();
  v17 = v14;
  *(v14 + 2) = v26;
  sub_1E4BEFA6C();
  LOBYTE(v26) = 3;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v18 = v22;
  sub_1E4BF082C();
  v19 = v21;
  sub_1E4AFD6D0(v18, v17 + *(v21 + 28), &qword_1ECF92F88, &qword_1E4BFDD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95040, &qword_1E4C079A8);
  v27 = 4;
  sub_1E4B5F2D0(&qword_1ECF95060, &qword_1ECF95020, &protocol conformance descriptor for RCSService.Business.Card.Content, MEMORY[0x1E69E6330]);
  sub_1E4BF087C();
  (*(v16 + 8))(v9, v15);
  *(v17 + *(v19 + 32)) = v26;
  sub_1E4B5D6D4(v17, v23, type metadata accessor for RCSService.Business.CardCarousel);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1E4B5D73C(v17, type metadata accessor for RCSService.Business.CardCarousel);
}

uint64_t sub_1E4B54770(uint64_t a1)
{
  v2 = sub_1E4B5F3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B547AC(uint64_t a1)
{
  v2 = sub_1E4B5F3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B547E8()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x796C706572;
  }
}

uint64_t sub_1E4B5481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796C706572 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B548F0(uint64_t a1)
{
  v2 = sub_1E4B5F38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5492C(uint64_t a1)
{
  v2 = sub_1E4B5F38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B54968(uint64_t a1)
{
  v2 = sub_1E4B5F434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B549A4(uint64_t a1)
{
  v2 = sub_1E4B5F434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Suggestion.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95068, &qword_1E4C079B8);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v25 - v3;
  v27 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95070, &qword_1E4C079C0);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for RCSService.Business.Suggestion(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95078, &qword_1E4C079C8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F38C();
  sub_1E4BF0ACC();
  sub_1E4B5D6D4(v32, v10, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v10;
    v16 = v28;
    sub_1E4B5E7F4(v15, v28, type metadata accessor for RCSService.Business.SuggestedAction);
    LOBYTE(v33) = 1;
    sub_1E4B5F3E0();
    v17 = v29;
    sub_1E4BF08BC();
    sub_1E4B5B390(&qword_1ECF95090, type metadata accessor for RCSService.Business.SuggestedAction, &protocol conformance descriptor for RCSService.Business.SuggestedAction);
    v18 = v31;
    sub_1E4BF093C();
    (*(v30 + 8))(v17, v18);
    sub_1E4B5D73C(v16, type metadata accessor for RCSService.Business.SuggestedAction);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v21 = *v10;
    v20 = v10[1];
    v22 = v10[2];
    v23 = v10[3];
    LOBYTE(v33) = 0;
    sub_1E4B5F434();
    sub_1E4BF08BC();
    v33 = v21;
    v34 = v20;
    v35 = v22;
    v36 = v23;
    sub_1E4B5F488();
    v24 = v26;
    sub_1E4BF093C();
    (*(v25 + 8))(v7, v24);
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t RCSService.Business.Suggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950A8, &qword_1E4C079D0);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950B0, &qword_1E4C079D8);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950B8, &qword_1E4C079E0);
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for RCSService.Business.Suggestion(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E4B5F38C();
  v21 = v52;
  sub_1E4BF0ABC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v42 = v17;
  v43 = v19;
  v52 = v14;
  v23 = v50;
  v22 = v51;
  v24 = v49;
  v25 = sub_1E4BF088C();
  v26 = (2 * *(v25 + 16)) | 1;
  v56 = v25;
  v57 = v25 + 32;
  v58 = 0;
  v59 = v26;
  v27 = sub_1E4AE0F10();
  v28 = v10;
  if (v27 == 2 || v58 != v59 >> 1)
  {
    v30 = sub_1E4BF06EC();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v32 = v11;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  if (v27)
  {
    LOBYTE(v53) = 1;
    sub_1E4B5F3E0();
    v29 = v22;
    sub_1E4BF07EC();
    type metadata accessor for RCSService.Business.SuggestedAction(0);
    sub_1E4B5B390(&qword_1ECF950C0, type metadata accessor for RCSService.Business.SuggestedAction, &protocol conformance descriptor for RCSService.Business.SuggestedAction);
    v35 = v52;
    v36 = v47;
    sub_1E4BF087C();
    (*(v48 + 8))(v29, v36);
    (*(v24 + 8))(v28, v8);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v39 = v35;
  }

  else
  {
    LOBYTE(v53) = 0;
    sub_1E4B5F434();
    sub_1E4BF07EC();
    sub_1E4B5F4DC();
    v34 = v46;
    sub_1E4BF087C();
    (*(v45 + 8))(v23, v34);
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    v37 = v54;
    v38 = v42;
    *v42 = v53;
    v38[1] = v37;
    *(v38 + 1) = v55;
    swift_storeEnumTagMultiPayload();
    v39 = v38;
  }

  v40 = v43;
  sub_1E4B5E7F4(v39, v43, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4B5E7F4(v40, v44, type metadata accessor for RCSService.Business.Suggestion);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_1E4B55520()
{
  if (*v0)
  {
    return 0x746E6F7A69726F68;
  }

  else
  {
    return 0x6C61636974726576;
  }
}

uint64_t sub_1E4B55560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636974726576 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B55644(uint64_t a1)
{
  v2 = sub_1E4B5F530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B55680(uint64_t a1)
{
  v2 = sub_1E4B5F530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B556BC(uint64_t a1)
{
  v2 = sub_1E4B5F584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B556F8(uint64_t a1)
{
  v2 = sub_1E4B5F584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B55734(uint64_t a1)
{
  v2 = sub_1E4B5F5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B55770(uint64_t a1)
{
  v2 = sub_1E4B5F5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Orientation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950D0, &qword_1E4C079E8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950D8, &qword_1E4C079F0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF950E0, &qword_1E4C079F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F530();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4B5F584();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4B5F5D8();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t RCSService.Business.Card.Orientation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95100, &qword_1E4C07A00);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95108, &qword_1E4C07A08);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95110, &qword_1E4C07A10);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F530();
  v12 = v31;
  sub_1E4BF0ABC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E4BF088C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E4AE0F10();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E4BF06EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v22 = &type metadata for RCSService.Business.Card.Orientation;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E4B5F584();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E4B5F5D8();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1E4B56044()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 1819042164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F6873;
  }
}

uint64_t sub_1E4B56090@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B64CC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B560B8(uint64_t a1)
{
  v2 = sub_1E4B5F62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B560F4(uint64_t a1)
{
  v2 = sub_1E4B5F62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B56130(uint64_t a1)
{
  v2 = sub_1E4B5F6D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5616C(uint64_t a1)
{
  v2 = sub_1E4B5F6D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B561A8(uint64_t a1)
{
  v2 = sub_1E4B5F728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B561E4(uint64_t a1)
{
  v2 = sub_1E4B5F728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B56220(uint64_t a1)
{
  v2 = sub_1E4B5F680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5625C(uint64_t a1)
{
  v2 = sub_1E4B5F680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Media.Height.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95118, &qword_1E4C07A18);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95120, &qword_1E4C07A20);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95128, &qword_1E4C07A28);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95130, &qword_1E4C07A30);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F62C();
  sub_1E4BF0ACC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E4B5F6D4();
      v9 = v21;
      sub_1E4BF08BC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E4B5F680();
      v9 = v24;
      sub_1E4BF08BC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E4B5F728();
    sub_1E4BF08BC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t RCSService.Business.Card.Media.Height.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95158, &qword_1E4C07A38);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95160, &qword_1E4C07A40);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95168, &qword_1E4C07A48);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95170, &unk_1E4C07A50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4B5F62C();
  v15 = v36;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E4BF088C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E4AE0F1C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E4BF06EC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v24 = &type metadata for RCSService.Business.Card.Media.Height;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E4B5F6D4();
          sub_1E4BF07EC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E4B5F680();
          v26 = v17;
          sub_1E4BF07EC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E4B5F728();
        sub_1E4BF07EC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1E4B56BA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t RCSService.Business.Card.Media.fileSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.Business.Card.Media(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.Business.Card.Media.displayHeight.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.Card.Media(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RCSService.Business.Card.Media.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business.Card.Media(0) + 44));

  return v1;
}

uint64_t RCSService.Business.Card.Media.init(url:contentType:fileSize:thumbnailURL:thumbnailContentType:thumbnailFileSize:displayHeight:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a7;
  v18 = sub_1E4BEFA6C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for RCSService.Business.Card.Media(0);
  sub_1E4AFD6D0(a2, a9 + v19[5], &qword_1ECF92700, &qword_1E4BFB090);
  v20 = v19[6];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  (*(*(v21 - 8) + 32))(a9 + v20, a3, v21);
  sub_1E4AFD6D0(a4, a9 + v19[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AFD6D0(a5, a9 + v19[8], &qword_1ECF92700, &qword_1E4BFB090);
  result = sub_1E4AFD6D0(a6, a9 + v19[9], &qword_1ECF92D68, &unk_1E4BFCDA0);
  *(a9 + v19[10]) = v17;
  v23 = (a9 + v19[11]);
  *v23 = a8;
  v23[1] = a10;
  return result;
}

uint64_t sub_1E4B57010()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x4879616C70736964;
  if (v1 != 6)
  {
    v3 = 0x7470697263736564;
  }

  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657A6953656C6966;
  if (v1 != 2)
  {
    v5 = 0x69616E626D756874;
  }

  if (*v0)
  {
    v2 = 0x54746E65746E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4B57134@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B64DD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B5715C(uint64_t a1)
{
  v2 = sub_1E4B5F79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B57198(uint64_t a1)
{
  v2 = sub_1E4B5F79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Media.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95178, &qword_1E4C07A70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F79C();
  sub_1E4BF0ACC();
  v28 = 0;
  sub_1E4BEFA6C();
  sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1E4BF093C();
  if (!v2)
  {
    v19 = type metadata accessor for RCSService.Business.Card.Media(0);
    v27 = 1;
    v9 = sub_1E4BEFB4C();
    v10 = sub_1E4AF109C(&qword_1ECF92C08, MEMORY[0x1EEE9A718]);
    v11 = v3;
    v12 = v10;
    v18 = v11;
    sub_1E4BF08EC();
    v17[3] = v12;
    v17[4] = v9;
    v26 = 2;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
    v14 = sub_1E4AF19DC(&qword_1ECF92D88, MEMORY[0x1E6968078]);
    sub_1E4BF093C();
    v17[1] = v13;
    v17[2] = v14;
    v15 = v18;
    v25 = 3;
    sub_1E4BF08EC();
    v24 = 4;
    sub_1E4BF08EC();
    v23 = 5;
    sub_1E4BF08EC();
    v22 = *(v15 + *(v19 + 40));
    v21 = 6;
    sub_1E4B5F7F0();
    sub_1E4BF093C();
    v20 = 7;
    sub_1E4BF08CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.Business.Card.Media.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - v9;
  v11 = sub_1E4BEFA6C();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95190, &qword_1E4C07A78);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - v14;
  v16 = type metadata accessor for RCSService.Business.Card.Media(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F79C();
  v58 = v15;
  v19 = v59;
  sub_1E4BF0ABC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48 = v10;
  v59 = v16;
  v68 = 0;
  v20 = sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v21 = v55;
  sub_1E4BF087C();
  v22 = v11;
  v46[4] = v20;
  v23 = *(v54 + 32);
  v47 = v18;
  v23(v18, v21, v11);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v55 = v46;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v46 - v26;
  v28 = sub_1E4BEFB4C();
  v67 = 1;
  v29 = sub_1E4AF109C(&qword_1ECF92C38, MEMORY[0x1EEE9A728]);
  sub_1E4BF082C();
  v46[5] = v22;
  v46[1] = v29;
  v46[2] = v28;
  v46[3] = v25;
  v30 = v59;
  v31 = v47;
  sub_1E4AFD6D0(v27, &v47[v59[5]], &qword_1ECF92700, &qword_1E4BFB090);
  v66 = 2;
  sub_1E4AF19DC(&qword_1ECF92D98, MEMORY[0x1E6968098]);
  v32 = v48;
  v33 = v52;
  v55 = 0;
  sub_1E4BF087C();
  (*(v53 + 32))(v31 + v30[6], v32, v33);
  v65 = 3;
  v34 = v51;
  sub_1E4BF082C();
  v35 = sub_1E4AFD6D0(v34, v31 + v30[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 4;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v37, v31 + v30[8], &qword_1ECF92700, &qword_1E4BFB090);
  v63 = 5;
  v38 = v50;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v38, v31 + v30[9], &qword_1ECF92D68, &unk_1E4BFCDA0);
  v61 = 6;
  sub_1E4B5F844();
  sub_1E4BF087C();
  v39 = v56;
  *(v31 + v30[10]) = v62;
  v60 = 7;
  v40 = v57;
  v41 = sub_1E4BF080C();
  v43 = v42;
  (*(v39 + 8))(v58, v40);
  v44 = (v31 + v59[11]);
  *v44 = v41;
  v44[1] = v43;
  sub_1E4B5D6D4(v31, v49, type metadata accessor for RCSService.Business.Card.Media);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v31, type metadata accessor for RCSService.Business.Card.Media);
}

uint64_t sub_1E4B57F24()
{
  if (*v0)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_1E4B57F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B5802C(uint64_t a1)
{
  v2 = sub_1E4B5F898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B58068(uint64_t a1)
{
  v2 = sub_1E4B5F898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B580A4(uint64_t a1)
{
  v2 = sub_1E4B5F940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B580E0(uint64_t a1)
{
  v2 = sub_1E4B5F940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B5811C(uint64_t a1)
{
  v2 = sub_1E4B5F8EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B58158(uint64_t a1)
{
  v2 = sub_1E4B5F8EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.ImageAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951A0, &qword_1E4C07A80);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951A8, &qword_1E4C07A88);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951B0, &qword_1E4C07A90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F898();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4B5F8EC();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4B5F940();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t RCSService.Business.Card.ImageAlignment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951D0, &qword_1E4C07A98);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951D8, &qword_1E4C07AA0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E0, &qword_1E4C07AA8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F898();
  v12 = v31;
  sub_1E4BF0ABC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E4BF088C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E4AE0F10();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E4BF06EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v22 = &type metadata for RCSService.Business.Card.ImageAlignment;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E4B5F8EC();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E4B5F940();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t RCSService.Business.Card.Content.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business.Card.Content(0) + 20));

  return v1;
}

uint64_t RCSService.Business.Card.Content.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business.Card.Content(0) + 24));

  return v1;
}

double RCSService.Business.Card.Content.suggestions.getter()
{
  type metadata accessor for RCSService.Business.Card.Content(0);

  return result;
}

int *RCSService.Business.Card.Content.init(media:title:description:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E4AFD6D0(a1, a7, &qword_1ECF951E8, &qword_1E4C07AB0);
  result = type metadata accessor for RCSService.Business.Card.Content(0);
  v14 = (a7 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a7 + result[6]);
  *v15 = a4;
  v15[1] = a5;
  *(a7 + result[7]) = a6;
  return result;
}

uint64_t sub_1E4B58A9C()
{
  v1 = 0x616964656DLL;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x6974736567677573;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E4B58B20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B6508C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B58B48(uint64_t a1)
{
  v2 = sub_1E4B5F994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B58B84(uint64_t a1)
{
  v2 = sub_1E4B5F994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Content.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951F0, &qword_1E4C07AB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F994();
  sub_1E4BF0ACC();
  v15 = 0;
  type metadata accessor for RCSService.Business.Card.Media(0);
  sub_1E4B5B390(&qword_1ECF95200, type metadata accessor for RCSService.Business.Card.Media, &protocol conformance descriptor for RCSService.Business.Card.Media);
  sub_1E4BF08EC();
  if (!v2)
  {
    v9 = type metadata accessor for RCSService.Business.Card.Content(0);
    v14 = 1;
    sub_1E4BF08CC();
    v13 = 2;
    sub_1E4BF08CC();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95208, &qword_1E4C07AC0);
    sub_1E4B5F9E8(&qword_1ECF95210, &qword_1ECF92AF0, &protocol conformance descriptor for RCSService.Business.Suggestion, MEMORY[0x1E69E6300]);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.Business.Card.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95218, &qword_1E4C07AC8);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for RCSService.Business.Card.Content(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5F994();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v14 = v12;
  type metadata accessor for RCSService.Business.Card.Media(0);
  v30 = 0;
  sub_1E4B5B390(&qword_1ECF95220, type metadata accessor for RCSService.Business.Card.Media, &protocol conformance descriptor for RCSService.Business.Card.Media);
  v15 = v25;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v6, v14, &qword_1ECF951E8, &qword_1E4C07AB0);
  v29 = 1;
  v16 = sub_1E4BF080C();
  v17 = (v14 + v10[5]);
  *v17 = v16;
  v17[1] = v18;
  v28 = 2;
  v19 = sub_1E4BF080C();
  v20 = (v14 + v10[6]);
  *v20 = v19;
  v20[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95208, &qword_1E4C07AC0);
  v27 = 3;
  sub_1E4B5F9E8(&qword_1ECF95228, &qword_1ECF92B18, &protocol conformance descriptor for RCSService.Business.Suggestion, MEMORY[0x1E69E6330]);
  sub_1E4BF087C();
  (*(v13 + 8))(v9, v15);
  *(v14 + v10[7]) = v26;
  sub_1E4B5D6D4(v14, v23, type metadata accessor for RCSService.Business.Card.Content);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v14, type metadata accessor for RCSService.Business.Card.Content);
}

uint64_t sub_1E4B592D8()
{
  if (*v0)
  {
    return 0x6D756964656DLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1E4B5930C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C616D73 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B593E0(uint64_t a1)
{
  v2 = sub_1E4B5FA84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5941C(uint64_t a1)
{
  v2 = sub_1E4B5FA84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B59458(uint64_t a1)
{
  v2 = sub_1E4B5FAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B59494(uint64_t a1)
{
  v2 = sub_1E4B5FAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B594D0(uint64_t a1)
{
  v2 = sub_1E4B5FB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5950C(uint64_t a1)
{
  v2 = sub_1E4B5FB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Card.Width.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95230, &qword_1E4C07AD0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95238, &qword_1E4C07AD8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95240, &qword_1E4C07AE0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5FA84();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4B5FAD8();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4B5FB2C();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t RCSService.Business.Card.Width.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95260, &qword_1E4C07AE8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95268, &qword_1E4C07AF0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95270, &qword_1E4C07AF8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5FA84();
  v12 = v31;
  sub_1E4BF0ABC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E4BF088C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E4AE0F10();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E4BF06EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v22 = &type metadata for RCSService.Business.Card.Width;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E4B5FAD8();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E4B5FB2C();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1E4B59CE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7972657571;
  }

  else
  {
    v3 = 0x616E6964726F6F63;
  }

  if (v2)
  {
    v4 = 0xEB00000000736574;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7972657571;
  }

  else
  {
    v5 = 0x616E6964726F6F63;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB00000000736574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E4BF099C();
  }

  return v8 & 1;
}

uint64_t sub_1E4B59D90()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B59E18(uint64_t a1)
{
  sub_1E4BEFF4C();
}

uint64_t sub_1E4B59E8C(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B59F10@<X0>(char *a2@<X8>)
{
  v3 = sub_1E4BF07DC();

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

  *a2 = v5;
  return result;
}

void sub_1E4B59F70(uint64_t *a1@<X8>)
{
  v2 = 0x616E6964726F6F63;
  if (*v1)
  {
    v2 = 0x7972657571;
  }

  v3 = 0xEB00000000736574;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E4B59FB4()
{
  if (*v0)
  {
    return 0x7972657571;
  }

  else
  {
    return 0x616E6964726F6F63;
  }
}

uint64_t sub_1E4B59FF4@<X0>(char *a3@<X8>)
{
  v4 = sub_1E4BF07DC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1E4B5A058(uint64_t a1)
{
  v2 = sub_1E4B5FB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5A094(uint64_t a1)
{
  v2 = sub_1E4B5FB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B5A0D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64757469676E6F6CLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x7274537972657571;
    v4 = 0xEB00000000676E69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x64757469676E6F6CLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x7274537972657571;
    v8 = 0xEB00000000676E69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656475746974616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E4BF099C();
  }

  return v11 & 1;
}

uint64_t sub_1E4B5A1EC()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B5A29C(uint64_t a1)
{
  sub_1E4BEFF4C();
}

uint64_t sub_1E4B5A338(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

unint64_t sub_1E4B5A3E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E4B651F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E4B5A414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x7274537972657571;
    v4 = 0xEB00000000676E69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656475746974616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E4B5A480()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x7274537972657571;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

unint64_t sub_1E4B5A4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B651F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B5A510(uint64_t a1)
{
  v2 = sub_1E4B5FBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B5A54C(uint64_t a1)
{
  v2 = sub_1E4B5FBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.ShowLocationAction.Method.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95278, &qword_1E4C07B00);
  v38 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95280, &qword_1E4C07B08);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E4B5FB80();
  v14 = v39;
  sub_1E4BF0ABC();
  if (!v14)
  {
    v39 = v10;
    v47 = 0;
    v16 = v12;
    v17 = sub_1E4BF089C();
    if (v17)
    {
      v43 = 0;
      sub_1E4B5FBD4();
      v18 = v8;
      sub_1E4BF07EC();
      v19 = v39;
      v15 = v40;
      v42 = 0;
      sub_1E4BF085C();
      v30 = v29;
      v41 = 1;
      sub_1E4BF085C();
      v32 = v31;
      (*(v38 + 8))(v18, v3);
      (*(v19 + 8))(v16, v9);
      v33 = v30;
      v34 = v32;
    }

    else
    {
      v46 = 1;
      v20 = sub_1E4BF089C();
      v15 = v40;
      if ((v20 & 1) == 0)
      {
        v23 = sub_1E4BF06EC();
        swift_allocError();
        v25 = v24;
        __swift_project_boxed_opaque_existential_1(v15, v15[3]);
        sub_1E4BF0AAC();
        sub_1E4BF06DC();
        (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
        swift_willThrow();
        (*(v39 + 8))(v16, v9);
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      v45 = 1;
      sub_1E4B5FBD4();
      v21 = v6;
      sub_1E4BF07EC();
      v22 = v39;
      v26 = v16;
      v44 = 2;
      v33 = sub_1E4BF083C();
      v27 = v21;
      v34 = v35;
      (*(v38 + 8))(v27, v3);
      (*(v22 + 8))(v26, v9);
    }

    v36 = v37;
    *v37 = v33;
    v36[1] = v34;
    *(v36 + 16) = (v17 & 1) == 0;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v15 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t RCSService.Business.ShowLocationAction.Method.encode(to:)(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95298, &qword_1E4C07B10);
  v22 = *(v25 - 8);
  v3 = MEMORY[0x1EEE9AC00](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF952A0, &qword_1E4C07B18);
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = v21 - v9;
  v11 = *v1;
  v21[1] = v1[1];
  v21[2] = v11;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5FB80();
  sub_1E4BF0ACC();
  if (v12)
  {
    v30 = 1;
    sub_1E4B5FBD4();
    v13 = v24;
    sub_1E4BF08BC();
    v29 = 2;
    v14 = v25;
    sub_1E4BF08FC();
    (*(v22 + 8))(v5, v14);
    return (*(v8 + 8))(v10, v13);
  }

  else
  {
    v16 = v8;
    v17 = v22;
    v28 = 0;
    sub_1E4B5FBD4();
    v18 = v24;
    sub_1E4BF08BC();
    v27 = 0;
    v19 = v25;
    v20 = v23;
    sub_1E4BF091C();
    if (!v20)
    {
      v26 = 1;
      sub_1E4BF091C();
    }

    (*(v17 + 8))(v7, v19);
    return (*(v16 + 8))(v10, v18);
  }
}

uint64_t sub_1E4B5AD64(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((v8 & 1) == 0 && v4 == v6)
    {
      return v5 == v7;
    }

    return 0;
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (*&v4 == *&v6 && *&v5 == *&v7)
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        return v9 || (sub_1E4BF099C() & 1) != 0;
      }
    }

    else if (!v4)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1E4B5AED8()
{
  result = qword_1ECF94C78;
  if (!qword_1ECF94C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C78);
  }

  return result;
}

unint64_t sub_1E4B5AF2C()
{
  result = qword_1ECF94C80;
  if (!qword_1ECF94C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C80);
  }

  return result;
}

unint64_t sub_1E4B5AF80()
{
  result = qword_1ECF94C90;
  if (!qword_1ECF94C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C90);
  }

  return result;
}

unint64_t sub_1E4B5AFD4()
{
  result = qword_1ECF94CB8;
  if (!qword_1ECF94CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CB8);
  }

  return result;
}

unint64_t sub_1E4B5B028()
{
  result = qword_1ECF94CC0;
  if (!qword_1ECF94CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CC0);
  }

  return result;
}

unint64_t sub_1E4B5B07C()
{
  result = qword_1ECF94CC8;
  if (!qword_1ECF94CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CC8);
  }

  return result;
}

unint64_t sub_1E4B5B0D0()
{
  result = qword_1ECF94CD0;
  if (!qword_1ECF94CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94CD0);
  }

  return result;
}

unint64_t sub_1E4B5B124()
{
  result = qword_1ECF94D10;
  if (!qword_1ECF94D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D10);
  }

  return result;
}

unint64_t sub_1E4B5B178()
{
  result = qword_1ECF94D18;
  if (!qword_1ECF94D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D18);
  }

  return result;
}

unint64_t sub_1E4B5B1CC()
{
  result = qword_1ECF94D20;
  if (!qword_1ECF94D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D20);
  }

  return result;
}

unint64_t sub_1E4B5B220()
{
  result = qword_1ECF94D28;
  if (!qword_1ECF94D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D28);
  }

  return result;
}

unint64_t sub_1E4B5B274()
{
  result = qword_1ECF94D48;
  if (!qword_1ECF94D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D48);
  }

  return result;
}

unint64_t sub_1E4B5B2E8()
{
  result = qword_1ECF94D58;
  if (!qword_1ECF94D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D58);
  }

  return result;
}

unint64_t sub_1E4B5B33C()
{
  result = qword_1ECF94D60;
  if (!qword_1ECF94D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D60);
  }

  return result;
}

uint64_t sub_1E4B5B390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4B5B3D8()
{
  result = qword_1ECF94D70;
  if (!qword_1ECF94D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D70);
  }

  return result;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV7ContentV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Card.Media(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95730, &qword_1E4C0BDC0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = *(v12 + 56);
  sub_1E4AF1898(a1, &v35 - v13, &qword_1ECF951E8, &qword_1E4C07AB0);
  sub_1E4AF1898(a2, &v14[v15], &qword_1ECF951E8, &qword_1E4C07AB0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1E4AF1898(v14, v10, &qword_1ECF951E8, &qword_1E4C07AB0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1E4B5E7F4(&v14[v15], v7, type metadata accessor for RCSService.Business.Card.Media);
      v19 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV5MediaV2eeoiySbAI_AItFZ_0(v10, v7);
      sub_1E4B5D73C(v7, type metadata accessor for RCSService.Business.Card.Media);
      sub_1E4B5D73C(v10, type metadata accessor for RCSService.Business.Card.Media);
      sub_1E4AE0AE4(v14, &qword_1ECF951E8, &qword_1E4C07AB0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1E4B5D73C(v10, type metadata accessor for RCSService.Business.Card.Media);
LABEL_6:
    sub_1E4AE0AE4(v14, &qword_1ECF95730, &qword_1E4C0BDC0);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1E4AE0AE4(v14, &qword_1ECF951E8, &qword_1E4C07AB0);
LABEL_10:
  v20 = type metadata accessor for RCSService.Business.Card.Content(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v26 = v20;
      v27 = sub_1E4BF099C();
      v20 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_7;
  }

  v28 = v20[6];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (v32)
    {
      if (*v29 == *v31 && v30 == v32)
      {
        goto LABEL_24;
      }

      v33 = v20;
      v34 = sub_1E4BF099C();
      v20 = v33;
      if (v34)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v32)
  {
LABEL_24:
    v17 = sub_1E4BC68F4(*(a1 + v20[7]), *(a2 + v20[7]));
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV5MediaV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v83[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v83[-v9];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95738, &qword_1E4C0BDC8);
  MEMORY[0x1EEE9AC00](v101);
  v12 = &v83[-v11];
  v13 = sub_1E4BEFA6C();
  v104 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v103 = &v83[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v83[-v18];
  if ((sub_1E4BEFA4C() & 1) == 0)
  {
    return 0;
  }

  v90 = v10;
  v91 = v12;
  v89 = v7;
  v92 = v5;
  v96 = v4;
  v98 = type metadata accessor for RCSService.Business.Card.Media(0);
  v20 = v98[5];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939C8, &qword_1E4C01950);
  v100 = v83;
  v93 = *(*(v21 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v83[-v23];
  v94 = v22;
  v25 = *(v22 + 48);
  v97 = a1;
  sub_1E4AF1898(a1 + v20, &v83[-v23], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AF1898(a2 + v20, &v24[v25], &qword_1ECF92700, &qword_1E4BFB090);
  v26 = sub_1E4BEFB4C();
  v99 = *(v26 - 8);
  v27 = *(v99 + 48);
  if (v27(v24, 1, v26) == 1)
  {
    if (v27(&v24[v25], 1, v26) == 1)
    {
      v95 = v27;
      sub_1E4AE0AE4(v24, &qword_1ECF92700, &qword_1E4BFB090);
      goto LABEL_9;
    }

LABEL_7:
    sub_1E4AE0AE4(v24, &qword_1ECF939C8, &qword_1E4C01950);
    return 0;
  }

  v87 = a2;
  v95 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v88 = v83;
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v83[-v29];
  sub_1E4AF1898(v24, &v83[-v29], &qword_1ECF92700, &qword_1E4BFB090);
  v31 = (v95)(&v24[v25], 1, v26);
  if (v31 == 1)
  {
    (*(v99 + 8))(v30, v26);
    goto LABEL_7;
  }

  v85 = v83;
  v86 = v13;
  v32 = v99;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v83[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v32 + 32))(v34, &v24[v25], v26);
  sub_1E4AF109C(&qword_1ECF939D0, MEMORY[0x1EEE9A720]);
  v84 = sub_1E4BEFE6C();
  v35 = v32;
  v13 = v86;
  v36 = *(v35 + 8);
  v36(v34, v26);
  v36(v30, v26);
  sub_1E4AE0AE4(v24, &qword_1ECF92700, &qword_1E4BFB090);
  a2 = v87;
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v37 = v98;
  v38 = sub_1E4AF19DC(&qword_1ECF95748, MEMORY[0x1E6968090]);
  v39 = v97;
  if ((sub_1E4BEFE6C() & 1) == 0)
  {
    return 0;
  }

  v100 = v38;
  v40 = v37[7];
  v41 = *(v17 + 48);
  sub_1E4AF1898(v39 + v40, v19, &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AF1898(a2 + v40, &v19[v41], &qword_1ECF92F88, &qword_1E4BFDD20);
  v42 = v104;
  v43 = *(v104 + 6);
  if (v43(v19, 1, v13) == 1)
  {
    if (v43(&v19[v41], 1, v13) == 1)
    {
      v44 = sub_1E4AE0AE4(v19, &qword_1ECF92F88, &qword_1E4BFDD20);
      goto LABEL_18;
    }

LABEL_15:
    v46 = &qword_1ECF95740;
    v47 = &unk_1E4C0BDD0;
LABEL_16:
    sub_1E4AE0AE4(v19, v46, v47);
    return 0;
  }

  v45 = v103;
  sub_1E4AF1898(v19, v103, &qword_1ECF92F88, &qword_1E4BFDD20);
  if (v43(&v19[v41], 1, v13) == 1)
  {
    (*(v42 + 1))(v45, v13);
    goto LABEL_15;
  }

  v48 = &v19[v41];
  v49 = v102;
  (*(v42 + 4))(v102, v48, v13);
  sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v50 = sub_1E4BEFE6C();
  v51 = *(v42 + 1);
  v51(v49, v13);
  v51(v45, v13);
  v44 = sub_1E4AE0AE4(v19, &qword_1ECF92F88, &qword_1E4BFDD20);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v52 = v98[8];
  MEMORY[0x1EEE9AC00](v44);
  v54 = &v83[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = *(v94 + 48);
  sub_1E4AF1898(v97 + v52, v54, &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AF1898(a2 + v52, &v54[v55], &qword_1ECF92700, &qword_1E4BFB090);
  v56 = v95;
  if (v95(v54, 1, v26) == 1)
  {
    if (v56(&v54[v55], 1, v26) == 1)
    {
      sub_1E4AE0AE4(v54, &qword_1ECF92700, &qword_1E4BFB090);
      goto LABEL_27;
    }

LABEL_23:
    sub_1E4AE0AE4(v54, &qword_1ECF939C8, &qword_1E4C01950);
    return 0;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v104 = v83;
  MEMORY[0x1EEE9AC00](v57 - 8);
  v59 = &v83[-v58];
  sub_1E4AF1898(v54, &v83[-v58], &qword_1ECF92700, &qword_1E4BFB090);
  v60 = (v56)(&v54[v55], 1, v26);
  if (v60 == 1)
  {
    (*(v99 + 8))(v59, v26);
    goto LABEL_23;
  }

  v62 = v99;
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v83[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v62 + 32))(v64, &v54[v55], v26);
  sub_1E4AF109C(&qword_1ECF939D0, MEMORY[0x1EEE9A720]);
  v65 = sub_1E4BEFE6C();
  v66 = *(v62 + 8);
  v66(v64, v26);
  v66(v59, v26);
  sub_1E4AE0AE4(v54, &qword_1ECF92700, &qword_1E4BFB090);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v67 = v97;
  v68 = v98[9];
  v69 = *(v101 + 48);
  v19 = v91;
  sub_1E4AF1898(v97 + v68, v91, &qword_1ECF92D68, &unk_1E4BFCDA0);
  sub_1E4AF1898(a2 + v68, &v19[v69], &qword_1ECF92D68, &unk_1E4BFCDA0);
  v70 = v92;
  v71 = *(v92 + 48);
  v72 = v96;
  if (v71(v19, 1, v96) != 1)
  {
    v73 = v90;
    sub_1E4AF1898(v19, v90, &qword_1ECF92D68, &unk_1E4BFCDA0);
    if (v71(&v19[v69], 1, v72) != 1)
    {
      v74 = &v19[v69];
      v75 = v89;
      (*(v70 + 32))(v89, v74, v72);
      v76 = sub_1E4BEFE6C();
      v77 = *(v70 + 8);
      v77(v75, v72);
      v77(v73, v72);
      sub_1E4AE0AE4(v19, &qword_1ECF92D68, &unk_1E4BFCDA0);
      if ((v76 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_34;
    }

    (*(v70 + 8))(v73, v72);
    goto LABEL_32;
  }

  if (v71(&v19[v69], 1, v72) != 1)
  {
LABEL_32:
    v46 = &qword_1ECF95738;
    v47 = &qword_1E4C0BDC8;
    goto LABEL_16;
  }

  sub_1E4AE0AE4(v19, &qword_1ECF92D68, &unk_1E4BFCDA0);
LABEL_34:
  if (*(v67 + v98[10]) == *(a2 + v98[10]))
  {
    v78 = v98[11];
    v79 = (v67 + v78);
    v80 = *(v67 + v78 + 8);
    v81 = (a2 + v78);
    v82 = v81[1];
    if (v80)
    {
      if (v82 && (*v79 == *v81 && v80 == v82 || (sub_1E4BF099C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v82)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV25CreateCalendarEventActionV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if ((sub_1E4BEFA9C() & 1) == 0)
  {
    return 0;
  }

  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  if ((sub_1E4BEFA9C() & 1) == 0)
  {
    return 0;
  }

  v15 = CalendarEventAction[6];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  v20 = CalendarEventAction[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_1E4BF099C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = CalendarEventAction[8];
  v26 = *(v11 + 48);
  sub_1E4AF1898(a1 + v25, v13, &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AF1898(a2 + v25, &v13[v26], &qword_1ECF92F88, &qword_1E4BFDD20);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v13, &qword_1ECF92F88, &qword_1E4BFDD20);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1E4AF1898(v13, v10, &qword_1ECF92F88, &qword_1E4BFDD20);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_20:
    sub_1E4AE0AE4(v13, &qword_1ECF95740, &unk_1E4C0BDD0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v26], v4);
  sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v29 = sub_1E4BEFE6C();
  v30 = *(v5 + 8);
  v30(v7, v4);
  v30(v10, v4);
  sub_1E4AE0AE4(v13, &qword_1ECF92F88, &qword_1E4BFDD20);
  return (v29 & 1) != 0;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV18ShowLocationActionV2eeoiySbAG_AGtFZ_0(double *a1, uint64_t a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = *a2;
  v18 = *(a2 + 8);
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }

    if (*&v16 != *&v17 || *&v15 != *&v18)
    {
      v19 = v12;
      v20 = sub_1E4BF099C();
      v12 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_10;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v21 = 0;
  if (v16 == v17 && v15 == v18)
  {
LABEL_10:
    v22 = *(a1 + 4);
    v23 = *(a2 + 32);
    if (v22)
    {
      if (!v23)
      {
        return 0;
      }

      v24 = v12;
      if ((*(a1 + 3) != *(a2 + 24) || v22 != v23) && (sub_1E4BF099C() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v24 = v12;
      if (v23)
      {
        return 0;
      }
    }

    v25 = *(type metadata accessor for RCSService.Business.ShowLocationAction(0) + 24);
    v26 = *(v24 + 48);
    sub_1E4AF1898(a1 + v25, v14, &qword_1ECF92F88, &qword_1E4BFDD20);
    sub_1E4AF1898(a2 + v25, &v14[v26], &qword_1ECF92F88, &qword_1E4BFDD20);
    v27 = *(v5 + 48);
    if (v27(v14, 1, v4) == 1)
    {
      if (v27(&v14[v26], 1, v4) == 1)
      {
        sub_1E4AE0AE4(v14, &qword_1ECF92F88, &qword_1E4BFDD20);
        return 1;
      }

      goto LABEL_22;
    }

    sub_1E4AF1898(v14, v10, &qword_1ECF92F88, &qword_1E4BFDD20);
    if (v27(&v14[v26], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_22:
      sub_1E4AE0AE4(v14, &qword_1ECF95740, &unk_1E4C0BDD0);
      return 0;
    }

    (*(v5 + 32))(v7, &v14[v26], v4);
    sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v29 = sub_1E4BEFE6C();
    v30 = *(v5 + 8);
    v30(v7, v4);
    v30(v10, v4);
    sub_1E4AE0AE4(v14, &qword_1ECF92F88, &qword_1E4BFDD20);
    return (v29 & 1) != 0;
  }

  return v21;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV12CardCarouselV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    goto LABEL_10;
  }

  v15 = v12;
  v24 = type metadata accessor for RCSService.Business.CardCarousel(0);
  v16 = *(v24 + 28);
  v17 = *(v15 + 48);
  sub_1E4AF1898(&a1[v16], v14, &qword_1ECF92F88, &qword_1E4BFDD20);
  v25 = v17;
  sub_1E4AF1898(&a2[v16], &v14[v17], &qword_1ECF92F88, &qword_1E4BFDD20);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v25], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v14, &qword_1ECF92F88, &qword_1E4BFDD20);
LABEL_13:
      v20 = sub_1E4BC7008(*&a1[*(v24 + 32)], *&a2[*(v24 + 32)]);
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_1E4AF1898(v14, v10, &qword_1ECF92F88, &qword_1E4BFDD20);
  v19 = v25;
  if (v18(&v14[v25], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_1E4AE0AE4(v14, &qword_1ECF95740, &unk_1E4C0BDD0);
    goto LABEL_10;
  }

  (*(v5 + 32))(v7, &v14[v19], v4);
  sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v22 = sub_1E4BEFE6C();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_1E4AE0AE4(v14, &qword_1ECF92F88, &qword_1E4BFDD20);
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV10SuggestionO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RCSService.Business.Suggestion(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v27 - v15;
  v17 = (v27 + *(v14 + 56) - v15);
  sub_1E4B5D6D4(a1, v27 - v15, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4B5D6D4(a2, v17, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4B5D6D4(v16, v10, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E4B5E7F4(v17, v6, type metadata accessor for RCSService.Business.SuggestedAction);
      v18 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV2eeoiySbAG_AGtFZ_0(v10, v6);
      sub_1E4B5D73C(v6, type metadata accessor for RCSService.Business.SuggestedAction);
      sub_1E4B5D73C(v10, type metadata accessor for RCSService.Business.SuggestedAction);
LABEL_9:
      sub_1E4B5D73C(v16, type metadata accessor for RCSService.Business.Suggestion);
      return v18;
    }

    sub_1E4B5D73C(v10, type metadata accessor for RCSService.Business.SuggestedAction);
  }

  else
  {
    sub_1E4B5D6D4(v16, v12, type metadata accessor for RCSService.Business.Suggestion);
    v19 = v12[1];
    v20 = v12[3];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = v12[2];
      v22 = *v17;
      v23 = v17[1];
      v24 = v17[2];
      v25 = v17[3];
      v28[0] = *v12;
      v28[1] = v19;
      v28[2] = v21;
      v28[3] = v20;
      v27[0] = v22;
      v27[1] = v23;
      v27[2] = v24;
      v27[3] = v25;
      v18 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(v28, v27);

      goto LABEL_9;
    }
  }

  sub_1E4AE0AE4(v16, &qword_1ECF95758, &qword_1E4C0BDE0);
  return 0;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV21DialPhoneNumberActionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 || (v14 = sub_1E4BF099C(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for RCSService.Business.DialPhoneNumberAction(0) + 20);
    v17 = *(v11 + 48);
    sub_1E4AF1898(a1 + v16, v13, &qword_1ECF92F88, &qword_1E4BFDD20);
    sub_1E4AF1898(a2 + v16, &v13[v17], &qword_1ECF92F88, &qword_1E4BFDD20);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_1E4AE0AE4(v13, &qword_1ECF92F88, &qword_1E4BFDD20);
        return 1;
      }
    }

    else
    {
      sub_1E4AF1898(v13, v10, &qword_1ECF92F88, &qword_1E4BFDD20);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v20 = sub_1E4BEFE6C();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_1E4AE0AE4(v13, &qword_1ECF92F88, &qword_1E4BFDD20);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1E4AE0AE4(v13, &qword_1ECF95740, &unk_1E4C0BDD0);
    return 0;
  }

  return result;
}

unint64_t sub_1E4B5D680()
{
  result = qword_1ECF94D80;
  if (!qword_1ECF94D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D80);
  }

  return result;
}

uint64_t sub_1E4B5D6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B5D73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1E4B5D79C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E4B5D7CC()
{
  result = qword_1ECF94D98;
  if (!qword_1ECF94D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94D98);
  }

  return result;
}

unint64_t sub_1E4B5D820()
{
  result = qword_1ECF94DA0;
  if (!qword_1ECF94DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DA0);
  }

  return result;
}

uint64_t sub_1E4B5D874(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E4B5D884()
{
  result = qword_1ECF94DB0;
  if (!qword_1ECF94DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DB0);
  }

  return result;
}

unint64_t sub_1E4B5D8F8()
{
  result = qword_1ECF94DC0;
  if (!qword_1ECF94DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DC0);
  }

  return result;
}

unint64_t sub_1E4B5D94C()
{
  result = qword_1ECF94DD8;
  if (!qword_1ECF94DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94DD8);
  }

  return result;
}

unint64_t sub_1E4B5D9A0()
{
  result = qword_1ECF94E00;
  if (!qword_1ECF94E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E00);
  }

  return result;
}

unint64_t sub_1E4B5D9F4()
{
  result = qword_1ECF94E08;
  if (!qword_1ECF94E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E08);
  }

  return result;
}

unint64_t sub_1E4B5DA48()
{
  result = qword_1ECF94E10;
  if (!qword_1ECF94E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E10);
  }

  return result;
}

unint64_t sub_1E4B5DA9C()
{
  result = qword_1ECF94E38;
  if (!qword_1ECF94E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E38);
  }

  return result;
}

unint64_t sub_1E4B5DAF0()
{
  result = qword_1ECF94E40;
  if (!qword_1ECF94E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E40);
  }

  return result;
}

unint64_t sub_1E4B5DB44()
{
  result = qword_1ECF94E50;
  if (!qword_1ECF94E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94E50);
  }

  return result;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV0G0O2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  CalendarEventAction = type metadata accessor for RCSService.Business.CreateCalendarEventAction(0);
  MEMORY[0x1EEE9AC00](CalendarEventAction - 8);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RCSService.Business.ShowLocationAction(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RCSService.Business.DialPhoneNumberAction(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for RCSService.Business.OpenURLAction(0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v70 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v69 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95760, &qword_1E4C0BDE8);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v69 - v29;
  v31 = &v69 + *(v28 + 56) - v29;
  sub_1E4B5D6D4(a1, &v69 - v29, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  v32 = v31;
  sub_1E4B5D6D4(v76, v31, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_30:
        v53 = v30;
LABEL_31:
        sub_1E4B5D73C(v53, type metadata accessor for RCSService.Business.SuggestedAction.Action);
        return 1;
      }

LABEL_44:
      sub_1E4AE0AE4(v30, qword_1ECF95760, &qword_1E4C0BDE8);
      return 0;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_1E4B5D6D4(v30, v15, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      v47 = *v15;
      v48 = *(v15 + 1);
      v49 = v15[16];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_44;
      }

      v50 = v32[16];
      if (v47 == *v32 && v48 == *(v32 + 1) || (sub_1E4BF099C() & 1) != 0)
      {

        if (v49 == v50)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

LABEL_58:
      sub_1E4B5D73C(v30, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      return 0;
    }

    v54 = v30;
    v55 = v70;
    sub_1E4B5D6D4(v30, v70, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    v57 = *v55;
    v56 = v55[1];
    v59 = v55[2];
    v58 = v55[3];
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      v30 = v54;
      goto LABEL_44;
    }

    v61 = *(v32 + 2);
    v60 = *(v32 + 3);
    if (v57 == *v32 && v56 == *(v32 + 1) || (sub_1E4BF099C() & 1) != 0)
    {
      if (v59 == v61 && v58 == v60)
      {

LABEL_56:
        v53 = v54;
        goto LABEL_31;
      }

      v68 = sub_1E4BF099C();

      if (v68)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    sub_1E4B5D73C(v54, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    return 0;
  }

  v34 = v24;
  v35 = v21;
  v36 = v18;
  v38 = v71;
  v37 = v72;
  v40 = v73;
  v39 = v74;
  v41 = v75;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v42 = v26;
      sub_1E4B5D6D4(v30, v26, type metadata accessor for RCSService.Business.SuggestedAction.Action);
      if (swift_getEnumCaseMultiPayload())
      {
        v43 = type metadata accessor for RCSService.Business.OpenURLAction;
LABEL_42:
        v62 = v43;
        v63 = v42;
        goto LABEL_43;
      }

      sub_1E4B5E7F4(v31, v38, type metadata accessor for RCSService.Business.OpenURLAction);
      if (sub_1E4BEFA4C())
      {
        v65 = *(v37 + 20);
        v66 = *(v26 + v65);
        v67 = *(v38 + v65);
        sub_1E4B5D73C(v38, type metadata accessor for RCSService.Business.OpenURLAction);
        if (v66 == 3)
        {
          if (v67 == 3)
          {
LABEL_63:
            sub_1E4B5D73C(v42, type metadata accessor for RCSService.Business.OpenURLAction);
            goto LABEL_30;
          }
        }

        else if (v67 != 3 && v66 == v67)
        {
          goto LABEL_63;
        }
      }

      else
      {
        sub_1E4B5D73C(v38, type metadata accessor for RCSService.Business.OpenURLAction);
      }

      sub_1E4B5D73C(v42, type metadata accessor for RCSService.Business.OpenURLAction);
      goto LABEL_58;
    }

    v51 = v34;
    sub_1E4B5D6D4(v30, v34, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v62 = type metadata accessor for RCSService.Business.DialPhoneNumberAction;
      v63 = v51;
LABEL_43:
      sub_1E4B5D73C(v63, v62);
      goto LABEL_44;
    }

    sub_1E4B5E7F4(v31, v40, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
    CalendarEventActionV2eeoiySbAG_AGtFZ_0 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV21DialPhoneNumberActionV2eeoiySbAG_AGtFZ_0(v51, v40);
    v45 = type metadata accessor for RCSService.Business.DialPhoneNumberAction;
    sub_1E4B5D73C(v40, type metadata accessor for RCSService.Business.DialPhoneNumberAction);
    v46 = v51;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v42 = v35;
    sub_1E4B5D6D4(v30, v35, type metadata accessor for RCSService.Business.SuggestedAction.Action);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v43 = type metadata accessor for RCSService.Business.ShowLocationAction;
      goto LABEL_42;
    }

    sub_1E4B5E7F4(v31, v39, type metadata accessor for RCSService.Business.ShowLocationAction);
    CalendarEventActionV2eeoiySbAG_AGtFZ_0 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV18ShowLocationActionV2eeoiySbAG_AGtFZ_0(v42, v39);
    v45 = type metadata accessor for RCSService.Business.ShowLocationAction;
    sub_1E4B5D73C(v39, type metadata accessor for RCSService.Business.ShowLocationAction);
    v46 = v42;
LABEL_25:
    v52 = v45;
    goto LABEL_28;
  }

  v42 = v36;
  sub_1E4B5D6D4(v30, v36, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v43 = type metadata accessor for RCSService.Business.CreateCalendarEventAction;
    goto LABEL_42;
  }

  sub_1E4B5E7F4(v31, v41, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
  CalendarEventActionV2eeoiySbAG_AGtFZ_0 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV25CreateCalendarEventActionV2eeoiySbAG_AGtFZ_0(v42, v41);
  sub_1E4B5D73C(v41, type metadata accessor for RCSService.Business.CreateCalendarEventAction);
  v46 = v42;
  v52 = type metadata accessor for RCSService.Business.CreateCalendarEventAction;
LABEL_28:
  sub_1E4B5D73C(v46, v52);
  sub_1E4B5D73C(v30, type metadata accessor for RCSService.Business.SuggestedAction.Action);
  return CalendarEventActionV2eeoiySbAG_AGtFZ_0;
}

unint64_t sub_1E4B5E500()
{
  result = qword_1ECF94EA8;
  if (!qword_1ECF94EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EA8);
  }

  return result;
}

unint64_t sub_1E4B5E554()
{
  result = qword_1ECF94EB0;
  if (!qword_1ECF94EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EB0);
  }

  return result;
}

unint64_t sub_1E4B5E5A8()
{
  result = qword_1ECF94EB8;
  if (!qword_1ECF94EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EB8);
  }

  return result;
}

unint64_t sub_1E4B5E5FC()
{
  result = qword_1ECF94EC0;
  if (!qword_1ECF94EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EC0);
  }

  return result;
}

unint64_t sub_1E4B5E650()
{
  result = qword_1ECF94EC8;
  if (!qword_1ECF94EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EC8);
  }

  return result;
}

unint64_t sub_1E4B5E6A4()
{
  result = qword_1ECF94ED0;
  if (!qword_1ECF94ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94ED0);
  }

  return result;
}

unint64_t sub_1E4B5E6F8()
{
  result = qword_1ECF94ED8;
  if (!qword_1ECF94ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94ED8);
  }

  return result;
}

unint64_t sub_1E4B5E74C()
{
  result = qword_1ECF94EE0;
  if (!qword_1ECF94EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EE0);
  }

  return result;
}

unint64_t sub_1E4B5E7A0()
{
  result = qword_1ECF94EF0;
  if (!qword_1ECF94EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EF0);
  }

  return result;
}

uint64_t sub_1E4B5E7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4B5E85C()
{
  result = qword_1ECF94EF8;
  if (!qword_1ECF94EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94EF8);
  }

  return result;
}

unint64_t sub_1E4B5E8B0()
{
  result = qword_1ECF94F08;
  if (!qword_1ECF94F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F08);
  }

  return result;
}

unint64_t sub_1E4B5E904()
{
  result = qword_1ECF94F18;
  if (!qword_1ECF94F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F18);
  }

  return result;
}

unint64_t sub_1E4B5E958()
{
  result = qword_1ECF94F78;
  if (!qword_1ECF94F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F78);
  }

  return result;
}

unint64_t sub_1E4B5E9AC()
{
  result = qword_1ECF94F80;
  if (!qword_1ECF94F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94F80);
  }

  return result;
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (sub_1E4BF099C() & 1) != 0)
      {
        goto LABEL_18;
      }

      return 0;
    }

LABEL_15:

    return 0;
  }

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_18:
  v9 = *(type metadata accessor for RCSService.Business.SuggestedAction(0) + 24);

  return _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV0G0O2eeoiySbAI_AItFZ_0(a1 + v9, a2 + v9);
}

unint64_t sub_1E4B5EB14()
{
  result = qword_1ECF94FB0;
  if (!qword_1ECF94FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FB0);
  }

  return result;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4BEFA6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95740, &unk_1E4C0BDD0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    goto LABEL_10;
  }

  v15 = v12;
  v27 = type metadata accessor for RCSService.Business.Card(0);
  v16 = v27[7];
  v17 = *(v15 + 48);
  sub_1E4AF1898(&a1[v16], v14, &qword_1ECF92F88, &qword_1E4BFDD20);
  v28 = v17;
  sub_1E4AF1898(&a2[v16], &v14[v17], &qword_1ECF92F88, &qword_1E4BFDD20);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1E4AF1898(v14, v10, &qword_1ECF92F88, &qword_1E4BFDD20);
    v19 = v28;
    if (v18(&v14[v28], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v19], v4);
      sub_1E4B5B390(&qword_1ECF95750, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v22 = sub_1E4BEFE6C();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v10, v4);
      sub_1E4AE0AE4(v14, &qword_1ECF92F88, &qword_1E4BFDD20);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_1E4AE0AE4(v14, &qword_1ECF95740, &unk_1E4C0BDD0);
    goto LABEL_10;
  }

  if (v18(&v14[v28], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1E4AE0AE4(v14, &qword_1ECF92F88, &qword_1E4BFDD20);
LABEL_13:
  v24 = v27[8];
  v25 = a1[v24];
  v26 = a2[v24];
  if (v25 == 2)
  {
    if (v26 == 2)
    {
LABEL_18:
      v20 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV7ContentV2eeoiySbAI_AItFZ_0(&a1[v27[9]], &a2[v27[9]]);
      return v20 & 1;
    }
  }

  else if (v26 != 2 && ((v26 ^ v25) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_1E4B5EF68()
{
  result = qword_1ECF94FD8;
  if (!qword_1ECF94FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FD8);
  }

  return result;
}

unint64_t sub_1E4B5EFBC()
{
  result = qword_1ECF94FE0;
  if (!qword_1ECF94FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FE0);
  }

  return result;
}

unint64_t sub_1E4B5F010()
{
  result = qword_1ECF94FE8;
  if (!qword_1ECF94FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FE8);
  }

  return result;
}

unint64_t sub_1E4B5F064()
{
  result = qword_1ECF94FF0;
  if (!qword_1ECF94FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94FF0);
  }

  return result;
}

unint64_t sub_1E4B5F0B8()
{
  result = qword_1ECF95008;
  if (!qword_1ECF95008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95008);
  }

  return result;
}

unint64_t sub_1E4B5F10C()
{
  result = qword_1ECF95010;
  if (!qword_1ECF95010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95010);
  }

  return result;
}

unint64_t sub_1E4B5F160()
{
  result = qword_1ECF95018;
  if (!qword_1ECF95018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95018);
  }

  return result;
}

unint64_t sub_1E4B5F1D4()
{
  result = qword_1ECF95030;
  if (!qword_1ECF95030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95030);
  }

  return result;
}

unint64_t sub_1E4B5F228()
{
  result = qword_1ECF95038;
  if (!qword_1ECF95038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95038);
  }

  return result;
}

unint64_t sub_1E4B5F27C()
{
  result = qword_1ECF95058;
  if (!qword_1ECF95058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95058);
  }

  return result;
}

uint64_t sub_1E4B5F2D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95040, &qword_1E4C079A8);
    sub_1E4B5B390(a2, type metadata accessor for RCSService.Business.Card.Content, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B5F38C()
{
  result = qword_1ECF95080;
  if (!qword_1ECF95080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95080);
  }

  return result;
}

unint64_t sub_1E4B5F3E0()
{
  result = qword_1ECF95088;
  if (!qword_1ECF95088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95088);
  }

  return result;
}

unint64_t sub_1E4B5F434()
{
  result = qword_1ECF95098;
  if (!qword_1ECF95098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95098);
  }

  return result;
}

unint64_t sub_1E4B5F488()
{
  result = qword_1ECF950A0;
  if (!qword_1ECF950A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950A0);
  }

  return result;
}

unint64_t sub_1E4B5F4DC()
{
  result = qword_1ECF950C8;
  if (!qword_1ECF950C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950C8);
  }

  return result;
}

unint64_t sub_1E4B5F530()
{
  result = qword_1ECF950E8;
  if (!qword_1ECF950E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950E8);
  }

  return result;
}

unint64_t sub_1E4B5F584()
{
  result = qword_1ECF950F0;
  if (!qword_1ECF950F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950F0);
  }

  return result;
}

unint64_t sub_1E4B5F5D8()
{
  result = qword_1ECF950F8;
  if (!qword_1ECF950F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF950F8);
  }

  return result;
}

unint64_t sub_1E4B5F62C()
{
  result = qword_1ECF95138;
  if (!qword_1ECF95138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95138);
  }

  return result;
}

unint64_t sub_1E4B5F680()
{
  result = qword_1ECF95140;
  if (!qword_1ECF95140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95140);
  }

  return result;
}

unint64_t sub_1E4B5F6D4()
{
  result = qword_1ECF95148;
  if (!qword_1ECF95148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95148);
  }

  return result;
}

unint64_t sub_1E4B5F728()
{
  result = qword_1ECF95150;
  if (!qword_1ECF95150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95150);
  }

  return result;
}

unint64_t sub_1E4B5F79C()
{
  result = qword_1ECF95180;
  if (!qword_1ECF95180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95180);
  }

  return result;
}

unint64_t sub_1E4B5F7F0()
{
  result = qword_1ECF95188;
  if (!qword_1ECF95188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95188);
  }

  return result;
}

unint64_t sub_1E4B5F844()
{
  result = qword_1ECF95198;
  if (!qword_1ECF95198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95198);
  }

  return result;
}

unint64_t sub_1E4B5F898()
{
  result = qword_1ECF951B8;
  if (!qword_1ECF951B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951B8);
  }

  return result;
}

unint64_t sub_1E4B5F8EC()
{
  result = qword_1ECF951C0;
  if (!qword_1ECF951C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951C0);
  }

  return result;
}

unint64_t sub_1E4B5F940()
{
  result = qword_1ECF951C8;
  if (!qword_1ECF951C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951C8);
  }

  return result;
}

unint64_t sub_1E4B5F994()
{
  result = qword_1ECF951F8;
  if (!qword_1ECF951F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF951F8);
  }

  return result;
}

uint64_t sub_1E4B5F9E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95208, &qword_1E4C07AC0);
    sub_1E4B5B390(a2, type metadata accessor for RCSService.Business.Suggestion, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B5FA84()
{
  result = qword_1ECF95248;
  if (!qword_1ECF95248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95248);
  }

  return result;
}

unint64_t sub_1E4B5FAD8()
{
  result = qword_1ECF95250;
  if (!qword_1ECF95250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95250);
  }

  return result;
}

unint64_t sub_1E4B5FB2C()
{
  result = qword_1ECF95258;
  if (!qword_1ECF95258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95258);
  }

  return result;
}

unint64_t sub_1E4B5FB80()
{
  result = qword_1ECF95288;
  if (!qword_1ECF95288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95288);
  }

  return result;
}

unint64_t sub_1E4B5FBD4()
{
  result = qword_1ECF95290;
  if (!qword_1ECF95290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95290);
  }

  return result;
}

unint64_t sub_1E4B5FC2C()
{
  result = qword_1ECF952A8;
  if (!qword_1ECF952A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952A8);
  }

  return result;
}

unint64_t sub_1E4B5FC84()
{
  result = qword_1ECF952B0;
  if (!qword_1ECF952B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952B0);
  }

  return result;
}

unint64_t sub_1E4B5FCDC()
{
  result = qword_1ECF952B8;
  if (!qword_1ECF952B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952B8);
  }

  return result;
}

unint64_t sub_1E4B5FD34()
{
  result = qword_1ECF952C0;
  if (!qword_1ECF952C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952C0);
  }

  return result;
}

unint64_t sub_1E4B5FD8C()
{
  result = qword_1ECF952C8;
  if (!qword_1ECF952C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952C8);
  }

  return result;
}

unint64_t sub_1E4B5FDE4()
{
  result = qword_1ECF952D0;
  if (!qword_1ECF952D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952D0);
  }

  return result;
}

unint64_t sub_1E4B5FE3C()
{
  result = qword_1ECF952D8;
  if (!qword_1ECF952D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952D8);
  }

  return result;
}

unint64_t sub_1E4B5FE94()
{
  result = qword_1ECF952E0;
  if (!qword_1ECF952E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952E0);
  }

  return result;
}

unint64_t sub_1E4B5FEEC()
{
  result = qword_1ECF952E8;
  if (!qword_1ECF952E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952E8);
  }

  return result;
}

unint64_t sub_1E4B5FF44()
{
  result = qword_1ECF952F0;
  if (!qword_1ECF952F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952F0);
  }

  return result;
}

uint64_t sub_1E4B5FFE0(uint64_t a1)
{
  result = sub_1E4BEFA6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s13OpenURLActionV6TargetOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s13OpenURLActionV6TargetOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E4B601B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E4B601CC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_1E4B60214(uint64_t a1)
{
  sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E4B602E8(uint64_t a1)
{
  sub_1E4AE5B08(319, &qword_1EE2BD740, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4B603DC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E4B60424(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1E4B604AC(uint64_t a1)
{
  sub_1E4BEFABC();
  if (v1 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1EE2BD740, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4B605A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1E4B605E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1E4B60670(uint64_t a1)
{
  sub_1E4AE5B08(319, qword_1EE2BE610, &type metadata for RCSService.Business.PostbackData);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RCSService.Business.SuggestedAction.Action(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4B60714(uint64_t a1)
{
  result = type metadata accessor for RCSService.Business.OpenURLAction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RCSService.Business.DialPhoneNumberAction(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for RCSService.Business.ShowLocationAction(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for RCSService.Business.CreateCalendarEventAction(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1E4B607EC(uint64_t a1)
{
  sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E4AE5B08(319, qword_1EE2BE270, &type metadata for RCSService.Business.Card.ImageAlignment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RCSService.Business.Card.Content(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4B60910(uint64_t a1)
{
  sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E4B60A14(319, &qword_1EE2BD730, type metadata accessor for RCSService.Business.Card.Content, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4B60A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E4B60A78(uint64_t a1)
{
  result = type metadata accessor for RCSService.Business.SuggestedAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E4B60B2C(uint64_t a1)
{
  sub_1E4BEFA6C();
  if (v1 <= 0x3F)
  {
    sub_1E4B60A14(319, qword_1EE2BD758, MEMORY[0x1EEE9A6F8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E4B60A14(319, &qword_1EE2BECD8, sub_1E4AF15E0, MEMORY[0x1E6968070]);
      if (v3 <= 0x3F)
      {
        sub_1E4B60A14(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E4AF1EBC(319);
          if (v5 <= 0x3F)
          {
            sub_1E4AE5B08(319, &qword_1EE2BD740, MEMORY[0x1E69E6158]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E4B60CF8(uint64_t a1)
{
  sub_1E4B60A14(319, qword_1EE2BE218, type metadata accessor for RCSService.Business.Card.Media, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1EE2BD740, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1E4B60A14(319, &qword_1EE2BD738, type metadata accessor for RCSService.Business.Suggestion, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s15SuggestedActionV6ActionO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15SuggestedActionV6ActionO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4B61288()
{
  result = qword_1ECF952F8;
  if (!qword_1ECF952F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF952F8);
  }

  return result;
}

unint64_t sub_1E4B612E0()
{
  result = qword_1ECF95300;
  if (!qword_1ECF95300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95300);
  }

  return result;
}

unint64_t sub_1E4B61338()
{
  result = qword_1ECF95308;
  if (!qword_1ECF95308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95308);
  }

  return result;
}

unint64_t sub_1E4B61390()
{
  result = qword_1ECF95310;
  if (!qword_1ECF95310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95310);
  }

  return result;
}

unint64_t sub_1E4B613E8()
{
  result = qword_1ECF95318;
  if (!qword_1ECF95318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95318);
  }

  return result;
}

unint64_t sub_1E4B61440()
{
  result = qword_1ECF95320;
  if (!qword_1ECF95320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95320);
  }

  return result;
}

unint64_t sub_1E4B61498()
{
  result = qword_1ECF95328;
  if (!qword_1ECF95328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95328);
  }

  return result;
}

unint64_t sub_1E4B614F0()
{
  result = qword_1ECF95330;
  if (!qword_1ECF95330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95330);
  }

  return result;
}

unint64_t sub_1E4B61548()
{
  result = qword_1ECF95338;
  if (!qword_1ECF95338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95338);
  }

  return result;
}

unint64_t sub_1E4B615A0()
{
  result = qword_1ECF95340;
  if (!qword_1ECF95340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95340);
  }

  return result;
}

unint64_t sub_1E4B615F8()
{
  result = qword_1ECF95348;
  if (!qword_1ECF95348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95348);
  }

  return result;
}

unint64_t sub_1E4B61650()
{
  result = qword_1ECF95350;
  if (!qword_1ECF95350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95350);
  }

  return result;
}

unint64_t sub_1E4B616A8()
{
  result = qword_1ECF95358;
  if (!qword_1ECF95358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95358);
  }

  return result;
}

unint64_t sub_1E4B61700()
{
  result = qword_1ECF95360;
  if (!qword_1ECF95360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95360);
  }

  return result;
}

unint64_t sub_1E4B61758()
{
  result = qword_1ECF95368;
  if (!qword_1ECF95368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95368);
  }

  return result;
}

unint64_t sub_1E4B617B0()
{
  result = qword_1ECF95370;
  if (!qword_1ECF95370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95370);
  }

  return result;
}

unint64_t sub_1E4B61808()
{
  result = qword_1ECF95378;
  if (!qword_1ECF95378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95378);
  }

  return result;
}

unint64_t sub_1E4B61860()
{
  result = qword_1ECF95380;
  if (!qword_1ECF95380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95380);
  }

  return result;
}

unint64_t sub_1E4B618B8()
{
  result = qword_1ECF95388;
  if (!qword_1ECF95388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95388);
  }

  return result;
}

unint64_t sub_1E4B61910()
{
  result = qword_1ECF95390;
  if (!qword_1ECF95390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95390);
  }

  return result;
}

unint64_t sub_1E4B61968()
{
  result = qword_1ECF95398;
  if (!qword_1ECF95398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95398);
  }

  return result;
}

unint64_t sub_1E4B619C0()
{
  result = qword_1ECF953A0;
  if (!qword_1ECF953A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953A0);
  }

  return result;
}

unint64_t sub_1E4B61A18()
{
  result = qword_1ECF953A8;
  if (!qword_1ECF953A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953A8);
  }

  return result;
}

unint64_t sub_1E4B61A70()
{
  result = qword_1ECF953B0;
  if (!qword_1ECF953B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953B0);
  }

  return result;
}

unint64_t sub_1E4B61AC8()
{
  result = qword_1ECF953B8;
  if (!qword_1ECF953B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953B8);
  }

  return result;
}

unint64_t sub_1E4B61B20()
{
  result = qword_1ECF953C0;
  if (!qword_1ECF953C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953C0);
  }

  return result;
}

unint64_t sub_1E4B61B78()
{
  result = qword_1ECF953C8;
  if (!qword_1ECF953C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953C8);
  }

  return result;
}

unint64_t sub_1E4B61BD0()
{
  result = qword_1ECF953D0;
  if (!qword_1ECF953D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953D0);
  }

  return result;
}

unint64_t sub_1E4B61C28()
{
  result = qword_1ECF953D8;
  if (!qword_1ECF953D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953D8);
  }

  return result;
}

unint64_t sub_1E4B61C80()
{
  result = qword_1ECF953E0;
  if (!qword_1ECF953E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953E0);
  }

  return result;
}

unint64_t sub_1E4B61CD8()
{
  result = qword_1ECF953E8;
  if (!qword_1ECF953E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953E8);
  }

  return result;
}

unint64_t sub_1E4B61D30()
{
  result = qword_1ECF953F0;
  if (!qword_1ECF953F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953F0);
  }

  return result;
}

unint64_t sub_1E4B61D88()
{
  result = qword_1ECF953F8;
  if (!qword_1ECF953F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF953F8);
  }

  return result;
}

unint64_t sub_1E4B61DE0()
{
  result = qword_1ECF95400;
  if (!qword_1ECF95400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95400);
  }

  return result;
}

unint64_t sub_1E4B61E38()
{
  result = qword_1ECF95408;
  if (!qword_1ECF95408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95408);
  }

  return result;
}

unint64_t sub_1E4B61E90()
{
  result = qword_1ECF95410;
  if (!qword_1ECF95410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95410);
  }

  return result;
}

unint64_t sub_1E4B61EE8()
{
  result = qword_1ECF95418;
  if (!qword_1ECF95418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95418);
  }

  return result;
}

unint64_t sub_1E4B61F40()
{
  result = qword_1ECF95420;
  if (!qword_1ECF95420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95420);
  }

  return result;
}

unint64_t sub_1E4B61F98()
{
  result = qword_1ECF95428;
  if (!qword_1ECF95428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95428);
  }

  return result;
}

unint64_t sub_1E4B61FF0()
{
  result = qword_1ECF95430;
  if (!qword_1ECF95430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95430);
  }

  return result;
}

unint64_t sub_1E4B62048()
{
  result = qword_1ECF95438;
  if (!qword_1ECF95438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95438);
  }

  return result;
}

unint64_t sub_1E4B620A0()
{
  result = qword_1ECF95440;
  if (!qword_1ECF95440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95440);
  }

  return result;
}

unint64_t sub_1E4B620F8()
{
  result = qword_1ECF95448;
  if (!qword_1ECF95448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95448);
  }

  return result;
}

unint64_t sub_1E4B62150()
{
  result = qword_1ECF95450;
  if (!qword_1ECF95450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95450);
  }

  return result;
}

unint64_t sub_1E4B621A8()
{
  result = qword_1ECF95458;
  if (!qword_1ECF95458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95458);
  }

  return result;
}

unint64_t sub_1E4B62200()
{
  result = qword_1ECF95460;
  if (!qword_1ECF95460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95460);
  }

  return result;
}

unint64_t sub_1E4B62258()
{
  result = qword_1ECF95468;
  if (!qword_1ECF95468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95468);
  }

  return result;
}

unint64_t sub_1E4B622B0()
{
  result = qword_1ECF95470;
  if (!qword_1ECF95470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95470);
  }

  return result;
}

unint64_t sub_1E4B62308()
{
  result = qword_1ECF95478;
  if (!qword_1ECF95478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95478);
  }

  return result;
}

unint64_t sub_1E4B62360()
{
  result = qword_1ECF95480;
  if (!qword_1ECF95480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95480);
  }

  return result;
}

unint64_t sub_1E4B623B8()
{
  result = qword_1ECF95488;
  if (!qword_1ECF95488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95488);
  }

  return result;
}

unint64_t sub_1E4B62410()
{
  result = qword_1ECF95490;
  if (!qword_1ECF95490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95490);
  }

  return result;
}

unint64_t sub_1E4B62468()
{
  result = qword_1ECF95498;
  if (!qword_1ECF95498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95498);
  }

  return result;
}

unint64_t sub_1E4B624C0()
{
  result = qword_1ECF954A0;
  if (!qword_1ECF954A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954A0);
  }

  return result;
}

unint64_t sub_1E4B62518()
{
  result = qword_1ECF954A8;
  if (!qword_1ECF954A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954A8);
  }

  return result;
}

unint64_t sub_1E4B62570()
{
  result = qword_1ECF954B0;
  if (!qword_1ECF954B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954B0);
  }

  return result;
}

unint64_t sub_1E4B625C8()
{
  result = qword_1ECF954B8;
  if (!qword_1ECF954B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954B8);
  }

  return result;
}

unint64_t sub_1E4B62620()
{
  result = qword_1ECF954C0;
  if (!qword_1ECF954C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954C0);
  }

  return result;
}

unint64_t sub_1E4B62678()
{
  result = qword_1ECF954C8;
  if (!qword_1ECF954C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954C8);
  }

  return result;
}

unint64_t sub_1E4B626D0()
{
  result = qword_1ECF954D0;
  if (!qword_1ECF954D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954D0);
  }

  return result;
}

unint64_t sub_1E4B62728()
{
  result = qword_1ECF954D8;
  if (!qword_1ECF954D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954D8);
  }

  return result;
}

unint64_t sub_1E4B62780()
{
  result = qword_1ECF954E0;
  if (!qword_1ECF954E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954E0);
  }

  return result;
}

unint64_t sub_1E4B627D8()
{
  result = qword_1ECF954E8;
  if (!qword_1ECF954E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954E8);
  }

  return result;
}

unint64_t sub_1E4B62830()
{
  result = qword_1ECF954F0;
  if (!qword_1ECF954F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954F0);
  }

  return result;
}

unint64_t sub_1E4B62888()
{
  result = qword_1ECF954F8;
  if (!qword_1ECF954F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF954F8);
  }

  return result;
}

unint64_t sub_1E4B628E0()
{
  result = qword_1ECF95500;
  if (!qword_1ECF95500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95500);
  }

  return result;
}

unint64_t sub_1E4B62938()
{
  result = qword_1ECF95508;
  if (!qword_1ECF95508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95508);
  }

  return result;
}

unint64_t sub_1E4B62990()
{
  result = qword_1ECF95510;
  if (!qword_1ECF95510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95510);
  }

  return result;
}

unint64_t sub_1E4B629E8()
{
  result = qword_1ECF95518;
  if (!qword_1ECF95518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95518);
  }

  return result;
}

unint64_t sub_1E4B62A40()
{
  result = qword_1ECF95520;
  if (!qword_1ECF95520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95520);
  }

  return result;
}

unint64_t sub_1E4B62A98()
{
  result = qword_1ECF95528;
  if (!qword_1ECF95528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95528);
  }

  return result;
}

unint64_t sub_1E4B62AF0()
{
  result = qword_1ECF95530;
  if (!qword_1ECF95530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95530);
  }

  return result;
}

unint64_t sub_1E4B62B48()
{
  result = qword_1ECF95538;
  if (!qword_1ECF95538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95538);
  }

  return result;
}

unint64_t sub_1E4B62BA0()
{
  result = qword_1ECF95540;
  if (!qword_1ECF95540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95540);
  }

  return result;
}

unint64_t sub_1E4B62BF8()
{
  result = qword_1ECF95548;
  if (!qword_1ECF95548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95548);
  }

  return result;
}

unint64_t sub_1E4B62C50()
{
  result = qword_1ECF95550;
  if (!qword_1ECF95550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95550);
  }

  return result;
}

unint64_t sub_1E4B62CA8()
{
  result = qword_1ECF95558;
  if (!qword_1ECF95558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95558);
  }

  return result;
}

unint64_t sub_1E4B62D00()
{
  result = qword_1ECF95560;
  if (!qword_1ECF95560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95560);
  }

  return result;
}

unint64_t sub_1E4B62D58()
{
  result = qword_1ECF95568;
  if (!qword_1ECF95568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95568);
  }

  return result;
}

unint64_t sub_1E4B62DB0()
{
  result = qword_1ECF95570;
  if (!qword_1ECF95570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95570);
  }

  return result;
}

unint64_t sub_1E4B62E08()
{
  result = qword_1ECF95578;
  if (!qword_1ECF95578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95578);
  }

  return result;
}

unint64_t sub_1E4B62E60()
{
  result = qword_1ECF95580;
  if (!qword_1ECF95580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95580);
  }

  return result;
}

unint64_t sub_1E4B62EB8()
{
  result = qword_1ECF95588;
  if (!qword_1ECF95588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95588);
  }

  return result;
}

unint64_t sub_1E4B62F10()
{
  result = qword_1ECF95590;
  if (!qword_1ECF95590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95590);
  }

  return result;
}

unint64_t sub_1E4B62F68()
{
  result = qword_1ECF95598;
  if (!qword_1ECF95598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95598);
  }

  return result;
}

unint64_t sub_1E4B62FC0()
{
  result = qword_1ECF955A0;
  if (!qword_1ECF955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955A0);
  }

  return result;
}

unint64_t sub_1E4B63018()
{
  result = qword_1ECF955A8;
  if (!qword_1ECF955A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955A8);
  }

  return result;
}

unint64_t sub_1E4B63070()
{
  result = qword_1ECF955B0;
  if (!qword_1ECF955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955B0);
  }

  return result;
}

unint64_t sub_1E4B630C8()
{
  result = qword_1ECF955B8;
  if (!qword_1ECF955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955B8);
  }

  return result;
}

unint64_t sub_1E4B63120()
{
  result = qword_1ECF955C0;
  if (!qword_1ECF955C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955C0);
  }

  return result;
}

unint64_t sub_1E4B63178()
{
  result = qword_1ECF955C8;
  if (!qword_1ECF955C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955C8);
  }

  return result;
}

unint64_t sub_1E4B631D0()
{
  result = qword_1ECF955D0;
  if (!qword_1ECF955D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955D0);
  }

  return result;
}

unint64_t sub_1E4B63228()
{
  result = qword_1ECF955D8;
  if (!qword_1ECF955D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955D8);
  }

  return result;
}

unint64_t sub_1E4B63280()
{
  result = qword_1ECF955E0;
  if (!qword_1ECF955E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955E0);
  }

  return result;
}

unint64_t sub_1E4B632D8()
{
  result = qword_1ECF955E8;
  if (!qword_1ECF955E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955E8);
  }

  return result;
}

unint64_t sub_1E4B63330()
{
  result = qword_1ECF955F0;
  if (!qword_1ECF955F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955F0);
  }

  return result;
}

unint64_t sub_1E4B63388()
{
  result = qword_1ECF955F8;
  if (!qword_1ECF955F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF955F8);
  }

  return result;
}

unint64_t sub_1E4B633E0()
{
  result = qword_1ECF95600;
  if (!qword_1ECF95600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95600);
  }

  return result;
}

unint64_t sub_1E4B63438()
{
  result = qword_1ECF95608;
  if (!qword_1ECF95608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95608);
  }

  return result;
}

unint64_t sub_1E4B63490()
{
  result = qword_1ECF95610;
  if (!qword_1ECF95610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95610);
  }

  return result;
}

unint64_t sub_1E4B634E8()
{
  result = qword_1ECF95618;
  if (!qword_1ECF95618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95618);
  }

  return result;
}

unint64_t sub_1E4B63540()
{
  result = qword_1ECF95620;
  if (!qword_1ECF95620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95620);
  }

  return result;
}

unint64_t sub_1E4B63598()
{
  result = qword_1ECF95628;
  if (!qword_1ECF95628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95628);
  }

  return result;
}

unint64_t sub_1E4B635F0()
{
  result = qword_1ECF95630;
  if (!qword_1ECF95630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95630);
  }

  return result;
}

unint64_t sub_1E4B63648()
{
  result = qword_1ECF95638;
  if (!qword_1ECF95638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95638);
  }

  return result;
}

unint64_t sub_1E4B636A0()
{
  result = qword_1ECF95640;
  if (!qword_1ECF95640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95640);
  }

  return result;
}

unint64_t sub_1E4B636F8()
{
  result = qword_1ECF95648;
  if (!qword_1ECF95648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95648);
  }

  return result;
}

unint64_t sub_1E4B63750()
{
  result = qword_1ECF95650;
  if (!qword_1ECF95650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95650);
  }

  return result;
}

unint64_t sub_1E4B637A8()
{
  result = qword_1ECF95658;
  if (!qword_1ECF95658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95658);
  }

  return result;
}

unint64_t sub_1E4B63800()
{
  result = qword_1ECF95660;
  if (!qword_1ECF95660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95660);
  }

  return result;
}

unint64_t sub_1E4B63858()
{
  result = qword_1ECF95668;
  if (!qword_1ECF95668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95668);
  }

  return result;
}

unint64_t sub_1E4B638B0()
{
  result = qword_1ECF95670;
  if (!qword_1ECF95670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95670);
  }

  return result;
}

unint64_t sub_1E4B63908()
{
  result = qword_1ECF95678;
  if (!qword_1ECF95678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95678);
  }

  return result;
}

unint64_t sub_1E4B63960()
{
  result = qword_1ECF95680;
  if (!qword_1ECF95680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95680);
  }

  return result;
}

unint64_t sub_1E4B639B8()
{
  result = qword_1ECF95688;
  if (!qword_1ECF95688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95688);
  }

  return result;
}

unint64_t sub_1E4B63A10()
{
  result = qword_1ECF95690;
  if (!qword_1ECF95690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95690);
  }

  return result;
}

unint64_t sub_1E4B63A68()
{
  result = qword_1ECF95698;
  if (!qword_1ECF95698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95698);
  }

  return result;
}

unint64_t sub_1E4B63AC0()
{
  result = qword_1ECF956A0;
  if (!qword_1ECF956A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956A0);
  }

  return result;
}

unint64_t sub_1E4B63B18()
{
  result = qword_1ECF956A8;
  if (!qword_1ECF956A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956A8);
  }

  return result;
}

unint64_t sub_1E4B63B70()
{
  result = qword_1ECF956B0;
  if (!qword_1ECF956B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956B0);
  }

  return result;
}

unint64_t sub_1E4B63BC8()
{
  result = qword_1ECF956B8;
  if (!qword_1ECF956B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956B8);
  }

  return result;
}

unint64_t sub_1E4B63C20()
{
  result = qword_1ECF956C0;
  if (!qword_1ECF956C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956C0);
  }

  return result;
}

unint64_t sub_1E4B63C78()
{
  result = qword_1ECF956C8;
  if (!qword_1ECF956C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956C8);
  }

  return result;
}

unint64_t sub_1E4B63CD0()
{
  result = qword_1ECF956D0;
  if (!qword_1ECF956D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956D0);
  }

  return result;
}

unint64_t sub_1E4B63D28()
{
  result = qword_1ECF956D8;
  if (!qword_1ECF956D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956D8);
  }

  return result;
}

unint64_t sub_1E4B63D80()
{
  result = qword_1ECF956E0;
  if (!qword_1ECF956E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956E0);
  }

  return result;
}

unint64_t sub_1E4B63DD8()
{
  result = qword_1ECF956E8;
  if (!qword_1ECF956E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956E8);
  }

  return result;
}

unint64_t sub_1E4B63E30()
{
  result = qword_1ECF956F0;
  if (!qword_1ECF956F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956F0);
  }

  return result;
}

unint64_t sub_1E4B63E88()
{
  result = qword_1ECF956F8;
  if (!qword_1ECF956F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF956F8);
  }

  return result;
}

unint64_t sub_1E4B63EE0()
{
  result = qword_1ECF95700;
  if (!qword_1ECF95700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95700);
  }

  return result;
}

unint64_t sub_1E4B63F38()
{
  result = qword_1ECF95708;
  if (!qword_1ECF95708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95708);
  }

  return result;
}

unint64_t sub_1E4B63F90()
{
  result = qword_1ECF95710;
  if (!qword_1ECF95710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95710);
  }

  return result;
}

unint64_t sub_1E4B63FE8()
{
  result = qword_1ECF95718;
  if (!qword_1ECF95718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95718);
  }

  return result;
}

unint64_t sub_1E4B64040()
{
  result = qword_1ECF95720;
  if (!qword_1ECF95720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95720);
  }

  return result;
}

unint64_t sub_1E4B64098()
{
  result = qword_1ECF95728;
  if (!qword_1ECF95728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95728);
  }

  return result;
}

uint64_t sub_1E4B640EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656772616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614C6D756964656DLL && a2 == 0xEB00000000656772)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4B64200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4B64314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4B644D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F68506C616964 && a2 == 0xEF7265626D754E65 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61636F4C776F6873 && a2 == 0xEC0000006E6F6974 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61636F4C646E6573 && a2 == 0xEC0000006E6F6974 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF1E30 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF1E50 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5465736F706D6F63 && a2 == 0xEB00000000747865 || (sub_1E4BF099C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF1E70 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E4BF1E90 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1E4B647C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000061746144 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4B648E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F46656C746974 && a2 == 0xEE00656C79745374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1EB0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656853656C797473 && a2 == 0xED00004C52557465 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C416567616D69 && a2 == 0xEE00746E656D6E67 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E4B64B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F46656C746974 && a2 == 0xEE00656C79745374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1EB0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656853656C797473 && a2 == 0xED00004C52557465 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4B64CC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819042164 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4B64DD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1ED0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1EF0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4879616C70736964 && a2 == 0xED00007468676965 || (sub_1E4BF099C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1E4B6508C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616964656DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1E4B651F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E4BF07DC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E4B652AC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4B65318(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 64;
  if (*(v3 + 64) > 0x40uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1E4B65430(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x40)
  {
    v5 = 64;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1E4B65600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1);
  sub_1E4BB3EF4(v16, a3, a6, a7);
  (*(v14 + 8))(a1, a3);
  type metadata accessor for CodableResult(0, a2, a4, a5);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E4B65734@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94948, &unk_1E4C0EF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95808, &unk_1E4C0BED0);
  if (swift_dynamicCast())
  {
    sub_1E4ADB544(v36, v39);
    v11 = v40;
    v12 = v41;
    v13 = __swift_project_boxed_opaque_existential_1(v39, v40);
    MEMORY[0x1EEE9AC00](v13);
    v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15);
    sub_1E4B65600(v15, a2, v11, a3, a4, v12, a5);

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1E4B677B4(v36);
    swift_getErrorValue();
    v18 = a1;
    v35 = sub_1E4BF0A0C();
    v34 = v19;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v22 + 16))(&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = sub_1E4BEFEFC();
    v25 = v24;
    v26 = swift_getErrorValue();
    MEMORY[0x1EEE9AC00](v26);
    (*(v28 + 16))(&v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = sub_1E4BEFF0C();
    v31 = v30;

    *(a5 + 32) = &type metadata for XPCApplicationError;
    *(a5 + 40) = sub_1E4B6781C();
    *(a5 + 48) = sub_1E4B67870();
    *(a5 + 56) = sub_1E4B678C4();
    v32 = swift_allocObject();
    *(a5 + 8) = v32;

    v33 = v34;
    v32[2] = v35;
    v32[3] = v33;
    v32[4] = v23;
    v32[5] = v25;
    v32[6] = v29;
    v32[7] = v31;
    *a5 = 0;
    type metadata accessor for CodableResult(0, a2, a3, a4);
    return swift_storeEnumTagMultiPayload();
  }
}