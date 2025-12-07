uint64_t sub_1348@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_137C(uint64_t a1)
{
  v49 = a1;
  v1 = sub_1D64();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DD4();
  v43 = *(v45 - 8);
  v3 = __chkstk_darwin(v45);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = &v34 - v5;
  v6 = sub_1DA4();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1DC4();
  v36 = *(v38 - 8);
  v8 = __chkstk_darwin(v38);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = &v34 - v10;
  v11 = sub_1D84();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DB4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v21 = sub_1DE4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v49, v21);
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == enum case for SiriAlarmSnippetModels.alarmMulti(_:))
  {
    (*(v22 + 96))(v24, v21);
    (*(v15 + 32))(v20, v24, v14);
    (*(v15 + 16))(v18, v20, v14);
    sub_1D74();
    sub_1B10(&qword_8140, &type metadata accessor for AlarmSnippet, &protocol conformance descriptor for AlarmSnippet);
    v26 = sub_1DF4();
    (*(v48 + 8))(v13, v11);
    (*(v15 + 8))(v20, v14);
    return v26;
  }

  if (v25 == enum case for SiriAlarmSnippetModels.alarmSelector(_:))
  {
    (*(v22 + 96))(v24, v21);
    v28 = v35;
    v27 = v36;
    v29 = v38;
    (*(v36 + 32))(v35, v24, v38);
    (*(v27 + 16))(v34, v28, v29);
    v30 = v37;
    sub_1D94();
    sub_1B10(&qword_8138, &type metadata accessor for AlarmSelector, &protocol conformance descriptor for AlarmSelector);
    v31 = v41;
    v26 = sub_1DF4();
    v32 = v40;
LABEL_7:
    (*(v32 + 8))(v30, v31);
    (*(v27 + 8))(v28, v29);
    return v26;
  }

  if (v25 == enum case for SiriAlarmSnippetModels.alarmConfirmation(_:))
  {
    (*(v22 + 96))(v24, v21);
    v28 = v42;
    v27 = v43;
    v29 = v45;
    (*(v43 + 32))(v42, v24, v45);
    (*(v27 + 16))(v39, v28, v29);
    v30 = v44;
    sub_1D54();
    sub_1B10(&qword_8130, &type metadata accessor for AlarmConfirmation, &protocol conformance descriptor for AlarmConfirmation);
    v31 = v47;
    v26 = sub_1DF4();
    v32 = v46;
    goto LABEL_7;
  }

  result = sub_1E04();
  __break(1u);
  return result;
}

uint64_t sub_1B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int Placeholder.hashValue.getter()
{
  sub_1E14();
  sub_1E24(0);
  return sub_1E34();
}

Swift::Int sub_1BCC(uint64_t a1)
{
  sub_1E14();
  sub_1E24(0);
  return sub_1E34();
}

unint64_t sub_1C10()
{
  result = qword_8148;
  if (!qword_8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Placeholder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Placeholder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}