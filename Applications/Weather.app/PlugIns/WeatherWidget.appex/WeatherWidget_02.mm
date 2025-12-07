uint64_t sub_1000324C4()
{

  return swift_arrayInitWithCopy();
}

BOOL sub_1000325C8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100032678(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_1000317D0(v2 + a2, v4, v3 + a2, a1);
}

void sub_10003270C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_10003273C()
{
}

uint64_t sub_100032758()
{

  return swift_allocObject();
}

void sub_1000327D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1000327F4()
{

  return swift_slowAlloc();
}

uint64_t sub_10003280C@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v68 = type metadata accessor for InstantWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v2);
  sub_100006A10();
  v69 = v4 - v3;
  sub_1000EB834();
  sub_1000090D4();
  v76 = v6;
  v77 = v5;
  __chkstk_darwin(v5);
  sub_100006A10();
  v75 = v8 - v7;
  sub_1000E8C34();
  sub_1000090D4();
  v73 = v10;
  v74 = v9;
  v11 = __chkstk_darwin(v9);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = v67 - v14;
  sub_1000EAFC4();
  sub_1000090D4();
  v71 = v16;
  v72 = v15;
  __chkstk_darwin(v15);
  sub_100006A10();
  v19 = v18 - v17;
  type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v20);
  sub_100006A10();
  v23 = v22 - v21;
  type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  v25 = __chkstk_darwin(v24);
  v27 = v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v67 - v28;
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v30);
  sub_100006A10();
  v33 = (v32 - v31);
  v34 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v34 + 28), v33, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v51 = v78;
    if (*v33)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    v53 = v77;
    return sub_1000028A0(v51, v52, 2, v53);
  }

  sub_100032F34(v33, v29, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v29, v27, type metadata accessor for WeatherDataViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v54 = v13;
    sub_100032F34(v27, v23, type metadata accessor for AggregateWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v55 = sub_1000E9F64();
    sub_100008CB8(v55, qword_100145C10);
    v56 = sub_1000E9F44();
    v57 = sub_1000EC1B4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Making Location complication view model entry from aggregate weather", v58, 2u);
    }

    sub_1000EB664();
    v42 = v70;
    sub_1000EAF64();
    v59 = sub_1000EAF84();
    v68 = v60;
    v69 = v59;
    sub_1000E9A44();
    v61 = v73;
    v62 = v54;
    v63 = v74;
    (*(v73 + 16))(v62, v42, v74);
    v64 = v75;
    sub_1000EB824();
    (*(v61 + 8))(v42, v63);
    (*(v71 + 8))(v19, v72);
    sub_100032F94(v23, type metadata accessor for AggregateWeatherViewModel);
    sub_100032FEC();
    v48 = sub_100033014();
    v50 = v64;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100032F34(v27, v69, type metadata accessor for InstantWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v36 = v13;
    v37 = sub_1000E9F64();
    sub_100008CB8(v37, qword_100145C10);
    v38 = sub_1000E9F44();
    v39 = sub_1000EC1B4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Making Location complication view model entry from interpolated instant weather", v40, 2u);
    }

    v41 = v69;
    sub_1000EB664();
    v42 = v70;
    sub_1000EAF64();
    v43 = sub_1000EAF84();
    v67[1] = v44;
    v67[2] = v43;
    sub_1000E9A44();
    v46 = v73;
    v45 = v74;
    (*(v73 + 16))(v36, v42, v74);
    v47 = v75;
    sub_1000EB824();
    (*(v46 + 8))(v42, v45);
    (*(v71 + 8))(v19, v72);
    sub_100032F94(v41, type metadata accessor for InstantWeatherViewModel);
    sub_100032FEC();
    v48 = sub_100033014();
    v50 = v47;
LABEL_18:
    v65 = v77;
    v49(v48, v50, v77);
    v51 = v42;
    v52 = 0;
    v53 = v65;
    return sub_1000028A0(v51, v52, 2, v53);
  }

  sub_100032F94(v29, type metadata accessor for WeatherDataViewModel);
  sub_1000028A0(v78, 1, 2, v77);
  return sub_100032F94(v27, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_100032F34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100032F94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100032FEC()
{

  return sub_100032F94(v0, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_10003303C(uint64_t a1, uint64_t a2, int *a3)
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
      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      sub_100006A04();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[7];
      }

      else
      {
        sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        sub_100006A04();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[8];
        }

        else
        {
          type metadata accessor for ForecastEntry(0);
          sub_100006A04();
          if (*(v18 + 84) != a2)
          {
            return sub_100019B04(*(a1 + a3[10]));
          }

          v8 = v17;
          v12 = a3[9];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

void sub_100033220(uint64_t a1, uint64_t a2, int a3, int *a4)
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
          type metadata accessor for ForecastEntry(0);
          sub_100006A04();
          if (*(v20 + 84) != a3)
          {
            *(a1 + a4[10]) = (a2 - 1);
            return;
          }

          v10 = v19;
          v14 = a4[9];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_1000028A0(v11, a2, a2, v10);
}

void sub_100033418(uint64_t a1)
{
  sub_10003FF34(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10003FF34(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100005F48();
      if (v3 <= 0x3F)
      {
        sub_10003FF34(319, &unk_10012FEC0, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10003FF34(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ForecastEntry(319);
            if (v6 <= 0x3F)
            {
              sub_1000335DC(319);
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

void sub_1000335DC(uint64_t a1)
{
  if (!qword_1001305E8)
  {
    sub_100002ABC(&unk_10012EE48, qword_1000EED10);
    v1 = sub_1000EAAC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1001305E8);
    }
  }
}

uint64_t sub_10003365C@<X0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000404E8(a1, a2);
  sub_100002A10(&qword_100130AB8, &qword_1000F12F0);
  v4 = sub_1000404AC();
  sub_10003E6F8(v4, v2 + v5, v6);
  sub_100040498(v2 + v3[16]);
  sub_1000405A4(v7, v3[20]);
  sub_100040578();
  sub_100040498(v8);
  sub_1000405A4(v9, v3[28]);
  sub_100040498(v2 + v3[32]);
  return sub_1000405A4(v10, v3[36]);
}

uint64_t sub_1000336E8@<X0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000404E8(a1, a2);
  sub_100002A10(&qword_100130AB0, &qword_1000F12E8);
  v4 = sub_1000404AC();
  sub_10003E6F8(v4, v2 + v5, v6);
  sub_100040498(v2 + v3[16]);
  sub_1000405A4(v7, v3[20]);
  sub_100040578();
  sub_100040498(v8);
  return sub_1000405A4(v9, v3[28]);
}

uint64_t sub_10003375C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1000EB694();
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = sub_100002A10(&qword_100130988, &qword_1000F1078);
  v7 = a2 + v6[12];
  v9 = a1[1];
  v8 = a1[2];
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v7 = v10;
  *(v7 + 8) = v9;
  sub_100019210(v8, a2 + v6[16], &qword_100130978, &qword_1000F1068);
  sub_100019210(a1[3], a2 + v6[20], &qword_100130938, &qword_1000F1030);
  v11 = a2 + v6[24];
  v12 = a1[4];
  v13 = a1[5];
  v14 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v11 = v14;
  *(v11 + 8) = v12;
  v15 = v6[28];
  v16 = sub_1000EAEF4();
  (*(*(v16 - 8) + 16))(a2 + v15, v13, v16);
  v17 = a2 + v6[32];
  v19 = a1[6];
  v18 = a1[7];
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  *v17 = v20;
  *(v17 + 8) = v19;
  sub_100019210(v18, a2 + v6[36], &qword_100130938, &qword_1000F1030);
  v21 = a2 + v6[40];
  v23 = a1[8];
  v22 = a1[9];
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  *v21 = v24;
  *(v21 + 8) = v23;
  return sub_100019210(v22, a2 + v6[44], &qword_100130968, &qword_1000F1058);
}

uint64_t sub_100033914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003E6F8(*a1, a2, type metadata accessor for PrecipitationChartView);
  v4 = sub_100002A10(&qword_100130940, &qword_1000F1038);
  v5 = (a2 + v4[12]);
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6[3];
  v9 = *v6;
  v10 = v6[1];
  v5[2] = v6[2];
  v5[3] = v8;
  *v5 = v9;
  v5[1] = v10;
  v11 = a2 + v4[16];
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  LOBYTE(v7) = *(v7 + 24);
  *v11 = v12;
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(v11 + 24) = v7;
  v15 = (a2 + v4[20]);
  v17 = a1[3];
  v16 = a1[4];
  v18 = v17[3];
  v20 = *v17;
  v19 = v17[1];
  v15[2] = v17[2];
  v15[3] = v18;
  *v15 = v20;
  v15[1] = v19;
  sub_100019210(v16, a2 + v4[24], &qword_100130938, &qword_1000F1030);
  v21 = (a2 + v4[28]);
  v22 = a1[5];
  v23 = a1[6];
  v24 = v22[3];
  v25 = *v22;
  v26 = v22[1];
  v21[2] = v22[2];
  v21[3] = v24;
  *v21 = v25;
  v21[1] = v26;
  v27 = v4[32];
  v28 = sub_1000EAEF4();
  (*(*(v28 - 8) + 16))(a2 + v27, v23, v28);
}

uint64_t sub_100033A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003E6F8(*a1, a2, type metadata accessor for WeekdayColumn);
  v4 = sub_100002A10(&qword_100130AE0, &qword_1000F1300);
  sub_100019210(a1[1], a2 + v4[12], &qword_100130AE8, &qword_1000F1308);
  sub_100019210(a1[2], a2 + v4[16], &qword_100130AF0, &qword_1000F1310);
  sub_100019210(a1[3], a2 + v4[20], &qword_100130AF8, &qword_1000F1318);
  v5 = sub_100040578();
  v7 = v6[3];
  v8 = *v6;
  v9 = v6[1];
  v10[2] = v6[2];
  v10[3] = v7;
  *v10 = v8;
  v10[1] = v9;
  return sub_100019210(v5, a2 + v4[28], &qword_100130B00, &unk_1000F1320);
}

void sub_100033B60()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v2);
  sub_100040480();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v3);
  v4 = sub_100040508();
  sub_100040548(*(v4 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA3B4();
    sub_1000069E4();
    (*(v5 + 32))(v0, v1);
  }

  else
  {
    sub_1000EC1A4();
    v6 = sub_1000EA524();
    sub_100040528(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v8, v9, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v10 = sub_100040568();
    v11(v10);
  }

  sub_100006A20();
}

uint64_t sub_100033CDC()
{
  v1 = sub_1000EA2C4();
  sub_1000090D4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for WidgetContentView(0) + 24);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1000EC1A4();
    v9 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v8, 0);
    (*(v3 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void sub_100033E28()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v2);
  sub_100040480();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v3);
  v4 = sub_100040508();
  sub_100040548(*(v4 + 28));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA694();
    sub_1000069E4();
    (*(v5 + 32))(v0, v1);
  }

  else
  {
    sub_1000EC1A4();
    v6 = sub_1000EA524();
    sub_100040528(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v8, v9, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v10 = sub_100040568();
    v11(v10);
  }

  sub_100006A20();
}

void sub_100033FA4()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v2);
  sub_100040480();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v3);
  v4 = sub_100040508();
  sub_100040548(*(v4 + 32));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC34();
    sub_1000069E4();
    (*(v5 + 32))(v0, v1);
  }

  else
  {
    sub_1000EC1A4();
    v6 = sub_1000EA524();
    sub_100040528(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v8, v9, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v10 = sub_100040568();
    v11(v10);
  }

  sub_100006A20();
}

BOOL sub_100034120()
{
  v1 = sub_1000EBC44();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v8, v9, v10, v11, v12, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, vars0, vars8);
  (*(v2 + 104))(v5, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_10003E7B8(&qword_1001309E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  if (v17 != v16)
  {
    return 0;
  }

  v14 = v0 + *(type metadata accessor for WidgetContentView(0) + 36);
  return *(v14 + *(type metadata accessor for ForecastEntry(0) + 24) + 48) - 6 < 0xFFFFFFFD;
}

BOOL sub_10003431C()
{
  v1 = sub_1000EBC44();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v8, v9, v10, v11, v12, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, vars0, vars8);
  (*(v2 + 104))(v5, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_10003E7B8(&qword_1001309E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  if (v17 != v16)
  {
    return 0;
  }

  v14 = v0 + *(type metadata accessor for WidgetContentView(0) + 36);
  return *(v14 + *(type metadata accessor for ForecastEntry(0) + 24) + 48) - 3 < 3;
}

uint64_t sub_1000346D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v3 = sub_1000EA3B4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000EBC44();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + *(type metadata accessor for WidgetContentView(0) + 36);
  v15 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v14 + *(v15 + 28), v7, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v7, v10, type metadata accessor for WeatherDataViewModel);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v10, v16, 1, v17);
  if (sub_100005B30(v10, 1, v17) == 1)
  {
    sub_10003FBF8(v10, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v10, v13, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      sub_100033B60();
      sub_100033CDC();
      type metadata accessor for DailyViewAttributesFactory(0);
      swift_allocObject();
      sub_1000CFCC4();
      v27 = v14 + *(v15 + 24);
      v19 = v29;
      sub_1000CDE74(v13, v28, v27, 0, v29);

      sub_10003FBA4(v13, type metadata accessor for AggregateWeatherViewModel);
      v18 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v10, type metadata accessor for WeatherDataViewModel);
  }

  v18 = 1;
  v19 = v29;
LABEL_9:
  v20 = type metadata accessor for DailyViewAttributes(0);
  return sub_1000028A0(v19, v18, 1, v20);
}

uint64_t sub_100034A84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EA3B4();
  __chkstk_darwin(v3 - 8);
  v5 = var50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EBC44();
  __chkstk_darwin(v6 - 8);
  v8 = var50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v9);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v12 - 8);
  v14 = var50 - v13;
  v15 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v15 - 8);
  v17 = var50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WidgetContentView(0);
  v19 = v1 + *(v18 + 36);
  v20 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v19 + *(v20 + 28), v11, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v11, v14, type metadata accessor for WeatherDataViewModel);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v14, v21, 1, v22);
  if (sub_100005B30(v14, 1, v22) == 1)
  {
    sub_10003FBF8(v14, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v14, v17, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v26, v27, v28, v29, v30, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
      sub_100033B60();
      v31 = *(v1 + *(v18 + 44));
      v32 = sub_100033CDC();
      type metadata accessor for HourlyBannerViewAttributesFactory(0);
      swift_allocObject();
      sub_1000C60CC(v8, v5, v31, v32 & 1);
      sub_1000C5AFC(v17, v33);

      sub_10003FBA4(v17, type metadata accessor for AggregateWeatherViewModel);
      v23 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v14, type metadata accessor for WeatherDataViewModel);
  }

  v23 = 1;
LABEL_9:
  v24 = sub_1000EB464();
  return sub_1000028A0(a1, v23, 1, v24);
}

uint64_t sub_100034FA8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_1000EA3B4();
  __chkstk_darwin(v2 - 8);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EBC44();
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WidgetContentView(0);
  v17 = v1 + *(v16 + 36);
  v18 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v17 + *(v18 + 28), v9, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v9, v12, type metadata accessor for WeatherDataViewModel);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v12, v19, 1, v20);
  if (sub_100005B30(v12, 1, v20) == 1)
  {
    sub_10003FBF8(v12, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v12, v15, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v25, v26, v27, v28, v29, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      v30 = v34;
      sub_100033B60();
      v31 = *(v1 + *(v16 + 44));
      v32 = sub_100033CDC();
      type metadata accessor for CurrentObservationViewAttributesFactory(0);
      swift_allocObject();
      sub_10007469C(v6, v30, v31, v32 & 1);
      v33 = v17 + *(v18 + 24);
      v22 = v35;
      sub_100073028(v15, v33, &v15[*(v13 + 20)], *v33, *(v33 + 8), *(v33 + 50), *(v33 + 51), *(v33 + 52), v35, 0, 1, 0);

      sub_10003FBA4(v15, type metadata accessor for AggregateWeatherViewModel);
      v21 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v12, type metadata accessor for WeatherDataViewModel);
  }

  v21 = 1;
  v22 = v35;
LABEL_9:
  v23 = sub_1000EBA54();
  return sub_1000028A0(v22, v21, 1, v23);
}

uint64_t sub_100035394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v38) = a3;
  v39 = a1;
  v40 = a2;
  v41 = a4;
  v5 = sub_1000EA3B4();
  __chkstk_darwin(v5 - 8);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBC44();
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WidgetContentView(0);
  v20 = v4 + *(v19 + 36);
  v21 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v20 + *(v21 + 28), v12, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v12, v15, type metadata accessor for WeatherDataViewModel);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v15, v22, 1, v23);
  if (sub_100005B30(v15, 1, v23) == 1)
  {
    sub_10003FBF8(v15, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v15, v18, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v28, v29, v30, v31, v32, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      v33 = v37;
      sub_100033B60();
      v34 = *(v4 + *(v19 + 44));
      v35 = sub_100033CDC();
      type metadata accessor for CurrentObservationViewAttributesFactory(0);
      swift_allocObject();
      sub_10007469C(v9, v33, v34, v35 & 1);
      v25 = v41;
      sub_100073028(v18, v20 + *(v21 + 24), &v18[*(v16 + 20)], v39, v40, *(v20 + *(v21 + 24) + 50), *(v20 + *(v21 + 24) + 51), *(v20 + *(v21 + 24) + 52), v41, 1u, BYTE4(v38) & 1, 0);

      sub_10003FBA4(v18, type metadata accessor for AggregateWeatherViewModel);
      v24 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v15, type metadata accessor for WeatherDataViewModel);
  }

  v24 = 1;
  v25 = v41;
LABEL_9:
  v26 = sub_1000EBA54();
  return sub_1000028A0(v25, v24, 1, v26);
}

void *sub_100035794@<X0>(void *a1@<X8>)
{
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = __src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EA3B4();
  __chkstk_darwin(v7 - 8);
  v9 = __src - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EBC44();
  __chkstk_darwin(v10 - 8);
  v12 = __src - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000359BC(v1);
  sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v14, v15, v16, v17, v18, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
  sub_100033B60();
  v19 = *(v1 + *(type metadata accessor for WidgetContentView(0) + 44));
  v20 = sub_100033CDC();
  type metadata accessor for ErrorViewAttributesFactory(0);
  swift_allocObject();
  sub_10007653C(v12, v9, v19, v20 & 1);
  sub_100033E28();
  sub_10007628C(v13, __src);

  (*(v4 + 8))(v6, v3);
  return memcpy(a1, __src, 0x50uLL);
}

uint64_t sub_1000359BC(uint64_t a1)
{
  v2 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v6 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v5 + *(v6 + 28), v4, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v4;
  }

  sub_10003FBA4(v4, type metadata accessor for ForecastEntry.Model);
  return 3;
}

double sub_100035AAC@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView(0) + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_100040300(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

uint64_t sub_100035BB8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1000EB0D4();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002A10(&qword_100130810, &qword_1000F0F38);
  v4 = __chkstk_darwin(v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v24 = sub_100002A10(&qword_1001309E0, &unk_1000F10F8);
  __chkstk_darwin(v24);
  v10 = &v22 - v9;
  v11 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000EBA54();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v22 - v19;
  sub_100034FA8(v13);
  if (sub_100005B30(v13, 1, v14) == 1)
  {
    sub_10003FBF8(v13, &qword_100130838);
    sub_100035794(__src);
    memcpy(v10, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10003F15C();
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    sub_1000EB0C4();
    sub_1000EABD4();
    sub_1000EA0A4();
    (*(v22 + 32))(v6, v3, v23);
    memcpy(&v6[*(v25 + 36)], __src, 0x70uLL);
    sub_100019170(v6, v8, &qword_100130810, &qword_1000F0F38);
    sub_100019210(v8, v10, &qword_100130810, &qword_1000F0F38);
    swift_storeEnumTagMultiPayload();
    sub_10003F15C();
    sub_10003E85C();
    sub_1000EA4A4();
    sub_10003FBF8(v8, &qword_100130810);
    return (*(v15 + 8))(v20, v14);
  }
}

uint64_t sub_100036020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  __chkstk_darwin(v3);
  v5 = &v31 - v4;
  v6 = sub_100002A10(&qword_1001307E0, &unk_1000F0F20);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_100002A10(&qword_100130990, &qword_1000F1080);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v31 - v10;
  v11 = sub_100002A10(&qword_100130998, &qword_1000F1088);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_1000EBA54();
  v35 = *(v17 - 8);
  __chkstk_darwin(v17);
  v34 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034FA8(v16);
  v36 = v17;
  if (sub_100005B30(v16, 1, v17) == 1)
  {
    sub_10003FBF8(v16, &qword_100130838);
    sub_100035794(__src);
    memcpy(v13, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    v19 = sub_10004036C(&qword_1001307E8, &qword_1001307E0, &unk_1000F0F20, &protocol conformance descriptor for VStack<A>);
    v20 = sub_10004036C(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80, &protocol conformance descriptor for PartialRangeThrough<A>);
    v38 = v6;
    v39 = v3;
    v40 = v19;
    v41 = v20;
    swift_getOpaqueTypeConformance2();
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  else
  {
    v31 = v11;
    v22 = v34;
    (*(v35 + 32))(v34, v16, v36);
    *v8 = sub_1000EA3D4();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v23 = sub_100002A10(&qword_1001309A0, &qword_1000F1090);
    sub_10003663C(v22, a1, &v8[*(v23 + 44)]);
    v24 = enum case for DynamicTypeSize.xxLarge(_:);
    v25 = sub_1000E9FF4();
    (*(*(v25 - 8) + 104))(v5, v24, v25);
    sub_10003E7B8(&qword_10012F6F0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    result = sub_1000EBE24();
    if (result)
    {
      v26 = sub_10004036C(&qword_1001307E8, &qword_1001307E0, &unk_1000F0F20, &protocol conformance descriptor for VStack<A>);
      v27 = v9;
      v28 = sub_10004036C(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80, &protocol conformance descriptor for PartialRangeThrough<A>);
      v29 = v32;
      sub_1000EA8B4();
      sub_10003FBF8(v5, &qword_10012F6B0);
      sub_10003FBF8(v8, &qword_1001307E0);
      v30 = v33;
      (*(v33 + 16))(v13, v29, v27);
      swift_storeEnumTagMultiPayload();
      __src[0] = v6;
      __src[1] = v3;
      __src[2] = v26;
      __src[3] = v28;
      swift_getOpaqueTypeConformance2();
      sub_10003E85C();
      sub_1000EA4A4();
      (*(v30 + 8))(v29, v27);
      return (*(v35 + 8))(v34, v36);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v41 = a3;
  v4 = sub_1000EA4E4();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_1001309A8, &qword_1000F1098);
  __chkstk_darwin(v7);
  v9 = (&v34 - v8);
  v37 = sub_100002A10(&qword_1001309B0, &qword_1000F10A0);
  v35 = *(v37 - 8);
  v10 = v35;
  v11 = __chkstk_darwin(v37);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = sub_100002A10(&qword_1001309B8, &qword_1000F10A8);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = sub_1000EBA54();
  (*(*(v22 - 8) + 16))(v21, a1, v22);
  KeyPath = swift_getKeyPath();
  *&v21[*(type metadata accessor for SmallCurrentObservationView(0) + 20)] = KeyPath;
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  *&v21[*(v16 + 44)] = 256;
  *v9 = sub_1000EABC4();
  v9[1] = v24;
  v25 = sub_100002A10(&qword_1001309C0, &qword_1000F10E0);
  sub_100036AA4(v38, v9 + *(v25 + 44));
  sub_1000EA4D4();
  sub_10004036C(&qword_1001309C8, &qword_1001309A8, &qword_1000F1098, &protocol conformance descriptor for ZStack<A>);
  sub_1000EA914();
  (*(v39 + 8))(v6, v40);
  sub_10003FBF8(v9, &qword_1001309A8);
  sub_100019210(v21, v19, &qword_1001309B8, &qword_1000F10A8);
  v26 = *(v10 + 16);
  v28 = v36;
  v27 = v37;
  v26(v36, v14, v37);
  v29 = v41;
  sub_100019210(v19, v41, &qword_1001309B8, &qword_1000F10A8);
  v30 = sub_100002A10(&qword_1001309D0, &qword_1000F10E8);
  v31 = v29 + *(v30 + 48);
  *v31 = 0x3FF0000000000000;
  *(v31 + 8) = 0;
  v26((v29 + *(v30 + 64)), v28, v27);
  v32 = *(v35 + 8);
  v32(v14, v27);
  sub_10003FBF8(v21, &qword_1001309B8);
  v32(v28, v27);
  return sub_10003FBF8(v19, &qword_1001309B8);
}

uint64_t sub_100036AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_1000EBAF4();
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v22 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v21 + *(v22 + 28), v14, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v14, v17, type metadata accessor for WeatherDataViewModel);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v17, v23, 1, v24);
  if (sub_100005B30(v17, 1, v24) == 1)
  {
    v25 = &qword_10012F038;
    v26 = v17;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10003FBA4(v17, type metadata accessor for WeatherDataViewModel);
      goto LABEL_9;
    }

    sub_10003E754(v17, v20, type metadata accessor for AggregateWeatherViewModel);
    sub_100019210(&v20[*(v18 + 40)], v5, &qword_1001309D8, &qword_1000F10F0);
    if (sub_100005B30(v5, 1, v6) != 1)
    {
      v31 = v32;
      (*(v32 + 32))(v11, v5, v6);
      (*(v31 + 16))(v9, v11, v6);
      v28 = v33;
      sub_1000EBB04();
      (*(v31 + 8))(v11, v6);
      sub_10003FBA4(v20, type metadata accessor for AggregateWeatherViewModel);
      v27 = 0;
      goto LABEL_10;
    }

    sub_10003FBA4(v20, type metadata accessor for AggregateWeatherViewModel);
    v25 = &qword_1001309D8;
    v26 = v5;
  }

  sub_10003FBF8(v26, v25);
LABEL_9:
  v27 = 1;
  v28 = v33;
LABEL_10:
  v29 = sub_1000EBB14();
  return sub_1000028A0(v28, v27, 1, v29);
}

uint64_t sub_100036EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a1;
  v30 = a3;
  v28 = sub_100002A10(&qword_100130880, &qword_1000F0F98);
  __chkstk_darwin(v28);
  v5 = v26 - v4;
  v29 = sub_100002A10(&qword_100130888, &unk_1000F0FA0);
  __chkstk_darwin(v29);
  v7 = v26 - v6;
  v8 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - v9;
  v11 = sub_1000EB464();
  v26[0] = *(v11 - 8);
  __chkstk_darwin(v11);
  v27 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  __chkstk_darwin(v13 - 8);
  v15 = v26 - v14;
  v16 = sub_1000EBA54();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 + *(type metadata accessor for WidgetContentView(0) + 36);
  v21 = type metadata accessor for ForecastEntry(0);
  sub_100035394(*(v20 + *(v21 + 24)), *(v20 + *(v21 + 24) + 8), 1, v15);
  if (sub_100005B30(v15, 1, v16) == 1)
  {
    sub_10003FBF8(v15, &qword_100130838);
LABEL_5:
    sub_100035794(__src);
    memcpy(v5, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10004036C(&qword_100130898, &qword_100130888, &unk_1000F0FA0, &protocol conformance descriptor for VStack<A>);
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_1000E9FD4();
  sub_100034A84(v10);
  if (sub_100005B30(v10, 1, v11) == 1)
  {
    sub_10003FBF8(v10, &qword_100130890);
    (*(v17 + 8))(v19, v16);
    goto LABEL_5;
  }

  v23 = v26[0];
  v24 = v27;
  (*(v26[0] + 32))(v27, v10, v11);
  *v7 = sub_1000EA3C4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v25 = sub_100002A10(&qword_1001308A0, &qword_1000F0FB0);
  sub_100037400(v19, a2, v24, &v7[*(v25 + 44)]);
  sub_100019210(v7, v5, &qword_100130888, &unk_1000F0FA0);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_100130898, &qword_100130888, &unk_1000F0FA0, &protocol conformance descriptor for VStack<A>);
  sub_10003E85C();
  sub_1000EA4A4();
  sub_10003FBF8(v7, &qword_100130888);
  (*(v23 + 8))(v27, v11);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_100037400@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, char *a4@<X8>)
{
  v61 = a3;
  v62 = a4;
  v63 = a1;
  v5 = sub_1000EB464();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000EAEF4();
  v55 = *(v52 - 8);
  v7 = __chkstk_darwin(v52);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v51 - v9;
  v10 = sub_1000EA3B4();
  v54 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = sub_1000EBA54();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000EB694();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = __chkstk_darwin(v20);
  v64 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  (*(v17 + 16))(v19, v63, v16);
  v63 = v24;
  sub_1000EB684();
  v25 = *(type metadata accessor for WidgetContentView(0) + 44);
  v26 = *(a2 + v25);
  if (sub_1000027EC(*(a2 + v25)))
  {
    v66 = 0x4028000000000000;
    v67 = 0;
    sub_1000EA4A4();
    v27 = v69;
    v28 = v70;
    if (HIBYTE(v70))
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    if (v26 >= 2)
    {
      sub_100033B60();
      v30 = v54;
      (*(v54 + 104))(v13, enum case for ContentSizeCategory.large(_:), v10);
      sub_1000CD388();
      v32 = v31;
      v33 = *(v30 + 8);
      v33(v13, v10);
      v33(v15, v10);
      if ((v32 & 1) == 0)
      {
        v66 = 0x4030000000000000;
        v67 = 0;
        v68 = 1;
        sub_100002A10(&qword_1001308A8, &qword_1000F0FB8);
        sub_10003FB28();
        goto LABEL_11;
      }
    }

    v66 = 0x4018000000000000;
    v67 = 256;
    sub_1000EA4A4();
    v27 = v69;
    v28 = v70;
    if (HIBYTE(v70))
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }
  }

  v66 = v27;
  v67 = v29 | v28;
  v68 = 0;
  sub_100002A10(&qword_1001308A8, &qword_1000F0FB8);
  sub_10003FB28();
LABEL_11:
  sub_1000EA4A4();
  v54 = v69;
  v53 = v70;
  v34 = v71;
  (*(v59 + 16))(v58, v61, v60);
  v35 = v65;
  sub_1000EAEE4();
  v37 = v56;
  v36 = v57;
  v38 = *(v56 + 16);
  v39 = v64;
  v38(v64, v63, v57);
  LOBYTE(v69) = v34;
  v40 = v55;
  v61 = *(v55 + 16);
  v41 = v51;
  v42 = v35;
  v43 = v52;
  v61(v51, v42, v52);
  v44 = v62;
  v38(v62, v39, v36);
  v45 = sub_100002A10(&qword_1001308B8, &qword_1000F0FC0);
  v46 = &v44[*(v45 + 48)];
  v47 = v69;
  *v46 = v54;
  *(v46 + 4) = v53;
  v46[10] = v47;
  v61(&v44[*(v45 + 64)], v41, v43);
  v48 = *(v40 + 8);
  v48(v65, v43);
  v49 = *(v37 + 8);
  v49(v63, v36);
  v48(v41, v43);
  return (v49)(v64, v36);
}

uint64_t sub_100037A7C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v62 = sub_100002A10(&qword_100130820, &qword_1000F0F40);
  __chkstk_darwin(v62);
  v64 = &v51 - v2;
  v63 = sub_100002A10(&qword_100130748, &qword_1000F0EE0);
  __chkstk_darwin(v63);
  v56 = (&v51 - v3);
  v70 = sub_100002A10(&qword_100130738, &qword_1000F0ED8);
  __chkstk_darwin(v70);
  v65 = &v51 - v4;
  v68 = sub_100002A10(&qword_100130828, &qword_1000F0F48);
  __chkstk_darwin(v68);
  v69 = &v51 - v5;
  v58 = sub_100002A10(&qword_100130830, &qword_1000F0F50);
  __chkstk_darwin(v58);
  v59 = &v51 - v6;
  v60 = sub_1000EBBA4();
  v55 = *(v60 - 8);
  __chkstk_darwin(v60);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v66 = sub_1000EBA54();
  v61 = *(v66 - 8);
  v14 = __chkstk_darwin(v66);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v51 = &v51 - v17;
  __chkstk_darwin(v16);
  v52 = &v51 - v18;
  v67 = sub_100002A10(&qword_100130720, &qword_1000F0ED0);
  __chkstk_darwin(v67);
  v57 = &v51 - v19;
  v20 = sub_1000EA3B4();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v51 - v25;
  sub_100033B60();
  v27 = type metadata accessor for WidgetContentView(0);
  if (*(v1 + *(v27 + 44)))
  {
    v28 = &enum case for ContentSizeCategory.accessibilityMedium(_:);
  }

  else
  {
    v28 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  }

  (*(v21 + 104))(v24, *v28, v20);
  sub_1000CD72C();
  v30 = v29;
  v31 = *(v21 + 8);
  v31(v24, v20);
  v31(v26, v20);
  v32 = v1 + *(v27 + 36);
  v33 = v32 + *(type metadata accessor for ForecastEntry(0) + 24);
  v34 = *(v33 + 16);
  v35 = *(v33 + 24);
  if (v30)
  {
    sub_100035394(v34, v35, 0, v13);
    v36 = v66;
    if (sub_100005B30(v13, 1, v66) == 1)
    {
      sub_10003FBF8(v13, &qword_100130838);
      sub_100035794(__src);
      memcpy(v59, __src, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_10003E7B8(&qword_100130728, &type metadata accessor for AccessibilitySizeCurrentObservationBannerView, &protocol conformance descriptor for AccessibilitySizeCurrentObservationBannerView);
      sub_10003E85C();
      v37 = v57;
      sub_1000EA4A4();
    }

    else
    {
      v40 = v61;
      v41 = v52;
      (*(v61 + 32))(v52, v13, v36);
      (*(v40 + 16))(v51, v41, v36);
      v42 = v54;
      sub_1000EBB94();
      v43 = v55;
      v44 = v60;
      (*(v55 + 16))(v59, v42, v60);
      swift_storeEnumTagMultiPayload();
      sub_10003E7B8(&qword_100130728, &type metadata accessor for AccessibilitySizeCurrentObservationBannerView, &protocol conformance descriptor for AccessibilitySizeCurrentObservationBannerView);
      sub_10003E85C();
      v37 = v57;
      sub_1000EA4A4();
      (*(v43 + 8))(v42, v44);
      (*(v40 + 8))(v41, v36);
    }

    sub_100019210(v37, v69, &qword_100130720, &qword_1000F0ED0);
    swift_storeEnumTagMultiPayload();
    sub_10003E9F4();
    sub_10003EAB0();
    sub_1000EA4A4();
    return sub_10003FBF8(v37, &qword_100130720);
  }

  else
  {
    sub_100035394(v34, v35, 1, v11);
    v38 = v66;
    if (sub_100005B30(v11, 1, v66) == 1)
    {
      sub_10003FBF8(v11, &qword_100130838);
      sub_100035794(__src);
      memcpy(v64, __src, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_10004036C(&qword_100130740, &qword_100130748, &qword_1000F0EE0, &protocol conformance descriptor for VStack<A>);
      sub_10003E85C();
      v39 = v65;
      sub_1000EA4A4();
    }

    else
    {
      v46 = v61;
      v47 = v53;
      (*(v61 + 32))(v53, v11, v38);
      v48 = sub_1000EA3C4();
      v49 = v56;
      *v56 = v48;
      *(v49 + 8) = 0;
      *(v49 + 16) = 1;
      v50 = sub_100002A10(&qword_100130840, &qword_1000F0F60);
      sub_1000384E4(v47, v1, (v49 + *(v50 + 44)));
      sub_100019210(v49, v64, &qword_100130748, &qword_1000F0EE0);
      swift_storeEnumTagMultiPayload();
      sub_10004036C(&qword_100130740, &qword_100130748, &qword_1000F0EE0, &protocol conformance descriptor for VStack<A>);
      sub_10003E85C();
      v39 = v65;
      sub_1000EA4A4();
      sub_10003FBF8(v49, &qword_100130748);
      (*(v46 + 8))(v47, v38);
    }

    sub_100019210(v39, v69, &qword_100130738, &qword_1000F0ED8);
    swift_storeEnumTagMultiPayload();
    sub_10003E9F4();
    sub_10003EAB0();
    sub_1000EA4A4();
    return sub_10003FBF8(v39, &qword_100130738);
  }
}

uint64_t sub_1000384E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a2;
  v51 = a1;
  v57 = a3;
  v55 = sub_1000EA4E4();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_100130848, &qword_1000F0F68);
  __chkstk_darwin(v6);
  v8 = (&v48 - v7);
  v56 = sub_100002A10(&qword_100130850, &qword_1000F0F70);
  v52 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v48 - v11;
  v12 = sub_1000EBA54();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EB694();
  v49 = *(v16 - 8);
  v17 = v49;
  v50 = v16;
  v18 = __chkstk_darwin(v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  (*(v13 + 16))(v15, v51, v12);
  v23 = v22;
  v48 = v22;
  sub_1000EB684();
  *v8 = sub_1000EABC4();
  v8[1] = v24;
  v25 = *(sub_100002A10(&qword_100130858, &qword_1000F0F78) + 44);
  v26 = type metadata accessor for WidgetContentView(0);
  sub_10003E6F8(v54 + *(v26 + 36), v8 + v25, type metadata accessor for ForecastEntry);
  LOBYTE(v25) = sub_1000EA574();
  sub_1000E9F74();
  v27 = v8 + *(v6 + 36);
  *v27 = v25;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_1000EA4D4();
  sub_10003FA70();
  v32 = v58;
  sub_1000EA914();
  (*(v3 + 8))(v5, v55);
  sub_10003FBF8(v8, &qword_100130848);
  v33 = *(v17 + 16);
  v34 = v20;
  v35 = v20;
  v36 = v50;
  v33(v35, v23, v50);
  v59 = 0;
  v38 = v52;
  v37 = v53;
  v39 = *(v52 + 16);
  v40 = v56;
  v39(v53, v32, v56);
  v41 = v57;
  v33(v57, v34, v36);
  v42 = sub_100002A10(&qword_100130878, &qword_1000F0F88);
  v43 = &v41[*(v42 + 48)];
  v44 = v59;
  *v43 = 0x4018000000000000;
  v43[8] = v44;
  v39(&v41[*(v42 + 64)], v37, v40);
  v45 = *(v38 + 8);
  v45(v58, v40);
  v46 = *(v49 + 8);
  v46(v48, v36);
  v45(v37, v40);
  return (v46)(v34, v36);
}

uint64_t sub_1000389CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v40 = sub_100002A10(&qword_1001308C0, &qword_1000F0FC8);
  __chkstk_darwin(v40);
  v6 = &v35 - v5;
  v41 = sub_100002A10(&qword_1001308C8, &unk_1000F0FD0);
  __chkstk_darwin(v41);
  v38 = (&v35 - v7);
  v8 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for DailyViewAttributes(0);
  __chkstk_darwin(v11);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1000EBA54();
  v39 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  __chkstk_darwin(v19 - 8);
  v21 = &v35 - v20;
  v37 = a1;
  sub_1000E9FD4();
  sub_100034A84(v21);
  v22 = sub_1000EB464();
  if (sub_100005B30(v21, 1, v22) == 1)
  {
    v23 = &qword_100130890;
    v24 = v21;
LABEL_5:
    sub_10003FBF8(v24, v23);
    goto LABEL_6;
  }

  v25 = sub_1000EB454();
  (*(*(v22 - 8) + 8))(v21, v22);
  v26 = *(v25 + 16);

  sub_100034FA8(v15);
  if (sub_100005B30(v15, 1, v16) == 1)
  {
    v23 = &qword_100130838;
    v24 = v15;
    goto LABEL_5;
  }

  v28 = v39;
  (*(v39 + 32))(v18, v15, v16);
  sub_1000346D0(v26, v10);
  if (sub_100005B30(v10, 1, v11) != 1)
  {
    v29 = v10;
    v30 = v36;
    sub_10003E754(v29, v36, type metadata accessor for DailyViewAttributes);
    v31 = sub_1000EA2E4();
    v32 = v28;
    v33 = v38;
    *v38 = v31;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    v34 = sub_100002A10(&qword_1001308E0, &qword_1000F0FE0);
    sub_100038F78(v18, v30, a2, v33 + *(v34 + 44));
    sub_100019210(v33, v6, &qword_1001308C8, &unk_1000F0FD0);
    swift_storeEnumTagMultiPayload();
    sub_10004036C(&qword_1001308D8, &qword_1001308C8, &unk_1000F0FD0, &protocol conformance descriptor for HStack<A>);
    sub_10003E85C();
    sub_1000EA4A4();
    sub_10003FBF8(v33, &qword_1001308C8);
    sub_10003FBA4(v30, type metadata accessor for DailyViewAttributes);
    return (*(v32 + 8))(v18, v16);
  }

  sub_10003FBF8(v10, &qword_1001308D0);
  (*(v28 + 8))(v18, v16);
LABEL_6:
  sub_100035794(__src);
  memcpy(v6, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_1001308D8, &qword_1001308C8, &unk_1000F0FD0, &protocol conformance descriptor for HStack<A>);
  sub_10003E85C();
  return sub_1000EA4A4();
}

uint64_t sub_100038F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a3;
  v46 = a2;
  v49 = a4;
  v5 = sub_100002A10(&qword_1001308E8, &qword_1000F0FE8);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = sub_1000EBA54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_1001308F0, &qword_1000F0FF0);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  (*(v12 + 16))(v14, a1, v11);
  sub_1000EB0C4();
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v22 = &v21[*(v16 + 44)];
  v41 = v21;
  v23 = v53;
  *v22 = v52;
  *(v22 + 1) = v23;
  *(v22 + 2) = v54;
  sub_1000EABC4();
  sub_1000E9FC4();
  v45 = v55;
  v44 = v57;
  v43 = v59;
  v42 = v60;
  v65 = 1;
  v64 = v56;
  v63 = v58;
  sub_10003E6F8(v46, v10, type metadata accessor for DailyViewAttributes);
  v24 = (v47 + *(type metadata accessor for WidgetContentView(0) + 40));
  v26 = *v24;
  v25 = v24[1];
  v50 = v26;
  v51 = v25;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v27 = *v61;
  v28 = type metadata accessor for DailyView(0);
  v29 = *&v61[8];
  v30 = &v10[*(v28 + 20)];
  *v30 = v27;
  *(v30 + 8) = v29;
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v31 = &v10[*(v6 + 44)];
  v32 = *&v61[16];
  *v31 = *v61;
  *(v31 + 1) = v32;
  *(v31 + 2) = v62;
  v40 = v19;
  sub_100019210(v21, v19, &qword_1001308F0, &qword_1000F0FF0);
  LOBYTE(v11) = v65;
  v33 = v64;
  LOBYTE(v14) = v63;
  v34 = v48;
  sub_100019210(v10, v48, &qword_1001308E8, &qword_1000F0FE8);
  v35 = v49;
  sub_100019210(v19, v49, &qword_1001308F0, &qword_1000F0FF0);
  v36 = sub_100002A10(&qword_1001308F8, &qword_1000F0FF8);
  v37 = v35 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = v11;
  *(v37 + 16) = v45;
  *(v37 + 24) = v33;
  *(v37 + 32) = v44;
  *(v37 + 40) = v14;
  v38 = v42;
  *(v37 + 48) = v43;
  *(v37 + 56) = v38;
  sub_100019210(v34, v35 + *(v36 + 64), &qword_1001308E8, &qword_1000F0FE8);
  sub_10003FBF8(v10, &qword_1001308E8);
  sub_10003FBF8(v41, &qword_1001308F0);
  sub_10003FBF8(v34, &qword_1001308E8);
  return sub_10003FBF8(v40, &qword_1001308F0);
}

uint64_t sub_10003947C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = sub_100002A10(&qword_100130948, &qword_1000F1040);
  __chkstk_darwin(v65);
  v4 = &v53 - v3;
  v66 = sub_100002A10(&qword_100130950, &qword_1000F1048);
  __chkstk_darwin(v66);
  v57 = (&v53 - v5);
  v6 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  __chkstk_darwin(v6 - 8);
  v59 = &v53 - v7;
  v58 = type metadata accessor for DailyViewAttributes(0);
  __chkstk_darwin(v58);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = sub_1000EBA54();
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = __chkstk_darwin(v15);
  v60 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v61 = &v53 - v18;
  v19 = sub_1000EB464();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v64 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v53 - v26;
  sub_1000E9FD4();
  sub_100034A84(v27);
  if (sub_100005B30(v27, 1, v19) == 1)
  {
    v28 = v27;
LABEL_5:
    sub_10003FBF8(v28, &qword_100130890);
    goto LABEL_14;
  }

  v29 = sub_1000EB454();
  v30 = *(v20 + 8);
  v55 = v20 + 8;
  v54 = v30;
  v30(v27, v19);
  v31 = *(v29 + 16);

  sub_1000E9FD4();
  sub_100034A84(v25);
  if (sub_100005B30(v25, 1, v19) == 1)
  {
    v28 = v25;
    goto LABEL_5;
  }

  v53 = v31;
  v32 = v64;
  (*(v20 + 32))(v64, v25, v19);
  sub_100035394(0, 0xE000000000000000, 1, v14);
  v33 = v63;
  if (sub_100005B30(v14, 1, v63) == 1)
  {
    sub_10003FBF8(v14, &qword_100130838);
    v34 = v32;
  }

  else
  {
    v36 = v61;
    v35 = v62;
    v37 = v14;
    v38 = *(v62 + 32);
    v38(v61, v37, v33);
    v39 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
    v40 = type metadata accessor for ForecastEntry(0);
    sub_100035394(*(v39 + *(v40 + 24) + 16), *(v39 + *(v40 + 24) + 24), 1, v12);
    if (sub_100005B30(v12, 1, v33) == 1)
    {
      sub_10003FBF8(v12, &qword_100130838);
      (*(v35 + 8))(v36, v33);
    }

    else
    {
      v41 = v60;
      v38(v60, v12, v33);
      v42 = v59;
      sub_1000346D0(v53, v59);
      if (sub_100005B30(v42, 1, v58) != 1)
      {
        v45 = v56;
        sub_10003E754(v42, v56, type metadata accessor for DailyViewAttributes);
        v46 = sub_1000EA3C4();
        v47 = v57;
        *v57 = v46;
        *(v47 + 8) = 0;
        *(v47 + 16) = 0;
        v48 = sub_100002A10(&qword_100130960, &qword_1000F1050);
        v49 = v61;
        v50 = a1;
        v51 = v64;
        sub_100039CBC(v61, v50, v41, v64, v45, v47 + *(v48 + 44));
        sub_100019210(v47, v4, &qword_100130950, &qword_1000F1048);
        swift_storeEnumTagMultiPayload();
        sub_10004036C(&qword_100130958, &qword_100130950, &qword_1000F1048, &protocol conformance descriptor for VStack<A>);
        sub_10003E85C();
        sub_1000EA4A4();
        sub_10003FBF8(v47, &qword_100130950);
        sub_10003FBA4(v45, type metadata accessor for DailyViewAttributes);
        v52 = *(v62 + 8);
        v52(v41, v33);
        v52(v49, v33);
        return v54(v51, v19);
      }

      sub_10003FBF8(v42, &qword_1001308D0);
      v43 = *(v62 + 8);
      v43(v41, v33);
      v43(v61, v33);
    }

    v34 = v64;
  }

  v54(v34, v19);
LABEL_14:
  sub_100035794(__src);
  memcpy(v4, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_100130958, &qword_100130950, &qword_1000F1048, &protocol conformance descriptor for VStack<A>);
  sub_10003E85C();
  return sub_1000EA4A4();
}

uint64_t sub_100039CBC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a4;
  v105 = a5;
  v98 = a3;
  v117 = a1;
  v111 = a6;
  v106 = type metadata accessor for DailyView(0);
  __chkstk_darwin(v106);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100002A10(&qword_100130968, &qword_1000F1058);
  v9 = __chkstk_darwin(v108);
  v114 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v107 = &v94 - v12;
  __chkstk_darwin(v11);
  v110 = &v94 - v13;
  v14 = sub_1000EB464();
  v102 = *(v14 - 8);
  v103 = v14;
  __chkstk_darwin(v14);
  v101 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EAEF4();
  v112 = *(v16 - 8);
  v113 = v16;
  v17 = __chkstk_darwin(v16);
  v124 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v94 - v19;
  v100 = sub_100002A10(&qword_100130970, &qword_1000F1060);
  __chkstk_darwin(v100);
  v21 = &v94 - v20;
  v22 = type metadata accessor for DescriptionView(0);
  v23 = __chkstk_darwin(v22 - 8);
  v97 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v96 = &v94 - v25;
  v115 = sub_100002A10(&qword_100130938, &qword_1000F1030);
  v26 = __chkstk_darwin(v115);
  v121 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v122 = &v94 - v29;
  v30 = __chkstk_darwin(v28);
  v116 = &v94 - v31;
  __chkstk_darwin(v30);
  v126 = &v94 - v32;
  v33 = sub_100002A10(&qword_100130978, &qword_1000F1068);
  v34 = __chkstk_darwin(v33 - 8);
  v123 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v125 = &v94 - v36;
  v37 = sub_1000EBA54();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000EB694();
  v119 = *(v41 - 8);
  v120 = v41;
  v42 = __chkstk_darwin(v41);
  v118 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v94 - v44;
  v46 = *(v38 + 16);
  v46(v40, v117, v37);
  v117 = v45;
  sub_1000EB684();
  v99 = type metadata accessor for WidgetContentView(0);
  v47 = a2;
  v48 = a2 + *(v99 + 36);
  v49 = type metadata accessor for ForecastEntry(0);
  v50 = 1;
  if (*(v48 + *(v49 + 24) + 48) - 2 <= 3)
  {
    v94 = a2;
    v51 = v126;
    sub_1000EAB24();
    sub_1000EA9C4();
    v95 = v8;
    v52 = sub_1000EA9D4();

    v53 = sub_1000EA564();
    v54 = v51 + *(v115 + 36);
    *v54 = v52;
    *(v54 + 8) = v53;
    v55 = v96;
    v46(v96, v98, v37);
    v56 = v116;
    sub_100019210(v51, v116, &qword_100130938, &qword_1000F1030);
    v57 = v97;
    sub_10003E6F8(v55, v97, type metadata accessor for DescriptionView);
    sub_100019210(v56, v21, &qword_100130938, &qword_1000F1030);
    v58 = sub_100002A10(&qword_100130980, &qword_1000F1070);
    v59 = &v21[v58[12]];
    *v59 = 0x4018000000000000;
    v59[8] = 0;
    sub_10003E6F8(v57, &v21[v58[16]], type metadata accessor for DescriptionView);
    v60 = &v21[v58[20]];
    *v60 = 0x4018000000000000;
    v60[8] = 0;
    sub_10003FBA4(v55, type metadata accessor for DescriptionView);
    v61 = v51;
    v47 = v94;
    sub_10003FBF8(v61, &qword_100130938);
    sub_10003FBA4(v57, type metadata accessor for DescriptionView);
    v8 = v95;
    sub_10003FBF8(v56, &qword_100130938);
    sub_100019170(v21, v125, &qword_100130970, &qword_1000F1060);
    v50 = 0;
  }

  v62 = v125;
  sub_1000028A0(v125, v50, 1, v100);
  v63 = v122;
  sub_1000EAB24();
  sub_1000EA9C4();
  v64 = sub_1000EA9D4();

  v65 = sub_1000EA564();
  v66 = v115;
  v67 = v63 + *(v115 + 36);
  *v67 = v64;
  *(v67 + 8) = v65;
  (*(v102 + 16))(v101, v104, v103);
  v68 = v109;
  sub_1000EAEE4();
  v69 = v121;
  sub_1000EAB24();
  sub_1000EA9C4();
  v70 = sub_1000EA9D4();

  v71 = sub_1000EA564();
  v72 = v69 + *(v66 + 36);
  *v72 = v70;
  *(v72 + 8) = v71;
  sub_10003E6F8(v105, v8, type metadata accessor for DailyViewAttributes);
  v73 = (v47 + *(v99 + 40));
  v75 = *v73;
  v74 = v73[1];
  v135 = v75;
  v136 = v74;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v76 = *&__src[1];
  v77 = &v8[*(v106 + 20)];
  *v77 = __src[0];
  *(v77 + 8) = v76;
  sub_1000EABC4();
  sub_1000EA0A4();
  v78 = v107;
  sub_10003E754(v8, v107, type metadata accessor for DailyView);
  memcpy((v78 + *(v108 + 36)), __src, 0x70uLL);
  v79 = v110;
  sub_100019170(v78, v110, &qword_100130968, &qword_1000F1058);
  v80 = v118;
  (*(v119 + 16))();
  v133 = 0x4028000000000000;
  v134 = 0;
  v135 = v80;
  v136 = &v133;
  v81 = v123;
  sub_100019210(v62, v123, &qword_100130978, &qword_1000F1068);
  v137 = v81;
  v82 = v126;
  sub_100019210(v63, v126, &qword_100130938, &qword_1000F1030);
  v131 = 0x4018000000000000;
  v132 = 0;
  v138 = v82;
  v139 = &v131;
  v84 = v112;
  v83 = v113;
  v85 = v124;
  v86 = v68;
  (*(v112 + 16))();
  v129 = 0x4018000000000000;
  v130 = 0;
  v140 = v85;
  v141 = &v129;
  v87 = v121;
  v88 = v116;
  sub_100019210(v121, v116, &qword_100130938, &qword_1000F1030);
  v127 = 0x4018000000000000;
  v128 = 0;
  v142 = v88;
  v143 = &v127;
  v89 = v114;
  sub_100019210(v79, v114, &qword_100130968, &qword_1000F1058);
  v144 = v89;
  sub_10003375C(&v135, v111);
  sub_10003FBF8(v79, &qword_100130968);
  sub_10003FBF8(v87, &qword_100130938);
  v90 = *(v84 + 8);
  v90(v86, v83);
  sub_10003FBF8(v122, &qword_100130938);
  sub_10003FBF8(v125, &qword_100130978);
  v91 = v120;
  v92 = *(v119 + 8);
  v92(v117, v120);
  sub_10003FBF8(v89, &qword_100130968);
  sub_10003FBF8(v88, &qword_100130938);
  v90(v124, v83);
  sub_10003FBF8(v126, &qword_100130938);
  sub_10003FBF8(v123, &qword_100130978);
  return (v92)(v118, v91);
}

uint64_t sub_10003A85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a1;
  v28 = a3;
  v26 = sub_100002A10(&qword_100130900, &qword_1000F1000);
  __chkstk_darwin(v26);
  v5 = v24 - v4;
  v27 = sub_100002A10(&qword_100130908, &qword_1000F1008);
  __chkstk_darwin(v27);
  v7 = v24 - v6;
  v8 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_1000EB464();
  v24[0] = *(v11 - 8);
  __chkstk_darwin(v11);
  v25 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = sub_1000EBA54();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035394(0, 0xE000000000000000, 1, v15);
  if (sub_100005B30(v15, 1, v16) == 1)
  {
    sub_10003FBF8(v15, &qword_100130838);
LABEL_5:
    sub_100035794(__src);
    memcpy(v5, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10004036C(&qword_100130910, &qword_100130908, &qword_1000F1008, &protocol conformance descriptor for VStack<A>);
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_1000E9FD4();
  sub_100034A84(v10);
  if (sub_100005B30(v10, 1, v11) == 1)
  {
    sub_10003FBF8(v10, &qword_100130890);
    (*(v17 + 8))(v19, v16);
    goto LABEL_5;
  }

  v21 = v24[0];
  v22 = v25;
  (*(v24[0] + 32))(v25, v10, v11);
  *v7 = sub_1000EA3C4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v23 = sub_100002A10(&qword_100130918, &qword_1000F1010);
  sub_10003AD50(v19, a2, v22, &v7[*(v23 + 44)]);
  sub_100019210(v7, v5, &qword_100130908, &qword_1000F1008);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_100130910, &qword_100130908, &qword_1000F1008, &protocol conformance descriptor for VStack<A>);
  sub_10003E85C();
  sub_1000EA4A4();
  sub_10003FBF8(v7, &qword_100130908);
  (*(v21 + 8))(v25, v11);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_10003AD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v40 = a3;
  v41 = a4;
  v6 = sub_100002A10(&qword_100130920, &qword_1000F1018);
  v7 = __chkstk_darwin(v6 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_1000EBA54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EB694();
  v34 = *(v15 - 8);
  v16 = v34;
  v17 = __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  (*(v12 + 16))(v14, a1, v11);
  v33 = v21;
  sub_1000EB684();
  type metadata accessor for WidgetContentView(0);
  sub_1000EABC4();
  sub_1000E9FC4();
  v37 = v47;
  v38 = v45;
  v35 = v50;
  v36 = v49;
  v44 = 1;
  v43 = v46;
  v42 = v48;
  *v10 = sub_1000EA3D4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v22 = sub_100002A10(&qword_100130928, &qword_1000F1020);
  sub_10003B120(a2, v40, &v10[*(v22 + 44)]);
  v23 = *(v16 + 16);
  v32 = v19;
  v23(v19, v21, v15);
  LOBYTE(v16) = v44;
  LOBYTE(a1) = v43;
  LOBYTE(a2) = v42;
  v24 = v39;
  sub_100019210(v10, v39, &qword_100130920, &qword_1000F1018);
  v25 = v41;
  v23(v41, v19, v15);
  v26 = sub_100002A10(&qword_100130930, &qword_1000F1028);
  v27 = &v25[*(v26 + 48)];
  *v27 = 0;
  v27[8] = v16;
  v28 = v37;
  *(v27 + 2) = v38;
  v27[24] = a1;
  *(v27 + 4) = v28;
  v27[40] = a2;
  v29 = v35;
  *(v27 + 6) = v36;
  *(v27 + 7) = v29;
  sub_100019210(v24, &v25[*(v26 + 64)], &qword_100130920, &qword_1000F1018);
  sub_10003FBF8(v10, &qword_100130920);
  v30 = *(v34 + 8);
  v30(v33, v15);
  sub_10003FBF8(v24, &qword_100130920);
  return (v30)(v32, v15);
}

uint64_t sub_10003B120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v65 = a3;
  v4 = sub_1000EB464();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EAEF4();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = __chkstk_darwin(v7);
  v62 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v40 - v10;
  v11 = sub_100002A10(&qword_100130938, &qword_1000F1030);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v60 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = type metadata accessor for PrecipitationChartView(0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v52 = v22;
  sub_10003E6F8(v23, v22, type metadata accessor for ForecastEntry);
  sub_1000EABC4();
  sub_1000E9FC4();
  v44 = v101[7];
  v51 = v103;
  v55 = v106;
  v56 = v105;
  v124 = 1;
  v122 = v102;
  v120 = v104;
  v24 = sub_100034E1C();
  v49 = v25;
  v50 = v24;
  v48 = v26;
  v47 = v27;
  sub_1000EABC4();
  sub_1000E9FC4();
  v43 = v107;
  v46 = v109;
  v53 = v112;
  v54 = v111;
  v130 = 1;
  v128 = v108;
  v126 = v110;
  sub_1000EAB24();
  sub_1000EA9C4();
  v28 = sub_1000EA9D4();

  v29 = sub_1000EA564();
  v30 = &v16[*(v12 + 44)];
  *v30 = v28;
  v30[8] = v29;
  sub_1000EABC4();
  sub_1000E9FC4();
  v31 = v113;
  v32 = v115;
  v41 = v118;
  v42 = v117;
  v136 = 1;
  v134 = v114;
  v132 = v116;
  (*(v58 + 16))(v6, v61, v59);
  v33 = v57;
  sub_1000EAEE4();
  v45 = v20;
  sub_10003E6F8(v22, v20, type metadata accessor for PrecipitationChartView);
  v90 = 0;
  v91 = v124;
  *v92 = *v123;
  *&v92[3] = *&v123[3];
  v93 = v44;
  v94 = v122;
  *v95 = *v121;
  *&v95[3] = *&v121[3];
  v96 = v51;
  v97 = v120;
  *v98 = *v119;
  *&v98[3] = *&v119[3];
  v99 = v56;
  v100 = v55;
  v101[0] = v20;
  v101[1] = &v90;
  v88[0] = v50;
  v88[1] = v49;
  v88[2] = v48;
  v89 = v47 & 1;
  v77 = 0;
  v78 = v130;
  *v79 = *v129;
  *&v79[3] = *&v129[3];
  v80 = v43;
  v81 = v128;
  *v82 = *v127;
  *&v82[3] = *&v127[3];
  v83 = v46;
  v84 = v126;
  *&v85[3] = *&v125[3];
  *v85 = *v125;
  v86 = v54;
  v87 = v53;
  v101[2] = v88;
  v101[3] = &v77;
  v34 = v60;
  sub_100019210(v16, v60, &qword_100130938, &qword_1000F1030);
  v66 = 0;
  v67 = v136;
  *v68 = *v135;
  *&v68[3] = *&v135[3];
  v69 = v31;
  v70 = v134;
  *v71 = *v133;
  *&v71[3] = *&v133[3];
  v72 = v32;
  v73 = v132;
  *v74 = *v131;
  *&v74[3] = *&v131[3];
  v75 = v42;
  v76 = v41;
  v101[4] = v34;
  v101[5] = &v66;
  v35 = v62;
  v36 = v63;
  v37 = v64;
  (*(v63 + 16))(v62, v33, v64);
  v101[6] = v35;
  sub_100033914(v101, v65);
  v38 = *(v36 + 8);
  v38(v33, v37);
  sub_10003FBF8(v16, &qword_100130938);
  sub_10003FBA4(v52, type metadata accessor for PrecipitationChartView);
  v38(v35, v37);
  sub_10003FBF8(v34, &qword_100130938);

  return sub_10003FBA4(v45, type metadata accessor for PrecipitationChartView);
}

void sub_10003B780()
{
  sub_100006A58();
  v1 = v0;
  v57 = v2;
  v3 = type metadata accessor for WidgetContentView(0);
  v4 = *(v3 - 8);
  v55 = v3 - 8;
  v59 = v4;
  v58 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000EA504();
  sub_1000090D4();
  v53 = v6;
  __chkstk_darwin(v7);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_100130630, &qword_1000F0DC0);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v10);
  v12 = (&v44 - v11);
  v49 = sub_100002A10(&qword_100130638, &qword_1000F0DC8);
  sub_1000090D4();
  v50 = v13;
  sub_100009204();
  __chkstk_darwin(v14);
  v45 = &v44 - v15;
  v51 = sub_100002A10(&qword_100130640, &qword_1000F0DD0);
  sub_1000090D4();
  v52 = v16;
  sub_100009204();
  __chkstk_darwin(v17);
  v47 = &v44 - v18;
  *v12 = sub_1000EABD4();
  v12[1] = v19;
  v20 = sub_100002A10(&qword_100130648, &qword_1000F0DD8);
  sub_10003BDC4(v1, v12 + *(v20 + 44));
  sub_1000EABA4();
  v62 = v1;
  v61 = v1;
  v46 = v1;
  v21 = sub_100002A10(&qword_100130650, &qword_1000F0DE0);
  v22 = sub_100002A10(&qword_100130658, &qword_1000F0DE8);
  sub_1000404D0();
  v25 = sub_10004036C(v23, &qword_100130630, &qword_1000F0DC0, v24);
  v26 = sub_10003DA50();
  v27 = sub_10003DB08();
  sub_1000EA954();
  sub_10003FBF8(v12, &qword_100130630);
  v28 = v48;
  sub_1000EA4F4();
  v60 = v1;
  sub_1000EABC4();
  v44 = v29;
  v30 = type metadata accessor for BackgroundView(0);
  v63 = v9;
  v64 = &type metadata for Solarium;
  v65 = v21;
  v66 = v22;
  v67 = v25;
  v68 = &protocol witness table for Solarium;
  v69 = v26;
  v70 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_10003E7B8(&qword_100130678, type metadata accessor for BackgroundView, &unk_1000F1290);
  v32 = v47;
  v33 = v28;
  v34 = v49;
  v35 = v45;
  sub_1000EA904();
  (*(v53 + 8))(v33, v54);
  (*(v50 + 8))(v35, v34);
  type metadata accessor for ForecastEntry(0);
  v36 = v46;
  type metadata accessor for WidgetContext(0);
  v63 = v34;
  v64 = v30;
  v65 = OpaqueTypeConformance2;
  v66 = v43;
  swift_getOpaqueTypeConformance2();
  v37 = v57;
  v38 = v51;
  sub_1000EA844();
  (*(v52 + 8))(v32, v38);
  v39 = v56;
  sub_10003E6F8(v36, v56, type metadata accessor for WidgetContentView);
  v40 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v41 = swift_allocObject();
  sub_10003E754(v39, v41 + v40, type metadata accessor for WidgetContentView);
  v42 = (v37 + *(sub_100002A10(&qword_100130680, &qword_1000F0DF0) + 36));
  *v42 = sub_10003DBEC;
  v42[1] = v41;
  sub_100006A20();
}

uint64_t sub_10003BDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v80 = sub_100002A10(&qword_1001306A0, &qword_1000F0E70);
  __chkstk_darwin(v80);
  v75 = v71 - v3;
  v76 = sub_100002A10(&qword_1001306A8, &qword_1000F0E78);
  __chkstk_darwin(v76);
  v78 = v71 - v4;
  v77 = sub_100002A10(&qword_1001306B0, &qword_1000F0E80);
  __chkstk_darwin(v77);
  v74 = v71 - v5;
  v95 = sub_100002A10(&qword_1001306B8, &qword_1000F0E88);
  __chkstk_darwin(v95);
  v79 = v71 - v6;
  v7 = type metadata accessor for WidgetContentView(0);
  v8 = v7 - 8;
  v87 = *(v7 - 8);
  __chkstk_darwin(v7);
  v88 = v9;
  v89 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100002A10(&qword_1001306C0, &qword_1000F0E90);
  __chkstk_darwin(v83);
  v85 = (v71 - v10);
  v84 = sub_100002A10(&qword_1001306C8, &qword_1000F0E98);
  __chkstk_darwin(v84);
  v82 = v71 - v11;
  v90 = sub_100002A10(&qword_1001306D0, &qword_1000F0EA0);
  __chkstk_darwin(v90);
  v86 = v71 - v12;
  v92 = sub_100002A10(&qword_1001306D8, &qword_1000F0EA8);
  __chkstk_darwin(v92);
  v93 = v71 - v13;
  v91 = sub_100002A10(&qword_1001306E0, &qword_1000F0EB0);
  __chkstk_darwin(v91);
  v15 = v71 - v14;
  v16 = sub_100002A10(&qword_1001306E8, &qword_1000F0EB8);
  __chkstk_darwin(v16);
  v18 = v71 - v17;
  v97 = sub_100002A10(&qword_1001306F0, &qword_1000F0EC0);
  __chkstk_darwin(v97);
  v20 = v71 - v19;
  v94 = sub_100002A10(&qword_1001306F8, &qword_1000F0EC8);
  __chkstk_darwin(v94);
  v22 = v71 - v21;
  v23 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v23);
  v25 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1 + *(v8 + 44);
  v27 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v26 + *(v27 + 28), v25, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100035794(__src);
    memcpy(v18, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10003E800(__src, &v98);
    sub_10003E85C();
    sub_10003E8B0();
    sub_1000EA4A4();
    sub_100019210(v20, v15, &qword_1001306F0, &qword_1000F0EC0);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130760, &qword_1000F0EF0);
    sub_10003EB68();
    sub_10003EBF4();
    sub_1000EA4A4();
    sub_10003FBF8(v20, &qword_1001306F0);
    v34 = &qword_1001306F8;
    sub_100019210(v22, v93, &qword_1001306F8, &qword_1000F0EC8);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();
    sub_10003F218(__src);
    v35 = v22;
LABEL_10:
    v36 = v34;
    return sub_10003FBF8(v35, v36);
  }

  v71[1] = v16;
  v72 = v20;
  v73 = v15;
  v81 = v22;
  v28 = v93;
  sub_10003FBA4(v25, type metadata accessor for ForecastEntry.Model);
  if (sub_100034120())
  {
    v29 = v26 + *(v27 + 24);
    v30 = *(v29 + 48);
    v31 = *(v29 + 49);
    if (v30 == 6 || v31 == 6)
    {
      v33 = v82;
      sub_100037A7C(v82);
      sub_100019210(v33, v85, &qword_1001306C8, &qword_1000F0E98);
      swift_storeEnumTagMultiPayload();
      sub_100002A10(&qword_100130758, &qword_1000F0EE8);
      sub_10003E968();
      sub_10004036C(&qword_100130750, &qword_100130758, &qword_1000F0EE8, &protocol conformance descriptor for GeometryReader<A>);
      v49 = v86;
      sub_1000EA4A4();
      sub_10003FBF8(v33, &qword_1001306C8);
    }

    else
    {
      v45 = v89;
      sub_10003E6F8(a1, v89, type metadata accessor for WidgetContentView);
      v46 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v47 = swift_allocObject();
      sub_10003E754(v45, v47 + v46, type metadata accessor for WidgetContentView);
      v48 = v85;
      *v85 = sub_10003FA58;
      v48[1] = v47;
      swift_storeEnumTagMultiPayload();
      sub_100002A10(&qword_100130758, &qword_1000F0EE8);
      sub_10003E968();
      sub_10004036C(&qword_100130750, &qword_100130758, &qword_1000F0EE8, &protocol conformance descriptor for GeometryReader<A>);
      v49 = v86;
      sub_1000EA4A4();
    }

    v50 = v73;
    sub_100019210(v49, v18, &qword_1001306D0, &qword_1000F0EA0);
    swift_storeEnumTagMultiPayload();
    sub_10003E85C();
    sub_10003E8B0();
    v51 = v72;
    sub_1000EA4A4();
    sub_100019210(v51, v50, &qword_1001306F0, &qword_1000F0EC0);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130760, &qword_1000F0EF0);
    sub_10003EB68();
    sub_10003EBF4();
    v52 = v81;
    sub_1000EA4A4();
    sub_10003FBF8(v51, &qword_1001306F0);
    sub_100019210(v52, v28, &qword_1001306F8, &qword_1000F0EC8);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();
    sub_10003FBF8(v52, &qword_1001306F8);
    v35 = v49;
    v36 = &qword_1001306D0;
    return sub_10003FBF8(v35, v36);
  }

  v37 = sub_10003431C();
  v38 = v81;
  if (v37)
  {
    v39 = v89;
    sub_10003E6F8(a1, v89, type metadata accessor for WidgetContentView);
    v40 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v41 = swift_allocObject();
    sub_10003E754(v39, v41 + v40, type metadata accessor for WidgetContentView);
    *&v98 = sub_10003FA40;
    *(&v98 + 1) = v41;
    v99 = 0;

    sub_100002A10(&qword_100130780, &qword_1000F0EF8);
    sub_100002A10(&qword_100130790, &qword_1000F0F00);
    sub_10004036C(&qword_100130778, &qword_100130780, &qword_1000F0EF8, &protocol conformance descriptor for GeometryReader<A>);
    sub_10003ECAC();
    sub_1000EA4A4();
    v42 = __src[1];
    v43 = BYTE1(__src[1]);
    v44 = v73;
    *v73 = __src[0];
    *(v44 + 16) = v42;
    *(v44 + 17) = v43;
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130760, &qword_1000F0EF0);
    sub_10003EB68();
    sub_10003EBF4();
    sub_1000EA4A4();
    sub_100019210(v38, v28, &qword_1001306F8, &qword_1000F0EC8);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();

    v35 = v38;
    v36 = &qword_1001306F8;
    return sub_10003FBF8(v35, v36);
  }

  v54 = sub_100034518();
  v55 = v26 + *(v27 + 24);
  v56 = *(v55 + 48);
  if (!v54)
  {
    if (v56 == 6)
    {
      v62 = v74;
      sub_100036020(a1, v74);
      sub_100019210(v62, v78, &qword_1001306B0, &qword_1000F0E80);
      swift_storeEnumTagMultiPayload();
      sub_10003F058(&qword_1001307C8, &qword_1001306B0, &qword_1000F0E80, sub_10003EEFC);
      sub_10003F058(&qword_1001307F0, &qword_1001306A0, &qword_1000F0E70, sub_10003F0D0);
      v63 = v79;
      sub_1000EA4A4();
      sub_10003FBF8(v62, &qword_1001306B0);
    }

    else
    {
      v70 = v75;
      sub_100035BB8(v75);
      sub_100019210(v70, v78, &qword_1001306A0, &qword_1000F0E70);
      swift_storeEnumTagMultiPayload();
      sub_10003F058(&qword_1001307C8, &qword_1001306B0, &qword_1000F0E80, sub_10003EEFC);
      sub_10003F058(&qword_1001307F0, &qword_1001306A0, &qword_1000F0E70, sub_10003F0D0);
      v63 = v79;
      sub_1000EA4A4();
      sub_10003FBF8(v70, &qword_1001306A0);
    }

    v34 = &qword_1001306B8;
    sub_100019210(v63, v28, &qword_1001306B8, &qword_1000F0E88);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();
    v35 = v63;
    goto LABEL_10;
  }

  v57 = *(v55 + 49);
  v58 = v89;
  sub_10003E6F8(a1, v89, type metadata accessor for WidgetContentView);
  v59 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  if (v56 == 6 || v57 == 6)
  {
    v61 = swift_allocObject();
    sub_10003E754(v58, v61 + v59, type metadata accessor for WidgetContentView);
    *&v98 = sub_10003F994;
    *(&v98 + 1) = v61;
    LOBYTE(v99) = 0;
  }

  else
  {
    v64 = swift_allocObject();
    sub_10003E754(v58, v64 + v59, type metadata accessor for WidgetContentView);
    *&v98 = sub_10003F96C;
    *(&v98 + 1) = v64;
    LOBYTE(v99) = 1;
  }

  sub_100002A10(&qword_1001307A0, &qword_1000F0F08);
  sub_100002A10(&qword_1001307B0, &qword_1000F0F10);
  sub_10004036C(&qword_100130798, &qword_1001307A0, &qword_1000F0F08, &protocol conformance descriptor for GeometryReader<A>);
  sub_10004036C(&qword_1001307A8, &qword_1001307B0, &qword_1000F0F10, &protocol conformance descriptor for GeometryReader<A>);
  sub_1000EA4A4();
  v98 = __src[0];
  LOBYTE(v99) = __src[1];
  HIBYTE(v99) = 1;
  v65 = __src[0];
  sub_10003F984(*&__src[0], *(&__src[0] + 1));
  sub_10003F984(v65, *(&v65 + 1));
  sub_100002A10(&qword_100130780, &qword_1000F0EF8);
  sub_100002A10(&qword_100130790, &qword_1000F0F00);
  sub_10004036C(&qword_100130778, &qword_100130780, &qword_1000F0EF8, &protocol conformance descriptor for GeometryReader<A>);
  sub_10003ECAC();
  sub_1000EA4A4();
  v66 = __src[1];
  v67 = BYTE1(__src[1]);
  v68 = v73;
  *v73 = __src[0];
  *(v68 + 16) = v66;
  *(v68 + 17) = v67;
  swift_storeEnumTagMultiPayload();
  sub_100002A10(&qword_100130760, &qword_1000F0EF0);
  sub_10003EB68();
  sub_10003EBF4();
  v69 = v81;
  sub_1000EA4A4();
  sub_100019210(v69, v28, &qword_1001306F8, &qword_1000F0EC8);
  swift_storeEnumTagMultiPayload();
  sub_10003ED8C();
  sub_10003EE18();
  sub_1000EA4A4();
  sub_10003F98C(v65, *(&v65 + 1));
  sub_10003F98C(v65, *(&v65 + 1));
  v35 = v69;
  v36 = &qword_1001306F8;
  return sub_10003FBF8(v35, v36);
}

uint64_t sub_10003D150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v4 = sub_100002A10(&qword_100130690, &qword_1000F0E68);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v27 = sub_100002A10(&qword_100130658, &qword_1000F0DE8);
  __chkstk_darwin(v27);
  v26 = &v26 - v7;
  v8 = sub_1000EBC34();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = a2;
  if ((sub_100033CDC() & 1) != 0 && (v16 = v8, v17 = v15 + *(type metadata accessor for WidgetContentView(0) + 36), v18 = *(type metadata accessor for ForecastEntry(0) + 24), *(v17 + v18 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1) && (v19 = v16, sub_100033FA4(), sub_1000EBC14(), sub_10003E7B8(&qword_100130698, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode), v20 = sub_1000EBE24(), v21 = *(v9 + 8), v21(v12, v19), v21(v14, v19), (v20 & 1) == 0))
  {
    sub_1000EA9A4();
    v23 = sub_1000EA9D4();

    v24 = v26;
    sub_100019210(v28, v26, &qword_100130630, &qword_1000F0DC0);
    v25 = v24 + *(v27 + 36);
    *v25 = v23;
    *(v25 + 8) = xmmword_1000F0D30;
    *(v25 + 24) = 0x4000000000000000;
    sub_100019210(v24, v6, &qword_100130658, &qword_1000F0DE8);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130630, &qword_1000F0DC0);
    sub_10003DB08();
    sub_10004036C(&qword_100130660, &qword_100130630, &qword_1000F0DC0, &protocol conformance descriptor for ZStack<A>);
    sub_1000EA4A4();
    return sub_10003FBF8(v24, &qword_100130658);
  }

  else
  {
    sub_100019210(v28, v6, &qword_100130630, &qword_1000F0DC0);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130630, &qword_1000F0DC0);
    sub_10003DB08();
    sub_10004036C(&qword_100130660, &qword_100130630, &qword_1000F0DC0, &protocol conformance descriptor for ZStack<A>);
    return sub_1000EA4A4();
  }
}

double sub_10003D564@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_100033CDC() & 1) != 0 && (v6 = a2 + *(type metadata accessor for WidgetContentView(0) + 36), v7 = *(type metadata accessor for ForecastEntry(0) + 24), *(v6 + v7 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v8 = sub_1000EA9D4();
  }

  else
  {
    v8 = sub_1000EA9B4();
  }

  sub_100019210(a1, a3, &qword_100130630, &qword_1000F0DC0);
  v9 = a3 + *(sub_100002A10(&qword_100130658, &qword_1000F0DE8) + 36);
  *v9 = v8;
  result = 5.0;
  *(v9 + 8) = xmmword_1000F0D30;
  *(v9 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_10003D654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v8 = type metadata accessor for ForecastEntry(0);
  v9 = *(v8 + 24);
  v10 = (v7 + v9 + *(type metadata accessor for WidgetContext(0) + 48));
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = type metadata accessor for BackgroundView(0);
  v14 = v13[5];
  sub_10003E6F8(v7 + *(v8 + 28), v6, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v6, a2 + v14, type metadata accessor for WeatherDataViewModel);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(a2 + v14, v15, 1, v16);
  *a2 = v11;
  *(a2 + 8) = v12;
  v17 = v13[6];
  *(a2 + v17) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v18 = a2 + v13[7];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
}

void sub_10003D818(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000EB344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (v9)
  {
    v10 = (a2 + *(type metadata accessor for WidgetContentView(0) + 40));
    v11 = *v10;
    v12 = v10[1];
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = v8 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v30 = *(v13 + 56);
    v31 = v14;
    v32 = v13;
    v16 = (v13 - 8);
    while (1)
    {
      v31(v7, v15, v4);
      v17 = sub_1000EB334();
      sub_1000EB324();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      (*v16)(v7, v4);
      v36 = v11;
      v37 = v12;

      sub_100002A10(&qword_100130688, &qword_1000F0DF8);
      sub_1000EAA94();
      v26 = v38;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_10003E6E4();
        v26 = v28;
        if ((v17 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          return;
        }
      }

      if (v17 >= *(v26 + 16))
      {
        break;
      }

      v27 = (v26 + 32 * v17);
      v27[4] = v19;
      v27[5] = v21;
      v27[6] = v23;
      v27[7] = v25;
      v34 = v11;
      v35 = v12;
      v33 = v26;
      sub_1000EAAA4();

      v15 += v30;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10003DA50()
{
  result = qword_100130668;
  if (!qword_100130668)
  {
    sub_100002ABC(&qword_100130650, &qword_1000F0DE0);
    sub_10003DB08();
    sub_10004036C(&qword_100130660, &qword_100130630, &qword_1000F0DC0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130668);
  }

  return result;
}

unint64_t sub_10003DB08()
{
  result = qword_100130670;
  if (!qword_100130670)
  {
    sub_100002ABC(&qword_100130658, &qword_1000F0DE8);
    sub_10004036C(&qword_100130660, &qword_100130630, &qword_1000F0DC0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130670);
  }

  return result;
}

void sub_10003DBEC(uint64_t *a1)
{
  v3 = *(type metadata accessor for WidgetContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10003D818(a1, v4);
}

__n128 sub_10003DC5C@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_1000EABC4();
  v6 = v5;
  sub_10003DCB8(v2, v11);
  v7 = v12;
  v8 = v13;
  result = v11[0];
  v10 = v11[1];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 32) = v10;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  return result;
}

uint64_t sub_10003DCB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000EA994();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EA2C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for BackgroundView(0) + 28);
  v13 = *v12;
  if (v12[8] != 1)
  {

    sub_1000EC1A4();
    v19 = sub_1000EA524();
    v23 = v8;
    v20 = v4;
    v21 = v19;
    sub_1000E9F14();

    v4 = v20;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v13, 0);
    (*(v9 + 8))(v11, v23);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_5:

    sub_1000EAC24();
    sub_1000EAC34();
    sub_1000E9FE4();
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v18 = v28;
    goto LABEL_6;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_6:
  sub_10003DF74();
  (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  result = sub_1000EAA04();
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = result;
  return result;
}

double sub_10003DF74()
{
  v1 = v0;
  v2 = sub_1000EA3A4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = sub_1000EA2C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + *(type metadata accessor for BackgroundView(0) + 28);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = 1.0;
    if (v19)
    {
      return v20;
    }
  }

  else
  {

    sub_1000EC1A4();
    v32 = v9;
    v21 = sub_1000EA524();
    v33 = v8;
    v22 = v21;
    sub_1000E9F14();

    v8 = v33;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v19, 0);
    (*(v10 + 8))(v12, v32);
    v20 = 1.0;
    if ((v34 & 0x100000000000000) != 0)
    {
      return v20;
    }
  }

  sub_10003E52C(&qword_10012EEA8, &unk_1000EED70, &type metadata accessor for ColorSchemeContrast, v13, v14, v15, v16, v17, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  (*(v3 + 104))(v6, enum case for ColorSchemeContrast.increased(_:), v2);
  v23 = sub_1000EA394();
  v24 = *(v3 + 8);
  v24(v6, v2);
  v24(v8, v2);
  if (v23)
  {
    v25 = sub_1000EAB54();
    v20 = 0.0;
    if (v25)
    {
      v26 = v25;
      sub_1000EA9C4();
      sub_1000EA974();
      v28 = v27;

      if (v28 < 4.5)
      {
        sub_10003E2E0(v26, 0.0, 0.46, 4.5);
        v20 = v29;
      }
    }
  }

  else if (*(v1 + 8))
  {
    return 0.1;
  }

  else
  {
    return 0.0;
  }

  return v20;
}

void sub_10003E2E0(uint64_t a1, double a2, double a3, double a4)
{
  v8 = sub_1000EA994();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 - a2 <= 0.01)
  {
    sub_1000EA964();
    (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
    sub_1000EA9F4();
    sub_1000EA9C4();
    sub_1000EA974();
  }

  else
  {
    sub_1000EA964();
    (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
    sub_1000EA9F4();
    sub_1000EA9C4();
    sub_1000EA974();
    v13 = v12;

    if (v13 >= a4)
    {
      v14 = a2;
      v15 = (a2 + a3) * 0.5;
    }

    else
    {
      v14 = (a2 + a3) * 0.5;
      v15 = a3;
    }

    sub_10003E2E0(a1, v14, v15, a4);
  }
}

void sub_10003E52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v21;
  v32 = sub_1000405C8();
  sub_1000090D4();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_100040480();
  sub_100002A10(v30, v28);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  sub_100019210(v31, &a9 - v37, v30, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26(0);
    sub_1000069E4();
    (*(v39 + 32))(v20, v38);
  }

  else
  {
    sub_1000EC1A4();
    v40 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v34 + 8))(v22, v32);
  }

  sub_100006A20();
}

uint64_t sub_10003E6F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  v4 = sub_100019AC0();
  v5(v4);
  return a2;
}

uint64_t sub_10003E754(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  v4 = sub_100019AC0();
  v5(v4);
  return a2;
}

uint64_t sub_10003E7B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003E85C()
{
  result = qword_100130700;
  if (!qword_100130700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130700);
  }

  return result;
}

unint64_t sub_10003E8B0()
{
  result = qword_100130708;
  if (!qword_100130708)
  {
    sub_100002ABC(&qword_1001306D0, &qword_1000F0EA0);
    sub_10003E968();
    sub_10004036C(&qword_100130750, &qword_100130758, &qword_1000F0EE8, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130708);
  }

  return result;
}

unint64_t sub_10003E968()
{
  result = qword_100130710;
  if (!qword_100130710)
  {
    sub_100002ABC(&qword_1001306C8, &qword_1000F0E98);
    sub_10003E9F4();
    sub_10003EAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130710);
  }

  return result;
}

unint64_t sub_10003E9F4()
{
  result = qword_100130718;
  if (!qword_100130718)
  {
    sub_100002ABC(&qword_100130720, &qword_1000F0ED0);
    sub_10003E7B8(&qword_100130728, &type metadata accessor for AccessibilitySizeCurrentObservationBannerView, &protocol conformance descriptor for AccessibilitySizeCurrentObservationBannerView);
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130718);
  }

  return result;
}

unint64_t sub_10003EAB0()
{
  result = qword_100130730;
  if (!qword_100130730)
  {
    sub_100002ABC(&qword_100130738, &qword_1000F0ED8);
    sub_10004036C(&qword_100130740, &qword_100130748, &qword_1000F0EE0, &protocol conformance descriptor for VStack<A>);
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130730);
  }

  return result;
}

unint64_t sub_10003EB68()
{
  result = qword_100130768;
  if (!qword_100130768)
  {
    sub_100002ABC(&qword_1001306F0, &qword_1000F0EC0);
    sub_10003E85C();
    sub_10003E8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130768);
  }

  return result;
}

unint64_t sub_10003EBF4()
{
  result = qword_100130770;
  if (!qword_100130770)
  {
    sub_100002ABC(&qword_100130760, &qword_1000F0EF0);
    sub_10004036C(&qword_100130778, &qword_100130780, &qword_1000F0EF8, &protocol conformance descriptor for GeometryReader<A>);
    sub_10003ECAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130770);
  }

  return result;
}

unint64_t sub_10003ECAC()
{
  result = qword_100130788;
  if (!qword_100130788)
  {
    sub_100002ABC(&qword_100130790, &qword_1000F0F00);
    sub_10004036C(&qword_100130798, &qword_1001307A0, &qword_1000F0F08, &protocol conformance descriptor for GeometryReader<A>);
    sub_10004036C(&qword_1001307A8, &qword_1001307B0, &qword_1000F0F10, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130788);
  }

  return result;
}

unint64_t sub_10003ED8C()
{
  result = qword_1001307B8;
  if (!qword_1001307B8)
  {
    sub_100002ABC(&qword_1001306F8, &qword_1000F0EC8);
    sub_10003EB68();
    sub_10003EBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307B8);
  }

  return result;
}

unint64_t sub_10003EE18()
{
  result = qword_1001307C0;
  if (!qword_1001307C0)
  {
    sub_100002ABC(&qword_1001306B8, &qword_1000F0E88);
    sub_10003F058(&qword_1001307C8, &qword_1001306B0, &qword_1000F0E80, sub_10003EEFC);
    sub_10003F058(&qword_1001307F0, &qword_1001306A0, &qword_1000F0E70, sub_10003F0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307C0);
  }

  return result;
}

unint64_t sub_10003EEFC()
{
  result = qword_1001307D0;
  if (!qword_1001307D0)
  {
    sub_100002ABC(&qword_1001307D8, &qword_1000F0F18);
    sub_100002ABC(&qword_1001307E0, &unk_1000F0F20);
    sub_100002ABC(&qword_10012F6B0, &unk_1000EFB80);
    sub_10004036C(&qword_1001307E8, &qword_1001307E0, &unk_1000F0F20, &protocol conformance descriptor for VStack<A>);
    sub_10004036C(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307D0);
  }

  return result;
}

uint64_t sub_10003F058(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1000405BC(0, a2);
    sub_100002ABC(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003F0D0()
{
  result = qword_1001307F8;
  if (!qword_1001307F8)
  {
    sub_100002ABC(&qword_100130800, &qword_1000F0F30);
    sub_10003F15C();
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307F8);
  }

  return result;
}

unint64_t sub_10003F15C()
{
  result = qword_100130808;
  if (!qword_100130808)
  {
    sub_100002ABC(&qword_100130810, &qword_1000F0F38);
    sub_10003E7B8(&qword_100130818, &type metadata accessor for CurrentObservationView, &protocol conformance descriptor for CurrentObservationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130808);
  }

  return result;
}

uint64_t sub_10003F26C()
{
  v1 = type metadata accessor for WidgetContentView(0);
  v55 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v55 + 16) & ~v55);
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC44();
    sub_1000069D0();
    (*(v3 + 8))(v2);
  }

  else
  {
  }

  v4 = v1[5];
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA3B4();
    sub_1000069D0();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  sub_100006530(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v6 = v1[7];
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA694();
    sub_1000069D0();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  v8 = v1[8];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC34();
    sub_1000069D0();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  v10 = v2 + v1[9];
  v11 = sub_1000E8604();
  sub_1000069E4();
  v54 = *(v12 + 8);
  v54(v10, v11);
  v13 = type metadata accessor for ForecastEntry(0);
  v14 = v13[5];
  v15 = sub_1000EBD64();
  if (!sub_100005B30(v10 + v14, 1, v15))
  {
    sub_1000326A0();
    (*(v16 + 8))(v10 + v14, v15);
  }

  v17 = v10 + v13[6];

  v18 = *(type metadata accessor for WidgetContext(0) + 44);
  v19 = sub_1000E8524();
  if (!sub_100005B30(v17 + v18, 1, v19))
  {
    sub_1000326A0();
    (*(v20 + 8))(v17 + v18, v19);
  }

  v21 = v10 + v13[7];
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
        (*(v50 + 8))(v21, v51);
        break;
      case 1:
        sub_1000E8634();
        sub_1000069D0();
        (*(v43 + 8))(v21);
        v44 = type metadata accessor for InstantWeatherViewModel(0);
        v45 = *(v44 + 20);
        sub_1000E9A84();
        sub_1000069D0();
        (*(v46 + 8))(v21 + v45);
        v47 = *(v44 + 24);
        sub_1000EB674();
        sub_1000069D0();
        (*(v48 + 8))(v21 + v47, v49);
        break;
      case 0:
        v23 = sub_1000E8634();
        sub_1000069E4();
        v53 = *(v24 + 8);
        v53(v21, v23);
        v25 = type metadata accessor for AggregateWeatherViewModel(0);
        v26 = v25[5];
        sub_1000E9A84();
        sub_1000069D0();
        (*(v27 + 8))(v21 + v26);
        v28 = v25[6];
        sub_1000EB674();
        sub_1000069D0();
        (*(v29 + 8))(v21 + v28);

        v30 = v21 + v25[9];
        v31 = type metadata accessor for AirQualityViewModel(0);
        if (!sub_100005B30(v30, 1, v31))
        {
          v53(v30, v23);
          v54(v30 + v31[5], v11);
          v32 = v31[7];
          sub_1000E8E84();
          sub_1000069D0();
          (*(v33 + 8))(v30 + v32);
          v34 = v31[8];
          sub_1000E8F64();
          sub_1000069D0();
          (*(v35 + 8))(v30 + v34);
        }

        v36 = v25[10];
        v37 = sub_1000EBAF4();
        if (!sub_100005B30(v21 + v36, 1, v37))
        {
          sub_1000326A0();
          (*(v38 + 8))(v21 + v36, v37);
        }

        v39 = v25[13];
        if (!sub_100005B30(v21 + v39, 1, v19))
        {
          sub_1000326A0();
          (*(v40 + 8))(v21 + v39, v19);
        }

        v41 = v25[14];
        v42 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(v21 + v41, 1, v42))
        {
          v54(v21 + v41, v11);
        }

        break;
    }
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10003F9AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WidgetContentView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10003FA70()
{
  result = qword_100130860;
  if (!qword_100130860)
  {
    sub_100002ABC(&qword_100130848, &qword_1000F0F68);
    sub_10004036C(&qword_100130868, &unk_100130870, &unk_1000F0F80, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130860);
  }

  return result;
}

unint64_t sub_10003FB28()
{
  result = qword_1001308B0;
  if (!qword_1001308B0)
  {
    sub_100002ABC(&qword_1001308A8, &qword_1000F0FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001308B0);
  }

  return result;
}

uint64_t sub_10003FBA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069D0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10003FBF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000405BC(a1, a2);
  sub_100002A10(v3, v4);
  sub_1000069D0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10003FC64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100019B04(*a1);
  }

  sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  sub_100006A04();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v10 = *(a3 + 24);
  }

  return sub_100005B30(a1 + v10, a2, v9);
}

void *sub_10003FD4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_100002A10(&qword_10012F038, &qword_1000F0F90);
    sub_100006A04();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v11 = *(a4 + 24);
    }

    return sub_1000028A0(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_10003FE28(uint64_t a1)
{
  sub_10003FF34(319, &unk_100130A58, type metadata accessor for WeatherDataViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10003FF34(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100005F48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003FF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003FFA4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003FFC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100040004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004006C()
{
  result = qword_100130A90;
  if (!qword_100130A90)
  {
    sub_100002ABC(&qword_100130680, &qword_1000F0DF0);
    sub_100002ABC(&qword_100130640, &qword_1000F0DD0);
    sub_100002ABC(&qword_100130638, &qword_1000F0DC8);
    type metadata accessor for BackgroundView(255);
    sub_100002ABC(&qword_100130630, &qword_1000F0DC0);
    sub_100002ABC(&qword_100130650, &qword_1000F0DE0);
    sub_100002ABC(&qword_100130658, &qword_1000F0DE8);
    sub_10004036C(&qword_100130660, &qword_100130630, &qword_1000F0DC0, &protocol conformance descriptor for ZStack<A>);
    sub_10003DA50();
    sub_10003DB08();
    swift_getOpaqueTypeConformance2();
    sub_10003E7B8(&qword_100130678, type metadata accessor for BackgroundView, &unk_1000F1290);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10004036C(&qword_100130A98, &unk_100130AA0, &unk_1000F1238, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130A90);
  }

  return result;
}

uint64_t sub_10004036C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_1000405BC(0, a2);
    sub_100002ABC(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000403B4()
{
  result = qword_100130AD0;
  if (!qword_100130AD0)
  {
    sub_100002ABC(&qword_100130AA8, &qword_1000F12E0);
    sub_10003E7B8(&qword_100130AD8, type metadata accessor for ErrorView, &unk_1000F0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130AD0);
  }

  return result;
}

void sub_100040498(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
}

__n128 sub_1000404E8@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  result = (*a1)[2];
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  a2[2] = result;
  a2[3] = v3;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_100040508()
{

  return type metadata accessor for WidgetContentView(0);
}

uint64_t sub_100040528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1000E9F14();
}

uint64_t sub_100040548@<X0>(uint64_t a1@<X8>)
{

  return sub_100019210(v1 + a1, v2, v3, v4);
}

uint64_t sub_100040588()
{

  return swift_getAtKeyPath();
}

uint64_t sub_1000405A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_10003E6F8(a1, v2 + a2, v3);
}

uint64_t sub_1000405C8()
{

  return sub_1000EA2C4();
}

uint64_t sub_1000405E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_100002A10(&qword_100130B08, &qword_1000F13B0);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  sub_100002A10(&qword_100130B10, &qword_1000F13B8);
  sub_1000090D4();
  v47 = v11;
  v48 = v12;
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  sub_100002A10(&qword_100130B18, &unk_1000F13C0);
  sub_1000090D4();
  v49 = v15;
  v50 = v16;
  __chkstk_darwin(v15);
  v46 = &v45 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v52 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for LocationContentView(0);
  sub_100040CB4(&qword_100130B20, type metadata accessor for LocationContentView, &unk_1000F70B4);
  sub_100040CB4(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_100040CFC();
  sub_1000EA474();
  sub_1000058EC(v22, v24, a1 & 1);

  (*(v7 + 8))(v10, v5);
  v27 = sub_1000EA354();
  v31 = sub_100015CA8(v27, v28, v29, v30);
  v33 = v32;
  LOBYTE(v10) = v34;
  v52 = v5;
  v53 = v26;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v46;
  v36 = v47;
  sub_1000EA444();
  sub_1000058EC(v31, v33, v10 & 1);

  (*(v48 + 8))(v14, v36);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v38 = sub_1000EBC44();
  sub_1000090D4();
  v40 = v39;
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000EFAD0;
  (*(v40 + 104))(v42 + v41, enum case for WidgetFamily.accessoryInline(_:), v38);
  v52 = v36;
  v53 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v43 = v49;
  sub_1000EA454();

  return (*(v50 + 8))(v37, v43);
}

uint64_t sub_100040AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocationContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100040B68()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.LocationComplication(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_100040C84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100040B68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100040CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100040CFC()
{
  result = qword_100130B28;
  if (!qword_100130B28)
  {
    sub_100002ABC(&qword_100130B08, &qword_1000F13B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130B28);
  }

  return result;
}

uint64_t sub_100040D64()
{
  sub_100002ABC(&qword_100130B18, &unk_1000F13C0);
  sub_100002ABC(&qword_100130B10, &qword_1000F13B8);
  sub_100002ABC(&qword_100130B08, &qword_1000F13B0);
  sub_100040CFC();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100040E28@<X0>(uint64_t a1@<X8>)
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
        _os_log_impl(&_mh_execute_header, v18, v19, "Expected aggregate but got instant or sunriseSunset", v20, 2u);
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
        _os_log_impl(&_mh_execute_header, v24, v25, "Making Rain complication view model entry from aggregate weather", v26, 2u);
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

uint64_t sub_1000411AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  v5 = sub_100005B30(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100041208(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AggregateWeatherViewModel(0);

  return sub_1000028A0(a1, v5, a3, v6);
}

uint64_t type metadata accessor for RainComplicationDataStatus(uint64_t a1)
{
  result = qword_100130BA0;
  if (!qword_100130BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000412B4(uint64_t a1)
{
  v1 = type metadata accessor for AggregateWeatherViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100041324@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = 1;
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      sub_1000EBD54();
      v3 = 0;
      break;
    default:
      break;
  }

  v5 = sub_1000EBD64();

  return sub_1000028A0(a2, v3, 1, v5);
}

uint64_t sub_100041404@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  sub_1000E8784();
  sub_1000090D4();
  v56 = v3;
  v57 = v2;
  __chkstk_darwin(v2);
  sub_1000091AC();
  v55 = v4 - v5;
  __chkstk_darwin(v6);
  v53 = &v51 - v7;
  v54 = sub_1000EAFD4();
  sub_1000090D4();
  v52 = v8;
  __chkstk_darwin(v9);
  sub_1000091AC();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v19);
  sub_1000091AC();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v51 - v24;
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v26);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v29 + 28), v28, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = *v28;
    v36 = sub_1000EB364();
    if (!v37)
    {
      v38 = v58;
      v39 = 2;
      return sub_1000028A0(v38, v39, 2, v36);
    }

    goto LABEL_9;
  }

  sub_10000DA94(v28, v25, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v25, v22, type metadata accessor for WeatherDataViewModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000DC24();
    sub_10000DBCC(v22, v30);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C(&qword_10012EB38);
    }

    v31 = sub_1000E9F64();
    sub_100008CB8(v31, qword_100145C10);
    v32 = sub_1000E9F44();
    v33 = sub_1000EC194();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Expected aggregate but got instant or sunriseSunset", v34, 2u);
    }

    sub_10000DC24();
    sub_10000DBCC(v25, v35);
    v36 = sub_1000EB364();
LABEL_9:
    v38 = v58;
    v39 = 1;
    return sub_1000028A0(v38, v39, 2, v36);
  }

  sub_10000DA94(v22, v18, type metadata accessor for AggregateWeatherViewModel);
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v40 = sub_1000E9F64();
  sub_100008CB8(v40, qword_100145C10);
  v41 = sub_1000E9F44();
  v42 = sub_1000EC1B4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Making Sun complication view model entry from aggregate weather", v43, 2u);
  }

  sub_100044A44(v15);
  v44 = v53;
  sub_1000E9A74();
  v45 = v52;
  v46 = v54;
  (*(v52 + 16))(v12, v15, v54);
  v47 = v56;
  v48 = v57;
  (*(v56 + 16))(v55, v44, v57);
  sub_1000EB354();
  (*(v47 + 8))(v44, v48);
  (*(v45 + 8))(v15, v46);
  sub_10000DBCC(v18, type metadata accessor for AggregateWeatherViewModel);
  sub_10000DC24();
  sub_10000DBCC(v25, v49);
  v36 = sub_1000EB364();
  v38 = v58;
  v39 = 0;
  return sub_1000028A0(v38, v39, 2, v36);
}

uint64_t sub_100041990(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100041A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for SunEventsContentView(uint64_t a1)
{
  result = qword_100130CC0;
  if (!qword_100130CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100041B64@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100041D5C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v38 = sub_100002A10(&qword_100130CF8, &qword_1000F14A8);
  __chkstk_darwin(v38);
  v39 = &v32 - v1;
  v46 = sub_100002A10(&qword_100130D00, &qword_1000F14B0);
  __chkstk_darwin(v46);
  v42 = &v32 - v2;
  v43 = sub_1000EB034();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100002A10(&qword_100130D08, &qword_1000F14B8);
  __chkstk_darwin(v45);
  v5 = &v32 - v4;
  v36 = sub_100002A10(&qword_100130D10, &qword_1000F14C0);
  __chkstk_darwin(v36);
  v7 = &v32 - v6;
  v44 = sub_100002A10(&qword_100130D18, &unk_1000F14C8);
  __chkstk_darwin(v44);
  v9 = &v32 - v8;
  v10 = sub_1000EB414();
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EB234();
  v37 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EBC44();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v33 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v32 - v20;
  sub_100041B64(&v32 - v20);
  v34 = v17;
  v35 = v16;
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    type metadata accessor for SunEventsContentView(0);
    sub_100041404(v12);
    sub_1000EB224();
    v23 = v37;
    (*(v37 + 16))(v7, v15, v13);
    swift_storeEnumTagMultiPayload();
    sub_1000426E4(&qword_100130D30, &type metadata accessor for SunCircularContentView, &protocol conformance descriptor for SunCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v9, v5, &qword_100130D18, &unk_1000F14C8);
    swift_storeEnumTagMultiPayload();
    sub_100042628();
    sub_10004272C();
    sub_1000EA4A4();
    sub_100008E48(v9, &qword_100130D18, &unk_1000F14C8);
    return (*(v23 + 8))(v15, v13);
  }

  else if (v22 == enum case for WidgetFamily.accessoryRectangular(_:) || v22 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1000EC3E4(68);
    v50._countAndFlagsBits = 0xD000000000000022;
    v50._object = 0x80000001000FB150;
    sub_1000EBF44(v50);
    v30 = v33;
    sub_100041B64(v33);
    sub_1000426E4(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v31 = v35;
    v51._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v51);

    (*(v34 + 8))(v30, v31);
    v52._object = 0x80000001000FBDC0;
    v52._countAndFlagsBits = 0xD000000000000020;
    sub_1000EBF44(v52);
    result = sub_1000EC464();
    __break(1u);
  }

  else
  {
    v25 = v5;
    type metadata accessor for SunEventsContentView(0);
    sub_100041404(v12);
    v26 = v40;
    sub_1000EB024();
    v27 = v41;
    v28 = v43;
    (*(v41 + 16))(v39, v26, v43);
    swift_storeEnumTagMultiPayload();
    sub_1000426E4(&qword_100130D20, &type metadata accessor for SunInlineContentView, &protocol conformance descriptor for SunInlineContentView);
    v29 = v42;
    sub_1000EA4A4();
    sub_10000EBC4(v29, v25, &qword_100130D00, &qword_1000F14B0);
    swift_storeEnumTagMultiPayload();
    sub_100042628();
    sub_10004272C();
    sub_1000EA4A4();
    sub_100008E48(v29, &qword_100130D00, &qword_1000F14B0);
    return (*(v27 + 8))(v26, v28);
  }

  return result;
}

unint64_t sub_100042628()
{
  result = qword_100130D28;
  if (!qword_100130D28)
  {
    sub_100002ABC(&qword_100130D18, &unk_1000F14C8);
    sub_1000426E4(&qword_100130D30, &type metadata accessor for SunCircularContentView, &protocol conformance descriptor for SunCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D28);
  }

  return result;
}

uint64_t sub_1000426E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004272C()
{
  result = qword_100130D38;
  if (!qword_100130D38)
  {
    sub_100002ABC(&qword_100130D00, &qword_1000F14B0);
    sub_1000426E4(&qword_100130D20, &type metadata accessor for SunInlineContentView, &protocol conformance descriptor for SunInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D38);
  }

  return result;
}

unint64_t sub_1000427EC()
{
  result = qword_100130D40;
  if (!qword_100130D40)
  {
    sub_100002ABC(&qword_100130D48, &qword_1000F14D8);
    sub_100042870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D40);
  }

  return result;
}

unint64_t sub_100042870()
{
  result = qword_100130D50;
  if (!qword_100130D50)
  {
    sub_100002ABC(&qword_100130D58, &unk_1000F14E0);
    sub_100042628();
    sub_10004272C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D50);
  }

  return result;
}

uint64_t sub_100042910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EBC44();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100005B30(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
    v8 = a1 + *(a3 + 88);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_100042A00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000EBC44();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
    v10 = a1 + *(a4 + 88);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for DailyViewAttributes(uint64_t a1)
{
  result = qword_100130DB8;
  if (!qword_100130DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042B24(uint64_t a1)
{
  sub_1000EBC44();
  if (v1 <= 0x3F)
  {
    sub_100042C14(319);
    if (v2 <= 0x3F)
    {
      sub_100042C6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100042C14(uint64_t a1)
{
  if (!qword_100130DC8)
  {
    sub_1000EB214();
    v1 = sub_1000EC034();
    if (!v2)
    {
      atomic_store(v1, &qword_100130DC8);
    }
  }
}

void sub_100042C6C(uint64_t a1)
{
  if (!qword_100130DD0)
  {
    sub_100002ABC(&qword_10012ED70, &qword_1000EECC0);
    v1 = sub_1000EC364();
    if (!v2)
    {
      atomic_store(v1, &qword_100130DD0);
    }
  }
}

BOOL sub_100042CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v37[-v5];
  v6 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v37[-v10];
  v12 = sub_100002A10(&qword_100130E48, &qword_1000F1548);
  v13 = __chkstk_darwin(v12);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v37[-v16];
  sub_1000EBC44();
  sub_100043230();
  sub_1000EBFB4();
  sub_1000EBFB4();
  if (v44 != v43)
  {
    return 0;
  }

  v18 = type metadata accessor for DailyViewAttributes(0);
  v19 = sub_10004339C(v18[5]);
  sub_100047844(v19, v20);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  if (!static ActiveEvent.__derived_struct_equals(_:_:)(*(a1 + v18[6]), *(a2 + v18[6])))
  {
    return 0;
  }

  sub_10004338C();
  if (!v24)
  {
    return 0;
  }

  sub_10004335C();
  if (!v24)
  {
    return 0;
  }

  sub_10004335C();
  if (!v24)
  {
    return 0;
  }

  sub_10004335C();
  if (!v24)
  {
    return 0;
  }

  sub_10004338C();
  if (!v24)
  {
    return 0;
  }

  sub_10004335C();
  if (!v24)
  {
    return 0;
  }

  sub_10004335C();
  if (!v24)
  {
    return 0;
  }

  sub_10004335C();
  if (!v24)
  {
    return 0;
  }

  sub_10004335C();
  if (!v24)
  {
    return 0;
  }

  sub_10004338C();
  if (!v24)
  {
    return 0;
  }

  sub_10004339C(v18[17]);
  if ((sub_1000EA5E4() & 1) == 0)
  {
    return 0;
  }

  sub_10004339C(v18[18]);
  if ((sub_1000EA5E4() & 1) == 0)
  {
    return 0;
  }

  sub_10004339C(v18[19]);
  if ((sub_1000EA5E4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1000EA634() & 1) == 0)
  {
    return 0;
  }

  sub_10004338C();
  if (!v24)
  {
    return 0;
  }

  v22 = v18[22];
  v23 = *(v12 + 48);
  sub_100043288(a1 + v22, v17);
  sub_100043288(a2 + v22, &v17[v23]);
  sub_10004336C(v17);
  if (v24)
  {
    sub_10004336C(&v17[v23]);
    if (v24)
    {
      sub_10000D3A8(v17, &qword_10012EF30, &unk_1000F14F0);
      goto LABEL_40;
    }

LABEL_38:
    v25 = v17;
LABEL_49:
    sub_10000D3A8(v25, &qword_100130E48, &qword_1000F1548);
    return 0;
  }

  sub_100043288(v17, v11);
  sub_10004336C(&v17[v23]);
  if (v24)
  {
    (*(v41 + 8))(v11, v42);
    goto LABEL_38;
  }

  v26 = &v17[v23];
  v27 = v42;
  (*(v41 + 32))(v40, v26, v42);
  sub_1000432F8();
  v38 = sub_1000EBE24();
  v39 = *(v41 + 8);
  v39(v40, v27);
  v39(v11, v27);
  sub_10000D3A8(v17, &qword_10012EF30, &unk_1000F14F0);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v28 = v18[23];
  v29 = *(v12 + 48);
  sub_100043288(a1 + v28, v15);
  sub_100043288(a2 + v28, &v15[v29]);
  sub_10004336C(v15);
  if (v24)
  {
    sub_10004336C(&v15[v29]);
    if (v24)
    {
      sub_10000D3A8(v15, &qword_10012EF30, &unk_1000F14F0);
      return 1;
    }

    goto LABEL_48;
  }

  sub_100043288(v15, v9);
  sub_10004336C(&v15[v29]);
  if (v30)
  {
    (*(v41 + 8))(v9, v42);
LABEL_48:
    v25 = v15;
    goto LABEL_49;
  }

  v33 = v40;
  v32 = v41;
  v34 = v42;
  (*(v41 + 32))(v40, &v15[v29], v42);
  sub_1000432F8();
  v35 = sub_1000EBE24();
  v36 = *(v32 + 8);
  v36(v33, v34);
  v36(v9, v34);
  sub_10000D3A8(v15, &qword_10012EF30, &unk_1000F14F0);
  return (v35 & 1) != 0;
}

unint64_t sub_100043230()
{
  result = qword_1001309E8;
  if (!qword_1001309E8)
  {
    sub_1000EBC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001309E8);
  }

  return result;
}

uint64_t sub_100043288(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000432F8()
{
  result = qword_100130E50;
  if (!qword_100130E50)
  {
    sub_100002ABC(&qword_10012ED70, &qword_1000EECC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130E50);
  }

  return result;
}

uint64_t sub_1000433B8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  sub_1000E8F64();
  sub_1000090D4();
  v54 = v2;
  v55 = v1;
  __chkstk_darwin(v1);
  sub_100006A10();
  v53 = v4 - v3;
  sub_1000E8E84();
  sub_1000090D4();
  v51 = v6;
  v52 = v5;
  __chkstk_darwin(v5);
  sub_100006A10();
  v50 = v8 - v7;
  sub_1000E8604();
  sub_1000090D4();
  v48 = v10;
  v49 = v9;
  __chkstk_darwin(v9);
  sub_100006A10();
  v13 = v12 - v11;
  v14 = sub_1000E8C04();
  sub_1000090D4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100006A10();
  v20 = v19 - v18;
  sub_1000E8634();
  sub_1000090D4();
  v46 = v22;
  v47 = v21;
  __chkstk_darwin(v21);
  sub_100006A10();
  v25 = v24 - v23;
  v26 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  __chkstk_darwin(v26 - 8);
  v28 = &v45 - v27;
  v29 = sub_1000E8D34();
  sub_1000090D4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100006A10();
  v35 = v34 - v33;
  sub_1000E8C74();
  if (sub_100005B30(v28, 1, v29) == 1)
  {
    sub_100043824(v28);
    v36 = type metadata accessor for AirQualityViewModel(0);
    v37 = v56;
    v38 = 1;
  }

  else
  {
    (*(v31 + 32))(v35, v28, v29);
    sub_1000E8624();
    sub_1000E8D24();
    sub_1000E8BF4();
    (*(v16 + 8))(v20, v14);
    v39 = sub_1000E8D04();
    v40 = v50;
    sub_1000E8D14();
    v41 = v53;
    sub_1000E8CF4();
    (*(v31 + 8))(v35, v29);
    v42 = v56;
    (*(v46 + 32))(v56, v25, v47);
    v43 = type metadata accessor for AirQualityViewModel(0);
    (*(v48 + 32))(v42 + v43[5], v13, v49);
    *(v42 + v43[6]) = v39;
    (*(v51 + 32))(v42 + v43[7], v40, v52);
    (*(v54 + 32))(v42 + v43[8], v41, v55);
    v37 = v42;
    v38 = 0;
    v36 = v43;
  }

  return sub_1000028A0(v37, v38, 1, v36);
}

uint64_t sub_100043824(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1000438CC(uint64_t a1, uint64_t a2)
{
  sub_1000EC664();
  sub_1000EBF14();
  return sub_1000EC684();
}

Swift::Int sub_100043920(Swift::UInt a1)
{
  sub_1000EC664();
  sub_1000EC674(a1);
  return sub_1000EC684();
}

double sub_100043968(uint64_t a1, char a2)
{
  sub_1000EBF14();

  return result;
}

double sub_1000439E0(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_10004474C();
  }

  sub_1000EBF14();

  return result;
}

Swift::Int sub_100043AB8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1000EC664();
  if (!v2)
  {
    sub_10004474C();
  }

  sub_1000EBF14();

  return sub_1000EC684();
}

Swift::Int sub_100043B54(uint64_t a1, Swift::UInt a2)
{
  sub_1000EC664();
  sub_1000EC674(a2);
  return sub_1000EC684();
}

Swift::Int sub_100043B98(uint64_t a1, unsigned __int8 a2)
{
  sub_1000EC664();
  sub_1000EC674(a2);
  return sub_1000EC684();
}

Swift::Int sub_100043BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000EC664();
  sub_1000EBF14();
  return sub_1000EC684();
}

Swift::Int sub_100043C3C(uint64_t a1, char a2)
{
  sub_1000EC664();
  sub_1000EBF14();

  return sub_1000EC684();
}

id sub_100043CB4()
{
  result = [objc_allocWithZone(type metadata accessor for WeatherSettingsState()) init];
  qword_100145B90 = result;
  return result;
}

id sub_100043CE4()
{
  if (qword_10012EB00 != -1)
  {
    swift_once();
  }

  v1 = qword_100145B90;

  return v1;
}

id sub_100043DE0()
{
  v0 = objc_opt_self();
  v1 = sub_10004472C();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:0];

  return v2;
}

void sub_100043E8C(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_10004472C();
  isa = sub_1000EC054().super.super.isa;
  [v1 writePreferenceForKey:v2 value:isa];
}

id sub_100043F4C()
{
  v0 = objc_opt_self();
  v1 = sub_10004472C();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:1];

  return v2;
}

void sub_100043FF8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_10004472C();
  isa = sub_1000EC054().super.super.isa;
  [v1 writePreferenceForKey:v2 value:isa];
}

id sub_1000440B8()
{
  v0 = objc_opt_self();
  v1 = sub_100044764();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:0];

  return v2;
}

void sub_100044164(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100044764();
  isa = sub_1000EC054().super.super.isa;
  [v1 writePreferenceForKey:v2 value:isa];
}

uint64_t sub_1000442C0()
{
  v1 = sub_1000E98E4();
  __chkstk_darwin(v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E98F4();
  result = sub_100044358(v3);
  *(v0 + OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_predictedLocationsAuthorization) = result;
  return result;
}

uint64_t sub_100044358(uint64_t a1)
{
  v2 = sub_1000E98E4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  v5 = 0;
  if (v4 != enum case for PredictedLocationsAuthorization.notDetermined(_:))
  {
    if (v4 == enum case for PredictedLocationsAuthorization.featureUnavailable(_:))
    {
      return 1;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.enabled(_:))
    {
      return 2;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.disabledInSystemServices(_:))
    {
      return 3;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.disabledInWeatherSettings(_:))
    {
      return 4;
    }

    else
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  return v5;
}

id sub_1000444D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_units;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for WeatherSettingsUnits()) init];
  v4 = OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_predictedLocationsAuthorizationManager;
  sub_1000E9924();
  swift_allocObject();
  *&v1[v4] = sub_1000E9914();
  *&v1[OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_predictedLocationsAuthorization] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_100044628(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100044684@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100044628(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1000446C8()
{
  result = qword_100130E98;
  if (!qword_100130E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130E98);
  }

  return result;
}

NSString sub_10004472C()
{

  return sub_1000EBE64();
}

NSString sub_100044764()
{

  return sub_1000EBE64();
}

uint64_t sub_100044784(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v3 = 7890280;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v5 = 7890280;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC5D4();
  }

  return v8 & 1;
}

uint64_t sub_10004481C(unsigned __int8 a1, char a2)
{
  v2 = 0x737569736C6563;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65686E6572686166;
    }

    else
    {
      v4 = 0x7953726F7272696DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000007469;
    }

    else
    {
      v5 = 0xEC0000006D657473;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x737569736C6563;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65686E6572686166;
    }

    else
    {
      v2 = 0x7953726F7272696DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000007469;
    }

    else
    {
      v6 = 0xEC0000006D657473;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC5D4();
  }

  return v8 & 1;
}

uint64_t sub_10004493C()
{
  v0 = sub_100002A10(&qword_1001312A8, &unk_1000F1D70);
  sub_100009210(v0);
  sub_100009204();
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  sub_100045448();
  v4 = sub_1000EB214();
  sub_10000D4FC(v3, 1, v4);
  if (v5)
  {
    sub_100008E48(v3, &qword_1001312A8, &unk_1000F1D70);
    sub_1000E8D54();
    sub_10000D52C();
    return sub_1000028A0(v6, v7, v8, v9);
  }

  else
  {
    sub_1000EB0E4();
    return (*(*(v4 - 8) + 8))(v3, v4);
  }
}

uint64_t sub_100044A44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  sub_1000E8784();
  sub_1000090D4();
  v37 = v4;
  v38 = v3;
  __chkstk_darwin(v3);
  sub_10004B3F0();
  v35 = v5;
  sub_10000921C();
  v6 = sub_1000E8604();
  sub_1000090D4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v13);
  sub_100009204();
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_1000069E4();
  __chkstk_darwin(v18);
  sub_1000091AC();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v34 - v23;
  v25 = *(type metadata accessor for AggregateWeatherViewModel(0) + 56);
  v36 = v2;
  sub_100019210(v2 + v25, v16, &qword_100130EB8, &qword_1000F1660);
  sub_10000D4FC(v16, 1, v17);
  if (v26)
  {
    sub_100008E48(v16, &qword_100130EB8, &qword_1000F1660);
    if (qword_10012EB08 != -1)
    {
      swift_once();
    }

    v27 = sub_1000EB6D4();
    sub_100008CB8(v27, qword_100130EA0);
    sub_1000E99B4();
    sub_1000E85F4();
    v28 = v35;
    sub_1000E9A74();
    sub_1000EB6B4();
    (*(v37 + 8))(v28, v38);
    return (*(v8 + 8))(v12, v6);
  }

  else
  {
    sub_100049658(v16, v24);
    sub_100049658(v24, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = v39;
    (*(v8 + 32))(v39, v21, v6);
    sub_1000EAFD4();
    sub_1000069E4();
    if (EnumCaseMultiPayload == 1)
    {
      v33 = &enum case for SunriseSunsetEvent.sunset(_:);
    }

    else
    {
      v33 = &enum case for SunriseSunsetEvent.sunrise(_:);
    }

    return (*(v32 + 104))(v31, *v33);
  }
}

uint64_t AggregateWeatherViewModel.id.getter()
{
  sub_1000E8634();
  sub_1000069E4();
  v0 = sub_100019AC0();

  return v1(v0);
}

uint64_t sub_100044E30()
{
  v0 = sub_1000EB6D4();
  sub_10004B338(v0, qword_100130EA0);
  sub_100008CB8(v0, qword_100130EA0);
  return sub_1000EB6C4();
}

void sub_100044E7C()
{
  sub_100006A58();
  sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000090D4();
  __chkstk_darwin(v3);
  sub_1000091AC();
  v41 = v4 - v5;
  sub_10004B6F4();
  __chkstk_darwin(v6);
  sub_10000D56C();
  v40 = v7;
  sub_10000921C();
  v8 = sub_1000EB214();
  sub_1000090D4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000091AC();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  sub_10004B584();
  __chkstk_darwin(v16);
  sub_10000D56C();
  v17 = sub_10000921C();
  v18 = type metadata accessor for AggregateWeatherViewModel(v17);
  sub_10004B6E0(v18);
  if (v19)
  {
    v20 = sub_10004B4A0();
    v21(v20);
    sub_10004B5EC();
    while (1)
    {
      if (v43 == v1)
      {
        v27 = sub_10004B65C();
        v28(v27);
        sub_1000EB1B4();
        v29 = sub_10004B724();
        v30(v29);
        sub_1000028A0(v36, 0, 1, v42);
        sub_100006A20();
        return;
      }

      if (v1 >= *(v0 + 16))
      {
        break;
      }

      v39(v14, v38 + *(v10 + 72) * v1, v8);
      sub_1000EB1B4();
      sub_1000EB1B4();
      sub_10004ADF0();
      sub_10004B698();
      v22 = sub_10004B5C4();
      v2(v22);
      v23 = v10;
      v10 = v8;
      (v2)(v40, v23);
      sub_10004B718();
      v24();
      if (v14)
      {
        v25 = sub_10004B674();
        v26(v25);
      }

      v2 = v14;
      v8 = v41;
      ++v1;
      v0 = v37;
    }

    __break(1u);
  }

  else
  {
    sub_10000D52C();
    sub_100006A20();

    sub_1000028A0(v31, v32, v33, v34);
  }
}

void sub_100045164()
{
  sub_100006A58();
  sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000090D4();
  __chkstk_darwin(v3);
  sub_1000091AC();
  v41 = v4 - v5;
  sub_10004B6F4();
  __chkstk_darwin(v6);
  sub_10000D56C();
  v40 = v7;
  sub_10000921C();
  v8 = sub_1000EB214();
  sub_1000090D4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000091AC();
  v14 = (v12 - v13);
  sub_10004B6F4();
  __chkstk_darwin(v15);
  sub_10004B584();
  __chkstk_darwin(v16);
  sub_10000D56C();
  v17 = sub_10000921C();
  v18 = type metadata accessor for AggregateWeatherViewModel(v17);
  sub_10004B6E0(v18);
  if (v19)
  {
    v20 = sub_10004B4A0();
    v21(v20);
    sub_10004B5EC();
    while (1)
    {
      if (v43 == v1)
      {
        v27 = sub_10004B65C();
        v28(v27);
        sub_1000EB194();
        v29 = sub_10004B724();
        v30(v29);
        sub_1000028A0(v36, 0, 1, v42);
        sub_100006A20();
        return;
      }

      if (v1 >= *(v0 + 16))
      {
        break;
      }

      v39(v14, v38 + *(v10 + 72) * v1, v8);
      sub_1000EB194();
      sub_1000EB194();
      sub_10004ADF0();
      sub_10004B698();
      v22 = sub_10004B5C4();
      v2(v22);
      v23 = v10;
      v10 = v8;
      (v2)(v40, v23);
      sub_10004B718();
      v24();
      if (v2)
      {
        v25 = sub_10004B674();
        v26(v25);
      }

      v2 = v14;
      v8 = v41;
      ++v1;
      v0 = v37;
    }

    __break(1u);
  }

  else
  {
    sub_10000D52C();
    sub_100006A20();

    sub_1000028A0(v31, v32, v33, v34);
  }
}

void sub_100045448()
{
  sub_100006A58();
  v2 = v0;
  v28 = v3;
  v32 = sub_1000E8604();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10004B3F0();
  v31 = v7;
  sub_10000921C();
  v30 = sub_1000E8754();
  sub_1000090D4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10004B3F0();
  v29 = v11;
  sub_10000921C();
  v12 = sub_1000EB214();
  sub_1000090D4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000091AC();
  sub_10004B584();
  __chkstk_darwin(v16);
  sub_10000D56C();
  v27 = v17;
  v18 = sub_10000921C();
  v19 = 0;
  v20 = *(v2 + *(type metadata accessor for AggregateWeatherViewModel(v18) + 32));
  v33 = *(v20 + 16);
  v21 = (v9 + 8);
  while (1)
  {
    if (v33 == v19)
    {
      v24 = 1;
      v25 = v28;
LABEL_8:
      sub_1000028A0(v25, v24, 1, v12);
      sub_100006A20();
      return;
    }

    if (v19 >= *(v20 + 16))
    {
      break;
    }

    v22 = v20;
    (*(v14 + 16))(v1, v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v12);
    sub_1000E8714();
    sub_1000EB1A4();
    v23 = sub_1000E86C4();
    (*(v5 + 8))(v31, v32);
    (*v21)(v29, v30);
    if (v23)
    {
      v26 = *(v14 + 32);
      v26(v27, v1, v12);
      v25 = v28;
      v26(v28, v27, v12);
      v24 = 0;
      goto LABEL_8;
    }

    ++v19;
    (*(v14 + 8))(v1, v12);
    v20 = v22;
  }

  __break(1u);
}

uint64_t sub_10004572C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465736E7573 && a2 == 0xE600000000000000)
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

uint64_t sub_1000457F0(char a1)
{
  if (a1)
  {
    return 0x7465736E7573;
  }

  else
  {
    return 0x657369726E7573;
  }
}

void sub_100045824()
{
  sub_100006A58();
  v31 = v1;
  v3 = v2;
  v32 = sub_1000E8604();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000091AC();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v11 = sub_10004B738();
  type metadata accessor for AggregateWeatherViewModel.SunEvent(v11);
  sub_1000069E4();
  __chkstk_darwin(v12);
  sub_1000091AC();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  v19 = sub_100002A10(&qword_100131248, &unk_1000F1A10);
  sub_100009210(v19);
  sub_100009204();
  v21 = __chkstk_darwin(v20);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_100049C54(v3, &v31 - v22);
  sub_100049C54(v31, &v23[v24]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10004B460();
    sub_100049C54(v23, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v32;
      (*(v5 + 32))(v0, &v23[v24], v32);
      sub_1000E85A4();
      v26 = *(v5 + 8);
      v26(v0, v29);
      v27 = v18;
      v28 = v29;
      goto LABEL_6;
    }

LABEL_8:
    (*(v5 + 8))(v18, v32);
    sub_100008E48(v23, &qword_100131248, &unk_1000F1A10);
    goto LABEL_9;
  }

  sub_10004B460();
  sub_100049C54(v23, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = v15;
    goto LABEL_8;
  }

  v25 = v32;
  (*(v5 + 32))(v9, &v23[v24], v32);
  sub_1000E85A4();
  v26 = *(v5 + 8);
  v26(v9, v25);
  v27 = v15;
  v28 = v25;
LABEL_6:
  v26(v27, v28);
  sub_10004B548();
  sub_100049600(v23, v30);
LABEL_9:
  sub_100006A20();
}

uint64_t sub_100045B10(void *a1)
{
  sub_100002A10(&qword_1001311E8, &qword_1000F19B0);
  sub_1000090D4();
  v46 = v4;
  v47 = v3;
  sub_100009204();
  __chkstk_darwin(v5);
  sub_10000D58C();
  v45 = v6;
  sub_100002A10(&qword_1001311F0, &qword_1000F19B8);
  sub_1000090D4();
  v43 = v8;
  v44 = v7;
  sub_100009204();
  __chkstk_darwin(v9);
  sub_10000D58C();
  v42 = v10;
  sub_10000921C();
  v11 = sub_1000E8604();
  sub_1000090D4();
  v48 = v12;
  __chkstk_darwin(v13);
  sub_1000091AC();
  v41 = v14 - v15;
  sub_10004B6F4();
  __chkstk_darwin(v16);
  v17 = sub_10004B738();
  type metadata accessor for AggregateWeatherViewModel.SunEvent(v17);
  sub_1000069E4();
  __chkstk_darwin(v18);
  sub_100006A10();
  v21 = v20 - v19;
  v22 = sub_100002A10(&qword_1001311F8, &qword_1000F19C0);
  sub_1000090D4();
  v50 = v23;
  sub_100009204();
  __chkstk_darwin(v24);
  v26 = &v40 - v25;
  sub_100008DA8(a1, a1[3]);
  sub_10004A8C0();
  v27 = v48;
  sub_1000EC6A4();
  sub_10004B460();
  sub_100049C54(v49, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *(v27 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v41;
    v29(v41, v21, v11);
    v52 = 1;
    sub_10004A914();
    v31 = v45;
    sub_1000EC534();
    sub_10004B3A4();
    sub_1000495B8(v32, v33, &protocol conformance descriptor for Date);
    v34 = v47;
    sub_1000EC594();
    (*(v46 + 8))(v31, v34);
    v1 = v30;
  }

  else
  {
    v29(v1, v21, v11);
    v51 = 0;
    sub_10004A968();
    sub_1000EC534();
    sub_10004B3A4();
    sub_1000495B8(v35, v36, &protocol conformance descriptor for Date);
    sub_1000EC594();
    v37 = sub_10004B490();
    v38(v37);
  }

  (*(v27 + 8))(v1, v11);
  return (*(v50 + 8))(v26, v22);
}

uint64_t sub_100045F58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100002A10(&qword_100131218, &qword_1000F19C8);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_10000D58C();
  sub_100002A10(&qword_100131220, &qword_1000F19D0);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v6);
  sub_10000D58C();
  sub_100002A10(&qword_100131228, &qword_1000F19D8);
  sub_1000090D4();
  v45 = v7;
  sub_100009204();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_1000069E4();
  __chkstk_darwin(v10);
  sub_1000091AC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_10004B584();
  __chkstk_darwin(v15);
  sub_10004B640();
  sub_100008DA8(a1, a1[3]);
  sub_10004A8C0();
  sub_1000EC694();
  if (v46)
  {
    goto LABEL_8;
  }

  v47 = a1;
  v16 = sub_1000EC524();
  result = sub_1000814FC(v16, 0);
  if (v19 == v20 >> 1)
  {
LABEL_7:
    v28 = sub_1000EC414();
    swift_allocError();
    v30 = v29;
    sub_100002A10(&qword_10012F440, &unk_1000F19E0);
    *v30 = v9;
    sub_1000EC4B4();
    sub_1000EC404();
    (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = sub_10004B5A4();
    v32(v31, v45);
    a1 = v47;
LABEL_8:
    v33 = a1;
    return sub_100009068(v33);
  }

  if (v19 < (v20 >> 1))
  {
    v48 = *(v18 + v19);
    sub_1000814F8(v19 + 1);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      if (v48)
      {
        sub_10004A914();
        sub_10004B6BC(&type metadata for AggregateWeatherViewModel.SunEvent.SunsetCodingKeys);
        v25 = v2;
        sub_1000E8604();
        sub_10004B3A4();
        sub_1000495B8(v26, v27, &protocol conformance descriptor for Date);
        sub_10004B74C();
        swift_unknownObjectRelease();
        v36 = sub_10004B490();
        v37(v36);
        v38 = sub_10004B610();
        v39(v38);
      }

      else
      {
        sub_10004A968();
        sub_10004B6BC(&type metadata for AggregateWeatherViewModel.SunEvent.SunriseCodingKeys);
        v25 = v2;
        sub_1000E8604();
        sub_10004B3A4();
        sub_1000495B8(v34, v35, &protocol conformance descriptor for Date);
        v13 = v3;
        sub_10004B74C();
        swift_unknownObjectRelease();
        v40 = sub_10004B490();
        v41(v40);
        v42 = sub_10004B5A4();
        v43(v42, v45);
      }

      swift_storeEnumTagMultiPayload();
      sub_100049658(v13, v25);
      sub_100049658(v25, a2);
      v33 = v47;
      return sub_100009068(v33);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100046550(uint64_t a1, uint64_t a2)
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

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001000FC0D0 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F46796C72756F68 && a2 == 0xEF73747361636572;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F46796C696164 && a2 == 0xEE00737473616365;
          if (v9 || (sub_1000EC5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
            if (v10 || (sub_1000EC5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001000FC0F0 == a2;
              if (v11 || (sub_1000EC5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73746E657665 && a2 == 0xE600000000000000;
                if (v12 || (sub_1000EC5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x736E654461746164 && a2 == 0xEE00656C62615465;
                  if (v13 || (sub_1000EC5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
                    if (v14 || (sub_1000EC5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x80000001000FC110 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1000EC5D4();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1000468D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    case 4:
      result = 0x726F46796C696164;
      break;
    case 5:
      result = 0x696C617551726961;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x73746E657665;
      break;
    case 8:
      result = 0x736E654461746164;
      break;
    case 9:
      result = 0x5255656372756F73;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100046A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004572C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100046A7C(uint64_t a1)
{
  v2 = sub_10004A8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046AB8(uint64_t a1)
{
  v2 = sub_10004A8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100046AF4(uint64_t a1)
{
  v2 = sub_10004A968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046B30(uint64_t a1)
{
  v2 = sub_10004A968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100046B6C(uint64_t a1)
{
  v2 = sub_10004A914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046BA8(uint64_t a1)
{
  v2 = sub_10004A914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100046C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100046550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100046C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000468C8();
  *a1 = result;
  return result;
}

uint64_t sub_100046C78(uint64_t a1)
{
  v2 = sub_1000496B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046CB4(uint64_t a1)
{
  v2 = sub_1000496B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void static AggregateWeatherViewModel.__derived_struct_equals(_:_:)()
{
  sub_100006A58();
  v2 = v1;
  v4 = v3;
  v121 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_1000069E4();
  __chkstk_darwin(v5);
  sub_10004B3F0();
  v117 = v6;
  v7 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v7);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_10000D58C();
  v118 = v9;
  v120 = sub_100002A10(&qword_100130EC0, &qword_1000F1668);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v10);
  sub_10000D58C();
  v122 = v11;
  sub_10000921C();
  v127 = sub_1000E8524();
  sub_1000090D4();
  v124 = v12;
  __chkstk_darwin(v13);
  sub_10004B3F0();
  v119 = v14;
  v15 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  sub_100009210(v15);
  sub_100009204();
  __chkstk_darwin(v16);
  sub_10000D58C();
  v123 = v17;
  v125 = sub_100002A10(&qword_100130ED0, &unk_1000F1678);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v18);
  sub_10000D58C();
  v126 = v19;
  sub_10000921C();
  v20 = sub_1000EBAF4();
  sub_1000090D4();
  v129 = v21;
  __chkstk_darwin(v22);
  sub_10004B3F0();
  v128 = v23;
  v24 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  sub_100009210(v24);
  sub_100009204();
  __chkstk_darwin(v25);
  v27 = &v113 - v26;
  v28 = sub_100002A10(&qword_100130ED8, &qword_1000F1688);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v29);
  sub_10000D58C();
  v130 = v30;
  v31 = sub_10000921C();
  v32 = type metadata accessor for AirQualityViewModel(v31);
  sub_1000069E4();
  __chkstk_darwin(v33);
  sub_100006A10();
  sub_10004B700();
  v34 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  sub_100009210(v34);
  sub_100009204();
  __chkstk_darwin(v35);
  v37 = &v113 - v36;
  v38 = sub_100002A10(&qword_100130EE8, &qword_1000F1698);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v39);
  v41 = &v113 - v40;
  if ((sub_1000E8614() & 1) == 0)
  {
    goto LABEL_29;
  }

  v116 = v20;
  v42 = type metadata accessor for AggregateWeatherViewModel(0);
  if ((sub_1000E9A04() & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((sub_1000EB604() & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_100047D9C();
  if ((v43 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_10004B61C();
  sub_100047D9C();
  if ((v44 & 1) == 0)
  {
    goto LABEL_29;
  }

  v115 = v42;
  v45 = *(v42 + 36);
  v46 = *(v38 + 48);
  v113 = v4;
  v47 = v4 + v45;
  v48 = v45;
  sub_100019210(v47, v41, &qword_100130EE0, &qword_1000F1690);
  v114 = v2;
  sub_100019210(v2 + v48, &v41[v46], &qword_100130EE0, &qword_1000F1690);
  sub_10000D4FC(v41, 1, v32);
  if (v57)
  {
    sub_10000D4FC(&v41[v46], 1, v32);
    if (v57)
    {
      sub_100008E48(v41, &qword_100130EE0, &qword_1000F1690);
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  sub_100019210(v41, v37, &qword_100130EE0, &qword_1000F1690);
  sub_10000D4FC(&v41[v46], 1, v32);
  if (v57)
  {
    sub_100049600(v37, type metadata accessor for AirQualityViewModel);
LABEL_19:
    v58 = &qword_100130EE8;
    v59 = &qword_1000F1698;
LABEL_27:
    v64 = v41;
LABEL_28:
    sub_100008E48(v64, v58, v59);
    goto LABEL_29;
  }

  sub_100049658(&v41[v46], v0);
  v60 = sub_1000E8614();
  if ((v60 & 1) == 0 || (sub_1000E85A4() & 1) == 0 || *&v37[*(v32 + 24)] != *(v0 + *(v32 + 24)) || (sub_1000E8E74() & 1) == 0)
  {
    sub_100049600(v0, type metadata accessor for AirQualityViewModel);
    sub_100049600(v37, type metadata accessor for AirQualityViewModel);
    v58 = &qword_100130EE0;
    v59 = &qword_1000F1690;
    goto LABEL_27;
  }

  v61 = sub_1000E8F54();
  sub_100049600(v0, type metadata accessor for AirQualityViewModel);
  v62 = sub_10004B610();
  sub_100049600(v62, v63);
  sub_100008E48(v41, &qword_100130EE0, &qword_1000F1690);
  if ((v61 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v49 = v115;
  v50 = *(v115 + 40);
  v51 = *(v28 + 48);
  v52 = v113;
  v53 = v130;
  sub_100019210(v113 + v50, v130, &qword_1001309D8, &qword_1000F10F0);
  v54 = v114 + v50;
  v55 = v114;
  sub_100019210(v54, v53 + v51, &qword_1001309D8, &qword_1000F10F0);
  v56 = v116;
  sub_10000D4FC(v53, 1, v116);
  if (v57)
  {
    sub_1000199F0(v53 + v51);
    if (v57)
    {
      sub_100008E48(v53, &qword_1001309D8, &qword_1000F10F0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_100019210(v53, v27, &qword_1001309D8, &qword_1000F10F0);
  sub_1000199F0(v53 + v51);
  if (v65)
  {
    (*(v129 + 8))(v27, v56);
LABEL_33:
    v58 = &qword_100130ED8;
    v59 = &qword_1000F1688;
    v64 = v53;
    goto LABEL_28;
  }

  v66 = v129;
  v67 = v53 + v51;
  v68 = v128;
  (*(v129 + 32))(v128, v67, v56);
  sub_10004B478();
  sub_1000495B8(v69, v70, &protocol conformance descriptor for NextHourPrecipitationChartViewModel);
  sub_10004B68C();
  v71 = sub_1000EBE24();
  v72 = *(v66 + 8);
  v72(v68, v56);
  v72(v27, v56);
  sub_100008E48(v53, &qword_1001309D8, &qword_1000F10F0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_35:
  if ((sub_100047F64(*(v52 + *(v49 + 44)), *(v55 + *(v49 + 44))) & 1) == 0 || !sub_10009699C(*(v52 + *(v49 + 48)), *(v52 + *(v49 + 48) + 8), *(v55 + *(v49 + 48)), *(v55 + *(v49 + 48) + 8)))
  {
    goto LABEL_29;
  }

  v73 = v126;
  v74 = *(v125 + 48);
  sub_100019ACC();
  sub_100019210(v75, v76, v77, v78);
  sub_100019ACC();
  sub_100019210(v79, v80, v81, v82);
  v83 = v127;
  sub_10000D4FC(v73, 1, v127);
  if (v57)
  {
    sub_10000D4FC(v73 + v74, 1, v83);
    if (v57)
    {
      sub_100008E48(v73, &qword_100130EC8, &qword_1000F1670);
LABEL_47:
      v95 = *(v120 + 48);
      v96 = v122;
      sub_100019ACC();
      sub_100019210(v97, v98, v99, v100);
      v101 = v96;
      sub_100019ACC();
      sub_100019210(v102, v103, v104, v105);
      v106 = v121;
      sub_10000D4FC(v96, 1, v121);
      if (v57)
      {
        sub_10000D4FC(v96 + v95, 1, v106);
        if (v57)
        {
          sub_100008E48(v96, &qword_100130EB8, &qword_1000F1660);
          goto LABEL_29;
        }
      }

      else
      {
        v107 = v96;
        v108 = v118;
        sub_100019210(v107, v118, &qword_100130EB8, &qword_1000F1660);
        sub_10000D4FC(v101 + v95, 1, v106);
        if (!v109)
        {
          v111 = v101 + v95;
          v112 = v117;
          sub_100049658(v111, v117);
          sub_100045824();
          sub_100049600(v112, type metadata accessor for AggregateWeatherViewModel.SunEvent);
          sub_100049600(v108, type metadata accessor for AggregateWeatherViewModel.SunEvent);
          sub_100008E48(v101, &qword_100130EB8, &qword_1000F1660);
          goto LABEL_29;
        }

        sub_10004B548();
        sub_100049600(v108, v110);
      }

      v58 = &qword_100130EC0;
      v59 = &qword_1000F1668;
      v64 = v101;
      goto LABEL_28;
    }

    goto LABEL_45;
  }

  sub_100019210(v73, v123, &qword_100130EC8, &qword_1000F1670);
  sub_10000D4FC(v73 + v74, 1, v83);
  if (v84)
  {
    v85 = sub_10004B68C();
    v86(v85);
LABEL_45:
    v58 = &qword_100130ED0;
    v59 = &unk_1000F1678;
    v64 = v73;
    goto LABEL_28;
  }

  v87 = v124;
  v88 = v73 + v74;
  v89 = v119;
  (*(v124 + 32))(v119, v88, v83);
  sub_10004B448();
  sub_1000495B8(v90, v91, &protocol conformance descriptor for URL);
  v92 = sub_1000EBE24();
  v93 = *(v87 + 8);
  v93(v89, v83);
  v94 = sub_10004B68C();
  (v93)(v94);
  sub_100008E48(v73, &qword_100130EC8, &qword_1000F1670);
  if (v92)
  {
    goto LABEL_47;
  }

LABEL_29:
  sub_100006A20();
}

void sub_10004788C()
{
  sub_100006A58();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000E8604();
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10004B3F0();
  v44 = v9;
  v10 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v10);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_10000D58C();
  v48 = v12;
  v46 = sub_100002A10(&qword_10012F910, &qword_1000F19F0);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v13);
  sub_10004B700();
  v45 = type metadata accessor for TemplateDescriptions(0);
  v14 = __chkstk_darwin(v45);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v19 = (&v39 - v18);
  v20 = *(v4 + 16);
  if (v20 == *(v2 + 16) && v20 && v4 != v2)
  {
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = v4 + v21;
    v23 = v2 + v21;
    v39 = (v7 + 32);
    v40 = (v7 + 8);
    v42 = *(v17 + 72);
    v43 = v5;
    v24 = &qword_1000EEF30;
    while (1)
    {
      sub_100049C54(v22, v19);
      sub_100049C54(v23, v16);
      v25 = *v19 == *v16 && v19[1] == v16[1];
      if (!v25 && (sub_1000EC5D4() & 1) == 0)
      {
        break;
      }

      v26 = v19[2] == v16[2] && v19[3] == v16[3];
      if (!v26 && (sub_1000EC5D4() & 1) == 0)
      {
        break;
      }

      v27 = v16[4];
      if (v19[4])
      {
        if (!v27)
        {
          break;
        }

        sub_10004A9BC();
        v29 = v28;

        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      else if (v27)
      {
        break;
      }

      v47 = v20;
      v30 = *(v45 + 28);
      v31 = *(v46 + 48);
      v32 = v24;
      sub_100019210(v19 + v30, v0, &qword_10012F048, v24);
      sub_100019210(v16 + v30, v0 + v31, &qword_10012F048, v24);
      sub_1000199F0(v0);
      if (v25)
      {
        sub_1000199F0(v0 + v31);
        v33 = v47;
        if (!v25)
        {
          goto LABEL_30;
        }

        sub_100008E48(v0, &qword_10012F048, v24);
        sub_100049600(v16, type metadata accessor for TemplateDescriptions);
        sub_100049600(v19, type metadata accessor for TemplateDescriptions);
      }

      else
      {
        sub_100019210(v0, v48, &qword_10012F048, v24);
        sub_1000199F0(v0 + v31);
        if (v34)
        {
          (*v40)(v48, v5);
LABEL_30:
          sub_100008E48(v0, &qword_10012F910, &qword_1000F19F0);
          break;
        }

        v35 = v44;
        (*v39)(v44, v0 + v31, v5);
        sub_10004B3A4();
        sub_1000495B8(&qword_10012F920, v36, &protocol conformance descriptor for Date);
        v41 = sub_1000EBE24();
        v37 = *v40;
        v38 = v35;
        v24 = v32;
        (*v40)(v38, v5);
        v37(v48, v5);
        sub_100008E48(v0, &qword_10012F048, v32);
        sub_100049600(v16, type metadata accessor for TemplateDescriptions);
        sub_100049600(v19, type metadata accessor for TemplateDescriptions);
        v33 = v47;
        if ((v41 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v5 = v43;
      v23 += v42;
      v22 += v42;
      v20 = v33 - 1;
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    sub_100049600(v16, type metadata accessor for TemplateDescriptions);
    sub_100049600(v19, type metadata accessor for TemplateDescriptions);
  }

LABEL_32:
  sub_100006A20();
}

void sub_100047D9C()
{
  sub_100006A58();
  v32 = v1;
  v33 = v2;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  sub_1000090D4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000091AC();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  sub_10004B640();
  v17 = *(v7 + 16);
  if (v17 == *(v5 + 16) && v17 && v7 != v5)
  {
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v19 = v7 + v18;
    v20 = v5 + v18;
    v22 = *(v11 + 16);
    v21 = v11 + 16;
    v23 = (v21 - 8);
    v29 = *(v21 + 56);
    v30 = v22;
    while (1)
    {
      v24 = sub_10004B610();
      v30(v24);
      if (!v17)
      {
        break;
      }

      v25 = v21;
      (v30)(v15, v20, v9);
      sub_1000495B8(v31, v32, v33);
      v26 = sub_1000EBE24();
      v27 = *v23;
      (*v23)(v15, v9);
      v27(v0, v9);
      if (v26)
      {
        v20 += v29;
        v19 += v29;
        v28 = v17-- == 1;
        v21 = v25;
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_100006A20();
  }
}

uint64_t sub_100047F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_100049C54(v13, v10);
        sub_100049C54(v14, v7);
        v16 = sub_100016D08(v10, v7);
        sub_100049600(v7, type metadata accessor for EventViewModel);
        sub_100049600(v10, type metadata accessor for EventViewModel);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t AggregateWeatherViewModel.encode(to:)(void *a1)
{
  v4 = sub_100002A10(&qword_100130F00, &unk_1000F16A0);
  sub_1000090D4();
  v6 = v5;
  sub_100009204();
  __chkstk_darwin(v7);
  sub_10004B700();
  sub_100008DA8(a1, a1[3]);
  sub_1000496B0();
  sub_1000EC6A4();
  sub_1000E8634();
  sub_10004B530();
  sub_1000495B8(v8, v9, &protocol conformance descriptor for UUID);
  sub_10004B3DC();
  sub_1000EC594();
  if (!v1)
  {
    type metadata accessor for AggregateWeatherViewModel(0);
    sub_10004B634(1);
    sub_1000E9A84();
    sub_10004B518();
    sub_1000495B8(v10, v11, &protocol conformance descriptor for Location);
    sub_10004B3BC();
    sub_1000EC594();
    sub_10004B634(2);
    sub_1000EB674();
    sub_10004B500();
    sub_1000495B8(v12, v13, &protocol conformance descriptor for CurrentObservationViewModel);
    sub_10004B3BC();
    sub_1000EC594();
    sub_100002A10(&qword_100130F28, &qword_1000F42A0);
    sub_100049704();
    sub_10004B3DC();
    sub_1000EC594();
    sub_100002A10(&qword_100130F40, &qword_1000F16B0);
    sub_1000497B8();
    sub_10004B3DC();
    sub_1000EC594();
    v14 = sub_10004B634(5);
    type metadata accessor for AirQualityViewModel(v14);
    sub_10004B4E8();
    sub_1000495B8(v15, v16, &unk_1000F2B0C);
    sub_10004B3BC();
    sub_1000EC554();
    sub_10004B634(6);
    sub_1000EBAF4();
    sub_10004B478();
    sub_1000495B8(v17, v18, &protocol conformance descriptor for NextHourPrecipitationChartViewModel);
    sub_10004B3BC();
    sub_1000EC554();
    sub_100002A10(&qword_100130F68, &qword_1000F16B8);
    sub_10004986C();
    sub_10004B3DC();
    sub_1000EC594();
    sub_100049920();
    sub_1000EC594();
    sub_10004B634(9);
    sub_1000E8524();
    sub_10004B448();
    sub_1000495B8(v19, v20, &protocol conformance descriptor for URL);
    sub_10004B3BC();
    sub_1000EC554();
    v21 = sub_10004B634(10);
    type metadata accessor for AggregateWeatherViewModel.SunEvent(v21);
    sub_10004B4D0();
    sub_1000495B8(v22, v23, &unk_1000F1938);
    sub_10004B3DC();
    sub_1000EC554();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t AggregateWeatherViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v4 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v4);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_10000D58C();
  v83 = v6;
  v7 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  sub_100009210(v7);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_10000D58C();
  v84 = v9;
  v10 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  sub_100009210(v10);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_10000D58C();
  v85 = v12;
  v13 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  sub_100009210(v13);
  sub_100009204();
  __chkstk_darwin(v14);
  sub_10000D58C();
  v86 = v15;
  sub_10000921C();
  v92 = sub_1000EB674();
  sub_1000090D4();
  v90 = v16;
  __chkstk_darwin(v17);
  sub_10004B3F0();
  v88 = v18;
  sub_10000921C();
  v94 = sub_1000E9A84();
  sub_1000090D4();
  v91 = v19;
  __chkstk_darwin(v20);
  sub_100006A10();
  v23 = v22 - v21;
  v24 = sub_1000E8634();
  sub_1000090D4();
  v95 = v25;
  __chkstk_darwin(v26);
  sub_100006A10();
  v29 = v28 - v27;
  v93 = sub_100002A10(&qword_100130F98, &qword_1000F16C0);
  sub_1000090D4();
  v87 = v30;
  sub_100009204();
  __chkstk_darwin(v31);
  v33 = &v81 - v32;
  type metadata accessor for AggregateWeatherViewModel(0);
  sub_1000069E4();
  __chkstk_darwin(v34);
  sub_100006A10();
  sub_10004B700();
  v101 = v35;
  v36 = v35[14];
  v37 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  v98 = v36;
  v99 = v2;
  sub_10000D52C();
  sub_1000028A0(v38, v39, v40, v37);
  v41 = a1[3];
  v97 = a1;
  sub_100008DA8(a1, v41);
  sub_1000496B0();
  v96 = v33;
  v42 = v100;
  sub_1000EC694();
  LODWORD(v2) = v42;
  v89 = v24;
  if (v42)
  {
    v100 = v42;
    v47 = 0;
    v48 = 0;
    sub_10004B5B4();
    v49 = v99;
    sub_100009068(v97);
    v50 = 0;
    v51 = 0;
    goto LABEL_11;
  }

  v43 = v88;
  v81 = v37;
  v44 = v87;
  LOBYTE(v102) = 0;
  sub_10004B530();
  sub_1000495B8(v45, v46, &protocol conformance descriptor for UUID);
  sub_10004B650();
  sub_1000EC514();
  v54 = v99;
  (*(v95 + 32))(v99, v29, v24);
  LOBYTE(v102) = 1;
  sub_10004B518();
  sub_1000495B8(v55, v56, &protocol conformance descriptor for Location);
  sub_10004B650();
  v48 = v23;
  v57 = v94;
  sub_1000EC514();
  LODWORD(v24) = v44;
  v2 = v101;
  (*(v91 + 32))(v54 + v101[5], v23, v57);
  LOBYTE(v102) = 2;
  sub_10004B500();
  sub_1000495B8(v58, v59, &protocol conformance descriptor for CurrentObservationViewModel);
  sub_10004B650();
  v60 = v92;
  sub_1000EC514();
  (*(v90 + 32))(v54 + v2[6], v43, v60);
  sub_100002A10(&qword_100130F28, &qword_1000F42A0);
  v105 = 3;
  sub_100049974();
  sub_10004B70C();
  sub_10004B430();
  sub_1000EC514();
  *(v54 + v2[7]) = v102;
  sub_100002A10(&qword_100130F40, &qword_1000F16B0);
  v105 = 4;
  sub_100049A28();
  sub_10004B70C();
  sub_10004B430();
  sub_1000EC514();
  *(v54 + v2[8]) = v102;
  type metadata accessor for AirQualityViewModel(0);
  LOBYTE(v102) = 5;
  sub_10004B4E8();
  sub_1000495B8(v61, v62, &unk_1000F2AE4);
  sub_10004B650();
  v63 = v86;
  sub_10004B430();
  sub_1000EC4D4();
  sub_100019170(v63, v54 + v2[9], &qword_100130EE0, &qword_1000F1690);
  sub_1000EBAF4();
  LOBYTE(v102) = 6;
  sub_10004B478();
  sub_1000495B8(v64, v65, &protocol conformance descriptor for NextHourPrecipitationChartViewModel);
  sub_10004B650();
  v66 = v85;
  sub_10004B430();
  sub_1000EC4D4();
  sub_100019170(v66, v54 + v2[10], &qword_1001309D8, &qword_1000F10F0);
  sub_100002A10(&qword_100130F68, &qword_1000F16B8);
  v105 = 7;
  sub_100049ADC();
  sub_10004B70C();
  sub_10004B430();
  sub_1000EC514();
  *(v54 + v2[11]) = v102;
  v105 = 8;
  sub_100049B90();
  sub_10004B70C();
  sub_1000EC514();
  v100 = 0;
  v67 = v54 + v101[12];
  *v67 = v102;
  *(v67 + 8) = v103;
  sub_1000E8524();
  v104 = 9;
  sub_10004B448();
  sub_1000495B8(v68, v69, &protocol conformance descriptor for URL);
  v70 = v100;
  sub_1000EC4D4();
  v100 = v70;
  if (v70)
  {
    LODWORD(a1) = v44 + 8;
    v71 = sub_10004B560();
    v72(v71);
    sub_100009068(v97);
    v47 = 0;
    sub_10004B418();
    v51 = 1;
    v50 = 1;
LABEL_24:
    v49 = v99;
    (*(v95 + 8))(v99, v89);
LABEL_11:
    v52 = v101;
    if (v48)
    {
      (*(v90 + 8))(v49 + v101[6], v92);
      if ((a1 & 1) == 0)
      {
LABEL_13:
        if (v24)
        {
LABEL_14:

          if ((v2 & 1) == 0)
          {
LABEL_15:
            if (v51)
            {
LABEL_16:
              sub_100008E48(v49 + v52[10], &qword_1001309D8, &qword_1000F10F0);
              if ((v50 & 1) == 0)
              {
LABEL_17:
                if (!v47)
                {
                  return sub_100008E48(v49 + v98, &qword_100130EB8, &qword_1000F1660);
                }

LABEL_18:
                sub_100008E48(v49 + v52[13], &qword_100130EC8, &qword_1000F1670);
                return sub_100008E48(v49 + v98, &qword_100130EB8, &qword_1000F1660);
              }

LABEL_9:

              if ((v47 & 1) == 0)
              {
                return sub_100008E48(v49 + v98, &qword_100130EB8, &qword_1000F1660);
              }

              goto LABEL_18;
            }

LABEL_8:
            if (!v50)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          }

LABEL_7:
          sub_100008E48(v49 + v52[9], &qword_100130EE0, &qword_1000F1690);
          if (v51)
          {
            goto LABEL_16;
          }

          goto LABEL_8;
        }

LABEL_6:
        if (!v2)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }
    }

    else if (!a1)
    {
      goto LABEL_13;
    }

    if (v24)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_100019170(v84, v99 + v101[13], &qword_100130EC8, &qword_1000F1670);
  v104 = 10;
  sub_10004B4D0();
  sub_1000495B8(v73, v74, &unk_1000F1910);
  v75 = v100;
  sub_1000EC4D4();
  v100 = v75;
  if (v75)
  {
    LODWORD(a1) = v44 + 8;
    v76 = sub_10004B560();
    v77(v76);
    sub_100009068(v97);
    sub_10004B418();
    v51 = 1;
    v50 = 1;
    v47 = 1;
    goto LABEL_24;
  }

  v78 = sub_10004B560();
  v79(v78);
  v80 = v99;
  sub_100049BE4(v83, v99 + v98);
  sub_100049C54(v80, v82);
  sub_100009068(v97);
  return sub_100049600(v80, type metadata accessor for AggregateWeatherViewModel);
}

uint64_t InstantWeatherViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000E8634();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void AggregateWeatherViewModel.nextHourPrecipitationShift(startDate:timeZone:)()
{
  sub_100006A58();
  v36 = v2;
  v35 = type metadata accessor for EventViewModel(0);
  sub_1000090D4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100006A10();
  v8 = (v7 - v6);
  v9 = sub_100002A10(&qword_100131010, &unk_1000F6870);
  v10 = sub_100009210(v9);
  __chkstk_darwin(v10);
  sub_1000091AC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_10004B640();
  v15 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  sub_100009210(v15);
  sub_100009204();
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for AggregateWeatherViewModel(0);
  sub_100019210(v0 + *(v19 + 40), v18, &qword_1001309D8, &qword_1000F10F0);
  v20 = sub_1000EBAF4();
  v21 = sub_100005B30(v18, 1, v20);
  sub_100008E48(v18, &qword_1001309D8, &qword_1000F10F0);
  if (v21 == 1)
  {
    sub_1000E8F24();
  }

  else
  {
    v22 = v36;
    v23 = 0;
    v24 = *(v0 + *(v19 + 44));
    v25 = *(v24 + 16);
    while (1)
    {
      if (v25 == v23)
      {
        v27 = 1;
        goto LABEL_10;
      }

      if (v23 >= *(v24 + 16))
      {
        __break(1u);
        return;
      }

      sub_100049C54(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v8);
      if (*v8 == 6)
      {
        break;
      }

      ++v23;
      sub_10004B56C();
      sub_100049600(v8, v26);
    }

    sub_100049658(v8, v1);
    v27 = 0;
LABEL_10:
    v28 = v35;
    sub_1000028A0(v1, v27, 1, v35);
    sub_100019170(v1, v13, &qword_100131010, &unk_1000F6870);
    sub_1000199F0(v13);
    if (!v29)
    {
      sub_100019210(v13 + *(v28 + 52), v22, &qword_10012F6F8, &qword_1000EFCB0);
      sub_10004B56C();
      sub_100049600(v13, v34);
      goto LABEL_14;
    }

    sub_100008E48(v13, &qword_100131010, &unk_1000F6870);
    sub_1000E8F24();
  }

  sub_10000D52C();
  sub_1000028A0(v30, v31, v32, v33);
LABEL_14:
  sub_100006A20();
}

uint64_t AggregateWeatherViewModel.hourlyPrecipitationForecast.getter()
{
  type metadata accessor for AggregateWeatherViewModel(0);
}

uint64_t AggregateWeatherViewModel.dailyPrecipitationForecast.getter()
{
  type metadata accessor for AggregateWeatherViewModel(0);
}

uint64_t sub_100049528@<X0>(uint64_t *a1@<X8>)
{
  result = AggregateWeatherViewModel.hourlyPrecipitationForecast.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100049550@<X0>(uint64_t *a1@<X8>)
{
  result = AggregateWeatherViewModel.dailyPrecipitationForecast.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000495B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100049600(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100049658(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013D84();
  v4(v3);
  sub_1000069E4();
  v5 = sub_100019AC0();
  v6(v5);
  return a2;
}

unint64_t sub_1000496B0()
{
  result = qword_100130F08;
  if (!qword_100130F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F08);
  }

  return result;
}

unint64_t sub_100049704()
{
  result = qword_100130F30;
  if (!qword_100130F30)
  {
    sub_100002ABC(&qword_100130F28, &qword_1000F42A0);
    sub_1000495B8(&qword_100130F38, &type metadata accessor for HourlyForecastBannerViewModel, &protocol conformance descriptor for HourlyForecastBannerViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F30);
  }

  return result;
}

unint64_t sub_1000497B8()
{
  result = qword_100130F48;
  if (!qword_100130F48)
  {
    sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
    sub_1000495B8(&qword_100130F50, &type metadata accessor for DailyForecastViewModel, &protocol conformance descriptor for DailyForecastViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F48);
  }

  return result;
}

unint64_t sub_10004986C()
{
  result = qword_100130F70;
  if (!qword_100130F70)
  {
    sub_100002ABC(&qword_100130F68, &qword_1000F16B8);
    sub_1000495B8(&qword_100130F78, type metadata accessor for EventViewModel, &unk_1000EFFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F70);
  }

  return result;
}

unint64_t sub_100049920()
{
  result = qword_100130F80;
  if (!qword_100130F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F80);
  }

  return result;
}

unint64_t sub_100049974()
{
  result = qword_100130FB8;
  if (!qword_100130FB8)
  {
    sub_100002ABC(&qword_100130F28, &qword_1000F42A0);
    sub_1000495B8(&qword_100130FC0, &type metadata accessor for HourlyForecastBannerViewModel, &protocol conformance descriptor for HourlyForecastBannerViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FB8);
  }

  return result;
}

unint64_t sub_100049A28()
{
  result = qword_100130FC8;
  if (!qword_100130FC8)
  {
    sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
    sub_1000495B8(&qword_100130FD0, &type metadata accessor for DailyForecastViewModel, &protocol conformance descriptor for DailyForecastViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FC8);
  }

  return result;
}

unint64_t sub_100049ADC()
{
  result = qword_100130FE8;
  if (!qword_100130FE8)
  {
    sub_100002ABC(&qword_100130F68, &qword_1000F16B8);
    sub_1000495B8(&qword_100130FF0, type metadata accessor for EventViewModel, &unk_1000EFF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FE8);
  }

  return result;
}

unint64_t sub_100049B90()
{
  result = qword_100130FF8;
  if (!qword_100130FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FF8);
  }

  return result;
}

uint64_t sub_100049BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049C54(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013D84();
  v4(v3);
  sub_1000069E4();
  v5 = sub_100019AC0();
  v6(v5);
  return a2;
}

uint64_t sub_100049DE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_100049E4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100013D84();
  sub_1000E8634();
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_8:

    return sub_100005B30(v9, a2, v8);
  }

  sub_1000E9A84();
  sub_100006A04();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = v3 + v12;
    goto LABEL_8;
  }

  sub_1000EB674();
  sub_100006A04();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_100002A10(&qword_100130EE0, &qword_1000F1690);
    sub_100006A04();
    if (*(v18 + 84) == a2)
    {
      v8 = v17;
      v12 = a3[9];
    }

    else
    {
      sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
      sub_100006A04();
      if (*(v20 + 84) == a2)
      {
        v8 = v19;
        v12 = a3[10];
      }

      else
      {
        sub_100002A10(&qword_100130EC8, &qword_1000F1670);
        sub_100006A04();
        if (*(v22 + 84) == a2)
        {
          v8 = v21;
          v12 = a3[13];
        }

        else
        {
          v8 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
          v12 = a3[14];
        }
      }
    }

    goto LABEL_7;
  }

  v16 = *(v3 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_10004A098(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100013D84();
  sub_1000E8634();
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_1000E9A84();
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_1000EB674();
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[7]) = (a2 - 1);
          return;
        }

        sub_100002A10(&qword_100130EE0, &qword_1000F1690);
        sub_100006A04();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[9];
        }

        else
        {
          sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
          sub_100006A04();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[10];
          }

          else
          {
            sub_100002A10(&qword_100130EC8, &qword_1000F1670);
            sub_100006A04();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[13];
            }

            else
            {
              v10 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
              v14 = a4[14];
            }
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  sub_1000028A0(v11, a2, a2, v10);
}

void sub_10004A2CC(uint64_t a1)
{
  sub_1000E8634();
  if (v1 <= 0x3F)
  {
    sub_1000E9A84();
    if (v2 <= 0x3F)
    {
      sub_1000EB674();
      if (v3 <= 0x3F)
      {
        sub_10004A568(319, &qword_1001310A8, &type metadata accessor for HourlyForecastBannerViewModel, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_10004A568(319, &qword_100130DC8, &type metadata accessor for DailyForecastViewModel, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_10004A568(319, &qword_1001310B0, type metadata accessor for AirQualityViewModel, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_10004A568(319, &qword_1001310B8, &type metadata accessor for NextHourPrecipitationChartViewModel, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_10004A568(319, &qword_1001310C0, type metadata accessor for EventViewModel, &type metadata accessor for Array);
                if (v8 <= 0x3F)
                {
                  sub_10004A568(319, &qword_1001310C8, &type metadata accessor for URL, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_10004A568(319, &unk_1001310D0, type metadata accessor for AggregateWeatherViewModel.SunEvent, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
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
  }
}

void sub_10004A568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for AggregateWeatherViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AggregateWeatherViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x10004A720);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10004A758(uint64_t a1)
{
  result = sub_1000E8604();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10004A7BC()
{
  result = qword_1001311D0;
  if (!qword_1001311D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001311D0);
  }

  return result;
}

unint64_t sub_10004A814()
{
  result = qword_1001311D8;
  if (!qword_1001311D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001311D8);
  }

  return result;
}

unint64_t sub_10004A86C()
{
  result = qword_1001311E0;
  if (!qword_1001311E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001311E0);
  }

  return result;
}

unint64_t sub_10004A8C0()
{
  result = qword_100131200;
  if (!qword_100131200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131200);
  }

  return result;
}

unint64_t sub_10004A914()
{
  result = qword_100131208;
  if (!qword_100131208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131208);
  }

  return result;
}

unint64_t sub_10004A968()
{
  result = qword_100131210;
  if (!qword_100131210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131210);
  }

  return result;
}

void sub_10004A9BC()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v4 = sub_1000E8604();
  sub_1000090D4();
  v67 = v5;
  __chkstk_darwin(v6);
  sub_1000091AC();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_10000D56C();
  v66 = v11;
  v12 = sub_100002A10(&qword_100131230, &qword_1000F19F8);
  v13 = sub_100009210(v12);
  __chkstk_darwin(v13);
  sub_1000091AC();
  __chkstk_darwin(v14);
  v62 = v1;
  if (v3 == v1 || *(v3 + 16) != *(v62 + 16))
  {
LABEL_20:
    sub_100006A20();
  }

  else
  {
    v60 = (&v56 - v15);
    v61 = v16;
    v59 = v9;
    v17 = 0;
    v57 = v3;
    v18 = *(v3 + 64);
    v56 = v3 + 64;
    v19 = 1 << *(v3 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v63 = v67 + 16;
    v64 = (v67 + 32);
    v58 = v67 + 8;
    while (1)
    {
      v23 = v61;
      if (!v21)
      {
        break;
      }

      v65 = (v21 - 1) & v21;
      v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_12:
      v27 = (*(v57 + 48) + 16 * v24);
      v28 = *v27;
      v29 = v27[1];
      v31 = v66;
      v30 = v67;
      (*(v67 + 16))(v66, *(v57 + 56) + *(v67 + 72) * v24, v4);
      v32 = sub_100002A10(&qword_100131238, &unk_1000F1A00);
      v33 = *(v32 + 48);
      *v23 = v28;
      *(v23 + 1) = v29;
      (*(v30 + 32))(&v23[v33], v31, v4);
      sub_1000028A0(v23, 0, 1, v32);

LABEL_13:
      v34 = v60;
      sub_100019170(v23, v60, &qword_100131230, &qword_1000F19F8);
      v35 = sub_100002A10(&qword_100131238, &unk_1000F1A00);
      sub_1000199F0(v34);
      if (v36)
      {
        goto LABEL_20;
      }

      v37 = *(v35 + 48);
      v39 = *v34;
      v38 = v34[1];
      v40 = v62;
      (*v64)(v59, v34 + v37, v4);
      v41 = sub_1000A158C(v39, v38);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        v54 = sub_10004B68C();
        v55(v54);
        goto LABEL_20;
      }

      v45 = v66;
      v44 = v67;
      (*(v67 + 16))(v66, *(v40 + 56) + *(v67 + 72) * v41, v4);
      sub_10004B3A4();
      sub_1000495B8(&qword_10012F920, v46, &protocol conformance descriptor for Date);
      v47 = sub_1000EBE24();
      v48 = *(v44 + 8);
      v48(v45, v4);
      v49 = sub_10004B68C();
      (v48)(v49);
      v21 = v65;
      if ((v47 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v25 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        sub_100002A10(&qword_100131238, &unk_1000F1A00);
        sub_10000D52C();
        sub_1000028A0(v50, v51, v52, v53);
        v65 = 0;
        goto LABEL_13;
      }

      v26 = *(v56 + 8 * v25);
      ++v17;
      if (v26)
      {
        v65 = (v26 - 1) & v26;
        v24 = __clz(__rbit64(v26)) | (v25 << 6);
        v17 = v25;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10004ADF0()
{
  result = qword_100131240;
  if (!qword_100131240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100131240);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AggregateWeatherViewModel.SunEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10004AF00);
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

_BYTE *sub_10004AF4C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10004AFE8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004B024()
{
  result = qword_100131260;
  if (!qword_100131260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131260);
  }

  return result;
}

unint64_t sub_10004B07C()
{
  result = qword_100131268;
  if (!qword_100131268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131268);
  }

  return result;
}

unint64_t sub_10004B0D4()
{
  result = qword_100131270;
  if (!qword_100131270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131270);
  }

  return result;
}

unint64_t sub_10004B12C()
{
  result = qword_100131278;
  if (!qword_100131278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131278);
  }

  return result;
}

unint64_t sub_10004B184()
{
  result = qword_100131280;
  if (!qword_100131280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131280);
  }

  return result;
}

unint64_t sub_10004B1DC()
{
  result = qword_100131288;
  if (!qword_100131288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131288);
  }

  return result;
}

unint64_t sub_10004B234()
{
  result = qword_100131290;
  if (!qword_100131290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131290);
  }

  return result;
}

unint64_t sub_10004B28C()
{
  result = qword_100131298;
  if (!qword_100131298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131298);
  }

  return result;
}

unint64_t sub_10004B2E4()
{
  result = qword_1001312A0;
  if (!qword_1001312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001312A0);
  }

  return result;
}

uint64_t *sub_10004B338(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10004B4A0()
{
  *(v5 - 96) = v2;
  *(v5 - 184) = v0;
  v6 = *(v3 + 16);
  result = v4;
  *(v5 - 144) = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  *(v5 - 136) = v6;
  return result;
}

void sub_10004B5EC()
{
  *(v3 - 160) = v1;
  *(v3 - 152) = v2 + 8;
  *(v3 - 104) = v0 - 8;
  *(v3 - 128) = v0;
  *(v3 - 168) = v0 + 16;
}

uint64_t sub_10004B698()
{

  return static Measurement.< infix<A, B>(_:_:)(v1, v0);
}

uint64_t sub_10004B6BC(uint64_t a1)
{

  return sub_1000EC4A4();
}

void *sub_10004B74C()
{

  return sub_1000EC514();
}

uint64_t sub_10004B76C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_1000EA3B4();
  sub_1000090D4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EBC44();
  sub_1000090D4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v14);
  (*(v10 + 16))(v13, a2, v8);
  v20 = sub_100026CB4(v19, v13, a3, a4);
  (*(v10 + 8))(a2, v8);
  (*(v16 + 8))(a1, v14);
  return v20;
}

uint64_t sub_10004B92C()
{
  v0 = sub_100027034();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LargePrecipitationViewAttributesFactory(uint64_t a1)
{
  result = qword_1001312D8;
  if (!qword_1001312D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BA0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA214();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004BA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = sub_100002A10(&qword_100131388, &qword_1000F1E28);
  sub_1000090D4();
  v55 = v6;
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v58 = sub_100002A10(&qword_100131390, &qword_1000F1E30);
  sub_1000090D4();
  v60 = v10;
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  sub_100002A10(&qword_100131398, &qword_1000F1E38);
  sub_1000090D4();
  v61 = v14;
  v62 = v15;
  sub_100009204();
  __chkstk_darwin(v16);
  v56 = &v54 - v17;
  sub_100002A10(&qword_1001313A0, &unk_1000F1E40);
  sub_1000090D4();
  v63 = v18;
  v64 = v19;
  sub_100009204();
  __chkstk_darwin(v20);
  v59 = &v54 - v21;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v66 = sub_1000D88B8(3, a1, a2);
  v57 = v66;
  type metadata accessor for SunriseSunsetContentView(0);
  sub_10004C36C(&qword_1001313A8, type metadata accessor for SunriseSunsetContentView, &unk_1000FA08C);
  sub_10004C36C(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);

  sub_1000EBCD4();
  v22 = sub_1000EA354();
  v26 = sub_100015CA8(v22, v23, v24, v25);
  v28 = v27;
  v30 = v29;
  v31 = sub_10004C3B4();
  sub_1000EA474();
  sub_1000058EC(v26, v28, v30 & 1);

  (*(v55 + 8))(v9, v5);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v32 = sub_1000EBC44();
  sub_1000090D4();
  v34 = v33;
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000EFAD0;
  (*(v34 + 104))(v36 + v35, enum case for WidgetFamily.systemSmall(_:), v32);
  v66 = v5;
  v67 = v31;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v56;
  v39 = v58;
  sub_1000EA454();

  v40 = v39;
  (*(v60 + 8))(v13, v39);
  v41 = sub_1000EA354();
  v45 = sub_100015CA8(v41, v42, v43, v44);
  v47 = v46;
  LOBYTE(v35) = v48;
  v66 = v40;
  v67 = OpaqueTypeConformance2;
  sub_100015C48();
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v59;
  v51 = v61;
  sub_1000EA444();
  sub_1000058EC(v45, v47, v35 & 1);

  (*(v62 + 8))(v38, v51);
  v66 = v51;
  v67 = v49;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v52 = v63;
  sub_1000EA494();

  return (*(v64 + 8))(v50, v52);
}

uint64_t sub_10004C034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunriseSunsetContentView(0);
  sub_1000159C8(a1, a2 + v4[11]);
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
  v6 = swift_getKeyPath();
  *(a2 + v4[10]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[6];
  *v7 = KeyPath;
  v7[8] = 0;
  v8 = a2 + v4[9];
  *v8 = v6;
  v8[8] = 0;
  v9 = v4[12];
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  result = sub_100002750(v12, v14);
  *(a2 + v9) = result;
  return result;
}

uint64_t sub_10004C220()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.SunriseSunset(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_10004C33C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C220();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004C36C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004C3B4()
{
  result = qword_1001313B0;
  if (!qword_1001313B0)
  {
    sub_100002ABC(&qword_100131388, &qword_1000F1E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001313B0);
  }

  return result;
}

uint64_t sub_10004C434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA214();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004C464()
{
  v0 = sub_100002ABC(&qword_1001313A0, &unk_1000F1E40);
  v1 = sub_100002ABC(&qword_100131398, &qword_1000F1E38);
  v2 = sub_100002ABC(&qword_100131390, &qword_1000F1E30);
  v3 = sub_100002ABC(&qword_100131388, &qword_1000F1E28);
  sub_10004C3B4();
  sub_100015C78();
  sub_100015CC8(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  sub_100015C48();
  sub_100015CC8(v12, v13, v14, v15, v16, v17, v18, v19, v2);
  sub_100015C60();
  v35 = sub_100015CC8(v20, v21, v22, v23, v24, v25, v26, v27, v1);
  return sub_100015CC8(v35, &opaque type descriptor for <<opaque return type of WidgetConfiguration.enableContentMarginsForFirstParty(_:)>>, v28, v29, v30, v31, v32, v33, v0);
}

uint64_t sub_10004C534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_100002A10(&qword_1001313B8, &qword_1000F2010);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  sub_100002A10(&qword_1001313C0, &qword_1000F2018);
  sub_1000090D4();
  v47 = v11;
  v48 = v12;
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  sub_100002A10(&qword_1001313C8, &unk_1000F2020);
  sub_1000090D4();
  v49 = v15;
  v50 = v16;
  __chkstk_darwin(v15);
  v46 = &v45 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v52 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for TemperatureContentView(0);
  sub_10004CC10(&qword_1001313D0, type metadata accessor for TemperatureContentView, &unk_1000F6718);
  sub_10004CC10(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_10004CC58();
  sub_1000EA474();
  sub_1000058EC(v22, v24, a1 & 1);

  (*(v7 + 8))(v10, v5);
  v27 = sub_1000EA354();
  v31 = sub_100015CA8(v27, v28, v29, v30);
  v33 = v32;
  LOBYTE(v10) = v34;
  v52 = v5;
  v53 = v26;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v46;
  v36 = v47;
  sub_1000EA444();
  sub_1000058EC(v31, v33, v10 & 1);

  (*(v48 + 8))(v14, v36);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v38 = sub_1000EBC44();
  sub_1000090D4();
  v40 = v39;
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000EFAD0;
  (*(v40 + 104))(v42 + v41, enum case for WidgetFamily.accessoryCircular(_:), v38);
  v52 = v36;
  v53 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v43 = v49;
  sub_1000EA454();

  return (*(v50 + 8))(v37, v43);
}

uint64_t sub_10004CA48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TemperatureContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004CAC4()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.TemperatureComplication(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_10004CBE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004CAC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004CC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004CC58()
{
  result = qword_1001313D8;
  if (!qword_1001313D8)
  {
    sub_100002ABC(&qword_1001313B8, &qword_1000F2010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001313D8);
  }

  return result;
}

uint64_t sub_10004CCC0()
{
  sub_100002ABC(&qword_1001313C8, &unk_1000F2020);
  sub_100002ABC(&qword_1001313C0, &qword_1000F2018);
  sub_100002ABC(&qword_1001313B8, &qword_1000F2010);
  sub_10004CC58();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004CD84@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v27[0] = sub_1000EA4E4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012FC10, &qword_1000F2060);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = (v27 - v8);
  v10 = sub_100002A10(&qword_1001313E0, &qword_1000F2068);
  sub_1000090D4();
  v12 = v11;
  sub_100009204();
  __chkstk_darwin(v13);
  v15 = v27 - v14;
  *v9 = sub_1000EABC4();
  v9[1] = v16;
  v17 = sub_100002A10(&qword_1001313E8, &qword_1000F2070);
  sub_10004DAC4(v9 + *(v17 + 44));
  sub_1000EA4B4();
  sub_1000404D0();
  v20 = sub_100006988(v18, &qword_10012FC10, &qword_1000F2060, v19);
  sub_1000EA914();
  (*(v2 + 8))(v5, v27[0]);
  sub_100008E48(v9, &qword_10012FC10, &qword_1000F2060);
  sub_1000EA354();
  sub_10004E774();
  v21 = sub_1000EA7F4();
  v23 = v22;
  v25 = v24;
  v27[3] = v6;
  v27[4] = v20;
  sub_10004E75C();
  swift_getOpaqueTypeConformance2();
  sub_1000EA8C4();
  sub_1000058EC(v21, v23, v25 & 1);

  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_10004D034@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = sub_1000EA4E4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_1001314B8, &qword_1000F2148);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = (&v30 - v8);
  sub_100002A10(&qword_1001314C0, &qword_1000F2150);
  sub_1000090D4();
  v32 = v11;
  v33 = v10;
  sub_100009204();
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v35 = sub_100002A10(&qword_1001314C8, &qword_1000F2158);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v15);
  v31 = &v30 - v16;
  *v9 = sub_1000EABC4();
  v9[1] = v17;
  v18 = sub_100002A10(&qword_1001314D0, &qword_1000F2160);
  sub_10004D39C(v9 + *(v18 + 44));
  sub_1000EA4B4();
  sub_1000404D0();
  v21 = sub_100006988(v19, &qword_1001314B8, &qword_1000F2148, v20);
  sub_1000EA914();
  (*(v2 + 8))(v5, v34);
  sub_100008E48(v9, &qword_1001314B8, &qword_1000F2148);
  v39 = sub_1000EB4E4();
  v40 = v22;
  v37 = v6;
  v38 = v21;
  sub_10004E75C();
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v23 = v31;
  v24 = v33;
  sub_1000EA8E4();

  (*(v32 + 8))(v14, v24);
  sub_1000EA354();
  sub_10004E774();
  v25 = sub_1000EA7F4();
  v27 = v26;
  LOBYTE(v21) = v28;
  sub_1000EA044();
  sub_1000058EC(v25, v27, v21 & 1);

  return sub_100008E48(v23, &qword_1001314C8, &qword_1000F2158);
}

uint64_t sub_10004D39C@<X0>(char *a2@<X8>)
{
  v3 = sub_100002A10(&qword_1001314E0, &qword_1000F2168);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_1000EBBE4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_1000EBBD4();
  *v8 = sub_1000EA3C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = sub_100002A10(&qword_1001314E8, &qword_1000F2170);
  sub_10004D604(&v8[*(v16 + 44)]);
  v17 = *(v10 + 16);
  v17(v13, v15, v9);
  sub_10000EBC4(v8, v6, &qword_1001314E0, &qword_1000F2168);
  v17(a2, v13, v9);
  v18 = &a2[*(sub_100002A10(&qword_1001314F0, &qword_1000F2178) + 48)];
  sub_10000EBC4(v6, v18, &qword_1001314E0, &qword_1000F2168);
  sub_100008E48(v8, &qword_1001314E0, &qword_1000F2168);
  v19 = *(v10 + 8);
  v19(v15, v9);
  sub_100008E48(v6, &qword_1001314E0, &qword_1000F2168);
  return (v19)(v13, v9);
}

uint64_t sub_10004D604@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = sub_1000E8444();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v38 = sub_100002A10(&qword_1001314F8, &qword_1000F2180);
  __chkstk_darwin(v38);
  v7 = &v34[-v6];
  v40 = sub_100002A10(&qword_100131500, &qword_1000F2188);
  v8 = *(v40 - 8);
  v9 = __chkstk_darwin(v40);
  v39 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v37 = &v34[-v11];
  sub_1000EB4C4();
  if (v12)
  {
    v36 = sub_1000EAA24();
  }

  else
  {
    v36 = 0;
  }

  sub_1000EABC4();
  sub_1000EA0A4();
  v42[120] = 1;
  memcpy(&v42[7], __src, 0x70uLL);
  v35 = 1;
  sub_1000EB4A4();
  sub_1000EA6C4();
  sub_1000E8424();

  (*(v2 + 8))(v5, v1);
  v13 = sub_1000EA804();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v7[*(sub_100002A10(&qword_100131508, &qword_1000F2190) + 36)];
  v21 = *(sub_100002A10(&qword_100131510, &qword_1000F2198) + 28);
  v22 = enum case for Text.Case.uppercase(_:);
  v23 = sub_1000EA7C4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  sub_1000028A0(v20 + v21, 0, 1, v23);
  *v20 = swift_getKeyPath();
  *v7 = v13;
  *(v7 + 1) = v15;
  v7[16] = v17 & 1;
  *(v7 + 3) = v19;
  KeyPath = swift_getKeyPath();
  v25 = &v7[*(v38 + 36)];
  *v25 = KeyPath;
  v25[8] = 1;
  sub_1000EA664();
  sub_10004E3BC();
  v26 = v37;
  sub_1000EA874();
  sub_10004E52C(v7);
  v27 = *(v8 + 16);
  v28 = v39;
  v29 = v40;
  v27(v39, v26, v40);
  v30 = v41;
  *v41 = v36;
  v30[1] = 0;
  *(v30 + 16) = v35;
  memcpy(v30 + 17, v42, 0x77uLL);
  v31 = sub_100002A10(&qword_100131530, &qword_1000F21D0);
  v27(v30 + *(v31 + 64), v28, v29);
  v32 = *(v8 + 8);
  v32(v26, v29);
  v32(v28, v29);
}

uint64_t sub_10004DAC4@<X0>(char *a1@<X8>)
{
  v2 = sub_100002A10(&qword_1001313F0, &qword_1000F2078);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1000EBBE4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  sub_1000EBBD4();
  *v7 = sub_1000EA3C4();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  v15 = sub_100002A10(&qword_1001313F8, &qword_1000F2080);
  sub_10004DD24(&v7[*(v15 + 44)]);
  v16 = *(v9 + 16);
  v16(v12, v14, v8);
  sub_10000EBC4(v7, v5, &qword_1001313F0, &qword_1000F2078);
  v16(a1, v12, v8);
  v17 = &a1[*(sub_100002A10(&qword_100131400, &qword_1000F2088) + 48)];
  sub_10000EBC4(v5, v17, &qword_1001313F0, &qword_1000F2078);
  sub_100008E48(v7, &qword_1001313F0, &qword_1000F2078);
  v18 = *(v9 + 8);
  v18(v14, v8);
  sub_100008E48(v5, &qword_1001313F0, &qword_1000F2078);
  return (v18)(v12, v8);
}

uint64_t sub_10004DD24@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v23 = sub_100002A10(&qword_100131408, &qword_1000F2090);
  v1 = *(v23 - 8);
  v2 = __chkstk_darwin(v23);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v22 = sub_1000EAA24();
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v6 = qword_100145E00;
  v7 = sub_1000EA7F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v26 = v7;
  v27 = v9;
  v28 = v11 & 1;
  v29 = v13;
  v30 = KeyPath;
  v31 = 1;
  sub_1000EA664();
  sub_100002A10(&qword_100131410, &unk_1000F2980);
  sub_10004E0BC();
  sub_1000EA874();
  sub_1000058EC(v7, v9, v11 & 1);

  v15 = *(v1 + 16);
  v17 = v23;
  v16 = v24;
  v15(v24, v5, v23);
  v18 = v25;
  *v25 = v22;
  v19 = sub_100002A10(&qword_100131420, &qword_1000F20D8);
  v15(v18 + *(v19 + 48), v16, v17);
  v20 = *(v1 + 8);

  v20(v5, v17);
  v20(v16, v17);
}

uint64_t sub_10004E014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA1F4();
  *a1 = result;
  return result;
}

uint64_t sub_10004E040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA1F4();
  *a1 = result;
  return result;
}

unint64_t sub_10004E0BC()
{
  result = qword_100131418;
  if (!qword_100131418)
  {
    sub_100002ABC(&qword_100131410, &unk_1000F2980);
    sub_100006988(&qword_10012FAA0, &qword_10012FAA8, &qword_1000F20D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131418);
  }

  return result;
}

uint64_t sub_10004E188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_10004E1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RainCircularContentView(uint64_t a1)
{
  result = qword_100131480;
  if (!qword_100131480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004E27C(uint64_t a1)
{
  result = sub_1000EB504();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004E328(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100131538, &qword_1000F21D8);
  __chkstk_darwin(v2 - 8);
  sub_10004E594(a1, &v5 - v3);
  return sub_1000EA254();
}

unint64_t sub_10004E3BC()
{
  result = qword_100131518;
  if (!qword_100131518)
  {
    sub_100002ABC(&qword_1001314F8, &qword_1000F2180);
    sub_10004E474();
    sub_100006988(&qword_10012FAA0, &qword_10012FAA8, &qword_1000F20D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131518);
  }

  return result;
}

unint64_t sub_10004E474()
{
  result = qword_100131520;
  if (!qword_100131520)
  {
    sub_100002ABC(&qword_100131508, &qword_1000F2190);
    sub_100006988(&qword_100131528, &qword_100131510, &qword_1000F2198, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131520);
  }

  return result;
}

uint64_t sub_10004E52C(uint64_t a1)
{
  v2 = sub_100002A10(&qword_1001314F8, &qword_1000F2180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004E594(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100131538, &qword_1000F21D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004E608()
{
  result = qword_100131540;
  if (!qword_100131540)
  {
    sub_100002ABC(&qword_1001314C8, &qword_1000F2158);
    sub_100002ABC(&qword_1001314B8, &qword_1000F2148);
    sub_100006988(&qword_1001314D8, &qword_1001314B8, &qword_1000F2148, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10004E704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131540);
  }

  return result;
}

unint64_t sub_10004E704()
{
  result = qword_10012FBE0;
  if (!qword_10012FBE0)
  {
    sub_1000EA514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBE0);
  }

  return result;
}

uint64_t LocalSearchRequestService.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_10004E7EC(a1, v2 + 16);
  return v2;
}

uint64_t sub_10004E7EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:calloutTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MKLocalSearchRequest) initWithCompletion:a1];
  sub_100002A10(&qword_100131548, &qword_1000F21F0);
  swift_allocObject();
  v3 = sub_1000E9CB4();

  return v3;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MKLocalSearchRequest) init];
  sub_10004FA34(a1, a2, v4);
  sub_100002A10(&qword_100131548, &qword_1000F21F0);
  swift_allocObject();
  v5 = sub_1000E9CB4();

  return v5;
}

void sub_10004E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_10004FA34(a6, a7, a5);
  v14 = [objc_allocWithZone(MKLocalSearch) initWithRequest:a5];
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v17[4] = sub_10004FAF8;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10004F958;
  v17[3] = &unk_100126598;
  v16 = _Block_copy(v17);

  [v14 startWithCompletionHandler:v16];
  _Block_release(v16);
}

void sub_10004EAC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v130 = a8;
  v131 = a7;
  v137 = a6;
  v138 = a5;
  v141 = a4;
  v135 = a1;
  v136 = a3;
  v9 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v9 - 8);
  v134 = &v119 - v10;
  v132 = sub_1000E9A84();
  v129 = *(v132 - 8);
  v11 = __chkstk_darwin(v132);
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v119 - v14;
  v16 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v119 - v21;
  __chkstk_darwin(v20);
  v24 = &v119 - v23;
  v25 = sub_1000E8784();
  v133 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v119 - v29;
  v31 = sub_1000E9F64();
  v32 = *(v31 - 8);
  v139 = v31;
  v140 = v32;
  v33 = __chkstk_darwin(v31);
  v34 = __chkstk_darwin(v33);
  v35 = __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v40 = &v119 - v39;
  if (a2)
  {
    swift_errorRetain();
    sub_1000E9F34();
    swift_errorRetain();
    v41 = v141;

    v42 = sub_1000E9F44();
    v43 = sub_1000EC194();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v44 = 141558531;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2085;
      *(v44 + 14) = sub_1000E2E18(v136, v41, v143);
      *(v44 + 22) = 2082;
      v142 = a2;
      swift_errorRetain();
      sub_100002A10(&qword_100130548, &qword_1000F0CF0);
      v45 = sub_1000EBEE4();
      v47 = sub_1000E2E18(v45, v46, v143);

      *(v44 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to geocode. searchString=%{sensitive,mask.hash}s, error=%{public}s", v44, 0x20u);
      swift_arrayDestroy();
    }

    (*(v140 + 8))(v40, v139);
    sub_10004FB20();
    v48 = swift_allocError();
    *v49 = a2;
    swift_errorRetain();
    (v138)(v48);

LABEL_15:

    return;
  }

  v124 = v22;
  v125 = v24;
  v126 = v28;
  v50 = v134;
  v122 = v13;
  v127 = v30;
  v128 = v25;
  v123 = v15;
  v51 = v141;
  if (!v135)
  {
LABEL_12:
    v67 = v36;
    sub_1000E9F34();

    v68 = sub_1000E9F44();
    v69 = sub_1000EC194();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v143[0] = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2085;
      *(v70 + 14) = sub_1000E2E18(v136, v51, v143);
      sub_100009068(v71);
    }

    (*(v140 + 8))(v67, v139);
    sub_10004FB20();
    swift_allocError();
    *v72 = 0;
    v138();
    goto LABEL_15;
  }

  v52 = v36;
  v120 = v38;
  v121 = v37;
  v53 = [v135 mapItems];
  sub_10004FB74();
  v54 = sub_1000EBFF4();

  if (!sub_100030A40(v54))
  {

    v36 = v52;
    goto LABEL_12;
  }

  sub_100030A18();
  if ((v54 & 0xC000000000000001) != 0)
  {
    v55 = sub_1000EC3F4();
  }

  else
  {
    v55 = *(v54 + 32);
  }

  v56 = v55;
  v57 = v128;
  v58 = v50;
  v59 = v126;

  v60 = [v56 placemark];
  v61 = [v60 timeZone];

  v62 = v124;
  if (v61)
  {
    sub_1000E8764();

    v63 = v133;
    v64 = *(v133 + 32);
    v64(v62, v59, v57);
    sub_1000028A0(v62, 0, 1, v57);
    v65 = v125;
    v64(v125, v62, v57);
    sub_1000028A0(v65, 0, 1, v57);
    v66 = v127;
  }

  else
  {
    v73 = 1;
    sub_1000028A0(v124, 1, 1, v57);
    v74 = [v56 timeZone];
    if (v74)
    {
      v75 = v74;
      sub_1000E8764();

      v73 = 0;
    }

    v66 = v127;
    v65 = v125;
    sub_1000028A0(v19, v73, 1, v57);
    sub_10004FBB8(v19, v65);
    v76 = sub_100005B30(v62, 1, v57);
    v63 = v133;
    if (v76 != 1)
    {
      sub_10004FC28(v62);
    }
  }

  if (sub_100005B30(v65, 1, v57) == 1)
  {
    sub_10004FC28(v65);
    v77 = v120;
    sub_1000E9F34();
    v78 = v141;

    v79 = sub_1000E9F44();
    v80 = sub_1000EC194();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v143[0] = v82;
      *v81 = 141558275;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2085;
      *(v81 + 14) = sub_1000E2E18(v136, v78, v143);
      _os_log_impl(&_mh_execute_header, v79, v80, "Time zone missing while geocoding, searchString=%{sensitive,mask.hash}s.", v81, 0x16u);
      sub_100009068(v82);
    }

    (*(v140 + 8))(v77, v139);
    sub_10004FB20();
    swift_allocError();
    *v83 = 1;
    v138();
  }

  else
  {
    (*(v63 + 32))(v66, v65, v57);
    v84 = [v56 placemark];
    [v84 coordinate];

    v137 = sub_1000EC314();
    v138 = v85;
    v86 = [v56 wc_weatherDisplayName];
    v87 = sub_1000EBE84();
    v134 = v88;
    v135 = v87;

    (*(v63 + 16))(v59, v66, v57);
    sub_1000E8AE4();
    v89 = sub_1000E8604();
    sub_1000028A0(v58, 0, 1, v89);
    v90 = [v56 placemark];
    v91 = MKPlacemark.safeTitle.getter();
    v125 = v92;
    v126 = v91;

    v93 = [v56 placemark];
    MKPlacemark.safeSubtitle.getter();
    v124 = v94;

    v95 = [v56 wc_weatherLocationName];
    v120 = sub_1000EBE84();

    v96 = [v56 wc_weatherLocationName];
    sub_1000EBE84();

    v97 = [v56 wc_weatherDisplayName];
    sub_1000EBE84();

    sub_1000E99F4();

    v98 = v123;
    sub_1000E9A14();
    v99 = v121;
    sub_1000E9F34();
    v100 = v129;
    v101 = v122;
    v102 = v132;
    (*(v129 + 16))(v122, v98, v132);
    v103 = v141;

    v104 = v56;
    v105 = sub_1000E9F44();
    v106 = sub_1000EC1B4();
    v138 = v104;

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v107 = 141559299;
      v108 = v101;
      *(v107 + 4) = 1752392040;
      *(v107 + 12) = 2085;
      *(v107 + 14) = sub_1000E2E18(v136, v103, v143);
      *(v107 + 22) = 2160;
      *(v107 + 24) = 1752392040;
      *(v107 + 32) = 2081;
      v109 = sub_1000E9A24();
      v111 = v110;
      v112 = *(v100 + 8);
      v112(v108, v132);
      v113 = sub_1000E2E18(v109, v111, v143);

      *(v107 + 34) = v113;
      *(v107 + 42) = 2160;
      *(v107 + 44) = 1752392040;
      *(v107 + 52) = 2081;
      v114 = [v138 wc_weatherLocationName];
      v115 = sub_1000EBE84();
      v117 = v116;

      v118 = sub_1000E2E18(v115, v117, v143);

      *(v107 + 54) = v118;
      _os_log_impl(&_mh_execute_header, v105, v106, "Successfully geocoded location. searchString=%{sensitive,mask.hash}s, location=%{private,mask.hash}s, unsanitizedSecondaryName=%{private,mask.hash}s", v107, 0x3Eu);
      swift_arrayDestroy();
      v98 = v123;

      v102 = v132;
    }

    else
    {

      v112 = *(v100 + 8);
      v112(v101, v102);
    }

    (*(v140 + 8))(v99, v139);
    v131(v98);

    v112(v98, v102);
    (*(v133 + 8))(v127, v128);
  }
}