id sub_1598()
{
  type metadata accessor for FindDateAndTimeClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_18C18 = result;
  return result;
}

uint64_t sub_15F0(uint64_t *a1)
{
  if (sub_D8C0(2, 26, 0, 0))
  {
    sub_E368();

    return sub_E198();
  }

  else
  {
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    sub_E198();
    sub_E7B8();
    swift_getWitnessTable();
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    return sub_E198();
  }
}

uint64_t sub_1754(uint64_t *a1)
{
  if (sub_D8C0(2, 26, 0, 0))
  {
    sub_E368();
    sub_E198();
  }

  else
  {
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    sub_E198();
    sub_E7B8();
    swift_getWitnessTable();
    sub_E1D8();
    swift_getWitnessTable();
    sub_E358();
    sub_E198();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1954(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_19C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_19D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v24 = a5;
  v9 = a4 >> 8;
  v10 = sub_1954(&qword_184B0, &qword_EEE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_1954(&qword_18408, &qword_EDF8);
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(sub_1954(&qword_18410, &qword_EE00) + 36)];
  *v15 = v9;
  v15[1] = 1;
  v27 = a2;
  v28 = a3;
  v29 = v5;
  sub_1954(&qword_184B8, &qword_EEE8);
  sub_E578();
  if (v25 == 5 || (sub_9458(v25, HIBYTE(v5)) & 1) == 0)
  {
    v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v16 = sub_E4D8();
  }

  else
  {
    v16 = sub_E4B8();
  }

  v18 = v16;
  v19 = sub_E618();
  v27 = a2;
  v28 = a3;
  v29 = v5;
  sub_E578();
  v25 = v18;
  v26 = v19;
  sub_1954(&qword_184C0, &qword_EEF0);
  sub_1D0C();
  v20 = sub_E568();
  v21 = v24;
  (*(v11 + 32))(v24, v13, v10);
  result = sub_1954(&qword_184E0, &qword_EF00);
  *(v21 + *(result + 36)) = v20;
  return result;
}

unint64_t sub_1D0C()
{
  result = qword_184C8;
  if (!qword_184C8)
  {
    sub_1DC4(&qword_184C0, &qword_EEF0);
    sub_1FA0(&qword_184D0, &qword_184D8, &qword_EEF8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184C8);
  }

  return result;
}

uint64_t sub_1DC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E10()
{
  result = qword_184E8;
  if (!qword_184E8)
  {
    sub_1DC4(&qword_184E0, &qword_EF00);
    sub_1DC4(&qword_18408, &qword_EDF8);
    sub_1FA0(&qword_184F0, &qword_18408, &qword_EDF8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1F4C();
    swift_getOpaqueTypeConformance2();
    sub_1FA0(&qword_18500, &qword_18508, &unk_EF08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184E8);
  }

  return result;
}

unint64_t sub_1F4C()
{
  result = qword_184F8;
  if (!qword_184F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184F8);
  }

  return result;
}

uint64_t sub_1FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_DE88();
  __chkstk_darwin(v4 - 8);
  v5 = sub_DDF8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_E718();
  __chkstk_darwin(v9 - 8);
  sub_E088();
  swift_allocObject();
  v15 = sub_E078();
  sub_E4F8();
  v10 = v17;
  *a2 = v16;
  a2[1] = v10;
  type metadata accessor for DateAndTimeList(0);
  sub_E708();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v11 = [qword_18C18 bundleURL];
  sub_DE28();

  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v5);
  sub_DE78();
  sub_DE18();
  v15 = a1;
  type metadata accessor for DateAndTimeListState(0);
  result = sub_E4F8();
  v13 = v17;
  a2[2] = v16;
  a2[3] = v13;
  return result;
}

uint64_t type metadata accessor for DateAndTimeList(uint64_t a1)
{
  result = qword_18568;
  if (!qword_18568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_DE08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_DE08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243C(uint64_t a1)
{
  sub_2510(319, &qword_18578, &type metadata accessor for DateAndTimeSettingsState);
  if (v1 <= 0x3F)
  {
    sub_2510(319, &unk_18580, type metadata accessor for DateAndTimeListState);
    if (v2 <= 0x3F)
    {
      sub_DE08();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E528();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2580@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_1954(&qword_185B8, &qword_EFA8);
  __chkstk_darwin(v2 - 8);
  v57 = &v45 - v3;
  v4 = sub_DE08();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_E688();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DateAndTimeList(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1954(&qword_185C0, &qword_EFB0);
  v54 = *(v16 - 8);
  v55 = v16;
  __chkstk_darwin(v16);
  v58 = &v45 - v17;
  sub_6F50(v1, v15);
  v18 = *(v13 + 80);
  v19 = (v18 + 16) & ~v18;
  v51 = v14;
  v49 = v18;
  v20 = swift_allocObject();
  v50 = v19;
  v52 = v15;
  sub_6FB8(v15, v20 + v19);
  v60 = sub_701C;
  v61 = v20;
  *v10 = 0xD000000000000024;
  v10[1] = 0x800000000000F880;
  v46 = v8;
  v21 = *(v8 + 104);
  v47 = v7;
  v22 = v7;
  v23 = v6;
  v24 = v57;
  v21(v10, enum case for SettingsEventImage.graphicIcon(_:), v22);
  v25 = *(v59 + 16);
  v26 = v1 + *(v12 + 32);
  v48 = v4;
  v25(v23, v26, v4);
  v53 = v1;
  sub_5C90();
  sub_DE38();
  v27 = sub_DE48();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v24, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v45 = sub_1954(&qword_185C8, &qword_EFB8);
    v30 = sub_1FA0(&qword_185D0, &qword_185C8, &qword_EFB8, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_E3F8();

    (*(v59 + 8))(v23, v48);
    (*(v46 + 8))(v10, v47);

    (*(v28 + 8))(v24, v27);
    v31 = v53;
    v32 = v53[1];
    v64 = *v53;
    v65 = v32;
    sub_1954(&qword_185D8, &qword_EFC0);
    sub_E518();
    v33 = v60;
    v34 = v61;
    v35 = v62;
    swift_getKeyPath();
    v64 = v33;
    v65 = v34;
    v66 = v35;
    sub_1954(&qword_185E0, &qword_EFF8);
    sub_E588();

    v36 = v52;
    sub_6F50(v31, v52);
    v37 = v50;
    v38 = swift_allocObject();
    sub_6FB8(v36, v38 + v37);
    sub_1954(&qword_185E8, &qword_F000);
    v60 = v45;
    v61 = v30;
    swift_getOpaqueTypeConformance2();
    v39 = type metadata accessor for TimeZoneSearchList(255);
    v40 = sub_E088();
    v41 = sub_7F44(&qword_185F0, type metadata accessor for TimeZoneSearchList, &unk_F624);
    v42 = sub_7F44(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
    v60 = v39;
    v61 = v40;
    v62 = v41;
    v63 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v55;
    v44 = v58;
    sub_E488();

    return (*(v54 + 8))(v44, v43);
  }

  return result;
}

uint64_t sub_2C98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v67 = a3;
  v4 = sub_E1C8();
  v63 = *(v4 - 8);
  v64 = v4;
  v65 = *(v63 + 64);
  __chkstk_darwin(v4);
  v62 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateAndTimeList(0);
  v7 = v6 - 8;
  v61 = *(v6 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v6);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_DE08();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1954(&qword_18610, &qword_F048);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v53 = sub_1954(&qword_18618, &qword_F050);
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = &v50 - v14;
  v16 = sub_1954(&qword_18620, &qword_F058);
  v17 = *(v16 - 8);
  v58 = v16;
  v59 = v17;
  __chkstk_darwin(v16);
  v51 = &v50 - v18;
  v68 = a2;
  sub_1954(&qword_18628, &qword_F060);
  sub_1FA0(&qword_18630, &qword_18628, &qword_F060, &protocol conformance descriptor for TupleView<A>);
  sub_E3A8();
  v19 = sub_E608();
  v50 = a2;
  v21 = *a2;
  v20 = a2[1];
  v70 = v21;
  v71 = v20;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  v22 = sub_E028();

  v23 = &v13[*(sub_1954(&qword_18638, &qword_F068) + 36)];
  *v23 = v19;
  v23[8] = v22 & 1;
  v24 = sub_E608();
  v70 = v21;
  v71 = v20;
  sub_E508();
  v25 = sub_DFA8();

  v26 = &v13[*(v11 + 36)];
  *v26 = v24;
  v26[8] = v25 & 1;
  v27 = sub_71EC();
  sub_E3E8();
  sub_7FFC(v13, &qword_18610, &qword_F048);
  v28 = v50;
  (*(v54 + 16))(v52, &v50[*(v7 + 32)], v55);
  v29 = sub_E3C8();
  v31 = v30;
  LOBYTE(v21) = v32;
  v70 = v11;
  v71 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v51;
  v35 = v53;
  sub_E468();
  sub_7388(v29, v31, v21 & 1);

  v36 = v35;
  (*(v56 + 8))(v15, v35);
  v37 = *(v28 + 24);
  v70 = *(v28 + 16);
  v71 = v37;
  sub_1954(&qword_18670, &qword_F080);
  sub_E508();
  v38 = v69;
  swift_getKeyPath();
  v70 = v38;
  sub_7F44(&qword_18678, type metadata accessor for DateAndTimeListState, &unk_F420);
  sub_DEA8();

  v39 = *(v38 + 16);

  LOBYTE(v69) = v39;
  v40 = v57;
  sub_6F50(v28, v57);
  v42 = v62;
  v41 = v63;
  v43 = v64;
  (*(v63 + 16))(v62, v66, v64);
  v44 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v45 = v41;
  v46 = (v60 + *(v41 + 80) + v44) & ~*(v41 + 80);
  v47 = swift_allocObject();
  sub_6FB8(v40, v47 + v44);
  (*(v45 + 32))(v47 + v46, v42, v43);
  sub_1954(&qword_18680, &qword_F0B0);
  v70 = v36;
  v71 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_7608();
  v48 = v58;
  sub_E4A8();

  return (*(v59 + 8))(v34, v48);
}

uint64_t sub_33E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_1954(&qword_18698, &qword_F0B8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = __chkstk_darwin(v3);
  v37 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v28 - v6;
  v7 = sub_1954(&qword_186A0, &qword_F0C0);
  v30 = *(v7 - 8);
  v8 = v30;
  v31 = v7;
  v9 = __chkstk_darwin(v7);
  v35 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v39 = a1;
  sub_1954(&qword_186A8, &qword_F0C8);
  sub_1FA0(&qword_186B0, &qword_186A8, &qword_F0C8, &protocol conformance descriptor for TupleView<A>);
  v29 = v12;
  sub_E5A8();
  v38 = a1;
  v13 = sub_E298();
  v42 = 0;
  sub_611C(a1, &v43);
  v49 = v44[3];
  v50 = v44[4];
  v51 = *&v44[5];
  v45 = v43;
  v46 = v44[0];
  v47 = v44[1];
  v48 = v44[2];
  v52[0] = v43;
  v52[1] = v44[0];
  v52[2] = v44[1];
  v52[3] = v44[2];
  v52[4] = v44[3];
  v52[5] = v44[4];
  v53 = *&v44[5];
  sub_816C(&v45, &v40, &qword_186B8, &qword_F0D0);
  sub_7FFC(v52, &qword_186B8, &qword_F0D0);
  *(&v41[3] + 7) = v48;
  *(&v41[4] + 7) = v49;
  *(&v41[5] + 7) = v50;
  *(&v41[6] + 7) = v51;
  *(v41 + 7) = v45;
  *(&v41[1] + 7) = v46;
  *(&v41[2] + 7) = v47;
  *&v43 = v13;
  *(&v43 + 1) = 0x4014000000000000;
  LOBYTE(v44[0]) = v42;
  *(&v44[2] + 1) = v41[2];
  *(&v44[1] + 1) = v41[1];
  *(v44 + 1) = v41[0];
  v44[6] = *(&v41[5] + 15);
  *(&v44[5] + 1) = v41[5];
  *(&v44[4] + 1) = v41[4];
  *(&v44[3] + 1) = v41[3];
  sub_1954(&qword_186C0, &qword_F0D8);
  sub_1954(&qword_186C8, &qword_F0E0);
  sub_1FA0(&qword_186D0, &qword_186C0, &qword_F0D8, &protocol conformance descriptor for TupleView<A>);
  sub_1FA0(&qword_186D8, &qword_186C8, &qword_F0E0, &protocol conformance descriptor for VStack<A>);
  v14 = v36;
  sub_E5B8();
  v15 = *(v8 + 16);
  v16 = v35;
  v17 = v31;
  v15(v35, v12, v31);
  v18 = v32;
  v19 = *(v32 + 16);
  v20 = v14;
  v21 = v33;
  v19(v37, v20, v33);
  v22 = v34;
  v15(v34, v16, v17);
  v23 = &v22[*(sub_1954(&qword_186E0, &qword_F0E8) + 48)];
  v24 = v37;
  v19(v23, v37, v21);
  v25 = *(v18 + 8);
  v25(v36, v21);
  v26 = *(v30 + 8);
  v26(v29, v17);
  v25(v24, v21);
  return (v26)(v35, v17);
}

uint64_t sub_38A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_1954(&qword_187F8, &qword_F260);
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v77 = &v72 - v4;
  v5 = sub_1954(&qword_18800, &qword_F268);
  v6 = __chkstk_darwin(v5 - 8);
  v76 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = &v72 - v8;
  v9 = sub_1954(&qword_18808, &qword_F270);
  v10 = __chkstk_darwin(v9 - 8);
  v87 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v86 = &v72 - v12;
  v13 = sub_1954(&qword_18810, &qword_F278);
  v74 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v75 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - v17;
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = a1[1];
  v73 = *a1;
  v91 = v73;
  v92 = v21;
  v83 = v21;
  v82 = sub_1954(&qword_185D8, &qword_EFC0);
  sub_E518();
  v22 = v94;
  v23 = v95;
  v24 = v96;
  swift_getKeyPath();
  v94 = v22;
  v95 = v23;
  v96 = v24;
  v81 = sub_1954(&qword_185E0, &qword_EFF8);
  sub_E588();

  sub_E558();
  v26 = a1[2];
  v25 = a1[3];
  v91 = v26;
  v92 = v25;
  v80 = v25;
  v79 = sub_1954(&qword_18670, &qword_F080);
  sub_E518();
  v27 = v94;
  v28 = v95;
  v29 = v96;
  swift_getKeyPath();
  v94 = v27;
  v95 = v28;
  v96 = v29;
  v78 = sub_1954(&qword_187A0, &qword_F1E0);
  sub_E588();

  v30 = v91;
  v31 = v92;
  LOBYTE(v24) = v93;

  v84 = v13;
  v32 = &v20[*(v13 + 36)];
  *v32 = v30;
  *(v32 + 1) = v31;
  v32[16] = v24;
  v32[17] = 0;
  v33 = [objc_opt_self() currentDevice];
  v34 = [v33 userInterfaceIdiom];

  if (v34 == &dword_0 + 1)
  {
    v72 = v26;
    v35 = v73;
    v36 = v83;
    v94 = v73;
    v95 = v83;
    sub_E508();
    v37 = sub_E028();

    v38 = 1;
    if ((v37 & 1) == 0)
    {
      v91 = v35;
      v92 = v36;
      sub_E518();
      v39 = v94;
      v40 = v95;
      v41 = v96;
      swift_getKeyPath();
      v94 = v39;
      v95 = v40;
      v96 = v41;
      sub_E588();

      sub_E558();
      v91 = v72;
      v92 = v80;
      sub_E518();
      v42 = v94;
      v43 = v95;
      v44 = v96;
      swift_getKeyPath();
      v94 = v42;
      v95 = v43;
      v96 = v44;
      sub_E588();

      v45 = v91;
      v46 = v92;
      v47 = v93;

      v36 = v83;

      v48 = v85;
      v49 = &v18[*(v84 + 36)];
      *v49 = v45;
      *(v49 + 1) = v46;
      v49[16] = v47;
      v49[17] = 1;
      sub_7EB4(v18, v48, &qword_18810, &qword_F278);
      v38 = 0;
    }

    v51 = v84;
    v50 = v85;
    (*(v74 + 56))(v85, v38, 1, v84);
    v91 = v35;
    v92 = v36;
    sub_E518();
    v52 = v94;
    v53 = v95;
    v54 = v96;
    swift_getKeyPath();
    v94 = v52;
    v95 = v53;
    v96 = v54;
    sub_E588();

    sub_E558();
    v91 = v72;
    v92 = v80;
    sub_E518();
    v55 = v94;
    v56 = v95;
    v57 = v96;
    swift_getKeyPath();
    v94 = v55;
    v95 = v56;
    v96 = v57;
    sub_E588();

    v58 = v91;
    v59 = v92;
    v60 = v93;

    v61 = &v18[*(v51 + 36)];
    *v61 = v58;
    *(v61 + 1) = v59;
    v61[16] = v60;
    v61[17] = 2;
    v62 = v76;
    sub_816C(v50, v76, &qword_18800, &qword_F268);
    v63 = v75;
    sub_816C(v18, v75, &qword_18810, &qword_F278);
    v64 = v77;
    sub_816C(v62, v77, &qword_18800, &qword_F268);
    v65 = sub_1954(&qword_18820, &qword_F318);
    sub_816C(v63, v64 + *(v65 + 48), &qword_18810, &qword_F278);
    sub_7FFC(v18, &qword_18810, &qword_F278);
    sub_7FFC(v50, &qword_18800, &qword_F268);
    sub_7FFC(v63, &qword_18810, &qword_F278);
    sub_7FFC(v62, &qword_18800, &qword_F268);
    v66 = v86;
    sub_7EB4(v64, v86, &qword_187F8, &qword_F260);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v66 = v86;
  }

  (*(v88 + 56))(v66, v67, 1, v89);
  sub_816C(v20, v18, &qword_18810, &qword_F278);
  v68 = v87;
  sub_816C(v66, v87, &qword_18808, &qword_F270);
  v69 = v90;
  sub_816C(v18, v90, &qword_18810, &qword_F278);
  v70 = sub_1954(&qword_18818, &qword_F2B0);
  sub_816C(v68, v69 + *(v70 + 48), &qword_18808, &qword_F270);
  sub_7FFC(v66, &qword_18808, &qword_F270);
  sub_7FFC(v20, &qword_18810, &qword_F278);
  sub_7FFC(v68, &qword_18808, &qword_F270);
  return sub_7FFC(v18, &qword_18810, &qword_F278);
}

uint64_t sub_4224@<X0>(uint64_t a1@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_18C18;
  result = sub_E3B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_430C@<X0>(uint64_t a1@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_18C18;
  result = sub_E3B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_43F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v126 = sub_E2E8();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1954(&qword_18738, &qword_F118);
  v4 = __chkstk_darwin(v122);
  v121 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v118 = &v116 - v6;
  v132 = sub_DE68();
  v119 = *(v132 - 8);
  v7 = __chkstk_darwin(v132);
  v129 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = &v116 - v9;
  v117 = sub_1954(&qword_18740, &qword_F120);
  __chkstk_darwin(v117);
  v123 = &v116 - v10;
  v11 = sub_1954(&qword_18748, &qword_F128);
  __chkstk_darwin(v11 - 8);
  v133 = &v116 - v12;
  v135 = sub_1954(&qword_18750, &qword_F130);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v120 = &v116 - v13;
  v14 = sub_1954(&qword_18758, &qword_F138);
  v15 = __chkstk_darwin(v14 - 8);
  v137 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v116 - v17;
  v18 = sub_1954(&qword_18760, &qword_F140);
  v19 = *(v18 - 8);
  v161 = v18;
  v162 = v19;
  __chkstk_darwin(v18);
  v154 = &v116 - v20;
  v21 = type metadata accessor for DateAndTimeList(0);
  v149 = *(v21 - 8);
  v148 = *(v149 + 64);
  __chkstk_darwin(v21 - 8);
  v147 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1954(&qword_18768, &qword_F148);
  v156 = *(v153 - 8);
  __chkstk_darwin(v153);
  v150 = &v116 - v23;
  v24 = sub_1954(&qword_18770, &qword_F150);
  v158 = *(v24 - 8);
  v159 = v24;
  __chkstk_darwin(v24);
  v151 = &v116 - v25;
  v155 = sub_1954(&qword_18778, &qword_F158) - 8;
  __chkstk_darwin(v155);
  v152 = &v116 - v26;
  v160 = sub_1954(&qword_18780, &qword_F160) - 8;
  __chkstk_darwin(v160);
  v157 = &v116 - v27;
  v164 = sub_1954(&qword_18788, &qword_F168) - 8;
  v28 = __chkstk_darwin(v164);
  v131 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v163 = &v116 - v31;
  __chkstk_darwin(v30);
  v165 = &v116 - v32;
  v140 = (sub_1954(&qword_18790, &qword_F170) - 8);
  v33 = __chkstk_darwin(v140);
  v130 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v116 - v35;
  v139 = a1;
  v38 = a1[1];
  v167 = *a1;
  v37 = v167;
  v168 = v38;
  v142 = v167;
  v141 = v38;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E518();
  v39 = v170;
  v40 = v171;
  v41 = v172;
  swift_getKeyPath();
  v170 = v39;
  v171 = v40;
  v172 = v41;
  v127 = sub_1954(&qword_185E0, &qword_EFF8);
  sub_E588();

  sub_E558();
  v170 = v37;
  v171 = v38;
  sub_E508();
  LOBYTE(v39) = sub_DEF8();

  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = v39 & 1;
  v44 = &v36[*(sub_1954(&qword_18798, &qword_F1D8) + 36)];
  *v44 = KeyPath;
  v44[1] = sub_7C18;
  v44[2] = v43;
  v45 = v139;
  v146 = v139[2];
  v145 = v139[3];
  v167 = v146;
  v168 = v145;
  v144 = sub_1954(&qword_18670, &qword_F080);
  sub_E518();
  v46 = v170;
  v47 = v171;
  v48 = v172;
  swift_getKeyPath();
  v170 = v46;
  v171 = v47;
  v172 = v48;
  v143 = sub_1954(&qword_187A0, &qword_F1E0);
  sub_E588();

  v49 = v167;
  v50 = v168;
  LOBYTE(v43) = v169;

  v51 = *(v140 + 11);
  v140 = v36;
  v52 = &v36[v51];
  *v52 = v49;
  *(v52 + 1) = v50;
  v52[16] = v43;
  v52[17] = 3;
  v53 = v147;
  sub_6F50(v45, v147);
  v54 = (*(v149 + 80) + 16) & ~*(v149 + 80);
  v55 = swift_allocObject();
  sub_6FB8(v53, v55 + v54);
  v166 = v45;
  sub_1954(&qword_187A8, &qword_F1E8);
  sub_7E00(&qword_187B0, &qword_187A8, &qword_F1E8, &protocol conformance descriptor for <> LabeledContent<A, B>);
  v56 = v150;
  sub_E548();
  v57 = v154;
  sub_E2F8();
  sub_1FA0(&qword_187B8, &qword_18768, &qword_F148, &protocol conformance descriptor for Button<A>);
  sub_1FA0(&qword_187C0, &qword_18760, &qword_F140, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  v58 = v151;
  v59 = v153;
  v60 = v161;
  sub_E438();
  (*(v162 + 8))(v57, v60);
  (*(v156 + 8))(v56, v59);
  v61 = swift_getKeyPath();
  v62 = v142;
  v63 = v141;
  v170 = v142;
  v171 = v141;
  sub_E508();
  LOBYTE(v57) = sub_DFA8();

  if (v57)
  {
    v64 = 2;
  }

  else
  {
    v64 = 0;
  }

  v65 = v152;
  (*(v158 + 32))(v152, v58, v159);
  v66 = v65 + *(v155 + 44);
  *v66 = v61;
  *(v66 + 8) = v64;
  v170 = v62;
  v171 = v63;
  sub_E508();
  v67 = sub_DFA8();

  v68 = swift_getKeyPath();
  v69 = swift_allocObject();
  *(v69 + 16) = v67 & 1;
  v70 = v157;
  sub_7EB4(v65, v157, &qword_18778, &qword_F158);
  v71 = (v70 + *(v160 + 44));
  *v71 = v68;
  v71[1] = sub_8388;
  v71[2] = v69;
  v167 = v146;
  v168 = v145;
  sub_E518();
  v72 = v170;
  v73 = v171;
  v74 = v172;
  swift_getKeyPath();
  v170 = v72;
  v171 = v73;
  v172 = v74;
  sub_E588();

  v75 = v167;
  v76 = v168;
  v77 = v169;

  v78 = v163;
  sub_7EB4(v70, v163, &qword_18780, &qword_F160);
  v79 = v165;
  v80 = v78 + *(v164 + 44);
  *v80 = v75;
  *(v80 + 8) = v76;
  v81 = v63;
  *(v80 + 16) = v77;
  *(v80 + 17) = 4;
  sub_7EB4(v78, v79, &qword_18788, &qword_F168);
  v170 = v62;
  v171 = v63;
  sub_E508();
  LOBYTE(v78) = sub_DFA8();

  if (v78)
  {
    v82 = 1;
    v83 = v136;
    v84 = v135;
    v85 = v134;
LABEL_8:
    (*(v85 + 56))(v83, v82, 1, v84);
    v109 = v140;
    v110 = v130;
    sub_816C(v140, v130, &qword_18790, &qword_F170);
    v111 = v165;
    v112 = v131;
    sub_7F8C(v165, v131);
    v113 = v137;
    sub_816C(v83, v137, &qword_18758, &qword_F138);
    v114 = v138;
    sub_816C(v110, v138, &qword_18790, &qword_F170);
    v115 = sub_1954(&qword_187F0, &qword_F258);
    sub_7F8C(v112, v114 + *(v115 + 48));
    sub_816C(v113, v114 + *(v115 + 64), &qword_18758, &qword_F138);
    sub_7FFC(v83, &qword_18758, &qword_F138);
    sub_7FFC(v111, &qword_18788, &qword_F168);
    sub_7FFC(v109, &qword_18790, &qword_F170);
    sub_7FFC(v113, &qword_18758, &qword_F138);
    sub_7FFC(v112, &qword_18788, &qword_F168);
    return sub_7FFC(v110, &qword_18790, &qword_F170);
  }

  v86 = sub_E288();
  v88 = v87;
  LODWORD(v164) = v89;
  v91 = v90;
  v167 = v62;
  v168 = v81;
  sub_E518();
  v92 = v170;
  v93 = v171;
  v94 = v172;
  swift_getKeyPath();
  v170 = v92;
  v171 = v93;
  v172 = v94;
  sub_E588();

  v95 = v128;
  sub_DE58();
  v96 = v129;
  sub_DE58();
  sub_7F44(&qword_187C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_E6F8();
  if (result)
  {
    v163 = v86;
    v98 = v119;
    v99 = *(v119 + 32);
    v100 = v118;
    v162 = v88;
    v101 = v132;
    v99(v118, v95, v132);
    v102 = v122;
    v99((v100 + *(v122 + 48)), v96, v101);
    v103 = v121;
    sub_816C(v100, v121, &qword_18738, &qword_F118);
    v104 = *(v102 + 48);
    v105 = v123;
    v99(v123, v103, v101);
    v161 = v91;
    v106 = *(v98 + 8);
    v106(v103 + v104, v101);
    sub_7EB4(v100, v103, &qword_18738, &qword_F118);
    v99(&v105[*(v117 + 36)], (v103 + *(v102 + 48)), v101);
    v106(v103, v101);
    sub_1954(&qword_187D0, &qword_F248);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_EF20;
    sub_E2C8();
    sub_E2D8();
    v167 = v107;
    sub_7F44(&qword_187D8, &type metadata accessor for DatePickerComponents, &protocol conformance descriptor for DatePickerComponents);
    sub_1954(&qword_187E0, &qword_F250);
    sub_1FA0(&qword_187E8, &qword_187E0, &qword_F250, &protocol conformance descriptor for [A]);
    sub_E7D8();
    v108 = v120;
    sub_E0C8();
    v85 = v134;
    v83 = v136;
    v84 = v135;
    (*(v134 + 32))(v136, v108, v135);
    v82 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_5750@<X0>(uint64_t a1@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_18C18;
  result = sub_E3B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5838(void *a1)
{
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  sub_DF98();
}

uint64_t sub_5898@<X0>(uint64_t a2@<X8>)
{
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  v3 = sub_DFE8();
  v5 = v4;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_5938@<X0>(uint64_t a3@<X8>)
{
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v4 = qword_18C18;
  result = sub_E3B8();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_5A0C(uint64_t a1)
{
  v2 = sub_DE68();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_DFD8();
}

uint64_t sub_5AD8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_E388();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (v12 != 5)
  {
    v13 = *(a3 + 24);
    v15[2] = *(a3 + 16);
    v15[3] = v13;
    sub_1954(&qword_18670, &qword_F080);
    v14 = sub_E508();
    __chkstk_darwin(v14);
    v15[-2] = a4;
    LOBYTE(v15[-1]) = v12;

    sub_E608();
    sub_E378();
    sub_E158();

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_5C90()
{
  v0 = sub_DE88();
  __chkstk_darwin(v0 - 8);
  v1 = sub_DDF8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_E718();
  __chkstk_darwin(v5 - 8);
  sub_1954(&qword_18608, &qword_F040);
  sub_DE08();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_EF30;
  sub_E708();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v7 = [qword_18C18 bundleURL];
  sub_DE28();

  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v1);
  sub_DE78();
  sub_DE18();
  return v6;
}

uint64_t sub_5F2C(void *a1)
{
  v2 = type metadata accessor for TimeZoneSearchList(0);
  __chkstk_darwin(v2);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = swift_getKeyPath();
  sub_1954(&qword_18600, &qword_F038);
  swift_storeEnumTagMultiPayload();
  v5 = v4 + *(v2 + 20);
  sub_E088();
  sub_7F44(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  *v5 = sub_E0E8();
  v5[8] = v6 & 1;
  v7 = v4 + *(v2 + 24);
  v11[1] = 0;
  v11[2] = 0xE000000000000000;
  sub_E4F8();
  v8 = v13;
  *v7 = v12;
  *(v7 + 2) = v8;
  v9 = a1[1];
  *&v12 = *a1;
  *(&v12 + 1) = v9;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  sub_7F44(&qword_185F0, type metadata accessor for TimeZoneSearchList, &unk_F624);
  sub_E448();

  return sub_7188(v4);
}

id sub_611C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v3 = *a1;
  sub_1954(&qword_185D8, &qword_EFC0);
  sub_E508();
  v5 = sub_E008();

  v61 = a2;
  if (v5)
  {
    *&v67 = v3;
    *(&v67 + 1) = v4;
    sub_E508();
    v6 = sub_E068();

    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    else
    {
      sub_E288();
      if (qword_18400 != -1)
      {
        swift_once();
      }

      v20 = qword_18C18;
      v7 = sub_E3B8();
      v8 = v21;
      v10 = v22;
      v9 = v23 & 1;
      sub_7754(v7, v21, v23 & 1);
    }

    sub_1954(&qword_18708, &qword_F100);
    sub_1954(&qword_18710, &qword_F108);
    sub_78A8();
    sub_7924();
    sub_E2B8();
    sub_7B08(v7, v8, v9, v10);
    v25 = v67;
    v24 = v69;
    v26 = v70 | (v71 << 16);
    v27 = v72;
    goto LABEL_35;
  }

  sub_E508();
  v11 = sub_E068();

  if (v11 & 1) != 0 || (*&v68 = v3, *(&v68 + 1) = v4, sub_E508(), v12 = sub_DFF8(), , (v12))
  {
    *&v68 = v3;
    *(&v68 + 1) = v4;
    sub_E508();
    v13 = sub_DFF8();

    if (v13)
    {
      *&v68 = v3;
      *(&v68 + 1) = v4;
      sub_E508();
      v14 = sub_E068();

      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 16711680;
      }

      else
      {
        sub_E288();
        if (qword_18400 != -1)
        {
          swift_once();
        }

        v33 = qword_18C18;
        sub_E3B8();
        sub_1954(&qword_186F8, &qword_F0F8);
        sub_776C();
        sub_E2B8();
        v16 = v4;
        v15 = v3;
        v18 = *(&v69 + 1);
        v17 = v69;
        if (v71)
        {
          v34 = 0x10000;
        }

        else
        {
          v34 = 0;
        }

        v19 = v34 | v70;
        sub_7854(v3, v4, v69, *(&v69 + 1), v70, v71);
      }

      goto LABEL_34;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v29 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {
        sub_E288();
        if (qword_18400 == -1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_E288();
        if (qword_18400 == -1)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_46;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_48;
  }

  v31 = result;
  v32 = MobileGestalt_get_wapiCapability();

  if (v32)
  {
    sub_E288();
    if (qword_18400 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  sub_E288();
  if (qword_18400 != -1)
  {
LABEL_46:
    swift_once();
  }

LABEL_30:
  v35 = qword_18C18;
  sub_E3B8();
  sub_E2B8();
  sub_7718(v68, *(&v68 + 1), v69, *(&v69 + 1));
  sub_7718(v68, *(&v68 + 1), v69, *(&v69 + 1));
  sub_1954(&qword_186E8, &qword_F0F0);
  sub_7E00(&qword_186F0, &qword_186E8, &qword_F0F0, &protocol conformance descriptor for <> _ConditionalContent<A, B>);
  sub_E2B8();
  sub_7764(v68, *(&v68 + 1), v69, *(&v69 + 1));
  sub_1954(&qword_186F8, &qword_F0F8);
  sub_776C();
  sub_E2B8();
  sub_7810(v68, *(&v68 + 1), v69, *(&v69 + 1));
  sub_784C(v68, *(&v68 + 1), v69, *(&v69 + 1));
  sub_7810(v68, *(&v68 + 1), v69, *(&v69 + 1));
  v16 = *(&v68 + 1);
  v15 = v68;
  v18 = *(&v69 + 1);
  v17 = v69;
  if (v71)
  {
    v36 = 0x10000;
  }

  else
  {
    v36 = 0;
  }

  v19 = v36 | v70;
  sub_7854(v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71);
LABEL_34:
  sub_1954(&qword_18708, &qword_F100);
  sub_1954(&qword_18710, &qword_F108);
  sub_78A8();
  sub_7924();
  sub_E2B8();
  sub_7A34(v15, v16, v17, v18, v19);
  v25 = v68;
  v24 = v69;
  v26 = v70 | (v71 << 16);
  v27 = v72;
LABEL_35:
  v59 = v25;
  v60 = v24;
  v66 = v25;
  v63 = *(&v24 + 1);
  v64 = v24;
  v58 = v26;
  v65 = v27;
  sub_7AA0(v25, *(&v25 + 1), v24, *(&v24 + 1), v26, v27);
  sub_E508();
  v37 = sub_DF58();

  if (v37)
  {
    sub_E288();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v38 = qword_18C18;
    v39 = sub_E3B8();
    v41 = v40;
    v43 = v39;
    v45 = v44;
    v46 = v42 & 1;
    sub_7754(v39, v44, v42 & 1);
    v47 = v41;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  sub_E508();
  v48 = sub_DEF8();

  if (v48)
  {
    sub_E288();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v49 = qword_18C18;
    v50 = sub_E3B8();
    v52 = v51;
    v54 = v50;
    v56 = v55;
    v62 = v53 & 1;
    sub_7754(v50, v55, v53 & 1);
    v57 = v52;
  }

  else
  {
    v54 = 0;
    v56 = 0;
    v62 = 0;
    v57 = 0;
  }

  sub_7AA0(v66, *(&v66 + 1), v64, v63, v58, v65);
  sub_7AAC(v43, v45, v46, v47);
  sub_7AAC(v54, v56, v62, v57);
  sub_7B08(v43, v45, v46, v47);
  sub_7B4C(v66, *(&v66 + 1), v64, v63, v58, v65);
  sub_7B08(v54, v56, v62, v57);
  *v61 = v59;
  *(v61 + 16) = v60;
  *(v61 + 34) = BYTE2(v58);
  *(v61 + 32) = v58;
  *(v61 + 35) = v65;
  *(v61 + 40) = v43;
  *(v61 + 48) = v45;
  *(v61 + 56) = v46;
  *(v61 + 64) = v47;
  *(v61 + 72) = v54;
  *(v61 + 80) = v56;
  *(v61 + 88) = v62;
  *(v61 + 96) = v57;
  sub_7B08(v54, v56, v62, v57);
  sub_7B08(v43, v45, v46, v47);
  return sub_7B4C(v66, *(&v66 + 1), v64, v63, v58, v65);
}

uint64_t sub_6F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateAndTimeList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateAndTimeList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DateAndTimeList(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2C98(a1, v6, a2);
}

uint64_t sub_709C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DF88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_70F4()
{
  v1 = *(type metadata accessor for DateAndTimeList(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_5F2C(v2);
}

uint64_t sub_7188(uint64_t a1)
{
  v2 = type metadata accessor for TimeZoneSearchList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_71EC()
{
  result = qword_18640;
  if (!qword_18640)
  {
    sub_1DC4(&qword_18610, &qword_F048);
    sub_72A4();
    sub_1FA0(&qword_18660, &qword_18668, &qword_F078, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18640);
  }

  return result;
}

unint64_t sub_72A4()
{
  result = qword_18648;
  if (!qword_18648)
  {
    sub_1DC4(&qword_18638, &qword_F068);
    sub_1FA0(&qword_18650, &qword_18658, &qword_F070, &protocol conformance descriptor for List<A, B>);
    sub_1FA0(&qword_18660, &qword_18668, &qword_F078, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18648);
  }

  return result;
}

uint64_t sub_7388(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_73A0()
{
  v1 = (type metadata accessor for DateAndTimeList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_E1C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[8];
  v12 = sub_DE08();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_7524(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for DateAndTimeList(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_E1C8() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_5AD8(a1, a2, v2 + v6, v9);
}

unint64_t sub_7608()
{
  result = qword_18688;
  if (!qword_18688)
  {
    sub_1DC4(&qword_18680, &qword_F0B0);
    sub_768C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18688);
  }

  return result;
}

unint64_t sub_768C()
{
  result = qword_18690;
  if (!qword_18690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18690);
  }

  return result;
}

uint64_t sub_7718(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_7754(a1, a2, a3 & 1);
}

uint64_t sub_7754(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_776C()
{
  result = qword_18700;
  if (!qword_18700)
  {
    sub_1DC4(&qword_186F8, &qword_F0F8);
    sub_7E00(&qword_186F0, &qword_186E8, &qword_F0F0, &protocol conformance descriptor for <> _ConditionalContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18700);
  }

  return result;
}

uint64_t sub_7810(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_7388(a1, a2, a3 & 1);
}

uint64_t sub_7854(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_7754(a1, a2, a3 & 1);
  }

  else
  {

    return sub_7764(a1, a2, a3, a4);
  }
}

unint64_t sub_78A8()
{
  result = qword_18718;
  if (!qword_18718)
  {
    sub_1DC4(&qword_18708, &qword_F100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18718);
  }

  return result;
}

unint64_t sub_7924()
{
  result = qword_18720;
  if (!qword_18720)
  {
    sub_1DC4(&qword_18710, &qword_F108);
    sub_79A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18720);
  }

  return result;
}

unint64_t sub_79A8()
{
  result = qword_18728;
  if (!qword_18728)
  {
    sub_1DC4(&qword_18730, &qword_F110);
    sub_776C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18728);
  }

  return result;
}

uint64_t sub_7A34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_7A4C(result, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return result;
}

uint64_t sub_7A4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_7388(a1, a2, a3 & 1);
  }

  else
  {

    return sub_784C(a1, a2, a3, a4);
  }
}

uint64_t sub_7AA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_7AF0(a1, a2, a3, a4, a5);
  }

  else
  {
    return sub_7AAC(a1, a2, a3, a4);
  }
}

uint64_t sub_7AAC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_7754(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_7AF0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_7854(result, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return result;
}

uint64_t sub_7B08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_7388(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_7B4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_7A34(result, a2, a3, a4, a5);
  }

  else
  {
    return sub_7B08(result, a2, a3, a4);
  }
}

uint64_t sub_7B58@<X0>(_BYTE *a2@<X8>)
{
  result = sub_DFA8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E218();
  *a1 = result & 1;
  return result;
}

uint64_t sub_7C30()
{
  v1 = (type metadata accessor for DateAndTimeList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_DE08();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7D30()
{
  v1 = *(type metadata accessor for DateAndTimeList(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_5838(v2);
}

uint64_t sub_7E00(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7E60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E1E8();
  *a1 = result;
  return result;
}

uint64_t sub_7EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1954(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_7F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1954(&qword_18788, &qword_F168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7FFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1954(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8064@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E028();
  *a2 = result & 1;
  return result;
}

uint64_t sub_80BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DF08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_8114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DF28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_816C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1954(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_81D4()
{
  sub_1DC4(&qword_185C0, &qword_EFB0);
  sub_1DC4(&qword_185E8, &qword_F000);
  sub_1DC4(&qword_185C8, &qword_EFB8);
  sub_1FA0(&qword_185D0, &qword_185C8, &qword_EFB8, &protocol conformance descriptor for ScrollViewReader<A>);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for TimeZoneSearchList(255);
  sub_E088();
  sub_7F44(&qword_185F0, type metadata accessor for TimeZoneSearchList, &unk_F624);
  sub_7F44(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_838C()
{
  swift_getKeyPath();
  sub_92C4(&qword_18678, type metadata accessor for DateAndTimeListState, &unk_F420);
  sub_DEA8();

  return *(v0 + 16);
}

uint64_t sub_842C(unsigned __int8 a1)
{
  result = *(v1 + 16);
  if (result != 5)
  {
    if (a1 == 5)
    {
      goto LABEL_7;
    }

    result = sub_9458(result, a1);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = a1;
    return result;
  }

  if (a1 == 5)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_92C4(&qword_18678, type metadata accessor for DateAndTimeListState, &unk_F420);
  sub_DE98();
}

Swift::Int sub_856C()
{
  sub_E838();
  sub_E748();

  return sub_E848();
}

uint64_t sub_8664(uint64_t a1)
{
  sub_E748();
}

Swift::Int sub_8748(uint64_t a1)
{
  sub_E838();
  sub_E748();

  return sub_E848();
}

unint64_t sub_883C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_91C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_886C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000454D4954;
  v4 = 0x5F52554F485F3432;
  v5 = 0xD000000000000017;
  v6 = 0x800000000000F7D0;
  v7 = 0x800000000000F7F0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x4E4F5A5F454D4954;
    v7 = 0xE900000000000045;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000000000F7B0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_8980(uint64_t a1)
{
  v1 = sub_E628();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E648();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_E668();
  v19 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_9220();
  v14 = sub_E7A8();
  sub_E658();
  sub_E678();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_92A4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8E74;
  aBlock[3] = &unk_15168;
  v16 = _Block_copy(aBlock);

  sub_E638();
  v23 = &_swiftEmptyArrayStorage;
  sub_92C4(&qword_188F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1954(&qword_188F8, &qword_F468);
  sub_930C();
  sub_E7D8();
  sub_E798();
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  v18(v13, v19);
}

uint64_t sub_8D30(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16) != 5)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_92C4(&qword_18678, type metadata accessor for DateAndTimeListState, &unk_F420);
      sub_DE98();
    }
  }

  return result;
}

uint64_t sub_8E74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_8EB8()
{
  v1 = OBJC_IVAR____TtC11DateAndTime20DateAndTimeListState___observationRegistrar;
  v2 = sub_DEC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DateAndTimeListState(uint64_t a1)
{
  result = qword_18858;
  if (!qword_18858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8FA8(uint64_t a1)
{
  result = sub_DEC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DateAndTimeListState.CellIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DateAndTimeListState.CellIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_91C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_14EA8;
  v6._object = a2;
  v4 = sub_E818(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9220()
{
  result = qword_188E8;
  if (!qword_188E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_188E8);
  }

  return result;
}

uint64_t sub_926C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_92AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_92C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_930C()
{
  result = qword_18900;
  if (!qword_18900)
  {
    sub_1DC4(&qword_188F8, &qword_F468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18900);
  }

  return result;
}

uint64_t sub_9388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A004(&qword_18678, type metadata accessor for DateAndTimeListState, &unk_F420);
  sub_DEA8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_9458(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0x5F52554F485F3432;
    }

    if (v3)
    {
      v4 = 0x800000000000F7B0;
    }

    else
    {
      v4 = 0xEC000000454D4954;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000000000F7D0;
    v5 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v4 = 0x800000000000F7F0;
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x4E4F5A5F454D4954;
    v4 = 0xE900000000000045;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x800000000000F7B0;
    }

    else
    {
      v2 = 0x5F52554F485F3432;
      v6 = 0xEC000000454D4954;
    }

    if (v5 != v2)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x800000000000F7D0;
    if (v5 != 0xD000000000000017)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 3)
  {
    v6 = 0x800000000000F7F0;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v6 = 0xE900000000000045;
    if (v5 != 0x4E4F5A5F454D4954)
    {
LABEL_28:
      v7 = sub_E828();
      goto LABEL_29;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_28;
  }

  v7 = 1;
LABEL_29:

  return v7 & 1;
}

unint64_t sub_9628()
{
  result = qword_189A0;
  if (!qword_189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189A0);
  }

  return result;
}

uint64_t sub_9698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_E188();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_DE48();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_1954(&qword_189C0, &qword_F518);
  v3[12] = swift_task_alloc();
  v6 = sub_DDD8();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  sub_E778();
  v3[16] = sub_E768();
  v8 = sub_E758();

  return _swift_task_switch(sub_9880, v8, v7);
}

uint64_t sub_9880()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  sub_E6B8();
  sub_DDB8();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_9F50(v0[12]);
    goto LABEL_11;
  }

  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v7 = sub_DDC8();
  if (!v8 || (v9 = sub_91C4(v7, v8), v9 == 5))
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    goto LABEL_11;
  }

  v10 = v9;
  v11 = v0[5];
  v12 = *(v11 + 16);
  if (v12 != 5)
  {
    if (sub_9458(v12, v10))
    {
      (*(v0[14] + 8))(v0[15], v0[13]);
      *(v11 + 16) = v10;
      goto LABEL_11;
    }

    v11 = v0[5];
  }

  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v11;
  *(v16 + 24) = v10;
  v0[2] = v11;
  sub_A004(&qword_18678, type metadata accessor for DateAndTimeListState, &unk_F420);
  sub_DE98();

  (*(v14 + 8))(v13, v15);

LABEL_11:
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  sub_E6A8();
  sub_E6C8();
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_9B34()
{
  v0 = sub_1954(&qword_189A8, &qword_F500);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for DateAndTimeList(0);
  sub_A004(&qword_189B0, type metadata accessor for DateAndTimeList, &unk_EF54);

  sub_E6D8();
  sub_9EEC();

  sub_E698();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_9CBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DateAndTimeListState(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 5;
  result = sub_DEB8();
  *a1 = v2;
  return result;
}

void *sub_9D10@<X0>(void *a1@<X8>)
{

  return sub_1FE8(v2, a1);
}

uint64_t sub_9D4C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_9DF8;

  return sub_9698(a1, a2, v2);
}

uint64_t sub_9DF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_9EEC()
{
  result = qword_189B8;
  if (!qword_189B8)
  {
    sub_1DC4(&qword_189A8, &qword_F500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189B8);
  }

  return result;
}

uint64_t sub_9F50(uint64_t a1)
{
  v2 = sub_1954(&qword_189C0, &qword_F518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A05C()
{
  sub_1DC4(&qword_189A8, &qword_F500);
  sub_9EEC();
  return swift_getOpaqueTypeConformance2();
}

void sub_A0C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DateAndTimeList(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v22.receiver - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLoad");
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v6.super.isa = qword_18C18;
  v21._countAndFlagsBits = 0x800000000000F860;
  v23._countAndFlagsBits = 0x5420262065746144;
  v23._object = 0xEB00000000656D69;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_DDE8(v23, v24, v6, v25, 0xD000000000000010, v21);
  v7 = sub_E728();

  [v1 setTitle:v7];

  sub_1FE8(v8, v5);
  v9 = objc_allocWithZone(sub_1954(&qword_18A68, &unk_F5F0));
  v10 = sub_E2A8();
  v11 = [v10 view];
  if (!v11)
  {
    v12 = v10;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview:v12];

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      [v12 setFrame:{0.0, 0.0, v18, v20}];
      [v12 setAutoresizingMask:18];
      [v1 addChildViewController:v10];
      [v10 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_A398(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_10;
  }

  sub_E808();
  if (!*(a1 + 16) || (v4 = sub_AB0C(&v12), (v5 & 1) == 0))
  {
    sub_AD6C(&v12);
LABEL_10:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_11;
  }

  sub_AE48(*(a1 + 56) + 32 * v4, &v13);
  sub_AD6C(&v12);
  if (!*(&v14 + 1))
  {
LABEL_11:
    result = sub_AD04(&v13);
    goto LABEL_12;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  *&v13 = 35;
  *(&v13 + 1) = 0xE100000000000000;
  sub_ADC0();
  v7 = sub_E7C8();

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 16 + 16 * v8);
    v10 = *v9;
    v11 = v9[1];

    result = sub_91C4(v10, v11);
    if (result != 5)
    {
      __chkstk_darwin(result);
      sub_E608();
      sub_E168();
    }

LABEL_12:
    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

  if (!a2)
  {
    return result;
  }

  return a2(result);
}

id sub_A678(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11DateAndTime29DateAndTimeSettingsController_dateAndTimeListState;
  type metadata accessor for DateAndTimeListState(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 5;
  sub_DEB8();
  *&v3[v7] = v8;
  if (a2)
  {
    v9 = sub_E728();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_A7B8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11DateAndTime29DateAndTimeSettingsController_dateAndTimeListState;
  type metadata accessor for DateAndTimeListState(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 5;
  sub_DEB8();
  *&v1[v4] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_A894()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A904(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC11DateAndTime29DateAndTimeSettingsController_dateAndTimeListState);
  v5 = *(v4 + 16);
  if (v5 == 5 || (result = sub_9458(v5, a2), (result & 1) == 0))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_AC54();
    sub_DE98();
  }

  else
  {
    *(v4 + 16) = a2;
  }

  return result;
}

unint64_t sub_AB0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E7E8(*(v2 + 40));

  return sub_AB50(a1, v4);
}

unint64_t sub_AB50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_AEA4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_E7F8();
      sub_AD6C(v8);
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

unint64_t sub_AC54()
{
  result = qword_18678;
  if (!qword_18678)
  {
    type metadata accessor for DateAndTimeListState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18678);
  }

  return result;
}

uint64_t sub_ACAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_ACBC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_AD04(uint64_t a1)
{
  v2 = sub_1954(&qword_18A58, &qword_F5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_ADC0()
{
  result = qword_18A60;
  if (!qword_18A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A60);
  }

  return result;
}

uint64_t sub_AE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1954(&qword_18A70, &unk_F600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_B00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1954(&qword_18A70, &unk_F600);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TimeZoneSearchList(uint64_t a1)
{
  result = qword_18AD0;
  if (!qword_18AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B120(uint64_t a1)
{
  sub_B1F4(319, &qword_18AE0, &type metadata accessor for DismissAction);
  if (v1 <= 0x3F)
  {
    sub_B1F4(319, &qword_18AE8, &type metadata accessor for DateAndTimeSettingsState);
    if (v2 <= 0x3F)
    {
      sub_B248();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E0D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_B248()
{
  if (!qword_18AF0)
  {
    v0 = sub_E528();
    if (!v1)
    {
      atomic_store(v0, &qword_18AF0);
    }
  }
}

uint64_t sub_B2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v77 = a3;
  v4 = sub_E318();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v73 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1954(&qword_18B28, &qword_F678);
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v69 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v70 = v60 - v10;
  __chkstk_darwin(v9);
  v67 = v60 - v11;
  v66 = sub_E278();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1954(&qword_18B78, &qword_F6B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v60 - v15;
  v63 = sub_1954(&qword_18B70, &qword_F6B0);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v18 = v60 - v17;
  v78 = sub_1954(&qword_18B68, &qword_F6A8);
  v62 = *(v78 - 8);
  __chkstk_darwin(v78);
  v20 = v60 - v19;
  v80 = sub_1954(&qword_18B60, &qword_F6A0);
  v68 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = v60 - v21;
  v72 = sub_1954(&qword_18B38, &qword_F688);
  __chkstk_darwin(v72);
  v81 = v60 - v22;
  sub_1954(&qword_18B98, &qword_F6C8);
  sub_D0E8();
  v82 = a1;
  sub_E3A8();
  v23 = sub_1FA0(&qword_18B80, &qword_18B78, &qword_F6B8, &protocol conformance descriptor for List<A, B>);
  sub_E3E8();
  (*(v14 + 8))(v16, v13);
  sub_E288();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v24 = qword_18C18;
  v25 = qword_18C18;
  v60[1] = v24;
  v26 = v25;
  v27 = sub_E3B8();
  v29 = v28;
  v31 = v30;
  v85 = v13;
  v86 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v63;
  sub_E468();
  sub_7388(v27, v29, v31 & 1);

  (*(v61 + 8))(v18, v33);
  v34 = v65;
  v35 = v64;
  v36 = v66;
  (*(v65 + 104))(v64, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v66);
  v85 = v33;
  v86 = OpaqueTypeConformance2;
  v63 = swift_getOpaqueTypeConformance2();
  v37 = v78;
  sub_E478();
  (*(v34 + 8))(v35, v36);
  (*(v62 + 8))(v20, v37);
  v38 = swift_projectBox();
  v39 = v71;
  v40 = *(v71 + 16);
  v41 = v70;
  v40(v70, v38, v6);
  v42 = v67;
  sub_E5D8();
  v43 = *(v39 + 8);
  v43(v41, v6);
  swift_getKeyPath();
  sub_E5F8();

  v43(v42, v6);
  v67 = v85;
  v66 = v86;
  v71 = v87;
  v65 = v88;
  v44 = v69;
  v40(v69, v38, v6);
  sub_E5D8();
  v43(v44, v6);
  swift_getKeyPath();
  sub_E5F8();

  v43(v41, v6);
  sub_E288();
  v45 = sub_E3B8();
  v47 = v46;
  v70 = v48;
  LOBYTE(v43) = v49 & 1;
  v50 = v73;
  sub_E308();
  v83 = v78;
  v84 = v63;
  swift_getOpaqueTypeConformance2();
  v51 = v79;
  sub_E428();
  sub_7388(v45, v47, v43);

  (*(v74 + 8))(v50, v75);
  (*(v68 + 8))(v51, v80);
  v52 = *(sub_1954(&qword_18B58, &qword_F698) + 36);
  v54 = v81;
  v53 = v82;
  v55 = &v81[v52];
  *v55 = sub_D314;
  v55[1] = v53;
  v55[2] = 0;
  v55[3] = 0;
  v56 = (v54 + *(v72 + 36));
  *v56 = 0;
  v56[1] = 0;
  v56[2] = sub_D334;
  v56[3] = v53;
  __chkstk_darwin(v53);
  swift_retain_n();
  sub_1954(&qword_18B40, &qword_F690);
  sub_CE94();
  v57 = sub_1DC4(&qword_18B88, &qword_F6C0);
  v58 = sub_1FA0(&qword_18B90, &qword_18B88, &qword_F6C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v85 = v57;
  v86 = v58;
  swift_getOpaqueTypeConformance2();
  sub_E498();
  return sub_D35C(v54);
}

uint64_t sub_BE3C(uint64_t a1)
{
  v1 = sub_1954(&qword_18B28, &qword_F678);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_E5C8();
  (*(v2 + 8))(v4, v1);
  v6 = sub_E018();

  v8[1] = v6;
  swift_getKeyPath();

  sub_1954(&qword_18BF0, &qword_F780);
  sub_1954(&qword_18BB0, &qword_F6D0);
  sub_1FA0(&qword_18BF8, &qword_18BF0, &qword_F780, &protocol conformance descriptor for [A]);
  sub_D6A4(&qword_18C00, &type metadata accessor for TimeZonePayload, &protocol conformance descriptor for TimeZonePayload);
  sub_D16C();
  return sub_E598();
}

uint64_t sub_C05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_DEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v7 + 32))(v10 + v9, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v16 = a1;

  sub_E548();
  v11 = sub_E4C8();
  KeyPath = swift_getKeyPath();
  result = sub_1954(&qword_18BB0, &qword_F6D0);
  v14 = (a3 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_C20C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1954(&qword_18B28, &qword_F678);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v6 = swift_projectBox();
  v7 = *(v3 + 16);
  v7(v5, v6, v2);
  sub_E5C8();
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_DF48();

  v7(v5, v6, v2);
  sub_E5C8();
  v8(v5, v2);
  sub_DF98();
}

uint64_t sub_C390@<X0>(uint64_t a1@<X8>)
{
  sub_DED8();
  sub_ADC0();
  result = sub_E3D8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_C3EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1954(&qword_18B28, &qword_F678);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_E5C8();
  (*(v3 + 8))(v5, v2);
  sub_DF78();
}

uint64_t sub_C50C(uint64_t a1)
{
  v2 = sub_E338();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1954(&qword_18B88, &qword_F6C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_E328();
  v9 = a1;
  sub_1954(&qword_18BD8, &qword_F748);
  sub_1FA0(&qword_18BE0, &qword_18BD8, &qword_F748, &protocol conformance descriptor for Button<A>);
  sub_E0F8();
  sub_1FA0(&qword_18B90, &qword_18B88, &qword_F6C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_E348();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_C6F8(uint64_t a1)
{
  v2 = type metadata accessor for TimeZoneSearchList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1954(&qword_18BE8, qword_F750);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_E0A8();
  v8 = sub_E0B8();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_D3CC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_D568(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_E538();
}

uint64_t sub_C8BC(uint64_t a1)
{
  v2 = sub_E268();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1954(&qword_18600, &qword_F038);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D62C(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_E788();
    v13 = sub_E398();
    sub_E098();

    sub_E258();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_E138();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_CB24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E4E8();
  *a1 = result;
  return result;
}

uint64_t sub_CB5C(uint64_t a1)
{
  sub_1954(&qword_18B28, &qword_F678);
  swift_allocBox();
  sub_CD4C(*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  sub_E088();
  sub_D6A4(&qword_185F8, &type metadata accessor for DateAndTimeSettingsState, &protocol conformance descriptor for DateAndTimeSettingsState);
  sub_E5E8();
  sub_1954(&qword_18B30, &qword_F680);
  sub_1DC4(&qword_18B38, &qword_F688);
  sub_1DC4(&qword_18B40, &qword_F690);
  sub_CE94();
  sub_1DC4(&qword_18B88, &qword_F6C0);
  sub_1FA0(&qword_18B90, &qword_18B88, &qword_F6C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_E1A8();
}

uint64_t sub_CD4C(uint64_t a1, char a2)
{
  v4 = sub_E268();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_E788();
    v8 = sub_E398();
    sub_E098();

    sub_E258();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

unint64_t sub_CE94()
{
  result = qword_18B48;
  if (!qword_18B48)
  {
    sub_1DC4(&qword_18B38, &qword_F688);
    sub_CF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B48);
  }

  return result;
}

unint64_t sub_CF20()
{
  result = qword_18B50;
  if (!qword_18B50)
  {
    sub_1DC4(&qword_18B58, &qword_F698);
    sub_1DC4(&qword_18B60, &qword_F6A0);
    sub_1DC4(&qword_18B68, &qword_F6A8);
    sub_1DC4(&qword_18B70, &qword_F6B0);
    sub_1DC4(&qword_18B78, &qword_F6B8);
    sub_1FA0(&qword_18B80, &qword_18B78, &qword_F6B8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B50);
  }

  return result;
}

unint64_t sub_D0E8()
{
  result = qword_18BA0;
  if (!qword_18BA0)
  {
    sub_1DC4(&qword_18B98, &qword_F6C8);
    sub_D16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BA0);
  }

  return result;
}

unint64_t sub_D16C()
{
  result = qword_18BA8;
  if (!qword_18BA8)
  {
    sub_1DC4(&qword_18BB0, &qword_F6D0);
    sub_1FA0(&qword_18BB8, &qword_18BC0, &qword_F6D8, &protocol conformance descriptor for Button<A>);
    sub_1FA0(&qword_18BC8, &qword_18BD0, &qword_F6E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BA8);
  }

  return result;
}

uint64_t sub_D250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E048();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D2BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DF68();
  *a1 = result & 1;
  return result;
}

uint64_t sub_D35C(uint64_t a1)
{
  v2 = sub_1954(&qword_18B38, &qword_F688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D3CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneSearchList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D430()
{
  v1 = *(type metadata accessor for TimeZoneSearchList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1954(&qword_18600, &qword_F038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_E148();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_D568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneSearchList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D5CC()
{
  v1 = *(type metadata accessor for TimeZoneSearchList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_C8BC(v2);
}

uint64_t sub_D62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1954(&qword_18600, &qword_F038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D6A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_D6EC()
{
  v1 = sub_DEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D7B0()
{
  v1 = *(sub_DEE8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_C20C(v2, v3);
}

uint64_t sub_D81C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E238();
  *a1 = result;
  return result;
}

uint64_t sub_D8C0(int a1, int a2, int a3, int a4)
{
  if (qword_19148 == -1)
  {
    if (qword_19150)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_DD88();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_19150)
    {
      return _availability_version_check();
    }
  }

  if (qword_19140 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_DDA0();
    a3 = v10;
    a4 = v9;
    v8 = dword_19130 < v11;
    if (dword_19130 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_19134 > a3)
      {
        return 1;
      }

      if (dword_19134 >= a3)
      {
        return dword_19138 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_19130 < a2;
  if (dword_19130 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_DA54(uint64_t result)
{
  v1 = qword_19150;
  if (qword_19150)
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
      qword_19150 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_19130, &dword_19134, &dword_19138);
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