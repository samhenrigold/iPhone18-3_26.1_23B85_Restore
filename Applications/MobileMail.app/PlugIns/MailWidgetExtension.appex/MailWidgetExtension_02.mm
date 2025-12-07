uint64_t sub_100046CE8(uint64_t a1)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6A8();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v8 = type metadata accessor for MessageView(0);
  v11 = a1 + v8[5];

  v10 = type metadata accessor for Message(0);
  v9 = v11 + *(v10 + 32);
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 8))(v9);
  v12 = v11 + *(v10 + 60);
  v13 = sub_10007CD98();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1))
  {
    (*(v14 + 8))(v12, v13);
  }

  v6 = a1 + v8[8];
  v3 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  (*(*(v3 - 8) + 8))(v6);

  v7 = a1 + v8[12];
  sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10007D118();
    (*(*(v4 - 8) + 8))(v7);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_100046FEC()
{
  v2 = qword_10009B828;
  if (!qword_10009B828)
  {
    sub_100009860(&qword_10009B800, &qword_10007FC78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B828);
    return WitnessTable;
  }

  return v2;
}

char *sub_100047074(char *a1, char *a2)
{
  sub_1000094DC(&qword_10009B830, &qword_10007FCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_10007D6A8();
      (*(*(v3 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v26 - 8) + 64));
    }

    v16 = type metadata accessor for MessageView(0);
    v19 = &a2[v16[5]];
    v21 = &a1[v16[5]];
    *v19 = *v21;
    *(v19 + 1) = *(v21 + 1);
    *(v19 + 2) = *(v21 + 2);
    *(v19 + 3) = *(v21 + 3);
    v20 = type metadata accessor for Message(0);
    v18 = &v19[v20[8]];
    v17 = &v21[v20[8]];
    v4 = sub_10007CE28();
    (*(*(v4 - 8) + 32))(v18, v17);
    v19[v20[9]] = v21[v20[9]];
    v19[v20[10]] = v21[v20[10]];
    v19[v20[11]] = v21[v20[11]];
    v19[v20[12]] = v21[v20[12]];
    v5 = &v19[v20[13]];
    v6 = &v21[v20[13]];
    *v5 = *v6;
    v5[8] = v6[8];
    v19[v20[14]] = v21[v20[14]];
    v22 = &v19[v20[15]];
    v23 = &v21[v20[15]];
    v24 = sub_10007CD98();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1))
    {
      v7 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      memcpy(v22, v23, *(*(v7 - 8) + 64));
    }

    else
    {
      (*(v25 + 32))(v22, v23, v24);
      (*(v25 + 56))(v22, 0, 1, v24);
    }

    *&a2[v16[6]] = *&a1[v16[6]];
    a2[v16[7]] = a1[v16[7]];
    v12 = &a2[v16[8]];
    v11 = &a1[v16[8]];
    v8 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
    (*(*(v8 - 8) + 32))(v12, v11);
    *&a2[v16[9]] = *&a1[v16[9]];
    *&a2[v16[10]] = *&a1[v16[10]];
    *&a2[v16[11]] = *&a1[v16[11]];
    __dst = &a2[v16[12]];
    __src = &a1[v16[12]];
    v15 = sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_10007D118();
      (*(*(v9 - 8) + 32))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(__dst, __src, *(*(v15 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B800, &qword_10007FC78);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_100047630(void *a1, void *a2)
{
  sub_1000094DC(&qword_10009B830, &qword_10007FCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000094DC(&qword_10009B478, &qword_10007FC90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_10007D6A8();
      (*(*(v3 - 8) + 16))(a2, a1);
    }

    else
    {
      v39 = *a1;

      *a2 = v39;
    }

    swift_storeEnumTagMultiPayload();
    v25 = type metadata accessor for MessageView(0);
    v32 = (a2 + v25[5]);
    v34 = (a1 + v25[5]);
    *v32 = *v34;
    v26 = v34[1];

    v32[1] = v26;
    v32[2] = v34[2];
    v27 = v34[3];

    v32[3] = v27;
    v32[4] = v34[4];
    v28 = v34[5];

    v32[5] = v28;
    v32[6] = v34[6];
    v29 = v34[7];

    v32[7] = v29;
    v33 = type metadata accessor for Message(0);
    v31 = v32 + v33[8];
    v30 = v34 + v33[8];
    v4 = sub_10007CE28();
    (*(*(v4 - 8) + 16))(v31, v30);
    *(v32 + v33[9]) = *(v34 + v33[9]);
    *(v32 + v33[10]) = *(v34 + v33[10]);
    *(v32 + v33[11]) = *(v34 + v33[11]);
    *(v32 + v33[12]) = *(v34 + v33[12]);
    v5 = v32 + v33[13];
    v6 = v34 + v33[13];
    *v5 = *v6;
    v5[8] = v6[8];
    *(v32 + v33[14]) = *(v34 + v33[14]);
    v35 = v32 + v33[15];
    v36 = v34 + v33[15];
    v37 = sub_10007CD98();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v36, 1))
    {
      v7 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      memcpy(v35, v36, *(*(v7 - 8) + 64));
    }

    else
    {
      (*(v38 + 16))(v35, v36, v37);
      (*(v38 + 56))(v35, 0, 1, v37);
    }

    *(a2 + v25[6]) = *(a1 + v25[6]);
    *(a2 + v25[7]) = *(a1 + v25[7]);
    v16 = a2 + v25[8];
    v15 = a1 + v25[8];
    v8 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
    (*(*(v8 - 8) + 16))(v16, v15);
    v17 = (a2 + v25[9]);
    v9 = (a1 + v25[9]);
    *v17 = *v9;
    v18 = v9[1];

    v17[1] = v18;
    v10 = v25[10];
    v19 = a2 + v10;
    *(a2 + v10) = *(a1 + v10);
    v20 = *(a1 + v10 + 8);

    *(v19 + 1) = v20;
    v11 = v25[11];
    v21 = a2 + v11;
    *(a2 + v11) = *(a1 + v11);
    v22 = *(a1 + v11 + 8);

    *(v21 + 1) = v22;
    v23 = (a2 + v25[12]);
    v24 = (a1 + v25[12]);
    sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_10007D118();
      (*(*(v12 - 8) + 16))(v23, v24);
    }

    else
    {
      v14 = *v24;

      *v23 = v14;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B800, &qword_10007FC78);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_100047CEC()
{
  v3 = qword_10009B838;
  if (!qword_10009B838)
  {
    sub_100009860(&qword_10009B808, &unk_10007FC80);
    sub_100046FEC();
    sub_10004664C(v0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B838);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_100047D94(uint64_t a1)
{
  sub_1000094DC(&qword_10009B830, &qword_10007FCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000094DC(&qword_10009B478, &qword_10007FC90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_10007D6A8();
      (*(*(v2 - 8) + 8))(a1);
    }

    else
    {
    }

    v9 = type metadata accessor for MessageView(0);
    v12 = a1 + v9[5];

    v11 = type metadata accessor for Message(0);
    v10 = v12 + *(v11 + 32);
    v3 = sub_10007CE28();
    (*(*(v3 - 8) + 8))(v10);
    v13 = v12 + *(v11 + 60);
    v14 = sub_10007CD98();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v13, 1))
    {
      (*(v15 + 8))(v13, v14);
    }

    v7 = a1 + v9[8];
    v4 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
    (*(*(v4 - 8) + 8))(v7);

    v8 = a1 + v9[12];
    sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_10007D118();
      (*(*(v5 - 8) + 8))(v8);
    }

    else
    {
    }
  }

  else
  {
    v1 = sub_1000094DC(&qword_10009B800, &qword_10007FC78);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_100048110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v10 = a1;
  v17 = 0;
  v16 = 0;
  v12 = type metadata accessor for MessageView(0);
  v8 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v14 = (&v8 - v8);
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v15 = (&v8 - v9);
  v17 = &v8 - v9;
  v16 = v6;
  v13 = sub_10004664C(v5);
  sub_1000354E8(v10, v12, v15);
  sub_1000466CC(v15, v14);
  sub_1000354E8(v14, v12, v11);
  sub_100046CE8(v14);
  return sub_100046CE8(v15);
}

uint64_t sub_10004822C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001EB30(a1, a2);
  v5 = type metadata accessor for MessageListView(0);
  swift_getKeyPath();
  sub_10007CF28();
  v6 = *(v5 + 24);
  result = sub_10003FEB4(0.0);
  v3 = (a2 + v6);
  *v3 = v4;
  v3[1] = result;
  return result;
}

uint64_t sub_1000482F0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = type metadata accessor for Snapshot(0);
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else
  {
    v6 = sub_1000094DC(&qword_10009B718, &qword_100080120);
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + *(a3 + 20), a2, v6);
    }

    else if (a2 == 2147483646)
    {
      v5 = -1;
      if (*(a1 + *(a3 + 24) + 8) < &_mh_execute_header)
      {
        v5 = *(a1 + *(a3 + 24) + 8);
      }

      v3 = v5 - 1;
      if (v5 - 1 < 0)
      {
        v3 = -1;
      }

      return (v3 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_1000484E4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = type metadata accessor for Snapshot(0);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = sub_1000094DC(&qword_10009B718, &qword_100080120);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100048680(uint64_t a1)
{
  v5 = type metadata accessor for Snapshot(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_100048784(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_100048820(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_100048784(uint64_t a1)
{
  v5 = qword_10009B8A8;
  if (!qword_10009B8A8)
  {
    sub_10007D6D8();
    v4 = sub_10007CF18();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009B8A8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100048820(uint64_t a1)
{
  v5 = qword_10009B8B0;
  if (!qword_10009B8B0)
  {
    v4 = sub_10007D528();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009B8B0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100048940()
{
  v2 = qword_10009B8F0;
  if (!qword_10009B8F0)
  {
    sub_100009860(&qword_10009B8E8, &qword_10007FE18);
    sub_1000489E8();
    sub_10003D128();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B8F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000489E8()
{
  v2 = qword_10009B8F8;
  if (!qword_10009B8F8)
  {
    sub_100009860(&qword_10009B900, &qword_10007FE20);
    sub_100048A80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B8F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100048A80()
{
  v2 = qword_10009B908;
  if (!qword_10009B908)
  {
    sub_100009860(&qword_10009B910, &qword_10007FE28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B908);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100048B08(uint64_t a1)
{
  sub_1000094DC(&qword_10009B918, &unk_10007FE38);
  v1 = sub_1000094DC(&qword_10009B900, &qword_10007FE20);
  (*(*(v1 - 8) + 8))();
  sub_1000094DC(&qword_10009B8E8, &qword_10007FE18);

  return a1;
}

uint64_t sub_100048BBC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(sub_1000094DC(&qword_10009B918, &unk_10007FE38) + 44);
  v2 = sub_1000094DC(&qword_10009B900, &qword_10007FE20);
  (*(*(v2 - 8) + 16))();
  v7 = *(sub_1000094DC(&qword_10009B8E8, &qword_10007FE18) + 36);
  v8 = *(a1 + v4 + v7);

  result = a2;
  *(a2 + v4 + v7) = v8;
  return result;
}

unint64_t sub_100048CB8()
{
  v2 = qword_10009B920;
  if (!qword_10009B920)
  {
    sub_10007D6D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100048D38()
{
  v2 = qword_10009B928;
  if (!qword_10009B928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100048DB0()
{
  v2 = qword_10009B938;
  if (!qword_10009B938)
  {
    sub_100009860(&qword_10009B930, &qword_10007FE48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B938);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100048E64()
{
  v2 = qword_10009B950;
  if (!qword_10009B950)
  {
    sub_100009860(&qword_10009B948, &qword_10007FE58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100048EEC()
{
  v9 = type metadata accessor for MessageListView(0);
  v1 = *(*(v9 - 8) + 80);
  v11 = (v1 + 16) & ~v1;
  v10 = v11 + *(*(v9 - 8) + 64);
  v12 = sub_10007CF98();
  v13 = *(v12 - 8);
  v14 = (v10 + *(v13 + 80)) & ~*(v13 + 80);

  if (*(v0 + v11 + 32) > 5uLL)
  {
  }

  v5 = v8 + v11 + *(type metadata accessor for Mailbox(0) + 28);
  v6 = sub_10007CD98();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1))
  {
    (*(v7 + 8))(v5, v6);
  }

  if (*(v8 + v11 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v4 = v8 + v11 + *(v9 + 20);
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6D8();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  (*(v13 + 8))(v8 + v14, v12);
  return swift_deallocObject();
}

uint64_t sub_100049270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(type metadata accessor for MessageListView(0) - 8);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v11 = v13 + *(v10 + 64);
  v4 = sub_10007CF98();
  v5 = (v11 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = (v5 + *(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v3 + v6);
  v8 = *(v3 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000423E4(a1, a2, v3 + v13, v3 + v5, v8, a3, v7);
}

unint64_t sub_100049400()
{
  v2 = qword_10009B960;
  if (!qword_10009B960)
  {
    sub_100009860(&qword_10009B958, &qword_10007FE88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B960);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100049488(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009B900, &qword_10007FE20);
  (*(*(v1 - 8) + 8))(a1);
  sub_1000094DC(&qword_10009B8E8, &qword_10007FE18);

  return a1;
}

uint64_t sub_100049518(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000094DC(&qword_10009B900, &qword_10007FE20);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_1000094DC(&qword_10009B8E8, &qword_10007FE18) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1000495C8()
{
  v2 = qword_10009B988;
  if (!qword_10009B988)
  {
    sub_100009860(&qword_10009B980, &qword_10007FEA8);
    sub_100047CEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10004966C()
{
  v2 = qword_10009B990;
  if (!qword_10009B990)
  {
    sub_100009860(&qword_10009B970, &qword_10007FE98);
    sub_10007D588();
    sub_10004975C();
    swift_getOpaqueTypeConformance2();
    sub_1000497DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10004975C()
{
  v2 = qword_10009B998;
  if (!qword_10009B998)
  {
    sub_10007D588();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000497DC()
{
  v2 = qword_10009B9A0;
  if (!qword_10009B9A0)
  {
    sub_100009860(&qword_10009B9A8, &qword_10007FEB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B9A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100049864(uint64_t a1)
{
  v4 = sub_1000094DC(&qword_10009B970, &qword_10007FE98);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_10004994C(char *a1, char *a2)
{
  v7 = sub_1000094DC(&qword_10009B970, &qword_10007FE98);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = sub_1000094DC(&qword_10009B978, &qword_10007FEA0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
    (*(*(v2 - 8) + 32))(a2, a1);
    memcpy(&a2[*(v7 + 36)], &a1[*(v7 + 36)], 0x30uLL);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

void *sub_100049ABC(void *a1, void *a2)
{
  sub_1000094DC(&qword_10009B830, &qword_10007FCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000094DC(&qword_10009B478, &qword_10007FC90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_10007D6A8();
      (*(*(v3 - 8) + 16))(a2, a1);
    }

    else
    {
      v40 = *a1;

      *a2 = v40;
    }

    swift_storeEnumTagMultiPayload();
    v26 = type metadata accessor for MessageView(0);
    v33 = (a2 + v26[5]);
    v35 = (a1 + v26[5]);
    *v33 = *v35;
    v27 = v35[1];

    v33[1] = v27;
    v33[2] = v35[2];
    v28 = v35[3];

    v33[3] = v28;
    v33[4] = v35[4];
    v29 = v35[5];

    v33[5] = v29;
    v33[6] = v35[6];
    v30 = v35[7];

    v33[7] = v30;
    v34 = type metadata accessor for Message(0);
    v32 = v33 + v34[8];
    v31 = v35 + v34[8];
    v4 = sub_10007CE28();
    (*(*(v4 - 8) + 16))(v32, v31);
    *(v33 + v34[9]) = *(v35 + v34[9]);
    *(v33 + v34[10]) = *(v35 + v34[10]);
    *(v33 + v34[11]) = *(v35 + v34[11]);
    *(v33 + v34[12]) = *(v35 + v34[12]);
    v5 = v33 + v34[13];
    v6 = v35 + v34[13];
    *v5 = *v6;
    v5[8] = v6[8];
    *(v33 + v34[14]) = *(v35 + v34[14]);
    v36 = v33 + v34[15];
    v37 = v35 + v34[15];
    v38 = sub_10007CD98();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1))
    {
      v7 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      memcpy(v36, v37, *(*(v7 - 8) + 64));
    }

    else
    {
      (*(v39 + 16))(v36, v37, v38);
      (*(v39 + 56))(v36, 0, 1, v38);
    }

    *(a2 + v26[6]) = *(a1 + v26[6]);
    *(a2 + v26[7]) = *(a1 + v26[7]);
    v17 = a2 + v26[8];
    v16 = a1 + v26[8];
    v8 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
    (*(*(v8 - 8) + 16))(v17, v16);
    v18 = (a2 + v26[9]);
    v9 = (a1 + v26[9]);
    *v18 = *v9;
    v19 = v9[1];

    v18[1] = v19;
    v10 = v26[10];
    v20 = a2 + v10;
    *(a2 + v10) = *(a1 + v10);
    v21 = *(a1 + v10 + 8);

    *(v20 + 1) = v21;
    v11 = v26[11];
    v22 = a2 + v11;
    *(a2 + v11) = *(a1 + v11);
    v23 = *(a1 + v11 + 8);

    *(v22 + 1) = v23;
    v24 = (a2 + v26[12]);
    v25 = (a1 + v26[12]);
    sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_10007D118();
      (*(*(v12 - 8) + 16))(v24, v25);
    }

    else
    {
      v15 = *v25;

      *v24 = v15;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B800, &qword_10007FC78);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  v13 = sub_1000094DC(&qword_10009B980, &qword_10007FEA8);
  memcpy(a2 + *(v13 + 36), a1 + *(v13 + 36), 0x30uLL);
  return a2;
}

char *sub_10004A1B4(char *a1, char *a2)
{
  v14 = sub_1000094DC(&qword_10009B970, &qword_10007FE98);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v4 = sub_1000094DC(&qword_10009B978, &qword_10007FEA0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = *(v14 + 36);
    v11 = &a2[v3];
    v10 = &a1[v3];
    v6 = *&a1[v3];
    v7 = *&a1[v3 + 8];

    *v11 = v6;
    *(v11 + 1) = v7;
    v8 = *(v10 + 2);
    v9 = *(v10 + 3);

    *(v11 + 2) = v8;
    *(v11 + 3) = v9;
    *(v11 + 2) = *(v10 + 2);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

unint64_t sub_10004A380()
{
  v2 = qword_10009B9B0;
  if (!qword_10009B9B0)
  {
    sub_100009860(&qword_10009B978, &qword_10007FEA0);
    sub_10004966C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B9B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10004A418(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
  (*(*(v1 - 8) + 8))(a1);
  sub_1000094DC(&qword_10009B970, &qword_10007FE98);

  return a1;
}

__n128 sub_10004A4BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_1000094DC(&qword_10009B970, &qword_10007FE98) + 36);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);

  v3 = (a2 + v6);
  v12 = (a2 + v6);
  *v3 = v7;
  v3[1] = v8;
  v10 = *(a1 + v6 + 16);
  v11 = *(a1 + v6 + 24);

  v12[1].n128_u64[0] = v10;
  v12[1].n128_u64[1] = v11;
  result = *(a1 + v6 + 32);
  v12[2] = result;
  return result;
}

unint64_t sub_10004A5C8()
{
  v2 = qword_10009B9B8;
  if (!qword_10009B9B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10004A640()
{
  v2 = qword_10009B9C0;
  if (!qword_10009B9C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B9C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_10004A6B8(const void *a1, void *a2)
{
  v8 = sub_1000094DC(&qword_10009B780, &qword_10007FC40);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v3 = sub_1000094DC(&qword_10009B768, &qword_10007FC38);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = sub_1000094DC(&qword_10009B790, &qword_10007FC48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1000094DC(&qword_10009B798, &qword_10007FC50);
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    (*(v9 + 56))(a2, 0, 1, v8);
  }

  return a2;
}

void *sub_10004A870(uint64_t *a1, void *a2)
{
  v11 = sub_1000094DC(&qword_10009B780, &qword_10007FC40);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = sub_1000094DC(&qword_10009B768, &qword_10007FC38);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    sub_1000094DC(&qword_10009B790, &qword_10007FC48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1000094DC(&qword_10009B798, &qword_10007FC50);
      (*(*(v2 - 8) + 16))(a2, a1);
    }

    else
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(a1 + 16);
      sub_10004AA70(*a1, v6, v7 & 1);
      *a2 = v5;
      a2[1] = v6;
      *(a2 + 16) = v7 & 1;
      v8 = a1[3];

      a2[3] = v8;
    }

    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

uint64_t sub_10004AA70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_10004AAB4()
{
  type metadata accessor for MessagesContentView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();

  return v1;
}

uint64_t type metadata accessor for MessagesContentView(uint64_t a1)
{
  v2 = qword_10009BA58;
  if (!qword_10009BA58)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_10004ABBC(double a1)
{
  type metadata accessor for MessagesContentView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D508();
  sub_100040030();
}

double sub_10004AC78()
{
  type metadata accessor for MessagesContentView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D518();

  return v1;
}

double sub_10004AD24()
{
  v2 = *(v0 + *(type metadata accessor for MessagesContentView(0) + 20));

  return v2;
}

uint64_t sub_10004AD6C(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for MessagesContentView(0) + 20);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_10004ADC4@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_10004B69C;
  v19 = 0;
  v18 = 0;
  v12 = sub_1000094DC(&qword_10009B9C8, &qword_10007FEE0);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = sub_10007D138();
  v8 = &v16;
  v17 = v1;
  v9 = sub_1000094DC(&qword_10009B9D0, &qword_10007FEE8);
  sub_10004B6A4();
  sub_10007D558();
  v13 = sub_10004B72C();
  sub_1000354E8(v14, v12, v15);
  sub_10004B7B4(v14);
  sub_10004BC14(v15, v14);
  sub_1000354E8(v14, v12, v11);
  sub_10004B7B4(v14);
  return sub_10004B7B4(v15);
}

uint64_t sub_10004AF4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v34 = a1;
  v33 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v19 = 0;
  v39 = type metadata accessor for MessageListView(0);
  v13 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v45 = (&v13 - v13);
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v48 = (&v13 - v14);
  v62 = &v13 - v14;
  v31 = sub_10007D588();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v15 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v30 = &v13 - v15;
  v49 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
  v36 = *(v49 - 8);
  v37 = v49 - 8;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v46 = &v13 - v16;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v16);
  v52 = &v13 - v17;
  v61 = &v13 - v17;
  v18 = (*(*(sub_1000094DC(&qword_10009B470, &qword_10007F880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v24 = &v13 - v18;
  v20 = (*(*(type metadata accessor for Snapshot(v5) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v35 = (&v13 - v20);
  v25 = type metadata accessor for MessageListHeaderView(v6);
  v21 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v7 = &v13 - v21;
  v27 = &v13 - v21;
  v38 = sub_1000094DC(&qword_10009B9F8, &qword_10007FF08);
  v22 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v47 = (&v13 - v22);
  v23 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v53 = (&v13 - v23);
  v60 = &v13 - v23;
  v59 = v10;
  sub_10001E2CC(v10, v11);
  sub_10003A270();
  sub_10003A2A4(v24, v35, v7);
  v26 = sub_10007D208();
  sub_10003AEC8();
  sub_10007D408();
  sub_10003AFC8(v27);
  v40 = sub_10004C868();
  sub_1000354E8(v47, v38, v53);
  sub_10003AFC8(v47);
  sub_10007D578();
  v32 = sub_10004975C();
  sub_10003F924();
  sub_10007D2D8();
  (*(v28 + 8))(v30, v31);
  v58[3] = v31;
  v58[4] = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v46, v49, v52);
  v51 = *(v36 + 8);
  v50 = v36 + 8;
  v51(v46, v49);
  sub_10001E2CC(v34, v35);
  sub_10004822C(v35, v45);
  v42 = sub_10004C90C();
  sub_1000354E8(v45, v39, v48);
  sub_10004C98C(v45);
  sub_10004CB84(v53, v47);
  v44 = v58;
  v58[0] = v47;
  (*(v36 + 16))(v46, v52, v49);
  v58[1] = v46;
  sub_100045BF8(v48, v45);
  v58[2] = v45;
  v57[0] = v38;
  v57[1] = v49;
  v57[2] = v39;
  v54 = v40;
  v55 = OpaqueTypeConformance2;
  v56 = v42;
  sub_10003A014(v44, 3uLL, v57, v43);
  sub_10004C98C(v45);
  v51(v46, v49);
  sub_10003AFC8(v47);
  sub_10004C98C(v48);
  v51(v52, v49);
  return sub_10003AFC8(v53);
}

unint64_t sub_10004B6A4()
{
  v2 = qword_10009B9D8;
  if (!qword_10009B9D8)
  {
    sub_100009860(&qword_10009B9D0, &qword_10007FEE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10004B72C()
{
  v2 = qword_10009B9E0;
  if (!qword_10009B9E0)
  {
    sub_100009860(&qword_10009B9C8, &qword_10007FEE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B9E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10004B7B4(uint64_t a1)
{
  v17 = *(sub_1000094DC(&qword_10009B9E8, &unk_10007FEF0) + 44);
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6A8();
    (*(*(v1 - 8) + 8))(a1 + v17);
  }

  else
  {
  }

  v16 = a1 + v17 + *(type metadata accessor for MessageListHeaderView(0) + 20);

  if (*(v16 + 32) > 5uLL)
  {
  }

  v11 = type metadata accessor for Mailbox(0);
  v12 = v16 + *(v11 + 28);
  v13 = sub_10007CD98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!(v15)(v12, 1))
  {
    (*(v14 + 8))(v12, v13);
  }

  v10 = type metadata accessor for Snapshot(0);
  if (*(v16 + *(v10 + 20)) >= 2uLL)
  {
  }

  v8 = sub_1000094DC(&qword_10009B9F0, &qword_10007FF00);
  v7 = a1 + v17 + *(v8 + 48);
  v2 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
  (*(*(v2 - 8) + 8))(v7);
  v9 = a1 + v17 + *(v8 + 64);

  if (*(v9 + 32) > 5uLL)
  {
  }

  v6 = v9 + *(v11 + 28);
  if (!v15())
  {
    (*(v14 + 8))(v6, v13);
  }

  if (*(v9 + *(v10 + 20)) >= 2uLL)
  {
  }

  v5 = v9 + *(type metadata accessor for MessageListView(0) + 20);
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_10007D6D8();
    (*(*(v3 - 8) + 8))(v5);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10004BC14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v49 = *(sub_1000094DC(&qword_10009B9E8, &unk_10007FEF0) + 44);
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v47 = *(a1 + v49);

    *(a2 + v49) = v47;
  }

  swift_storeEnumTagMultiPayload();
  v42 = type metadata accessor for MessageListHeaderView(0);
  v44 = (a2 + v49 + *(v42 + 20));
  v46 = (a1 + v49 + *(v42 + 20));
  *v44 = *v46;
  v43 = v46[1];

  v44[1] = v43;
  v45 = v46[2];

  v44[2] = v45;
  if (v46[4] > 5uLL)
  {
    v44[3] = v46[3];
    v41 = v46[4];

    v44[4] = v41;
  }

  else
  {
    *(v44 + 3) = *(v46 + 3);
  }

  v35 = type metadata accessor for Mailbox(0);
  v36 = v44 + *(v35 + 28);
  v37 = v46 + *(v35 + 28);
  v38 = sub_10007CD98();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if ((v40)(v37, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(v36, v37, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v39 + 16))(v36, v37, v38);
    (*(v39 + 56))(v36, 0, 1, v38);
  }

  v32 = type metadata accessor for Snapshot(0);
  v33 = v44 + *(v32 + 20);
  v34 = v46 + *(v32 + 20);
  if (*v34 < 2uLL)
  {
    *v33 = *v34;
    *(v33 + 8) = *(v34 + 8);
  }

  else
  {
    v31 = *v34;

    *v33 = v31;
    *(v33 + 1) = *(v34 + 1);
    v33[16] = v34[16];
    v33[17] = v34[17];
  }

  v22 = *(v42 + 24);
  v23 = *(a1 + v49 + v22);

  *(a2 + v49 + v22) = v23;
  v4 = sub_1000094DC(&qword_10009B9F8, &qword_10007FF08);
  memcpy((a2 + v49 + *(v4 + 36)), (a1 + v49 + *(v4 + 36)), 0x29uLL);
  v26 = sub_1000094DC(&qword_10009B9F0, &qword_10007FF00);
  v25 = a2 + v49 + *(v26 + 48);
  v24 = a1 + v49 + *(v26 + 48);
  v5 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
  (*(*(v5 - 8) + 16))(v25, v24);
  v28 = (a2 + v49 + *(v26 + 64));
  v30 = (a1 + v49 + *(v26 + 64));
  *v28 = *v30;
  v27 = v30[1];

  v28[1] = v27;
  v29 = v30[2];

  v28[2] = v29;
  if (v30[4] > 5uLL)
  {
    v28[3] = v30[3];
    v21 = v30[4];

    v28[4] = v21;
  }

  else
  {
    *(v28 + 3) = *(v30 + 3);
  }

  __dst = v28 + *(v35 + 28);
  __src = v30 + *(v35 + 28);
  if (v40())
  {
    v6 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v39 + 16))(__dst, __src, v38);
    (*(v39 + 56))(__dst, 0, 1, v38);
  }

  v17 = v28 + *(v32 + 20);
  v18 = v30 + *(v32 + 20);
  if (*v18 < 2uLL)
  {
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
  }

  else
  {
    v16 = *v18;

    *v17 = v16;
    *(v17 + 1) = *(v18 + 1);
    v17[16] = v18[16];
    v17[17] = v18[17];
  }

  v13 = type metadata accessor for MessageListView(0);
  v14 = (v28 + *(v13 + 20));
  v15 = (v30 + *(v13 + 20));
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10007D6D8();
    (*(*(v7 - 8) + 16))(v14, v15);
  }

  else
  {
    v12 = *v15;

    *v14 = v12;
  }

  swift_storeEnumTagMultiPayload();
  v10 = (v28 + *(v13 + 24));
  v8 = (v30 + *(v13 + 24));
  *v10 = *v8;
  v11 = v8[1];

  result = a2;
  v10[1] = v11;
  return result;
}

uint64_t sub_10004C470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_10001EB30(a1, a2);
  v7 = *(type metadata accessor for MessagesContentView(0) + 20);
  result = sub_10003FEB4(a3);
  v4 = (a2 + v7);
  *v4 = v5;
  v4[1] = result;
  return result;
}

uint64_t sub_10004C508(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = type metadata accessor for Snapshot(0);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 2147483646)
  {
    v5 = -1;
    if (*(a1 + *(a3 + 20) + 8) < &_mh_execute_header)
    {
      v5 = *(a1 + *(a3 + 20) + 8);
    }

    v3 = v5 - 1;
    if (v5 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __break(1u);
  }

  return v6;
}

uint64_t sub_10004C658(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snapshot(0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10004C750(uint64_t a1)
{
  v4 = type metadata accessor for Snapshot(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_100048820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_10004C868()
{
  v2 = qword_10009BA90;
  if (!qword_10009BA90)
  {
    sub_100009860(&qword_10009B9F8, &qword_10007FF08);
    sub_10003AEC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BA90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10004C90C()
{
  v2 = qword_10009BA98;
  if (!qword_10009BA98)
  {
    type metadata accessor for MessageListView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BA98);
    return WitnessTable;
  }

  return v2;
}

void *sub_10004C98C(void *a1)
{

  if (a1[4] > 5uLL)
  {
  }

  v4 = a1 + *(type metadata accessor for Mailbox(0) + 28);
  v5 = sub_10007CD98();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1))
  {
    (*(v6 + 8))(v4, v5);
  }

  if (*(a1 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v3 = a1 + *(type metadata accessor for MessageListView(0) + 20);
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6D8();
    (*(*(v1 - 8) + 8))(v3);
  }

  else
  {
  }

  return a1;
}

void *sub_10004CB84(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v23 = *a1;

    *a2 = v23;
  }

  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for MessageListHeaderView(0);
  v20 = (a2 + *(v18 + 20));
  v22 = (a1 + *(v18 + 20));
  *v20 = *v22;
  v19 = v22[1];

  v20[1] = v19;
  v21 = v22[2];

  v20[2] = v21;
  if (v22[4] > 5uLL)
  {
    v20[3] = v22[3];
    v17 = v22[4];

    v20[4] = v17;
  }

  else
  {
    *(v20 + 3) = *(v22 + 3);
  }

  v3 = type metadata accessor for Mailbox(0);
  __dst = v20 + *(v3 + 28);
  __src = v22 + *(v3 + 28);
  v15 = sub_10007CD98();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(__src, 1))
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(__dst, __src, v15);
    (*(v16 + 56))(__dst, 0, 1, v15);
  }

  v5 = type metadata accessor for Snapshot(0);
  v11 = v20 + *(v5 + 20);
  v12 = v22 + *(v5 + 20);
  if (*v12 < 2uLL)
  {
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
  }

  else
  {
    v10 = *v12;

    *v11 = v10;
    *(v11 + 1) = *(v12 + 1);
    v11[16] = v12[16];
    v11[17] = v12[17];
  }

  v8 = *(v18 + 24);
  v9 = *(a1 + v8);

  *(a2 + v8) = v9;
  v6 = sub_1000094DC(&qword_10009B9F8, &qword_10007FF08);
  memcpy(a2 + *(v6 + 36), a1 + *(v6 + 36), 0x29uLL);
  return a2;
}

uint64_t sub_10004CF90(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v31 = 0;
  v26 = (*(*(type metadata accessor for Mailbox(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v27 = (&v11 - v26);
  v37 = v5;
  v36 = v6 & 1;
  v34 = v7;
  v35 = v8;
  v33 = v4;
  v28 = OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList;
  v29 = (v4 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList);
  swift_beginAccess();
  if (*v29)
  {
    v20 = *&v21[v28];
    _objc_retain(v20);
    swift_endAccess();
    _objc_retain(v21);
    [v20 stopObserving:v21];
    swift_unknownObjectRelease();
    _objc_release(v20);
  }

  else
  {
    swift_endAccess();
  }

  v12 = &v21[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList];
  v13 = &v32;
  v15 = 33;
  v16 = 0;
  swift_beginAccess();
  v9 = *v12;
  v14 = 0;
  *v12 = 0;
  _objc_release(v9);
  swift_endAccess();
  type metadata accessor for MessagesDataSource.ResultHandler(v14);
  sub_10000DFBC(v25, v27);

  v18 = sub_10004D378(v27, v22, v23);
  v31 = v18;

  v17 = &v21[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler];
  v19 = &v30;
  swift_beginAccess();
  *v17 = v18;

  swift_endAccess();
  if (v24)
  {
    sub_10004E3DC(v25);
  }

  else
  {
    sub_10004E690(v25, v18);
  }
}

uint64_t sub_10004D264()
{
  v2 = (v0 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_itemIDs);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10004D2C4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_itemIDs);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_10004D334()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion);

  return v2;
}

uint64_t sub_10004D3D4(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v27 = a2;
  v30 = a3;
  v28 = sub_10004EAA8;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v20 = 0;
  v18 = *(type metadata accessor for Mailbox(0) - 8);
  v22 = v18;
  v23 = *(v18 + 64);
  v19 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v25 = (&v17 - v19);
  v36 = v4;
  v34 = v5;
  v35 = v6;
  v33 = v3;
  v21 = OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_itemIDs;
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  v7 = sub_10007DEC8();
  v8 = v25;
  v9 = v7;
  v10 = v31;
  *(v3 + v21) = v9;
  sub_10000DFBC(v10, v8);
  sub_10000E380(v25, v3 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_mailbox);
  sub_10000DFBC(v31, v25);

  v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = (v24 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_10000E380(v25, v29 + v24);
  v11 = v28;
  v12 = v29;
  v13 = v30;
  v14 = (v29 + v26);
  *v14 = v27;
  v14[1] = v13;
  v15 = (v3 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion);
  *v15 = v11;
  v15[1] = v12;

  sub_100014DA0(v31);
  return v32;
}

void sub_10004D5F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a2;
  v24 = a3;
  v32 = a4;
  v33 = a5;
  v34 = sub_100055EA8;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v36 = 0;
  v40 = sub_10007D5E8();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v20 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v39 = &v20 - v20;
  v44 = sub_10007D608();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v21 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v43 = &v20 - v21;
  v22 = *(type metadata accessor for Mailbox(v5) - 8);
  v25 = v22;
  v26 = *(v22 + 64);
  v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v30 = (&v20 - v23);
  v58 = v6;
  v57 = v7;
  v56 = v8;
  v54 = v9;
  v55 = v10;
  sub_100009744();
  v46 = sub_10007DC08();

  swift_errorRetain();
  sub_10000DFBC(v24, v30);

  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = (v29 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v12 = v28;
  v13 = v29;
  v14 = v11;
  v15 = v30;
  v35 = v14;
  *(v14 + 16) = v27;
  *(v14 + 24) = v12;
  sub_10000E380(v15, v14 + v13);
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v19 = (v35 + v31);
  *v19 = v32;
  v19[1] = v16;
  v52 = v17;
  v53 = v18;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = 0;
  v50 = sub_10000AAE4;
  v51 = &unk_100094528;
  v45 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v37 + 8))(v39, v40);
  (*(v41 + 8))(v43, v44);
  _Block_release(v45);
  _objc_release(v46);
}

uint64_t sub_10004D9F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v26 = a5;
  v27 = a4;
  v28 = a3;
  v31 = a2;
  v32 = a1;
  v29 = 0;
  v36 = 0;
  v35 = 0;
  v30 = 0;
  v33 = 0;
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v37 = a4;
  v38 = a5;

  swift_errorRetain();
  if (!v32)
  {
    if (v31)
    {
      swift_errorRetain();

      swift_errorRetain();
      (v27)(v31);
      sub_100012F98(v31, 1);

      return v30;
    }

LABEL_7:

    sub_100013D50();
    v8 = swift_allocError();
    v9 = v27;
    v14 = v8;
    *v10 = 0;
    v9();
    sub_100012F98(v14, 1);

    return v30;
  }

  v25 = v32;
  v24 = v32;
  if (v31)
  {
    goto LABEL_7;
  }

  v5 = v30;

  v35 = v24;
  v34 = v24;
  v18 = v13;
  __chkstk_darwin(v13);
  v19 = v12;
  v12[2] = v6;
  v20 = sub_1000094DC(&qword_10009ACF0, qword_10007F2A0);
  v21 = type metadata accessor for Message(0);
  sub_100055FE4();
  v7 = sub_10007D928();
  v22 = v5;
  v23 = v7;
  v16 = v7;
  v33 = v7;

  v15 = 0;
  (v27)(v16);
  sub_100012F98(v16, v15);

  return v22;
}

char *sub_10004DD44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v10 = a3;
  v7 = a1;
  v9 = a2;
  v14 = 0;
  v13 = 0;
  v8 = (*(*(type metadata accessor for Mailbox(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v11 = (&v6 - v8);
  v12 = *v3;
  v14 = v12;
  v13 = v4;
  _objc_retain(v12);
  sub_10000DFBC(v9, v11);
  return sub_10002FDA8(v12, v11, v10);
}

uint64_t sub_10004DE14()
{
  sub_100014DA0((v0 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_mailbox));
  sub_10000A480((v0 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_itemIDs));

  return v2;
}

uint64_t sub_10004DED8()
{
  v2 = sub_10007CEF8();
  sub_100001F90(v2, qword_10009BAA0);
  sub_10000202C(v2, qword_10009BAA0);
  v0 = type metadata accessor for MessagesDataSource();
  return sub_100016180(v0, v0);
}

uint64_t sub_10004DF40()
{
  if (qword_10009A648 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009BAA0);
}

uint64_t sub_10004DFAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004DF40();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_10004E040()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageRepository);
  _objc_retain(v2);
  return v2;
}

id sub_10004E088()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_10004E0F8(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_10004E190()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10004E1F8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

char *sub_10004E278(void *a1)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  v8 = v1;
  *&v1[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList] = 0;
  *&v8[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler] = 0;
  _objc_retain(a1);
  *&v8[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageRepository] = a1;
  v6.receiver = v8;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, "init");
  _objc_retain(v5);
  v8 = v5;
  _objc_release(a1);
  _objc_release(v8);
  return v5;
}

uint64_t type metadata accessor for MessagesDataSource.ResultHandler(uint64_t a1)
{
  v2 = qword_10009BC08;
  if (!qword_10009BC08)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void sub_10004E3DC(void *a1)
{
  sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v11 = sub_100015FBC();
  sub_10001DE64();
  v9 = sub_100072DF8(a1);
  sub_10001D110();
  sub_10007DEC8();
  *v1 = [objc_opt_self() sortDescriptorForDateAscending:0];
  sub_100006FD4();
  v8 = v2;
  v3 = sub_10007D898("Widget.DaemonDataSource.ThreadedMessages", 0x28uLL, 1);
  v12 = sub_100020FE0(v11, v9, v8, 8, v3, v4, v11);
  sub_1000094DC(&unk_10009BB60, &unk_10007FFD8);
  _objc_retain(v12);
  v10 = *&v13[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageRepository];
  _objc_retain(v10);
  v15 = sub_10004EB88(v12, v10, v11);
  v14 = &v13[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList];
  swift_beginAccess();
  v5 = *v14;
  *v14 = v15;
  _objc_release(v5);
  swift_endAccess();
  v16 = OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList;
  v17 = &v13[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList];
  swift_beginAccess();
  if (*v17)
  {
    v6 = *&v13[v16];
    _objc_retain(v6);
    swift_endAccess();
    _objc_retain(v13);
    [v6 beginObserving:v13];
    swift_unknownObjectRelease();
    _objc_release(v6);
  }

  else
  {
    swift_endAccess();
  }

  _objc_release(v12);
}

uint64_t sub_10004E690(void *a1, uint64_t a2)
{
  v25 = 0;
  v27 = a1;
  v26 = a2;
  sub_10001D110();
  sub_10007DEC8();
  *v2 = [objc_opt_self() sortDescriptorForDateAscending:0];
  sub_100006FD4();
  v15 = v3;
  v24 = v3;
  sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v8 = sub_100015EF4();
  sub_10001DE64();
  v9 = sub_100072DF8(a1);

  v4 = sub_10007D898("Widget.DaemonDataSource.NonThreadedMessages", 0x2BuLL, 1);
  v14 = sub_100020FE0(v8, v9, v15, 8, v4, v5, v8);
  v23 = v14;
  v13 = *(v10 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageRepository);
  _objc_retain(v13);

  v21 = sub_10004EE80;
  v22 = a2;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = 0;
  v19 = sub_10004EF74;
  v20 = &unk_100093E80;
  v12 = _Block_copy(&aBlock);

  [v13 performQuery:v14 limit:4 completionHandler:v12];
  _Block_release(v12);
  _objc_release(v13);
  _objc_release(v14);
}

uint64_t sub_10004E8EC()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 16) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

void sub_10004EAA8(uint64_t a1, uint64_t a2)
{
  v9 = *(type metadata accessor for Mailbox(0) - 8);
  v3 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v4 = (v2 + ((v3 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_10004D5F0(a1, a2, (v2 + v3), v5, v6);
}

void sub_10004EBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v14 = a2;
  v13 = a3;
  v15 = sub_100055C64;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v17 = 0;
  v21 = sub_10007D5E8();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v11 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v20 = &v11 - v11;
  v25 = sub_10007D608();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v12 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v24 = &v11 - v12;
  v37 = v3;
  v36 = v4;
  v35 = v5;
  sub_100009744();
  v27 = sub_10007DC08();

  swift_errorRetain();
  v6 = swift_allocObject();
  v7 = v14;
  v8 = v15;
  v9 = v6;
  v10 = v16;
  v9[2] = v13;
  v9[3] = v10;
  v9[4] = v7;
  v33 = v8;
  v34 = v9;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = 0;
  v31 = sub_10000AAE4;
  v32 = &unk_1000944D8;
  v26 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v18 + 8))(v20, v21);
  (*(v22 + 8))(v24, v25);
  _Block_release(v26);
  _objc_release(v27);
}

uint64_t sub_10004EE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion);

  v6(a2, a3);
}

uint64_t sub_10004EF74(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);

  _objc_retain(a2);
  if (a2)
  {
    sub_100015EF4();
    v4 = sub_10007D9A8();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_10004F0A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10004F198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v119 = a2;
  v118 = a1;
  v117 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v115 = 0;
  v136 = 0;
  v120 = sub_10007CEF8();
  v121 = *(v120 - 8);
  v122 = v121;
  v123 = *(v121 + 64);
  __chkstk_darwin(v118);
  v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = &v38 - v125;
  __chkstk_darwin(v4);
  v126 = &v38 - v125;
  v145 = v5;
  v144 = v6;
  v143 = v7;
  v142 = v3;
  v127 = (v3 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler);
  v129 = &v141;
  swift_beginAccess();
  v130 = *v127;
  v128 = v130;

  swift_endAccess();
  if (v130)
  {
    v114 = v128;
    v8 = v126;
    v84 = v128;
    v136 = v128;
    v9 = sub_10004DF40();
    (*(v122 + 16))(v8, v9, v120);

    v85 = 24;
    v99 = 7;
    v90 = swift_allocObject();
    *(v90 + 16) = v119;
    swift_unknownObjectRetain();
    v100 = swift_allocObject();
    *(v100 + 16) = v116;
    v113 = sub_10007CED8();
    v86 = v113;
    v112 = sub_10007DBC8();
    v87 = v112;
    v94 = 17;
    v103 = swift_allocObject();
    v88 = v103;
    *(v103 + 16) = 0;
    v104 = swift_allocObject();
    v89 = v104;
    v96 = 8;
    *(v104 + 16) = 8;
    v93 = 32;
    v98 = 32;
    v10 = swift_allocObject();
    v11 = v90;
    v91 = v10;
    *(v10 + 16) = sub_100053B5C;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v91;
    v105 = v12;
    v92 = v12;
    *(v12 + 16) = sub_10000A754;
    *(v12 + 24) = v13;
    v106 = swift_allocObject();
    v95 = v106;
    *(v106 + 16) = v93;
    v107 = swift_allocObject();
    v97 = v107;
    *(v107 + 16) = v96;
    v14 = swift_allocObject();
    v15 = v100;
    v101 = v14;
    *(v14 + 16) = sub_100053BA4;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v101;
    v110 = v16;
    v102 = v16;
    *(v16 + 16) = sub_100009484;
    *(v16 + 24) = v17;
    v111 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v108 = sub_10007DEC8();
    v109 = v18;

    v19 = v103;
    v20 = v109;
    *v109 = sub_100009410;
    v20[1] = v19;

    v21 = v104;
    v22 = v109;
    v109[2] = sub_100009410;
    v22[3] = v21;

    v23 = v105;
    v24 = v109;
    v109[4] = sub_10000A7A0;
    v24[5] = v23;

    v25 = v106;
    v26 = v109;
    v109[6] = sub_100009410;
    v26[7] = v25;

    v27 = v107;
    v28 = v109;
    v109[8] = sub_100009410;
    v28[9] = v27;

    v29 = v109;
    v30 = v110;
    v109[10] = sub_1000094D0;
    v29[11] = v30;
    sub_100006FD4();

    if (os_log_type_enabled(v113, v112))
    {
      v31 = v115;
      v77 = sub_10007DC88();
      v74 = v77;
      v75 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v78 = sub_10000742C(0, v75, v75);
      v76 = v78;
      v79 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v135 = v77;
      v134 = v78;
      v133 = v79;
      v80 = 2;
      v81 = &v135;
      sub_100007480(2, &v135);
      sub_100007480(v80, v81);
      v131 = sub_100009410;
      v132 = v88;
      sub_100007494(&v131, v81, &v134, &v133);
      v82 = v31;
      v83 = v31;
      if (v31)
      {
        v72 = 0;

        __break(1u);
      }

      else
      {
        v131 = sub_100009410;
        v132 = v89;
        sub_100007494(&v131, &v135, &v134, &v133);
        v70 = 0;
        v71 = 0;
        v131 = sub_10000A7A0;
        v132 = v92;
        sub_100007494(&v131, &v135, &v134, &v133);
        v68 = 0;
        v69 = 0;
        v131 = sub_100009410;
        v132 = v95;
        sub_100007494(&v131, &v135, &v134, &v133);
        v66 = 0;
        v67 = 0;
        v131 = sub_100009410;
        v132 = v97;
        sub_100007494(&v131, &v135, &v134, &v133);
        v64 = 0;
        v65 = 0;
        v131 = sub_1000094D0;
        v132 = v102;
        sub_100007494(&v131, &v135, &v134, &v133);
        v62 = 0;
        v63 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "Added %ld item IDs, before %s", v74, 0x16u);
        sub_1000074E0(v76, 0, v75);
        sub_1000074E0(v79, 1, &type metadata for Any + 8);
        sub_10007DC68();

        v73 = v62;
      }
    }

    else
    {
      v32 = v115;

      v73 = v32;
    }

    v60 = v73;

    (*(v122 + 8))(v126, v120);
    swift_unknownObjectRetain();
    v59 = 0;
    sub_1000501F4(v119, v116, 0);
    sub_100054F30();

    return v60;
  }

  else
  {
    v33 = v124;
    v34 = sub_10004DF40();
    (*(v122 + 16))(v33, v34, v120);
    v57 = sub_10007CED8();
    v54 = v57;
    v56 = sub_10007DBB8();
    v55 = v56;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v58 = sub_10007DEC8();
    if (os_log_type_enabled(v57, v56))
    {
      v35 = v115;
      v45 = sub_10007DC88();
      v41 = v45;
      v42 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v43 = 0;
      v46 = sub_10000742C(0, v42, v42);
      v44 = v46;
      v47 = sub_10000742C(v43, &type metadata for Any + 8, &type metadata for Any + 8);
      v140 = v45;
      v139 = v46;
      v138 = v47;
      v48 = 0;
      v49 = &v140;
      sub_100007480(0, &v140);
      sub_100007480(v48, v49);
      v137 = v58;
      v50 = &v38;
      __chkstk_darwin(&v38);
      v51 = &v38 - 6;
      *(&v38 - 4) = v36;
      *(&v38 - 3) = &v139;
      *(&v38 - 2) = &v138;
      v52 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v53 = v35;
      if (v35)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v54, v55, "Collection added item ids before itemID but there is no result handler", v41, 2u);
        v39 = 0;
        sub_1000074E0(v44, 0, v42);
        sub_1000074E0(v47, v39, &type metadata for Any + 8);
        sub_10007DC68();

        v40 = v53;
      }
    }

    else
    {

      v40 = v115;
    }

    v38 = v40;

    (*(v122 + 8))(v124, v120);
    return v38;
  }
}

uint64_t sub_1000501A0(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_1000094DC(&unk_10009BD00, "P]");
  return sub_10007D878();
}

BOOL sub_1000501F4(uint64_t a1, uint64_t a2, int a3)
{
  v29 = a2;
  v30 = a1;
  v45 = 0;
  v42 = 0;
  v31 = 0;
  v37 = 0;
  v32 = a3;
  v48 = a1;
  v46 = a2;
  v47 = a3 & 1;
  v33 = sub_10005394C(a2);
  if (!v33)
  {
    v26 = v31;
LABEL_12:
    v9 = v26;

    v44 = v30;
    v8[2] = &v43;
    swift_beginAccess();
    v8[1] = sub_1000094DC(&qword_10009BB78, &qword_10007FFE8);
    sub_100054F70();
    sub_10007D9E8();
    swift_endAccess();
    return v9;
  }

  v27 = v33;
  v3 = v31;
  v19 = v33;
  v42 = v33;
  v16 = (v28 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_itemIDs);
  v17 = v39;
  swift_beginAccess();
  v18 = *v16;

  swift_endAccess();
  v38 = v18;
  swift_unknownObjectRetain();
  v20 = v8;
  __chkstk_darwin(v8);
  v22 = v7;
  v7[2] = v4;
  v23 = sub_1000094DC(&qword_10009BB78, &qword_10007FFE8);
  v21 = v23;
  v24 = sub_100055024();
  sub_10007DB28();
  v25 = v3;
  swift_unknownObjectRelease();
  sub_10000A480(&v38);
  v15 = v40;
  if (v41)
  {
    swift_unknownObjectRelease();
    v26 = v25;
    goto LABEL_12;
  }

  v14 = v15;
  v12 = v15;
  v37 = v15;

  v36 = v30;
  result = sub_100053A5C(v29, v32 & 1);
  v6 = __OFADD__(v12, result);
  v13 = v12 + result;
  if (!v6)
  {
    v35 = v13;
    v10 = &v34;
    swift_beginAccess();
    sub_1000550AC();
    sub_10007DB88();
    swift_endAccess();
    swift_unknownObjectRelease();
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000506E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v119 = a2;
  v118 = a1;
  v117 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v115 = 0;
  v136 = 0;
  v120 = sub_10007CEF8();
  v121 = *(v120 - 8);
  v122 = v121;
  v123 = *(v121 + 64);
  __chkstk_darwin(v118);
  v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = &v38 - v125;
  __chkstk_darwin(v4);
  v126 = &v38 - v125;
  v145 = v5;
  v144 = v6;
  v143 = v7;
  v142 = v3;
  v127 = (v3 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler);
  v129 = &v141;
  swift_beginAccess();
  v130 = *v127;
  v128 = v130;

  swift_endAccess();
  if (v130)
  {
    v114 = v128;
    v8 = v126;
    v84 = v128;
    v136 = v128;
    v9 = sub_10004DF40();
    (*(v122 + 16))(v8, v9, v120);

    v85 = 24;
    v99 = 7;
    v90 = swift_allocObject();
    *(v90 + 16) = v119;
    swift_unknownObjectRetain();
    v100 = swift_allocObject();
    *(v100 + 16) = v116;
    v113 = sub_10007CED8();
    v86 = v113;
    v112 = sub_10007DBC8();
    v87 = v112;
    v94 = 17;
    v103 = swift_allocObject();
    v88 = v103;
    *(v103 + 16) = 0;
    v104 = swift_allocObject();
    v89 = v104;
    v96 = 8;
    *(v104 + 16) = 8;
    v93 = 32;
    v98 = 32;
    v10 = swift_allocObject();
    v11 = v90;
    v91 = v10;
    *(v10 + 16) = sub_100053B5C;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v91;
    v105 = v12;
    v92 = v12;
    *(v12 + 16) = sub_10000A754;
    *(v12 + 24) = v13;
    v106 = swift_allocObject();
    v95 = v106;
    *(v106 + 16) = v93;
    v107 = swift_allocObject();
    v97 = v107;
    *(v107 + 16) = v96;
    v14 = swift_allocObject();
    v15 = v100;
    v101 = v14;
    *(v14 + 16) = sub_100053BA4;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v101;
    v110 = v16;
    v102 = v16;
    *(v16 + 16) = sub_100009484;
    *(v16 + 24) = v17;
    v111 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v108 = sub_10007DEC8();
    v109 = v18;

    v19 = v103;
    v20 = v109;
    *v109 = sub_100009410;
    v20[1] = v19;

    v21 = v104;
    v22 = v109;
    v109[2] = sub_100009410;
    v22[3] = v21;

    v23 = v105;
    v24 = v109;
    v109[4] = sub_10000A7A0;
    v24[5] = v23;

    v25 = v106;
    v26 = v109;
    v109[6] = sub_100009410;
    v26[7] = v25;

    v27 = v107;
    v28 = v109;
    v109[8] = sub_100009410;
    v28[9] = v27;

    v29 = v109;
    v30 = v110;
    v109[10] = sub_1000094D0;
    v29[11] = v30;
    sub_100006FD4();

    if (os_log_type_enabled(v113, v112))
    {
      v31 = v115;
      v77 = sub_10007DC88();
      v74 = v77;
      v75 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v78 = sub_10000742C(0, v75, v75);
      v76 = v78;
      v79 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v135 = v77;
      v134 = v78;
      v133 = v79;
      v80 = 2;
      v81 = &v135;
      sub_100007480(2, &v135);
      sub_100007480(v80, v81);
      v131 = sub_100009410;
      v132 = v88;
      sub_100007494(&v131, v81, &v134, &v133);
      v82 = v31;
      v83 = v31;
      if (v31)
      {
        v72 = 0;

        __break(1u);
      }

      else
      {
        v131 = sub_100009410;
        v132 = v89;
        sub_100007494(&v131, &v135, &v134, &v133);
        v70 = 0;
        v71 = 0;
        v131 = sub_10000A7A0;
        v132 = v92;
        sub_100007494(&v131, &v135, &v134, &v133);
        v68 = 0;
        v69 = 0;
        v131 = sub_100009410;
        v132 = v95;
        sub_100007494(&v131, &v135, &v134, &v133);
        v66 = 0;
        v67 = 0;
        v131 = sub_100009410;
        v132 = v97;
        sub_100007494(&v131, &v135, &v134, &v133);
        v64 = 0;
        v65 = 0;
        v131 = sub_1000094D0;
        v132 = v102;
        sub_100007494(&v131, &v135, &v134, &v133);
        v62 = 0;
        v63 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "Added %ld item IDs, after %s", v74, 0x16u);
        sub_1000074E0(v76, 0, v75);
        sub_1000074E0(v79, 1, &type metadata for Any + 8);
        sub_10007DC68();

        v73 = v62;
      }
    }

    else
    {
      v32 = v115;

      v73 = v32;
    }

    v60 = v73;

    (*(v122 + 8))(v126, v120);
    swift_unknownObjectRetain();
    v59 = 1;
    sub_1000501F4(v119, v116, 1);
    sub_100054F30();

    return v60;
  }

  else
  {
    v33 = v124;
    v34 = sub_10004DF40();
    (*(v122 + 16))(v33, v34, v120);
    v57 = sub_10007CED8();
    v54 = v57;
    v56 = sub_10007DBB8();
    v55 = v56;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v58 = sub_10007DEC8();
    if (os_log_type_enabled(v57, v56))
    {
      v35 = v115;
      v45 = sub_10007DC88();
      v41 = v45;
      v42 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v43 = 0;
      v46 = sub_10000742C(0, v42, v42);
      v44 = v46;
      v47 = sub_10000742C(v43, &type metadata for Any + 8, &type metadata for Any + 8);
      v140 = v45;
      v139 = v46;
      v138 = v47;
      v48 = 0;
      v49 = &v140;
      sub_100007480(0, &v140);
      sub_100007480(v48, v49);
      v137 = v58;
      v50 = &v38;
      __chkstk_darwin(&v38);
      v51 = &v38 - 6;
      *(&v38 - 4) = v36;
      *(&v38 - 3) = &v139;
      *(&v38 - 2) = &v138;
      v52 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v53 = v35;
      if (v35)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v54, v55, "Collection added item ids after itemID but there is no result handler", v41, 2u);
        v39 = 0;
        sub_1000074E0(v44, 0, v42);
        sub_1000074E0(v47, v39, &type metadata for Any + 8);
        sub_10007DC68();

        v40 = v53;
      }
    }

    else
    {

      v40 = v115;
    }

    v38 = v40;

    (*(v122 + 8))(v124, v120);
    return v38;
  }
}

uint64_t sub_100051780(void *a1)
{
  v27 = a1;
  v37 = 0;
  v46 = 0;
  v45 = 0;
  v25 = 0;
  v34 = sub_10007CEF8();
  v28 = v34;
  v29 = *(v34 - 8);
  v33 = v29;
  v30 = v29;
  v31 = *(v29 + 64);
  __chkstk_darwin(v27);
  v1 = &v10 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  v46 = v2;
  v45 = v3;
  v4 = sub_10004DF40();
  (*(v33 + 16))(v1, v4, v34);
  v39 = sub_10007CED8();
  v35 = v39;
  v38 = sub_10007DBC8();
  v36 = v38;
  sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v40 = sub_10007DEC8();
  if (os_log_type_enabled(v39, v38))
  {
    v5 = v25;
    v16 = sub_10007DC88();
    v12 = v16;
    v13 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v14 = 0;
    v17 = sub_10000742C(0, v13, v13);
    v15 = v17;
    v18 = sub_10000742C(v14, &type metadata for Any + 8, &type metadata for Any + 8);
    v44 = v16;
    v43 = v17;
    v42 = v18;
    v19 = 0;
    v20 = &v44;
    sub_100007480(0, &v44);
    sub_100007480(v19, v20);
    v41 = v40;
    v21 = &v10;
    __chkstk_darwin(&v10);
    v22 = &v10 - 6;
    *(&v10 - 4) = v6;
    *(&v10 - 3) = &v43;
    *(&v10 - 2) = &v42;
    v23 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
    sub_1000097D8();
    sub_10007D948();
    v24 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v35, v36, "Did finish initial load", v12, 2u);
      v10 = 0;
      sub_1000074E0(v15, 0, v13);
      sub_1000074E0(v18, v10, &type metadata for Any + 8);
      sub_10007DC68();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  v7 = v26;

  (*(v30 + 8))(v32, v28);
  swift_getObjectType();
  v8 = v7;
  [v27 stopObserving:v7];
  swift_unknownObjectRelease();
  return sub_100051B8C();
}

uint64_t sub_100051B8C()
{
  v161 = 0;
  v194 = 0;
  v160 = 0;
  v187 = 0;
  v185 = 0;
  v162 = sub_10007CEF8();
  v163 = *(v162 - 8);
  v164 = v163;
  v165 = *(v163 + 64);
  __chkstk_darwin(v162 - 8);
  v167 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v49 - v167;
  __chkstk_darwin(&v49 - v167);
  v168 = &v49 - v167;
  v194 = v0;
  v169 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList);
  v171 = &v193;
  swift_beginAccess();
  v172 = *v169;
  v170 = v172;
  v1 = v172;
  swift_endAccess();
  if (!v172)
  {
LABEL_16:
    v6 = v166;
    v7 = sub_10004DF40();
    (*(v164 + 16))(v6, v7, v162);
    v8 = v159;
    v81 = 24;
    v99 = 7;
    v9 = swift_allocObject();
    v10 = v159;
    v86 = v9;
    *(v9 + 16) = v159;
    v11 = v10;
    v96 = swift_allocObject();
    *(v96 + 16) = v159;
    v113 = sub_10007CED8();
    v82 = v113;
    v112 = sub_10007DBB8();
    v83 = v112;
    v92 = 17;
    v103 = swift_allocObject();
    v84 = v103;
    v91 = 0;
    *(v103 + 16) = 0;
    v104 = swift_allocObject();
    v85 = v104;
    v94 = 4;
    *(v104 + 16) = 4;
    v98 = 32;
    v12 = swift_allocObject();
    v13 = v86;
    v87 = v12;
    *(v12 + 16) = sub_1000553AC;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v87;
    v88 = v14;
    *(v14 + 16) = sub_1000134D0;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v88;
    v89 = v16;
    *(v16 + 16) = sub_10001351C;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v89;
    v105 = v18;
    v90 = v18;
    *(v18 + 16) = sub_100013568;
    *(v18 + 24) = v19;
    v106 = swift_allocObject();
    v93 = v106;
    *(v106 + 16) = v91;
    v107 = swift_allocObject();
    v95 = v107;
    *(v107 + 16) = v94;
    v20 = swift_allocObject();
    v21 = v96;
    v97 = v20;
    *(v20 + 16) = sub_1000553FC;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v97;
    v100 = v22;
    *(v22 + 16) = sub_1000134D0;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v100;
    v101 = v24;
    *(v24 + 16) = sub_10001351C;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v101;
    v110 = v26;
    v102 = v26;
    *(v26 + 16) = sub_100013568;
    *(v26 + 24) = v27;
    v111 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v108 = sub_10007DEC8();
    v109 = v28;

    v29 = v103;
    v30 = v109;
    *v109 = sub_100009410;
    v30[1] = v29;

    v31 = v104;
    v32 = v109;
    v109[2] = sub_100009410;
    v32[3] = v31;

    v33 = v105;
    v34 = v109;
    v109[4] = sub_1000135B4;
    v34[5] = v33;

    v35 = v106;
    v36 = v109;
    v109[6] = sub_100009410;
    v36[7] = v35;

    v37 = v107;
    v38 = v109;
    v109[8] = sub_100009410;
    v38[9] = v37;

    v39 = v109;
    v40 = v110;
    v109[10] = sub_1000135B4;
    v39[11] = v40;
    sub_100006FD4();

    if (os_log_type_enabled(v113, v112))
    {
      v41 = v160;
      v75 = sub_10007DC88();
      v71 = v75;
      v72 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v73 = 0;
      v76 = sub_10000742C(0, v72, v72);
      v74 = v76;
      v77 = sub_10000742C(v73, &type metadata for Any + 8, &type metadata for Any + 8);
      v192 = v75;
      v191 = v76;
      v190 = v77;
      v78 = &v192;
      sub_100007480(0, &v192);
      sub_100007480(2, v78);
      v188 = sub_100009410;
      v189 = v84;
      sub_100007494(&v188, v78, &v191, &v190);
      v79 = v41;
      v80 = v41;
      if (v41)
      {
        v69 = 0;

        __break(1u);
      }

      else
      {
        v188 = sub_100009410;
        v189 = v85;
        sub_100007494(&v188, &v192, &v191, &v190);
        v67 = 0;
        v68 = 0;
        v188 = sub_1000135B4;
        v189 = v90;
        sub_100007494(&v188, &v192, &v191, &v190);
        v65 = 0;
        v66 = 0;
        v188 = sub_100009410;
        v189 = v93;
        sub_100007494(&v188, &v192, &v191, &v190);
        v63 = 0;
        v64 = 0;
        v188 = sub_100009410;
        v189 = v95;
        sub_100007494(&v188, &v192, &v191, &v190);
        v61 = 0;
        v62 = 0;
        v188 = sub_1000135B4;
        v189 = v102;
        sub_100007494(&v188, &v192, &v191, &v190);
        v59 = 0;
        v60 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Cannot fetch display messages. Valid messagesList: %{BOOL}d, resultHandler: %{BOOL}d", v71, 0xEu);
        v58 = 0;
        sub_1000074E0(v74, 0, v72);
        sub_1000074E0(v77, v58, &type metadata for Any + 8);
        sub_10007DC68();

        v70 = v59;
      }
    }

    else
    {
      v42 = v160;

      v70 = v42;
    }

    v55 = v70;

    (*(v164 + 8))(v166, v162);
    v57 = &v159[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler];
    v56 = &v159[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler];
    swift_beginAccess();
    if (*v57)
    {
      v50 = *v56;

      swift_endAccess();
      v51 = *(v50 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion);
      v54 = *(v50 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion + 8);

      sub_100013D50();
      v52 = 0;
      v43 = swift_allocError();
      v44 = v51;
      v45 = v43;
      v46 = v52;
      v53 = v45;
      *v47 = 2;
      v44(v46, v45);
    }

    else
    {
      swift_endAccess();
    }

    return v55;
  }

  v158 = v170;
  v153 = v170;
  v187 = v170;
  v154 = &v159[OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler];
  v156 = &v186;
  swift_beginAccess();
  v157 = *v154;
  v155 = v157;

  swift_endAccess();
  if (!v157)
  {

    goto LABEL_16;
  }

  v152 = v155;
  v148 = v155;
  v185 = v155;
  v150 = sub_10005326C();
  v184 = v150;
  v149 = sub_1000094DC(&qword_10009BB78, &qword_10007FFE8);
  sub_100055024();
  v151 = sub_10007DB58();

  if (v151)
  {
    v2 = v168;
    v3 = sub_10004DF40();
    (*(v164 + 16))(v2, v3, v162);
    v146 = sub_10007CED8();
    v143 = v146;
    v145 = sub_10007DBC8();
    v144 = v145;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v147 = sub_10007DEC8();
    if (os_log_type_enabled(v146, v145))
    {
      v4 = v160;
      v134 = sub_10007DC88();
      v130 = v134;
      v131 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v132 = 0;
      v135 = sub_10000742C(0, v131, v131);
      v133 = v135;
      v136 = sub_10000742C(v132, &type metadata for Any + 8, &type metadata for Any + 8);
      v176 = v134;
      v175 = v135;
      v174 = v136;
      v137 = 0;
      v138 = &v176;
      sub_100007480(0, &v176);
      sub_100007480(v137, v138);
      v173 = v147;
      v139 = &v49;
      __chkstk_darwin(&v49);
      v140 = &v49 - 6;
      *(&v49 - 4) = v5;
      *(&v49 - 3) = &v175;
      *(&v49 - 2) = &v174;
      v141 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v142 = v4;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v143, v144, "Return immediately since itemIDs to request are empty", v130, 2u);
        v128 = 0;
        sub_1000074E0(v133, 0, v131);
        sub_1000074E0(v136, v128, &type metadata for Any + 8);
        sub_10007DC68();

        v129 = v142;
      }
    }

    else
    {

      v129 = v160;
    }

    v126 = v129;

    (*(v164 + 8))(v168, v162);
    v122 = *(v148 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion);
    v125 = *(v148 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion + 8);

    v123 = 0;
    v121 = sub_100015EF4();
    v124 = sub_10007DEC8();
    v122(v124, v123);

    v127 = v126;
  }

  else
  {
    v116 = sub_10005326C();
    sub_1000094DC(&qword_10009BB30, &qword_10007F290);
    isa = sub_10007D998().super.isa;

    v117 = *(v148 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion);
    v118 = *(v148 + OBJC_IVAR____TtCC19MailWidgetExtension18MessagesDataSource13ResultHandler_completion + 8);

    v182 = v117;
    v183 = v118;
    aBlock = _NSConcreteStackBlock;
    v178 = 1107296256;
    v179 = 0;
    v180 = sub_10004EF74;
    v181 = &unk_1000943F8;
    v119 = _Block_copy(&aBlock);

    [v153 displayMessagesFromThreadsWithItemIDs:isa completion:v119];
    _Block_release(v119);

    v127 = v160;
  }

  v114 = v127;

  return v114;
}

BOOL sub_100053120(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_messageList);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  v4 = v3;
  sub_100012FD8(&v4);
  return v3 != 0;
}

BOOL sub_1000531C8(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC19MailWidgetExtension18MessagesDataSource_resultHandler);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  sub_10001DFF8();
  return v3 == 0;
}

uint64_t sub_10005326C()
{
  swift_beginAccess();

  swift_endAccess();
  sub_1000094DC(&qword_10009BB78, &qword_10007FFE8);
  sub_100055024();
  v2 = sub_10007DB58();

  if (v2)
  {
    sub_1000094DC(&qword_10009BB30, &qword_10007F290);
    return sub_10007DEC8();
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();
    sub_1000094DC(&qword_10009BB30, &qword_10007F290);
    sub_10007D9D8();

    sub_10007DF08();
    if (v3 < 0)
    {
      sub_10007DDA8();
      __break(1u);
    }

    swift_beginAccess();
    sub_10007DA48();
    swift_endAccess();
    sub_1000094DC(&qword_10009BBA8, qword_10007FFF0);
    sub_100055718();
    return sub_10007DA38();
  }
}

uint64_t sub_1000539E0(id *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v5 = [v3 isEqual:a2];
  swift_unknownObjectRelease();
  return v5;
}

id sub_100053AAC(void *a1, void *a2)
{
  v6 = [v2 initWithQuery:a1 repository:?];
  _objc_release(a2);
  _objc_release(a1);
  return v6;
}

uint64_t sub_100053BE4(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_10007DAD8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_10007DDC8();
  __break(1u);
LABEL_12:
  result = sub_10007DDA8();
  __break(1u);
  return result;
}

uint64_t sub_100053F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_100055BCC;
        v16 = &v37;
        sub_100053BE4(sub_100055BE8, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_10007DDA8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_10007DDA8();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_10007DDA8();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_10007DDA8();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_10007DDA8();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_10007DDA8();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_10007DDA8();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_10007DDA8();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_10007DDA8();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_10007DDA8();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_10007DDA8();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_10007DDA8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_10007DDC8();
    __break(1u);
  }

  result = sub_10007DDA8();
  __break(1u);
  return result;
}

uint64_t sub_100054740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_10007DDA8();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_10007DDA8();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_10007DDA8();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_10007DDA8();
                __break(1u);
              }

              sub_10007DDA8();
              __break(1u);
            }

            sub_10007DDA8();
            __break(1u);
          }

          sub_10007DDA8();
          __break(1u);
        }

        sub_10007DDA8();
        __break(1u);
      }

      sub_10007DDA8();
      __break(1u);
    }

    sub_10007DDA8();
    __break(1u);
  }

  result = sub_10007DDA8();
  __break(1u);
  return result;
}

uint64_t sub_100054C54(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_10007D5E8();
      v1 = sub_10007D9C8();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_10007D5E8();
    return v2;
  }

  return result;
}

uint64_t sub_100054D9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100054F70()
{
  v2 = qword_10009BB80;
  if (!qword_10009BB80)
  {
    sub_100009860(&qword_10009BB78, &qword_10007FFE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100055024()
{
  v2 = qword_10009BB88;
  if (!qword_10009BB88)
  {
    sub_100009860(&qword_10009BB78, &qword_10007FFE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000550AC()
{
  v2 = qword_10009BB90;
  if (!qword_10009BB90)
  {
    sub_100009860(&qword_10009BB78, &qword_10007FFE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BB90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000556B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100055718()
{
  v2 = qword_10009BBB0;
  if (!qword_10009BBB0)
  {
    sub_100009860(&qword_10009BBA8, qword_10007FFF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BBB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000557BC(uint64_t a1)
{
  updated = type metadata accessor for Mailbox(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1000558BC(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1000558D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000559F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100055C14()
{

  return swift_deallocObject();
}

uint64_t sub_100055C74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100055CD8()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 32) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100055EA8()
{
  v8 = *(type metadata accessor for Mailbox(0) - 8);
  v1 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((v1 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_10004D9F0(v2, v3, v0 + v1, v5, v6);
}

uint64_t sub_100055F58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100055FE4()
{
  v2 = qword_10009BD30;
  if (!qword_10009BD30)
  {
    sub_100009860(&qword_10009ACF0, qword_10007F2A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD30);
    return WitnessTable;
  }

  return v2;
}

void sub_10005606C()
{
  v3 = 0;
  v2 = sub_10005611C();
  sub_100056180();
  sub_1000354E8(&v2, &unk_100094580, &v3);
  sub_100012FD8(&v2);
  v0 = v3;
  _objc_retain(v3);
  v1 = v0;
  sub_10007D178();
  sub_100012FD8(&v1);
  sub_100012FD8(&v3);
}

id sub_10005611C()
{
  v2 = 0;
  sub_1000597A0();
  v1 = sub_10000BA08();
  _objc_retain(v1);
  v2 = v1;
  sub_100012FD8(&v2);
  return v1;
}

unint64_t sub_100056180()
{
  v2 = qword_10009BD40;
  if (!qword_10009BD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100056264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v20 = a1;
  v26 = 0;
  v25 = sub_100056A6C;
  v42 = "Title of the Mail widget displayed in the widget picker";
  v45 = &opaque type descriptor for <<opaque return type of WidgetConfiguration.supportedFamilies(_:)>>;
  v53 = "Description of the Mail widget, displayed in the widget picker";
  v59 = &opaque type descriptor for <<opaque return type of WidgetConfiguration.configurationDisplayName(_:)>>;
  v69 = &opaque type descriptor for <<opaque return type of WidgetConfiguration.description(_:)>>;
  v108 = 0;
  v43 = sub_1000094DC(&qword_10009BD48, &qword_1000800D0);
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v16 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v41 = &v15 - v16;
  v57 = sub_1000094DC(&qword_10009BD50, &qword_1000800D8);
  v50 = *(v57 - 8);
  v51 = v57 - 8;
  v17 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v52 = &v15 - v17;
  v67 = sub_1000094DC(&qword_10009BD58, &qword_1000800E0);
  v64 = *(v67 - 8);
  v65 = v67 - 8;
  v18 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v66 = &v15 - v18;
  v76 = sub_1000094DC(&qword_10009BD60, &qword_1000800E8);
  v73 = *(v76 - 8);
  v74 = v76 - 8;
  v19 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v75 = &v15 - v19;
  v108 = v2;
  v30 = MFWidgetKindMessages;
  _objc_retain(MFWidgetKindMessages);
  v29 = sub_10007D868();
  v23 = v3;
  v56 = 0;
  v27 = type metadata accessor for MFGetMailboxIntent();
  v21 = type metadata accessor for DaemonDataSource();
  _objc_retain(v20);
  v4 = sub_10000B708(v20);
  v106[3] = v21;
  v106[4] = &off_100091E90;
  v106[0] = v4;
  v24 = v107;
  sub_10002C72C(v106, v107);
  v28 = type metadata accessor for MailWidgetView(v56);
  v22 = sub_100056CDC();
  sub_100056D5C();
  sub_10007D6E8();
  _objc_release(v30);
  v37 = sub_10007D6D8();
  v36 = sub_10007DEC8();
  v33 = v5;
  v31 = *(v37 - 8);
  v32 = v37 - 8;
  v35 = *(v31 + 104);
  v34 = v31 + 104;
  v35();
  v6 = *(v31 + 72);
  v70 = 1;
  (v35)(v33 + v6, enum case for WidgetFamily.systemLarge(_:), v37);
  sub_100006FD4();
  v38 = v7;
  v44 = sub_100056DD4();
  sub_10007D198();

  (*(v39 + 8))(v41, v43);
  v72 = 1;
  sub_10007D898("DISPLAY_NAME", 0xCuLL, 1);
  sub_10007D108();
  v103 = v42;
  v104 = 55;
  v54 = 2;
  v105 = 2;
  v55 = 0;
  v99 = sub_10007D2B8();
  v100 = v8;
  v101 = v9;
  v102 = v10;
  v46 = v99;
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v97 = v43;
  v98 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v46;
  v94 = v47;
  v95 = v48 & 1 & v72;
  v96 = v49;
  sub_10007D1A8();
  sub_10003CCBC(v46, v47, v48 & 1);

  (*(v50 + 8))(v52, v57);
  sub_10007D898("WIDGET_DESCRIPTION", 0x12uLL, v72 & 1);
  sub_10007D108();
  v89 = v53;
  v90 = 62;
  v91 = v54;
  v92 = v55 & 1 & v72;
  v85 = sub_10007D2B8();
  v86 = v11;
  v87 = v12;
  v88 = v13;
  v60 = v85;
  v61 = v11;
  v62 = v12;
  v63 = v13;
  v83 = v57;
  v84 = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v79 = v60;
  v80 = v61;
  v81 = v62 & 1 & v72;
  v82 = v63;
  sub_10007D188();
  sub_10003CCBC(v60, v61, v62 & 1);

  (*(v64 + 8))(v66, v67);
  v77 = v67;
  v78 = v68;
  swift_getOpaqueTypeConformance2();
  sub_10007D1B8();
  return (*(v73 + 8))(v75, v76);
}

uint64_t sub_100056A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v13 = a1;
  v24 = 0;
  v23 = 0;
  v2 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v16 = &v9 - v10;
  v11 = 0;
  v12 = (*(*(type metadata accessor for Snapshot(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v17 = &v9 - v12;
  v19 = type metadata accessor for MailWidgetView(v3);
  v14 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v21 = &v9 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v22 = (&v9 - v15);
  v24 = &v9 - v15;
  v23 = v6;
  sub_10001E2CC(v6, v7);
  sub_100056E5C();
  sub_100056E90(v16, v17, v21);
  v20 = sub_100056CDC();
  sub_1000354E8(v21, v19, v22);
  sub_100059190(v21);
  sub_10005936C(v22, v21);
  sub_1000354E8(v21, v19, v18);
  sub_100059190(v21);
  return sub_100059190(v22);
}

uint64_t type metadata accessor for MailWidgetView(uint64_t a1)
{
  v2 = qword_10009BE10;
  if (!qword_10009BE10)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_100056CDC()
{
  v2 = qword_10009BD68;
  if (!qword_10009BD68)
  {
    type metadata accessor for MailWidgetView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100056D5C()
{
  v2 = qword_10009BD70;
  if (!qword_10009BD70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100056DD4()
{
  v2 = qword_10009BD78;
  if (!qword_10009BD78)
  {
    sub_100009860(&qword_10009BD48, &qword_1000800D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD78);
    return WitnessTable;
  }

  return v2;
}

double sub_100056E90@<D0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1000596CC(a1, a3);
  v3 = type metadata accessor for MailWidgetView(0);
  *&result = sub_10001EB30(a2, a3 + *(v3 + 20)).n128_u64[0];
  return result;
}

id sub_100056EE0@<X0>(void *a1@<X8>)
{
  result = sub_10005611C();
  *a1 = result;
  return result;
}

uint64_t sub_100056F28@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_10003FB70(v1, (&v3 - v4));
  sub_10007CF08();
  return sub_10003FC44(v7);
}

uint64_t sub_100057008(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_1000094DC(&qword_10009B718, &qword_100080120) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_10003FB70(v1, (v3 - v3[0]));
  sub_10003FDC8(v4, v3[1]);
  return sub_10003FC44(v5);
}

uint64_t sub_1000570E4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v13 = 0;
  v11 = sub_100057D20;
  v12 = sub_100056234;
  v24 = &opaque type descriptor for <<opaque return type of View.containerBackground<A>(for:alignment:content:)>>;
  v41 = 0;
  v40 = 0;
  v18 = sub_10007D1F8();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v4 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v17 = &v3 - v4;
  v20 = sub_1000094DC(&qword_10009BD80, &qword_100080128);
  v5 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v19 = (&v3 - v5);
  v31 = sub_1000094DC(&qword_10009BD88, &qword_100080130);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v7 = *(v25 + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v29 = &v3 - v6;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v6);
  v30 = &v3 - v8;
  v41 = &v3 - v8;
  v40 = v1;
  v9 = &v34;
  v35 = v1;
  v10 = sub_1000094DC(&qword_10009BD90, &qword_100080138);
  sub_100057D28();
  sub_10007D4B8();
  sub_10007D1E8();
  v22 = sub_100057E4C();
  v21 = &type metadata for EmptyView;
  v23 = &protocol witness table for EmptyView;
  v14 = sub_100057B1C(v20, &type metadata for EmptyView);
  sub_10007D3A8();
  (*(v15 + 8))(v17, v18);
  sub_100057EE4(v19);
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_1000354E8(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

void *sub_100057524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  v24 = "Fatal error";
  v25 = "MailWidgetExtension/MessagesWidget.swift";
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v50 = 0;
  v28 = 0;
  v26 = (*(*(type metadata accessor for Snapshot(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v27 = (v15 - v26);
  v29 = type metadata accessor for MessagesContentView(v3);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v31 = (v15 - v30);
  v32 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v33 = (v15 - v32);
  v34 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v35 = (v15 - v34);
  v55 = v15 - v34;
  v48 = sub_10007D6D8();
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v36 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v37 = v15 - v36;
  v38 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - v36);
  v47 = v15 - v38;
  v39 = sub_1000094DC(&qword_10009BD90, &qword_100080138);
  v41 = *(*(v39 - 8) + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v42 = (v15 - v40);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - v40);
  v44 = (v15 - v43);
  v54 = v15 - v43;
  v53 = a1;
  sub_100056F28(v9);
  v49 = (*(v45 + 88))(v47, v48);
  if (v49 == enum case for WidgetFamily.systemMedium(_:) || v49 == enum case for WidgetFamily.systemLarge(_:))
  {
    v10 = type metadata accessor for MailWidgetView(0);
    sub_10001E2CC((v23 + *(v10 + 20)), v27);
    v11 = sub_10004C468();
    sub_10004C470(v27, v33, v11);
    v21 = sub_100057DCC();
    sub_1000354E8(v33, v29, v35);
    sub_1000587D8(v33);
    v50 = v33;
    sub_100058940(v35, v31);
    sub_1000354E8(v31, v29, v33);
    sub_1000587D8(v31);
    sub_100058940(v33, v31);
    sub_1000364F8(v31, v29, &type metadata for Never, v21, &protocol witness table for Never, v42);
    sub_1000587D8(v31);
    sub_100058C10(v42, v44);
    sub_1000587D8(v33);
    sub_1000587D8(v35);
    sub_100058E4C(v44, v42);
    sub_100057D28();
    sub_1000354E8(v42, v39, v22);
    sub_100057EE4(v42);
    return sub_100057EE4(v44);
  }

  else
  {
    v15[0] = 32;
    v12 = sub_10007DEB8();
    v18 = &v51;
    v51 = v12;
    v52 = v13;
    v16 = 1;
    v56._countAndFlagsBits = sub_10007D898("Widget family is not supported: ", v15[0], 1);
    v15[1] = v56._object;
    sub_10007DEA8(v56);

    sub_100056F28(v37);
    sub_10002CB64();
    sub_10007DE88();
    (*(v45 + 8))(v37, v48);
    v57._countAndFlagsBits = sub_10007D898("", 0, v16 & 1);
    object = v57._object;
    sub_10007DEA8(v57);

    v20 = v51;
    v19 = v52;

    sub_1000099C8(v18);
    sub_10007D888();
    result = sub_10007DDB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_100057B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_10007D6D8();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_10007D0E8();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_10007D0B8();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

unint64_t sub_100057D28()
{
  v2 = qword_10009BD98;
  if (!qword_10009BD98)
  {
    sub_100009860(&qword_10009BD90, &qword_100080138);
    sub_100057DCC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100057DCC()
{
  v2 = qword_10009BDA0;
  if (!qword_10009BDA0)
  {
    type metadata accessor for MessagesContentView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BDA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100057E4C()
{
  v2 = qword_10009BDA8;
  if (!qword_10009BDA8)
  {
    sub_100009860(&qword_10009BD80, &qword_100080128);
    sub_100057D28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BDA8);
    return WitnessTable;
  }

  return v2;
}

void *sub_100057EE4(void *a1)
{
  sub_1000094DC(&qword_10009BDB0, &unk_100080140);
  if (!swift_getEnumCaseMultiPayload())
  {

    if (a1[4] > 5uLL)
    {
    }

    v2 = a1 + *(type metadata accessor for Mailbox(0) + 28);
    v3 = sub_10007CD98();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }

    if (*(a1 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
    {
    }

    type metadata accessor for MessagesContentView(0);
  }

  return a1;
}

uint64_t sub_1000580CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = type metadata accessor for Snapshot(0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_100058254(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = type metadata accessor for Snapshot(0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000583B4(uint64_t a1)
{
  v4 = sub_100048784(319);
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for Snapshot(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1000584E0()
{
  sub_100009860(&qword_10009BD60, &qword_1000800E8);
  sub_100009860(&qword_10009BD58, &qword_1000800E0);
  sub_100009860(&qword_10009BD50, &qword_1000800D8);
  sub_100009860(&qword_10009BD48, &qword_1000800D0);
  sub_100056DD4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100058638()
{
  sub_100009860(&qword_10009BD80, &qword_100080128);
  sub_100057E4C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10005875C()
{
  v2 = qword_10009BE48;
  if (!qword_10009BE48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BE48);
    return WitnessTable;
  }

  return v2;
}

void *sub_1000587D8(void *a1)
{

  if (a1[4] > 5uLL)
  {
  }

  v2 = a1 + *(type metadata accessor for Mailbox(0) + 28);
  v3 = sub_10007CD98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v2, 1))
  {
    (*(v4 + 8))(v2, v3);
  }

  if (*(a1 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  type metadata accessor for MessagesContentView(0);

  return a1;
}

void *sub_100058940(void *a1, void *a2)
{
  *a2 = *a1;
  v18 = a1[1];

  a2[1] = v18;
  v21 = a1[2];

  a2[2] = v21;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v17 = a1[4];

    a2[4] = v17;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox(0);
  __dst = a2 + *(v2 + 28);
  __src = a1 + *(v2 + 28);
  v15 = sub_10007CD98();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(__src, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(__dst, __src, v15);
    (*(v16 + 56))(__dst, 0, 1, v15);
  }

  v4 = type metadata accessor for Snapshot(0);
  v11 = a2 + *(v4 + 20);
  v12 = a1 + *(v4 + 20);
  if (*v12 < 2uLL)
  {
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
  }

  else
  {
    v10 = *v12;

    *v11 = v10;
    *(v11 + 1) = *(v12 + 1);
    v11[16] = v12[16];
    v11[17] = v12[17];
  }

  v5 = type metadata accessor for MessagesContentView(0);
  v8 = (a2 + *(v5 + 20));
  v6 = (a1 + *(v5 + 20));
  *v8 = *v6;
  v9 = v6[1];

  result = a2;
  v8[1] = v9;
  return result;
}

_OWORD *sub_100058C10(_OWORD *a1, _OWORD *a2)
{
  v15 = sub_1000094DC(&qword_10009BDB0, &unk_100080140);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v15 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 2) = *(a1 + 2);
    *(a2 + 24) = *(a1 + 24);
    v2 = type metadata accessor for Mailbox(0);
    __dst = a2 + *(v2 + 28);
    __src = a1 + *(v2 + 28);
    v11 = sub_10007CD98();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(__src, 1))
    {
      v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v12 + 32))(__dst, __src, v11);
      (*(v12 + 56))(__dst, 0, 1, v11);
    }

    v4 = type metadata accessor for Snapshot(0);
    v5 = a2 + *(v4 + 20);
    v6 = a1 + *(v4 + 20);
    *v5 = *v6;
    *(v5 + 8) = *(v6 + 8);
    v7 = type metadata accessor for MessagesContentView(0);
    *(a2 + *(v7 + 20)) = *(a1 + *(v7 + 20));
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_100058E4C(void *a1, void *a2)
{
  v22 = sub_1000094DC(&qword_10009BDB0, &unk_100080140);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v22 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v18 = a1[1];

    a2[1] = v18;
    v19 = a1[2];

    a2[2] = v19;
    if (a1[4] > 5uLL)
    {
      a2[3] = a1[3];
      v17 = a1[4];

      a2[4] = v17;
    }

    else
    {
      *(a2 + 3) = *(a1 + 3);
    }

    v2 = type metadata accessor for Mailbox(0);
    __dst = a2 + *(v2 + 28);
    __src = a1 + *(v2 + 28);
    v15 = sub_10007CD98();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(__src, 1))
    {
      v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(__dst, __src, v15);
      (*(v16 + 56))(__dst, 0, 1, v15);
    }

    v4 = type metadata accessor for Snapshot(0);
    v11 = a2 + *(v4 + 20);
    v12 = a1 + *(v4 + 20);
    if (*v12 < 2uLL)
    {
      *v11 = *v12;
      *(v11 + 8) = *(v12 + 8);
    }

    else
    {
      v10 = *v12;

      *v11 = v10;
      *(v11 + 1) = *(v12 + 1);
      v11[16] = v12[16];
      v11[17] = v12[17];
    }

    v5 = type metadata accessor for MessagesContentView(0);
    v8 = (a2 + *(v5 + 20));
    v6 = (a1 + *(v5 + 20));
    *v8 = *v6;
    v9 = v6[1];

    v8[1] = v9;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_100059190(uint64_t a1)
{
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6D8();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v6 = a1 + *(type metadata accessor for MailWidgetView(0) + 20);

  if (*(v6 + 32) > 5uLL)
  {
  }

  v3 = v6 + *(type metadata accessor for Mailbox(0) + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  if (*(v6 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  return a1;
}

void *sub_10005936C(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6D8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v20 = *a1;

    *a2 = v20;
  }

  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for MailWidgetView(0);
  v17 = (a2 + *(v3 + 20));
  v19 = (a1 + *(v3 + 20));
  *v17 = *v19;
  v16 = v19[1];

  v17[1] = v16;
  v18 = v19[2];

  v17[2] = v18;
  if (v19[4] > 5uLL)
  {
    v17[3] = v19[3];
    v15 = v19[4];

    v17[4] = v15;
  }

  else
  {
    *(v17 + 3) = *(v19 + 3);
  }

  v4 = type metadata accessor for Mailbox(0);
  __dst = v17 + *(v4 + 28);
  __src = v19 + *(v4 + 28);
  v13 = sub_10007CD98();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(__src, 1))
  {
    v5 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  v6 = type metadata accessor for Snapshot(0);
  v9 = v17 + *(v6 + 20);
  v10 = v19 + *(v6 + 20);
  if (*v10 < 2uLL)
  {
    *v9 = *v10;
    *(v9 + 8) = *(v10 + 8);
  }

  else
  {
    v8 = *v10;

    *v9 = v8;
    *(v9 + 1) = *(v10 + 1);
    v9[16] = v10[16];
    v9[17] = v10[17];
  }

  return a2;
}

void *sub_1000596CC(const void *a1, void *a2)
{
  v6 = sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6D8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1000597A0()
{
  v2 = qword_10009BE50;
  if (!qword_10009BE50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009BE50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100059884@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v45 = a5;
  v30 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v39 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  v35 = *(v39 - 8);
  v36 = v39 - 8;
  v31 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v38 = &v30 - v31;
  sub_10003C0C4(v5, v6);
  v44 = type metadata accessor for MessageView(0);
  sub_100030DFC(v32, (v45 + v44[5]));
  v7 = v34;
  v8 = v38;
  v9 = v45;
  v10 = v44;
  *(v45 + v44[6]) = v33;
  *(v9 + v10[7]) = v7;
  v37 = v10[8];
  sub_100059C70(v8, 16.0);
  (*(v35 + 32))(v45 + v37, v38, v39);
  v40 = v44[9];
  v42 = 0.0;
  v11 = sub_10003FEB4(0.0);
  v13 = v12;
  v14 = v42;
  v15 = v11;
  v16 = v44;
  v17 = (v45 + v40);
  *v17 = v13;
  v17[1] = v15;
  v41 = v16[10];
  v18 = sub_10003FEB4(v14);
  v20 = v19;
  v21 = v42;
  v22 = v18;
  v23 = v44;
  v24 = (v45 + v41);
  *v24 = v20;
  v24[1] = v22;
  v43 = v23[11];
  v25 = sub_10003FEB4(v21);
  v26 = v44;
  v27 = (v45 + v43);
  *v27 = v28;
  v27[1] = v25;
  v46 = v26[12];
  swift_getKeyPath();
  return sub_10007CF28();
}

uint64_t sub_100059A84@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_100033D98(v1, (&v3 - v4));
  sub_10007CF08();
  return sub_100033E6C(v7);
}

uint64_t sub_100059B44(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_1000094DC(&qword_10009B470, &qword_10007F880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_100033D98(v1, (v3 - v3[0]));
  sub_100033FCC(v4, v3[1]);
  return sub_100033E6C(v5);
}

uint64_t sub_100059C70@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = a1;
  v4 = a2;
  v11 = 0.0;
  v2 = sub_10007D278();
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v5;
  v11 = __chkstk_darwin(v2);
  v9 = &v10;
  v10 = v11;
  (*(v6 + 104))(&v4 - v5);
  sub_100063274();
  return sub_10007CF38();
}

double sub_100059D58()
{
  v7 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v0 = v3 - v3[0];
  v6 = v3 - v3[0];
  v1 = type metadata accessor for MessageView(0);
  (*(v4 + 16))(v0, v3[1] + *(v1 + 32), v7);
  sub_10007CF48();
  v8 = v9;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t sub_100059E78@<X0>(uint64_t a1@<X8>)
{
  v5 = *(type metadata accessor for MessageView(0) + 32);
  v3 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  return (*(*(v3 - 8) + 16))(a1, v2 + v5);
}

uint64_t sub_100059EF4(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v6 = &v5 - v5;
  (*(v7 + 16))(v2);
  v3 = type metadata accessor for MessageView(0);
  (*(v7 + 40))(v1 + *(v3 + 32), v6, v9);
  return (*(v7 + 8))(v10, v9);
}

double sub_10005A01C(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();

  return v2;
}

uint64_t sub_10005A0A8(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D508();
  sub_100040030();
}

double sub_10005A154(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D518();

  return v2;
}

double sub_10005A1F8(double a1)
{
  v3 = *(v1 + *(type metadata accessor for MessageView(0) + 36));

  return v3;
}

uint64_t sub_10005A240(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for MessageView(0) + 36);
  *v3 = a2;
  *(v3 + 8) = a1;
}

double sub_10005A298(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();

  return v2;
}

uint64_t sub_10005A324(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D508();
  sub_100040030();
}

double sub_10005A3D0(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D518();

  return v2;
}

double sub_10005A474(double a1)
{
  v3 = *(v1 + *(type metadata accessor for MessageView(0) + 40));

  return v3;
}

uint64_t sub_10005A4BC(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for MessageView(0) + 40);
  *v3 = a2;
  *(v3 + 8) = a1;
}

double sub_10005A514(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();

  return v2;
}

uint64_t sub_10005A5A0(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D508();
  sub_100040030();
}

double sub_10005A64C(double a1)
{
  type metadata accessor for MessageView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D518();

  return v2;
}

double sub_10005A6F0(double a1)
{
  v3 = *(v1 + *(type metadata accessor for MessageView(0) + 44));

  return v3;
}

uint64_t sub_10005A738(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for MessageView(0) + 44);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_10005A790()
{
  v12 = 0;
  v6 = 0;
  v9 = type metadata accessor for Message(0);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = &v3 - v7;
  v12 = v0;
  v8 = type metadata accessor for MessageView(v1);
  sub_1000143D8((v0 + *(v8 + 20)), v10);
  v11 = v10[*(v9 + 36)];
  sub_100014700(v10);
  if (v11)
  {
    v4 = *(v5 + *(v8 + 28)) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

double sub_10005A890()
{
  v30 = 0;
  v7 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v11 = &v5 - v10;
  v19 = sub_1000094DC(&qword_10009BE60, &unk_100080348);
  v12 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v0 = (&v5 - v12);
  v20 = &v5 - v12;
  v13 = 0;
  v25 = sub_10007D118();
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v15 = *(v21 + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v23 = &v5 - v14;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v24 = &v5 - v16;
  v30 = v2;
  v18 = type metadata accessor for MessageView(v3);
  sub_1000632EC((v17 + *(v18 + 48)), v0);
  sub_10007CF08();
  sub_1000633C0(v20);
  (*(v21 + 104))(v23, enum case for ContentSizeCategory.extraExtraLarge(_:), v25);
  v28 = sub_10005AC80(v24, v23);
  v27 = *(v21 + 8);
  v26 = v21 + 8;
  v27(v23, v25);
  v27(v24, v25);
  if (v28)
  {
    return 20.0;
  }

  (*(v8 + 16))(v11, v17 + *(v18 + 32), v7);
  sub_10007CF48();
  v5 = v29;
  (*(v8 + 8))(v11, v7);
  return v5;
}

uint64_t sub_10005ABC0@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1000094DC(&qword_10009BE60, &unk_100080348);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for MessageView(0);
  sub_1000632EC((v6 + *(v2 + 48)), v1);
  sub_10007CF08();
  return sub_1000633C0(v9);
}

BOOL sub_10005AC80(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v19 = sub_10007D118();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v12 = *(v17 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v11;
  v14 = v11;
  v2 = __chkstk_darwin(&v4 - v11);
  v20 = &v4 - v14;
  v15 = *(v17 + 16);
  v16 = v17 + 16;
  v15(v2);
  v21 = *(v17 + 88);
  v22 = v17 + 88;
  v23 = v21(v20, v19);
  if (v23 == enum case for ContentSizeCategory.extraSmall(_:))
  {
    v8 = 0;
  }

  else if (v23 == enum case for ContentSizeCategory.small(_:))
  {
    v8 = 1;
  }

  else if (v23 == enum case for ContentSizeCategory.medium(_:))
  {
    v8 = 2;
  }

  else if (v23 == enum case for ContentSizeCategory.large(_:))
  {
    v8 = 3;
  }

  else if (v23 == enum case for ContentSizeCategory.extraLarge(_:))
  {
    v8 = 4;
  }

  else if (v23 == enum case for ContentSizeCategory.extraExtraLarge(_:))
  {
    v8 = 5;
  }

  else if (v23 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v8 = 6;
  }

  else if (v23 == enum case for ContentSizeCategory.accessibilityMedium(_:))
  {
    v8 = 7;
  }

  else if (v23 == enum case for ContentSizeCategory.accessibilityLarge(_:))
  {
    v8 = 8;
  }

  else if (v23 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
  {
    v8 = 9;
  }

  else if (v23 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
  {
    v8 = 10;
  }

  else if (v23 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v8 = 11;
  }

  else
  {
    (*(v17 + 8))(v20, v19);
    v8 = 3;
  }

  v6 = v8;
  (v15)(v13, v9, v19);
  v7 = v21(v13, v19);
  if (v7 == enum case for ContentSizeCategory.extraSmall(_:))
  {
    v5 = 0;
  }

  else if (v7 == enum case for ContentSizeCategory.small(_:))
  {
    v5 = 1;
  }

  else if (v7 == enum case for ContentSizeCategory.medium(_:))
  {
    v5 = 2;
  }

  else if (v7 == enum case for ContentSizeCategory.large(_:))
  {
    v5 = 3;
  }

  else if (v7 == enum case for ContentSizeCategory.extraLarge(_:))
  {
    v5 = 4;
  }

  else if (v7 == enum case for ContentSizeCategory.extraExtraLarge(_:))
  {
    v5 = 5;
  }

  else if (v7 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v5 = 6;
  }

  else if (v7 == enum case for ContentSizeCategory.accessibilityMedium(_:))
  {
    v5 = 7;
  }

  else if (v7 == enum case for ContentSizeCategory.accessibilityLarge(_:))
  {
    v5 = 8;
  }

  else if (v7 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
  {
    v5 = 9;
  }

  else if (v7 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
  {
    v5 = 10;
  }

  else if (v7 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v5 = 11;
  }

  else
  {
    (*(v17 + 8))(v13, v19);
    v5 = 3;
  }

  return v6 < v5;
}

uint64_t sub_10005B270(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_1000094DC(&qword_10009BE60, &unk_100080348) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_1000632EC(v2, (&v5 - v6));
  v3 = type metadata accessor for MessageView(0);
  sub_10006345C(v7, (v1 + *(v3 + 48)));
  return sub_1000633C0(v8);
}

void sub_10005B320(uint64_t a1@<X8>)
{
  v18 = a1;
  v14 = sub_100063E08;
  v27 = 0;
  v22 = &v25;
  v25 = 0;
  v26 = 0;
  v6 = *(type metadata accessor for MessageView(0) - 8);
  v8 = v6;
  v9 = *(v6 + 64);
  v7 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5[1]);
  v11 = v5 - v7;
  v27 = v2;
  sub_1000466CC(v2, (v5 - v7));
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_1000638EC(v11, (v12 + v10));
  v13 = sub_1000094DC(&qword_10009BE68, &qword_100080358);
  sub_100063E88();
  v3 = sub_10007CFC8();
  v15 = v24;
  v24[0] = v3;
  v24[1] = v4;
  v19 = sub_1000094DC(&qword_10009BE88, &qword_100080368);
  v20 = sub_100063FB4();
  sub_1000354E8(v15, v19, v22);
  sub_100040030();
  v16 = v25;
  v17 = v26;

  v21 = v23;
  v23[0] = v16;
  v23[1] = v17;
  sub_1000354E8(v23, v19, v18);
  sub_100040030();
  sub_100040030();
}

uint64_t sub_10005B528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v21 = a1;
  v15 = a2;
  v17 = sub_100065EF4;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v25 = sub_1000094DC(&qword_10009BE80, &qword_100080360);
  v12 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v27 = &v11 - v12;
  v29 = sub_1000094DC(&qword_10009BE68, &qword_100080358);
  v13 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v31 = &v11 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v32 = &v11 - v14;
  v37 = &v11 - v14;
  v36 = v6;
  v35 = a2;
  v20 = sub_10007D138();
  sub_10005B7BC(v21);
  v16 = v7;
  v18 = &v33;
  v34 = v15;
  v19 = sub_1000094DC(&qword_10009C010, &qword_100080818);
  sub_100065EFC();
  v24 = 0;
  sub_10007D558();
  sub_10007CF88();
  v22 = v8;
  sub_10007CF88();
  v23 = v9;
  v26 = sub_100063F2C();
  sub_1000450A0();
  sub_10007D3E8();
  sub_100065F84(v27);
  v30 = sub_100063E88();
  sub_1000354E8(v31, v29, v32);
  sub_100065F84(v31);
  sub_100067070(v32, v31);
  sub_1000354E8(v31, v29, v28);
  sub_100065F84(v31);
  return sub_100065F84(v32);
}

uint64_t sub_10005B7BC(uint64_t a1)
{
  v15 = a1;
  v2 = v1;
  v23 = v2;
  v52 = 0;
  v51 = 0;
  v19 = 0;
  v38 = sub_10007DE68();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v17 = *(v36 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v39 = &v13 - v16;
  v18 = v16;
  __chkstk_darwin(&v13 - v16);
  v35 = &v13 - v18;
  v52 = a1;
  v51 = v4;
  sub_10007CF88();
  v5 = v23;
  v33 = v6;
  v27 = type metadata accessor for MessageView(v19);
  v7 = (v5 + v27[9]);
  v20 = *v7;
  v21 = v7[1];

  v49 = v20;
  v50 = v21;
  v28 = sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();
  v8 = v23;
  v26 = v48;

  v9 = (v8 + v27[10]);
  v22 = *v9;
  v24 = v9[1];

  v46 = v22;
  v47 = v24;
  sub_10007D4F8();
  v10 = v23;
  v25 = v45;

  v32 = v26 + v25;
  v11 = (v10 + v27[11]);
  v29 = *v11;
  v30 = v11[1];

  v43 = v29;
  v44 = v30;
  sub_10007D4F8();
  v31 = v42;

  v34 = (v33 - (v32 + v31)) * 0.16;
  (*(v36 + 104))(v35, enum case for FloatingPointRoundingRule.down(_:), v38);
  v41 = v34;
  (*(v36 + 16))(v39, v35, v38);
  result = (*(v36 + 88))(v39, v38);
  v40 = result;
  if (result == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v41 = round(v34);
    goto LABEL_15;
  }

  if (v40 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v41 = rint(v34);
    goto LABEL_15;
  }

  if (v40 == enum case for FloatingPointRoundingRule.up(_:))
  {
    goto LABEL_13;
  }

  if (v40 == enum case for FloatingPointRoundingRule.down(_:))
  {
LABEL_14:
    v41 = floor(v34);
    goto LABEL_15;
  }

  if (v40 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v41 = trunc(v34);
    goto LABEL_15;
  }

  if (v40 != enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    sub_10007DA58();
    (*(v36 + 8))(v39, v38);
LABEL_15:
    v13 = v41;
    return (*(v36 + 8))(v35, v38);
  }

  v14 = *&v34 >> 63;
  if (v34 >= 0.0)
  {
LABEL_13:
    v41 = ceil(v34);
    goto LABEL_15;
  }

  if (v14 == 1)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005BCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v97 = a1;
  v60 = sub_100069130;
  v77 = sub_100069ED0;
  v32 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v100 = 0;
  v33 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v37 = &v19 - v36;
  v38 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v19 - v41;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v41);
  v44 = &v19 - v43;
  v45 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v43);
  v46 = &v19 - v45;
  v115 = &v19 - v45;
  v47 = sub_1000094DC(&qword_10009C0D0, &qword_1000808D0);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v49 = &v19 - v48;
  v50 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v48);
  v51 = &v19 - v50;
  v52 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v50);
  v53 = &v19 - v52;
  v114 = &v19 - v52;
  v86 = sub_1000094DC(&qword_10009C0D8, &qword_1000808D8);
  v54 = (*(*(v86 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v90 = &v19 - v54;
  v92 = sub_1000094DC(&qword_10009C090, &qword_100080890);
  v55 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v94 = &v19 - v55;
  v56 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v55);
  v91 = &v19 - v56;
  v113 = &v19 - v56;
  v67 = sub_1000094DC(&qword_10009C0E0, &qword_1000808E0);
  v57 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v71 = &v19 - v57;
  v73 = sub_1000094DC(&qword_10009C068, &qword_100080868);
  v58 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v75 = &v19 - v58;
  v59 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v72 = &v19 - v59;
  v112 = &v19 - v59;
  v111 = v9;
  v63 = sub_10007D0F8();
  v61 = v99;
  v99[2] = v97;
  v62 = sub_1000094DC(&qword_10009C0E8, &qword_1000808E8);
  sub_100069138();
  v76 = 0;
  sub_10007D538();
  v81 = &unk_1000808F0;
  KeyPath = swift_getKeyPath();
  v96 = 0;
  v95 = type metadata accessor for MessageView(0);
  v10 = (v97 + v95[9]);
  v64 = *v10;
  v65 = v10[1];

  v110[11] = v64;
  v110[12] = v65;
  v82 = sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D518();
  v68 = v110[8];
  v69 = v110[9];
  v66 = *&v110[10];

  v11 = sub_1000691C0();
  sub_100076930(KeyPath, v68, v69, v67, v11, v66);

  sub_100069248(v71);
  v74 = sub_100069818();
  sub_1000354E8(v75, v73, v72);
  sub_1000698C0(v75);
  v80 = sub_10007D0F8();
  v78 = v98;
  v98[2] = v97;
  v79 = sub_1000094DC(&qword_10009C108, &qword_100080918);
  sub_100069ED8();
  sub_10007D538();
  v89 = swift_getKeyPath();
  v12 = (v97 + v95[10]);
  v83 = *v12;
  v84 = v12[1];

  v110[6] = v83;
  v110[7] = v84;
  sub_10007D518();
  v87 = v110[3];
  v88 = v110[4];
  v85 = *&v110[5];

  v13 = sub_100069F60();
  sub_100076930(v89, v87, v88, v86, v13, v85);

  sub_100069FE8(v90);
  v93 = sub_10006A9B4();
  sub_1000354E8(v94, v92, v91);
  sub_10006AA5C(v94);
  if (v96 < *(v97 + v95[6]))
  {
    sub_100061850();
    v29 = swift_getKeyPath();
    v14 = (v97 + v95[11]);
    v23 = *v14;
    v24 = v14[1];

    v106 = v23;
    v107 = v24;
    sub_10007D518();
    v27 = v103;
    v28 = v104;
    v26 = v105;

    v25 = sub_100009860(&qword_10009BF40, &qword_1000803F8);
    v15 = sub_100065268();
    v101 = v25;
    v102 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_100076930(v29, v27, v28, v33, OpaqueTypeConformance2, v26);

    (*(v34 + 8))(v37, v33);
    v30 = sub_10006B460();
    sub_1000354E8(v44, v38, v46);
    sub_10006D878(v44);
    v100 = v44;
    sub_10006D91C(v46, v42);
    sub_1000354E8(v42, v38, v44);
    sub_10006D878(v42);
    v17 = sub_10006D91C(v44, v49);
    (*(v39 + 56))(v49, 0, 1, v38, v17);
    sub_100059804(v49, v38, v51);
    sub_10006B558(v49);
    sub_10006B640(v51, v53);
    sub_10006D878(v44);
    sub_10006D878(v46);
  }

  else
  {
    (*(v39 + 56))(v49, 1, 1, v38);
    sub_10006B460();
    sub_100059804(v49, v38, v51);
    sub_10006B558(v49);
    sub_10006B640(v51, v53);
  }

  sub_10006B7B0(v72, v75);
  v22 = v110;
  v110[0] = v75;
  sub_10006C344(v91, v94);
  v110[1] = v94;
  sub_10006D614(v53, v51);
  v110[2] = v51;
  v20 = v109;
  v109[0] = v73;
  v109[1] = v92;
  v109[2] = v47;
  v21 = v108;
  v108[0] = v74;
  v108[1] = v93;
  v108[2] = sub_10006D7E0();
  sub_10003A014(v22, 3uLL, v20, v31);
  sub_10006B558(v51);
  sub_10006AA5C(v94);
  sub_1000698C0(v75);
  sub_10006B558(v53);
  sub_10006AA5C(v91);
  return sub_1000698C0(v72);
}

uint64_t sub_10005C774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v13 = sub_1000700F4;
  v19 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v17 = &v47;
  v47 = 0;
  v48 = 0;
  v23 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v8 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v22 = &v8 - v8;
  v26 = sub_1000094DC(&qword_10009C0B0, &qword_1000808B0);
  v9 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v32 = &v8 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v9);
  v34 = &v8 - v10;
  v51 = &v8 - v10;
  v24 = sub_1000094DC(&qword_10009C158, &qword_100080920);
  v11 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v33 = &v8 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v11);
  v35 = &v8 - v12;
  v50 = &v8 - v12;
  v49 = a1;
  v16 = sub_10007D0F8();
  v14 = &v36;
  v37 = a1;
  v15 = sub_1000094DC(&qword_10009C160, &qword_100080928);
  sub_1000700FC();
  sub_10007D538();
  v27 = sub_100070184();
  sub_1000354E8(v33, v24, v35);
  sub_10007020C(v33);
  v45 = sub_10007D548();
  v46 = v5 & 1;
  v25 = &type metadata for Spacer;
  v28 = &protocol witness table for Spacer;
  sub_1000354E8(&v45, &type metadata for Spacer, v17);
  sub_10005E754(v22);
  v18 = sub_100009860(&qword_10009BF18, &unk_1000803D0);
  v6 = sub_100064774();
  v44[3] = v18;
  v44[4] = v6;
  swift_getOpaqueTypeConformance2();
  sub_10007D368();
  (*(v20 + 8))(v22, v23);
  v29 = sub_10007072C();
  sub_1000354E8(v32, v26, v34);
  sub_100070824(v32);
  sub_10007088C(v35, v33);
  v31 = v44;
  v44[0] = v33;
  v42 = v47;
  v43 = v48;
  v44[1] = &v42;
  sub_100071200(v34, v32);
  v44[2] = v32;
  v41[0] = v24;
  v41[1] = v25;
  v41[2] = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  sub_10003A014(v31, 3uLL, v41, v30);
  sub_100070824(v32);
  sub_10007020C(v33);
  sub_100070824(v34);
  return sub_10007020C(v35);
}

uint64_t sub_10005CC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v35 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = &v13 - v38;
  v40 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v38);
  v41 = &v13 - v40;
  v72 = &v13 - v40;
  v42 = type metadata accessor for Message(0);
  v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v44 = &v13 - v43;
  v45 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v47 = &v13 - v46;
  v48 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v50 = &v13 - v49;
  v51 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v49);
  v52 = &v13 - v51;
  v53 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v51);
  v54 = &v13 - v53;
  v71 = &v13 - v53;
  v55 = sub_1000094DC(&qword_10009C0A8, &qword_1000808A8);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v57 = &v13 - v56;
  v58 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v56);
  v59 = (&v13 - v58);
  v60 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v58);
  v61 = (&v13 - v60);
  v70 = &v13 - v60;
  v69 = a1;
  if (sub_10005A790())
  {
    sub_10005D6A0(v47);
    v28 = sub_10005A890();
    v29 = sub_10007D5A8();
    v30 = v8;
    sub_10003C8A8();
    sub_10007D3E8();
    sub_10003C9D8(v47);
    v31 = sub_10006DB38();
    sub_1000354E8(v52, v48, v54);
    sub_10003C9D8(v52);
    v62 = v52;
    sub_10006FD08(v54, v50);
    sub_1000354E8(v50, v48, v52);
    sub_10003C9D8(v50);
    sub_10006FD08(v52, v50);
    sub_1000364F8(v50, v48, v48, v31, v31, v57);
    sub_10003C9D8(v50);
    v27 = sub_1000094DC(&qword_10009C038, &qword_100080838);
    (*(*(v27 - 8) + 56))(v57, 0, 1);
    sub_10007129C();
    sub_100059804(v57, v27, v59);
    sub_10007133C(v57);
    sub_1000717A8(v59, v61);
    sub_10003C9D8(v52);
    sub_10003C9D8(v54);
  }

  else
  {
    v9 = type metadata accessor for MessageView(0);
    sub_1000143D8((v33 + *(v9 + 20)), v44);
    v26 = v44[*(v42 + 40)];
    sub_100014700(v44);
    if (v26)
    {
      v64 = v54;
      sub_10005DDC4(v47);
      v22 = sub_10005A890();
      v23 = sub_10007D5A8();
      v24 = v10;
      sub_10003C8A8();
      sub_10007D3E8();
      sub_10003C9D8(v47);
      v25 = sub_10006DB38();
      sub_1000354E8(v52, v48, v54);
      sub_10003C9D8(v52);
      v63 = v52;
      sub_10006FD08(v54, v50);
      sub_1000354E8(v50, v48, v52);
      sub_10003C9D8(v50);
      sub_10006FD08(v52, v50);
      sub_1000365F0(v50, v48, v48, v25, v25, v57);
      sub_10003C9D8(v50);
      v21 = sub_1000094DC(&qword_10009C038, &qword_100080838);
      (*(*(v21 - 8) + 56))(v57, 0, 1);
      sub_10007129C();
      sub_100059804(v57, v21, v59);
      sub_10007133C(v57);
      sub_1000717A8(v59, v61);
      sub_10003C9D8(v52);
      sub_10003C9D8(v54);
    }

    else
    {
      v20 = sub_1000094DC(&qword_10009C038, &qword_100080838);
      (*(*(v20 - 8) + 56))(v57, 1);
      sub_10007129C();
      sub_100059804(v57, v20, v59);
      sub_10007133C(v57);
      sub_1000717A8(v59, v61);
    }
  }

  sub_10005E538();
  v14 = sub_100009860(&qword_10009BEC8, &qword_1000803A8);
  v11 = sub_100064328();
  v68[2] = v14;
  v68[3] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v39, v35, v41);
  v19 = *(v36 + 8);
  v18 = v36 + 8;
  v19(v39, v35);
  sub_100071E98(v61, v59);
  v17 = v68;
  v68[0] = v59;
  (*(v36 + 16))(v39, v41, v35);
  v68[1] = v39;
  v16 = v67;
  v67[0] = v55;
  v67[1] = v35;
  v65 = sub_1000726D0();
  v66 = OpaqueTypeConformance2;
  sub_10003A014(v17, 2uLL, v16, v32);
  v19(v39, v35);
  sub_10007133C(v59);
  v19(v41, v35);
  return sub_10007133C(v61);
}

uint64_t sub_10005D6A0@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v48 = 0;
  v2 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v13 = &v8 - v12;
  v16 = 0;
  v43 = sub_10007D6A8();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v14 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v41 = &v8 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v42 = &v8 - v15;
  v32 = sub_10007D248();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v17 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v33 = &v8 - v17;
  v28 = sub_10007D4D8();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v27 = &v8 - v18;
  v36 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v19 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v38 = &v8 - v19;
  v20 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v35 = &v8 - v21;
  v22 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v24 = &v8 - v23;
  v48 = v1;
  sub_10007D898("star.fill", 9uLL, 1);
  v5 = sub_10007D4C8();
  v29 = &v47;
  v47 = v5;
  (*(v25 + 104))(v27, enum case for Image.Scale.small(_:), v28);
  sub_10007D318();
  (*(v25 + 8))(v27, v28);
  sub_10001DFF8();
  v34 = sub_10007D218();
  (*(v30 + 104))(v33, enum case for Font.Leading.tight(_:), v32);
  v37 = sub_10007D258();
  (*(v30 + 8))(v33, v32);

  sub_10003C198();
  sub_10007D3D8();

  sub_10003C2C4(v38);
  sub_100059A84(v42);
  sub_10007D698();
  v46 = sub_10007D688();
  v45 = *(v39 + 8);
  v44 = v39 + 8;
  v45(v41, v43);
  v45(v42, v43);
  if (v46)
  {
    v10 = sub_10007D478();
  }

  else
  {
    v10 = sub_10007D488();
  }

  v8 = v10;
  sub_10003C37C();
  sub_10007D388();

  sub_10003C4AC(v35);
  sub_100059A84(v42);
  sub_10007D698();
  v9 = sub_10007D688();
  v45(v41, v43);
  v45(v42, v43);
  if (v9)
  {
    sub_10007D158();
  }

  else
  {
    sub_10007D148();
  }

  v6 = sub_10007D168();
  (*(*(v6 - 8) + 56))(v13, 0, 1);
  sub_10003C5A0();
  sub_10007D3B8();
  sub_10003C6D0(v13);
  return sub_10003C778(v24);
}

uint64_t sub_10005DDC4@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v49 = 0;
  v2 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v19 = v8 - v18;
  v27 = 0;
  v20 = sub_10007D6A8();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v24 = v8 - v23;
  v25 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v26 = v8 - v25;
  v28 = sub_10007D248();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v32 = v8 - v31;
  v46 = sub_10007D4D8();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v33 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v45 = v8 - v33;
  v34 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v42 = v8 - v35;
  v36 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v38 = v8 - v37;
  v39 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v41 = v8 - v40;
  v49 = v1;
  sub_10007D898("circlebadge.fill", 0x10uLL, 1);
  v5 = sub_10007D4C8();
  v47 = &v48;
  v48 = v5;
  (*(v43 + 104))(v45, enum case for Image.Scale.small(_:), v46);
  sub_10007D318();
  (*(v43 + 8))(v45, v46);
  sub_10001DFF8();
  if (sub_10005A790())
  {
    v16 = sub_10007D268();
  }

  else
  {
    v16 = sub_10007D218();
  }

  v11 = v16;
  (*(v29 + 104))(v32, enum case for Font.Leading.tight(_:), v28);
  v12 = sub_10007D258();
  (*(v29 + 8))(v32, v28);

  sub_10003C198();
  sub_10007D3D8();

  sub_10003C2C4(v42);
  sub_100059A84(v26);
  sub_10007D698();
  v15 = sub_10007D688();
  v14 = *(v21 + 8);
  v13 = v21 + 8;
  v14(v24, v20);
  v14(v26, v20);
  if (v15)
  {
    v10 = sub_10007D458();
  }

  else
  {
    v10 = sub_10007D488();
  }

  v8[1] = v10;
  sub_10003C37C();
  sub_10007D388();

  sub_10003C4AC(v38);
  sub_100059A84(v26);
  sub_10007D698();
  v9 = sub_10007D688();
  v14(v24, v20);
  v14(v26, v20);
  if (v9)
  {
    sub_10007D158();
  }

  else
  {
    sub_10007D148();
  }

  v6 = sub_10007D168();
  (*(*(v6 - 8) + 56))(v19, 0, 1);
  sub_10003C5A0();
  sub_10007D3B8();
  sub_10003C6D0(v19);
  return sub_10003C778(v41);
}

uint64_t *sub_10005E538()
{
  v13 = v0;
  sub_1000094DC(&qword_10009BE98, &qword_100080388);
  sub_100064044();
  sub_10007D4B8();
  v4[0] = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v5 = v10 & 1;
  sub_1000094DC(&qword_10009BEA8, &qword_100080390);
  sub_1000640E0();
  sub_10007D428();
  sub_100064178(v4);
  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v3, __dst, 0x39uLL);
  sub_10007D218();
  sub_10007D228();
  sub_10007D238();

  sub_1000094DC(&qword_10009BEB8, &qword_100080398);
  sub_100064230();
  sub_10007D3D8();

  sub_1000642D8(v3);
  memcpy(v15, v12, sizeof(v15));
  memcpy(v2, v15, sizeof(v2));
  sub_1000094DC(&qword_10009BEC8, &qword_1000803A8);
  sub_100064328();
  sub_10003F924();
  sub_10007D2D8();
  return sub_1000643D0(v2);
}

uint64_t sub_10005E754@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v61 = 0;
  v10[1] = 0;
  v11 = (*(*(type metadata accessor for Message(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v1 = v10 - v11;
  v13 = v10 - v11;
  v61 = v2;
  v4 = type metadata accessor for MessageView(v3);
  sub_1000143D8((v12 + *(v4 + 20)), v1);
  v15 = sub_100031F44();
  v14 = v5;
  sub_100014700(v13);
  v16 = v54;
  v54[0] = v15;
  v54[1] = v14;
  sub_10003CBFC();
  v50 = sub_10007D2C8();
  v51 = v6;
  v52 = v7;
  v53 = v8;
  v17 = v47;
  v47[0] = v50;
  v47[1] = v6;
  v18 = 1;
  v48 = v7 & 1;
  v49 = v8;
  sub_10007D368();
  sub_10003CC74(v17);
  v20 = v43;
  v43[0] = v54[2];
  v43[1] = v54[3];
  v44 = v55 & 1 & v18;
  v45 = v56;
  v46 = v57;
  v19 = sub_1000094DC(&qword_10009BED8, &qword_1000803B0);
  sub_100064438();
  v21 = &v58;
  sub_10007D428();
  sub_10003CC74(v20);
  v22 = v62;
  v23 = 57;
  memcpy(v62, v21, 0x39uLL);
  v26 = v42;
  memcpy(v42, v62, 0x39uLL);
  v25 = sub_10007D268();
  v24 = sub_1000094DC(&qword_10009BEF8, &qword_1000803C0);
  sub_100064564();
  v27 = &v59;
  sub_10007D3D8();

  sub_10006460C(v26);
  v28 = __dst;
  v29 = 80;
  memcpy(__dst, v27, sizeof(__dst));
  v32 = v41;
  memcpy(v41, __dst, sizeof(v41));
  v31 = sub_10007D498();
  v30 = sub_1000094DC(&qword_10009BF08, &qword_1000803C8);
  sub_100064660();
  v33 = &v60;
  sub_10007D388();

  sub_100064708(v32);
  v34 = v64;
  v35 = 96;
  memcpy(v64, v33, sizeof(v64));
  v39 = v40;
  memcpy(v40, v64, sizeof(v40));
  v37 = sub_1000094DC(&qword_10009BF18, &unk_1000803D0);
  v38 = sub_100064774();
  sub_10003F924();
  sub_10007D2D8();
  return sub_10006481C(v39);
}

uint64_t sub_10005EAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = a1;
  v53 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v133 = 0;
  v134 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v54 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v54);
  v58 = (v27 - v57);
  v59 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v57);
  v60 = (v27 - v59);
  v61 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v59);
  v62 = (v27 - v61);
  v144 = v27 - v61;
  v63 = sub_1000094DC(&qword_10009C0C8, &qword_1000808C8);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v65 = (v27 - v64);
  v66 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v64);
  v67 = (v27 - v66);
  v68 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v66);
  v69 = (v27 - v68);
  v143 = v27 - v68;
  v70 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
  v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v72 = (v27 - v71);
  v142 = v27 - v71;
  v73 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v74 = v27 - v73;
  v75 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v73);
  v76 = (v27 - v75);
  v77 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v75);
  v78 = (v27 - v77);
  v141 = v27 - v77;
  v79 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79);
  v83 = v27 - v82;
  v84 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v82);
  v85 = v27 - v84;
  v140 = v27 - v84;
  v86 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v90 = v27 - v89;
  v91 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v89);
  v92 = v27 - v91;
  v93 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v91);
  v94 = v27 - v93;
  v95 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v99 = v27 - v98;
  v100 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v98);
  v101 = v27 - v100;
  v102 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v100);
  v103 = v27 - v102;
  v139 = v27 - v102;
  v104 = type metadata accessor for Message(0);
  v105 = (*(*(v104 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v104);
  v106 = v27 - v105;
  v107 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v108 = v27 - v107;
  v109 = sub_1000094DC(&qword_10009C0B8, &qword_1000808B8);
  v110 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v109);
  v111 = v27 - v110;
  v112 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v110);
  v113 = (v27 - v112);
  v114 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v112);
  v115 = (v27 - v114);
  v138 = v27 - v114;
  v137 = a1;
  if (sub_10005A790())
  {
    v20 = type metadata accessor for MessageView(0);
    sub_1000143D8((v52 + *(v20 + 20)), v108);
    v49 = v108[v104[10]];
    sub_100014700(v108);
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    sub_10005DDC4(v94);
    v45 = sub_10005A890();
    v46 = sub_10007D5A8();
    v47 = v21;
    sub_10003C8A8();
    sub_10007D3E8();
    sub_10003C9D8(v94);
    v48 = sub_10006DB38();
    sub_1000354E8(v101, v95, v103);
    sub_10003C9D8(v101);
    v116 = v101;
    sub_10006FD08(v103, v99);
    sub_1000354E8(v99, v95, v101);
    sub_10003C9D8(v99);
    sub_10006FD08(v101, v111);
    (*(v96 + 56))(v111, 0, 1, v95);
    sub_100059804(v111, v95, v113);
    sub_10006DBDC(v111);
    sub_10006DE34(v113, v115);
    sub_10003C9D8(v101);
    sub_10003C9D8(v103);
  }

  else
  {
    (*(v96 + 56))(v111, 1, 1, v95);
    sub_10006DB38();
    sub_100059804(v111, v95, v113);
    sub_10006DBDC(v111);
    sub_10006DE34(v113, v115);
  }

  sub_10005FB84();
  v38 = sub_100009860(&qword_10009BEC8, &qword_1000803A8);
  v22 = sub_100064328();
  v135 = v38;
  v136 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v83, v79, v85);
  v40 = *(v80 + 8);
  v41 = v80 + 8;
  v40(v83, v79);
  v42 = 0;
  v131 = sub_10007D548();
  v132 = v23 & 1;
  sub_1000354E8(&v131, &type metadata for Spacer, &v133);
  v43 = type metadata accessor for MessageView(v42);
  sub_1000143D8((v52 + *(v43 + 20)), v108);
  v44 = v108[v104[11]];
  sub_100014700(v108);
  if (v44)
  {
    v118 = v94;
    sub_10005FD84(v92);
    v37 = sub_10003C8A8();
    sub_1000354E8(v92, v86, v94);
    sub_10003C9D8(v92);
    v117 = v92;
    sub_10003DAD4(v94, v90);
    sub_1000354E8(v90, v86, v92);
    sub_10003C9D8(v90);
    sub_10003DAD4(v92, v74);
    (*(v87 + 56))(v74, 0, 1, v86);
    sub_100059804(v74, v86, v76);
    sub_10006E1E8(v74);
    sub_10006E434(v76, v78);
    sub_10003C9D8(v92);
    sub_10003C9D8(v94);
  }

  else
  {
    (*(v87 + 56))(v74, 1, 1, v86);
    sub_10003C8A8();
    sub_100059804(v74, v86, v76);
    sub_10006E1E8(v74);
    sub_10006E434(v76, v78);
  }

  sub_1000143D8((v52 + *(v43 + 20)), v108);
  v36 = v108[v104[12]];
  sub_100014700(v108);
  if (v36)
  {
    v120 = v94;
    sub_1000604C8(v92);
    v35 = sub_10003C8A8();
    sub_1000354E8(v92, v86, v94);
    sub_10003C9D8(v92);
    v119 = v92;
    sub_10003DAD4(v94, v90);
    sub_1000354E8(v90, v86, v92);
    sub_10003C9D8(v90);
    sub_10003DAD4(v92, v74);
    (*(v87 + 56))(v74, 0, 1, v86);
    sub_100059804(v74, v86, v76);
    sub_10006E1E8(v74);
    sub_10006E434(v76, v72);
    sub_10003C9D8(v92);
    sub_10003C9D8(v94);
  }

  else
  {
    (*(v87 + 56))(v74, 1, 1, v86);
    sub_10003C8A8();
    sub_100059804(v74, v86, v76);
    sub_10006E1E8(v74);
    sub_10006E434(v76, v72);
  }

  sub_1000143D8((v52 + *(v43 + 20)), v106);
  v24 = &v106[v104[13]];
  v33 = *v24;
  v34 = v24[8];
  sub_100014700(v106);
  if ((v34 & 1) != 0 || (v32 = v33, v30 = v33, v122 = v33, sub_1000143D8((v52 + *(v43 + 20)), v108), v31 = v108[v104[14]], sub_100014700(v108), (v31 & 1) == 0))
  {
    (*(v55 + 56))(v65, 1, 1, v54);
    sub_100064F8C();
    sub_100059804(v65, v54, v67);
    sub_10006E7A8(v65);
    sub_10006EA2C(v67, v69);
  }

  else
  {
    sub_100060BEC(v30, v60);
    v29 = sub_100064F8C();
    sub_1000354E8(v60, v54, v62);
    sub_100065030(v60);
    v121 = v60;
    sub_100064BC8(v62, v58);
    sub_1000354E8(v58, v54, v60);
    sub_100065030(v58);
    sub_100064BC8(v60, v65);
    (*(v55 + 56))(v65, 0, 1, v54);
    sub_100059804(v65, v54, v67);
    sub_10006E7A8(v65);
    sub_10006EA2C(v67, v69);
    sub_100065030(v60);
    sub_100065030(v62);
  }

  sub_10006EE24(v115, v113);
  v28 = v130;
  v130[0] = v113;
  (*(v80 + 16))(v83, v85, v79);
  v130[1] = v83;
  v128 = v133;
  v129 = v134;
  v130[2] = &v128;
  sub_10006F27C(v78, v76);
  v130[3] = v76;
  sub_10006F27C(v72, v74);
  v130[4] = v74;
  sub_10006F69C(v69, v67);
  v130[5] = v67;
  v27[0] = v127;
  v127[0] = v109;
  v127[1] = v79;
  v127[2] = &type metadata for Spacer;
  v127[3] = v70;
  v127[4] = v70;
  v127[5] = v63;
  v25 = sub_10006FB40();
  v27[1] = v123;
  v123[0] = v25;
  v123[1] = OpaqueTypeConformance2;
  v123[2] = &protocol witness table for Spacer;
  v124 = sub_10006FBD8();
  v125 = v124;
  v126 = sub_10006FC70();
  sub_10003A014(v28, 6uLL, v27[0], v51);
  sub_10006E7A8(v67);
  sub_10006E1E8(v74);
  sub_10006E1E8(v76);
  v40(v83, v79);
  sub_10006DBDC(v113);
  sub_10006E7A8(v69);
  sub_10006E1E8(v72);
  sub_10006E1E8(v78);
  v40(v85, v79);
  return sub_10006DBDC(v115);
}

uint64_t *sub_10005FB84()
{
  v13 = v0;
  sub_1000094DC(&qword_10009BE98, &qword_100080388);
  sub_100064044();
  sub_10007D4B8();
  v4[0] = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v5 = v10 & 1;
  sub_1000094DC(&qword_10009BEA8, &qword_100080390);
  sub_1000640E0();
  sub_10007D428();
  sub_100064178(v4);
  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v3, __dst, 0x39uLL);
  sub_10007D268();
  sub_1000094DC(&qword_10009BEB8, &qword_100080398);
  sub_100064230();
  sub_10007D3D8();

  sub_1000642D8(v3);
  memcpy(v15, v12, sizeof(v15));
  memcpy(v2, v15, sizeof(v2));
  sub_1000094DC(&qword_10009BEC8, &qword_1000803A8);
  sub_100064328();
  sub_10003F924();
  sub_10007D2D8();
  return sub_1000643D0(v2);
}

uint64_t sub_10005FD84@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v49 = 0;
  v2 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v9 - v13;
  v17 = 0;
  v44 = sub_10007D6A8();
  v40 = *(v44 - 8);
  v41 = v44 - 8;
  v15 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v42 = &v9 - v15;
  v16 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v43 = &v9 - v16;
  v33 = sub_10007D248();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v18 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v34 = &v9 - v18;
  v29 = sub_10007D4D8();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v19 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v28 = &v9 - v19;
  v37 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v20 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v39 = &v9 - v20;
  v21 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v36 = &v9 - v22;
  v23 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v25 = &v9 - v24;
  v49 = v1;
  sub_10007D898("paperclip", 9uLL, 1);
  v5 = sub_10007D4C8();
  v30 = &v48;
  v48 = v5;
  (*(v26 + 104))(v28, enum case for Image.Scale.small(_:), v29);
  sub_10007D318();
  (*(v26 + 8))(v28, v29);
  sub_10001DFF8();
  v35 = sub_10007D268();
  (*(v31 + 104))(v34, enum case for Font.Leading.tight(_:), v33);
  v38 = sub_10007D258();
  (*(v31 + 8))(v34, v33);

  sub_10003C198();
  sub_10007D3D8();

  sub_10003C2C4(v39);
  sub_100059A84(v43);
  sub_10007D698();
  v47 = sub_10007D688();
  v46 = *(v40 + 8);
  v45 = v40 + 8;
  v46(v42, v44);
  v46(v43, v44);
  if (v47)
  {
    v6 = [objc_opt_self() tertiaryLabelColor];
    v11 = sub_10007D4A8();
  }

  else
  {
    v11 = sub_10007D488();
  }

  v9 = v11;
  sub_10003C37C();
  sub_10007D388();

  sub_10003C4AC(v36);
  sub_100059A84(v43);
  sub_10007D698();
  v10 = sub_10007D688();
  v46(v42, v44);
  v46(v43, v44);
  if (v10)
  {
    sub_10007D158();
  }

  else
  {
    sub_10007D148();
  }

  v7 = sub_10007D168();
  (*(*(v7 - 8) + 56))(v14, 0, 1);
  sub_10003C5A0();
  sub_10007D3B8();
  sub_10003C6D0(v14);
  return sub_10003C778(v25);
}

uint64_t sub_1000604C8@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v48 = 0;
  v2 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v13 = &v8 - v12;
  v16 = 0;
  v43 = sub_10007D6A8();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v14 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v41 = &v8 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v42 = &v8 - v15;
  v32 = sub_10007D248();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v17 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v33 = &v8 - v17;
  v28 = sub_10007D4D8();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v27 = &v8 - v18;
  v36 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v19 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v38 = &v8 - v19;
  v20 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v35 = &v8 - v21;
  v22 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v24 = &v8 - v23;
  v48 = v1;
  sub_10007D898("nosign", 6uLL, 1);
  v5 = sub_10007D4C8();
  v29 = &v47;
  v47 = v5;
  (*(v25 + 104))(v27, enum case for Image.Scale.small(_:), v28);
  sub_10007D318();
  (*(v25 + 8))(v27, v28);
  sub_10001DFF8();
  v34 = sub_10007D268();
  (*(v30 + 104))(v33, enum case for Font.Leading.tight(_:), v32);
  v37 = sub_10007D258();
  (*(v30 + 8))(v33, v32);

  sub_10003C198();
  sub_10007D3D8();

  sub_10003C2C4(v38);
  sub_100059A84(v42);
  sub_10007D698();
  v46 = sub_10007D688();
  v45 = *(v39 + 8);
  v44 = v39 + 8;
  v45(v41, v43);
  v45(v42, v43);
  if (v46)
  {
    v10 = sub_10007D448();
  }

  else
  {
    v10 = sub_10007D488();
  }

  v8 = v10;
  sub_10003C37C();
  sub_10007D388();

  sub_10003C4AC(v35);
  sub_100059A84(v42);
  sub_10007D698();
  v9 = sub_10007D688();
  v45(v41, v43);
  v45(v42, v43);
  if (v9)
  {
    sub_10007D158();
  }

  else
  {
    sub_10007D148();
  }

  v6 = sub_10007D168();
  (*(*(v6 - 8) + 56))(v13, 0, 1);
  sub_10003C5A0();
  sub_10007D3B8();
  sub_10003C6D0(v13);
  return sub_10003C778(v24);
}

uint64_t sub_100060BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v78 = a1;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v88 = 0;
  v89 = 0;
  v49 = 0;
  v40 = sub_10007D6A8();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v44 = &v16 - v43;
  v45 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v16 - v43);
  v46 = &v16 - v45;
  v47 = (*(*(sub_1000094DC(&qword_10009B500, &qword_10007F900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v48 = &v16 - v47;
  v50 = sub_10007D248();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v54 = &v16 - v53;
  v55 = sub_10007D4D8();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v59 = &v16 - v58;
  v60 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v62 = &v16 - v61;
  v63 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v65 = &v16 - v64;
  v66 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v68 = &v16 - v67;
  v69 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69);
  v71 = &v16 - v70;
  v72 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v16 - v70);
  v73 = &v16 - v72;
  v94 = &v16 - v72;
  v74 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v75 = &v16 - v74;
  v76 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v16 - v74);
  v77 = &v16 - v76;
  v93 = &v16 - v76;
  v79 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  v80 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v78);
  v81 = (&v16 - v80);
  v82 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v83 = (&v16 - v82);
  v92 = &v16 - v82;
  v91 = v10;
  v90 = v2;
  v84 = MUIImageNameForBucket();
  if (v84)
  {
    v38 = v84;
    v33 = v84;
    v34 = sub_10007D868();
    v35 = v11;
    _objc_release(v33);
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v31 = v37;
  v32 = v36;
  if (v37)
  {
    v29 = v32;
    v30 = v31;
    v25 = v31;
    v24 = v32;
    v88 = v32;
    v89 = v31;

    v12 = sub_10007D4C8();
    v26 = &v87;
    v87 = v12;
    (*(v56 + 104))(v59, enum case for Image.Scale.small(_:), v55);
    sub_10007D318();
    (*(v56 + 8))(v59, v55);
    sub_10001DFF8();
    v27 = sub_10007D268();
    (*(v51 + 104))(v54, enum case for Font.Leading.tight(_:), v50);
    v28 = sub_10007D258();
    (*(v51 + 8))(v54, v50);

    sub_10003C198();
    sub_10007D3D8();

    sub_10003C2C4(v62);
    v85 = MUIPlatformColorForBucket();
    if (v85)
    {
      v86 = v85;
    }

    else
    {
      v86 = [objc_opt_self() tertiaryLabelColor];
      if (v85)
      {
        sub_100012FD8(&v85);
      }
    }

    v20 = sub_10007D4A8();
    sub_10003C37C();
    sub_10007D388();

    sub_10003C4AC(v65);
    sub_100059A84(v46);
    sub_10007D698();
    v23 = sub_10007D688();
    v22 = *(v41 + 8);
    v21 = v41 + 8;
    v22(v44, v40);
    v22(v46, v40);
    if (v23)
    {
      sub_10007D158();
    }

    else
    {
      sub_10007D148();
    }

    v13 = sub_10007D168();
    (*(*(v13 - 8) + 56))(v48, 0, 1);
    sub_10003C5A0();
    sub_10007D3B8();
    sub_10003C6D0(v48);
    sub_10003C778(v68);
    v19 = sub_10003C8A8();
    sub_1000354E8(v75, v69, v77);
    sub_10003C9D8(v75);
    sub_10003DAD4(v77, v71);
    sub_1000354E8(v71, v69, v73);
    sub_10003C9D8(v71);
    sub_10003DAD4(v73, v71);
    sub_1000364F8(v71, v69, &type metadata for EmptyView, v19, &protocol witness table for EmptyView, v81);
    sub_10003C9D8(v71);
    sub_1000648A8(v81, v83);
    sub_10003C9D8(v73);
    sub_10003C9D8(v77);
  }

  else
  {
    sub_10007D5B8();
    v16 = &type metadata for EmptyView;
    v17 = &protocol witness table for EmptyView;
    sub_1000354E8(v18, &type metadata for EmptyView, v18);
    sub_1000354E8(v18, v16, v18);
    v14 = sub_10003C8A8();
    sub_1000365F0(v18, v69, v16, v14, v17, v81);
    sub_1000648A8(v81, v83);
  }

  sub_100064BC8(v83, v81);
  sub_100064F8C();
  sub_1000354E8(v81, v79, v39);
  sub_100065030(v81);
  return sub_100065030(v83);
}

uint64_t *sub_100061850()
{
  v15 = v0;
  sub_1000094DC(&qword_10009BE98, &qword_100080388);
  sub_100064044();
  sub_10007D4B8();
  v5[0] = v7;
  v5[1] = v8;
  v5[2] = v9;
  v5[3] = v10;
  v6 = v11 & 1;
  type metadata accessor for MessageView(0);
  sub_1000094DC(&qword_10009BEA8, &qword_100080390);
  sub_1000640E0();
  sub_10007D428();
  sub_100064178(v5);
  memcpy(__dst, v12, sizeof(__dst));
  memcpy(v4, __dst, 0x39uLL);
  sub_10007D268();
  sub_1000094DC(&qword_10009BEB8, &qword_100080398);
  sub_100064230();
  sub_10007D3D8();

  sub_1000642D8(v4);
  memcpy(v17, v13, sizeof(v17));
  memcpy(v3, v17, sizeof(v3));
  sub_10007D498();
  sub_1000094DC(&qword_10009BEC8, &qword_1000803A8);
  sub_100064328();
  sub_10007D388();

  sub_1000643D0(v3);
  memcpy(v18, v14, sizeof(v18));
  memcpy(v2, v18, sizeof(v2));
  sub_1000094DC(&qword_10009BF40, &qword_1000803F8);
  sub_100065268();
  sub_10003F924();
  sub_10007D2D8();
  return sub_100065310(v2);
}

uint64_t *sub_100061AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = &v92;
  v62 = a2;
  v67 = a1;
  v63 = "Placeholder when no sender is available for the given message";
  v124 = 0;
  memset(__b, 0, 0x21uLL);
  v121 = 0u;
  v122 = 0u;
  v109 = 0u;
  v110 = 0u;
  v94 = 0;
  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  v82 = 0u;
  v83 = 0u;
  v65 = 0;
  v66 = (*(*(type metadata accessor for Message(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v69 = &v12 - v66;
  v124 = v2;
  v4 = type metadata accessor for MessageView(v3);
  sub_1000143D8((v67 + *(v4 + 20)), v69);
  v68 = *(v69 + 2);
  v70 = *(v69 + 3);

  sub_100014700(v69);
  if (v70)
  {
    v60 = v68;
    v61 = v70;
    v49 = v70;
    v33 = v68;
    v94 = v68;
    v95 = v70;

    v34 = v91;
    v91[0] = v33;
    v91[1] = v49;
    sub_10003CBFC();
    v87 = sub_10007D2C8();
    v88 = v5;
    v89 = v6;
    v90 = v7;
    v35 = v84;
    v84[0] = v87;
    v84[1] = v5;
    v46 = 1;
    v85 = v6 & 1;
    v86 = v7;
    v48 = &v92;
    v43 = &type metadata for Text;
    v44 = &protocol witness table for Text;
    sub_1000354E8(v84, &type metadata for Text, &v92);
    sub_10003CC74(v35);
    v36 = v92;
    v37 = v93;
    v38 = *(&v93 + 1);
    sub_10004AA70(v92, *(&v92 + 1), v93 & 1);

    v39 = &v79;
    v79 = v36;
    v80 = v37 & 1 & v46;
    v81 = v38;
    v47 = &v82;
    sub_1000354E8(&v79, v43, &v82);
    sub_10003CC74(v39);
    v40 = v82;
    v41 = v83;
    v42 = *(&v83 + 1);
    sub_10004AA70(v82, *(&v82 + 1), v83 & 1);

    v45 = &v71;
    v71 = v40;
    v72 = v41 & 1 & v46;
    v73 = v42;
    sub_1000364F8(&v71, v43, v43, v44, v44, &v74);
    sub_10003CC74(v45);
    v51 = v74;
    v52 = v75;
    v53 = v76;
    v54 = v77;
    v50 = v78;
    sub_100065E80(v74, v75, v76, v77);
    __b[0] = v51;
    __b[1] = v52;
    __b[2] = v53;
    __b[3] = v54;
    LOBYTE(__b[4]) = v50 & 1 & v46;
    sub_10003CC74(v47);
    sub_10003CC74(v48);

    v55 = v51;
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = v50;
  }

  else
  {
    v25 = 1;
    sub_10007D898("NO_SENDER", 9uLL, 1);
    sub_10007D108();
    v118 = v63;
    v119 = 61;
    v120 = 2;
    v114 = sub_10007D2B8();
    v115 = v8;
    v116 = v9;
    v117 = v10;
    v14 = v111;
    v111[0] = v114;
    v111[1] = v8;
    v112 = v9 & 1 & v25;
    v113 = v10;
    v27 = &v121;
    v22 = &type metadata for Text;
    v23 = &protocol witness table for Text;
    sub_1000354E8(v111, &type metadata for Text, &v121);
    sub_10003CC74(v14);
    v15 = v121;
    v16 = v122;
    v17 = *(&v122 + 1);
    sub_10004AA70(v121, *(&v121 + 1), v122 & 1);

    v18 = &v106;
    v106 = v15;
    v107 = v16 & 1 & v25;
    v108 = v17;
    v26 = &v109;
    sub_1000354E8(&v106, v22, &v109);
    sub_10003CC74(v18);
    v19 = v109;
    v20 = v110;
    v21 = *(&v110 + 1);
    sub_10004AA70(v109, *(&v109 + 1), v110 & 1);

    v24 = &v98;
    v98 = v19;
    v99 = v20 & 1 & v25;
    v100 = v21;
    sub_1000365F0(&v98, v22, v22, v23, v23, &v101);
    sub_10003CC74(v24);
    v29 = v101;
    v30 = v102;
    v31 = v103;
    v32 = v104;
    v28 = v105;
    sub_100065E80(v101, v102, v103, v104);
    __b[0] = v29;
    __b[1] = v30;
    __b[2] = v31;
    __b[3] = v32;
    LOBYTE(__b[4]) = v28 & 1 & v25;
    sub_10003CC74(v26);
    sub_10003CC74(v27);
    v55 = v29;
    v56 = v30;
    v57 = v31;
    v58 = v32;
    v59 = v28;
  }

  v13 = v96;
  v96[0] = v55;
  v96[1] = v56;
  v96[2] = v57;
  v96[3] = v58;
  v97 = v59 & 1;
  v12 = sub_1000094DC(&qword_10009BE98, &qword_100080388);
  sub_100064044();
  sub_1000354E8(v13, v12, v62);
  sub_100064178(v13);
  return sub_100064178(__b);
}

uint64_t *sub_1000621C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = &v92;
  v62 = a2;
  v67 = a1;
  v63 = "Placeholder when no subject is available for the given message";
  v124 = 0;
  memset(__b, 0, 0x21uLL);
  v121 = 0u;
  v122 = 0u;
  v109 = 0u;
  v110 = 0u;
  v94 = 0;
  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  v82 = 0u;
  v83 = 0u;
  v65 = 0;
  v66 = (*(*(type metadata accessor for Message(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v69 = &v12 - v66;
  v124 = v2;
  v4 = type metadata accessor for MessageView(v3);
  sub_1000143D8((v67 + *(v4 + 20)), v69);
  v68 = *(v69 + 4);
  v70 = *(v69 + 5);

  sub_100014700(v69);
  if (v70)
  {
    v60 = v68;
    v61 = v70;
    v49 = v70;
    v33 = v68;
    v94 = v68;
    v95 = v70;

    v34 = v91;
    v91[0] = v33;
    v91[1] = v49;
    sub_10003CBFC();
    v87 = sub_10007D2C8();
    v88 = v5;
    v89 = v6;
    v90 = v7;
    v35 = v84;
    v84[0] = v87;
    v84[1] = v5;
    v46 = 1;
    v85 = v6 & 1;
    v86 = v7;
    v48 = &v92;
    v43 = &type metadata for Text;
    v44 = &protocol witness table for Text;
    sub_1000354E8(v84, &type metadata for Text, &v92);
    sub_10003CC74(v35);
    v36 = v92;
    v37 = v93;
    v38 = *(&v93 + 1);
    sub_10004AA70(v92, *(&v92 + 1), v93 & 1);

    v39 = &v79;
    v79 = v36;
    v80 = v37 & 1 & v46;
    v81 = v38;
    v47 = &v82;
    sub_1000354E8(&v79, v43, &v82);
    sub_10003CC74(v39);
    v40 = v82;
    v41 = v83;
    v42 = *(&v83 + 1);
    sub_10004AA70(v82, *(&v82 + 1), v83 & 1);

    v45 = &v71;
    v71 = v40;
    v72 = v41 & 1 & v46;
    v73 = v42;
    sub_1000364F8(&v71, v43, v43, v44, v44, &v74);
    sub_10003CC74(v45);
    v51 = v74;
    v52 = v75;
    v53 = v76;
    v54 = v77;
    v50 = v78;
    sub_100065E80(v74, v75, v76, v77);
    __b[0] = v51;
    __b[1] = v52;
    __b[2] = v53;
    __b[3] = v54;
    LOBYTE(__b[4]) = v50 & 1 & v46;
    sub_10003CC74(v47);
    sub_10003CC74(v48);

    v55 = v51;
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = v50;
  }

  else
  {
    v25 = 1;
    sub_10007D898("NO_SUBJECT", 0xAuLL, 1);
    sub_10007D108();
    v118 = v63;
    v119 = 62;
    v120 = 2;
    v114 = sub_10007D2B8();
    v115 = v8;
    v116 = v9;
    v117 = v10;
    v14 = v111;
    v111[0] = v114;
    v111[1] = v8;
    v112 = v9 & 1 & v25;
    v113 = v10;
    v27 = &v121;
    v22 = &type metadata for Text;
    v23 = &protocol witness table for Text;
    sub_1000354E8(v111, &type metadata for Text, &v121);
    sub_10003CC74(v14);
    v15 = v121;
    v16 = v122;
    v17 = *(&v122 + 1);
    sub_10004AA70(v121, *(&v121 + 1), v122 & 1);

    v18 = &v106;
    v106 = v15;
    v107 = v16 & 1 & v25;
    v108 = v17;
    v26 = &v109;
    sub_1000354E8(&v106, v22, &v109);
    sub_10003CC74(v18);
    v19 = v109;
    v20 = v110;
    v21 = *(&v110 + 1);
    sub_10004AA70(v109, *(&v109 + 1), v110 & 1);

    v24 = &v98;
    v98 = v19;
    v99 = v20 & 1 & v25;
    v100 = v21;
    sub_1000365F0(&v98, v22, v22, v23, v23, &v101);
    sub_10003CC74(v24);
    v29 = v101;
    v30 = v102;
    v31 = v103;
    v32 = v104;
    v28 = v105;
    sub_100065E80(v101, v102, v103, v104);
    __b[0] = v29;
    __b[1] = v30;
    __b[2] = v31;
    __b[3] = v32;
    LOBYTE(__b[4]) = v28 & 1 & v25;
    sub_10003CC74(v26);
    sub_10003CC74(v27);
    v55 = v29;
    v56 = v30;
    v57 = v31;
    v58 = v32;
    v59 = v28;
  }

  v13 = v96;
  v96[0] = v55;
  v96[1] = v56;
  v96[2] = v57;
  v96[3] = v58;
  v97 = v59 & 1;
  v12 = sub_1000094DC(&qword_10009BE98, &qword_100080388);
  sub_100064044();
  sub_1000354E8(v13, v12, v62);
  sub_100064178(v13);
  return sub_100064178(__b);
}

uint64_t *sub_100062898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = &v92;
  v62 = a2;
  v67 = a1;
  v63 = "Placeholder when no summary is available for the given message";
  v124 = 0;
  memset(__b, 0, 0x21uLL);
  v121 = 0u;
  v122 = 0u;
  v109 = 0u;
  v110 = 0u;
  v94 = 0;
  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  v82 = 0u;
  v83 = 0u;
  v65 = 0;
  v66 = (*(*(type metadata accessor for Message(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v69 = &v12 - v66;
  v124 = v2;
  v4 = type metadata accessor for MessageView(v3);
  sub_1000143D8((v67 + *(v4 + 20)), v69);
  v68 = *(v69 + 6);
  v70 = *(v69 + 7);

  sub_100014700(v69);
  if (v70)
  {
    v60 = v68;
    v61 = v70;
    v49 = v70;
    v33 = v68;
    v94 = v68;
    v95 = v70;

    v34 = v91;
    v91[0] = v33;
    v91[1] = v49;
    sub_10003CBFC();
    v87 = sub_10007D2C8();
    v88 = v5;
    v89 = v6;
    v90 = v7;
    v35 = v84;
    v84[0] = v87;
    v84[1] = v5;
    v46 = 1;
    v85 = v6 & 1;
    v86 = v7;
    v48 = &v92;
    v43 = &type metadata for Text;
    v44 = &protocol witness table for Text;
    sub_1000354E8(v84, &type metadata for Text, &v92);
    sub_10003CC74(v35);
    v36 = v92;
    v37 = v93;
    v38 = *(&v93 + 1);
    sub_10004AA70(v92, *(&v92 + 1), v93 & 1);

    v39 = &v79;
    v79 = v36;
    v80 = v37 & 1 & v46;
    v81 = v38;
    v47 = &v82;
    sub_1000354E8(&v79, v43, &v82);
    sub_10003CC74(v39);
    v40 = v82;
    v41 = v83;
    v42 = *(&v83 + 1);
    sub_10004AA70(v82, *(&v82 + 1), v83 & 1);

    v45 = &v71;
    v71 = v40;
    v72 = v41 & 1 & v46;
    v73 = v42;
    sub_1000364F8(&v71, v43, v43, v44, v44, &v74);
    sub_10003CC74(v45);
    v51 = v74;
    v52 = v75;
    v53 = v76;
    v54 = v77;
    v50 = v78;
    sub_100065E80(v74, v75, v76, v77);
    __b[0] = v51;
    __b[1] = v52;
    __b[2] = v53;
    __b[3] = v54;
    LOBYTE(__b[4]) = v50 & 1 & v46;
    sub_10003CC74(v47);
    sub_10003CC74(v48);

    v55 = v51;
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = v50;
  }

  else
  {
    v25 = 1;
    sub_10007D898("NO_BODY", 7uLL, 1);
    sub_10007D108();
    v118 = v63;
    v119 = 62;
    v120 = 2;
    v114 = sub_10007D2B8();
    v115 = v8;
    v116 = v9;
    v117 = v10;
    v14 = v111;
    v111[0] = v114;
    v111[1] = v8;
    v112 = v9 & 1 & v25;
    v113 = v10;
    v27 = &v121;
    v22 = &type metadata for Text;
    v23 = &protocol witness table for Text;
    sub_1000354E8(v111, &type metadata for Text, &v121);
    sub_10003CC74(v14);
    v15 = v121;
    v16 = v122;
    v17 = *(&v122 + 1);
    sub_10004AA70(v121, *(&v121 + 1), v122 & 1);

    v18 = &v106;
    v106 = v15;
    v107 = v16 & 1 & v25;
    v108 = v17;
    v26 = &v109;
    sub_1000354E8(&v106, v22, &v109);
    sub_10003CC74(v18);
    v19 = v109;
    v20 = v110;
    v21 = *(&v110 + 1);
    sub_10004AA70(v109, *(&v109 + 1), v110 & 1);

    v24 = &v98;
    v98 = v19;
    v99 = v20 & 1 & v25;
    v100 = v21;
    sub_1000365F0(&v98, v22, v22, v23, v23, &v101);
    sub_10003CC74(v24);
    v29 = v101;
    v30 = v102;
    v31 = v103;
    v32 = v104;
    v28 = v105;
    sub_100065E80(v101, v102, v103, v104);
    __b[0] = v29;
    __b[1] = v30;
    __b[2] = v31;
    __b[3] = v32;
    LOBYTE(__b[4]) = v28 & 1 & v25;
    sub_10003CC74(v26);
    sub_10003CC74(v27);
    v55 = v29;
    v56 = v30;
    v57 = v31;
    v58 = v32;
    v59 = v28;
  }

  v13 = v96;
  v96[0] = v55;
  v96[1] = v56;
  v96[2] = v57;
  v96[3] = v58;
  v97 = v59 & 1;
  v12 = sub_1000094DC(&qword_10009BE98, &qword_100080388);
  sub_100064044();
  sub_1000354E8(v13, v12, v62);
  sub_100064178(v13);
  return sub_100064178(__b);
}

uint64_t sub_100062F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_10007D118();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_10007D0E8();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_10007D078();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_100063100(uint64_t a1)
{
  v4 = a1;
  v1 = sub_10007D118();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_10007D088();
}

uint64_t type metadata accessor for MessageView(uint64_t a1)
{
  v2 = qword_10009BFA8;
  if (!qword_10009BFA8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_100063274()
{
  v2 = qword_10009BE58;
  if (!qword_10009BE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BE58);
    return WitnessTable;
  }

  return v2;
}

void *sub_1000632EC(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D118();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1000633C0(uint64_t a1)
{
  sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D118();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_10006345C(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1000633C0(a2);
    v4 = sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_10007D118();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_100063548()
{
  v15 = type metadata accessor for MessageView(0);
  v0 = *(*(v15 - 1) + 80);
  v16 = (v0 + 16) & ~v0;
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6A8();
    (*(*(v1 - 8) + 8))(v14 + v16);
  }

  else
  {
  }

  v10 = v14 + v16 + v15[5];

  v9 = type metadata accessor for Message(0);
  v8 = v10 + *(v9 + 32);
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 8))(v8);
  v11 = v10 + *(v9 + 60);
  v12 = sub_10007CD98();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1))
  {
    (*(v13 + 8))(v11, v12);
  }

  v6 = v14 + v16 + v15[8];
  v3 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  (*(*(v3 - 8) + 8))(v6);

  v7 = v14 + v16 + v15[12];
  sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10007D118();
    (*(*(v4 - 8) + 8))(v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

char *sub_1000638EC(char *a1, char *a2)
{
  v27 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v27 - 8) + 64));
  }

  v15 = type metadata accessor for MessageView(0);
  v18 = &a2[v15[5]];
  v20 = &a1[v15[5]];
  *v18 = *v20;
  *(v18 + 1) = *(v20 + 1);
  *(v18 + 2) = *(v20 + 2);
  *(v18 + 3) = *(v20 + 3);
  v19 = type metadata accessor for Message(0);
  v17 = &v18[v19[8]];
  v16 = &v20[v19[8]];
  v3 = sub_10007CE28();
  (*(*(v3 - 8) + 32))(v17, v16);
  v18[v19[9]] = v20[v19[9]];
  v18[v19[10]] = v20[v19[10]];
  v18[v19[11]] = v20[v19[11]];
  v18[v19[12]] = v20[v19[12]];
  v4 = &v18[v19[13]];
  v5 = &v20[v19[13]];
  *v4 = *v5;
  v4[8] = v5[8];
  v18[v19[14]] = v20[v19[14]];
  v21 = &v18[v19[15]];
  v22 = &v20[v19[15]];
  v23 = sub_10007CD98();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1))
  {
    v6 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(v21, v22, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v24 + 32))(v21, v22, v23);
    (*(v24 + 56))(v21, 0, 1, v23);
  }

  *&a2[v15[6]] = *&a1[v15[6]];
  a2[v15[7]] = a1[v15[7]];
  v11 = &a2[v15[8]];
  v10 = &a1[v15[8]];
  v7 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  (*(*(v7 - 8) + 32))(v11, v10);
  *&a2[v15[9]] = *&a1[v15[9]];
  *&a2[v15[10]] = *&a1[v15[10]];
  *&a2[v15[11]] = *&a1[v15[11]];
  __dst = &a2[v15[12]];
  __src = &a1[v15[12]];
  v14 = sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10007D118();
    (*(*(v8 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v14 - 8) + 64));
  }

  return a2;
}

uint64_t sub_100063E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for MessageView(0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_10005B528(a1, v4, a2);
}

unint64_t sub_100063E88()
{
  v2 = qword_10009BE70;
  if (!qword_10009BE70)
  {
    sub_100009860(&qword_10009BE68, &qword_100080358);
    sub_100063F2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100063F2C()
{
  v2 = qword_10009BE78;
  if (!qword_10009BE78)
  {
    sub_100009860(&qword_10009BE80, &qword_100080360);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100063FB4()
{
  v2 = qword_10009BE90;
  if (!qword_10009BE90)
  {
    sub_100009860(&qword_10009BE88, &qword_100080368);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100064044()
{
  v2 = qword_10009BEA0;
  if (!qword_10009BEA0)
  {
    sub_100009860(&qword_10009BE98, &qword_100080388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000640E0()
{
  v2 = qword_10009BEB0;
  if (!qword_10009BEB0)
  {
    sub_100009860(&qword_10009BEA8, &qword_100080390);
    sub_100064044();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100064230()
{
  v2 = qword_10009BEC0;
  if (!qword_10009BEC0)
  {
    sub_100009860(&qword_10009BEB8, &qword_100080398);
    sub_1000640E0();
    sub_10003CDA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BEC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1000642D8(uint64_t *a1)
{
  sub_1000641BC(*a1, a1[1], a1[2], a1[3]);

  return a1;
}

unint64_t sub_100064328()
{
  v2 = qword_10009BED0;
  if (!qword_10009BED0)
  {
    sub_100009860(&qword_10009BEC8, &qword_1000803A8);
    sub_100064230();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1000643D0(uint64_t *a1)
{
  sub_1000641BC(*a1, a1[1], a1[2], a1[3]);

  return a1;
}

unint64_t sub_100064438()
{
  v2 = qword_10009BEE0;
  if (!qword_10009BEE0)
  {
    sub_100009860(&qword_10009BED8, &qword_1000803B0);
    sub_1000644DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000644DC()
{
  v2 = qword_10009BEE8;
  if (!qword_10009BEE8)
  {
    sub_100009860(&qword_10009BEF0, &qword_1000803B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100064564()
{
  v2 = qword_10009BF00;
  if (!qword_10009BF00)
  {
    sub_100009860(&qword_10009BEF8, &qword_1000803C0);
    sub_100064438();
    sub_10003CDA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10006460C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_100064660()
{
  v2 = qword_10009BF10;
  if (!qword_10009BF10)
  {
    sub_100009860(&qword_10009BF08, &qword_1000803C8);
    sub_100064564();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100064708(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_100064774()
{
  v2 = qword_10009BF20;
  if (!qword_10009BF20)
  {
    sub_100009860(&qword_10009BF18, &unk_1000803D0);
    sub_100064660();
    sub_10003C648();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10006481C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

void *sub_1000648A8(void *a1, void *a2)
{
  v23 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v23 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v11 = (a2 + *(v2 + 36));
    v12 = (a1 + *(v2 + 36));
    *v11 = *v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v14 = v11 + *(v3 + 28);
    v13 = v12 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 32))(v14, v13);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
    v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v15 = (a2 + *(v7 + 36));
    v16 = (a1 + *(v7 + 36));
    *v15 = *v16;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    __dst = v15 + *(v8 + 28);
    v18 = v16 + *(v8 + 28);
    v19 = sub_10007D168();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, v18, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v20 + 32))(__dst, v18, v19);
      (*(v20 + 56))(__dst, 0, 1, v19);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_100064BC8(uint64_t *a1, void *a2)
{
  v34 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v34 - 8) + 64));
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v13 = (a2 + *(v2 + 36));
    v14 = (a1 + *(v2 + 36));
    v12 = *v14;

    *v13 = v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v16 = v13 + *(v3 + 28);
    v15 = v14 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 16))(v16, v15);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v19 = (a2 + *(v5 + 36));
    v18 = (a1 + *(v5 + 36));
    v17 = *v18;

    *v19 = v17;
    v20 = v18[1];

    v19[1] = v20;
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v23 = (a2 + *(v6 + 36));
    v22 = (a1 + *(v6 + 36));
    v21 = *v22;

    *v23 = v21;
    v24 = v22[1];

    v23[1] = v24;
    v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v26 = (a2 + *(v7 + 36));
    v27 = (a1 + *(v7 + 36));
    v25 = *v27;

    *v26 = v25;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v28 = v26 + *(v8 + 28);
    v29 = v27 + *(v8 + 28);
    v30 = sub_10007D168();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v28, v29, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v31 + 16))(v28, v29, v30);
      (*(v31 + 56))(v28, 0, 1, v30);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_100064F8C()
{
  v2 = qword_10009BF38;
  if (!qword_10009BF38)
  {
    sub_100009860(&qword_10009BF28, &unk_1000803E0);
    sub_10003C8A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100065030(uint64_t a1)
{
  sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
  if (!swift_getEnumCaseMultiPayload())
  {

    v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v4 = v3 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v1 = sub_10007D4D8();
    (*(*(v1 - 8) + 8))(v4);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v5 = a1 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

    v6 = v5 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v7 = sub_10007D168();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1))
    {
      (*(v8 + 8))(v6, v7);
    }
  }

  return a1;
}

unint64_t sub_100065268()
{
  v2 = qword_10009BF48;
  if (!qword_10009BF48)
  {
    sub_100009860(&qword_10009BF40, &qword_1000803F8);
    sub_100064328();
    sub_10003C648();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF48);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_100065310(uint64_t *a1)
{
  sub_1000641BC(*a1, a1[1], a1[2], a1[3]);

  return a1;
}

uint64_t sub_1000653B8(uint64_t a1, unsigned int a2, int *a3)
{
  v13 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a2 == *(*(v13 - 8) + 84))
  {
    return (*(*(v13 - 8) + 48))(a1, a2, v13);
  }

  else
  {
    v8 = type metadata accessor for Message(0);
    if (a2 == *(*(v8 - 8) + 84))
    {
      return (*(*(v8 - 8) + 48))(a1 + a3[5], a2, v8);
    }

    else
    {
      v7 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
      if (a2 == *(*(v7 - 8) + 84))
      {
        return (*(*(v7 - 8) + 48))(a1 + a3[8], a2, v7);
      }

      else if (a2 == 2147483646)
      {
        v6 = -1;
        if (*(a1 + a3[9] + 8) < &_mh_execute_header)
        {
          v6 = *(a1 + a3[9] + 8);
        }

        v3 = v6 - 1;
        if (v6 - 1 < 0)
        {
          v3 = -1;
        }

        return (v3 + 1);
      }

      else
      {
        v5 = sub_1000094DC(&qword_10009BE60, &unk_100080348);
        if (a2 == *(*(v5 - 8) + 84))
        {
          return (*(*(v5 - 8) + 48))(a1 + a3[12], a2, v5);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1000656F4(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v10 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1, a2, a2, v10);
  }

  v5 = type metadata accessor for Message(0);
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + a4[5], a2, a2, v5);
  }

  result = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + a4[8], a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
  }

  else
  {
    result = sub_1000094DC(&qword_10009BE60, &unk_100080348);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + a4[12], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1000659D8(uint64_t a1)
{
  v7 = sub_10003BE48(319);
  if (v1 <= 0x3F)
  {
    v7 = type metadata accessor for Message(319);
    if (v2 <= 0x3F)
    {
      v7 = sub_100065B7C(319);
      if (v3 <= 0x3F)
      {
        v7 = sub_100048820(319);
        if (v4 <= 0x3F)
        {
          v7 = sub_100065C18(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v7;
}

unint64_t sub_100065B7C(uint64_t a1)
{
  v5 = qword_10009BFB8;
  if (!qword_10009BFB8)
  {
    sub_100063274();
    v4 = sub_10007CF58();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009BFB8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100065C18(uint64_t a1)
{
  v5 = qword_10009BFC0;
  if (!qword_10009BFC0)
  {
    sub_10007D118();
    v4 = sub_10007CF18();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009BFC0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_100065CFC()
{
  sub_100009860(&qword_10009BEC8, &qword_1000803A8);
  sub_100064328();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065D6C()
{
  sub_100009860(&qword_10009BF40, &qword_1000803F8);
  sub_100065268();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065DDC()
{
  sub_100009860(&qword_10009BF18, &unk_1000803D0);
  sub_100064774();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100065EFC()
{
  v2 = qword_10009C018;
  if (!qword_10009C018)
  {
    sub_100009860(&qword_10009C010, &qword_100080818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C018);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100065F84(uint64_t a1)
{
  v67 = *(sub_1000094DC(&qword_10009C020, &qword_100080820) + 44);
  v68 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v69 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1 + v67 + v68 + v69, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = a1 + v67 + v68 + v69;

      v53 = v55 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v54 = v53 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v3 = sub_10007D4D8();
      (*(*(v3 - 8) + 8))(v54);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v56 = v55 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

      v57 = v56 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v58 = sub_10007D168();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v57, 1))
      {
        (*(v59 + 8))(v57, v58);
      }
    }

    else
    {
      v62 = a1 + v67 + v68 + v69;

      v60 = v62 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v61 = v60 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v2 = sub_10007D4D8();
      (*(*(v2 - 8) + 8))(v61);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v63 = v62 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

      v64 = v63 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v65 = sub_10007D168();
      v66 = *(v65 - 8);
      if (!(*(v66 + 48))(v64, 1))
      {
        (*(v66 + 8))(v64, v65);
      }
    }
  }

  v48 = a1 + v67 + v68;
  v45 = v48 + v69 + *(sub_1000094DC(&qword_10009C048, &qword_100080848) + 48);
  v46 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  v47 = *(*(v46 - 8) + 8);
  v47(v45);
  v49 = v48 + *(sub_1000094DC(&qword_10009C058, &qword_100080858) + 64);
  v4 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v4 - 8) + 8))(v49);
  sub_1000094DC(&qword_10009C068, &qword_100080868);

  v50 = sub_1000094DC(&qword_10009C070, &qword_100080870);
  v51 = a1 + v67 + *(v50 + 48);
  v52 = v51 + *(sub_1000094DC(&qword_10009C078, &qword_100080878) + 44);
  v5 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  if (!(*(*(v5 - 8) + 48))(v52, 1))
  {

    v39 = v52 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v40 = v39 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v6 = sub_10007D4D8();
    (*(*(v6 - 8) + 8))(v40);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v41 = v52 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

    v42 = v41 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v43 = sub_10007D168();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v42, 1))
    {
      (*(v44 + 8))(v42, v43);
    }
  }

  v35 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  (v47)(v52 + v35[12], v46);
  v36 = v52 + v35[20];
  v37 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v38 = *(*(v37 - 8) + 48);
  if (!(v38)(v36, 1))
  {

    v29 = v36 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v30 = v29 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v7 = sub_10007D4D8();
    (*(*(v7 - 8) + 8))(v30);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v31 = v36 + *(v37 + 36);

    v32 = v31 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v33 = sub_10007D168();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v32, 1))
    {
      (*(v34 + 8))(v32, v33);
    }
  }

  v28 = v52 + v35[24];
  if (!v38())
  {

    v22 = v28 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v23 = v22 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v8 = sub_10007D4D8();
    (*(*(v8 - 8) + 8))(v23);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v24 = v28 + *(v37 + 36);

    v25 = v24 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v26 = sub_10007D168();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v25, 1))
    {
      (*(v27 + 8))(v25, v26);
    }
  }

  v21 = v52 + v35[28];
  v9 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  if (!(*(*(v9 - 8) + 48))(v21, 1))
  {
    sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (!swift_getEnumCaseMultiPayload())
    {

      v15 = v21 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v16 = v15 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v10 = sub_10007D4D8();
      (*(*(v10 - 8) + 8))(v16);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v17 = v21 + *(v37 + 36);

      v18 = v17 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v19 = sub_10007D168();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v18, 1))
      {
        (*(v20 + 8))(v18, v19);
      }
    }
  }

  sub_1000094DC(&qword_10009C090, &qword_100080890);

  v13 = a1 + v67 + *(v50 + 64);
  v14 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  if (!(*(*(v14 - 8) + 48))(v13, 1))
  {
    v11 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
    (*(*(v11 - 8) + 8))(v13);
  }

  return a1;
}

uint64_t sub_100067070(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v251 = *(sub_1000094DC(&qword_10009C020, &qword_100080820) + 44);
  v252 = a2 + v251;
  *v252 = *(a1 + v251);
  *(v252 + 16) = *(a1 + v251 + 16);
  v253 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v255 = a1 + v251 + v253;
  v2 = a2 + v251 + v253;
  *v2 = *v255;
  *(v2 + 16) = *(v255 + 16);
  v254 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v256 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  v257 = *(v256 - 8);
  if ((*(v257 + 48))(v255 + v254, 1))
  {
    v20 = sub_1000094DC(&qword_10009C0A8, &qword_1000808A8);
    memcpy((a2 + v251 + v253 + v254), (a1 + v251 + v253 + v254), *(*(v20 - 8) + 64));
  }

  else
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v218 = (a1 + v251 + v253 + v254);
      v203 = *v218;

      v217 = (a2 + v251 + v253 + v254);
      *v217 = v203;
      v11 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v205 = (v217 + *(v11 + 36));
      v206 = (v218 + *(v11 + 36));
      v204 = *v206;

      *v205 = v204;
      v12 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v208 = v205 + *(v12 + 28);
      v207 = v206 + *(v12 + 28);
      v13 = sub_10007D4D8();
      (*(*(v13 - 8) + 16))(v208, v207);
      v14 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v211 = (v217 + *(v14 + 36));
      v210 = (v218 + *(v14 + 36));
      v209 = *v210;

      *v211 = v209;
      v212 = v210[1];

      v211[1] = v212;
      v15 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v215 = (v217 + *(v15 + 36));
      v214 = (v218 + *(v15 + 36));
      v213 = *v214;

      *v215 = v213;
      v216 = v214[1];

      v215[1] = v216;
      v16 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v220 = (v217 + *(v16 + 36));
      v221 = (v218 + *(v16 + 36));
      v219 = *v221;

      *v220 = v219;
      v17 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      __dst = v220 + *(v17 + 28);
      __src = v221 + *(v17 + 28);
      v224 = sub_10007D168();
      v225 = *(v224 - 8);
      if ((*(v225 + 48))(__src, 1))
      {
        v18 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v225 + 16))(__dst, __src, v224);
        (*(v225 + 56))(__dst, 0, 1, v224);
      }
    }

    else
    {
      v241 = (a1 + v251 + v253 + v254);
      v226 = *v241;

      v240 = (a2 + v251 + v253 + v254);
      *v240 = v226;
      v3 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v228 = (v240 + *(v3 + 36));
      v229 = (v241 + *(v3 + 36));
      v227 = *v229;

      *v228 = v227;
      v4 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v231 = v228 + *(v4 + 28);
      v230 = v229 + *(v4 + 28);
      v5 = sub_10007D4D8();
      (*(*(v5 - 8) + 16))(v231, v230);
      v6 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v234 = (v240 + *(v6 + 36));
      v233 = (v241 + *(v6 + 36));
      v232 = *v233;

      *v234 = v232;
      v235 = v233[1];

      v234[1] = v235;
      v7 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v238 = (v240 + *(v7 + 36));
      v237 = (v241 + *(v7 + 36));
      v236 = *v237;

      *v238 = v236;
      v239 = v237[1];

      v238[1] = v239;
      v8 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v243 = (v240 + *(v8 + 36));
      v244 = (v241 + *(v8 + 36));
      v242 = *v244;

      *v243 = v242;
      v9 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v245 = v243 + *(v9 + 28);
      v246 = v244 + *(v9 + 28);
      v247 = sub_10007D168();
      v248 = *(v247 - 8);
      if ((*(v248 + 48))(v246, 1))
      {
        v10 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v245, v246, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v248 + 16))(v245, v246, v247);
        (*(v248 + 56))(v245, 0, 1, v247);
      }
    }

    v19 = sub_1000094DC(&qword_10009C080, &qword_100080880);
    memcpy((a2 + v251 + v253 + v254 + *(v19 + 36)), (a1 + v251 + v253 + v254 + *(v19 + 36)), 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v257 + 56))(a2 + v251 + v253 + v254, 0, 1, v256);
  }

  v21 = sub_1000094DC(&qword_10009C048, &qword_100080848);
  v186 = a2 + v251 + v253;
  v183 = v186 + v254 + *(v21 + 48);
  v187 = a1 + v251 + v253;
  v182 = v187 + v254 + *(v21 + 48);
  v184 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  v185 = *(*(v184 - 8) + 16);
  v185(v183, v182);
  v22 = sub_1000094DC(&qword_10009C058, &qword_100080858);
  v23 = v186 + *(v22 + 48);
  v24 = v187 + *(v22 + 48);
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  v189 = v186 + *(v22 + 64);
  v188 = v187 + *(v22 + 64);
  v25 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v25 - 8) + 16))(v189, v188);
  v26 = sub_1000094DC(&qword_10009C0B0, &qword_1000808B0);
  *(v189 + *(v26 + 36)) = *(v188 + *(v26 + 36));
  v27 = sub_1000094DC(&qword_10009C068, &qword_100080868);
  v195 = a2 + v251 + *(v27 + 36);
  v194 = a1 + v251 + *(v27 + 36);
  v190 = *v194;
  v191 = *(v194 + 8);

  *v195 = v190;
  *(v195 + 8) = v191;
  v192 = *(v194 + 16);
  v193 = *(v194 + 24);

  *(v195 + 16) = v192;
  *(v195 + 24) = v193;
  *(v195 + 32) = *(v194 + 32);
  v196 = sub_1000094DC(&qword_10009C070, &qword_100080870);
  v197 = a2 + v251 + *(v196 + 48);
  v198 = a1 + v251 + *(v196 + 48);
  *v197 = *v198;
  *(v197 + 16) = *(v198 + 16);
  v28 = sub_1000094DC(&qword_10009C078, &qword_100080878);
  v199 = (v197 + *(v28 + 44));
  v200 = (v198 + *(v28 + 44));
  v201 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  v202 = *(v201 - 8);
  if ((*(v202 + 48))(v200, 1))
  {
    v37 = sub_1000094DC(&qword_10009C0B8, &qword_1000808B8);
    memcpy(v199, v200, *(*(v37 - 8) + 64));
  }

  else
  {
    v161 = *v200;

    *v199 = v161;
    v29 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v163 = (v199 + *(v29 + 36));
    v164 = (v200 + *(v29 + 36));
    v162 = *v164;

    *v163 = v162;
    v30 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v166 = v163 + *(v30 + 28);
    v165 = v164 + *(v30 + 28);
    v31 = sub_10007D4D8();
    (*(*(v31 - 8) + 16))(v166, v165);
    v32 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v169 = (v199 + *(v32 + 36));
    v168 = (v200 + *(v32 + 36));
    v167 = *v168;

    *v169 = v167;
    v170 = v168[1];

    v169[1] = v170;
    v33 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v173 = (v199 + *(v33 + 36));
    v172 = (v200 + *(v33 + 36));
    v171 = *v172;

    *v173 = v171;
    v174 = v172[1];

    v173[1] = v174;
    v34 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v176 = (v199 + *(v34 + 36));
    v177 = (v200 + *(v34 + 36));
    v175 = *v177;

    *v176 = v175;
    v35 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v178 = v176 + *(v35 + 28);
    v179 = v177 + *(v35 + 28);
    v180 = sub_10007D168();
    v181 = *(v180 - 8);
    if ((*(v181 + 48))(v179, 1))
    {
      v36 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v178, v179, *(*(v36 - 8) + 64));
    }

    else
    {
      (*(v181 + 16))(v178, v179, v180);
      (*(v181 + 56))(v178, 0, 1, v180);
    }

    memcpy(v199 + *(v201 + 36), v200 + *(v201 + 36), 0x30uLL);
    (*(v202 + 56))(v199, 0, 1, v201);
  }

  v155 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  (v185)(v199 + v155[12], v200 + v155[12], v184);
  v38 = v199 + v155[16];
  v39 = v200 + v155[16];
  *v38 = *v39;
  v38[8] = v39[8];
  v156 = (v199 + v155[20]);
  v157 = (v200 + v155[20]);
  v158 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v159 = *(v158 - 8);
  v160 = *(v159 + 48);
  if ((v160)(v157, 1))
  {
    v47 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(v156, v157, *(*(v47 - 8) + 64));
  }

  else
  {
    v134 = *v157;

    *v156 = v134;
    v40 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v136 = (v156 + *(v40 + 36));
    v137 = (v157 + *(v40 + 36));
    v135 = *v137;

    *v136 = v135;
    v41 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v139 = v136 + *(v41 + 28);
    v138 = v137 + *(v41 + 28);
    v42 = sub_10007D4D8();
    (*(*(v42 - 8) + 16))(v139, v138);
    v43 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v142 = (v156 + *(v43 + 36));
    v141 = (v157 + *(v43 + 36));
    v140 = *v141;

    *v142 = v140;
    v143 = v141[1];

    v142[1] = v143;
    v44 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v146 = (v156 + *(v44 + 36));
    v145 = (v157 + *(v44 + 36));
    v144 = *v145;

    *v146 = v144;
    v147 = v145[1];

    v146[1] = v147;
    v149 = (v156 + *(v158 + 36));
    v150 = (v157 + *(v158 + 36));
    v148 = *v150;

    *v149 = v148;
    v45 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v151 = v149 + *(v45 + 28);
    v152 = v150 + *(v45 + 28);
    v153 = sub_10007D168();
    v154 = *(v153 - 8);
    if ((*(v154 + 48))(v152, 1))
    {
      v46 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v151, v152, *(*(v46 - 8) + 64));
    }

    else
    {
      (*(v154 + 16))(v151, v152, v153);
      (*(v154 + 56))(v151, 0, 1, v153);
    }

    (*(v159 + 56))(v156, 0, 1, v158);
  }

  v132 = (v199 + v155[24]);
  v133 = (v200 + v155[24]);
  if (v160())
  {
    v55 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(v132, v133, *(*(v55 - 8) + 64));
  }

  else
  {
    v111 = *v133;

    *v132 = v111;
    v48 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v113 = (v132 + *(v48 + 36));
    v114 = (v133 + *(v48 + 36));
    v112 = *v114;

    *v113 = v112;
    v49 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v116 = v113 + *(v49 + 28);
    v115 = v114 + *(v49 + 28);
    v50 = sub_10007D4D8();
    (*(*(v50 - 8) + 16))(v116, v115);
    v51 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v119 = (v132 + *(v51 + 36));
    v118 = (v133 + *(v51 + 36));
    v117 = *v118;

    *v119 = v117;
    v120 = v118[1];

    v119[1] = v120;
    v52 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v123 = (v132 + *(v52 + 36));
    v122 = (v133 + *(v52 + 36));
    v121 = *v122;

    *v123 = v121;
    v124 = v122[1];

    v123[1] = v124;
    v126 = (v132 + *(v158 + 36));
    v127 = (v133 + *(v158 + 36));
    v125 = *v127;

    *v126 = v125;
    v53 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v128 = v126 + *(v53 + 28);
    v129 = v127 + *(v53 + 28);
    v130 = sub_10007D168();
    v131 = *(v130 - 8);
    if ((*(v131 + 48))(v129, 1))
    {
      v54 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v128, v129, *(*(v54 - 8) + 64));
    }

    else
    {
      (*(v131 + 16))(v128, v129, v130);
      (*(v131 + 56))(v128, 0, 1, v130);
    }

    (*(v159 + 56))(v132, 0, 1, v158);
  }

  v107 = (v199 + v155[28]);
  v108 = (v200 + v155[28]);
  v109 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  v110 = *(v109 - 8);
  if ((*(v110 + 48))(v108, 1))
  {
    v63 = sub_1000094DC(&qword_10009C0C8, &qword_1000808C8);
    memcpy(v107, v108, *(*(v63 - 8) + 64));
  }

  else
  {
    v106 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v107, v108, *(*(v106 - 8) + 64));
    }

    else
    {
      v85 = *v108;

      *v107 = v85;
      v56 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v87 = (v107 + *(v56 + 36));
      v88 = (v108 + *(v56 + 36));
      v86 = *v88;

      *v87 = v86;
      v57 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v90 = v87 + *(v57 + 28);
      v89 = v88 + *(v57 + 28);
      v58 = sub_10007D4D8();
      (*(*(v58 - 8) + 16))(v90, v89);
      v59 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v93 = (v107 + *(v59 + 36));
      v92 = (v108 + *(v59 + 36));
      v91 = *v92;

      *v93 = v91;
      v94 = v92[1];

      v93[1] = v94;
      v60 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v97 = (v107 + *(v60 + 36));
      v96 = (v108 + *(v60 + 36));
      v95 = *v96;

      *v97 = v95;
      v98 = v96[1];

      v97[1] = v98;
      v100 = (v107 + *(v158 + 36));
      v101 = (v108 + *(v158 + 36));
      v99 = *v101;

      *v100 = v99;
      v61 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v102 = v100 + *(v61 + 28);
      v103 = v101 + *(v61 + 28);
      v104 = sub_10007D168();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1))
      {
        v62 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v102, v103, *(*(v62 - 8) + 64));
      }

      else
      {
        (*(v105 + 16))(v102, v103, v104);
        (*(v105 + 56))(v102, 0, 1, v104);
      }

      swift_storeEnumTagMultiPayload();
    }

    (*(v110 + 56))(v107, 0, 1, v109);
  }

  v64 = sub_1000094DC(&qword_10009C090, &qword_100080890);
  v80 = v197 + *(v64 + 36);
  v79 = v198 + *(v64 + 36);
  v75 = *v79;
  v76 = *(v79 + 8);

  *v80 = v75;
  *(v80 + 8) = v76;
  v77 = *(v79 + 16);
  v78 = *(v79 + 24);

  *(v80 + 16) = v77;
  *(v80 + 24) = v78;
  *(v80 + 32) = *(v79 + 32);
  v81 = (a2 + v251 + *(v196 + 64));
  v82 = (a1 + v251 + *(v196 + 64));
  v83 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  v84 = *(v83 - 8);
  if ((*(v84 + 48))(v82, 1))
  {
    v66 = sub_1000094DC(&qword_10009C0D0, &qword_1000808D0);
    memcpy(v81, v82, *(*(v66 - 8) + 64));
  }

  else
  {
    v65 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
    (*(*(v65 - 8) + 16))(v81, v82);
    v74 = &v81[*(v83 + 36)];
    v73 = &v82[*(v83 + 36)];
    v69 = *v73;
    v70 = *(v73 + 1);

    *v74 = v69;
    *(v74 + 1) = v70;
    v71 = *(v73 + 2);
    v72 = *(v73 + 3);

    *(v74 + 2) = v71;
    *(v74 + 3) = v72;
    *(v74 + 2) = *(v73 + 2);
    (*(v84 + 56))(v81, 0, 1, v83);
  }

  v67 = sub_1000094DC(&qword_10009BE68, &qword_100080358);
  memcpy((a2 + *(v67 + 36)), (a1 + *(v67 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_100069138()
{
  v2 = qword_10009C0F0;
  if (!qword_10009C0F0)
  {
    sub_100009860(&qword_10009C0E8, &qword_1000808E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000691C0()
{
  v2 = qword_10009C0F8;
  if (!qword_10009C0F8)
  {
    sub_100009860(&qword_10009C0E0, &qword_1000808E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C0F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100069248(uint64_t a1)
{
  v23 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v24 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1 + v23 + v24, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = a1 + v23 + v24;

      v9 = v11 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v10 = v9 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v3 = sub_10007D4D8();
      (*(*(v3 - 8) + 8))(v10);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v12 = v11 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

      v13 = v12 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v14 = sub_10007D168();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v13, 1))
      {
        (*(v15 + 8))(v13, v14);
      }
    }

    else
    {
      v18 = a1 + v23 + v24;

      v16 = v18 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v17 = v16 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v2 = sub_10007D4D8();
      (*(*(v2 - 8) + 8))(v17);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v19 = v18 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

      v20 = v19 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v21 = sub_10007D168();
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(v20, 1))
      {
        (*(v22 + 8))(v20, v21);
      }
    }
  }

  v7 = a1 + v23 + v24 + *(sub_1000094DC(&qword_10009C048, &qword_100080848) + 48);
  v4 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v4 - 8) + 8))(v7);
  v8 = a1 + v23 + *(sub_1000094DC(&qword_10009C058, &qword_100080858) + 64);
  v5 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v5 - 8) + 8))(v8);
  return a1;
}

unint64_t sub_100069818()
{
  v2 = qword_10009C100;
  if (!qword_10009C100)
  {
    sub_100009860(&qword_10009C068, &qword_100080868);
    sub_1000691C0();
    sub_1000497DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C100);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000698C0(uint64_t a1)
{
  v23 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v24 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1 + v23 + v24, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = a1 + v23 + v24;

      v9 = v11 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v10 = v9 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v3 = sub_10007D4D8();
      (*(*(v3 - 8) + 8))(v10);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v12 = v11 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

      v13 = v12 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v14 = sub_10007D168();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v13, 1))
      {
        (*(v15 + 8))(v13, v14);
      }
    }

    else
    {
      v18 = a1 + v23 + v24;

      v16 = v18 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v17 = v16 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v2 = sub_10007D4D8();
      (*(*(v2 - 8) + 8))(v17);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v19 = v18 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

      v20 = v19 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v21 = sub_10007D168();
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(v20, 1))
      {
        (*(v22 + 8))(v20, v21);
      }
    }
  }

  v7 = a1 + v23 + v24 + *(sub_1000094DC(&qword_10009C048, &qword_100080848) + 48);
  v4 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v4 - 8) + 8))(v7);
  v8 = a1 + v23 + *(sub_1000094DC(&qword_10009C058, &qword_100080858) + 64);
  v5 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v5 - 8) + 8))(v8);
  sub_1000094DC(&qword_10009C068, &qword_100080868);

  return a1;
}

unint64_t sub_100069ED8()
{
  v2 = qword_10009C110;
  if (!qword_10009C110)
  {
    sub_100009860(&qword_10009C108, &qword_100080918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100069F60()
{
  v2 = qword_10009C118;
  if (!qword_10009C118)
  {
    sub_100009860(&qword_10009C0D8, &qword_1000808D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100069FE8(uint64_t a1)
{
  v40 = *(sub_1000094DC(&qword_10009C078, &qword_100080878) + 44);
  v1 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  if (!(*(*(v1 - 8) + 48))(a1 + v40, 1))
  {

    v34 = a1 + v40 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v35 = v34 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v2 = sub_10007D4D8();
    (*(*(v2 - 8) + 8))(v35);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v36 = a1 + v40 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

    v37 = v36 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v38 = sub_10007D168();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v37, 1))
    {
      (*(v39 + 8))(v37, v38);
    }
  }

  v30 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  v29 = a1 + v40 + v30[12];
  v3 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v3 - 8) + 8))(v29);
  v31 = a1 + v40 + v30[20];
  v32 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v33 = *(*(v32 - 8) + 48);
  if (!(v33)(v31, 1))
  {

    v23 = v31 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v24 = v23 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 8))(v24);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v25 = v31 + *(v32 + 36);

    v26 = v25 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v27 = sub_10007D168();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v26, 1))
    {
      (*(v28 + 8))(v26, v27);
    }
  }

  v22 = a1 + v40 + v30[24];
  if (!v33())
  {

    v16 = v22 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v17 = v16 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v5 = sub_10007D4D8();
    (*(*(v5 - 8) + 8))(v17);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v18 = v22 + *(v32 + 36);

    v19 = v18 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v20 = sub_10007D168();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v19, 1))
    {
      (*(v21 + 8))(v19, v20);
    }
  }

  v15 = a1 + v40 + v30[28];
  v6 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  if (!(*(*(v6 - 8) + 48))(v15, 1))
  {
    sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (!swift_getEnumCaseMultiPayload())
    {

      v9 = v15 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

      v10 = v9 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v7 = sub_10007D4D8();
      (*(*(v7 - 8) + 8))(v10);
      sub_1000094DC(&qword_10009B4B8, &unk_100080370);

      sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

      v11 = v15 + *(v32 + 36);

      v12 = v11 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v13 = sub_10007D168();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v12, 1))
      {
        (*(v14 + 8))(v12, v13);
      }
    }
  }

  return a1;
}