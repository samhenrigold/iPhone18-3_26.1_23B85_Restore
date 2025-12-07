void sub_217B0EF5C(uint64_t a1)
{
  if (!qword_2811C8890)
  {
    sub_217B0EFB4(255);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8890);
    }
  }
}

void sub_217B0EFB4(uint64_t a1)
{
  if (!qword_2811C88A0)
  {
    type metadata accessor for FeedViewEvent(255);
    sub_217B0F09C(qword_2811C73B0, type metadata accessor for FeedViewEvent, &protocol conformance descriptor for FeedViewEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88A0);
    }
  }
}

unint64_t sub_217B0F048()
{
  result = qword_2811BF780;
  if (!qword_2811BF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF780);
  }

  return result;
}

uint64_t sub_217B0F09C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217B0F0E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217B0F20C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F3E0);
  __swift_project_value_buffer(v0, qword_27CB9F3E0);
  return sub_217D8866C();
}

uint64_t LiveActivitySubscriptionFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 20);
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0F410()
{
  result = qword_27CB9F400;
  if (!qword_27CB9F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F400);
  }

  return result;
}

unint64_t sub_217B0F464()
{
  result = qword_27CB9F408;
  if (!qword_27CB9F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F408);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 20);
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 24);
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 24);
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.userAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 28);
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C, &type metadata for LiveActivityUserActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0F818()
{
  result = qword_27CB9F418;
  if (!qword_27CB9F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F418);
  }

  return result;
}

unint64_t sub_217B0F86C()
{
  result = qword_27CB9F420;
  if (!qword_27CB9F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F420);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.userAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 28);
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C, &type metadata for LiveActivityUserActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 32);
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B0FA70()
{
  result = qword_27CB9F430;
  if (!qword_27CB9F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F430);
  }

  return result;
}

unint64_t sub_217B0FAC4()
{
  result = qword_27CB9F438;
  if (!qword_27CB9F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F438);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 32);
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityDismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 36);
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B0FCC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B0FD44()
{
  result = qword_27CB9F448;
  if (!qword_27CB9F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F448);
  }

  return result;
}

unint64_t sub_217B0FD98()
{
  result = qword_27CB9F450;
  if (!qword_27CB9F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F450);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.liveActivityDismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscriptionFailureEvent(0) + 36);
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscriptionFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LiveActivitySubscriptionFailureEvent(0);
  v5 = v4[5];
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C, &type metadata for LiveActivityUserActionData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v12, v15);
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.liveActivityData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0) + 24);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.userAction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.liveActivityOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.liveActivityDismissalData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 LiveActivitySubscriptionFailureEvent.Model.init(eventData:liveActivityData:errorData:userAction:liveActivityOriginationData:liveActivityDismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v20 = a3[1];
  v21 = *a3;
  v11 = *(a3 + 4);
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  v17 = (a7 + v16[5]);
  *v17 = v9;
  v17[1] = v10;
  v18 = a7 + v16[6];
  result = v20;
  *v18 = v21;
  *(v18 + 16) = v20;
  *(v18 + 32) = v11;
  *(a7 + v16[7]) = v12;
  *(a7 + v16[8]) = v13;
  *(a7 + v16[9]) = v14;
  return result;
}

uint64_t sub_217B10438()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6974634172657375;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x746144726F727265;
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

uint64_t sub_217B1050C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B11798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B10534(uint64_t a1)
{
  v2 = sub_217B10928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B10570(uint64_t a1)
{
  v2 = sub_217B10928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B10E7C(0, &qword_27CB9F458, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B10928();
  sub_217D89E7C();
  LOBYTE(v18) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v18 = *v11;
    *&v19 = v12;
    v22 = 1;
    sub_217B0F464();

    sub_217D89CAC();

    v13 = (v3 + v10[6]);
    v14 = v13[3];
    v15 = v13[4];
    v18 = *v13;
    v19 = *(v13 + 1);
    v20 = v14;
    v21 = v15;
    v22 = 2;
    sub_217A60BE4();

    sub_217D89CAC();

    LOBYTE(v18) = *(v3 + v10[7]);
    v22 = 3;
    sub_217B0F86C();
    sub_217D89CAC();
    LOBYTE(v18) = *(v3 + v10[8]);
    v22 = 4;
    sub_217B0FAC4();
    sub_217D89C3C();
    LOBYTE(v18) = *(v3 + v10[9]);
    v22 = 5;
    sub_217B0FD98();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B10928()
{
  result = qword_27CB9F460;
  if (!qword_27CB9F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F460);
  }

  return result;
}

uint64_t LiveActivitySubscriptionFailureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_217D8899C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B10E7C(0, &qword_27CB9F468, MEMORY[0x277D844C8]);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B10928();
  v26 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  LOBYTE(v27) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v23;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v30 = 1;
  sub_217B0F410();
  sub_217D89BCC();
  v14 = *(&v27 + 1);
  v15 = &v11[v9[5]];
  *v15 = v27;
  *(v15 + 1) = v14;
  v30 = 2;
  sub_217A60B90();
  v23 = 0;
  sub_217D89BCC();
  v16 = v24;
  v17 = v29;
  v18 = &v11[v9[6]];
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  *(v18 + 4) = v17;
  v30 = 3;
  sub_217B0F818();
  sub_217D89BCC();
  v11[v9[7]] = v27;
  v30 = 4;
  sub_217B0FA70();
  sub_217D89B5C();
  v11[v9[8]] = v27;
  v30 = 5;
  sub_217B0FD44();
  sub_217D89B5C();
  (*(v16 + 8))(v26, v25);
  v11[v9[9]] = v27;
  sub_217B10EE0(v11, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B10F44(v11);
}

void sub_217B10E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B10928();
    v7 = a3(a1, &type metadata for LiveActivitySubscriptionFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B10EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B10F44(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivitySubscriptionFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B11078@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B0FCC8(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B0FCC8(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B0FCC8(0, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C, &type metadata for LiveActivityUserActionData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B0FCC8(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217B0FCC8(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v13, v16);
}

void sub_217B11384(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B0FCC8(319, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
    if (v2 <= 0x3F)
    {
      sub_217B0FCC8(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
      if (v3 <= 0x3F)
      {
        sub_217B0FCC8(319, &qword_27CB9F410, sub_217B0F818, sub_217B0F86C, &type metadata for LiveActivityUserActionData);
        if (v4 <= 0x3F)
        {
          sub_217B0FCC8(319, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
          if (v5 <= 0x3F)
          {
            sub_217B0FCC8(319, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
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

void sub_217B115A8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9F490, &type metadata for LiveActivityOriginationData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F498, &type metadata for LiveActivityDismissalData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217B11694()
{
  result = qword_27CB9F4A0;
  if (!qword_27CB9F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4A0);
  }

  return result;
}

unint64_t sub_217B116EC()
{
  result = qword_27CB9F4A8;
  if (!qword_27CB9F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4A8);
  }

  return result;
}

unint64_t sub_217B11744()
{
  result = qword_27CB9F4B0;
  if (!qword_27CB9F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4B0);
  }

  return result;
}

uint64_t sub_217B11798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCD900 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCD920 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::AggregateStateMode_optional __swiftcall AggregateStateMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AggregateStateMode.rawValue.getter()
{
  v1 = 0x6C75666574617473;
  if (*v0 != 1)
  {
    v1 = 0x73656C6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x766C6F7365726E75;
  }
}

uint64_t sub_217B11A6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v4 = 0x73656C6574617473;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x766C6F7365726E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C75666574617473;
  if (*a2 != 1)
  {
    v8 = 0x73656C6574617473;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x766C6F7365726E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B11B7C()
{
  result = qword_27CB9F4B8;
  if (!qword_27CB9F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F4B8);
  }

  return result;
}

uint64_t sub_217B11BD0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B11C7C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B11D14(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B11DC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE800000000000000;
  v5 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v5 = 0x73656C6574617473;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x766C6F7365726E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B11EF0()
{
  result = qword_2811C4040;
  if (!qword_2811C4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4040);
  }

  return result;
}

uint64_t sub_217B1200C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F4F0);
  __swift_project_value_buffer(v0, qword_27CB9F4F0);
  return sub_217D8866C();
}

uint64_t GroupLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GroupLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 20);
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 20);
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 28);
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupLoadEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 28);
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.resultActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 32);
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4, &type metadata for ResultActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B12660()
{
  result = qword_27CB9F510;
  if (!qword_27CB9F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F510);
  }

  return result;
}

unint64_t sub_217B126B4()
{
  result = qword_27CB9F518;
  if (!qword_27CB9F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F518);
  }

  return result;
}

uint64_t GroupLoadEvent.resultActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupLoadEvent(0) + 32);
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4, &type metadata for ResultActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for GroupLoadEvent(0);
  v5 = Event[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = Event[6];
  sub_217A608E0(0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = Event[7];
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = Event[8];
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4, &type metadata for ResultActionData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GroupLoadEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupLoadEvent.Model(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t sub_217B12AFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t GroupLoadEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupLoadEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AF7618(v17, &v16);
}

uint64_t GroupLoadEvent.Model.resultActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GroupLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

__n128 GroupLoadEvent.Model.init(eventData:feedData:timedData:groupData:resultActionData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = *a2;
  v10 = *(a2 + 2);
  v11 = *a5;
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for GroupLoadEvent.Model(0);
  v14 = a6 + v13[5];
  *v14 = v22;
  *(v14 + 16) = v10;
  v15 = v13[6];
  v16 = sub_217D889CC();
  (*(*(v16 - 8) + 32))(a6 + v15, a3, v16);
  v17 = a6 + v13[7];
  v18 = *(a4 + 112);
  *(v17 + 96) = *(a4 + 96);
  *(v17 + 112) = v18;
  *(v17 + 128) = *(a4 + 128);
  v19 = *(a4 + 48);
  *(v17 + 32) = *(a4 + 32);
  *(v17 + 48) = v19;
  v20 = *(a4 + 80);
  *(v17 + 64) = *(a4 + 64);
  *(v17 + 80) = v20;
  result = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = result;
  *(a6 + v13[8]) = v11;
  return result;
}

uint64_t sub_217B12D78()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x74614464656D6974;
  v4 = 0x74614470756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614464656566;
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

uint64_t sub_217B12E14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B14194(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B12E3C(uint64_t a1)
{
  v2 = sub_217B13290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B12E78(uint64_t a1)
{
  v2 = sub_217B13290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B139CC(0, &qword_27CB9F520, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B13290();
  sub_217D89E7C();
  LOBYTE(v38) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for GroupLoadEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = v11[1];
    v13 = v11[2];
    *&v38 = *v11;
    *(&v38 + 1) = v12;
    *&v39 = v13;
    LOBYTE(v29) = 1;
    sub_217AD1A68(v38, v12, v13);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v38, *(&v38 + 1), v39);
    v48 = v10;
    v47[0] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v14 = v48;
    v15 = (v3 + *(v48 + 28));
    v16 = v15[6];
    v17 = v15[4];
    v43 = v15[5];
    v44 = v16;
    v18 = v15[6];
    v19 = v15[8];
    v45 = v15[7];
    v46 = v19;
    v20 = v15[2];
    v21 = *v15;
    v39 = v15[1];
    v40 = v20;
    v22 = v15[2];
    v23 = v15[4];
    v41 = v15[3];
    v42 = v23;
    v24 = *v15;
    v35 = v18;
    v36 = v45;
    v37 = v15[8];
    v38 = v24;
    v31 = v22;
    v32 = v41;
    v33 = v17;
    v34 = v43;
    v29 = v21;
    v30 = v39;
    v28 = 3;
    sub_217AF7618(&v38, v27);
    sub_217A5D3B4();
    sub_217D89CAC();
    v27[6] = v35;
    v27[7] = v36;
    v27[8] = v37;
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v27[5] = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_217AF8104(v27);
    v26[15] = *(v3 + *(v14 + 32));
    v26[14] = 4;
    sub_217B126B4();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B13290()
{
  result = qword_27CB9F528;
  if (!qword_27CB9F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F528);
  }

  return result;
}

uint64_t GroupLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_217D889CC();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B139CC(0, &qword_27CB9F530, MEMORY[0x277D844C8]);
  v34 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for GroupLoadEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B13290();
  v36 = v9;
  v13 = v49;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v12;
  v16 = v32;
  LOBYTE(v39) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v17 = v34;
  sub_217D89BCC();
  (*(v31 + 32))(v15, v35, v5);
  v48 = 1;
  sub_217A5B978();
  sub_217D89B5C();
  v18 = v40;
  v19 = &v15[v10[5]];
  *v19 = v39;
  *(v19 + 2) = v18;
  LOBYTE(v39) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v35 = 0;
  sub_217D89BCC();
  v49 = a1;
  v20 = v15;
  (*(v30 + 32))(&v15[v10[6]], v14, v16);
  v48 = 3;
  sub_217A5D308();
  sub_217D89BCC();
  v21 = v33;
  v22 = (v20 + v10[7]);
  v23 = v46;
  v22[6] = v45;
  v22[7] = v23;
  v22[8] = v47;
  v24 = v42;
  v22[2] = v41;
  v22[3] = v24;
  v25 = v44;
  v22[4] = v43;
  v22[5] = v25;
  v26 = v40;
  *v22 = v39;
  v22[1] = v26;
  v37 = 4;
  sub_217B12660();
  sub_217D89BCC();
  (*(v21 + 8))(v36, v17);
  *(v20 + v10[8]) = v38;
  sub_217B13A30(v20, v29);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_217B13A94(v20);
}

void sub_217B139CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B13290();
    v7 = a3(a1, &type metadata for GroupLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B13A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B13A94(uint64_t a1)
{
  v2 = type metadata accessor for GroupLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B13BC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217A60360(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217A608E0(0);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217A60360(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217A60360(0, &qword_27CB9F508, sub_217B12660, sub_217B126B4, &type metadata for ResultActionData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217B13E2C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A60360(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A608E0(319);
      if (v3 <= 0x3F)
      {
        sub_217A60360(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A60360(319, &qword_27CB9F508, sub_217B12660, sub_217B126B4, &type metadata for ResultActionData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217B13FC8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217AD6554();
    if (v2 <= 0x3F)
    {
      sub_217D889CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217B14090()
{
  result = qword_27CB9F558;
  if (!qword_27CB9F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F558);
  }

  return result;
}

unint64_t sub_217B140E8()
{
  result = qword_27CB9F560;
  if (!qword_27CB9F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F560);
  }

  return result;
}

unint64_t sub_217B14140()
{
  result = qword_27CB9F568;
  if (!qword_27CB9F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F568);
  }

  return result;
}

uint64_t sub_217B14194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD970 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::NotificationStatus_optional __swiftcall NotificationStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationStatus.rawValue.getter()
{
  v1 = 0x6564726163736964;
  if (*v0 != 1)
  {
    v1 = 0x6465766965636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465766F6D6572;
  }
}

uint64_t sub_217B14418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564726163736964;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x6465766965636572;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465766F6D6572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6564726163736964;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x6465766965636572;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465766F6D6572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B14528()
{
  result = qword_27CB9F570;
  if (!qword_27CB9F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F570);
  }

  return result;
}

uint64_t sub_217B1457C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B14624(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B146B8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B14768(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6564726163736964;
  if (v2 != 1)
  {
    v5 = 0x6465766965636572;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465766F6D6572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B1488C()
{
  result = qword_27CB9F578;
  if (!qword_27CB9F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F578);
  }

  return result;
}

uint64_t sub_217B149A8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F5B0);
  __swift_project_value_buffer(v0, qword_27CB9F5B0);
  return sub_217D8866C();
}

uint64_t SportsSyncSheetEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsSyncSheetEngagementEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.userSelectionSportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 24);
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0, &type metadata for UserSelectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B14C9C()
{
  result = qword_27CB9F5D0;
  if (!qword_27CB9F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F5D0);
  }

  return result;
}

unint64_t sub_217B14CF0()
{
  result = qword_27CB9F5D8;
  if (!qword_27CB9F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F5D8);
  }

  return result;
}

uint64_t SportsSyncSheetEngagementEvent.userSelectionSportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 24);
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0, &type metadata for UserSelectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 28);
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSyncSheetEngagementEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 28);
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 32);
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B150A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SportsSyncSheetEngagementEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSyncSheetEngagementEvent(0) + 32);
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSyncSheetEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsSyncSheetEngagementEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0, &type metadata for UserSelectionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v11, v12, v13);
}

uint64_t sub_217B1549C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SportsSyncSheetEngagementEvent.Model.userSelectionSportsData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SportsSyncSheetEngagementEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSyncSheetEngagementEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

void SportsSyncSheetEngagementEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSyncSheetEngagementEvent.Model(0) + 32));
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

  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

void sub_217B1563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

__n128 SportsSyncSheetEngagementEvent.Model.init(eventData:timedData:userSelectionSportsData:userBundleSubscriptionContextData:campaignData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = *(a5 + 32);
  v13 = *(a5 + 40);
  v14 = sub_217D8899C();
  v22 = *(a5 + 16);
  v23 = *a5;
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  v16 = v15[5];
  v17 = sub_217D889CC();
  (*(*(v17 - 8) + 32))(a6 + v16, a2, v17);
  *(a6 + v15[6]) = v11;
  v18 = a6 + v15[7];
  v19 = *(a4 + 16);
  *v18 = *a4;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a4 + 32);
  *(v18 + 48) = *(a4 + 48);
  v20 = a6 + v15[8];
  result = v23;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 32) = v12;
  *(v20 + 40) = v13;
  return result;
}

unint64_t sub_217B157B0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x6E676961706D6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
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

uint64_t sub_217B15858@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B16B5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B15880(uint64_t a1)
{
  v2 = sub_217B15CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B158BC(uint64_t a1)
{
  v2 = sub_217B15CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsSyncSheetEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B1634C(0, &qword_27CB9F5E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B15CDC();
  sub_217D89E7C();
  LOBYTE(v37[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
    LOBYTE(v37[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v40 = *(v3 + v10[6]);
    v39 = 2;
    sub_217B14CF0();
    sub_217D89CAC();
    v11 = (v3 + v10[7]);
    v12 = v11[1];
    v37[0] = *v11;
    v37[1] = v12;
    v14 = *v11;
    v13 = v11[1];
    v37[2] = v11[2];
    v38 = *(v11 + 48);
    v33 = v14;
    v15 = v11[2];
    v34 = v13;
    v35 = v15;
    v36 = *(v11 + 48);
    v32 = 3;
    sub_217ACC004(v37, v30);
    sub_217A55B98();
    sub_217D89CAC();
    v30[0] = v33;
    v30[1] = v34;
    v30[2] = v35;
    v31 = v36;
    sub_217ACC69C(v30);
    v16 = (v3 + v10[8]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    v24 = *v16;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v23[15] = 4;
    sub_217B1563C(v24, v17, v18, v19, v20, v21);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v24, v25, v26, v27, v28, v29);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B15CDC()
{
  result = qword_27CB9F5E8;
  if (!qword_27CB9F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F5E8);
  }

  return result;
}

void sub_217B15D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t SportsSyncSheetEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_217D889CC();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B1634C(0, &qword_27CB9F5F0, MEMORY[0x277D844C8]);
  v33 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B15CDC();
  v32 = v9;
  v13 = v34;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v28;
  v16 = v29;
  LOBYTE(v38) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v17 = *(v15 + 32);
  v18 = v12;
  v34 = v5;
  v17(v12, v31);
  LOBYTE(v38) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v27 + 32))(&v12[v10[5]], v14, v16);
  LOBYTE(v35) = 2;
  sub_217B14C9C();
  v31 = 0;
  sub_217D89BCC();
  v12[v10[6]] = v38;
  v43 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v19 = v30;
  v20 = v18 + v10[7];
  v21 = v39;
  *v20 = v38;
  *(v20 + 16) = v21;
  *(v20 + 32) = v40;
  *(v20 + 48) = v41;
  v42 = 4;
  sub_217A66A84();
  sub_217D89B5C();
  (*(v19 + 8))(v32, v33);
  v22 = (v18 + v10[8]);
  v23 = v36;
  *v22 = v35;
  v22[1] = v23;
  v22[2] = v37;
  sub_217B163B0(v18, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B16414(v18);
}

void sub_217B1634C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B15CDC();
    v7 = a3(a1, &type metadata for SportsSyncSheetEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B163B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B16414(uint64_t a1)
{
  v2 = type metadata accessor for SportsSyncSheetEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B16548@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B150A4(0, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0, &type metadata for UserSelectionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B150A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B150A4(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v12, v13, v14);
}

void sub_217B167A4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B150A4(319, &qword_27CB9F5C8, sub_217B14C9C, sub_217B14CF0, &type metadata for UserSelectionData);
      if (v3 <= 0x3F)
      {
        sub_217B150A4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217B150A4(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217B16940(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217B169F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217B169F4()
{
  if (!qword_2811C7A98)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C7A98);
    }
  }
}

unint64_t sub_217B16A58()
{
  result = qword_27CB9F618;
  if (!qword_27CB9F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F618);
  }

  return result;
}

unint64_t sub_217B16AB0()
{
  result = qword_27CB9F620;
  if (!qword_27CB9F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F620);
  }

  return result;
}

unint64_t sub_217B16B08()
{
  result = qword_27CB9F628;
  if (!qword_27CB9F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F628);
  }

  return result;
}

uint64_t sub_217B16B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCD990 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217B16DEC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C4C70);
  __swift_project_value_buffer(v0, qword_2811C4C70);
  return sub_217D8866C();
}

uint64_t TagExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TagExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 24);
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 24);
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 28);
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 28);
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 32);
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 32);
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 36);
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B175F0()
{
  result = qword_2811C7C88;
  if (!qword_2811C7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C88);
  }

  return result;
}

unint64_t sub_217B17644()
{
  result = qword_2811C7C90;
  if (!qword_2811C7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C90);
  }

  return result;
}

uint64_t TagExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 36);
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 40);
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 40);
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 44);
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 44);
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 48);
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 48);
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 52);
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 52);
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 56);
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B17F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t TagExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagExposureEvent(0) + 56);
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TagExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t sub_217B185D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TagExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TagExposureEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TagExposureEvent.Model(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t TagExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TagExposureEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t TagExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 40));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t TagExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 44);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8, &type metadata for ArticleData);
}

uint64_t TagExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t TagExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 52));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[3];
  v8 = v3[5];
  v20 = v3[4];
  v9 = v20;
  v21 = v8;
  v10 = v3[1];
  v11 = v3[3];
  v18 = v3[2];
  v12 = v18;
  v19 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v12;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v10;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

uint64_t TagExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagExposureEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 TagExposureEvent.Model.init(eventData:timedData:tagData:feedPositionData:viewData:sectionData:userBundleSubscriptionContextData:articleData:feedData:groupData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t *a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *a4;
  v45 = *a5;
  v44 = a5[1];
  v42 = *(a4 + 4);
  v43 = *(a5 + 8);
  v48 = *a6;
  v47 = *(a6 + 2);
  v46 = *(a6 + 24);
  v50 = *a10;
  v49 = *(a10 + 2);
  v52 = a12[1];
  v53 = *a12;
  v51 = *(a12 + 16);
  v20 = sub_217D8899C();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for TagExposureEvent.Model(0);
  v22 = v21[5];
  v23 = sub_217D889CC();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = (a9 + v21[6]);
  *v24 = v17;
  v24[1] = v18;
  v25 = a9 + v21[7];
  *v25 = v19;
  *(v25 + 4) = v42;
  v26 = a9 + v21[8];
  *v26 = v45;
  *(v26 + 8) = v44;
  *(v26 + 16) = v43;
  v27 = a9 + v21[9];
  *v27 = v48;
  *(v27 + 16) = v47;
  *(v27 + 24) = v46;
  v28 = a9 + v21[10];
  v29 = *(a7 + 16);
  *v28 = *a7;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a7 + 32);
  *(v28 + 48) = *(a7 + 48);
  v30 = a9 + v21[11];
  v31 = *(a8 + 48);
  *(v30 + 32) = *(a8 + 32);
  *(v30 + 48) = v31;
  v32 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v32;
  *(v30 + 127) = *(a8 + 127);
  v33 = *(a8 + 112);
  *(v30 + 96) = *(a8 + 96);
  *(v30 + 112) = v33;
  v34 = *(a8 + 80);
  *(v30 + 64) = *(a8 + 64);
  *(v30 + 80) = v34;
  v35 = a9 + v21[12];
  *v35 = v50;
  *(v35 + 16) = v49;
  v36 = a9 + v21[13];
  v37 = *(a11 + 112);
  *(v36 + 96) = *(a11 + 96);
  *(v36 + 112) = v37;
  *(v36 + 128) = *(a11 + 128);
  v38 = *(a11 + 48);
  *(v36 + 32) = *(a11 + 32);
  *(v36 + 48) = v38;
  v39 = *(a11 + 80);
  *(v36 + 64) = *(a11 + 64);
  *(v36 + 80) = v39;
  result = *(a11 + 16);
  *v36 = *a11;
  *(v36 + 16) = result;
  v41 = a9 + v21[14];
  *v41 = v53;
  *(v41 + 8) = v52;
  *(v41 + 16) = v51;
  return result;
}

uint64_t sub_217B18C60(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x61746144676174;
    v8 = 0xD000000000000010;
    if (a1 != 3)
    {
      v8 = 0x6174614477656976;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6174614464656566;
    v2 = 0x74614470756F7267;
    if (a1 != 9)
    {
      v2 = 0x617373696D736964;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x446E6F6974636573;
    v4 = 0xD000000000000021;
    if (a1 != 6)
    {
      v4 = 0x44656C6369747261;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217B18DE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B1AEBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B18E10(uint64_t a1)
{
  v2 = sub_217B19680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B18E4C(uint64_t a1)
{
  v2 = sub_217B19680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B1A188(0, &qword_27CB9F630, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v51[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B19680();
  sub_217D89E7C();
  LOBYTE(v66) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for TagExposureEvent.Model(0);
    LOBYTE(v66) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    *&v66 = *v11;
    *(&v66 + 1) = v12;
    LOBYTE(v57) = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v13 = (v3 + v10[7]);
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 4);
    LODWORD(v66) = v14;
    BYTE4(v66) = v13;
    LOBYTE(v57) = 3;
    sub_217AD7710();
    sub_217D89C3C();
    v16 = (v3 + v10[8]);
    v17 = *v16;
    v18 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    *&v66 = v17;
    *(&v66 + 1) = v18;
    LOWORD(v67) = v16;
    LOBYTE(v57) = 4;
    sub_217A5E790();

    sub_217D89CAC();

    v19 = (v3 + v10[9]);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    LOBYTE(v19) = *(v19 + 24);
    v107 = v20;
    v108 = v21;
    v109 = v22;
    v110 = v19;
    v106 = 5;
    sub_217B17644();

    sub_217D89CAC();

    v23 = (v3 + v10[10]);
    v24 = v23[1];
    v104[0] = *v23;
    v104[1] = v24;
    v26 = *v23;
    v25 = v23[1];
    v104[2] = v23[2];
    v105 = *(v23 + 48);
    v100 = v26;
    v101 = v25;
    v102 = v23[2];
    v103 = *(v23 + 48);
    v99 = 6;
    sub_217ACC004(v104, &v66);
    sub_217A55B98();
    sub_217D89CAC();
    v90[0] = v100;
    v90[1] = v101;
    v90[2] = v102;
    v91 = v103;
    sub_217ACC69C(v90);
    v27 = v3 + v10[11];
    v28 = *(v27 + 96);
    v29 = *(v27 + 64);
    v96 = *(v27 + 80);
    v97 = v28;
    v30 = *(v27 + 96);
    *v98 = *(v27 + 112);
    v31 = *(v27 + 16);
    v32 = *(v27 + 48);
    v93 = *(v27 + 32);
    v94 = v32;
    v33 = *(v27 + 48);
    v95 = *(v27 + 64);
    v34 = *(v27 + 16);
    v92[0] = *v27;
    v92[1] = v34;
    v87 = v96;
    v88 = v30;
    v89[0] = *(v27 + 112);
    v84 = v93;
    v85 = v33;
    v86 = v29;
    *&v98[15] = *(v27 + 127);
    *(v89 + 15) = *(v27 + 127);
    v82 = v92[0];
    v83 = v31;
    v81 = 7;
    sub_217AE38AC(v92, &v66, &qword_2811C7DB8, &type metadata for ArticleData);
    sub_217ACF52C();
    sub_217D89C3C();
    v79[5] = v87;
    v79[6] = v88;
    *v80 = v89[0];
    *&v80[15] = *(v89 + 15);
    v79[2] = v84;
    v79[3] = v85;
    v79[4] = v86;
    v79[0] = v82;
    v79[1] = v83;
    sub_217AE4A44(v79, &qword_2811C7DB8, &type metadata for ArticleData);
    v35 = (v3 + v10[12]);
    v36 = v35[1];
    v37 = v35[2];
    v76 = *v35;
    v77 = v36;
    v78 = v37;
    v75 = 8;
    sub_217AD1A68(v76, v36, v37);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v76, v77, v78);
    v38 = (v3 + v10[13]);
    v39 = v38[6];
    v40 = v38[4];
    v71 = v38[5];
    v72 = v39;
    v41 = v38[6];
    v42 = v38[8];
    v73 = v38[7];
    v74 = v42;
    v43 = v38[2];
    v44 = *v38;
    v67 = v38[1];
    v68 = v43;
    v45 = v38[2];
    v46 = v38[4];
    v69 = v38[3];
    v70 = v46;
    v47 = *v38;
    v63 = v41;
    v64 = v73;
    v65 = v38[8];
    v66 = v47;
    v59 = v45;
    v60 = v69;
    v61 = v40;
    v62 = v71;
    v57 = v44;
    v58 = v67;
    v56 = 9;
    sub_217AE38AC(&v66, v55, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v55[7] = v64;
    v55[8] = v65;
    v55[2] = v59;
    v55[3] = v60;
    v55[5] = v62;
    v55[6] = v63;
    v55[4] = v61;
    v55[0] = v57;
    v55[1] = v58;
    sub_217AE4A44(v55, &qword_2811BD178, &type metadata for GroupData);
    v48 = (v3 + v10[14]);
    v49 = *v48;
    v50 = v48[1];
    LOBYTE(v48) = *(v48 + 16);
    v52 = v49;
    v53 = v50;
    v54 = v48;
    v51[7] = 10;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B19680()
{
  result = qword_2811C4C60;
  if (!qword_2811C4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4C60);
  }

  return result;
}

uint64_t TagExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_217D889CC();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v59 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B1A188(0, &qword_2811BCA60, MEMORY[0x277D844C8]);
  v62 = v8;
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for TagExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217B19680();
  v63 = v10;
  v15 = v64;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v16 = v60;
  v55 = v11;
  v64 = v13;
  LOBYTE(v83) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v17 = v61;
  sub_217D89BCC();
  v18 = v6;
  v19 = *(v59 + 32);
  v20 = v64;
  v61 = v18;
  v19(v64, v17);
  LOBYTE(v83) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v21 = v5;
  v22 = v58;
  sub_217D89BCC();
  v54 = 0;
  v23 = v21;
  v24 = v55;
  (*(v57 + 32))(&v20[v55[5]], v23, v22);
  LOBYTE(v70) = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v25 = *(&v83 + 1);
  v26 = &v20[v24[6]];
  *v26 = v83;
  *(v26 + 1) = v25;
  LOBYTE(v70) = 3;
  sub_217AD76BC();
  sub_217D89B5C();
  v27 = BYTE4(v83);
  v28 = &v20[v24[7]];
  *v28 = v83;
  v28[4] = v27;
  LOBYTE(v70) = 4;
  sub_217A5E738();
  sub_217D89BCC();
  v29 = *(&v83 + 1);
  v30 = v84;
  v31 = &v20[v24[8]];
  *v31 = v83;
  *(v31 + 1) = v29;
  *(v31 + 8) = v30;
  LOBYTE(v70) = 5;
  sub_217B175F0();
  sub_217D89BCC();
  v32 = v84;
  v33 = BYTE8(v84);
  v34 = &v20[v24[9]];
  *v34 = v83;
  *(v34 + 2) = v32;
  v34[24] = v33;
  v78 = 6;
  sub_217A54D08();
  sub_217D89BCC();
  v35 = &v20[v24[10]];
  v36 = v80;
  *v35 = v79;
  *(v35 + 1) = v36;
  *(v35 + 2) = v81;
  v35[48] = v82;
  v69 = 7;
  sub_217ACF4D8();
  sub_217D89B5C();
  v37 = &v20[v24[11]];
  v38 = *v77;
  *(v37 + 6) = v76;
  *(v37 + 7) = v38;
  *(v37 + 127) = *&v77[15];
  v39 = v73;
  *(v37 + 2) = v72;
  *(v37 + 3) = v39;
  v40 = v75;
  *(v37 + 4) = v74;
  *(v37 + 5) = v40;
  v41 = v71;
  *v37 = v70;
  *(v37 + 1) = v41;
  LOBYTE(v66) = 8;
  sub_217A5B978();
  sub_217D89B5C();
  v42 = v84;
  v43 = &v64[v55[12]];
  *v43 = v83;
  *(v43 + 2) = v42;
  v68 = 9;
  sub_217A5D308();
  sub_217D89B5C();
  v44 = &v64[v55[13]];
  v45 = v90;
  *(v44 + 6) = v89;
  *(v44 + 7) = v45;
  *(v44 + 8) = v91;
  v46 = v86;
  *(v44 + 2) = v85;
  *(v44 + 3) = v46;
  v47 = v88;
  *(v44 + 4) = v87;
  *(v44 + 5) = v47;
  v48 = v84;
  *v44 = v83;
  *(v44 + 1) = v48;
  v65 = 10;
  sub_217AD7D98();
  sub_217D89B5C();
  (*(v16 + 8))(v63, v62);
  v49 = v67;
  v50 = v56;
  v51 = v64;
  v52 = &v64[v55[14]];
  *v52 = v66;
  v52[16] = v49;
  sub_217B1A1EC(v51, v50);
  __swift_destroy_boxed_opaque_existential_1(v92);
  return sub_217B1A250(v51);
}

void sub_217B1A188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B19680();
    v7 = a3(a1, &type metadata for TagExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B1A1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B1A250(uint64_t a1)
{
  v2 = type metadata accessor for TagExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B1A384@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B17F08(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B17F08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B17F08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B17F08(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217B17F08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B17F08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217B17F08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217B17F08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217B17F08(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217B1A8B8(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B17F08(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
      if (v3 <= 0x3F)
      {
        sub_217B17F08(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
        if (v4 <= 0x3F)
        {
          sub_217B17F08(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            sub_217B17F08(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
            if (v6 <= 0x3F)
            {
              sub_217B17F08(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
              if (v7 <= 0x3F)
              {
                sub_217B17F08(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
                if (v8 <= 0x3F)
                {
                  sub_217B17F08(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B17F08(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
                    if (v10 <= 0x3F)
                    {
                      sub_217B17F08(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_217B1AC34(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C5238, &type metadata for FeedPositionData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7628, &type metadata for DismissalData);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217B1ADB8()
{
  result = qword_27CB9F638;
  if (!qword_27CB9F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F638);
  }

  return result;
}

unint64_t sub_217B1AE10()
{
  result = qword_2811C4C50;
  if (!qword_2811C4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4C50);
  }

  return result;
}

unint64_t sub_217B1AE68()
{
  result = qword_2811C4C58;
  if (!qword_2811C4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4C58);
  }

  return result;
}

uint64_t sub_217B1AEBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

NewsAnalytics::AppLaunchTakeoverTriggerResult_optional __swiftcall AppLaunchTakeoverTriggerResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppLaunchTakeoverTriggerResult.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD000000000000031;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0xD000000000000024;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD00000000000001BLL;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0x664F656369766564;
      break;
    case 0xF:
      result = 0xD000000000000019;
      break;
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 0x11:
      result = 0x52636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B1B4F0()
{
  v0 = AppLaunchTakeoverTriggerResult.rawValue.getter();
  v2 = v1;
  if (v0 == AppLaunchTakeoverTriggerResult.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217B1B590()
{
  result = qword_27CB9F640;
  if (!qword_27CB9F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F640);
  }

  return result;
}

uint64_t sub_217B1B5E4()
{
  sub_217D89E1C();
  AppLaunchTakeoverTriggerResult.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B1B64C(uint64_t a1)
{
  AppLaunchTakeoverTriggerResult.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217B1B6B0(uint64_t a1)
{
  sub_217D89E1C();
  AppLaunchTakeoverTriggerResult.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217B1B720@<X0>(unint64_t *a1@<X8>)
{
  result = AppLaunchTakeoverTriggerResult.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchTakeoverTriggerResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLaunchTakeoverTriggerResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B1B948()
{
  result = qword_2811BE1B8;
  if (!qword_2811BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1B8);
  }

  return result;
}

uint64_t ActionMethod.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_217B1BBD0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D88EDC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1, v7) != 1)
  {
    sub_217B1BC84(a1, v6);
    v9 = (*(v8 + 88))(v6, v7);
    if (v9 != *MEMORY[0x277D6E120])
    {
      if (v9 == *MEMORY[0x277D6E0E0])
      {
        v10 = 3;
        goto LABEL_4;
      }

      if (v9 == *MEMORY[0x277D6E0D8])
      {
        v10 = 2;
        goto LABEL_4;
      }

      if (v9 == *MEMORY[0x277D6E108])
      {
        v10 = 1;
        goto LABEL_4;
      }

      if (v9 == *MEMORY[0x277D6E118])
      {
        v10 = 4;
        goto LABEL_4;
      }

      if (v9 == *MEMORY[0x277D6E110])
      {
        v10 = 5;
        goto LABEL_4;
      }

      if (v9 == *MEMORY[0x277D6E0F8])
      {
        v10 = 6;
        goto LABEL_4;
      }

      if (v9 != *MEMORY[0x277D6E100])
      {
        if (v9 == *MEMORY[0x277D6E0D0])
        {
          v10 = 7;
          goto LABEL_4;
        }

        if (v9 == *MEMORY[0x277D6E128])
        {
          v10 = 8;
          goto LABEL_4;
        }

        (*(v8 + 8))(v6, v7);
      }
    }
  }

  v10 = 0;
LABEL_4:
  result = sub_217B1BC28(a1);
  *a2 = v10;
  return result;
}

void sub_217B1BBD0(uint64_t a1)
{
  if (!qword_27CB9F648)
  {
    sub_217D88EDC();
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB9F648);
    }
  }
}

uint64_t sub_217B1BC28(uint64_t a1)
{
  sub_217B1BBD0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B1BC84(uint64_t a1, uint64_t a2)
{
  sub_217B1BBD0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NewsAnalytics::ViewAction_optional __swiftcall ViewAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ViewAction.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707061;
      break;
    case 2:
      result = 0x6570697773;
      break;
    case 3:
      result = 0x656E696C64616568;
      break;
    case 4:
      result = 0x7061546575737369;
      break;
    case 5:
      result = 0x6B6E696C70656564;
      break;
    case 6:
      result = 0x6E6164726F666661;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6976614E72657375;
      break;
    case 9:
      result = 0x61646F4D6E65706FLL;
      break;
    case 0xA:
      result = 0x6369747241636F74;
      break;
    case 0xB:
      result = 0x6163696669746F6ELL;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 0x6154656C7A7A7570;
      break;
    case 0x10:
      result = 0xD000000000000022;
      break;
    case 0x11:
      result = 0x6E65746E49707061;
      break;
    case 0x12:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B1BFA4()
{
  v0 = ViewAction.rawValue.getter();
  v2 = v1;
  if (v0 == ViewAction.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217B1C044()
{
  result = qword_27CB9F650;
  if (!qword_27CB9F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F650);
  }

  return result;
}

uint64_t sub_217B1C098()
{
  sub_217D89E1C();
  ViewAction.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B1C100(uint64_t a1)
{
  ViewAction.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217B1C164(uint64_t a1)
{
  sub_217D89E1C();
  ViewAction.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217B1C1D4@<X0>(unint64_t *a1@<X8>)
{
  result = ViewAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B1C3FC()
{
  result = qword_2811C7E88;
  if (!qword_2811C7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E88);
  }

  return result;
}

uint64_t sub_217B1C4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x8000000217DCD9B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217B1C540(uint64_t a1)
{
  v2 = sub_217B1C700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B1C57C(uint64_t a1)
{
  v2 = sub_217B1C700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityCountData.encode(to:)(void *a1)
{
  sub_217B1C8D4(0, &qword_2811BC608, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1C700();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B1C700()
{
  result = qword_2811C0F10;
  if (!qword_2811C0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0F10);
  }

  return result;
}

uint64_t LiveActivityCountData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B1C8D4(0, &qword_2811BC9A8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1C700();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B1C8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B1C700();
    v7 = a3(a1, &type metadata for LiveActivityCountData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B1C93C()
{
  result = qword_2811C0EE8;
  if (!qword_2811C0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0EE8);
  }

  return result;
}

unint64_t sub_217B1C994()
{
  result = qword_2811C0EF0;
  if (!qword_2811C0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0EF0);
  }

  return result;
}

uint64_t sub_217B1CA00(void *a1)
{
  sub_217B1C8D4(0, &qword_2811BC608, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1C700();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B1CB6C()
{
  result = qword_27CB9F658;
  if (!qword_27CB9F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F658);
  }

  return result;
}

unint64_t sub_217B1CBC4()
{
  result = qword_2811C0F00;
  if (!qword_2811C0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0F00);
  }

  return result;
}

unint64_t sub_217B1CC1C()
{
  result = qword_2811C0F08;
  if (!qword_2811C0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0F08);
  }

  return result;
}

uint64_t sub_217B1CCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B1CD44(uint64_t a1)
{
  v2 = sub_217B1CF18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B1CD80(uint64_t a1)
{
  v2 = sub_217B1CF18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadData.encode(to:)(void *a1)
{
  sub_217B1D158(0, &qword_27CB9F660, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1CF18();
  sub_217D89E7C();
  v11 = v8;
  sub_217B1CF6C();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B1CF18()
{
  result = qword_27CB9F668;
  if (!qword_27CB9F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F668);
  }

  return result;
}

unint64_t sub_217B1CF6C()
{
  result = qword_27CB9F670;
  if (!qword_27CB9F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F670);
  }

  return result;
}

uint64_t DownloadData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B1D158(0, &qword_27CB9F678, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B1CF18();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B1D1BC();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B1D158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B1CF18();
    v7 = a3(a1, &type metadata for DownloadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B1D1BC()
{
  result = qword_27CB9F680;
  if (!qword_27CB9F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F680);
  }

  return result;
}

unint64_t sub_217B1D214()
{
  result = qword_2811C7A88;
  if (!qword_2811C7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7A88);
  }

  return result;
}

unint64_t sub_217B1D26C()
{
  result = qword_2811C7A90;
  if (!qword_2811C7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7A90);
  }

  return result;
}

unint64_t sub_217B1D314()
{
  result = qword_27CB9F688;
  if (!qword_27CB9F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F688);
  }

  return result;
}

unint64_t sub_217B1D36C()
{
  result = qword_27CB9F690;
  if (!qword_27CB9F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F690);
  }

  return result;
}

unint64_t sub_217B1D3C4()
{
  result = qword_27CB9F698;
  if (!qword_27CB9F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F698);
  }

  return result;
}

uint64_t sub_217B1D4E0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE868);
  __swift_project_value_buffer(v0, qword_2811BE868);
  return sub_217D8866C();
}

uint64_t SubscribeButtonExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscribeButtonExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 24);
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 24);
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 28);
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 28);
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 32);
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 32);
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 36);
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 36);
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 40);
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B1DE94()
{
  result = qword_2811C7D00;
  if (!qword_2811C7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D00);
  }

  return result;
}

unint64_t sub_217B1DEE8()
{
  result = qword_2811C7D08;
  if (!qword_2811C7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D08);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 40);
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 44);
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 44);
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 48);
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 48);
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 52);
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B1E44C()
{
  result = qword_2811C27D8;
  if (!qword_2811C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27D8);
  }

  return result;
}

unint64_t sub_217B1E4A0()
{
  result = qword_2811C27E0;
  if (!qword_2811C27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27E0);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 52);
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 56);
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 56);
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 60);
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 60);
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.subscribeButtonContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 64);
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B1EA04()
{
  result = qword_2811BEE20;
  if (!qword_2811BEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE20);
  }

  return result;
}

unint64_t sub_217B1EA58()
{
  result = qword_2811BEE28;
  if (!qword_2811BEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE28);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.subscribeButtonContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 64);
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 68);
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 68);
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 72);
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonExposureEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 72);
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 76);
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B1EFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B1F038()
{
  result = qword_2811C7F00;
  if (!qword_2811C7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F00);
  }

  return result;
}

unint64_t sub_217B1F08C()
{
  result = qword_2811C7F08;
  if (!qword_2811C7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F08);
  }

  return result;
}

uint64_t SubscribeButtonExposureEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonExposureEvent(0) + 76);
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscribeButtonExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v25 - 8) + 104))(a1 + v24, v8, v25);
  v26 = v4[15];
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v33 - 8) + 104))(a1 + v32, v8, v33);
  v34 = v4[19];
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v8, v35);
}

uint64_t sub_217B1F98C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SubscribeButtonExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8, &type metadata for ArticleData);
}

void SubscribeButtonExposureEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t SubscribeButtonExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscribeButtonExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 36));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

uint64_t SubscribeButtonExposureEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

void SubscribeButtonExposureEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t SubscribeButtonExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonExposureEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscribeButtonExposureEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 56);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t SubscribeButtonExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonExposureEvent.Model.subscribeButtonContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t SubscribeButtonExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 68);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t SubscribeButtonExposureEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 72));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_217AE38AC(&v11, &v10, &qword_27CB9F6A0, &type metadata for PuzzleData);
}

void SubscribeButtonExposureEvent.Model.recipeData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonExposureEvent.Model(0) + 76));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  sub_217AD86BC(v4, v5, v6, v7, v8);
}

__n128 SubscribeButtonExposureEvent.Model.init(eventData:timedData:articleData:channelData:feedData:groupData:paywallData:issueData:purchaseData:purchaseSessionData:sectionData:viewData:subscribeButtonContextData:userBundleSubscriptionContextData:puzzleData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, __int16 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, __int128 *a12, uint64_t *a13, __int16 *a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  v56 = *a5;
  v54 = *(a4 + 4);
  v55 = *(a5 + 2);
  v61 = a10[1];
  v62 = *a10;
  v59 = *a7;
  v60 = *(a10 + 16);
  v63 = a11[1];
  v64 = *a11;
  v67 = *a12;
  v66 = *(a12 + 2);
  v65 = *(a12 + 24);
  v69 = a13[1];
  v70 = *a13;
  v68 = *(a13 + 8);
  v71 = *a14;
  v74 = *(a17 + 32);
  v24 = sub_217D8899C();
  v72 = *(a17 + 16);
  v73 = *a17;
  v57 = a8[1];
  v58 = *a8;
  v52 = a4[1];
  v53 = *a4;
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  v26 = v25[5];
  v27 = sub_217D889CC();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = a9 + v25[6];
  v29 = *(a3 + 48);
  *(v28 + 32) = *(a3 + 32);
  *(v28 + 48) = v29;
  v30 = *(a3 + 16);
  *v28 = *a3;
  *(v28 + 16) = v30;
  *(v28 + 127) = *(a3 + 127);
  v31 = *(a3 + 112);
  *(v28 + 96) = *(a3 + 96);
  *(v28 + 112) = v31;
  v32 = *(a3 + 80);
  *(v28 + 64) = *(a3 + 64);
  *(v28 + 80) = v32;
  v33 = a9 + v25[7];
  *v33 = v53;
  *(v33 + 16) = v52;
  *(v33 + 32) = v54;
  v34 = a9 + v25[8];
  *v34 = v56;
  *(v34 + 16) = v55;
  v35 = (a9 + v25[9]);
  v36 = a6[7];
  v35[6] = a6[6];
  v35[7] = v36;
  v35[8] = a6[8];
  v37 = a6[3];
  v35[2] = a6[2];
  v35[3] = v37;
  v38 = a6[5];
  v35[4] = a6[4];
  v35[5] = v38;
  v39 = a6[1];
  *v35 = *a6;
  v35[1] = v39;
  *(a9 + v25[10]) = v59;
  v40 = (a9 + v25[11]);
  *v40 = v58;
  v40[1] = v57;
  v41 = a9 + v25[12];
  *v41 = v62;
  *(v41 + 8) = v61;
  *(v41 + 16) = v60;
  v42 = (a9 + v25[13]);
  *v42 = v64;
  v42[1] = v63;
  v43 = a9 + v25[14];
  *v43 = v67;
  *(v43 + 16) = v66;
  *(v43 + 24) = v65;
  v44 = a9 + v25[15];
  *v44 = v70;
  *(v44 + 8) = v69;
  *(v44 + 16) = v68;
  *(a9 + v25[16]) = v71;
  v45 = a9 + v25[17];
  *(v45 + 48) = *(a15 + 48);
  v46 = *(a15 + 32);
  *(v45 + 16) = *(a15 + 16);
  *(v45 + 32) = v46;
  *v45 = *a15;
  v47 = (a9 + v25[18]);
  v48 = a16[4];
  v47[3] = a16[3];
  v47[4] = v48;
  v49 = a16[2];
  v47[1] = a16[1];
  v47[2] = v49;
  *v47 = *a16;
  v50 = a9 + v25[19];
  result = v73;
  *v50 = v73;
  *(v50 + 16) = v72;
  *(v50 + 32) = v74;
  return result;
}

uint64_t sub_217B20238(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x74614464656D6974;
    case 2:
      return 0x44656C6369747261;
    case 3:
      v5 = 0x656E6E616863;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 4:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 5:
      return 0x74614470756F7267;
    case 6:
      v5 = 0x6C6177796170;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 7:
      return 0x7461446575737369;
    case 8:
      return 0x6573616863727570;
    case 9:
      return 0xD000000000000013;
    case 10:
      return 0x446E6F6974636573;
    case 11:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 12:
      return 0xD00000000000001ALL;
    case 13:
      return 0xD000000000000021;
    case 14:
      v3 = 0x656C7A7A7570;
      goto LABEL_11;
    case 15:
      v3 = 0x657069636572;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B203E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B23158(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B20418(uint64_t a1)
{
  v2 = sub_217B20F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B20454(uint64_t a1)
{
  v2 = sub_217B20F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B21E4C(0, &qword_27CB9F6A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v68[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B20F3C();
  sub_217D89E7C();
  LOBYTE(v106) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
    v137[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v138 = v10;
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 96);
    v13 = *(v11 + 64);
    v134 = *(v11 + 80);
    v135 = v12;
    v14 = *(v11 + 96);
    *v136 = *(v11 + 112);
    v15 = *(v11 + 16);
    v16 = *(v11 + 48);
    v131 = *(v11 + 32);
    v132 = v16;
    v17 = *(v11 + 48);
    v133 = *(v11 + 64);
    v18 = *(v11 + 16);
    v130[0] = *v11;
    v130[1] = v18;
    v127 = v134;
    v128 = v14;
    v129[0] = *(v11 + 112);
    v124 = v131;
    v125 = v17;
    v126 = v13;
    *&v136[15] = *(v11 + 127);
    *(v129 + 15) = *(v11 + 127);
    v122 = v130[0];
    v123 = v15;
    v121 = 2;
    sub_217AE38AC(v130, &v106, &qword_2811C7DB8, &type metadata for ArticleData);
    sub_217ACF52C();
    sub_217D89C3C();
    v119[5] = v127;
    v119[6] = v128;
    *v120 = v129[0];
    *&v120[15] = *(v129 + 15);
    v119[2] = v124;
    v119[3] = v125;
    v119[4] = v126;
    v119[0] = v122;
    v119[1] = v123;
    sub_217AE4A44(v119, &qword_2811C7DB8, &type metadata for ArticleData);
    v19 = v138;
    v20 = (v3 + v138[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    *&v106 = *v20;
    *(&v106 + 1) = v21;
    *&v107 = v22;
    *(&v107 + 1) = v23;
    *&v108 = v24;
    LOBYTE(v97) = 3;
    sub_217AD86BC(v106, v21, v22, v23, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v106, *(&v106 + 1), v107, *(&v107 + 1), v108);
    v25 = (v3 + v19[8]);
    v26 = v25[1];
    v27 = v25[2];
    v116 = *v25;
    v117 = v26;
    v118 = v27;
    v115 = 4;
    sub_217AD1A68(v116, v26, v27);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v116, v117, v118);
    v28 = (v3 + v19[9]);
    v29 = v28[6];
    v30 = v28[4];
    v111 = v28[5];
    v112 = v29;
    v31 = v28[6];
    v32 = v28[8];
    v113 = v28[7];
    v114 = v32;
    v33 = v28[2];
    v34 = *v28;
    v107 = v28[1];
    v108 = v33;
    v35 = v28[2];
    v36 = v28[4];
    v109 = v28[3];
    v110 = v36;
    v37 = *v28;
    v103 = v31;
    v104 = v113;
    v105 = v28[8];
    v106 = v37;
    v99 = v35;
    v100 = v109;
    v101 = v30;
    v102 = v111;
    v97 = v34;
    v98 = v107;
    v96 = 5;
    sub_217AE38AC(&v106, v95, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v95[6] = v103;
    v95[7] = v104;
    v95[8] = v105;
    v95[2] = v99;
    v95[3] = v100;
    v95[4] = v101;
    v95[5] = v102;
    v95[0] = v97;
    v95[1] = v98;
    sub_217AE4A44(v95, &qword_2811BD178, &type metadata for GroupData);
    LOWORD(v83[0]) = *(v3 + v19[10]);
    LOBYTE(v76) = 6;
    sub_217B1DEE8();
    sub_217D89C3C();
    v38 = (v3 + v19[11]);
    v39 = v38[1];
    v40 = v38[2];
    v41 = v38[3];
    *&v83[0] = *v38;
    *(&v83[0] + 1) = v39;
    *&v83[1] = v40;
    *(&v83[1] + 1) = v41;
    LOBYTE(v76) = 7;
    sub_217AE39D0(*&v83[0], v39, v40, v41);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*&v83[0], *(&v83[0] + 1), *&v83[1], *(&v83[1] + 1));
    v42 = (v3 + v19[12]);
    v43 = *v42;
    v44 = v42[1];
    LOBYTE(v42) = *(v42 + 16);
    *&v83[0] = v43;
    *(&v83[0] + 1) = v44;
    LOBYTE(v83[1]) = v42;
    LOBYTE(v76) = 8;
    sub_217AFF378();

    sub_217D89CAC();

    v45 = (v3 + v19[13]);
    v46 = v45[1];
    *&v83[0] = *v45;
    *(&v83[0] + 1) = v46;
    LOBYTE(v76) = 9;
    sub_217B1E4A0();

    sub_217D89CAC();

    v48 = v3 + v19[14];
    v49 = *(v48 + 24);
    *&v83[0] = *v48;
    *(v83 + 8) = *(v48 + 8);
    BYTE8(v83[1]) = v49;
    LOBYTE(v76) = 10;
    sub_217B17644();

    sub_217D89C3C();

    v50 = (v3 + v138[15]);
    v51 = *v50;
    v52 = v50[1];
    LOWORD(v50) = *(v50 + 8);
    *&v83[0] = v51;
    *(&v83[0] + 1) = v52;
    LOWORD(v83[1]) = v50;
    LOBYTE(v76) = 11;
    sub_217A5E790();

    sub_217D89CAC();

    v94 = *(v3 + v138[16]);
    v93 = 12;
    sub_217B1EA58();
    sub_217D89CAC();
    v53 = (v3 + v138[17]);
    v54 = v53[1];
    v91[0] = *v53;
    v91[1] = v54;
    v56 = *v53;
    v55 = v53[1];
    v91[2] = v53[2];
    v92 = *(v53 + 48);
    v87 = v56;
    v88 = v55;
    v89 = v53[2];
    v90 = *(v53 + 48);
    v86 = 13;
    sub_217ACC004(v91, v83);
    sub_217A55B98();
    sub_217D89CAC();
    v81[0] = v87;
    v81[1] = v88;
    v81[2] = v89;
    v82 = v90;
    sub_217ACC69C(v81);
    v57 = (v3 + v138[18]);
    v58 = v57[4];
    v59 = v57[1];
    v60 = v57[2];
    v84 = v57[3];
    v85 = v58;
    v61 = *v57;
    v62 = *v57;
    v83[1] = v57[1];
    v83[2] = v60;
    v83[0] = v61;
    v78 = v60;
    v79 = v84;
    v80 = v57[4];
    v76 = v62;
    v77 = v59;
    v75 = 14;
    sub_217AE38AC(v83, v74, &qword_27CB9F6A0, &type metadata for PuzzleData);
    sub_217AD6D08();
    sub_217D89C3C();
    v74[2] = v78;
    v74[3] = v79;
    v74[4] = v80;
    v74[0] = v76;
    v74[1] = v77;
    sub_217AE4A44(v74, &qword_27CB9F6A0, &type metadata for PuzzleData);
    v63 = (v3 + v138[19]);
    v64 = v63[1];
    v65 = v63[2];
    v66 = v63[3];
    v67 = v63[4];
    v69 = *v63;
    v70 = v64;
    v71 = v65;
    v72 = v66;
    v73 = v67;
    v68[7] = 15;
    sub_217AD86BC(v69, v64, v65, v66, v67);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v69, v70, v71, v72, v73);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B20F3C()
{
  result = qword_27CB9F6B0;
  if (!qword_27CB9F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6B0);
  }

  return result;
}

void SubscribeButtonExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v66 = sub_217D889CC();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v65 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B21E4C(0, &qword_27CB9F6B8, MEMORY[0x277D844C8]);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v61 - v8;
  v10 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217B20F3C();
  v70 = v9;
  v14 = v71;
  sub_217D89E5C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v106);
  }

  else
  {
    v62 = v10;
    v71 = v12;
    LOBYTE(v97) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v15 = v67;
    sub_217D89BCC();
    v16 = v5;
    v17 = *(v65 + 32);
    v18 = v71;
    v67 = v16;
    v17(v71, v15);
    LOBYTE(v97) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v19 = v4;
    v20 = v66;
    sub_217D89BCC();
    v61[2] = 0;
    v21 = v19;
    v22 = v62;
    (*(v64 + 32))(&v18[v62[5]], v21, v20);
    v88 = 2;
    sub_217ACF4D8();
    sub_217D89B5C();
    v23 = &v18[v22[6]];
    v24 = v94;
    v25 = *v96;
    *(v23 + 6) = v95;
    *(v23 + 7) = v25;
    *(v23 + 127) = *&v96[15];
    v26 = v90;
    v27 = v92;
    *(v23 + 2) = v91;
    *(v23 + 3) = v27;
    *(v23 + 4) = v93;
    *(v23 + 5) = v24;
    *v23 = v89;
    *(v23 + 1) = v26;
    LOBYTE(v77) = 3;
    sub_217AD07F8();
    sub_217D89B5C();
    v28 = v99;
    v29 = &v18[v22[7]];
    v30 = v98;
    *v29 = v97;
    *(v29 + 1) = v30;
    *(v29 + 4) = v28;
    LOBYTE(v77) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v31 = v98;
    v32 = &v18[v22[8]];
    *v32 = v97;
    *(v32 + 2) = v31;
    v87 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v33 = &v18[v22[9]];
    v34 = v104;
    *(v33 + 6) = v103;
    *(v33 + 7) = v34;
    *(v33 + 8) = v105;
    v35 = v100;
    *(v33 + 2) = v99;
    *(v33 + 3) = v35;
    v36 = v102;
    *(v33 + 4) = v101;
    *(v33 + 5) = v36;
    v37 = v98;
    *v33 = v97;
    *(v33 + 1) = v37;
    LOBYTE(v83) = 6;
    sub_217B1DE94();
    sub_217D89B5C();
    *&v18[v22[10]] = v77;
    LOBYTE(v83) = 7;
    sub_217ACFF40();
    sub_217D89B5C();
    v38 = &v18[v22[11]];
    v39 = v78;
    *v38 = v77;
    *(v38 + 1) = v39;
    LOBYTE(v83) = 8;
    sub_217AFF324();
    sub_217D89BCC();
    v40 = *(&v77 + 1);
    v41 = v78;
    v42 = &v71[v62[12]];
    *v42 = v77;
    *(v42 + 1) = v40;
    v42[16] = v41;
    LOBYTE(v83) = 9;
    sub_217B1E44C();
    sub_217D89BCC();
    v43 = *(&v77 + 1);
    v44 = &v71[v62[13]];
    *v44 = v77;
    *(v44 + 1) = v43;
    LOBYTE(v83) = 10;
    sub_217B175F0();
    sub_217D89B5C();
    v45 = v78;
    v46 = BYTE8(v78);
    v47 = &v71[v62[14]];
    *v47 = v77;
    *(v47 + 2) = v45;
    v47[24] = v46;
    LOBYTE(v83) = 11;
    sub_217A5E738();
    sub_217D89BCC();
    v48 = *(&v77 + 1);
    v49 = v78;
    v50 = &v71[v62[15]];
    *v50 = v77;
    *(v50 + 1) = v48;
    *(v50 + 8) = v49;
    LOBYTE(v83) = 12;
    sub_217B1EA04();
    sub_217D89BCC();
    *&v71[v62[16]] = v77;
    v82 = 13;
    sub_217A54D08();
    sub_217D89BCC();
    v51 = &v71[v62[17]];
    v52 = v84;
    *v51 = v83;
    *(v51 + 1) = v52;
    *(v51 + 2) = v85;
    v51[48] = v86;
    v76 = 14;
    sub_217AD6CB4();
    sub_217D89B5C();
    v53 = &v71[v62[18]];
    v54 = v80;
    *(v53 + 2) = v79;
    *(v53 + 3) = v54;
    *(v53 + 4) = v81;
    v55 = v78;
    *v53 = v77;
    *(v53 + 1) = v55;
    v72 = 15;
    sub_217B1F038();
    sub_217D89B5C();
    (*(v68 + 8))(v70, v69);
    v56 = v75;
    v57 = v63;
    v58 = v71;
    v59 = &v71[v62[19]];
    v60 = v74;
    *v59 = v73;
    *(v59 + 1) = v60;
    *(v59 + 4) = v56;
    sub_217B21EB0(v58, v57);
    __swift_destroy_boxed_opaque_existential_1(v106);
    sub_217B21F14(v58);
  }
}

void sub_217B21E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B20F3C();
    v7 = a3(a1, &type metadata for SubscribeButtonExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B21EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B21F14(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B22048@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B1EFBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B1EFBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217B1EFBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217B1EFBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217B1EFBC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_217B1EFBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  sub_217B1EFBC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217B1EFBC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217B1EFBC(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v26 - 8) + 104))(a2 + v25, v9, v26);
  v27 = a1[15];
  sub_217B1EFBC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217B1EFBC(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217B1EFBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  sub_217B1EFBC(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v34 - 8) + 104))(a2 + v33, v9, v34);
  v35 = a1[19];
  sub_217B1EFBC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v9, v36);
}

void sub_217B227D4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B1EFBC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217B1EFBC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217B1EFBC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217B1EFBC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217B1EFBC(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
              if (v7 <= 0x3F)
              {
                sub_217B1EFBC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_217B1EFBC(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B1EFBC(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
                    if (v10 <= 0x3F)
                    {
                      sub_217B1EFBC(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
                      if (v11 <= 0x3F)
                      {
                        sub_217B1EFBC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                        if (v12 <= 0x3F)
                        {
                          sub_217B1EFBC(319, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
                          if (v13 <= 0x3F)
                          {
                            sub_217B1EFBC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                            if (v14 <= 0x3F)
                            {
                              sub_217B1EFBC(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
                              if (v15 <= 0x3F)
                              {
                                sub_217B1EFBC(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_217B22CE0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7CF8, &type metadata for PaywallData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811C7C80, &type metadata for SectionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_27CB9F6A0, &type metadata for PuzzleData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811C7EF8, &type metadata for RecipeData);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SubscribeButtonExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscribeButtonExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B23054()
{
  result = qword_27CB9F6D0;
  if (!qword_27CB9F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6D0);
  }

  return result;
}

unint64_t sub_217B230AC()
{
  result = qword_27CB9F6D8;
  if (!qword_27CB9F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6D8);
  }

  return result;
}

unint64_t sub_217B23104()
{
  result = qword_27CB9F6E0;
  if (!qword_27CB9F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6E0);
  }

  return result;
}

uint64_t sub_217B23158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD9F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 15;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t RecentSearchListData.recentSearch.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217B236E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6553746E65636572 && a2 == 0xEC00000068637261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B23774(uint64_t a1)
{
  v2 = sub_217B23994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B237B0(uint64_t a1)
{
  v2 = sub_217B23994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentSearchListData.encode(to:)(void *a1)
{
  sub_217B23C5C(0, &qword_27CB9F6E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B23994();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217B239E8();
  sub_217B23CC0(&qword_27CB9F700, sub_217B23A38, MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B23994()
{
  result = qword_27CB9F6F0;
  if (!qword_27CB9F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F6F0);
  }

  return result;
}

void sub_217B239E8()
{
  if (!qword_27CB9F6F8)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9F6F8);
    }
  }
}

unint64_t sub_217B23A38()
{
  result = qword_2811C7EE0;
  if (!qword_2811C7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7EE0);
  }

  return result;
}

uint64_t RecentSearchListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217B23C5C(0, &qword_27CB9F708, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B23994();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B239E8();
    sub_217B23CC0(&qword_27CB9F710, sub_217B23D2C, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B23C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B23994();
    v7 = a3(a1, &type metadata for RecentSearchListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B23CC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217B239E8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B23D2C()
{
  result = qword_2811C7ED8;
  if (!qword_2811C7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7ED8);
  }

  return result;
}

unint64_t sub_217B23D84()
{
  result = qword_27CB9F718;
  if (!qword_27CB9F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F718);
  }

  return result;
}

unint64_t sub_217B23DDC()
{
  result = qword_27CB9F720;
  if (!qword_27CB9F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F720);
  }

  return result;
}

unint64_t sub_217B23E84()
{
  result = qword_27CB9F728;
  if (!qword_27CB9F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F728);
  }

  return result;
}

unint64_t sub_217B23EDC()
{
  result = qword_27CB9F730;
  if (!qword_27CB9F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F730);
  }

  return result;
}

unint64_t sub_217B23F34()
{
  result = qword_27CB9F738;
  if (!qword_27CB9F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F738);
  }

  return result;
}

NewsAnalytics::GalleryType_optional __swiftcall GalleryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GalleryType.rawValue.getter()
{
  v1 = 0x636961736F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x7069727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217B24038(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x636961736F6DLL;
  if (v2 != 1)
  {
    v4 = 0x7069727473;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x636961736F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x7069727473;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B24130()
{
  result = qword_27CB9F740;
  if (!qword_27CB9F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F740);
  }

  return result;
}

uint64_t sub_217B24184()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B24220(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B242A8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B2434C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x636961736F6DLL;
  if (v2 != 1)
  {
    v5 = 0x7069727473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B24464()
{
  result = qword_2811C7D28;
  if (!qword_2811C7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D28);
  }

  return result;
}

uint64_t sub_217B24580()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F778);
  __swift_project_value_buffer(v0, qword_27CB9F778);
  return sub_217D8866C();
}

uint64_t AppleIdSignInEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppleIdSignInEvent.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 20);
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B24784()
{
  result = qword_2811C7EE8;
  if (!qword_2811C7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7EE8);
  }

  return result;
}

unint64_t sub_217B247D8()
{
  result = qword_2811C7EF0;
  if (!qword_2811C7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7EF0);
  }

  return result;
}

uint64_t AppleIdSignInEvent.resultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 20);
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 24);
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIdSignInEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 24);
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 28);
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIdSignInEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 28);
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 32);
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIdSignInEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 32);
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 36);
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B24EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AppleIdSignInEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIdSignInEvent(0) + 36);
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppleIdSignInEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppleIdSignInEvent(0);
  v5 = v4[5];
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t AppleIdSignInEvent.Model.resultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppleIdSignInEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AppleIdSignInEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppleIdSignInEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppleIdSignInEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppleIdSignInEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AppleIdSignInEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppleIdSignInEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AppleIdSignInEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppleIdSignInEvent.Model(0) + 36));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 AppleIdSignInEvent.Model.init(eventData:resultData:paywallData:purchaseData:purchaseSessionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = *a5;
  v16 = a5[1];
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for AppleIdSignInEvent.Model(0);
  *(a7 + v18[5]) = v10;
  *(a7 + v18[6]) = v11;
  v19 = a7 + v18[7];
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  v20 = (a7 + v18[8]);
  *v20 = v15;
  v20[1] = v16;
  v21 = a7 + v18[9];
  v22 = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 16) = v22;
  result = *(a6 + 32);
  *(v21 + 32) = result;
  *(v21 + 48) = *(a6 + 48);
  return result;
}

uint64_t sub_217B255E4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6573616863727570;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000021;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6144746C75736572;
  if (v1 != 1)
  {
    v5 = 0x446C6C6177796170;
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

uint64_t sub_217B256BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B26970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B256E4(uint64_t a1)
{
  v2 = sub_217B25AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B25720(uint64_t a1)
{
  v2 = sub_217B25AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppleIdSignInEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B26030(0, &qword_27CB9F790, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B25AF8();
  sub_217D89E7C();
  LOBYTE(v27) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AppleIdSignInEvent.Model(0);
    LOBYTE(v27) = *(v3 + v10[5]);
    LOBYTE(v23) = 1;
    sub_217B247D8();
    sub_217D89CAC();
    LOWORD(v27) = *(v3 + v10[6]);
    LOBYTE(v23) = 2;
    sub_217B1DEE8();
    sub_217D89C3C();
    v11 = (v3 + v10[7]);
    v12 = *v11;
    v13 = v11[1];
    LOBYTE(v11) = *(v11 + 16);
    *&v27 = v12;
    *(&v27 + 1) = v13;
    LOBYTE(v28) = v11;
    LOBYTE(v23) = 3;
    sub_217AFF378();

    sub_217D89C3C();

    v14 = (v3 + v10[8]);
    v15 = v14[1];
    v31 = *v14;
    v32 = v15;
    v34 = 4;
    sub_217B1E4A0();

    sub_217D89C3C();

    v16 = (v3 + v10[9]);
    v17 = v16[1];
    v27 = *v16;
    v28 = v17;
    v19 = *v16;
    v18 = v16[1];
    v29 = v16[2];
    v30 = *(v16 + 48);
    v23 = v19;
    v24 = v18;
    v25 = v16[2];
    v26 = *(v16 + 48);
    v33 = 5;
    sub_217ACC004(&v27, v21);
    sub_217A55B98();
    sub_217D89CAC();
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v22 = v26;
    sub_217ACC69C(v21);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B25AF8()
{
  result = qword_27CB9F798;
  if (!qword_27CB9F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F798);
  }

  return result;
}

uint64_t AppleIdSignInEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_217D8899C();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B26030(0, &qword_27CB9F7A0, MEMORY[0x277D844C8]);
  v26 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AppleIdSignInEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B25AF8();
  v25 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v14 = v22;
  v13 = v23;
  LOBYTE(v27) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v24;
  sub_217D89BCC();
  (*(v13 + 32))(v12, v15, v4);
  v31 = 1;
  sub_217B24784();
  sub_217D89BCC();
  *(v12 + v9[5]) = v27;
  v31 = 2;
  sub_217B1DE94();
  sub_217D89B5C();
  *(v12 + v9[6]) = v27;
  v31 = 3;
  sub_217AFF324();
  sub_217D89B5C();
  v16 = v28;
  v17 = v12 + v9[7];
  *v17 = v27;
  *(v17 + 16) = v16;
  v31 = 4;
  sub_217B1E44C();
  sub_217D89B5C();
  *(v12 + v9[8]) = v27;
  v31 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v14 + 8))(v25, v26);
  v18 = v12 + v9[9];
  v19 = v28;
  *v18 = v27;
  *(v18 + 16) = v19;
  *(v18 + 32) = v29;
  *(v18 + 48) = v30;
  sub_217B26094(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B260F8(v12);
}

void sub_217B26030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B25AF8();
    v7 = a3(a1, &type metadata for AppleIdSignInEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B26094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIdSignInEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B260F8(uint64_t a1)
{
  v2 = type metadata accessor for AppleIdSignInEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B2622C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B24EEC(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B24EEC(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B24EEC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217B24EEC(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217B24EEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217B26540(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B24EEC(319, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
    if (v2 <= 0x3F)
    {
      sub_217B24EEC(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
      if (v3 <= 0x3F)
      {
        sub_217B24EEC(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
        if (v4 <= 0x3F)
        {
          sub_217B24EEC(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
          if (v5 <= 0x3F)
          {
            sub_217B24EEC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
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

void sub_217B26764(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7CF8, &type metadata for PaywallData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F108, &type metadata for PurchaseData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9F7C8, &type metadata for PurchaseSessionData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217B2686C()
{
  result = qword_27CB9F7D0;
  if (!qword_27CB9F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F7D0);
  }

  return result;
}

unint64_t sub_217B268C4()
{
  result = qword_27CB9F7D8;
  if (!qword_27CB9F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F7D8);
  }

  return result;
}

unint64_t sub_217B2691C()
{
  result = qword_27CB9F7E0;
  if (!qword_27CB9F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F7E0);
  }

  return result;
}

uint64_t sub_217B26970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144746C75736572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

id FCBundleSubscriptionManagerType.bundleContainsChannel(_:)(void *a1)
{
  v3 = [v1 cachedSubscription];
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_217D8954C();
    v4 = sub_217D8951C();
  }

  v5 = [v3 containsTagID_];

  return v5;
}

uint64_t sub_217B26CF8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F818);
  __swift_project_value_buffer(v0, qword_27CB9F818);
  return sub_217D8866C();
}

uint64_t ListenSheetEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ListenSheetEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 24);
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 24);
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 28);
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 28);
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 32);
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 32);
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 36);
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 36);
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 40);
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 40);
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 44);
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 44);
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 48);
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenSheetEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 48);
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.listenSheetActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 52);
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C, &type metadata for ListenSheetActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B27BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B27C38()
{
  result = qword_27CB9F838;
  if (!qword_27CB9F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F838);
  }

  return result;
}

unint64_t sub_217B27C8C()
{
  result = qword_27CB9F840;
  if (!qword_27CB9F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F840);
  }

  return result;
}

uint64_t ListenSheetEvent.listenSheetActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenSheetEvent(0) + 52);
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C, &type metadata for ListenSheetActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenSheetEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ListenSheetEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C, &type metadata for ListenSheetActionData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t sub_217B282BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ListenSheetEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ListenSheetEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ListenSheetEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t ListenSheetEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ListenSheetEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 40));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

void ListenSheetEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t ListenSheetEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ListenSheetEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ListenSheetEvent.Model.listenSheetActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ListenSheetEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 ListenSheetEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:userBundleSubscriptionContextData:issueData:issueViewData:listenSheetActionData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, char *a11)
{
  v18 = *a4;
  v19 = a4[1];
  v20 = *(a4 + 16);
  v44 = *(a4 + 17);
  v42 = a4[4];
  v43 = a4[3];
  v48 = *a6;
  v47 = *(a6 + 2);
  v50 = *a10;
  v49 = a10[1];
  v51 = *a11;
  v21 = sub_217D8899C();
  v45 = a8[1];
  v46 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ListenSheetEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  v26 = *(a3 + 48);
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = v26;
  v27 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v27;
  *(v25 + 127) = *(a3 + 127);
  v28 = *(a3 + 112);
  *(v25 + 96) = *(a3 + 96);
  *(v25 + 112) = v28;
  v29 = *(a3 + 80);
  *(v25 + 64) = *(a3 + 64);
  *(v25 + 80) = v29;
  v30 = a9 + v22[7];
  *v30 = v18;
  *(v30 + 8) = v19;
  *(v30 + 16) = v20;
  *(v30 + 17) = v44;
  *(v30 + 24) = v43;
  *(v30 + 32) = v42;
  v31 = (a9 + v22[8]);
  v32 = a5[3];
  v31[2] = a5[2];
  v31[3] = v32;
  v33 = a5[1];
  *v31 = *a5;
  v31[1] = v33;
  v34 = a5[8];
  v31[7] = a5[7];
  v31[8] = v34;
  v35 = a5[6];
  v31[5] = a5[5];
  v31[6] = v35;
  v31[4] = a5[4];
  v36 = a9 + v22[9];
  *v36 = v48;
  *(v36 + 16) = v47;
  v37 = a9 + v22[10];
  v38 = *(a7 + 16);
  *v37 = *a7;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a7 + 32);
  *(v37 + 48) = *(a7 + 48);
  v39 = (a9 + v22[11]);
  result = v46;
  *v39 = v46;
  v39[1] = v45;
  v41 = (a9 + v22[12]);
  *v41 = v50;
  v41[1] = v49;
  *(a9 + v22[13]) = v51;
  return result;
}

unint64_t sub_217B288A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7461446575737369;
    v6 = 0x6569566575737369;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174614464656566;
    if (a1 != 5)
    {
      v7 = 0xD000000000000021;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x44656C6369747261;
    v3 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217B28A00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B2AA24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B28A34(uint64_t a1)
{
  v2 = sub_217B291F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B28A70(uint64_t a1)
{
  v2 = sub_217B291F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ListenSheetEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B29C9C(0, &qword_27CB9F848, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B291F8();
  sub_217D89E7C();
  LOBYTE(v80) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ListenSheetEvent.Model(0);
    v114[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v115 = v10;
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 96);
    v13 = *(v11 + 64);
    v111 = *(v11 + 80);
    v112 = v12;
    v14 = *(v11 + 96);
    *v113 = *(v11 + 112);
    v15 = *(v11 + 16);
    v16 = *(v11 + 48);
    v108 = *(v11 + 32);
    v109 = v16;
    v17 = *(v11 + 48);
    v110 = *(v11 + 64);
    v18 = *(v11 + 16);
    v107[0] = *v11;
    v107[1] = v18;
    v104 = v111;
    v105 = v14;
    v106[0] = *(v11 + 112);
    v101 = v108;
    v102 = v17;
    v103 = v13;
    *&v113[15] = *(v11 + 127);
    *(v106 + 15) = *(v11 + 127);
    v99 = v107[0];
    v100 = v15;
    v98 = 2;
    sub_217AD1630(v107, &v80);
    sub_217ACF52C();
    sub_217D89CAC();
    v96[5] = v104;
    v96[6] = v105;
    *v97 = v106[0];
    *&v97[15] = *(v106 + 15);
    v96[2] = v101;
    v96[3] = v102;
    v96[4] = v103;
    v96[0] = v99;
    v96[1] = v100;
    sub_217AD2864(v96);
    v19 = (v3 + v115[7]);
    v20 = v19[1];
    v21 = *(v19 + 16);
    v22 = *(v19 + 17);
    v23 = v19[3];
    v24 = v19[4];
    v90 = *v19;
    v91 = v20;
    v92 = v21;
    v93 = v22;
    v94 = v23;
    v95 = v24;
    v89 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v25 = v115;
    v26 = (v3 + v115[8]);
    v27 = v26[6];
    v28 = v26[4];
    v85 = v26[5];
    v86 = v27;
    v29 = v26[6];
    v30 = v26[8];
    v87 = v26[7];
    v88 = v30;
    v31 = v26[2];
    v32 = *v26;
    v81 = v26[1];
    v82 = v31;
    v33 = v26[2];
    v34 = v26[4];
    v83 = v26[3];
    v84 = v34;
    v35 = *v26;
    v77 = v29;
    v78 = v87;
    v79 = v26[8];
    v80 = v35;
    v73 = v33;
    v74 = v83;
    v75 = v28;
    v76 = v85;
    v71 = v32;
    v72 = v81;
    v70 = 4;
    sub_217AD87FC(&v80, v69);
    sub_217A5D3B4();
    sub_217D89C3C();
    v69[6] = v77;
    v69[7] = v78;
    v69[8] = v79;
    v69[2] = v73;
    v69[3] = v74;
    v69[4] = v75;
    v69[5] = v76;
    v69[0] = v71;
    v69[1] = v72;
    sub_217AD96E8(v69);
    v36 = (v3 + v25[9]);
    v37 = v36[1];
    v38 = v36[2];
    v66 = *v36;
    v67 = v37;
    v68 = v38;
    v65 = 5;
    sub_217AD1A68(v66, v37, v38);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v66, v67, v68);
    v39 = (v3 + v25[10]);
    v40 = v39[1];
    v63[0] = *v39;
    v63[1] = v40;
    v42 = *v39;
    v41 = v39[1];
    v63[2] = v39[2];
    v64 = *(v39 + 48);
    v59 = v42;
    v60 = v41;
    v61 = v39[2];
    v62 = *(v39 + 48);
    v58 = 6;
    sub_217ACC004(v63, v56);
    sub_217A55B98();
    sub_217D89CAC();
    v56[0] = v59;
    v56[1] = v60;
    v56[2] = v61;
    v57 = v62;
    sub_217ACC69C(v56);
    v43 = (v3 + v25[11]);
    v44 = v43[1];
    v45 = v43[2];
    v46 = v43[3];
    v52 = *v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v51 = 7;
    sub_217AE39D0(v52, v44, v45, v46);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v52, v53, v54, v55);
    v47 = (v3 + v25[12]);
    v48 = v47[1];
    v52 = *v47;
    v53 = v48;
    v51 = 8;
    sub_217AD01EC();

    sub_217D89C3C();

    LOBYTE(v52) = *(v3 + v25[13]);
    v51 = 9;
    sub_217B27C8C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B291F8()
{
  result = qword_27CB9F850;
  if (!qword_27CB9F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F850);
  }

  return result;
}

void ListenSheetEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_217D889CC();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v52 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B29C9C(0, &qword_27CB9F858, MEMORY[0x277D844C8]);
  v53 = v7;
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v10 = type metadata accessor for ListenSheetEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B291F8();
  v54 = v9;
  v13 = v82;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v50;
    v14 = v51;
    v44 = v10;
    v45 = a1;
    v82 = v12;
    LOBYTE(v73) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v52;
    sub_217D89BCC();
    v17 = *(v49 + 32);
    v52 = v5;
    v17(v82, v16, v5);
    LOBYTE(v73) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v48;
    sub_217D89BCC();
    v43[1] = 0;
    v19 = v44;
    (*(v47 + 32))(&v82[v44[5]], v14, v18);
    v64 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v20 = &v82[v19[6]];
    v21 = *v72;
    *(v20 + 6) = v71;
    *(v20 + 7) = v21;
    *(v20 + 127) = *&v72[15];
    v22 = v68;
    *(v20 + 2) = v67;
    *(v20 + 3) = v22;
    v23 = v70;
    *(v20 + 4) = v69;
    *(v20 + 5) = v23;
    v24 = v66;
    *v20 = v65;
    *(v20 + 1) = v24;
    LOBYTE(v59) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v25 = *(&v73 + 1);
    v26 = v74;
    v27 = BYTE1(v74);
    v28 = *(&v74 + 1);
    v29 = v75;
    v30 = &v82[v19[7]];
    *v30 = v73;
    *(v30 + 1) = v25;
    v30[16] = v26;
    v30[17] = v27;
    *(v30 + 3) = v28;
    *(v30 + 4) = v29;
    v63 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v31 = &v82[v19[8]];
    v32 = v78;
    v33 = v80;
    *(v31 + 6) = v79;
    *(v31 + 7) = v33;
    *(v31 + 8) = v81;
    v34 = v76;
    *(v31 + 2) = v75;
    *(v31 + 3) = v34;
    *(v31 + 4) = v77;
    *(v31 + 5) = v32;
    v35 = v74;
    *v31 = v73;
    *(v31 + 1) = v35;
    LOBYTE(v56) = 5;
    sub_217A5B978();
    sub_217D89B5C();
    v36 = v60;
    v37 = &v82[v19[9]];
    *v37 = v59;
    *(v37 + 2) = v36;
    v58 = 6;
    sub_217A54D08();
    sub_217D89BCC();
    v38 = &v82[v19[10]];
    v39 = v60;
    *v38 = v59;
    *(v38 + 1) = v39;
    *(v38 + 2) = v61;
    v38[48] = v62;
    v55 = 7;
    sub_217ACFF40();
    sub_217D89B5C();
    v40 = &v82[v44[11]];
    v41 = v57;
    *v40 = v56;
    *(v40 + 1) = v41;
    v55 = 8;
    sub_217AD0198();
    sub_217D89B5C();
    *&v82[v44[12]] = v56;
    v55 = 9;
    sub_217B27C38();
    sub_217D89BCC();
    (*(v15 + 8))(v54, v53);
    v42 = v82;
    v82[v44[13]] = v56;
    sub_217B29D00(v42, v46);
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_217B29D64(v42);
  }
}

void sub_217B29C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B291F8();
    v7 = a3(a1, &type metadata for ListenSheetEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B29D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListenSheetEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B29D64(uint64_t a1)
{
  v2 = type metadata accessor for ListenSheetEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B29E98@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B27BBC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B27BBC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217B27BBC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217B27BBC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217B27BBC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B27BBC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217B27BBC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217B27BBC(0, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C, &type metadata for ListenSheetActionData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_217B2A354(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B27BBC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217B27BBC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217B27BBC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217B27BBC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_217B27BBC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
              if (v7 <= 0x3F)
              {
                sub_217B27BBC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_217B27BBC(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B27BBC(319, &qword_27CB9F830, sub_217B27C38, sub_217B27C8C, &type metadata for ListenSheetActionData);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_217B2A680(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
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

uint64_t getEnumTagSinglePayload for ListenSheetEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ListenSheetEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217B2A920()
{
  result = qword_27CB9F880;
  if (!qword_27CB9F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F880);
  }

  return result;
}

unint64_t sub_217B2A978()
{
  result = qword_27CB9F888;
  if (!qword_27CB9F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F888);
  }

  return result;
}

unint64_t sub_217B2A9D0()
{
  result = qword_27CB9F890;
  if (!qword_27CB9F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F890);
  }

  return result;
}

uint64_t sub_217B2AA24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCDA10 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_217B2ADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DCDA30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217B2AE6C(uint64_t a1)
{
  v2 = sub_217B2B040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2AEA8(uint64_t a1)
{
  v2 = sub_217B2B040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsletterSubscriptionData.encode(to:)(void *a1)
{
  sub_217B2B280(0, &qword_2811BC588, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B040();
  sub_217D89E7C();
  v11 = v8;
  sub_217B2B094();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B2B040()
{
  result = qword_2811BEFE0[0];
  if (!qword_2811BEFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEFE0);
  }

  return result;
}

unint64_t sub_217B2B094()
{
  result = qword_2811BEFB8;
  if (!qword_2811BEFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFB8);
  }

  return result;
}

uint64_t NewsletterSubscriptionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B2B280(0, &qword_2811BC948, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B040();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B2B2E4();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2B280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2B040();
    v7 = a3(a1, &type metadata for NewsletterSubscriptionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2B2E4()
{
  result = qword_2811BEFA8;
  if (!qword_2811BEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFA8);
  }

  return result;
}

unint64_t sub_217B2B33C()
{
  result = qword_2811BEFC0;
  if (!qword_2811BEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFC0);
  }

  return result;
}

unint64_t sub_217B2B394()
{
  result = qword_2811BEFC8;
  if (!qword_2811BEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFC8);
  }

  return result;
}

unint64_t sub_217B2B43C()
{
  result = qword_27CB9F898;
  if (!qword_27CB9F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F898);
  }

  return result;
}

unint64_t sub_217B2B494()
{
  result = qword_2811BEFD0;
  if (!qword_2811BEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFD0);
  }

  return result;
}

unint64_t sub_217B2B4EC()
{
  result = qword_2811BEFD8;
  if (!qword_2811BEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFD8);
  }

  return result;
}

uint64_t sub_217B2B59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B2B62C(uint64_t a1)
{
  v2 = sub_217B2B7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2B668(uint64_t a1)
{
  v2 = sub_217B2B7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResponseData.encode(to:)(void *a1)
{
  sub_217B2B9C4(0, &qword_27CB9F8A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B7EC();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B2B7EC()
{
  result = qword_27CB9F8A8;
  if (!qword_27CB9F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8A8);
  }

  return result;
}

uint64_t SearchResponseData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B2B9C4(0, &qword_27CB9F8B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B7EC();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B9C();
    (*(v7 + 8))(v9, v6);
    *a2 = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2B9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2B7EC();
    v7 = a3(a1, &type metadata for SearchResponseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2BA2C()
{
  result = qword_2811C2E48;
  if (!qword_2811C2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E48);
  }

  return result;
}

unint64_t sub_217B2BA84()
{
  result = qword_2811C2E50[0];
  if (!qword_2811C2E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2E50);
  }

  return result;
}

uint64_t sub_217B2BAF0(void *a1)
{
  sub_217B2B9C4(0, &qword_27CB9F8A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B7EC();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B2BC5C()
{
  result = qword_27CB9F8B8;
  if (!qword_27CB9F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8B8);
  }

  return result;
}

unint64_t sub_217B2BCB4()
{
  result = qword_27CB9F8C0;
  if (!qword_27CB9F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8C0);
  }

  return result;
}

unint64_t sub_217B2BD0C()
{
  result = qword_27CB9F8C8;
  if (!qword_27CB9F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8C8);
  }

  return result;
}

uint64_t sub_217B2BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DCDA50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217B2BE5C(uint64_t a1)
{
  v2 = sub_217B2C030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2BE98(uint64_t a1)
{
  v2 = sub_217B2C030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityDismissalData.encode(to:)(void *a1)
{
  sub_217B2C270(0, &qword_27CB9F8D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2C030();
  sub_217D89E7C();
  v11 = v8;
  sub_217B2C084();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B2C030()
{
  result = qword_27CB9F8D8;
  if (!qword_27CB9F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8D8);
  }

  return result;
}

unint64_t sub_217B2C084()
{
  result = qword_27CB9F8E0;
  if (!qword_27CB9F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8E0);
  }

  return result;
}

uint64_t LiveActivityDismissalData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B2C270(0, &qword_27CB9F8E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2C030();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B2C2D4();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2C270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2C030();
    v7 = a3(a1, &type metadata for LiveActivityDismissalData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2C2D4()
{
  result = qword_27CB9F8F0;
  if (!qword_27CB9F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8F0);
  }

  return result;
}

unint64_t sub_217B2C384()
{
  result = qword_27CB9F8F8;
  if (!qword_27CB9F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8F8);
  }

  return result;
}

unint64_t sub_217B2C3DC()
{
  result = qword_27CB9F900;
  if (!qword_27CB9F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F900);
  }

  return result;
}

unint64_t sub_217B2C434()
{
  result = qword_27CB9F908;
  if (!qword_27CB9F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F908);
  }

  return result;
}

double static ScienceData.emptyScienceData.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  result = 1.0;
  *(a1 + 64) = xmmword_217D94C40;
  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = MEMORY[0x277D84F90];
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  return result;
}

id ScienceData.feldsparFractionalCohortMemberships.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_217B2C6E8(0, v2, 0);
    v4 = 0;
    v5 = (v1 + 48);
    v6 = v19;
    while (v4 < *(v1 + 16))
    {
      v7 = *v5;
      v8 = objc_allocWithZone(MEMORY[0x277D35408]);

      result = [v8 init];
      if (!result)
      {
        goto LABEL_10;
      }

      v9 = result;
      v10 = sub_217D8951C();
      [v9 setTagId_];

      *&v11 = v7;
      [v9 setScore_];
      v18 = sub_217B2C708();

      *&v17 = v9;
      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_217B2C6E8((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      ++v4;
      *(v6 + 16) = v13 + 1;
      result = sub_217B2C754(&v17, (v6 + 32 * v13 + 32));
      v5 += 3;
      if (v2 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v14 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v15 = sub_217D896CC();

    v16 = [v14 initWithArray_];

    return v16;
  }

  return result;
}

char *sub_217B2C6E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217B2C824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_217B2C708()
{
  result = qword_27CB9F910;
  if (!qword_27CB9F910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB9F910);
  }

  return result;
}

_OWORD *sub_217B2C754(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_217B2C764(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217B2C93C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C784(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217B2CA60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C7A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217B2CB84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C7C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217B2CC94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C7E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217B2CD9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217B2C804(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217B2CEA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C824(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &unk_2811BC3F8, MEMORY[0x277D84F70] + 8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B2C93C(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &unk_2811BC450, &type metadata for FeedJournalGroupResultData);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B2CA60(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_2811BC448, &type metadata for FractionalCohortMembershipDetails);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}