uint64_t sub_22C138FF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E727574 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000)
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

uint64_t sub_22C1390B8(char a1)
{
  if (a1)
  {
    return 0x736E656B6F74;
  }

  else
  {
    return 0x64496E727574;
  }
}

uint64_t sub_22C1390E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C138FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C139110(uint64_t a1)
{
  v2 = sub_22C174900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13914C(uint64_t a1)
{
  v2 = sub_22C174900();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpeechPartialResult.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  sub_22BE5CE4C(&qword_27D912EE0, &qword_22C2B7F40);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  v2 = sub_22C18FE98();
  sub_22BE25318(v2);
  sub_22C174900();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E4A8();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D912EF0, &qword_22C2B7F48);
    sub_22C174954();
    sub_22C18F608();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v3 = sub_22BE25EE4();
  v4(v3);
  sub_22BE35D48();
  sub_22BE18478();
}

void SpeechPartialResult.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  sub_22BE5CE4C(&qword_27D912F08, &qword_22C2B7F50);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE234F4();
  sub_22BE3763C();
  v3 = sub_22C174900();
  sub_22BE33A2C(&type metadata for SpeechPartialResult.CodingKeys, v4, v3);
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE5CE4C(&qword_27D912EF0, &qword_22C2B7F48);
    sub_22BE33FE4();
    sub_22C174A08();
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

uint64_t Request.safetyMode.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for Request(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t Request.safetyMode.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  return sub_22BE18504();
}

uint64_t Request.prescribedPlan.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  return sub_22BE18504();
}

uint64_t sub_22C1395F4()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t Request.rewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  return sub_22BE18504();
}

void Request.rewriteMetadataInlined.getter()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for Request(v1);
  v3 = sub_22C18FDC4((v0 + *(v2 + 32)));

  sub_22BE3820C(v3, v4, v5);
}

__n128 Request.rewriteMetadataInlined.setter()
{
  v2 = sub_22C18FE64();
  v3 = (v1 + *(type metadata accessor for Request(v2) + 32));
  sub_22BE37808(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v0;
  return result;
}

uint64_t Request.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  return sub_22BE18504();
}

uint64_t Request.siriRequestContext.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Request(v0);
  sub_22BE25438(*(v1 + 36));
  return sub_22BE22814();
}

uint64_t Request.siriRequestContext.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  sub_22C18F880();
  return sub_22BE2343C();
}

uint64_t Request.siriRequestContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  return sub_22BE18504();
}

uint64_t Request.suggestedInvocation.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = (v1 + *(type metadata accessor for Request(v2) + 40));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

void Request.suggestedInvocation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for Request(0);
  sub_22C18EA48(*(v4 + 40));

  *v1 = v2;
  v1[1] = v3;
}

uint64_t Request.suggestedInvocation.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  return sub_22BE18504();
}

uint64_t Request.datetimeContext.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Request(v0);
  sub_22BE25438(*(v1 + 44));
  return sub_22BE22814();
}

uint64_t Request.datetimeContext.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  sub_22C18F880();
  return sub_22BE2343C();
}

uint64_t Request.datetimeContext.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Request(v0);
  return sub_22BE18504();
}

void Request.init(content:safetyMode:prescribedPlan:rewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v34 = v4;
  v33 = v5;
  v7 = v6;
  v8 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v36 = *v3;
  v35 = *(v3 + 2);
  v37 = v1[1];
  v38 = *v1;
  v10 = type metadata accessor for DateTimeContext(0);
  sub_22BE1A140();
  v14 = sub_22C18F17C(v11, v12, v13, v10);
  v15 = type metadata accessor for Request(v14);
  type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v19);
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v23);
  v24 = (v7 + v15[8]);
  *v24 = 0;
  v24[1] = 0;
  v24[2] = 0;
  sub_22C271394();
  sub_22BE1A140();
  sub_22BE19DC4(v25, v26, v27, v28);
  v29 = (v7 + v15[10]);
  *v29 = 0;
  v29[1] = 0;
  sub_22BE1A140();
  sub_22BE19DC4(v30, v31, v32, v10);
  sub_22BE250EC();
  sub_22C171FA8(v33, v7);
  *(v7 + v15[5]) = v34;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE37808(*v24, v24[1], v24[2]);
  *v24 = v36;
  v24[2] = v35;
  sub_22BE2343C();

  *v29 = v38;
  v29[1] = v37;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void Request.init(query:safetyMode:statementId:clientQueryId:dateTimeContext:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E64();
  v17 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A8B4();
  v19 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23E58();

  *v10 = v8;
  *(v10 + 1) = v6;
  type metadata accessor for RequestContent.TextContent(0);
  sub_22C18FE44();
  sub_22C26E684();
  sub_22BE1834C();
  (*(v21 + 32))(&v10[v6], v3);
  type metadata accessor for RequestContent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE3AE2C();
  sub_22C18F17C(v22, v23, v24, v25);
  v26 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22C18F17C(v27, v28, v29, v26);
  v30 = sub_22C271394();
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v30);
  sub_22BE43230();
  sub_22C171FA8(v1, v14);
  type metadata accessor for DateTimeContext(0);
  v34 = sub_22C18F35C();
  v35 = sub_22C18F17C(v34, 0, 1, v1);
  v36 = type metadata accessor for Request(v35);
  sub_22BE3AE2C();
  sub_22BE19DC4(v37, v38, v39, v40);
  sub_22BE1A140();
  sub_22BE19DC4(v41, v42, v43, v26);
  v44 = &v10[v36[8]];
  *v44 = 0;
  v44[1] = 0;
  v44[2] = 0;
  sub_22BE1A140();
  sub_22BE19DC4(v45, v46, v47, v30);
  v48 = &v10[v36[10]];
  *v48 = 0;
  *(v48 + 1) = 0;
  sub_22BE1A140();
  sub_22BE19DC4(v49, v50, v51, v1);
  v10[v36[5]] = v52;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE37808(*v44, v44[1], v44[2]);
  *v44 = 0;
  v44[1] = 0;
  v44[2] = 0;
  sub_22BE2343C();

  *v48 = 0;
  *(v48 + 1) = 0;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void static RequestContent.== infix(_:_:)()
{
  sub_22BE19460();
  v29 = v5;
  v6 = sub_22BE39FFC();
  v7 = type metadata accessor for RequestContent.SystemPromptResolution(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v28 = v9;
  v10 = sub_22BE183BC();
  v11 = type metadata accessor for RequestContent.SpeechContent(v10);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE18DFC();
  type metadata accessor for RequestContent.TextContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE38390();
  type metadata accessor for RequestContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v15);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v16);
  sub_22BE26800();
  v17 = sub_22BE5CE4C(&qword_27D912F20, &qword_22C2B7F58);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B72C();
  v20 = *(v19 + 56);
  sub_22BE1A964(v4, v0);
  sub_22BE1A964(v29, v0 + v20);
  sub_22BE29264();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE19368();
      v25 = sub_22BE37490();
      sub_22BE1A964(v25, v26);
      if (sub_22C0E9D64() != 1)
      {
        sub_22BE355E4();
        goto LABEL_21;
      }

      sub_22C18DFA8();
      sub_22C171FA8(v0 + v20, v1);
      v27 = *v3 == *v1 && v3[1] == v1[1];
      if (v27 || (sub_22C274014()) && (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22C18EB20();
        sub_22C171FFC();
        sub_22BE36680();
        sub_22C171FFC();
        goto LABEL_17;
      }

      sub_22C18EB20();
      sub_22C171FFC();
      sub_22BE36680();
      sub_22C171FFC();
      sub_22BE23B78();
      sub_22C171FFC();
      break;
    case 2u:
      sub_22BE19368();
      v21 = sub_22BE260B8();
      sub_22BE1A964(v21, v22);
      if (sub_22C0E9D64() == 2)
      {
        sub_22BE1BB68();
        sub_22C171FA8(v0 + v20, v2);
        sub_22BE2590C();
        static RequestContent.SpeechContent.== infix(_:_:)();
        sub_22C171FFC();
        goto LABEL_8;
      }

      sub_22BE41104();
      goto LABEL_21;
    case 3u:
      sub_22BE19368();
      v23 = sub_22BE41FB4();
      sub_22BE1A964(v23, v24);
      if (sub_22C0E9D64() == 3)
      {
        sub_22C18DFC0();
        sub_22C171FA8(v0 + v20, v28);
        sub_22BE3CEF4();
        static RequestContent.SystemPromptResolution.== infix(_:_:)();
        sub_22C171FFC();
LABEL_8:
        sub_22C171FFC();
        sub_22BE23B78();
        sub_22C171FFC();
      }

      else
      {
        sub_22C18E000();
LABEL_21:
        sub_22C171FFC();
LABEL_22:
        sub_22C18DC5C(v0, &qword_27D912F20);
      }

      break;
    default:
      if (sub_22C0E9D64())
      {
        goto LABEL_22;
      }

LABEL_17:
      sub_22BE23B78();
      sub_22C171FFC();
      break;
  }

  sub_22BE1AABC();
}

uint64_t sub_22C13A254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6269726373657270 && a2 == 0xEE006E616C506465;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000022C2DBE30 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x800000022C2DA870 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x800000022C2D5D40 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x800000022C2DA950 == a2;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656D697465746164 && a2 == 0xEF747865746E6F43)
              {

                return 7;
              }

              else
              {
                v13 = sub_22C274014();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C13A4F4(char a1)
{
  result = 0x746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6F4D797465666173;
      break;
    case 2:
      result = 0x6269726373657270;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x656D697465746164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13A60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13A254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13A634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C13A4EC();
  *a1 = result;
  return result;
}

uint64_t sub_22C13A65C(uint64_t a1)
{
  v2 = sub_22C174ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13A698(uint64_t a1)
{
  v2 = sub_22C174ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Request.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D912F28, &qword_22C2B7F60);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE23094();
  v3 = sub_22C174ABC();
  sub_22BE25524(&type metadata for Request.CodingKeys, v4, v3);
  type metadata accessor for RequestContent(0);
  sub_22BE35880();
  sub_22BE20458(v5);
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for Request(0);
    sub_22C18E864();
    sub_22C18E17C();
    sub_22C273F64();
    v6 = sub_22C18F8E0(2);
    type metadata accessor for RequestPrescribedPlan(v6);
    sub_22C18ECE8();
    sub_22BE20458(v7);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    sub_22C18F8E0(3);
    sub_22C26E1D4();
    sub_22BE18B28();
    sub_22BE20458(v8);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v16 = sub_22C18F320(*(v1 + 32));
    v17 = v10;
    v18 = *(v9 + 16);
    sub_22BE3820C(v16, v10, v18);
    sub_22BE48A04();
    sub_22C18E17C();
    sub_22C273F34();
    sub_22BE37808(v16, v17, v18);
    sub_22C18F8E0(5);
    sub_22C271394();
    sub_22BE3D20C();
    sub_22BE20458(v11);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    sub_22C174B10();
    sub_22C18F35C();

    sub_22C18F30C();
    sub_22C273F34();

    v12 = sub_22C18F8E0(7);
    type metadata accessor for DateTimeContext(v12);
    sub_22BE389E8();
    sub_22BE20458(v13);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273F34();
  }

  v14 = sub_22BE37A10();
  v15(v14);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Request.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  v57 = v5;
  v6 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE44798(v8);
  v9 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE39404(v11);
  v12 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  sub_22BF0AFA0(v14);
  v15 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v17 = sub_22BE183BC();
  type metadata accessor for RequestContent(v17);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v58 = v19;
  sub_22BE5CE4C(&qword_27D912F50, &qword_22C2B7F68);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE1AED0();
  type metadata accessor for Request(v21);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v22);
  sub_22BE188B0();
  v24 = *(v23 + 24);
  v25 = type metadata accessor for RequestPrescribedPlan(0);
  v59 = v24;
  sub_22BE1A140();
  sub_22BE19DC4(v26, v27, v28, v25);
  v29 = v0[7];
  sub_22C26E1D4();
  v61 = v29;
  sub_22BE3AE2C();
  sub_22BE19DC4(v30, v31, v32, v33);
  v34 = (v2 + v0[8]);
  *v34 = 0;
  v34[1] = 0;
  v63 = v34;
  v34[2] = 0;
  v35 = v0[9];
  v36 = sub_22C271394();
  v60 = v35;
  sub_22BE1A140();
  sub_22BE19DC4(v37, v38, v39, v36);
  v40 = (v2 + v0[10]);
  *v40 = 0;
  v40[1] = 0;
  v62 = v40;
  v41 = v0[11];
  v42 = type metadata accessor for DateTimeContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v43, v44, v45, v42);
  sub_22BE203C8();
  sub_22C174ABC();
  sub_22BE489BC();
  sub_22C1901D4(v46, v47, v48);
  if (v1)
  {
    sub_22BE26B64(v4);
    sub_22C18DC5C(v2 + v59, &qword_27D911F58);
    sub_22C18DC5C(v2 + v61, &qword_27D9082F0);
    sub_22BE37808(*v63, v63[1], v63[2]);
    sub_22C18DC5C(v2 + v60, &qword_27D9120B0);

    sub_22C18DC5C(v2 + v41, &qword_27D911F50);
  }

  else
  {
    sub_22BE35880();
    sub_22BE20458(v49);
    sub_22C18F94C();
    sub_22C18E9B8();
    sub_22C273EB4();
    sub_22BE250EC();
    sub_22C171FA8(v58, v2);
    *(v2 + v0[5]) = sub_22C273E74() & 1;
    sub_22C18ECE8();
    sub_22BE20458(v50);
    sub_22C18F94C();
    sub_22C273E44();
    sub_22BE2343C();
    LOBYTE(v64) = 3;
    sub_22BE18B28();
    sub_22BE20458(v51);
    sub_22C18F94C();
    sub_22C18E9B8();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22C173BC4();
    sub_22C18E9B8();
    sub_22C273E44();
    sub_22BE37808(*v63, v63[1], v63[2]);
    *v63 = v64;
    v63[2] = v65;
    LOBYTE(v64) = 5;
    sub_22BE3D20C();
    sub_22BE20458(v52);
    sub_22C18F94C();
    sub_22C18E9B8();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22C174B64();
    sub_22C18E9B8();
    sub_22C273E44();

    *v62 = v64;
    sub_22BE389E8();
    sub_22BE20458(v53);
    sub_22C18F94C();
    sub_22BE236D4();
    sub_22BE3788C();
    sub_22C273E44();
    v54 = sub_22BE18944();
    v55(v54);
    sub_22BE2343C();
    v56 = sub_22BE385E4();
    sub_22BE1A964(v56, v57);
    sub_22BE26B64(v4);
    sub_22BE26A6C();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t static RequestContent.TextContent.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RequestContent.TextContent(0);
  sub_22BE3E750(v4);

  return _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
}

void static RequestContent.SpeechContent.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v7 = sub_22C26EBC4();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE38390();
  v11 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v13);
  sub_22BE32374();
  sub_22BE5CE4C(&qword_27D912F78, &qword_22C2B7F70);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v15);
  sub_22BE1C17C();
  v16 = *v3 == *v2 && v3[1] == v2[1];
  if (!v16 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = v1;
  v38 = v0;
  v39 = type metadata accessor for RequestContent.SpeechContent(0);
  v17 = *(v4 + 48);
  sub_22C18EB68();
  sub_22BE22814();
  sub_22C18EB68();
  sub_22BE22814();
  sub_22BE181B0(v5);
  if (v16)
  {
    sub_22BE181B0(v5 + v17);
    if (v16)
    {
      sub_22C18DC5C(v5, &qword_27D9120C8);
      v18 = v9;
LABEL_17:
      sub_22C18FFA8(*(v39 + 24));
      if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_27;
      }

      v26 = *(v4 + 48);
      sub_22BE22814();
      sub_22BE22814();
      sub_22BE181B0(v37);
      if (v16)
      {
        sub_22BE181B0(v37 + v26);
        if (v16)
        {
          sub_22C18DC5C(v37, &qword_27D9120C8);
          goto LABEL_27;
        }
      }

      else
      {
        sub_22BE22814();
        sub_22BE181B0(v37 + v26);
        if (!v27)
        {
          sub_22C18EB74();
          v30 = sub_22BE3BD64();
          v31(v30);
          sub_22C18E088();
          sub_22BE20458(v32);
          sub_22BE1B328();
          sub_22C272FD4();
          v33 = *(v18 + 8);
          v34 = sub_22BE3C5E4();
          v33(v34);
          v35 = sub_22BE431C0();
          v33(v35);
          sub_22C18DC5C(v37, &qword_27D9120C8);
          goto LABEL_27;
        }

        v28 = sub_22BE431C0();
        v29(v28);
      }

      v22 = v37;
      goto LABEL_15;
    }

LABEL_14:
    v22 = v5;
LABEL_15:
    sub_22C18DC5C(v22, &qword_27D912F78);
    goto LABEL_27;
  }

  sub_22BE22814();
  sub_22BE181B0(v5 + v17);
  if (v19)
  {
    v20 = sub_22BE3408C();
    v21(v20, v7);
    goto LABEL_14;
  }

  (*(v9 + 32))(v38, v5 + v17, v7);
  sub_22C18E088();
  sub_22BE20458(v23);
  sub_22BE3E79C();
  v36 = sub_22C272FD4();
  v24 = *(v9 + 8);
  v24(v38, v7);
  v25 = v6;
  v18 = v9;
  v24(v25, v7);
  sub_22C18DC5C(v5, &qword_27D9120C8);
  if (v36)
  {
    goto LABEL_17;
  }

LABEL_27:
  sub_22BE1AABC();
}

void static RequestContent.SystemPromptResolution.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  sub_22C26E1D4();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v4 = sub_22BE1AEE4();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  v8 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v11 = *(v10 + 56);
  sub_22BE324FC();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE181B0(v0);
  if (v12)
  {
    sub_22BE181B0(v0 + v11);
    if (v12)
    {
      sub_22C18DC5C(v0, &qword_27D9082F0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22C18DC5C(v0, &qword_27D90A8E8);
LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v0 + v11);
  if (v12)
  {
    v13 = sub_22BE36680();
    v14(v13);
    goto LABEL_9;
  }

  sub_22C18EB74();
  v15 = sub_22BE3BD64();
  v16(v15);
  sub_22BE18B28();
  sub_22BE20458(v17);
  sub_22BE25C08();
  v18 = sub_22C272FD4();
  v19 = *(v2 + 8);
  v20 = sub_22BE3C5E4();
  v19(v20);
  v21 = sub_22BE36680();
  v19(v21);
  sub_22C18DC5C(v0, &qword_27D9082F0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v22 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  sub_22C18F344(v22[5]);
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22C18F344(v22[6]);
  static RequestContent.SystemPromptResolution.UserAction.== infix(_:_:)();
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22C18F344(v22[7]);
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22C18F344(v22[8]);
  static RequestContent.SystemPromptResolution.ResolutionInput.== infix(_:_:)();
LABEL_16:
  sub_22BE1C1DC(v24);
  sub_22BE1AABC();
}

uint64_t sub_22C13B944(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1886352499 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000022C2DA920 == a2)
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

uint64_t sub_22C13BAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13B944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13BAD0(uint64_t a1)
{
  v2 = sub_22BE39F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BB0C(uint64_t a1)
{
  v2 = sub_22BE39F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BB48(uint64_t a1)
{
  v2 = sub_22C174BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BB84(uint64_t a1)
{
  v2 = sub_22C174BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BBC0(uint64_t a1)
{
  v2 = sub_22C174C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BBFC(uint64_t a1)
{
  v2 = sub_22C174C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BC38(uint64_t a1)
{
  v2 = sub_22C174C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BC74(uint64_t a1)
{
  v2 = sub_22C174C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13BCB0(uint64_t a1)
{
  v2 = sub_22BE39F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13BCEC(uint64_t a1)
{
  v2 = sub_22BE39F98();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  sub_22C18F874();
  sub_22BE5CE4C(&qword_27D912FE0, &qword_22C2B7FA0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE34034(v31, v89);
  sub_22BE5CE4C(&qword_27D912FE8, &qword_22C2B7FA8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE2BA30(v33, v90);
  sub_22BE5CE4C(&qword_27D912FF0, &qword_22C2B7FB0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE2C638(v35, v91);
  v96 = sub_22BE5CE4C(&qword_27D912FF8, &qword_22C2B7FB8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE33FF0(v37, v92);
  sub_22BE5CE4C(&qword_27D913000, &qword_22C2B7FC0);
  sub_22BE179D8();
  v95 = v38;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1B01C();
  v97 = type metadata accessor for RequestContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v40);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v41);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v42);
  sub_22BE18094();
  MEMORY[0x28223BE20](v43);
  sub_22BE23858();
  MEMORY[0x28223BE20](v44);
  sub_22BE32374();
  v98 = v24;
  sub_22C18E560(v24);
  sub_22BE39F14();
  sub_22BE232E4();
  sub_22C274214();
  if (!v99)
  {
    v93 = v27;
    v94 = v26;
    sub_22BEC0924();
    sub_22C273ED4();
    sub_22BE7C5C4();
    sub_22C18F638();
    if (!v45)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v52 == v53)
      {
        __break(1u);
        return;
      }

      v54 = *(v51 + v50);
      sub_22BE3A464(v46, v47, v48, v49, v50);
      sub_22BE7C5C0();
      v56 = v55;
      v58 = v57;
      swift_unknownObjectRelease();
      if (v56 == v58 >> 1)
      {
        v59 = v28;
        switch(v54)
        {
          case 1:
            sub_22BE38948();
            sub_22BE39F98();
            sub_22C18E6FC();
            sub_22C273DE4();
            type metadata accessor for RequestContent.TextContent(0);
            sub_22BE3F4B0();
            sub_22BE20458(v69);
            v25 = v29;
            sub_22C18F904();
            sub_22C18E924();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            sub_22BE363F8();
            v83 = sub_22BE2565C();
            v84(v83);
            v85 = sub_22C18E53C();
            v86(v85);
            sub_22C18F970();
            swift_storeEnumTagMultiPayload();
            v82 = v98;
            v59 = v28;
            break;
          case 2:
            sub_22C18F59C();
            sub_22C174C0C();
            sub_22C18F928();
            sub_22C18E6FC();
            sub_22C273DE4();
            type metadata accessor for RequestContent.SpeechContent(0);
            sub_22BE3CAF4();
            sub_22BE20458(v67);
            v25 = v94;
            sub_22C18F904();
            sub_22BE489D4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v70 = sub_22BE1B73C();
            v71(v70);
            v72 = sub_22C18E53C();
            v73(v72);
            sub_22C18F970();
            goto LABEL_14;
          case 3:
            sub_22BEE9478();
            sub_22C174BB8();
            sub_22C18E6FC();
            sub_22C273DE4();
            type metadata accessor for RequestContent.SystemPromptResolution(0);
            sub_22BE34158();
            sub_22BE20458(v68);
            sub_22C18F904();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v74 = sub_22BE1B73C();
            v75(v74);
            v76 = sub_22C18E53C();
            v77(v76);
            sub_22C18F970();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            v82 = v98;
            break;
          default:
            sub_22C174C60();
            sub_22C18E6FC();
            sub_22C273DE4();
            sub_22C174D08();
            sub_22BE261D0();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v78 = sub_22BE1A194();
            v79(v78, v96);
            v80 = sub_22C18F5D4();
            v81(v80, v95);
            v25 = v93;
            sub_22C18F970();
            swift_storeEnumTagMultiPayload();
            v82 = v98;
            break;
        }

        sub_22C171FA8(v25, v59);
        v87 = sub_22BE196A8();
        sub_22C171FA8(v87, v88);
        sub_22BE26B64(v82);
        goto LABEL_10;
      }
    }

    v60 = sub_22C273B34();
    sub_22BE196B4(v60, MEMORY[0x277D841A0]);
    v62 = v61;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v62 = v97;
    sub_22BEC0924();
    sub_22C273DF4();
    sub_22BE1A918();
    sub_22BE18994();
    v63 = sub_22BE38608();
    v64(v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = sub_22C18E53C();
    v66(v65);
  }

  sub_22BE26B64(v98);
LABEL_10:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C13C5AC(uint64_t a1)
{
  v2 = sub_22C174D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13C5E8(uint64_t a1)
{
  v2 = sub_22C174D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13C6F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
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

uint64_t sub_22C13C7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13C6F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13C7E8(uint64_t a1)
{
  v2 = sub_22BE3A3F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13C824(uint64_t a1)
{
  v2 = sub_22BE3A3F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.TextContent.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  v16 = v4;
  v17 = sub_22C26E684();
  sub_22BE179D8();
  v15 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22BE188B0();
  v18 = sub_22BE5CE4C(&qword_27D913040, &qword_22C2B7FD8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE1AED0();
  v9 = type metadata accessor for RequestContent.TextContent(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE1955C();
  sub_22C18E560(v0);
  sub_22BE3A3F8();
  sub_22BE489BC();
  sub_22C18FF90();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE285D4();
    *v1 = sub_22C273E64();
    v1[1] = v11;
    sub_22BE33FE4();
    sub_22BE18F44();
    sub_22BE20458(v12);
    sub_22C18E9A0();
    sub_22BE285D4();
    sub_22C273EB4();
    v13 = sub_22C18F1E4();
    v14(v13, v18);
    (*(v15 + 32))(v1 + *(v9 + 20), v3, v17);
    sub_22BE1A964(v1, v16);
    sub_22BE26B64(v0);
    sub_22BE355E4();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C13CB78()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t RequestContent.SpeechContent.speechPackage.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for RequestContent.SpeechContent(v0);
  return sub_22BE18504();
}

uint64_t sub_22C13CC1C()
{
  v3 = sub_22BE3E7BC();
  v5 = *(v4(v3) + 24);
  v0(0);
  sub_22BE18000();
  v8 = *(v7 + 16);

  return v8(v2, v1 + v5, v6);
}

uint64_t sub_22C13CCBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150686365657073 && a2 == 0xED00006567616B63;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x800000022C2DA900 == a2)
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

unint64_t sub_22C13CE28(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x6150686365657073;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13CCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13CEEC(uint64_t a1)
{
  v2 = sub_22C174DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13CF28(uint64_t a1)
{
  v2 = sub_22C174DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SpeechContent.encode(to:)()
{
  sub_22BE19130();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913048, &qword_22C2B7FE0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C174DB0();
  sub_22BE25524(&type metadata for RequestContent.SpeechContent.CodingKeys, v3, v2);
  sub_22C18E9AC();
  sub_22BE36628();
  sub_22C273F54();
  if (!v0)
  {
    type metadata accessor for RequestContent.SpeechContent(0);
    sub_22BE323A4();
    sub_22C26EBC4();
    sub_22C18E088();
    sub_22BE20458(v4);
    sub_22BE3EAFC();
    sub_22C273F34();
    sub_22BE200EC();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v5);
    sub_22BE196CC();
    sub_22C273FA4();
    sub_22BE3EAFC();
    sub_22C273F34();
  }

  v6 = sub_22BE47E18();
  v7(v6);
  sub_22BE467E4();
  sub_22BE18478();
}

void RequestContent.SpeechContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22BE19130();
  v25 = v24;
  sub_22C18FEC4(v26);
  v48 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v47 = v28;
  v29 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v30 = sub_22BE19448(v29);
  MEMORY[0x28223BE20](v30);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v31);
  sub_22BE25A90();
  sub_22BE5CE4C(&qword_27D913060, &qword_22C2B7FE8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1B01C();
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v33);
  sub_22BE1955C();
  sub_22C18F32C();
  sub_22C26EBC4();
  sub_22BE3AE2C();
  sub_22BE19DC4(v34, v35, v36, v37);
  sub_22BE41E84(v25);
  sub_22C174DB0();
  sub_22BE232E4();
  sub_22C274214();
  if (v22)
  {
    sub_22BE26B64(v25);
    sub_22C18DC5C(v23 + v21, &qword_27D9120C8);
  }

  else
  {
    sub_22C18EA24();
    *v23 = sub_22C273E64();
    v23[1] = v38;
    sub_22BE33FE4();
    sub_22C18E088();
    sub_22BE20458(v39);
    sub_22C18EA30();
    sub_22C273E44();
    sub_22C18FCC8();
    sub_22BE2343C();
    sub_22BE200EC();
    sub_22BE18F44();
    sub_22BE20458(v40);
    sub_22C18F614();
    sub_22C273EB4();
    sub_22C18FFB4();
    v42(v23 + v41, v47, v48);
    sub_22C18E900();
    sub_22C18EA30();
    sub_22C273E44();
    v43 = sub_22C18F1C4();
    v44(v43);
    sub_22BE424BC();
    v45 = sub_22BE19EBC();
    sub_22BE1A964(v45, v46);
    sub_22BE26B64(v25);
    sub_22BE41104();
    sub_22C171FFC();
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C13D698(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = sub_22BE2021C();
  v8(v7);
  v9 = sub_22BE341A4();
  a3(v9);
  sub_22BE1834C();
  v11 = *(v10 + 40);

  return v11(v3 + v5, v4);
}

uint64_t RequestContent.SystemPromptResolution.systemResponseEventId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for RequestContent.SystemPromptResolution(v0);
  return sub_22BE18504();
}

uint64_t sub_22C13D778()
{
  v0 = sub_22BE3E7BC();
  v2 = v1(v0);
  v3 = sub_22C18FCA4(*(v2 + 24));
  return sub_22BE1A964(v3, v4);
}

uint64_t sub_22C13D7E4()
{
  v2 = sub_22BE2021C();
  v4 = v3(v2);
  return sub_22C172628(v1, v0 + *(v4 + 24));
}

uint64_t RequestContent.SystemPromptResolution.userAction.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for RequestContent.SystemPromptResolution(v0);
  return sub_22BE18504();
}

uint64_t RequestContent.SystemPromptResolution.statementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for RequestContent.SystemPromptResolution(v0);
  return sub_22BE18504();
}

uint64_t RequestContent.SystemPromptResolution.input.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for RequestContent.SystemPromptResolution(v0);
  sub_22BE1C200();
  v2 = sub_22BE25438(v1);
  return sub_22BE1A964(v2, v3);
}

uint64_t RequestContent.SystemPromptResolution.input.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for RequestContent.SystemPromptResolution(v0);
  sub_22C18E354();
  v1 = sub_22C18F880();
  return sub_22C172628(v1, v2);
}

uint64_t RequestContent.SystemPromptResolution.input.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for RequestContent.SystemPromptResolution(v0);
  return sub_22BE18504();
}

void RequestContent.SystemPromptResolution.ResolutionInput.description.getter()
{
  sub_22BE3C358();
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE197B8();
  type metadata accessor for RequestContent.TextContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE1955C();
  sub_22BE1C200();
  v5 = sub_22BE1B73C();
  sub_22BE1A964(v5, v6);
  sub_22BE18240();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1BB68();
      sub_22C171FA8(v1, v0);
      MEMORY[0x2318AB8D0](0x28686365657073, 0xE700000000000000);
      sub_22C273C24();
      v10 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v10);
      sub_22BE41104();
      goto LABEL_4;
    case 2u:
    case 3u:
      break;
    default:
      sub_22C18DFA8();
      v7 = sub_22BE1B5E0();
      sub_22C171FA8(v7, v8);
      MEMORY[0x2318AB8D0](0x2874786574, 0xE500000000000000);
      sub_22C273C24();
      v9 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v9);
      sub_22BE355E4();
LABEL_4:
      sub_22C171FFC();
      break;
  }

  sub_22BE36680();
  sub_22BE267B8();
}

void static RequestContent.SystemPromptResolution.ResolutionInput.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for RequestContent.SpeechContent(0);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17CBC();
  type metadata accessor for RequestContent.TextContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE2379C();
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v12);
  sub_22BE181E4();
  v13 = sub_22BE5CE4C(&qword_27D913070, &qword_22C2B7FF0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  v16 = *(v15 + 56);
  sub_22BE1A964(v7, v0);
  sub_22BE1A964(v5, v0 + v16);
  sub_22BE1A6BC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1C200();
      v19 = sub_22BE37490();
      sub_22BE1A964(v19, v20);
      if (sub_22C1901A4() != 1)
      {
        sub_22BE41104();
        goto LABEL_11;
      }

      sub_22BE1BB68();
      sub_22C171FA8(v0 + v16, v2);
      sub_22BE25C08();
      static RequestContent.SpeechContent.== infix(_:_:)();
      sub_22C171FFC();
      sub_22BE38970();
      sub_22C171FFC();
      sub_22C18E070();
      sub_22C171FFC();
      goto LABEL_21;
    case 2u:
      if (sub_22C1901A4() != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    case 3u:
      if (sub_22C1901A4() == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    default:
      sub_22BE1C200();
      v17 = sub_22BE3CC34();
      sub_22BE1A964(v17, v18);
      if (sub_22C1901A4())
      {
        sub_22BE355E4();
LABEL_11:
        sub_22C171FFC();
LABEL_12:
        sub_22C18DC5C(v0, &qword_27D913070);
      }

      else
      {
        sub_22C18DFA8();
        sub_22C171FA8(v0 + v16, v1);
        v21 = *v3 == *v1 && v3[1] == v1[1];
        if (v21 || (sub_22C274014()) && (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          sub_22C18EB38();
          sub_22C171FFC();
          sub_22BE232C8();
          sub_22C171FFC();
LABEL_20:
          sub_22C18E070();
          sub_22C171FFC();
        }

        else
        {
          sub_22C18EB38();
          sub_22C171FFC();
          sub_22BE232C8();
          sub_22C171FFC();
          sub_22C18E070();
          sub_22C171FFC();
        }
      }

LABEL_21:
      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}

uint64_t sub_22C13DE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863756F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473654764616568 && a2 == 0xEB00000000657275;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686365657073 && a2 == 0xE600000000000000)
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

uint64_t sub_22C13DFE0(char a1)
{
  result = 0x6863756F74;
  switch(a1)
  {
    case 1:
      result = 0x7473654764616568;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 0x686365657073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13E064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13DE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13E08C(uint64_t a1)
{
  v2 = sub_22C174E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E0C8(uint64_t a1)
{
  v2 = sub_22C174E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E104(uint64_t a1)
{
  v2 = sub_22C174F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E140(uint64_t a1)
{
  v2 = sub_22C174F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E17C(uint64_t a1)
{
  v2 = sub_22C174E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E1B8(uint64_t a1)
{
  v2 = sub_22C174E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E1F4(uint64_t a1)
{
  v2 = sub_22C174EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E230(uint64_t a1)
{
  v2 = sub_22C174EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13E26C(uint64_t a1)
{
  v2 = sub_22C174F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13E2A8(uint64_t a1)
{
  v2 = sub_22C174F54();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.ResolutionInput.encode(to:)()
{
  sub_22BE19130();
  v34 = v0;
  v3 = v2;
  sub_22BE5CE4C(&qword_27D913078, &qword_22C2B7FF8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE181D0(v5, v30);
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3FF7C(v7);
  sub_22BE5CE4C(&qword_27D913080, &qword_22C2B8000);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE33FF0(v9, v31);
  type metadata accessor for RequestContent.TextContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v32 = v11;
  sub_22BE5CE4C(&qword_27D913088, &qword_22C2B8008);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE2C64C();
  sub_22BE5CE4C(&qword_27D913090, &qword_22C2B8010);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A8B4();
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  sub_22BE5CE4C(&qword_27D913098, &qword_22C2B8018);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  sub_22C18E560(v3);
  sub_22C174E04();
  sub_22BE3CCD4();
  sub_22C18FF90();
  sub_22C274234();
  sub_22BE1C200();
  sub_22BE1A964(v34, v1);
  sub_22BE1AB74();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C171FA8(v1, v33);
      sub_22BEE9478();
      sub_22C174E58();
      sub_22BE42748();
      sub_22C273EE4();
      sub_22BE3CAF4();
      sub_22BE20458(v25);
      v26 = sub_22BE35E54();
      sub_22C18FB28(v26, v27);
      v28 = sub_22BE38A68();
      v29(v28);
      sub_22BE41104();
      sub_22C171FFC();
      v19 = sub_22BE2B7E8();
      goto LABEL_7;
    case 2u:
      sub_22C174F54();
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE363F8();
      v21 = sub_22BE196A8();
      goto LABEL_5;
    case 3u:
      sub_22BE38948();
      sub_22C174F00();
      sub_22BE3788C();
      sub_22C273EE4();
      v21 = sub_22C11FDE0();
LABEL_5:
      v22(v21);
      sub_22BE1B940();
      v23 = sub_22BE3C968();
      v24(v23);
      break;
    default:
      sub_22C171FA8(v1, v32);
      sub_22C18F59C();
      sub_22C174EAC();
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BE3F4B0();
      sub_22BE20458(v16);
      sub_22BE35E54();
      sub_22C273FA4();
      v17 = sub_22BE35B0C();
      v18(v17);
      sub_22BE355E4();
      sub_22C171FFC();
      v19 = sub_22C18E474();
LABEL_7:
      v20(v19);
      break;
  }

  sub_22BE22978();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.ResolutionInput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v28;
  a23 = v29;
  sub_22C18F874();
  v105 = v30;
  v107 = sub_22BE5CE4C(&qword_27D9130C8, &qword_22C2B8020);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE181D0(v32, v100);
  sub_22BE5CE4C(&qword_27D9130D0, &qword_22C2B8028);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE34034(v34, v101);
  v106 = sub_22BE5CE4C(&qword_27D9130D8, &qword_22C2B8030);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE2BA30(v36, v102);
  sub_22BE5CE4C(&qword_27D9130E0, &qword_22C2B8038);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE2C638(v38, v103);
  v39 = sub_22BE5CE4C(&qword_27D9130E8, &qword_22C2B8040);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BE24FD8();
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v41);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v42);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v43);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v44);
  sub_22BE1C17C();
  v108 = v24;
  v45 = sub_22BE1A8C4();
  sub_22BE26950(v45, v46);
  sub_22C174E04();
  sub_22BE3CCD4();
  sub_22C274214();
  if (!v109)
  {
    v110 = v23;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v48 != v47 >> 1)
    {
      sub_22BE32C78();
      if (v55 == v56)
      {
        __break(1u);
        return;
      }

      v104 = *(v54 + v53);
      sub_22C18F7D4(v49, v50, v51, v52, v53);
      sub_22BE7C5C0();
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      if (v58 == v60 >> 1)
      {
        switch(v104)
        {
          case 1:
            sub_22BE38948();
            sub_22C174F00();
            sub_22BE38FAC();
            sub_22C19018C(v82, v83, v84, v85);
            swift_unknownObjectRelease();
            v88 = sub_22BE1B5F8();
            v89(v88, v106);
            v90 = sub_22C18E3C8();
            v91(v90);
            v69 = v27;
            sub_22BE3E8FC();
            goto LABEL_14;
          case 2:
            sub_22C18F59C();
            sub_22C174EAC();
            sub_22BE38FAC();
            sub_22C19018C(v78, v79, v80, v81);
            type metadata accessor for RequestContent.TextContent(0);
            sub_22BE3F4B0();
            sub_22BE20458(v86);
            sub_22C18E69C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v92 = sub_22BE38A68();
            v93(v92);
            v94 = sub_22C18F91C();
            v95(v94);
            goto LABEL_15;
          case 3:
            sub_22BEE9478();
            sub_22C174E58();
            sub_22C19018C(&type metadata for RequestContent.SystemPromptResolution.ResolutionInput.SpeechCodingKeys, &a13, v39, &type metadata for RequestContent.SystemPromptResolution.ResolutionInput.SpeechCodingKeys);
            type metadata accessor for RequestContent.SpeechContent(0);
            sub_22BE3CAF4();
            sub_22BE20458(v87);
            v26 = v25;
            sub_22BE489D4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v96 = sub_22BE2399C();
            v97(v96, v107);
            v98 = sub_22C18F91C();
            v99(v98);
LABEL_15:
            swift_storeEnumTagMultiPayload();
            sub_22C18E36C();
            v69 = v27;
            sub_22C171FA8(v26, v27);
            break;
          default:
            sub_22C174F54();
            sub_22BE38FAC();
            sub_22C19018C(v61, v62, v63, v64);
            swift_unknownObjectRelease();
            v65 = sub_22BE1B5F8();
            v66(v65);
            v67 = sub_22C18E3C8();
            v68(v67);
            v69 = v27;
            sub_22BE3E8FC();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            break;
        }

        sub_22C18E36C();
        sub_22C171FA8(v69, v105);
        sub_22BE26B64(v108);
        goto LABEL_10;
      }
    }

    v70 = sub_22C273B34();
    sub_22BE196B4(v70, MEMORY[0x277D841A0]);
    v72 = v71;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v72 = v110;
    sub_22C273DF4();
    sub_22C18FE8C();
    sub_22BE1B198(v73);
    sub_22BE18994();
    v74 = sub_22BE38608();
    v75(v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    v76 = sub_22BE3408C();
    v77(v76, v39);
  }

  sub_22BE26B64(v108);
LABEL_10:
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t RequestContent.SystemPromptResolution.UserAction.description.getter()
{
  sub_22C272874();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v1);
  sub_22BE38390();
  type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE18DFC();
  sub_22BE23DA0();
  v3 = sub_22BE336E8();
  sub_22BE1A964(v3, v4);
  sub_22BE1B328();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE27C14();
      v7 = sub_22BE324FC();
      v8(v7);
      sub_22C18E4D0();
      sub_22C273AA4();
      sub_22C18F8D4();
      sub_22C18F694();
      MEMORY[0x2318AB8D0](v9 | 7, v10 | 0x8000000000000000);
      sub_22C273C24();
      v11 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v11);
      v12 = sub_22BE1B5EC();
      v13(v12);
      return sub_22BE1A8C4();
    case 3u:
      sub_22C18E4D0();
      sub_22C273AA4();

      sub_22BE25A74();
      sub_22C18F694();
      v5 = sub_22C273FD4();
      goto LABEL_11;
    case 4u:
      v16 = *v0;
      sub_22C18E4D0();
      sub_22C273AA4();
      sub_22C18F8D4();
      MEMORY[0x2318AB8D0](0xD000000000000015, 0x800000022C2DBBC0);
      sub_22C11FF78(v16);
      goto LABEL_13;
    case 5u:
      return sub_22BE1A8C4();
    default:
      v14 = *v0;
      sub_22C18E4D0();
      sub_22C273AA4();

      sub_22BE25A74();
      sub_22C18F694();
      if (v14)
      {
        v5 = 1702195828;
      }

      else
      {
        v5 = 0x65736C6166;
      }

      if (v14)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      v6 = v15;
LABEL_11:
      MEMORY[0x2318AB8D0](v5, v6);

LABEL_13:
      v17 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v17);
      return sub_22BE1A8C4();
  }
}

void static RequestContent.SystemPromptResolution.UserAction.== infix(_:_:)()
{
  sub_22BE19460();
  v33 = v2;
  sub_22BE33690();
  sub_22C272874();
  sub_22BE179D8();
  v32 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v5 = sub_22BE183BC();
  type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v8);
  sub_22BE18094();
  MEMORY[0x28223BE20](v9);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE5CE4C(&qword_27D9130F0, &qword_22C2B8048);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B72C();
  v14 = *(v13 + 56);
  sub_22BE1A964(v1, v0);
  sub_22BE1A964(v33, v0 + v14);
  sub_22BE33FD8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE23DA0();
      v23 = sub_22BE37490();
      sub_22BE1A964(v23, v24);
      if (sub_22BE34140() == 1)
      {
        sub_22BE47DF4();
        v25 = sub_22C18FE14();
        v26(v25);
        sub_22BE1AB1C();
        sub_22C272844();
        v27 = *(v32 + 8);
        v28 = sub_22BE1B328();
        v27(v28);
        v29 = sub_22BE25C08();
        v27(v29);
        goto LABEL_13;
      }

      v30 = sub_22BE39058();
      v31(v30);
      goto LABEL_15;
    case 2u:
      sub_22BE23DA0();
      v19 = sub_22BE41FB4();
      sub_22BE1A964(v19, v20);
      if (sub_22BE34140() == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3u:
      sub_22BE23DA0();
      v21 = sub_22BE29264();
      sub_22BE1A964(v21, v22);
      if (sub_22BE34140() == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 4u:
      sub_22BE23DA0();
      v17 = sub_22BE1A6BC();
      sub_22BE1A964(v17, v18);
      if (sub_22BE34140() == 4)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 5u:
      if (sub_22BE34140() == 5)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    default:
      sub_22BE23DA0();
      v15 = sub_22BE19454();
      sub_22BE1A964(v15, v16);
      if (sub_22BE34140())
      {
LABEL_15:
        sub_22C18DC5C(v0, &qword_27D9130F0);
      }

      else
      {
LABEL_13:
        sub_22BE48E4C();
        sub_22C171FFC();
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}

uint64_t sub_22C13F640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6F69746361 && a2 == 0xEF64656D7269666ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000022C2D96D0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000022C2D96F0 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x800000022C2D9710 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000022C2D9730 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL)
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

unint64_t sub_22C13F848(char a1)
{
  result = 0x6F436E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x61436E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C13F934(uint64_t a1)
{
  v2 = sub_22C174FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13F970(uint64_t a1)
{
  v2 = sub_22C174FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13F9AC(uint64_t a1)
{
  v2 = sub_22C175248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13F9E8(uint64_t a1)
{
  v2 = sub_22C175248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C13F640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C13FA54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C13F840();
  *a1 = result;
  return result;
}

uint64_t sub_22C13FA7C(uint64_t a1)
{
  v2 = sub_22C174FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FAB8(uint64_t a1)
{
  v2 = sub_22C174FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FAF4(uint64_t a1)
{
  v2 = sub_22C17514C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FB30(uint64_t a1)
{
  v2 = sub_22C17514C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FB6C(uint64_t a1)
{
  v2 = sub_22C1751A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FBA8(uint64_t a1)
{
  v2 = sub_22C1751A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FBE4(uint64_t a1)
{
  v2 = sub_22C1751F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FC20(uint64_t a1)
{
  v2 = sub_22C1751F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C13FC5C(uint64_t a1)
{
  v2 = sub_22C1750A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13FC98(uint64_t a1)
{
  v2 = sub_22C1750A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.UserAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D9130F8, &qword_22C2B8050);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE29200(v32);
  sub_22BE5CE4C(&qword_27D913100, &qword_22C2B8058);
  sub_22BE179D8();
  v71 = v33;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE2C638(v35, v66);
  sub_22BE5CE4C(&qword_27D913108, &qword_22C2B8060);
  sub_22BE179D8();
  v70 = v36;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22C18E504(v38);
  v69 = sub_22BE5CE4C(&qword_27D913110, &qword_22C2B8068);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  sub_22BF0AFA0(v40);
  sub_22BE5CE4C(&qword_27D913118, &qword_22C2B8070);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  sub_22BE183BC();
  sub_22C272874();
  sub_22BE179D8();
  v67 = v43;
  v68 = v42;
  MEMORY[0x28223BE20](v42);
  sub_22BE28FD8();
  v44 = sub_22BE5CE4C(&qword_27D913120, &qword_22C2B8078);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  v46 = sub_22BE3100C();
  type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v46);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v47);
  sub_22BE19338();
  v72 = sub_22BE5CE4C(&qword_27D913128, &qword_22C2B8080);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE25CD0();
  v49 = sub_22BE18944();
  sub_22BE26950(v49, v50);
  sub_22C174FA8();
  sub_22BEC046C();
  sub_22C274234();
  sub_22BE23DA0();
  sub_22BE1A964(v27, v29);
  sub_22BE1B18C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE47DF4();
      v59(v30, v29, v68);
      sub_22C1751F4();
      v60 = v72;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22BE18720();
      sub_22BE20458(v61);
      sub_22C273FA4();
      sub_22BE363F8();
      v62 = sub_22BE392D4();
      v63(v62);
      (*(v67 + 8))(v30, v68);
      goto LABEL_9;
    case 2u:
      sub_22C1751A0();
      sub_22BE261D0();
      sub_22C273EE4();
      v56 = v69;
      sub_22C18F834();
      sub_22C273F64();
      goto LABEL_6;
    case 3u:
      sub_22C18E900();
      sub_22C17514C();
      sub_22BE261D0();
      sub_22C273EE4();
      v56 = v70;
      sub_22C18F834();
      sub_22C273F94();
      goto LABEL_6;
    case 4u:
      sub_22C1750A4();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22C1750F8();
      v56 = v71;
      sub_22C18F834();
      sub_22C273FA4();
LABEL_6:
      v57 = sub_22BE39058();
      v58(v57, v56);
      v53 = sub_22BE38A68();
      break;
    case 5u:
      sub_22C18F67C();
      sub_22C174FFC();
      v60 = v72;
      sub_22C18E550();
      sub_22C273EE4();
      sub_22C175050();
      sub_22C18FD0C();
      sub_22C273FA4();
      v64 = sub_22BE39058();
      v65(v64, v28);
LABEL_9:
      v53 = sub_22C18E418();
      v55 = v60;
      break;
    default:
      sub_22C175248();
      sub_22C18E6C4();
      sub_22C273EE4();
      sub_22C273F64();
      v51 = sub_22BE194B4();
      v52(v51, v44);
      v53 = sub_22C18E418();
      v55 = v72;
      break;
  }

  v54(v53, v55);
  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.UserAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BE19130();
  a21 = v28;
  a22 = v29;
  sub_22C18F874();
  v159 = v30;
  v153 = sub_22BE5CE4C(&qword_27D913178, &qword_22C2B8088);
  sub_22BE179D8();
  v160 = v31;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE2C638(v33, v142);
  v152 = sub_22BE5CE4C(&qword_27D913180, &qword_22C2B8090);
  sub_22BE179D8();
  v158 = v34;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE33FF0(v36, v142);
  v151 = sub_22BE5CE4C(&qword_27D913188, &qword_22C2B8098);
  sub_22BE179D8();
  v157 = v37;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22C18E344(v39);
  v40 = sub_22BE5CE4C(&qword_27D913190, &qword_22C2B80A0);
  sub_22BE18910(v40, &a18);
  v156 = v41;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22C18E504(v43);
  v44 = sub_22BE5CE4C(&qword_27D913198, &qword_22C2B80A8);
  sub_22BE18910(v44, &a20);
  v155 = v45;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE20168(v47, v142);
  v48 = sub_22BE5CE4C(&qword_27D9131A0, &qword_22C2B80B0);
  sub_22BE18910(v48, &a19);
  v154 = v49;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE3C048(v51, v142);
  v163 = sub_22BE5CE4C(&qword_27D9131A8, &qword_22C2B80B8);
  sub_22BE179D8();
  v162 = v52;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE25CD0();
  v161 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v54);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v55);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE23858();
  MEMORY[0x28223BE20](v57);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v58);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v59);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v60);
  v62 = &v142 - v61;
  v164 = v23;
  sub_22BE31088(v23);
  sub_22C174FA8();
  sub_22BEC046C();
  v63 = v165;
  sub_22C274214();
  if (!v63)
  {
    v144 = v24;
    v148 = v27;
    v145 = v26;
    v146 = v22;
    v147 = v62;
    v64 = v163;
    v165 = v25;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v66 != v65 >> 1)
    {
      sub_22BE38A18();
      v143 = 0;
      sub_22BE3E9D8();
      if (v73 == v74)
      {
        __break(1u);
        return;
      }

      v75 = v64;
      v142 = *(v72 + v71);
      sub_22C18F7D4(v67, v68, v69, v70, v71);
      sub_22BE7C5C0();
      v77 = v76;
      v79 = v78;
      swift_unknownObjectRelease();
      v80 = v148;
      if (v77 == v79 >> 1)
      {
        v81 = v143;
        switch(v142)
        {
          case 1:
            sub_22C1751F4();
            sub_22BE1B934();
            sub_22C273DE4();
            if (v81)
            {
              v103 = sub_22BE1A194();
              v108(v103, v75);
              swift_unknownObjectRelease();
              goto LABEL_9;
            }

            sub_22C272874();
            sub_22BE18720();
            sub_22BE20458(v109);
            sub_22BE3C6E0();
            v110 = v150;
            sub_22BE27B84();
            sub_22BE36514();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v130 = sub_22BE3408C();
            v131(v130, v110);
            sub_22BE37778();
            v132(v165, v75);
            swift_storeEnumTagMultiPayload();
            sub_22BE3E31C();
            goto LABEL_19;
          case 2:
            sub_22C1751A0();
            sub_22BE1B934();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22BE37B14();
            v115 = sub_22C273E74();
            swift_unknownObjectRelease();
            sub_22BE363F8();
            v116 = sub_22BE3CEF4();
            v117(v116);
            v118 = sub_22BE3408C();
            v119(v118, v75);
            *v80 = v115 & 1;
            sub_22C18F704();
            goto LABEL_18;
          case 3:
            sub_22C18E900();
            sub_22C17514C();
            sub_22BE1B934();
            sub_22C18F6A0(v99, v100, v101, v102);
            sub_22BE36514();
            v120 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v121 = sub_22C18E474();
            v122(v121);
            sub_22BE37778();
            v123 = sub_22BE3CC34();
            v124(v123);
            *v145 = v120;
            sub_22C18F704();
            goto LABEL_18;
          case 4:
            sub_22C1750A4();
            sub_22BE1B934();
            sub_22C18F6A0(v95, v96, v97, v98);
            sub_22C1752F0();
            sub_22BE27168();
            sub_22BE36514();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v111 = sub_22C18E474();
            v112(v111);
            v113 = sub_22BE3CC34();
            v114(v113);
            *v149 = a12;
            sub_22C18F704();
            goto LABEL_18;
          case 5:
            sub_22C18F67C();
            sub_22C174FFC();
            sub_22BE1B934();
            sub_22C18F6A0(v104, v105, v106, v107);
            sub_22C17529C();
            sub_22BE27168();
            sub_22BE36514();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v133 = sub_22BE33BE8();
            v134(v133);
            sub_22BE37778();
            v135 = sub_22BE3CC34();
            v136(v135);
            sub_22C18F704();
            goto LABEL_18;
          default:
            sub_22C175248();
            sub_22BE1B934();
            sub_22C18F6A0(v82, v83, v84, v85);
            sub_22BE37B14();
            sub_22BE36514();
            v125 = sub_22C273E74();
            swift_unknownObjectRelease();
            v126 = sub_22C18E474();
            v127(v126);
            sub_22BE37778();
            v128 = sub_22BE3CC34();
            v129(v128);
            *v144 = v125 & 1;
            sub_22C18F704();
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_22BE3E31C();
LABEL_19:
            sub_22BE22944();
            sub_22C171FA8(v137, v138);
            v139 = v164;
            sub_22BE3E31C();
            v140 = sub_22BE1B73C();
            sub_22C171FA8(v140, v141);
            v94 = v139;
            break;
        }

        goto LABEL_10;
      }
    }

    v86 = v161;
    v87 = sub_22C273B34();
    sub_22BE196B4(v87, MEMORY[0x277D841A0]);
    v89 = v88;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v89 = v86;
    sub_22C273DF4();
    sub_22BE1A918();
    sub_22BE18994();
    v90 = sub_22BE38608();
    v91(v90);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE37778();
    v92 = sub_22BE1B73C();
    v93(v92);
  }

LABEL_9:
  v94 = v164;
LABEL_10:
  sub_22BE26B64(v94);
  sub_22BE467E4();
  sub_22BE18478();
}

unint64_t RequestContent.SystemPromptResolution.RequirementResolution.description.getter()
{
  v1 = *v0;
  sub_22C273AA4();

  sub_22BE25A74();
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2318AB8D0](v2, v3);

  v4 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v4);
  return 0xD00000000000002ELL;
}

uint64_t sub_22C140FDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000022C2D96A0 == a2)
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

uint64_t sub_22C14107C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C140FDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C1410A8(uint64_t a1)
{
  v2 = sub_22C175344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1410E4(uint64_t a1)
{
  v2 = sub_22C175344();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.RequirementResolution.encode(to:)()
{
  sub_22BE19130();
  v1 = v0;
  sub_22BE5CE4C(&qword_27D9131C0, &qword_22C2B80C0);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B01C();
  sub_22BE3C0A8(v1);
  sub_22C175344();
  sub_22BE232E4();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22C18F374();
  sub_22C273F64();
  v3 = sub_22BE17B24();
  v4(v3);
  sub_22BE22978();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.RequirementResolution.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  sub_22BE5CE4C(&qword_27D9131D0, &qword_22C2B80C8);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  sub_22BE3763C();
  sub_22C175344();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (!v0)
  {
    v7 = sub_22C273E74();
    v8 = sub_22C18E894();
    v9(v8, v1);
    *v5 = v7 & 1;
  }

  sub_22BE26B64(v3);
  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22C14134C(uint64_t a1)
{
  v2 = sub_22C175398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C141388(uint64_t a1)
{
  v2 = sub_22C175398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C141408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000022C2D9870 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL;
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

        else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
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

unint64_t sub_22C1415C0(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6974634172657375;
      break;
    case 3:
      result = 0x6E656D6574617473;
      break;
    case 4:
      result = 0x7475706E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C141694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C141408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1416BC(uint64_t a1)
{
  v2 = sub_22C1753EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1416F8(uint64_t a1)
{
  v2 = sub_22C1753EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestContent.SystemPromptResolution.encode(to:)()
{
  sub_22BE19130();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D9131E8, &qword_22C2B80D8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C1753EC();
  sub_22BE25524(&type metadata for RequestContent.SystemPromptResolution.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v4);
  sub_22BE3EAFC();
  sub_22C273F34();
  if (!v0)
  {
    type metadata accessor for RequestContent.SystemPromptResolution(0);
    sub_22C18E864();
    sub_22BE3EAFC();
    sub_22C273FA4();
    sub_22BE200EC();
    type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
    sub_22BE3BBAC();
    sub_22BE20458(v5);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    sub_22C18E900();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v6);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    sub_22C18FDB8();
    type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
    sub_22BE308AC();
    sub_22BE20458(v7);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v8 = sub_22BE47E18();
  v9(v8);
  sub_22BE467E4();
  sub_22BE18478();
}

void RequestContent.SystemPromptResolution.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BE19130();
  v26 = v25;
  v59 = v27;
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v60 = v29;
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  v63 = v31;
  v64 = v30;
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v61 = v32;
  v33 = sub_22BE183BC();
  type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v33);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  sub_22BE183BC();
  sub_22C26E1D4();
  sub_22BE1A3D8();
  v65 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22BE1955C();
  v37 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v37);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE23E58();
  v66 = sub_22BE5CE4C(&qword_27D913208, &qword_22C2B80E0);
  sub_22BE179D8();
  v62 = v39;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BE3100C();
  type metadata accessor for RequestContent.SystemPromptResolution(v41);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v42);
  sub_22BE19338();
  sub_22BE3AE2C();
  sub_22BE19DC4(v43, v44, v45, v46);
  v67 = v19;
  v68 = *(v19 + 32);
  swift_storeEnumTagMultiPayload();
  v47 = v26[3];
  v48 = sub_22BE18944();
  sub_22BE26950(v48, v49);
  sub_22C1753EC();
  sub_22BE23550();
  sub_22C274214();
  if (v20)
  {
    sub_22C18E934();
    sub_22BE26B64(v26);
    sub_22C18DC5C(v23, &qword_27D9082F0);
    if (v21)
    {
      (*(v65 + 8))(v23 + *(v67 + 20), v22);
      if (!v26)
      {
LABEL_5:
        if (!v47)
        {
LABEL_7:
          sub_22C18E070();
          goto LABEL_8;
        }

LABEL_6:
        (*(v63 + 8))(v23 + *(v67 + 28), v64);
        goto LABEL_7;
      }
    }

    else if (!v26)
    {
      goto LABEL_5;
    }

    sub_22BE48E4C();
    sub_22C171FFC();
    if (!v47)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_22BE18B28();
  sub_22BE20458(v50);
  sub_22C18F97C();
  sub_22C273E44();
  sub_22BE1824C();
  sub_22BE2343C();
  sub_22BE33FE4();
  sub_22C18F97C();
  sub_22C273EB4();
  sub_22C18FFB4();
  v52(v23 + v51, v24, v22);
  sub_22BE200EC();
  sub_22BE3BBAC();
  sub_22BE20458(v53);
  sub_22C18F614();
  sub_22C273EB4();
  sub_22BE3E31C();
  v54 = sub_22C18FCC8();
  sub_22C171FA8(v54, v55);
  sub_22C18E900();
  sub_22BE18F44();
  sub_22BE20458(v56);
  sub_22C273EB4();
  (*(v63 + 32))(v23 + *(v67 + 28), v61, v64);
  sub_22C18FDB8();
  sub_22BE308AC();
  sub_22BE20458(v57);
  sub_22C273EB4();
  (*(v62 + 8))(v21, v66);
  sub_22C18E354();
  sub_22C172628(v60, v23 + v68);
  v58 = sub_22C1088E8();
  sub_22BE1A964(v58, v59);
  sub_22BE26B64(v26);
  sub_22C18E000();
LABEL_8:
  sub_22C171FFC();
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t ExternalAgentRequest.rewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ExternalAgentRequest(v0);
  return sub_22BE18504();
}

void ExternalAgentRequest.rewriteMetadataInlined.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for ExternalAgentRequest(v0);
  sub_22C18F4EC();
  v2 = sub_22C18FDC4(v1);

  sub_22BE3820C(v2, v3, v4);
}

__n128 ExternalAgentRequest.rewriteMetadataInlined.setter()
{
  v2 = sub_22C18FE64();
  v3 = (v1 + *(type metadata accessor for ExternalAgentRequest(v2) + 24));
  sub_22BE37808(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v0;
  return result;
}

uint64_t ExternalAgentRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ExternalAgentRequest(v0);
  return sub_22BE18504();
}

void ExternalAgentRequest.init(query:statementId:queryRewriteMetadataEventId:queryRewriteMetadataInlined:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BE18040();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  sub_22BE37808(*v1, v1[1], v1[2]);
  v14 = sub_22BE35838();
  sub_22C18DC5C(v14, v15);
  *v9 = v7;
  v9[1] = v5;
  type metadata accessor for RequestContent.TextContent(0);
  sub_22C18FA90();
  sub_22C26E684();
  sub_22BE1834C();
  (*(v16 + 32))(v1 + v9, v3);
  type metadata accessor for RequestContent(0);
  swift_storeEnumTagMultiPayload();
  sub_22C26E1D4();
  sub_22BE3AE2C();
  v21 = sub_22C18F17C(v17, v18, v19, v20);
  v22 = type metadata accessor for ExternalAgentRequest(v21);
  sub_22BE3AE2C();
  sub_22BE19DC4(v23, v24, v25, v26);
  v27 = (v9 + *(v22 + 24));
  *v27 = 0;
  v27[1] = 0;
  v27[2] = 0;
  sub_22BE3BD64();
  sub_22BE2343C();
  sub_22BE37808(*v27, v27[1], v27[2]);
  *v27 = 0;
  v27[1] = 0;
  v27[2] = 0;
  sub_22BE1AABC();
}

void ExternalAgentRequest.init(speech:statementId:rewriteMetadataEventID:rewriteMetadataInlined:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BE2590C();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE23E58();
  v35 = *v1;
  sub_22C18F934(*(v1 + 2));
  v14 = sub_22C26EBC4();
  sub_22BE1A140();
  v18 = sub_22C18F17C(v15, v16, v17, v14);
  v19 = type metadata accessor for RequestContent.SpeechContent(v18);
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v14);
  sub_22BE1A140();
  sub_22BE19DC4(v23, v24, v25, v14);
  *v9 = v7;
  *(v9 + 1) = v5;
  sub_22C18FCEC();
  sub_22BE2343C();
  v26 = *(v19 + 24);
  sub_22C26E684();
  sub_22BE1834C();
  (*(v27 + 32))(&v9[v26], v3);
  type metadata accessor for RequestContent(0);
  sub_22BE1ACEC();
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for ExternalAgentRequest(0);
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v29, v30, v31, v32);
  v33 = &v9[*(v28 + 24)];
  *v33 = 0;
  v33[1] = 0;
  v33[2] = 0;
  sub_22BE2343C();
  sub_22BE37808(*v33, v33[1], v33[2]);
  *v33 = v35;
  v33[2] = v34;
  sub_22BE1AABC();
}

uint64_t sub_22C14243C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000022C2DBE30 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000022C2DA870 == a2)
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

uint64_t sub_22C14255C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14243C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C142584(uint64_t a1)
{
  v2 = sub_22BE39770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1425C0(uint64_t a1)
{
  v2 = sub_22BE39770();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExternalAgentRequest.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v24 = v4;
  v5 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A8B4();
  type metadata accessor for RequestContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v25 = v8;
  sub_22BE5CE4C(&qword_27D913228, &qword_22C2B80F0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE24FD8();
  v11 = type metadata accessor for ExternalAgentRequest(v10);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  sub_22BE18DFC();
  v13 = *(v12 + 28);
  v14 = sub_22C26E1D4();
  v26 = v13;
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v14);
  v18 = (v1 + *(v12 + 32));
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 0;
  sub_22BE2018C(v3);
  sub_22BE39770();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22C18DC5C(v1 + v26, &qword_27D9082F0);
    sub_22BE37808(*v18, v18[1], v18[2]);
  }

  else
  {
    sub_22BE35880();
    sub_22BE20458(v19);
    sub_22C18F958();
    sub_22C18E59C();
    sub_22C273EB4();
    sub_22BE250EC();
    sub_22C171FA8(v25, v1);
    LOBYTE(v27) = 1;
    sub_22BE18B28();
    sub_22BE20458(v20);
    sub_22C18F958();
    sub_22C18E59C();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22BE39E24();
    sub_22C173BC4();
    sub_22BE27168();
    sub_22BE36514();
    sub_22C273E44();
    sub_22C18FDFC();
    v21 = sub_22BE33BE8();
    v22(v21);
    sub_22BE37808(*v18, v18[1], v18[2]);
    *v18 = v27;
    v18[2] = v28;
    v23 = sub_22BE29370();
    sub_22BE1A964(v23, v24);
    sub_22BE26B64(v3);
    sub_22C0E9830();
    sub_22C171FFC();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void static RequestPrescribedPlan.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v27;
  a20 = v28;
  v108 = v29;
  v109 = v30;
  v31 = type metadata accessor for RequestPrescribedPlan.OpenTool(0);
  v32 = sub_22BE290A0(v31, &a18);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v105 = v33;
  v34 = sub_22BE183BC();
  type metadata accessor for RequestPrescribedPlan(v34);
  sub_22BE18000();
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  v106 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  v107 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE18094();
  MEMORY[0x28223BE20](v40);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v41);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v42);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v43);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v44);
  sub_22BE2EDB8();
  v45 = sub_22BE5CE4C(&qword_27D913230, &qword_22C2B80F8);
  sub_22BE19448(v45);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE23E58();
  v48 = v25 + *(v47 + 56);
  sub_22BE1A964(v108, v25);
  sub_22BE1A964(v109, v48);
  sub_22C0B1B94();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE23214();
      v90 = sub_22BE33BE8();
      sub_22BE1A964(v90, v91);
      v93 = *v21;
      v92 = v21[1];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_35;
      }

      v94 = *v48;
      v95 = *(v48 + 8);
      if (v93 != v94 || v92 != v95)
      {
        sub_22BE200D4();
        sub_22C274014();
      }

      goto LABEL_43;
    case 2u:
      sub_22BE23214();
      v69 = sub_22BF6AC14();
      sub_22BE1A964(v69, v70);
      v71 = v22[1];
      v72 = v22[4];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_34;
      }

      v73 = v22[3];
      v74 = *(v22 + 16);
      v75 = *v22;
      goto LABEL_26;
    case 3u:
      sub_22BE23214();
      v76 = sub_22BE1824C();
      sub_22BE1A964(v76, v77);
      v78 = v23[1];
      v79 = v23[4];
      v80 = v23[6];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_34:

LABEL_35:

        goto LABEL_36;
      }

      v81 = v23[5];
      v82 = v23[3];
      v83 = *(v23 + 16);
      v84 = *v23;
      v85 = *v48;
      v86 = *(v48 + 8);
      v87 = *(v48 + 16);
      v88 = *(v48 + 24);
      v89 = *(v48 + 48);
      v116 = v84;
      v117 = v78;
      v118 = v83;
      v119 = v82;
      v120 = v79;
      v121 = v81;
      v122 = v80;
      v110 = v85;
      v111 = v86;
      LOBYTE(v112) = v87;
      v113 = v88;
      v114 = *(v48 + 32);
      v115 = v89;
      static RequestPrescribedPlan.ConvertTool.== infix(_:_:)();

LABEL_27:

LABEL_28:

      sub_22C18E058();
      sub_22C171FFC();
      break;
    case 4u:
      sub_22BE23214();
      v57 = sub_22BE3C968();
      sub_22BE1A964(v57, v58);
      v59 = v20[1];
      v60 = v20[4];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_34;
      }

      v61 = v20[3];
      v62 = *(v20 + 16);
      v63 = *v20;
      v64 = *v48;
      v65 = *(v48 + 8);
      v66 = *(v48 + 16);
      v67 = *(v48 + 24);
      v68 = *(v48 + 32);
      v116 = v63;
      v117 = v59;
      v118 = v62;
      v119 = v61;
      v120 = v60;
      v110 = v64;
      v111 = v65;
      LOBYTE(v112) = v66;
      v113 = v67;
      *&v114 = v68;
      static RequestPrescribedPlan.DisplayTool.== infix(_:_:)(&v116, &v110);

      goto LABEL_28;
    case 5u:
      sub_22BE23214();
      v97 = sub_22BE3E79C();
      sub_22BE1A964(v97, v98);
      v71 = v26[1];
      v72 = v26[4];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      v73 = v26[3];
      v74 = *(v26 + 16);
      v75 = *v26;
LABEL_26:
      v99 = *v48;
      v100 = *(v48 + 8);
      v101 = *(v48 + 16);
      v102 = *(v48 + 24);
      v103 = *(v48 + 32);
      v116 = v75;
      v117 = v71;
      v118 = v74;
      v119 = v73;
      v120 = v72;
      v110 = v99;
      v111 = v100;
      LOBYTE(v112) = v101;
      v113 = v102;
      *&v114 = v103;
      static RequestPrescribedPlan.DisplayTool.== infix(_:_:)(&v116, &v110);

      goto LABEL_27;
    case 6u:
      sub_22BE23214();
      sub_22BE1A964(v25, v107);
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v104 = sub_22BE431F0();
        sub_22C171FA8(v104, v105);
        sub_22BE29454();
        if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          sub_22BE2ED7C();
        }

        sub_22BE3D514();
        sub_22C171FFC();
        sub_22BE3D514();
        sub_22C171FFC();
LABEL_43:
        sub_22C18E058();
        sub_22C171FFC();
      }

      else
      {
        sub_22BE3D514();
        sub_22C171FFC();
LABEL_36:
        sub_22C18DC5C(v25, &qword_27D913230);
      }

      break;
    case 7u:
      sub_22BE23214();
      sub_22BE1A964(v25, v106);
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    default:
      sub_22BE23214();
      v49 = sub_22BF0AFB8();
      sub_22BE1A964(v49, v50);
      v52 = *v24;
      v51 = v24[1];
      sub_22BE18040();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_35;
      }

      if (v52 == *v48 && v51 == *(v48 + 8))
      {
      }

      else
      {
        v54 = sub_22BE1AB74();
        sub_22BE3C8EC(v54, v55, v56);
        sub_22BE417C8();
      }

      goto LABEL_43;
  }

  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t static RequestPrescribedPlan.SearchTool.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22C18E738(a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 17);
  v10 = *(v6 + 16);
  v11 = *(v6 + 17);
  if (v5 == *v6 && *(v7 + 8) == *(v6 + 8))
  {
    if (v8 != v10)
    {
      return 0;
    }

    return v9 ^ v11 ^ 1u;
  }

  sub_22C274014();
  result = sub_22C18FA30();
  if ((v14 & 1) != 0 && ((v8 ^ v10) & 1) == 0)
  {
    return v9 ^ v11 ^ 1u;
  }

  return result;
}

void static RequestPrescribedPlan.ConvertTool.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22C18E738(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = *(v2 + 32);
  v13 = *(v2 + 40);
  v12 = *(v2 + 48);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_22C274014();
    sub_22C18FA30();
    if (v15 & 1) == 0 || ((v4 ^ v9))
    {
      goto LABEL_25;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    if (v5 != v11 || v6 != v10)
    {
      sub_22BE29454();
      if ((sub_22C274014() & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_25;
  }

  if (v8 && v12 && (v7 != v13 || v8 != v12))
  {
    v18 = sub_22BE19454();
    sub_22C18F3BC(v18);
  }

LABEL_25:
  sub_22BE1AABC();
}

uint64_t sub_22C143184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22C18E738(a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = *(v7 + 32);
  v11 = *(v6 + 16);
  v13 = *(v6 + 24);
  v12 = *(v6 + 32);
  if (v5 == *v6 && *(v7 + 8) == *(v6 + 8))
  {
    if (v8 != v11)
    {
      return 0;
    }

    goto LABEL_9;
  }

  sub_22C274014();
  result = sub_22C18FA30();
  if ((v16 & 1) != 0 && ((v8 ^ v11) & 1) == 0)
  {
LABEL_9:
    if (v10)
    {
      if (v12)
      {
        if (v9 == v13 && v10 == v12)
        {
          return 1;
        }

        v18 = sub_22BE19454();
        if (sub_22C18F3BC(v18))
        {
          return 1;
        }
      }
    }

    else if (!v12)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t static RequestPrescribedPlan.OpenTool.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
  v3 = *(v1 + v2 + 8);
  v4 = *(v0 + v2 + 8);
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_22BE35DEC();
    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22C1432C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x800000022C2DA7B0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F6F5474786574 && a2 == 0xE800000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x54747265766E6F63 && a2 == 0xEB000000006C6F6FLL;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006C6F6FLL;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6764656C776F6E6BLL && a2 == 0xED00006C6F6F5465;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6F6F546E65706FLL && a2 == 0xE800000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000025 && 0x800000022C2DA810 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_22C274014();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C143558(char a1)
{
  result = 0x6F54686372616573;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      v3 = 1954047348;
      goto LABEL_10;
    case 3:
      result = 0x54747265766E6F63;
      break;
    case 4:
      result = 0x5479616C70736964;
      break;
    case 5:
      result = 0x6764656C776F6E6BLL;
      break;
    case 6:
      v3 = 1852141679;
LABEL_10:
      result = v3 | 0x6C6F6F5400000000;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1432C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C143684(uint64_t a1)
{
  v2 = sub_22C175440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1436C0(uint64_t a1)
{
  v2 = sub_22C175440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1436FC(uint64_t a1)
{
  v2 = sub_22C1756E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143738(uint64_t a1)
{
  v2 = sub_22C1756E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143774(uint64_t a1)
{
  v2 = sub_22C175638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1437B0(uint64_t a1)
{
  v2 = sub_22C175638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1437EC(uint64_t a1)
{
  v2 = sub_22C175590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143828(uint64_t a1)
{
  v2 = sub_22C175590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143864(uint64_t a1)
{
  v2 = sub_22C175830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1438A0(uint64_t a1)
{
  v2 = sub_22C175830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1438DC(uint64_t a1)
{
  v2 = sub_22C175494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143918(uint64_t a1)
{
  v2 = sub_22C175494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143954(uint64_t a1)
{
  v2 = sub_22C17553C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143990(uint64_t a1)
{
  v2 = sub_22C17553C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1439CC(uint64_t a1)
{
  v2 = sub_22C1758D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143A08(uint64_t a1)
{
  v2 = sub_22C1758D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C143A44(uint64_t a1)
{
  v2 = sub_22C175788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C143A80(uint64_t a1)
{
  v2 = sub_22C175788();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v99 = v20;
  v26 = v25;
  sub_22BE5CE4C(&qword_27D913238, &qword_22C2B8100);
  sub_22BE179D8();
  v97 = v27;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  sub_22BEC07BC(v29);
  sub_22BE5CE4C(&qword_27D913240, &qword_22C2B8108);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  v31 = sub_22BE183BC();
  type metadata accessor for RequestPrescribedPlan.OpenTool(v31);
  sub_22BE18000();
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v96 = v33;
  sub_22BE5CE4C(&qword_27D913248, &qword_22C2B8110);
  sub_22BE179D8();
  v95 = v34;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE39404(v36);
  v37 = sub_22BE5CE4C(&qword_27D913250, &qword_22C2B8118);
  sub_22BE18910(v37, &a17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22C18E4F0(v39);
  v40 = sub_22BE5CE4C(&qword_27D913258, &qword_22C2B8120);
  sub_22BE18910(v40, &a14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  sub_22BE190A8(v42);
  v43 = sub_22BE5CE4C(&qword_27D913260, &qword_22C2B8128);
  sub_22BE18910(v43, &a11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  sub_22BE190A8(v45);
  v46 = sub_22BE5CE4C(&qword_27D913268, &qword_22C2B8130);
  sub_22BE18910(v46, &v110);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1B72C();
  sub_22BE5CE4C(&qword_27D913270, &qword_22C2B8138);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  v49 = sub_22BE24FD8();
  type metadata accessor for RequestPrescribedPlan(v49);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v50);
  sub_22BE19338();
  sub_22BE5CE4C(&qword_27D913278, &qword_22C2B8140);
  sub_22BE179D8();
  v101 = v51;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE19E64();
  sub_22BE41E84(v26);
  sub_22C175440();
  sub_22BE23550();
  sub_22C18FCB0();
  sub_22C274234();
  sub_22BE23214();
  sub_22BE1A964(v99, v22);
  sub_22BE1B18C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v82 = *v22;
      v81 = *(v22 + 8);
      sub_22C175830();
      sub_22C18E7F8();
      sub_22C273EE4();
      v102 = v82;
      v103 = v81;
      sub_22C175884();
      sub_22C18FF08();
      sub_22C273FA4();
      sub_22BE1B5D4();
      v83 = sub_22BE1B62C();
      v84(v83);
      v85 = sub_22BE2399C();
      v86(v85, v101);
      goto LABEL_11;
    case 2u:
      sub_22C18F824();
      LOBYTE(v102) = 2;
      sub_22C175788();
      sub_22BE28C80();
      sub_22BE42748();
      sub_22C273EE4();
      sub_22C18F814();
      sub_22C1757DC();
      sub_22BEC0400();
      sub_22C19021C(v63, v64);
      goto LABEL_10;
    case 3u:
      v65 = *(v22 + 8);
      v100 = *v22;
      v98 = *(v22 + 16);
      v67 = *(v22 + 24);
      v66 = *(v22 + 32);
      v69 = *(v22 + 40);
      v68 = *(v22 + 48);
      sub_22C1756E0();
      sub_22BE351B8();
      sub_22C18E7F8();
      sub_22C273EE4();
      v102 = v100;
      v103 = v65;
      v104 = v98;
      v106 = v67;
      v107 = v66;
      v108 = v69;
      v109 = v68;
      sub_22C175734();
      sub_22C18FF08();
      sub_22C273FA4();
      v70 = sub_22BE3A530();
      v71(v70, v65);
      sub_22BE270B0();
      v72 = sub_22BE37490();
      v73(v72);

      goto LABEL_11;
    case 4u:
      sub_22C18F824();
      LOBYTE(v102) = 4;
      sub_22C175638();
      sub_22BE28C80();
      sub_22BE42748();
      sub_22C273EE4();
      sub_22C18F814();
      sub_22C17568C();
      sub_22BEC0400();
      sub_22C19021C(v61, v62);
      goto LABEL_10;
    case 5u:
      sub_22C18F824();
      LOBYTE(v102) = 5;
      sub_22C175590();
      sub_22BE28C80();
      sub_22BE42748();
      sub_22C273EE4();
      sub_22C18F814();
      sub_22C1755E4();
      v21 = v95;
      sub_22C19021C(&v102, v87);
LABEL_10:
      v88 = sub_22C11FDE0();
      v89(v88, v21);
      v90 = sub_22BE2B7E8();
      v91(v90);

      goto LABEL_11;
    case 6u:
      sub_22C171FA8(v22, v96);
      LOBYTE(v102) = 6;
      sub_22C17553C();
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22C18EFA0();
      sub_22BE20458(v92);
      sub_22BE35E54();
      sub_22BE31290();
      sub_22C273FA4();
      v93 = sub_22BE35B0C();
      v94(v93);
      sub_22BE3D514();
      sub_22C171FFC();
      v79 = sub_22BE25EE4();
      goto LABEL_13;
    case 7u:
      v74 = *v22;
      v75 = *(v22 + 8);
      sub_22C175494();
      sub_22BE1B934();
      sub_22C273EE4();
      v102 = v74;
      LOBYTE(v103) = v75;
      sub_22C1754E8();
      sub_22C190174(&v102, v76);
      v77 = sub_22BE28D70();
      v78(v77, v97);
      v79 = sub_22BE35B0C();
LABEL_13:
      v80(v79);
      break;
    default:
      v54 = *v22;
      v53 = *(v22 + 8);
      v55 = *(v22 + 16);
      v56 = *(v22 + 17);
      sub_22C1758D8();
      sub_22C273EE4();
      v102 = v54;
      v103 = v53;
      v104 = v55;
      v105 = v56;
      sub_22C17592C();
      sub_22C273FA4();
      sub_22BE1B5D4();
      v57 = sub_22BF6AC14();
      v58(v57);
      v59 = sub_22C11FDE0();
      v60(v59, v101);
LABEL_11:

      break;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void RequestPrescribedPlan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  a10 = v21;
  v158 = v26;
  v27 = sub_22BE5CE4C(&qword_27D913308, &qword_22C2B8148);
  sub_22BE18910(v27, &a16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  v29 = sub_22BE5CE4C(&qword_27D913310, &qword_22C2B8150);
  sub_22BE18910(v29, &a15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  v31 = sub_22BE5CE4C(&qword_27D913318, &qword_22C2B8158);
  sub_22BE18910(v31, &a14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  v33 = sub_22BE5CE4C(&qword_27D913320, &qword_22C2B8160);
  sub_22BE18910(v33, &a13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  sub_22BF0AFA0(v35);
  v36 = sub_22BE5CE4C(&qword_27D913328, &qword_22C2B8168);
  sub_22BE18910(v36, &a12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE2C638(v38, v150);
  v39 = sub_22BE5CE4C(&qword_27D913330, &qword_22C2B8170);
  sub_22BE18910(v39, &a11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE33FF0(v41, v151);
  v42 = sub_22BE5CE4C(&qword_27D913338, &qword_22C2B8178);
  sub_22BE18910(v42, &a10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE39404(v44);
  v45 = sub_22BE5CE4C(&qword_27D913340, &qword_22C2B8180);
  sub_22BE18910(v45, &a9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE44798(v47);
  sub_22BE5CE4C(&qword_27D913348, &qword_22C2B8188);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  v49 = sub_22BE3100C();
  v159 = type metadata accessor for RequestPrescribedPlan(v49);
  sub_22BE18000();
  MEMORY[0x28223BE20](v50);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE18094();
  MEMORY[0x28223BE20](v55);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v56);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v57);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v58);
  sub_22BE181E4();
  v59 = sub_22C18FE2C();
  sub_22BE3C0A8(v59);
  sub_22C175440();
  sub_22BE23550();
  v60 = a10;
  sub_22C274214();
  if (!v60)
  {
    v152 = v20;
    a10 = v22;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v62 != v61 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v65 == v66)
      {
        __break(1u);
        return;
      }

      v67 = *(v64 + v63);
      sub_22BE7C5C0();
      v69 = v68;
      v71 = v70;
      swift_unknownObjectRelease();
      if (v69 == v71 >> 1)
      {
        switch(v67)
        {
          case 1:
            LOBYTE(v162) = 1;
            sub_22C175830();
            sub_22BE236D4();
            sub_22C18E5EC(v97, v98);
            sub_22C175B24();
            sub_22BE1B934();
            sub_22C190204(v99, v100, v101, v102, v103);
            sub_22C18F398();
            swift_unknownObjectRelease();
            v134 = sub_22BE2C65C();
            v135(v134);
            v136 = sub_22BE1B264();
            v137(v136);
            v138 = v163;
            v130 = v23;
            *v23 = v162;
            v23[1] = v138;
            sub_22C18F4D4();
            goto LABEL_18;
          case 2:
            LOBYTE(v162) = 2;
            sub_22C175788();
            sub_22C18E5EC(&type metadata for RequestPrescribedPlan.TextToolCodingKeys, &v162);
            sub_22C175AD0();
            v130 = v154;
            sub_22BE3788C();
            sub_22C190204(v87, v88, v89, v90, v91);
            sub_22C18F398();
            swift_unknownObjectRelease();
            v110 = sub_22BE3D13C();
            v111(v110);
            v112 = sub_22BE1B264();
            v113(v112);
            sub_22C18F8F8();
            sub_22C18E524(v114);
            sub_22C18F4D4();
            goto LABEL_18;
          case 3:
            LOBYTE(v162) = 3;
            sub_22C1756E0();
            sub_22C18E5EC(&type metadata for RequestPrescribedPlan.ConvertToolCodingKeys, &v162);
            sub_22C175A7C();
            v130 = v155;
            sub_22BE3788C();
            sub_22BE285D4();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v115 = sub_22BE19698();
            v116(v115);
            v117 = sub_22BE1B264();
            v118(v117);
            sub_22C18F8F8();
            sub_22C18E524(v119);
            *(v155 + 40) = v165;
            sub_22C18F4D4();
            goto LABEL_18;
          case 4:
            LOBYTE(v162) = 4;
            sub_22C175638();
            sub_22C18E5EC(&type metadata for RequestPrescribedPlan.DisplayToolCodingKeys, &v162);
            sub_22C175A28();
            v130 = v156;
            sub_22C18E550();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v105 = sub_22BE200D4();
            v106(v105);
            v107 = sub_22BE1B264();
            v108(v107);
            sub_22C18F8F8();
            sub_22C18E524(v109);
            sub_22C18F4D4();
            goto LABEL_18;
          case 5:
            LOBYTE(v162) = 5;
            sub_22C175590();
            sub_22C18E5EC(&type metadata for RequestPrescribedPlan.KnowledgeToolCodingKeys, &v162);
            sub_22C1759D4();
            v130 = v157;
            sub_22C18E550();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v139 = sub_22BE200D4();
            v140(v139);
            v141 = sub_22BE1B264();
            v142(v141);
            sub_22C18F8F8();
            sub_22C18E524(v143);
            sub_22C18F4D4();
            goto LABEL_18;
          case 6:
            LOBYTE(v162) = 6;
            sub_22C17553C();
            sub_22C18E5EC(&type metadata for RequestPrescribedPlan.OpenToolCodingKeys, &v162);
            type metadata accessor for RequestPrescribedPlan.OpenTool(0);
            sub_22C18EFA0();
            sub_22BE20458(v104);
            sub_22C18EBD4();
            sub_22BE236D4();
            sub_22BE489D4();
            sub_22BE285D4();
            sub_22C273EB4();
            sub_22C18F398();
            swift_unknownObjectRelease();
            v145 = sub_22BE2684C();
            v146(v145);
            v147 = sub_22BE1B264();
            v148(v147);
            swift_storeEnumTagMultiPayload();
            sub_22BE3A270();
            v149 = v160;
            goto LABEL_19;
          case 7:
            LOBYTE(v162) = 7;
            sub_22C175494();
            sub_22C18E5EC(&type metadata for RequestPrescribedPlan.OpenSuccessValueFromLatestRequestToolCodingKeys, &v162);
            sub_22C175980();
            sub_22BE3788C();
            sub_22C190204(v92, v93, v94, v95, v96);
            sub_22C18F398();
            swift_unknownObjectRelease();
            v120 = sub_22BE291B0();
            v121(v120);
            v122 = sub_22BE1B264();
            v123(v122);
            v124 = v163;
            v130 = v153;
            *v153 = v162;
            *(v153 + 8) = v124;
            sub_22C18F4D4();
            goto LABEL_18;
          default:
            LOBYTE(v162) = 0;
            sub_22C1758D8();
            sub_22BE236D4();
            sub_22C18E5EC(v72, v73);
            sub_22C175B78();
            sub_22BE1B934();
            sub_22C190204(v74, v75, v76, v77, v78);
            sub_22C18F398();
            swift_unknownObjectRelease();
            v125 = sub_22BE2C65C();
            v126(v125);
            v127 = sub_22BE1B264();
            v128(v127);
            sub_22C18F8F8();
            v129 = v164;
            v130 = v152;
            *v152 = v131;
            *(v152 + 8) = v132;
            *(v152 + 16) = v133;
            *(v152 + 17) = v129;
            sub_22C18F4D4();
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_22BE3A270();
            v149 = v130;
LABEL_19:
            v144 = a10;
            sub_22C171FA8(v149, a10);
            sub_22BE3A270();
            sub_22C171FA8(v144, v158);
            v86 = v161;
            break;
        }

        goto LABEL_10;
      }
    }

    v79 = sub_22C273B34();
    sub_22BE196B4(v79, MEMORY[0x277D841A0]);
    v81 = v80;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v81 = v159;
    sub_22C273DF4();
    sub_22BE1A918();
    sub_22BE18994();
    v82 = sub_22BE38608();
    v83(v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    v84 = sub_22BE3E8FC();
    v85(v84);
  }

  v86 = v161;
LABEL_10:
  sub_22BE26B64(v86);
  sub_22BE1AB28();
  sub_22BE18478();
}

void RequestPrescribedPlan.SearchTool.query.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_22C14529C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000022C2D3850 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001CLL && 0x800000022C2D3870 == a2)
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

uint64_t sub_22C1453B4(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_22C145414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14529C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14543C(uint64_t a1)
{
  v2 = sub_22C175BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C145478(uint64_t a1)
{
  v2 = sub_22C175BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.SearchTool.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22BE5CE4C(&qword_27D913390, &qword_22C2B8190);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE19E64();
  sub_22BE31088(v2);
  sub_22C175BCC();
  sub_22BE23550();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22BE3E79C();
  sub_22C18F5FC();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE200EC();
    sub_22BE39020();
    sub_22C273F64();
  }

  v4 = sub_22C18E748();
  v5(v4);
  sub_22BE35D48();
  sub_22BE18478();
}

void RequestPrescribedPlan.SearchTool.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  v5 = v4;
  sub_22BE5CE4C(&qword_27D9133A0, &qword_22C2B8198);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE234F4();
  sub_22BE3763C();
  v7 = sub_22C175BCC();
  sub_22BE33A2C(&type metadata for RequestPrescribedPlan.SearchTool.CodingKeys, v8, v7);
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18EA24();
    sub_22BE416D4();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE2315C();
    sub_22BE416D4();
    v12 = sub_22C273E74();
    sub_22BE200EC();
    sub_22BE416D4();
    v9 = sub_22C273E74();
    v10 = sub_22BE33560();
    v11(v10);
    *v5 = v3;
    *(v5 + 8) = v2;
    *(v5 + 16) = v12 & 1;
    *(v5 + 17) = v9 & 1;

    sub_22BE26B64(v0);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C1457F0(uint64_t a1)
{
  v2 = sub_22C175C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14582C(uint64_t a1)
{
  v2 = sub_22C175C20();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.LowConfidenceKnowledgeTool.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  sub_22BE5CE4C(&qword_27D9133A8, &qword_22C2B81A0);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE1B01C();
  sub_22BE3AD08();
  v1 = sub_22C175C20();
  sub_22BE3A014(&type metadata for RequestPrescribedPlan.LowConfidenceKnowledgeTool.CodingKeys, v2, v1);
  sub_22C18E100();
  sub_22C273F54();
  v3 = sub_22BE35CD8();
  v4(v3);
  sub_22BE22978();
  sub_22BE18478();
}

void __swiftcall RequestPrescribedPlan.TextTool.init(query:isExplicit:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::TextTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->partner.value._countAndFlagsBits = 0;
  retstr->partner.value._object = 0;
  sub_22C18FB10(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

uint64_t sub_22C1459FC(uint64_t a1)
{
  v2 = sub_22C175C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C145A38(uint64_t a1)
{
  v2 = sub_22C175C74();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.ConvertTool.query.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

void RequestPrescribedPlan.ConvertTool.partner.setter()
{
  sub_22BE1A8A8();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

void RequestPrescribedPlan.ConvertTool.directInvocationClient.setter()
{
  sub_22BE1A8A8();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

void __swiftcall RequestPrescribedPlan.ConvertTool.init(query:isExplicit:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->directInvocationClient = 0u;
  retstr->partner = 0u;
  sub_22C18FB10(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

void __swiftcall RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner)
{
  retstr->directInvocationClient.value._countAndFlagsBits = 0;
  retstr->directInvocationClient.value._object = 0;
  _s30IntelligenceFlowPlannerSupport21RequestPrescribedPlanO11DisplayToolV5query10isExplicit7partnerAESS_SbSSSgtcfC_0(query._countAndFlagsBits, query._object, isExplicit, partner.value._countAndFlagsBits, partner.value._object, retstr);
}

uint64_t sub_22C145CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656E74726170 && a2 == 0xE700000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x800000022C2DA790 == a2)
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

unint64_t sub_22C145E10(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x63696C7078457369;
      break;
    case 2:
      result = 0x72656E74726170;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C145EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C145CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C145EC8(uint64_t a1)
{
  v2 = sub_22C175CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C145F04(uint64_t a1)
{
  v2 = sub_22C175CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.ConvertTool.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  sub_22BE5CE4C(&qword_27D9133D8, &qword_22C2B81C0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22C18FEA4();
  v2 = sub_22C18FE98();
  sub_22BE25318(v2);
  sub_22C175CC8();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22C18E494();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE200EC();
    sub_22BE3E79C();
    sub_22C18E514();
    sub_22C273EF4();
    sub_22C18E900();
    sub_22C18E494();
    sub_22C273EF4();
  }

  v3 = sub_22C18E748();
  v4(v3);
  sub_22BE35D48();
  sub_22BE18478();
}

void RequestPrescribedPlan.ConvertTool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  sub_22C18F140();
  v26 = v25;
  sub_22BE5CE4C(&qword_27D9133E8, &qword_22C2B81C8);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A8B4();
  sub_22BE31088(v23);
  sub_22C175CC8();
  sub_22BEE939C();
  sub_22C274214();
  if (v24)
  {
    sub_22BE26B64(v23);
  }

  else
  {
    sub_22C18EA24();
    sub_22C18E5BC();
    v28 = sub_22C273E64();
    v30 = v29;
    sub_22BE2315C();
    sub_22C18E5BC();
    v40 = sub_22C273E74();
    sub_22BE200EC();
    sub_22C18E5BC();
    v38 = sub_22C273E04();
    v39 = v31;
    sub_22C18E900();
    sub_22C18E5BC();
    v32 = sub_22C273E04();
    v34 = v33;
    v37 = v32;
    v35 = sub_22BE38FD8();
    v36(v35);
    *v26 = v28;
    *(v26 + 8) = v30;
    *(v26 + 16) = v40 & 1;
    *(v26 + 24) = v38;
    *(v26 + 32) = v39;
    *(v26 + 40) = v37;
    *(v26 + 48) = v34;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void RequestPrescribedPlan.DisplayTool.query.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

void RequestPrescribedPlan.DisplayTool.partner.setter()
{
  sub_22BE1A8A8();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

uint64_t sub_22C1463B4(uint64_t a1)
{
  v2 = sub_22C175D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1463F0(uint64_t a1)
{
  v2 = sub_22C175D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C146514()
{
  sub_22BE18378();
  v3 = v1 == 0x7972657571 && v2 == 0xE500000000000000;
  if (v3 || (sub_22BE2BC78(0x7972657571, 0xE500000000000000, v1) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x63696C7078457369 && v0 == 0xEA00000000007469;
    if (v5 || (sub_22BE2BC78(0x63696C7078457369, 0xEA00000000007469, v1) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x72656E74726170 && v0 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      sub_22BE2BC78(0x72656E74726170, 0xE700000000000000, v1);
      sub_22BE417C8();
      if (v1)
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

uint64_t sub_22C146604(uint64_t a1)
{
  v2 = sub_22C175D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C146640(uint64_t a1)
{
  v2 = sub_22C175D70();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22C1466B0()
{
  sub_22BE19130();
  v11 = v1;
  v3 = v2;
  v5 = sub_22BE34074(v2, v4);
  sub_22BE5CE4C(v5, v6);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  sub_22C18FEA4();
  v8 = sub_22C18E560(v3);
  v11(v8);
  sub_22C274234();
  sub_22C18E9AC();
  sub_22C18E494();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE39020();
    sub_22C273F64();
    sub_22BE200EC();
    sub_22C18E494();
    sub_22C273EF4();
  }

  v9 = sub_22C18E748();
  v10(v9);
  sub_22BE35D48();
  sub_22BE18478();
}

void sub_22C146820()
{
  sub_22BE19130();
  v4 = v3;
  sub_22C18F0F4();
  v19 = v5;
  v8 = sub_22BE34074(v6, v7);
  v20 = sub_22BE5CE4C(v8, v9);
  sub_22BE179D8();
  v11 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE234F4();
  v13 = v0[3];
  v14 = sub_22BE25318(v0);
  v4(v14);
  sub_22BEE94BC();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E64();
    sub_22C18F4BC();
    sub_22BE2315C();
    sub_22BE23070();
    v21 = sub_22C273E74();
    sub_22BE200EC();
    sub_22BE23070();
    v15 = sub_22C273E04();
    v17 = v16;
    v18 = v15;
    (*(v11 + 8))(v1, v20);
    *v19 = v13;
    *(v19 + 8) = 0;
    *(v19 + 16) = v21 & 1;
    *(v19 + 24) = v18;
    *(v19 + 32) = v17;

    sub_22C18E8D8();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void RequestPrescribedPlan.OpenTool.elementAtIndex.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for RequestPrescribedPlan.OpenTool(v0);
  sub_22BE1AC84(*(v1 + 20));
}

uint64_t RequestPrescribedPlan.OpenTool.elementAtIndex.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for RequestPrescribedPlan.OpenTool(v0);
  return sub_22BE18504();
}

uint64_t sub_22C146ADC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C2D9390 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
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

uint64_t sub_22C146BB4(char a1)
{
  if (a1)
  {
    return 0x41746E656D656C65;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22C146C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C146ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C146C2C(uint64_t a1)
{
  v2 = sub_22C175DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C146C68(uint64_t a1)
{
  v2 = sub_22C175DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.OpenTool.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913420, &qword_22C2B81F0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C175DC4();
  sub_22BE25524(&type metadata for RequestPrescribedPlan.OpenTool.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for RequestPrescribedPlan.OpenTool(0);
    sub_22BE42570();
    sub_22C273F24();
  }

  v5 = sub_22BE37A10();
  v6(v5);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void RequestPrescribedPlan.OpenTool.init(from:)()
{
  sub_22BE19130();
  sub_22C18F0B0();
  sub_22C18F934(v3);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE28FD8();
  v19 = sub_22BE5CE4C(&qword_27D913430, &qword_22C2B81F8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE24FD8();
  v7 = type metadata accessor for RequestPrescribedPlan.OpenTool(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  sub_22BE3C0A8(v0);
  sub_22C175DC4();
  sub_22BE3CCD4();
  sub_22C18F8EC();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v9);
    sub_22BEE92A4();
    sub_22BE362A8();
    sub_22C273EB4();
    sub_22BE286F0();
    sub_22C18F9C4();
    v10();
    sub_22BE2315C();
    sub_22BE36350();
    v11 = sub_22C273E34();
    v13 = v12;
    v14 = v1 + *(v7 + 20);
    v15 = sub_22BEE9178();
    v16(v15, v19);
    *v14 = v11;
    *(v14 + 8) = v13 & 1;
    v17 = sub_22BE29370();
    sub_22BE1A964(v17, v18);
    sub_22BE26B64(v0);
    sub_22BE3D514();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_22C1470DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
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

uint64_t sub_22C147184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1470DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C1471B0(uint64_t a1)
{
  v2 = sub_22C175E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1471EC(uint64_t a1)
{
  v2 = sub_22C175E18();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  sub_22BE5CE4C(&qword_27D913438, &qword_22C2B8200);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE1B01C();
  sub_22BE25318(v0);
  v2 = sub_22C175E18();
  sub_22BE3A014(&type metadata for RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.CodingKeys, v3, v2);
  sub_22BE31290();
  sub_22C273F24();
  v4 = sub_22BE35CD8();
  v5(v4);
  sub_22BE22978();
  sub_22BE18478();
}

void RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(from:)()
{
  sub_22BE19130();
  sub_22C18E778();
  sub_22BE5CE4C(&qword_27D913448, &qword_22C2B8208);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE3763C();
  v4 = sub_22C175E18();
  sub_22BE18878(&type metadata for RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_22C18F368();
    v6 = sub_22C273E34();
    v8 = v7;
    v9 = sub_22BE17B24();
    v10(v9);
    *v2 = v6;
    *(v2 + 8) = v8 & 1;
  }

  sub_22BE26B64(v0);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C14746C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
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

uint64_t sub_22C1474F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14746C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C147524(uint64_t a1)
{
  v2 = sub_22C175E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C147560(uint64_t a1)
{
  v2 = sub_22C175E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSuggestedInvocation.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  sub_22BE5CE4C(&qword_27D913450, &qword_22C2B8210);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE1B01C();
  sub_22BE3AD08();
  v1 = sub_22C175E6C();
  sub_22BE3A014(&type metadata for RequestSuggestedInvocation.CodingKeys, v2, v1);
  sub_22C18E100();
  sub_22C273F54();
  v3 = sub_22BE35CD8();
  v4(v3);
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t ProgramStatement.expression.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t ProgramStatement.isRoot.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ProgramStatement(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ProgramStatement.isRoot.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t ProgramStatement.isExpanded.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ProgramStatement(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t ProgramStatement.isExpanded.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t ProgramStatement.canonicalIndex.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for ProgramStatement(v2);
  v4 = v1 + *(result + 32);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t ProgramStatement.canonicalIndex.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ProgramStatement(v0);
  return sub_22BE18504();
}

void ProgramStatement.executionSupportType.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ProgramStatement(v0);
  sub_22C18F688(*(v1 + 36));
}

uint64_t ProgramStatement.executionSupportType.setter()
{
  v2 = sub_22C18F9E8();
  result = type metadata accessor for ProgramStatement(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t ProgramStatement.executionSupportType.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t sub_22C147A30@<X0>(uint64_t *a1@<X8>)
{
  result = ProgramStatement.ExecutionSupportType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22C147C1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746F6F527369 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646E617078457369 && a2 == 0xEA00000000006465;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6163696E6F6E6163 && a2 == 0xEE007865646E496CLL;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x800000022C2D9370 == a2)
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

unint64_t sub_22C147E1C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6973736572707865;
      break;
    case 2:
      result = 0x746F6F527369;
      break;
    case 3:
      result = 0x646E617078457369;
      break;
    case 4:
      result = 0x6163696E6F6E6163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C147EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C147C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C147F10(uint64_t a1)
{
  v2 = sub_22C175EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C147F4C(uint64_t a1)
{
  v2 = sub_22C175EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void ProgramStatement.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913468, &qword_22C2B8220);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  sub_22BE23094();
  v2 = sub_22C175EC0();
  sub_22BE25524(&type metadata for ProgramStatement.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for ProgramStatement(0);
    v5 = sub_22BE335C0();
    type metadata accessor for Expression(v5);
    sub_22C18EE2C();
    sub_22BE20458(v6);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    sub_22BE200EC();
    sub_22C18E17C();
    sub_22C273F04();
    sub_22C18E900();
    sub_22C18E17C();
    sub_22C273F04();
    sub_22C18E17C();
    sub_22C273F44();
    sub_22C175F14();
    sub_22C18E17C();
    sub_22C273F34();
  }

  v7 = sub_22BE37A10();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void ProgramStatement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_22BE19130();
  sub_22C18F874();
  type metadata accessor for Expression(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v30);
  sub_22BE28FD8();
  sub_22C26E684();
  sub_22BE1A3D8();
  MEMORY[0x28223BE20](v31);
  sub_22BE19338();
  sub_22BE5CE4C(&qword_27D913488, &unk_22C2B8228);
  sub_22BE179D8();
  v49 = v33;
  v50 = v32;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE234F4();
  type metadata accessor for ProgramStatement(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v35);
  sub_22BE179EC();
  v51 = v36;
  v52 = v38 - v37;
  v39 = v36[9];
  *(v38 - v37 + v39) = 2;
  sub_22BE25318(v27);
  sub_22C175EC0();
  sub_22BE48270();
  sub_22C274214();
  if (v53)
  {
    sub_22BE26B64(v27);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v40);
    sub_22BEE92A4();
    sub_22C18FCEC();
    sub_22C273EB4();
    v41 = sub_22BE29454();
    v42(v41);
    sub_22BE33FE4();
    sub_22C18EE2C();
    sub_22BE20458(v43);
    sub_22C18E9A0();
    sub_22BE27168();
    sub_22C273EB4();
    sub_22BE3ED9C();
    sub_22C171FA8(v29, v52 + v44);
    sub_22BE200EC();
    *(v52 + v51[6]) = sub_22C273E14();
    sub_22C18E900();
    *(v52 + v51[7]) = sub_22C273E14();
    sub_22C18FDB8();
    v45 = sub_22C273E54();
    v46 = v52 + v51[8];
    *v46 = v45;
    *(v46 + 4) = BYTE4(v45) & 1;
    sub_22C175F68();
    sub_22C273E44();
    (*(v49 + 8))(v28, v50);
    *(v52 + v39) = a12;
    v47 = sub_22BE29370();
    sub_22BE1A964(v47, v48);
    sub_22BE26B64(v27);
    sub_22C0E9830();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t ProgramStatement.hash(into:)()
{
  sub_22BE17BC4();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v0);
  sub_22BE44750();

  return sub_22C272EE4();
}

uint64_t ProgramStatement.hashValue.getter()
{
  sub_22BE25DAC();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v0);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22C148704(uint64_t a1)
{
  sub_22C274154();
  sub_22C26E684();
  sub_22BE20458(&qword_28107F2F0);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t ToolParameterValue.typedValue.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ToolParameterValue(v0);
  v2 = sub_22BE19448(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  sub_22BE39344();
  v3 = sub_22BE18040();
  sub_22BE1A964(v3, v4);
  sub_22C272874();
  sub_22BE1834C();
  v5 = sub_22BE33FD8();
  return v6(v5);
}

uint64_t static ToolParameterValue.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = sub_22BE5CE4C(&qword_27D909098, &qword_22C27FCB0);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1AEF0();
  v6 = *(v5 + 56);
  sub_22BE1A964(v1, v2);
  sub_22C18FAF4();
  sub_22C272844();
  sub_22BE17BC4();
  v7 = sub_22C272874();
  sub_22BE18000();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);
  v10 = sub_22BE1804C();
  (v9)(v10);
  return v0 & 1;
}

uint64_t sub_22C148908(uint64_t a1)
{
  v2 = sub_22C175FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C148944(uint64_t a1)
{
  v2 = sub_22C175FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C148980(uint64_t a1)
{
  v2 = sub_22C176030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1489BC(uint64_t a1)
{
  v2 = sub_22C176030();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolParameterValue.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9134A0, &qword_22C2B8238);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE3100C();
  v7 = type metadata accessor for ToolParameterValue(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE1955C();
  v9 = sub_22BE5CE4C(&qword_27D9134A8, &qword_22C2B8240);
  sub_22BE179D8();
  v11 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A8B4();
  sub_22BE41E84(v3);
  sub_22C175FDC();
  sub_22BEE939C();
  v13 = v4;
  sub_22C274234();
  sub_22BE39344();
  v14 = sub_22C18F9B8();
  sub_22BE1A964(v14, v15);
  sub_22C176030();
  sub_22C18E7F8();
  sub_22C273EE4();
  v16 = sub_22C272874();
  sub_22BE18720();
  sub_22BE20458(v17);
  sub_22BE35E54();
  sub_22C18F5FC();
  sub_22C273FA4();
  sub_22BE1BC24();
  (*(v18 + 8))(v0, v16);
  v19 = sub_22BE2399C();
  v20(v19, v13);
  (*(v11 + 8))(v1, v9);
  sub_22BEE94B0();
  sub_22BE18478();
}

void ToolParameterValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C18E850(v12);
  type metadata accessor for ToolParameterValue(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  sub_22BE5CE4C(&qword_27D9134C0, &qword_22C2B8248);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  v16 = sub_22BE5CE4C(&qword_27D9134C8, &qword_22C2B8250);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  sub_22BE3C0A8(v10);
  sub_22C175FDC();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (a10)
  {
    goto LABEL_12;
  }

  sub_22C18F100();
  sub_22BE7C5C4();
  sub_22C18F644();
  if (!v18)
  {
    sub_22BE41798();
    if (v19 == v20)
    {
      __break(1u);
      return;
    }

    sub_22BE3D6C4(v21);
    sub_22BE7C5C0();
    sub_22C18F14C();
    sub_22C18FFE4();
    if (v18)
    {
      sub_22C176030();
      sub_22BE25CA0();
      sub_22C273DE4();
      if (v11)
      {
        v22 = sub_22BE1A194();
        v23(v22, v16);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_22C272874();
        sub_22BE18720();
        v31 = sub_22BE20458(v30);
        sub_22BE377D8(v31, v32);
        sub_22C18F218();
        swift_unknownObjectRelease();
        v33 = sub_22C18E144();
        v34(v33);
        v35 = sub_22BE391A4();
        v36(v35);
        sub_22C18E314();
        v37 = sub_22C18F964();
        sub_22C171FA8(v37, v38);
      }

      goto LABEL_12;
    }

    sub_22C18FEFC();
  }

  v24 = sub_22C273B34();
  sub_22BE196B4(v24, MEMORY[0x277D841A0]);
  sub_22C18FA9C();
  sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  v25 = sub_22C18E674();
  sub_22BE1B198(v25);
  sub_22BE1BC24();
  v26 = sub_22C18F298();
  v27(v26);
  swift_willThrow();
  swift_unknownObjectRelease();
  v28 = sub_22C18E3C8();
  v29(v28);
LABEL_12:
  sub_22BE26B64(v10);
  sub_22C18F0A4();
  sub_22BE18478();
}

void GlobalToolIdentifier.toolId.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

void GlobalToolIdentifier.deviceIdsId.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_22C1490B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xEB00000000644973;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000022C2D94E0 == a2)
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

uint64_t sub_22C1491C8(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x6449656369766564;
  }

  return 0xD000000000000015;
}

uint64_t sub_22C149230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1490B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C149258(uint64_t a1)
{
  v2 = sub_22C176084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C149294(uint64_t a1)
{
  v2 = sub_22C176084();

  return MEMORY[0x2821FE720](a1, v2);
}

void GlobalToolIdentifier.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  sub_22BE5CE4C(&qword_27D9134D0, &qword_22C2B8258);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE2018C(v1);
  v3 = sub_22C176084();
  sub_22BE25524(&type metadata for GlobalToolIdentifier.CodingKeys, v4, v3);
  sub_22C18E9AC();
  sub_22BE2684C();
  sub_22C18F5FC();
  sub_22C273F54();
  if (!v0)
  {
    sub_22C18E4E0();
    sub_22C18E514();
    sub_22C273EF4();
    sub_22BE200EC();
    sub_22BE39020();
    sub_22C273F64();
  }

  v5 = sub_22C18E748();
  v6(v5);
  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t GlobalToolIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_22C272F44();
  sub_22C274174();
  if (v2)
  {
    sub_22BE232C8();
    sub_22C272F44();
  }

  return sub_22C274174();
}

uint64_t GlobalToolIdentifier.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_22BE25DAC();
  sub_22C272F44();
  if (v1)
  {
    v2 = sub_22C274174();
    sub_22C18FBF8(v2);
  }

  else
  {
    sub_22C274174();
  }

  sub_22C274174();
  return sub_22C2741A4();
}

void GlobalToolIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BE19130();
  sub_22C18F140();
  v22 = v21;
  sub_22BE5CE4C(&qword_27D9134E0, &unk_22C2B8260);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A8B4();
  sub_22BE2018C(v19);
  sub_22C176084();
  sub_22BEE939C();
  sub_22C1901D4(v24, v25, v26);
  if (v20)
  {
    sub_22BE26B64(v19);
  }

  else
  {
    sub_22C18EA24();
    sub_22C18E5BC();
    v27 = sub_22C273E64();
    v36 = v28;
    sub_22BE2315C();
    sub_22C18E5BC();
    v29 = sub_22C273E04();
    v31 = v30;
    v35 = v29;
    sub_22BE200EC();
    sub_22C18E5BC();
    v32 = sub_22C273E74();
    v33 = sub_22BE19E54();
    v34(v33);
    *v22 = v27;
    *(v22 + 8) = v36;
    *(v22 + 16) = v35;
    *(v22 + 24) = v31;
    *(v22 + 32) = v32 & 1;

    sub_22BE26B64(v19);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22C14970C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_22C274154();
  GlobalToolIdentifier.hash(into:)(v5);
  return sub_22C2741A4();
}

uint64_t Action.bundleId.getter()
{
  type metadata accessor for Action(0);
  sub_22BE36160();
  return sub_22BE19454();
}

void Action.bundleId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Action(v3);
  sub_22C18EA48(*(v4 + 20));

  *v1 = v2;
  v1[1] = v0;
}

uint64_t Action.bundleId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Action(v0);
  return sub_22BE18504();
}

uint64_t Action.isConfirmed.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for Action(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t Action.isConfirmed.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Action(v0);
  return sub_22BE18504();
}

uint64_t Action.parameterValues.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Action(v0);
  return sub_22BE18504();
}

uint64_t Action.planEventId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Action(v0);
  return sub_22BE18504();
}

uint64_t Action.tool.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Action(v0);
  sub_22C18E8AC(*(v1 + 36));
}

void Action.tool.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C190048();
  v5 = sub_22C18E9C8();
  v6 = type metadata accessor for Action(v5);
  sub_22C18EA48(*(v6 + 36));

  sub_22C18F2EC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  sub_22C190034();
}

uint64_t Action.tool.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Action(v0);
  return sub_22BE18504();
}

__n128 Action.init(statementId:tool:bundleId:parameterValues:isConfirmed:planEventId:)()
{
  sub_22C190018();
  v24 = v0;
  v25 = v1;
  v23 = v2;
  v22 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v21 = *v10;
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = *(v10 + 32);
  v14 = type metadata accessor for Action(0);
  v15 = (v9 + v14[5]);
  v16 = (v9 + v14[8]);
  sub_22C26E684();
  sub_22BE1834C();
  v17 = sub_22BE196A8();
  v18(v17);
  v19 = v9 + v14[9];
  *v19 = v21;
  *(v19 + 16) = v12;
  *(v19 + 24) = v11;
  *(v19 + 32) = v13;
  *v15 = v7;
  v15[1] = v5;
  *(v9 + v14[7]) = v22;
  *(v9 + v14[6]) = v23;
  *v16 = v24;
  v16[1] = v25;
  sub_22C18FFFC();
  return result;
}

void Action.init(statementId:toolId:bundleId:deviceId:parameterValues:isConfirmed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_22C0E9E48();
  v39 = v27;
  v40 = v28;
  v30 = v29;
  v32 = v31;
  sub_22BE3F3E4();
  v33 = type metadata accessor for Action(0);
  v34 = (v26 + v33[5]);
  v35 = (v26 + v33[8]);
  sub_22C26E684();
  *v35 = 0;
  v35[1] = 0;
  sub_22BE18000();
  v36 = sub_22BE180C8();
  v37(v36);
  sub_22C18FF20(v33[9]);
  *(v38 + 16) = v32;
  *(v38 + 24) = v30;
  *(v38 + 32) = 0;
  *v34 = v25;
  v34[1] = v39;
  *(v26 + v33[7]) = v40;
  *(v26 + v33[6]) = a25;
  sub_22BE3E534();
}

void Action.init(statementId:toolId:bundleId:deviceId:parameterValues:isConfirmed:planEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29)
{
  sub_22C190018();
  v43 = v31;
  v44 = v32;
  v42 = v33;
  v35 = v34;
  sub_22BE3F3E4();
  v36 = type metadata accessor for Action(0);
  v37 = (v30 + v36[5]);
  v38 = (v30 + v36[8]);
  sub_22C26E684();
  sub_22BE1834C();
  v39 = sub_22BE180C8();
  v40(v39);
  sub_22C18FF20(v36[9]);
  *(v41 + 16) = v35;
  *(v41 + 24) = v42;
  *(v41 + 32) = 0;
  *v37 = v29;
  v37[1] = v43;
  *(v30 + v36[7]) = v44;
  *(v30 + v36[6]) = a27;
  *v38 = a28;
  v38[1] = a29;
  sub_22C18FFFC();
}

uint64_t Action.ParameterValue.value.getter()
{
  sub_22BE1B7A4();
  sub_22BE39344();
  return sub_22BE1A964(v0, v1);
}

uint64_t Action.ParameterValue.promptSelection.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Action.ParameterValue(v0);
  return sub_22BE18504();
}

uint64_t Action.ParameterValue.init(value:promptSelection:)()
{
  v0 = sub_22BE28634();
  type metadata accessor for Action.ParameterValue(v0);
  sub_22BE341A4();
  sub_22C26F7C4();
  sub_22BE1A140();
  sub_22BE19DC4(v1, v2, v3, v4);
  sub_22C18E314();
  v5 = sub_22BE18040();
  sub_22C171FA8(v5, v6);
  return sub_22BE2343C();
}

void static Action.ParameterValue.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v2 = sub_22C26F7C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE197B8();
  v4 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE5CE4C(&off_27D909090, &qword_22C2B8270);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE389B4();
  if (static ToolParameterValue.== infix(_:_:)())
  {
    type metadata accessor for Action.ParameterValue(0);
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
        sub_22BE4171C();
        sub_22BE20458(v13);
        sub_22BE1AB74();
        sub_22C272FD4();
        v14 = off_27D909090;
        v15 = sub_22BE19454();
        v14(v15);
        v16 = sub_22BE3C5E4();
        v14(v16);
        sub_22C18DC5C(v0, &qword_27D909088);
        goto LABEL_11;
      }

      v9 = sub_22BE2399C();
      v10(v9, v2);
LABEL_10:
      sub_22C18DC5C(v0, &off_27D909090);
      goto LABEL_11;
    }

    sub_22BE181B0(v0 + v7);
    if (!v8)
    {
      goto LABEL_10;
    }

    sub_22C18DC5C(v0, &qword_27D909088);
  }

LABEL_11:
  sub_22BE1AABC();
}

uint64_t sub_22C14A0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655374706D6F7270 && a2 == 0xEF6E6F697463656CLL)
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

uint64_t sub_22C14A184(char a1)
{
  if (a1)
  {
    return 0x655374706D6F7270;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22C14A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14A0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14A1F4(uint64_t a1)
{
  v2 = sub_22C1760D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14A230(uint64_t a1)
{
  v2 = sub_22C1760D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Action.ParameterValue.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D9134E8, &qword_22C2B8278);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C1760D8();
  sub_22BE33B8C(&type metadata for Action.ParameterValue.CodingKeys, v3, v2);
  v4 = sub_22C18E810();
  type metadata accessor for ToolParameterValue(v4);
  sub_22C18EC40();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE31254();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for Action.ParameterValue(0);
    sub_22BE323A4();
    sub_22C26F7C4();
    sub_22BE4171C();
    sub_22BE20458(v6);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273F34();
  }

  v7 = sub_22BE37508();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Action.ParameterValue.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v25 = v4;
  v5 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE1AED0();
  type metadata accessor for ToolParameterValue(v7);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  sub_22BE3668C(v9);
  v27 = sub_22BE5CE4C(&qword_27D913508, &qword_22C2B8280);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE24FD8();
  v12 = type metadata accessor for Action.ParameterValue(v11);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE19338();
  v15 = *(v14 + 28);
  sub_22C26F7C4();
  sub_22BE3AE2C();
  sub_22BE19DC4(v16, v17, v18, v19);
  sub_22BE2018C(v3);
  sub_22C1760D8();
  sub_22BE3CCD4();
  sub_22C18E60C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v3);
    sub_22C18DC5C(v1 + v15, &qword_27D909088);
  }

  else
  {
    sub_22C18EC40();
    sub_22BE20458(v20);
    sub_22BEE92A4();
    sub_22BE36350();
    sub_22C273EB4();
    sub_22C18E314();
    sub_22C171FA8(v26, v1);
    sub_22BE33FE4();
    sub_22BE4171C();
    sub_22BE20458(v21);
    sub_22C18E9A0();
    sub_22BE362A8();
    sub_22C273E44();
    v22 = sub_22BEE9178();
    v23(v22, v27);
    sub_22C18FCC8();
    sub_22BE2343C();
    v24 = sub_22C1088E8();
    sub_22BE1A964(v24, v25);
    sub_22BE26B64(v3);
    sub_22C0E9848();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C14A6D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7269666E6F437369 && a2 == 0xEB0000000064656DLL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6576456E616C70 && a2 == 0xEB00000000644974;
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

uint64_t sub_22C14A8D8(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x7269666E6F437369;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
      result = 0x6E6576456E616C70;
      break;
    case 5:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14A9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14A6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14AA00(uint64_t a1)
{
  v2 = sub_22C17612C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14AA3C(uint64_t a1)
{
  v2 = sub_22C17612C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Action.encode(to:)()
{
  sub_22BE2BB34();
  sub_22C18E9F8();
  sub_22BE5CE4C(&qword_27D913520, &qword_22C2B8288);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE23094();
  v3 = sub_22C17612C();
  sub_22BE25524(&type metadata for Action.CodingKeys, v4, v3);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22C18F958();
  sub_22BE41644();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for Action(0);
    sub_22C18E864();
    sub_22C11FDEC(v6);
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22BE1C270();
    sub_22C273F64();
    sub_22BE32460(v1[7]);
    sub_22BEE9478();
    sub_22BE5CE4C(&qword_27D913530, &qword_22C2B8290);
    sub_22C176180();
    sub_22BE41644();
    sub_22C273FA4();
    sub_22C11FDEC(v1[8]);
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22C18F490(v1[9]);
    sub_22C18F67C();
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

void Action.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE294E0();
  sub_22BE5CE4C(&qword_27D913548, &qword_22C2B8298);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BE1AED0();
  v19 = type metadata accessor for Action(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3FF7C(v7);
  sub_22C18E560(v2);
  sub_22C17612C();
  sub_22BE489BC();
  sub_22C18FF9C();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    LOBYTE(v21) = 0;
    sub_22BE18F44();
    sub_22BE20458(v8);
    sub_22C18FDF0();
    sub_22C18F0E8();
    sub_22C273EB4();
    v9 = sub_22BE354DC();
    v10(v9);
    sub_22C18F620(1);
    sub_22C18F0E8();
    v11 = sub_22C273E04();
    sub_22C18FA48(v11, v12, v19[5]);
    sub_22C18F620(2);
    sub_22C18F0E8();
    *(v20 + v19[6]) = sub_22C273E74() & 1;
    sub_22BE5CE4C(&qword_27D913530, &qword_22C2B8290);
    sub_22BEE9478();
    sub_22C17623C();
    sub_22BE40660();
    sub_22C18F0E8();
    sub_22C273EB4();
    *(v20 + v19[7]) = v21;
    sub_22C18F620(4);
    sub_22C18F0E8();
    v13 = sub_22C273E04();
    sub_22C18FA48(v13, v14, v19[8]);
    sub_22C18F67C();
    sub_22BEB9D44();
    sub_22BE40660();
    sub_22C18F0E8();
    sub_22C273EB4();
    v15 = sub_22C18E944();
    v16(v15);
    sub_22C18F234(v21);
    v17 = sub_22BE1AB74();
    sub_22BE1A964(v17, v18);
    sub_22BE26B64(v2);
    sub_22BE1C3A4();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t ActionCancellation.cancelledActionStatementId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ActionCancellation(v0);
  return sub_22BE18504();
}

uint64_t ActionCancellation.init(statementId:cancelledActionStatementId:)()
{
  sub_22BE28634();
  v2 = sub_22C26E684();
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v2);
  sub_22BE18040();
  sub_22BE2343C();
  type metadata accessor for ActionCancellation(0);
  sub_22C18FA78();
  v8 = *(v7 + 32);

  return v8(v1 + v6, v0, v2);
}

uint64_t sub_22C14B2AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022C2DA750 == a2)
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

uint64_t sub_22C14B380(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22C14B3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14B2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14B3F4(uint64_t a1)
{
  v2 = sub_22C1762F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14B430(uint64_t a1)
{
  v2 = sub_22C1762F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ActionCancellation.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913560, &qword_22C2B82A0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C1762F8();
  sub_22BE33B8C(&type metadata for ActionCancellation.CodingKeys, v3, v2);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BE38608();
  sub_22C18E60C();
  sub_22BE26108();
  sub_22C273F34();
  if (!v0)
  {
    type metadata accessor for ActionCancellation(0);
    sub_22C18E60C();
    sub_22BE26108();
    sub_22C273FA4();
  }

  v5 = sub_22BE37508();
  v6(v5);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void ActionCancellation.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  sub_22C18F934(v6);
  sub_22C26E684();
  sub_22BE1A3D8();
  v28 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BE294E0();
  v9 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE20168(v11, v28);
  sub_22BE5CE4C(&qword_27D913570, &qword_22C2B82A8);
  sub_22BE179D8();
  v30 = v12;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE1AED0();
  v15 = type metadata accessor for ActionCancellation(v14);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE1955C();
  sub_22BE3AE2C();
  sub_22BE19DC4(v17, v18, v19, v20);
  v21 = sub_22BE260B8();
  sub_22BE26950(v21, v22);
  sub_22C1762F8();
  sub_22BE489BC();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v5);
    sub_22C18DC5C(v2, &qword_27D907240);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v23);
    sub_22C18FF9C();
    sub_22BE385D8();
    sub_22C273E44();
    sub_22BE1B18C();
    sub_22BE2343C();
    sub_22BE33FE4();
    sub_22C18FF9C();
    sub_22BE385D8();
    sub_22C273EB4();
    v24 = sub_22C11FDE0();
    v25(v24, v30);
    (*(v29 + 32))(v2 + *(v15 + 20), v3, v1);
    v26 = sub_22C18F91C();
    sub_22BE1A964(v26, v27);
    sub_22BE26B64(v5);
    sub_22BE291DC();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t sub_22C14B91C()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t ClientAction.toolId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ClientAction(v0);
  return sub_22BE18504();
}

uint64_t ClientAction.parameters.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ClientAction(v0);
  return sub_22BE18504();
}

uint64_t sub_22C14BA30()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

void ClientAction.clientQueryId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for ClientAction(v3);
  sub_22C18EA48(*(v4 + 28));

  *v1 = v2;
  v1[1] = v0;
}

uint64_t ClientAction.clientQueryId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ClientAction(v0);
  return sub_22BE18504();
}

uint64_t sub_22C14BAF8()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

void sub_22C14BB44()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  sub_22C18EA48(*(v5 + 32));

  *v1 = v2;
  v1[1] = v0;
}

uint64_t ClientAction.planEventId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ClientAction(v0);
  return sub_22BE18504();
}

uint64_t ClientAction.shimParameters.getter()
{
  type metadata accessor for ClientAction(0);
}

void ClientAction.shimParameters.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for ClientAction(v2) + 36);

  *(v1 + v3) = v0;
}

uint64_t ClientAction.shimParameters.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for ClientAction(v0);
  return sub_22BE18504();
}

void ClientAction.init(statementId:toolId:parameters:clientQueryId:planEventId:)()
{
  sub_22BE19460();
  v56 = v0;
  v57 = v1;
  v54 = v2;
  v55 = v3;
  v5 = v4;
  v52 = v6;
  v51 = v7;
  v9 = v8;
  v53 = v10;
  v63 = sub_22C272874();
  sub_22BE179D8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v62 = v14;
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v49 = v18 - v17;
  v50 = v19;
  (*(v16 + 16))();
  sub_22BE5CE4C(&qword_27D913578, &unk_22C2B82B0);
  v20 = sub_22C273D04();
  v21 = 0;
  v64 = v5;
  v22 = v5 + 64;
  sub_22BE185B4();
  v25 = v24 & v23;
  v58 = (v26 + 63) >> 6;
  v59 = v22;
  v60 = v27 + 8;
  v61 = v27;
  v28 = v12;
  if (v25)
  {
    while (1)
    {
      v29 = __clz(__rbit64(v25));
      v65 = (v25 - 1) & v25;
LABEL_8:
      v32 = v29 | (v21 << 6);
      v33 = (*(v64 + 48) + 16 * v32);
      v66 = v33[1];
      v67 = *v33;
      v34 = v28[2];
      v22 = v62;
      v34(v62, *(v64 + 56) + v28[9] * v32, v63);
      sub_22BE5CE4C(&qword_27D907590, &qword_22C275618);
      v35 = *(type metadata accessor for ClientAction.ShimParameter(0) - 8);
      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_22C275160;
      v34(v37 + v36, v62, v63);
      swift_storeEnumTagMultiPayload();
      v38 = v28[1];

      v39 = sub_22BE291B0();
      v38(v39);
      *(v60 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v20 = v61;
      v40 = (v61[6] + 16 * v32);
      *v40 = v67;
      v40[1] = v66;
      *(v61[7] + 8 * v32) = v37;
      v41 = v61[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        break;
      }

      v61[2] = v43;
      v25 = v65;
      if (!v65)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v58)
      {
        sub_22BE236D4();
        (*(v44 + 8))(v9, v50);
        v45 = type metadata accessor for ClientAction(0);
        v46 = (v53 + v45[7]);
        v47 = (v53 + v45[8]);
        (*(v22 + 32))(v53, v49, v50);
        v48 = (v53 + v45[5]);
        *v48 = v51;
        v48[1] = v52;
        *(v53 + v45[6]) = v64;
        *(v53 + v45[9]) = v20;
        *v46 = v54;
        v46[1] = v55;
        *v47 = v56;
        v47[1] = v57;
        sub_22BE1AABC();
        return;
      }

      v31 = *(v59 + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v65 = (v31 - 1) & v31;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void ClientAction.init(statementId:toolId:parameters:shimParameters:clientQueryId:planEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22C0E9E48();
  v38 = v27;
  v39 = v28;
  v37 = v29;
  v31 = v30;
  sub_22BE3F3E4();
  v32 = type metadata accessor for ClientAction(0);
  v33 = (v26 + v32[7]);
  v34 = (v26 + v32[8]);
  sub_22C26E684();
  sub_22BE1834C();
  v35 = sub_22BE180C8();
  v36(v35);
  sub_22C18FF20(v32[5]);
  *(v26 + v32[6]) = v25;
  *(v26 + v32[9]) = v31;
  *v33 = v37;
  v33[1] = v38;
  *v34 = v39;
  v34[1] = a25;
  sub_22BE3E534();
}

void ClientAction.init(statementId:toolId:shimParameters:clientQueryId:planEventId:)()
{
  sub_22C0E9E48();
  v19 = v3;
  v20 = v4;
  v18 = v5;
  v7 = v6;
  sub_22C18FDA4();
  v9 = v8;
  sub_22C14C214(v10);
  v11 = sub_22BE2021C();
  v12 = type metadata accessor for ClientAction(v11);
  v13 = (v9 + v12[7]);
  v14 = (v9 + v12[8]);
  sub_22C26E684();
  sub_22BE1834C();
  v15 = sub_22BE191C0();
  v16(v15);
  v17 = (v9 + v12[5]);
  *v17 = v2;
  v17[1] = v1;
  *(v9 + v12[6]) = 0;
  *(v9 + v12[9]) = v0;
  *v13 = v7;
  v13[1] = v18;
  *v14 = v19;
  v14[1] = v20;
  sub_22BE3E534();
}

uint64_t sub_22C14C214(uint64_t a1)
{
  v2 = type metadata accessor for ClientAction.ShimParameter(0);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_22C272874();
  MEMORY[0x28223BE20](v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - v11;
  v13 = a1 + 64;
  v12 = *(a1 + 64);
  v48 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v44 = v10;
  v47 = (v10 + 32);

  v19 = 0;
  while (1)
  {
    v20 = v19;
    if (!v16)
    {
      break;
    }

LABEL_9:
    v21 = __clz(__rbit64(v16)) | (v19 << 6);
    v22 = *(a1 + 56);
    v23 = (*(a1 + 48) + 16 * v21);
    v24 = v23[1];
    v52 = *v23;
    v53 = v24;
    v25 = *(v22 + 8 * v21);
    if (*(v25 + 16))
    {
      v26 = a1;
      v27 = v49;
      sub_22BE1A964(v25 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v49);
      if (!swift_getEnumCaseMultiPayload())
      {
        (*v47)(v6, v27, v7);
        sub_22BE19DC4(v6, 0, 1, v7);

        a1 = v26;
        goto LABEL_15;
      }

      sub_22C171FFC();
      a1 = v26;
    }

    else
    {
    }

    sub_22BE19DC4(v6, 1, 1, v7);

LABEL_15:
    v16 &= v16 - 1;
    if (sub_22BE1AEA8(v6, 1, v7) == 1)
    {

      result = sub_22C18DC5C(v6, &qword_27D907400);
    }

    else
    {
      v28 = *v47;
      (*v47)(v46, v6, v7);
      v43 = v28;
      v28(v45, v46, v7);
      v29 = v48[2];
      if (v48[3] <= v29)
      {
        sub_22C250478(v29 + 1, 1);
      }

      v30 = v54;
      sub_22C274154();
      sub_22C272F44();
      result = sub_22C2741A4();
      v31 = v30 + 64;
      v48 = v30;
      v32 = -1 << *(v30 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v30 + 64 + 8 * (v33 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v32) >> 6;
        while (++v34 != v37 || (v36 & 1) == 0)
        {
          v38 = v34 == v37;
          if (v34 == v37)
          {
            v34 = 0;
          }

          v36 |= v38;
          v39 = *(v31 + 8 * v34);
          if (v39 != -1)
          {
            v35 = __clz(__rbit64(~v39)) + (v34 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v35 = __clz(__rbit64((-1 << v33) & ~*(v30 + 64 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v40 = v48;
      v41 = (v48[6] + 16 * v35);
      v42 = v53;
      *v41 = v52;
      v41[1] = v42;
      result = v43(v40[7] + *(v44 + 72) * v35, v45, v7);
      ++v40[2];
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return v48;
    }

    v16 = *(v13 + 8 * v19);
    ++v20;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void static ClientAction.ShimParameter.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE33690();
  sub_22C272874();
  sub_22BE179D8();
  v47 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v6 = sub_22BE183BC();
  type metadata accessor for ClientAction.ShimParameter(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v8);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v9);
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v10);
  sub_22BE1C17C();
  v11 = sub_22BE5CE4C(&qword_27D913580, &qword_22C2B82C0);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B72C();
  v14 = (v0 + *(v13 + 56));
  sub_22BE1A964(v2, v0);
  v15 = sub_22BE25C08();
  sub_22BE1A964(v15, v16);
  sub_22BE33FD8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE3BF68();
      v32 = sub_22BE19454();
      sub_22BE1A964(v32, v33);
      v35 = *v1;
      v34 = v1[1];
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_22;
      }

      if (v35 != *v14 || v34 != v14[1])
      {
        v37 = sub_22BE431C0();
        sub_22BE3C8EC(v37, v38, v39);
      }

      goto LABEL_29;
    case 2u:
      sub_22BE3BF68();
      v21 = sub_22BE29264();
      sub_22BE1A964(v21, v22);
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      static PersonQuery.== infix(_:_:)();

      goto LABEL_30;
    case 3u:
      sub_22BE3BF68();
      v23 = sub_22BE41FB4();
      sub_22BE1A964(v23, v24);
      v26 = *v3;
      v25 = v3[1];
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v27 = v14[1];
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_27;
          }

          if (v26 != *v14 || v25 != v27)
          {
            v29 = sub_22BE35838();
            if ((sub_22BE3C8EC(v29, v30, v31) & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (v27)
        {
LABEL_27:

          goto LABEL_30;
        }

        v45 = sub_22BE1AB1C();
        sub_22BE96740(v45, v46);

LABEL_29:

LABEL_30:
        sub_22BE3C694();
      }

      else
      {
LABEL_21:

LABEL_22:

LABEL_23:
        sub_22C18DC5C(v0, &qword_27D913580);
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
    default:
      sub_22BE3BF68();
      v17 = sub_22BE1A6BC();
      sub_22BE1A964(v17, v18);
      sub_22BE1C2A0();
      if (swift_getEnumCaseMultiPayload())
      {
        v19 = sub_22BEC0304();
        v20(v19);
        goto LABEL_23;
      }

      sub_22C18F338();
      v40 = sub_22BE25C08();
      v41(v40);
      sub_22C272844();
      v42 = *(v47 + 8);
      v43 = sub_22BE25C08();
      v42(v43);
      v44 = sub_22BE392D4();
      v42(v44);
      goto LABEL_30;
  }
}

void static PersonQuery.== infix(_:_:)()
{
  sub_22BE3C358();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 17);
  v12 = *(v2 + 24);
  v11 = *(v2 + 32);
  if (v3)
  {
    if (!v8)
    {
      goto LABEL_29;
    }

    v13 = *v0 == *v2 && v3 == v8;
    if (!v13 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v8)
  {
    goto LABEL_29;
  }

  if (v4 == 4)
  {
    if (v9 != 4 || ((v5 ^ v10) & 1) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v9 == 4)
    {
      goto LABEL_29;
    }

    v14 = v4 == 3 ? v9 == 3 : v4 == v9;
    v15 = !v14;
    if ((v15 | v5 ^ v10))
    {
      goto LABEL_29;
    }
  }

  if (v7 && v11 && (v6 != v12 || v7 != v11))
  {
    v17 = sub_22BE19454();
    sub_22C18F3BC(v17);
  }

LABEL_29:
  sub_22BE267B8();
}

void static ClientAction.PhotosCandidates.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    if (v4)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v5 = *a1 == *a2 && v3 == v4;
    if (v5 || (sub_22C274014() & 1) != 0)
    {
LABEL_8:
      v6 = sub_22BE19454();

      sub_22BE96740(v6, v7);
    }
  }
}

uint64_t sub_22C14CCE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7551676E69727473 && a2 == 0xEB00000000797265;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75516E6F73726570 && a2 == 0xEB00000000797265;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000022C2DA5C0 == a2)
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

uint64_t sub_22C14CE54(char a1)
{
  result = 0x6465766C6F736572;
  switch(a1)
  {
    case 1:
      v3 = 0x676E69727473;
      goto LABEL_4;
    case 2:
      v3 = 0x6E6F73726570;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7551000000000000;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14CCE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14CF0C(uint64_t a1)
{
  v2 = sub_22C17636C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14CF48(uint64_t a1)
{
  v2 = sub_22C17636C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14CF84(uint64_t a1)
{
  v2 = sub_22C176468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14CFC0(uint64_t a1)
{
  v2 = sub_22C176468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14CFFC(uint64_t a1)
{
  v2 = sub_22C1763C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14D038(uint64_t a1)
{
  v2 = sub_22C1763C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14D074(uint64_t a1)
{
  v2 = sub_22C1765B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14D0B0(uint64_t a1)
{
  v2 = sub_22C1765B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14D0EC(uint64_t a1)
{
  v2 = sub_22C176510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14D128(uint64_t a1)
{
  v2 = sub_22C176510();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.ShimParameter.encode(to:)()
{
  sub_22BE19130();
  v51 = v1;
  v4 = v3;
  sub_22BE5CE4C(&qword_27D913588, &qword_22C2B82C8);
  sub_22BE179D8();
  v49 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE33FF0(v7, v48);
  sub_22BE5CE4C(&qword_27D913590, &qword_22C2B82D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D913598, &qword_22C2B82D8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D9135A0, &qword_22C2B82E0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v11);
  sub_22BE197B8();
  type metadata accessor for ClientAction.ShimParameter(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE188B0();
  sub_22BE5CE4C(&qword_27D9135A8, &qword_22C2B82E8);
  sub_22BE179D8();
  v52 = v13;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE25CD0();
  sub_22BE31088(v4);
  sub_22C17636C();
  sub_22BEC046C();
  sub_22C274234();
  sub_22BE3BF68();
  sub_22BE1A964(v51, v2);
  sub_22BE33BE8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v42 = *v2;
      v41 = *(v2 + 8);
      sub_22C18F9DC();
      sub_22C176510();
      sub_22C18E6C4();
      sub_22C273EE4();
      v53 = v42;
      v54 = v41;
      sub_22C176564();
      sub_22C190174(&v53, v43);
      v44 = sub_22C18E3C8();
      v45(v44);
      v46 = sub_22BE336B4();
      v47(v46, v52);
      goto LABEL_6;
    case 2u:
      v25 = *(v2 + 8);
      v50 = *v2;
      v26 = *(v2 + 16);
      v27 = *(v2 + 17);
      v29 = *(v2 + 24);
      v28 = *(v2 + 32);
      sub_22C18F8BC();
      sub_22C176468();
      sub_22C18E6C4();
      sub_22C273EE4();
      v53 = v50;
      v54 = v25;
      LOBYTE(v55) = v26;
      BYTE1(v55) = v27;
      v56 = v29;
      v57 = v28;
      sub_22C1764BC();
      sub_22C273FA4();
      v30 = sub_22BE37490();
      v31(v30);
      v32 = sub_22BE336B4();
      v33(v32, v52);

      goto LABEL_6;
    case 3u:
      v35 = *v2;
      v34 = *(v2 + 8);
      v36 = *(v2 + 16);
      sub_22C18F940();
      sub_22C1763C0();
      sub_22C18E6C4();
      sub_22C273EE4();
      v53 = v35;
      v54 = v34;
      v55 = v36;
      sub_22C176414();
      sub_22C273FA4();
      v37 = sub_22BEC0304();
      v38(v37, v49);
      v39 = sub_22BE336B4();
      v40(v39, v52);

LABEL_6:

      break;
    default:
      sub_22C18F458();
      v15 = sub_22BE29264();
      v16(v15);
      LOBYTE(v53) = 0;
      sub_22C1765B8();
      sub_22BE261D0();
      sub_22C273EE4();
      sub_22BE18720();
      sub_22BE20458(v17);
      sub_22C190174(v0, v18);
      v19 = sub_22BE32D8C();
      v20(v19);
      v21 = sub_22BE1A6BC();
      v22(v21);
      v23 = sub_22BE38A68();
      v24(v23);
      break;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ClientAction.ShimParameter.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v70 = v6;
  v69 = sub_22BE5CE4C(&qword_27D9135F0, &qword_22C2B82F0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22C18E344(v8);
  sub_22BE5CE4C(&qword_27D9135F8, &qword_22C2B82F8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22C18E504(v10);
  sub_22BE5CE4C(&qword_27D913600, &qword_22C2B8300);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D913608, &qword_22C2B8308);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  sub_22BEC07BC(v13);
  sub_22BE5CE4C(&qword_27D913610, &qword_22C2B8310);
  sub_22BE179D8();
  v68 = v14;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE1AED0();
  v67 = type metadata accessor for ClientAction.ShimParameter(v16);
  sub_22BE18000();
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v18);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v19);
  sub_22BE23858();
  MEMORY[0x28223BE20](v20);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v21);
  sub_22BE26800();
  sub_22BE203C8();
  sub_22C17636C();
  sub_22BE489BC();
  sub_22C274214();
  if (!v1)
  {
    v66 = v0;
    v22 = v69;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v24 != v23 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v65 = *(v30 + v29);
      sub_22C18F7D4(v25, v26, v27, v28, v29);
      sub_22BE7C5C0();
      v34 = v33;
      v36 = v35;
      swift_unknownObjectRelease();
      if (v34 == v36 >> 1)
      {
        switch(v65)
        {
          case 1:
            sub_22C18F9DC();
            sub_22C176510();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C1766B4();
            sub_22BE42748();
            sub_22C273EB4();
            sub_22C18F7A4();
            swift_unknownObjectRelease();
            v59 = sub_22BE2B7E8();
            v60(v59);
            v61 = sub_22C18E758();
            v62(v61);
            v22 = v3;
            *v3 = v71;
            goto LABEL_14;
          case 2:
            sub_22C18F8BC();
            sub_22C176468();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C176660();
            sub_22BE42748();
            sub_22C273EB4();
            sub_22C18F7A4();
            swift_unknownObjectRelease();
            v46 = sub_22BE2B7E8();
            v47(v46);
            v48 = sub_22C18E758();
            v49(v48);
            sub_22C18F470(v72, v71);
            goto LABEL_14;
          case 3:
            sub_22C18F940();
            sub_22C1763C0();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C17660C();
            sub_22BE42748();
            sub_22C273EB4();
            sub_22C18F7A4();
            swift_unknownObjectRelease();
            v50 = sub_22BE2B7E8();
            v51(v50);
            v52 = sub_22C18E758();
            v53(v52);
            v22 = v66;
            *v66 = v71;
            v66[1].n128_u64[0] = v72;
LABEL_14:
            swift_storeEnumTagMultiPayload();
            sub_22C18E1FC();
            sub_22C171FA8(v22, v2);
            v58 = v5;
            break;
          default:
            sub_22C1765B8();
            sub_22BE27168();
            sub_22C18F0E8();
            sub_22C273DE4();
            sub_22C272874();
            sub_22BE18720();
            sub_22BE20458(v37);
            sub_22BE1C1A4();
            sub_22BE36350();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v54 = sub_22BE2B7E8();
            v55(v54);
            v56 = sub_22C11FDE0();
            v57(v56, v68);
            swift_storeEnumTagMultiPayload();
            sub_22C18E1FC();
            sub_22C171FA8(v70, v2);
            v58 = v5;
            break;
        }

        sub_22C18E1FC();
        v63 = sub_22BE336E8();
        sub_22C171FA8(v63, v64);
        v45 = v58;
        goto LABEL_10;
      }
    }

    v38 = sub_22C273B34();
    sub_22BE196B4(v38, MEMORY[0x277D841A0]);
    v40 = v39;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v40 = v67;
    sub_22C273DF4();
    sub_22BE1A918();
    sub_22BE18994();
    v41 = sub_22BE38608();
    v42(v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = sub_22C11FDE0();
    v44(v43, v68);
  }

  v45 = v5;
LABEL_10:
  sub_22BE26B64(v45);
  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C14E000(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_22C14E08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14E000(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C14E0B8(uint64_t a1)
{
  v2 = sub_22C176708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14E0F4(uint64_t a1)
{
  v2 = sub_22C176708();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.StringQuery.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F3A4();
  sub_22BE5CE4C(&qword_27D913630, &qword_22C2B8318);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE1B01C();
  sub_22BE3AD08();
  v1 = sub_22C176708();
  sub_22BE3A014(&type metadata for ClientAction.StringQuery.CodingKeys, v2, v1);
  sub_22C18E100();
  sub_22C273F54();
  v3 = sub_22BE35CD8();
  v4(v3);
  sub_22BE22978();
  sub_22BE18478();
}

void ClientAction.PhotosCandidates.searchQuery.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_22C14E334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E457465737361 && a2 == 0xED00007365697469)
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

uint64_t sub_22C14E408(char a1)
{
  if (a1)
  {
    return 0x746E457465737361;
  }

  else
  {
    return 0x7551686372616573;
  }
}

uint64_t sub_22C14E45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14E334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14E484(uint64_t a1)
{
  v2 = sub_22C17675C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14E4C0(uint64_t a1)
{
  v2 = sub_22C17675C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.PhotosCandidates.encode(to:)()
{
  sub_22BE19130();
  sub_22C18FEB8();
  sub_22BE5CE4C(&qword_27D913648, &unk_22C2B8328);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  v2 = sub_22C18FE98();
  sub_22BE25318(v2);
  sub_22C17675C();
  sub_22BE23550();
  sub_22BEE94BC();
  sub_22C274234();
  sub_22C18E4A8();
  sub_22BE1BB58();
  sub_22C273EF4();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C1767B0();
    sub_22C18F608();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v3 = sub_22BE25EE4();
  v4(v3);
  sub_22BE35D48();
  sub_22BE18478();
}

void ClientAction.PhotosCandidates.init(from:)()
{
  sub_22BE19130();
  sub_22C18F140();
  sub_22BE5CE4C(&qword_27D913658, &qword_22C2B8338);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE234F4();
  sub_22BE3763C();
  v3 = sub_22C17675C();
  sub_22BE33A2C(&type metadata for ClientAction.PhotosCandidates.CodingKeys, v4, v3);
  if (v1)
  {
    sub_22BE26B64(v0);
  }

  else
  {
    sub_22C18E4BC();
    sub_22C273E04();
    sub_22C18F4BC();
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22BE33FE4();
    sub_22C176864();
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

uint64_t sub_22C14E788(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6576456E616C70 && a2 == 0xEB00000000644974;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x617261506D696873 && a2 == 0xEE0073726574656DLL)
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

uint64_t sub_22C14E990(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x64496C6F6F74;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x7551746E65696C63;
      break;
    case 4:
      result = 0x6E6576456E616C70;
      break;
    case 5:
      result = 0x617261506D696873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C14EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14E788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14EAC4(uint64_t a1)
{
  v2 = sub_22C176918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14EB00(uint64_t a1)
{
  v2 = sub_22C176918();

  return MEMORY[0x2821FE720](a1, v2);
}

void ClientAction.encode(to:)()
{
  sub_22BE2BB34();
  sub_22C18E9F8();
  sub_22BE5CE4C(&qword_27D913660, &unk_22C2B8340);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE23094();
  v3 = sub_22C176918();
  sub_22BE25524(&type metadata for ClientAction.CodingKeys, v4, v3);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22BE41644();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for ClientAction(0);
    sub_22C18E864();
    sub_22C11FDEC(v6);
    sub_22BF0AF1C();
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE860DC();
    sub_22BE37DD4();
    sub_22BE41644();
    sub_22C273FA4();
    sub_22C11FDEC(*(v1 + 28));
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22C11FDEC(*(v1 + 32));
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22BE5CE4C(&qword_27D913670, &qword_22C2B8350);
    sub_22C176A20(&unk_27D913678, sub_22C17696C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_22BE37DD4();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v7 = sub_22BE37A10();
  v8(v7);
  sub_22BEE93D4();
}

void ClientAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v22 = v21;
  sub_22C18F8A4(v23);
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v24);
  sub_22BE294E0();
  sub_22BE5CE4C(&qword_27D913690, &qword_22C2B8358);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BE1AED0();
  v52 = type metadata accessor for ClientAction(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  sub_22BE3668C(v28);
  sub_22BE31088(v22);
  sub_22C176918();
  sub_22BE489BC();
  sub_22C274214();
  if (v20)
  {
    sub_22BE26B64(v22);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_22BE18F44();
    sub_22BE20458(v29);
    sub_22C273EB4();
    v30 = sub_22BE354DC();
    v31(v30);
    sub_22C18E9E0(1);
    v32 = sub_22C273E64();
    sub_22C18FA48(v32, v33, v52[5]);
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    sub_22C18F8C8();
    sub_22BE862F8();
    v34 = sub_22BE35E60();
    sub_22C1900BC(v34, v35, v36, v37, v38);
    *(v53 + v52[6]) = a10;
    sub_22C18E9E0(3);
    v39 = sub_22C273E04();
    sub_22C18FA48(v39, v40, v52[7]);
    sub_22C18E9E0(4);
    v41 = sub_22C273E04();
    sub_22C18FA48(v41, v42, v52[8]);
    sub_22BE5CE4C(&qword_27D913670, &qword_22C2B8350);
    sub_22C176A20(&unk_27D913698, sub_22C176A8C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v43 = sub_22BE35E60();
    sub_22C1900BC(v43, v44, v45, v46, v47);
    v48 = sub_22BE416AC();
    v49(v48);
    *(v53 + v52[9]) = a10;
    v50 = sub_22BE1AB74();
    sub_22BE1A964(v50, v51);
    sub_22BE26B64(v22);
    sub_22BE268B8();
    sub_22C171FFC();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void __swiftcall PersonQuery.init(name:handle:isMe:id:)(IntelligenceFlowPlannerSupport::PersonQuery *__return_ptr retstr, Swift::String_optional name, IntelligenceFlowPlannerSupport::PersonQuery::Handle_optional handle, Swift::Bool isMe, Swift::String_optional id)
{
  v5 = *handle.value.kind.value;
  retstr->name = name;
  retstr->handle.value.kind.value = v5;
  retstr->isMe = isMe;
  retstr->id = id;
}

uint64_t PersonQuery.Handle.init(personValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C2727B4();
  v5 = [v4 personHandle];

  if (v5)
  {
    v6 = [v5 type];

    sub_22C2727C4();
    sub_22BE18000();
    result = (*(v7 + 8))(a1);
    if (v6 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    if (v6 == 1)
    {
      v9 = 1;
    }
  }

  else
  {
    sub_22C2727C4();
    sub_22BE18000();
    result = (*(v10 + 8))(a1);
    v9 = 3;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_22C14F400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D697465636166 && a2 == 0xE800000000000000)
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

uint64_t sub_22C14F510(char a1)
{
  if (!a1)
  {
    return 0x656E6F6870;
  }

  if (a1 == 1)
  {
    return 0x6C69616D65;
  }

  return 0x656D697465636166;
}

uint64_t sub_22C14F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C14F400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C14F590(uint64_t a1)
{
  v2 = sub_22C176B40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F5CC(uint64_t a1)
{
  v2 = sub_22C176B40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14F608(uint64_t a1)
{
  v2 = sub_22C176BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F644(uint64_t a1)
{
  v2 = sub_22C176BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14F680(uint64_t a1)
{
  v2 = sub_22C176B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F6BC(uint64_t a1)
{
  v2 = sub_22C176B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C14F6F8(uint64_t a1)
{
  v2 = sub_22C176C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C14F734(uint64_t a1)
{
  v2 = sub_22C176C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonQuery.Handle.Kind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  sub_22C18F4C8();
  sub_22BE5CE4C(&qword_27D9136B0, &qword_22C2B8360);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE20168(v27, v37);
  sub_22BE5CE4C(&qword_27D9136B8, &qword_22C2B8368);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE181D0(v29, v38);
  sub_22BE5CE4C(&qword_27D9136C0, &qword_22C2B8370);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D9136C8, &qword_22C2B8378);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE234F4();
  v32 = *v24;
  sub_22BE31088(v25);
  sub_22C176B40();
  sub_22BE48270();
  sub_22C274234();
  if (v32)
  {
    if (v32 == 1)
    {
      sub_22BE33FE4();
      sub_22C176BE8();
    }

    else
    {
      sub_22BE39E24();
      sub_22C176B94();
    }

    sub_22C18E484();
    sub_22C273EE4();
  }

  else
  {
    sub_22C176C3C();
    sub_22C18E484();
    sub_22C273EE4();
  }

  v33 = sub_22BE2399C();
  v34(v33);
  v35 = sub_22BE33560();
  v36(v35);
  sub_22C18FEDC();
  sub_22BE18478();
}

uint64_t sub_22C14FA54()
{
  sub_22BE25DAC();
  v0 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v0);
  return sub_22C2741A4();
}

void PersonQuery.Handle.Kind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BE19130();
  v25 = v24;
  v67 = v26;
  sub_22BE5CE4C(&qword_27D9136F0, &qword_22C2B8380);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  sub_22BE3BF90(v28);
  sub_22BE5CE4C(&qword_27D9136F8, &qword_22C2B8388);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE25CD0();
  v30 = sub_22BE5CE4C(&qword_27D913700, &qword_22C2B8390);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE23E58();
  sub_22BE5CE4C(&qword_27D913708, &qword_22C2B8398);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1B01C();
  v33 = v25[4];
  sub_22BE41E84(v25);
  sub_22C176B40();
  sub_22BE232E4();
  sub_22BE40618();
  sub_22C274214();
  if (!v23)
  {
    v68 = v25;
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
      sub_22C18FFD8();
      v45 = v44;
      swift_unknownObjectRelease();
      if (v33 == v45 >> 1)
      {
        if (v43)
        {
          if (v43 == 1)
          {
            sub_22BE33FE4();
            sub_22C176BE8();
            sub_22C18F928();
            sub_22BE3788C();
            sub_22C273DE4();
            v46 = v67;
            swift_unknownObjectRelease();
            v55 = sub_22BE1B5F8();
            v56(v55);
            v57 = sub_22C18E758();
            v58(v57);
          }

          else
          {
            sub_22BE39E24();
            sub_22C176B94();
            sub_22BE3788C();
            sub_22C273DE4();
            v46 = v67;
            swift_unknownObjectRelease();
            v63 = sub_22BE2684C();
            v64(v63);
            v65 = sub_22C18F5D4();
            v66(v65, v22);
          }
        }

        else
        {
          sub_22C176C3C();
          sub_22BE3788C();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          v59 = sub_22BE2399C();
          v60(v59, v30);
          v61 = sub_22C11FDE0();
          v62(v61, v22);
          v46 = v67;
        }

        *v46 = v43;
        sub_22BE26B64(v68);
        goto LABEL_11;
      }
    }

    v47 = sub_22C273B34();
    sub_22BE196B4(v47, MEMORY[0x277D841A0]);
    v49 = v48;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v49 = &type metadata for PersonQuery.Handle.Kind;
    v50 = sub_22C273DF4();
    sub_22BE1B198(v50);
    sub_22BE1BC24();
    v51 = sub_22C18FE14();
    v52(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v53 = sub_22BE39058();
    v54(v53, v22);
    v25 = v68;
  }

  sub_22BE26B64(v25);
LABEL_11:
  sub_22BE34134();
  sub_22BE18478();
}

uint64_t static PersonQuery.Handle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return 1;
}