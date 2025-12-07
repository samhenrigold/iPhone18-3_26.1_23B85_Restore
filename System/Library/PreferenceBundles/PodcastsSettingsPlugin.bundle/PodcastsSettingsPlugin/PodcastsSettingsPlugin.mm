uint64_t sub_1A88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_176EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CFC(&qword_248F0, &qword_19020);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AutomaticDownloadsSettingsSection(0);
  sub_3518(v1 + *(v10 + 20), v9, &qword_248F0, &qword_19020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_173AC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_17D3C();
    v13 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C90()
{
  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x800000000001C8B0;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v1, v3);
  v2._object = 0x800000000001C8D0;
  v2._countAndFlagsBits = 0xD000000000000011;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  sub_2CFC(&qword_248C0, &qword_18858);
  sub_3070();
  return sub_17B3C();
}

uint64_t sub_1D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1734C();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = __chkstk_darwin(v3);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v46 - v6;
  v7 = type metadata accessor for AutomaticDownloadsSettingsSection(0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_2CFC(&qword_248D0, &qword_18860);
  v50 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v46 - v10;
  v11 = sub_173AC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = sub_2CFC(&qword_248D8, &qword_18868);
  v19 = __chkstk_darwin(v18 - 8);
  v51 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v49 = &v46 - v21;
  v22 = a1;
  sub_1A88(v17);
  sub_1739C();
  sub_311C(&qword_248E0, &type metadata accessor for DeviceCapabilities, &protocol conformance descriptor for DeviceCapabilities);
  LOBYTE(a1) = sub_17E2C();
  v23 = *(v12 + 8);
  v23(v15, v11);
  v23(v17, v11);
  if (a1)
  {
    v59._object = 0x800000000001C8F0;
    v59._countAndFlagsBits = 0xD000000000000018;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v57 = sub_1737C(v59, v60);
    v58 = v24;
    sub_31CC(v22, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_17D0C();
    v25 = sub_17CFC();
    v26 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = &protocol witness table for MainActor;
    sub_3234(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    sub_31CC(v22, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = sub_17CFC();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_3234(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v26);
    sub_17AEC();
    sub_34C4();
    v30 = v48;
    sub_17ADC();
    v32 = v49;
    v31 = v50;
    (*(v50 + 32))(v49, v30, v9);
    v33 = 0;
    v34 = v9;
    v35 = v31;
  }

  else
  {
    v33 = 1;
    v34 = v9;
    v32 = v49;
    v35 = v50;
  }

  (*(v35 + 56))(v32, v33, 1, v34);
  v36 = v52;
  sub_1733C();
  v37 = v51;
  sub_3518(v32, v51, &qword_248D8, &qword_18868);
  v39 = v55;
  v38 = v56;
  v40 = *(v55 + 16);
  v41 = v53;
  v40(v53, v36, v56);
  v42 = v54;
  sub_3518(v37, v54, &qword_248D8, &qword_18868);
  v43 = sub_2CFC(&qword_248E8, &unk_18870);
  v40((v42 + *(v43 + 48)), v41, v38);
  v44 = *(v39 + 8);
  v44(v36, v38);
  sub_3164(v32);
  v44(v41, v38);
  return sub_3164(v37);
}

uint64_t sub_23AC(uint64_t *a1)
{
  if (sub_16D14(2, 26, 0, 0))
  {
    sub_1778C();

    return sub_1761C();
  }

  else
  {
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    sub_1761C();
    sub_17DFC();
    swift_getWitnessTable();
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    return sub_1761C();
  }
}

uint64_t sub_2510(uint64_t *a1)
{
  if (sub_16D14(2, 26, 0, 0))
  {
    sub_1778C();
    sub_1761C();
  }

  else
  {
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    sub_1761C();
    sub_17DFC();
    swift_getWitnessTable();
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    sub_1761C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2710@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 33) = a2;
  sub_2AD4(a3, a4, a5 & 1);
}

uint64_t sub_2770@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (sub_16D14(2, 26, 4, 0))
  {
    v31 = a7;
    v32 = a8;
    v33 = v9;
    v30 = sub_1760C();
    v18 = *(v30 - 8);
    __chkstk_darwin(v30);
    v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_17E9C(17);

      strcpy(v35, "View.task @ ");
      BYTE5(v35[1]) = 0;
      HIWORD(v35[1]) = -5120;
      v37._countAndFlagsBits = a4;
      v37._object = a5;
      sub_17C8C(v37);
      v38._countAndFlagsBits = 58;
      v38._object = 0xE100000000000000;
      sub_17C8C(v38);
      v34 = a6;
      v39._countAndFlagsBits = sub_17F4C();
      sub_17C8C(v39);
    }

    v25 = sub_17D2C();
    __chkstk_darwin(v25);
    (*(v27 + 16))(&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_175FC();
    sub_2C8C(v33, a9);
    v28 = sub_2CFC(&qword_24800, &unk_18770);
    return (*(v18 + 32))(a9 + *(v28 + 36), v20, v30);
  }

  else
  {
    v21 = (a9 + *(sub_2CFC(&qword_24808, &qword_19010) + 36));
    v22 = *(sub_1758C() + 20);
    v23 = sub_17D2C();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;

    return sub_2C8C(v9, a9);
  }
}

uint64_t sub_2AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2AE4(uint64_t *a1)
{
  if (sub_16D14(2, 26, 4, 0))
  {
    sub_1760C();
  }

  else
  {
    sub_1758C();
  }

  return sub_1761C();
}

uint64_t sub_2B4C(uint64_t *a1)
{
  if (sub_16D14(2, 26, 4, 0))
  {
    sub_1760C();
    sub_1761C();
    sub_2C40();
  }

  else
  {
    sub_1758C();
    sub_1761C();
    sub_311C(&qword_247F0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_2C40()
{
  result = qword_247E8;
  if (!qword_247E8)
  {
    sub_1760C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_247E8);
  }

  return result;
}

uint64_t sub_2C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_247F8, &qword_18F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2CFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2D80(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2CFC(&qword_24818, "v");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2E50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2CFC(&qword_24818, "v");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AutomaticDownloadsSettingsSection(uint64_t a1)
{
  result = qword_24878;
  if (!qword_24878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F4C(uint64_t a1)
{
  sub_35A8(319, &qword_24888, &type metadata for Bool, &type metadata accessor for AppStorage);
  if (v1 <= 0x3F)
  {
    sub_2FF4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2FF4(uint64_t a1)
{
  if (!qword_24890)
  {
    sub_173AC();
    v1 = sub_1752C();
    if (!v2)
    {
      atomic_store(v1, &qword_24890);
    }
  }
}

unint64_t sub_3070()
{
  result = qword_248C8;
  if (!qword_248C8)
  {
    sub_30D4(&qword_248C0, &qword_18858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248C8);
  }

  return result;
}

uint64_t sub_30D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_311C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3164(uint64_t a1)
{
  v2 = sub_2CFC(&qword_248D8, &qword_18868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_31CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticDownloadsSettingsSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticDownloadsSettingsSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_3298@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for AutomaticDownloadsSettingsSection(0);
  result = sub_174BC();
  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_331C()
{
  v1 = (type metadata accessor for AutomaticDownloadsSettingsSection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  sub_2CFC(&qword_248F0, &qword_19020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_173AC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_34C4()
{
  result = qword_248F8;
  if (!qword_248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248F8);
  }

  return result;
}

uint64_t sub_3518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2CFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_35A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_35FC()
{
  result = qword_24908;
  if (!qword_24908)
  {
    sub_30D4(&qword_24910, qword_18898);
    sub_3070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24908);
  }

  return result;
}

uint64_t sub_36BC(uint64_t a1)
{
  v2._countAndFlagsBits = 0x445F454453495045;
  v2._object = 0xEE0059414C505349;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  v3._object = 0x800000000001C9A0;
  v3._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1737C(v3, v5);
  sub_2CFC(&qword_248D0, &qword_18860);
  sub_3870();
  return sub_17B3C();
}

uint64_t sub_37C0(uint64_t a1)
{
  v2._object = 0x800000000001C9C0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v2, v3);
  sub_174DC();
  sub_34C4();
  return sub_17ADC();
}

unint64_t sub_3870()
{
  result = qword_24918;
  if (!qword_24918)
  {
    sub_30D4(&qword_248D0, &qword_18860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24918);
  }

  return result;
}

unint64_t sub_38D8()
{
  result = qword_24920;
  if (!qword_24920)
  {
    sub_30D4(&qword_24928, qword_18970);
    sub_3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24920);
  }

  return result;
}

uint64_t sub_397C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2CFC(&qword_24818, "v");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_3A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2CFC(&qword_24818, "v");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DownloadsSettingsSection(uint64_t a1)
{
  result = qword_24988;
  if (!qword_24988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3B48(uint64_t a1)
{
  sub_3BCC();
  if (v1 <= 0x3F)
  {
    sub_2FF4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3BCC()
{
  if (!qword_24888)
  {
    v0 = sub_174EC();
    if (!v1)
    {
      atomic_store(v0, &qword_24888);
    }
  }
}

uint64_t sub_3C38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_176EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CFC(&qword_248F0, &qword_19020);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DownloadsSettingsSection(0);
  sub_3518(v1 + *(v10 + 24), v9, &qword_248F0, &qword_19020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_173AC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_17D3C();
    v13 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_3E40()
{
  v1._countAndFlagsBits = 0x44414F4C4E574F44;
  v1._object = 0xE900000000000053;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v1, v3);
  v2._object = 0x800000000001C9E0;
  v2._countAndFlagsBits = 0xD000000000000015;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  sub_2CFC(&qword_249C8, &unk_18A10);
  sub_4540();
  return sub_17B3C();
}

uint64_t sub_3F3C@<X0>(uint64_t a2@<X8>)
{
  v53 = a2;
  v2 = sub_2CFC(&qword_248D0, &qword_18860);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = __chkstk_darwin(v2);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v51 = &v44 - v6;
  v7 = __chkstk_darwin(v5);
  v48 = &v44 - v8;
  __chkstk_darwin(v7);
  v54 = &v44 - v9;
  v10 = type metadata accessor for CellularDownloadsPicker(0);
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_173AC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = sub_2CFC(&qword_249D8, &qword_18A20);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v44 - v23;
  sub_3C38(v19);
  sub_1739C();
  sub_45A4();
  v25 = sub_17E2C();
  v26 = *(v14 + 8);
  v26(v17, v13);
  v26(v19, v13);
  if (v25)
  {
    *v12 = swift_getKeyPath();
    sub_2CFC(&qword_249E8, &unk_18A60);
    swift_storeEnumTagMultiPayload();
    v27 = *(v10 + 20);
    sub_17C5C();
    v28 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    *(v12 + v27) = sub_174AC();
    sub_466C(v12, v24);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v46 + 56))(v24, v29, 1, v10);
  v57._object = 0x800000000001CA00;
  v57._countAndFlagsBits = 0xD000000000000014;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v55 = sub_1737C(v57, v59);
  v56 = v30;
  v45 = v24;
  sub_174DC();
  sub_34C4();
  v31 = v54;
  sub_17ADC();
  v58._countAndFlagsBits = 0xD00000000000001ELL;
  v58._object = 0x800000000001CA20;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v55 = sub_1737C(v58, v60);
  v56 = v32;
  sub_174DC();
  v33 = v48;
  sub_17ADC();
  v34 = v47;
  sub_3518(v24, v47, &qword_249D8, &qword_18A20);
  v35 = v49;
  v36 = v50;
  v37 = *(v49 + 16);
  v38 = v51;
  v37(v51, v31, v50);
  v39 = v52;
  v37(v52, v33, v36);
  v40 = v53;
  sub_3518(v34, v53, &qword_249D8, &qword_18A20);
  v41 = sub_2CFC(&qword_249E0, &qword_18A28);
  v37((v40 + *(v41 + 48)), v38, v36);
  v37((v40 + *(v41 + 64)), v39, v36);
  v42 = *(v35 + 8);
  v42(v33, v36);
  v42(v54, v36);
  sub_45FC(v45);
  v42(v39, v36);
  v42(v38, v36);
  return sub_45FC(v34);
}

unint64_t sub_4540()
{
  result = qword_249D0;
  if (!qword_249D0)
  {
    sub_30D4(&qword_249C8, &unk_18A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_249D0);
  }

  return result;
}

unint64_t sub_45A4()
{
  result = qword_248E0;
  if (!qword_248E0)
  {
    sub_173AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248E0);
  }

  return result;
}

uint64_t sub_45FC(uint64_t a1)
{
  v2 = sub_2CFC(&qword_249D8, &qword_18A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_466C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellularDownloadsPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_46D4()
{
  result = qword_249F0;
  if (!qword_249F0)
  {
    sub_30D4(&qword_249F8, &unk_18A70);
    sub_4540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_249F0);
  }

  return result;
}

uint64_t sub_4790(uint64_t a1)
{
  v2._object = 0x800000000001CA40;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v2, v3);
  sub_174DC();
  sub_34C4();
  return sub_17ADC();
}

uint64_t sub_4830()
{
  v1._countAndFlagsBits = 0x4B43414259414C50;
  v1._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v1, v3);
  v2._object = 0xEC0000005049545FLL;
  v2._countAndFlagsBits = 0x4B43414259414C50;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  sub_2CFC(&qword_248D0, &qword_18860);
  sub_3870();
  return sub_17B3C();
}

uint64_t sub_4930@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_176EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CFC(&qword_249E8, &unk_18A60);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_3518(v2, &v13 - v9, &qword_249E8, &unk_18A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_6318(v10, a1);
  }

  sub_17D3C();
  v12 = sub_1787C();
  sub_1740C();

  sub_176DC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_4B00@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v95 = sub_1736C();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2CFC(&qword_24AC0, &qword_18C60);
  __chkstk_darwin(v2 - 8);
  v94 = v79 - v3;
  v97 = sub_1728C();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v84 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1723C();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v91 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_172AC();
  v115 = *(v113 - 8);
  v6 = __chkstk_darwin(v113);
  v89 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = v79 - v8;
  v112 = sub_17C2C();
  v117 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v111 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = v79 - v11;
  v83 = sub_1724C();
  v102 = *(v83 - 8);
  __chkstk_darwin(v83);
  v101 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1777C();
  v105 = *(v13 - 8);
  __chkstk_darwin(v13);
  v104 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CFC(&qword_24AC8, &qword_18C68);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = v79 - v17;
  v19 = sub_2CFC(&qword_24A88, qword_19370);
  v20 = __chkstk_darwin(v19 - 8);
  v106 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = v79 - v23;
  __chkstk_darwin(v22);
  v26 = v79 - v25;
  v100 = sub_177AC();
  v110 = *(v100 - 8);
  __chkstk_darwin(v100);
  v109 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2CFC(&qword_24AD0, &qword_18C70);
  v108 = *(v98 - 8);
  __chkstk_darwin(v98);
  v29 = v79 - v28;
  v82 = sub_2CFC(&qword_24AD8, &qword_18C78);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v99 = v79 - v30;
  v124._object = 0x800000000001CA60;
  v124._countAndFlagsBits = 0xD000000000000012;
  v125._countAndFlagsBits = 0;
  v125._object = 0xE000000000000000;
  v122 = sub_1737C(v124, v125);
  v123 = v31;
  type metadata accessor for CellularDownloadsPicker(0);
  sub_174DC();
  sub_2CFC(&qword_24AE0, &qword_18C80);
  sub_623C();
  sub_34C4();
  v107 = v29;
  v32 = v105;
  sub_17ABC();
  sub_4930(v26);
  v32[13](v24, enum case for UserInterfaceSizeClass.compact(_:), v13);
  (v32[7])(v24, 0, 1, v13);
  v33 = *(v16 + 56);
  sub_3518(v26, v18, &qword_24A88, qword_19370);
  sub_3518(v24, &v18[v33], &qword_24A88, qword_19370);
  v34 = v32[6];
  if (v34(v18, 1, v13) == 1)
  {
    sub_62B8(v24, &qword_24A88, qword_19370);
    sub_62B8(v26, &qword_24A88, qword_19370);
    v35 = v34(&v18[v33], 1, v13);
    v36 = v98;
    if (v35 == 1)
    {
      sub_62B8(v18, &qword_24A88, qword_19370);
LABEL_7:
      v37 = v100;
      goto LABEL_9;
    }

LABEL_6:
    sub_62B8(v18, &qword_24AC8, &qword_18C68);
    goto LABEL_7;
  }

  sub_3518(v18, v106, &qword_24A88, qword_19370);
  if (v34(&v18[v33], 1, v13) == 1)
  {
    sub_62B8(v24, &qword_24A88, qword_19370);
    sub_62B8(v26, &qword_24A88, qword_19370);
    (v32[1])(v106, v13);
    v36 = v98;
    goto LABEL_6;
  }

  v38 = v104;
  (v32)[4](v104, &v18[v33], v13);
  sub_63D0(&qword_24B00, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v39 = v106;
  sub_17C0C();
  v40 = v32[1];
  v40(v38, v13);
  sub_62B8(v24, &qword_24A88, qword_19370);
  sub_62B8(v26, &qword_24A88, qword_19370);
  v40(v39, v13);
  sub_62B8(v18, &qword_24A88, qword_19370);
  v37 = v100;
  v36 = v98;
LABEL_9:
  v41 = v109;
  sub_1779C();
  v80 = sub_6388(&qword_24AF0, &qword_24AD0, &qword_18C70, &protocol conformance descriptor for Picker<A, B, C>);
  v42 = v107;
  sub_1794C();
  v110[1](v41, v37);
  (*(v108 + 1))(v42, v36);
  v43 = v88;
  sub_17C1C();
  v44 = v90;
  sub_1729C();
  v86 = objc_opt_self();
  v45 = [v86 podcastsFoundationBundle];
  v46 = *(v117 + 16);
  v109 = (v117 + 16);
  v110 = v46;
  v47 = v112;
  (v46)(v111, v43);
  v48 = v115;
  v49 = *(v115 + 16);
  v107 = (v115 + 16);
  v108 = v49;
  v50 = v89;
  v51 = v113;
  v49(v89, v44, v113);
  v52 = [v45 bundleURL];
  v53 = v91;
  sub_1726C();

  LODWORD(v106) = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v54 = *(v116 + 104);
  v116 += 104;
  v105 = v54;
  v54(v53);
  sub_1725C();

  v103 = *(v48 + 8);
  v115 = v48 + 8;
  v103(v44, v51);
  v55 = *(v117 + 8);
  v117 += 8;
  v104 = v55;
  v56 = v47;
  (v55)(v43, v47);
  sub_2CFC(&qword_24AF8, &qword_18C88);
  v87 = *(v102 + 72);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_18B30;
  v79[1] = v57;
  sub_17C1C();
  sub_1729C();
  v58 = v86;
  v59 = [v86 podcastsFoundationBundle];
  v60 = v111;
  (v110)(v111, v43, v56);
  v61 = v113;
  v108(v50, v44, v113);
  v62 = [v59 bundleURL];
  sub_1726C();

  (v105)(v53, v106, v114);
  sub_1725C();

  v63 = v61;
  v103(v44, v61);
  v64 = v112;
  (v104)(v43, v112);
  sub_17C1C();
  sub_1729C();
  v65 = [v58 podcastsFoundationBundle];
  (v110)(v60, v43, v64);
  v66 = v63;
  v108(v50, v44, v63);
  v67 = [v65 bundleURL];
  sub_1726C();

  (v105)(v53, v106, v114);
  sub_1725C();

  v103(v44, v66);
  (v104)(v43, v64);
  v68 = v93;
  v69 = v92;
  v70 = v95;
  (*(v93 + 104))(v92, enum case for PodcastsSettingsDeepLinkURLs.cellularDownloadsURL(_:), v95);
  sub_1735C();
  (*(v68 + 8))(v69, v70);
  v71 = v94;
  sub_1727C();

  v72 = v96;
  v73 = v97;
  result = (*(v96 + 48))(v71, 1, v97);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v75 = v84;
    (*(v72 + 32))(v84, v71, v73);
    v118 = v98;
    v119 = v100;
    v120 = v80;
    v121 = &protocol witness table for NavigationLinkPickerStyle;
    swift_getOpaqueTypeConformance2();
    v76 = v101;
    v77 = v82;
    v78 = v99;
    sub_1791C();

    (*(v72 + 8))(v75, v73);
    (*(v102 + 8))(v76, v83);
    return (*(v81 + 8))(v78, v77);
  }

  return result;
}

uint64_t sub_5C94()
{
  v4 = &off_213E8;
  v0 = sub_2CFC(&qword_24A08, qword_18B40);
  v1 = sub_6388(&qword_24B08, &qword_24A08, qword_18B40, &protocol conformance descriptor for [A]);
  v2 = sub_63D0(&qword_24B10, type metadata accessor for MTPodcastCellularDownloadLimit, &protocol conformance descriptor for MTPodcastCellularDownloadLimit);
  return sub_17B1C(&v4, sub_5DA4, 0, v0, &type metadata for Int, &type metadata for Text, v1, &protocol witness table for Text, v2);
}

uint64_t sub_5DA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4._object = 0x800000000001CAC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4._countAndFlagsBits = 0x4120737961776C41;
    v4._object = 0xEA00000000006B73;
LABEL_7:
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    result = sub_1737C(v4, v7);
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = _swiftEmptyArrayStorage;
    return result;
  }

  if (!v3)
  {
    v4._countAndFlagsBits = 0x4120737961776C41;
    v4._object = 0xEC000000776F6C6CLL;
    goto LABEL_7;
  }

  type metadata accessor for MTPodcastCellularDownloadLimit(0);
  result = sub_17F6C();
  __break(1u);
  return result;
}

uint64_t sub_5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2CFC(&qword_24A10, qword_19320);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_5FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2CFC(&qword_24A10, qword_19320);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CellularDownloadsPicker(uint64_t a1)
{
  result = qword_24A70;
  if (!qword_24A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_60E8(uint64_t a1)
{
  sub_616C(319);
  if (v1 <= 0x3F)
  {
    sub_61D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_616C(uint64_t a1)
{
  if (!qword_24A80)
  {
    sub_30D4(&qword_24A88, qword_19370);
    v1 = sub_1752C();
    if (!v2)
    {
      atomic_store(v1, &qword_24A80);
    }
  }
}

void sub_61D0()
{
  if (!qword_24A90)
  {
    v0 = sub_174EC();
    if (!v1)
    {
      atomic_store(v0, &qword_24A90);
    }
  }
}

unint64_t sub_623C()
{
  result = qword_24AE8;
  if (!qword_24AE8)
  {
    sub_30D4(&qword_24AE0, &qword_18C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24AE8);
  }

  return result;
}

uint64_t sub_62B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2CFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6318(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24A88, qword_19370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6388(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_30D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_63D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6418()
{
  sub_30D4(&qword_24AD8, &qword_18C78);
  sub_30D4(&qword_24AD0, &qword_18C70);
  sub_177AC();
  sub_6388(&qword_24AF0, &qword_24AD0, &qword_18C70, &protocol conformance descriptor for Picker<A, B, C>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_6538(uint64_t a1)
{
  v2._object = 0x800000000001CAE0;
  v2._countAndFlagsBits = 0xD000000000000011;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x800000000001CB00;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1737C(v3, v5);
  sub_2CFC(&qword_24B18, &qword_18D40);
  sub_30D4(&qword_24B20, &qword_18D48);
  sub_30D4(&qword_24B28, &qword_18D50);
  sub_1770C();
  sub_6388(&qword_24B30, &qword_24B28, &qword_18D50, &protocol conformance descriptor for Picker<A, B, C>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_17B3C();
}

uint64_t sub_6704@<X0>(uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = sub_1770C();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CFC(&qword_24B28, &qword_18D50);
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = sub_2CFC(&qword_24B20, &qword_18D48);
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  v17[1] = sub_1772C();
  sub_174DC();
  sub_2CFC(&qword_24B38, &qword_18D58);
  sub_6388(&qword_24B40, &qword_24B38, &qword_18D58, &protocol conformance descriptor for TupleView<A>);
  sub_17AAC();
  sub_176FC();
  v13 = sub_6388(&qword_24B30, &qword_24B28, &qword_18D50, &protocol conformance descriptor for Picker<A, B, C>);
  v14 = v21;
  sub_1794C();
  (*(v22 + 8))(v5, v14);
  (*(v18 + 8))(v8, v6);
  v24 = v6;
  v25 = v14;
  v26 = v13;
  v27 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_1795C();
  return (*(v20 + 8))(v12, v15);
}

uint64_t sub_6A94@<X0>(char *a1@<X8>)
{
  v2 = sub_2CFC(&qword_24B48, &qword_18D60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v22._countAndFlagsBits = 0x4552505F5458454ELL;
  v22._object = 0xE900000000000056;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  *v14 = sub_1737C(v22, v24);
  *(v14 + 1) = v15;
  v14[16] = 0;
  *(v14 + 3) = _swiftEmptyArrayStorage;
  *(v14 + 16) = 256;
  v23._countAndFlagsBits = 0x5F44524157524F46;
  v23._object = 0xEC0000004B434142;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  *v12 = sub_1737C(v23, v25);
  *(v12 + 1) = v16;
  v12[16] = 0;
  *(v12 + 3) = _swiftEmptyArrayStorage;
  *(v12 + 16) = 257;
  v17 = *(v3 + 16);
  v17(v9, v14, v2);
  v17(v6, v12, v2);
  v17(a1, v9, v2);
  v18 = sub_2CFC(&qword_24B50, &qword_18D68);
  v17(&a1[*(v18 + 48)], v6, v2);
  v19 = *(v3 + 8);
  v19(v12, v2);
  v19(v14, v2);
  v19(v6, v2);
  return (v19)(v9, v2);
}

unint64_t sub_6D20()
{
  result = qword_24B58;
  if (!qword_24B58)
  {
    sub_30D4(&qword_24B60, qword_18D70);
    sub_30D4(&qword_24B20, &qword_18D48);
    sub_30D4(&qword_24B28, &qword_18D50);
    sub_1770C();
    sub_6388(&qword_24B30, &qword_24B28, &qword_18D50, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24B58);
  }

  return result;
}

uint64_t type metadata accessor for GlobalSettingsHostingController(uint64_t a1)
{
  result = qword_24B70;
  if (!qword_24B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6F18(uint64_t a1)
{
  v2 = qword_24B68;
  sub_1732C();
  swift_allocObject();
  *(a1 + v2) = sub_1731C();
  sub_17F2C();
  __break(1u);
}

id sub_6FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlobalSettingsHostingController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_7074(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_7088(uint64_t a1, int a2)
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

uint64_t sub_70D0(uint64_t result, int a2, int a3)
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

id sub_7148()
{
  v0 = objc_allocWithZone(type metadata accessor for SpecifierState(0));

  return [v0 init];
}

uint64_t sub_7180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a1;
  v123 = a3;
  v125 = sub_2CFC(&qword_24BD8, &qword_18F00);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = &v118 - v4;
  v167 = sub_2CFC(&qword_24BE0, &qword_18F08);
  __chkstk_darwin(v167);
  v159 = &v118 - v5;
  v157 = sub_2CFC(&qword_24BE8, &qword_18F10);
  __chkstk_darwin(v157);
  v158 = &v118 - v6;
  v156 = sub_2CFC(&qword_24BF0, &qword_18F18);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v118 - v7;
  v151 = sub_2CFC(&qword_247F8, &qword_18F20) - 8;
  __chkstk_darwin(v151);
  v166 = &v118 - v8;
  v147 = sub_2CFC(&qword_24BF8, &qword_18F28);
  v148 = *(v147 - 8);
  __chkstk_darwin(v147);
  v137 = &v118 - v9;
  v135 = sub_2CFC(&qword_24C00, &qword_18F30);
  v138 = *(v135 - 8);
  __chkstk_darwin(v135);
  v162 = &v118 - v10;
  v161 = sub_2CFC(&qword_24C08, &qword_18F38);
  v164 = *(v161 - 1);
  __chkstk_darwin(v161);
  v12 = &v118 - v11;
  v163 = sub_2CFC(&qword_24C10, &qword_18F40);
  v13 = *(v163 - 8);
  __chkstk_darwin(v163);
  v15 = &v118 - v14;
  v169 = a2;
  sub_2CFC(&qword_24C18, &qword_18F48);
  sub_6388(&qword_24C20, &qword_24C18, &qword_18F48, &protocol conformance descriptor for TupleView<A>);
  sub_178AC();
  v16 = a2[1];
  sub_1732C();
  sub_ACA8(&qword_24C28, &type metadata accessor for GlobalSettingsDeepLinkState, &protocol conformance descriptor for GlobalSettingsDeepLinkState);
  v165 = v16;
  sub_175DC();
  swift_getKeyPath();
  sub_175EC();

  v168 = a2;
  v17 = sub_172DC();
  v18 = sub_6388(&qword_24C30, &qword_24C10, &qword_18F40, &protocol conformance descriptor for List<A, B>);
  v160 = sub_ACA8(&qword_24C38, &type metadata accessor for AutoDownloadPickerView, &protocol conformance descriptor for AutoDownloadPickerView);
  v19 = v163;
  sub_179CC();

  (*(v13 + 8))(v15, v19);
  v178 = *(a2 + 1);
  v179 = *(a2 + 32);
  v177 = a2[5];
  v20 = swift_allocObject();
  v130 = a2;
  v21 = *(a2 + 1);
  v20[1] = *a2;
  v20[2] = v21;
  v20[3] = *(a2 + 2);

  sub_3518(&v178, &v171, &qword_24BC8, &qword_18EF0);
  sub_3518(&v177, &v171, &qword_24BD0, &qword_18EF8);
  v171 = v19;
  v172 = v17;
  v128 = v17;
  v173 = v18;
  v174 = v160;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v129 = sub_A0A8();
  v22 = v161;
  sub_179DC();

  (v164[1])(v12, v22);
  v120 = sub_1724C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v146 = v23;
  v126 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_17C2C();
  v164 = v24;
  v25 = *(v24 - 8);
  v26 = v25[8];
  __chkstk_darwin(v24);
  v153 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17C1C();
  v27 = sub_172AC();
  v163 = v27;
  v28 = *(v27 - 8);
  v29 = v28[8];
  __chkstk_darwin(v27);
  v30 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1729C();
  v143 = objc_opt_self();
  v152 = [v143 podcastsFoundationBundle];
  v150 = v26;
  __chkstk_darwin(v152);
  v31 = v25[2];
  v142 = v25 + 2;
  v141 = v31;
  v32 = v31(&v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v149 = v29;
  __chkstk_darwin(v32);
  v33 = v28[2];
  v140 = v28 + 2;
  v139 = v33;
  v33(v30, v30, v27);
  v34 = sub_1723C();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v136 = v36;
  v37 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v152;
  v39 = [v152 bundleURL];
  sub_1726C();

  v40 = *(v35 + 104);
  v134 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v145 = v34;
  v144 = v35 + 104;
  v133 = v40;
  v40(v37);
  sub_1725C();

  v41 = v28[1];
  v152 = v28 + 1;
  v132 = v41;
  v41(v30, v163);
  v42 = v25[1];
  v43 = v153;
  v153 = (v25 + 1);
  v131 = v42;
  v42(v43, v164);
  v44 = sub_178EC();
  v46 = v45;
  LOBYTE(v39) = v47;
  v171 = v161;
  v172 = &type metadata for GlobalSettingsDeepLinkState.Destination;
  v173 = v128;
  v174 = OpaqueTypeConformance2;
  v175 = v129;
  v176 = v160;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v137;
  v50 = v135;
  v51 = v162;
  sub_1799C();
  sub_A0FC(v44, v46, v39 & 1);

  (*(v138 + 8))(v51, v50);
  v171 = v50;
  v172 = v48;
  swift_getOpaqueTypeConformance2();
  v52 = v166;
  v53 = v147;
  sub_1790C();
  (*(v148 + 8))(v49, v53);
  v54 = swift_allocObject();
  v55 = v130;
  v56 = *(v130 + 1);
  *(v54 + 1) = *v130;
  *(v54 + 2) = v56;
  *(v54 + 3) = *(v55 + 2);
  v57 = (v52 + *(v151 + 44));
  *v57 = sub_A158;
  v57[1] = v54;
  sub_17D0C();
  v57[2] = 0;
  v57[3] = 0;

  sub_3518(&v178, &v171, &qword_24BC8, &qword_18EF0);
  sub_3518(&v177, &v171, &qword_24BD0, &qword_18EF8);
  v58 = sub_17CFC();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = &protocol witness table for MainActor;
  v60 = sub_17D2C();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v118 - v63;
  sub_17D1C();
  if (sub_16D14(2, 26, 4, 0))
  {
    v161 = sub_1760C();
    v162 = &v118;
    v160 = *(v161 - 1);
    __chkstk_darwin(v161);
    v66 = &v118 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    v171 = 0;
    v172 = 0xE000000000000000;
    sub_17E9C(17);

    v171 = 0xD00000000000003CLL;
    v172 = 0x800000000001CC90;
    v170 = 69;
    v180._countAndFlagsBits = sub_17F4C();
    sub_17C8C(v180);

    __chkstk_darwin(v67);
    (*(v61 + 16))(&v118 - v63, v64, v60);
    sub_175FC();
    (*(v61 + 8))(v64, v60);
    v68 = v154;
    sub_A3A4(v166, v154, &qword_247F8, &qword_18F20);
    v69 = sub_2CFC(&qword_24800, &unk_18770);
    (v160[4])(v68 + *(v69 + 36), v66, v161);
  }

  else
  {
    v70 = sub_2CFC(&qword_24808, &qword_19010);
    v68 = v154;
    v71 = (v154 + *(v70 + 36));
    v72 = sub_1758C();
    (*(v61 + 32))(&v71[*(v72 + 20)], &v118 - v63, v60);
    *v71 = &unk_18F88;
    *(v71 + 1) = v59;
    sub_A3A4(v166, v68, &qword_247F8, &qword_18F20);
  }

  KeyPath = swift_getKeyPath();
  v74 = v158;
  v75 = &v158[*(v157 + 36)];
  sub_2CFC(&qword_24C48, &qword_18FC8);
  sub_1738C();
  *v75 = KeyPath;
  (*(v155 + 32))(v74, v68, v156);
  v76 = swift_getKeyPath();
  v77 = v159;
  sub_A3A4(v74, v159, &qword_24BE8, &qword_18F10);
  v158 = &v118;
  v78 = (v77 + *(v167 + 36));
  v79 = v165;
  *v78 = v76;
  v78[1] = v79;
  v80 = __chkstk_darwin(v79);
  v166 = &v118 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = &v118;
  v82 = v150;
  __chkstk_darwin(v80);
  v83 = &v118 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);

  v84 = sub_17C1C();
  v165 = &v118;
  v85 = v149;
  __chkstk_darwin(v84);
  v86 = &v118 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1729C();
  v87 = [v143 podcastsFoundationBundle];
  v161 = &v118;
  __chkstk_darwin(v87);
  v88 = v164;
  v89 = v141(v83, v83, v164);
  v160 = &v118;
  __chkstk_darwin(v89);
  v90 = v163;
  v91 = v139(v86, v86, v163);
  __chkstk_darwin(v91);
  v93 = &v118 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = [v87 bundleURL];
  sub_1726C();

  v133(v93, v134, v145);
  sub_1725C();

  v132(v86, v90);
  v131(v83, v88);
  v95 = sub_1728C();
  v165 = &v118;
  v96 = *(v95 - 8);
  __chkstk_darwin(v95);
  v98 = &v118 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2CFC(&qword_24AC0, &qword_18C60);
  v164 = &v118;
  __chkstk_darwin(v99 - 8);
  v101 = &v118 - v100;
  v102 = sub_1736C();
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v105 = &v118 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v103 + 104))(v105, enum case for PodcastsSettingsDeepLinkURLs.rootURL(_:), v102);
  sub_1735C();
  (*(v103 + 8))(v105, v102);
  sub_1727C();

  result = (*(v96 + 48))(v101, 1, v95);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v96 + 32))(v98, v101, v95);
    v107 = sub_A40C();
    v108 = v122;
    v109 = v166;
    v110 = v159;
    sub_1791C();
    (*(v96 + 8))(v98, v95);
    (*(v119 + 8))(v109, v120);
    sub_A7DC(v110);
    if (qword_247D0 != -1)
    {
      swift_once();
    }

    v111 = sub_1754C();
    sub_A8A8(v111, qword_262F8);
    v112 = sub_1762C();
    v113 = *(v112 - 8);
    v114 = *(v113 + 64);
    __chkstk_darwin(v112);
    (*(v113 + 16))(&v118 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0), v121, v112);
    v115 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v116 = swift_allocObject();
    (*(v113 + 32))(v116 + v115, &v118 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0), v112);
    v171 = v167;
    v172 = v107;
    swift_getOpaqueTypeConformance2();
    v117 = v125;
    sub_179EC();

    return (*(v124 + 8))(v108, v117);
  }

  return result;
}

uint64_t sub_8B48@<X0>(uint64_t *a2@<X8>)
{
  v62 = a2;
  v58 = type metadata accessor for SkipButtonsPickersSection(0) - 8;
  v2 = __chkstk_darwin(v58);
  v66 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v63 = (&v49 - v4);
  v5 = type metadata accessor for AutomaticDownloadsSettingsSection(0);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v65 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v49 - v9);
  v11 = type metadata accessor for DownloadsSettingsSection(0);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v64 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v49 - v15);
  type metadata accessor for SpecifierState(0);
  sub_ACA8(&qword_24CA0, type metadata accessor for SpecifierState, "As");
  sub_1757C();
  v17 = sub_175CC();
  v60 = v18;
  v61 = v17;
  sub_17C5C();
  v19 = objc_opt_self();
  v20 = [v19 _applePodcastsFoundationSharedUserDefaults];
  v59 = sub_1749C();
  sub_17C5C();
  v21 = [v19 _applePodcastsFoundationSharedUserDefaults];
  *v16 = sub_1749C();
  sub_17C5C();
  v22 = [v19 _applePodcastsFoundationSharedUserDefaults];
  v16[1] = sub_1749C();
  v23 = *(v12 + 32);
  *(v16 + v23) = swift_getKeyPath();
  sub_2CFC(&qword_248F0, &qword_19020);
  v55 = v16;
  swift_storeEnumTagMultiPayload();
  sub_17C5C();
  v24 = [v19 _applePodcastsFoundationSharedUserDefaults];
  *v10 = sub_1749C();
  v25 = *(v6 + 28);
  v26 = v10;
  *(v10 + v25) = swift_getKeyPath();
  v54 = v10;
  swift_storeEnumTagMultiPayload();
  sub_17C5C();
  v27 = [v19 _applePodcastsFoundationSharedUserDefaults];
  v57 = sub_1749C();
  sub_17C5C();
  v28 = [v19 _applePodcastsFoundationSharedUserDefaults];
  v56 = sub_1749C();
  KeyPath = swift_getKeyPath();
  v30 = v63;
  *v63 = KeyPath;
  sub_2CFC(&qword_249E8, &unk_18A60);
  v31 = v30;
  swift_storeEnumTagMultiPayload();
  v32 = v58;
  v33 = *(v58 + 28);
  sub_17DEC();
  sub_17C5C();
  v34 = [v19 _applePodcastsFoundationSharedUserDefaults];
  *(v31 + v33) = sub_174AC();
  v35 = *(v32 + 32);
  sub_17DEC();
  sub_17C5C();
  v36 = [v19 _applePodcastsFoundationSharedUserDefaults];
  *(v31 + v35) = sub_174AC();
  sub_17C5C();
  v37 = [v19 _applePodcastsFoundationSharedUserDefaults];
  v58 = sub_1749C();
  v67 = 0;
  sub_17A4C();
  v53 = v68;
  v52 = v69;
  v67 = 0;
  sub_17A4C();
  v51 = v68;
  v50 = v69;
  v38 = v64;
  sub_ADE4(v16, v64, type metadata accessor for DownloadsSettingsSection);
  v39 = v65;
  sub_ADE4(v26, v65, type metadata accessor for AutomaticDownloadsSettingsSection);
  v40 = v66;
  sub_ADE4(v31, v66, type metadata accessor for SkipButtonsPickersSection);
  v41 = v62;
  v42 = v59;
  v43 = v60;
  *v62 = v61;
  v41[1] = v43;
  v41[2] = v42;
  v44 = sub_2CFC(&qword_24CA8, &unk_19060);
  sub_ADE4(v38, v41 + v44[16], type metadata accessor for DownloadsSettingsSection);
  sub_ADE4(v39, v41 + v44[20], type metadata accessor for AutomaticDownloadsSettingsSection);
  v45 = v56;
  *(v41 + v44[24]) = v57;
  *(v41 + v44[28]) = v45;
  sub_ADE4(v40, v41 + v44[32], type metadata accessor for SkipButtonsPickersSection);
  *(v41 + v44[36]) = v58;
  v46 = v41 + v44[40];
  *v46 = v53;
  *(v46 + 1) = v52;
  v46[16] = v51;
  *(v46 + 3) = v50;

  v47 = v43;

  sub_AE4C(v63, type metadata accessor for SkipButtonsPickersSection);
  sub_AE4C(v54, type metadata accessor for AutomaticDownloadsSettingsSection);
  sub_AE4C(v55, type metadata accessor for DownloadsSettingsSection);

  sub_AE4C(v66, type metadata accessor for SkipButtonsPickersSection);

  sub_AE4C(v65, type metadata accessor for AutomaticDownloadsSettingsSection);
  sub_AE4C(v64, type metadata accessor for DownloadsSettingsSection);
}

uint64_t sub_9304(uint64_t a1)
{
  v1 = sub_172BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_174DC();
  (*(v2 + 104))(v4, enum case for AutoDownloadPicker.PickerType.iOSGlobalSettings(_:), v1);
  return sub_172CC();
}

uint64_t sub_9418(uint64_t a1, uint64_t a2)
{
  v2 = sub_172BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_174DC();
  (*(v3 + 104))(v5, enum case for AutoDownloadPicker.PickerType.iOSGlobalSettings(_:), v2);
  return sub_172CC();
}

void sub_952C(uint64_t a1)
{
  type metadata accessor for SpecifierState(0);
  sub_ACA8(&qword_24CA0, type metadata accessor for SpecifierState, "As");
  v1 = sub_1757C();
  [v1 reloadSpecifiers];
}

uint64_t sub_95DC()
{
  sub_17D0C();
  v0[2] = sub_17CFC();
  v2 = sub_17CEC();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_9670, v2, v1);
}

uint64_t sub_9670()
{
  sub_173EC();
  *(v0 + 40) = sub_173DC();
  v3 = (&async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe() + async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe());
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_9728;

  return v3();
}

uint64_t sub_9728()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_986C, v3, v2);
}

uint64_t sub_986C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_98CC(uint64_t a1)
{
  v2 = sub_173AC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1765C();
}

uint64_t sub_9994(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = a1;
  v42 = sub_17B4C();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_17B6C();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1762C();
  v5 = *(v32 - 8);
  v33 = *(v5 + 64);
  __chkstk_darwin(v32);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1756C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_17B8C();
  v38 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v34 = &v31 - v16;
  sub_A9D8();
  v35 = sub_17D7C();
  sub_17B7C();
  sub_17B9C();
  v17 = v12 + 8;
  v18 = *(v12 + 8);
  v37 = v17;
  v18(v15, v11);
  (*(v8 + 16))(v10, v36, v7);
  v20 = v31;
  v19 = v32;
  (*(v5 + 16))(v31, v39, v32);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v20, v19);
  aBlock[4] = sub_AB6C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9F04;
  aBlock[3] = &unk_21798;
  v24 = _Block_copy(aBlock);

  v25 = v40;
  sub_17B5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_ACA8(&qword_24C88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CFC(&qword_24C90, &qword_19018);
  sub_6388(&qword_24C98, &qword_24C90, &qword_19018, &protocol conformance descriptor for [A]);
  v27 = v41;
  v26 = v42;
  sub_17E3C();
  v29 = v34;
  v28 = v35;
  sub_17D6C();
  _Block_release(v24);

  (*(v45 + 8))(v27, v26);
  (*(v43 + 8))(v25, v44);
  return (v18)(v29, v38);
}

uint64_t sub_9F04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_9F48@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 5);
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  v11 = *(v1 + 32);
  v12 = v3;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 4);
  *(v5 + 56) = v3;
  *a1 = sub_A030;
  a1[1] = v5;
  sub_3518(&v9, v8, &qword_24BC0, &qword_18EE8);
  sub_3518(&v10, v8, &qword_24BC8, &qword_18EF0);
  return sub_3518(&v12, v8, &qword_24BD0, &qword_18EF8);
}

void sub_A020(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_A040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_172EC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_A0A8()
{
  result = qword_24C40;
  if (!qword_24C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C40);
  }

  return result;
}

uint64_t sub_A0FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_A10C()
{

  sub_A020(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_A160()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A230;

  return sub_95DC();
}

uint64_t sub_A230()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_A34C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1766C();
  *a1 = result;
  return result;
}

uint64_t sub_A3A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2CFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_A40C()
{
  result = qword_24C50;
  if (!qword_24C50)
  {
    sub_30D4(&qword_24BE0, &qword_18F08);
    sub_A4C4();
    sub_6388(&qword_24C70, &qword_24C78, &qword_19008, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C50);
  }

  return result;
}

unint64_t sub_A4C4()
{
  result = qword_24C58;
  if (!qword_24C58)
  {
    sub_30D4(&qword_24BE8, &qword_18F10);
    sub_30D4(&qword_247F8, &qword_18F20);
    sub_A5B8();
    swift_getOpaqueTypeConformance2();
    sub_6388(&qword_24C68, &qword_24C48, &qword_18FC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C58);
  }

  return result;
}

unint64_t sub_A5B8()
{
  result = qword_24C60;
  if (!qword_24C60)
  {
    sub_30D4(&qword_247F8, &qword_18F20);
    sub_30D4(&qword_24BF8, &qword_18F28);
    sub_30D4(&qword_24C00, &qword_18F30);
    sub_30D4(&qword_24C08, &qword_18F38);
    sub_172DC();
    sub_30D4(&qword_24C10, &qword_18F40);
    sub_6388(&qword_24C30, &qword_24C10, &qword_18F40, &protocol conformance descriptor for List<A, B>);
    sub_ACA8(&qword_24C38, &type metadata accessor for AutoDownloadPickerView, &protocol conformance descriptor for AutoDownloadPickerView);
    swift_getOpaqueTypeConformance2();
    sub_A0A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C60);
  }

  return result;
}

uint64_t sub_A7DC(uint64_t a1)
{
  v2 = sub_2CFC(&qword_24BE0, &qword_18F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A844()
{
  v0 = sub_1754C();
  sub_AC44(v0, qword_262F8);
  sub_A8A8(v0, qword_262F8);
  return sub_1755C();
}

uint64_t sub_A8A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_A8E0()
{
  v1 = sub_1762C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_A968(uint64_t a1)
{
  v3 = *(sub_1762C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_9994(a1, v4);
}

unint64_t sub_A9D8()
{
  result = qword_24C80;
  if (!qword_24C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_24C80);
  }

  return result;
}

uint64_t sub_AA24()
{
  v1 = sub_1756C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1762C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_AB6C()
{
  sub_1756C();
  sub_1762C();
  return sub_1753C();
}

uint64_t sub_AC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_AC44(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_ACA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AD38(uint64_t a1)
{
  v2 = sub_2CFC(&qword_24A88, qword_19370);
  __chkstk_darwin(v2 - 8);
  sub_3518(a1, &v5 - v3, &qword_24A88, qword_19370);
  return sub_1769C();
}

uint64_t sub_ADE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_AE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_AEF8()
{
  v1 = OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for GlobalSettingsHostingController(0));
    v6 = qword_24B68;
    sub_1732C();
    swift_allocObject();
    *&v5[v6] = sub_1731C();

    sub_17DAC();
    sub_17DBC();
    sub_B520();
    sub_175CC();
    sub_17C5C();
    v7 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    sub_174AC();
    v8 = sub_1774C();
    v9 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_B110(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  sub_17E6C();
  if (!*(v3 + 16) || (v4 = sub_B5D0(v9), (v5 & 1) == 0))
  {
    result = sub_B614(v9);
    goto LABEL_9;
  }

  sub_B668(*(v3 + 56) + 32 * v4, v10);
  sub_B614(v9);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  if (sub_1730C() == 1752457584 && v6 == 0xE400000000000000)
  {
  }

  else
  {
    v7 = sub_17F5C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v8 = sub_AEF8();

  sub_172FC();

LABEL_9:
  if (a2)
  {
    return a2(result);
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_B4B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GlobalSettingsViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_B520()
{
  result = qword_24C28;
  if (!qword_24C28)
  {
    sub_1732C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C28);
  }

  return result;
}

uint64_t sub_B578(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_B588()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_B5D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_17E4C(*(v2 + 40));

  return sub_B6C4(a1, v4);
}

uint64_t sub_B668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_B6C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_B78C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_17E5C();
      sub_B614(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

__n128 sub_B7E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_B7F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_B850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_B8D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a5;
  v81 = sub_1736C();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CFC(&qword_24AC0, &qword_18C60);
  __chkstk_darwin(v10 - 8);
  v78 = v61 - v11;
  v76 = sub_1728C();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1723C();
  v94 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_172AC();
  v93 = *(v75 - 8);
  v14 = __chkstk_darwin(v75);
  v91 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = v61 - v16;
  v90 = sub_17C2C();
  v95 = *(v90 - 8);
  v17 = __chkstk_darwin(v90);
  v89 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v84 = v61 - v19;
  v65 = sub_1724C();
  v85 = *(v65 - 8);
  v83 = v85;
  __chkstk_darwin(v65);
  v82 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SettingsPrivacyFooterView(0);
  __chkstk_darwin(v21);
  v23 = (v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_2CFC(&qword_24CF0, &qword_19180);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v25 = v61 - v24;
  v108._countAndFlagsBits = 0x59434156495250;
  v108._object = 0xE700000000000000;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v104 = sub_1737C(v108, v109);
  v105 = v26;
  v106 = 0;
  v107 = _swiftEmptyArrayStorage;
  *v23 = swift_getKeyPath();
  sub_2CFC(&qword_24CF8, &qword_191B8);
  swift_storeEnumTagMultiPayload();
  v96 = a1;
  v97 = a2;
  v98 = a3;
  v99 = a4;
  sub_2CFC(&qword_24D00, &qword_191C0);
  v27 = sub_30D4(&qword_24D08, &qword_191C8);
  v28 = sub_30D4(&qword_24D10, &qword_191D0);
  v29 = sub_D400();
  v30 = sub_6388(&qword_24D40, &qword_24D10, &qword_191D0, &protocol conformance descriptor for TupleView<A>);
  v100 = v27;
  v101 = v28;
  v102 = v29;
  v103 = v30;
  swift_getOpaqueTypeConformance2();
  sub_D4E4();
  v62 = v25;
  sub_17B3C();
  v31 = v84;
  sub_17C1C();
  v32 = v87;
  sub_1729C();
  v33 = *(v94 + 104);
  v94 += 104;
  v86 = v33;
  (v33)(v88, enum case for LocalizedStringResource.BundleDescription.main(_:), v92);
  sub_1725C();
  sub_2CFC(&qword_24AF8, &qword_18C88);
  v74 = *(v85 + 72);
  v34 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_18B30;
  v61[1] = v35;
  v85 = v35 + v34;
  sub_17C1C();
  sub_1729C();
  v73 = objc_opt_self();
  v36 = [v73 podcastsFoundationBundle];
  v72 = *(v95 + 16);
  v37 = v90;
  v72(v89, v31, v90);
  v38 = v93;
  v71 = *(v93 + 16);
  v39 = v75;
  v71(v91, v32, v75);
  v40 = [v36 bundleURL];
  v41 = v88;
  sub_1726C();

  v70 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v86(v41);
  sub_1725C();

  v42 = *(v38 + 8);
  v93 = v38 + 8;
  v69 = v42;
  v43 = v87;
  v42(v87, v39);
  v44 = *(v95 + 8);
  v95 += 8;
  v68 = v44;
  v45 = v84;
  v46 = v37;
  v44(v84, v37);
  sub_17C1C();
  sub_1729C();
  v47 = [v73 podcastsFoundationBundle];
  v72(v89, v45, v46);
  v71(v91, v43, v39);
  v48 = [v47 bundleURL];
  sub_1726C();

  (v86)(v41, v70, v92);
  sub_1725C();

  v49 = v76;
  v69(v43, v39);
  v68(v45, v90);
  v50 = v77;
  v51 = v80;
  v52 = v79;
  v53 = v81;
  (*(v80 + 104))(v79, enum case for PodcastsSettingsDeepLinkURLs.podcastsAndPrivacyURL(_:), v81);
  sub_1735C();
  (*(v51 + 8))(v52, v53);
  v54 = v78;
  sub_1727C();
  v55 = v54;

  result = (*(v50 + 48))(v54, 1, v49);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = v66;
    (*(v50 + 32))(v66, v55, v49);
    sub_D53C();
    v58 = v82;
    v59 = v64;
    v60 = v62;
    sub_1791C();

    (*(v50 + 8))(v57, v49);
    (*(v83 + 8))(v58, v65);
    return (*(v63 + 8))(v60, v59);
  }

  return result;
}

uint64_t sub_C50C@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v9 = sub_2CFC(&qword_24D08, &qword_191C8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  sub_17A9C();
  LOBYTE(v27) = a3;
  v28 = a4;
  sub_2CFC(&qword_24D58, &qword_191F0);
  sub_17A5C();
  v13 = v29;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = &v11[*(v9 + 36)];
  *v16 = KeyPath;
  v16[1] = sub_D6E4;
  v16[2] = v15;
  v20 = sub_1772C();
  v19[1] = v17;
  v29 = a1;
  v30 = a2;
  sub_17A7C();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  sub_2CFC(&qword_24D10, &qword_191D0);
  sub_D400();
  sub_6388(&qword_24D40, &qword_24D10, &qword_191D0, &protocol conformance descriptor for TupleView<A>);
  sub_179AC();

  return sub_D710(v11);
}

uint64_t sub_C7D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v37 = a4;
  v5 = a3;
  v35 = a3;
  v41 = a5;
  v42 = a2;
  v7 = sub_2CFC(&qword_24D60, &qword_19228);
  __chkstk_darwin(v7 - 8);
  v9 = &v34[-v8];
  v10 = sub_2CFC(&qword_24D28, &qword_191D8);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v40 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v39 = &v34[-v15];
  v16 = __chkstk_darwin(v14);
  v38 = &v34[-v17];
  __chkstk_darwin(v16);
  v36 = &v34[-v18];
  sub_174FC();
  v19 = sub_1751C();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 0, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v42;
  *(v21 + 32) = v5;
  v22 = v37;
  *(v21 + 40) = v37;

  v23 = v36;
  sub_17A8C();
  sub_1750C();
  v20(v9, 0, 1, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v42;
  *(v24 + 32) = v35;
  *(v24 + 40) = v22;

  v25 = v38;
  sub_17A8C();
  v26 = *(v11 + 16);
  v27 = v39;
  v28 = v23;
  v26(v39, v23, v10);
  v29 = v40;
  v26(v40, v25, v10);
  v30 = v41;
  v26(v41, v27, v10);
  v31 = sub_2CFC(&qword_24D68, &qword_19230);
  v26(&v30[*(v31 + 48)], v29, v10);
  v32 = *(v11 + 8);
  v32(v25, v10);
  v32(v28, v10);
  v32(v29, v10);
  return (v32)(v27, v10);
}

uint64_t sub_CBE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_173CC();
  sub_173BC();
  v5 = sub_17C3C();

  [v4 setBool:1 forKey:v5];

  sub_2CFC(&qword_24D58, &qword_191F0);
  return sub_17A6C();
}

uint64_t sub_CCBC@<X0>(uint64_t a1@<X8>)
{
  v4._object = 0x800000000001CDA0;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  result = sub_1737C(v4, v5);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_CD14@<X0>(uint64_t a1@<X8>)
{
  v4._countAndFlagsBits = 0x415F4C45434E4143;
  v4._object = 0xED00004E4F495443;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  result = sub_1737C(v4, v5);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t type metadata accessor for SettingsPrivacyFooterView(uint64_t a1)
{
  result = qword_24DD0;
  if (!qword_24DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CDD4(uint64_t a1)
{
  v2 = sub_176EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CFC(&qword_24CF8, &qword_191B8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_1786C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DD0C(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_17D3C();
    v13 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1785C();
  return (*(v10 + 8))(v12, v9);
}

void sub_D054(uint64_t a1)
{
  sub_17C5C();
  v2 = sub_17C3C();

  v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

  v4 = v3;
  [v4 setPresentingViewController:a1];
  [v4 present];
}

uint64_t sub_D11C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_DA90(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_DBF4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_DCB8();
  sub_1796C();
}

uint64_t sub_D230@<X0>(uint64_t a1@<X8>)
{
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x800000000001CDC0;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1737C(v15, v18);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  sub_17C8C(v16);

  v17._object = 0x800000000001CDE0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1737C(v17, v19);
  sub_179FC();
  v2 = sub_178BC();
  v4 = v3;
  v6 = v5;

  v7 = sub_178CC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_A0FC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

unint64_t sub_D400()
{
  result = qword_24D18;
  if (!qword_24D18)
  {
    sub_30D4(&qword_24D08, &qword_191C8);
    sub_6388(&qword_24D20, &qword_24D28, &qword_191D8, &protocol conformance descriptor for Button<A>);
    sub_6388(&qword_24D30, &qword_24D38, &unk_191E0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D18);
  }

  return result;
}

unint64_t sub_D4E4()
{
  result = qword_24D48;
  if (!qword_24D48)
  {
    type metadata accessor for SettingsPrivacyFooterView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D48);
  }

  return result;
}

unint64_t sub_D53C()
{
  result = qword_24D50;
  if (!qword_24D50)
  {
    sub_30D4(&qword_24CF0, &qword_19180);
    sub_30D4(&qword_24D08, &qword_191C8);
    sub_30D4(&qword_24D10, &qword_191D0);
    sub_D400();
    sub_6388(&qword_24D40, &qword_24D10, &qword_191D0, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_D4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D50);
  }

  return result;
}

uint64_t sub_D67C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_176BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_D710(uint64_t a1)
{
  v2 = sub_2CFC(&qword_24D08, &qword_191C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D78C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_D844(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_D94C(uint64_t a1)
{
  sub_D9B8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_D9B8(uint64_t a1)
{
  if (!qword_24DE0)
  {
    sub_1786C();
    v1 = sub_1752C();
    if (!v2)
    {
      atomic_store(v1, &qword_24DE0);
    }
  }
}

uint64_t sub_DA10()
{
  sub_30D4(&qword_24CF0, &qword_19180);
  sub_D53C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_DA90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPrivacyFooterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DAF4()
{
  v1 = *(type metadata accessor for SettingsPrivacyFooterView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_2CFC(&qword_24CF8, &qword_191B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1786C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_DBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPrivacyFooterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_DC58()
{
  v1 = *(type metadata accessor for SettingsPrivacyFooterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_CDD4(v2);
}

unint64_t sub_DCB8()
{
  result = qword_24E10;
  if (!qword_24E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24E10);
  }

  return result;
}

uint64_t sub_DD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24CF8, &qword_191B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2CFC(&qword_24A10, qword_19320);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_DF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2CFC(&qword_24A10, qword_19320);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SkipButtonsPickersSection(uint64_t a1)
{
  result = qword_24E70;
  if (!qword_24E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E018(uint64_t a1)
{
  sub_616C(319);
  if (v1 <= 0x3F)
  {
    sub_61D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E0B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_176EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CFC(&qword_249E8, &unk_18A60);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_3518(v2, &v13 - v9, &qword_249E8, &unk_18A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_6318(v10, a1);
  }

  sub_17D3C();
  v12 = sub_1787C();
  sub_1740C();

  sub_176DC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_E288@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_1777C();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CFC(&qword_24AC8, &qword_18C68);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_2CFC(&qword_24A88, qword_19370);
  v9 = __chkstk_darwin(v8 - 8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_177AC();
  v41 = *(v16 - 8);
  v42 = v16;
  __chkstk_darwin(v16);
  v40 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CFC(&qword_24EB0, &qword_193D0);
  v38 = *(v18 - 8);
  v39 = v18;
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  v53._countAndFlagsBits = 0x5455425F50494B53;
  v53._object = 0xEC000000534E4F54;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  v49 = sub_1737C(v53, v55);
  v50 = v21;
  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
  v54._object = 0x800000000001CE00;
  v54._countAndFlagsBits = 0xD000000000000010;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v45 = sub_1737C(v54, v56);
  v46 = v22;
  v47 = 0;
  v48 = _swiftEmptyArrayStorage;
  v44 = v1;
  sub_2CFC(&qword_24EB8, &unk_193D8);
  sub_6388(&qword_24EC0, &qword_24EB8, &unk_193D8, &protocol conformance descriptor for TupleView<A>);
  v37 = v20;
  v23 = v35;
  sub_17B3C();
  sub_E0B8(v15);
  (*(v23 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v2);
  (*(v23 + 56))(v13, 0, 1, v2);
  v24 = *(v5 + 56);
  sub_3518(v15, v7, &qword_24A88, qword_19370);
  sub_3518(v13, &v7[v24], &qword_24A88, qword_19370);
  v25 = *(v23 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    sub_3518(v7, v36, &qword_24A88, qword_19370);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v26 = v34;
      (*(v23 + 32))(v34, &v7[v24], v2);
      sub_FA90(&qword_24B00, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v27 = v36;
      sub_17C0C();
      v28 = *(v23 + 8);
      v28(v26, v2);
      sub_62B8(v13, &qword_24A88, qword_19370);
      sub_62B8(v15, &qword_24A88, qword_19370);
      v28(v27, v2);
      sub_62B8(v7, &qword_24A88, qword_19370);
      goto LABEL_8;
    }

    sub_62B8(v13, &qword_24A88, qword_19370);
    sub_62B8(v15, &qword_24A88, qword_19370);
    (*(v23 + 8))(v36, v2);
    goto LABEL_6;
  }

  sub_62B8(v13, &qword_24A88, qword_19370);
  sub_62B8(v15, &qword_24A88, qword_19370);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_62B8(v7, &qword_24AC8, &qword_18C68);
    goto LABEL_8;
  }

  sub_62B8(v7, &qword_24A88, qword_19370);
LABEL_8:
  v29 = v40;
  sub_1779C();
  sub_F8C8();
  v30 = v42;
  v31 = v39;
  v32 = v37;
  sub_1794C();
  (*(v41 + 8))(v29, v30);
  return (*(v38 + 8))(v32, v31);
}

uint64_t sub_E930@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = sub_2CFC(&qword_24ED0, &qword_193E8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v26 = &v25 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v35._countAndFlagsBits = 0xD000000000000013;
  v35._object = 0x800000000001CE20;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v33 = sub_1737C(v35, v37);
  v34 = v14;
  type metadata accessor for SkipButtonsPickersSection(0);
  sub_174DC();
  v30 = a1;
  sub_2CFC(&qword_24ED8, &qword_193F0);
  v15 = sub_30D4(&qword_24EE0, &qword_193F8);
  v16 = sub_F9D0();
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  sub_34C4();
  sub_17ABC();
  v36._object = 0x800000000001CE40;
  v36._countAndFlagsBits = 0xD000000000000010;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v33 = sub_1737C(v36, v38);
  v34 = v17;
  sub_174DC();
  v29 = a1;
  sub_17ABC();
  v18 = *(v4 + 16);
  v19 = v26;
  v18(v26, v13, v3);
  v20 = v27;
  v18(v27, v11, v3);
  v21 = v28;
  v18(v28, v19, v3);
  v22 = sub_2CFC(&qword_24EF0, &unk_19400);
  v18(&v21[*(v22 + 48)], v20, v3);
  v23 = *(v4 + 8);
  v23(v11, v3);
  v23(v13, v3);
  v23(v20, v3);
  return (v23)(v19, v3);
}

uint64_t sub_ECF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned int *a4@<X4>, uint64_t a5@<X8>)
{
  v83 = a4;
  v78 = a3;
  v77 = a2;
  v68 = a5;
  v6 = sub_1736C();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CFC(&qword_24AC0, &qword_18C60);
  __chkstk_darwin(v8 - 8);
  v79 = v62 - v9;
  v75 = sub_1728C();
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v67 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1723C();
  v99 = *(v96 - 8);
  __chkstk_darwin(v96);
  v74 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_172AC();
  v98 = *(v71 - 8);
  v12 = __chkstk_darwin(v71);
  v88 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v62 - v14;
  v95 = sub_17C2C();
  v97 = *(v95 - 8);
  v16 = v97;
  v17 = __chkstk_darwin(v95);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v62 - v20;
  v66 = sub_1724C();
  v72 = *(v66 - 8);
  v73 = v66 - 8;
  v85 = v72;
  __chkstk_darwin(v66 - 8);
  v84 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2CFC(&qword_24EE0, &qword_193F8);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v24 = v62 - v23;
  v100 = sub_17DDC();
  v25 = sub_2CFC(&qword_24EF8, &unk_19410);
  v26 = sub_6388(&qword_24F00, &qword_24EF8, &unk_19410, &protocol conformance descriptor for [A]);
  v27 = sub_FA90(&qword_24F08, type metadata accessor for MTPodcastSkipDuration, &protocol conformance descriptor for MTPodcastSkipDuration);
  v63 = v24;
  sub_17B1C(&v100, a1, 0, v25, &type metadata for Int, &type metadata for Text, v26, &protocol witness table for Text, v27);
  sub_17C1C();
  v28 = v15;
  sub_1729C();
  v87 = objc_opt_self();
  v29 = [v87 podcastsFoundationBundle];
  v86 = *(v16 + 16);
  v70 = v16 + 16;
  v69 = v19;
  v30 = v95;
  v86(v19, v21, v95);
  v31 = v98;
  v32 = *(v98 + 16);
  v93 = v98 + 16;
  v94 = v32;
  v33 = v71;
  v32(v88, v28, v71);
  v34 = [v29 bundleURL];
  v35 = v74;
  sub_1726C();

  v91 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v36 = *(v99 + 104);
  v99 += 104;
  v92 = v36;
  v36(v35);
  v37 = v35;
  sub_1725C();

  v38 = *(v31 + 8);
  v98 = v31 + 8;
  v90 = v38;
  v39 = v33;
  v38(v28, v33);
  v40 = *(v97 + 8);
  v97 += 8;
  v89 = v40;
  v40(v21, v30);
  sub_2CFC(&qword_24AF8, &qword_18C88);
  v73 = *(v72 + 72);
  v41 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18B30;
  v62[1] = v42;
  v72 = v42 + v41;
  sub_17C1C();
  sub_1729C();
  v43 = [v87 podcastsFoundationBundle];
  v44 = v69;
  v86(v69, v21, v30);
  v45 = v88;
  v94(v88, v28, v33);
  v46 = [v43 bundleURL];
  sub_1726C();

  v92(v37, v91, v96);
  sub_1725C();

  v90(v28, v39);
  v47 = v95;
  v89(v21, v95);
  sub_17C1C();
  sub_1729C();
  v48 = [v87 podcastsFoundationBundle];
  v86(v44, v21, v47);
  v94(v45, v28, v39);
  v49 = v76;
  v50 = [v48 bundleURL];
  sub_1726C();

  v92(v37, v91, v96);
  sub_1725C();

  v90(v28, v39);
  v89(v21, v95);
  v51 = v82;
  v52 = v81;
  v53 = v80;
  (*(v81 + 104))(v80, *v83, v82);
  sub_1735C();
  (*(v52 + 8))(v53, v51);
  v54 = v79;
  sub_1727C();
  v55 = v54;

  v56 = v75;
  result = (*(v49 + 48))(v54, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v58 = v67;
    (*(v49 + 32))(v67, v55, v56);
    sub_F9D0();
    v59 = v84;
    v60 = v65;
    v61 = v63;
    sub_1791C();

    (*(v49 + 8))(v58, v56);
    (*(v85 + 8))(v59, v66);
    return (*(v64 + 8))(v61, v60);
  }

  return result;
}

uint64_t sub_F884@<X0>(uint64_t a2@<X8>)
{
  result = sub_17DCC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_F8C8()
{
  result = qword_24EC8;
  if (!qword_24EC8)
  {
    sub_30D4(&qword_24EB0, &qword_193D0);
    sub_6388(&qword_24EC0, &qword_24EB8, &unk_193D8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24EC8);
  }

  return result;
}

unint64_t sub_F9D0()
{
  result = qword_24EE8;
  if (!qword_24EE8)
  {
    sub_30D4(&qword_24EE0, &qword_193F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24EE8);
  }

  return result;
}

uint64_t sub_FA90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_FAD8()
{
  sub_30D4(&qword_24EB0, &qword_193D0);
  sub_177AC();
  sub_F8C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_FBF4@<X0>(uint64_t a1@<X8>)
{
  v4._object = 0x800000000001CE60;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  result = sub_1737C(v4, v5);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_FC4C()
{
  v0 = type metadata accessor for SyncLibraryFooterView(0);
  __chkstk_darwin(v0);
  v2 = (v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8._countAndFlagsBits = 0x5952415242494CLL;
  v8._object = 0xE700000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v5[0] = sub_1737C(v8, v9);
  v5[1] = v3;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  *v2 = swift_getKeyPath();
  sub_2CFC(&qword_24CF8, &qword_191B8);
  swift_storeEnumTagMultiPayload();
  sub_2CFC(&qword_248D0, &qword_18860);
  sub_3870();
  sub_1030C();
  return sub_17B3C();
}

uint64_t type metadata accessor for SyncLibraryFooterView(uint64_t a1)
{
  result = qword_24F70;
  if (!qword_24F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FDF4(uint64_t a1)
{
  v2 = sub_176EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CFC(&qword_24CF8, &qword_191B8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_1786C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DD0C(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_17D3C();
    v13 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1785C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10074(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10538(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1069C(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_10760();
  sub_1796C();
}

uint64_t sub_10188@<X0>(uint64_t a1@<X8>)
{
  v15._countAndFlagsBits = 0x5F5952415242494CLL;
  v15._object = 0xEE005245544F4F46;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1737C(v15, v18);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  sub_17C8C(v16);

  v17._object = 0x800000000001CDE0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1737C(v17, v19);
  sub_179FC();
  v2 = sub_178BC();
  v4 = v3;
  v6 = v5;

  v7 = sub_178CC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_A0FC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

unint64_t sub_1030C()
{
  result = qword_24F10;
  if (!qword_24F10)
  {
    type metadata accessor for SyncLibraryFooterView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24F10);
  }

  return result;
}

uint64_t sub_10378(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10404(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_10484()
{
  result = qword_24FA8;
  if (!qword_24FA8)
  {
    sub_30D4(&qword_24FB0, "f");
    sub_3870();
    sub_1030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FA8);
  }

  return result;
}

uint64_t sub_10538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncLibraryFooterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1059C()
{
  v1 = *(type metadata accessor for SyncLibraryFooterView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_2CFC(&qword_24CF8, &qword_191B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1786C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1069C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncLibraryFooterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10700()
{
  v1 = *(type metadata accessor for SyncLibraryFooterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_FDF4(v2);
}

unint64_t sub_10760()
{
  result = qword_24FB8;
  if (!qword_24FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FB8);
  }

  return result;
}

uint64_t sub_10838()
{
  v1 = v0;
  v17 = 0u;
  v18 = 0u;
  if ([v0 hasValidGetter])
  {
    if ([v0 performGetter])
    {
      sub_17E1C();
      swift_unknownObjectRelease();
      sub_62B8(&v17, &qword_25250, &qword_19E70);
    }

    else
    {
      sub_62B8(&v17, &qword_25250, &qword_19E70);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  sub_118E4(&v17, &v14);
  v2 = *(&v15 + 1);
  sub_62B8(&v14, &qword_25250, &qword_19E70);
  if (!v2 || [v1 cellType] == &dword_8 + 1)
  {
    goto LABEL_25;
  }

  if ([v1 cellType] != &dword_0 + 2 && objc_msgSend(v1, "cellType") != &dword_4)
  {
    v3 = [v1 titleDictionary];
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v3 = [v1 shortTitleDictionary];
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  v4 = v3;
  v5 = sub_17BFC();

LABEL_14:
  sub_118E4(&v17, v10);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        v14 = v11;
        v15 = v12;
        v16 = v13;
        if (v5)
        {
          if (*(v5 + 16) && (v6 = sub_B5D0(&v14), (v7 & 1) != 0))
          {
            sub_B668(*(v5 + 56) + 32 * v6, &v11);
            sub_B614(&v14);
            sub_62B8(&v17, &qword_25250, &qword_19E70);
          }

          else
          {

            sub_B614(&v14);
            sub_62B8(&v17, &qword_25250, &qword_19E70);
            v11 = 0u;
            v12 = 0u;
          }

          v17 = v11;
          v18 = v12;
        }

        else
        {
          sub_B614(&v14);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {

    sub_62B8(v10, &qword_25250, &qword_19E70);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_62B8(&v11, &qword_24FC8, &qword_196A0);
LABEL_25:
  sub_118E4(&v17, &v14);
  v8 = *(&v15 + 1);
  sub_62B8(&v14, &qword_25250, &qword_19E70);
  if (!v8)
  {
    if ([v1 propertyForKey:PSValueKey])
    {
      sub_17E1C();
      swift_unknownObjectRelease();
      sub_62B8(&v17, &qword_25250, &qword_19E70);
    }

    else
    {
      sub_62B8(&v17, &qword_25250, &qword_19E70);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  v14 = v17;
  v15 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {
    sub_62B8(&v14, &qword_25250, &qword_19E70);
  }

  return 0;
}

uint64_t sub_10C20()
{
  if ([v0 cellType] == &dword_4 + 2 && objc_msgSend(v0, "hasValidGetter") && objc_msgSend(v0, "hasValidSetter"))
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v3;
    sub_17AEC();
  }

  else
  {
    sub_17AFC();
  }

  return v6;
}

void sub_10D74(unsigned __int8 *a2@<X8>)
{
  v3 = sub_1743C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  __chkstk_darwin(v11);
  v15 = &v58 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v61 = 0u;
    v62 = 0u;
LABEL_13:
    sub_62B8(&v61, &qword_25250, &qword_19E70);
LABEL_14:
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = sub_17C3C();
      v33 = [v31 propertyForKey:v32];

      if (v33)
      {
        sub_17E1C();
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0u;
        v60 = 0u;
      }

      v61 = v59;
      v62 = v60;
      if (*(&v60 + 1))
      {
        if (swift_dynamicCast())
        {
          v34 = v59;
          v35 = HIBYTE(*(&v59 + 1)) & 0xFLL;
          if ((*(&v59 + 1) & 0x2000000000000000) == 0)
          {
            v35 = v59 & 0xFFFFFFFFFFFFLL;
          }

          if (v35)
          {
            sub_1741C();

            v36 = sub_1742C();
            v37 = sub_17D4C();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              *&v61 = v39;
              *v38 = 136315138;
              v40 = sub_11954(v34, *(&v34 + 1), &v61);

              *(v38 + 4) = v40;
              _os_log_impl(&dword_0, v36, v37, "No value returned from some getter of specifier for bundleIdentifier '%s.", v38, 0xCu);
              sub_11F90(v39);
            }

            else
            {
            }

            (*(v4 + 8))(v10, v3);
            goto LABEL_30;
          }
        }

LABEL_27:
        sub_1741C();
        v41 = sub_1742C();
        v42 = sub_17D4C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_0, v41, v42, "No value returned from getter of specifier (no bundleIdentifier found).", v43, 2u);
        }

        (*(v4 + 8))(v7, v3);
        goto LABEL_30;
      }
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    sub_62B8(&v61, &qword_25250, &qword_19E70);
    goto LABEL_27;
  }

  v17 = Strong;
  v18 = [Strong performGetter];

  if (v18)
  {
    sub_17E1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61 = v59;
  v62 = v60;
  if (!*(&v60 + 1))
  {
    goto LABEL_13;
  }

  sub_11FDC(0, &qword_24FD0, NSObject_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = v59;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v61 = 0uLL, v20 = v19, sub_17C4C(), v20, (v21 = *(&v61 + 1)) == 0))
  {
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      v29 = [v44 BOOLValue];

      goto LABEL_31;
    }

    sub_1741C();
    v45 = v19;
    v46 = sub_1742C();
    v47 = sub_17D4C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&dword_0, v46, v47, "Could not resolve value of type '%{public}@' to a BOOLean.", v48, 0xCu);
      sub_62B8(v49, &qword_24FD8, &qword_196A8);
    }

    else
    {
      v50 = v46;
      v46 = v45;
    }

    (*(v4 + 8))(v13, v3);
    goto LABEL_30;
  }

  v22 = v61;
  v23 = sub_12024(&off_214B8);
  swift_arrayDestroy();
  v24 = sub_17C6C();
  v26 = sub_11518(v24, v25, v23);

  if ((v26 & 1) == 0)
  {
    v27 = sub_17C3C();
    v28 = [v27 integerValue];

    if (v28 < 1)
    {
      sub_1741C();

      v51 = sub_1742C();
      v52 = sub_17D4C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58 = v51;
        v55 = v54;
        *&v61 = v54;
        *v53 = 136446210;
        v56 = sub_11954(v22, v21, &v61);

        *(v53 + 4) = v56;
        v57 = v58;
        sub_11F90(v55);
      }

      else
      {
      }

      (*(v4 + 8))(v15, v3);
LABEL_30:
      v29 = 0;
      goto LABEL_31;
    }
  }

  v29 = 1;
LABEL_31:
  *a2 = v29;
}

uint64_t sub_11518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_17F7C();
  sub_17C7C();
  v6 = sub_17F8C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_17F5C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_11610(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(NSNumber) initWithBool:v4];
    [v6 performSetterWithValue:v7];
  }

  v8 = [objc_opt_self() defaultCenter];
  if (qword_247D8 != -1)
  {
    swift_once();
  }

  v9 = qword_26310;
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  [v8 postNotificationName:v9 object:v10];
}

NSString sub_11740()
{
  result = sub_17C3C();
  qword_26310 = result;
  return result;
}

void PSSpecifier.objectWillChange.getter()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_247D8 != -1)
  {
    swift_once();
  }

  sub_17D9C();
}

unint64_t sub_1182C()
{
  result = qword_24FC0;
  if (!qword_24FC0)
  {
    sub_17D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FC0);
  }

  return result;
}

uint64_t sub_11890@<X0>(uint64_t *a2@<X8>)
{
  sub_11FDC(0, &qword_25270, PSSpecifier_ptr);
  result = sub_17EAC();
  *a2 = result;
  return result;
}

uint64_t sub_118E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_25250, &qword_19E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_11954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_11A20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_B668(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_11F90(v11);
  return v7;
}

unint64_t sub_11A20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_11B2C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_17ECC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_11B2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_11B78(a1, a2);
  sub_11CA8(&off_21490);
  return v3;
}

void *sub_11B78(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_11D94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_17ECC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_17C9C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_11D94(v10, 0);
        result = sub_17E8C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_11CA8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_11E08(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_11D94(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2CFC(&qword_24FE8, &qword_196B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11E08(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CFC(&qword_24FE8, &qword_196B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_11EFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11F44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_11F90(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_11FDC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Int sub_12024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CFC(&qword_24FE0, &qword_196B0);
    v3 = sub_17E7C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_17F7C();

      sub_17C7C();
      result = sub_17F8C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_17F5C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_121A8()
{
  result = qword_24FF0;
  if (!qword_24FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FF0);
  }

  return result;
}

id sub_121FC()
{
  v1 = *v0;
  if ([*v0 detailControllerClass] && (v2 = CreateDetailControllerInstanceWithClass()) != 0)
  {
    v3 = v2;
    [v2 setSpecifier:v1];
    return v3;
  }

  else
  {
    v5 = objc_allocWithZone(UIViewController);

    return [v5 init];
  }
}

uint64_t sub_122DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_123CC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_12340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_123CC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_123A4(uint64_t a1)
{
  sub_123CC();
  sub_1781C();
  __break(1u);
}

unint64_t sub_123CC()
{
  result = qword_24FF8;
  if (!qword_24FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FF8);
  }

  return result;
}

id sub_1244C()
{
  v0 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  [v0 setScale:v3];
  result = [v0 setDrawBorder:1];
  qword_26318 = v0;
  return result;
}

uint64_t sub_1250C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v56 = sub_2CFC(&qword_25000, &qword_19898);
  __chkstk_darwin(v56);
  v54 = &v48 - v3;
  v62 = sub_2CFC(&qword_25008, &qword_198A0);
  __chkstk_darwin(v62);
  v5 = &v48 - v4;
  v58 = sub_2CFC(&qword_25010, &qword_198A8);
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v48 - v6;
  v59 = sub_2CFC(&qword_25018, &qword_198B0);
  __chkstk_darwin(v59);
  v9 = &v48 - v8;
  v57 = sub_2CFC(&qword_25020, &qword_198B8);
  __chkstk_darwin(v57);
  v11 = &v48 - v10;
  v60 = sub_2CFC(&qword_25028, &qword_198C0);
  __chkstk_darwin(v60);
  v13 = &v48 - v12;
  v14 = sub_2CFC(&qword_25030, &qword_198C8);
  __chkstk_darwin(v14 - 8);
  v16 = &v48 - v15;
  v17 = sub_2CFC(&qword_25038, &unk_198D0);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v20 = sub_12DF8(a1);
  if (v20)
  {
    v56 = v20;
    sub_17A1C();
    v21 = enum case for Image.TemplateRenderingMode.original(_:);
    v22 = sub_17A3C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v16, v21, v22);
    (*(v23 + 56))(v16, 0, 1, v22);
    v24 = sub_17A2C();

    sub_62B8(v16, &qword_25030, &qword_198C8);
    v63 = v24;
    sub_1797C();

    sub_3518(v19, v11, &qword_25038, &unk_198D0);
    swift_storeEnumTagMultiPayload();
    sub_1309C();
    sub_12FAC();
    sub_1775C();
    sub_3518(v13, v9, &qword_25028, &qword_198C0);
    swift_storeEnumTagMultiPayload();
    sub_13010();
    sub_13180();
    sub_1775C();

    sub_62B8(v13, &qword_25028, &qword_198C0);
    v25 = v19;
    v26 = &qword_25038;
    v27 = &unk_198D0;
    return sub_62B8(v25, v26, v27);
  }

  v50 = v17;
  v51 = v13;
  v49 = v5;
  v29 = v55;
  v52 = v7;
  v53 = v9;
  v30 = v58;
  sub_12EDC(a1, &PSIconUTTypeIdentifierKey);
  if (v31)
  {
    v32 = objc_allocWithZone(ISIcon);
    v33 = sub_17C3C();

    [v32 initWithType:v33];

    if (qword_247E0 != -1)
    {
      swift_once();
    }

    v34 = qword_26318;
    v35 = v52;
    sub_173FC();
    v36 = v30;
    (*(v29 + 16))(v11, v35, v30);
    swift_storeEnumTagMultiPayload();
    sub_1309C();
    sub_12FAC();
    v37 = v51;
    sub_1775C();
    sub_3518(v37, v53, &qword_25028, &qword_198C0);
    swift_storeEnumTagMultiPayload();
    sub_13010();
    sub_13180();
    sub_1775C();
    sub_62B8(v37, &qword_25028, &qword_198C0);
    return (*(v29 + 8))(v35, v36);
  }

  else
  {
    sub_12EDC(a1, &PSLazyIconAppID);
    if (!v38)
    {
      swift_storeEnumTagMultiPayload();
      sub_12FAC();
      v47 = v49;
      sub_1775C();
      sub_3518(v47, v53, &qword_25008, &qword_198A0);
      swift_storeEnumTagMultiPayload();
      sub_13010();
      sub_13180();
      sub_1775C();
      v25 = v47;
      v26 = &qword_25008;
      v27 = &qword_198A0;
      return sub_62B8(v25, v26, v27);
    }

    v39 = v29;
    v40 = objc_allocWithZone(ISIcon);
    v41 = sub_17C3C();

    [v40 initWithBundleIdentifier:v41];

    v42 = v30;
    v43 = v53;
    v44 = v49;
    if (qword_247E0 != -1)
    {
      swift_once();
    }

    v45 = qword_26318;
    v46 = v52;
    sub_173FC();
    (*(v39 + 16))(v54, v46, v42);
    swift_storeEnumTagMultiPayload();
    sub_12FAC();
    sub_1775C();
    sub_3518(v44, v43, &qword_25008, &qword_198A0);
    swift_storeEnumTagMultiPayload();
    sub_13010();
    sub_13180();
    sub_1775C();
    sub_62B8(v44, &qword_25008, &qword_198A0);
    return (*(v39 + 8))(v46, v42);
  }
}

uint64_t sub_12DF8(void *a1)
{
  if ([a1 propertyForKey:PSIconImageKey])
  {
    sub_17E1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1320C();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_62B8(v5, &qword_25250, &qword_19E70);
    return 0;
  }
}

uint64_t sub_12EDC(void *a1, void *a2)
{
  if ([a1 propertyForKey:*a2])
  {
    sub_17E1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_62B8(v6, &qword_25250, &qword_19E70);
    return 0;
  }
}

unint64_t sub_12FAC()
{
  result = qword_25040;
  if (!qword_25040)
  {
    sub_30D4(&qword_25010, &qword_198A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25040);
  }

  return result;
}

unint64_t sub_13010()
{
  result = qword_25048;
  if (!qword_25048)
  {
    sub_30D4(&qword_25028, &qword_198C0);
    sub_1309C();
    sub_12FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25048);
  }

  return result;
}

unint64_t sub_1309C()
{
  result = qword_25050;
  if (!qword_25050)
  {
    sub_30D4(&qword_25038, &unk_198D0);
    sub_13128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25050);
  }

  return result;
}

unint64_t sub_13128()
{
  result = qword_25058;
  if (!qword_25058)
  {
    sub_1784C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25058);
  }

  return result;
}

unint64_t sub_13180()
{
  result = qword_25060;
  if (!qword_25060)
  {
    sub_30D4(&qword_25008, &qword_198A0);
    sub_12FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25060);
  }

  return result;
}

unint64_t sub_1320C()
{
  result = qword_25068;
  if (!qword_25068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25068);
  }

  return result;
}

unint64_t sub_1325C()
{
  result = qword_25070;
  if (!qword_25070)
  {
    sub_30D4(&qword_25078, &unk_198E0);
    sub_13010();
    sub_13180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25070);
  }

  return result;
}

__n128 sub_132E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_132F4(uint64_t a1, int a2)
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

uint64_t sub_1333C(uint64_t result, int a2, int a3)
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

int *sub_133A4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2CFC(&qword_250D8, &qword_199D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v14[3] = a1;
  v8 = a1;
  result = [v8 name];
  if (result)
  {
    v10 = result;
    v11 = sub_17C5C();
    v13 = v12;

    v14[1] = v11;
    v14[2] = v13;
    sub_121A8();
    sub_34C4();
    sub_179BC();

    LOBYTE(v10) = sub_1788C();
    (*(v5 + 32))(a2, v7, v4);
    result = sub_2CFC(&qword_25080, &qword_199A0);
    *(a2 + result[9]) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_13528@<Q0>(id a1@<X1>, uint64_t a3@<X8>)
{
  v5 = [a1 cellType];
  if (v5 == &dword_0 + 2)
  {
    v9 = sub_1771C();
    LOBYTE(v13) = 1;
    sub_13C20(v36, a1);
    v21 = *&v36[32];
    v22 = *&v36[48];
    v19 = *v36;
    v20 = *&v36[16];
    v26 = *&v36[32];
    v27 = *&v36[48];
    v28 = *&v36[64];
    v25 = *&v36[16];
    v23 = *&v36[64];
    v24 = *v36;
    sub_3518(&v19, v34, &qword_250D0, &qword_199C8);
    sub_62B8(&v24, &qword_250D0, &qword_199C8);
    *&v36[7] = v19;
    *&v36[23] = v20;
    *&v36[71] = v23;
    *&v36[55] = v22;
    *&v36[39] = v21;
    v29 = v9;
    v30 = 0;
    v31[0] = 1;
    *&v31[17] = *&v36[16];
    *&v31[1] = *v36;
    *&v31[80] = *(&v23 + 1);
    *&v31[65] = *&v36[64];
    *&v31[49] = *&v36[48];
    *&v31[33] = *&v36[32];
    *&v36[64] = *&v31[48];
    *&v36[80] = *&v31[64];
    *&v36[96] = *&v31[80];
    *v36 = v9;
    *&v36[16] = *v31;
    *&v36[32] = *&v31[16];
    *&v36[48] = *&v31[32];
    v32 = 1;
    v36[104] = 1;
    v7 = &qword_250C0;
    v8 = &qword_199C0;
    sub_3518(&v29, v34, &qword_250C0, &qword_199C0);
    sub_2CFC(&qword_250B0, &qword_199B8);
    sub_2CFC(&qword_250C0, &qword_199C0);
    sub_6388(&qword_250A8, &qword_250B0, &qword_199B8, &protocol conformance descriptor for VStack<A>);
    sub_6388(&qword_250B8, &qword_250C0, &qword_199C0, &protocol conformance descriptor for HStack<A>);
    sub_1775C();
    *&v36[64] = v17;
    *&v36[80] = *v18;
    *&v36[89] = *&v18[9];
    *v36 = v13;
    *&v36[16] = v14;
    *&v36[32] = v15;
    *&v36[48] = v16;
    v33 = 0;
  }

  else
  {
    if (v5 != &dword_0 + 1)
    {
      v35[25] = 1;
      sub_2CFC(&qword_250A0, &qword_199B0);
      sub_14008();
      sub_1775C();
      goto LABEL_7;
    }

    v6 = sub_1773C();
    LOBYTE(v34[0]) = 1;
    sub_139D4(&v24, a1);
    *&v36[7] = v24;
    *&v36[23] = v25;
    *&v36[39] = v26;
    *&v36[55] = v27;
    v29 = v6;
    v30 = 0;
    v31[0] = v34[0];
    *&v31[1] = *v36;
    *&v31[17] = *&v36[16];
    *&v31[33] = *&v36[32];
    *&v31[49] = *&v36[48];
    *&v31[64] = *(&v27 + 1);
    *v36 = v6;
    *&v36[16] = *v31;
    *&v36[32] = *&v31[16];
    *&v36[48] = *&v31[32];
    *&v36[64] = *&v31[48];
    *&v36[80] = *(&v27 + 1);
    v33 = 0;
    v36[104] = 0;
    v7 = &qword_250B0;
    v8 = &qword_199B8;
    sub_3518(&v29, v34, &qword_250B0, &qword_199B8);
    sub_2CFC(&qword_250B0, &qword_199B8);
    sub_2CFC(&qword_250C0, &qword_199C0);
    sub_6388(&qword_250A8, &qword_250B0, &qword_199B8, &protocol conformance descriptor for VStack<A>);
    sub_6388(&qword_250B8, &qword_250C0, &qword_199C0, &protocol conformance descriptor for HStack<A>);
    sub_1775C();
    *&v36[64] = v17;
    *&v36[80] = *v18;
    *&v36[89] = *&v18[9];
    *v36 = v13;
    *&v36[16] = v14;
    *&v36[32] = v15;
    *&v36[48] = v16;
    LOBYTE(v19) = 0;
  }

  v36[105] = 0;
  sub_2CFC(&qword_250A0, &qword_199B0);
  sub_14008();
  sub_1775C();
  sub_62B8(&v29, v7, v8);
  *&v36[64] = v34[4];
  *&v36[80] = *v35;
  *&v36[90] = *&v35[10];
  *v36 = v34[0];
  *&v36[16] = v34[1];
  *&v36[32] = v34[2];
  *&v36[48] = v34[3];
LABEL_7:
  v10 = *&v36[80];
  *(a3 + 64) = *&v36[64];
  *(a3 + 80) = v10;
  *(a3 + 90) = *&v36[90];
  v11 = *&v36[16];
  *a3 = *v36;
  *(a3 + 16) = v11;
  result = *&v36[48];
  *(a3 + 32) = *&v36[32];
  *(a3 + 48) = result;
  return result;
}

uint64_t *sub_139D4@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>)
{
  result = [a2 name];
  if (result)
  {
    v4 = result;
    sub_17C5C();

    sub_34C4();
    v5 = sub_178FC();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_10838();
    if (v12)
    {
      v13 = sub_178FC();
      v15 = v14;
      v17 = v16;
      sub_17A0C();
      v36 = v7;
      v18 = sub_178BC();
      v35 = v9;
      v20 = v19;
      v37 = v11;
      v22 = v21;

      sub_A0FC(v13, v15, v17 & 1);

      sub_1789C();
      v23 = sub_178DC();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = v22 & 1;
      v11 = v37;
      v31 = v18;
      v7 = v36;
      v32 = v20;
      v9 = v35;
      sub_A0FC(v31, v32, v30);

      v33 = v27 & 1;
      sub_2AD4(v23, v25, v27 & 1);
    }

    else
    {
      v23 = 0;
      v25 = 0;
      v33 = 0;
      v29 = 0;
    }

    v34 = v9 & 1;
    sub_2AD4(v5, v7, v34);

    sub_141B8(v23, v25, v33, v29);
    sub_141FC(v23, v25, v33, v29);
    *a1 = v5;
    a1[1] = v7;
    *(a1 + 16) = v34;
    a1[3] = v11;
    a1[4] = v23;
    a1[5] = v25;
    a1[6] = v33;
    a1[7] = v29;
    sub_141FC(v23, v25, v33, v29);
    sub_A0FC(v5, v7, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_13C20@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>)
{
  result = [a2 name];
  if (result)
  {
    v4 = result;
    sub_17C5C();

    sub_34C4();
    v5 = sub_178FC();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_10838();
    if (v12)
    {
      v13 = sub_178FC();
      v15 = v14;
      v28 = v7;
      v17 = v16;
      sub_17A0C();
      v18 = sub_178BC();
      v20 = v19;
      v27 = v21;
      v23 = v22;

      v24 = v17 & 1;
      v7 = v28;
      sub_A0FC(v13, v15, v24);

      v25 = v27 & 1;
      sub_2AD4(v18, v20, v27 & 1);

      sub_A0FC(v18, v20, v27 & 1);

      sub_2AD4(v18, v20, v27 & 1);

      v26 = 1;
    }

    else
    {
      v26 = 0;
      v18 = 0;
      v20 = 0;
      v25 = 0;
      v23 = 0;
    }

    sub_2AD4(v5, v7, v9 & 1);

    sub_14240(0, v26, v18, v20, v25, v23);
    sub_1428C(0, v26, v18, v20, v25, v23);
    *a1 = v5;
    a1[1] = v7;
    *(a1 + 16) = v9 & 1;
    a1[3] = v11;
    a1[4] = 0;
    a1[5] = v26;
    a1[6] = v18;
    a1[7] = v20;
    a1[8] = v25;
    a1[9] = v23;
    sub_1428C(0, v26, v18, v20, v25, v23);
    sub_A0FC(v5, v7, v9 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_13E80()
{
  v1 = sub_2CFC(&qword_25080, &qword_199A0);
  __chkstk_darwin(v1);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  sub_133A4(v2, &v5[-v3]);
  sub_2CFC(&qword_25088, &qword_199A8);
  sub_13F7C();
  sub_140EC();
  return sub_1759C();
}

unint64_t sub_13F7C()
{
  result = qword_25090;
  if (!qword_25090)
  {
    sub_30D4(&qword_25088, &qword_199A8);
    sub_14008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25090);
  }

  return result;
}

unint64_t sub_14008()
{
  result = qword_25098;
  if (!qword_25098)
  {
    sub_30D4(&qword_250A0, &qword_199B0);
    sub_6388(&qword_250A8, &qword_250B0, &qword_199B8, &protocol conformance descriptor for VStack<A>);
    sub_6388(&qword_250B8, &qword_250C0, &qword_199C0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25098);
  }

  return result;
}

unint64_t sub_140EC()
{
  result = qword_250C8;
  if (!qword_250C8)
  {
    sub_30D4(&qword_25080, &qword_199A0);
    sub_121A8();
    sub_34C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_250C8);
  }

  return result;
}

uint64_t sub_141B8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2AD4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_141FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_A0FC(result, a2, a3 & 1);
  }

  return result;
}

void sub_14240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2AD4(a3, a4, a5 & 1);
  }
}

void sub_1428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_A0FC(a3, a4, a5 & 1);
  }
}

uint64_t sub_1431C(uint64_t *a1, int a2)
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

uint64_t sub_14364(uint64_t result, int a2, int a3)
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

uint64_t sub_143CC(uint64_t a1, uint64_t a2)
{
  v7 = a2;

  v2 = sub_2CFC(&qword_25108, &qword_19AA8);
  v3 = sub_14684();
  v4 = sub_14630();
  v5 = sub_146E8();
  return sub_17B1C(&v7, sub_14478, 0, v2, &type metadata for ObjectIdentifier, &type metadata for SettingsSpecifierView, v3, v4, v5);
}

id sub_14478@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_14484()
{
  result = [*v0 name];
  if (result)
  {
    v2 = result;
    sub_17C5C();

    sub_34C4();
    v3 = sub_178FC();
    __chkstk_darwin(v3);
    sub_2CFC(&qword_250F0, &qword_19AA0);
    sub_145AC();
    return sub_17B2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_145AC()
{
  result = qword_250F8;
  if (!qword_250F8)
  {
    sub_30D4(&qword_250F0, &qword_19AA0);
    sub_14630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_250F8);
  }

  return result;
}

unint64_t sub_14630()
{
  result = qword_25100;
  if (!qword_25100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25100);
  }

  return result;
}

unint64_t sub_14684()
{
  result = qword_25110;
  if (!qword_25110)
  {
    sub_30D4(&qword_25108, &qword_19AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25110);
  }

  return result;
}

unint64_t sub_146E8()
{
  result = qword_25118;
  if (!qword_25118)
  {
    sub_14740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25118);
  }

  return result;
}

unint64_t sub_14740()
{
  result = qword_25270;
  if (!qword_25270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25270);
  }

  return result;
}

unint64_t sub_14790()
{
  result = qword_25120;
  if (!qword_25120)
  {
    sub_30D4(&qword_25128, &unk_19AB0);
    sub_145AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25120);
  }

  return result;
}

uint64_t sub_14854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;
}

uint64_t sub_14890()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1746C();

  swift_getKeyPath();
  sub_2CFC(&qword_25130, &qword_19BD8);
  sub_14A94();
  sub_14AF8();
  sub_14B50();
  return sub_17B0C();
}

uint64_t sub_14994@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1746C();

  *a2 = v4;
  return result;
}

uint64_t sub_14A18(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1747C();
}

unint64_t sub_14A94()
{
  result = qword_25138;
  if (!qword_25138)
  {
    sub_30D4(&qword_25130, &qword_19BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25138);
  }

  return result;
}

unint64_t sub_14AF8()
{
  result = qword_25140;
  if (!qword_25140)
  {
    sub_14740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25140);
  }

  return result;
}

unint64_t sub_14B50()
{
  result = qword_25148;
  if (!qword_25148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25148);
  }

  return result;
}

unint64_t sub_14BA8()
{
  result = qword_25150;
  if (!qword_25150)
  {
    sub_30D4(&qword_25158, &unk_19BE0);
    sub_14B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25150);
  }

  return result;
}

id sub_14C58()
{
  result = [*(v0 + 8) name];
  if (result)
  {
    v2 = result;
    sub_17C5C();

    sub_10C20();
    sub_34C4();
    return sub_17ADC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_14D34(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 cellType];
  if ((v4 - 1) < 2 || v4 == &dword_4 + 2)
  {
    sub_14740();
    sub_15118();
    sub_175CC();
    v6 = v5;
    sub_15048();
    sub_1509C();
    v7 = v6;
    sub_1775C();
    sub_2CFC(&qword_25160, &qword_19D48);
    sub_14FBC();
    sub_1775C();
  }

  else
  {

    sub_2CFC(&qword_25160, &qword_19D48);
    sub_14FBC();
    sub_1775C();
  }

  *a2 = v3;
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  *(a2 + 25) = v11;
  v8 = v3;
  sub_150F0(v9, *(&v9 + 1), v10, v11);
  sub_15104(v9, *(&v9 + 1), v10, v11);
}

__n128 sub_14F40@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1771C();
  sub_14D34(v3, &v9);
  v5 = v9;
  v6 = v11;
  v7 = v12;
  result = v10;
  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v5;
  a1[2] = result;
  a1[3].n128_u8[0] = v6;
  a1[3].n128_u8[1] = v7;
  return result;
}

unint64_t sub_14FBC()
{
  result = qword_25168;
  if (!qword_25168)
  {
    sub_30D4(&qword_25160, &qword_19D48);
    sub_15048();
    sub_1509C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25168);
  }

  return result;
}

unint64_t sub_15048()
{
  result = qword_25170;
  if (!qword_25170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25170);
  }

  return result;
}

unint64_t sub_1509C()
{
  result = qword_25178;
  if (!qword_25178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25178);
  }

  return result;
}

id sub_150F0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return a2;
  }

  return result;
}

void sub_15104(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

unint64_t sub_15118()
{
  result = qword_25180;
  if (!qword_25180)
  {
    sub_14740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25180);
  }

  return result;
}

unint64_t sub_15174()
{
  result = qword_25188;
  if (!qword_25188)
  {
    sub_30D4(&unk_25190, qword_19D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25188);
  }

  return result;
}

uint64_t sub_151D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1746C();

  return v1;
}

char *sub_1524C()
{
  v1 = sub_2CFC(&unk_25280, qword_19E88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState__specifierSections;
  v18 = _swiftEmptyArrayStorage;
  sub_2CFC(&qword_25130, &qword_19BD8);
  sub_1745C();
  (*(v2 + 32))(&v0[v5], v4, v1);
  v6 = OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState_systemPolicy;
  sub_17C5C();
  v7 = objc_allocWithZone(PSSystemPolicyForApp);
  v8 = sub_17C3C();

  v9 = [v7 initWithBundleIdentifier:v8];

  *&v0[v6] = v9;
  v10 = type metadata accessor for SpecifierState(0);
  v17.receiver = v0;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "init");
  v12 = sub_15468();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v12;
  v13 = v11;
  sub_1747C();
  v14 = *&v13[OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState_systemPolicy];
  if (v14)
  {
    [v14 setDelegate:v13];
  }

  return v13;
}

char *sub_15468()
{
  v1 = *(v0 + OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState_systemPolicy);
  if (!v1 || (v2 = [v1 specifiers]) == 0 || (v3 = v2, v0 = sub_17CBC(), v3, v4 = sub_15B54(v0), , !v4))
  {

    v4 = _swiftEmptyArrayStorage;
  }

  v54 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    v5 = sub_17F3C();
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_64:

    return _swiftEmptyArrayStorage;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_64;
  }

LABEL_7:
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_66;
  }

  v6 = 0;
  v50 = 0;
  v48 = PSCellClassKey;
  v47 = PSValueKey;
  v0 = _swiftEmptyArrayStorage;
  v49 = _swiftEmptyArrayStorage;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_17EBC();
    }

    else
    {
      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    [v8 loadValuesAndTitlesFromDataSource];
    v10 = [v9 identifier];
    if (!v10)
    {
      goto LABEL_69;
    }

    v11 = v10;
    v12 = sub_17C5C();
    v14 = v13;

    if (v12 == 0x4143494649544F4ELL && v14 == 0xED0000534E4F4954)
    {
      goto LABEL_28;
    }

    v16 = sub_17F5C();

    if ((v16 & 1) == 0)
    {
LABEL_69:
      if ([v9 propertyForKey:v48])
      {
        sub_17E1C();
        swift_unknownObjectRelease();
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      v53[0] = v51;
      v53[1] = v52;
      if (!*(&v52 + 1))
      {
        sub_15F44(v53);
        goto LABEL_46;
      }

      sub_2CFC(&qword_25258, &qword_19E78);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_46;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = NSStringFromClass(ObjCClassFromMetadata);
      v19 = sub_17C5C();
      v21 = v20;

      if (v19 == 0xD00000000000002BLL && 0x800000000001CF20 == v21)
      {
LABEL_28:

        goto LABEL_29;
      }

      v30 = sub_17F5C();

      if ((v30 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

LABEL_29:
    if (![objc_opt_self() cellClassForSpecifier:v9])
    {
      goto LABEL_46;
    }

    swift_getObjCClassMetadata();
    sub_11FDC(0, &qword_25260, UITableViewCell_ptr);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_46;
    }

    v22 = swift_getObjCClassFromMetadata();
    sub_11FDC(0, &qword_25268, PSTableCell_ptr);
    if (![(objc_class *)v22 isSubclassOfClass:swift_getObjCClassFromMetadata()])
    {
      v29 = [objc_allocWithZone(v22) initWithStyle:1 reuseIdentifier:0];
LABEL_41:
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32 && (v33 = v32, [v32 refreshCellContentsWithSpecifier:v9], (v34 = objc_msgSend(v33, "detailTextLabel")) != 0) && (v35 = v34, v36 = objc_msgSend(v34, "text"), v35, v36))
      {
        sub_17C5C();

        v37 = sub_17C3C();

        [v9 setProperty:v37 forKey:v47];
      }

      else
      {
      }

      goto LABEL_46;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = swift_getObjCClassFromMetadata();
      v24 = [v23 cellStyle];
      v25 = [v23 reuseIdentifierForSpecifier:v9];
      if (v25)
      {
        v26 = v25;
        sub_17C5C();

        v27 = v9;
        v28 = sub_17C3C();
      }

      else
      {
        v31 = v9;
        v28 = 0;
      }

      v29 = [objc_allocWithZone(v23) initWithStyle:v24 reuseIdentifier:v28 specifier:v9];

      if (v29)
      {
        goto LABEL_41;
      }
    }

LABEL_46:
    if ([v9 cellType])
    {
      v38 = v9;
      sub_17CAC();
      if (*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v54 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_17CCC();
      }

      sub_17CDC();

      v0 = v54;
    }

    else
    {
      if (v50)
      {
        v39 = v50;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v49;
        }

        else
        {
          v40 = sub_15FAC(0, *(v49 + 2) + 1, 1, v49);
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        if (v42 >= v41 >> 1)
        {
          v40 = sub_15FAC((v41 > 1), v42 + 1, 1, v40);
        }

        *(v40 + 2) = v42 + 1;
        v49 = v40;
        v7 = &v40[16 * v42];
        *(v7 + 4) = v39;
        *(v7 + 5) = v0;

        v0 = _swiftEmptyArrayStorage;
        v54 = _swiftEmptyArrayStorage;
      }

      v50 = v9;
    }

    ++v6;
  }

  while (v5 != v6);

  if (v50)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v49;
      goto LABEL_59;
    }

LABEL_66:
    result = sub_15FAC(0, *(v49 + 2) + 1, 1, v49);
LABEL_59:
    v45 = *(result + 2);
    v44 = *(result + 3);
    if (v45 >= v44 >> 1)
    {
      result = sub_15FAC((v44 > 1), v45 + 1, 1, result);
    }

    *(result + 2) = v45 + 1;
    v46 = &result[16 * v45];
    *(v46 + 4) = v50;
    *(v46 + 5) = v0;
  }

  else
  {

    return v49;
  }

  return result;
}

void *sub_15B54(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_17EFC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_B668(i, v5);
    sub_11FDC(0, &qword_25270, PSSpecifier_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_17EDC();
    sub_17F0C();
    sub_17F1C();
    sub_17EEC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_15C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpecifierState(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SpecifierState(uint64_t a1)
{
  result = qword_251D0;
  if (!qword_251D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_15D74(uint64_t a1)
{
  sub_15E0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_15E0C(uint64_t a1)
{
  if (!qword_251E0)
  {
    sub_30D4(&qword_25130, &qword_19BD8);
    v1 = sub_1748C();
    if (!v2)
    {
      atomic_store(v1, &qword_251E0);
    }
  }
}

uint64_t sub_15E70@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SpecifierState(0);
  result = sub_1744C();
  *a2 = result;
  return result;
}

uint64_t sub_15F44(uint64_t a1)
{
  v2 = sub_2CFC(&qword_25250, &qword_19E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_15FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CFC(&qword_25278, &qword_19E80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_160F0()
{
  result = qword_25388;
  if (!qword_25388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25388);
  }

  return result;
}

uint64_t sub_16160@<X0>(uint64_t a2@<X8>)
{

  sub_17DAC();
  sub_17DBC();
  sub_1732C();
  sub_B520();
  v3 = sub_175CC();
  v5 = v4;
  sub_17C5C();
  v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  result = sub_174AC();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = sub_7148;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_16238(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_175BC();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_1728C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_2CFC(&qword_253A8, &qword_19F50);
  v2[15] = swift_task_alloc();
  v5 = sub_1722C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_17D0C();
  v2[19] = sub_17CFC();
  v7 = sub_17CEC();

  return _swift_task_switch(sub_16428, v7, v6);
}

uint64_t sub_16428()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];

  sub_17BCC();
  sub_1720C();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    sub_17BBC();
    v0[2] = sub_1721C();
    v0[3] = v10;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_34C4();
    v11 = sub_17E0C();

    v13 = 0;
    v14 = *(v11 + 16);
LABEL_4:
    v15 = (v11 + 40 + 16 * v13);
    while (v14 != v13)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = *(v15 - 1);
      v16 = *v15;
      v15 += 2;
      ++v13;
      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_16AB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          result = sub_16AB4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v16;
        goto LABEL_4;
      }
    }

    v22 = _swiftEmptyArrayStorage[2];
    if (!v22)
    {
LABEL_29:
      v30 = v0[17];
      v29 = v0[18];
      v31 = v0[16];
      v33 = v0[9];
      v32 = v0[10];
      v34 = v0[8];

      sub_17BDC();
      (*(v33 + 8))(v32, v34);
      (*(v30 + 8))(v29, v31);
      goto LABEL_30;
    }

    v23 = &_swiftEmptyArrayStorage[5];
    while (1)
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      v26 = v25 == 0xD000000000000012 && 0x800000000001CAA0 == v24;
      if (v26 || (sub_17F5C() & 1) != 0)
      {
        goto LABEL_19;
      }

      if (sub_1730C() == v25 && v27 == v24)
      {
      }

      else
      {
        v28 = sub_17F5C();

        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      sub_A0A8();
      sub_175AC();
LABEL_19:
      v23 += 2;
      if (!--v22)
      {
        goto LABEL_29;
      }
    }
  }

  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  sub_16A4C(v0[15]);
  sub_17BBC();
  sub_17BDC();
  (*(v9 + 8))(v7, v8);
LABEL_30:

  v35 = v0[1];

  return v35();
}

uint64_t sub_16810()
{
  v0 = sub_2CFC(&qword_25390, &qword_19F40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_16994();

  sub_17BEC();
  sub_169E8();
  sub_17BAC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1694C@<X0>(uint64_t *a1@<X8>)
{
  sub_1732C();
  swift_allocObject();
  result = sub_1731C();
  *a1 = result;
  return result;
}

unint64_t sub_16994()
{
  result = qword_25398;
  if (!qword_25398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25398);
  }

  return result;
}

unint64_t sub_169E8()
{
  result = qword_253A0;
  if (!qword_253A0)
  {
    sub_30D4(&qword_25390, &qword_19F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253A0);
  }

  return result;
}

uint64_t sub_16A4C(uint64_t a1)
{
  v2 = sub_2CFC(&qword_253A8, &qword_19F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_16AB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_16AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_16AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CFC(&qword_253B0, &qword_19F58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_16BF0()
{
  sub_30D4(&qword_25390, &qword_19F40);
  sub_169E8();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_16C54(int a1, int a2, int a3)
{
  if (qword_262D0 == -1)
  {
    v3 = dword_262C0 < a1;
    if (dword_262C0 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_171DC();
    a2 = v6;
    a3 = v5;
    v3 = dword_262C0 < a1;
    if (dword_262C0 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_262C4 > a2)
  {
    return 1;
  }

  if (dword_262C4 < a2)
  {
    return 0;
  }

  return dword_262C8 >= a3;
}

uint64_t sub_16D14(int a1, int a2, int a3, int a4)
{
  if (qword_262D8 == -1)
  {
    if (qword_262E0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_171F4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_262E0)
    {
      return _availability_version_check();
    }
  }

  if (qword_262D0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_171DC();
    a3 = v10;
    a4 = v9;
    v8 = dword_262C0 < v11;
    if (dword_262C0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_262C4 > a3)
      {
        return 1;
      }

      if (dword_262C4 >= a3)
      {
        return dword_262C8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_262C0 < a2;
  if (dword_262C0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_16EA8(uint64_t result)
{
  v1 = qword_262E0;
  if (qword_262E0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_262E0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_262C0, &dword_262C4, &dword_262C8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}