void type metadata accessor for VRXIdiom()
{
  if (!qword_14160)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_14160);
    }
  }
}

void sub_1444(uint64_t a2@<X8>)
{
  sub_1478();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_14C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BE50();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1574(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_15B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_BE50();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_165C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for BadgedImageView(uint64_t a1)
{
  result = qword_141C0;
  if (!qword_141C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16D0(uint64_t a1)
{
  result = sub_BE50();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1760@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_BE80();
  __chkstk_darwin(v2 - 8);
  v3 = sub_BDF0();
  sub_1AA4();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BE50();
  (*(*(v10 - 8) + 16))(v9, v1, v10);
  v11 = *(v5 + 104);
  v12 = v11(v9, enum case for ImageElement.SourceType.contact(_:), v3);
  __chkstk_darwin(v12);
  type metadata accessor for BadgedImageView(0);
  sub_BDE0();
  sub_1AA4();
  __chkstk_darwin(v13);
  (*(v15 + 104))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ImageElement.ImageStyle.default(_:));

  sub_BE00();
  v11(v9, enum case for ImageElement.SourceType.appIcon(_:), v3);
  sub_BDC0();
  v16 = *(v5 + 8);
  v16(v9, v3);
  v16(v9, v3);
  return sub_C3C0();
}

unint64_t sub_1A58()
{
  result = qword_141F8;
  if (!qword_141F8)
  {
    sub_C3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_141F8);
  }

  return result;
}

uint64_t sub_1ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_BFA0();
  sub_3388();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1574(v9, a2, v8);
  }

  sub_C430();
  sub_3388();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_BFA0();
  sub_3388();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_C430();
    sub_3388();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_165C(v11, a2, a2, v10);
}

uint64_t type metadata accessor for ContactConfirmationView(uint64_t a1)
{
  result = qword_14258;
  if (!qword_14258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0C(uint64_t a1)
{
  sub_BFA0();
  if (v1 <= 0x3F)
  {
    sub_C430();
    if (v2 <= 0x3F)
    {
      sub_1DA8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DA8(uint64_t a1)
{
  if (!qword_14268)
  {
    sub_C500();
    sub_1E0C();
    v1 = sub_C110();
    if (!v2)
    {
      atomic_store(v1, &qword_14268);
    }
  }
}

unint64_t sub_1E0C()
{
  result = qword_14270;
  if (!qword_14270)
  {
    sub_C500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14270);
  }

  return result;
}

uint64_t sub_1E74@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v47 = a1;
  type metadata accessor for ContactConfirmationView(0);
  sub_3374();
  v42 = v4;
  __chkstk_darwin(v5);
  v43 = v6;
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BF40();
  sub_1AA4();
  v45 = v8;
  v46 = v7;
  __chkstk_darwin(v7);
  sub_3364();
  v11 = v10 - v9;
  sub_BF50();
  v12 = sub_BF70();
  v40 = v13;
  v41 = v12;
  v14 = sub_BDE0();
  sub_1AA4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_3364();
  v20 = v19 - v18;
  v21 = *(v2 + *(v1 + 32));
  if (v21)
  {
    v22 = v21;
    sub_C4F0();

    v23 = sub_C560();
    v24 = &enum case for ImageElement.ImageStyle.contactImage4(_:);
    if (v23)
    {
      v24 = &enum case for ImageElement.ImageStyle.contactImage3(_:);
    }

    (*(v16 + 104))(v20, *v24, v14);
    type metadata accessor for PresentationUtilities();
    v25 = sub_BF10();
    v39 = v14;
    v27 = v26;
    v28 = sub_BF30();
    v30 = v29;
    v31 = sub_8AF4(v25, v27, v28, v29, v20, 1);
    sub_2D00(v28, v30);

    v32 = v44;
    sub_2D6C(v3, v44);
    v33 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    sub_3394();
    v34 = swift_allocObject();
    sub_2EF4(v32, v34 + v33);
    v35 = (v34 + v28);
    v36 = v40;
    *v35 = v41;
    v35[1] = v36;
    *(v34 + v3) = v31;
    sub_3004(&qword_142A8, &qword_CA38);
    sub_3304(&qword_142B0, &qword_142A8, &qword_CA38, &protocol conformance descriptor for TupleView<A>);
    sub_C380();
    (*(v16 + 8))(v20, v39);
    return (*(v45 + 8))(v11, v46);
  }

  else
  {
    sub_C500();
    sub_1E0C();
    result = sub_C0F0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v75 = a5;
  v9 = type metadata accessor for ContactConfirmationView(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v63 = v11;
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_C450();
  v78 = *(v74 - 8);
  v72 = v78[8];
  __chkstk_darwin(v74);
  v73 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = &v56 - v73;
  v14 = sub_BF60();
  v92 = &type metadata for String;
  v93 = &protocol witness table for String;
  v90 = v14;
  v91 = v15;
  v88 = &type metadata for String;
  v89 = &protocol witness table for String;
  v86 = a2;
  v87 = a3;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v79[4] = &protocol witness table for AnyView;
  v79[3] = &type metadata for AnyView;
  v79[0] = a4;

  sub_C440();
  v71 = sub_C3A0();
  v70 = *(v71 - 8);
  v68 = *(v70 + 64);
  __chkstk_darwin(v71);
  v69 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = &v56 - v69;
  v66 = sub_3004(&qword_142B8, &qword_CA40);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v18 = &v56 - v17;
  v19 = sub_3004(&qword_142C0, &qword_CA48);
  v57 = *(v19 - 8);
  v64 = *(v57 + 64);
  __chkstk_darwin(v19);
  v65 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v56 - v65;
  v60 = a1;
  v90 = sub_BF90();
  v91 = v22;
  v58 = v12;
  sub_2D6C(a1, v12);
  v62 = *(v10 + 80);
  v23 = (v62 + 16) & ~v62;
  v59 = v23;
  v24 = swift_allocObject();
  sub_2EF4(v12, v24 + v23);
  v61 = sub_30C4();
  sub_C310();
  v25 = sub_C340();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v28, enum case for ButtonItemButtonStyle.Role.preferred(_:), v25);
  v90 = sub_C300();
  sub_C0E0();
  v90 = sub_C2F0();
  sub_C0E0();
  v29 = sub_3304(&qword_142D0, &qword_142C0, &qword_CA48, &protocol conformance descriptor for Button<A>);
  sub_C270();

  (*(v26 + 8))(v28, v25);
  v30 = *(v57 + 8);
  v30(v21, v19);
  v90 = v19;
  v91 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v66;
  v32 = sub_C260();
  v33 = (*(v67 + 8))(v18, v31);
  v93 = &protocol witness table for AnyView;
  v92 = &type metadata for AnyView;
  v90 = v32;
  __chkstk_darwin(v33);
  v34 = &v56 - v65;
  v35 = v60;
  v86 = sub_BF80();
  v87 = v36;
  v37 = v58;
  sub_2D6C(v35, v58);
  v38 = v59;
  v39 = swift_allocObject();
  sub_2EF4(v37, v39 + v38);
  sub_C310();
  v40 = sub_C260();
  v30(v34, v19);
  v88 = &type metadata for AnyView;
  v89 = &protocol witness table for AnyView;
  v86 = v40;
  v41 = v76;
  v42 = sub_C390();
  __chkstk_darwin(v42);
  v43 = &v56 - v73;
  v44 = v78[2];
  v45 = v74;
  v46 = v44(&v56 - v73, v77, v74);
  __chkstk_darwin(v46);
  v47 = &v56 - v69;
  v48 = v70;
  v49 = *(v70 + 16);
  v50 = v71;
  v49(&v56 - v69, v41, v71);
  v51 = v75;
  v44(v75, v43, v45);
  v52 = sub_3004(&qword_142D8, &unk_CA50);
  v49(&v51[*(v52 + 48)], v47, v50);
  v53 = *(v48 + 8);
  v53(v76, v50);
  v54 = v78[1];
  v54(v77, v45);
  v53(v47, v50);
  return (v54)(v43, v45);
}

uint64_t sub_2AA0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = sub_C010();
  sub_1AA4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_3364();
  v11 = v10 - v9;
  v22 = sub_C4E0();
  sub_1AA4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_3364();
  v17 = v16 - v15;
  type metadata accessor for ContactConfirmationView(0);
  v18 = sub_C410();
  a2(v18);
  sub_3004(&qword_142E0, &qword_CB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C9C0;
  (*(v7 + 104))(v11, enum case for ContactResolutionCommonKeys.button(_:), v5);
  sub_C000();
  (*(v7 + 8))(v11, v5);
  sub_C570();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  sub_C510();
  sub_C4D0();

  return (*(v13 + 8))(v17, v22);
}

uint64_t sub_2D00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2D14(a1, a2);
  }

  return a1;
}

uint64_t sub_2D14(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactConfirmationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DD0()
{
  type metadata accessor for ContactConfirmationView(0);
  sub_3374();
  v4 = *(v3 + 80);
  sub_3394();
  v6 = v1 + v5;
  sub_BFA0();
  sub_3350();
  (*(v7 + 8))(v6);
  v8 = *(v0 + 28);
  sub_C430();
  sub_3350();
  (*(v9 + 8))(v6 + v8);

  return _swift_deallocObject(v1, v2 + 8, v4 | 7);
}

uint64_t sub_2EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactConfirmationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2F58@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ContactConfirmationView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  return sub_21E8(v1 + v4, v9, v10, v8, a1);
}

uint64_t sub_3004(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_304C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_30C4()
{
  result = qword_142C8;
  if (!qword_142C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_142C8);
  }

  return result;
}

uint64_t sub_3118()
{
  type metadata accessor for ContactConfirmationView(0);
  sub_3374();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_BFA0();
  sub_3350();
  (*(v7 + 8))(v1 + v4);
  v8 = *(v0 + 28);
  sub_C430();
  sub_3350();
  (*(v9 + 8))(v1 + v4 + v8);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_3304(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_304C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_33BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_BFF0();
  sub_3388();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1574(v9, a2, v8);
  }

  sub_C430();
  sub_3388();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_34C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_BFF0();
  sub_3388();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_C430();
    sub_3388();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_165C(v11, a2, a2, v10);
}

uint64_t type metadata accessor for ContactDisambiguationView(uint64_t a1)
{
  result = qword_14350;
  if (!qword_14350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_35FC(uint64_t a1)
{
  sub_BFF0();
  if (v1 <= 0x3F)
  {
    sub_C430();
    if (v2 <= 0x3F)
    {
      sub_1DA8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_36B4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v29 = a1;
  v4 = type metadata accessor for ContactDisambiguationView(0);
  v5 = v4 - 8;
  v28 = *(v4 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BDE0();
  sub_4D98();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v27 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v26 - v27;
  v14 = *(v3 + *(v5 + 32));
  if (v14)
  {
    v15 = v14;
    sub_C4F0();

    v16 = sub_C560();
    v17 = *(v9 + 104);
    v18 = &enum case for ImageElement.ImageStyle.contactImage4(_:);
    if (v16)
    {
      v18 = &enum case for ImageElement.ImageStyle.image3(_:);
    }

    v19 = *v18;
    v26 = v13;
    v17(v13, v19, v2);
    sub_432C(v3, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v28 = swift_allocObject();
    sub_4498(v7, v28 + v20);
    v21 = sub_432C(v3, v7);
    __chkstk_darwin(v21);
    v22 = &v26 - v27;
    (*(v9 + 16))(&v26 - v27, v13, v2);
    v23 = (v20 + v6 + *(v9 + 80)) & ~*(v9 + 80);
    v24 = swift_allocObject();
    sub_4498(v7, v24 + v20);
    (*(v9 + 32))(v24 + v23, v22, v2);
    sub_C3E0();
    sub_3004(&qword_14390, &qword_CAE0);
    sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    sub_47FC();
    sub_C4C0();
    return (*(v9 + 8))(v26, v2);
  }

  else
  {
    sub_C500();
    sub_47B4(&qword_14270, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = sub_C0F0();
    __break(1u);
  }

  return result;
}

uint64_t sub_3AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v5 = type metadata accessor for ContactDisambiguationView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BFB0();
  v10 = sub_7A04(v9);

  v21[3] = v10;
  swift_getKeyPath();
  v11 = sub_BDE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  (*(v12 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  sub_432C(a1, v8);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v14, v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_4498(v8, v16 + v15);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_4A24;
  *(v17 + 24) = v16;
  sub_3004(&qword_143A8, &qword_CB08);
  sub_3004(&qword_143B0, &unk_CB10);
  sub_4B48();
  v18 = sub_C3E0();
  v19 = sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  v21[1] = v18;
  v21[2] = v19;
  swift_getOpaqueTypeConformance2();
  return sub_C330();
}

uint64_t sub_3DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a3;
  v30 = a1;
  v31 = a4;
  v5 = type metadata accessor for ContactDisambiguationView(0);
  v28 = *(v5 - 8);
  v27 = *(v28 + 64);
  __chkstk_darwin(v5 - 8);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PresentationUtilities();
  v7 = sub_BF10();
  v9 = v8;
  v10 = sub_BF30();
  v12 = v11;
  v13 = sub_8AF4(v7, v9, v10, v11, a2, 1);
  sub_2D00(v10, v12);

  v14 = sub_C3E0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BF20();
  v58 = &type metadata for String;
  v59 = &protocol witness table for String;
  v56 = v18;
  v57 = v19;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = &type metadata for AnyView;
  v34 = &protocol witness table for AnyView;
  v32 = v13;

  sub_C3D0();
  v20 = v26;
  sub_432C(v29, v26);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = (v27 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_4498(v20, v23 + v21);
  *(v23 + v22) = v30;
  sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  sub_C2A0();

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_40F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_C4E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactDisambiguationView(0);
  sub_C410();
  sub_BFC0();
  sub_3004(&qword_142E0, &qword_CB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C9C0;
  v8 = sub_BFD0();
  v10 = 0x7865646E69;
  if (v9)
  {
    v10 = v8;
  }

  v11 = 0xE500000000000000;
  if (v9)
  {
    v11 = v9;
  }

  v13[1] = v10;
  v13[2] = v11;
  sub_C570();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a2;
  sub_C510();
  sub_C4D0();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_42BC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_3004(&qword_143C0, &qword_CC30);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_432C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactDisambiguationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4390()
{
  type metadata accessor for ContactDisambiguationView(0);
  sub_3374();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_BFF0();
  sub_3350();
  (*(v7 + 8))(v1 + v4);
  v8 = *(v0 + 28);
  sub_C430();
  sub_3350();
  (*(v9 + 8))(v1 + v4 + v8);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_4498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactDisambiguationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_44FC()
{
  type metadata accessor for ContactDisambiguationView(0);

  return sub_3A24();
}

uint64_t sub_456C()
{
  type metadata accessor for ContactDisambiguationView(0);
  sub_3374();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  sub_BDE0();
  sub_4D98();
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v5 + v7 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v4 | v12;
  v16 = v1 + v5;
  sub_BFF0();
  sub_3350();
  (*(v17 + 8))(v1 + v5);
  v18 = *(v0 + 28);
  sub_C430();
  sub_3350();
  (*(v19 + 8))(v16 + v18);

  (*(v9 + 8))(v1 + v13, v2);

  return _swift_deallocObject(v1, v13 + v14, v15 | 7);
}

uint64_t sub_46E8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactDisambiguationView(0);
  sub_4DB0(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(sub_BDE0() - 8);
  v9 = v1 + ((v5 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_3AE8(v1 + v5, v9, a1);
}

uint64_t sub_47B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_47FC()
{
  result = qword_143A0;
  if (!qword_143A0)
  {
    sub_304C(&qword_14390, &qword_CAE0);
    sub_C3E0();
    sub_47B4(&qword_14398, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_143A0);
  }

  return result;
}

uint64_t sub_48B0()
{
  sub_BDE0();
  sub_4D98();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  type metadata accessor for ContactDisambiguationView(0);
  sub_3374();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v6 + v8 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v5 | v13;
  (*(v4 + 8))(v1 + v6, v2);
  sub_BFF0();
  sub_3350();
  (*(v17 + 8))(v1 + v14);
  v18 = *(v0 + 28);
  sub_C430();
  sub_3350();
  (*(v19 + 8))(v1 + v14 + v18);

  return _swift_deallocObject(v1, v14 + v15, v16 | 7);
}

uint64_t sub_4A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_BDE0();
  sub_4DB0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(type metadata accessor for ContactDisambiguationView(0) - 8);
  v11 = v2 + ((v7 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_3DC4(a1, v2 + v7, v11, a2);
}

uint64_t sub_4B08()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_4B48()
{
  result = qword_143B8;
  if (!qword_143B8)
  {
    sub_304C(&qword_143A8, &qword_CB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_143B8);
  }

  return result;
}

uint64_t sub_4BAC()
{
  type metadata accessor for ContactDisambiguationView(0);
  sub_3374();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;
  sub_BFF0();
  sub_3350();
  (*(v10 + 8))(v9);
  v11 = *(v0 + 28);
  sub_C430();
  sub_3350();
  (*(v12 + 8))(v9 + v11);

  return _swift_deallocObject(v1, v8 + 8, v6 | 7);
}

uint64_t sub_4CB8()
{
  v1 = type metadata accessor for ContactDisambiguationView(0);
  sub_4DB0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_40F0(v0 + v6, v7);
}

unint64_t sub_4D40()
{
  result = qword_143C8;
  if (!qword_143C8)
  {
    sub_304C(&qword_143D0, qword_CB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_143C8);
  }

  return result;
}

uint64_t sub_4DD4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_C080();
  sub_3388();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_1574(v9, a2, v8);
  }

  sub_C430();
  sub_3388();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = sub_3004(&qword_143D8, &unk_CB40);
    v12 = a3[7];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_4F0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_C080();
  sub_3388();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_C430();
    sub_3388();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = sub_3004(&qword_143D8, &unk_CB40);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  sub_165C(v11, a2, a2, v10);
}

void sub_5040(uint64_t a1)
{
  sub_C080();
  if (v1 <= 0x3F)
  {
    sub_C430();
    if (v2 <= 0x3F)
    {
      sub_1DA8(319);
      if (v3 <= 0x3F)
      {
        sub_5138(319, &qword_14448, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_5138(319, &unk_14450, type metadata accessor for VRXIdiom);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_5138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_C0D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_51A8()
{
  v1 = v0 + *(type metadata accessor for ContactHandleDisambiguationView(0) + 32);
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {

    sub_C550();
    v3 = sub_C190();
    sub_C0A0();

    v4 = sub_C170();
    sub_1AA4();
    v6 = v5;
    __chkstk_darwin(v7);
    sub_3364();
    v10 = v9 - v8;
    sub_C160();
    swift_getAtKeyPath();
    sub_7214(v2, 0);
    (*(v6 + 8))(v10, v4);
    return v12;
  }

  return v2;
}

uint64_t sub_52F0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for ContactHandleDisambiguationView(0);
  v3 = sub_4DB0(v2);
  v46 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v42 - v8;
  v9 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  sub_8A8C();
  __chkstk_darwin(v10);
  sub_3364();
  v13 = v12 - v11;
  sub_BF40();
  sub_1AA4();
  v49 = v15;
  v50 = v14;
  __chkstk_darwin(v14);
  sub_3364();
  v18 = v17 - v16;
  sub_C020();
  v19 = sub_BDE0();
  v45 = v19;
  v47 = *(v19 - 8);
  v20 = v47;
  __chkstk_darwin(v19);
  sub_3364();
  v23 = v22 - v21;
  v24 = v1;
  sub_51A8();
  sub_6FDC();
  sub_C4A0();
  v25 = *(v20 + 16);
  v26 = v13 + *(v9 + 32);
  v43 = v23;
  v25(v23, v26, v19);
  sub_7034(v13);
  type metadata accessor for PresentationUtilities();
  v27 = sub_BF10();
  v29 = v28;
  v30 = sub_BF30();
  v32 = v31;
  v33 = sub_8AF4(v27, v29, v30, v31, v23, 1);
  sub_2D00(v30, v32);

  v34 = v44;
  sub_8998(v24, v44, type metadata accessor for ContactHandleDisambiguationView);
  v35 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v36 = swift_allocObject();
  sub_7220(v34, v36 + v35);
  *(v36 + ((v35 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v37 = v48;
  sub_8998(v24, v48, type metadata accessor for ContactHandleDisambiguationView);
  v38 = swift_allocObject();
  sub_7220(v37, v38 + v35);
  sub_3004(&qword_144A0, &qword_CBC8);
  sub_3004(&qword_144A8, &qword_CBD0);
  v39 = sub_C400();
  v40 = sub_749C(&qword_144B0, &type metadata accessor for DisambiguationTitle, &protocol conformance descriptor for DisambiguationTitle);
  v52 = v39;
  v53 = v40;
  swift_getOpaqueTypeConformance2();
  sub_7370();
  sub_C4C0();
  (*(v47 + 8))(v43, v45);
  return (*(v49 + 8))(v18, v50);
}

uint64_t sub_5734@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v26 = sub_C400();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_C060();
  v33 = v4;
  sub_30C4();
  v5 = sub_C250();
  v7 = v6;
  v9 = v8;
  sub_C220();
  v10 = sub_C240();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_8328(v5, v7, v9 & 1);

  v34 = &type metadata for Text;
  v35 = &protocol witness table for Text;
  v17 = swift_allocObject();
  v32 = v17;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14 & 1;
  *(v17 + 40) = v16;
  v30 = &type metadata for AnyView;
  v31 = &protocol witness table for AnyView;
  v29 = v25;

  sub_C3F0();
  v18 = sub_BE90();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v21, enum case for SeparatorStyle.remove(_:), v18);
  sub_749C(&qword_144B0, &type metadata accessor for DisambiguationTitle, &protocol conformance descriptor for DisambiguationTitle);
  v22 = v26;
  sub_C290();
  (*(v19 + 8))(v21, v18);
  return (*(v28 + 8))(v3, v22);
}

uint64_t sub_59F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[2] = a2;
  v3 = type metadata accessor for ContactHandleDisambiguationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_C030();
  v8 = sub_3004(&qword_144C8, &qword_CBD8);
  v22[1] = v22;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = sub_C070();
  v13 = sub_7CF8(v12);

  v22[5] = v13;
  swift_getKeyPath();
  sub_8998(a1, v6, type metadata accessor for ContactHandleDisambiguationView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_7220(v6, v15 + v14);
  v16 = swift_allocObject();
  if (v7)
  {
    *(v16 + 16) = sub_8230;
  }

  else
  {
    *(v16 + 16) = sub_8170;
  }

  *(v16 + 24) = v15;
  sub_3004(&qword_144D8, &qword_CC00);
  sub_3004(&qword_144E0, &qword_CC08);
  sub_81C8();
  v17 = sub_C450();
  v18 = sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView, &protocol conformance descriptor for SummaryItemStandardView);
  v22[3] = v17;
  v22[4] = v18;
  swift_getOpaqueTypeConformance2();
  sub_C330();
  v19 = sub_3004(&qword_144F0, &unk_CC10);
  __chkstk_darwin(v19);
  (*(v9 + 16))(v22 - v20, v11, v8);
  swift_storeEnumTagMultiPayload();
  sub_73E8();
  sub_C180();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_5F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a2;
  v24 = a1;
  v25 = a3;
  v3 = type metadata accessor for ContactHandleDisambiguationView(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_C450();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BEE0();
  v11 = sub_6238(v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v39 = &type metadata for Text;
  v40 = &protocol witness table for Text;
  v18 = swift_allocObject();
  v38 = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15 & 1;
  *(v18 + 40) = v17;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v30 = 0u;
  v29 = 0u;
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  sub_C440();
  sub_8998(v22, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactHandleDisambiguationView);
  v19 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v20 = swift_allocObject();
  sub_7220(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView, &protocol conformance descriptor for SummaryItemStandardView);
  sub_C2A0();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_6238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  __chkstk_darwin(v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_51A8() == 4)
  {
    v25 = a1;
    v26 = a2;
    sub_30C4();

    v7 = sub_C250();
    v9 = v8;
    v11 = v10;
    sub_C200();
    v12 = sub_C1E0();
    v13 = *(v12 - 8);
    __chkstk_darwin(v12);
    v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v13 + 104))(v15, enum case for Font.Leading.tight(_:), v12);
    sub_C210();

    (*(v13 + 8))(v15, v12);
    v16 = sub_C240();

    sub_8328(v7, v9, v11 & 1);
  }

  else
  {
    v25 = a1;
    v26 = a2;
    sub_30C4();

    v17 = sub_C250();
    v19 = v18;
    v21 = v20;
    sub_51A8();
    sub_6FDC();
    sub_C4A0();

    sub_7034(v6);
    v22 = v19;
    v16 = sub_C240();
    sub_8328(v17, v22, v21 & 1);
  }

  return v16;
}

uint64_t sub_6504(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_3004(&qword_144F8, &qword_CC20);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_6570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a3;
  v4 = type metadata accessor for ContactHandleDisambiguationView(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v4 - 8);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_C450();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BEE0();
  v10 = sub_6238(v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v52 = &type metadata for Text;
  v53 = &protocol witness table for Text;
  v17 = swift_allocObject();
  v51 = v17;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14 & 1;
  *(v17 + 40) = v16;
  v18 = sub_BEF0();
  v20 = sub_68CC(v18, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v49 = &type metadata for Text;
  v50 = &protocol witness table for Text;
  v27 = swift_allocObject();
  v47 = 0;
  v48 = v27;
  *(v27 + 16) = v20;
  *(v27 + 24) = v22;
  *(v27 + 32) = v24 & 1;
  *(v27 + 40) = v26;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v40 = 0u;
  v39 = 0u;
  sub_C440();
  v28 = v33;
  sub_8998(a2, v33, type metadata accessor for ContactHandleDisambiguationView);
  v29 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v30 = swift_allocObject();
  sub_7220(v28, v30 + v29);
  *(v30 + ((v5 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
  sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView, &protocol conformance descriptor for SummaryItemStandardView);
  v31 = v35;
  sub_C2A0();

  return (*(v36 + 8))(v7, v31);
}

uint64_t sub_68CC(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  __chkstk_darwin(v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_C0C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ContactHandleDisambiguationView(0);
  v10 = sub_7810(v9);
  __chkstk_darwin(v10);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  LOBYTE(v8) = sub_C0B0();
  v11 = *(v7 + 8);
  v11(v9, v6);
  v11(v9, v6);
  sub_51A8();
  sub_6FDC();
  sub_C4A0();
  v12 = 56;
  if (v8)
  {
    v12 = 16;
  }

  sub_851C(&v5[v12], v50);
  sub_7034(v5);
  v13 = sub_51A8();
  v14 = v51;
  v47 = v52;
  v46 = sub_8580(v50, v51);
  v48 = v45;
  v49 = a2;
  sub_30C4();

  if (v13 == 4)
  {
    v15 = sub_C250();
    v45 = v14;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_C1F0();
    sub_C1C0();
    sub_C1D0();

    v21 = sub_C1E0();
    v22 = *(v21 - 8);
    __chkstk_darwin(v21);
    v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 104))(v24, enum case for Font.Leading.tight(_:), v21);
    sub_C210();

    (*(v22 + 8))(v24, v21);
    v25 = sub_C240();
    v27 = v26;
    LOBYTE(v22) = v28;

    sub_8328(v16, v18, v20 & 1);

    v29 = sub_C230();
    v30 = v22 & 1;
    v31 = v25;
    v32 = v27;
  }

  else
  {
    v33 = sub_C250();
    v35 = v34;
    v37 = v36;
    sub_51A8();
    sub_C4A0();

    sub_7034(v5);
    v38 = sub_C240();
    v40 = v39;
    v42 = v41;
    sub_8328(v33, v35, v37 & 1);

    v29 = sub_C230();
    v30 = v42 & 1;
    v31 = v38;
    v32 = v40;
  }

  sub_8328(v31, v32, v30);

  sub_85C4(v50);
  return v29;
}

uint64_t sub_6DC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_C4E0();
  sub_1AA4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_3364();
  v9 = v8 - v7;
  type metadata accessor for ContactHandleDisambiguationView(0);
  sub_C410();
  sub_C040();
  sub_3004(&qword_142E0, &qword_CB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C9C0;
  sub_C050();
  sub_C570();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a2;
  sub_C510();
  sub_C4D0();

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_6FA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_6FDC()
{
  result = qword_14490;
  if (!qword_14490)
  {
    type metadata accessor for ContactHandleDisambiguationStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14490);
  }

  return result;
}

uint64_t sub_7034(uint64_t a1)
{
  v2 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7090()
{
  type metadata accessor for ContactHandleDisambiguationView(0);
  sub_8A9C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_C080();
  sub_3350();
  (*(v7 + 8))(v1 + v4);
  v8 = v0[5];
  sub_C430();
  sub_3350();
  (*(v9 + 8))(v1 + v4 + v8);

  v10 = v0[7];
  sub_3004(&qword_14498, &qword_CBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_C0C0();
    sub_3350();
    (*(v11 + 8))(v1 + v4 + v10);
  }

  else
  {
  }

  sub_8AD4();

  return _swift_deallocObject(v1, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_7214(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_7220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactHandleDisambiguationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7284@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_4DB0(v2);
  sub_8AB4(*(v3 + 80));

  return sub_5734(v4, a1);
}

uint64_t sub_7300@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactHandleDisambiguationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_59F0(v4, a1);
}

unint64_t sub_7370()
{
  result = qword_144B8;
  if (!qword_144B8)
  {
    sub_304C(&qword_144A8, &qword_CBD0);
    sub_73E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_144B8);
  }

  return result;
}

unint64_t sub_73E8()
{
  result = qword_144C0;
  if (!qword_144C0)
  {
    sub_304C(&qword_144C8, &qword_CBD8);
    sub_C450();
    sub_749C(&qword_144D0, &type metadata accessor for SummaryItemStandardView, &protocol conformance descriptor for SummaryItemStandardView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_144C0);
  }

  return result;
}

uint64_t sub_749C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_751C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unsigned int *a4)
{
  v7 = type metadata accessor for ContactHandleDisambiguationStyle(0);
  sub_89F8(v7, a2);
  v8 = sub_8960(v7, a2);
  v9 = sub_C1A0();
  v10 = sub_C1B0();
  v17 = &type metadata for Color;
  v18 = &protocol witness table for Color;
  *&v16 = a3();
  v11 = sub_C2E0();
  *(v8 + 10) = &type metadata for Color;
  *(v8 + 11) = &protocol witness table for Color;
  *(v8 + 7) = v11;
  v12 = *(v7 + 32);
  v13 = *a4;
  sub_BDE0();
  sub_8A8C();
  (*(v14 + 104))(&v8[v12], v13);
  *v8 = v9;
  *(v8 + 1) = v10;
  return sub_8A5C(&v16, (v8 + 16));
}

uint64_t sub_762C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_14148 != -1)
  {
    swift_once();
  }

  v4 = sub_8960(a1, qword_15170);
  return sub_8998(v4, a2, type metadata accessor for ContactHandleDisambiguationStyle);
}

uint64_t sub_7794@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = sub_8960(a1, a3);
  return sub_8998(v8, a5, type metadata accessor for ContactHandleDisambiguationStyle);
}

uint64_t sub_7810@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3004(&qword_14498, &qword_CBC0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  sub_8610(v2, &v14 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_C0C0();
    return (*(*(v7 - 8) + 32))(a1, v6, v7);
  }

  else
  {
    sub_C550();
    v9 = sub_C190();
    sub_C0A0();

    v10 = sub_C170();
    v11 = *(v10 - 8);
    __chkstk_darwin(v10);
    v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_C160();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_7A04(uint64_t a1)
{
  v2 = sub_3004(&qword_143C0, &qword_CC30);
  sub_1AA4();
  v4 = __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v40 = v9;
  v41 = &v36 - v8;
  v10 = 0;
  v11 = 0;
  v37 = *(v9 + 80);
  v12 = &_swiftEmptyArrayStorage;
  v38 = (v37 + 32) & ~v37;
  v13 = &_swiftEmptyArrayStorage + v38;
  v39 = *(a1 + 16);
  while (1)
  {
    if (v39 == v11)
    {
      v33 = v12[3];
      if (v33 >= 2)
      {
        v34 = v33 >> 1;
        v32 = __OFSUB__(v34, v10);
        v35 = v34 - v10;
        if (v32)
        {
          goto LABEL_35;
        }

        v12[2] = v35;
      }

      return v12;
    }

    sub_BF40();
    sub_8A8C();
    v15 = *(v14 + 16);
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11;
    v17 = *(v2 + 48);
    *v6 = v11;
    v15(&v6[v17], v16);
    result = sub_8684(v6, v41, &qword_143C0, &qword_CC30);
    if (v10)
    {
      v18 = v12;
    }

    else
    {
      v19 = v12[3];
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v20 = a1;
      v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      sub_3004(&qword_14508, &qword_CC38);
      v23 = *(v40 + 72);
      v24 = v38;
      v18 = swift_allocObject();
      result = j__malloc_size(v18);
      if (!v23)
      {
        goto LABEL_33;
      }

      v25 = result - v24;
      if (result - v24 == 0x8000000000000000 && v23 == -1)
      {
        goto LABEL_34;
      }

      v27 = v25 / v23;
      v18[2] = v22;
      v18[3] = 2 * (v25 / v23);
      v28 = v18 + v24;
      v29 = v12[3];
      v30 = (v29 >> 1) * v23;
      if (v12[2])
      {
        if (v18 < v12 || v28 >= v12 + v38 + v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v28[v30];
      v10 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - (v29 >> 1);

      a1 = v20;
    }

    v32 = __OFSUB__(v10--, 1);
    if (v32)
    {
      break;
    }

    result = sub_8684(v41, v13, &qword_143C0, &qword_CC30);
    v13 += *(v40 + 72);
    ++v11;
    v12 = v18;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_7CF8(uint64_t a1)
{
  v2 = sub_3004(&qword_144F8, &qword_CC20);
  v3 = __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v40 = v8;
  v41 = &v36 - v7;
  v9 = 0;
  v10 = 0;
  v37 = *(v8 + 80);
  v11 = &_swiftEmptyArrayStorage;
  v38 = (v37 + 32) & ~v37;
  v12 = &_swiftEmptyArrayStorage + v38;
  v39 = *(a1 + 16);
  while (1)
  {
    if (v39 == v10)
    {
      v33 = v11[3];
      if (v33 >= 2)
      {
        v34 = v33 >> 1;
        v32 = __OFSUB__(v34, v9);
        v35 = v34 - v9;
        if (v32)
        {
          goto LABEL_35;
        }

        v11[2] = v35;
      }

      return v11;
    }

    v13 = sub_BF00();
    v14 = *(v13 - 8);
    v15 = *(v14 + 16);
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10;
    v17 = *(v2 + 48);
    *v5 = v10;
    v15(&v5[v17], v16, v13);
    result = sub_8684(v5, v41, &qword_144F8, &qword_CC20);
    if (v9)
    {
      v18 = v11;
    }

    else
    {
      v19 = v11[3];
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v20 = a1;
      v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      sub_3004(&qword_14500, &qword_CC28);
      v23 = *(v40 + 72);
      v24 = v38;
      v18 = swift_allocObject();
      result = j__malloc_size(v18);
      if (!v23)
      {
        goto LABEL_33;
      }

      v25 = result - v24;
      if (result - v24 == 0x8000000000000000 && v23 == -1)
      {
        goto LABEL_34;
      }

      v27 = v25 / v23;
      v18[2] = v22;
      v18[3] = 2 * (v25 / v23);
      v28 = v18 + v24;
      v29 = v11[3];
      v30 = (v29 >> 1) * v23;
      if (v11[2])
      {
        if (v18 < v11 || v28 >= v11 + v38 + v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 != v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      v12 = &v28[v30];
      v9 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - (v29 >> 1);

      a1 = v20;
    }

    v32 = __OFSUB__(v9--, 1);
    if (v32)
    {
      break;
    }

    result = sub_8684(v41, v12, &qword_144F8, &qword_CC20);
    v12 += *(v40 + 72);
    ++v10;
    v11 = v18;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_8000()
{
  type metadata accessor for ContactHandleDisambiguationView(0);
  sub_8A9C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_C080();
  sub_3350();
  (*(v7 + 8))(v1 + v4);
  v8 = v0[5];
  sub_C430();
  sub_3350();
  (*(v9 + 8))(v1 + v4 + v8);

  v10 = v0[7];
  sub_3004(&qword_14498, &qword_CBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_C0C0();
    sub_3350();
    (*(v11 + 8))(v1 + v4 + v10);
  }

  else
  {
  }

  sub_8AD4();

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_8188()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_81C8()
{
  result = qword_144E8;
  if (!qword_144E8)
  {
    sub_304C(&qword_144D8, &qword_CC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_144E8);
  }

  return result;
}

uint64_t sub_8248(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ContactHandleDisambiguationView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_82E4()
{
  sub_8328(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8328(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_833C()
{
  type metadata accessor for ContactHandleDisambiguationView(0);
  sub_8A9C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_C080();
  sub_3350();
  (*(v7 + 8))(v1 + v4);
  v8 = v0[5];
  sub_C430();
  sub_3350();
  (*(v9 + 8))(v1 + v4 + v8);

  v10 = v0[7];
  sub_3004(&qword_14498, &qword_CBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_C0C0();
    sub_3350();
    (*(v11 + 8))(v1 + v4 + v10);
  }

  else
  {
  }

  sub_8AD4();

  return _swift_deallocObject(v1, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_84BC()
{
  v0 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_4DB0(v0);
  v2 = sub_8AB4(*(v1 + 80));
  return sub_6DC8(v2, v3);
}

uint64_t sub_851C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_8580(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_85C4(void *a1)
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

uint64_t sub_8610(uint64_t a1, uint64_t a2)
{
  v4 = sub_3004(&qword_14498, &qword_CBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_3004(a3, a4);
  sub_8A8C();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_86F8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_BDE0();
    v9 = a1 + *(a3 + 32);

    return sub_1574(v9, a2, v8);
  }
}

void *sub_8794(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_BDE0();
    v8 = v5 + *(a4 + 32);

    return sub_165C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_8814(uint64_t a1)
{
  result = sub_88A8();
  if (v2 <= 0x3F)
  {
    result = sub_BDE0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_88A8()
{
  result = qword_14578;
  if (!qword_14578)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_14578);
  }

  return result;
}

unint64_t sub_8908()
{
  result = qword_145B8;
  if (!qword_145B8)
  {
    sub_304C(&qword_145C0, "n\t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_145B8);
  }

  return result;
}

uint64_t sub_8960(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_8998(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8A8C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t *sub_89F8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_8A5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_8AD4()
{
  v3 = v1 + *(v0 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_7214(v4, v5);
}

uint64_t sub_8AF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  sub_9028(&v52);
  if (*(&v52 + 1))
  {
    v55[0] = v52;
    v55[1] = v53;
    v55[2] = v54;
    if (a4 >> 60 == 15)
    {
      sub_C350();
      sub_1AA4();
      __chkstk_darwin(v10);
      sub_3364();
      sub_911C(v55, a6 & 1, a5, v12 - v11);
      v56 = v55[0];
      sub_9B48(&v56);
      v57 = v53;
      sub_9B48(&v57);
      v58[0] = v54;
      sub_9B48(v58);
      sub_9CF4(&qword_14668);
      v13 = sub_C260();
      v14 = sub_9D48();
      v15(v14);
    }

    else
    {
      v29 = sub_3004(&qword_14670, &qword_CD00);
      v49 = v48;
      sub_1AA4();
      v31 = v30;
      __chkstk_darwin(v32);
      v34 = v48 - v33;
      v35 = sub_C350();
      v48[2] = v48;
      sub_1AA4();
      v48[1] = a5;
      v37 = v36;
      __chkstk_darwin(v38);
      sub_3364();
      v41 = v40 - v39;
      v42 = sub_9D48();
      sub_9B9C(v42, v43);
      sub_9644(v55, a3, a4, a6 & 1);
      v56 = v55[0];
      sub_9B48(&v56);
      v57 = v53;
      sub_9B48(&v57);
      v58[0] = v54;
      sub_9B48(v58);
      v44 = sub_9CF4(&qword_14668);
      sub_C280();
      (*(v37 + 8))(v41, v35);
      v50 = v35;
      v51 = v44;
      swift_getOpaqueTypeConformance2();
      v13 = sub_C260();
      v45 = sub_9D48();
      sub_2D00(v45, v46);
      (*(v31 + 8))(v34, v29);
    }
  }

  else
  {
    v16 = sub_C350();
    sub_1AA4();
    v18 = v17;
    __chkstk_darwin(v19);
    sub_3364();
    v22 = v21 - v20;
    v23 = sub_BE80();
    v49 = v48;
    __chkstk_darwin(v23 - 8);
    sub_3364();
    sub_3004(&qword_14660, &qword_CCF8);
    v24 = sub_BDB0();
    sub_1AA4();
    v26 = v25;
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_C9C0;
    (*(v26 + 104))(v28 + v27, enum case for _ProtoIdiom.default(_:), v24);
    sub_9830(v28);
    sub_BDD0();

    sub_C370();
    sub_9CF4(&qword_14668);
    v13 = sub_C260();
    (*(v18 + 8))(v22, v16);
  }

  return v13;
}

void sub_9028(void *a3@<X8>)
{
  sub_BDA0();
  sub_9D14();
  if (v5 >> 60 != 15)
  {
    v12 = v4;
    v13 = v5;
    sub_BD90();
    swift_allocObject();
    sub_BD80();
    sub_9CA0();
    sub_BD70();
    sub_2D00(v12, v13);

    v6 = v14;
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = v10;
  a3[5] = v11;
}

uint64_t sub_911C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_BE50();
  sub_1AA4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_3364();
  v15 = v14 - v13;
  sub_AFF0(*a1, a1[1], a1[2], a1[3], a3);
  v16 = sub_BE80();
  __chkstk_darwin(v16 - 8);
  sub_3364();
  v49 = v18 - v17;
  if (a2)
  {
    v19 = sub_BDF0();
    v47 = &v42;
    *&v48 = &v42;
    sub_1AA4();
    v21 = v20;
    v46 = a4;
    v23 = *(v22 + 64);
    __chkstk_darwin(v24);
    v45 = v15;
    v25 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v25, v15, v9);
    v26 = *(v21 + 104);
    v27 = v26(v25, enum case for ImageElement.SourceType.contact(_:), v19);
    v44 = &v42;
    __chkstk_darwin(v27);
    v42 = a1[4];
    sub_BDE0();
    v43 = v9;
    sub_1AA4();
    __chkstk_darwin(v28);
    sub_3364();
    (*(v31 + 104))(v30 - v29, enum case for ImageElement.ImageStyle.default(_:));

    sub_BE00();
    v26(v25, enum case for ImageElement.SourceType.appIcon(_:), v19);
    sub_BDC0();
    v32 = *(v21 + 8);
    v32(v25, v19);
    v32(v25, v19);
    sub_C370();
    return (*(v11 + 8))(v45, v43);
  }

  else
  {
    sub_3004(&qword_14678, &qword_CD08);
    v34 = sub_BDF0();
    sub_1AA4();
    v36 = v35;
    sub_9D30();
    v37 = swift_allocObject();
    v48 = xmmword_C9C0;
    *(v37 + 16) = xmmword_C9C0;
    (*(v11 + 16))(v37 + v4, v15, v9);
    (*(v36 + 104))(v37 + v4, enum case for ImageElement.SourceType.contact(_:), v34);
    v50 = v37;
    sub_3004(&qword_14660, &qword_CCF8);
    v38 = sub_BDB0();
    sub_1AA4();
    v40 = v39;
    sub_9D30();
    v41 = swift_allocObject();
    *(v41 + 16) = v48;
    (*(v40 + 104))(v41 + v4, enum case for _ProtoIdiom.default(_:), v38);
    sub_9830(v41);
    sub_3004(&qword_14680, &qword_CD10);
    sub_9BF4();
    sub_BE70();

    sub_C370();
    return (*(v11 + 8))(v15, v9);
  }
}

uint64_t sub_9644(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_BED0();
  sub_1AA4();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v11);
  if (a4)
  {
    v18[1] = v18;
    __chkstk_darwin(v12);
    v13 = sub_9D54();
    __chkstk_darwin(v13);
    v14 = *(a1 + 40);
    v18[2] = *(a1 + 32);
    v18[3] = v14;

    sub_C540();
    sub_BEB0();

    sub_BEA0();
    v15 = *(v8 + 8);
    v15(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v16 = sub_9D48();
    (v15)(v16);
  }

  else
  {
    sub_9D54();
  }

  return sub_C360();
}

void *sub_9830(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_3004(&qword_14690, &qword_CD18);
  v2 = sub_C580();
  v3 = v2;
  v29 = *(v1 + 16);
  if (!v29)
  {
LABEL_15:

    return v3;
  }

  v34 = v2 + 56;
  result = sub_BDB0();
  v5 = result;
  v6 = 0;
  v7 = *(result - 1);
  v27 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v28 = v7;
  v33 = v7 + 16;
  v8 = (v7 + 8);
  v25 = (v7 + 32);
  v26 = v1;
  while (v6 < *(v1 + 16))
  {
    v30 = &v25;
    v31 = v6 + 1;
    v9 = *(v28 + 64);
    v35 = *(v28 + 72);
    __chkstk_darwin(result);
    v32 = *(v10 + 16);
    v32(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_9C58(&qword_14698, &type metadata accessor for _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
    v36 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = sub_C520();
    v12 = ~(-1 << v3[32]);
    while (1)
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = *(v34 + 8 * v14);
      v16 = 1 << (v11 & v12);
      v17 = (v11 & v12) * v35;
      if ((v16 & v15) == 0)
      {
        break;
      }

      __chkstk_darwin(v11);
      v18 = v3;
      (v32)(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *(v3 + 6) + v19, v5);
      sub_9C58(&qword_146A0, &type metadata accessor for _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
      v20 = sub_C530();
      v21 = *v8;
      (*v8)(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      if (v20)
      {
        result = (v21)(v36, v5);
        v3 = v18;
        goto LABEL_12;
      }

      v11 = v13 + 1;
      v3 = v18;
    }

    *(v34 + 8 * v14) = v16 | v15;
    result = (*v25)(*(v3 + 6) + v17, v36, v5);
    v22 = *(v3 + 2);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    *(v3 + 2) = v24;
LABEL_12:
    v6 = v31;
    v1 = v26;
    if (v31 == v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_9B9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_9BF4()
{
  result = qword_14688;
  if (!qword_14688)
  {
    sub_304C(&qword_14680, &qword_CD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14688);
  }

  return result;
}

uint64_t sub_9C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_9CA0()
{
  result = qword_146A8;
  if (!qword_146A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_146A8);
  }

  return result;
}

uint64_t sub_9CF4(unint64_t *a1)
{

  return sub_9C58(a1, &type metadata accessor for RFImageView, &protocol conformance descriptor for RFImageView);
}

uint64_t sub_9D54()
{

  return static RFImage.pngData(_:dark:)(v1, v0, 0, 0xF000000000000000);
}

Swift::Int sub_9DAC(char a1)
{
  sub_C610();
  sub_C620(a1 & 1);
  return sub_C630();
}

Swift::Int sub_9E10(uint64_t a1)
{
  v2 = *v1;
  sub_C610();
  sub_C620(v2);
  return sub_C630();
}

uint64_t sub_9E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BadgedImageView(0);
  sub_8A8C();
  __chkstk_darwin(v8);
  sub_3364();
  v11 = v10 - v9;
  v12 = a1 == 0x6D49646567646142 && a2 == 0xEF77656956656761;
  if (!v12 && (sub_C5C0() & 1) == 0)
  {
    sub_ABFC();
    swift_allocError();
    v14 = 0;
    goto LABEL_10;
  }

  sub_BD90();
  swift_allocObject();
  sub_BD80();
  sub_9CA0();
  sub_BD70();
  if (v4)
  {

    sub_ABFC();
    swift_allocError();
    v14 = 1;
LABEL_10:
    *v13 = v14;
    swift_willThrow();
    return v7;
  }

  v44 = v53;
  v59 = v54;
  v40 = v55;
  v52 = v56;
  v48 = v58;
  v49 = v57;
  v50 = &v38;
  v51 = sub_BE50();
  sub_1AA4();
  v41 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v47 = v11;
  v19 = sub_BDE0();
  v39 = &v38;
  sub_1AA4();
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  v43 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v38 - v43;
  v46 = v7;
  v42 = *(v21 + 104);
  v42(&v38 - v43, enum case for ImageElement.ImageStyle.contactImage4(_:), v19);
  v45 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AFF0(v44, v59, v40, v52, v25);
  v26 = (*(v21 + 8))(v25, v19);
  v44 = &v38;
  __chkstk_darwin(v26);
  v27 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v41;
  (*(v41 + 16))(v27, v27, v51);
  v29 = sub_BE20();
  v40 = &v38;
  __chkstk_darwin(v29 - 8);
  sub_3364();
  v30 = v48;

  v31 = sub_BE30();
  v39 = &v38;
  __chkstk_darwin(v31);
  v42(&v38 - v43, enum case for ImageElement.ImageStyle.image3(_:), v19);
  v32 = v47;
  sub_BE60();
  v33 = *(v28 + 8);
  v34 = v27;
  v35 = v51;
  v33(v34, v51);

  v36 = (v32 + *(v46 + 20));
  *v36 = v49;
  v36[1] = v30;
  sub_AD14(&qword_14760, type metadata accessor for BadgedImageView, &unk_C96C);
  v7 = sub_C320();
  v33(v45, v35);
  return v7;
}

uint64_t sub_A364(uint64_t a1)
{
  v61 = type metadata accessor for ContactConfirmationView(0);
  sub_8A8C();
  __chkstk_darwin(v1);
  sub_3364();
  v59 = v3 - v2;
  v60 = sub_BFA0();
  sub_1AA4();
  v58 = v4;
  __chkstk_darwin(v5);
  sub_3364();
  v55 = v7 - v6;
  v57 = type metadata accessor for ContactHandleDisambiguationView(0);
  sub_8A8C();
  __chkstk_darwin(v8);
  sub_3364();
  v11 = v10 - v9;
  v56 = sub_C080();
  sub_1AA4();
  v54 = v12;
  __chkstk_darwin(v13);
  sub_3364();
  v53 = v15 - v14;
  v16 = type metadata accessor for ContactDisambiguationView(0);
  sub_8A8C();
  __chkstk_darwin(v17);
  sub_3364();
  v20 = v19 - v18;
  v21 = sub_BFF0();
  sub_1AA4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_3364();
  v27 = v26 - v25;
  v28 = sub_C090();
  sub_1AA4();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_3364();
  v34 = v33 - v32;
  (*(v30 + 16))(v33 - v32, a1, v28);
  v35 = (*(v30 + 88))(v34, v28);
  if (v35 == enum case for ContactDisambiguationSnippetPluginModel.contactDisambiguation(_:))
  {
    v36 = sub_AFE0();
    v37(v36);
    (*(v23 + 32))(v27, v34, v21);
    (*(v23 + 16))(v20, v27, v21);
    sub_C420();
    v38 = (v20 + *(v16 + 24));
    sub_C500();
    sub_AFC0(&qword_14270);
    *v38 = sub_C100();
    v38[1] = v39;
    sub_AD14(&qword_14778, type metadata accessor for ContactDisambiguationView, &unk_CA8C);
    v40 = sub_C260();
    sub_AD5C(v20, type metadata accessor for ContactDisambiguationView);
    (*(v23 + 8))(v27, v21);
    return v40;
  }

  if (v35 == enum case for ContactDisambiguationSnippetPluginModel.contactHandleDisambiguation(_:))
  {
    v41 = sub_AFE0();
    v42(v41);
    (*(v54 + 32))(v53, v34, v56);
    (*(v54 + 16))(v11, v53, v56);
    KeyPath = swift_getKeyPath();
    sub_C420();
    v44 = (v11 + v57[6]);
    sub_C500();
    sub_AFC0(&qword_14270);
    *v44 = sub_C100();
    v44[1] = v45;
    v46 = v57[7];
    *(v11 + v46) = swift_getKeyPath();
    sub_3004(&qword_14498, &qword_CBC0);
    swift_storeEnumTagMultiPayload();
    v47 = v11 + v57[8];
    *v47 = KeyPath;
    *(v47 + 8) = 0;
    sub_AD14(&qword_14770, type metadata accessor for ContactHandleDisambiguationView, &unk_CB70);
    v40 = sub_C260();
    sub_AD5C(v11, type metadata accessor for ContactHandleDisambiguationView);
    (*(v54 + 8))(v53, v56);
    return v40;
  }

  if (v35 == enum case for ContactDisambiguationSnippetPluginModel.contactConfirmation(_:))
  {
    v48 = sub_AFE0();
    v49(v48);
    (*(v58 + 32))(v55, v34, v60);
    (*(v58 + 16))(v59, v55, v60);
    sub_C420();
    v50 = (v59 + *(v61 + 24));
    sub_C500();
    sub_AFC0(&qword_14270);
    *v50 = sub_C100();
    v50[1] = v51;
    sub_AD14(&qword_14768, type metadata accessor for ContactConfirmationView, "i=");
    v40 = sub_C260();
    sub_AD5C(v59, type metadata accessor for ContactConfirmationView);
    (*(v58 + 8))(v55, v60);
    return v40;
  }

  result = sub_C5B0();
  __break(1u);
  return result;
}

uint64_t sub_AA18()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_AA74()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_AAF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AA74();
  *a1 = result;
  return result;
}

uint64_t sub_AB34(uint64_t a1)
{
  v2 = sub_C0C0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_C150();
}

unint64_t sub_ABFC()
{
  result = qword_14758;
  if (!qword_14758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14758);
  }

  return result;
}

uint64_t sub_AC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AC98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C120();
  *a1 = result;
  return result;
}

uint64_t sub_AD14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AD5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8A8C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriInferenceFlowsUIPlugin.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriInferenceFlowsUIPlugin.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xAF18);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_AF68()
{
  result = qword_14780;
  if (!qword_14780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14780);
  }

  return result;
}

uint64_t sub_AFC0(unint64_t *a1)
{

  return sub_AC50(a1, &type metadata accessor for Context, &protocol conformance descriptor for Context);
}

uint64_t sub_AFF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = sub_BE20();
    sub_1AA4();
    v11 = v10;
    __chkstk_darwin(v12);
    sub_3364();
    v15 = v14 - v13;
    sub_3004(&qword_14788, &qword_CEE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_C9C0;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    sub_BE10();
    (*(v11 + 104))(v15, enum case for ImageElement.Contact.Content.avatar(_:), v9);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v17 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v18 = sub_BE20();
    sub_1AA4();
    v20 = v19;
    __chkstk_darwin(v21);
    sub_3364();
    v24 = v23 - v22;
    if (v17)
    {

      sub_BE40();
      v25 = &enum case for ImageElement.Contact.Content.monogram(_:);
    }

    else
    {
      sub_BE10();
      v25 = &enum case for ImageElement.Contact.Content.avatar(_:);
    }

    (*(v20 + 104))(v24, *v25, v18);
  }

  sub_BDE0();
  sub_1AA4();
  __chkstk_darwin(v26);
  sub_3364();
  (*(v29 + 16))(v28 - v27, a5);
  return sub_BE60();
}

__n128 sub_B28C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_B2A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B2E0(uint64_t result, int a2, int a3)
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

uint64_t sub_B33C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000000E010 == a2;
  if (v3 || (sub_C5C0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xEF736C616974696ELL;
    if (v6 || (sub_C5C0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_C5C0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_B49C(unsigned __int8 a1)
{
  sub_C610();
  sub_C620(a1);
  return sub_C630();
}

uint64_t sub_B4F0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x49746361746E6F63;
  }

  return 0x6449656C646E7562;
}

uint64_t sub_B57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B33C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B45C();
  *a1 = result;
  return result;
}

uint64_t sub_B5EC(uint64_t a1)
{
  v2 = sub_BA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B628(uint64_t a1)
{
  v2 = sub_BA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B664(void *a1)
{
  v3 = v1;
  v5 = sub_3004(&qword_147A0, &qword_CFA8);
  sub_1AA4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_8580(a1, a1[3]);
  sub_BA44();
  sub_C650();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_BD54(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    sub_BD54(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    sub_BD54(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_B7C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3004(&qword_14790, &qword_CFA0);
  sub_1AA4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_8580(a1, a1[3]);
  sub_BA44();
  sub_C640();
  if (v2)
  {
    return sub_85C4(a1);
  }

  v27 = 0;
  v11 = sub_C590();
  v24 = v12;
  v26 = 1;
  v22 = sub_C590();
  v23 = v13;
  v25 = 2;
  v14 = sub_C590();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_85C4(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

double sub_B9E8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_B7C0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_BA44()
{
  result = qword_14798;
  if (!qword_14798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriInferenceFlowsDataModels.ViewData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriInferenceFlowsDataModels.ViewData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xBBFCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BC40()
{
  result = qword_147A8;
  if (!qword_147A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_147A8);
  }

  return result;
}

unint64_t sub_BC98()
{
  result = qword_147B0;
  if (!qword_147B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_147B0);
  }

  return result;
}

unint64_t sub_BCF0()
{
  result = qword_147B8;
  if (!qword_147B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_147B8);
  }

  return result;
}

uint64_t sub_BD54(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, v3);
}