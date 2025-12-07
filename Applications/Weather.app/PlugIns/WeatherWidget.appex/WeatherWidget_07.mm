unint64_t sub_1000C0F34()
{
  result = qword_100134FD0;
  if (!qword_100134FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FD0);
  }

  return result;
}

uint64_t sub_1000C0FC0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_100008CB8(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000C10D8(uint64_t a1)
{
  v2 = sub_100084DEC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000C1128()
{
  result = qword_100134FD8;
  if (!qword_100134FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FD8);
  }

  return result;
}

unint64_t sub_1000C1180()
{
  result = qword_100134FE0;
  if (!qword_100134FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134FE0);
  }

  return result;
}

uint64_t sub_1000C11D8()
{
  if (qword_10012EBD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000C1234(uint64_t a1)
{
  v2 = sub_1000C0F34();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for TemperatureUnit(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000C13C0);
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

unint64_t sub_1000C14A0()
{
  result = qword_100135028;
  if (!qword_100135028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135028);
  }

  return result;
}

unint64_t sub_1000C14F4()
{
  result = qword_100135030;
  if (!qword_100135030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135030);
  }

  return result;
}

unint64_t sub_1000C1548()
{
  result = qword_100135038;
  if (!qword_100135038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135038);
  }

  return result;
}

uint64_t sub_1000C15CC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000C1624(__int128 *a1)
{
  type metadata accessor for EventManager();
  *(v1 + 16) = swift_allocObject();
  v3 = sub_1000EADF4();
  sub_1000A8350(v3);
  *(v1 + 64) = sub_1000EADE4();
  sub_10004E7EC(a1, v1 + 24);
  return v1;
}

void sub_1000C1690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C27DC();
  v80 = v3;
  v81 = v4;
  v6 = v5;
  v72 = v7;
  sub_1000EB094();
  sub_1000090D4();
  v90 = v9;
  v91 = v8;
  __chkstk_darwin(v8);
  sub_10004B3F0();
  v88 = v10;
  sub_10000921C();
  v11 = sub_1000EAF24();
  v12 = sub_100009210(v11);
  __chkstk_darwin(v12);
  sub_10004B3F0();
  v77 = v13;
  sub_10000921C();
  sub_1000EADA4();
  sub_1000090D4();
  v75 = v15;
  v76 = v14;
  __chkstk_darwin(v14);
  sub_10004B3F0();
  v74 = v16;
  sub_10000921C();
  v17 = sub_1000EBBC4();
  v18 = sub_100009210(v17);
  __chkstk_darwin(v18);
  sub_10004B3F0();
  v73 = v19;
  sub_10000921C();
  v20 = sub_1000E8C34();
  v21 = sub_100009210(v20);
  __chkstk_darwin(v21);
  sub_100006A10();
  v70[1] = v23 - v22;
  v24 = sub_1000EAFC4();
  sub_1000090D4();
  v26 = v25;
  v28 = __chkstk_darwin(v27);
  v30 = v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v70 - v31;
  v89 = sub_1000EADC4();
  sub_1000090D4();
  v87 = v33;
  __chkstk_darwin(v34);
  sub_10004B3F0();
  v71 = v35;
  v36 = sub_10000921C();
  v37 = *(v6 + *(type metadata accessor for AggregateWeatherViewModel(v36) + 44));
  v38 = sub_10009B330(v37);
  v39 = sub_10009B858(v38, v37);
  v84 = v40;
  v85 = v39;
  v41 = sub_10009BBDC(v38, v37);
  v82 = v42;
  v83 = v41;
  v86 = v38;
  v43 = sub_10009BD30(v38, v37);
  v78 = v44;
  v79 = v43;
  sub_1000EB664();
  sub_1000EAF64();
  v45 = *(v26 + 8);
  v45(v32, v24);
  v46 = v80;
  sub_1000EAE74();
  sub_1000EB664();
  sub_1000EAFB4();
  v45(v30, v24);
  (*(v75 + 104))(v74, enum case for WeatherConditionGradientModel.PresentationContext.widget(_:), v76);
  sub_1000EB5A4();
  v47 = v71;
  sub_1000EB654();
  sub_1000EAD84();
  v48 = sub_1000EADF4();
  sub_1000A8350(v48);
  sub_1000EADE4();
  v49 = v88;
  sub_1000EADD4();
  v81 = sub_1000EB084();
  (*(v90 + 8))(v49, v91);
  sub_1000E9A34();
  v50 = sub_1000E9984();
  v52 = v51;
  v53 = 1;
  if (v50 != sub_1000E9984() || v52 != v54)
  {
    v53 = sub_1000EC5D4();
  }

  v56 = v86;
  v57 = v86 >> 8;
  v58 = type metadata accessor for WidgetLocation(0);
  v59 = *(v46 + *(v58 + 20)) == 3;
  v60 = *(v46 + *(v58 + 24));
  v61 = type metadata accessor for WidgetContext(0);
  v62 = sub_1000C27F8();
  v63 = v72;
  sub_1000C2780(v62, v64, v65, v62);
  sub_1000EADB4();

  (*(v87 + 8))(v47, v89);
  v66 = v84;
  *v63 = v85;
  *(v63 + 8) = v66;
  v67 = v82;
  *(v63 + 16) = v83;
  *(v63 + 24) = v67;
  v68 = v78;
  *(v63 + 32) = v79;
  *(v63 + 40) = v68;
  *(v63 + 48) = v56;
  *(v63 + 49) = v57;
  *(v63 + 50) = v53 & 1;
  *(v63 + 51) = v59;
  *(v63 + 52) = v60;
  v69 = (v63 + *(v61 + 48));
  *v69 = v81;
  sub_1000C279C(v69);
  sub_1000C27C0();
}

void sub_1000C1BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C27DC();
  v66 = v3;
  v5 = v4;
  v68 = v6;
  v55 = v7;
  sub_1000EB094();
  sub_1000090D4();
  v70 = v9;
  v71 = v8;
  __chkstk_darwin(v8);
  sub_10004B3F0();
  v69 = v10;
  sub_10000921C();
  v11 = sub_1000EAF24();
  v12 = sub_100009210(v11);
  __chkstk_darwin(v12);
  sub_10004B3F0();
  v67 = v13;
  sub_10000921C();
  v64 = sub_1000EADA4();
  sub_1000090D4();
  v62 = v14;
  __chkstk_darwin(v15);
  sub_10004B3F0();
  v65 = v16;
  sub_10000921C();
  v17 = sub_1000EBBC4();
  v18 = sub_100009210(v17);
  __chkstk_darwin(v18);
  sub_10004B3F0();
  v60 = v19;
  sub_10000921C();
  v20 = sub_1000E8C34();
  v21 = sub_100009210(v20);
  __chkstk_darwin(v21);
  sub_10004B3F0();
  sub_10000921C();
  v56 = sub_1000EAFC4();
  sub_1000090D4();
  v23 = v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v52 - v28;
  v63 = sub_1000EADC4();
  sub_1000090D4();
  v61 = v30;
  __chkstk_darwin(v31);
  sub_10004B3F0();
  v59 = v32;
  sub_1000E9A34();
  v33 = sub_1000E9984();
  v35 = v34;
  v36 = 1;
  if (v33 != sub_1000E9984() || v35 != v37)
  {
    v36 = sub_1000EC5D4();
  }

  v57 = v36;

  v54 = type metadata accessor for WidgetLocation(0);
  v58 = *(v5 + *(v54 + 20)) == 3;
  type metadata accessor for InstantWeatherViewModel(0);
  v53 = v5;
  sub_1000EB664();
  sub_1000EAF64();
  v39 = *(v23 + 8);
  v40 = v56;
  v39(v29, v56);
  sub_1000EAE74();
  sub_1000EB664();
  sub_1000EAFB4();
  v39(v27, v40);
  (*(v62 + 104))(v65, enum case for WeatherConditionGradientModel.PresentationContext.widget(_:), v64);
  sub_1000EB5A4();
  sub_1000EB654();
  v41 = v59;
  sub_1000EAD84();
  v42 = sub_1000EADF4();
  sub_1000A8350(v42);
  sub_1000EADE4();
  v43 = v69;
  sub_1000EADD4();
  v44 = sub_1000EB084();
  (*(v70 + 8))(v43, v71);
  v45 = *(v53 + *(v54 + 24));
  v46 = type metadata accessor for WidgetContext(0);
  v47 = sub_1000C27F8();
  v48 = v55;
  sub_1000C2780(v47, v49, v50, v47);
  sub_1000EADB4();

  (*(v61 + 8))(v41, v63);
  sub_1000C27AC();
  *(v48 + 48) = 257;
  *(v48 + 50) = v57 & 1;
  *(v48 + 51) = v58;
  *(v48 + 52) = v45;
  v51 = (v48 + *(v46 + 48));
  *v51 = v44;
  sub_1000C279C(v51);
  sub_1000C27C0();
}

void sub_1000C20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000C27DC();
  v65 = v4;
  v6 = v5;
  v70 = v7;
  v62 = v8;
  v10 = v9;
  sub_1000EB094();
  sub_1000090D4();
  v75 = v12;
  v76 = v11;
  __chkstk_darwin(v11);
  sub_10004B3F0();
  v72 = v13;
  sub_10000921C();
  sub_1000EAF24();
  sub_1000090D4();
  v60 = v15;
  v61 = v14;
  __chkstk_darwin(v14);
  sub_10004B3F0();
  v59 = v16;
  sub_10000921C();
  v58 = sub_1000EADA4();
  sub_1000090D4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10004B3F0();
  v57 = v20;
  sub_10000921C();
  v21 = sub_1000EBBC4();
  v22 = sub_100009210(v21);
  __chkstk_darwin(v22);
  sub_100006A10();
  v23 = sub_1000E8C34();
  sub_1000090D4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100006A10();
  v29 = v28 - v27;
  sub_1000EADC4();
  sub_1000090D4();
  v73 = v31;
  v74 = v30;
  __chkstk_darwin(v30);
  sub_100006A10();
  v34 = v33 - v32;
  v35 = sub_10009B330(v6);
  v36 = sub_10009B858(v35, v6);
  v68 = v37;
  v69 = v36;
  v38 = sub_10009BBDC(v35, v6);
  v66 = v39;
  v67 = v38;
  v40 = sub_10009BD30(v35, v6);
  v63 = v41;
  v64 = v40;
  (*(v25 + 16))(v29, v62, v23);
  sub_1000EAE74();
  (*(v18 + 104))(v57, enum case for WeatherConditionGradientModel.PresentationContext.widget(_:), v58);
  (*(v60 + 16))(v59, v70, v61);
  sub_1000EAD84();
  v42 = sub_1000EADF4();
  sub_1000A8350(v42);
  sub_1000EADE4();
  sub_1000EADD4();
  v71 = sub_1000EB084();
  (*(v75 + 8))(v72, v76);
  sub_1000E9A34();
  v43 = sub_1000E9984();
  v45 = v44;
  v46 = 1;
  if (v43 != sub_1000E9984() || v45 != v47)
  {
    v46 = sub_1000EC5D4();
  }

  v49 = type metadata accessor for WidgetLocation(0);
  v50 = *(v65 + *(v49 + 20)) == 3;
  v51 = *(v65 + *(v49 + 24));
  v52 = type metadata accessor for WidgetContext(0);
  v53 = sub_1000C27F8();
  sub_1000C2780(v53, v54, v55, v53);
  sub_1000EADB4();

  (*(v73 + 8))(v34, v74);
  *v10 = v69;
  *(v10 + 8) = v68;
  *(v10 + 16) = v67;
  *(v10 + 24) = v66;
  *(v10 + 32) = v64;
  *(v10 + 40) = v63;
  *(v10 + 48) = v35;
  *(v10 + 50) = v46 & 1;
  *(v10 + 51) = v50;
  *(v10 + 52) = v51;
  v56 = (v10 + *(v52 + 48));
  *v56 = v71;
  sub_1000C279C(v56);
  sub_1000C27C0();
}

double sub_1000C254C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000EB094();
  sub_1000090D4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100006A10();
  v8 = v7 - v6;
  v9 = sub_1000EADC4();
  sub_1000090D4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100006A10();
  v15 = v14 - v13;
  sub_1000EAD94();
  sub_1000EADD4();
  v16 = sub_1000EB084();
  (*(v4 + 8))(v8, v2);
  v17 = type metadata accessor for WidgetContext(0);
  v18 = sub_1000C27F8();
  sub_1000C2780(v18, v19, v20, v18);
  v21 = sub_1000EADB4();
  (*(v11 + 8))(v15, v9);
  sub_1000C27AC();
  *&result = 65793;
  *(a1 + 48) = 65793;
  *(a1 + 52) = 0;
  v23 = a1 + *(v17 + 48);
  *v23 = v16;
  *(v23 + 8) = v21 & 1;
  return result;
}

void *sub_1000C26F8()
{

  sub_100009068((v0 + 24));

  return v0;
}

uint64_t sub_1000C2728()
{
  sub_1000C26F8();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000C2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1000028A0(v4 + v5, 1, 1, a4);
}

void sub_1000C27AC()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

uint64_t sub_1000C27F8()
{

  return sub_1000E8524();
}

uint64_t sub_1000C2824(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000C28E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for WindContentView(uint64_t a1)
{
  result = qword_100135180;
  if (!qword_100135180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C29F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  sub_1000069E4();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000EBC4(v2, &v14 - v9, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC44();
    sub_1000069E4();
    return (*(v11 + 32))(a1, v10);
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

uint64_t sub_1000C2BF0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v40 = sub_100002A10(&qword_1001351B8, &qword_1000F99C8);
  __chkstk_darwin(v40);
  v41 = &v34 - v1;
  v48 = sub_100002A10(&qword_1001351C0, &qword_1000F99D0);
  __chkstk_darwin(v48);
  v44 = &v34 - v2;
  v45 = sub_1000EB0B4();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100002A10(&qword_1001351C8, &qword_1000F99D8);
  __chkstk_darwin(v47);
  v5 = &v34 - v4;
  v38 = sub_100002A10(&qword_1001351D0, &qword_1000F99E0);
  __chkstk_darwin(v38);
  v7 = &v34 - v6;
  v46 = sub_100002A10(&qword_1001351D8, &qword_1000F99E8);
  __chkstk_darwin(v46);
  v9 = &v34 - v8;
  v10 = sub_1000EB514();
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EB314();
  v39 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EBC44();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v35 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v34 - v20;
  sub_1000C29F8(&v34 - v20);
  v36 = v17;
  v37 = v16;
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    type metadata accessor for WindContentView(0);
    sub_1000CC878(v12);
    sub_1000EB304();
    v23 = v39;
    (*(v39 + 16))(v7, v15, v13);
    swift_storeEnumTagMultiPayload();
    sub_1000C3578(&qword_1001351F0, &type metadata accessor for WindCircularContentView, &protocol conformance descriptor for WindCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v9, v5, &qword_1001351D8, &qword_1000F99E8);
    swift_storeEnumTagMultiPayload();
    sub_1000C34BC();
    sub_1000C35C0();
    sub_1000EA4A4();
    sub_100008E48(v9, &qword_1001351D8, &qword_1000F99E8);
    return (*(v23 + 8))(v15, v13);
  }

  if (v22 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1000EC3E4(57);
    v52._countAndFlagsBits = 0xD000000000000021;
    v52._object = 0x80000001000FB1A0;
    sub_1000EBF44(v52);
    v30 = v35;
    sub_1000C29F8(v35);
    sub_1000C3578(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v31 = v37;
    v53._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v53);

    (*(v36 + 8))(v30, v31);
    v54._object = 0x80000001000FED90;
    v54._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v54);
LABEL_9:
    result = sub_1000EC464();
    __break(1u);
    return result;
  }

  if (v22 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1000EC3E4(58);
    v55._countAndFlagsBits = 0xD000000000000022;
    v55._object = 0x80000001000FB150;
    sub_1000EBF44(v55);
    v32 = v35;
    sub_1000C29F8(v35);
    sub_1000C3578(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v33 = v37;
    v56._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v56);

    (*(v36 + 8))(v32, v33);
    v57._object = 0x80000001000FED90;
    v57._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v57);
    goto LABEL_9;
  }

  v25 = v5;
  type metadata accessor for WindContentView(0);
  sub_1000CC878(v12);
  v26 = v42;
  sub_1000EB0A4();
  v27 = v43;
  v28 = v45;
  (*(v43 + 16))(v41, v26, v45);
  swift_storeEnumTagMultiPayload();
  sub_1000C3578(&qword_1001351E0, &type metadata accessor for WindInlineContentView, &protocol conformance descriptor for WindInlineContentView);
  v29 = v44;
  sub_1000EA4A4();
  sub_10000EBC4(v29, v25, &qword_1001351C0, &qword_1000F99D0);
  swift_storeEnumTagMultiPayload();
  sub_1000C34BC();
  sub_1000C35C0();
  sub_1000EA4A4();
  sub_100008E48(v29, &qword_1001351C0, &qword_1000F99D0);
  return (*(v27 + 8))(v26, v28);
}

unint64_t sub_1000C34BC()
{
  result = qword_1001351E8;
  if (!qword_1001351E8)
  {
    sub_100002ABC(&qword_1001351D8, &qword_1000F99E8);
    sub_1000C3578(&qword_1001351F0, &type metadata accessor for WindCircularContentView, &protocol conformance descriptor for WindCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001351E8);
  }

  return result;
}

uint64_t sub_1000C3578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000C35C0()
{
  result = qword_1001351F8;
  if (!qword_1001351F8)
  {
    sub_100002ABC(&qword_1001351C0, &qword_1000F99D0);
    sub_1000C3578(&qword_1001351E0, &type metadata accessor for WindInlineContentView, &protocol conformance descriptor for WindInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001351F8);
  }

  return result;
}

unint64_t sub_1000C3680()
{
  result = qword_100135200;
  if (!qword_100135200)
  {
    sub_100002ABC(&qword_100135208, &qword_1000F99F0);
    sub_1000C3704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135200);
  }

  return result;
}

unint64_t sub_1000C3704()
{
  result = qword_100135210;
  if (!qword_100135210)
  {
    sub_100002ABC(&qword_100135218, &qword_1000F99F8);
    sub_1000C34BC();
    sub_1000C35C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135210);
  }

  return result;
}

uint64_t sub_1000C3790()
{
  v0 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1000E86A4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000E84B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EBE54();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000E84C4();
  __chkstk_darwin(v9);
  v10 = sub_1000E8204();
  sub_10004B338(v10, qword_100145DB0);
  sub_100008CB8(v10, qword_100145DB0);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v11 = sub_100008CB8(v4, qword_100145E08);
  (*(v5 + 16))(v7, v11, v4);
  sub_1000E8644();
  sub_1000E84D4();
  sub_1000028A0(v2, 1, 1, v9);
  return sub_1000E81F4();
}

uint64_t sub_1000C3A64()
{
  v0 = sub_100002A10(&qword_100134CB0, &unk_1000F9870);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1000E84C4();
  __chkstk_darwin(v6);
  sub_100002A10(&qword_100135310, &qword_1000FA008);
  sub_100002A10(&qword_100135318, &qword_1000FA010);
  *(swift_allocObject() + 16) = xmmword_1000EFAD0;
  sub_1000E84A4();
  sub_1000E84A4();
  sub_1000028A0(v5, 0, 1, v6);
  sub_1000E80B4();
  v7 = sub_1000E80C4();
  sub_1000028A0(v2, 0, 1, v7);
  sub_1000E80E4();
  sub_1000E80F4();
  sub_1000C44D4();
  result = sub_1000EBDE4();
  qword_100145DC8 = result;
  return result;
}

uint64_t sub_1000C3CD4()
{
  v0 = sub_100002A10(&qword_100135320, &qword_1000FA018);
  sub_10004B338(v0, qword_100145DD0);
  sub_100008CB8(v0, qword_100145DD0);
  sub_100002A10(&qword_100135328, &qword_1000FA020);
  sub_100002A10(&qword_100135330, &qword_1000FA028);
  *(swift_allocObject() + 16) = xmmword_1000EFAD0;
  sub_1000C3F40();
  sub_1000E8104();
  sub_100002A10(&qword_100135338, &unk_1000FA030);
  sub_1000C44D4();
  sub_1000EBDE4();
  return sub_1000E8114();
}

BOOL sub_1000C3E48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100125138;
  v6._object = a2;
  v4 = sub_1000EC494(v3, v6);

  return v4 != 0;
}

unint64_t sub_1000C3E94()
{
  result = qword_100135230;
  if (!qword_100135230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135230);
  }

  return result;
}

BOOL sub_1000C3EF4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C3E48(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000C3F40()
{
  result = qword_100135238;
  if (!qword_100135238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135238);
  }

  return result;
}

unint64_t sub_1000C3F98()
{
  result = qword_100135240;
  if (!qword_100135240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135240);
  }

  return result;
}

uint64_t sub_1000C3FEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10012EBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A10(&qword_100135320, &qword_1000FA018);
  v3 = sub_100008CB8(v2, qword_100145DD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000C40A0()
{
  result = qword_100135248;
  if (!qword_100135248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135248);
  }

  return result;
}

unint64_t sub_1000C40F8()
{
  result = qword_100135250;
  if (!qword_100135250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135250);
  }

  return result;
}

unint64_t sub_1000C4150()
{
  result = qword_100135258;
  if (!qword_100135258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135258);
  }

  return result;
}

uint64_t sub_1000C41A4(uint64_t a1)
{
  sub_1000C5A54();
  v2 = sub_1000E8084();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000C4214()
{
  result = qword_100135260;
  if (!qword_100135260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135260);
  }

  return result;
}

unint64_t sub_1000C426C()
{
  result = qword_100135268;
  if (!qword_100135268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135268);
  }

  return result;
}

unint64_t sub_1000C42C4()
{
  result = qword_100135270;
  if (!qword_100135270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135270);
  }

  return result;
}

unint64_t sub_1000C431C()
{
  result = qword_100135278;
  if (!qword_100135278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135278);
  }

  return result;
}

uint64_t sub_1000C43D4(uint64_t a1)
{
  v2 = sub_1000C3F40();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000C4424()
{
  result = qword_100135280;
  if (!qword_100135280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135280);
  }

  return result;
}

unint64_t sub_1000C447C()
{
  result = qword_100135288;
  if (!qword_100135288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135288);
  }

  return result;
}

unint64_t sub_1000C44D4()
{
  result = qword_100135290;
  if (!qword_100135290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135290);
  }

  return result;
}

uint64_t sub_1000C4528()
{
  if (qword_10012EBE0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000C4584(uint64_t a1)
{
  v2 = sub_1000C431C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000C45D4()
{
  result = qword_100135298;
  if (!qword_100135298)
  {
    sub_100002ABC(&qword_1001352A0, &qword_1000F9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135298);
  }

  return result;
}

unint64_t sub_1000C464C()
{
  result = qword_1001352A8;
  if (!qword_1001352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352A8);
  }

  return result;
}

uint64_t sub_1000C46A4()
{
  v0 = sub_1000E86A4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E84B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBE54();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000E84C4();
  sub_10004B338(v6, qword_100145DE8);
  sub_100008CB8(v6, qword_100145DE8);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v7 = sub_100008CB8(v1, qword_100145E08);
  (*(v2 + 16))(v4, v7, v1);
  sub_1000E8644();
  return sub_1000E84D4();
}

uint64_t sub_1000C4900()
{
  v34 = sub_1000E8174();
  sub_1000090D4();
  v32 = v0;
  __chkstk_darwin(v1);
  sub_100006A10();
  v33 = v3 - v2;
  v4 = sub_100002A10(&qword_100134C80, &unk_1000F81F0);
  v5 = sub_100009210(v4);
  v6 = __chkstk_darwin(v5);
  v31 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v30 = v29 - v8;
  v9 = sub_100002A10(&qword_100134C88, &qword_1000F9FF0);
  v10 = sub_100009210(v9);
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  v13 = sub_1000E86A4();
  v14 = sub_100009210(v13);
  __chkstk_darwin(v14);
  sub_100006A10();
  v15 = sub_1000E84B4();
  sub_1000090D4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100006A10();
  v21 = v20 - v19;
  v22 = sub_1000EBE54();
  v23 = sub_100009210(v22);
  __chkstk_darwin(v23);
  sub_100006A10();
  v24 = sub_1000E84C4();
  __chkstk_darwin(v24);
  sub_100006A10();
  v29[1] = sub_100002A10(&qword_1001352F0, &unk_1000F9FF8);
  sub_1000EBE44();
  if (qword_10012EC00 != -1)
  {
    swift_once();
  }

  v25 = sub_100008CB8(v15, qword_100145E08);
  v26 = *(v17 + 16);
  v26(v21, v25, v15);
  sub_1000E8644();
  sub_1000C5AB8();
  sub_1000EBE44();
  v26(v21, v25, v15);
  sub_1000E8644();
  sub_1000C5AB8();
  sub_1000028A0(v12, 0, 1, v24);
  v35 = 1;
  v27 = sub_1000E7ED4();
  sub_1000028A0(v30, 1, 1, v27);
  sub_1000028A0(v31, 1, 1, v27);
  (*(v32 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v34);
  sub_1000C3F40();
  return sub_1000E7F24();
}

void (*sub_1000C4D38(void *a1))(void *a1)
{
  v2 = sub_1000B9500(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1000E7EF4();
  return sub_1000B8C68;
}

unint64_t sub_1000C4D9C()
{
  result = qword_1001352B0;
  if (!qword_1001352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352B0);
  }

  return result;
}

uint64_t sub_1000C4DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C59AC();
  v5 = sub_1000C5A54();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000C4E58()
{
  v0 = qword_100135220;

  return v0;
}

unint64_t sub_1000C4E94()
{
  result = qword_1001352B8;
  if (!qword_1001352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352B8);
  }

  return result;
}

unint64_t sub_1000C4EEC()
{
  result = qword_1001352C0;
  if (!qword_1001352C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352C0);
  }

  return result;
}

uint64_t sub_1000C4FEC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_100008CB8(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000C5090(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000C59AC();
  v6 = sub_1000C5A00();
  v7 = sub_1000C5A54();
  *v4 = v2;
  v4[1] = sub_1000C515C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000C515C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000C5264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C4900();
  *a1 = result;
  return result;
}

uint64_t sub_1000C528C(uint64_t a1)
{
  v2 = sub_1000C4D9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000C52C8()
{
  sub_1000E8014();
  sub_1000090D4();
  __chkstk_darwin(v1);
  sub_100006A10();
  sub_1000C4900();
  sub_1000C4D9C();
  sub_1000E8024();
  sub_1000E8004();
  v2 = sub_1000C5AE8();
  v3(v2);
  sub_100002A10(&qword_1001352D8, &qword_1000F9FD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EFAD0;
  *(v4 + 32) = v0;
  v5 = sub_1000E7FF4();

  return v5;
}

uint64_t sub_1000C540C()
{
  v0 = sub_100002A10(&qword_1001352E0, &qword_1000F9FD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  sub_1000C4D9C();
  sub_1000E7FE4();
  v14 = sub_1000E7FA4();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_1000E7FE4();
  v13 = sub_1000E7FA4();
  v4(v3, v0);
  sub_1000E7FE4();
  v5 = sub_1000E7FA4();
  v4(v3, v0);
  sub_1000E7FE4();
  v6 = sub_1000E7FA4();
  v4(v3, v0);
  sub_1000E7FE4();
  v7 = sub_1000E7FA4();
  v4(v3, v0);
  sub_1000E7FE4();
  v8 = sub_1000E7FA4();
  v4(v3, v0);
  sub_100002A10(&qword_1001352E8, &unk_1000F9FE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000F9A00;
  v10 = v13;
  *(v9 + 32) = v14;
  *(v9 + 40) = v10;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  v11 = sub_1000E7F94();

  return v11;
}

uint64_t sub_1000C5724()
{
  sub_1000E7F84();
  sub_1000090D4();
  __chkstk_darwin(v1);
  sub_100006A10();
  sub_1000C4D9C();
  sub_1000E7F74();
  sub_1000E7F64();
  v2 = sub_1000C5AE8();
  v3(v2);
  sub_100002A10(&qword_1001352C8, &qword_1000F9FC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EFAD0;
  *(v4 + 32) = v0;
  v5 = sub_1000E7F54();

  return v5;
}

uint64_t sub_1000C5844()
{
  v0 = sub_1000E7FC4();
  sub_100002A10(&qword_1001352D0, &qword_1000F9FC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000EFAD0;
  *(v1 + 32) = v0;
  v2 = sub_1000E7FB4();

  return v2;
}

_BYTE *sub_1000C58DC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000C5978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000C59AC()
{
  result = qword_1001352F8;
  if (!qword_1001352F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001352F8);
  }

  return result;
}

unint64_t sub_1000C5A00()
{
  result = qword_100135300;
  if (!qword_100135300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135300);
  }

  return result;
}

unint64_t sub_1000C5A54()
{
  result = qword_100135308;
  if (!qword_100135308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135308);
  }

  return result;
}

uint64_t sub_1000C5AB8()
{

  return sub_1000E84D4();
}

uint64_t sub_1000C5AFC(uint64_t a1, __n128 a2)
{
  sub_1000EA6E4();
  if (*(v2 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize))
  {
    if (sub_1000027EC(*(v2 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize)))
    {
      sub_1000EA6E4();

      sub_1000EA6C4();
    }

    else
    {
      sub_1000EA5F4();

      sub_1000EA6F4();
    }

    v4 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    v5 = &enum case for ContentSizeCategory.extraExtraLarge(_:);
  }

  else
  {
    sub_1000EA6B4();

    sub_1000EA6C4();

    v4 = &enum case for ContentSizeCategory.extraExtraLarge(_:);
    v5 = &enum case for ContentSizeCategory.extraLarge(_:);
  }

  v6 = sub_1000C5D30(v4, v5);
  v7 = *(a1 + *(type metadata accessor for AggregateWeatherViewModel(0) + 28));

  v8 = sub_10009BFCC(v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v13)
  {
    sub_1000EC5F4();
    swift_unknownObjectRetain_n();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = &_swiftEmptyArrayStorage;
    }

    v16 = v15[2];

    if (__OFSUB__(v14 >> 1, v12))
    {
      __break(1u);
    }

    else if (v16 == (v14 >> 1) - v12)
    {
      v17 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v17)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  sub_1000D7DE4(v8, v10, v12, v14);
LABEL_14:
  swift_unknownObjectRelease();
LABEL_15:
  sub_1000C5E84(v2);
  sub_1000EA9C4();
  sub_1000EA9C4();
  sub_1000EB444();
}

uint64_t sub_1000C5D30(unsigned int *a1, unsigned int *a2)
{
  v4 = sub_1000EA3B4();
  sub_1000090D4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100006A10();
  v10 = v9 - v8;
  v11 = *(v6 + 104);
  v11(v9 - v8, *a1, v4);
  sub_1000CD388();
  LOBYTE(a1) = v12;
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (a1)
  {
    return 4;
  }

  v11(v10, *a2, v4);
  sub_1000CD388();
  v16 = v15;
  v13(v10, v4);
  if (v16)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1000C5E84(uint64_t a1)
{
  v2 = sub_1000EA3B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EBC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for WidgetFamily.systemMedium(_:), v6);
  sub_100043230();
  sub_1000EBFB4();
  sub_1000EBFB4();
  (*(v7 + 8))(v9, v6);
  if (v14[1] == v14[0])
  {
    if (*(a1 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize) >= 2u)
    {
      v10 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    }

    else
    {
      v10 = &enum case for ContentSizeCategory.extraExtraLarge(_:);
    }

    (*(v3 + 104))(v5, *v10, v2);
    sub_1000CDAD0();
    v12 = v11;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_1000C60CC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_1000EA3B4();
  sub_1000090D4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100006A10();
  v14 = (v13 - v12);
  v15 = sub_1000EBC44();
  sub_1000090D4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100006A10();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, a1, v15);
  (*(v10 + 16))(v14, a2, v8);
  v22 = sub_100026CB4(v21, v14, a3, a4);
  (*(v10 + 8))(a2, v8);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t type metadata accessor for HourlyBannerViewAttributesFactory(uint64_t a1)
{
  result = qword_100135368;
  if (!qword_100135368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C62E4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_100002A10(&qword_100130570, &qword_1000F0D48);
    sub_100006A04();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v14 = *(a1 + a3[6] + 8);
        if (v14 > 1)
        {
          return (v14 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      sub_100006A04();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v12 = a3[7];
      }

      else
      {
        sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        sub_100006A04();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v12 = a3[8];
        }

        else
        {
          v8 = type metadata accessor for ForecastEntry(0);
          v12 = a3[11];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

void sub_1000C64B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_100002A10(&qword_100130570, &qword_1000F0D48);
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(a1 + a4[6] + 8) = -a2;
        return;
      }

      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        sub_100006A04();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          v10 = type metadata accessor for ForecastEntry(0);
          v14 = a4[11];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_1000028A0(v11, a2, a2, v10);
}

uint64_t type metadata accessor for SunriseSunsetContentView(uint64_t a1)
{
  result = qword_100135478;
  if (!qword_100135478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C66B4(uint64_t a1)
{
  sub_1000609B0(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1000609B0(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_100005F48();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1000609B0(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_1000609B0(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          v2 = type metadata accessor for ForecastEntry(319);
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1000C6854()
{
  sub_100006A58();
  v3 = v0;
  sub_1000C9D68();
  v4 = sub_1000EA2C4();
  sub_1000090D4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  sub_1000C9A50(v3, v2, &qword_10012F230, &qword_1000EEFF0);
  if (sub_1000637FC() == 1)
  {
    sub_1000EBC44();
    sub_100026C1C();
    v9 = sub_1000637D8();
    v10(v9);
  }

  else
  {
    sub_1000EC1A4();
    v11 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v1, v4);
  }

  sub_100006A20();
}

void sub_1000C69F0()
{
  sub_100006A58();
  sub_1000C9D68();
  sub_1000EA2C4();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  v2 = type metadata accessor for SunriseSunsetContentView(0);
  sub_1000C9D48(*(v2 + 20));
  if (sub_1000637FC() == 1)
  {
    sub_1000EA3B4();
    sub_100026C1C();
    v3 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v5 = sub_1000EA524();
    sub_100040528(v5, &_mh_execute_header, v6, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v7, v8, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v3 = sub_100040568();
  }

  v4(v3);
  sub_100006A20();
}

uint64_t sub_1000C6B60()
{
  v2 = sub_1000EA2C4();
  sub_1000090D4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100006A10();
  sub_1000C9D2C();
  sub_1000C9D74();
  if (!v6)
  {

    sub_1000EC1A4();
    v7 = sub_1000EA524();
    sub_1000C9D88(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v0, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v0) = v12;
  }

  return v0 & 1;
}

void sub_1000C6C7C()
{
  sub_100006A58();
  sub_1000C9D68();
  sub_1000EA2C4();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  v2 = type metadata accessor for SunriseSunsetContentView(0);
  sub_1000C9D48(*(v2 + 28));
  if (sub_1000637FC() == 1)
  {
    sub_1000EA694();
    sub_100026C1C();
    v3 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v5 = sub_1000EA524();
    sub_100040528(v5, &_mh_execute_header, v6, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v7, v8, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v3 = sub_100040568();
  }

  v4(v3);
  sub_100006A20();
}

void sub_1000C6DEC()
{
  sub_100006A58();
  sub_1000C9D68();
  sub_1000EA2C4();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  v2 = type metadata accessor for SunriseSunsetContentView(0);
  sub_1000C9D48(*(v2 + 32));
  if (sub_1000637FC() == 1)
  {
    sub_1000EBC34();
    sub_100026C1C();
    v3 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v5 = sub_1000EA524();
    sub_100040528(v5, &_mh_execute_header, v6, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v7, v8, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v3 = sub_100040568();
  }

  v4(v3);
  sub_100006A20();
}

uint64_t sub_1000C6F5C()
{
  v2 = sub_1000EA2C4();
  sub_1000090D4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100006A10();
  sub_1000C9D2C();
  sub_1000C9D74();
  if (!v6)
  {

    sub_1000EC1A4();
    v7 = sub_1000EA524();
    sub_1000C9D88(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v0, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v0) = v12;
  }

  return v0 & 1;
}

void sub_1000C7078()
{
  sub_100006A58();
  sub_1000C9D68();
  sub_1000EA2C4();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  v2 = type metadata accessor for SunriseSunsetContentView(0);
  sub_1000C9D48(*(v2 + 40));
  if (sub_1000637FC() == 1)
  {
    sub_1000EBC34();
    sub_100026C1C();
    v3 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v5 = sub_1000EA524();
    sub_100040528(v5, &_mh_execute_header, v6, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v7, v8, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v3 = sub_100040568();
  }

  v4(v3);
  sub_100006A20();
}

uint64_t sub_1000C71E8()
{
  v0 = sub_1000EBC34();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_1000C6DEC();
  sub_1000EBC14();
  v7 = sub_1000EBBF4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7 & 1) != 0 || (sub_1000C6DEC(), sub_1000EBC04(), v9 = sub_1000EBBF4(), v8(v4, v0), v8(v6, v0), (v9) || (sub_1000C6F5C() & 1) != 0 || (sub_1000C6B60() & 1) == 0)
  {
    sub_1000EA9C4();
  }

  else
  {
    sub_1000EA9A4();
  }

  v10 = sub_1000EA9D4();

  return v10;
}

uint64_t sub_1000C73AC@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v110 = sub_100002A10(&qword_1001354D0, &qword_1000FA0E0);
  __chkstk_darwin(v110);
  v111 = &v78 - v1;
  v108 = sub_100002A10(&qword_1001354D8, &qword_1000FA0E8);
  __chkstk_darwin(v108);
  v3 = &v78 - v2;
  v109 = sub_100002A10(&qword_1001354E0, &qword_1000FA0F0);
  v97 = *(v109 - 8);
  __chkstk_darwin(v109);
  v96 = &v78 - v4;
  v106 = sub_100002A10(&qword_1001354E8, &qword_1000FA0F8);
  __chkstk_darwin(v106);
  v107 = &v78 - v5;
  v95 = sub_1000EB6A4();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1000EA504();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000EAF44();
  v81 = *(v82 - 1);
  __chkstk_darwin(v82);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100002A10(&qword_1001354F0, &qword_1000FA100);
  __chkstk_darwin(v84);
  v85 = &v78 - v9;
  v89 = sub_100002A10(&qword_1001354F8, &qword_1000FA108);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v78 - v10;
  v83 = sub_100002A10(&qword_100135500, &qword_1000FA110);
  __chkstk_darwin(v83);
  v86 = &v78 - v11;
  v90 = sub_100002A10(&qword_100135508, &qword_1000FA118);
  __chkstk_darwin(v90);
  v91 = &v78 - v12;
  v105 = sub_100002A10(&qword_100135510, &qword_1000FA120);
  __chkstk_darwin(v105);
  v92 = &v78 - v13;
  v14 = sub_1000EB2B4();
  v99 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v98 = &v78 - v18;
  v19 = sub_1000EB874();
  __chkstk_darwin(v19 - 8);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100002A10(&qword_100135518, &unk_1000FA128);
  __chkstk_darwin(v104);
  v103 = &v78 - v22;
  v23 = sub_1000EBC44();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v78 - v28;
  sub_1000C6854();
  if ((*(v24 + 88))(v29, v23) == enum case for WidgetFamily.systemSmall(_:))
  {
    type metadata accessor for SunriseSunsetContentView(0);
    sub_10001AC6C(v21);
    if (sub_100005B30(v21, 2, v14))
    {
      sub_1000C8B1C(__src);
      v30 = v108;
      v31 = &v3[*(v108 + 36)];
      v32 = *(sub_100002A10(&qword_100131FA8, &qword_1000F2FB0) + 28);
      v33 = enum case for ColorScheme.dark(_:);
      v34 = sub_1000E9F84();
      (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
      *v31 = swift_getKeyPath();
      memcpy(v3, __src, 0x50uLL);
      v35 = v100;
      v36 = sub_1000EA4F4();
      v99 = &v78;
      __chkstk_darwin(v36);
      sub_1000EABC4();
      v37 = type metadata accessor for BackgroundView(0);
      v38 = sub_1000C9148();
      v77 = sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView, &unk_1000F1290);
      v39 = v96;
      sub_1000EA904();
      (*(v101 + 8))(v35, v102);
      sub_100008E48(v3, &qword_1001354D8, &qword_1000FA0E8);
      v40 = v97;
      v41 = v109;
      (*(v97 + 16))(v107, v39, v109);
      swift_storeEnumTagMultiPayload();
      sub_1000C9240();
      v113 = v30;
      v114 = v37;
      v115 = v38;
      v116 = v77;
      swift_getOpaqueTypeConformance2();
      v42 = v103;
      sub_1000EA4A4();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v43 = v99;
      v44 = v99[4];
      v45 = v98;
      v79 = v14;
      v44(v98, v21, v14);
      (v43[2])(v17, v45, v14);
      v46 = v80;
      sub_1000EAF34();
      v47 = sub_1000EABA4();
      v48 = __chkstk_darwin(v47);
      __chkstk_darwin(v48);
      sub_100002A10(&qword_100135558, &qword_1000FA168);
      sub_100002A10(&qword_100135560, &qword_1000FA170);
      sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView, &protocol conformance descriptor for SunriseSunsetView);
      sub_1000C9640();
      sub_1000C96FC();
      v49 = v85;
      v50 = v82;
      sub_1000EA954();
      (*(v81 + 8))(v46, v50);
      v51 = (v49 + *(v84 + 36));
      v52 = *(sub_100002A10(&qword_100131FA8, &qword_1000F2FB0) + 28);
      v53 = enum case for ColorScheme.dark(_:);
      v54 = sub_1000E9F84();
      (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
      *v51 = swift_getKeyPath();
      v55 = v100;
      v56 = sub_1000EA4F4();
      v82 = &v78;
      __chkstk_darwin(v56);
      sub_1000EABC4();
      v96 = type metadata accessor for BackgroundView(0);
      sub_1000C94D0();
      v97 = sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView, &unk_1000F1290);
      v57 = v87;
      sub_1000EA904();
      (*(v101 + 8))(v55, v102);
      sub_100008E48(v49, &qword_1001354F0, &qword_1000FA100);
      KeyPath = swift_getKeyPath();
      v59 = sub_1000C6B60();
      v60 = v94;
      v61 = &enum case for SunriseSunsetBackgroundStyle.opaque(_:);
      if ((v59 & 1) == 0)
      {
        v61 = &enum case for SunriseSunsetBackgroundStyle.transparent(_:);
      }

      v62 = v93;
      v63 = v95;
      (*(v94 + 104))(v93, *v61, v95);
      v64 = v86;
      v65 = &v86[*(v83 + 36)];
      v66 = sub_100002A10(&qword_100135588, &qword_1000FA178);
      (*(v60 + 32))(v65 + *(v66 + 28), v62, v63);
      *v65 = KeyPath;
      (*(v88 + 32))(v64, v57, v89);
      v67 = swift_getKeyPath();
      v68 = sub_1000C71E8();
      v69 = v91;
      sub_1000C99EC(v64, v91);
      v70 = (v69 + *(v90 + 36));
      *v70 = v67;
      v70[1] = v68;
      sub_100002A10(&qword_100130558, &qword_1000F0D00);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1000EFAD0;
      v72 = v98;
      *(v71 + 32) = sub_1000EB294();
      *(v71 + 40) = v73;
      sub_1000C92FC();
      sub_100005898();
      v74 = v92;
      sub_1000EA924();

      sub_100008E48(v69, &qword_100135508, &qword_1000FA118);
      sub_1000C9A50(v74, v107, &qword_100135510, &qword_1000FA120);
      swift_storeEnumTagMultiPayload();
      sub_1000C9240();
      v75 = sub_1000C9148();
      __src[0] = v108;
      __src[1] = v96;
      __src[2] = v75;
      __src[3] = v97;
      swift_getOpaqueTypeConformance2();
      v42 = v103;
      sub_1000EA4A4();
      sub_100008E48(v74, &qword_100135510, &qword_1000FA120);
      (v99[1])(v72, v79);
    }

    sub_1000C9A50(v42, v111, &qword_100135518, &unk_1000FA128);
    swift_storeEnumTagMultiPayload();
    sub_1000C980C();
    sub_1000EA4A4();
    return sub_100008E48(v42, &qword_100135518, &unk_1000FA128);
  }

  else
  {
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1000EC3E4(62);
    v118._countAndFlagsBits = 0xD000000000000022;
    v118._object = 0x80000001000FB150;
    sub_1000EBF44(v118);
    sub_1000C6854();
    sub_1000C9CE0(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v119._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v119);

    (*(v24 + 8))(v27, v23);
    v120._object = 0x80000001000FEF10;
    v120._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000EBF44(v120);
    result = sub_1000EC464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_100002A10(&qword_1001355A8, &unk_1000FA250);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v27 = sub_100002A10(&qword_100135560, &qword_1000FA170);
  __chkstk_darwin(v27);
  v26 = &v25 - v8;
  v9 = sub_1000EBC34();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  if ((sub_1000C6B60() & 1) != 0 && (v25 = a2 + *(type metadata accessor for SunriseSunsetContentView(0) + 44), v16 = *(type metadata accessor for ForecastEntry(0) + 24), *(v25 + v16 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1) && (sub_1000C7078(), sub_1000EBC14(), sub_1000C9CE0(&qword_100130698, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode), v17 = sub_1000EBE24(), v18 = *(v10 + 8), v18(v13, v9), v18(v15, v9), (v17 & 1) == 0))
  {
    sub_1000EA9A4();
    v21 = sub_1000EA9D4();

    v22 = sub_1000EAF44();
    v23 = v26;
    (*(*(v22 - 8) + 16))(v26, a1, v22);
    v24 = v23 + *(v27 + 36);
    *v24 = v21;
    *(v24 + 8) = xmmword_1000F0D30;
    *(v24 + 24) = 0x4000000000000000;
    sub_1000C9A50(v23, v7, &qword_100135560, &qword_1000FA170);
    swift_storeEnumTagMultiPayload();
    sub_1000C96FC();
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView, &protocol conformance descriptor for SunriseSunsetView);
    sub_1000EA4A4();
    return sub_100008E48(v23, &qword_100135560, &qword_1000FA170);
  }

  else
  {
    v19 = sub_1000EAF44();
    (*(*(v19 - 8) + 16))(v7, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_1000C96FC();
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView, &protocol conformance descriptor for SunriseSunsetView);
    return sub_1000EA4A4();
  }
}

double sub_1000C89E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_1000C6B60() & 1) != 0 && (v6 = a2 + *(type metadata accessor for SunriseSunsetContentView(0) + 44), v7 = *(type metadata accessor for ForecastEntry(0) + 24), *(v6 + v7 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v8 = sub_1000EA9D4();
  }

  else
  {
    v8 = sub_1000EA9B4();
  }

  v9 = sub_1000EAF44();
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = a3 + *(sub_100002A10(&qword_100135560, &qword_1000FA170) + 36);
  *v10 = v8;
  result = 5.0;
  *(v10 + 8) = xmmword_1000F0D30;
  *(v10 + 24) = 0x4000000000000000;
  return result;
}

void *sub_1000C8B1C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EA3B4();
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EBC44();
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SunriseSunsetContentView(0);
  v17 = v2 + *(v16 + 44);
  v18 = type metadata accessor for ForecastEntry(0);
  sub_1000C9A9C(v17 + *(v18 + 28), v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000C9B08(v15);
    v19 = 2;
  }

  else
  {
    v19 = *v15;
  }

  sub_1000C6854();
  sub_1000C69F0();
  v20 = *(v2 + *(v16 + 48));
  v21 = sub_1000C6B60();
  type metadata accessor for ErrorViewAttributesFactory(0);
  swift_allocObject();
  sub_10007653C(v12, v9, v20, v21 & 1);
  sub_1000C6C7C();
  sub_10007628C(v19, __src);

  (*(v4 + 8))(v6, v3);
  return memcpy(v24, __src, 0x50uLL);
}

void sub_1000C8DB0()
{
  sub_100006A58();
  v3 = v2;
  v4 = sub_1000C9D68();
  type metadata accessor for ForecastEntry.Model(v4);
  sub_1000069E4();
  __chkstk_darwin(v5);
  sub_100006A10();
  v6 = v3 + *(sub_1000C9D2C() + 44);
  v7 = type metadata accessor for ForecastEntry(0);
  v8 = *(v7 + 24);
  v9 = (v6 + v8 + *(type metadata accessor for WidgetContext(0) + 48));
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = type metadata accessor for BackgroundView(0);
  v13 = v12[5];
  sub_1000C9A9C(v6 + *(v7 + 28), v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001B014(v1, v0 + v13);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v0 + v13, v14, 1, v15);
  *v0 = v10;
  *(v0 + 8) = v11;
  v16 = v12[6];
  *(v0 + v16) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v17 = v0 + v12[7];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;

  sub_100006A20();
}

double sub_1000C8F1C@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView(0) + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_1000C9CA4(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

uint64_t sub_1000C9050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v9);
  sub_100019AE8();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

unint64_t sub_1000C9148()
{
  result = qword_100135520;
  if (!qword_100135520)
  {
    sub_100002ABC(&qword_1001354D8, &qword_1000FA0E8);
    sub_1000C91EC();
    sub_1000C97B8(&qword_100135530, &qword_100131FA8, &qword_1000F2FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135520);
  }

  return result;
}

unint64_t sub_1000C91EC()
{
  result = qword_100135528;
  if (!qword_100135528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135528);
  }

  return result;
}

unint64_t sub_1000C9240()
{
  result = qword_100135538;
  if (!qword_100135538)
  {
    sub_100002ABC(&qword_100135510, &qword_1000FA120);
    sub_1000C92FC();
    sub_1000C9CE0(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135538);
  }

  return result;
}

unint64_t sub_1000C92FC()
{
  result = qword_100135540;
  if (!qword_100135540)
  {
    sub_100002ABC(&qword_100135508, &qword_1000FA118);
    sub_1000C93A0();
    sub_1000C97B8(&qword_100135590, &qword_100135598, &qword_1000FA180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135540);
  }

  return result;
}

unint64_t sub_1000C93A0()
{
  result = qword_100135548;
  if (!qword_100135548)
  {
    sub_100002ABC(&qword_100135500, &qword_1000FA110);
    sub_100002ABC(&qword_1001354F0, &qword_1000FA100);
    type metadata accessor for BackgroundView(255);
    sub_1000C94D0();
    sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView, &unk_1000F1290);
    swift_getOpaqueTypeConformance2();
    sub_1000C97B8(&qword_100135580, &qword_100135588, &qword_1000FA178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135548);
  }

  return result;
}

unint64_t sub_1000C94D0()
{
  result = qword_100135550;
  if (!qword_100135550)
  {
    sub_100002ABC(&qword_1001354F0, &qword_1000FA100);
    sub_1000EAF44();
    sub_100002ABC(&qword_100135558, &qword_1000FA168);
    sub_100002ABC(&qword_100135560, &qword_1000FA170);
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView, &protocol conformance descriptor for SunriseSunsetView);
    sub_1000C9640();
    sub_1000C96FC();
    swift_getOpaqueTypeConformance2();
    sub_1000C97B8(&qword_100135530, &qword_100131FA8, &qword_1000F2FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135550);
  }

  return result;
}

unint64_t sub_1000C9640()
{
  result = qword_100135570;
  if (!qword_100135570)
  {
    sub_100002ABC(&qword_100135558, &qword_1000FA168);
    sub_1000C96FC();
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView, &protocol conformance descriptor for SunriseSunsetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135570);
  }

  return result;
}

unint64_t sub_1000C96FC()
{
  result = qword_100135578;
  if (!qword_100135578)
  {
    sub_100002ABC(&qword_100135560, &qword_1000FA170);
    sub_1000C9CE0(&qword_100135568, &type metadata accessor for SunriseSunsetView, &protocol conformance descriptor for SunriseSunsetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135578);
  }

  return result;
}

uint64_t sub_1000C97B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C980C()
{
  result = qword_1001355A0;
  if (!qword_1001355A0)
  {
    sub_100002ABC(&qword_100135518, &unk_1000FA128);
    sub_1000C9240();
    sub_100002ABC(&qword_1001354D8, &qword_1000FA0E8);
    type metadata accessor for BackgroundView(255);
    sub_1000C9148();
    sub_1000C9CE0(&qword_100130678, type metadata accessor for BackgroundView, &unk_1000F1290);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355A0);
  }

  return result;
}

uint64_t sub_1000C99BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA0B4();
  *a1 = result;
  return result;
}

uint64_t sub_1000C99EC(uint64_t a1, uint64_t a2)
{
  sub_100002A10(&qword_100135500, &qword_1000FA110);
  sub_100026C1C();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000C9A50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006A38(a1, a2, a3, a4);
  sub_100026C1C();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1000C9A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C9B08(uint64_t a1)
{
  v2 = type metadata accessor for ForecastEntry.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C9B78()
{
  result = qword_1001355B0;
  if (!qword_1001355B0)
  {
    sub_100002ABC(&qword_1001355B8, &qword_1000FA388);
    sub_1000C9BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355B0);
  }

  return result;
}

unint64_t sub_1000C9BFC()
{
  result = qword_1001355C0;
  if (!qword_1001355C0)
  {
    sub_100002ABC(&qword_1001355C8, &qword_1000FA390);
    sub_1000C980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355C0);
  }

  return result;
}

uint64_t sub_1000C9CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C9D2C()
{

  return type metadata accessor for SunriseSunsetContentView(0);
}

uint64_t sub_1000C9D48@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C9A50(v1 + a1, v2, v3, v4);
}

uint64_t sub_1000C9D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1000E9F14();
}

uint64_t sub_1000C9DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_100002A10(&qword_1001355D0, &qword_1000FA468);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_100002A10(&qword_1001355D8, &qword_1000FA470);
  sub_1000090D4();
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  sub_100002A10(&qword_1001355E0, &unk_1000FA478);
  sub_1000090D4();
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v50 = &v49 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v56 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for SunEventsContentView(0);
  sub_1000CA3DC(&qword_1001355E8, type metadata accessor for SunEventsContentView, &unk_1000F1458);
  sub_1000CA3DC(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_1000CA424();
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
  v46(v45, enum case for WidgetFamily.accessoryCircular(_:), v38);
  v46(v45 + v42, enum case for WidgetFamily.accessoryInline(_:), v38);
  v56 = v36;
  v57 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  sub_1000EA454();

  return (*(v54 + 8))(v37, v47);
}

uint64_t sub_1000CA328@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunEventsContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000CA3A4@<X0>(void *a1@<X8>)
{
  result = sub_1000C9DA8();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CA3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000CA424()
{
  result = qword_1001355F0;
  if (!qword_1001355F0)
  {
    sub_100002ABC(&qword_1001355D0, &qword_1000FA468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355F0);
  }

  return result;
}

uint64_t sub_1000CA48C()
{
  sub_100002ABC(&qword_1001355E0, &unk_1000FA478);
  sub_100002ABC(&qword_1001355D8, &qword_1000FA470);
  sub_100002ABC(&qword_1001355D0, &qword_1000FA468);
  sub_1000CA424();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CA598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_100002A10(&qword_1001355F8, &qword_1000FA540);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_100002A10(&qword_100135600, &qword_1000FA548);
  sub_1000090D4();
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  sub_100002A10(&qword_100135608, &unk_1000FA550);
  sub_1000090D4();
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v50 = &v49 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v56 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for UVIndexContentView(0);
  sub_1000CAB7C(&qword_100135610, type metadata accessor for UVIndexContentView, &unk_1000EEF74);
  sub_1000CAB7C(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_1000CABC4();
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
  v46(v45, enum case for WidgetFamily.accessoryCircular(_:), v38);
  v46(v45 + v42, enum case for WidgetFamily.accessoryInline(_:), v38);
  v56 = v36;
  v57 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  sub_1000EA454();

  return (*(v54 + 8))(v37, v47);
}

uint64_t sub_1000CAAC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UVIndexContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000CAB44@<X0>(void *a1@<X8>)
{
  result = sub_1000CA550();
  *a1 = 0xD000000000000026;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CAB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000CABC4()
{
  result = qword_100135618;
  if (!qword_100135618)
  {
    sub_100002ABC(&qword_1001355F8, &qword_1000FA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135618);
  }

  return result;
}

uint64_t sub_1000CAC2C()
{
  sub_100002ABC(&qword_100135608, &unk_1000FA550);
  sub_100002ABC(&qword_100135600, &qword_1000FA548);
  sub_100002ABC(&qword_1001355F8, &qword_1000FA540);
  sub_1000CABC4();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CACF0@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = type metadata accessor for InstantWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v3);
  sub_100006A10();
  v6 = v5 - v4;
  sub_1000EBA94();
  sub_1000090D4();
  v108 = v8;
  v109 = v7;
  __chkstk_darwin(v7);
  sub_100006A10();
  v107 = v10 - v9;
  sub_1000E9184();
  sub_1000090D4();
  v105 = v12;
  v106 = v11;
  __chkstk_darwin(v11);
  sub_1000091AC();
  v101 = v13 - v14;
  __chkstk_darwin(v15);
  v102 = &v96[-v16];
  sub_1000E8784();
  sub_1000090D4();
  v103 = v18;
  v104 = v17;
  __chkstk_darwin(v17);
  sub_1000091AC();
  v99 = v19 - v20;
  __chkstk_darwin(v21);
  v100 = &v96[-v22];
  v23 = type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v24);
  sub_100006A10();
  v27 = v26 - v25;
  type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v28);
  sub_1000091AC();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &v96[-v33];
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v35);
  sub_100006A10();
  v38 = (v37 - v36);
  v39 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v39 + 28), v38, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v64 = v110;
    if (*v38)
    {
      v65 = 1;
    }

    else
    {
      v65 = 2;
    }

    v66 = v109;
    return sub_1000028A0(v64, v65, 2, v66);
  }

  sub_100032F34(v38, v34, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v34, v31, type metadata accessor for WeatherDataViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100032F34(v31, v27, type metadata accessor for AggregateWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v98 = v34;
    v67 = sub_1000E9F64();
    sub_100008CB8(v67, qword_100145C10);
    v68 = sub_1000E9F44();
    v69 = sub_1000EC1B4();
    if (sub_100009178(v69))
    {
      *swift_slowAlloc() = 0;
      sub_100009134(&_mh_execute_header, v70, v71, "Making UltraViolet complication view model entry from aggregate weather");
    }

    v72 = *(v23 + 20);
    sub_1000E9A34();
    v73 = sub_1000E9984();
    v75 = v74;
    v76 = 1;
    if (v73 != sub_1000E9984() || v75 != v77)
    {
      v76 = sub_1000EC5D4();
    }

    v97 = v76;

    v79 = v100;
    sub_1000E9A74();
    v54 = v27 + *(v23 + 24);
    v80 = v102;
    sub_1000EB634();
    v81 = sub_1000CB50C();
    v82(v81);
    v84 = v105;
    v83 = v106;
    v85 = sub_1000CB55C();
    v86(v85);
    sub_1000CB52C();
    (*(v84 + 8))(v80, v83);
    (*(v72 + 8))(v79, v23);
    v62 = type metadata accessor for AggregateWeatherViewModel;
    v63 = v27;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100032F34(v31, v6, type metadata accessor for InstantWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v98 = v34;
    v41 = sub_1000E9F64();
    v42 = sub_100008CB8(v41, qword_100145C10);
    v43 = sub_1000E9F44();
    v44 = sub_1000EC1B4();
    if (sub_100009178(v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v42, "Making UltraViolet complication view model entry from interpolated instant weather", v45, 2u);
    }

    v46 = *(v2 + 20);
    sub_1000E9A34();
    v47 = sub_1000E9984();
    v49 = v48;
    v50 = 1;
    if (v47 != sub_1000E9984() || v49 != v51)
    {
      v50 = sub_1000EC5D4();
    }

    v97 = v50;

    v53 = v100;
    sub_1000E9A74();
    v54 = v6 + *(v2 + 24);
    v55 = v102;
    sub_1000EB634();
    v56 = sub_1000CB50C();
    v57(v56);
    v59 = v105;
    v58 = v106;
    v60 = sub_1000CB55C();
    v61(v60);
    sub_1000CB52C();
    (*(v59 + 8))(v55, v58);
    (*(v46 + 8))(v53, v47);
    v62 = type metadata accessor for InstantWeatherViewModel;
    v63 = v6;
LABEL_28:
    sub_100032F94(v63, v62);
    sub_100032F94(v98, type metadata accessor for WeatherDataViewModel);
    v87 = v110;
    v88 = v54;
    v89 = v109;
    (*(v108 + 32))(v110, v88, v109);
    v64 = v87;
    v65 = 0;
    v66 = v89;
    return sub_1000028A0(v64, v65, 2, v66);
  }

  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v91 = sub_1000E9F64();
  sub_100008CB8(v91, qword_100145C10);
  v92 = sub_1000E9F44();
  v93 = sub_1000EC194();
  if (sub_100009178(v93))
  {
    *swift_slowAlloc() = 0;
    sub_100009134(&_mh_execute_header, v94, v95, "Expected aggregate weather or instant but got sunrise/sunset");
  }

  sub_100032F94(v34, type metadata accessor for WeatherDataViewModel);
  sub_1000028A0(v110, 1, 2, v109);
  return sub_100032F94(v31, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_1000CB52C()
{
  v4 = *(v2 - 188) & 1;

  return UltravioletComplicationViewModel.init(localWeather:timeZone:current:daily:hourly:)(v4, v0, v1, 0, 0);
}

uint64_t sub_1000CB574()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.Forecast(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_1000CB690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  sub_100002A10(&qword_100135620, &qword_1000FA608);
  sub_1000090D4();
  v60 = v5;
  v61 = v6;
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v64 = sub_100002A10(&qword_100135628, &qword_1000FA610);
  sub_1000090D4();
  v66 = v10;
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  sub_100002A10(&qword_100135630, &qword_1000FA618);
  sub_1000090D4();
  v67 = v14;
  v68 = v15;
  sub_100009204();
  __chkstk_darwin(v16);
  v62 = &v60 - v17;
  sub_100002A10(&qword_100135638, &qword_1000FA620);
  sub_1000090D4();
  v69 = v18;
  v70 = v19;
  sub_100009204();
  __chkstk_darwin(v20);
  v65 = &v60 - v21;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v22 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for WeatherIntent();
  v72 = v22;
  v63 = v22;
  type metadata accessor for WidgetContentView(0);
  sub_1000CBF18(&qword_100135640, type metadata accessor for WidgetContentView, &unk_1000F0D70);
  sub_1000CBF18(&qword_10012F6C8, type metadata accessor for WeatherTimelineProvider, &unk_1000FAAC8);

  sub_1000EBCC4();
  v23 = sub_1000EA354();
  v27 = sub_100015CA8(v23, v24, v25, v26);
  v29 = v28;
  v31 = v30;
  v32 = sub_1000CBF60();
  v33 = v60;
  sub_1000EA474();
  sub_1000058EC(v27, v29, v31 & 1);

  (*(v61 + 8))(v9, v33);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v34 = sub_1000EBC44();
  sub_1000090D4();
  v36 = v35;
  v38 = *(v37 + 72);
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000F7210;
  v41 = v40 + v39;
  v42 = *(v36 + 104);
  v42(v41, enum case for WidgetFamily.systemSmall(_:), v34);
  v42(v41 + v38, enum case for WidgetFamily.systemMedium(_:), v34);
  v42(v41 + 2 * v38, enum case for WidgetFamily.systemLarge(_:), v34);
  v72 = v33;
  v73 = v32;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v62;
  v45 = v64;
  sub_1000EA454();

  v46 = v45;
  (*(v66 + 8))(v13, v45);
  v47 = sub_1000EA354();
  v51 = sub_100015CA8(v47, v48, v49, v50);
  v53 = v52;
  LOBYTE(v36) = v54;
  v72 = v46;
  v73 = OpaqueTypeConformance2;
  sub_100015C48();
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v65;
  v57 = v67;
  sub_1000EA444();
  sub_1000058EC(v51, v53, v36 & 1);

  (*(v68 + 8))(v44, v57);
  v72 = v57;
  v73 = v55;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v58 = v69;
  sub_1000EA494();

  return (*(v70 + 8))(v56, v58);
}

uint64_t sub_1000CBCD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WidgetContentView(0);
  sub_1000159C8(a1, a2 + v4[9]);
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(a2 + v4[7]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = KeyPath;
  v6[8] = 0;
  v7 = (a2 + v4[10]);
  type metadata accessor for CGRect(0);
  v8 = sub_1000EC014();
  *(v8 + 16) = 12;
  bzero((v8 + 32), 0x180uLL);
  sub_100002A10(&unk_10012EE48, qword_1000EED10);
  sub_1000EAA84();
  *v7 = v16;
  v7[1] = v17;
  v9 = v4[11];
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  result = sub_100002750(v12, v14);
  *(a2 + v9) = result;
  return result;
}

uint64_t sub_1000CBEE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CB574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CBF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000CBF60()
{
  result = qword_100135648;
  if (!qword_100135648)
  {
    sub_100002ABC(&qword_100135620, &qword_1000FA608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135648);
  }

  return result;
}

uint64_t sub_1000CBFE0()
{
  v0 = sub_100002ABC(&qword_100135638, &qword_1000FA620);
  v1 = sub_100002ABC(&qword_100135630, &qword_1000FA618);
  v2 = sub_100002ABC(&qword_100135628, &qword_1000FA610);
  v3 = sub_100002ABC(&qword_100135620, &qword_1000FA608);
  sub_1000CBF60();
  sub_100015C78();
  sub_100015CC8(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  sub_100015C48();
  sub_100015CC8(v12, v13, v14, v15, v16, v17, v18, v19, v2);
  sub_100015C60();
  v35 = sub_100015CC8(v20, v21, v22, v23, v24, v25, v26, v27, v1);
  return sub_100015CC8(v35, &opaque type descriptor for <<opaque return type of WidgetConfiguration.enableContentMarginsForFirstParty(_:)>>, v28, v29, v30, v31, v32, v33, v0);
}

uint64_t sub_1000CC0DC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100002A10(&qword_100135650, &unk_1000FA9D0);
  sub_1000090D4();
  v20 = v2;
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_100002A10(&qword_100135658, &unk_1000FA780);
  sub_1000090D4();
  v21 = v7;
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  sub_100002A10(&qword_100135660, &qword_1000FA9E0);
  sub_1000090D4();
  v22 = v11;
  v23 = v12;
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  swift_getKeyPath();
  sub_1000BB17C();
  sub_1000EBC84();
  sub_1000EA354();
  v15 = sub_1000CC738();
  sub_1000EA464();

  (*(v20 + 8))(v5, v1);
  sub_1000EA354();
  v25 = v1;
  v26 = v15;
  sub_100084FDC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EA434();

  (*(v21 + 8))(v10, v6);
  v25 = v6;
  v26 = OpaqueTypeConformance2;
  sub_1000CC860();
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_1000EA484();
  return (*(v23 + 8))(v14, v17);
}

uint64_t sub_1000CC484@<X0>(uint64_t a1@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v2 = qword_100145E00;
  result = sub_1000EA7F4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1000CC564@<X0>(uint64_t a1@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v2 = qword_100145E00;
  result = sub_1000EA7F4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1000CC640@<X0>(uint64_t a2@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v3 = qword_100145E00;
  result = sub_1000EA7F4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_1000CC738()
{
  result = qword_100135668;
  if (!qword_100135668)
  {
    sub_100002ABC(&qword_100135650, &unk_1000FA9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135668);
  }

  return result;
}

uint64_t sub_1000CC79C()
{
  sub_100002ABC(&qword_100135660, &qword_1000FA9E0);
  sub_100002ABC(&qword_100135658, &unk_1000FA780);
  sub_100002ABC(&qword_100135650, &unk_1000FA9D0);
  sub_1000CC738();
  sub_100084FDC();
  swift_getOpaqueTypeConformance2();
  sub_1000CC860();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CC878@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v99 = type metadata accessor for InstantWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v2);
  sub_10004B3F0();
  v4 = v3;
  v5 = sub_100002A10(&qword_100135670, &qword_1000FA7B8);
  __chkstk_darwin(v5 - 8);
  v111 = v96 - v6;
  sub_10000921C();
  v117 = sub_1000EB434();
  sub_1000090D4();
  v112 = v7;
  __chkstk_darwin(v8);
  sub_10004B3F0();
  v116 = v9;
  sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  sub_1000090D4();
  v109 = v11;
  v110 = v10;
  __chkstk_darwin(v10);
  sub_1000091AC();
  v103 = v12 - v13;
  __chkstk_darwin(v14);
  v106 = v96 - v15;
  sub_100002A10(&qword_100135678, &unk_1000FA7C0);
  sub_1000090D4();
  v107 = v17;
  v108 = v16;
  __chkstk_darwin(v16);
  sub_1000091AC();
  v102 = v18 - v19;
  __chkstk_darwin(v20);
  v114 = v96 - v21;
  sub_10000921C();
  sub_1000E9134();
  sub_1000090D4();
  v104 = v23;
  v105 = v22;
  __chkstk_darwin(v22);
  sub_10004B3F0();
  v100 = v24;
  sub_10000921C();
  v115 = sub_1000E8784();
  sub_1000090D4();
  v101 = v25;
  __chkstk_darwin(v26);
  sub_1000091AC();
  v113 = v27 - v28;
  __chkstk_darwin(v29);
  v31 = v96 - v30;
  v32 = type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v33);
  sub_10004B3F0();
  v35 = v34;
  v36 = sub_10000921C();
  type metadata accessor for WeatherDataViewModel(v36);
  sub_1000069E4();
  __chkstk_darwin(v37);
  sub_1000091AC();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  v43 = v96 - v42;
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v44);
  v46 = v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v47 + 28), v46, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v70 = v118;
    if (*v46)
    {
      v71 = 1;
    }

    else
    {
      v71 = 2;
    }

    v72 = v117;
    return sub_1000028A0(v70, v71, 2, v72);
  }

  sub_100032F34(v46, v43, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v43, v40, type metadata accessor for WeatherDataViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v98 = v43;
    sub_100032F34(v40, v35, type metadata accessor for AggregateWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v73 = sub_1000E9F64();
    sub_100008CB8(v73, qword_100145C10);
    v74 = sub_1000E9F44();
    v75 = sub_1000EC1B4();
    if (os_log_type_enabled(v74, v75))
    {
      *swift_slowAlloc() = 0;
      sub_1000CD368(&_mh_execute_header, v76, v77, "Making Wind complication view model entry from aggregate weather");
    }

    v78 = v35 + *(v32 + 20);
    sub_1000E9A34();
    sub_1000E9984();
    if (v46 != sub_1000CD348() || v78 != v79)
    {
      LODWORD(v74) = sub_1000EC5D4();
    }

    v96[2] = v74;

    sub_1000E9A74();
    v81 = v100;
    sub_1000EB624();
    v82 = v114;
    sub_1000E9124();
    LODWORD(v99) = sub_1000E9104();
    v83 = v106;
    sub_1000E9114();
    v84 = v101;
    (*(v101 + 16))(v113, v31, v115);
    v85 = sub_1000EADC4();
    sub_1000028A0(v111, 1, 1, v85);
    v86 = v107;
    v87 = *(v107 + 16);
    v97 = v31;
    v88 = v108;
    v87(v102, v82, v108);
    v89 = v109;
    v90 = sub_1000CD334();
    v91 = v110;
    v92(v90);
    sub_1000CD320(&v119);
    sub_1000EB424();
    (*(v89 + 8))(v83, v91);
    (*(v86 + 8))(v114, v88);
    (*(v104 + 8))(v81, v105);
    (*(v84 + 8))(v97, v115);
    v68 = type metadata accessor for AggregateWeatherViewModel;
    v69 = &v120;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v98 = v43;
    sub_100032F34(v40, v4, type metadata accessor for InstantWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v49 = sub_1000E9F64();
    sub_100008CB8(v49, qword_100145C10);
    v50 = sub_1000E9F44();
    v51 = sub_1000EC1B4();
    if (os_log_type_enabled(v50, v51))
    {
      *swift_slowAlloc() = 0;
      sub_1000CD368(&_mh_execute_header, v52, v53, "Making Wind complication view model entry from interpolated instant weather");
    }

    v54 = v4 + *(v99 + 20);
    sub_1000E9A34();
    sub_1000E9984();
    if (v46 != sub_1000CD348() || v54 != v55)
    {
      LODWORD(v50) = sub_1000EC5D4();
    }

    v96[4] = v50;

    v97 = v31;
    sub_1000E9A74();
    v57 = v100;
    sub_1000EB624();
    v58 = v114;
    sub_1000E9124();
    LODWORD(v99) = sub_1000E9104();
    v59 = v106;
    sub_1000E9114();
    v60 = v101;
    (*(v101 + 16))(v113, v31, v115);
    v61 = sub_1000EADC4();
    sub_1000028A0(v111, 1, 1, v61);
    v62 = v107;
    v63 = v108;
    (*(v107 + 16))(v102, v58, v108);
    v64 = v109;
    v65 = sub_1000CD334();
    v66 = v110;
    v67(v65);
    sub_1000CD320(&v120);
    sub_1000EB424();
    (*(v64 + 8))(v59, v66);
    (*(v62 + 8))(v114, v63);
    (*(v104 + 8))(v57, v105);
    (*(v60 + 8))(v97, v115);
    v68 = type metadata accessor for InstantWeatherViewModel;
    v69 = &v119;
LABEL_28:
    sub_100032F94(*(v69 - 32), v68);
    sub_100032F94(v98, type metadata accessor for WeatherDataViewModel);
    v94 = v117;
    v93 = v118;
    (*(v112 + 32))(v118, v116, v117);
    v70 = v93;
    v71 = 0;
    v72 = v94;
    return sub_1000028A0(v70, v71, 2, v72);
  }

  sub_100032F94(v43, type metadata accessor for WeatherDataViewModel);
  sub_1000028A0(v118, 1, 2, v117);
  return sub_100032F94(v40, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_1000CD348()
{

  return sub_1000E9984();
}

void sub_1000CD368(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1000CD388()
{
  sub_100006A58();
  sub_1000EA3B4();
  sub_1000090D4();
  __chkstk_darwin(v2);
  sub_1000CFFA0();
  v4 = __chkstk_darwin(v3);
  v12 = sub_1000CFF4C(v4, v5, v6, v7, v8, v9, v10, v11, v23);
  v1(v12);
  v13 = sub_1000CFFD0();
  v14 = v0(v13);
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v14 != enum case for ContentSizeCategory.extraSmall(_:) && v14 != enum case for ContentSizeCategory.small(_:) && v14 != enum case for ContentSizeCategory.medium(_:) && v14 != enum case for ContentSizeCategory.large(_:) && v14 != enum case for ContentSizeCategory.extraLarge(_:) && v14 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v14 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v19 = sub_1000CFFE4();
    v20(v19);
  }

  v16 = sub_1000D0004();
  v1(v16);
  v17 = sub_100095764();
  v18 = v0(v17);
  if (v18 != v15 && v18 != enum case for ContentSizeCategory.small(_:) && v18 != enum case for ContentSizeCategory.medium(_:) && v18 != enum case for ContentSizeCategory.large(_:) && v18 != enum case for ContentSizeCategory.extraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v18 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v21 = sub_100095764();
    v22(v21);
  }

  sub_100006A20();
}

void sub_1000CD72C()
{
  sub_100006A58();
  sub_1000EA3B4();
  sub_1000090D4();
  __chkstk_darwin(v2);
  sub_1000CFFA0();
  v4 = __chkstk_darwin(v3);
  v12 = sub_1000CFF4C(v4, v5, v6, v7, v8, v9, v10, v11, v23);
  v1(v12);
  v13 = sub_1000CFFD0();
  v14 = v0(v13);
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v14 != enum case for ContentSizeCategory.extraSmall(_:) && v14 != enum case for ContentSizeCategory.small(_:) && v14 != enum case for ContentSizeCategory.medium(_:) && v14 != enum case for ContentSizeCategory.large(_:) && v14 != enum case for ContentSizeCategory.extraLarge(_:) && v14 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v14 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v19 = sub_1000CFFE4();
    v20(v19);
  }

  v16 = sub_1000D0004();
  v1(v16);
  v17 = sub_100095764();
  v18 = v0(v17);
  if (v18 != v15 && v18 != enum case for ContentSizeCategory.small(_:) && v18 != enum case for ContentSizeCategory.medium(_:) && v18 != enum case for ContentSizeCategory.large(_:) && v18 != enum case for ContentSizeCategory.extraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v18 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v21 = sub_100095764();
    v22(v21);
  }

  sub_100006A20();
}

void sub_1000CDAD0()
{
  sub_100006A58();
  sub_1000EA3B4();
  sub_1000090D4();
  __chkstk_darwin(v2);
  sub_1000CFFA0();
  v4 = __chkstk_darwin(v3);
  v12 = sub_1000CFF4C(v4, v5, v6, v7, v8, v9, v10, v11, v23);
  v1(v12);
  v13 = sub_1000CFFD0();
  v14 = v0(v13);
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v14 != enum case for ContentSizeCategory.extraSmall(_:) && v14 != enum case for ContentSizeCategory.small(_:) && v14 != enum case for ContentSizeCategory.medium(_:) && v14 != enum case for ContentSizeCategory.large(_:) && v14 != enum case for ContentSizeCategory.extraLarge(_:) && v14 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v14 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v14 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v19 = sub_1000CFFE4();
    v20(v19);
  }

  v16 = sub_1000D0004();
  v1(v16);
  v17 = sub_100095764();
  v18 = v0(v17);
  if (v18 != v15 && v18 != enum case for ContentSizeCategory.small(_:) && v18 != enum case for ContentSizeCategory.medium(_:) && v18 != enum case for ContentSizeCategory.large(_:) && v18 != enum case for ContentSizeCategory.extraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v18 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v21 = sub_100095764();
    v22(v21);
  }

  sub_100006A20();
}

uint64_t sub_1000CDE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v145 = a3;
  v146 = a1;
  v10 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  __chkstk_darwin(v10 - 8);
  sub_10000D45C();
  v137 = v11;
  sub_10004B6F4();
  __chkstk_darwin(v12);
  v138 = &v123 - v13;
  sub_10004B6F4();
  __chkstk_darwin(v14);
  v135 = &v123 - v15;
  sub_10004B6F4();
  __chkstk_darwin(v16);
  v143 = &v123 - v17;
  v141 = sub_1000EA3B4();
  sub_1000090D4();
  v130 = v18;
  __chkstk_darwin(v19);
  sub_100006A10();
  v139 = v21 - v20;
  v22 = sub_1000EBC44();
  sub_1000090D4();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_10000D45C();
  v142 = v26;
  sub_10004B6F4();
  __chkstk_darwin(v27);
  v29 = &v123 - v28;
  v30 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v147 = *(v24 + 104);
  v148 = v24 + 104;
  v147(&v123 - v28, enum case for WidgetFamily.systemMedium(_:), v22);
  sub_100043230();
  v151 = v30;
  sub_1000EBFB4();
  sub_1000CFF80();
  v140 = v24;
  v149 = *(v24 + 8);
  v150 = v24 + 8;
  v149(v29, v22);
  if (v153 == v152)
  {
    v136 = 1;
  }

  else
  {
    sub_1000CD72C();
    v136 = v31;
  }

  sub_1000CFFF8();
  v32();
  sub_1000CFF28();
  sub_1000CFF80();
  v33 = sub_1000CFF70();
  v34(v33);
  sub_100074A7C();
  v35 = !v85 || *(v145 + 48) - 6 < 0xFFFFFFFD;
  v134 = v35;
  sub_1000CFFF8();
  v36();
  sub_1000CFF28();
  sub_1000CFF80();
  v37 = sub_1000CFF70();
  v38(v37);
  v132 = v153;
  v131 = v152;
  v133 = sub_1000CE9B8(v6);
  v39 = *(v6 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize);
  v129 = v39;
  v40 = v6;
  if ((v39 - 2) >= 2)
  {
    if (v39)
    {
      v41 = sub_1000CEF54();
    }

    else
    {
      v41 = sub_1000CECDC();
    }
  }

  else
  {
    v41 = sub_1000CF2D0();
  }

  v42 = v41;
  v144 = enum case for WidgetFamily.systemLarge(_:);
  sub_1000CFFF8();
  v43();
  sub_1000CFF28();
  sub_1000CFF80();
  v44 = sub_1000CFF70();
  v45(v44);
  sub_100074A7C();
  if (v85 && *(v145 + 48) - 2 <= 3)
  {
    v46 = __OFSUB__(v42--, 1);
    if (v46)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  v47 = sub_1000CFFBC();
  v48(v47);
  sub_1000CFF28();
  sub_1000CFF80();
  v49 = sub_1000CFF70();
  v50(v49);
  sub_100074A7C();
  v128 = a2;
  if (v85)
  {
    v40 = v6;
    if (sub_1000CF650())
    {
      v46 = __OFSUB__(v42--, 1);
      if (v46)
      {
        goto LABEL_64;
      }
    }
  }

  v127 = a4;
  sub_1000CFFF8();
  v51();
  sub_1000CFF28();
  sub_1000CFF80();
  v52 = sub_1000CFF70();
  v53(v52);
  v55 = v152;
  v54 = v153;
  v56 = *(v146 + *(type metadata accessor for AggregateWeatherViewModel(0) + 32));

  v126 = v42;
  if (v54 != v55)
  {
    v40 = sub_1000D1344(1, v56);
    v65 = v64;
    v67 = v66;
    v69 = v68;
    swift_unknownObjectRetain();
    v71 = sub_10009BF2C(v42, v40, v65, v67, v69);
    a2 = v72;
    a4 = v73;
    if (v73)
    {
      v124 = v70;
      v78 = sub_1000EC5F4();
      swift_unknownObjectRetain_n();
      v125 = v78;
      v79 = swift_dynamicCastClass();
      if (!v79)
      {
        swift_unknownObjectRelease();
        v79 = &_swiftEmptyArrayStorage;
      }

      v80 = v79[2];

      if (__OFSUB__(a4 >> 1, a2))
      {
        goto LABEL_66;
      }

      if (v80 == (a4 >> 1) - a2)
      {
        v74 = swift_dynamicCastClass();
        if (!v74)
        {
          swift_unknownObjectRelease();
          v61 = &_swiftEmptyArrayStorage;
          goto LABEL_37;
        }

LABEL_36:
        v61 = v74;
LABEL_37:
        v62 = v143;
        v63 = v140;
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

      swift_unknownObjectRelease();
      v70 = v124;
    }

    sub_1000D7DB8(v71, v70, a2, a4);
    goto LABEL_36;
  }

  v40 = sub_10009BF00(v42, v56);
  a2 = v58;
  a4 = v59;
  if ((v59 & 1) == 0)
  {
LABEL_22:
    sub_1000D7DB8(v40, v57, a2, a4);
    v61 = v60;
    v62 = v143;
    v63 = v140;
LABEL_38:
    v77 = v141;
    goto LABEL_39;
  }

  v125 = v57;
  sub_1000EC5F4();
  swift_unknownObjectRetain_n();
  v75 = swift_dynamicCastClass();
  if (!v75)
  {
    swift_unknownObjectRelease();
    v75 = &_swiftEmptyArrayStorage;
  }

  v76 = v75[2];

  if (__OFSUB__(a4 >> 1, a2))
  {
    goto LABEL_65;
  }

  if (v76 != (a4 >> 1) - a2)
  {
LABEL_67:
    swift_unknownObjectRelease();
    v57 = v125;
    goto LABEL_22;
  }

  v61 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v62 = v143;
  v63 = v140;
  v77 = v141;
  if (v61)
  {
    goto LABEL_40;
  }

  v61 = &_swiftEmptyArrayStorage;
LABEL_39:
  swift_unknownObjectRelease();
LABEL_40:
  v141 = v61;

  LODWORD(v125) = sub_1000CFBB8();
  v81 = v130;
  v82 = v139;
  (*(v130 + 16))(v139, v6 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory, v77);
  v83 = (*(v81 + 88))(v82, v77);
  if (v83 == enum case for ContentSizeCategory.extraLarge(_:))
  {
    v84 = 36;
  }

  else
  {
    v85 = v83 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v83 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    if (v85)
    {
      v84 = 40;
    }

    else
    {
      (*(v81 + 8))(v139, v77);
      v84 = 32;
    }
  }

  v139 = v84;
  v86 = v62;
  v130 = sub_1000EA6E4();
  if (v129)
  {
    v87 = sub_1000EA6F4();
    v88 = sub_1000CFFBC();
    v89(v88);

    sub_1000CFF28();
    sub_1000CFF80();
    v90 = sub_1000CFF70();
    v91(v90);
    sub_100074A7C();
    if (v85)
    {
      v92 = sub_1000EA5F4();
      goto LABEL_55;
    }
  }

  else
  {
    v87 = sub_1000EA6C4();
    v93 = sub_1000CFFBC();
    v94(v93);

    sub_1000CFF28();
    sub_1000CFF80();
    v95 = sub_1000CFF70();
    v96(v95);
    sub_100074A7C();
    if (!v85)
    {
      v92 = sub_1000EA6F4();
      goto LABEL_55;
    }
  }

  v92 = sub_1000EA5C4();
LABEL_55:
  v97 = v92;

  sub_1000EA664();
  v99 = v98;
  (*(v63 + 16))(v142, v6 + v151, v22);
  v100 = *(v145 + 48);
  LODWORD(v151) = *(v145 + 49);
  LODWORD(v150) = sub_1000CF6EC(v141, v6);

  v101 = sub_1000CF8E0();
  v102 = v135;
  sub_100044E7C();
  v103 = v102;
  v104 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (sub_100005B30(v103, 1, v104) == 1)
  {
    sub_10007EE48(v103);
    v105 = 1;
  }

  else
  {
    sub_1000E8324();
    (*(*(v104 - 8) + 8))(v103, v104);
    v105 = 0;
  }

  sub_1000028A0(v86, v105, 1, v104);
  v106 = v137;
  sub_100045164();
  if (sub_100005B30(v106, 1, v104) == 1)
  {

    sub_10007EE48(v106);
    v107 = 1;
    v108 = v138;
  }

  else
  {
    v109 = v106;
    v108 = v138;
    sub_1000E8324();

    v110 = v109;
    v63 = v140;
    (*(*(v104 - 8) + 8))(v110, v104);
    v107 = 0;
  }

  sub_1000028A0(v108, v107, 1, v104);
  v111 = v132 == v131;
  (*(v63 + 32))(a5, v142, v22);
  v112 = type metadata accessor for DailyViewAttributes(0);
  *(a5 + v112[5]) = v141;
  v113 = (a5 + v112[6]);
  *v113 = v100;
  v113[1] = v151;
  sub_1000D0020(v112[7]);
  sub_1000D0014(*(v114 + 32));
  sub_1000D0014(*(v115 + 36));
  *(a5 + v116[10]) = v101 & 1;
  *(a5 + v116[11]) = v139;
  sub_1000D0014(v116[12]);
  *(a5 + v117[13]) = v134;
  *(a5 + v117[14]) = v111;
  sub_1000D0014(v117[15]);
  sub_1000D0020(*(v118 + 64));
  *(a5 + v119[17]) = v87;
  *(a5 + v119[18]) = v97;
  sub_1000D0020(v119[19]);
  *(a5 + *(v120 + 80)) = v99;
  sub_1000D0020(*(v120 + 84));
  sub_1000CFEB8(v143, a5 + *(v121 + 88));
  return sub_1000CFEB8(v108, a5 + v112[23]);
}

uint64_t sub_1000CE9B8(uint64_t a1)
{
  v2 = sub_1000EA3B4();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EBC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 104);
  v10(v9, enum case for WidgetFamily.systemLarge(_:), v6);
  sub_100043230();
  v30 = a1;
  sub_1000EBFB4();
  sub_1000EBFB4();
  v11 = *(v7 + 8);
  v11(v9, v6);
  if (v32 == v31)
  {
    v12 = v28;
    v13 = v29;
    (*(v29 + 104))(v5, enum case for ContentSizeCategory.extraLarge(_:), v28);
    sub_1000CD388();
    v15 = v14;
    (*(v13 + 8))(v5, v12);
    v16 = (v15 & 1) == 0;
    v17 = 24;
    v18 = 16;
  }

  else
  {
    v27 = v5;
    v19 = v29;
    v10(v9, enum case for WidgetFamily.systemSmall(_:), v6);
    sub_1000EBFB4();
    sub_1000EBFB4();
    v11(v9, v6);
    if (v32 == v31)
    {
      return 4;
    }

    v21 = v19;
    v22 = *(v19 + 104);
    v24 = v27;
    v23 = v28;
    v22(v27, enum case for ContentSizeCategory.large(_:), v28);
    sub_1000CD388();
    v26 = v25;
    (*(v21 + 8))(v24, v23);
    v16 = (v26 & 1) == 0;
    v17 = 14;
    v18 = 12;
  }

  if (v16)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

uint64_t sub_1000CECDC()
{
  v0 = sub_1000EBC44();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000EA3B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 104);
  v7(v6, enum case for ContentSizeCategory.extraExtraLarge(_:), v3);
  sub_1000CD388();
  v9 = v8;
  v10 = *(v4 + 8);
  v10(v6, v3);
  if (v9)
  {
    return 3;
  }

  v7(v6, enum case for ContentSizeCategory.large(_:), v3);
  sub_1000CD388();
  v13 = v12;
  v10(v6, v3);
  if (v13)
  {
    return 4;
  }

  v15 = v16;
  v14 = v17;
  (*(v16 + 104))(v2, enum case for WidgetFamily.systemSmall(_:), v17);
  sub_100043230();
  sub_1000EBFB4();
  sub_1000EBFB4();
  (*(v15 + 8))(v2, v14);
  if (v19 == v18)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000CEF54()
{
  v1 = v0;
  v2 = sub_1000EA3B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EBC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v27 = *(v7 + 104);
  v28 = v7 + 104;
  v27(v9, enum case for WidgetFamily.systemLarge(_:), v6);
  v11 = sub_100043230();
  v30 = v10;
  sub_1000EBFB4();
  v29 = v11;
  sub_1000EBFB4();
  v13 = *(v7 + 8);
  v12 = v7 + 8;
  v26 = v13;
  v13(v9, v6);
  if (v32 == v31)
  {
    v14 = *(v3 + 104);
    v14(v5, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v2);
    sub_1000CD388();
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    if (v16)
    {
      return 2;
    }

    v24 = v12;
    v14(v5, enum case for ContentSizeCategory.extraExtraLarge(_:), v2);
  }

  else
  {
    v24 = v12;
    v14 = *(v3 + 104);
    v14(v5, enum case for ContentSizeCategory.extraExtraLarge(_:), v2);
  }

  sub_1000CD388();
  v19 = v18;
  v25 = v1;
  v20 = *(v3 + 8);
  v20(v5, v2);
  if (v19)
  {
    return 3;
  }

  v14(v5, enum case for ContentSizeCategory.large(_:), v2);
  sub_1000CD388();
  v22 = v21;
  v20(v5, v2);
  if (v22)
  {
    return 4;
  }

  v27(v9, enum case for WidgetFamily.systemSmall(_:), v6);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v26(v9, v6);
  if (v32 == v31)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000CF2D0()
{
  v1 = sub_1000EBC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000EA3B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory;
  v10 = *(v6 + 104);
  v10(v8, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v5);
  v39 = v9;
  v40 = v0;
  sub_1000CD388();
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v12)
  {
    return 3;
  }

  v15 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v16 = *(v2 + 104);
  v33 = enum case for WidgetFamily.systemSmall(_:);
  v34 = v2 + 104;
  v32 = v16;
  v16(v4);
  v17 = sub_100043230();
  v38 = v13;
  v18 = v10;
  v19 = v4;
  v20 = v17;
  v36 = v15;
  sub_1000EBFB4();
  v35 = v20;
  v21 = v19;
  v22 = v18;
  v23 = v38;
  sub_1000EBFB4();
  v24 = *(v2 + 8);
  v37 = v2 + 8;
  v31 = v24;
  v24(v21, v1);
  v25 = enum case for ContentSizeCategory.extraLarge(_:);
  if (v42 == v41)
  {
    v22(v8, enum case for ContentSizeCategory.extraLarge(_:), v5);
    sub_1000CD388();
    v30 = v26;
    v23(v8, v5);
    if (v30)
    {
      return 3;
    }
  }

  v22(v8, v25, v5);
  sub_1000CD388();
  v28 = v27;
  v23(v8, v5);
  if (v28)
  {
    return 4;
  }

  v32(v21, v33, v1);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v31(v21, v1);
  if (v42 == v41)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

BOOL sub_1000CF650()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeScale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 scale];
  v6 = v5;

  return v6 < v3;
}

uint64_t sub_1000CF6EC(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v17 = sub_1000EAFC4();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EB214();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v18 = a1;
  v11 = *(a1 + 16);
  v12 = (v3 + 8);
  while (v11 != v10)
  {
    (*(v7 + 16))(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10++, v6);
    sub_1000EB1E4();
    v13 = sub_1000EAF94();
    (*v12)(v5, v17);
    (*(v7 + 8))(v9, v6);
    if (v13)
    {
      v14 = sub_1000CF8E0();
      return v14 & 1;
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1000CF8E0()
{
  v1 = sub_1000EA3B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBC44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v9 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v9 != enum case for WidgetFamily.systemLarge(_:) && v9 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      result = sub_1000EC464();
      __break(1u);
      return result;
    }

    if (*(v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize))
    {
      v12 = &enum case for ContentSizeCategory.accessibilityMedium(_:);
    }

    else
    {
      v12 = &enum case for ContentSizeCategory.extraLarge(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    goto LABEL_16;
  }

  if (!sub_1000CF650() && *(v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize))
  {
    (*(v2 + 104))(v4, enum case for ContentSizeCategory.extraExtraLarge(_:), v1);
LABEL_16:
    sub_1000CDAD0();
    v10 = v13;
    (*(v2 + 8))(v4, v1);
    return v10 & 1;
  }

LABEL_2:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1000CFBB8()
{
  v0 = sub_1000EA3B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v0);
  sub_1000CDAD0();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

void sub_1000CFCC4()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1000EA3B4();
  sub_1000090D4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100006A10();
  v14 = (v13 - v12);
  v15 = sub_1000EBC44();
  sub_1000090D4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100006A10();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, v7, v15);
  (*(v10 + 16))(v14, v5, v8);
  sub_100026CB4(v21, v14, v3, v1);
  (*(v10 + 8))(v5, v8);
  (*(v17 + 8))(v7, v15);
  sub_100006A20();
}

uint64_t type metadata accessor for DailyViewAttributesFactory(uint64_t a1)
{
  result = qword_1001356A8;
  if (!qword_1001356A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CFEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000CFF28()
{

  return sub_1000EBFB4();
}

void *sub_1000CFF80()
{

  return sub_1000EBFB4();
}

id sub_1000D002C()
{
  v1 = sub_1000E9844();
  swift_allocObject();
  v6 = v1;
  v7 = &protocol witness table for NanoPreferencesSynchronizer;
  v5 = sub_1000E9834();
  sub_1000E9544();
  swift_allocObject();
  sub_1000E9524();
  sub_1000E9514();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WeatherSettingsUnits();
  v2 = objc_msgSendSuper2(&v4, "init");

  return v2;
}

uint64_t sub_1000D0148()
{
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();
}

uint64_t sub_1000D01E8()
{
  sub_100032530();
  sub_1000E93A4();
  *(v0 + 16) = sub_1000E9394();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000D028C;

  return UnitManager.refreshUnitsFromStorage()();
}

uint64_t sub_1000D028C()
{
  sub_100032530();
  sub_1000325B0();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000324E4();

  return v3();
}

uint64_t sub_1000D0404(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1000D04A8;

  return sub_1000D01CC();
}

uint64_t sub_1000D04A8()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_10003246C();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_1000324E4();

  return v6();
}

uint64_t sub_1000D05CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1000EC084();
  sub_1000028A0(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1000FA838;
  v9[5] = v8;
  sub_1000D0E74(0, 0, v6, &unk_1000FA848, v9);
}

uint64_t sub_1000D06DC(void *a1)
{
  v3 = sub_100002A10(&qword_100135788, &qword_1000FA810);
  __chkstk_darwin(v3 - 8);
  sub_1000D1330();
  sub_1000E93A4();
  if (a1)
  {
    v4 = a1;
    sub_1000E9394();
    v5 = v4;
    sub_1000E9584();
    sub_1000E9354();
  }

  else
  {
    sub_1000E9394();
    v6 = sub_1000E9574();
    sub_1000028A0(v1, 1, 1, v6);
    sub_1000E9354();
  }

  return sub_10000D3A8(v1, &qword_100135788, &qword_1000FA810);
}

uint64_t sub_1000D0888()
{
  v1 = sub_100002A10(&qword_100135788, &qword_1000FA810);
  __chkstk_darwin(v1 - 8);
  sub_1000D1330();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9344();

  v2 = sub_1000E9574();
  if (sub_100005B30(v0, 1, v2) == 1)
  {
    sub_10000D3A8(v0, &qword_100135788, &qword_1000FA810);
    return 0;
  }

  else
  {
    v3 = sub_1000E9564();
    (*(*(v2 - 8) + 8))(v0, v2);
  }

  return v3;
}

id sub_1000D0998(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherSettingsUnits();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000D09F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_1000D0A30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100031BC4;

  return sub_1000D0404(v2, v3);
}

uint64_t sub_1000D0ADC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100032444;

  return v6();
}

uint64_t sub_1000D0BC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100032444;

  return sub_1000D0ADC(v2, v3, v4);
}

uint64_t sub_1000D0C88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100031BC4;

  return v7();
}

uint64_t sub_1000D0D70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000D0DB0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_1000D1320(v6);
  *v7 = v8;
  v7[1] = sub_100032444;

  return sub_1000D0C88(a1, v3, v4, v5);
}

uint64_t sub_1000D0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_1000D1140(a3, v22 - v10);
  v12 = sub_1000EC084();
  if (sub_100005B30(v11, 1, v12) == 1)
  {
    sub_10000D3A8(v11, &qword_100130510, &qword_1000F0C70);
  }

  else
  {
    sub_1000EC074();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1000EC064();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1000EBF04() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_10000D3A8(a3, &qword_100130510, &qword_1000F0C70);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D3A8(a3, &qword_100130510, &qword_1000F0C70);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1000D1140(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D11B0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000D11E8()
{
  v0 = swift_task_alloc();
  v1 = sub_1000D1320(v0);
  *v1 = v2;
  v3 = sub_1000325E4(v1);

  return v4(v3);
}

uint64_t sub_1000D1280()
{
  v0 = swift_task_alloc();
  v1 = sub_1000D1320(v0);
  *v1 = v2;
  v3 = sub_1000325E4(v1);

  return v4(v3);
}

unint64_t sub_1000D135C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1000EBF34();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1000EBF84();
      sub_1000D8200();
      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D1410(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = sub_10009C164(0, result, v5);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      sub_1000D7FFC(result, v5, a2, a3);
      sub_1000D8200();
      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D1490()
{
  v0 = sub_1000EB254();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000EB054();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EB384();
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EB274();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB264();
  sub_1000EB374();
  sub_1000EB044();
  sub_1000EB244();
  sub_1000E8604();
  sub_1000EB904();
  v13 = sub_1000EAE84();
  (*(v18 + 8))(v2, v0);
  (*(v17 + 8))(v5, v3);
  (*(v16 + 8))(v8, v6);
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_1000D17B4(void *a1, void *a2)
{
  v5 = sub_1000E94B4();
  v6 = sub_100009210(v5);
  __chkstk_darwin(v6);
  sub_10004B3F0();
  v7 = sub_10000921C();
  v8 = type metadata accessor for AggregateWeatherViewModelFactory(v7);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = sub_1000EB6D4();
  v14 = sub_100009210(v13);
  __chkstk_darwin(v14);
  sub_100006A10();
  sub_1000D819C();
  type metadata accessor for RelevanceProvider();
  *(v2 + 24) = swift_allocObject();
  v15 = v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_eventViewModelFactory;
  sub_1000EB3B4();
  v27 = type metadata accessor for EventViewModelFactory(0);
  v16 = *(v27 + 20);
  v17 = sub_1000EAE64();
  sub_1000A8350(v17);
  *(v15 + v16) = sub_1000EAE54();
  sub_1000EB3B4();
  v18 = OBJC_IVAR____TtC13WeatherWidget12EntryFactory_sunriseSunsetViewModelFactory;
  v19 = sub_100002A10(&qword_100135898, &qword_1000FA8B8);
  sub_1000A8350(v19);
  sub_1000EAEC4();
  sub_1000EB6C4();
  v20 = sub_1000EB864();
  sub_1000A8350(v20);
  *(v2 + v18) = sub_1000EB854();
  sub_100051D3C(a1, v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_appConfigurationManager);
  sub_100051D3C(a2, &v28);
  type metadata accessor for WidgetContextFactory();
  swift_allocObject();
  *(v2 + 16) = sub_1000C1624(&v28);
  sub_100051D3C(a1, &v28);
  sub_100051D3C(&v28, v12 + v9[13]);
  sub_1000EB3B4();
  sub_100008DA8(&v28, v29);
  sub_1000E9804();
  sub_1000EB734();
  v21 = v12 + v9[12];
  sub_1000EB3B4();
  v22 = *(v27 + 20);
  swift_allocObject();
  *(v21 + v22) = sub_1000EAE54();
  sub_1000EBB34();
  v23 = sub_1000EBB84();
  sub_1000A8350(v23);
  v24 = sub_1000EBB74();
  v25 = (v12 + v9[10]);
  v25[3] = v23;
  v25[4] = &protocol witness table for NextHourPrecipitationChartViewModelFactory;
  *v25 = v24;
  sub_100009068(a2);
  sub_100009068(a1);
  sub_100009068(&v28);
  sub_1000D80A8(v12, v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_aggregateWeatherViewModelFactory, type metadata accessor for AggregateWeatherViewModelFactory);
  return v2;
}

uint64_t sub_1000D1AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a3;
  v42 = a2;
  v44 = a4;
  v6 = sub_100002A10(&qword_1001358C0, &unk_1000FA8D0);
  sub_100009210(v6);
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = sub_1000E89B4();
  sub_1000090D4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100006A10();
  v16 = v15 - v14;
  v17 = sub_1000E8CD4();
  sub_1000090D4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100006A10();
  v21 = sub_1000D819C();
  type metadata accessor for WeatherDataOperationResult.Data(v21);
  sub_1000069E4();
  __chkstk_darwin(v22);
  sub_100006A10();
  v25 = (v24 - v23);
  sub_1000D8164();
  sub_1000D7F6C(a1, v25, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v29 = sub_1000D81AC();
    v30(v29);
    v31 = sub_1000D8230();
    sub_1000D1DA0(v31, v32, v33, v34);
LABEL_7:
    (*(v19 + 8))(v4, v17);
LABEL_8:
    v28 = 0;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v35 = sub_1000D81AC();
    v36(v35);
    sub_1000D8230();
    sub_1000D209C(v37, v38, v39);
    goto LABEL_7;
  }

  sub_1000078E0(*v25);

  if (sub_100005B30(v9, 1, v10) != 1)
  {
    (*(v12 + 32))(v16, v9, v10);
    v25 = v44;
    sub_1000D1F20(v16, v42, v43, v44);
    (*(v12 + 8))(v16, v10);
    goto LABEL_8;
  }

  sub_100008E48(v9, &qword_1001358C0, &unk_1000FA8D0);
  v28 = 1;
  v25 = v44;
LABEL_9:
  v40 = type metadata accessor for ForecastEntry(0);
  return sub_1000028A0(v25, v28, 1, v40);
}

uint64_t sub_1000D1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005639C(a1, a3, 0, v10);
  v11 = type metadata accessor for ForecastEntry(0);
  v12 = a4 + v11[6];
  sub_1000C1690(v10, a3, a2);
  sub_100041324(*(v12 + 48), (a4 + v11[5]));
  v13 = sub_1000E8604();
  (*(*(v13 - 8) + 16))(a4, a2, v13);
  sub_1000D80A8(v10, a4 + v11[7], type metadata accessor for AggregateWeatherViewModel);
  type metadata accessor for WeatherDataViewModel(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D1F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for InstantWeatherViewModel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063988(a1, a3, v10);
  v11 = type metadata accessor for ForecastEntry(0);
  v12 = a4 + v11[6];
  sub_1000C1BD4(v10, a3, a2);
  sub_100041324(*(v12 + 48), (a4 + v11[5]));
  v13 = sub_1000E8604();
  (*(*(v13 - 8) + 16))(a4, a2, v13);
  sub_1000D80A8(v10, a4 + v11[7], type metadata accessor for InstantWeatherViewModel);
  type metadata accessor for WeatherDataViewModel(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D209C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a1;
  v52 = a2;
  v44 = a3;
  v47 = sub_1000EAF24();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E8C34();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000EB2B4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000E88D4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v35 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v35 - v16;
  __chkstk_darwin(v15);
  v19 = v35 - v18;
  v20 = sub_1000EAFF4();
  v39 = *(v20 - 8);
  v40 = v20;
  __chkstk_darwin(v20);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8C64();
  sub_1000E8C84();
  v36 = v22;
  sub_1000EAFE4();
  v23 = v50;
  sub_1000EB844();
  v35[1] = *(v23 + 16);
  sub_1000E8C64();
  v24 = v38;
  sub_1000E88C4();
  v25 = *(v9 + 8);
  v25(v19, v8);
  sub_1000E8C64();
  LOBYTE(v22) = sub_1000E8844();
  v25(v17, v8);
  sub_1000E8C64();
  sub_1000E8834();
  v25(v14, v8);
  v26 = v37;
  sub_1000E8C64();
  v27 = v41;
  sub_1000E8824();
  v25(v26, v8);
  v28 = type metadata accessor for ForecastEntry(0);
  v29 = v44;
  v30 = v44 + v28[6];
  v31 = v22 & 1;
  v32 = v49;
  sub_1000C20B4(v24, v31, v27, &_swiftEmptyArrayStorage);
  (*(v45 + 8))(v27, v47);
  (*(v42 + 8))(v24, v43);
  sub_100041324(*(v30 + 48), (v29 + v28[5]));
  (*(v39 + 8))(v36, v40);
  v33 = sub_1000E8604();
  (*(*(v33 - 8) + 16))(v29, v32, v33);
  (*(v46 + 32))(v29 + v28[7], v51, v48);
  type metadata accessor for WeatherDataViewModel(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);
  return swift_storeEnumTagMultiPayload();
}

void *sub_1000D264C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E8CD4();
  sub_1000090D4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100006A10();
  v12 = v11 - v10;
  type metadata accessor for WeatherDataOperationResult.Data(0);
  sub_1000069E4();
  __chkstk_darwin(v13);
  sub_100006A10();
  v16 = (v15 - v14);
  sub_1000D8164();
  sub_1000D7F6C(a1, v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = sub_1000D81E8();
    v21(v20);
    v22 = sub_1000D8224();
    v24 = sub_1000D27E0(v22, v23, a3);
LABEL_6:
    v19 = v24;
    (*(v8 + 8))(v12, v6);
    return v19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v25 = sub_1000D81E8();
    v26(v25);
    v27 = sub_1000D8224();
    v24 = sub_1000D2F60(v27, v28);
    goto LABEL_6;
  }

  v19 = sub_1000D2C74(*v16, a2);

  return v19;
}

char *sub_1000D27E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v34 = a3;
  v4 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_1000EBC44();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000E90D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  v36 = a1;
  sub_1000E8CB4();
  if (sub_100005B30(v15, 1, v16) == 1)
  {
    sub_100008E48(v15, &qword_10012F108, &qword_1000EEF10);
LABEL_7:
    v26 = v36;
    sub_1000E8CA4();
    sub_1000D4F94();
    sub_1000EC104();
    sub_1000EC124();
    v27 = sub_1000EC114();
    (*(v35 + 8))(v6, v4);
    if (v27 >= 5)
    {
      v28 = 5;
    }

    else
    {
      v28 = v27;
    }

    return sub_1000D43AC(v26, v37, v28);
  }

  (*(v17 + 32))(v19, v15, v16);
  (*(v10 + 104))(v12, enum case for PrecipitationRelevancyWindow.default(_:), v9);
  v20 = sub_1000E91C4();
  (*(v10 + 8))(v12, v9);
  if ((v20 & 1) == 0)
  {
    (*(v17 + 8))(v19, v16);
    goto LABEL_7;
  }

  v22 = v31;
  v21 = v32;
  v23 = v33;
  (*(v32 + 16))(v31, v34, v33);
  if ((*(v21 + 88))(v22, v23) == enum case for WidgetFamily.systemLarge(_:))
  {
    v24 = 3;
    v25 = 7;
  }

  else
  {
    (*(v21 + 8))(v22, v23);
    v24 = 1;
    v25 = 20;
  }

  v29 = sub_1000D3260(v36, v37, v24, v25);
  (*(v17 + 8))(v19, v16);
  return v29;
}

void *sub_1000D2C74(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_1000E8604();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForecastEntry(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return &_swiftEmptyArrayStorage;
  }

  v14 = *(sub_1000E89B4() - 8);
  v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v22 = *(v14 + 72);
  v16 = (v3 + 8);
  v17 = &_swiftEmptyArrayStorage;
  do
  {
    sub_1000E8954();
    sub_1000D1F20(v15, v5, v24, v12);
    (*v16)(v5, v23);
    sub_1000D7F6C(v12, v10, type metadata accessor for ForecastEntry);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000312F4();
      v17 = v19;
    }

    v18 = v17[2];
    if (v18 >= v17[3] >> 1)
    {
      sub_1000312F4();
      v17 = v20;
    }

    sub_1000D8108(v12, type metadata accessor for ForecastEntry);
    v17[2] = v18 + 1;
    sub_1000D80A8(v10, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, type metadata accessor for ForecastEntry);
    v15 += v22;
    --v13;
  }

  while (v13);
  return v17;
}

uint64_t sub_1000D2F60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E8604();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForecastEntry(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E85B4();
  sub_1000D209C(v6, a2, v10);
  (*(v4 + 8))(v6, v3);
  sub_100002A10(&qword_1001304D8, &qword_1000FABD0);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000EFAD0;
  sub_1000D80A8(v10, v12 + v11, type metadata accessor for ForecastEntry);
  return v12;
}

uint64_t sub_1000D313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ForecastEntry(0);
  v9 = a4 + v8[6];
  sub_1000C1690(a1, a3, a2);
  sub_100041324(*(v9 + 48), (a4 + v8[5]));
  v10 = sub_1000E8604();
  (*(*(v10 - 8) + 16))(a4, a2, v10);
  sub_1000D7F6C(a1, a4 + v8[7], type metadata accessor for AggregateWeatherViewModel);
  type metadata accessor for WeatherDataViewModel(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ForecastEntry.Model(0);

  return swift_storeEnumTagMultiPayload();
}

char *sub_1000D3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v135 = a4;
  v129 = a3;
  v134 = a2;
  v142 = a1;
  v6 = type metadata accessor for ForecastEntry(0);
  v122 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v147 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v146 = &v104 - v9;
  v121 = sub_1000EBAF4();
  v154 = *(v121 - 8);
  __chkstk_darwin(v121);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  v12 = __chkstk_darwin(v11 - 8);
  v111 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v136 = &v104 - v15;
  __chkstk_darwin(v14);
  v145 = &v104 - v16;
  v150 = sub_1000EB674();
  v143 = *(v150 - 8);
  __chkstk_darwin(v150);
  v153 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1000E8734();
  v139 = *(v149 - 8);
  __chkstk_darwin(v149);
  v133 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v19 - 8);
  v127 = &v104 - v20;
  v108 = sub_1000E8754();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1000E8784();
  v137 = *(v141 - 8);
  v23 = __chkstk_darwin(v141);
  v138 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v104 - v25;
  v27 = type metadata accessor for AggregateWeatherViewModel(0);
  v28 = __chkstk_darwin(v27);
  v144 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v104 - v30;
  v32 = type metadata accessor for CurrentObservationViewModelFactory(0);
  __chkstk_darwin(v32 - 8);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1000E8604();
  v35 = *(v132 - 8);
  v36 = __chkstk_darwin(v132);
  v152 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v104 - v39;
  __chkstk_darwin(v38);
  v42 = &v104 - v41;
  v43 = sub_1000E9A84();
  __chkstk_darwin(v43);
  v45 = &v104 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v46;
  v47 = *(v46 + 16);
  v131 = v48;
  v120 = v46 + 16;
  v119 = v47;
  (v47)(v45, v134);
  sub_1000E85B4();
  v113 = v34;
  v49 = v40;
  sub_1000EB3B4();
  v104 = v42;
  sub_1000E85C4();
  v151 = v31;
  sub_10005639C(v142, v45, 0, v31);
  v140 = v45;
  sub_1000E9A74();
  v50 = v22;
  v106 = v26;
  result = sub_1000E86B4();
  if (v135 < 0)
  {
    goto LABEL_32;
  }

  v52 = 0;
  v115 = v5 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_eventViewModelFactory;
  v128 = enum case for Calendar.Component.minute(_:);
  v148 = (v139 + 13);
  v126 = (v139 + 1);
  v125 = (v35 + 32);
  v124 = enum case for Calendar.Component.hour(_:);
  v139 = (v137 + 1);
  v137 = (v143 + 16);
  v110 = (v154 + 32);
  v109 = (v154 + 8);
  v114 = (v143 + 8);
  v53 = &_swiftEmptyArrayStorage;
  v130 = (v35 + 8);
  v118 = v5;
  v54 = v133;
  v55 = v132;
  v117 = v50;
  v116 = v49;
  v123 = v27;
  while (1)
  {
    if (v135 == v52)
    {
      (*(v107 + 8))(v50, v108, v149);
      (*v139)(v106, v141);
      sub_1000D8108(v151, type metadata accessor for AggregateWeatherViewModel);
      v102 = *v130;
      (*v130)(v49, v55);
      sub_1000D8108(v113, type metadata accessor for CurrentObservationViewModelFactory);
      v102(v104, v55);
      (*(v105 + 8))(v140, v131);
      return v53;
    }

    if (__OFADD__(v52, 1))
    {
      break;
    }

    v56 = *v148;
    v154 = v52;
    result = v56(v54, v128, v149);
    if ((v129 * v154) >> 64 != (v129 * v154) >> 63)
    {
      goto LABEL_30;
    }

    v143 = v53;
    v57 = v127;
    v58 = v55;
    v59 = v50;
    sub_1000E86E4();
    v60 = v149;
    v61 = v49;
    v62 = *v126;
    (*v126)(v54, v149);
    if (sub_100005B30(v57, 1, v58) == 1)
    {
      (*(v107 + 8))(v59, v108);
      (*v139)(v106, v141);
      sub_1000D8108(v151, type metadata accessor for AggregateWeatherViewModel);
      v103 = *v130;
      (*v130)(v61, v58);
      sub_1000D8108(v113, type metadata accessor for CurrentObservationViewModelFactory);
      v103(v104, v58);
      (*(v105 + 8))(v140, v131);
      sub_100008E48(v57, &qword_10012F048, &qword_1000EEF30);
      return v143;
    }

    (*v125)(v152, v57, v58);
    v56(v54, v124, v60);
    v63 = v60;
    v64 = sub_1000E8704();
    v62(v54, v63);
    if (v64)
    {
      v65 = v123;
      v66 = v151;
      (*v137)(v153, &v151[v123[6]], v150);
      v67 = *(v66 + v65[7]);

      v68 = v136;
      goto LABEL_17;
    }

    v69 = v138;
    sub_1000E9A74();
    sub_100091F30(v142, v69, 1, v153);
    (*v139)(v69, v141);
    v65 = v123;
    v70 = *&v151[v123[7]];

    v71 = sub_1000D1410(1, v70, &type metadata accessor for HourlyForecastBannerViewModel);
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v68 = v136;
    if ((v76 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1000EC5F4();
    swift_unknownObjectRetain_n();
    v79 = swift_dynamicCastClass();
    if (!v79)
    {
      swift_unknownObjectRelease();
      v79 = &_swiftEmptyArrayStorage;
    }

    v80 = v79[2];

    if (__OFSUB__(v77 >> 1, v75))
    {
      goto LABEL_31;
    }

    if (v80 != (v77 >> 1) - v75)
    {
      swift_unknownObjectRelease();
      v68 = v136;
LABEL_10:
      sub_1000D7E10(v71, v73, v75, v77, sub_10003159C, &type metadata accessor for HourlyForecastBannerViewModel);
      v67 = v78;
      swift_unknownObjectRelease();
      v66 = v151;
      goto LABEL_17;
    }

    v67 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v68 = v136;
    v66 = v151;
    if (!v67)
    {
      swift_unknownObjectRelease();
      v67 = &_swiftEmptyArrayStorage;
    }

LABEL_17:
    v81 = v65[10];
    v82 = v145;
    sub_10000EBC4(v66 + v81, v145, &qword_1001309D8, &qword_1000F10F0);
    sub_10000EBC4(v66 + v81, v68, &qword_1001309D8, &qword_1000F10F0);
    v83 = v121;
    if (sub_100005B30(v68, 1, v121) == 1)
    {
      sub_100008E48(v68, &qword_1001309D8, &qword_1000F10F0);
      v84 = v154;
    }

    else
    {
      v85 = v112;
      (*v110)(v112, v68, v83);
      v86 = v111;
      v84 = v154;
      sub_1000EBAE4();
      (*v109)(v85, v83);
      sub_100008E48(v82, &qword_1001309D8, &qword_1000F10F0);
      sub_1000028A0(v86, 0, 1, v83);
      sub_1000D7EFC(v86, v82);
    }

    v87 = v138;
    v88 = v140;
    sub_1000E9A74();
    v89 = sub_1000094A0(v142, v87, v84);
    (*v139)(v87, v141);
    v90 = v144;
    sub_1000E8624();
    v119(v90 + v65[5], v88, v131);
    (*v137)(v90 + v65[6], v153, v150);
    v91 = v151;
    v92 = *&v151[v65[8]];
    sub_10000EBC4(&v151[v65[9]], v90 + v65[9], &qword_100130EE0, &qword_1000F1690);
    sub_10000EBC4(v82, v90 + v65[10], &qword_1001309D8, &qword_1000F10F0);
    v93 = v65[13];
    v94 = v91 + v65[12];
    v155 = *v94;
    v156 = *(v94 + 8);
    sub_10000EBC4(v91 + v93, v90 + v93, &qword_100130EC8, &qword_1000F1670);
    v95 = v65[14];
    v96 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
    sub_1000028A0(v90 + v95, 1, 1, v96);
    *(v90 + v65[7]) = v67;
    *(v90 + v65[8]) = v92;
    *(v90 + v65[11]) = v89;
    v97 = v90 + v65[12];
    *v97 = v155;
    *(v97 + 8) = v156;

    v98 = v146;
    sub_1000D313C(v90, v152, v134, v146);
    sub_1000D7F6C(v98, v147, type metadata accessor for ForecastEntry);
    v53 = v143;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000312F4();
      v53 = v100;
    }

    v54 = v133;
    v55 = v132;
    v49 = v116;
    v99 = *(v53 + 2);
    if (v99 >= *(v53 + 3) >> 1)
    {
      sub_1000312F4();
      v53 = v101;
    }

    sub_1000D8108(v146, type metadata accessor for ForecastEntry);
    sub_1000D8108(v144, type metadata accessor for AggregateWeatherViewModel);
    sub_100008E48(v145, &qword_1001309D8, &qword_1000F10F0);
    (*v114)(v153, v150);
    (*v130)(v152, v55);
    *(v53 + 2) = v99 + 1;
    result = sub_1000D80A8(v147, &v53[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v99], type metadata accessor for ForecastEntry);
    v52 = v154 + 1;
    v50 = v117;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000D43AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v83 = a3;
  v78 = sub_1000E8734();
  v71 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v62 - v6;
  v8 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForecastEntry(0);
  v79 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v87 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v86 = &v62 - v15;
  v16 = __chkstk_darwin(v14);
  v76 = &v62 - v17;
  __chkstk_darwin(v16);
  v70 = &v62 - v18;
  v68 = sub_1000E8754();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v84 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000E8784();
  v20 = *(v75 - 8);
  __chkstk_darwin(v75);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000E9A84();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1000E8604();
  v63 = *(v88 - 8);
  v27 = __chkstk_darwin(v88);
  v85 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v62 - v30;
  __chkstk_darwin(v29);
  v33 = &v62 - v32;
  sub_1000E85B4();
  v65 = v24;
  v34 = *(v24 + 16);
  v66 = v23;
  v34(v26, a2, v23);
  sub_1000E9A74();
  v80 = v31;
  sub_1000E8534();
  v35 = *(v20 + 8);
  v36 = v75;
  v35(v22, v75);
  v81 = v26;
  sub_1000E9A74();
  sub_1000E86B4();
  v37 = v22;
  v38 = v76;
  v35(v37, v36);
  v40 = v69;
  v39 = v70;
  v64 = v33;
  v74 = a2;
  sub_1000D1DA0(v82, v33, a2, v70);
  sub_1000D7F6C(v39, v38, type metadata accessor for ForecastEntry);
  sub_1000312F4();
  v42 = v41;
  v43 = *(v41 + 16);
  if (v43 >= *(v41 + 24) >> 1)
  {
    sub_1000312F4();
    v42 = v61;
  }

  *(v42 + 16) = v43 + 1;
  v73 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v72 = *(v79 + 72);
  result = sub_1000D80A8(v38, v42 + v73 + v72 * v43, type metadata accessor for ForecastEntry);
  if (v83 < 1)
  {
    __break(1u);
  }

  else
  {
    v76 = OBJC_IVAR____TtC13WeatherWidget12EntryFactory_aggregateWeatherViewModelFactory;
    v45 = (v71 + 13);
    LODWORD(v75) = enum case for Calendar.Component.hour(_:);
    v46 = (v71 + 1);
    v71 = (v63 + 32);
    v79 = v63 + 8;
    for (i = 1; ; ++i)
    {
      if (v83 == i)
      {
        sub_1000D8108(v70, type metadata accessor for ForecastEntry);
        (*(v67 + 8))(v84, v68);
        v58 = *v79;
        v59 = v88;
        (*v79)(v80, v88);
        (*(v65 + 8))(v81, v66);
        v58(v64, v59);
        return v42;
      }

      sub_10005639C(v82, v81, i, v10);
      v48 = v10;
      v49 = v77;
      v50 = v78;
      (*v45)(v77, v75, v78);
      sub_1000E86E4();
      (*v46)(v49, v50);
      v51 = v88;
      if (sub_100005B30(v7, 1, v88) == 1)
      {
        break;
      }

      v52 = v85;
      v53 = v7;
      (*v71)(v85, v7, v51);
      v54 = v86;
      v55 = v40;
      sub_1000D313C(v48, v52, v74, v86);
      sub_1000D7F6C(v54, v87, type metadata accessor for ForecastEntry);
      v56 = *(v42 + 16);
      v10 = v48;
      if (v56 >= *(v42 + 24) >> 1)
      {
        sub_1000312F4();
        v42 = v57;
      }

      sub_1000D8108(v86, type metadata accessor for ForecastEntry);
      (*v79)(v85, v88);
      sub_1000D8108(v48, type metadata accessor for AggregateWeatherViewModel);
      *(v42 + 16) = v56 + 1;
      sub_1000D80A8(v87, v42 + v73 + v56 * v72, type metadata accessor for ForecastEntry);
      v40 = v55;
      v7 = v53;
    }

    sub_1000D8108(v48, type metadata accessor for AggregateWeatherViewModel);
    sub_1000D8108(v70, type metadata accessor for ForecastEntry);
    (*(v67 + 8))(v84, v68);
    v60 = *v79;
    (*v79)(v80, v51);
    (*(v65 + 8))(v81, v66);
    v60(v64, v51);
    sub_100008E48(v7, &qword_10012F048, &qword_1000EEF30);
    return v42;
  }

  return result;
}

uint64_t sub_1000D4D10()
{

  sub_1000D8108(v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_eventViewModelFactory, type metadata accessor for EventViewModelFactory);
  sub_1000D8108(v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_aggregateWeatherViewModelFactory, type metadata accessor for AggregateWeatherViewModelFactory);
  sub_1000D8108(v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_instantWeatherViewModelFactory, type metadata accessor for InstantWeatherViewModelFactory);

  sub_100009068((v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_appConfigurationManager));
  return v0;
}

uint64_t sub_1000D4DC4()
{
  sub_1000D4D10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for EntryFactory(uint64_t a1)
{
  result = qword_1001357E0;
  if (!qword_1001357E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D4E70(uint64_t a1)
{
  result = type metadata accessor for EventViewModelFactory(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AggregateWeatherViewModelFactory(319);
    if (v3 <= 0x3F)
    {
      result = sub_1000EB3C4();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1000D4F94()
{
  result = qword_100133AE0;
  if (!qword_100133AE0)
  {
    sub_100002ABC(&qword_100132670, &unk_1000F54E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133AE0);
  }

  return result;
}

uint64_t sub_1000D4FF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ForecastEntry(0);
  sub_1000C254C(a2 + *(v4 + 24));
  sub_1000E85B4();
  sub_1000EBD64();
  sub_10000D52C();
  sub_1000028A0(v5, v6, v7, v8);
  *(a2 + *(v4 + 28)) = a1;
  type metadata accessor for ForecastEntry.Model(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D5090@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v4);
  sub_10004B3F0();
  v6 = sub_10000D4A0(v5);
  v7 = type metadata accessor for WidgetContext(v6);
  v8 = sub_100009210(v7);
  __chkstk_darwin(v8);
  sub_10004B3F0();
  v10 = sub_10000D4A0(v9);
  v239 = type metadata accessor for AggregateWeatherViewModel(v10);
  sub_1000069E4();
  __chkstk_darwin(v11);
  sub_10004B3F0();
  sub_10000D4A0(v12);
  v242 = sub_1000E9A84();
  sub_1000090D4();
  v241 = v13;
  __chkstk_darwin(v14);
  sub_10004B3F0();
  sub_10000D4C4(v15);
  v16 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v16);
  sub_100009204();
  __chkstk_darwin(v17);
  sub_10000D58C();
  sub_10000D4C4(v18);
  v19 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  sub_100009210(v19);
  sub_100009204();
  __chkstk_darwin(v20);
  sub_10000D58C();
  sub_10000D4C4(v21);
  v22 = sub_100002A10(&qword_100134890, &qword_1000F7388);
  sub_100009210(v22);
  sub_100009204();
  __chkstk_darwin(v23);
  sub_10000D58C();
  sub_10000D4A0(v24);
  v25 = sub_1000E9894();
  v26 = sub_100009210(v25);
  __chkstk_darwin(v26);
  sub_10004B3F0();
  v283 = v27;
  sub_10000921C();
  v265 = sub_1000E94B4();
  sub_1000090D4();
  v253 = v28;
  __chkstk_darwin(v29);
  sub_10004B3F0();
  sub_10000D4A0(v30);
  v263 = sub_1000EB214();
  sub_1000090D4();
  v269 = v31;
  __chkstk_darwin(v32);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v33);
  sub_10000D56C();
  sub_10000D4A0(v34);
  v282 = sub_1000E8E24();
  sub_1000090D4();
  v256 = v35;
  __chkstk_darwin(v36);
  sub_10004B3F0();
  v290 = v37;
  sub_10000921C();
  v38 = sub_1000EB814();
  sub_1000090D4();
  v267 = v39;
  __chkstk_darwin(v40);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v41);
  sub_10000D56C();
  sub_10000D4A0(v42);
  v257 = sub_1000EB544();
  sub_1000090D4();
  v255 = v43;
  __chkstk_darwin(v44);
  sub_10004B3F0();
  sub_10000D4C4(v45);
  v46 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  sub_100009210(v46);
  sub_100009204();
  __chkstk_darwin(v47);
  sub_10000D58C();
  sub_10000D4A0(v48);
  v49 = sub_1000E9134();
  v50 = sub_100009210(v49);
  __chkstk_darwin(v50);
  sub_10004B3F0();
  sub_10000D4A0(v51);
  v52 = sub_1000E9184();
  v53 = sub_100009210(v52);
  __chkstk_darwin(v53);
  sub_10004B3F0();
  sub_10000D4C4(v54);
  v55 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v56 = sub_100009210(v55);
  __chkstk_darwin(v56);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v57);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v58);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v59);
  sub_10000D4D0();
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
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v65);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v66);
  sub_10000D56C();
  sub_10000921C();
  v231 = sub_1000EAF24();
  sub_1000090D4();
  v228._object = v67;
  __chkstk_darwin(v68);
  sub_10004B3F0();
  v295 = v69;
  v70 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v71 = sub_100009210(v70);
  __chkstk_darwin(v71);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v72);
  sub_10000D56C();
  v294 = v73;
  sub_10000921C();
  v249 = sub_1000EB674();
  sub_1000090D4();
  v237 = v74;
  __chkstk_darwin(v75);
  sub_10004B3F0();
  sub_10000D4C4(v76);
  v77 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000090D4();
  v250 = v78;
  __chkstk_darwin(v79);
  sub_10000D45C();
  v285 = v80;
  sub_10004B6F4();
  __chkstk_darwin(v81);
  sub_10000D4D0();
  v293 = v82;
  sub_10004B6F4();
  __chkstk_darwin(v83);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v84);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v85);
  sub_10000D56C();
  sub_10000D4A0(v86);
  v289 = sub_1000E8604();
  sub_1000090D4();
  v252 = v87;
  __chkstk_darwin(v88);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v89);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v90);
  sub_10000D4D0();
  v288 = v91;
  sub_10004B6F4();
  __chkstk_darwin(v92);
  sub_10000D56C();
  v287 = v93;
  sub_10000921C();
  v94 = sub_1000E8C34();
  sub_1000090D4();
  v96 = v95;
  __chkstk_darwin(v97);
  sub_100006A10();
  sub_1000D819C();
  v98 = sub_1000E8634();
  v99 = sub_100009210(v98);
  __chkstk_darwin(v99);
  sub_100006A10();
  v102 = v101 - v100;
  v286 = sub_1000EAFC4();
  sub_1000090D4();
  v247 = v103;
  __chkstk_darwin(v104);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v105);
  sub_10000D4D0();
  v291 = v106;
  sub_10004B6F4();
  __chkstk_darwin(v107);
  sub_10000D56C();
  sub_10000D4C4(v108);
  v109 = v102;
  sub_1000E8624();
  v232 = *(v96 + 104);
  v232(v3, enum case for WeatherCondition.partlyCloudy(_:), v94);
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v110 = qword_100145E00;
  v227._countAndFlagsBits = 0x80000001000FF4A0;
  sub_1000D81DC();
  sub_1000E8464(v303, v306, v300, v309, v111, v227);

  sub_1000D8250();
  v292 = v109;
  v233 = v3;
  sub_1000EAFA4();
  sub_1000E85B4();
  sub_1000E8314();
  sub_1000E8314();
  sub_1000E8314();
  sub_1000E8624();
  v281 = *(v252 + 16);
  v281(v288, v287, v289);
  sub_1000E8584();
  v112 = *(v250 + 16);
  v112(v293, v272, v77);
  v112(v285, v272, v77);
  v112(v294, v271, v77);
  sub_10000D554();
  sub_1000028A0(v113, v114, v115, v77);
  v112(v279, v275, v77);
  sub_10000D554();
  v284 = v77;
  sub_1000028A0(v116, v117, v118, v77);
  (*(v247 + 16))(v291, v274, v286);
  (*(v228._object + 13))(v295, enum case for CloudAltitudeKind.low(_:), v231);
  sub_10000D52C();
  sub_1000028A0(v119, v120, v121, v289);
  sub_1000D6C88(v273);
  v122 = 6;
  sub_1000E9154();
  sub_1000D7170();
  v123 = qword_100145E00;
  v228._countAndFlagsBits = 0x80000001000FF4F0;
  sub_1000D81DC();
  sub_1000E8464(v304, v307, v301, v310, v124, v228);

  *v254 = 50;
  (*(v255 + 104))(v254, enum case for CurrentObservationViewModel.AirQuality.Value.number(_:), v257);
  sub_1000EB564();
  sub_1000EB584();
  sub_10000D554();
  sub_1000028A0(v125, v126, v127, v128);
  sub_1000D81DC();
  sub_1000EB614();
  v258 = enum case for Precipitation.none(_:);
  v280 = (v256 + 104);
  v129 = &_swiftEmptyArrayStorage;
  do
  {
    v296 = v122;
    sub_1000E8624();
    v281(v288, v287, v289);
    v112(v293, v272, v77);
    sub_1000D81C4();
    v130();
    v278 = *v280;
    (*v280)(v290, v258, v282);
    sub_1000D7170();
    v229._object = v276;
    sub_1000D8224();
    sub_1000D81DC();
    sub_1000EB7D4(v131, v132, v133, v134, v135, v136, v137, v291, 0.6, 0, 0xE000000000000000, v290);
    (*(v267 + 16))(v235, v234, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000314A4();
      v129 = v140;
    }

    v139 = v129[2];
    v138 = v129[3];
    if (v139 >= v138 >> 1)
    {
      sub_10000FB24(v138);
      sub_1000314A4();
      v129 = v141;
    }

    (*(v267 + 8))(v234, v38);
    v129[2] = v139 + 1;
    (*(v267 + 32))(v129 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v139, v235, v38);
    --v122;
  }

  while (v296 != 1);
  sub_1000E8624();
  v232(v233, enum case for WeatherCondition.rain(_:), v94);
  v142 = qword_100145E00;
  v229._countAndFlagsBits = 0x80000001000FF540;
  sub_1000D81DC();
  sub_1000E8464(v305, v308, v302, v311, 0xD000000000000030, v229);

  sub_1000D8250();
  sub_1000D8224();
  sub_1000EAFA4();
  v268 = (v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_appConfigurationManager);
  v259 = enum case for Precipitation.rain(_:);
  v143 = 7;
  v297 = &_swiftEmptyArrayStorage;
  v144 = v275;
  v145 = v288;
  do
  {
    v277 = v143;
    sub_1000E8624();
    v281(v145, v287, v289);
    v112(v293, v271, v284);
    v112(v285, v144, v284);
    sub_1000D81C4();
    v146();
    v278(v290, v259, v282);
    sub_100008DA8(v268, v268[3]);
    sub_1000E9804();
    sub_1000E9474();
    (*(v253 + 8))(v264, v265);
    sub_10000D52C();
    sub_1000028A0(v147, v148, v149, v289);
    sub_10000D52C();
    sub_1000028A0(v150, v151, v152, v289);
    sub_10000D52C();
    sub_1000028A0(v153, v154, v155, v289);
    sub_10000D52C();
    sub_1000028A0(v156, v157, v158, v289);
    sub_10000D52C();
    sub_1000028A0(v159, v160, v161, v289);
    sub_1000D6C88(v260);
    sub_10000D52C();
    sub_1000028A0(v162, v163, v164, v289);
    sub_10000D52C();
    sub_1000028A0(v165, v166, v167, v289);
    sub_10000D52C();
    sub_1000028A0(v168, v169, v170, v289);
    sub_10000D52C();
    sub_1000028A0(v171, v172, v173, v289);
    sub_1000E91F4();
    sub_1000E9224();
    sub_10000D554();
    sub_1000028A0(v174, v175, v176, v177);
    sub_1000D7368(v266);
    sub_1000E9154();
    v145 = v288;
    sub_1000EB184(v292, v288, v293, v285, v291, v290, 0, 0, 0.6, 0.0, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, v283);
    (*(v269 + 16))(v261, v262, v263);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v179 = v297;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000313D4();
      v179 = v182;
    }

    v181 = v179[2];
    v180 = v179[3];
    v144 = v275;
    if (v181 >= v180 >> 1)
    {
      sub_10000FB24(v180);
      sub_1000313D4();
      v297 = v183;
    }

    else
    {
      v297 = v179;
    }

    (*(v269 + 8))(v262, v263);
    v297[2] = v181 + 1;
    (*(v269 + 32))(v297 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v181, v261, v263);
    --v143;
  }

  while (v277 != 1);
  v184 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_10000D52C();
  sub_1000028A0(v185, v186, v187, v184);
  sub_1000D6C88(v236);
  v188 = sub_100005B30(v236, 1, v289);
  if (v188 == 1)
  {
    sub_100008E48(v236, &qword_10012F048, &qword_1000EEF30);
  }

  else
  {
    sub_100008E48(v238, &qword_100130EB8, &qword_1000F1660);
    v189 = *(v252 + 32);
    v189(v230, v236, v289);
    v189(v238, v230, v289);
    swift_storeEnumTagMultiPayload();
    sub_10000D554();
    sub_1000028A0(v190, v191, v192, v184);
  }

  sub_1000E9A64();
  sub_1000E8624();
  sub_1000D7BB8(v244 + v239[9]);
  type metadata accessor for AirQualityViewModel(0);
  sub_10000D554();
  sub_1000028A0(v193, v194, v195, v196);
  sub_1000EBAF4();
  sub_10000D52C();
  sub_1000028A0(v197, v198, v199, v200);
  sub_1000E8524();
  sub_10000D52C();
  sub_1000028A0(v201, v202, v203, v204);
  sub_10000EBC4(v238, v244 + v239[14], &qword_100130EB8, &qword_1000F1660);
  (*(v241 + 16))(v244 + v239[5], v240, v242);
  (*(v237 + 16))(v244 + v239[6], v248, v249);
  *(v244 + v239[7]) = v129;
  *(v244 + v239[8]) = v297;
  *(v244 + v239[11]) = &_swiftEmptyArrayStorage;
  v205 = v244 + v239[12];
  *v205 = 0x2010004020100;
  *(v205 + 8) = 1;
  v206 = *(v2 + 16);
  v207 = sub_1000C254C(v251);
  if (a1 == 3)
  {
    v208 = v245;
    sub_1000EB284();
    sub_1000D8108(v244, type metadata accessor for AggregateWeatherViewModel);
    (*(v241 + 8))(v240, v242);
    sub_100008E48(v238, &qword_100130EB8, &qword_1000F1660);
    v209 = *(v247 + 8);
    v209(v270, v286);
    v210 = sub_1000D8264();
    v211(v210);
    v212 = sub_1000D817C();
    v206(v212);
    v213 = sub_1000D8244(&v299);
    v206(v213);
    v214 = sub_1000D8244(&v298);
    v206(v214);
    v209(v274, v286);
  }

  else
  {
    (*(v241 + 8))(v240, v242, v207);
    sub_100008E48(v238, &qword_100130EB8, &qword_1000F1660);
    v215 = *(v247 + 8);
    v215(v270, v286);
    v216 = sub_1000D8264();
    v217(v216);
    v218 = sub_1000D817C();
    v206(v218);
    v219 = sub_1000D8244(&v299);
    v206(v219);
    v220 = sub_1000D8244(&v298);
    v206(v220);
    v215(v274, v286);
    v208 = v245;
    sub_1000D80A8(v244, v245, type metadata accessor for AggregateWeatherViewModel);
  }

  swift_storeEnumTagMultiPayload();
  v221 = type metadata accessor for ForecastEntry(0);
  sub_1000EBD64();
  sub_10000D52C();
  sub_1000028A0(v222, v223, v224, v225);
  sub_1000D80A8(v208, a2 + *(v221 + 28), type metadata accessor for WeatherDataViewModel);
  type metadata accessor for ForecastEntry.Model(0);
  swift_storeEnumTagMultiPayload();
  (*(v252 + 32))(a2, v287, v289);
  return sub_1000D80A8(v251, a2 + *(v221 + 24), type metadata accessor for WidgetContext);
}

uint64_t sub_1000D6C88@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_1000E8734();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v6 = __chkstk_darwin(v5 - 8);
  v37 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v32 - v8;
  v10 = sub_1000E8604();
  v43 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v34 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  v15 = sub_1000E8754();
  v41 = *(v15 - 8);
  v42 = v15;
  __chkstk_darwin(v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000E9A84();
  v39 = *(v18 - 8);
  v40 = v18;
  __chkstk_darwin(v18);
  v38 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9A64();
  sub_1000E8714();
  sub_1000E85F4();
  v20 = *(v2 + 104);
  v20(v4, enum case for Calendar.Component.hour(_:), v1);
  sub_1000E86F4();
  v21 = *(v2 + 8);
  v35 = v2 + 8;
  v36 = v1;
  v22 = v1;
  v23 = v10;
  v21(v4, v22);
  if (sub_100005B30(v9, 1, v10) == 1)
  {
    (*(v43 + 8))(v14, v10);
    (*(v41 + 8))(v17, v42);
    (*(v39 + 8))(v38, v40);
  }

  else
  {
    v24 = v43;
    v25 = v34;
    v32[0] = *(v43 + 32);
    v32[1] = v43 + 32;
    (v32[0])(v34, v9, v23);
    v33 = v23;
    v26 = v36;
    v20(v4, enum case for Calendar.Component.minute(_:), v36);
    v9 = v37;
    sub_1000E86F4();
    v27 = v26;
    v23 = v33;
    v21(v4, v27);
    v28 = *(v24 + 8);
    v28(v25, v23);
    v28(v14, v23);
    (*(v41 + 8))(v17, v42);
    (*(v39 + 8))(v38, v40);
    if (sub_100005B30(v9, 1, v23) != 1)
    {
      v29 = v44;
      (v32[0])(v44, v9, v23);
      v30 = 0;
      return sub_1000028A0(v29, v30, 1, v23);
    }
  }

  v29 = v44;
  sub_100008E48(v9, &qword_10012F048, &qword_1000EEF30);
  v30 = 1;
  return sub_1000028A0(v29, v30, 1, v23);
}

uint64_t sub_1000D7170()
{
  v0 = sub_100002A10(&qword_1001358A8, &qword_1000FA8C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  __chkstk_darwin(v3);
  v4 = sub_100002A10(&qword_100135678, &unk_1000FA7C0);
  __chkstk_darwin(v4 - 8);
  v5 = [objc_opt_self() degrees];
  sub_100031CF8(0, &qword_1001358B0, NSUnitAngle_ptr);
  sub_1000E82D4();
  v6 = [objc_opt_self() milesPerHour];
  sub_100031CF8(0, &qword_1001358B8, NSUnitSpeed_ptr);
  sub_1000E82D4();
  sub_1000028A0(v2, 1, 1, v3);
  return sub_1000E90F4();
}

uint64_t sub_1000D7368@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = sub_1000E8734();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v6 = __chkstk_darwin(v5 - 8);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = &v60 - v9;
  v10 = __chkstk_darwin(v8);
  v69 = &v60 - v11;
  v12 = __chkstk_darwin(v10);
  v71 = &v60 - v13;
  v14 = __chkstk_darwin(v12);
  v73 = &v60 - v15;
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = sub_1000E8604();
  v82 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v65 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v68 = &v60 - v22;
  v23 = __chkstk_darwin(v21);
  v72 = &v60 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v60 - v26;
  __chkstk_darwin(v25);
  v29 = &v60 - v28;
  v30 = sub_1000E8754();
  v79 = *(v30 - 8);
  v80 = v30;
  __chkstk_darwin(v30);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000E9A84();
  v77 = *(v33 - 8);
  v78 = v33;
  __chkstk_darwin(v33);
  v76 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9A64();
  sub_1000E8714();
  sub_1000E85F4();
  v35 = *(v2 + 104);
  v70 = enum case for Calendar.Component.hour(_:);
  v75 = v35;
  (v35)(v4);
  sub_1000E86F4();
  v36 = v1;
  v37 = v1;
  v38 = v18;
  v74 = *(v2 + 8);
  v74(v4, v37);
  if (sub_100005B30(v17, 1, v18) == 1)
  {
    (*(v82 + 8))(v29, v18);
  }

  else
  {
    v39 = v82;
    v40 = *(v82 + 32);
    v63 = v82 + 32;
    v64 = v29;
    v62 = v40;
    v40(v27, v17, v18);
    v41 = enum case for Calendar.Component.minute(_:);
    v75(v4, enum case for Calendar.Component.minute(_:), v36);
    v17 = v73;
    sub_1000E86F4();
    v74(v4, v36);
    if (sub_100005B30(v17, 1, v18) == 1)
    {
      v42 = *(v39 + 8);
      v42(v27, v38);
    }

    else
    {
      v61 = v27;
      v43 = v72;
      v62(v72, v17, v18);
      v75(v4, v70, v36);
      v17 = v71;
      sub_1000E86E4();
      v74(v4, v36);
      if (sub_100005B30(v17, 1, v18) == 1)
      {
        v42 = *(v82 + 8);
        v42(v43, v38);
      }

      else
      {
        v44 = v68;
        v62(v68, v17, v18);
        v75(v4, v41, v36);
        v45 = v44;
        v17 = v69;
        sub_1000E86E4();
        v74(v4, v36);
        v46 = sub_100005B30(v17, 1, v18);
        v47 = v82;
        if (v46 != 1)
        {
          v52 = v65;
          v62(v65, v17, v18);
          v53 = v47;
          v54 = v47;
          v55 = v43;
          v56 = *(v53 + 16);
          v57 = v66;
          v56(v66, v55, v38);
          sub_1000028A0(v57, 0, 1, v38);
          v58 = v67;
          v56(v67, v52, v38);
          sub_1000028A0(v58, 0, 1, v38);
          v48 = v81;
          sub_1000E8D44();
          v59 = *(v54 + 8);
          v59(v52, v38);
          v59(v45, v38);
          v59(v55, v38);
          v59(v61, v38);
          v59(v64, v38);
          (*(v79 + 8))(v32, v80);
          (*(v77 + 8))(v76, v78);
          v49 = 0;
          goto LABEL_12;
        }

        v42 = *(v82 + 8);
        v42(v45, v38);
        v42(v43, v38);
      }

      v42(v61, v38);
    }

    v42(v64, v38);
  }

  v48 = v81;
  (*(v79 + 8))(v32, v80);
  (*(v77 + 8))(v76, v78);
  sub_100008E48(v17, &qword_10012F048, &qword_1000EEF30);
  v49 = 1;
LABEL_12:
  v50 = sub_1000E8D54();
  return sub_1000028A0(v48, v49, 1, v50);
}

uint64_t sub_1000D7BB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000E8F84();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AirQualityViewModel(0);
  v4 = *(v3 + 32);
  sub_1000E8F34();
  sub_100002A10(&qword_1001358A0, &qword_1000FA8C0);
  v5 = sub_1000E8F64();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000EFAD0;
  (*(v6 + 16))(v8 + v7, a1 + v4, v5);
  sub_1000E8F74();
  sub_1000E8E34();
  sub_1000E8624();
  result = sub_1000E85F4();
  *(a1 + *(v3 + 24)) = 42;
  return result;
}

void sub_1000D7E10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1000D7EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7F6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000D7FFC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_100009210(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000D80A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000D8108(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1000D8200()
{

  return result;
}

unint64_t sub_1000D827C()
{
  result = qword_1001358C8;
  if (!qword_1001358C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001358C8);
  }

  return result;
}

unint64_t sub_1000D8320()
{
  result = qword_1001358D0;
  if (!qword_1001358D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001358D0);
  }

  return result;
}

uint64_t sub_1000D8374(uint64_t a1)
{
  v2 = sub_1000D8320();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000D83FC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100002A10(&qword_100135650, &unk_1000FA9D0);
  sub_1000090D4();
  v20 = v2;
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_100002A10(&qword_100135658, &unk_1000FA780);
  sub_1000090D4();
  v21 = v7;
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  sub_100002A10(&qword_100135660, &qword_1000FA9E0);
  sub_1000090D4();
  v22 = v11;
  v23 = v12;
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  swift_getKeyPath();
  sub_1000B70D8();
  sub_1000EBC84();
  sub_1000EA354();
  v15 = sub_1000CC738();
  sub_1000EA464();

  (*(v20 + 8))(v5, v1);
  sub_1000EA354();
  v25 = v1;
  v26 = v15;
  sub_100084FDC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EA434();

  (*(v21 + 8))(v10, v6);
  v25 = v6;
  v26 = OpaqueTypeConformance2;
  sub_1000CC860();
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_1000EA484();
  return (*(v23 + 8))(v14, v17);
}

uint64_t sub_1000D87E0@<X0>(uint64_t a3@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v4 = qword_100145E00;
  result = sub_1000EA7F4();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

void *sub_1000D88B8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v5 = qword_10012EB40;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_1000E9D04();
  sub_100008DA8(v10, v11);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  sub_1000E4C34();
  result = sub_1000E9B54();
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_10004E7EC(&v8, (v4 + 5));
  sub_1000E4C44(v10);
  type metadata accessor for WeatherDataService();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4[10] = result;
  v7 = sub_1000E4C44(v10);
  type metadata accessor for EntryFactory(v7);
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4[11] = result;
  sub_1000E4C44(v10);
  type metadata accessor for RefreshPolicyProvider();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4[12] = result;
  sub_1000E4C44(v10);
  type metadata accessor for WidgetLocationManager();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4[13] = result;
  sub_1000E4C44(v10);
  sub_1000E97B4();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4[14] = result;
  sub_1000E4C44(v10);
  type metadata accessor for DemoManager();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4[15] = result;
  sub_100008DA8(v10, v11);
  sub_100002A10(&qword_100135A00, &unk_1000FABE0);
  sub_1000E4C34();
  result = sub_1000E9B54();
  if (v9)
  {

    sub_10004E7EC(&v8, (v4 + 16));
    sub_1000D8AD0();
    sub_100009068(v10);
    return v4;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000D8AD0()
{
  v1 = sub_1000E94B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9544();
  swift_allocObject();
  sub_1000E9534();
  sub_100008DA8((v0 + 40), *(v0 + 64));
  sub_1000E9804();
  sub_1000E9504();

  return (*(v2 + 8))(v4, v1);
}

BOOL sub_1000D8BF4()
{
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9234();
  sub_1000E92E4();

  v0 = sub_1000E9594();
  v2 = v1;
  if (v0 == sub_1000E9594() && v2 == v3)
  {

    goto LABEL_8;
  }

  v5 = sub_1000EC5D4();

  result = 0;
  if (v5)
  {
LABEL_8:
    sub_1000E92F4();
    sub_1000E9244();
    sub_1000E92E4();

    return v7 == 0;
  }

  return result;
}

void sub_1000D8D00()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v50 = type metadata accessor for ForecastEntry(0);
  sub_1000069E4();
  __chkstk_darwin(v5);
  sub_1000091AC();
  v49 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_1000EBD94();
  sub_1000090D4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000091AC();
  v17 = (v15 - v16);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v21 = sub_1000E9F64();
  v22 = sub_100008CB8(v21, qword_100145C10);
  v23 = *(v13 + 16);
  v23(v20, v3, v11);

  v51 = v22;
  v24 = sub_1000E9F44();
  v25 = sub_1000EC1B4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v48 = v10;
    v27 = v26;
    v47 = sub_1000E4E98();
    v53 = v47;
    *v27 = 136315394;
    v28 = sub_1000E2E18(*(v1 + 24), *(v1 + 32), &v53);
    sub_1000E4D68(v28);
    v23(v17, v20, v11);
    v29 = sub_1000EBEF4();
    v31 = v30;
    (*(v13 + 8))(v20, v11);
    v32 = sub_1000E2E18(v29, v31, &v53);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "About to build a placeholder entry for %s. context=%{public}s", v27, 0x16u);
    v33 = v47;
    swift_arrayDestroy();
    sub_100009194(v33);
    v34 = v27;
    v10 = v48;
    sub_100009194(v34);
  }

  else
  {

    (*(v13 + 8))(v20, v11);
  }

  v35 = v52;
  sub_1000D5090(*(v1 + 16), v52);
  sub_1000E4C1C();
  sub_1000E3800(v35, v10, v36);

  v37 = sub_1000E9F44();
  v38 = sub_1000EC1B4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = sub_10000923C();
    v53 = sub_1000E4E98();
    *v39 = 136315651;
    *(v39 + 4) = sub_1000E2E18(*(v1 + 24), *(v1 + 32), &v53);
    *(v39 + 12) = 2160;
    sub_1000E4D0C();
    *(v39 + 14) = v40;
    *(v39 + 22) = 2081;
    sub_1000E4C1C();
    sub_1000E3800(v10, v49, v41);
    v42 = sub_1000EBEE4();
    v44 = v43;
    sub_1000E4C04();
    sub_1000E3614();
    v45 = sub_1000E2E18(v42, v44, &v53);

    *(v39 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Returning placeholder entry for %s. entry=%{private,mask.hash}s", v39, 0x20u);
    swift_arrayDestroy();
    sub_100009118();
    sub_100009194(v39);
  }

  else
  {

    sub_1000E4C04();
    sub_1000E3614();
  }

  sub_100006A20();
}

uint64_t sub_1000D9120@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v49 = sub_1000EBD14();
  v5 = *(v49 - 8);
  v6 = __chkstk_darwin(v49);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for ForecastEntry(0);
  v50 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  __chkstk_darwin(v14);
  v54 = &v45 - v17;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v18 = sub_1000E9F64();
  v19 = sub_100008CB8(v18, qword_100145C10);

  v48 = v19;
  v20 = sub_1000E9F44();
  v21 = sub_1000EC1B4();

  v47 = v21;
  v22 = os_log_type_enabled(v20, v21);
  v51 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56 = v46;
    *v23 = 136315651;
    *(v23 + 4) = sub_1000E2E18(*(v3 + 24), *(v3 + 32), &v56);
    *(v23 + 12) = 2160;
    *(v23 + 14) = 1752392040;
    *(v23 + 22) = 2081;
    v55 = a1;
    v24 = sub_1000EBEF4();
    v26 = v5;
    v27 = v13;
    v28 = sub_1000E2E18(v24, v25, &v56);

    *(v23 + 24) = v28;
    v13 = v27;
    v5 = v26;
    _os_log_impl(&_mh_execute_header, v20, v47, "About to build an error timeline for %s. error=%{private,mask.hash}s", v23, 0x20u);
    swift_arrayDestroy();
  }

  v29 = v54;
  sub_1000D4FF8(a1, v54);
  v30 = a1;
  v31 = *(v3 + 24);
  v32 = *(v3 + 32);
  sub_100008A90(v30, v31, v32, v9);
  sub_1000E3800(v29, v16, type metadata accessor for ForecastEntry);

  v33 = sub_1000E9F44();
  v34 = sub_1000EC1B4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v35 = 136315651;
    *(v35 + 4) = sub_1000E2E18(v31, v32, &v56);
    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    sub_1000E3800(v16, v13, type metadata accessor for ForecastEntry);
    v36 = v9;
    v37 = sub_1000EBEE4();
    v39 = v38;
    sub_1000E3614();
    v40 = sub_1000E2E18(v37, v39, &v56);

    *(v35 + 24) = v40;
    v9 = v36;
    _os_log_impl(&_mh_execute_header, v33, v34, "Returning error timeline for %s. entry=%{private,mask.hash}s", v35, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000E3614();
  }

  sub_100002A10(&qword_1001304D8, &qword_1000FABD0);
  v41 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000EFAD0;
  sub_1000E3800(v54, v42 + v41, type metadata accessor for ForecastEntry);
  v43 = v49;
  (*(v5 + 16))(v53, v9, v49);
  sub_1000DB330();
  sub_1000EBDA4();
  (*(v5 + 8))(v9, v43);
  return sub_1000E3614();
}

uint64_t sub_1000D9728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = type metadata accessor for WeatherDataOperationResult.Data(0);
  __chkstk_darwin(v67);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherDataOperationResult(0);
  __chkstk_darwin(v9 - 8);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForecastEntry(0);
  v12 = __chkstk_darwin(v11);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v68 = &v63 - v15;
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  v75 = sub_1000E8604();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  v20 = __chkstk_darwin(v19 - 8);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = (&v63 - v22);
  v24 = type metadata accessor for WidgetLocation(0);
  __chkstk_darwin(v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v27 = sub_1000E9F64();
  v28 = sub_100008CB8(v27, qword_100145C10);
  v76 = a2;
  sub_1000E3800(a2, v26, type metadata accessor for WidgetLocation);

  v71 = v28;
  v29 = sub_1000E9F44();
  v30 = sub_1000EC1B4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v70 = v23;
    v32 = v31;
    v63 = swift_slowAlloc();
    v64 = v11;
    v78 = v63;
    *v32 = 136315394;
    *(v32 + 4) = sub_1000E2E18(*(v4 + 24), *(v4 + 32), &v78);
    *(v32 + 12) = 2082;
    v77 = v26[*(v24 + 20)];
    v33 = sub_1000EBEF4();
    v34 = a1;
    v35 = v17;
    v36 = v4;
    v37 = a3;
    v39 = v38;
    sub_1000E3614();
    v40 = sub_1000E2E18(v33, v39, &v78);
    a3 = v37;
    v4 = v36;
    v17 = v35;
    a1 = v34;

    *(v32 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v29, v30, "About to build a single timeline entry for %s. locationState=%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    v11 = v64;

    v23 = v70;
  }

  else
  {

    sub_1000E3614();
  }

  v41 = v72;
  sub_1000E85F4();
  sub_1000D1AD4(a1, v41, v76, v23);
  (*(v73 + 8))(v41, v75);
  v42 = v74;
  sub_100072EB0(v23, v74, &qword_10012F040, &unk_1000EEED0);
  if (sub_100005B30(v42, 1, v11) == 1)
  {
    sub_100006850(v42, &qword_10012F040, &unk_1000EEED0);
    v43 = v69;
    sub_1000E3800(a1, v69, type metadata accessor for WeatherDataOperationResult);

    v44 = sub_1000E9F44();
    v45 = sub_1000EC194();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v46 = 136315651;
      *(v46 + 4) = sub_1000E2E18(*(v4 + 24), *(v4 + 32), &v78);
      *(v46 + 12) = 2160;
      *(v46 + 14) = 1752392040;
      *(v46 + 22) = 2081;
      sub_1000E3800(v43, v66, type metadata accessor for WeatherDataOperationResult.Data);
      v47 = sub_1000EBEE4();
      v49 = v48;
      sub_1000E3614();
      v50 = sub_1000E2E18(v47, v49, &v78);

      *(v46 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Could not build single timeline entry for %s (returning .noWeatherData). weatherDataOperationResult.data=%{private,mask.hash}s", v46, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000E3614();
    }

    sub_1000D4FF8(2, a3);
    return sub_100006850(v23, &qword_10012F040, &unk_1000EEED0);
  }

  else
  {
    sub_1000E3F50(v42, v17, type metadata accessor for ForecastEntry);
    v51 = v68;
    sub_1000E3800(v17, v68, type metadata accessor for ForecastEntry);

    v52 = sub_1000E9F44();
    v53 = sub_1000EC1B4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v70 = v23;
      v78 = v55;
      *v54 = 136315651;
      *(v54 + 4) = sub_1000E2E18(*(v4 + 24), *(v4 + 32), &v78);
      *(v54 + 12) = 2160;
      *(v54 + 14) = 1752392040;
      *(v54 + 22) = 2081;
      sub_1000E3800(v51, v65, type metadata accessor for ForecastEntry);
      v56 = sub_1000EBEE4();
      v57 = v17;
      v59 = v58;
      sub_1000E3614();
      v60 = sub_1000E2E18(v56, v59, &v78);
      v17 = v57;

      *(v54 + 24) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "Successfully built single timeline entry for %s. entry=%{private,mask.hash}s", v54, 0x20u);
      swift_arrayDestroy();

      v61 = v70;
    }

    else
    {

      sub_1000E3614();
      v61 = v23;
    }

    sub_100006850(v61, &qword_10012F040, &unk_1000EEED0);
    return sub_1000E3F50(v17, a3, type metadata accessor for ForecastEntry);
  }
}

void sub_1000DA078()
{
  sub_100006A58();
  v2 = v1;
  v112 = v4;
  v113 = v3;
  v6 = v5;
  v118 = v7;
  sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  sub_1000090D4();
  v106 = v8;
  v107 = v9;
  sub_100009204();
  __chkstk_darwin(v10);
  v119 = &v98 - v11;
  sub_10000921C();
  v12 = sub_1000EBD14();
  sub_1000090D4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000091AC();
  v104 = v16 - v17;
  __chkstk_darwin(v18);
  sub_10000D56C();
  v116 = v19;
  sub_10000921C();
  sub_1000EBC44();
  sub_1000090D4();
  v110 = v21;
  v111 = v20;
  __chkstk_darwin(v20);
  sub_10004B3F0();
  v109 = v22;
  sub_10000921C();
  v117 = sub_1000E99A4();
  sub_1000069E4();
  __chkstk_darwin(v23);
  sub_10004B3F0();
  v115 = v24;
  v25 = sub_10000921C();
  v120 = type metadata accessor for WidgetLocation(v25);
  sub_1000069E4();
  __chkstk_darwin(v26);
  sub_1000091AC();
  v29 = v27 - v28;
  v31 = __chkstk_darwin(v30);
  v33 = &v98 - v32;
  v34 = __chkstk_darwin(v31);
  v105 = &v98 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v98 - v37;
  __chkstk_darwin(v36);
  v40 = &v98 - v39;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v41 = sub_1000E9F64();
  v42 = sub_100008CB8(v41, qword_100145C10);
  sub_1000E4C94();
  sub_1000E3800(v6, v40, v43);
  v114 = v6;
  sub_1000E3800(v6, v38, v0);

  v108 = v42;
  v44 = sub_1000E9F44();
  v45 = sub_1000EC1B4();

  v103 = v45;
  v46 = os_log_type_enabled(v44, v45);
  v102 = v29;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v101 = v12;
    v48 = v47;
    v99 = swift_slowAlloc();
    v122[0] = v99;
    *v48 = 136315907;
    *(v48 + 4) = sub_1000E2E18(*(v2 + 24), *(v2 + 32), v122);
    *(v48 + 12) = 2082;
    v121 = v40[*(v120 + 20)];
    sub_1000EBEF4();
    v49 = v2;
    v51 = v50;
    v100 = v33;
    sub_1000E3614();
    v52 = sub_1000E4D90();
    v54 = sub_1000E2E18(v52, v51, v53);
    v2 = v49;

    *(v48 + 14) = v54;
    *(v48 + 22) = 2160;
    sub_1000E4D0C();
    *(v48 + 24) = v55;
    *(v48 + 32) = 2081;
    sub_1000E99C4();
    sub_1000EBEF4();
    v57 = v56;
    v33 = v100;
    sub_1000E3614();
    v58 = sub_1000E4D90();
    v60 = sub_1000E2E18(v58, v57, v59);

    *(v48 + 34) = v60;
    _os_log_impl(&_mh_execute_header, v44, v103, "About to build a timeline for %s. locationState=%{public}s, location: %{private,mask.hash}s", v48, 0x2Au);
    v61 = v99;
    swift_arrayDestroy();
    sub_100009194(v61);
    v62 = v48;
    v12 = v101;
    sub_100009194(v62);
  }

  else
  {

    sub_1000E4C64();
    sub_1000E3614();
    sub_1000E3614();
  }

  v63 = v109;
  sub_1000EBD74();
  v64 = v114;
  v65 = sub_1000D264C(v113, v114, v63);
  (*(v110 + 8))(v63, v111);
  v66 = v116;
  if (v65)
  {
    v67 = *(v2 + 24);
    v68 = *(v2 + 32);
    sub_100006A70(v65, *(v64 + *(v120 + 20)), v67, v68, v116);
    (*(v14 + 16))(v104, v66, v12);
    type metadata accessor for ForecastEntry(0);
    sub_1000DB330();
    sub_1000EBDA4();
    sub_1000E3800(v64, v105, type metadata accessor for WidgetLocation);

    v69 = sub_1000E9F44();
    v70 = v12;
    v71 = sub_1000EC1B4();

    if (os_log_type_enabled(v69, v71))
    {
      v72 = sub_10000923C();
      v73 = v66;
      v74 = sub_1000E4E98();
      v122[0] = v74;
      *v72 = 136315651;
      *(v72 + 4) = sub_1000E2E18(v67, v68, v122);
      *(v72 + 12) = 2160;
      sub_1000E4D0C();
      *(v72 + 14) = v75;
      *(v72 + 22) = 2081;
      v76 = v70;
      sub_1000E99C4();
      sub_1000EBEF4();
      v78 = v77;
      sub_1000E4CAC();
      v79 = sub_1000E4D90();
      v81 = sub_1000E2E18(v79, v78, v80);

      *(v72 + 24) = v81;
      _os_log_impl(&_mh_execute_header, v69, v71, "Timeline: successfully built for %s! location: %{private,mask.hash}s", v72, 0x20u);
      swift_arrayDestroy();
      sub_100009194(v74);
      sub_100009118();

      (*(v14 + 8))(v73, v76);
    }

    else
    {

      sub_1000E4CAC();
      (*(v14 + 8))(v66, v70);
    }

    (*(v107 + 32))(v118, v119, v106);
  }

  else
  {
    sub_1000E4C94();
    sub_1000E3800(v64, v33, v82);
    sub_1000E3800(v64, v102, 0);

    v83 = sub_1000E9F44();
    v84 = sub_1000EC1B4();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v122[0] = v86;
      *v85 = 136315907;
      v87 = sub_1000E2E18(*(v2 + 24), *(v2 + 32), v122);
      sub_1000E4D68(v87);
      v121 = v33[*(v120 + 20)];
      sub_1000EBEF4();
      v89 = v88;
      sub_1000E3614();
      v90 = sub_1000E4D90();
      v92 = sub_1000E2E18(v90, v89, v91);

      *(v85 + 14) = v92;
      sub_1000E4CE0();
      sub_1000E99C4();
      sub_1000EBEF4();
      v94 = v93;
      sub_1000E3614();
      v95 = sub_1000E4D90();
      v97 = sub_1000E2E18(v95, v94, v96);

      *(v85 + 34) = v97;
      _os_log_impl(&_mh_execute_header, v83, v84, "Timeline: failed for %s (no entries so returning .noWeatherData). locationState=%{public}s, location: %{private,mask.hash}s", v85, 0x2Au);
      swift_arrayDestroy();
      sub_100009194(v86);
      sub_100009194(v85);
    }

    else
    {

      sub_1000E4C64();
      sub_1000E3614();
      sub_1000E3614();
    }

    sub_1000D9120(2, v118);
  }

  sub_100006A20();
}

void sub_1000DA980()
{
  v1 = v0;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E9F64();
  sub_100008CB8(v2, qword_100145C10);
  v3 = sub_1000E9F44();
  v4 = sub_1000EC1B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "About to refresh the app config - taking RBAssertion", v5, 2u);
  }

  v6 = sub_1000DABD8();
  if (v6)
  {
    v7 = v6;
    sub_1000E94B4();
    sub_1000E9CD4();
    v8 = sub_1000E9C44();
    sub_1000E9C84();

    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v7;

    v10 = v7;
    oslog = sub_1000E9C44();
    sub_1000E9CA4();
  }

  else
  {
    oslog = sub_1000E9F44();
    v11 = sub_1000EC194();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Error taking RBAssertion - we won't update the app config", v12, 2u);
    }
  }
}

id sub_1000DABD8()
{
  sub_100031CF8(0, &qword_1001359E0, RBSDomainAttribute_ptr);
  v0 = sub_1000DB1E0(0xD000000000000010, 0x80000001000FF6E0, 0x61546873696E6946, 0xED0000776F4E6B73);
  v1 = [objc_opt_self() currentProcess];
  sub_100002A10(&qword_1001359E8, &qword_1000FABD8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000FAA40;
  *(v2 + 32) = v0;
  objc_allocWithZone(RBSAssertion);
  v3 = v0;
  v4 = sub_1000E2D70(0xD00000000000001FLL, 0x80000001000FF700, v1, v2);
  v16 = 0;
  if ([v4 acquireWithError:&v16])
  {
    v5 = v16;
  }

  else
  {
    v6 = v16;
    sub_1000E8494();

    swift_willThrow();
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E9F64();
    sub_100008CB8(v7, qword_100145C10);
    swift_errorRetain();
    v8 = sub_1000E9F44();
    v9 = sub_1000EC1B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100002A10(&qword_100130548, &qword_1000F0CF0);
      v12 = sub_1000EBEF4();
      v14 = sub_1000E2E18(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "failed to acquire runningboard assertion. error=%s", v10, 0xCu);
      sub_100009068(v11);
    }

    [v4 invalidate];

    return 0;
  }

  return v4;
}

void sub_1000DAF44(uint64_t a1)
{
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E9F64();
  sub_100008CB8(v1, qword_100145C10);
  swift_errorRetain();
  oslog = sub_1000E9F44();
  v2 = sub_1000EC194();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_errorRetain();
    sub_100002A10(&qword_100130548, &qword_1000F0CF0);
    v5 = sub_1000EBEF4();
    v7 = sub_1000E2E18(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error refreshing app config. Error: %s", v3, 0xCu);
    sub_100009068(v4);
  }

  else
  {
  }
}

void sub_1000DB0E8(int a1, id a2)
{
  [a2 invalidate];
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E9F64();
  sub_100008CB8(v2, qword_100145C10);
  oslog = sub_1000E9F44();
  v3 = sub_1000EC1B4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Just refreshed the app config - release RBAssertion", v4, 2u);
  }
}

id sub_1000DB1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000EBE64();

  v5 = sub_1000EBE64();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

uint64_t sub_1000DB274()
{

  sub_100009068((v0 + 40));

  sub_100009068((v0 + 128));
  return v0;
}

uint64_t sub_1000DB2D4()
{
  sub_1000DB274();

  return _swift_deallocClassInstance(v0, 168, 7);
}

unint64_t sub_1000DB330()
{
  result = qword_100134888;
  if (!qword_100134888)
  {
    type metadata accessor for ForecastEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134888);
  }

  return result;
}

uint64_t sub_1000DB71C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = swift_projectBox();
  sub_100072EB0(v9, v8, &qword_10012F040, &unk_1000EEED0);
  v10 = type metadata accessor for ForecastEntry(0);
  if (sub_100005B30(v8, 1, v10) != 1)
  {
    return sub_1000E3F50(v8, a2, type metadata accessor for ForecastEntry);
  }

  sub_100006850(v8, &qword_10012F040, &unk_1000EEED0);
  sub_1000D4FF8(2, a2);
  sub_1000E3800(a2, v6, type metadata accessor for ForecastEntry);
  sub_1000028A0(v6, 0, 1, v10);
  swift_beginAccess();
  return sub_1000E385C(v6, v9);
}

uint64_t sub_1000DB8BC(uint64_t a1)
{
  v2 = sub_1000EBC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WidgetFamily.systemSmall(_:) || v6 == enum case for WidgetFamily.systemMedium(_:) || v6 == enum case for WidgetFamily.systemLarge(_:) || v6 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return 1;
  }

  if (v6 != enum case for WidgetFamily.accessoryCircular(_:) && v6 != enum case for WidgetFamily.accessoryRectangular(_:))
  {
    if (v6 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v3 + 8))(v5, v2);
    }

    return 1;
  }

  return 0;
}

void sub_1000DBA40()
{
  sub_100006A58();
  v76 = v0;
  v77 = v1;
  v80 = v2;
  v81 = v3;
  v79 = v4;
  v78 = v5;
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v6);
  sub_100009204();
  __chkstk_darwin(v7);
  v73 = &v68 - v8;
  sub_10000921C();
  v75 = sub_1000E9A84();
  sub_1000090D4();
  v72 = v9;
  __chkstk_darwin(v10);
  sub_1000E4E08();
  v71 = v11;
  __chkstk_darwin(v12);
  sub_10000D56C();
  v74 = v13;
  v14 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  sub_100009210(v14);
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  v18 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  sub_1000090D4();
  v20 = v19;
  sub_100009204();
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = type metadata accessor for ForecastEntry(0);
  sub_1000069E4();
  __chkstk_darwin(v25);
  sub_1000091AC();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v70 = v31;

    v34 = sub_1000AB7F8();

    if (v34)
    {

      sub_1000A8908(v78, v23);

      sub_1000EBDB4();
      v35 = *(v20 + 8);
      v20 += 8;
      v35(v23, v18);
      sub_100007804();

      if (sub_100005B30(v17, 1, v24) != 1)
      {
        sub_1000E4C7C();
        sub_1000E3F50(v17, v28, v53);
        v80(v28);

        sub_1000E4C04();
        goto LABEL_20;
      }

      sub_100006850(v17, &qword_10012F040, &unk_1000EEED0);
    }

    if (v79 == 4)
    {
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C(&qword_10012EB38);
      }

      v36 = sub_1000E9F64();
      sub_100008CB8(v36, qword_100145C10);

      v37 = sub_1000E9F44();
      v38 = sub_1000EC194();

      if (os_log_type_enabled(v37, v38))
      {
        v24 = sub_1000E4DDC();
        v82[0] = sub_10000923C();
        sub_1000E4DB8(4.8149e-34);
        v39 = sub_1000E2E18(v33, v28, v82);

        *(v24 + 4) = v39;
        sub_1000E4E60(&_mh_execute_header, v40, v41, "Accessory - Snapshot: failed for %s (no location permissions)");
        v42 = sub_1000E4D9C();
        sub_100009194(v42);
        sub_100009118();
      }

      sub_1000E4E40();
      v43 = v20;
      v44 = 0;
    }

    else
    {
      v24 = v73;
      sub_100072EB0(v78, v73, &qword_100130440, &qword_1000F0BE0);
      v45 = v75;
      if (sub_100005B30(v24, 1, v75) != 1)
      {
        v54 = v72;
        v69 = *(v72 + 32);
        v55 = v74;
        v69(v74, v24, v45);
        v78 = *(v33 + 80);
        LODWORD(v73) = *(v33 + 16);
        sub_1000E4CD4();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = v71;
        v58 = v55;
        v59 = v45;
        (*(v54 + 16))(v71, v58, v45);
        v60 = *(v54 + 80);
        v70 = v33;
        v61 = (v60 + 57) & ~v60;
        v62 = swift_allocObject();
        v63 = v80;
        v64 = v81;
        *(v62 + 16) = v56;
        *(v62 + 24) = v63;
        v65 = v76;
        v66 = v77;
        *(v62 + 32) = v64;
        *(v62 + 40) = v65;
        *(v62 + 48) = v66;
        *(v62 + 56) = v79;
        v69(v62 + v61, v57, v59);

        v67 = v74;
        sub_1000A0834(v74, v73, sub_1000E3788, v62);

        (*(v54 + 8))(v67, v59);

        goto LABEL_21;
      }

      sub_100006850(v24, &qword_100130440, &qword_1000F0BE0);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C(&qword_10012EB38);
      }

      v46 = sub_1000E9F64();
      sub_100008CB8(v46, qword_100145C10);

      v47 = sub_1000E9F44();
      v48 = sub_1000EC194();

      if (os_log_type_enabled(v47, v48))
      {
        v24 = sub_1000E4DDC();
        v82[0] = sub_10000923C();
        sub_1000E4DB8(4.8149e-34);
        v49 = sub_1000E2E18(v33, v28, v82);

        *(v24 + 4) = v49;
        sub_1000E4E60(&_mh_execute_header, v50, v51, "Accessory - Snapshot: failed for %s (no location)");
        v52 = sub_1000E4D9C();
        sub_100009194(v52);
        sub_100009118();
      }

      sub_1000E4E40();
      v43 = v20;
      v44 = 1;
    }

    sub_1000D4FF8(v44, v43);

    (v24)(v20);

    sub_1000E4C04();
  }

  else
  {
    sub_1000DB71C(v31);
    v80(v31);
    sub_1000E4C04();
  }

LABEL_20:
  sub_1000E3614();
LABEL_21:
  sub_100006A20();
}

uint64_t sub_1000DC150(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, int a7, char *a8)
{
  v81 = a8;
  v85 = a4;
  v86 = a3;
  v12 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  __chkstk_darwin(v12 - 8);
  v14 = v78 - v13;
  v82 = type metadata accessor for WidgetLocation(0);
  __chkstk_darwin(v82);
  v83 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for WeatherDataOperationResult(0);
  v16 = __chkstk_darwin(v84);
  v80 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v78 - v18;
  v20 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v20);
  v22 = (v78 - v21);
  v23 = type metadata accessor for ForecastEntry(0);
  __chkstk_darwin(v23 - 8);
  v25 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v78[2] = a5;
    sub_100072EB0(a1, v22, &qword_1001325D8, &unk_1000FABC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v79 = a7;
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v22;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v30 = sub_1000E9F64();
      v31 = sub_100008CB8(v30, qword_100145C10);

      v32 = sub_1000E9F44();
      v33 = sub_1000EC1B4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v78[0] = v31;
        v36 = v35;
        v88 = v35;
        *v34 = 136315138;
        v78[1] = a6;
        v37 = v29;
        v39 = *(v27 + 24);
        v38 = *(v27 + 32);

        v40 = sub_1000E2E18(v39, v38, &v88);

        *(v34 + 4) = v40;
        v29 = v37;
        _os_log_impl(&_mh_execute_header, v32, v33, "Accessory - Snapshot: failed to fetch or interpolate fresh weather data for %s, trying old cached data first", v34, 0xCu);
        sub_100009068(v36);
      }

      sub_1000A114C(v81, v14);

      if (sub_100005B30(v14, 1, v84) == 1)
      {
        sub_100006850(v14, &qword_1001359D8, &qword_1000FABB8);

        swift_errorRetain();
        v41 = sub_1000E9F44();
        v42 = sub_1000EC194();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *v43 = 136315651;
          v81 = v25;
          v44 = *(v27 + 24);
          v45 = *(v27 + 32);

          v46 = sub_1000E2E18(v44, v45, &v88);

          *(v43 + 4) = v46;
          *(v43 + 12) = 2160;
          *(v43 + 14) = 1752392040;
          *(v43 + 22) = 2081;
          v87 = v29;
          swift_errorRetain();
          sub_100002A10(&qword_100130548, &qword_1000F0CF0);
          v47 = sub_1000EBEE4();
          v49 = sub_1000E2E18(v47, v48, &v88);
          v25 = v81;

          *(v43 + 24) = v49;
          _os_log_impl(&_mh_execute_header, v41, v42, "Accessory - Snapshot: failed to fetch weather data or get cached data for %s ... returning .noWeatherData. error=%{private,mask.hash}s", v43, 0x20u);
          swift_arrayDestroy();
        }

        sub_1000DB71C(v25);
        v86(v25);
      }

      else
      {
        v63 = v80;
        sub_1000E3F50(v14, v80, type metadata accessor for WeatherDataOperationResult);

        v64 = sub_1000E9F44();
        v65 = sub_1000EC1B4();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v81 = v29;
          v67 = v66;
          v68 = swift_slowAlloc();
          v88 = v68;
          *v67 = 136315138;
          v69 = *(v27 + 24);
          v70 = *(v27 + 32);

          v71 = sub_1000E2E18(v69, v70, &v88);

          *(v67 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v64, v65, "Accessory - Snapshot: successsully retrieved cached weather data for %s", v67, 0xCu);
          sub_100009068(v68);
        }

        v72 = *(v84 + 20);
        v73 = sub_1000E9A84();
        v74 = v63 + v72;
        v75 = v83;
        (*(*(v73 - 8) + 16))(v83, v74, v73);
        v76 = v82;
        *(v75 + *(v82 + 20)) = v79;
        *(v75 + *(v76 + 24)) = 0;
        sub_1000D9728(v63, v75, v25);
        sub_1000E3614();
        v86(v25);

        sub_1000E3614();
      }
    }

    else
    {
      sub_1000E3F50(v22, v19, type metadata accessor for WeatherDataOperationResult);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v50 = sub_1000E9F64();
      sub_100008CB8(v50, qword_100145C10);

      v51 = sub_1000E9F44();
      v52 = sub_1000EC1B4();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v88 = v54;
        *v53 = 136315138;
        v56 = *(v27 + 24);
        v55 = *(v27 + 32);
        v81 = v25;

        v57 = sub_1000E2E18(v56, v55, &v88);
        v25 = v81;

        *(v53 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "Accessory - Snapshot: successsully fetched weather data for %s", v53, 0xCu);
        sub_100009068(v54);
      }

      v58 = *(v84 + 20);
      v59 = sub_1000E9A84();
      v60 = &v19[v58];
      v61 = v83;
      (*(*(v59 - 8) + 16))(v83, v60, v59);
      v62 = v82;
      *(v61 + *(v82 + 20)) = v79;
      *(v61 + *(v62 + 24)) = 0;
      sub_1000D9728(v19, v61, v25);
      sub_1000E3614();
      v86(v25);

      sub_1000E3614();
    }
  }

  else
  {
    sub_1000DB71C(v25);
    v86(v25);
  }

  return sub_1000E3614();
}

void sub_1000DCB50()
{
  sub_100006A58();
  v1 = v0;
  v58 = v2;
  v59 = v3;
  v69 = v4;
  sub_1000EBC44();
  sub_1000090D4();
  v61 = v6;
  v62 = v5;
  __chkstk_darwin(v5);
  sub_10004B3F0();
  v60 = v7;
  sub_10000921C();
  v8 = sub_1000EBD94();
  sub_1000090D4();
  v63 = v9;
  __chkstk_darwin(v10);
  v57 = v11;
  v68 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000921C();
  v65 = sub_1000E8604();
  sub_1000090D4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000E4E08();
  v16 = v15;
  v56 = v17;
  __chkstk_darwin(v18);
  sub_10000D56C();
  v67 = v19;
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  v22 = qword_10012EB38;

  if (v22 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v23 = sub_1000E9F64();
  sub_100008CB8(v23, qword_100145C10);

  v24 = sub_1000E9F44();
  v25 = sub_1000EC1B4();

  v26 = os_log_type_enabled(v24, v25);
  v64 = v20;
  v66 = v21;
  if (v26)
  {
    v27 = sub_1000E4DDC();
    v70 = sub_10000923C();
    *v27 = 136315138;
    *(v27 + 4) = sub_1000E2E18(v21, v64, &v70);
    _os_log_impl(&_mh_execute_header, v24, v25, "Accessory - Timeline requested for %s", v27, 0xCu);
    v28 = sub_1000E4D9C();
    sub_100009194(v28);
    sub_100009194(v27);
  }

  v29 = v67;
  sub_1000E85B4();
  sub_1000E4CD4();
  v30 = swift_allocObject();
  sub_1000E4E80(v30);
  v31 = v63;
  v32 = *(v63 + 16);
  v54 = v63 + 16;
  v55 = v32;
  v32(v68, v69, v8);
  v33 = v65;
  (*(v13 + 16))(v16, v29, v65);
  v34 = *(v31 + 80);
  v50 = v1;
  v51 = v8;
  v35 = v13;
  v36 = v8;
  v37 = (v34 + 56) & ~v34;
  v57 += v37;
  v52 = v34 | 7;
  v53 = v37;
  v38 = (v57 + *(v13 + 80)) & ~*(v13 + 80);
  v39 = swift_allocObject();
  v40 = v64;
  *(v39 + 2) = v66;
  *(v39 + 3) = v40;
  v41 = v58;
  *(v39 + 4) = v30;
  *(v39 + 5) = v41;
  *(v39 + 6) = v59;
  v63 = *(v31 + 32);
  v42 = &v39[v37];
  v43 = v68;
  (v63)(v42, v68, v36);
  (*(v35 + 32))(&v39[v38], v16, v33);

  sub_1000DA980();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();

  v44 = v60;
  v45 = v69;
  sub_1000EBD74();
  LODWORD(v59) = sub_1000DB8BC(v44);
  (*(v61 + 8))(v44, v62);
  sub_1000E4CD4();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = v51;
  v55(v43, v45, v51);
  v48 = swift_allocObject();
  v49 = v66;
  v48[2] = v46;
  v48[3] = v49;
  v48[4] = v40;
  v48[5] = sub_1000E2C28;
  v48[6] = v39;
  (v63)(v48 + v53, v43, v47);

  sub_10002A1F4(v59 & 1, sub_1000E2CF8);

  (*(v35 + 8))(v67, v65);

  sub_100006A20();
}

uint64_t sub_1000DD06C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v10 = sub_1000E9F64();
  sub_100008CB8(v10, qword_100145C10);

  v11 = sub_1000E9F44();
  v12 = sub_1000EC1B4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000E2E18(a3, a4, v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "Accessory - Completing timeline for %{public}s", v13, 0xCu);
    sub_100009068(v14);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  result = a6(a1);
  if (Strong)
  {
  }

  return result;
}

void sub_1000DD210(char *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v81 = a6;
  v75 = a2;
  v76 = a1;
  v73 = sub_1000EBD94();
  v70 = *(v73 - 8);
  v11 = *(v70 + 64);
  __chkstk_darwin(v73);
  v71 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v12 - 8);
  v14 = v67 - v13;
  v15 = sub_1000E9A84();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v67 - v19;
  v21 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  __chkstk_darwin(v21 - 8);
  v78 = v67 - v22;
  v23 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v79 = *(v23 - 8);
  v80 = v23;
  __chkstk_darwin(v23);
  v77 = (v67 - v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v68 = a4;
    v26 = a5;
    v74 = a7;
    v27 = Strong;

    v28 = sub_1000AB7F8();

    if (v28)
    {

      v29 = v77;
      sub_1000A8908(v76, v77);

      v30 = sub_1000E9E24();
      v31 = v78;
      sub_1000028A0(v78, 1, 1, v30);
      v81(v29, v31);

      v32 = v31;
LABEL_15:
      sub_100006850(v32, &qword_1001359C8, &qword_1000FABA8);
      (*(v79 + 8))(v29, v80);
      return;
    }

    if (v75 == 4)
    {
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v39 = sub_1000E9F64();
      sub_100008CB8(v39, qword_100145C10);

      v40 = sub_1000E9F44();
      v41 = sub_1000EC1B4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v82 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_1000E2E18(v68, v26, &v82);
        _os_log_impl(&_mh_execute_header, v40, v41, "Accessory - Timeline: failed for %s (no location permissions)", v42, 0xCu);
        sub_100009068(v43);
      }

      v29 = v77;
      sub_1000D9120(0, v77);
      v44 = sub_1000E9E24();
      v45 = v78;
      sub_1000028A0(v78, 1, 1, v44);
      v81(v29, v45);

      v32 = v45;
      goto LABEL_15;
    }

    sub_100072EB0(v76, v14, &qword_100130440, &qword_1000F0BE0);
    if (sub_100005B30(v14, 1, v15) == 1)
    {
      sub_100006850(v14, &qword_100130440, &qword_1000F0BE0);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v46 = sub_1000E9F64();
      sub_100008CB8(v46, qword_100145C10);

      v47 = sub_1000E9F44();
      v48 = sub_1000EC1B4();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v82 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_1000E2E18(v68, v26, &v82);
        _os_log_impl(&_mh_execute_header, v47, v48, "Accessory - Timeline: failed for %s (no location)", v49, 0xCu);
        sub_100009068(v50);
      }

      v51 = v77;
      sub_1000D9120(1, v77);
      v52 = enum case for WidgetRefreshFailureReason.noLocationData(_:);
      v53 = sub_1000E9E24();
      v54 = v78;
      (*(*(v53 - 8) + 104))(v78, v52, v53);
      sub_1000028A0(v54, 0, 1, v53);
      v81(v51, v54);

      sub_100006850(v54, &qword_1001359C8, &qword_1000FABA8);
      (*(v79 + 8))(v51, v80);
    }

    else
    {
      v55 = v72;
      v56 = *(v72 + 32);
      v76 = (v72 + 32);
      v77 = v56;
      v78 = v26;
      v56(v20, v14, v15);
      v80 = *(v27 + 80);
      LODWORD(v79) = *(v27 + 16);
      v67[2] = v27;
      v57 = swift_allocObject();
      v67[1] = v57;
      swift_weakInit();
      (*(v55 + 16))(v18, v20, v15);
      v58 = v70;
      (*(v70 + 16))(v71, v69, v73);
      v59 = (*(v55 + 80) + 40) & ~*(v55 + 80);
      v60 = v59 + v16;
      v61 = (*(v58 + 80) + v59 + v16 + 1) & ~*(v58 + 80);
      v62 = swift_allocObject();
      v63 = v68;
      *(v62 + 2) = v57;
      *(v62 + 3) = v63;
      v64 = v77;
      *(v62 + 4) = v78;
      v64(&v62[v59], v18, v15);
      v62[v60] = v75;
      (*(v58 + 32))(&v62[v61], v71, v73);
      v65 = &v62[(v11 + v61 + 7) & 0xFFFFFFFFFFFFFFF8];
      v66 = v74;
      *v65 = v81;
      v65[1] = v66;

      sub_1000A0834(v20, v79, sub_1000E351C, v62);

      (*(v72 + 8))(v20, v15);
    }
  }

  else
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v33 = sub_1000E9F64();
    sub_100008CB8(v33, qword_100145C10);

    v34 = sub_1000E9F44();
    v35 = sub_1000EC1B4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = a5;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v82 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000E2E18(a4, v36, &v82);
      _os_log_impl(&_mh_execute_header, v34, v35, "Accessory - Timeline: failed for %s (we have been deallocated while obtaining location information)", v37, 0xCu);
      sub_100009068(v38);
    }
  }
}

void sub_1000DDC1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v83 = a8;
  v84 = a3;
  v77 = a7;
  v78 = a5;
  LODWORD(v75) = a6;
  v11 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - v12;
  v14 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  __chkstk_darwin(v14 - 8);
  v82 = &v72 - v15;
  v76 = type metadata accessor for WidgetLocation(0);
  __chkstk_darwin(v76);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v80 = *(v18 - 8);
  v81 = v18;
  __chkstk_darwin(v18);
  v79 = &v72 - v19;
  v20 = type metadata accessor for WeatherDataOperationResult(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  v26 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v26);
  v28 = (&v72 - v27);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v74 = a9;
    sub_100072EB0(a1, v28, &qword_1001325D8, &unk_1000FABC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v28;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v30 = sub_1000E9F64();
      v31 = sub_100008CB8(v30, qword_100145C10);

      v75 = v31;
      v32 = sub_1000E9F44();
      v33 = sub_1000EC1B4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v73 = v29;
        v35 = v34;
        v36 = swift_slowAlloc();
        v86 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1000E2E18(v84, a4, &v86);
        _os_log_impl(&_mh_execute_header, v32, v33, "Accessory - Timeline: failed to fetch or interpolate fresh weather data for %s, trying old cached data first", v35, 0xCu);
        sub_100009068(v36);

        v29 = v73;
      }

      v37 = v78;

      sub_1000A114C(v37, v13);

      if (sub_100005B30(v13, 1, v20) == 1)
      {
        sub_100006850(v13, &qword_1001359D8, &qword_1000FABB8);

        swift_errorRetain();
        v38 = sub_1000E9F44();
        v39 = sub_1000EC194();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *v40 = 136315651;
          *(v40 + 4) = sub_1000E2E18(v84, a4, &v86);
          *(v40 + 12) = 2160;
          *(v40 + 14) = 1752392040;
          *(v40 + 22) = 2081;
          v85 = v29;
          swift_errorRetain();
          sub_100002A10(&qword_100130548, &qword_1000F0CF0);
          v41 = sub_1000EBEE4();
          v43 = sub_1000E2E18(v41, v42, &v86);

          *(v40 + 24) = v43;
          _os_log_impl(&_mh_execute_header, v38, v39, "Accessory - Timeline: failed to fetch weather data or get cached data for %s ... returning .noWeatherData. error=%{private,mask.hash}s", v40, 0x20u);
          swift_arrayDestroy();
        }

        v44 = v79;
        sub_1000D9120(2, v79);
        v45 = enum case for WidgetRefreshFailureReason.noWeatherData(_:);
        v46 = sub_1000E9E24();
        v47 = v82;
        (*(*(v46 - 8) + 104))(v82, v45, v46);
        sub_1000028A0(v47, 0, 1, v46);
        v83(v44, v47);

        sub_100006850(v47, &qword_1001359C8, &qword_1000FABA8);
        (*(v80 + 8))(v44, v81);
        return;
      }

      sub_1000E3F50(v13, v23, type metadata accessor for WeatherDataOperationResult);

      v63 = sub_1000E9F44();
      v64 = sub_1000EC1B4();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v86 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_1000E2E18(v84, a4, &v86);
        _os_log_impl(&_mh_execute_header, v63, v64, "Accessory - Timeline: successsully retrieved cached weather data for %s", v65, 0xCu);
        sub_100009068(v66);
      }

      v67 = sub_1000E9A84();
      (*(*(v67 - 8) + 16))(v17, v37, v67);
      v68 = v76;
      v17[*(v76 + 20)] = 2;
      v17[*(v68 + 24)] = 0;
      v69 = v79;
      sub_1000DA078();
      sub_1000E3614();
      v70 = sub_1000E9E24();
      v71 = v82;
      sub_1000028A0(v82, 1, 1, v70);
      v83(v69, v71);

      sub_100006850(v71, &qword_1001359C8, &qword_1000FABA8);
      (*(v80 + 8))(v69, v81);
    }

    else
    {
      sub_1000E3F50(v28, v25, type metadata accessor for WeatherDataOperationResult);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v53 = sub_1000E9F64();
      sub_100008CB8(v53, qword_100145C10);

      v54 = sub_1000E9F44();
      v55 = sub_1000EC1B4();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v86 = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_1000E2E18(v84, a4, &v86);
        _os_log_impl(&_mh_execute_header, v54, v55, "Accessory - Timeline: successfully fetched weather data for %s", v56, 0xCu);
        sub_100009068(v57);
      }

      v58 = sub_1000E9A84();
      (*(*(v58 - 8) + 16))(v17, v78, v58);
      v59 = v76;
      v17[*(v76 + 20)] = v75;
      v17[*(v59 + 24)] = 0;
      v60 = v79;
      sub_1000DA078();
      sub_1000E3614();
      v61 = sub_1000E9E24();
      v62 = v82;
      sub_1000028A0(v82, 1, 1, v61);
      v83(v60, v62);

      sub_100006850(v62, &qword_1001359C8, &qword_1000FABA8);
      (*(v80 + 8))(v60, v81);
    }

    sub_1000E3614();
    return;
  }

  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v48 = sub_1000E9F64();
  sub_100008CB8(v48, qword_100145C10);

  v49 = sub_1000E9F44();
  v50 = sub_1000EC1B4();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v86 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1000E2E18(v84, a4, &v86);
    _os_log_impl(&_mh_execute_header, v49, v50, "Accessory - Timeline: failed for %s (we have been deallocated while fetching weather data)", v51, 0xCu);
    sub_100009068(v52);
  }
}

uint64_t sub_1000DE840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000E4BFC;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000DE8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000E4BFC;

  return TimelineProvider.relevance()(a1, a2, a3);
}

void sub_1000DE9A8()
{
  sub_100006A58();
  v2 = v1;
  v42 = v3;
  v4 = sub_1000E4D00();
  v5 = type metadata accessor for ForecastEntry(v4);
  v6 = sub_100032590(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_1000E4E08();
  v41 = v11;
  __chkstk_darwin(v12);
  sub_10000D56C();
  v43 = v13;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v14 = sub_1000E9F64();
  sub_100008CB8(v14, qword_100145C10);
  v15 = v0;
  v16 = sub_1000E9F44();
  v17 = sub_1000EC1B4();

  if (os_log_type_enabled(v16, v17))
  {
    v40 = v2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v39 = sub_1000E4E98();
    v44 = v39;
    *v18 = 136446979;
    sub_1000E3C94(v15);
    sub_100002A10(&qword_100130540, &qword_1000F0808);
    v20 = sub_1000EBEF4();
    v22 = sub_1000E2E18(v20, v21, &v44);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2160;
    sub_1000E4D0C();
    *(v18 + 14) = v23;
    *(v18 + 22) = 2081;
    v24 = [v15 location];
    if (v24)
    {
      sub_1000E3C24(v24);
    }

    v25 = sub_1000EBEF4();
    v27 = sub_1000E2E18(v25, v26, &v44);

    *(v18 + 24) = v27;
    *(v18 + 32) = 2114;
    v28 = [v15 isPredictedLocation];
    *(v18 + 34) = v28;
    *v19 = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "Snapshot Requested. configuration.identifier=%{public}s, location=%{private,mask.hash}s, isPredictedLocation=%{public}@", v18, 0x2Au);
    sub_100006850(v19, &qword_1001325D0, &unk_1000F3D80);
    sub_100009194(v19);
    swift_arrayDestroy();
    sub_100009194(v39);
    sub_100009194(v18);

    v2 = v40;
  }

  else
  {
  }

  if (sub_1000D8BF4() && !sub_1000E9794())
  {
    v29 = sub_1000E9F44();
    v30 = sub_1000EC1B4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Setup stub data", v31, 2u);
      sub_100009118();
    }

    sub_1000E9784();
  }

  sub_1000DA980();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();

  sub_1000D4FF8(2, v43);
  sub_1000E4CD4();
  v32 = swift_allocObject();
  swift_weakInit();
  sub_1000E4C1C();
  sub_1000E3800(v43, v41, v33);
  v34 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = v42;
  v35[4] = v2;
  sub_1000E4C7C();
  sub_1000E3F50(v41, v36 + v34, v37);
  *(v35 + ((v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v38 = v15;

  sub_1000273E4(v38, sub_1000E44EC, v35);

  sub_1000E4C04();
  sub_1000E3614();

  sub_100006A20();
}

uint64_t sub_1000DEE1C(char *a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, char *a6, void *a7)
{
  v85 = a7;
  v89 = a6;
  v90 = a5;
  v88 = a2;
  v87 = a1;
  v8 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v8 - 8);
  v79 = &v74 - v9;
  v83 = sub_1000E9A84();
  v78 = *(v83 - 8);
  v10 = *(v78 + 64);
  v11 = __chkstk_darwin(v83);
  v80 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v74 - v12;
  v13 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - v14;
  v16 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v74 - v18;
  v20 = type metadata accessor for ForecastEntry(0);
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  v22 = __chkstk_darwin(v20);
  v84 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v74 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a4(v89);
  }

  v82 = a4;
  v86 = Strong;

  v26 = sub_1000AB7F8();

  if (v26)
  {

    sub_1000A8908(v87, v19);

    sub_1000EBDB4();
    (*(v17 + 8))(v19, v16);
    sub_100007804();

    if (sub_100005B30(v15, 1, v20) != 1)
    {
      sub_1000E3F50(v15, v24, type metadata accessor for ForecastEntry);
      v82(v24);

      return sub_1000E3614();
    }

    sub_100006850(v15, &qword_10012F040, &unk_1000EEED0);
  }

  if (v88 == 4)
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v27 = sub_1000E9F64();
    sub_100008CB8(v27, qword_100145C10);
    v28 = v85;
    v29 = sub_1000E9F44();
    v30 = sub_1000EC194();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v31 = 136446723;
      v91 = sub_1000E3C94(v28);
      v92 = v32;
      sub_100002A10(&qword_100130540, &qword_1000F0808);
      v33 = sub_1000EBEF4();
      v35 = sub_1000E2E18(v33, v34, &v93);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      v36 = [v28 location];
      if (v36)
      {
        v36 = sub_1000E3C24(v36);
      }

      else
      {
        v37 = 0;
      }

      v52 = v82;
      v91 = v36;
      v92 = v37;
      v66 = sub_1000EBEF4();
      v68 = sub_1000E2E18(v66, v67, &v93);

      *(v31 + 24) = v68;
      _os_log_impl(&_mh_execute_header, v29, v30, "Snapshot: failed (no location permissions). configuration.identifier=%{public}s, location= %{private,mask.hash}s", v31, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v52 = v82;
    }

    v69 = v84;
    sub_1000D4FF8(0, v84);

    v52(v69);

    return sub_1000E3614();
  }

  v39 = v79;
  sub_100072EB0(v87, v79, &qword_100130440, &qword_1000F0BE0);
  v40 = v83;
  if (sub_100005B30(v39, 1, v83) == 1)
  {
    sub_100006850(v39, &qword_100130440, &qword_1000F0BE0);
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v41 = sub_1000E9F64();
    sub_100008CB8(v41, qword_100145C10);
    v42 = v85;
    v43 = sub_1000E9F44();
    v44 = sub_1000EC194();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v45 = 136446723;
      v91 = sub_1000E3C94(v42);
      v92 = v46;
      sub_100002A10(&qword_100130540, &qword_1000F0808);
      v47 = sub_1000EBEF4();
      v49 = sub_1000E2E18(v47, v48, &v93);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2160;
      *(v45 + 14) = 1752392040;
      *(v45 + 22) = 2081;
      v50 = [v42 location];
      if (v50)
      {
        v50 = sub_1000E3C24(v50);
      }

      else
      {
        v51 = 0;
      }

      v70 = v82;
      v91 = v50;
      v92 = v51;
      v71 = sub_1000EBEF4();
      v73 = sub_1000E2E18(v71, v72, &v93);

      *(v45 + 24) = v73;
      _os_log_impl(&_mh_execute_header, v43, v44, "Snapshot failed (no location). configuration.identifier=%{public}s, location=%{private,mask.hash}s", v45, 0x20u);
      swift_arrayDestroy();

      v70(v89);
    }

    else
    {

      v82(v89);
    }
  }

  else
  {
    v53 = v78;
    v76 = *(v78 + 32);
    v54 = v81;
    v76(v81, v39, v40);
    v87 = *(v86 + 80);
    LODWORD(v79) = *(v86 + 16);
    v75 = swift_allocObject();
    swift_weakInit();
    v55 = v84;
    sub_1000E3800(v89, v84, type metadata accessor for ForecastEntry);
    (*(v53 + 16))(v80, v54, v40);
    v56 = (*(v77 + 80) + 40) & ~*(v77 + 80);
    v57 = v56 + v21;
    v58 = (v56 + v21) & 0xFFFFFFFFFFFFFFF8;
    v59 = (*(v53 + 80) + v58 + 16) & ~*(v53 + 80);
    v60 = swift_allocObject();
    v61 = v82;
    v60[2] = v75;
    v60[3] = v61;
    v60[4] = v90;
    sub_1000E3F50(v55, v60 + v56, type metadata accessor for ForecastEntry);
    *(v60 + v57) = v88;
    v62 = v85;
    *(v60 + v58 + 8) = v85;
    v63 = v83;
    v76(v60 + v59, v80, v83);

    v64 = v62;
    v65 = v81;
    sub_1000A0834(v81, v79, sub_1000E4B10, v60);

    (*(v53 + 8))(v65, v63);
  }
}

uint64_t sub_1000DF86C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8)
{
  v91 = a8;
  v98 = a7;
  v97 = a6;
  v102 = a1;
  v11 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v84 - v12;
  v14 = sub_1000E9A84();
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = __chkstk_darwin(v14);
  v96 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v84 - v17;
  v101 = type metadata accessor for WidgetLocation(0);
  v18 = __chkstk_darwin(v101);
  v87 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v88 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v84 - v23;
  __chkstk_darwin(v22);
  v94 = &v84 - v25;
  v26 = type metadata accessor for ForecastEntry(0);
  v27 = __chkstk_darwin(v26 - 8);
  v86 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v93 = &v84 - v29;
  v30 = type metadata accessor for WeatherDataOperationResult(0);
  v31 = __chkstk_darwin(v30);
  v95 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v84 - v33;
  v35 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v35);
  v37 = (&v84 - v36);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a3(a5);
  }

  v85 = a5;
  v89 = a3;
  v90 = a4;
  sub_100072EB0(v102, v37, &qword_1001325D8, &unk_1000FABC0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000E3F50(v37, v34, type metadata accessor for WeatherDataOperationResult);
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v53 = sub_1000E9F64();
    sub_100008CB8(v53, qword_100145C10);
    v54 = sub_1000E9F44();
    v55 = sub_1000EC1B4();
    v56 = os_log_type_enabled(v54, v55);
    v58 = v100;
    v57 = v101;
    v59 = v92;
    if (v56)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Snapshot: successsully fetched weather data", v60, 2u);
    }

    v61 = v99;
    v62 = *(v99 + 16);
    v62(v59, &v34[*(v30 + 20)], v58);
    v62(v24, v59, v58);
    v24[*(v57 + 20)] = v97;
    v63 = v98;
    v64 = [v63 isPredictedLocation];
    sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
    v65.super.super.isa = sub_1000EC344(1).super.super.isa;
    if (v64)
    {
      v66 = sub_1000EC354();

      (*(v61 + 8))(v59, v58);
      v65.super.super.isa = v64;
    }

    else
    {

      (*(v61 + 8))(v59, v58);
      v66 = 0;
    }

    v24[*(v57 + 24)] = v66 & 1;
    v79 = v24;
    v80 = v94;
    sub_1000E3F50(v79, v94, type metadata accessor for WidgetLocation);
    v81 = v93;
    sub_1000D9728(v34, v80, v93);
    sub_1000E3614();
    v89(v81);

    sub_1000E3614();
    return sub_1000E3614();
  }

  v38 = *v37;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v39 = sub_1000E9F64();
  sub_100008CB8(v39, qword_100145C10);
  v40 = sub_1000E9F44();
  v41 = sub_1000EC1B4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Snapshot: failed to fetch or interpolate fresh weather data, trying old cached data first", v42, 2u);
  }

  sub_1000A114C(v91, v13);

  v43 = sub_100005B30(v13, 1, v30);
  v44 = v96;
  if (v43 != 1)
  {
    v102 = v38;
    v67 = v95;
    sub_1000E3F50(v13, v95, type metadata accessor for WeatherDataOperationResult);
    v68 = *(v30 + 20);
    v70 = v99;
    v69 = v100;
    v71 = *(v99 + 16);
    v71(v44, v67 + v68, v100);
    v72 = v87;
    v71(v87, v44, v69);
    v73 = v101;
    *(v72 + *(v101 + 20)) = v97;
    v74 = v98;
    v75 = v44;
    v76 = [v74 isPredictedLocation];
    sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
    v77.super.super.isa = sub_1000EC344(1).super.super.isa;
    if (v76)
    {
      v78 = sub_1000EC354();

      (*(v70 + 8))(v75, v69);
      v77.super.super.isa = v76;
    }

    else
    {

      (*(v70 + 8))(v75, v69);
      v78 = 0;
    }

    *(v72 + *(v73 + 24)) = v78 & 1;
    v82 = v88;
    sub_1000E3F50(v72, v88, type metadata accessor for WidgetLocation);
    v83 = v86;
    sub_1000D9728(v95, v82, v86);
    sub_1000E3614();
    v89(v83);

    sub_1000E3614();
    return sub_1000E3614();
  }

  sub_100006850(v13, &qword_1001359D8, &qword_1000FABB8);
  swift_errorRetain();
  v45 = sub_1000E9F44();
  v46 = sub_1000EC194();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v104 = v38;
    v105 = v48;
    *v47 = 141558275;
    *(v47 + 4) = 1752392040;
    *(v47 + 12) = 2081;
    swift_errorRetain();
    sub_100002A10(&qword_100130548, &qword_1000F0CF0);
    v49 = sub_1000EBEE4();
    v51 = sub_1000E2E18(v49, v50, &v105);

    *(v47 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "Snapshot: failed to fetch weather data or get cached data. error=%{private,mask.hash}s", v47, 0x16u);
    sub_100009068(v48);
  }

  v89(v85);
}

void sub_1000E02F0()
{
  sub_100006A58();
  v1 = v0;
  v79 = v2;
  v83 = v3;
  v5 = v4;
  v7 = v6;
  v88 = sub_1000EBD94();
  sub_1000090D4();
  v9 = v8;
  __chkstk_darwin(v10);
  v86 = v11;
  v87 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000921C();
  sub_1000E8604();
  sub_1000090D4();
  v89 = v13;
  v90 = v12;
  __chkstk_darwin(v12);
  sub_1000E4E08();
  v78 = v14;
  __chkstk_darwin(v15);
  v17 = v71 - v16;
  v18 = *(v1 + 32);
  v91 = *(v1 + 24);
  v19 = qword_10012EB38;

  if (v19 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v20 = sub_1000E9F64();
  v21 = sub_100008CB8(v20, qword_100145C10);

  v22 = v7;
  v71[1] = v21;
  v23 = sub_1000E9F44();
  v24 = sub_1000EC1B4();

  v25 = os_log_type_enabled(v23, v24);
  v84 = v22;
  v85 = v1;
  v80 = v18;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v94[0] = v82;
    *v26 = 136316163;
    v27 = sub_1000E2E18(v91, v18, v94);
    sub_1000E4D68(v27);
    v92 = sub_1000E3C94(v22);
    v93 = v28;
    sub_100002A10(&qword_100130540, &qword_1000F0808);
    v29 = sub_1000EBEF4();
    v31 = sub_1000E2E18(v29, v30, v94);

    *(v26 + 14) = v31;
    v32 = v84;
    sub_1000E4CE0();
    v33 = [v32 location];
    if (v33)
    {
      v33 = sub_1000E3C24(v33);
    }

    else
    {
      v34 = 0;
    }

    v92 = v33;
    v93 = v34;
    v35 = sub_1000EBEF4();
    v37 = sub_1000E2E18(v35, v36, v94);

    *(v26 + 34) = v37;
    *(v26 + 42) = 2114;
    v38 = [v32 isPredictedLocation];
    *(v26 + 44) = v38;
    v39 = v81;
    *v81 = v38;
    _os_log_impl(&_mh_execute_header, v23, v24, "Timeline requested for for %s. configuration identifier=%{public}s, location=%{private,mask.hash}s, isPredictedLocation=%{public}@", v26, 0x34u);
    sub_100006850(v39, &qword_1001325D0, &unk_1000F3D80);
    sub_100009118();
    swift_arrayDestroy();
    sub_100009118();
    sub_100009194(v26);
  }

  else
  {
  }

  sub_1000E85B4();
  sub_1000E4CD4();
  v40 = swift_allocObject();
  sub_1000E4E80(v40);
  v41 = *(v9 + 16);
  v43 = v87;
  v42 = v88;
  v81 = v5;
  v76 = v41;
  v77 = v9 + 16;
  v41(v87, v5, v88);
  v44 = v89;
  v45 = *(v89 + 16);
  v46 = v78;
  v82 = v17;
  v47 = v17;
  v48 = v90;
  v45(v78, v47, v90);
  v49 = *(v9 + 80);
  v73 = ~v49;
  v50 = (v49 + 56) & ~v49;
  v74 = v49;
  v51 = (v86 + *(v44 + 80) + v50) & ~*(v44 + 80);
  v75 = v49 | 7;
  v52 = swift_allocObject();
  v53 = v91;
  *(v52 + 2) = v40;
  *(v52 + 3) = v53;
  v55 = v79;
  v54 = v80;
  v56 = v83;
  *(v52 + 4) = v80;
  *(v52 + 5) = v56;
  *(v52 + 6) = v55;
  v57 = *(v9 + 32);
  v58 = v43;
  v59 = v54;
  v83 = v9 + 32;
  v72 = v57;
  v57(&v52[v50], v58, v42);
  (*(v44 + 32))(&v52[v51], v46, v48);

  if (sub_1000D8BF4() && !sub_1000E9794())
  {
    v60 = sub_1000E9F44();
    v61 = sub_1000EC1B4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Setup stub data", v62, 2u);
      sub_100009194(v62);
    }

    sub_1000E9784();
  }

  sub_1000DA980();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();

  sub_1000E4CD4();
  v63 = swift_allocObject();
  sub_1000E4E80(v63);
  v65 = v87;
  v64 = v88;
  v76(v87, v81, v88);
  v66 = (v74 + 64) & v73;
  v67 = swift_allocObject();
  v68 = v91;
  *(v67 + 2) = v63;
  *(v67 + 3) = v68;
  *(v67 + 4) = v59;
  *(v67 + 5) = sub_1000E39F0;
  v69 = v84;
  *(v67 + 6) = v52;
  *(v67 + 7) = v69;
  v72(&v67[v66], v65, v64);
  v70 = v69;

  sub_1000273E4(v70, sub_1000E3BAC, v67);

  (*(v89 + 8))(v82, v90);

  sub_100006A20();
}

uint64_t sub_1000E0970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a6(a1);
  }

  else
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v11 = sub_1000E9F64();
    sub_100008CB8(v11, qword_100145C10);

    v12 = sub_1000E9F44();
    v13 = sub_1000EC1B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1000E2E18(a4, a5, &v16);
      _os_log_impl(&_mh_execute_header, v12, v13, "Completing timeline for %{public}s", v14, 0xCu);
      sub_100009068(v15);
    }

    return a6(a1);
  }
}

void sub_1000E0B28(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, void *a8, unint64_t a9)
{
  v92 = a4;
  v93 = a8;
  v100 = a6;
  v95 = a5;
  v96 = a1;
  v94 = a2;
  v89 = sub_1000EBD94();
  v87 = *(v89 - 8);
  v10 = *(v87 + 64);
  __chkstk_darwin(v89);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_1000E9A84();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v84 - v19;
  v21 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  __chkstk_darwin(v21 - 8);
  v98 = &v84 - v22;
  v23 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v99 = *(v23 - 8);
  __chkstk_darwin(v23);
  v97 = (&v84 - v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v90 = v23;
    v91 = a7;
    v26 = Strong;

    v27 = sub_1000AB7F8();

    if (v27)
    {

      v28 = v97;
      sub_1000A8908(v96, v97);

      v29 = sub_1000E9E24();
      v30 = v98;
      sub_1000028A0(v98, 1, 1, v29);
      v100(v28, v30);

      sub_100006850(v30, &qword_1001359C8, &qword_1000FABA8);
      (*(v99 + 8))(v28, v90);
    }

    else
    {
      v86 = v26;
      if (v94 == 4)
      {
        if (qword_10012EB38 != -1)
        {
          swift_once();
        }

        v37 = sub_1000E9F64();
        sub_100008CB8(v37, qword_100145C10);
        v38 = v93;
        v39 = sub_1000E9F44();
        v40 = sub_1000EC1B4();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *v41 = 136446723;
          v101 = sub_1000E3C94(v38);
          v102 = v42;
          sub_100002A10(&qword_100130540, &qword_1000F0808);
          v43 = sub_1000EBEF4();
          v45 = sub_1000E2E18(v43, v44, &v103);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2160;
          *(v41 + 14) = 1752392040;
          *(v41 + 22) = 2081;
          v46 = [v38 location];
          if (v46)
          {
            v46 = sub_1000E3C24(v46);
          }

          else
          {
            v47 = 0;
          }

          v101 = v46;
          v102 = v47;
          v71 = sub_1000EBEF4();
          v73 = sub_1000E2E18(v71, v72, &v103);

          *(v41 + 24) = v73;
          _os_log_impl(&_mh_execute_header, v39, v40, "Timeline failed (no location permissions). configuration.identifier=%{public}s, location=%{private,mask.hash}s ", v41, 0x20u);
          swift_arrayDestroy();
        }

        v74 = v97;
        sub_1000D9120(0, v97);
        v75 = sub_1000E9E24();
        v76 = v98;
        sub_1000028A0(v98, 1, 1, v75);
        v100(v74, v76);

        sub_100006850(v76, &qword_1001359C8, &qword_1000FABA8);
        (*(v99 + 8))(v74, v90);
      }

      else
      {
        sub_100072EB0(v96, v14, &qword_100130440, &qword_1000F0BE0);
        if (sub_100005B30(v14, 1, v15) == 1)
        {
          sub_100006850(v14, &qword_100130440, &qword_1000F0BE0);
          if (qword_10012EB38 != -1)
          {
            swift_once();
          }

          v48 = sub_1000E9F64();
          sub_100008CB8(v48, qword_100145C10);
          v49 = v93;
          v50 = sub_1000E9F44();
          v51 = sub_1000EC1B4();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            *v52 = 136446723;
            v101 = sub_1000E3C94(v49);
            v102 = v53;
            sub_100002A10(&qword_100130540, &qword_1000F0808);
            v54 = sub_1000EBEF4();
            v56 = sub_1000E2E18(v54, v55, &v103);

            *(v52 + 4) = v56;
            *(v52 + 12) = 2160;
            *(v52 + 14) = 1752392040;
            *(v52 + 22) = 2081;
            v57 = [v49 location];
            if (v57)
            {
              v57 = sub_1000E3C24(v57);
            }

            else
            {
              v58 = 0;
            }

            v101 = v57;
            v102 = v58;
            v77 = sub_1000EBEF4();
            v79 = sub_1000E2E18(v77, v78, &v103);

            *(v52 + 24) = v79;
            _os_log_impl(&_mh_execute_header, v50, v51, "Timeline failed (no location). configuration.identifier=%{public}s, location=%{private,mask.hash}s ", v52, 0x20u);
            swift_arrayDestroy();
          }

          v80 = v97;
          sub_1000D9120(1, v97);
          v81 = enum case for WidgetRefreshFailureReason.noLocationData(_:);
          v82 = sub_1000E9E24();
          v83 = v98;
          (*(*(v82 - 8) + 104))(v98, v81, v82);
          sub_1000028A0(v83, 0, 1, v82);
          v100(v80, v83);

          sub_100006850(v83, &qword_1001359C8, &qword_1000FABA8);
          (*(v99 + 8))(v80, v90);
        }

        else
        {
          v90 = a9;
          v59 = v88;
          v60 = *(v88 + 32);
          v96 = (v88 + 32);
          v97 = v60;
          (v60)(v20, v14, v15);
          v99 = *(v86 + 80);
          LODWORD(v98) = *(v86 + 16);
          v61 = swift_allocObject();
          swift_weakInit();
          (*(v59 + 16))(v18, v20, v15);
          v62 = v87;
          (*(v87 + 16))(&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v89);
          v63 = (*(v59 + 80) + 40) & ~*(v59 + 80);
          v64 = v63 + v16;
          v84 = v64 & 0xFFFFFFFFFFFFFFF8;
          v90 = (*(v62 + 80) + (v64 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v62 + 80);
          v85 = (v10 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
          v65 = swift_allocObject();
          v66 = v92;
          v65[2] = v61;
          v65[3] = v66;
          v65[4] = v95;
          (v97)(v65 + v63, v18, v15);
          *(v65 + v64) = v94;
          v67 = v93;
          *(v65 + v84 + 8) = v93;
          (*(v62 + 32))(v65 + v90, v11, v89);
          v68 = (v65 + v85);
          v69 = v91;
          *v68 = v100;
          v68[1] = v69;

          v70 = v67;

          sub_1000A0834(v20, v98, sub_1000E3E44, v65);

          (*(v88 + 8))(v20, v15);
        }
      }
    }
  }

  else
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v31 = sub_1000E9F64();
    sub_100008CB8(v31, qword_100145C10);
    v32 = v95;

    v33 = sub_1000E9F44();
    v34 = sub_1000EC1B4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v101 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1000E2E18(v92, v32, &v101);
      _os_log_impl(&_mh_execute_header, v33, v34, "Timeline: failed for %s (we have been deallocated while obtaining location information)", v35, 0xCu);
      sub_100009068(v36);
    }
  }
}

void sub_1000E16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10)
{
  v136 = a7;
  v137 = a8;
  v133 = a6;
  v148 = a4;
  v145 = a3;
  v139 = a1;
  v124 = sub_1000E99A4();
  __chkstk_darwin(v124);
  v123 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  __chkstk_darwin(v12 - 8);
  v14 = &v123 - v13;
  v15 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  __chkstk_darwin(v15 - 8);
  v144 = &v123 - v16;
  v17 = sub_1000E9A84();
  v140 = *(v17 - 8);
  v141 = v17;
  v18 = __chkstk_darwin(v17);
  v125 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v126 = &v123 - v21;
  __chkstk_darwin(v20);
  v23 = &v123 - v22;
  v147 = type metadata accessor for WidgetLocation(0);
  v24 = __chkstk_darwin(v147);
  v127 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v130 = &v123 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v123 - v29;
  __chkstk_darwin(v28);
  v32 = &v123 - v31;
  v33 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v142 = *(v33 - 8);
  v143 = v33;
  v34 = __chkstk_darwin(v33);
  v128 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v129 = &v123 - v37;
  __chkstk_darwin(v36);
  v39 = &v123 - v38;
  v40 = type metadata accessor for WeatherDataOperationResult(0);
  v41 = __chkstk_darwin(v40);
  v134 = &v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v146 = &v123 - v43;
  v44 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v44);
  v46 = (&v123 - v45);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v131 = a10;
    v132 = a9;
    sub_100072EB0(v139, v46, &qword_1001325D8, &unk_1000FABC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v135 = a5;
    v138 = v48;
    if (EnumCaseMultiPayload == 1)
    {
      v50 = *v46;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v51 = sub_1000E9F64();
      sub_100008CB8(v51, qword_100145C10);
      v52 = v148;

      v53 = sub_1000E9F44();
      v54 = sub_1000EC1B4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v150 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_1000E2E18(v145, v52, &v150);
        _os_log_impl(&_mh_execute_header, v53, v54, "Timeline: failed to fetch or interpolate fresh weather data for %s, trying old cached data first", v55, 0xCu);
        sub_100009068(v56);
      }

      v58 = v140;
      v57 = v141;

      v59 = v135;
      sub_1000A114C(v135, v14);

      v60 = v50;
      if (sub_100005B30(v14, 1, v40) == 1)
      {
        sub_100006850(v14, &qword_1001359D8, &qword_1000FABB8);
        v61 = v125;
        (*(v58 + 16))(v125, v59, v57);
        v62 = v148;

        swift_errorRetain();
        v63 = sub_1000E9F44();
        v64 = sub_1000EC194();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *v65 = 136316163;
          *(v65 + 4) = sub_1000E2E18(v145, v62, &v150);
          *(v65 + 12) = 2160;
          *(v65 + 14) = 1752392040;
          *(v65 + 22) = 2081;
          sub_1000E99C4();
          v66 = sub_1000EBEF4();
          v67 = v57;
          v69 = v68;
          (*(v58 + 8))(v61, v67);
          v70 = sub_1000E2E18(v66, v69, &v150);

          *(v65 + 24) = v70;
          *(v65 + 32) = 2160;
          *(v65 + 34) = 1752392040;
          *(v65 + 42) = 2081;
          v149 = v60;
          swift_errorRetain();
          sub_100002A10(&qword_100130548, &qword_1000F0CF0);
          v71 = sub_1000EBEE4();
          v73 = sub_1000E2E18(v71, v72, &v150);

          *(v65 + 44) = v73;
          _os_log_impl(&_mh_execute_header, v63, v64, "Timeline: failed to fetch weather data or get cached data for %s. location=%{private,mask.hash}s, error=%{private,mask.hash}s", v65, 0x34u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v58 + 8))(v61, v57);
        }

        v115 = v143;
        v116 = v128;
        sub_1000D9120(2, v128);
        v117 = enum case for WidgetRefreshFailureReason.noWeatherData(_:);
        v118 = sub_1000E9E24();
        v119 = v144;
        (*(*(v118 - 8) + 104))(v144, v117, v118);
        sub_1000028A0(v119, 0, 1, v118);
        v132(v116, v119);

        sub_100006850(v119, &qword_1001359C8, &qword_1000FABA8);
        (*(v142 + 8))(v116, v115);
        return;
      }

      sub_1000E3F50(v14, v134, type metadata accessor for WeatherDataOperationResult);
      v95 = v148;

      v96 = sub_1000E9F44();
      v97 = sub_1000EC1B4();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v150 = v99;
        *v98 = 136315138;
        *(v98 + 4) = sub_1000E2E18(v145, v95, &v150);
        _os_log_impl(&_mh_execute_header, v96, v97, "Timeline: successsully retrieved cached weather data for %s", v98, 0xCu);
        sub_100009068(v99);
      }

      v100 = v143;
      v101 = v127;
      v102 = v126;
      v103 = *(v58 + 16);
      v103(v126, v135, v57);
      v103(v101, v102, v57);
      *(v101 + *(v147 + 20)) = 2;
      v104 = v136;
      v105 = [v104 isPredictedLocation];
      sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
      v106.super.super.isa = sub_1000EC344(1).super.super.isa;
      if (v105)
      {
        v107 = sub_1000EC354();

        (*(v58 + 8))(v102, v57);
        v106.super.super.isa = v105;
      }

      else
      {

        (*(v58 + 8))(v102, v57);
        v107 = 0;
      }

      *(v101 + *(v147 + 24)) = v107 & 1;
      sub_1000E3F50(v101, v130, type metadata accessor for WidgetLocation);
      v120 = v129;
      sub_1000DA078();
      sub_1000E3614();
      v121 = sub_1000E9E24();
      v122 = v144;
      sub_1000028A0(v144, 1, 1, v121);
      v132(v120, v122);

      sub_100006850(v122, &qword_1001359C8, &qword_1000FABA8);
      (*(v142 + 8))(v120, v100);
    }

    else
    {
      sub_1000E3F50(v46, v146, type metadata accessor for WeatherDataOperationResult);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v80 = sub_1000E9F64();
      sub_100008CB8(v80, qword_100145C10);
      v81 = v148;

      v82 = sub_1000E9F44();
      v83 = sub_1000EC1B4();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v86 = v81;
        v87 = v85;
        v150 = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_1000E2E18(v145, v86, &v150);
        _os_log_impl(&_mh_execute_header, v82, v83, "Timeline: successfully fetched weather data for %s", v84, 0xCu);
        sub_100009068(v87);
      }

      v88 = v140;
      v89 = v141;
      v90 = *(v140 + 16);
      v90(v23, a5, v141);
      v90(v30, v23, v89);
      v30[*(v147 + 20)] = v133;
      v91 = v136;
      v92 = [v91 isPredictedLocation];
      sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
      v93.super.super.isa = sub_1000EC344(1).super.super.isa;
      if (v92)
      {
        v94 = sub_1000EC354();

        (*(v88 + 8))(v23, v89);
        v93.super.super.isa = v92;
      }

      else
      {

        (*(v88 + 8))(v23, v89);
        v94 = 0;
      }

      v30[*(v147 + 24)] = v94 & 1;
      sub_1000E3F50(v30, v32, type metadata accessor for WidgetLocation);
      sub_1000DA078();
      sub_1000E3614();
      v108 = v143;
      v109 = sub_1000EBDB4();

      v110 = sub_1000AB700();

      if (v110)
      {

        v111 = sub_1000E9A44();
        sub_1000AADB4(v109, v111, v112);
      }

      v113 = sub_1000E9E24();
      v114 = v144;
      sub_1000028A0(v144, 1, 1, v113);
      v132(v39, v114);

      sub_100006850(v114, &qword_1001359C8, &qword_1000FABA8);
      (*(v142 + 8))(v39, v108);
    }

    sub_1000E3614();
    return;
  }

  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E9F64();
  sub_100008CB8(v74, qword_100145C10);
  v75 = v148;

  v76 = sub_1000E9F44();
  v77 = sub_1000EC1B4();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v150 = v79;
    *v78 = 136315138;
    *(v78 + 4) = sub_1000E2E18(v145, v75, &v150);
    _os_log_impl(&_mh_execute_header, v76, v77, "Timeline: failed for %s (we have been deallocated while fetching weather data)", v78, 0xCu);
    sub_100009068(v79);
  }
}

uint64_t sub_1000E2874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000E2928;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000E2928()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E2A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000E4BFC;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_1000E2AD0()
{
  swift_weakDestroy();
  sub_1000E4CD4();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000E2B04()
{
  sub_100006A58();
  sub_1000EBD94();
  sub_1000090D4();
  sub_1000E8604();
  sub_1000090D4();

  v0 = sub_10006BC38();
  v1(v0);
  v2 = sub_10006BC28();
  v3(v2);
  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v4);
}

uint64_t sub_1000E2C40()
{
  sub_1000EBD94();
  sub_1000090D4();

  v0 = sub_1000E4D58();
  v1(v0);
  v2 = sub_1000E4D48();

  return _swift_deallocObject(v2);
}

void sub_1000E2CF8()
{
  sub_1000E4D38();
  v3 = sub_1000EBD94();
  sub_100009210(v3);
  sub_1000E4D28();
  v9 = *(v1 + 48);

  sub_1000DD210(v2, v0, v4, v5, v6, v7, v9, v1 + v8);
}

id sub_1000E2D70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1000EBE64();

  sub_100031CF8(0, &qword_1001359F0, RBSAttribute_ptr);
  isa = sub_1000EBFE4().super.isa;

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:isa];

  return v8;
}

unint64_t sub_1000E2E18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000E2EDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000E3388(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100009068(v11);
  return v7;
}

unint64_t sub_1000E2EDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000E2FDC(a5, a6);
    *a1 = v9;
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
    result = sub_1000EC424();
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

char *sub_1000E2FDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000E3028(a1, a2);
  sub_1000E3140(&off_100124FF8);
  return v3;
}

char *sub_1000E3028(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1000EBF54())
  {
    result = sub_1000E3224(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000EC3D4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1000EC424();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void sub_1000E3140(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_1000E3294(isUniquelyReferenced_nonNull_native, v8, 1, v3);
  }

  if (!*(a1 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v9 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v10 = *(v3 + 2);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 2) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1000E3224(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002A10(&qword_1001359C0, &unk_1000FAB98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000E3294(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A10(&qword_1001359C0, &unk_1000FAB98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1000E3388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000E33E4()
{
  sub_100006A58();
  sub_1000E9A84();
  sub_1000090D4();
  sub_1000EBD94();
  sub_1000090D4();

  v0 = sub_10006BC38();
  v1(v0);
  v2 = sub_10006BC28();
  v3(v2);

  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v4);
}

void sub_1000E351C()
{
  sub_1000E4D00();
  v2 = sub_1000E9A84();
  sub_100032590(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = sub_1000EBD94();
  sub_100032590(v7);
  sub_1000E4D18();
  sub_1000DDC1C(v0, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v6), v1 + v9, *(v1 + v8), *(v1 + v8 + 8));
}

uint64_t sub_1000E3614()
{
  v1 = sub_1000E4D00();
  v2(v1);
  sub_1000069D0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1000E3680()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000E36C8()
{
  sub_1000E9A84();
  sub_1000090D4();

  v0 = sub_1000E4D58();
  v1(v0);
  v2 = sub_1000E4D48();

  return _swift_deallocObject(v2);
}

uint64_t sub_1000E3788()
{
  sub_1000E4D00();
  v2 = sub_1000E9A84();
  sub_100009210(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = (v1 + ((*(v3 + 80) + 57) & ~*(v3 + 80)));

  return sub_1000DC150(v0, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000E3800(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  v4 = sub_100019AC0();
  v5(v4);
  return a2;
}

uint64_t sub_1000E385C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E38CC()
{
  sub_100006A58();
  sub_1000EBD94();
  sub_1000090D4();
  sub_1000E8604();
  sub_1000090D4();

  v0 = sub_10006BC38();
  v1(v0);
  v2 = sub_10006BC28();
  v3(v2);
  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v4);
}

uint64_t sub_1000E3A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1000EBD94();
  sub_100032590(v6);
  v7 = sub_1000E8604();
  sub_100009210(v7);
  sub_1000E4D28();
  return a3(a1, a2);
}

uint64_t sub_1000E3AEC()
{
  sub_1000EBD94();
  sub_1000090D4();

  v1 = sub_1000E4D58();
  v2(v1);
  v3 = sub_1000E4D48();

  return _swift_deallocObject(v3);
}

void sub_1000E3BAC()
{
  sub_1000E4D38();
  v3 = sub_1000EBD94();
  sub_100009210(v3);
  sub_1000E4D28();
  sub_1000E0B28(v2, v0, v5, v6, v7, v8, *(v1 + 48), *(v1 + 56), v1 + v4);
}

uint64_t sub_1000E3C24(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1000EBE84();

  return v3;
}

uint64_t sub_1000E3C94(void *a1)
{
  v1 = [a1 identifier];
  if (v1)
  {
    v2 = v1;
    sub_1000EBE84();
  }

  return sub_100019AC0();
}

uint64_t sub_1000E3CF4()
{
  sub_100006A58();
  sub_1000E9A84();
  sub_1000090D4();
  v3 = (((*(v1 + 80) + 40) & ~*(v1 + 80)) + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1000EBD94();
  sub_1000090D4();
  v6 = v5;
  v7 = (v3 + *(v5 + 80) + 16) & ~*(v5 + 80);

  v8 = sub_10006BC38();
  v9(v8);

  (*(v6 + 8))(v0 + v7, v4);

  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v10);
}

void sub_1000E3E44()
{
  sub_1000E4D00();
  v2 = sub_1000E9A84();
  sub_100032590(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = sub_1000EBD94();
  sub_100032590(v7);
  sub_1000E4D18();
  sub_1000E16DC(v0, v1[2], v1[3], v1[4], v1 + v4, *(v1 + v6), *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8), v1 + v9, *(v1 + v8), *(v1 + v8 + 8));
}

uint64_t sub_1000E3F50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  v4 = sub_100019AC0();
  v5(v4);
  return a2;
}

uint64_t sub_1000E3FAC()
{
  v1 = type metadata accessor for ForecastEntry(0);
  sub_1000E4DF4();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v49 = *(v4 + 64);

  v5 = v0 + v3;
  v6 = sub_1000E8604();
  sub_1000069E4();
  v48 = *(v7 + 8);
  v48(v0 + v3, v6);
  v8 = v1[5];
  v9 = sub_1000EBD64();
  if (!sub_100005B30(v0 + v3 + v8, 1, v9))
  {
    sub_1000326A0();
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v5 + v1[6];

  v12 = *(type metadata accessor for WidgetContext(0) + 44);
  v13 = sub_1000E8524();
  if (!sub_100005B30(v11 + v12, 1, v13))
  {
    sub_1000326A0();
    (*(v14 + 8))(v11 + v12, v13);
  }

  v15 = v5 + v1[7];
  type metadata accessor for ForecastEntry.Model(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WeatherDataViewModel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_1000EB2B4();
        sub_1000069D0();
        (*(v44 + 8))(v15, v45);
        break;
      case 1:
        sub_1000E8634();
        sub_1000069D0();
        (*(v37 + 8))(v15);
        v38 = type metadata accessor for InstantWeatherViewModel(0);
        v39 = *(v38 + 20);
        sub_1000E9A84();
        sub_1000069D0();
        (*(v40 + 8))(v15 + v39);
        v41 = *(v38 + 24);
        sub_1000EB674();
        sub_1000069D0();
        (*(v42 + 8))(v15 + v41, v43);
        break;
      case 0:
        v17 = sub_1000E8634();
        sub_1000069E4();
        v47 = *(v18 + 8);
        v47(v15, v17);
        v19 = type metadata accessor for AggregateWeatherViewModel(0);
        v20 = v19[5];
        sub_1000E9A84();
        sub_1000069D0();
        (*(v21 + 8))(v15 + v20);
        v22 = v19[6];
        sub_1000EB674();
        sub_1000069D0();
        (*(v23 + 8))(v15 + v22);

        v24 = v15 + v19[9];
        v25 = type metadata accessor for AirQualityViewModel(0);
        if (!sub_100005B30(v24, 1, v25))
        {
          v47(v24, v17);
          v48(v24 + v25[5], v6);
          v26 = v25[7];
          sub_1000E8E84();
          sub_1000069D0();
          (*(v27 + 8))(v24 + v26);
          v28 = v25[8];
          sub_1000E8F64();
          sub_1000069D0();
          (*(v29 + 8))(v24 + v28);
        }

        v30 = v19[10];
        v31 = sub_1000EBAF4();
        if (!sub_100005B30(v15 + v30, 1, v31))
        {
          sub_1000326A0();
          (*(v32 + 8))(v15 + v30, v31);
        }

        v33 = v19[13];
        if (!sub_100005B30(v15 + v33, 1, v13))
        {
          sub_1000326A0();
          (*(v34 + 8))(v15 + v33, v13);
        }

        v35 = v19[14];
        v36 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(v15 + v35, 1, v36))
        {
          v48(v15 + v35, v6);
        }

        break;
    }
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_1000E44EC()
{
  v3 = sub_1000E4D38();
  v4 = type metadata accessor for ForecastEntry(v3);
  sub_100032590(v4);
  sub_1000E4D18();
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v10 = *&v1[v9];

  return sub_1000DEE1C(v2, v0, v6, v7, v8, &v1[v5], v10);
}

uint64_t sub_1000E4588()
{
  v1 = type metadata accessor for ForecastEntry(0);
  sub_1000E4DF4();
  v59 = *(v2 + 80);
  v57 = *(v3 + 64);
  v4 = sub_1000E9A84();
  sub_1000090D4();
  v6 = v5;
  v7 = *(v5 + 80);

  v58 = (v59 + 40) & ~v59;
  v8 = v0 + v58;
  sub_1000E8604();
  sub_1000069D0();
  v55 = *(v9 + 8);
  v56 = v10;
  v55(v0 + v58);
  v11 = v1[5];
  v12 = sub_1000EBD64();
  if (!sub_100005B30(v0 + v58 + v11, 1, v12))
  {
    sub_1000326A0();
    (*(v13 + 8))(v8 + v11, v12);
  }

  v14 = v8 + v1[6];

  v15 = *(type metadata accessor for WidgetContext(0) + 44);
  v16 = sub_1000E8524();
  if (!sub_100005B30(v14 + v15, 1, v16))
  {
    sub_1000326A0();
    (*(v17 + 8))(v14 + v15, v16);
  }

  v18 = v8 + v1[7];
  type metadata accessor for ForecastEntry.Model(0);
  v19 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WeatherDataViewModel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_1000EB2B4();
        sub_1000069D0();
        (*(v49 + 8))(v18, v50);
        break;
      case 1:
        sub_1000E8634();
        sub_1000069D0();
        (*(v42 + 8))(v18);
        v43 = type metadata accessor for InstantWeatherViewModel(0);
        v44 = sub_1000E4D78(v43);
        v45(v44);
        v46 = *(v43 + 24);
        sub_1000EB674();
        sub_1000069D0();
        (*(v47 + 8))(v18 + v46, v48);
        break;
      case 0:
        v21 = sub_1000E8634();
        sub_1000069E4();
        v54 = *(v22 + 8);
        v54(v18, v21);
        v23 = type metadata accessor for AggregateWeatherViewModel(0);
        v24 = sub_1000E4D78(v23);
        v25(v24);
        v26 = v23[6];
        sub_1000EB674();
        sub_1000069D0();
        (*(v27 + 8))(v18 + v26);

        v28 = v18 + v23[9];
        v29 = type metadata accessor for AirQualityViewModel(0);
        if (!sub_100005B30(v28, 1, v29))
        {
          v54(v28, v21);
          (v55)(v28 + v29[5], v56);
          v30 = v28;
          v31 = v29[7];
          sub_1000E8E84();
          sub_1000069D0();
          (*(v32 + 8))(v30 + v31);
          v33 = v29[8];
          sub_1000E8F64();
          sub_1000069D0();
          (*(v34 + 8))(v30 + v33);
        }

        v35 = v23[10];
        v36 = sub_1000EBAF4();
        if (!sub_100005B30(v18 + v35, 1, v36))
        {
          sub_1000326A0();
          (*(v37 + 8))(v18 + v35, v36);
        }

        v38 = v23[13];
        if (!sub_100005B30(v18 + v38, 1, v16))
        {
          sub_1000326A0();
          (*(v39 + 8))(v18 + v38, v16);
        }

        v40 = v23[14];
        v41 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(v18 + v40, 1, v41))
        {
          (v55)(v18 + v40, v56);
        }

        break;
    }
  }

  v51 = (v58 + v57) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + v7 + 16) & ~v7;

  (*(v6 + 8))(v0 + v52, v19);

  return _swift_deallocObject(v0);
}

uint64_t sub_1000E4B10()
{
  v2 = sub_1000E4D00();
  v3 = type metadata accessor for ForecastEntry(v2);
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = sub_1000E9A84();
  sub_100009210(v8);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = *(v1 + v7);
  v15 = v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1000DF86C(v0, v10, v11, v12, v1 + v5, v14, v13, v15);
}

uint64_t sub_1000E4CAC()
{

  return sub_1000E3614();
}

void sub_1000E4CE0()
{
  *(v0 + 22) = 2160;
  *(v0 + 24) = 1752392040;
  *(v0 + 32) = 2081;
}

uint64_t sub_1000E4D68(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_1000E4DB8(float a1)
{
  *v1 = a1;
}

uint64_t sub_1000E4DDC()
{

  return swift_slowAlloc();
}

void sub_1000E4E20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1000E4E40()
{
}

void sub_1000E4E60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000E4E80(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t sub_1000E4E98()
{

  return swift_slowAlloc();
}

uint64_t sub_1000E4EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_100002A10(&qword_100135A08, &qword_1000FAC68);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_100002A10(&qword_100135A10, &qword_1000FAC70);
  sub_1000090D4();
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  sub_100002A10(&qword_100135A18, &unk_1000FAC78);
  sub_1000090D4();
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v50 = &v49 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v56 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for AQIContentView(0);
  sub_1000E54E4(&qword_100135A20, type metadata accessor for AQIContentView, &unk_1000F7180);
  sub_1000E54E4(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_1000E552C();
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
  v46(v45, enum case for WidgetFamily.accessoryCircular(_:), v38);
  v46(v45 + v42, enum case for WidgetFamily.accessoryInline(_:), v38);
  v56 = v36;
  v57 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  sub_1000EA454();

  return (*(v54 + 8))(v37, v47);
}

uint64_t sub_1000E5430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AQIContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000E54AC@<X0>(void *a1@<X8>)
{
  result = sub_1000E4EB0();
  *a1 = 0xD000000000000022;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000E54E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E552C()
{
  result = qword_100135A28;
  if (!qword_100135A28)
  {
    sub_100002ABC(&qword_100135A08, &qword_1000FAC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135A28);
  }

  return result;
}

uint64_t sub_1000E5594()
{
  sub_100002ABC(&qword_100135A18, &unk_1000FAC78);
  sub_100002ABC(&qword_100135A10, &qword_1000FAC70);
  sub_100002ABC(&qword_100135A08, &qword_1000FAC68);
  sub_1000E552C();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static InstantWeatherViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E8614() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InstantWeatherViewModel(0);
  if ((sub_1000E9A04() & 1) == 0)
  {
    return 0;
  }

  return sub_1000EB604();
}

uint64_t type metadata accessor for InstantWeatherViewModel(uint64_t a1)
{
  result = qword_100135AA0;
  if (!qword_100135AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E5728(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001000FC0D0 == a2)
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

uint64_t sub_1000E5838(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0xD000000000000012;
}

uint64_t sub_1000E5890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E5728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E58B8(uint64_t a1)
{
  v2 = sub_1000E5B3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E58F4(uint64_t a1)
{
  v2 = sub_1000E5B3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InstantWeatherViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100002A10(&qword_100135A30, &qword_1000FACC0);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  sub_100008DA8(a1, a1[3]);
  sub_1000E5B3C();
  sub_1000EC6A4();
  v21[15] = 0;
  sub_1000E8634();
  sub_1000E6684();
  sub_1000E6168(v11, v12, &protocol conformance descriptor for UUID);
  sub_1000E66B4(v3);
  if (!v2)
  {
    v13 = type metadata accessor for InstantWeatherViewModel(0);
    v14 = *(v13 + 20);
    v21[14] = 1;
    sub_1000E9A84();
    sub_1000E666C();
    sub_1000E6168(v15, v16, &protocol conformance descriptor for Location);
    sub_1000E66B4(v3 + v14);
    v17 = *(v13 + 24);
    v21[13] = 2;
    sub_1000EB674();
    sub_1000E669C();
    sub_1000E6168(v18, v19, &protocol conformance descriptor for CurrentObservationViewModel);
    sub_1000E66B4(v3 + v17);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1000E5B3C()
{
  result = qword_100135A38;
  if (!qword_100135A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135A38);
  }

  return result;
}

uint64_t InstantWeatherViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = sub_1000EB674();
  sub_1000090D4();
  v45 = v3;
  __chkstk_darwin(v4);
  sub_100006A10();
  v48 = v6 - v5;
  sub_1000E9A84();
  sub_1000090D4();
  v51 = v8;
  v52 = v7;
  __chkstk_darwin(v7);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_1000E8634();
  sub_1000090D4();
  v49 = v13;
  __chkstk_darwin(v14);
  sub_100006A10();
  v53 = v16 - v15;
  v55 = sub_100002A10(&qword_100135A40, &qword_1000FACC8);
  sub_1000090D4();
  v50 = v17;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for InstantWeatherViewModel(0);
  __chkstk_darwin(v21);
  sub_100006A10();
  v24 = v23 - v22;
  sub_100008DA8(a1, a1[3]);
  sub_1000E5B3C();
  v54 = v20;
  v25 = v56;
  sub_1000EC694();
  if (v25)
  {
    return sub_100009068(a1);
  }

  v44 = v21;
  v56 = v24;
  v26 = a1;
  v27 = v51;
  v28 = v52;
  v59 = 0;
  sub_1000E6684();
  sub_1000E6168(v29, v30, &protocol conformance descriptor for UUID);
  v31 = v53;
  sub_1000EC514();
  v32 = *(v49 + 32);
  v53 = v12;
  v32(v56, v31, v12);
  v58 = 1;
  sub_1000E666C();
  sub_1000E6168(v33, v34, &protocol conformance descriptor for Location);
  v35 = v11;
  sub_1000EC514();
  v36 = v56;
  (*(v27 + 32))(v56 + *(v44 + 20), v35, v28);
  v57 = 2;
  sub_1000E669C();
  sub_1000E6168(v37, v38, &protocol conformance descriptor for CurrentObservationViewModel);
  v39 = v47;
  sub_1000EC514();
  v40 = sub_1000E66D4();
  v41(v40);
  (*(v45 + 32))(v36 + *(v44 + 24), v48, v39);
  sub_1000E6060(v36, v46);
  sub_100009068(v26);
  return sub_1000E60C4(v36);
}

uint64_t sub_1000E6060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstantWeatherViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E60C4(uint64_t a1)
{
  v2 = type metadata accessor for InstantWeatherViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E6168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E61F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000E8634();
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1000E9A84();
    sub_100006A04();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_1000EB674();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

uint64_t sub_1000E62E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000E8634();
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1000E9A84();
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_1000EB674();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_1000028A0(v11, a2, a2, v10);
}

uint64_t sub_1000E63C4(uint64_t a1)
{
  result = sub_1000E8634();
  if (v2 <= 0x3F)
  {
    result = sub_1000E9A84();
    if (v3 <= 0x3F)
    {
      result = sub_1000EB674();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InstantWeatherViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000E652CLL);
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

unint64_t sub_1000E6568()
{
  result = qword_100135AE0;
  if (!qword_100135AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135AE0);
  }

  return result;
}

unint64_t sub_1000E65C0()
{
  result = qword_100135AE8;
  if (!qword_100135AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135AE8);
  }

  return result;
}

unint64_t sub_1000E6618()
{
  result = qword_100135AF0;
  if (!qword_100135AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135AF0);
  }

  return result;
}

uint64_t sub_1000E66B4(uint64_t a1)
{

  return sub_1000EC594();
}

id sub_1000E6704()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100145E00 = result;
  return result;
}

uint64_t sub_1000E675C()
{
  v0 = sub_1000E84B4();
  sub_10004B338(v0, qword_100145E08);
  v1 = sub_100008CB8(v0, qword_100145E08);
  *v1 = type metadata accessor for BundleLookup();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id WeatherIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v3, "init");
}

id WeatherIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WeatherIntent();
  v9 = sub_1000E73FC(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000EBE64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000EBE64();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WeatherIntent();
  v12 = sub_1000E73FC(v16, "initWithIdentifier:backingStore:", v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WeatherIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E7408(a1, a2);

  v5 = sub_1000EBE64();

  if (v3)
  {
    v6.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6.super.isa];

  return v7;
}

id WeatherIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E7408(a1, a2);

  v5 = sub_1000EBE64();

  if (v3)
  {
    v6.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for WeatherIntent();
  v7 = objc_msgSendSuper2(&v9, "initWithDomain:verb:parametersByName:", v4, v5, v6.super.isa);

  return v7;
}

unint64_t WeatherIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000E6CC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WeatherIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WeatherIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000E6D88(uint64_t a1)
{
  v3 = OBJC_IVAR___WeatherIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WeatherIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id WeatherIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherIntentResponse.init()()
{
  *&v0[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id WeatherIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_1000E73FC(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id WeatherIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_1000E73FC(v13, "initWithBackingStore:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    v3.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithPropertiesByName:v3.super.isa];

  return v4;
}

id WeatherIntentResponse.init(propertiesByName:)(uint64_t a1, __n128 a2)
{
  *&v2[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  if (a1)
  {
    v3.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for WeatherIntentResponse();
  v4 = objc_msgSendSuper2(&v6, "initWithPropertiesByName:", v3.super.isa);

  if (v4)
  {
  }

  return v4;
}

id sub_1000E7300(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000E733C()
{
  result = qword_100135B98;
  if (!qword_100135B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B98);
  }

  return result;
}

uint64_t sub_1000E7390@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherIntentResponse.code.getter();
  *a1 = result;
  return result;
}

NSString sub_1000E7408(uint64_t a1, uint64_t a2)
{

  return sub_1000EBE64();
}

id WeatherLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  sub_1000E7D6C();
  if (v2)
  {
    v3 = sub_1000EBE64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1000EBE64();

  if (v1)
  {
    v5 = sub_1000EBE64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_1000E7D6C();
  if (v2)
  {
    v3 = sub_1000EBE64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1000EBE64();

  if (v1)
  {
    v5 = sub_1000EBE64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for WeatherLocation();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:displayString:pronunciationHint:", v3, v4, v5);

  return v6;
}

id WeatherLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WeatherLocationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WeatherLocationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000E78E0();

    sub_1000EC474();
  }

  else
  {

    sub_1000EC5E4();
    sub_1000E78E0();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1000E78E0();
  isa = sub_1000EBFE4().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_1000E78E0()
{
  result = qword_100135C18;
  if (!qword_100135C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100135C18);
  }

  return result;
}

id static WeatherLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WeatherLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1000EBDC4().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id WeatherLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2, __n128 a3)
{
  isa = sub_1000EBDC4().super.isa;

  v8.receiver = v3;
  v8.super_class = type metadata accessor for WeatherLocationResolutionResult();
  v6 = objc_msgSendSuper2(&v8, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v6)
  {
  }

  return v6;
}

id sub_1000E7D0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000E7D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1000EC464();
}