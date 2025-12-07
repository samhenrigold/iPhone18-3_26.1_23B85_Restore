uint64_t variable initialization expression of GenericBinaryButtonSnippet._context()
{
  sub_16E12C();
  sub_20EC();

  return sub_16DC6C();
}

unint64_t sub_20EC()
{
  result = qword_1C5608;
  if (!qword_1C5608)
  {
    sub_16E12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5608);
  }

  return result;
}

uint64_t variable initialization expression of HeightQueryModel.dateLabel()
{
  sub_2594();
  sub_16D5CC();
  v0 = sub_2564();

  return sub_214C(v0, v1, v2, v3);
}

uint64_t variable initialization expression of BloodPressureQueryModel.url()
{
  sub_2594();
  sub_16BE9C();
  v0 = sub_2564();

  return sub_214C(v0, v1, v2, v3);
}

uint64_t _s18WellnessFlowPlugin016LogBloodPressureB0C23catLoggingWrapperSimple33_19615545966715E74D03477B0A4DCD5FLLAA0ah4CATsJ0Cvpfi_0()
{
  v0 = sub_16D63C();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for WellnessLoggingCATsSimple(0);
  sub_16D62C();
  return sub_16D5FC();
}

uint64_t variable initialization expression of PhoneRingsSnippet._dynamicTypeSize@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2440(&qword_1C5610, &qword_1763B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2378(uint64_t a1)
{
  v2 = sub_16DC4C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_16DC8C();
}

uint64_t sub_2440(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of SleepQueryModel.appPunchout()
{
  sub_2594();
  sub_16C11C();
  v0 = sub_2564();

  return sub_214C(v0, v1, v2, v3);
}

uint64_t variable initialization expression of SleepQueryModel.snippetHeaderModel()
{
  v0 = sub_2594();
  type metadata accessor for SnippetHeaderModel(v0);
  v1 = sub_2564();

  return sub_214C(v1, v2, v3, v4);
}

uint64_t sub_2504@<X0>(uint64_t *a1@<X8>)
{
  result = _s18WellnessFlowPlugin26SingleActivitySummaryModelV4date16SiriDialogEngine0J8CalendarCSgvpfi_0();
  *a1 = result;
  return result;
}

unint64_t sub_25A0(void *a1, char a2, char a3)
{
  sub_2D20(a1, a1[3]);
  v6 = sub_16C3FC();
  sub_2D20(a1, a1[3]);
  v7 = sub_16C41C();
  sub_2D20(a1, a1[3]);
  v8 = sub_16C40C();
  v9 = (v8 | v6) & a2;
  sub_2D64(a1);
  v10 = 0x100000000;
  if ((a3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v9 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v6 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 256;
  if ((v7 & 1) == 0)
  {
    v13 = 0;
  }

  return (v12 | v10 | v13) & 0xFFFFFFFFFFFFFFFELL | v8 & 1 | v11;
}

BOOL sub_2698(int a1)
{
  sub_2440(&qword_1C5678, &qword_16F308);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16F2F0;
  *(inited + 32) = BYTE2(a1) & 1;
  *(inited + 33) = a1 & 1;
  *(inited + 34) = BYTE1(a1) & 1;
  v3 = 32;
  do
  {
    v4 = v3;
    if (v3 == 35)
    {
      break;
    }

    v5 = *(inited + v3++);
  }

  while (v5 != 1);
  v6 = v4 != 35;

  return v6;
}

uint64_t sub_2730(unint64_t a1)
{
  if (BYTE3(a1) == 2)
  {
    goto LABEL_2;
  }

  v3 = a1 >> 24;
  if (!sub_2698((a1 >> 24) & 0x1010101))
  {
    return 2;
  }

  if ((v3 & 0x10000) == 0 && (v3 & 1) == 0 || ((v3 & 0x1000000) == 0 ? (result = 3) : (result = 4), (v3 & 0x101000000) == 0x1000000))
  {
LABEL_2:
    if (BYTE2(a1) <= 6u)
    {
      return (0x10000050100uLL >> ((a1 >> 13) & 0x38));
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t sub_27C4(unsigned __int16 a1)
{
  v1 = a1;
  v2 = sub_16DBEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 270)
  {
    return 6;
  }

  v7 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v5, v7, v2);
  v8 = sub_16DBDC();
  v9 = sub_16E36C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v17[7] = v1;
    v12 = sub_16E1EC();
    v14 = sub_3AB7C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&def_259DC, v8, v9, "Selecting querying flow for dataType: %s", v10, 0xCu);
    sub_2D64(v11);
  }

  (*(v3 + 8))(v5, v2);
  result = 0;
  v15 = v1 + 37;
  if ((v1 - 219) > 0x32)
  {
    goto LABEL_9;
  }

  if (((1 << v15) & 0x73D0838D52801) != 0)
  {
    return result;
  }

  if (((1 << v15) & 0x2045201000) != 0)
  {
    return 2;
  }

LABEL_9:
  if ((v1 - 18) < 3)
  {
    return 1;
  }

  v16 = (v1 - 159) < 2 || v1 == 17;
  if (!v16 && v1 != 76)
  {
    if (v1 == 174)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

BOOL sub_2A50(unint64_t a1)
{
  v2 = a1 >> 16;
  v3 = BYTE2(a1);
  result = 0;
  switch(v3)
  {
    case 1:

      return 1;
    case 9:
      return result;
    default:
      v5 = sub_16E6BC();

      if (v5)
      {
        return 1;
      }

      if (sub_158B28(v2) == 0x657461647075 && v6 == 0xE600000000000000)
      {

        if (a1 == 270)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_16E6BC();

        result = 0;
        if (a1 == 270 || (v8 & 1) == 0)
        {
          return result;
        }
      }

      return sub_C1AF4(a1, &off_1B80D8);
  }
}

uint64_t sub_2C74(unint64_t a1)
{
  v1 = a1;
  if (a1 == 270)
  {
    return 4;
  }

  if (!sub_2A50(a1))
  {
    return 3;
  }

  result = 0;
  if ((v1 - 230) > 0x27 || ((1 << (v1 + 26)) & 0xE7A00708A5) == 0)
  {
    if ((v1 - 18) < 3)
    {
      return 2;
    }

    if (v1 != 17 && v1 != 76)
    {
      if (v1 == 191)
      {
        return 1;
      }

      if (v1 != 159)
      {
        if (v1 == 128)
        {
          return 1;
        }

        return 3;
      }
    }
  }

  return result;
}

void *sub_2D20(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2D64(void *a1)
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

uint64_t sub_2DB0()
{
  v27 = sub_16BF5C();
  sub_42F0();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v9);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_16BD9C();
  sub_42F0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_4304();
  v19 = v18 - v17;
  v20 = type metadata accessor for SynthesizedWellnessIntent(0);
  sub_4270(v0 + *(v20 + 24), v12, &qword_1C5690, &dword_16F320);
  if (sub_369C(v12, 1, v13) == 1)
  {
    sub_4208(v12);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    sub_16BF4C();
    if (sub_16BD8C())
    {
      (*(v2 + 8))(v8, v27);
      (*(v15 + 8))(v19, v13);
      return 2;
    }

    else
    {
      sub_16BD4C();
      v22 = sub_16BF0C();
      v23 = *(v2 + 8);
      v24 = v6;
      v25 = v27;
      v23(v24, v27);
      v23(v8, v25);
      (*(v15 + 8))(v19, v13);
      return (v22 & 1) == 0;
    }
  }
}

uint64_t sub_3054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_2440(&qword_1C5680, &unk_16F310);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  v56 = &v52 - v5;
  v6 = sub_2440(&qword_1C5688, &unk_16F500);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v10);
  sub_433C();
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for SynthesizedWellnessIntent(0);
  v15 = (v14 - 8);
  __chkstk_darwin(v14);
  sub_4304();
  v18 = v17 - v16;
  v19 = v15[8];
  v20 = sub_16BD9C();
  sub_214C(v18 + v19, 1, 1, v20);
  v21 = v15[12];
  v22 = v15[13];
  v53 = v15[10];
  v54 = v22;
  v23 = v18 + v21;
  v24 = sub_16CE0C();
  sub_438C(v24);
  v55 = v15[14];
  v25 = sub_16CC6C();
  sub_438C(v25);
  sub_42CC();
  v26 = sub_42BC();
  *v18 = v27(v26);
  sub_42CC();
  v28 = sub_42BC();
  *(v18 + 2) = v29(v28);
  sub_4314();
  v30 = sub_42BC();
  v31(v30);
  sub_344C(v13, v18 + v19, &qword_1C5690, &dword_16F320);
  sub_42CC();
  v32 = sub_42BC();
  *(v18 + v15[9]) = v33(v32) & 1;
  sub_42CC();
  v34 = sub_42BC();
  v36 = v35(v34);
  *(v18 + v53) = v36;
  sub_42CC();
  v37 = sub_42BC();
  *(v18 + v15[11]) = v38(v37);
  sub_42CC();
  v39 = sub_42BC();
  *v23 = v40(v39);
  *(v23 + 8) = v41 & 1;
  sub_4314();
  v42 = sub_42BC();
  v43(v42);
  sub_344C(v9, v18 + v54, &qword_1C5688, &unk_16F500);
  sub_4314();
  v44 = v56;
  v45 = sub_432C();
  v46(v45);
  sub_344C(v44, v18 + v55, &qword_1C5680, &unk_16F310);
  sub_4314();
  v47 = sub_432C();
  *(v18 + v15[15]) = v48(v47) & 1;
  sub_4314();
  v49 = sub_432C();
  *(v18 + v15[16]) = v50(v49) & 1;
  sub_3498(v18, v57);
  sub_2D64(a1);
  return sub_34FC(v18);
}

uint64_t type metadata accessor for SynthesizedWellnessIntent(uint64_t a1)
{
  result = qword_1C56F0;
  if (!qword_1C56F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_344C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_4378();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_3498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesizedWellnessIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_34FC(uint64_t a1)
{
  v2 = type metadata accessor for SynthesizedWellnessIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_356C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2440(&qword_1C5690, &dword_16F320);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_2440(&qword_1C5688, &unk_16F500);
    sub_436C();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[11];
    }

    else
    {
      v8 = sub_2440(&qword_1C5680, &unk_16F310);
      v9 = a3[12];
    }

LABEL_3:

    return sub_369C(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[9]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_36D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2440(&qword_1C5690, &dword_16F320);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return;
    }

    sub_2440(&qword_1C5688, &unk_16F500);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[11];
    }

    else
    {
      v10 = sub_2440(&qword_1C5680, &unk_16F310);
      v11 = a4[12];
    }
  }

  sub_214C(a1 + v11, a2, a2, v10);
}

void sub_3804(uint64_t a1)
{
  sub_3A10(319, &qword_1C5700, &type metadata for HealthDataType);
  if (v1 <= 0x3F)
  {
    sub_3A5C(319, &qword_1C5708, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_3A10(319, &qword_1C5710, &type metadata for MeasurementUnit);
      if (v3 <= 0x3F)
      {
        sub_3A5C(319, &qword_1C5718, &type metadata accessor for UsoEntity_common_MeasurementComponent, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_3A10(319, &qword_1C5720, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            sub_3A5C(319, &qword_1C5728, &type metadata accessor for UsoEntity_common_MeasurementQualifier.DefinedValues, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_3A5C(319, &unk_1C5730, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues, &type metadata accessor for Optional);
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

void sub_3A10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_3A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_3AC0()
{
  v1 = v0;
  v2 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v37 - v4;
  v6 = sub_16BD9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16C0EC();
  sub_42F0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_4304();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  [v20 setDateStyle:1];
  sub_16C0DC();
  isa = sub_16C0CC().super.isa;
  (*(v15 + 8))(v19, v13);
  [v20 setTimeZone:isa];

  v22 = type metadata accessor for SynthesizedWellnessIntent(0);
  sub_4270(v1 + v22[6], v5, &qword_1C5690, &dword_16F320);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_4208(v5);
    v23 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    v25 = sub_16BD2C().super.isa;
    v26 = [v20 stringFromDateInterval:v25];

    if (v26)
    {
      v24 = sub_16E1BC();
      v23 = v27;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    (*(v8 + 8))(v12, v6);
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_16E47C(171);
  v41._countAndFlagsBits = 0x203A62726576;
  v41._object = 0xE600000000000000;
  sub_16E26C(v41);
  LOBYTE(v37) = *v1;
  sub_16E52C();
  v42._countAndFlagsBits = 0x707954617461640ALL;
  v42._object = 0xEB00000000203A65;
  sub_16E26C(v42);
  LOWORD(v37) = *(v1 + 2);
  sub_2440(&qword_1C5790, &unk_16F3B0);
  v43._countAndFlagsBits = sub_16E3DC();
  sub_4354(v43);

  v44._countAndFlagsBits = 0x6E6152657461640ALL;
  v44._object = 0xEC000000203A6567;
  sub_16E26C(v44);
  v45._countAndFlagsBits = v24;
  v45._object = v23;
  sub_16E26C(v45);

  v46._object = 0x800000000017A8A0;
  v46._countAndFlagsBits = 0xD000000000000013;
  sub_16E26C(v46);
  if (*(v1 + v22[7]))
  {
    v28._countAndFlagsBits = 1702195828;
  }

  else
  {
    v28._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v22[7]))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  v28._object = v29;
  sub_16E26C(v28);

  v47._countAndFlagsBits = 0xD000000000000012;
  v47._object = 0x800000000017A8C0;
  sub_16E26C(v47);
  LOBYTE(v37) = *(v1 + v22[8]);
  sub_2440(&qword_1C5798, &qword_1728A0);
  v48._countAndFlagsBits = sub_16E3DC();
  sub_4354(v48);

  v49._object = 0x800000000017A8E0;
  v49._countAndFlagsBits = 0xD000000000000013;
  sub_16E26C(v49);
  v30 = (v1 + v22[10]);
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v37 = v31;
  v38 = v30;
  sub_2440(&qword_1C57A0, &qword_16F3C0);
  v50._countAndFlagsBits = sub_16E3DC();
  sub_4354(v50);

  v51._countAndFlagsBits = 0xD000000000000017;
  v51._object = 0x800000000017A900;
  sub_16E26C(v51);
  sub_2440(&qword_1C5688, &unk_16F500);
  v52._countAndFlagsBits = sub_16E3DC();
  sub_4354(v52);

  v53._countAndFlagsBits = 0x736F507473696C0ALL;
  v53._object = 0xEF203A6E6F697469;
  sub_16E26C(v53);
  sub_2440(&qword_1C5680, &unk_16F310);
  v54._countAndFlagsBits = sub_16E3DC();
  sub_4354(v54);

  v55._countAndFlagsBits = 0x726174537361680ALL;
  v55._object = 0xEF203A6574614474;
  sub_16E26C(v55);
  if (*(v1 + v22[13]))
  {
    v32._countAndFlagsBits = 1702195828;
  }

  else
  {
    v32._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v22[13]))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  v32._object = v33;
  sub_16E26C(v32);

  v56._countAndFlagsBits = 0x44646E457361680ALL;
  v56._object = 0xED0000203A657461;
  sub_16E26C(v56);
  if (*(v1 + v22[14]))
  {
    v34._countAndFlagsBits = 1702195828;
  }

  else
  {
    v34._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v22[14]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  v34._object = v35;
  sub_16E26C(v34);

  return v39;
}

unint64_t sub_4188(uint64_t a1)
{
  result = sub_41B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_41B0()
{
  result = qword_1C5788;
  if (!qword_1C5788)
  {
    type metadata accessor for SynthesizedWellnessIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5788);
  }

  return result;
}

uint64_t sub_4208(uint64_t a1)
{
  v2 = sub_2440(&qword_1C5690, &dword_16F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_4378();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void *sub_4314()
{

  return sub_2D20(v0, v1);
}

void sub_4354(Swift::String a1)
{

  sub_16E26C(a1);
}

uint64_t sub_438C(uint64_t a1)
{

  return sub_214C(v2 + v1, 1, 1, a1);
}

uint64_t sub_43AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2440(a3, a4);
}

uint64_t sub_43D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 250))
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

uint64_t sub_4414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 250) = 1;
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

    *(result + 250) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_44AC(uint64_t a1, uint64_t a2)
{
  sub_87A0();

  return sub_16C33C();
}

uint64_t sub_4500()
{
  sub_8A88();
  v1[114] = v0;
  v1[113] = v2;
  v3 = type metadata accessor for UnavailableDataFlow(0);
  v1[115] = v3;
  sub_4348(v3);
  v1[116] = sub_8BC0();
  v4 = sub_16D63C();
  sub_4348(v4);
  v1[117] = sub_8BC0();
  v5 = sub_16DBEC();
  v1[118] = v5;
  sub_888C(v5);
  v1[119] = v6;
  v1[120] = sub_8C38();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_4608()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  *(v0 + 1056) = *(*(v0 + 912) + 249);
  sub_16D78C();
  v4 = sub_50C8();
  *(v0 + 984) = v4;
  v5 = sub_16DBBC();
  *(v0 + 992) = v5;
  sub_8B48(v5, v0 + 824);
  v6 = *(v2 + 16);
  *(v0 + 1000) = v6;
  *(v0 + 1008) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = v4;
  v8 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v5 = 138412290;
    *(v5 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_88FC(&def_259DC, v11, v12, "Created intent: %@");
    sub_8748(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C(v5);
  }

  v13 = *(v0 + 976);
  v14 = *(v0 + 952);
  v15 = *(v0 + 944);
  v16 = *(v0 + 912);

  v17 = *(v14 + 8);
  *(v0 + 1016) = v17;
  *(v0 + 1024) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v15);
  v18 = *(v16 + 240);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 896;
  *(v0 + 24) = sub_485C;
  v19 = swift_continuation_init();
  *(v0 + 816) = sub_2440(&qword_1C57A8, &unk_16F4E0);
  *(v0 + 792) = v19;
  *(v0 + 760) = _NSConcreteStackBlock;
  *(v0 + 768) = 1107296256;
  *(v0 + 776) = sub_53C4;
  *(v0 + 784) = &unk_1B8A88;
  [v18 handleGetMenstruationPrediction:v7 completion:v0 + 760];
  sub_8CC0();

  return _swift_continuation_await(v20);
}

uint64_t sub_485C()
{
  sub_8A88();
  v1 = *v0;
  sub_8A60();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_4930()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 896);
  *(v0 + 1032) = v4;
  sub_8B48(v3, v0 + 848);
  sub_8B60();
  v2();
  v5 = v4;
  v6 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v7 = sub_8A44();
    *v1 = 138412290;
    *(v1 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    sub_88FC(&def_259DC, v9, v10, "Received response: %@");
    sub_8748(v7, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C(v1);
  }

  v11 = (*(v0 + 1016))(*(v0 + 968), *(v0 + 944));
  v12 = (*(&stru_20.maxprot + (swift_isaMask & *v5)))(v11);
  if (v12 != 4)
  {
    switch(v12)
    {
      case 'g':
        sub_8C14();
        sub_8388((v5 + 40), v0 + 344);
        sub_8284((v5 + 80), v0 + 384);
        v20 = sub_16C58C();
        sub_8D14(v20);
        v21 = sub_16C57C();
        *(v0 + 568) = v20;
        *(v0 + 576) = &protocol witness table for ResponseFactory;
        *(v0 + 544) = v21;
        v22 = type metadata accessor for WellnessCATsSimple(0);
        sub_8D2C(v22);
        sub_8CB4();
        v23 = sub_16D5FC();
        v24 = type metadata accessor for WellnessCATs(0);
        sub_8D2C(v24);
        sub_8CB4();
        v25 = sub_16D58C();
        *(v0 + 584) = v23;
        *(v0 + 592) = v25;
        sub_83EC();
        sub_16C4EC();

        sub_8440(v0 + 344);
        break;
      case 'f':
        v26 = *(v0 + 984);
        v27 = *(v0 + 928);
        v28 = *(v0 + 920);
        v29 = *(v0 + 912);
        sub_16D6FC();
        v30 = *(v29 + 248);
        sub_16BD9C();
        sub_8AB4();
        sub_214C(v31, v32, v33, v34);
        sub_8388(v29 + 40, &v27[v28[6]]);
        sub_8284(v29 + 80, &v27[v28[7]]);
        v35 = sub_16C58C();
        sub_8D14(v35);
        v36 = sub_16C57C();
        v37 = &v27[v28[8]];
        v37[3] = v35;
        v37[4] = &protocol witness table for ResponseFactory;
        *v37 = v36;
        type metadata accessor for WellnessCATsSimple(0);
        sub_8B90();
        sub_16D62C();
        sub_8C5C();
        v38 = sub_16D5FC();
        type metadata accessor for WellnessCATs(0);
        sub_8B90();
        sub_16D62C();
        sub_8C5C();
        v39 = sub_16D58C();
        *v27 = v30;
        *&v27[v28[9]] = v38;
        *&v27[v28[10]] = v39;
        sub_88E4();
        sub_85F8(v40, v41, &unk_179388);
        sub_16C4EC();

        sub_8494(v27);
        break;
      case 'e':
        sub_8C14();
        v13 = v5[248];
        sub_8388((v5 + 40), v0 + 88);
        sub_8284((v5 + 80), v0 + 128);
        v14 = sub_16C58C();
        sub_8D14(v14);
        v15 = sub_16C57C();
        *(v0 + 312) = v14;
        *(v0 + 320) = &protocol witness table for ResponseFactory;
        *(v0 + 288) = v15;
        v16 = type metadata accessor for WellnessCATsSimple(0);
        sub_8D2C(v16);
        sub_8CB4();
        v17 = sub_16D5FC();
        v18 = type metadata accessor for WellnessCATs(0);
        sub_8D2C(v18);
        sub_8CB4();
        v19 = sub_16D58C();
        *(v0 + 80) = v13;
        *(v0 + 328) = v17;
        *(v0 + 336) = v19;
        sub_84F0();
        sub_16C4EC();

        sub_8544(v0 + 80);
        break;
      default:
        v45 = *(v0 + 1000);
        sub_8B48(*(v0 + 992), v0 + 872);
        v46 = sub_8CA8();
        v45(v46);
        v47 = v5;
        v48 = sub_16DBDC();
        v49 = sub_16E37C();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = sub_8BD8();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          *(v50 + 4) = v47;
          *v51 = v5;
          v52 = v47;
          _os_log_impl(&def_259DC, v48, v49, "Received unhandled response code: %@", v50, 0xCu);
          sub_8748(v51, &qword_1C57B8, &qword_1715A0);
          sub_8A2C(v51);
          sub_89F4();
        }

        v53 = *(v0 + 1016);
        v59 = *(v0 + 984);
        v54 = *(v0 + 960);
        v55 = *(v0 + 944);
        v56 = *(v0 + 912);

        v53(v54, v55);
        sub_16D6FC();
        sub_8284(v56 + 80, v0 + 600);
        sub_82E0();
        sub_16C4EC();

        sub_8334(v0 + 600);
        break;
    }

    sub_8BF0();

    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v42 = swift_task_alloc();
  *(v0 + 1040) = v42;
  *v42 = v0;
  v42[1] = sub_4F1C;
  sub_8CC0();

  return sub_5410();
}

uint64_t sub_4F1C()
{
  sub_8A88();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1048) = v3;

  sub_8ACC();

  return _swift_task_switch(v4);
}

uint64_t sub_5010()
{
  v1 = v0[129];
  v2 = v0[123];
  sub_16D72C();
  sub_16C4FC();

  sub_8BF0();

  v3 = v0[1];

  return v3();
}

id sub_50C8()
{
  v1 = sub_2440(&qword_1C5808, &unk_16F520) - 8;
  sub_433C();
  __chkstk_darwin(v2);
  v4 = &v31 - v3;
  v5 = sub_2440(&qword_1C5688, &unk_16F500);
  v6 = sub_4348(v5);
  __chkstk_darwin(v6);
  sub_887C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = [objc_allocWithZone(sub_16DB2C()) init];
  v15 = v0[3];
  v14 = v0[4];
  sub_2D20(v0, v15);
  (*(v14 + 72))(v15, v14);
  v16 = v0[3];
  v17 = v0[4];
  sub_2D20(v0, v16);
  v18 = (*(v17 + 104))(v16, v17);
  v19 = *(v1 + 56);
  sub_86FC(v12, v4, &qword_1C5688, &unk_16F500);
  v4[v19] = v18;
  sub_16CE0C();
  sub_8A94(v4);
  if (!v20)
  {
    sub_86B0(v4, v9, &qword_1C5688, &unk_16F500);
    v23 = sub_8C50();
    v25 = v24(v23);
    if (v25 == enum case for UsoEntity_common_MeasurementQualifier.DefinedValues.common_MeasurementQualifier_StartOf(_:))
    {
      v26 = v13;
      if (v18)
      {
        if (v18 == 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = 3;
        }
      }

      else
      {
        v27 = 5;
      }

LABEL_17:
      [v26 setProjectionFocus:v27];
      v21 = &qword_1C5688;
      v22 = &unk_16F500;
      goto LABEL_18;
    }

    if (v25 == enum case for UsoEntity_common_MeasurementQualifier.DefinedValues.common_MeasurementQualifier_EndOf(_:))
    {
      v26 = v13;
      if (v18)
      {
        if (v18 == 1)
        {
          v27 = 2;
        }

        else
        {
          v27 = 4;
        }
      }

      else
      {
        v27 = 6;
      }

      goto LABEL_17;
    }

    v28 = sub_8C50();
    v29(v28);
  }

  [v13 setProjectionFocus:0];
  v21 = &qword_1C5808;
  v22 = &unk_16F520;
LABEL_18:
  sub_8748(v4, v21, v22);
  return v13;
}

uint64_t sub_53C4(uint64_t a1, void *a2)
{
  sub_2D20((a1 + 32), *(a1 + 56));
  v3 = a2;

  return sub_104B3C();
}

uint64_t sub_5410()
{
  sub_8A88();
  v1[41] = v2;
  v1[42] = v0;
  v3 = sub_16C46C();
  v1[43] = v3;
  sub_888C(v3);
  v1[44] = v4;
  v1[45] = sub_8C38();
  v1[46] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[47] = v5;
  sub_888C(v5);
  v1[48] = v6;
  v1[49] = sub_8BC0();
  v7 = sub_16D63C();
  sub_4348(v7);
  v1[50] = sub_8BC0();
  v8 = type metadata accessor for UnavailableDataFlow(0);
  v1[51] = v8;
  sub_4348(v8);
  v1[52] = sub_8BC0();
  v9 = sub_16BF5C();
  v1[53] = v9;
  sub_888C(v9);
  v1[54] = v10;
  v1[55] = sub_8C38();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v11 = sub_16CE0C();
  v1[60] = v11;
  sub_888C(v11);
  v1[61] = v12;
  v1[62] = sub_8BC0();
  v13 = sub_2440(&qword_1C57D8, &qword_16F4F8);
  v1[63] = v13;
  sub_4348(v13);
  v1[64] = sub_8BC0();
  v14 = sub_2440(&qword_1C5688, &unk_16F500);
  sub_4348(v14);
  v1[65] = sub_8C38();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v15);
  v1[68] = sub_8C38();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v16 = sub_16DBEC();
  v1[74] = v16;
  sub_888C(v16);
  v1[75] = v17;
  v1[76] = sub_8C38();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v18);
}

uint64_t sub_5768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36)
{
  sub_8A10();
  a35 = v37;
  a36 = v38;
  sub_8B6C();
  a34 = v36;
  v39 = v36[79];
  v40 = v36[75];
  v41 = v36[74];
  v42 = sub_16DBBC();
  v36[80] = v42;
  sub_8B48(v42, (v36 + 22));
  v43 = *(v40 + 16);
  v40 += 16;
  v36[81] = v43;
  v36[82] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v78 = v42;
  v79 = v40;
  v77 = v43;
  v43(v39, v42, v41);
  v44 = sub_16DBDC();
  v45 = sub_16E36C();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v36[79];
  v48 = v36[75];
  v49 = v36[74];
  if (v46)
  {
    v50 = sub_8BD8();
    v51 = swift_slowAlloc();
    a25 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_3AB7C(0xD000000000000014, 0x800000000016F430, &a25);
    _os_log_impl(&def_259DC, v44, v45, "Executing %s success pattern", v50, 0xCu);
    sub_2D64(v51);
    sub_8A2C(v51);
    sub_8A2C(v50);
  }

  v52 = *(v48 + 8);
  v52(v47, v49);
  v80 = v52;
  v36[83] = v52;
  v53 = v36[72];
  v54 = v36[67];
  v55 = v36[66];
  v56 = v36[64];
  v81 = v36[63];
  v58 = v36[60];
  v57 = v36[61];
  v59 = v36[42];
  sub_6EFC(v36[73]);
  sub_74F8(v53);
  v60 = v59[3];
  v61 = v59[4];
  sub_2D20(v59, v60);
  (*(v61 + 72))(v60, v61);
  (*(v57 + 104))(v55, enum case for UsoEntity_common_MeasurementQualifier.DefinedValues.common_MeasurementQualifier_EndOf(_:), v58);
  sub_214C(v55, 0, 1, v58);
  v62 = *(v81 + 48);
  sub_86B0(v54, v56, &qword_1C5688, &unk_16F500);
  sub_86B0(v55, v56 + v62, &qword_1C5688, &unk_16F500);
  sub_8A94(v56);
  if (v63)
  {
    v64 = v36[67];
    sub_8748(v36[66], &qword_1C5688, &unk_16F500);
    sub_8748(v64, &qword_1C5688, &unk_16F500);
    sub_8A94(v56 + v62);
    if (!v63)
    {
      JUMPOUT(0x5A9CLL);
    }

    sub_8748(v36[64], &qword_1C5688, &unk_16F500);
    JUMPOUT(0x5D38);
  }

  v65 = v36[60];
  sub_86B0(v36[64], v36[65], &qword_1C5688, &unk_16F500);
  v66 = sub_369C(v56 + v62, 1, v65);
  v67 = v36[67];
  if (v66 != 1)
  {
    JUMPOUT(0x5C50);
  }

  sub_8748(v36[66], &qword_1C5688, &unk_16F500);
  v68 = sub_8748(v67, &qword_1C5688, &unk_16F500);
  return sub_5A88(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v77, v78, v79, v80, v81, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = sub_8CA8();
  v39(v38);
  sub_8748(v36[64], &qword_1C57D8, &qword_16F4F8);
  v40 = v36[68];
  v41 = v36[53];
  sub_86B0(v36[73], v40, &qword_1C57E0, &unk_171C60);
  sub_8B20(v40, 1, v41);
  if (v54)
  {
    sub_8748(v36[68], &qword_1C57E0, &unk_171C60);
    sub_8B48(a21, (v36 + 25));
    v42 = sub_8B78();
    v43(v42);
    v44 = sub_16DBDC();
    v45 = sub_16E37C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&def_259DC, v44, v45, "Failed to return cycle tracking prediction: start date not available.", v46, 2u);
      sub_8A2C(v46);
    }

    v57 = v36[77];
    v58 = v36[74];
    v97 = v36[72];
    v60 = v36[51];
    v59 = v36[52];
    v61 = v36[42];

    (*(v37 - 96))(v57, v58);
    LOBYTE(v58) = *(v61 + 248);
    sub_16BD9C();
    sub_8AB4();
    sub_214C(v62, v63, v64, v65);
    sub_8388(v61 + 40, &v59[v60[6]]);
    sub_8284(v61 + 80, &v59[v60[7]]);
    v66 = sub_16C58C();
    sub_8D14(v66);
    v67 = sub_16C57C();
    v68 = &v59[v60[8]];
    v68[3] = v66;
    v68[4] = &protocol witness table for ResponseFactory;
    *v68 = v67;
    type metadata accessor for WellnessCATsSimple(0);
    sub_8B90();
    sub_16D62C();
    sub_8C5C();
    v69 = sub_16D5FC();
    type metadata accessor for WellnessCATs(0);
    sub_8B90();
    sub_16D62C();
    sub_8C5C();
    v70 = sub_16D58C();
    *v59 = v58;
    *&v59[v60[9]] = v69;
    *&v59[v60[10]] = v70;
    sub_88E4();
    sub_85F8(v71, v72, &unk_179388);
    *(v37 - 88) = sub_16C32C();
    v73 = sub_8CA8();
    sub_8748(v73, v74, &unk_171C60);
    sub_8494(v59);
    sub_8748(v97, &qword_1C57E0, &unk_171C60);
    sub_87F4();
    v91 = v76;
    v92 = v75;
    v93 = v36[65];
    v94 = v36[64];
    v95 = v36[62];
    v96 = v36[59];
    *(v37 - 96) = v36[45];

    sub_891C();

    return v79(v77, v78, v79, v80, v81, v82, v83, v84, v91, v92, v93, v94, v95, v96);
  }

  else
  {
    v47 = v36[72];
    v48 = v36[57];
    v49 = v36[54];
    v50 = v36[53];
    (*(v49 + 32))(v36[56], v36[68], v50);
    sub_16BF4C();
    v51 = sub_8B9C();
    sub_7AC8(v51, v52, v48);
    v53 = *(v49 + 8);
    v36[89] = v53;
    v36[90] = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53(v48, v50);
    sub_16BF4C();
    sub_8B20(v47, 1, v50);
    if (v54)
    {
      sub_88CC();
      sub_85F8(v55, v56, &protocol conformance descriptor for Date);
      sub_16E16C();
    }

    v86 = v36[56];
    v87 = v36[42];
    v53(v36[55], v36[53]);
    sub_2D20((v87 + 200), *(v87 + 224));
    v88 = swift_task_alloc();
    v36[91] = v88;
    *(v88 + 16) = v86;
    *(v88 + 24) = v87;
    v89 = swift_task_alloc();
    v36[92] = v89;
    *v89 = v36;
    v89[1] = sub_6948;
    sub_891C();

    return sub_72104();
  }
}

uint64_t sub_6370(uint64_t a1)
{
  sub_8A60();
  *v4 = v3;
  v3[34] = v2;
  v3[35] = v5;
  v3[36] = v1;
  sub_8C88();
  *v6 = *v2;
  *(v7 + 704) = v1;

  sub_8C88();

  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_649C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_8A10();
  sub_8B6C();
  (*(v37 + 672))(*(v37 + 472), *(v37 + 424));
  v42 = *(v37 + 672);
  v43 = *(v37 + 464);
  v64 = sub_8958(*(v37 + 280));
  v42(v43, v40);
  sub_16C43C();
  v44 = sub_8BA8();
  v45(v44);
  sub_889C();
  (*(v39 + 8))(v41, v36);
  v46 = [v64 patternId];
  sub_16E1BC();

  sub_16C76C();
  v47 = sub_8AD8();

  *(v37 + 320) = v47;
  sub_16C28C();
  v65 = sub_16C32C();

  (*(a21 + 8))(v38, a22);
  sub_8B60();
  sub_8748(v48, v49, v50);
  sub_8B60();
  sub_8748(v51, v52, v53);
  v54 = sub_87F4();
  sub_8828(v54);

  sub_8938();
  sub_891C();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v64, a21, a22, a23, a24, v65, a26, a27, a28);
}

uint64_t sub_66E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_8A10();
  sub_8B6C();
  v30 = v28[84];
  v31 = v28[58];
  v32 = v28[53];
  (v30)(v28[59], v32);
  (v30)(v31, v32);
  sub_89C0();
  v33 = sub_8948();
  v29(v33);
  swift_errorRetain();
  v34 = sub_16DBDC();
  sub_16E37C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v35 = sub_8A44();
    *v30 = 138412290;
    swift_errorRetain();
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v36;
    *v35 = v36;
    sub_88FC(&def_259DC, v37, v38, "Error executing pattern: %@");
    sub_8748(v35, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C(v30);
  }

  else
  {
  }

  v39 = sub_8990();
  v40(v39);
  sub_8284(v34 + 80, (v28 + 2));
  sub_82E0();
  v56 = sub_16C32C();
  sub_8334((v28 + 2));
  v41 = sub_8B9C();
  sub_8748(v41, v42, &unk_171C60);
  v43 = sub_8948();
  sub_8748(v43, v44, v45);
  v46 = sub_87F4();
  sub_8828(v46);

  sub_8938();
  sub_891C();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v56, a26, a27, a28);
}

uint64_t sub_6948(uint64_t a1)
{
  sub_8A60();
  *v4 = v3;
  v3[37] = v2;
  v3[38] = v5;
  v3[39] = v1;
  sub_8C88();
  *v6 = *v2;
  *(v7 + 744) = v1;

  sub_8C88();

  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_6A74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_8A10();
  sub_8B6C();
  v42 = *(v37 + 712);
  v43 = *(v37 + 448);
  v64 = sub_8958(*(v37 + 304));
  v42(v43, v40);
  sub_16C43C();
  v44 = sub_8BA8();
  v45(v44);
  sub_889C();
  (*(v39 + 8))(v41, v36);
  v46 = [v64 patternId];
  sub_16E1BC();

  sub_16C76C();
  v47 = sub_8AD8();

  *(v37 + 320) = v47;
  sub_16C28C();
  v65 = sub_16C32C();

  (*(a21 + 8))(v38, a22);
  sub_8B60();
  sub_8748(v48, v49, v50);
  sub_8B60();
  sub_8748(v51, v52, v53);
  v54 = sub_87F4();
  sub_8828(v54);

  sub_8938();
  sub_891C();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v64, a21, a22, a23, a24, v65, a26, a27, a28);
}

uint64_t sub_6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_8A10();
  sub_8B6C();
  (*(v28 + 712))(*(v28 + 448), *(v28 + 424));
  sub_89C0();
  v31 = sub_8948();
  v30(v31);
  swift_errorRetain();
  v32 = sub_16DBDC();
  sub_16E37C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v33 = sub_8A44();
    *v29 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v34;
    *v33 = v34;
    sub_88FC(&def_259DC, v35, v36, "Error executing pattern: %@");
    sub_8748(v33, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C(v29);
  }

  else
  {
  }

  v37 = sub_8990();
  v38(v37);
  sub_8284(v32 + 80, v28 + 16);
  sub_82E0();
  v54 = sub_16C32C();
  sub_8334(v28 + 16);
  v39 = sub_8B9C();
  sub_8748(v39, v40, &unk_171C60);
  v41 = sub_8948();
  sub_8748(v41, v42, v43);
  v44 = sub_87F4();
  sub_8828(v44);

  sub_8938();
  sub_891C();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v54, a26, a27, a28);
}

uint64_t sub_6EFC@<X0>(uint64_t a1@<X8>)
{
  v91 = sub_8CDC(a1);
  sub_42F0();
  v89 = v4;
  __chkstk_darwin(v5);
  sub_887C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_8AC0();
  v87 = v10;
  sub_89B4();
  __chkstk_darwin(v11);
  sub_8AC0();
  v90 = v12;
  sub_89B4();
  v14 = __chkstk_darwin(v13);
  v16 = &v83 - v15;
  v17 = __chkstk_darwin(v14);
  sub_8C74(v17, v18, v19, v20, v21, v22, v23, v24, v83);
  v25 = sub_2440(&qword_1C57E0, &unk_171C60);
  v26 = sub_4348(v25);
  __chkstk_darwin(v26);
  sub_887C();
  v85 = v27 - v28;
  sub_89B4();
  __chkstk_darwin(v29);
  sub_8AC0();
  v86 = v30;
  sub_89B4();
  __chkstk_darwin(v31);
  sub_8C94();
  __chkstk_darwin(v32);
  v34 = &v83 - v33;
  v35 = sub_2440(&qword_1C5680, &unk_16F310);
  v36 = sub_4348(v35);
  __chkstk_darwin(v36);
  sub_887C();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v83 - v41;
  sub_2D20(v2, v2[3]);
  v43 = sub_8A6C();
  v44(v43);
  v45 = sub_16CC6C();
  sub_8B20(v42, 1, v45);
  if (v67)
  {
    goto LABEL_3;
  }

  sub_86B0(v42, v39, &qword_1C5680, &unk_16F310);
  v64 = sub_8C68();
  v66 = v65(v64);
  v67 = v66 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:) || v66 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:);
  if (!v67)
  {
    if (v66 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
    {
      v71 = [v1 nextPeriodStart];
      if (v71)
      {
        v72 = v71;
        sub_16BF3C();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      sub_214C(v3, v73, 1, v91);
      v82 = v3;
      goto LABEL_31;
    }

    v78 = sub_8C68();
    v79(v78);
LABEL_3:
    v46 = [v1 lastPeriodStart];
    v47 = v91;
    if (v46)
    {
      sub_8B90();
      sub_16BF3C();

      v48 = v88;
      v49 = v89;
      v50 = *(v89 + 32);
      v50(v88, v16, v47);
      v84 = v1;
      v51 = [v1 nextPeriodStart];
      if (v51)
      {
        v52 = v51;
        v53 = v87;
        sub_16BF3C();

        v50(v90, v53, v47);
        sub_16BF4C();
        sub_16BECC();
        v55 = v54;
        v56 = *(v49 + 8);
        v56(v8, v47);
        sub_16BECC();
        v58 = vabdd_f64(v57, v55);
        sub_16BECC();
        v60 = v48;
        if (v58 >= vabdd_f64(v59, v55))
        {
          v80 = [v84 nextPeriodStart];
          if (!v80)
          {
            v81 = 1;
            v63 = v85;
            goto LABEL_30;
          }

          v62 = v80;
          v63 = v85;
        }

        else
        {
          v61 = [v84 lastPeriodStart];
          if (!v61)
          {
            v81 = 1;
            v63 = v86;
            goto LABEL_30;
          }

          v62 = v61;
          v63 = v86;
        }

        sub_16BF3C();

        v81 = 0;
LABEL_30:
        v56(v90, v47);
        v56(v60, v47);
        sub_214C(v63, v81, 1, v47);
        v82 = v63;
LABEL_31:
        sub_86FC(v82, v92, &qword_1C57E0, &unk_171C60);
        return sub_8748(v42, &qword_1C5680, &unk_16F310);
      }

      (*(v49 + 8))(v48, v47);
    }

    sub_8748(v42, &qword_1C5680, &unk_16F310);
    sub_8AB4();
    return sub_214C(v74, v75, v76, v47);
  }

  sub_8748(v42, &qword_1C5680, &unk_16F310);
  v68 = [v1 lastPeriodStart];
  if (v68)
  {
    v69 = v68;
    sub_16BF3C();

    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  sub_214C(v34, v70, 1, v91);
  return sub_86FC(v34, v92, &qword_1C57E0, &unk_171C60);
}

uint64_t sub_74F8@<X0>(uint64_t a1@<X8>)
{
  v92 = sub_8CDC(a1);
  sub_42F0();
  v90 = v4;
  __chkstk_darwin(v5);
  sub_887C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_8AC0();
  v88 = v10;
  sub_89B4();
  __chkstk_darwin(v11);
  sub_8AC0();
  v91 = v12;
  sub_89B4();
  v14 = __chkstk_darwin(v13);
  v16 = &v84 - v15;
  v17 = __chkstk_darwin(v14);
  sub_8C74(v17, v18, v19, v20, v21, v22, v23, v24, v84);
  v25 = sub_2440(&qword_1C57E0, &unk_171C60);
  v26 = sub_4348(v25);
  __chkstk_darwin(v26);
  sub_887C();
  v86 = v27 - v28;
  sub_89B4();
  __chkstk_darwin(v29);
  sub_8AC0();
  v87 = v30;
  sub_89B4();
  __chkstk_darwin(v31);
  sub_8C94();
  __chkstk_darwin(v32);
  v34 = &v84 - v33;
  v35 = sub_2440(&qword_1C5680, &unk_16F310);
  v36 = sub_4348(v35);
  __chkstk_darwin(v36);
  sub_887C();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v84 - v41;
  sub_2D20(v2, v2[3]);
  v43 = sub_8A6C();
  v44(v43);
  v45 = sub_16CC6C();
  sub_8B20(v42, 1, v45);
  if (!v46)
  {
    sub_86B0(v42, v39, &qword_1C5680, &unk_16F310);
    v66 = sub_8C68();
    v68 = v67(v66);
    if (v68 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
    {
      v69 = [v1 lastPeriodEnd];
      if (v69)
      {
        v70 = v69;
        sub_16BF3C();

        v71 = 0;
      }

      else
      {
        v71 = 1;
      }

      sub_214C(v34, v71, 1, v92);
      v83 = v34;
      goto LABEL_27;
    }

    if (v68 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
    {
      v72 = [v1 nextPeriodEnd];
      if (v72)
      {
        v73 = v72;
        sub_16BF3C();

        v74 = 0;
      }

      else
      {
        v74 = 1;
      }

      sub_214C(v3, v74, 1, v92);
      v83 = v3;
      goto LABEL_27;
    }

    v79 = sub_8C68();
    v80(v79);
  }

  v47 = [v1 lastPeriodEnd];
  v48 = v92;
  if (!v47)
  {
LABEL_15:
    sub_8748(v42, &qword_1C5680, &unk_16F310);
    sub_8AB4();
    return sub_214C(v75, v76, v77, v48);
  }

  v49 = v47;
  sub_16BF3C();

  v50 = v89;
  v51 = v90;
  v52 = *(v90 + 32);
  v52(v89, v16, v48);
  v85 = v1;
  v53 = [v1 nextPeriodEnd];
  if (!v53)
  {
    (*(v51 + 8))(v50, v48);
    goto LABEL_15;
  }

  v54 = v53;
  v55 = v88;
  sub_16BF3C();

  v52(v91, v55, v48);
  sub_16BF4C();
  sub_16BECC();
  v57 = v56;
  v58 = *(v51 + 8);
  v58(v8, v48);
  sub_16BECC();
  v60 = vabdd_f64(v59, v57);
  sub_16BECC();
  v62 = v50;
  if (v60 >= vabdd_f64(v61, v57))
  {
    v81 = [v85 nextPeriodEnd];
    if (!v81)
    {
      v82 = 1;
      v65 = v86;
      goto LABEL_26;
    }

    v64 = v81;
    v65 = v86;
  }

  else
  {
    v63 = [v85 lastPeriodEnd];
    if (!v63)
    {
      v82 = 1;
      v65 = v87;
      goto LABEL_26;
    }

    v64 = v63;
    v65 = v87;
  }

  sub_16BF3C();

  v82 = 0;
LABEL_26:
  v58(v91, v48);
  v58(v62, v48);
  sub_214C(v65, v82, 1, v48);
  v83 = v65;
LABEL_27:
  sub_86FC(v83, v93, &qword_1C57E0, &unk_171C60);
  return sub_8748(v42, &qword_1C5680, &unk_16F310);
}

uint64_t sub_7AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v4);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_16BF5C();
  sub_42F0();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a2, v7, &qword_1C57E0, &unk_171C60);
  sub_8B20(v7, 1, v8);
  if (v14)
  {
    sub_8748(v7, &qword_1C57E0, &unk_171C60);
    v15 = 0;
  }

  else
  {
    v16 = sub_8C50();
    v17(v16);
    sub_88CC();
    sub_85F8(v18, v19, &protocol conformance descriptor for Date);
    v20 = sub_16E16C();
    if (v20)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_16E16C() ^ 1;
    }

    (*(v10 + 8))(v13, v8);
  }

  return v15 & 1;
}

uint64_t sub_7CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_8C50();
  v9 = sub_2440(v7, v8);
  sub_4348(v9);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v13);
  sub_433C();
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v17);
  sub_433C();
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  sub_16D4EC();
  v21 = sub_16D47C();
  v22 = *(a4(0) + 24);

  *(a1 + v22) = v21;
  LOBYTE(v21) = *(a3 + 248);
  sub_16BD9C();
  sub_8AB4();
  sub_214C(v23, v24, v25, v26);
  sub_12093C(v21, v12, v16);
  sub_8748(v12, &qword_1C5690, &dword_16F320);
  v27 = sub_16BE9C();
  sub_8B20(v16, 1, v27);
  if (v28)
  {
    sub_8748(v16, &qword_1C57F8, &unk_172510);
    sub_16D5CC();
    sub_8AB4();
    sub_214C(v29, v30, v31, v32);
  }

  else
  {
    sub_61120(v20);
    (*(*(v27 - 8) + 8))(v16, v27);
  }

  return sub_8640(v20, a1);
}

uint64_t sub_7EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7F8C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_7F8C()
{
  sub_8A88();
  v2 = v1;
  v3 = *v0;
  sub_8A60();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_8084()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_811C;

  return sub_4500();
}

uint64_t sub_811C()
{
  sub_8A88();
  v1 = *v0;
  sub_8A60();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_8220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_82E0()
{
  result = qword_1C57B0;
  if (!qword_1C57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57B0);
  }

  return result;
}

uint64_t sub_8388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_83EC()
{
  result = qword_1C57C0;
  if (!qword_1C57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57C0);
  }

  return result;
}

uint64_t sub_8494(uint64_t a1)
{
  v2 = type metadata accessor for UnavailableDataFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_84F0()
{
  result = qword_1C57D0;
  if (!qword_1C57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57D0);
  }

  return result;
}

uint64_t sub_85F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8640(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_86B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_8B38();
  v5 = sub_8B9C();
  v6(v5);
  return v4;
}

uint64_t sub_86FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_8B38();
  v5 = sub_8B9C();
  v6(v5);
  return v4;
}

uint64_t sub_8748(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2440(a2, a3);
  sub_8B38();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_87A0()
{
  result = qword_1C5810;
  if (!qword_1C5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5810);
  }

  return result;
}

uint64_t sub_8828(uint64_t a1)
{
  v4 = *(v1 + 360);
  *(v2 - 96) = *(v1 + 368);
  *(v2 - 88) = v4;
}

uint64_t sub_889C()
{

  return sub_16C75C();
}

void sub_88FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_8958@<X0>(void *a1@<X8>)
{
  v4 = v1[72];
  *(v2 - 96) = v1[73];
  *(v2 - 88) = v4;
  *(v2 - 80) = v1[42];

  return a1;
}

uint64_t sub_89C0()
{

  return swift_beginAccess();
}

uint64_t sub_89F4()
{
}

uint64_t sub_8A2C(uint64_t a1)
{
}

uint64_t sub_8A44()
{

  return swift_slowAlloc();
}

uint64_t sub_8AD8()
{
  sub_2D20((*(v0 - 80) + 80), *(*(v0 - 80) + 104));

  return sub_16C2FC();
}

uint64_t sub_8B48(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_8BC0()
{

  return swift_task_alloc();
}

uint64_t sub_8BD8()
{

  return swift_slowAlloc();
}

uint64_t sub_8BF0()
{
}

void sub_8C14()
{

  sub_16D76C();
}

uint64_t sub_8C38()
{

  return swift_task_alloc();
}

uint64_t sub_8CDC@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;

  return sub_16BF5C();
}

BOOL sub_8CFC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_8D14(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_8D2C(uint64_t a1)
{

  return sub_16D62C();
}

__n128 GenericBinaryButtonSnippet.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_16E12C();
  sub_99D0();
  sub_9484(v4, v5, &protocol conformance descriptor for Context);
  v6 = sub_16DC6C();
  LOBYTE(v10) = *(a1 + 48);
  v8 = *(a1 + 16);
  result = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  *(a2 + 56) = v6;
  *(a2 + 64) = v9;
  return result;
}

uint64_t GenericBinaryButtonSnippet.body.getter()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x48uLL);
  sub_944C(v0, v3);
  sub_16E0BC();
  sub_9484(&qword_1C5818, &type metadata accessor for BinaryButtonView, &protocol conformance descriptor for BinaryButtonView);
  return sub_16E08C();
}

uint64_t sub_8EA4(__int128 *a1)
{
  v2 = sub_16E02C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440(&qword_1C5830, &qword_178B90);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_2440(&qword_1C5838, qword_16F620);
  v10 = __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = a1[1];
  v32 = *a1;
  v33 = v14;
  v34 = a1[2];
  if (a1[3])
  {
    v36[0] = a1[2];
    v28 = a1[2];
    v26 = v10;
    v25 = v11;
    v15 = swift_allocObject();
    memcpy((v15 + 16), a1, 0x48uLL);
    sub_97F8(v36, v31);
    sub_944C(a1, v31);
    sub_9854();
    sub_16DFFC();
    (*(v3 + 104))(v5, enum case for ButtonItemButtonStyle.Role.preferred(_:), v2);
    v16 = sub_98C8(&qword_1C5848, &qword_1C5830, &qword_178B90, &protocol conformance descriptor for Button<A>);
    sub_16DF2C();
    (*(v3 + 8))(v5, v2);
    v17 = *(v27 + 8);
    v17(v8, v6);
    v31[0] = v6;
    v31[1] = v16;
    swift_getOpaqueTypeConformance2();
    v18 = v26;
    v19 = sub_16DF1C();
    (*(v25 + 8))(v13, v18);
  }

  else
  {
    v36[0] = a1[2];
    v28 = a1[2];
    v20 = swift_allocObject();
    memcpy((v20 + 16), a1, 0x48uLL);
    sub_944C(a1, v31);
    sub_97F8(v36, v31);
    sub_9854();
    sub_16DFFC();
    sub_98C8(&qword_1C5848, &qword_1C5830, &qword_178B90, &protocol conformance descriptor for Button<A>);
    v19 = sub_16DF1C();
    v17 = *(v27 + 8);
    v17(v8, v6);
  }

  v35 = v33;
  v28 = v33;
  v21 = swift_allocObject();
  memcpy((v21 + 16), a1, 0x48uLL);
  sub_944C(a1, v31);
  sub_97F8(&v35, v31);
  sub_9854();
  sub_16DFFC();
  v31[3] = &type metadata for AnyView;
  v31[4] = &protocol witness table for AnyView;
  v31[0] = v19;
  v29 = v6;
  v30 = sub_98C8(&qword_1C5850, &qword_1C5830, &qword_178B90, &protocol conformance descriptor for Button<A>);
  v22 = sub_9910(&v28);
  (*(v27 + 16))(v22, v8, v6);
  sub_16E0AC();
  return (v17)(v8, v6);
}

uint64_t sub_9484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_94E8(uint64_t *a1, char a2)
{
  v2 = a1[7];
  if (v2)
  {
    sub_2440(&qword_1C5858, &qword_173C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16F530;
    v5 = v2;
    sub_16E41C();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = a2;
    sub_16E14C();
    sub_16E11C();
  }

  else
  {
    sub_16E12C();
    sub_99D0();
    sub_9484(v7, v8, &protocol conformance descriptor for Context);
    result = sub_16DC5C();
    __break(1u);
  }

  return result;
}

uint64_t sub_96AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_96EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9790(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_9854()
{
  result = qword_1C5840;
  if (!qword_1C5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5840);
  }

  return result;
}

uint64_t sub_98C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_9790(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_9910(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_9970()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_99E8()
{
  sub_8A88();
  v2 = *v0;
  v1[11] = v3;
  v1[12] = v2;
  v4 = sub_16C89C();
  v1[13] = v4;
  sub_888C(v4);
  v1[14] = v5;
  v1[15] = sub_8BC0();
  v6 = sub_16C80C();
  v1[16] = v6;
  sub_888C(v6);
  v1[17] = v7;
  v1[18] = sub_8BC0();
  v8 = sub_16C83C();
  v1[19] = v8;
  sub_888C(v8);
  v1[20] = v9;
  v1[21] = sub_8BC0();
  v10 = sub_16C7DC();
  v1[22] = v10;
  sub_888C(v10);
  v1[23] = v11;
  v1[24] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[25] = v12;
  sub_888C(v12);
  v1[26] = v13;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v14);
}

uint64_t sub_9C04(uint64_t a1)
{
  v87 = v1;
  v2 = v1[29];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[23];
  v6 = v1[24];
  v7 = v1[22];
  v8 = v1[11];
  v9 = sub_16DBBC();
  sub_8B48(v9, (v1 + 2));
  v84 = v9;
  v82 = *(v4 + 16);
  v82(v2, v9, v3);
  (*(v5 + 16))(v6, v8, v7);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[29];
  v15 = v1[25];
  v14 = v1[26];
  v17 = v1[23];
  v16 = v1[24];
  v18 = v1[22];
  if (v12)
  {
    v80 = v1[29];
    v77 = v1[25];
    v19 = sub_CA60();
    v76 = swift_slowAlloc();
    v86 = v76;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v86);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_C8E0();
    sub_16E68C();
    (*(v17 + 8))(v16, v18);
    v23 = sub_C9E0();
    v26 = sub_3AB7C(v23, v24, v25);

    *(v19 + 14) = v26;
    _os_log_impl(&def_259DC, v10, v11, "%s received input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v76);
    sub_8A2C(v19);

    v27 = *(v14 + 8);
    v27(v80, v77);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v27 = *(v14 + 8);
    v27(v13, v15);
  }

  v28 = v1 + 18;
  v29 = v1 + 17;
  v30 = v1 + 16;
  sub_16C7CC();
  v31 = sub_C9E0();
  if (v32(v31) == enum case for Parse.uso(_:))
  {
    v81 = v27;
    v28 = v1 + 21;
    v33 = v1[21];
    v29 = v1 + 20;
    v34 = v1[20];
    v30 = v1 + 19;
    v35 = v1[19];
    v36 = v1[18];
    v37 = v1[15];
    v38 = v1[14];
    v78 = v1[13];
    (*(v1[17] + 96))(v36, v1[16]);
    (*(v34 + 32))(v33, v36, v35);
    sub_16C82C();
    v39 = sub_10E3DC();
    (*(v38 + 8))(v37, v78);
    if (v39)
    {

      sub_B2948(v40);
      if (v41)
      {
        sub_8B48(v84, (v1 + 8));
        v42 = sub_C9C8();
        (v82)(v42);

        v43 = sub_16DBDC();
        v44 = sub_16E37C();

        v45 = os_log_type_enabled(v43, v44);
        v46 = v1[28];
        v47 = v1[25];
        v48 = v1[20];
        v49 = v1[21];
        v50 = v1[19];
        if (v45)
        {
          v85 = v1[19];
          v51 = sub_CA60();
          v83 = v47;
          v52 = swift_slowAlloc();
          v86 = v52;
          *v51 = 136315394;
          v53 = sub_16E7AC();
          v79 = v46;
          v55 = sub_3AB7C(v53, v54, &v86);

          *(v51 + 4) = v55;
          *(v51 + 12) = 2080;

          sub_B41D0();

          v56 = sub_C9C8();
          v59 = sub_3AB7C(v56, v57, v58);

          *(v51 + 14) = v59;
          _os_log_impl(&def_259DC, v43, v44, "%s did not find a magnitude in %s", v51, 0x16u);
          swift_arrayDestroy();
          sub_8A2C(v52);
          sub_8A2C(v51);

          sub_CA48();
          v81(v79, v83);
          (*(v48 + 8))(v49, v85);
        }

        else
        {

          sub_CA48();
          v81(v46, v47);
          (*(v48 + 8))(v49, v50);
        }
      }

      else
      {
        v69 = sub_B2BD0(v39);
        v70 = *v28;
        v71 = *v29;
        v72 = *v30;
        if (v69 == 61)
        {
          (*(v71 + 8))(*v28, *v30);
          sub_CA48();
        }

        else
        {
          sub_38F88(v69);
          sub_CA48();
          (*(v71 + 8))(v70, v72);
        }
      }

      goto LABEL_17;
    }

    v27 = v81;
  }

  (*(*v29 + 8))(*v28, *v30);
  sub_8B48(v84, (v1 + 5));
  v60 = sub_C9C8();
  (v82)(v60);
  v61 = sub_16DBDC();
  v62 = sub_16E37C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = sub_CA30();
    v86 = v64;
    *v63 = 136315138;
    v65 = sub_16E7AC();
    v67 = sub_3AB7C(v65, v66, &v86);

    *(v63 + 4) = v67;
    _os_log_impl(&def_259DC, v61, v62, "%s received unsupported input", v63, 0xCu);
    sub_2D64(v64);
    sub_8A2C(v64);
    sub_8A2C(v63);
  }

  v68 = sub_C9F8();
  (v27)(v68);
LABEL_17:

  v73 = sub_C9C8();

  return v74(v73);
}

uint64_t sub_A334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v76 = sub_16C80C();
  sub_42F0();
  v73 = v7;
  __chkstk_darwin(v8);
  sub_887C();
  v72 = v9 - v10;
  __chkstk_darwin(v11);
  v66[3] = v66 - v12;
  sub_CA04();
  v13 = sub_16C7DC();
  sub_42F0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_4304();
  v19 = v18 - v17;
  v20 = sub_16DBEC();
  sub_42F0();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_887C();
  v75 = (v24 - v25);
  __chkstk_darwin(v26);
  v28 = v66 - v27;
  v29 = sub_16DBBC();
  sub_8B48(v29, v79);
  v71 = v22;
  v30 = *(v22 + 16);
  v68 = v22 + 16;
  v69 = v29;
  v67 = v30;
  v30(v28, v29, v20);
  v31 = *(v15 + 16);
  v74 = a1;
  v31(v19, a1, v13);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_CA60();
    v70 = v20;
    v35 = v34;
    v36 = swift_slowAlloc();
    v66[2] = a2;
    v37 = v36;
    v78[0] = v36;
    *v35 = 136315394;
    v38 = sub_16E7AC();
    v40 = sub_3AB7C(v38, v39, v78);
    v66[1] = v6;
    v41 = v40;

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    sub_16C7CC();
    v42 = sub_16E1EC();
    v44 = v43;
    (*(v15 + 8))(v19, v13);
    v45 = sub_3AB7C(v42, v44, v78);

    *(v35 + 14) = v45;
    _os_log_impl(&def_259DC, v32, v33, "%s got %s", v35, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v37);
    v46 = v35;
    v20 = v70;
    sub_8A2C(v46);
  }

  else
  {

    (*(v15 + 8))(v19, v13);
  }

  v47 = *(v71 + 8);
  v47(v28, v20);
  v48 = v72;
  sub_16C7CC();
  v49 = v73;
  v50 = v76;
  v51 = (*(v73 + 88))(v48, v76);
  v52 = enum case for Parse.uso(_:);
  (*(v49 + 8))(v48, v50);
  v53 = v75;
  if (v51 == v52)
  {
    return sub_16C47C();
  }

  v55 = v69;
  sub_8B48(v69, v78);
  v67(v53, v55, v20);
  v56 = sub_16DBDC();
  v57 = sub_16E37C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = sub_CA30();
    v70 = v20;
    v60 = v59;
    v77 = v59;
    *v58 = 136315138;
    v61 = sub_16E7AC();
    v63 = sub_3AB7C(v61, v62, &v77);

    *(v58 + 4) = v63;
    _os_log_impl(&def_259DC, v56, v57, "%s not handling parse because it's not a uso parse", v58, 0xCu);
    sub_2D64(v60);
    sub_8A2C(v60);
    sub_8A2C(v58);

    v64 = v53;
    v65 = v70;
  }

  else
  {

    v64 = v53;
    v65 = v20;
  }

  v47(v64, v65);
  return sub_16C48C();
}

uint64_t sub_A884()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  sub_2440(&qword_1C5990, &unk_16F760);
  v1[17] = sub_8BC0();
  v3 = sub_16C46C();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[22] = v5;
  sub_888C(v5);
  v1[23] = v6;
  v1[24] = sub_8BC0();
  v7 = sub_16DBEC();
  v1[25] = v7;
  sub_888C(v7);
  v1[26] = v8;
  v1[27] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v9);
}

uint64_t sub_AA08()
{
  sub_C9EC();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = sub_16DBBC();
  sub_8B48(v4, (v0 + 12));
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "prompt for value: defaulting to identifier", v7, 2u);
    sub_8A2C(v7);
  }

  v8 = v0[16];

  v9 = sub_C9F8();
  v10(v9);
  v11 = sub_208C0(*(v8 + 16));
  v13 = v12;
  v0[28] = v12;
  sub_8388(v8 + 104, (v0 + 2));
  sub_2D20(v0 + 2, v0[5]);
  v14 = swift_task_alloc();
  v0[29] = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_ABB8;

  return sub_1095A0();
}

uint64_t sub_ABB8()
{
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v7 + 248) = v6;
  *(v7 + 256) = v0;

  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_ACFC()
{
  v1 = v0[31];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  sub_2D64(v0 + 2);
  sub_16C44C();
  (*(v5 + 16))(v3, v2, v4);
  sub_C9A0();
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  sub_16C79C();
  sub_16C77C();
  sub_BB98(v6);
  v8 = sub_16C55C();
  sub_214C(v6, 0, 1, v8);
  sub_16C78C();
  v9 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v7 + 184, (v0 + 7));
  v10 = v0[10];
  v11 = v0[11];
  sub_2D20(v0 + 7, v10);
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_AEB8;
  v13 = v0[31];
  v14 = v0[24];
  v15 = v0[15];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v10, v11);
}

uint64_t sub_AEB8()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 272) = v0;

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_AFB4()
{
  sub_C9EC();
  sub_2D64((v0 + 16));
  sub_CA10();

  sub_C9BC();

  return v1();
}

uint64_t sub_B044()
{
  v1 = sub_C9F8();
  v2(v1);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v3();
}

uint64_t sub_B114()
{
  sub_C9EC();

  v1 = sub_C9C8();
  v2(v1);
  sub_2D64((v0 + 56));
  sub_CA10();

  sub_C9BC();

  return v3();
}

uint64_t sub_B1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_16E23C();
    v8 = sub_16D5CC();
    v9 = 0;
  }

  else
  {
    v8 = sub_16D5CC();
    v9 = 1;
  }

  sub_214C(v7, v9, 1, v8);
  return sub_8640(v7, a1);
}

uint64_t sub_B298()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[18] = v6;
  sub_888C(v6);
  v1[19] = v7;
  v1[20] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[21] = v8;
  sub_888C(v8);
  v1[22] = v9;
  v1[23] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_B418(uint64_t a1)
{
  v24 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 7));
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  if (v8)
  {
    v22 = v1[21];
    v12 = sub_CA60();
    v13 = swift_slowAlloc();
    v14 = sub_CA30();
    v23 = v14;
    *v12 = 136315394;
    v15 = sub_16E7AC();
    v21 = v9;
    v17 = sub_3AB7C(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v12, 0x16u);
    sub_C878(v13, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v13);
    sub_2D64(v14);
    sub_8A2C(v14);
    sub_8A2C(v12);

    (*(v10 + 8))(v21, v22);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2D20((v1[12] + 64), *(v1[12] + 88));
  v19 = swift_task_alloc();
  v1[24] = v19;
  *v19 = v1;
  v19[1] = sub_B658;

  return sub_7AA38();
}

uint64_t sub_B658()
{
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {

    sub_C9BC();

    return v6();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_B7B0()
{
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  sub_16C45C();
  (*(v5 + 16))(v3, v2, v4);
  sub_C9A0();
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  sub_16C77C();
  v7 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v6 + 184, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  sub_2D20(v0 + 2, v8);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_B930;
  v11 = v0[25];
  v12 = v0[20];
  v13 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v13, v11, v12, v8, v9);
}

uint64_t sub_B930()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_BA2C()
{
  sub_C9EC();

  v1 = sub_C9F8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_BAE4()
{
  v1 = sub_C9C8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_BB98@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v72 = sub_16DBEC();
  sub_42F0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_887C();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v70 = &v60 - v8;
  sub_CA04();
  sub_16C55C();
  sub_42F0();
  v61 = v10;
  v62 = v9;
  __chkstk_darwin(v9);
  sub_4304();
  v13 = v12 - v11;
  sub_16C96C();
  sub_42F0();
  v68 = v15;
  v69 = v14;
  __chkstk_darwin(v14);
  sub_4304();
  v65 = v17 - v16;
  sub_CA04();
  sub_16C92C();
  sub_42F0();
  v66 = v19;
  v67 = v18;
  __chkstk_darwin(v18);
  sub_887C();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v60 - v24;
  v26 = sub_2440(&qword_1C5980, &qword_16F748);
  __chkstk_darwin(v26 - 8);
  v28 = &v60 - v27;
  v29 = sub_16C87C();
  sub_42F0();
  v64 = v30;
  __chkstk_darwin(v31);
  sub_887C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v63 = &v60 - v36;
  sub_CA04();
  sub_16CF7C();
  v37 = sub_16CF5C();
  sub_16C9DC();
  if (sub_369C(v28, 1, v29) == 1)
  {
    sub_C878(v28, &qword_1C5980, &qword_16F748);
    v38 = sub_16DBCC();
    sub_8B48(v38, v75);
    (*(v2 + 16))(v6, v38, v72);
    v39 = sub_16DBDC();
    v40 = sub_16E37C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&def_259DC, v39, v40, "Failed to create protobuf UsoGraph from UsoTask", v41, 2u);
      sub_8A2C(v41);
    }

    (*(v2 + 8))(v6, v72);
    sub_16C54C();
  }

  else
  {
    v44 = v63;
    v43 = v64;
    v45 = sub_C9E0();
    v46(v45);
    sub_16C91C();
    (*(v43 + 16))(v34, v44, v29);
    sub_16C90C();
    v47 = v65;
    sub_16C95C();
    (*(v66 + 16))(v22, v25, v67);
    sub_16C94C();
    sub_16C54C();
    sub_2440(&qword_1C5988, &unk_16F750);
    v48 = v68;
    v49 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_16F530;
    (*(v48 + 16))(v50 + v49, v47, v69);
    sub_16C53C();
    v51 = sub_16DBCC();
    sub_8B48(v51, v75);
    (*(v2 + 16))(v70, v51, v72);

    v52 = sub_16DBDC();
    v53 = sub_16E36C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v60 = v13;
      v55 = v54;
      v56 = sub_CA30();
      v73 = v37;
      v74 = v56;
      *v55 = 136315138;
      sub_16CE4C();

      v57 = sub_16E1EC();
      v59 = sub_3AB7C(v57, v58, &v74);

      *(v55 + 4) = v59;
      _os_log_impl(&def_259DC, v52, v53, "Built nlContextUpdate with SystemPrompted for task: %s", v55, 0xCu);
      sub_2D64(v56);
      sub_8A2C(v56);
      v13 = v60;
      sub_8A2C(v55);
    }

    (*(v2 + 8))(v70, v72);
    (*(v68 + 8))(v65, v69);
    (*(v66 + 8))(v25, v67);
    (*(v64 + 8))(v63, v29);
    return (*(v61 + 32))(v71, v13, v62);
  }
}

uint64_t sub_C22C()
{
  sub_C938(v0 + 24);
  sub_2D64((v0 + 184));

  return _swift_deallocClassInstance(v0, 224, 7);
}

uint64_t sub_C294(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_C32C;

  return sub_99E8();
}

uint64_t sub_C32C()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_C9D4();
  v9 = v8;
  sub_8A60();
  *v10 = v9;
  v11 = *v1;
  sub_C990();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v9 + 16);
    *v13 = v7;
    v13[1] = v5;
    v13[2] = v3;
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_C43C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_A884();
}

uint64_t sub_C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_C98C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t sub_C588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_C98C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t sub_C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_C6F0;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_C6F0()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_C9BC();

  return v3();
}

uint64_t sub_C7D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_B298();
}

uint64_t sub_C878(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2440(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_C8E0()
{
  result = qword_1C5998;
  if (!qword_1C5998)
  {
    sub_16C7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5998);
  }

  return result;
}

uint64_t sub_CA10()
{
}

uint64_t sub_CA30()
{

  return swift_slowAlloc();
}

uint64_t sub_CA48()
{
}

uint64_t sub_CA60()
{

  return swift_slowAlloc();
}

uint64_t sub_CAFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_D350(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_CB44@<X0>(_BYTE *a1@<X8>)
{
  result = LogPeriodFlow.on(input:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_CB70(uint64_t a1)
{
  v2 = sub_FA70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CBAC(uint64_t a1)
{
  v2 = sub_FA70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CBE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000000017AA20 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000000017AA40 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000000017AA60 == a2;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000000017AA80 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x42636972656E6567 && a2 == 0xED00006E6F747475;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x800000000017AAA0 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x800000000017AAC0 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017AAE0 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000000017AB00 == a2;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6144746867696568 && a2 == 0xEF79726575516174;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6952656E6F6870 && a2 == 0xEA00000000007367;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ALL && 0x800000000017AB20 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6575517065656C73 && a2 == 0xEA00000000007972;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x800000000017AB40 == a2;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x800000000017AB60 == a2;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x6E69526863746177 && a2 == 0xEA00000000007367)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_16E6BC();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
        }
      }
    }
  }
}

Swift::Int sub_D0EC(unsigned __int8 a1)
{
  sub_16E72C();
  sub_16E73C(a1);
  return sub_16E75C();
}

uint64_t sub_D134(char a1)
{
  result = 0x42636972656E6567;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6144746867696568;
      break;
    case 10:
      v3 = 0x52656E6F6870;
      goto LABEL_16;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0x6575517065656C73;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      v3 = 0x526863746177;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_D350(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_16E6BC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_D3C0()
{
  sub_16E72C();
  sub_16E73C(0);
  return sub_16E75C();
}

uint64_t sub_D404(uint64_t a1)
{
  v2 = sub_F9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D440(uint64_t a1)
{
  v2 = sub_F9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D47C(uint64_t a1)
{
  v2 = sub_FA1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D4B8(uint64_t a1)
{
  v2 = sub_FA1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_D510(uint64_t a1)
{
  v2 = *v1;
  sub_16E72C();
  sub_16E73C(v2);
  return sub_16E75C();
}

uint64_t sub_D55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CBE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D0AC();
  *a1 = result;
  return result;
}

uint64_t sub_D5CC(uint64_t a1)
{
  v2 = sub_F37C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D608(uint64_t a1)
{
  v2 = sub_F37C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D644(uint64_t a1)
{
  v2 = sub_F974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D680(uint64_t a1)
{
  v2 = sub_F974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D6BC(uint64_t a1)
{
  v2 = sub_F878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D6F8(uint64_t a1)
{
  v2 = sub_F878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D734(uint64_t a1)
{
  v2 = sub_F920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D770(uint64_t a1)
{
  v2 = sub_F920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D7AC(uint64_t a1)
{
  v2 = sub_F77C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D7E8(uint64_t a1)
{
  v2 = sub_F77C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D824(uint64_t a1)
{
  v2 = sub_F7D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D860(uint64_t a1)
{
  v2 = sub_F7D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D89C(uint64_t a1)
{
  v2 = sub_F824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D8D8(uint64_t a1)
{
  v2 = sub_F824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D914(uint64_t a1)
{
  v2 = sub_F728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D950(uint64_t a1)
{
  v2 = sub_F728();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D98C(uint64_t a1)
{
  v2 = sub_F62C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D9C8(uint64_t a1)
{
  v2 = sub_F62C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DA04(uint64_t a1)
{
  v2 = sub_F5D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DA40(uint64_t a1)
{
  v2 = sub_F5D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DA7C(uint64_t a1)
{
  v2 = sub_F584();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DAB8(uint64_t a1)
{
  v2 = sub_F584();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DAF4(uint64_t a1)
{
  v2 = sub_F530();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DB30(uint64_t a1)
{
  v2 = sub_F530();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DB6C(uint64_t a1)
{
  v2 = sub_F4DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DBA8(uint64_t a1)
{
  v2 = sub_F4DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_DBE4(uint64_t a1)
{
  sub_16E72C();
  sub_16E73C(0);
  return sub_16E75C();
}

uint64_t sub_DC24(uint64_t a1)
{
  v2 = sub_F434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DC60(uint64_t a1)
{
  v2 = sub_F434();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WellnessSnippets.encode(to:)(void *a1)
{
  v311 = sub_2440(&qword_1C59A0, &qword_16F770);
  sub_42F0();
  v310 = v2;
  sub_433C();
  __chkstk_darwin(v3);
  sub_13088();
  v309 = v4;
  v308 = sub_2440(&qword_1C59A8, &qword_16F778);
  sub_42F0();
  v307 = v5;
  sub_433C();
  __chkstk_darwin(v6);
  sub_13088();
  v306 = v7;
  v8 = sub_CA04();
  Model = type metadata accessor for TemperatureQueryModel(v8);
  sub_8B38();
  __chkstk_darwin(v9);
  sub_12FD4();
  v305 = v10;
  sub_2440(&qword_1C59B0, &qword_16F780);
  sub_42F0();
  v302 = v12;
  v303 = v11;
  sub_433C();
  __chkstk_darwin(v13);
  sub_13088();
  v301 = v14;
  v15 = sub_CA04();
  v299 = type metadata accessor for SpecificMedCompletedLogModel(v15);
  sub_8B38();
  __chkstk_darwin(v16);
  sub_12FD4();
  v300 = v17;
  sub_2440(&qword_1C59B8, &qword_16F788);
  sub_42F0();
  v297 = v19;
  v298 = v18;
  sub_433C();
  __chkstk_darwin(v20);
  sub_13088();
  v296 = v21;
  v22 = sub_CA04();
  v294 = type metadata accessor for SleepQueryModel(v22);
  sub_8B38();
  __chkstk_darwin(v23);
  sub_12FD4();
  v295 = v24;
  sub_2440(&qword_1C59C0, &qword_16F790);
  sub_42F0();
  v292 = v26;
  v293 = v25;
  sub_433C();
  __chkstk_darwin(v27);
  sub_13088();
  v291 = v28;
  v29 = sub_CA04();
  v289 = type metadata accessor for SingleActivitySummaryModel(v29);
  sub_8B38();
  __chkstk_darwin(v30);
  sub_12FD4();
  v290 = v31;
  sub_2440(&qword_1C59C8, &qword_16F798);
  sub_42F0();
  v287 = v33;
  v288 = v32;
  sub_433C();
  __chkstk_darwin(v34);
  sub_13088();
  v286 = v35;
  sub_2440(&qword_1C59D0, &qword_16F7A0);
  sub_42F0();
  v284 = v37;
  v285 = v36;
  sub_433C();
  __chkstk_darwin(v38);
  sub_13088();
  v283 = v39;
  v40 = sub_CA04();
  v281 = type metadata accessor for HeightQueryModel(v40);
  sub_8B38();
  __chkstk_darwin(v41);
  sub_12FD4();
  v282 = v42;
  sub_2440(&qword_1C59D8, &qword_16F7A8);
  sub_42F0();
  v279 = v44;
  v280 = v43;
  sub_433C();
  __chkstk_darwin(v45);
  sub_13088();
  v278 = v46;
  v47 = sub_CA04();
  v276 = type metadata accessor for GenericQueryModel(v47);
  sub_8B38();
  __chkstk_darwin(v48);
  sub_12FD4();
  v277 = v49;
  sub_2440(&qword_1C59E0, &qword_16F7B0);
  sub_42F0();
  v274 = v51;
  v275 = v50;
  sub_433C();
  __chkstk_darwin(v52);
  sub_13088();
  v273 = v53;
  v54 = sub_CA04();
  v271 = type metadata accessor for HealthDataLogModel(v54);
  sub_8B38();
  __chkstk_darwin(v55);
  sub_12FD4();
  v272 = v56;
  sub_2440(&qword_1C59E8, &qword_16F7B8);
  sub_42F0();
  v269 = v58;
  v270 = v57;
  sub_433C();
  __chkstk_darwin(v59);
  sub_13088();
  v268 = v60;
  v61 = sub_CA04();
  v266 = type metadata accessor for GenericMedCompletedLogModel(v61);
  sub_8B38();
  __chkstk_darwin(v62);
  sub_12FD4();
  v267 = v63;
  sub_2440(&qword_1C59F0, &qword_16F7C0);
  sub_42F0();
  v264 = v65;
  v265 = v64;
  sub_433C();
  __chkstk_darwin(v66);
  sub_13088();
  v263 = v67;
  sub_2440(&qword_1C59F8, &qword_16F7C8);
  sub_42F0();
  v261 = v69;
  v262 = v68;
  sub_433C();
  __chkstk_darwin(v70);
  sub_13088();
  v260 = v71;
  v72 = sub_CA04();
  v258 = type metadata accessor for GenericButtonModel(v72);
  sub_8B38();
  __chkstk_darwin(v73);
  sub_12FD4();
  v259 = v74;
  sub_2440(&qword_1C5A00, &qword_16F7D0);
  sub_42F0();
  v256 = v76;
  v257 = v75;
  sub_433C();
  __chkstk_darwin(v77);
  sub_13088();
  v255 = v78;
  v79 = sub_CA04();
  v253 = type metadata accessor for CycleTrackingLogModel(v79);
  sub_8B38();
  __chkstk_darwin(v80);
  sub_12FD4();
  v254 = v81;
  sub_2440(&qword_1C5A08, &qword_16F7D8);
  sub_42F0();
  v251 = v83;
  v252 = v82;
  sub_433C();
  __chkstk_darwin(v84);
  sub_13088();
  v250 = v85;
  v86 = sub_CA04();
  v248 = type metadata accessor for BloodPressureLogModel(v86);
  sub_8B38();
  __chkstk_darwin(v87);
  sub_12FD4();
  v249 = v88;
  sub_2440(&qword_1C5A10, &qword_16F7E0);
  sub_42F0();
  v246 = v90;
  v247 = v89;
  sub_433C();
  __chkstk_darwin(v91);
  sub_13088();
  v245 = v92;
  v93 = sub_CA04();
  v243 = type metadata accessor for BloodPressureQueryModel(v93);
  sub_8B38();
  __chkstk_darwin(v94);
  sub_12FD4();
  v244 = v95;
  sub_2440(&qword_1C5A18, &qword_16F7E8);
  sub_42F0();
  v241 = v97;
  v242 = v96;
  sub_433C();
  __chkstk_darwin(v98);
  sub_13088();
  v240 = v99;
  v100 = sub_CA04();
  type metadata accessor for OxygenSaturationQueryModel(v100);
  sub_8B38();
  __chkstk_darwin(v101);
  v103 = &v239 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WellnessSnippets(0);
  sub_8B38();
  __chkstk_darwin(v104);
  v106 = &v239 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_2440(&qword_1C5A20, &qword_16F7F0);
  sub_42F0();
  v314 = v107;
  sub_433C();
  __chkstk_darwin(v108);
  v110 = &v239 - v109;
  sub_2D20(a1, a1[3]);
  sub_F37C();
  v313 = v110;
  sub_16E77C();
  sub_F3D0(v312, v106);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v120 = v244;
      sub_11670(v106, v244, type metadata accessor for BloodPressureQueryModel);
      LOBYTE(v316[0]) = 1;
      v191 = sub_FA1C();
      sub_12FE8(&type metadata for WellnessSnippets.BloodPressureDataQueryCodingKeys, v316, v192, v193, v191);
      sub_13190();
      sub_11808(v194, v195, &protocol conformance descriptor for BloodPressureQueryModel);
      v196 = sub_130DC();
      sub_13234(v196);
      v197 = sub_13024();
      v198(v197);
      v129 = type metadata accessor for BloodPressureQueryModel;
      goto LABEL_18;
    case 2u:
      v120 = v249;
      sub_11670(v106, v249, type metadata accessor for BloodPressureLogModel);
      LOBYTE(v316[0]) = 2;
      v162 = sub_F9C8();
      sub_12FE8(&type metadata for WellnessSnippets.BloodPressureDataLogCodingKeys, v316, v163, v164, v162);
      sub_13148();
      sub_11808(v165, v166, &protocol conformance descriptor for BloodPressureLogModel);
      v167 = sub_130DC();
      sub_13234(v167);
      v168 = sub_13024();
      v169(v168);
      v129 = type metadata accessor for BloodPressureLogModel;
      goto LABEL_18;
    case 3u:
      v120 = v254;
      sub_11670(v106, v254, type metadata accessor for CycleTrackingLogModel);
      LOBYTE(v316[0]) = 3;
      v175 = sub_F974();
      sub_12FE8(&type metadata for WellnessSnippets.CycleTrackingDataLogCodingKeys, v316, v176, v177, v175);
      sub_130E8();
      sub_11808(v178, v179, &protocol conformance descriptor for CycleTrackingLogModel);
      v180 = sub_130DC();
      sub_13234(v180);
      v181 = sub_13024();
      v182(v181);
      v129 = type metadata accessor for CycleTrackingLogModel;
      goto LABEL_18;
    case 4u:
      v120 = v259;
      sub_11670(v106, v259, type metadata accessor for GenericButtonModel);
      LOBYTE(v316[0]) = 4;
      v138 = sub_F920();
      sub_12FE8(&type metadata for WellnessSnippets.GenericButtonCodingKeys, v316, v139, v140, v138);
      sub_131F0();
      sub_11808(v141, v142, &protocol conformance descriptor for GenericButtonModel);
      v143 = sub_130DC();
      sub_13234(v143);
      v144 = sub_13024();
      v145(v144);
      v129 = type metadata accessor for GenericButtonModel;
      goto LABEL_18;
    case 5u:
      v199 = *(v106 + 1);
      v312 = *v106;
      v200 = *(v106 + 3);
      v311 = *(v106 + 2);
      v202 = *(v106 + 4);
      v201 = *(v106 + 5);
      v203 = v106[48];
      LOBYTE(v316[0]) = 5;
      sub_F878();
      v204 = v263;
      v205 = v313;
      sub_16E60C();
      v316[0] = v312;
      v316[1] = v199;
      v316[2] = v311;
      v316[3] = v200;
      v316[4] = v202;
      v316[5] = v201;
      LOBYTE(v316[6]) = v203;
      sub_F8CC();
      v206 = v265;
      sub_16E67C();
      (*(v264 + 8))(v204, v206);
      sub_132A4();
      v207(v205, v317);

    case 6u:
      v120 = v267;
      sub_11670(v106, v267, type metadata accessor for GenericMedCompletedLogModel);
      LOBYTE(v316[0]) = 6;
      v217 = sub_F824();
      sub_12FE8(&type metadata for WellnessSnippets.GenericMedCompletedLogCodingKeys, v316, v218, v219, v217);
      sub_13208();
      sub_11808(v220, v221, &protocol conformance descriptor for GenericMedCompletedLogModel);
      v222 = sub_130DC();
      sub_13234(v222);
      v223 = sub_13024();
      v224(v223);
      v129 = type metadata accessor for GenericMedCompletedLogModel;
      goto LABEL_18;
    case 7u:
      v120 = v272;
      sub_11670(v106, v272, type metadata accessor for HealthDataLogModel);
      LOBYTE(v316[0]) = 7;
      v183 = sub_F7D0();
      sub_12FE8(&type metadata for WellnessSnippets.GenericDataTypeLogCodingKeys, v316, v184, v185, v183);
      sub_131D8();
      sub_11808(v186, v187, &protocol conformance descriptor for HealthDataLogModel);
      v188 = sub_130DC();
      sub_13234(v188);
      v189 = sub_13024();
      v190(v189);
      v129 = type metadata accessor for HealthDataLogModel;
      goto LABEL_18;
    case 8u:
      v120 = v277;
      sub_11670(v106, v277, type metadata accessor for GenericQueryModel);
      LOBYTE(v316[0]) = 8;
      v231 = sub_F77C();
      sub_12FE8(&type metadata for WellnessSnippets.GenericDataQueryCodingKeys, v316, v232, v233, v231);
      sub_13178();
      sub_11808(v234, v235, &protocol conformance descriptor for GenericQueryModel);
      v236 = sub_130DC();
      sub_13234(v236);
      v237 = sub_13024();
      v238(v237);
      v129 = type metadata accessor for GenericQueryModel;
      goto LABEL_18;
    case 9u:
      v120 = v282;
      sub_11670(v106, v282, type metadata accessor for HeightQueryModel);
      LOBYTE(v316[0]) = 9;
      v154 = sub_F728();
      sub_12FE8(&type metadata for WellnessSnippets.HeightDataQueryCodingKeys, v316, v155, v156, v154);
      sub_13160();
      sub_11808(v157, v158, &protocol conformance descriptor for HeightQueryModel);
      v159 = sub_130DC();
      sub_13234(v159);
      v160 = sub_13024();
      v161(v160);
      v129 = type metadata accessor for HeightQueryModel;
      goto LABEL_18;
    case 0xAu:
      memcpy(v316, v106, 0xF1uLL);
      v315[0] = 10;
      v225 = sub_F62C();
      sub_12FE8(&type metadata for WellnessSnippets.PhoneRingsCodingKeys, v315, v226, v227, v225);
      memcpy(v315, v316, 0xF1uLL);
      sub_F680();
      sub_13234(v315);
      v228 = sub_13024();
      v229(v228);
      sub_132A4();
      v230(v106, v103);
      return sub_F6D4(v316);
    case 0xBu:
      v120 = v290;
      sub_11670(v106, v290, type metadata accessor for SingleActivitySummaryModel);
      LOBYTE(v316[0]) = 11;
      v130 = sub_F5D8();
      sub_12FE8(&type metadata for WellnessSnippets.SingleActivitySummaryQueryCodingKeys, v316, v131, v132, v130);
      sub_13100();
      sub_11808(v133, v134, &protocol conformance descriptor for SingleActivitySummaryModel);
      v135 = sub_130DC();
      sub_13234(v135);
      v136 = sub_13024();
      v137(v136);
      v129 = type metadata accessor for SingleActivitySummaryModel;
      goto LABEL_18;
    case 0xCu:
      v120 = v295;
      sub_11670(v106, v295, type metadata accessor for SleepQueryModel);
      LOBYTE(v316[0]) = 12;
      v146 = sub_F584();
      sub_12FE8(&type metadata for WellnessSnippets.SleepQueryCodingKeys, v316, v147, v148, v146);
      sub_131A8();
      sub_11808(v149, v150, &protocol conformance descriptor for SleepQueryModel);
      v151 = sub_130DC();
      sub_13234(v151);
      v152 = sub_13024();
      v153(v152);
      v129 = type metadata accessor for SleepQueryModel;
      goto LABEL_18;
    case 0xDu:
      v120 = v300;
      sub_11670(v106, v300, type metadata accessor for SpecificMedCompletedLogModel);
      LOBYTE(v316[0]) = 13;
      v209 = sub_F530();
      sub_12FE8(&type metadata for WellnessSnippets.SpecificMedCompletedLogCodingKeys, v316, v210, v211, v209);
      sub_13118();
      sub_11808(v212, v213, &protocol conformance descriptor for SpecificMedCompletedLogModel);
      v214 = sub_130DC();
      sub_13234(v214);
      v215 = sub_13024();
      v216(v215);
      v129 = type metadata accessor for SpecificMedCompletedLogModel;
      goto LABEL_18;
    case 0xEu:
      v120 = v305;
      sub_11670(v106, v305, type metadata accessor for TemperatureQueryModel);
      LOBYTE(v316[0]) = 14;
      v121 = sub_F4DC();
      sub_12FE8(&type metadata for WellnessSnippets.TemperatureDataQueryCodingKeys, v316, v122, v123, v121);
      sub_13130();
      sub_11808(v124, v125, &protocol conformance descriptor for TemperatureQueryModel);
      v126 = sub_130DC();
      sub_13234(v126);
      v127 = sub_13024();
      v128(v127);
      v129 = type metadata accessor for TemperatureQueryModel;
LABEL_18:
      sub_FAC4(v120, v129);
      goto LABEL_19;
    case 0xFu:
      memcpy(v316, v106, 0x59uLL);
      v315[0] = 15;
      v170 = sub_F434();
      sub_12FE8(&type metadata for WellnessSnippets.WatchRingsCodingKeys, v315, v171, v172, v170);
      memcpy(v315, v316, 0x59uLL);
      sub_F488();
      sub_13234(v315);
      v173 = sub_13024();
      v174(v173);
LABEL_19:
      sub_132A4();
      v118 = v106;
      v119 = v103;
      break;
    default:
      sub_11670(v106, v103, type metadata accessor for OxygenSaturationQueryModel);
      LOBYTE(v316[0]) = 0;
      sub_FA70();
      v111 = v240;
      v112 = v317;
      v113 = v313;
      sub_16E60C();
      sub_131C0();
      sub_11808(v114, v115, &protocol conformance descriptor for OxygenSaturationQueryModel);
      v116 = v242;
      sub_16E67C();
      (*(v241 + 8))(v111, v116);
      sub_FAC4(v103, type metadata accessor for OxygenSaturationQueryModel);
      sub_132A4();
      v118 = v113;
      v119 = v112;
      break;
  }

  return v117(v118, v119);
}

uint64_t type metadata accessor for WellnessSnippets(uint64_t a1)
{
  result = qword_1C5CC0;
  if (!qword_1C5CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_F37C()
{
  result = qword_1C5A28;
  if (!qword_1C5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A28);
  }

  return result;
}

uint64_t sub_F3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WellnessSnippets(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_F434()
{
  result = qword_1C5A30;
  if (!qword_1C5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A30);
  }

  return result;
}

unint64_t sub_F488()
{
  result = qword_1C5A38;
  if (!qword_1C5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A38);
  }

  return result;
}

unint64_t sub_F4DC()
{
  result = qword_1C5A40;
  if (!qword_1C5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A40);
  }

  return result;
}

unint64_t sub_F530()
{
  result = qword_1C5A50;
  if (!qword_1C5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A50);
  }

  return result;
}

unint64_t sub_F584()
{
  result = qword_1C5A60;
  if (!qword_1C5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A60);
  }

  return result;
}

unint64_t sub_F5D8()
{
  result = qword_1C5A70;
  if (!qword_1C5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A70);
  }

  return result;
}

unint64_t sub_F62C()
{
  result = qword_1C5A80;
  if (!qword_1C5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A80);
  }

  return result;
}

unint64_t sub_F680()
{
  result = qword_1C5A88;
  if (!qword_1C5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A88);
  }

  return result;
}

unint64_t sub_F728()
{
  result = qword_1C5A90;
  if (!qword_1C5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A90);
  }

  return result;
}

unint64_t sub_F77C()
{
  result = qword_1C5AA0;
  if (!qword_1C5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AA0);
  }

  return result;
}

unint64_t sub_F7D0()
{
  result = qword_1C5AB0;
  if (!qword_1C5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AB0);
  }

  return result;
}

unint64_t sub_F824()
{
  result = qword_1C5AC0;
  if (!qword_1C5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AC0);
  }

  return result;
}

unint64_t sub_F878()
{
  result = qword_1C5AD0;
  if (!qword_1C5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AD0);
  }

  return result;
}

unint64_t sub_F8CC()
{
  result = qword_1C5AD8;
  if (!qword_1C5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AD8);
  }

  return result;
}

unint64_t sub_F920()
{
  result = qword_1C5AE0;
  if (!qword_1C5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AE0);
  }

  return result;
}

unint64_t sub_F974()
{
  result = qword_1C5AF0;
  if (!qword_1C5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5AF0);
  }

  return result;
}

unint64_t sub_F9C8()
{
  result = qword_1C5B00;
  if (!qword_1C5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5B00);
  }

  return result;
}

unint64_t sub_FA1C()
{
  result = qword_1C5B10;
  if (!qword_1C5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5B10);
  }

  return result;
}

unint64_t sub_FA70()
{
  result = qword_1C5B20;
  if (!qword_1C5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5B20);
  }

  return result;
}

uint64_t sub_FAC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t WellnessSnippets.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v276 = a2;
  v3 = sub_2440(&qword_1C5B30, &qword_16F7F8);
  sub_12F4C(v3, &__src[48]);
  v268 = v4;
  sub_433C();
  __chkstk_darwin(v5);
  sub_13088();
  sub_130A0(v6);
  v7 = sub_2440(&qword_1C5B38, &qword_16F800);
  sub_12F4C(v7, &__src[40]);
  v278[2] = v8;
  sub_433C();
  __chkstk_darwin(v9);
  sub_13088();
  sub_130A0(v10);
  v11 = sub_2440(&qword_1C5B40, &qword_16F808);
  sub_12F4C(v11, &__src[24]);
  v278[1] = v12;
  sub_433C();
  __chkstk_darwin(v13);
  sub_13088();
  sub_130A0(v14);
  v15 = sub_2440(&qword_1C5B48, &qword_16F810);
  sub_12F4C(v15, &__src[16]);
  v267 = v16;
  sub_433C();
  __chkstk_darwin(v17);
  sub_13088();
  sub_130A0(v18);
  v19 = sub_2440(&qword_1C5B50, &qword_16F818);
  sub_12F4C(v19, __src);
  v266 = v20;
  sub_433C();
  __chkstk_darwin(v21);
  sub_13088();
  sub_130A0(v22);
  v23 = sub_2440(&qword_1C5B58, &qword_16F820);
  sub_12F4C(v23, &v280);
  v264 = v24;
  sub_433C();
  __chkstk_darwin(v25);
  sub_13088();
  sub_130A0(v26);
  v27 = sub_2440(&qword_1C5B60, &qword_16F828);
  sub_12F4C(v27, &v279);
  v265 = v28;
  sub_433C();
  __chkstk_darwin(v29);
  sub_13088();
  sub_130A0(v30);
  v31 = sub_2440(&qword_1C5B68, &qword_16F830);
  sub_12F4C(v31, v278);
  v263 = v32;
  sub_433C();
  __chkstk_darwin(v33);
  sub_13088();
  sub_130A0(v34);
  v35 = sub_2440(&qword_1C5B70, &qword_16F838);
  sub_12F4C(v35, &v276);
  v262 = v36;
  sub_433C();
  __chkstk_darwin(v37);
  sub_13088();
  sub_130A0(v38);
  v39 = sub_2440(&qword_1C5B78, &qword_16F840);
  sub_12F4C(v39, v275);
  v261 = v40;
  sub_433C();
  __chkstk_darwin(v41);
  sub_13088();
  sub_130A0(v42);
  v43 = sub_2440(&qword_1C5B80, &qword_16F848);
  sub_12F4C(v43, &v274);
  v275[0] = v44;
  sub_433C();
  __chkstk_darwin(v45);
  sub_13088();
  sub_130A0(v46);
  v47 = sub_2440(&qword_1C5B88, &qword_16F850);
  sub_12F4C(v47, &v273);
  v260 = v48;
  sub_433C();
  __chkstk_darwin(v49);
  sub_13088();
  sub_130A0(v50);
  v51 = sub_2440(&qword_1C5B90, &qword_16F858);
  sub_12F4C(v51, &v272);
  v259 = v52;
  sub_433C();
  __chkstk_darwin(v53);
  sub_13088();
  sub_130A0(v54);
  v55 = sub_2440(&qword_1C5B98, &qword_16F860);
  sub_12F4C(v55, &v271);
  v258 = v56;
  sub_433C();
  __chkstk_darwin(v57);
  sub_13088();
  sub_130A0(v58);
  v59 = sub_2440(&qword_1C5BA0, &qword_16F868);
  sub_12F4C(v59, &v270);
  v257 = v60;
  sub_433C();
  __chkstk_darwin(v61);
  sub_13088();
  sub_130A0(v62);
  v63 = sub_2440(&qword_1C5BA8, &qword_16F870);
  sub_12F4C(v63, &v269);
  v256 = v64;
  sub_433C();
  __chkstk_darwin(v65);
  sub_13088();
  sub_130A0(v66);
  v67 = sub_2440(&qword_1C5BB0, &qword_16F878);
  sub_12F4C(v67, &__src[232]);
  v278[0] = v68;
  sub_433C();
  __chkstk_darwin(v69);
  sub_13088();
  v283 = v70;
  v71 = sub_CA04();
  v277 = type metadata accessor for WellnessSnippets(v71);
  sub_8B38();
  __chkstk_darwin(v72);
  sub_13058();
  __chkstk_darwin(v73);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v74);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v75);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v76);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v77);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v78);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v79);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v80);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v81);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v82);
  sub_8AC0();
  sub_13058();
  v84 = __chkstk_darwin(v83);
  v86 = &v244 - v85;
  v87 = __chkstk_darwin(v84);
  v89 = &v244 - v88;
  v90 = __chkstk_darwin(v87);
  v92 = &v244 - v91;
  v93 = __chkstk_darwin(v90);
  v95 = &v244 - v94;
  v96 = __chkstk_darwin(v93);
  v98 = &v244 - v97;
  __chkstk_darwin(v96);
  v100 = &v244 - v99;
  v101 = a1[3];
  v280 = a1;
  sub_2D20(a1, v101);
  sub_F37C();
  v102 = v281;
  sub_16E76C();
  if (v102)
  {
    goto LABEL_10;
  }

  v246 = v98;
  v247 = v95;
  v248 = v92;
  v249 = v89;
  v250 = v86;
  v281 = v100;
  v103 = v279;
  v104 = v283;
  v105 = sub_16E5FC();
  v109 = sub_11558(v105, 0);
  if (v107 == v108 >> 1)
  {
    v110 = v278[0];
LABEL_9:
    v123 = v277;
    v124 = sub_16E4BC();
    swift_allocError();
    v126 = v125;
    sub_2440(&qword_1C5BB8, &qword_16F880);
    *v126 = v123;
    sub_16E57C();
    sub_16E4AC();
    (*(*(v124 - 8) + 104))(v126, enum case for DecodingError.typeMismatch(_:), v124);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v110 + 8))(v104, v103);
LABEL_10:
    v127 = v280;
    return sub_2D64(v127);
  }

  v245 = 0;
  if (v107 >= (v108 >> 1))
  {
    __break(1u);
    JUMPOUT(0x114E4);
  }

  v111 = *(v106 + v107);
  sub_115A0(v107 + 1, v108 >> 1, v109, v106, v107, v108);
  v113 = v112;
  v115 = v114;
  swift_unknownObjectRelease();
  if (v113 != v115 >> 1)
  {
    v103 = v279;
    v110 = v278[0];
    v104 = v283;
    goto LABEL_9;
  }

  v116 = v276;
  v117 = v245;
  v118 = v275[1];
  v119 = v275[0];
  switch(v111)
  {
    case 1:
      sub_130B8(1);
      sub_FA1C();
      sub_12F7C(&type metadata for WellnessSnippets.BloodPressureDataQueryCodingKeys, __src);
      type metadata accessor for BloodPressureQueryModel(0);
      sub_13190();
      sub_11808(v157, v158, &protocol conformance descriptor for BloodPressureQueryModel);
      v159 = sub_13078();
      sub_13034(v159);
      sub_130D0();
      swift_unknownObjectRelease();
      v213 = sub_13010();
      v214(v213);
      v215 = sub_12F30();
      v216(v215);
      sub_13068();
      goto LABEL_30;
    case 2:
      sub_130B8(2);
      sub_F9C8();
      sub_12F7C(&type metadata for WellnessSnippets.BloodPressureDataLogCodingKeys, __src);
      type metadata accessor for BloodPressureLogModel(0);
      sub_13148();
      sub_11808(v144, v145, &protocol conformance descriptor for BloodPressureLogModel);
      v146 = sub_13078();
      sub_13034(v146);
      sub_130D0();
      swift_unknownObjectRelease();
      v197 = sub_13010();
      v198(v197);
      v199 = sub_12F30();
      v200(v199);
      sub_13068();
      goto LABEL_30;
    case 3:
      sub_130B8(3);
      sub_F974();
      sub_130C4();
      v153 = v283;
      sub_16E56C();
      if (v117)
      {
        sub_13094();
        v167(v153, v119);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v168 = type metadata accessor for CycleTrackingLogModel(0);
      sub_130E8();
      sub_11808(v169, v170, &protocol conformance descriptor for CycleTrackingLogModel);
      v171 = v249;
      sub_1324C(v168);
      sub_130D0();
      swift_unknownObjectRelease();
      sub_13094();
      v201 = sub_13298();
      v202(v201);
      v203 = sub_12F30();
      v204(v203);
      sub_130AC();
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v180 = v171;
LABEL_31:
      v241 = v281;
      sub_11670(v180, v281, v179);
      v242 = v280;
      sub_12F64();
      sub_11670(v241, v116, v243);
      v127 = v242;
      break;
    case 4:
      sub_130B8(4);
      sub_F920();
      sub_12F7C(&type metadata for WellnessSnippets.GenericButtonCodingKeys, __src);
      type metadata accessor for GenericButtonModel(0);
      sub_131F0();
      sub_11808(v135, v136, &protocol conformance descriptor for GenericButtonModel);
      v137 = sub_13078();
      sub_13034(v137);
      sub_130D0();
      swift_unknownObjectRelease();
      v185 = sub_13010();
      v186(v185);
      v187 = sub_12F30();
      v188(v187);
      sub_13068();
      goto LABEL_30;
    case 5:
      sub_130B8(5);
      sub_F878();
      sub_12F7C(&type metadata for WellnessSnippets.GenericBinaryButtonCodingKeys, __src);
      sub_11724();
      sub_1324C(&type metadata for GenericBinaryButtonModel);
      sub_130D0();
      swift_unknownObjectRelease();
      v217 = sub_13298();
      v218(v217);
      v219 = sub_12F30();
      v220(v219);
      v221 = *&__src[16];
      v222 = *&__src[32];
      v223 = *&__src[40];
      v224 = __src[48];
      v152 = v251;
      *v251 = *__src;
      v152[1] = v221;
      *(v152 + 4) = v222;
      *(v152 + 5) = v223;
      *(v152 + 48) = v224;
      sub_130AC();
      goto LABEL_29;
    case 6:
      sub_130B8(6);
      sub_F824();
      sub_12F7C(&type metadata for WellnessSnippets.GenericMedCompletedLogCodingKeys, __src);
      type metadata accessor for GenericMedCompletedLogModel(0);
      sub_13208();
      sub_11808(v163, v164, &protocol conformance descriptor for GenericMedCompletedLogModel);
      v165 = sub_13078();
      sub_13034(v165);
      sub_130D0();
      swift_unknownObjectRelease();
      v229 = sub_13010();
      v230(v229);
      v231 = sub_12F30();
      v232(v231);
      sub_13068();
      goto LABEL_30;
    case 7:
      sub_130B8(7);
      sub_F7D0();
      sub_12F7C(&type metadata for WellnessSnippets.GenericDataTypeLogCodingKeys, __src);
      type metadata accessor for HealthDataLogModel(0);
      sub_131D8();
      sub_11808(v154, v155, &protocol conformance descriptor for HealthDataLogModel);
      v156 = sub_13078();
      sub_13034(v156);
      sub_130D0();
      swift_unknownObjectRelease();
      v205 = sub_13010();
      v206(v205);
      v207 = sub_12F30();
      v208(v207);
      sub_13068();
      goto LABEL_30;
    case 8:
      sub_130B8(8);
      sub_F77C();
      sub_12F7C(&type metadata for WellnessSnippets.GenericDataQueryCodingKeys, __src);
      type metadata accessor for GenericQueryModel(0);
      sub_13178();
      sub_11808(v172, v173, &protocol conformance descriptor for GenericQueryModel);
      v174 = sub_13078();
      sub_13034(v174);
      sub_130D0();
      swift_unknownObjectRelease();
      v237 = sub_13010();
      v238(v237);
      v239 = sub_12F30();
      v240(v239);
      sub_13068();
      goto LABEL_30;
    case 9:
      sub_130B8(9);
      sub_F728();
      sub_12F7C(&type metadata for WellnessSnippets.HeightDataQueryCodingKeys, __src);
      type metadata accessor for HeightQueryModel(0);
      sub_13160();
      sub_11808(v141, v142, &protocol conformance descriptor for HeightQueryModel);
      v143 = sub_13078();
      sub_13034(v143);
      sub_130D0();
      swift_unknownObjectRelease();
      v193 = sub_13010();
      v194(v193);
      v195 = sub_12F30();
      v196(v195);
      sub_13068();
      goto LABEL_30;
    case 10:
      sub_130B8(10);
      sub_F62C();
      sub_12F7C(&type metadata for WellnessSnippets.PhoneRingsCodingKeys, __src);
      sub_116D0();
      sub_130C4();
      sub_1324C(v166);
      sub_13274();
      swift_unknownObjectRelease();
      v233 = sub_13264();
      v234(v233);
      v235 = sub_13220();
      v236(v235);
      v152 = v252;
      memcpy(v252, __src, 0xF1uLL);
      sub_130AC();
      goto LABEL_29;
    case 11:
      sub_130B8(11);
      sub_F5D8();
      sub_12F7C(&type metadata for WellnessSnippets.SingleActivitySummaryQueryCodingKeys, __src);
      type metadata accessor for SingleActivitySummaryModel(0);
      sub_13100();
      sub_11808(v132, v133, &protocol conformance descriptor for SingleActivitySummaryModel);
      v134 = sub_13078();
      sub_13034(v134);
      sub_130D0();
      swift_unknownObjectRelease();
      v181 = sub_13010();
      v182(v181);
      v183 = sub_12F30();
      v184(v183);
      sub_13068();
      goto LABEL_30;
    case 12:
      sub_130B8(12);
      sub_F584();
      sub_12F7C(&type metadata for WellnessSnippets.SleepQueryCodingKeys, __src);
      type metadata accessor for SleepQueryModel(0);
      sub_131A8();
      sub_11808(v138, v139, &protocol conformance descriptor for SleepQueryModel);
      v140 = sub_13078();
      sub_13034(v140);
      sub_130D0();
      swift_unknownObjectRelease();
      v189 = sub_13010();
      v190(v189);
      v191 = sub_12F30();
      v192(v191);
      sub_13068();
      goto LABEL_30;
    case 13:
      sub_130B8(13);
      sub_F530();
      sub_12FAC(&type metadata for WellnessSnippets.SpecificMedCompletedLogCodingKeys, __src);
      type metadata accessor for SpecificMedCompletedLogModel(0);
      sub_13118();
      sub_11808(v160, v161, &protocol conformance descriptor for SpecificMedCompletedLogModel);
      v162 = v254;
      sub_130C4();
      sub_16E5EC();
      sub_130D0();
      swift_unknownObjectRelease();
      v225 = sub_1328C();
      v226(v225);
      v227 = sub_12F30();
      v228(v227);
      sub_130AC();
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v180 = v162;
      goto LABEL_31;
    case 14:
      sub_130B8(14);
      sub_F4DC();
      sub_12FAC(&type metadata for WellnessSnippets.TemperatureDataQueryCodingKeys, __src);
      type metadata accessor for TemperatureQueryModel(0);
      sub_13130();
      sub_11808(v129, v130, &protocol conformance descriptor for TemperatureQueryModel);
      v131 = v255;
      sub_130C4();
      sub_16E5EC();
      sub_130D0();
      swift_unknownObjectRelease();
      v175 = sub_1328C();
      v176(v175);
      v177 = sub_12F30();
      v178(v177);
      sub_130AC();
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v180 = v131;
      goto LABEL_31;
    case 15:
      sub_130B8(15);
      sub_F434();
      sub_12F7C(&type metadata for WellnessSnippets.WatchRingsCodingKeys, __src);
      sub_1161C();
      sub_130C4();
      sub_1324C(v147);
      sub_13274();
      swift_unknownObjectRelease();
      v148 = sub_13264();
      v149(v148);
      v150 = sub_13220();
      v151(v150);
      v152 = v253;
      memcpy(v253, __src, 0x59uLL);
      sub_130AC();
LABEL_29:
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v180 = v152;
      goto LABEL_31;
    default:
      __src[0] = 0;
      sub_FA70();
      sub_12F7C(&type metadata for WellnessSnippets.BloodOxygenDataQueryCodingKeys, __src);
      type metadata accessor for OxygenSaturationQueryModel(0);
      sub_131C0();
      sub_11808(v120, v121, &protocol conformance descriptor for OxygenSaturationQueryModel);
      v122 = sub_13078();
      sub_13034(v122);
      sub_130D0();
      swift_unknownObjectRelease();
      v209 = sub_13010();
      v210(v209);
      v211 = sub_12F30();
      v212(v211);
      sub_13068();
LABEL_30:
      swift_storeEnumTagMultiPayload();
      sub_12F64();
      v180 = v118;
      goto LABEL_31;
  }

  return sub_2D64(v127);
}

uint64_t sub_11558(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_115A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1161C()
{
  result = qword_1C5BC0;
  if (!qword_1C5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5BC0);
  }

  return result;
}

uint64_t sub_11670(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_116D0()
{
  result = qword_1C5BE8;
  if (!qword_1C5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5BE8);
  }

  return result;
}

unint64_t sub_11724()
{
  result = qword_1C5C10;
  if (!qword_1C5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5C10);
  }

  return result;
}

uint64_t sub_11808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1185C(uint64_t a1)
{
  result = type metadata accessor for OxygenSaturationQueryModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BloodPressureQueryModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BloodPressureLogModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CycleTrackingLogModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for GenericButtonModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for GenericMedCompletedLogModel(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for HealthDataLogModel(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for GenericQueryModel(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for HeightQueryModel(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for SingleActivitySummaryModel(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for SleepQueryModel(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for SpecificMedCompletedLogModel(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for TemperatureQueryModel(319);
                          if (v14 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            return 0;
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
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WellnessSnippets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessSnippets.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x11B28);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedsLoggingCorrectionsFlow.CorrectionsTask(unsigned int *a1, int a2)
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

_BYTE *sub_11CBC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x11D58);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_11D94()
{
  result = qword_1C5CF8;
  if (!qword_1C5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5CF8);
  }

  return result;
}

unint64_t sub_11DEC()
{
  result = qword_1C5D00;
  if (!qword_1C5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D00);
  }

  return result;
}

unint64_t sub_11E44()
{
  result = qword_1C5D08;
  if (!qword_1C5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D08);
  }

  return result;
}

unint64_t sub_11E9C()
{
  result = qword_1C5D10;
  if (!qword_1C5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D10);
  }

  return result;
}

unint64_t sub_11EF4()
{
  result = qword_1C5D18;
  if (!qword_1C5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D18);
  }

  return result;
}

unint64_t sub_11F4C()
{
  result = qword_1C5D20;
  if (!qword_1C5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D20);
  }

  return result;
}

unint64_t sub_11FA4()
{
  result = qword_1C5D28;
  if (!qword_1C5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D28);
  }

  return result;
}

unint64_t sub_11FFC()
{
  result = qword_1C5D30;
  if (!qword_1C5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D30);
  }

  return result;
}

unint64_t sub_12054()
{
  result = qword_1C5D38;
  if (!qword_1C5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D38);
  }

  return result;
}

unint64_t sub_120AC()
{
  result = qword_1C5D40;
  if (!qword_1C5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D40);
  }

  return result;
}

unint64_t sub_12104()
{
  result = qword_1C5D48;
  if (!qword_1C5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D48);
  }

  return result;
}

unint64_t sub_1215C()
{
  result = qword_1C5D50;
  if (!qword_1C5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D50);
  }

  return result;
}

unint64_t sub_121B4()
{
  result = qword_1C5D58;
  if (!qword_1C5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D58);
  }

  return result;
}

unint64_t sub_1220C()
{
  result = qword_1C5D60;
  if (!qword_1C5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D60);
  }

  return result;
}

unint64_t sub_12264()
{
  result = qword_1C5D68;
  if (!qword_1C5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D68);
  }

  return result;
}

unint64_t sub_122BC()
{
  result = qword_1C5D70;
  if (!qword_1C5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D70);
  }

  return result;
}

unint64_t sub_12314()
{
  result = qword_1C5D78;
  if (!qword_1C5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D78);
  }

  return result;
}

unint64_t sub_1236C()
{
  result = qword_1C5D80;
  if (!qword_1C5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D80);
  }

  return result;
}

unint64_t sub_123C4()
{
  result = qword_1C5D88;
  if (!qword_1C5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D88);
  }

  return result;
}

unint64_t sub_1241C()
{
  result = qword_1C5D90;
  if (!qword_1C5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D90);
  }

  return result;
}

unint64_t sub_12474()
{
  result = qword_1C5D98;
  if (!qword_1C5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D98);
  }

  return result;
}

unint64_t sub_124CC()
{
  result = qword_1C5DA0;
  if (!qword_1C5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DA0);
  }

  return result;
}

unint64_t sub_12524()
{
  result = qword_1C5DA8;
  if (!qword_1C5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DA8);
  }

  return result;
}

unint64_t sub_1257C()
{
  result = qword_1C5DB0;
  if (!qword_1C5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DB0);
  }

  return result;
}

unint64_t sub_125D4()
{
  result = qword_1C5DB8;
  if (!qword_1C5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DB8);
  }

  return result;
}

unint64_t sub_1262C()
{
  result = qword_1C5DC0;
  if (!qword_1C5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DC0);
  }

  return result;
}

unint64_t sub_12684()
{
  result = qword_1C5DC8;
  if (!qword_1C5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DC8);
  }

  return result;
}

unint64_t sub_126DC()
{
  result = qword_1C5DD0;
  if (!qword_1C5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DD0);
  }

  return result;
}

unint64_t sub_12734()
{
  result = qword_1C5DD8;
  if (!qword_1C5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DD8);
  }

  return result;
}

unint64_t sub_1278C()
{
  result = qword_1C5DE0;
  if (!qword_1C5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DE0);
  }

  return result;
}

unint64_t sub_127E4()
{
  result = qword_1C5DE8;
  if (!qword_1C5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DE8);
  }

  return result;
}

unint64_t sub_1283C()
{
  result = qword_1C5DF0;
  if (!qword_1C5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DF0);
  }

  return result;
}

unint64_t sub_12894()
{
  result = qword_1C5DF8;
  if (!qword_1C5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DF8);
  }

  return result;
}

unint64_t sub_128EC()
{
  result = qword_1C5E00;
  if (!qword_1C5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E00);
  }

  return result;
}

unint64_t sub_12944()
{
  result = qword_1C5E08;
  if (!qword_1C5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E08);
  }

  return result;
}

unint64_t sub_1299C()
{
  result = qword_1C5E10;
  if (!qword_1C5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E10);
  }

  return result;
}

unint64_t sub_129F4()
{
  result = qword_1C5E18;
  if (!qword_1C5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E18);
  }

  return result;
}

unint64_t sub_12A4C()
{
  result = qword_1C5E20;
  if (!qword_1C5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E20);
  }

  return result;
}

unint64_t sub_12AA4()
{
  result = qword_1C5E28;
  if (!qword_1C5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E28);
  }

  return result;
}

unint64_t sub_12AFC()
{
  result = qword_1C5E30;
  if (!qword_1C5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E30);
  }

  return result;
}

unint64_t sub_12B54()
{
  result = qword_1C5E38;
  if (!qword_1C5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E38);
  }

  return result;
}

unint64_t sub_12BAC()
{
  result = qword_1C5E40;
  if (!qword_1C5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E40);
  }

  return result;
}

unint64_t sub_12C04()
{
  result = qword_1C5E48;
  if (!qword_1C5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E48);
  }

  return result;
}

unint64_t sub_12C5C()
{
  result = qword_1C5E50;
  if (!qword_1C5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E50);
  }

  return result;
}

unint64_t sub_12CB4()
{
  result = qword_1C5E58;
  if (!qword_1C5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E58);
  }

  return result;
}

unint64_t sub_12D0C()
{
  result = qword_1C5E60;
  if (!qword_1C5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E60);
  }

  return result;
}

unint64_t sub_12D64()
{
  result = qword_1C5E68;
  if (!qword_1C5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E68);
  }

  return result;
}

unint64_t sub_12DBC()
{
  result = qword_1C5E70;
  if (!qword_1C5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E70);
  }

  return result;
}

unint64_t sub_12E14()
{
  result = qword_1C5E78;
  if (!qword_1C5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E78);
  }

  return result;
}

unint64_t sub_12E6C()
{
  result = qword_1C5E80;
  if (!qword_1C5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E80);
  }

  return result;
}

unint64_t sub_12EC4()
{
  result = qword_1C5E88;
  if (!qword_1C5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E88);
  }

  return result;
}

uint64_t sub_12F7C(uint64_t a1, uint64_t a2)
{

  return sub_16E56C();
}

uint64_t sub_12FAC(uint64_t a1, uint64_t a2)
{

  return sub_16E56C();
}

uint64_t sub_12FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_16E60C();
}

uint64_t sub_13034(uint64_t a1)
{

  return sub_16E5EC();
}

uint64_t sub_13234(uint64_t a1)
{

  return sub_16E67C();
}

uint64_t sub_1324C(uint64_t a1)
{

  return sub_16E5EC();
}

uint64_t WatchRingsModel.exerciseGoalValue.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.exerciseTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.moveTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t WatchRingsModel.standTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.exerciseLabel.setter()
{
  sub_15474();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t PhoneRingsModel.exerciseValueLabel.setter()
{
  sub_15474();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t PhoneRingsModel.exerciseUnitLabel.setter()
{
  sub_15474();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t PhoneRingsModel.moveLabel.setter()
{
  sub_15474();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t PhoneRingsModel.moveValueLabel.setter()
{
  sub_15474();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t PhoneRingsModel.moveUnitLabel.setter()
{
  sub_15474();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t PhoneRingsModel.standLabel.setter()
{
  sub_15474();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t PhoneRingsModel.standValueLabel.setter()
{
  sub_15474();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t PhoneRingsModel.standUnitLabel.setter()
{
  sub_15474();

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

void __swiftcall PhoneRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:exerciseLabel:exerciseUnitLabel:moveLabel:moveUnitLabel:standLabel:standUnitLabel:isSmartEnabled:)(WellnessFlowPlugin::PhoneRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue, Swift::String exerciseLabel, Swift::String exerciseUnitLabel, Swift::String moveLabel, Swift::String moveUnitLabel, Swift::String standLabel, Swift::String standUnitLabel, Swift::Bool isSmartEnabled)
{
  v68 = 0;
  v66 = 0;
  v64 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (exerciseTotalValue <= -9.22337204e18)
  {
    goto LABEL_26;
  }

  v20 = v16;
  if (exerciseTotalValue >= sub_154A4())
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = v28;
  v34 = v27;
  v35 = v26;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  v44 = v29;
  *__src = exerciseTotalValue;
  v45 = sub_16E68C();
  sub_15480(v45, v46);
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_28;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v20 >= sub_154A4())
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v55 = v40;
  *__src = v20;
  v104._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v104);

  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_31;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v43 >= sub_154A4())
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v54 = v71;
  *__src = v43;
  v47 = sub_16E68C();
  sub_15480(v47, v48);
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_34;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v44 >= sub_154A4())
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v53 = v70;
  *__src = v44;
  v105._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v105);

  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_37;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v41 >= sub_154A4())
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v49 = v70;
  v52 = v71;
  *__src = v41;
  v50 = sub_16E68C();
  sub_15480(v50, v51);
  sub_15454();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_40;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v42 < sub_154A4())
  {
    v106._countAndFlagsBits = sub_16E68C();
    sub_16E26C(v106);

    *__src = v20;
    __src[8] = v68;
    *&__src[9] = *v67;
    *&__src[12] = *&v67[3];
    *&__src[16] = exerciseTotalValue;
    __src[24] = v66;
    *&__src[25] = *v65;
    *&__src[28] = *&v65[3];
    *&__src[32] = v44;
    __src[40] = v64;
    *&__src[44] = *&v63[3];
    *&__src[41] = *v63;
    *&__src[48] = v43;
    __src[56] = v62;
    *&__src[60] = *&v61[3];
    *&__src[57] = *v61;
    *&__src[64] = v42;
    __src[72] = v60;
    *&__src[76] = *&v59[3];
    *&__src[73] = *v59;
    *&__src[80] = v41;
    __src[88] = v58;
    *&__src[92] = *&v57[3];
    *&__src[89] = *v57;
    *&__src[96] = v55;
    *&__src[104] = v39;
    *&__src[112] = v70;
    *&__src[120] = v71;
    *&__src[128] = v38;
    *&__src[136] = v37;
    *&__src[144] = v36;
    *&__src[152] = v35;
    *&__src[160] = v70;
    *&__src[168] = v71;
    *&__src[176] = v34;
    *&__src[184] = v33;
    *&__src[192] = standLabel;
    *&__src[208] = v70;
    *&__src[216] = v71;
    *&__src[224] = standUnitLabel;
    __src[240] = isSmartEnabled;
    v70 = v20;
    LOBYTE(v71) = v68;
    HIDWORD(v71) = *&v67[3];
    *(&v71 + 1) = *v67;
    v72 = exerciseTotalValue;
    v73 = v66;
    *v74 = *v65;
    *&v74[3] = *&v65[3];
    v75 = v44;
    v76 = v64;
    *v77 = *v63;
    *&v77[3] = *&v63[3];
    v78 = v43;
    v79 = v62;
    *v80 = *v61;
    *&v80[3] = *&v61[3];
    v81 = v42;
    v82 = v60;
    *v83 = *v59;
    *&v83[3] = *&v59[3];
    v84 = v41;
    v85 = v58;
    *v86 = *v57;
    *&v86[3] = *&v57[3];
    v87 = v55;
    v88 = v39;
    v89 = v53;
    v90 = v54;
    v91 = v38;
    v92 = v37;
    v93 = v36;
    v94 = v35;
    v95 = v49;
    v96 = v52;
    v97 = v34;
    v98 = v33;
    v99 = standLabel;
    v100 = *&__src[208];
    v101 = *&__src[216];
    v102 = standUnitLabel;
    v103 = isSmartEnabled;
    sub_13E04(__src, v56);
    sub_F6D4(&v70);
    memcpy(retstr, __src, 0xF1uLL);
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_13E3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000017AB80 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017ABA0 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6573696372657865 && a2 == 0xED00006C6562614CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017ABC0 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x800000000017ABE0 == a2;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6562614C65766F6DLL && a2 == 0xE90000000000006CLL;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x756C615665766F6DLL && a2 == 0xEE006C6562614C65;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x74696E5565766F6DLL && a2 == 0xED00006C6562614CLL;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x62614C646E617473 && a2 == 0xEA00000000006C65;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C6156646E617473 && a2 == 0xEF6C6562614C6575;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x696E55646E617473 && a2 == 0xEE006C6562614C74;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_16E6BC();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
        }
      }
    }
  }
}

unint64_t sub_14368(char a1)
{
  result = 0x6C616F4765766F6DLL;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61746F5465766F6DLL;
      break;
    case 4:
      result = 0x616F47646E617473;
      break;
    case 5:
      result = 0x746F54646E617473;
      break;
    case 6:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6562614C65766F6DLL;
      break;
    case 10:
      result = 0x756C615665766F6DLL;
      break;
    case 11:
      result = 0x74696E5565766F6DLL;
      break;
    case 12:
      result = 0x62614C646E617473;
      break;
    case 13:
      result = 0x6C6156646E617473;
      break;
    case 14:
      result = 0x696E55646E617473;
      break;
    case 15:
      result = 0x457472616D537369;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_145B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_13E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_145D8(uint64_t a1)
{
  v2 = sub_14910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14614(uint64_t a1)
{
  v2 = sub_14910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneRingsModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1C5E90, &qword_170D30);
  sub_42F0();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_2D20(a1, a1[3]);
  sub_14910();
  sub_16E77C();
  v11 = 0;
  sub_16E62C();
  if (!v1)
  {
    sub_153FC(1);
    sub_16E62C();
    sub_153FC(2);
    sub_16E62C();
    sub_153FC(3);
    sub_16E62C();
    sub_153FC(4);
    sub_16E62C();
    sub_153FC(5);
    sub_16E62C();
    sub_153FC(6);
    sub_16E61C();
    sub_153FC(7);
    sub_16E61C();
    sub_153FC(8);
    sub_16E61C();
    sub_153FC(9);
    sub_16E61C();
    sub_153FC(10);
    sub_16E61C();
    sub_153FC(11);
    sub_16E61C();
    sub_153FC(12);
    sub_16E61C();
    sub_153FC(13);
    sub_16E61C();
    sub_153FC(14);
    sub_16E61C();
    v11 = 15;
    sub_16E65C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_14910()
{
  result = qword_1C5E98;
  if (!qword_1C5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5E98);
  }

  return result;
}

void *PhoneRingsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2440(&qword_1C5EA0, &qword_170D38);
  sub_42F0();
  __chkstk_darwin(v5);
  v61 = a1;
  sub_2D20(a1, a1[3]);
  sub_14910();
  sub_16E76C();
  if (v2)
  {
    v114 = v2;
    sub_1543C();
    sub_2D64(a1);
  }

  else
  {
    v6 = a2;
    LOBYTE(v64) = 0;
    v7 = sub_16E59C();
    v113 = v8 & 1;
    sub_15414(1);
    v9 = sub_16E59C();
    v111 = v10 & 1;
    sub_15414(2);
    v11 = sub_16E59C();
    v109 = v12 & 1;
    sub_15414(3);
    v59 = sub_16E59C();
    v107 = v13 & 1;
    sub_15414(4);
    v58 = sub_16E59C();
    v105 = v14 & 1;
    sub_15414(5);
    v57 = sub_16E59C();
    v103 = v15 & 1;
    sub_15414(6);
    v54 = sub_16E58C();
    v56 = v17;
    sub_15414(7);
    v18 = sub_16E58C();
    v55 = v19;
    v52 = v18;
    sub_15414(8);
    v51 = sub_16E58C();
    v53 = v20;
    v21 = v9;
    v49 = v6;
    sub_15414(9);
    v22 = sub_16E58C();
    v50 = v23;
    v24 = v22;
    sub_15414(10);
    v25 = sub_16E58C();
    v48 = v26;
    v27 = v25;
    sub_15414(11);
    v46 = sub_16E58C();
    v47 = v28;
    sub_15414(12);
    v44 = sub_16E58C();
    v45 = v29;
    sub_15414(13);
    v43 = sub_16E58C();
    v62 = v30;
    sub_15414(14);
    v41 = sub_16E58C();
    v42 = v31;
    v101 = 15;
    v114 = 0;
    v32 = sub_16E5CC();
    v33 = sub_15428();
    v34(v33);
    v60 = v32 & 1;
    v63[0] = v7;
    v35 = v113;
    LOBYTE(v63[1]) = v113;
    v63[2] = v21;
    v36 = v111;
    LOBYTE(v63[3]) = v111;
    v63[4] = v11;
    v37 = v109;
    LOBYTE(v63[5]) = v109;
    v63[6] = v59;
    v38 = v107;
    LOBYTE(v63[7]) = v107;
    v63[8] = v58;
    v39 = v105;
    LOBYTE(v63[9]) = v105;
    v63[10] = v57;
    v40 = v103;
    LOBYTE(v63[11]) = v103;
    v63[12] = v54;
    v63[13] = v56;
    v63[14] = v52;
    v63[15] = v55;
    v63[16] = v51;
    v63[17] = v53;
    v63[18] = v24;
    v63[19] = v50;
    v63[20] = v27;
    v63[21] = v48;
    v63[22] = v46;
    v63[23] = v47;
    v63[24] = v44;
    v63[25] = v45;
    v63[26] = v43;
    v63[27] = v62;
    v63[28] = v41;
    v63[29] = v42;
    LOBYTE(v63[30]) = v60;
    sub_13E04(v63, &v64);
    sub_2D64(v61);
    v64 = v7;
    v65 = v35;
    *v66 = *v112;
    *&v66[3] = *&v112[3];
    v67 = v21;
    v68 = v36;
    *v69 = *v110;
    *&v69[3] = *&v110[3];
    v70 = v11;
    v71 = v37;
    *v72 = *v108;
    *&v72[3] = *&v108[3];
    v73 = v59;
    v74 = v38;
    *&v75[3] = *&v106[3];
    *v75 = *v106;
    v76 = v58;
    v77 = v39;
    *&v78[3] = *&v104[3];
    *v78 = *v104;
    v79 = v57;
    v80 = v40;
    *v81 = *v102;
    *&v81[3] = *&v102[3];
    v82 = v54;
    v83 = v56;
    v84 = v52;
    v85 = v55;
    v86 = v51;
    v87 = v53;
    v88 = v24;
    v89 = v50;
    v90 = v27;
    v91 = v48;
    v92 = v46;
    v93 = v47;
    v94 = v44;
    v95 = v45;
    v96 = v43;
    v97 = v62;
    v98 = v41;
    v99 = v42;
    v100 = v60;
    sub_F6D4(&v64);
    return memcpy(v49, v63, 0xF1uLL);
  }
}

void *sub_15084@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = PhoneRingsModel.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xF1uLL);
  }

  return result;
}

uint64_t sub_150F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 241))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 104);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1514C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneRingsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x152BCLL);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_152F8()
{
  result = qword_1C5EA8;
  if (!qword_1C5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EA8);
  }

  return result;
}

unint64_t sub_15350()
{
  result = qword_1C5EB0;
  if (!qword_1C5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EB0);
  }

  return result;
}

unint64_t sub_153A8()
{
  result = qword_1C5EB8;
  if (!qword_1C5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EB8);
  }

  return result;
}

void sub_15480(unint64_t a1, unint64_t a2)
{
  STACK[0x280] = a1;
  STACK[0x288] = a2;
  v3._countAndFlagsBits = 47;
  v3._object = 0xE100000000000000;

  sub_16E26C(v3);
}

uint64_t sub_154C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_15508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_155A4(uint64_t a1, uint64_t a2)
{
  sub_17858();

  return sub_16C33C();
}

uint64_t sub_155F8()
{
  sub_8A88();
  *(v1 + 392) = v2;
  *(v1 + 216) = v3;
  *(v1 + 224) = v0;
  *(v1 + 232) = type metadata accessor for GenericButtonModel(0);
  *(v1 + 240) = sub_8BC0();
  sub_2440(&qword_1C57F8, &unk_172510);
  *(v1 + 248) = sub_8BC0();
  v4 = sub_16BE9C();
  *(v1 + 256) = v4;
  sub_888C(v4);
  *(v1 + 264) = v5;
  *(v1 + 272) = sub_8BC0();
  v6 = sub_16C46C();
  *(v1 + 280) = v6;
  sub_888C(v6);
  *(v1 + 288) = v7;
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  v8 = sub_16C7BC();
  *(v1 + 312) = v8;
  sub_888C(v8);
  *(v1 + 320) = v9;
  *(v1 + 328) = sub_8BC0();
  sub_2440(&qword_1C5800, &unk_16F510);
  *(v1 + 336) = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_157D4()
{
  v1 = *(v0 + 392);
  sub_16D74();
  v2 = sub_16E14C();
  v3 = sub_1730C(v1, v2);

  v4 = 1;
  if (v3 != 205)
  {
    sub_208C0(v3);
    sub_16E23C();

    v4 = 0;
  }

  v5 = *(v0 + 336);
  v6 = sub_16D5CC();
  sub_214C(v5, v4, 1, v6);
  sub_179F4(v3);
  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  *v7 = v0;
  v7[1] = sub_1592C;

  return sub_1649CC();
}

uint64_t sub_1592C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 352) = a1;

  v4 = *(v3 + 336);
  if (v1)
  {

    sub_C878(v4, &qword_1C5800, &unk_16F510);
    v5 = sub_162F4;
  }

  else
  {
    sub_C878(v4, &qword_1C5800, &unk_16F510);
    v5 = sub_15A9C;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_15A9C(uint64_t a1)
{
  v2 = v1[44];
  v4 = v1[37];
  v3 = v1[38];
  v5 = v1[35];
  v6 = v1[36];
  v7 = v1[28];
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v8 = [v2 catId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_2D20((v7 + 40), *(v7 + 64));
  v9 = sub_17970();
  v10(v9);
  sub_2D20(v1 + 2, v1[5]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v1 + 2);
  }

  else
  {
    sub_2D20((v7 + 40), *(v7 + 64));
    v11 = sub_17970();
    v12(v11);
    sub_2D20(v1 + 7, v1[10]);
    sub_17970();
    v13 = sub_16C3FC();
    sub_2D64(v1 + 7);
    sub_2D64(v1 + 2);
    if ((v13 & 1) == 0)
    {
LABEL_6:
      v16 = v1[44];
      v17 = v1[28];
      v18 = v17[33];
      v19 = v17[34];
      sub_2D20(v17 + 30, v18);
      sub_2440(&qword_1C5ED8, &unk_173090);
      v20 = swift_allocObject();
      v1[47] = v20;
      *(v20 + 16) = xmmword_170F70;
      *(v20 + 32) = v16;
      v21 = v16;
      swift_task_alloc();
      sub_179E8();
      v1[48] = v22;
      *v22 = v23;
      v22[1] = sub_16128;
      v24 = v1[41];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v1 + 12, v20, v24, v18, v19);
    }
  }

  v14 = v1[31];
  v15 = v1[32];
  sub_1602A8(v1[28], v14);
  if (sub_369C(v14, 1, v15) == 1)
  {
    sub_C878(v1[31], &qword_1C57F8, &unk_172510);
    goto LABEL_6;
  }

  v25 = v1[44];
  v27 = v1[33];
  v26 = v1[34];
  v28 = v1[32];
  v30 = v1[29];
  v29 = v1[30];
  v31 = v1[28];
  (*(v27 + 32))(v26, v1[31], v28);
  v32 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
  v34 = v33;
  (*(v27 + 16))(v29 + *(v30 + 20), v26, v28);
  *v29 = v32;
  v29[1] = v34;
  v35 = v31[33];
  v36 = v31[34];
  sub_2D20(v31 + 30, v35);
  v1[25] = type metadata accessor for WellnessSnippets(0);
  v1[26] = sub_17548();
  v37 = sub_9910(v1 + 22);
  sub_175A0(v29, v37);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v38 = swift_allocObject();
  v1[45] = v38;
  *(v38 + 16) = xmmword_170F70;
  *(v38 + 32) = v25;
  v39 = v25;
  swift_task_alloc();
  sub_179E8();
  v1[46] = v40;
  *v40 = v41;
  v40[1] = sub_15F24;
  v42 = v1[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v1 + 17, v1 + 22, v38, v42, v35, v36);
}

uint64_t sub_15F24()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 176));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_1602C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  sub_17604(v1);
  v3 = sub_C9E0();
  v4(v3);
  v5 = sub_C9C8();
  v6(v5);
  sub_17464((v0 + 136), v2);
  sub_17980();

  sub_C9BC();

  return v7();
}

uint64_t sub_16128()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_16228()
{
  v1 = *(v0 + 216);

  v2 = sub_C9C8();
  v3(v2);
  sub_17464((v0 + 96), v1);
  sub_17980();

  sub_C9BC();

  return v4();
}

uint64_t sub_162F4(uint64_t a1)
{
  v2 = *(v1 + 216);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  sub_17980();

  sub_C9BC();

  return v3();
}

uint64_t sub_1639C()
{
  sub_8A88();
  v1[86] = v0;
  v1[85] = v2;
  v3 = sub_16DBEC();
  v1[87] = v3;
  sub_888C(v3);
  v1[88] = v4;
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_16458(uint64_t a1)
{
  v32 = v1;
  v2 = *(v1 + 704);
  sub_16DBBC();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = sub_C9C8();
  v3(v4);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 704);
  if (v7)
  {
    v30 = v3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_3AB7C(0xD000000000000016, 0x8000000000170FE0, &v31);
    _os_log_impl(&def_259DC, v5, v6, "Executing %s", v9, 0xCu);
    sub_2D64(v10);

    v3 = v30;
  }

  v11 = *(v8 + 8);
  v12 = sub_C9E0();
  v11(v12);
  sub_2D20(*(v1 + 688), *(*(v1 + 688) + 24));
  v13 = sub_C9E0();
  v15 = v14(v13);
  if (v15 == 270)
  {
    sub_8284(*(v1 + 688) + 80, v1 + 184);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v1 + 184);
LABEL_13:

    sub_C9BC();

    return v29();
  }

  v16 = v15;
  sub_16D74();
  v17 = sub_16E14C();
  v18 = sub_1730C(v16, v17);

  if (v18 == 205 || !sub_C1AF4(v16, &off_1B8198))
  {
    swift_beginAccess();
    v22 = sub_C9C8();
    v3(v22);
    v23 = sub_16DBDC();
    v24 = sub_16E37C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&def_259DC, v23, v24, "Nil HealthKitIdentifier, returning genericNotSupported instead of dataTypeNotSupported.", v25, 2u);
    }

    v26 = *(v1 + 712);
    v27 = *(v1 + 696);
    v28 = *(v1 + 688);

    (v11)(v26, v27);
    sub_8284(v28 + 80, v1 + 16);
    *(v1 + 176) = 0;
    sub_17358();
    sub_16C4EC();
    sub_173AC(v1 + 16);
    goto LABEL_13;
  }

  swift_task_alloc();
  sub_179E8();
  *(v1 + 728) = v19;
  *v19 = v20;
  v19[1] = sub_16858;

  return sub_155F8();
}

uint64_t sub_16858()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_1693C()
{
  if (*(v0 + 568))
  {
    sub_17464((v0 + 544), v0 + 504);
    sub_8388(v0 + 504, v0 + 584);
    v1 = swift_allocObject();
    sub_17464((v0 + 584), v1 + 16);
    sub_16C73C();
    sub_16C1DC();
    swift_allocObject();
    *(v0 + 672) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 504));
  }

  else
  {
    v2 = *(v0 + 688);
    sub_C878(v0 + 544, &qword_1C5ED0, &qword_171090);
    sub_8284(v2 + 80, v0 + 344);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 344);
  }

  sub_C9BC();

  return v3();
}

uint64_t sub_16AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_16AE0);
}

uint64_t sub_16AE0()
{
  sub_8A88();
  sub_8388(*(v0 + 24), *(v0 + 16));
  sub_C9BC();

  return v1();
}

uint64_t sub_16B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_16BEC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_16BEC()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_16CDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_1639C();
}

unint64_t sub_16D74()
{
  result = qword_1C5EC0;
  if (!qword_1C5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EC0);
  }

  return result;
}

uint64_t sub_16DC8(uint64_t a1, char a2)
{
  sub_16E25C();
}

uint64_t sub_16F40(uint64_t a1, uint64_t a2)
{
  sub_140650(a2);
  sub_179A0(v2, v3);
}

uint64_t sub_16F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  sub_179A0(v3, v4);
}

uint64_t sub_16FDC(uint64_t a1, char a2)
{
  sub_16E25C();
}

uint64_t sub_170FC(uint64_t a1, char a2)
{
  sub_16E25C();
}

Swift::Int sub_171B0(uint64_t a1, char a2)
{
  sub_16E72C();
  sub_170FC(v4, a2);
  return sub_16E75C();
}

Swift::Int sub_17224(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_16E72C();
  sub_140650(v2);
  sub_179C4(v3, v4, v5);

  return sub_16E75C();
}

Swift::Int sub_172B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_16E72C();
  v5 = a3(a2);
  sub_179C4(v5, v6, v7);

  return sub_16E75C();
}

uint64_t sub_1730C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 205;
  }

  v3 = sub_17660(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 205;
  }
}

unint64_t sub_17358()
{
  result = qword_1C5EC8;
  if (!qword_1C5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EC8);
  }

  return result;
}

double sub_17400@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_176E8(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_8220(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_17464(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1747C()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_174B4()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_17548()
{
  result = qword_1C5EE0;
  if (!qword_1C5EE0)
  {
    type metadata accessor for WellnessSnippets(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EE0);
  }

  return result;
}

uint64_t sub_175A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericButtonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17604(uint64_t a1)
{
  v2 = type metadata accessor for GenericButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_17660(uint64_t a1)
{
  sub_16E72C();
  sub_140650(a1);
  sub_16E25C();

  v2 = sub_16E75C();

  return sub_17760(a1, v2);
}

unint64_t sub_176E8(uint64_t a1, uint64_t a2)
{
  sub_16E72C();
  sub_16E25C();
  v4 = sub_16E75C();

  return sub_178AC(a1, a2, v4);
}

unint64_t sub_17760(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_140650(*(*(v2 + 48) + 2 * i));
    v7 = v6;
    v9 = v8;
    sub_140650(v3);
    if (v7 == v11 && v9 == v10)
    {

      return i;
    }

    v13 = sub_16E6BC();

    if (v13)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_17858()
{
  result = qword_1C5EE8;
  if (!qword_1C5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5EE8);
  }

  return result;
}

unint64_t sub_178AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_16E6BC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_17980()
{
}

uint64_t sub_179A0(uint64_t a1, uint64_t a2)
{

  return sub_16E25C();
}

uint64_t sub_179C4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_16E25C();
}

BOOL sub_179F4(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  v3 = sub_16DBEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 205)
  {
    v7 = sub_16DBBC();
    swift_beginAccess();
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_16DBDC();
    v9 = sub_16E37C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&def_259DC, v8, v9, "Cannot determine if isLoggingSupported for nil identifier. Assuming it is supported.", v10, 2u);
    }

    (*(v4 + 8))(v6, v3);
    return 1;
  }

  else
  {
    return !sub_C1BA4(v1, &off_1B8158);
  }
}

uint64_t sub_17B94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_17BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_17C4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_17960();
  return _swift_task_switch(v2);
}

uint64_t sub_17C74()
{
  v1 = *(v0 + 16);
  v1[3] = sub_16C85C();
  v1[4] = &protocol witness table for AceOutput;
  sub_9910(v1);
  sub_16C84C();
  sub_C9BC();

  return v2();
}

uint64_t sub_17D10()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  sub_2440(&qword_1C6020, &qword_1712D8);
  v1[9] = swift_task_alloc();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_17DA4()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  sub_2440(&qword_1C6020, &qword_1712D8);
  v1[9] = swift_task_alloc();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

void sub_17E38()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];
    *(v1 + 16) = v4;
    *(v1 + 24) = v6;

    v9 = sub_16C7BC();
    (*(*(v9 - 8) + 16))(v5, v7, v9);
    sub_214C(v5, 0, 1, v9);
    v10 = OBJC_IVAR____TtC18WellnessFlowPlugin19MockResponseFactory_outputGenerationManifest;
    swift_beginAccess();
    sub_18FD0(v5, v1 + v10);
    swift_endAccess();
    v8[3] = sub_16C85C();
    v8[4] = &protocol witness table for AceOutput;
    sub_9910(v8);
    sub_16C84C();

    sub_C9BC();

    v11();
  }
}

uint64_t sub_17F9C()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  sub_2440(&qword_1C6020, &qword_1712D8);
  v1[9] = swift_task_alloc();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_18030()
{

  sub_19040(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin19MockResponseFactory_outputGenerationManifest);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MockResponseFactory(uint64_t a1)
{
  result = qword_1C5F18;
  if (!qword_1C5F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_180F0(uint64_t a1)
{
  sub_18198(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18198(uint64_t a1)
{
  if (!qword_1C5F28)
  {
    sub_16C7BC();
    v1 = sub_16E3EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C5F28);
    }
  }
}

uint64_t sub_181F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18288;

  return sub_17C4C(a1);
}

uint64_t sub_18288()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_18374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}

uint64_t sub_186DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_187C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190AC;

  return sub_17DA4();
}

uint64_t sub_18874()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190AC;

  return sub_17D10();
}

uint64_t sub_18928()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190AC;

  return sub_17F9C();
}

uint64_t sub_189DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_18288;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}

uint64_t sub_18B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_190AC;

  return ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}

uint64_t sub_18C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}

uint64_t sub_18FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C6020, &qword_1712D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19040(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6020, &qword_1712D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WellnessCATs(uint64_t a1)
{
  result = qword_1C6028;
  if (!qword_1C6028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1913C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  sub_2440(&qword_1C6078, &unk_172520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1712E0;
  *(v7 + 32) = 0x6570795461746164;
  *(v7 + 40) = 0xE800000000000000;
  sub_1955C(a1, v6, &qword_1C5800, &unk_16F510);
  v8 = sub_16D5CC();
  if (sub_369C(v6, 1, v8) == 1)
  {
    sub_C878(v6, &qword_1C5800, &unk_16F510);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    v9 = sub_9910((v7 + 48));
    (*(*(v8 - 8) + 32))(v9, v6, v8);
  }

  *(v7 + 80) = 7368801;
  *(v7 + 88) = 0xE300000000000000;
  if (a2)
  {
    v10 = sub_16D5AC();
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v11;
  *(v7 + 120) = v10;

  sub_16D57C();
}

uint64_t sub_19398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16D63C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  sub_1955C(a1, &v13 - v10, &qword_1C57F8, &unk_172510);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16D56C();
  (*(v6 + 8))(a2, v5);
  sub_C878(a1, &qword_1C57F8, &unk_172510);
  return v11;
}

uint64_t sub_19524()
{
  v0 = sub_16D59C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_1955C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL sub_195C8(uint64_t a1)
{
  sub_16C80C();
  sub_42F0();
  v66 = v3;
  v67 = v2;
  __chkstk_darwin(v2);
  sub_4304();
  v68 = v5 - v4;
  v6 = sub_16C7DC();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  sub_42F0();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v65 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v61 = &v57 - v20;
  __chkstk_darwin(v19);
  v22 = &v57 - v21;
  v23 = sub_16DBBC();
  sub_8B48(v23, v70);
  v24 = *(v15 + 16);
  v63 = v15 + 16;
  v64 = v23;
  v62 = v24;
  v24(v22, v23, v13);
  (*(v8 + 16))(v12, a1, v6);
  v25 = sub_16DBDC();
  v26 = sub_16E36C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v60 = v13;
    v28 = v27;
    v58 = swift_slowAlloc();
    v69[0] = v58;
    *v28 = 136315138;
    sub_1B8D0(&qword_1C5998, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v29 = sub_16E68C();
    v59 = a1;
    v30 = v15;
    v32 = v31;
    (*(v8 + 8))(v12, v6);
    v33 = sub_3AB7C(v29, v32, v69);
    v15 = v30;

    *(v28 + 4) = v33;
    _os_log_impl(&def_259DC, v25, v26, "LoggingCorrectionsFlow on(correction:) for input: %s", v28, 0xCu);
    v34 = v58;
    sub_2D64(v58);
    sub_8A2C(v34);
    v35 = v28;
    v13 = v60;
    sub_8A2C(v35);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
  }

  v36 = *(v15 + 8);
  v36(v22, v13);
  v37 = v68;
  sub_16C7CC();
  v39 = v66;
  v38 = v67;
  v40 = (*(v66 + 88))(v37, v67);
  v41 = enum case for Parse.uso(_:);
  if (v40 == enum case for Parse.uso(_:))
  {
    v42 = (*(v39 + 8))(v37, v38);
    v43 = v64;
    sub_1B9B4(v42, v69);
    v44 = v61;
    v62(v61, v43, v13);
    v45 = sub_16DBDC();
    v46 = sub_16E36C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = sub_1BA38();
      *v47 = 0;
      sub_1BA70(&def_259DC, v48, v49, "LoggingCorrectionsFlow got USO parse...");
      sub_8A2C(v47);
    }

    v36(v44, v13);
  }

  else
  {
    v50 = v64;
    sub_8B48(v64, v69);
    v62(v65, v50, v13);
    v51 = sub_16DBDC();
    v52 = sub_16E36C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_1BA38();
      *v53 = 0;
      sub_1BA70(&def_259DC, v54, v55, "LoggingCorrectionsFlow encountered non-uso parse. Not handling.");
      v37 = v68;
      sub_8A2C(v53);
    }

    v36(v65, v13);
    (*(v39 + 8))(v37, v38);
  }

  return v40 == v41;
}

uint64_t sub_19B1C()
{
  v0 = sub_16DBEC();
  sub_42F0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16DBBC();
  sub_8B48(v7, v12);
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_16DBDC();
  v9 = sub_16E36C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1BA38();
    *v10 = 0;
    _os_log_impl(&def_259DC, v8, v9, "LoggingCorrectionsFlow on(input:) - This is unexpected", v10, 2u);
    sub_8A2C(v10);
  }

  (*(v2 + 8))(v6, v0);
  return 0;
}

uint64_t sub_19C5C()
{
  sub_8A88();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_16DBEC();
  v1[14] = v3;
  sub_888C(v3);
  v1[15] = v4;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_19D20(uint64_t a1)
{
  v2 = v1[13];
  v3 = *(v2 + 16);
  v4 = sub_16DBBC();
  if (v3)
  {
    if (v3 == 1)
    {
      sub_1B9B4(v4, (v1 + 5));
      v5 = sub_1B9F0();
      v6(v5);
      v7 = sub_16DBDC();
      v8 = sub_16E36C();
      if (sub_1BA1C(v8))
      {
        v9 = sub_1BA38();
        sub_1BA50(v9);
        sub_1B9D0(&def_259DC, v10, v11, "LoggingCorrectionsFlow Execute - Correcting");
        sub_1BA00();
      }

      v12 = sub_C9F8();
      v13(v12);
      v14 = swift_task_alloc();
      v1[19] = v14;
      *v14 = v1;
      v14[1] = sub_1A014;

      return sub_1A1F0();
    }

    sub_1B9B4(v4, (v1 + 2));
    v28 = sub_1B9F0();
    v29(v28);
    v30 = sub_16DBDC();
    v31 = sub_16E36C();
    if (sub_1BA1C(v31))
    {
      v32 = sub_1BA38();
      sub_1BA50(v32);
      sub_1B9D0(&def_259DC, v33, v34, "LoggingCorrectionsFlow Execute - Done");
      sub_1BA00();
    }

    v35 = sub_C9F8();
    v36(v35);
    sub_16C50C();
  }

  else
  {
    sub_1B9B4(v4, (v1 + 8));
    v16 = sub_1B9F0();
    v17(v16);
    v18 = sub_16DBDC();
    v19 = sub_16E36C();
    if (sub_1BA1C(v19))
    {
      v20 = sub_1BA38();
      sub_1BA50(v20);
      sub_1B9D0(&def_259DC, v21, v22, "LoggingCorrectionsFlow Execute - Ready");
      sub_1BA00();
    }

    v23 = v1[13];

    v24 = sub_C9F8();
    v25(v24);
    *(v2 + 16) = 1;
    v1[11] = v23;
    type metadata accessor for MedsLoggingCorrectionsFlow(0);
    sub_1B99C();
    sub_1B8D0(v26, v27, &unk_171508);
    sub_16C4DC();
  }

  sub_C9BC();

  return v37();
}

uint64_t sub_1A014()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_1A0F8()
{
  sub_8A88();
  *(*(v0 + 104) + 16) = 2;

  sub_C9BC();

  return v1();
}

uint64_t sub_1A170(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MedsLoggingCorrectionsFlow(0);
  sub_1B99C();
  sub_1B8D0(v2, v3, &unk_171508);
  return sub_16C33C();
}

uint64_t sub_1A1F0()
{
  sub_8A88();
  v1[77] = v0;
  v1[76] = v2;
  v3 = sub_16C46C();
  v1[78] = v3;
  sub_888C(v3);
  v1[79] = v4;
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[82] = v5;
  sub_888C(v5);
  v1[83] = v6;
  v1[84] = swift_task_alloc();
  v7 = sub_16C71C();
  v1[85] = v7;
  sub_888C(v7);
  v1[86] = v8;
  v1[87] = swift_task_alloc();
  v9 = sub_16DBEC();
  v1[88] = v9;
  sub_888C(v9);
  v1[89] = v10;
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_1A3CC()
{
  v1 = v0[93];
  v2 = v0[89];
  v3 = v0[88];
  v4 = [objc_allocWithZone(sub_16D87C()) init];
  v0[94] = v4;
  sub_16D86C();
  isa = sub_16E2BC().super.isa;
  [v4 setMatchingMeds:isa];

  v6 = sub_16DBBC();
  v0[95] = v6;
  sub_8B48(v6, (v0 + 58));
  v7 = *(v2 + 16);
  v0[96] = v7;
  v0[97] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v3);
  v8 = sub_16DBDC();
  v9 = sub_16E36C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1BA38();
    sub_1BA50(v10);
    _os_log_impl(&def_259DC, v8, v9, "LoggingCorrectionsFlow doCorrection - Undoing", v3, 2u);
    sub_1BA00();
  }

  v11 = v0[93];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[77];

  v15 = *(v12 + 8);
  v0[98] = v15;
  v15(v11, v13);
  v16 = *(v14 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_intentHandler);
  v0[2] = v0;
  v0[7] = v0 + 73;
  v0[3] = sub_1A634;
  v17 = swift_continuation_init();
  v0[57] = sub_2440(&qword_1C6248, &qword_171598);
  v0[50] = _NSConcreteStackBlock;
  v0[51] = 1107296256;
  v0[52] = sub_53C4;
  v0[53] = &unk_1B9918;
  v0[54] = v17;
  [v16 handleUndoMeds:v4 completion:v0 + 50];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1A634()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_1A708);
}

uint64_t sub_1A708(uint64_t a1)
{
  v44 = v1;
  v2 = v1[96];
  v3 = v1[73];
  v1[99] = v3;
  sub_1B9B4(a1, (v1 + 61));
  v4 = sub_1B9F0();
  v2(v4);
  v5 = v3;
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&def_259DC, v6, v7, "LoggingCorrectionsFlow Received intent response: %@", v8, 0xCu);
    sub_1B918(v9, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v9);
    sub_8A2C(v8);
  }

  v11 = v1[98];
  v12 = v1[92];
  v13 = v1[88];
  v1[100] = (v1[89] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14 = v11(v12, v13);
  v15 = *(&stru_20.maxprot + (swift_isaMask & *v5));
  v16 = (v15)(v14);
  if (v16 == 4)
  {
    v17 = v1[77];
    v18 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider;
    v1[101] = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider;
    sub_2D20((v17 + v18 + 80), *(v17 + v18 + 104));
    v19 = swift_task_alloc();
    v1[102] = v19;
    *v19 = v1;
    v19[1] = sub_1AB4C;

    return sub_10C040();
  }

  else
  {
    v21 = v1[96];
    v22 = v1[95];
    v23 = v1[90];
    v24 = v1[88];
    sub_1B9B4(v16, (v1 + 64));
    v21(v23, v22, v24);
    v25 = v5;
    v26 = sub_16DBDC();
    v27 = sub_16E37C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v1[98];
    v30 = v1[90];
    v31 = v1[88];
    if (v28)
    {
      v41 = v1[88];
      v42 = v25;
      v32 = swift_slowAlloc();
      v40 = v30;
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136315138;
      v1[74] = v15();
      v34 = sub_16E1EC();
      v36 = sub_3AB7C(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&def_259DC, v26, v27, "Intent handler failed with code: %s", v32, 0xCu);
      sub_2D64(v33);
      sub_8A2C(v33);
      v37 = v32;
      v25 = v42;
      sub_8A2C(v37);

      v29(v40, v41);
    }

    else
    {

      v29(v30, v31);
    }

    v38 = v1[94];
    sub_8284(v1[77] + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider, (v1 + 10));
    sub_82E0();
    sub_16C4EC();

    sub_8334((v1 + 10));
    sub_1B96C();

    sub_C9BC();

    return v39();
  }
}

uint64_t sub_1AB4C(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;

  if (v1)
  {

    v8 = sub_1AF14;
  }

  else
  {
    *(v5 + 824) = a1;
    v8 = sub_1AC6C;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_1AC6C()
{
  v16 = v0[94];
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v13 = v0[84];
  v14 = v0[103];
  v17 = v0[83];
  v18 = v0[82];
  v19 = v0[99];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  v15 = (v8 + v0[101]);
  (*(v2 + 104))(v1, enum case for CorrectionsExitValue.success(_:), v3);
  v9 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  (*(v2 + 40))(v8 + v9, v1, v3);
  swift_endAccess();
  sub_16C43C();
  (*(v6 + 16))(v5, v4, v7);
  sub_16C75C();
  (*(v6 + 8))(v4, v7);
  v10 = [v14 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20(v15, v15[3]);
  v0[75] = sub_16C2FC();
  sub_16C28C();
  sub_16C32C();
  sub_16C4FC();

  (*(v17 + 8))(v13, v18);
  sub_1B96C();

  sub_C9BC();

  return v11();
}

uint64_t sub_1AF14(uint64_t a1)
{
  v2 = v1[96];
  v3 = v1[95];
  v4 = v1[91];
  v5 = v1[88];
  sub_1B9B4(a1, (v1 + 67));
  v2(v4, v3, v5);
  v6 = sub_16DBDC();
  v7 = sub_16E37C();
  if (sub_1BA1C(v7))
  {
    v8 = sub_1BA38();
    sub_1BA50(v8);
    sub_1B9D0(&def_259DC, v9, v10, "LoggingCorrectionsFlow Error executing pattern");
    sub_1BA00();
  }

  v11 = v1[101];
  v12 = v1[99];
  v13 = v1[98];
  v18 = v1[94];
  v14 = v1[77];

  v15 = sub_C9F8();
  v13(v15);
  sub_8284(v14 + v11, (v1 + 30));
  sub_82E0();
  sub_16C32C();
  sub_8334((v1 + 30));
  sub_16C4FC();

  sub_1B96C();

  sub_C9BC();

  return v16();
}