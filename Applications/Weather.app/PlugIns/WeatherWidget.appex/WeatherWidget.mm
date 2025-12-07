WeatherWidget::WidgetDisplaySize_optional __swiftcall WidgetDisplaySize.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

WeatherWidget::WidgetDisplaySize_optional sub_100002688@<W0>(Swift::Int *a1@<X0>, WeatherWidget::WidgetDisplaySize_optional *a2@<X8>)
{
  result.value = WidgetDisplaySize.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000026B4@<X0>(uint64_t *a1@<X8>)
{
  result = WidgetDisplaySize.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100002750(double a1, double a2)
{
  sub_1000EC334();
  if (v2 == 1210.0)
  {
    return 2;
  }

  sub_1000EC334();
  if (v4 > 1133.0)
  {
    return 3;
  }

  sub_1000EC334();
  if (v5 > 667.0)
  {
    return 2;
  }

  sub_1000EC334();
  return v6 > 320.0;
}

BOOL sub_1000027EC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1 && v1 < 3;
}

uint64_t variable initialization expression of AggregateWeatherViewModel.__placeholderSunEvent@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);

  return sub_1000028A0(a1, 1, 1, v2);
}

uint64_t variable initialization expression of LocalSearchRequestManager.geocodeRequestDeduper()
{
  v0 = sub_1000E9BE4();
  __chkstk_darwin(v0);
  sub_1000029B8();
  sub_100002A10(&qword_10012EC10, &unk_1000EEAF0);
  sub_100002A58();
  sub_1000EC3C4();
  sub_100002A10(&qword_10012EC20, &unk_1000F2430);
  swift_allocObject();
  return sub_1000E9B94();
}

unint64_t sub_1000029B8()
{
  result = qword_10012EC08;
  if (!qword_10012EC08)
  {
    sub_1000E9BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC08);
  }

  return result;
}

uint64_t sub_100002A10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002A58()
{
  result = qword_10012EC18;
  if (!qword_10012EC18)
  {
    sub_100002ABC(&qword_10012EC10, &unk_1000EEAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC18);
  }

  return result;
}

uint64_t sub_100002ABC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double variable initialization expression of LocalSearchRequestManager.$__lazy_storage_$_store@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_1000EEAE0;
  return result;
}

unint64_t sub_100002B28()
{
  result = qword_10012EC28;
  if (!qword_10012EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDisplaySize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetDisplaySize(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100002CE0);
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

__n128 sub_100002D2C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_100002D94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100002E28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100002E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_1000EA2C4();
  sub_1000069F4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100006A10();
  v32 = v31 - v30;
  sub_100002A10(&qword_10012EEA0, &qword_1000EED68);
  sub_1000069E4();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  sub_1000068F4(v23, &a9 - v34, &qword_10012EEA0, &qword_1000EED68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA014();
    sub_1000069E4();
    (*(v36 + 32))(v25, v35);
  }

  else
  {
    sub_1000EC1A4();
    v37 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  sub_100006A20();
}

void sub_100003050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1000EA2C4();
  sub_1000069F4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100006A10();
  v31 = v30 - v29;
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  sub_1000069E4();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for ModernDailyForecastRowView(0);
  sub_1000068F4(v20 + *(v35 + 28), v34, &qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC34();
    sub_1000069E4();
    (*(v36 + 32))(v24, v34);
  }

  else
  {
    sub_1000EC1A4();
    v37 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v27 + 8))(v31, v25);
  }

  sub_100006A20();
}

double sub_100003228()
{
  v1 = v0;
  v2 = sub_1000EBC34();
  v47 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v45 - v6;
  v8 = sub_1000EA3A4();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = __chkstk_darwin(v8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v45 - v11;
  v12 = sub_1000EA2C4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModernDailyForecastRowView(0);
  v24 = v1 + *(v16 + 20);
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
    v45 = v12;
    v27 = sub_1000EA524();
    v46 = v5;
    v28 = v27;
    sub_1000E9F14();

    v5 = v46;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v25, 0);
    v16 = (*(v13 + 8))(v15, v45);
    result = 1.0;
    if ((v52 & 0x100000000000000) != 0)
    {
      return result;
    }
  }

  v29 = v48;
  sub_10003E504(v16, v17, v18, v19, v20, v21, v22, v23, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v31 = v49;
  v30 = v50;
  v32 = v51;
  (*(v50 + 104))(v49, enum case for ColorSchemeContrast.increased(_:), v51);
  v33 = sub_1000EA394();
  v34 = *(v30 + 8);
  v34(v31, v32);
  v35 = (v34)(v29, v32);
  result = 1.0;
  if ((v33 & 1) == 0)
  {
    sub_100003050(v35, v36, v37, v38, v39, v40, v41, v42, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    sub_1000EBC14();
    v43 = sub_1000EBBF4();
    v44 = *(v47 + 8);
    v44(v5, v2);
    v44(v7, v2);
    result = 0.27;
    if (v43)
    {
      return 0.7;
    }
  }

  return result;
}

uint64_t sub_1000035F4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = type metadata accessor for ModernDailyForecastRowView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100006144(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000653C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1000065A0;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000036E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v28 = a3;
  v4 = sub_1000EA4E4();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_10012EEB8, &qword_1000EED80);
  __chkstk_darwin(v7 - 8);
  v9 = (&v24 - v8);
  v10 = sub_100002A10(&qword_10012EEC0, &qword_1000EED88);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_100002A10(&qword_10012EEC8, &qword_1000EED90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v25 = sub_100002A10(&qword_10012EED0, &qword_1000EED98);
  __chkstk_darwin(v25);
  v18 = &v24 - v17;
  *v9 = sub_1000EABD4();
  v9[1] = v19;
  v20 = sub_100002A10(&qword_10012EED8, &qword_1000EEDA0);
  sub_100003ADC(a2, v24, (v9 + *(v20 + 44)));
  sub_1000EABD4();
  sub_1000EA0A4();
  sub_1000068A4(v9, v12, &qword_10012EEB8, &qword_1000EED80);
  memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
  sub_1000EA4B4();
  v21 = sub_100006620();
  sub_1000EA914();
  (*(v26 + 8))(v6, v27);
  sub_100006850(v12, &qword_10012EEC0, &qword_1000EED88);
  type metadata accessor for ModernDailyForecastRowView(0);
  v31 = sub_1000EB144();
  v32 = v22;
  v29 = v10;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  sub_1000EA8D4();

  (*(v14 + 8))(v16, v13);
  sub_1000EA084();
  return sub_1000066D8(v18);
}

void sub_100003ADC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a2;
  v93 = a3;
  v91 = sub_100002A10(&qword_10012EEF0, &qword_1000EEDA8);
  v4 = __chkstk_darwin(v91);
  v94 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v97 = &v88[-v6];
  v109 = sub_1000EAFC4();
  v108 = *(v109 - 8);
  v7 = __chkstk_darwin(v109);
  v107 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v106 = &v88[-v9];
  v96 = sub_100002A10(&qword_10012EEF8, &qword_1000EEDB0);
  v10 = __chkstk_darwin(v96);
  v92 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v110 = &v88[-v12];
  v13 = type metadata accessor for ModernDailyForecastRowView(0);
  v104 = *(v13 + 40);
  v14 = v13;
  v105 = v13;
  *&v115 = sub_1000EB104();
  *(&v115 + 1) = v15;
  sub_100005898();
  v16 = sub_1000EA814();
  v18 = v17;
  v20 = v19;
  sub_1000EA9C4();
  v101 = sub_1000EA784();
  v100 = v21;
  v23 = v22;

  sub_1000058EC(v16, v18, v20 & 1);

  v24 = a1;
  v25 = a1 + *(v14 + 36);
  v102 = type metadata accessor for DailyViewAttributes(0);
  v103 = v25;
  sub_1000EA5D4();
  LOBYTE(v18) = v23;
  v26 = v101;
  v27 = v100;
  v99 = sub_1000EA7D4();
  v29 = v28;
  v31 = v30;
  v98 = v32;

  v33 = v26;
  v34 = v110;
  sub_1000058EC(v33, v27, v18 & 1);

  v35 = v99;
  v100 = sub_1000EA714();
  v90 = v36;
  v89 = v37;
  v101 = v38;
  sub_1000058EC(v35, v29, v31 & 1);

  v39 = v106;
  sub_1000EB1E4();
  sub_1000EAF84();
  v40 = *(v108 + 8);
  v41 = v109;
  v40(v39, v109);
  v42 = v107;
  sub_1000EB1E4();
  sub_1000EAF54();
  v40(v42, v41);
  sub_1000EAED4();
  v43 = *(v103 + *(v102 + 72));
  KeyPath = swift_getKeyPath();
  v45 = &v34[*(sub_100002A10(&qword_10012EF00, &qword_1000F5320) + 36)];
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = v105;

  sub_1000EABC4();
  sub_1000E9FC4();
  v47 = &v34[*(sub_100002A10(&qword_10012EF08, &qword_1000EEDF0) + 36)];
  v48 = v113;
  *v47 = v112;
  v47[1] = v48;
  v47[2] = v114;
  v49 = sub_1000043DC(1);
  v50 = v24;
  v51 = (v24 + *(v46 + 56));
  v52 = *v51;
  v53 = v51[1];
  v54 = v51[2];
  *&v115 = *v51;
  *(&v115 + 1) = v53;
  *&v116 = v54;
  sub_100002A10(&qword_10012EF10, &qword_1000EEDF8);
  sub_1000EAAF4();
  if ((v49 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v49 >= *(v111[0] + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v55 = (v111[0] + 32 * v49);
  v56 = v55[4];
  v57 = v55[5];
  v58 = v55[6];
  v59 = v55[7];

  v118.origin.x = v56;
  v118.origin.y = v57;
  v118.size.width = v58;
  v118.size.height = v59;
  MinX = CGRectGetMinX(v118);
  v61 = &v110[*(v96 + 36)];
  *v61 = MinX;
  *(v61 + 1) = 0;
  v62 = sub_1000EA2E4();
  v63 = v97;
  *v97 = v62;
  *(v63 + 8) = 0;
  *(v63 + 16) = 1;
  v64 = sub_100002A10(&qword_10012EF18, &qword_1000EEE00);
  sub_100004560(v50, v63 + *(v64 + 44));
  v65 = sub_1000043DC(2);
  *&v115 = v52;
  *(&v115 + 1) = v53;
  *&v116 = v54;
  sub_1000EAAF4();
  if ((v65 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v65 >= *(v111[0] + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v66 = (v111[0] + 32 * v65);
  v67 = v66[4];
  v68 = v66[5];
  v69 = v66[6];
  v70 = v66[7];

  v119.origin.x = v67;
  v119.origin.y = v68;
  v119.size.width = v69;
  v119.size.height = v70;
  v71 = CGRectGetMinX(v119);
  v72 = (v63 + *(sub_100002A10(&qword_10012EF20, &qword_1000EEE08) + 36));
  *v72 = v71;
  v72[1] = 0.0;
  sub_1000E9FD4();
  v73 = sub_1000043DC(2);
  *&v115 = v52;
  *(&v115 + 1) = v53;
  *&v116 = v54;
  sub_1000EAAF4();
  if ((v73 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v73 < *(v111[0] + 16))
  {
    v74 = (v111[0] + 32 * v73);
    v75 = v74[4];
    v76 = v74[5];
    v77 = v74[6];
    v78 = v74[7];

    v120.origin.x = v75;
    v120.origin.y = v76;
    v120.size.width = v77;
    v120.size.height = v78;
    CGRectGetMinX(v120);
    sub_1000EABC4();
    sub_1000E9FC4();
    v79 = (v63 + *(v91 + 36));
    v80 = v116;
    *v79 = v115;
    v79[1] = v80;
    v79[2] = v117;
    v81 = v92;
    sub_1000068F4(v110, v92, &qword_10012EEF8, &qword_1000EEDB0);
    v82 = v94;
    sub_1000068F4(v63, v94, &qword_10012EEF0, &qword_1000EEDA8);
    v83 = v93;
    v84 = v100;
    v85 = v90;
    *v93 = v100;
    v83[1] = v85;
    v86 = v89 & 1;
    *(v83 + 16) = v89 & 1;
    v83[3] = v101;
    *(v83 + 16) = 257;
    v87 = sub_100002A10(&qword_10012EF28, &unk_1000EEE10);
    sub_1000068F4(v81, v83 + *(v87 + 48), &qword_10012EEF8, &qword_1000EEDB0);
    sub_1000068F4(v82, v83 + *(v87 + 64), &qword_10012EEF0, &qword_1000EEDA8);
    sub_10000673C(v84, v85, v86);

    sub_100006850(v63, &qword_10012EEF0, &qword_1000EEDA8);
    sub_100006850(v110, &qword_10012EEF8, &qword_1000EEDB0);
    sub_100006850(v82, &qword_10012EEF0, &qword_1000EEDA8);
    sub_100006850(v81, &qword_10012EEF8, &qword_1000EEDB0);
    sub_1000058EC(v84, v85, v86);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_100004560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v3 = sub_1000E9874();
  __chkstk_darwin(v3 - 8);
  v141 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E9894();
  v139 = *(v5 - 8);
  v140 = v5;
  __chkstk_darwin(v5);
  v138 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v131 = *(v127 - 8);
  v7 = __chkstk_darwin(v127);
  v130 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v129 = &v125 - v9;
  v10 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v11 = __chkstk_darwin(v10 - 8);
  v128 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v126 = &v125 - v13;
  v14 = sub_1000EAD54();
  v136 = *(v14 - 8);
  v137 = v14;
  __chkstk_darwin(v14);
  v133 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100002A10(&qword_10012EF38, &qword_1000EEE20);
  __chkstk_darwin(v135);
  v134 = &v125 - v16;
  v158 = sub_100002A10(&qword_10012EF40, &qword_1000EEE28);
  __chkstk_darwin(v158);
  v132 = &v125 - v17;
  v18 = sub_100002A10(&qword_10012EF48, &unk_1000EEE30);
  v19 = __chkstk_darwin(v18 - 8);
  v163 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v160 = &v125 - v21;
  v22 = sub_1000EBC34();
  v156 = *(v22 - 8);
  v157 = v22;
  v23 = __chkstk_darwin(v22);
  v152 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v148 = &v125 - v25;
  v155 = sub_1000EABF4();
  v153 = *(v155 - 8);
  __chkstk_darwin(v155);
  v151 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_100002A10(&qword_10012EF50, &unk_1000F7050) - 8;
  __chkstk_darwin(v149);
  v28 = &v125 - v27;
  v150 = sub_100002A10(&qword_10012EF58, &unk_1000EEE40) - 8;
  __chkstk_darwin(v150);
  v147 = &v125 - v29;
  v154 = sub_100002A10(&qword_10012EF60, &qword_1000F7060) - 8;
  v30 = __chkstk_darwin(v154);
  v162 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v146 = &v125 - v33;
  __chkstk_darwin(v32);
  v164 = &v125 - v34;
  v35 = type metadata accessor for ModernDailyForecastRowView(0);
  v36 = *(v35 + 40);
  v161 = a1 + *(v35 + 36);
  sub_1000054E8(a1 + v36);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1000EA9C4();
  v43 = sub_1000EA784();
  v143 = v44;
  v144 = v43;
  v142 = v45;
  v145 = v46;
  v47 = v36;

  v48 = v42 & 1;
  v49 = a1;
  sub_1000058EC(v38, v40, v48);
  v50 = v35;

  v52 = v148;
  sub_100003050(v51, v53, v54, v55, v56, v57, v58, v59, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  v60 = v152;
  sub_1000EBC14();
  v61 = v60;
  LOBYTE(v60) = sub_1000EBBF4();
  v62 = *(v156 + 8);
  v63 = v61;
  v64 = v157;
  v62(v63, v157);
  v62(v52, v64);
  v65 = v153;
  v66 = &enum case for BlendMode.normal(_:);
  if ((v60 & 1) == 0)
  {
    v66 = &enum case for BlendMode.plusLighter(_:);
  }

  v67 = v151;
  v68 = v155;
  (*(v153 + 104))(v151, *v66, v155);
  (*(v65 + 32))(&v28[*(v149 + 44)], v67, v68);
  v69 = v143;
  *v28 = v144;
  *(v28 + 1) = v69;
  v28[16] = v142 & 1;
  *(v28 + 3) = v145;
  v70 = sub_100003228();
  v71 = v147;
  sub_1000068A4(v28, v147, &qword_10012EF50, &unk_1000F7050);
  *(v71 + *(v150 + 44)) = v70;
  sub_1000EABE4();
  v72 = v161;
  sub_1000E9FC4();
  v73 = v71;
  v74 = v146;
  sub_1000068A4(v73, v146, &qword_10012EF58, &unk_1000EEE40);
  v75 = (v74 + *(v154 + 44));
  v76 = v184;
  *v75 = v183;
  v75[1] = v76;
  v75[2] = v185;
  v77 = v160;
  sub_1000068A4(v74, v164, &qword_10012EF60, &qword_1000F7060);
  sub_1000EABC4();
  sub_1000E9FC4();
  v156 = v188;
  v157 = v186;
  v154 = v191;
  v155 = v190;
  v182 = 1;
  v181 = v187;
  v180 = v189;
  v78 = type metadata accessor for DailyViewAttributes(0);
  v79 = 1;
  if (*(v72 + *(v78 + 40)) == 1)
  {
    v80 = v78;
    v153 = v50;
    v81 = v72 + *(v78 + 88);
    v82 = v126;
    sub_1000068F4(v81, v126, &qword_10012EF30, &unk_1000F14F0);
    v83 = v127;
    if (sub_100005B30(v82, 1, v127) == 1)
    {
      sub_100006850(v82, &qword_10012EF30, &unk_1000F14F0);
      v84 = v47;
      v85 = v129;
      sub_1000EB1B4();
      v82 = v85;
      v86 = v131;
    }

    else
    {
      v84 = v47;
      v86 = v131;
      v85 = v129;
    }

    sub_1000E82E4();
    v87 = *(v86 + 8);
    v87(v82, v83);
    v88 = v128;
    sub_1000068F4(v161 + *(v80 + 92), v128, &qword_10012EF30, &unk_1000F14F0);
    if (sub_100005B30(v88, 1, v83) == 1)
    {
      sub_100006850(v88, &qword_10012EF30, &unk_1000F14F0);
      sub_1000EB194();
      v88 = v85;
    }

    sub_1000E82E4();
    v87(v88, v83);
    sub_1000EB1B4();
    sub_1000E82E4();
    v87(v85, v83);
    v89 = v130;
    sub_1000EB194();
    sub_1000E82E4();
    v87(v89, v83);
    v90 = v138;
    sub_1000EB134();
    sub_1000E9884();
    (*(v139 + 8))(v90, v140);
    sub_1000EAB64();
    v91 = v133;
    sub_1000EAD44();
    sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
    sub_1000EAEA4();
    sub_1000EABC4();
    sub_1000E9FC4();
    v92 = v134;
    (*(v136 + 32))(v134, v91, v137);
    v93 = (v92 + *(v135 + 36));
    v94 = v192[1];
    *v93 = v192[0];
    v93[1] = v94;
    v93[2] = v192[2];
    sub_10000674C();
    v95 = v132;
    sub_1000EA8F4();
    sub_100006850(v92, &qword_10012EF38, &qword_1000EEE20);
    sub_1000068A4(v95, v77, &qword_10012EF40, &qword_1000EEE28);
    v79 = 0;
    v47 = v84;
  }

  sub_1000028A0(v77, v79, 1, v158);
  sub_1000EABC4();
  sub_1000E9FC4();
  v158 = v193;
  v152 = v197;
  v153 = v195;
  v151 = v198;
  v171 = 1;
  v170 = v194;
  v169 = v196;
  sub_1000054E8(v49 + v47);
  v97 = v96;
  v99 = v98;
  v100 = v77;
  v102 = v101;
  sub_1000EA9C4();
  v103 = sub_1000EA784();
  v149 = v104;
  v150 = v103;
  v106 = v105;
  v161 = v107;

  sub_1000058EC(v97, v99, v102 & 1);

  sub_1000EABE4();
  sub_1000E9FC4();
  LODWORD(v148) = v106 & 1;
  v108 = v162;
  sub_1000068F4(v164, v162, &qword_10012EF60, &qword_1000F7060);
  v109 = v182;
  LOBYTE(v99) = v181;
  v110 = v180;
  v111 = v163;
  sub_1000068F4(v100, v163, &qword_10012EF48, &unk_1000EEE30);
  v112 = v171;
  LODWORD(v146) = v170;
  LODWORD(v147) = v169;
  v113 = v159;
  sub_1000068F4(v108, v159, &qword_10012EF60, &qword_1000F7060);
  v114 = sub_100002A10(&qword_10012EF68, &qword_1000EEE50);
  v115 = v113 + v114[12];
  *v115 = 0;
  *(v115 + 8) = v109;
  v116 = v156;
  *(v115 + 16) = v157;
  *(v115 + 24) = v99;
  *(v115 + 32) = v116;
  *(v115 + 40) = v110;
  v117 = v154;
  *(v115 + 48) = v155;
  *(v115 + 56) = v117;
  sub_1000068F4(v111, v113 + v114[16], &qword_10012EF48, &unk_1000EEE30);
  v118 = v113 + v114[20];
  *v118 = 0;
  *(v118 + 8) = v112;
  *(v118 + 16) = v158;
  *(v118 + 24) = v146;
  *(v118 + 32) = v153;
  *(v118 + 40) = v147;
  v119 = v151;
  *(v118 + 48) = v152;
  *(v118 + 56) = v119;
  v120 = v114[24];
  v122 = v149;
  v121 = v150;
  *&v172[0] = v150;
  *(&v172[0] + 1) = v149;
  LOBYTE(v114) = v148;
  LOBYTE(v172[1]) = v148;
  *(&v172[1] + 1) = v168[0];
  DWORD1(v172[1]) = *(v168 + 3);
  v123 = v161;
  *(&v172[1] + 1) = v161;
  v172[3] = v166;
  v172[4] = v167;
  v172[2] = v165;
  memcpy((v113 + v120), v172, 0x50uLL);
  sub_1000068F4(v172, v173, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v160, &qword_10012EF48, &unk_1000EEE30);
  sub_100006850(v164, &qword_10012EF60, &qword_1000F7060);
  v173[0] = v121;
  v173[1] = v122;
  v174 = v114;
  *v175 = v168[0];
  *&v175[3] = *(v168 + 3);
  v176 = v123;
  v177 = v165;
  v178 = v166;
  v179 = v167;
  sub_100006850(v173, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v163, &qword_10012EF48, &unk_1000EEE30);
  return sub_100006850(v162, &qword_10012EF60, &qword_1000F7060);
}

void sub_1000054E8(uint64_t a1)
{
  sub_100006A58();
  v2 = v1;
  v43 = v3;
  v4 = sub_1000EAD74();
  sub_1000069F4();
  v6 = v5;
  v39 = v5;
  __chkstk_darwin(v7);
  sub_100006A10();
  v10 = v9 - v8;
  v11 = sub_1000EC224();
  sub_1000069F4();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000069F4();
  v41 = v20;
  v42 = v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v38 - v23;
  v2(v22);
  sub_1000EAD24();
  sub_1000EC214();
  v40 = *(v13 + 8);
  v25 = v19;
  v26 = v11;
  v40(v25, v11);
  v27 = *(v6 + 104);
  v28 = v10;
  v29 = v4;
  v27(v10, enum case for WeatherFormatPlaceholder.none(_:), v4);
  sub_1000E93A4();
  sub_1000E9394();
  sub_100006808(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v30 = v41;
  v31 = sub_1000E8304();
  v33 = v32;

  (*(v39 + 8))(v28, v29);
  v40(v17, v26);
  (*(v42 + 8))(v24, v30);
  v44 = v31;
  v45 = v33;
  sub_100005898();
  v34 = sub_1000EA814();
  v36 = v35;
  LOBYTE(v30) = v37;
  type metadata accessor for DailyViewAttributes(0);
  sub_1000EA664();
  sub_1000EA684();
  sub_1000EA5D4();

  sub_1000EA7D4();

  sub_1000058EC(v34, v36, v30 & 1);

  sub_100006A20();
}

unint64_t sub_100005898()
{
  result = qword_10012ED80;
  if (!qword_10012ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED80);
  }

  return result;
}

double sub_1000058EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_100005910(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100002A10(&qword_10012ED88, &qword_1000EECC8);
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_14:

    return sub_100005B30(v9, a2, v8);
  }

  sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
  sub_100006A04();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_13:
    v9 = a1 + v12;
    goto LABEL_14;
  }

  sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  sub_100006A04();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_13;
  }

  sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
  sub_100006A04();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[8];
    goto LABEL_13;
  }

  type metadata accessor for DailyViewAttributes(0);
  sub_100006A04();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[9];
    goto LABEL_13;
  }

  sub_1000EB214();
  sub_100006A04();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[10];
    goto LABEL_13;
  }

  v22 = *(a1 + a3[14] + 8);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  return (v22 + 1);
}

void sub_100005B6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100002A10(&qword_10012ED88, &qword_1000EECC8);
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_100002A10(&qword_10012ED98, &unk_1000F2440);
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
        sub_100006A04();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for DailyViewAttributes(0);
          sub_100006A04();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            sub_1000EB214();
            sub_100006A04();
            if (*(v22 + 84) != a3)
            {
              *(a1 + a4[14] + 8) = (a2 - 1);
              return;
            }

            v10 = v21;
            v14 = a4[10];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_1000028A0(v11, a2, a2, v10);
}

uint64_t type metadata accessor for ModernDailyForecastRowView(uint64_t a1)
{
  result = qword_10012EE00;
  if (!qword_10012EE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005DD4(uint64_t a1)
{
  sub_100005F98(319, &qword_10012EE10, &type metadata accessor for LayoutDirection);
  if (v1 <= 0x3F)
  {
    sub_100005F48();
    if (v2 <= 0x3F)
    {
      sub_100005F98(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        sub_100005F98(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
        if (v4 <= 0x3F)
        {
          sub_100005FEC(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for DailyViewAttributes(319);
            if (v6 <= 0x3F)
            {
              sub_1000EB214();
              if (v7 <= 0x3F)
              {
                sub_10000609C(319);
                if (v8 <= 0x3F)
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
}

void sub_100005F48()
{
  if (!qword_10012EE18)
  {
    v0 = sub_1000E9F94();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EE18);
    }
  }
}

void sub_100005F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100005FEC(uint64_t a1)
{
  if (!qword_10012EE30)
  {
    sub_100006048();
    v1 = sub_1000EAEB4();
    if (!v2)
    {
      atomic_store(v1, &qword_10012EE30);
    }
  }
}

unint64_t sub_100006048()
{
  result = qword_10012EE38;
  if (!qword_10012EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EE38);
  }

  return result;
}

void sub_10000609C(uint64_t a1)
{
  if (!qword_10012EE40)
  {
    sub_100002ABC(&unk_10012EE48, qword_1000EED10);
    v1 = sub_1000EAB14();
    if (!v2)
    {
      atomic_store(v1, &qword_10012EE40);
    }
  }
}

uint64_t sub_100006144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernDailyForecastRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000061A8()
{
  sub_100006A58();
  v1 = type metadata accessor for ModernDailyForecastRowView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100002A10(&qword_10012EEA0, &qword_1000EED68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA014();
    sub_1000069D0();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  sub_100006530(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v1[6];
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA3A4();
    sub_1000069D0();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  v7 = v1[7];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC34();
    sub_1000069D0();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  v9 = v1[8];
  sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
  sub_1000069D0();
  (*(v10 + 8))(v3 + v9);
  v11 = v3 + v1[9];
  sub_1000EBC44();
  sub_1000069D0();
  (*(v12 + 8))(v11);
  v13 = type metadata accessor for DailyViewAttributes(0);

  v14 = *(v13 + 88);
  v15 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_100005B30(v11 + v14, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
  }

  v16 = *(v13 + 92);
  if (!sub_100005B30(v11 + v16, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v11 + v16, v15);
  }

  v17 = v1[10];
  sub_1000EB214();
  sub_1000069D0();
  (*(v18 + 8))(v3 + v17);

  sub_100006A20();

  return _swift_deallocObject(v19);
}

uint64_t sub_100006530(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10000653C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernDailyForecastRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000065A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ModernDailyForecastRowView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000036E8(a1, v6, a2);
}

unint64_t sub_100006620()
{
  result = qword_10012EEE0;
  if (!qword_10012EEE0)
  {
    sub_100002ABC(&qword_10012EEC0, &qword_1000EED88);
    sub_100006988(&qword_10012EEE8, &qword_10012EEB8, &qword_1000EED80, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EEE0);
  }

  return result;
}

uint64_t sub_1000066D8(uint64_t a1)
{
  sub_100002A10(&qword_10012EED0, &qword_1000EED98);
  sub_1000069D0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10000673C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000674C()
{
  result = qword_10012EF78;
  if (!qword_10012EF78)
  {
    sub_100002ABC(&qword_10012EF38, &qword_1000EEE20);
    sub_100006808(&qword_10012EF80, &type metadata accessor for WeatherDayVarianceView, &protocol conformance descriptor for WeatherDayVarianceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF78);
  }

  return result;
}

uint64_t sub_100006808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006850(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002A10(a2, a3);
  sub_1000069D0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000068A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1000068F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_100006988(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_100006A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100002A10(a3, a4);
}

uint64_t sub_100006A70@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v121 = a1;
  v122 = a3;
  sub_1000E8604();
  sub_1000090D4();
  v118 = v9;
  v119 = v8;
  __chkstk_darwin(v8);
  sub_100006A10();
  v117 = (v11 - v10);
  v12 = sub_10000921C();
  type metadata accessor for InstantWeatherViewModel(v12);
  sub_1000069E4();
  __chkstk_darwin(v13);
  sub_100006A10();
  v16 = v15 - v14;
  v17 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  sub_100009210(v17);
  sub_100009204();
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  v21 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v22);
  sub_1000091AC();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v120 = &v112 - v27;
  v28 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  sub_100009210(v28);
  sub_100009204();
  __chkstk_darwin(v29);
  v31 = &v112 - v30;
  v32 = type metadata accessor for ForecastEntry(0);
  sub_1000069E4();
  __chkstk_darwin(v33);
  sub_100006A10();
  v36 = v35 - v34;
  switch(a2)
  {
    case 1:
      v115 = a4;
      v116 = v36;
      if (qword_10012EB30 != -1)
      {
        sub_1000090B4(&qword_10012EB30);
      }

      v60 = sub_1000E9F64();
      v114 = sub_100008CB8(v60, qword_100145BF8);
      v61 = sub_1000E9F44();
      v62 = sub_1000EC1B4();
      if (sub_1000091EC(v62))
      {
        v63 = sub_1000091BC();
        v113 = a5;
        v64 = v63;
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Location is fresh; evaluating the refresh policy...", v63, 2u);
        v65 = v64;
        a5 = v113;
        sub_100009194(v65);
      }

      sub_100007804();
      if (sub_100005B30(v31, 1, v32) == 1)
      {
        sub_100008E48(v31, &qword_10012F040, &unk_1000EEED0);
        v66 = sub_1000E9F44();
        v67 = sub_1000EC1B4();
        if (sub_100009178(v67))
        {
          v68 = sub_1000091BC();
          sub_1000091E0(v68);
          sub_100009134(&_mh_execute_header, v69, v70, "Timeline missing entries, returning error refresh policy");
          sub_100009118();
        }

        v50 = sub_1000091D4(v71, v72, v73, v74);
        v52 = v115;
        return sub_100007298(v50, v52, v51);
      }

      sub_100008CF0(v31, v116, type metadata accessor for ForecastEntry);
      sub_10000FB4C(v20);
      if (sub_100005B30(v20, 1, v21) == 1)
      {
        sub_100008E48(v20, &qword_10012F038, &qword_1000F0F90);
        v75 = sub_1000E9F44();
        v76 = sub_1000EC1B4();
        if (sub_100009178(v76))
        {
          v77 = sub_1000091BC();
          sub_1000091E0(v77);
          sub_100009134(&_mh_execute_header, v78, v79, "Timeline entry missing its view model, returning error refresh policy");
          sub_100009118();
        }

        v84 = sub_1000091D4(v80, v81, v82, v83);
        sub_100007298(v84, v115, v85);
      }

      else
      {
        v86 = v20;
        v87 = v120;
        sub_100008CF0(v86, v120, type metadata accessor for WeatherDataViewModel);
        sub_100009008(v87, v25, type metadata accessor for WeatherDataViewModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100008CF0(v25, v16, type metadata accessor for InstantWeatherViewModel);
          v88 = v117;
          sub_1000EB5C4();
          sub_100007998(v88, v122, v115, a5);
          (*(v118 + 8))(v88, v119);
          sub_100008D50(v16, type metadata accessor for InstantWeatherViewModel);
        }

        else
        {
          sub_1000090E8();
          v90 = sub_100008D50(v25, v89);
          v91 = v116;
          v92 = (v116 + *(v32 + 24));
          if (v92[50] == 1)
          {
            v93 = sub_1000091D4(v90, v115, &WidgetRefreshConfiguration.currentLocation.getter, "About to compute refresh policy for current location. Range=%{public}s", &static Date.now.getter, "Failed to compute refresh policy for current location, returning .atEnd");
            sub_100008060(v93, v94, v95, v96, v97, v98, v99);
            sub_1000090E8();
            sub_100008D50(v87, v100);
            sub_100009100();
            v102 = v91;
            return sub_100008D50(v102, v101);
          }

          if (v92[49] == 6)
          {
            v103 = 6;
          }

          else
          {
            v103 = v92[48];
          }

          switch(v103)
          {
            case 2:
              v104 = sub_1000091D4(v90, v115, &WidgetRefreshConfiguration.severe.getter, "About to compute refresh policy for severe. Range=%{public}s", &Date.init(), "Failed to compute refresh policy for severe, returning .atEnd");
              break;
            case 3:
            case 4:
            case 5:
              v104 = sub_1000091D4(v90, v115, &WidgetRefreshConfiguration.changeInConditions.getter, "About to compute refresh policy for CiC. Range=%{public}s", &Date.init(), "Failed to compute refresh policy for CiC, returning .atEnd");
              break;
            case 6:
              v104 = sub_1000091D4(v90, v115, &WidgetRefreshConfiguration.nextHourPrecipitation.getter, "About to compute refresh policy for NHP. Range=%{public}s", &Date.init(), "Failed to compute refresh policy for NHP, returning .atEnd");
              break;
            default:
              v104 = sub_1000091D4(v90, v115, &WidgetRefreshConfiguration.defaultLocation.getter, "About to compute refresh policy for default. Range=%{public}s", &Date.init(), "Failed to compute refresh policy for default location, returning .atEnd");
              break;
          }

          sub_100008060(v104, v105, v106, v107, v108, v109, v110);
        }

        sub_1000090E8();
        sub_100008D50(v87, v111);
      }

      sub_100009100();
      v102 = v116;
      return sub_100008D50(v102, v101);
    case 4:
      if (qword_10012EB30 != -1)
      {
        sub_1000090B4(&qword_10012EB30);
      }

      v54 = sub_1000E9F64();
      sub_100008CB8(v54, qword_100145BF8);
      v55 = sub_1000E9F44();
      v56 = sub_1000EC1B4();
      if (sub_100009178(v56))
      {
        v57 = sub_1000091BC();
        sub_1000091E0(v57);
        sub_100009118();
      }

      return sub_1000EBD04();
    default:
      v37 = a4;
      if (qword_10012EB30 != -1)
      {
        sub_1000090B4(&qword_10012EB30);
      }

      v38 = sub_1000E9F64();
      sub_100008CB8(v38, qword_100145BF8);
      v39 = sub_1000E9F44();
      v40 = sub_1000EC1B4();
      if (sub_1000091EC(v40))
      {
        v41 = swift_slowAlloc();
        v42 = sub_10000923C();
        v124 = v42;
        *v41 = 136446210;
        v123 = a2;
        v43 = sub_1000EBEE4();
        v45 = sub_1000E2E18(v43, v44, &v124);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Location state is not fresh; returning error refresh policy; state=%{public}s", v41, 0xCu);
        sub_100009068(v42);
        sub_100009194(v42);
        sub_100009118();
      }

      v50 = sub_1000091D4(v46, v47, v48, v49);
      v52 = v37;
      return sub_100007298(v50, v52, v51);
  }
}

uint64_t sub_100007298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v55 = a1;
  v62 = a3;
  v3 = sub_1000E8734();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100006A10();
  v9 = v8 - v7;
  sub_1000E8754();
  sub_1000090D4();
  v60 = v11;
  v61 = v10;
  __chkstk_darwin(v10);
  sub_100006A10();
  v14 = v13 - v12;
  v15 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v15);
  sub_100009204();
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v63 = sub_1000E8604();
  sub_1000090D4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000091AC();
  v56 = (v22 - v23);
  v25 = __chkstk_darwin(v24);
  v27 = &v55 - v26;
  __chkstk_darwin(v25);
  v57 = &v55 - v28;
  if (qword_10012EB30 != -1)
  {
    sub_1000090B4(&qword_10012EB30);
  }

  v29 = sub_1000E9F64();
  v59 = sub_100008CB8(v29, qword_100145BF8);
  v30 = sub_1000E9F44();
  v31 = sub_1000EC1B4();
  if (sub_1000091EC(v31))
  {
    v32 = sub_1000091BC();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "About to compute error refresh policy. (5 min to next refresh).", v32, 2u);
    sub_100009194(v32);
  }

  sub_1000E8714();
  (*(v5 + 104))(v9, enum case for Calendar.Component.minute(_:), v3);
  sub_1000E85F4();
  sub_1000E86E4();
  v33 = *(v20 + 8);
  v34 = v63;
  v33(v27, v63);
  (*(v5 + 8))(v9, v3);
  (*(v60 + 8))(v14, v61);
  if (sub_100005B30(v18, 1, v34) == 1)
  {
    sub_100008E48(v18, &qword_10012F048, &qword_1000EEF30);
    v35 = sub_1000E9F44();
    v36 = sub_1000EC194();
    if (sub_100009178(v36))
    {
      v37 = sub_1000091BC();
      sub_1000091E0(v37);
      sub_100009134(&_mh_execute_header, v38, v39, "Failed to compute error refresh policy, returning .atEnd");
      sub_100009118();
    }

    return sub_1000EBCF4();
  }

  else
  {
    v61 = v33;
    v41 = v57;
    (*(v20 + 32))(v57, v18, v34);
    v42 = v56;
    (*(v20 + 16))(v56, v41, v34);
    v43 = v58;

    v44 = sub_1000E9F44();
    v45 = sub_1000EC1B4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64 = v47;
      *v46 = 136446466;
      sub_100009154(&qword_10012F050);
      v48 = sub_1000EC5B4();
      v50 = v49;
      v51 = v42;
      v52 = v61;
      v61(v51, v63);
      v53 = sub_1000E2E18(v48, v50, &v64);
      v34 = v63;

      *(v46 + 4) = v53;
      v54 = v52;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1000E2E18(v55, v43, &v64);
      _os_log_impl(&_mh_execute_header, v44, v45, "Reloading .after(%{public}s) 5 minutes from now) for %s", v46, 0x16u);
      swift_arrayDestroy();
      sub_100009194(v47);
      sub_100009118();
    }

    else
    {

      v54 = v61;
      v61(v42, v34);
    }

    sub_1000EBCE4();
    return v54(v41, v34);
  }
}

uint64_t sub_100007804()
{
  v3 = sub_100009228();
  v4 = type metadata accessor for ForecastEntry(v3);
  v5 = v4;
  if (v2)
  {
    sub_100009008(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0, type metadata accessor for ForecastEntry);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return sub_1000028A0(v0, v6, 1, v5);
}

uint64_t sub_1000078F8()
{
  v3 = sub_100009228();
  v5 = v4(v3);
  v6 = v5;
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000028A0(v0, v7, 1, v6);
}

void sub_100007998(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v60[0] = a2;
  v60[1] = a4;
  v5 = sub_1000E8604();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v60 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v60 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v60 - v17;
  v19 = __chkstk_darwin(v16);
  v70 = v60 - v20;
  __chkstk_darwin(v19);
  v22 = v60 - v21;
  if (qword_10012EB30 != -1)
  {
    swift_once();
  }

  v23 = sub_1000E9F64();
  v24 = sub_100008CB8(v23, qword_100145BF8);
  v25 = *(v6 + 16);
  v68 = a1;
  v63 = v25;
  v64 = v6 + 16;
  v25(v22, a1, v5);
  v66 = v24;
  v26 = sub_1000E9F44();
  v27 = sub_1000EC1B4();
  v28 = os_log_type_enabled(v26, v27);
  v61 = v15;
  v62 = v12;
  v67 = v9;
  v65 = v6;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v71 = v30;
    *v29 = 136315138;
    sub_100008FC4(&qword_10012F050, &protocol conformance descriptor for Date);
    v31 = sub_1000EC5B4();
    v33 = v32;
    v34 = *(v6 + 8);
    (v34)(v22, v5);
    v35 = sub_1000E2E18(v31, v33, &v71);
    v12 = v62;

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "About to compute refresh policy for interpolated location. expirationDate=%s", v29, 0xCu);
    sub_100009068(v30);
    v15 = v61;
  }

  else
  {

    v34 = *(v6 + 8);
    (v34)(v22, v5);
  }

  v36 = sub_100008EA0(0x15uLL);
  v37 = v70;
  v38 = v68;
  if (((v36 - 5) * 60) >> 64 != (60 * (v36 - 5)) >> 63)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000E85B4();
  sub_1000E8584();
  (v34)(v18, v5);
  sub_100008FC4(&qword_10012F058, &protocol conformance descriptor for Date);
  if (sub_1000EBE14())
  {
    v39 = v15;
    v40 = v37;
  }

  else
  {
    v39 = v15;
    v40 = v38;
  }

  v41 = v63;
  v63(v39, v40, v5);
  sub_1000E8584();
  sub_1000E85B4();
  sub_1000E8544();
  v43 = v42;
  (v34)(v18, v5);
  v44 = v67;
  v41(v67, v12, v5);
  v68 = v34;
  v45 = v44;

  v46 = sub_1000E9F44();
  v47 = sub_1000EC1B4();

  if (!os_log_type_enabled(v46, v47))
  {

    v59 = v45;
    v54 = v68;
    (v68)(v59, v5);
    goto LABEL_16;
  }

  v48 = v46;
  v49 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  *v49 = 136446722;
  sub_100008FC4(&qword_10012F050, &protocol conformance descriptor for Date);
  v50 = sub_1000EC5B4();
  v52 = v51;
  v53 = v45;
  v54 = v68;
  (v68)(v53, v5);
  v55 = sub_1000E2E18(v50, v52, &v71);

  *(v49 + 4) = v55;
  *(v49 + 12) = 2080;
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v43 < 9.22337204e18)
  {
    v56 = sub_1000089E8(v43);
    v58 = sub_1000E2E18(v56, v57, &v71);

    *(v49 + 14) = v58;
    *(v49 + 22) = 2080;
    *(v49 + 24) = sub_1000E2E18(v60[0], v69, &v71);
    _os_log_impl(&_mh_execute_header, v48, v47, "Reloading .after(%{public}s) (%s from now) for %s", v49, 0x20u);
    swift_arrayDestroy();

    v15 = v61;
    v12 = v62;
    v37 = v70;
LABEL_16:
    sub_1000EBCE4();
    (v54)(v12, v5);
    (v54)(v15, v5);
    (v54)(v37, v5);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100008060@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, const char *a4@<X3>, void (*a5)(uint64_t)@<X4>, const char *a6@<X5>, uint64_t a7@<X8>)
{
  v104 = a6;
  v117 = a5;
  v106 = a4;
  v127 = a3;
  v109 = a2;
  v105 = a1;
  v123 = a7;
  sub_1000E8734();
  sub_1000090D4();
  v118 = v9;
  v119 = v8;
  __chkstk_darwin(v8);
  sub_100006A10();
  v115 = v11 - v10;
  sub_10000921C();
  v116 = sub_1000E8754();
  sub_1000090D4();
  v114 = v12;
  __chkstk_darwin(v13);
  sub_100006A10();
  v112 = v15 - v14;
  v16 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v16);
  sub_100009204();
  __chkstk_darwin(v17);
  v113 = &v103 - v18;
  sub_10000921C();
  v128 = sub_1000E8604();
  sub_1000090D4();
  v111 = v19;
  __chkstk_darwin(v20);
  sub_1000091AC();
  v107 = v21 - v22;
  v24 = __chkstk_darwin(v23);
  v110 = &v103 - v25;
  __chkstk_darwin(v24);
  v120 = &v103 - v26;
  sub_10000921C();
  sub_1000E97F4();
  sub_1000090D4();
  v125 = v28;
  v126 = v27;
  __chkstk_darwin(v27);
  sub_100006A10();
  v31 = v30 - v29;
  v124 = sub_1000E96A4();
  sub_1000090D4();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_100006A10();
  v37 = v36 - v35;
  v38 = sub_1000E94B4();
  sub_1000090D4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_100006A10();
  v44 = v43 - v42;
  sub_1000E9644();
  sub_1000090D4();
  v121 = v46;
  v122 = v45;
  __chkstk_darwin(v45);
  sub_100006A10();
  v49 = v48 - v47;
  v50 = *(v7 + 40);
  v108 = v7;
  sub_100008DA8((v7 + 16), v50);
  sub_1000E9804();
  sub_1000E94A4();
  (*(v40 + 8))(v44, v38);
  sub_1000E9694();
  v52 = *(v33 + 8);
  v51 = v33 + 8;
  v53 = v52(v37, v124);
  v127(v53);
  (*(v125 + 8))(v31, v126);
  sub_1000E9634();
  v55 = v54;
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000E9624();
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v55;
  v51 = v56;
  if (v56 >= v55)
  {
    if (qword_10012EB30 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000090B4(&qword_10012EB30);
LABEL_9:
  v57 = sub_1000E9F64();
  v127 = sub_100008CB8(v57, qword_100145BF8);
  v58 = sub_1000E9F44();
  v59 = sub_1000EC1B4();
  if (sub_1000091EC(v59))
  {
    v60 = v49;
    v61 = swift_slowAlloc();
    v62 = sub_10000923C();
    v129[0] = v62;
    *v61 = 136446210;
    v63 = sub_100008F2C(v31, v51);
    v65 = sub_1000E2E18(v63, v64, v129);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v58, v59, v106, v61, 0xCu);
    sub_100009068(v62);
    sub_100009194(v62);
    v66 = v61;
    v49 = v60;
    sub_100009194(v66);
  }

  v67 = v128;
  v68 = v111;
  v69 = sub_100008DEC(v31, v51);
  v70 = v112;
  sub_1000E8714();
  v72 = v118;
  v71 = v119;
  v73 = v115;
  v74 = (*(v118 + 104))(v115, enum case for Calendar.Component.second(_:), v119);
  v75 = v110;
  v117(v74);
  v76 = v113;
  v126 = v69;
  sub_1000E86E4();
  v77 = v75;
  v78 = *(v68 + 8);
  (v78)(v77, v67);
  (*(v72 + 8))(v73, v71);
  (*(v114 + 8))(v70, v116);
  if (sub_100005B30(v76, 1, v67) == 1)
  {
    sub_100008E48(v76, &qword_10012F048, &qword_1000EEF30);
    v79 = v127;
    v80 = sub_1000E9F44();
    v81 = sub_1000EC194();
    if (sub_100009178(v81))
    {
      v82 = sub_1000091BC();
      sub_1000091E0(v82);
      _os_log_impl(&_mh_execute_header, v80, v79, v104, v78, 2u);
      sub_100009118();
    }

    sub_1000EBCF4();
    v84 = v121;
    v83 = v122;
  }

  else
  {
    v125 = v49;
    v85 = v120;
    (*(v68 + 32))(v120, v76, v67);
    v86 = v107;
    (*(v68 + 16))(v107, v85, v67);

    v87 = sub_1000E9F44();
    v88 = v86;
    v89 = sub_1000EC1B4();

    if (os_log_type_enabled(v87, v89))
    {
      v90 = sub_10000923C();
      v91 = swift_slowAlloc();
      v129[0] = v91;
      *v90 = 136446722;
      sub_100009154(&qword_10012F050);
      v92 = sub_1000EC5B4();
      v94 = v93;
      v95 = v78;
      (v78)(v88, v128);
      v96 = sub_1000E2E18(v92, v94, v129);

      *(v90 + 4) = v96;
      *(v90 + 12) = 2080;
      v97 = sub_1000089E8(v126);
      v99 = sub_1000E2E18(v97, v98, v129);

      *(v90 + 14) = v99;
      *(v90 + 22) = 2080;
      *(v90 + 24) = sub_1000E2E18(v105, v109, v129);
      _os_log_impl(&_mh_execute_header, v87, v89, "Reloading .after(%{public}s) (%s from now) for %s", v90, 0x20u);
      swift_arrayDestroy();
      sub_100009194(v91);
      v100 = v90;
      v67 = v128;
      sub_100009194(v100);
    }

    else
    {

      v95 = v78;
      (v78)(v88, v67);
    }

    v83 = v122;
    v101 = v120;
    v84 = v121;
    v49 = v125;
    sub_1000EBCE4();
    (v95)(v101, v67);
  }

  return (*(v84 + 8))(v49, v83);
}

uint64_t sub_1000089E8(uint64_t a1)
{
  if (a1 >= 60)
  {
    v3 = sub_1000EC5B4();
    v1._countAndFlagsBits = 0x736574756E696D20;
  }

  else
  {
    v3 = sub_1000EC5B4();
    v1._countAndFlagsBits = 0x73646E6F63657320;
  }

  v1._object = 0xE800000000000000;
  sub_1000EBF44(v1);
  return v3;
}

uint64_t sub_100008A90@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_10012EB30 != -1)
  {
    sub_1000090B4(&qword_10012EB30);
  }

  v8 = sub_1000E9F64();
  sub_100008CB8(v8, qword_100145BF8);
  v9 = sub_1000E9F44();
  v10 = sub_1000EC1B4();
  if (os_log_type_enabled(v9, v10))
  {
    v22 = a2;
    v11 = a4;
    v12 = swift_slowAlloc();
    v13 = sub_10000923C();
    v23 = v13;
    *v12 = 136446210;
    v14 = sub_1000EBEE4();
    v16 = sub_1000E2E18(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "About to determine refresh policy for error entry: %{public}s", v12, 0xCu);
    sub_100009068(v13);
    sub_100009194(v13);
    v17 = v12;
    a4 = v11;
    a2 = v22;
    sub_100009194(v17);
  }

  if (a1)
  {
    return sub_100007298(a2, a3, a4);
  }

  v19 = sub_1000E9F44();
  v20 = sub_1000EC1B4();
  if (sub_1000091EC(v20))
  {
    v21 = sub_1000091BC();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Returning policy: .never for error: .locationPermissionDenied", v21, 2u);
    sub_100009194(v21);
  }

  return sub_1000EBD04();
}

uint64_t LocalSearchRequestService.__deallocating_deinit()
{
  sub_100009068((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100008CB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008CF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100008D50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_100008DA8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008DEC(uint64_t a1, uint64_t a2)
{
  if (a2 - a1 != -1)
  {
    return sub_100008EA0(a2 - a1 + 1) + a1;
  }

  swift_stdlib_random();
  return 0;
}

uint64_t sub_100008E48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002A10(a2, a3);
  sub_1000069E4();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100008EA0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008F2C(uint64_t a1, uint64_t a2)
{
  sub_1000EC434();
  v3._countAndFlagsBits = 3026478;
  v3._object = 0xE300000000000000;
  sub_1000EBF44(v3);
  sub_1000EC434();
  return 0;
}

uint64_t sub_100008FC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000E8604();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009008(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100009068(void *a1)
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

uint64_t sub_1000090B4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100009118()
{
}

void sub_100009134(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100009154(unint64_t *a1)
{

  return sub_100008FC4(a1, &protocol conformance descriptor for Date);
}

BOOL sub_100009178(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100009194(uint64_t a1)
{
}

uint64_t sub_1000091BC()
{

  return swift_slowAlloc();
}

BOOL sub_1000091EC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000923C()
{

  return swift_slowAlloc();
}

uint64_t sub_100009268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EB3C4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100009328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000EB3C4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for EventViewModelFactory(uint64_t a1)
{
  result = qword_10012F0B8;
  if (!qword_10012F0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000941C(uint64_t a1)
{
  result = sub_1000EB3C4();
  if (v2 <= 0x3F)
  {
    result = sub_1000EAE64();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1000094A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v325 = a2;
  v315 = a3;
  v326 = a1;
  v303 = sub_1000E8B64();
  sub_1000090D4();
  v290 = v3;
  __chkstk_darwin(v4);
  sub_100006A10();
  sub_10000D4C4(v6 - v5);
  sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  sub_1000090D4();
  v319 = v8;
  v320 = v7;
  sub_100009204();
  __chkstk_darwin(v9);
  sub_10000D58C();
  v318 = v10;
  v11 = sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
  v12 = sub_100009210(v11);
  __chkstk_darwin(v12);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v13);
  sub_10000D56C();
  v317 = v14;
  v15 = sub_100002A10(&qword_10012F100, &qword_1000EEF08);
  sub_100009210(v15);
  sub_100009204();
  __chkstk_darwin(v16);
  sub_10000D58C();
  v308 = v17;
  v309 = sub_1000E8EC4();
  sub_1000090D4();
  v304 = v18;
  __chkstk_darwin(v19);
  sub_100006A10();
  sub_10000D4C4(v21 - v20);
  v22 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  v23 = sub_100009210(v22);
  __chkstk_darwin(v23);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v24);
  sub_10000D56C();
  v310 = v25;
  v323 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  sub_1000090D4();
  v311 = v26;
  sub_100009204();
  __chkstk_darwin(v27);
  sub_10000D58C();
  v321 = v28;
  v288 = sub_1000E8C04();
  sub_1000090D4();
  v287 = v29;
  __chkstk_darwin(v30);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v31);
  sub_10000D56C();
  sub_10000D4A0(v32);
  v283 = sub_1000E8C14();
  sub_1000090D4();
  v282 = v33;
  __chkstk_darwin(v34);
  sub_100006A10();
  v37 = sub_10000D4A0(v36 - v35);
  v305 = type metadata accessor for EventViewModel(v37);
  sub_1000090D4();
  v306 = v38;
  __chkstk_darwin(v39);
  sub_10000D45C();
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
  sub_10000D4C4(v45);
  v46 = sub_100002A10(&qword_10012F118, &qword_1000EEF20);
  sub_100009210(v46);
  sub_100009204();
  __chkstk_darwin(v47);
  sub_10000D58C();
  sub_10000D4A0(v48);
  v298 = sub_1000E8AD4();
  sub_1000090D4();
  v296 = v49;
  __chkstk_darwin(v50);
  sub_100006A10();
  sub_10000D4A0(v52 - v51);
  v293 = sub_1000E8AA4();
  sub_1000090D4();
  v292 = v53;
  __chkstk_darwin(v54);
  sub_100006A10();
  sub_10000D4C4(v56 - v55);
  v57 = sub_100002A10(&qword_10012F120, &qword_1000EEF28);
  v58 = sub_100009210(v57);
  __chkstk_darwin(v58);
  sub_10000D45C();
  v322 = v59;
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
  v65 = (&v275 - v64);
  v66 = sub_1000E8734();
  sub_1000090D4();
  v68 = v67;
  __chkstk_darwin(v69);
  sub_100006A10();
  v72 = v71 - v70;
  v73 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v73);
  sub_100009204();
  __chkstk_darwin(v74);
  v76 = &v275 - v75;
  v77 = sub_1000E8604();
  sub_1000090D4();
  v79 = v78;
  v81 = __chkstk_darwin(v80);
  v83 = &v275 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v85 = &v275 - v84;
  v316 = sub_1000E8754();
  sub_1000090D4();
  v314 = v86;
  __chkstk_darwin(v87);
  sub_100006A10();
  v90 = v89 - v88;
  sub_1000E86B4();
  (*(v68 + 104))(v72, enum case for Calendar.Component.minute(_:), v66);
  sub_1000E85B4();
  v312 = v90;
  sub_1000E86E4();
  v91 = *(v79 + 8);
  v315 = v79 + 8;
  v313 = v91;
  v91(v83, v77);
  (*(v68 + 8))(v72, v66);
  sub_10000D4FC(v76, 1, v77);
  if (v148)
  {
    sub_1000E85B4();
    sub_10000D4FC(v76, 1, v77);
    v94 = v85;
    if (!v148)
    {
      sub_10000D3A8(v76, &qword_10012F048, &qword_1000EEF30);
    }
  }

  else
  {
    v92 = sub_10000D598();
    v93(v92);
    v94 = v85;
  }

  v95 = *(v324 + *(type metadata accessor for EventViewModelFactory(0) + 20));
  sub_1000E8C94();
  v96 = v325;
  v324 = v95;
  sub_1000EAE04();

  v97 = sub_1000EAD64();
  sub_10000D480(v65);
  v98 = v322;
  v99 = v323;
  if (v148)
  {
    sub_10000D3A8(v65, &qword_10012F120, &qword_1000EEF28);
LABEL_14:
    v112 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  sub_1000069F4();
  v101 = v100;
  v103 = (*(v102 + 88))(v65, v97);
  if (v103 != enum case for WeatherEventDescription.severeWeather(_:))
  {
    (*(v101 + 8))(v65, v97);
    goto LABEL_14;
  }

  v278 = v77;
  (*(v101 + 96))(v65, v97);
  v105 = *v65;
  v104 = v65[1];
  if (sub_1000E8C94())
  {
    v276 = v105;
    v277 = v104;
    v106 = v292;
    v107 = v291;
    v108 = v293;
    (*(v292 + 104))(v291, enum case for WeatherAlert.Prominence.high(_:), v293);
    v109 = sub_1000EC024();

    (*(v106 + 8))(v107, v108);
    v110 = v294;
    sub_1000078B0(v109);

    v111 = v298;
    sub_10000D4FC(v110, 1, v298);
    if (!v148)
    {
      (*(v296 + 32))(v295, v110, v111);
      v113 = v281;
      sub_1000E8AC4();
      LODWORD(v294) = sub_10000AD34(v113);
      (*(v282 + 8))(v113, v283);
      v114 = v305;
      v115 = v286;
      sub_1000E8AB4();
      v116 = v297;
      sub_1000E8BF4();
      v293 = *(v287 + 8);
      v117 = v115;
      v118 = v288;
      v293(v117, v288);
      sub_10000D554();
      v119 = v278;
      sub_1000028A0(v120, v121, v122, v278);
      sub_10000D52C();
      sub_1000028A0(v123, v124, v125, v119);
      v126 = v284;
      sub_1000E8AB4();
      sub_1000E8BE4();
      v293(v126, v118);
      sub_1000E8F24();
      sub_10000D52C();
      sub_1000028A0(v127, v128, v129, v130);
      *v116 = 2;
      v116[1] = v294;
      v131 = &v116[v114[9]];
      v132 = v276;
      v133 = v277;
      *v131 = v276;
      v131[1] = v133;
      v134 = &v116[v114[10]];
      *v134 = v132;
      v134[1] = v133;
      v135 = &v116[v114[11]];
      *v135 = v132;
      v135[1] = v133;
      *&v116[v114[12]] = 0;
      v136 = v285;
      sub_10000ACD0(v116, v285);
      swift_bridgeObjectRetain_n();
      sub_100030DC4();
      v112 = v137;
      v138 = v137[3];
      if (v137[2] >= v138 >> 1)
      {
        sub_10000D578(v138);
        sub_100030DC4();
        v112 = v272;
      }

      v98 = v322;
      v99 = v323;
      sub_10000B874(v297);
      (*(v296 + 8))(v295, v298);
      sub_10000D434();
      sub_10000B8D0(v136, v139);
      goto LABEL_20;
    }

    sub_10000D3A8(v110, &qword_10012F118, &qword_1000EEF20);
  }

  else
  {
  }

  v112 = &_swiftEmptyArrayStorage;
LABEL_20:
  v77 = v278;
LABEL_21:
  v140 = v310;
  sub_1000E8CB4();
  sub_10000D4FC(v140, 1, v99);
  if (v148)
  {
    v141 = &qword_10012F108;
    v142 = &qword_1000EEF10;
    v143 = v140;
LABEL_27:
    sub_10000D3A8(v143, v141, v142);
    goto LABEL_28;
  }

  (*(v311 + 32))(v321, v140, v99);
  v144 = sub_1000E91B4();
  __chkstk_darwin(v144);
  *(&v275 - 2) = v94;
  v327 = sub_10000B090(sub_10000B934, (&v275 - 4), v145);

  sub_10000B954(&v327);

  v146 = v308;
  sub_1000078C8(v327);

  v147 = v309;
  sub_10000D4FC(v146, 1, v309);
  if (v148)
  {
    v149 = sub_10000D470();
    v150(v149, v99);
    v141 = &qword_10012F100;
    v142 = &qword_1000EEF08;
    v143 = v146;
    goto LABEL_27;
  }

  v310 = v112;
  v169 = v304;
  v170 = v307;
  v171 = (*(v304 + 32))(v307, v146, v147);
  v298 = v97;
  sub_10000D4DC(v171);
  v172 = v94;
  v173 = v299;
  v174 = sub_1000EAE14();
  v175 = v173;
  sub_10000D538(v174, &qword_10012F108, &qword_1000EEF10);
  sub_10000D480(v173);
  if (v176)
  {
    (*(v169 + 8))(v170, v147);
    v177 = sub_10000D470();
    v178(v177, v99);
    sub_10000D3A8(v173, &qword_10012F120, &qword_1000EEF28);
    v112 = v310;
    v94 = v172;
    v96 = v325;
    goto LABEL_28;
  }

  v308 = v172;
  v278 = v77;
  sub_1000069F4();
  v205 = v204;
  v207 = *(v206 + 88);
  v208 = sub_10000D560();
  v209 = v207(v208);
  if (v209 != enum case for WeatherEventDescription.nextHourPrecipitation(_:))
  {
    (*(v169 + 8))(v307, v309);
LABEL_51:
    v221 = sub_10000D470();
    v222(v221, v323);
    (*(v205 + 8))(v175, v97);
    goto LABEL_52;
  }

  v210 = v209;
  v211 = *(v205 + 96);
  v212 = sub_10000D560();
  v213 = v211(v212);
  v214 = v175[1];
  v297 = *v175;
  sub_10000D4DC(v213);
  sub_10000D514();
  v215 = sub_1000EAE24();
  sub_10000D538(v215, &qword_10012F108, &qword_1000EEF10);
  sub_10000D480(v99);
  if (v148)
  {

    v216 = sub_10000D418();
    v217(v216);
    v218 = sub_10000D470();
    v219(v218, v323);
    v220 = v99;
LABEL_49:
    sub_10000D3A8(v220, &qword_10012F120, &qword_1000EEF28);
LABEL_52:
    v96 = v325;
    v77 = v278;
    v94 = v308;
    v98 = v322;
    v112 = v310;
    goto LABEL_28;
  }

  v299 = v214;
  v223 = (v207)(v99, v97);
  if (v223 != v210)
  {

    v231 = sub_10000D418();
    v232(v231);
    v233 = sub_10000D470();
    v234(v233, v323);
    (*(v205 + 8))(v99, v97);
    goto LABEL_52;
  }

  v224 = (v211)(v99, v97);
  v225 = v99[1];
  v296 = *v99;
  sub_10000D4DC(v224);
  sub_10000D514();
  v226 = sub_1000EAE34();
  v175 = v99;
  sub_10000D538(v226, &qword_10012F108, &qword_1000EEF10);
  sub_10000D480(v99);
  if (v148)
  {

    v227 = sub_10000D418();
    v228(v227);
    v229 = sub_10000D470();
    v230(v229, v323);
    v220 = v99;
    goto LABEL_49;
  }

  v235 = sub_10000D560();
  v236 = v207(v235);
  v237 = v299;
  if (v236 != v210)
  {

    v268 = sub_10000D418();
    v269(v268);
    goto LABEL_51;
  }

  v238 = sub_10000D560();
  v211(v238);
  v239 = *v175;
  v240 = v175[1];
  v241 = v305;
  v242 = v279;
  sub_1000E8EA4();
  sub_10000D554();
  v243 = v278;
  sub_1000028A0(v244, v245, v246, v278);
  sub_1000E85F4();
  sub_10000D554();
  sub_1000028A0(v247, v248, v249, v243);
  v250 = v286;
  sub_1000E9194();
  sub_1000E8BE4();
  (*(v287 + 8))(v250, v288);
  sub_1000E8EB4();
  sub_1000E8F24();
  sub_10000D554();
  sub_1000028A0(v251, v252, v253, v254);
  *v242 = 1286;
  v255 = (v242 + v241[9]);
  *v255 = v239;
  v255[1] = v240;
  v256 = (v242 + v241[10]);
  *v256 = v296;
  v256[1] = v225;
  v257 = (v242 + v241[11]);
  *v257 = v297;
  v257[1] = v237;
  *(v242 + v241[12]) = 0;
  sub_10000ACD0(v242, v280);
  v258 = v310;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v325;
  v94 = v308;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100030DC4();
    v258 = v273;
  }

  v261 = v258[2];
  v260 = v258[3];
  v310 = v258;
  v77 = v278;
  v262 = v304;
  if (v261 >= v260 >> 1)
  {
    sub_100030DC4();
    v310 = v274;
  }

  v98 = v322;
  v263 = v323;
  v264 = v307;
  sub_10000B874(v279);
  (*(v262 + 8))(v264, v309);
  v265 = sub_10000D470();
  v266(v265, v263);
  v112 = v310;
  sub_10000D434();
  sub_10000B8D0(v280, v267);
LABEL_28:
  v151 = v317;
  sub_1000E8CC4();
  v152 = v318;
  sub_1000E8C84();
  sub_1000EAE44();
  (*(v319 + 8))(v152, v320);
  sub_10000D3A8(v151, &qword_10012F0F8, &qword_1000EEF00);
  sub_10000D480(v98);
  if (v148)
  {
    v153 = sub_10000D4B0();
    v154(v153);
    sub_10000D3A8(v98, &qword_10012F120, &qword_1000EEF28);
  }

  else
  {
    sub_1000069F4();
    v155 = sub_10000D598();
    v157 = v156(v155);
    if (v157 == enum case for WeatherEventDescription.changeInCondition(_:))
    {
      v310 = v112;
      v308 = v94;
      v158 = v77;
      v159 = sub_10000D598();
      v160(v159);
      v162 = *v98;
      v161 = v98[1];
      v163 = v302;
      sub_1000E8CC4();
      v164 = v303;
      sub_10000D4FC(v163, 1, v303);
      if (v148)
      {
        sub_10000D3A8(v163, &qword_10012F0F8, &qword_1000EEF00);
        v182 = 3;
      }

      else
      {
        v179 = v290;
        v180 = v289;
        (*(v290 + 32))(v289, v163, v164);
        v181 = sub_10000B354(v180, v96);
        (*(v179 + 8))(v180, v164);
        v182 = v181 + 3;
      }

      v183 = v300;
      v184 = v305;
      sub_10000D52C();
      v77 = v158;
      sub_1000028A0(v185, v186, v187, v158);
      sub_10000D52C();
      sub_1000028A0(v188, v189, v190, v158);
      sub_1000E85F4();
      sub_1000E8F24();
      sub_10000D52C();
      sub_1000028A0(v191, v192, v193, v194);
      *v183 = v182;
      v183[1] = 5;
      v195 = &v183[v184[9]];
      *v195 = v162;
      *(v195 + 1) = v161;
      v196 = &v183[v184[10]];
      *v196 = v162;
      *(v196 + 1) = v161;
      v197 = &v183[v184[11]];
      *v197 = v162;
      *(v197 + 1) = v161;
      *&v183[v184[12]] = 0;
      v198 = v301;
      sub_10000ACD0(v183, v301);
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100030DC4();
        v310 = v270;
      }

      v94 = v308;
      v199 = v310[3];
      if (v310[2] >= v199 >> 1)
      {
        sub_10000D578(v199);
        sub_100030DC4();
        v310 = v271;
      }

      sub_10000B874(v183);
      v200 = sub_10000D4B0();
      v201(v200);
      v112 = v310;
      sub_10000D434();
      sub_10000B8D0(v198, v202);
    }

    else
    {
      v165 = sub_10000D4B0();
      v166(v165);
      v167 = sub_10000D598();
      v168(v167);
    }
  }

  v313(v94, v77);
  return v112;
}

uint64_t sub_10000ACD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AD34(uint64_t a1)
{
  v2 = sub_1000E8C14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WeatherSeverity.minor(_:))
  {
    return 0;
  }

  if (v6 == enum case for WeatherSeverity.moderate(_:))
  {
    return 1;
  }

  if (v6 == enum case for WeatherSeverity.severe(_:))
  {
    return 2;
  }

  if (v6 == enum case for WeatherSeverity.extreme(_:))
  {
    return 3;
  }

  if (v6 != enum case for WeatherSeverity.unknown(_:))
  {
    (*(v3 + 8))(v5, v2);
  }

  return 4;
}

BOOL sub_10000AEB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v3 - 8);
  v5 = v12 - v4;
  v6 = sub_1000E8604();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8E94();
  if (sub_100005B30(v5, 1, v6) == 1)
  {
    (*(v7 + 16))(v9, a2, v6);
    if (sub_100005B30(v5, 1, v6) != 1)
    {
      sub_10000D3A8(v5, &qword_10012F048, &qword_1000EEF30);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  sub_10000D330();
  v10 = sub_1000EBE04();
  (*(v7 + 8))(v9, v6);
  return (v10 & 1) == 0;
}

void *sub_10000B090(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_1000E8EC4();
  v5 = *(v33 - 8);
  v6 = __chkstk_darwin(v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_1000AC888(0, v17[2] + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = v19[2];
      v20 = v19[3];
      v22 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        v28 = (v21 + 1);
        v24 = v21;
        sub_1000AC888(v20 > 1, v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      v19[2] = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B354(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002A10(&qword_10012F130, &qword_1000EEF40);
  sub_100009210(v2);
  sub_100009204();
  __chkstk_darwin(v3);
  v5 = &v26[-v4];
  v6 = sub_1000E8B44();
  sub_1000090D4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = sub_1000E8754();
  sub_1000090D4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100006A10();
  v19 = v18 - v17;
  sub_1000E86B4();
  v20 = sub_1000E8B54();
  v27 = v19;
  sub_10000B6B8(sub_10000D388, v20, v5);

  sub_10000D4FC(v5, 1, v6);
  if (v21)
  {
    sub_10000D3A8(v5, &qword_10012F130, &qword_1000EEF40);
    v22 = 0;
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    if (sub_1000E8B14())
    {
      sub_1000E8B04();
      v24 = sub_1000E8B34();
      (*(v8 + 8))(v12, v6);
      if (v24)
      {
        v22 = 0;
      }

      else
      {
        v22 = 2;
      }
    }

    else
    {
      (*(v8 + 8))(v12, v6);
      v22 = 1;
    }
  }

  (*(v15 + 8))(v19, v13);
  return v22;
}

uint64_t sub_10000B5CC()
{
  v0 = sub_1000E8604();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8B24();
  v4 = sub_1000E86D4();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_10000B6B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = sub_1000E8B44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return sub_1000028A0(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return sub_1000028A0(v14, v13, 1, v5);
}

uint64_t sub_10000B874(uint64_t a1)
{
  v2 = type metadata accessor for EventViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000B954(uint64_t *a1)
{
  v2 = *(sub_1000E8EC4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10000D318(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10000B9FC(v5);
  *a1 = v3;
}

void sub_10000B9FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1000EC5A4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000E8EC4();
        v6 = sub_1000EC014();
        v6[2] = v5;
      }

      v7 = *(sub_1000E8EC4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000BEC4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10000BB2C(0, v2, 1, a1);
  }
}

uint64_t sub_10000BB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1000E8604();
  v8 = *(v60 - 8);
  v9 = __chkstk_darwin(v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v41 - v11;
  v12 = sub_1000E8EC4();
  v13 = __chkstk_darwin(v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v57 = &v41 - v16;
  result = __chkstk_darwin(v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_1000E8EA4();
        v32 = v59;
        sub_1000E8EA4();
        v62 = sub_1000E8574();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10000BEC4(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v157 = sub_1000E8604();
  v8 = *(v157 - 8);
  v9 = __chkstk_darwin(v157);
  v156 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v155 = &v130 - v11;
  v12 = sub_1000E8EC4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v136 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v147 = &v130 - v17;
  v18 = __chkstk_darwin(v16);
  v154 = &v130 - v19;
  __chkstk_darwin(v18);
  v158 = &v130 - v20;
  v142 = a3;
  v21 = a3[1];
  v137 = v13;
  if (v21 < 1)
  {
    v23 = &_swiftEmptyArrayStorage;
LABEL_101:
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v123 = (v23 + 16);
      v124 = *(v23 + 16);
      while (v124 >= 2)
      {
        if (!*v142)
        {
          goto LABEL_139;
        }

        v125 = v23;
        v126 = (v23 + 16 * v124);
        v127 = *v126;
        v128 = &v123[2 * v124];
        v23 = v128[1];
        sub_10000CAB8(&(*v142)[*(v137 + 9) * *v126], &(*v142)[*(v137 + 9) * *v128], &(*v142)[*(v137 + 9) * v23], v159);
        if (v5)
        {
          break;
        }

        if (v23 < v127)
        {
          goto LABEL_127;
        }

        if (v124 - 2 >= *v123)
        {
          goto LABEL_128;
        }

        *v126 = v127;
        v126[1] = v23;
        v129 = *v123 - v124;
        if (*v123 < v124)
        {
          goto LABEL_129;
        }

        v124 = *v123 - 1;
        memmove(v128, v128 + 2, 16 * v129);
        *v123 = v124;
        v23 = v125;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v23 = sub_10000D124(v23);
    goto LABEL_103;
  }

  v131 = a4;
  v22 = 0;
  v151 = (v8 + 8);
  v152 = v13 + 16;
  v149 = (v13 + 32);
  v150 = (v13 + 8);
  v23 = &_swiftEmptyArrayStorage;
  v153 = v12;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    if (v22 + 1 < v21)
    {
      v132 = v23;
      v26 = v22;
      v134 = v22;
      v143 = v5;
      v144 = v22 + 1;
      v27 = *v142;
      v159 = v27;
      v28 = v13;
      v29 = *(v13 + 9);
      v145 = v21;
      v146 = v29;
      v30 = v27 + v29 * v25;
      v31 = v12;
      v32 = *(v28 + 2);
      v32(v158, v30, v12);
      v33 = v154;
      v140 = v32;
      v32(v154, v27 + v29 * v26, v31);
      v5 = v155;
      v23 = v158;
      sub_1000E8EA4();
      v34 = v156;
      sub_1000E8EA4();
      LODWORD(v141) = sub_1000E8574();
      v35 = *v151;
      v36 = v157;
      (*v151)(v34, v157);
      v139 = v35;
      (v35)(v5, v36);
      v37 = *(v137 + 1);
      (v37)(v33, v31);
      v138 = v37;
      (v37)(v23, v31);
      v38 = v145;
      v39 = v134 + 2;
      v40 = v159 + v146 * (v134 + 2);
      while (1)
      {
        v41 = v39;
        if (++v144 >= v38)
        {
          break;
        }

        v5 = v158;
        v42 = v153;
        v43 = v140;
        v159 = v39;
        (v140)(v158, v40, v153);
        v23 = v154;
        v43(v154, v30, v42);
        v44 = v155;
        sub_1000E8EA4();
        v45 = v156;
        sub_1000E8EA4();
        LOBYTE(v148) = sub_1000E8574() & 1;
        LODWORD(v148) = v148;
        v46 = v45;
        v47 = v157;
        v48 = v139;
        (v139)(v46, v157);
        v48(v44, v47);
        v49 = v138;
        (v138)(v23, v42);
        (v49)(v5, v42);
        v41 = v159;
        v38 = v145;
        v40 += v146;
        v30 += v146;
        v39 = v159 + 1;
        if ((v141 & 1) != v148)
        {
          goto LABEL_9;
        }
      }

      v144 = v38;
LABEL_9:
      if (v141)
      {
        v25 = v144;
        v24 = v134;
        v12 = v153;
        if (v144 < v134)
        {
          goto LABEL_133;
        }

        if (v134 >= v144)
        {
          v5 = v143;
          v13 = v137;
          v23 = v132;
          goto LABEL_32;
        }

        if (v38 >= v41)
        {
          v50 = v41;
        }

        else
        {
          v50 = v38;
        }

        v51 = v146 * (v50 - 1);
        v52 = v146 * v50;
        v53 = v134;
        v54 = v134 * v146;
        v5 = v143;
        v13 = v137;
        do
        {
          if (v53 != --v25)
          {
            v55 = v5;
            v56 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            v159 = *v149;
            (v159)(v136, &v56[v54], v12);
            v57 = v54 < v51 || &v56[v54] >= &v56[v52];
            if (v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v159)(&v56[v51], v136, v12);
            v5 = v55;
            v13 = v137;
          }

          ++v53;
          v51 -= v146;
          v52 -= v146;
          v54 += v146;
        }

        while (v53 < v25);
        v23 = v132;
      }

      else
      {
        v5 = v143;
        v13 = v137;
        v23 = v132;
        v12 = v153;
      }

      v25 = v144;
      v24 = v134;
    }

LABEL_32:
    v58 = v142[1];
    if (v25 < v58)
    {
      if (__OFSUB__(v25, v24))
      {
        goto LABEL_132;
      }

      if (v25 - v24 < v131)
      {
        break;
      }
    }

LABEL_48:
    if (v25 < v24)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100030CF0();
      v23 = v121;
    }

    v78 = *(v23 + 16);
    v79 = v78 + 1;
    if (v78 >= *(v23 + 24) >> 1)
    {
      sub_100030CF0();
      v23 = v122;
    }

    *(v23 + 16) = v79;
    v80 = (v23 + 32);
    v81 = (v23 + 32 + 16 * v78);
    *v81 = v24;
    v81[1] = v25;
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_141;
    }

    v144 = v25;
    if (v78)
    {
      v148 = (v23 + 32);
      while (1)
      {
        v82 = v79 - 1;
        v83 = &v80[16 * v79 - 16];
        v84 = (v23 + 16 * v79);
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v85 = *(v23 + 32);
          v86 = *(v23 + 40);
          v95 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          v88 = v95;
LABEL_69:
          if (v88)
          {
            goto LABEL_118;
          }

          v100 = *v84;
          v99 = v84[1];
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_121;
          }

          v104 = *(v83 + 1);
          v105 = v104 - *v83;
          if (__OFSUB__(v104, *v83))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v102, v105))
          {
            goto LABEL_126;
          }

          if (v102 + v105 >= v87)
          {
            if (v87 < v105)
            {
              v82 = v79 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v79 < 2)
        {
          goto LABEL_120;
        }

        v107 = *v84;
        v106 = v84[1];
        v95 = __OFSUB__(v106, v107);
        v102 = v106 - v107;
        v103 = v95;
LABEL_84:
        if (v103)
        {
          goto LABEL_123;
        }

        v109 = *v83;
        v108 = *(v83 + 1);
        v95 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v95)
        {
          goto LABEL_125;
        }

        if (v110 < v102)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v82 - 1 >= v79)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_135;
        }

        if (!*v142)
        {
          goto LABEL_138;
        }

        v114 = &v80[16 * v82 - 16];
        v115 = *v114;
        v116 = v82;
        v117 = &v80[16 * v82];
        v118 = *(v117 + 1);
        sub_10000CAB8(&(*v142)[*(v13 + 9) * *v114], &(*v142)[*(v13 + 9) * *v117], &(*v142)[*(v13 + 9) * v118], v159);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v118 < v115)
        {
          goto LABEL_113;
        }

        v143 = 0;
        v5 = v13;
        v119 = v23;
        v23 = *(v23 + 16);
        if (v116 > v23)
        {
          goto LABEL_114;
        }

        *v114 = v115;
        *(v114 + 1) = v118;
        if (v116 >= v23)
        {
          goto LABEL_115;
        }

        v79 = v23 - 1;
        memmove(v117, v117 + 16, 16 * (v23 - 1 - v116));
        *(v119 + 16) = v23 - 1;
        v120 = v23 > 2;
        v23 = v119;
        v13 = v5;
        v5 = v143;
        v80 = v148;
        if (!v120)
        {
          goto LABEL_98;
        }
      }

      v89 = &v80[16 * v79];
      v90 = *(v89 - 8);
      v91 = *(v89 - 7);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_116;
      }

      v94 = *(v89 - 6);
      v93 = *(v89 - 5);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_117;
      }

      v96 = v84[1];
      v97 = v96 - *v84;
      if (__OFSUB__(v96, *v84))
      {
        goto LABEL_119;
      }

      v95 = __OFADD__(v87, v97);
      v98 = v87 + v97;
      if (v95)
      {
        goto LABEL_122;
      }

      if (v98 >= v92)
      {
        v112 = *v83;
        v111 = *(v83 + 1);
        v95 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v95)
        {
          goto LABEL_130;
        }

        if (v87 < v113)
        {
          v82 = v79 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v21 = v142[1];
    v22 = v144;
    if (v144 >= v21)
    {
      goto LABEL_101;
    }
  }

  v59 = (v24 + v131);
  if (__OFADD__(v24, v131))
  {
    goto LABEL_134;
  }

  if (v59 >= v58)
  {
    v59 = v142[1];
  }

  if (v59 < v24)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v25 == v59)
  {
    goto LABEL_48;
  }

  v132 = v23;
  v143 = v5;
  v60 = *v142;
  v61 = *(v13 + 9);
  v148 = *(v13 + 2);
  v62 = &v60[v61 * (v25 - 1)];
  v145 = -v61;
  v134 = v24;
  v63 = (v24 - v25);
  v146 = v60;
  v135 = v61;
  v64 = &v60[v25 * v61];
  v138 = v59;
LABEL_41:
  v144 = v25;
  v139 = v64;
  v140 = v63;
  v141 = v62;
  v65 = v62;
  while (1)
  {
    v66 = v158;
    v67 = v148;
    (v148)(v158, v64, v12);
    v68 = v154;
    (v67)(v154, v65, v12);
    v69 = v155;
    sub_1000E8EA4();
    v70 = v156;
    sub_1000E8EA4();
    LODWORD(v159) = sub_1000E8574();
    v71 = *v151;
    v72 = v70;
    v73 = v157;
    (*v151)(v72, v157);
    v74 = v69;
    v12 = v153;
    v71(v74, v73);
    v75 = *v150;
    (*v150)(v68, v12);
    v75(v66, v12);
    if ((v159 & 1) == 0)
    {
LABEL_46:
      v25 = v144 + 1;
      v62 = &v141[v135];
      v63 = v140 - 1;
      v64 = &v139[v135];
      if ((v144 + 1) == v138)
      {
        v25 = v138;
        v5 = v143;
        v13 = v137;
        v23 = v132;
        v24 = v134;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v146)
    {
      break;
    }

    v76 = *v149;
    v77 = v147;
    (*v149)(v147, v64, v12);
    swift_arrayInitWithTakeFrontToBack();
    v76(v65, v77, v12);
    v65 += v145;
    v64 += v145;
    v57 = __CFADD__(v63++, 1);
    if (v57)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_10000CAB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_1000E8604();
  v7 = *(v79 - 8);
  v8 = __chkstk_darwin(v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v67 - v10;
  v83 = sub_1000E8EC4();
  v11 = __chkstk_darwin(v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_1000316B4(a2, v19 / v17, v84);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      sub_1000E8EA4();
      v57 = v78;
      sub_1000E8EA4();
      LODWORD(v72) = sub_1000E8574();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_1000316B4(a1, (a2 - a1) / v17, v84);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      sub_1000E8EA4();
      v30 = v78;
      sub_1000E8EA4();
      v31 = sub_1000E8574();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_10000D138(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_10000D138(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000E8EC4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10000D218(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A10(&qword_10012F128, &qword_1000EEF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_10000D330()
{
  result = qword_10012F058;
  if (!qword_10012F058)
  {
    sub_1000E8604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F058);
  }

  return result;
}

uint64_t sub_10000D3A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A10(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D4DC(uint64_t a1)
{

  return sub_1000E8CB4();
}

uint64_t sub_10000D538(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000D3A8(v3, a2, a3);
}

uint64_t sub_10000D5A4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_1000E91E4();
  __chkstk_darwin(v2 - 8);
  sub_100006A10();
  v45 = v4 - v3;
  v5 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v11);
  sub_100006A10();
  v14 = v13 - v12;
  type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  v16 = __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v21);
  sub_100006A10();
  v24 = (v23 - v22);
  v25 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v25 + 28), v24, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = *v24;
    v33 = sub_1000EB404();
    if (!v34)
    {
      v35 = v46;
      v36 = 2;
      return sub_1000028A0(v35, v36, 2, v33);
    }

    goto LABEL_9;
  }

  sub_10000DA94(v24, v20, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v20, v18, type metadata accessor for WeatherDataViewModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000DC24();
    sub_10000DBCC(v18, v26);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v27 = sub_1000E9F64();
    sub_100008CB8(v27, qword_100145C10);
    v28 = sub_1000E9F44();
    v29 = sub_1000EC194();
    if (os_log_type_enabled(v28, v29))
    {
      *swift_slowAlloc() = 0;
      sub_10000DC5C(&_mh_execute_header, v30, v31, "Expected aggregate weather but got instant or sunrise/sunset");
    }

    sub_10000DC24();
    sub_10000DBCC(v20, v32);
    v33 = sub_1000EB404();
LABEL_9:
    v35 = v46;
    v36 = 1;
    return sub_1000028A0(v35, v36, 2, v33);
  }

  sub_10000DA94(v18, v14, type metadata accessor for AggregateWeatherViewModel);
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v37 = sub_1000E9F64();
  sub_100008CB8(v37, qword_100145C10);
  v38 = sub_1000E9F44();
  v39 = sub_1000EC1B4();
  if (os_log_type_enabled(v38, v39))
  {
    *swift_slowAlloc() = 0;
    sub_10000DC5C(&_mh_execute_header, v40, v41, "Making Moon complication view model entry from aggregate weather");
  }

  sub_10004493C();
  sub_10000DAF4(v10, v8);
  sub_1000E99B4();
  sub_1000E91D4();
  v42 = v46;
  sub_1000EB3F4();
  sub_10000DB64(v10);
  sub_10000DBCC(v14, type metadata accessor for AggregateWeatherViewModel);
  sub_10000DC24();
  sub_10000DBCC(v20, v43);
  v33 = sub_1000EB404();
  v35 = v42;
  v36 = 0;
  return sub_1000028A0(v35, v36, 2, v33);
}

uint64_t sub_10000DA34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000DA94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10000DAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DB64(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DBCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000DC3C(uint64_t a1)
{

  return swift_once();
}

void sub_10000DC5C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000DC90(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000DD4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for UVIndexContentView(uint64_t a1)
{
  result = qword_10012F1A0;
  if (!qword_10012F1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DE48(uint64_t a1)
{
  sub_10000DECC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ForecastEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000DECC(uint64_t a1)
{
  if (!qword_10012F1B0)
  {
    sub_1000EBC44();
    v1 = sub_1000E9F94();
    if (!v2)
    {
      atomic_store(v1, &qword_10012F1B0);
    }
  }
}

uint64_t sub_10000DF40@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10000E138@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v40 = sub_100002A10(&qword_10012F1E0, &qword_1000EEFC8);
  __chkstk_darwin(v40);
  v41 = &v34 - v1;
  v48 = sub_100002A10(&qword_10012F1E8, &qword_1000EEFD0);
  __chkstk_darwin(v48);
  v44 = &v34 - v2;
  v45 = sub_1000EB6F4();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100002A10(&qword_10012F1F0, &qword_1000EEFD8);
  __chkstk_darwin(v47);
  v5 = &v34 - v4;
  v38 = sub_100002A10(&qword_10012F1F8, &qword_1000EEFE0);
  __chkstk_darwin(v38);
  v7 = &v34 - v6;
  v46 = sub_100002A10(&qword_10012F200, &qword_1000EEFE8);
  __chkstk_darwin(v46);
  v9 = &v34 - v8;
  v10 = sub_1000EBAB4();
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EB8D4();
  v39 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EBC44();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v35 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v34 - v20;
  sub_10000DF40(&v34 - v20);
  v36 = v17;
  v37 = v16;
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    type metadata accessor for UVIndexContentView(0);
    sub_1000CACF0(v12);
    sub_1000EB8C4();
    v23 = v39;
    (*(v39 + 16))(v7, v15, v13);
    swift_storeEnumTagMultiPayload();
    sub_10000EAC0(&qword_10012F220, &type metadata accessor for UltravioletCircularContentView, &protocol conformance descriptor for UltravioletCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v9, v5, &qword_10012F200, &qword_1000EEFE8);
    swift_storeEnumTagMultiPayload();
    sub_10000EA04();
    sub_10000EB08();
    sub_1000EA4A4();
    sub_100008E48(v9, &qword_10012F200, &qword_1000EEFE8);
    return (*(v23 + 8))(v15, v13);
  }

  if (v22 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1000EC3E4(61);
    v52._countAndFlagsBits = 0xD000000000000021;
    v52._object = 0x80000001000FB1A0;
    sub_1000EBF44(v52);
    v30 = v35;
    sub_10000DF40(v35);
    sub_10000EAC0(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v31 = v37;
    v53._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v53);

    (*(v36 + 8))(v30, v31);
    v54._object = 0x80000001000FB180;
    v54._countAndFlagsBits = 0xD00000000000001ALL;
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
    sub_1000EC3E4(62);
    v55._countAndFlagsBits = 0xD000000000000022;
    v55._object = 0x80000001000FB150;
    sub_1000EBF44(v55);
    v32 = v35;
    sub_10000DF40(v35);
    sub_10000EAC0(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v33 = v37;
    v56._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v56);

    (*(v36 + 8))(v32, v33);
    v57._object = 0x80000001000FB180;
    v57._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000EBF44(v57);
    goto LABEL_9;
  }

  v25 = v5;
  type metadata accessor for UVIndexContentView(0);
  sub_1000CACF0(v12);
  v26 = v42;
  sub_1000EB6E4();
  v27 = v43;
  v28 = v45;
  (*(v43 + 16))(v41, v26, v45);
  swift_storeEnumTagMultiPayload();
  sub_10000EAC0(&qword_10012F210, &type metadata accessor for UltravioletInlineContentView, &protocol conformance descriptor for UltravioletInlineContentView);
  v29 = v44;
  sub_1000EA4A4();
  sub_10000EBC4(v29, v25, &qword_10012F1E8, &qword_1000EEFD0);
  swift_storeEnumTagMultiPayload();
  sub_10000EA04();
  sub_10000EB08();
  sub_1000EA4A4();
  sub_100008E48(v29, &qword_10012F1E8, &qword_1000EEFD0);
  return (*(v27 + 8))(v26, v28);
}

unint64_t sub_10000EA04()
{
  result = qword_10012F218;
  if (!qword_10012F218)
  {
    sub_100002ABC(&qword_10012F200, &qword_1000EEFE8);
    sub_10000EAC0(&qword_10012F220, &type metadata accessor for UltravioletCircularContentView, &protocol conformance descriptor for UltravioletCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F218);
  }

  return result;
}

uint64_t sub_10000EAC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000EB08()
{
  result = qword_10012F228;
  if (!qword_10012F228)
  {
    sub_100002ABC(&qword_10012F1E8, &qword_1000EEFD0);
    sub_10000EAC0(&qword_10012F210, &type metadata accessor for UltravioletInlineContentView, &protocol conformance descriptor for UltravioletInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F228);
  }

  return result;
}

uint64_t sub_10000EBC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100002A10(a3, a4);
  sub_1000069E4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10000EC28()
{
  result = qword_10012F238;
  if (!qword_10012F238)
  {
    sub_100002ABC(&qword_10012F240, &qword_1000EEFF8);
    sub_10000ECAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F238);
  }

  return result;
}

unint64_t sub_10000ECAC()
{
  result = qword_10012F248;
  if (!qword_10012F248)
  {
    sub_100002ABC(&qword_10012F250, &qword_1000EF000);
    sub_10000EA04();
    sub_10000EB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F248);
  }

  return result;
}

uint64_t sub_10000ED38(uint64_t a1, uint64_t a2)
{
  v24 = sub_1000EA994();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000E8364();
  sub_1000090D4();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25[-1] - v16;
  v25[0] = a1;
  v25[1] = a2;
  sub_1000E8344();
  sub_1000E8354();
  v18 = *(v11 + 8);
  v18(v17, v9);
  sub_100005898();
  v19 = sub_1000EC394();
  v21 = v20;
  v18(v15, v9);

  v25[0] = 0;
  sub_10000F044();

  v22 = sub_10000F088(v19, v21);
  [v22 scanHexLongLong:v25];

  sub_1000EBF24();

  (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v24);
  return sub_1000EA9F4();
}

unint64_t sub_10000F044()
{
  result = qword_10012F258;
  if (!qword_10012F258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012F258);
  }

  return result;
}

id sub_10000F088(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1000EBE64();

  v4 = [v2 initWithString:v3];

  return v4;
}

unint64_t sub_10000F10C(uint64_t a1)
{
  v1 = sub_10000F1B4(a1);
  v2 = sub_10000F948();
  v3 = sub_10000FA10(v1);
  if (v1[2] >= 2uLL)
  {
    v4 = *(v1 + 32) << 56;
  }

  else
  {
    v4 = 0;
  }

  sub_10000FAF4(v1);

  return v4 | v2 | (v3 << 48) | 0x10000000000;
}

void *sub_10000F1B4(uint64_t a1)
{
  sub_1000E88D4();
  sub_1000090D4();
  v76 = v3;
  v77 = v2;
  __chkstk_darwin(v2);
  sub_100006A10();
  v75 = v5 - v4;
  v72 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000090D4();
  v80 = v6;
  v8 = __chkstk_darwin(v7);
  v79 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v74 = &v70 - v11;
  __chkstk_darwin(v10);
  v78 = &v70 - v12;
  v13 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  __chkstk_darwin(v13 - 8);
  v15 = &v70 - v14;
  sub_1000E8D34();
  sub_1000090D4();
  v70 = v17;
  v71 = v16;
  __chkstk_darwin(v16);
  sub_100006A10();
  v20 = v19 - v18;
  v21 = sub_1000E90D4();
  sub_1000090D4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100006A10();
  v27 = v26 - v25;
  v28 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  __chkstk_darwin(v28 - 8);
  v30 = &v70 - v29;
  v31 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  sub_1000090D4();
  v33 = v32;
  __chkstk_darwin(v34);
  v36 = &v70 - v35;
  v81 = a1;
  sub_1000E8CB4();
  if (sub_100005B30(v30, 1, v31) == 1)
  {
    sub_10000D3A8(v30, &qword_10012F108, &qword_1000EEF10);
LABEL_8:
    v39 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  (*(v33 + 32))(v36, v30, v31);
  (*(v23 + 104))(v27, enum case for PrecipitationRelevancyWindow.default(_:), v21);
  v37 = sub_1000E91C4();
  (*(v23 + 8))(v27, v21);
  if ((v37 & 1) == 0)
  {
    (*(v33 + 8))(v36, v31);
    goto LABEL_8;
  }

  sub_100030EA4();
  v39 = v38;
  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    sub_10000FB24(v40);
    sub_100030EA4();
    v39 = v67;
  }

  (*(v33 + 8))(v36, v31);
  v39[2] = v41 + 1;
  *(v39 + v41 + 32) = 0;
LABEL_9:
  sub_1000E8C74();
  v42 = v71;
  if (sub_100005B30(v15, 1, v71) == 1)
  {
    v73 = v39;
    v20 = v72;
    sub_10000D3A8(v15, &qword_10012F260, &unk_1000EF030);
  }

  else
  {
    (*(v70 + 32))(v20, v15, v42);
    if (sub_1000E8CE4())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100030EA4();
        v39 = v68;
      }

      v44 = v39[2];
      v43 = v39[3];
      if (v44 >= v43 >> 1)
      {
        sub_10000FB24(v43);
        sub_100030EA4();
        v39 = v69;
      }

      v45 = sub_10000FB38();
      v46(v45);
      v39[2] = v44 + 1;
      v73 = v39;
      *(v39 + v44 + 32) = 2;
    }

    else
    {
      v73 = v39;
      v47 = sub_10000FB38();
      v48(v47);
    }
  }

  v49 = v75;
  sub_1000E8C64();
  v50 = v74;
  sub_1000E8854();
  v51 = v77;
  v76 = *(v76 + 8);
  (v76)(v49, v77);
  v52 = objc_opt_self();
  v53 = [v52 fahrenheit];
  v54 = v78;
  sub_1000E8334();

  v55 = *(v80 + 8);
  v55(v50, v20);
  sub_1000E8C64();
  sub_1000E8864();
  (v76)(v49, v51);
  v56 = [v52 fahrenheit];
  v57 = v79;
  sub_1000E8334();

  v55(v50, v20);
  sub_1000E82E4();
  v59 = v58;
  sub_1000E82E4();
  if (vabdd_f64(v59, v60) <= 5.0)
  {
    v55(v57, v20);
    v55(v54, v20);
    return v73;
  }

  else
  {
    v61 = v73;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100030EA4();
      v61 = v65;
    }

    v63 = v61[2];
    v62 = v61[3];
    if (v63 >= v62 >> 1)
    {
      sub_10000FB24(v62);
      sub_100030EA4();
      v61 = v66;
    }

    v55(v57, v20);
    v55(v54, v20);
    v61[2] = v63 + 1;
    *(v61 + v63 + 32) = 4;
  }

  return v61;
}

uint64_t sub_10000F948()
{
  v0 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  sub_1000E8C74();
  v3 = sub_1000E8D34();
  v4 = sub_100005B30(v2, 1, v3);
  sub_10000D3A8(v2, &qword_10012F260, &unk_1000EF030);
  if (v4 == 1)
  {
    return 67305728;
  }

  else
  {
    return 67240192;
  }
}

uint64_t sub_10000FA10(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    while (1)
    {
      v8 = *v6++;
      result = v8;
      if (v8 > 1)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    sub_1000E8C74();
    v9 = sub_1000E8D34();
    v10 = sub_100005B30(v4, 1, v9);
    sub_10000D3A8(v4, &qword_10012F260, &unk_1000EF030);
    if (v10 == 1)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_10000FAF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    return *(a1 + 33);
  }

  if (!v1)
  {
    return 1;
  }

  if (*(a1 + 32) <= 1u)
  {
    return 1;
  }

  return *(a1 + 32);
}

uint64_t sub_10000FB4C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v3);
  sub_100006A10();
  v6 = v5 - v4;
  type metadata accessor for ForecastEntry(0);
  sub_100013C6C();
  sub_100012B50(v1 + v7, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100012AF4(v6, a1);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for WeatherDataViewModel(0);
  return sub_1000028A0(a1, v8, 1, v9);
}

uint64_t sub_10000FC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001000FB200 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697461636F4C6F6ELL && a2 == 0xEE00617461446E6FLL;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6568746165576F6ELL && a2 == 0xED00006174614472)
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

uint64_t sub_10000FD68(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0x697461636F4C6F6ELL;
  }

  return 0x6568746165576F6ELL;
}

uint64_t sub_10000FE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000FC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000FE54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000FD54();
  *a1 = result;
  return result;
}

uint64_t sub_10000FE7C(uint64_t a1)
{
  v2 = sub_100012C04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FEB8(uint64_t a1)
{
  v2 = sub_100012C04();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10000FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100013DC0();
  v59 = v25;
  v27 = v26;
  sub_100002A10(&qword_10012F460, &qword_1000EF230);
  sub_1000090D4();
  v57 = v29;
  v58 = v28;
  sub_100009204();
  __chkstk_darwin(v30);
  sub_10000D58C();
  v56 = v31;
  sub_100002A10(&qword_10012F468, &qword_1000EF238);
  sub_1000090D4();
  v54 = v33;
  v55 = v32;
  sub_100009204();
  __chkstk_darwin(v34);
  v36 = &v52 - v35;
  v37 = sub_100002A10(&qword_10012F470, &qword_1000EF240);
  sub_1000090D4();
  v53 = v38;
  sub_100009204();
  __chkstk_darwin(v39);
  v41 = &v52 - v40;
  v42 = sub_100002A10(&qword_10012F478, &qword_1000EF248);
  sub_1000090D4();
  v44 = v43;
  sub_100009204();
  __chkstk_darwin(v45);
  v47 = &v52 - v46;
  sub_100008DA8(v27, v27[3]);
  sub_100012C04();
  sub_1000EC6A4();
  v48 = (v44 + 8);
  if (v59)
  {
    if (v59 == 1)
    {
      sub_100012CAC();
      sub_100013D78();
      sub_1000EC534();
      (*(v54 + 8))(v36, v55);
    }

    else
    {
      sub_100012C58();
      sub_100013D78();
      sub_1000EC534();
      v49 = sub_100013DD8();
      v51(v49, v50);
    }
  }

  else
  {
    sub_100012D00();
    sub_100013D78();
    sub_1000EC534();
    (*(v53 + 8))(v41, v37);
  }

  (*v48)(v47, v42);
  sub_100013DA8();
}

void sub_100010270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100013DC0();
  v92 = v24;
  v26 = v25;
  v91 = sub_100002A10(&qword_10012F418, &qword_1000EF208);
  sub_1000090D4();
  v89 = v27;
  sub_100009204();
  __chkstk_darwin(v28);
  sub_100013D28(v29);
  v88 = sub_100002A10(&qword_10012F420, &qword_1000EF210);
  sub_1000090D4();
  v86 = v30;
  sub_100009204();
  __chkstk_darwin(v31);
  v33 = v83 - v32;
  v34 = sub_100002A10(&qword_10012F428, &qword_1000EF218);
  sub_1000090D4();
  v85 = v35;
  sub_100009204();
  __chkstk_darwin(v36);
  v38 = v83 - v37;
  v39 = sub_100002A10(&qword_10012F430, &unk_1000EF220);
  sub_1000090D4();
  v90 = v40;
  sub_100009204();
  __chkstk_darwin(v41);
  sub_100013D48();
  sub_100008DA8(v26, v26[3]);
  sub_100012C04();
  sub_100013D08();
  sub_1000EC694();
  if (v24)
  {
    goto LABEL_13;
  }

  v83[0] = v34;
  v83[1] = v38;
  v83[2] = v33;
  v84 = 0;
  v42 = v91;
  v92 = v26;
  v43 = sub_1000EC524();
  sub_1000814FC(v43, 0);
  v45 = v39;
  if (v46 != v44 >> 1)
  {
    sub_100013D90();
    if (v49 == v50)
    {
      __break(1u);
      return;
    }

    v51 = v39;
    v52 = *(v48 + v47);
    v53 = sub_1000814F8(v47 + 1);
    v55 = v54;
    v57 = v56;
    swift_unknownObjectRelease();
    v58 = v88;
    v59 = v89;
    if (v55 == v57 >> 1)
    {
      if (v52)
      {
        v85 = v53;
        v60 = v84;
        if (v52 == 1)
        {
          sub_100012CAC();
          sub_100013D38();
          sub_1000EC4A4();
          if (!v60)
          {
            swift_unknownObjectRelease();
            v61 = sub_100013DD8();
            v62(v61, v58);
            v63 = sub_100013D18();
            v64(v63);
LABEL_22:
            sub_100009068(v92);
            goto LABEL_14;
          }
        }

        else
        {
          LODWORD(v88) = v52;
          sub_100012C58();
          v74 = v87;
          sub_100013D38();
          sub_1000EC4A4();
          if (!v60)
          {
            swift_unknownObjectRelease();
            (*(v59 + 8))(v74, v42);
            v81 = sub_100013D18();
            v82(v81);
            goto LABEL_22;
          }
        }

        v75 = sub_100013D18();
        v76(v75);
      }

      else
      {
        sub_100012D00();
        sub_100013D38();
        v71 = v84;
        sub_1000EC4A4();
        if (!v71)
        {
          swift_unknownObjectRelease();
          v77 = sub_100013DD8();
          v78(v77, v83[0]);
          v79 = sub_100013D68();
          v80(v79, v51);
          goto LABEL_22;
        }

        v72 = sub_100013D68();
        v73(v72, v51);
      }

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v45 = v51;
  }

  v65 = sub_1000EC414();
  swift_allocError();
  v67 = v66;
  sub_100002A10(&qword_10012F440, &unk_1000F19E0);
  *v67 = &type metadata for ForecastEntry.Error;
  v68 = sub_1000EC4B4();
  sub_100013DE4(v68);
  (*(*(v65 - 8) + 104))(v67, enum case for DecodingError.typeMismatch(_:), v65);
  swift_willThrow();
  swift_unknownObjectRelease();
  v69 = sub_100013D68();
  v70(v69, v45);
LABEL_12:
  v26 = v92;
LABEL_13:
  sub_100009068(v26);
LABEL_14:
  sub_100013DA8();
}

uint64_t sub_1000107D4@<X0>(_BYTE *a1@<X8>)
{
  result = static WeatherLocation.supportsSecureCoding.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100010800(uint64_t a1)
{
  v2 = sub_100012D00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001083C(uint64_t a1)
{
  v2 = sub_100012D00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000FF08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000108A4(uint64_t a1)
{
  v2 = sub_100012CAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000108E0(uint64_t a1)
{
  v2 = sub_100012CAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001091C(uint64_t a1)
{
  v2 = sub_100012C58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010958(uint64_t a1)
{
  v2 = sub_100012C58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000109DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

Swift::Int sub_100010AE0(char a1)
{
  sub_1000EC664();
  sub_1000EC674(a1 & 1);
  return sub_1000EC684();
}

uint64_t sub_100010B28(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_100010B84(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

Swift::Int sub_100010BF4()
{
  sub_1000EC664();
  sub_1000EC674(0);
  return sub_1000EC684();
}

void sub_100010C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100013DC0();
  v62 = v24;
  v63 = v25;
  v27 = v26;
  sub_100002A10(&qword_10012F4C0, &qword_1000EF268);
  sub_1000090D4();
  v60 = v29;
  v61 = v28;
  sub_100009204();
  __chkstk_darwin(v30);
  sub_10000D58C();
  v59 = v31;
  v57 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v32);
  sub_100006A10();
  sub_100013D28(v33);
  sub_100002A10(&qword_10012F4C8, &qword_1000EF270);
  sub_1000090D4();
  v55[1] = v35;
  v56 = v34;
  sub_100009204();
  __chkstk_darwin(v36);
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v37);
  sub_100006A10();
  v40 = v39 - v38;
  v41 = sub_100002A10(&qword_10012F4D0, &qword_1000EF278);
  sub_1000090D4();
  v43 = v42;
  sub_100009204();
  __chkstk_darwin(v44);
  v46 = v55 - v45;
  sub_100008DA8(v27, v27[3]);
  sub_100012D54();
  sub_1000EC6A4();
  sub_100013C6C();
  sub_100012B50(v62, v40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v58;
    sub_100012AF4(v40, v58);
    sub_100012DA8();
    sub_1000EC534();
    sub_100013C9C();
    sub_1000129D4(v48, v49, &protocol conformance descriptor for WeatherDataViewModel);
    sub_1000EC594();
    v50 = sub_100013D58();
    v51(v50);
    sub_100012BAC(v47, type metadata accessor for WeatherDataViewModel);
  }

  else
  {
    sub_100012DFC();
    sub_1000EC534();
    sub_100012EA4();
    v52 = v56;
    sub_1000EC594();
    v53 = sub_100013DD8();
    v54(v53, v52);
  }

  (*(v43 + 8))(v46, v41);
  sub_100013DA8();
}

void sub_100010FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100013DC0();
  v98 = v25;
  v28 = v27;
  v93 = v29;
  v97 = sub_100002A10(&qword_10012F480, &qword_1000EF250);
  sub_1000090D4();
  v94 = v30;
  sub_100009204();
  __chkstk_darwin(v31);
  sub_10000D58C();
  v92 = v32;
  sub_100002A10(&qword_10012F488, &qword_1000EF258);
  sub_1000090D4();
  v89 = v34;
  v90 = v33;
  sub_100009204();
  __chkstk_darwin(v35);
  sub_10000D58C();
  v91 = v36;
  sub_100002A10(&qword_10012F490, &qword_1000EF260);
  sub_1000090D4();
  v95 = v38;
  v96 = v37;
  sub_100009204();
  __chkstk_darwin(v39);
  sub_100013D48();
  v40 = type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  v42 = __chkstk_darwin(v41);
  v44 = &v85 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v42);
  v47 = &v85 - v46;
  __chkstk_darwin(v45);
  v49 = &v85 - v48;
  sub_100008DA8(v28, v28[3]);
  sub_100012D54();
  sub_100013D08();
  sub_1000EC694();
  if (!v25)
  {
    v85 = v47;
    v86 = v49;
    v87 = v44;
    v88 = v40;
    v98 = v28;
    v51 = v96;
    v50 = v97;
    v52 = sub_1000EC524();
    sub_1000814FC(v52, 0);
    if (v54 != v53 >> 1)
    {
      sub_100013D90();
      if (v57 == v58)
      {
        __break(1u);
        return;
      }

      v99 = *(v56 + v55);
      sub_1000814F8(v55 + 1);
      v60 = v59;
      v62 = v61;
      swift_unknownObjectRelease();
      v63 = v94;
      if (v60 == v62 >> 1)
      {
        if (v99)
        {
          sub_100012DA8();
          v64 = v92;
          sub_100013D78();
          sub_1000EC4A4();
          type metadata accessor for WeatherDataViewModel(0);
          sub_100013C9C();
          sub_1000129D4(v65, v66, &protocol conformance descriptor for WeatherDataViewModel);
          v67 = v87;
          sub_1000EC514();
          v68 = v95;
          swift_unknownObjectRelease();
          (*(v63 + 8))(v64, v50);
          (*(v68 + 8))(v26, v51);
          swift_storeEnumTagMultiPayload();
          sub_100013C14();
          v77 = v86;
          sub_100012AF4(v67, v86);
          v78 = v93;
        }

        else
        {
          sub_100012DFC();
          sub_100013D78();
          sub_1000EC4A4();
          v78 = v93;
          sub_100012E50();
          sub_1000EC514();
          swift_unknownObjectRelease();
          v79 = sub_100013D58();
          v80(v79);
          v81 = sub_100013CE4();
          v82(v81);
          v83 = v85;
          *v85 = a13;
          swift_storeEnumTagMultiPayload();
          sub_100013C14();
          v84 = v83;
          v77 = v86;
          sub_100012AF4(v84, v86);
        }

        sub_100013C14();
        sub_100012AF4(v77, v78);
        v76 = v98;
        goto LABEL_10;
      }
    }

    v69 = v88;
    v70 = sub_1000EC414();
    swift_allocError();
    v72 = v71;
    sub_100002A10(&qword_10012F440, &unk_1000F19E0);
    *v72 = v69;
    v73 = sub_1000EC4B4();
    sub_100013DE4(v73);
    (*(*(v70 - 8) + 104))(v72, enum case for DecodingError.typeMismatch(_:), v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v74 = sub_100013CE4();
    v75(v74);
    v28 = v98;
  }

  v76 = v28;
LABEL_10:
  sub_100009068(v76);
  sub_100013DA8();
}

Swift::Int sub_100011604(uint64_t a1)
{
  v2 = *v1;
  sub_1000EC664();
  sub_1000EC674(v2);
  return sub_1000EC684();
}

uint64_t sub_100011650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000109DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100011678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100010AA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000116A0(uint64_t a1)
{
  v2 = sub_100012D54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000116DC(uint64_t a1)
{
  v2 = sub_100012D54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100011740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010B84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10001176C(uint64_t a1)
{
  v2 = sub_100012DA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000117A8(uint64_t a1)
{
  v2 = sub_100012DA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000117E4(uint64_t a1)
{
  sub_1000EC664();
  sub_1000EC674(0);
  return sub_1000EC684();
}

uint64_t sub_100011824(uint64_t a1)
{
  v2 = sub_100012DFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100011860(uint64_t a1)
{
  v2 = sub_100012DFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000118CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
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

Swift::Int sub_100011A30(unsigned __int8 a1)
{
  sub_1000EC664();
  sub_1000EC674(a1);
  return sub_1000EC684();
}

uint64_t sub_100011A78(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x636E6176656C6572;
      break;
    case 2:
      result = 0x747865746E6F63;
      break;
    case 3:
      result = 0x6C65646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100011B04(void *a1)
{
  v3 = sub_100002A10(&qword_10012F3F0, &qword_1000EF200);
  sub_1000090D4();
  v5 = v4;
  sub_100009204();
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  sub_100008DA8(a1, a1[3]);
  sub_100012980();
  sub_1000EC6A4();
  v18[15] = 0;
  sub_1000E8604();
  sub_100013C54();
  sub_1000129D4(v9, v10, &protocol conformance descriptor for Date);
  sub_100013C40();
  sub_1000EC594();
  if (!v1)
  {
    type metadata accessor for ForecastEntry(0);
    v18[14] = 1;
    sub_1000EBD64();
    sub_100013CCC();
    sub_1000129D4(v11, v12, &protocol conformance descriptor for TimelineEntryRelevance);
    sub_100013C40();
    sub_1000EC554();
    v18[13] = 2;
    type metadata accessor for WidgetContext(0);
    sub_100013CB4();
    sub_1000129D4(v13, v14, &unk_1000F3570);
    sub_100013C40();
    sub_1000EC594();
    v18[12] = 3;
    type metadata accessor for ForecastEntry.Model(0);
    sub_100013C84();
    sub_1000129D4(v15, v16, &unk_1000EF0A0);
    sub_100013C40();
    sub_1000EC594();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_100011D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100013DC0();
  v75 = v23;
  v26 = v25;
  v65 = v27;
  v67 = type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v28);
  sub_100006A10();
  v66 = v30 - v29;
  v71 = type metadata accessor for WidgetContext(0);
  sub_1000069E4();
  __chkstk_darwin(v31);
  sub_100006A10();
  v68 = v33 - v32;
  sub_100002A10(&qword_10012F268, &qword_1000EF070);
  sub_100009204();
  __chkstk_darwin(v34);
  v36 = &v64 - v35;
  v37 = sub_1000E8604();
  sub_1000090D4();
  v69 = v38;
  __chkstk_darwin(v39);
  sub_100006A10();
  sub_100013D28(v40);
  v74 = sub_100002A10(&qword_10012F3C0, &qword_1000EF1F8);
  sub_1000090D4();
  v72 = v41;
  sub_100009204();
  __chkstk_darwin(v42);
  sub_100013D48();
  v43 = type metadata accessor for ForecastEntry(0);
  sub_1000069E4();
  __chkstk_darwin(v44);
  sub_100006A10();
  v47 = v46 - v45;
  sub_100008DA8(v26, v26[3]);
  sub_100012980();
  v73 = v24;
  sub_100013D08();
  sub_1000EC694();
  if (v23)
  {
    sub_100009068(v26);
  }

  else
  {
    v75 = v47;
    v48 = v69;
    sub_100013C54();
    sub_1000129D4(v49, v50, &protocol conformance descriptor for Date);
    v51 = v70;
    sub_1000EC514();
    (*(v48 + 32))(v75, v51, v37);
    sub_1000EBD64();
    sub_100013CCC();
    sub_1000129D4(v52, v53, &protocol conformance descriptor for TimelineEntryRelevance);
    sub_1000EC4D4();
    sub_100012A84(v36, v75 + *(v43 + 20));
    sub_100013CB4();
    sub_1000129D4(v54, v55, &unk_1000F3598);
    v56 = v68;
    sub_1000EC514();
    sub_100012AF4(v56, v75 + *(v43 + 24));
    sub_100013C84();
    sub_1000129D4(v57, v58, &unk_1000EF0C8);
    v59 = v66;
    sub_1000EC514();
    v60 = sub_100013C2C();
    v61(v60);
    sub_100013C14();
    v62 = v75;
    sub_100012AF4(v59, v75 + v63);
    sub_100012B50(v62, v65);
    sub_100009068(v26);
    sub_100012BAC(v62, type metadata accessor for ForecastEntry);
  }

  sub_100013DA8();
}

uint64_t sub_1000122D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000118CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000122F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100011A28();
  *a1 = result;
  return result;
}

uint64_t sub_100012320(uint64_t a1)
{
  v2 = sub_100012980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001235C(uint64_t a1)
{
  v2 = sub_100012980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100012398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000E8604();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100012450(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012488(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012510(uint64_t a1)
{
  result = type metadata accessor for WeatherDataViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100012590(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100013D84();
  sub_1000E8604();
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_100002A10(&qword_10012F268, &qword_1000EF070);
    sub_100006A04();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for WidgetContext(0);
      sub_100006A04();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = type metadata accessor for ForecastEntry.Model(0);
        v12 = a3[7];
      }
    }

    v9 = v3 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

uint64_t sub_1000126C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100013D84();
  sub_1000E8604();
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_100002A10(&qword_10012F268, &qword_1000EF070);
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for WidgetContext(0);
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for ForecastEntry.Model(0);
        v14 = a4[7];
      }
    }

    v11 = v4 + v14;
  }

  return sub_1000028A0(v11, a2, a2, v10);
}

void sub_1000127EC(uint64_t a1)
{
  sub_1000E8604();
  if (v1 <= 0x3F)
  {
    sub_1000128A0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WidgetContext(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ForecastEntry.Model(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000128A0(uint64_t a1)
{
  if (!qword_10012F380)
  {
    sub_1000EBD64();
    v1 = sub_1000EC364();
    if (!v2)
    {
      atomic_store(v1, &qword_10012F380);
    }
  }
}

unint64_t sub_1000128FC()
{
  result = qword_10012F3B8;
  if (!qword_10012F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3B8);
  }

  return result;
}

unint64_t sub_100012980()
{
  result = qword_10012F3C8;
  if (!qword_10012F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3C8);
  }

  return result;
}

uint64_t sub_1000129D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012A1C(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013D84();
  v5(v4);
  sub_1000069E4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_100012B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013D84();
  v5(v4);
  sub_1000069E4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100012BAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100012C04()
{
  result = qword_10012F438;
  if (!qword_10012F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F438);
  }

  return result;
}

unint64_t sub_100012C58()
{
  result = qword_10012F448;
  if (!qword_10012F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F448);
  }

  return result;
}

unint64_t sub_100012CAC()
{
  result = qword_10012F450;
  if (!qword_10012F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F450);
  }

  return result;
}

unint64_t sub_100012D00()
{
  result = qword_10012F458;
  if (!qword_10012F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F458);
  }

  return result;
}

unint64_t sub_100012D54()
{
  result = qword_10012F498;
  if (!qword_10012F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F498);
  }

  return result;
}

unint64_t sub_100012DA8()
{
  result = qword_10012F4A0;
  if (!qword_10012F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4A0);
  }

  return result;
}

unint64_t sub_100012DFC()
{
  result = qword_10012F4B0;
  if (!qword_10012F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4B0);
  }

  return result;
}

unint64_t sub_100012E50()
{
  result = qword_10012F4B8;
  if (!qword_10012F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4B8);
  }

  return result;
}

unint64_t sub_100012EA4()
{
  result = qword_10012F4E0;
  if (!qword_10012F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForecastEntry.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ForecastEntry.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001304CLL);
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

uint64_t _s10CodingKeysOwet_0(unsigned int *a1, int a2)
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

_BYTE *sub_100013104(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000131A0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RainInlineContentViewModelFactory.ContentLength(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_100013268(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100013334);
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

_BYTE *storeEnumTagSinglePayload for ForecastEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100013468);
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

unint64_t sub_1000134A4()
{
  result = qword_10012F4E8;
  if (!qword_10012F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4E8);
  }

  return result;
}

unint64_t sub_1000134FC()
{
  result = qword_10012F4F0;
  if (!qword_10012F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4F0);
  }

  return result;
}

unint64_t sub_100013554()
{
  result = qword_10012F4F8;
  if (!qword_10012F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4F8);
  }

  return result;
}

unint64_t sub_1000135AC()
{
  result = qword_10012F500;
  if (!qword_10012F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F500);
  }

  return result;
}

unint64_t sub_100013604()
{
  result = qword_10012F508;
  if (!qword_10012F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F508);
  }

  return result;
}

unint64_t sub_10001365C()
{
  result = qword_10012F510;
  if (!qword_10012F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F510);
  }

  return result;
}

unint64_t sub_1000136B4()
{
  result = qword_10012F518;
  if (!qword_10012F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F518);
  }

  return result;
}

unint64_t sub_10001370C()
{
  result = qword_10012F520;
  if (!qword_10012F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F520);
  }

  return result;
}

unint64_t sub_100013764()
{
  result = qword_10012F528;
  if (!qword_10012F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F528);
  }

  return result;
}

unint64_t sub_1000137BC()
{
  result = qword_10012F530;
  if (!qword_10012F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F530);
  }

  return result;
}

unint64_t sub_100013814()
{
  result = qword_10012F538;
  if (!qword_10012F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F538);
  }

  return result;
}

unint64_t sub_10001386C()
{
  result = qword_10012F540;
  if (!qword_10012F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F540);
  }

  return result;
}

unint64_t sub_1000138C4()
{
  result = qword_10012F548;
  if (!qword_10012F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F548);
  }

  return result;
}

unint64_t sub_10001391C()
{
  result = qword_10012F550;
  if (!qword_10012F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F550);
  }

  return result;
}

unint64_t sub_100013974()
{
  result = qword_10012F558;
  if (!qword_10012F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F558);
  }

  return result;
}

unint64_t sub_1000139CC()
{
  result = qword_10012F560;
  if (!qword_10012F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F560);
  }

  return result;
}

unint64_t sub_100013A24()
{
  result = qword_10012F568;
  if (!qword_10012F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F568);
  }

  return result;
}

unint64_t sub_100013A7C()
{
  result = qword_10012F570;
  if (!qword_10012F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F570);
  }

  return result;
}

unint64_t sub_100013AD4()
{
  result = qword_10012F578;
  if (!qword_10012F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F578);
  }

  return result;
}

unint64_t sub_100013B2C()
{
  result = qword_10012F580;
  if (!qword_10012F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F580);
  }

  return result;
}

unint64_t sub_100013B84()
{
  result = qword_10012F588;
  if (!qword_10012F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F588);
  }

  return result;
}

uint64_t sub_100013DE4(uint64_t a1)
{

  return sub_1000EC404();
}

uint64_t sub_100013E18(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100013ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for AdaptiveConditionsContentView(uint64_t a1)
{
  result = qword_10012F5E8;
  if (!qword_10012F5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013FEC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000141E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v35 = sub_100002A10(&qword_10012F620, &qword_1000EFA90);
  __chkstk_darwin(v35);
  v36 = &v31 - v3;
  v41 = sub_100002A10(&qword_10012F628, &qword_1000EFA98);
  __chkstk_darwin(v41);
  v37 = &v31 - v4;
  v34 = type metadata accessor for AdaptiveConditionsInlineContentView(0);
  __chkstk_darwin(v34);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100002A10(&qword_10012F630, &qword_1000EFAA0);
  __chkstk_darwin(v40);
  v8 = &v31 - v7;
  v33 = sub_100002A10(&qword_10012F638, &qword_1000EFAA8);
  __chkstk_darwin(v33);
  v10 = &v31 - v9;
  v39 = sub_100002A10(&qword_10012F640, &unk_1000EFAB0);
  __chkstk_darwin(v39);
  v12 = &v31 - v11;
  v13 = type metadata accessor for AdaptiveConditionsRectangularContentView(0);
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EBC44();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v31 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v31 - v20;
  v38 = a1;
  sub_100013FEC(&v31 - v20);
  v32 = v17;
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1000EC3E4(63);
    v45._countAndFlagsBits = 0xD000000000000021;
    v45._object = 0x80000001000FB1A0;
    sub_1000EBF44(v45);
    v29 = v31;
    sub_100013FEC(v31);
    sub_100014ABC(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v46._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v46);

    (*(v32 + 8))(v29, v16);
    v47._object = 0x80000001000FB260;
    v47._countAndFlagsBits = 0xD00000000000001CLL;
    sub_1000EBF44(v47);
  }

  else
  {
    if (v22 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      type metadata accessor for AdaptiveConditionsContentView(0);
      sub_10008F850(v15);
      v23 = *(v13 + 20);
      type metadata accessor for ConditionsEvaluationManager();
      *&v15[v23] = swift_allocObject();
      sub_100014BC0(v15, v10, type metadata accessor for AdaptiveConditionsRectangularContentView);
      swift_storeEnumTagMultiPayload();
      sub_100014ABC(&qword_10012F658, type metadata accessor for AdaptiveConditionsRectangularContentView, &unk_1000F3F2C);
      sub_1000EA4A4();
      sub_10000EBC4(v12, v8, &qword_10012F640, &unk_1000EFAB0);
      swift_storeEnumTagMultiPayload();
      sub_100014A00();
      sub_100014B04();
      sub_1000EA4A4();
      sub_100008E48(v12, &qword_10012F640, &unk_1000EFAB0);
      v24 = v15;
      v25 = type metadata accessor for AdaptiveConditionsRectangularContentView;
      return sub_100014C20(v24, v25);
    }

    if (v22 == enum case for WidgetFamily.accessoryInline(_:))
    {
      type metadata accessor for AdaptiveConditionsContentView(0);
      sub_10008F850(v6);
      v26 = *(v34 + 20);
      type metadata accessor for ConditionsEvaluationManager();
      *&v6[v26] = swift_allocObject();
      sub_100014BC0(v6, v36, type metadata accessor for AdaptiveConditionsInlineContentView);
      swift_storeEnumTagMultiPayload();
      sub_100014ABC(&qword_10012F648, type metadata accessor for AdaptiveConditionsInlineContentView, &unk_1000F7804);
      v27 = v37;
      sub_1000EA4A4();
      sub_10000EBC4(v27, v8, &qword_10012F628, &qword_1000EFA98);
      swift_storeEnumTagMultiPayload();
      sub_100014A00();
      sub_100014B04();
      sub_1000EA4A4();
      sub_100008E48(v27, &qword_10012F628, &qword_1000EFA98);
      v24 = v6;
      v25 = type metadata accessor for AdaptiveConditionsInlineContentView;
      return sub_100014C20(v24, v25);
    }

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1000EC3E4(64);
    v48._countAndFlagsBits = 0xD000000000000022;
    v48._object = 0x80000001000FB150;
    sub_1000EBF44(v48);
    v30 = v31;
    sub_100013FEC(v31);
    sub_100014ABC(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v49._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v49);

    (*(v32 + 8))(v30, v16);
    v50._object = 0x80000001000FB260;
    v50._countAndFlagsBits = 0xD00000000000001CLL;
    sub_1000EBF44(v50);
  }

  result = sub_1000EC464();
  __break(1u);
  return result;
}

unint64_t sub_100014A00()
{
  result = qword_10012F650;
  if (!qword_10012F650)
  {
    sub_100002ABC(&qword_10012F640, &unk_1000EFAB0);
    sub_100014ABC(&qword_10012F658, type metadata accessor for AdaptiveConditionsRectangularContentView, &unk_1000F3F2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F650);
  }

  return result;
}

uint64_t sub_100014ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100014B04()
{
  result = qword_10012F660;
  if (!qword_10012F660)
  {
    sub_100002ABC(&qword_10012F628, &qword_1000EFA98);
    sub_100014ABC(&qword_10012F648, type metadata accessor for AdaptiveConditionsInlineContentView, &unk_1000F7804);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F660);
  }

  return result;
}

uint64_t sub_100014BC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100014C20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100014C7C()
{
  result = qword_10012F668;
  if (!qword_10012F668)
  {
    sub_100002ABC(&qword_10012F670, &qword_1000EFAC0);
    sub_100014D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F668);
  }

  return result;
}

unint64_t sub_100014D00()
{
  result = qword_10012F678;
  if (!qword_10012F678)
  {
    sub_100002ABC(&qword_10012F680, &qword_1000EFAC8);
    sub_100014A00();
    sub_100014B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F678);
  }

  return result;
}

uint64_t sub_100014D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v81 = a3;
  sub_100002A10(&qword_10012F688, &qword_1000EFB58);
  sub_1000090D4();
  v70 = v5;
  v71 = v6;
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v73 = sub_100002A10(&qword_10012F690, &qword_1000EFB60);
  sub_1000090D4();
  v75 = v10;
  sub_100009204();
  __chkstk_darwin(v11);
  v69 = &v68 - v12;
  sub_100002A10(&qword_10012F698, &qword_1000EFB68);
  sub_1000090D4();
  v77 = v13;
  v78 = v14;
  sub_100009204();
  __chkstk_darwin(v15);
  v72 = &v68 - v16;
  sub_100002A10(&qword_10012F6A0, &qword_1000EFB70);
  sub_1000090D4();
  v79 = v17;
  v80 = v18;
  sub_100009204();
  __chkstk_darwin(v19);
  v74 = &v68 - v20;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v21 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for WeatherIntent();
  v76 = v21;
  v86 = v21;

  sub_100002A10(&qword_10012F6A8, &qword_1000EFB78);
  v22 = type metadata accessor for DailyForecastContentView(255);
  v23 = sub_100002ABC(&qword_10012F6B0, &unk_1000EFB80);
  v24 = sub_100015A48(&qword_10012F6B8, type metadata accessor for DailyForecastContentView, &unk_1000F74E8);
  v25 = sub_100006988(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80, &protocol conformance descriptor for PartialRangeThrough<A>);
  v82 = v22;
  v83 = v23;
  v84 = v24;
  v85 = v25;
  sub_100015CE0(v25, &opaque type descriptor for <<opaque return type of View.dynamicTypeSize<A>(_:)>>);
  sub_100015A48(&qword_10012F6C8, type metadata accessor for WeatherTimelineProvider, &unk_1000FAAC8);
  sub_1000EBCC4();
  v26 = sub_1000EA354();
  v30 = sub_100015CA8(v26, v27, v28, v29);
  v32 = v31;
  v34 = v33;
  sub_100015C90();
  v37 = sub_100006988(v35, &qword_10012F688, &qword_1000EFB58, v36);
  v39 = v69;
  v38 = v70;
  sub_1000EA474();
  sub_1000058EC(v30, v32, v34 & 1);

  (*(v71 + 8))(v9, v38);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v40 = sub_1000EBC44();
  sub_1000090D4();
  v42 = v41;
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000EFAD0;
  (*(v42 + 104))(v44 + v43, enum case for WidgetFamily.systemSmall(_:), v40);
  v82 = v38;
  v83 = v37;
  sub_100015C78();
  v47 = sub_100015CE0(v45, v46);
  v49 = v72;
  v48 = v73;
  sub_1000EA454();

  v50 = v48;
  (*(v75 + 8))(v39, v48);
  v51 = sub_1000EA354();
  v55 = sub_100015CA8(v51, v52, v53, v54);
  v57 = v56;
  LOBYTE(v43) = v58;
  v82 = v50;
  v83 = v47;
  sub_100015C48();
  v61 = sub_100015CE0(v59, v60);
  v62 = v74;
  v63 = v77;
  sub_1000EA444();
  sub_1000058EC(v55, v57, v43 & 1);

  (*(v78 + 8))(v49, v63);
  v82 = v63;
  v83 = v61;
  sub_100015C60();
  sub_100015CE0(v64, v65);
  v66 = v79;
  sub_1000EA494();

  return (*(v80 + 8))(v62, v66);
}

uint64_t sub_10001541C(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  __chkstk_darwin(v2);
  v4 = v23 - v3;
  v5 = type metadata accessor for DailyForecastContentView(0);
  v6 = __chkstk_darwin(v5);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000159C8(a1, v8 + *(v6 + 36));
  *v8 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  swift_storeEnumTagMultiPayload();
  *(v8 + v5[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(v8 + v5[7]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *(v8 + v5[8]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v10 = v8 + v5[6];
  *v10 = KeyPath;
  v10[8] = 0;
  v11 = (v8 + v5[10]);
  type metadata accessor for CGRect(0);
  v12 = sub_1000EC014();
  *(v12 + 16) = 12;
  bzero((v12 + 32), 0x180uLL);
  v23[1] = v12;
  sub_100002A10(&unk_10012EE48, qword_1000EED10);
  sub_1000EAA84();
  v13 = v23[3];
  *v11 = v23[2];
  v11[1] = v13;
  v14 = v5[11];
  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;

  *(v8 + v14) = sub_100002750(v17, v19);
  v20 = enum case for DynamicTypeSize.xxLarge(_:);
  v21 = sub_1000E9FF4();
  (*(*(v21 - 8) + 104))(v4, v20, v21);
  sub_100015A48(&qword_10012F6F0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000EBE24();
  if (result)
  {
    sub_100015A48(&qword_10012F6B8, type metadata accessor for DailyForecastContentView, &unk_1000F74E8);
    sub_100006988(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_1000EA8B4();
    sub_100015A90(v4);
    return sub_100015AF8(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015800()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.DailyForecast(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_1000158F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100015930(uint64_t result, int a2, int a3)
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

uint64_t sub_100015998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100015800();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000159C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015A90(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015AF8(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015B54()
{
  v0 = sub_100002ABC(&qword_10012F6A0, &qword_1000EFB70);
  v1 = sub_100002ABC(&qword_10012F698, &qword_1000EFB68);
  v2 = sub_100002ABC(&qword_10012F690, &qword_1000EFB60);
  v3 = sub_100002ABC(&qword_10012F688, &qword_1000EFB58);
  sub_100015C90();
  sub_100006988(v4, &qword_10012F688, &qword_1000EFB58, v5);
  sub_100015C78();
  sub_100015CC8(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  sub_100015C48();
  sub_100015CC8(v14, v15, v16, v17, v18, v19, v20, v21, v2);
  sub_100015C60();
  v37 = sub_100015CC8(v22, v23, v24, v25, v26, v27, v28, v29, v1);
  return sub_100015CC8(v37, &opaque type descriptor for <<opaque return type of WidgetConfiguration.enableContentMarginsForFirstParty(_:)>>, v30, v31, v32, v33, v34, v35, v0);
}

uint64_t sub_100015CA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  return sub_1000EA7F4();
}

uint64_t sub_100015CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100015CE0(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EventType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x100015E4CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100015E98(uint64_t a1, int a2, int *a3)
{
  sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100006A04();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[6];
  }

  else
  {
    sub_1000E8604();
    sub_100006A04();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[8];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return sub_100019B04(*(a1 + a3[9] + 8));
      }

      sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
      v7 = a3[13];
    }
  }

  v10 = sub_100019AF8(v7);

  return sub_100005B30(v10, v11, v12);
}

void sub_100015FC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100006A04();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[6];
  }

  else
  {
    sub_1000E8604();
    sub_100006A04();
    if (*(v10 + 84) == a3)
    {
      v9 = a4[8];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return;
      }

      sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
      v9 = a4[13];
    }
  }

  v11 = sub_100019AF8(v9);

  sub_1000028A0(v11, v12, a2, v13);
}

void sub_100016104(uint64_t a1)
{
  sub_100016270(319, &qword_10012F768, &type metadata for AlertSeverity);
  if (v1 <= 0x3F)
  {
    sub_1000162BC(319, &qword_10012F770, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_1000E8604();
      if (v3 <= 0x3F)
      {
        sub_100016270(319, &qword_10012F778, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_10001652C(319, &qword_10012F780, &qword_10012F788, &qword_1000EFCC8);
          if (v5 <= 0x3F)
          {
            sub_1000162BC(319, &unk_10012F790, &type metadata accessor for PrecipitationShift);
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

void sub_100016270(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000EC364();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000162BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000EC364();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100016324(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100019B04(*(a1 + 8));
  }

  sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v5 = sub_100019AF8(*(a3 + 28));

  return sub_100005B30(v5, v6, v7);
}

uint64_t sub_1000163BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_100002A10(&qword_10012F048, &qword_1000EEF30);
    v6 = sub_100019AF8(*(a4 + 28));

    return sub_1000028A0(v6, v7, a2, v8);
  }

  return result;
}

void sub_100016464(uint64_t a1)
{
  sub_10001652C(319, &qword_10012F848, &unk_10012F850, &qword_1000EFCE8);
  if (v1 <= 0x3F)
  {
    sub_1000162BC(319, &qword_10012F770, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001652C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100002ABC(a3, a4);
    v5 = sub_1000EC364();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlertSeverity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
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

_BYTE *storeEnumTagSinglePayload for AlertSeverity(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000166D4);
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

unint64_t sub_10001670C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_10001671C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001670C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000167FC()
{
  result = qword_10012F888;
  if (!qword_10012F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F888);
  }

  return result;
}

unint64_t sub_100016850(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_100016860(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7665537472656C61 && a2 == 0xED00007974697265;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
          if (v9 || (sub_1000EC5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v10 || (sub_1000EC5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1000EC5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972;
                if (v12 || (sub_1000EC5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001000FB3A0 == a2;
                  if (v13 || (sub_1000EC5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000012 && 0x80000001000FB3C0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1000EC5D4();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_100016B9C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x7665537472656C61;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x65746144646E65;
      break;
    case 4:
      result = 0x6974617269707865;
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x63736544676E6F6CLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100016D08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1000E8F24();
  sub_1000090D4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100006A10();
  v10 = v9 - v8;
  v11 = sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
  sub_100009210(v11);
  sub_100009204();
  __chkstk_darwin(v12);
  v129 = &v118[-v13];
  v14 = sub_100002A10(&qword_10012F908, &unk_1000EFFE0);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v118[-v16];
  v18 = sub_1000E8604();
  sub_1000090D4();
  v132 = v19;
  __chkstk_darwin(v20);
  sub_100006A10();
  v131 = v22 - v21;
  v23 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v24 = sub_100009210(v23);
  __chkstk_darwin(v24);
  sub_1000091AC();
  v130 = v25 - v26;
  __chkstk_darwin(v27);
  v29 = &v118[-v28];
  v30 = sub_100002A10(&qword_10012F910, &qword_1000F19F0);
  sub_1000069E4();
  __chkstk_darwin(v31);
  sub_1000091AC();
  __chkstk_darwin(v32);
  v34 = a2;
  v36 = &v118[-v35];
  if (*a1 != *v34)
  {
    return 0;
  }

  v37 = a1[1];
  v38 = v34[1];
  if (v37 == 5)
  {
    if (v38 != 5)
    {
      return 0;
    }

LABEL_6:
    v122 = v33;
    v123 = v14;
    v120 = v17;
    v121 = v4;
    v125 = v10;
    v126 = v6;
    v39 = v34;
    v127 = type metadata accessor for EventViewModel(0);
    v40 = *(v127 + 24);
    v41 = *(v30 + 48);
    v124 = a1;
    sub_100019210(&a1[v40], v36, &qword_10012F048, &qword_1000EEF30);
    v128 = v39;
    sub_100019210(&v39[v40], &v36[v41], &qword_10012F048, &qword_1000EEF30);
    sub_1000199F0(v36);
    if (v42)
    {
      sub_1000199F0(&v36[v41]);
      if (v42)
      {
        sub_100008E48(v36, &qword_10012F048, &qword_1000EEF30);
LABEL_16:
        v52 = *(v127 + 28);
        v53 = *(v30 + 48);
        v54 = v124;
        v55 = v122;
        sub_100019210(&v124[v52], v122, &qword_10012F048, &qword_1000EEF30);
        sub_100019210(&v128[v52], v55 + v53, &qword_10012F048, &qword_1000EEF30);
        sub_1000199F0(v55);
        if (v42)
        {
          sub_1000199F0(v55 + v53);
          v57 = v125;
          v56 = v126;
          v58 = v123;
          if (v42)
          {
            sub_100008E48(v55, &qword_10012F048, &qword_1000EEF30);
            goto LABEL_29;
          }
        }

        else
        {
          v59 = v130;
          sub_100019210(v55, v130, &qword_10012F048, &qword_1000EEF30);
          sub_1000199F0(v55 + v53);
          v61 = v125;
          v56 = v126;
          v62 = v123;
          if (!v60)
          {
            v66 = v132;
            v67 = v55 + v53;
            v68 = v131;
            (*(v132 + 32))(v131, v67, v18);
            sub_1000199D8();
            sub_100018FE4(v69, v70, &protocol conformance descriptor for Date);
            v119 = sub_1000EBE24();
            v71 = v54;
            v72 = v62;
            v57 = v61;
            v73 = *(v66 + 8);
            v73(v68, v18);
            v58 = v72;
            v54 = v71;
            v73(v59, v18);
            sub_100008E48(v55, &qword_10012F048, &qword_1000EEF30);
            if ((v119 & 1) == 0)
            {
              return 0;
            }

LABEL_29:
            v75 = v127;
            v74 = v128;
            if ((sub_1000E85A4() & 1) == 0)
            {
              return 0;
            }

            v76 = v75[9];
            v77 = *&v54[v76];
            v78 = *&v54[v76 + 8];
            v79 = &v74[v76];
            v80 = v77 == *v79 && v78 == *(v79 + 1);
            v81 = v74;
            if (!v80)
            {
              v82 = sub_1000EC5D4();
              v81 = v128;
              if ((v82 & 1) == 0)
              {
                return 0;
              }
            }

            v83 = v75[10];
            v84 = *&v54[v83];
            v85 = *&v54[v83 + 8];
            v86 = &v81[v83];
            if (v84 != *v86 || v85 != *(v86 + 1))
            {
              v88 = sub_1000EC5D4();
              v81 = v128;
              if ((v88 & 1) == 0)
              {
                return 0;
              }
            }

            v89 = v75[11];
            v90 = &v54[v89];
            v91 = *&v54[v89 + 8];
            v92 = &v81[v89];
            v93 = *(v92 + 1);
            if (v91)
            {
              if (!v93)
              {
                return 0;
              }

              if (*v90 != *v92 || v91 != v93)
              {
                v95 = sub_1000EC5D4();
                v81 = v128;
                if ((v95 & 1) == 0)
                {
                  return 0;
                }
              }
            }

            else if (v93)
            {
              return 0;
            }

            v96 = v75[12];
            v97 = *&v81[v96];
            if (*&v54[v96])
            {
              if (!v97)
              {
                return 0;
              }

              sub_10004788C();
              v99 = v98;

              if ((v99 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v97)
            {
              return 0;
            }

            v100 = *(v58 + 48);
            v101 = v120;
            sub_100019ACC();
            sub_100019210(v102, v103, v104, v105);
            sub_100019ACC();
            sub_100019210(v106, v107, v108, v109);
            v110 = v121;
            if (sub_100005B30(v101, 1, v121) == 1)
            {
              sub_1000199F0(v101 + v100);
              if (!v42)
              {
                goto LABEL_61;
              }

              sub_100008E48(v101, &qword_10012F6F8, &qword_1000EFCB0);
            }

            else
            {
              v111 = v129;
              sub_100019210(v101, v129, &qword_10012F6F8, &qword_1000EFCB0);
              sub_1000199F0(v101 + v100);
              if (v42)
              {
                v112 = sub_100019B38();
                v113(v112);
LABEL_61:
                v43 = &qword_10012F908;
                v44 = &unk_1000EFFE0;
                v45 = v101;
                goto LABEL_25;
              }

              (*(v56 + 32))(v57, v101 + v100, v110);
              sub_100019A10();
              sub_100018FE4(v114, v115, &protocol conformance descriptor for PrecipitationShift);
              v116 = sub_1000EBE24();
              v117 = *(v56 + 8);
              v117(v57, v110);
              v117(v111, v110);
              sub_100008E48(v101, &qword_10012F6F8, &qword_1000EFCB0);
              if ((v116 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          v63 = sub_100019AC0();
          v64(v63);
        }

        v43 = &qword_10012F910;
        v44 = &qword_1000F19F0;
        v45 = v55;
LABEL_25:
        sub_100008E48(v45, v43, v44);
        return 0;
      }
    }

    else
    {
      sub_100019210(v36, v29, &qword_10012F048, &qword_1000EEF30);
      sub_1000199F0(&v36[v41]);
      if (!v42)
      {
        v47 = v131;
        v46 = v132;
        (*(v132 + 32))(v131, &v36[v41], v18);
        sub_1000199D8();
        sub_100018FE4(v48, v49, &protocol conformance descriptor for Date);
        v50 = sub_1000EBE24();
        v51 = *(v46 + 8);
        v51(v47, v18);
        v51(v29, v18);
        sub_100008E48(v36, &qword_10012F048, &qword_1000EEF30);
        if ((v50 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_16;
      }

      (*(v132 + 8))(v29, v18);
    }

    v43 = &qword_10012F910;
    v44 = &qword_1000F19F0;
    v45 = v36;
    goto LABEL_25;
  }

  if (v37 == v38)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1000175A8()
{
  v2 = sub_100002A10(&qword_10012F898, &qword_1000EFFD0);
  sub_1000090D4();
  v4 = v3;
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  sub_100019B78();
  v6 = sub_100018EE8();
  sub_100019B58(&type metadata for EventViewModel.CodingKeys, v7, v6);
  sub_100018F3C();
  sub_100019A80();
  sub_1000EC594();
  if (!v0)
  {
    sub_100018F90();
    sub_100019A80();
    sub_1000EC554();
    type metadata accessor for EventViewModel(0);
    sub_1000E8604();
    sub_1000199D8();
    sub_100018FE4(v8, v9, &protocol conformance descriptor for Date);
    sub_100019A28();
    sub_1000EC554();
    sub_100019A28();
    sub_1000EC554();
    sub_100019A28();
    sub_1000EC594();
    sub_100019A68(5);
    sub_1000EC564();
    sub_100019A68(6);
    sub_1000EC564();
    sub_100019A68(7);
    sub_1000EC544();
    sub_100002A10(&qword_10012F788, &qword_1000EFCC8);
    sub_1000190D4(&qword_10012F8B8, &qword_10012F8C0, &unk_1000EFDF0, &protocol conformance descriptor for <A> [A]);
    sub_100019ACC();
    sub_100019A80();
    sub_1000EC554();
    sub_1000E8F24();
    sub_100019A10();
    sub_100018FE4(v10, v11, &protocol conformance descriptor for PrecipitationShift);
    sub_100019ACC();
    sub_100019A80();
    sub_1000EC554();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1000178EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
  sub_100009210(v4);
  sub_100009204();
  __chkstk_darwin(v5);
  v56 = &v53 - v6;
  sub_1000E8604();
  sub_1000090D4();
  v59 = v8;
  v60 = v7;
  __chkstk_darwin(v7);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v13 = sub_100009210(v12);
  __chkstk_darwin(v13);
  sub_1000091AC();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v58 = sub_100002A10(&qword_10012F8D0, &qword_1000EFFD8);
  sub_1000090D4();
  v21 = v20;
  sub_100009204();
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  v63 = type metadata accessor for EventViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v25);
  sub_100006A10();
  v61 = a1;
  v62 = (v27 - v26);
  v29 = a1[3];
  v28 = a1[4];
  sub_100019B78();
  sub_100018EE8();
  v57 = v24;
  sub_1000EC694();
  if (!v2)
  {
    v30 = v19;
    v54 = v11;
    v65 = 0;
    sub_10001902C();
    sub_1000EC514();
    v33 = v62;
    *v62 = v64;
    v65 = 1;
    sub_100019080();
    sub_1000EC4D4();
    v33[1] = v64;
    LOBYTE(v64) = 2;
    sub_1000199D8();
    sub_100018FE4(v34, v35, &protocol conformance descriptor for Date);
    v36 = v60;
    sub_1000EC4D4();
    sub_100019170(v30, &v33[v63[6]], &qword_10012F048, &qword_1000EEF30);
    LOBYTE(v64) = 3;
    sub_1000EC4D4();
    sub_100019170(v16, &v33[v63[7]], &qword_10012F048, &qword_1000EEF30);
    LOBYTE(v64) = 4;
    v37 = v54;
    sub_1000EC514();
    v38 = v63;
    (*(v59 + 32))(&v33[v63[8]], v37, v36);
    LOBYTE(v64) = 5;
    v39 = sub_1000EC4E4();
    v40 = &v33[v38[9]];
    *v40 = v39;
    v40[1] = v41;
    sub_100019B24(6);
    v42 = sub_1000EC4E4();
    v43 = &v33[v38[10]];
    *v43 = v42;
    v43[1] = v44;
    sub_100019B24(7);
    v45 = sub_1000EC4C4();
    v46 = &v33[v38[11]];
    *v46 = v45;
    v46[1] = v47;
    sub_100002A10(&qword_10012F788, &qword_1000EFCC8);
    v65 = 8;
    sub_1000190D4(&qword_10012F8E8, &qword_10012F8F0, &unk_1000EFE18, &protocol conformance descriptor for <A> [A]);
    sub_1000EC4D4();
    *&v33[v38[12]] = v64;
    sub_1000E8F24();
    LOBYTE(v64) = 9;
    sub_100019A10();
    sub_100018FE4(v48, v49, &protocol conformance descriptor for PrecipitationShift);
    sub_1000EC4D4();
    (*(v21 + 8))(v57, v58);
    v50 = v62;
    sub_100019170(v56, &v62[v63[13]], &qword_10012F6F8, &qword_1000EFCB0);
    sub_10001936C(v50, v55, type metadata accessor for EventViewModel);
    sub_100009068(v61);
    v51 = sub_100019AC0();
    sub_1000193C8(v51, v52);
    return;
  }

  sub_100019A44();
  v31 = v62;
  v32 = v63;
  sub_100009068(v61);
  if (!v29)
  {
    if (!v21)
    {
      goto LABEL_10;
    }

LABEL_5:

    if (v28)
    {
      goto LABEL_11;
    }

LABEL_6:
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  (*(v59 + 8))(&v31[v32[8]], v60);
  if (v21)
  {
    goto LABEL_5;
  }

LABEL_10:
  if (!v28)
  {
    goto LABEL_6;
  }

LABEL_11:

  if (a1)
  {
LABEL_7:
  }
}