uint64_t sub_1C05C3C44(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C095DFEC();
  a1(0);
  sub_1C05C5C78(a2, a3, a4);
  sub_1C095D71C();
  return sub_1C095E03C();
}

double sub_1C05C3CCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EBE17C18;

  return result;
}

uint64_t sub_1C05C3D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17E80, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTime);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05C3E30(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17E70, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTime);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05C3E9C(uint64_t a1, uint64_t a2)
{
  sub_1C05C5C78(&qword_1EBE17E70, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTime);

  return sub_1C095D5AC();
}

uint64_t sub_1C05C3F1C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17C20);
  __swift_project_value_buffer(v0, qword_1EBE17C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PAST";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PRESENT";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FUTURE";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t _s12SiriOntology010Com_Apple_A31_Product_Proto_FractionalPeriodV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A29_Product_Proto_DateTimePeriodV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v2 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A25_Product_Proto_RecurrenceV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v2 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A23_Product_Proto_IntervalV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v4 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter() || !sub_1C05AD890(*(a1 + 24), *(a1 + 32), *(a2 + 24)) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A23_Product_Proto_DurationV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  if (v2 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter())
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A23_Product_Proto_DateTimeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1C05C219C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A19_Product_Proto_TimeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17F08, &unk_1C0974E20);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if (*a1 != *a2 && (sub_1C095DF3C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    goto LABEL_25;
  }

  v29 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v14 = *(v29 + 52);
  v15 = *(v11 + 48);
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE17C38, &unk_1C0973550);
  v16 = a2 + v14;
  v17 = v15;
  sub_1C05149F8(v16, &v13[v15], &qword_1EBE17C38, &unk_1C0973550);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE17C38, &unk_1C0973550);
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  sub_1C05149F8(v13, v10, &qword_1EBE17C38, &unk_1C0973550);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1C05B4278(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
LABEL_18:
    v20 = &qword_1EBE17F08;
    v21 = &unk_1C0974E20;
LABEL_24:
    sub_1C05145B4(v13, v20, v21);
LABEL_25:
    v19 = 0;
    return v19 & 1;
  }

  sub_1C05B3C0C(&v13[v17], v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  if (*v10 != *v7 || (v22 = v10[16], v23 = *(v7 + 1), v24 = v7[16], v32 = *(v10 + 1), v33 = v22, v30 = v23, v31 = v24, v25 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter(), v25 != Com_Apple_Siri_Product_Proto_Period.rawValue.getter()))
  {
    sub_1C05B4278(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    sub_1C05B4278(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    v20 = &qword_1EBE17C38;
    v21 = &unk_1C0973550;
    goto LABEL_24;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v26 = sub_1C095D73C();
  sub_1C05B4278(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  sub_1C05B4278(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  sub_1C05145B4(v13, &qword_1EBE17C38, &unk_1C0973550);
  if ((v26 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (!sub_1C05AD890(*(a1 + 24), *(a1 + 32), *(a2 + 24)) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1C095DF3C() & 1) == 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57) || *(a1 + 58) != *(a2 + 58))
  {
    goto LABEL_25;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v19 = sub_1C095D73C();
  return v19 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A19_Product_Proto_DateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = (&v41 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17EF8, &qword_1C0974E10);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17F00, &qword_1C0974E18);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || !sub_1C05AD890(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    goto LABEL_29;
  }

  v42 = v10;
  v41 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v21 = *(v41 + 60);
  v22 = *(v18 + 48);
  sub_1C05149F8(a1 + v21, v20, &qword_1EBE17C40, &unk_1C099BB60);
  v23 = a2 + v21;
  v24 = v22;
  sub_1C05149F8(v23, &v20[v22], &qword_1EBE17C40, &unk_1C099BB60);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) == 1)
  {
    if (v25(&v20[v24], 1, v11) == 1)
    {
      sub_1C05145B4(v20, &qword_1EBE17C40, &unk_1C099BB60);
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  sub_1C05149F8(v20, v17, &qword_1EBE17C40, &unk_1C099BB60);
  if (v25(&v20[v24], 1, v11) == 1)
  {
    sub_1C05B4278(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
LABEL_19:
    v32 = &qword_1EBE17F00;
    v33 = &qword_1C0974E18;
LABEL_27:
    v35 = v20;
LABEL_28:
    sub_1C05145B4(v35, v32, v33);
    goto LABEL_29;
  }

  sub_1C05B3C0C(&v20[v24], v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  if ((*v17 != *v14 || *(v17 + 1) != v14[1]) && (sub_1C095DF3C() & 1) == 0 || !sub_1C05AD890(*(v17 + 2), v17[24], v14[2]))
  {
    sub_1C05B4278(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    sub_1C05B4278(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    v32 = &qword_1EBE17C40;
    v33 = &unk_1C099BB60;
    goto LABEL_27;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v34 = sub_1C095D73C();
  sub_1C05B4278(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  sub_1C05B4278(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  sub_1C05145B4(v20, &qword_1EBE17C40, &unk_1C099BB60);
  if ((v34 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_7:
  if (!sub_1C05AD890(*(a1 + 32), *(a1 + 40), *(a2 + 32)) || *(a1 + 41) != *(a2 + 41) || *(a1 + 42) != *(a2 + 42) || (sub_1C0562714(*(a1 + 48), *(a2 + 48)) & 1) == 0 || !sub_1C05AD890(*(a1 + 56), *(a1 + 64), *(a2 + 56)))
  {
    goto LABEL_29;
  }

  v26 = v42;
  v27 = *(v41 + 64);
  v28 = *(v8 + 48);
  sub_1C05149F8(a1 + v27, v42, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C05149F8(a2 + v27, v26 + v28, &qword_1EBE17C48, &unk_1C0973560);
  v29 = v46;
  v30 = *(v45 + 48);
  if (v30(v26, 1, v46) == 1)
  {
    if (v30(v26 + v28, 1, v29) == 1)
    {
      sub_1C05145B4(v26, &qword_1EBE17C48, &unk_1C0973560);
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v37 = v44;
  sub_1C05149F8(v26, v44, &qword_1EBE17C48, &unk_1C0973560);
  if (v30(v26 + v28, 1, v29) == 1)
  {
    sub_1C05B4278(v37, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
LABEL_33:
    v32 = &qword_1EBE17EF8;
    v33 = &qword_1C0974E10;
    v35 = v26;
    goto LABEL_28;
  }

  v38 = v26 + v28;
  v39 = v43;
  sub_1C05B3C0C(v38, v43, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  if (*v37 != *v39 || v37[1] != v39[1] || v37[2] != v39[2])
  {
    sub_1C05B4278(v39, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
    sub_1C05B4278(v37, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
    v32 = &qword_1EBE17C48;
    v33 = &unk_1C0973560;
    v35 = v26;
    goto LABEL_28;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v40 = sub_1C095D73C();
  sub_1C05B4278(v39, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  sub_1C05B4278(v37, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  sub_1C05145B4(v26, &qword_1EBE17C48, &unk_1C0973560);
  if ((v40 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if (*(a1 + 68) != *(a2 + 68))
  {
LABEL_29:
    v31 = 0;
    return v31 & 1;
  }

  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v31 = sub_1C095D73C();
  return v31 & 1;
}

uint64_t sub_1C05C5474(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - v12;
  v14 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v1 + v14, 1, 1, v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v16(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate, 1, 1, v15);
  v18 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v51 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v52 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v53 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v54 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v56 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v26(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime, 1, 1, v25);
  v57 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition) = 0;
  v27 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition) = 0;
  v28 = v1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C05149F8(a1 + v29, v13, &qword_1EBE17C50, &unk_1C099BB50);
  swift_beginAccess();
  sub_1C051F9D4(v13, v1 + v14, &qword_1EBE17C50, &unk_1C099BB50);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C05149F8(a1 + v30, v13, &qword_1EBE17C50, &unk_1C099BB50);
  swift_beginAccess();
  sub_1C051F9D4(v13, v1 + v17, &qword_1EBE17C50, &unk_1C099BB50);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  v32 = v55;
  sub_1C05149F8(a1 + v31, v55, &qword_1EBE17C58, &unk_1C0973570);
  v33 = v51;
  swift_beginAccess();
  sub_1C051F9D4(v32, v1 + v33, &qword_1EBE17C58, &unk_1C0973570);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  v35 = v58;
  sub_1C05149F8(a1 + v34, v58, &qword_1EBE17C60, &unk_1C099BB40);
  v36 = v52;
  swift_beginAccess();
  sub_1C051F9D4(v35, v1 + v36, &qword_1EBE17C60, &unk_1C099BB40);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  v38 = v59;
  sub_1C05149F8(a1 + v37, v59, &qword_1EBE17C68, &unk_1C0973580);
  v39 = v53;
  swift_beginAccess();
  sub_1C051F9D4(v38, v1 + v39, &qword_1EBE17C68, &unk_1C0973580);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  v41 = v60;
  sub_1C05149F8(a1 + v40, v60, &qword_1EBE17C70, &unk_1C099BB30);
  v42 = v54;
  swift_beginAccess();
  sub_1C051F9D4(v41, v1 + v42, &qword_1EBE17C70, &unk_1C099BB30);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C05149F8(a1 + v43, v41, &qword_1EBE17C70, &unk_1C099BB30);
  v44 = v56;
  swift_beginAccess();
  sub_1C051F9D4(v41, v1 + v44, &qword_1EBE17C70, &unk_1C099BB30);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + v45);
  v46 = v57;
  swift_beginAccess();
  *(v1 + v46) = v45;
  v47 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  LODWORD(v47) = *(a1 + v47);
  swift_beginAccess();
  *(v1 + v27) = v47;
  v48 = (a1 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent);
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  swift_beginAccess();
  *v28 = v49;
  *(v28 + 8) = v48;
  return v1;
}

unint64_t sub_1C05C5C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17C78;
  if (!qword_1EBE17C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17C78);
  }

  return result;
}

uint64_t sub_1C05C5C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C05C5CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17C90;
  if (!qword_1EBE17C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17C90);
  }

  return result;
}

unint64_t sub_1C05C5D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17CA8;
  if (!qword_1EBE17CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17CA8);
  }

  return result;
}

unint64_t sub_1C05C5D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17CB8;
  if (!qword_1EBE17CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17CB8);
  }

  return result;
}

unint64_t sub_1C05C5DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17CF8;
  if (!qword_1EBE17CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17CF8);
  }

  return result;
}

unint64_t sub_1C05C5E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D00;
  if (!qword_1EBE17D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D00);
  }

  return result;
}

unint64_t sub_1C05C5E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D08;
  if (!qword_1EBE17D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D08);
  }

  return result;
}

unint64_t sub_1C05C5EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D20;
  if (!qword_1EBE17D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D20);
  }

  return result;
}

unint64_t sub_1C05C5F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D28;
  if (!qword_1EBE17D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D28);
  }

  return result;
}

unint64_t sub_1C05C5FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D30;
  if (!qword_1EBE17D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D30);
  }

  return result;
}

unint64_t sub_1C05C6030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D48;
  if (!qword_1EBE17D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D48);
  }

  return result;
}

unint64_t sub_1C05C6088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D50;
  if (!qword_1EBE17D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D50);
  }

  return result;
}

unint64_t sub_1C05C60E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D58;
  if (!qword_1EBE17D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D58);
  }

  return result;
}

unint64_t sub_1C05C6168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D70;
  if (!qword_1EBE17D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D70);
  }

  return result;
}

unint64_t sub_1C05C61C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D78;
  if (!qword_1EBE17D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D78);
  }

  return result;
}

unint64_t sub_1C05C6218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D80;
  if (!qword_1EBE17D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D80);
  }

  return result;
}

unint64_t sub_1C05C62A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17D98;
  if (!qword_1EBE17D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17D98);
  }

  return result;
}

unint64_t sub_1C05C62F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17DA0;
  if (!qword_1EBE17DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17DA0);
  }

  return result;
}

unint64_t sub_1C05C6350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17DA8;
  if (!qword_1EBE17DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17DA8);
  }

  return result;
}

uint64_t keypath_get_35Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_1C05C6F00(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C05C6FAC(uint64_t a1)
{
  sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    sub_1C05C7294(319, &qword_1EBE15140, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C05C70FC(uint64_t a1)
{
  sub_1C05C7294(319, &qword_1EBE0FDC0, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C05C7294(319, &qword_1EBE15118, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C05C7294(319, &qword_1EBE150C8, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C05C7294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C05C735C(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_106Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C05C7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C095D38C();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C05C75C0(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C05C765C(uint64_t a1)
{
  sub_1C05C7294(319, &qword_1EBE15498, type metadata accessor for Com_Apple_Siri_Product_Proto_Date, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C05C7294(319, &qword_1EBE152F8, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C05C7294(319, &qword_1EBE152E0, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C05C7294(319, &qword_1EBE15268, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C05C7294(319, &qword_1EBE15480, type metadata accessor for Com_Apple_Siri_Product_Proto_Time, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_1C05C78E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17EC8;
  if (!qword_1EBE17EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17EC8);
  }

  return result;
}

void Siri_Nl_Core_Protocol_ResponseStatus.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.code.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.description_p.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.description_p.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus(uint64_t a1)
{
  result = qword_1EBE17F50;
  if (!qword_1EBE17F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05C7C68()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17F10);
  __swift_project_value_buffer(v0, qword_1EBE17F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t static Siri_Nl_Core_Protocol_ResponseStatus._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE155F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE17F10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        sub_1C05C8394(2, v5, v6);
        sub_1C095D45C();
      }

      else if (result == 3)
      {
        sub_1C095D50C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C05C8394(a1, a2, a3), result = sub_1C095D60C(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C095D66C(), !v4))
    {
      type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_ResponseStatus.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus(0);
  sub_1C05C872C(&qword_1EBE17F30, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_ResponseStatus);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C05C8104@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05C8184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C872C(&qword_1EBE17F60, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_ResponseStatus);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05C8200@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE155F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE17F10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C05C82A8(uint64_t a1)
{
  v2 = sub_1C05C872C(&qword_1EBE17F40, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_ResponseStatus);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05C8314(uint64_t a1, uint64_t a2)
{
  sub_1C05C872C(&qword_1EBE17F40, type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_ResponseStatus);

  return sub_1C095D5AC();
}

unint64_t sub_1C05C8394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17F28;
  if (!qword_1EBE17F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17F28);
  }

  return result;
}

uint64_t _s12SiriOntology0A32_Nl_Core_Protocol_ResponseStatusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1C0974FE0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (v2 != 303)
          {
            return 0;
          }
        }

        else if (v2 != 500)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 301)
        {
          return 0;
        }
      }

      else if (v2 != 302)
      {
        return 0;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 101)
        {
          return 0;
        }
      }

      else if (v2 != 300)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 100)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (sub_1C095DF3C() & 1) != 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_ResponseStatus(0);
    sub_1C095D38C();
    sub_1C05C872C(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    return sub_1C095D73C() & 1;
  }

  return 0;
}

uint64_t sub_1C05C86A8(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C05C872C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static Kind.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t Name.init(value:kind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  v5 = a3[1];
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  a4[3] = v5;
  a4[4] = 0;
  return result;
}

void static Kind.definedValue.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "DefinedValue");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t Kind.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Kind.hashValue.getter()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C890C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t sub_1C05C893C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C8990(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C89E4()
{
  v1 = *v0;
  sub_1C095DFEC();
  if (*(v1 + 24))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05C8AB4(uint64_t a1)
{
  if (!*(*v1 + 24))
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C05C8B90(uint64_t a1)
{
  sub_1C095DFEC();
  if (*(*v1 + 24))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05C8C60()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05C8D00(uint64_t a1)
{
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C05C8D88(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t Name.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Name.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Name.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  MEMORY[0x1C68DD690](95, 0xE100000000000000);
  MEMORY[0x1C68DD690](v1, v2);
  return v4;
}

uint64_t Name.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (!v2)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!*(v2 + 24))
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C05C8FD4(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v2 && (sub_1C095E00C(), *(v2 + 24)))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05C90D8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  MEMORY[0x1C68DD690](95, 0xE100000000000000);
  MEMORY[0x1C68DD690](v1, v2);
  return v4;
}

void sub_1C05C9138()
{
  qword_1ED5D7C70 = 1953460050;
  *algn_1ED5D7C78 = 0xE400000000000000;
  qword_1ED5D7C80 = 1953460050;
  unk_1ED5D7C88 = 0xE400000000000000;
  qword_1ED5D7C90 = 0;
}

uint64_t static Name.root.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED5D7C68 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1ED5D7C78;
  v2 = qword_1ED5D7C80;
  v3 = unk_1ED5D7C88;
  v4 = qword_1ED5D7C90;
  *a1 = qword_1ED5D7C70;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C91F0()
{
  qword_1ED5BD008 = 1802723700;
  unk_1ED5BD010 = 0xE400000000000000;
  qword_1ED5BD018 = 0x746E656D75677241;
  unk_1ED5BD020 = 0xE800000000000000;
  qword_1ED5BD028 = 0;
}

uint64_t static Name.task.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED5BD000 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1ED5BD010;
  v2 = qword_1ED5BD018;
  v3 = unk_1ED5BD020;
  v4 = qword_1ED5BD028;
  *a1 = qword_1ED5BD008;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C92BC()
{
  qword_1EBE17F68 = 0x797469746E65;
  unk_1EBE17F70 = 0xE600000000000000;
  qword_1EBE17F78 = 0x797469746E45;
  unk_1EBE17F80 = 0xE600000000000000;
  qword_1EBE17F88 = 0;
}

uint64_t static Name.entity.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE155F8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EBE17F70;
  v2 = qword_1EBE17F78;
  v3 = unk_1EBE17F80;
  v4 = qword_1EBE17F88;
  *a1 = qword_1EBE17F68;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C937C()
{
  qword_1EBE17F90 = 0x797469746E65;
  *algn_1EBE17F98 = 0xE600000000000000;
  qword_1EBE17FA0 = 0x746E656D75677241;
  unk_1EBE17FA8 = 0xE800000000000000;
  qword_1EBE17FB0 = 0;
}

uint64_t static Name.entityArgument.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15600 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EBE17F98;
  v2 = qword_1EBE17FA0;
  v3 = unk_1EBE17FA8;
  v4 = qword_1EBE17FB0;
  *a1 = qword_1EBE17F90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C944C()
{
  qword_1EBE17FB8 = 0x646E617265706FLL;
  qword_1EBE17FC0 = 0xE700000000000000;
  qword_1EBE17FC8 = 0x746E656D75677241;
  qword_1EBE17FD0 = 0xE800000000000000;
  qword_1EBE17FD8 = 0;
}

uint64_t static Name.operand.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15608 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EBE17FC0;
  v2 = qword_1EBE17FC8;
  v3 = qword_1EBE17FD0;
  v4 = qword_1EBE17FD8;
  *a1 = qword_1EBE17FB8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1C05C9520()
{
  *&xmmword_1ED5D7CA8 = 0xD000000000000010;
  *(&xmmword_1ED5D7CA8 + 1) = 0x80000001C09CD560;
  *&xmmword_1ED5D7CB8 = 0x797469746E45;
  *(&xmmword_1ED5D7CB8 + 1) = 0xE600000000000000;
  qword_1ED5D7CC8 = 0;
}

uint64_t static Name.primitiveString.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED5D7CA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1ED5D7CA8 + 1);
  v2 = xmmword_1ED5D7CB8;
  v3 = qword_1ED5D7CC8;
  *a1 = xmmword_1ED5D7CA8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

void sub_1C05C95F4()
{
  *&xmmword_1ED5BDEE0 = 0xD000000000000011;
  *(&xmmword_1ED5BDEE0 + 1) = 0x80000001C09CD540;
  *&xmmword_1ED5BDEF0 = 0x797469746E45;
  *(&xmmword_1ED5BDEF0 + 1) = 0xE600000000000000;
  qword_1ED5BDF00 = 0;
}

uint64_t static Name.primitiveInteger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED5BDED8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1ED5BDEE0 + 1);
  v2 = xmmword_1ED5BDEF0;
  v3 = qword_1ED5BDF00;
  *a1 = xmmword_1ED5BDEE0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

BOOL sub_1C05C96C8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_1C095DF3C() & 1) != 0) && (v2 == v6 && v4 == v7 || (sub_1C095DF3C() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1C095DF3C() & 1) != 0) && (v13 == v11 && v14 == v10 || (sub_1C095DF3C() & 1) != 0);
}

BOOL sub_1C05C97E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[2];
  v39[0] = a1[1];
  v39[1] = v2;
  v3 = a1[2];
  v4 = a1[4];
  v40 = a1[3];
  v41 = v4;
  v5 = a2[2];
  v42[0] = a2[1];
  v42[1] = v5;
  v6 = a2[2];
  v7 = a2[4];
  v43 = a2[3];
  v44 = v7;
  v36 = v3;
  v37 = v40;
  v38 = a1[4];
  v8 = v39[0];
  v9 = v42[0];
  v33 = v6;
  v34 = v43;
  v35 = a2[4];
  if (!*(&v39[0] + 1))
  {
    if (!*(&v42[0] + 1))
    {
      v25 = *&v39[0];
      v13 = a1[3];
      v26 = a1[2];
      v27 = v13;
      v28 = a1[4];
      sub_1C057F900(v39, &v21);
      sub_1C057F900(v42, &v21);
      sub_1C05145B4(&v25, &qword_1EBE16D80, &qword_1C0970448);
      return 1;
    }

    sub_1C057F900(v39, &v25);
    sub_1C057F900(v42, &v25);
    goto LABEL_7;
  }

  v25 = v39[0];
  v10 = a1[3];
  v26 = a1[2];
  v27 = v10;
  v28 = a1[4];
  v21 = v39[0];
  v22 = v26;
  v23 = v10;
  v24 = v28;
  if (!*(&v42[0] + 1))
  {
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    sub_1C057F900(v39, v16);
    sub_1C057F900(v42, v16);
    sub_1C057F900(&v25, v16);
    sub_1C05C9C48(&v17);
LABEL_7:
    v25 = v8;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v9;
    v30 = v33;
    v31 = v34;
    v32 = v35;
    sub_1C05145B4(&v25, &qword_1EBE16D88, &qword_1C0970450);
    return 0;
  }

  v11 = a2[3];
  v18 = a2[2];
  v19 = v11;
  v20 = a2[4];
  v17 = v42[0];
  v12 = sub_1C05C96C8(&v21, &v17);
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  sub_1C057F900(v39, v16);
  sub_1C057F900(v42, v16);
  sub_1C057F900(&v25, v16);
  sub_1C05C9C48(v15);
  v16[0] = v21;
  v16[1] = v22;
  v16[2] = v23;
  v16[3] = v24;
  sub_1C05C9C48(v16);
  v17 = v8;
  v18 = v36;
  v19 = v37;
  v20 = v38;
  sub_1C05145B4(&v17, &qword_1EBE16D80, &qword_1C0970448);
  return v12;
}

unint64_t sub_1C05C9A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17FE0;
  if (!qword_1EBE17FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FE0);
  }

  return result;
}

unint64_t sub_1C05C9A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17FE8;
  if (!qword_1EBE17FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FE8);
  }

  return result;
}

uint64_t sub_1C05C9AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C05C9B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C05C9B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17FF0;
  if (!qword_1EBE17FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FF0);
  }

  return result;
}

unint64_t sub_1C05C9BF4()
{
  result = qword_1EBE17FF8;
  if (!qword_1EBE17FF8)
  {
    type metadata accessor for NameMetaData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17FF8);
  }

  return result;
}

uint64_t static UsoGraphVocabManager.makeDefault()(uint64_t a1)
{
  if (qword_1EBE154C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for UsoGraphVocabManager();
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = sub_1C051DA50(v2);
  return v1;
}

void sub_1C05C9CFC(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v57 = v2;
  if (v2)
  {
    v58 = MEMORY[0x1E69E7CC0];

    sub_1C0600B80(0, v2, 0);
    v5 = v58;
    v6 = a1 + 64;
    do
    {
      v7 = v5;

      v8 = sub_1C095D89C();

      v5 = v7;
      v10 = v7[2];
      v9 = v7[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        sub_1C0600B80((v9 > 1), v10 + 1, 1);
        v5 = v7;
      }

      v6 += 40;
      v5[2] = v11;
      *(v5 + v10 + 32) = (v8 & 1) == 0;
      --v2;
    }

    while (v2);
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v11 = v3[2];
    v5 = v3;
    v12 = v3;
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
  v13 = 32;
  do
  {
    if (*(v5 + v13) == 1)
    {
      v16 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0600B80(0, v12[2] + 1, 1);
      }

      v15 = v12[2];
      v14 = v12[3];
      v5 = v16;
      if (v15 >= v14 >> 1)
      {
        sub_1C0600B80((v14 > 1), v15 + 1, 1);
        v5 = v16;
      }

      v12[2] = v15 + 1;
      *(v12 + v15 + 32) = 1;
    }

    ++v13;
    --v11;
  }

  while (v11);
LABEL_16:
  v54 = v5;
  v17 = v12[2];

  v18 = v17 / 0.75;
  if (v18 == INFINITY)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v19 = v18;
  v20 = v57;
  if (v57)
  {
    sub_1C0600B60(0, v57, 0);
    if (!v19)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v21 = v3;
    v22 = (a1 + 64);
    v56 = v19;
    do
    {
      v23 = *v22;
      sub_1C095DFEC();

      sub_1C095D7BC();
      sub_1C095D7BC();
      if (v23 && (sub_1C095E00C(), *(v23 + 24)))
      {
        sub_1C095E00C();
        sub_1C095D7BC();
        v19 = v56;
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }

      v24 = sub_1C095E03C();

      if (v24 == 0x8000000000000000 && v19 == -1)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v25 = v24 % v19;
      if (v24 % v19 < 0)
      {
        v26 = __OFADD__(v25, v19);
        v25 += v19;
        if (v26)
        {
          goto LABEL_84;
        }
      }

      v28 = v21[2];
      v27 = v21[3];
      if (v28 >= v27 >> 1)
      {
        sub_1C0600B60((v27 > 1), v28 + 1, 1);
      }

      v22 += 5;
      v21[2] = v28 + 1;
      v21[v28 + 4] = v25;
      --v20;
    }

    while (v20);

    if (v19 < 0)
    {
      goto LABEL_37;
    }
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
    if (v19 < 0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  if (v19)
  {
    v29 = sub_1C095D9CC();
    *(v29 + 16) = v19;
    bzero((v29 + 32), 4 * v19);
    goto LABEL_39;
  }

LABEL_38:
  v29 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v30 = v54;
  v31 = v21[2];
  if (v31)
  {
    if (v31 <= v54[2])
    {
      v32 = v21 + 4;
      v33 = v54 + 4;
      v34 = v29 + 32;
      v35 = v21[2];
      while (1)
      {
        v37 = *v32++;
        v36 = v37;
        if (*v33)
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_76;
          }

          if (v36 >= *(v29 + 16))
          {
            goto LABEL_77;
          }

          v38 = *(v34 + 4 * v36);
          v26 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v26)
          {
            goto LABEL_78;
          }

          *(v34 + 4 * v36) = v39;
        }

        ++v33;
        if (!--v35)
        {
          goto LABEL_48;
        }
      }
    }

    goto LABEL_91;
  }

LABEL_48:
  v40 = *(v29 + 16);
  v41 = v40 - 1;
  if (v40 != 1)
  {
    if (v40)
    {
      v42 = 0;
      v43 = (v29 + 36);
      do
      {
        if (v42 >= *(v29 + 16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v44 = *(v43 - 1);
        v26 = __OFADD__(*v43, v44);
        v45 = *v43 + v44;
        if (v26)
        {
          goto LABEL_74;
        }

        *v43++ = v45;
        ++v42;
      }

      while (v41 != v42);
      v40 = *(v29 + 16);
      if (!v40)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_55:
  v46 = *(v29 + 4 * v40 + 28);
  if ((v46 & 0x80000000) != 0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v46)
  {
    v47 = sub_1C095D9CC();
    *(v47 + 16) = v46;
    bzero((v47 + 32), 4 * v46);
    v30 = v54;
    if (!v31)
    {
LABEL_72:

      *(v53 + 16) = v29;
      *(v53 + 24) = v47;
      return;
    }
  }

  else
  {
LABEL_59:
    v47 = MEMORY[0x1E69E7CC0];
    if (!v31)
    {
      goto LABEL_72;
    }
  }

  if (v31 <= v30[2])
  {
    v48 = 0;
    v49 = v29 + 32;
    while (1)
    {
      if (*(v30 + v48 + 32))
      {
        v50 = v21[v48 + 4];
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        if (v50 >= *(v29 + 16))
        {
          goto LABEL_80;
        }

        v51 = *(v49 + 4 * v50);
        v26 = __OFSUB__(v51, 1);
        v52 = v51 - 1;
        if (v26)
        {
          goto LABEL_81;
        }

        *(v49 + 4 * v50) = v52;
        if (v48 >> 31)
        {
          goto LABEL_82;
        }

        if (v52 < 0)
        {
          goto LABEL_83;
        }

        if (*(v47 + 16) <= v52)
        {
          __break(1u);
          goto LABEL_72;
        }

        *(v47 + 32 + 4 * v52) = v48;
      }

      if (v31 == ++v48)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_92:
  __break(1u);
}

uint64_t sub_1C05CA368()
{

  return swift_deallocClassInstance();
}

void sub_1C05CA3C0()
{
  if (qword_1EBE154C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompactNameToIdMap();
  v0 = swift_allocObject();

  sub_1C05C9CFC(v1);
  qword_1EBE50A38 = v0;
}

uint64_t UsoGraphVocabManager.__allocating_init(withListOfNames:)(uint64_t a1)
{

  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = sub_1C051DA50(v2);
  return v1;
}

uint64_t UsoGraphVocabManager.deinit()
{

  return v0;
}

void *sub_1C05CA530(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C0578008(result, v10, 1, v3);
  v3 = result;
  *v1 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C05CA640(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1C0579214(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  *v1 = v3;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C05CA774(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C0578380(result, v10, 1, v3);
  v3 = result;
  *v1 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C05CA870(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C0579C30(result, v10, 1, v3);
  v3 = result;
  *v1 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC8, &unk_1C0999F10);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)(void *a1, char *a2)
{
  v3 = *a2;
  v4 = a1[2];
  v5 = a1[3];
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  v6 = v4 == xmmword_1ED5D7CA8 && v5 == *(&xmmword_1ED5D7CA8 + 1);
  if (!v6 && (sub_1C095DF3C() & 1) == 0)
  {
    if (qword_1ED5BDED8 != -1)
    {
      swift_once();
    }

    v7 = v4 == xmmword_1ED5BDEE0 && v5 == *(&xmmword_1ED5BDEE0 + 1);
    if (!v7 && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v8 = sub_1C0517C50(a1[6], 1, 1, 1);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
LABEL_17:
    type metadata accessor for UsoEntityBuilder();
    swift_allocObject();

    v9 = sub_1C0517A0C(v10);
  }

  v13 = v3;
  v11 = _s12SiriOntology15UsoGraphBuilderO017buildRootedEntityD006entityE07optionsAA0D0CAA0cE0C_AA0cE7OptionsVSgtFZ_0(v9, &v13);

  return v11;
}

double static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:copyEntitySpans:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a5;
  v8 = a4;
  v12 = a2[6];
  if (sub_1C0517C50(v12, a4, a5, a6))
  {
    type metadata accessor for UsoEntityBuilder();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      if (a3)
      {
        v19 = a2[3];
        a1[5] = a2[2];
        a1[6] = v19;

        if ((v8 & 1) == 0)
        {
LABEL_5:
          if ((v7 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      else if ((v8 & 1) == 0)
      {
        goto LABEL_5;
      }

      swift_beginAccess();

      sub_1C0522140(v20);
      swift_endAccess();
      if ((v7 & 1) == 0)
      {
LABEL_6:
        if ((a6 & 1) == 0)
        {
LABEL_8:
          swift_beginAccess();
          v17 = *(v15 + 56);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = a1[7];
          a1[7] = 0x8000000000000000;
          sub_1C0522548(v17, sub_1C05227D4, 0, isUniquelyReferenced_nonNull_native, &v23);

          a1[7] = v23;
          swift_endAccess();

          return result;
        }

LABEL_7:
        swift_beginAccess();

        sub_1C0522448(v16);
        swift_endAccess();
        goto LABEL_8;
      }

LABEL_15:
      v21 = *(v12 + 24);
      swift_unownedRetainStrong();
      v22 = *(v21 + 112);

      sub_1C0522240(v22);
      if ((a6 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1C05CAD28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *v3;
  result = sub_1C0514E38();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1C06700C8();
      result = v17;
      goto LABEL_8;
    }

    sub_1C057B838(v14, a3 & 1);
    result = sub_1C0514E38();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = v7;
  }

  else
  {

    return sub_1C066FB64(result, a2, v7, v19);
  }

  return result;
}

unint64_t sub_1C05CAE34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = a1;
  v10 = *v4;
  v11 = sub_1C057EAB4(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C0670228();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C057BA9C(v16, a4 & 1);
    v11 = sub_1C057EAB4(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    *v22 = v9;
    *(v22 + 8) = a2;
  }

  else
  {

    return sub_1C066FBA8(v11, a3, v9, a2, v21);
  }
}

unint64_t sub_1C05CAF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C0514E38();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C06704F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C057BFAC(v16, a4 & 1);
    v11 = sub_1C0514E38();
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;

    return swift_unownedRelease();
  }

  else
  {

    return sub_1C066FC38(v11, a3, a1, a2, v21);
  }
}

void static UsoPrintUtils.orderSuccessors(successors:)(uint64_t a1)
{
  v1 = a1;

  sub_1C051E5F8(&v1);
}

uint64_t sub_1C05CB1F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_141:
      result = sub_1C0789580(v6);
      v6 = result;
    }

    v95 = *(v6 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = *&v6[16 * v95];
        v97 = *&v6[16 * v95 + 24];
        sub_1C05CB964((*a3 + 80 * v96), (*a3 + 80 * *&v6[16 * v95 + 16]), (*a3 + 80 * v97), v5);
        if (v111)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1C0789580(v6);
        }

        if (v95 - 2 >= *(v6 + 2))
        {
          goto LABEL_135;
        }

        v98 = &v6[16 * v95];
        *v98 = v96;
        *(v98 + 1) = v97;
        result = sub_1C07894EC(v95 - 1);
        v95 = *(v6 + 2);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v7 = v5++;
  v107 = v6;
  if (v5 < v4)
  {
    v8 = *a3;
    v9 = v5;
    v10 = *a3 + 80 * v5;
    v11 = *(v10 + 16);
    v12 = v7;
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v101 = v12;
    v15 = *a3 + 80 * v12;
    v16 = *(v15 + 16);
    v17 = v13 == *(v15 + 24) && v14 == *(v15 + 32);
    v103 = v4;
    if (v17 || (result = sub_1C095DF3C(), v4 = v103, (result & 1) != 0))
    {
      v105 = v11 < v16;
    }

    else
    {
      result = sub_1C095DF3C();
      v4 = v103;
      v105 = result;
    }

    v18 = (v101 + 2);
    v19 = (v8 + 80 * v101 + 192);
    v20 = 80 * v101 + 80;
    v21 = v9;
    do
    {
      v5 = v18;
      v22 = v21;
      v23 = v20;
      if (v18 >= v4)
      {
        break;
      }

      v109 = v18;
      v24 = *(v19 - 4);
      v25 = *(v19 - 24);
      v26 = *(v19 - 1) == *(v19 - 11) && *v19 == *(v19 - 10);
      if (v26 || (v27 = sub_1C095DF3C(), v4 = v103, (v27 & 1) != 0))
      {
        result = v24 < v25;
      }

      else
      {
        result = sub_1C095DF3C();
        v4 = v103;
      }

      v6 = v107;
      v5 = v109;
      v18 = v109 + 1;
      v19 += 10;
      v21 = v22 + 1;
      v20 = v23 + 80;
    }

    while (((v105 ^ result) & 1) == 0);
    if ((v105 & 1) == 0)
    {
LABEL_32:
      v7 = v101;
      goto LABEL_34;
    }

    v28 = v101;
    if (v5 < v101)
    {
      goto LABEL_138;
    }

    if (v101 < v5)
    {
      v29 = 80 * v101;
      do
      {
        if (v28 != v22)
        {
          v33 = *a3;
          if (!*a3)
          {
            goto LABEL_144;
          }

          v30 = (v33 + v23);
          v116 = *(v33 + v29 + 32);
          v118 = *(v33 + v29 + 48);
          v120 = *(v33 + v29 + 64);
          v112 = *(v33 + v29);
          v114 = *(v33 + v29 + 16);
          v31 = v29;
          result = memmove((v33 + v29), (v33 + v23), 0x50uLL);
          v29 = v31;
          v30[2] = v116;
          v30[3] = v118;
          v30[4] = v120;
          *v30 = v112;
          v30[1] = v114;
        }

        ++v28;
        v23 -= 80;
        v29 += 80;
      }

      while (v28 < v22--);
      goto LABEL_32;
    }

    v7 = v101;
  }

LABEL_34:
  v34 = a3[1];
  if (v5 >= v34)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v5, v7))
  {
    goto LABEL_137;
  }

  if (v5 - v7 >= a4)
  {
    goto LABEL_58;
  }

  v35 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v5 == v35)
  {
    goto LABEL_58;
  }

  v36 = *a3;
  v37 = *a3 + 80 * v5 - 80;
  v102 = v35;
  v38 = v7 - v5;
LABEL_44:
  v110 = v5;
  v104 = v38;
  v106 = v37;
  v39 = v37;
  while (1)
  {
    v40 = *(v39 + 96);
    v41 = *(v39 + 16);
    v42 = *(v39 + 104) == *(v39 + 24) && *(v39 + 112) == *(v39 + 32);
    if (v42 || (result = sub_1C095DF3C(), (result & 1) != 0))
    {
      if (v40 >= v41)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (!v36)
    {
      break;
    }

    v117 = *(v39 + 112);
    v119 = *(v39 + 128);
    v121 = *(v39 + 144);
    v43 = *(v39 + 64);
    v113 = *(v39 + 80);
    v115 = *(v39 + 96);
    v44 = *(v39 + 32);
    v45 = *(v39 + 48);
    v46 = *v39;
    *(v39 + 96) = *(v39 + 16);
    *(v39 + 112) = v44;
    *(v39 + 128) = v45;
    *(v39 + 144) = v43;
    *(v39 + 64) = v121;
    *(v39 + 80) = v46;
    *(v39 + 32) = v117;
    *(v39 + 48) = v119;
    *v39 = v113;
    *(v39 + 16) = v115;
    v39 -= 80;
    if (__CFADD__(v38++, 1))
    {
LABEL_43:
      v5 = (v110 + 1);
      v37 = v106 + 80;
      v38 = v104 - 1;
      if (v110 + 1 != v102)
      {
        goto LABEL_44;
      }

      v5 = v102;
      v6 = v107;
LABEL_58:
      if (v5 < v7)
      {
        goto LABEL_136;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C0577D94(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v49 = *(v6 + 2);
      v48 = *(v6 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = sub_1C0577D94((v48 > 1), v49 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v50;
      v51 = &v6[16 * v49];
      *(v51 + 4) = v7;
      *(v51 + 5) = v5;
      v52 = *v100;
      if (!*v100)
      {
        goto LABEL_146;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v54 = *(v6 + 4);
            v55 = *(v6 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_78:
            if (v57)
            {
              goto LABEL_125;
            }

            v70 = &v6[16 * v50];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_128;
            }

            v76 = &v6[16 * v53 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_132;
            }

            if (v74 + v79 >= v56)
            {
              if (v56 < v79)
              {
                v53 = v50 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v80 = &v6[16 * v50];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_92:
          if (v75)
          {
            goto LABEL_127;
          }

          v83 = &v6[16 * v53];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_130;
          }

          if (v86 < v74)
          {
            goto LABEL_3;
          }

LABEL_99:
          v91 = v53 - 1;
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          if (!*a3)
          {
            goto LABEL_143;
          }

          v92 = *&v6[16 * v91 + 32];
          v93 = *&v6[16 * v53 + 40];
          sub_1C05CB964((*a3 + 80 * v92), (*a3 + 80 * *&v6[16 * v53 + 32]), (*a3 + 80 * v93), v52);
          if (v111)
          {
          }

          if (v93 < v92)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1C0789580(v6);
          }

          if (v91 >= *(v6 + 2))
          {
            goto LABEL_122;
          }

          v94 = &v6[16 * v91];
          *(v94 + 4) = v92;
          *(v94 + 5) = v93;
          result = sub_1C07894EC(v53);
          v50 = *(v6 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v58 = &v6[16 * v50 + 32];
        v59 = *(v58 - 64);
        v60 = *(v58 - 56);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_123;
        }

        v63 = *(v58 - 48);
        v62 = *(v58 - 40);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_124;
        }

        v65 = &v6[16 * v50];
        v67 = *v65;
        v66 = *(v65 + 1);
        v64 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v64)
        {
          goto LABEL_126;
        }

        v64 = __OFADD__(v56, v68);
        v69 = v56 + v68;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v69 >= v61)
        {
          v87 = &v6[16 * v53 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v64 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v64)
          {
            goto LABEL_133;
          }

          if (v56 < v90)
          {
            v53 = v50 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_109;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1C05CB964(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[80 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      __dsta = v7;
      v15 = *(v6 + 4);
      v16 = *(v4 + 4);
      v29 = v4;
      v17 = *(v4 + 3);
      v18 = *(v4 + 4);
      v19 = *(v6 + 3) == v17 && *(v6 + 4) == v18;
      if (v19 || (sub_1C095DF3C() & 1) != 0)
      {
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else if ((sub_1C095DF3C() & 1) == 0)
      {
LABEL_19:
        v13 = v29;
        v4 = v29 + 80;
        v14 = __dsta;
        if (__dsta == v29)
        {
          goto LABEL_9;
        }

LABEL_8:
        memmove(v14, v13, 0x50uLL);
        goto LABEL_9;
      }

      v13 = v6;
      v14 = __dsta;
      v19 = __dsta == v6;
      v6 += 80;
      v4 = v29;
      if (!v19)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 = v14 + 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > __dst)
  {
    v30 = v4;
LABEL_27:
    v5 -= 80;
    do
    {
      v20 = *(v12 - 16);
      v21 = *(v6 - 16);
      v22 = *(v12 - 7) == *(v6 - 7) && *(v12 - 6) == *(v6 - 6);
      if (v22 || (sub_1C095DF3C() & 1) != 0)
      {
        if (v20 < v21)
        {
          goto LABEL_39;
        }
      }

      else if (sub_1C095DF3C())
      {
LABEL_39:
        v24 = (v6 - 80);
        v4 = v30;
        if (v5 + 80 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v12 <= v30 || (v6 -= 80, v24 <= __dst))
        {
          v6 = v24;
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v23 = v12 - 80;
      v4 = v30;
      if (v5 + 80 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
    }

    while (v23 > v30);
    v12 = v23;
  }

LABEL_45:
  v25 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v25])
  {
    memmove(v6, v4, 80 * v25);
  }

  return 1;
}

uint64_t sub_1C05CBC74()
{
  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000019, 0x80000001C09CD8E0);
  v0 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v0);

  MEMORY[0x1C68DD690](0x646E49646E65202CLL, 0xEB000000003D7865);
  v1 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v1);

  MEMORY[0x1C68DD690](0xD000000000000014, 0x80000001C09CD900);
  v2 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v2);

  MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD920);
  v3 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v3);

  MEMORY[0x1C68DD690](0xD000000000000014, 0x80000001C09CD940);
  v4 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v4);

  MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD960);
  v5 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v5);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C05CBEC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 48;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = sub_1C05CBC74();
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1C051B0D4(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        v4 = sub_1C051B0D4((v8 > 1), v9 + 1, 1, v4);
      }

      *(v4 + 2) = v9 + 1;
      v10 = &v4[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000021, 0x80000001C09CD890);
  v11 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v11);

  MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CD8C0);
  v12 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v12);

  MEMORY[0x1C68DD690](0x3D736E617073202CLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
  sub_1C051E778();
  v13 = sub_1C095D72C();
  v15 = v14;

  MEMORY[0x1C68DD690](v13, v15);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return 0;
}

unint64_t sub_1C05CC118(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 16);
  v34 = *(result + 12);
  v35 = *(result + 20);
  v39 = *(result + 24);
  v40 = *(result + 32);
  v36 = *(result + 28);
  v37 = *(result + 36);
  v41 = *(result + 40);
  v42 = *(result + 48);
  v38 = *(result + 44);
  v4 = *(result + 56);
  v5 = *(result + 64);
  v6 = *(result + 72);
  v58 = 0;
  v59 = 0xE000000000000000;
  if (!*result)
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    if (v2)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      v15 = v4;
      if (v3)
      {
        v17 = 0;
        goto LABEL_23;
      }

LABEL_16:
      sub_1C095DC1C();

      strcpy(v53, "maxTokenCount=");
      HIBYTE(v53[1]) = -18;
      LODWORD(v51) = v34;
      v16 = sub_1C095DF0C();
      MEMORY[0x1C68DD690](v16);

      MEMORY[0x1C68DD690](v53[0], v53[1]);

      v17 = 1;
      goto LABEL_23;
    }

LABEL_21:
    MEMORY[0x1C68DD690](0x6F6353686374616DLL, 0xEB000000003D6572);
    sub_1C095DA5C();
    MEMORY[0x1C68DD690](0, 0xE000000000000000);

    v54 = 0;
    v55 = 0xE000000000000000;
    if (v3)
    {
      goto LABEL_22;
    }

LABEL_15:
    v54 = 8236;
    v55 = 0xE200000000000000;
    v15 = v4;
    goto LABEL_16;
  }

  v33 = v5;
  v7 = 0;
  v8 = 0;
  v58 = 0xD000000000000013;
  v59 = 0x80000001C09CD770;
  v9 = 4;
  do
  {
    if (v8 > 4)
    {
      v9 = v8;
    }

    v10 = -v9;
    v11 = &unk_1F3F8C9F8 + 24 * v8++;
    v12 = (v11 + 48);
    while (1)
    {
      if (v10 + v8 == 1)
      {
        __break(1u);
        return result;
      }

      if ((*(v12 - 2) & ~v1) == 0)
      {
        break;
      }

      ++v8;
      v12 += 3;
      if (v8 == 5)
      {
        goto LABEL_13;
      }
    }

    v14 = *(v12 - 1);
    v13 = *v12;

    if (v7)
    {
      MEMORY[0x1C68DD690](8236, 0xE200000000000000);
    }

    MEMORY[0x1C68DD690](v14, v13);

    v7 = 1;
    v9 = 4;
  }

  while (v8 != 4);
LABEL_13:
  MEMORY[0x1C68DD690](125, 0xE100000000000000);
  v56 = 0;
  v57 = 0xE000000000000000;
  if ((v2 & 1) == 0)
  {
    v56 = 8236;
    v57 = 0xE200000000000000;
    v5 = v33;
    goto LABEL_21;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  v5 = v33;
  if ((v3 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_22:
  v17 = 1;
  v15 = v4;
LABEL_23:
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  if (v39)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    if ((v40 & 1) == 0)
    {
      if (!v17)
      {
LABEL_31:
        sub_1C095DC1C();

        LODWORD(v47) = v36;
        v19 = sub_1C095DF0C();
        MEMORY[0x1C68DD690](v19);

        MEMORY[0x1C68DD690](0xD000000000000011, 0x80000001C09CD850);

        goto LABEL_32;
      }

LABEL_30:
      v51 = 8236;
      v52 = 0xE200000000000000;
      goto LABEL_31;
    }
  }

  else
  {
    if (v17)
    {
      v53[0] = 8236;
      v53[1] = 0xE200000000000000;
    }

    sub_1C095DC1C();

    LODWORD(v49) = v35;
    v18 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v18);

    MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD870);

    v51 = 0;
    v52 = 0xE000000000000000;
    if ((v40 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v17 = 1;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  if (v41)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    if ((v42 & 1) == 0)
    {
      if (!v17)
      {
LABEL_41:
        strcpy(v46, "editDistance=");
        HIWORD(v46[1]) = -4864;
        LODWORD(v45[0]) = v38;
        v21 = sub_1C095DF0C();
        MEMORY[0x1C68DD690](v21);

        MEMORY[0x1C68DD690](v46[0], v46[1]);

        goto LABEL_42;
      }

LABEL_40:
      v47 = 8236;
      v48 = 0xE200000000000000;
      goto LABEL_41;
    }
  }

  else
  {
    if (v17)
    {
      v49 = 8236;
      v50 = 0xE200000000000000;
    }

    sub_1C095DC1C();

    LODWORD(v46[0]) = v37;
    v20 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v20);

    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CD830);

    v47 = 0;
    v48 = 0xE000000000000000;
    if ((v42 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v17 = 1;
  }

  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  if (v15)
  {
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    if ((v5 & 1) == 0)
    {
      if (!v17)
      {
LABEL_51:
        sub_1C095DC1C();

        v23 = sub_1C095DF0C();
        MEMORY[0x1C68DD690](v23);

        MEMORY[0x1C68DD690](0xD000000000000012, 0x80000001C09CD810);

        goto LABEL_52;
      }

LABEL_50:
      v45[0] = 8236;
      v45[1] = 0xE200000000000000;
      goto LABEL_51;
    }
  }

  else
  {
    if (v17)
    {
      v46[0] = 8236;
      v46[1] = 0xE200000000000000;
    }

    sub_1C095DC1C();

    strcpy(v45, "maxAliasCount=");
    HIBYTE(v45[1]) = -18;
    v22 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v22);

    MEMORY[0x1C68DD690](v45[0], v45[1]);

    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    if ((v5 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v17 = 1;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  if (*(v6 + 16))
  {
    if (v17)
    {
      v43 = 8236;
      v44 = 0xE200000000000000;
    }

    MEMORY[0x1C68DD690](0xD000000000000013, 0x80000001C09CD790);
    v24 = *(v6 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = v6 + 32;
      do
      {
        v27 = *(v26 + v25);
        if (v27 > 5)
        {
          if (*(v26 + v25) > 8u)
          {
            if (v27 == 9)
            {
              v29 = 0x80000001C09CD7B0;
              v28 = 0xD000000000000010;
            }

            else
            {
              if (v27 != 10)
              {
                v28 = 0x7A6974616D6D654CLL;
                v30 = 0x6E6F697461;
                goto LABEL_82;
              }

              v28 = 0x636974656E6F6850;
              v29 = 0xEF7265686374614DLL;
            }
          }

          else if (v27 == 6)
          {
            v29 = 0x80000001C09CD7F0;
            v28 = 0xD000000000000013;
          }

          else
          {
            if (v27 == 7)
            {
              v28 = 0x48746361746E6F43;
              v30 = 0x656C646E61;
LABEL_82:
              v29 = v30 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              goto LABEL_83;
            }

            v28 = 0x614D786966657250;
            v29 = 0xEE00676E69686374;
          }
        }

        else if (*(v26 + v25) > 2u)
        {
          if (v27 == 3)
          {
            v28 = 0x74696C736E617254;
            v29 = 0xEF6E6F6974617265;
          }

          else
          {
            if (v27 == 4)
            {
              v28 = 0x6465646E61707845;
              v30 = 0x696A6F6D45;
              goto LABEL_82;
            }

            v29 = 0x80000001C09CD7D0;
            v28 = 0xD000000000000011;
          }
        }

        else if (*(v26 + v25))
        {
          if (v27 == 1)
          {
            v28 = 0x6F747541656D6F48;
            v29 = 0xEE006E6F6974616DLL;
          }

          else
          {
            v28 = 0x6D796E6F6E7953;
            v29 = 0xE700000000000000;
          }
        }

        else
        {
          v28 = 0x656E696665646E75;
          v29 = 0xE900000000000064;
        }

LABEL_83:
        MEMORY[0x1C68DD690](v28, v29);
        if (v25 < v24 - 1)
        {
          MEMORY[0x1C68DD690](8236, 0xE200000000000000);
        }

        ++v25;
      }

      while (v24 != v25);
    }

    MEMORY[0x1C68DD690](125, 0xE100000000000000);
    v32 = v43;
    v31 = v44;
  }

  else
  {
    v32 = 0;
    v31 = 0xE000000000000000;
  }

  sub_1C095DC1C();

  MEMORY[0x1C68DD690](v56, v57);

  MEMORY[0x1C68DD690](v54, v55);

  MEMORY[0x1C68DD690](v53[0], v53[1]);

  MEMORY[0x1C68DD690](v51, v52);

  MEMORY[0x1C68DD690](v49, v50);

  MEMORY[0x1C68DD690](v47, v48);

  MEMORY[0x1C68DD690](v46[0], v46[1]);

  MEMORY[0x1C68DD690](v45[0], v45[1]);

  MEMORY[0x1C68DD690](v32, v31);

  return v58;
}

char *sub_1C05CCB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    for (i = (a1 + 76); ; i += 48)
    {
      v18 = *(i - 44);
      v19 = v2;
      v4 = *(i - 36);
      v5 = *(i - 20);
      v6 = *(i - 8);
      v7 = *i;
      if (v5)
      {
        v8 = *(i - 28);

        sub_1C095DC1C();

        strcpy(v20, ", valueString=");
        HIBYTE(v20[1]) = -18;
        MEMORY[0x1C68DD690](v8, v5);

        v10 = v20[0];
        v9 = v20[1];
        if (v6)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v10 = 0;
        v9 = 0xE000000000000000;
        if (v6)
        {
LABEL_5:
          v11 = 0;
          v12 = 0xE000000000000000;
          if (v7)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      strcpy(v20, ", valueInt=");
      HIDWORD(v20[1]) = -352321536;
      v13 = sub_1C095DF0C();
      MEMORY[0x1C68DD690](v13);

      v11 = v20[0];
      v12 = v20[1];
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_9:
      MEMORY[0x1C68DD690](0x4665756C6176202CLL, 0xED00003D74616F6CLL);
      sub_1C095DA5C();
LABEL_10:
      v20[0] = 1031365995;
      v20[1] = 0xE400000000000000;
      MEMORY[0x1C68DD690](v18, v4);

      MEMORY[0x1C68DD690](v10, v9);

      MEMORY[0x1C68DD690](v11, v12);

      MEMORY[0x1C68DD690](0, 0xE000000000000000);

      v2 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1C051B0D4(0, *(v19 + 2) + 1, 1, v19);
      }

      v15 = *(v2 + 2);
      v14 = *(v2 + 3);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1C051B0D4((v14 > 1), v15 + 1, 1, v2);
      }

      *(v2 + 2) = v15 + 1;
      v16 = &v2[16 * v15];
      *(v16 + 4) = 1031365995;
      *(v16 + 5) = 0xE400000000000000;
      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1C05CCE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 52);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(v2 - 20);
    v5 = *(v2 - 12);
    if (*v2)
    {
    }

    else
    {

      sub_1C095DC1C();
      MEMORY[0x1C68DD690](0x6261626F7270202CLL, 0xEE003D7974696C69);
      sub_1C095DA5C();
    }

    MEMORY[0x1C68DD690](v4, v5);

    MEMORY[0x1C68DD690](0, 0xE000000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1C051B0D4(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1C051B0D4((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = 0x3D65756C6176;
    *(v8 + 5) = 0xE600000000000000;
    v2 += 24;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1C05CD020(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[14];
  v7 = a1[15];
  v48 = *(a1 + 32);
  v50 = *(a1 + 132);
  v9 = *(a1 + 34);
  v52 = *(a1 + 140);
  v10 = a1[18];
  v46 = a1[19];
  v56 = a1[20];
  v60 = *(a1 + 168);
  if (v3)
  {
    v58 = a1[4];
    v11 = a1[3];
    v12 = a1[14];
    v13 = a1[15];
    v14 = *(a1 + 34);
    v15 = *a1;
    sub_1C095DC1C();

    strcpy(v64, ", originAppId=");
    HIBYTE(v64[0]) = -18;
    v16 = v15;
    v9 = v14;
    v7 = v13;
    v8 = v12;
    v6 = v11;
    v5 = v58;
    MEMORY[0x1C68DD690](v16, v3);
    v17 = *(&v64[0] + 1);
    v61 = *&v64[0];
  }

  else
  {
    v61 = 0;
    v17 = 0xE000000000000000;
  }

  v62 = v17;
  v68 = 0;
  v69 = 0xE000000000000000;
  if (v4 == 7)
  {
    goto LABEL_20;
  }

  v68 = 0xD000000000000012;
  v69 = 0x80000001C09CD750;
  if (v4 > 2)
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        v18 = 0x4143726573726150;
        v19 = 0xEA00000000004954;
      }

      else
      {
        v18 = 0x5353726573726150;
        v19 = 0xE900000000000055;
      }
    }

    else if (v4 == 3)
    {
      v18 = 0x526E6F69746E654DLL;
      v19 = 0xEF7265766C6F7365;
    }

    else
    {
      v18 = 0xD000000000000013;
      v19 = 0x80000001C09CD610;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
    v18 = 0x6E776F6E6B6E75;
LABEL_16:
    v19 = 0xE700000000000000;
    goto LABEL_19;
  }

  if (v4 != 1)
  {
    v18 = 0x656C6946636F56;
    goto LABEL_16;
  }

  v18 = 0x61636F5669726953;
  v19 = 0xE900000000000062;
LABEL_19:
  MEMORY[0x1C68DD690](v18, v19);
LABEL_20:
  if (v5)
  {
    *&v64[0] = 0x3D6C6562616C202CLL;
    *(&v64[0] + 1) = 0xE800000000000000;
    MEMORY[0x1C68DD690](v6, v5);
    v20 = 0xE800000000000000;
    v57 = 0x3D6C6562616C202CLL;
  }

  else
  {
    v57 = 0;
    v20 = 0xE000000000000000;
  }

  v59 = v20;
  v21 = 0xE000000000000000;
  if (v8)
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    strcpy(v67, ", matchInfo=[");
    HIWORD(v67[1]) = -4864;
    v22 = *(a1 + 7);
    v23 = *(a1 + 11);
    v64[2] = *(a1 + 9);
    v64[3] = v23;
    v24 = a1[13];
    v64[0] = *(a1 + 5);
    v64[1] = v22;
    v65 = v24;
    v66 = v8;
    v25 = sub_1C05CC118(v64);
    MEMORY[0x1C68DD690](v25);

    MEMORY[0x1C68DD690](93, 0xE100000000000000);
    v21 = v67[1];
    v55 = v67[0];
  }

  else
  {
    v55 = 0;
  }

  v26 = 0xE000000000000000;
  if (*(v7 + 16))
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0x7265706F7270202CLL;
    *(&v64[0] + 1) = 0xEF7B5B3D73656974;
    v67[0] = sub_1C05CCB8C(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
    sub_1C051E778();
    v27 = sub_1C095D72C();
    v29 = v28;

    MEMORY[0x1C68DD690](v27, v29);

    MEMORY[0x1C68DD690](23933, 0xE200000000000000);
    v26 = *(&v64[0] + 1);
    v54 = *&v64[0];
    if (v50)
    {
LABEL_28:
      v49 = 0;
      v30 = 0xE000000000000000;
      goto LABEL_31;
    }
  }

  else
  {
    v54 = 0;
    if (v50)
    {
      goto LABEL_28;
    }
  }

  strcpy(v64, ", startIndex=");
  HIWORD(v64[0]) = -4864;
  LODWORD(v67[0]) = v48;
  v31 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v31);

  v30 = *(&v64[0] + 1);
  v49 = *&v64[0];
LABEL_31:
  v51 = v30;
  if (v52)
  {
    v53 = 0;
    v32 = 0xE000000000000000;
  }

  else
  {
    *&v64[0] = 0x646E49646E65202CLL;
    *(&v64[0] + 1) = 0xEB000000003D7865;
    LODWORD(v67[0]) = v9;
    v33 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v33);

    v32 = *(&v64[0] + 1);
    v53 = *&v64[0];
  }

  v34 = 0xE000000000000000;
  if (*(v10 + 16))
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0xD000000000000011;
    *(&v64[0] + 1) = 0x80000001C09CD6D0;
    v67[0] = sub_1C05CCE60(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
    sub_1C051E778();
    v35 = sub_1C095D72C();
    v37 = v36;

    MEMORY[0x1C68DD690](v35, v37);

    MEMORY[0x1C68DD690](23933, 0xE200000000000000);
    v34 = *(&v64[0] + 1);
    v47 = *&v64[0];
  }

  else
  {
    v47 = 0;
  }

  v38 = 0xE000000000000000;
  if (v56)
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0xD000000000000011;
    *(&v64[0] + 1) = 0x80000001C09CD730;
    MEMORY[0x1C68DD690](v46, v56);
    v38 = *(&v64[0] + 1);
    v39 = *&v64[0];
  }

  else
  {
    v39 = 0;
  }

  if (v60 == 3)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    *&v64[0] = 0;
    *(&v64[0] + 1) = 0xE000000000000000;
    sub_1C095DC1C();

    *&v64[0] = 0xD000000000000019;
    *(&v64[0] + 1) = 0x80000001C09CD710;
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    if (v60 != 2)
    {
      MEMORY[0x1C68DD690](0x656D686361747461, 0xEF3D65707954746ELL);
      if (v60)
      {
        v42 = 0x6C616974726170;
        v43 = 0xE700000000000000;
      }

      else
      {
        v42 = 1819047270;
        v43 = 0xE400000000000000;
      }

      MEMORY[0x1C68DD690](v42, v43);
    }

    MEMORY[0x1C68DD690](v67[0], v67[1]);

    MEMORY[0x1C68DD690](93, 0xE100000000000000);
    v41 = *(&v64[0] + 1);
    v40 = *&v64[0];
  }

  *&v64[0] = 0;
  *(&v64[0] + 1) = 0xE000000000000000;
  sub_1C095DC1C();

  *&v64[0] = 0xD000000000000019;
  *(&v64[0] + 1) = 0x80000001C09CD6F0;
  v67[0] = a2;
  v44 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v44);

  MEMORY[0x1C68DD690](v61, v62);

  MEMORY[0x1C68DD690](v68, v69);

  MEMORY[0x1C68DD690](v57, v59);

  MEMORY[0x1C68DD690](v55, v21);

  MEMORY[0x1C68DD690](v54, v26);

  MEMORY[0x1C68DD690](v49, v51);

  MEMORY[0x1C68DD690](v53, v32);

  MEMORY[0x1C68DD690](v47, v34);

  MEMORY[0x1C68DD690](v39, v38);

  MEMORY[0x1C68DD690](v40, v41);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return *&v64[0];
}

void *sub_1C05CD948@<X0>(void *__src@<X0>, void *(*a2)(void *__return_ptr, uint64_t, uint64_t)@<X3>, char *a3@<X8>)
{
  memcpy(v10 + 1, __src, 0x20AuLL);
  result = sub_1C057363C(v10 + 1);
  if (result != 8 || (v6 = sub_1C05759DC(v10 + 1), v7 = *(v6 + 16), v8 = *(v6 + 24), , result = a2(v10, v7, v8), v9 = v10[0], LOBYTE(v10[0]) == 35))
  {
    v9 = 35;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1C05CD9E0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1C095DB0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  memcpy(v19, a1, 0x20AuLL);
  if (sub_1C057363C(v19) == 8)
  {
    v11 = sub_1C05759DC(v19);
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v18[0] = v13;
    v18[1] = v12;

    sub_1C095D92C();
    v14 = *(a2 - 8);
    v15 = v14;
    if ((*(v14 + 48))(v10, 1, a2) != 1)
    {
      (*(v14 + 32))(a4, v10, a2);
      v16 = 0;
      return (*(v15 + 56))(a4, v16, 1, a2);
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v14 = *(a2 - 8);
  }

  v15 = v14;
  v16 = 1;
  return (*(v15 + 56))(a4, v16, 1, a2);
}

uint64_t sub_1C05CDC50@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(v11, __src, 0x20AuLL);
  result = sub_1C057363C(v11);
  if (result != 8)
  {
    goto LABEL_7;
  }

  v4 = sub_1C05759DC(v11);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (sub_1C095D77C() == v5 && v7 == v6)
  {

    goto LABEL_9;
  }

  v9 = sub_1C095DF3C();

  if (v9)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v10 = 1;
LABEL_10:
  *a2 = v10;
  return result;
}

uint64_t static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v19 - v12;
  memcpy(v22, a1, 0x20AuLL);
  if (sub_1C057363C(v22) != 8)
  {
    return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
  }

  v14 = sub_1C05759DC(v22);
  v19 = *v14;
  v20 = a5;
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = sub_1C095DC2C();
  v21 = &v19;
  MEMORY[0x1EEE9AC00](v17);
  *(&v19 - 8) = a2;
  *(&v19 - 7) = a3;
  *(&v19 - 6) = a4;
  *(&v19 - 40) = v19;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v15;
  swift_getAssociatedConformanceWitness();
  sub_1C095D90C();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_1C05CDF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1C095D77C() == a4 && v10 == a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

void *sub_1C05CE0A4@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (sub_1C05759DC(__dst), , result = AddressOntologyNode.RadiusUnitNode.init(rawValue:)(&v5), v4 = v5, v5 == 4))
  {
    v4 = 4;
  }

  *a2 = v4;
  return result;
}

void *sub_1C05CE12C@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (sub_1C05759DC(__dst), , result = AddressOntologyNode.CountryCode.init(rawValue:)(&v5), v4 = v5, v5 == 255))
  {
    v4 = -1;
  }

  *a2 = v4;
  return result;
}

void *sub_1C05CE1B4@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (sub_1C05759DC(__dst), , result = AddressOntologyNode.Continent.init(rawValue:)(&v5), v4 = v5, v5 == 8))
  {
    v4 = 8;
  }

  *a2 = v4;
  return result;
}

void *sub_1C05CE23C@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (sub_1C05759DC(__dst), , result = AddressOntologyNode.StreetType.init(rawValue:)(&v5), v4 = v5, v5 == 180))
  {
    v4 = -76;
  }

  *a2 = v4;
  return result;
}

void *sub_1C05CE2C4@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 8 || (sub_1C05759DC(__dst), , result = AddressOntologyNode.Proximity.init(rawValue:)(&v5), v4 = v5, v5 == 5))
  {
    v4 = 5;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C05CE364@<X0>(void *__src@<X0>, char *a3@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  if (result != 8)
  {
    goto LABEL_5;
  }

  sub_1C05759DC(v6);
  result = sub_1C095DD6C();
  if (result == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  if (result)
  {
LABEL_5:
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  *a3 = v5;
  return result;
}

uint64_t sub_1C05CE3FC@<X0>(void *__src@<X0>, BOOL *a3@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v5 = 1;
  if (result == 8)
  {
    sub_1C05759DC(v6);
    result = sub_1C095DD6C();
    if (!result)
    {
      v5 = 0;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t TerminalElement.DateTimeValue.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v20 = *(v1 + 96);
  v21 = v2;
  v4 = *(v1 + 112);
  v22 = *(v1 + 128);
  v5 = *(v1 + 48);
  v7 = *(v1 + 16);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v18 = *(v1 + 64);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 16);
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 144);
  *(a1 + 144) = *(v1 + 144);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_1C05149F8(v15, v14, &qword_1EBE18018, &qword_1C0975400);
}

uint64_t TerminalElement.DateTimeValue.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v14 = *(v1 + 296);
  v3 = *(v1 + 200);
  v13[2] = *(v1 + 184);
  v13[3] = v3;
  v4 = *(v1 + 232);
  v13[4] = *(v1 + 216);
  v13[5] = v4;
  v5 = *(v1 + 168);
  v13[0] = *(v1 + 152);
  v13[1] = v5;
  v6 = *(v1 + 264);
  v13[6] = v2;
  v13[7] = v6;
  v7 = *(v1 + 264);
  v13[8] = *(v1 + 280);
  *(a1 + 96) = *(v1 + 248);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 280);
  *(a1 + 144) = *(v1 + 296);
  v8 = *(v1 + 200);
  *(a1 + 32) = *(v1 + 184);
  *(a1 + 48) = v8;
  v9 = *(v1 + 232);
  *(a1 + 64) = *(v1 + 216);
  *(a1 + 80) = v9;
  v10 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v10;
  return sub_1C05149F8(v13, v12, &qword_1EBE18018, &qword_1C0975400);
}

void TerminalElement.DateTimeValue.duration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *a1 = *(v1 + 304);
  *(a1 + 8) = v2;
}

void TerminalElement.DateTimeValue.interval.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  *a1 = *(v1 + 320);
  *(a1 + 8) = v2;
}

void TerminalElement.DateTimeValue.recurrence.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 344);
  *a1 = *(v1 + 336);
  *(a1 + 8) = v2;
}

uint64_t TerminalElement.DateTimeValue.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  v9 = *(v1 + 384);
  v10[0] = v2;
  v3 = *(v1 + 368);
  v8[0] = *(v1 + 352);
  v4 = v8[0];
  v8[1] = v3;
  *(v10 + 15) = *(v1 + 415);
  v5 = *(v10 + 15);
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  *(a1 + 63) = v5;
  return sub_1C05149F8(v8, v7, &qword_1EBE18020, &qword_1C0975408);
}

uint64_t TerminalElement.DateTimeValue.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  v9 = *(v1 + 456);
  v10[0] = v2;
  *(v10 + 15) = *(v1 + 487);
  v3 = *(v10 + 15);
  v4 = *(v1 + 440);
  v8[0] = *(v1 + 424);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 63) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1C05149F8(v8, v7, &qword_1EBE18020, &qword_1C0975408);
}

__n128 TerminalElement.DateTimeValue.init(startDate:endDate:duration:interval:recurrence:startTime:endTime:startPosition:endPosition:temporalIntent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, char *a13)
{
  v13 = *a3;
  v14 = *(a3 + 4);
  v15 = *a4;
  v16 = *(a4 + 2);
  v17 = *a5;
  v18 = *(a5 + 4);
  v19 = *a13;
  v20 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v20;
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = *(a1 + 144);
  v21 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v21;
  v22 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v22;
  v23 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v23;
  v24 = *(a2 + 112);
  *(a9 + 248) = *(a2 + 96);
  v25 = *(a2 + 128);
  *(a9 + 264) = v24;
  *(a9 + 280) = v25;
  *(a9 + 296) = *(a2 + 144);
  v26 = *(a2 + 48);
  *(a9 + 184) = *(a2 + 32);
  *(a9 + 200) = v26;
  v27 = *(a2 + 80);
  *(a9 + 216) = *(a2 + 64);
  *(a9 + 232) = v27;
  v28 = *(a2 + 16);
  *(a9 + 152) = *a2;
  *(a9 + 168) = v28;
  *(a9 + 304) = v13;
  *(a9 + 312) = v14;
  *(a9 + 320) = v15;
  *(a9 + 328) = v16;
  *(a9 + 336) = v17;
  *(a9 + 344) = v18;
  v29 = *(a6 + 48);
  *(a9 + 384) = *(a6 + 32);
  *(a9 + 400) = v29;
  *(a9 + 415) = *(a6 + 63);
  v30 = *(a6 + 16);
  *(a9 + 352) = *a6;
  *(a9 + 368) = v30;
  result = *a7;
  v32 = *(a7 + 16);
  v33 = *(a7 + 32);
  v34 = *(a7 + 48);
  *(a9 + 487) = *(a7 + 63);
  *(a9 + 456) = v33;
  *(a9 + 472) = v34;
  *(a9 + 424) = result;
  *(a9 + 440) = v32;
  *(a9 + 496) = a8;
  *(a9 + 504) = a10 & 1;
  *(a9 + 512) = a11;
  *(a9 + 520) = a12 & 1;
  *(a9 + 521) = v19;
  return result;
}

uint64_t TerminalElement.Date.dateTimeHoliday.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 64);
  return sub_1C05D25A0(v2, v3);
}

__n128 TerminalElement.Date.fractionalPeriod.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 129);
  result = *(v1 + 88);
  v6 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

uint64_t TerminalElement.Date.init(year:month:dayOfMonth:dayOfWeek:dateTimeHoliday:qualifier:isStart:isUserDefined:periods:calendarSystem:fractionalPeriod:dayOfWeekOrdinalValue:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, __int16 a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a9 + 48) = *a8;
  v16 = *(a14 + 16);
  *(a9 + 88) = *a14;
  v17 = *a7;
  v18 = *(a8 + 16);
  v19 = *a10;
  v20 = *a13;
  v21 = *(a14 + 32);
  v22 = *(a14 + 40);
  v23 = *(a14 + 41);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  result = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = v17;
  *(a9 + 64) = v18;
  *(a9 + 65) = v19;
  *(a9 + 66) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = v20;
  *(a9 + 104) = v16;
  *(a9 + 120) = v21;
  *(a9 + 128) = v22;
  *(a9 + 129) = v23;
  *(a9 + 136) = a15;
  *(a9 + 144) = a16 & 1;
  return result;
}

uint64_t TerminalElement.Time.meridiem.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TerminalElement.Time.timeZoneID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TerminalElement.Time.init(meridiem:hourOfDay:minute:period:qualifier:timeZoneID:isStart:isUserDefined:is24HourStyleInput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, __int16 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12)
{
  v12 = *a7;
  v13 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = v12;
  *(a9 + 43) = v13;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  *(a9 + 65) = *(&a12 + 1);
  return result;
}

uint64_t TerminalElement.Interval.init(quantity:period:qualifier:isUserDefined:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *a4;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 9) = v6;
  *(a6 + 10) = v7;
  *(a6 + 11) = a5;
  return result;
}

uint64_t TerminalElement.Recurrence.init(magnitude:period:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 9) = v4;
  return result;
}

uint64_t TerminalElement.DateTimePeriod.init(isStart:period:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

uint64_t TerminalElement.FractionalPeriod.init(numerator:denominator:ordinalValue:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t TerminalElement.DateTimeHoliday.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TerminalElement.DateTimeHoliday.init(identifier:calendarSystem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t TerminalElement.DateTimeValue.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 156);
  v4 = (v1 + 152);
  v38 = *(v1 + 38);
  v39 = *(v1 + 40);
  v5 = *(v1 + 82);
  v37 = *(v1 + 42);
  v6 = *(v1 + 172);
  v7 = *(v1 + 45);
  v8 = *(v1 + 54);
  v40 = *(v1 + 44);
  v41 = *(v1 + 53);
  v9 = *(v1 + 456);
  v80 = *(v1 + 440);
  v81 = v9;
  v82[0] = *(v1 + 472);
  *(v82 + 15) = *(v1 + 487);
  v42 = *(v1 + 62);
  v43 = *(v1 + 64);
  v44 = v8;
  v45 = *(v1 + 504);
  v46 = *(v1 + 520);
  v47 = *(v1 + 521);
  v84 = *(v1 + 144);
  v10 = v1[8];
  v83[7] = v1[7];
  v83[8] = v10;
  v11 = v1[6];
  v83[5] = v1[5];
  v83[6] = v11;
  v12 = v1[4];
  v83[3] = v1[3];
  v83[4] = v12;
  v13 = v1[2];
  v83[1] = v1[1];
  v83[2] = v13;
  v83[0] = *v1;
  if (sub_1C05D25B4(v83) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    v14 = v1[7];
    v66 = v1[6];
    v67 = v14;
    v68 = v1[8];
    v69 = *(v1 + 144);
    v15 = v1[3];
    v63 = v1[2];
    v64[0] = v15;
    v16 = v1[5];
    v64[1] = v1[4];
    v65 = v16;
    v17 = v1[1];
    v61 = *v1;
    v62 = v17;
    sub_1C05D25CC(&v61, &v70);
    TerminalElement.Date.hash(into:)(a1);
    v18 = v1[7];
    v76 = v1[6];
    v77 = v18;
    v78 = v1[8];
    v79 = *(v1 + 144);
    v19 = v1[3];
    v72 = v1[2];
    v73 = v19;
    v20 = v1[5];
    v74 = v1[4];
    v75 = v20;
    v21 = v1[1];
    v70 = *v1;
    v71 = v21;
    sub_1C05D2604(&v70);
  }

  v22 = *(v1 + 264);
  v76 = *(v1 + 248);
  v77 = v22;
  v78 = *(v1 + 280);
  v79 = *(v1 + 296);
  v23 = *(v1 + 200);
  v72 = *(v1 + 184);
  v73 = v23;
  v24 = *(v1 + 232);
  v74 = *(v1 + 216);
  v75 = v24;
  v25 = *(v1 + 168);
  v70 = *v4;
  v71 = v25;
  if (sub_1C05D25B4(&v70) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    v26 = *(v1 + 264);
    v59[3] = *(v1 + 248);
    v59[4] = v26;
    v59[5] = *(v1 + 280);
    v60 = *(v1 + 296);
    v27 = *(v1 + 200);
    v58 = *(v1 + 184);
    v59[0] = v27;
    v28 = *(v1 + 232);
    v59[1] = *(v1 + 216);
    v59[2] = v28;
    v29 = *(v1 + 168);
    v56 = *v4;
    v57 = v29;
    sub_1C05D25CC(&v56, &v61);
    TerminalElement.Date.hash(into:)(a1);
    v30 = *(v1 + 264);
    v66 = *(v1 + 248);
    v67 = v30;
    v68 = *(v1 + 280);
    v69 = *(v1 + 296);
    v31 = *(v1 + 200);
    v63 = *(v1 + 184);
    v64[0] = v31;
    v32 = *(v1 + 232);
    v64[1] = *(v1 + 216);
    v65 = v32;
    v33 = *(v1 + 168);
    v61 = *v4;
    v62 = v33;
    sub_1C05D2604(&v61);
  }

  if (v3 >> 8 == 54)
  {
    sub_1C095E00C();
  }

  else
  {
    *&v61 = v38;
    WORD4(v61) = v3 & 0xFF01;
    sub_1C095E00C();
    TerminalElement.Duration.hash(into:)();
  }

  if (HIBYTE(v5) == 3)
  {
    sub_1C095E00C();
  }

  else
  {
    *&v61 = v39;
    WORD4(v61) = v5 & 0xFF01;
    BYTE10(v61) = BYTE2(v5);
    BYTE11(v61) = HIBYTE(v5);
    sub_1C095E00C();
    TerminalElement.Interval.hash(into:)();
  }

  if (v6 >> 8 == 54)
  {
    goto LABEL_19;
  }

  v34 = v6 >> 8;
  sub_1C095E00C();
  if (v6)
  {
    sub_1C095E00C();
    if (v34 != 53)
    {
      goto LABEL_16;
    }

LABEL_19:
    sub_1C095E00C();
    if (v7 != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v37);
  if (v34 == 53)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v6 >> 8);
  if (v7 != 1)
  {
LABEL_17:
    v50 = v1[23];
    v52 = v1[24];
    *v54 = v1[25];
    *&v54[15] = *(v1 + 415);
    *&v48 = v40;
    *(&v48 + 1) = v7;
    sub_1C095E00C();
    *&v56 = v40;
    *(&v56 + 1) = v7;
    v35 = v1[24];
    v57 = v1[23];
    v58 = v35;
    v59[0] = v1[25];
    *(v59 + 15) = *(v1 + 415);
    sub_1C05D2634(&v56, &v61);
    TerminalElement.Time.hash(into:)(a1);
    v63 = v52;
    v64[0] = *v54;
    *(v64 + 15) = *&v54[15];
    v61 = v48;
    v62 = v50;
    sub_1C05D266C(&v61);
    goto LABEL_21;
  }

LABEL_20:
  sub_1C095E00C();
LABEL_21:
  if (v44 == 1)
  {
    sub_1C095E00C();
    if (!v45)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v51 = v80;
    v53 = v81;
    *v55 = v82[0];
    *&v55[15] = *(v82 + 15);
    *&v49 = v41;
    *(&v49 + 1) = v44;
    sub_1C095E00C();
    *&v56 = v41;
    *(&v56 + 1) = v44;
    v57 = v80;
    v58 = v81;
    v59[0] = v82[0];
    *(v59 + 15) = *(v82 + 15);
    sub_1C05D2634(&v56, &v61);
    TerminalElement.Time.hash(into:)(a1);
    v63 = v53;
    v64[0] = *v55;
    *(v64 + 15) = *&v55[15];
    v61 = v49;
    v62 = v51;
    sub_1C05D266C(&v61);
    if (!v45)
    {
LABEL_23:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v42);
      if (!v46)
      {
        goto LABEL_24;
      }

LABEL_28:
      sub_1C095E00C();
      if (v47 != 3)
      {
        goto LABEL_25;
      }

      return sub_1C095E00C();
    }
  }

  sub_1C095E00C();
  if (v46)
  {
    goto LABEL_28;
  }

LABEL_24:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v43);
  if (v47 != 3)
  {
LABEL_25:
    sub_1C095E00C();
    return MEMORY[0x1C68DDE90](v47);
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.DateTimeValue.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.DateTimeValue.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF208()
{
  sub_1C095DFEC();
  TerminalElement.DateTimeValue.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF24C(uint64_t a1)
{
  sub_1C095DFEC();
  TerminalElement.DateTimeValue.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t TerminalElement.Date.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  v23 = v2[2];
  v24 = v2[4];
  v26 = *(v2 + 40);
  v5 = *(v2 + 41);
  v6 = v2[7];
  v7 = *(v2 + 64);
  v8 = *(v2 + 65);
  v9 = *(v2 + 66);
  v28 = *(v2 + 67);
  v29 = v2[9];
  v30 = *(v2 + 80);
  v10 = v2[12];
  v20 = v2[11];
  v11 = v2[14];
  v21 = v2[13];
  v22 = v2[15];
  v12 = *(v2 + 128);
  v31 = *(v2 + 129);
  v25 = v2[17];
  v27 = *(v2 + 144);
  if (*(v2 + 8) == 1)
  {
    sub_1C095E00C();
    if (!v4)
    {
LABEL_3:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v23);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v2[12];
    v10 = *(v2 + 41);
    v13 = *(v2 + 128);
    v14 = *(v2 + 66);
    v15 = *(v2 + 64);
    v16 = *v2;
    sub_1C095E00C();
    v17 = v16;
    v7 = v15;
    v9 = v14;
    v12 = v13;
    v5 = v10;
    LOBYTE(v10) = v19;
    MEMORY[0x1C68DDE90](v17);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  sub_1C095E00C();
LABEL_6:
  if (v26)
  {
    sub_1C095E00C();
    if (v5 != 7)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1C095E00C();
    if (v6 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v24);
  if (v5 == 7)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v5);
  if (v6 == 1)
  {
LABEL_14:
    sub_1C095E00C();
    if (v8 == 18)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_12:
  sub_1C095E00C();
  if (v6)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v7 == 12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1C095E00C();
    if (v7 == 12)
    {
      goto LABEL_14;
    }
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v7);
  if (v8 == 18)
  {
LABEL_15:
    sub_1C095E00C();
    if (v9 == 2)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_19:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v8);
  if (v9 != 2)
  {
LABEL_16:
    sub_1C095E00C();
  }

LABEL_20:
  sub_1C095E00C();
  if (v28 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C057134C(a1, v29);
  if (v30 == 12)
  {
    sub_1C095E00C();
    if (v31)
    {
LABEL_33:
      sub_1C095E00C();
      if (v27)
      {
        return sub_1C095E00C();
      }

LABEL_30:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v25);
    }
  }

  else
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v30);
    if (v31)
    {
      goto LABEL_33;
    }
  }

  sub_1C095E00C();
  if (v10)
  {
    sub_1C095E00C();
    if ((v11 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v20);
    if ((v11 & 1) == 0)
    {
LABEL_28:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v21);
      if (v12)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }
  }

  sub_1C095E00C();
  if (v12)
  {
    goto LABEL_33;
  }

LABEL_29:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v22);
  if ((v27 & 1) == 0)
  {
    goto LABEL_30;
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Date.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.Date.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF600()
{
  sub_1C095DFEC();
  TerminalElement.Date.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF644(uint64_t a1)
{
  sub_1C095DFEC();
  TerminalElement.Date.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t TerminalElement.Time.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 41);
  v7 = *(v1 + 43);
  v8 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 65);
  v13 = *(v1 + 66);
  if (*(v1 + 8))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v2);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C095E00C();
    goto LABEL_8;
  }

  sub_1C095E00C();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v4);
LABEL_8:
  if (v6 == 3)
  {
    goto LABEL_12;
  }

  sub_1C095E00C();
  if (v6 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if ((v6 >> 8) == 53)
  {
LABEL_12:
    sub_1C095E00C();
    if (v7 == 18)
    {
      goto LABEL_13;
    }

LABEL_16:
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v7);
    v9 = v11;
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v6 >> 8);
  if (v7 != 18)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1C095E00C();
  v9 = v11;
  if (v8)
  {
LABEL_14:
    sub_1C095E00C();
    sub_1C095D7BC();
    goto LABEL_18;
  }

LABEL_17:
  sub_1C095E00C();
LABEL_18:
  if (v9 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if (v12 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if (v13 != 2)
  {
    sub_1C095E00C();
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Time.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.Time.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF8D0()
{
  sub_1C095DFEC();
  TerminalElement.Time.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05CF914(uint64_t a1)
{
  sub_1C095DFEC();
  TerminalElement.Time.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t TerminalElement.Duration.hash(into:)()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v1);
    }
  }

  else
  {
    v3 = *v0;
    sub_1C095E00C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C68DDEC0](v4);
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Duration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C68DDEC0](v4);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05CFA90(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_1C095DFEC();
  if (v3 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1C68DDEC0](v5);
  }

  sub_1C095E00C();
  if (v4 != 53)
  {
    MEMORY[0x1C68DDE90](v4);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.Interval.hash(into:)()
{
  v1 = *(v0 + 9);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *v0;
    sub_1C095E00C();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1C68DDEC0](v5);
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v1);
      if (v2 != 18)
      {
        goto LABEL_4;
      }

LABEL_11:
      sub_1C095E00C();
      if (v3 == 2)
      {
        return sub_1C095E00C();
      }

      goto LABEL_5;
    }
  }

  sub_1C095E00C();
  if (v2 == 18)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v2);
  if (v3 != 2)
  {
LABEL_5:
    sub_1C095E00C();
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Interval.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1C68DDEC0](v6);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  if (v4 != 18)
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v4);
    if (v5 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1C095E00C();
  if (v5 != 2)
  {
LABEL_11:
    sub_1C095E00C();
  }

LABEL_13:
  sub_1C095E00C();
  return sub_1C095E03C();
}

uint64_t sub_1C05CFD38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  v6 = *(v1 + 11);
  sub_1C095DFEC();
  if (v3 == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1C68DDEC0](v7);
  }

  sub_1C095E00C();
  if (v4 != 53)
  {
    MEMORY[0x1C68DDE90](v4);
  }

  if (v5 != 18)
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v5);
    if (v6 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1C095E00C();
  if (v6 != 2)
  {
LABEL_11:
    sub_1C095E00C();
  }

LABEL_13:
  sub_1C095E00C();
  return sub_1C095E03C();
}

uint64_t TerminalElement.Recurrence.hash(into:)()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v1);
    }
  }

  else
  {
    v3 = *v0;
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v3);
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.Recurrence.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2 != 1)
  {
    MEMORY[0x1C68DDE90](v1);
  }

  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05CFF78()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (v1 != 53)
    {
LABEL_3:
      sub_1C095E00C();
      return MEMORY[0x1C68DDE90](v1);
    }
  }

  else
  {
    v3 = *v0;
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v3);
    if (v1 != 53)
    {
      goto LABEL_3;
    }
  }

  return sub_1C095E00C();
}

uint64_t sub_1C05CFFFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v3 != 1)
  {
    MEMORY[0x1C68DDE90](v2);
  }

  sub_1C095E00C();
  if (v4 != 53)
  {
    MEMORY[0x1C68DDE90](v4);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.DateTimePeriod.hash(into:)()
{
  v1 = v0[1];
  if (*v0 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  if (v1 == 53)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v1);
}

uint64_t TerminalElement.DateTimePeriod.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C095DFEC();
  if (v1 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095E00C();
  if (v2 != 53)
  {
    MEMORY[0x1C68DDE90](v2);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05D01C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C095DFEC();
  if (v2 != 2)
  {
    sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095E00C();
  if (v3 != 53)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.DateTimeHoliday.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v2 == 12)
    {
      return sub_1C095E00C();
    }
  }

  else
  {
    sub_1C095E00C();
    if (v2 == 12)
    {
      return sub_1C095E00C();
    }
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v2);
}

uint64_t TerminalElement.DateTimeHoliday.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1)
  {
    sub_1C095D7BC();
  }

  sub_1C095E00C();
  if (v2 != 12)
  {
    MEMORY[0x1C68DDE90](v2);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C05D038C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v2 == 12)
    {
      return sub_1C095E00C();
    }
  }

  else
  {
    sub_1C095E00C();
    if (v2 == 12)
    {
      return sub_1C095E00C();
    }
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v2);
}

uint64_t sub_1C05D0414(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095E00C();
  if (v3 != 12)
  {
    MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E03C();
}

uint64_t TerminalElement.FractionalPeriod.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_1C095E00C();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_1C095E00C();
  }

  v6 = *v0;
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v6);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v1);
  if (!v4)
  {
LABEL_4:
    sub_1C095E00C();
    return MEMORY[0x1C68DDE90](v3);
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.FractionalPeriod.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    sub_1C095E00C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v1);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v3);
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v5);
  return sub_1C095E03C();
}

uint64_t sub_1C05D065C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[4];
  v7 = *(v1 + 40);
  sub_1C095DFEC();
  if (v3 == 1)
  {
    sub_1C095E00C();
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    if (!v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v2);
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v4);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v6);
  return sub_1C095E03C();
}

uint64_t _s12SiriOntology15TerminalElementV15DateTimeHolidayV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4 == 12)
  {
    if (v6 == 12)
    {
      return 1;
    }
  }

  else if (v6 != 12 && v4 == v6)
  {
    return 1;
  }

  return 0;
}

BOOL _s12SiriOntology15TerminalElementV16FractionalPeriodV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = *(a2 + 24);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v5 = *(a2 + 40);
    }

    else
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

BOOL _s12SiriOntology15TerminalElementV4DateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 65);
  v11 = *(a1 + 66);
  v62 = *(a1 + 67);
  v60 = *(a1 + 72);
  v58 = *(a1 + 80);
  v50 = *(a1 + 88);
  v54 = *(a1 + 96);
  v47 = *(a1 + 104);
  v51 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v56 = *(a1 + 129);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v16 = *(a2 + 41);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 65);
  v21 = *(a2 + 66);
  v61 = *(a2 + 67);
  v59 = *(a2 + 72);
  v57 = *(a2 + 80);
  v48 = *(a2 + 88);
  v53 = *(a2 + 96);
  v45 = *(a2 + 104);
  v49 = *(a2 + 112);
  v44 = *(a2 + 120);
  v46 = *(a2 + 128);
  v55 = *(a2 + 129);
  v52 = *(a2 + 136);
  v22 = *(a2 + 144);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v24 = *(a2 + 24);
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v25 = *(a2 + 40);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v6 == 7)
  {
    if (v16 != 7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 7 || v6 != v16)
    {
      return result;
    }
  }

  if (v8 != 1)
  {
    v65[0] = v7;
    v65[1] = v8;
    v66 = v9;
    if (v18 != 1)
    {
      v39 = v22;
      v40 = v13;
      v41 = v12;
      v42 = v15;
      v43 = v14;
      v63[0] = v17;
      v63[1] = v18;
      v64 = v19;
      v38 = _s12SiriOntology15TerminalElementV15DateTimeHolidayV2eeoiySbAE_AEtFZ_0(v65, v63);
      sub_1C05D25A0(v7, v8);
      sub_1C05D25A0(v17, v18);
      sub_1C05D25A0(v7, v8);

      sub_1C05D3944(v7, v8);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

    sub_1C05D25A0(v7, v8);
    sub_1C05D25A0(v17, 1);
    sub_1C05D25A0(v7, v8);

LABEL_33:
    sub_1C05D3944(v7, v8);
    sub_1C05D3944(v17, v18);
    return 0;
  }

  v39 = *(a2 + 144);
  v40 = v13;
  v41 = v12;
  v42 = v15;
  v43 = v14;
  sub_1C05D25A0(v7, 1);
  if (v18 != 1)
  {
    sub_1C05D25A0(v17, v18);
    goto LABEL_33;
  }

  sub_1C05D25A0(v17, 1);
  sub_1C05D3944(v7, 1);
LABEL_37:
  if (v10 == 18)
  {
    v27 = v43;
    v28 = v42;
    v29 = v41;
    v31 = v39;
    v30 = v40;
    if (v20 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v27 = v43;
    v28 = v42;
    v29 = v41;
    v31 = v39;
    v30 = v40;
    if (v20 == 18 || v10 != v20)
    {
      return result;
    }
  }

  if (v11 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v21 == 2 || ((v21 ^ v11) & 1) != 0)
    {
      return result;
    }
  }

  if (v62 == 2)
  {
    if (v61 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v61 == 2 || ((v61 ^ v62) & 1) != 0)
    {
      return result;
    }
  }

  v32 = v29;
  v33 = v27;
  if ((sub_1C055B5AC(v60, v59) & 1) == 0)
  {
    return 0;
  }

  if (v58 == 12)
  {
    v34 = v33;
    v35 = v28;
    v36 = v31;
    if (v57 != 12)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v57 == 12)
    {
      return result;
    }

    v34 = v33;
    v35 = v28;
    v36 = v31;
    if (v58 != v57)
    {
      return result;
    }
  }

  if (v56)
  {
    if ((v55 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  if (v55)
  {
    return 0;
  }

  if (v54)
  {
    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53 & 1 | (v50 != v48))
  {
    return 0;
  }

  if (v51)
  {
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49 & 1 | (v47 != v45))
  {
    return 0;
  }

  if (v30)
  {
    v34 = v33;
    v35 = v28;
    v36 = v31;
    if ((v46 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  result = 0;
  if ((v46 & 1) == 0)
  {
    v34 = v33;
    v35 = v28;
    v36 = v31;
    if (v32 == v44)
    {
LABEL_60:
      if ((v35 & 1) == 0)
      {
        if (v34 == v52)
        {
          v37 = v36;
        }

        else
        {
          v37 = 1;
        }

        return (v37 & 1) == 0;
      }

      return (v36 & 1) != 0;
    }
  }

  return result;
}

BOOL _s12SiriOntology15TerminalElementV8DurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 53)
  {
    return v4 != 53 && v2 == v4;
  }

  return v4 == 53;
}

uint64_t _s12SiriOntology15TerminalElementV8IntervalV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 10);
  v4 = *(a1 + 11);
  v5 = *(a2 + 8);
  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v8 = *(a2 + 11);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (v2 == 53)
  {
    if (v6 != 53)
    {
      return 0;
    }
  }

  else if (v6 == 53 || v2 != v6)
  {
    return 0;
  }

  if (v3 == 18)
  {
    if (v7 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v7 == 18 || v3 != v7)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v8 ^ v4) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

BOOL _s12SiriOntology15TerminalElementV10RecurrenceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 53)
  {
    return v4 != 53 && v2 == v4;
  }

  return v4 == 53;
}

uint64_t _s12SiriOntology15TerminalElementV14DateTimePeriodV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v3 == 53)
    {
      if (v5 != 53)
      {
        return 0;
      }
    }

    else if (v5 == 53 || v3 != v5)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL _s12SiriOntology15TerminalElementV4TimeV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = *(a1 + 43);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = *(a1 + 65);
  v14 = *(a1 + 66);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 41);
  v21 = *(a2 + 43);
  v23 = *(a2 + 48);
  v22 = *(a2 + 56);
  v24 = *(a2 + 64);
  v25 = *(a2 + 65);
  v26 = *(a2 + 66);
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v46 = *(a1 + 43);
      v47 = *(a2 + 41);
      v52 = *(a2 + 65);
      v53 = *(a1 + 64);
      v50 = *(a2 + 66);
      v51 = *(a1 + 65);
      v27 = *(a1 + 66);
      v28 = *(a2 + 64);
      v44 = a1[6];
      v29 = a1[7];
      v49 = *(a2 + 56);
      v30 = *(a2 + 48);
      v43 = *(a2 + 40);
      v31 = *(a2 + 43);
      v48 = *(a1 + 41);
      v42 = *(a2 + 32);
      v32 = a1[4];
      v45 = *(a1 + 40);
      v33 = sub_1C095DF3C();
      v7 = v45;
      v9 = v46;
      v6 = v32;
      v18 = v42;
      v20 = v47;
      v8 = v48;
      v21 = v31;
      v19 = v43;
      v23 = v30;
      v22 = v49;
      v11 = v29;
      v10 = v44;
      v24 = v28;
      v14 = v27;
      v26 = v50;
      v13 = v51;
      v25 = v52;
      v12 = v53;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v16)
    {
      v34 = v17;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v18)
    {
      v35 = v19;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  if (v8 == 3)
  {
    if (v20 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 3)
    {
      return 0;
    }

    if (v8 == 2)
    {
      if (v20 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v20 == 2 || ((v20 ^ v8) & 1) != 0)
      {
        return result;
      }
    }

    v40 = v8 >> 8;
    v41 = v20 >> 8;
    if (v40 == 53)
    {
      if (v41 != 53)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v41 == 53 || v40 != v41)
      {
        return result;
      }
    }
  }

  if (v9 == 18)
  {
    if (v21 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v21 == 18 || v9 != v21)
    {
      return result;
    }
  }

  if (v11)
  {
    if (!v22)
    {
      return 0;
    }

    if (v10 != v23 || v11 != v22)
    {
      v37 = v14;
      v38 = v24;
      v39 = sub_1C095DF3C();
      v24 = v38;
      v14 = v37;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v24 == 2 || ((v24 ^ v12) & 1) != 0)
    {
      return result;
    }
  }

  if (v13 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }

    goto LABEL_60;
  }

  result = 0;
  if (v25 != 2 && ((v25 ^ v13) & 1) == 0)
  {
LABEL_60:
    if (v14 != 2)
    {
      return v26 != 2 && ((v26 ^ v14) & 1) == 0;
    }

    return v26 == 2;
  }

  return result;
}

BOOL _s12SiriOntology15TerminalElementV13DateTimeValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 80);
  v194 = *(a1 + 96);
  v195 = v4;
  v6 = *(a1 + 112);
  v196 = *(a1 + 128);
  v7 = *(a1 + 48);
  v8 = *(a1 + 16);
  v190 = *(a1 + 32);
  v191 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  v192 = *(a1 + 64);
  v193 = v10;
  v11 = *(a1 + 16);
  v189[0] = *a1;
  v189[1] = v11;
  v12 = *(a1 + 264);
  v13 = *(a1 + 280);
  v204 = *(a1 + 248);
  v205 = v12;
  v206 = v13;
  v14 = *(a1 + 200);
  v200 = *(a1 + 184);
  v201 = v14;
  v15 = *(a1 + 232);
  v202 = *(a1 + 216);
  v203 = v15;
  v16 = *(a1 + 168);
  v198 = *(a1 + 152);
  v199 = v16;
  v17 = *(a1 + 400);
  v210 = *(a1 + 384);
  v211[0] = v17;
  v18 = *(a1 + 352);
  v209 = *(a1 + 368);
  v208 = v18;
  *(v215 + 15) = *(a1 + 487);
  v19 = *(a1 + 456);
  v215[0] = *(a1 + 472);
  v214 = v19;
  v20 = *(a1 + 440);
  v212 = *(a1 + 424);
  v213 = v20;
  v21 = *a2;
  v216[1] = a2[1];
  v216[0] = v21;
  v22 = a2[3];
  v23 = a2[4];
  v24 = v23;
  v216[5] = a2[5];
  v216[4] = v23;
  v25 = a2[2];
  v26 = *a2;
  v27 = a2[1];
  v216[3] = a2[3];
  v216[2] = v25;
  v28 = a2[7];
  v216[8] = a2[8];
  v29 = a2[6];
  v30 = a2[5];
  v216[7] = a2[7];
  v216[6] = v29;
  v31 = *(a2 + 264);
  v32 = *(a2 + 280);
  v224 = *(a2 + 248);
  v225 = v31;
  v226 = v32;
  v33 = *(a2 + 200);
  v220 = *(a2 + 184);
  v221 = v33;
  v34 = *(a2 + 232);
  v222 = *(a2 + 216);
  v223 = v34;
  v35 = *(a2 + 168);
  v218 = *(a2 + 152);
  v219 = v35;
  v36 = a2[25];
  v230 = a2[24];
  v231[0] = v36;
  v37 = a2[22];
  v229 = a2[23];
  v228 = v37;
  v38 = *(a2 + 456);
  v39 = *(a2 + 472);
  *(v235 + 15) = *(a2 + 487);
  v235[0] = v39;
  v234 = v38;
  v40 = *(a2 + 440);
  v232 = *(a2 + 424);
  v233 = v40;
  v41 = *(a1 + 112);
  __src[6] = *(a1 + 96);
  __src[7] = v41;
  __src[8] = *(a1 + 128);
  v42 = *(a1 + 48);
  __src[2] = *(a1 + 32);
  __src[3] = v42;
  v43 = *(a1 + 80);
  __src[4] = *(a1 + 64);
  __src[5] = v43;
  v44 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v44;
  v45 = a2[8];
  *(&__src[16] + 8) = v28;
  *(&__src[17] + 8) = v45;
  *(&__src[15] + 8) = v29;
  *(&__src[11] + 8) = v25;
  *(&__src[12] + 8) = v22;
  *(&__src[13] + 8) = v24;
  *(&__src[14] + 8) = v30;
  *(&__src[9] + 8) = v26;
  *(&__src[10] + 8) = v27;
  v197 = *(a1 + 144);
  v207 = *(a1 + 296);
  v236[6] = v194;
  v236[7] = v6;
  v236[8] = *(a1 + 128);
  v46 = *(a1 + 304);
  v47 = *(a1 + 312);
  v131 = *(a1 + 313);
  v48 = *(a1 + 312);
  v130 = *(a1 + 320);
  v49 = *(a1 + 328);
  v124 = *(a1 + 336);
  v125 = *(a1 + 345);
  v126 = *(a1 + 344);
  v128 = *(a1 + 344);
  *(v211 + 15) = *(a1 + 415);
  v119 = *(a1 + 496);
  v50 = *(a1 + 512);
  v120 = *(a1 + 520);
  v121 = *(a1 + 504);
  v51 = *(a1 + 521);
  v217 = *(a2 + 144);
  v227 = *(a2 + 296);
  v236[2] = v190;
  v236[3] = v9;
  v52 = *(a2 + 38);
  v53 = *(a2 + 156);
  v127 = *(a2 + 40);
  v54 = *(a2 + 82);
  v123 = *(a2 + 42);
  v129 = *(a2 + 172);
  *(v231 + 15) = *(a2 + 415);
  v122 = *(a2 + 504);
  v116 = *(a2 + 64);
  v117 = *(a2 + 62);
  v118 = *(a2 + 520);
  v115 = *(a2 + 521);
  LOBYTE(__src[9]) = *(a1 + 144);
  BYTE8(__src[18]) = *(a2 + 144);
  v237 = *(a1 + 144);
  v236[4] = v192;
  v236[5] = v5;
  v236[0] = v189[0];
  v236[1] = v8;
  if (sub_1C05D25B4(v236) == 1)
  {
    v55 = a2[6];
    __dst[7] = a2[7];
    __dst[8] = a2[8];
    LOBYTE(__dst[9]) = *(a2 + 144);
    v56 = a2[3];
    __dst[2] = a2[2];
    __dst[3] = v56;
    v57 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v57;
    __dst[6] = v55;
    v58 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v58;
    if (sub_1C05D25B4(__dst) != 1)
    {
      sub_1C05149F8(v189, &v178, &qword_1EBE18018, &qword_1C0975400);
      v80 = v216;
      v81 = &v178;
LABEL_15:
      sub_1C05149F8(v80, v81, &qword_1EBE18018, &qword_1C0975400);
      goto LABEL_16;
    }

    v113 = v50;
    v114 = v51;
    v59 = *(a1 + 112);
    v184 = *(a1 + 96);
    v185 = v59;
    v186 = *(a1 + 128);
    v187 = *(a1 + 144);
    v60 = *(a1 + 48);
    v180 = *(a1 + 32);
    v181 = v60;
    v61 = *(a1 + 80);
    v182 = *(a1 + 64);
    v183 = v61;
    v62 = *(a1 + 16);
    v178 = *a1;
    v179 = v62;
    sub_1C05149F8(v189, &v168, &qword_1EBE18018, &qword_1C0975400);
    sub_1C05149F8(v216, &v168, &qword_1EBE18018, &qword_1C0975400);
    sub_1C05145B4(&v178, &qword_1EBE18018, &qword_1C0975400);
  }

  else
  {
    v63 = *(a1 + 112);
    v64 = *(a1 + 80);
    v184 = *(a1 + 96);
    v185 = v63;
    v65 = *(a1 + 112);
    v186 = *(a1 + 128);
    v66 = *(a1 + 48);
    v67 = *(a1 + 16);
    v180 = *(a1 + 32);
    v181 = v66;
    v68 = *(a1 + 48);
    v69 = *(a1 + 80);
    v182 = *(a1 + 64);
    v183 = v69;
    v70 = *(a1 + 16);
    v178 = *a1;
    v179 = v70;
    v173 = v184;
    v174 = v65;
    v175 = *(a1 + 128);
    v170 = v180;
    *v171 = v68;
    *&v171[16] = v182;
    v172 = v64;
    v187 = *(a1 + 144);
    v176 = *(a1 + 144);
    v168 = v178;
    v169 = v67;
    v71 = a2[6];
    __dst[7] = a2[7];
    __dst[8] = a2[8];
    LOBYTE(__dst[9]) = *(a2 + 144);
    v72 = a2[3];
    __dst[2] = a2[2];
    __dst[3] = v72;
    v73 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v73;
    __dst[6] = v71;
    v74 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v74;
    if (sub_1C05D25B4(__dst) == 1)
    {
      v75 = *(a1 + 112);
      v164 = *(a1 + 96);
      v165 = v75;
      v166 = *(a1 + 128);
      v167 = *(a1 + 144);
      v76 = *(a1 + 48);
      v161 = *(a1 + 32);
      *v162 = v76;
      v77 = *(a1 + 80);
      *&v162[16] = *(a1 + 64);
      v163 = v77;
      v78 = *(a1 + 16);
      v159 = *a1;
      v160 = v78;
      sub_1C05149F8(v189, &v150, &qword_1EBE18018, &qword_1C0975400);
      sub_1C05149F8(v216, &v150, &qword_1EBE18018, &qword_1C0975400);
      sub_1C05149F8(&v178, &v150, &qword_1EBE18018, &qword_1C0975400);
      v79 = &v159;
LABEL_13:
      sub_1C05D2604(v79);
LABEL_16:
      memcpy(__dst, __src, 0x129uLL);
      v91 = &unk_1EBE180E0;
      v92 = &unk_1C0976020;
      v93 = __dst;
LABEL_17:
      sub_1C05145B4(v93, v91, v92);
      return 0;
    }

    v113 = v50;
    v114 = v51;
    v82 = a2[7];
    v164 = a2[6];
    v165 = v82;
    v166 = a2[8];
    v167 = *(a2 + 144);
    v83 = a2[3];
    v161 = a2[2];
    *v162 = v83;
    v84 = a2[5];
    *&v162[16] = a2[4];
    v163 = v84;
    v85 = a2[1];
    v159 = *a2;
    v160 = v85;
    sub_1C05149F8(v189, &v150, &qword_1EBE18018, &qword_1C0975400);
    sub_1C05149F8(v216, &v150, &qword_1EBE18018, &qword_1C0975400);
    sub_1C05149F8(&v178, &v150, &qword_1EBE18018, &qword_1C0975400);
    v86 = _s12SiriOntology15TerminalElementV4DateV2eeoiySbAE_AEtFZ_0(&v168, &v159);
    v146 = v164;
    v147 = v165;
    v148 = v166;
    v149 = v167;
    *v143 = v161;
    *&v143[16] = *v162;
    v144 = *&v162[16];
    v145 = v163;
    v141 = v159;
    v142 = v160;
    sub_1C05D2604(&v141);
    v155 = v173;
    v156 = v174;
    v157 = v175;
    v158 = v176;
    v152 = v170;
    *v153 = *v171;
    *&v153[16] = *&v171[16];
    v154 = v172;
    v150 = v168;
    v151 = v169;
    sub_1C05D2604(&v150);
    v87 = *(a1 + 112);
    v164 = *(a1 + 96);
    v165 = v87;
    v166 = *(a1 + 128);
    v167 = *(a1 + 144);
    v88 = *(a1 + 48);
    v161 = *(a1 + 32);
    *v162 = v88;
    v89 = *(a1 + 80);
    *&v162[16] = *(a1 + 64);
    v163 = v89;
    v90 = *(a1 + 16);
    v159 = *a1;
    v160 = v90;
    sub_1C05145B4(&v159, &qword_1EBE18018, &qword_1C0975400);
    if (!v86)
    {
      return 0;
    }
  }

  __src[6] = v204;
  __src[7] = v205;
  __src[8] = v206;
  __src[2] = v200;
  __src[3] = v201;
  __src[4] = v202;
  __src[5] = v203;
  __src[0] = v198;
  __src[1] = v199;
  *(&__src[16] + 8) = v225;
  *(&__src[17] + 8) = v226;
  *(&__src[15] + 8) = v224;
  *(&__src[11] + 8) = v220;
  *(&__src[12] + 8) = v221;
  *(&__src[13] + 8) = v222;
  *(&__src[14] + 8) = v223;
  *(&__src[9] + 8) = v218;
  *(&__src[10] + 8) = v219;
  v184 = v204;
  v185 = v205;
  v186 = v206;
  v180 = v200;
  v181 = v201;
  v182 = v202;
  v183 = v203;
  LOBYTE(__src[9]) = v207;
  BYTE8(__src[18]) = v227;
  v187 = v207;
  v178 = v198;
  v179 = v199;
  if (sub_1C05D25B4(&v178) == 1)
  {
    __dst[7] = *(&__src[16] + 8);
    __dst[8] = *(&__src[17] + 8);
    LOBYTE(__dst[9]) = BYTE8(__src[18]);
    __dst[2] = *(&__src[11] + 8);
    __dst[3] = *(&__src[12] + 8);
    __dst[4] = *(&__src[13] + 8);
    __dst[5] = *(&__src[14] + 8);
    __dst[6] = *(&__src[15] + 8);
    __dst[0] = *(&__src[9] + 8);
    __dst[1] = *(&__src[10] + 8);
    if (sub_1C05D25B4(__dst) == 1)
    {
      v173 = __src[6];
      v174 = __src[7];
      v175 = __src[8];
      v176 = __src[9];
      v170 = __src[2];
      *v171 = __src[3];
      *&v171[16] = __src[4];
      v172 = __src[5];
      v168 = __src[0];
      v169 = __src[1];
      sub_1C05149F8(&v198, &v159, &qword_1EBE18018, &qword_1C0975400);
      sub_1C05149F8(&v218, &v159, &qword_1EBE18018, &qword_1C0975400);
      sub_1C05145B4(&v168, &qword_1EBE18018, &qword_1C0975400);
      goto LABEL_20;
    }

    sub_1C05149F8(&v198, &v168, &qword_1EBE18018, &qword_1C0975400);
    v80 = &v218;
    v81 = &v168;
    goto LABEL_15;
  }

  v173 = __src[6];
  v174 = __src[7];
  v175 = __src[8];
  v170 = __src[2];
  *v171 = __src[3];
  *&v171[16] = __src[4];
  v172 = __src[5];
  v168 = __src[0];
  v169 = __src[1];
  v164 = __src[6];
  v165 = __src[7];
  v166 = __src[8];
  v161 = __src[2];
  *v162 = __src[3];
  *&v162[16] = __src[4];
  v163 = __src[5];
  v176 = __src[9];
  v167 = __src[9];
  v159 = __src[0];
  v160 = __src[1];
  __dst[7] = *(&__src[16] + 8);
  __dst[8] = *(&__src[17] + 8);
  LOBYTE(__dst[9]) = BYTE8(__src[18]);
  __dst[2] = *(&__src[11] + 8);
  __dst[3] = *(&__src[12] + 8);
  __dst[4] = *(&__src[13] + 8);
  __dst[5] = *(&__src[14] + 8);
  __dst[6] = *(&__src[15] + 8);
  __dst[0] = *(&__src[9] + 8);
  __dst[1] = *(&__src[10] + 8);
  if (sub_1C05D25B4(__dst) == 1)
  {
    v155 = __src[6];
    v156 = __src[7];
    v157 = __src[8];
    v158 = __src[9];
    v152 = __src[2];
    *v153 = __src[3];
    *&v153[16] = __src[4];
    v154 = __src[5];
    v150 = __src[0];
    v151 = __src[1];
    sub_1C05149F8(&v198, &v141, &qword_1EBE18018, &qword_1C0975400);
    sub_1C05149F8(&v218, &v141, &qword_1EBE18018, &qword_1C0975400);
    sub_1C05149F8(&v168, &v141, &qword_1EBE18018, &qword_1C0975400);
    v79 = &v150;
    goto LABEL_13;
  }

  v155 = *(&__src[15] + 8);
  v156 = *(&__src[16] + 8);
  v157 = *(&__src[17] + 8);
  v158 = BYTE8(__src[18]);
  v152 = *(&__src[11] + 8);
  *v153 = *(&__src[12] + 8);
  *&v153[16] = *(&__src[13] + 8);
  v154 = *(&__src[14] + 8);
  v150 = *(&__src[9] + 8);
  v151 = *(&__src[10] + 8);
  sub_1C05149F8(&v198, &v141, &qword_1EBE18018, &qword_1C0975400);
  sub_1C05149F8(&v218, &v141, &qword_1EBE18018, &qword_1C0975400);
  sub_1C05149F8(&v168, &v141, &qword_1EBE18018, &qword_1C0975400);
  v95 = _s12SiriOntology15TerminalElementV4DateV2eeoiySbAE_AEtFZ_0(&v159, &v150);
  v137 = v155;
  v138 = v156;
  v139 = v157;
  v140 = v158;
  *v134 = v152;
  *&v134[16] = *v153;
  v135 = *&v153[16];
  v136 = v154;
  v132 = v150;
  v133 = v151;
  sub_1C05D2604(&v132);
  v146 = v164;
  v147 = v165;
  v148 = v166;
  v149 = v167;
  *v143 = v161;
  *&v143[16] = *v162;
  v144 = *&v162[16];
  v145 = v163;
  v141 = v159;
  v142 = v160;
  sub_1C05D2604(&v141);
  v155 = __src[6];
  v156 = __src[7];
  v157 = __src[8];
  v158 = __src[9];
  v152 = __src[2];
  *v153 = __src[3];
  *&v153[16] = __src[4];
  v154 = __src[5];
  v150 = __src[0];
  v151 = __src[1];
  sub_1C05145B4(&v150, &qword_1EBE18018, &qword_1C0975400);
  if (!v95)
  {
    return 0;
  }

LABEL_20:
  v96 = v53 & 0xFF00;
  if ((v48 & 0xFF00) == 0x3600)
  {
    if (v96 != 13824)
    {
      return 0;
    }
  }

  else
  {
    if (v96 == 13824)
    {
      return 0;
    }

    if (v47)
    {
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v53 & 1) != 0 || v46 != v52)
    {
      return 0;
    }

    v103 = v53 >> 8;
    if (v131 == 53)
    {
      if (v103 != 53)
      {
        return 0;
      }
    }

    else if (v103 == 53 || v131 != v103)
    {
      return 0;
    }
  }

  v97 = HIBYTE(v54);
  if (HIBYTE(v49) == 3)
  {
    if (v97 != 3)
    {
      return 0;
    }
  }

  else
  {
    *&__src[0] = v130;
    DWORD2(__src[0]) = v49;
    if (v97 == 3)
    {
      return 0;
    }

    *&__dst[0] = v127;
    WORD4(__dst[0]) = v54 & 0xFF01;
    BYTE10(__dst[0]) = BYTE2(v54);
    BYTE11(__dst[0]) = HIBYTE(v54);
    if ((_s12SiriOntology15TerminalElementV8IntervalV2eeoiySbAE_AEtFZ_0(__src, __dst) & 1) == 0)
    {
      return 0;
    }
  }

  v98 = v129 & 0xFF00;
  if ((v128 & 0xFF00) == 0x3600)
  {
    if (v98 != 13824)
    {
      return 0;
    }
  }

  else
  {
    if (v98 == 13824)
    {
      return 0;
    }

    if (v126)
    {
      if ((v129 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v129 & 1) != 0 || v124 != v123)
    {
      return 0;
    }

    v105 = v129 >> 8;
    if (v125 == 53)
    {
      if (v105 != 53)
      {
        return 0;
      }
    }

    else if (v105 == 53 || v125 != v105)
    {
      return 0;
    }
  }

  v100 = *(&v208 + 1);
  v99 = v208;
  v141 = v209;
  v142 = v210;
  *v143 = v211[0];
  *&v143[15] = *(v211 + 15);
  v101 = *(&v228 + 1);
  v102 = v228;
  *&v134[15] = *(v231 + 15);
  v133 = v230;
  *v134 = v231[0];
  v132 = v229;
  if (*(&v208 + 1) == 1)
  {
    if (*(&v228 + 1) != 1)
    {
      sub_1C05149F8(&v208, __src, &qword_1EBE18020, &qword_1C0975408);
      v106 = &v228;
LABEL_67:
      sub_1C05149F8(v106, __src, &qword_1EBE18020, &qword_1C0975408);
      goto LABEL_68;
    }

    *&__src[0] = v208;
    *(&__src[0] + 1) = 1;
    __src[1] = v209;
    __src[2] = v210;
    __src[3] = v211[0];
    *(&__src[3] + 15) = *(v211 + 15);
    sub_1C05149F8(&v208, __dst, &qword_1EBE18020, &qword_1C0975408);
    sub_1C05149F8(&v228, __dst, &qword_1EBE18020, &qword_1C0975408);
    sub_1C05145B4(__src, &qword_1EBE18020, &qword_1C0975408);
  }

  else
  {
    __src[0] = v208;
    __src[3] = v211[0];
    *(&__src[3] + 15) = *(v211 + 15);
    __dst[0] = v208;
    __dst[1] = v209;
    __src[1] = v209;
    __src[2] = v210;
    __dst[2] = v210;
    __dst[3] = __src[3];
    *(&__dst[3] + 15) = *(v211 + 15);
    if (*(&v228 + 1) == 1)
    {
      v170 = __src[2];
      *v171 = __src[3];
      *&v171[15] = *(&__src[3] + 15);
      v168 = __src[0];
      v169 = __src[1];
      sub_1C05149F8(&v208, &v159, &qword_1EBE18020, &qword_1C0975408);
      v104 = &v228;
LABEL_65:
      sub_1C05149F8(v104, &v159, &qword_1EBE18020, &qword_1C0975408);
      sub_1C05149F8(__src, &v159, &qword_1EBE18020, &qword_1C0975408);
      sub_1C05D266C(&v168);
LABEL_68:
      __src[1] = v141;
      __src[2] = v142;
      __src[3] = *v143;
      *(&__src[5] + 8) = v132;
      *&__src[0] = v99;
      *(&__src[0] + 1) = v100;
      *(&__src[3] + 15) = *&v143[15];
      *(&__src[4] + 1) = v102;
      *&__src[5] = v101;
      *(&__src[6] + 8) = v133;
      *(&__src[7] + 8) = *v134;
      *(&__src[8] + 7) = *&v134[15];
      v91 = &unk_1EBE180E8;
      v92 = &unk_1C0976028;
      v93 = __src;
      goto LABEL_17;
    }

    v169 = v229;
    v170 = v230;
    *v171 = v231[0];
    *&v171[15] = *(v231 + 15);
    v168 = v228;
    v107 = _s12SiriOntology15TerminalElementV4TimeV2eeoiySbAE_AEtFZ_0(__dst, &v168);
    v152 = v170;
    *v153 = *v171;
    *&v153[15] = *&v171[15];
    v150 = v168;
    v151 = v169;
    sub_1C05149F8(&v208, &v159, &qword_1EBE18020, &qword_1C0975408);
    sub_1C05149F8(&v228, &v159, &qword_1EBE18020, &qword_1C0975408);
    sub_1C05149F8(__src, &v159, &qword_1EBE18020, &qword_1C0975408);
    sub_1C05D266C(&v150);
    v161 = __dst[2];
    *v162 = __dst[3];
    *&v162[15] = *(&__dst[3] + 15);
    v159 = __dst[0];
    v160 = __dst[1];
    sub_1C05D266C(&v159);
    v168 = __PAIR128__(v100, v99);
    v169 = v141;
    v170 = v142;
    *v171 = *v143;
    *&v171[15] = *&v143[15];
    sub_1C05145B4(&v168, &qword_1EBE18020, &qword_1C0975408);
    if (!v107)
    {
      return 0;
    }
  }

  v100 = *(&v212 + 1);
  v99 = v212;
  v141 = v213;
  v142 = v214;
  *v143 = v215[0];
  *&v143[15] = *(v215 + 15);
  v101 = *(&v232 + 1);
  v102 = v232;
  *&v134[15] = *(v235 + 15);
  v133 = v234;
  *v134 = v235[0];
  v132 = v233;
  if (*(&v212 + 1) == 1)
  {
    if (*(&v232 + 1) == 1)
    {
      *&__src[0] = v212;
      *(&__src[0] + 1) = 1;
      __src[1] = v213;
      __src[2] = v214;
      __src[3] = v215[0];
      *(&__src[3] + 15) = *(v215 + 15);
      sub_1C05149F8(&v212, __dst, &qword_1EBE18020, &qword_1C0975408);
      sub_1C05149F8(&v232, __dst, &qword_1EBE18020, &qword_1C0975408);
      sub_1C05145B4(__src, &qword_1EBE18020, &qword_1C0975408);
      goto LABEL_70;
    }

    sub_1C05149F8(&v212, __src, &qword_1EBE18020, &qword_1C0975408);
    v106 = &v232;
    goto LABEL_67;
  }

  __src[0] = v212;
  __src[3] = v215[0];
  *(&__src[3] + 15) = *(v215 + 15);
  __dst[0] = v212;
  __dst[1] = v213;
  __src[1] = v213;
  __src[2] = v214;
  __dst[2] = v214;
  __dst[3] = __src[3];
  *(&__dst[3] + 15) = *(v215 + 15);
  if (*(&v232 + 1) == 1)
  {
    v170 = __src[2];
    *v171 = __src[3];
    *&v171[15] = *(&__src[3] + 15);
    v168 = __src[0];
    v169 = __src[1];
    sub_1C05149F8(&v212, &v159, &qword_1EBE18020, &qword_1C0975408);
    v104 = &v232;
    goto LABEL_65;
  }

  v169 = v233;
  v170 = v234;
  *v171 = v235[0];
  *&v171[15] = *(v235 + 15);
  v168 = v232;
  v108 = _s12SiriOntology15TerminalElementV4TimeV2eeoiySbAE_AEtFZ_0(__dst, &v168);
  v152 = v170;
  *v153 = *v171;
  *&v153[15] = *&v171[15];
  v150 = v168;
  v151 = v169;
  sub_1C05149F8(&v212, &v159, &qword_1EBE18020, &qword_1C0975408);
  sub_1C05149F8(&v232, &v159, &qword_1EBE18020, &qword_1C0975408);
  sub_1C05149F8(__src, &v159, &qword_1EBE18020, &qword_1C0975408);
  sub_1C05D266C(&v150);
  v161 = __dst[2];
  *v162 = __dst[3];
  *&v162[15] = *(&__dst[3] + 15);
  v159 = __dst[0];
  v160 = __dst[1];
  sub_1C05D266C(&v159);
  v168 = __PAIR128__(v100, v99);
  v169 = v141;
  v170 = v142;
  *v171 = *v143;
  *&v171[15] = *&v143[15];
  sub_1C05145B4(&v168, &qword_1EBE18020, &qword_1C0975408);
  if (!v108)
  {
    return 0;
  }

LABEL_70:
  if (v121)
  {
    v109 = v114;
    v110 = v113;
    if (!v122)
    {
      return 0;
    }
  }

  else
  {
    v111 = v122;
    if (v119 != v117)
    {
      v111 = 1;
    }

    v109 = v114;
    v110 = v113;
    if (v111)
    {
      return 0;
    }
  }

  if (v120)
  {
    if (!v118)
    {
      return 0;
    }
  }

  else
  {
    v112 = v118;
    if (v110 != v116)
    {
      v112 = 1;
    }

    if (v112)
    {
      return 0;
    }
  }

  if (v109 != 3)
  {
    return v115 != 3 && v109 == v115;
  }

  return v115 == 3;
}

uint64_t sub_1C05D25A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C05D25B4(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C05D26A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18028;
  if (!qword_1EBE18028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18028);
  }

  return result;
}

unint64_t sub_1C05D2728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18040;
  if (!qword_1EBE18040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18040);
  }

  return result;
}

unint64_t sub_1C05D27B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18058;
  if (!qword_1EBE18058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18058);
  }

  return result;
}

unint64_t sub_1C05D2838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18070;
  if (!qword_1EBE18070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18070);
  }

  return result;
}

unint64_t sub_1C05D28C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18088;
  if (!qword_1EBE18088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18088);
  }

  return result;
}

unint64_t sub_1C05D2948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FAE8;
  if (!qword_1EBE0FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FAE8);
  }

  return result;
}

unint64_t sub_1C05D29A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180A0;
  if (!qword_1EBE180A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180A0);
  }

  return result;
}

unint64_t sub_1C05D29F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180A8;
  if (!qword_1EBE180A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180A8);
  }

  return result;
}

unint64_t sub_1C05D2A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180B0;
  if (!qword_1EBE180B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180B0);
  }

  return result;
}

unint64_t sub_1C05D2AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180B8;
  if (!qword_1EBE180B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180B8);
  }

  return result;
}

unint64_t sub_1C05D2B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180C0;
  if (!qword_1EBE180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180C0);
  }

  return result;
}

unint64_t sub_1C05D2B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180C8;
  if (!qword_1EBE180C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180C8);
  }

  return result;
}

unint64_t sub_1C05D2BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180D0;
  if (!qword_1EBE180D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180D0);
  }

  return result;
}

unint64_t sub_1C05D2C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE180D8;
  if (!qword_1EBE180D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE180D8);
  }

  return result;
}

uint64_t sub_1C05D2C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 522))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_1C05D2CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 522) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 522) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
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

uint64_t sub_1C05D2DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C05D2E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C05D2EBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 67))
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

uint64_t sub_1C05D2F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s8IntervalVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 11);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s8IntervalVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 11) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C05D3080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xCB && *(a1 + 10))
  {
    return (*a1 + 203);
  }

  v3 = *(a1 + 9);
  if (v3 <= 0x35)
  {
    v4 = 53;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 54;
  if (v3 < 0x35)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1C05D30D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xCA)
  {
    *(result + 8) = 0;
    *result = a2 - 203;
    if (a3 >= 0xCB)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xCB)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 53;
    }
  }

  return result;
}

uint64_t _s14DateTimePeriodVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *_s14DateTimePeriodVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_1C05D32B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C05D32D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C05D3334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1C05D3390(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s14TemporalIntentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PayloadAttachmentInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s6PeriodOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_17;
  }

  if (a2 + 52 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 52) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 52;
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

      return (*a1 | (v4 << 8)) - 52;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 52;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x35;
  v8 = v6 - 53;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6PeriodOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 52) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCC)
  {
    v4 = 0;
  }

  if (a2 > 0xCB)
  {
    v5 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
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
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}