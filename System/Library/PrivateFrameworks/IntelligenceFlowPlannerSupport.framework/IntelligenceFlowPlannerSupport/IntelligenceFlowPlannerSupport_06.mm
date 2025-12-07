void sub_22BEA0714()
{
  sub_22BE19460();
  v4 = sub_22BE37CE8();
  type metadata accessor for QueryPredicate(v4);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v5);
  sub_22BE3D12C();
  sub_22BEC0538();
  MEMORY[0x28223BE20](v6);
  sub_22BEC0588();
  v7 = *(v2 + 16);
  if (v7 == *(v3 + 16) && v7 && v2 != v3)
  {
    sub_22BEBFEA0();
    v9 = v2 + v8;
    v10 = v3 + v8;
    v12 = *(v11 + 72);
    while (1)
    {
      sub_22BE1C2A0();
      sub_22BEBFD70();
      sub_22BE431C0();
      sub_22BEBFD70();
      v13 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (!v13 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v14 = 0xE100000000000000;
      v15 = 61;
      switch(*(v1 + 16))
      {
        case 1:
          v14 = 0xE200000000000000;
          v15 = 15649;
          break;
        case 2:
          v15 = 62;
          break;
        case 3:
          v14 = 0xE200000000000000;
          v15 = 15678;
          break;
        case 4:
          v15 = 60;
          break;
        case 5:
          v14 = 0xE200000000000000;
          v15 = 15676;
          break;
        case 6:
          v14 = 0xE800000000000000;
          v15 = 0x736E6961746E6F63;
          break;
        case 7:
          v15 = 0x666572705F736168;
          goto LABEL_20;
        case 8:
          v15 = 0x666675735F736168;
LABEL_20:
          v14 = 0xEA00000000007869;
          break;
        case 9:
          v14 = 0xEA00000000006E65;
          v15 = 0x65777465625F7369;
          break;
        default:
          break;
      }

      v16 = 0xE100000000000000;
      v17 = 61;
      switch(*(v0 + 16))
      {
        case 1:
          v16 = 0xE200000000000000;
          v17 = 15649;
          break;
        case 2:
          v17 = 62;
          break;
        case 3:
          v16 = 0xE200000000000000;
          v17 = 15678;
          break;
        case 4:
          v17 = 60;
          break;
        case 5:
          v16 = 0xE200000000000000;
          v17 = 15676;
          break;
        case 6:
          v16 = 0xE800000000000000;
          v17 = 0x736E6961746E6F63;
          break;
        case 7:
          v17 = 0x666572705F736168;
          goto LABEL_31;
        case 8:
          v17 = 0x666675735F736168;
LABEL_31:
          v16 = 0xEA00000000007869;
          break;
        case 9:
          v16 = 0xEA00000000006E65;
          v17 = 0x65777465625F7369;
          break;
        default:
          break;
      }

      if (v15 == v17 && v14 == v16)
      {
      }

      else
      {
        v19 = sub_22C274014();

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      v20 = sub_22C272844();
      sub_22BEBFDC4();
      sub_22BE236C8();
      sub_22BEBFDC4();
      if (v20)
      {
        v10 += v12;
        v9 += v12;
        sub_22BEC0018();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    sub_22BEBFDC4();
    sub_22BE1B5EC();
    sub_22BEBFDC4();
  }

LABEL_45:
  sub_22BE1AABC();
}

void sub_22BEA0AA8()
{
  sub_22BE19460();
  v4 = sub_22BE37CE8();
  type metadata accessor for UpdateParametersExpression.UpdateParameter(v4);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v5);
  sub_22BE3D12C();
  sub_22BEC0538();
  MEMORY[0x28223BE20](v6);
  sub_22BEC0588();
  v7 = *(v2 + 16);
  if (v7 == *(v3 + 16) && v7 && v2 != v3)
  {
    sub_22BEBFEA0();
    v9 = v2 + v8;
    v10 = v3 + v8;
    v12 = *(v11 + 72);
    while (1)
    {
      sub_22BE1C2A0();
      sub_22BEBFD70();
      sub_22BE431C0();
      sub_22BEBFD70();
      v13 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (!v13 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      if (*(v1 + 24))
      {
        if (!*(v0 + 24))
        {
          break;
        }
      }

      else
      {
        sub_22BEC02E4();
        if (v14)
        {
          break;
        }
      }

      if (*(v1 + 25) != *(v0 + 25))
      {
        break;
      }

      v15 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      sub_22BEBFDC4();
      sub_22BE236C8();
      sub_22BEBFDC4();
      if (v15)
      {
        v10 += v12;
        v9 += v12;
        if (--v7)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    sub_22BEBFDC4();
    sub_22BE1B5EC();
    sub_22BEBFDC4();
  }

LABEL_20:
  sub_22BE1AABC();
}

void sub_22BEA0CA0()
{
  sub_22BE19460();
  v5 = sub_22BE1BC30();
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Token(v5);
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v10);
  sub_22BE181E4();
  v63 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  sub_22BE179D8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v53 - v18;
  type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v20);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v21);
  sub_22BE239A8();
  sub_22BEC0478();
  if (v49 && v22 && v4 != v0)
  {
    v61 = v22;
    v62 = v6;
    sub_22BEBFEA0();
    v25 = v4 + v24;
    v58 = v3;
    v59 = v0 + v24;
    v27 = *(v26 + 72);
    v28 = v64;
    v53[1] = v12;
    v53[5] = v25;
    v53[6] = v29;
    v53[4] = v27;
    while (1)
    {
      v30 = v23;
      sub_22BEBFD70();
      v60 = v30;
      if (v30 == v61)
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_22BEBFD70();
      v31 = *v3;
      v32 = *(*v28 + 16);
      if (v32 != *(v31 + 16))
      {
LABEL_35:
        sub_22BE32D28();
        sub_22BEBFDC4();
        sub_22BE33FCC();
        sub_22BEBFDC4();
        goto LABEL_36;
      }

      if (v32 && *v28 != v31)
      {
        break;
      }

LABEL_29:
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v3 = v58;
      v52 = sub_22C272FD4();
      sub_22BE32D28();
      sub_22BEBFDC4();
      sub_22BE33FCC();
      sub_22BEBFDC4();
      if (v52)
      {
        v23 = v60 + 1;
        if (v60 + 1 != v61)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    v33 = 0;
    sub_22BE3CF48();
    v36 = v34 + v35;
    v56 = v37 + v35;
    v57 = v8;
    v39 = *(v38 + 72);
    v54 = v19;
    v55 = v16;
    v53[2] = v39;
    v53[3] = v36;
    while (1)
    {
      sub_22BE460F0();
      sub_22BEBFD70();
      if (v33 == v32)
      {
        break;
      }

      sub_22BE460F0();
      sub_22BEBFD70();
      v40 = *v19;
      v41 = *(*v19 + 16);
      if (v41 != *(*v16 + 16))
      {
        goto LABEL_34;
      }

      if (v41 && v40 != *v16)
      {
        sub_22BE3CF48();
        v44 = v42 + v43;
        v46 = v45 + v43;
        v48 = *(v47 + 72);
        while (1)
        {
          sub_22BEC0124();
          sub_22BE38FD8();
          sub_22BEBFD70();
          sub_22BEC0124();
          sub_22BE33BE8();
          sub_22BEBFD70();
          v49 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
          if (!v49 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 24) != *(v1 + 24) || *(v2 + 32) != *(v1 + 32) || *(v2 + 40) != *(v1 + 40))
          {
            break;
          }

          sub_22C2704B4();
          sub_22BE18CE0();
          sub_22BEBFCD4(&qword_27D9090E0);
          v50 = sub_22C272FD4();
          sub_22BE37528();
          sub_22BEBFDC4();
          sub_22BE200D4();
          sub_22BEBFDC4();
          if ((v50 & 1) == 0)
          {
            goto LABEL_34;
          }

          v46 += v48;
          v44 += v48;
          if (!--v41)
          {
            goto LABEL_27;
          }
        }

        sub_22BE37528();
        sub_22BEBFDC4();
        sub_22BE200D4();
        sub_22BEBFDC4();
LABEL_34:
        sub_22BEC00AC();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        goto LABEL_35;
      }

LABEL_27:
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v19 = v54;
      v16 = v55;
      v51 = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      v8 = v57;
      v28 = v64;
      if ((v51 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (++v33 == v32)
      {
        goto LABEL_29;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_36:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BEA1204()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v5 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  v35 = sub_22BE5CE4C(&qword_27D9090C8, &unk_22C27FCD0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v38 = v8;
  v9 = sub_22BE183BC();
  v10 = type metadata accessor for ContextProtoRetrievedTool.Definition(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE252B8(v12);
  v13 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE20310(v15, v32);
  v37 = sub_22BE5CE4C(&qword_27D9090D8, &unk_22C27FCE0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E64();
  type metadata accessor for ContextProtoToolQueryOutput(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v17);
  sub_22BE3D12C();
  sub_22BE239A8();
  MEMORY[0x28223BE20](v18);
  sub_22BEC036C();
  v19 = *(v1 + 16);
  if (v19 != *(v0 + 16) || !v19 || v1 == v0)
  {
    goto LABEL_30;
  }

  sub_22BEBFEA0();
  v21 = v1 + v20;
  v22 = v0 + v20;
  v36 = *(v23 + 72);
  v34 = v10;
  v33 = v2;
  while (1)
  {
    sub_22BE36658();
    sub_22BEBFD70();
    sub_22BEBFD70();
    v24 = *(v37 + 48);
    sub_22BE392D4();
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1AB5C(v2, 1, v10);
    if (!v25)
    {
      break;
    }

    sub_22BE1AB5C(v2 + v24, 1, v10);
    if (!v25)
    {
      sub_22BE285BC();
      sub_22BEBFDC4();
      sub_22BE33FCC();
LABEL_24:
      sub_22BEBFDC4();
      sub_22BE33928(v2, &qword_27D9090D8, &unk_22C27FCE0);
      goto LABEL_30;
    }

    sub_22BE33928(v2, &qword_27D9090D0, &unk_22C294B30);
LABEL_19:
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v31 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE196A8();
    sub_22BEBFDC4();
    if (v31)
    {
      v22 += v36;
      v21 += v36;
      if (--v19)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v2 + v24, 1, v10);
  if (v25)
  {
    sub_22BE285BC();
    sub_22BEBFDC4();
    sub_22BE33FCC();
    sub_22BEBFDC4();
    sub_22BE1B9A8();
    goto LABEL_24;
  }

  sub_22BE36C70();
  sub_22BEBFC80();
  v26 = *(v35 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BEBFF10(v38, 1);
  if (v25)
  {
    sub_22BE1C14C(v38 + v26);
    if (!v25)
    {
      sub_22BE1B9A8();
LABEL_26:
      sub_22BEBFDC4();
      sub_22BE33928(v38, &qword_27D9090C8, &unk_22C27FCD0);
      goto LABEL_28;
    }

    sub_22BE33928(v38, &qword_27D9090C0, &qword_22C27FCC8);
    goto LABEL_18;
  }

  sub_22BE22868();
  sub_22BE1C14C(v38 + v26);
  if (v27)
  {
    sub_22BE1B9A8();
    sub_22BEBFDC4();
    sub_22BE3CCBC();
    goto LABEL_26;
  }

  sub_22BE28E28();
  sub_22BEBFC80();
  sub_22BE38970();
  static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)();
  v29 = v28;
  sub_22BEBFDC4();
  sub_22BE1B18C();
  sub_22BEBFDC4();
  sub_22BE33928(v38, &qword_27D9090C0, &qword_22C27FCC8);
  if (v29)
  {
LABEL_18:
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v30 = sub_22C272FD4();
    v10 = v34;
    v2 = v33;
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    sub_22BE33928(v33, &qword_27D9090D0, &unk_22C294B30);
    if ((v30 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  sub_22BE1B9A8();
  sub_22BEBFDC4();
LABEL_28:
  sub_22BE1B9A8();
  sub_22BEBFDC4();
  sub_22BE33928(v2, &qword_27D9090D0, &unk_22C294B30);
LABEL_29:
  sub_22BE285BC();
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_30:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BEA1A5C()
{
  sub_22BE19460();
  v4 = sub_22BE1BC30();
  v5 = type metadata accessor for ContextProtoBoundingBox(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = (v8 - v7);
  v10 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v38 = sub_22BE5CE4C(&qword_27D9092A8, &unk_22C27FE80);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE20310(v13, v33);
  type metadata accessor for ContextProtoSurroundingText(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v14);
  sub_22BE3D12C();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  sub_22BE36504();
  v19 = *(v3 + 16);
  if (v19 != *(v0 + 16) || !v19 || v3 == v0)
  {
    goto LABEL_47;
  }

  sub_22BEBFEA0();
  sub_22BEC0568();
  v34 = v20;
  v35 = v1;
  v36 = v17;
  v37 = v5;
  while (1)
  {
    sub_22BEBFD70();
    sub_22BE33FCC();
    sub_22BEBFD70();
    v21 = v1[1];
    v22 = v17[1];
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_43;
      }

      v23 = *v1 == *v17 && v21 == v22;
      if (!v23 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v22)
    {
      goto LABEL_43;
    }

    v24 = *(v38 + 48);
    sub_22BEC0A6C();
    sub_22BEC0A6C();
    sub_22BE1C14C(v39);
    if (v23)
    {
      sub_22BE1C14C(v39 + v24);
      if (!v23)
      {
        goto LABEL_45;
      }

      sub_22BE33928(v39, &qword_27D9092A0, &unk_22C294AC0);
      v1 = v35;
      v17 = v36;
      goto LABEL_37;
    }

    sub_22BE37490();
    sub_22BE22868();
    sub_22BE1C14C(v39 + v24);
    if (v25)
    {
      break;
    }

    sub_22BEBFC80();
    if (v2[4])
    {
      v1 = v35;
      v17 = v36;
      if (!v9[4])
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_22BE20498();
      v1 = v35;
      v17 = v36;
      if (v26)
      {
        goto LABEL_42;
      }
    }

    if (v2[12])
    {
      if (!v9[12])
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_22BE20498();
      if (v27)
      {
        goto LABEL_42;
      }
    }

    if (v2[20])
    {
      if (!v9[20])
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_22BE20498();
      if (v28)
      {
        goto LABEL_42;
      }
    }

    if (v2[28])
    {
      if (!v9[28])
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_22BE20498();
      if (v29)
      {
LABEL_42:
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        sub_22BE33928(v39, &qword_27D9092A0, &unk_22C294AC0);
LABEL_43:
        sub_22BEBFDC4();
        goto LABEL_46;
      }
    }

    v30 = *(v37 + 32);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v31 = sub_22BEC0724(&v2[v30]);
    sub_22BEBFDC4();
    sub_22BE38970();
    sub_22BEBFDC4();
    sub_22BE33928(v39, &qword_27D9092A0, &unk_22C294AC0);
    if ((v31 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_37:
    sub_22BEC0A54();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v32 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE33FD8();
    sub_22BEBFDC4();
    if (v32)
    {
      v3 += v34;
      sub_22BEC0018();
      if (!v23)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  sub_22BEBFDC4();
LABEL_45:
  sub_22BEBFDC4();
  sub_22BE33928(v39, &qword_27D9092A8, &unk_22C27FE80);
LABEL_46:
  sub_22BEBFDC4();
LABEL_47:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BEA1FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      v8 = v6 >> 62;
      v9 = *v4 >> 62;
      if (v6 >> 62)
      {
        v31 = v3;
        if (v8 == 1)
        {
          if (v9 != 1)
          {
            return;
          }

          v10 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v30 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v11 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v13 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v14 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

          sub_22BEA7680(v11);
          sub_22BEA7680(v13);
          static AST.Expr.== infix(_:_:)();
          v16 = v15;
          sub_22BE63574(v13);
          sub_22BE63574(v11);
          if ((v16 & 1) == 0 || (sub_22BEA1FF4(v10, v12), (v17 & 1) == 0))
          {
LABEL_29:

            return;
          }

          if (v30)
          {
            if (!v14)
            {
              goto LABEL_29;
            }

            sub_22BEA1FF4(v30, v14);
            v19 = v18;

            if ((v19 & 1) == 0)
            {
              return;
            }
          }

          else
          {

            if (v14)
            {
              return;
            }
          }
        }

        else
        {
          if (v9 != 2)
          {
            return;
          }

          v22 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v21 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v24 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v23 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v25 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (!v25 && (sub_22C274014() & 1) == 0)
          {
            return;
          }

          sub_22BEA7680(v24);

          sub_22BEA7680(v22);
          sub_22BEA7680(v24);
          static AST.Expr.== infix(_:_:)();
          v27 = v26;
          sub_22BE63574(v24);
          sub_22BE63574(v22);
          if ((v27 & 1) == 0)
          {

            sub_22BE63574(v24);

            return;
          }

          sub_22BEA1FF4(v21, v23);
          v29 = v28;

          sub_22BE63574(v24);

          v3 = v31;
          if ((v29 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v9)
        {
          return;
        }

        static AST.Expr.== infix(_:_:)();
        if ((v20 & 1) == 0)
        {
          return;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }
}

void sub_22BEA230C()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AST.FlatValue(0);
  v6 = sub_22BE17A18(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BEC07D4();
  v28 = type metadata accessor for AST.Update(v8);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v9);
  sub_22BE3D12C();
  v29 = v10 - v11;
  sub_22BE467D8();
  MEMORY[0x28223BE20](v12);
  sub_22BE36504();
  v13 = *(v4 + 16);
  if (v13 == *(v2 + 16) && v13 && v4 != v2)
  {
    v14 = 0;
    sub_22BEBFEA0();
    v25 = v13;
    v27 = v0;
    while (1)
    {
      sub_22BE37AFC();
      sub_22BEBFD70();
      if (v14 == v13)
      {
        break;
      }

      v26 = v14;
      sub_22BE37AFC();
      sub_22BEBFD70();
      sub_22BE1AB74();
      static AST.FlatValue.== infix(_:_:)();
      if ((v15 & 1) == 0 || (v16 = *(v28 + 20), v17 = *(v27 + v16), v18 = *(v29 + v16), v19 = *(v17 + 16), v19 != *(v18 + 16)))
      {
LABEL_20:
        sub_22BEBFDC4();
        sub_22BEC0964();
        sub_22BEBFDC4();
        goto LABEL_21;
      }

      if (v19 && v17 != v18)
      {
        v20 = 0;
        sub_22BE3519C();
        while (v20 < *(v17 + 16))
        {
          sub_22BE3E51C();
          sub_22BEBFD70();
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_23;
          }

          sub_22BE3E51C();
          sub_22BEBFD70();
          sub_22BE1804C();
          static AST.FlatValue.== infix(_:_:)();
          v22 = v21;
          sub_22BE414C8();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          if ((v22 & 1) == 0)
          {
            goto LABEL_20;
          }

          if (v19 == ++v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        break;
      }

LABEL_15:
      if (*(v27 + *(v28 + 24)) != *(v29 + *(v28 + 24)))
      {
        goto LABEL_20;
      }

      static AST.FlatValue.== infix(_:_:)();
      v24 = v23;
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v24)
      {
        ++v14;
        v13 = v25;
        if (v26 + 1 != v25)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22BE1AABC();
  }
}

void sub_22BEA267C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      sub_22BEA7680(v5);
      sub_22BEA7680(v7);
      static AST.Expr.== infix(_:_:)();
      v9 = v8;
      sub_22BE63574(v7);
      sub_22BE63574(v5);
      --v2;
    }

    while ((v9 & 1) != 0 && v2);
  }
}

uint64_t sub_22BEA273C(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22C273CE4())
  {
    if (a2 >> 62)
    {
      result = sub_22C273CE4();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_22BEBFC3C();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_22BE38970();
        v17 = MEMORY[0x2318AC200](v16);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v17 = *(a1 + 8 * v12);
      }

      v18 = v17;
      if (v11)
      {
        v19 = sub_22BE1B18C();
        v20 = MEMORY[0x2318AC200](v19);
      }

      else
      {
        if (v14 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 8 * v12);
      }

      v21 = v20;
      sub_22BE3AF28();
      v22 = sub_22C273814();

      if (v22)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t static AST.Stmt.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (!(a2 >> 62))
    {
      v6 = *(a2 + 16);
      *&v16 = *(a1 + 16);
      *&v13 = v6;
      static AST.Expr.== infix(_:_:)();
      return v5 & 1;
    }

LABEL_9:
    v5 = 0;
    return v5 & 1;
  }

  if (a1 >> 62 != 1)
  {
    if (a2 >> 62 == 2)
    {
      v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v16 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = v8;
      v18 = v7;
      v13 = v9;
      v14 = v11;
      v15 = v10;
      static AST.ForInStmt.== infix(_:_:)(&v16, &v13);
      return v5 & 1;
    }

    goto LABEL_9;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_9;
  }

  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v16 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = v2;
  v13 = v3;
  v14 = v4;
  v5 = static AST.IfStmt.== infix(_:_:)(&v16, &v13);
  return v5 & 1;
}

void static AST.Expr.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE1B2D4();
  updated = type metadata accessor for AST.UpdateParameters(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v8);
  sub_22BEC07D4();
  v9 = sub_22C26E684();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE18928();
  MEMORY[0x28223BE20](v13);
  sub_22BE1C17C();
  v14 = *v1;
  v15 = *v0;
  switch(v14 >> 60)
  {
    case 1uLL:
      if (v15 >> 60 != 1)
      {
        goto LABEL_47;
      }

      swift_projectBox();
      swift_projectBox();
      v32 = *(v11 + 16);
      v33 = sub_22BE2C254();
      v32(v33);
      v34 = sub_22BE1B5E0();
      v32(v34);
      sub_22BE316EC();
      sub_22BE196A8();
      _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      v35 = *(v11 + 8);
      v35(v4, v9);
      v36 = sub_22BE194C4();
      (v35)(v36);
      goto LABEL_48;
    case 2uLL:
      if (v15 >> 60 != 2)
      {
        goto LABEL_47;
      }

      v18 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v20 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v21 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      sub_22BE316EC();
      v22 = sub_22BE29454();
      sub_22BEA76B8(v22, v23, v20);
      v24 = sub_22BE1C2A0();
      static AST.Literal.== infix(_:_:)(v24, v25, v21, v18, v19, v20);
      v26 = sub_22BE29454();
      sub_22BEA76F8(v26, v27, v20);
      goto LABEL_48;
    case 3uLL:
      if (v15 >> 60 != 3)
      {
        goto LABEL_47;
      }

      sub_22BEC0640();
      if (!v16)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    case 4uLL:
      if (v15 >> 60 != 4)
      {
        goto LABEL_47;
      }

      sub_22BEC0640();
      if (!v16)
      {
        goto LABEL_47;
      }

      goto LABEL_36;
    case 5uLL:
      if (v15 >> 60 != 5)
      {
        goto LABEL_47;
      }

      v38 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v37 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v39 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v40 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      sub_22BE316EC();
      sub_22BEC0918();
      static AST.Expr.== infix(_:_:)();
      if ((v41 & 1) == 0)
      {
        goto LABEL_48;
      }

      if (v38 == v39 && v37 == v40)
      {
        goto LABEL_52;
      }

      v43 = sub_22BE1C2A0();
      sub_22BEC06EC(v43, v44);
      goto LABEL_48;
    case 6uLL:
      if (v15 >> 60 != 6)
      {
        goto LABEL_47;
      }

LABEL_36:
      sub_22BE316EC();
      sub_22BEC0918();
      static AST.Expr.== infix(_:_:)();
      if (v45)
      {
        goto LABEL_40;
      }

      goto LABEL_48;
    case 7uLL:
      if (v15 >> 60 != 7)
      {
        goto LABEL_47;
      }

      sub_22BE316EC();
      v28 = sub_22BEC0918();
      if (static AST.CallFn.== infix(_:_:)(v28, v29))
      {
        v30 = sub_22BE191CC();
        sub_22BEA740C(v30, v31);
      }

      goto LABEL_48;
    case 8uLL:
      if (v15 >> 60 != 8)
      {
        goto LABEL_47;
      }

      swift_projectBox();
      swift_projectBox();
      sub_22BEBFD70();
      sub_22BE1B5E0();
      sub_22BEBFD70();
      sub_22BE316EC();
      sub_22BE191CC();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) != 0 && (sub_22BEA70A0(*(v2 + *(updated + 20)), *(v3 + *(updated + 20))))
      {
        sub_22BEC01CC();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        goto LABEL_52;
      }

      sub_22BEC01CC();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      goto LABEL_48;
    case 9uLL:
      if (v15 >> 60 != 9)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    case 0xAuLL:
      if (v15 >> 60 != 10)
      {
        goto LABEL_47;
      }

LABEL_39:
      sub_22BE316EC();
LABEL_40:
      sub_22BEC0918();
      static AST.Expr.== infix(_:_:)();
      goto LABEL_48;
    case 0xBuLL:
      if (v14 == 0xB000000000000000)
      {
        if (v15 == 0xB000000000000000)
        {
          sub_22BE63574(0xB000000000000000);
          v17 = 0xB000000000000000;
          goto LABEL_53;
        }
      }

      else if (v15 == 0xB000000000000008)
      {
        sub_22BE63574(0xB000000000000008);
        v17 = 0xB000000000000008;
        goto LABEL_53;
      }

LABEL_47:
      sub_22BE316EC();
      goto LABEL_48;
    default:
      if (v15 >> 60)
      {
        goto LABEL_47;
      }

      v16 = *(v14 + 16) == *(v15 + 16) && *(v14 + 24) == *(v15 + 24);
      if (v16)
      {
        sub_22BE316EC();
LABEL_52:
        sub_22BE63574(v14);
        v17 = v15;
LABEL_53:
        sub_22BE63574(v17);
      }

      else
      {
        sub_22C274014();
        sub_22BE316EC();
LABEL_48:
        sub_22BE63574(v14);
        sub_22BE63574(v15);
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t static AST.IfStmt.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[2];
  sub_22BEA7680(*a1);
  sub_22BEA7680(v4);
  static AST.Expr.== infix(_:_:)();
  v7 = v6;
  sub_22BE63574(v4);
  sub_22BE63574(v2);
  if (v7)
  {
    v8 = sub_22BE191CC();
    sub_22BEA1FF4(v8, v9);
    if (v10)
    {
      if (v3)
      {
        if (v5)
        {

          v11 = sub_22BE18944();
          sub_22BEA1FF4(v11, v12);
          sub_22BE417C8();
          if (v3)
          {
            return 1;
          }
        }
      }

      else if (!v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

void static AST.ForInStmt.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22C274014() & 1) != 0)
  {
    sub_22BEA7680(v2);
    sub_22BEA7680(v3);
    static AST.Expr.== infix(_:_:)();
    v6 = v5;
    sub_22BE63574(v3);
    sub_22BE63574(v2);
    if (v6)
    {
      v7 = sub_22BE19454();

      sub_22BEA1FF4(v7, v8);
    }
  }
}

void static AST.Literal.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 3:
      if (a6 == 3)
      {
        goto LABEL_9;
      }

      break;
    case 4:
      if (a6 == 4)
      {
        sub_22BEA267C(a1, a4);
      }

      break;
    case 5:
      if (a6 == 5)
      {
        sub_22BEA728C(a1, a4);
      }

      break;
    case 6:
      if (a6 == 6)
      {
LABEL_9:
        if (a1 != a4 || a2 != a5)
        {
          sub_22C274014();
        }
      }

      break;
    default:
      return;
  }
}

uint64_t static AST.CallFn.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v9 < 0)
    {
      v83[0] = *a1;
      v83[1] = v2;
      v83[2] = v5;
      v83[3] = v4;
      v84 = v6 & 1;
      v81 = v7;
      v53 = static GlobalToolIdentifier.== infix(_:_:)(v83);
      v66 = sub_22BE191C0();
      sub_22BEA7738(v66, v67, v8, v68, v9);
      v69 = sub_22BE1AB34();
      sub_22BEA7738(v69, v70, v71, v72, v73);
      v74 = sub_22BE1AB34();
      sub_22BEA7778(v74, v75, v76, v77, v78);
      v79 = sub_22BE191C0();
      sub_22BEA7778(v79, v80, v8, v81, v9);
      return v53 & 1;
    }

    goto LABEL_9;
  }

  if (v9 < 0)
  {
LABEL_9:
    v33 = sub_22BEBFF80();
    sub_22BEA7738(v33, v34, v35, v36, v37);
    v38 = sub_22BE1AB34();
    sub_22BEA7738(v38, v39, v40, v41, v42);
    v43 = sub_22BE1AB34();
    sub_22BEA7778(v43, v44, v45, v46, v47);
    v48 = sub_22BEBFF80();
    sub_22BEA7778(v48, v49, v50, v51, v52);
    v53 = 0;
    return v53 & 1;
  }

  v10 = *a1;
  if (v3 != *a2 || v2 != a2[1])
  {
    v82 = sub_22C274014();
    v12 = sub_22BEBFF80();
    sub_22BEA7738(v12, v13, v14, v15, v16);
    v17 = sub_22BE1AB34();
    sub_22BEA7738(v17, v18, v19, v20, v21);
    v22 = sub_22BE1AB34();
    sub_22BEA7778(v22, v23, v24, v25, v26);
    v27 = sub_22BEBFF80();
    sub_22BEA7778(v27, v28, v29, v30, v31);
    return v82 & 1;
  }

  sub_22BEA7738(v10, v2, v8, v7, v9);
  v54 = sub_22BE1AB34();
  sub_22BEA7738(v54, v55, v56, v57, v58);
  v59 = sub_22BE1AB34();
  sub_22BEA7778(v59, v60, v61, v62, v63);
  v64 = sub_22BE25C08();
  sub_22BEA7778(v64, v65, v8, v7, v9);
  v53 = 1;
  return v53 & 1;
}

void sub_22BEA3324()
{
  sub_22BE19460();
  if (v3 != v4 && (sub_22BEC05F8(), v5))
  {
    v6 = 0;
    sub_22BE18010();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      sub_22BEC07F4();
LABEL_12:
      sub_22BEC05A8();
      v15 = sub_22BE191CC();
      v17 = sub_22BE3B674(v15, v16);
      v19 = v18;

      if ((v19 & 1) == 0 || *(*(v1 + 56) + 8 * v17) != v2)
      {
        goto LABEL_14;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_14;
      }

      ++v12;
      if (*(v0 + 64 + 8 * v6))
      {
        sub_22BE29270();
        v9 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_22BE1AABC();
  }
}

void sub_22BEA33FC()
{
  sub_22BE19460();
  sub_22BEBFFCC();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v4);
  sub_22BE2BB70(v5, v6, v7, v8, v9, v10, v11, v12, v45);
  v13 = sub_22BE5CE4C(&qword_27D9092C0, &qword_22C27FEA8);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v15);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC02F0(), v16))
  {
    v17 = 0;
    sub_22BEC0348();
    v46 = v0;
    sub_22BE1B334();
    sub_22BE3CD98();
    while (v18)
    {
      sub_22BE22BE8();
      v47 = v19;
LABEL_11:
      v21 = sub_22BE3784C();
      v22(v21);
      v23 = sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
      v24 = sub_22BE48D8C(v23);
      v25(v24);
      sub_22BEBFFBC();
      sub_22BEC0788(v26, v27, v28, v29);
LABEL_12:
      sub_22BEC0518();
      sub_22BEBFD18();
      sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
      sub_22BE181B0(v0);
      if (v16)
      {
        goto LABEL_19;
      }

      v30 = sub_22BE1B04C();
      v31(v30);
      v32 = sub_22BE232C8();
      sub_22BE3B674(v32, v33);
      sub_22BEC06AC();
      if ((v0 & 1) == 0)
      {
        sub_22BEC03BC();
        v43 = sub_22BE33BE8();
        v44(v43);
        goto LABEL_19;
      }

      v34 = sub_22BE37B84();
      v35(v34);
      sub_22BE17BAC();
      v36 = sub_22BEBFCD4(&qword_27D9071B0);
      v0 = sub_22BE3E72C(v36);
      v37 = sub_22BE25C08();
      MEMORY[0x90005F362](v37);
      v38 = sub_22BE33BE8();
      MEMORY[0x90005F362](v38);
      v18 = v47;
      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v2)
      {
        sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
        v39 = sub_22BEC0354();
        sub_22BE191D8(v39, v40, v41, v42);
        v47 = 0;
        goto LABEL_12;
      }

      ++v17;
      if (*(v46 + 8 * v20))
      {
        sub_22BE24FC4();
        sub_22BEC0598();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA36D4()
{
  sub_22BE19460();
  v2 = v1;
  sub_22BE17BC4();
  v3 = sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  sub_22BE3FF64(v11);
  v12 = sub_22BE5CE4C(&qword_27D909038, &unk_22C27FC70);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  sub_22BEC03A4(v15);
  if (v0 == v2 || *(v0 + 16) != *(v2 + 16))
  {
LABEL_19:
    sub_22BE1AABC();
  }

  else
  {
    v57 = v16;
    v17 = 0;
    sub_22BEC0348();
    sub_22BE3C7F8();
    sub_22BE260C4();
    while (v7)
    {
      sub_22BEC0450();
LABEL_11:
      v21 = sub_22BE3E7D0();
      v22(v21);
      v23 = sub_22BE3CE7C();
      v24(v23);
      v25 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
      v26 = *(v25 + 48);
      v27 = sub_22BE1AEE4();
      v28(v27);
      (*(v0 + 32))(v57 + v26, v7, v3);
      sub_22BE187DC();
      sub_22BE19DC4(v29, v30, v31, v25);
      v0 = v58;
      v7 = v59;
LABEL_12:
      sub_22BE39EAC();
      sub_22BEBFD18();
      v32 = sub_22BE25C08();
      sub_22BE5CE4C(v32, v33);
      sub_22BE181B0(v0);
      if (v34)
      {
        goto LABEL_19;
      }

      v35 = sub_22BE33FCC();
      v36(v35);
      v37 = sub_22BEC0428();
      v38(v37);
      sub_22BE602B4();
      v40 = v39;
      v41 = sub_22BE196A8();
      v42(v41);
      if ((v40 & 1) == 0)
      {
        v52 = sub_22BE1B328();
        v53(v52);
        goto LABEL_19;
      }

      v43 = sub_22BEC0310();
      v44(v43);
      sub_22BE23814();
      sub_22BEBFCD4(&unk_27D909048);
      sub_22BE3CC34();
      v45 = sub_22C272FD4();
      v46 = *(v40 + 8);
      v47 = sub_22BE260B8();
      v0 = v56;
      v46(v47);
      v48 = sub_22BE1B328();
      v46(v48);
      if ((v45 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v0 = v58;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v54)
      {
        v49 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
        sub_22BE191D8(v57, v50, v51, v49);
        v7 = 0;
        goto LABEL_12;
      }

      ++v17;
      if (*(v55 + 8 * v18))
      {
        sub_22BE24FC4();
        v59 = v19;
        v17 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22BEA3AF0()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v8);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E94();
  sub_22BE38A28(v10);
  v11 = sub_22BE5CE4C(&qword_27D909168, &qword_22C27FD60);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  v45 = v14;
  v46 = v4;
  if (v6 != v4 && (sub_22BEC0398(), v37))
  {
    v15 = 0;
    v16 = v6 + 64;
    sub_22BE1B334();
    v44 = v18 >> 6;
    v47 = v0;
    while (v17)
    {
      sub_22BE22BE8();
      v48 = v19;
LABEL_11:
      sub_22BE406C4();
      v24 = *v22;
      v23 = v22[1];
      sub_22BE22AEC();
      sub_22BEBFD70();
      sub_22BE5CE4C(&qword_27D909170, &qword_22C27FD68);
      sub_22BE3A44C();
      *v47 = v24;
      v47[1] = v23;
      sub_22BE1BE4C();
      sub_22BEBFC80();
      sub_22BE187DC();
      sub_22BEC0788(v25, v26, v27, &qword_27D909170);
LABEL_12:
      sub_22BEBFD18();
      v28 = sub_22BE354DC();
      sub_22BE5CE4C(v28, v29);
      sub_22BE181B0(v45);
      if (v37)
      {
        goto LABEL_30;
      }

      v30 = v2;
      sub_22BE1BE4C();
      sub_22BEBFC80();
      v31 = sub_22BE336E8();
      sub_22BE3B674(v31, v32);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_22BE22AEC();
      v2 = v30;
      sub_22BEBFD70();
      if (*v30 != *v1)
      {
        goto LABEL_28;
      }

      v35 = *(v30 + 16);
      v36 = *(v1 + 16);
      if (v35)
      {
        if (!v36 || (*(v30 + 8) == *(v1 + 8) ? (v37 = v35 == v36) : (v37 = 0), !v37 && (sub_22C274014() & 1) == 0))
        {
LABEL_28:
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_29:
          sub_22BEBFDC4();
          goto LABEL_30;
        }
      }

      else if (v36)
      {
        goto LABEL_28;
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEC0A14();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE1AB1C();
      sub_22BEBFDC4();
      v17 = v48;
      if ((v46 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v44)
      {
        v38 = sub_22BE354DC();
        sub_22BE5CE4C(v38, v39);
        v40 = sub_22BE26188();
        sub_22BEC05D0(v40, v41, v42, v43);
        goto LABEL_12;
      }

      ++v15;
      if (*(v16 + 8 * v20))
      {
        sub_22BE24FC4();
        v48 = v21;
        sub_22BEC07B0();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    sub_22BE1AABC();
  }
}

void sub_22BEA3EAC()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  v76 = type metadata accessor for TranscriptProtoAstflatValueEnum(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3FF64(v5);
  v6 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v68 = sub_22BE5CE4C(&qword_27D909180, &qword_22C27FD78);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29250(v11, v62);
  v67 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE179D8();
  v74 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v75 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  v66 = v17;
  v18 = sub_22BE5CE4C(&qword_27D909188, &qword_22C27FD80);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v69 = v24;
  v70 = v0;
  if (v1 == v0)
  {
    v71 = 1;
LABEL_34:
    sub_22BE1AABC();
    return;
  }

  sub_22BEC0398();
  if (!v43)
  {
LABEL_33:
    v71 = 0;
    goto LABEL_34;
  }

  v25 = 0;
  v65 = v1;
  v62 = v1 + 64;
  sub_22BE1B334();
  v63 = v27 >> 6;
  v64 = v9;
  v28 = &qword_22C27FD70;
  while (v26)
  {
    sub_22BE22BE8();
    v73 = v29;
LABEL_12:
    sub_22BE406C4();
    v35 = *v33;
    v34 = v33[1];
    sub_22BEC0094();
    sub_22BEBFD70();
    v36 = sub_22BE3E79C();
    sub_22BE5CE4C(v36, v37);
    sub_22BE3A44C();
    *v22 = v35;
    v22[1] = v34;
    sub_22BEC0064();
    sub_22BEBFC80();
    sub_22BE187DC();
    sub_22BEC0788(v38, v39, v40, v2);
    v30 = v69;
LABEL_13:
    sub_22BE2C254();
    sub_22BEBFD18();
    v41 = sub_22BE3E79C();
    sub_22BE5CE4C(v41, v42);
    sub_22BE181B0(v30);
    if (v43)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    v71 = v44;
    if (v43)
    {
      goto LABEL_34;
    }

    v45 = v28;
    v46 = v76;
    sub_22BEC0064();
    sub_22BEBFC80();
    v47 = sub_22BE18040();
    sub_22BE3B674(v47, v48);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      goto LABEL_32;
    }

    sub_22BEC0094();
    sub_22BEBFD70();
    v51 = *(v68 + 48);
    v52 = v72;
    v2 = &qword_27D909178;
    v28 = v45;
    sub_22BE22868();
    sub_22BE22868();
    v53 = sub_22BE36214();
    sub_22BE1AB5C(v53, v54, v46);
    if (v43)
    {
      sub_22BE19678(v52 + v51);
      if (!v43)
      {
        goto LABEL_30;
      }

      v28 = v45;
      sub_22BE33928(v52, &qword_27D909178, v45);
    }

    else
    {
      sub_22BE22868();
      sub_22BE19678(v52 + v51);
      if (v55)
      {
        sub_22BEC0154();
        sub_22BEBFDC4();
LABEL_30:
        sub_22BE33928(v52, &qword_27D909180, &qword_22C27FD78);
LABEL_31:
        sub_22BEBFDC4();
LABEL_32:
        sub_22BEBFDC4();
        goto LABEL_33;
      }

      sub_22BEBFC80();
      sub_22BE3AF28();
      static TranscriptProtoAstflatValueEnum.== infix(_:_:)();
      sub_22BE3C1D0();
      v52 = v56;
      sub_22BEBFDC4();
      sub_22BE232C8();
      sub_22BEBFDC4();
      sub_22BE33928(v72, &qword_27D909178, v45);
      if ((v51 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    sub_22BEC0A84();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    sub_22BEC0724(v75 + v52);
    sub_22BEC00DC();
    sub_22BEBFDC4();
    sub_22BE232C8();
    sub_22BEBFDC4();
    v26 = v73;
    if ((v51 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v30 = v69;
  while (1)
  {
    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v31 >= v63)
    {
      v57 = sub_22BE3E79C();
      v59 = sub_22BE5CE4C(v57, v58);
      sub_22BE191D8(v22, v60, v61, v59);
      v73 = 0;
      goto LABEL_13;
    }

    ++v25;
    if (*(v62 + 8 * v31))
    {
      sub_22BE24FC4();
      v73 = v32;
      sub_22BEC07B0();
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_22BEA4440()
{
  sub_22BE19460();
  sub_22BE39048();
  v95 = sub_22C26F7C4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BEC0988(v7);
  v8 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22BEC097C(v10);
  v85 = sub_22BE5CE4C(&off_27D909090, &qword_22C2B8270);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v87 = sub_22BE5CE4C(&qword_27D909098, &qword_22C27FCB0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE2C638(v13, v73);
  v84 = type metadata accessor for Action.ParameterValue(0);
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v17);
  v89 = &v73 - v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  v83 = v20;
  v21 = sub_22BE5CE4C(&qword_27D9090A0, &qword_22C27FCB8);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  v92 = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  sub_22BE38A28(v25);
  if (v1 != v0 && *(v1 + 16) == *(v0 + 16))
  {
    v82 = v3;
    v94 = v15;
    v26 = 0;
    v79 = v1;
    v74 = v1 + 64;
    sub_22BE1B334();
    v29 = v28 >> 6;
    v75 = (v5 + 32);
    v76 = (v5 + 8);
    v80 = v28 >> 6;
    v81 = v0;
    v90 = v2;
    while (1)
    {
      while (1)
      {
        if (!v27)
        {
          v31 = v91;
          while (1)
          {
            v32 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v32 >= v29)
            {
              sub_22BE5CE4C(&qword_27D9090A8, &qword_22C27FCC0);
              v70 = sub_22BE391E8();
              sub_22BE19DC4(v70, v71, 1, v72);
              v93 = 0;
              goto LABEL_12;
            }

            ++v26;
            if (*(v74 + 8 * v32))
            {
              sub_22BE24FC4();
              v93 = v33;
              v26 = v34;
              goto LABEL_11;
            }
          }

          __break(1u);
          return;
        }

        sub_22BE22BE8();
        v93 = v30;
LABEL_11:
        sub_22BE406C4();
        v36 = *v35;
        v37 = v35[1];
        sub_22BE4251C();
        sub_22BEBFD70();
        v38 = sub_22BE5CE4C(&qword_27D9090A8, &qword_22C27FCC0);
        v39 = v92;
        *v92 = v36;
        v39[1] = v37;
        sub_22BE3E9C0();
        sub_22BEBFC80();
        sub_22BE187DC();
        sub_22BE19DC4(v40, v41, v42, v38);

        v31 = v91;
LABEL_12:
        sub_22BE260B8();
        sub_22BEBFD18();
        v43 = sub_22BE5CE4C(&qword_27D9090A8, &qword_22C27FCC0);
        sub_22BE1AB5C(v31, 1, v43);
        if (v44)
        {
          v45 = 1;
        }

        else
        {
          v45 = 0;
        }

        if (v44)
        {
          goto LABEL_33;
        }

        sub_22BE3E9C0();
        sub_22BEBFC80();
        v46 = sub_22BE37490();
        sub_22BE3B674(v46, v47);
        v49 = v48;

        if ((v49 & 1) == 0)
        {
          goto LABEL_30;
        }

        v88 = v45;
        v50 = v95;
        sub_22BE4251C();
        sub_22BEBFD70();
        v51 = v86;
        v52 = *(v87 + 48);
        sub_22BEBFD70();
        sub_22BEBFD70();
        v53 = sub_22C272844();
        v54 = sub_22C272874();
        sub_22BE18000();
        v56 = *(v55 + 8);
        v56(v51 + v52, v54);
        v57 = sub_22BE1804C();
        (v56)(v57);
        if ((v53 & 1) == 0)
        {
          sub_22BE385F0();
          sub_22BEBFDC4();
          sub_22BE39EAC();
LABEL_30:
          sub_22BEBFDC4();
          goto LABEL_33;
        }

        v58 = *(v85 + 48);
        v59 = v90;
        sub_22BE22868();
        sub_22BE35E38();
        v60 = sub_22BE26188();
        sub_22BE1AB5C(v60, v61, v50);
        if (!v44)
        {
          break;
        }

        sub_22BE385F0();
        sub_22BEBFDC4();
        sub_22BE1AB74();
        sub_22BEBFDC4();
        sub_22BEBFF60(v59 + v58);
        if (!v44)
        {
          goto LABEL_32;
        }

        v62 = sub_22BE232C8();
        sub_22BE33928(v62, v63, &unk_22C27FCA0);
        v29 = v80;
        v27 = v93;
      }

      v64 = v78;
      sub_22BE376A8();
      sub_22BE22868();
      sub_22BEBFF60(v59 + v58);
      if (v65)
      {
        break;
      }

      (*v75)(v77, v59 + v58, v95);
      sub_22BEBFCD4(&unk_27D9090B0);
      sub_22BE260B8();
      v66 = sub_22C272FD4();
      v67 = *v76;
      v68 = sub_22BE1C2A0();
      v67(v68);
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      v69 = sub_22BE38970();
      v67(v69);
      sub_22BE33928(v90, &qword_27D909088, &unk_22C27FCA0);
      v29 = v80;
      v27 = v93;
      if ((v66 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    sub_22BEBFDC4();
    sub_22BE39EAC();
    sub_22BEBFDC4();
    (*v76)(v64, v95);
LABEL_32:
    sub_22BE33928(v59, &off_27D909090, &qword_22C2B8270);
  }

LABEL_33:
  sub_22BE1AABC();
}

void sub_22BEA4B88()
{
  sub_22BE19460();
  v2 = sub_22BEBFFCC();
  v3 = type metadata accessor for TranscriptProtoParameterValue(v2);
  v4 = sub_22BE17A18(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v5);
  sub_22BE26800();
  v6 = sub_22BE5CE4C(&qword_27D909250, &off_22C27FE38);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC0484(), v10))
  {
    v34 = v9;
    v11 = 0;
    sub_22BEC0348();
    sub_22BE1B334();
    v14 = v13 >> 6;
    while (v12)
    {
      sub_22BE22BE8();
      sub_22BEC04F8();
LABEL_12:
      sub_22BE2BA44();
      sub_22BE3D67C();
      sub_22BEBFD70();
      sub_22BE5CE4C(&qword_27D909258, &qword_22C27FE40);
      sub_22BE363C4();
      sub_22BEC0244();
      sub_22BEBFC80();
      sub_22BEBFFBC();
      sub_22BE19DC4(v17, v18, v19, v20);

      v15 = v34;
LABEL_13:
      sub_22BE33FD8();
      sub_22BEBFD18();
      v21 = sub_22BE191C0();
      v23 = sub_22BE5CE4C(v21, v22);
      v24 = sub_22BE36214();
      sub_22BE1AB5C(v24, v25, v23);
      if (v10)
      {
        goto LABEL_20;
      }

      sub_22BE38FE4();
      sub_22BEC0244();
      sub_22BEBFC80();
      v26 = sub_22BE194C4();
      sub_22BE3B674(v26, v27);
      sub_22BEC0708();
      if ((v15 & 1) == 0)
      {
        sub_22BEBFDC4();
        goto LABEL_20;
      }

      sub_22BE447D0();
      sub_22BE3D67C();
      sub_22BEBFD70();
      static TranscriptProtoParameterValue.== infix(_:_:)();
      v29 = v28;
      sub_22BEBFDC4();
      sub_22BE1AEE4();
      sub_22BEBFDC4();
      v12 = v35;
      if ((v29 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v15 = v34;
    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        sub_22BE5CE4C(&qword_27D909258, &qword_22C27FE40);
        v30 = sub_22BE391E8();
        sub_22BEC05D0(v30, v31, v32, v33);
        goto LABEL_13;
      }

      ++v11;
      if (*(v0 + 8 * v16))
      {
        sub_22BE24FC4();
        sub_22BE27174();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA4E60()
{
  sub_22BE19460();
  sub_22BE1B2D4();
  v2 = sub_22C272594();
  sub_22BE179D8();
  v52 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E94();
  sub_22BE3BF90(v6);
  v7 = sub_22BE5CE4C(&qword_27D909198, &unk_22C27FD90);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v9);
  sub_22BEBFF50();
  v53 = v0;
  if (v1 != v0 && (sub_22BEC0398(), v12))
  {
    v48 = v10;
    v49 = v11;
    v13 = 0;
    v47 = v1;
    v46 = v1 + 64;
    sub_22BE3C7F8();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    while (v16)
    {
      v50 = (v16 - 1) & v16;
      v19 = __clz(__rbit64(v16)) | (v13 << 6);
LABEL_11:
      v22 = *(*(v47 + 48) + 4 * v19);
      (*(v52 + 16))(v51, *(v47 + 56) + *(v52 + 72) * v19, v2);
      v23 = sub_22BE5CE4C(&qword_27D9091A0, &unk_22C2CC980);
      v24 = *(v23 + 48);
      *v49 = v22;
      (*(v52 + 32))(&v49[v24], v51, v2);
      sub_22BE187DC();
      sub_22BE19DC4(v25, v26, v27, v23);
      v16 = v50;
LABEL_12:
      sub_22BEBFD18();
      v28 = sub_22BE261AC();
      sub_22BE5CE4C(v28, v29);
      sub_22BE181B0(v48);
      if (v12)
      {
        goto LABEL_19;
      }

      v30 = *v48;
      v31 = sub_22BEC0360();
      v32(v31);
      v33 = sub_22BE60364(v30);
      if ((v34 & 1) == 0)
      {
        sub_22BEC061C();
        v44 = sub_22BE1B5E0();
        v45(v44);
        goto LABEL_19;
      }

      (*(v52 + 16))(v51, *(v53 + 56) + *(v52 + 72) * v33, v2);
      sub_22BEBFE88();
      v35 = sub_22BEBFCD4(&unk_27D909148);
      v36 = sub_22BE37DB4(v35);
      v37 = *(v52 + 8);
      v37(v51, v2);
      v38 = sub_22BE1B5E0();
      (v37)(v38);
      if ((v36 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v39 = sub_22BE261AC();
        sub_22BE5CE4C(v39, v40);
        v41 = sub_22BE36214();
        sub_22BE19DC4(v41, v42, 1, v43);
        v16 = 0;
        goto LABEL_12;
      }

      ++v13;
      if (*(v46 + 8 * v20))
      {
        sub_22BE24FC4();
        v50 = v21;
        sub_22BEC07B0();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA51FC()
{
  sub_22BE19460();
  sub_22BEBFFCC();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v4);
  sub_22BE2BB70(v5, v6, v7, v8, v9, v10, v11, v12, v45);
  v13 = sub_22BE5CE4C(&qword_27D909238, &qword_22C27FE28);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v15);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC02F0(), v16))
  {
    v17 = 0;
    sub_22BEC0348();
    v46 = v0;
    sub_22BE1B334();
    sub_22BE3CD98();
    while (v18)
    {
      sub_22BE22BE8();
      v47 = v19;
LABEL_11:
      v21 = sub_22BE3784C();
      v22(v21);
      v23 = sub_22BE5CE4C(&qword_27D909240, &qword_22C27FE30);
      v24 = sub_22BE48D8C(v23);
      v25(v24);
      sub_22BEBFFBC();
      sub_22BEC0788(v26, v27, v28, v29);
LABEL_12:
      sub_22BEC0518();
      sub_22BEBFD18();
      sub_22BE5CE4C(&qword_27D909240, &qword_22C27FE30);
      sub_22BE181B0(v0);
      if (v16)
      {
        goto LABEL_19;
      }

      v30 = sub_22BE1B04C();
      v31(v30);
      v32 = sub_22BE232C8();
      sub_22BE3B674(v32, v33);
      sub_22BEC06AC();
      if ((v0 & 1) == 0)
      {
        sub_22BEC03BC();
        v43 = sub_22BE33BE8();
        v44(v43);
        goto LABEL_19;
      }

      v34 = sub_22BE37B84();
      v35(v34);
      sub_22BEBFE88();
      v36 = sub_22BEBFCD4(&unk_27D909148);
      v0 = sub_22BE3E72C(v36);
      v37 = sub_22BE25C08();
      MEMORY[0x150005F306](v37);
      v38 = sub_22BE33BE8();
      MEMORY[0x150005F306](v38);
      v18 = v47;
      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v2)
      {
        sub_22BE5CE4C(&qword_27D909240, &qword_22C27FE30);
        v39 = sub_22BEC0354();
        sub_22BE191D8(v39, v40, v41, v42);
        v47 = 0;
        goto LABEL_12;
      }

      ++v17;
      if (*(v46 + 8 * v20))
      {
        sub_22BE24FC4();
        sub_22BEC0598();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA54D4()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  type metadata accessor for TranscriptProtoShimParameters(v3);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E94();
  sub_22BE252B8(v7);
  v8 = sub_22BE5CE4C(&qword_27D909228, &qword_22C27FE18);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v10);
  sub_22BEBFF50();
  if (v1 != v0 && (sub_22BEC0398(), v13))
  {
    v43 = v11;
    v44 = v12;
    v14 = 0;
    v42 = v1 + 64;
    sub_22BE1B334();
    v17 = v16 >> 6;
    while (v15)
    {
      sub_22BE22BE8();
      v45 = v18;
LABEL_11:
      sub_22BE406C4();
      v23 = *v21;
      v22 = v21[1];
      sub_22BEC01FC();
      sub_22BEBFD70();
      sub_22BE5CE4C(&qword_27D909230, &qword_22C27FE20);
      sub_22BE3A44C();
      *v44 = v23;
      v44[1] = v22;
      sub_22BE42620();
      sub_22BEBFC80();
      sub_22BE187DC();
      sub_22BEC0788(v24, v25, v26, &qword_27D909230);
LABEL_12:
      sub_22BEBFD18();
      v27 = sub_22BE354DC();
      sub_22BE5CE4C(v27, v28);
      sub_22BE181B0(v43);
      if (v13)
      {
        goto LABEL_21;
      }

      v29 = v2;
      sub_22BE42620();
      sub_22BEBFC80();
      v30 = sub_22BE336E8();
      sub_22BE3B674(v30, v31);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_22BEC01FC();
      v2 = v29;
      sub_22BEBFD70();
      sub_22BE9D9B4();
      if ((v34 & 1) == 0)
      {
        sub_22BEBFDC4();
LABEL_20:
        sub_22BEBFDC4();
        goto LABEL_21;
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v35 = sub_22BEC0A14();
      sub_22BEBFDC4();
      sub_22BE1AB1C();
      sub_22BEBFDC4();
      v15 = v45;
      if ((v35 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v36 = sub_22BE354DC();
        sub_22BE5CE4C(v36, v37);
        v38 = sub_22BE36214();
        sub_22BEC05D0(v38, v39, v40, v41);
        goto LABEL_12;
      }

      ++v14;
      if (*(v42 + 8 * v19))
      {
        sub_22BE24FC4();
        v45 = v20;
        sub_22BEC07B0();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22BE1AABC();
  }
}

void sub_22BEA5870()
{
  sub_22BE19460();
  v2 = v1;
  sub_22BE17BC4();
  v3 = sub_22C2728E4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C272984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  sub_22BE3FF64(v11);
  v12 = sub_22BE5CE4C(&qword_27D909058, &qword_22C27FC80);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  sub_22BEC03A4(v15);
  if (v0 == v2 || *(v0 + 16) != *(v2 + 16))
  {
LABEL_19:
    sub_22BE1AABC();
  }

  else
  {
    v57 = v16;
    v17 = 0;
    sub_22BEC0348();
    sub_22BE3C7F8();
    sub_22BE260C4();
    while (v7)
    {
      sub_22BEC0450();
LABEL_11:
      v21 = sub_22BE3E7D0();
      v22(v21);
      v23 = sub_22BE3CE7C();
      v24(v23);
      v25 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
      v26 = *(v25 + 48);
      v27 = sub_22BE1AEE4();
      v28(v27);
      (*(v0 + 32))(v57 + v26, v7, v3);
      sub_22BE187DC();
      sub_22BE19DC4(v29, v30, v31, v25);
      v0 = v58;
      v7 = v59;
LABEL_12:
      sub_22BE39EAC();
      sub_22BEBFD18();
      v32 = sub_22BE25C08();
      sub_22BE5CE4C(v32, v33);
      sub_22BE181B0(v0);
      if (v34)
      {
        goto LABEL_19;
      }

      v35 = sub_22BE33FCC();
      v36(v35);
      v37 = sub_22BEC0428();
      v38(v37);
      sub_22BE603AC();
      v40 = v39;
      v41 = sub_22BE196A8();
      v42(v41);
      if ((v40 & 1) == 0)
      {
        v52 = sub_22BE1B328();
        v53(v52);
        goto LABEL_19;
      }

      v43 = sub_22BEC0310();
      v44(v43);
      sub_22BEBFCD4(&unk_27D909068);
      sub_22BE3CC34();
      v45 = sub_22C272FD4();
      v46 = *(v40 + 8);
      v47 = sub_22BE260B8();
      v0 = v56;
      v46(v47);
      v48 = sub_22BE1B328();
      v46(v48);
      if ((v45 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v0 = v58;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v54)
      {
        v49 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
        sub_22BE191D8(v57, v50, v51, v49);
        v7 = 0;
        goto LABEL_12;
      }

      ++v17;
      if (*(v55 + 8 * v18))
      {
        sub_22BE24FC4();
        v59 = v19;
        v17 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22BEA5C9C()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C26E614();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1AB80();
  v10 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE2C638(v12, v88);
  v99 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE181D0(v14, v88);
  v15 = type metadata accessor for Candidate(0);
  sub_22BE179D8();
  v104 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  v106 = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  v103 = &v88 - v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BE32BE4(v22);
  v23 = sub_22BE5CE4C(&off_27D909000, &qword_22C27FC58);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  v105 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE26800();
  if (v5 != v3)
  {
    sub_22BEC0484();
    if (v49)
    {
      v91 = v0;
      v27 = 0;
      v107 = v5 + 64;
      sub_22BE3AF84();
      sub_22BE25A74();
      v88 = v29;
      v89 = v30;
      v90 = (v8 + 32);
      v92 = (v8 + 8);
      v95 = v6;
      v96 = v3;
      v31 = v103;
      v94 = v5;
      v101 = v15;
      while (1)
      {
        while (1)
        {
          if (!v28)
          {
            while (1)
            {
              v35 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v35 >= v89)
              {
                v61 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
                sub_22BE191D8(v105, v62, v63, v61);
                v100 = 0;
                goto LABEL_12;
              }

              v36 = *(v107 + 8 * v35);
              ++v27;
              if (v36)
              {
                v100 = (v36 - 1) & v36;
                v34 = __clz(__rbit64(v36)) | (v35 << 6);
                v27 = v35;
                goto LABEL_11;
              }
            }

            __break(1u);
            return;
          }

          sub_22BE22BE8();
          v100 = v32;
          v34 = v33 | (v27 << 6);
LABEL_11:
          v37 = *(v5 + 48) + 32 * v34;
          v39 = *v37;
          v38 = *(v37 + 8);
          v40 = *(v37 + 16);
          v41 = *(v37 + 24);
          sub_22BE40BC8();
          sub_22BEBFD70();
          v42 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
          v43 = v105;
          *v105 = v39;
          v43[1] = v38;
          v43[2] = v40;
          *(v43 + 24) = v41;
          sub_22BE1949C();
          sub_22BEBFC80();
          sub_22BE187DC();
          sub_22BEC0788(v44, v45, v46, v42);
          v31 = v103;
          v15 = v101;
LABEL_12:
          sub_22BEBFD18();
          v47 = sub_22BE29264();
          sub_22BE5CE4C(v47, v48);
          sub_22BE181B0(v1);
          if (v49)
          {
            v50 = 1;
          }

          else
          {
            v50 = 0;
          }

          if (v49)
          {
            goto LABEL_67;
          }

          v51 = *(v1 + 24);
          sub_22BE1949C();
          sub_22BEBFC80();
          v52 = sub_22BEBFF00();
          v53 = v96;
          sub_22BE6045C(v52, v54, v55, v51);
          v57 = v56;

          if ((v57 & 1) == 0)
          {
            goto LABEL_66;
          }

          sub_22BE40BC8();
          sub_22BE2BB28();
          sub_22BEBFD70();
          sub_22BE1A8C4();
          if ((sub_22C272844() & 1) == 0)
          {
            goto LABEL_65;
          }

          v97 = v50;
          v58 = *(v53 + *(v15 + 20));
          v59 = 0xEB00000000797265;
          v60 = v95;
          switch(v58)
          {
            case 1:
              sub_22BEC0950();
              sub_22BEC0864();
              break;
            case 2:
              v59 = v88;
              break;
            case 3:
              sub_22BEC0904();
              v64 = 5391173;
              goto LABEL_26;
            case 4:
              sub_22BEC093C();
              sub_22BEC0850();
              break;
            case 5:
              sub_22BEC08C8();
              v64 = 6649196;
LABEL_26:
              v59 = v64 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 6:
              v59 = 0xEA00000000007470;
              sub_22BEC08B4();
              break;
            case 7:
              sub_22BEC08F0();
              v59 = 0xEA00000000006863;
              break;
            default:
              break;
          }

          sub_22BEC08A0();
          v67 = 0xEB00000000797265;
          switch(v68)
          {
            case 1:
              sub_22BE3C778();
              v67 = 0xEE007972616C7562;
              break;
            case 2:
              v66 = 0xD000000000000014;
              v67 = v88;
              break;
            case 3:
              sub_22BEC0878();
              v69 = 5391173;
              goto LABEL_35;
            case 4:
              sub_22BEC088C();
              v67 = 0xEF79727473696765;
              break;
            case 5:
              sub_22BEC083C();
              v69 = 6649196;
LABEL_35:
              v67 = v69 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 6:
              v67 = 0xEA00000000007470;
              sub_22BEC0828();
              break;
            case 7:
              sub_22BE464AC();
              v67 = 0xEA00000000006863;
              break;
            default:
              break;
          }

          if (v65 == v66 && v59 == v67)
          {
          }

          else
          {
            v71 = sub_22C274014();

            if ((v71 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

          v72 = *(v15 + 24);
          v73 = *(v106 + v72);
          v74 = *(v106 + v72 + 8);
          v75 = &v31[v72];
          v76 = *v75;
          v77 = v75[8];
          if (v74 == 1)
          {
            v78 = v102;
            if (v73)
            {
              if (!v76)
              {
                v77 = 0;
              }

              if ((v77 & 1) == 0)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v76)
              {
                v77 = 0;
              }

              if ((v77 & 1) == 0)
              {
LABEL_65:
                sub_22BEBFDC4();
                sub_22BE1AB74();
LABEL_66:
                sub_22BEBFDC4();
                goto LABEL_67;
              }
            }
          }

          else
          {
            sub_22BEC02E4();
            v78 = v102;
            if (v79)
            {
              goto LABEL_65;
            }
          }

          if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
          {
            goto LABEL_65;
          }

          v80 = *(v99 + 48);
          sub_22BE22868();
          sub_22BE22868();
          v81 = sub_22BE36214();
          sub_22BE1AB5C(v81, v82, v60);
          if (!v49)
          {
            break;
          }

          sub_22BE1C288();
          sub_22BEBFDC4();
          sub_22BE1AB74();
          sub_22BEBFDC4();
          sub_22BE1AB5C(v78 + v80, 1, v60);
          if (!v49)
          {
            goto LABEL_69;
          }

          sub_22BE33928(v78, &qword_27D908FF8, &qword_22C27FC50);
          v5 = v94;
          v28 = v100;
          v15 = v101;
        }

        sub_22BE22868();
        sub_22BE1AB5C(v78 + v80, 1, v60);
        if (v83)
        {
          break;
        }

        v84 = v78 + v80;
        v85 = v91;
        (*v90)(v91, v84, v60);
        sub_22BE251C4();
        sub_22BEBFCD4(&unk_27D909030);
        v93 = sub_22C272FD4();
        v86 = *v92;
        v31 = v103;
        (*v92)(v85, v60);
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        v87 = sub_22BE191C0();
        (v86)(v87);
        sub_22BE33928(v102, &qword_27D908FF8, &qword_22C27FC50);
        v5 = v94;
        v28 = v100;
        v15 = v101;
        if ((v93 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      sub_22BE1C288();
      sub_22BEBFDC4();
      sub_22BE1AB74();
      sub_22BEBFDC4();
      (*v92)(v98, v60);
LABEL_69:
      sub_22BE33928(v78, &qword_27D909028, &qword_22C27FC68);
    }
  }

LABEL_67:
  sub_22BE1AABC();
}

void sub_22BEA657C()
{
  sub_22BE19460();
  v2 = sub_22BEBFFCC();
  v3 = type metadata accessor for AST.FlatValue(v2);
  v4 = sub_22BE17A18(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v5);
  sub_22BE26800();
  v6 = sub_22BE5CE4C(&qword_27D9092B0, &unk_22C288C10);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC0484(), v10))
  {
    v34 = v9;
    v11 = 0;
    sub_22BEC0348();
    sub_22BE1B334();
    v14 = v13 >> 6;
    while (v12)
    {
      sub_22BE22BE8();
      sub_22BEC04F8();
LABEL_12:
      sub_22BE2BA44();
      sub_22BE3E51C();
      sub_22BEBFD70();
      sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
      sub_22BE363C4();
      sub_22BE2540C();
      sub_22BEBFC80();
      sub_22BEBFFBC();
      sub_22BE19DC4(v17, v18, v19, v20);

      v15 = v34;
LABEL_13:
      sub_22BE33FD8();
      sub_22BEBFD18();
      v21 = sub_22BE191C0();
      v23 = sub_22BE5CE4C(v21, v22);
      v24 = sub_22BE36214();
      sub_22BE1AB5C(v24, v25, v23);
      if (v10)
      {
        goto LABEL_20;
      }

      sub_22BE38FE4();
      sub_22BE2540C();
      sub_22BEBFC80();
      v26 = sub_22BE194C4();
      sub_22BE3B674(v26, v27);
      sub_22BEC0708();
      if ((v15 & 1) == 0)
      {
        sub_22BEBFDC4();
        goto LABEL_20;
      }

      sub_22BE447D0();
      sub_22BE3E51C();
      sub_22BEBFD70();
      static AST.FlatValue.== infix(_:_:)();
      v29 = v28;
      sub_22BE414C8();
      sub_22BEBFDC4();
      sub_22BE1AEE4();
      sub_22BEBFDC4();
      v12 = v35;
      if ((v29 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v15 = v34;
    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
        v30 = sub_22BE391E8();
        sub_22BEC05D0(v30, v31, v32, v33);
        goto LABEL_13;
      }

      ++v11;
      if (*(v0 + 8 * v16))
      {
        sub_22BE24FC4();
        sub_22BE27174();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA6844()
{
  sub_22BE19460();
  sub_22BEBFFCC();
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v4);
  sub_22BE2BB70(v5, v6, v7, v8, v9, v10, v11, v12, v45);
  v13 = sub_22BE5CE4C(&qword_27D909078, &unk_22C27FC90);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE19EA0();
  MEMORY[0x28223BE20](v15);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC02F0(), v16))
  {
    v17 = 0;
    sub_22BEC0348();
    v46 = v0;
    sub_22BE1B334();
    sub_22BE3CD98();
    while (v18)
    {
      sub_22BE22BE8();
      v47 = v19;
LABEL_11:
      v21 = sub_22BE3784C();
      v22(v21);
      v23 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
      v24 = sub_22BE48D8C(v23);
      v25(v24);
      sub_22BEBFFBC();
      sub_22BEC0788(v26, v27, v28, v29);
LABEL_12:
      sub_22BEC0518();
      sub_22BEBFD18();
      sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
      sub_22BE181B0(v0);
      if (v16)
      {
        goto LABEL_19;
      }

      v30 = sub_22BE1B04C();
      v31(v30);
      v32 = sub_22BE232C8();
      sub_22BE3B674(v32, v33);
      sub_22BEC06AC();
      if ((v0 & 1) == 0)
      {
        sub_22BEC03BC();
        v43 = sub_22BE33BE8();
        v44(v43);
        goto LABEL_19;
      }

      v34 = sub_22BE37B84();
      v35(v34);
      sub_22BE23814();
      v36 = sub_22BEBFCD4(&unk_27D909048);
      v0 = sub_22BE3E72C(v36);
      v37 = sub_22BE25C08();
      MEMORY[0](v37);
      v38 = sub_22BE33BE8();
      MEMORY[0](v38);
      v18 = v47;
      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v2)
      {
        sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
        v39 = sub_22BEC0354();
        sub_22BE191D8(v39, v40, v41, v42);
        v47 = 0;
        goto LABEL_12;
      }

      ++v17;
      if (*(v46 + 8 * v20))
      {
        sub_22BE24FC4();
        sub_22BEC0598();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

void sub_22BEA6B1C()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ClientAction.ShimParameter(0);
  v5 = sub_22BE17A18(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v6);
  sub_22BE181E4();
  if (v3 != v1 && (sub_22BEC0484(), v7))
  {
    v8 = 0;
    sub_22BE3AF84();
    v10 = v9 >> 6;
    v29 = v9 >> 6;
    if (v11)
    {
      while (1)
      {
        sub_22BE22BE8();
        v30 = v13;
LABEL_11:
        v17 = *(*(v3 + 56) + 8 * (v12 | (v8 << 6)));

        v18 = sub_22BE1AEE4();
        v20 = sub_22BE3B674(v18, v19);
        v22 = v21;

        if ((v22 & 1) == 0 || (v23 = *(*(v1 + 56) + 8 * v20), v24 = *(v23 + 16), v24 != *(v17 + 16)))
        {
LABEL_25:

          goto LABEL_26;
        }

        if (v24 && v23 != v17)
        {
          break;
        }

LABEL_21:

        v10 = v29;
        if (!v30)
        {
          goto LABEL_6;
        }
      }

      v28 = v1;
      sub_22BE3519C();

      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        sub_22BEBFD70();
        if (v25 >= *(v17 + 16))
        {
          goto LABEL_29;
        }

        sub_22BEBFD70();
        sub_22BE1B328();
        static ClientAction.ShimParameter.== infix(_:_:)();
        v27 = v26;
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        if ((v27 & 1) == 0)
        {

          goto LABEL_25;
        }

        if (v24 == ++v25)
        {

          v1 = v28;
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v14 = v8;
      while (1)
      {
        v8 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v8 >= v10)
        {
          goto LABEL_26;
        }

        ++v14;
        if (*(v3 + 64 + 8 * v8))
        {
          sub_22BE29270();
          v30 = v16 & v15;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_26:
    sub_22BE1AABC();
  }
}

void sub_22BEA6DC8()
{
  sub_22BE19460();
  v2 = sub_22BEBFFCC();
  v3 = type metadata accessor for TranscriptProtoActionParameterValue(v2);
  v4 = sub_22BE17A18(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v5);
  sub_22BE26800();
  v6 = sub_22BE5CE4C(&qword_27D909260, &qword_22C27FE48);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BEBFF50();
  if (v0 != v1 && (sub_22BEC0484(), v10))
  {
    v34 = v9;
    v11 = 0;
    sub_22BEC0348();
    sub_22BE1B334();
    v14 = v13 >> 6;
    while (v12)
    {
      sub_22BE22BE8();
      sub_22BEC04F8();
LABEL_12:
      sub_22BE2BA44();
      sub_22BE23E68();
      sub_22BEBFD70();
      sub_22BE5CE4C(&qword_27D909268, &unk_22C27FE50);
      sub_22BE363C4();
      sub_22BE416BC();
      sub_22BEBFC80();
      sub_22BEBFFBC();
      sub_22BE19DC4(v17, v18, v19, v20);

      v15 = v34;
LABEL_13:
      sub_22BE33FD8();
      sub_22BEBFD18();
      v21 = sub_22BE191C0();
      v23 = sub_22BE5CE4C(v21, v22);
      v24 = sub_22BE36214();
      sub_22BE1AB5C(v24, v25, v23);
      if (v10)
      {
        goto LABEL_20;
      }

      sub_22BE38FE4();
      sub_22BE416BC();
      sub_22BEBFC80();
      v26 = sub_22BE194C4();
      sub_22BE3B674(v26, v27);
      sub_22BEC0708();
      if ((v15 & 1) == 0)
      {
        sub_22BEBFDC4();
        goto LABEL_20;
      }

      sub_22BE447D0();
      sub_22BE23E68();
      sub_22BEBFD70();
      static TranscriptProtoActionParameterValue.== infix(_:_:)();
      v29 = v28;
      sub_22BEBFDC4();
      sub_22BE1AEE4();
      sub_22BEBFDC4();
      v12 = v35;
      if ((v29 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v15 = v34;
    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        sub_22BE5CE4C(&qword_27D909268, &unk_22C27FE50);
        v30 = sub_22BE391E8();
        sub_22BEC05D0(v30, v31, v32, v33);
        goto LABEL_13;
      }

      ++v11;
      if (*(v0 + 8 * v16))
      {
        sub_22BE24FC4();
        sub_22BE27174();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22BE393D4();
    sub_22BE1AABC();
  }
}

uint64_t sub_22BEA70A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v26 = result + 64;
  v27 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v25 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(result + 48) + 32 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = (*(result + 56) + 16 * v10);
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v11 + 24);
    sub_22BE6355C(*v11, v13, v14, *(v11 + 24));
    sub_22BEA7680(v17);
    v19 = sub_22BE60508(v12, v13, v14, v18);
    v21 = v20;
    sub_22BE635AC(v12, v13, v14, v18);
    if ((v21 & 1) == 0 || (v22 = (*(a2 + 56) + 16 * v19), v16 != *v22))
    {
      sub_22BE63574(v17);
      return 0;
    }

    v29 = *(v22 + 1);
    sub_22BEA7680(v29);
    sub_22BEA7680(v29);
    sub_22BEA7680(v17);
    static AST.Expr.== infix(_:_:)();
    v24 = v23;
    sub_22BE63574(v17);
    sub_22BE63574(v29);
    sub_22BE63574(v29);
    sub_22BE63574(v17);
    result = v27;
    v6 = v28;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v25)
    {
      return 1;
    }

    v9 = *(v26 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22BEA728C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      sub_22BEA7680(v16);
      if (!v14)
      {
        return;
      }

      v17 = sub_22BE3B674(v15, v14);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        sub_22BE63574(v16);
        return;
      }

      v22 = *(*(a2 + 56) + 8 * v17);
      sub_22BEA7680(v22);
      static AST.Expr.== infix(_:_:)();
      v21 = v20;
      sub_22BE63574(v22);
      sub_22BE63574(v16);
      if ((v21 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_22BEA740C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = *(a1 + 64);
      v27 = a1 + 64;
      v6 = 1 << *(a1 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & v5;
      v9 = (v6 + 63) >> 6;
      v28 = v9;
      if ((v7 & v5) != 0)
      {
        while (1)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
LABEL_12:
          v14 = v10 | (v4 << 6);
          v15 = *(v3 + 48) + 32 * v14;
          v16 = *v15;
          v17 = *(v15 + 8);
          v18 = *(v15 + 16);
          v19 = *(v15 + 24);
          v20 = *(*(v3 + 56) + 8 * v14);
          sub_22BE6355C(*v15, v17, v18, *(v15 + 24));
          sub_22BEA7680(v20);
          if (v19 == 255)
          {
            break;
          }

          v29 = v11;
          v21 = v3;
          v22 = sub_22BE60508(v16, v17, v18, v19);
          v24 = v23;
          sub_22BE635AC(v16, v17, v18, v19);
          if ((v24 & 1) == 0)
          {
            sub_22BE63574(v20);
            return;
          }

          v30 = *(*(a2 + 56) + 8 * v22);
          sub_22BEA7680(v30);
          static AST.Expr.== infix(_:_:)();
          v26 = v25;
          sub_22BE63574(v30);
          sub_22BE63574(v20);
          if ((v26 & 1) == 0)
          {
            return;
          }

          v3 = v21;
          v9 = v28;
          v8 = v29;
          if (!v29)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v12 = v4;
        while (1)
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            return;
          }

          v13 = *(v27 + 8 * v4);
          ++v12;
          if (v13)
          {
            v10 = __clz(__rbit64(v13));
            v11 = (v13 - 1) & v13;
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t static AST.UpdateParameters.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AST.UpdateParameters(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);

  return sub_22BEA70A0(v3, v4);
}

uint64_t type metadata accessor for AST.UpdateParameters(uint64_t a1)
{
  result = qword_27D908AE0;
  if (!qword_27D908AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BEA7680(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEA76B8(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return v3;
  }

  return v3;
}

double sub_22BEA76F8(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEA7738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }
}

double sub_22BEA7778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5 < 0)
  {
  }

  return result;
}

uint64_t sub_22BEA77C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28262 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_22BEA7890(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 28262;
  }
}

uint64_t sub_22BEA78C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656469 && a2 == 0xE500000000000000;
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

    else
    {
      v7 = a1 == 0x6C61726574696CLL && a2 == 0xE700000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7869666E69 && a2 == 0xE500000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7630692 && a2 == 0xE300000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1819042147 && a2 == 0xE400000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000022C2D3730 == a2;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616C50664F646E65 && a2 == 0xE90000000000006ELL;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x800000022C2D3750 == a2;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6465646E61707865 && a2 == 0xE800000000000000;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x726F707075736E75 && a2 == 0xEF7473694C646574)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_22C274014();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_22BEA7CBC(char a1)
{
  result = 0x746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x6C61726574696CLL;
      break;
    case 3:
      result = 0x786966657270;
      break;
    case 4:
      v3 = 1768320617;
      goto LABEL_12;
    case 5:
      result = 7630692;
      break;
    case 6:
      v3 = 1701080681;
LABEL_12:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7800000000;
      break;
    case 7:
      result = 1819042147;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x616C50664F646E65;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6465646E61707865;
      break;
    case 12:
      result = 0x726F707075736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEA7E04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_22BE19114(7563372, 0xE300000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BE19114(0x7865646E69, 0xE500000000000000);
    sub_22BE417C8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEA7EA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 12639 && a2 == 0xE200000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 12895 && a2 == 0xE200000000000000)
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

uint64_t sub_22BEA7FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEA77C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEA7FE8(uint64_t a1)
{
  v2 = sub_22BEAB56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA8024(uint64_t a1)
{
  v2 = sub_22BEAB56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEA78C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEA8090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEA7CB4();
  *a1 = result;
  return result;
}

uint64_t sub_22BEA80B8(uint64_t a1)
{
  v2 = sub_22BEAB320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA80F4(uint64_t a1)
{
  v2 = sub_22BEAB320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8130(uint64_t a1)
{
  v2 = sub_22BEAB470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA816C(uint64_t a1)
{
  v2 = sub_22BEAB470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA81A8(uint64_t a1)
{
  v2 = sub_22BEAB6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA81E4(uint64_t a1)
{
  v2 = sub_22BEAB6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8220(uint64_t a1)
{
  v2 = sub_22BEAB4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA825C(uint64_t a1)
{
  v2 = sub_22BEAB4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8298(uint64_t a1)
{
  v2 = sub_22BEAB41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA82D4(uint64_t a1)
{
  v2 = sub_22BEAB41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8310(uint64_t a1)
{
  v2 = sub_22BEAB95C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA834C(uint64_t a1)
{
  v2 = sub_22BEAB95C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8388(uint64_t a1)
{
  v2 = sub_22BEAB668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA83C4(uint64_t a1)
{
  v2 = sub_22BEAB668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEA7EA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEA8430(uint64_t a1)
{
  v2 = sub_22BEAB710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA846C(uint64_t a1)
{
  v2 = sub_22BEAB710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA84A8(uint64_t a1)
{
  v2 = sub_22BEAB860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA84E4(uint64_t a1)
{
  v2 = sub_22BEAB860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8520(uint64_t a1)
{
  v2 = sub_22BEAB7B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA855C(uint64_t a1)
{
  v2 = sub_22BEAB7B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8598(uint64_t a1)
{
  v2 = sub_22BEAB908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA85D4(uint64_t a1)
{
  v2 = sub_22BEAB908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8610(uint64_t a1)
{
  v2 = sub_22BEAB374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA864C(uint64_t a1)
{
  v2 = sub_22BEAB374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEA8688(uint64_t a1)
{
  v2 = sub_22BEAB518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEA86C4(uint64_t a1)
{
  v2 = sub_22BEAB518();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.Expr.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v26;
  a23 = v27;
  v173 = v24;
  v28 = v23;
  v30 = v29;
  *&v169 = sub_22BE5CE4C(&qword_27D908388, &qword_22C27AB60);
  sub_22BE179D8();
  *&v168 = v31;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE4104C(v33, v146);
  sub_22BE5CE4C(&qword_27D908390, &qword_22C27AB68);
  sub_22BE179D8();
  v165[1] = v35;
  v166 = v34;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  sub_22BE39F68(v37);
  v38 = sub_22BE5CE4C(&qword_27D908398, &qword_22C27AB70);
  sub_22BE18910(v38, &v167);
  v149 = v39;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  sub_22BE190A8(v41);
  v42 = sub_22BE5CE4C(&qword_27D9083A0, &qword_22C27AB78);
  sub_22BE18910(v42, v165);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1A174();
  sub_22BE190A8(v44);
  sub_22BE5CE4C(&qword_27D9083A8, &qword_22C27AB80);
  sub_22BE179D8();
  v163 = v46;
  v164 = v45;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A174();
  sub_22BE190A8(v48);
  updated = type metadata accessor for AST.UpdateParameters(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  sub_22BE190A8(v50);
  sub_22BE5CE4C(&qword_27D9083B0, &qword_22C27AB88);
  sub_22BE179D8();
  v161 = v52;
  v162 = v51;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE1A174();
  sub_22BE190A8(v54);
  v55 = sub_22BE5CE4C(&qword_27D9083B8, &qword_22C27AB90);
  sub_22BE18910(v55, &a17);
  v158 = v56;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v57);
  sub_22BE1A174();
  sub_22BE190A8(v58);
  v59 = sub_22BE5CE4C(&qword_27D9083C0, &qword_22C27AB98);
  sub_22BE18910(v59, &a9);
  v156 = v60;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v61);
  sub_22BE1A174();
  sub_22BE190A8(v62);
  v63 = sub_22BE5CE4C(&qword_27D9083C8, &qword_22C27ABA0);
  sub_22BE18910(v63, &a14);
  v157 = v64;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v65);
  sub_22BE1A174();
  sub_22BE190A8(v66);
  v67 = sub_22BE5CE4C(&qword_27D9083D0, &qword_22C27ABA8);
  sub_22BE18910(v67, &v175);
  v155 = v68;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v69);
  sub_22BE1A174();
  sub_22BE190A8(v70);
  v71 = sub_22BE5CE4C(&qword_27D9083D8, &qword_22C27ABB0);
  sub_22BE18910(v71, &v173);
  v154 = v72;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE1A174();
  sub_22BE190A8(v74);
  v75 = sub_22BE5CE4C(&qword_27D9083E0, &qword_22C27ABB8);
  sub_22BE18910(v75, &v171);
  v153 = v76;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v77);
  sub_22BE1B72C();
  v78 = sub_22C26E684();
  v79 = sub_22BE18910(v78, &v169);
  v151 = v80;
  MEMORY[0x28223BE20](v79);
  sub_22BE179EC();
  v83 = v82 - v81;
  v84 = sub_22BE5CE4C(&qword_27D9083E8, &qword_22C27ABC0);
  sub_22BE179D8();
  v150 = v85;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE2C64C();
  v172 = sub_22BE5CE4C(&qword_27D9083F0, &qword_22C27ABC8);
  sub_22BE179D8();
  v170 = v87;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v88);
  sub_22BE25CD0();
  v89 = *v28;
  sub_22BE26950(v30, v30[3]);
  sub_22BEAB320();
  v171 = v25;
  sub_22BEC046C();
  sub_22C274234();
  switch(v89 >> 60)
  {
    case 1uLL:
      v126 = swift_projectBox();
      (*(v151 + 16))(v83, v126, v152);
      LOBYTE(v174) = 1;
      sub_22BEAB908();
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BE17BAC();
      sub_22BEBFCD4(v127);
      sub_22BEC0400();
      sub_22C273FA4();
      sub_22BE1B5D4();
      v128 = sub_22BE3CC34();
      v129(v128);
      (*(v151 + 8))(v83, v152);
      v130 = sub_22BE1B5E0();
      goto LABEL_29;
    case 2uLL:
      v103 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v104 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v105 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v174) = 2;
      v106 = sub_22BE260B8();
      sub_22BEA76B8(v106, v107, v105);
      sub_22BEAB860();
      v108 = v172;
      sub_22BE33B04();
      sub_22C273EE4();
      *&v174 = v103;
      *(&v174 + 1) = v104;
      LOBYTE(v175) = v105;
      sub_22BEAB8B4();
      sub_22C273FA4();
      v109 = sub_22BE31180();
      v110(v109);
      v111 = sub_22BEC0304();
      v112(v111, v108);
      v113 = sub_22BE260B8();
      sub_22BEA76F8(v113, v114, v105);
      break;
    case 3uLL:
      v115 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v116 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v174) = 3;
      sub_22BEAB7B8();
      v117 = v172;
      sub_22BE1AF00();
      sub_22C273EE4();
      LOBYTE(v174) = v115;
      a13 = 0;
      sub_22BEAB80C();
      sub_22BE365EC();
      sub_22BEC077C();
      v118 = v173;
      sub_22C273FA4();
      if (!v118)
      {
        *&v174 = v116;
        sub_22BE486C4();
        sub_22BEAB3C8();
        sub_22BE365EC();
        sub_22BEC077C();
        sub_22C273FA4();
      }

      goto LABEL_16;
    case 4uLL:
      v97 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v98 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v99 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v174) = 4;
      sub_22BEAB710();
      sub_22BE29E4C();
      v90 = v172;
      sub_22BE33B04();
      sub_22C273EE4();
      LOBYTE(v174) = v97;
      a13 = 0;
      sub_22BEAB764();
      sub_22BE365EC();
      sub_22BEC0400();
      v100 = v173;
      sub_22C273FA4();
      if (!v100)
      {
        *&v174 = v98;
        sub_22BE486C4();
        sub_22BEAB3C8();
        sub_22BE365EC();
        sub_22BE36514();
        sub_22C273FA4();
        *&v174 = v99;
        sub_22BE39E24();
        sub_22BE365EC();
        sub_22BE36514();
        sub_22C273FA4();
      }

      goto LABEL_20;
    case 5uLL:
      v97 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 5;
      sub_22BEAB6BC();
      sub_22BE29E4C();
      v90 = v172;
      sub_22BE33B04();
      sub_22C273EE4();
      *&v174 = v97;
      a13 = 0;
      sub_22BEAB3C8();
      sub_22BE365EC();
      sub_22BEC0400();
      v133 = v173;
      sub_22C273FA4();
      if (!v133)
      {
        LOBYTE(v174) = 1;
        sub_22BE260B8();
        sub_22BE36514();
        sub_22C273F54();
      }

LABEL_20:
      v91 = sub_22BE1AB4C();
      v93 = v97;
      goto LABEL_21;
    case 6uLL:
      v134 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v135 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v174) = 6;
      sub_22BEAB668();
      sub_22BE29E4C();
      v117 = v172;
      sub_22BE1AF00();
      sub_22C273EE4();
      *&v174 = v134;
      a13 = 0;
      sub_22BEAB3C8();
      sub_22BE365EC();
      v136 = v173;
      sub_22C273FA4();
      if (!v136)
      {
        *&v174 = v135;
        sub_22BE486C4();
        sub_22BE365EC();
        sub_22BE36514();
        sub_22C273FA4();
      }

      v123 = sub_22BE1AB4C();
      v124 = v159;
      goto LABEL_25;
    case 7uLL:
      v119 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v120 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      LOBYTE(v174) = 7;
      sub_22BEAB56C();
      v121 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v168 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v169 = v121;
      v117 = v172;
      sub_22BE1AF00();
      sub_22C273EE4();
      v174 = v169;
      v175 = v168;
      v176 = v119;
      a13 = 0;
      sub_22BEAB5C0();
      sub_22BE365EC();
      sub_22BEC077C();
      v122 = v173;
      sub_22C273FA4();
      if (!v122)
      {
        *&v174 = v120;
        sub_22BE486C4();
        sub_22BE5CE4C(&qword_27D908448, &qword_22C27ABD0);
        sub_22BEB9A24(&unk_27D908450);
        sub_22BE365EC();
        sub_22C273FA4();
      }

LABEL_16:
      v123 = sub_22BE392D4();
LABEL_25:
      v125(v123, v124);
      v130 = sub_22BE28D70();
      v131 = v117;
      goto LABEL_29;
    case 8uLL:
      swift_projectBox();
      sub_22BE258A8();
      sub_22BEBFD70();
      LOBYTE(v174) = 8;
      sub_22BEAB518();
      sub_22BE28EE4();
      sub_22C273EE4();
      sub_22BEC007C();
      sub_22BEBFCD4(v141);
      sub_22C273FA4();
      v142 = sub_22BE28D70();
      v143(v142, v164);
      sub_22BE35AF4();
      sub_22BEBFDC4();
      v130 = sub_22BE25EE4();
      goto LABEL_29;
    case 9uLL:
      v101 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 11;
      sub_22BEA7680(v101);
      sub_22BEAB41C();
      sub_22BE27168();
      sub_22C273EE4();
      *&v174 = v101;
      sub_22BEAB3C8();
      v102 = v166;
      sub_22C273FA4();
      goto LABEL_27;
    case 0xAuLL:
      v101 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v174) = 12;
      sub_22BEA7680(v101);
      sub_22BEAB374();
      sub_22BE27168();
      sub_22C273EE4();
      *&v174 = v101;
      sub_22BEAB3C8();
      v102 = v169;
      sub_22C273FA4();
LABEL_27:
      v137 = sub_22BEC0304();
      v138(v137, v102);
      v139 = sub_22BE1B328();
      v140(v139);
      sub_22BE63574(v101);
      break;
    case 0xBuLL:
      if (v89 == 0xB000000000000000)
      {
        LOBYTE(v174) = 9;
        sub_22BEAB4C4();
        sub_22BE27168();
        sub_22C273EE4();
        sub_22BE1B5D4();
        v95 = v147;
        v96 = v165;
      }

      else
      {
        LOBYTE(v174) = 10;
        sub_22BEAB470();
        sub_22BE27168();
        sub_22C273EE4();
        sub_22BE1B5D4();
        v95 = v148;
        v96 = &v167;
      }

      v94(v95, *(v96 - 32));
      v144 = sub_22BE1A8C4();
      v145(v144);
      break;
    default:
      LOBYTE(v174) = 0;
      sub_22BEAB95C();

      v90 = v172;
      sub_22BE33B04();
      sub_22C273EE4();
      sub_22BE3CC34();
      sub_22C273F54();

      v91 = sub_22BE19698();
      v93 = v84;
LABEL_21:
      v92(v91, v93);
      v130 = sub_22BEC0304();
      v131 = v90;
LABEL_29:
      v132(v130, v131);
      break;
  }

  sub_22BE18478();
}

void AST.Expr.hash(into:)()
{
  v2 = sub_22BE17BC4();
  updated = type metadata accessor for AST.UpdateParameters(v2);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C26E684();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v35 = swift_projectBox();
      (*(v10 + 16))(v14, v35, v8);
      MEMORY[0x2318AC860](1);
      sub_22BE17BAC();
      sub_22BEBFCD4(v36);
      sub_22BE44750();
      sub_22C272EE4();
      v37 = sub_22BE38970();
      v38(v37);
      goto LABEL_23;
    case 2uLL:
      v20 = v15 & 0xFFFFFFFFFFFFFFFLL;
      v21 = *(v20 + 24);
      v22 = *(v20 + 32);
      MEMORY[0x2318AC860](2);
      v23 = sub_22BE191CC();
      sub_22BEA76B8(v23, v24, v22);
      v25 = sub_22BE33FD8();
      AST.Literal.hash(into:)(v25, v26, v21);
      sub_22BE191CC();
      sub_22BE267B8();

      sub_22BEA76F8(v27, v28, v29);
      return;
    case 3uLL:
      v31 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x2318AC860](3);
      MEMORY[0x2318AC860](v31);
      goto LABEL_22;
    case 4uLL:
      v18 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x2318AC860](4);
      MEMORY[0x2318AC860](v18);
      AST.Expr.hash(into:)();
      goto LABEL_22;
    case 5uLL:
      MEMORY[0x2318AC860](5);
      AST.Expr.hash(into:)();
      sub_22BE33FD8();
      sub_22BE267B8();

      sub_22C272F44();
      return;
    case 6uLL:
      MEMORY[0x2318AC860](6);
      AST.Expr.hash(into:)();
      goto LABEL_22;
    case 7uLL:
      v32 = v15 & 0xFFFFFFFFFFFFFFFLL;
      v33 = *(v32 + 40);
      v34 = *(v32 + 48);
      MEMORY[0x2318AC860](7);
      if (v34 < 0)
      {
        MEMORY[0x2318AC860](1);
        sub_22BE37490();
        sub_22C272F44();
        sub_22C274174();
        if (v33)
        {
          sub_22BE260B8();
          sub_22C272F44();
        }

        sub_22C274174();
      }

      else
      {
        MEMORY[0x2318AC860](0);
        sub_22BE37490();
        sub_22C272F44();
      }

      sub_22BE33FD8();
      sub_22BE267B8();

      sub_22BEB8C70(v41, v42);
      return;
    case 8uLL:
      swift_projectBox();
      sub_22BE258A8();
      sub_22BEBFD70();
      MEMORY[0x2318AC860](8);
      sub_22BE17BAC();
      sub_22BEBFCD4(v40);
      sub_22BE44750();
      sub_22C272EE4();
      sub_22BEB8A6C(v0, *(v7 + *(updated + 20)));
      sub_22BE35AF4();
      sub_22BEBFDC4();
      goto LABEL_23;
    case 9uLL:
      v19 = 11;
      goto LABEL_21;
    case 0xAuLL:
      v19 = 12;
LABEL_21:
      MEMORY[0x2318AC860](v19);
LABEL_22:
      AST.Expr.hash(into:)();
      goto LABEL_23;
    case 0xBuLL:
      if (v15 == 0xB000000000000000)
      {
        v17 = 9;
      }

      else
      {
        v17 = 10;
      }

      MEMORY[0x2318AC860](v17);
LABEL_23:
      sub_22BE267B8();
      break;
    default:
      MEMORY[0x2318AC860](0);

      sub_22BE33FD8();
      sub_22C272F44();
      sub_22BE267B8();

      break;
  }
}

uint64_t AST.Expr.hashValue.getter()
{
  sub_22C274154();
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

void AST.Expr.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v191 = v20;
  v25 = v24;
  v186 = v26;
  sub_22BE5CE4C(&qword_27D9084B0, &qword_22C27ABD8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  sub_22BEC03A4(v28);
  sub_22BE5CE4C(&qword_27D9084B8, &qword_22C27ABE0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE2BA30(v30, v178);
  v187 = sub_22BE5CE4C(&qword_27D9084C0, &qword_22C27ABE8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE2C638(v32, v179);
  v33 = sub_22BE5CE4C(&qword_27D9084C8, &qword_22C27ABF0);
  sub_22BE18910(v33, &a14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  sub_22BE3FF64(v35);
  v185 = sub_22BE5CE4C(&qword_27D9084D0, &qword_22C27ABF8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE20168(v37, v180);
  v38 = sub_22BE5CE4C(&qword_27D9084D8, &qword_22C27AC00);
  sub_22BE18910(v38, &v190);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE29250(v40, v181);
  v41 = sub_22BE5CE4C(&qword_27D9084E0, &qword_22C27AC08);
  sub_22BE18910(v41, &a16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  sub_22BE32BE4(v43);
  v44 = sub_22BE5CE4C(&qword_27D9084E8, &qword_22C27AC10);
  sub_22BE18910(v44, &a10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE4104C(v46, v182);
  v47 = sub_22BE5CE4C(&qword_27D9084F0, &qword_22C27AC18);
  sub_22BE18910(v47, &a12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE486B0(v49, v183);
  v50 = sub_22BE5CE4C(&qword_27D9084F8, &qword_22C27AC20);
  sub_22BE18910(v50, &v192);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE23AA4(v52);
  v53 = sub_22BE5CE4C(&qword_27D908500, &qword_22C27AC28);
  sub_22BE18910(v53, &v189);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE1A174();
  sub_22BEC07BC(v55);
  v56 = sub_22BE5CE4C(&qword_27D908508, &qword_22C27AC30);
  sub_22BE18910(v56, &v188);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v57);
  sub_22BE25CD0();
  v58 = sub_22BE5CE4C(&qword_27D908510, &qword_22C27AC38);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v59);
  sub_22BE23E58();
  v60 = sub_22BE5CE4C(&qword_27D908518, &unk_22C27AC40);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v61);
  sub_22BE234F4();
  v190 = v25;
  v62 = sub_22BE31038();
  sub_22BE26950(v62, v63);
  sub_22BEAB320();
  sub_22BE48270();
  v64 = v191;
  sub_22C274214();
  if (!v64)
  {
    v191 = v21;
    sub_22C273ED4();
    sub_22BE7C5C4();
    v66 = v60;
    if (v67 != v65 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v74 == v75)
      {
        __break(1u);
        return;
      }

      v76 = v60;
      v184 = *(v73 + v72);
      sub_22BEC0558(v68, v69, v70, v71, v72);
      v77 = sub_22BE7C5C0();
      v79 = v78;
      v81 = v80;
      swift_unknownObjectRelease();
      v82 = v187;
      if (v79 == v81 >> 1)
      {
        v83 = v186;
        switch(v184)
        {
          case 1:
            sub_22BE486C4();
            sub_22BEAB908();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22C26E684();
            v111 = swift_allocBox();
            sub_22BE17BAC();
            sub_22BEBFCD4(v112);
            sub_22BEC0628();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v142 = sub_22BE19698();
            v143(v142);
            sub_22BE41274();
            v144 = sub_22BE33BE8();
            v145(v144);
            v122 = v111 | 0x1000000000000000;
            break;
          case 2:
            sub_22BE39E24();
            sub_22BEAB860();
            sub_22BE3E8A0();
            sub_22BE26108();
            sub_22C273DE4();
            v117 = swift_allocObject();
            v118 = sub_22BEB9BA0();
            sub_22BEC03E0(&type metadata for AST.Literal, v119, v120, v121, v118);
            sub_22BE3C6F8();
            swift_unknownObjectRelease();
            v138 = sub_22BE31180();
            v139(v138);
            v140 = sub_22BE1B328();
            v141(v140);
            v122 = v117 | 0x2000000000000000;
            break;
          case 3:
            HIBYTE(a10) = 3;
            sub_22BEAB7B8();
            sub_22BE3E8A0();
            sub_22BE35F10(v103, v104, v105, v106);
            sub_22BE236BC();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB9B4C();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE486C4();
            sub_22BEB997C();
            sub_22BEC000C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v156 = sub_22BE267EC();
            v157(v156);
            v158 = sub_22BE1B5E0();
            v159(v158);
            v122 = v187 | 0x3000000000000000;
            break;
          case 4:
            HIBYTE(a10) = 4;
            sub_22BEAB710();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22BE2B7C4();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB9AF8();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            v189 = 0;
            sub_22BE486C4();
            sub_22BEB997C();
            sub_22BEC000C();
            sub_22C273EB4();
            sub_22BE39E24();
            sub_22BEC000C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v174 = sub_22BE267EC();
            v175(v174);
            v176 = sub_22BE28C60();
            v177(v176);
            v122 = v187 | 0x4000000000000000;
            break;
          case 5:
            HIBYTE(a10) = 5;
            sub_22BEAB6BC();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            sub_22BE2B7C4();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB997C();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE486C4();
            v189 = sub_22C273E64();
            v165 = v164;
            swift_unknownObjectRelease();
            v166 = sub_22BE267EC();
            v167(v166);
            v168 = sub_22BE28C60();
            v169(v168);
            *(v187 + 24) = v189;
            *(v187 + 32) = v165;
            v133 = 0x5000000000000000;
            goto LABEL_24;
          case 6:
            HIBYTE(a10) = 6;
            sub_22BEAB668();
            sub_22BE3E8A0();
            sub_22BE36514();
            sub_22C273DE4();
            v189 = v77;
            sub_22BE236BC();
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB997C();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE26108();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE486C4();
            sub_22BEC000C();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v170 = sub_22BE267EC();
            v171(v170);
            v172 = sub_22BE28C60();
            v173(v172);
            v122 = v187 | 0x6000000000000000;
            break;
          case 7:
            HIBYTE(a10) = 7;
            sub_22BEAB56C();
            sub_22BE3E8A0();
            sub_22BE35F10(v107, v108, v109, v110);
            swift_allocObject();
            sub_22BEC0658();
            sub_22BEB99D0();
            sub_22BEC0634();
            sub_22BEBFFFC();
            sub_22BE36514();
            sub_22C273EB4();
            sub_22BE3ADC8();
            sub_22BE5CE4C(&qword_27D908448, &qword_22C27ABD0);
            sub_22BE486C4();
            sub_22BEB9A24(&unk_27D908538);
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v160 = sub_22BE1C16C();
            v161(v160);
            v162 = sub_22BE1B5E0();
            v163(v162);
            v122 = v187 | 0x7000000000000000;
            v91 = v190;
            v83 = v186;
            goto LABEL_26;
          case 8:
            HIBYTE(a10) = 8;
            sub_22BEAB518();
            sub_22BE3E8A0();
            sub_22BE35F10(v113, v114, v115, v116);
            type metadata accessor for AST.UpdateParameters(0);
            v127 = swift_allocBox();
            sub_22BEC007C();
            sub_22BEBFCD4(v128);
            sub_22BEC0628();
            sub_22C273EB4();
            sub_22BE3C6F8();
            swift_unknownObjectRelease();
            v152 = sub_22BE19698();
            v153(v152, v185);
            v154 = sub_22BE1B5E0();
            v155(v154);
            v122 = v127 | 0x8000000000000000;
            break;
          case 9:
            HIBYTE(a10) = 9;
            sub_22BEAB4C4();
            sub_22BE27168();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v100();
            v101 = sub_22BE360C8();
            v102(v101, v76);
            v122 = 0xB000000000000000;
            break;
          case 10:
            HIBYTE(a10) = 10;
            sub_22BEAB470();
            sub_22BE27168();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v123 = sub_22BE200D4();
            v124(v123);
            v125 = sub_22BE360C8();
            v126(v125, v76);
            v122 = 0xB000000000000008;
            break;
          case 11:
            HIBYTE(a10) = 11;
            sub_22BEAB41C();
            sub_22BE3E8A0();
            sub_22BE26108();
            sub_22C273DE4();
            v82 = swift_allocObject();
            v92 = sub_22BEB997C();
            sub_22BEC03E0(&type metadata for AST.Expr, v93, v94, v95, v92);
            sub_22BE3C6F8();
            swift_unknownObjectRelease();
            v129 = sub_22BE31180();
            v130(v129);
            v131 = sub_22BE1B328();
            v132(v131);
            v133 = 0x9000000000000000;
            goto LABEL_24;
          case 12:
            HIBYTE(a10) = 12;
            sub_22BEAB374();
            sub_22BE3E8A0();
            sub_22BE26108();
            sub_22C273DE4();
            v82 = swift_allocObject();
            v96 = sub_22BEB997C();
            sub_22BEC03E0(&type metadata for AST.Expr, v97, v98, v99, v96);
            sub_22BE3C6F8();
            swift_unknownObjectRelease();
            v134 = sub_22BE31180();
            v135(v134);
            v136 = sub_22BE1B328();
            v137(v136);
            v133 = 0xA000000000000000;
LABEL_24:
            v122 = v82 | v133;
            break;
          default:
            HIBYTE(a10) = 0;
            sub_22BEAB95C();
            sub_22BE29E4C();
            sub_22BE3E8A0();
            sub_22C273DE4();
            sub_22BE236BC();
            v122 = swift_allocObject();
            sub_22BE36514();
            v146 = sub_22C273E64();
            v148 = v147;
            swift_unknownObjectRelease();
            v149 = sub_22BE1AB4C();
            v150(v149, v58);
            sub_22BE41274();
            v151(v191, v76);
            *(v122 + 16) = v146;
            *(v122 + 24) = v148;
            break;
        }

        v91 = v190;
LABEL_26:
        *v83 = v122;
        goto LABEL_11;
      }

      v66 = v76;
    }

    v84 = sub_22C273B34();
    sub_22BE196B4(v84, MEMORY[0x277D841A0]);
    v86 = v85;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v86 = &type metadata for AST.Expr;
    v87 = sub_22C273DF4();
    sub_22BE1B198(v87);
    sub_22BE1BC24();
    (*(v88 + 104))(v86);
    swift_willThrow();
    swift_unknownObjectRelease();
    v89 = sub_22BE360C8();
    v90(v89, v66);
  }

  v91 = v190;
LABEL_11:
  sub_22BE26B64(v91);
  sub_22BE18478();
}

uint64_t sub_22BEAB2A8(uint64_t a1)
{
  sub_22C274154();
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

unint64_t sub_22BEAB320()
{
  result = qword_27D9083F8;
  if (!qword_27D9083F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9083F8);
  }

  return result;
}

unint64_t sub_22BEAB374()
{
  result = qword_27D908400;
  if (!qword_27D908400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908400);
  }

  return result;
}

unint64_t sub_22BEAB3C8()
{
  result = qword_27D908408;
  if (!qword_27D908408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908408);
  }

  return result;
}

unint64_t sub_22BEAB41C()
{
  result = qword_27D908410;
  if (!qword_27D908410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908410);
  }

  return result;
}

unint64_t sub_22BEAB470()
{
  result = qword_27D908418;
  if (!qword_27D908418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908418);
  }

  return result;
}

unint64_t sub_22BEAB4C4()
{
  result = qword_27D908420;
  if (!qword_27D908420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908420);
  }

  return result;
}

unint64_t sub_22BEAB518()
{
  result = qword_27D908428;
  if (!qword_27D908428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908428);
  }

  return result;
}

unint64_t sub_22BEAB56C()
{
  result = qword_27D908438;
  if (!qword_27D908438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908438);
  }

  return result;
}

unint64_t sub_22BEAB5C0()
{
  result = qword_27D908440;
  if (!qword_27D908440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908440);
  }

  return result;
}

unint64_t sub_22BEAB614()
{
  result = qword_27D908458;
  if (!qword_27D908458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908458);
  }

  return result;
}

unint64_t sub_22BEAB668()
{
  result = qword_27D908460;
  if (!qword_27D908460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908460);
  }

  return result;
}

unint64_t sub_22BEAB6BC()
{
  result = qword_27D908468;
  if (!qword_27D908468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908468);
  }

  return result;
}

unint64_t sub_22BEAB710()
{
  result = qword_27D908470;
  if (!qword_27D908470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908470);
  }

  return result;
}

unint64_t sub_22BEAB764()
{
  result = qword_27D908478;
  if (!qword_27D908478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908478);
  }

  return result;
}

unint64_t sub_22BEAB7B8()
{
  result = qword_27D908480;
  if (!qword_27D908480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908480);
  }

  return result;
}

unint64_t sub_22BEAB80C()
{
  result = qword_27D908488;
  if (!qword_27D908488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908488);
  }

  return result;
}

unint64_t sub_22BEAB860()
{
  result = qword_27D908490;
  if (!qword_27D908490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908490);
  }

  return result;
}

unint64_t sub_22BEAB8B4()
{
  result = qword_27D908498;
  if (!qword_27D908498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908498);
  }

  return result;
}

unint64_t sub_22BEAB908()
{
  result = qword_27D9084A0;
  if (!qword_27D9084A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9084A0);
  }

  return result;
}

unint64_t sub_22BEAB95C()
{
  result = qword_27D9084A8;
  if (!qword_27D9084A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9084A8);
  }

  return result;
}

uint64_t sub_22BEAB9B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54646573726170 && a2 == 0xEE00656D614E6C6FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022C2D3770 == a2)
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

uint64_t sub_22BEABA88(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x6F54646573726170;
  }
}

uint64_t sub_22BEABAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAB9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEABB00(uint64_t a1)
{
  v2 = sub_22BEB9BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEABB3C(uint64_t a1)
{
  v2 = sub_22BEB9BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEABB78(uint64_t a1)
{
  v2 = sub_22BEB9CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEABBB4(uint64_t a1)
{
  v2 = sub_22BEB9CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEABBF0(uint64_t a1)
{
  v2 = sub_22BEB9C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEABC2C(uint64_t a1)
{
  v2 = sub_22BEB9C48();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.CallFn.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22BE5CE4C(&qword_27D908568, &qword_22C27AC50);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1A174();
  sub_22BE32BE4(v4);
  v5 = sub_22BE5CE4C(&qword_27D908570, &qword_22C27AC58);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE23E58();
  sub_22BE5CE4C(&qword_27D908578, &qword_22C27AC60);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  v8 = *(v0 + 32);
  sub_22BE26950(v2, v2[3]);
  sub_22BEB9BF4();
  sub_22BE48270();
  sub_22C274234();
  if (v8 < 0)
  {
    sub_22BEB9C48();
    sub_22BE1AF00();
    sub_22C273EE4();
    sub_22BEB9C9C();
    sub_22BEC077C();
    sub_22C273FA4();
    v13 = sub_22BE392D4();
    v14(v13);
    v11 = sub_22BE33560();
  }

  else
  {
    sub_22BEB9CF0();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F54();
    v9 = sub_22BE3408C();
    v10(v9, v5);
    v11 = sub_22BE1B5E0();
  }

  v12(v11);
  sub_22BE18478();
}

void AST.CallFn.hash(into:)()
{
  if (*(v0 + 32) < 0)
  {
    v2 = *(v0 + 24);
    MEMORY[0x2318AC860](1);
    sub_22BE376A8();
    sub_22C272F44();
    sub_22C274174();
    if (v2)
    {
      sub_22BE25C08();
      sub_22C272F44();
    }

    sub_22C274174();
    sub_22BE267B8();
  }

  else
  {
    MEMORY[0x2318AC860](0);
    sub_22BE376A8();
    sub_22BE267B8();

    sub_22C272F44();
  }
}

uint64_t AST.CallFn.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_22BE25DAC();
  if (v2 < 0)
  {
    MEMORY[0x2318AC860](1);
    sub_22C272F44();
    sub_22C274174();
    if (v1)
    {
      sub_22BE376A8();
      sub_22C272F44();
    }

    sub_22C274174();
  }

  else
  {
    MEMORY[0x2318AC860](0);
    sub_22C272F44();
  }

  return sub_22C2741A4();
}

void AST.CallFn.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v48 = v4;
  sub_22BE5CE4C(&qword_27D9085A0, &qword_22C27AC68);
  sub_22BE179D8();
  v46 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  v7 = sub_22BE5CE4C(&qword_27D9085A8, &qword_22C27AC70);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE234F4();
  v9 = sub_22BE5CE4C(&qword_27D9085B0, &qword_22C27AC78);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B01C();
  v11 = sub_22BE38FD8();
  sub_22BE26950(v11, v12);
  sub_22BEB9BF4();
  sub_22C274214();
  if (!v0)
  {
    sub_22BEC0924();
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v14 != v13 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v21 == v22)
      {
        __break(1u);
        return;
      }

      v45 = *(v20 + v19);
      sub_22BEC0558(v15, v16, v17, v18, v19);
      sub_22BE7C5C0();
      v24 = v23;
      v26 = v25;
      swift_unknownObjectRelease();
      if (v24 == v26 >> 1)
      {
        if (v45)
        {
          LOBYTE(v49) = 1;
          sub_22BEB9C48();
          sub_22BEC000C();
          sub_22C273DE4();
          sub_22BEB9D44();
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v33 = sub_22BE3408C();
          v34(v33, v46);
          v35 = sub_22BE3E3DC();
          v36(v35);
          v37 = v50;
          v47 = v49;
          v38 = v51;
          v39 = v52 | 0x80;
        }

        else
        {
          sub_22BEB9CF0();
          sub_22BEC000C();
          sub_22C273DE4();
          v47 = sub_22C273E64();
          v37 = v40;
          swift_unknownObjectRelease();
          v41 = sub_22BE2399C();
          v42(v41, v7);
          v43 = sub_22BE3E3DC();
          v44(v43);
          v39 = 0;
          v38 = 0uLL;
        }

        *v48 = v47;
        *(v48 + 8) = v37;
        *(v48 + 16) = v38;
        *(v48 + 32) = v39;
        sub_22BE26B64(v3);
        goto LABEL_10;
      }
    }

    v27 = sub_22C273B34();
    sub_22BE196B4(v27, MEMORY[0x277D841A0]);
    v29 = v28;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v29 = &type metadata for AST.CallFn;
    sub_22BEC0924();
    sub_22C273DF4();
    sub_22BEC0930();
    sub_22BE1B198(v30);
    sub_22BE1BC24();
    (*(v31 + 104))(v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE37778();
    v32(v1, v9);
  }

  sub_22BE26B64(v3);
LABEL_10:
  sub_22BE18478();
}

uint64_t sub_22BEAC5E0(uint64_t a1)
{
  sub_22C274154();
  AST.CallFn.hash(into:)();
  return sub_22C2741A4();
}

uint64_t AST.ParameterKey.parameterName.getter()
{
  if (*(v0 + 24) >= 2u)
  {
    sub_22BEC07E8();
    v5 = sub_22C273FD4();
    MEMORY[0x2318AB8D0](v5);

    MEMORY[0x2318AB8D0](93, 0xE100000000000000);
  }

  else
  {
    v1 = sub_22BE19454();
    sub_22BE6355C(v1, v2, v3, v4);
  }

  return sub_22BE19454();
}

uint64_t AST.ParameterKey.parameterLhsIndex.getter()
{
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t AST.ParameterKey.updatingName(to:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 24);
  v8 = *(v3 + 24);
  if (*(v3 + 24) && (v8 = *(v3 + 16), v7 != 1))
  {
    v5 = *v3;
    a2 = *(v3 + 8);
  }

  else
  {
  }

  *a3 = v5;
  *(a3 + 8) = a2;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  return result;
}

void static AST.ParameterKey.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      v36 = v2 == v5 && v3 == v6;
      if (v36 || (sub_22BE29454(), sub_22BE48850(), (sub_22C274014() & 1) != 0))
      {
        v37 = sub_22BEBFF00();
        sub_22BE6355C(v37, v38, v39, 0);
        v40 = sub_22BE22DA0();
        sub_22BE6355C(v40, v41, v42, 0);
        v43 = sub_22BE22DA0();
        sub_22BE635AC(v43, v44, v45, 0);
        v46 = sub_22BEBFF00();
        sub_22BE635AC(v46, v47, v48, 0);
        goto LABEL_16;
      }

      sub_22BE29454();
      sub_22BE48850();
      sub_22C274014();
      v62 = sub_22BEBFF00();
      sub_22BE6355C(v62, v63, v64, 0);
      v65 = sub_22BE22DA0();
      sub_22BE6355C(v65, v66, v67, 0);
      v68 = sub_22BE22DA0();
      sub_22BE635AC(v68, v69, v70, 0);
      v58 = sub_22BEBFF00();
      v61 = 0;
LABEL_25:
      sub_22BE635AC(v58, v59, v60, v61);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      v21 = sub_22BE22DA0();
      sub_22BE635AC(v21, v22, v23, 2u);
      v24 = sub_22BEBFF00();
      sub_22BE635AC(v24, v25, v26, 2u);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v7 != 1)
  {
LABEL_11:

LABEL_15:
    v27 = sub_22BEBFF00();
    sub_22BE6355C(v27, v28, v29, v7);
    v30 = sub_22BE22DA0();
    sub_22BE635AC(v30, v31, v32, v4);
    v33 = sub_22BEBFF00();
    sub_22BE635AC(v33, v34, v35, v7);
    goto LABEL_16;
  }

  if (v2 != v5 || v3 != v6)
  {
    sub_22BE29454();
    sub_22BE48850();
    if ((sub_22C274014() & 1) == 0)
    {
      sub_22BE29454();
      sub_22BE48850();
      sub_22C274014();
      v49 = sub_22BEBFF00();
      sub_22BE6355C(v49, v50, v51, 1u);
      v52 = sub_22BE22DA0();
      sub_22BE6355C(v52, v53, v54, 1u);
      v55 = sub_22BE22DA0();
      sub_22BE635AC(v55, v56, v57, 1u);
      v58 = sub_22BEBFF00();
      v61 = 1;
      goto LABEL_25;
    }
  }

  v9 = sub_22BEBFF00();
  sub_22BE6355C(v9, v10, v11, 1u);
  v12 = sub_22BE22DA0();
  sub_22BE6355C(v12, v13, v14, 1u);
  v15 = sub_22BE22DA0();
  sub_22BE635AC(v15, v16, v17, 1u);
  v18 = sub_22BEBFF00();
  sub_22BE635AC(v18, v19, v20, 1u);
LABEL_16:
  sub_22BE267B8();
}

void static AST.ParameterKey.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4 != 1)
    {
      if (v8 == 2)
      {
        v23 = sub_22BE28728();
        sub_22BE635AC(v23, v24, v25, 2u);
        v26 = sub_22BEBFFAC();
        sub_22BE635AC(v26, v27, v28, 2u);
        goto LABEL_20;
      }

LABEL_13:
      v29 = sub_22BEBFFAC();
      sub_22BE6355C(v29, v30, v31, v8);
      v32 = sub_22BE28728();
      sub_22BE635AC(v32, v33, v34, v4);
      v35 = sub_22BEBFFAC();
      sub_22BE635AC(v35, v36, v37, v8);
      goto LABEL_20;
    }

    if (v8 == 1)
    {
      v9 = *a1;
      if (v2 == v5 && v3 == v6)
      {
        sub_22BE6355C(v9, v3, v7, 1u);
        v52 = sub_22BE28728();
        sub_22BE6355C(v52, v53, v54, 1u);
        v55 = sub_22BE28728();
        sub_22BE635AC(v55, v56, v57, 1u);
        v58 = sub_22BE191CC();
        sub_22BE635AC(v58, v59, v7, 1u);
      }

      else
      {
        sub_22BEC06EC(v9, v3);
        v11 = sub_22BEBFFAC();
        sub_22BE6355C(v11, v12, v13, 1u);
        v14 = sub_22BE28728();
        sub_22BE6355C(v14, v15, v16, 1u);
        v17 = sub_22BE28728();
        sub_22BE635AC(v17, v18, v19, 1u);
        v20 = sub_22BEBFFAC();
        sub_22BE635AC(v20, v21, v22, 1u);
      }

      goto LABEL_20;
    }

LABEL_10:

    goto LABEL_13;
  }

  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  v38 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_22BE6355C(v38, v3, v7, 0);
    v60 = sub_22BE28728();
    sub_22BE6355C(v60, v61, v62, 0);
    v63 = sub_22BE28728();
    sub_22BE635AC(v63, v64, v65, 0);
    v66 = sub_22BE191CC();
    sub_22BE635AC(v66, v67, v7, 0);
  }

  else
  {
    sub_22BEC06EC(v38, v3);
    v40 = sub_22BEBFFAC();
    sub_22BE6355C(v40, v41, v42, 0);
    v43 = sub_22BE28728();
    sub_22BE6355C(v43, v44, v45, 0);
    v46 = sub_22BE28728();
    sub_22BE635AC(v46, v47, v48, 0);
    v49 = sub_22BEBFFAC();
    sub_22BE635AC(v49, v50, v51, 0);
  }

LABEL_20:
  sub_22BE267B8();
}

uint64_t sub_22BEACB34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000022C2D3790 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x756F6D796E6F6E61 && a2 == 0xE900000000000073)
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

uint64_t sub_22BEACC5C(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x756F6D796E6F6E61;
}

uint64_t sub_22BEACCC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22BE19114(12383, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BE19114(12639, 0xE200000000000000);
    sub_22BE417C8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEACD68(uint64_t a1)
{
  v2 = sub_22BEB9DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACDA4(uint64_t a1)
{
  v2 = sub_22BEB9DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEACDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEACB34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEACE10(uint64_t a1)
{
  v2 = sub_22BEB9D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACE4C(uint64_t a1)
{
  v2 = sub_22BEB9D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEACE88(uint64_t a1)
{
  v2 = sub_22BEB9E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACEC4(uint64_t a1)
{
  v2 = sub_22BEB9E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEACF00(uint64_t a1)
{
  v2 = sub_22BEB9E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEACF3C(uint64_t a1)
{
  v2 = sub_22BEB9E94();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.ParameterKey.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  v27 = v26;
  sub_22BE5CE4C(&qword_27D9085C0, &qword_22C27AC80);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE2BA30(v29, v40);
  sub_22BE5CE4C(&qword_27D9085C8, &qword_22C27AC88);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A8B4();
  sub_22BE5CE4C(&qword_27D9085D0, &qword_22C27AC90);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D9085D8, &qword_22C27AC98);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE25CD0();
  v33 = *(v24 + 24);
  sub_22BE26950(v27, v27[3]);
  sub_22BEB9D98();
  sub_22BEC046C();
  sub_22C274234();
  if (v33)
  {
    if (v33 != 1)
    {
      sub_22BE39E24();
      sub_22BEB9DEC();
      sub_22C273EE4();
      sub_22C273F94();
      v38 = sub_22BE25C08();
      v39(v38);
      sub_22BE1B940();
      v36 = sub_22BE200D4();
      goto LABEL_9;
    }

    sub_22BEB9E40();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F54();
    if (!v25)
    {
      sub_22C273F94();
    }

    sub_22BE37778();
    v34 = sub_22BE194C4();
  }

  else
  {
    sub_22BEB9E94();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C273F54();
    v34 = sub_22BE291B0();
  }

  v35(v34);
  v36 = sub_22BEBFED4();
LABEL_9:
  v37(v36);
  sub_22BE18478();
}

uint64_t AST.ParameterKey.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v2 = v0[2];
      MEMORY[0x2318AC860](1);
      sub_22BE1AB74();
      sub_22C272F44();
      v3 = v2;
    }

    else
    {
      MEMORY[0x2318AC860](2);
      v3 = v1;
    }

    return MEMORY[0x2318AC860](v3);
  }

  else
  {
    MEMORY[0x2318AC860](0);
    sub_22BE1AB74();

    return sub_22C272F44();
  }
}

uint64_t AST.ParameterKey.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22BE25DAC();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x2318AC860](1);
      sub_22BE376A8();
      sub_22C272F44();
      v3 = v1;
    }

    else
    {
      MEMORY[0x2318AC860](2);
      v3 = sub_22BEC03B0();
    }

    MEMORY[0x2318AC860](v3);
  }

  else
  {
    v4 = sub_22BEC0490();
    MEMORY[0x2318AC860](v4);
    sub_22BE376A8();
    sub_22C272F44();
  }

  return sub_22C2741A4();
}

void AST.ParameterKey.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v26 = v25;
  v79 = v27;
  sub_22BE5CE4C(&qword_27D908600, &qword_22C27ACA0);
  sub_22BE179D8();
  v78 = v28;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE29250(v30, v75);
  sub_22BE5CE4C(&qword_27D908608, &qword_22C27ACA8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E64();
  v32 = sub_22BE5CE4C(&qword_27D908610, &qword_22C27ACB0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE23E58();
  v34 = sub_22BE5CE4C(&qword_27D908618, &qword_22C27ACB8);
  sub_22BE179D8();
  v36 = v35;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE25CD0();
  v80 = v26;
  v38 = sub_22BE18944();
  sub_22BE26950(v38, v39);
  sub_22BEB9D98();
  sub_22BEC046C();
  sub_22C274214();
  if (!v23)
  {
    v81 = v36;
    v77 = v24;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v41 != v40 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v46 = v34;
      v47 = *(v43 + v42);
      sub_22BE7C5C0();
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      if (v49 == v51 >> 1)
      {
        if (v47)
        {
          if (v47 == 1)
          {
            sub_22BEB9E40();
            sub_22BE33B04();
            sub_22C273DE4();
            v52 = v79;
            v76 = 1;
            v58 = sub_22C273E64();
            v60 = v59;
            v69 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v70 = sub_22BE1AB74();
            v71(v70);
            v72 = sub_22BE41EAC();
            v73(v72);
            v74 = v80;
          }

          else
          {
            sub_22BE39E24();
            sub_22BEB9DEC();
            sub_22BE33B04();
            sub_22C273DE4();
            v74 = v80;
            v52 = v79;
            v76 = v47;
            v64 = sub_22C273EA4();
            swift_unknownObjectRelease();
            v65 = sub_22BE3408C();
            v66(v65, v78);
            v67 = sub_22BE3AF28();
            v68(v67);
            v60 = 0;
            v69 = 0;
            v58 = v64;
          }
        }

        else
        {
          sub_22BEB9E94();
          sub_22BE33B04();
          sub_22C273DE4();
          v76 = 0;
          v74 = v80;
          v58 = sub_22C273E64();
          v60 = v61;
          swift_unknownObjectRelease();
          v62 = sub_22BE2399C();
          v63(v62, v32);
          (*(v81 + 8))(v24, v46);
          v69 = 0;
          v52 = v79;
        }

        *v52 = v58;
        *(v52 + 8) = v60;
        *(v52 + 16) = v69;
        *(v52 + 24) = v76;
        sub_22BE26B64(v74);
        goto LABEL_12;
      }

      v34 = v46;
    }

    v53 = sub_22C273B34();
    sub_22BE196B4(v53, MEMORY[0x277D841A0]);
    v55 = v54;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v55 = &type metadata for AST.ParameterKey;
    v56 = sub_22C273DF4();
    sub_22BE1B198(v56);
    sub_22BE1BC24();
    (*(v57 + 104))(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v81 + 8))(v77, v34);
  }

  sub_22BE26B64(v80);
LABEL_12:
  sub_22BE18478();
}

BOOL sub_22BEADB90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v11 = a8;
  static AST.ParameterKey.< infix(_:_:)(v10, v12);
  return (v8 & 1) == 0;
}

BOOL sub_22BEADBF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v11 = a8;
  static AST.ParameterKey.< infix(_:_:)(v12, v10);
  return (v8 & 1) == 0;
}

uint64_t sub_22BEADC7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v11 = a8;
  static AST.ParameterKey.< infix(_:_:)(v10, v12);
  return v8 & 1;
}

uint64_t sub_22BEADCC8(uint64_t a1)
{
  sub_22C274154();
  AST.ParameterKey.hash(into:)();
  return sub_22C2741A4();
}

uint64_t AST.UpdateParameters.statementId.getter()
{
  sub_22C26E684();
  sub_22BE18000();
  v0 = sub_22BE19454();

  return v1(v0);
}

uint64_t AST.UpdateParameters.statementId.setter()
{
  sub_22BE17BC4();
  sub_22C26E684();
  sub_22BE18000();
  v0 = sub_22BE18944();

  return v1(v0);
}

uint64_t AST.UpdateParameters.parameters.getter()
{
  type metadata accessor for AST.UpdateParameters(0);
}

void AST.UpdateParameters.parameters.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for AST.UpdateParameters(v2) + 20);

  *(v1 + v3) = v0;
}

void (*AST.UpdateParameters.parameters.modify())()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for AST.UpdateParameters(v0);
  return nullsub_1;
}

uint64_t AST.UpdateParameters.init(statementId:parameters:)()
{
  sub_22BE18378();
  v2 = v1;
  sub_22C26E684();
  sub_22BE18000();
  v3 = sub_22BE1804C();
  v4(v3);
  result = type metadata accessor for AST.UpdateParameters(0);
  *(v2 + *(result + 20)) = v0;
  return result;
}

uint64_t sub_22BEADF18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_22BEADFEC(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_22BEAE038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEADF18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAE060(uint64_t a1)
{
  v2 = sub_22BEB9EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAE09C(uint64_t a1)
{
  v2 = sub_22BEB9EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AST.UpdateParameters.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22BE5CE4C(&qword_27D908620, &qword_22C27ACC0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  sub_22BE26950(a1, a1[3]);
  sub_22BEB9EE8();
  sub_22C274234();
  v12 = 0;
  sub_22C26E684();
  sub_22BE17BAC();
  sub_22BEBFCD4(v6);
  sub_22BEC09B4(v3, &v12);
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for AST.UpdateParameters(0) + 20));
    v10 = 1;
    sub_22BE5CE4C(&qword_27D908630, &qword_22C27ACC8);
    sub_22BEB9F3C(&unk_27D908638);
    sub_22BEC09B4(&v11, &v10);
  }

  v7 = sub_22BE1AB74();
  return v8(v7);
}

uint64_t AST.UpdateParameters.hash(into:)()
{
  sub_22BE17BC4();
  sub_22C26E684();
  sub_22BE17BAC();
  sub_22BEBFCD4(v2);
  sub_22BE33FD8();
  sub_22C272EE4();
  v3 = *(v1 + *(type metadata accessor for AST.UpdateParameters(0) + 20));

  return sub_22BEB8A6C(v0, v3);
}

uint64_t AST.UpdateParameters.hashValue.getter()
{
  sub_22BE25DAC();
  sub_22C26E684();
  sub_22BE17BAC();
  sub_22BEBFCD4(v1);
  sub_22C272EE4();
  updated = type metadata accessor for AST.UpdateParameters(0);
  sub_22BEB8A6C(v4, *(v0 + *(updated + 20)));
  return sub_22C2741A4();
}

void AST.UpdateParameters.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v25 = v24;
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22BE5CE4C(&qword_27D908648, &qword_22C27ACD0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE23E58();
  updated = type metadata accessor for AST.UpdateParameters(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v29);
  sub_22BE179EC();
  v32 = v31 - v30;
  sub_22BE26950(v25, v25[3]);
  sub_22BEB9EE8();
  sub_22C274214();
  if (v23)
  {
    sub_22BE26B64(v25);
  }

  else
  {
    sub_22BE17BAC();
    sub_22BEBFCD4(v33);
    sub_22C273EB4();
    v34 = sub_22BE392D4();
    v35(v34);
    sub_22BE5CE4C(&qword_27D908630, &qword_22C27ACC8);
    sub_22BEB9F3C(&unk_27D908650);
    sub_22C273EB4();
    v36 = sub_22BE25424();
    v37(v36);
    *(v32 + *(updated + 20)) = v38;
    sub_22BE258A8();
    sub_22BEBFD70();
    sub_22BE26B64(v25);
    sub_22BE35AF4();
    sub_22BEBFDC4();
  }

  sub_22BE18478();
}

uint64_t sub_22BEAE72C(uint64_t a1, uint64_t a2)
{
  sub_22C274154();
  sub_22C26E684();
  sub_22BEBFCD4(&unk_28107F2F0);
  sub_22C272EE4();
  sub_22BEB8A6C(v5, *(v2 + *(a2 + 20)));
  return sub_22C2741A4();
}

unint64_t AST.UpdateExpr.expr.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_22BEA7680(v2);
}

void AST.UpdateExpr.expr.setter(uint64_t *a1)
{
  v2 = *a1;
  sub_22BE63574(*(v1 + 8));
  *(v1 + 8) = v2;
}

_BYTE *AST.UpdateExpr.init(kind:expr:parameterIndex:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t static AST.UpdateExpr.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a2 + 1);
    v6 = *(a1 + 1);
    sub_22BEA7680(v6);
    sub_22BEA7680(v3);
    static AST.Expr.== infix(_:_:)();
    v2 = v4;
    sub_22BE63574(v3);
    sub_22BE63574(v6);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_22BEAE90C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919973477 && a2 == 0xE400000000000000)
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

uint64_t sub_22BEAE9DC(char a1)
{
  if (a1)
  {
    return 1919973477;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_22BEAEA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAE90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAEA2C(uint64_t a1)
{
  v2 = sub_22BEBA064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAEA68(uint64_t a1)
{
  v2 = sub_22BEBA064();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.UpdateExpr.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D908660, &qword_22C27ACD8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E64();
  v27 = *(v24 + 8);
  v28 = sub_22BE1AEE4();
  sub_22BE26950(v28, v29);
  sub_22BEBA064();
  sub_22C274234();
  sub_22BEBA0B8();
  sub_22C273FA4();
  if (!v25)
  {
    sub_22BEA7680(v27);
    sub_22BEAB3C8();
    sub_22C273FA4();
    sub_22BE63574(v27);
  }

  v30 = sub_22BE1AB74();
  v31(v30);
  sub_22BE18478();
}

void AST.UpdateExpr.hash(into:)()
{
  MEMORY[0x2318AC860](*v0);
  sub_22BEC03B0();
  AST.Expr.hash(into:)();
}

uint64_t AST.UpdateExpr.hashValue.getter()
{
  sub_22BE25DAC();
  v0 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v0);
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

void AST.UpdateExpr.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  v15 = v14;
  v17 = v16;
  sub_22BE5CE4C(&qword_27D908678, &qword_22C27ACE0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE234F4();
  sub_22BE26950(v15, v15[3]);
  sub_22BEBA064();
  sub_22BE48270();
  sub_22C274214();
  if (!v13)
  {
    sub_22BEBA10C();
    sub_22BE1AF00();
    sub_22C273EB4();
    sub_22BEB997C();
    sub_22BE1AF00();
    sub_22C273EB4();
    v19 = sub_22BE33560();
    v20(v19);
    *v17 = a13;
    *(v17 + 8) = v21;
  }

  sub_22BE26B64(v15);
  sub_22BE18478();
}

uint64_t sub_22BEAEE4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65707061 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000)
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

uint64_t sub_22BEAEF10(char a1)
{
  if (a1)
  {
    return 0x6563616C706572;
  }

  else
  {
    return 0x646E65707061;
  }
}

uint64_t sub_22BEAEF80(uint64_t a1)
{
  v2 = *v1;
  sub_22C274154();
  MEMORY[0x2318AC860](v2);
  AST.Expr.hash(into:)();
  return sub_22C2741A4();
}

uint64_t sub_22BEAEFE0(uint64_t a1)
{
  v2 = sub_22BEBA208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAF01C(uint64_t a1)
{
  v2 = sub_22BEBA208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAF060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAEE4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAF088(uint64_t a1)
{
  v2 = sub_22BEBA160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAF0C4(uint64_t a1)
{
  v2 = sub_22BEBA160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAF100(uint64_t a1)
{
  v2 = sub_22BEBA1B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAF13C(uint64_t a1)
{
  v2 = sub_22BEBA1B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.UpdateKind.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22BE5CE4C(&qword_27D908688, &qword_22C27ACE8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE20168(v4, v12);
  sub_22BE5CE4C(&qword_27D908690, &qword_22C27ACF0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE23E58();
  sub_22BE5CE4C(&qword_27D908698, &qword_22C27ACF8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A8B4();
  v7 = *v0;
  sub_22BE26950(v2, v2[3]);
  sub_22BEBA160();
  sub_22C274234();
  if (v7)
  {
    sub_22BE486C4();
    sub_22BEBA1B4();
    sub_22BE1B934();
    sub_22C273EE4();
    v8 = sub_22BE2399C();
  }

  else
  {
    sub_22BEBA208();
    sub_22BE1B934();
    sub_22C273EE4();
    v8 = sub_22BE3408C();
  }

  v9(v8);
  v10 = sub_22BE38FD8();
  v11(v10);
  sub_22BE18478();
}

uint64_t AST.UpdateKind.hashValue.getter()
{
  sub_22BE25DAC();
  v0 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v0);
  return sub_22C2741A4();
}

void AST.UpdateKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v26 = v25;
  v63 = v27;
  v64 = sub_22BE5CE4C(&qword_27D9086B8, &qword_22C27AD00);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  v29 = sub_22BE5CE4C(&qword_27D9086C0, &qword_22C27AD08);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE234F4();
  v31 = sub_22BE5CE4C(&qword_27D9086C8, &qword_22C27AD10);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1B01C();
  v33 = sub_22BE36658();
  sub_22BE26950(v33, v34);
  sub_22BEBA160();
  sub_22C274214();
  if (!v23)
  {
    v65 = v26;
    sub_22BEC0924();
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v36 != v35 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v43 == v44)
      {
        __break(1u);
        return;
      }

      v45 = *(v42 + v41);
      sub_22BEC0558(v37, v38, v39, v40, v41);
      sub_22BE7C5C0();
      v47 = v46;
      v49 = v48;
      swift_unknownObjectRelease();
      if (v47 == v49 >> 1)
      {
        if (v45)
        {
          sub_22BE486C4();
          sub_22BEBA1B4();
          sub_22BEC000C();
          sub_22C273DE4();
          v50 = v63;
          swift_unknownObjectRelease();
          v51 = sub_22BE28D70();
          v53 = v64;
        }

        else
        {
          sub_22BEBA208();
          sub_22BEC000C();
          sub_22C273DE4();
          v50 = v63;
          swift_unknownObjectRelease();
          v51 = sub_22BE28D70();
          v53 = v29;
        }

        v52(v51, v53);
        v61 = sub_22BE25C08();
        v62(v61);
        *v50 = v45;
        sub_22BE26B64(v65);
        goto LABEL_10;
      }
    }

    v54 = sub_22C273B34();
    sub_22BE196B4(v54, MEMORY[0x277D841A0]);
    v56 = v55;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v56 = &type metadata for AST.UpdateKind;
    sub_22BEC0924();
    sub_22C273DF4();
    sub_22BEC0930();
    sub_22BE1B198(v57);
    sub_22BE1BC24();
    v58 = sub_22BEC0360();
    v59(v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v60(v24, v31);
    v26 = v65;
  }

  sub_22BE26B64(v26);
LABEL_10:
  sub_22BE18478();
}

uint64_t static AST.PickType.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 1;
    }

    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }

  if (a4)
  {
    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }

  return a1 == a3;
}

uint64_t sub_22BEAF880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
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

uint64_t sub_22BEAF944(char a1)
{
  sub_22BE25DAC();
  MEMORY[0x2318AC860](a1 & 1);
  return sub_22C2741A4();
}

uint64_t sub_22BEAF984(char a1)
{
  if (a1)
  {
    return 1701736302;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_22BEAF9B0(uint64_t a1)
{
  sub_22C274154();
  v1 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t sub_22BEAF9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEAF880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEAFA20(uint64_t a1)
{
  v2 = sub_22BEBA25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAFA5C(uint64_t a1)
{
  v2 = sub_22BEBA25C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAFA98(uint64_t a1)
{
  v2 = sub_22BEBA304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAFAD4(uint64_t a1)
{
  v2 = sub_22BEBA304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEAFB10(uint64_t a1)
{
  v2 = sub_22BEBA2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEAFB4C(uint64_t a1)
{
  v2 = sub_22BEBA2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.PickType.encode(to:)()
{
  sub_22BE19130();
  v15 = v1;
  sub_22BE5CE4C(&qword_27D9086D0, &qword_22C27AD18);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1A8B4();
  v3 = sub_22BE5CE4C(&qword_27D9086D8, &qword_22C27AD20);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  v5 = sub_22BE5CE4C(&qword_27D9086E0, &qword_22C27AD28);
  sub_22BE179D8();
  v7 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE23E58();
  v9 = sub_22BE261AC();
  sub_22BE26950(v9, v10);
  sub_22BEBA25C();
  sub_22C274234();
  if (v15)
  {
    sub_22BE486C4();
    sub_22BEBA2B0();
    sub_22BE1B934();
    sub_22C273EE4();
    v11 = sub_22BEC0304();
    v12(v11);
  }

  else
  {
    sub_22BEBA304();
    sub_22BE1B934();
    sub_22C273EE4();
    sub_22C273F94();
    v13 = sub_22BE2399C();
    v14(v13, v3);
  }

  (*(v7 + 8))(v0, v5);
  sub_22BE18478();
}

uint64_t AST.PickType.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
    MEMORY[0x2318AC860](0);
  }

  return MEMORY[0x2318AC860](v3, a2);
}

uint64_t AST.PickType.hashValue.getter(uint64_t a1, char a2)
{
  sub_22BE25DAC();
  if ((a2 & 1) == 0)
  {
    v3 = sub_22BEC0490();
    MEMORY[0x2318AC860](v3);
  }

  v4 = sub_22BEC03B0();
  MEMORY[0x2318AC860](v4);
  return sub_22C2741A4();
}

void AST.PickType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v26 = v25;
  v60 = sub_22BE5CE4C(&qword_27D908700, &qword_22C27AD30);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D908708, &qword_22C27AD38);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE2C64C();
  sub_22BE5CE4C(&qword_27D908710, &qword_22C27AD40);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE25CD0();
  v30 = sub_22BE25C08();
  sub_22BE26950(v30, v31);
  sub_22BEBA25C();
  sub_22BEC046C();
  sub_22C274214();
  if (!v23)
  {
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v33 == v32 >> 1)
    {
      goto LABEL_9;
    }

    sub_22BE38A18();
    sub_22BE3E9D8();
    if (v40 == v41)
    {
      __break(1u);
      return;
    }

    v42 = *(v39 + v38);
    sub_22BE39FEC(v34, v35, v36, v37, v38);
    sub_22BE7C5C0();
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 != v46 >> 1)
    {
LABEL_9:
      v47 = sub_22C273B34();
      sub_22BE196B4(v47, MEMORY[0x277D841A0]);
      v49 = v48;
      sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
      *v49 = &type metadata for AST.PickType;
      sub_22C273DF4();
      sub_22BEC0930();
      sub_22BE1B198(v50);
      sub_22BE1BC24();
      v51 = sub_22BEC0360();
      v52(v51);
      swift_willThrow();
      swift_unknownObjectRelease();
      v53 = sub_22BE29264();
      v54(v53);
    }

    else
    {
      if (v42)
      {
        sub_22BE486C4();
        sub_22BEBA2B0();
        sub_22C273DE4();
        swift_unknownObjectRelease();
        sub_22BE1B940();
        v55(v24, v60);
        v56 = sub_22BE29264();
      }

      else
      {
        sub_22BEBA304();
        sub_22C273DE4();
        sub_22C273EA4();
        swift_unknownObjectRelease();
        v58 = sub_22BE25EE4();
        v59(v58);
        v56 = sub_22BEC04D8();
      }

      v57(v56);
    }
  }

  sub_22BE26B64(v26);
  sub_22BE18478();
}

uint64_t sub_22BEB0398(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_22C274154();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x2318AC860](0);
  }

  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

uint64_t sub_22BEB03F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684631414 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1819242338 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7630441 && a2 == 0xE300000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1952672100 && a2 == 0xE400000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1836412517 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_22C274014();

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

uint64_t sub_22BEB06B8(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = 1684631414;
      break;
    case 2:
      result = 1819242338;
      break;
    case 3:
      result = 7630441;
      break;
    case 4:
      result = 0x656C62756F64;
      break;
    case 5:
      result = 0x676E69727473;
      break;
    case 6:
      result = 0x7961727261;
      break;
    case 7:
      result = 1952672100;
      break;
    case 8:
      result = 1836412517;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEB0768(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BE2BC78(12383, 0xE200000000000000, a1);
    sub_22BE417C8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BEB07C8()
{
  sub_22BE25DAC();
  v0 = sub_22BEC0490();
  MEMORY[0x2318AC860](v0);
  return sub_22C2741A4();
}

uint64_t sub_22BEB0800(uint64_t a1)
{
  v2 = sub_22BEBA454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB083C(uint64_t a1)
{
  v2 = sub_22BEBA454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0878(uint64_t a1)
{
  v2 = sub_22BEBA5A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB08B4(uint64_t a1)
{
  v2 = sub_22BEBA5A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB08F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEB03F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEB0920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEB06B0();
  *a1 = result;
  return result;
}

uint64_t sub_22BEB0948(uint64_t a1)
{
  v2 = sub_22BEBA358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0984(uint64_t a1)
{
  v2 = sub_22BEBA358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB09C0(uint64_t a1)
{
  v2 = sub_22BEBA400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB09FC(uint64_t a1)
{
  v2 = sub_22BEBA400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0A38(uint64_t a1)
{
  v2 = sub_22BEBA4FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0A74(uint64_t a1)
{
  v2 = sub_22BEBA4FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0AB0(uint64_t a1)
{
  v2 = sub_22BEBA3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0AEC(uint64_t a1)
{
  v2 = sub_22BEBA3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0B28(uint64_t a1)
{
  v2 = sub_22BEBA550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0B64(uint64_t a1)
{
  v2 = sub_22BEBA550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0BA0(uint64_t a1)
{
  v2 = sub_22BEBA64C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0BDC(uint64_t a1)
{
  v2 = sub_22BEBA64C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0C18(uint64_t a1)
{
  sub_22C274154();
  v1 = sub_22BEC0490();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t sub_22BEB0C54(uint64_t a1)
{
  v2 = sub_22BEBA4A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0C90(uint64_t a1)
{
  v2 = sub_22BEBA4A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB0CCC(uint64_t a1)
{
  v2 = sub_22BEBA5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB0D08(uint64_t a1)
{
  v2 = sub_22BEBA5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AST.Literal.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v67 = sub_22BE5CE4C(&qword_27D908718, &qword_22C27AD48);
  sub_22BE179D8();
  v65 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE486B0(v8, v56);
  v66 = sub_22BE5CE4C(&qword_27D908720, &qword_22C27AD50);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE4104C(v10, v57);
  sub_22BE5CE4C(&qword_27D908728, &qword_22C27AD58);
  sub_22BE179D8();
  v63 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  sub_22BE39F68(v13);
  sub_22BE5CE4C(&qword_27D908730, &qword_22C27AD60);
  sub_22BE179D8();
  v61 = v15;
  v62 = v14;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v60 = v17;
  v59 = sub_22BE5CE4C(&qword_27D908738, &qword_22C27AD68);
  sub_22BE179D8();
  v58 = v18;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  sub_22BE190A8(v20);
  v21 = sub_22BE5CE4C(&qword_27D908740, &qword_22C27AD70);
  sub_22BE18910(v21, &v74);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  sub_22BE190A8(v23);
  v24 = sub_22BE5CE4C(&qword_27D908748, &qword_22C27AD78);
  sub_22BE18910(v24, &v73);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A8B4();
  v26 = sub_22BE5CE4C(&qword_27D908750, &qword_22C27AD80);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE23E58();
  v28 = sub_22BE5CE4C(&qword_27D908758, &qword_22C27AD88);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE234F4();
  v71 = sub_22BE5CE4C(&qword_27D908760, &qword_22C27AD90);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1B72C();
  v31 = sub_22BE261AC();
  sub_22BE26950(v31, v32);
  sub_22BEBA358();
  sub_22C274234();
  switch(a4)
  {
    case 1:
      LOBYTE(v72[0]) = 3;
      sub_22BEBA550();
      sub_22BE236D4();
      v35 = v71;
      sub_22BE27168();
      sub_22C273EE4();
      sub_22BEC0400();
      sub_22BEC0970();
      sub_22C273F94();
      sub_22BE1B5D4();
      v44 = sub_22BE1AB1C();
      v45(v44);
      sub_22BE37778();
      v47 = v4;
      goto LABEL_11;
    case 2:
      LOBYTE(v72[0]) = 4;
      sub_22BEBA4FC();
      sub_22BE236D4();
      sub_22BE28EE4();
      sub_22C273EE4();
      v28 = v59;
      sub_22BEC0970();
      sub_22C273F74();
      v40 = v58;
      goto LABEL_13;
    case 3:
      LOBYTE(v72[0]) = 5;
      sub_22BEBA4A8();
      v26 = v60;
      sub_22BE28EE4();
      sub_22C273EE4();
      v28 = v62;
      sub_22BEC0970();
      sub_22C273F54();
      v40 = v61;
      goto LABEL_13;
    case 4:
      sub_22BEBA454();
      v36 = v4;
      v35 = v71;
      sub_22BE27168();
      sub_22C273EE4();
      v72[0] = a2;
      sub_22BE5CE4C(&qword_27D908798, &qword_22C27ADA0);
      sub_22BEC0214();
      sub_22BEBA714(v37);
      v38 = v63;
      sub_22BEC09D4(v72, v39);
      goto LABEL_10;
    case 5:
      sub_22BEBA400();
      v36 = v4;
      v35 = v71;
      sub_22BE27168();
      sub_22C273EE4();
      v72[0] = a2;
      sub_22BE5CE4C(&qword_27D908780, &qword_22C27AD98);
      sub_22BEC0214();
      sub_22BEBA6A0(v48);
      v38 = v66;
      sub_22BEC09D4(v72, v49);
LABEL_10:
      v50 = sub_22BE28D70();
      v51(v50, v38);
      sub_22BE37778();
      v47 = v36;
LABEL_11:
      v52 = v35;
      return v46(v47, v52);
    case 6:
      LOBYTE(v72[0]) = 8;
      sub_22BEBA3AC();
      v26 = v64;
      sub_22BE28EE4();
      sub_22C273EE4();
      v28 = v67;
      sub_22BEC0970();
      sub_22C273F54();
      v40 = v65;
LABEL_13:
      v33 = *(v40 + 8);
      v34 = v26;
      goto LABEL_14;
    case 7:
      if (a2 | a3)
      {
        LOBYTE(v72[0]) = 1;
        sub_22BEBA5F8();
        sub_22BE27168();
        sub_22C273EE4();
        v41 = sub_22BE1AB4C();
        v43 = v26;
      }

      else
      {
        LOBYTE(v72[0]) = 0;
        sub_22BEBA64C();
        sub_22BE27168();
        sub_22C273EE4();
        sub_22BE1B5D4();
        v41 = sub_22BE33560();
      }

      v42(v41, v43);
      v54 = sub_22BE1A8C4();
      return v55(v54);
    default:
      LOBYTE(v72[0]) = 2;
      sub_22BEBA5A4();
      sub_22BE28EE4();
      sub_22C273EE4();
      sub_22BEC0400();
      sub_22C273F64();
      sub_22BE1B5D4();
      v34 = v5;
LABEL_14:
      v33(v34, v28);
      v47 = sub_22BE25EE4();
      return v46(v47, v52);
  }
}

void AST.Literal.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE18378();
  switch(v5)
  {
    case 1:
      MEMORY[0x2318AC860](3);
      v10 = v3;
      goto LABEL_20;
    case 2:
      MEMORY[0x2318AC860](4);
      v8 = (v3 & 0x7FFFFFFFFFFFFFFFLL) != 0 && v3;
      MEMORY[0x2318AC890](v8);
      return;
    case 3:
      v9 = 5;
      goto LABEL_17;
    case 4:
      MEMORY[0x2318AC860](6);
      v6 = sub_22BE18944();

      sub_22BEB98FC(v6, v7);
      return;
    case 5:
      MEMORY[0x2318AC860](7);
      v11 = sub_22BE18944();

      sub_22BEB8910(v11, v12);
      return;
    case 6:
      v9 = 8;
LABEL_17:
      MEMORY[0x2318AC860](v9);
      sub_22BE376A8();

      sub_22C272F44();
      break;
    case 7:
      v10 = (v3 | a3) != 0;
LABEL_20:
      MEMORY[0x2318AC860](v10);
      break;
    default:
      MEMORY[0x2318AC860](2);
      sub_22C274174();
      break;
  }
}

uint64_t AST.Literal.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_22BE25DAC();
  AST.Literal.hash(into:)(v5, a1, a2);
  return sub_22C2741A4();
}

void AST.Literal.init(from:)(void *a1)
{
  sub_22BE5CE4C(&qword_27D9087D8, &qword_22C27ADA8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BEBFF98(v4, v90);
  sub_22BE5CE4C(&qword_27D9087E0, &qword_22C27ADB0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE29250(v6, v91);
  sub_22BE5CE4C(&qword_27D9087E8, &qword_22C27ADB8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  sub_22BEC03A4(v8);
  sub_22BE5CE4C(&qword_27D9087F0, &qword_22C27ADC0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE23AA4(v10);
  sub_22BE5CE4C(&qword_27D9087F8, &qword_22C27ADC8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE2BA30(v12, v92);
  v13 = sub_22BE5CE4C(&qword_27D908800, &qword_22C27ADD0);
  sub_22BE18910(v13, &v100);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE2C638(v15, v93);
  v16 = sub_22BE5CE4C(&qword_27D908808, &qword_22C27ADD8);
  sub_22BE18910(v16, &v101);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE181D0(v18, v94);
  v19 = sub_22BE5CE4C(&qword_27D908810, &qword_22C27ADE0);
  sub_22BE18910(v19, &v99);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = sub_22BE5CE4C(&qword_27D908818, &qword_22C27ADE8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE23E58();
  v23 = sub_22BE5CE4C(&qword_27D908820, &qword_22C27ADF0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E64();
  v97 = a1;
  sub_22BE26950(a1, a1[3]);
  sub_22BEBA358();
  sub_22C274214();
  if (!v98)
  {
    v25 = v96;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v27 != v26 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v30 == v31)
      {
        __break(1u);
        return;
      }

      v95 = *(v29 + v28);
      sub_22BE7C5C0();
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      if (v33 == v35 >> 1)
      {
        switch(v95)
        {
          case 1:
            sub_22BEBA5F8();
            sub_22BE236D4();
            sub_22BE28EE4();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v53();
            v54 = sub_22BE25EE4();
            v55(v54);
            goto LABEL_16;
          case 2:
            sub_22BEBA5A4();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BE25CE0();
            sub_22C273E74();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v66 = sub_22BE31180();
            v67(v66);
            v68 = sub_22BE25EE4();
            v69(v68);
            break;
          case 3:
            sub_22BEBA550();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273EA4();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v70 = sub_22BE31180();
            v71(v70);
            v72 = sub_22BEBFED4();
            v73(v72);
            break;
          case 4:
            sub_22BEBA4FC();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273E84();
            v25 = v97;
            swift_unknownObjectRelease();
            v62 = sub_22BE31180();
            v63(v62);
            v64 = sub_22BE1B328();
            v65(v64);
            break;
          case 5:
            sub_22BEBA4A8();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273E64();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v78 = sub_22BE31180();
            v79(v78);
            v80 = sub_22BEBFED4();
            v81(v80);
            break;
          case 6:
            sub_22BEBA454();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            v56 = sub_22BE5CE4C(&qword_27D908798, &qword_22C27ADA0);
            sub_22BE29198();
            v58 = sub_22BEBA714(v57);
            sub_22BE35DCC(v56, v59, v60, v61, v58);
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v82 = sub_22BE31180();
            v83(v82);
            v84 = sub_22BEBFED4();
            v85(v84);
            break;
          case 7:
            sub_22BEBA400();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            v47 = sub_22BE5CE4C(&qword_27D908780, &qword_22C27AD98);
            sub_22BE29198();
            v49 = sub_22BEBA6A0(v48);
            sub_22BE35DCC(v47, v50, v51, v52, v49);
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v74 = sub_22BE31180();
            v75(v74);
            v76 = sub_22BEBFED4();
            v77(v76);
            break;
          case 8:
            sub_22BEBA3AC();
            sub_22BE28EE4();
            sub_22C273DE4();
            sub_22BEC049C();
            sub_22BE25CE0();
            sub_22C273E64();
            sub_22BE3FF0C();
            swift_unknownObjectRelease();
            v86 = sub_22BE31180();
            v87(v86);
            v88 = sub_22BEBFED4();
            v89(v88);
            break;
          default:
            sub_22BEBA64C();
            sub_22BE236D4();
            sub_22BE28EE4();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v36(v96, v21);
            v37 = sub_22BE25EE4();
            v38(v37);
LABEL_16:
            v25 = v97;
            break;
        }

        goto LABEL_10;
      }
    }

    v39 = v1;
    v40 = v23;
    v41 = sub_22C273B34();
    sub_22BE196B4(v41, MEMORY[0x277D841A0]);
    v43 = v42;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v43 = &type metadata for AST.Literal;
    v44 = sub_22C273DF4();
    sub_22BE1B198(v44);
    sub_22BE1BC24();
    (*(v45 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v46(v39, v40);
  }

  v25 = v97;
LABEL_10:
  sub_22BE26B64(v25);
  sub_22BE19454();
}

uint64_t sub_22BEB2480(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937075312 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73756E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7630702 && a2 == 0xE300000000000000)
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

uint64_t sub_22BEB258C(char a1)
{
  if (!a1)
  {
    return 1937075312;
  }

  if (a1 == 1)
  {
    return 0x73756E696DLL;
  }

  return 7630702;
}

void sub_22BEB25EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  AST.Literal.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_22BEB2654(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22C274154();
  AST.Literal.hash(into:)(v5, v2, v3);
  return sub_22C2741A4();
}

uint64_t sub_22BEB26B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEB2480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEB26DC(uint64_t a1)
{
  v2 = sub_22BEBA784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2718(uint64_t a1)
{
  v2 = sub_22BEBA784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB2754(uint64_t a1)
{
  v2 = sub_22BEBA82C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2790(uint64_t a1)
{
  v2 = sub_22BEBA82C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB27CC(uint64_t a1)
{
  v2 = sub_22BEBA7D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2808(uint64_t a1)
{
  v2 = sub_22BEBA7D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB2844(uint64_t a1)
{
  v2 = sub_22BEBA880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB2880(uint64_t a1)
{
  v2 = sub_22BEBA880();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.PrefixOp.encode(to:)()
{
  sub_22BE19130();
  v24 = v1;
  v3 = v2;
  sub_22BE5CE4C(&qword_27D908838, &qword_22C27ADF8);
  sub_22BE179D8();
  v22 = v5;
  v23 = v4;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE20168(v7, v18);
  sub_22BE5CE4C(&qword_27D908840, &qword_22C27AE00);
  sub_22BE179D8();
  v19 = v9;
  v20 = v8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE2C64C();
  sub_22BE5CE4C(&qword_27D908848, &qword_22C27AE08);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A8B4();
  sub_22BE5CE4C(&qword_27D908850, &qword_22C27AE10);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE234F4();
  sub_22BE26950(v3, v3[3]);
  sub_22BEBA784();
  sub_22BE48270();
  sub_22C274234();
  if (!v24)
  {
    sub_22BEBA880();
    sub_22BE1AF00();
    sub_22C273EE4();
    sub_22BE37778();
    v13 = sub_22BE33FCC();
LABEL_6:
    v15(v13, v14);
    goto LABEL_7;
  }

  if (v24 != 1)
  {
    sub_22BE39E24();
    sub_22BEBA7D8();
    sub_22BE1AF00();
    sub_22C273EE4();
    v14 = v23;
    v15 = *(v22 + 8);
    v13 = v21;
    goto LABEL_6;
  }

  sub_22BEBA82C();
  sub_22BE1AF00();
  sub_22C273EE4();
  (*(v19 + 8))(v0, v20);
LABEL_7:
  v16 = sub_22BE33560();
  v17(v16);
  sub_22BE18478();
}

void AST.PrefixOp.init(from:)()
{
  sub_22BE19130();
  v4 = v3;
  sub_22BE5CE4C(&qword_27D908878, &qword_22C27AE18);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE23AA4(v6);
  sub_22BE5CE4C(&qword_27D908880, &qword_22C27AE20);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  v8 = sub_22BE5CE4C(&qword_27D908888, &qword_22C27AE28);
  sub_22BE179D8();
  v44 = v9;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = sub_22BE5CE4C(&qword_27D908890, &qword_22C27AE30);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE25CD0();
  sub_22BE26950(v4, v4[3]);
  sub_22BEBA784();
  sub_22BEC046C();
  sub_22C274214();
  if (!v0)
  {
    v43 = v2;
    sub_22C273ED4();
    sub_22BE7C5C4();
    v14 = v11;
    if (v15 != v13 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v22 == v23)
      {
        __break(1u);
        return;
      }

      v24 = v11;
      v25 = *(v21 + v20);
      sub_22BE39FEC(v16, v17, v18, v19, v20);
      sub_22BE7C5C0();
      v27 = v26;
      v29 = v28;
      swift_unknownObjectRelease();
      if (v27 == v29 >> 1)
      {
        if (v25)
        {
          if (v25 == 1)
          {
            sub_22BEBA82C();
            sub_22BE33B04();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            sub_22BE37778();
            v30 = sub_22BE3CC34();
          }

          else
          {
            sub_22BE39E24();
            sub_22BEBA7D8();
            sub_22BE33B04();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v30 = sub_22BE33BE8();
          }

          v31(v30);
          v32 = sub_22BE1B18C();
          v33(v32);
        }

        else
        {
          sub_22BEBA880();
          sub_22BE33B04();
          sub_22C273DE4();
          swift_unknownObjectRelease();
          (*(v44 + 8))(v43, v8);
          sub_22BE1B940();
          v41 = sub_22BE1B18C();
          v42(v41);
        }

        goto LABEL_12;
      }

      v14 = v24;
    }

    v34 = sub_22C273B34();
    sub_22BE196B4(v34, MEMORY[0x277D841A0]);
    v36 = v35;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v36 = &type metadata for AST.PrefixOp;
    sub_22C273DF4();
    sub_22BEC0930();
    sub_22BE1B198(v37);
    sub_22BE1BC24();
    v38 = sub_22BEC0360();
    v39(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v40(v1, v14);
  }

LABEL_12:
  sub_22BE26B64(v4);
  sub_22BE18478();
}

uint64_t sub_22BEB30C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6769737361 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6579297 && a2 == 0xE300000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6769737341646461 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7463617274627573 && a2 == 0xE800000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463617274627573 && a2 == 0xEE006E6769737341;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656469766964 && a2 == 0xE600000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7341656469766964 && a2 == 0xEC0000006E676973;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x796C7069746C756DLL && a2 == 0xE800000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x796C7069746C756DLL && a2 == 0xEE006E6769737341;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x746E656E6F707865 && a2 == 0xE800000000000000;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6C61757165 && a2 == 0xE500000000000000;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C61757145746F6ELL && a2 == 0xE800000000000000;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 28265 && a2 == 0xE200000000000000;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x800000022C2D37B0 == a2;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E6168547373656CLL && a2 == 0xED00006C61757145;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 6581857 && a2 == 0xE300000000000000;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 29295 && a2 == 0xE200000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_22C274014();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
    }
  }
}

unint64_t sub_22BEB3658(char a1)
{
  result = 0x6E6769737361;
  switch(a1)
  {
    case 1:
      result = 6579297;
      break;
    case 2:
      result = 0x6769737341646461;
      break;
    case 3:
      result = 0x7463617274627573;
      break;
    case 4:
      result = 0x7463617274627573;
      break;
    case 5:
      result = 0x656469766964;
      break;
    case 6:
      result = 0x7341656469766964;
      break;
    case 7:
      result = 0x796C7069746C756DLL;
      break;
    case 8:
      result = 0x796C7069746C756DLL;
      break;
    case 9:
      result = 0x746E656E6F707865;
      break;
    case 10:
      result = 0x6C61757165;
      break;
    case 11:
      result = 0x6C61757145746F6ELL;
      break;
    case 12:
      result = 28265;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x5472657461657267;
      break;
    case 15:
    case 16:
      result = 0x6E6168547373656CLL;
      break;
    case 17:
      result = 6581857;
      break;
    case 18:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22BEB3830(_BYTE *a1@<X8>)
{
  AST.PrefixOp.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_22BEB3878(uint64_t a1)
{
  v2 = sub_22BEBAE68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB38B4(uint64_t a1)
{
  v2 = sub_22BEBAE68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB38F0(uint64_t a1)
{
  v2 = sub_22BEBAEBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB392C(uint64_t a1)
{
  v2 = sub_22BEBAEBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB3968(uint64_t a1)
{
  v2 = sub_22BEBA97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB39A4(uint64_t a1)
{
  v2 = sub_22BEBA97C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEB39E0(uint64_t a1)
{
  v2 = sub_22BEBAF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEB3A1C(uint64_t a1)
{
  v2 = sub_22BEBAF10();

  return MEMORY[0x2821FE720](a1, v2);
}