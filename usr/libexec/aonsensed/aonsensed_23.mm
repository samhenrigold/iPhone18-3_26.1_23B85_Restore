uint64_t sub_1002559E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_100024A2C(&qword_10042AA70, &qword_100390D88);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_25;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_25;
    }
  }

  v25 = v14[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_25;
    }
  }

  v30 = v14[8];
  v31 = *(v11 + 48);
  sub_10000A0A4(a1 + v30, v13, &qword_100423F60, &qword_100383430);
  v32 = a2 + v30;
  v33 = v31;
  sub_10000A0A4(v32, &v13[v31], &qword_100423F60, &qword_100383430);
  v34 = *(v5 + 48);
  if (v34(v13, 1, v4) == 1)
  {
    if (v34(&v13[v33], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423F60, &qword_100383430);
LABEL_28:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_24;
  }

  sub_10000A0A4(v13, v10, &qword_100423F60, &qword_100383430);
  if (v34(&v13[v33], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_Plmn);
LABEL_24:
    sub_1000059A8(v13, &qword_10042AA70, &qword_100390D88);
    goto LABEL_25;
  }

  sub_1002463C0(&v13[v33], v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v37 = sub_100255EF8(v10, v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  sub_1000059A8(v13, &qword_100423F60, &qword_100383430);
  if (v37)
  {
    goto LABEL_28;
  }

LABEL_25:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_100255DEC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (sub_100245934(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100255EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10025602C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[7];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (sub_100033210(*a1, *a2))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10025618C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 4);
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = v5[7];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v5[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v5[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 6)
  {
    if (v27 != 6)
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256580(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (sub_100245798(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, sub_100256324))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10025670C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100024A2C(&qword_100424020, &qword_1003834F0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v25 - v9);
  v11 = sub_100024A2C(&qword_10042A9C0, &qword_100390CD8);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v15 = *(v14 + 20);
  v26 = a1;
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 7)
  {
    if (v17 != 7)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v18 = a2;
  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000A0A4(v26 + v19, v13, &qword_100424020, &qword_1003834F0);
  sub_10000A0A4(v18 + v19, &v13[v20], &qword_100424020, &qword_1003834F0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100424020, &qword_1003834F0);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v13, v10, &qword_100424020, &qword_1003834F0);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
LABEL_10:
    sub_1000059A8(v13, &qword_10042A9C0, &qword_100390CD8);
    goto LABEL_11;
  }

  sub_1002463C0(&v13[v20], v7, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  v24 = sub_100256580(v10, v7);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  sub_1000059A8(v13, &qword_100424020, &qword_1003834F0);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_100256A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100256CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100256CFC()
{
  result = qword_100424320;
  if (!qword_100424320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424320);
  }

  return result;
}

unint64_t sub_100256D54()
{
  result = qword_100424438;
  if (!qword_100424438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424438);
  }

  return result;
}

unint64_t sub_100256DAC()
{
  result = qword_100424440;
  if (!qword_100424440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424440);
  }

  return result;
}

unint64_t sub_100256E04()
{
  result = qword_100424448;
  if (!qword_100424448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424448);
  }

  return result;
}

unint64_t sub_100256E8C()
{
  result = qword_100424460;
  if (!qword_100424460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424460);
  }

  return result;
}

unint64_t sub_100256EE4()
{
  result = qword_100424468;
  if (!qword_100424468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424468);
  }

  return result;
}

unint64_t sub_100256F3C()
{
  result = qword_100424470;
  if (!qword_100424470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424470);
  }

  return result;
}

unint64_t sub_100256FC4()
{
  result = qword_100424488;
  if (!qword_100424488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424488);
  }

  return result;
}

unint64_t sub_10025701C()
{
  result = qword_100424490;
  if (!qword_100424490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424490);
  }

  return result;
}

unint64_t sub_100257074()
{
  result = qword_100424498;
  if (!qword_100424498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424498);
  }

  return result;
}

unint64_t sub_1002570FC()
{
  result = qword_1004244B0;
  if (!qword_1004244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244B0);
  }

  return result;
}

unint64_t sub_100257154()
{
  result = qword_1004244B8;
  if (!qword_1004244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244B8);
  }

  return result;
}

unint64_t sub_1002571AC()
{
  result = qword_1004244C0;
  if (!qword_1004244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244C0);
  }

  return result;
}

unint64_t sub_100257234()
{
  result = qword_1004244D8;
  if (!qword_1004244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244D8);
  }

  return result;
}

unint64_t sub_10025728C()
{
  result = qword_1004244E0;
  if (!qword_1004244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244E0);
  }

  return result;
}

unint64_t sub_1002572E4()
{
  result = qword_1004244E8;
  if (!qword_1004244E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004244E8);
  }

  return result;
}

unint64_t sub_10025736C()
{
  result = qword_100424500;
  if (!qword_100424500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424500);
  }

  return result;
}

unint64_t sub_1002573C4()
{
  result = qword_100424508;
  if (!qword_100424508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424508);
  }

  return result;
}

unint64_t sub_10025741C()
{
  result = qword_100424510;
  if (!qword_100424510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424510);
  }

  return result;
}

unint64_t sub_1002574A4()
{
  result = qword_100424528;
  if (!qword_100424528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424528);
  }

  return result;
}

unint64_t sub_1002574FC()
{
  result = qword_100424530;
  if (!qword_100424530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424530);
  }

  return result;
}

unint64_t sub_100257554()
{
  result = qword_100424538;
  if (!qword_100424538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424538);
  }

  return result;
}

unint64_t sub_1002575DC()
{
  result = qword_100424550;
  if (!qword_100424550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424550);
  }

  return result;
}

unint64_t sub_100257634()
{
  result = qword_100424558;
  if (!qword_100424558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424558);
  }

  return result;
}

unint64_t sub_10025768C()
{
  result = qword_100424560;
  if (!qword_100424560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424560);
  }

  return result;
}

unint64_t sub_100257714()
{
  result = qword_100424578;
  if (!qword_100424578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424578);
  }

  return result;
}

unint64_t sub_10025776C()
{
  result = qword_100424580;
  if (!qword_100424580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424580);
  }

  return result;
}

unint64_t sub_1002577C4()
{
  result = qword_100424588;
  if (!qword_100424588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424588);
  }

  return result;
}

unint64_t sub_10025784C()
{
  result = qword_1004245A0;
  if (!qword_1004245A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245A0);
  }

  return result;
}

unint64_t sub_1002578A4()
{
  result = qword_1004245A8;
  if (!qword_1004245A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245A8);
  }

  return result;
}

unint64_t sub_1002578FC()
{
  result = qword_1004245B0;
  if (!qword_1004245B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245B0);
  }

  return result;
}

unint64_t sub_100257984()
{
  result = qword_1004245C8;
  if (!qword_1004245C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245C8);
  }

  return result;
}

unint64_t sub_1002579DC()
{
  result = qword_1004245D0;
  if (!qword_1004245D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245D0);
  }

  return result;
}

unint64_t sub_100257A34()
{
  result = qword_1004245D8;
  if (!qword_1004245D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245D8);
  }

  return result;
}

unint64_t sub_100257ABC()
{
  result = qword_1004245F0;
  if (!qword_1004245F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245F0);
  }

  return result;
}

unint64_t sub_100257B14()
{
  result = qword_1004245F8;
  if (!qword_1004245F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004245F8);
  }

  return result;
}

unint64_t sub_100257B6C()
{
  result = qword_100424600;
  if (!qword_100424600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424600);
  }

  return result;
}

unint64_t sub_100257BF4()
{
  result = qword_100424618;
  if (!qword_100424618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424618);
  }

  return result;
}

unint64_t sub_100257C4C()
{
  result = qword_100424620;
  if (!qword_100424620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424620);
  }

  return result;
}

unint64_t sub_100257CA4()
{
  result = qword_100424628;
  if (!qword_100424628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424628);
  }

  return result;
}

unint64_t sub_100257D2C()
{
  result = qword_100424640;
  if (!qword_100424640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424640);
  }

  return result;
}

unint64_t sub_100257D84()
{
  result = qword_100424648;
  if (!qword_100424648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424648);
  }

  return result;
}

unint64_t sub_100257DDC()
{
  result = qword_100424650;
  if (!qword_100424650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424650);
  }

  return result;
}

unint64_t sub_100257E64()
{
  result = qword_100424668;
  if (!qword_100424668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424668);
  }

  return result;
}

unint64_t sub_100257EBC()
{
  result = qword_100424670;
  if (!qword_100424670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424670);
  }

  return result;
}

unint64_t sub_100257F14()
{
  result = qword_100424678;
  if (!qword_100424678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424678);
  }

  return result;
}

unint64_t sub_100257F9C()
{
  result = qword_100424690;
  if (!qword_100424690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424690);
  }

  return result;
}

unint64_t sub_100257FF4()
{
  result = qword_100424698;
  if (!qword_100424698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424698);
  }

  return result;
}

unint64_t sub_10025804C()
{
  result = qword_1004246A0;
  if (!qword_1004246A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246A0);
  }

  return result;
}

unint64_t sub_1002580D4()
{
  result = qword_1004246B8;
  if (!qword_1004246B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246B8);
  }

  return result;
}

unint64_t sub_10025812C()
{
  result = qword_1004246C0;
  if (!qword_1004246C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246C0);
  }

  return result;
}

unint64_t sub_100258184()
{
  result = qword_1004246C8;
  if (!qword_1004246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246C8);
  }

  return result;
}

unint64_t sub_10025820C()
{
  result = qword_1004246E0;
  if (!qword_1004246E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246E0);
  }

  return result;
}

unint64_t sub_100258264()
{
  result = qword_1004246E8;
  if (!qword_1004246E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246E8);
  }

  return result;
}

unint64_t sub_1002582BC()
{
  result = qword_1004246F0;
  if (!qword_1004246F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004246F0);
  }

  return result;
}

unint64_t sub_100258344()
{
  result = qword_100424708;
  if (!qword_100424708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424708);
  }

  return result;
}

unint64_t sub_10025839C()
{
  result = qword_100424710;
  if (!qword_100424710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424710);
  }

  return result;
}

unint64_t sub_1002583F4()
{
  result = qword_100424718;
  if (!qword_100424718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424718);
  }

  return result;
}

unint64_t sub_10025847C()
{
  result = qword_100424730;
  if (!qword_100424730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424730);
  }

  return result;
}

unint64_t sub_1002584D4()
{
  result = qword_100424738;
  if (!qword_100424738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424738);
  }

  return result;
}

unint64_t sub_10025852C()
{
  result = qword_100424740;
  if (!qword_100424740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424740);
  }

  return result;
}

unint64_t sub_1002585B4()
{
  result = qword_100424758;
  if (!qword_100424758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424758);
  }

  return result;
}

unint64_t sub_10025860C()
{
  result = qword_100424760;
  if (!qword_100424760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424760);
  }

  return result;
}

unint64_t sub_100258664()
{
  result = qword_100424768;
  if (!qword_100424768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424768);
  }

  return result;
}

unint64_t sub_1002586EC()
{
  result = qword_100424780;
  if (!qword_100424780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424780);
  }

  return result;
}

unint64_t sub_100258744()
{
  result = qword_100424788;
  if (!qword_100424788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424788);
  }

  return result;
}

unint64_t sub_10025879C()
{
  result = qword_100424790;
  if (!qword_100424790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424790);
  }

  return result;
}

unint64_t sub_100258824()
{
  result = qword_1004247A8;
  if (!qword_1004247A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004247A8);
  }

  return result;
}

unint64_t sub_10025887C()
{
  result = qword_1004247B0;
  if (!qword_1004247B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004247B0);
  }

  return result;
}

unint64_t sub_1002588D4()
{
  result = qword_1004247B8;
  if (!qword_1004247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004247B8);
  }

  return result;
}

unint64_t sub_10025895C()
{
  result = qword_1004247D0;
  if (!qword_1004247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004247D0);
  }

  return result;
}

unint64_t sub_1002589B4()
{
  result = qword_1004247D8;
  if (!qword_1004247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004247D8);
  }

  return result;
}

unint64_t sub_100258A0C()
{
  result = qword_1004247E0;
  if (!qword_1004247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004247E0);
  }

  return result;
}

unint64_t sub_100258A94()
{
  result = qword_1004247F8;
  if (!qword_1004247F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004247F8);
  }

  return result;
}

unint64_t sub_100258AEC()
{
  result = qword_100424800;
  if (!qword_100424800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424800);
  }

  return result;
}

unint64_t sub_100258B44()
{
  result = qword_100424808;
  if (!qword_100424808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424808);
  }

  return result;
}

unint64_t sub_100258BCC()
{
  result = qword_100424820;
  if (!qword_100424820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424820);
  }

  return result;
}

unint64_t sub_100258C24()
{
  result = qword_100424828;
  if (!qword_100424828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424828);
  }

  return result;
}

unint64_t sub_100258C7C()
{
  result = qword_100424830;
  if (!qword_100424830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424830);
  }

  return result;
}

unint64_t sub_100258D04()
{
  result = qword_100424848;
  if (!qword_100424848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424848);
  }

  return result;
}

unint64_t sub_100258D5C()
{
  result = qword_100424850;
  if (!qword_100424850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424850);
  }

  return result;
}

unint64_t sub_100258DB4()
{
  result = qword_100424858;
  if (!qword_100424858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424858);
  }

  return result;
}

unint64_t sub_100258E3C()
{
  result = qword_100424870;
  if (!qword_100424870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424870);
  }

  return result;
}

unint64_t sub_100258E94()
{
  result = qword_100424878;
  if (!qword_100424878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424878);
  }

  return result;
}

unint64_t sub_100258EEC()
{
  result = qword_100424880;
  if (!qword_100424880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424880);
  }

  return result;
}

unint64_t sub_100258F74()
{
  result = qword_100424898;
  if (!qword_100424898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424898);
  }

  return result;
}

unint64_t sub_100258FCC()
{
  result = qword_1004248A0;
  if (!qword_1004248A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248A0);
  }

  return result;
}

unint64_t sub_100259024()
{
  result = qword_1004248A8;
  if (!qword_1004248A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248A8);
  }

  return result;
}

unint64_t sub_1002590AC()
{
  result = qword_1004248C0;
  if (!qword_1004248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248C0);
  }

  return result;
}

unint64_t sub_100259104()
{
  result = qword_1004248C8;
  if (!qword_1004248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248C8);
  }

  return result;
}

unint64_t sub_10025915C()
{
  result = qword_1004248D0;
  if (!qword_1004248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248D0);
  }

  return result;
}

unint64_t sub_1002591E4()
{
  result = qword_1004248E8;
  if (!qword_1004248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248E8);
  }

  return result;
}

unint64_t sub_10025923C()
{
  result = qword_1004248F0;
  if (!qword_1004248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248F0);
  }

  return result;
}

unint64_t sub_100259294()
{
  result = qword_1004248F8;
  if (!qword_1004248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004248F8);
  }

  return result;
}

unint64_t sub_10025931C()
{
  result = qword_100424910;
  if (!qword_100424910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424910);
  }

  return result;
}

unint64_t sub_100259374()
{
  result = qword_100424918;
  if (!qword_100424918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424918);
  }

  return result;
}

unint64_t sub_1002593CC()
{
  result = qword_100424920;
  if (!qword_100424920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424920);
  }

  return result;
}

unint64_t sub_100259454()
{
  result = qword_100424938;
  if (!qword_100424938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424938);
  }

  return result;
}

unint64_t sub_1002594AC()
{
  result = qword_100424940;
  if (!qword_100424940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424940);
  }

  return result;
}

unint64_t sub_100259504()
{
  result = qword_100424948;
  if (!qword_100424948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424948);
  }

  return result;
}

unint64_t sub_10025958C()
{
  result = qword_100424960;
  if (!qword_100424960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424960);
  }

  return result;
}

unint64_t sub_1002595E4()
{
  result = qword_100424968;
  if (!qword_100424968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424968);
  }

  return result;
}

unint64_t sub_10025963C()
{
  result = qword_100424970;
  if (!qword_100424970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424970);
  }

  return result;
}

unint64_t sub_1002596C4()
{
  result = qword_100424988;
  if (!qword_100424988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424988);
  }

  return result;
}

unint64_t sub_10025971C()
{
  result = qword_100424990;
  if (!qword_100424990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424990);
  }

  return result;
}

unint64_t sub_100259774()
{
  result = qword_100424998;
  if (!qword_100424998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424998);
  }

  return result;
}

unint64_t sub_1002597FC()
{
  result = qword_1004249B0;
  if (!qword_1004249B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004249B0);
  }

  return result;
}

unint64_t sub_100259854()
{
  result = qword_1004249B8;
  if (!qword_1004249B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004249B8);
  }

  return result;
}

unint64_t sub_1002598AC()
{
  result = qword_1004249C0;
  if (!qword_1004249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004249C0);
  }

  return result;
}

unint64_t sub_100259934()
{
  result = qword_1004249D8;
  if (!qword_1004249D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004249D8);
  }

  return result;
}

unint64_t sub_10025998C()
{
  result = qword_1004249E0;
  if (!qword_1004249E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004249E0);
  }

  return result;
}

unint64_t sub_1002599E4()
{
  result = qword_1004249E8;
  if (!qword_1004249E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004249E8);
  }

  return result;
}

unint64_t sub_100259A6C()
{
  result = qword_100424A00;
  if (!qword_100424A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A00);
  }

  return result;
}

unint64_t sub_100259AC4()
{
  result = qword_100424A08;
  if (!qword_100424A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A08);
  }

  return result;
}

unint64_t sub_100259B1C()
{
  result = qword_100424A10;
  if (!qword_100424A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A10);
  }

  return result;
}

unint64_t sub_100259BA4()
{
  result = qword_100424A28;
  if (!qword_100424A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A28);
  }

  return result;
}

unint64_t sub_100259BFC()
{
  result = qword_100424A30;
  if (!qword_100424A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A30);
  }

  return result;
}

unint64_t sub_100259C54()
{
  result = qword_100424A38;
  if (!qword_100424A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A38);
  }

  return result;
}

unint64_t sub_100259CDC()
{
  result = qword_100424A50;
  if (!qword_100424A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A50);
  }

  return result;
}

unint64_t sub_100259D34()
{
  result = qword_100424A58;
  if (!qword_100424A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A58);
  }

  return result;
}

unint64_t sub_100259D8C()
{
  result = qword_100424A60;
  if (!qword_100424A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100424A60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_PositionMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_PositionMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_SessionErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_SessionErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gpsd_Indication.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gpsd_Indication.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100260F74(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100261008(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100261264(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002613B0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100261538(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &unk_100425630, &type metadata for Proto_Gnss_Emergency_FreqMode, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100261690(uint64_t a1)
{
  sub_100261810(319, &qword_1004256D8, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_1004256E0, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &qword_1004256E8, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          sub_100266B0C(319, &unk_1004256F0, &type metadata for Proto_Gnss_Emergency_CellType, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100261810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10026189C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002619A8(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &unk_100425810, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100266B0C(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100261B88(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100261C98(uint64_t a1)
{
  sub_100266B0C(319, &qword_1004259D0, &type metadata for UInt32, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &unk_1004259D8, &type metadata for Proto_Gnss_Emergency_SLPAddressType, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100266B0C(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100261E58(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100425AF8, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &unk_100425B00, &type metadata for Proto_Gnss_Emergency_TriggerType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100261FB0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100261810(319, &unk_100425C10, type metadata accessor for Proto_Gnss_Emergency_Configuration, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100262174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10026223C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100266B0C(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100262314(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100425DC0, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &unk_100425DC8, &type metadata for Proto_Gnss_Emergency_ClsModemState, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10026249C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100425EE8, &type metadata for Proto_Gnss_Emergency_SessionProtocol, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &unk_100425EF0, &type metadata for Proto_Gnss_Emergency_PosProtocol, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100262624(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_100426000, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &qword_100425DC0, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100262798(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_1004261A0, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &qword_1004261A8, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &unk_1004261B0, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100262904(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100426240, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100426248, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100262A1C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100262AF4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100426360, &type metadata for Proto_Gnss_Emergency_FixType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &unk_100426368, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100262C54(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100426408, type metadata accessor for Proto_Gnss_Emergency_Plmn, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100262D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_100024A2C(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 32);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100262E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_100024A2C(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 32);

    return v17(v18, a2, a2, v16);
  }
}

void sub_100262F90(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418558, &type metadata for UInt64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &unk_1004264A0, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002630E4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_1004264A0, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002631FC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100426408, type metadata accessor for Proto_Gnss_Emergency_Plmn, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002633A4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100426240, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_1004266E8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002634BC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &unk_100426778, &type metadata for Proto_Gnss_Emergency_GnssTimeId, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100426360, &type metadata for Proto_Gnss_Emergency_FixType, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100263674(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_1004268A0, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100263790(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_1004268A0, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002638B4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_1004268A0, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002639D8(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_1004268A0, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100263B20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t a7)
{
  sub_100261810(319, a4, a5, &type metadata accessor for Array);
  if (v9 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v10 <= 0x3F)
    {
      sub_100266B0C(319, a6, a7, &type metadata accessor for Optional);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100263C6C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100426C88, &type metadata for Proto_Gnss_Emergency_ShapeType, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100426C90, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100263E10(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100263EEC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100426F58, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &qword_100426F60, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &qword_100426F68, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100261810(319, &unk_100426F70, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002640A0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100427008, &type metadata for Proto_Gnss_Emergency_VelocityType, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100427010, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002641F8(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &unk_100427120, &type metadata for Proto_Gnss_Emergency_MultipathIndicator, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100264358(uint64_t a1)
{
  sub_100261810(319, &unk_1004271C8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100264478(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100427260, &type metadata for Proto_Gnss_Emergency_GanssId, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100427268, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100264590(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &unk_100426778, &type metadata for Proto_Gnss_Emergency_GnssTimeId, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &qword_1004272F8, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100261810(319, &unk_100427300, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100264734(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &unk_100427120, &type metadata for Proto_Gnss_Emergency_MultipathIndicator, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100264914(uint64_t a1)
{
  sub_100266B0C(319, &qword_1004259D0, &type metadata for UInt32, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100264A54(uint64_t a1)
{
  sub_100266B0C(319, &qword_1004259D0, &type metadata for UInt32, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100264B94(uint64_t a1)
{
  sub_100261810(319, &unk_100427788, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100264CB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100266B0C(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100264DB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100264E78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100264F1C(uint64_t a1)
{
  sub_100266B0C(319, &qword_100427930, &type metadata for Proto_Gnss_Emergency_LcsGanssId, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_100427938, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100265114(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100265248(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_100427C90, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100265360(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100427D20, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100427D28, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100265470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else if (a2 == 249)
  {
    v14 = *(a1 + *(a3 + 20));
    if (v14 <= 6)
    {
      v15 = 6;
    }

    else
    {
      v15 = *(a1 + *(a3 + 20));
    }

    v16 = v15 - 6;
    if (v14 >= 6)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_100024A2C(a4, a5);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + *(a3 + 24);

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1002655C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = type metadata accessor for UnknownStorage();
  v13 = *(result - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, result);
  }

  else if (a3 == 249)
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  else
  {
    v15 = sub_100024A2C(a5, a6);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100265704(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100426240, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100427DB8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10026581C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002658F8(uint64_t a1)
{
  sub_100261810(319, &unk_100427ED8, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100425EE8, &type metadata for Proto_Gnss_Emergency_SessionProtocol, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100266B0C(319, &unk_100425EF0, &type metadata for Proto_Gnss_Emergency_PosProtocol, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100265A98(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418640, &type metadata for Int32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100425EE8, &type metadata for Proto_Gnss_Emergency_SessionProtocol, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100266B0C(319, &unk_100425EF0, &type metadata for Proto_Gnss_Emergency_PosProtocol, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100265C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    a4();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100265CF8(uint64_t a1)
{
  sub_100261810(319, &unk_1004280B8, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100425EE8, &type metadata for Proto_Gnss_Emergency_SessionProtocol, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100266B0C(319, &unk_100425EF0, &type metadata for Proto_Gnss_Emergency_PosProtocol, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100265EA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100266B0C(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100265F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = type metadata accessor for UnknownStorage();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, v16);
  }

  v19 = sub_100024A2C(a4, a5);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a2)
  {
    v16 = v19;
    v17 = *(v20 + 48);
    v18 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v22 = sub_100024A2C(a6, a7);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + *(a3 + 24);

  return v23(v24, a2, v22);
}

uint64_t sub_1002660E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = type metadata accessor for UnknownStorage();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_5:

    return v19(v20, a2, a2, v18);
  }

  v21 = sub_100024A2C(a5, a6);
  v22 = *(v21 - 8);
  if (*(v22 + 84) == a3)
  {
    v18 = v21;
    v19 = *(v22 + 56);
    v20 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v24 = sub_100024A2C(a7, a8);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + *(a4 + 24);

  return v25(v26, a2, a2, v24);
}

void sub_100266264(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_100425C10, type metadata accessor for Proto_Gnss_Emergency_Configuration, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_1004281D0, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100266388(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100431C80, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &qword_100428260, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100261810(319, &unk_100428268, type metadata accessor for Proto_Gnss_Emergency_SuplConfig, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100266524(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &unk_100428300, &type metadata for Proto_Gnss_Emergency_GpsDopplerUncMpsExt, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10026664C(uint64_t a1)
{
  sub_100261810(319, &qword_1004283B8, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &unk_1004283C0, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100266B0C(319, &qword_100425EE8, &type metadata for Proto_Gnss_Emergency_SessionProtocol, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100266B0C(319, &unk_100425EF0, &type metadata for Proto_Gnss_Emergency_PosProtocol, &type metadata accessor for Optional);
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

uint64_t sub_100266814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002668EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

void sub_1002669E0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &unk_1004186F8, &type metadata for Proto_Gnss_Result, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100426240, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &unk_100427DB8, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100266B0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100266B84(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100266CB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    sub_100266B0C(319, a4, a5, &type metadata accessor for Optional);
    if (v8 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100418648, &type metadata for Double, &type metadata accessor for Optional);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100266E3C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100266B0C(319, &qword_100418560, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100266B0C(319, &qword_100426360, &type metadata for Proto_Gnss_Emergency_FixType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100266B0C(319, &qword_100418630, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100261810(319, &qword_100428828, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100261810(319, &qword_100428830, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100261810(319, &unk_100428838, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &type metadata accessor for Optional);
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

void sub_1002670C8(uint64_t a1)
{
  sub_100261810(319, &qword_100428CD0, type metadata accessor for Proto_Gnss_Emergency_QoP, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100425AF8, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &qword_100428CD8, type metadata accessor for Proto_Gnss_Emergency_Notification, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &unk_100428CE0, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002672DC(uint64_t a1)
{
  sub_100261810(319, &qword_100428E28, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_100428E30, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100267458(uint64_t a1)
{
  sub_100261810(319, &qword_100429398, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_1004293A0, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_1004293A8, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002675F4(uint64_t a1)
{
  sub_100261810(319, &qword_1004294B0, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_1004294B8, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &qword_1004294C0, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &qword_1004294C8, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100261810(319, &unk_1004268A0, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100261810(319, &qword_1004294D0, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100261810(319, &unk_1004294D8, type metadata accessor for Proto_Gnss_Emergency_Polygon, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100267948(uint64_t a1)
{
  sub_100261810(319, &qword_100429680, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100429688, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &qword_100429690, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100261810(319, &qword_100429698, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100261810(319, &unk_1004296A0, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100267BD0(uint64_t a1)
{
  sub_100261810(319, &unk_100429848, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &unk_100426368, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100267D54(uint64_t a1)
{
  sub_100261810(319, &qword_100429BA0, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100429BA8, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100429BB0, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100267F14(uint64_t a1)
{
  sub_100261810(319, &qword_100429680, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100261810(319, &qword_100429D38, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100261810(319, &unk_100429D40, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002680EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_100261810(319, &qword_100429680, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &type metadata accessor for Optional);
  if (v8 <= 0x3F)
  {
    sub_100261810(319, &qword_100429A10, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &type metadata accessor for Optional);
    if (v9 <= 0x3F)
    {
      sub_100261810(319, a4, a5, &type metadata accessor for Optional);
      if (v10 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1002682A0()
{
  result = qword_10042A7C0;
  if (!qword_10042A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7C0);
  }

  return result;
}

unint64_t sub_1002682F4()
{
  result = qword_10042A7C8;
  if (!qword_10042A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7C8);
  }

  return result;
}

unint64_t sub_100268348()
{
  result = qword_10042A7D0;
  if (!qword_10042A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7D0);
  }

  return result;
}

unint64_t sub_10026839C()
{
  result = qword_10042A7D8;
  if (!qword_10042A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7D8);
  }

  return result;
}

unint64_t sub_1002683F0()
{
  result = qword_10042A7E0;
  if (!qword_10042A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7E0);
  }

  return result;
}

unint64_t sub_100268444()
{
  result = qword_10042A7E8;
  if (!qword_10042A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7E8);
  }

  return result;
}

unint64_t sub_100268498()
{
  result = qword_10042A7F0;
  if (!qword_10042A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7F0);
  }

  return result;
}

unint64_t sub_1002684EC()
{
  result = qword_10042A7F8;
  if (!qword_10042A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A7F8);
  }

  return result;
}

unint64_t sub_100268540()
{
  result = qword_10042A800;
  if (!qword_10042A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A800);
  }

  return result;
}

unint64_t sub_100268594()
{
  result = qword_10042A808;
  if (!qword_10042A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A808);
  }

  return result;
}

unint64_t sub_1002685E8()
{
  result = qword_10042A810;
  if (!qword_10042A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A810);
  }

  return result;
}

unint64_t sub_10026863C()
{
  result = qword_10042A818;
  if (!qword_10042A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A818);
  }

  return result;
}

unint64_t sub_100268690()
{
  result = qword_10042A820;
  if (!qword_10042A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A820);
  }

  return result;
}

unint64_t sub_1002686E4()
{
  result = qword_10042A828;
  if (!qword_10042A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A828);
  }

  return result;
}

unint64_t sub_100268738()
{
  result = qword_10042A830;
  if (!qword_10042A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A830);
  }

  return result;
}

unint64_t sub_10026878C()
{
  result = qword_10042A838;
  if (!qword_10042A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A838);
  }

  return result;
}

unint64_t sub_1002687E0()
{
  result = qword_10042A840;
  if (!qword_10042A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A840);
  }

  return result;
}

unint64_t sub_100268834()
{
  result = qword_10042A848;
  if (!qword_10042A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A848);
  }

  return result;
}

unint64_t sub_100268888()
{
  result = qword_10042A850;
  if (!qword_10042A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A850);
  }

  return result;
}

unint64_t sub_1002688DC()
{
  result = qword_10042A858;
  if (!qword_10042A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A858);
  }

  return result;
}

unint64_t sub_100268930()
{
  result = qword_10042A860;
  if (!qword_10042A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A860);
  }

  return result;
}

unint64_t sub_100268984()
{
  result = qword_10042A868;
  if (!qword_10042A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A868);
  }

  return result;
}

unint64_t sub_1002689D8()
{
  result = qword_10042A870;
  if (!qword_10042A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A870);
  }

  return result;
}

unint64_t sub_100268A2C()
{
  result = qword_10042A878;
  if (!qword_10042A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A878);
  }

  return result;
}

unint64_t sub_100268A80()
{
  result = qword_10042A880;
  if (!qword_10042A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A880);
  }

  return result;
}

unint64_t sub_100268AD4()
{
  result = qword_10042A888;
  if (!qword_10042A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A888);
  }

  return result;
}

unint64_t sub_100268B28()
{
  result = qword_10042A890;
  if (!qword_10042A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A890);
  }

  return result;
}

unint64_t sub_100268B7C()
{
  result = qword_10042A898;
  if (!qword_10042A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A898);
  }

  return result;
}

unint64_t sub_100268BD0()
{
  result = qword_10042A8A0;
  if (!qword_10042A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8A0);
  }

  return result;
}

unint64_t sub_100268C24()
{
  result = qword_10042A8A8;
  if (!qword_10042A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8A8);
  }

  return result;
}

unint64_t sub_100268C78()
{
  result = qword_10042A8B0;
  if (!qword_10042A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8B0);
  }

  return result;
}

unint64_t sub_100268CCC()
{
  result = qword_10042A8B8;
  if (!qword_10042A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8B8);
  }

  return result;
}

unint64_t sub_100268D20()
{
  result = qword_10042A8C0;
  if (!qword_10042A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8C0);
  }

  return result;
}

unint64_t sub_100268D74()
{
  result = qword_10042A8C8;
  if (!qword_10042A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8C8);
  }

  return result;
}

unint64_t sub_100268DC8()
{
  result = qword_10042A8D0;
  if (!qword_10042A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8D0);
  }

  return result;
}

unint64_t sub_100268E1C()
{
  result = qword_10042A8D8;
  if (!qword_10042A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8D8);
  }

  return result;
}

unint64_t sub_100268E70()
{
  result = qword_10042A8E0;
  if (!qword_10042A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8E0);
  }

  return result;
}

unint64_t sub_100268EC4()
{
  result = qword_10042A8E8;
  if (!qword_10042A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8E8);
  }

  return result;
}

unint64_t sub_100268F18()
{
  result = qword_10042A8F0;
  if (!qword_10042A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042A8F0);
  }

  return result;
}

uint64_t sub_100269054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000361C0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1002690BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002819CC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100269124(uint64_t a1, uint64_t a2)
{
  v4 = sub_100281978();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10026918C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100281924();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1002691F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002818D0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100269298(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028187C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1002692E4@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_10027CCE4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100269330@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027CCE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002693BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100281828();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100269408@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_10027CD04(a2);
  *a1 = result;
  return result;
}

unint64_t sub_100269454@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027CD04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002694E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002817D4();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_10026952C@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_10027CD24(a2);
  *a1 = result;
  return result;
}

unint64_t sub_100269578@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027CD24(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100269604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100281780();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100269650@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_10027CD80(a2);
  *a1 = result;
  return result;
}

unint64_t sub_10026969C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027CD80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100269728(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028172C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100269774@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_10027CDA0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1002697C0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027CDA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100269810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002816D8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100269884(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002698BC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100269958()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002699A0(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002699D8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100269A74()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100269ABC(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100269AF4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100269B90()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100269BD8(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100269C10(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100269CAC()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100269CF4(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100269D2C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100269DC8()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100269E10(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100269E48(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100269EE4()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100269F2C(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100269F64(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026A000()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10026A030()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 48);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026A068(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026A0A0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 48);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026A13C()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026A16C()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 52));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_10026A1A0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10026A1D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 52);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_10026A270()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10026A2A0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 56));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10026A2CC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*sub_10026A2FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 56);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_100025584;
}

uint64_t sub_10026A388()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  *(v0 + *(result + 56)) = 6;
  return result;
}

uint64_t sub_10026A3B0()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 60));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_10026A3E4(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026A41C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 60);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026A4B4()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026A4E4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 64));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10026A510(char a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*sub_10026A540(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 64);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_10026A5CC()
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  *(v0 + *(result + 64)) = 6;
  return result;
}

int *sub_10026A5F4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Position(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + result[12];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + result[13];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + result[14]) = 6;
  v12 = a1 + result[15];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + result[16]) = 6;
  return result;
}

double sub_10026A6F0(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026A730(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026A768(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026A804()
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10026A84C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026A88C(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026A8C4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026A960()
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10026A9A8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026A9E8(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026AA20(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026AABC()
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10026AB04(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026AB44(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026AB7C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026AC18()
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10026AC60(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026ACA0(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026ACD8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026AD74()
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10026ADBC(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 40);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026ADFC(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026AE34(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026AED0()
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

int *sub_10026AF00@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_10026AFA8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026AFE0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026B078()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026B0C0(float a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10026B0F8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_10026B194()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10026B1EC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10026B21C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_100025584;
}

uint64_t sub_10026B2A4()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_10026B2E4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10026B31C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_10026B3B4()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10026B3FC(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026B434(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026B4CC()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026B514(double a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026B54C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026B5E8()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10026B630(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 44);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10026B670(double a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026B6A8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026B744()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026B774()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 48));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_10026B7A8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026B7E0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 48);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100026DCC;
}

uint64_t sub_10026B878()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026B8A8()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 52));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_10026B8DC(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026B914(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 52);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026B9AC()
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

int *sub_10026B9DC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Time(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  *(a1 + result[7]) = 2;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_10026BA98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042AAE0, &qword_100390F20);
  v8 = type metadata accessor for Proto_Gnss_Time(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10027D278(v5, a1, type metadata accessor for Proto_Gnss_Time);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + v8[7]) = 2;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[12];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v8[13];
  *v17 = 0;
  *(v17 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042AAE0, &qword_100390F20);
  }

  return result;
}

uint64_t sub_10026BCA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    sub_10027CE60(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_10027D278(a1, v6, type metadata accessor for Proto_Gnss_Time);
  v11 = type metadata accessor for Proto_Gnss_Time(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10042AAE0, &qword_100390F20);
  return swift_endAccess();
}

void (*sub_10026BE14(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042AAE0, &qword_100390F20) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Time(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042AAE0, &qword_100390F20);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    *(v13 + v8[7]) = 2;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[9];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v13 + v8[10];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v13 + v8[11];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v13 + v8[12];
    *v24 = 0;
    *(v24 + 8) = 1;
    v25 = v13 + v8[13];
    *v25 = 0;
    *(v25 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042AAE0, &qword_100390F20);
    }
  }

  else
  {
    sub_10027D278(v7, v13, type metadata accessor for Proto_Gnss_Time);
  }

  return sub_10026C0F0;
}

uint64_t sub_10026C180@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042AAE8, &qword_100390F28);
  v8 = type metadata accessor for Proto_Gnss_Position(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10027D278(v5, a1, type metadata accessor for Proto_Gnss_Position);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v8[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v8[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  *(a1 + v8[14]) = 6;
  v19 = a1 + v8[15];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a1 + v8[16]) = 6;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042AAE8, &qword_100390F28);
  }

  return result;
}

uint64_t sub_10026C3B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    sub_10027CE60(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_10027D278(a1, v6, type metadata accessor for Proto_Gnss_Position);
  v11 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10042AAE8, &qword_100390F28);
  return swift_endAccess();
}

uint64_t (*sub_10026C524(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042AAE8, &qword_100390F28) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = type metadata accessor for Proto_Gnss_Position(0);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[11] = v10;
  sub_10026C180(v10);
  return sub_10026C66C;
}

void sub_10026C66C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    sub_10027D2E0(v2[11], v2[10], type metadata accessor for Proto_Gnss_Position);
    v4 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v7 = swift_allocObject();
      sub_10027CE60(v6);

      *(v3 + v4) = v7;
      v6 = v7;
    }

    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[8];
    v11 = v2[9];
    v12 = v2[7];
    sub_10027D278(v9, v12, type metadata accessor for Proto_Gnss_Position);
    (*(v11 + 56))(v12, 0, 1, v10);
    v13 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
    swift_beginAccess();
    sub_10000AD64(v12, v6 + v13, &qword_10042AAE8, &qword_100390F28);
    swift_endAccess();
    sub_10027D348(v8, type metadata accessor for Proto_Gnss_Position);
  }

  else
  {
    v14 = v2[6];
    v15 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v15);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v18 = swift_allocObject();
      sub_10027CE60(v17);

      *(v14 + v15) = v18;
      v17 = v18;
    }

    v9 = v2[10];
    v8 = v2[11];
    v19 = v2[8];
    v20 = v2[9];
    v12 = v2[7];
    sub_10027D278(v8, v12, type metadata accessor for Proto_Gnss_Position);
    (*(v20 + 56))(v12, 0, 1, v19);
    v21 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
    swift_beginAccess();
    sub_10000AD64(v12, v17 + v21, &qword_10042AAE8, &qword_100390F28);
    swift_endAccess();
  }

  free(v8);
  free(v9);
  free(v12);

  free(v2);
}

BOOL sub_10026C8EC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_10000A0A4(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1000059A8(v11, a1, a2);
  return v15;
}

uint64_t sub_10026CA34(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v16 = swift_allocObject();
    sub_10027CE60(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  sub_10000AD64(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

uint64_t sub_10026CB8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042AAF0, &qword_100390F30);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042AAF0, &qword_100390F30);
  v8 = type metadata accessor for Proto_Gnss_Velocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10027D278(v5, a1, type metadata accessor for Proto_Gnss_Velocity);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042AAF0, &qword_100390F30);
  }

  return result;
}

uint64_t sub_10026CD68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042AAF0, &qword_100390F30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    sub_10027CE60(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_10027D278(a1, v6, type metadata accessor for Proto_Gnss_Velocity);
  v11 = type metadata accessor for Proto_Gnss_Velocity(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10042AAF0, &qword_100390F30);
  return swift_endAccess();
}

void (*sub_10026CEDC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042AAF0, &qword_100390F30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Velocity(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042AAF0, &qword_100390F30);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v13 + v8[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v13 + v8[9];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v13 + v8[10];
    *v23 = 0;
    *(v23 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042AAF0, &qword_100390F30);
    }
  }

  else
  {
    sub_10027D278(v7, v13, type metadata accessor for Proto_Gnss_Velocity);
  }

  return sub_10026D18C;
}

void sub_10026D1BC(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_10027D2E0(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v15 = swift_allocObject();
      sub_10027CE60(v12);

      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_10027D278(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    sub_10000AD64(v21, v12 + v22, a5, a6);
    swift_endAccess();
    sub_10027D348(v16, a3);
  }

  else
  {
    v23 = *(v8 + 72);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v23 + v9);
    if ((v24 & 1) == 0)
    {
      v26 = *(v8 + 128);
      v27 = *(v8 + 72);
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v28 = swift_allocObject();
      sub_10027CE60(v25);

      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_10027D278(v16, v21, a3);
    (*(v30 + 56))(v21, 0, 1, v29);
    v31 = *a4;
    swift_beginAccess();
    sub_10000AD64(v21, v25 + v31, a5, a6);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v20);
  free(v21);

  free(v8);
}

void (*sub_10026D4A0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10026D558;
}

uint64_t sub_10026D5F4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  if (*(v1 + v2) == 5)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

uint64_t sub_10026D650(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v7 = swift_allocObject();
    sub_10027CE60(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  result = swift_beginAccess();
  *(v6 + v8) = a1;
  return result;
}

void (*sub_10026D6F8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_10026D7A8;
}

void sub_10026D7A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    sub_10027CE60(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  *(v7 + v11) = v3;

  free(v2);
}

BOOL sub_10026D880()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  return *(v1 + v2) != 5;
}

uint64_t sub_10026D8DC()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v5 = swift_allocObject();
    sub_10027CE60(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  result = swift_beginAccess();
  *(v4 + v6) = 5;
  return result;
}

uint64_t sub_10026DA00(char a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_10026DA30(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10026DAB8()
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_10026DAE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_10042AAE0, &qword_100390F20);
  v7 = type metadata accessor for Proto_Gnss_Time(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10027D278(v5, a1, type metadata accessor for Proto_Gnss_Time);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + v7[7]) = 2;
  v11 = a1 + v7[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v7[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v7[11];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v7[12];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v7[13];
  *v16 = 0;
  *(v16 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042AAE0, &qword_100390F20);
  }

  return result;
}

uint64_t sub_10026DCC4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10042AAE0, &qword_100390F20);
  sub_10027D278(a1, v1 + v3, type metadata accessor for Proto_Gnss_Time);
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10026DD7C(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_10042AAE0, &qword_100390F20) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Time(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10042AAE0, &qword_100390F20);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    *(v13 + v8[7]) = 2;
    v18 = v13 + v8[8];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[9];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[10];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v13 + v8[11];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v13 + v8[12];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v13 + v8[13];
    *v23 = 0;
    *(v23 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042AAE0, &qword_100390F20);
    }
  }

  else
  {
    sub_10027D278(v7, v13, type metadata accessor for Proto_Gnss_Time);
  }

  return sub_10026E018;
}

void sub_10026E018(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_10027D2E0((*a1)[5], v4, type metadata accessor for Proto_Gnss_Time);
    sub_1000059A8(v9 + v3, &qword_10042AAE0, &qword_100390F20);
    sub_10027D278(v4, v9 + v3, type metadata accessor for Proto_Gnss_Time);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_10027D348(v5, type metadata accessor for Proto_Gnss_Time);
  }

  else
  {
    sub_1000059A8(v9 + v3, &qword_10042AAE0, &qword_100390F20);
    sub_10027D278(v5, v9 + v3, type metadata accessor for Proto_Gnss_Time);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_10026E16C()
{
  v1 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  sub_10000A0A4(v0 + *(v4 + 24), v3, &qword_10042AAE0, &qword_100390F20);
  v5 = type metadata accessor for Proto_Gnss_Time(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000059A8(v3, &qword_10042AAE0, &qword_100390F20);
  return v6;
}

uint64_t sub_10026E260()
{
  v1 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 24);
  sub_1000059A8(v0 + v1, &qword_10042AAE0, &qword_100390F20);
  v2 = type metadata accessor for Proto_Gnss_Time(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10026E2EC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 28));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10026E318(char a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10026E348(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_10026E3D4()
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(v0 + *(result + 28)) = 7;
  return result;
}

uint64_t sub_10026E414(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_10026E450(int a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10026E488(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_10026E520()
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10026E568(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_10026E5A4(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026E5DC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026E674()
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026E6A4()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_10026E6D8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10026E710(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10026E7A8()
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10026E7D8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(a1 + v2[5]) = 2;
  v3 = v2[6];
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[7]) = 7;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_10026E8A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_Gnss_Time(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10026E90C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042AAF8, &qword_100390F38);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042AAF8, &qword_100390F38);
  v8 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10027D278(v5, a1, type metadata accessor for Proto_Gnss_TimeTransferData);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  v10 = v8[6];
  v11 = type metadata accessor for Proto_Gnss_Time(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v8[7]) = 7;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042AAF8, &qword_100390F38);
  }

  return result;
}

uint64_t sub_10026EB1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042AAF8, &qword_100390F38);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
    v10 = swift_allocObject();
    sub_10027D408(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_10027D278(a1, v6, type metadata accessor for Proto_Gnss_TimeTransferData);
  v11 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10042AAF8, &qword_100390F38);
  return swift_endAccess();
}

void (*sub_10026EC90(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042AAF8, &qword_100390F38) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042AAF8, &qword_100390F38);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    v18 = v8[6];
    v19 = type metadata accessor for Proto_Gnss_Time(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    *(v13 + v8[7]) = 7;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[9];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v13 + v8[10];
    *v22 = 0;
    *(v22 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042AAF8, &qword_100390F38);
    }
  }

  else
  {
    sub_10027D278(v7, v13, type metadata accessor for Proto_Gnss_TimeTransferData);
  }

  return sub_10026EF6C;
}

void sub_10026EF6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10027D2E0(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_TimeTransferData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
      v9 = swift_allocObject();
      sub_10027D408(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10027D278(v11, v15, type metadata accessor for Proto_Gnss_TimeTransferData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042AAF8, &qword_100390F38);
    swift_endAccess();
    sub_10027D348(v10, type metadata accessor for Proto_Gnss_TimeTransferData);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
      v22 = swift_allocObject();
      sub_10027D408(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10027D278(v10, v15, type metadata accessor for Proto_Gnss_TimeTransferData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042AAF8, &qword_100390F38);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10026F1C8()
{
  v1 = sub_100024A2C(&qword_10042AAF8, &qword_100390F38);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042AAF8, &qword_100390F38);
  v6 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042AAF8, &qword_100390F38);
  return v7;
}

uint64_t sub_10026F2E8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042AAF8, &qword_100390F38);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
    v8 = swift_allocObject();
    sub_10027D408(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10042AAF8, &qword_100390F38);
  return swift_endAccess();
}

uint64_t sub_10026F458(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  swift_beginAccess();
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t sub_10026F50C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    a4(v13);

    *(v9 + v11) = v14;
    v13 = v14;
  }

  v15 = v13 + *a5;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 8) = 0;
  return result;
}

void (*sub_10026F5D8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10026F690;
}

void sub_10026F6C4(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 72);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 88);
    v15 = *(v8 + 80);
    a3(0);
    v16 = swift_allocObject();
    a4(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  v17 = v13 + *a5;
  swift_beginAccess();
  *v17 = v9;
  *(v17 + 8) = 0;

  free(v8);
}

BOOL sub_10026F7DC(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

uint64_t sub_10026F88C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    a3(v11);

    *(v8 + v9) = v12;
    v11 = v12;
  }

  v13 = v11 + *a4;
  result = swift_beginAccess();
  *v13 = 0;
  *(v13 + 8) = 1;
  return result;
}

void (*sub_10026F9C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10026FA7C;
}

void (*sub_10026FB80(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10026FC38;
}

void (*sub_10026FD3C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs[0];
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10026FDF4;
}

uint64_t sub_10026FEC8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_10026FF8C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_10026FFC8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100270000(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100270098()
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

float sub_1002700E0(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100270120(float a1)
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100270158(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1002701F4()
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100270224@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t sub_10027028C(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002702C4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10027035C()
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002703A4(float a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002703DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100270478()
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1002704A8()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 28);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002704E0(float a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100270518(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1002705B4()
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_1002705E4()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 32);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10027061C(float a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100270654(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1002706F0()
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_100270720@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_100270790()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002707C4(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002707FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100270894()
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002708C4()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002708F8(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100270930(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1002709C8()
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002709F8()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100270A2C(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100270A64(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_100026A50;
}

uint64_t sub_100270AFC()
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100270B44(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100270B7C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100270C14()
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100270C44()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100270C78(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100270CB0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100270D48()
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_100270D78@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_100270E10(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100270E48(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100270EE4()
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100270F2C(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100270F64(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100271000()
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100271048(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100271080(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10027111C()
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100271164(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10027119C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100271238()
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100271290(char a1)
{
  v2 = a1 & 1;
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t (*sub_1002712C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_100271348()
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_10027137C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100281684();

  return Enum.hash(into:)(a1, a2, v4);
}

int *sub_1002713D8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_10027146C(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002714A4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedRti(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10027153C()
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100271594(char a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002715C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedRti(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10027164C()
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_100271674@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1002716D8(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100271710(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002717A8()
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100271800(char a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_100271830(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002718B8()
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1002718E0()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100271914(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10027194C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002719E4()
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100271A14()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 32));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100271A40(char a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_100271A70(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100271AFC()
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  *(v0 + *(result + 32)) = 7;
  return result;
}

int *sub_100271B24@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[6]) = 2;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[8]) = 7;
  return result;
}

uint64_t sub_100271B8C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434AE0);
  sub_100005DF0(v0, qword_100434AE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "RESULT_PROTOBUF_DEFAULT";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "kSuccess";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "kAborted";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "kDropped";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "kInUse";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "kInvalidArgument";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "kPermissionDenied";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "kTimeout";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "kUnavailable";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "kCompletedWithFailure";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100271FB0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434AF8);
  sub_100005DF0(v0, qword_100434AF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "GnssContent_PROTOBUF_DEFAULT";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "GnssContent_kNone";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "GnssContent_kSomeInsignificant";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "GnssContent_kSomeSignificant";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GnssContent_kSufficientFor2DFix";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "GnssContent_kSufficientFor3DFix";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002722D8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434B10);
  sub_100005DF0(v0, qword_100434B10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EstimationTechnology_PROTOBUF_DEFAULT";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EstimationTechnology_kNotInitialized";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EstimationTechnology_kSingleShot";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EstimationTechnology_kFiltered";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "EstimationTechnology_kFilteredIns";
  *(v15 + 8) = 33;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}