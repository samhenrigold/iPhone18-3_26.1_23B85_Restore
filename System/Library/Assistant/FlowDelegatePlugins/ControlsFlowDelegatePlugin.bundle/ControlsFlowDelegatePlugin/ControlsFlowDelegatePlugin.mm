uint64_t sub_1120(uint64_t a1)
{
  sub_1438();
  sub_13B0();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1428();
  sub_1408();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_11F0(uint64_t a1)
{
  sub_1438();
  sub_13B0();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1428();
  v7 = sub_1418();
  result = (*(v3 + 8))(v6, v1);
  if (v7)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1110();
  *a1 = result;
  return result;
}

unint64_t sub_135C()
{
  result = qword_8138;
  if (!qword_8138)
  {
    type metadata accessor for ControlsFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8138);
  }

  return result;
}