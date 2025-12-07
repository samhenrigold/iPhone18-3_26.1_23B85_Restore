uint64_t sub_100018104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D655474726F6873 && a2 == 0xED00006574616C70;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x706D6554676E6F6CLL && a2 == 0xEC0000006574616CLL;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E5564696C6176 && a2 == 0xEA00000000006C69)
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

uint64_t sub_100018274(char a1)
{
  result = 0x6D655474726F6873;
  switch(a1)
  {
    case 1:
      result = 0x706D6554676E6F6CLL;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x746E5564696C6176;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100018328(void *a1, void *a2)
{
  v5 = sub_1000E8604();
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v12);
  sub_100009204();
  __chkstk_darwin(v13);
  sub_100019AE8();
  v14 = sub_100002A10(&qword_10012F910, &qword_1000F19F0);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (sub_1000EC5D4() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v19 && (sub_1000EC5D4() & 1) == 0)
  {
    return 0;
  }

  v20 = a2[4];
  if (a1[4])
  {
    if (!v20)
    {
      return 0;
    }

    sub_10004A9BC();
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v37 = v7;
  v23 = *(type metadata accessor for TemplateDescriptions(0) + 28);
  v24 = *(v14 + 48);
  sub_100019210(a1 + v23, v17, &qword_10012F048, &qword_1000EEF30);
  sub_100019210(a2 + v23, &v17[v24], &qword_10012F048, &qword_1000EEF30);
  sub_1000199F0(v17);
  if (v18)
  {
    sub_1000199F0(&v17[v24]);
    if (v18)
    {
      sub_100008E48(v17, &qword_10012F048, &qword_1000EEF30);
      return 1;
    }

    goto LABEL_24;
  }

  sub_100019210(v17, v2, &qword_10012F048, &qword_1000EEF30);
  sub_1000199F0(&v17[v24]);
  if (v25)
  {
    v26 = sub_100019B38();
    v27(v26);
LABEL_24:
    sub_100008E48(v17, &qword_10012F910, &qword_1000F19F0);
    return 0;
  }

  v29 = v37;
  (*(v37 + 32))(v11, &v17[v24], v5);
  sub_1000199D8();
  sub_100018FE4(v30, v31, &protocol conformance descriptor for Date);
  v32 = sub_1000EBE24();
  v33 = *(v29 + 8);
  v34 = sub_100019AC0();
  v33(v34);
  v35 = sub_100019B38();
  v33(v35);
  sub_100008E48(v17, &qword_10012F048, &qword_1000EEF30);
  return (v32 & 1) != 0;
}

uint64_t sub_10001865C()
{
  v2 = sub_100002A10(&qword_10012F940, &qword_1000EFFF8);
  sub_1000090D4();
  v4 = v3;
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  sub_100019B78();
  v6 = sub_10001925C();
  sub_100019B58(&type metadata for TemplateDescriptions.CodingKeys, v7, v6);
  sub_100019B18();
  sub_1000EC564();
  if (!v0)
  {
    sub_100019B18();
    sub_1000EC564();
    sub_100002A10(&unk_10012F850, &qword_1000EFCE8);
    sub_100019420();
    sub_100019ACC();
    sub_100019B18();
    sub_1000EC554();
    type metadata accessor for TemplateDescriptions(0);
    sub_1000E8604();
    sub_1000199D8();
    sub_100018FE4(v8, v9, &protocol conformance descriptor for Date);
    sub_100019ACC();
    sub_100019B18();
    sub_1000EC554();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_100018834(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v4);
  sub_100009204();
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  sub_100002A10(&qword_10012F928, &qword_1000EFFF0);
  sub_1000090D4();
  v27 = v9;
  v28 = v8;
  sub_100009204();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for TemplateDescriptions(0);
  sub_1000069E4();
  __chkstk_darwin(v12);
  sub_100006A10();
  v15 = (v14 - v13);
  sub_100008DA8(a1, a1[3]);
  sub_10001925C();
  sub_1000EC694();
  if (v2)
  {
    sub_100009068(a1);
  }

  else
  {
    v25 = v11;
    v33 = 0;
    *v15 = sub_1000EC4E4();
    v15[1] = v16;
    v32 = 1;
    v15[2] = sub_1000EC4E4();
    v15[3] = v17;
    sub_100002A10(&unk_10012F850, &qword_1000EFCE8);
    v31 = 2;
    sub_1000192B0();
    sub_100019B44();
    v24 = 0;
    sub_1000EC4D4();
    v15[4] = v29;
    sub_1000E8604();
    v30 = 3;
    sub_1000199D8();
    sub_100018FE4(v18, v19, &protocol conformance descriptor for Date);
    sub_100019B44();
    sub_1000EC4D4();
    v20 = sub_100019A58();
    v21(v20);
    sub_100019170(v7, v15 + *(v25 + 28), &qword_10012F048, &qword_1000EEF30);
    sub_10001936C(v15, v26, type metadata accessor for TemplateDescriptions);
    sub_100009068(a1);
    v22 = sub_100019B38();
    sub_1000193C8(v22, v23);
  }
}

unint64_t sub_100018BC8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100016850(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100018CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100016860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100018CE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100016B94();
  *a1 = result;
  return result;
}

uint64_t sub_100018D08(uint64_t a1)
{
  v2 = sub_100018EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018D44(uint64_t a1)
{
  v2 = sub_100018EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100018DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100018104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100018DE4(uint64_t a1)
{
  v2 = sub_10001925C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018E20(uint64_t a1)
{
  v2 = sub_10001925C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100018E94()
{
  result = qword_10012F890;
  if (!qword_10012F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F890);
  }

  return result;
}

unint64_t sub_100018EE8()
{
  result = qword_10012F8A0;
  if (!qword_10012F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8A0);
  }

  return result;
}

unint64_t sub_100018F3C()
{
  result = qword_10012F8A8;
  if (!qword_10012F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8A8);
  }

  return result;
}

unint64_t sub_100018F90()
{
  result = qword_10012F8B0;
  if (!qword_10012F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8B0);
  }

  return result;
}

uint64_t sub_100018FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001902C()
{
  result = qword_10012F8D8;
  if (!qword_10012F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8D8);
  }

  return result;
}

unint64_t sub_100019080()
{
  result = qword_10012F8E0;
  if (!qword_10012F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8E0);
  }

  return result;
}

uint64_t sub_1000190D4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(&qword_10012F788, &qword_1000EFCC8);
    sub_100018FE4(a2, type metadata accessor for TemplateDescriptions, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4();
  v5 = sub_100019AC0();
  v6(v5);
  return v4;
}

unint64_t sub_1000191BC()
{
  result = qword_10012F900;
  if (!qword_10012F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F900);
  }

  return result;
}

uint64_t sub_100019210(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4();
  v5 = sub_100019AC0();
  v6(v5);
  return v4;
}

unint64_t sub_10001925C()
{
  result = qword_10012F930;
  if (!qword_10012F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F930);
  }

  return result;
}

unint64_t sub_1000192B0()
{
  result = qword_10012F938;
  if (!qword_10012F938)
  {
    sub_100002ABC(&unk_10012F850, &qword_1000EFCE8);
    sub_100018FE4(&qword_10012F3D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F938);
  }

  return result;
}

uint64_t sub_10001936C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  v4 = sub_100019AC0();
  v5(v4);
  return a2;
}

uint64_t sub_1000193C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100019420()
{
  result = qword_10012F948;
  if (!qword_10012F948)
  {
    sub_100002ABC(&unk_10012F850, &qword_1000EFCE8);
    sub_100018FE4(&qword_10012F3F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F948);
  }

  return result;
}

unint64_t sub_1000194DC()
{
  result = qword_10012F950;
  if (!qword_10012F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemplateDescriptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000195FCLL);
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

uint64_t getEnumTagSinglePayload for EventViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EventViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x100019788);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000197C4()
{
  result = qword_10012F958;
  if (!qword_10012F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F958);
  }

  return result;
}

unint64_t sub_10001981C()
{
  result = qword_10012F960;
  if (!qword_10012F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F960);
  }

  return result;
}

unint64_t sub_100019874()
{
  result = qword_10012F968;
  if (!qword_10012F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F968);
  }

  return result;
}

unint64_t sub_1000198CC()
{
  result = qword_10012F970;
  if (!qword_10012F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F970);
  }

  return result;
}

unint64_t sub_100019924()
{
  result = qword_10012F978;
  if (!qword_10012F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F978);
  }

  return result;
}

unint64_t sub_10001997C()
{
  result = qword_10012F980;
  if (!qword_10012F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F980);
  }

  return result;
}

uint64_t sub_100019B04@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_100019B58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000EC6A4();
}

uint64_t sub_100019BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v9 = a1 + *(a3 + 20);

    return sub_100005B30(v9, a2, v8);
  }
}

uint64_t sub_100019C54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v8 = v5 + *(a4 + 20);

    return sub_1000028A0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ErrorView(uint64_t a1)
{
  result = qword_10012F9E0;
  if (!qword_10012F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019D2C(uint64_t a1)
{
  sub_100019DA8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100019DA8(uint64_t a1)
{
  if (!qword_10012EE20)
  {
    sub_1000EA3A4();
    v1 = sub_1000E9F94();
    if (!v2)
    {
      atomic_store(v1, &qword_10012EE20);
    }
  }
}

uint64_t sub_100019E1C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v51 = sub_1000EA3A4();
  v2 = *(v51 - 8);
  v3 = __chkstk_darwin(v51);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v42 - v5;
  v6 = sub_100002A10(&qword_10012FA18, &qword_1000F0288) - 8;
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v48 = sub_100002A10(&qword_10012FA20, &qword_1000F0290) - 8;
  sub_100009204();
  __chkstk_darwin(v10);
  v45 = &v42 - v11;
  v47 = sub_100002A10(&qword_10012FA28, &qword_1000F0298) - 8;
  sub_100009204();
  __chkstk_darwin(v12);
  v44 = &v42 - v13;
  v50 = sub_100002A10(&qword_10012FA30, &qword_1000F02A0);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_1000EA554();
  v43 = v1;
  sub_10001A32C(v1, v54);
  memcpy(v55, v54, sizeof(v55));
  memcpy(v56, v54, sizeof(v56));
  sub_10001A4E4(v55, __dst);
  sub_100008E48(v56, &qword_10012FA38, &qword_1000F02A8);
  memcpy(v53 + 7, v55, 0x50uLL);
  v18 = *(v1 + 64);
  KeyPath = swift_getKeyPath();
  LOBYTE(v54[0]) = v17;
  memcpy(v54 + 1, v53, 0x57uLL);
  v54[11] = KeyPath;
  v54[12] = v18;

  sub_1000EA664();
  sub_100002A10(&qword_10012FA40, &qword_1000F02E0);
  sub_10001A55C();
  sub_1000EA874();
  memcpy(__dst, v54, 0x68uLL);
  sub_100008E48(__dst, &qword_10012FA40, &qword_1000F02E0);
  v20 = sub_1000EA9C4();
  v21 = swift_getKeyPath();
  v22 = &v9[*(v6 + 44)];
  *v22 = v21;
  v22[1] = v20;
  v23 = type metadata accessor for ErrorView(0);
  v24 = v46;
  sub_10003E504(v23, v25, v26, v27, v28, v29, v30, v31, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53[0]);
  v32 = v49;
  v33 = v51;
  (*(v2 + 104))(v49, enum case for ColorSchemeContrast.increased(_:), v51);
  LOBYTE(v20) = sub_1000EA394();
  v34 = *(v2 + 8);
  v34(v32, v33);
  v34(v24, v33);
  if (v20)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.6;
  }

  v36 = v45;
  sub_10001A650(v9, v45, &qword_10012FA18, &qword_1000F0288);
  *(v36 + *(v48 + 44)) = v35;
  v37 = swift_getKeyPath();
  v38 = v36;
  v39 = v44;
  sub_10001A650(v38, v44, &qword_10012FA20, &qword_1000F0290);
  v40 = v39 + *(v47 + 44);
  *v40 = v37;
  *(v40 + 8) = 1;
  sub_1000EABC4();
  sub_1000EA0A4();
  sub_10001A650(v39, v16, &qword_10012FA28, &qword_1000F0298);
  memcpy(&v16[*(v50 + 36)], v54, 0x70uLL);
  sub_10001A6B0();
  sub_1000EA834();
  return sub_10001A974(v16);
}

double sub_10001A32C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(a1 + 8);
  v16 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v17 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v7)
  {
    v14 = *(a1 + 72);
    KeyPath = swift_getKeyPath();
    v9 = v6 & 1;
    sub_10000673C(v4, v5, v6 & 1);

    v10 = KeyPath;

    v11 = v4;
    v12 = v5;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v14 = 0;
  }

  sub_10001A9D4(v4, v5, v6, v7);
  sub_10000673C(v16, v15, v3);

  sub_10000673C(v16, v15, v3);

  sub_10001AA18(v11, v12, v9, v7, v10);
  sub_10001AA68(v11, v12, v9, v7, v10);
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v3;
  *(a2 + 24) = v17;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v9;
  *(a2 + 56) = v7;
  *(a2 + 64) = v10;
  *(a2 + 72) = v14;
  sub_10001AA68(v11, v12, v9, v7, v10);
  sub_1000058EC(v16, v15, v3);

  return result;
}

uint64_t sub_10001A4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012FA38, &qword_1000F02A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001A55C()
{
  result = qword_10012FA48;
  if (!qword_10012FA48)
  {
    sub_100002ABC(&qword_10012FA40, &qword_1000F02E0);
    sub_100006988(&qword_10012FA50, &qword_10012FA58, &qword_1000F02E8, &protocol conformance descriptor for ViewThatFits<A>);
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA48);
  }

  return result;
}

uint64_t sub_10001A650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100002A10(a3, a4);
  sub_1000069E4();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10001A6B0()
{
  result = qword_10012FA70;
  if (!qword_10012FA70)
  {
    sub_100002ABC(&qword_10012FA30, &qword_1000F02A0);
    sub_10001A73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA70);
  }

  return result;
}

unint64_t sub_10001A73C()
{
  result = qword_10012FA78;
  if (!qword_10012FA78)
  {
    sub_100002ABC(&qword_10012FA28, &qword_1000F0298);
    sub_10001A7F4();
    sub_100006988(&qword_10012FAA0, &qword_10012FAA8, &qword_1000F20D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA78);
  }

  return result;
}

unint64_t sub_10001A7F4()
{
  result = qword_10012FA80;
  if (!qword_10012FA80)
  {
    sub_100002ABC(&qword_10012FA20, &qword_1000F0290);
    sub_10001A880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA80);
  }

  return result;
}

unint64_t sub_10001A880()
{
  result = qword_10012FA88;
  if (!qword_10012FA88)
  {
    sub_100002ABC(&qword_10012FA18, &qword_1000F0288);
    sub_100002ABC(&qword_10012FA40, &qword_1000F02E0);
    sub_10001A55C();
    swift_getOpaqueTypeConformance2();
    sub_100006988(&qword_10012FA90, &qword_10012FA98, &unk_1000F2ED0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA88);
  }

  return result;
}

uint64_t sub_10001A974(uint64_t a1)
{
  sub_100002A10(&qword_10012FA30, &qword_1000F02A0);
  sub_1000069E4();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10001A9D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000673C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001AA18(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10000673C(result, a2, a3 & 1);
  }

  return result;
}

double sub_10001AA68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1000058EC(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001AB60()
{
  sub_100002ABC(&qword_10012FA30, &qword_1000F02A0);
  sub_10001A6B0();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_10001ABC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10001ABD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10001AC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001AC6C@<X0>(char *a1@<X8>)
{
  v3 = sub_1000EB2B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherDataViewModel(0);
  sub_1000069E4();
  v8 = __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  type metadata accessor for ForecastEntry.Model(0);
  sub_1000069E4();
  __chkstk_darwin(v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v16 + 28), v15, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001B014(v15, v12);
    sub_10000DA34(v12, v10, type metadata accessor for WeatherDataViewModel);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v22 = *(v4 + 32);
      v22(v6, v10, v3);
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
        _os_log_impl(&_mh_execute_header, v24, v25, "Making Sunrise/Sunset widget view model entry from aggregate weather", v26, 2u);
      }

      sub_10001B078(v12);
      v22(a1, v6, v3);
      v21 = 0;
    }

    else
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
        _os_log_impl(&_mh_execute_header, v18, v19, "Expected sunriseSunset but got aggregate or instant", v20, 2u);
      }

      sub_10001B078(v12);
      v21 = 1;
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

uint64_t sub_10001B014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B078(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001B0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_100002A10(&qword_10012FAB0, &qword_1000F0468);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_100002A10(&qword_10012FAB8, &qword_1000F0470);
  sub_1000090D4();
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  sub_100002A10(&qword_10012FAC0, &qword_1000F0478);
  sub_1000090D4();
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v50 = &v49 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v56 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for RainContentView(0);
  sub_10001B7D8(&qword_10012FAC8, type metadata accessor for RainContentView, &unk_1000F04D0);
  sub_10001B7D8(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_10001B820();
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

uint64_t sub_10001B610@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RainContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001B68C()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.RainComplication(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_10001B7A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001B68C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001B7D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001B820()
{
  result = qword_10012FAD8;
  if (!qword_10012FAD8)
  {
    sub_100002ABC(&qword_10012FAB0, &qword_1000F0468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FAD8);
  }

  return result;
}

uint64_t sub_10001B888()
{
  sub_100002ABC(&qword_10012FAC0, &qword_1000F0478);
  sub_100002ABC(&qword_10012FAB8, &qword_1000F0470);
  sub_100002ABC(&qword_10012FAB0, &qword_1000F0468);
  sub_10001B820();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001B960(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10001BA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for RainContentView(uint64_t a1)
{
  result = qword_10012FB38;
  if (!qword_10012FB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001BB34@<X0>(uint64_t a1@<X8>)
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
  sub_10001D3D8(v2, &v14 - v9);
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

uint64_t sub_10001BD14@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v70 = sub_100002A10(&qword_10012FB70, &qword_1000F0520);
  __chkstk_darwin(v70);
  v71 = &v49 - v1;
  v76 = sub_100002A10(&qword_10012FB78, &qword_1000F0528);
  __chkstk_darwin(v76);
  v72 = &v49 - v2;
  v68 = type metadata accessor for RainInlineContentView(0);
  __chkstk_darwin(v68);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100002A10(&qword_10012FB80, &qword_1000F0530);
  __chkstk_darwin(v63);
  v66 = &v49 - v4;
  v64 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  __chkstk_darwin(v64);
  v52 = &v49 - v5;
  v67 = sub_100002A10(&qword_10012FB90, &qword_1000F0540);
  __chkstk_darwin(v67);
  v69 = &v49 - v6;
  v73 = sub_100002A10(&qword_10012FB98, &qword_1000F0548);
  __chkstk_darwin(v73);
  v75 = &v49 - v7;
  v61 = sub_100002A10(&qword_10012FBA0, &qword_1000F0550);
  __chkstk_darwin(v61);
  v62 = &v49 - v8;
  v74 = sub_100002A10(&qword_10012FBA8, &qword_1000F0558);
  __chkstk_darwin(v74);
  v65 = &v49 - v9;
  v60 = type metadata accessor for RainCircularContentView(0);
  __chkstk_darwin(v60);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100002A10(&qword_10012FBB0, &qword_1000F0560);
  __chkstk_darwin(v55);
  v54 = &v49 - v11;
  v57 = sub_100002A10(&qword_10012FBB8, &qword_1000F0568);
  __chkstk_darwin(v57);
  v13 = &v49 - v12;
  v14 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  v20 = sub_1000EB504();
  v59 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v56 = sub_100002A10(&qword_10012FBC8, &qword_1000F0570);
  __chkstk_darwin(v56);
  v58 = &v49 - v26;
  v27 = sub_1000EBC44();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v49 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v49 - v31;
  sub_10001BB34(&v49 - v31);
  v50 = v28;
  v33 = (*(v28 + 88))(v32, v27);
  if (v33 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    sub_10001CC70(2, v19);
    if (sub_100005B30(v19, 1, v20) == 1)
    {
      sub_10001CDC8(v19);
      sub_10004CD84(v13);
      sub_10000EBC4(v13, v54, &qword_10012FBB8, &qword_1000F0568);
      swift_storeEnumTagMultiPayload();
      sub_10001D094(&qword_10012FC00, type metadata accessor for RainCircularContentView, &unk_1000F20F8);
      sub_10001D0DC();
      v34 = v58;
      sub_1000EA4A4();
      sub_100008E48(v13, &qword_10012FBB8, &qword_1000F0568);
    }

    else
    {
      v37 = v59;
      (*(v59 + 32))(v25, v19, v20);
      v38 = v51;
      (*(v37 + 16))(v51, v25, v20);
      sub_10001D2BC(v38, v54, type metadata accessor for RainCircularContentView);
      swift_storeEnumTagMultiPayload();
      sub_10001D094(&qword_10012FC00, type metadata accessor for RainCircularContentView, &unk_1000F20F8);
      sub_10001D0DC();
      v34 = v58;
      sub_1000EA4A4();
      sub_10001D380(v38, type metadata accessor for RainCircularContentView);
      (*(v37 + 8))(v25, v20);
    }

    v39 = &qword_10012FBC8;
    v40 = &qword_1000F0570;
    sub_10000EBC4(v34, v62, &qword_10012FBC8, &qword_1000F0570);
    swift_storeEnumTagMultiPayload();
    sub_10001CFD8();
    v41 = v65;
    sub_1000EA4A4();
    sub_10000EBC4(v41, v75, &qword_10012FBA8, &qword_1000F0558);
    swift_storeEnumTagMultiPayload();
    sub_10001D238(&qword_10012FBF0, &qword_10012FBA8, &qword_1000F0558, sub_10001CFD8);
    sub_10001D238(&qword_10012FC20, &qword_10012FB78, &qword_1000F0528, sub_10001CF1C);
    sub_1000EA4A4();
    sub_100008E48(v41, &qword_10012FBA8, &qword_1000F0558);
    v42 = v34;
    return sub_100008E48(v42, v39, v40);
  }

  if (v33 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_1000EC3E4(57);
    v80._countAndFlagsBits = 0xD000000000000021;
    v80._object = 0x80000001000FB1A0;
    sub_1000EBF44(v80);
    v47 = v49;
    sub_10001BB34(v49);
    sub_10001D094(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v81._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v81);

    (*(v50 + 8))(v47, v27);
    v82._object = 0x80000001000FB510;
    v82._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v82);
  }

  else
  {
    v35 = v69;
    if (v33 == enum case for WidgetFamily.accessoryInline(_:))
    {
      sub_10001CC70(0, v17);
      if (sub_100005B30(v17, 1, v20) == 1)
      {
        sub_10001CDC8(v17);
        v36 = v52;
        sub_10009CB58(v52);
        sub_10000EBC4(v36, v66, &qword_10012FB88, &qword_1000F0538);
        swift_storeEnumTagMultiPayload();
        sub_10001D094(&qword_10012FBD0, type metadata accessor for RainInlineContentView, &unk_1000F67A8);
        sub_10001CE30();
        sub_1000EA4A4();
        sub_100008E48(v36, &qword_10012FB88, &qword_1000F0538);
      }

      else
      {
        v43 = v59;
        (*(v59 + 32))(v23, v17, v20);
        v44 = v53;
        (*(v43 + 16))(v53, v23, v20);
        sub_10001D2BC(v44, v66, type metadata accessor for RainInlineContentView);
        swift_storeEnumTagMultiPayload();
        sub_10001D094(&qword_10012FBD0, type metadata accessor for RainInlineContentView, &unk_1000F67A8);
        sub_10001CE30();
        sub_1000EA4A4();
        sub_10001D380(v44, type metadata accessor for RainInlineContentView);
        (*(v43 + 8))(v23, v20);
      }

      v39 = &qword_10012FB90;
      v40 = &qword_1000F0540;
      sub_10000EBC4(v35, v71, &qword_10012FB90, &qword_1000F0540);
      swift_storeEnumTagMultiPayload();
      sub_10001CF1C();
      v45 = v72;
      sub_1000EA4A4();
      sub_10000EBC4(v45, v75, &qword_10012FB78, &qword_1000F0528);
      swift_storeEnumTagMultiPayload();
      sub_10001D238(&qword_10012FBF0, &qword_10012FBA8, &qword_1000F0558, sub_10001CFD8);
      sub_10001D238(&qword_10012FC20, &qword_10012FB78, &qword_1000F0528, sub_10001CF1C);
      sub_1000EA4A4();
      sub_100008E48(v45, &qword_10012FB78, &qword_1000F0528);
      v42 = v35;
      return sub_100008E48(v42, v39, v40);
    }

    v78 = 0;
    v79 = 0xE000000000000000;
    sub_1000EC3E4(58);
    v83._countAndFlagsBits = 0xD000000000000022;
    v83._object = 0x80000001000FB150;
    sub_1000EBF44(v83);
    v48 = v49;
    sub_10001BB34(v49);
    sub_10001D094(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v84._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v84);

    (*(v50 + 8))(v48, v27);
    v85._object = 0x80000001000FB510;
    v85._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v85);
  }

  result = sub_1000EC464();
  __break(1u);
  return result;
}

uint64_t sub_10001CC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RainComplicationDataStatus(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RainContentView(0);
  sub_100040E28(v9);
  if (sub_100005B30(v9, 2, v4))
  {
    v10 = 1;
  }

  else
  {
    sub_10001D31C(v9, v6);
    sub_100076750(v6, v2, a2);
    sub_10001D380(v6, type metadata accessor for AggregateWeatherViewModel);
    v10 = 0;
  }

  v11 = sub_1000EB504();
  return sub_1000028A0(a2, v10, 1, v11);
}

uint64_t sub_10001CDC8(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001CE30()
{
  result = qword_10012FBD8;
  if (!qword_10012FBD8)
  {
    sub_100002ABC(&qword_10012FB88, &qword_1000F0538);
    swift_getOpaqueTypeConformance2();
    sub_10001D094(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBD8);
  }

  return result;
}

unint64_t sub_10001CF1C()
{
  result = qword_10012FBE8;
  if (!qword_10012FBE8)
  {
    sub_100002ABC(&qword_10012FB90, &qword_1000F0540);
    sub_10001D094(&qword_10012FBD0, type metadata accessor for RainInlineContentView, &unk_1000F67A8);
    sub_10001CE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBE8);
  }

  return result;
}

unint64_t sub_10001CFD8()
{
  result = qword_10012FBF8;
  if (!qword_10012FBF8)
  {
    sub_100002ABC(&qword_10012FBC8, &qword_1000F0570);
    sub_10001D094(&qword_10012FC00, type metadata accessor for RainCircularContentView, &unk_1000F20F8);
    sub_10001D0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBF8);
  }

  return result;
}

uint64_t sub_10001D094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001D0DC()
{
  result = qword_10012FC08;
  if (!qword_10012FC08)
  {
    sub_100002ABC(&qword_10012FBB8, &qword_1000F0568);
    sub_100002ABC(&qword_10012FC10, &qword_1000F2060);
    sub_10001D1D4();
    swift_getOpaqueTypeConformance2();
    sub_10001D094(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC08);
  }

  return result;
}

unint64_t sub_10001D1D4()
{
  result = qword_10012FC18;
  if (!qword_10012FC18)
  {
    sub_100002ABC(&qword_10012FC10, &qword_1000F2060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC18);
  }

  return result;
}

uint64_t sub_10001D238(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D2BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000069E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001D31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D380(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10001D3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D44C()
{
  result = qword_10012FC28;
  if (!qword_10012FC28)
  {
    sub_100002ABC(&qword_10012FC30, &qword_1000F0578);
    sub_10001D4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC28);
  }

  return result;
}

unint64_t sub_10001D4D0()
{
  result = qword_10012FC38;
  if (!qword_10012FC38)
  {
    sub_100002ABC(&qword_10012FC40, &unk_1000F0580);
    sub_10001D238(&qword_10012FBF0, &qword_10012FBA8, &qword_1000F0558, sub_10001CFD8);
    sub_10001D238(&qword_10012FC20, &qword_10012FB78, &qword_1000F0528, sub_10001CF1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC38);
  }

  return result;
}

uint64_t sub_10001D5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DataDenseViewAttributes(0);
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1000EB504();
    sub_100006A04();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

uint64_t sub_10001D6C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for DataDenseViewAttributes(0);
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1000EB504();
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_1000028A0(v11, a2, a2, v10);
}

void sub_10001D7CC(uint64_t a1)
{
  type metadata accessor for DataDenseViewAttributes(319);
  if (v1 <= 0x3F)
  {
    sub_1000EB504();
    if (v2 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001D8A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000EA2C4();
  sub_1000090D4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  sub_1000069E4();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  type metadata accessor for DataDenseTableView(0);
  sub_100025FE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EA3A4();
    sub_100026C1C();
    return (*(v11 + 32))(a1, v10);
  }

  else
  {
    sub_1000EC1A4();
    v13 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v2);
  }
}

uint64_t sub_10001DA88@<X0>(_BYTE *a1@<X8>)
{
  v29 = a1;
  v1 = sub_1000EA3A4();
  sub_1000090D4();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  sub_100002A10(&qword_10012FCE0, &qword_1000F05F8);
  inited = swift_initStackObject();
  v28 = xmmword_1000F03E0;
  *(inited + 16) = xmmword_1000F03E0;
  v11 = sub_1000EA534();
  *(inited + 32) = v11;
  v12 = sub_1000EA554();
  *(inited + 33) = v12;
  v13 = sub_1000EA544();
  sub_1000EA544();
  if (sub_1000EA544() != v11)
  {
    v13 = sub_1000EA544();
  }

  sub_1000EA544();
  if (sub_1000EA544() != v12)
  {
    v13 = sub_1000EA544();
  }

  sub_10001D8A0(v9);
  v27 = v3;
  v14 = *(v3 + 88);
  v15 = v14(v9, v1);
  v16 = enum case for ColorSchemeContrast.standard(_:);
  if (v15 != enum case for ColorSchemeContrast.standard(_:))
  {
    if (v15 == enum case for ColorSchemeContrast.increased(_:))
    {
      v17 = sub_1000EA554();
      v13 = sub_1000EA544();
      sub_1000EA544();
      if (sub_1000EA544() != v17)
      {
        v13 = sub_1000EA544();
      }
    }

    else
    {
      (*(v27 + 8))(v9, v1);
    }
  }

  *v29 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v28;
  v19 = sub_1000EA534();
  *(v18 + 32) = v19;
  v20 = sub_1000EA554();
  *(v18 + 33) = v20;
  v21 = sub_1000EA544();
  sub_1000EA544();
  if (sub_1000EA544() != v19)
  {
    v21 = sub_1000EA544();
  }

  sub_1000EA544();
  if (sub_1000EA544() != v20)
  {
    v21 = sub_1000EA544();
  }

  sub_10001D8A0(v7);
  v22 = v14(v7, v1);
  if (v22 != v16)
  {
    if (v22 == enum case for ColorSchemeContrast.increased(_:))
    {
      v23 = sub_1000EA554();
      v21 = sub_1000EA544();
      sub_1000EA544();
      if (sub_1000EA544() != v23)
      {
        v21 = sub_1000EA544();
      }
    }

    else
    {
      (*(v27 + 8))(v7, v1);
    }
  }

  v24 = sub_100002A10(&qword_10012FCE8, &qword_1000F0600);
  return sub_10001DE00(v21, &v29[*(v24 + 44)]);
}

uint64_t sub_10001DE00@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v47) = a1;
  v53 = a2;
  v52 = sub_100002A10(&qword_10012FCF0, &qword_1000F0608);
  __chkstk_darwin(v52);
  v46 = &v44 - v2;
  v49 = sub_100002A10(&qword_10012FCF8, &qword_1000F0610);
  __chkstk_darwin(v49);
  v51 = &v44 - v3;
  v50 = sub_100002A10(&qword_10012FD00, &qword_1000F0618);
  __chkstk_darwin(v50);
  v5 = &v44 - v4;
  v6 = sub_100002A10(&qword_10012FD08, &qword_1000F0620);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_100002A10(&qword_10012FD10, &qword_1000F0628);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = sub_100002A10(&qword_10012FD18, &qword_1000F0630);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  v24 = sub_100002A10(&qword_10012FD20, &qword_1000F0638);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v44 - v28;
  v30 = sub_1000EA534();
  sub_1000EA544();
  if (sub_1000EA544() == v30)
  {
    *v29 = sub_1000EA3C4();
    *(v29 + 1) = 0;
    v29[16] = 0;
    v31 = sub_100002A10(&qword_10012FD50, &qword_1000F0658);
    v32 = v48;
    sub_100020794(v48, &v29[*(v31 + 44)]);
    *v23 = sub_1000EA3C4();
    *(v23 + 1) = 0;
    v23[16] = 0;
    v33 = sub_100002A10(&qword_10012FD58, &qword_1000F0660);
    sub_1000210D8(v32, &v23[*(v33 + 44)]);
    *v17 = sub_1000EA3D4();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v34 = sub_100002A10(&qword_10012FD28, &qword_1000F0640);
    sub_100021A3C(v32, &v17[*(v34 + 44)]);
    *v11 = sub_1000EA3D4();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v35 = sub_100002A10(&qword_10012FD30, &qword_1000F0648);
    sub_100021ECC(v32, &v11[*(v35 + 44)]);
    sub_100025FE0();
    v44 = v27;
    sub_100025FE0();
    v45 = v29;
    v46 = v17;
    sub_100025FE0();
    v48 = v11;
    sub_100025FE0();
    sub_100025FE0();
    sub_100002A10(&qword_10012FD60, &qword_1000F0668);
    v47 = v23;
    sub_100025FE0();
    sub_100025FE0();
    sub_100025FE0();
    sub_100008E48(v9, &qword_10012FD08, &qword_1000F0620);
    sub_100008E48(v15, &qword_10012FD10, &qword_1000F0628);
    sub_100008E48(v21, &qword_10012FD18, &qword_1000F0630);
    sub_100008E48(v44, &qword_10012FD20, &qword_1000F0638);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_10012FD40, &qword_10012FD00, &qword_1000F0618, &protocol conformance descriptor for TupleView<A>);
    sub_100006988(&qword_10012FD48, &qword_10012FCF0, &qword_1000F0608, &protocol conformance descriptor for TupleView<A>);
    sub_1000EA4A4();
    sub_100008E48(v5, &qword_10012FD00, &qword_1000F0618);
    sub_100008E48(v48, &qword_10012FD08, &qword_1000F0620);
    sub_100008E48(v46, &qword_10012FD10, &qword_1000F0628);
    sub_100008E48(v47, &qword_10012FD18, &qword_1000F0630);
    v36 = v45;
    v37 = &qword_10012FD20;
    v38 = &qword_1000F0638;
  }

  else
  {
    *v17 = sub_1000EA3D4();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v39 = sub_100002A10(&qword_10012FD28, &qword_1000F0640);
    v40 = v48;
    sub_100021A3C(v48, &v17[*(v39 + 44)]);
    *v11 = sub_1000EA3D4();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v41 = sub_100002A10(&qword_10012FD30, &qword_1000F0648);
    sub_100021ECC(v40, &v11[*(v41 + 44)]);
    sub_100025FE0();
    sub_100025FE0();
    v42 = v46;
    sub_100025FE0();
    sub_100002A10(&qword_10012FD38, &qword_1000F0650);
    sub_100025FE0();
    sub_100008E48(v9, &qword_10012FD08, &qword_1000F0620);
    sub_100008E48(v15, &qword_10012FD10, &qword_1000F0628);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_10012FD40, &qword_10012FD00, &qword_1000F0618, &protocol conformance descriptor for TupleView<A>);
    sub_100006988(&qword_10012FD48, &qword_10012FCF0, &qword_1000F0608, &protocol conformance descriptor for TupleView<A>);
    sub_1000EA4A4();
    sub_100008E48(v42, &qword_10012FCF0, &qword_1000F0608);
    sub_100008E48(v11, &qword_10012FD08, &qword_1000F0620);
    v36 = v17;
    v37 = &qword_10012FD10;
    v38 = &qword_1000F0628;
  }

  return sub_100008E48(v36, v37, v38);
}

uint64_t sub_10001E658()
{
  v0 = sub_1000EAD74();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  __chkstk_darwin(v2 - 8);
  v37 = &v33 - v3;
  v36 = sub_1000EC184();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EC174();
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  __chkstk_darwin(v10);
  v34 = &v33 - v12;
  v13 = sub_1000E9134();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000EB674();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB934();
  sub_1000EB624();
  (*(v18 + 8))(v20, v17);
  sub_1000E9114();
  (*(v14 + 8))(v16, v13);
  v21 = v36;
  (*(v4 + 104))(v6, enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:), v36);
  v22 = sub_1000E86A4();
  v23 = v37;
  sub_1000028A0(v37, 1, 1, v22);
  sub_1000EC0D4();
  v24 = v35;
  sub_1000EAD14();

  sub_100008E48(v23, &qword_10012FD68, &unk_1000F5370);
  (*(v4 + 8))(v6, v21);
  v25 = v42;
  v26 = v43;
  v27 = v44;
  (*(v43 + 104))(v42, enum case for WeatherFormatPlaceholder.none(_:), v44);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000221F8(&qword_10012FD78, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitSpeed.BaseWeatherFormatStyle);
  v28 = v38;
  v29 = v40;
  v30 = v34;
  v31 = sub_1000E8304();

  (*(v26 + 8))(v25, v27);
  (*(v41 + 8))(v24, v29);
  (*(v39 + 8))(v30, v28);
  return v31;
}

uint64_t sub_10001EBD4()
{
  v0 = sub_1000EAD74();
  v45 = *(v0 - 8);
  v46 = v0;
  __chkstk_darwin(v0);
  v44 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  __chkstk_darwin(v2 - 8);
  v40 = (&v36 - v3);
  v4 = sub_1000EC184();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000EC174();
  v47 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  __chkstk_darwin(v11);
  v36 = &v36 - v13;
  v14 = sub_1000E9134();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EB674();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB934();
  sub_1000EB624();
  (*(v19 + 8))(v21, v18);
  sub_1000E9114();
  (*(v15 + 8))(v17, v14);
  v23 = v37;
  v22 = v38;
  (*(v37 + 104))(v6, enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:), v38);
  v24 = sub_1000E86A4();
  v25 = v40;
  sub_1000028A0(v40, 1, 1, v24);
  sub_1000EC0D4();
  sub_1000EAD14();

  sub_100008E48(v25, &qword_10012FD68, &unk_1000F5370);
  (*(v23 + 8))(v6, v22);
  v26 = v39;
  sub_1000EC164();
  v27 = *(v47 + 8);
  v47 += 8;
  v40 = v27;
  v28 = v41;
  (v27)(v10, v41);
  v29 = v44;
  v30 = v45;
  v31 = v46;
  (*(v45 + 104))(v44, enum case for WeatherFormatPlaceholder.none(_:), v46);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000221F8(&qword_10012FD78, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitSpeed.BaseWeatherFormatStyle);
  v32 = v42;
  v33 = v36;
  v34 = sub_1000E8304();

  (*(v30 + 8))(v29, v31);
  (v40)(v26, v28);
  (*(v43 + 8))(v33, v32);
  return v34;
}

uint64_t sub_10001F198()
{
  v0 = sub_1000EAD74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EC224();
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = sub_1000EB674();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB934();
  sub_1000EB5F4();
  (*(v12 + 8))(v14, v11);
  sub_1000EAD24();
  v15 = v0;
  (*(v1 + 104))(v3, enum case for WeatherFormatPlaceholder.none(_:), v0);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000221F8(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v16 = v8;
  v17 = v22;
  v18 = sub_1000E8304();

  (*(v1 + 8))(v3, v15);
  (*(v23 + 8))(v7, v17);
  (*(v21 + 8))(v10, v16);
  return v18;
}

uint64_t sub_10001F500(char a1, char a2)
{
  v4 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1000EB674();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000EB584();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v15 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FB770;
      v17._countAndFlagsBits = 1684957527;
      v17._object = 0xE400000000000000;
      v21.value._countAndFlagsBits = 0;
      v21.value._object = 0;
      v22.super.isa = v15;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v16 = 0xD00000000000003BLL;
      goto LABEL_25;
    case 2:
      sub_1000EB934();
      sub_1000EB594();
      (*(v8 + 8))(v10, v7);
      if (sub_100005B30(v6, 1, v11) == 1)
      {
        sub_100008E48(v6, &qword_10012FD80, &unk_1000F06B8);
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v18 = qword_100145E00;
        v26._countAndFlagsBits = 0x80000001000FB730;
        v28._countAndFlagsBits = 0x79746964696D7548;
        v28._object = 0xE800000000000000;
        v29.value._countAndFlagsBits = 0;
        v29.value._object = 0;
        v19.super.isa = v18;
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        v20 = sub_1000E8464(v28, v29, v19, v30, 0xD00000000000003FLL, v26);
      }

      else
      {
        (*(v12 + 32))(v14, v6, v11);
        v20 = sub_1000EB574();
        (*(v12 + 8))(v14, v11);
      }

      return v20;
    case 3:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v15 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FB6E0;
      v16 = 0xD000000000000048;
      v17._countAndFlagsBits = 4806229;
      v17._object = 0xE300000000000000;
      goto LABEL_24;
    case 4:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v15 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FB690;
      v17._countAndFlagsBits = 0x694C20736C656546;
      v16 = 0xD00000000000004DLL;
      v17._object = 0xEA0000000000656BLL;
      goto LABEL_24;
    default:
      if (a2)
      {
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v15 = qword_100145E00;
        v26._countAndFlagsBits = 0x80000001000FB820;
        v17._countAndFlagsBits = 0x706963657250;
        v16 = 0xD000000000000044;
        v17._object = 0xE600000000000000;
      }

      else
      {
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v15 = qword_100145E00;
        v26._countAndFlagsBits = 0x80000001000FB7B0;
        v17._countAndFlagsBits = 0x7469706963657250;
        v17._object = 0xED00006E6F697461;
        v16 = 0xD000000000000069;
      }

LABEL_24:
      v21.value._countAndFlagsBits = 0;
      v21.value._object = 0;
      v22.super.isa = v15;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
LABEL_25:
      v25 = sub_1000E8464(v17, v21, v22, v23, v16, v26);

      return v25;
  }
}

uint64_t sub_10001FA8C(char a1)
{
  v2 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1000EB674();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EB584();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v13 = qword_100145E00;
      v24._countAndFlagsBits = 0x80000001000FB610;
      v14._countAndFlagsBits = 1684957527;
      v14._object = 0xE400000000000000;
      v19.value._countAndFlagsBits = 0;
      v19.value._object = 0;
      v20.super.isa = v13;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v15 = 0xD000000000000032;
      goto LABEL_19;
    case 2:
      sub_1000EB934();
      sub_1000EB594();
      (*(v6 + 8))(v8, v5);
      if (sub_100005B30(v4, 1, v9) == 1)
      {
        sub_100008E48(v4, &qword_10012FD80, &unk_1000F06B8);
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v16 = qword_100145E00;
        v24._countAndFlagsBits = 0x80000001000FB5D0;
        v26._countAndFlagsBits = 0x79746964696D7548;
        v26._object = 0xE800000000000000;
        v27.value._countAndFlagsBits = 0;
        v27.value._object = 0;
        v17.super.isa = v16;
        v28._countAndFlagsBits = 0;
        v28._object = 0xE000000000000000;
        v18 = sub_1000E8464(v26, v27, v17, v28, 0xD000000000000036, v24);
      }

      else
      {
        (*(v10 + 32))(v12, v4, v9);
        v18 = sub_1000EB574();
        (*(v10 + 8))(v12, v9);
      }

      return v18;
    case 3:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v13 = qword_100145E00;
      v24._countAndFlagsBits = 0x80000001000FB580;
      v14._countAndFlagsBits = 0x7865646E49205655;
      v15 = 0xD000000000000049;
      v14._object = 0xE800000000000000;
      goto LABEL_15;
    case 4:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v13 = qword_100145E00;
      v24._countAndFlagsBits = 0x80000001000FB530;
      v14._countAndFlagsBits = 0x694C20736C656546;
      v15 = 0xD000000000000040;
      v14._object = 0xEA0000000000656BLL;
      goto LABEL_15;
    default:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v13 = qword_100145E00;
      v24._countAndFlagsBits = 0x80000001000FB650;
      v14._countAndFlagsBits = 0x7469706963657250;
      v14._object = 0xED00006E6F697461;
      v15 = 0xD00000000000003BLL;
LABEL_15:
      v19.value._countAndFlagsBits = 0;
      v19.value._object = 0;
      v20.super.isa = v13;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
LABEL_19:
      v22 = sub_1000E8464(v14, v19, v20, v21, v15, v24);

      return v22;
  }
}

uint64_t sub_10001FFBC(char a1)
{
  v2 = sub_1000E9184();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  __chkstk_darwin(v4 - 8);
  v34 = &v33 - v5;
  v6 = sub_1000EB674();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = sub_1000EB584();
  v33 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000E83F4();
  __chkstk_darwin(v15);
  v16 = sub_1000E8444();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
      return sub_10001E658();
    case 2:
      sub_1000EB934();
      v21 = v34;
      sub_1000EB594();
      v22 = v39;
      v23 = *(v38 + 8);
      v23(v11, v39);
      if (sub_100005B30(v21, 1, v12) == 1)
      {
        sub_100008E48(v21, &qword_10012FD80, &unk_1000F06B8);
        sub_1000EB934();
        sub_1000EB644();
        v23(v9, v22);
        return sub_1000EC094(1);
      }

      else
      {
        v32 = v33;
        (*(v33 + 32))(v14, v21, v12);
        v30 = sub_10002058C();
        (*(v32 + 8))(v14, v12);
      }

      return v30;
    case 3:
      sub_1000EB934();
      v24 = v35;
      sub_1000EB634();
      v25 = v39;
      v38 = *(v38 + 8);
      (v38)(v9, v39);
      v26 = sub_1000E9164();
      v27 = v37;
      v28 = *(v36 + 8);
      v28(v24, v37);
      v40 = v26;
      sub_1000221A4();
      v40 = sub_1000EC3B4();
      v41 = v29;
      v42._countAndFlagsBits = 32;
      v42._object = 0xE100000000000000;
      sub_1000EBF44(v42);
      sub_1000EB934();
      sub_1000EB634();
      (v38)(v9, v25);
      sub_1000E9174();
      v28(v24, v27);
      v43._countAndFlagsBits = sub_1000E9144();
      sub_1000EBF44(v43);

      return v40;
    case 4:
      return sub_10001F198();
    default:
      type metadata accessor for DataDenseTableView(0);
      sub_1000EB4A4();
      sub_1000E83E4();
      (*(v17 + 8))(v19, v16);
      sub_1000221F8(&qword_10012FD90, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
      return sub_1000EBF64();
  }
}

uint64_t sub_10002058C()
{
  v0 = sub_1000EB544();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB554();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for CurrentObservationViewModel.AirQuality.Value.number(_:))
  {
    (*(v1 + 96))(v3, v0);
    v6[1] = *v3;
    sub_1000221A4();
    return sub_1000EC3B4();
  }

  else if (v4 == enum case for CurrentObservationViewModel.AirQuality.Value.category(_:))
  {
    (*(v1 + 96))(v3, v0);
    return *v3;
  }

  else
  {
    result = sub_1000EC5C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000206E4(char a1)
{
  if (a1 - 2 >= 3)
  {
    if (a1)
    {

      return sub_10001EBD4();
    }

    else
    {
      type metadata accessor for DataDenseTableView(0);
      sub_1000EB4E4();
      return sub_1000EBF74();
    }
  }

  else
  {

    return sub_10001FFBC(a1);
  }
}

uint64_t sub_100020794@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v140 = a2;
  v153 = type metadata accessor for RowView(0);
  v3 = __chkstk_darwin(v153);
  v144 = (&v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v143 = (&v125 - v6);
  v7 = __chkstk_darwin(v5);
  v142 = (&v125 - v8);
  v9 = __chkstk_darwin(v7);
  v141 = (&v125 - v10);
  v11 = __chkstk_darwin(v9);
  v134 = (&v125 - v12);
  v13 = __chkstk_darwin(v11);
  v139 = &v125 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = (&v125 - v16);
  v18 = __chkstk_darwin(v15);
  v148 = &v125 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = (&v125 - v21);
  v23 = __chkstk_darwin(v20);
  v147 = &v125 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = (&v125 - v26);
  __chkstk_darwin(v25);
  v146 = &v125 - v28;
  v29 = [objc_opt_self() mainScreen];
  [v29 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v135 = v178;
  v136 = v180;
  v137 = v183;
  v138 = v182;
  v177 = 1;
  v175 = v179;
  v173 = v181;
  v145 = (a1 + *(type metadata accessor for DataDenseViewAttributes(0) + 20));
  v30 = *v145;
  v31 = sub_10001F500(*v145, 1);
  v132 = v32;
  v133 = v31;
  v33 = sub_10001FA8C(v30);
  v130 = v34;
  v131 = v33;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (!v30)
  {
    type metadata accessor for DataDenseTableView(0);
    v37 = sub_1000EB4C4();
    v38 = v39;
    v35 = sub_1000EB4F4();
  }

  v128 = v36;
  v129 = v35;
  v40 = sub_10001FFBC(v30);
  v126 = v41;
  v127 = v40;
  v125 = sub_1000206E4(v30);
  v43 = v42;
  v44 = v38;
  v45 = v37;
  v46 = v153;
  v47 = *(v153 + 40);
  v48 = sub_1000EBA54();
  v49 = *(v48 - 8);
  v151 = *(v49 + 16);
  v152 = v48;
  v150 = v49 + 16;
  v151(v27 + v47, a1);
  *(v27 + *(v46 + 44)) = swift_getKeyPath();
  v149 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  v50 = v132;
  *v27 = v133;
  v27[1] = v50;
  v51 = v130;
  v27[2] = v131;
  v27[3] = v51;
  v27[4] = v45;
  v27[5] = v44;
  v52 = v128;
  v27[6] = v129;
  v27[7] = v52;
  v53 = v126;
  v27[8] = v127;
  v27[9] = v53;
  v27[10] = v125;
  v27[11] = v43;
  sub_100025658();
  v54 = v145[1];
  v55 = sub_10001F500(v145[1], 1);
  v132 = v56;
  v133 = v55;
  v57 = sub_10001FA8C(v54);
  v130 = v58;
  v131 = v57;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  if (!v54)
  {
    type metadata accessor for DataDenseTableView(0);
    v61 = sub_1000EB4C4();
    v62 = v63;
    v59 = sub_1000EB4F4();
  }

  v128 = v60;
  v129 = v59;
  v127 = sub_10001FFBC(v54);
  v65 = v64;
  v66 = sub_1000206E4(v54);
  v68 = v67;
  v69 = v62;
  v70 = v153;
  (v151)(v22 + *(v153 + 40), a1, v152);
  *(v22 + *(v70 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v71 = v132;
  *v22 = v133;
  v22[1] = v71;
  v72 = v130;
  v22[2] = v131;
  v22[3] = v72;
  v22[4] = v61;
  v22[5] = v69;
  v73 = v128;
  v22[6] = v129;
  v22[7] = v73;
  v22[8] = v127;
  v22[9] = v65;
  v22[10] = v66;
  v22[11] = v68;
  sub_100025658();
  v74 = v145;
  v75 = v145[2];
  v76 = sub_10001F500(v145[2], 1);
  v132 = v77;
  v133 = v76;
  v78 = sub_10001FA8C(v75);
  v130 = v79;
  v131 = v78;
  if (v75)
  {
    v127 = 0;
    v128 = 0;
    v80 = 0;
    v129 = 0;
  }

  else
  {
    type metadata accessor for DataDenseTableView(0);
    v81 = sub_1000EB4C4();
    v128 = v82;
    v129 = v81;
    v127 = sub_1000EB4F4();
    v80 = v83;
  }

  v84 = sub_10001FFBC(v75);
  v86 = v85;
  v87 = sub_1000206E4(v75);
  v89 = v88;
  v90 = v153;
  (v151)(v17 + *(v153 + 40), a1, v152);
  *(v17 + *(v90 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v91 = v132;
  *v17 = v133;
  v17[1] = v91;
  v92 = v130;
  v17[2] = v131;
  v17[3] = v92;
  v93 = v128;
  v17[4] = v129;
  v17[5] = v93;
  v17[6] = v127;
  v17[7] = v80;
  v17[8] = v84;
  v17[9] = v86;
  v17[10] = v87;
  v17[11] = v89;
  sub_100025658();
  v94 = v74[3];
  v145 = sub_10001F500(v74[3], 1);
  v133 = v95;
  v96 = sub_10001FA8C(v94);
  v131 = v97;
  v132 = v96;
  if (v94)
  {
    v98 = 0;
    v99 = 0;
    v129 = 0;
    v130 = 0;
  }

  else
  {
    type metadata accessor for DataDenseTableView(0);
    v100 = sub_1000EB4C4();
    v129 = v101;
    v130 = v100;
    v98 = sub_1000EB4F4();
    v99 = v102;
  }

  v103 = sub_10001FFBC(v94);
  v105 = v104;
  v106 = sub_1000206E4(v94);
  v108 = v107;
  v109 = v153;
  v110 = v134;
  (v151)(v134 + *(v153 + 40), a1, v152);
  *(v110 + *(v109 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v112 = v132;
  v111 = v133;
  *v110 = v145;
  v110[1] = v111;
  v114 = v130;
  v113 = v131;
  v110[2] = v112;
  v110[3] = v113;
  v115 = v129;
  v110[4] = v114;
  v110[5] = v115;
  v110[6] = v98;
  v110[7] = v99;
  v110[8] = v103;
  v110[9] = v105;
  v110[10] = v106;
  v110[11] = v108;
  v116 = v139;
  sub_100025658();
  v160 = 0;
  v161 = v177;
  *v162 = *v176;
  *&v162[3] = *&v176[3];
  v163 = v135;
  v164 = v175;
  *v165 = *v174;
  *&v165[3] = *&v174[3];
  v166 = v136;
  v167 = v173;
  *v168 = *v172;
  *&v168[3] = *&v172[3];
  v169 = v138;
  v170 = v137;
  v171[0] = &v160;
  v117 = v146;
  v118 = v141;
  sub_1000256AC();
  v158 = 0;
  v159 = 0;
  v171[1] = v118;
  v171[2] = &v158;
  v119 = v147;
  v120 = v142;
  sub_1000256AC();
  v156 = 0;
  v157 = 0;
  v171[3] = v120;
  v171[4] = &v156;
  v121 = v148;
  v122 = v143;
  sub_1000256AC();
  v154 = 0;
  v155 = 0;
  v171[5] = v122;
  v171[6] = &v154;
  v123 = v144;
  sub_1000256AC();
  v171[7] = v123;
  sub_10003365C(v171, v140);
  sub_100025700(v116, type metadata accessor for RowView);
  sub_100025700(v121, type metadata accessor for RowView);
  sub_100025700(v119, type metadata accessor for RowView);
  sub_100025700(v117, type metadata accessor for RowView);
  sub_100025700(v123, type metadata accessor for RowView);
  sub_100025700(v122, type metadata accessor for RowView);
  sub_100025700(v120, type metadata accessor for RowView);
  return sub_100025700(v118, type metadata accessor for RowView);
}

uint64_t sub_1000210D8@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for RowView(0);
  v4 = __chkstk_darwin(v3);
  v111 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v110 = (&v92 - v7);
  v8 = __chkstk_darwin(v6);
  v109 = (&v92 - v9);
  v10 = __chkstk_darwin(v8);
  v12 = (&v92 - v11);
  v13 = __chkstk_darwin(v10);
  v107 = &v92 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = (&v92 - v16);
  v18 = __chkstk_darwin(v15);
  v116 = &v92 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = (&v92 - v21);
  __chkstk_darwin(v20);
  v115 = &v92 - v23;
  v24 = [objc_opt_self() mainScreen];
  [v24 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v102 = v139;
  v103 = v141;
  v105 = v143;
  v104 = v144;
  v138 = 1;
  v136 = v140;
  v134 = v142;
  v114 = (a1 + *(type metadata accessor for DataDenseViewAttributes(0) + 20));
  v25 = v114[4];
  v106 = sub_10001F500(v114[4], 1);
  v101 = v26;
  v99 = sub_10001FA8C(v25);
  v98 = v27;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (!v25)
  {
    type metadata accessor for DataDenseTableView(0);
    v30 = sub_1000EB4C4();
    v31 = v32;
    v28 = sub_1000EB4F4();
  }

  v96 = v29;
  v97 = v28;
  v95 = sub_10001FFBC(v25);
  v94 = v33;
  v93 = sub_1000206E4(v25);
  v35 = v34;
  v36 = v31;
  v37 = v30;
  v38 = v3;
  v39 = *(v3 + 40);
  v40 = sub_1000EBA54();
  v41 = *(v40 - 8);
  v100 = *(v41 + 16);
  v113 = v41 + 16;
  v100(v22 + v39, a1, v40);
  *(v22 + *(v38 + 44)) = swift_getKeyPath();
  v112 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  v42 = v101;
  *v22 = v106;
  v22[1] = v42;
  v43 = v98;
  v22[2] = v99;
  v22[3] = v43;
  v22[4] = v37;
  v22[5] = v36;
  v44 = v96;
  v22[6] = v97;
  v22[7] = v44;
  v45 = v94;
  v22[8] = v95;
  v22[9] = v45;
  v22[10] = v93;
  v22[11] = v35;
  sub_100025658();
  v46 = v114[5];
  v96 = sub_10001F500(v114[5], 1);
  v99 = v47;
  v98 = sub_10001FA8C(v46);
  v97 = v48;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (!v46)
  {
    type metadata accessor for DataDenseTableView(0);
    v51 = sub_1000EB4C4();
    v52 = v53;
    v49 = sub_1000EB4F4();
  }

  v94 = v50;
  v95 = v49;
  v54 = sub_10001FFBC(v46);
  v93 = v55;
  v56 = sub_1000206E4(v46);
  v58 = v57;
  v59 = v17 + *(v38 + 40);
  v101 = v40;
  v60 = v40;
  v61 = v100;
  v100(v59, a1, v60);
  KeyPath = swift_getKeyPath();
  v106 = v38;
  *(v17 + *(v38 + 44)) = KeyPath;
  swift_storeEnumTagMultiPayload();
  v63 = v99;
  *v17 = v96;
  v17[1] = v63;
  v64 = v97;
  v17[2] = v98;
  v17[3] = v64;
  v17[4] = v51;
  v17[5] = v52;
  v65 = v94;
  v17[6] = v95;
  v17[7] = v65;
  v66 = v93;
  v17[8] = v54;
  v17[9] = v66;
  v17[10] = v56;
  v17[11] = v58;
  sub_100025658();
  v67 = v114[6];
  v114 = sub_10001F500(v114[6], 1);
  v99 = v68;
  v98 = sub_10001FA8C(v67);
  v97 = v69;
  v70 = v61;
  if (v67)
  {
    v71 = 0;
    v72 = 0;
    v96 = 0;
    v95 = 0;
  }

  else
  {
    type metadata accessor for DataDenseTableView(0);
    v96 = sub_1000EB4C4();
    v95 = v73;
    v71 = sub_1000EB4F4();
    v72 = v74;
  }

  v75 = sub_10001FFBC(v67);
  v77 = v76;
  v78 = sub_1000206E4(v67);
  v80 = v79;
  v81 = v106;
  v70(v12 + *(v106 + 40), a1, v101);
  *(v12 + *(v81 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v82 = v99;
  *v12 = v114;
  v12[1] = v82;
  v83 = v97;
  v12[2] = v98;
  v12[3] = v83;
  v84 = v95;
  v12[4] = v96;
  v12[5] = v84;
  v12[6] = v71;
  v12[7] = v72;
  v12[8] = v75;
  v12[9] = v77;
  v12[10] = v78;
  v12[11] = v80;
  v85 = v107;
  sub_100025658();
  v121 = 0;
  v122 = v138;
  *v123 = *v137;
  *&v123[3] = *&v137[3];
  v124 = v102;
  v125 = v136;
  *v126 = *v135;
  *&v126[3] = *&v135[3];
  v127 = v103;
  v128 = v134;
  *v129 = *v133;
  *&v129[3] = *&v133[3];
  v130 = v105;
  v131 = v104;
  v132[0] = &v121;
  v86 = v115;
  v87 = v109;
  sub_1000256AC();
  v119 = 0;
  v120 = 0;
  v132[1] = v87;
  v132[2] = &v119;
  v88 = v116;
  v89 = v110;
  sub_1000256AC();
  v117 = 0;
  v118 = 0;
  v132[3] = v89;
  v132[4] = &v117;
  v90 = v111;
  sub_1000256AC();
  v132[5] = v90;
  sub_1000336E8(v132, v108);
  sub_100025700(v85, type metadata accessor for RowView);
  sub_100025700(v88, type metadata accessor for RowView);
  sub_100025700(v86, type metadata accessor for RowView);
  sub_100025700(v90, type metadata accessor for RowView);
  sub_100025700(v89, type metadata accessor for RowView);
  return sub_100025700(v87, type metadata accessor for RowView);
}

uint64_t sub_100021A3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v77 = type metadata accessor for ColumnView(0);
  v3 = __chkstk_darwin(v77);
  v76 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v74 = &v60 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = (&v60 - v8);
  v10 = __chkstk_darwin(v7);
  v73 = &v60 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = (&v60 - v13);
  __chkstk_darwin(v12);
  v16 = &v60 - v15;
  v71 = a1 + *(type metadata accessor for DataDenseViewAttributes(0) + 20);
  v17 = *(v71 + 7);
  v18 = sub_10001F500(*(v71 + 7), 0);
  v65 = v19;
  v66 = v18;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (!v17)
  {
    type metadata accessor for DataDenseTableView(0);
    v22 = sub_1000EB4C4();
    v23 = v24;
    v20 = sub_1000EB4F4();
  }

  v63 = v21;
  v64 = v20;
  v72 = v16;
  v25 = sub_10001FFBC(v17);
  v61 = v26;
  v62 = v25;
  v27 = sub_1000206E4(v17);
  v29 = v28;
  v30 = v77;
  v31 = *(v77 + 36);
  v32 = sub_1000EBA54();
  v33 = *(v32 - 8);
  v69 = *(v33 + 16);
  v70 = v32;
  v68 = v33 + 16;
  v69(v14 + v31, a1);
  *(v14 + *(v30 + 40)) = swift_getKeyPath();
  v67 = sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v34 = v65;
  *v14 = v66;
  v14[1] = v34;
  v14[2] = v22;
  v14[3] = v23;
  v35 = v63;
  v14[4] = v64;
  v14[5] = v35;
  v36 = v61;
  v14[6] = v62;
  v14[7] = v36;
  v14[8] = v27;
  v14[9] = v29;
  sub_100025658();
  v37 = *(v71 + 8);
  v71 = sub_10001F500(*(v71 + 8), 0);
  v66 = v38;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (!v37)
  {
    type metadata accessor for DataDenseTableView(0);
    v41 = sub_1000EB4C4();
    v42 = v43;
    v39 = sub_1000EB4F4();
    v40 = v44;
  }

  v65 = v39;
  v45 = sub_10001FFBC(v37);
  v47 = v46;
  v48 = sub_1000206E4(v37);
  v50 = v49;
  v51 = v77;
  (v69)(v9 + *(v77 + 36), a1, v70);
  *(v9 + *(v51 + 40)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v52 = v65;
  v53 = v66;
  *v9 = v71;
  v9[1] = v53;
  v9[2] = v41;
  v9[3] = v42;
  v9[4] = v52;
  v9[5] = v40;
  v9[6] = v45;
  v9[7] = v47;
  v9[8] = v48;
  v9[9] = v50;
  v54 = v73;
  sub_100025658();
  v55 = v72;
  v56 = v74;
  sub_1000256AC();
  v57 = v76;
  sub_1000256AC();
  v58 = v75;
  *v75 = 0x4000000000000000;
  *(v58 + 8) = 0;
  sub_100002A10(&qword_10012FDA0, &qword_1000F0708);
  sub_1000256AC();
  sub_1000256AC();
  sub_100025700(v54, type metadata accessor for ColumnView);
  sub_100025700(v55, type metadata accessor for ColumnView);
  sub_100025700(v57, type metadata accessor for ColumnView);
  return sub_100025700(v56, type metadata accessor for ColumnView);
}

uint64_t sub_100021ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for ColumnView(0);
  v4 = __chkstk_darwin(v3);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - v7;
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = a1 + *(type metadata accessor for DataDenseViewAttributes(0) + 20);
  v12 = *(v11 + 9);
  v13 = sub_10001F500(*(v11 + 9), 0);
  v37 = v14;
  v38 = v13;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (!v12)
  {
    type metadata accessor for DataDenseTableView(0);
    v17 = sub_1000EB4C4();
    v18 = v19;
    v15 = sub_1000EB4F4();
  }

  v35 = v16;
  v36 = v15;
  v34 = sub_10001FFBC(v12);
  v21 = v20;
  v22 = sub_1000206E4(v12);
  v24 = v23;
  v25 = v17;
  v26 = *(v3 + 36);
  v27 = sub_1000EBA54();
  (*(*(v27 - 8) + 16))(&v8[v26], a1, v27);
  *&v8[*(v3 + 40)] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v28 = v37;
  *v8 = v38;
  *(v8 + 1) = v28;
  *(v8 + 2) = v25;
  *(v8 + 3) = v18;
  v29 = v35;
  *(v8 + 4) = v36;
  *(v8 + 5) = v29;
  *(v8 + 6) = v34;
  *(v8 + 7) = v21;
  *(v8 + 8) = v22;
  *(v8 + 9) = v24;
  sub_100025658();
  v30 = v39;
  sub_1000256AC();
  v31 = v40;
  *v40 = 0;
  *(v31 + 8) = 0;
  sub_100002A10(&qword_10012FD98, &qword_1000F0700);
  sub_1000256AC();
  sub_100025700(v10, type metadata accessor for ColumnView);
  return sub_100025700(v30, type metadata accessor for ColumnView);
}

unint64_t sub_1000221A4()
{
  result = qword_10012FD88;
  if (!qword_10012FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FD88);
  }

  return result;
}

uint64_t sub_1000221F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100022240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000EA2C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  type metadata accessor for RowView(0);
  sub_100025FE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000EA694();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1000EC1A4();
    v11 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100022448@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_1000EA4E4();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EA694();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012FF98, &qword_1000F0838);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v27 = sub_100002A10(&qword_10012FFA0, &qword_1000F0840);
  __chkstk_darwin(v27);
  v10 = &v26 - v9;
  v30 = sub_100002A10(&qword_10012FFA8, &qword_1000F0848);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v26 - v11;
  v29 = sub_100002A10(&qword_10012FFB0, &qword_1000F0850);
  v13 = __chkstk_darwin(v29);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  *v8 = sub_1000EA2E4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v18 = sub_100002A10(&qword_10012FFB8, &qword_1000F0858);
  sub_100022A00(v1, &v8[*(v18 + 44)]);
  type metadata accessor for RowView(0);
  sub_1000EBA44();
  sub_100022240(v5);
  sub_1000EA594();

  (*(v3 + 8))(v5, v26);
  sub_1000EABC4();
  sub_1000EA0A4();
  sub_100025EB8(v8, v10);
  v19 = v27;
  memcpy(&v10[*(v27 + 36)], __src, 0x70uLL);
  v20 = v31;
  sub_1000EA4C4();
  v21 = sub_100025F28();
  sub_1000EA914();
  (*(v32 + 8))(v20, v33);
  sub_100008E48(v10, &qword_10012FFA0, &qword_1000F0840);
  v22 = *(v1 + 24);
  v37 = *(v1 + 16);
  v38 = v22;
  v35 = v19;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v23 = v30;
  sub_1000EA8D4();
  (*(v28 + 8))(v12, v23);
  v24 = *(v1 + 88);
  v37 = *(v1 + 80);
  v38 = v24;
  sub_1000EA064();
  sub_100008E48(v15, &qword_10012FFB0, &qword_1000F0850);
  sub_1000EA084();
  return sub_100008E48(v17, &qword_10012FFB0, &qword_1000F0850);
}

uint64_t sub_100022A00@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = type metadata accessor for ValueTextView(0) - 8;
  v3 = __chkstk_darwin(v42);
  v47 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = (&v35 - v5);
  v7 = type metadata accessor for ConditionTextView(0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = *a1;
  v46 = *(a1 + 1);
  v14 = v46;
  v15 = *(type metadata accessor for RowView(0) + 40);
  v40 = v15;
  v16 = *(v8 + 28);
  v17 = sub_1000EBA54();
  v18 = *(*(v17 - 8) + 16);
  v18(&v12[v16], &a1[v15], v17);
  v41 = v12;
  *v12 = v13;
  *(v12 + 1) = v14;
  v19 = *(a1 + 8);
  v20 = *(a1 + 9);
  v21 = *(a1 + 11);
  v38 = *(a1 + 10);
  v39 = v19;
  v22 = *(a1 + 4);
  v23 = *(a1 + 5);
  v43 = v20;
  v44 = v23;
  v24 = *(a1 + 7);
  v36 = *(a1 + 6);
  v37 = v22;
  v25 = v42;
  v18(v6 + *(v42 + 40), &a1[v40], v17);
  v26 = v38;
  *v6 = v39;
  v6[1] = v20;
  v6[2] = v26;
  v6[3] = v21;
  v27 = v36;
  v6[4] = v37;
  v6[5] = v23;
  v6[6] = v27;
  v6[7] = v24;
  v28 = *(v25 + 44);
  *(v6 + v28) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v29 = v41;
  v30 = v45;
  sub_1000256AC();
  v31 = v47;
  sub_1000256AC();
  v32 = v48;
  sub_1000256AC();
  v33 = v32 + *(sub_100002A10(&qword_10012FFD0, &unk_1000F0860) + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_1000256AC();

  sub_100025700(v6, type metadata accessor for ValueTextView);
  sub_100025700(v29, type metadata accessor for ConditionTextView);
  sub_100025700(v31, type metadata accessor for ValueTextView);
  return sub_100025700(v30, type metadata accessor for ConditionTextView);
}

uint64_t sub_100022D40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000EA2C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  type metadata accessor for ColumnView(0);
  sub_100025FE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000EA3A4();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1000EC1A4();
    v11 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100022F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v41 = sub_1000EA4E4();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012FF18, &qword_1000F07D8);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_100002A10(&qword_10012FF20, &qword_1000F07E0);
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v43 = sub_100002A10(&qword_10012FF28, &qword_1000F07E8);
  v12 = __chkstk_darwin(v43);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v39 - v15;
  *v8 = sub_1000EA3D4();
  *(v8 + 1) = 0xBFF0000000000000;
  v8[16] = 0;
  v16 = sub_100002A10(&qword_10012FF30, &qword_1000F07F0);
  sub_100023474(v2, &v8[*(v16 + 44)]);
  sub_1000EA4C4();
  v17 = sub_100006988(&qword_10012FF38, &qword_10012FF18, &qword_1000F07D8, &protocol conformance descriptor for VStack<A>);
  sub_1000EA914();
  (*(v3 + 8))(v5, v41);
  sub_100008E48(v8, &qword_10012FF18, &qword_1000F07D8);
  v18 = *(v2 + 8);
  v47 = *v2;
  v48 = v18;
  v45 = v6;
  v46 = v17;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v41 = v14;
  v19 = v40;
  sub_1000EA8D4();
  (*(v39 + 8))(v11, v19);
  sub_100002A10(&qword_10012FF40, &qword_1000F07F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F03E0;
  v21 = *(v2 + 40);
  *(inited + 32) = *(v2 + 32);
  *(inited + 40) = v21;
  v22 = *(v2 + 72);
  *(inited + 48) = *(v2 + 64);
  *(inited + 56) = v22;

  v23 = 0;
  v24 = &_swiftEmptyArrayStorage;
LABEL_2:
  v25 = (inited + 40 + 16 * v23);
  while (++v23 != 3)
  {
    v26 = v25 + 2;
    v27 = *v25;
    v25 += 2;
    if (v27)
    {
      v28 = *(v26 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100030F78();
        v24 = v31;
      }

      v29 = v24[2];
      if (v29 >= v24[3] >> 1)
      {
        sub_100030F78();
        v24 = v32;
      }

      v24[2] = v29 + 1;
      v30 = &v24[2 * v29];
      *(v30 + 4) = v28;
      *(v30 + 5) = v27;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_100025D10();
  v47 = v24;
  sub_100002A10(&qword_10012FF48, &qword_1000F0800);
  sub_100006988(&qword_10012FF50, &qword_10012FF48, &qword_1000F0800, &protocol conformance descriptor for [A]);
  v33 = sub_1000EBDF4();
  v35 = v34;

  v47 = v33;
  v48 = v35;
  v36 = v42;
  v37 = v41;
  sub_1000EA064();

  sub_100008E48(v37, &qword_10012FF28, &qword_1000F07E8);
  sub_1000EA084();
  return sub_100008E48(v36, &qword_10012FF28, &qword_1000F07E8);
}

uint64_t sub_100023474@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = type metadata accessor for CombinedTextView(0);
  __chkstk_darwin(v50);
  v49 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100002A10(&qword_10012FF58, &qword_1000F0810);
  __chkstk_darwin(v52);
  v5 = &v40 - v4;
  v6 = sub_100002A10(&qword_10012FF60, &qword_1000F0818);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v51 = sub_100002A10(&qword_10012FF68, &qword_1000F0820);
  __chkstk_darwin(v51);
  v10 = &v40 - v9;
  v11 = sub_100002A10(&qword_10012FF70, &qword_1000F0828);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = sub_1000EA3A4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022D40(v17);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for ColorSchemeContrast.standard(_:))
  {
    sub_100023B68(v13);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828, &protocol conformance descriptor for TupleView<A>);
    sub_1000221F8(&qword_10012FF88, type metadata accessor for CombinedTextView, &unk_1000F0944);
    sub_1000EA4A4();
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100025D90();
    sub_1000EA4A4();
    sub_100008E48(v10, &qword_10012FF68, &qword_1000F0820);
    return sub_100008E48(v13, &qword_10012FF70, &qword_1000F0828);
  }

  else
  {
    v45 = v6;
    v46 = v8;
    v44 = v10;
    v20 = v50;
    v47 = v5;
    v48 = v11;
    if (v18 == enum case for ColorSchemeContrast.increased(_:))
    {
      v21 = *a1;
      v22 = *(a1 + 1);
      v23 = *(a1 + 7);
      v42 = *(a1 + 6);
      v43 = v21;
      v24 = *(a1 + 8);
      v25 = *(a1 + 9);
      v40 = v22;
      v41 = v24;
      v26 = *(type metadata accessor for ColumnView(0) + 36);
      v27 = v20;
      v28 = v20[7];
      v29 = sub_1000EBA54();
      v30 = v49;
      (*(*(v29 - 8) + 16))(&v49[v28], &a1[v26], v29);
      v31 = *(a1 + 2);
      v32 = *(a1 + 3);
      v34 = *(a1 + 4);
      v33 = *(a1 + 5);
      *(v30 + v27[10]) = swift_getKeyPath();
      sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
      swift_storeEnumTagMultiPayload();
      v35 = v42;
      v36 = v40;
      *v30 = v43;
      v30[1] = v36;
      v30[2] = v35;
      v30[3] = v23;
      v30[4] = v41;
      v30[5] = v25;
      v37 = (v30 + v27[8]);
      *v37 = v31;
      v37[1] = v32;
      v38 = (v30 + v27[9]);
      *v38 = v34;
      v38[1] = v33;
      sub_1000256AC();
      swift_storeEnumTagMultiPayload();
      sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828, &protocol conformance descriptor for TupleView<A>);
      sub_1000221F8(&qword_10012FF88, type metadata accessor for CombinedTextView, &unk_1000F0944);

      v39 = v44;
      sub_1000EA4A4();
      sub_100025FE0();
      swift_storeEnumTagMultiPayload();
      sub_100025D90();
      sub_1000EA4A4();
      sub_100008E48(v39, &qword_10012FF68, &qword_1000F0820);
      return sub_100025700(v30, type metadata accessor for CombinedTextView);
    }

    else
    {
      sub_100023B68(v13);
      sub_100025FE0();
      swift_storeEnumTagMultiPayload();
      sub_100025D90();
      sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828, &protocol conformance descriptor for TupleView<A>);
      sub_1000EA4A4();
      sub_100008E48(v13, &qword_10012FF70, &qword_1000F0828);
      return (*(v15 + 8))(v17, v14);
    }
  }
}

uint64_t sub_100023B68@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v39 = type metadata accessor for ValueTextView(0) - 8;
  v2 = __chkstk_darwin(v39);
  v44 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  v6 = type metadata accessor for ConditionTextView(0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v13 = *v1;
  v43 = *(v1 + 1);
  v12 = v43;
  v14 = *(type metadata accessor for ColumnView(0) + 36);
  v37 = v14;
  v15 = *(v7 + 28);
  v16 = sub_1000EBA54();
  v17 = *(*(v16 - 8) + 16);
  v17(&v11[v15], &v1[v14], v16);
  v38 = v11;
  *v11 = v13;
  *(v11 + 1) = v12;
  v18 = *(v1 + 6);
  v19 = *(v1 + 7);
  v20 = *(v1 + 9);
  v35 = *(v1 + 8);
  v36 = v18;
  v21 = *(v1 + 2);
  v22 = *(v1 + 3);
  v40 = v19;
  v41 = v22;
  v23 = *(v1 + 5);
  v33 = *(v1 + 4);
  v34 = v21;
  v24 = v39;
  v17(&v5[*(v39 + 40)], &v1[v37], v16);
  v25 = v35;
  *v5 = v36;
  *(v5 + 1) = v19;
  *(v5 + 2) = v25;
  *(v5 + 3) = v20;
  v26 = v33;
  *(v5 + 4) = v34;
  *(v5 + 5) = v22;
  *(v5 + 6) = v26;
  *(v5 + 7) = v23;
  v27 = *(v24 + 44);
  *&v5[v27] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v28 = v38;
  v29 = v42;
  sub_1000256AC();
  v30 = v44;
  sub_1000256AC();
  sub_1000256AC();
  sub_100002A10(&qword_10012FF90, &qword_1000F0830);
  sub_1000256AC();

  sub_100025700(v5, type metadata accessor for ValueTextView);
  sub_100025700(v28, type metadata accessor for ConditionTextView);
  sub_100025700(v30, type metadata accessor for ValueTextView);
  return sub_100025700(v29, type metadata accessor for ConditionTextView);
}

uint64_t sub_100023E94@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v93 = sub_100002A10(&qword_1001301C0, &qword_1000F09A0);
  __chkstk_darwin(v93);
  v95 = &v72 - v2;
  v77 = sub_1000EA4E4();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100002A10(&qword_1001301C8, &qword_1000F09A8);
  __chkstk_darwin(v91);
  v73 = (&v72 - v4);
  v94 = sub_100002A10(&qword_1001301D0, &qword_1000F09B0);
  v78 = *(v94 - 8);
  __chkstk_darwin(v94);
  v75 = &v72 - v5;
  v6 = sub_100002A10(&qword_1001301D8, &qword_1000F09B8);
  __chkstk_darwin(v6 - 8);
  v92 = &v72 - v7;
  v84 = sub_1000EA3A4();
  v83 = *(v84 - 8);
  v8 = __chkstk_darwin(v84);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v72 - v10;
  v11 = sub_100002A10(&qword_1001301E0, &qword_1000F09C0);
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v86 = &v72 - v12;
  v89 = sub_100002A10(&qword_1001301E8, &qword_1000F09C8);
  __chkstk_darwin(v89);
  v90 = &v72 - v13;
  v14 = v1;
  v15 = *v1;
  v16 = v1[1];
  v79 = v14;
  v99 = v15;
  v100 = v16;
  v17 = sub_100005898();

  v85 = v17;
  v18 = sub_1000EA814();
  v20 = v19;
  v22 = v21;
  sub_1000EA9C4();
  v23 = sub_1000EA784();
  v25 = v24;
  v27 = v26;

  sub_1000058EC(v18, v20, v22 & 1);

  v72 = *(type metadata accessor for ValueTextView(0) + 32);
  sub_1000EBA44();
  v28 = sub_1000EA7D4();
  v30 = v29;
  v32 = v31;

  sub_1000058EC(v23, v25, v27 & 1);

  v33 = sub_1000EA794();
  v35 = v34;
  HIDWORD(v80) = v36;
  v38 = v37;
  sub_1000058EC(v28, v30, v32 & 1);

  v40 = v79;
  v41 = v81;
  sub_10003E504(v39, v42, v43, v44, v45, v46, v47, v48, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v49 = v83;
  v50 = v82;
  v51 = v84;
  (*(v83 + 104))(v82, enum case for ColorSchemeContrast.increased(_:), v84);
  LOBYTE(v18) = sub_1000EA394();
  v52 = *(v49 + 8);
  v52(v50, v51);
  v52(v41, v51);
  v53 = 1.0;
  if ((v18 & 1) == 0)
  {
    sub_1000EB9F4();
  }

  v99 = v33;
  v100 = v35;
  v54 = BYTE4(v80) & 1;
  v101 = BYTE4(v80) & 1;
  v102 = v38;
  v103 = v53;
  sub_1000EA664();
  v55 = sub_100002A10(&qword_1001301F0, &qword_1000F09D0);
  v56 = sub_1000268B8();
  v57 = v86;
  sub_1000EA874();
  sub_1000058EC(v33, v35, v54);

  v58 = v40[3];
  v99 = v40[2];
  v100 = v58;
  v97 = v55;
  v98 = v56;
  swift_getOpaqueTypeConformance2();
  v59 = v90;
  v60 = v88;
  sub_1000EA8D4();
  (*(v87 + 8))(v57, v60);
  if (v40[5])
  {
    v61 = sub_1000EA2E4();
    v62 = v73;
    *v73 = v61;
    v62[1] = 0x4010000000000000;
    *(v62 + 16) = 0;
    v63 = sub_100002A10(&qword_100130210, &qword_1000F09D8);
    sub_1000247CC(v59, v62 + *(v63 + 44));
    v64 = v74;
    sub_1000EA4C4();
    v65 = sub_100006988(&qword_100130200, &qword_1001301C8, &qword_1000F09A8, &protocol conformance descriptor for HStack<A>);
    v66 = v75;
    v67 = v91;
    sub_1000EA914();
    (*(v76 + 8))(v64, v77);
    sub_100008E48(v62, &qword_1001301C8, &qword_1000F09A8);
    v68 = v78;
    v69 = v94;
    (*(v78 + 16))(v95, v66, v94);
    swift_storeEnumTagMultiPayload();
    v99 = v67;
    v100 = v65;
    swift_getOpaqueTypeConformance2();
    sub_100026998();
    sub_1000EA4A4();
    (*(v68 + 8))(v66, v69);
  }

  else
  {
    sub_10002693C();
    swift_storeEnumTagMultiPayload();
    v70 = sub_100006988(&qword_100130200, &qword_1001301C8, &qword_1000F09A8, &protocol conformance descriptor for HStack<A>);
    v99 = v91;
    v100 = v70;
    swift_getOpaqueTypeConformance2();
    sub_100026998();
    sub_1000EA4A4();
  }

  sub_100026A90();
  return sub_100008E48(v59, &qword_1001301E8, &qword_1000F09C8);
}

uint64_t sub_1000247CC@<X0>(uint64_t a3@<X3>, char *a4@<X8>)
{
  v78 = a3;
  v80 = a4;
  v4 = sub_100002A10(&qword_1001301E8, &qword_1000F09C8);
  __chkstk_darwin(v4 - 8);
  v79 = &v64 - v5;
  v6 = sub_1000EA3A4();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = __chkstk_darwin(v6);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v64 - v9;
  v10 = sub_100002A10(&qword_1001301E0, &qword_1000F09C0);
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v71 = &v64 - v11;
  v12 = sub_100002A10(&qword_100130218, &qword_1000F09E0);
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = __chkstk_darwin(v12);
  v75 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v64 - v15;

  sub_1000EAA24();
  v16 = sub_1000EA824();
  v18 = v17;
  v20 = v19;
  sub_1000EA9C4();
  v21 = sub_1000EA784();
  v23 = v22;
  v25 = v24;

  sub_1000058EC(v16, v18, v20 & 1);

  v65 = type metadata accessor for ValueTextView(0);
  v64 = *(v65 + 32);
  sub_1000EBA44();
  v26 = sub_1000EA7D4();
  v28 = v27;
  v30 = v29;

  sub_1000058EC(v21, v23, v25 & 1);

  v31 = sub_1000EA794();
  v33 = v32;
  HIDWORD(v66) = v34;
  v36 = v35;
  sub_1000058EC(v26, v28, v30 & 1);

  v38 = v67;
  sub_10003E504(v37, v39, v40, v41, v42, v43, v44, v45, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v47 = v68;
  v46 = v69;
  v48 = v70;
  (*(v69 + 104))(v68, enum case for ColorSchemeContrast.increased(_:), v70);
  LOBYTE(v16) = sub_1000EA394();
  v49 = *(v46 + 8);
  v49(v47, v48);
  v49(v38, v48);
  v50 = 1.0;
  if ((v16 & 1) == 0)
  {
    sub_1000EB9F4();
  }

  v81 = v31;
  v82 = v33;
  v51 = BYTE4(v66) & 1;
  v83 = BYTE4(v66) & 1;
  v84 = v36;
  v85 = v50;
  sub_1000EA664();
  v52 = sub_100002A10(&qword_1001301F0, &qword_1000F09D0);
  v53 = sub_1000268B8();
  v54 = v71;
  sub_1000EA874();
  sub_1000058EC(v31, v33, v51);

  v81 = v52;
  v82 = v53;
  swift_getOpaqueTypeConformance2();
  v55 = v72;
  v56 = v74;
  sub_1000EA834();
  (*(v73 + 8))(v54, v56);
  v58 = v75;
  v57 = v76;
  v59 = *(v76 + 16);
  v60 = v77;
  v59(v75, v55, v77);
  v61 = v79;
  sub_10002693C();
  v59(v80, v58, v60);
  sub_100002A10(&qword_100130220, &qword_1000F09E8);
  sub_10002693C();
  v62 = *(v57 + 8);
  v62(v55, v60);
  sub_100008E48(v61, &qword_1001301E8, &qword_1000F09C8);
  return (v62)(v58, v60);
}

void sub_100024D9C(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_1000EA6A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v38 = *v1;
  v39 = v6;
  sub_100005898();

  v7 = sub_1000EA814();
  v9 = v8;
  v11 = v10;
  sub_1000EA9C4();
  v12 = sub_1000EA784();
  v35 = v13;
  v36 = v12;
  v15 = v14;
  v34 = v16;

  sub_1000058EC(v7, v9, v11 & 1);

  type metadata accessor for ConditionTextView(0);
  sub_1000EBA44();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  sub_1000EA6D4();

  (*(v3 + 8))(v5, v2);
  v18 = v35;
  v17 = v36;
  v19 = sub_1000EA7D4();
  v21 = v20;
  LOBYTE(v5) = v22;

  sub_1000058EC(v17, v18, v15 & 1);

  v23 = sub_1000EA794();
  v25 = v24;
  LOBYTE(v17) = v26;
  sub_1000058EC(v19, v21, v5 & 1);

  sub_1000EA664();
  v27 = sub_1000EA714();
  v29 = v28;
  LOBYTE(v5) = v30;
  v32 = v31;
  sub_1000058EC(v23, v25, v17 & 1);

  v33 = v37;
  *v37 = v27;
  v33[1] = v29;
  *(v33 + 16) = v5 & 1;
  v33[3] = v32;
}

void sub_10002503C(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1000EA6A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000252B0();
  v7 = v6;
  v9 = v8;
  sub_1000EA9C4();
  v10 = sub_1000EA784();
  v35 = v11;
  v36 = v10;
  v13 = v12;
  v34 = v14;

  sub_1000058EC(v5, v7, v9 & 1);

  type metadata accessor for CombinedTextView(0);
  sub_1000EBA44();
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
  sub_1000EA6D4();

  (*(v2 + 8))(v4, v1);
  v16 = v35;
  v15 = v36;
  v17 = sub_1000EA7D4();
  v19 = v18;
  v21 = v20;

  sub_1000058EC(v15, v16, v13 & 1);

  v22 = sub_1000EA794();
  v24 = v23;
  LOBYTE(v15) = v25;
  sub_1000058EC(v17, v19, v21 & 1);

  sub_1000EA664();
  v26 = sub_1000EA714();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1000058EC(v22, v24, v15 & 1);

  v33 = v37;
  *v37 = v26;
  v33[1] = v28;
  *(v33 + 16) = v30 & 1;
  v33[3] = v32;
}

uint64_t sub_1000252B0()
{
  sub_100002A10(&unk_100130560, &qword_1000F0998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F03E0;
  sub_100005898();

  *(inited + 32) = sub_1000EA814();
  *(inited + 40) = v2;
  *(inited + 48) = v3 & 1;
  *(inited + 56) = v4;
  if (qword_10012EBF8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v5 = qword_100145E00;
  v43._countAndFlagsBits = 0x80000001000FB8A0;
  v47._countAndFlagsBits = 8250;
  v47._object = 0xE200000000000000;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v6.super.isa = v5;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_1000E8464(v47, v48, v6, v49, 0xD000000000000066, v43);

  *(inited + 64) = sub_1000EA814();
  *(inited + 72) = v7;
  *(inited + 80) = v8 & 1;
  *(inited + 88) = v9;
  if (*(v0 + *(type metadata accessor for CombinedTextView(0) + 32) + 8))
  {

    sub_1000EAA24();
    v10 = sub_1000EA824();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_10003104C();
    inited = v17;
    *(v17 + 16) = 3;
    *(v17 + 96) = v10;
    *(v17 + 104) = v12;
    *(v17 + 112) = v14 & 1;
    *(v17 + 120) = v16;
  }

  v18 = sub_1000EA814();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(inited + 16);
  v45 = v25 + 1;
  if (v25 >= *(inited + 24) >> 1)
  {
    sub_10003104C();
    inited = v42;
  }

  v26 = 0;
  v27 = 0;
  v0 = 0;
  *(inited + 16) = v45;
  v28 = inited + 32 * v25;
  *(v28 + 32) = v18;
  *(v28 + 40) = v20;
  *(v28 + 48) = v22 & 1;
  *(v28 + 56) = v24;
  v29 = inited + 56;
  v30 = 0xE000000000000000;
  v44 = inited;
  while (v45 != v26)
  {
    if (v26 >= *(inited + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v46 = v26 + 1;
    v31 = *(v29 - 8);
    v33 = *(v29 - 24);
    v32 = *(v29 - 16);
    sub_10000673C(v33, v32, v31);

    v34 = sub_1000EA7B4();
    v35 = v27;
    v27 = v34;
    v36 = v30;
    v30 = v37;
    v38 = v0;
    v0 = v39;
    sub_1000058EC(v35, v36, v38 & 1);

    v40 = v32;
    inited = v44;
    sub_1000058EC(v33, v40, v31);

    v26 = v46;
    v29 += 32;
  }

  return v27;
}

uint64_t sub_100025658()
{
  sub_100026C9C();
  v1(0);
  sub_100026C1C();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

uint64_t sub_1000256AC()
{
  sub_100026C9C();
  v1(0);
  sub_100026C1C();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

uint64_t sub_100025700(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10002576C()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  sub_100026C64();
  sub_100006A04();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 36);
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v5 = *(v1 + 40);
  }

  v6 = sub_100019AF8(v5);

  return sub_100005B30(v6, v7, v8);
}

void sub_10002582C()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    sub_100026C80();
    sub_100006A04();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 36);
    }

    else
    {
      sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v4 = *(v0 + 40);
    }

    v5 = sub_100026C44(v4);

    sub_1000028A0(v5, v6, v7, v8);
  }
}

void sub_1000258D8(uint64_t a1)
{
  sub_1000259A4();
  if (v1 <= 0x3F)
  {
    sub_1000EBA54();
    if (v2 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000259A4()
{
  if (!qword_10012F778)
  {
    v0 = sub_1000EC364();
    if (!v1)
    {
      atomic_store(v0, &qword_10012F778);
    }
  }
}

uint64_t sub_100025A08()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  sub_100026C64();
  sub_100006A04();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 40);
  }

  else
  {
    sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    v5 = *(v1 + 44);
  }

  v6 = sub_100019AF8(v5);

  return sub_100005B30(v6, v7, v8);
}

void sub_100025AC8()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    sub_100026C80();
    sub_100006A04();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 40);
    }

    else
    {
      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v4 = *(v0 + 44);
    }

    v5 = sub_100026C44(v4);

    sub_1000028A0(v5, v6, v7, v8);
  }
}

void sub_100025B74(uint64_t a1)
{
  sub_1000259A4();
  if (v1 <= 0x3F)
  {
    sub_1000EBA54();
    if (v2 <= 0x3F)
    {
      sub_100025C40(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100025C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100025D10()
{
  sub_100002A10(&qword_100130540, &qword_1000F0808);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100025D90()
{
  result = qword_10012FF78;
  if (!qword_10012FF78)
  {
    sub_100002ABC(&qword_10012FF68, &qword_1000F0820);
    sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828, &protocol conformance descriptor for TupleView<A>);
    sub_1000221F8(&qword_10012FF88, type metadata accessor for CombinedTextView, &unk_1000F0944);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF78);
  }

  return result;
}

uint64_t sub_100025EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012FF98, &qword_1000F0838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100025F28()
{
  result = qword_10012FFC0;
  if (!qword_10012FFC0)
  {
    sub_100002ABC(&qword_10012FFA0, &qword_1000F0840);
    sub_100006988(&qword_10012FFC8, &qword_10012FF98, &qword_1000F0838, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFC0);
  }

  return result;
}

uint64_t sub_100025FE0()
{
  sub_100026C9C();
  sub_100002A10(v1, v2);
  sub_100026C1C();
  v3 = sub_100019AC0();
  v4(v3);
  return v0;
}

uint64_t sub_100026048()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  sub_100026C64();
  sub_100006A04();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 28);
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v5 = *(v1 + 40);
  }

  v6 = sub_100019AF8(v5);

  return sub_100005B30(v6, v7, v8);
}

void sub_100026108()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    sub_100026C80();
    sub_100006A04();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 28);
    }

    else
    {
      sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v4 = *(v0 + 40);
    }

    v5 = sub_100026C44(v4);

    sub_1000028A0(v5, v6, v7, v8);
  }
}

void sub_1000261B4(uint64_t a1)
{
  sub_1000EBA54();
  if (v1 <= 0x3F)
  {
    sub_1000259A4();
    if (v2 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100026298()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  sub_100026C64();
  sub_100006A04();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 32);
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v5 = *(v1 + 36);
  }

  v6 = sub_100019AF8(v5);

  return sub_100005B30(v6, v7, v8);
}

void sub_100026358()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    sub_100026C80();
    sub_100006A04();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 32);
    }

    else
    {
      sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v4 = *(v0 + 36);
    }

    v5 = sub_100026C44(v4);

    sub_1000028A0(v5, v6, v7, v8);
  }
}

void sub_100026404(uint64_t a1)
{
  sub_1000259A4();
  if (v1 <= 0x3F)
  {
    sub_1000EBA54();
    if (v2 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000264E0()
{
  sub_100026C54();
  if (v1)
  {
    return sub_100026C04();
  }

  sub_100026C64();
  v3 = sub_100019AF8(*(v0 + 20));

  return sub_100005B30(v3, v4, v5);
}

void sub_100026554()
{
  sub_100026C30();
  if (v1)
  {
    sub_100026CA8();
  }

  else
  {
    v2 = v0;
    sub_1000EBA54();
    v3 = sub_100026C44(*(v2 + 20));

    sub_1000028A0(v3, v4, v5, v6);
  }
}

uint64_t sub_1000265BC(uint64_t a1)
{
  result = sub_1000EBA54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002663C()
{
  result = qword_1001301B0;
  if (!qword_1001301B0)
  {
    sub_100002ABC(&qword_10012FF28, &qword_1000F07E8);
    sub_100002ABC(&qword_10012FF18, &qword_1000F07D8);
    sub_100006988(&qword_10012FF38, &qword_10012FF18, &qword_1000F07D8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000221F8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001301B0);
  }

  return result;
}

unint64_t sub_10002676C()
{
  result = qword_1001301B8;
  if (!qword_1001301B8)
  {
    sub_100002ABC(&qword_10012FFB0, &qword_1000F0850);
    sub_100002ABC(&qword_10012FFA0, &qword_1000F0840);
    sub_100025F28();
    swift_getOpaqueTypeConformance2();
    sub_1000221F8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001301B8);
  }

  return result;
}

unint64_t sub_1000268B8()
{
  result = qword_1001301F8;
  if (!qword_1001301F8)
  {
    sub_100002ABC(&qword_1001301F0, &qword_1000F09D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001301F8);
  }

  return result;
}

uint64_t sub_10002693C()
{
  sub_100026C9C();
  sub_100002A10(&qword_1001301E8, &qword_1000F09C8);
  sub_100026C1C();
  v1 = sub_100019AC0();
  v2(v1);
  return v0;
}

unint64_t sub_100026998()
{
  result = qword_100130208;
  if (!qword_100130208)
  {
    sub_100002ABC(&qword_1001301E8, &qword_1000F09C8);
    sub_100002ABC(&qword_1001301F0, &qword_1000F09D0);
    sub_1000268B8();
    swift_getOpaqueTypeConformance2();
    sub_1000221F8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130208);
  }

  return result;
}

uint64_t sub_100026A90()
{
  sub_100026C9C();
  sub_100002A10(&qword_1001301D8, &qword_1000F09B8);
  sub_100026C1C();
  v1 = sub_100019AC0();
  v2(v1);
  return v0;
}

unint64_t sub_100026AFC()
{
  result = qword_100130228;
  if (!qword_100130228)
  {
    sub_100002ABC(&qword_1001301D8, &qword_1000F09B8);
    sub_100002ABC(&qword_1001301C8, &qword_1000F09A8);
    sub_100006988(&qword_100130200, &qword_1001301C8, &qword_1000F09A8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100026998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130228);
  }

  return result;
}

uint64_t sub_100026C04()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100026C64()
{

  return sub_1000EBA54();
}

uint64_t sub_100026C80()
{

  return sub_1000EBA54();
}

uint64_t sub_100026CB4(uint64_t a1, char *a2, char a3, char a4)
{
  v33 = a2;
  v36 = a1;
  v8 = sub_100002A10(&qword_100130308, &qword_1000F0A38);
  __chkstk_darwin(v8 - 8);
  v38 = &v33 - v9;
  v10 = sub_1000EA3B4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v34 = &v33 - v16;
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  v19 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v35 = sub_1000EBC44();
  v37 = *(v35 - 8);
  (*(v37 + 16))(v4 + v19, a1, v35);
  *(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize) = a3;
  v20 = *(v11 + 16);
  v21 = v33;
  v20(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory, v33, v10);
  *(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_showsWidgetBackground) = a4;
  v22 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  if (a3)
  {
    v22 = &enum case for ContentSizeCategory.accessibilityMedium(_:);
  }

  (*(v11 + 104))(v18, *v22, v10);
  v23 = (v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_maxSupportedSizeCategory);
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_maxSupportedSizeCategory, v18, v10);
  v20(v14, v23, v10);
  sub_1000CD388();
  v25 = v24;
  v26 = *(v11 + 8);
  v26(v14, v10);
  if (v25)
  {
    v27 = v23;
  }

  else
  {
    v27 = v21;
  }

  v28 = v34;
  v20(v34, v27, v10);
  v29 = v38;
  v20(v38, v28, v10);
  sub_1000028A0(v29, 0, 1, v10);
  v30 = sub_1000EC304();
  v31 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v30];

  v26(v21, v10);
  (*(v37 + 8))(v36, v35);
  v26(v28, v10);
  *(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_traitCollection) = v31;
  return v4;
}

uint64_t sub_100027034()
{
  v1 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v2 = sub_1000EBC44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory;
  v4 = sub_1000EA3B4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_maxSupportedSizeCategory, v4);

  return v0;
}

uint64_t sub_100027114()
{
  sub_100027034();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ViewAttributesFactory(uint64_t a1)
{
  result = qword_100130258;
  if (!qword_100130258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000271C0(uint64_t a1)
{
  result = sub_1000EBC44();
  if (v2 <= 0x3F)
  {
    result = sub_1000EA3B4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000272C0()
{
  result = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager);
  if (result)
  {
    return [result _limitsPrecision];
  }

  __break(1u);
  return result;
}

id sub_1000272F4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue];
  objc_allocWithZone(CLLocationManager);
  v3 = v2;
  v4 = a1;
  result = sub_100030880(0xD000000000000011, 0x80000001000FBC10, a1, v2, v5);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager;
  v8 = *&v4[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager];
  *&v4[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager] = result;
  v9 = result;

  [v9 setDistanceFilter:500.0];
  result = *&v4[v7];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result setDesiredAccuracy:kCLLocationAccuracyKilometer];
}

void sub_1000273E4(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  sub_100009210(v7);
  sub_100009204();
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  if (sub_1000275C4(a1))
  {
    if (sub_100028DF8())
    {
      sub_1000326DC();

      sub_10002907C(v11, v12, v13);
    }

    else
    {
      sub_1000EC084();
      sub_10000D52C();
      sub_1000028A0(v20, v21, v22, v23);
      sub_100032770();
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v3;
      v24[5] = a2;
      v24[6] = a3;
      v25 = v3;

      sub_100028B14(0, 0, v10, &unk_1000F0C80, v24);
    }
  }

  else
  {
    v14 = [a1 location];
    if (v14 && (v15 = v14, v27 = [v14 geolocation], v15, v27))
    {
      sub_100029434(v27, a2, a3);
      v16 = v27;
    }

    else
    {
      sub_1000326DC();

      sub_100029A34(v17, v18, v19);
    }
  }
}

uint64_t sub_1000275C4(void *a1)
{
  v2 = [a1 location];
  if (!v2)
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v11 = sub_1000E9F64();
    sub_100008CB8(v11, qword_100145BC8);
    v12 = a1;
    v3 = sub_1000E9F44();
    v13 = sub_1000EC1B4();

    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      type metadata accessor for WeatherIntent();
      v16 = v12;
      v17 = sub_1000EBEF4();
      v19 = sub_1000E2E18(v17, v18, &v28);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v3, v13, "Treating nil location as current location on intent: %{private,mask.hash}s", v14, 0x16u);
      sub_100009068(v15);
    }

    goto LABEL_23;
  }

  v3 = v2;
  v4 = sub_1000E3C24(v3);
  v6 = v5;
  v7 = sub_1000E9974();
  if (!v6)
  {

    goto LABEL_14;
  }

  if (v4 != v7 || v6 != v8)
  {
    v10 = sub_1000EC5D4();

    if (v10)
    {
LABEL_23:

      return 1;
    }

LABEL_14:
    v20 = sub_100031DF4(v3, &selRef_identifier);
    v22 = v21;
    v23 = sub_1000E9964();
    if (!v22)
    {

      return 0;
    }

    if (v20 != v23 || v22 != v24)
    {
      v26 = sub_1000EC5D4();

      return v26 & 1;
    }

    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_100027868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v7 = sub_1000E9A84();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100027970, 0, 0);
}

uint64_t sub_100027970()
{
  sub_100031CF8(0, &qword_100130448, NSUserDefaults_ptr);
  v1 = sub_1000EC1C4();
  v2 = sub_1000EBE64();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C(&qword_10012EB20);
    }

    v4 = sub_1000E9F64();
    sub_1000326C4(v4, qword_100145BC8);
    v5 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_1000091BC();
      sub_1000091E0(v7);
      sub_10003270C(&_mh_execute_header, v5, v2, "No authorization - returning permission denied");
      sub_100009118();
    }

    v8 = v0[7];
    v9 = v0[5];
    v10 = v0[3];

    sub_10000D52C();
    sub_1000028A0(v11, v12, v13, v8);
    v10(v9, 4);
    sub_100032054(v9, &qword_100130440, &qword_1000F0BE0);

    sub_1000324E4();

    return v14();
  }

  else
  {
    swift_task_alloc();
    sub_1000325BC();
    v0[10] = v16;
    *v16 = v17;
    v16[1] = sub_100027B88;

    return sub_100027EFC();
  }
}

uint64_t sub_100027B88()
{
  sub_100032530();
  sub_1000325B0();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000326AC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100027C70()
{
  sub_1000327A8();
  v2 = v0[6];
  v1 = v0[7];
  if (sub_100005B30(v2, 1, v1) == 1)
  {
    sub_100032054(v2, &qword_100130440, &qword_1000F0BE0);
    if (qword_10012EB20 != -1)
    {
      sub_10003244C(&qword_10012EB20);
    }

    v3 = sub_1000E9F64();
    sub_1000326C4(v3, qword_100145BC8);
    v4 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_1000091BC();
      sub_1000091E0(v6);
      sub_10003270C(&_mh_execute_header, v4, v1, "No authorization - returning permission denied");
      sub_100009118();
    }

    v7 = v0[7];
    v8 = v0[5];
    v9 = v0[3];

    sub_10000D52C();
    sub_1000028A0(v10, v11, v12, v7);
    v9(v8, 4);
    sub_100032054(v8, &qword_100130440, &qword_1000F0BE0);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v2, v1);
    if (qword_10012EB20 != -1)
    {
      sub_10003244C(&qword_10012EB20);
    }

    v13 = sub_1000E9F64();
    sub_1000326C4(v13, qword_100145BC8);
    v14 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_1000091BC();
      sub_1000091E0(v16);
      sub_10003270C(&_mh_execute_header, v14, v1, "No authorization - returning default location");
      sub_100009118();
    }

    v17 = v0[7];
    v18 = v0[5];
    v19 = v0[3];

    sub_10003266C();
    v20();
    sub_10000D554();
    sub_1000028A0(v21, v22, v23, v17);
    v19(v18, 3);
    sub_100032054(v18, &qword_100130440, &qword_1000F0BE0);
    v24 = sub_100032730();
    v25(v24);
  }

  sub_1000324E4();

  return v26();
}

uint64_t sub_100027EFC()
{
  sub_100032530();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v3);
  v1[5] = swift_task_alloc();
  v4 = sub_1000E9A84();
  v1[6] = v4;
  sub_100032590(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100027FF8()
{
  sub_100032604();
  if (qword_10012EB20 != -1)
  {
    sub_10003244C(&qword_10012EB20);
  }

  v1 = sub_1000E9F64();
  v0[11] = sub_100008CB8(v1, qword_100145BC8);
  v2 = sub_1000E9F44();
  sub_1000EC1B4();
  sub_100032584();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1000091BC();
    sub_1000091E0(v4);
    sub_100032574();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100009118();
  }

  sub_1000E9264();
  v10 = sub_1000E92D4();

  v11 = v0[4];
  if (v10)
  {
    sub_1000324F0((v11 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_defaultLocationManager));
    swift_task_alloc();
    sub_1000325BC();
    v0[16] = v12;
    *v12 = v13;
    v12[1] = sub_1000289BC;
    sub_10003266C();

    return dispatch thunk of DefaultLocationManagerType.defaultLocation.getter(v14);
  }

  else
  {
    sub_1000324F0((v11 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_savedLocationsReader));
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_1000281C8;
    v16 = sub_100032730();

    return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v16);
  }
}

uint64_t sub_1000281C8()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  sub_1000326AC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000282B8(uint64_t a1)
{
  v59 = v1;
  v2 = v1[13];
  if (!v2)
  {
    v17 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_1000091BC();
      sub_1000091E0(v19);
      sub_100032574();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_100009118();
    }

    v25 = v1[4];

    sub_1000324F0((v25 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_defaultLocationManager));
    swift_task_alloc();
    sub_1000325BC();
    v1[15] = v14;
    *v14 = v26;
    v16 = sub_100028864;
    goto LABEL_9;
  }

  v1[2] = v2;
  v4 = v1[5];
  v3 = v1[6];
  sub_100002A10(&qword_100130518, &qword_1000F0CA8);
  sub_100031CA4(&qword_100130520, &qword_100130518, &qword_1000F0CA8);
  sub_1000EBF94();

  if (sub_100005B30(v4, 1, v3) == 1)
  {
    sub_100032054(v1[5], &qword_100130440, &qword_1000F0BE0);
    v5 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_1000091BC();
      sub_1000091E0(v7);
      sub_100032574();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100009118();
    }

    v13 = v1[4];

    sub_1000324F0((v13 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_defaultLocationManager));
    swift_task_alloc();
    sub_1000325BC();
    v1[14] = v14;
    *v14 = v15;
    v16 = sub_10002870C;
LABEL_9:
    v14[1] = v16;
    sub_10003266C();

    return dispatch thunk of DefaultLocationManagerType.defaultLocation.getter(v27);
  }

  v29 = v1[9];
  v28 = v1[10];
  v30 = v1[6];
  v31 = v1[7];
  v32 = *(v31 + 32);
  v32(v28, v1[5], v30);
  v33 = *(v31 + 16);
  v33(v29, v28, v30);
  v34 = sub_1000E9F44();
  sub_1000EC1B4();
  sub_100032584();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v1[9];
  if (v36)
  {
    v56 = v28;
    v38 = v1[7];
    v57 = v32;
    v39 = v1[6];
    v40 = sub_1000327F4();
    v55 = sub_10000923C();
    v58 = v55;
    sub_10003247C(7.2225e-34);
    v41 = sub_10003277C();
    (v33)(v41);
    v42 = sub_1000EBEF4();
    v44 = v43;
    v45 = v39;
    v32 = v57;
    (*(v38 + 8))(v37, v45);
    v46 = sub_1000E2E18(v42, v44, &v58);

    *(v40 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v34, v56, "Computed a default location. Locations=%{private,mask.hash}s", v40, 0x16u);
    sub_100009068(v55);
    sub_100009194(v55);
    sub_100009118();
  }

  else
  {
    v47 = v1[6];
    v48 = v1[7];

    (*(v48 + 8))(v37, v47);
  }

  v49 = v1[6];
  v32(v1[3], v1[10], v49);
  sub_10000D554();
  sub_1000028A0(v50, v51, v52, v49);
  sub_10003273C();

  sub_1000324E4();

  return v53();
}

uint64_t sub_10002870C()
{
  sub_100032604();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000326FC();

  return v3();
}

uint64_t sub_100028864()
{
  sub_100032604();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000326FC();

  return v3();
}

uint64_t sub_1000289BC()
{
  sub_100032604();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000326FC();

  return v3();
}

uint64_t sub_100028B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100031FF0(a3, v24 - v10, &qword_100130510, &qword_1000F0C70);
  v12 = sub_1000EC084();
  v13 = sub_100005B30(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100032054(v11, &qword_100130510, &qword_1000F0C70);
  }

  else
  {
    sub_1000EC074();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000EC064();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000EBF04() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100032054(a3, &qword_100130510, &qword_1000F0C70);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100032054(a3, &qword_100130510, &qword_1000F0C70);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100028DF8()
{
  if (qword_10012EB20 != -1)
  {
    sub_10003244C(&qword_10012EB20);
  }

  v1 = sub_1000E9F64();
  sub_1000326C4(v1, qword_100145BC8);
  v2 = sub_1000E9F44();
  v3 = sub_1000EC1B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1000091BC();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "About to retrieve our location permissions from CoreLocation", v4, 2u);
    sub_100009194(v4);
  }

  v5 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager;
  v6 = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager);
  if (!v6)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    JUMPOUT(0x100029068);
  }

  switch([v6 _authorizationStatus])
  {
    case 0u:
      v7 = sub_1000E9F44();
      v8 = sub_1000EC1B4();
      if (!sub_1000325C8(v8))
      {
        goto LABEL_26;
      }

      v9 = sub_1000091BC();
      sub_100032610(v9);
      v12 = "Location Permissions - notDetermined";
      goto LABEL_24;
    case 1u:
      v7 = sub_1000E9F44();
      v26 = sub_1000EC1B4();
      if (!sub_1000325C8(v26))
      {
        goto LABEL_26;
      }

      v27 = sub_1000091BC();
      sub_100032610(v27);
      v12 = "Location Permissions - restricted";
      goto LABEL_24;
    case 2u:
      v7 = sub_1000E9F44();
      v21 = sub_1000EC1B4();
      if (!sub_1000325C8(v21))
      {
        goto LABEL_26;
      }

      v22 = sub_1000091BC();
      sub_100032610(v22);
      v12 = "Location Permissions - denied";
      goto LABEL_24;
    case 3u:
      v7 = sub_1000E9F44();
      v23 = sub_1000EC1B4();
      if (!sub_1000325C8(v23))
      {
        goto LABEL_21;
      }

      v24 = sub_1000091BC();
      sub_100032610(v24);
      v20 = "Location Permissions - always";
      goto LABEL_17;
    case 4u:
      v13 = *(v0 + v5);
      if (!v13)
      {
        goto LABEL_30;
      }

      v14 = [v13 isAuthorizedForWidgetUpdates];
      v7 = sub_1000E9F44();
      v15 = sub_1000EC1B4();
      v16 = sub_1000325C8(v15);
      if (v14)
      {
        if (!v16)
        {
LABEL_21:
          v25 = 1;
          goto LABEL_27;
        }

        v17 = sub_1000091BC();
        sub_100032610(v17);
        v20 = "Location Permissions - whenInUse";
LABEL_17:
        sub_1000327D4(&_mh_execute_header, v18, v19, v20);
        v25 = 1;
        goto LABEL_25;
      }

      if (v16)
      {
        v28 = sub_1000091BC();
        sub_100032610(v28);
        v12 = "Location Permissions - whenInUse for app only";
LABEL_24:
        sub_1000327D4(&_mh_execute_header, v10, v11, v12);
        v25 = 0;
LABEL_25:
        sub_100009194(v0);
        goto LABEL_27;
      }

LABEL_26:
      v25 = 0;
LABEL_27:

      return v25;
    default:
      return 0;
  }
}

uint64_t sub_10002907C(int a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v26 = a1;
  v28 = sub_1000E8604();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v6 = sub_1000E9F64();
  sub_100008CB8(v6, qword_100145BC8);
  v7 = sub_1000E9F44();
  v8 = sub_1000EC1B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "About to handle current location update request", v9, 2u);
  }

  sub_100031CF8(0, &qword_100130448, NSUserDefaults_ptr);
  v10 = sub_1000EC1C4();
  v11 = sub_1000EBE64();
  v12 = [v10 BOOLForKey:v11];

  if ((v12 & 1) == 0)
  {
    v13 = sub_1000E9F44();
    v14 = sub_1000EC1B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "First time being location authorized - setting key", v15, 2u);
    }

    v16 = sub_1000EC1C4();
    v29 = 1;
    sub_1000EC1E4();
  }

  v17 = sub_1000E9F44();
  v18 = sub_1000EC1B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting request to fetch location from CoreLocation", v19, 2u);
  }

  sub_1000E85B4();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = v27;
  *(v21 + 40) = v26 & 1;

  sub_10002B6B0(sub_10003094C, v21);

  (*(v3 + 8))(v5, v28);
}

void sub_100029434(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v57 - v7);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E9F64();
  sub_100008CB8(v9, qword_100145BC8);
  v10 = a1;
  v11 = sub_1000E9F44();
  v12 = sub_1000EC1B4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v57 = a3;
    v58 = v8;
    v15 = a2;
    v16 = v14;
    v60[0] = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v61 = v10;
    sub_100031CF8(0, &qword_100130528, CLPlacemark_ptr);
    v17 = v10;
    v18 = sub_1000EBEF4();
    v20 = sub_1000E2E18(v18, v19, v60);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "About to handle old intent. placeMark=%{private,mask.hash}s", v13, 0x16u);
    sub_100009068(v16);
    a2 = v15;
    a3 = v57;
    v8 = v58;
  }

  v21 = [v10 location];
  if (v21 && (v22 = v21, [v21 coordinate], v24 = v23, v26 = v25, v22, v27 = sub_100031DF4(v10, &selRef_name), v28))
  {
    v29 = v27;
    v30 = v28;
    v31 = sub_1000E9F44();
    v32 = sub_1000EC1B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61 = v58;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      v60[0] = v24;
      v60[1] = v26;
      type metadata accessor for CLLocationCoordinate2D(0);
      v34 = sub_1000EBEF4();
      v36 = v30;
      v37 = v29;
      v38 = a3;
      v39 = a2;
      v40 = sub_1000E2E18(v34, v35, &v61);

      *(v33 + 14) = v40;
      a2 = v39;
      a3 = v38;
      v29 = v37;
      v30 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "Got a coordinate. Now performing a reverse geocode. coordinate=%{private,mask.hash}s", v33, 0x16u);
      sub_100009068(v58);
    }

    sub_100008DA8((v59 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager), *(v59 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager + 24));
    sub_1000E95A4();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v42[2] = v10;
    v42[3] = v41;
    v42[4] = a2;
    v42[5] = a3;
    v43 = v10;

    v44 = sub_1000E9C44();
    sub_1000E9C64();

    v45 = swift_allocObject();
    v45[2] = v29;
    v45[3] = v30;
    v45[4] = a2;
    v45[5] = a3;

    v46 = sub_1000E9C44();
    sub_1000E9C84();
  }

  else
  {
    v47 = v10;
    v48 = sub_1000E9F44();
    v49 = sub_1000EC194();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v60[0] = v51;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      v61 = v47;
      sub_100031CF8(0, &qword_100130528, CLPlacemark_ptr);
      v52 = v47;
      v53 = sub_1000EBEF4();
      v55 = sub_1000E2E18(v53, v54, v60);

      *(v50 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Can't parse placemark from intent: %{private,mask.hash}s", v50, 0x16u);
      sub_100009068(v51);
    }

    v56 = sub_1000E9A84();
    sub_1000028A0(v8, 1, 1, v56);
    a2(v8, 0);
    sub_100032054(v8, &qword_100130440, &qword_1000F0BE0);
  }
}

void sub_100029A34(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E9F64();
  sub_100008CB8(v9, qword_100145BC8);
  v10 = a1;
  v11 = sub_1000E9F44();
  v12 = sub_1000EC1B4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v51 = v8;
    v15 = a3;
    v16 = a2;
    v17 = v14;
    v53 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v55 = v10;
    type metadata accessor for WeatherIntent();
    v18 = v10;
    v19 = sub_1000EBEF4();
    v21 = sub_1000E2E18(v19, v20, &v53);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "About to handle new intent: %{private,mask.hash}s", v13, 0x16u);
    sub_100009068(v17);
    a2 = v16;
    a3 = v15;
    v8 = v51;
  }

  v22 = [v10 location];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 displayString];

    v25 = sub_1000EBE84();
    v27 = v26;

    v28 = sub_1000E9F44();
    v29 = sub_1000EC1B4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v54 = v27;
      v55 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v53 = v25;

      v32 = sub_1000EBEF4();
      v34 = sub_1000E2E18(v32, v33, &v55);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Got a name from the intent. Now performing a local search. name=%{private,mask.hash}s", v30, 0x16u);
      sub_100009068(v31);
    }

    sub_100008DA8((v52 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_localSearchManager), *(v52 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_localSearchManager + 24));
    LocalSearchRequestManager.performLocalSearch(with:)(v25, v27);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = a2;
    v36[4] = a3;

    v37 = sub_1000E9C44();
    sub_1000E9C64();

    v38 = swift_allocObject();
    v38[2] = v25;
    v38[3] = v27;
    v38[4] = a2;
    v38[5] = a3;

    v39 = sub_1000E9C44();
    sub_1000E9C84();
  }

  else
  {
    v40 = v10;
    v41 = sub_1000E9F44();
    v42 = sub_1000EC194();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      v53 = sub_1000E3C94(v40);
      v54 = v45;
      sub_100002A10(&qword_100130540, &qword_1000F0808);
      v46 = sub_1000EBEF4();
      v48 = sub_1000E2E18(v46, v47, &v55);

      *(v43 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Aborting: no display string on intent. intent.identifier=%{private,mask.hash}s", v43, 0x16u);
      sub_100009068(v44);
    }

    v49 = sub_1000E9A84();
    sub_1000028A0(v8, 1, 1, v49);
    a2(v8, 0);
    sub_100032054(v8, &qword_100130440, &qword_1000F0BE0);
  }
}

void sub_100029FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v34);
  sub_100009204();
  __chkstk_darwin(v35);
  v37 = &a9 - v36;
  sub_100032770();
  v38 = swift_allocObject();
  v38[2] = v31;
  v38[3] = v29;
  v38[4] = v27;
  v38[5] = v25;
  v38[6] = v23;

  if (sub_100028DF8())
  {
    sub_10002907C(v33 & 1, sub_100031988, v38);
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C(&qword_10012EB20);
    }

    v39 = sub_1000E9F64();
    sub_1000326C4(v39, qword_100145BC8);
    v40 = sub_1000E9F44();
    v41 = sub_1000EC1B4();
    if (sub_1000091EC(v41))
    {
      v42 = sub_1000091BC();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "No authorization - returning permission denied", v42, 2u);
      sub_100009194(v42);
    }

    sub_1000E9A84();
    sub_10000D52C();
    sub_1000028A0(v43, v44, v45, v46);
    sub_1000DBA40();
    sub_100032054(v37, &qword_100130440, &qword_1000F0BE0);
  }

  sub_100006A20();
}

uint64_t sub_10002A1F4(char a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v4);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  if (sub_100028DF8())
  {
    sub_1000326DC();

    return sub_10002907C(v6, v7, v8);
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C(&qword_10012EB20);
    }

    v10 = sub_1000E9F64();
    sub_1000326C4(v10, qword_100145BC8);
    v11 = sub_1000E9F44();
    v12 = sub_1000EC1B4();
    if (sub_1000091EC(v12))
    {
      v13 = sub_1000091BC();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No authorization - returning permission denied", v13, 2u);
      sub_100009194(v13);
    }

    sub_1000E9A84();
    sub_10000D52C();
    sub_1000028A0(v14, v15, v16, v17);
    a2(v2, 4);
    return sub_100032054(v2, &qword_100130440, &qword_1000F0BE0);
  }
}

id sub_10002A3AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002A54C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, char a6)
{
  v46 = a4;
  v47 = a5;
  v9 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1000E8784();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_1000EAC94();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  if ((a2 & 0x100) != 0)
  {
    v48 = a1;
    sub_100031734();
    swift_willThrowTypedImpl();
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v35 = sub_1000E9F64();
    sub_100008CB8(v35, qword_100145BC8);
    v36 = sub_1000E9F44();
    v37 = sub_1000EC194();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error fetching the current location from CoreLocation. Returning location=nil", v38, 2u);
    }

    v39 = sub_1000E9A84();
    sub_1000028A0(v15, 1, 1, v39);
    v46(v15, 0);

    goto LABEL_19;
  }

  sub_100031894(a1, a2, 0);
  if ((a6 & 1) == 0)
  {
    [a1 coordinate];
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v40 = sub_1000E9F64();
    sub_100008CB8(v40, qword_100145BC8);
    v41 = sub_1000E9F44();
    v42 = sub_1000EC1B4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Got a location from CoreLocation. shouldReverseGeocode=false. Returning a nameless location with current timezone.", v43, 2u);
    }

    sub_1000E9964();
    sub_1000E8774();
    v44 = sub_1000E8604();
    sub_1000028A0(v11, 1, 1, v44);
    sub_1000E9A14();
    v45 = sub_1000E9A84();
    sub_1000028A0(v15, 0, 1, v45);
    v46(v15, a2);
    sub_1000309CC(a1, a2, 0);

    sub_1000309CC(a1, a2, 0);
LABEL_19:
    sub_100032054(v15, &qword_100130440, &qword_1000F0BE0);
    return;
  }

  v22 = qword_10012EB20;
  v23 = a1;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = sub_1000E9F64();
  sub_100008CB8(v24, qword_100145BC8);
  v25 = sub_1000E9F44();
  v26 = sub_1000EC1B4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Got a location from CoreLocation. shouldReverseGeocode=true, so about to reverse geocode", v27, 2u);
  }

  sub_100008DA8(&v21[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager], *&v21[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager + 24]);
  [v23 coordinate];
  sub_1000EAC84();
  sub_1000E95B4();
  (*(v17 + 8))(v19, v16);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v31 = v46;
  v30 = v47;
  *(v29 + 16) = v28;
  *(v29 + 24) = v31;
  *(v29 + 32) = v30;
  *(v29 + 40) = a2;

  v32 = sub_1000E9C44();
  sub_1000E9C64();

  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;
  *(v33 + 25) = 0;
  *(v33 + 32) = v23;
  *(v33 + 40) = v31;
  *(v33 + 48) = v30;
  *(v33 + 56) = a2;
  sub_100031894(a1, a2, 0);
  sub_100031894(a1, a2, 0);

  v34 = sub_1000E9C44();
  sub_1000E9C84();

  sub_1000309CC(a1, a2, 0);
  sub_1000309CC(a1, a2, 0);
}

uint64_t sub_10002AC78(char *a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, unsigned int a5)
{
  v57 = a5;
  v58 = a4;
  v59 = a3;
  v53 = a1;
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v6 - 8);
  v56 = &v48 - v7;
  v8 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v8 - 8);
  v52 = (&v48 - v9);
  v10 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = sub_1000E99A4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_1001304D0, &unk_1000F0C30);
  __chkstk_darwin(v17 - 8);
  v19 = &v48 - v18;
  v60 = sub_1000E9A84();
  v55 = *(v60 - 8);
  v20 = __chkstk_darwin(v60);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v54 = &v48 - v24;
  __chkstk_darwin(v23);
  v26 = &v48 - v25;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v49 = v22;
    v50 = result;
    v51 = v5;
    sub_1000E99C4();
    sub_1000E9964();
    sub_1000E9994();

    (*(v14 + 8))(v16, v13);
    sub_1000028A0(v19, 0, 1, v13);
    v28 = sub_1000E8784();
    sub_1000028A0(v12, 1, 1, v28);
    v29 = sub_1000E8604();
    v30 = v52;
    sub_1000028A0(v52, 1, 1, v29);
    sub_1000E9A54();
    sub_100032054(v30, &qword_10012F048, &qword_1000EEF30);
    sub_100032054(v12, &qword_1001304C8, &qword_1000F3D70);
    sub_100032054(v19, &qword_1001304D0, &unk_1000F0C30);
    v31 = v26;
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v32 = sub_1000E9F64();
    sub_100008CB8(v32, qword_100145BC8);
    v33 = v54;
    v34 = v55;
    v35 = *(v55 + 16);
    v36 = v60;
    v35(v54, v31, v60);
    v37 = sub_1000E9F44();
    v38 = sub_1000EC1B4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v31;
      v61 = v52;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v35(v49, v33, v36);
      v40 = sub_1000EBEF4();
      v41 = v33;
      v42 = v40;
      v44 = v43;
      v55 = *(v34 + 8);
      (v55)(v41, v60);
      v45 = sub_1000E2E18(v42, v44, &v61);
      v36 = v60;

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "Successfully performed a reverse geocode. location=%{private,mask.hash}s. Overriding location.identifier to current", v39, 0x16u);
      sub_100009068(v52);
      v31 = v53;
    }

    else
    {

      v55 = *(v34 + 8);
      (v55)(v33, v36);
    }

    v46 = v50;
    sub_100008DA8((v50 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(v50 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
    sub_1000E98B4();
    v47 = v56;
    v35(v56, v31, v36);
    sub_1000028A0(v47, 0, 1, v36);
    v59(v47, v57);

    sub_100032054(v47, &qword_100130440, &qword_1000F0BE0);
    return (v55)(v31, v36);
  }

  return result;
}

uint64_t sub_10002B314(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6, unsigned int a7)
{
  v34 = a7;
  v33 = a4;
  v11 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - v12;
  v14 = sub_1000E8784();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v15 - 8);
  v17 = v31 - v16;
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v18 = sub_1000E9F64();
  sub_100008CB8(v18, qword_100145BC8);
  sub_100031894(a2, a3, BYTE1(a3) & 1);
  v19 = sub_1000E9F44();
  v20 = sub_1000EC194();
  sub_1000309CC(a2, a3, BYTE1(a3) & 1);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[1] = a6;
    v24 = v23;
    v37 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v35 = a2;
    v36 = a3 & 0x1FF;
    sub_100031894(a2, a3, BYTE1(a3) & 1);
    sub_100002A10(&qword_1001304C0, &unk_1000F0C20);
    v25 = sub_1000EBEF4();
    v27 = sub_1000E2E18(v25, v26, &v37);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Error performing a reverse geocode. location=%{private,mask.hash}s. Returning a nameless location with current timezone.", v22, 0x16u);
    sub_100009068(v24);

    a5 = v32;
  }

  [v33 coordinate];
  sub_1000E9964();
  sub_1000E8774();
  v28 = sub_1000E8604();
  sub_1000028A0(v13, 1, 1, v28);
  sub_1000E9A14();
  v29 = sub_1000E9A84();
  sub_1000028A0(v17, 0, 1, v29);
  a5(v17, v34);
  return sub_100032054(v17, &qword_100130440, &qword_1000F0BE0);
}

void sub_10002B6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000EAC54();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EAC94();
  v21 = *(v9 - 8);
  v22 = v9;
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v12 = sub_1000E9F64();
  sub_100008CB8(v12, qword_100145BC8);
  v13 = sub_1000E9F44();
  v14 = sub_1000EC1B4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "About to request location updates from CoreLocation", v15, 2u);
  }

  v16 = *&v3[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager];
  if (v16)
  {
    v17 = swift_allocObject();
    v17[2] = v3;
    v17[3] = v16;
    v17[4] = a1;
    v17[5] = a2;
    aBlock[4] = sub_1000309A8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032434;
    aBlock[3] = &unk_100125DB8;
    v18 = _Block_copy(aBlock);
    v19 = v16;
    v20 = v3;

    sub_1000EAC64();
    v24 = &_swiftEmptyArrayStorage;
    sub_1000316E4(&qword_100130450, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002A10(&qword_100130458, &qword_1000F0BE8);
    sub_100031CA4(&qword_100130460, &qword_100130458, &qword_1000F0BE8);
    sub_1000EC3C4();
    sub_1000EC264();
    _Block_release(v18);

    (*(v23 + 8))(v8, v6);
    (*(v21 + 8))(v11, v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002BA58(void (*a1)(char *, char *, uint64_t), void *a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v92 = a5;
  v90 = a3;
  v91 = a4;
  v86 = a1;
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v6 - 8);
  v83 = &v78 - v7;
  v8 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  __chkstk_darwin(v8 - 8);
  v85 = &v78 - v9;
  v10 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v78 - v11;
  v13 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  __chkstk_darwin(v13 - 8);
  v15 = &v78 - v14;
  v16 = sub_1000E99A4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100002A10(&qword_1001304D0, &unk_1000F0C30);
  __chkstk_darwin(v20 - 8);
  v22 = &v78 - v21;
  v88 = sub_1000E9A84();
  v94 = *(v88 - 8);
  v23 = __chkstk_darwin(v88);
  v93 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v89 = &v78 - v26;
  v27 = __chkstk_darwin(v25);
  v87 = &v78 - v28;
  v84 = v29;
  __chkstk_darwin(v27);
  v31 = &v78 - v30;
  sub_1000E99C4();
  sub_100031DF4(a2, &selRef_name);
  sub_1000E9994();
  v32 = v31;

  (*(v17 + 8))(v19, v16);
  sub_1000028A0(v22, 0, 1, v16);
  v33 = sub_1000E8784();
  sub_1000028A0(v15, 1, 1, v33);
  v34 = sub_1000E8604();
  sub_1000028A0(v12, 1, 1, v34);
  sub_1000E9A54();
  sub_100032054(v12, &qword_10012F048, &qword_1000EEF30);
  sub_100032054(v15, &qword_1001304C8, &qword_1000F3D70);
  sub_100032054(v22, &qword_1001304D0, &unk_1000F0C30);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v35 = sub_1000E9F64();
  v36 = sub_100008CB8(v35, qword_100145BC8);
  v37 = v94;
  v38 = *(v94 + 16);
  v40 = v87;
  v39 = v88;
  v38(v87, v31, v88);
  v41 = v89;
  v38(v89, v32, v39);
  v82 = v36;
  v42 = sub_1000E9F44();
  v43 = sub_1000EC1B4();
  v44 = os_log_type_enabled(v42, v43);
  v86 = v38;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v79 = v43;
    v46 = v37;
    v47 = v45;
    v80 = swift_slowAlloc();
    v97 = v80;
    *v47 = 141558787;
    *(v47 + 4) = 1752392040;
    *(v47 + 12) = 2081;
    v78 = v42;
    v38(v93, v40, v39);
    v48 = sub_1000EBEF4();
    v81 = v32;
    v50 = v49;
    v51 = *(v46 + 8);
    v51(v40, v39);
    v52 = sub_1000E2E18(v48, v50, &v97);

    *(v47 + 14) = v52;
    *(v47 + 22) = 2160;
    *(v47 + 24) = 1752392040;
    *(v47 + 32) = 2081;
    v95 = sub_1000E9A44();
    v96 = v53;
    v54 = sub_1000EBEF4();
    v56 = v55;
    v89 = v51;
    v51(v41, v39);
    v57 = sub_1000E2E18(v54, v56, &v97);
    v32 = v81;

    *(v47 + 34) = v57;
    v58 = v78;
    _os_log_impl(&_mh_execute_header, v78, v79, "Successfully performed a reverse geocode. location=%{private,mask.hash}s, name=%{private,mask.hash}s", v47, 0x2Au);
    swift_arrayDestroy();

    v59 = v94;
  }

  else
  {

    v60 = *(v37 + 8);
    v60(v41, v39);
    v89 = v60;
    v60(v40, v39);
    v59 = v37;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v62 = Strong;
    v63 = sub_1000EC084();
    v64 = v85;
    sub_1000028A0(v85, 1, 1, v63);
    v65 = v93;
    v86(v93, v32, v39);
    v66 = v32;
    v67 = (*(v59 + 80) + 40) & ~*(v59 + 80);
    v68 = (v84 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    *(v69 + 2) = 0;
    *(v69 + 3) = 0;
    *(v69 + 4) = v62;
    (*(v59 + 32))(&v69[v67], v65, v39);
    v70 = &v69[v68];
    v71 = v92;
    *v70 = v91;
    *(v70 + 1) = v71;
    v72 = v62;
    v32 = v66;

    sub_100028B14(0, 0, v64, &unk_1000F0CB8, v69);
  }

  else
  {
    v73 = sub_1000E9F44();
    v74 = sub_1000EC194();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "WidgetLocationManager.Self deallocated", v75, 2u);
    }

    v76 = v83;
    sub_1000028A0(v83, 1, 1, v39);
    v91(v76, 0);
    sub_100032054(v76, &qword_100130440, &qword_1000F0BE0);
  }

  return (v89)(v32, v39);
}

uint64_t sub_10002C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v7[5] = swift_task_alloc();
  v9 = sub_1000E9A84();
  v7[6] = v9;
  v7[7] = *(v9 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[10] = v10;
  v11 = swift_task_alloc();
  v7[11] = v11;
  *v11 = v7;
  v11[1] = sub_10002C4C4;

  return sub_10002C5C0(v10, a5);
}

uint64_t sub_10002C4C4()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v3 = v2;
  v4 = *v1;
  sub_10003246C();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1000326AC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002C5C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100002A10(&qword_100130530, &qword_1000F0CC8);
  v3[5] = swift_task_alloc();
  v4 = sub_1000E9A84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = sub_100002A10(&qword_100130538, &unk_1000F0CD0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10002C734, 0, 0);
}

uint64_t sub_10002C734()
{
  sub_100032604();
  sub_1000324F0((v2[4] + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_savedLocationFinder));
  swift_task_alloc();
  sub_1000325BC();
  v2[16] = v3;
  *v3 = v4;
  v3[1] = sub_10002C7EC;
  v5 = v2[15];
  v6 = v2[3];

  return dispatch thunk of SavedLocationFinderType.find(by:)(v5, v6, v0, v1);
}

uint64_t sub_10002C7EC()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v3 = v2;
  v4 = *v1;
  sub_10003246C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_1000326AC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002C8E8()
{
  v56 = v0;
  if (qword_10012EB20 != -1)
  {
    sub_10003244C(&qword_10012EB20);
  }

  v1 = v0[3];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_1000E9F64();
  sub_100008CB8(v5, qword_100145BC8);
  v6 = sub_100032730();
  sub_100031FF0(v6, v7, v8, v9);
  v10 = *(v4 + 16);
  v10(v2, v1, v3);
  v11 = sub_1000E9F44();
  v12 = sub_1000EC1B4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[14];
  v54 = v10;
  if (v13)
  {
    log = v11;
    v15 = v0[13];
    v48 = v0[9];
    v49 = v0[10];
    v16 = v0[6];
    v50 = v0[7];
    v51 = v12;
    v17 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    sub_10003247C(7.2227e-34);
    sub_100031FF0(v14, v15, &qword_100130538, &unk_1000F0CD0);
    v18 = sub_1000EBEF4();
    v20 = v19;
    sub_100032054(v14, &qword_100130538, &unk_1000F0CD0);
    v21 = sub_1000E2E18(v18, v20, &v55);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    v10(v48, v49, v16);
    sub_1000EBEF4();
    (*(v50 + 8))(v49, v16);
    v22 = sub_10003277C();
    v25 = sub_1000E2E18(v22, v23, v24);

    *(v17 + 34) = v25;
    _os_log_impl(&_mh_execute_header, log, v51, "WidgetLocationManager found matched location =%{private,mask.hash}s, for input location=%{private,mask.hash}s", v17, 0x2Au);
    swift_arrayDestroy();
    sub_100009194(v52);
    sub_100009118();
  }

  else
  {

    v26 = sub_100032730();
    v27(v26);
    sub_100032054(v14, &qword_100130538, &unk_1000F0CD0);
  }

  v28 = v0[12];
  sub_100031FF0(v0[15], v28, &qword_100130538, &unk_1000F0CD0);
  v29 = sub_1000E93E4();
  if (sub_100005B30(v28, 1, v29) == 1)
  {
    sub_10003266C();
    sub_100032054(v30, v31, v32);
    sub_10003266C();
LABEL_10:
    sub_100032054(v33, v34, v35);
    v54(v0[2], v0[3], v0[6]);
    goto LABEL_12;
  }

  v36 = v0[12];
  v37 = v0[5];
  sub_1000E93D4();
  sub_1000326A0();
  (*(v38 + 8))(v36, v29);
  v39 = sub_1000E9614();
  v40 = sub_100005B30(v37, 1, v39);
  v41 = v0[15];
  if (v40 == 1)
  {
    v42 = v0[5];
    sub_100032054(v0[15], &qword_100130538, &unk_1000F0CD0);
    v34 = &qword_100130530;
    v35 = &qword_1000F0CC8;
    v33 = v42;
    goto LABEL_10;
  }

  v43 = v0[7];
  v44 = v0[5];
  sub_1000E9604();
  sub_100032054(v41, &qword_100130538, &unk_1000F0CD0);
  sub_1000326A0();
  (*(v45 + 8))(v44, v39);
  (*(v43 + 32))(v0[2], v0[8], v0[6]);
LABEL_12:

  sub_1000324E4();

  return v46();
}

uint64_t sub_10002CDB8()
{
  sub_1000327A8();

  sub_1000324E4();

  return v0();
}

uint64_t sub_10002CE74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v71 = a4;
  v69 = a2;
  v70 = a3;
  v5 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v5 - 8);
  v62 = &v56 - v6;
  v7 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  __chkstk_darwin(v7 - 8);
  v68 = &v56 - v8;
  v9 = sub_1000E9A84();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v73 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v65 = v16;
  __chkstk_darwin(v13);
  v18 = &v56 - v17;
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E9F64();
  v20 = sub_100008CB8(v19, qword_100145BC8);
  v21 = *(v10 + 16);
  v21(v18, a1, v9);
  v67 = a1;
  v21(v15, a1, v9);
  v22 = sub_1000E9F44();
  v23 = sub_1000EC1B4();
  v24 = os_log_type_enabled(v22, v23);
  v66 = v10;
  v64 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = v15;
    v26 = v25;
    v60 = swift_slowAlloc();
    v72[0] = v60;
    *v26 = 141558787;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v61 = v20;
    v59 = v23;
    v27 = v73;
    v21(v73, v18, v9);
    v28 = sub_1000EBEF4();
    v58 = v22;
    v30 = v29;
    v63 = v10 + 16;
    v31 = *(v10 + 8);
    v31(v18, v9);
    v32 = sub_1000E2E18(v28, v30, v72);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2160;
    *(v26 + 24) = 1752392040;
    *(v26 + 32) = 2081;
    v33 = v57;
    v21(v27, v57, v9);
    v34 = sub_1000EBEF4();
    v36 = v35;
    v31(v33, v9);
    v37 = sub_1000E2E18(v34, v36, v72);

    *(v26 + 34) = v37;
    v38 = v58;
    _os_log_impl(&_mh_execute_header, v58, v59, "Successfully performed a local search. location=%{private,mask.hash}s, name=%{private,mask.hash}s", v26, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v39 = *(v10 + 8);
    v39(v15, v9);
    v39(v18, v9);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = sub_1000EC084();
    v43 = v68;
    sub_1000028A0(v68, 1, 1, v42);
    v44 = v73;
    v64(v73, v67, v9);
    v45 = v66;
    v46 = (*(v66 + 80) + 40) & ~*(v66 + 80);
    v47 = (v65 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    *(v48 + 2) = 0;
    *(v48 + 3) = 0;
    *(v48 + 4) = v41;
    (*(v45 + 32))(&v48[v46], v44, v9);
    v49 = &v48[v47];
    v50 = v71;
    *v49 = v70;
    *(v49 + 1) = v50;

    sub_100028B14(0, 0, v43, &unk_1000F0CE8, v48);
  }

  else
  {
    v52 = sub_1000E9F44();
    v53 = sub_1000EC194();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "WidgetLocationManager.Self deallocated", v54, 2u);
    }

    v55 = v62;
    sub_1000028A0(v62, 1, 1, v9);
    v70(v55, 0);
    return sub_100032054(v55, &qword_100130440, &qword_1000F0BE0);
  }
}

uint64_t sub_10002D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v7[5] = swift_task_alloc();
  v9 = sub_1000E9A84();
  v7[6] = v9;
  v7[7] = *(v9 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[10] = v10;
  v11 = swift_task_alloc();
  v7[11] = v11;
  *v11 = v7;
  v11[1] = sub_10002D5DC;

  return sub_10002C5C0(v10, a5);
}

uint64_t sub_10002D5DC()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v3 = v2;
  v4 = *v1;
  sub_10003246C();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1000326AC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002D6D8()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  sub_10003266C();
  v4();
  sub_10000D554();
  sub_1000028A0(v5, v6, v7, v1);
  v3(v2, 1);
  sub_100032054(v2, &qword_100130440, &qword_1000F0BE0);
  v8 = sub_100032730();
  v9(v8);
  sub_10003273C();

  sub_1000324E4();

  return v10();
}

uint64_t sub_10002D7D0()
{
  v37 = v0;
  if (qword_10012EB20 != -1)
  {
    sub_10003244C(&qword_10012EB20);
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1000E9F64();
  sub_100008CB8(v5, qword_100145BC8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1000E9F44();
  sub_1000EC194();
  sub_100032584();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = sub_1000327F4();
    v34 = sub_10000923C();
    v36 = v34;
    sub_10003247C(7.2225e-34);
    v6(v12, v10, v13);
    v15 = sub_1000EBEF4();
    v35 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1000E2E18(v15, v17, &v36);
    v6 = v35;

    *(v14 + 14) = v18;
    sub_100032574();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_100009068(v34);
    sub_100009194(v34);
    sub_100009118();
  }

  else
  {
    v24 = v0[6];
    v25 = v0[7];

    (*(v25 + 8))(v10, v24);
  }

  v26 = v0[5];
  v27 = v0[6];
  v28 = v0[3];
  v6(v26, v0[2], v27);
  sub_10000D554();
  sub_1000028A0(v29, v30, v31, v27);
  v28(v26, 1);

  sub_100032054(v26, &qword_100130440, &qword_1000F0BE0);
  sub_10003273C();

  sub_1000324E4();

  return v32();
}

void sub_10002DA38()
{
  sub_100006A58();
  v2 = v1;
  v4 = v3;
  v5 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v5);
  sub_100009204();
  __chkstk_darwin(v6);
  sub_100019AE8();
  if (qword_10012EB20 != -1)
  {
    sub_10003244C(&qword_10012EB20);
  }

  v7 = sub_1000E9F64();
  sub_1000326C4(v7, qword_100145BC8);

  v8 = sub_1000E9F44();
  v9 = sub_1000EC194();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1000327F4();
    v11 = sub_10000923C();
    v19 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;

    v12 = sub_1000EBEF4();
    v14 = sub_1000E2E18(v12, v13, &v19);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, v2, v10, 0x16u);
    sub_100009068(v11);
    sub_100009194(v11);
    sub_100009194(v10);
  }

  sub_1000E9A84();
  sub_10000D52C();
  sub_1000028A0(v15, v16, v17, v18);
  v4(v0, 0);
  sub_100032054(v0, &qword_100130440, &qword_1000F0BE0);
  sub_100006A20();
}

void sub_10002DC0C(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  if (sub_100028DF8())
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E9F64();
    sub_100008CB8(v8, qword_100145BC8);
    v9 = sub_1000E9F44();
    v10 = sub_1000EC1B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "location permissions granted, we can safely start listening to location updates from CoreLocation.", v11, 2u);
    }

    sub_1000E9AE4();
    v12 = *(a1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer);
    v13 = sub_1000E9F44();
    v14 = sub_1000EC1B4();
    v15 = os_log_type_enabled(v13, v14);
    if (v12)
    {
      if (v15)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "We are already listening to location updates from CoreLocation.", v16, 2u);
      }
    }

    else
    {
      if (v15)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Starting listening to location updates from CoreLocation.", v25, 2u);
      }

      [a2 startUpdatingLocation];
      sub_10002DFC0();
    }

    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;
    v27 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_completionQueue;
    swift_beginAccess();

    sub_100030C44();
    v28 = *(*(a1 + v27) + 16);
    sub_100030CA0(v28);
    v29 = *(a1 + v27);
    *(v29 + 16) = v28 + 1;
    v30 = v29 + 16 * v28;
    *(v30 + 32) = sub_100030A10;
    *(v30 + 40) = v26;
    *(a1 + v27) = v29;
    swift_endAccess();
    sub_1000E9AF4();
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v17 = sub_1000E9F64();
    sub_100008CB8(v17, qword_100145BC8);
    v18 = sub_1000E9F44();
    v19 = sub_1000EC1B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "location permissions NOT granted, attempting to return a cachedLocation.", v20, 2u);
    }

    v21 = sub_10002E6DC(2);
    v23 = v22;
    v24 = (v22 >> 8) & 1;
    a3(v21, v22 | (v24 << 8));

    sub_1000309CC(v21, v23, v24);
  }
}

uint64_t sub_10002DFC0()
{
  v1 = sub_1000EAC54();
  v50 = *(v1 - 8);
  v51 = v1;
  __chkstk_darwin(v1);
  v47 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000EAC94();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EAC44();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = __chkstk_darwin(v5);
  v45 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = (v41 - v8);
  v42 = sub_1000EACB4();
  v53 = *(v42 - 8);
  v10 = __chkstk_darwin(v42);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v41 - v13;
  v15 = sub_1000EC284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100031CF8(0, &qword_100130478, OS_dispatch_source_ptr);
  v41[1] = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000316E4(&qword_100130480, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100002A10(&qword_100130488, &qword_1000F0C00);
  sub_100031CA4(&qword_100130490, &qword_100130488, &qword_1000F0C00);
  sub_1000EC3C4();
  v52 = sub_1000EC294();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_1000EACA4();
  *v9 = 10;
  v19 = v43;
  v20 = v44;
  (*(v43 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v44);
  v21 = v14;
  sub_1000EACD4();
  v22 = *(v19 + 8);
  v22(v9, v20);
  v23 = *(v53 + 8);
  v53 += 8;
  v24 = v12;
  v25 = v42;
  v23(v24, v42);
  sub_10002F568(v9);
  v26 = v45;
  sub_10002F5DC(v45);
  sub_1000EC324();
  v22(v26, v20);
  v22(v9, v20);
  v23(v21, v25);
  v27 = swift_allocObject();
  v28 = v41[2];
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10003172C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032434;
  aBlock[3] = &unk_100125E08;
  v29 = _Block_copy(aBlock);

  v30 = v46;
  sub_1000EAC64();
  v31 = v47;
  sub_10002F864();
  v32 = v31;
  v33 = v52;
  sub_1000EC2A4();
  v34 = v29;
  v35 = v33;
  _Block_release(v34);
  (*(v50 + 8))(v32, v51);
  (*(v48 + 8))(v30, v49);

  sub_1000EC2C4();
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v36 = sub_1000E9F64();
  sub_100008CB8(v36, qword_100145BC8);
  v37 = sub_1000E9F44();
  v38 = sub_1000EC1B4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Timer: starting current location fetch timer", v39, 2u);
  }

  *(v28 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer) = v35;
  return swift_unknownObjectRelease();
}

id sub_10002E6DC(uint64_t a1)
{
  v2 = v1;
  v35[0] = a1;
  v3 = sub_100002A10(&qword_1001304A8, &unk_1000F0C10);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_1000E9724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v10 = sub_1000E9F64();
  sub_100008CB8(v10, qword_100145BC8);
  v11 = sub_1000E9F44();
  v12 = sub_1000EC1B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "About to retrieve our last cachedLocation", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager;
  result = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager);
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  [result _authorizationStatus];
  if (sub_1000EC2D4())
  {
    result = *(v2 + v14);
    if (result)
    {
      if ([result isAuthorizedForWidgetUpdates])
      {
        sub_100008DA8((v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
        sub_1000E98A4();
        if (sub_100005B30(v5, 1, v6) != 1)
        {
          (*(v7 + 32))(v9, v5, v6);
          v26 = sub_10002F330();
          v27 = sub_1000E9F44();
          v28 = sub_1000EC1B4();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v35[1] = v26;
            v36 = v30;
            *v29 = 141558275;
            *(v29 + 4) = 1752392040;
            *(v29 + 12) = 2081;
            sub_100031CF8(0, &unk_1001304B0, CLLocation_ptr);
            v31 = v26;
            v32 = sub_1000EBEF4();
            v34 = sub_1000E2E18(v32, v33, &v36);

            *(v29 + 14) = v34;
            _os_log_impl(&_mh_execute_header, v27, v28, "Successfully retrieved a previous cachedLocation. location=%{private,mask.hash}s", v29, 0x16u);
            sub_100009068(v30);
          }

          (*(v7 + 8))(v9, v6);
          return v26;
        }

        sub_100032054(v5, &qword_1001304A8, &unk_1000F0C10);
        v16 = sub_1000E9F44();
        v17 = sub_1000EC1B4();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Aborting cachedLocation: no previous location data available", v18, 2u);
        }

        return LOBYTE(v35[0]);
      }

      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_13:
  v20 = sub_1000E9F44();
  v21 = sub_1000EC1B4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Aborting cachedLocation: we are no longer authorized.", v22, 2u);
  }

  if (sub_1000EC2F4())
  {
    goto LABEL_18;
  }

  result = *(v2 + v14);
  if (result)
  {
    if ([result isAuthorizedForWidgetUpdates])
    {
      return LOBYTE(v35[0]);
    }

LABEL_18:
    v23 = sub_1000E9F44();
    v24 = sub_1000EC1B4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Previous location authorization revoked. Clearing cache.", v25, 2u);
    }

    sub_100008DA8((v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
    sub_1000E98D4();
    return LOBYTE(v35[0]);
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_10002EC64(void *a1, int a2)
{
  v5 = v2;
  v8 = sub_1000EACC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v5[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = sub_1000EACE4();
  v15 = *(v9 + 8);
  v14 = v9 + 8;
  v15(v11, v8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    LOBYTE(v41[0]) = a1;
    sub_100031734();
    swift_willThrowTypedImpl();
    v14 = 0;
    v3 = 0xEC0000006C756673;
    v4 = 0x7365636375736E75;
  }

  else
  {
    v16 = a1;
    v3 = 0xEA00000000006C75;
    v4 = 0x6673736563637573;
    v14 = a1;
  }

  v38 = a2;
  if (qword_10012EB20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v17 = sub_1000E9F64();
    sub_100008CB8(v17, qword_100145BC8);
    v18 = v14;

    v19 = sub_1000E9F44();
    v20 = sub_1000EC1B4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = a1;
      v22 = v21;
      v41[0] = swift_slowAlloc();
      *v22 = 136446723;
      *(v22 + 4) = sub_1000E2E18(v4, v3, v41);
      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2081;
      v39 = v14;
      v23 = v18;
      sub_100002A10(&qword_1001304A0, &qword_1000F0C08);
      v24 = sub_1000EBEF4();
      v26 = sub_1000E2E18(v24, v25, v41);

      *(v22 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "CoreLocation fetch was %{public}s ...now stopping listening to location updates. location=%{private,mask.hash}s", v22, 0x20u);
      swift_arrayDestroy();

      a1 = v37;
    }

    v5[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationIsUpdating] = 0;
    v27 = *&v5[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager];
    if (!v27)
    {
      break;
    }

    v28 = v27;

    [v28 stopUpdatingLocation];

    sub_1000E9AE4();
    sub_10002F15C();
    v29 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_completionQueue;
    swift_beginAccess();
    v3 = *&v5[v29];
    *&v5[v29] = &_swiftEmptyArrayStorage;
    sub_1000E9AF4();
    v5 = sub_10002F2A4(a1, v38 & 1, v5);
    v14 = v30;

    v31 = sub_1000E9F44();
    v32 = sub_1000EC1B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = *(v3 + 16);

      _os_log_impl(&_mh_execute_header, v31, v32, "locationUpdate: completed returning (%ld) requests", v33, 0xCu);
    }

    else
    {
    }

    v34 = 0;
    v4 = *(v3 + 16);
    for (i = v3 + 40; ; i += 16)
    {
      if (v4 == v34)
      {

        sub_1000309CC(v5, v14, BYTE1(v14) & 1);

        return;
      }

      if (v34 >= *(v3 + 16))
      {
        break;
      }

      ++v34;
      a1 = *(i - 8);
      v39 = v5;
      v40 = v14 & 0x1FF;

      (a1)(&v39);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
}

void sub_10002F15C()
{
  v1 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer;
  if (*(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer))
  {
    v2 = v0;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1000EC2B4();
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v3 = sub_1000E9F64();
    sub_100008CB8(v3, qword_100145BC8);
    v4 = sub_1000E9F44();
    v5 = sub_1000EC1B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Timer: stopped successfully before expiration", v6, 2u);
    }

    swift_unknownObjectRelease();

    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

id sub_10002F2A4(void *a1, char a2, uint64_t a3)
{
  v3 = a1;
  if (a2)
  {
    return sub_10002E6DC(a1);
  }

  sub_100008DA8((a3 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(a3 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
  v4 = v3;
  sub_1000E98C4();
  return v3;
}

uint64_t sub_10002F330()
{
  v0 = sub_1000E9A84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E9704();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9714();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v6;
  }

  (*(v1 + 32))(v3, v6, v0);
  v7 = sub_1000E9954();
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t sub_10002F494(uint64_t a1)
{
  v2 = sub_1000E9554();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000E99E4();
}

uint64_t sub_10002F568@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = sub_1000EAC44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10002F5DC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = sub_1000EAC44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_10002F654(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v3 = sub_1000E9F64();
    sub_100008CB8(v3, qword_100145BC8);
    v4 = sub_1000E9F44();
    v5 = sub_1000EC1B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Timer: timed out while attempting to fetch the current location", v6, 2u);
    }

    sub_10002EC64(0, 1);
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E9F64();
    sub_100008CB8(v7, qword_100145BC8);
    v2 = sub_1000E9F44();
    v8 = sub_1000EC194();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v8, "Timer: we were deallocated before the timer timed out", v9, 2u);
    }
  }
}

uint64_t sub_10002F820(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10002F864()
{
  sub_1000EAC54();
  sub_1000316E4(&qword_100130450, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002A10(&qword_100130458, &qword_1000F0BE8);
  sub_100031CA4(&qword_100130460, &qword_100130458, &qword_1000F0BE8);
  return sub_1000EC3C4();
}

void sub_10002F93C()
{
  sub_100006A58();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1000E9704();
  v8 = sub_100009210(v7);
  __chkstk_darwin(v8);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_100002A10(&qword_1001304A8, &unk_1000F0C10);
  sub_100009210(v12);
  sub_100009204();
  __chkstk_darwin(v13);
  sub_100019AE8();
  v14 = sub_1000EACC4();
  sub_1000090D4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100006A10();
  v20 = v19 - v18;
  v21 = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  *(v19 - v18) = v21;
  (*(v16 + 104))(v19 - v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v22 = v21;
  LOBYTE(v21) = sub_1000EACE4();
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v14);
  if ((v21 & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_10003244C(&qword_10012EB20);
    goto LABEL_22;
  }

  *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationIsUpdating) = 1;
  if (sub_100030A44(v4))
  {
    v25 = [v6 _limitsPrecision];
    sub_100008DA8((v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
    sub_1000E98A4();
    v26 = sub_1000E9724();
    v54[0] = v2;
    if (sub_100005B30(v1, 1, v26) == 1)
    {
      sub_100032054(v1, &qword_1001304A8, &unk_1000F0C10);
      v1 = 0;
    }

    else
    {
      sub_1000E9714();
      sub_1000326A0();
      (*(v30 + 8))(v1, v26);
      v1 = sub_1000E96F4();
      sub_1000323C4(v11);
    }

    v55 = v4;
    v31 = sub_100030A44(v4);
    v32 = v31;
    do
    {
      v33 = v32;
      if (!v32)
      {
        break;
      }

      --v32;
      if (__OFSUB__(v33, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v34 = sub_1000EC3F4();
      }

      else
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v32 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v34 = *(v4 + 32 + 8 * v32);
      }

      v35 = v34;
      v36 = sub_1000EC154(v25, v1);
    }

    while (!v36);
    __chkstk_darwin(v31);
    v54[-2] = &v55;
    v38 = sub_100031D9C(sub_1000323A4, &v54[-4], v32, v37);
    if (v38)
    {
      v4 = v38;
      if (qword_10012EB20 != -1)
      {
        goto LABEL_35;
      }

LABEL_22:
      v39 = sub_1000E9F64();
      sub_1000326C4(v39, qword_100145BC8);
      v40 = v4;
      v41 = sub_1000E9F44();
      v42 = sub_1000EC1B4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = sub_1000327F4();
        v44 = sub_10000923C();
        v55 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v54[1] = v40;
        sub_100031CF8(0, &unk_1001304B0, CLLocation_ptr);
        v45 = v40;
        v46 = sub_1000EBEF4();
        v48 = sub_1000E2E18(v46, v47, &v55);

        *(v43 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "locationUpdate: completed successfully. location=%{private,mask.hash}s)", v43, 0x16u);
        sub_100009068(v44);
        sub_100009194(v44);
        sub_100009194(v43);
      }

      v49 = v40;
      sub_10002EC64(v4, 0);

      goto LABEL_30;
    }

    if (qword_10012EB20 != -1)
    {
      sub_10003244C(&qword_10012EB20);
    }

    v50 = sub_1000E9F64();
    sub_1000326C4(v50, qword_100145BC8);
    v51 = sub_1000E9F44();
    v52 = sub_1000EC1B4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_1000091BC();
      sub_1000091E0(v53);
      sub_10003270C(&_mh_execute_header, v51, v52, "locationUpdate: locationManager did update locations but it's invalid or not accurate enough");
      sub_100009118();
    }
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C(&qword_10012EB20);
    }

    v27 = sub_1000E9F64();
    sub_1000326C4(v27, qword_100145BC8);
    v1 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(&v1->value.super, v28))
    {
      v29 = sub_1000091BC();
      sub_100032610(v29);
      _os_log_impl(&_mh_execute_header, &v1->value.super, v23, "locationUpdate: locationManager did update locations but location list is empty", v6, 2u);
      sub_100009194(v6);
    }
  }

LABEL_30:

  sub_100006A20();
}

void sub_10002FF70(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000EACC4();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100006A10();
  v9 = v8 - v7;
  v10 = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = sub_1000EACE4();
  (*(v5 + 8))(v9, v3);
  if (v10)
  {
    if (qword_10012EB20 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10003244C(&qword_10012EB20);
LABEL_3:
  v12 = sub_1000E9F64();
  sub_1000326C4(v12, qword_100145BC8);
  swift_errorRetain();
  v13 = sub_1000E9F44();
  v14 = sub_1000EC1B4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = sub_10000923C();
    v20 = v16;
    *v15 = 136380675;
    swift_errorRetain();
    sub_100002A10(&qword_100130548, &qword_1000F0CF0);
    v17 = sub_1000EBEF4();
    v19 = sub_1000E2E18(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "locationUpdate: locationManager didFailWithError: %{private}s ... letting CoreLocation keep trying", v15, 0xCu);
    sub_100009068(v16);
    sub_100009194(v16);
    sub_100009194(v15);
  }
}

void sub_1000301F4()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v4 = sub_1000EACC4();
  sub_1000090D4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100006A10();
  v10 = v9 - v8;
  v11 = *(v1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  *(v9 - v8) = v11;
  (*(v6 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v11;
  v13 = sub_1000EACE4();
  v15 = *(v6 + 8);
  v14 = v6 + 8;
  v15(v10, v4);
  if (v13)
  {
    [v3 authorizationStatus];
    v13 = [v3 _limitsPrecision];
    v14 = [v3 isAuthorizedForWidgetUpdates];
    if (qword_10012EB20 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10003244C(&qword_10012EB20);
LABEL_3:
  v16 = sub_1000E9F64();
  sub_100008CB8(v16, qword_100145BC8);
  v17 = sub_1000E9F44();
  v18 = sub_1000EC1B4();
  if (sub_1000091EC(v18))
  {
    v19 = swift_slowAlloc();
    v36 = sub_10000923C();
    v37 = v36;
    *v19 = 136446722;
    v20 = sub_1000EC2E4();
    v22 = v1;
    v23 = v3;
    v24 = v14;
    v25 = v13;
    v26 = sub_1000E2E18(v20, v21, &v37);

    *(v19 + 4) = v26;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v25;
    *(v19 + 18) = 1024;
    *(v19 + 20) = v24;
    v3 = v23;
    v1 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "locationUpdate: locationManager didChangeAuthorization. Received new states: authorizationState:%{public}s, limitsPrecision: %{BOOL}d, isAuthorizedForWidgetUpdates=%{BOOL}d", v19, 0x18u);
    sub_100009068(v36);
    sub_100009194(v36);
    sub_100009194(v19);
  }

  if (sub_100028DF8())
  {
    v27 = *(v1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationIsUpdating);
    v28 = sub_1000E9F44();
    v29 = sub_1000EC1B4();
    v30 = sub_1000091EC(v29);
    if (v27)
    {
      if (v30)
      {
        v31 = sub_1000091BC();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "locationUpdate: not starting listening to location updates: location is already updating", v31, 2u);
        sub_100009194(v31);
      }
    }

    else
    {
      if (v30)
      {
        v35 = sub_1000091BC();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "locationUpdate: starting listening to location updates", v35, 2u);
        sub_100009194(v35);
      }

      [v3 startUpdatingLocation];
    }
  }

  else
  {
    v32 = sub_1000E9F44();
    v33 = sub_1000EC1B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_1000091BC();
      sub_1000091E0(v34);
      sub_10003270C(&_mh_execute_header, v32, v33, "locationUpdate: not starting listening to location updates: we don't have location permissions");
      sub_100009118();
    }
  }

  sub_100006A20();
}

_BYTE *storeEnumTagSinglePayload for FailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030694);
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

_BYTE *storeEnumTagSinglePayload for LocationState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030798);
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

unint64_t sub_1000307D4()
{
  result = qword_100130430;
  if (!qword_100130430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130430);
  }

  return result;
}

unint64_t sub_10003082C()
{
  result = qword_100130438;
  if (!qword_100130438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130438);
  }

  return result;
}

id sub_100030880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v6 = v5;
  if (a2)
  {
    v9 = sub_1000EBE64();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithEffectiveBundleIdentifier:v9 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_10003090C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100030968()
{

  v1 = sub_1000326EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000309B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000309CC(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_1000309D8()
{

  return _swift_deallocObject(v0);
}

unint64_t sub_100030A1C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100030A44(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

uint64_t sub_100030A68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100030B60;

  return v6(a1);
}

uint64_t sub_100030B60()
{
  sub_100032530();
  sub_1000325B0();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000324E4();

  return v3();
}

void sub_100030C44()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100031208();
    *v0 = v3;
  }
}

void sub_100030CA0(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_100031208();
    *v1 = v2;
  }
}

void sub_100030CF0()
{
  sub_1000326B8();
  if (v3)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100002A10(&qword_10012F128, &qword_1000EEF38);
    v9 = sub_100032758();
    j__malloc_size(v9);
    sub_10003253C();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_100030DC4()
{
  sub_1000325A0();
  if (v3)
  {
    sub_100032564();
    if (v5 != v6)
    {
      sub_1000327C8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000315C4(*(v0 + 16), v4, &qword_1001304F0, &qword_1000F0C50, type metadata accessor for EventViewModel);
  v7 = sub_100032724();
  type metadata accessor for EventViewModel(v7);
  sub_100006A04();
  sub_10003279C();
  if (v1)
  {
    sub_100032678(type metadata accessor for EventViewModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

void sub_100030EA4()
{
  sub_1000326B8();
  if (v4)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  sub_100032510();
  if (v3)
  {
    sub_100002A10(&qword_100130500, &qword_1000F0C60);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_100030F78()
{
  sub_1000326B8();
  if (v4)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  sub_100032510();
  if (v3)
  {
    sub_100002A10(&qword_100130558, &qword_1000F0D00);
    v7 = sub_100032758();
    j__malloc_size(v7);
    sub_10003253C();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10003104C()
{
  sub_1000326B8();
  if (v4)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  sub_100032510();
  if (v3)
  {
    sub_100002A10(&unk_100130560, &qword_1000F0998);
    v7 = sub_100032758();
    j__malloc_size(v7);
    sub_1000327B4();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100031120()
{
  sub_1000326B8();
  if (v3)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100002A10(&qword_100130550, &qword_1000F0CF8);
    v9 = sub_100032758();
    j__malloc_size(v9);
    sub_1000327B4();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v7] <= v11)
    {
      memmove(v11, v12, 32 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 32 * v7);
  }
}

void sub_100031208()
{
  sub_1000326B8();
  if (v4)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  sub_100032510();
  if (v3)
  {
    sub_100002A10(v7, v8);
    v9 = sub_100032758();
    j__malloc_size(v9);
    sub_10003253C();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[2 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_10003277C();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100002A10(&qword_100130470, &qword_1000F0BF8);
    sub_10003277C();
    swift_arrayInitWithCopy();
  }
}

void sub_1000312F4()
{
  sub_1000325A0();
  if (v3)
  {
    sub_100032564();
    if (v5 != v6)
    {
      sub_1000327C8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000315C4(*(v0 + 16), v4, &qword_1001304D8, &qword_1000FABD0, type metadata accessor for ForecastEntry);
  v7 = sub_100032724();
  type metadata accessor for ForecastEntry(v7);
  sub_100006A04();
  sub_10003279C();
  if (v1)
  {
    sub_100032678(type metadata accessor for ForecastEntry, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

void sub_1000313D4()
{
  sub_1000325A0();
  if (v2)
  {
    sub_100032564();
    if (v3 != v4)
    {
      sub_1000327C8();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  v5 = *(v0 + 16);
  sub_100032654();
  sub_1000315C4(v5, v6, v7, v8, v9);
  sub_100032724();
  sub_1000EB214();
  sub_100006A04();
  sub_10003279C();
  if (v1)
  {
    sub_100032678(&type metadata accessor for DailyForecastViewModel, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

void sub_1000314A4()
{
  sub_1000325A0();
  if (v2)
  {
    sub_100032564();
    if (v3 != v4)
    {
      sub_1000327C8();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  v5 = *(v0 + 16);
  sub_10003263C();
  sub_1000315C4(v5, v6, v7, v8, v9);
  sub_100032724();
  sub_1000EB814();
  sub_100006A04();
  sub_10003279C();
  if (v1)
  {
    sub_100032678(&type metadata accessor for HourlyForecastBannerViewModel, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

char *sub_1000315C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002A10(a3, a4);
  v8 = sub_100032724();
  v9 = a5(v8);
  sub_100032590(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if (&result[-v13] != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * (&result[-v13] / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000316E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100031734()
{
  result = qword_100130498;
  if (!qword_100130498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130498);
  }

  return result;
}

void sub_1000317D0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_1000326A0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_100032788();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100032788();

    swift_arrayInitWithTakeBackToFront();
  }
}

id sub_100031894(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000318C4()
{
  sub_1000309CC(*(v0 + 16), *(v0 + 24), *(v0 + 25));

  return _swift_deallocObject(v0);
}

uint64_t sub_10003193C()
{

  sub_100032770();

  return _swift_deallocObject(v0);
}

uint64_t sub_100031998()
{
  swift_unknownObjectRelease();

  sub_100032770();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000319DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  swift_task_alloc();
  sub_1000325BC();
  *(v2 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_100032444;
  sub_100032550();

  return sub_100027868(v7, v8, v9, v10, v3, v4);
}

uint64_t sub_100031A94()
{
  sub_100032604();
  swift_task_alloc();
  sub_1000325BC();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1000325E4(v1);

  return v4(v3);
}

uint64_t sub_100031B2C()
{
  sub_100032604();
  swift_task_alloc();
  sub_1000325BC();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1000325E4(v1);

  return v4(v3);
}

uint64_t sub_100031BC4()
{
  sub_100032530();
  sub_1000325B0();
  v1 = *v0;
  sub_10003246C();
  *v2 = v1;

  sub_1000324E4();

  return v3();
}

uint64_t sub_100031CA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_100031CF8(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_100031D38(unint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_100030A1C(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return sub_1000EC3F4();
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_100031D9C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100031DF4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1000EBE84();

  return v4;
}

uint64_t sub_100031E54()
{

  v1 = sub_1000326EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_100031EE4()
{
  sub_1000327A8();
  v3 = sub_1000E9A84();
  sub_100032590(v3);
  sub_10003261C();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_100032444;
  sub_100032550();

  return sub_10002C364(v5, v6, v7, v8, v9, v1, v2);
}

uint64_t sub_100031FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100002A10(a3, a4);
  sub_1000326A0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100032054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002A10(a2, a3);
  sub_1000326A0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000320B8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100032124()
{

  v0 = sub_1000326EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_100032184()
{
  v1 = sub_1000E9A84();
  sub_1000090D4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10003225C()
{
  sub_1000327A8();
  v3 = sub_1000E9A84();
  sub_100032590(v3);
  sub_10003261C();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_100031BC4;
  sub_100032550();

  return sub_10002D47C(v5, v6, v7, v8, v9, v1, v2);
}

id sub_100032368@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_100031D38(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000323C4(uint64_t a1)
{
  v2 = sub_1000E9704();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003244C(uint64_t a1)
{

  return swift_once();
}

void sub_10003247C(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}