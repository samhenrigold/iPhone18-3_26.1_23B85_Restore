uint64_t sub_22C08BA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A58, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08BB18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08BB88(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);

  return sub_22C270774();
}

uint64_t sub_22C08BC14()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E180);
  sub_22BE199F4(v0, qword_27D90E180);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoTypeConversionRequest.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = sub_22BE18E2C();
        sub_22C08BFAC(v7, v8, v9, v10);
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22C08BEF8(v3, v4, v5, v6);
        break;
      case 1:
        sub_22C0B13FC();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C08BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  sub_22C2725A4();
  sub_22BE2C988(&qword_27D90C7B0, MEMORY[0x277D72800], MEMORY[0x277D727F8]);
  return sub_22C2706F4();
}

uint64_t sub_22C08BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C2725A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C138, &qword_22C2CB830);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C988(&qword_27D90C7B0, MEMORY[0x277D72800], MEMORY[0x277D727F8]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C08C2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoTypeConversionRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22C0B1BA0();
  type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3FF64(v5);
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE33FF0(v8, v59);
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE4098C(v10, v60);
  v69 = sub_22C2725A4();
  sub_22BE179D8();
  v66 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22C0B1ABC(v13);
  v14 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE181D0(v16, v61);
  v17 = sub_22BE5CE4C(&qword_27D90C140, &qword_22C290E40);
  sub_22BE1B7B0(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1BC94(v19, v62);
  sub_22C272594();
  sub_22BE35868();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22BE38390();
  v23 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1A8B4();
  v25 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B01C();
  v28 = *(v27 + 56);
  sub_22BE25300();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v29)
  {
    sub_22BE181B0(v2 + v28);
    if (v29)
    {
      sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE3EA80();
    sub_22BE22868();
    sub_22BE181B0(v2 + v28);
    if (!v29)
    {
      sub_22BE47DF4();
      v35(v1, v2 + v28, v0);
      sub_22BE192C8();
      sub_22BE2C988(v36, v37, MEMORY[0x277D727F0]);
      sub_22BE2C254();
      v38 = sub_22C272FD4();
      v39 = *(v21 + 8);
      v40 = sub_22BE1804C();
      v39(v40);
      v41 = sub_22BE2565C();
      v39(v41);
      sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_11:
      type metadata accessor for TranscriptProtoTypeConversionRequest(0);
      v42 = *(v67 + 48);
      sub_22BE27B84();
      sub_22BE22868();
      sub_22C0B1C48();
      sub_22BE27B84();
      sub_22BE22868();
      v43 = sub_22BE406A0();
      if (sub_22BE1AEA8(v43, v44, v69) == 1)
      {
        sub_22BE200F8(v68 + v42);
        if (!v29)
        {
          goto LABEL_18;
        }

        sub_22BE33928(v68, &qword_27D90C138, &qword_22C2CB830);
      }

      else
      {
        sub_22BE22868();
        sub_22BE200F8(v68 + v42);
        if (v29)
        {
          (*(v66 + 8))(v65, v69);
LABEL_18:
          v32 = &qword_27D90C140;
          v33 = &qword_22C290E40;
          v34 = v68;
          goto LABEL_29;
        }

        sub_22BE47DF4();
        v45(v63, v68 + v42, v69);
        sub_22BE23328();
        sub_22BE2C988(v46, v47, MEMORY[0x277D72808]);
        sub_22C0B1B94();
        v48 = sub_22C272FD4();
        v49 = *(v66 + 8);
        v49(v63, v69);
        v49(v65, v69);
        sub_22BE33928(v68, &qword_27D90C138, &qword_22C2CB830);
        if ((v48 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_22C0B1B6C();
      sub_22BE27B84();
      sub_22BE22868();
      sub_22BE3CBC0();
      sub_22BE22868();
      v50 = sub_22BFB1A7C();
      sub_22BE36144(v50, v51);
      if (v29)
      {
        sub_22BE18A84();
        if (v29)
        {
          sub_22BE33928(v64, &qword_27D9090F8, &unk_22C2AE4A0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_22C0B1D14();
        sub_22BE18A84();
        if (!v52)
        {
          sub_22BE18AA8();
          sub_22C0B0868();
          v54 = sub_22BE200E0();
          static TranscriptProtoStatementID.== infix(_:_:)(v54, v55);
          sub_22BE39304();
          sub_22BE39EAC();
          sub_22C0B08BC();
          sub_22BE33928(v64, &qword_27D9090F8, &unk_22C2AE4A0);
          if ((&unk_22C2AE4A0 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_33:
          sub_22C2704B4();
          sub_22BE18E5C();
          v58 = sub_22BE2C988(v56, v57, MEMORY[0x277D216D0]);
          v53 = sub_22BE406DC(v58);
          goto LABEL_31;
        }

        sub_22BE17DB0();
        sub_22C0B08BC();
      }

      v32 = &qword_27D909100;
      v33 = &unk_22C27FD00;
      v34 = v64;
      goto LABEL_29;
    }

    v30 = sub_22BE2565C();
    v31(v30);
  }

  v32 = &qword_27D909130;
  v33 = &unk_22C27FD30;
  v34 = v2;
LABEL_29:
  sub_22BE33928(v34, v32, v33);
LABEL_30:
  v53 = 0;
LABEL_31:
  sub_22BE1C1DC(v53);
  sub_22BE1AABC();
}

uint64_t sub_22C08CBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A50, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08CC64(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08CCD4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);

  return sub_22C270774();
}

uint64_t sub_22C08CD60()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E198);
  sub_22BE199F4(v0, qword_27D90E198);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originStatementId";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoTypeConversionResult.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = sub_22BE18E2C();
        sub_22C08D0F8(v7, v8, v9, v10);
        break;
      case 2:
        v3 = sub_22BE18E2C();
        sub_22C08D044(v3, v4, v5, v6);
        break;
      case 1:
        sub_22C0B13FC();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C08D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTypeConversionResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void sub_22C08D200()
{
  sub_22BE2BB34();
  v4 = v3;
  sub_22BE44820();
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22C016E74();
  if (!v0)
  {
    v5 = sub_22BE17D78();
    v2(v5);
    v6 = sub_22BE17D78();
    v1(v6);
    v4(0);
    sub_22BE19514();
  }

  sub_22BEE93D4();
}

uint64_t sub_22C08D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoTypeConversionResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C08D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoTypeConversionResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoTypeConversionResult.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22BE37EB4();
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  v5 = sub_22BE272C0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE3FF7C(v6);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E94();
  sub_22BE38A28(v10);
  v11 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v12 = sub_22BE28784(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  v53 = v13;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C272594();
  sub_22BE35868();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  sub_22BE336DC();
  v18 = &qword_27D909128;
  v19 = sub_22BE2590C();
  v21 = sub_22BE5CE4C(v19, v20);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE234F4();
  v23 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE28738();
  v26 = *(v25 + 56);
  sub_22C0B1B94();
  sub_22BEC067C();
  sub_22C0B1C60();
  sub_22BEC067C();
  sub_22BE181B0(v0);
  if (v27)
  {
    sub_22BE181B0(v0 + v26);
    if (v27)
    {
      sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE22868();
    sub_22BE181B0(v0 + v26);
    if (!v27)
    {
      v33 = sub_22C0B1C84();
      v34(v33);
      sub_22BE192C8();
      sub_22BE2C988(v35, v36, MEMORY[0x277D727F0]);
      sub_22BE39EAC();
      v18 = sub_22C272FD4();
      v37 = *(v16 + 8);
      v38 = sub_22BE19454();
      v37(v38);
      v39 = sub_22BE35838();
      v37(v39);
      sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
      if ((v18 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_11:
      type metadata accessor for TranscriptProtoTypeConversionResult(0);
      sub_22C0B1EBC();
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      v40 = sub_22BE3C688();
      if (sub_22BE1AEA8(v40, v41, v54) == 1)
      {
        sub_22C0B1518(v2 + v18);
        if (!v27)
        {
          goto LABEL_18;
        }

        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE35EF8();
        sub_22C0B1518(v2 + v18);
        if (v27)
        {
          sub_22BE17DB0();
          sub_22C0B08BC();
LABEL_18:
          v30 = &qword_27D909100;
          v31 = &unk_22C27FD00;
          v32 = v2;
          goto LABEL_29;
        }

        sub_22BE18AA8();
        sub_22C0B0868();
        v42 = sub_22BE1B328();
        v44 = static TranscriptProtoStatementID.== infix(_:_:)(v42, v43);
        sub_22BE1AB74();
        sub_22C0B08BC();
        sub_22BE200D4();
        sub_22C0B08BC();
        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v44 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v45 = *(v26 + 48);
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1518(v53);
      if (v27)
      {
        sub_22C0B1518(v53 + v45);
        if (v27)
        {
          sub_22BE33928(v53, &qword_27D9090F8, &unk_22C2AE4A0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22C0B1518(v53 + v45);
        if (!v46)
        {
          sub_22BE18AA8();
          sub_22C0B0868();
          v48 = sub_22BE392D4();
          v50 = static TranscriptProtoStatementID.== infix(_:_:)(v48, v49);
          sub_22BE1AB74();
          sub_22C0B08BC();
          sub_22BE33FCC();
          sub_22C0B08BC();
          sub_22BE33928(v53, &qword_27D9090F8, &unk_22C2AE4A0);
          if ((v50 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_33:
          sub_22C2704B4();
          sub_22BE18E5C();
          sub_22BE2C988(v51, v52, MEMORY[0x277D216D0]);
          sub_22C0B1968();
          sub_22BE39F74();
          v47 = sub_22C272FD4();
          goto LABEL_31;
        }

        sub_22BE17DB0();
        sub_22C0B08BC();
      }

      v30 = &qword_27D909100;
      v31 = &unk_22C27FD00;
      v32 = v53;
      goto LABEL_29;
    }

    v28 = sub_22BE35838();
    v29(v28);
  }

  v30 = &qword_27D909130;
  v31 = &unk_22C27FD30;
  v32 = v0;
LABEL_29:
  sub_22BE33928(v32, v30, v31);
LABEL_30:
  v47 = 0;
LABEL_31:
  sub_22BE1C1DC(v47);
  sub_22BE1AABC();
}

uint64_t sub_22C08DC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A48, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08DCFC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08DD6C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);

  return sub_22C270774();
}

uint64_t sub_22C08DDF8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E1B0);
  sub_22BE199F4(v0, qword_27D90E1B0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "toolRetrievalResponse";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "dynamicEnumerationEntities";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "context";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoQueryDecorationResult.decodeMessage<A>(decoder:)()
{
  sub_22BE1B214();
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_22C0B1950();
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 4:
        v3 = sub_22BE18E2C();
        sub_22C08E1D0(v3, v4, v5, v6);
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C0478F0();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFE0AA0();
        break;
      default:
        continue;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08E1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE2C988(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_22C2706F4();
}

void TranscriptProtoQueryDecorationResult.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_22C0B1938(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for ContextProtoSpanMatchedEntity), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = sub_22BE17D60();
    sub_22C08E3E4(v4, v5, v6, v7);
    if (!v0)
    {
      sub_22BE3A458();
      if (v8)
      {
        type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
        sub_22BE2C988(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, &protocol conformance descriptor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      sub_22C0B1AE4();
      if (v9)
      {
        type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
        sub_22C0B1550();
        sub_22BE2C988(v10, v11, &protocol conformance descriptor for TranscriptProtoRetrievedContextStatement);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      type metadata accessor for TranscriptProtoQueryDecorationResult(0);
      sub_22BE1AC30();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C100, &unk_22C294B20);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C08E8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A40, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08E954(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08E9C4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);

  return sub_22C270774();
}

uint64_t sub_22C08EA5C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E1C8);
  sub_22BE199F4(v0, qword_27D90E1C8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataSource";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "payload";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = sub_22BE18E2C();
        sub_22C08EDB8(v7, v8, v9, v10);
        break;
      case 2:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 1:
        v3 = sub_22BE18E2C();
        sub_22C08ED04(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_22C08ED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  result = sub_22C08EEF4(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE1B448();
    if (v6)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v7 = sub_22BE17D60();
    sub_22C08F0C8(v7, v8, v9, v10);
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
    v11 = sub_22BE375E4();
    return sub_22BE363D4(v11, v12);
  }

  return result;
}

uint64_t sub_22C08EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C08F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F138, &unk_22C2AE7F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, DecorationPrePlannerResultPayload) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F138, &unk_22C2AE7F0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoQueryDecorationPrePlannerResult.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22C0B1BA0();
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v2);
  v4 = sub_22BE272C0(DecorationPrePlannerResultPayload);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BEE94C8(v5);
  v6 = sub_22BE5CE4C(&qword_27D90F138, &unk_22C2AE7F0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE3C048(v8, v39);
  v9 = sub_22BE5CE4C(&qword_27D90F140, &qword_22C297130);
  sub_22BE1B7B0(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v41 = v11;
  v12 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoStatementID(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v14 = sub_22BE19454();
  v16 = sub_22BE5CE4C(v14, v15);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE385BC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE1AED0();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v19);
  v20 = *(v0 + 56);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE1C14C(v1);
  if (v21)
  {
    sub_22BE1C14C(v1 + v20);
    if (v21)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_27D909100;
    v23 = &unk_22C27FD00;
    v24 = v1;
LABEL_25:
    sub_22BE33928(v24, v22, v23);
    goto LABEL_26;
  }

  sub_22BE25C94();
  sub_22BE22868();
  sub_22BE1C14C(v1 + v20);
  if (v21)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v25 = sub_22BE23108();
  v27 = static TranscriptProtoStatementID.== infix(_:_:)(v25, v26);
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  sub_22C0B1E1C();
  if (v21)
  {
    v30 = v28 == v29;
  }

  else
  {
    v30 = 0;
  }

  if (!v30 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v31 = *(v40 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v32 = sub_22BE23E90();
  sub_22BE36144(v32, v33);
  if (v21)
  {
    sub_22BE18190(v41 + v31);
    if (v21)
    {
      sub_22BE33928(v41, &qword_27D90F138, &unk_22C2AE7F0);
LABEL_29:
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v37, v38, MEMORY[0x277D216D0]);
      v35 = sub_22C0B1F58();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_22BE35EF8();
  sub_22BE18190(v41 + v31);
  if (v34)
  {
    sub_22BE3FEA4();
LABEL_24:
    v22 = &qword_27D90F140;
    v23 = &qword_22C297130;
    v24 = v41;
    goto LABEL_25;
  }

  sub_22C0B0868();
  v36 = sub_22BE232C8();
  static TranscriptProtoQueryDecorationPrePlannerResultPayload.== infix(_:_:)(v36);
  sub_22BE39304();
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE33928(v41, &qword_27D90F138, &unk_22C2AE7F0);
  if (&unk_22C2AE7F0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v35 = 0;
LABEL_27:
  sub_22BE1C1DC(v35);
  sub_22BE1AABC();
}

uint64_t sub_22C08F750(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A38, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08F7D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08F840(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_22C270774();
}

uint64_t sub_22C08F944()
{
  sub_22BE1B0D8();
  while (1)
  {
    sub_22BE1AB1C();
    result = sub_22C270584();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22BE25300();
      v0();
    }
  }

  return result;
}

void sub_22C08F9CC()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE18648();
  if (!*(*v0 + 16) || (sub_22BE1BAB8(), sub_22C270824(), !v1))
  {
    v3(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08FAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A30, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08FB70(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08FBE0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (sub_22C272594(), sub_22BE192C8(), sub_22BE2C988(v2, v3, MEMORY[0x277D727D8]), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08FE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08FF18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08FF88(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoRetrievedContext(0), sub_22BE2C988(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C090268(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0902E8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090358(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22C0B1950();
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_22C0B1938(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for ContextProtoSpanMatchedEntity), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C090618(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A18, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C090698(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090708(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoRetrievedTool(0), sub_22C0B17D0(), sub_22BE2C988(v2, v3, &protocol conformance descriptor for ContextProtoRetrievedTool), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0909D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C090A58(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090AC8(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoToolQueryOutput(0), sub_22BE2C988(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
    sub_22BE294F8();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C090DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A08, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C090E28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090E98(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_22C270774();
}

uint64_t sub_22C090F30()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E270);
  sub_22BE199F4(v0, qword_27D90E270);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "strings";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typedValues";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "retrievedContexts";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entitySpanMatchResults";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "retrievedTools";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "toolQueryOutputs";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22C0912D8(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22C0917D0(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22C091CC8(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22C0921C0(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22C0926B8(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22C092BB0(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0912D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111A0, &qword_22C2ADED0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, DecorationPrePlannerPayloadEnum);
  v27 = DecorationPrePlannerPayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v18, &qword_27D9111A0, &qword_22C2ADED0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationPrePlannerResultPayloadRepeatedStringVariant);
    }
  }

  sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111A0, &qword_22C2ADED0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationPrePlannerResultPayloadRepeatedStringVariant) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111A0, &qword_22C2ADED0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111A0, &qword_22C2ADED0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111A0, &qword_22C2ADED0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0917D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111A8, &qword_22C2ADED8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, DecorationPrePlannerPayloadEnum);
  v27 = DecorationPrePlannerPayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D9111A8, &qword_22C2ADED8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111A8, &qword_22C2ADED8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111A8, &qword_22C2ADED8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111A8, &qword_22C2ADED8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111A8, &qword_22C2ADED8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C091CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111B0, &qword_22C2ADEE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, DecorationPrePlannerPayloadEnum);
  v27 = DecorationPrePlannerPayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D9111B0, &qword_22C2ADEE0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111B0, &qword_22C2ADEE0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111B0, &qword_22C2ADEE0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111B0, &qword_22C2ADEE0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111B0, &qword_22C2ADEE0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0921C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111B8, &qword_22C2ADEE8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, DecorationPrePlannerPayloadEnum);
  v27 = DecorationPrePlannerPayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v18, &qword_27D9111B8, &qword_22C2ADEE8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111B8, &qword_22C2ADEE8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111B8, &qword_22C2ADEE8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111B8, &qword_22C2ADEE8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111B8, &qword_22C2ADEE8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C0926B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111C0, &qword_22C2ADEF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, DecorationPrePlannerPayloadEnum);
  v27 = DecorationPrePlannerPayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v18, &qword_27D9111C0, &qword_22C2ADEF0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111C0, &qword_22C2ADEF0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111C0, &qword_22C2ADEF0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111C0, &qword_22C2ADEF0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111C0, &qword_22C2ADEF0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C092BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D9111C8, &qword_22C2ADEF8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, DecorationPrePlannerPayloadEnum);
  v27 = DecorationPrePlannerPayloadEnum;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v18, &qword_27D9111C8, &qword_22C2ADEF8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D9111C8, &qword_22C2ADEF8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant) == 1)
  {
    sub_22BE33928(v18, &qword_27D9111C8, &qword_22C2ADEF8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D9111C8, &qword_22C2ADEF8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D9111C8, &qword_22C2ADEF8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoQueryDecorationPrePlannerResultPayload.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  sub_22BE2B890(DecorationPrePlannerPayloadEnum);
  if (v6)
  {
    goto LABEL_10;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = sub_22BE17D78();
      sub_22C0933D0(v23, v24, v25, v26);
      break;
    case 2u:
      v15 = sub_22BE17D78();
      sub_22C0935D8(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = sub_22BE17D78();
      sub_22C0937E0(v19, v20, v21, v22);
      break;
    case 4u:
      v11 = sub_22BE17D78();
      sub_22C0939E8(v11, v12, v13, v14);
      break;
    case 5u:
      v27 = sub_22BE17D78();
      sub_22C093BF0(v27, v28, v29, v30);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22C0931CC(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0931CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0933D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0935D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0937E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0939E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C093BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C094088(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A00, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C094108(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C094178(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_22C270774();
}

uint64_t sub_22C0942A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109F8, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C094328(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C094398(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);

  return sub_22C270774();
}

void TranscriptProtoSkipStatement.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C094788(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109F0, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C094808(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C094878(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);

  return sub_22C270774();
}

uint64_t sub_22C094910()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E2B8);
  sub_22BE199F4(v0, qword_27D90E2B8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterStatementIds";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C094B3C()
{
  sub_22BE1B638();
  while (1)
  {
    sub_22BE18240();
    result = sub_22C270584();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = sub_22C0B1638();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = sub_22C0B1638();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_22C094BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  return sub_22C2706F4();
}

uint64_t sub_22C094D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F1A8, &qword_22C297140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F1A8, &qword_22C297140);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoExecutionPreconditionEvaluatorRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22C0B1BA0();
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(v2);
  sub_22BE18000();
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v4 = sub_22BE289D8();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D90F1B0, &qword_22C297148);
  sub_22BE252F0();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE25CD0();
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  sub_22C0B1DC0();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v0);
  if (v9)
  {
    sub_22BE19FE0(v0 + v1);
    if (v9)
    {
      sub_22BE33928(v0, &qword_27D90F1A8, &qword_22C297140);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v0, &qword_27D90F1B0, &qword_22C297148);
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  sub_22BE3AF28();
  sub_22BE22868();
  sub_22BE19FE0(v0 + v1);
  if (v9)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v10 = sub_22BE200E0();
  static TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.== infix(_:_:)(v10);
  sub_22BE377A4();
  sub_22C0B08BC();
  sub_22BE18240();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F1A8, &qword_22C297140);
  if ((&qword_27D90F1A8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_22BEA3AF0();
  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_22C2704B4();
  sub_22BE18E5C();
  v14 = sub_22BE2C988(v12, v13, MEMORY[0x277D216D0]);
  v15 = sub_22BE39E58(v14);
LABEL_14:
  sub_22BE1C1DC(v15);
  sub_22BE1AABC();
}

uint64_t sub_22C0951FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109E8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09527C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0952EC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return sub_22C270774();
}

uint64_t sub_22C095384()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E2D0);
  sub_22BE199F4(v0, qword_27D90E2D0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientAction";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0955B0()
{
  sub_22BE1B638();
  while (1)
  {
    sub_22BE18240();
    result = sub_22C270584();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE431C0();
      sub_22C0B1760();
      v0();
    }

    else if (result == 1)
    {
      sub_22BE431C0();
      sub_22C0B1760();
      v2();
    }
  }

  return result;
}

uint64_t sub_22C09562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v18, &qword_27D90CA78, &qword_22C2B5880);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D90CA78, &qword_22C2B5880);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D90CA78, &qword_22C2B5880);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F1C0, &qword_22C2AE810);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C095B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911198, &qword_22C2ADEC8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D911198, &qword_22C2ADEC8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911198, &qword_22C2ADEC8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911198, &qword_22C2ADEC8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F1C0, &qword_22C2AE810);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_6;
  }

  sub_22BE1AEE4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_22BE17D78();
    sub_22C0962FC(v7, v8, v9, v10);
  }

  else
  {
    v11 = sub_22BE17D78();
    sub_22C0960F4(v11, v12, v13, v14);
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0960F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0962FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C096794(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109E0, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C096814(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C096884(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return sub_22C270774();
}

uint64_t sub_22C096910()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E2E8);
  sub_22BE199F4(v0, qword_27D90E2E8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequestId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C096B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestAmendment(0);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  return sub_22C2706F4();
}

uint64_t sub_22C096C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContent(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequestAmendment(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E568, &unk_22C2CC8B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRequestAmendment.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoRequestContent(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90E570, &qword_22C296F18);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20394();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  sub_22BE3E440(v9);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D90E568, &unk_22C2CC8B0);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v16 = sub_22BE2C988(v14, v15, MEMORY[0x277D216D0]);
      v11 = sub_22BE2B85C(v16);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v10)
  {
    sub_22C0B1538();
    sub_22C0B08BC();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90E570, &qword_22C296F18);
    goto LABEL_15;
  }

  sub_22C0B0868();
  v12 = sub_22BE38970();
  v13 = static TranscriptProtoRequestContent.== infix(_:_:)(v12);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E568, &unk_22C2CC8B0);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = 0;
LABEL_18:
  sub_22BE1C1DC(v11);
  sub_22BE1AABC();
}

uint64_t sub_22C0970AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109D8, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09712C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09719C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);

  return sub_22C270774();
}

uint64_t sub_22C097338(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109D0, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0973B8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C097428(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);

  return sub_22C270774();
}

uint64_t sub_22C097558(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109C8, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0975D8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C097648(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);

  return sub_22C270774();
}

uint64_t sub_22C097710()
{
  sub_22BE1B0D8();
  while (1)
  {
    sub_22BE1AB1C();
    result = sub_22C270584();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22BE25300();
      v0();
    }
  }

  return result;
}

uint64_t sub_22C09783C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109C0, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0978BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09792C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);

  return sub_22C270774();
}

uint64_t sub_22C0979B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E348);
  sub_22BE199F4(v0, qword_27D90E348);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "responseOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientQueryId";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "toolId";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "actionEventId";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoIntermediateSystemResponse.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE18E2C();
        sub_22C097D14(v3, v4, v5, v6);
        break;
      case 2:
        sub_22BE31058();
        sub_22BE18E2C();
        sub_22C097DC8();
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22C097E0C(v7, v8, v9, v10);
        break;
      case 5:
        sub_22C0B18F0();
        sub_22BE18E2C();
        sub_22C097EC0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C097D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);
  return sub_22C2706F4();
}

uint64_t sub_22C097DC8()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 24));
  return sub_22C270694();
}

uint64_t sub_22C097E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C097EC0()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 32));
  return sub_22C270694();
}

void TranscriptProtoIntermediateSystemResponse.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  sub_22C097FBC(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE31058();
    sub_22BE17D60();
    sub_22C098190();
    sub_22BE1B448();
    if (v5)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v6 = sub_22BE17D60();
    sub_22C0981F0(v6, v7, v8, v9);
    sub_22C0B18F0();
    sub_22BE17D60();
    sub_22C0983C4();
    type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
    sub_22BE1AC30();
  }
}

uint64_t sub_22C097FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoResponseOutput(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F078, &unk_22C2AE7D0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput, &protocol conformance descriptor for TranscriptProtoResponseOutput);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22C098190()
{
  v0 = sub_22BE379B8();
  v1(v0);
  sub_22C0B1DD8();
  if (v2)
  {
    sub_22BE25B10();
    sub_22C270844();
  }
}

uint64_t sub_22C0981F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22C0983C4()
{
  v0 = sub_22BE379B8();
  v1(v0);
  sub_22C0B1DD8();
  if (v2)
  {
    sub_22BE25B10();
    sub_22C270844();
  }
}

void static TranscriptProtoIntermediateSystemResponse.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE39FFC();
  v6 = type metadata accessor for TranscriptProtoStatementID(v5);
  v7 = sub_22BE28784(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BEE94C8(v8);
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE3C048(v11, v47);
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE1B7B0(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE35C94(v14, v48);
  v15 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v17 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B72C();
  sub_22BE5CE4C(&qword_27D90F080, &qword_22C297110);
  sub_22BE385BC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE1AED0();
  v50 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v20);
  v21 = *(v0 + 56);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1C14C(v2);
  if (v22)
  {
    sub_22BE1C14C(v2 + v21);
    if (v22)
    {
      sub_22BE33928(v2, &qword_27D90F078, &unk_22C2AE7D0);
      goto LABEL_14;
    }

LABEL_9:
    v23 = &qword_27D90F080;
    v24 = &qword_22C297110;
    v25 = v2;
LABEL_10:
    sub_22BE33928(v25, v23, v24);
    goto LABEL_11;
  }

  sub_22BE1B074();
  sub_22BE22868();
  sub_22BE1C14C(v2 + v21);
  if (v22)
  {
    sub_22C0B1BC4();
    goto LABEL_9;
  }

  sub_22C0B0868();
  static TranscriptProtoResponseOutput.== infix(_:_:)();
  v15 = v27;
  sub_22BE25EFC();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D90F078, &unk_22C2AE7D0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_22BE28DB4();
  if (v30)
  {
    if (!v28)
    {
      goto LABEL_11;
    }

    sub_22BE3A508(v29);
    v33 = v22 && v31 == v32;
    if (!v33 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v28)
  {
    goto LABEL_11;
  }

  v34 = *v1 == *v4 && v1[1] == v4[1];
  if (!v34 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22C0B1DE4();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v35 = sub_22BE23E90();
  sub_22BE36144(v35, v36);
  if (!v22)
  {
    sub_22BE22868();
    sub_22BE18190(v49 + v15);
    if (!v37)
    {
      sub_22BE18AA8();
      sub_22C0B0868();
      v38 = sub_22BE200E0();
      static TranscriptProtoStatementID.== infix(_:_:)(v38, v39);
      sub_22BE39304();
      sub_22BE39EAC();
      sub_22C0B08BC();
      sub_22BE33928(v49, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_36;
  }

  sub_22BE18190(v49 + v15);
  if (!v22)
  {
LABEL_36:
    v23 = &qword_27D909100;
    v24 = &unk_22C27FD00;
    v25 = v49;
    goto LABEL_10;
  }

  sub_22BE33928(v49, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_38:
  v40 = *(v50 + 32);
  v41 = *(v4 + v40 + 8);
  if (*(v1 + v40 + 8))
  {
    if (v41)
    {
      sub_22BE3A508(v1 + v40);
      v44 = v22 && v42 == v43;
      if (v44 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (!v41)
  {
LABEL_47:
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v45, v46, MEMORY[0x277D216D0]);
    sub_22BE3A008();
    v26 = sub_22C272FD4();
    goto LABEL_12;
  }

LABEL_11:
  v26 = 0;
LABEL_12:
  sub_22BE1C1DC(v26);
  sub_22BE1AABC();
}

uint64_t sub_22C09896C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109B8, type metadata accessor for TranscriptProtoIntermediateSystemResponse, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0989EC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C098A5C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponse);

  return sub_22C270774();
}

uint64_t sub_22C098AE8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E360);
  sub_22BE199F4(v0, qword_27D90E360);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "renderedResponse";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toolId";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionEventId";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 3:
        v3 = sub_22BE18E2C();
        sub_22C098DF8(v3, v4, v5, v6);
        break;
      case 4:
        sub_22BE3CF0C();
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C098DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C098EAC()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 28));
  return sub_22C270694();
}

void TranscriptProtoIntermediateSystemResponseRendered.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (*v0 != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v1))
  {
    v2 = sub_22BE17D60();
    sub_22BE3D7F4(v2);
    if (!v1)
    {
      v3 = sub_22BE17D60();
      sub_22C098F94(v3, v4, v5, v6);
      sub_22BE3CF0C();
      sub_22BE17D60();
      sub_22C099168();
      type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
      sub_22BE1AC30();
    }
  }
}

uint64_t sub_22C098F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22C099168()
{
  v0 = sub_22BE379B8();
  v1(v0);
  sub_22C0B1DD8();
  if (v2)
  {
    sub_22BE25B10();
    sub_22C270844();
  }
}

void static TranscriptProtoIntermediateSystemResponseRendered.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE26880();
  MEMORY[0x28223BE20](v4);
  sub_22BE38390();
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  sub_22C0B16C4();
  if (!v12)
  {
    goto LABEL_2;
  }

  v9 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v9)
    {
      goto LABEL_2;
    }

    sub_22C0B1A50();
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v9)
  {
    goto LABEL_2;
  }

  v13 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  sub_22C0B1694(v13);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (!v12)
  {
    sub_22BE194F8();
    sub_22BE22868();
    sub_22BE19538();
    if (!v14)
    {
      sub_22BE1868C();
      sub_22C0B0868();
      v15 = sub_22BE38970();
      v17 = static TranscriptProtoStatementID.== infix(_:_:)(v15, v16);
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_23;
    }

    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_21:
    sub_22BE33928(v2, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_2;
  }

  sub_22BE19538();
  if (!v12)
  {
    goto LABEL_21;
  }

  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_23:
  sub_22BE4827C();
  if (v20)
  {
    if (!v18)
    {
      goto LABEL_2;
    }

    sub_22BE3A508(v19);
    v23 = v12 && v21 == v22;
    if (!v23 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_32:
    sub_22C2704B4();
    sub_22BE18E5C();
    v26 = sub_22BE2C988(v24, v25, MEMORY[0x277D216D0]);
    v8 = sub_22BE2B85C(v26);
    goto LABEL_3;
  }

  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_2:
  v8 = 0;
LABEL_3:
  sub_22BE1C1DC(v8);
  sub_22BE1AABC();
}

uint64_t sub_22C0994D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109B0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponseRendered);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C099550(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponseRendered);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0995C0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered, &protocol conformance descriptor for TranscriptProtoIntermediateSystemResponseRendered);

  return sub_22C270774();
}

uint64_t sub_22C0996B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F208, &qword_22C2AE820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoAgentRequestEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911190, &qword_22C2ADEC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v24 = v11;
  v19 = sub_22BE1AEA8(v10, 1, v11);
  if (v19 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F208, &qword_22C2AE820);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v18, &qword_27D911190, &qword_22C2ADEC0);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v18, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
  v20 = v27;
  sub_22C2706F4();
  if (v20)
  {
    v21 = v18;
    return sub_22BE33928(v21, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911190, &qword_22C2ADEC0);
    v21 = v15;
    return sub_22BE33928(v21, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22C0B0868();
  if (v19 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v18, &qword_27D911190, &qword_22C2ADEC0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F208, &qword_22C2AE820);
  sub_22C0B0868();
  return sub_22BE19DC4(v23, 0, 1, v24);
}

uint64_t sub_22C099B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F208, &qword_22C2AE820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoAgentRequestEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F208, &qword_22C2AE820);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C099FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109A8, type metadata accessor for TranscriptProtoAgentRequest, &protocol conformance descriptor for TranscriptProtoAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09A07C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest, &protocol conformance descriptor for TranscriptProtoAgentRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09A0EC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest, &protocol conformance descriptor for TranscriptProtoAgentRequest);

  return sub_22C270774();
}

uint64_t sub_22C09A178()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E390);
  sub_22BE199F4(v0, qword_27D90E390);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "destinationAgentID";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C09A390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  type metadata accessor for TranscriptProtoAgentRequest(0);
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest, &protocol conformance descriptor for TranscriptProtoAgentRequest);
  return sub_22C2706F4();
}

uint64_t sub_22C09A484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoAgentRequest(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F220, &unk_22C2AE830);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest, &protocol conformance descriptor for TranscriptProtoAgentRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoAgentHandoffRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoAgentRequest(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90F228, &qword_22C297160);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20394();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  sub_22BE3E440(v9);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D90F220, &unk_22C2AE830);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v16 = sub_22BE2C988(v14, v15, MEMORY[0x277D216D0]);
      v11 = sub_22BE2B85C(v16);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v10)
  {
    sub_22C0B1A00();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90F228, &qword_22C297160);
    goto LABEL_15;
  }

  sub_22BE3FF18();
  sub_22C0B0868();
  v12 = sub_22BE38970();
  v13 = static TranscriptProtoAgentRequest.== infix(_:_:)(v12);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F220, &unk_22C2AE830);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = 0;
LABEL_18:
  sub_22BE1C1DC(v11);
  sub_22BE1AABC();
}

uint64_t sub_22C09A8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109A0, type metadata accessor for TranscriptProtoAgentHandoffRequest, &protocol conformance descriptor for TranscriptProtoAgentHandoffRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09A97C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest, &protocol conformance descriptor for TranscriptProtoAgentHandoffRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09A9EC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest, &protocol conformance descriptor for TranscriptProtoAgentHandoffRequest);

  return sub_22C270774();
}

void TranscriptProtoAgentPassRequest.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C09AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_22BE33A5C();
  v7 = sub_22BE192B4();
  result = v8(v7);
  if (!v5)
  {
    a5(0);
    return sub_22BE235A8();
  }

  return result;
}

uint64_t sub_22C09ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoAgentRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F220, &unk_22C2AE830);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest, &protocol conformance descriptor for TranscriptProtoAgentRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C09B02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910998, type metadata accessor for TranscriptProtoAgentPassRequest, &protocol conformance descriptor for TranscriptProtoAgentPassRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09B0AC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest, &protocol conformance descriptor for TranscriptProtoAgentPassRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09B11C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest, &protocol conformance descriptor for TranscriptProtoAgentPassRequest);

  return sub_22C270774();
}

uint64_t sub_22C09B1B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22C2708C4();
  sub_22BE952A4(v3, a2);
  v4 = sub_22BE18944();
  sub_22BE199F4(v4, v5);
  return sub_22C2708B4();
}

uint64_t sub_22C09B290(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910990, type metadata accessor for TranscriptProtoAgentYieldRequest, &protocol conformance descriptor for TranscriptProtoAgentYieldRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09B310(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest, &protocol conformance descriptor for TranscriptProtoAgentYieldRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09B380(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest, &protocol conformance descriptor for TranscriptProtoAgentYieldRequest);

  return sub_22C270774();
}

uint64_t sub_22C09B408()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E3D8);
  sub_22BE199F4(v0, qword_27D90E3D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sourceAgentID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primiviteAction";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C09B620()
{
  sub_22BE1B0D8();
  while (1)
  {
    sub_22BE1AB1C();
    result = sub_22C270584();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE1A8C4();
      sub_22BE32BF0();
      v0();
    }

    else if (result == 1)
    {
      sub_22BE25300();
      sub_22C2706A4();
    }
  }

  return result;
}

uint64_t sub_22C09B698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  type metadata accessor for TranscriptProtoPrimitiveAction(0);
  sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction, &protocol conformance descriptor for TranscriptProtoPrimitiveAction);
  return sub_22C2706F4();
}

uint64_t sub_22C09B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90F248, &unk_22C2CC860);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction, &protocol conformance descriptor for TranscriptProtoPrimitiveAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoAgentPrimitiveAction.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoPrimitiveAction(v1);
  sub_22BE26880();
  MEMORY[0x28223BE20](v2);
  sub_22BE38390();
  v3 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D90F250, &qword_22C297168);
  sub_22BE28F58();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE20394();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  sub_22BE3E440(v9);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v8)
  {
    sub_22BE19538();
    if (v8)
    {
      sub_22BE33928(v0, &qword_27D90F248, &unk_22C2CC860);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      v16 = sub_22BE2C988(v14, v15, MEMORY[0x277D216D0]);
      v11 = sub_22BE2B85C(v16);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v10)
  {
    sub_22C0B1AA4();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90F250, &qword_22C297168);
    goto LABEL_15;
  }

  sub_22C0B0868();
  v12 = sub_22BE38970();
  v13 = static TranscriptProtoPrimitiveAction.== infix(_:_:)(v12);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F248, &unk_22C2CC860);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = 0;
LABEL_18:
  sub_22BE1C1DC(v11);
  sub_22BE1AABC();
}

uint64_t sub_22C09BC24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910988, type metadata accessor for TranscriptProtoAgentPrimitiveAction, &protocol conformance descriptor for TranscriptProtoAgentPrimitiveAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09BCA4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction, &protocol conformance descriptor for TranscriptProtoAgentPrimitiveAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09BD14(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction, &protocol conformance descriptor for TranscriptProtoAgentPrimitiveAction);

  return sub_22C270774();
}

uint64_t sub_22C09BDA0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E3F0);
  sub_22BE199F4(v0, qword_27D90E3F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "handoff";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pass";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "yield";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C09C020()
{
  sub_22BE1B214();
  sub_22C0B1664();
  while (1)
  {
    sub_22BE196A8();
    v4 = sub_22C270584();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        sub_22BE36680();
        sub_22C0B1710();
        v0();
        break;
      case 2:
        sub_22BE36680();
        sub_22C0B1710();
        v2();
        break;
      case 1:
        sub_22BE36680();
        sub_22C0B1710();
        v3();
        break;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C09C0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911178, &qword_22C2ADEA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v18, &qword_27D911178, &qword_22C2ADEA8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest, &protocol conformance descriptor for TranscriptProtoAgentHandoffRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911178, &qword_22C2ADEA8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911178, &qword_22C2ADEA8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911178, &qword_22C2ADEA8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911178, &qword_22C2ADEA8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F260, &qword_22C2AE840);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C09C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911180, &qword_22C2ADEB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v18, &qword_27D911180, &qword_22C2ADEB0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest, &protocol conformance descriptor for TranscriptProtoAgentPassRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911180, &qword_22C2ADEB0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911180, &qword_22C2ADEB0);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911180, &qword_22C2ADEB0);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911180, &qword_22C2ADEB0);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F260, &qword_22C2AE840);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

uint64_t sub_22C09CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE5CE4C(&qword_27D911188, &qword_22C2ADEB8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_22BE19DC4(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_22BE22868();
  v26 = sub_22BE1AEA8(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_22BE33928(v10, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v18, &qword_27D911188, &qword_22C2ADEB8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v18, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest, &protocol conformance descriptor for TranscriptProtoAgentYieldRequest);
  v19 = v29;
  sub_22C2706F4();
  if (v19)
  {
    v20 = v18;
    return sub_22BE33928(v20, &qword_27D911188, &qword_22C2ADEB8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v15, 1, v5) == 1)
  {
    sub_22BE33928(v18, &qword_27D911188, &qword_22C2ADEB8);
    v20 = v15;
    return sub_22BE33928(v20, &qword_27D911188, &qword_22C2ADEB8);
  }

  sub_22C0B0868();
  if (v26 != 1)
  {
    sub_22C270594();
  }

  v22 = v27;
  sub_22BE33928(v18, &qword_27D911188, &qword_22C2ADEB8);
  v23 = v25;
  sub_22BE33928(v25, &qword_27D90F260, &qword_22C2AE840);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v23, 0, 1, v22);
}

void TranscriptProtoPrimitiveAction.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_22BE17D78();
      sub_22C09D290(v8, v9, v10, v11);
    }

    else
    {
      v16 = sub_22BE17D78();
      sub_22C09D498(v16, v17, v18, v19);
    }
  }

  else
  {
    v12 = sub_22BE17D78();
    sub_22C09D08C(v12, v13, v14, v15);
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoPrimitiveAction(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C09D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest, &protocol conformance descriptor for TranscriptProtoAgentHandoffRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C09D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest, &protocol conformance descriptor for TranscriptProtoAgentPassRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C09D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest, &protocol conformance descriptor for TranscriptProtoAgentYieldRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C09D930(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910980, type metadata accessor for TranscriptProtoPrimitiveAction, &protocol conformance descriptor for TranscriptProtoPrimitiveAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09D9B0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction, &protocol conformance descriptor for TranscriptProtoPrimitiveAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09DA20(uint64_t a1, uint64_t a2)
{
  sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction, &protocol conformance descriptor for TranscriptProtoPrimitiveAction);

  return sub_22C270774();
}

unint64_t sub_22C09DAA0()
{
  result = qword_27D90E758;
  if (!qword_27D90E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90E758);
  }

  return result;
}

unint64_t sub_22C09DAF4()
{
  result = qword_27D90E7D0;
  if (!qword_27D90E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90E7D0);
  }

  return result;
}

unint64_t sub_22C09DB48()
{
  result = qword_27D90E9D0;
  if (!qword_27D90E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90E9D0);
  }

  return result;
}

unint64_t sub_22C09DB9C()
{
  result = qword_27D90EAE0;
  if (!qword_27D90EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EAE0);
  }

  return result;
}

unint64_t sub_22C09DBF0()
{
  result = qword_27D90EE28;
  if (!qword_27D90EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EE28);
  }

  return result;
}

unint64_t sub_22C09DC44()
{
  result = qword_27D90EE90;
  if (!qword_27D90EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EE90);
  }

  return result;
}

unint64_t sub_22C09DC98()
{
  result = qword_27D90EEE0;
  if (!qword_27D90EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EEE0);
  }

  return result;
}

unint64_t sub_22C09DCEC()
{
  result = qword_27D90EEF0;
  if (!qword_27D90EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EEF0);
  }

  return result;
}

unint64_t sub_22C09DD40()
{
  result = qword_27D90EF00;
  if (!qword_27D90EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EF00);
  }

  return result;
}

unint64_t sub_22C09DD94()
{
  result = qword_27D90EF28;
  if (!qword_27D90EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EF28);
  }

  return result;
}

unint64_t sub_22C09DDE8()
{
  result = qword_27D90F0D0;
  if (!qword_27D90F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F0D0);
  }

  return result;
}

unint64_t sub_22C09DE40()
{
  result = qword_27D90F278;
  if (!qword_27D90F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F278);
  }

  return result;
}

unint64_t sub_22C09DE98()
{
  result = qword_27D90F280;
  if (!qword_27D90F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F280);
  }

  return result;
}

unint64_t sub_22C09DEF0()
{
  result = qword_27D90F288;
  if (!qword_27D90F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F288);
  }

  return result;
}

unint64_t sub_22C09DF48()
{
  result = qword_27D90F290;
  if (!qword_27D90F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F290);
  }

  return result;
}

unint64_t sub_22C09DFA0()
{
  result = qword_27D90F298;
  if (!qword_27D90F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F298);
  }

  return result;
}

unint64_t sub_22C09DFF8()
{
  result = qword_27D90F2A0;
  if (!qword_27D90F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2A0);
  }

  return result;
}

unint64_t sub_22C09E050()
{
  result = qword_27D90F2A8;
  if (!qword_27D90F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2A8);
  }

  return result;
}

unint64_t sub_22C09E0A8()
{
  result = qword_27D90F2B0;
  if (!qword_27D90F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2B0);
  }

  return result;
}

unint64_t sub_22C09E100()
{
  result = qword_27D90F2B8;
  if (!qword_27D90F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2B8);
  }

  return result;
}

unint64_t sub_22C09E158()
{
  result = qword_27D90F2C0;
  if (!qword_27D90F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2C0);
  }

  return result;
}

unint64_t sub_22C09E1B0()
{
  result = qword_27D90F2C8;
  if (!qword_27D90F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2C8);
  }

  return result;
}

unint64_t sub_22C09E208()
{
  result = qword_27D90F2D0;
  if (!qword_27D90F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2D0);
  }

  return result;
}

unint64_t sub_22C09E260()
{
  result = qword_27D90F2D8;
  if (!qword_27D90F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2D8);
  }

  return result;
}

unint64_t sub_22C09E2B8()
{
  result = qword_27D90F2E0;
  if (!qword_27D90F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2E0);
  }

  return result;
}

unint64_t sub_22C09E310()
{
  result = qword_27D90F2E8;
  if (!qword_27D90F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2E8);
  }

  return result;
}

unint64_t sub_22C09E368()
{
  result = qword_27D90F2F0;
  if (!qword_27D90F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2F0);
  }

  return result;
}

unint64_t sub_22C09E3C0()
{
  result = qword_27D90F2F8;
  if (!qword_27D90F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2F8);
  }

  return result;
}

unint64_t sub_22C09E418()
{
  result = qword_27D90F300;
  if (!qword_27D90F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F300);
  }

  return result;
}

unint64_t sub_22C09E470()
{
  result = qword_27D90F308;
  if (!qword_27D90F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F308);
  }

  return result;
}

unint64_t sub_22C09E4C8()
{
  result = qword_27D90F310;
  if (!qword_27D90F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F310);
  }

  return result;
}

unint64_t sub_22C09E520()
{
  result = qword_27D90F318;
  if (!qword_27D90F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F318);
  }

  return result;
}

unint64_t sub_22C09E578()
{
  result = qword_27D90F320;
  if (!qword_27D90F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F320);
  }

  return result;
}

unint64_t sub_22C09E5D0()
{
  result = qword_27D90F328;
  if (!qword_27D90F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F328);
  }

  return result;
}

unint64_t sub_22C09E628()
{
  result = qword_27D90F330;
  if (!qword_27D90F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F330);
  }

  return result;
}

unint64_t sub_22C09E680()
{
  result = qword_27D90F338;
  if (!qword_27D90F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F338);
  }

  return result;
}

unint64_t sub_22C09E6D8()
{
  result = qword_27D90F340;
  if (!qword_27D90F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F340);
  }

  return result;
}

unint64_t sub_22C0A23F0()
{
  result = qword_27D90F788;
  if (!qword_27D90F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F788);
  }

  return result;
}

unint64_t sub_22C0A2448()
{
  result = qword_27D90F790;
  if (!qword_27D90F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F790);
  }

  return result;
}

unint64_t sub_22C0A49C0()
{
  result = qword_27D90FA90;
  if (!qword_27D90FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90FA90);
  }

  return result;
}

unint64_t sub_22C0A4A18()
{
  result = qword_27D90FA98;
  if (!qword_27D90FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90FA98);
  }

  return result;
}

unint64_t sub_22C0B076C()
{
  result = qword_27D9113B8;
  if (!qword_27D9113B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9113B8);
  }

  return result;
}

unint64_t sub_22C0B07C0()
{
  result = qword_27D911480;
  if (!qword_27D911480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911480);
  }

  return result;
}

unint64_t sub_22C0B0814()
{
  result = qword_27D911550;
  if (!qword_27D911550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911550);
  }

  return result;
}

uint64_t sub_22C0B0868()
{
  v1 = sub_22BE1B2D4();
  v2(v1);
  sub_22BE18000();
  v3 = sub_22BE19454();
  v4(v3);
  return v0;
}

uint64_t sub_22C0B08BC()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18000();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C0B137C()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B142C()
{
  *(v1 - 96) = v0;

  return sub_22BE22868();
}

uint64_t sub_22C0B14F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_22C270794();
}

uint64_t sub_22C0B1568()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1588()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B15A8(uint64_t a1)
{

  return sub_22C2705D4();
}

uint64_t sub_22C0B15D0(uint64_t a1)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = v1;

  return sub_22BE22868();
}

uint64_t sub_22C0B15FC()
{
  *(v1 - 88) = v0;

  return sub_22BE22868();
}

uint64_t sub_22C0B16A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C2707D4();
}

uint64_t sub_22C0B16D4()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B16F4()
{

  return sub_22C2704B4();
}

uint64_t sub_22C0B176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_22BE5CE4C(a5, a6);
}

uint64_t sub_22C0B19D4()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1A00()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1A28(unint64_t *a1)
{

  return sub_22BE2C988(a1, v1, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
}

uint64_t sub_22C0B1A60()
{

  return sub_22C2704B4();
}

uint64_t sub_22C0B1A8C()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1AA4()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1AC8()
{

  return sub_22C2704B4();
}

uint64_t sub_22C0B1AFC()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1B14()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1B34()
{

  return sub_22BE19DC4(v0, 0, 1, v1);
}

uint64_t sub_22C0B1B54(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1BAC()
{

  return sub_22C2704B4();
}

uint64_t sub_22C0B1BC4()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_22C270564();
}

uint64_t sub_22C0B1C14()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1CCC()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1CE4()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1CFC()
{

  return sub_22C2704B4();
}

uint64_t sub_22C0B1D14()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1D30()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1D54()
{

  return sub_22C0B0868();
}

uint64_t sub_22C0B1D70()
{

  return sub_22C2704B4();
}

uint64_t sub_22C0B1D88()
{

  return sub_22C0B08BC();
}

void sub_22C0B1EF8()
{

  sub_22BFE7680();
}

uint64_t sub_22C0B1F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C270884();
}

uint64_t sub_22C0B1F38()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1F58()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1F78()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1F90()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1FA8()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1FC0()
{

  return sub_22BE22868();
}

uint64_t TranscriptProtoEvent.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoEvent(v1);
  v0[11] = 0;
  v0[12] = 0;
  v3 = type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE1AF78(v3);
  sub_22BFBFC8C(*(v2 + 48));
  v4 = type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE1AF78(v4);
  v5 = type metadata accessor for TranscriptProtoParticipantID(0);
  sub_22BE1AF78(v5);
  v6 = type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE1AF78(v6);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
  v0[4] = 0;
  v0[5] = v7;
  v0[6] = 0;
  v0[7] = v7;
  v0[8] = 0;
  v0[9] = v7;
  result = sub_22C272E84();
  v0[10] = result;
  return result;
}

uint64_t TranscriptProtoEvent.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoEvent(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t TranscriptProtoEvent.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t TranscriptProtoEvent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPayload(v0);
  return sub_22BE18504();
}

void TranscriptProtoTranscript.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoTranscript(v1);
  v0[3] = 0;
  v0[4] = 0;
  sub_22C0E9BF8(v2);
  sub_22BE412F4();
  v0[2] = MEMORY[0x277D84F90];
}

uint64_t TranscriptProtoTranscript.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTranscript(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTimepoint.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoTimepoint(v1);
  sub_22BE3CC6C();
  v2 = sub_22C270454();
  sub_22BE1AF78(v2);
  sub_22C0E9860();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoTimepoint.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTimepoint(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionStart.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoLocaleSettings(v2);
  v6 = sub_22C0E966C(v0, v4, v5, v3);
  type metadata accessor for TranscriptProtoSessionStart(v6);
  v7 = sub_22BFBFC98();
  v8 = type metadata accessor for TranscriptProtoDeviceDetails(v7);
  v9 = sub_22BE29EF0(v8);
  v10 = type metadata accessor for TranscriptProtoGenderSettings(v9);
  sub_22C0E96B4(v0 + v1, v11, v12, v10);
  *(v0 + v13) = 2;
  sub_22C0E9860();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C0B2528()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22C0B25AC()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t TranscriptProtoSessionStart.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSessionStart(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDateTimeContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDateTimeContext(v0);
  return sub_22BE18504();
}

void TranscriptProtoUserTurnStarted.init()()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoUserTurnStarted(v0);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v1, v2, v3, v4);
  v5 = type metadata accessor for TranscriptProtoUserTurn(0);
  sub_22BE1AF78(v5);
  v6 = sub_22BE27190();
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v6);
  sub_22BE1AF78(v7);
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoUserTurnStarted.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserTurnStarted(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B285C()
{
  v1 = sub_22C0E968C();
  v2(v1);
  v3 = sub_22BE238E8();
  v7 = sub_22C0E966C(v3, v4, v5, v6);
  v0(v7);
  sub_22BE38954();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C0B28D4()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22C0B2958()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t TranscriptProtoUserTurn.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserTurn(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B2A9C()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22BE39320();
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22C0B2B1C()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22BE39320();
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t TranscriptProtoSpeechPartialResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpeechPartialResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoRequest(v1);
  v2 = sub_22BFBFC98();
  v3 = type metadata accessor for TranscriptProtoRequestContent(v2);
  v4 = sub_22BE29EF0(v3);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(v4);
  sub_22BE23D30(v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE1AF78(v7);
  v8 = sub_22BE2BC9C();
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v8);
  sub_22BE1AF78(v9);
  v10 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_22BE1AF78(v10);
  v11 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22BE1AF78(v11);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestContent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestSuggestedInvocation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B2EA0()
{
  v2 = sub_22C0E968C();
  v3(v2);
  v4 = sub_22BE341A4();
  v0(v4);
  v5 = sub_22BE3CE14();
  sub_22BE19DC4(v5, v6, v7, v8);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoRequestContentTextContent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestContentTextContent(v0);
  return sub_22BE18504();
}

void TranscriptProtoRequestContentSpeechContent.init()()
{
  v2 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v2);
  v3 = sub_22C0E986C();
  v4 = type metadata accessor for TranscriptProtoSpeechPackage(v3);
  v5 = sub_22BE25B20();
  sub_22BE19DC4(v5, v6, v7, v4);
  v8 = *(v1 + 24);
  sub_22BE375F8();
  sub_22C0E96B4(v0 + v8, v9, v10, v11);
  v13 = sub_22BE3A23C(v12);
  sub_22BE19DC4(v13, v14, v15, v4);
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpeechPackage.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpeechPackage(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B313C()
{
  v2 = sub_22C0E968C();
  v3(v2);
  sub_22BE38954();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v0;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Phrase.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpeechPackage.Phrase(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpeechPackage.Interpretation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(v0);
  return sub_22BE18504();
}

double TranscriptProtoSpeechPackage.Token.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoSpeechPackage.Token(v1);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpeechPackage.Token(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentRequest.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoRequestContent(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequest(v5);
  sub_22BFBFC8C(*(v6 + 20));
  v7 = sub_22BE39320();
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v7);
  sub_22BE23D30(v8);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C0B33EC()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22C0B3470()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t TranscriptProtoExternalAgentRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExternalAgentRequest(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B353C()
{
  v2 = sub_22C0E968C();
  v3(v2);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = v0;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlan.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanSearchTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(v0);
  return sub_22BE18504();
}

void sub_22C0B3768()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanTextTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(v0);
  return sub_22BE18504();
}

void TranscriptProtoRequestPrescribedPlanConvertTool.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v1);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v0);
  return sub_22BE18504();
}

void sub_22C0B39C0()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_22C0E9BF8(v3);
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoRequestPrescribedPlanDisplayTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanKnowledgeTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22BE375F8();
  v5 = sub_22C0E966C(a1, v2, v3, v4);
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v5);
  sub_22BE48874();
  *v6 = 0;
  *(v6 + 8) = 1;
  return sub_22BE37CF8(v7);
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  sub_22BE48874();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAction.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoAction(v1);
  v2 = sub_22C0E9734();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  sub_22BE23D30(v3);
  *v4 = 0;
  v4[1] = 0;
  sub_22C0E9860();
  *v5 = 0;
  v5[1] = 0;
  v6 = sub_22BE2BC9C();
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v6);
  v8 = sub_22BE1AF78(v7);
  sub_22C0E9CF8(v8);
  *v0 = 0;
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  result = sub_22C272E84();
  *(v0 + 8) = result;
  return result;
}

uint64_t TranscriptProtoAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAction(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionParameterValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionParameterValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionCancellation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionCancellation(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPromptSelection.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPromptSelection(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionConfirmation(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmationSystemStyle.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B438C()
{
  v3 = sub_22BE3359C();
  v5 = v4(v3);
  v8 = sub_22C0E966C(v2, v6, v7, v5);
  v1(v8);
  v9 = sub_22C0E986C();
  v0(v9);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoParameterValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolDisambiguation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoToolDisambiguation(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentOutcome.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoExternalAgentOutcome(v1);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v2, v3, v4, v5);
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE23D30(v6);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoExternalAgentOutcome.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExternalAgentOutcome(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResultPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResultPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStatementResult(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = *(v2 + 20);
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE1AF78(v4);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE29520(v5);
  v7 = sub_22BE3A23C(v6);
  sub_22BE19DC4(v7, v8, v9, v3);
  v10 = sub_22BE2BC9C();
  v11 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v10);
  v12 = sub_22BE1AF78(v11);
  return sub_22C0E9CF8(v12);
}

uint64_t sub_22C0B475C()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22C0B47E0()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t TranscriptProtoStatementResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseGenerationRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseGenerationRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCandidate.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCandidate(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B4A18@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  a1(0);
  sub_22BE48874();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoCandidatePromptStatus.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCandidatePromptStatus(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoClientAction.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoClientAction(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_22BE375F8();
  sub_22BE1A140();
  v6 = sub_22BE19DC4(v2, v3, v4, v5);
  sub_22C0E9CF8(v6);
  sub_22BE412F4();
  sub_22C272594();
  sub_22BE18040();
  *(v0 + 16) = sub_22C272E84();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_22BE18040();
  result = sub_22C272E84();
  *(v0 + 24) = result;
  return result;
}

uint64_t TranscriptProtoClientAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoClientAction(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoShimParameters.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoShimParameters(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoShimParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoShimParameter(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoShimParameter.StringQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoShimParameter.StringQuery(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPersonQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPersonQuery(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B4F28@<X0>(char a1@<W0>, void (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  sub_22BE48874();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoPersonQuery.Handle.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPersonQuery.Handle(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B4FE8()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  v0[1] = 0;
  v0[2] = 0;
  result = sub_22BE37CF8(v3);
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoPhotosCandidates.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPhotosCandidates(v0);
  return sub_22BE18504();
}

void TranscriptProtoActionParameterContext.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoActionParameterContext(v1);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v2, v3, v4, v5);
  v6 = sub_22BE27190();
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v6);
  sub_22BE1AF78(v7);
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoActionParameterContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionParameterContext(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntelligenceFlowError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntelligenceFlowError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSessionError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionCoordinatorError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSessionCoordinatorError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExecutorError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExecutorError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPlannerError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPlannerError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionRequirement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionRequirement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementMessage.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemRequirementMessage(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementProtectedAppRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAppRequirement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAppRequirement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  result = sub_22C0E9BF8(v2);
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPermissionRequirement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPermissionRequirement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailure.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionFailure(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailureFailure.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionFailureFailure(v0);
  return sub_22BE18504();
}

void TranscriptProtoActionFailureDeveloperDefinedError.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v1);
  sub_22C0E9BF8(v2);
  sub_22BE23340();
  *(v0 + 32) = 0;
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailureUnableToHandleRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.init()()
{
  v2 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoActionSuccess(v2);
  sub_22C0E9734();
  v3 = sub_22C272594();
  sub_22BE1AF78(v3);
  v4 = sub_22BE27190();
  v5 = type metadata accessor for TranscriptProtoUndoContext(v4);
  sub_22BE1AF78(v5);
  v6 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_22BE1AF78(v6);
  sub_22BFBFC8C(*(v1 + 36));
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionSuccess(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSnippetStream.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSnippetStream(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUndoContext(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoFollowUpAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoFollowUpAction(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoFollowUpActionExecutableAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(v0);
  return sub_22BE18504();
}

double TranscriptProtoFollowUpActionExecutableActionLinkAction.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v1);
  sub_22C0E9BF8(v2);
  sub_22BE412F4();
  result = 0.0;
  *(v0 + 16) = xmmword_22C28BFC0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v0);
  return sub_22BE18504();
}

void TranscriptProtoParameterConfirmation.init()(uint64_t a1@<X8>)
{
  v1 = sub_22C0E9C84(a1);
  type metadata accessor for TranscriptProtoParameterConfirmation(v1);
  sub_22C0E9B58();
  v2 = sub_22C272594();
  sub_22BE29520(v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoParameterConfirmation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterConfirmation(v0);
  return sub_22BE18504();
}

void TranscriptProtoParameterDisambiguation.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  sub_22C0E9BF8(v2);
  sub_22BE412F4();
  *(a1 + 16) = MEMORY[0x277D84F90];
}

uint64_t TranscriptProtoParameterDisambiguation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterDisambiguation(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoValueDisambiguation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoValueDisambiguation(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementOutcome.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementOutcome(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterNeedsValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValueContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterNeedsValueContext(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValuePhotosSearch.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B6934()
{
  v2 = sub_22C0E968C();
  v3(v2);
  v4 = sub_22C0E9B58();
  v0(v4);
  v5 = sub_22BE3CE14();
  sub_22BE19DC4(v5, v6, v7, v8);
  sub_22BE3CF24();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoParameterNotAllowed.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterNotAllowed(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterCandidatesNotFound.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParticipantID.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParticipantID(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanID.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpanID(v0);
  return sub_22BE18504();
}

void TranscriptProtoPlan.init()(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 6;
  type metadata accessor for TranscriptProtoPlan(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
  *(a1 + 32) = MEMORY[0x277D84F90];
}

uint64_t sub_22C0B6C7C()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22C0B6D00()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t TranscriptProtoPlan.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPlan(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRecoverableError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRecoverableError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPlanGenerationError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPlanGenerationError(v0);
  return sub_22BE18504();
}

void TranscriptProtoPlanGenerationModelOutputError.init()()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v0);
  v1 = sub_22C0E9734();
  v2 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v1);
  sub_22BE23D30(v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryResults.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryResults(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B7118(uint64_t a1, void (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  v8 = sub_22BE3C4D0();
  v9(v8);
  a2(0);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  a3(0);
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v17);
  a4(0);
  sub_22BE1A140();
  sub_22BE19DC4(v18, v19, v20, v21);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = 0;
  return result;
}

uint64_t TranscriptProtoQueryStep.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryStep(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.StringQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B75A8()
{
  v2 = sub_22C0E968C();
  v3(v2);
  sub_22BE38954();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v0(0);
  result = sub_22C272E84();
  *v1 = result;
  return result;
}

uint64_t TranscriptProtoQueryPayload.AnswerSynthesisToolQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryStepResults.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoQueryStepResults(v1);
  v2 = sub_22C0E9734();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  sub_22BE23D30(v3);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryStepResults(v0);
  return sub_22BE18504();
}

void TranscriptProtoResponseDialog.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoResponseDialog(v1);
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoResponseDialog.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseDialog(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoResponseOutput(v1);
  v3 = type metadata accessor for TranscriptProtoDialogType(0);
  v4 = sub_22BE25B20();
  sub_22BE19DC4(v4, v5, v6, v3);
  v7 = sub_22BE3A23C(*(v2 + 36));
  sub_22BE19DC4(v7, v8, v9, v3);
  v10 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE1AF78(v10);
  v11 = type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_22BE1AF78(v11);
  sub_22BFBFC8C(*(v2 + 48));
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v13 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  *(v0 + 16) = v13;
  *(v0 + 24) = v13;
  return result;
}

uint64_t TranscriptProtoResponseOutput.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE23C98();

  return v2(v1);
}

uint64_t TranscriptProtoResponseOutput.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v1 = sub_22BE33684();

  return v2(v1);
}

uint64_t TranscriptProtoResponseOutput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseOutput(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoVisualOutputOptions.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoVisualOutputOptions(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoVisualOutput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoVisualOutput(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoLiveActivityOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoLiveActivityOutputPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInAppResponseOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInAppResponseOutputPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemSnippetOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPluginSnippetOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAceCommandOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAceCommandOutputPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAceCommandOutputData.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAceCommandOutputData(v0);
  return sub_22BE18504();
}

double sub_22C0B7FF0()
{
  v1 = sub_22BE2B880();
  v2(v1);
  sub_22BE48874();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = 0.0;
  *v0 = xmmword_22C28BFC0;
  return result;
}

uint64_t TranscriptProtoAddViews.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAddViews(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAddDialogs.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAddDialogs(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSayIt.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSayIt(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRepeatIt.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRepeatIt(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestCompleted.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestCompleted(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCommandFailed.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCommandFailed(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDialogType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDialogType(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStaticText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStaticText(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCATDialog.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCATDialog(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSonicText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSonicText(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoGeneratedText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoGeneratedText(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.init()()
{
  v2 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoResponseManifest(v2);
  v3 = sub_22BFBFC98();
  v4 = type metadata accessor for TranscriptProtoResponseDialog(v3);
  v5 = sub_22BE29EF0(v4);
  v6 = type metadata accessor for TranscriptProtoResponseVisual(v5);
  sub_22BE23D30(v6);
  *v7 = 0;
  v7[1] = 0;
  sub_22C0E9860();
  *v8 = 0;
  v8[1] = 0;
  *(v0 + *(v1 + 36)) = 2;
  *(v0 + *(v1 + 40)) = 2;
  v9 = type metadata accessor for TranscriptProtoUIType(0);
  sub_22BE1AF78(v9);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22C0B8880()
{
  v0 = sub_22BE2B880();
  v1(v0);
  sub_22C2704B4();
  sub_22BE18000();
  v2 = sub_22BE23C98();

  return v3(v2);
}

uint64_t sub_22C0B8904()
{
  v0 = sub_22BE17BC4();
  v1(v0);
  sub_22C2704B4();
  sub_22BE1834C();
  v2 = sub_22BE33684();

  return v3(v2);
}

uint64_t TranscriptProtoResponseManifest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseManifest(v0);
  return sub_22BE18504();
}

void TranscriptProtoResponseParameter.init()(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_22C28E6A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoResponseParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseParameter(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseVisual.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoResponseVisual(v1);
  v2 = sub_22C0E9734();
  v3 = type metadata accessor for TranscriptProtoResponseVisualOptions(v2);
  sub_22BE23D30(v3);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v5;
  return result;
}

uint64_t TranscriptProtoResponseVisual.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseVisual(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B8B88()
{
  v1 = sub_22BE2B880();
  v2(v1);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoResponseVisualOptions.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResponseVisualOptions(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUIType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUIType(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUILabel.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUILabel(v0);
  return sub_22BE18504();
}

void TranscriptProtoUIConfirmationLabel.init()()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for TranscriptProtoUIConfirmationLabel(v0);
  sub_22BE37CF8(v1);
  sub_22BE23340();
}

uint64_t TranscriptProtoUIConfirmationLabel.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUIConfirmationLabel(v0);
  return sub_22BE18504();
}

double TranscriptProtoArchiveViewPayload.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoArchiveViewPayload(v1);
  v0[1] = 0u;
  v0[2] = 0u;
  sub_22C0E9BF8(v2);
  result = 0.0;
  *v0 = xmmword_22C28BFC0;
  return result;
}

uint64_t TranscriptProtoArchiveViewPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoArchiveViewPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoLiveActivityPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoLiveActivityPayload(v0);
  return sub_22BE18504();
}

double sub_22C0B900C()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22BE37CF8(v3);
  result = 0.0;
  *v0 = xmmword_22C28BFC0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoPluginSnippetPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPluginSnippetPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoControlPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoControlPayload(v0);
  return sub_22BE18504();
}

void TranscriptProtoSystemPromptResolution.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoSystemPromptResolution(v1);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = sub_22BE39320();
  v3 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v2);
  sub_22BE1AF78(v3);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE1AF78(v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoSystemPromptResolution.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemPromptResolution(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolutionInput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionResolverRequest.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoActionResolverRequest(v1);
  v2 = sub_22BE3CC6C();
  v3 = type metadata accessor for TranscriptProtoParameterSet(v2);
  sub_22BE1AF78(v3);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  v8 = sub_22BE2BC9C();
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v8);
  v10 = sub_22BE1AF78(v9);
  result = sub_22C0E9CF8(v10);
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoActionResolverRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoActionResolverRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoContextRetrieved.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoContextRetrieved(v1);
  result = sub_22BE37CF8(v2);
  v4 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v4;
  return result;
}

uint64_t TranscriptProtoContextRetrieved.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoContextRetrieved(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrievedContextStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRetrievedContextStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B96DC()
{
  v1 = sub_22BE2B880();
  v2(v1);
  *v0 = 0;
  v0[1] = 0;
  sub_22BE48874();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoSafetyModeException.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSafetyModeException(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterSet.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameterSet(v0);
  return sub_22BE18504();
}

void TranscriptProtoParameter.init()(uint64_t a1@<X8>)
{
  v1 = sub_22C0E9C84(a1);
  type metadata accessor for TranscriptProtoParameter(v1);
  v2 = sub_22C0E9734();
  v3 = type metadata accessor for TranscriptProtoCandidate(v2);
  sub_22BE23D30(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoParameter(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolutionUserAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolutionRequirementResolution.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoVariableSetter.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoVariableSetter(v1);
  sub_22C0E986C();
  v2 = sub_22C272594();
  v3 = sub_22BE25B20();
  sub_22BE19DC4(v3, v4, v5, v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = sub_22C272E84();
  *v0 = result;
  return result;
}

uint64_t TranscriptProtoVariableSetter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoVariableSetter(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0B9B7C()
{
  v3 = sub_22BE3359C();
  v4(v3);
  v5 = sub_22BFBFCD0();
  v6 = v1(v5);
  result = sub_22BE30FA8(v6);
  *v2 = v0;
  return result;
}

uint64_t TranscriptProtoVariableStep.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoVariableStep(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprCallVariant.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v1);
  sub_22BE37CF8(v2);
  sub_22BE412F4();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  result = sub_22C272E84();
  *(v0 + 16) = result;
  return result;
}

uint64_t TranscriptProtoASTFlatExprCallVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprSayVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprSayVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprPickVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprConfirmVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUndoVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprRejectVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprCancelVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTPickType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE48874();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoASTPickType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTPickType(v0);
  return sub_22BE18504();
}

void sub_22C0BA250()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22C0E9BF8(v3);
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoASTFlatExprSearchVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUpdateParametersVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v1);
  v2 = sub_22C0E9B58();
  v3 = type metadata accessor for TranscriptProtoASTFlatValue(v2);
  sub_22BE29520(v3);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprPickOneVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprResolveToolVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprDotVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExpr.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExpr(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatValueArrayVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatValueDictVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatValueDictVariant(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BAA2C()
{
  v1 = sub_22C0E968C();
  v3 = v2(v1);
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v3);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v3);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoASTFlatExprIndexVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSiriXFallbackExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSiriXFallbackExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoValueExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoValueExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoValueExpressionArrayVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoValueExpressionArrayVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPrefixExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPrefixExpression(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BAFF8()
{
  v2 = sub_22C0E968C();
  v3(v2);
  v4 = sub_22BE341A4();
  v5 = v0(v4);
  v6 = sub_22BE3CE14();
  sub_22BE19DC4(v6, v7, v8, v5);
  sub_22BE1A140();
  sub_22BE19DC4(v9, v10, v11, v5);
  sub_22BE3CF24();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  return result;
}

uint64_t TranscriptProtoInfixExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInfixExpression(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BB124()
{
  v2 = sub_22C0E968C();
  v3(v2);
  v4 = sub_22BE341A4();
  v0(v4);
  v5 = sub_22BE3CE14();
  sub_22BE19DC4(v5, v6, v7, v8);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprPrefixVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIndexExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIndexExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParametersExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUpdateParametersExpression(v0);
  return sub_22BE18504();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v1) + 24);
  sub_22BE375F8();
  sub_22C0E96B4(v0 + v2, v3, v4, v5);
  v7 = v0 + v6;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoGlobalToolIdentifier.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BB548()
{
  v3 = sub_22BE3359C();
  v4(v3);
  v5 = sub_22BFBFCD0();
  v6 = v1(v5);
  sub_22BE30FA8(v6);
  v0(0);
  result = sub_22C272E84();
  *v2 = result;
  return result;
}

uint64_t TranscriptProtoCallExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCallExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrieveSpansExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRetrieveSpansExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrieveToolsExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRetrieveToolsExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSayExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSayExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPickExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPickExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoConfirmExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoConfirmExpression(v0);
  return sub_22BE18504();
}

void TranscriptProtoSearchExpression.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoSearchExpression(v1);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
}

uint64_t TranscriptProtoSearchExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSearchExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStructuredSearchExpression.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoStructuredSearchExpression(v1);
  sub_22C0E9734();
  v2 = sub_22C2725A4();
  sub_22BE23D30(v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  type metadata accessor for TranscriptProtoStatementID(0);
  v3 = MEMORY[0x277D84F90];
  result = sub_22C272E84();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStructuredSearchExpression(v0);
  return sub_22BE18504();
}

void TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v1);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = sub_22BE39320();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  sub_22BE23D30(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPickOneExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPickOneExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResolveToolExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoResolveToolExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUndoExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRejectExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRejectExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCancelExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoCancelExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoOpenExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoOpenExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPayloadExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPayloadExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoFormatExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoFormatExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserConfirmExpression.init()()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for TranscriptProtoStatementID(v0);
  sub_22BE1A140();
  sub_22BE19DC4(v2, v3, v4, v1);
  v5 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v6 = sub_22BE3A23C(*(v5 + 20));
  sub_22BE19DC4(v6, v7, v8, v1);
  v9 = sub_22BE3A23C(*(v5 + 24));
  sub_22BE19DC4(v9, v10, v11, v1);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoUserConfirmExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserConfirmExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserDisambiguateExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUserDisambiguateExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAnswerSynthesisExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAnswerSynthesisExpression(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAnswerSynthesisExtractionCandidate.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolParameterValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoToolParameterValue(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEntitySpanMatchResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEntitySpanMatchResult(v0);
  return sub_22BE18504();
}

void TranscriptProtoToolRetrievalResponse.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoToolRetrievalResponse(v1);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
  *(v0 + 32) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = v2;
}

uint64_t TranscriptProtoToolRetrievalResponse.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoToolRetrievalResponse(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemResponse.init()()
{
  v2 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoSystemResponse(v2);
  v3 = sub_22BFBFC98();
  v4 = type metadata accessor for TranscriptProtoResponseOutput(v3);
  sub_22BE1AF78(v4);
  sub_22BFBFC8C(*(v1 + 24));
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoSystemResponse.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSystemResponse(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoStatementOutcome(v2);
  v6 = sub_22C0E966C(v0, v4, v5, v3);
  type metadata accessor for TranscriptProtoInterpretedStatementResult(v6);
  v7 = sub_22C0E986C();
  v8 = type metadata accessor for TranscriptProtoStatementID(v7);
  v9 = sub_22BE25B20();
  sub_22BE19DC4(v9, v10, v11, v8);
  v12 = sub_22BE3A23C(v1[6]);
  sub_22BE19DC4(v12, v13, v14, v8);
  sub_22BFBFC8C(v1[7]);
  sub_22C0E9860();
  *v15 = 0;
  v15[1] = 0;
  v16 = sub_22BE3A23C(v1[9]);
  v19 = sub_22BE19DC4(v16, v17, v18, v8);
  return sub_22C0E9CF8(v19);
}

uint64_t TranscriptProtoInterpretedStatementResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoInterpretedStatementResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22BE375F8();
  v6 = sub_22C0E966C(a1, v3, v4, v5);
  type metadata accessor for TranscriptProtoProgramStatement(v6);
  v7 = sub_22C0E986C();
  type metadata accessor for TranscriptProtoExpression(v7);
  v8 = sub_22BE25B20();
  sub_22BE19DC4(v8, v9, v10, v11);
  *(a1 + *(v1 + 24)) = 2;
  *(a1 + *(v1 + 28)) = 2;
  sub_22C0E9860();
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = sub_22BE2BC9C();
  v14 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(v13);
  v15 = sub_22BE1AF78(v14);
  return sub_22C0E9CF8(v15);
}

uint64_t TranscriptProtoProgramStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoProgramStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.ExecutionSupportType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(v0);
  return sub_22BE18504();
}

void sub_22C0BCD5C()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22C0E9BF8(v3);
  sub_22BE23340();
  *(v0 + 32) = 0;
  *(v0 + 40) = v4;
}

uint64_t TranscriptProtoLocaleSettings.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoLocaleSettings(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoGenderSettings.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoGenderSettings(v1);
  result = sub_22BE37CF8(v2);
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoGenderSettings.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoGenderSettings(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v1);
  sub_22BE48874();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDeviceDetails.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoDeviceDetails(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementID.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  result = sub_22BE37CF8(v2);
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoStatementID.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoStatementID(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolResolution.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoToolResolution(v0);
  return sub_22BE18504();
}

void TranscriptProtoUndoRedoRequest.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoUndoRedoRequest(v1);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = sub_22BE25B20();
  sub_22BE19DC4(v4, v5, v6, v3);
  v7 = sub_22BE3A23C(*(v2 + 32));
  sub_22BE19DC4(v7, v8, v9, v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoUndoRedoRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoUndoRedoRequest(v0);
  return sub_22BE18504();
}

void TranscriptProtoClientUndoRedoRequest.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(v1);
  v2 = sub_22C0E9B58();
  v3 = type metadata accessor for TranscriptProtoStatementID(v2);
  sub_22BE29520(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoClientUndoRedoRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoClientUndoRedoRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTypeConversionRequest.init()()
{
  sub_22BE1A5E4();
  v1 = sub_22C272594();
  v4 = sub_22C0E966C(v0, v2, v3, v1);
  type metadata accessor for TranscriptProtoTypeConversionRequest(v4);
  sub_22BFBFC98();
  v5 = sub_22C2725A4();
  v6 = sub_22BE29EF0(v5);
  v7 = type metadata accessor for TranscriptProtoStatementID(v6);
  sub_22BE23D30(v7);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoTypeConversionRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTypeConversionRequest(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BD444()
{
  v1 = sub_22C0E968C();
  v2(v1);
  v3 = sub_22BE238E8();
  v7 = sub_22C0E966C(v3, v4, v5, v6);
  v0(v7);
  v8 = sub_22BE341A4();
  v9 = type metadata accessor for TranscriptProtoStatementID(v8);
  v10 = sub_22BE3CE14();
  sub_22BE19DC4(v10, v11, v12, v9);
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v9);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoTypeConversionResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoTypeConversionResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationResult.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoQueryDecorationResult(v1);
  v2 = sub_22BE3CC6C();
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(v2);
  sub_22BE1AF78(DecorationToolRetrievalResponse);
  sub_22C0E9860();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v5;
  v0[2] = v5;
  return result;
}

uint64_t TranscriptProtoQueryDecorationResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationResult(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BD670()
{
  v3 = sub_22BE3359C();
  v4(v3);
  v5 = sub_22BFBFCD0();
  v6 = v1(v5);
  sub_22C0E9744(v6);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSkipStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSkipStatement(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestAmendment.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoRequestAmendment(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolRetrievalRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoToolRetrievalRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanMatchRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoSpanMatchRequest(v0);
  return sub_22BE18504();
}

void TranscriptProtoIntermediateSystemResponse.init()()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(v1);
  v2 = sub_22BFBFC98();
  v3 = type metadata accessor for TranscriptProtoResponseOutput(v2);
  sub_22BE1AF78(v3);
  sub_22BFBFC8C(*(v0 + 24));
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  sub_22C0E9860();
  *v8 = 0;
  v8[1] = 0;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoIntermediateSystemResponse.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BE254()
{
  v2 = sub_22C0E968C();
  v3(v2);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v4 = sub_22C0E9B58();
  v0(v4);
  v5 = sub_22BE3CE14();
  sub_22BE19DC4(v5, v6, v7, v8);
  sub_22BE3CF24();
  *v9 = 0;
  v9[1] = 0;
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  return result;
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAgentRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentHandoffRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAgentHandoffRequest(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentPassRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAgentPassRequest(v0);
  return sub_22BE18504();
}

uint64_t _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  sub_22BE1A5E4();
  sub_22C2704B4();
  sub_22BE18000();
  v0 = sub_22BE19454();

  return v1(v0);
}

uint64_t _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  sub_22BE17BC4();
  sub_22C2704B4();
  sub_22BE18000();
  v1 = sub_22BE291BC();

  return v2(v1, v0);
}

uint64_t TranscriptProtoAgentPrimitiveAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoAgentPrimitiveAction(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPrimitiveAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoPrimitiveAction(v0);
  return sub_22BE18504();
}

uint64_t sub_22C0BE824(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DAA0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BE8A8@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptProtoPlanSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22C0BE8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C0B07C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BE958(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DB9C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BE9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C0B076C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DBF0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DC98();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DCEC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DC44();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DD40();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BECA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DD94();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BED18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DAF4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BED90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DDE8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC2DD4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void TranscriptProtoEvent.clientRequestID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

void TranscriptProtoEvent.clientSessionID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

void TranscriptProtoEvent.clientApplicationID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

void TranscriptProtoEvent.rawQueryEventID.setter()
{
  sub_22BE1A8A8();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
}

uint64_t TranscriptProtoEvent.rawPayload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.clientGroupID.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.timepoint.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE22814();
}

uint64_t TranscriptProtoEvent.timepoint.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoEvent.timepoint.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.sender.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE22814();
}

uint64_t TranscriptProtoEvent.sender.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoEvent.sender.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.postingSpan.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE22814();
}

uint64_t TranscriptProtoEvent.postingSpan.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoEvent.postingSpan.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for TranscriptProtoEvent(v0);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.init(rawID:rawSessionID:rawQueryEventID:rawPayload:clientRequestID:clientSessionID:clientApplicationID:clientGroupID:timepoint:sender:postingSpan:rawInitiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v25);
  v26 = (a8 + *(v21 + 48));
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE1A140();
  sub_22BE19DC4(v27, v28, v29, v30);
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v34);
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v35, v36, v37, v38);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  sub_22BE2343C();
  *(a8 + 32) = a7;
  *(a8 + 40) = a9;
  *(a8 + 56) = a10;
  *(a8 + 72) = a11;
  *v26 = a12;
  v26[1] = a13;
  sub_22BE2343C();
  sub_22BE2343C();
  result = sub_22BE2343C();
  *(a8 + 80) = a17;
  return result;
}

void static TranscriptProtoPayloadEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  v329 = v22;
  v330 = v23;
  v24 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v27 = sub_22BE18950(v26);
  v28 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v27);
  v29 = sub_22BE19448(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v31 = sub_22BE18950(v30);
  v32 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v31);
  v33 = sub_22BE19448(v32);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v35 = sub_22BE18950(v34);
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(v35);
  v37 = sub_22BE290A0(matched, v318);
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v39 = sub_22BE18950(v38);
  v40 = type metadata accessor for TranscriptProtoContextRetrievalRequest(v39);
  v41 = sub_22BE19448(v40);
  MEMORY[0x28223BE20](v41);
  sub_22BE17A44();
  v43 = sub_22BE18950(v42);
  v44 = type metadata accessor for TranscriptProtoToolRetrievalRequest(v43);
  v45 = sub_22BE290A0(v44, &v317);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v47 = sub_22BE18950(v46);
  v48 = type metadata accessor for TranscriptProtoRequestAmendment(v47);
  v49 = sub_22BE19448(v48);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  v51 = sub_22BE18950(v50);
  v52 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v51);
  v53 = sub_22BE19448(v52);
  MEMORY[0x28223BE20](v53);
  sub_22BE17A44();
  v55 = sub_22BE18950(v54);
  v56 = type metadata accessor for TranscriptProtoSkipStatement(v55);
  v57 = sub_22BE19448(v56);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v59 = sub_22BE18950(v58);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v59);
  v61 = sub_22BE19448(DecorationPrePlannerResult);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v63 = sub_22BE18950(v62);
  v64 = type metadata accessor for TranscriptProtoContinuePlanning(v63);
  v65 = sub_22BE19448(v64);
  MEMORY[0x28223BE20](v65);
  sub_22BE17A44();
  v67 = sub_22BE18950(v66);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(v67);
  v69 = sub_22BE19448(DecorationResult);
  MEMORY[0x28223BE20](v69);
  sub_22BE17A44();
  v71 = sub_22BE18950(v70);
  v72 = type metadata accessor for TranscriptProtoTypeConversionResult(v71);
  v73 = sub_22BE19448(v72);
  MEMORY[0x28223BE20](v73);
  sub_22BE17A44();
  v75 = sub_22BE18950(v74);
  v76 = type metadata accessor for TranscriptProtoTypeConversionRequest(v75);
  v77 = sub_22BE19448(v76);
  MEMORY[0x28223BE20](v77);
  sub_22BE17A44();
  v79 = sub_22BE18950(v78);
  v80 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(v79);
  v81 = sub_22BE19448(v80);
  MEMORY[0x28223BE20](v81);
  sub_22BE17A44();
  v83 = sub_22BE18950(v82);
  v84 = type metadata accessor for TranscriptProtoUndoRedoRequest(v83);
  v85 = sub_22BE19448(v84);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v87 = sub_22BE18950(v86);
  v88 = type metadata accessor for TranscriptProtoToolResolution(v87);
  v89 = sub_22BE19448(v88);
  MEMORY[0x28223BE20](v89);
  sub_22BE17A44();
  v91 = sub_22BE18950(v90);
  v92 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v91);
  v93 = sub_22BE290A0(v92, &v313);
  MEMORY[0x28223BE20](v93);
  sub_22BE17A44();
  v95 = sub_22BE18950(v94);
  v96 = type metadata accessor for TranscriptProtoExternalAgentOutcome(v95);
  v97 = sub_22BE19448(v96);
  MEMORY[0x28223BE20](v97);
  sub_22BE17A44();
  v99 = sub_22BE18950(v98);
  v100 = type metadata accessor for TranscriptProtoExternalAgentRequest(v99);
  v101 = sub_22BE19448(v100);
  MEMORY[0x28223BE20](v101);
  sub_22BE17A44();
  v103 = sub_22BE18950(v102);
  v104 = type metadata accessor for TranscriptProtoStatementResult(v103);
  v105 = sub_22BE19448(v104);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v107 = sub_22BE18950(v106);
  v108 = type metadata accessor for TranscriptProtoSystemResponse(v107);
  v109 = sub_22BE19448(v108);
  MEMORY[0x28223BE20](v109);
  sub_22BE17A44();
  v111 = sub_22BE18950(v110);
  v112 = type metadata accessor for TranscriptProtoToolRetrievalResponse(v111);
  v113 = sub_22BE19448(v112);
  MEMORY[0x28223BE20](v113);
  sub_22BE17A44();
  v115 = sub_22BE18950(v114);
  v116 = type metadata accessor for TranscriptProtoActionCancellation(v115);
  v117 = sub_22BE19448(v116);
  MEMORY[0x28223BE20](v117);
  sub_22BE17A44();
  v119 = sub_22BE18950(v118);
  v120 = type metadata accessor for TranscriptProtoContextRetrieved(v119);
  v121 = sub_22BE290A0(v120, &v311);
  MEMORY[0x28223BE20](v121);
  sub_22BE17A44();
  v123 = sub_22BE18950(v122);
  v124 = type metadata accessor for TranscriptProtoEntitySpanMatchResult(v123);
  v125 = sub_22BE290A0(v124, &v316);
  MEMORY[0x28223BE20](v125);
  sub_22BE17A44();
  v127 = sub_22BE18950(v126);
  v128 = type metadata accessor for TranscriptProtoResponseGenerationRequest(v127);
  v129 = sub_22BE290A0(v128, &v315);
  MEMORY[0x28223BE20](v129);
  sub_22BE17A44();
  v131 = sub_22BE18950(v130);
  v132 = type metadata accessor for TranscriptProtoSafetyModeException(v131);
  v133 = sub_22BE290A0(v132, &v314);
  MEMORY[0x28223BE20](v133);
  sub_22BE17A44();
  v135 = sub_22BE18950(v134);
  v136 = type metadata accessor for TranscriptProtoSafetyModeRelease(v135);
  v137 = sub_22BE19448(v136);
  MEMORY[0x28223BE20](v137);
  sub_22BE17A44();
  v139 = sub_22BE18950(v138);
  v140 = type metadata accessor for TranscriptProtoActionResolverRequest(v139);
  v141 = sub_22BE19448(v140);
  MEMORY[0x28223BE20](v141);
  sub_22BE17A44();
  v143 = sub_22BE18950(v142);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(v143);
  v145 = sub_22BE19448(StepResults);
  MEMORY[0x28223BE20](v145);
  sub_22BE17A44();
  v147 = sub_22BE18950(v146);
  v148 = type metadata accessor for TranscriptProtoRecoverableError(v147);
  v149 = sub_22BE19448(v148);
  MEMORY[0x28223BE20](v149);
  sub_22BE17A44();
  v151 = sub_22BE18950(v150);
  v152 = type metadata accessor for TranscriptProtoSessionError(v151);
  v153 = sub_22BE19448(v152);
  MEMORY[0x28223BE20](v153);
  sub_22BE17A44();
  v155 = sub_22BE18950(v154);
  v156 = type metadata accessor for TranscriptProtoVariableStep(v155);
  v157 = sub_22BE19448(v156);
  MEMORY[0x28223BE20](v157);
  sub_22BE17A44();
  v159 = sub_22BE18950(v158);
  Step = type metadata accessor for TranscriptProtoQueryStep(v159);
  v161 = sub_22BE19448(Step);
  MEMORY[0x28223BE20](v161);
  sub_22BE17A44();
  v163 = sub_22BE18950(v162);
  v164 = type metadata accessor for TranscriptProtoClientAction(v163);
  v165 = sub_22BE19448(v164);
  MEMORY[0x28223BE20](v165);
  sub_22BE17A44();
  v167 = sub_22BE18950(v166);
  v168 = type metadata accessor for TranscriptProtoAction(v167);
  v169 = sub_22BE19448(v168);
  MEMORY[0x28223BE20](v169);
  sub_22BE17A44();
  v171 = sub_22BE18950(v170);
  v172 = type metadata accessor for TranscriptProtoPlan(v171);
  v173 = sub_22BE19448(v172);
  MEMORY[0x28223BE20](v173);
  sub_22BE17A44();
  v175 = sub_22BE18950(v174);
  v176 = type metadata accessor for TranscriptProtoRequest(v175);
  v177 = sub_22BE19448(v176);
  MEMORY[0x28223BE20](v177);
  sub_22BE17A44();
  v179 = sub_22BE18950(v178);
  v180 = type metadata accessor for TranscriptProtoSpeechPartialResult(v179);
  v181 = sub_22BE290A0(v180, &v312);
  MEMORY[0x28223BE20](v181);
  sub_22BE17A44();
  v183 = sub_22BE18950(v182);
  v184 = type metadata accessor for TranscriptProtoUserTurnStarted(v183);
  v185 = sub_22BE19448(v184);
  MEMORY[0x28223BE20](v185);
  sub_22BE17A44();
  v187 = sub_22BE18950(v186);
  v188 = type metadata accessor for TranscriptProtoSessionStart(v187);
  v189 = sub_22BE19448(v188);
  MEMORY[0x28223BE20](v189);
  sub_22BE17A44();
  v191 = sub_22BE18950(v190);
  v328 = type metadata accessor for TranscriptProtoPayloadEnum(v191);
  sub_22BE18000();
  MEMORY[0x28223BE20](v192);
  sub_22BE183AC();
  v327 = v193 - v194;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v195);
  sub_22BE19490();
  v326 = v196;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v197);
  sub_22BE4608C(v198, v199, v200, v201, v202, v203, v204, v205, v310);
  MEMORY[0x28223BE20](v206);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v207);
  sub_22BE19490();
  v325 = v208;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v209);
  sub_22BE23730(v210, v211, v212, v213, v214, v215, v216, v217, v310);
  MEMORY[0x28223BE20](v218);
  sub_22BE19490();
  v324 = v219;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v220);
  sub_22BE19490();
  v323 = v221;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v222);
  sub_22BE19490();
  v322 = v223;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v224);
  sub_22BE19490();
  v320 = v225;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v226);
  sub_22BE19490();
  v321 = v227;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v228);
  sub_22BE19490();
  v318[32] = v229;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v230);
  sub_22BE19490();
  v318[31] = v231;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v232);
  sub_22BE19490();
  v318[30] = v233;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v234);
  sub_22BE19490();
  v318[29] = v235;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v236);
  sub_22BE19490();
  v318[28] = v237;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v238);
  sub_22BE19490();
  v318[27] = v239;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v240);
  sub_22BE19490();
  v319 = v241;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v242);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v243);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v244);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v245);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v246);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v247);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v248);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v249);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v250);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v251);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v252);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v253);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v254);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v255);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v256);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v257);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v258);
  sub_22BE23858();
  MEMORY[0x28223BE20](v259);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v260);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v261);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v262);
  sub_22BE18094();
  MEMORY[0x28223BE20](v263);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v264);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v265);
  sub_22BE26800();
  v266 = sub_22BE5CE4C(&qword_27D911700, &qword_22C2AE478);
  sub_22BE19448(v266);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v267);
  v269 = &v310 - v268;
  v271 = *(v270 + 56);
  sub_22C0C2A68();
  v329 = v271;
  sub_22C0C2A68();
  sub_22BE2590C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22C0C1B18();
        static TranscriptProtoUserTurnStarted.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE19454();
        goto LABEL_167;
      }

      sub_22BE26148();
      goto LABEL_158;
    case 2u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 2)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v292 = v274 && v290 == v291;
      if (v292 || (sub_22C274014() & 1) != 0)
      {
        sub_22BE9C9E8();
        if (v293)
        {
          sub_22C0E9B3C();
          v294 = sub_22C0C1B6C();
          if (sub_22BE3F474(v294))
          {
            goto LABEL_173;
          }
        }
      }

      goto LABEL_175;
    case 3u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 3)
      {
        sub_22BE1A90C();
        sub_22BE324E0();
        sub_22C0C1B18();
        static TranscriptProtoRequest.== infix(_:_:)();
        sub_22BE3C5A4();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22BE3E76C();
      goto LABEL_158;
    case 4u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 4)
      {
        sub_22BE1A90C();
        sub_22C0C1B18();
        v283 = sub_22BE324FC();
        static TranscriptProtoPlan.== infix(_:_:)(v283);
        sub_22BE3C5A4();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22C0E9918();
      goto LABEL_158;
    case 5u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 5)
      {
        sub_22BE1A90C();
        sub_22BE324E0();
        sub_22C0C1B18();
        static TranscriptProtoAction.== infix(_:_:)();
        sub_22BE3C5A4();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22BE20118();
      goto LABEL_158;
    case 6u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 6)
      {
        sub_22BE1A90C();
        sub_22C0C1B18();
        sub_22BE336E8();
        static TranscriptProtoClientAction.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22C0E98B8();
      goto LABEL_158;
    case 7u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 7)
      {
        sub_22BE1A90C();
        sub_22BE324E0();
        sub_22C0C1B18();
        static TranscriptProtoQueryStep.== infix(_:_:)();
        sub_22BE3C5A4();
        sub_22C0C1AC4();
LABEL_167:
        sub_22C0C1AC4();
        sub_22BE3617C();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE3ACD8();
LABEL_158:
        sub_22C0C1AC4();
LABEL_159:
        sub_22BE33928(v269, &qword_27D911700, &qword_22C2AE478);
      }

      goto LABEL_168;
    case 8u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 8)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoVariableStep.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 9u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 9)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v284 = sub_22BE38970();
      static TranscriptProtoSessionError.== infix(_:_:)(v284);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xAu:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 10)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v302 = sub_22BE38970();
      static TranscriptProtoRecoverableError.== infix(_:_:)(v302);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xBu:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 11)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v282 = sub_22BE38970();
      static TranscriptProtoQueryStepResults.== infix(_:_:)(v282);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xCu:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 12)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoActionResolverRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xDu:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() == 13)
      {
        goto LABEL_93;
      }

      goto LABEL_158;
    case 0xEu:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 14)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v278 = v21[1];
      v279 = v20[1];
      if (v278)
      {
        if (!v279)
        {
          goto LABEL_175;
        }

        v280 = *v21 == *v20 && v278 == v279;
        if (!v280 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_175;
        }
      }

      else if (v279)
      {
LABEL_175:
        sub_22C0C1AC4();
        sub_22BE291B0();
        sub_22C0C1AC4();
        sub_22BE3617C();
        sub_22C0C1AC4();
        goto LABEL_168;
      }

      sub_22C0E97EC();
      v309 = sub_22C0C1B6C();
      if ((sub_22BE3F474(v309) & 1) == 0)
      {
        goto LABEL_175;
      }

LABEL_173:
      sub_22C0C1AC4();
      sub_22BE291B0();
      sub_22C0C1AC4();
LABEL_174:
      sub_22BE3617C();
      sub_22C0C1AC4();
LABEL_168:
      sub_22BE363EC();
      sub_22BE1AABC();
      return;
    case 0xFu:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 15)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C0E9B30();
      sub_22BE982FC();
      if (v295)
      {
        sub_22C0E97EC();
        v296 = sub_22C0C1B6C();
        if (sub_22BE3F474(v296))
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x10u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 16)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C0E9B30();
      sub_22BE9AD38();
      if (v276)
      {
        sub_22C0E97EC();
        v277 = sub_22C0C1B6C();
        if (sub_22BE3F474(v277))
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x11u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 17)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C0E9B30();
      sub_22BE9A770();
      if (v297)
      {
        sub_22BE9A770();
        if (v298)
        {
          sub_22C0E9B3C();
          v299 = sub_22C0C1B6C();
          if (sub_22BE3F474(v299))
          {
            goto LABEL_173;
          }
        }
      }

      goto LABEL_175;
    case 0x12u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 18)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v300 = sub_22BE38970();
      static TranscriptProtoActionCancellation.== infix(_:_:)(v300, v301);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x13u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 19)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v304 = sub_22BE38970();
      static TranscriptProtoToolRetrievalResponse.== infix(_:_:)(v304);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x14u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 20)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoSystemResponse.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x15u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 21)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoStatementResult.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x16u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 22)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoExternalAgentRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x17u:
      sub_22BE18E74();
      sub_22BE3FF88();
      if (sub_22BE25D28() != 23)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoExternalAgentOutcome.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x18u:
      sub_22BE18E74();
      v285 = v319;
      sub_22C0C2A68();
      if (sub_22BE25D28() != 24)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v288 = v274 && v286 == v287;
      if (v288 || (sub_22C274014()) && (sub_22BE9693C(*(v285 + 16), v20[2]))
      {
        sub_22C0E9B3C();
        v289 = sub_22C0C1B6C();
        if (sub_22BE3F474(v289))
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x19u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 25)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoToolResolution.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Au:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 26)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoUndoRedoRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Bu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 27)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoClientUndoRedoRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Cu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 28)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoTypeConversionRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Du:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 29)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoTypeConversionResult.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Eu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 30)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v303 = sub_22BE38970();
      static TranscriptProtoQueryDecorationResult.== infix(_:_:)(v303);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Fu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 31)
      {
        goto LABEL_93;
      }

      goto LABEL_158;
    case 0x20u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 32)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoQueryDecorationPrePlannerResult.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x21u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 33)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      v281 = sub_22BE38970();
      static TranscriptProtoSkipStatement.== infix(_:_:)(v281);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x22u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 34)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoExecutionPreconditionEvaluatorRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x23u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 35)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoRequestAmendment.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x24u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 36)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v274 = v274 && v272 == v273;
      if (v274 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC();
        v275 = sub_22C0C1B6C();
        if (sub_22BE3F474(v275))
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x25u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 37)
      {
        goto LABEL_158;
      }

LABEL_93:
      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE38970();
      sub_22C272FD4();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x26u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 38)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE46B80();
      v307 = v274 && v305 == v306;
      if (v307 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC();
        v308 = sub_22C0C1B6C();
        if (sub_22BE3F474(v308))
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x27u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 39)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoIntermediateSystemResponse.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x28u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 40)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoIntermediateSystemResponseRendered.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x29u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 41)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoAgentPrimitiveAction.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_174;
      }

      goto LABEL_159;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_174;
      }

      goto LABEL_159;
    default:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28())
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0();
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoSessionStart.== infix(_:_:)();
      sub_22BE3C5A4();
LABEL_166:
      sub_22C0C1AC4();
      goto LABEL_167;
  }
}