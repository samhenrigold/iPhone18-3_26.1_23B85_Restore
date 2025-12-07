uint64_t sub_22C150010(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C15009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C150010(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C1500C8(uint64_t a1)
{
  v2 = sub_22C176C90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C150104(uint64_t a1)
{
  v2 = sub_22C176C90();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonQuery.Handle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v24 = v23;
  sub_22BE5CE4C(&qword_27D913710, &qword_22C2B83A0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B01C();
  sub_22BE2018C(v24);
  v26 = sub_22C176C90();
  sub_22BE194D0(&type metadata for PersonQuery.Handle.CodingKeys, v27, v26);
  sub_22C176CE4();
  sub_22C18F374();
  sub_22C273F34();
  v28 = sub_22BE25C08();
  v29(v28);
  sub_22BE22978();
  sub_22BE18478();
}

void PersonQuery.Handle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  sub_22C18E778();
  sub_22BE5CE4C(&qword_27D913728, &qword_22C2B83A8);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B01C();
  sub_22BE3763C();
  v17 = sub_22C176C90();
  sub_22BE18878(&type metadata for PersonQuery.Handle.CodingKeys, v18, v17);
  if (!v14)
  {
    sub_22C176D38();
    sub_22BE1B934();
    sub_22C18F368();
    sub_22C273E44();
    v19 = sub_22BE17B24();
    v20(v19);
    *v15 = a13;
  }

  sub_22BE26B64(v13);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C150344(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1699574633 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 25705 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

uint64_t sub_22C150490(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 1699574633;
      break;
    case 3:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C15052C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C150344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C150554(uint64_t a1)
{
  v2 = sub_22C176D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C150590(uint64_t a1)
{
  v2 = sub_22C176D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  sub_22BE5CE4C(&qword_27D913738, &qword_22C2B83B0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE2018C(v1);
  v3 = sub_22C176D8C();
  sub_22BE25524(&type metadata for PersonQuery.CodingKeys, v4, v3);
  sub_22C18E9AC();
  sub_22BE2684C();
  sub_22C18F5FC();
  sub_22C273EF4();
  if (!v0)
  {
    sub_22BE38948();
    sub_22C176DE0();
    sub_22BE26258();
    sub_22BE39020();
    sub_22C273F34();
    sub_22C18EAFC();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE3418C();
    sub_22C18E494();
    sub_22C273EF4();
  }

  v5 = sub_22C18E748();
  v6(v5);
  sub_22BE35D48();
  sub_22BE18478();
}

void PersonQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  sub_22C18F140();
  v17 = v16;
  sub_22BE5CE4C(&qword_27D913750, &qword_22C2B83B8);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE234F4();
  sub_22BE3763C();
  v19 = sub_22C176D8C();
  sub_22BE33A2C(&type metadata for PersonQuery.CodingKeys, v20, v19);
  if (v13)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE416D4();
    sub_22C273E04();
    sub_22C18F4BC();
    sub_22BE38948();
    sub_22C176E34();
    sub_22C18FA0C();
    sub_22BE1B934();
    sub_22BE23070();
    sub_22C273E44();
    sub_22C18EAFC();
    sub_22BE416D4();
    v27 = sub_22C273E74();
    sub_22BE3418C();
    sub_22BE416D4();
    v21 = sub_22C273E04();
    v23 = v22;
    v26 = v21;
    v24 = sub_22BE33560();
    v25(v24);
    *v17 = v15;
    *(v17 + 8) = v14;
    *(v17 + 16) = a12;
    *(v17 + 17) = v27 & 1;
    *(v17 + 24) = v26;
    *(v17 + 32) = v23;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t QueryStep.context.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryStep(v0);
  return sub_22BE18504();
}

uint64_t QueryStep.payload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryStep(v0);
  return sub_22BE18504();
}

uint64_t QueryStep.isAuthenticated.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for QueryStep(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t QueryStep.isAuthenticated.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryStep(v0);
  return sub_22BE18504();
}

void QueryStep.init(statementId:context:payload:isAuthenticated:)()
{
  sub_22BE3C358();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C0E9824();
  Step = type metadata accessor for QueryStep(v5);
  v7 = *(Step + 20);
  v8 = type metadata accessor for ActionParameterContext(0);
  sub_22C0E966C(v0 + v7, v9, v10, v8);
  sub_22C26E684();
  sub_22BE1834C();
  v11 = sub_22BE336E8();
  v12(v11);
  sub_22BE2343C();
  sub_22BE259B0();
  sub_22C171FA8(v4, v0 + v13);
  *(v0 + *(Step + 28)) = v2;
  sub_22BE267B8();
}

void static QueryPayload.== infix(_:_:)()
{
  sub_22BE19460();
  v40 = v3;
  v5 = v4;
  v37 = type metadata accessor for QueryPayload.IdentifierQuery(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v39 = v7;
  v8 = sub_22BE183BC();
  v36 = type metadata accessor for QueryPayload.StringQuery(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v38 = v10;
  v11 = sub_22BE183BC();
  type metadata accessor for QueryPayload(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v13);
  sub_22BE23858();
  MEMORY[0x28223BE20](v14);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v15);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE5CE4C(&qword_27D913760, &qword_22C2B83C0);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B72C();
  v20 = v0 + *(v19 + 56);
  sub_22BE1A964(v5, v0);
  sub_22BE1A964(v40, v20);
  sub_22BE3CC34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE35C34();
      v34 = sub_22BE1B62C();
      sub_22BE1A964(v34, v35);
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        static PersonQuery.== infix(_:_:)();

        goto LABEL_20;
      }

      goto LABEL_24;
    case 2u:
      sub_22BE35C34();
      v25 = sub_22BE37490();
      sub_22BE1A964(v25, v26);
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_22C0E9848();
LABEL_22:
        sub_22C171FFC();
        goto LABEL_25;
      }

      sub_22C171FA8(v20, v38);
      sub_22BE38970();
      if (sub_22C272954())
      {
        v27 = *(v36 + 20);
        v28 = *(v1 + v27);
        v29 = *(v1 + v27 + 8);
        v30 = (v38 + v27);
        if (v28 != *v30 || v29 != v30[1])
        {
          sub_22C274014();
        }
      }

      sub_22C18EACC();
      sub_22C171FFC();
LABEL_28:
      sub_22C171FFC();
      sub_22C18E040();
      sub_22C171FFC();
      break;
    case 3u:
      sub_22BE35C34();
      v32 = sub_22BE1A6BC();
      sub_22BE1A964(v32, v33);
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }

      sub_22C171FA8(v20, v39);
      if (sub_22C272954())
      {
        sub_22BE9693C(*(v2 + *(v37 + 20)), *(v39 + *(v37 + 20)));
      }

      sub_22C18EAB4();
      sub_22C171FFC();
      goto LABEL_28;
    case 4u:
      sub_22BE35C34();
      v23 = sub_22BE19454();
      sub_22BE1A964(v23, v24);
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    default:
      sub_22BE35C34();
      v21 = sub_22BE33FD8();
      sub_22BE1A964(v21, v22);
      sub_22BF6AC14();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_24:

LABEL_25:
        sub_22C18DC5C(v0, &qword_27D913760);
      }

      else
      {
LABEL_5:
        sub_22BE191CC();
        sub_22BEA6844();

LABEL_20:

        sub_22C18E040();
        sub_22C171FFC();
      }

      break;
  }

  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t sub_22C15109C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E65687475417369 && a2 == 0xEF64657461636974)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

uint64_t sub_22C151208(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 0x64616F6C796170;
      break;
    case 3:
      result = 0x6E65687475417369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C1512A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15109C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1512D0(uint64_t a1)
{
  v2 = sub_22C176EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15130C(uint64_t a1)
{
  v2 = sub_22C176EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryStep.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913768, &qword_22C2B83C8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C176EC8();
  sub_22BE25524(&type metadata for QueryStep.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for QueryStep(0);
    v5 = sub_22BE335C0();
    type metadata accessor for ActionParameterContext(v5);
    sub_22C18EA9C();
    sub_22BE20458(v6);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    sub_22BE200EC();
    type metadata accessor for QueryPayload(0);
    sub_22C18EA84();
    sub_22BE20458(v7);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    sub_22C18E900();
    sub_22C18E17C();
    sub_22C273F64();
  }

  v8 = sub_22BE37A10();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryStep.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22BE19130();
  v26 = sub_22C18FEC4(v25);
  type metadata accessor for QueryPayload(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v52 = v28;
  v29 = sub_22BE5CE4C(&qword_27D911F48, &unk_22C2B5CB0);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE24FD8();
  sub_22C26E684();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v31);
  sub_22BE1955C();
  sub_22BE5CE4C(&qword_27D913780, &qword_22C2B83D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A8B4();
  type metadata accessor for QueryStep(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v33);
  sub_22BE28FD8();
  v54 = v34;
  v35 = sub_22C18FA90();
  type metadata accessor for ActionParameterContext(v35);
  sub_22BE3AE2C();
  sub_22BE19DC4(v36, v37, v38, v39);
  v40 = sub_22C18F9AC();
  sub_22BE41E84(v40);
  sub_22C176EC8();
  sub_22BEE939C();
  sub_22C274214();
  if (v21)
  {
    sub_22BE26B64(v53);
    sub_22C18DC5C(v24 + v22, &qword_27D911F48);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v41);
    sub_22BEE92A4();
    sub_22C273EB4();
    sub_22BE27C14();
    v42(v24, v23, v43);
    sub_22BE33FE4();
    sub_22C18EA9C();
    sub_22BE20458(v44);
    sub_22C18E9A0();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22BE200EC();
    sub_22C18EA84();
    sub_22BE20458(v45);
    sub_22C18F614();
    sub_22C18EA30();
    sub_22C273EB4();
    sub_22BE259B0();
    sub_22C171FA8(v52, v24 + v46);
    sub_22C18E900();
    v47 = sub_22C273E74();
    v48 = sub_22C18E460();
    v49(v48);
    *(v24 + *(v54 + 28)) = v47 & 1;
    v50 = sub_22BE385E4();
    sub_22BE1A964(v50, v51);
    sub_22BE26B64(v53);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t VariableStep.setters.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for VariableStep(v0);
  return sub_22BE18504();
}

uint64_t sub_22C151A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726574746573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C151B54(char a1)
{
  if (a1)
  {
    return 0x73726574746573;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C151B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C151A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C151BC4(uint64_t a1)
{
  v2 = sub_22C176F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C151C00(uint64_t a1)
{
  v2 = sub_22C176F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void VariableStep.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913790, &qword_22C2B83D8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C176F1C();
  sub_22BE25524(&type metadata for VariableStep.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v5 = type metadata accessor for VariableStep(0);
    sub_22BE35C64(v5);
    sub_22BE5CE4C(&qword_27D9137A0, &qword_22C2B83E0);
    sub_22C176F70();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v6 = sub_22BE37A10();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void VariableStep.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F8A4(v2);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  sub_22BE5CE4C(&qword_27D9137B8, &qword_22C2B83E8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BE24FD8();
  type metadata accessor for VariableStep(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE19338();
  sub_22BE41E84(v0);
  sub_22C176F1C();
  sub_22BE3CCD4();
  sub_22C18FCB0();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE32E44();
    sub_22BE18F44();
    sub_22BE20458(v7);
    sub_22BEE92A4();
    sub_22C18FFC0();
    sub_22BE362A8();
    sub_22C273EB4();
    sub_22C18F458();
    v8 = sub_22BE392D4();
    v9(v8);
    sub_22BE5CE4C(&qword_27D9137A0, &qword_22C2B83E0);
    sub_22BE33FE4();
    sub_22C177024();
    sub_22C18E128();
    sub_22BE36350();
    sub_22C273EB4();
    v10 = sub_22BE25424();
    v11(v10);
    sub_22BE35D34();
    v12 = sub_22BE431F0();
    sub_22BE1A964(v12, v13);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C1520D8(uint64_t a1)
{
  v2 = sub_22C1770D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C152114(uint64_t a1)
{
  v2 = sub_22C1770D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.SearchToolQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  sub_22BE5CE4C(&qword_27D9137D0, &qword_22C2B83F0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE3C0A8(v0);
  sub_22C1770D8();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
  sub_22BE860DC();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v2 = sub_22C18E57C();
  v3(v2);
  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t QueryPayload.StringQuery.init(typeId:text:)()
{
  sub_22BE3E864();
  sub_22C272984();
  sub_22BE1834C();
  v0 = sub_22BE1C2A0();
  v1(v0);
  v2 = type metadata accessor for QueryPayload.StringQuery(0);
  return sub_22C18F734(v2);
}

uint64_t static QueryPayload.StringQuery.== infix(_:_:)()
{
  sub_22BE18378();
  if ((sub_22C272954() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for QueryPayload.StringQuery(0);
  sub_22C18E1A0();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    return 1;
  }

  return sub_22C274014();
}

uint64_t sub_22C1523BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C152480(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x644965707974;
  }
}

uint64_t sub_22C1524B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1523BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1524DC(uint64_t a1)
{
  v2 = sub_22C17712C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C152518(uint64_t a1)
{
  v2 = sub_22C17712C();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.StringQuery.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D9137E8, &qword_22C2B8400);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C17712C();
  sub_22BE25524(&type metadata for QueryPayload.StringQuery.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C272984();
  sub_22C18E0E8();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v5 = type metadata accessor for QueryPayload.StringQuery(0);
    sub_22C18F320(*(v5 + 20));
    sub_22BE42570();
    sub_22C273F54();
  }

  v6 = sub_22BE37A10();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryPayload.StringQuery.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F934(v3);
  sub_22C272984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE28FD8();
  sub_22BE5CE4C(&qword_27D913800, &qword_22C2B8408);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE24FD8();
  v7 = type metadata accessor for QueryPayload.StringQuery(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  sub_22BE3C0A8(v0);
  sub_22C17712C();
  sub_22BE3CCD4();
  sub_22C18F8EC();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E0E8();
    sub_22BE20458(v9);
    sub_22BEE92A4();
    sub_22BE362A8();
    sub_22C273EB4();
    sub_22C18F9C4();
    v10();
    sub_22BE2315C();
    sub_22BE36350();
    v11 = sub_22C273E64();
    v13 = v12;
    v14 = sub_22C18EA60();
    v15(v14);
    v16 = (v1 + *(v7 + 20));
    *v16 = v11;
    v16[1] = v13;
    v17 = sub_22BE385E4();
    sub_22BE1A964(v17, v18);
    sub_22BE26B64(v0);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C15297C()
{
  v0 = sub_22BE2BB48();
  v1(v0);
}

uint64_t sub_22C1529E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_22BE3E864();
  v8(v7);
  sub_22BE1834C();
  v9 = sub_22BE1C2A0();
  v10(v9);
  result = a4(0);
  *(v5 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_22C152A8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C152B50(char a1)
{
  if (a1)
  {
    return 7562345;
  }

  else
  {
    return 0x644965707974;
  }
}

uint64_t sub_22C152B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C152A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C152BAC(uint64_t a1)
{
  v2 = sub_22C177180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C152BE8(uint64_t a1)
{
  v2 = sub_22C177180();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.IdentifierQuery.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913810, &qword_22C2B8410);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C177180();
  sub_22BE25524(&type metadata for QueryPayload.IdentifierQuery.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C272984();
  sub_22C18E0E8();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v5 = type metadata accessor for QueryPayload.IdentifierQuery(0);
    sub_22BE35C64(v5);
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22C18E158(&qword_28106DBE8);
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v6 = sub_22BE37A10();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryPayload.IdentifierQuery.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F8A4(v2);
  sub_22C272984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  sub_22BE5CE4C(&qword_27D913820, &qword_22C2B8418);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BE24FD8();
  type metadata accessor for QueryPayload.IdentifierQuery(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE19338();
  sub_22BE41E84(v0);
  sub_22C177180();
  sub_22BE3CCD4();
  sub_22C18FCB0();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE32E44();
    sub_22C18E0E8();
    sub_22BE20458(v7);
    sub_22BEE92A4();
    sub_22C18FFC0();
    sub_22BE362A8();
    sub_22C273EB4();
    sub_22C18F458();
    v8 = sub_22BE392D4();
    v9(v8);
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE33FE4();
    sub_22BE25D60(&qword_28106DBD8, MEMORY[0x277D83808]);
    sub_22C18E128();
    sub_22BE36350();
    sub_22C273EB4();
    v10 = sub_22BE25424();
    v11(v10);
    sub_22BE35D34();
    v12 = sub_22BE431F0();
    sub_22BE1A964(v12, v13);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C15307C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    sub_22BE2BC78(0x6574656D61726170, 0xEA00000000007372, a1);
    sub_22BE417C8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C1530EC(uint64_t a1)
{
  v2 = sub_22C1771D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153128(uint64_t a1)
{
  v2 = sub_22C1771D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.AnswerSynthesisToolQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  sub_22BE5CE4C(&qword_27D913828, &qword_22C2B8420);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE3C0A8(v0);
  sub_22C1771D4();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
  sub_22BE860DC();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v2 = sub_22C18E57C();
  v3(v2);
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C1532B8()
{
  sub_22BE19130();
  v3 = v2;
  sub_22C18F0F4();
  v6 = sub_22BE34074(v4, v5);
  sub_22BE5CE4C(v6, v7);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = sub_22BE25318(v0);
  v3(v9);
  sub_22BEE94BC();
  sub_22C274214();
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    v10 = sub_22BE862F8();
    sub_22BE33B10(v10, v11);
    v12 = sub_22BE35B0C();
    v13(v12);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C1533D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x800000022C2D9C90 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

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

unint64_t sub_22C153580(char a1)
{
  result = 0x6F54686372616573;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73726570;
      break;
    case 2:
      result = 0x676E69727473;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C153640(uint64_t a1)
{
  v2 = sub_22C17727C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15367C(uint64_t a1)
{
  v2 = sub_22C17727C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1536C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1533D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1536E8(uint64_t a1)
{
  v2 = sub_22C177228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153724(uint64_t a1)
{
  v2 = sub_22C177228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C153760(uint64_t a1)
{
  v2 = sub_22C177324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15379C(uint64_t a1)
{
  v2 = sub_22C177324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1537D8(uint64_t a1)
{
  v2 = sub_22C1773CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153814(uint64_t a1)
{
  v2 = sub_22C1773CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C153850(uint64_t a1)
{
  v2 = sub_22C177420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15388C(uint64_t a1)
{
  v2 = sub_22C177420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1538C8(uint64_t a1)
{
  v2 = sub_22C177378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C153904(uint64_t a1)
{
  v2 = sub_22C177378();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPayload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v78 = v20;
  v25 = v24;
  sub_22BE5CE4C(&qword_27D913840, &qword_22C2B8430);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22C18E344(v27);
  v77 = sub_22BE5CE4C(&qword_27D913848, &qword_22C2B8438);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  v29 = sub_22BE183BC();
  type metadata accessor for QueryPayload.IdentifierQuery(v29);
  sub_22BE18000();
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  sub_22BEC07BC(v31);
  sub_22BE5CE4C(&qword_27D913850, &qword_22C2B8440);
  sub_22BE179D8();
  v75 = v32;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  v34 = sub_22BE183BC();
  type metadata accessor for QueryPayload.StringQuery(v34);
  sub_22BE18000();
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v74 = v36;
  v37 = sub_22BE5CE4C(&qword_27D913858, &qword_22C2B8448);
  sub_22BE18910(v37, &a18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE2C64C();
  sub_22BE5CE4C(&qword_27D913860, &qword_22C2B8450);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  v40 = sub_22BE3100C();
  type metadata accessor for QueryPayload(v40);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v41);
  sub_22BE294E0();
  sub_22BE5CE4C(&qword_27D913868, &qword_22C2B8458);
  sub_22BE179D8();
  v80 = v42;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE25CD0();
  sub_22BE31088(v25);
  sub_22C177228();
  sub_22BEC046C();
  sub_22C274234();
  sub_22BE35C34();
  sub_22BE1A964(v78, v21);
  sub_22BE196A8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v64 = *(v21 + 8);
      v79 = *v21;
      v65 = *(v21 + 16);
      v66 = *(v21 + 17);
      v67 = *(v21 + 24);
      v68 = *(v21 + 32);
      sub_22C18F9DC();
      sub_22C1773CC();
      sub_22C18E6C4();
      sub_22C273EE4();
      v81[0] = v79;
      v81[1] = v64;
      v82 = v65;
      v83 = v66;
      v84 = v67;
      v85 = v68;
      sub_22C1764BC();
      sub_22C19021C(v81, v69);
      v70 = sub_22BE19698();
      v71(v70);
      v72 = sub_22BE336B4();
      v73(v72, v80);

      goto LABEL_8;
    case 2u:
      sub_22C171FA8(v21, v74);
      sub_22C18F8BC();
      sub_22C177378();
      v55 = v80;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22C18F000();
      sub_22BE20458(v56);
      sub_22BE35E54();
      sub_22BE31290();
      sub_22C273FA4();
      v57 = sub_22BE39058();
      v58(v57, v75);
      goto LABEL_6;
    case 3u:
      sub_22C171FA8(v21, v76);
      sub_22C18F940();
      sub_22C177324();
      v55 = v80;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22C18EFE8();
      sub_22BE20458(v59);
      sub_22BE35E54();
      sub_22BE31290();
      sub_22C273FA4();
      v60 = sub_22BE39058();
      v61(v60, v77);
LABEL_6:
      sub_22C171FFC();
      v62 = sub_22BE336B4();
      v63(v62, v55);
      goto LABEL_9;
    case 4u:
      v49 = *v21;
      sub_22C17727C();
      sub_22BE261D0();
      sub_22C273EE4();
      v81[0] = v49;
      sub_22C1772D0();
      sub_22C190174(v81, v50);
      v51 = sub_22BE32D8C();
      v52(v51);
      v53 = sub_22BE38A68();
      v54(v53);
      goto LABEL_8;
    default:
      v44 = *v21;
      sub_22C177420();
      sub_22C18E6C4();
      sub_22C273EE4();
      v81[0] = v44;
      sub_22C177474();
      sub_22C273FA4();
      v45 = sub_22BE25EE4();
      v46(v45);
      v47 = sub_22BE336B4();
      v48(v47, v80);
LABEL_8:

LABEL_9:
      sub_22BEE94B0();
      sub_22BE18478();
      return;
  }
}

void QueryPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  sub_22BE5CE4C(&qword_27D9138C0, &qword_22C2B8460);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  sub_22BEC07BC(v26);
  sub_22BE5CE4C(&qword_27D9138C8, &qword_22C2B8468);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D9138D0, &qword_22C2B8470);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE34034(v29, v110);
  v30 = sub_22BE5CE4C(&qword_27D9138D8, &qword_22C2B8478);
  sub_22BE18910(v30, &a18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  v32 = sub_22BE5CE4C(&qword_27D9138E0, &qword_22C2B8480);
  sub_22BE18910(v32, &a16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D9138E8, &qword_22C2B8488);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE234F4();
  Payload = type metadata accessor for QueryPayload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v37);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v38);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v39);
  sub_22BE23858();
  MEMORY[0x28223BE20](v40);
  sub_22BE25A90();
  v112 = v24;
  sub_22BE41E84(v24);
  sub_22C177228();
  sub_22BE48270();
  sub_22C274214();
  if (!v20)
  {
    sub_22C273ED4();
    sub_22BE7C5C4();
    sub_22C18F638();
    if (v41)
    {
      v42 = Payload;
    }

    else
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v43 == v44)
      {
        __break(1u);
        return;
      }

      v51 = *(v50 + v49);
      sub_22BE3A464(v45, v46, v47, v48, v49);
      sub_22BE7C5C0();
      v53 = v52;
      v55 = v54;
      swift_unknownObjectRelease();
      if (v53 == v55 >> 1)
      {
        switch(v51)
        {
          case 1:
            sub_22C18F9DC();
            sub_22C1773CC();
            sub_22BE3788C();
            sub_22C18FC5C(v81, v82, v83, v84);
            sub_22C176660();
            sub_22BE3788C();
            sub_22C273EB4();
            sub_22BE3411C();
            swift_unknownObjectRelease();
            v102 = sub_22BE25EE4();
            v103(v102);
            v104 = sub_22BE3EA10();
            v105(v104);
            sub_22C18F470(v114, v113);
            goto LABEL_18;
          case 2:
            sub_22C18F8BC();
            sub_22C177378();
            sub_22BE27168();
            sub_22C18FC5C(v72, v73, v74, v75);
            type metadata accessor for QueryPayload.StringQuery(0);
            sub_22C18F000();
            sub_22BE20458(v85);
            sub_22BE3C6E0();
            sub_22BE1A550();
            sub_22C273EB4();
            sub_22BE3411C();
            swift_unknownObjectRelease();
            v90 = sub_22BE200D4();
            v91(v90);
            v92 = sub_22BE3EA10();
            v93(v92);
            swift_storeEnumTagMultiPayload();
            sub_22BE259B0();
            goto LABEL_19;
          case 3:
            sub_22C18F940();
            sub_22C177324();
            sub_22BE3788C();
            sub_22C18FC5C(v76, v77, v78, v79);
            type metadata accessor for QueryPayload.IdentifierQuery(0);
            sub_22C18EFE8();
            sub_22BE20458(v80);
            sub_22BE204A4();
            sub_22C18EB68();
            sub_22C273EB4();
            sub_22BE3411C();
            swift_unknownObjectRelease();
            v94 = sub_22BE1B328();
            v95(v94);
            v96 = sub_22BE3EA10();
            v97(v96);
            swift_storeEnumTagMultiPayload();
            sub_22BE259B0();
            goto LABEL_19;
          case 4:
            v113.n128_u8[0] = 4;
            sub_22C17727C();
            sub_22BE3788C();
            sub_22C18FC5C(v68, v69, v70, v71);
            sub_22C1774C8();
            sub_22BE3788C();
            sub_22C273EB4();
            sub_22BE3411C();
            swift_unknownObjectRelease();
            v86 = sub_22BE291B0();
            v87(v86);
            v88 = sub_22BE3EA10();
            v89(v88);
            sub_22BE48898(v113.n128_i64[0]);
            sub_22C18F4E0();
            goto LABEL_18;
          default:
            v113.n128_u8[0] = 0;
            sub_22C177420();
            sub_22BE3788C();
            sub_22C18FC5C(v56, v57, v58, v59);
            sub_22C17751C();
            sub_22BE3788C();
            sub_22C273EB4();
            sub_22BE3411C();
            swift_unknownObjectRelease();
            v98 = sub_22BE25EE4();
            v99(v98);
            v100 = sub_22BE3EA10();
            v101(v100);
            sub_22BE48898(v113.n128_i64[0]);
            sub_22C18F4E0();
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_22BE259B0();
LABEL_19:
            sub_22BE22944();
            sub_22C171FA8(v106, v107);
            sub_22BE259B0();
            v108 = sub_22BE3E8FC();
            sub_22C171FA8(v108, v109);
            v67 = v112;
            break;
        }

        goto LABEL_13;
      }

      v42 = Payload;
    }

    v60 = sub_22C273B34();
    sub_22BE196B4(v60, MEMORY[0x277D841A0]);
    v62 = v61;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v62 = v42;
    sub_22C273DF4();
    sub_22BE1A918();
    sub_22BE18994();
    v63 = sub_22BE38608();
    v64(v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = sub_22BE31038();
    v66(v65);
  }

  v67 = v112;
LABEL_13:
  sub_22BE26B64(v67);
  sub_22BE34134();
  sub_22BE18478();
}

void static PropertyQuery.== infix(_:_:)()
{
  sub_22BE19460();
  v22 = v4;
  v5 = sub_22BE33690();
  type metadata accessor for QueryPredicate(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  type metadata accessor for PropertyQuery(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v8);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v9);
  sub_22BE26800();
  v10 = sub_22BE5CE4C(&qword_27D913910, &qword_22C2B8490);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B72C();
  v13 = *(v12 + 56);
  sub_22BE1A964(v3, v0);
  sub_22BE1A964(v22, v0 + v13);
  sub_22BE3CC34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C18E0D0();
      v15 = sub_22BE29264();
      sub_22BE1A964(v15, v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_4:
        sub_22BE191CC();
        sub_22BEA0714();

        sub_22BE36698();
        goto LABEL_10;
      }
    }

    else
    {
      sub_22C18E0D0();
      v19 = sub_22BE1A6BC();
      sub_22BE1A964(v19, v20);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_4;
      }
    }

LABEL_9:
    sub_22C18DC5C(v0, &qword_27D913910);
    goto LABEL_10;
  }

  sub_22C18E0D0();
  v17 = sub_22BE37490();
  sub_22BE1A964(v17, v18);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_22C18E384();
    sub_22C171FFC();
    goto LABEL_9;
  }

  sub_22C171FA8(v0 + v13, v1);
  v21 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
  if (v21 || (sub_22C274014()) && (sub_22BF25DB4(*(v2 + 16), *(v1 + 16)))
  {
    sub_22C272844();
  }

  sub_22C18EFB8();
  sub_22C171FFC();
  sub_22BE36680();
  sub_22C171FFC();
  sub_22BE36698();
LABEL_10:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t static QueryPredicate.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0 || (sub_22BF25DB4(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  Predicate = type metadata accessor for QueryPredicate(0);
  sub_22C18EA3C(*(Predicate + 24));

  return sub_22C272844();
}

uint64_t sub_22C154DE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657261706D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581857 && a2 == 0xE300000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 29295 && a2 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C154EE8(char a1)
{
  if (!a1)
  {
    return 0x657261706D6F63;
  }

  if (a1 == 1)
  {
    return 6581857;
  }

  return 29295;
}

uint64_t sub_22C154F2C(uint64_t a1)
{
  v2 = sub_22C17770C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C154F68(uint64_t a1)
{
  v2 = sub_22C17770C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C154FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C154DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C154FD4(uint64_t a1)
{
  v2 = sub_22C1775B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C155010(uint64_t a1)
{
  v2 = sub_22C1775B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15504C(uint64_t a1)
{
  v2 = sub_22C177760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C155088(uint64_t a1)
{
  v2 = sub_22C177760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1550C4(uint64_t a1)
{
  v2 = sub_22C177604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C155100(uint64_t a1)
{
  v2 = sub_22C177604();

  return MEMORY[0x2821FE720](a1, v2);
}

void PropertyQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F7E4();
  sub_22BE5CE4C(&qword_27D913918, &qword_22C2B8498);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE3C048(v3, v24);
  sub_22BE5CE4C(&qword_27D913920, &qword_22C2B84A0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE34034(v5, v25);
  sub_22BE5CE4C(&qword_27D913928, &qword_22C2B84A8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B72C();
  type metadata accessor for QueryPredicate(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE19338();
  type metadata accessor for PropertyQuery(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE1955C();
  sub_22BE5CE4C(&qword_27D913930, &qword_22C2B84B0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  sub_22BE3C0A8(v0);
  sub_22C1775B0();
  sub_22BEC046C();
  sub_22C18F8EC();
  sub_22C274234();
  sub_22C18E0D0();
  sub_22BE1A964(v26, v1);
  sub_22BE27BA4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BF0AF1C();
      sub_22C17770C();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
      sub_22C177658();
      v11 = sub_22BE37DD4();
    }

    else
    {
      sub_22BE32454();
      sub_22C177604();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
      sub_22C177658();
      sub_22BE37DD4();
      sub_22C18FFC0();
    }

    sub_22C18F71C(v11, v12);
    v20 = sub_22BE32D8C();
    v21(v20);
    v22 = sub_22BE1B328();
    v23(v22);
  }

  else
  {
    v13 = sub_22BE18240();
    sub_22C171FA8(v13, v14);
    sub_22C177760();
    sub_22BE261D0();
    sub_22C273EE4();
    sub_22BE4482C();
    sub_22BE20458(v15);
    sub_22C273FA4();
    v16 = sub_22BE1B62C();
    v17(v16);
    sub_22C18E384();
    sub_22C171FFC();
    v18 = sub_22BE1B328();
    v19(v18);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void PropertyQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D913970, &qword_22C2B84C0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE20168(v17, v69);
  sub_22BE5CE4C(&qword_27D913978, &qword_22C2B84C8);
  sub_22BE179D8();
  v72 = v18;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE34034(v20, v70);
  sub_22BE5CE4C(&qword_27D913980, &qword_22C2B84D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  sub_22BE252B8(v22);
  v74 = sub_22BE5CE4C(&qword_27D913988, &qword_22C2B84D8);
  sub_22BE179D8();
  v73 = v23;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1B72C();
  v25 = type metadata accessor for PropertyQuery(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v27);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v28);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v29);
  sub_22BE32374();
  v30 = sub_22C18F9AC();
  sub_22BE3C0A8(v30);
  sub_22C1775B0();
  sub_22C274214();
  if (!v11)
  {
    v71 = v12;
    v31 = v74;
    sub_22C273ED4();
    sub_22BE7C5C4();
    sub_22C18F638();
    if (!v32)
    {
      sub_22BE32C78();
      if (v39 == v40)
      {
        __break(1u);
        return;
      }

      v41 = *(v38 + v37);
      sub_22BE3A464(v33, v34, v35, v36, v37);
      sub_22BE7C5C0();
      v43 = v42;
      v45 = v44;
      swift_unknownObjectRelease();
      if (v43 == v45 >> 1)
      {
        if (v41)
        {
          if (v41 == 1)
          {
            sub_22BF0AF1C();
            sub_22C17770C();
            sub_22BE27168();
            sub_22C273DE4();
            sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
            sub_22C1777B4();
            sub_22C18E5AC();
            sub_22BE285D4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v55 = sub_22C11FDE0();
            v56(v55, v72);
            v57 = sub_22BE39058();
            v58(v57, v74);
            v59 = v14;
            *v14 = a10;
          }

          else
          {
            sub_22BE32454();
            sub_22C177604();
            sub_22BE27168();
            sub_22C273DE4();
            sub_22BE5CE4C(&qword_27D913948, &qword_22C2B84B8);
            sub_22C1777B4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v63 = sub_22BE1B62C();
            v64(v63);
            v65 = sub_22BE3CEF4();
            v66(v65);
            v59 = v13;
            *v13 = a10;
          }

          sub_22C18FFCC();
          swift_storeEnumTagMultiPayload();
          sub_22BE4268C();
          sub_22C171FA8(v59, v15);
          v62 = v75;
        }

        else
        {
          sub_22C177760();
          sub_22BE27168();
          sub_22C273DE4();
          type metadata accessor for QueryPredicate(0);
          sub_22BE4482C();
          sub_22BE20458(v54);
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v60 = sub_22BE32D8C();
          v61(v60);
          (*(v73 + 8))(v10, v74);
          sub_22BE2684C();
          swift_storeEnumTagMultiPayload();
          sub_22BE4268C();
          sub_22C171FA8(v71, v15);
          v62 = v75;
        }

        sub_22BE4268C();
        v67 = sub_22BE336E8();
        sub_22C171FA8(v67, v68);
        v53 = v62;
        goto LABEL_12;
      }

      v31 = v74;
    }

    v46 = sub_22C273B34();
    sub_22BE196B4(v46, MEMORY[0x277D841A0]);
    v48 = v47;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v48 = v25;
    v49 = sub_22C273DF4();
    sub_22BE1B198(v49);
    sub_22BE18994();
    (*(v50 + 104))(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_22BE1A194();
    v52(v51, v31);
  }

  v53 = v75;
LABEL_12:
  sub_22BE26B64(v53);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t VariableSetter.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for VariableSetter(v0);
  return sub_22BE18504();
}

uint64_t VariableSetter.ancestorId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for VariableSetter(v0);
  return sub_22BE18504();
}

uint64_t VariableSetter.init(dependencies:value:ancestorId:)()
{
  v3 = sub_22BE3E864();
  v4 = type metadata accessor for VariableSetter(v3);
  sub_22C26E614();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  *v2 = v1;
  v9 = *(v4 + 20);
  sub_22C272874();
  sub_22BE1834C();
  (*(v10 + 32))(&v2[v9], v0);
  return sub_22BE2343C();
}

void VariableSetter.description.getter()
{
  sub_22BE3C358();
  v0 = sub_22BE191CC();
  sub_22BE5CE4C(v0, v1);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B01C();
  sub_22C273AA4();
  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL);
  sub_22C26E684();
  sub_22BE33690();
  sub_22C272874();
  sub_22BE18F44();
  sub_22BE20458(v3);
  sub_22BE1B73C();
  v4 = sub_22C272E64();
  MEMORY[0x2318AB8D0](v4);

  MEMORY[0x2318AB8D0](0x3A65756C6176202CLL, 0xE900000000000020);
  type metadata accessor for VariableSetter(0);
  sub_22C18E864();
  sub_22C273C24();
  sub_22C18F534();
  sub_22C18F910();
  sub_22BE22814();
  sub_22BE1AB1C();
  v5 = sub_22C273074();
  MEMORY[0x2318AB8D0](v5);

  sub_22BE267B8();
}

void static VariableSetter.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v2 = sub_22C26E614();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE197B8();
  v4 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1AEF0();
  sub_22BEA36D4();
  if (v7)
  {
    type metadata accessor for VariableSetter(0);
    sub_22C18FCBC();
    sub_22C18FFA8(v8);
    if (sub_22C272844())
    {
      v9 = *(v1 + 48);
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE181B0(v0);
      if (!v10)
      {
        sub_22BE191CC();
        sub_22BE22814();
        sub_22BE181B0(v0 + v9);
        if (!v10)
        {
          v13 = sub_22BE38638();
          v14(v13);
          sub_22BE2B8F4();
          sub_22BE20458(v15);
          sub_22BE1AB74();
          sub_22C272FD4();
          v16 = off_27D909000;
          v17 = sub_22BE19454();
          v16(v17);
          v18 = sub_22BE3C5E4();
          v16(v18);
          sub_22C18DC5C(v0, &qword_27D908FF8);
          goto LABEL_12;
        }

        v11 = sub_22BE2399C();
        v12(v11, v2);
LABEL_11:
        sub_22C18DC5C(v0, &qword_27D909028);
        goto LABEL_12;
      }

      sub_22BE181B0(v0 + v9);
      if (!v10)
      {
        goto LABEL_11;
      }

      sub_22C18DC5C(v0, &qword_27D908FF8);
    }
  }

LABEL_12:
  sub_22BE1AABC();
}

uint64_t sub_22C15634C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C156464(char a1)
{
  if (!a1)
  {
    return 0x6E65646E65706564;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x726F747365636E61;
}

uint64_t sub_22C1564CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15634C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1564F4(uint64_t a1)
{
  v2 = sub_22C177868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C156530(uint64_t a1)
{
  v2 = sub_22C177868();

  return MEMORY[0x2821FE720](a1, v2);
}

void VariableSetter.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D9139A0, &qword_22C2B84E0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C177868();
  sub_22BE33B8C(&type metadata for VariableSetter.CodingKeys, v3, v2);
  sub_22BE5CE4C(&qword_27D9139B0, &qword_22C2B84E8);
  sub_22C1778BC();
  sub_22BE37DD4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for VariableSetter(0);
    sub_22C18E1EC();
    sub_22C272874();
    sub_22BE18720();
    sub_22BE20458(v4);
    sub_22BE31254();
    sub_22C273FA4();
    sub_22C18FF54();
    sub_22C26E614();
    sub_22BE2B8F4();
    sub_22BE20458(v5);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273F34();
  }

  v6 = sub_22BE37508();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void VariableSetter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = v14;
  v38 = v16;
  v17 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE2BA30(v19, v37);
  v20 = sub_22C272874();
  sub_22BE179D8();
  v39 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22BE18DFC();
  sub_22BE5CE4C(&qword_27D9139C8, &qword_22C2B84F0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE24FD8();
  type metadata accessor for VariableSetter(v24);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v25);
  sub_22BE1955C();
  v27 = *(v26 + 24);
  v28 = sub_22C26E614();
  sub_22BE1A140();
  sub_22BE19DC4(v29, v30, v31, v28);
  sub_22BE2018C(v15);
  sub_22C177868();
  sub_22BE3CCD4();
  sub_22C18E60C();
  sub_22C274214();
  if (v11)
  {
    sub_22BE26B64(v15);
    sub_22C18DC5C(&v13[v27], &qword_27D908FF8);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D9139B0, &qword_22C2B84E8);
    sub_22C1779A8();
    sub_22BE35E60();
    sub_22C273EB4();
    *v13 = a10;
    sub_22BE18720();
    sub_22BE20458(v32);
    sub_22C273EB4();
    (*(v39 + 32))(&v13[*(v10 + 20)], v12, v20);
    sub_22BE2B8F4();
    sub_22BE20458(v33);
    sub_22C18EA6C();
    sub_22C273E44();
    v34 = sub_22C18F288();
    v35(v34);
    sub_22BE2343C();
    v36 = sub_22BE19EBC();
    sub_22BE1A964(v36, v38);
    sub_22BE26B64(v15);
    sub_22BE26148();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void QueryPredicate.parameterId.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_22C156C58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_22BE2021C();
  v8 = *(v7(v6) + 24);
  a3(0);
  sub_22BE1834C();
  v10 = *(v9 + 40);

  return v10(v3 + v8, v4);
}

uint64_t QueryPredicate.value.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryPredicate(v0);
  return sub_22BE18504();
}

uint64_t QueryPredicate.init(parameterId:op:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  type metadata accessor for QueryPredicate(0);
  sub_22C272874();
  sub_22BE1834C();
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t QueryPredicate.description.getter()
{
  sub_22BE382D8();
  MEMORY[0x2318AB8D0](40, 0xE100000000000000);
  MEMORY[0x2318AB8D0](*v0, *(v0 + 8));
  MEMORY[0x2318AB8D0](32, 0xE100000000000000);
  v1 = sub_22C120054(*(v0 + 16));
  MEMORY[0x2318AB8D0](32, 0xE100000000000000, v1);
  type metadata accessor for QueryPredicate(0);
  sub_22C272874();
  sub_22C273C24();
  v2 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v2);
  return v4;
}

uint64_t sub_22C156E3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 28783 && a2 == 0xE200000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C156F44(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 28783;
  }

  return 0x65756C6176;
}

uint64_t sub_22C156F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C156E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C156FC4(uint64_t a1)
{
  v2 = sub_22C177A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C157000(uint64_t a1)
{
  v2 = sub_22C177A94();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryPredicate.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D9139E0, &qword_22C2B84F8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C177A94();
  sub_22BE33B8C(&type metadata for QueryPredicate.CodingKeys, v3, v2);
  sub_22C18E9AC();
  sub_22BE26108();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE38948();
    sub_22C177AE8();
    sub_22BE26258();
    sub_22BE26108();
    sub_22C273FA4();
    type metadata accessor for QueryPredicate(0);
    sub_22C18EAFC();
    sub_22C272874();
    sub_22BE18720();
    sub_22BE20458(v4);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v5 = sub_22BE37508();
  v6(v5);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  v17 = v16;
  v30 = v18;
  v31 = sub_22C272874();
  sub_22BE179D8();
  v29 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BE28FD8();
  sub_22BE5CE4C(&qword_27D9139F8, &qword_22C2B8500);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE24FD8();
  type metadata accessor for QueryPredicate(v22);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v23);
  sub_22BE197B8();
  sub_22C18E560(v17);
  sub_22C177A94();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v13)
  {
    sub_22BE26B64(v17);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE36514();
    *v12 = sub_22C273E64();
    *(v12 + 8) = v24;
    sub_22BE38948();
    sub_22C177B3C();
    sub_22C18FA0C();
    sub_22C18E59C();
    sub_22C273EB4();
    *(v12 + 16) = a12;
    sub_22C18EAFC();
    sub_22BE18720();
    sub_22BE20458(v25);
    sub_22BE36514();
    sub_22C273EB4();
    v26 = sub_22C18EA60();
    v27(v26);
    (*(v29 + 32))(v12 + *(v14 + 24), v15, v31);
    v28 = sub_22BE19EBC();
    sub_22BE1A964(v28, v30);
    sub_22BE26B64(v17);
    sub_22C18E384();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22C1574B4()
{
  result = 61;
  switch(*v0)
  {
    case 1:
      result = 15649;
      break;
    case 2:
      result = 62;
      break;
    case 3:
      result = 15678;
      break;
    case 4:
      result = 60;
      break;
    case 5:
      result = 15676;
      break;
    case 6:
      result = 0x736E6961746E6F63;
      break;
    case 7:
      result = 0x666572705F736168;
      break;
    case 8:
      result = 0x666675735F736168;
      break;
    case 9:
      result = 0x65777465625F7369;
      break;
    default:
      return result;
  }

  return result;
}

IntelligenceFlowPlannerSupport::QueryOperator_optional __swiftcall QueryOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22C15764C@<X0>(uint64_t *a1@<X8>)
{
  result = QueryOperator.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_22C157784()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  sub_22C18EA48(*(v5 + 20));

  *v1 = v2;
  v1[1] = v0;
}

uint64_t ActionParameterContext.parameterId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionParameterContext(v0);
  return sub_22BE18504();
}

uint64_t ActionParameterContext.tool.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ActionParameterContext(v0);
  sub_22C18E8AC(*(v1 + 24));
}

void ActionParameterContext.tool.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C190048();
  v5 = sub_22C18E9C8();
  v6 = type metadata accessor for ActionParameterContext(v5);
  sub_22C18EA48(*(v6 + 24));

  sub_22C18F2EC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  sub_22C190034();
}

uint64_t ActionParameterContext.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionParameterContext(v0);
  return sub_22BE18504();
}

void ActionParameterContext.actionClass.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ActionParameterContext(v0);
  sub_22C18F688(*(v1 + 28));
}

uint64_t ActionParameterContext.actionClass.setter()
{
  v2 = sub_22C18F9E8();
  result = type metadata accessor for ActionParameterContext(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t ActionParameterContext.actionClass.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionParameterContext(v0);
  return sub_22BE18504();
}

void ActionParameterContext.init(statementId:actionClass:toolId:parameterId:)()
{
  sub_22BE3C358();
  sub_22C18F5A8();
  v6 = *v5;
  sub_22C26E684();
  sub_22BE1834C();
  v7 = sub_22BE1AB1C();
  v8(v7);
  v9 = type metadata accessor for ActionParameterContext(0);
  *(v4 + v9[7]) = v6;
  v10 = v4 + v9[6];
  *v10 = v3;
  *(v10 + 8) = v2;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  v11 = (v4 + v9[5]);
  *v11 = v1;
  v11[1] = v0;
  sub_22BE267B8();
}

uint64_t ActionParameterContext.init(statementId:actionClass:tool:parameterId:)@<X0>(char *a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v13 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 32);
  sub_22C26E684();
  sub_22BE1834C();
  v8 = sub_22BE1C2A0();
  v9(v8);
  v10 = type metadata accessor for ActionParameterContext(0);
  *(a3 + *(v10 + 28)) = v4;
  v11 = a3 + *(v10 + 24);
  *v11 = v13;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  return sub_22C18F734(v10);
}

uint64_t sub_22C157AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1819242356 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C436E6F69746361 && a2 == 0xEB00000000737361)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

uint64_t sub_22C157C1C(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 1819242356;
      break;
    case 3:
      result = 0x6C436E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C157CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C157AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C157CDC(uint64_t a1)
{
  v2 = sub_22C177B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C157D18(uint64_t a1)
{
  v2 = sub_22C177B90();

  return MEMORY[0x2821FE720](a1, v2);
}

void ActionParameterContext.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913A08, &qword_22C2B8508);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C177B90();
  sub_22BE25524(&type metadata for ActionParameterContext.CodingKeys, v3, v2);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22C18F958();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for ActionParameterContext(0);
    sub_22C18E864();
    sub_22C18F320(v5);
    sub_22BE36628();
    sub_22C273F54();
    sub_22BEB9C9C();
    sub_22C18F35C();

    sub_22C18F30C();
    sub_22C273FA4();

    sub_22C177BE4();
    sub_22C18E17C();
    sub_22C273FA4();
  }

  v6 = sub_22BE37A10();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void ActionParameterContext.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  sub_22C18FEC4(v5);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE5CE4C(&qword_27D913A20, &qword_22C2B8510);
  sub_22BE179D8();
  v20 = v8;
  v21 = v7;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  v10 = type metadata accessor for ActionParameterContext(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE197B8();
  sub_22BE31088(v4);
  sub_22C177B90();
  sub_22BE48270();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_22BE18F44();
    sub_22BE20458(v12);
    sub_22C18FDF0();
    sub_22C273EB4();
    sub_22C18F338();
    v13 = sub_22BE1B18C();
    v14(v13);
    sub_22C18F620(1);
    v15 = sub_22C273E64();
    v16 = (v0 + *(v10 + 20));
    *v16 = v15;
    v16[1] = v17;
    sub_22BE39E24();
    sub_22BEB9D44();
    sub_22BE40660();
    sub_22C273EB4();
    sub_22C18F234(v22);
    sub_22BEE9478();
    sub_22C177C38();
    sub_22BE40660();
    sub_22C18E618();
    sub_22C273EB4();
    (*(v20 + 8))(v2, v21);
    *(v0 + *(v10 + 28)) = 0;
    v18 = sub_22C1088E8();
    sub_22BE1A964(v18, v19);
    sub_22BE26B64(v4);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t sub_22C1583A4()
{
  v2 = sub_22BE2021C();
  v4 = v3(v2);
  return sub_22C172628(v1, v0 + *(v4 + 20));
}

uint64_t StatementResult.payload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for StatementResult(v0);
  return sub_22BE18504();
}

uint64_t StatementResult.resultStatementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for StatementResult(v0);
  return sub_22BE18504();
}

uint64_t sub_22C1584DC()
{
  v0 = sub_22BE1A5E4();
  v1(v0);
  sub_22C26E684();
  sub_22BE18000();
  v2 = sub_22BE44750();

  return v3(v2);
}

uint64_t sub_22C158568()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C26E684();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t StatementResult.originProgramStatementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for StatementResult(v0);
  return sub_22BE18504();
}

uint64_t StatementResult.originTaskStatementId.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for StatementResult(v0);
  sub_22C26E684();
  sub_22BE18000();
  v1 = sub_22BE44750();

  return v2(v1);
}

uint64_t StatementResult.originTaskStatementId.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for StatementResult(v0);
  sub_22C26E684();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t StatementResult.originTaskStatementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for StatementResult(v0);
  return sub_22BE18504();
}

uint64_t StatementResult.tool.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = v1 + *(type metadata accessor for StatementResult(v2) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = *(v3 + 32);

  return sub_22C172920(v4, v5);
}

__n128 StatementResult.tool.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for StatementResult(0) + 36);
  sub_22C1083D4(*v4, *(v4 + 8));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t StatementResult.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for StatementResult(v0);
  return sub_22BE18504();
}

uint64_t StatementResult.init(actionEventId:tool:payload:resultStatementId:originProgramStatementId:originTaskStatementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C0E9E48();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(v21 + 32);
  v26 = sub_22C26E1D4();
  v45 = v22[1];
  v46 = *v22;
  v29 = sub_22C0E966C(v24, v27, v28, v26);
  v30 = type metadata accessor for StatementResult(v29);
  sub_22C18F88C(v30);
  sub_22BE35838();
  sub_22BE2343C();
  sub_22C1083D4(*v16, *(v16 + 8));
  *v16 = v46;
  *(v16 + 16) = v45;
  *(v16 + 32) = v25;
  sub_22BE41330();
  sub_22C171FA8(v20, v24 + v31);
  v32 = v30[6];
  v33 = sub_22C26E684();
  sub_22BE18000();
  *&v46 = *(v34 + 32);
  *&v45 = v34 + 32;
  (v46)(v24 + v32, v18, v33);
  sub_22C18FCA4(v30[7]);
  sub_22C18FED0();
  v35();
  sub_22BE25438(v30[8]);
  sub_22C18FED0();
  sub_22BE3E534();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, v45, *(&v45 + 1), v46, *(&v46 + 1), a13, a14, a15, a16);
}

uint64_t StatementResult.init(actionEventId:tool:payload:resultStatementId:originProgramStatementId:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X2>)
{
  v6 = *(a1 + 32);
  v7 = sub_22C26E1D4();
  v20 = a1[1];
  v21 = *a1;
  v10 = sub_22C0E966C(a2, v8, v9, v7);
  v11 = type metadata accessor for StatementResult(v10);
  v12 = a2 + v11[9];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  sub_22BE36680();
  sub_22BE2343C();
  sub_22C1083D4(*v12, *(v12 + 8));
  *v12 = v21;
  *(v12 + 16) = v20;
  *(v12 + 32) = v6;
  sub_22BE41330();
  sub_22C171FA8(a3, a2 + v13);
  sub_22C26E684();
  sub_22BE187D0();
  sub_22C18FED0();
  v15(v14);
  v16 = sub_22BE25438(v11[7]);
  v17(v16);
  sub_22BE25438(v11[8]);
  sub_22C18FED0();

  return v18();
}

uint64_t StatementResult.init(actionEventId:toolId:payload:resultStatementId:originProgramStatementId:originTaskStatementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BE22B9C();
  v18 = v17;
  v20 = v19;
  sub_22C18FDA4();
  v22 = v21;
  v23 = sub_22C26E1D4();
  v26 = sub_22C0E966C(v22, v24, v25, v23);
  v27 = type metadata accessor for StatementResult(v26);
  v28 = v22 + v27[9];
  *(v28 + 32) = 0;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  sub_22C0B1B94();
  sub_22BE2343C();
  if (!v15)
  {
    v16 = 0;
  }

  sub_22C1083D4(*v28, *(v28 + 8));
  *v28 = v16;
  *(v28 + 8) = v15;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  sub_22BE41330();
  sub_22C171FA8(v14, v22 + v29);
  v30 = v27[6];
  v31 = sub_22C26E684();
  sub_22BE18000();
  v42 = v32 + 32;
  v43 = *(v32 + 32);
  v43(v22 + v30, v20, v31);
  v43(v22 + v27[7], v18, v31);
  sub_22BE234D8();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, a11, a12, a13, a14);
}

void static StatementResultPayload.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v2 = sub_22C26F874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE197B8();
  v4 = sub_22BE5CE4C(&qword_27D911DB8, &unk_22C2B5870);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D913A30, &qword_22C2B8518);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE389B4();
  if (sub_22C26F884())
  {
    type metadata accessor for StatementResultPayload(0);
    v7 = *(v1 + 48);
    sub_22BE3D108();
    sub_22BE22814();
    sub_22BE3D108();
    sub_22BE22814();
    sub_22BE181B0(v0);
    if (!v8)
    {
      sub_22BE191CC();
      sub_22BE22814();
      sub_22BE181B0(v0 + v7);
      if (!v8)
      {
        v11 = sub_22BE38638();
        v12(v11);
        sub_22C18E32C();
        sub_22BE20458(v13);
        sub_22BE1AB74();
        sub_22C272FD4();
        v14 = off_27D911DC0;
        v15 = sub_22BE19454();
        v14(v15);
        v16 = sub_22BE3C5E4();
        v14(v16);
        sub_22C18DC5C(v0, &qword_27D911DB8);
        goto LABEL_11;
      }

      v9 = sub_22BE2399C();
      v10(v9, v2);
LABEL_10:
      sub_22C18DC5C(v0, &qword_27D913A30);
      goto LABEL_11;
    }

    sub_22BE181B0(v0 + v7);
    if (!v8)
    {
      goto LABEL_10;
    }

    sub_22C18DC5C(v0, &qword_27D911DB8);
  }

LABEL_11:
  sub_22BE1AABC();
}

uint64_t sub_22C158E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000022C2D9390 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x800000022C2D9270 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000022C2D93B0 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1819242356 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C274014();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C159090(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x64616F6C796170;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C159164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C158E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15918C(uint64_t a1)
{
  v2 = sub_22C177C8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1591C8(uint64_t a1)
{
  v2 = sub_22C177C8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void StatementResult.encode(to:)()
{
  sub_22BE19130();
  sub_22C18E9F8();
  sub_22BE5CE4C(&qword_27D913A40, &qword_22C2B8520);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE23094();
  v3 = sub_22C177C8C();
  sub_22BE25524(&type metadata for StatementResult.CodingKeys, v4, v3);
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v5);
  sub_22C18FDF0();
  sub_22BE41644();
  sub_22C273F34();
  if (!v0)
  {
    type metadata accessor for StatementResult(0);
    sub_22C18E1EC();
    type metadata accessor for StatementResultPayload(0);
    sub_22C18EE44();
    sub_22BE20458(v6);
    sub_22BE41644();
    sub_22C273FA4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v7);
    sub_22BE3EAFC();
    sub_22C273FA4();
    sub_22BE3EAFC();
    sub_22C273FA4();
    sub_22BE3EAFC();
    sub_22C273FA4();
    v13 = sub_22C11FDEC(*(v1 + 36));
    v14 = v8;
    sub_22C18F67C();
    sub_22C172920(v9, v10);
    sub_22BEB9C9C();
    sub_22C18EBC8();
    sub_22BE1C270();
    sub_22C273F34();
    sub_22C1083D4(v13, v14);
  }

  v11 = sub_22BE47E18();
  v12(v11);
  sub_22BE35D48();
  sub_22BE18478();
}

void StatementResult.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v38 = v6;
  sub_22C26E684();
  sub_22BE179D8();
  v40 = v7;
  v41 = v8;
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v39 = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  v12 = sub_22BE183BC();
  type metadata accessor for StatementResultPayload(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE188B0();
  v14 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D913A58, &qword_22C2B8528);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE234F4();
  type metadata accessor for StatementResult(0);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v17);
  sub_22BE18DFC();
  v18 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v19, v20, v21, v18);
  v42 = v0;
  v22 = v2 + v0[9];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = v5[3];
  v24 = sub_22BE18944();
  sub_22BE26950(v24, v25);
  sub_22C177C8C();
  sub_22BE48270();
  sub_22C274214();
  if (v1)
  {
    sub_22C18E934();
    sub_22BE26B64(v5);
    sub_22C18DC5C(v2, &qword_27D9082F0);
    if (v18)
    {
      v27 = sub_22C18FE78(v42[6]);
      v28(v27);
      if (!v5)
      {
LABEL_5:
        if (!v23)
        {
LABEL_7:
          sub_22C1083D4(*v22, *(v22 + 8));
          goto LABEL_8;
        }

LABEL_6:
        (*(v41 + 8))(v2 + v42[8], v40);
        goto LABEL_7;
      }
    }

    else if (!v5)
    {
      goto LABEL_5;
    }

    v29 = sub_22C18FE78(v42[7]);
    v30(v29);
    if (!v23)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_22BE18B28();
  sub_22BE20458(v26);
  sub_22C273E44();
  sub_22BE2343C();
  sub_22C18F9DC();
  sub_22C18EE44();
  sub_22BE20458(v31);
  sub_22C273EB4();
  sub_22BE41330();
  sub_22C171FA8(v3, v2 + v32);
  sub_22C18F8BC();
  sub_22BE18F44();
  sub_22BE20458(v33);
  sub_22C273EB4();
  v34 = *(v41 + 32);
  sub_22C18FD58();
  v34();
  sub_22C18F940();
  sub_22C18F3B0();
  sub_22C273EB4();
  sub_22C18FD58();
  v34();
  LOBYTE(v43) = 4;
  sub_22C18F3B0();
  sub_22C273EB4();
  (v34)(v2 + v42[8], v39, v40);
  sub_22C18F67C();
  sub_22BEB9D44();
  sub_22BE3788C();
  sub_22C273E44();
  v35 = sub_22BE4073C();
  v36(v35);
  sub_22C1083D4(*v22, *(v22 + 8));
  *v22 = v43;
  *(v22 + 16) = v44;
  *(v22 + 32) = v45;
  v37 = sub_22BE29370();
  sub_22BE1A964(v37, v38);
  sub_22BE26B64(v5);
  sub_22C0E9830();
  sub_22C171FFC();
LABEL_8:
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t StatementResultPayload.response.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for StatementResultPayload(v0);
  return sub_22BE18504();
}

uint64_t sub_22C159C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C159CF0(char a1)
{
  if (a1)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 0x656D6F6374756FLL;
  }
}

uint64_t sub_22C159D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C159C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C159D58(uint64_t a1)
{
  v2 = sub_22C177CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C159D94(uint64_t a1)
{
  v2 = sub_22C177CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void StatementResultPayload.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913A68, &qword_22C2B8530);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C177CE0();
  sub_22BE33B8C(&type metadata for StatementResultPayload.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26F894();
  sub_22BE28CFC();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for StatementResultPayload(0);
    sub_22BE323A4();
    sub_22C26F874();
    sub_22C18E32C();
    sub_22BE20458(v5);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273F34();
  }

  v6 = sub_22BE37508();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void StatementResultPayload.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v28 = v4;
  v5 = sub_22BE5CE4C(&qword_27D911DB8, &unk_22C2B5870);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A8B4();
  sub_22C26F894();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v29 = sub_22BE5CE4C(&qword_27D913A80, &qword_22C2B8538);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE1AED0();
  v10 = type metadata accessor for StatementResultPayload(v9);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE19338();
  v13 = *(v12 + 28);
  sub_22C26F874();
  sub_22BE3AE2C();
  sub_22BE19DC4(v14, v15, v16, v17);
  sub_22BE2018C(v3);
  sub_22C177CE0();
  sub_22BE489BC();
  sub_22C1901D4(v18, v19, v20);
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22C18DC5C(v1 + v13, &qword_27D911DB8);
  }

  else
  {
    sub_22BE28CFC();
    sub_22BE20458(v21);
    sub_22BEE92A4();
    sub_22BE385D8();
    sub_22C273EB4();
    sub_22BE47DF4();
    v22 = sub_22BE25C08();
    v23(v22);
    sub_22BE33FE4();
    sub_22C18E32C();
    sub_22BE20458(v24);
    sub_22C18E9A0();
    sub_22BE385D8();
    sub_22C273E44();
    v25 = sub_22C11FDE0();
    v26(v25, v29);
    sub_22BE2343C();
    v27 = sub_22C1088E8();
    sub_22BE1A964(v27, v28);
    sub_22BE26B64(v3);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t sub_22C15A2D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022C2DA620 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C15A378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15A2D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C15A3A4(uint64_t a1)
{
  v2 = sub_22C177D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15A3E0(uint64_t a1)
{
  v2 = sub_22C177D34();

  return MEMORY[0x2821FE720](a1, v2);
}

void ResponseGenerationRequest.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  sub_22BE5CE4C(&qword_27D913A98, &qword_22C2B8540);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE3C0A8(v0);
  sub_22C177D34();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913AA8, &qword_22C2B8548);
  sub_22C177D88();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v2 = sub_22C18E57C();
  v3(v2);
  sub_22BEE94B0();
  sub_22BE18478();
}

void ResponseGenerationRequest.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  sub_22BE5CE4C(&qword_27D913AB8, &qword_22C2B8550);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B01C();
  sub_22BE3763C();
  v3 = sub_22C177D34();
  sub_22BE18878(&type metadata for ResponseGenerationRequest.CodingKeys, v4, v3);
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D913AA8, &qword_22C2B8548);
    v5 = sub_22C177E3C();
    sub_22BE33B10(v5, v6);
    v7 = sub_22BE17B24();
    v8(v7);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t QueryStepResults.originStatementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryStepResults(v0);
  return sub_22BE18504();
}

uint64_t QueryStepResults.queryEventId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryStepResults(v0);
  return sub_22BE18504();
}

uint64_t QueryStepResults.init(queryResults:originStatementId:queryEventId:)()
{
  sub_22BE393A8();
  v4 = v3;
  *v3 = v5;
  StepResults = type metadata accessor for QueryStepResults(0);
  sub_22C18FE44();
  sub_22C26E684();
  sub_22BE1834C();
  (*(v7 + 32))(&v4[v2], v1);
  v8 = *(StepResults + 24);
  sub_22C26E1D4();
  sub_22BE1834C();
  v10 = *(v9 + 32);

  return v10(&v4[v8], v0);
}

uint64_t sub_22C15A860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365527972657571 && a2 == 0xEC00000073746C75;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000022C2D9200 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C15A980(char a1)
{
  if (!a1)
  {
    return 0x7365527972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6576457972657571;
}

uint64_t sub_22C15A9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15A860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15AA1C(uint64_t a1)
{
  v2 = sub_22C177EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15AA58(uint64_t a1)
{
  v2 = sub_22C177EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryStepResults.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913AC8, &qword_22C2B8558);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C177EF0();
  sub_22BE33B8C(&type metadata for QueryStepResults.CodingKeys, v3, v2);
  sub_22BE5CE4C(&qword_27D913AD8, &qword_22C2B8560);
  sub_22C177F98(&unk_27D913AE0);
  sub_22BE37DD4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for QueryStepResults(0);
    sub_22C18E1EC();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v4);
    sub_22BE31254();
    sub_22C273FA4();
    sub_22C18FF54();
    sub_22C26E1D4();
    sub_22BE18B28();
    sub_22BE20458(v5);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v6 = sub_22BE37508();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void QueryStepResults.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v31 = v14;
  v32 = sub_22C26E1D4();
  sub_22BE179D8();
  v30 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22BE188B0();
  v17 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE17CBC();
  sub_22BE5CE4C(&qword_27D913AF0, &qword_22C2B8568);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE25CD0();
  StepResults = type metadata accessor for QueryStepResults(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  sub_22BE197B8();
  v22 = sub_22C18F9AC();
  sub_22BE31088(v22);
  sub_22C177EF0();
  sub_22BEC046C();
  sub_22C274214();
  if (v11)
  {
    sub_22BE26B64(v33);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D913AD8, &qword_22C2B8560);
    sub_22C177F98(&unk_27D913AF8);
    sub_22BE35E60();
    sub_22BE27B84();
    sub_22C273EB4();
    *v10 = a10;
    sub_22BE18F44();
    sub_22BE20458(v23);
    sub_22C18F3B0();
    sub_22C273EB4();
    sub_22C18FFB4();
    v25(&v10[v24], v12, v17);
    sub_22BE18B28();
    sub_22BE20458(v26);
    sub_22C18F3B0();
    sub_22C273EB4();
    v27 = sub_22BE18944();
    v28(v27);
    (*(v30 + 32))(&v10[*(StepResults + 24)], v13, v32);
    v29 = sub_22BE19EBC();
    sub_22BE1A964(v29, v31);
    sub_22BE26B64(v33);
    sub_22BE365AC();
    sub_22C171FFC();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t sub_22C15B114(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C15B1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15B114(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C15B1E0(uint64_t a1)
{
  v2 = sub_22C17805C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15B21C(uint64_t a1)
{
  v2 = sub_22C17805C();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryResults.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  sub_22BE5CE4C(&qword_27D913B08, &qword_22C2B8570);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE3C0A8(v0);
  sub_22C17805C();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913B18, &qword_22C2B8578);
  sub_22C1780B0();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v2 = sub_22C18E57C();
  v3(v2);
  sub_22BEE94B0();
  sub_22BE18478();
}

void QueryResults.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  sub_22BE5CE4C(&qword_27D913B30, &qword_22C2B8580);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B01C();
  sub_22BE3763C();
  v3 = sub_22C17805C();
  sub_22BE18878(&type metadata for QueryResults.CodingKeys, v4, v3);
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D913B18, &qword_22C2B8578);
    v5 = sub_22C178164();
    sub_22BE33B10(v5, v6);
    v7 = sub_22BE17B24();
    v8(v7);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

void Candidate.source.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Candidate(v0);
  sub_22C18F688(*(v1 + 20));
}

uint64_t Candidate.source.setter()
{
  v2 = sub_22C18F9E8();
  result = type metadata accessor for Candidate(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t Candidate.source.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Candidate(v0);
  return sub_22BE18504();
}

void Candidate.promptStatus.getter()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for Candidate(v1);
  sub_22C18F4EC();
  sub_22C18FA84();
  *v0 = v2;
  *(v0 + 8) = v3;
}

void Candidate.promptStatus.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for Candidate(0);
  sub_22C18F4EC();
  *v3 = v1;
  *(v3 + 8) = v2;
}

uint64_t Candidate.promptStatus.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Candidate(v0);
  return sub_22BE18504();
}

uint64_t Candidate.statementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Candidate(v0);
  return sub_22BE18504();
}

uint64_t sub_22C15B69C()
{
  v0 = sub_22BE1C364();
  v1(v0);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t sub_22C15B704()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t Candidate.ancestorId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Candidate(v0);
  return sub_22BE18504();
}

void Candidate.init(value:source:statementId:ancestorId:)()
{
  sub_22BE3C358();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = type metadata accessor for Candidate(0);
  sub_22C18F4EC();
  *v7 = 0;
  *(v7 + 8) = 1;
  v9 = *(v8 + 32);
  v10 = sub_22C26E614();
  sub_22C0E966C(v3 + v9, v11, v12, v10);
  sub_22C272874();
  sub_22BE1834C();
  v13 = sub_22BE1A8C4();
  v14(v13);
  *(v3 + *(v6 + 20)) = v5;
  v15 = *(v6 + 28);
  sub_22C26E684();
  sub_22BE1834C();
  (*(v16 + 32))(v3 + v15, v1);
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t Candidate.init(value:source:statementId:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for Candidate(0);
  v7 = a3 + v6[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v6[8];
  v9 = sub_22C26E614();
  sub_22C0E966C(a3 + v8, v10, v11, v9);
  sub_22C272874();
  sub_22BE1834C();
  v12 = sub_22BE1804C();
  v13(v12);
  *(a3 + v6[5]) = v5;
  v14 = v6[7];
  sub_22C26E684();
  sub_22BE1834C();
  v16 = *(v15 + 32);

  return v16(a3 + v14, a2);
}

uint64_t Candidate.init(value:source:promptStatus:statementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE19460();
  v13 = v12;
  v15 = *v14;
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = type metadata accessor for Candidate(0);
  v20 = v13 + *(v19 + 24);
  sub_22C18E7C8();
  v22 = *(v21 + 32);
  v23 = sub_22C26E614();
  sub_22C0E966C(v13 + v22, v24, v25, v23);
  sub_22C272874();
  sub_22BE1834C();
  v26 = sub_22BE18040();
  v27(v26);
  *(v13 + *(v19 + 20)) = v15;
  *v20 = v17;
  *(v20 + 8) = v18;
  sub_22C26E684();
  sub_22BE1834C();
  sub_22BE33684();
  sub_22BE1AABC();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t Candidate.description.getter()
{
  sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE29F40();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22C18E4D0();
  sub_22C273AA4();
  sub_22C18F8D4();
  sub_22C18F694();
  MEMORY[0x2318AB8D0](v2 | 1, v3 | 0x8000000000000000);
  sub_22C272874();
  sub_22C273C24();
  sub_22C18FD70();
  sub_22C18FAC4();
  v4 = type metadata accessor for Candidate(0);
  sub_22C11FE20(*(v0 + *(v4 + 20)));
  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000010);
  v5 = (v0 + *(v4 + 24));
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    if (v6)
    {
      v7 = 0x656D7269666E6F63;
    }

    else
    {
      v7 = 1701736302;
    }

    if (v6)
    {
      v8 = 0xE900000000000064;
    }

    else
    {
      v8 = 0xE400000000000000;
    }
  }

  else
  {
    sub_22BE425E0();
    v18 = v9;
    v19 = v10;
    v11 = sub_22C273FD4();
    MEMORY[0x2318AB8D0](v11);

    v12 = sub_22C18E830();
    MEMORY[0x2318AB8D0](v12);
    v7 = v18;
    v8 = v19;
  }

  MEMORY[0x2318AB8D0](v7, v8);

  v13 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v13);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v14);
  v15 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v15);

  sub_22C18F534();
  sub_22BE22814();
  sub_22BE1AB74();
  v16 = sub_22C273074();
  MEMORY[0x2318AB8D0](v16);

  return v20;
}

unint64_t sub_22C15BC84()
{
  result = 0x7551797469746E65;
  switch(*v0)
  {
    case 1:
      result = 0x61636F5669726973;
      break;
    case 2:
      sub_22C18F4F8();
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x656D6F646167656DLL;
      break;
    case 4:
      result = 0x52747865746E6F63;
      break;
    case 5:
      result = 0x61566E7275746572;
      break;
    case 6:
      result = 0x6D6F725072657375;
      break;
    case 7:
      result = 0x72616573696E6D6FLL;
      break;
    default:
      return result;
  }

  return result;
}

IntelligenceFlowPlannerSupport::Candidate::Source_optional __swiftcall Candidate.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22C15BE18@<X0>(uint64_t *a1@<X8>)
{
  result = Candidate.Source.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Candidate.PromptStatus.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x656D7269666E6F63;
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    sub_22BE425E0();
    v5 = v2;
    v3 = sub_22C273FD4();
    MEMORY[0x2318AB8D0](v3);

    v4 = sub_22C18E830();
    MEMORY[0x2318AB8D0](v4);
    return v5;
  }
}

uint64_t static Candidate.PromptStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22C15C054(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656B636970 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C15C168(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x656D7269666E6F63;
  }

  return 0x64656B636970;
}

uint64_t sub_22C15C1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15C054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15C1E8(uint64_t a1)
{
  v2 = sub_22C178218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C224(uint64_t a1)
{
  v2 = sub_22C178218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15C260(uint64_t a1)
{
  v2 = sub_22C1782C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C29C(uint64_t a1)
{
  v2 = sub_22C1782C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15C2D8(uint64_t a1)
{
  v2 = sub_22C178314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C314(uint64_t a1)
{
  v2 = sub_22C178314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C15C350(uint64_t a1)
{
  v2 = sub_22C17826C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15C38C(uint64_t a1)
{
  v2 = sub_22C17826C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Candidate.PromptStatus.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  sub_22C18F4C8();
  sub_22BE5CE4C(&qword_27D913B48, &qword_22C2B8588);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE20168(v23, v39);
  sub_22BE5CE4C(&qword_27D913B50, &qword_22C2B8590);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE181D0(v25, v40);
  sub_22BE5CE4C(&qword_27D913B58, &qword_22C2B8598);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE2BA30(v27, v41);
  sub_22BE5CE4C(&qword_27D913B60, &qword_22C2B85A0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE234F4();
  v29 = *v20;
  v30 = *(v20 + 8);
  sub_22BE26950(v21, v21[3]);
  sub_22C178218();
  sub_22BE48270();
  sub_22C274234();
  if (v30 == 1)
  {
    if (v29)
    {
      sub_22BE33FE4();
      sub_22C1782C0();
    }

    else
    {
      sub_22C178314();
      sub_22C18F928();
    }

    sub_22BE27168();
    sub_22C273EE4();
    v35 = sub_22BE1B5F8();
    v36(v35);
    v37 = sub_22BE1B5E0();
    v38(v37);
  }

  else
  {
    sub_22BE39E24();
    sub_22C17826C();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F94();
    v31 = sub_22BE460B8();
    v32(v31);
    v33 = sub_22BE1B5E0();
    v34(v33);
  }

  sub_22BE22978();
  sub_22BE18478();
}

uint64_t Candidate.PromptStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x2318AC860](2);
  }

  return MEMORY[0x2318AC860](v1);
}

uint64_t Candidate.PromptStatus.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_22BE25DAC();
  if (v1 != 1)
  {
    MEMORY[0x2318AC860](2);
  }

  v2 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

void Candidate.PromptStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  v26 = v25;
  v70 = v27;
  sub_22BE5CE4C(&qword_27D913B88, &qword_22C2B85A8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D913B90, &qword_22C2B85B0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE234F4();
  v30 = sub_22BE5CE4C(&qword_27D913B98, &qword_22C2B85B8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE23E58();
  v32 = sub_22BE5CE4C(&qword_27D913BA0, &qword_22C2B85C0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1B01C();
  sub_22BE41E84(v26);
  sub_22C178218();
  sub_22BE232E4();
  sub_22C274214();
  if (!v24)
  {
    v71 = v26;
    sub_22C273ED4();
    sub_22BE7C5C4();
    sub_22C18F638();
    if (!v34)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      v43 = *(v40 + v39);
      sub_22BE3A464(v35, v36, v37, v38, v39);
      sub_22BE7C5C0();
      v45 = v44;
      v47 = v46;
      swift_unknownObjectRelease();
      if (v45 == v47 >> 1)
      {
        if (v43)
        {
          if (v43 != 1)
          {
            sub_22BE39E24();
            sub_22C17826C();
            sub_22C18F228();
            sub_22C273DE4();
            v60 = v70;
            v52 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v65 = sub_22BE3AF28();
            v66(v65);
            v67 = sub_22BE39058();
            v68(v67, v32);
            v69 = 0;
LABEL_15:
            *v60 = v52;
            *(v60 + 8) = v69;
            sub_22BE26B64(v26);
            goto LABEL_11;
          }

          sub_22BE33FE4();
          sub_22C1782C0();
          sub_22C18F228();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          v48 = sub_22BE28D70();
          v49(v48);
          v50 = sub_22BE31038();
          v51(v50);
          v52 = 1;
        }

        else
        {
          sub_22C178314();
          sub_22C18F928();
          sub_22C18F228();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          v61 = sub_22BE1B5F8();
          v62(v61, v30);
          v63 = sub_22BE31038();
          v64(v63);
          v52 = 0;
        }

        v69 = 1;
        v60 = v70;
        goto LABEL_15;
      }
    }

    v53 = sub_22C273B34();
    sub_22BE196B4(v53, MEMORY[0x277D841A0]);
    v55 = v54;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v55 = &type metadata for Candidate.PromptStatus;
    v56 = sub_22C273DF4();
    sub_22BE1B198(v56);
    sub_22BE18994();
    (*(v57 + 104))(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v58 = sub_22BE31038();
    v59(v58);
    v26 = v71;
  }

  sub_22BE26B64(v26);
LABEL_11:
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t sub_22C15CD40(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_22C274154();
  if (v3 == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    MEMORY[0x2318AC860](2);
  }

  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

void static Candidate.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v6 = sub_22C26E614();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE197B8();
  v10 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE389B4();
  if ((sub_22C272844() & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for Candidate(0);
  sub_22C18FCBC();
  if ((sub_22BF25690(*(v3 + v13), *(v2 + v13)) & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_22C18FA84();
  if (v17 == 1)
  {
    if (v16)
    {
      if (!v15)
      {
        v14 = 0;
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v15)
      {
        v14 = 0;
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (v16 != v15)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_26;
    }
  }

  sub_22C18FFA8(*(v5 + 28));
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    v18 = *(v4 + 48);
    sub_22C19013C();
    sub_22C19005C();
    sub_22BE181B0(v1);
    if (v19)
    {
      sub_22BE181B0(v1 + v18);
      if (v19)
      {
        sub_22C18DC5C(v1, &qword_27D908FF8);
        goto LABEL_26;
      }
    }

    else
    {
      sub_22BE191CC();
      sub_22BE22814();
      sub_22BE181B0(v1 + v18);
      if (!v19)
      {
        sub_22C18EB74();
        v22(v0, v1 + v18, v6);
        sub_22BE2B8F4();
        sub_22BE20458(v23);
        sub_22BE1AB74();
        sub_22C272FD4();
        v24 = *(v8 + 8);
        v25 = sub_22BE19454();
        v24(v25);
        v26 = sub_22BE3C5E4();
        v24(v26);
        sub_22C18DC5C(v1, &qword_27D908FF8);
        goto LABEL_26;
      }

      v20 = sub_22BE3C5E4();
      v21(v20);
    }

    sub_22C18DC5C(v1, &qword_27D909028);
  }

LABEL_26:
  sub_22BE1AABC();
}

uint64_t sub_22C15D070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x745374706D6F7270 && a2 == 0xEC00000073757461;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

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

uint64_t sub_22C15D218(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x745374706D6F7270;
      break;
    case 3:
      result = 0x6E656D6574617473;
      break;
    case 4:
      result = 0x726F747365636E61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C15D2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C15D070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C15D2F0(uint64_t a1)
{
  v2 = sub_22C178368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C15D32C(uint64_t a1)
{
  v2 = sub_22C178368();

  return MEMORY[0x2821FE720](a1, v2);
}

void Candidate.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913BA8, &qword_22C2B85C8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C178368();
  sub_22BE25524(&type metadata for Candidate.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v5 = type metadata accessor for Candidate(0);
    sub_22C18E70C(v5);
    sub_22C1783BC();
    sub_22BE26258();
    sub_22C18E17C();
    sub_22C273FA4();
    sub_22C18FA84();
    sub_22C18F8C8();
    sub_22C178410();
    sub_22C18E17C();
    sub_22C273FA4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v6);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    sub_22C26E614();
    sub_22BE2B8F4();
    sub_22BE20458(v7);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273F34();
  }

  v8 = sub_22BE37A10();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Candidate.hash(into:)()
{
  sub_22BE19460();
  sub_22BE17BC4();
  v2 = sub_22C26E614();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v4 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v7);
  sub_22BE1B62C();
  sub_22C272EE4();
  type metadata accessor for Candidate(0);
  sub_22C18E864();
  v9 = sub_22C120CA0(v0, *(v1 + v8));
  v10 = (v1 + *(v6 + 24));
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    v11 = v11 != 0;
  }

  else
  {
    MEMORY[0x2318AC860](2, v9);
  }

  MEMORY[0x2318AC860](v11);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v12);
  sub_22BE1A6BC();
  sub_22C272EE4();
  sub_22BE22814();
  v13 = sub_22BE23E90();
  sub_22BE1AB5C(v13, v14, v2);
  if (v15)
  {
    sub_22C274174();
  }

  else
  {
    sub_22C18EB74();
    sub_22C18F910();
    v16();
    sub_22C274174();
    sub_22BE2B8F4();
    sub_22BE20458(v17);
    sub_22BE44750();
    sub_22C272EE4();
    v18 = sub_22BE1C2A0();
    v19(v18);
  }

  sub_22BE1AABC();
}

uint64_t Candidate.hashValue.getter()
{
  sub_22BE25DAC();
  Candidate.hash(into:)();
  return sub_22C2741A4();
}

void Candidate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BE19130();
  v25 = v24;
  v50 = v26;
  v27 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22C18E504(v29);
  sub_22C26E684();
  sub_22BE179D8();
  v51 = v30;
  v52 = v31;
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v54 = v32;
  sub_22BE183BC();
  sub_22C272874();
  sub_22BE1BF18();
  v53 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  sub_22BE3FF7C(v35);
  v56 = sub_22BE5CE4C(&qword_27D913BC8, &qword_22C2B85D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  v37 = sub_22BE3100C();
  type metadata accessor for Candidate(v37);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v38);
  sub_22BE19338();
  v40 = v22 + *(v39 + 24);
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = *(v39 + 32);
  sub_22C26E614();
  sub_22BE3AE2C();
  sub_22BE19DC4(v42, v43, v44, v45);
  sub_22BE3C0A8(v25);
  sub_22C178368();
  sub_22BE23550();
  sub_22C274214();
  if (v20)
  {
    sub_22BE26B64(v25);
    sub_22C18DC5C(v22 + v41, &qword_27D908FF8);
  }

  else
  {
    sub_22BE18720();
    sub_22BE20458(v46);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v53 + 32))(0, v55, v19);
    sub_22BE38948();
    sub_22C178464();
    sub_22C18FA0C();
    sub_22C18F7B4();
    sub_22C273EB4();
    **(v23 + 20) = BYTE6(a10);
    sub_22C18EAFC();
    sub_22C1784B8();
    sub_22C18F7B4();
    sub_22C273EB4();
    *v40 = v57;
    *(v40 + 8) = v58;
    sub_22BE3418C();
    sub_22BE18F44();
    sub_22BE20458(v47);
    sub_22C273EB4();
    (*(v52 + 32))(*(v23 + 28), v54, v51);
    sub_22BE2B8F4();
    sub_22BE20458(v48);
    sub_22C18F7B4();
    sub_22C273E44();
    sub_22BE270B0();
    v49(v21, v56);
    sub_22BE2343C();
    sub_22BE2BD28();
    sub_22BE1A964(v22, v50);
    sub_22BE26B64(v25);
    sub_22BE35DA8();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22C15DD84(uint64_t a1)
{
  sub_22C274154();
  Candidate.hash(into:)();
  return sub_22C2741A4();
}

void Session.Event.formingResponse(_:)()
{
  v0 = type metadata accessor for PreassignedEventID(0);
  v1 = sub_22BE19448(v0);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  sub_22BE1AB74();
  Session.Event.formingResponse(id:_:)();
}

void Session.Event.formingResponse(id:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B72C();
  v9 = sub_22C26E1D4();
  sub_22BE187D0();
  v45 = v10;
  v46 = v4;
  v11 = *(v10 + 16);
  v12 = sub_22BE3CEF4();
  v11(v12);
  v13 = type metadata accessor for Session.Event(0);
  (v11)(v6 + v13[5], v0 + v13[5], v9);
  sub_22BE22814();
  sub_22BE1C058();
  sub_22BE1A964(v2, v6 + v14);
  v15 = v13[9];
  v16 = (v0 + v13[8]);
  v17 = v16[1];
  v41 = *v16;
  v18 = *(v0 + v15 + 8);
  v43 = *(v0 + v15);
  v19 = (v0 + v13[10]);
  v20 = *v19;
  v21 = v19[1];
  v22 = (v0 + v13[11]);
  v23 = v6 + v13[12];
  v37 = *v22;
  v38 = v22[1];
  v39 = v20;

  v42 = v17;

  v44 = v18;

  v40 = v21;

  sub_22C26E134();
  v24 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  sub_22BE199F4(v9, qword_28108A1E0);
  v26 = type metadata accessor for Timepoint(0);
  sub_22C18F910();
  (v11)();
  *(v23 + *(v26 + 20)) = v24;
  *(v23 + *(v26 + 24)) = v25;
  sub_22BE340C8();
  v27 = sub_22C272E84();
  sub_22BE1A140();
  sub_22BE19DC4(v28, v29, v30, v9);
  v31 = (v6 + v13[11]);
  v32 = (v6 + v13[13]);
  v33 = v6 + v13[14];
  sub_22BE2343C();
  v34 = (v6 + v13[8]);
  *v34 = v41;
  v34[1] = v42;
  v35 = (v6 + v13[9]);
  *v35 = v43;
  v35[1] = v44;
  v36 = (v6 + v13[10]);
  *v36 = v39;
  v36[1] = v40;
  *v31 = v37;
  v31[1] = v38;
  *v32 = 0;
  v32[1] = 0;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v6 + v13[15]) = v27;
  (*(v45 + 8))(v46, v9);
  sub_22BE1AABC();
}

void Session.Event.Payload.statementIds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v27;
  a20 = v28;
  v448 = v21;
  v427[12] = 0;
  v29 = type metadata accessor for RequestAmendment(0);
  v30 = sub_22BE290A0(v29, &a13);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v32 = sub_22BE18950(v31);
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v32);
  v34 = sub_22BE19448(DecorationPrePlannerResult);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v36 = sub_22BE18950(v35);
  v37 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(v36);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v40 = sub_22BE18950(v39);
  v41 = type metadata accessor for SkipStatement(v40);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v44 = sub_22BE18950(v43);
  v45 = type metadata accessor for ClientUndoRedoRequest(v44);
  v46 = sub_22BE290A0(v45, &a10);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v48 = sub_22BE18950(v47);
  v49 = type metadata accessor for UndoRedoRequest(v48);
  v50 = sub_22BE290A0(v49, &v454);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v52 = sub_22BE18950(v51);
  v53 = type metadata accessor for ToolResolution(v52);
  v54 = sub_22BE290A0(v53, &v452);
  MEMORY[0x28223BE20](v54);
  sub_22BE17A44();
  v56 = sub_22BE18950(v55);
  v57 = type metadata accessor for DynamicEnumerationEntityStatement(v56);
  v58 = sub_22BE17A18(v57);
  v427[11] = v59;
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  v441 = v60;
  v61 = sub_22BE183BC();
  DecorationResult = type metadata accessor for QueryDecorationResult(v61);
  sub_22BE18000();
  MEMORY[0x28223BE20](v62);
  sub_22BE17A44();
  v438 = v63;
  v64 = sub_22BE183BC();
  v65 = type metadata accessor for TypeConversionResult(v64);
  v66 = sub_22BE290A0(v65, &v450);
  MEMORY[0x28223BE20](v66);
  sub_22BE17A44();
  v68 = sub_22BE18950(v67);
  v69 = type metadata accessor for TypeConversionRequest(v68);
  v70 = sub_22BE290A0(v69, &v448);
  MEMORY[0x28223BE20](v70);
  sub_22BE17A44();
  v72 = sub_22BE18950(v71);
  Step = type metadata accessor for QueryStep(v72);
  v74 = sub_22BE19448(Step);
  MEMORY[0x28223BE20](v74);
  sub_22BE17A44();
  v76 = sub_22BE18950(v75);
  v77 = type metadata accessor for Action(v76);
  v78 = sub_22BE19448(v77);
  MEMORY[0x28223BE20](v78);
  sub_22BE17A44();
  v80 = sub_22BE18950(v79);
  v81 = type metadata accessor for RetrievedContextStatement(v80);
  v82 = sub_22BE17A18(v81);
  v430 = v83;
  MEMORY[0x28223BE20](v82);
  sub_22BE17A44();
  v445 = v84;
  v85 = sub_22BE183BC();
  v86 = type metadata accessor for ProgramStatement(v85);
  v87 = sub_22BE17A18(v86);
  v427[10] = v88;
  MEMORY[0x28223BE20](v87);
  sub_22BE17A44();
  v440 = v89;
  v90 = sub_22BE183BC();
  v434 = type metadata accessor for ActionResolverRequest(v90);
  sub_22BE18000();
  MEMORY[0x28223BE20](v91);
  sub_22BE17A44();
  v435 = v92;
  v93 = sub_22BE183BC();
  v449 = type metadata accessor for Candidate(v93);
  sub_22BE179D8();
  v446 = v94;
  MEMORY[0x28223BE20](v95);
  sub_22BE17A44();
  v447 = v96;
  v97 = sub_22BE183BC();
  StepResults = type metadata accessor for QueryStepResults(v97);
  v99 = sub_22BE19448(StepResults);
  MEMORY[0x28223BE20](v99);
  sub_22BE17A44();
  v436 = v100;
  v101 = sub_22BE183BC();
  v102 = type metadata accessor for StatementResult(v101);
  v103 = sub_22BE290A0(v102, &v441);
  MEMORY[0x28223BE20](v103);
  sub_22BE17A44();
  sub_22BE190A8(v104);
  v105 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v106 = sub_22BE17A18(v105);
  v427[13] = v107;
  MEMORY[0x28223BE20](v106);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v108);
  sub_22BE19E94();
  v110 = sub_22BE18950(v109);
  v111 = type metadata accessor for ActionCancellation(v110);
  v112 = sub_22BE19448(v111);
  MEMORY[0x28223BE20](v112);
  sub_22BE17A44();
  sub_22BE18950(v113);
  v439 = sub_22C2700F4();
  sub_22BE179D8();
  v442 = v114;
  MEMORY[0x28223BE20](v115);
  sub_22BE17A44();
  sub_22BE18950(v116);
  sub_22C26E684();
  sub_22BE179D8();
  v450 = v117;
  v451 = v118;
  MEMORY[0x28223BE20](v117);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v119);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v120);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v121);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v122);
  sub_22BE19490();
  v443 = v123;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v124);
  sub_22BE19490();
  v444 = v125;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v126);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v127);
  sub_22BE1C17C();
  v433 = sub_22C26F754();
  sub_22BE179D8();
  v432 = v128;
  MEMORY[0x28223BE20](v129);
  sub_22BE17A44();
  v131 = sub_22BE18950(v130);
  v132 = type metadata accessor for RequestContent.SystemPromptResolution(v131);
  v133 = sub_22BE290A0(v132, &v431);
  MEMORY[0x28223BE20](v133);
  sub_22BE17A44();
  v135 = sub_22BE18950(v134);
  v136 = type metadata accessor for RequestContent.SpeechContent(v135);
  v137 = sub_22BE290A0(v136, &v429);
  MEMORY[0x28223BE20](v137);
  sub_22BE17A44();
  v139 = sub_22BE18950(v138);
  v140 = type metadata accessor for RequestContent.TextContent(v139);
  v141 = sub_22BE290A0(v140, &v428);
  MEMORY[0x28223BE20](v141);
  sub_22BE17A44();
  v143 = sub_22BE18950(v142);
  v144 = type metadata accessor for RequestContent(v143);
  sub_22BE18000();
  MEMORY[0x28223BE20](v145);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v146);
  v148 = v427 - v147;
  v149 = type metadata accessor for Request(0);
  v150 = sub_22BE19448(v149);
  MEMORY[0x28223BE20](v150);
  sub_22BE17A44();
  v152 = v151;
  v153 = sub_22BE183BC();
  v154 = type metadata accessor for UserTurnStarted(v153);
  v155 = sub_22BE19448(v154);
  MEMORY[0x28223BE20](v155);
  sub_22BE188B0();
  type metadata accessor for Session.Event.Payload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v156);
  sub_22BE197B8();
  sub_22BE1C058();
  sub_22BE1A964(v448, v20);
  sub_22BE260B8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v158 = MEMORY[0x277D84F90];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_22BE46150();
      v192 = sub_22BE29264();
      sub_22C171FA8(v192, v193);
      v194 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v195 = sub_22BE1B7DC(v194);
      *(v195 + 16) = xmmword_22C275160;
      (*(v144 + 16))(v20 + v195, v26, v450);
      sub_22BE4875C();
      goto LABEL_106;
    case 3:
      sub_22BE28EA8();
      v218 = sub_22BE3CC34();
      sub_22C171FA8(v218, v219);
      sub_22BE19368();
      sub_22BE1A964(v152, v148);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22C18DFA8();
          sub_22BE37B14();
          sub_22C171FA8(v411, v412);
          v413 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          *(sub_22BE1B114(v413) + 16) = xmmword_22C275160;
          sub_22BE2ED7C();
          v415 = sub_22BE409B4(v414);
          v416(v415);
          goto LABEL_134;
        case 2u:
          sub_22BE1BB68();
          sub_22BE37B14();
          sub_22C171FA8(v399, v400);
          v401 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v402 = sub_22BE1B114(v401);
          *(v402 + 16) = xmmword_22C275160;
          v403 = sub_22BE409B4(v402);
          v404(v403);
          goto LABEL_134;
        case 3u:
          sub_22C18DFC0();
          sub_22BE37B14();
          sub_22C171FA8(v405, v406);
          v407 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v408 = sub_22BE1B114(v407);
          *(v408 + 16) = xmmword_22C275160;
          v409 = sub_22BE409B4(v408);
          v410(v409);
LABEL_134:
          sub_22C171FFC();
          sub_22BE26A6C();
          break;
        default:
          goto LABEL_106;
      }

      goto LABEL_106;
    case 4:
      v220 = v20[1];
      v221 = v20[3];
      v222 = v20[4];
      v223 = v20[6];
      v224 = *(v222 + 16);
      if (v224)
      {
        v446 = v221;
        v447 = v220;
        v448 = v223;
        v453 = MEMORY[0x277D84F90];
        sub_22BE71084();
        v225 = v453;
        sub_22BE25AD8();
        v445 = v222;
        v227 = v222 + v226;
        v449 = *(v228 + 72);
        v230 = v450;
        v229 = v451;
        do
        {
          sub_22BE1A964(v227, v440);
          v231 = sub_22BE33560();
          v232(v231);
          sub_22C0E9830();
          sub_22C171FFC();
          v453 = v225;
          v234 = *(v225 + 16);
          v233 = *(v225 + 24);
          if (v234 >= v233 >> 1)
          {
            sub_22BE237B4(v233);
            sub_22BE71084();
            v229 = v451;
            v225 = v453;
          }

          *(v225 + 16) = v234 + 1;
          sub_22C18E768();
          (*(v229 + 32))(v225 + v235 + *(v229 + 72) * v234, v24, v230);
          v227 += v449;
          --v224;
        }

        while (v224);
      }

      goto LABEL_122;
    case 5:
      sub_22BE23784();
      sub_22BE37B14();
      sub_22C171FA8(v236, v237);
      v238 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v239 = sub_22BE1B7DC(v238);
      v240 = sub_22BE3C9B8(v239, xmmword_22C275160);
      v241(v240);
      goto LABEL_106;
    case 6:
      sub_22C18E254();
      sub_22C171FA8(v20, v427[18]);
      sub_22BE5CE4C(&qword_27D909F40, &qword_22C2805A0);
      *(swift_allocObject() + 16) = xmmword_22C275160;
      sub_22C0B1754();
      sub_22BE22814();
      sub_22BE37B14();
      sub_22C0B1754();
      sub_22BE22814();
      v181 = v427[17];
      sub_22C0B1754();
      sub_22BE424BC();
      v182 = sub_22BE26188();
      v183 = v450;
      sub_22BE1AB5C(v182, v184, v450);
      if (v185)
      {
        sub_22C18DC5C(v181, &qword_27D907240);
        goto LABEL_119;
      }

      v158 = *(v451 + 32);
      v374 = v427[1];
      v375 = sub_22BF6AC14();
      (v158)(v375);
      v376 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_116;
      }

      goto LABEL_153;
    case 8:
      sub_22BE35FFC();
      sub_22BE37B14();
      sub_22C171FA8(v196, v197);
      v198 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v199 = sub_22BE1B7DC(v198);
      v200 = sub_22BE3C9B8(v199, xmmword_22C275160);
      v201(v200);
      goto LABEL_106;
    case 12:
      sub_22C18E29C();
      v242 = v20;
      v243 = v436;
      sub_22C171FA8(v242, v436);
      v244 = 0;
      v183 = *v243;
      v376 = *(*v243 + 16);
      v245 = *v243 + 32;
      v246 = v158;
      v374 = v444;
      while (2)
      {
        if (v376 == v244)
        {
          v357 = *(v246 + 16);
          v358 = v450;
          if (v357)
          {
            v453 = v158;
            sub_22C18E984();
            sub_22BE71084();
            v359 = v453;
            sub_22BE25AD8();
            v361 = v246 + v360;
            v448 = *(v362 + 72);
            v363 = (v451 + 16);
            v446 = v451 + 32;
            do
            {
              sub_22BE2BD28();
              v364 = v447;
              sub_22BE1A964(v361, v447);
              (*v363)(v374, v364 + *(v449 + 28), v358);
              sub_22BE35DA8();
              sub_22C171FFC();
              v453 = v359;
              v365 = v374;
              v367 = *(v359 + 16);
              v366 = *(v359 + 24);
              if (v367 >= v366 >> 1)
              {
                sub_22BE237B4(v366);
                sub_22BE71084();
                v359 = v453;
              }

              *(v359 + 16) = v367 + 1;
              sub_22C18E768();
              v369 = sub_22C18FF68(v368);
              v370(v369, v365, v358);
              v361 += v448;
              --v357;
              v374 = v365;
            }

            while (v357);

            sub_22BE365AC();
LABEL_106:
            sub_22C171FFC();
          }

          else
          {

            sub_22BE365AC();
            sub_22C171FFC();
          }

          goto LABEL_107;
        }

        if (v244 >= *(v183 + 16))
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v247 = *(v245 + 8 * v244);
        v248 = *(v247 + 16);
        v374 = *(v246 + 16);
        v249 = v374 + v248;
        if (__OFADD__(v374, v248))
        {
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v250 = swift_isUniquelyReferenced_nonNull_native();
        if (!v250 || v249 > *(v246 + 24) >> 1)
        {
          if (v374 <= v249)
          {
            v251 = v374 + v248;
          }

          else
          {
            v251 = v374;
          }

          sub_22BE67B50(v250, v251, 1, v246);
          v246 = v252;
        }

        v374 = v444;
        if (!*(v247 + 16))
        {

          if (!v248)
          {
            goto LABEL_47;
          }

          goto LABEL_146;
        }

        if ((*(v246 + 24) >> 1) - *(v246 + 16) < v248)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        swift_arrayInitWithCopy();

        if (!v248)
        {
LABEL_47:
          ++v244;
          continue;
        }

        break;
      }

      v253 = *(v246 + 16);
      v254 = __OFADD__(v253, v248);
      v255 = v253 + v248;
      if (!v254)
      {
        *(v246 + 16) = v255;
        goto LABEL_47;
      }

LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      sub_22BE66BFC(0, *(v376 + 16) + 1, 1, v376);
      v376 = v425;
LABEL_116:
      v379 = *(v376 + 16);
      v378 = *(v376 + 24);
      if (v379 >= v378 >> 1)
      {
        sub_22BE66BFC(v378 > 1, v379 + 1, 1, v376);
        v376 = v426;
      }

      *(v376 + 16) = v379 + 1;
      sub_22BE25AD8();
      (v158)(v376 + v380 + *(v381 + 72) * v379, v374, v183);
LABEL_119:
      sub_22C171FFC();
      swift_setDeallocating();
      sub_22BEDDA70();
LABEL_107:
      sub_22BE1AABC();
      return;
    case 13:
      v264 = sub_22BE19EBC();
      v265 = v435;
      sub_22C171FA8(v264, v435);
      v183 = *(v265 + *(v434 + 24));
      v266 = v183 + 56;
      sub_22BE185B4();
      v376 = v268 & v267;
      v430 = (v269 + 63) >> 6;
      v439 = v451 + 32;
      v440 = (v451 + 16);

      v270 = MEMORY[0x277D84F90];
      v271 = 0;
      v374 = MEMORY[0x277D84F90];
      v158 = v443;
      v432 = v183;
      v431 = v183 + 56;
      while (2)
      {
        if (!v376)
        {
          while (1)
          {
            v272 = v271 + 1;
            if (__OFADD__(v271, 1))
            {
              goto LABEL_147;
            }

            if (v272 >= v430)
            {

              v372 = sub_22C120154(v371);

              v453 = v374;
              sub_22BE6E06C(v372);
              goto LABEL_106;
            }

            v376 = *(v266 + 8 * v272);
            ++v271;
            if (v376)
            {
              v271 = v272;
              break;
            }
          }
        }

        DecorationResult = v376;
        v376 = *(*(v183 + 48) + ((v271 << 9) | (8 * __clz(__rbit64(v376)))));
        v273 = *(v376 + 16);
        if (!v273)
        {
          v296 = v270;
LABEL_80:
          v297 = *(v296 + 16);
          v298 = *(v374 + 16);
          v158 = v298 + v297;
          v376 = DecorationResult;
          if (__OFADD__(v298, v297))
          {
            goto LABEL_150;
          }

          v299 = v296;
          v300 = swift_isUniquelyReferenced_nonNull_native();
          if (!v300 || v158 > *(v374 + 24) >> 1)
          {
            if (v298 <= v158)
            {
              v301 = v298 + v297;
            }

            else
            {
              v301 = v298;
            }

            sub_22BE66BFC(v300, v301, 1, v374);
            v374 = v302;
          }

          v158 = v443;
          v376 &= v376 - 1;
          if (!*(v299 + 16))
          {

            v270 = MEMORY[0x277D84F90];
            if (v297)
            {
              __break(1u);
LABEL_94:
              sub_22C18E26C();
              sub_22BE37B14();
              sub_22C171FA8(v305, v306);
              v307 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
              v308 = sub_22BE1B7DC(v307);
              *(v308 + 16) = xmmword_22C275160;
              v309 = sub_22BE409B4(v308);
              v310(v309);
              goto LABEL_106;
            }

            continue;
          }

          if ((*(v374 + 24) >> 1) - *(v374 + 16) < v297)
          {
            goto LABEL_151;
          }

          swift_arrayInitWithCopy();

          v270 = MEMORY[0x277D84F90];
          if (v297)
          {
            v303 = *(v374 + 16);
            v254 = __OFADD__(v303, v297);
            v304 = v303 + v297;
            if (!v254)
            {
              *(v374 + 16) = v304;
              continue;
            }

            goto LABEL_152;
          }

          continue;
        }

        break;
      }

      v433 = v271;
      v436 = v374;
      v453 = v270;
      swift_bridgeObjectRetain_n();
      sub_22C18E984();
      sub_22BE71084();
      v448 = v453;
      v276 = sub_22C17850C(v376);
      v277 = 0;
      v278 = v376 + 64;
      v438 = v376 + 72;
      v441 = v273;
      v442 = v376 + 64;
      while (1)
      {
        v279 = v451;
        if (v276 < 0 || v276 >= 1 << *(v376 + 32))
        {
          break;
        }

        v374 = v276 >> 6;
        v183 = 1 << v276;
        if ((*(v278 + 8 * (v276 >> 6)) & (1 << v276)) == 0)
        {
          goto LABEL_139;
        }

        if (*(v376 + 36) != v274)
        {
          goto LABEL_140;
        }

        LODWORD(v444) = v275;
        v445 = v274;
        v280 = v447;
        sub_22BE2BD28();
        sub_22BE1A964(v281, v280);
        v282 = v450;
        (*v440)(v158, v280 + *(v449 + 28), v450);
        sub_22BE35DA8();
        sub_22C171FFC();
        v283 = v448;
        v453 = v448;
        v284 = v158;
        v158 = *(v448 + 16);
        v285 = *(v448 + 24);
        if (v158 >= v285 >> 1)
        {
          sub_22BE237B4(v285);
          sub_22BE71084();
          v279 = v451;
          v283 = v453;
        }

        *(v283 + 16) = v158 + 1;
        sub_22C18E768();
        v448 = v286;
        (*(v279 + 32))(v286 + v287 + *(v279 + 72) * v158, v284, v282);
        v288 = 1 << *(v376 + 32);
        if (v276 >= v288)
        {
          goto LABEL_141;
        }

        v158 = v284;
        v278 = v442;
        v289 = *(v442 + 8 * v374);
        if ((v289 & v183) == 0)
        {
          goto LABEL_142;
        }

        if (*(v376 + 36) != v445)
        {
          goto LABEL_143;
        }

        v290 = v289 & (-2 << (v276 & 0x3F));
        if (v290)
        {
          v288 = __clz(__rbit64(v290)) | v276 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v291 = v374 << 6;
          v292 = v374 + 1;
          v293 = (v438 + 8 * v374);
          while (v292 < (v288 + 63) >> 6)
          {
            v295 = *v293++;
            v294 = v295;
            v291 += 64;
            ++v292;
            if (v295)
            {
              sub_22BE2FC64(v276, v445, v444 & 1);
              v288 = __clz(__rbit64(v294)) + v291;
              goto LABEL_75;
            }
          }

          sub_22BE2FC64(v276, v445, v444 & 1);
LABEL_75:
          v158 = v443;
        }

        if (++v277 == v441)
        {
          swift_bridgeObjectRelease_n();
          v183 = v432;
          v266 = v431;
          v374 = v436;
          v271 = v433;
          v296 = v448;
          goto LABEL_80;
        }

        v275 = 0;
        v274 = *(v376 + 36);
        v276 = v288;
      }

      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    case 15:
    case 31:
    case 37:
    case 42:
    case 43:
      goto LABEL_107;
    case 17:
      v453 = *v20;

      sub_22BE6E6CC(v165);

      v166 = v453;
      v167 = *(v453 + 16);
      if (v167)
      {
        v453 = v158;
        sub_22C18E984();
        sub_22BE71084();
        v168 = v453;
        sub_22BE25AD8();
        v170 = v166 + v169;
        v172 = *(v171 + 72);
        v448 = v166;
        v449 = v172;
        v173 = v450;
        v174 = v427[9];
        do
        {
          sub_22BE1A964(v170, v445);
          v175 = sub_22BE37490();
          v176(v175);
          sub_22BE3CD28();
          sub_22C171FFC();
          v453 = v168;
          v177 = *(v168 + 16);
          if (v177 >= *(v168 + 24) >> 1)
          {
            sub_22BE71084();
            v168 = v453;
          }

          *(v168 + 16) = v177 + 1;
          sub_22C18E768();
          v179 = sub_22C18FF68(v178);
          v180(v179, v174, v173);
          v170 += v449;
          --v167;
        }

        while (v167);
      }

      goto LABEL_122;
    case 20:
      sub_22BE236D4();
      v202 = sub_22BE18944();
      v203(v202);
      v204 = sub_22C26F734();
      v205 = *(v204 + 16);
      if (v205)
      {
        v453 = v158;
        sub_22C18E984();
        sub_22BE71084();
        v206 = v453;
        sub_22BE19E14();
        v447 = v204;
        v208 = v204 + v207;
        v448 = *(v209 + 56);
        v449 = v210;
        v442 = v209;
        do
        {
          v211 = sub_22BE29454();
          (v449)(v211);
          sub_22C270094();
          v212 = sub_22BE3AF28();
          v213(v212);
          v453 = v206;
          v215 = *(v206 + 16);
          v214 = *(v206 + 24);
          if (v215 >= v214 >> 1)
          {
            sub_22BE237B4(v214);
            sub_22BE71084();
            v206 = v453;
          }

          *(v206 + 16) = v215 + 1;
          sub_22BE25AD8();
          (*(v217 + 32))(v206 + v216 + *(v217 + 72) * v215, v25);
          v208 += v448;
          --v205;
        }

        while (v205);
        sub_22BE1B5D4();
        v373(v431, v433);
LABEL_122:
      }

      else
      {

        v382 = sub_22BE18944();
        v383(v382);
      }

      goto LABEL_107;
    case 21:
      goto LABEL_94;
    case 25:
      sub_22BE36CE8();
      sub_22BE37B14();
      sub_22C171FA8(v186, v187);
      v188 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      *(sub_22BE1B7DC(v188) + 16) = xmmword_22C275160;
      sub_22BE2ED7C();
      v190 = sub_22BE409B4(v189);
      v191(v190);
      goto LABEL_106;
    case 26:
      sub_22BE41514();
      sub_22BE37B14();
      sub_22C171FA8(v333, v334);
      v335 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v336 = sub_22BE1B7DC(v335);
      *(v336 + 16) = xmmword_22C275160;
      v337 = sub_22BE409B4(v336);
      v338(v337);
      goto LABEL_106;
    case 27:
      sub_22C18E2CC();
      sub_22BE37B14();
      sub_22C171FA8(v339, v340);
      v341 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v342 = sub_22BE1B7DC(v341);
      *(v342 + 16) = xmmword_22C275160;
      v343 = sub_22BE409B4(v342);
      v344(v343);
      goto LABEL_106;
    case 28:
      sub_22BE37B38();
      sub_22BE37B14();
      sub_22C171FA8(v159, v160);
      v161 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v162 = sub_22BE1B7DC(v161);
      *(v162 + 16) = xmmword_22C275160;
      v163 = sub_22BE409B4(v162);
      v164(v163);
      goto LABEL_106;
    case 29:
      sub_22BE22B40();
      sub_22BE37B14();
      sub_22C171FA8(v311, v312);
      v313 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      *(sub_22BE1B7DC(v313) + 16) = xmmword_22C275160;
      sub_22BE2ED7C();
      v315 = sub_22BE409B4(v314);
      v316(v315);
      goto LABEL_106;
    case 30:
      sub_22BE3CA54();
      v317 = v20;
      v318 = v438;
      sub_22C171FA8(v317, v438);
      v319 = *(v318 + *(DecorationResult + 24));
      v320 = *(v319 + 16);
      v321 = MEMORY[0x277D84F90];
      if (v320)
      {
        v453 = MEMORY[0x277D84F90];
        sub_22C19009C();
        v321 = v453;
        sub_22BE25AD8();
        v323 = v319 + v322;
        v449 = *(v324 + 72);
        v326 = v450;
        v325 = v451;
        v327 = (v451 + 16);
        do
        {
          v328 = sub_22BE385E4();
          v329 = v441;
          sub_22BE1A964(v328, v441);
          (*v327)(v22, v329, v326);
          sub_22BE291DC();
          sub_22C171FFC();
          v453 = v321;
          v331 = *(v321 + 16);
          v330 = *(v321 + 24);
          if (v331 >= v330 >> 1)
          {
            sub_22BE237B4(v330);
            sub_22BE71084();
            v325 = v451;
            v321 = v453;
          }

          *(v321 + 16) = v331 + 1;
          sub_22C18E768();
          (*(v325 + 32))(v321 + v332 + *(v325 + 72) * v331, v22, v326);
          v323 += v449;
          --v320;
        }

        while (v320);
      }

      else
      {
        v326 = v450;
      }

      v384 = *(v438 + *(DecorationResult + 28));
      v385 = *(v384 + 16);
      v386 = MEMORY[0x277D84F90];
      v387 = v427[19];
      if (v385)
      {
        v453 = MEMORY[0x277D84F90];
        sub_22C19009C();
        v388 = v451;
        v386 = v453;
        sub_22BE25AD8();
        v390 = v384 + v389;
        v392 = *(v391 + 72);
        v449 = v388 + 32;
        v450 = v392;
        do
        {
          v393 = sub_22BE385E4();
          sub_22BE1A964(v393, v445);
          v394 = sub_22BF0AFB8();
          v395(v394);
          sub_22BE3CD28();
          sub_22C171FFC();
          v453 = v386;
          v397 = *(v386 + 16);
          v396 = *(v386 + 24);
          if (v397 >= v396 >> 1)
          {
            sub_22BE237B4(v396);
            sub_22BE71084();
            v388 = v451;
            v386 = v453;
          }

          *(v386 + 16) = v397 + 1;
          sub_22C18E768();
          (*(v388 + 32))(v386 + v398 + *(v388 + 72) * v397, v387, v326);
          v390 += v450;
          --v385;
        }

        while (v385);
      }

      v453 = v321;
      sub_22BE6E06C(v386);
      sub_22C18EB98();
      sub_22C171FFC();
      goto LABEL_107;
    case 32:
      sub_22C18E23C();
      sub_22BE37B14();
      sub_22C171FA8(v345, v346);
      v347 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v348 = sub_22BE1B7DC(v347);
      v349 = sub_22BE3C9B8(v348, xmmword_22C275160);
      v350(v349);
      goto LABEL_106;
    case 33:
      sub_22BE1B674();
      sub_22BE37B14();
      sub_22C171FA8(v351, v352);
      v353 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      v354 = sub_22BE1B7DC(v353);
      v355 = sub_22BE3C9B8(v354, xmmword_22C275160);
      v356(v355);
      goto LABEL_106;
    case 34:
      sub_22C18E2B4();
      sub_22BE22944();
      sub_22C171FA8(v262, v263);
      sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
      *(swift_allocObject() + 16) = xmmword_22C275160;
      ExecutionPreconditionEvaluatorRequest.statementId.getter();
      sub_22C0E9A74();
      goto LABEL_106;
    case 35:
      sub_22C18E2E4();
      v256 = v429;
      sub_22C171FA8(v20, v429);
      sub_22BE2ED7C();
      sub_22BE19368();
      sub_22BE1A964(v256 + v257, v23);
      sub_22BE36680();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22C18DFA8();
          sub_22C171FA8(v23, v427[3]);
          v258 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          *(sub_22BE1B114(v258) + 16) = xmmword_22C275160;
          sub_22BE2ED7C();
          v260 = sub_22C18F1F0(v259);
          v261(v260);
          goto LABEL_137;
        case 2u:
          sub_22BE1BB68();
          sub_22C171FA8(v23, v427[5]);
          v417 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v418 = sub_22BE1B114(v417);
          *(v418 + 16) = xmmword_22C275160;
          v419 = sub_22C18F1F0(v418);
          v420(v419);
          goto LABEL_137;
        case 3u:
          sub_22C18DFC0();
          sub_22C171FA8(v23, v427[7]);
          v421 = sub_22BE5CE4C(&qword_27D9077A0, &qword_22C2757D8);
          v422 = sub_22BE1B114(v421);
          *(v422 + 16) = xmmword_22C275160;
          v423 = sub_22C18F1F0(v422);
          v424(v423);
LABEL_137:
          sub_22C171FFC();
          break;
        default:
          goto LABEL_106;
      }

      goto LABEL_106;
    default:
      sub_22BE1A7E0();
      goto LABEL_106;
  }
}

uint64_t ExecutionPreconditionEvaluatorRequest.statementId.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ClientAction(v0);
  v2 = sub_22BE19448(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BE2379C();
  v3 = type metadata accessor for Action(0);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE38390();
  type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE18DFC();
  sub_22BE3E6BC();
  v6 = sub_22BE2590C();
  sub_22BE1A964(v6, v7);
  sub_22BE29454();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3C3F8();
    v8 = sub_22BE431C0();
    sub_22C171FA8(v8, v9);
    sub_22C26E684();
    sub_22BE1834C();
    v10 = sub_22BE19454();
    v11(v10);
    sub_22BE268B8();
  }

  else
  {
    sub_22BE23784();
    v12 = sub_22BE232C8();
    sub_22C171FA8(v12, v13);
    sub_22C26E684();
    sub_22BE1834C();
    v14 = sub_22BE33FD8();
    v15(v14);
    sub_22BE1C3A4();
  }

  return sub_22C171FFC();
}

void sub_22C1603D4()
{
  v2 = sub_22BE17BC4();
  v4 = *(v3(v2) + 20);

  *(v1 + v4) = v0;
}

uint64_t ActionResolverRequest.resolvedParameters.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t sub_22C16046C()
{
  v0 = sub_22BE2BB48();
  v1(v0);
}

void sub_22C1604BC()
{
  v2 = sub_22BE17BC4();
  v4 = *(v3(v2) + 24);

  *(v1 + v4) = v0;
}

uint64_t ActionResolverRequest.unresolvedParameterSets.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t sub_22C160554()
{
  v0 = sub_22BE2BB48();
  v1(v0);
}

void sub_22C1605A4()
{
  v2 = sub_22BE17BC4();
  v4 = *(v3(v2) + 28);

  *(v1 + v4) = v0;
}

uint64_t ActionResolverRequest.userSpecifiedParameters.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t ActionResolverRequest.isConfirmed.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ActionResolverRequest(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t ActionResolverRequest.isConfirmed.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t ActionResolverRequest.isAuthenticated.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ActionResolverRequest(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t ActionResolverRequest.isAuthenticated.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t ActionResolverRequest.tool.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ActionResolverRequest(v0);
  sub_22C18E8AC(*(v1 + 40));
}

void ActionResolverRequest.tool.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C190048();
  v5 = sub_22C18E9C8();
  v6 = type metadata accessor for ActionResolverRequest(v5);
  sub_22C18EA48(*(v6 + 40));

  sub_22C18F2EC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  sub_22C190034();
}

uint64_t ActionResolverRequest.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionResolverRequest(v0);
  return sub_22BE18504();
}

__n128 ActionResolverRequest.init(statementId:tool:resolvedParameters:unresolvedParameterSets:userSpecifiedParameters:isConfirmed:isAuthenticated:)@<Q0>(__n128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v22 = *a1;
  v20 = a1[1].n128_u64[1];
  v21 = a1[1].n128_u64[0];
  v19 = a1[2].n128_u8[0];
  v9 = type metadata accessor for ActionResolverRequest(0);
  v10 = sub_22BE341A4();
  type metadata accessor for Candidate(v10);
  sub_22BE5CF7C();
  sub_22C272E84();
  v12 = v9[6];
  v11 = v9[7];
  type metadata accessor for AST.FlatValue(0);
  sub_22C272E84();
  v13 = v9[8];
  v14 = v9[9];
  sub_22C26E684();
  sub_22BE1834C();
  v15 = sub_22BE36658();
  v16(v15);

  v17 = (a7 + v9[10]);
  result = v22;
  *v17 = v22;
  v17[1].n128_u64[0] = v21;
  v17[1].n128_u64[1] = v20;
  v17[2].n128_u8[0] = v19;
  *(a7 + v7) = a2;
  *(a7 + v12) = a3;
  *(a7 + v11) = a4;
  *(a7 + v13) = a5;
  *(a7 + v14) = a6;
  return result;
}

void ActionResolverRequest.init(statementId:toolId:resolvedParameters:unresolvedParameterSets:userSpecifiedParameters:isConfirmed:isAuthenticated:)()
{
  sub_22C190018();
  v24 = v0;
  v25 = v1;
  v22 = v2;
  v23 = v3;
  v20 = v4;
  v21 = v5;
  v19 = v6;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for ActionResolverRequest(0);
  v12 = v11[5];
  type metadata accessor for Candidate(0);
  sub_22BE5CF7C();
  sub_22C272E84();
  v13 = v11[6];
  v14 = v11[7];
  type metadata accessor for AST.FlatValue(0);
  sub_22C272E84();
  v15 = v11[8];
  v16 = v11[9];
  sub_22C26E684();
  sub_22BE1834C();
  (*(v17 + 32))(v10, v8);

  v18 = v10 + v11[10];
  *v18 = v19;
  *(v18 + 8) = v20;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v10 + v12) = v21;
  *(v10 + v13) = v22;
  *(v10 + v14) = v23;
  *(v10 + v15) = v24;
  *(v10 + v16) = v25;
  sub_22C18FFFC();
}

uint64_t sub_22C160AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000022C2D97F0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x800000022C2D9810 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000022C2DBE50 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7269666E6F437369 && a2 == 0xEB0000000064656DLL;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65687475417369 && a2 == 0xEF64657461636974;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1819242356 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_22C274014();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C160CEC(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x7269666E6F437369;
      break;
    case 5:
      result = 0x6E65687475417369;
      break;
    case 6:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C160DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C160AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C160E04(uint64_t a1)
{
  v2 = sub_22C17856C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C160E40(uint64_t a1)
{
  v2 = sub_22C17856C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ActionResolverRequest.encode(to:)()
{
  sub_22BE2BB34();
  sub_22C18E9F8();
  sub_22BE5CE4C(&qword_27D913BE0, &qword_22C2B85D8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE23094();
  v3 = sub_22C17856C();
  sub_22BE25524(&type metadata for ActionResolverRequest.CodingKeys, v4, v3);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22C18F958();
  sub_22BE41644();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for ActionResolverRequest(0);
    sub_22C18E864();
    sub_22BE32460(v6);
    sub_22BE486C4();
    sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
    sub_22C1785C0();
    sub_22BE41644();
    sub_22C273FA4();
    sub_22BE32460(v1[6]);
    sub_22BE39E24();
    sub_22BE5CE4C(&qword_27D913C00, &unk_22C2B85E8);
    sub_22C1787E0(&unk_27D913C08);
    sub_22BE41644();
    sub_22C273FA4();
    sub_22BE32460(v1[7]);
    sub_22BEE9478();
    sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BF06B7C();
    sub_22BE41644();
    sub_22C273FA4();
    sub_22BE1C270();
    sub_22C273F64();
    sub_22BE1C270();
    sub_22C273F64();
    sub_22C18F490(v1[10]);
    sub_22BEB9C9C();
    sub_22C18F35C();

    sub_22C18EBC8();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v7 = sub_22BE37A10();
  v8(v7);
  sub_22BEE93D4();
}

void ActionResolverRequest.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v19 = v5;
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE18DFC();
  sub_22BE5CE4C(&qword_27D913C10, &qword_22C2B85F8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE3100C();
  type metadata accessor for ActionResolverRequest(v8);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v9);
  sub_22BE197B8();
  type metadata accessor for Candidate(0);
  sub_22BE5CF7C();
  sub_22C272E84();
  type metadata accessor for AST.FlatValue(0);
  sub_22C272E84();
  sub_22BE3C0A8(v4);
  sub_22C17856C();
  sub_22BE23550();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    LOBYTE(v20) = 0;
    sub_22BE18F44();
    sub_22BE20458(v10);
    sub_22C18FDF0();
    sub_22C18F464();
    sub_22C273EB4();
    sub_22BE27C14();
    v11 = sub_22BE3CC34();
    v12(v11);
    sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
    sub_22BE486C4();
    v13 = sub_22C1786D0();
    sub_22C18E788(v13);

    *(v0 + v2[5]) = v20;
    sub_22BE5CE4C(&qword_27D913C00, &unk_22C2B85E8);
    sub_22BE39E24();
    v14 = sub_22C1787E0(&unk_27D913C28);
    sub_22C18E788(v14);
    *(v0 + v2[6]) = v20;
    sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
    sub_22BEE9478();
    v15 = sub_22BF06F1C();
    sub_22C18E788(v15);

    *(v0 + v2[7]) = v20;
    sub_22C18F620(4);
    sub_22C18F464();
    *(v0 + v2[8]) = sub_22C273E74() & 1;
    sub_22C18F620(5);
    sub_22C18F464();
    *(v0 + v2[9]) = sub_22C273E74() & 1;
    sub_22BEB9D44();
    sub_22BE40660();
    sub_22C18F464();
    sub_22C273EB4();
    v16 = sub_22C18F16C();
    v17(v16);
    sub_22C18F234(v20);
    v18 = sub_22BE19EBC();
    sub_22BE1A964(v18, v19);
    sub_22BE26B64(v4);
    sub_22BE26148();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void ParameterPath.key.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t ParameterPath.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

IntelligenceFlowPlannerSupport::ParameterPath __swiftcall ParameterPath.init(key:arrayIndex:)(IntelligenceFlowPlannerSupport::ParameterPath key, Swift::Int_optional arrayIndex)
{
  *v2 = key.key;
  *(v2 + 16) = arrayIndex.value;
  *(v2 + 24) = arrayIndex.is_nil;
  key.collectionIndex = arrayIndex;
  return key;
}

uint64_t static ParameterPath.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22C18E738(a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);
  v12 = v5 == *v6 && *(v7 + 8) == *(v6 + 8);
  if (v12 || (sub_22C274014(), result = sub_22C18FA30(), (v14 & 1) != 0))
  {
    if (v9)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == v10)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_22C161774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEF7865646E496E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C161844(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_22C161888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C161774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1618B0(uint64_t a1)
{
  v2 = sub_22C178850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1618EC(uint64_t a1)
{
  v2 = sub_22C178850();

  return MEMORY[0x2821FE720](a1, v2);
}

void ParameterPath.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22BE5CE4C(&qword_27D913C30, &qword_22C2B8600);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE19E64();
  sub_22BE31088(v2);
  sub_22C178850();
  sub_22BE23550();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22BE3E79C();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v0)
  {
    sub_22C18E4E0();
    sub_22BE1BB58();
    sub_22C273F24();
  }

  v4 = sub_22BE25EE4();
  v5(v4);
  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t ParameterPath.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22C272F44();
  if (v3 == 1)
  {
    return sub_22C274174();
  }

  sub_22C274174();
  return MEMORY[0x2318AC860](v2);
}

uint64_t ParameterPath.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = sub_22BE25DAC();
  sub_22C18FBF8(v2);
  sub_22C274174();
  if (v1 != 1)
  {
    v3 = sub_22BEC03B0();
    MEMORY[0x2318AC860](v3);
  }

  return sub_22C2741A4();
}

void ParameterPath.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE5CE4C(&qword_27D913C40, &qword_22C2B8608);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C178850();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE2315C();
    v9 = sub_22C273E34();
    v10 = sub_22C18E894();
    v12 = v11;
    v13(v10, v7);
    *v6 = v2;
    *(v6 + 8) = v1;
    *(v6 + 16) = v9;
    *(v6 + 24) = v12 & 1;

    sub_22BE26B64(v4);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t sub_22C161CD8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_22C274154();
  sub_22C18FBF8(v3);
  sub_22C274174();
  if (v2 != 1)
  {
    v4 = sub_22BEC03B0();
    MEMORY[0x2318AC860](v4);
  }

  return sub_22C2741A4();
}

uint64_t sub_22C161D7C(uint64_t a1)
{
  v2 = sub_22C1788A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C161DB8(uint64_t a1)
{
  v2 = sub_22C1788A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SafetyModeException.clientQueryId.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

IntelligenceFlowPlannerSupport::SafetyModeException __swiftcall SafetyModeException.init(clientQueryId:)(Swift::String_optional clientQueryId)
{
  sub_22BE28634();

  *v3 = v2;
  v3[1] = v1;
  result.clientQueryId.value._object = v5;
  result.clientQueryId.value._countAndFlagsBits = v4;
  return result;
}

unint64_t SafetyModeException.description.getter()
{
  v2 = *v0;
  v1 = v0[1];

  sub_22C273AA4();

  sub_22BE25A74();
  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 4271950;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x2318AB8D0](v3, v1);

  return 0xD000000000000023;
}

uint64_t sub_22C161F94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C16203C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C161F94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C162068(uint64_t a1)
{
  v2 = sub_22C1788F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1620A4(uint64_t a1)
{
  v2 = sub_22C1788F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SafetyModeException.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  sub_22BE5CE4C(&qword_27D913C58, &qword_22C2B8618);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE1B01C();
  sub_22BE3AD08();
  v1 = sub_22C1788F8();
  sub_22BE3A014(&type metadata for SafetyModeException.CodingKeys, v2, v1);
  sub_22C18E100();
  sub_22C273EF4();
  v3 = sub_22BE35CD8();
  v4(v3);
  sub_22BE22978();
  sub_22BE18478();
}

void SafetyModeException.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  sub_22BE5CE4C(&qword_27D913C68, &qword_22C2B8620);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3763C();
  v4 = sub_22C1788F8();
  sub_22BE18878(&type metadata for SafetyModeException.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_22C18F368();
    v6 = sub_22C273E04();
    v8 = v7;
    v9 = sub_22BE17B24();
    v10(v9);
    *v2 = v6;
    v2[1] = v8;
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

IntelligenceFlowPlannerSupport::ContextRetrieved __swiftcall ContextRetrieved.init(requiredContext:utteranceContext:)(Swift::OpaquePointer requiredContext, Swift::OpaquePointer utteranceContext)
{
  v2->_rawValue = requiredContext._rawValue;
  v2[1]._rawValue = utteranceContext._rawValue;
  result.utteranceContext = utteranceContext;
  result.requiredContext = requiredContext;
  return result;
}

uint64_t ContextRetrieved.description.getter()
{
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  type metadata accessor for RetrievedContextStatement(0);
  v0 = sub_22BE191CC();
  v1 = MEMORY[0x2318ABBB0](v0);
  MEMORY[0x2318AB8D0](v1);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000014);
  v2 = sub_22BE260B8();
  MEMORY[0x2318ABBB0](v2);
  sub_22C18FC2C();

  v3 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v3);
  return 0;
}

uint64_t sub_22C16245C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726975716572 && a2 == 0xEF747865746E6F43;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022C2D97D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C162534(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6465726975716572;
  }
}

uint64_t sub_22C162584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C16245C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1625AC(uint64_t a1)
{
  v2 = sub_22C17894C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1625E8(uint64_t a1)
{
  v2 = sub_22C17894C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextRetrieved.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v21 = v20;
  sub_22BE5CE4C(&qword_27D913C70, &qword_22C2B8628);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E64();
  sub_22BE3C0A8(v21);
  v23 = sub_22C17894C();

  sub_22BE23550();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913C80, &qword_22C2B8630);
  sub_22C1789A0();
  sub_22C18E60C();
  sub_22BE1C270();
  sub_22C273FA4();

  if (!v23)
  {
    sub_22C18E60C();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v24 = sub_22BE47E18();
  v25(v24);
  sub_22BE35D48();
  sub_22BE18478();
}

void ContextRetrieved.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C18F140();
  v13 = v12;
  sub_22BE5CE4C(&qword_27D913C98, &qword_22C2B8638);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  sub_22BE3763C();
  v15 = sub_22C17894C();
  sub_22BE33A2C(&type metadata for ContextRetrieved.CodingKeys, v16, v15);
  if (v11)
  {
    sub_22BE26B64(v10);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D913C80, &qword_22C2B8630);
    sub_22C178A54();
    sub_22BEE94BC();
    sub_22BE23070();
    sub_22C273EB4();
    sub_22BEE94BC();
    sub_22BE23070();
    sub_22C273EB4();
    v17 = sub_22BE18240();
    v18(v17);
    *v13 = a10;
    v13[1] = a10;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C1629F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022C2D97A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C162AC4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C162B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1629F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C162B38(uint64_t a1)
{
  v2 = sub_22C178B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C162B74(uint64_t a1)
{
  v2 = sub_22C178B08();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedContextStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913CB0, &qword_22C2B8640);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C178B08();
  sub_22BE33B8C(&type metadata for RetrievedContextStatement.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for RetrievedContextStatement(0);
    sub_22BE323A4();
    sub_22C270F24();
    sub_22C18F048();
    sub_22BE20458(v5);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v6 = sub_22BE37508();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void RetrievedContextStatement.init(from:)()
{
  sub_22BE19130();
  sub_22C18E83C(v2);
  sub_22C270F24();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE188B0();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3668C(v5);
  sub_22BE5CE4C(&qword_27D913CC0, &qword_22C2B8648);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE3100C();
  type metadata accessor for RetrievedContextStatement(v7);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19338();
  sub_22BE41E84(v0);
  sub_22C178B08();
  sub_22BE23550();
  sub_22C18FB4C(v9, v10, v11);
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18F258();
    sub_22BE18F44();
    sub_22BE20458(v12);
    sub_22BEE92A4();
    sub_22BE2ED88(v13, v14, v15, v16, v17);
    v18 = sub_22C18E6E0();
    v19(v18);
    sub_22BE33FE4();
    sub_22C18F048();
    v21 = sub_22BE20458(v20);
    sub_22C18E624(v21);
    v22 = sub_22BE186C0();
    v23(v22);
    v24 = sub_22C18E5CC();
    v25(v24);
    v26 = sub_22BE431F0();
    sub_22BE1A964(v26, v27);
    sub_22BE26B64(v0);
    sub_22BE3CD28();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C16305C()
{
  sub_22C18FF14();
  sub_22BE3E308();
  sub_22C26E684();
  sub_22BE1834C();
  v4 = sub_22BE1B328();
  v5(v4);
  (v1)(0);
  v6 = sub_22C18F32C();
  v0(v6);
  sub_22BE1834C();
  v8 = *(v7 + 32);

  return v8(&v1[v3], v2);
}

uint64_t sub_22C163130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = a3(0);
  v6 = sub_22BE3E750(v5);

  return a4(v6);
}

uint64_t sub_22C1631B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022C2D9780 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C163284(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C1632D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1631B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1632F8(uint64_t a1)
{
  v2 = sub_22C178B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C163334(uint64_t a1)
{
  v2 = sub_22C178B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

void DynamicEnumerationEntityStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913CD0, &qword_22C2B8650);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C178B5C();
  sub_22BE33B8C(&type metadata for DynamicEnumerationEntityStatement.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for DynamicEnumerationEntityStatement(0);
    sub_22BE323A4();
    sub_22C271904();
    sub_22C18F030();
    sub_22BE20458(v5);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v6 = sub_22BE37508();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void DynamicEnumerationEntityStatement.init(from:)()
{
  sub_22BE19130();
  sub_22C18E83C(v2);
  sub_22C271904();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE188B0();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3668C(v5);
  sub_22BE5CE4C(&qword_27D913CE8, &qword_22C2B8658);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE3100C();
  type metadata accessor for DynamicEnumerationEntityStatement(v7);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19338();
  sub_22BE41E84(v0);
  sub_22C178B5C();
  sub_22BE23550();
  sub_22C18FB4C(v9, v10, v11);
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18F258();
    sub_22BE18F44();
    sub_22BE20458(v12);
    sub_22BEE92A4();
    sub_22BE2ED88(v13, v14, v15, v16, v17);
    v18 = sub_22C18E6E0();
    v19(v18);
    sub_22BE33FE4();
    sub_22C18F030();
    v21 = sub_22BE20458(v20);
    sub_22C18E624(v21);
    v22 = sub_22BE186C0();
    v23(v22);
    v24 = sub_22C18E5CC();
    v25(v24);
    v26 = sub_22BE431F0();
    sub_22BE1A964(v26, v27);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C163854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C16391C(char a1)
{
  if (a1)
  {
    return 0x797469746E65;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C163960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C163854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C163988(uint64_t a1)
{
  v2 = sub_22C178BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1639C4(uint64_t a1)
{
  v2 = sub_22C178BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpanMatchedEntityStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913CF8, &qword_22C2B8660);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C178BD0();
  sub_22BE33B8C(&type metadata for SpanMatchedEntityStatement.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for SpanMatchedEntityStatement(0);
    sub_22BE323A4();
    sub_22C270FD4();
    sub_22C18F018();
    sub_22BE20458(v5);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v6 = sub_22BE37508();
  v7(v6);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void SpanMatchedEntityStatement.init(from:)()
{
  sub_22BE19130();
  sub_22C18E83C(v2);
  sub_22C270FD4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE188B0();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3668C(v5);
  sub_22BE5CE4C(&qword_27D913D08, &qword_22C2B8668);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE3100C();
  type metadata accessor for SpanMatchedEntityStatement(v7);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19338();
  sub_22BE41E84(v0);
  sub_22C178BD0();
  sub_22BE23550();
  sub_22C18FB4C(v9, v10, v11);
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18F258();
    sub_22BE18F44();
    sub_22BE20458(v12);
    sub_22BEE92A4();
    sub_22BE2ED88(v13, v14, v15, v16, v17);
    v18 = sub_22C18E6E0();
    v19(v18);
    sub_22BE33FE4();
    sub_22C18F018();
    v21 = sub_22BE20458(v20);
    sub_22C18E624(v21);
    v22 = sub_22BE186C0();
    v23(v22);
    v24 = sub_22C18E5CC();
    v25(v24);
    v26 = sub_22BE431F0();
    sub_22BE1A964(v26, v27);
    sub_22BE26B64(v0);
    sub_22C0E9A74();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C163E60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C163EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C163E60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C163F20(uint64_t a1)
{
  v2 = sub_22C178C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C163F5C(uint64_t a1)
{
  v2 = sub_22C178C24();

  return MEMORY[0x2821FE720](a1, v2);
}

void EntitySpanMatchResult.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F710();
  sub_22BE5CE4C(&qword_27D913D10, &qword_22C2B8670);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE3C0A8(v0);
  sub_22C178C24();
  sub_22C18FC8C();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D913D20, &qword_22C2B8678);
  sub_22C178C78();
  sub_22BE37DD4();
  sub_22BE1A550();
  sub_22C273FA4();
  sub_22C18F4B0();

  v2 = sub_22C18E57C();
  v3(v2);
  sub_22BEE94B0();
  sub_22BE18478();
}

void EntitySpanMatchResult.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  sub_22BE5CE4C(&qword_27D913D38, &qword_22C2B8680);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B01C();
  sub_22BE3763C();
  v3 = sub_22C178C24();
  sub_22BE18878(&type metadata for EntitySpanMatchResult.CodingKeys, v4, v3);
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D913D20, &qword_22C2B8678);
    v5 = sub_22C178D2C();
    sub_22BE33B10(v5, v6);
    v7 = sub_22BE17B24();
    v8(v7);
    sub_22C18FD98();
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

void ToolRetrievalResponse.rewrittenQuery.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t ToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_22C164344(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022C2D56F0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574746972776572 && a2 == 0xEE0079726575516ELL;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6576656972746572 && a2 == 0xEE00736C6F6F5464;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7365707974 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

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

unint64_t sub_22C164500(char a1)
{
  result = 0x6574746972776572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E656469666E6F63;
      break;
    case 3:
      result = 0x6576656972746572;
      break;
    case 4:
      result = 0x7365707974;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_22C1645C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C164344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1645E8(uint64_t a1)
{
  v2 = sub_22C178DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C164624(uint64_t a1)
{
  v2 = sub_22C178DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolRetrievalResponse.encode(to:)()
{
  sub_22BE3F494();
  v4 = v3;
  sub_22BE5CE4C(&qword_27D913D50, &qword_22C2B8688);
  sub_22BE1A3D8();
  v6 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  sub_22BE31088(v4);
  sub_22C178DE0();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE3E79C();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE1C270();
    sub_22C273F54();
    sub_22BE1C270();
    sub_22C273F84();
    sub_22BE5CE4C(&qword_27D913D60, &qword_22C2B8690);
    sub_22C178E34();
    sub_22C18F608();
    sub_22C18E118();
    sub_22C273FA4();
    sub_22BE5CE4C(&qword_27D913D78, &qword_22C2B8698);
    sub_22C178EE8();
    sub_22C18F608();
    sub_22C18E118();
    sub_22C273FA4();
  }

  (*(v6 + 8))(v1, v2);
  sub_22BE35D48();
  sub_22BE3CAD8();
}

void ToolRetrievalResponse.init(from:)()
{
  sub_22BE3F494();
  sub_22C18F140();
  v3 = v2;
  sub_22BE5CE4C(&qword_27D913D90, &qword_22C2B86A0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE23E58();
  sub_22C18E560(v0);
  sub_22C178DE0();
  sub_22BE3CCD4();
  sub_22C18FF90();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE45D74();
    v5 = sub_22C273E64();
    v15 = v6;
    sub_22BE45D74();
    v7 = sub_22C273E64();
    v14 = v8;
    v13 = v7;
    LOBYTE(v16) = 2;
    sub_22C273E94();
    v10 = v9;
    sub_22BE5CE4C(&qword_27D913D60, &qword_22C2B8690);
    sub_22C178FD4();
    sub_22C18EBD4();
    sub_22C18E7D8();
    sub_22C18F0BC();
    sub_22C273EB4();
    sub_22BE5CE4C(&qword_27D913D78, &qword_22C2B8698);
    sub_22C179088();
    sub_22C18EBD4();
    sub_22C18E7D8();
    sub_22C18F0BC();
    sub_22C273EB4();
    v11 = sub_22C18E22C();
    v12(v11);
    *v3 = v5;
    *(v3 + 8) = v15;
    *(v3 + 16) = v13;
    *(v3 + 24) = v14;
    *(v3 + 32) = v10;
    *(v3 + 40) = v16;
    *(v3 + 48) = v16;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE3CAD8();
}

uint64_t ExternalAgentOutcome.statementOutcome.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ExternalAgentOutcome(v0);
  return sub_22BE18504();
}

uint64_t ExternalAgentOutcome.responseText.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ExternalAgentOutcome(v0);
  return sub_22BE18504();
}

uint64_t sub_22C164C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000022C2DA650 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000074786554)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C164D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C164C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C164D98(uint64_t a1)
{
  v2 = sub_22BE48CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C164DD4(uint64_t a1)
{
  v2 = sub_22BE48CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExternalAgentOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BE19130();
  v23 = v22;
  v38 = v24;
  sub_22C26F894();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v25);
  sub_22BE28FD8();
  v26 = sub_22C26E684();
  sub_22BE179D8();
  v39 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  sub_22BE252B8(v29);
  v42 = sub_22BE5CE4C(&qword_27D913DC0, &qword_22C2B86B0);
  sub_22BE179D8();
  v40 = v30;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22BE3100C();
  v33 = type metadata accessor for ExternalAgentOutcome(v32);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE197B8();
  sub_22BE2018C(v23);
  sub_22BE48CC4();
  sub_22BE23550();
  sub_22C274214();
  if (v20)
  {
    sub_22BE26B64(v23);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v35);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v39 + 32))(v19, v41, v26);
    sub_22BE33FE4();
    sub_22BE28CFC();
    sub_22BE20458(v36);
    sub_22C18E9A0();
    sub_22C273EB4();
    sub_22C18FD4C();
    v37();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE200EC();
    sub_22BE25D60(&qword_28106DBD8, MEMORY[0x277D83808]);
    sub_22C18EBD4();
    sub_22C273EB4();
    (*(v40 + 8))(v21, v42);
    *(v19 + *(v33 + 24)) = v43;
    sub_22BE1A964(v19, v38);
    sub_22BE26B64(v23);
    sub_22C18EB08();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void ExternalAgentRequestRewriteMetadata.originalRequest.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_22C1652D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xEF74736575716552;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365746972776572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C1653A0(char a1)
{
  if (a1)
  {
    return 0x7365746972776572;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_22C1653EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1652D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C165414(uint64_t a1)
{
  v2 = sub_22C179174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C165450(uint64_t a1)
{
  v2 = sub_22C179174();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExternalAgentRequestRewriteMetadata.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  sub_22BE5CE4C(&qword_27D913DC8, &qword_22C2B86B8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  v2 = sub_22C18FE98();
  sub_22BE25318(v2);
  sub_22C179174();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E4A8();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22C18E158(&qword_28106DBE8);
    sub_22C18F608();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v3 = sub_22BE25EE4();
  v4(v3);
  sub_22BE35D48();
  sub_22BE18478();
}

void ExternalAgentRequestRewriteMetadata.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  sub_22BE5CE4C(&qword_27D913DD8, &qword_22C2B86C0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE234F4();
  sub_22BE3763C();
  v3 = sub_22C179174();
  sub_22BE33A2C(&type metadata for ExternalAgentRequestRewriteMetadata.CodingKeys, v4, v3);
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE33FE4();
    sub_22BE25D60(&qword_28106DBD8, MEMORY[0x277D83808]);
    sub_22C18E128();
    sub_22BE23070();
    sub_22C273EB4();
    v5 = sub_22BE17B54();
    v6(v5);
    sub_22C18F564();

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t ToolResolution.statementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ToolResolution(v0);
  return sub_22BE18504();
}

uint64_t ToolResolution.originProgramStatementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ToolResolution(v0);
  return sub_22BE18504();
}

uint64_t sub_22C165930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x800000022C2D9270 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C165A4C(char a1)
{
  if (!a1)
  {
    return 1819242356;
  }

  if (a1 == 1)
  {
    return 0x6E656D6574617473;
  }

  return 0xD000000000000018;
}

uint64_t sub_22C165AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C165930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C165AD8(uint64_t a1)
{
  v2 = sub_22C1791C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C165B14(uint64_t a1)
{
  v2 = sub_22C1791C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolResolution.encode(to:)()
{
  sub_22BE19130();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913DE0, &qword_22C2B86C8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C1791C8();
  sub_22BE33B8C(&type metadata for ToolResolution.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C272224();
  sub_22C18EF70();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for ToolResolution(0);
    sub_22BE323A4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v5);
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
  }

  v6 = sub_22C18E57C();
  v7(v6);
  sub_22BE467E4();
  sub_22BE18478();
}

void ToolResolution.init(from:)()
{
  sub_22BE19130();
  sub_22C19011C(v1);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v2);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v3);
  sub_22BE25A90();
  sub_22C272224();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3668C(v5);
  sub_22BE5CE4C(&qword_27D913DF0, &qword_22C2B86D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  type metadata accessor for ToolResolution(0);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v7);
  sub_22BE28FD8();
  v8 = v0[4];
  sub_22BE3C0A8(v0);
  sub_22C1791C8();
  sub_22BE48270();
  sub_22C274214();
  if (v31)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18FA60();
    sub_22C18EF70();
    sub_22BE20458(v9);
    sub_22BEE92A4();
    sub_22C18F6D8(v10, v11, v12, v13, v14);
    v15 = sub_22C18FA18();
    v16(v15);
    sub_22BE33FE4();
    sub_22BE18F44();
    sub_22BE20458(v17);
    sub_22C18E9A0();
    sub_22BE33F78(v18, v19, v20, v21, v22);
    v23 = sub_22C18F078();
    v24(v23);
    sub_22BE200EC();
    sub_22C18F650();
    v25 = sub_22BE32C30();
    v26(v25);
    v27 = sub_22BE45FE8();
    v28(v27);
    v29 = sub_22BE385E4();
    sub_22BE1A964(v29, v30);
    sub_22BE26B64(v8);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t TypeConversionRequest.target.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TypeConversionRequest(v0);
  return sub_22BE18504();
}

uint64_t TypeConversionRequest.statementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TypeConversionRequest(v0);
  return sub_22BE18504();
}

uint64_t TypeConversionRequest.init(value:target:statementId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE3E864();
  sub_22C272874();
  sub_22BE1834C();
  v7 = sub_22BE1C2A0();
  v8(v7);
  v9 = type metadata accessor for TypeConversionRequest(0);
  sub_22C18FE44();
  sub_22C2728A4();
  sub_22BE1834C();
  (*(v10 + 32))(v4 + v5, v3);
  v11 = *(v9 + 24);
  sub_22C26E684();
  sub_22BE1834C();
  v13 = *(v12 + 32);

  return v13(v4 + v11, a3);
}

uint64_t sub_22C1662AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C1663B8(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x746567726174;
  }

  return 0x6E656D6574617473;
}

uint64_t sub_22C166418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1662AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C166440(uint64_t a1)
{
  v2 = sub_22C17921C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C16647C(uint64_t a1)
{
  v2 = sub_22C17921C();

  return MEMORY[0x2821FE720](a1, v2);
}

void TypeConversionRequest.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913DF8, &qword_22C2B86D8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C17921C();
  sub_22BE33B8C(&type metadata for TypeConversionRequest.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for TypeConversionRequest(0);
    sub_22BE335C0();
    sub_22C2728A4();
    sub_22C18EF34();
    sub_22BE20458(v5);
    sub_22BE31254();
    sub_22C273FA4();
    sub_22BE200EC();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v6);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v7 = sub_22BE37508();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void TypeConversionRequest.init(from:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  sub_22C18FEC4(v3);
  v24 = sub_22C26E684();
  sub_22BE179D8();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v25 = v6;
  sub_22BE183BC();
  sub_22C2728A4();
  sub_22BE179D8();
  v27 = v8;
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BE19338();
  v9 = sub_22C272874();
  sub_22BE179D8();
  v26 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE3668C(v12);
  sub_22BE5CE4C(&qword_27D913E08, &qword_22C2B86E0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE25CD0();
  v14 = type metadata accessor for TypeConversionRequest(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE197B8();
  sub_22BE25318(v2);
  sub_22C17921C();
  sub_22BEC046C();
  sub_22C274214();
  if (v30)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE18720();
    sub_22BE20458(v16);
    sub_22BEE92A4();
    sub_22C273EB4();
    (*(v26 + 32))(v0, v29, v9);
    sub_22BE33FE4();
    sub_22C18EF34();
    sub_22BE20458(v17);
    sub_22C18E9A0();
    sub_22C273EB4();
    (*(v27 + 32))(v0 + *(v14 + 20), v1, v28);
    sub_22BE200EC();
    sub_22BE18F44();
    sub_22BE20458(v18);
    sub_22C18F614();
    sub_22C273EB4();
    v19 = sub_22C18FFF0();
    v20(v19);
    (*(v22 + 32))(v0 + *(v14 + 24), v25, v24);
    v21 = sub_22C1088E8();
    sub_22BE1A964(v21, v23);
    sub_22BE26B64(v2);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t TypeConversionResult.statementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TypeConversionResult(v0);
  return sub_22BE18504();
}

uint64_t TypeConversionResult.originStatementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TypeConversionResult(v0);
  return sub_22BE18504();
}

uint64_t sub_22C166CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C190048();
  v9 = v8;
  v10 = sub_22BE3E308();
  v11(v10);
  sub_22BE1834C();
  v12 = sub_22BE1B328();
  v13(v12);
  v9(0);
  sub_22C18FA90();
  v14 = sub_22C26E684();
  sub_22BE18000();
  v25 = v15 + 32;
  v26 = *(v15 + 32);
  v26(v6 + v7, v5, v14);
  sub_22C190034();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
}

uint64_t sub_22C166DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000022C2D9200 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C166EC0(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x6E656D6574617473;
  }

  return 0xD000000000000011;
}

uint64_t sub_22C166F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C166DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C166F50(uint64_t a1)
{
  v2 = sub_22C179270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C166F8C(uint64_t a1)
{
  v2 = sub_22C179270();

  return MEMORY[0x2821FE720](a1, v2);
}

void TypeConversionResult.encode(to:)()
{
  sub_22BE19130();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913E10, &qword_22C2B86E8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C179270();
  sub_22BE33B8C(&type metadata for TypeConversionResult.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for TypeConversionResult(0);
    sub_22BE323A4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v5);
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
    sub_22BE351E8();
    sub_22BE26108();
    sub_22C273FA4();
  }

  v6 = sub_22C18E57C();
  v7(v6);
  sub_22BE467E4();
  sub_22BE18478();
}

void TypeConversionResult.init(from:)()
{
  sub_22BE19130();
  sub_22C19011C(v1);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v2);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v3);
  sub_22BE25A90();
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3668C(v5);
  sub_22BE5CE4C(&qword_27D913E20, &qword_22C2B86F0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  type metadata accessor for TypeConversionResult(0);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v7);
  sub_22BE28FD8();
  v8 = v0[4];
  sub_22BE3C0A8(v0);
  sub_22C179270();
  sub_22BE48270();
  sub_22C274214();
  if (v31)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18FA60();
    sub_22BE18720();
    sub_22BE20458(v9);
    sub_22BEE92A4();
    sub_22C18F6D8(v10, v11, v12, v13, v14);
    v15 = sub_22C18FA18();
    v16(v15);
    sub_22BE33FE4();
    sub_22BE18F44();
    sub_22BE20458(v17);
    sub_22C18E9A0();
    sub_22BE33F78(v18, v19, v20, v21, v22);
    v23 = sub_22C18F078();
    v24(v23);
    sub_22BE200EC();
    sub_22C18F650();
    v25 = sub_22BE32C30();
    v26(v25);
    v27 = sub_22BE45FE8();
    v28(v27);
    v29 = sub_22BE385E4();
    sub_22BE1A964(v29, v30);
    sub_22BE26B64(v8);
    sub_22BE379D8();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t QueryDecorationResult.toolRetrievalResponse.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryDecorationResult(v0);
  return sub_22BE18504();
}

uint64_t QueryDecorationResult.context.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for QueryDecorationResult(v0);
  return sub_22BE18504();
}

void QueryDecorationResult.init(spans:requiredContext:utteranceContext:toolRetrievalResponse:dynamicEnumerationEntities:context:)()
{
  sub_22BE3C358();
  sub_22C18F5A8();

  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  sub_22C271A34();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  *v3 = v2;
  sub_22BE2343C();
  *(v3 + *(DecorationResult + 24)) = v1;
  *(v3 + *(DecorationResult + 28)) = v0;
  sub_22BE267B8();
}

uint64_t sub_22C1676CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E617073 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000022C2D58B0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000022C2D58D0 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

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

unint64_t sub_22C16782C(char a1)
{
  result = 0x736E617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}