double sub_100089D30(uint64_t a1, uint64_t a2)
{
  sub_1000EB104();
  sub_100005898();
  v2 = sub_1000EA814();
  v4 = v3;
  v6 = v5;
  sub_1000EA9C4();
  v7 = sub_1000EA784();
  v9 = v8;
  v11 = v10;

  sub_1000058EC(v2, v4, v6 & 1);

  type metadata accessor for DailyViewAttributes(0);
  v12 = sub_1000EA7D4();
  v14 = v13;
  v16 = v15;
  sub_1000058EC(v7, v9, v11 & 1);

  v17 = sub_1000EA794();
  v19 = v18;
  LOBYTE(v7) = v20;
  sub_1000058EC(v12, v14, v16 & 1);

  v21 = sub_1000EA714();
  v23 = v22;
  LOBYTE(v14) = v24;
  sub_1000058EC(v17, v19, v7 & 1);

  sub_1000EB144();
  v25 = sub_1000EA7A4();
  v27 = v26;
  v29 = v28;
  sub_1000058EC(v21, v23, v14 & 1);

  sub_1000EA934();
  sub_1000058EC(v25, v27, v29 & 1);

  return result;
}

uint64_t sub_100089F88@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ConditionColumn(0);
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for DailyViewAttributes(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000864A0();
  v7 = sub_1000EA3C4();
  sub_1000864A0();
  v8 = swift_allocObject();
  sub_100089A24();
  v9 = *(sub_100002A10(&qword_1001337C0, &qword_1000F52E0) + 48);
  *(a1 + v9) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v6[*(v4 + 28)];
  v10 = *&v6[*(v4 + 76)];

  result = sub_10008662C(v6, type metadata accessor for DailyViewAttributes);
  a1[1] = v10;
  a1[2] = v7;
  a1[3] = sub_10008E4A4;
  a1[4] = v8;
  return result;
}

uint64_t sub_10008A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v37 = a3;
  v38 = sub_1000EA384();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EAFC4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v31 = sub_100002A10(&qword_10012EF00, &qword_1000F5320);
  __chkstk_darwin(v31);
  v13 = &v30 - v12;
  v34 = sub_100002A10(&qword_1001337C8, &qword_1000F5328);
  __chkstk_darwin(v34);
  v32 = &v30 - v14;
  v30 = a1;
  sub_1000EB1E4();
  sub_1000EAF84();
  v15 = *(v6 + 8);
  v15(v11, v5);
  sub_1000EB1E4();
  sub_1000EAF54();
  v15(v9, v5);
  sub_1000EAED4();
  v16 = *(v33 + *(type metadata accessor for DailyViewAttributes(0) + 72));
  KeyPath = swift_getKeyPath();
  v18 = &v13[*(v31 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;

  sub_1000EB1E4();
  v19 = sub_1000EAF74();
  v21 = v20;
  v15(v11, v5);
  v39 = v19;
  v40 = v21;
  sub_100005898();
  v22 = sub_1000EA814();
  v24 = v23;
  v26 = v25;
  sub_10008E560();
  v27 = v32;
  sub_1000EA884();
  sub_1000058EC(v22, v24, v26 & 1);

  sub_100006850(v13, &qword_10012EF00, &qword_1000F5320);
  v28 = v35;
  sub_1000EA374();
  sub_1000EA024();
  (*(v36 + 8))(v28, v38);
  return sub_100006850(v27, &qword_1001337C8, &qword_1000F5328);
}

uint64_t sub_10008A57C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for PrecipitationColumn(0);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DailyViewAttributes(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000864A0();
  v7 = sub_1000EA3D4();
  sub_1000864A0();
  v8 = swift_allocObject();
  sub_100089A24();
  v9 = *(sub_100002A10(qword_1001337F0, &unk_1000F5390) + 48);
  *(a1 + v9) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v6[*(v4 + 28)];
  v10 = *&v6[*(v4 + 76)];

  result = sub_10008662C(v6, type metadata accessor for DailyViewAttributes);
  a1[1] = v10;
  a1[2] = v7;
  a1[3] = sub_10008EBBC;
  a1[4] = v8;
  return result;
}

double sub_10008A7A8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1000EAFC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB1E4();
  v7 = sub_1000EAF94();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    sub_1000EB114();
    *&v41 = sub_1000EC094(1);
    *(&v41 + 1) = v8;
    sub_100005898();
    v9 = sub_1000EA814();
    v11 = v10;
    v13 = v12;
    v14 = sub_1000EA784();
    v16 = v15;
    v18 = v17;
    sub_1000058EC(v9, v11, v13 & 1);

    type metadata accessor for PrecipitationColumn(0);
    type metadata accessor for DailyViewAttributes(0);
    v19 = sub_1000EA7D4();
    v21 = v20;
    LOBYTE(v11) = v22;
    sub_1000058EC(v14, v16, v18 & 1);

    v23 = sub_1000EA794();
    v25 = v24;
    LOBYTE(v16) = v26;
    sub_1000058EC(v19, v21, v11 & 1);

    sub_1000EA664();
    v27 = sub_1000EA714();
    v29 = v28;
    LOBYTE(v11) = v30;
    v32 = v31;
    sub_1000058EC(v23, v25, v16 & 1);

    *&v37 = v27;
    *(&v37 + 1) = v29;
    v38 = v11 & 1;
    v39 = v32;
    v40 = 0;
  }

  else
  {
    v37 = xmmword_1000F4D00;
    v38 = 0;
    v39 = 0;
    v40 = 1;
  }

  sub_1000EA4A4();
  result = *&v41;
  v34 = v42;
  v35 = v43;
  *a2 = v41;
  *(a2 + 16) = v34;
  *(a2 + 32) = v35;
  return result;
}

uint64_t sub_10008AA6C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for HighTemperatureColumn(0);
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for DailyViewAttributes(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000864A0();
  v7 = sub_1000EA3E4();
  sub_1000864A0();
  v8 = swift_allocObject();
  sub_100089A24();
  v9 = *(sub_100002A10(&qword_1001337E0, &qword_1000F5368) + 48);
  *(a1 + v9) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v6[*(v4 + 28)];
  v10 = *&v6[*(v4 + 76)];

  result = sub_10008662C(v6, type metadata accessor for DailyViewAttributes);
  a1[1] = v10;
  a1[2] = v7;
  a1[3] = sub_10008E7E4;
  a1[4] = v8;
  return result;
}

double sub_10008AC90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v66 = sub_1000EAD74();
  v5 = *(v66 - 8);
  __chkstk_darwin(v66);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_1000EC224();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  v18 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v64 = *(v18 - 8);
  v65 = v18;
  __chkstk_darwin(v18);
  v20 = &v61 - v19;
  v68 = a1;
  sub_1000EB1B4();
  v67 = type metadata accessor for DailyViewAttributes(0);
  v21 = *(v67 + 52);
  v69 = a2;
  if (*(a2 + v21) == 1)
  {
    sub_1000EC0E4();
  }

  else
  {
    sub_1000EC0F4();
  }

  v22 = sub_1000E86A4();
  sub_1000028A0(v10, 1, 1, v22);
  sub_1000EAD34();

  sub_100006850(v10, &qword_10012FD68, &unk_1000F5370);
  sub_1000EC214();
  v63 = *(v12 + 8);
  v63(v17, v11);
  v23 = v15;
  v24 = v66;
  (*(v5 + 104))(v7, enum case for WeatherFormatPlaceholder.none(_:), v66);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v25 = v65;
  v26 = v20;
  v27 = sub_1000E8304();
  v62 = v28;

  (*(v5 + 8))(v7, v24);
  v63(v23, v11);
  (*(v64 + 8))(v26, v25);
  v73 = v27;
  v74 = v62;
  v66 = sub_100005898();
  v29 = sub_1000EA814();
  v31 = v30;
  v33 = v32;
  sub_1000EA9C4();
  v34 = sub_1000EA784();
  v36 = v35;
  LOBYTE(v25) = v37;

  sub_1000058EC(v29, v31, v33 & 1);

  v38 = sub_1000EA7D4();
  v40 = v39;
  v42 = v41;
  sub_1000058EC(v34, v36, v25 & 1);

  v43 = sub_1000EA794();
  v45 = v44;
  v47 = v46;
  sub_1000058EC(v38, v40, v42 & 1);

  sub_1000EA664();
  v48 = sub_1000EA714();
  v50 = v49;
  LOBYTE(v40) = v51;
  v53 = v52;
  sub_1000058EC(v43, v45, v47 & 1);

  v73 = v48;
  v74 = v50;
  v75 = v40 & 1;
  v76 = v53;
  v71 = sub_10008B250(v68);
  v72 = v54;
  v55 = sub_1000EA814();
  v57 = v56;
  v59 = v58;
  sub_1000EA884();
  sub_1000058EC(v55, v57, v59 & 1);

  sub_1000058EC(v48, v50, v40 & 1);

  return result;
}

uint64_t sub_10008B250(uint64_t a1)
{
  v2 = sub_1000EAD74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000EC224();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v11 = qword_100145E00;
  v25._countAndFlagsBits = 0x80000001000FDE60;
  v34._object = 0x80000001000FDE40;
  v34._countAndFlagsBits = 0xD000000000000011;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v12.super.isa = v11;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v13 = sub_1000E8464(v34, v35, v12, v36, 0xD0000000000000D3, v25);
  v29 = v14;
  v30 = v13;

  sub_100002A10(&qword_100132C18, &unk_1000F42B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000F03E0;
  sub_1000EB1B4();
  sub_1000EAD24();
  (*(v3 + 104))(v5, enum case for WeatherFormatPlaceholder.none(_:), v2);
  sub_1000E93A4();
  sub_1000E9394();
  v27 = v2;
  v28 = a1;
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v16 = v31;
  v17 = sub_1000E8304();
  v19 = v18;

  (*(v3 + 8))(v5, v27);
  (*(v33 + 8))(v7, v16);
  (*(v32 + 8))(v10, v8);
  *(v15 + 56) = &type metadata for String;
  v20 = sub_10007C984();
  *(v15 + 64) = v20;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v21 = sub_1000EB124();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v20;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22;
  v23 = sub_1000EBEB4();

  return v23;
}

uint64_t sub_10008B650@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LowTemperatureColumn(0);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DailyViewAttributes(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000864A0();
  v7 = sub_1000EA3E4();
  sub_1000864A0();
  v8 = swift_allocObject();
  sub_100089A24();
  v9 = *(sub_100002A10(&qword_1001337E8, &unk_1000F5380) + 48);
  *(a1 + v9) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v6[*(v4 + 28)];
  v10 = *&v6[*(v4 + 76)];

  result = sub_10008662C(v6, type metadata accessor for DailyViewAttributes);
  a1[1] = v10;
  a1[2] = v7;
  a1[3] = sub_10008EA04;
  a1[4] = v8;
  return result;
}

double sub_10008B87C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v88 = sub_1000EA3A4();
  v87 = *(v88 - 8);
  v5 = __chkstk_darwin(v88);
  v86 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v82 - v7;
  v84 = sub_1000EA2C4();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000EAD74();
  v9 = *(v94 - 8);
  __chkstk_darwin(v94);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  v15 = sub_1000EC224();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v82 - v20;
  v22 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v92 = *(v22 - 8);
  v93 = v22;
  __chkstk_darwin(v22);
  v90 = &v82 - v23;
  v95 = a1;
  sub_1000EB194();
  v96 = a2;
  if (sub_10008C0F8())
  {
    sub_1000EC0F4();
  }

  else
  {
    sub_1000EC0E4();
  }

  v24 = sub_1000E86A4();
  sub_1000028A0(v14, 1, 1, v24);
  sub_1000EAD34();

  sub_100006850(v14, &qword_10012FD68, &unk_1000F5370);
  sub_1000EC214();
  v91 = *(v16 + 8);
  v91(v21, v15);
  v25 = v94;
  (*(v9 + 104))(v11, enum case for WeatherFormatPlaceholder.none(_:), v94);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v26 = v93;
  v27 = v90;
  v89 = sub_1000E8304();
  v29 = v28;

  (*(v9 + 8))(v11, v25);
  v91(v19, v15);
  (*(v92 + 8))(v27, v26);
  v100 = v89;
  v101 = v29;
  v94 = sub_100005898();
  v30 = sub_1000EA814();
  v32 = v31;
  LOBYTE(v25) = v33;
  sub_1000EA9C4();
  v34 = sub_1000EA784();
  v36 = v35;
  v38 = v37;

  sub_1000058EC(v30, v32, v25 & 1);

  v93 = type metadata accessor for LowTemperatureColumn(0);
  v39 = v96;
  type metadata accessor for DailyViewAttributes(0);
  sub_1000EA5D4();
  v40 = sub_1000EA7D4();
  v42 = v41;
  v44 = v43;

  sub_1000058EC(v34, v36, v38 & 1);

  sub_1000EA664();
  v45 = sub_1000EA714();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_1000058EC(v40, v42, v44 & 1);

  v60 = *v39;
  if (*(v39 + 8) == 1)
  {
    v61 = 1.0;
    if (v60)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1000EC1A4();
    v62 = sub_1000EA524();
    sub_1000E9F14();

    v63 = v82;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v60, 0);
    v52 = (*(v83 + 8))(v63, v84);
    v61 = 1.0;
    if (v100)
    {
      goto LABEL_10;
    }
  }

  v93 = v47;
  v64 = v45;
  v65 = v51;
  v66 = v49;
  v67 = v85;
  sub_10003E504(v52, v53, v54, v55, v56, v57, v58, v59, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v68 = v87;
  v69 = v86;
  v70 = v88;
  (*(v87 + 104))(v86, enum case for ColorSchemeContrast.increased(_:), v88);
  v71 = sub_1000EA394();
  v72 = *(v68 + 8);
  v72(v69, v70);
  v73 = v67;
  v49 = v66;
  v51 = v65;
  v45 = v64;
  v47 = v93;
  v72(v73, v70);
  v61 = 0.6;
  if (v71)
  {
    v61 = 1.0;
  }

LABEL_10:
  v100 = v45;
  v101 = v47;
  v74 = v49 & 1;
  v102 = v74;
  v103 = v51;
  v104 = v61;
  v98 = sub_10008C404(v95);
  v99 = v75;
  v76 = sub_1000EA814();
  v78 = v77;
  v80 = v79;
  sub_100002A10(&qword_1001301F0, &qword_1000F09D0);
  sub_1000268B8();
  sub_1000EA884();
  sub_1000058EC(v76, v78, v80 & 1);

  sub_1000058EC(v45, v47, v74);

  return result;
}

uint64_t sub_10008C0F8()
{
  v1 = sub_1000EA2C4();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_1000EA3A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LowTemperatureColumn(0);
  v21 = v0;
  sub_10008F2B0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_1000EC1A4();
    v12 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 == enum case for ColorSchemeContrast.standard(_:))
  {
    v14 = v21 + *(v11 + 24);
    return *(v14 + *(type metadata accessor for DailyViewAttributes(0) + 56));
  }

  else if (v13 == enum case for ColorSchemeContrast.increased(_:))
  {
    return 0;
  }

  else
  {
    v16 = v21 + *(v11 + 24);
    v15 = *(v16 + *(type metadata accessor for DailyViewAttributes(0) + 56));
    (*(v8 + 8))(v10, v7);
  }

  return v15;
}

uint64_t sub_10008C404(uint64_t a1)
{
  v2 = sub_1000EAD74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000EC224();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v11 = qword_100145E00;
  v25._countAndFlagsBits = 0x80000001000FDF60;
  v34._object = 0x80000001000FDF40;
  v34._countAndFlagsBits = 0xD000000000000010;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v12.super.isa = v11;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v13 = sub_1000E8464(v34, v35, v12, v36, 0xD0000000000000D1, v25);
  v29 = v14;
  v30 = v13;

  sub_100002A10(&qword_100132C18, &unk_1000F42B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000F03E0;
  sub_1000EB194();
  sub_1000EAD24();
  (*(v3 + 104))(v5, enum case for WeatherFormatPlaceholder.none(_:), v2);
  sub_1000E93A4();
  sub_1000E9394();
  v27 = v2;
  v28 = a1;
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v16 = v31;
  v17 = sub_1000E8304();
  v19 = v18;

  (*(v3 + 8))(v5, v27);
  (*(v33 + 8))(v7, v16);
  (*(v32 + 8))(v10, v8);
  *(v15 + 56) = &type metadata for String;
  v20 = sub_10007C984();
  *(v15 + 64) = v20;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v21 = sub_1000EB124();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v20;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22;
  v23 = sub_1000EBEB4();

  return v23;
}

uint64_t sub_10008C800@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000EA2C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_10008F2B0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1000EA694();
    return (*(*(v10 - 8) + 32))(a2, v9, v10);
  }

  else
  {
    sub_1000EC1A4();
    v12 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_10008CA08(uint64_t a1)
{
  v1 = sub_1000EA694();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008C800(v4);
  sub_1000EA594();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_10008CAF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
  v6 = sub_1000E8634();
  v7 = *(a1 + 16);
  sub_1000EA094();
  sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
  swift_getTupleTypeMetadata2();
  v24 = v5;
  v25 = v6;
  v26 = sub_1000EAC04();
  v27 = sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0, &protocol conformance descriptor for [A]);
  v28 = sub_1000865E4(&qword_100131018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000EAB44();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1000EAAE4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v19[-v13];
  v15 = *(a1 + 24);
  v20 = v7;
  v21 = v15;
  v22 = v2;
  sub_1000EAAD4();
  swift_getWitnessTable();
  v16 = *(v9 + 16);
  v16(v14, v12, v8);
  v17 = *(v9 + 8);
  v17(v12, v8);
  v16(a2, v14, v8);
  return (v17)(v14, v8);
}

uint64_t sub_10008CDE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v33 = a3;
  v34 = a4;
  v31 = a2;
  v32 = type metadata accessor for Column(0, a2, a3, a5);
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = v30 - v7;
  v9 = sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
  v30[3] = v9;
  v10 = sub_1000E8634();
  v30[2] = v10;
  sub_1000EA094();
  sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
  swift_getTupleTypeMetadata2();
  v11 = sub_1000EAC04();
  v30[0] = v11;
  v12 = sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0, &protocol conformance descriptor for [A]);
  v30[1] = v12;
  v13 = sub_1000865E4(&qword_100131018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v40 = v13;
  v14 = sub_1000EAB44();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v30 - v19;
  v36 = *a1;
  v21 = a1;
  v22 = v32;
  (*(v6 + 16))(v8, v21, v32);
  v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  (*(v6 + 32))(v24 + v23, v8, v22);

  WitnessTable = swift_getWitnessTable();
  sub_1000865E4(&qword_1001333F8, &type metadata accessor for DailyForecastViewModel, &protocol conformance descriptor for DailyForecastViewModel);
  sub_1000EAB34();
  v35 = WitnessTable;
  swift_getWitnessTable();
  v27 = *(v15 + 16);
  v27(v20, v18, v14);
  v28 = *(v15 + 8);
  v28(v18, v14);
  v27(v34, v20, v14);
  return (v28)(v20, v14);
}

uint64_t sub_10008D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v64 = a5;
  v67 = a1;
  v57 = sub_1000EB214();
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100002A10(&qword_100133400, &unk_1000F4F30) - 8;
  __chkstk_darwin(v56);
  v55 = &v51 - v8;
  v9 = sub_100002A10(&qword_1001312A8, &unk_1000F1D70);
  v10 = __chkstk_darwin(v9 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v65 = &v51 - v13;
  v14 = __chkstk_darwin(v12);
  v66 = &v51 - v15;
  v16 = *(a3 - 8);
  __chkstk_darwin(v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000EA094();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  (*(a2 + 24))(v67);
  v26 = v63;
  v28 = type metadata accessor for Column(0, a3, v63, v27);
  sub_10008CA08(v28);
  sub_1000EABC4();
  sub_1000EA944();
  v29 = a3;
  v30 = v65;
  (*(v16 + 8))(v18, v29);
  v74[2] = v26;
  v74[3] = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  v31 = *(v20 + 16);
  v62 = v25;
  v32 = v25;
  v33 = v54;
  v59 = v31;
  v31(v32, v23, v19);
  v34 = *(v20 + 8);
  v58 = v19;
  v63 = v20 + 8;
  v61 = v34;
  v34(v23, v19);
  v35 = v57;
  v36 = v66;
  (*(v33 + 16))(v66, v67, v57);
  sub_1000028A0(v36, 0, 1, v35);
  sub_100085400(*a2, v30);
  v37 = *(v56 + 56);
  v38 = v55;
  sub_10008F2B0();
  sub_10008F2B0();
  if (sub_100005B30(v38, 1, v35) == 1)
  {
    sub_100006850(v30, &qword_1001312A8, &unk_1000F1D70);
    sub_100006850(v36, &qword_1001312A8, &unk_1000F1D70);
    if (sub_100005B30(v38 + v37, 1, v35) == 1)
    {
      sub_100006850(v38, &qword_1001312A8, &unk_1000F1D70);
LABEL_9:
      v42 = 0;
      v41 = 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v39 = v38;
  v40 = v53;
  sub_10008F2B0();
  if (sub_100005B30(v39 + v37, 1, v35) == 1)
  {
    sub_100006850(v65, &qword_1001312A8, &unk_1000F1D70);
    sub_100006850(v66, &qword_1001312A8, &unk_1000F1D70);
    (*(v33 + 8))(v40, v35);
    v38 = v39;
LABEL_6:
    sub_100006850(v38, &qword_100133400, &unk_1000F4F30);
    goto LABEL_7;
  }

  v43 = v39 + v37;
  v44 = v52;
  (*(v33 + 32))(v52, v43, v35);
  sub_1000865E4(&qword_100131250, &type metadata accessor for DailyForecastViewModel, &protocol conformance descriptor for DailyForecastViewModel);
  v45 = sub_1000EBE24();
  v46 = *(v33 + 8);
  v46(v44, v35);
  sub_100006850(v65, &qword_1001312A8, &unk_1000F1D70);
  sub_100006850(v66, &qword_1001312A8, &unk_1000F1D70);
  v46(v40, v35);
  sub_100006850(v39, &qword_1001312A8, &unk_1000F1D70);
  if (v45)
  {
    goto LABEL_9;
  }

LABEL_7:
  v41 = 0;
  v42 = 0x4020000000000000;
LABEL_10:
  v47 = v62;
  v48 = v58;
  v59(v23, v62, v58);
  v71 = v42;
  v72 = 0;
  v73 = v41;
  v74[0] = v23;
  v74[1] = &v71;
  v70[0] = v48;
  v70[1] = sub_100002A10(&qword_1001338A0, &qword_1000F5408);
  v68 = WitnessTable;
  v69 = sub_10008F234();
  sub_100085194(v74, 2, v70);
  v49 = v61;
  v61(v47, v48);
  return v49(v23, v48);
}

uint64_t sub_10008DA20()
{
  sub_100026C9C();
  sub_100002A10(v1, v2);
  sub_1000069E4();
  v3 = sub_100019AC0();
  v4(v3);
  return v0;
}

uint64_t sub_10008DAF4()
{
  type metadata accessor for LargeDailyView(0);
  sub_10008F518();
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_1000EBC44();
  sub_1000069D0();
  (*(v6 + 8))(v5);
  v7 = type metadata accessor for DailyViewAttributes(0);
  sub_10008F6E8(v7);

  v8 = *(v2 + 88);
  v9 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F5EC(v9))
  {
    sub_1000326A0();
    (*(v10 + 8))(v5 + v8, v3);
  }

  if (!sub_10008F64C())
  {
    sub_1000326A0();
    (*(v11 + 8))(v5 + v2, v3);
  }

  sub_10008F760();

  v12 = *(v0 + 24);
  sub_1000EA774();
  sub_1000069D0();
  (*(v13 + 8))(v5 + v12);

  return _swift_deallocObject(v1);
}

uint64_t sub_10008DCD8()
{
  v0 = sub_10008F580();
  v1 = type metadata accessor for LargeDailyView(v0);
  sub_100032590(v1);
  sub_10008F6D0();
  v2 = sub_10008F530();

  return sub_100087348(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10008DD98(uint64_t a1)
{
  v2 = sub_1000EA014();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000EA164();
}

uint64_t sub_10008DEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    sub_100006A04();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = type metadata accessor for DailyViewAttributes(0);
      v11 = *(a3 + 24);
    }

    return sub_100005B30(a1 + v11, a2, v10);
  }
}

uint64_t sub_10008DF84(uint64_t result, char a2, int a3)
{
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    sub_10008F780();
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    sub_100006A04();
    if (*(v4 + 84) != v3)
    {
      type metadata accessor for DailyViewAttributes(0);
    }

    sub_100055F04();

    return sub_1000028A0(v5, v6, v7, v8);
  }

  return result;
}

void sub_10008E048(uint64_t a1)
{
  sub_100005F48();
  if (v1 <= 0x3F)
  {
    sub_10008EF18(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DailyViewAttributes(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008E128()
{
  sub_10008F774();
  if (v1 == v2)
  {
    return sub_100019B04(*v0);
  }

  v4 = v1;
  type metadata accessor for DailyViewAttributes(0);
  v5 = sub_10008F7A0();

  return sub_100005B30(v5, v4, v6);
}

void sub_10008E1B0(uint64_t a1, int a2)
{
  sub_10008F774();
  if (v4 == v5)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    type metadata accessor for DailyViewAttributes(0);
    sub_10008F7A0();
    sub_100055F04();

    sub_1000028A0(v6, v7, v8, v9);
  }
}

uint64_t sub_10008E224(uint64_t a1)
{
  result = type metadata accessor for DailyViewAttributes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008E2F0(uint64_t a1)
{
  result = type metadata accessor for DailyViewAttributes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008E4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_10008F580();
  v5 = v4(v3);
  sub_100009210(v5);
  v6 = sub_10008F530();

  return a3(v6);
}

unint64_t sub_10008E560()
{
  result = qword_1001337D0;
  if (!qword_1001337D0)
  {
    sub_100002ABC(&qword_10012EF00, &qword_1000F5320);
    sub_1000865E4(&qword_1001337D8, &type metadata accessor for ConditionImage, &protocol conformance descriptor for ConditionImage);
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001337D0);
  }

  return result;
}

uint64_t sub_10008E660(uint64_t (*a1)(void))
{
  v4 = a1(0);
  sub_100032590(v4);
  v6 = v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  sub_1000EBC44();
  sub_1000069D0();
  (*(v7 + 8))(v6);
  v8 = type metadata accessor for DailyViewAttributes(0);
  sub_10008F744(v8);

  v9 = *(v2 + 88);
  v10 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F60C(v10))
  {
    sub_1000326A0();
    (*(v11 + 8))(v6 + v9, v3);
  }

  if (!sub_10008F62C())
  {
    sub_1000326A0();
    (*(v12 + 8))(v6 + v2, v3);
  }

  return _swift_deallocObject(v1);
}

uint64_t sub_10008E810()
{
  type metadata accessor for LowTemperatureColumn(0);
  sub_10008F518();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_100006530(*v3, *(v3 + 8));
  v4 = *(v0 + 20);
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA3A4();
    sub_1000069D0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  sub_1000EBC44();
  sub_1000069D0();
  (*(v7 + 8))(v6);
  v8 = type metadata accessor for DailyViewAttributes(0);
  sub_10008F744(v8);

  v9 = *(v3 + 88);
  v10 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F60C(v10))
  {
    sub_1000326A0();
    (*(v11 + 8))(v6 + v9, v4);
  }

  if (!sub_10008F62C())
  {
    sub_1000326A0();
    (*(v12 + 8))(v6 + v3, v4);
  }

  return _swift_deallocObject(v1);
}

uint64_t sub_10008EA30()
{
  type metadata accessor for PrecipitationColumn(0);
  sub_10008F7AC();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = v4 + *(v0 + 28);
  sub_1000EBC44();
  sub_1000069D0();
  (*(v6 + 8))(v5);
  v7 = type metadata accessor for DailyViewAttributes(0);
  sub_10008F744(v7);

  v8 = *(v4 + 88);
  v9 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F60C(v9))
  {
    sub_1000326A0();
    (*(v10 + 8))(v5 + v8, v2);
  }

  if (!sub_10008F62C())
  {
    sub_1000326A0();
    (*(v11 + 8))(v5 + v4, v2);
  }

  return _swift_deallocObject(v1);
}

double sub_10008EBBC()
{
  v0 = sub_10008F580();
  v1 = type metadata accessor for PrecipitationColumn(v0);
  sub_100009210(v1);
  sub_10008F530();

  return sub_10008A7A8(v2);
}

void sub_10008EC74(uint64_t a1)
{
  sub_10008EF18(319, &qword_100130DC8, &type metadata accessor for DailyForecastViewModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10008EED0();
    if (v2 <= 0x3F)
    {
      sub_10008EF18(319, &unk_10012FEC0, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008ED9C()
{
  sub_10008F774();
  if (v1 == v3)
  {
    return sub_100019B04(*v0);
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
  v8 = v0 + *(v5 + 48);

  return sub_100005B30(v8, v6, v7);
}

void sub_10008EE34(uint64_t a1, int a2)
{
  sub_10008F774();
  if (v4 == v5)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    sub_100055F04();

    sub_1000028A0(v6, v7, v8, v9);
  }
}

unint64_t sub_10008EED0()
{
  result = qword_100133878;
  if (!qword_100133878)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100133878);
  }

  return result;
}

void sub_10008EF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10008F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Column(0, *(v5 + 16), *(v5 + 24), a4);
  sub_10008F7AC();
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  v8 = *(v4 + 56);
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA694();
    sub_1000069D0();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  return _swift_deallocObject(v5);
}

uint64_t sub_10008F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for Column(0, v5, v6, a4);
  sub_100009210(v7);
  v8 = sub_10008F530();

  return sub_10008D1E8(v8, v9, v5, v6, v10);
}

unint64_t sub_10008F234()
{
  result = qword_1001338A8;
  if (!qword_1001338A8)
  {
    sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001338A8);
  }

  return result;
}

uint64_t sub_10008F2B0()
{
  sub_100026C9C();
  sub_100002A10(v1, v2);
  sub_1000069E4();
  v3 = sub_100019AC0();
  v4(v3);
  return v0;
}

uint64_t sub_10008F338(uint64_t *a1)
{
  sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
  sub_1000E8634();
  sub_1000EA094();
  sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
  swift_getTupleTypeMetadata2();
  sub_1000EAC04();
  sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0, &protocol conformance descriptor for [A]);
  sub_1000865E4(&qword_100131018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000EAB44();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000EAAE4();
  return swift_getWitnessTable();
}

uint64_t sub_10008F4F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006988(a1, a2, a3, &unk_1000F53B8);
}

uint64_t sub_10008F540()
{

  return type metadata accessor for DailyViewAttributes(0);
}

uint64_t sub_10008F55C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006988(a1, a2, a3, &protocol conformance descriptor for VStack<A>);
}

double sub_10008F590()
{

  sub_1000EA734();
  return result;
}

uint64_t sub_10008F5EC(uint64_t a1)
{

  return sub_100005B30(v1 + v2, 1, a1);
}

uint64_t sub_10008F60C(uint64_t a1)
{

  return sub_100005B30(v1 + v2, 1, a1);
}

uint64_t sub_10008F62C()
{
  v4 = v0 + *(v1 + 92);

  return sub_100005B30(v4, 1, v2);
}

uint64_t sub_10008F64C()
{
  v4 = v0 + *(v1 + 92);

  return sub_100005B30(v4, 1, v2);
}

void sub_10008F66C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(v3 - 112) = a2;
  *(v3 - 104) = v2;
  *(v3 - 128) = a1;
}

void sub_10008F6B8()
{
  if (v2 > v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  **(v0 - 112) = v3;
}

double sub_10008F6E8(uint64_t a1)
{

  return result;
}

double sub_10008F704(uint64_t a1)
{
  sub_1000028A0(v1, 1, 1, a1);

  sub_1000EA744();
  return result;
}

double sub_10008F744(uint64_t a1)
{

  return result;
}

uint64_t sub_10008F7C0()
{

  return sub_1000EA754();
}

uint64_t sub_10008F7E0(uint64_t a1)
{
  sub_1000028A0(v1, 1, 1, a1);

  return sub_1000EA7E4();
}

double sub_10008F818()
{
  sub_1000058EC(v1, v2, v0 & 1);

  return result;
}

uint64_t sub_10008F850@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  v8 = __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v16 + 28), v15, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000DA94(v15, v12, type metadata accessor for WeatherDataViewModel);
    sub_10000DA34(v12, v10, type metadata accessor for WeatherDataViewModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10001B078(v10);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C(&qword_10012EB38);
      }

      v17 = sub_1000E9F64();
      sub_100008CB8(v17, qword_100145C10);
      v18 = sub_1000E9F44();
      v19 = sub_1000EC194();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Expected aggregate weather but got instant or sunriseSunset", v20, 2u);
      }

      sub_10001B078(v12);
      v21 = 1;
    }

    else
    {
      sub_10004130C();
      sub_10000DA94(v10, v6, v22);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C(&qword_10012EB38);
      }

      v23 = sub_1000E9F64();
      sub_100008CB8(v23, qword_100145C10);
      v24 = sub_1000E9F44();
      v25 = sub_1000EC1B4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Making AdaptiveConditions complication view model entry from aggregate weather", v26, 2u);
      }

      sub_10001B078(v12);
      sub_10004130C();
      sub_10000DA94(v6, a1, v27);
      v21 = 0;
    }
  }

  else if (*v15)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  return sub_1000028A0(a1, v21, 2, v3);
}

uint64_t sub_10008FBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EBA54();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 251)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 5)
      {
        return v9 - 4;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_1000EB504();
    v8 = a1 + *(a3 + 24);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_10008FCB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000EBA54();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 251)
    {
      *(a1 + *(a4 + 20)) = a2 + 4;
      return result;
    }

    v9 = sub_1000EB504();
    v10 = a1 + *(a4 + 24);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for DataDenseViewAttributes(uint64_t a1)
{
  result = qword_100133908;
  if (!qword_100133908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008FDC4(uint64_t a1)
{
  result = sub_1000EBA54();
  if (v2 <= 0x3F)
  {
    result = sub_1000EB504();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008FE50(uint64_t a1, __int128 *a2, void *a3, __int128 *a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  sub_10004E7EC(a2, v4 + 24);
  swift_unknownObjectWeakAssign();

  sub_10004E7EC(a4, v4 + 72);
  return v4;
}

void *sub_10008FEC8()
{

  sub_100009068((v0 + 24));
  swift_unknownObjectWeakDestroy();
  sub_100009068((v0 + 72));
  return v0;
}

uint64_t sub_10008FF00()
{
  sub_10008FEC8();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_10008FF58(uint64_t a1, void *a2)
{
  v69 = a2;
  v66 = sub_1000E8A14();
  sub_1000069E4();
  __chkstk_darwin(v4);
  sub_100006A10();
  v65 = v6 - v5;
  v7 = sub_100002A10(&qword_100132640, &unk_1000F3DE0);
  v8 = sub_100009210(v7);
  __chkstk_darwin(v8);
  v63 = &v53 - v9;
  v10 = sub_100002A10(&qword_100132648, &qword_1000F54A0);
  v11 = sub_100009210(v10);
  __chkstk_darwin(v11);
  v58 = &v53 - v12;
  sub_1000E8A64();
  sub_1000090D4();
  v67 = v14;
  v68 = v13;
  __chkstk_darwin(v13);
  sub_100006A10();
  v64 = v16 - v15;
  v17 = sub_100002A10(&qword_100133A00, &qword_1000F54A8);
  v18 = sub_100009210(v17);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  v61 = sub_1000E8A84();
  sub_1000090D4();
  v57 = v21;
  __chkstk_darwin(v22);
  sub_100006A10();
  v55 = v24 - v23;
  sub_1000E90A4();
  sub_1000090D4();
  v59 = v26;
  v60 = v25;
  __chkstk_darwin(v25);
  sub_100006A10();
  v29 = v28 - v27;
  v30 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  v31 = sub_100009210(v30);
  v32 = __chkstk_darwin(v31);
  v34 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v53 - v35;
  sub_1000E9D54();
  sub_100008DA8((v2 + 24), *(v2 + 48));
  v56 = v29;
  sub_1000E90E4();
  v62 = a1;
  sub_1000E9D34();
  v37 = sub_1000E9D74();
  if (sub_100005B30(v20, 1, v37) == 1)
  {
    sub_100008E48(v20, &qword_100133A00, &qword_1000F54A8);
  }

  else
  {
    sub_1000E9D64();
    (*(*(v37 - 8) + 8))(v20, v37);
  }

  v53 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    sub_1000272C0();
  }

  v40 = v55;
  sub_1000E8A74();
  v54 = v36;
  sub_10000EBC4(v36, v34, &qword_1001304C8, &qword_1000F3D70);
  v42 = v57;
  v41 = v58;
  v43 = v61;
  (*(v57 + 16))(v58, v40, v61);
  sub_1000028A0(v41, 0, 1, v43);
  sub_1000E9D44();
  v44 = sub_1000E8A44();
  sub_1000028A0(v63, 1, 1, v44);
  v70 = &_swiftEmptyArrayStorage;
  sub_100091C90();
  sub_100002A10(&qword_100132660, &qword_1000F3DF8);
  sub_10006B614();
  sub_1000EC3C4();
  v45 = v64;
  v46 = sub_1000E8A54();
  __chkstk_darwin(v46);
  v47 = v69;
  *(&v53 - 4) = v53;
  *(&v53 - 3) = v47;
  v48 = v56;
  v51 = v56;
  v52 = v45;
  sub_100002A10(&qword_100133A08, &qword_1000F54B0);
  swift_allocObject();
  v49 = sub_1000E9CB4();
  (*(v42 + 8))(v40, v43);
  sub_100008E48(v54, &qword_1001304C8, &qword_1000F3D70);
  (*(v67 + 8))(v45, v68);
  (*(v59 + 8))(v48, v60);
  return v49;
}

uint64_t sub_10009056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v63 = a8;
  v44 = a5;
  v46 = a4;
  v51 = a3;
  v43 = a2;
  v48 = a1;
  v64 = sub_100002A10(&qword_100133A10, &qword_1000F54B8);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v36 = &v36 - v9;
  v10 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v37 = &v36 - v11;
  v12 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v38 = &v36 - v13;
  v14 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  v56 = *(v14 - 8);
  v57 = v14;
  __chkstk_darwin(v14);
  v39 = &v36 - v15;
  v16 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  v54 = *(v16 - 8);
  v55 = v16;
  __chkstk_darwin(v16);
  v40 = &v36 - v17;
  v18 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v41 = &v36 - v19;
  v20 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  v49 = *(v20 - 8);
  v50 = v20;
  __chkstk_darwin(v20);
  v42 = &v36 - v21;
  v47 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v23 = &v36 - v22;
  v44 = *(v44 + 16);
  sub_1000E9084();
  sub_1000E9094();
  sub_1000E9064();
  sub_1000E9044();
  sub_1000E9024();
  sub_1000E9074();
  sub_1000E9054();
  sub_1000E9034();
  v24 = swift_allocObject();
  v25 = v48;
  v24[2] = a6;
  v24[3] = v25;
  v26 = v51;
  v24[4] = v43;
  v24[5] = v26;
  v24[6] = v46;
  sub_1000E88D4();
  v27 = a6;

  sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  sub_100002A10(&qword_100132670, &unk_1000F54E0);
  sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  sub_100002A10(&qword_10012F260, &unk_1000EF030);
  sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
  sub_100002A10(&qword_100132678, &qword_1000F54F0);
  sub_1000E8E04();
  v28 = v36;
  v29 = v42;
  v30 = v41;
  v31 = v40;
  v32 = v39;
  v33 = v38;
  v34 = v37;
  sub_1000E8BA4();

  (*(v62 + 8))(v28, v64);
  (*(v60 + 8))(v34, v61);
  (*(v58 + 8))(v33, v59);
  (*(v56 + 8))(v32, v57);
  (*(v54 + 8))(v31, v55);
  (*(v52 + 8))(v30, v53);
  (*(v49 + 8))(v29, v50);
  return (*(v45 + 8))(v23, v47);
}

uint64_t sub_100090C9C(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v130 = a6;
  v139 = a4;
  v140 = a3;
  v135 = a2;
  v142 = a1;
  v7 = sub_100002A10(&qword_100133A18, &qword_1000F54F8);
  __chkstk_darwin(v7 - 8);
  v9 = v93 - v8;
  v10 = sub_100002A10(&qword_100133A20, &unk_1000F5500);
  __chkstk_darwin(v10 - 8);
  v134 = (v93 - v11);
  v12 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v12 - 8);
  v133 = v93 - v13;
  v131 = sub_1000E8604();
  v14 = __chkstk_darwin(v131);
  v132 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v143 = (v93 - v16);
  v17 = sub_1000E9DF4();
  __chkstk_darwin(v17 - 8);
  v144 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1000E9DA4();
  v141 = *(v136 - 8);
  __chkstk_darwin(v136);
  v146 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100002A10(&qword_100133A28, &qword_1000F5510);
  v21 = __chkstk_darwin(v20);
  v137 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v138 = v93 - v24;
  v25 = __chkstk_darwin(v23);
  v145 = v93 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v93 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = v93 - v31;
  __chkstk_darwin(v30);
  v34 = v93 - v33;
  v35 = sub_100002A10(&qword_100133A30, &qword_1000F5518);
  __chkstk_darwin(v35);
  v37 = (v93 - v36);
  sub_10000EBC4(v142, v93 - v36, &qword_100133A30, &qword_1000F5518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a5(*v37);
  }

  else
  {
    v39 = v37;
    v40 = v34;
    sub_100091D4C(v39, v34);
    v129 = v34;
    sub_10000EBC4(v34, v32, &qword_100133A28, &qword_1000F5510);
    v130 = v20[12];
    v128 = v20[16];
    v127 = v20[20];
    v126 = v20[24];
    v125 = v20[28];

    v41 = v20[36];
    sub_1000E8DE4();
    v42 = sub_1000E8E04();
    v43 = *(v42 - 8);
    v44 = *(v43 + 8);
    v45 = v43 + 8;
    v116 = v42;
    v44(&v32[v41], v42);
    v117 = v45;
    v46 = v9;
    v118 = v44;
    sub_10000EBC4(v40, v29, &qword_100133A28, &qword_1000F5510);
    v124 = v20[12];
    v123 = v20[16];
    v122 = v20[20];
    v142 = v20[24];
    v121 = v20[28];

    v47 = v20[36];
    sub_1000E8D94();
    v44((v29 + v47), v42);
    sub_1000028A0(v133, 1, 1, v131);
    v48 = v135;
    [v135 coordinate];
    [v48 coordinate];
    v49 = sub_1000E9DD4();
    sub_1000028A0(v134, 1, 1, v49);
    v50 = sub_1000E9D84();
    sub_1000028A0(v46, 1, 1, v50);
    sub_1000E9DE4();
    sub_100008E48(&v121[v29], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v29 + v142, &qword_10012F260, &unk_1000EF030);
    v142 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    v51 = *(v142 - 8);
    v135 = *(v51 + 8);
    v132 = (v51 + 8);
    (v135)(v29 + v122, v142);
    v52 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
    v53 = *(v52 - 8);
    v54 = *(v53 + 8);
    v55 = v53 + 8;
    v114 = v52;
    v54(v29 + v123, v52);
    v115 = v55;
    v143 = v54;
    sub_100008E48(v29 + v124, &qword_10012F108, &qword_1000EEF10);
    v56 = sub_1000E88D4();
    v57 = *(v56 - 8);
    v58 = *(v57 + 8);
    v59 = v57 + 8;
    v131 = v56;
    v58(v29, v56);
    v133 = v59;
    v134 = v58;
    sub_100008E48(&v32[v125], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v32[v126], &qword_10012F260, &unk_1000EF030);
    (v135)(&v32[v127], v142);
    v54(&v32[v128], v52);
    sub_100008E48(&v32[v130], &qword_10012F108, &qword_1000EEF10);
    v58(v32, v56);
    v60 = v129;
    sub_10000EBC4(v129, v32, &qword_100133A28, &qword_1000F5510);
    v130 = v20[12];
    v128 = v20[16];
    v127 = v20[20];
    v126 = v20[24];
    v125 = v20[28];

    v61 = v20[36];
    v108 = sub_1000E8DC4();
    v107 = v62;
    v63 = v116;
    v64 = v118;
    v118(&v32[v61], v116);
    sub_10000EBC4(v60, v29, &qword_100133A28, &qword_1000F5510);
    v124 = v20[12];
    v123 = v20[16];
    v122 = v20[20];
    v120 = v20[24];
    v119 = v20[28];

    v65 = v20[36];
    v103 = sub_1000E8DD4();
    v102 = v66;
    v67 = v63;
    v64(v29 + v65, v63);
    v68 = v145;
    v121 = v32;
    sub_10000EBC4(v60, v145, &qword_100133A28, &qword_1000F5510);
    v113 = v20[12];
    v112 = v20[16];
    v111 = v20[20];
    v110 = v20[24];
    v109 = v20[28];

    v69 = v20[36];
    v99 = sub_1000E8DB4();
    v98 = v70;
    v71 = v67;
    v64(v68 + v69, v67);
    v72 = v60;
    v73 = v138;
    sub_10000EBC4(v60, v138, &qword_100133A28, &qword_1000F5510);
    v106 = v20[12];
    v105 = v20[16];
    v104 = v20[20];
    v101 = v20[24];
    v100 = v20[28];

    v74 = v20[36];
    v96 = sub_1000E8DA4();
    v93[1] = v75;
    v64(v73 + v74, v71);
    v76 = v64;
    v77 = v137;
    sub_10000EBC4(v72, v137, &qword_100133A28, &qword_1000F5510);
    v78 = v20[12];
    v97 = v20[16];
    v95 = v20[20];
    v94 = v20[24];
    v93[0] = v20[28];

    v79 = v20[36];
    sub_1000E8DF4();
    v76(v77 + v79, v71);
    sub_1000E9D94();
    sub_100008E48(v77 + v93[0], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v77 + v94, &qword_10012F260, &unk_1000EF030);
    v80 = v142;
    v81 = v135;
    (v135)(v77 + v95, v142);
    v82 = v114;
    v83 = v143;
    v143(v77 + v97, v114);
    sub_100008E48(v77 + v78, &qword_10012F108, &qword_1000EEF10);
    v84 = v29;
    v85 = v131;
    v134(v77, v131);
    sub_100008E48(v73 + v100, &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v73 + v101, &qword_10012F260, &unk_1000EF030);
    v81(v73 + v104, v80);
    v83(v73 + v105, v82);
    sub_100008E48(v73 + v106, &qword_10012F108, &qword_1000EEF10);
    v86 = v134;
    v134(v73, v85);
    v87 = v145;
    sub_100008E48(v145 + v109, &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v87 + v110, &qword_10012F260, &unk_1000EF030);
    v81(v87 + v111, v80);
    v143(v87 + v112, v82);
    sub_100008E48(v87 + v113, &qword_10012F108, &qword_1000EEF10);
    v88 = v131;
    v86(v87, v131);
    sub_100008E48(&v84[v119], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v84[v120], &qword_10012F260, &unk_1000EF030);
    v89 = v142;
    v81(&v84[v122], v142);
    v90 = v143;
    v143(&v84[v123], v82);
    sub_100008E48(&v84[v124], &qword_10012F108, &qword_1000EEF10);
    v86(v84, v88);
    v91 = v121;
    sub_100008E48(&v121[v125], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v91[v126], &qword_10012F260, &unk_1000EF030);
    v81(&v91[v127], v89);
    v90(&v91[v128], v82);
    sub_100008E48(&v91[v130], &qword_10012F108, &qword_1000EEF10);
    v86(v91, v88);
    v92 = v146;
    v140(v146);
    (*(v141 + 8))(v92, v136);
    return sub_100008E48(v129, &qword_100133A28, &qword_1000F5510);
  }
}

unint64_t sub_100091C90()
{
  result = qword_100132658;
  if (!qword_100132658)
  {
    sub_1000E8A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132658);
  }

  return result;
}

uint64_t sub_100091CF4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100091D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100133A28, &qword_1000F5510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB3C4();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_100091E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB3C4();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CurrentObservationViewModelFactory(uint64_t a1)
{
  result = qword_100133A90;
  if (!qword_100133A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100091EC4(uint64_t a1)
{
  result = sub_1000EB3C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100091F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v395 = a3;
  v397 = a2;
  v403 = a1;
  v384 = a4;
  v354 = sub_1000EB3C4();
  sub_1000090D4();
  v353 = v4;
  __chkstk_darwin(v5);
  sub_10004B3F0();
  sub_10000D4A0(v6);
  v358 = sub_1000E8814();
  sub_1000090D4();
  v357 = v7;
  __chkstk_darwin(v8);
  sub_10004B3F0();
  sub_10000D4C4(v9);
  v10 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
  v11 = sub_100009210(v10);
  __chkstk_darwin(v11);
  sub_10000D4C4(v334 - v12);
  v13 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  v14 = sub_100009210(v13);
  __chkstk_darwin(v14);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v15);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v16);
  sub_10000D56C();
  sub_10000D4C4(v17);
  v18 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  v19 = sub_100009210(v18);
  __chkstk_darwin(v19);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v20);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v21);
  sub_10000D56C();
  sub_10000D4A0(v22);
  v23 = sub_1000E9134();
  v24 = sub_100009210(v23);
  __chkstk_darwin(v24);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v25);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v26);
  sub_10000D56C();
  sub_10000D4A0(v27);
  v28 = sub_1000E9184();
  v29 = sub_100009210(v28);
  __chkstk_darwin(v29);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v30);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v31);
  sub_10000D56C();
  sub_10000D4A0(v32);
  sub_1000E9224();
  sub_1000090D4();
  v389 = v34;
  v390 = v33;
  __chkstk_darwin(v33);
  sub_10004B3F0();
  sub_10000D4C4(v35);
  v36 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v37 = sub_100009210(v36);
  __chkstk_darwin(v37);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v38);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v39);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v40);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v41);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v42);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v43);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v44);
  sub_10000D56C();
  sub_10000D4A0(v45);
  v46 = sub_1000EAF24();
  v47 = sub_100009210(v46);
  __chkstk_darwin(v47);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v48);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v49);
  sub_10000D56C();
  sub_10000D4C4(v50);
  v51 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v52 = sub_100009210(v51);
  __chkstk_darwin(v52);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v53);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v54);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v55);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v56);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v57);
  sub_10000D56C();
  sub_10000D4C4(v58);
  v396 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000326A0();
  __chkstk_darwin(v59);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v60);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v61);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v62);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v63);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v64);
  sub_10000D56C();
  sub_10000D4A0(v65);
  v382 = sub_1000E8C04();
  sub_1000090D4();
  v381 = v66;
  __chkstk_darwin(v67);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v68);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v69);
  v71 = v334 - v70;
  v72 = sub_1000E8634();
  v73 = sub_100009210(v72);
  __chkstk_darwin(v73);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v74);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v75);
  sub_10000D56C();
  sub_10000D4A0(v76);
  v380 = sub_1000E8C34();
  sub_1000090D4();
  v379 = v77;
  __chkstk_darwin(v78);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v79);
  sub_10000D56C();
  sub_10000D4A0(v80);
  sub_1000EAFC4();
  sub_1000090D4();
  v399 = v81;
  v400 = v82;
  __chkstk_darwin(v81);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v83);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v84);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v85);
  sub_10000D4D0();
  v394 = v86;
  sub_10004B6F4();
  __chkstk_darwin(v87);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v88);
  sub_10000D56C();
  sub_10000D4A0(v89);
  v90 = sub_1000E8604();
  sub_1000090D4();
  v92 = v91;
  __chkstk_darwin(v93);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v94);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v95);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v96);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v97);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v98);
  sub_10000D4D0();
  v392 = v99;
  sub_10004B6F4();
  __chkstk_darwin(v100);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v101);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v102);
  sub_10000D56C();
  sub_10000D4C4(v103);
  v387 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  sub_1000090D4();
  v386 = v104;
  __chkstk_darwin(v105);
  sub_10000D4C4(v334 - v106);
  v107 = sub_100002A10(&qword_100133AC8, &qword_1000F5550);
  v108 = sub_100009210(v107);
  __chkstk_darwin(v108);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v109);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v110);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v111);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v112);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v113);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v114);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v115);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v116);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v117);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v118);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v119);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v120);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v121);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v122);
  sub_10000D56C();
  v404 = v123;
  sub_10000921C();
  v402 = sub_1000E88D4();
  sub_1000090D4();
  v125 = v124;
  __chkstk_darwin(v126);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v127);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v128);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v129);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v130);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v131);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v132);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v133);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v134);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v135);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v136);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v137);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v138);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v139);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v140);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v141);
  v143 = v334 - v142;
  sub_1000E93A4();
  sub_1000E9394();
  v144 = sub_1000E9364();

  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v145 = sub_1000E9F64();
  v146 = sub_100008CB8(v145, qword_100145C10);
  v147 = v144;
  v391 = v146;
  v148 = sub_1000E9F44();
  v149 = sub_1000EC1B4();

  v150 = os_log_type_enabled(v148, v149);
  v401 = v143;
  v398 = v147;
  if (v150)
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v393 = v92;
    v153 = v152;
    v405 = v147;
    v406 = v152;
    *v151 = 136446210;
    sub_10004ADF0();
    v154 = v147;
    v147 = v90;
    v155 = v154;
    v156 = sub_1000EBEF4();
    v158 = v125;
    v159 = sub_1000E2E18(v156, v157, &v406);

    *(v151 + 4) = v159;
    v125 = v158;
    _os_log_impl(&_mh_execute_header, v148, v149, "Building current weather model from aggregate weather. - unit: %{public}s", v151, 0xCu);
    sub_100009068(v153);
    v160 = v153;
    v92 = v393;
    sub_100009194(v160);
    sub_100009194(v151);
  }

  v378 = v125;
  v161 = v125;
  sub_1000E8C64();
  v162 = v385;
  sub_1000E8C84();
  sub_10009572C();
  sub_1000E8874();
  sub_1000E91A4();
  v165 = *(v92 + 8);
  v164 = v92 + 8;
  v163 = v165;
  v397 = v90;
  v166 = v164;
  (v165)(v147, v90);
  sub_10006BB44();
  v167(v162, v387);
  if (!v395)
  {
    sub_100095788();
    sub_1000E88C4();
    sub_1000E8844();
    sub_1000EB3A4();
    sub_10006BB44();
    v178(v90, v380);
    sub_1000E8624();
    sub_100095788();
    v179 = v403;
    sub_1000E8C64();
    sub_1000E8874();
    v180 = sub_100095834();
    v163(v180);
    sub_10009572C();
    sub_1000E8C64();
    sub_1000E88B4();
    v181 = sub_10007CEA0();
    v163(v181);
    sub_1000E8BE4();
    sub_10006BB44();
    v182(v71, v382);
    sub_10009572C();
    sub_1000E8C64();
    sub_100095758();
    sub_1000E8854();
    v183 = sub_10007CEA0();
    v163(v183);
    sub_10009572C();
    sub_1000E8C64();
    sub_100095758();
    sub_1000E8864();
    v184 = sub_10007CEA0();
    v163(v184);
    v185 = v398;
    sub_1000EC234();
    v395 = v186;
    sub_100095800(v404, &v359);
    v187 = sub_1000E87C4();
    sub_1000956EC(v185);
    if (v188)
    {
      sub_100032054(v185, &qword_100133AC8, &qword_1000F5550);
      v237 = 1;
      v238 = v344;
      v179 = v371;
    }

    else
    {
      sub_100095770();
      sub_1000E87A4();
      sub_10009570C();
      v235 = sub_100095764();
      v236(v235);
      v237 = 0;
      v238 = v344;
    }

    v239 = v342;
    v240 = v378;
    v241 = sub_10009586C(v179, v237);
    sub_10009562C(v241, v239);
    if (sub_100005B30(v239, 1, v187) == 1)
    {
      sub_100032054(v239, &qword_100133AC8, &qword_1000F5550);
      v242 = 1;
      v166 = v370;
    }

    else
    {
      sub_10009577C();
      sub_1000E8794();
      sub_10009570C();
      (*(v243 + 8))(v239, v187);
      v242 = 0;
    }

    sub_1000957D0(v166, v242);
    v244(v369, v388);
    sub_10009572C();
    v245 = v403;
    sub_1000E8C64();
    sub_1000E8834();
    v246 = v402;
    (v163)(v240, v402);
    sub_10009572C();
    sub_1000E8C64();
    sub_100095758();
    sub_1000E8824();
    (v163)(v240, v246);
    sub_100095800(v404, &v360);
    sub_1000956EC(v245);
    if (v188)
    {
      sub_100032054(v245, &qword_100133AC8, &qword_1000F5550);
      v247 = sub_10009571C(&v391);
      sub_1000028A0(v247, v248, v249, v397);
    }

    else
    {
      sub_10009577C();
      sub_1000E87B4();
      sub_10009570C();
      v250 = sub_100095764();
      v251(v250);
      sub_1000E9214();
      sub_1000957F4();
      v252(v246);
    }

    v253 = v345;
    v254 = v343;
    sub_10009562C(v404, v343);
    sub_1000956EC(v254);
    if (v188)
    {
      sub_100032054(v254, &qword_100133AC8, &qword_1000F5550);
      v255 = sub_10009571C(&v392);
      sub_1000028A0(v255, v256, v257, v397);
    }

    else
    {
      sub_10009577C();
      sub_1000E87B4();
      sub_10009570C();
      v258 = sub_100095764();
      v259(v258);
      sub_1000E9204();
      (*(v389 + 8))(v246, v390);
    }

    v226 = v401;
    sub_1000E8894();
    sub_1000E8884();
    v260 = sub_1000E88A4();
    sub_100095818(v260);
    v261 = sub_1000E8D34();
    sub_1000956EC(v253);
    if (v188)
    {
      sub_100032054(v253, &qword_10012F260, &unk_1000EF030);
      v263 = 1;
    }

    else
    {
      sub_100094DB4();
      sub_10009570C();
      (*(v262 + 8))(v253, v261);
      v263 = 0;
    }

    v264 = sub_1000EB584();
    sub_1000028A0(v238, v263, 1, v264);
    v333 = v238;
    v332 = v374;
    v331 = v373;
    v330 = v372;
    sub_100095860();
    sub_1000957C0();
    sub_1000EB614();
    sub_1000957B0();
    v265(v388);
    v223 = v398;
    goto LABEL_69;
  }

  v168 = v392;
  sub_1000E8874();
  sub_100095770();
  v169 = sub_1000E8CA4();
  v170 = v334;
  __chkstk_darwin(v169);
  v332 = v168;
  result = sub_100095238(sub_100095218, &v330);
  v172 = result;
  v173 = result[2];
  v393 = v164;
  v365 = v163;
  if (v173)
  {
    v174 = v368;
    if (v173 >= v395)
    {
      v227 = v395 - 1;
      if (__OFSUB__(v395, 1))
      {
        __break(1u);
      }

      else
      {
        v228 = v341;
        v229 = v340;
        if (v227 < v173)
        {
          v230 = v367;
          (*(v357 + 16))(v367, result + ((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v227, v358);

          (*(v353 + 16))(v352, v383, v354);
          sub_1000E8804();
          sub_1000E87F4();
          sub_10009562C(v404, v229);
          v231 = sub_1000E87C4();
          sub_1000956EC(v229);
          if (v188)
          {
            sub_100032054(v229, &qword_100133AC8, &qword_1000F5550);
            v232 = sub_10009571C(&v365);
            sub_1000028A0(v232, v233, v234, v397);
          }

          else
          {
            sub_100095770();
            v230 = v229;
            sub_1000E87B4();
            sub_10009570C();
            (*(v266 + 8))(v229, v231);
            sub_100095854();
            sub_1000E9214();
            sub_1000957F4();
            v267(0);
          }

          sub_100095800(v404, &v354);
          sub_1000956EC(v230);
          if (v188)
          {
            sub_100032054(v230, &qword_100133AC8, &qword_1000F5550);
            sub_10000D52C();
            v274 = v397;
            sub_1000028A0(v268, v269, v270, v397);
          }

          else
          {
            sub_100095770();
            sub_1000E87B4();
            sub_10009570C();
            v271 = sub_100095764();
            v272(v271);
            sub_1000E9204();
            sub_1000957F4();
            v273(0);
            v274 = v397;
          }

          v275 = v347;
          v276 = v349;
          sub_1000E85E4();
          v277 = v228;
          v278 = &qword_1000EEF30;
          sub_100032054(v277, &qword_10012F048, &qword_1000EEF30);
          sub_100032054(v275, &qword_10012F048, &qword_1000EEF30);
          v365(v276, v274);
          v279 = v350;
          v280 = v352;
          sub_1000EB3A4();
          sub_10006BB44();
          v281(v279, v380);
          sub_10006BB44();
          v282(v280, v354);
          sub_1000E8624();
          sub_1000E87F4();
          sub_10009577C();
          sub_1000E8C64();
          sub_10009572C();
          sub_1000E88B4();
          v284 = *(v161 + 8);
          v283 = v161 + 8;
          v163 = v284;
          (v284)(v275, v402);
          sub_100095758();
          sub_1000E8BE4();
          sub_10006BB44();
          v285(&qword_1000EEF30, v382);
          sub_100095854();
          sub_1000E87D4();
          sub_1000E87E4();
          v286 = v398;
          sub_1000EC234();
          v288 = v287;
          sub_100095800(v404, &v355);
          sub_1000956EC(v286);
          if (v188)
          {
            sub_100032054(v286, &qword_100133AC8, &qword_1000F5550);
            v291 = 1;
            v278 = v346;
          }

          else
          {
            sub_10009572C();
            sub_1000E87A4();
            sub_10009570C();
            v289 = sub_100095764();
            v290(v289);
            v291 = 0;
          }

          v292 = v334[1];
          v293 = sub_10009586C(v278, v291);
          v294 = v339;
          sub_10009562C(v293, v339);
          sub_1000956EC(v294);
          v395 = v288;
          v295 = v404;
          if (v188)
          {
            sub_100032054(v294, &qword_100133AC8, &qword_1000F5550);
            v297 = 1;
            v294 = v336;
          }

          else
          {
            sub_10009572C();
            sub_1000E8794();
            sub_10009570C();
            (*(v296 + 8))(v294, v231);
            v297 = 0;
          }

          sub_1000957D0(v294, v297);
          v298(v351, v366);
          v299 = v403;
          sub_1000E8C64();
          sub_1000E8834();
          v300 = v402;
          (v163)(v292, v402);
          sub_100095770();
          sub_1000E8C64();
          sub_100095854();
          sub_1000E8824();
          (v163)(v292, v300);
          sub_100095800(v295, v356);
          v301 = sub_1000956EC(v299);
          if (v188)
          {
            sub_100032054(v299, &qword_100133AC8, &qword_1000F5550);
            v302 = sub_10009571C(&v366);
            sub_1000028A0(v302, v303, v304, v397);
          }

          else
          {
            sub_100095794(v301);
            sub_10009570C();
            v305 = sub_100095764();
            v306(v305);
            sub_100095848();
            sub_1000E9214();
            sub_1000957F4();
            v307(v283);
          }

          v308 = v335;
          sub_10009562C(v404, v335);
          v309 = sub_1000956EC(v308);
          v226 = v401;
          if (v188)
          {
            sub_100032054(v308, &qword_100133AC8, &qword_1000F5550);
            v310 = sub_10009571C(&v367);
            sub_1000028A0(v310, v311, v312, v397);
          }

          else
          {
            sub_100095794(v309);
            sub_10009570C();
            v313 = sub_100095764();
            v314(v313);
            sub_100095848();
            sub_1000E9204();
            (*(v389 + 8))(v283, v390);
          }

          v315 = v338;
          sub_100095854();
          sub_1000E8894();
          sub_1000E8884();
          v316 = sub_1000E88A4();
          sub_100095818(v316);
          v317 = sub_1000E8D34();
          sub_1000956EC(v315);
          if (v188)
          {
            sub_100032054(v315, &qword_10012F260, &unk_1000EF030);
            v320 = 1;
            v318 = v337;
          }

          else
          {
            v318 = v337;
            sub_100094DB4();
            sub_10009570C();
            (*(v319 + 8))(v315, v317);
            v320 = 0;
          }

          v321 = sub_1000EB584();
          sub_1000028A0(v318, v320, 1, v321);
          v333 = v318;
          v332 = v356[1];
          v331 = v356[0];
          v330 = v348;
          sub_100095860();
          sub_1000957C0();
          sub_1000EB614();
          sub_1000957B0();
          v322(v366);
          sub_10006BB44();
          v323(v367, v358);
          v212 = v397;
          v223 = v398;
          goto LABEL_68;
        }
      }

      __break(1u);
      return result;
    }

    v175 = sub_1000E9F44();
    v176 = sub_1000EC194();
    if (os_log_type_enabled(v175, v176))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&_mh_execute_header, v175, v176, "Invalid hour entry - falling back to current conditions", v170, 2u);
      sub_100009194(v170);
    }

    v177 = v398;
  }

  else
  {

    v177 = v398;
    v174 = v368;
  }

  sub_100095788();
  sub_1000E88C4();
  sub_1000E8844();
  sub_1000EB3A4();
  sub_10006BB44();
  v189(v172, v380);
  sub_1000E8624();
  sub_100095788();
  sub_1000E8C64();
  sub_1000E8874();
  v190 = sub_100095834();
  v163(v190);
  sub_10009577C();
  sub_1000E8C64();
  sub_10009572C();
  sub_1000E88B4();
  (v163)(v164, v172);
  sub_100095758();
  sub_1000E8BE4();
  sub_10006BB44();
  v191(v170, v382);
  sub_10009572C();
  sub_1000E8C64();
  sub_100095758();
  sub_1000E8854();
  v192 = sub_10007CEA0();
  v163(v192);
  sub_10009572C();
  sub_1000E8C64();
  sub_100095758();
  sub_1000E8864();
  v193 = sub_10007CEA0();
  v163(v193);
  v395 = sub_1000EC234();
  v388 = v194;
  sub_100095800(v404, v376);
  v195 = sub_1000E87C4();
  sub_100095738(v177);
  if (v188)
  {
    sub_100032054(v177, &qword_100133AC8, &qword_1000F5550);
    v197 = 1;
    v177 = v376[2];
  }

  else
  {
    sub_100095770();
    sub_1000E87A4();
    sub_1000326A0();
    (*(v196 + 8))(v177, v195);
    v197 = 0;
  }

  v198 = sub_10009586C(v177, v197);
  sub_10009562C(v198, v174);
  sub_100095738(v174);
  v199 = v404;
  if (v188)
  {
    sub_100032054(v174, &qword_100133AC8, &qword_1000F5550);
    v201 = 1;
    v177 = v362;
  }

  else
  {
    sub_100095770();
    sub_1000E8794();
    sub_1000326A0();
    (*(v200 + 8))(v174, v195);
    v201 = 0;
  }

  sub_1000957D0(v177, v201);
  v202(v375, v394);
  sub_100095788();
  sub_1000E8C64();
  sub_1000E8834();
  v203 = v402;
  (v163)(v172, v402);
  sub_100095788();
  sub_1000E8C64();
  sub_1000E8824();
  (v163)(v172, v203);
  sub_100095800(v199, v377);
  v204 = sub_100095738(v172);
  if (v188)
  {
    sub_100032054(v172, &qword_100133AC8, &qword_1000F5550);
    v205 = sub_10009571C(&v404);
    sub_1000028A0(v205, v206, v207, v397);
  }

  else
  {
    sub_100095794(v204);
    sub_1000326A0();
    (*(v208 + 8))(v172, v195);
    sub_100095848();
    sub_1000E9214();
    sub_1000957F4();
    v209(v161);
  }

  v210 = v361;
  sub_10009562C(v404, v361);
  v211 = sub_100095738(v210);
  v212 = v397;
  if (v188)
  {
    sub_100032054(v210, &qword_100133AC8, &qword_1000F5550);
    v213 = sub_10009571C(&v405);
    sub_1000028A0(v213, v214, v215, v212);
  }

  else
  {
    sub_100095794(v211);
    sub_1000326A0();
    (*(v216 + 8))(v210, v195);
    sub_100095848();
    sub_1000E9204();
    (*(v389 + 8))(v161, v390);
  }

  v217 = v364;
  sub_1000E8894();
  sub_1000E8884();
  v218 = sub_1000E88A4();
  sub_100095818(v218);
  v219 = sub_1000E8D34();
  sub_100095738(v217);
  if (v188)
  {
    sub_100032054(v217, &qword_10012F260, &unk_1000EF030);
    v222 = 1;
    v223 = v398;
    v220 = v363;
  }

  else
  {
    v220 = v363;
    sub_100094DB4();
    sub_1000326A0();
    (*(v221 + 8))(v217, v219);
    v222 = 0;
    v223 = v398;
  }

  v224 = sub_1000EB584();
  sub_1000028A0(v220, v222, 1, v224);
  v333 = v220;
  v332 = v377[4];
  v331 = v377[3];
  v330 = v377[2];
  sub_100095860();
  sub_1000957C0();
  sub_1000EB614();
  sub_1000957B0();
  v225(v394);
  v226 = v401;
LABEL_68:
  v365(v392, v212);
LABEL_69:
  v324 = sub_1000E9F44();
  v325 = sub_1000EC1B4();
  if (os_log_type_enabled(v324, v325))
  {
    v326 = swift_slowAlloc();
    *v326 = 0;
    sub_100009134(&_mh_execute_header, v327, v328, "Built current weather model from aggregate weather");
    v329 = v326;
    v226 = v401;
    sub_100009194(v329);
  }

  sub_100032054(v404, &qword_100133AC8, &qword_1000F5550);
  return (v163)(v226, v402);
}

uint64_t sub_100094574@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v1 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  v2 = sub_100009210(v1);
  __chkstk_darwin(v2);
  v101 = &v88 - v3;
  sub_10000921C();
  v4 = sub_1000E9134();
  v5 = sub_100009210(v4);
  __chkstk_darwin(v5);
  sub_10004B3F0();
  v99 = v6;
  sub_10000921C();
  v7 = sub_1000E9184();
  v8 = sub_100009210(v7);
  __chkstk_darwin(v8);
  sub_10004B3F0();
  v97 = v9;
  v10 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v11 = sub_100009210(v10);
  __chkstk_darwin(v11);
  sub_10000D45C();
  v104 = v12;
  sub_10004B6F4();
  __chkstk_darwin(v13);
  sub_10000D56C();
  v103 = v14;
  sub_10000921C();
  v15 = sub_1000EAF24();
  v16 = sub_100009210(v15);
  __chkstk_darwin(v16);
  sub_10004B3F0();
  v102 = v17;
  v18 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v19 = sub_100009210(v18);
  __chkstk_darwin(v19);
  sub_10000D45C();
  v98 = v20;
  sub_10004B6F4();
  __chkstk_darwin(v21);
  sub_10000D56C();
  v100 = v22;
  v23 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000326A0();
  __chkstk_darwin(v24);
  sub_10000D45C();
  v113 = v25;
  sub_10004B6F4();
  __chkstk_darwin(v26);
  sub_10000D56C();
  v112 = v27;
  sub_10000921C();
  v28 = sub_1000E8C04();
  sub_1000090D4();
  v30 = v29;
  __chkstk_darwin(v31);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000E8604();
  sub_1000326A0();
  __chkstk_darwin(v34);
  sub_10000D45C();
  v108 = v35;
  sub_10004B6F4();
  __chkstk_darwin(v36);
  sub_10000D56C();
  v107 = v37;
  sub_10000921C();
  v38 = sub_1000E8634();
  v39 = sub_100009210(v38);
  __chkstk_darwin(v39);
  sub_10004B3F0();
  v106 = v40;
  sub_10000921C();
  v93 = sub_1000E8C34();
  sub_1000090D4();
  v92 = v41;
  __chkstk_darwin(v42);
  sub_10004B3F0();
  sub_10000D4A0(v43);
  sub_1000EAFC4();
  sub_1000090D4();
  v110 = v45;
  v111 = v44;
  __chkstk_darwin(v44);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v46);
  sub_10000D56C();
  v109 = v47;
  sub_10000921C();
  sub_1000E93A4();
  sub_1000E9394();
  v48 = sub_1000E9364();

  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v49 = sub_1000E9F64();
  v50 = sub_100008CB8(v49, qword_100145C10);
  v51 = v48;
  v94 = v50;
  v52 = sub_1000E9F44();
  v53 = sub_1000EC1B4();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v90 = v28;
    v88 = v55;
    v114 = v51;
    v115 = v55;
    *v54 = 136446210;
    sub_10004ADF0();
    v89 = v23;
    v56 = v51;
    v57 = sub_1000EBEF4();
    v59 = v33;
    v60 = v51;
    v61 = v30;
    v62 = sub_1000E2E18(v57, v58, &v115);
    v23 = v89;

    *(v54 + 4) = v62;
    v30 = v61;
    v51 = v60;
    v33 = v59;
    _os_log_impl(&_mh_execute_header, v52, v53, "Building current weather model from instant weather. - unit: %{public}s", v54, 0xCu);
    v63 = v88;
    sub_100009068(v88);
    v64 = v63;
    v28 = v90;
    sub_100009194(v64);
    sub_100009194(v54);
  }

  v91 = v51;
  sub_10009577C();
  sub_1000E89A4();
  sub_1000E8904();
  v65 = v109;
  sub_1000EB3A4();
  sub_10006BB44();
  v66(v53, v93);
  sub_1000E8624();
  sub_1000E8954();
  sub_1000E8994();
  sub_1000E8BE4();
  (*(v30 + 8))(v33, v28);
  sub_1000E8914();
  sub_1000E8944();
  v93 = sub_1000EC234();
  v92 = v67;
  v68 = v100;
  sub_1000E8934();
  sub_1000028A0(v68, 0, 1, v23);
  v69 = v98;
  sub_1000E8924();
  sub_1000028A0(v69, 0, 1, v23);
  (*(v110 + 16))(v96, v65, v111);
  sub_1000E88F4();
  sub_1000E88E4();
  sub_10000D52C();
  v70 = v95;
  sub_1000028A0(v71, v72, v73, v95);
  sub_10000D52C();
  sub_1000028A0(v74, v75, v76, v70);
  sub_1000E8974();
  sub_1000E8964();
  sub_1000E8984();
  sub_1000EB584();
  sub_10000D52C();
  sub_1000028A0(v77, v78, v79, v80);
  sub_1000EB614();
  v81 = sub_1000E9F44();
  v82 = sub_1000EC1B4();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    sub_100009134(&_mh_execute_header, v84, v85, "Built current weather model from instant weather");
    sub_100009194(v83);
    sub_100095860();
  }

  else
  {
    v86 = v81;
    v81 = v91;
  }

  return (*(v110 + 8))(v109, v111);
}

uint64_t sub_100094DB4()
{
  v0 = sub_1000E8F64();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000E8E84();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v33 = sub_1000EB544();
  v10 = *(v33 - 8);
  v11 = __chkstk_darwin(v33);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v28 - v13);
  sub_1000E8D14();
  v15 = sub_1000E8E54();
  v16 = *(v4 + 8);
  v32 = v3;
  v30 = v16;
  v16(v9, v3);
  if (v15)
  {
    *v14 = sub_1000E8D04();
    v17 = &enum case for CurrentObservationViewModel.AirQuality.Value.number(_:);
  }

  else
  {
    sub_1000E8CF4();
    v18 = sub_1000E8F44();
    v20 = v19;
    (*(v28 + 8))(v2, v29);
    *v14 = v18;
    v14[1] = v20;
    v17 = &enum case for CurrentObservationViewModel.AirQuality.Value.category(_:);
  }

  (*(v10 + 104))(v14, *v17, v33);
  sub_1000E8D14();
  sub_1000E8E64();
  v22 = v21;
  v23 = v7;
  v24 = v32;
  v25 = v30;
  v30(v23, v32);
  if (!v22)
  {
    sub_1000E8D14();
    sub_1000E8E44();
    v25(v9, v24);
  }

  v26 = v33;
  (*(v10 + 16))(v31, v14, v33);
  sub_1000EB564();
  return (*(v10 + 8))(v14, v26);
}

uint64_t sub_10009512C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000E8604();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E87F4();
  v6 = sub_1000E8564();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void *sub_100095238(uint64_t (*a1)(char *), uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v38 = sub_1000E8814();
  v3 = *(v38 - 8);
  v4 = __chkstk_darwin(v38);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v33 = &v27 - v7;
  __chkstk_darwin(v6);
  v37 = &v27 - v8;
  v9 = sub_100002A10(&qword_100133AD0, &qword_1000F5558);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  sub_100002A10(&qword_100132670, &unk_1000F54E0);
  sub_10009569C(&qword_100133AD8, &protocol conformance descriptor for Forecast<A>);
  sub_1000EBFA4();
  v13 = *(v10 + 44);
  sub_10009569C(&qword_100133AE0, &protocol conformance descriptor for Forecast<A>);
  v36 = (v3 + 32);
  v28 = v3;
  v31 = (v3 + 8);
  v32 = (v3 + 16);
  v30 = &_swiftEmptyArrayStorage;
  while (1)
  {
    sub_1000EC124();
    if (*&v12[v13] == v39[0])
    {
      sub_100032054(v12, &qword_100133AD0, &qword_1000F5558);
      return v30;
    }

    v14 = sub_1000EC144();
    v15 = v33;
    v16 = v38;
    (*v32)(v33);
    v14(v39, 0);
    sub_1000EC134();
    v17 = v37;
    v18 = *v36;
    (*v36)(v37, v15, v16);
    v19 = v34(v17);
    if (v2)
    {
      break;
    }

    if (v19)
    {
      v18(v29, v37, v38);
      v20 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000AC980(0, v20[2] + 1, 1);
        v20 = v40;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000AC980((v22 > 1), v23 + 1, 1);
        v20 = v40;
      }

      v20[2] = v23 + 1;
      v24 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = v20;
      v18(v20 + v24 + *(v28 + 72) * v23, v29, v38);
    }

    else
    {
      (*v31)(v37, v38);
    }
  }

  (*v31)(v37, v38);
  sub_100032054(v12, &qword_100133AD0, &qword_1000F5558);
  v25 = v30;

  return v25;
}

uint64_t sub_10009562C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100133AC8, &qword_1000F5550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009569C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(&qword_100132670, &unk_1000F54E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100095794(uint64_t a1)
{

  return sub_1000E87B4();
}

uint64_t sub_100095800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_10009562C(a1, v3);
}

uint64_t sub_100095818(uint64_t a1)
{

  return sub_1000E8C74();
}

uint64_t sub_10009588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_100002A10(&qword_100133AE8, &qword_1000F55E8);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_100002A10(&qword_100133AF0, &qword_1000F55F0);
  sub_1000090D4();
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  sub_100002A10(&qword_100133AF8, &unk_1000F55F8);
  sub_1000090D4();
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v50 = &v49 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v56 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for AdaptiveConditionsContentView(0);
  sub_100095F88(&qword_100133B00, type metadata accessor for AdaptiveConditionsContentView, &unk_1000EFA40);
  sub_100095F88(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_100095FD0();
  sub_1000EA474();
  sub_1000058EC(v22, v24, a1 & 1);

  (*(v7 + 8))(v10, v5);
  v27 = sub_1000EA354();
  v31 = sub_100015CA8(v27, v28, v29, v30);
  v33 = v32;
  LOBYTE(v10) = v34;
  v56 = v5;
  v57 = v26;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v50;
  v36 = v51;
  sub_1000EA444();
  sub_1000058EC(v31, v33, v10 & 1);

  (*(v52 + 8))(v14, v36);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v38 = sub_1000EBC44();
  sub_1000090D4();
  v40 = v39;
  v42 = *(v41 + 72);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000F03E0;
  v45 = v44 + v43;
  v46 = *(v40 + 104);
  v46(v45, enum case for WidgetFamily.accessoryRectangular(_:), v38);
  v46(v45 + v42, enum case for WidgetFamily.accessoryInline(_:), v38);
  v56 = v36;
  v57 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  sub_1000EA454();

  return (*(v54 + 8))(v37, v47);
}

uint64_t sub_100095DC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AdaptiveConditionsContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100095E3C()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.AdaptiveConditionsComplication(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_100095F58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100095E3C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100095F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100095FD0()
{
  result = qword_100133B08;
  if (!qword_100133B08)
  {
    sub_100002ABC(&qword_100133AE8, &qword_1000F55E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B08);
  }

  return result;
}

uint64_t sub_100096038()
{
  sub_100002ABC(&qword_100133AF8, &unk_1000F55F8);
  sub_100002ABC(&qword_100133AF0, &qword_1000F55F0);
  sub_100002ABC(&qword_100133AE8, &qword_1000F55E8);
  sub_100095FD0();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000960FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_100002A10(&qword_100133B10, &qword_1000F56B8);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_100002A10(&qword_100133B18, &qword_1000F56C0);
  sub_1000090D4();
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  sub_100002A10(&qword_100133B20, &unk_1000F56C8);
  sub_1000090D4();
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v50 = &v49 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v56 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for MoonContentView(0);
  sub_100096720(&qword_100133B28, type metadata accessor for MoonContentView, &unk_1000F29E0);
  sub_100096720(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_100096768();
  sub_1000EA474();
  sub_1000058EC(v22, v24, a1 & 1);

  (*(v7 + 8))(v10, v5);
  v27 = sub_1000EA354();
  v31 = sub_100015CA8(v27, v28, v29, v30);
  v33 = v32;
  LOBYTE(v10) = v34;
  v56 = v5;
  v57 = v26;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v50;
  v36 = v51;
  sub_1000EA444();
  sub_1000058EC(v31, v33, v10 & 1);

  (*(v52 + 8))(v14, v36);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v38 = sub_1000EBC44();
  sub_1000090D4();
  v40 = v39;
  v42 = *(v41 + 72);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000F03E0;
  v45 = v44 + v43;
  v46 = *(v40 + 104);
  v46(v45, enum case for WidgetFamily.accessoryRectangular(_:), v38);
  v46(v45 + v42, enum case for WidgetFamily.accessoryInline(_:), v38);
  v56 = v36;
  v57 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  sub_1000EA454();

  return (*(v54 + 8))(v37, v47);
}

uint64_t sub_100096624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MoonContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000966E8@<X0>(void *a1@<X8>)
{
  result = sub_1000966A0();
  *a1 = 0xD000000000000029;
  a1[1] = v3;
  return result;
}

uint64_t sub_100096720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100096768()
{
  result = qword_100133B30;
  if (!qword_100133B30)
  {
    sub_100002ABC(&qword_100133B10, &qword_1000F56B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B30);
  }

  return result;
}

uint64_t sub_1000967D0()
{
  sub_100002ABC(&qword_100133B20, &unk_1000F56C8);
  sub_100002ABC(&qword_100133B18, &qword_1000F56C0);
  sub_100002ABC(&qword_100133B10, &qword_1000F56B8);
  sub_100096768();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000968AC(SEL *a1)
{
  if ([v1 respondsToSelector:*a1])
  {
    return sub_100031DF4(v1, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000968FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_100096910(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[10])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009694C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1000969B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE2B0 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000FE2D0 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001000FE2F0 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F43776F52656E6FLL && a2 == 0xEF6E6F697469646ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100096B20(char a1)
{
  result = 0x6F43776F52656E6FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_100096BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000969B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100096C04(uint64_t a1)
{
  v2 = sub_100098F28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096C40(uint64_t a1)
{
  v2 = sub_100098F28();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100096C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100013DC0();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_100002A10(&qword_100133B38, &qword_1000F57C0);
  sub_1000090D4();
  v36 = v35;
  sub_100009204();
  __chkstk_darwin(v37);
  sub_100019AE8();
  sub_100008DA8(v33, v33[3]);
  sub_100098F28();
  sub_10009B2D0();
  sub_1000EC6A4();
  a14 = v31;
  a13 = 0;
  sub_100098F7C();
  sub_10009B2A8(&a14);
  if (!v24)
  {
    a10 = BYTE4(v31);
    a11 = BYTE5(v31);
    a12 = BYTE6(v31);
    v39[2] = 1;
    sub_100098FD0();
    sub_10009B2A8(&a10);
    v39[0] = HIBYTE(v31);
    v39[1] = v29;
    v38[1] = 2;
    sub_100099024();
    sub_10009B2A8(v39);
    v38[0] = HIBYTE(v29);
    sub_100099078();
    sub_10009B2A8(v38);
  }

  (*(v36 + 8))(v25, v34);
  sub_100013DA8();
}

void sub_100096E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100013DC0();
  v22 = v21;
  v23 = sub_100002A10(&qword_100133B68, &qword_1000F57C8);
  sub_1000090D4();
  v25 = v24;
  sub_100009204();
  __chkstk_darwin(v26);
  sub_100060440();
  sub_10009B1D8();
  sub_100098F28();
  sub_100060434();
  sub_1000EC694();
  sub_1000990CC();
  sub_10009B268();
  sub_100099120();
  sub_10009B268();
  sub_100099174();
  sub_10009B268();
  sub_1000991C8();
  sub_10009B268();
  (*(v25 + 8))(v20, v23);
  sub_100009068(v22);
  sub_100013DA8();
}

uint64_t sub_100097090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957559 && a2 == 0xE400000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69566172746C75 && a2 == 0xEB0000000074656CLL;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6B694C736C656566 && a2 == 0xE900000000000065)
        {

          return 4;
        }

        else
        {
          v10 = sub_1000EC5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_10009724C(char a1)
{
  result = 0x7469706963657270;
  switch(a1)
  {
    case 1:
      result = 1684957559;
      break;
    case 2:
      result = 0x696C617551726961;
      break;
    case 3:
      result = 0x6F69566172746C75;
      break;
    case 4:
      result = 0x6B694C736C656566;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100097310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100013DC0();
  v72 = v26;
  v28 = v27;
  sub_100002A10(&qword_100133C80, &qword_1000F5D48);
  sub_1000090D4();
  v70 = v30;
  v71 = v29;
  sub_100009204();
  __chkstk_darwin(v31);
  sub_10000D58C();
  v69 = v32;
  sub_100002A10(&qword_100133C88, &qword_1000F5D50);
  sub_1000090D4();
  v67 = v34;
  v68 = v33;
  sub_100009204();
  __chkstk_darwin(v35);
  sub_10000D58C();
  v66 = v36;
  sub_100002A10(&qword_100133C90, &qword_1000F5D58);
  sub_1000090D4();
  v64 = v38;
  v65 = v37;
  sub_100009204();
  __chkstk_darwin(v39);
  sub_10000D58C();
  v63 = v40;
  sub_100002A10(&qword_100133C98, &qword_1000F5D60);
  sub_1000090D4();
  v61 = v42;
  v62 = v41;
  sub_100009204();
  __chkstk_darwin(v43);
  v45 = &v60 - v44;
  v46 = sub_100002A10(&qword_100133CA0, &qword_1000F5D68);
  sub_1000090D4();
  v60 = v47;
  sub_100009204();
  __chkstk_darwin(v48);
  v50 = &v60 - v49;
  v51 = sub_100002A10(&qword_100133CA8, &qword_1000F5D70);
  sub_1000090D4();
  v53 = v52;
  sub_100009204();
  __chkstk_darwin(v54);
  v56 = &v60 - v55;
  sub_100008DA8(v28, v28[3]);
  sub_10009A0D8();
  sub_1000EC6A4();
  switch(v72)
  {
    case 1:
      sub_10009B29C();
      sub_10009A228();
      sub_1000EC534();
      (*(v61 + 8))(v45, v62);
      break;
    case 2:
      sub_10009A1D4();
      v57 = v63;
      sub_10009B248(&type metadata for DataDenseTable.Condition.AirQualityCodingKeys);
      v59 = v64;
      v58 = v65;
      goto LABEL_6;
    case 3:
      sub_10009A180();
      v57 = v66;
      sub_10009B248(&type metadata for DataDenseTable.Condition.UltraVioletCodingKeys);
      v59 = v67;
      v58 = v68;
      goto LABEL_6;
    case 4:
      sub_10009A12C();
      v57 = v69;
      sub_10009B248(&type metadata for DataDenseTable.Condition.FeelsLikeCodingKeys);
      v59 = v70;
      v58 = v71;
LABEL_6:
      (*(v59 + 8))(v57, v58);
      break;
    default:
      sub_10009A27C();
      sub_10009B248(&type metadata for DataDenseTable.Condition.PrecipitationCodingKeys);
      (*(v60 + 8))(v50, v46);
      break;
  }

  (*(v53 + 8))(v56, v51);
  sub_100013DA8();
}

void sub_100097770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100013DC0();
  v91 = v26;
  v29 = v28;
  v90 = sub_100002A10(&qword_100133C20, &qword_1000F5D10);
  sub_1000090D4();
  v85 = v30;
  sub_100009204();
  __chkstk_darwin(v31);
  sub_10000D58C();
  v89 = v32;
  sub_100002A10(&qword_100133C28, &qword_1000F5D18);
  sub_1000090D4();
  v83 = v34;
  v84 = v33;
  sub_100009204();
  __chkstk_darwin(v35);
  sub_10000D58C();
  v87 = v36;
  sub_100002A10(&qword_100133C30, &qword_1000F5D20);
  sub_1000090D4();
  v81 = v38;
  v82 = v37;
  sub_100009204();
  __chkstk_darwin(v39);
  sub_10000D58C();
  v86 = v40;
  sub_100002A10(&qword_100133C38, &qword_1000F5D28);
  sub_1000090D4();
  v79 = v42;
  v80 = v41;
  sub_100009204();
  __chkstk_darwin(v43);
  sub_100019AE8();
  v44 = sub_100002A10(&qword_100133C40, &qword_1000F5D30);
  sub_1000090D4();
  v78 = v45;
  sub_100009204();
  __chkstk_darwin(v46);
  v48 = &v74 - v47;
  sub_100002A10(&qword_100133C48, &unk_1000F5D38);
  sub_1000090D4();
  v88 = v49;
  sub_100009204();
  __chkstk_darwin(v50);
  sub_100008DA8(v29, v29[3]);
  sub_10009A0D8();
  v51 = v91;
  sub_1000EC694();
  if (v51)
  {
    goto LABEL_8;
  }

  v75 = v44;
  v76 = v48;
  v77 = v27;
  v53 = v89;
  v52 = v90;
  v91 = v29;
  v54 = sub_1000EC524();
  sub_1000814FC(v54, 0);
  if (v56 == v57 >> 1)
  {
    goto LABEL_7;
  }

  if (v56 >= (v57 >> 1))
  {
    __break(1u);
    JUMPOUT(0x100097DD0);
  }

  v58 = *(v55 + v56);
  sub_1000814F8(v56 + 1);
  v60 = v59;
  v62 = v61;
  swift_unknownObjectRelease();
  if (v60 != v62 >> 1)
  {
LABEL_7:
    v64 = sub_1000EC414();
    swift_allocError();
    v66 = v65;
    sub_100002A10(&qword_10012F440, &unk_1000F19E0);
    *v66 = &unk_1001276D8;
    sub_1000EC4B4();
    sub_1000EC404();
    (*(*(v64 - 8) + 104))(v66, enum case for DecodingError.typeMismatch(_:), v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = sub_10009B2DC();
    v68(v67);
    v29 = v91;
LABEL_8:
    sub_100009068(v29);
    goto LABEL_9;
  }

  switch(v58)
  {
    case 1:
      sub_10009B29C();
      sub_10009A228();
      v69 = v77;
      sub_10009B228(&type metadata for DataDenseTable.Condition.WindCodingKeys);
      swift_unknownObjectRelease();
      v71 = v79;
      v70 = v80;
      goto LABEL_14;
    case 2:
      sub_10009A1D4();
      v69 = v86;
      sub_10009B228(&type metadata for DataDenseTable.Condition.AirQualityCodingKeys);
      swift_unknownObjectRelease();
      v71 = v81;
      v70 = v82;
      goto LABEL_14;
    case 3:
      sub_10009A180();
      v69 = v87;
      sub_10009B228(&type metadata for DataDenseTable.Condition.UltraVioletCodingKeys);
      swift_unknownObjectRelease();
      v71 = v83;
      v70 = v84;
LABEL_14:
      (*(v71 + 8))(v69, v70);
      break;
    case 4:
      sub_10009A12C();
      sub_1000EC4A4();
      swift_unknownObjectRelease();
      (*(v85 + 8))(v53, v52);
      break;
    default:
      sub_10009A27C();
      v63 = v76;
      sub_10009B228(&type metadata for DataDenseTable.Condition.PrecipitationCodingKeys);
      swift_unknownObjectRelease();
      (*(v78 + 8))(v63, v75);
      break;
  }

  v72 = sub_10009B2DC();
  v73(v72);
  sub_100009068(v91);
LABEL_9:
  sub_100013DA8();
}

uint64_t sub_100097DE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE310 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000FE330 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001000FE350 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001000FE370 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100097F48(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100097FC8(uint64_t a1, uint64_t a2)
{
  sub_10009B31C();
  sub_10009B2C0();
  sub_100002A10(&qword_100133BB0, &qword_1000F5CD0);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  sub_10006040C(v2);
  sub_100099EE0();
  sub_10009B2D0();
  sub_100060434();
  sub_1000EC6A4();
  v9[4] = v4;
  v9[3] = 0;
  sub_100099F34();
  sub_10006472C(&v9[4]);
  if (!v3)
  {
    sub_10009B288();
    sub_10006472C(&v9[2]);
    sub_10009B2E8();
    sub_10006472C(v9);
    v8 = HIBYTE(v4);
    sub_10006472C(&v8);
  }

  v6 = sub_100060450();
  v7(v6);
  sub_10009B308();
}

void sub_100098138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100013DC0();
  sub_10009B2FC();
  sub_100002A10(&qword_100133BF8, &qword_1000F5CF0);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v20);
  sub_100060440();
  sub_10009B1D8();
  sub_100099EE0();
  sub_10009B1FC(&type metadata for DataDenseTable.FourRowConditions.CodingKeys);
  sub_10009A084();
  sub_100064708();
  sub_10009B29C();
  sub_100064708();
  sub_100064708();
  sub_100064708();
  v21 = sub_10009B1C8();
  v22(v21);
  sub_100009068(v19);
  sub_100013DA8();
}

uint64_t sub_1000982E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE310 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000FE330 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001000FE350 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000EC5D4();

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

unint64_t sub_100098400(char a1)
{
  result = 0xD000000000000011;
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return result;
}

void sub_100098450(uint64_t a1, uint64_t a2)
{
  sub_10009B31C();
  sub_10009B2C0();
  sub_100002A10(&qword_100133BC8, &qword_1000F5CD8);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  sub_10006040C(v2);
  sub_100099F88();
  sub_10009B2D0();
  sub_100060434();
  sub_1000EC6A4();
  v8[4] = v4;
  v8[3] = 0;
  sub_100099F34();
  sub_10006472C(&v8[4]);
  if (!v3)
  {
    sub_10009B288();
    sub_10006472C(&v8[2]);
    sub_10009B2E8();
    sub_10006472C(v8);
  }

  v6 = sub_100060450();
  v7(v6);
  sub_10009B308();
}

void sub_100098594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100013DC0();
  sub_10009B2FC();
  sub_100002A10(&qword_100133C08, &qword_1000F5CF8);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v20);
  sub_100060440();
  sub_10009B1D8();
  sub_100099F88();
  sub_10009B1FC(&type metadata for DataDenseTable.ThreeRowConditions.CodingKeys);
  sub_10009A084();
  sub_100064708();
  sub_10009B29C();
  sub_100064708();
  sub_100064708();
  v21 = sub_10009B1C8();
  v22(v21);
  sub_100009068(v19);
  sub_100013DA8();
}

uint64_t sub_100098708(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE310 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000FE330 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1000987DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_100098810(uint64_t a1, uint64_t a2)
{
  sub_10009B31C();
  sub_10009B2C0();
  sub_100002A10(&qword_100133BD8, &qword_1000F5CE0);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  sub_10006040C(v2);
  sub_100099FDC();
  sub_10009B2D0();
  sub_100060434();
  sub_1000EC6A4();
  v9 = v4;
  v8[1] = 0;
  sub_100099F34();
  sub_10006472C(&v9);
  if (!v3)
  {
    sub_10009B288();
    sub_10006472C(v8);
  }

  v6 = sub_100060450();
  v7(v6);
  sub_10009B308();
}

void sub_100098934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10009B31C();
  sub_10009B2FC();
  sub_100002A10(&qword_100133C10, &qword_1000F5D00);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v4);
  sub_100060440();
  sub_10009B1D8();
  sub_100099FDC();
  sub_10009B1FC(&type metadata for DataDenseTable.TwoRowConditions.CodingKeys);
  sub_10009A084();
  sub_100064708();
  sub_10009B29C();
  sub_100064708();
  v5 = sub_10009B1C8();
  v6(v5);
  sub_100009068(v3);
  sub_10009B308();
}

uint64_t sub_100098A84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1000EC5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_100098B20(uint64_t a1, uint64_t a2)
{
  sub_10009B31C();
  v3 = v2;
  sub_100002A10(&qword_100133BE8, &qword_1000F5CE8);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v4);
  sub_100060440();
  sub_10006040C(v3);
  sub_10009A030();
  sub_100060434();
  sub_1000EC6A4();
  sub_100099F34();
  sub_1000EC594();
  v5 = sub_10009B1C8();
  v6(v5);
  sub_10009B308();
}

void sub_100098C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10009B31C();
  sub_10009B2FC();
  sub_100002A10(&qword_100133C18, &qword_1000F5D08);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100060440();
  sub_10009B1D8();
  sub_10009A030();
  sub_10009B1FC(&type metadata for DataDenseTable.OneRowCondition.CodingKeys);
  if (!v4)
  {
    sub_10009A084();
    sub_1000EC514();
    v6 = sub_10009B1C8();
    v7(v6);
  }

  sub_100009068(v3);
  sub_10009B308();
}

uint64_t sub_100098D54(uint64_t a1)
{
  v1 = sub_100002A10(&qword_100133CB0, &qword_1000F5D78);
  sub_1000090D4();
  v3 = v2;
  sub_100009204();
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = sub_10009B2DC();
  sub_100008DA8(v7, v8);
  sub_10009A2D0();
  sub_1000EC6A4();
  return (*(v3 + 8))(v6, v1);
}

unint64_t sub_100098F28()
{
  result = qword_100133B40;
  if (!qword_100133B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B40);
  }

  return result;
}

unint64_t sub_100098F7C()
{
  result = qword_100133B48;
  if (!qword_100133B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B48);
  }

  return result;
}

unint64_t sub_100098FD0()
{
  result = qword_100133B50;
  if (!qword_100133B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B50);
  }

  return result;
}

unint64_t sub_100099024()
{
  result = qword_100133B58;
  if (!qword_100133B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B58);
  }

  return result;
}

unint64_t sub_100099078()
{
  result = qword_100133B60;
  if (!qword_100133B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B60);
  }

  return result;
}

unint64_t sub_1000990CC()
{
  result = qword_100133B70;
  if (!qword_100133B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B70);
  }

  return result;
}

unint64_t sub_100099120()
{
  result = qword_100133B78;
  if (!qword_100133B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B78);
  }

  return result;
}

unint64_t sub_100099174()
{
  result = qword_100133B80;
  if (!qword_100133B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B80);
  }

  return result;
}

unint64_t sub_1000991C8()
{
  result = qword_100133B88;
  if (!qword_100133B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B88);
  }

  return result;
}

uint64_t sub_10009924C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000992D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000993A4);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000993D8(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1000993EC(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFC)
  {
    if ((a2 + 33554180) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 5;
  v3 = v4 - 5;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100099454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554180) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFB)
  {
    v3 = 0;
  }

  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 2) = (a2 - 252) >> 16;
    if (v3)
    {
      v4 = ((a2 - 252) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 4;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100099504(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[4])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100099540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10009958C(uint64_t a1)
{
  v2 = sub_10009A1D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000995C8(uint64_t a1)
{
  v2 = sub_10009A1D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099634(uint64_t a1)
{
  v2 = sub_10009A0D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099670(uint64_t a1)
{
  v2 = sub_10009A0D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000996AC(uint64_t a1)
{
  v2 = sub_10009A12C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000996E8(uint64_t a1)
{
  v2 = sub_10009A12C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100099724(uint64_t a1)
{
  v2 = sub_10009A27C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099760(uint64_t a1)
{
  v2 = sub_10009A27C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009979C(uint64_t a1)
{
  v2 = sub_10009A180();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000997D8(uint64_t a1)
{
  v2 = sub_10009A180();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100099814(uint64_t a1)
{
  v2 = sub_10009A228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099850(uint64_t a1)
{
  v2 = sub_10009A228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000998DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099904(uint64_t a1)
{
  v2 = sub_100099EE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099940(uint64_t a1)
{
  v2 = sub_100099EE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000999D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000982E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099A00(uint64_t a1)
{
  v2 = sub_100099F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099A3C(uint64_t a1)
{
  v2 = sub_100099F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100099AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099B24(uint64_t a1)
{
  v2 = sub_100099FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099B60(uint64_t a1)
{
  v2 = sub_100099FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100099B9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  sub_100098934(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_100099BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098A84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100099C18(uint64_t a1)
{
  v2 = sub_10009A030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099C54(uint64_t a1)
{
  v2 = sub_10009A030();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100099C90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_100098C34(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_100099CD8(uint64_t a1)
{
  v2 = sub_10009A2D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099D14(uint64_t a1)
{
  v2 = sub_10009A2D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100099D84()
{
  result = qword_100133B90;
  if (!qword_100133B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B90);
  }

  return result;
}

unint64_t sub_100099DDC()
{
  result = qword_100133B98;
  if (!qword_100133B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B98);
  }

  return result;
}

unint64_t sub_100099E34()
{
  result = qword_100133BA0;
  if (!qword_100133BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BA0);
  }

  return result;
}

unint64_t sub_100099E8C()
{
  result = qword_100133BA8;
  if (!qword_100133BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BA8);
  }

  return result;
}

unint64_t sub_100099EE0()
{
  result = qword_100133BB8;
  if (!qword_100133BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BB8);
  }

  return result;
}

unint64_t sub_100099F34()
{
  result = qword_100133BC0;
  if (!qword_100133BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BC0);
  }

  return result;
}

unint64_t sub_100099F88()
{
  result = qword_100133BD0;
  if (!qword_100133BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BD0);
  }

  return result;
}

unint64_t sub_100099FDC()
{
  result = qword_100133BE0;
  if (!qword_100133BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BE0);
  }

  return result;
}

unint64_t sub_10009A030()
{
  result = qword_100133BF0;
  if (!qword_100133BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BF0);
  }

  return result;
}

unint64_t sub_10009A084()
{
  result = qword_100133C00;
  if (!qword_100133C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C00);
  }

  return result;
}

unint64_t sub_10009A0D8()
{
  result = qword_100133C50;
  if (!qword_100133C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C50);
  }

  return result;
}

unint64_t sub_10009A12C()
{
  result = qword_100133C58;
  if (!qword_100133C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C58);
  }

  return result;
}

unint64_t sub_10009A180()
{
  result = qword_100133C60;
  if (!qword_100133C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C60);
  }

  return result;
}

unint64_t sub_10009A1D4()
{
  result = qword_100133C68;
  if (!qword_100133C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C68);
  }

  return result;
}

unint64_t sub_10009A228()
{
  result = qword_100133C70;
  if (!qword_100133C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C70);
  }

  return result;
}

unint64_t sub_10009A27C()
{
  result = qword_100133C78;
  if (!qword_100133C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C78);
  }

  return result;
}

unint64_t sub_10009A2D0()
{
  result = qword_100133CB8;
  if (!qword_100133CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CB8);
  }

  return result;
}

_BYTE *sub_10009A334(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x10009A400);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataDenseTable.OneRowCondition.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10009A524);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataDenseTable.TwoRowConditions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A628);
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

_BYTE *storeEnumTagSinglePayload for DataDenseTable.ThreeRowConditions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A72CLL);
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

_BYTE *sub_10009A76C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10009A838);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10009A874()
{
  result = qword_100133CC0;
  if (!qword_100133CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CC0);
  }

  return result;
}

unint64_t sub_10009A8CC()
{
  result = qword_100133CC8;
  if (!qword_100133CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CC8);
  }

  return result;
}

unint64_t sub_10009A924()
{
  result = qword_100133CD0;
  if (!qword_100133CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CD0);
  }

  return result;
}

unint64_t sub_10009A97C()
{
  result = qword_100133CD8;
  if (!qword_100133CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CD8);
  }

  return result;
}

unint64_t sub_10009A9D4()
{
  result = qword_100133CE0;
  if (!qword_100133CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CE0);
  }

  return result;
}

unint64_t sub_10009AA2C()
{
  result = qword_100133CE8;
  if (!qword_100133CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CE8);
  }

  return result;
}

unint64_t sub_10009AA84()
{
  result = qword_100133CF0;
  if (!qword_100133CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CF0);
  }

  return result;
}

unint64_t sub_10009AADC()
{
  result = qword_100133CF8;
  if (!qword_100133CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CF8);
  }

  return result;
}

unint64_t sub_10009AB34()
{
  result = qword_100133D00;
  if (!qword_100133D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D00);
  }

  return result;
}

unint64_t sub_10009AB8C()
{
  result = qword_100133D08;
  if (!qword_100133D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D08);
  }

  return result;
}

unint64_t sub_10009ABE4()
{
  result = qword_100133D10;
  if (!qword_100133D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D10);
  }

  return result;
}

unint64_t sub_10009AC3C()
{
  result = qword_100133D18;
  if (!qword_100133D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D18);
  }

  return result;
}

unint64_t sub_10009AC94()
{
  result = qword_100133D20;
  if (!qword_100133D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D20);
  }

  return result;
}

unint64_t sub_10009ACEC()
{
  result = qword_100133D28;
  if (!qword_100133D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D28);
  }

  return result;
}

unint64_t sub_10009AD44()
{
  result = qword_100133D30;
  if (!qword_100133D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D30);
  }

  return result;
}

unint64_t sub_10009AD9C()
{
  result = qword_100133D38;
  if (!qword_100133D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D38);
  }

  return result;
}

unint64_t sub_10009ADF4()
{
  result = qword_100133D40;
  if (!qword_100133D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D40);
  }

  return result;
}

unint64_t sub_10009AE4C()
{
  result = qword_100133D48;
  if (!qword_100133D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D48);
  }

  return result;
}

unint64_t sub_10009AEA4()
{
  result = qword_100133D50;
  if (!qword_100133D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D50);
  }

  return result;
}

unint64_t sub_10009AEFC()
{
  result = qword_100133D58;
  if (!qword_100133D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D58);
  }

  return result;
}

unint64_t sub_10009AF54()
{
  result = qword_100133D60;
  if (!qword_100133D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D60);
  }

  return result;
}

unint64_t sub_10009AFAC()
{
  result = qword_100133D68;
  if (!qword_100133D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D68);
  }

  return result;
}

unint64_t sub_10009B004()
{
  result = qword_100133D70;
  if (!qword_100133D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D70);
  }

  return result;
}

unint64_t sub_10009B05C()
{
  result = qword_100133D78;
  if (!qword_100133D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D78);
  }

  return result;
}

unint64_t sub_10009B0B4()
{
  result = qword_100133D80;
  if (!qword_100133D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D80);
  }

  return result;
}

unint64_t sub_10009B10C()
{
  result = qword_100133D88;
  if (!qword_100133D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D88);
  }

  return result;
}

unint64_t sub_10009B164()
{
  result = qword_100133D90;
  if (!qword_100133D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D90);
  }

  return result;
}

uint64_t sub_10009B1FC(uint64_t a1)
{

  return sub_1000EC694();
}

uint64_t sub_10009B228(uint64_t a1)
{

  return sub_1000EC4A4();
}

uint64_t sub_10009B248(uint64_t a1)
{

  return sub_1000EC534();
}

void *sub_10009B268()
{

  return sub_1000EC514();
}

uint64_t sub_10009B2A8(uint64_t a1)
{

  return sub_1000EC594();
}

uint64_t sub_10009B330(uint64_t a1)
{
  v2 = sub_10009B3AC(a1);
  v3 = sub_10009B458(a1);
  if (v2)
  {
    if (v3)
    {
      v4 = 6;
    }

    else
    {
      v4 = 1;
    }

    v5 = 2;
  }

  else if (v3)
  {
    v4 = 1;
    v5 = 6;
  }

  else
  {
    v6 = sub_10009B504(a1);
    if ((v6 & 0xFE) != 0)
    {
      v5 = v6;
    }

    else
    {
      v5 = 1;
    }

    v4 = 1;
  }

  return v5 | (v4 << 8);
}

BOOL sub_10009B3AC(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    v5 = *(type metadata accessor for EventViewModel(0) - 8);
    v2 = v4 + 1;
  }

  while (*(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4) != 2);
  return v3 != v4;
}

BOOL sub_10009B458(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    v5 = *(type metadata accessor for EventViewModel(0) - 8);
    v2 = v4 + 1;
  }

  while (*(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4) != 6);
  return v3 != v4;
}

uint64_t sub_10009B504(uint64_t a1)
{
  v33 = sub_1000E8734();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000E8754();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000E8604();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EventViewModel(0) - 8;
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = *(v10 + 72);
  v28 = enum case for Calendar.Component.hour(_:);
  v26 = (v2 + 8);
  v27 = (v2 + 104);
  v24 = (v6 + 8);
  v25 = (v4 + 8);
  v16 = v32;
  while (1)
  {
    sub_10000ACD0(v14, v12);
    v17 = *v12;
    sub_10000B874(v12);
    if ((v17 - 3) <= 2)
    {
      sub_1000E85F4();
      v18 = v29;
      sub_1000E8714();
      v19 = v33;
      (*v27)(v16, v28, v33);
      v20 = v15;
      v21 = sub_1000E8744();
      (*v26)(v16, v19);
      (*v25)(v18, v31);
      (*v24)(v8, v30);
      v22 = v21 <= 19;
      v15 = v20;
      if (!v22)
      {
        break;
      }
    }

    v14 += v15;
    if (!--v13)
    {
      return 0;
    }
  }

  return v17;
}

uint64_t sub_10009B858(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a2 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    sub_10000ACD0(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7);
    if (*v7 == a1)
    {
      break;
    }

    ++v8;
    sub_10000B874(v7);
  }

  v10 = sub_10009B984(v7);
  sub_10000B874(v7);
  return v10;
}

uint64_t sub_10009B984(_BYTE *a1)
{
  v2 = sub_1000E8684();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E86A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    sub_1000E8644();
    sub_1000E8694();
    (*(v7 + 8))(v9, v6);
    v10 = sub_1000E8674();
    (*(v3 + 8))(v5, v2);
    v11 = &a1[*(type metadata accessor for EventViewModel(0) + 40)];
    v12 = *v11;
    v13 = v11[1];

    if (v10)
    {

      sub_10009C080(1, v12, v13);
      v14 = sub_1000EC384();
      v16 = v15;

      sub_1000D135C(1uLL, v12, v13);
      v17 = sub_1000EC374();
      v19 = v18;

      v21[0] = v14;
      v21[1] = v16;

      v22._countAndFlagsBits = v17;
      v22._object = v19;
      sub_1000EBF44(v22);

      return v21[0];
    }
  }

  else
  {
    v12 = *&a1[*(type metadata accessor for EventViewModel(0) + 40)];
  }

  return v12;
}

uint64_t sub_10009BBDC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for EventViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a2 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    sub_10000ACD0(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7);
    if (*v7 == v3)
    {
      break;
    }

    ++v8;
    sub_10000B874(v7);
  }

  v11 = &v7[*(v4 + 44)];
  if (v11[1])
  {
    v10 = *v11;
  }

  else
  {
    v10 = sub_10009B984(v7);
  }

  sub_10000B874(v7);
  return v10;
}

uint64_t sub_10009BD30(__int16 a1, uint64_t a2)
{
  if (a1 == 1538)
  {
    return sub_10009BD48(a2);
  }

  else
  {
    return sub_10009BBDC(a1, a2);
  }
}

uint64_t sub_10009BD48(uint64_t a1)
{
  v2 = sub_10009BBDC(2u, a1);
  v4 = v3;
  v6 = sub_10009BBDC(6u, a1);
  v7 = v5;
  v8 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v10 = qword_100145E00;
      v15._countAndFlagsBits = 0x80000001000FE3C0;
      v16._countAndFlagsBits = 0x4025202E4025;
      v16._object = 0xE600000000000000;
      v17.value._countAndFlagsBits = 0;
      v17.value._object = 0;
      v11.super.isa = v10;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      sub_1000E8464(v16, v17, v11, v18, 0xD000000000000079, v15);

      sub_100002A10(&qword_100132C18, &unk_1000F42B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000F03E0;
      *(v12 + 56) = &type metadata for String;
      v13 = sub_10007C984();
      *(v12 + 32) = v2;
      *(v12 + 40) = v4;
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v13;
      *(v12 + 64) = v13;
      *(v12 + 72) = v6;
      *(v12 + 80) = v7;
      v6 = sub_1000EBE74();
    }

    else
    {
      v6 = v2;
    }
  }

  return v6;
}

uint64_t sub_10009BF2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5 >> 1;
    result = sub_10009C164(a4, result, a5 >> 1);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= a4)
    {
      sub_1000814F8(a4);
      sub_10009C1B0();
      swift_unknownObjectRelease();
      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009BFF8(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_10009C1B0();

      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009C080(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1000EBF34();
    v3 = sub_1000EBF84();

    return v3;
  }

  return result;
}

uint64_t sub_10009C164(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10009C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_10009C2AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for TemperatureContentView(uint64_t a1)
{
  result = qword_100133E88;
  if (!qword_100133E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009C3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001D3D8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000EBC44();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000EC1A4();
    v13 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10009C5B4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_100002A10(&qword_100133EC0, &unk_1000F6768);
  __chkstk_darwin(v20);
  v2 = &v18 - v1;
  v3 = sub_1000EBAA4();
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EB8B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EBC44();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v18 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_10009C3C4(&v18 - v14);
  v19 = v11;
  if ((*(v11 + 88))(v15, v10) == enum case for WidgetFamily.accessoryCircular(_:))
  {
    type metadata accessor for TemperatureContentView(0);
    sub_10007E2C8(v5);
    sub_1000EB8A4();
    (*(v7 + 16))(v2, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_10009C9CC(&qword_100133EC8, &type metadata accessor for TemperatureCircularContentView, &protocol conformance descriptor for TemperatureCircularContentView);
    sub_1000EA4A4();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1000EC3E4(65);
    v24._countAndFlagsBits = 0xD000000000000022;
    v24._object = 0x80000001000FB150;
    sub_1000EBF44(v24);
    v17 = v18;
    sub_10009C3C4(v18);
    sub_10009C9CC(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v25._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v25);

    (*(v19 + 8))(v17, v10);
    v26._object = 0x80000001000FE470;
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    sub_1000EBF44(v26);
    result = sub_1000EC464();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009C9CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10009CA18()
{
  result = qword_100133ED0;
  if (!qword_100133ED0)
  {
    sub_100002ABC(&qword_100133ED8, &qword_1000F6778);
    sub_10009CA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133ED0);
  }

  return result;
}

unint64_t sub_10009CA9C()
{
  result = qword_100133EE0;
  if (!qword_100133EE0)
  {
    sub_100002ABC(&qword_100133EE8, &unk_1000F6780);
    sub_10009C9CC(&qword_100133EC8, &type metadata accessor for TemperatureCircularContentView, &protocol conformance descriptor for TemperatureCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133EE0);
  }

  return result;
}

uint64_t sub_10009CB58@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v26 = sub_1000EA4E4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100006A10();
  v6 = v5 - v4;
  v7 = sub_1000EA344();
  __chkstk_darwin(v7 - 8);
  sub_100006A10();
  v27 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  sub_1000090D4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  sub_1000EA334();
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_1000EA324(v33);
  sub_1000EAA24();
  sub_1000EA304();

  v34._countAndFlagsBits = 623717664;
  v34._object = 0xE400000000000000;
  sub_1000EA324(v34);
  sub_1000EA364();
  sub_10004E774();
  v13 = sub_1000EA7F4();
  v15 = v14;
  v29 = v13;
  v30 = v14;
  v17 = v16 & 1;
  v31 = v16 & 1;
  v32 = v18;
  sub_1000EA4B4();
  sub_1000EA914();
  (*(v2 + 8))(v6, v26);
  sub_1000058EC(v13, v15, v17);

  sub_1000EA354();
  sub_10004E774();
  v19 = sub_1000EA7F4();
  v21 = v20;
  LOBYTE(v6) = v22;
  v29 = &type metadata for Text;
  v30 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_1000EA8C4();
  sub_1000058EC(v19, v21, v6 & 1);

  return (*(v9 + 8))(v12, v23);
}

uint64_t sub_10009CE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_10009CEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RainInlineContentView(uint64_t a1)
{
  result = qword_100133F48;
  if (!qword_100133F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10009CFA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RainInlineTruncateFallbackText(0);
  __chkstk_darwin(v4);
  sub_100006A10();
  v7 = v6 - v5;
  v8 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  __chkstk_darwin(v8 - 8);
  v10 = __src - v9;
  v11 = sub_1000EB504();
  (*(*(v11 - 8) + 16))(v7, v2, v11);
  sub_1000EA354();
  sub_10004E774();
  v12 = sub_1000EA7F4();
  v14 = v13;
  v16 = v15;
  sub_10009D454(&qword_100132908, type metadata accessor for RainInlineTruncateFallbackText, &unk_1000F41A0);
  sub_1000EA8C4();
  sub_1000058EC(v12, v14, v16 & 1);

  sub_10009D20C(v7);
  sub_1000EABC4();
  sub_1000EA0A4();
  sub_10009D268(v10, a1);
  v17 = sub_100002A10(&qword_100133F80, &unk_1000F6800);
  return memcpy((a1 + *(v17 + 36)), __src, 0x70uLL);
}

uint64_t sub_10009D20C(uint64_t a1)
{
  v2 = type metadata accessor for RainInlineTruncateFallbackText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009D268(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100132900, &qword_1000F7870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009D2DC()
{
  result = qword_100133F88;
  if (!qword_100133F88)
  {
    sub_100002ABC(&qword_100133F80, &unk_1000F6800);
    sub_10009D368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133F88);
  }

  return result;
}

unint64_t sub_10009D368()
{
  result = qword_100133F90;
  if (!qword_100133F90)
  {
    sub_100002ABC(&qword_100132900, &qword_1000F7870);
    sub_10009D454(&qword_100132908, type metadata accessor for RainInlineTruncateFallbackText, &unk_1000F41A0);
    sub_10009D454(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133F90);
  }

  return result;
}

uint64_t sub_10009D454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009D49C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v127 = a2;
  sub_1000EAFC4();
  sub_1000090D4();
  v116 = v6;
  v117 = v5;
  __chkstk_darwin(v5);
  sub_100006A10();
  v115 = v8 - v7;
  v9 = sub_10000921C();
  v128 = type metadata accessor for EventViewModel(v9);
  sub_1000069E4();
  __chkstk_darwin(v10);
  sub_100006A10();
  v118 = v12 - v11;
  v13 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  __chkstk_darwin(v13 - 8);
  sub_1000091AC();
  v112 = v14 - v15;
  __chkstk_darwin(v16);
  v119 = &v110 - v17;
  sub_10000921C();
  sub_1000EB504();
  sub_1000090D4();
  v124 = v19;
  v125 = v18;
  __chkstk_darwin(v18);
  sub_1000091AC();
  v113 = v20 - v21;
  __chkstk_darwin(v22);
  v24 = &v110 - v23;
  sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  sub_100009204();
  __chkstk_darwin(v25);
  v27 = &v110 - v26;
  v129 = sub_1000EBAF4();
  sub_1000090D4();
  v120 = v28;
  __chkstk_darwin(v29);
  sub_100006A10();
  v123 = (v31 - v30);
  v32 = sub_100002A10(&qword_100131010, &unk_1000F6870);
  __chkstk_darwin(v32 - 8);
  sub_1000091AC();
  v121 = v33 - v34;
  v36 = __chkstk_darwin(v35);
  v38 = &v110 - v37;
  __chkstk_darwin(v36);
  v126 = &v110 - v39;
  v40 = sub_10000921C();
  v41 = type metadata accessor for AggregateWeatherViewModel(v40);
  sub_1000069E4();
  __chkstk_darwin(v42);
  sub_100006A10();
  v45 = v44 - v43;
  if (qword_10012EB18 != -1)
  {
    swift_once();
  }

  v46 = sub_1000E9F64();
  v47 = sub_100008CB8(v46, qword_100145BB0);
  sub_10009FB40(a1, v45, type metadata accessor for AggregateWeatherViewModel);
  v122 = v47;
  v48 = sub_1000E9F44();
  v49 = sub_1000EC1B4();
  v50 = os_log_type_enabled(v48, v49);
  v114 = v24;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v111 = a1;
    v52 = v51;
    v53 = swift_slowAlloc();
    v110 = v3;
    v54 = v53;
    v130 = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    sub_1000E9A84();
    sub_10009FBA0(&qword_1001325E8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v55 = sub_1000EC5B4();
    v57 = v56;
    sub_1000A044C();
    v58 = sub_1000E2E18(v55, v57, &v130);

    *(v52 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v48, v49, "About to evaluate conditions for location=%{private,mask.hash}s", v52, 0x16u);
    sub_100009068(v54);
    sub_100009194(v54);
    v59 = v52;
    a1 = v111;
    sub_100009194(v59);
  }

  else
  {

    sub_1000A044C();
  }

  v60 = v126;
  sub_10009F61C(*(a1 + *(v41 + 44)), v126);
  sub_10000EBC4(a1 + *(v41 + 40), v27, &qword_1001309D8, &qword_1000F10F0);
  v61 = v129;
  v62 = sub_100005B30(v27, 1, v129);
  v63 = v125;
  v64 = v128;
  if (v62 == 1)
  {
    sub_100008E48(v27, &qword_1001309D8, &qword_1000F10F0);
    v65 = v124;
  }

  else
  {
    v66 = *(v120 + 32);
    v66(v123, v27, v61);
    sub_10000EBC4(v60, v38, &qword_100131010, &unk_1000F6870);
    if (sub_100005B30(v38, 1, v64) == 1)
    {
      sub_100008E48(v38, &qword_100131010, &unk_1000F6870);
      v67 = 0;
      v68 = 0;
    }

    else
    {
      v69 = &v38[*(v64 + 40)];
      v67 = *v69;
      v68 = v69[1];

      sub_1000A03FC();
      sub_10009F7F4(v38, v70);
    }

    v65 = v124;
    v71 = v119;
    sub_10007BEA4(a1, 0, v67, v68, v119);
    v72 = v71;

    if (sub_100005B30(v71, 1, v63) != 1)
    {
      v94 = *(v65 + 32);
      v95 = v114;
      v94(v114, v72, v63);
      v96 = sub_1000E9F44();
      v97 = sub_1000EC1B4();
      if (sub_100009178(v97))
      {
        v98 = sub_1000091BC();
        sub_1000091E0(v98);
        sub_100009134(&_mh_execute_header, v99, v100, "Detected precipitation. Returning .nextHourPrecipitation.");
        sub_100009194(v67);
      }

      sub_100008E48(v60, &qword_100131010, &unk_1000F6870);
      v101 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
      v102 = v127;
      v94(v127, v95, v63);
      v66(v102 + v101, v123, v129);
      type metadata accessor for ConditionState(0);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v120 + 8))(v123, v129);
    sub_100008E48(v71, &qword_10012FBC0, &unk_1000F6860);
    v64 = v128;
  }

  v73 = v121;
  sub_10000EBC4(v60, v121, &qword_100131010, &unk_1000F6870);
  if (sub_100005B30(v73, 1, v64) == 1)
  {
    sub_100008E48(v73, &qword_100131010, &unk_1000F6870);
    v74 = v115;
    sub_1000EB664();
    v75 = sub_1000EAF94();
    (*(v116 + 8))(v74, v117);
    if (v75)
    {
LABEL_17:
      v77 = sub_1000E9F44();
      v78 = sub_1000EC1B4();
      if (sub_100009178(v78))
      {
        v79 = sub_1000091BC();
        sub_1000091E0(v79);
        sub_100009134(&_mh_execute_header, v80, v81, "Detected no special condition. Returning .normal.");
        sub_100009194(v74);
      }

      sub_100008E48(v60, &qword_100131010, &unk_1000F6870);
      type metadata accessor for ConditionState(0);
      return swift_storeEnumTagMultiPayload();
    }

    v76 = v112;
    sub_100077014(a1, 1, 6, v112, 0.6);
    if (sub_100005B30(v76, 1, v63) == 1)
    {
      sub_100008E48(v76, &qword_10012FBC0, &unk_1000F6860);
      goto LABEL_17;
    }

    v103 = *(v65 + 32);
    v103(v113, v76, v63);
    v104 = sub_1000E9F44();
    v105 = sub_1000EC1B4();
    if (sub_100009178(v105))
    {
      v106 = sub_1000091BC();
      sub_1000091E0(v106);
      sub_100009134(&_mh_execute_header, v107, v108, "Detected precipitation within six hours. Returning .precipitationWithinSixHours.");
      sub_100009194(v74);
    }

    sub_100008E48(v60, &qword_100131010, &unk_1000F6870);
    v103(v127, v113, v63);
    type metadata accessor for ConditionState(0);
  }

  else
  {
    v82 = v118;
    sub_10009F9E4(v73, v118, type metadata accessor for EventViewModel);
    v83 = sub_1000E9F44();
    v84 = sub_1000EC1B4();
    if (sub_100009178(v84))
    {
      v85 = sub_1000091BC();
      sub_1000091E0(v85);
      sub_100009134(&_mh_execute_header, v86, v87, "Detected an alert. Returning .alert.");
      v88 = v64;
      v64 = v128;
      sub_100009194(v88);
    }

    sub_100008E48(v60, &qword_100131010, &unk_1000F6870);
    v89 = (v82 + *(v64 + 40));
    v91 = *v89;
    v90 = v89[1];

    sub_1000A03FC();
    sub_10009F7F4(v82, v92);
    v93 = v127;
    *v127 = v91;
    v93[1] = v90;
    type metadata accessor for ConditionState(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10009DECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001000FC0F0 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x80000001000FE500 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_10009E028(char a1)
{
  result = 0x7472656C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x6C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009E0C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10009E180(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_10009E198(void *a1)
{
  v71 = sub_100002A10(&qword_100134138, &qword_1000F6910);
  sub_1000090D4();
  v69 = v2;
  sub_100009204();
  __chkstk_darwin(v3);
  sub_10000D58C();
  v68 = v4;
  sub_100002A10(&qword_100134140, &qword_1000F6918);
  sub_1000090D4();
  v72 = v6;
  v73 = v5;
  sub_100009204();
  __chkstk_darwin(v7);
  sub_10000D58C();
  v70 = v8;
  sub_100002A10(&qword_100134148, &qword_1000F6920);
  sub_1000090D4();
  v75 = v10;
  v76 = v9;
  sub_100009204();
  __chkstk_darwin(v11);
  sub_10000D58C();
  v74 = v12;
  sub_10000921C();
  v82 = sub_1000EBAF4();
  sub_1000090D4();
  v77 = v13;
  __chkstk_darwin(v14);
  sub_100006A10();
  v79 = v16 - v15;
  sub_10000921C();
  sub_1000EB504();
  sub_1000090D4();
  v80 = v18;
  v81 = v17;
  __chkstk_darwin(v17);
  sub_1000091AC();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v78 = &v66 - v23;
  v24 = sub_100002A10(&qword_100134150, &qword_1000F6928);
  sub_1000090D4();
  v67 = v25;
  sub_100009204();
  __chkstk_darwin(v26);
  v28 = &v66 - v27;
  type metadata accessor for ConditionState(0);
  sub_1000069E4();
  __chkstk_darwin(v29);
  sub_100006A10();
  v32 = v31 - v30;
  sub_100002A10(&qword_100134158, &qword_1000F6930);
  sub_1000090D4();
  v84 = v34;
  v85 = v33;
  sub_100009204();
  __chkstk_darwin(v35);
  sub_100008DA8(a1, a1[3]);
  sub_10009F93C();
  sub_1000EC6A4();
  sub_10009FB40(v83, v32, type metadata accessor for ConditionState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v50 = *(sub_100002A10(&qword_100132870, &qword_1000F4050) + 48);
      v51 = v80;
      v52 = v81;
      (*(v80 + 32))(v78, v32, v81);
      v53 = v77;
      (*(v77 + 32))(v79, v32 + v50, v82);
      v90 = 1;
      sub_10009FA98();
      v54 = v85;
      sub_1000EC534();
      v89 = 0;
      sub_1000A03BC();
      sub_10009FBA0(v55, v56, &protocol conformance descriptor for RainInlineContentViewModel);
      v57 = v86;
      sub_1000EC594();
      if (v57)
      {
        v58 = sub_1000A04B4();
        v59(v58);
        (*(v53 + 8))(v79, v82);
        (*(v51 + 8))(v78, v52);
      }

      else
      {
        v60 = v51;
        v88 = 1;
        sub_1000A0414();
        sub_10009FBA0(v61, v62, &protocol conformance descriptor for NextHourPrecipitationChartViewModel);
        v63 = v79;
        sub_1000EC594();
        v64 = sub_1000A04B4();
        v65(v64);
        (*(v77 + 8))(v63, v82);
        (*(v60 + 8))(v78, v52);
      }

      v37 = sub_1000A0480();
      v39 = v54;
      return v38(v37, v39);
    case 2u:
      v41 = v80;
      v40 = v81;
      (*(v80 + 32))(v21, v32, v81);
      v91 = 2;
      sub_10009FA44();
      v42 = v70;
      sub_1000A04DC(&type metadata for ConditionState.PrecipitationWithinSixHoursCodingKeys);
      sub_1000A03BC();
      sub_10009FBA0(v43, v44, &protocol conformance descriptor for RainInlineContentViewModel);
      v45 = v73;
      sub_1000EC594();
      (*(v72 + 8))(v42, v45);
      (*(v41 + 8))(v21, v40);
      v37 = sub_1000A0480();
      v39 = v32;
      return v38(v37, v39);
    case 3u:
      v92 = 3;
      sub_10009F990();
      v46 = v68;
      sub_1000A04DC(&type metadata for ConditionState.NormalCodingKeys);
      (*(v69 + 8))(v46, v71);
      v47 = sub_1000A0480();
      return v48(v47, v32);
    default:
      v87 = 0;
      sub_10009FAEC();
      v36 = v85;
      sub_1000EC534();
      sub_1000EC564();

      (*(v67 + 8))(v28, v24);
      v37 = sub_1000A0480();
      v39 = v36;
      return v38(v37, v39);
  }
}

uint64_t sub_10009E960@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  sub_100002A10(&qword_1001340E0, &qword_1000F68E0);
  sub_1000090D4();
  v98 = v4;
  v99 = v3;
  sub_100009204();
  __chkstk_darwin(v5);
  sub_10000D58C();
  v104 = v6;
  sub_100002A10(&qword_1001340E8, &qword_1000F68E8);
  sub_1000090D4();
  v100 = v8;
  v101 = v7;
  sub_100009204();
  __chkstk_darwin(v9);
  sub_10000D58C();
  v105 = v10;
  v109 = sub_100002A10(&qword_1001340F0, &qword_1000F68F0);
  sub_1000090D4();
  v102 = v11;
  sub_100009204();
  __chkstk_darwin(v12);
  sub_10000D58C();
  v106 = v13;
  sub_100002A10(&qword_1001340F8, &qword_1000F68F8);
  sub_1000090D4();
  v96 = v15;
  v97 = v14;
  sub_100009204();
  __chkstk_darwin(v16);
  sub_10000D58C();
  v103 = v17;
  v110 = sub_100002A10(&qword_100134100, &unk_1000F6900);
  sub_1000090D4();
  v108 = v18;
  sub_100009204();
  __chkstk_darwin(v19);
  v21 = &v92 - v20;
  v22 = type metadata accessor for ConditionState(0);
  sub_1000069E4();
  __chkstk_darwin(v23);
  sub_1000091AC();
  v26 = v24 - v25;
  v28 = __chkstk_darwin(v27);
  v30 = &v92 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v92 - v32;
  __chkstk_darwin(v31);
  v35 = &v92 - v34;
  v36 = a1[3];
  v111 = a1;
  sub_100008DA8(a1, v36);
  sub_10009F93C();
  v37 = v112;
  sub_1000EC694();
  if (v37)
  {
    goto LABEL_8;
  }

  v93 = v33;
  v94 = v26;
  v95 = v30;
  v38 = v110;
  v112 = v35;
  v39 = sub_1000EC524();
  sub_1000814FC(v39, 0);
  if (v41 == v42 >> 1)
  {
    goto LABEL_7;
  }

  v92 = 0;
  if (v41 >= (v42 >> 1))
  {
    __break(1u);
    JUMPOUT(0x10009F324);
  }

  v43 = *(v40 + v41);
  sub_1000814F8(v41 + 1);
  v45 = v44;
  v47 = v46;
  swift_unknownObjectRelease();
  if (v45 != v47 >> 1)
  {
LABEL_7:
    v51 = v21;
    v52 = v38;
    v53 = v108;
    v54 = sub_1000EC414();
    swift_allocError();
    v56 = v55;
    sub_100002A10(&qword_10012F440, &unk_1000F19E0);
    *v56 = v22;
    sub_1000EC4B4();
    sub_1000EC404();
    (*(*(v54 - 8) + 104))(v56, enum case for DecodingError.typeMismatch(_:), v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v51, v52);
LABEL_8:
    v57 = v111;
    return sub_100009068(v57);
  }

  v48 = v107;
  switch(v43)
  {
    case 1:
      v116 = 1;
      sub_10009FA98();
      sub_1000A042C(&type metadata for ConditionState.NextHourPrecipitationCodingKeys);
      sub_1000EB504();
      v115 = 0;
      sub_1000A03BC();
      sub_10009FBA0(v66, v67, &protocol conformance descriptor for RainInlineContentViewModel);
      v68 = v95;
      sub_1000EC514();
      v105 = v21;
      sub_100002A10(&qword_100132870, &qword_1000F4050);
      sub_1000EBAF4();
      v114 = 1;
      sub_1000A0414();
      sub_10009FBA0(v84, v85, &protocol conformance descriptor for NextHourPrecipitationChartViewModel);
      v86 = v109;
      sub_1000EC514();
      swift_unknownObjectRelease();
      v87 = sub_1000A0490();
      v88(v87, v86);
      sub_1000A0474();
      v89(v105, v110);
      swift_storeEnumTagMultiPayload();
      sub_1000A03D4();
      v81 = v112;
      sub_10009F9E4(v68, v112, v90);
      v83 = v111;
      break;
    case 2:
      v117 = 2;
      sub_10009FA44();
      sub_1000A042C(&type metadata for ConditionState.PrecipitationWithinSixHoursCodingKeys);
      v59 = v21;
      sub_1000EB504();
      sub_1000A03BC();
      sub_10009FBA0(v60, v61, &protocol conformance descriptor for RainInlineContentViewModel);
      v62 = v94;
      sub_1000EC514();
      swift_unknownObjectRelease();
      v69 = sub_1000A04C8();
      v70(v69);
      sub_1000A0474();
      v71(v59, v110);
      swift_storeEnumTagMultiPayload();
      sub_1000A03D4();
      v81 = v112;
      sub_10009F9E4(v62, v112, v72);
      v83 = v111;
      v48 = v107;
      break;
    case 3:
      v118 = 3;
      sub_10009F990();
      v63 = v104;
      sub_1000A042C(&type metadata for ConditionState.NormalCodingKeys);
      swift_unknownObjectRelease();
      (*(v98 + 8))(v63, v99);
      v64 = sub_1000A03EC();
      v65(v64, v38);
      v81 = v112;
      swift_storeEnumTagMultiPayload();
      v83 = v111;
      break;
    default:
      v113 = 0;
      sub_10009FAEC();
      sub_1000A042C(&type metadata for ConditionState.AlertCodingKeys);
      v49 = v38;
      v50 = sub_1000EC4E4();
      v92 = 0;
      v73 = v50;
      v75 = v74;
      swift_unknownObjectRelease();
      v76 = sub_1000A04A0();
      v77(v76);
      v78 = sub_1000A03EC();
      v79(v78, v49);
      v80 = v93;
      *v93 = v73;
      *(v80 + 8) = v75;
      swift_storeEnumTagMultiPayload();
      sub_1000A03D4();
      v81 = v112;
      sub_10009F9E4(v80, v112, v82);
      v83 = v111;
      break;
  }

  sub_1000A03D4();
  sub_10009F9E4(v81, v48, v91);
  v57 = v83;
  return sub_100009068(v57);
}

uint64_t sub_10009F334(uint64_t a1)
{
  v2 = sub_10009FAEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F370(uint64_t a1)
{
  v2 = sub_10009FAEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009DECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009F3DC(uint64_t a1)
{
  v2 = sub_10009F93C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F418(uint64_t a1)
{
  v2 = sub_10009F93C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009E0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009F484(uint64_t a1)
{
  v2 = sub_10009FA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F4C0(uint64_t a1)
{
  v2 = sub_10009FA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F4FC(uint64_t a1)
{
  v2 = sub_10009F990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F538(uint64_t a1)
{
  v2 = sub_10009F990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F574(uint64_t a1)
{
  v2 = sub_10009FA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F5B0(uint64_t a1)
{
  v2 = sub_10009FA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      v10 = 1;
      return sub_1000028A0(a2, v10, 1, v4);
    }

    sub_10009FB40(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, type metadata accessor for EventViewModel);
    if (*v7 == 2)
    {
      break;
    }

    ++v8;
    sub_10009F7F4(v7, type metadata accessor for EventViewModel);
  }

  sub_10009F9E4(v7, a2, type metadata accessor for EventViewModel);
  v10 = 0;
  return sub_1000028A0(a2, v10, 1, v4);
}

uint64_t type metadata accessor for ConditionState(uint64_t a1)
{
  result = qword_1001340A0;
  if (!qword_1001340A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009F7F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_10009F84C(uint64_t a1)
{
  sub_10009F8CC(319);
  if (v1 <= 0x3F)
  {
    sub_1000EB504();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10009F8CC(uint64_t a1)
{
  if (!qword_1001340B0)
  {
    sub_1000EB504();
    sub_1000EBAF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001340B0);
    }
  }
}

unint64_t sub_10009F93C()
{
  result = qword_100134108;
  if (!qword_100134108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134108);
  }

  return result;
}

unint64_t sub_10009F990()
{
  result = qword_100134110;
  if (!qword_100134110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134110);
  }

  return result;
}

uint64_t sub_10009F9E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10009FA44()
{
  result = qword_100134118;
  if (!qword_100134118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134118);
  }

  return result;
}

unint64_t sub_10009FA98()
{
  result = qword_100134128;
  if (!qword_100134128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134128);
  }

  return result;
}

unint64_t sub_10009FAEC()
{
  result = qword_100134130;
  if (!qword_100134130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134130);
  }

  return result;
}

uint64_t sub_10009FB40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10009FBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ConditionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10009FCB4);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionState.NextHourPrecipitationCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009FDCCLL);
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

_BYTE *sub_10009FE04(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10009FEA0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009FEEC()
{
  result = qword_100134168;
  if (!qword_100134168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134168);
  }

  return result;
}

unint64_t sub_10009FF44()
{
  result = qword_100134170;
  if (!qword_100134170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134170);
  }

  return result;
}

unint64_t sub_10009FF9C()
{
  result = qword_100134178;
  if (!qword_100134178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134178);
  }

  return result;
}

unint64_t sub_10009FFF4()
{
  result = qword_100134180;
  if (!qword_100134180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134180);
  }

  return result;
}

unint64_t sub_1000A004C()
{
  result = qword_100134188;
  if (!qword_100134188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134188);
  }

  return result;
}

unint64_t sub_1000A00A4()
{
  result = qword_100134190;
  if (!qword_100134190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134190);
  }

  return result;
}

unint64_t sub_1000A00FC()
{
  result = qword_100134198;
  if (!qword_100134198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134198);
  }

  return result;
}

unint64_t sub_1000A0154()
{
  result = qword_1001341A0;
  if (!qword_1001341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341A0);
  }

  return result;
}

unint64_t sub_1000A01AC()
{
  result = qword_1001341A8;
  if (!qword_1001341A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341A8);
  }

  return result;
}

unint64_t sub_1000A0204()
{
  result = qword_1001341B0;
  if (!qword_1001341B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341B0);
  }

  return result;
}

unint64_t sub_1000A025C()
{
  result = qword_1001341B8;
  if (!qword_1001341B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341B8);
  }

  return result;
}

unint64_t sub_1000A02B4()
{
  result = qword_1001341C0;
  if (!qword_1001341C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341C0);
  }

  return result;
}

unint64_t sub_1000A030C()
{
  result = qword_1001341C8;
  if (!qword_1001341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341C8);
  }

  return result;
}

unint64_t sub_1000A0364()
{
  result = qword_1001341D0;
  if (!qword_1001341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001341D0);
  }

  return result;
}

uint64_t sub_1000A042C(uint64_t a1)
{

  return sub_1000EC4A4();
}

uint64_t sub_1000A044C()
{

  return sub_10009F7F4(v0, type metadata accessor for AggregateWeatherViewModel);
}

uint64_t sub_1000A04DC(uint64_t a1)
{

  return sub_1000EC534();
}

void (*sub_1000A04FC(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;

      v4(&v7);
      if (v3)
      {
        break;
      }

      ++v6;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000A0594@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000A1604(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = sub_1000EBE54();
    (*(*(v9 - 8) + 16))(a2, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1000EBE54();
    v10 = a2;
    v11 = 1;
  }

  return sub_1000028A0(v10, v11, 1, v12);
}

uint64_t sub_1000A065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000A158C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_1000A06AC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v7 = sub_1000E9B14();
  __chkstk_darwin(v7 - 8);
  sub_100006A10();
  v3[13] = 0;
  sub_100002A10(&qword_1001342A0, &qword_1000F6ED8);
  v3[14] = sub_1000EBDE4();
  sub_1000E9B04();
  sub_1000E9B34();
  swift_allocObject();
  v3[15] = sub_1000E9B24();
  sub_10004E7EC(a1, (v3 + 2));
  sub_10004E7EC(a2, (v3 + 7));
  v3[12] = a3;
  return v3;
}

id sub_1000A07B4()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
  }

  else
  {
    v3 = [objc_allocWithZone(NSOperationQueue) init];
    [v3 setQualityOfService:25];
    v4 = *(v0 + 104);
    *(v0 + 104) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

double sub_1000A0834(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a4;
  v36 = a2;
  sub_1000E9A84();
  sub_1000090D4();
  v37 = v9;
  v38 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = sub_1000E95E4();
  sub_1000090D4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100006A10();
  v18 = v17 - v16;
  v19 = a1;
  sub_1000E99B4();
  sub_1000E95F4();
  v20 = sub_1000E95D4();
  v22 = v21;
  (*(v14 + 8))(v18, v12);
  v23 = v39;
  v39 = v20;
  if (sub_1000A0B04(a3, v23, v20, v22))
  {
    v25 = v37;
    v24 = v38;
    v34 = *(v37 + 16);
    v35 = v19;
    v34(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v38);
    sub_100051D3C(v5 + 16, v41);
    sub_100051D3C(v5 + 56, v40);
    objc_allocWithZone(type metadata accessor for WeatherDataOperation(0));

    sub_100064870();
    v27 = v26;
    v28 = swift_allocObject();
    swift_weakInit();
    v34(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v24);
    v29 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v30 = swift_allocObject();
    v31 = v39;
    *(v30 + 2) = v28;
    *(v30 + 3) = v31;
    *(v30 + 4) = v22;
    (*(v25 + 32))(&v30[v29], &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    sub_1000E9B84();
    v32 = sub_1000A07B4();
    [v32 addOperation:v27];
  }

  else
  {
  }

  return result;
}

BOOL sub_1000A0B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1000E9AE4();
  swift_beginAccess();
  v10 = sub_1000A065C(a3, a4, *(v4 + 112));
  if (v10)
  {
    swift_endAccess();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    v12 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000311F4(0, *(v10 + 16) + 1, 1, v10);
      v12 = v21;
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1000311F4(v13 > 1, v14 + 1, 1, v12);
      v12 = v22;
    }

    *(v12 + 16) = v14 + 1;
    v15 = v12 + 16 * v14;
    *(v15 + 32) = sub_1000A19AC;
    *(v15 + 40) = v11;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v5 + 112);
    v17 = v12;
  }

  else
  {
    swift_endAccess();
    sub_100002A10(&unk_1001304E0, &unk_1000F0C40);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000EFAD0;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v18 + 32) = sub_1000A1800;
    *(v18 + 40) = v19;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v4 + 112);
    v17 = v18;
  }

  sub_1000A1828(v17, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v5 + 112) = v23;
  swift_endAccess();
  sub_1000E9AF4();
  return v10 == 0;
}

double sub_1000A0D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000E9A84();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v17 = sub_1000A10A8(a3, a4);

    if (v17)
    {
      v31 = a1;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v18 = sub_1000E9F64();
      sub_100008CB8(v18, qword_100145C10);
      v19 = *(v10 + 16);
      v19(v15, a5, v9);
      swift_bridgeObjectRetain_n();
      v20 = sub_1000E9F44();
      v21 = sub_1000EC1B4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v30;
        *v22 = 141558531;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        v19(v13, v15, v9);
        v23 = sub_1000EBEF4();
        v25 = v24;
        (*(v10 + 8))(v15, v9);
        v26 = sub_1000E2E18(v23, v25, &v32);

        *(v22 + 14) = v26;
        *(v22 + 22) = 2048;
        v27 = *(v17 + 16);

        *(v22 + 24) = v27;

        _os_log_impl(&_mh_execute_header, v20, v21, "Data operation completion: %{private,mask.hash}s, requests: %ld", v22, 0x20u);
        sub_100009068(v30);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v28 = (*(v10 + 8))(v15, v9);
      }

      __chkstk_darwin(v28);
      *(&v29 - 2) = v31;
      sub_1000A04FC(sub_1000A1784, (&v29 - 4), v17);
    }
  }

  return result;
}

uint64_t sub_1000A10A8(uint64_t a1, uint64_t a2)
{
  sub_1000E9B34();

  sub_100002A10(&qword_1001342A8, &qword_1000F6EE0);
  sub_1000E9C24();

  return v3;
}

void sub_1000A114C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E9A84();
  sub_1000090D4();
  __chkstk_darwin(v5);
  sub_100006A10();
  (*(v8 + 16))(v7 - v6, a1);
  sub_100051D3C(v2 + 16, v13);
  sub_100051D3C(v2 + 56, v12);
  v9 = objc_allocWithZone(type metadata accessor for WeatherDataOperation(0));

  sub_100064870();
  v11 = v10;
  sub_100068728(a1, a2);
}

uint64_t sub_1000A1268()
{
  sub_100009068((v0 + 16));
  sub_100009068((v0 + 56));

  return v0;
}

uint64_t sub_1000A12B0()
{
  sub_1000A1268();

  return _swift_deallocClassInstance(v0, 128, 7);
}

uint64_t sub_1000A1308()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000A1340()
{
  v1 = sub_1000E9A84();
  sub_1000090D4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

double sub_1000A1400(uint64_t a1)
{
  v3 = *(sub_1000E9A84() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1000A0D3C(a1, v4, v5, v6, v7);
}

uint64_t sub_1000A1478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = sub_1000A158C(a2, a3);
  v9 = 0;
  if (v10)
  {
    v11 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + 112);
    v13 = *(v15 + 24);
    sub_100002A10(&qword_1001342B0, &qword_1000F6EE8);
    sub_1000EC444(isUniquelyReferenced_nonNull_native, v13);

    v9 = *(*(v15 + 56) + 8 * v11);
    sub_100002A10(&qword_1001342A0, &qword_1000F6ED8);
    sub_1000EC454();
    *(a1 + 112) = v15;
  }

  *a4 = v9;
  return swift_endAccess();
}

unint64_t sub_1000A158C(uint64_t a1, uint64_t a2)
{
  sub_1000EC664();
  sub_1000EBF14();
  v4 = sub_1000EC684();

  return sub_1000A1670(a1, a2, v4);
}

unint64_t sub_1000A1604(uint64_t a1)
{
  v1 = a1;
  sub_1000EC664();
  sub_1000EC674(v1);
  v2 = sub_1000EC684();

  return sub_1000A1724(v1, v2);
}

unint64_t sub_1000A1670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1000EC5D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000A1724(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_1000A17C8()
{

  return _swift_deallocObject(v0);
}

void sub_1000A1828(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000A158C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100002A10(&qword_1001342B0, &qword_1000F6EE8);
  if (!sub_1000EC444(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000A158C(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    sub_1000EC604();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_1000A1964(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_1000A1964(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000A19C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E9A84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A1A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000E9A84();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for WidgetLocation(uint64_t a1)
{
  result = qword_100134310;
  if (!qword_100134310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A1B8C(uint64_t a1)
{
  result = sub_1000E9A84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A1C40(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v46 = a3;
  sub_100013D84();
  v45 = sub_1000EAD74();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_1000EC224();
  sub_1000090D4();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000090D4();
  v43 = v22;
  v44 = v21;
  v23 = __chkstk_darwin(v21);
  v40 = &v39 - v24;
  v46(v23);
  v42 = type metadata accessor for DailyViewAttributes(0);
  v25 = *(v42 + 52);
  v46 = a2;
  if (*(a2 + v25) == 1)
  {
    sub_1000EC0E4();
  }

  else
  {
    sub_1000EC0F4();
  }

  sub_100013D84();
  v26 = sub_1000E86A4();
  sub_1000028A0(v11, 1, 1, v26);
  sub_1000EAD34();

  sub_100006850(v11, &qword_10012FD68, &unk_1000F5370);
  sub_1000EC214();
  v41 = *(v14 + 8);
  v41(v20, v12);
  v27 = v45;
  (*(v5 + 104))(v8, enum case for WeatherFormatPlaceholder.none(_:), v45);
  sub_1000E93A4();
  sub_1000E9394();
  sub_100006808(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v28 = v44;
  v29 = v40;
  v39 = sub_1000E8304();
  v31 = v30;

  (*(v5 + 8))(v8, v27);
  v41(v18, v12);
  (*(v43 + 8))(v29, v28);
  v47 = v39;
  v48 = v31;
  sub_100005898();
  v32 = sub_1000EA814();
  v34 = v33;
  v36 = v35;
  sub_1000EA664();
  sub_1000EA684();
  sub_1000EA5D4();

  v37 = sub_1000EA7D4();

  sub_1000058EC(v32, v34, v36 & 1);

  return v37;
}

uint64_t sub_1000A20BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100013D84();
  type metadata accessor for DailyViewAttributes(v6);
  sub_100006A04();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    sub_1000EB214();
    sub_100006A04();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      sub_100002A10(&qword_10012ED98, &unk_1000F2440);
      sub_100006A04();
      if (*(v15 + 84) == a2)
      {
        v9 = v14;
        v13 = a3[8];
      }

      else
      {
        if (a2 == 254)
        {
          v17 = *(v3 + a3[9] + 8);
          if (v17 > 1)
          {
            return (v17 ^ 0xFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
        sub_100006A04();
        if (*(v19 + 84) == a2)
        {
          v9 = v18;
          v13 = a3[10];
        }

        else
        {
          v9 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
          v13 = a3[11];
        }
      }
    }

    v10 = v3 + v13;
  }

  return sub_100005B30(v10, a2, v9);
}

void sub_1000A2278(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100013D84();
  type metadata accessor for DailyViewAttributes(v8);
  sub_100006A04();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_1000EB214();
    sub_100006A04();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      sub_100002A10(&qword_10012ED98, &unk_1000F2440);
      sub_100006A04();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[8];
      }

      else
      {
        if (a3 == 254)
        {
          *(v4 + a4[9] + 8) = -a2;
          return;
        }

        sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
        sub_100006A04();
        if (*(v19 + 84) == a3)
        {
          v11 = v18;
          v15 = a4[10];
        }

        else
        {
          v11 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
          v15 = a4[11];
        }
      }
    }

    v12 = v4 + v15;
  }

  sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for DailyTemperatureForecastRowView(uint64_t a1)
{
  result = qword_1001343A8;
  if (!qword_1001343A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A246C(uint64_t a1)
{
  type metadata accessor for DailyViewAttributes(319);
  if (v1 <= 0x3F)
  {
    sub_1000EB214();
    if (v2 <= 0x3F)
    {
      sub_1000A2598(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
      if (v3 <= 0x3F)
      {
        sub_100005F48();
        if (v4 <= 0x3F)
        {
          sub_1000A2598(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
          if (v5 <= 0x3F)
          {
            sub_100005FEC(319);
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

void sub_1000A2598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A2608@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EA2C4();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  sub_1000069E4();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for DailyTemperatureForecastRowView(0);
  sub_1000068F4(v1 + *(v12 + 32), v11, &qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC34();
    sub_1000069E4();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    sub_1000EC1A4();
    v15 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

double sub_1000A27F4()
{
  v1 = v0;
  v2 = sub_1000EBC34();
  v39 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_1000EA3A4();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = __chkstk_darwin(v8);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v37 - v11;
  v12 = sub_1000EA2C4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DailyTemperatureForecastRowView(0);
  v24 = v1 + *(v16 + 36);
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    result = 1.0;
    if (v25)
    {
      return result;
    }
  }

  else
  {

    sub_1000EC1A4();
    v37 = v12;
    v27 = sub_1000EA524();
    v38 = v5;
    v28 = v27;
    sub_1000E9F14();

    v5 = v38;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v25, 0);
    v16 = (*(v13 + 8))(v15, v37);
    result = 1.0;
    if ((v44 & 0x100000000000000) != 0)
    {
      return result;
    }
  }

  v29 = v40;
  sub_10003E504(v16, v17, v18, v19, v20, v21, v22, v23, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v31 = v41;
  v30 = v42;
  v32 = v43;
  (*(v42 + 104))(v41, enum case for ColorSchemeContrast.increased(_:), v43);
  v33 = sub_1000EA394();
  v34 = *(v30 + 8);
  v34(v31, v32);
  v34(v29, v32);
  result = 1.0;
  if ((v33 & 1) == 0)
  {
    sub_1000A2608(v7);
    sub_1000EBC14();
    v35 = sub_1000EBBF4();
    v36 = *(v39 + 8);
    v36(v5, v2);
    v36(v7, v2);
    result = 0.27;
    if (v35)
    {
      return 0.7;
    }
  }

  return result;
}

uint64_t sub_1000A2BC0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = type metadata accessor for DailyTemperatureForecastRowView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_1000A4B58(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000A4ECC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1000A4F30;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000A2CB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_1000EA4E4();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_1001343F8, &qword_1000F6F70);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_100002A10(&qword_100134400, &qword_1000F6F78);
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v22 = sub_100002A10(&qword_100134408, &qword_1000F6F80);
  __chkstk_darwin(v22);
  v13 = &v19 - v12;
  *v8 = sub_1000EA2E4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = sub_100002A10(&qword_100134410, &qword_1000F6F88);
  sub_1000A2FF8(a1, &v8[*(v14 + 44)]);
  sub_1000EA4B4();
  v15 = sub_100006988(&qword_100134418, &qword_1001343F8, &qword_1000F6F70, &protocol conformance descriptor for HStack<A>);
  sub_1000EA914();
  (*(v3 + 8))(v5, v23);
  sub_100006850(v8, &qword_1001343F8, &qword_1000F6F70);
  type metadata accessor for DailyTemperatureForecastRowView(0);
  v27 = sub_1000EB144();
  v28 = v16;
  v25 = v6;
  v26 = v15;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v17 = v21;
  sub_1000EA8D4();

  (*(v20 + 8))(v11, v17);
  sub_1000EA084();
  return sub_1000A4FB0(v13);
}