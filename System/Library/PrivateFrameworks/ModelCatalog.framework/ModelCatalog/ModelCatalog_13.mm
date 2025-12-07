uint64_t sub_18E311A64()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E311AD8()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E311B4C()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

void sub_18E311BC0(void **a1)
{
  v1 = *a1;

  free(v1);
}

void CatalogErrors.SerializationError.errorDescription.getter()
{
  sub_18E20052C();
  v0 = sub_18E44E72C();
  v1 = sub_18E1C5B08(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C7FC8();
  v2 = sub_18E44EA7C();
  v3 = sub_18E1C5B08(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  sub_18E21137C();
  v4 = sub_18E44EA5C();
  v5 = sub_18E1C5B08(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E44EA4C();
  sub_18E44EA3C();
  sub_18E1E3DF8();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E2202F0();
  sub_18E44E71C();
  v6 = sub_18E1C5408();
  sub_18E241788(v6, v7, v8, v9, v10, v11);
  sub_18E1E1DA0();
}

uint64_t sub_18E311D5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000018E4681C0 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018E4681E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

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

unint64_t sub_18E311E30(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_18E311E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E311D5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E311EB0(uint64_t a1)
{
  v2 = sub_18E3268E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E311EEC(uint64_t a1)
{
  v2 = sub_18E3268E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E311F28(uint64_t a1)
{
  v2 = sub_18E326938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E311F64(uint64_t a1)
{
  v2 = sub_18E326938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E311FA0(uint64_t a1)
{
  v2 = sub_18E32698C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E311FDC(uint64_t a1)
{
  v2 = sub_18E32698C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.SerializationError.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E2706EC(&qword_1EABE2FF0, &qword_18E4B0CA0);
  sub_18E1C4EAC();
  v15 = v1;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1CAF50();
  sub_18E2706EC(&qword_1EABE2FF8, &qword_18E4B0CA8);
  sub_18E1C4EAC();
  v14 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C61D0();
  sub_18E2706EC(&qword_1EABE3000, &qword_18E4B0CB0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAFF0();
  v6 = *(v0 + 16);
  v7 = sub_18E234314();
  sub_18E1DD34C(v7, v8);
  sub_18E3268E4();
  sub_18E1E6880();
  sub_18E44F4EC();
  if (v6)
  {
    sub_18E326938();
    sub_18E1E67E0();
    sub_18E44F2AC();
    v9 = v15;
    sub_18E44F31C();
    v10 = sub_18E232E3C();
  }

  else
  {
    sub_18E32698C();
    sub_18E1E67E0();
    sub_18E44F2AC();
    v9 = v14;
    sub_18E44F31C();
    v10 = sub_18E1E3B24();
  }

  v11(v10, v9);
  v12 = sub_18E1E2088();
  v13(v12);
  sub_18E233284();
  sub_18E1C6650();
}

void CatalogErrors.SerializationError.init(from:)()
{
  sub_18E1C62A0();
  v47 = v1;
  v3 = v2;
  sub_18E2706EC(&qword_1EABE3020, &qword_18E4B0CB8);
  sub_18E1C4EAC();
  v45 = v4;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1E88C0();
  v6 = sub_18E2706EC(&qword_1EABE3028, &qword_18E4B0CC0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CAFF0();
  v8 = sub_18E2706EC(&unk_1EABE3030, &unk_18E4B0CC8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C6BA8();
  v10 = sub_18E21D0F8();
  sub_18E1DD34C(v10, v11);
  sub_18E3268E4();
  sub_18E1E6748();
  sub_18E44F4DC();
  if (v0)
  {
    goto LABEL_9;
  }

  v48 = v3;
  sub_18E224004();
  v12 = sub_18E44F28C();
  sub_18E1FF648(v12, 0);
  if (v14 == v13 >> 1)
  {
LABEL_7:
    v26 = sub_18E44F04C();
    sub_18E1C8558(v26, MEMORY[0x1E69E6B28]);
    v28 = v27;
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v28 = &type metadata for CatalogErrors.SerializationError;
    sub_18E224004();
    v29 = sub_18E44F1BC();
    sub_18E1E14C8(v29);
    sub_18E1C82B8();
    (*(v30 + 104))(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = sub_18E2352A8();
    v32(v31, v8);
    v3 = v48;
LABEL_9:
    sub_18E1C9934(v3);
LABEL_10:
    sub_18E1E19E4();
    sub_18E1C6650();
    return;
  }

  sub_18E1CFAD8();
  if (v18 < (v17 >> 1))
  {
    v19 = *(v16 + v15);
    sub_18E200384(v15 + 1);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    if (v21 == v23 >> 1)
    {
      v24 = v19;
      if (v19)
      {
        v44 = v19;
        sub_18E326938();
        sub_18E1D5FCC();
        sub_18E44F1AC();
        v25 = v47;
        v34 = sub_18E44F22C();
        v36 = v35;
        swift_unknownObjectRelease();
        v37 = sub_18E23B48C();
        v38(v37, v45);
        v24 = v44;
      }

      else
      {
        sub_18E32698C();
        sub_18E1D5FCC();
        sub_18E44F1AC();
        v25 = v47;
        sub_18E1E23B8();
        v33 = sub_18E44F22C();
        v36 = v39;
        v46 = v33;
        swift_unknownObjectRelease();
        v40 = sub_18E1E3B24();
        v41(v40, v6);
        v34 = v46;
      }

      v42 = sub_18E1CF9A0();
      v43(v42);
      *v25 = v34;
      *(v25 + 8) = v36;
      *(v25 + 16) = v24;
      sub_18E1C9934(v48);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void CatalogErrors.ConfigurationError.errorDescription.getter()
{
  sub_18E20052C();
  v0 = sub_18E44E72C();
  v1 = sub_18E1C5B08(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C7FC8();
  v2 = sub_18E44EA7C();
  v3 = sub_18E1C5B08(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  sub_18E21137C();
  v4 = sub_18E44EA5C();
  v5 = sub_18E1C5B08(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E2430D0();
  sub_18E44EA4C();
  sub_18E1E32F0();
  sub_18E44EA3C();
  sub_18E1E3DF8();
  sub_18E44EA2C();
  sub_18E44EA3C();
  sub_18E1DD5A0();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E20173C();
  sub_18E44E71C();
  v6 = sub_18E1C5408();
  sub_18E241788(v6, v7, v8, v9, v10, v11);
  sub_18E1E1DA0();
}

uint64_t sub_18E3128E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000018E468200 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E312984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3128E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E3129B0(uint64_t a1)
{
  v2 = sub_18E3269E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3129EC(uint64_t a1)
{
  v2 = sub_18E3269E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E312A28(uint64_t a1)
{
  v2 = sub_18E326A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E312A64(uint64_t a1)
{
  v2 = sub_18E326A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.ConfigurationError.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v3 = sub_18E2706EC(&qword_1EABE3040, &qword_18E4B0CD8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C6BA8();
  v5 = sub_18E2706EC(&qword_1EABE3048, &qword_18E4B0CE0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAFF0();
  sub_18E1E1D50(v2);
  sub_18E3269E0();
  sub_18E1E6880();
  sub_18E44F4EC();
  sub_18E326A34();
  sub_18E1CF320();
  sub_18E44F2AC();
  sub_18E1E26FC();
  sub_18E1D047C();
  sub_18E44F31C();
  if (!v0)
  {
    sub_18E224E3C();
    sub_18E1D047C();
    sub_18E44F31C();
  }

  v7 = sub_18E1D42B0();
  v8(v7, v3);
  v9 = sub_18E1EA56C();
  v10(v9, v5);
  sub_18E1E2968();
  sub_18E1C6650();
}

void CatalogErrors.ConfigurationError.init(from:)()
{
  sub_18E1C62A0();
  sub_18E2236EC();
  sub_18E2706EC(&qword_1EABE3060, &qword_18E4B0CE8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  v4 = sub_18E2706EC(&qword_1EABE3068, &qword_18E4B0CF0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C6BA8();
  v6 = v1[4];
  v7 = sub_18E1E25B0();
  sub_18E1DD34C(v7, v8);
  sub_18E3269E0();
  sub_18E1E2CC0();
  sub_18E44F4DC();
  if (v0)
  {
    goto LABEL_9;
  }

  v9 = sub_18E221D8C();
  sub_18E1FF648(v9, 0);
  v11 = v4;
  if (v12 == v10 >> 1)
  {
LABEL_8:
    v17 = sub_18E44F04C();
    sub_18E1C8558(v17, MEMORY[0x1E69E6B28]);
    sub_18E242D38();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v6 = &type metadata for CatalogErrors.ConfigurationError;
    sub_18E224004();
    sub_18E44F1BC();
    sub_18E2204C4();
    sub_18E1C82B8();
    v18 = sub_18E1E86F8();
    v19(v18);
    swift_willThrow();
    swift_unknownObjectRelease();
    v20 = sub_18E2352A8();
    v21(v20, v11);
    v1 = v27;
LABEL_9:
    v26 = v1;
    goto LABEL_10;
  }

  sub_18E1D4C80();
  if (v14 == v15)
  {
    __break(1u);
    return;
  }

  v16 = sub_18E224708(v13);
  sub_18E200384(v16);
  sub_18E232FF4();
  if (v6 != (v4 >> 1))
  {
    v11 = v2;
    goto LABEL_8;
  }

  sub_18E326A34();
  sub_18E212018();
  sub_18E44F1AC();
  sub_18E223208();
  sub_18E1C5774();
  sub_18E32F074();
  sub_18E1E85F8();
  swift_unknownObjectRelease();
  v22 = sub_18E1CFF20();
  v23(v22);
  v24 = sub_18E1E1A28();
  v25(v24);
  v26 = sub_18E1E2E94();
LABEL_10:
  sub_18E1C9934(v26);
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t CatalogErrors.RequestResourceError.errorDescription.getter()
{
  v1 = sub_18E44E72C();
  v2 = sub_18E1C5B08(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C7FC8();
  v3 = sub_18E44EA7C();
  v4 = sub_18E1C5B08(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  sub_18E21137C();
  v5 = sub_18E44EA5C();
  v6 = sub_18E1C5B08(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  sub_18E2450F0();
  switch(*(v0 + 16))
  {
    case 2:
      sub_18E44EA4C();
      break;
    case 3:
      sub_18E44EA4C();
      sub_18E223750();
      break;
    default:
      sub_18E44EA4C();
      sub_18E224424();
      break;
  }

  sub_18E44EA3C();
  sub_18E1CF9A0();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E2202F0();
  sub_18E44E71C();
  v7 = sub_18E1C5408();
  return sub_18E241788(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18E3131C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000018E468220 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000018E468240 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000018E468260 == a2;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000018E468280 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

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

unint64_t sub_18E313328(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E3133D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3131C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E3133F8(uint64_t a1)
{
  v2 = sub_18E326A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E313434(uint64_t a1)
{
  v2 = sub_18E326A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E313470(uint64_t a1)
{
  v2 = sub_18E326ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3134AC(uint64_t a1)
{
  v2 = sub_18E326ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E3134E8(uint64_t a1)
{
  v2 = sub_18E326B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E313524(uint64_t a1)
{
  v2 = sub_18E326B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E313560(uint64_t a1)
{
  v2 = sub_18E326B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31359C(uint64_t a1)
{
  v2 = sub_18E326B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E3135D8(uint64_t a1)
{
  v2 = sub_18E326BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E313614(uint64_t a1)
{
  v2 = sub_18E326BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.RequestResourceError.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E2706EC(&qword_1EABE3070, &qword_18E4B0CF8);
  sub_18E1C4EAC();
  v27 = v1;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1E6530(v3, v23);
  sub_18E2706EC(&qword_1EABE3078, &qword_18E4B0D00);
  sub_18E1C4EAC();
  v26 = v4;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAF50();
  sub_18E2706EC(&qword_1EABE3080, &qword_18E4B0D08);
  sub_18E1C4EAC();
  v25 = v6;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C6BA8();
  sub_18E2706EC(&qword_1EABE3088, &qword_18E4B0D10);
  sub_18E1C4EAC();
  v24 = v8;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1CAFF0();
  sub_18E2706EC(&qword_1EABE3090, &qword_18E4B0D18);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1E88C0();
  v28 = *v0;
  v29 = *(v0 + 8);
  v11 = *(v0 + 16);
  v12 = sub_18E234314();
  sub_18E1DD34C(v12, v13);
  sub_18E326A88();
  sub_18E1E1F54();
  sub_18E44F4EC();
  switch(v11)
  {
    case 1:
      sub_18E237084();
      sub_18E326B84();
      sub_18E1D49C4();
      sub_18E44F2AC();
      sub_18E44F31C();
      v18 = sub_18E2352A8();
      v20 = v25;
      goto LABEL_7;
    case 2:
      sub_18E1E33AC();
      sub_18E326B30();
      sub_18E1D49C4();
      sub_18E44F2AC();
      v14 = v26;
      sub_18E1E1B28(v28, v29, v16);
      goto LABEL_5;
    case 3:
      sub_18E23346C();
      sub_18E326ADC();
      sub_18E1D49C4();
      sub_18E44F2AC();
      v14 = v27;
      sub_18E1E1B28(v28, v29, v17);
      goto LABEL_5;
    default:
      sub_18E326BD8();
      sub_18E1D49C4();
      sub_18E44F2AC();
      v14 = v24;
      sub_18E1E1B28(v28, v29, v15);
LABEL_5:
      v18 = sub_18E1EA56C();
      v20 = v14;
LABEL_7:
      v19(v18, v20);
      v21 = sub_18E1E11B4();
      v22(v21);
      sub_18E221740();
      sub_18E1C6650();
      return;
  }
}

void CatalogErrors.RequestResourceError.init(from:)()
{
  sub_18E1C62A0();
  v85 = v0;
  v3 = v2;
  v81 = v4;
  sub_18E2706EC(&qword_1EABE30C0, &qword_18E4B0D20);
  sub_18E1C4EAC();
  v79 = v6;
  v80 = v5;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1E1710(v8, v69);
  sub_18E2706EC(&qword_1EABE30C8, &qword_18E4B0D28);
  sub_18E1C4EAC();
  v77 = v9;
  v78 = v10;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1CAF50();
  v83 = v12;
  v82 = sub_18E2706EC(&qword_1EABE30D0, &qword_18E4B0D30);
  sub_18E1C4EAC();
  v76 = v13;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C61D0();
  v15 = sub_18E2706EC(&qword_1EABE30D8, &qword_18E4B0D38);
  sub_18E1C4EAC();
  v75 = v16;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v20 = sub_18E2706EC(&qword_1EABE30E0, &qword_18E4B0D40);
  sub_18E1C4EAC();
  v22 = v21;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v84 = v3;
  v26 = sub_18E1D03EC();
  sub_18E1DD34C(v26, v27);
  sub_18E326A88();
  v28 = v85;
  sub_18E44F4DC();
  if (!v28)
  {
    v72 = v15;
    v73 = v19;
    v74 = v1;
    v29 = v82;
    v85 = v22;
    v30 = v25;
    v31 = sub_18E44F28C();
    sub_18E1FF648(v31, 0);
    if (v33 != v32 >> 1)
    {
      sub_18E1CF6B8();
      if (v36 == v37)
      {
        __break(1u);
        return;
      }

      v38 = 0;
      v22 = v30;
      v70 = *(v35 + v34);
      v39 = sub_18E200384(v34 + 1);
      v41 = v40;
      v43 = v42;
      swift_unknownObjectRelease();
      v71 = v39;
      if (v41 == v43 >> 1)
      {
        v44 = v81;
        switch(v70)
        {
          case 1:
            sub_18E237084();
            sub_18E326B84();
            sub_18E1CF320();
            sub_18E44F1AC();
            v64 = v84;
            sub_18E2209B0();
            sub_18E44F22C();
            v69 = 0;
            sub_18E1E690C();
            v65 = sub_18E1E3B24();
            v66(v65, v29);
            break;
          case 2:
            sub_18E1E33AC();
            sub_18E326B30();
            sub_18E1CF320();
            sub_18E44F1AC();
            v64 = v84;
            v52 = v77;
            sub_18E2209B0();
            sub_18E44F22C();
            v69 = 0;
            sub_18E1E690C();
            v56 = sub_18E200E78();
            v57(v56, v52);
            break;
          case 3:
            sub_18E23346C();
            sub_18E326ADC();
            sub_18E1CF320();
            sub_18E44F1AC();
            v64 = v84;
            v53 = v80;
            v54 = sub_18E44F22C();
            v69 = 0;
            v38 = v54;
            v59 = v58;
            swift_unknownObjectRelease();
            v60 = sub_18E1E3D20();
            v61(v60, v53);
            v39 = v59;
            break;
          default:
            sub_18E326BD8();
            v45 = v73;
            sub_18E1CF320();
            sub_18E44F1AC();
            v55 = v72;
            v39 = v45;
            sub_18E44F22C();
            v69 = 0;
            sub_18E1E690C();
            v62 = sub_18E2352A8();
            v63(v62, v55);
            v64 = v84;
            break;
        }

        v67 = sub_18E1CAE88();
        v68(v67);
        *v44 = v38;
        *(v44 + 8) = v39;
        *(v44 + 16) = v70;
        sub_18E1C9934(v64);
        goto LABEL_10;
      }
    }

    v46 = sub_18E44F04C();
    sub_18E1C8558(v46, MEMORY[0x1E69E6B28]);
    sub_18E1E63CC();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v22 = &type metadata for CatalogErrors.RequestResourceError;
    v47 = sub_18E44F1BC();
    sub_18E1E14C8(v47);
    sub_18E1D0370();
    v48 = sub_18E220234();
    v49(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = sub_18E1E3D20();
    v51(v50, v20);
  }

  sub_18E1C9934(v84);
LABEL_10:
  sub_18E1E29D0();
  sub_18E1C6650();
}

uint64_t sub_18E314184(uint64_t a1)
{
  v2 = sub_18E328314();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18E3141C0(uint64_t a1)
{
  v2 = sub_18E328314();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t CatalogErrors.UsageLookupError.errorDescription.getter()
{
  v0 = sub_18E44E72C();
  v1 = sub_18E1C5B08(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C7FC8();
  v2 = sub_18E44EA7C();
  v3 = sub_18E1C5B08(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  sub_18E21137C();
  v4 = sub_18E44EA5C();
  v5 = sub_18E1C5B08(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E2430D0();
  sub_18E44EA4C();
  sub_18E44EA3C();
  sub_18E1E3DF8();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E20173C();
  sub_18E44E71C();
  v6 = sub_18E1C5408();
  return sub_18E241788(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18E314354(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000018E4682A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E3143F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E314354(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E314420(uint64_t a1)
{
  v2 = sub_18E326C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31445C(uint64_t a1)
{
  v2 = sub_18E326C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E314498(uint64_t a1)
{
  v2 = sub_18E326C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3144D4(uint64_t a1)
{
  v2 = sub_18E326C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.UsageLookupError.encode(to:)()
{
  sub_18E1C62A0();
  v1 = v0;
  sub_18E2706EC(&qword_1EABE30E8, &qword_18E4B0D48);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C6BA8();
  sub_18E2706EC(&qword_1EABE30F0, &qword_18E4B0D50);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1DD34C(v1, v1[3]);
  sub_18E326C2C();
  sub_18E1E6880();
  sub_18E44F4EC();
  sub_18E326C80();
  sub_18E1CF320();
  sub_18E44F2AC();
  sub_18E223F6C();
  sub_18E44F31C();
  v4 = sub_18E1E1B1C();
  v5(v4);
  v6 = sub_18E1CAE88();
  v7(v6);
  sub_18E233284();
  sub_18E1C6650();
}

void CatalogErrors.UsageLookupError.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E8AB4();
  v3 = sub_18E2706EC(&qword_1EABE3108, &qword_18E4B0D58);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  v5 = sub_18E2706EC(&qword_1EABE3110, &qword_18E4B0D60);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C6BA8();
  v7 = v0[4];
  sub_18E1DD34C(v0, v0[3]);
  sub_18E326C2C();
  sub_18E1E2CC0();
  sub_18E44F4DC();
  if (v1)
  {
    goto LABEL_8;
  }

  v8 = sub_18E1E144C();
  sub_18E1FF648(v8, 0);
  if (v10 == v9 >> 1)
  {
    goto LABEL_7;
  }

  sub_18E1D4C80();
  if (v12 == v13)
  {
    __break(1u);
    return;
  }

  v2 = v5;
  v14 = sub_18E23388C(v11);
  sub_18E200384(v14);
  sub_18E1E598C();
  if (v7 != v5 >> 1)
  {
LABEL_7:
    v16 = sub_18E44F04C();
    sub_18E1C8558(v16, MEMORY[0x1E69E6B28]);
    sub_18E242D38();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v2 = &type metadata for CatalogErrors.UsageLookupError;
    sub_18E224004();
    sub_18E44F1BC();
    sub_18E2204C4();
    sub_18E1C82B8();
    v17 = sub_18E1E86F8();
    v18(v17);
    swift_willThrow();
    swift_unknownObjectRelease();
    v19 = sub_18E1D42B0();
    v20(v19, v5);
    v0 = v29;
LABEL_8:
    v28 = v0;
    goto LABEL_9;
  }

  sub_18E326C80();
  sub_18E1D5FCC();
  v15 = sub_18E44F1AC();
  v21 = sub_18E32F014(v15);
  v23 = v22;
  swift_unknownObjectRelease();
  v24 = sub_18E1E1994();
  v25(v24);
  v26 = sub_18E1E1B1C();
  v27(v26);
  *v3 = v21;
  v3[1] = v23;
  v28 = v29;
LABEL_9:
  sub_18E1C9934(v28);
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t CatalogErrors.TokenStoreError.errorDescription.getter()
{
  v0 = sub_18E44E72C();
  v1 = sub_18E1C5B08(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C7FC8();
  v2 = sub_18E44EA7C();
  v3 = sub_18E1C5B08(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  sub_18E21137C();
  v4 = sub_18E44EA5C();
  v5 = sub_18E1C5B08(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E2450F0();
  sub_18E44EA4C();
  sub_18E44EA3C();
  sub_18E1CF9A0();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E2202F0();
  sub_18E44E71C();
  v6 = sub_18E1C5408();
  return sub_18E241788(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18E314B84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x800000018E4682C0 == a2;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000018E4682E0 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000018E468300 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

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

unint64_t sub_18E314C9C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000015;
}

uint64_t sub_18E314CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E314B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E314D20(uint64_t a1)
{
  v2 = sub_18E326CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E314D5C(uint64_t a1)
{
  v2 = sub_18E326CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E314D98(uint64_t a1)
{
  v2 = sub_18E326DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E314DD4(uint64_t a1)
{
  v2 = sub_18E326DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E314E10(uint64_t a1)
{
  v2 = sub_18E326D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E314E4C(uint64_t a1)
{
  v2 = sub_18E326D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E314E88(uint64_t a1)
{
  v2 = sub_18E326D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E314EC4(uint64_t a1)
{
  v2 = sub_18E326D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.TokenStoreError.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  sub_18E2706EC(&qword_1EABE3118, &qword_18E4B0D68);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E6530(v5, v32);
  sub_18E2706EC(&qword_1EABE3120, &qword_18E4B0D70);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C61D0();
  sub_18E2706EC(&qword_1EABE3128, &qword_18E4B0D78);
  sub_18E1C4EAC();
  v33 = v7;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C6BA8();
  v34 = sub_18E2706EC(&qword_1EABE3130, &qword_18E4B0D80);
  sub_18E1C4EAC();
  v10 = v9;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1E88C0();
  v12 = *(v0 + 16);
  v13 = *(v3 + 24);
  v14 = sub_18E1C5838();
  sub_18E1DD34C(v14, v15);
  sub_18E326CD4();
  sub_18E1E1F54();
  sub_18E2169D8(v16, v17, v18);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_18E1C5774();
      sub_18E326D7C();
      sub_18E1CFC98();
      v19 = sub_18E44F2AC();
      sub_18E224D78(v19, v20, v21);
      v22 = sub_18E200E78();
    }

    else
    {
      sub_18E1E8344();
      sub_18E326D28();
      sub_18E1CFC98();
      v26 = sub_18E44F2AC();
      sub_18E1E141C(v26, v27, v28);
      v22 = sub_18E232E3C();
    }

    v23(v22, v13);
    v29 = sub_18E1CBE3C();
    v31(v29, v30);
  }

  else
  {
    sub_18E326DD0();
    sub_18E212018();
    sub_18E44F2AC();
    sub_18E223F6C();
    sub_18E44F31C();
    v24 = sub_18E2352A8();
    v25(v24, v33);
    (*(v10 + 8))(v1, v34);
  }

  sub_18E233284();
  sub_18E1C6650();
}

void CatalogErrors.TokenStoreError.init(from:)()
{
  sub_18E1C62A0();
  v3 = v2;
  sub_18E2706EC(&qword_1EABE3158, &qword_18E4B0D88);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E1710(v5, v53);
  sub_18E2706EC(&qword_1EABE3160, &qword_18E4B0D90);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1E88C0();
  sub_18E2706EC(&qword_1EABE3168, &qword_18E4B0D98);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  v8 = sub_18E2706EC(&qword_1EABE3170, &qword_18E4B0DA0);
  sub_18E1C4EAC();
  v10 = v9;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C57AC();
  v12 = sub_18E2016D4();
  sub_18E1DD34C(v12, v13);
  sub_18E326CD4();
  sub_18E1E2A60();
  sub_18E44F4DC();
  if (v0)
  {
    goto LABEL_12;
  }

  v14 = sub_18E1E84D8();
  sub_18E1FF648(v14, 0);
  v16 = v8;
  if (v17 == v15 >> 1)
  {
    goto LABEL_11;
  }

  sub_18E1CF6B8();
  if (v23 == v24)
  {
    __break(1u);
    return;
  }

  v25 = sub_18E2349C8(v18, v19, v20, v21, v22);
  sub_18E200384(v25);
  sub_18E2372E8();
  if (v8 >> 1)
  {
    v16 = v10;
LABEL_11:
    v29 = sub_18E44F04C();
    sub_18E1C8558(v29, MEMORY[0x1E69E6B28]);
    sub_18E1E63CC();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v1 = &type metadata for CatalogErrors.TokenStoreError;
    v30 = sub_18E44F1BC();
    sub_18E1E14C8(v30);
    sub_18E1D0370();
    v31 = sub_18E220234();
    v32(v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = sub_18E1E3D20();
    v34(v33, v16);
    goto LABEL_12;
  }

  if (!v1)
  {
    sub_18E326DD0();
    sub_18E22410C();
    v36 = sub_18E44F1AC();
    if (v54)
    {
      v37 = sub_18E1E3D20();
      v38(v37, v10);
      swift_unknownObjectRelease();
      v35 = v3;
      goto LABEL_13;
    }

    sub_18E32F034(v36);
    sub_18E1D41EC();
    sub_18E243B14(v45);
    swift_unknownObjectRelease();
    v46 = sub_18E1D5EA8();
    v47(v46);
LABEL_22:
    v51 = sub_18E240E6C();
    v52(v51);
    sub_18E23ED64();
    goto LABEL_14;
  }

  if (v1 != 1)
  {
    sub_18E1E8344();
    sub_18E326D28();
    sub_18E1E67E0();
    v39 = sub_18E44F1AC();
    v35 = v3;
    if (v54)
    {
      v40 = sub_18E1E6C1C();
      v41(v40);
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    sub_18E224C88(v39);
    sub_18E1D41EC();
    sub_18E243B14(v48);
    swift_unknownObjectRelease();
    v49 = sub_18E1D5EA8();
    v50(v49);
    goto LABEL_22;
  }

  sub_18E1C5774();
  sub_18E326D7C();
  sub_18E1E67E0();
  v26 = sub_18E44F1AC();
  if (!v54)
  {
    v42 = sub_18E32F054(v26);
    sub_18E243B14(v42);
    swift_unknownObjectRelease();
    v43 = sub_18E1E37E4();
    v44(v43);
    goto LABEL_22;
  }

  v27 = sub_18E1E6C1C();
  v28(v27);
  swift_unknownObjectRelease();
LABEL_12:
  v35 = v3;
LABEL_13:
  sub_18E1C9934(v35);
LABEL_14:
  sub_18E221740();
  sub_18E1C6650();
}

uint64_t CatalogErrors.SideloadError.errorDescription.getter()
{
  v1 = sub_18E44E72C();
  v2 = sub_18E1C5B08(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C7FC8();
  v3 = sub_18E44EA7C();
  v4 = sub_18E1C5B08(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  sub_18E21137C();
  v5 = sub_18E44EA5C();
  v6 = sub_18E1C5B08(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  sub_18E2450F0();
  if (*(v0 + 16) && *(v0 + 16) == 1)
  {
    sub_18E44EA4C();
    sub_18E223750();
  }

  else
  {
    sub_18E44EA4C();
    sub_18E224424();
  }

  sub_18E44EA3C();
  sub_18E1CF9A0();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E2202F0();
  sub_18E44E71C();
  v7 = sub_18E1C5408();
  return sub_18E241788(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18E315940(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x800000018E468320 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5364696C61766E69 && a2 == 0xEF64616F6C656469;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000018E468340 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

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

uint64_t sub_18E315A6C(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001DLL;
  }

  if (a1 == 1)
  {
    return 0x5364696C61766E69;
  }

  return 0xD000000000000010;
}

uint64_t sub_18E315AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E315940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E315B10(uint64_t a1)
{
  v2 = sub_18E326E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E315B4C(uint64_t a1)
{
  v2 = sub_18E326E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E315B88(uint64_t a1)
{
  v2 = sub_18E326F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E315BC4(uint64_t a1)
{
  v2 = sub_18E326F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E315C00(uint64_t a1)
{
  v2 = sub_18E326ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E315C3C(uint64_t a1)
{
  v2 = sub_18E326ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E315C78(uint64_t a1)
{
  v2 = sub_18E326E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E315CB4(uint64_t a1)
{
  v2 = sub_18E326E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.SideloadError.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  sub_18E2706EC(&qword_1EABE3178, &qword_18E4B0DA8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E6530(v5, v32);
  sub_18E2706EC(&qword_1EABE3180, &qword_18E4B0DB0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C61D0();
  sub_18E2706EC(&qword_1EABE3188, &qword_18E4B0DB8);
  sub_18E1C4EAC();
  v33 = v7;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C6BA8();
  v34 = sub_18E2706EC(&qword_1EABE3190, &qword_18E4B0DC0);
  sub_18E1C4EAC();
  v10 = v9;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1E88C0();
  v12 = *(v0 + 16);
  v13 = *(v3 + 24);
  v14 = sub_18E1C5838();
  sub_18E1DD34C(v14, v15);
  sub_18E326E24();
  sub_18E1E1F54();
  sub_18E2169D8(v16, v17, v18);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_18E1C5774();
      sub_18E326ECC();
      sub_18E1CFC98();
      v19 = sub_18E44F2AC();
      sub_18E224D78(v19, v20, v21);
      v22 = sub_18E200E78();
    }

    else
    {
      sub_18E1E8344();
      sub_18E326E78();
      sub_18E1CFC98();
      v26 = sub_18E44F2AC();
      sub_18E1E141C(v26, v27, v28);
      v22 = sub_18E232E3C();
    }

    v23(v22, v13);
    v29 = sub_18E1CBE3C();
    v31(v29, v30);
  }

  else
  {
    sub_18E326F20();
    sub_18E212018();
    sub_18E44F2AC();
    sub_18E223F6C();
    sub_18E44F31C();
    v24 = sub_18E2352A8();
    v25(v24, v33);
    (*(v10 + 8))(v1, v34);
  }

  sub_18E233284();
  sub_18E1C6650();
}

void CatalogErrors.SideloadError.init(from:)()
{
  sub_18E1C62A0();
  v3 = v2;
  sub_18E2706EC(&qword_1EABE31B8, &qword_18E4B0DC8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E1710(v5, v53);
  sub_18E2706EC(&qword_1EABE31C0, &qword_18E4B0DD0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1E88C0();
  sub_18E2706EC(&qword_1EABE31C8, &qword_18E4B0DD8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  v8 = sub_18E2706EC(&qword_1EABE31D0, &qword_18E4B0DE0);
  sub_18E1C4EAC();
  v10 = v9;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C57AC();
  v12 = sub_18E2016D4();
  sub_18E1DD34C(v12, v13);
  sub_18E326E24();
  sub_18E1E2A60();
  sub_18E44F4DC();
  if (v0)
  {
    goto LABEL_12;
  }

  v14 = sub_18E1E84D8();
  sub_18E1FF648(v14, 0);
  v16 = v8;
  if (v17 == v15 >> 1)
  {
    goto LABEL_11;
  }

  sub_18E1CF6B8();
  if (v23 == v24)
  {
    __break(1u);
    return;
  }

  v25 = sub_18E2349C8(v18, v19, v20, v21, v22);
  sub_18E200384(v25);
  sub_18E2372E8();
  if (v8 >> 1)
  {
    v16 = v10;
LABEL_11:
    v29 = sub_18E44F04C();
    sub_18E1C8558(v29, MEMORY[0x1E69E6B28]);
    sub_18E1E63CC();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v1 = &type metadata for CatalogErrors.SideloadError;
    v30 = sub_18E44F1BC();
    sub_18E1E14C8(v30);
    sub_18E1D0370();
    v31 = sub_18E220234();
    v32(v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = sub_18E1E3D20();
    v34(v33, v16);
    goto LABEL_12;
  }

  if (!v1)
  {
    sub_18E326F20();
    sub_18E22410C();
    v36 = sub_18E44F1AC();
    if (v54)
    {
      v37 = sub_18E1E3D20();
      v38(v37, v10);
      swift_unknownObjectRelease();
      v35 = v3;
      goto LABEL_13;
    }

    sub_18E32F034(v36);
    sub_18E1D41EC();
    sub_18E243B14(v45);
    swift_unknownObjectRelease();
    v46 = sub_18E1D5EA8();
    v47(v46);
LABEL_22:
    v51 = sub_18E240E6C();
    v52(v51);
    sub_18E23ED64();
    goto LABEL_14;
  }

  if (v1 != 1)
  {
    sub_18E1E8344();
    sub_18E326E78();
    sub_18E1E67E0();
    v39 = sub_18E44F1AC();
    v35 = v3;
    if (v54)
    {
      v40 = sub_18E1E6C1C();
      v41(v40);
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    sub_18E224C88(v39);
    sub_18E1D41EC();
    sub_18E243B14(v48);
    swift_unknownObjectRelease();
    v49 = sub_18E1D5EA8();
    v50(v49);
    goto LABEL_22;
  }

  sub_18E1C5774();
  sub_18E326ECC();
  sub_18E1E67E0();
  v26 = sub_18E44F1AC();
  if (!v54)
  {
    v42 = sub_18E32F054(v26);
    sub_18E243B14(v42);
    swift_unknownObjectRelease();
    v43 = sub_18E1E37E4();
    v44(v43);
    goto LABEL_22;
  }

  v27 = sub_18E1E6C1C();
  v28(v27);
  swift_unknownObjectRelease();
LABEL_12:
  v35 = v3;
LABEL_13:
  sub_18E1C9934(v35);
LABEL_14:
  sub_18E221740();
  sub_18E1C6650();
}

uint64_t sub_18E3165C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000025 && 0x800000018E468360 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E316664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3165C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E316690(uint64_t a1)
{
  v2 = sub_18E326F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3166CC(uint64_t a1)
{
  v2 = sub_18E326F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E316708(uint64_t a1)
{
  v2 = sub_18E326FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E316744(uint64_t a1)
{
  v2 = sub_18E326FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.AvailabilityError.encode(to:)()
{
  sub_18E1C62A0();
  v1 = v0;
  sub_18E2706EC(&qword_1EABE31D8, &qword_18E4B0DE8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C6BA8();
  sub_18E2706EC(&qword_1EABE31E0, &qword_18E4B0DF0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1C5628(v1);
  sub_18E326F74();
  sub_18E1E6880();
  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E326FC8();
  sub_18E1CF320();
  sub_18E44F2AC();
  v4 = sub_18E1CF9A0();
  v5(v4);
  v6 = sub_18E1C89D0();
  v7(v6);
  sub_18E1C6650();
}

uint64_t CatalogErrors.AvailabilityError.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

void CatalogErrors.AvailabilityError.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  sub_18E2706EC(&qword_1EABE31F8, &qword_18E4B0DF8);
  sub_18E1C4EAC();
  v36 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v34 - v5;
  sub_18E2706EC(&unk_1EABE3200, &unk_18E4B0E00);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C61D0();
  v8 = v2[3];
  sub_18E1C5628(v2);
  sub_18E326F74();
  sub_18E1E2294();
  sub_18E44F4DC();
  if (v0)
  {
    goto LABEL_10;
  }

  v34[1] = v6;
  v35 = v2;
  v9 = sub_18E44F28C();
  sub_18E1FF648(v9, 0);
  if (v12 == v11 >> 1)
  {
    v36 = v10;
LABEL_9:
    v24 = sub_18E44F04C();
    sub_18E1C8558(v24, MEMORY[0x1E69E6B28]);
    sub_18E242D38();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v8 = &type metadata for CatalogErrors.AvailabilityError;
    sub_18E44F1BC();
    sub_18E2204C4();
    sub_18E1C82B8();
    v25 = sub_18E1E86F8();
    v26(v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = sub_18E1CF9A0();
    v28(v27);
    v2 = v35;
LABEL_10:
    v33 = v2;
    goto LABEL_11;
  }

  sub_18E1D4C80();
  if (v14 == v15)
  {
    __break(1u);
    return;
  }

  v16 = sub_18E23388C(v13);
  v17 = sub_18E200384(v16);
  v19 = v18;
  v21 = v20;
  swift_unknownObjectRelease();
  v22 = v19 == v21 >> 1;
  v23 = v35;
  v8 = v36;
  if (!v22)
  {
    v36 = v17;
    goto LABEL_9;
  }

  sub_18E326FC8();
  sub_18E212018();
  sub_18E44F1AC();
  swift_unknownObjectRelease();
  v29 = sub_18E234314();
  v30(v29);
  v31 = sub_18E1E1A28();
  v32(v31);
  v33 = v23;
LABEL_11:
  sub_18E1C9934(v33);
  sub_18E1E2968();
  sub_18E1C6650();
}

void CatalogErrors.QueryError.errorDescription.getter()
{
  sub_18E1C575C();
  v1 = sub_18E44E38C();
  sub_18E1C4EAC();
  v41 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  v6 = v5 - v4;
  v7 = sub_18E44E72C();
  v8 = sub_18E1C5B08(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C4EDC();
  sub_18E2217DC(v9);
  v10 = sub_18E44EA7C();
  v11 = sub_18E1C5B08(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C7FC8();
  v12 = sub_18E44EA5C();
  v13 = sub_18E1C5B08(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C4EDC();
  sub_18E2430D0();
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C4EDC();
  type metadata accessor for CatalogErrors.QueryError(0);
  sub_18E1C82B8();
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C4EDC();
  v18 = v17 - v16;
  v19 = sub_18E1E8CBC();
  sub_18E32703C(v19, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08);
      (*(v41 + 32))(v6, v18, v1);
      sub_18E44EA4C();
      v35 = sub_18E44EA3C();
      MEMORY[0x193ACBA90](v35);
      sub_18E44EA2C();

      sub_18E221FC8();
      sub_18E1C6004();
      sub_18E44EA2C();

      sub_18E209314();
      sub_18E44EA6C();
      sub_18E1E2AF8();
      sub_18E44E71C();
      sub_18E1C9564();
      sub_18E241788(v36, v37, v38, v39, v0, v40);
      sub_18E1E34A8();
      v28 = sub_18E1CBE3C();
      goto LABEL_5;
    case 2u:
    case 3u:
    case 4u:
      sub_18E1E1B90();
      sub_18E44EA4C();
      sub_18E44EA3C();
      sub_18E1E3DF8();
      sub_18E44EA2C();

      sub_18E221FC8();
      sub_18E1DD5A0();
      sub_18E44EA2C();

      sub_18E209314();
      sub_18E44EA6C();
      sub_18E1E2AF8();
      sub_18E44E71C();
      sub_18E1C9564();
      sub_18E241788(v30, v31, v32, v33, v0, v34);
      sub_18E1E34A8();
      break;
    default:
      sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      v21 = sub_18E1E1BDC();
      v22(v21);
      sub_18E44EA4C();
      sub_18E1E32F0();
      sub_18E44EA3C();
      sub_18E44E45C();
      sub_18E44EA2C();

      sub_18E221FC8();
      sub_18E1E3DF8();
      sub_18E44EA2C();

      sub_18E209314();
      sub_18E44EA6C();
      sub_18E1E2AF8();
      sub_18E44E71C();
      sub_18E1C9564();
      sub_18E241788(v23, v24, v25, v26, v0, v27);
      sub_18E1E34A8();
      v28 = sub_18E1C6004();
LABEL_5:
      v29(v28);
      break;
  }

  sub_18E1C5BFC();
  sub_18E1C5544();
}

uint64_t sub_18E31716C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004952;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000018E468390 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000018E4683B0 == a2;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4164696C61766E69 && a2 == 0xEF746E656D756772;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x800000018E4683D0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E44F3CC();

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

unint64_t sub_18E31732C(char a1)
{
  result = 0x5564696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x4164696C61766E69;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E3173E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31716C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E317410(uint64_t a1)
{
  v2 = sub_18E3270A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31744C(uint64_t a1)
{
  v2 = sub_18E3270A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E317488(uint64_t a1)
{
  v2 = sub_18E327148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3174C4(uint64_t a1)
{
  v2 = sub_18E327148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E317500(uint64_t a1)
{
  v2 = sub_18E3270F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31753C(uint64_t a1)
{
  v2 = sub_18E3270F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E317578(uint64_t a1)
{
  v2 = sub_18E327244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3175B4(uint64_t a1)
{
  v2 = sub_18E327244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E3175F0(uint64_t a1)
{
  v2 = sub_18E3271F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31762C(uint64_t a1)
{
  v2 = sub_18E3271F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E317668(uint64_t a1)
{
  v2 = sub_18E32719C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3176A4(uint64_t a1)
{
  v2 = sub_18E32719C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.QueryError.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E2706EC(&qword_1EABE3218, &qword_18E4B0E18);
  sub_18E1C4EAC();
  v70 = v2;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAF50();
  sub_18E2706EC(&qword_1EABE3220, &qword_18E4B0E20);
  sub_18E1C4EAC();
  v69 = v4;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAF50();
  sub_18E2706EC(&qword_1EABE3228, &qword_18E4B0E28);
  sub_18E1C4EAC();
  v68 = v6;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CAF50();
  sub_18E2706EC(&qword_1EABE3230, &qword_18E4B0E30);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CAF50();
  v67 = sub_18E44E38C();
  sub_18E1C4EAC();
  v72 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  v71 = v12 - v11;
  v66 = sub_18E2706EC(&qword_1EABE3238, &qword_18E4B0E38);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C61D0();
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C4EDC();
  type metadata accessor for CatalogErrors.QueryError(0);
  sub_18E1C82B8();
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C4EDC();
  v18 = v17 - v16;
  sub_18E2706EC(&qword_1EABE3240, &qword_18E4B0E40);
  sub_18E1C4EAC();
  v73 = v19;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_18E1D03EC();
  sub_18E1DD34C(v21, v22);
  v23 = sub_18E3270A0();
  sub_18E2169D8(&type metadata for CatalogErrors.QueryError.CodingKeys, &type metadata for CatalogErrors.QueryError.CodingKeys, v23);
  sub_18E32703C(v0, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08);
      v47 = sub_18E1C89D0();
      v48(v47);
      sub_18E3271F0();
      v26 = v73;
      sub_18E1DD270();
      sub_18E2247D8(v49, v50, v51, v52);
      sub_18E1CF884();
      sub_18E327298(v53);
      sub_18E44F35C();
      if (v1)
      {

        v54 = sub_18E221ED0();
        v55(v54);
        v56 = sub_18E1E2898();
        v57(v56);
        goto LABEL_16;
      }

      sub_18E44F31C();

      v64 = sub_18E221ED0();
      v65(v64);
      (*(v72 + 8))(v71, v67);
      v32 = sub_18E232E3C();
      v61 = v73;
      goto LABEL_18;
    case 2u:
      sub_18E32719C();
      v26 = v73;
      sub_18E1DD270();
      sub_18E2247D8(v39, v40, v41, v42);
      sub_18E1E2088();
      v38 = v68;
      sub_18E207AE4();
      sub_18E44F31C();
      if (!v1)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    case 3u:
      sub_18E327148();
      v26 = v73;
      sub_18E1DD270();
      sub_18E2247D8(v43, v44, v45, v46);
      sub_18E1E2088();
      v38 = v69;
      sub_18E207AE4();
      sub_18E44F31C();
      if (v1)
      {
        goto LABEL_9;
      }

LABEL_13:

      sub_18E221ED0();
      sub_18E207AE4();
      sub_18E44F31C();
      goto LABEL_14;
    case 4u:
      sub_18E3270F4();
      v26 = v73;
      sub_18E1DD270();
      sub_18E2247D8(v34, v35, v36, v37);
      sub_18E1E2088();
      v38 = v70;
      sub_18E207AE4();
      sub_18E44F31C();
      if (v1)
      {
LABEL_9:
      }

      else
      {

        sub_18E237084();
        sub_18E221ED0();
        sub_18E207AE4();
        sub_18E44F31C();
      }

LABEL_14:

      v58 = sub_18E23B48C();
      v60 = v38;
      goto LABEL_15;
    default:
      sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      v24 = sub_18E1E3DF8();
      v25(v24);
      sub_18E327244();
      v26 = v73;
      sub_18E1DD270();
      sub_18E44F2AC();
      sub_18E21D12C();
      sub_18E327298(v27);
      sub_18E44F35C();
      if (v1)
      {

        v28 = sub_18E1E3B24();
        v29(v28, v66);
        v30 = sub_18E1E1A28();
        v31(v30);
        v32 = sub_18E221F34();
      }

      else
      {
        sub_18E44F31C();

        v62 = sub_18E1E3B24();
        v63(v62, v66);
        v58 = sub_18E2352A8();
LABEL_15:
        v59(v58, v60);
LABEL_16:
        v32 = sub_18E232E3C();
      }

      v61 = v26;
LABEL_18:
      v33(v32, v61);
      sub_18E233284();
      sub_18E1C6650();
      return;
  }
}

void CatalogErrors.QueryError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_18E1C62A0();
  a26 = v29;
  a27 = v30;
  v189 = v27;
  v32 = v31;
  v183 = v33;
  v178 = sub_18E2706EC(&qword_1EABE3288, &qword_18E4B0E48);
  sub_18E1C4EAC();
  v176 = v34;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1CAF50();
  v182 = v36;
  v177 = sub_18E2706EC(&qword_1EABE3290, &qword_18E4B0E50);
  sub_18E1C4EAC();
  v174 = v37;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1CAF50();
  v181 = v39;
  v173 = sub_18E2706EC(&qword_1EABE3298, &qword_18E4B0E58);
  sub_18E1C4EAC();
  v170 = v40;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1CAF50();
  v180 = v42;
  v169 = sub_18E2706EC(&qword_1EABE32A0, &qword_18E4B0E60);
  sub_18E1C4EAC();
  v175 = v43;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v44);
  sub_18E1CAF50();
  v179 = v45;
  sub_18E2706EC(&qword_1EABE32A8, &qword_18E4B0E68);
  sub_18E1C4EAC();
  v171 = v47;
  v172 = v46;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v48);
  sub_18E1E6530(v49, v160);
  v187 = sub_18E2706EC(&qword_1EABE32B0, &qword_18E4B0E70);
  sub_18E1C4EAC();
  v184 = v50;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v51);
  sub_18E1C61D0();
  Error = type metadata accessor for CatalogErrors.QueryError(0);
  sub_18E1C82B8();
  MEMORY[0x1EEE9AC00](v52);
  sub_18E1C64E0();
  v168 = v53;
  sub_18E1C6668();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v160 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = (&v160 - v59);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v160 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v160 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v160 - v67;
  v188 = v32;
  v69 = sub_18E1D03EC();
  sub_18E1DD34C(v69, v70);
  sub_18E3270A0();
  sub_18E1E2294();
  v71 = v189;
  sub_18E44F4DC();
  if (v71)
  {
    goto LABEL_11;
  }

  v163 = v60;
  v164 = v57;
  v166 = v63;
  v165 = v66;
  v189 = v68;
  v72 = v187;
  v73 = sub_18E44F28C();
  sub_18E1FF648(v73, 0);
  if (v75 == v74 >> 1)
  {
    v76 = Error;
LABEL_10:
    v94 = sub_18E44F04C();
    sub_18E1C8558(v94, MEMORY[0x1E69E6B28]);
    v96 = v95;
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v96 = v76;
    v97 = sub_18E44F1BC();
    sub_18E1E14C8(v97);
    sub_18E1D0370();
    v98 = sub_18E220234();
    v99(v98);
    swift_willThrow();
    swift_unknownObjectRelease();
    v100 = sub_18E1E3D20();
    v101(v100, v72);
LABEL_11:
    v28 = v188;
LABEL_12:
    sub_18E1C9934(v28);
    sub_18E1C6650();
    return;
  }

  sub_18E1CFAD8();
  v167 = v28;
  v161 = 0;
  v76 = Error;
  if (v80 < (v79 >> 1))
  {
    v81 = *(v78 + v77);
    v82 = sub_18E200384(v77 + 1);
    v84 = v83;
    v86 = v85;
    swift_unknownObjectRelease();
    v162 = v82;
    v87 = v189;
    if (v84 == v86 >> 1)
    {
      v88 = v187;
      v89 = v161;
      switch(v81)
      {
        case 1:
          v193[0] = 1;
          sub_18E3271F0();
          sub_18E1D7E4C(&type metadata for CatalogErrors.QueryError.InvalidURIComponentsCodingKeys, v193);
          sub_18E44E38C();
          v192[2] = 0;
          sub_18E1CF884();
          sub_18E327298(v114);
          v115 = v169;
          sub_18E44F26C();
          v192[1] = 1;
          v185 = sub_18E44F22C();
          sub_18E1D002C();
          v182 = v150;
          swift_unknownObjectRelease();
          v151 = sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08);
          v91 = v166;
          v152 = (v166 + *(v151 + 48));
          v153 = sub_18E1E3D20();
          v154(v153, v115);
          v155 = sub_18E1CA2D0();
          v156(v155);
          v157 = v182;
          *v152 = v185;
          v152[1] = v157;
          sub_18E1E332C();
          swift_storeEnumTagMultiPayload();
          v28 = v188;
          v87 = v189;
          goto LABEL_25;
        case 2:
          a11 = 2;
          sub_18E32719C();
          sub_18E1D7E4C(&type metadata for CatalogErrors.QueryError.InvalidURIStringCodingKeys, &a11);
          sub_18E1E8A74();
          sub_18E44F22C();
          if (v86)
          {
            sub_18E1D002C();
            swift_unknownObjectRelease();
            v107 = sub_18E1E37E4();
            goto LABEL_20;
          }

          sub_18E1E63CC();
          v193[1] = 1;
          v132 = sub_18E44F22C();
          sub_18E1D002C();
          v185 = v133;
          swift_unknownObjectRelease();
          v134 = sub_18E1E11B4();
          v135(v134);
          v136 = sub_18E1E396C();
          v137(v136);
          v91 = v163;
          *v163 = v87;
          v91[1] = v89;
          v138 = v185;
          v91[2] = v132;
          v91[3] = v138;
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        case 3:
          a14 = 3;
          sub_18E327148();
          v110 = v181;
          sub_18E1D7E4C(&type metadata for CatalogErrors.QueryError.InvalidArgumentCodingKeys, &a14);
          sub_18E1E8A74();
          a13 = 0;
          v111 = v177;
          v112 = sub_18E44F22C();
          if (!v86)
          {
            v122 = v112;
            v123 = v113;
            a12 = 1;
            v124 = v110;
            v125 = sub_18E44F22C();
            v126 = (v174 + 8);
            v185 = v125;
            sub_18E1D002C();
            v184 = v139;
            swift_unknownObjectRelease();
            (*v126)(v124, v111);
            v140 = sub_18E1E396C();
            v141(v140);
            v91 = v164;
            *v164 = v122;
            v91[1] = v123;
            v142 = v184;
            v91[2] = v185;
            v91[3] = v142;
            swift_storeEnumTagMultiPayload();
            goto LABEL_25;
          }

          sub_18E1D002C();
          swift_unknownObjectRelease();
          v107 = sub_18E232E3C();
          v108 = v111;
LABEL_20:
          v109(v107, v108);
          (*(v184 + 8))(v167, v88);
          break;
        case 4:
          a17 = 4;
          sub_18E3270F4();
          v102 = v182;
          sub_18E1D7E4C(&type metadata for CatalogErrors.QueryError.InvalidQueryItemCodingKeys, &a17);
          a16 = 0;
          v103 = v178;
          sub_18E44F22C();
          sub_18E1E8A74();
          v117 = v116;
          v119 = v118;
          sub_18E237084();
          v120 = sub_18E44F22C();
          v121 = (v176 + 8);
          v185 = v120;
          sub_18E1D002C();
          v184 = v127;
          swift_unknownObjectRelease();
          (*v121)(v102, v103);
          v128 = sub_18E1E396C();
          v129(v128);
          v130 = v168;
          *v168 = v117;
          v130[1] = v119;
          v131 = v184;
          v130[2] = v185;
          v130[3] = v131;
          swift_storeEnumTagMultiPayload();
          v91 = v130;
          goto LABEL_24;
        default:
          v192[0] = 0;
          sub_18E327244();
          sub_18E1D7E4C(&type metadata for CatalogErrors.QueryError.InvalidURICodingKeys, v192);
          sub_18E1E8A74();
          sub_18E44E54C();
          v191 = 0;
          sub_18E21D12C();
          sub_18E327298(v90);
          v91 = v165;
          v92 = v172;
          sub_18E44F26C();
          if (v86)
          {
            sub_18E1D002C();
            swift_unknownObjectRelease();
            v93 = sub_18E1E3D20();
            v104(v93, v92);
            v105 = sub_18E1CA2D0();
            v106(v105);
          }

          else
          {
            v190 = 1;
            v182 = sub_18E44F22C();
            sub_18E1D002C();
            v181 = v143;
            swift_unknownObjectRelease();
            v144 = (v91 + *(sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10) + 48));
            v145 = sub_18E1E3D20();
            v146(v145, v92);
            v147 = sub_18E1CA2D0();
            v148(v147);
            v149 = v181;
            *v144 = v182;
            v144[1] = v149;
            swift_storeEnumTagMultiPayload();
LABEL_24:
            v87 = v189;
LABEL_25:
            sub_18E3272DC(v91, v87);
            v158 = sub_18E1E3DF8();
            sub_18E3272DC(v158, v159);
          }

          break;
      }

      goto LABEL_12;
    }

    v72 = v187;
    goto LABEL_10;
  }

  __break(1u);
}

void CatalogErrors.VariantError.errorDescription.getter()
{
  sub_18E20052C();
  v0 = sub_18E44E72C();
  v1 = sub_18E1C5B08(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C7FC8();
  v2 = sub_18E44EA7C();
  v3 = sub_18E1C5B08(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  sub_18E21137C();
  v4 = sub_18E44EA5C();
  v5 = sub_18E1C5B08(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E2430D0();
  sub_18E44EA4C();
  sub_18E44EA3C();
  sub_18E1E3DF8();
  sub_18E44EA2C();
  sub_18E221FC8();
  sub_18E1DD5A0();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E20173C();
  sub_18E44E71C();
  v6 = sub_18E1C5408();
  sub_18E241788(v6, v7, v8, v9, v10, v11);
  sub_18E1E1DA0();
}

uint64_t sub_18E318EF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5664696C61766E69 && a2 == 0xEE00746E61697261)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E318F94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18E2201D0(12383) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E2201D0(12639);

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

uint64_t sub_18E319038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E318EF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E319064(uint64_t a1)
{
  v2 = sub_18E327340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3190A0(uint64_t a1)
{
  v2 = sub_18E327340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E3190DC(uint64_t a1)
{
  v2 = sub_18E327394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E319118(uint64_t a1)
{
  v2 = sub_18E327394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.VariantError.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v3 = sub_18E2706EC(&qword_1EABE32C8, &qword_18E4B0E78);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C6BA8();
  v5 = sub_18E2706EC(&qword_1EABE32D0, &qword_18E4B0E80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAFF0();
  sub_18E1E1D50(v2);
  sub_18E327340();
  sub_18E1E6880();
  sub_18E44F4EC();
  sub_18E327394();
  sub_18E1CF320();
  sub_18E44F2AC();
  sub_18E1E26FC();
  sub_18E1D047C();
  sub_18E44F31C();
  if (!v0)
  {
    sub_18E224E3C();
    sub_18E1D047C();
    sub_18E44F31C();
  }

  v7 = sub_18E1D42B0();
  v8(v7, v3);
  v9 = sub_18E1EA56C();
  v10(v9, v5);
  sub_18E1E2968();
  sub_18E1C6650();
}

void CatalogErrors.VariantError.init(from:)()
{
  sub_18E1C62A0();
  sub_18E2236EC();
  sub_18E2706EC(&qword_1EABE32E8, &qword_18E4B0E88);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  v4 = sub_18E2706EC(&qword_1EABE32F0, &qword_18E4B0E90);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C6BA8();
  v6 = v1[4];
  v7 = sub_18E1E25B0();
  sub_18E1DD34C(v7, v8);
  sub_18E327340();
  sub_18E1E2CC0();
  sub_18E44F4DC();
  if (v0)
  {
    goto LABEL_9;
  }

  v9 = sub_18E221D8C();
  sub_18E1FF648(v9, 0);
  v11 = v4;
  if (v12 == v10 >> 1)
  {
LABEL_8:
    v17 = sub_18E44F04C();
    sub_18E1C8558(v17, MEMORY[0x1E69E6B28]);
    sub_18E242D38();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v6 = &type metadata for CatalogErrors.VariantError;
    sub_18E224004();
    sub_18E44F1BC();
    sub_18E2204C4();
    sub_18E1C82B8();
    v18 = sub_18E1E86F8();
    v19(v18);
    swift_willThrow();
    swift_unknownObjectRelease();
    v20 = sub_18E2352A8();
    v21(v20, v11);
    v1 = v27;
LABEL_9:
    v26 = v1;
    goto LABEL_10;
  }

  sub_18E1D4C80();
  if (v14 == v15)
  {
    __break(1u);
    return;
  }

  v16 = sub_18E224708(v13);
  sub_18E200384(v16);
  sub_18E232FF4();
  if (v6 != (v4 >> 1))
  {
    v11 = v2;
    goto LABEL_8;
  }

  sub_18E327394();
  sub_18E212018();
  sub_18E44F1AC();
  sub_18E223208();
  sub_18E1C5774();
  sub_18E32F074();
  sub_18E1E85F8();
  swift_unknownObjectRelease();
  v22 = sub_18E1CFF20();
  v23(v22);
  v24 = sub_18E1E1A28();
  v25(v24);
  v26 = sub_18E1E2E94();
LABEL_10:
  sub_18E1C9934(v26);
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t CatalogErrors.DownloadError.errorDescription.getter()
{
  v0 = sub_18E44E72C();
  v1 = sub_18E1C5B08(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C7FC8();
  v2 = sub_18E44EA7C();
  v3 = sub_18E1C5B08(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  sub_18E21137C();
  v4 = sub_18E44EA5C();
  v5 = sub_18E1C5B08(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E2430D0();
  sub_18E44EA4C();
  sub_18E44EA3C();
  sub_18E1E3DF8();
  sub_18E44EA2C();
  sub_18E209314();
  sub_18E20173C();
  sub_18E44E71C();
  sub_18E1C5408();
  return sub_18E44EAEC();
}

uint64_t sub_18E3197EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000018E4683F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E31988C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3197EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E3198B8(uint64_t a1)
{
  v2 = sub_18E3273E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E3198F4(uint64_t a1)
{
  v2 = sub_18E3273E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E319930(uint64_t a1)
{
  v2 = sub_18E32743C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31996C(uint64_t a1)
{
  v2 = sub_18E32743C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.DownloadError.encode(to:)()
{
  sub_18E1C62A0();
  v1 = v0;
  sub_18E2706EC(&qword_1EABE32F8, &qword_18E4B0E98);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C6BA8();
  sub_18E2706EC(&qword_1EABE3300, &qword_18E4B0EA0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1DD34C(v1, v1[3]);
  sub_18E3273E8();
  sub_18E1E6880();
  sub_18E44F4EC();
  sub_18E32743C();
  sub_18E1CF320();
  sub_18E44F2AC();
  sub_18E223F6C();
  sub_18E44F31C();
  v4 = sub_18E1E1B1C();
  v5(v4);
  v6 = sub_18E1CAE88();
  v7(v6);
  sub_18E233284();
  sub_18E1C6650();
}

void CatalogErrors.DownloadError.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E8AB4();
  v3 = sub_18E2706EC(&qword_1EABE3318, &qword_18E4B0EA8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  v5 = sub_18E2706EC(&qword_1EABE3320, &qword_18E4B0EB0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C6BA8();
  v7 = v0[4];
  sub_18E1DD34C(v0, v0[3]);
  sub_18E3273E8();
  sub_18E1E2CC0();
  sub_18E44F4DC();
  if (v1)
  {
    goto LABEL_8;
  }

  v8 = sub_18E1E144C();
  sub_18E1FF648(v8, 0);
  if (v10 == v9 >> 1)
  {
    goto LABEL_7;
  }

  sub_18E1D4C80();
  if (v12 == v13)
  {
    __break(1u);
    return;
  }

  v2 = v5;
  v14 = sub_18E23388C(v11);
  sub_18E200384(v14);
  sub_18E1E598C();
  if (v7 != v5 >> 1)
  {
LABEL_7:
    v16 = sub_18E44F04C();
    sub_18E1C8558(v16, MEMORY[0x1E69E6B28]);
    sub_18E242D38();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v2 = &type metadata for CatalogErrors.DownloadError;
    sub_18E224004();
    sub_18E44F1BC();
    sub_18E2204C4();
    sub_18E1C82B8();
    v17 = sub_18E1E86F8();
    v18(v17);
    swift_willThrow();
    swift_unknownObjectRelease();
    v19 = sub_18E1D42B0();
    v20(v19, v5);
    v0 = v29;
LABEL_8:
    v28 = v0;
    goto LABEL_9;
  }

  sub_18E32743C();
  sub_18E1D5FCC();
  v15 = sub_18E44F1AC();
  v21 = sub_18E32F014(v15);
  v23 = v22;
  swift_unknownObjectRelease();
  v24 = sub_18E1E1994();
  v25(v24);
  v26 = sub_18E1E1B1C();
  v27(v26);
  *v3 = v21;
  v3[1] = v23;
  v28 = v29;
LABEL_9:
  sub_18E1C9934(v28);
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t CatalogErrors.RequestResourceError.descriptionWithoutUnderlying.getter()
{
  result = CatalogErrors.RequestResourceError.errorDescription.getter();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t CatalogErrors.RequestResourceError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E698C2A8];
  sub_18E44E7AC();
  sub_18E1C82B8();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_18E319F8C(uint64_t a1)
{
  v2 = sub_18E32ED48();

  return MEMORY[0x1EEDED5B8](a1, v2);
}

ModelCatalog::InferenceProvider __swiftcall InferenceProvider.init(id:hostedOnServerOverride:)(ModelCatalog::InferenceProvider id, Swift::Bool_optional hostedOnServerOverride)
{
  *v2 = id.id;
  *(v2 + 16) = hostedOnServerOverride;
  id.hostedOnServerOverride = hostedOnServerOverride;
  return id;
}

uint64_t static InferenceProvider.TokenGenerationInference.getter()
{
  if (qword_1ED6A89E8 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(&qword_1ED6A89F0);
}

uint64_t static InferenceProvider.VisualGenerationInference.getter()
{
  if (qword_1ED6A85D0 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A85D8);
}

uint64_t static InferenceProvider.HostInference.getter()
{
  if (qword_1ED6A8958 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(&qword_1ED6A8960);
}

uint64_t static InferenceProvider.AJAXInferenceProvider.getter()
{
  if (qword_1ED6A8610 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A8618);
}

uint64_t static InferenceProvider.PrivateMLClient.getter()
{
  if (qword_1ED6A8918 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A8920);
}

uint64_t static InferenceProvider.SafetyGenerationInference.getter()
{
  if (qword_1ED6A85F0 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(&qword_1ED6A85F8);
}

uint64_t static InferenceProvider.ExternalLanguageModelProvider.getter()
{
  if (qword_1ED6A89C0 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A89D0);
}

uint64_t static InferenceProvider.AlchemistInferenceProvider.getter()
{
  if (qword_1ED6A8588 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A8598);
}

uint64_t static InferenceProvider.CoreMotionFoundationModelInferenceProvider.getter()
{
  if (qword_1ED6A8998 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A89A0);
}

uint64_t static InferenceProvider.CoreMotionPednetV1InferenceProvider.getter()
{
  if (qword_1ED6A89B8 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A85B8);
}

uint64_t static InferenceProvider.GenerativeExperiencesInferenceProvider.getter()
{
  if (qword_1ED6A8A88 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1ED6A8980);
}

uint64_t static InferenceProvider.EmbeddingPreprocessorInferenceProvider.getter()
{
  if (qword_1EABE0D00 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(qword_1EABE2F78);
}

uint64_t static InferenceProvider.SIDInferenceProvider.getter()
{
  if (qword_1ED6A8630 != -1)
  {
    swift_once();
  }

  sub_18E1C5DB8(&qword_1ED6A8640);
}

unint64_t InferenceProvider.InferenceProviderOptions.rawValue.getter()
{
  result = 0x666E692D74736F68;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      return result;
    case 3:
      result = 2019650145;
      break;
    case 4:
      sub_18E1E1894();
      result = v4 - 10;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 7:
      sub_18E1E1894();
      result = v7 + 1;
      break;
    case 8:
      sub_18E1E1894();
      result = v9 + 15;
      break;
    case 9:
      sub_18E1E1894();
      result = v6 + 8;
      break;
    case 0xA:
      sub_18E1E1894();
      result = v8 + 21;
      break;
    case 0xB:
      sub_18E1E1894();
      result = v3 + 14;
      break;
    case 0xC:
      sub_18E1E1894();
      result = v5 - 5;
      break;
    default:
      sub_18E1E1894();
      result = v2 - 1;
      break;
  }

  return result;
}

unint64_t sub_18E31A758@<X0>(unint64_t *a1@<X8>)
{
  result = InferenceProvider.InferenceProviderOptions.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static InferenceProvider.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_18E32EF70(a1);
  v6 = *(v5 + 16);
  v7 = *(v4 + 16);
  v8 = v3 == *v4 && *(v5 + 8) == *(v4 + 8);
  if (v8 || (v9 = sub_18E44F3CC(), result = 0, (v9 & 1) != 0))
  {
    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_18E31A800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000018E468410 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

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

uint64_t sub_18E31A8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31A800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31A8F0(uint64_t a1)
{
  v2 = sub_18E1EA49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31A92C(uint64_t a1)
{
  v2 = sub_18E1EA49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProvider.hash(into:)()
{
  sub_18E1E1A34();
  v1 = *(v0 + 16);
  sub_18E44EB4C();
  if (v1 != 2)
  {
    sub_18E24050C();
  }

  return sub_18E44F4AC();
}

uint64_t InferenceProvider.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_18E1CFCDC(a1);
  sub_18E1D44B4();
  sub_18E44EB4C();
  if (v2 != 2)
  {
    sub_18E44F4AC();
  }

  sub_18E44F4AC();
  return sub_18E44F4CC();
}

uint64_t sub_18E31AA2C@<X0>(uint64_t *a1@<X8>)
{
  result = InferenceProvider.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E31AA5C(uint64_t a1)
{
  sub_18E44F48C();
  InferenceProvider.hash(into:)();
  return sub_18E44F4CC();
}

double sub_18E31AAB0()
{
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_18E4B0C40;
  *(v0 + 32) = 1;
  *(v0 + 40) = 808335409;
  *(v0 + 48) = 0xE400000000000000;
  *(v0 + 56) = 2;
  *(v0 + 64) = 808334641;
  *(v0 + 72) = 0xE400000000000000;
  *(v0 + 80) = 4;
  *(v0 + 88) = 808335409;
  *(v0 + 96) = 0xE400000000000000;
  *(v0 + 104) = 3;
  *(v0 + 112) = 808333617;
  *(v0 + 120) = 0xE400000000000000;
  *(v0 + 128) = 5;
  *(v0 + 136) = 3157554;
  *(v0 + 144) = 0xE300000000000000;
  qword_1EABE2F98 = v0;
  return result;
}

uint64_t ResourceConfiguration.assetSubscriptionInformation.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v7[0] = *(v1 + 88);
  v7[1] = v2;
  v8[0] = *(v1 + 120);
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 130);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_18E2F66D4(v7, &v6, &qword_1EABE2FB8, &qword_18E4B0C70);
}

uint64_t ResourceConfiguration.init(resourceType:id:dependentResourceIDs:preconditions:runtimeInformation:assetBacked:assetSubscriptionInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, _OWORD *a10)
{
  if (qword_1EABE0D08 != -1)
  {
    sub_18E1C6C24();
    v21 = v20;
    swift_once();
    a7 = v21;
  }

  v18 = a10[1];
  *&__src[7] = *a10;
  *&__src[23] = v18;
  *&__src[39] = a10[2];
  *&__src[49] = *(a10 + 42);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0xE000000000000000;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = 1;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8 & 1;
  memcpy((a9 + 81), __src, 0x41uLL);
  sub_18E224FA0();
}

void *ResourceConfiguration.init(resourceType:sourceName:id:dependentResourceIDs:preconditions:runtimeInformation:assetBacked:assetSubscriptionInformation:tags:platforms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, uint64_t a13, uint64_t a14)
{
  v15 = a12[1];
  *&__src[7] = *a12;
  *&__src[23] = v15;
  *&__src[39] = a12[2];
  *&__src[49] = *(a12 + 42);
  v16 = sub_18E22453C(a1, a2, a3, a4, a5, a6, a7, a8);
  result = memcpy(v16, __src, 0x41uLL);
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = a13;
  *(a9 + 176) = 0;
  *(a9 + 184) = a14;
  *(a9 + 192) = 0;
  return result;
}

__n128 ResourceConfiguration.init(resourceType:sourceName:id:dependentResourceIDs:preconditions:runtimeInformation:assetBacked:assetSubscriptionInformation:tags:useCases:platforms:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, __n128 a13, uint64_t a14)
{
  v15 = a12[1];
  *&__src[7] = *a12;
  *&__src[23] = v15;
  *&__src[39] = a12[2];
  *&__src[49] = *(a12 + 42);
  v16 = sub_18E22453C(a1, a2, a3, a4, a5, a6, a7, a8);
  memcpy(v16, __src, 0x41uLL);
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  result = a13;
  *(a9 + 168) = a13;
  *(a9 + 184) = a14;
  *(a9 + 192) = 0;
  return result;
}

__n128 ResourceConfiguration.init(resourceType:sourceName:id:dependentResourceIDs:preconditions:runtimeInformation:assetBacked:assetSubscriptionInformation:tags:useCases:platforms:dynamicVariants:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, __n128 a13, uint64_t a14, char a15)
{
  v16 = a12[1];
  *&__src[7] = *a12;
  *&__src[23] = v16;
  *&__src[39] = a12[2];
  *&__src[49] = *(a12 + 42);
  v17 = sub_18E22453C(a1, a2, a3, a4, a5, a6, a7, a8);
  memcpy(v17, __src, 0x41uLL);
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  result = a13;
  *(a9 + 168) = a13;
  *(a9 + 184) = a14;
  *(a9 + 192) = a15;
  return result;
}

uint64_t sub_18E31B06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xEC00000065707954;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656372756F73 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000018E468430 == a2;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64616F6C65646973 && a2 == 0xEA00000000006465;
          if (v9 || (sub_18E44F3CC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69646E6F63657270 && a2 == 0xED0000736E6F6974;
            if (v10 || (sub_18E44F3CC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000018E467AB0 == a2;
              if (v11 || (sub_18E44F3CC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6361427465737361 && a2 == 0xEB0000000064656BLL;
                if (v12 || (sub_18E44F3CC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001CLL && 0x800000018E468450 == a2;
                  if (v13 || (sub_18E44F3CC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E49646574736F68 && a2 == 0xED00007465737341;
                    if (v14 || (sub_18E44F3CC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1936154996 && a2 == 0xE400000000000000;
                      if (v15 || (sub_18E44F3CC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7365736143657375 && a2 == 0xE800000000000000;
                        if (v16 || (sub_18E44F3CC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6D726F6674616C70 && a2 == 0xE900000000000073;
                          if (v17 || (sub_18E44F3CC() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x5663696D616E7964 && a2 == 0xEF73746E61697261)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_18E44F3CC();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

uint64_t sub_18E31B4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31B06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31B4F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E31B4C8();
  *a1 = result;
  return result;
}

uint64_t sub_18E31B520(uint64_t a1)
{
  v2 = sub_18E1E9F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31B55C(uint64_t a1)
{
  v2 = sub_18E1E9F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResourceConfiguration.hash(into:)()
{
  sub_18E1E1A34();
  v1 = *(v0 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  sub_18E44EB4C();
  sub_18E1C5BFC();
  sub_18E44EB4C();
  sub_18E1CF50C();
  sub_18E44EB4C();
  sub_18E1E6BB0();
  sub_18E2917A4();
  sub_18E44F4AC();
  sub_18E291BEC();
  if (v1)
  {
    sub_18E24050C();
    sub_18E291A0C();
  }

  else
  {
    sub_18E232EFC();
  }

  sub_18E44F4AC();
  if (v7)
  {
    v14 = *(v0 + 104);
    *v15 = *(v0 + 120);
    *&v15[10] = *(v0 + 130);
    *&v13 = v6;
    *(&v13 + 1) = v7;
    sub_18E24050C();
    v16[0] = v6;
    v16[1] = v7;
    v2 = *(v0 + 120);
    v17 = *(v0 + 104);
    v18[0] = v2;
    *(v18 + 10) = *(v0 + 130);
    sub_18E1FFAA0(v16, v19);
    AssetSubscriptionInformation.hash(into:)();
    v19[0] = v13;
    v19[1] = v14;
    v20[0] = *v15;
    *(v20 + 10) = *&v15[10];
    sub_18E1FFAD8(v19);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_18E232EFC();
    if (v8)
    {
LABEL_6:
      sub_18E24050C();
      sub_18E44EB4C();
      if (v9)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  sub_18E232EFC();
  if (v9)
  {
LABEL_7:
    sub_18E24050C();
    v3 = sub_18E1E6754();
    sub_18E2919AC(v3, v4);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_18E232EFC();
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  sub_18E232EFC();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_18E24050C();
  sub_18E1E6BB0();
  sub_18E291928();
  if (v11)
  {
LABEL_9:
    sub_18E24050C();
    sub_18E21D0F8();
    sub_18E29180C();
    goto LABEL_15;
  }

LABEL_14:
  sub_18E232EFC();
LABEL_15:
  if (v12 != 2)
  {
    sub_18E24050C();
  }

  return sub_18E44F4AC();
}

uint64_t ResourceConfiguration.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  ResourceConfiguration.hash(into:)();
  return sub_18E44F4CC();
}

uint64_t sub_18E31B7D8@<X0>(uint64_t *a1@<X8>)
{
  result = ResourceConfiguration.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E31B808(uint64_t a1)
{
  sub_18E44F48C();
  ResourceConfiguration.hash(into:)();
  return sub_18E44F4CC();
}

ModelCatalog::ResourceBase __swiftcall ResourceBase.init(id:dependentResourceIDs:)(Swift::String id, Swift::OpaquePointer dependentResourceIDs)
{
  *v2 = id;
  *(v2 + 16) = dependentResourceIDs;
  result.id = id;
  result.dependentResourceIDs = dependentResourceIDs;
  return result;
}

uint64_t static ResourceBase.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_18E32EF70(a1);
  v6 = v3 == *v4 && *(v5 + 8) == v4[1];
  if (!v6 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  v7 = sub_18E1C5BFC();

  return sub_18E290008(v7, v8);
}

uint64_t sub_18E31B8E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018E468430 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

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

uint64_t sub_18E31B9AC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18E31B9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31B8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31BA0C(uint64_t a1)
{
  v2 = sub_18E327B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31BA48(uint64_t a1)
{
  v2 = sub_18E327B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResourceBase.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v3 = sub_18E2706EC(&qword_1EABE3388, &qword_18E4B0F08);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C57AC();
  sub_18E1E1D50(v2);
  sub_18E327B5C();
  sub_18E1E2A60();
  sub_18E1E3634();
  sub_18E44F4EC();
  sub_18E1E26FC();
  sub_18E1DD5A0();
  sub_18E1CFB6C();
  sub_18E44F31C();
  if (!v0)
  {
    sub_18E1C5774();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1C892C(&unk_1EABE0088, MEMORY[0x1E69E6160]);
    sub_18E1CFB6C();
    sub_18E44F35C();
  }

  v5 = sub_18E221F34();
  v6(v5, v3);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void ResourceBase.hash(into:)()
{
  sub_18E1E1A34();
  sub_18E44EB4C();
  sub_18E1C5BFC();

  sub_18E2917A4();
}

uint64_t ResourceBase.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  sub_18E1D44B4();
  sub_18E44EB4C();
  sub_18E2917A4();
  return sub_18E44F4CC();
}

void ResourceBase.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_18E1C62A0();
  v24 = v23;
  v26 = v25;
  sub_18E2706EC(&qword_1EABE3398, &qword_18E4B0F10);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v27);
  sub_18E1CAFF0();
  sub_18E1C5628(v24);
  sub_18E327B5C();
  sub_18E1E6880();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v22)
  {
    sub_18E1C9934(v24);
  }

  else
  {
    v28 = sub_18E44F22C();
    v30 = v29;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1C5774();
    sub_18E211300(&unk_1ED6A8378);
    sub_18E44F26C();
    v31 = sub_18E1C89D0();
    v32(v31);
    *v26 = v28;
    v26[1] = v30;
    v26[2] = v33;

    sub_18E1C9934(v24);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

uint64_t sub_18E31BE64@<X0>(uint64_t *a1@<X8>)
{
  result = ResourceBase.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E31BE94(uint64_t a1)
{
  sub_18E44F48C();
  ResourceBase.hash(into:)();
  return sub_18E44F4CC();
}

void __swiftcall AssetSubscriptionInformation.init(subscriberID:subscriptionName:assetSetName:)(ModelCatalog::AssetSubscriptionInformation *__return_ptr retstr, Swift::String subscriberID, Swift::String subscriptionName, Swift::String assetSetName)
{
  retstr->subscriberID = subscriberID;
  retstr->subscriptionName = subscriptionName;
  retstr->assetSetName = assetSetName;
  retstr->ttl.value = 0;
  *&retstr->ttl.is_nil = 3841;
}

uint64_t static AssetSubscriptionInformation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_18E32EF70(a1);
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  v7 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 56);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = *(v4 + 40);
  v21 = *(v4 + 48);
  v22 = *(v5 + 48);
  v15 = *(v4 + 56);
  v16 = v3 == *v4 && *(v5 + 8) == *(v4 + 8);
  v23 = *(v4 + 57);
  v24 = *(v5 + 57);
  if (!v16 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  if (v6 != v11 || v8 != v12)
  {
    sub_18E1DD5A0();
    if ((sub_18E44F3CC() & 1) == 0)
    {
      return 0;
    }
  }

  if (v7 != v13 || v9 != v14)
  {
    sub_18E21D0C4();
    if ((sub_18E44F3CC() & 1) == 0)
    {
      return 0;
    }
  }

  if ((v10 & 1) == 0)
  {
    if (v22 == v21)
    {
      v19 = v15;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }

LABEL_23:
    if (v24 == 15)
    {
      if (v23 != 15)
      {
        return 0;
      }
    }

    else if (v23 == 15 || (sub_18E1E3F98(v24, v23) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (v15)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_18E31C0F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xEC00000044497265;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000018E468470 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465537465737361 && a2 == 0xEC000000656D614ELL;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107700 && a2 == 0xE300000000000000;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x800000018E468490 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E44F3CC();

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

uint64_t sub_18E31C2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31C0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31C2D4(uint64_t a1)
{
  v2 = sub_18E1FF21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31C310(uint64_t a1)
{
  v2 = sub_18E1FF21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetSubscriptionInformation.hash(into:)()
{
  sub_18E2452F0();
  sub_18E1E1A34();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 57);
  sub_18E44EB4C();
  sub_18E21D0F8();
  sub_18E44EB4C();
  sub_18E1E6754();
  sub_18E44EB4C();
  if (v2 == 1)
  {
    sub_18E232EFC();
  }

  else
  {
    sub_18E24050C();
    MEMORY[0x193ACCC20](v1);
  }

  if (v3 == 15)
  {
    sub_18E232EFC();
    sub_18E2209F0();
  }

  else
  {
    sub_18E24050C();
    v4 = RequestResourcesKey.rawValue.getter();
    sub_18E1C88A0(v4, v5);
    sub_18E2209F0();
  }
}

uint64_t ManagedRuntimeInformation.cost.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v6[0] = *(v1 + 64);
  v6[1] = v2;
  v7 = *(v1 + 96);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_18E327BB0(v6, v5);
}

void __swiftcall ManagedRuntimeInformation.init(inferenceProvider:cost:)(ModelCatalog::ManagedRuntimeInformation *__return_ptr retstr, ModelCatalog::InferenceProvider inferenceProvider, ModelCatalog::CostProfile *cost)
{
  v3 = *(inferenceProvider.id._countAndFlagsBits + 8);
  v4 = *(inferenceProvider.id._countAndFlagsBits + 16);
  retstr->inferenceProvider.id._countAndFlagsBits = *inferenceProvider.id._countAndFlagsBits;
  retstr->inferenceProvider.id._object = v3;
  retstr->inferenceProvider.hostedOnServerOverride.value = v4;
  retstr->vmInferenceProvider.value.id._countAndFlagsBits = 0;
  retstr->vmInferenceProvider.value.id._object = 0;
  retstr->vmInferenceProvider.value.hostedOnServerOverride.value = 0;
  *&retstr->vmInferenceProvider.is_nil = 0;
  retstr->instanceID.value._countAndFlagsBits = 0;
  sub_18E1E65CC(inferenceProvider.id._object, retstr);
}

void __swiftcall ManagedRuntimeInformation.init(inferenceProvider:cost:instanceID:)(ModelCatalog::ManagedRuntimeInformation *__return_ptr retstr, ModelCatalog::InferenceProvider inferenceProvider, ModelCatalog::CostProfile *cost, Swift::String_optional instanceID)
{
  v4 = *(inferenceProvider.id._countAndFlagsBits + 8);
  v5 = *(inferenceProvider.id._countAndFlagsBits + 16);
  retstr->inferenceProvider.id._countAndFlagsBits = *inferenceProvider.id._countAndFlagsBits;
  retstr->inferenceProvider.id._object = v4;
  retstr->inferenceProvider.hostedOnServerOverride.value = v5;
  retstr->vmInferenceProvider.value.id._countAndFlagsBits = 0;
  retstr->vmInferenceProvider.value.id._object = 0;
  retstr->vmInferenceProvider.value.hostedOnServerOverride.value = 0;
  *&retstr->vmInferenceProvider.is_nil = *&inferenceProvider.hostedOnServerOverride.value;
  retstr->instanceID.value._countAndFlagsBits = cost;
  sub_18E1E65CC(inferenceProvider.id._object, retstr);
}

uint64_t static ManagedRuntimeInformation.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = sub_18E1CA6B8(a1);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 80);
  v36[0] = *(v2 + 64);
  v36[1] = v12;
  v37 = *(v2 + 96);
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 16);
  v17 = a2[3];
  v16 = a2[4];
  v18 = *(a2 + 40);
  v28 = a2[6];
  v29 = v10;
  v30 = a2[7];
  v31 = v11;
  v39 = *(a2 + 96);
  v19 = *(a2 + 5);
  v20 = v4 == v13 && v5 == v14;
  v38[0] = *(a2 + 4);
  v38[1] = v19;
  if (!v20 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  if (v6 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v15 ^ v6) & 1) != 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v16)
    {
      if (v8 == v17 && v7 == v16)
      {
        sub_18E32F008();
        swift_bridgeObjectRetain_n();
      }

      else
      {
        sub_18E1D5F00();
        v22 = sub_18E44F3CC();
        sub_18E32F008();
        swift_bridgeObjectRetain_n();
        if ((v22 & 1) == 0)
        {
LABEL_28:
          sub_18E32F008();
          swift_bridgeObjectRelease_n();
          return 0;
        }
      }

      if (v9 == 2)
      {
        if (v18 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v18 == 2 || ((v18 ^ v9) & 1) != 0)
      {
        goto LABEL_28;
      }

      sub_18E32F008();
      swift_bridgeObjectRelease_n();
LABEL_30:
      if (v31)
      {
        if (!v30)
        {
          return 0;
        }

        v23 = v29 == v28 && v31 == v30;
        if (!v23 && (sub_18E44F3CC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v30)
      {
        return 0;
      }

      v24 = static CostProfile.== infix(_:_:)(v2 + 64, (a2 + 8));
      v25 = *(a2 + 5);
      v32[0] = *(a2 + 4);
      v32[1] = v25;
      v33 = *(a2 + 96);
      sub_18E327BB0(v36, v34);
      sub_18E327BB0(v38, v34);
      sub_18E292124(v32);
      v26 = *(v2 + 80);
      v34[0] = *(v2 + 64);
      v34[1] = v26;
      v35 = *(v2 + 96);
      sub_18E292124(v34);
      return v24 & 1;
    }
  }

  else if (!v16)
  {

    goto LABEL_30;
  }

  return 0;
}

uint64_t static CostProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0 && ((*(a1 + 11) ^ *(a2 + 11)) & 1) == 0 && ((*(a1 + 12) ^ *(a2 + 12)) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(a2 + 24);
    v7 = *(a1 + 24);
    v8 = sub_18E290008(*(a1 + 16), *(a2 + 16));
    v9 = v4 ^ v5 ^ 1;
    if (v7 != v6)
    {
      v9 = 0;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18E31C7BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000018E467B10 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000018E4684B0 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953722211 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

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

uint64_t sub_18E31C928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31C7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31C950(uint64_t a1)
{
  v2 = sub_18E1EA24C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31C98C(uint64_t a1)
{
  v2 = sub_18E1EA24C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ManagedRuntimeInformation.hash(into:)()
{
  sub_18E1C575C();
  sub_18E1E1A34();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_18E44EB4C();
  if (v1 != 2)
  {
    sub_18E24050C();
  }

  sub_18E44F4AC();
  if (v2)
  {
    sub_18E24050C();
    sub_18E1E6754();
    sub_18E44EB4C();
    if (v3 != 2)
    {
      sub_18E24050C();
    }
  }

  sub_18E44F4AC();
  if (v4)
  {
    sub_18E24050C();
    sub_18E21D0F8();
    sub_18E44EB4C();
  }

  else
  {
    sub_18E232EFC();
  }

  CostProfile.hash(into:)();
  sub_18E1C5544();
}

uint64_t ManagedRuntimeInformation.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  ManagedRuntimeInformation.hash(into:)();
  return sub_18E44F4CC();
}

uint64_t sub_18E31CACC(uint64_t a1)
{
  sub_18E44F48C();
  ManagedRuntimeInformation.hash(into:)();
  return sub_18E44F4CC();
}

ModelCatalog::ManagedResourceBase __swiftcall ManagedResourceBase.init(id:dependentResourceIDs:runtimeInformation:)(Swift::String id, Swift::OpaquePointer dependentResourceIDs, Swift::OpaquePointer runtimeInformation)
{
  *v3 = id;
  *(v3 + 16) = dependentResourceIDs;
  *(v3 + 24) = runtimeInformation;
  result.id = id;
  result.runtimeInformation = runtimeInformation;
  result.dependentResourceIDs = dependentResourceIDs;
  return result;
}

uint64_t sub_18E31CB48()
{
  sub_18E20052C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *v0;
  v7 = v0[1];
  v10 = v0[2];
  v9 = v0[3];
  v11 = qword_1EABE0D08;

  if (v11 != -1)
  {
    sub_18E1C6C24();
    swift_once();
  }

  v12 = qword_1EABE2F98;
  *v6 = v4;
  *(v6 + 8) = v2;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  *(v6 + 48) = v10;
  *(v6 + 56) = 1;
  *(v6 + 64) = MEMORY[0x1E69E7CC0];
  *(v6 + 72) = v9;
  *(v6 + 80) = 1;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 130) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = v12;
  *(v6 + 192) = 0;

  sub_18E1E1DA0();
}

uint64_t static ManagedResourceBase.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_18E32EF70(a1);
  v6 = v3 == *v4 && *(v5 + 8) == v4[1];
  if (!v6 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  v7 = sub_18E21D0C4();
  if ((sub_18E290008(v7, v8) & 1) == 0)
  {
    return 0;
  }

  sub_18E1C5BFC();

  return sub_18E290E60();
}

uint64_t sub_18E31CCC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000018E468430 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x800000018E467AB0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

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

uint64_t sub_18E31CDD8(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000012;
}

uint64_t sub_18E31CE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31CCC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31CE60(uint64_t a1)
{
  v2 = sub_18E327BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31CE9C(uint64_t a1)
{
  v2 = sub_18E327BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ManagedResourceBase.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE33D0, &qword_18E4B0F38);
  sub_18E1C4EAC();
  v6 = v5;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C57AC();
  sub_18E1E1D50(v3);
  sub_18E327BE8();
  sub_18E1E2A60();
  sub_18E1E3634();
  sub_18E44F4EC();
  sub_18E1E1B1C();
  sub_18E44F31C();
  if (!v0)
  {
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1C892C(&unk_1EABE0088, MEMORY[0x1E69E6160]);
    sub_18E1E3CAC();
    sub_18E1CFB6C();
    sub_18E44F35C();
    sub_18E2706EC(&unk_1EABE3358, &qword_18E4B0EE0);
    sub_18E327568();
    sub_18E1E3CAC();
    sub_18E1CFB6C();
    sub_18E44F35C();
  }

  (*(v6 + 8))(v1, v4);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void ManagedResourceBase.hash(into:)()
{
  sub_18E1E1A34();
  sub_18E44EB4C();
  sub_18E1CF50C();
  sub_18E2917A4();
  sub_18E1C5BFC();

  sub_18E291A0C();
}

uint64_t ManagedResourceBase.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  sub_18E1D44B4();
  sub_18E44EB4C();
  sub_18E2917A4();
  sub_18E291A0C();
  return sub_18E44F4CC();
}

void ManagedResourceBase.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  sub_18E1E8AB4();
  v23 = v22;
  sub_18E2706EC(&unk_1EABE33E0, &unk_18E4B0F40);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v24);
  sub_18E1C8E58();
  v25 = sub_18E1C5838();
  sub_18E1DD34C(v25, v26);
  sub_18E327BE8();
  sub_18E44F4DC();
  if (v21)
  {
    sub_18E1C9934(v20);
  }

  else
  {
    LOBYTE(a10) = 0;
    v27 = sub_18E44F22C();
    v31 = v28;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E211300(&unk_1ED6A8378);
    sub_18E1CFA50();
    sub_18E44F26C();
    sub_18E2706EC(&unk_1EABE3358, &qword_18E4B0EE0);
    sub_18E32794C();
    sub_18E1CFA50();
    sub_18E44F26C();
    v29 = sub_18E212A68();
    v30(v29);
    *v23 = v27;
    v23[1] = v31;
    v23[2] = a10;
    v23[3] = a10;

    sub_18E1C9934(v20);
  }

  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E31D384@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedResourceBase.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E31D3B4(uint64_t a1)
{
  sub_18E44F48C();
  ManagedResourceBase.hash(into:)();
  return sub_18E44F4CC();
}

uint64_t sub_18E31D440(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E31D4D0(uint64_t a1)
{
  sub_18E44F48C();
  sub_18E26C10C();
  return sub_18E44F4CC();
}

uint64_t sub_18E31D514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31D440(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E31D56C@<X0>(_BYTE *a1@<X8>)
{
  result = _s12ModelCatalog0B6ErrorsO17AvailabilityErrorO2eeoiySbAE_AEtFZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E31D5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_18E31D5F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ResourceBundleIdentifier.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  sub_18E44EB4C();
  return sub_18E44F4CC();
}

uint64_t sub_18E31D690(uint64_t a1)
{
  sub_18E44F48C();
  ResourceBundleIdentifier.hash(into:)(v2);
  return sub_18E44F4CC();
}

uint64_t ResourceBundleIdentifier.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ResourceBundleIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (v6 == a2 && v7 == a3)
  {
    return _s12ModelCatalog0B6ErrorsO17AvailabilityErrorO2eeoiySbAE_AEtFZ_0();
  }

  else
  {
    return sub_18E1CC4F8(v6, v7, a2, a3);
  }
}

uint64_t static ResourceBundleIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (v4 == a1 && v5 == a2)
  {
    return _s12ModelCatalog0B6ErrorsO17AvailabilityErrorO2eeoiySbAE_AEtFZ_0();
  }

  else
  {
    return sub_18E1CC4F8(a1, a2, v4, v5);
  }
}

void ResourceBundle.configurationIdentifier.getter()
{
  sub_18E20052C();
  sub_18E1CD8B8();
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C57AC();
  v4 = *(v0 + 32);
  v5 = sub_18E1D8004();
  v4(v5);
  sub_18E44E50C();

  v6 = sub_18E44E54C();
  sub_18E220124(v1, 1, v6);
  if (v7)
  {
    sub_18E327C3C(v1, &qword_1EABE2FE0);
    v8 = sub_18E1D8004();
    v4(v8);
    sub_18E1E34A8();
  }

  else
  {
    sub_18E44E49C();
    sub_18E1E34A8();
    sub_18E1C82B8();
    v9 = sub_18E1CFFC0();
    v10(v9);
  }

  sub_18E1C5BFC();
  sub_18E1E1DA0();
}

Swift::Bool __swiftcall ResourceBundle.containsResource(withRequestResourceKey:)(ModelCatalog::RequestResourcesKey withRequestResourceKey)
{
  v34 = *withRequestResourceKey;
  v2 = sub_18E221758(withRequestResourceKey, v1);
  v4 = v3(v2);
  v5 = v4;
  v6 = 0;
  v7 = *(v4 + 16);
  v8 = v4 + 32;
  v9 = &qword_1EABE0EA0;
  v10 = &qword_18E49D250;
  v11 = &unk_1EABE33F0;
  v12 = &unk_18E49D240;
  v33 = v4;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_56;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    sub_18E1E4398(v8, v42);
    sub_18E1E4398(v42, &v35);
    v13 = sub_18E1E2F3C();
    sub_18E2706EC(v13, v14);
    v15 = sub_18E2019D0();
    sub_18E2706EC(v15, v16);
    if (swift_dynamicCast())
    {
      v17 = v12;
      v18 = v11;
      v19 = v10;
      v20 = v9;
      sub_18E1C551C(v37, v39);
      v21 = v40;
      v22 = v41;
      sub_18E1E15F4(v39, v40);
      (*(v22 + 64))(&v35, v21, v22);
      v23 = v36;

      if (v23 == 15)
      {
        if (v34 == 15)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v24 = 0xEF31765F65677261;
        v25 = 0xEF31765F65677261;
        v26 = 0x6C5F6D6C65646F63;
        v27 = 0x6C5F6D6C65646F63;
        switch(v23)
        {
          case 1:
            break;
          case 2:
            v27 = sub_18E32EF60();
            goto LABEL_27;
          case 3:
            v27 = sub_18E32EF60();
            goto LABEL_18;
          case 4:
            v27 = sub_18E32EF60();
            goto LABEL_25;
          case 5:
            v27 = sub_18E32EF60();
            goto LABEL_21;
          case 6:
            v27 = 0x735F6D6C65646F63;
            v25 = 0xED00007974656661;
            break;
          case 7:
            v27 = sub_18E1C6578();
            v25 = 0xEF31765F65677261;
            break;
          case 8:
            v27 = sub_18E1C6578();
LABEL_27:
            v25 = 0xEF32765F65677261;
            break;
          case 9:
            v27 = sub_18E1C6578();
LABEL_18:
            v25 = 0xEF33765F65677261;
            break;
          case 10:
            v27 = sub_18E1C6578();
LABEL_25:
            v25 = 0xEF34765F65677261;
            break;
          case 11:
            v27 = sub_18E1C6578();
LABEL_21:
            v25 = 0xEF35765F65677261;
            break;
          case 12:
            v27 = 0xD000000000000016;
            v25 = 0x800000018E45B3A0;
            break;
          case 13:
            v27 = 0xD000000000000015;
            v25 = 0x800000018E45B3C0;
            break;
          case 14:
            v27 = 0xD000000000000014;
            v25 = 0x800000018E45B3E0;
            break;
          default:
            v27 = 0xD000000000000016;
            v25 = 0x800000018E45B2D0;
            break;
        }

        v28 = v26;
        v29 = v24;
        switch(v34)
        {
          case 0:
            v28 = 0xD000000000000016;
            v29 = 0x800000018E45B2D0;
            break;
          case 1:
            break;
          case 2:
            sub_18E1C7770();
            goto LABEL_46;
          case 3:
            sub_18E1C7770();
            goto LABEL_37;
          case 4:
            sub_18E1C7770();
            goto LABEL_44;
          case 5:
            sub_18E1C7770();
            goto LABEL_40;
          case 6:
            v28 = 0x735F6D6C65646F63;
            v29 = 0xED00007974656661;
            break;
          case 7:
            sub_18E1C7E88();
            v29 = v29 | 0xEF31765F00000000;
            break;
          case 8:
            sub_18E1C7E88();
LABEL_46:
            v29 = v29 | 0xEF32765F00000000;
            break;
          case 9:
            sub_18E1C7E88();
LABEL_37:
            v29 = v29 | 0xEF33765F00000000;
            break;
          case 10:
            sub_18E1C7E88();
LABEL_44:
            v29 = v29 | 0xEF34765F00000000;
            break;
          case 11:
            sub_18E1C7E88();
LABEL_40:
            v29 = v29 | 0xEF35765F00000000;
            break;
          case 12:
            v28 = 0xD000000000000016;
            v29 = 0x800000018E45B3A0;
            break;
          case 13:
            v28 = 0xD000000000000015;
            v29 = 0x800000018E45B3C0;
            break;
          case 14:
            v28 = 0xD000000000000014;
            v29 = 0x800000018E45B3E0;
            break;
          default:
            goto LABEL_52;
        }

        if (v27 == v28 && v25 == v29)
        {

LABEL_55:
          sub_18E1C9934(v39);
          sub_18E1C9934(v42);
LABEL_56:

          LOBYTE(v4) = v7 != v6;
          return v4;
        }

        v31 = sub_18E44F3CC();

        if (v31)
        {
          goto LABEL_55;
        }
      }

LABEL_52:
      sub_18E1C9934(v39);
      v9 = v20;
      v10 = v19;
      v11 = v18;
      v12 = v17;
      v5 = v33;
    }

    else
    {
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      sub_18E327C3C(v37, &qword_1EABE1018);
    }

    LOBYTE(v4) = sub_18E1C9934(v42);
    v8 += 40;
    ++v6;
  }

  __break(1u);
  return v4;
}

uint64_t sub_18E31DD9C()
{
  if (qword_1EABE0D08 != -1)
  {
    sub_18E1C6C24();
    swift_once();
  }
}

uint64_t CatalogResource.platforms.getter()
{
  if (qword_1EABE0D08 != -1)
  {
    sub_18E1C6C24();
    swift_once();
  }
}

uint64_t sub_18E31DE40(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;

  sub_18E44E50C();
  v5 = sub_18E44E54C();
  if (sub_18E1CAF28(v4, 1, v5) == 1)
  {
    sub_18E327C3C(v4, &qword_1EABE2FE0);
  }

  else
  {
    a1 = sub_18E44E49C();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return a1;
}

uint64_t sub_18E31DF70()
{
  v1 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v1);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1CD9F0();
  sub_18E1D628C();
  sub_18E44E50C();
  v3 = sub_18E44E54C();
  sub_18E1D44F4(v3);
  if (v4)
  {
    sub_18E327C3C(v0, &qword_1EABE2FE0);
  }

  else
  {
    sub_18E44E49C();
    sub_18E1E2BB0();
    v5 = sub_18E21D0C4();
    v6(v5);
  }

  return sub_18E1D628C();
}

uint64_t sub_18E31E050()
{
  v1 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = *v0;

  sub_18E44E50C();
  v5 = sub_18E44E54C();
  if (sub_18E1CAF28(v3, 1, v5) == 1)
  {
    sub_18E327C3C(v3, &qword_1EABE2FE0);
  }

  else
  {
    v4 = sub_18E44E49C();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  return v4;
}

void CatalogResource.configurationIdentifier.getter()
{
  sub_18E20052C();
  sub_18E1CD8B8();
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C57AC();
  v4 = *(v0 + 24);
  v5 = sub_18E1D8004();
  v4(v5);
  sub_18E44E50C();

  v6 = sub_18E44E54C();
  sub_18E220124(v1, 1, v6);
  if (v7)
  {
    sub_18E327C3C(v1, &qword_1EABE2FE0);
    v8 = sub_18E1D8004();
    v4(v8);
    sub_18E1E34A8();
  }

  else
  {
    sub_18E44E49C();
    sub_18E1E34A8();
    sub_18E1C82B8();
    v9 = sub_18E1CFFC0();
    v10(v9);
  }

  sub_18E1C5BFC();
  sub_18E1E1DA0();
}

uint64_t sub_18E31E338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

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

uint64_t sub_18E31E408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31E338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31E430(uint64_t a1)
{
  v2 = sub_18E1E9D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31E46C(uint64_t a1)
{
  v2 = sub_18E1E9D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall CostProfile.init(onDeviceMemory:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory)
{
  retstr->onDeviceMemory = onDeviceMemory;
  *&retstr->cacheable = 0;
  retstr->unentitledGatedByFoundationModels = 0;
  sub_18E1E32A8(retstr);
}

void __swiftcall CostProfile.init(onDeviceMemory:cacheable:dynamicModeAllowed:energyEfficientMode:avoidUnload:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory, Swift::Bool cacheable, Swift::Bool dynamicModeAllowed, Swift::Bool energyEfficientMode, Swift::Bool avoidUnload)
{
  retstr->onDeviceMemory = onDeviceMemory;
  retstr->cacheable = cacheable;
  retstr->dynamicModeAllowed = dynamicModeAllowed;
  retstr->energyEfficientMode = energyEfficientMode;
  retstr->avoidUnload = avoidUnload;
  retstr->unentitledGatedByFoundationModels = 0;
  sub_18E1E32A8(retstr);
}

void __swiftcall CostProfile.init(onDeviceMemory:cacheable:dynamicModeAllowed:energyEfficientMode:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory, Swift::Bool cacheable, Swift::Bool dynamicModeAllowed, Swift::Bool energyEfficientMode)
{
  retstr->onDeviceMemory = onDeviceMemory;
  retstr->cacheable = cacheable;
  retstr->dynamicModeAllowed = dynamicModeAllowed;
  retstr->energyEfficientMode = energyEfficientMode;
  *&retstr->avoidUnload = 0;
  sub_18E1E32A8(retstr);
}

void __swiftcall CostProfile.init(onDeviceMemory:cacheable:dynamicModeAllowed:energyEfficientMode:avoidUnload:unentitledGatedByFoundationModels:unentitledUseCases:powerCost:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory, Swift::Bool cacheable, Swift::Bool dynamicModeAllowed, Swift::Bool energyEfficientMode, Swift::Bool avoidUnload, Swift::Bool unentitledGatedByFoundationModels, Swift::OpaquePointer unentitledUseCases, Swift::Int powerCost)
{
  sub_18E1E9DAC(onDeviceMemory, cacheable, dynamicModeAllowed, energyEfficientMode, avoidUnload, unentitledGatedByFoundationModels, retstr);
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
}

uint64_t sub_18E31E590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697665446E6FLL && a2 == 0xEE0079726F6D654DLL;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C62616568636163 && a2 == 0xE900000000000065;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000018E467AD0 == a2;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000018E467AF0 == a2;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6E5564696F7661 && a2 == 0xEB0000000064616FLL;
          if (v9 || (sub_18E44F3CC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000021 && 0x800000018E4684D0 == a2;
            if (v10 || (sub_18E44F3CC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000018E468500 == a2;
              if (v11 || (sub_18E44F3CC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x736F437265776F70 && a2 == 0xE900000000000074;
                if (v12 || (sub_18E44F3CC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6E55726566657270 && a2 == 0xEC00000064616F6CLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_18E44F3CC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_18E31E874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E31E590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E31E89C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E31E86C();
  *a1 = result;
  return result;
}

uint64_t sub_18E31E8C4(uint64_t a1)
{
  v2 = sub_18E200570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E31E900(uint64_t a1)
{
  v2 = sub_18E200570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CostProfile.hash(into:)()
{
  sub_18E1C575C();
  v1 = v0[3];
  MEMORY[0x193ACCC20](*v0);
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E2917A4();
  MEMORY[0x193ACCC20](v1);
  sub_18E44F4AC();
  sub_18E1C5544();
}

uint64_t CostProfile.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  CostProfile.hash(into:)();
  return sub_18E44F4CC();
}

uint64_t sub_18E31EA18(uint64_t a1)
{
  sub_18E44F48C();
  CostProfile.hash(into:)();
  return sub_18E44F4CC();
}

uint64_t sub_18E31EA70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = ManagedResource<>.executionContexts.getter(*(a1 + a2 - 24), a1, *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void ManagedResourceBase.cost.getter(void *a1@<X8>)
{
  if (*(*(v1 + 24) + 16))
  {
    sub_18E1CD580(a1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    *(a1 + 5) = 0;
    *a1 = 0;
    sub_18E1E32A8(a1);
  }
}

uint64_t ManagedResourceBase.inferenceProviders.getter()
{
  sub_18E2452F0();
  v3 = *(*(v0 + 24) + 16);
  if (v3)
  {
    v4 = sub_18E1CF3F8();
    sub_18E26F200(v4, v3, 0);
    sub_18E1E6CA8();
    do
    {
      sub_18E1CFE24();
      if (v1 >= v2 >> 1)
      {
        sub_18E1E332C();
        sub_18E26F200(v6, v7, v8);
      }

      sub_18E221960();
    }

    while (!v5);
  }

  sub_18E2209F0();

  return sub_18E292C80();
}

void ManagedResourceBase.vmInferenceProviders.getter()
{
  sub_18E1C575C();
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v2 - 48 + 104 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = v5 + 104;
    v7 = *(v5 + 112);
    v5 += 104;
    if (v7)
    {
      v8 = *v6;
      v9 = *(v6 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_18E1C6868();
        sub_18E3F0110(v13, v14, v15, v4);
        v4 = v16;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_18E223604(v10 > 1);
        v4 = v17;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 24 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      *(v12 + 48) = v9;
      goto LABEL_2;
    }
  }

  sub_18E1C5544();

  sub_18E292C80();
}

uint64_t (*sub_18E31ED34(uint64_t *a1))()
{
  v2 = sub_18E326894(0);
  if (sub_18E28690C(v2))
  {
    sub_18E36A354();
  }

  else
  {

    v3 = MEMORY[0x1E69E7CD0];
  }

  *a1 = v3;
  return sub_18E32EE80;
}

ModelCatalog::ResourceStatus_optional __swiftcall ResourceStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_18E31EE00@<X0>(uint64_t *a1@<X8>)
{
  result = ResourceStatus.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t RequestResourcesKey.usageKey.getter()
{
  sub_18E44EFFC();

  sub_18E1CA5A4();
  v0 = RequestResourcesKey.rawValue.getter();
  MEMORY[0x193ACC300](v0);

  return 0xD000000000000019;
}

uint64_t static StatusResponse.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_18E1CFBD4(a1);
  byte_1EABE2FA0 = v1;
  return result;
}

uint64_t sub_18E31EFE4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE2FA0;
  return result;
}

uint64_t sub_18E31F030(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE2FA0 = v1;
  return result;
}

void sub_18E31F078(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___MCResourceStatus_status);
  v4 = sub_18E1E3BAC();
  [a1 encodeInteger:v3 forKey:v4];
}

void StatusResponse.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_18E1C5D78();
  StatusResponse.init(coder:)(v2);
}

void StatusResponse.init(coder:)(void *a1)
{
  v3 = sub_18E1E3BAC();
  v4 = [a1 decodeIntegerForKey_];

  if (v4 > 3)
  {
    __break(1u);
  }

  else
  {
    v1[OBJC_IVAR___MCResourceStatus_status] = v4;
    v5.receiver = v1;
    v5.super_class = type metadata accessor for StatusResponse();
    objc_msgSendSuper2(&v5, sel_init);
  }
}

id StatusResponse.init(status:)(_BYTE *a1)
{
  v1[OBJC_IVAR___MCResourceStatus_status] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StatusResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id StatusResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL static ExecutionContext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_18E32EF70(a1);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 40);
  v9 = *(v5 + 56);
  v10 = *(v5 + 57);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + 40);
  v14 = *(v4 + 56);
  v15 = *(v4 + 57);
  if (v3 != *v4 || *(v5 + 8) != *(v4 + 8))
  {
    v22 = *(v4 + 24);
    v23 = *(v4 + 40);
    v20 = *(v5 + 40);
    v21 = *(v5 + 24);
    v17 = sub_18E44F3CC();
    v8 = v20;
    v7 = v21;
    v12 = v22;
    v13 = v23;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }

LABEL_11:
    if (v8)
    {
      v30[0] = v7;
      v30[1] = v8;
      v31 = v9;
      if (v13)
      {
        v24 = v12;
        v25 = v13;
        v26 = v14;
        v19 = static CostProfile.== infix(_:_:)(v30, &v24);
        v27[0] = v24;
        v27[1] = v25;
        v28 = v26;

        swift_bridgeObjectRetain_n();
        sub_18E292124(v27);
        sub_18E1E8384();
        sub_18E292124(v29);

        if (v19)
        {
          return v10 == v15;
        }

        return 0;
      }

      sub_18E1E8384();
      swift_bridgeObjectRetain_n();
      sub_18E292124(v29);
    }

    else
    {
      if (!v13)
      {

        return v10 == v15;
      }
    }

    return 0;
  }

  result = 0;
  if (v11 != 2 && ((v11 ^ v6) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t ExecutionContext.hash(into:)()
{
  sub_18E1E1A34();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  sub_18E44EB4C();
  if (v1 != 2)
  {
    sub_18E24050C();
  }

  sub_18E44F4AC();
  if (v4)
  {
    *&v9 = v2;
    *(&v9 + 1) = v3;
    *&v10 = v4;
    *(&v10 + 1) = v5;
    sub_18E24050C();
    v11[0] = v2;
    v11[1] = v3;
    v11[2] = v4;
    v11[3] = v5;
    v12 = v6;
    sub_18E327BB0(v11, v13);
    CostProfile.hash(into:)();
    v13[0] = v9;
    v13[1] = v10;
    v14 = v6;
    sub_18E292124(v13);
  }

  else
  {
    sub_18E232EFC();
  }

  return MEMORY[0x193ACCC20](v7);
}

uint64_t sub_18E31F598(uint64_t (*a1)(_BYTE *))
{
  sub_18E1CFCDC(a1);
  a1(v3);
  return sub_18E44F4CC();
}

uint64_t sub_18E31F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_18E44F48C();
  a4(v6);
  return sub_18E44F4CC();
}

uint64_t static ResourceInformation.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_18E1CFBD4(a1);
  byte_1EABE2FA1 = v1;
  return result;
}

uint64_t sub_18E31F72C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE2FA1;
  return result;
}

uint64_t sub_18E31F778(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE2FA1 = v1;
  return result;
}

void sub_18E31F7C0(void *a1)
{
  v2 = v1;
  v4 = sub_18E1CFFC0();
  v6 = sub_18E2706EC(v4, v5);
  sub_18E1C5B08(v6);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  sub_18E211FB8();
  sub_18E2F66D4(v10, v11, v12, v13);
  v14 = sub_18E44E54C();
  if (sub_18E1CAF28(v9, 1, v14) != 1)
  {
    sub_18E44E4AC();
    sub_18E1C82B8();
    (*(v15 + 8))(v9, v14);
  }

  v16 = sub_18E44EA8C();
  sub_18E211FB8();
  [v17 v18];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR___MCResourceInformation_metadata))
  {
    v19 = sub_18E44E97C();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_18E44EA8C();
  [a1 encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();
}

void ResourceInformation.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  sub_18E1C5D78();
  ResourceInformation.init(coder:)();
}

void ResourceInformation.init(coder:)()
{
  sub_18E20052C();
  v1 = v0;
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v5 = sub_18E1C5B08(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  sub_18E1D121C(0, &qword_1EABDF6B8, 0x1E695DFF8);
  v11 = sub_18E44EEBC();
  if (v11)
  {
    v12 = v11;
    v13 = sub_18E44E54C();
    sub_18E201DC8(v8, 1, 1, v13);
    sub_18E21D12C();
    sub_18E327298(v14);
    sub_18E1C89D0();
    sub_18E44F18C();

    sub_18E220124(v8, 1, v13);
    if (v15)
    {
      v19 = v10;
      v20 = 1;
    }

    else
    {
      sub_18E1C82B8();
      v17 = sub_18E1E3DF8();
      v18(v17);
      v19 = v10;
      v20 = 0;
    }

    v16 = v13;
  }

  else
  {
    v16 = sub_18E44E54C();
    v19 = v10;
    v20 = 1;
  }

  sub_18E201DC8(v19, v20, 1, v16);
  sub_18E327CB8(v10, &v1[OBJC_IVAR___MCResourceInformation_location]);
  sub_18E1D121C(0, &unk_1ED6A87A0, 0x1E696AEC0);
  v21 = sub_18E44EECC();
  if (v21)
  {
    v22 = sub_18E289374(v21);
  }

  else
  {
    v22 = 0;
  }

  *&v1[OBJC_IVAR___MCResourceInformation_metadata] = v22;
  v23 = type metadata accessor for ResourceInformation(0);
  v24.receiver = v1;
  v24.super_class = v23;
  objc_msgSendSuper2(&v24, sel_init);

  sub_18E1E1DA0();
}

id ResourceInformation.init(location:metadata:)()
{
  sub_18E1CD8B8();
  sub_18E211FB8();
  sub_18E2F66D4(v2, v3, v4, v5);
  *&v1[OBJC_IVAR___MCResourceInformation_metadata] = v0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ResourceInformation(0);
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = sub_18E21D0C4();
  sub_18E327C3C(v7, v8);
  return v6;
}

void sub_18E31FDE0()
{
  sub_18E20052C();
  v2 = sub_18E1CFFC0();
  v4 = sub_18E2706EC(v2, v3);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E21137C();
  sub_18E1E8784();

  sub_18E1CA5A4();
  v28 = v6;
  sub_18E211FB8();
  sub_18E2F66D4(v7, v8, v9, v10);
  v11 = sub_18E44E54C();
  sub_18E220124(v1, 1, v11);
  if (v12)
  {
    sub_18E327C3C(v1, &qword_1EABE2FE0);
  }

  else
  {
    sub_18E44E48C();
    sub_18E1E63CC();
    sub_18E1C82B8();
    (*(v13 + 8))(v1, v11);
  }

  v14 = sub_18E1CF9A0();
  MEMORY[0x193ACC300](v14);

  sub_18E264698();
  v16 = v15;
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_18E1C5C70(v17);
    sub_18E264698();
    v16 = v26;
  }

  *(v16 + 16) = v18 + 1;
  v19 = v16 + 16 * v18;
  *(v19 + 32) = 0xD000000000000017;
  *(v19 + 40) = v28;
  sub_18E1E8784();

  sub_18E1CA5A4();
  v29 = v20;
  if (!*(v0 + OBJC_IVAR___MCResourceInformation_metadata))
  {
    sub_18E44E9AC();
  }

  sub_18E44E99C();

  v21 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v21);

  v22 = *(v16 + 16);
  if (v22 >= *(v16 + 24) >> 1)
  {
    sub_18E264698();
    v16 = v27;
  }

  *(v16 + 16) = v22 + 1;
  v23 = v16 + 16 * v22;
  *(v23 + 32) = 0xD000000000000017;
  *(v23 + 40) = v29;
  v24 = sub_18E1C5BFC();
  sub_18E2706EC(v24, v25);
  sub_18E1E1680(&qword_1ED6A80E0);
  sub_18E44EA0C();
  sub_18E1E34A8();

  sub_18E1C5BFC();
  sub_18E1E1DA0();
}

id sub_18E320120(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void TokenizerBase.init(configuration:)()
{
  sub_18E1C59C0();
  TokenizerBase.init(configuration:variant:)(v1, v2, v3);
  if (!v0)
  {
    sub_18E32EF8C(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

uint64_t (*sub_18E320288(void *a1))()
{
  v3 = sub_18E29965C(0x100uLL);
  *a1 = v3;
  memcpy(v3, v1, 0xF8uLL);
  v4 = sub_18E30FC90();
  sub_18E30B3A8(v4);

  v3[31] = sub_18E292D44();
  return sub_18E32EEAC;
}

void sub_18E3203A4()
{
  sub_18E20052C();
  v1 = v0;
  v3 = v2;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  __src[31] = *v4;
  __src[32] = v5;
  __src[33] = v6;
  __src[34] = v7;
  sub_18E221758(v4, v8);
  sub_18E31CB48();

  v1(__src, v9, 0x636972656E6567, 0xE700000000000000);
  memcpy(v3, __src, 0xF8uLL);
  sub_18E1E1DA0();
}

void LLMAJAXModelBase.init(configuration:)()
{
  sub_18E1C59C0();
  LLMAJAXModelBase.init(configuration:variant:)();
  if (!v0)
  {
    sub_18E32EF8C(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t (*sub_18E320540(void *a1))()
{
  v3 = sub_18E29965C(0x100uLL);
  *a1 = v3;
  memcpy(v3, v1, 0xF8uLL);
  v4 = sub_18E30FC90();
  sub_18E30B3A8(v4);

  v3[31] = sub_18E292D44();
  return sub_18E32EEAC;
}

uint64_t sub_18E3205D8()
{
  sub_18E1E1C70();
  v3 = memcpy(v1, v2, 0xF8uLL);
  result = sub_18E200C68(v3, v4);
  *v0 = result;
  v0[1] = v6;
  return result;
}

uint64_t sub_18E320634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_18E44F48C();
  a4(v6);
  return sub_18E44F4CC();
}

uint64_t LLMDraftModelBase.configuration.getter()
{
  memcpy(__dst, v0, 0xC1uLL);
  v1 = sub_18E1C5BFC();
  memcpy(v1, v2, 0xC1uLL);
  return sub_18E200C0C(__dst, v4);
}

void LLMDraftModelBase.init(configuration:)()
{
  sub_18E1C59C0();
  LLMDraftModelBase.init(configuration:variant:)();
  if (!v0)
  {
    sub_18E32EF8C(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t (*sub_18E3207B8(void *a1))()
{
  v3 = sub_18E29965C(0x100uLL);
  *a1 = v3;
  memcpy(v3, v1, 0xF8uLL);
  v4 = sub_18E30FC90();
  sub_18E30B3A8(v4);

  v3[31] = sub_18E292D44();
  return sub_18E320850;
}

void LLMModelBase.init(configuration:)()
{
  sub_18E1C59C0();
  LLMModelBase.init(configuration:variant:)();
  if (!v0)
  {
    sub_18E32EF8C(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t (*sub_18E3209E8(void *a1))()
{
  v3 = sub_18E29965C(0x100uLL);
  *a1 = v3;
  memcpy(v3, v1, 0xF8uLL);
  v4 = sub_18E30FC90();
  sub_18E30B3A8(v4);

  v3[31] = sub_18E292D44();
  return sub_18E32EEAC;
}

uint64_t _s12ModelCatalog08LLMDraftA4BaseV5innerAA015ManagedResourceD0Vvg_0@<X0>(void *a1@<X8>)
{
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[29];
  v5 = v1[30];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

void LLMAdapterBase.init(configuration:)()
{
  sub_18E1C59C0();
  LLMAdapterBase.init(configuration:variant:)();
  if (!v0)
  {
    sub_18E32EF8C(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void _s12ModelCatalog08LLMDraftA4BaseV2eeoiySbAC_ACtFZ_0()
{
  sub_18E1C575C();
  v20[5] = v0;
  v20[6] = v1;
  sub_18E32EFFC();
  v3 = v2;
  v5 = v4;
  memcpy(v20, v4, 0xC1uLL);
  v6 = v5[25];
  v7 = v5[26];
  v19 = v5[28];
  v18 = v5[27];
  memcpy(v21, v3, 0xC1uLL);
  v9 = v3[25];
  v8 = v3[26];
  v11 = v3[27];
  v10 = v3[28];
  sub_18E200C0C(v20, v23);
  sub_18E200C0C(v21, v23);
  sub_18E1CF9A0();
  static ResourceConfiguration.== infix(_:_:)();
  v13 = v12;
  memcpy(v22, v3, 0xC1uLL);
  sub_18E1FE044(v22);
  memcpy(v23, v5, 0xC1uLL);
  sub_18E1FE044(v23);
  if (v13)
  {
    v14 = v6 == v9 && v7 == v8;
    if (v14 || (sub_18E44F3CC() & 1) != 0)
    {
      v15 = v18 == v11 && v19 == v10;
      if (v15 || (sub_18E44F3CC() & 1) != 0)
      {
        v16 = sub_18E1CFFC0();
        if (sub_18E290008(v16, v17))
        {

          sub_18E290E60();
        }
      }
    }
  }

  sub_18E1C5544();
}

void _s12ModelCatalog08LLMDraftA4BaseV4hash4intoys6HasherVz_tF_0()
{
  sub_18E20052C();
  ResourceConfiguration.hash(into:)();
  sub_18E1CF50C();
  sub_18E44EB4C();
  sub_18E1E6BB0();
  sub_18E44EB4C();
  sub_18E1C5838();
  sub_18E2917A4();
  sub_18E1E1DA0();

  sub_18E291A0C();
}

uint64_t _s12ModelCatalog08LLMDraftA4BaseV9hashValueSivg_0(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  ResourceConfiguration.hash(into:)();
  sub_18E1D44B4();
  sub_18E44EB4C();
  sub_18E44EB4C();
  sub_18E2917A4();
  sub_18E291A0C();
  return sub_18E44F4CC();
}

uint64_t (*sub_18E320F30(void *a1))()
{
  v3 = sub_18E29965C(0x100uLL);
  *a1 = v3;
  memcpy(v3, v1, 0xF8uLL);
  v4 = sub_18E30FC90();
  sub_18E30B3A8(v4);

  v3[31] = sub_18E292D44();
  return sub_18E32EEAC;
}

void sub_18E320FC8(void **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t Precondition.PreconditionType.usages.getter()
{
  v1 = *v0;
  sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  v3 = "encesOperatingSystemEligible";
  v4 = 0xD000000000000025;
  if (v1 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "encesHardwareEligible";
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD00000000000002CLL;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = "sid-inference-provider";
  }

  MEMORY[0x193ACC300](v5, v6 | 0x8000000000000000);

  *(inited + 32) = 3040109;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0x44454C42414E45;
  *(inited + 56) = 0xE700000000000000;
  return sub_18E44E9AC();
}

unint64_t Precondition.PreconditionType.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

ModelCatalog::Precondition::PreconditionType_optional __swiftcall Precondition.PreconditionType.init(rawValue:)(Swift::String rawValue)
{
  sub_18E220CF8();
  v2 = sub_18E44F19C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_18E3211E8@<X0>(unint64_t *a1@<X8>)
{
  result = Precondition.PreconditionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E321318(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000018E468520 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E321398(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

uint64_t sub_18E3213F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E321318(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E321420(uint64_t a1)
{
  v2 = sub_18E327D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E32145C(uint64_t a1)
{
  v2 = sub_18E327D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Precondition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  v24 = sub_18E2706EC(&qword_1EABE3428, &qword_18E4B0F68);
  sub_18E1C4EAC();
  v26 = v25;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v27);
  sub_18E1E88C0();
  v28 = sub_18E1E1A28();
  sub_18E1DD34C(v28, v29);
  sub_18E327D48();
  sub_18E1E1F54();
  sub_18E44F4EC();
  sub_18E327D9C();
  sub_18E44F35C();
  (*(v26 + 8))(v23, v24);
  sub_18E233284();
  sub_18E1C6650();
}

uint64_t Precondition.hash(into:)(uint64_t a1)
{
  sub_18E44EB4C();
}

uint64_t Precondition.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

void Precondition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_18E1C62A0();
  v15 = v14;
  v17 = v16;
  sub_18E2706EC(&unk_1EABE3430, &qword_18E4B0F70);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1E88C0();
  sub_18E1C5628(v15);
  sub_18E327D48();
  sub_18E1E1F54();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v13)
  {
    sub_18E327DF0();
    sub_18E1CFC98();
    sub_18E44F26C();
    v19 = sub_18E1CD934();
    v20(v19);
    *v17 = a13;
  }

  sub_18E1C9934(v15);
  sub_18E1E29D0();
  sub_18E1C6650();
}

uint64_t sub_18E3217F0(uint64_t a1)
{
  sub_18E44F48C();
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

uint64_t static Platform.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_18E28F254() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  sub_18E1C5BFC();

  return sub_18E44F3CC();
}

uint64_t sub_18E3219B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xEC00000065707954;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

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

uint64_t sub_18E321A80(uint64_t a1)
{
  v1 = a1;
  sub_18E1CFCDC(a1);
  MEMORY[0x193ACCC20](v1 & 1);
  return sub_18E44F4CC();
}

uint64_t sub_18E321AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E321B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3219B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E321B34(uint64_t a1)
{
  v2 = sub_18E200BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E321B70(uint64_t a1)
{
  v2 = sub_18E200BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Platform.hash(into:)(uint64_t a1)
{
  sub_18E28E92C(a1, *v1);
  sub_18E1CF50C();

  return sub_18E44EB4C();
}

uint64_t Platform.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  sub_18E1CFCDC(a1);
  sub_18E28E92C(v4, v2);
  sub_18E1D44B4();
  sub_18E44EB4C();
  return sub_18E44F4CC();
}

uint64_t sub_18E321C58(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[72] = *v1;
  v6 = v2;
  v7 = v3;
  sub_18E44F48C();
  Platform.hash(into:)(v5);
  return sub_18E44F4CC();
}

uint64_t sub_18E321CC8(uint64_t a1)
{
  v2 = sub_18E200B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E321D04(uint64_t a1)
{
  v2 = sub_18E200B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E321D40(uint64_t a1)
{
  v2 = sub_18E327E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E321D7C(uint64_t a1)
{
  v2 = sub_18E327E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E321DB8(uint64_t a1)
{
  v2 = sub_18E327E44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E321DF4(uint64_t a1)
{
  v2 = sub_18E327E44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E321E30(uint64_t a1)
{
  v2 = sub_18E1E8B0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E321E6C(uint64_t a1)
{
  v2 = sub_18E1E8B0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E321EA8(uint64_t a1)
{
  v2 = sub_18E22476C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E321EE4(uint64_t a1)
{
  v2 = sub_18E22476C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UseCase.AssetRequired.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  sub_18E1CFCDC(a1);
  MEMORY[0x193ACCC20](v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E321F94(uint64_t a1)
{
  v2 = *v1;
  sub_18E44F48C();
  MEMORY[0x193ACCC20](v2);
  return sub_18E44F4CC();
}

ModelCatalog::UseCase __swiftcall UseCase.init(identifier:assetRequired:)(ModelCatalog::UseCaseIdentifier identifier, ModelCatalog::UseCase::AssetRequired assetRequired)
{
  v3 = *assetRequired;
  *v2 = *identifier.useCaseRawIdentifier;
  v2[1] = (v3 < 4) & (0xBu >> (v3 & 0xF));
  v2[2] = v3;
  result.identifier = identifier;
  return result;
}

void static UseCase.== infix(_:_:)()
{
  sub_18E20052C();
  v2 = *v1;
  v3 = sub_18E1C6DAC(*v0);
  v5 = v4;
  if (v3 != sub_18E1C6DAC(v2) || v5 != v6)
  {
    sub_18E44F3CC();
  }

  sub_18E1E1DA0();
}

uint64_t sub_18E3220E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7165527465737361 && a2 == 0xED00006465726975)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

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

uint64_t sub_18E322208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3220E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E322230(uint64_t a1)
{
  v2 = sub_18E200840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E32226C(uint64_t a1)
{
  v2 = sub_18E200840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UseCase.hash(into:)()
{
  v1 = *(v0 + 2);
  v2 = sub_18E1C6DAC(*v0);
  sub_18E1C88A0(v2, v3);

  sub_18E44F4AC();
  return MEMORY[0x193ACCC20](v1);
}

uint64_t UseCase.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *v1;
  sub_18E1CFCDC(a1);
  sub_18E1C6DAC(v3);
  sub_18E44EB4C();

  sub_18E44F4AC();
  MEMORY[0x193ACCC20](v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E32238C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *v1;
  sub_18E44F48C();
  sub_18E1C6DAC(v3);
  sub_18E44EB4C();

  sub_18E44F4AC();
  MEMORY[0x193ACCC20](v2);
  return sub_18E44F4CC();
}

void static Catalog.requestResource(identifier:)()
{
  sub_18E1C62A0();
  sub_18E1E8734();
  sub_18E1E1950();
  swift_allocObject();
  CatalogClient.init()();
  v3 = sub_18E1C89D0();
  v5 = sub_18E27617C(v3, v4);
  if (v1)
  {
  }

  else
  {
    v6 = v5;
    sub_18E1D121C(0, &qword_1EABE05F0, 0x1E696AD98);
    v7 = v6;
    v8 = sub_18E44EEDC();
    v9 = sub_18E201E5C(v8);

    if (v9)
    {

      *v0 = xmmword_18E4B0C50;
      *(v0 + 16) = 0;
    }

    else
    {
      v10 = v7;
      v11 = sub_18E44EEDC();
      v12 = sub_18E201E5C(v11);

      if (v12)
      {

        sub_18E1CA5A4();
        *v0 = 0xD000000000000028;
        *(v0 + 8) = v13;
        *(v0 + 16) = 1;
      }

      else
      {
        v14 = v10;
        v15 = sub_18E44EEDC();
        v16 = sub_18E201E5C(v15);

        sub_18E1CA5A4();
        if (v16)
        {
          *v0 = 0xD000000000000035;
          *(v0 + 8) = v17;
          *(v0 + 16) = 2;
        }

        else
        {
          *v0 = 0xD000000000000029;
          *(v0 + 8) = v17;
          *(v0 + 16) = 3;
        }
      }
    }
  }

  sub_18E1C6650();
}

void static Catalog.releaseResource(identifier:)()
{
  sub_18E1C62A0();
  sub_18E1E8734();
  sub_18E1E1950();
  swift_allocObject();
  CatalogClient.init()();
  v3 = sub_18E1C89D0();
  v5 = sub_18E2761A8(v3, v4);
  if (v1)
  {
  }

  else
  {
    v6 = v5;
    sub_18E1D121C(0, &qword_1EABE05F0, 0x1E696AD98);
    v7 = v6;
    v8 = sub_18E44EEDC();
    v9 = sub_18E201E5C(v8);

    if (v9)
    {

      *v0 = xmmword_18E4B0C50;
      *(v0 + 16) = 0;
    }

    else
    {
      v10 = v7;
      v11 = sub_18E44EEDC();
      v12 = sub_18E201E5C(v11);

      if (v12)
      {

        sub_18E1CA5A4();
        *v0 = 0xD000000000000032;
        *(v0 + 8) = v13;
        *(v0 + 16) = 1;
      }

      else
      {
        v14 = v10;
        v15 = sub_18E44EEDC();
        v16 = sub_18E201E5C(v15);

        sub_18E1CA5A4();
        if (v16)
        {
          *v0 = 0xD00000000000003FLL;
          *(v0 + 8) = v17;
          *(v0 + 16) = 2;
        }

        else
        {
          *v0 = 0xD000000000000028;
          *(v0 + 8) = v17;
          *(v0 + 16) = 3;
        }
      }
    }
  }

  sub_18E1C6650();
}

void static Catalog.createFoundationModelsResourceBundleQuery(model:url:orchestrator:)()
{
  sub_18E1C62A0();
  v98 = v0;
  v103 = v1;
  v104 = v2;
  v100 = v3;
  v101 = v4;
  v6 = v5;
  v97[0] = v7;
  v8 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v9 = sub_18E1C5B08(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C64E0();
  v108 = v10;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v97 - v12;
  v14 = sub_18E44E54C();
  sub_18E1C4EAC();
  v109 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C64E0();
  v97[1] = v17;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v18);
  v99 = v97 - v19;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v20);
  v114 = sub_18E44E2BC();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v21);
  sub_18E1C64E0();
  v106 = v22;
  sub_18E1C6668();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v97 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v97 - v27;
  v110 = sub_18E44E38C();
  sub_18E1C4EAC();
  v105 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1C64E0();
  v102 = v31;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v97 - v33;
  sub_18E44E37C();
  v107 = v34;
  MEMORY[0x193ACBAD0](0xD000000000000022, 0x800000018E465E50);
  if (v6)
  {
    sub_18E44E28C();
    sub_18E3EF9F0();
    v36 = v35;
    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      sub_18E1C5C70(v37);
      sub_18E3EF9F0();
      v36 = v92;
    }

    sub_18E220ABC();
    v41(v39 + v40 * v38, v28, v114);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_18E2F66D4(v103, v13, &qword_1EABE2FE0, &qword_18E49CE00);
  if (sub_18E1CAF28(v13, 1, v14) == 1)
  {
    sub_18E327C3C(v13, &qword_1EABE2FE0);
  }

  else
  {
    v42 = sub_18E1E1BDC();
    v43(v42);
    sub_18E44E48C();
    sub_18E44E28C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E1C6868();
      sub_18E3EF9F0();
      v36 = v95;
    }

    v45 = v36[2];
    v44 = v36[3];
    if (v45 >= v44 >> 1)
    {
      sub_18E1C5C70(v44);
      sub_18E3EF9F0();
      v36 = v96;
    }

    v46 = sub_18E1C6004();
    v47(v46);
    sub_18E220ABC();
    v50(v48 + v49 * v45, v26, v114);
  }

  v51 = v105;
  v52 = v108;
  if (v104)
  {
    sub_18E44E28C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E1C6868();
      sub_18E3EF9F0();
      v36 = v93;
    }

    v54 = v36[2];
    v53 = v36[3];
    if (v54 >= v53 >> 1)
    {
      sub_18E1C5C70(v53);
      sub_18E3EF9F0();
      v36 = v94;
    }

    sub_18E220ABC();
    v57(v55 + v56 * v54, v106, v114);
  }

  if (v36[2])
  {
    v58 = v102;
    sub_18E44E37C();

    sub_18E44E2FC();
    sub_18E44E36C();
    if (!v59)
    {

      Error = type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E1CF9D0();
      v79 = sub_18E327298(v78);
      sub_18E1C8558(Error, v79);
      sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08);
      v80 = sub_18E1D81F8();
      v81 = v110;
      v82(v80);
      sub_18E1CA5A4();
      *v36 = 0xD000000000000029;
      v36[1] = v83;
      sub_18E1CF9A0();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v84 = *(v51 + 8);
      v85 = sub_18E1D03EC();
      v84(v85);
      (v84)(v107, v81);
      goto LABEL_29;
    }

    sub_18E2706EC(&qword_1EABE0E20, &unk_18E4E24C0);
    *(swift_allocObject() + 16) = xmmword_18E49D9B0;
    v52 = v108;
    sub_18E44E28C();

    sub_18E44E2FC();
    (*(v51 + 8))(v58, v110);
  }

  sub_18E44E32C();
  if (sub_18E1CAF28(v52, 1, v14) == 1)
  {

    sub_18E327C3C(v52, &qword_1EABE2FE0);
    v60 = type metadata accessor for CatalogErrors.QueryError(0);
    sub_18E1CF9D0();
    v62 = sub_18E327298(v61);
    sub_18E1C8558(v60, v62);
    sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08);
    v63 = sub_18E1D81F8();
    v64(v63);
    sub_18E1CA5A4();
    *v36 = 0xD000000000000018;
    v36[1] = v65;
    sub_18E1CF9A0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v66 = sub_18E1E8CBC();
    v67(v66);
LABEL_29:
    sub_18E233284();
    sub_18E1C6650();
    return;
  }

  v68 = sub_18E1E1B1C();
  v69(v68);
  v70 = sub_18E1E6BB0();
  v71(v70);
  v72 = v98;
  ResourceBundleQuery.init(uri:)();
  if (v72)
  {
    v73 = sub_18E1E1A28();
    v74(v73);
    v75 = sub_18E1E8CBC();
    v76(v75);

    goto LABEL_29;
  }

  v86 = v112;
  if (v112)
  {
    v87 = v113;
    v88 = v111;
    (*(v109 + 8))(v99, v14);
    v89 = sub_18E1E8CBC();
    v90(v89);

    v91 = v97[0];
    *v97[0] = v88;
    *(v91 + 8) = v86;
    *(v91 + 16) = v87;
    goto LABEL_29;
  }

  __break(1u);
}

uint64_t sub_18E32314C()
{
  result = sub_18E44E9AC();
  qword_1EABE2FA8 = result;
  return result;
}

uint64_t static ResourceStatusOutput.legend.getter()
{
  if (qword_1EABE0D10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18E3231E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656372756F736572 && a2 == 0xEA00000000004449;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F736572 && a2 == 0xEC00000065707954;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E656372756F73 && a2 == 0xEA0000000000656DLL;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6870796C67 && a2 == 0xE500000000000000;
          if (v9 || (sub_18E44F3CC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636E657265686F63 && a2 == 0xEE006870796C4765;
            if (v10 || (sub_18E44F3CC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
              if (v11 || (sub_18E44F3CC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x5679616C70736964 && a2 == 0xEE006E6F69737265;
                if (v12 || (sub_18E44F3CC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1702521203 && a2 == 0xE400000000000000;
                  if (v13 || (sub_18E44F3CC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7365736143657375 && a2 == 0xE800000000000000;
                    if (v14 || (sub_18E44F3CC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7465537465737361 && a2 == 0xE800000000000000;
                      if (v15 || (sub_18E44F3CC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x746E6563726570 && a2 == 0xE700000000000000;
                        if (v16 || (sub_18E44F3CC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x746E657373456D67 && a2 == 0xEB000000006C6169;
                          if (v17 || (sub_18E44F3CC() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 1936154996 && a2 == 0xE400000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_18E44F3CC();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

uint64_t sub_18E323630(char a1)
{
  result = 0x656372756F736572;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6169726176;
      goto LABEL_4;
    case 3:
      result = 0x614E656372756F73;
      break;
    case 4:
      result = 0x6870796C67;
      break;
    case 5:
      result = 0x636E657265686F63;
      break;
    case 6:
      result = 0x6E6F6973726576;
      break;
    case 7:
      result = 0x5679616C70736964;
      break;
    case 8:
      result = 1702521203;
      break;
    case 9:
      result = 0x7365736143657375;
      break;
    case 10:
      result = 0x7465537465737361;
      break;
    case 11:
      v3 = 0x6E6563726570;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 12:
      result = 0x746E657373456D67;
      break;
    case 13:
      result = 1936154996;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E3237AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E323800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3231E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E323828(uint64_t a1)
{
  v2 = sub_18E327F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E323864(uint64_t a1)
{
  v2 = sub_18E327F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResourceStatusOutput.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  sub_18E2706EC(&qword_1EABE34D0, &qword_18E4B0FF0);
  sub_18E1C4EAC();
  v5 = v4;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C61D0();
  sub_18E1C5628(v3);
  sub_18E327F9C();
  sub_18E1E2294();
  sub_18E44F4EC();
  sub_18E1E6754();
  sub_18E44F31C();
  if (v0)
  {
    v7 = sub_18E1D03F8();
    v8(v7);
  }

  else
  {
    sub_18E240934(1);
    sub_18E1D4D80();
    sub_18E44F31C();
    sub_18E240934(2);
    sub_18E1D4BF4();
    sub_18E1D4D80();
    sub_18E44F2BC();
    sub_18E240934(3);
    sub_18E1D4D80();
    sub_18E44F2BC();
    sub_18E240934(4);
    sub_18E1D4D80();
    sub_18E44F31C();
    sub_18E240934(5);
    sub_18E1D4D80();
    sub_18E44F2BC();
    sub_18E240934(6);
    sub_18E1D4D80();
    sub_18E44F2BC();
    sub_18E240934(7);
    sub_18E1D4D80();
    sub_18E44F2BC();
    sub_18E240934(8);
    sub_18E1D4D80();
    sub_18E44F30C();
    sub_18E2706EC(&qword_1EABE3370, &qword_18E4B0EF0);
    sub_18E327718();
    sub_18E2233D4();
    sub_18E44F35C();
    sub_18E240934(10);
    sub_18E2233D4();
    sub_18E44F2BC();
    sub_18E240934(11);
    sub_18E1E845C();
    sub_18E44F2DC();
    sub_18E1D0280(12);
    sub_18E1E845C();
    sub_18E44F32C();
    sub_18E2706EC(&qword_1EABE3368, &qword_18E4B0EE8);
    sub_18E327640();
    sub_18E1E845C();
    sub_18E44F35C();
    (*(v5 + 8))(v1);
  }

  sub_18E1CEAC4();
  sub_18E1C6650();
}

void ResourceStatusOutput.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v47 = sub_18E2706EC(&qword_1EABE34E0, &qword_18E4B0FF8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C61D0();
  v6 = v2[4];
  v7 = sub_18E1E3DF8();
  sub_18E1DD34C(v7, v8);
  sub_18E327F9C();
  sub_18E1E2294();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E228760();
    sub_18E1C9934(v2);
    if (v0)
    {

      if ((v6 & 1) == 0)
      {
LABEL_9:
        if (!v4)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else if (!v6)
    {
      goto LABEL_9;
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v4;
  LOBYTE(v49[0]) = 0;
  v10 = sub_18E44F22C();
  v46 = v11;
  sub_18E1C29E8(1);
  v36 = sub_18E44F22C();
  v45 = v12;
  sub_18E1C29E8(2);
  v35 = sub_18E44F1CC();
  v44 = v13;
  sub_18E1C29E8(3);
  v34 = sub_18E44F1CC();
  v43 = v14;
  sub_18E1C29E8(4);
  v33 = sub_18E44F22C();
  v42 = v15;
  sub_18E1C29E8(5);
  v32 = sub_18E44F1CC();
  v41 = v16;
  sub_18E1C29E8(6);
  v31 = sub_18E44F1CC();
  v40 = v17;
  sub_18E1C29E8(7);
  v30 = sub_18E44F1CC();
  v39 = v18;
  sub_18E1C29E8(8);
  v29 = sub_18E44F21C();
  v66 = v19 & 1;
  sub_18E2706EC(&qword_1EABE3370, &qword_18E4B0EF0);
  LOBYTE(v48[0]) = 9;
  sub_18E327A54();
  sub_18E1E292C();
  sub_18E44F26C();
  v38 = v49[0];
  LOBYTE(v49[0]) = 10;
  sub_18E1E292C();
  v20 = sub_18E44F1CC();
  v37 = v21;
  v22 = v20;
  v61 = 11;
  sub_18E1E292C();
  v23 = sub_18E44F1EC();
  v25 = v24;
  v26 = sub_18E207A14();
  v27(v26, v47);
  v64 = v25 & 1;
  v48[0] = v10;
  v48[1] = v46;
  v48[2] = v36;
  v48[3] = v45;
  v48[4] = v35;
  v48[5] = v44;
  v48[6] = v34;
  v48[7] = v43;
  v48[8] = v33;
  v48[9] = v42;
  v48[10] = v32;
  v48[11] = v41;
  v48[12] = v31;
  v48[13] = v40;
  v48[14] = v30;
  v48[15] = v39;
  v48[16] = v29;
  v28 = v66;
  LOBYTE(v48[17]) = v66;
  v48[18] = v38;
  v48[19] = v22;
  v48[20] = v37;
  v48[21] = v23;
  LOWORD(v48[22]) = v25 & 1;
  v48[23] = MEMORY[0x1E69E7CC0];
  memcpy(v9, v48, 0xC0uLL);
  sub_18E327FF0(v48, v49);
  sub_18E1C9934(v2);
  v49[0] = v10;
  v49[1] = v46;
  v49[2] = v36;
  v49[3] = v45;
  v49[4] = v35;
  v49[5] = v44;
  v49[6] = v34;
  v49[7] = v43;
  v49[8] = v33;
  v49[9] = v42;
  v49[10] = v32;
  v49[11] = v41;
  v49[12] = v31;
  v49[13] = v40;
  v49[14] = v30;
  v49[15] = v39;
  v49[16] = v29;
  v50 = v28;
  *&v51[3] = *&v65[3];
  *v51 = *v65;
  v52 = v38;
  v53 = v22;
  v54 = v37;
  v55 = v23;
  v56 = v25 & 1;
  v57 = 0;
  v58 = v62;
  v59 = v63;
  v60 = MEMORY[0x1E69E7CC0];
  sub_18E328028(v49);
LABEL_11:
  sub_18E1C6650();
}

Swift::String __swiftcall ResourceStatusOutput.description(useCaseIdentifier:withAssetSet:)(ModelCatalog::UseCaseIdentifier_optional useCaseIdentifier, Swift::Bool withAssetSet)
{
  sub_18E2200D4();
  v43 = v3;
  v5 = *v4;
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[13];
  v9 = v2[15];
  v10 = v2[18];
  sub_18E1D4A4C();
  sub_18E44EC0C();
  sub_18E32F094();
  MEMORY[0x193ACC300](45, 0xE100000000000000);

  v11 = v45;
  if (v8)
  {

    sub_18E1E2898();
    v12 = sub_18E44EB5C();
    if (__OFSUB__(22, v12))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_18E1D4A4C();
    sub_18E44EC0C();
    sub_18E32F094();
    v14 = sub_18E1E2898();
    MEMORY[0x193ACC300](v14);

    v15 = v44;
    v11 = v45;
  }

  else
  {
    v15 = v44;
  }

  sub_18E1D4A4C();
  sub_18E44EC0C();
  sub_18E32F094();
  MEMORY[0x193ACC300](45, 0xE100000000000000);

  v16 = v45;
  if (v9)
  {

    sub_18E2019D0();
    v12 = sub_18E44EB5C();
    if (__OFSUB__(12, v12))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_18E1D4A4C();
    sub_18E44EC0C();
    sub_18E32F094();
    v17 = sub_18E2019D0();
    MEMORY[0x193ACC300](v17);

    v18 = v44;
    v16 = v45;
  }

  else
  {
    v18 = v44;
  }

  v42 = v18;
  if (v5 != 126)
  {
    v38 = v15;
    v39 = v11;
    v40 = v7;
    v41 = v6;
    v20 = (v10 + 33);
    v21 = -*(v10 + 16);
    v22 = -1;
    while (1)
    {
      if (v21 + v22 == -1)
      {
        goto LABEL_22;
      }

      if (++v22 >= *(v10 + 16))
      {
        break;
      }

      v23 = *v20;
      v24 = sub_18E1C6DAC(*(v20 - 1));
      v26 = v25;
      if (v24 == sub_18E1C6DAC(v5) && v26 == v27)
      {

        if ((v23 & 1) == 0)
        {
LABEL_22:
          v19 = 0x2020202020202020;
          goto LABEL_23;
        }

LABEL_20:
        v19 = 0x6C616E6F6974706FLL;
LABEL_23:
        v7 = v40;
        v6 = v41;
        v15 = v38;
        v11 = v39;
        goto LABEL_24;
      }

      v20 += 3;
      sub_18E2019D0();
      v29 = sub_18E44F3CC();

      if (v29)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v19 = 0x2020202020202020;
LABEL_24:
  if ((v43 & 1) == 0)
  {
    sub_18E44EFFC();

    sub_18E1CF5C8();
    MEMORY[0x193ACC300](8224, 0xE200000000000000);
    sub_18E1CF5C8();
    MEMORY[0x193ACC300](v19, 0xE800000000000000);

    sub_18E1CF5C8();
    v34 = sub_18E234314();
    MEMORY[0x193ACC300](v34);

    sub_18E1CF5C8();
    v35 = sub_18E1C6004();
    MEMORY[0x193ACC300](v35);

    sub_18E1CF5C8();
    v36 = sub_18E1D5F00();
    MEMORY[0x193ACC300](v36);
    goto LABEL_28;
  }

  sub_18E1D5F00();
  v12 = sub_18E44EB5C();
  if (__OFSUB__(90, v12))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_18E1D4A4C();
  v30 = sub_18E44EC0C();
  v32 = v31;

  MEMORY[0x193ACC300](v30, v32);

  sub_18E44EFFC();

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](8224, 0xE200000000000000);
  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v19, 0xE800000000000000);

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v15, v11);

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v42, v16);

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v7, v6);

  sub_18E1CF5C8();
  v33 = sub_18E1D8004();
  MEMORY[0x193ACC300](v33);

LABEL_28:
  sub_18E1E29DC();
LABEL_33:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

void sub_18E324784(unsigned __int8 *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, unint64_t *a5@<X8>)
{
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = *a1;
  v17 = *a2;
  if ((*(*(a4 + 8) + 64))(a3))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v22 = 0xE800000000000000;
    v23 = 0x64616F6C65646973;
    v24 = 0xA600000000000000;
    v25 = 4021525730;
LABEL_3:
    v26 = v25 & 0xFFFF0000FFFFFFFFLL | 0x8FB800000000;
    goto LABEL_15;
  }

  if (v17)
  {
    v40[0] = v17;
    v27 = v38;
    (*(a4 + 40))(v40, a3, a4);
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_11:
    v38 = v27;
    (*(v10 + 32))(v15, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(v40, AssociatedTypeWitness, AssociatedConformanceWitness);
    v23 = v40[0];
    v22 = v40[1];
    (*(AssociatedConformanceWitness + 88))(&v41, AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v42;
    if (v42)
    {
      v18 = v41;
    }

    else
    {
      v18 = 0;
    }

    v20 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v15, AssociatedTypeWitness);
    v21 = 0;
    v24 = 0xA300000000000000;
    v26 = 8756450;
LABEL_15:
    v30 = v37;
    *v37 = v26;
    v30[1] = v24;
    v30[2] = v23;
    v30[3] = v22;
    v30[4] = v18;
    v30[5] = v19;
    v30[6] = v20;
    *(v30 + 56) = v21;
    return;
  }

  v27 = v38;
  (*(a4 + 32))(a3, a4);
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_6:
  v44 = v27;
  v28 = v27;
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  if (swift_dynamicCast())
  {
    if (v43 == 1)
    {
      sub_18E32ED9C();

      v38 = 0;
      switch(v16)
      {
        case 1:
LABEL_26:

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v24 = 0xA400000000000000;
          v26 = 2224332784;
          goto LABEL_15;
        case 2:
LABEL_22:
          v26 = 0x8FB8EFB88FE2;

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          goto LABEL_23;
        case 3:
LABEL_24:

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v24 = 0xA400000000000000;
          v26 = 3197280240;
          goto LABEL_15;
        case 4:
LABEL_21:

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v24 = 0xA600000000000000;
          v25 = 4020935394;
          goto LABEL_3;
        case 5:
LABEL_27:

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v24 = 0xA600000000000000;
          v25 = 4019493858;
          goto LABEL_3;
        case 6:
          goto LABEL_30;
        case 7:
LABEL_25:

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v24 = 0xA400000000000000;
          v26 = 2879037424;
          goto LABEL_15;
        case 8:
LABEL_28:

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v24 = 0xA300000000000000;
          v26 = 9215458;
          goto LABEL_15;
        case 9:
          (*(a4 + 64))(v40, a3, a4);
          v31 = [objc_opt_self() sharedManager];
          if (sub_18E44EB5C())
          {
            v32 = sub_18E44EA8C();
            v33 = sub_18E44EA8C();
            v34 = [v31 downloadStatusForSubscriber:v32 subscriptionName:v33];

            sub_18E299C2C(v34, &v39);
            v35 = v39;

            switch(v35)
            {
              case 1:
                goto LABEL_9;
              case 2:
                goto LABEL_26;
              case 3:
                goto LABEL_22;
              case 4:
                goto LABEL_27;
              case 5:
                goto LABEL_24;
              case 6:
                goto LABEL_25;
              case 7:
                goto LABEL_28;
              default:
                goto LABEL_21;
            }
          }

LABEL_30:
          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v24 = 0xA400000000000000;
          v26 = 3046416368;
          break;
        default:
LABEL_9:

          v23 = 0;
          v22 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v26 = 0x8FB8EFB98FE2;
LABEL_23:
          v21 = 1;
          v24 = 0xA600000000000000;
          break;
      }

      goto LABEL_15;
    }

    sub_18E32ED9C();
  }
}

uint64_t sub_18E324DB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 0x8FB8EFAA9AE2;
  v95 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v92 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v91 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v78 - v20;
  v21 = sub_18E44EEFC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = *(v21 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v35 = *a2;
  if (v35 && a3)
  {
    v82 = v17;
    v83 = v30;
    v86 = v29;
    v87 = v33;
    v81 = v34;
    v89 = v32;
    v90 = v28;
    v84 = v12;
    v98 = v35;
    v36 = &v78 - v31;
    v37 = *(a7 + 40);

    v93 = a3;

    v88 = v36;
    v37(&v98, v95, a7);
    v39 = v87;
    v40 = v88;
    sub_18E201DC8(v88, 0, 1, AssociatedTypeWitness);
    (*(a7 + 48))(v93, v95, a7);
    v41 = v24;
    v42 = v89;
    sub_18E201DC8(v39, 0, 1, AssociatedTypeWitness);
    v43 = *(v90 + 48);
    v85 = v41;
    v44 = *(v41 + 16);
    v44(v42, v40, v21);
    v44(v42 + v43, v39, v21);
    v45 = sub_18E1CAF28(v42, 1, AssociatedTypeWitness);
    if (v45 == 1)
    {
      v46 = sub_18E1CAF28(v42 + v43, 1, AssociatedTypeWitness);

      if (v46 != 1)
      {
        v10 = 0x1000000000000014;
        v49 = *(v85 + 8);
        v49(v39, v21);
        v49(v40, v21);
        v49(v42 + v43, v21);
        v49(v42, v21);
        return v10;
      }

      goto LABEL_7;
    }

    v44(v86, v42, v21);
    if (sub_18E1CAF28(v42 + v43, 1, AssociatedTypeWitness) == 1)
    {

      v48 = *(v85 + 8);
      v48(v39, v21);
      v48(v40, v21);
      (*(v84 + 8))(v86, AssociatedTypeWitness);
      v48(v42 + v43, v21);
      v48(v42, v21);
      return 0x100000000000001DLL;
    }

    v80 = v43;
    v50 = v83;
    v44(v83, v42 + v43, v21);
    v51 = *(v84 + 16);
    v51(v94, v86, AssociatedTypeWitness);
    v52 = v91;
    v51(v91, v50, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v54 = *(AssociatedConformanceWitness + 48);
    v54(&v98, AssociatedTypeWitness, AssociatedConformanceWitness);
    v56 = v98;
    v55 = v99;
    v95 = AssociatedConformanceWitness;
    v79 = v54;
    v54(&v96, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v56 == v96 && v55 == v97)
    {
    }

    else
    {
      v58 = sub_18E44F3CC();

      if ((v58 & 1) == 0)
      {

        v59 = *(v84 + 8);
        v59(v52, AssociatedTypeWitness);
        v59(v94, AssociatedTypeWitness);
        v60 = *(v85 + 8);
        v60(v87, v21);
        v60(v88, v21);
        v59(v83, AssociatedTypeWitness);
        v59(v86, AssociatedTypeWitness);
        v61 = v89;
        v60(v89 + v80, v21);
        v60(v61, v21);
        return 0x100000000000001ALL;
      }
    }

    v62 = v84;
    v63 = *(v84 + 8);
    v64 = (v84 + 8);
    v63(v52, AssociatedTypeWitness);
    v65 = v94;
    v94 = v63;
    v91 = v64;
    v63(v65, AssociatedTypeWitness);
    v66 = *(v62 + 32);
    v66(v82, v86, AssociatedTypeWitness);
    v66(v92, v83, AssociatedTypeWitness);
    v67 = v95;
    v68 = v79;
    v79(&v98, AssociatedTypeWitness, v95);
    v69 = v98;
    v70 = v99;
    v68(&v96, AssociatedTypeWitness, v67);
    if (v69 == v96 && v70 == v97)
    {

      v39 = v87;
      v73 = v80;
    }

    else
    {
      v72 = sub_18E44F3CC();

      v39 = v87;
      v73 = v80;
      if ((v72 & 1) == 0)
      {

        v74 = v94;
        (v94)(v92, AssociatedTypeWitness);
        v74(v82, AssociatedTypeWitness);
        v40 = v88;
        v42 = v89;
LABEL_7:
        v47 = *(v85 + 8);
        v47(v39, v21);
        v47(v40, v21);
        (*(v81 + 8))(v42, v90);
        return 0;
      }
    }

    v75 = v94;
    (v94)(v92, AssociatedTypeWitness);
    v75(v82, AssociatedTypeWitness);
    v76 = *(v85 + 8);
    v76(v39, v21);
    v76(v88, v21);
    v77 = v89;
    v76(v89 + v73, v21);
    v76(v77, v21);
    return 2459213808;
  }

  return v10;
}

void CatalogResource.resourceStatus(status:progress:assetLock:coherentAssetLock:)()
{
  sub_18E1C62A0();
  v79 = v2;
  v4 = v3;
  v62 = v5;
  v77 = v6;
  v76 = v7;
  v9 = v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C64E0();
  v98 = v12;
  sub_18E1C6668();
  v14 = *MEMORY[0x1EEE9AC00](v13);
  v74 = *v15;
  v78 = *(v10 + 16);
  v78(&v60 - v16, v0, v17);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  if (swift_dynamicCast())
  {
    v75 = v10;
    v61 = v0;
    sub_18E1C551C(&v84, &v95);
    v18 = v96;
    v19 = v97;
    sub_18E1E15F4(&v95, v96);
    v80 = v14;
    v81[0] = v74;
    sub_18E324784(&v80, v81, v18, v19, &v87);
    if (v1)
    {
      sub_18E1C9934(&v95);
      v20 = sub_18E1EA56C();
      v21(v20, v4);
      goto LABEL_9;
    }

    v66 = v87;
    v67 = v88;
    v70 = v89;
    v71 = v91;
    v68 = v90;
    v69 = v92;
    v72 = v93;
    v73 = 0;
    v65 = v94;
    sub_18E1E15F4(&v95, v96);
    v23 = sub_18E1E25B0();
    v24(v23);
    v63 = v92;
    v64 = v91;

    v25 = v96;
    v26 = v97;
    v27 = sub_18E1E15F4(&v95, v96);
    v87 = v74;
    v22 = v79;
    v74 = sub_18E324DB4(v27, &v87, v62, v4, v25, v79, v26);
    v62 = v28;
    sub_18E1C9934(&v95);
    v0 = v61;
    v10 = v75;
  }

  else
  {
    v72 = 0;
    v73 = v1;
    v63 = 0;
    v64 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v74 = 0;
    v62 = 0;
    v65 = 1;
    v66 = 2728370160;
    v67 = 0xA400000000000000;
    v22 = v79;
  }

  v31 = *(v10 + 8);
  v29 = v10 + 8;
  v30 = v31;
  v32 = sub_18E1DD5A0();
  v31(v32);
  v78(v98, v0, v4);
  sub_18E2706EC(&qword_1EABE34E8, &qword_18E4B1000);
  v33 = swift_dynamicCast();
  v34 = 0;
  v35 = 0;
  v78 = 0;
  v79 = 0;
  if (v33)
  {
    sub_18E1C551C(&v95, v81);
    v75 = v29;
    v36 = v82;
    v37 = v83;
    sub_18E1E15F4(v81, v82);
    (*(v37 + 24))(&v84, v36, v37);
    v78 = v86;
    v79 = v85;

    sub_18E1FE044(&v84);
    v38 = v30;
    v39 = v82;
    v40 = v83;
    sub_18E1E15F4(v81, v82);
    v41 = *(v40 + 24);
    v42 = v40;
    v30 = v38;
    v41(&v87, v39, v42);
    v34 = v87;
    v35 = v88;

    sub_18E1FE044(&v87);
    sub_18E1C9934(v81);
  }

  v30(v98, v4);
  v99 = v22[13](v4, v22);
  v44 = v43;
  v45 = v35;
  v46 = v22[14](v4, v22);
  v47 = v4;
  v48 = v34;
  v50 = v49;
  v51 = v22[11](v47, v22);
  *v9 = v99;
  *(v9 + 8) = v44;
  *(v9 + 16) = v46;
  *(v9 + 24) = v50;
  *(v9 + 32) = v48;
  *(v9 + 40) = v45;
  v52 = v78;
  *(v9 + 48) = v79;
  *(v9 + 56) = v52;
  v53 = v67;
  *(v9 + 64) = v66;
  *(v9 + 72) = v53;
  v54 = v62;
  *(v9 + 80) = v74;
  *(v9 + 88) = v54;
  v55 = v68;
  *(v9 + 96) = v70;
  *(v9 + 104) = v55;
  v56 = v69;
  *(v9 + 112) = v71;
  *(v9 + 120) = v56;
  *(v9 + 128) = v72;
  *(v9 + 136) = v65;
  v58 = v63;
  v57 = v64;
  *(v9 + 144) = v51;
  *(v9 + 152) = v57;
  v59 = v76;
  *(v9 + 160) = v58;
  *(v9 + 168) = v59;
  *(v9 + 176) = v77 & 1;
  *(v9 + 177) = 0;
  *(v9 + 184) = MEMORY[0x1E69E7CC0];
LABEL_9:
  sub_18E221740();
  sub_18E1C6650();
}

uint64_t sub_18E325CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x178uLL);
  return sub_18E310E24();
}

uint64_t sub_18E325D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x178uLL);
  return sub_18E31E050();
}

uint64_t sub_18E325D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x168uLL);
  return sub_18E310EE0();
}

uint64_t sub_18E325DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E3262B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E3265B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326894(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_18E44ECCC();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_18E3268E4()
{
  result = qword_1EABE3008;
  if (!qword_1EABE3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3008);
  }

  return result;
}

unint64_t sub_18E326938()
{
  result = qword_1EABE3010;
  if (!qword_1EABE3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3010);
  }

  return result;
}

unint64_t sub_18E32698C()
{
  result = qword_1EABE3018;
  if (!qword_1EABE3018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3018);
  }

  return result;
}

unint64_t sub_18E3269E0()
{
  result = qword_1EABE3050;
  if (!qword_1EABE3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3050);
  }

  return result;
}

unint64_t sub_18E326A34()
{
  result = qword_1EABE3058;
  if (!qword_1EABE3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3058);
  }

  return result;
}

unint64_t sub_18E326A88()
{
  result = qword_1EABE3098;
  if (!qword_1EABE3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3098);
  }

  return result;
}

unint64_t sub_18E326ADC()
{
  result = qword_1EABE30A0;
  if (!qword_1EABE30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30A0);
  }

  return result;
}

unint64_t sub_18E326B30()
{
  result = qword_1EABE30A8;
  if (!qword_1EABE30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30A8);
  }

  return result;
}

unint64_t sub_18E326B84()
{
  result = qword_1EABE30B0;
  if (!qword_1EABE30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30B0);
  }

  return result;
}

unint64_t sub_18E326BD8()
{
  result = qword_1EABE30B8;
  if (!qword_1EABE30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30B8);
  }

  return result;
}

unint64_t sub_18E326C2C()
{
  result = qword_1EABE30F8;
  if (!qword_1EABE30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30F8);
  }

  return result;
}

unint64_t sub_18E326C80()
{
  result = qword_1EABE3100;
  if (!qword_1EABE3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3100);
  }

  return result;
}

unint64_t sub_18E326CD4()
{
  result = qword_1EABE3138;
  if (!qword_1EABE3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3138);
  }

  return result;
}

unint64_t sub_18E326D28()
{
  result = qword_1EABE3140;
  if (!qword_1EABE3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3140);
  }

  return result;
}

unint64_t sub_18E326D7C()
{
  result = qword_1EABE3148;
  if (!qword_1EABE3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3148);
  }

  return result;
}

unint64_t sub_18E326DD0()
{
  result = qword_1EABE3150;
  if (!qword_1EABE3150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3150);
  }

  return result;
}

unint64_t sub_18E326E24()
{
  result = qword_1EABE3198;
  if (!qword_1EABE3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3198);
  }

  return result;
}

unint64_t sub_18E326E78()
{
  result = qword_1EABE31A0;
  if (!qword_1EABE31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31A0);
  }

  return result;
}

unint64_t sub_18E326ECC()
{
  result = qword_1EABE31A8;
  if (!qword_1EABE31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31A8);
  }

  return result;
}

unint64_t sub_18E326F20()
{
  result = qword_1EABE31B0;
  if (!qword_1EABE31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31B0);
  }

  return result;
}

unint64_t sub_18E326F74()
{
  result = qword_1EABE31E8;
  if (!qword_1EABE31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31E8);
  }

  return result;
}

unint64_t sub_18E326FC8()
{
  result = qword_1EABE31F0;
  if (!qword_1EABE31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31F0);
  }

  return result;
}

uint64_t sub_18E32703C(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for CatalogErrors.QueryError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

unint64_t sub_18E3270A0()
{
  result = qword_1EABE3248;
  if (!qword_1EABE3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3248);
  }

  return result;
}

unint64_t sub_18E3270F4()
{
  result = qword_1EABE3250;
  if (!qword_1EABE3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3250);
  }

  return result;
}

unint64_t sub_18E327148()
{
  result = qword_1EABE3258;
  if (!qword_1EABE3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3258);
  }

  return result;
}

unint64_t sub_18E32719C()
{
  result = qword_1EABE3260;
  if (!qword_1EABE3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3260);
  }

  return result;
}

unint64_t sub_18E3271F0()
{
  result = qword_1EABE3268;
  if (!qword_1EABE3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3268);
  }

  return result;
}

unint64_t sub_18E327244()
{
  result = qword_1EABE3278;
  if (!qword_1EABE3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3278);
  }

  return result;
}

unint64_t sub_18E327298(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18E3272DC(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for CatalogErrors.QueryError(0);
  (*(*(Error - 8) + 32))(a2, a1, Error);
  return a2;
}

unint64_t sub_18E327340()
{
  result = qword_1EABE32D8;
  if (!qword_1EABE32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE32D8);
  }

  return result;
}

unint64_t sub_18E327394()
{
  result = qword_1EABE32E0;
  if (!qword_1EABE32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE32E0);
  }

  return result;
}

unint64_t sub_18E3273E8()
{
  result = qword_1EABE3308;
  if (!qword_1EABE3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3308);
  }

  return result;
}

unint64_t sub_18E32743C()
{
  result = qword_1EABE3310;
  if (!qword_1EABE3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3310);
  }

  return result;
}

unint64_t sub_18E327490()
{
  result = qword_1EABE00B8;
  if (!qword_1EABE00B8)
  {
    sub_18E2707F8(&qword_1EABE3350, &qword_18E4B0ED8);
    sub_18E327514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00B8);
  }

  return result;
}

unint64_t sub_18E327514()
{
  result = qword_1EABE0550;
  if (!qword_1EABE0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0550);
  }

  return result;
}

unint64_t sub_18E327568()
{
  result = qword_1EABE00B0;
  if (!qword_1EABE00B0)
  {
    sub_18E2707F8(&unk_1EABE3358, &qword_18E4B0EE0);
    sub_18E3275EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00B0);
  }

  return result;
}

unint64_t sub_18E3275EC()
{
  result = qword_1EABE02A8;
  if (!qword_1EABE02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02A8);
  }

  return result;
}

unint64_t sub_18E327640()
{
  result = qword_1EABE00A0;
  if (!qword_1EABE00A0)
  {
    sub_18E2707F8(&qword_1EABE3368, &qword_18E4B0EE8);
    sub_18E3276C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00A0);
  }

  return result;
}

unint64_t sub_18E3276C4()
{
  result = qword_1EABE0138;
  if (!qword_1EABE0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0138);
  }

  return result;
}

unint64_t sub_18E327718()
{
  result = qword_1EABE0098;
  if (!qword_1EABE0098)
  {
    sub_18E2707F8(&qword_1EABE3370, &qword_18E4B0EF0);
    sub_18E32779C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0098);
  }

  return result;
}

unint64_t sub_18E32779C()
{
  result = qword_1EABE00F0;
  if (!qword_1EABE00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00F0);
  }

  return result;
}

unint64_t sub_18E3277F0()
{
  result = qword_1EABE0090;
  if (!qword_1EABE0090)
  {
    sub_18E2707F8(&qword_1EABE3378, &qword_18E4B0EF8);
    sub_18E327874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0090);
  }

  return result;
}

unint64_t sub_18E327874()
{
  result = qword_1EABE00D8;
  if (!qword_1EABE00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00D8);
  }

  return result;
}

unint64_t sub_18E3278C8()
{
  result = qword_1ED6A83C0;
  if (!qword_1ED6A83C0)
  {
    sub_18E2707F8(&qword_1EABE3350, &qword_18E4B0ED8);
    sub_18E265618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83C0);
  }

  return result;
}

unint64_t sub_18E32794C()
{
  result = qword_1ED6A83B0;
  if (!qword_1ED6A83B0)
  {
    sub_18E2707F8(&unk_1EABE3358, &qword_18E4B0EE0);
    sub_18E2656AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83B0);
  }

  return result;
}

unint64_t sub_18E3279D0()
{
  result = qword_1ED6A83A8;
  if (!qword_1ED6A83A8)
  {
    sub_18E2707F8(&qword_1EABE3368, &qword_18E4B0EE8);
    sub_18E265A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83A8);
  }

  return result;
}

unint64_t sub_18E327A54()
{
  result = qword_1ED6A8398;
  if (!qword_1ED6A8398)
  {
    sub_18E2707F8(&qword_1EABE3370, &qword_18E4B0EF0);
    sub_18E265A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8398);
  }

  return result;
}

unint64_t sub_18E327AD8()
{
  result = qword_1ED6A8388;
  if (!qword_1ED6A8388)
  {
    sub_18E2707F8(&qword_1EABE3378, &qword_18E4B0EF8);
    sub_18E265F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8388);
  }

  return result;
}

unint64_t sub_18E327B5C()
{
  result = qword_1EABE3390;
  if (!qword_1EABE3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3390);
  }

  return result;
}

unint64_t sub_18E327BE8()
{
  result = qword_1EABE33D8;
  if (!qword_1EABE33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE33D8);
  }

  return result;
}

uint64_t sub_18E327C3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E221758(a1, a2);
  sub_18E2706EC(v3, v4);
  sub_18E1C82B8();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_18E327CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E327D48()
{
  result = qword_1ED6A7BA0;
  if (!qword_1ED6A7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7BA0);
  }

  return result;
}

unint64_t sub_18E327D9C()
{
  result = qword_1EABE0558;
  if (!qword_1EABE0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0558);
  }

  return result;
}

unint64_t sub_18E327DF0()
{
  result = qword_1ED6A7A18;
  if (!qword_1ED6A7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7A18);
  }

  return result;
}

unint64_t sub_18E327E44()
{
  result = qword_1ED6A7CC8[0];
  if (!qword_1ED6A7CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A7CC8);
  }

  return result;
}

unint64_t sub_18E327E98()
{
  result = qword_1ED6A7D80;
  if (!qword_1ED6A7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7D80);
  }

  return result;
}

uint64_t _s12ModelCatalog0B0O31modelManagerDefaultMemoryBudgets6UInt64VvgZ_0()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceMemorySize = MobileGestalt_get_deviceMemorySize();

    v3 = 4000000;
    if (deviceMemorySize < 0x300000000)
    {
      v3 = 2000000;
    }

    if (deviceMemorySize >= 0x600000000)
    {
      return 6000000;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}