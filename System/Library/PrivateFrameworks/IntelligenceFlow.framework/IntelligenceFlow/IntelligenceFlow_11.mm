void IntermediateSystemResponseRendered.init(from:)()
{
  sub_1DD6DED2C();
  *&v33 = v0;
  v3 = v2;
  v32 = v4;
  v5 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E9924(v7, v32);
  sub_1DD710A9C(&qword_1ECD12590, &qword_1DD889E98);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E7258();
  v9 = type metadata accessor for IntermediateSystemResponseRendered(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E535C();
  sub_1DD874820();
  sub_1DD825310();
  sub_1DD6E5E68(v11, v12, v13, v14);
  v15 = (v1 + v9[5]);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 1;
  sub_1DD6E49C0(v3);
  sub_1DD803F74();
  sub_1DD7039CC();
  sub_1DD827908(v16, v17, v18);
  if (v0)
  {
    sub_1DD6E1EC8(v3);
    sub_1DD824154(v1, &qword_1ECD0E540);
    v24 = sub_1DD82676C();
    sub_1DD70148C(v24, v25, v26);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v19);
    sub_1DD825A9C();
    sub_1DD6EE298();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD6F09C4();
    sub_1DD875860();
    sub_1DD703E0C();
    v20 = sub_1DD82676C();
    sub_1DD70148C(v20, v21, v22);
    *v15 = v33;
    v15[2] = 1;
    sub_1DD826730(2);
    sub_1DD6EE298();
    v23 = sub_1DD875820();
    sub_1DD8265D4(v23, v27, v9[6]);
    sub_1DD826730(v28);
    sub_1DD6EE298();
    v29 = sub_1DD875880();
    v30 = sub_1DD6E594C();
    v31(v30);
    *(v1 + v9[7]) = v29 & 1;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v3);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

double InterpretedStatementResult.resultStatementID.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for InterpretedStatementResult(v0);
  sub_1DD825B6C(*(v1 + 20));

  return result;
}

void InterpretedStatementResult.resultStatementID.setter()
{
  v0 = sub_1DD826BD0();
  type metadata accessor for InterpretedStatementResult(v0);

  sub_1DD826EAC();
}

uint64_t InterpretedStatementResult.resultStatementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for InterpretedStatementResult(v0);
  return sub_1DD6DDF9C();
}

double sub_1DD7D4690()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  sub_1DD825B6C(*(v2 + 24));

  return result;
}

void sub_1DD7D46EC()
{
  v0 = sub_1DD826BD0();
  v1(v0);

  sub_1DD826EAC();
}

uint64_t InterpretedStatementResult.originProgramStatementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for InterpretedStatementResult(v0);
  return sub_1DD6DDF9C();
}

double sub_1DD7D4788()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  sub_1DD825B6C(*(v2 + 28));

  return result;
}

void sub_1DD7D47E4()
{
  v0 = sub_1DD826BD0();
  v1(v0);

  sub_1DD826EAC();
}

uint64_t InterpretedStatementResult.originTaskStatementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for InterpretedStatementResult(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D4880()
{
  v0 = sub_1DD826B18();
  v1(v0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t sub_1DD7D48CC()
{
  v3 = sub_1DD6ED7A4();
  v4(v3);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t InterpretedStatementResult.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for InterpretedStatementResult(v0);
  return sub_1DD6DDF9C();
}

uint64_t InterpretedStatementResult.outcome.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for InterpretedStatementResult(v0);
  sub_1DD6ED690();
  return sub_1DD6E5870();
}

uint64_t InterpretedStatementResult.outcome.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for InterpretedStatementResult(v0);
  sub_1DD824E88();
  sub_1DD826F84();
  return sub_1DD7FFEA0();
}

uint64_t InterpretedStatementResult.outcome.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for InterpretedStatementResult(v0);
  return sub_1DD6DDF9C();
}

double InterpretedStatementResult.init(actionEventId:resultStatementID:originProgramStatementID:toolId:outcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DD826528();
  v31 = v6;
  v30 = v7;
  v9 = v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v15 = *v14;
  v17 = *(v14 + 1);
  v16 = *(v14 + 2);
  sub_1DD874820();
  v18 = sub_1DD6FF79C();
  v22 = sub_1DD6DEA4C(v18, v19, v20, v21);
  v23 = type metadata accessor for InterpretedStatementResult(v22);
  v24 = (v9 + v23[8]);
  sub_1DD8258C4();
  sub_1DD807414();
  v25 = v9 + v23[5];
  *v25 = v11;
  *(v25 + 8) = v12;
  *(v25 + 16) = v13;
  v26 = v9 + v23[6];
  *v26 = v15;
  *(v26 + 8) = v17;
  *(v26 + 16) = v16;
  v27 = v9 + v23[7];
  *v27 = v15;
  *(v27 + 8) = v17;
  *(v27 + 16) = v16;
  *v24 = v30;
  v24[1] = v31;
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  sub_1DD8264FC();

  return result;
}

void InterpretedStatementResult.init(actionEventId:resultStatementID:originProgramStatementID:originTaskStatementID:toolId:outcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DD826D80();
  v33 = v6;
  v32 = v7;
  v9 = v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  v31 = *v18;
  v29 = *(v18 + 2);
  v30 = *(v18 + 1);
  sub_1DD874820();
  v19 = sub_1DD6FF79C();
  v23 = sub_1DD6DEA4C(v19, v20, v21, v22);
  v24 = type metadata accessor for InterpretedStatementResult(v23);
  v25 = (v9 + v24[8]);
  sub_1DD6F4498();
  sub_1DD807414();
  v26 = v9 + v24[5];
  *v26 = v11;
  *(v26 + 8) = v12;
  *(v26 + 16) = v13;
  v27 = v9 + v24[6];
  *v27 = v15;
  *(v27 + 8) = v16;
  *(v27 + 16) = v17;
  v28 = v9 + v24[7];
  *v28 = v31;
  *(v28 + 8) = v30;
  *(v28 + 16) = v29;
  *v25 = v32;
  v25[1] = v33;
  sub_1DD6E0B14();
  sub_1DD6E59B8();
  sub_1DD6F37CC();
}

void static InterpretedStatementResult.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  sub_1DD874820();
  sub_1DD6DDEAC();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v8 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE340();
  v11 = *(v10 + 56);
  sub_1DD6FF97C();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD6E26E4(v0);
  if (v12)
  {
    sub_1DD6E26E4(v0 + v11);
    if (v12)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
      goto LABEL_11;
    }

LABEL_9:
    sub_1DD824154(v0, &qword_1ECD10E30);
    goto LABEL_53;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v0 + v11);
  if (v12)
  {
    v13 = sub_1DD8258C4();
    v14(v13);
    goto LABEL_9;
  }

  v15 = sub_1DD8252A0();
  v16(v15);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v17);
  sub_1DD6E60FC();
  v18 = sub_1DD8750F0();
  v19 = *(v2 + 8);
  v20 = sub_1DD770D4C();
  v19(v20);
  v21 = sub_1DD8258C4();
  v19(v21);
  sub_1DD824154(v0, &qword_1ECD0E540);
  if ((v18 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_11:
  type metadata accessor for InterpretedStatementResult(0);
  sub_1DD825240();
  if (!v12)
  {
    goto LABEL_53;
  }

  v23 = v22;
  sub_1DD826E58();
  if (!v26)
  {
    if (v24)
    {
      goto LABEL_53;
    }

LABEL_22:
    sub_1DD825240();
    if (!v12)
    {
      goto LABEL_53;
    }

    sub_1DD826E58();
    if (v32)
    {
      if (!v30)
      {
        goto LABEL_53;
      }

      sub_1DD825B9C(v31);
      v35 = v12 && v33 == v34;
      if (!v35 && (sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v30)
    {
      goto LABEL_53;
    }

    sub_1DD825240();
    if (!v12)
    {
      goto LABEL_53;
    }

    sub_1DD826E58();
    if (v38)
    {
      if (!v36)
      {
        goto LABEL_53;
      }

      sub_1DD825B9C(v37);
      v41 = v12 && v39 == v40;
      if (!v41 && (sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v36)
    {
      goto LABEL_53;
    }

    sub_1DD6E8898();
    if (v44)
    {
      if (!v42)
      {
        goto LABEL_53;
      }

      sub_1DD824D88(v43);
      v47 = v12 && v45 == v46;
      if (!v47 && (sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v42)
    {
      goto LABEL_53;
    }

    sub_1DD826E64(*(v23 + 36));
    static StatementOutcome.== infix(_:_:)();
    goto LABEL_53;
  }

  if (v24)
  {
    sub_1DD825B9C(v25);
    v29 = v12 && v27 == v28;
    if (v29 || (sub_1DD875A30() & 1) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_53:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7D4EFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001DD8B6D40 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001DD8B6D60 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001DD8B6D80 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

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

unint64_t sub_1DD7D50F0(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x64496C6F6F74;
      break;
    case 5:
      result = 0x656D6F6374756FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D51C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D4EFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D51F0(uint64_t a1)
{
  v2 = sub_1DD803FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D522C(uint64_t a1)
{
  v2 = sub_1DD803FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InterpretedStatementResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD12598, &qword_1DD889EA0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v17 = sub_1DD803FC8();
  sub_1DD6E1808(&type metadata for InterpretedStatementResult.CodingKeys, v18, v17);
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v19);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v14)
  {
    type metadata accessor for InterpretedStatementResult(0);
    sub_1DD8257A8();
    sub_1DD826FFC();
    sub_1DD70396C();

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();

    sub_1DD6FE2B4(v15[6]);

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();

    sub_1DD6FE2B4(v15[7]);

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();

    sub_1DD82595C(v15[8]);
    sub_1DD824BDC();
    sub_1DD875920();
    v20 = sub_1DD6FF738(5);
    type metadata accessor for StatementOutcome(v20);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v21);
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v22 = sub_1DD6EFFB4();
  v23(v22);
  sub_1DD825790();
  sub_1DD826CF4();
}

void InterpretedStatementResult.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  type metadata accessor for StatementOutcome(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E535C();
  v5 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E7258();
  sub_1DD710A9C(&qword_1ECD125A8, &qword_1DD889EA8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v21 = type metadata accessor for InterpretedStatementResult(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD824734();
  sub_1DD874820();
  sub_1DD825300();
  sub_1DD6E5E68(v9, v10, v11, v12);
  v13 = sub_1DD826F54();
  sub_1DD824D14(v13);
  sub_1DD803FC8();
  sub_1DD826F60();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1874();
    sub_1DD6E1EC8(v22);
    sub_1DD824154(v1, &qword_1ECD0E540);
    if (v3)
    {
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v14);
    sub_1DD825A9C();
    sub_1DD826348();
    sub_1DD875860();
    sub_1DD8256EC();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD8257E0();
    sub_1DD8758D0();
    sub_1DD700E1C(v23);
    sub_1DD6EFF88();
    sub_1DD6E40F8();
    sub_1DD8257E0();
    sub_1DD8758D0();
    sub_1DD700E1C(v23);
    sub_1DD7928CC();
    sub_1DD6E40F8();
    sub_1DD8257E0();
    sub_1DD8758D0();
    sub_1DD700E1C(v23);
    sub_1DD826730(4);
    v15 = sub_1DD875820();
    v16 = (v1 + *(v21 + 32));
    *v16 = v15;
    v16[1] = v17;
    sub_1DD6DE08C();
    sub_1DD6E1E84(v18);
    sub_1DD825A9C();
    sub_1DD8257E0();
    sub_1DD8758D0();
    v19 = sub_1DD825B2C();
    v20(v19);
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    sub_1DD700948();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v22);
    sub_1DD6E5ABC();
  }

  sub_1DD826464();
  sub_1DD6E0C78();
}

void static ActionSuccess.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v6 = v5;
  v180 = type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD702A64();
  v8 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824948(v10, v175);
  v11 = sub_1DD710A9C(&qword_1ECD125B8, &qword_1DD889EB8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE340();
  v13 = type metadata accessor for ActionSuccess.UndoContext(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD8247F4();
  v15 = sub_1DD710A9C(&qword_1ECD125C0, &qword_1DD889EC0);
  sub_1DD6DEA10(v15);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD82660C();
  v17 = sub_1DD710A9C(&qword_1ECD125C8, &qword_1DD889EC8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6F0A58();
  sub_1DD6E60FC();
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v176 = v1;
  v19 = type metadata accessor for ActionSuccess(0);
  v182 = v4;
  v20 = v6;
  v21 = *(v17 + 48);
  v177 = v19;
  v178 = v20;
  sub_1DD8257D4();
  sub_1DD700E60();
  v22 = v4;
  sub_1DD827158();
  sub_1DD6DE1FC(v2, 1, v13);
  if (!v23)
  {
    sub_1DD700E60();
    sub_1DD6DE1FC(v2 + v21, 1, v13);
    if (!v23)
    {
      sub_1DD6E59B8();
      sub_1DD703A24();
      v25 = _s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0();
      if (v25)
      {
        sub_1DD826E04(*(v13 + 20));
        v28 = v23 && v26 == v27;
        if (v28 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD826E04(*(v13 + 24));
          v31 = v23 && v29 == v30;
          if (v31 || (sub_1DD875A30() & 1) != 0)
          {
            sub_1DD8261FC();
            sub_1DD6E5ABC();
            sub_1DD6ED118();
            sub_1DD6E5ABC();
            goto LABEL_23;
          }
        }
      }

      sub_1DD8261FC();
      sub_1DD6E5ABC();
      sub_1DD6ED118();
      sub_1DD6E5ABC();
      v24 = &qword_1ECD125C0;
LABEL_30:
      v35 = v2;
LABEL_31:
      sub_1DD824154(v35, v24);
      goto LABEL_32;
    }

    sub_1DD6E5ABC();
LABEL_10:
    v24 = &qword_1ECD125C8;
    goto LABEL_30;
  }

  sub_1DD6DE1FC(v2 + v21, 1, v13);
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_23:
  sub_1DD824154(v2, &qword_1ECD125C0);
  v33 = v177;
  v32 = v178;
  if (*(v178 + *(v177 + 24)) != *(v4 + *(v177 + 24)))
  {
    goto LABEL_32;
  }

  v34 = *(v11 + 48);
  sub_1DD82557C();
  sub_1DD700E60();
  sub_1DD82557C();
  sub_1DD700E60();
  sub_1DD6DE1FC(v0, 1, v180);
  if (v23)
  {
    sub_1DD6DE1FC(v0 + v34, 1, v180);
    if (v23)
    {
      sub_1DD824154(v0, &qword_1ECD125B0);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  sub_1DD700E60();
  sub_1DD6DE1FC(v0 + v34, 1, v180);
  if (v36)
  {
    sub_1DD8259F8();
    sub_1DD6E5ABC();
LABEL_36:
    v24 = &qword_1ECD125B8;
    v35 = v0;
    goto LABEL_31;
  }

  sub_1DD6E3A2C();
  sub_1DD6E59B8();
  v37 = sub_1DD6E0C60();
  static ActionSuccess.FollowUpAction.ExecutableAction.== infix(_:_:)(v37, v38, v39, v40, v41, v42, v43, v44, v176, v177, v178, v179, v180, v4, v183, v184, v185, v186);
  v46 = v45;
  sub_1DD6E5ABC();
  sub_1DD770D4C();
  sub_1DD6E5ABC();
  sub_1DD824154(v0, &qword_1ECD125B0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_38:
  if (*(v32 + v33[8]) != *(v4 + v33[8]))
  {
    goto LABEL_32;
  }

  v47 = v33[9];
  v48 = *(v4 + v47 + 8);
  if (*(v32 + v47 + 8))
  {
    if (!v48)
    {
      goto LABEL_32;
    }

    sub_1DD824D88(v32 + v47);
    v51 = v23 && v49 == v50;
    if (!v51 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v48)
  {
    goto LABEL_32;
  }

  v52 = v33[10];
  v53 = v32 + v52;
  v55 = *(v32 + v52);
  v54 = *(v32 + v52 + 8);
  v57 = *(v32 + v52 + 16);
  v56 = *(v53 + 24);
  v58 = *(v53 + 32);
  v59 = (v22 + v52);
  v60 = *v59;
  v61 = v59[1];
  v62 = v59[2];
  v63 = v59[3];
  v64 = *(v59 + 32);
  if (v57 == 1)
  {
    v65 = sub_1DD6E0F70();
    sub_1DD703958(v65, v66, 1);
    if (v62 == 1)
    {
      v67 = sub_1DD825B90();
      sub_1DD703958(v67, v68, 1);
      v69 = sub_1DD6E0F70();
      sub_1DD70148C(v69, v70, 1);
      goto LABEL_56;
    }

    sub_1DD825B90();
    sub_1DD826C30();
    sub_1DD703958(v79, v80, v81);
    goto LABEL_54;
  }

  v188[0] = v55;
  v188[1] = v54;
  v188[2] = v57;
  v188[3] = v56;
  v189 = v58;
  if (v62 == 1)
  {
    v71 = sub_1DD6F3544();
    sub_1DD703958(v71, v72, v73);
    v74 = sub_1DD825B90();
    sub_1DD703958(v74, v75, 1);
    v76 = sub_1DD6F3544();
    sub_1DD703958(v76, v77, v78);

LABEL_54:
    v82 = sub_1DD6F3544();
    sub_1DD70148C(v82, v83, v84);
    sub_1DD825B90();
    sub_1DD826C30();
    sub_1DD70148C(v85, v86, v87);
    goto LABEL_32;
  }

  LODWORD(v183) = v60;
  v184 = v61;
  v185 = v62;
  v186 = v63;
  v187 = v64 & 1;
  v181 = static AncestorID.== infix(_:_:)(v188, &v183);
  v88 = sub_1DD6F3544();
  sub_1DD703958(v88, v89, v90);
  sub_1DD825B90();
  sub_1DD826C30();
  sub_1DD703958(v91, v92, v93);
  v94 = sub_1DD6F3544();
  sub_1DD703958(v94, v95, v96);

  v97 = sub_1DD6F3544();
  sub_1DD70148C(v97, v98, v99);
  if (v181)
  {
LABEL_56:
    v100 = *(v177 + 44);
    v102 = *(v178 + v100);
    v101 = *(v178 + v100 + 8);
    v103 = *(v178 + v100 + 16);
    v104 = (v182 + v100);
    v105 = v104[2];
    if (v103 == 1)
    {
      v106 = sub_1DD6E87AC();
      sub_1DD703958(v106, v107, 1);
      if (v105 == 1)
      {
        v108 = sub_1DD8258AC();
        v110 = sub_1DD700DE0(v108, v109, 1);
        sub_1DD70148C(v110, v111, 1);
        goto LABEL_32;
      }

      v120 = sub_1DD701470();
      sub_1DD703958(v120, v121, v122);
      goto LABEL_62;
    }

    if (v105 == 1)
    {
      v112 = sub_1DD6F8CC0();
      sub_1DD703958(v112, v113, v114);
      v115 = sub_1DD8258AC();
      sub_1DD703958(v115, v116, 1);
      v117 = sub_1DD6F8CC0();
      sub_1DD703958(v117, v118, v119);

LABEL_62:
      v123 = sub_1DD6F8CC0();
      sub_1DD70148C(v123, v124, v125);
      v126 = sub_1DD701470();
LABEL_75:
      sub_1DD70148C(v126, v127, v128);
      goto LABEL_32;
    }

    if (v102 == *v104)
    {
      if (!v103)
      {
        v155 = sub_1DD6E87AC();
        sub_1DD703958(v155, v156, 0);
        v146 = 0;
        if (!v105)
        {
          v157 = sub_1DD8258AC();
          v159 = sub_1DD700DE0(v157, v158, 0);
          sub_1DD703958(v159, v160, 0);
          v161 = sub_1DD8258AC();
          v163 = 0;
          goto LABEL_79;
        }

LABEL_73:
        v147 = sub_1DD701470();
        v150 = sub_1DD700DE0(v147, v148, v149);
        sub_1DD703958(v150, v151, v146);
        v152 = sub_1DD701470();
        sub_1DD70148C(v152, v153, v154);
        goto LABEL_74;
      }

      if (v105)
      {
        if (v101 != v104[1] || v103 != v105)
        {
          sub_1DD6E65D0();
          v130 = sub_1DD875A30();
          v131 = sub_1DD6F8CC0();
          sub_1DD703958(v131, v132, v133);
          v134 = sub_1DD701470();
          sub_1DD703958(v134, v135, v136);
          v137 = sub_1DD6F8CC0();
          sub_1DD703958(v137, v138, v139);
          v140 = sub_1DD701470();
          sub_1DD70148C(v140, v141, v142);
          if (v130)
          {
            goto LABEL_80;
          }

LABEL_74:

          v126 = sub_1DD6F8CC0();
          goto LABEL_75;
        }

        v164 = sub_1DD6F8CC0();
        sub_1DD703958(v164, v165, v166);
        v167 = sub_1DD6DDEFC();
        sub_1DD703958(v167, v168, v103);
        v169 = sub_1DD6F8CC0();
        sub_1DD703958(v169, v170, v171);
        v161 = sub_1DD6DDEFC();
        v163 = v103;
LABEL_79:
        sub_1DD70148C(v161, v162, v163);
LABEL_80:

        v172 = sub_1DD6F8CC0();
        sub_1DD70148C(v172, v173, v174);
        goto LABEL_32;
      }
    }

    v143 = sub_1DD6F8CC0();
    sub_1DD703958(v143, v144, v145);
    v146 = v103;
    goto LABEL_73;
  }

LABEL_32:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7D61E4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  v6 = sub_1DD6DDEFC();

  return v7(v6);
}

BOOL static ParameterNotAllowed.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E1FC0(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ParameterNotAllowed(0);
  sub_1DD6F4D70(v4);
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD826CC0();
  return v3;
}

uint64_t static ParameterCandidatesNotFound.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E1FC0(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ParameterCandidatesNotFound(0);
  sub_1DD6F4D70(v4);

  return _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
}

BOOL static ActionRequirement.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v93 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = *(a2 + 40);
  v13 = v12 & 0x30;
  switch((v6 >> 4) & 3)
  {
    case 1u:
      if (v13 != 16)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    case 2u:
      if (v13 != 32)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_1DD826348();
      sub_1DD8003E4(v30, v31, v32, v33, v34, v35);
      v36 = sub_1DD824FC4();
      sub_1DD8003E4(v36, v37, v38, v39, v11, v12);
      v29 = v8 == v93;
      break;
    case 3u:
      v20 = v13 == 48 && (v7 | v8 | v10 | v9 | v11) == 0;
      if (!v20 || v12 != 48)
      {
        goto LABEL_15;
      }

      sub_1DD826348();
      sub_1DD8003E4(v21, v22, v23, v24, v25, v26);
      v27 = sub_1DD6F09E0();
      sub_1DD8003E4(v27, v28, 0, v9, v11, 0x30u);
      v29 = 1;
      break;
    default:
      if ((v12 & 0x30) != 0)
      {
        sub_1DD826348();
        sub_1DD80402C(v14, v15, v16, v17, v18, v19);
LABEL_15:
        v92 = v9;
        v40 = sub_1DD824FC4();
        v42 = v41;
        v44 = v43;
        sub_1DD80401C(v40, v45, v46, v47, v11, v12);
        sub_1DD826348();
        sub_1DD8003E4(v48, v49, v50, v51, v42, v44);
        v52 = sub_1DD6DEA04();
        sub_1DD8003E4(v52, v53, v10, v92, v11, v12);
        v29 = 0;
      }

      else
      {
        v96[0] = *a1;
        v96[1] = v2;
        v96[2] = v3;
        v96[3] = v4;
        v96[4] = v5;
        v97 = v6;
        v94[0] = v8;
        v94[1] = v7;
        v94[2] = v10;
        v94[3] = v9;
        v94[4] = v11;
        v95 = v12;
        v55 = sub_1DD824FC4();
        v91 = v56;
        v90 = v57;
        sub_1DD80401C(v55, v58, v59, v60, v11, v12);
        sub_1DD6F4498();
        sub_1DD826348();
        sub_1DD80401C(v61, v62, v63, v64, v91, v90);
        sub_1DD6F4498();
        sub_1DD826348();
        sub_1DD80401C(v65, v66, v67, v68, v91, v90);
        v69 = sub_1DD824FC4();
        sub_1DD80401C(v69, v70, v71, v72, v11, v12);
        v73 = v11;
        v29 = static SystemRequirement.== infix(_:_:)(v96, v94);
        sub_1DD826348();
        sub_1DD8003E4(v74, v75, v76, v77, v91, v90);
        v78 = sub_1DD824FC4();
        sub_1DD8003E4(v78, v79, v80, v81, v73, v12);
        v82 = sub_1DD824FC4();
        sub_1DD8003E4(v82, v83, v84, v85, v73, v12);
        sub_1DD826348();
        sub_1DD8003E4(v86, v87, v88, v89, v91, v90);
      }

      break;
  }

  return v29;
}

uint64_t static ActionFailure.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v115 = *(a1 + 48);
  v117 = *(a1 + 56);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v113 = a2[6];
  v111 = a2[7];
  v107 = *(a1 + 64);
  v109 = a2[8];
  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  v120 = *(a1 + 8);
  v121 = *a1;
  v125 = *(a1 + 32);
  LOBYTE(v126) = v9;
  LOBYTE(v123) = v10;
  sub_1DD702AB4();
  sub_1DD804044(v11, v12, v13, v14, v15, v9);
  sub_1DD7029A8();
  sub_1DD6FF6A4();
  sub_1DD804044(v16, v17, v18, v19, v8, v10);
  static ActionFailure.Failure.== infix(_:_:)(&v124, &v122, v20, v21, v22, v23, v24, v25, v107, v109, v111, v113, v115, v117, v125, v120, v121, v4, v5, v6, v7, v8, v123, v121, v120, v2, v3, v125, v126, v127, v128, v129, v130, v131);
  v27 = v26;
  sub_1DD7029A8();
  sub_1DD6FF6A4();
  sub_1DD8040A4(v28, v29, v30, v31, v8, v10);
  sub_1DD702AB4();
  sub_1DD8040A4(v32, v33, v34, v35, v119, v9);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  if (v108 != 1)
  {
    if (v110 == 1)
    {
      v43 = sub_1DD6F8CC0();
      sub_1DD703958(v43, v44, v45);
      v46 = sub_1DD6EFF74();
      sub_1DD703958(v46, v47, 1);
      v48 = sub_1DD6F8CC0();
      sub_1DD703958(v48, v49, v50);

LABEL_8:
      v54 = sub_1DD6F8CC0();
      sub_1DD70148C(v54, v55, v56);
      v57 = sub_1DD6E6218();
LABEL_21:
      sub_1DD70148C(v57, v58, v59);
      return 0;
    }

    if (v116 == v114)
    {
      if (!v108)
      {
        v87 = sub_1DD6E87AC();
        sub_1DD703958(v87, v88, 0);
        v77 = 0;
        if (!v110)
        {
          v89 = sub_1DD6EFF74();
          v91 = sub_1DD700DE0(v89, v90, 0);
          sub_1DD703958(v91, v92, 0);
          v93 = sub_1DD6EFF74();
          v95 = 0;
          goto LABEL_27;
        }

LABEL_19:
        v78 = sub_1DD6E6218();
        v81 = sub_1DD700DE0(v78, v79, v80);
        sub_1DD703958(v81, v82, v77);
        v83 = sub_1DD6E6218();
        sub_1DD70148C(v83, v84, v85);
        goto LABEL_20;
      }

      if (v110)
      {
        if (v118 != v112 || v108 != v110)
        {
          sub_1DD705564();
          sub_1DD827050();
          v61 = sub_1DD875A30();
          v62 = sub_1DD6F8CC0();
          sub_1DD703958(v62, v63, v64);
          v65 = sub_1DD6E6218();
          sub_1DD703958(v65, v66, v67);
          v68 = sub_1DD6F8CC0();
          sub_1DD703958(v68, v69, v70);
          v71 = sub_1DD6E6218();
          sub_1DD70148C(v71, v72, v73);
          if (v61)
          {
            goto LABEL_28;
          }

LABEL_20:

          v57 = sub_1DD6F8CC0();
          goto LABEL_21;
        }

        v96 = sub_1DD6F8CC0();
        sub_1DD703958(v96, v97, v98);
        v99 = sub_1DD6F4498();
        sub_1DD703958(v99, v100, v108);
        v101 = sub_1DD6F8CC0();
        sub_1DD703958(v101, v102, v103);
        v93 = sub_1DD6F4498();
        v95 = v108;
LABEL_27:
        sub_1DD70148C(v93, v94, v95);
LABEL_28:

        v104 = sub_1DD6F8CC0();
        sub_1DD70148C(v104, v105, v106);
        return 1;
      }
    }

    v74 = sub_1DD6F8CC0();
    sub_1DD703958(v74, v75, v76);
    v77 = v108;
    goto LABEL_19;
  }

  v36 = sub_1DD6E87AC();
  sub_1DD703958(v36, v37, 1);
  if (v110 != 1)
  {
    v51 = sub_1DD6E6218();
    sub_1DD703958(v51, v52, v53);
    goto LABEL_8;
  }

  v38 = 1;
  v39 = sub_1DD6EFF74();
  v41 = sub_1DD700DE0(v39, v40, 1);
  sub_1DD70148C(v41, v42, 1);
  return v38;
}

uint64_t sub_1DD7D68DC(uint64_t a1)
{
  v2 = sub_1DD80459C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6918(uint64_t a1)
{
  v2 = sub_1DD80459C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6954(uint64_t a1)
{
  v2 = sub_1DD8042A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6990(uint64_t a1)
{
  v2 = sub_1DD8042A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D69CC(uint64_t a1)
{
  v2 = sub_1DD804104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6A08(uint64_t a1)
{
  v2 = sub_1DD804104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6A44(uint64_t a1)
{
  v2 = sub_1DD804158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6A80(uint64_t a1)
{
  v2 = sub_1DD804158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6ABC(uint64_t a1)
{
  v2 = sub_1DD804350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6AF8(uint64_t a1)
{
  v2 = sub_1DD804350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6B34(uint64_t a1)
{
  v2 = sub_1DD80444C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6B70(uint64_t a1)
{
  v2 = sub_1DD80444C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6BAC(uint64_t a1)
{
  v2 = sub_1DD8043F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6BE8(uint64_t a1)
{
  v2 = sub_1DD8043F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6C24(uint64_t a1)
{
  v2 = sub_1DD8044A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6C60(uint64_t a1)
{
  v2 = sub_1DD8044A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6C9C(uint64_t a1)
{
  v2 = sub_1DD8043A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6CD8(uint64_t a1)
{
  v2 = sub_1DD8043A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6D14(uint64_t a1)
{
  v2 = sub_1DD8045F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6D50(uint64_t a1)
{
  v2 = sub_1DD8045F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6D8C(uint64_t a1)
{
  v2 = sub_1DD804644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6DC8(uint64_t a1)
{
  v2 = sub_1DD804644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6E04(uint64_t a1)
{
  v2 = sub_1DD8044F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6E40(uint64_t a1)
{
  v2 = sub_1DD8044F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D6E7C(uint64_t a1)
{
  v2 = sub_1DD804200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D6EB8(uint64_t a1)
{
  v2 = sub_1DD804200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD8272E8();
  v25 = sub_1DD710A9C(&qword_1ECD125D0, &qword_1DD889ED0);
  sub_1DD6DF3FC(v25, &a16);
  v176[1] = v26;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD8247DC(v28, v167);
  v29 = sub_1DD710A9C(&qword_1ECD125D8, &qword_1DD889ED8);
  sub_1DD6DF3FC(v29, &a13);
  v175[2] = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824AFC(v32, v168);
  v33 = sub_1DD710A9C(&qword_1ECD125E0, &qword_1DD889EE0);
  sub_1DD6DF3FC(v33, &a11);
  v175[0] = v34;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD825454(v36, v169);
  v37 = sub_1DD710A9C(&qword_1ECD125E8, &qword_1DD889EE8);
  sub_1DD6DF3FC(v37, &v184[8]);
  v174[0] = v38;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E0C6C();
  v41 = sub_1DD6ED230(v40);
  v42 = type metadata accessor for ParameterCandidatesNotFound(v41);
  v43 = sub_1DD6DEDE0(v42, &v184[4]);
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v44);
  v45 = sub_1DD710A9C(&qword_1ECD125F0, &qword_1DD889EF0);
  sub_1DD6DF3FC(v45, &v184[3]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6E0C6C();
  v48 = sub_1DD6ED230(v47);
  v49 = type metadata accessor for ParameterNotAllowed(v48);
  v50 = sub_1DD6DEDE0(v49, &v182[64]);
  MEMORY[0x1EEE9AC00](v50);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v51);
  v52 = sub_1DD710A9C(&qword_1ECD125F8, &qword_1DD889EF8);
  sub_1DD6DF3FC(v52, &v183);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD8253E0(v54, v170);
  v55 = sub_1DD710A9C(&qword_1ECD12600, &qword_1DD889F00);
  sub_1DD6DF3FC(v55, &v182[40]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1DD6E0C6C();
  v58 = sub_1DD6ED230(v57);
  v59 = type metadata accessor for ParameterConfirmation(v58);
  v60 = sub_1DD6DEDE0(v59, &v182[8]);
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v61);
  v62 = sub_1DD710A9C(&qword_1ECD12608, &qword_1DD889F08);
  sub_1DD6DF3FC(v62, v182);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD6E0C6C();
  v65 = sub_1DD6ED230(v64);
  v66 = type metadata accessor for ParameterNeedsValue(v65);
  v67 = sub_1DD6DEDE0(v66, &v178);
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v68);
  v69 = sub_1DD710A9C(&qword_1ECD12610, &qword_1DD889F10);
  sub_1DD6DF3FC(v69, &v177);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v70);
  sub_1DD8253C8(v71, v171);
  v72 = sub_1DD710A9C(&qword_1ECD12618, &qword_1DD889F18);
  sub_1DD6DF3FC(v72, v176);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD8254B0(v74, v172);
  v75 = sub_1DD710A9C(&qword_1ECD12620, &qword_1DD889F20);
  sub_1DD6DF3FC(v75, v175);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1DD6E0C6C();
  v78 = sub_1DD6ED230(v77);
  v79 = type metadata accessor for SnippetStream(v78);
  v80 = sub_1DD6DEDE0(v79, v174);
  MEMORY[0x1EEE9AC00](v80);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v81);
  v82 = sub_1DD710A9C(&qword_1ECD12628, &qword_1DD889F28);
  sub_1DD6DF3FC(v82, &v173);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6E17C8();
  v84 = type metadata accessor for ActionSuccess(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v85);
  sub_1DD6E6200();
  type metadata accessor for ActionOutcome(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v86);
  sub_1DD8247F4();
  sub_1DD710A9C(&qword_1ECD12630, &qword_1DD889F30);
  sub_1DD6DDEAC();
  v180 = v87;
  v181 = v88;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v89);
  sub_1DD6DDFE4();
  sub_1DD824D14(v20);
  sub_1DD804104();
  v179 = v21;
  sub_1DD77E6F4();
  sub_1DD8268F0();
  sub_1DD875BB0();
  sub_1DD6E2208();
  sub_1DD827328();
  sub_1DD6E5870();
  sub_1DD825998();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E5B50();
      sub_1DD826920();
      sub_1DD8045F0();
      sub_1DD6E1828(&type metadata for ActionOutcome.SnippetStreamCodingKeys, v184);
      sub_1DD6E70E4();
      sub_1DD6E1E84(v145);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v146 = sub_1DD6FC4B0();
      v147(v146);
      goto LABEL_15;
    case 2u:
      sub_1DD826790();
      sub_1DD80459C();
      sub_1DD6E1828(&type metadata for ActionOutcome.ActionConfirmationCodingKeys, v182);
      sub_1DD826D08();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v123 = sub_1DD6FC4B0();
      v124(v123);
      v125 = sub_1DD6DE58C();
      v126(v125);
      sub_1DD80043C(v184);
      goto LABEL_17;
    case 3u:
      v128 = *v22;
      v127 = v22[1];
      v129 = v22[2];
      sub_1DD826AA0();
      sub_1DD8044F4();
      sub_1DD825CA4();
      sub_1DD6FF7A8();
      sub_1DD82708C(v130, v131, v132, v133);
      v184[0] = v128;
      v184[1] = v127;
      v184[2] = v129;
      sub_1DD804548();
      sub_1DD6E374C();
      sub_1DD826A40(v134, v135, v136, v137);
      v138 = sub_1DD8249F4();
      v139(v138);
      v140 = sub_1DD824838();
      v141(v140);

      goto LABEL_13;
    case 4u:
      sub_1DD6E5B50();
      sub_1DD827560();
      sub_1DD8044A0();
      sub_1DD6E1828(&type metadata for ActionOutcome.ParameterNeedsValueCodingKeys, v184);
      sub_1DD6DEC60();
      sub_1DD6E1E84(v106);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v107 = sub_1DD6FC4B0();
      v108(v107);
      goto LABEL_15;
    case 5u:
      sub_1DD6E5B50();
      sub_1DD827554();
      sub_1DD80444C();
      sub_1DD6E1828(&type metadata for ActionOutcome.ParameterConfirmationCodingKeys, v184);
      sub_1DD6E0FE0();
      sub_1DD6E1E84(v148);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v149 = sub_1DD6FC4B0();
      v150(v149);
      goto LABEL_15;
    case 6u:
      sub_1DD6FF108();
      sub_1DD8043F8();
      sub_1DD6E1828(&type metadata for ActionOutcome.ParameterDisambiguationCodingKeys, v182);
      sub_1DD827798();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v151 = sub_1DD6FC4B0();
      v152(v151);
      v153 = sub_1DD6DE58C();
      v154(v153);
      sub_1DD80040C(v184);
      goto LABEL_17;
    case 7u:
      sub_1DD6E5B50();
      sub_1DD700930();
      sub_1DD8043A4();
      sub_1DD6E1828(&type metadata for ActionOutcome.ParameterNotAllowedCodingKeys, v184);
      sub_1DD824904();
      sub_1DD6E1E84(v142);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v143 = sub_1DD6FC4B0();
      v144(v143);
      goto LABEL_15;
    case 8u:
      sub_1DD6E5B50();
      sub_1DD827348();
      sub_1DD804350();
      sub_1DD6E1828(&type metadata for ActionOutcome.ParameterCandidatesNotFoundCodingKeys, v184);
      sub_1DD8248EC();
      sub_1DD6E1E84(v164);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v165 = sub_1DD6FC4B0();
      v166(v165);
LABEL_15:
      sub_1DD6E5ABC();
      v100 = sub_1DD6DE58C();
      goto LABEL_16;
    case 9u:
      sub_1DD8267B4();
      sub_1DD8042A8();
      sub_1DD8256D4();
      sub_1DD6E9938();
      sub_1DD827830(v109, v110, v111, v112);
      sub_1DD8266A8();
      v113 = v175[1];
      sub_1DD8256BC();
      sub_1DD8759D0();
      v114 = sub_1DD702E84();
      v115(v114, v113);
      v116 = sub_1DD6E6378();
      v117(v116);
      sub_1DD827328();
      sub_1DD82731C();
      sub_1DD8267F0();
      sub_1DD8003E4(v118, v119, v120, v121, v122, v84);
      goto LABEL_17;
    case 0xAu:
      v155 = *v22;
      sub_1DD827354();
      sub_1DD804200();
      sub_1DD8272FC();
      sub_1DD6F9BEC();
      sub_1DD6F3128();
      sub_1DD826AAC(v156, v157, v158, v159);
      v184[0] = v155;
      sub_1DD804254();
      sub_1DD8255D0();
      sub_1DD8759D0();
      v160 = sub_1DD6DF174();
      v161(v160);
      v162 = sub_1DD824A60();
      v163(v162);
LABEL_13:

      goto LABEL_17;
    case 0xBu:
      memcpy(v184, v22, sizeof(v184));
      v182[0] = 11;
      sub_1DD804158();
      sub_1DD6E1828(&type metadata for ActionOutcome.FailureCodingKeys, v182);
      memcpy(v182, v184, sizeof(v182));
      sub_1DD8041AC();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v102 = sub_1DD6FC4B0();
      v103(v102);
      v104 = sub_1DD6DE58C();
      v105(v104);
      sub_1DD8003B4(v184);
      goto LABEL_17;
    default:
      sub_1DD6E6378();
      sub_1DD6E59B8();
      LOBYTE(v184[0]) = 0;
      sub_1DD804644();
      sub_1DD6F3128();
      sub_1DD826AAC(v90, v91, v92, v93);
      sub_1DD6E41D4();
      sub_1DD6E1E84(v94);
      sub_1DD6FAC4C();
      sub_1DD827280(v95, v96, v97, v84);
      sub_1DD6DEDD4();
      v98 = sub_1DD825C04();
      v99(v98);
      sub_1DD6FADF0();
      sub_1DD6E5ABC();
      v100 = sub_1DD824A60();
LABEL_16:
      v101(v100);
LABEL_17:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

void ActionOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v26;
  a20 = v27;
  sub_1DD7038A0();
  v187 = v28;
  v29 = sub_1DD710A9C(&qword_1ECD126D8, &qword_1DD889F38);
  sub_1DD6DF3FC(v29, &a11);
  v184 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD825428(v32, v173);
  v33 = sub_1DD710A9C(&qword_1ECD126E0, &qword_1DD889F40);
  sub_1DD6DF3FC(v33, &a10);
  v186 = v34;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD824B94(v36, v174);
  v37 = sub_1DD710A9C(&qword_1ECD126E8, &qword_1DD889F48);
  sub_1DD6DF3FC(v37, &v197);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6E0C6C();
  sub_1DD826F24(v39);
  v40 = sub_1DD710A9C(&qword_1ECD126F0, &qword_1DD889F50);
  sub_1DD6DF3FC(v40, &v196);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD825410(v42, v175);
  v43 = sub_1DD710A9C(&qword_1ECD126F8, &qword_1DD889F58);
  sub_1DD6DF3FC(v43, &v195[24]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD8249DC(v45, v176);
  v46 = sub_1DD710A9C(&qword_1ECD12700, &qword_1DD889F60);
  sub_1DD6DF3FC(v46, &v195[16]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD825480(v48, v177);
  v49 = sub_1DD710A9C(&qword_1ECD12708, &qword_1DD889F68);
  sub_1DD6DF3FC(v49, &v195[8]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1DD705DF0(v51, v178);
  v52 = sub_1DD710A9C(&qword_1ECD12710, &qword_1DD889F70);
  sub_1DD6DF3FC(v52, &v194.n128_i64[1]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD824934(v54, v179);
  v55 = sub_1DD710A9C(&qword_1ECD12718, &qword_1DD889F78);
  sub_1DD6DF3FC(v55, &v194);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1DD824CB0(v57, v180);
  v58 = sub_1DD710A9C(&qword_1ECD12720, &qword_1DD889F80);
  sub_1DD6DF3FC(v58, &v193.n128_i64[1]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD8247DC(v60, v181);
  v61 = sub_1DD710A9C(&qword_1ECD12728, &qword_1DD889F88);
  sub_1DD6DF3FC(v61, &v193);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD824FB0(v63);
  v64 = sub_1DD710A9C(&qword_1ECD12730, &qword_1DD889F90);
  sub_1DD6DF3FC(v64, &v191);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1DD825498(v66, v182);
  v191 = sub_1DD710A9C(&qword_1ECD12738, &qword_1DD889F98);
  sub_1DD6DDEAC();
  v188 = v67;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v68);
  v69 = sub_1DD700BA4();
  v190 = type metadata accessor for ActionOutcome(v69);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v70);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v71);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v72);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v75);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v76);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v77);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v78);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD825884();
  MEMORY[0x1EEE9AC00](v80);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v81);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v82);
  sub_1DD6DEBEC();
  v83 = v20[4];
  v192 = v20;
  sub_1DD70066C();
  sub_1DD804104();
  v189 = v24;
  sub_1DD6EF0F4();
  sub_1DD8270F4(v84, v85, v86);
  if (!v21)
  {
    sub_1DD8262EC();
    sub_1DD6ED750();
    sub_1DD826908();
    if (!v87)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v94 == v95)
      {
        __break(1u);
        return;
      }

      v96 = *(v93 + v92);
      sub_1DD6E988C(v88, v89, v90, v91, v92);
      sub_1DD6ED830();
      sub_1DD8276EC();
      v98 = v97;
      swift_unknownObjectRelease();
      if (v83 == v98 >> 1)
      {
        switch(v96)
        {
          case 1:
            sub_1DD826920();
            sub_1DD8045F0();
            sub_1DD825CBC();
            sub_1DD82499C();
            sub_1DD875800();
            type metadata accessor for SnippetStream(0);
            sub_1DD825D04();
            sub_1DD6E70E4();
            sub_1DD6E1E84(v121);
            v122 = sub_1DD6F4500();
            sub_1DD826D30(v122, v123, v124, v125, v126);
            sub_1DD825820();
            v152 = sub_1DD6FFA00();
            v153(v152, v25);
            v154 = sub_1DD824838();
            v155(v154);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_38;
          case 2:
            sub_1DD826FF0();
            sub_1DD80459C();
            sub_1DD825CBC();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD803354();
            sub_1DD6E9938();
            sub_1DD827860(v115, v116, v117, v118, v119);
            sub_1DD8248A0();
            swift_unknownObjectRelease();
            v140 = sub_1DD6E6378();
            v141(v140);
            v142 = sub_1DD825290();
            v143(v142);
            sub_1DD826888(&v184, v193, v194);
            MEMORY[0x20] = *v195;
            MEMORY[0x2A] = *&v195[10];
            sub_1DD825C04();
            goto LABEL_34;
          case 3:
            sub_1DD826AA0();
            sub_1DD8044F4();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD804794();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v144 = sub_1DD6FAC78();
            v145(v144);
            v146 = sub_1DD8252F0();
            v147(v146);
            sub_1DD6FE2CC(v194.n128_u64[0], v193);
            goto LABEL_34;
          case 4:
            sub_1DD827560();
            sub_1DD8044A0();
            v23 = v191;
            sub_1DD8257E0();
            sub_1DD875800();
            type metadata accessor for ParameterNeedsValue(0);
            sub_1DD825D04();
            sub_1DD6DEC60();
            sub_1DD6E1E84(v128);
            sub_1DD6EFF94();
            sub_1DD825734();
            sub_1DD8758D0();
            if (v96)
            {
              swift_unknownObjectRelease();
              v100 = sub_1DD824890();
              v102 = v186;
              goto LABEL_28;
            }

            sub_1DD825820();
            v132 = sub_1DD824890();
            v133(v132, v186);
            v134 = sub_1DD825704();
            v135(v134, v23);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
LABEL_35:
            sub_1DD827250();
            v168 = v192;
            goto LABEL_39;
          case 5:
            sub_1DD827554();
            sub_1DD80444C();
            sub_1DD825698();
            sub_1DD8247C8();
            sub_1DD875800();
            type metadata accessor for ParameterConfirmation(0);
            sub_1DD825D04();
            sub_1DD6E0FE0();
            sub_1DD6E1E84(v127);
            sub_1DD702944();
            sub_1DD824AC4();
            sub_1DD6DEB0C();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v156 = sub_1DD6FAC78();
            v157(v156);
            v158 = sub_1DD825A90();
            v159(v158, v191);
            sub_1DD826AD4();
            goto LABEL_37;
          case 6:
            v193.n128_u8[0] = 6;
            sub_1DD8043F8();
            sub_1DD825698();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD803300();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD8248A0();
            swift_unknownObjectRelease();
            v160 = sub_1DD825674();
            v161(v160);
            v162 = sub_1DD825290();
            v163(v162);
            sub_1DD82641C();
            goto LABEL_34;
          case 7:
            sub_1DD700930();
            sub_1DD8043A4();
            sub_1DD825698();
            sub_1DD82499C();
            sub_1DD875800();
            type metadata accessor for ParameterNotAllowed(0);
            sub_1DD825D04();
            sub_1DD824904();
            sub_1DD6E1E84(v120);
            sub_1DD702944();
            sub_1DD825734();
            sub_1DD8758D0();
            if (v96)
            {
              goto LABEL_30;
            }

            goto LABEL_36;
          case 8:
            sub_1DD827348();
            sub_1DD804350();
            sub_1DD825698();
            sub_1DD82499C();
            sub_1DD875800();
            type metadata accessor for ParameterCandidatesNotFound(0);
            sub_1DD825D04();
            sub_1DD8248EC();
            sub_1DD6E1E84(v129);
            sub_1DD702944();
            sub_1DD825734();
            sub_1DD8758D0();
            if (v96)
            {
LABEL_30:
              swift_unknownObjectRelease();
              v130 = sub_1DD6FFA00();
              v131(v130, v186);
              v106 = sub_1DD824838();
              goto LABEL_11;
            }

LABEL_36:
            sub_1DD825820();
            v169 = sub_1DD6FFA00();
            v170(v169, v186);
            v171 = sub_1DD824838();
            v172(v171);
            sub_1DD826AD4();
LABEL_37:
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_38;
          case 9:
            v193.n128_u8[0] = 9;
            sub_1DD8042A8();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD804740();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v136 = sub_1DD6FAC78();
            v137(v136);
            v138 = sub_1DD8252F0();
            v139(v138);
            sub_1DD8260E8();
            goto LABEL_34;
          case 10:
            sub_1DD827354();
            sub_1DD804200();
            sub_1DD6E3A54();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD8046EC();
            sub_1DD824A28();
            sub_1DD8265E4();
            sub_1DD8758D0();
            sub_1DD6FF0D8();
            sub_1DD825820();
            v164 = sub_1DD6EFF74();
            v165(v164);
            v166 = sub_1DD8252F0();
            v167(v166);
            *v183 = v193.n128_u64[0];
            sub_1DD826850();
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_35;
          case 11:
            v193.n128_u8[0] = 11;
            sub_1DD804158();
            sub_1DD8247C8();
            sub_1DD875800();
            sub_1DD804698();
            sub_1DD824A28();
            sub_1DD825CB0();
            sub_1DD8758D0();
            sub_1DD8248A0();
            swift_unknownObjectRelease();
            v109 = sub_1DD825674();
            v110(v109);
            v111 = sub_1DD825290();
            v112(v111);
            v113 = sub_1DD82633C(v185);
            memcpy(v113, v114, 0x48uLL);
            sub_1DD826850();
LABEL_34:
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
            goto LABEL_38;
          default:
            v193.n128_u8[0] = 0;
            sub_1DD804644();
            sub_1DD825CBC();
            v23 = v191;
            sub_1DD8257E0();
            sub_1DD875800();
            type metadata accessor for ActionSuccess(0);
            sub_1DD825D04();
            sub_1DD6E41D4();
            sub_1DD6E1E84(v99);
            sub_1DD825CA4();
            sub_1DD824AC4();
            sub_1DD8758D0();
            if (v96)
            {
              swift_unknownObjectRelease();
              v100 = sub_1DD6FA9F4();
              v102 = v22;
LABEL_28:
              v101(v100, v102);
              v106 = sub_1DD825704();
              goto LABEL_10;
            }

            swift_unknownObjectRelease();
            v148 = sub_1DD6FA9F4();
            v149(v148, v22);
            v150 = sub_1DD825704();
            v151(v150, v23);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E5FF0();
LABEL_38:
            sub_1DD827250();
            v168 = v192;
LABEL_39:
            sub_1DD6E5FF0();
            sub_1DD8256C8();
            sub_1DD6E59B8();
            sub_1DD6E1EC8(v168);
            sub_1DD8273AC();
            break;
        }

        goto LABEL_13;
      }
    }

    v103 = sub_1DD875740();
    sub_1DD6E41BC(v103, MEMORY[0x1E69E6B28]);
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    sub_1DD827778();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v104 = sub_1DD6FEB10();
    v105(v104);
    swift_willThrow();
    swift_unknownObjectRelease();
    v106 = sub_1DD6DEBBC();
LABEL_10:
    v108 = v23;
LABEL_11:
    v107(v106, v108);
  }

  sub_1DD6E1EC8(v192);
LABEL_13:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7D91C0(uint64_t a1)
{
  v2 = sub_1DD804ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D91FC(uint64_t a1)
{
  v2 = sub_1DD804ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9238(uint64_t a1)
{
  v2 = sub_1DD804890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9274(uint64_t a1)
{
  v2 = sub_1DD804890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D92B0(uint64_t a1)
{
  v2 = sub_1DD702954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D92EC(uint64_t a1)
{
  v2 = sub_1DD702954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9328(uint64_t a1)
{
  v2 = sub_1DD8047E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9364(uint64_t a1)
{
  v2 = sub_1DD8047E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D93A0(uint64_t a1)
{
  v2 = sub_1DD8048E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D93DC(uint64_t a1)
{
  v2 = sub_1DD8048E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9418(uint64_t a1)
{
  v2 = sub_1DD8049E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9454(uint64_t a1)
{
  v2 = sub_1DD8049E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9490(uint64_t a1, __n128 a2)
{
  v3 = sub_1DD80498C();

  return MEMORY[0x1EEE6BB70](a1, v3);
}

uint64_t sub_1DD7D94CC(uint64_t a1, __n128 a2)
{
  v3 = sub_1DD80498C();

  return MEMORY[0x1EEE6BB78](a1, v3);
}

uint64_t sub_1DD7D9508(uint64_t a1)
{
  v2 = sub_1DD804A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9544(uint64_t a1)
{
  v2 = sub_1DD804A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9580(uint64_t a1)
{
  v2 = sub_1DD804938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D95BC(uint64_t a1)
{
  v2 = sub_1DD804938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D95F8(uint64_t a1)
{
  v2 = sub_1DD804B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9634(uint64_t a1)
{
  v2 = sub_1DD804B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9670(uint64_t a1)
{
  v2 = sub_1DD702AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D96AC(uint64_t a1)
{
  v2 = sub_1DD702AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D96E8(uint64_t a1)
{
  v2 = sub_1DD804A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9724(uint64_t a1)
{
  v2 = sub_1DD804A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7D9760(uint64_t a1)
{
  v2 = sub_1DD80483C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D979C(uint64_t a1)
{
  v2 = sub_1DD80483C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatementID.name.setter()
{
  sub_1DD6DE304();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StatementID.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

unint64_t StatementID.description.getter()
{
  if (*(v0 + 16))
  {
    MEMORY[0x1E12B4C10](*(v0 + 8));
  }

  sub_1DD8756B0();

  sub_1DD826724();
  v1 = sub_1DD875A10();
  MEMORY[0x1E12B4C10](v1);

  v2 = sub_1DD6ED118();
  MEMORY[0x1E12B4C10](v2);

  sub_1DD826BA8();
  return 0xD000000000000013;
}

uint64_t sub_1DD7D9968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7D9A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D9968(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D9A54(uint64_t a1)
{
  v2 = sub_1DD70614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D9A90(uint64_t a1)
{
  v2 = sub_1DD70614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatementID.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1DD875B50();
  if (!v1)
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();
  sub_1DD6E21D0();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t StatementID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1DD6DEDA4();
  sub_1DD875B50();
  if (v1)
  {
    v2 = sub_1DD875B40();
    sub_1DD827170(v2);
  }

  else
  {
    sub_1DD875B40();
  }

  return sub_1DD875B60();
}

void StatementID.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD128A8, &qword_1DD88A078);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v5 = sub_1DD70614C();
  sub_1DD6FC48C(&type metadata for StatementID.CodingKeys, v6, v5);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD825188();
    sub_1DD6F178C();
    v7 = sub_1DD8758E0();
    sub_1DD824CE8();
    sub_1DD6EE778();
    v8 = sub_1DD875820();
    v10 = v9;
    v11 = sub_1DD6DEA2C();
    v12(v11);
    *v3 = v7;
    *(v3 + 8) = v8;
    *(v3 + 16) = v10;

    sub_1DD824F80();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t AncestorID.index.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

__n128 AncestorID.init(statementId:index:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  result = *(a1 + 8);
  *(a4 + 8) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3 & 1;
  return result;
}

unint64_t AncestorID.description.getter()
{
  sub_1DD8756B0();

  sub_1DD826724();
  v0 = StatementID.description.getter();
  MEMORY[0x1E12B4C10](v0);

  MEMORY[0x1E12B4C10](0x3A7865646E69202CLL, 0xE900000000000020);
  sub_1DD710A9C(&qword_1ECD0E858, &qword_1DD88A080);
  v1 = sub_1DD875180();
  MEMORY[0x1E12B4C10](v1);

  sub_1DD826BA8();
  return 0xD000000000000018;
}

uint64_t sub_1DD7D9F70(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
    if (!v9 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DD7DA014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7DA0DC(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x6E656D6574617473;
  }
}

uint64_t sub_1DD7DA120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DA014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DA148(uint64_t a1)
{
  v2 = sub_1DD804B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DA184(uint64_t a1)
{
  v2 = sub_1DD804B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7DA1F4()
{
  sub_1DD6DED2C();
  v11 = v1;
  v3 = v2;
  v5 = sub_1DD825C68(v2, v4);
  sub_1DD710A9C(v5, v6);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = sub_1DD6E49C0(v3);
  v11(v8);
  sub_1DD826F3C();

  sub_1DD875BB0();
  sub_1DD70396C();
  sub_1DD826748();
  sub_1DD8256BC();
  sub_1DD8759D0();

  if (!v0)
  {
    sub_1DD702E94();
    sub_1DD705DBC();
    sub_1DD875950();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t AncestorID.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1DD875B50();
  if (v1)
  {
    sub_1DD875B40();
    sub_1DD6E58E0();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    if (v3)
    {
      return sub_1DD875B40();
    }
  }

  else
  {
    sub_1DD875B40();
    if (v3)
    {
      return sub_1DD875B40();
    }
  }

  sub_1DD875B40();
  return MEMORY[0x1E12B5570](v2);
}

uint64_t AncestorID.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1DD6DEDA4();
  sub_1DD875B50();
  sub_1DD875B40();
  if (v1)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  sub_1DD875B40();
  if (!v2)
  {
    sub_1DD6FA750();
  }

  return sub_1DD875B60();
}

void sub_1DD7DA4B8()
{
  sub_1DD6DED2C();
  v4 = v3;
  sub_1DD825A04();
  v17 = v5;
  v8 = sub_1DD825C68(v6, v7);
  v18 = sub_1DD710A9C(v8, v9);
  sub_1DD6DDEAC();
  v11 = v10;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDFE4();
  v13 = sub_1DD6E7320(v0);
  v4(v13);
  sub_1DD827014();
  sub_1DD825680();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD705C28();
    sub_1DD8758D0();
    sub_1DD702E94();
    sub_1DD6FAE18();
    v14 = sub_1DD875850();
    v16 = v15;
    (*(v11 + 8))(v1, v18);
    *v17 = v19;
    *(v17 + 8) = v20;
    *(v17 + 16) = v21;
    *(v17 + 24) = v14;
    *(v17 + 32) = v16 & 1;

    sub_1DD826950();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DA6A8(uint64_t a1)
{
  sub_1DD875B20();
  AncestorID.hash(into:)();
  return sub_1DD875B60();
}

uint64_t ActionSuccess.appLaunched.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for ActionSuccess(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*ActionSuccess.appLaunched.modify(void *a1))(uint64_t result)
{
  v3 = sub_1DD82661C(a1);
  v4 = *(type metadata accessor for ActionSuccess(v3) + 24);
  *(v1 + 8) = v4;
  *(v1 + 12) = *(v2 + v4);
  return sub_1DD7DA7BC;
}

uint64_t ActionSuccess.undoContext.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.didShowInAppResult.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.followUpAction.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.shouldOpen.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for ActionSuccess(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t ActionSuccess.shouldOpen.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.inAppSearchString.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.ancestorId.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for ActionSuccess(v0);
  v2 = sub_1DD8255E0(*(v1 + 40));

  return sub_1DD703958(v2, v3, v4);
}

void ActionSuccess.ancestorId.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + *(type metadata accessor for ActionSuccess(0) + 40);
  v4 = sub_1DD6E3AB0();
  sub_1DD70148C(v4, v5, v6);
  sub_1DD6FEB38();
  *(v3 + 32) = v2;
}

uint64_t ActionSuccess.ancestorId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess(v0);
  return sub_1DD6DDF9C();
}

double ActionSuccess.concludesStreamingStatementID.setter()
{
  v0 = sub_1DD82580C();
  v1 = type metadata accessor for ActionSuccess(v0);
  v2 = sub_1DD6E3A44(*(v1 + 44));
  v5 = sub_1DD70148C(v2, v3, v4);
  *&result = sub_1DD82640C(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14).n128_u64[0];
  return result;
}

uint64_t ActionSuccess.concludesStreamingStatementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess(v0);
  return sub_1DD6DDF9C();
}

__n128 ActionSuccess.init(returnValue:didShowInAppResult:undoContext:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:ancestorId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 *a35)
{
  sub_1DD826DB8();
  v64 = v36;
  v62 = v37;
  v61 = v38;
  v40 = v39;
  v42 = v41;
  v66 = *v43;
  v65 = *(v43 + 2);
  v68 = *(a35 + 32);
  v44 = type metadata accessor for ActionSuccess(0);
  sub_1DD827950();
  v67 = *a35;
  v63 = a35[1];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v45, v46, v47, v48);
  type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v49, v50, v51, v52);
  v53 = (v42 + v44[9]);
  v54 = v42 + v44[10];
  *v54 = 0;
  *(v54 + 8) = 0;
  *(v54 + 16) = xmmword_1DD8890D0;
  *(v54 + 32) = 0;
  sub_1DD82774C(v44[11]);
  *(v35 + 16) = 1;
  sub_1DD874FA0();
  sub_1DD6DF448();
  v55 = sub_1DD700B4C();
  v56(v55);
  *(v42 + v44[6]) = v40;
  sub_1DD807414();
  sub_1DD807414();
  *(v42 + v44[8]) = v61;
  *v53 = v62;
  v53[1] = v64;
  v57 = sub_1DD826718();
  sub_1DD70148C(v57, v58, v59);
  *v35 = v66;
  *(v35 + 16) = v65;
  sub_1DD70148C(*v54, *(v54 + 8), *(v54 + 16));
  *v54 = v67;
  *(v54 + 16) = v63;
  *(v54 + 32) = v68;
  sub_1DD826D9C();
  return result;
}

void ActionSuccess.init(returnValue:didShowInAppResult:undoContext:followUpAction:shouldOpen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DD826528();
  v29 = v8;
  v10 = v9;
  v11 = sub_1DD6F9E24();
  v12 = type metadata accessor for ActionSuccess(v11);
  sub_1DD827950();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v13, v14, v15, v16);
  type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v17, v18, v19, v20);
  v21 = (v7 + v12[9]);
  v22 = (v7 + v12[10]);
  *v22 = 0;
  v22[1] = 0;
  sub_1DD8273A0(xmmword_1DD8890D0);
  v23 = (v7 + v12[11]);
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 1;
  sub_1DD874FA0();
  sub_1DD6DF448();
  v24 = sub_1DD6ED180();
  v25(v24);
  *(v7 + v12[6]) = v10;
  sub_1DD807414();
  sub_1DD807414();
  *(v7 + v12[8]) = v29;
  *v21 = 0;
  v21[1] = 0;
  v26 = sub_1DD82676C();
  sub_1DD70148C(v26, v27, v28);
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 1;
  sub_1DD70148C(*v22, v22[1], v22[2]);
  *v22 = 0;
  v22[1] = 0;
  sub_1DD8273A0(xmmword_1DD8890D0);
  sub_1DD8264FC();
}

__n128 ActionSuccess.init(returnValue:didShowInAppResult:undoContext:followUpAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DD826528();
  v9 = v8;
  v10 = sub_1DD6E0A5C();
  v11 = type metadata accessor for ActionSuccess(v10);
  sub_1DD827950();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v12, v13, v14, v15);
  type metadata accessor for ActionSuccess.FollowUpAction(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v16, v17, v18, v19);
  v20 = (v7 + v11[9]);
  v21 = v7 + v11[10];
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = xmmword_1DD8890D0;
  *(v21 + 32) = 0;
  v22 = (v7 + v11[11]);
  *v22 = 0;
  v22[1] = 0;
  v22[2] = 1;
  sub_1DD874FA0();
  sub_1DD6DF448();
  v23 = sub_1DD825C04();
  v24(v23);
  *(v7 + v11[6]) = v9;
  sub_1DD807414();
  sub_1DD807414();
  *(v7 + v11[8]) = 0;
  *v20 = 0;
  v20[1] = 0;
  v25 = sub_1DD827044();
  sub_1DD70148C(v25, v26, v27);
  *v22 = 0;
  v22[1] = 0;
  v22[2] = 1;
  v28 = sub_1DD6FA3DC();
  sub_1DD70148C(v28, v29, v30);
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = xmmword_1DD8890D0;
  *(v21 + 32) = 0;
  sub_1DD8264FC();
  return result;
}

void ActionSuccess.init(returnValue:appLaunched:)()
{
  sub_1DD6DEB38();
  v35 = v1;
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD125B0, &qword_1DD889EB0);
  sub_1DD6DEA10(v4);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEBA0();
  v6 = sub_1DD710A9C(&qword_1ECD125C0, &qword_1DD889EC0);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD700BA4();
  v9 = type metadata accessor for ActionSuccess.UndoContext(v8);
  sub_1DD6E0C90();
  v13 = sub_1DD70386C(v10, v11, v12, v9);
  type metadata accessor for ActionSuccess.FollowUpAction(v13);
  sub_1DD826F3C();
  sub_1DD6E0C90();
  v17 = sub_1DD70386C(v14, v15, v16, v0);
  v18 = type metadata accessor for ActionSuccess(v17);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v19, v20, v21, v9);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v22, v23, v24, v0);
  v25 = (v3 + v18[9]);
  v26 = v3 + v18[10];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = xmmword_1DD8890D0;
  *(v26 + 32) = 0;
  sub_1DD6F3588();
  sub_1DD874FA0();
  sub_1DD6DF448();
  v27 = sub_1DD8258AC();
  v28(v27);
  *(v3 + v18[6]) = v35;
  sub_1DD807414();
  sub_1DD807414();
  *(v3 + v18[8]) = 0;
  *v25 = 0;
  v25[1] = 0;
  v29 = sub_1DD700D00();
  sub_1DD70148C(v29, v30, v31);
  sub_1DD6F3588();
  v32 = sub_1DD6E3AB0();
  sub_1DD70148C(v32, v33, v34);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = xmmword_1DD8890D0;
  *(v26 + 32) = 0;
  sub_1DD6DFED0();
}

uint64_t ActionSuccess.UndoContext.bundleIdentifier.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess.UndoContext(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.UndoContext.actionDescription.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess.UndoContext(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.UndoContext.init(token:bundleIdentifier:actionDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD8257B8();
  v10 = v9;
  sub_1DD874820();
  sub_1DD6DF448();
  v11 = sub_1DD6DDEDC();
  v12(v11);
  result = type metadata accessor for ActionSuccess.UndoContext(0);
  v14 = (v10 + *(result + 20));
  *v14 = v6;
  v14[1] = v5;
  v15 = (v10 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t static ActionSuccess.UndoContext.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ActionSuccess.UndoContext(0);
  sub_1DD826354();
  sub_1DD824820(v1);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  sub_1DD824820(*(v0 + 24));
  if (v4 && v5 == v6)
  {
    return 1;
  }

  return sub_1DD875A30();
}

uint64_t sub_1DD7DB338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001DD8B6E40 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7DB450(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000011;
}

uint64_t sub_1DD7DB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DB338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DB4D8(uint64_t a1)
{
  v2 = sub_1DD804BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DB514(uint64_t a1)
{
  v2 = sub_1DD804BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.UndoContext.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD128C8, &qword_1DD88A098);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v18 = sub_1DD804BD8();
  sub_1DD6E1808(&type metadata for ActionSuccess.UndoContext.CodingKeys, v19, v18);
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v20);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v16)
  {
    v21 = type metadata accessor for ActionSuccess.UndoContext(0);
    sub_1DD82554C(v21);
    sub_1DD8250C8();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
  }

  v22 = sub_1DD6EFFB4();
  v23(v22);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ActionSuccess.UndoContext.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  sub_1DD8268E4(v7);
  v25 = sub_1DD710A9C(&qword_1ECD128D8, &qword_1DD88A0A0);
  sub_1DD6DDEAC();
  v23 = v8;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD6E27D4();
  v11 = type metadata accessor for ActionSuccess.UndoContext(v10);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E535C();
  sub_1DD824794();
  sub_1DD804BD8();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v4);
  }

  else
  {
    v22 = v11;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v13);
    sub_1DD6F9A4C();
    sub_1DD8758D0();
    sub_1DD8274CC();
    v14(v1, v24, v5);
    sub_1DD824CE8();
    v15 = sub_1DD875870();
    v16 = (v1 + *(v11 + 20));
    *v16 = v15;
    v16[1] = v17;
    sub_1DD825178();
    v18 = sub_1DD875870();
    v20 = v19;
    (*(v23 + 8))(v2, v25);
    v21 = (v1 + *(v22 + 24));
    *v21 = v18;
    v21[1] = v20;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v4);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t ActionSuccess.FollowUpAction.action.getter()
{
  sub_1DD6FAAAC();
  sub_1DD825FF8();
  return sub_1DD6E5870();
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.bundleIdentifier.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkAction.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0);
  sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DE1C4();
  v1 = sub_1DD6FE878();

  return v2(v1);
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkAction.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0);
  sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DF448();
  v1 = sub_1DD6E26D8();

  return v2(v1);
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkAction.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkShowOutputActionOptions.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.linkShowOutputActionOptions.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.init(bundleIdentifier:linkAction:linkShowOutputActionOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
  v9 = *(v8 + 20);
  sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DF448();
  result = (*(v10 + 32))(&a5[v9], a3);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

BOOL static ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E1FC0(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
  sub_1DD804C4C(0, &qword_1EE018CE0, 0x1E69AC640);
  if ((sub_1DD874FD0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD827334();
  return v3;
}

uint64_t sub_1DD7DBDC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697463416B6E696CLL && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6E60 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7DBEE8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x697463416B6E696CLL;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_1DD7DBF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DBDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DBF84(uint64_t a1)
{
  v2 = sub_1DD804C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DBFC0(uint64_t a1)
{
  v2 = sub_1DD804C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD128E8, &qword_1DD88A0B0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v18 = sub_1DD804C8C();
  sub_1DD6E1808(&type metadata for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.CodingKeys, v19, v18);
  sub_1DD705FD8();
  sub_1DD824BDC();
  sub_1DD875970();
  if (!v16)
  {
    type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
    sub_1DD82553C();
    sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
    sub_1DD804CE0(&unk_1ECD128F8);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD6E0FF8();
    sub_1DD824DE8();
    sub_1DD8759C0();
  }

  v20 = sub_1DD6EFFB4();
  v21(v20);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ActionSuccess.FollowUpAction.ExecutableAction.LinkAction.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v17 = sub_1DD710A9C(&qword_1ECD128E0, &qword_1DD88A0A8);
  sub_1DD6DDEAC();
  v15 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v18 = sub_1DD710A9C(&qword_1ECD12900, &qword_1DD88A0B8);
  sub_1DD6DDEAC();
  v16 = v8;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD700BA4();
  v11 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v10);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD824734();
  sub_1DD824CF8(v5);
  sub_1DD804C8C();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v5);
  }

  else
  {
    sub_1DD8259A4();
    *v2 = sub_1DD875870();
    v2[1] = v13;
    sub_1DD6DEC54();
    sub_1DD804CE0(&unk_1ECD12908);
    sub_1DD705C1C();
    sub_1DD826C90();
    sub_1DD8758D0();
    (*(v15 + 32))(v2 + *(v11 + 20), v0, v17);
    sub_1DD825178();
    v14 = sub_1DD8758C0();
    (*(v16 + 8))(v3, v18);
    *(v2 + *(v11 + 24)) = v14;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

void static ActionSuccess.FollowUpAction.ExecutableAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1DD827764();
  a17 = v19;
  a18 = v20;
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE21C();
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&a9 - v23);
  v25 = sub_1DD710A9C(&qword_1ECD12910, &qword_1DD88A0C0);
  sub_1DD6DEA10(v25);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEBA0();
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD6E59B8();
  sub_1DD6E59B8();
  v27 = *v24 == *v18 && v24[1] == v18[1];
  if (v27 || (sub_1DD875A30() & 1) != 0)
  {
    sub_1DD804C4C(0, &qword_1EE018CE0, 0x1E69AC640);
    if (sub_1DD874FD0())
    {
      sub_1DD827334();
    }
  }

  sub_1DD6E5ABC();
  sub_1DD705564();
  sub_1DD6E5ABC();
  sub_1DD827720();
}

uint64_t sub_1DD7DC698(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697463416B6E696CLL && a2 == 0xEA00000000006E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DC738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DC698(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DC764(uint64_t a1)
{
  v2 = sub_1DD804D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DC7A0(uint64_t a1)
{
  v2 = sub_1DD804D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DC7DC(uint64_t a1)
{
  v2 = sub_1DD804D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DC818(uint64_t a1)
{
  v2 = sub_1DD804D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.FollowUpAction.ExecutableAction.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD12918, &qword_1DD88A0C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE340();
  v3 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  v4 = sub_1DD6DEA10(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD702A64();
  sub_1DD710A9C(&qword_1ECD12920, &qword_1DD88A0D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6F0A58();
  sub_1DD6FE8B0(v1);
  sub_1DD804D2C();
  sub_1DD6EF0F4();
  sub_1DD827620();
  sub_1DD875BB0();
  sub_1DD825FF8();
  sub_1DD6E5870();
  sub_1DD804D80();
  sub_1DD6FE82C();
  sub_1DD875910();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
  sub_1DD825F68();
  sub_1DD6E1E84(v6);
  sub_1DD6FAD44();
  sub_1DD8759D0();
  sub_1DD6E5ABC();
  v7 = sub_1DD6E0F70();
  v8(v7);
  v9 = sub_1DD825674();
  v10(v9);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void ActionSuccess.FollowUpAction.ExecutableAction.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v27 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E535C();
  sub_1DD710A9C(&qword_1ECD12940, &qword_1DD88A0D8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEBA0();
  v6 = sub_1DD710A9C(&qword_1ECD12948, &qword_1DD88A0E0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDFE4();
  sub_1DD6E6C94(v3);
  sub_1DD804D2C();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827758();
    if (v8)
    {
      goto LABEL_9;
    }

    sub_1DD825138();
    if (v9 == v10)
    {
      __break(1u);
      return;
    }

    sub_1DD6ED830();
    v12 = v11;
    v14 = v13;
    swift_unknownObjectRelease();
    if (v12 != v14 >> 1)
    {
LABEL_9:
      v15 = sub_1DD875740();
      sub_1DD6E41BC(v15, MEMORY[0x1E69E6B28]);
      v17 = v16;
      sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
      *v17 = v27;
      v18 = sub_1DD875810();
      sub_1DD6DF100(v18);
      sub_1DD6E0540();
      (*(v19 + 104))(v17);
      swift_willThrow();
      swift_unknownObjectRelease();
      v20 = sub_1DD824F60();
      v21(v20);
    }

    else
    {
      sub_1DD804D80();
      sub_1DD8258DC();
      sub_1DD6F178C();
      sub_1DD875800();
      type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(0);
      sub_1DD825F68();
      sub_1DD6E1E84(v22);
      sub_1DD82557C();
      sub_1DD826118();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v23 = sub_1DD705E24();
      v24(v23, v0);
      v25 = sub_1DD825A90();
      v26(v25, v6);
      sub_1DD824ED0();
      sub_1DD6E59B8();
    }
  }

  sub_1DD6E1EC8(v3);
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DCE98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DCF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DCE98(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DCF50(uint64_t a1)
{
  v2 = sub_1DD804DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DCF8C(uint64_t a1)
{
  v2 = sub_1DD804DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.FollowUpAction.encode(to:)(uint64_t a1)
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  sub_1DD710A9C(&qword_1ECD12958, &qword_1DD88A0E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  v2 = sub_1DD804DD4();
  sub_1DD825588(&type metadata for ActionSuccess.FollowUpAction.CodingKeys, v3, v2);
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  sub_1DD825F38();
  v5 = sub_1DD6E1E84(v4);
  sub_1DD6E71A4(v5, v6);
  v7 = sub_1DD6ED4B8();
  v8(v7);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void ActionSuccess.FollowUpAction.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  sub_1DD826760(v3);
  v4 = sub_1DD710A9C(&qword_1ECD12970, &qword_1DD88A0F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD6E27D4();
  v7 = type metadata accessor for ActionSuccess.FollowUpAction(v6);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E6200();
  sub_1DD824CF8(v0);
  sub_1DD804DD4();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD825F38();
    sub_1DD6E1E84(v9);
    sub_1DD826C90();
    sub_1DD6FAB58();
    sub_1DD8758D0();
    v10 = sub_1DD6ED80C();
    v11(v10, v4);
    sub_1DD824ED0();
    sub_1DD8259E0();
    sub_1DD6E59B8();
    sub_1DD6E3A2C();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DD27C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61566E7275746572 && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E6F436F646E75 && a2 == 0xEB00000000747865;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DD8B6E80 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7055776F6C6C6F66 && a2 == 0xEE006E6F69746341;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x704F646C756F6873 && a2 == 0xEA00000000006E65;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001DD8B6EA0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B6EC0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

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

uint64_t sub_1DD7DD544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DD27C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DD56C(uint64_t a1)
{
  v2 = sub_1DD7031E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DD5A8(uint64_t a1)
{
  v2 = sub_1DD7031E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DD620(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61566E7275746572 && a2 == 0xEB0000000065756CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DD6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DD620(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DD6EC(uint64_t a1)
{
  v2 = sub_1DD804E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DD728(uint64_t a1)
{
  v2 = sub_1DD804E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStream.encode(to:)(uint64_t a1)
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  sub_1DD710A9C(&qword_1ECD12990, &qword_1DD88A108);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  v2 = sub_1DD804E28();
  sub_1DD825588(&type metadata for SnippetStream.CodingKeys, v3, v2);
  sub_1DD874FA0();
  sub_1DD6E05D4();
  v5 = sub_1DD6E1E84(v4);
  sub_1DD6E71A4(v5, v6);
  v7 = sub_1DD6ED4B8();
  v8(v7);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void SnippetStream.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  sub_1DD874FA0();
  sub_1DD6E125C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  sub_1DD826760(v4);
  sub_1DD710A9C(&qword_1ECD129A0, &qword_1DD88A110);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD6E27D4();
  v7 = type metadata accessor for SnippetStream(v6);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E6200();
  sub_1DD824CF8(v0);
  sub_1DD804E28();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD6E05D4();
    v10 = sub_1DD6E1E84(v9);
    sub_1DD6E49DC(v10, v11);
    v12 = sub_1DD6F3238();
    v13(v12);
    v14 = sub_1DD6E891C();
    v15(v14);
    sub_1DD824E40();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

BOOL static SystemRequirement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 40);
  v54[0] = *a1;
  v54[1] = v2;
  v54[2] = v4;
  v54[3] = v5;
  v54[4] = v6;
  v55 = v7;
  v56 = v8;
  v57 = v9;
  v58 = v11;
  v59 = v10;
  v60 = v12;
  v61 = v13;
  switch(v7 >> 6)
  {
    case 1u:
      if ((v13 & 0xC0) != 0x40)
      {
        goto LABEL_32;
      }

      sub_1DD824154(v54, &unk_1ECD129A8);
      return ((v8 ^ v3) & 1) == 0;
    case 2u:
      if ((v13 & 0xC0) != 0x80)
      {
        goto LABEL_32;
      }

      LOBYTE(v49[0]) = v3 & 1;
      *&v49[1] = v2;
      v50 = v4 & 1;
      v51 = v5;
      v52 = v6;
      v53 = v7 & 1;
      LOBYTE(v44[0]) = v8 & 1;
      *&v44[1] = v9;
      v45 = v11 & 1;
      v46 = v10;
      v47 = v12;
      v48 = v13 & 1;
      v22 = static SystemRequirement.UserLocationForSystemRequest.== infix(_:_:)(v49, v44);
      sub_1DD824154(v54, &unk_1ECD129A8);
      return v22;
    case 3u:
      if (!(v4 | v2 | v3 | v5 | v6) && v7 == 192)
      {
        if (v13 >= 0xC0 && !(v11 | v9 | v8 | v10 | v12) && v13 == 192)
        {
          goto LABEL_65;
        }

        goto LABEL_32;
      }

      v23 = v4 | v2 | v5 | v6;
      v24 = v7 == 192 && v3 == 1;
      if (!v24 || v23)
      {
        v30 = v7 == 192 && v3 == 2;
        if (!v30 || v23)
        {
          v37 = v7 == 192 && v3 == 3;
          if (!v37 || v23)
          {
            if (v13 <= 0xBF)
            {
              goto LABEL_32;
            }

            if (v13 != 192 || v8 != 4)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v13 < 0xC0)
            {
              goto LABEL_32;
            }

            if (v13 != 192 || v8 != 3)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          if (v13 < 0xC0)
          {
            goto LABEL_32;
          }

          if (v13 != 192 || v8 != 2)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v13 < 0xC0)
        {
          goto LABEL_32;
        }

        if (v13 != 192 || v8 != 1)
        {
          goto LABEL_32;
        }
      }

      if (v11 | v9 | v10 | v12)
      {
        goto LABEL_32;
      }

      goto LABEL_65;
    default:
      if (v13 >= 0x40)
      {

LABEL_32:
        v26 = sub_1DD6DED5C();
        sub_1DD80402C(v26, v27, v11, v28, v29, v13);
        sub_1DD824154(v54, &unk_1ECD129A8);
        return 0;
      }

      else
      {
        if (v3 == v8 && v2 == v9)
        {
          sub_1DD80402C(v3, v2, v11, v10, v12, v13);
          sub_1DD6F441C();
          sub_1DD826FB4();
          sub_1DD80402C(v32, v33, v34, v35, v36, v7);
LABEL_65:
          sub_1DD824154(v54, &unk_1ECD129A8);
        }

        else
        {
          v41 = v10;
          v42 = v12;
          v43 = sub_1DD875A30();
          v15 = sub_1DD6DED5C();
          sub_1DD80402C(v15, v16, v11, v41, v42, v13);
          sub_1DD6F441C();
          sub_1DD826FB4();
          sub_1DD80402C(v17, v18, v19, v20, v21, v7);
          sub_1DD824154(v54, &unk_1ECD129A8);
          v22 = 0;
          if ((v43 & 1) == 0)
          {
            return v22;
          }
        }

        return 1;
      }
  }
}

uint64_t sub_1DD7DDDA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD8B6EE0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6975716552707061 && a2 == 0xEE00746E656D6572;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001DD8B6F00 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

unint64_t sub_1DD7DDF18(char a1)
{
  result = 0x6975716552707061;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x726F707075736E75;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DD7DDFBC(uint64_t a1)
{
  v2 = sub_1DD804FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DDFF8(uint64_t a1)
{
  v2 = sub_1DD804FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DDDA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DE064(uint64_t a1)
{
  v2 = sub_1DD804E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE0A0(uint64_t a1)
{
  v2 = sub_1DD804E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE0DC(uint64_t a1)
{
  v2 = sub_1DD804F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE118(uint64_t a1)
{
  v2 = sub_1DD804F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE154(uint64_t a1)
{
  v2 = sub_1DD805074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE190(uint64_t a1)
{
  v2 = sub_1DD805074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE1CC(uint64_t a1)
{
  v2 = sub_1DD804ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE208(uint64_t a1)
{
  v2 = sub_1DD804ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionRequirement.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD129B0, &qword_1DD88A120);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD824FEC(v4, v25);
  sub_1DD710A9C(&qword_1ECD129B8, &qword_1DD88A128);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD824A38(v6, v26);
  sub_1DD710A9C(&qword_1ECD129C0, &qword_1DD88A130);
  sub_1DD6DDEAC();
  v29 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = sub_1DD710A9C(&qword_1ECD129C8, &qword_1DD88A138);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E7258();
  sub_1DD710A9C(&qword_1ECD129D0, &qword_1DD88A140);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE340();
  v28 = v0[1];
  v30 = *v0;
  sub_1DD8264F0(*(v0 + 4));
  v12 = *(v0 + 40);
  sub_1DD6FE8B0(v2);
  sub_1DD804E7C();
  sub_1DD8256E0();
  sub_1DD826FB4();
  sub_1DD875BB0();
  switch((v12 >> 4) & 3)
  {
    case 1u:
      sub_1DD8276A4();
      sub_1DD804FCC();
      sub_1DD824AB4();
      sub_1DD875910();
      LOBYTE(v31[0]) = v30;
      sub_1DD805020();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v18 = sub_1DD6FF900();
      v19 = v29;
      goto LABEL_6;
    case 2u:
      sub_1DD827698();
      sub_1DD804F24();
      sub_1DD824AB4();
      sub_1DD875910();
      LOBYTE(v31[0]) = v30;
      sub_1DD804F78();
      sub_1DD825AB4();
      sub_1DD8759D0();
      v18 = sub_1DD824838();
LABEL_6:
      v20(v18, v19);
      v16 = sub_1DD824A60();
      goto LABEL_7;
    case 3u:
      sub_1DD82756C();
      sub_1DD804ED0();
      sub_1DD6FA420();
      sub_1DD875910();
      v21 = sub_1DD6DED98();
      v22(v21);
      v23 = sub_1DD824A94();
      v24(v23);
      goto LABEL_8;
    default:
      sub_1DD805074();
      sub_1DD8251A8();
      sub_1DD875910();
      v31[1] = v28;
      v31[0] = v30;
      v32 = v27;
      v33 = v12;
      sub_1DD8050C8();
      sub_1DD826A40(v31, v13, v9, &type metadata for SystemRequirement);
      v14 = sub_1DD824A04();
      v15(v14, v9);
      v16 = sub_1DD825148();
LABEL_7:
      v17(v16);
LABEL_8:
      sub_1DD7536FC();
      sub_1DD6E0C78();
      return;
  }
}

void ActionRequirement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD7038A0();
  v64 = v13;
  v65 = sub_1DD710A9C(&qword_1ECD12A18, &qword_1DD88A148);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD824C9C(v15, v60);
  v62 = sub_1DD710A9C(&qword_1ECD12A20, &qword_1DD88A150);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v17);
  sub_1DD710A9C(&qword_1ECD12A28, &qword_1DD88A158);
  sub_1DD6DDEAC();
  v63 = v18;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD12A30, &qword_1DD88A160);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6F0A58();
  v21 = sub_1DD710A9C(&qword_1ECD12A38, &qword_1DD88A168);
  sub_1DD6DDEAC();
  v23 = v22;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DDFE4();
  v66 = v10;
  sub_1DD824D14(v10);
  sub_1DD804E7C();
  sub_1DD77E6F4();
  sub_1DD8274A0();
  sub_1DD875B90();
  if (!a10)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    if (v26 != v25 >> 1)
    {
      sub_1DD6E6120();
      v61 = v21;
      sub_1DD6E42A8();
      if (v29 == v30)
      {
        __break(1u);
        return;
      }

      v31 = *(v28 + v27);
      sub_1DD6ED830();
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      if (v33 == v35 >> 1)
      {
        switch(v31)
        {
          case 1:
            sub_1DD8276A4();
            sub_1DD804FCC();
            sub_1DD824BCC();
            sub_1DD875800();
            sub_1DD805170();
            sub_1DD79A3A4();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v56 = sub_1DD6E4290();
            v57(v56, v63);
            v58 = sub_1DD824DC8();
            v59(v58, v61);
            v52 = v67;
            v53 = 0uLL;
            v55 = 16;
            goto LABEL_15;
          case 2:
            sub_1DD827698();
            sub_1DD804F24();
            sub_1DD79A3A4();
            sub_1DD825D44();
            sub_1DD875800();
            sub_1DD80511C();
            sub_1DD79A3A4();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v44 = sub_1DD6E4290();
            v45(v44, v62);
            v46 = sub_1DD824DC8();
            v47(v46, v61);
            v52 = v67;
            v53 = 0uLL;
            v55 = 32;
            goto LABEL_15;
          case 3:
            sub_1DD82756C();
            sub_1DD804ED0();
            sub_1DD79A3A4();
            sub_1DD825D44();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v40 = sub_1DD6DED98();
            v41(v40, v65);
            v42 = sub_1DD824DC8();
            v43(v42, v61);
            v52 = 0;
            v53 = 0uLL;
            v55 = 48;
LABEL_15:
            v54 = 0uLL;
            break;
          default:
            LOBYTE(v67) = 0;
            sub_1DD805074();
            sub_1DD6E4040();
            sub_1DD825D44();
            sub_1DD875800();
            sub_1DD8051C4();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v48 = sub_1DD6DE58C();
            v49(v48);
            v50 = sub_1DD824DC8();
            v51(v50, v61);
            v52 = v67;
            v53 = v68;
            v54 = v69;
            v55 = v70;
            break;
        }

        v39 = v66;
        *v64 = v52;
        *(v64 + 8) = v53;
        *(v64 + 24) = v54;
        *(v64 + 40) = v55;
        goto LABEL_11;
      }

      v21 = v61;
    }

    v36 = sub_1DD875740();
    sub_1DD6E41BC(v36, MEMORY[0x1E69E6B28]);
    sub_1DD82762C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v11 = &type metadata for ActionRequirement;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v37 = sub_1DD6FEB10();
    v38(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v23 + 8))(v12, v21);
  }

  v39 = v66;
LABEL_11:
  sub_1DD6E1EC8(v39);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DEDE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DEE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DEDE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DEEB4(uint64_t a1)
{
  v2 = sub_1DD805218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DEEF0(uint64_t a1)
{
  v2 = sub_1DD805218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.ProtectedAppRequest.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD12A58, &qword_1DD88A170);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD805218();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DF070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000022 && 0x80000001DD8B6F20 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DD8B6F50 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7DF174(uint64_t a1)
{
  v2 = sub_1DD805314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DF1B0(uint64_t a1)
{
  v2 = sub_1DD805314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DF1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DF070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DF21C(uint64_t a1)
{
  v2 = sub_1DD80526C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DF258(uint64_t a1)
{
  v2 = sub_1DD80526C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DF294(uint64_t a1)
{
  v2 = sub_1DD8052C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DF2D0(uint64_t a1)
{
  v2 = sub_1DD8052C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.AuthenticationRequest.AuthenticationLevel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  sub_1DD826784();
  sub_1DD710A9C(&qword_1ECD12A70, &qword_1DD88A180);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD82480C(v26, v34);
  sub_1DD710A9C(&qword_1ECD12A78, &qword_1DD88A188);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD12A80, &qword_1DD88A190);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E7258();
  v29 = *v23;
  sub_1DD824CF8(v24);
  sub_1DD80526C();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875BB0();
  if (v29)
  {
    sub_1DD6FF8F4();
    sub_1DD8052C0();
    sub_1DD824848();
    sub_1DD875910();
    v30 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD805314();
    sub_1DD826808();
    sub_1DD824848();
    sub_1DD875910();
    v30 = sub_1DD6E4290();
  }

  v31(v30);
  v32 = sub_1DD825570();
  v33(v32);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void SystemRequirement.AuthenticationRequest.AuthenticationLevel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD826C50(v23);
  v54 = sub_1DD710A9C(&qword_1ECD12AA0, &qword_1DD88A198);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E17C8();
  v25 = sub_1DD710A9C(&qword_1ECD12AA8, &qword_1DD88A1A0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD12AB0, &qword_1DD88A1A8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DEBA0();
  sub_1DD6E6C94(v21);
  sub_1DD80526C();
  sub_1DD6E4218();
  sub_1DD82718C(v28, v29, v30);
  if (!v20)
  {
    v55 = v21;
    sub_1DD826378();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B7C();
    if (!v31)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v32 == v33)
      {
        __break(1u);
        return;
      }

      v40 = *(v39 + v38);
      sub_1DD6F43D8(v34, v35, v36, v37, v38);
      sub_1DD6ED830();
      sub_1DD6E0194();
      v42 = v41;
      swift_unknownObjectRelease();
      if (!(v42 >> 1))
      {
        if (v40)
        {
          sub_1DD6FF8F4();
          sub_1DD8052C0();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v43 = sub_1DD825038();
          v45 = v54;
        }

        else
        {
          sub_1DD805314();
          sub_1DD826E4C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v43 = sub_1DD705C68();
          v45 = v25;
        }

        v44(v43, v45);
        v52 = sub_1DD6E60FC();
        v53(v52);
        sub_1DD826EE8();
        goto LABEL_12;
      }
    }

    v46 = sub_1DD875740();
    sub_1DD6E41BC(v46, MEMORY[0x1E69E6B28]);
    sub_1DD82702C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v22 = &type metadata for SystemRequirement.AuthenticationRequest.AuthenticationLevel;
    sub_1DD826378();
    v47 = sub_1DD875810();
    sub_1DD6DF100(v47);
    sub_1DD8250B8();
    v48 = sub_1DD826518();
    v49(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = sub_1DD6E37A0();
    v51(v50);
    v21 = v55;
  }

  sub_1DD6E1EC8(v21);
LABEL_12:
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DF930(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DD8B6F80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DF9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DF930(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DF9FC(uint64_t a1)
{
  v2 = sub_1DD805368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DFA38(uint64_t a1)
{
  v2 = sub_1DD805368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.AuthenticationRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v24 = v23;
  sub_1DD710A9C(&qword_1ECD12AB8, &qword_1DD88A1B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DEBA0();
  sub_1DD6E49C0(v24);
  v26 = sub_1DD805368();
  sub_1DD825588(&type metadata for SystemRequirement.AuthenticationRequest.CodingKeys, v27, v26);
  sub_1DD8053BC();
  sub_1DD8759D0();
  v28 = sub_1DD6ED4B8();
  v29(v28);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void SystemRequirement.AuthenticationRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v16 = v15;
  sub_1DD710A9C(&qword_1ECD12AD0, &qword_1DD88A1B8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD805368();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v14)
  {
    sub_1DD805410();
    sub_1DD6E710C();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v18 = sub_1DD6DDEDC();
    v19(v18);
    *v16 = a13;
  }

  sub_1DD6E1EC8(v13);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t SystemRequirement.UserLocationForSystemRequest.timeoutForLocationFetch.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

uint64_t SystemRequirement.UserLocationForSystemRequest.init(isPreciseLocationRequired:minimumViableLocationAccuracy:timeoutForLocationFetch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

BOOL static SystemRequirement.UserLocationForSystemRequest.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] == a2[1])
    {
      v3 = *(a2 + 16);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((a1[5] & 1) == 0)
  {
    return (a2[5] & 1) == 0 && (sub_1DD875BD0() & 1) != 0;
  }

  return (a2[5] & 1) != 0;
}

uint64_t sub_1DD7DFDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001DD8B6FA0 == a2;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001DLL && 0x80000001DD8B6FC0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001DD8B6FE0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

unint64_t sub_1DD7DFF14(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000017;
}

uint64_t sub_1DD7DFF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DFDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DFF98(uint64_t a1)
{
  v2 = sub_1DD805464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DFFD4(uint64_t a1)
{
  v2 = sub_1DD805464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.UserLocationForSystemRequest.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD12AE0, &qword_1DD88A1C0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD826A0C();
  sub_1DD6FE8B0(v2);
  sub_1DD805464();
  sub_1DD6E17D8();
  sub_1DD826FA8();
  sub_1DD875BB0();
  sub_1DD6E5334();
  sub_1DD875980();
  if (!v0)
  {
    sub_1DD702E94();
    sub_1DD705DBC();
    sub_1DD875940();
    sub_1DD6EFF88();
    sub_1DD826748();
    sub_1DD6E5334();
    sub_1DD875960();
  }

  v4 = sub_1DD6FF768();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void SystemRequirement.UserLocationForSystemRequest.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD12AF0, &qword_1DD88A1C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v5 = sub_1DD805464();
  sub_1DD6FC48C(&type metadata for SystemRequirement.UserLocationForSystemRequest.CodingKeys, v6, v5);
  if (!v1)
  {
    sub_1DD6F178C();
    v7 = sub_1DD875880();
    LOBYTE(v12) = 1;
    sub_1DD6F178C();
    v8 = sub_1DD875840();
    v14 = v9;
    sub_1DD6EFF88();
    sub_1DD8275D0();
    sub_1DD824BCC();
    sub_1DD875860();
    v10 = sub_1DD825098();
    v11(v10);
    *v3 = v7 & 1;
    *(v3 + 8) = v8;
    *(v3 + 16) = v14 & 1;
    *(v3 + 24) = v12;
    *(v3 + 40) = v13;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E0304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001DD8B7000 == a2;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001DD8B7020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD8B7040 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD8B7060 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001DD8B7080 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000001DD8B70A0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ALL && 0x80000001DD8B70C0 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B70E0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

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

unint64_t sub_1DD7E0570(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7E0678(uint64_t a1)
{
  v2 = sub_1DD8057AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E06B4(uint64_t a1)
{
  v2 = sub_1DD8057AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E06F0(uint64_t a1)
{
  v2 = sub_1DD805800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E072C(uint64_t a1)
{
  v2 = sub_1DD805800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0768(uint64_t a1)
{
  v2 = sub_1DD805704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E07A4(uint64_t a1)
{
  v2 = sub_1DD805704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E07E0(uint64_t a1)
{
  v2 = sub_1DD805758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E081C(uint64_t a1)
{
  v2 = sub_1DD805758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E0304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E0888(uint64_t a1)
{
  v2 = sub_1DD8054B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E08C4(uint64_t a1)
{
  v2 = sub_1DD8054B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0900(uint64_t a1)
{
  v2 = sub_1DD805854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E093C(uint64_t a1)
{
  v2 = sub_1DD805854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0978(uint64_t a1)
{
  v2 = sub_1DD80565C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E09B4(uint64_t a1)
{
  v2 = sub_1DD80565C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E09F0(uint64_t a1)
{
  v2 = sub_1DD8055B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E0A2C(uint64_t a1)
{
  v2 = sub_1DD8055B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0A68(uint64_t a1)
{
  v2 = sub_1DD80550C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E0AA4(uint64_t a1)
{
  v2 = sub_1DD80550C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  sub_1DD710A9C(&qword_1ECD12AF8, &qword_1DD88A1D0);
  sub_1DD6DDEAC();
  v100 = v27;
  v101 = v26;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD824934(v29, v84);
  sub_1DD710A9C(&qword_1ECD12B00, &qword_1DD88A1D8);
  sub_1DD6DDEAC();
  v98 = v31;
  v99 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD824A38(v33, v85);
  sub_1DD710A9C(&qword_1ECD12B08, &qword_1DD88A1E0);
  sub_1DD6DDEAC();
  v96 = v35;
  v97 = v34;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD824B94(v37, v86);
  v38 = sub_1DD710A9C(&qword_1ECD12B10, &qword_1DD88A1E8);
  sub_1DD6DF3FC(v38, &a11);
  v90 = v39;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD824AFC(v41, v87);
  v42 = sub_1DD710A9C(&qword_1ECD12B18, &qword_1DD88A1F0);
  sub_1DD6DF3FC(v42, &v113);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v44);
  v45 = sub_1DD710A9C(&qword_1ECD12B20, &qword_1DD88A1F8);
  sub_1DD6DF3FC(v45, &a14);
  v91 = v46;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD825498(v48, v88);
  v49 = sub_1DD710A9C(&qword_1ECD12B28, &qword_1DD88A200);
  sub_1DD6DF3FC(v49, &a17);
  v92 = v50;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD705DF0(v52, v89);
  v95 = sub_1DD710A9C(&qword_1ECD12B30, &qword_1DD88A208);
  sub_1DD6DDEAC();
  v94 = v53;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD12B38, &qword_1DD88A210);
  sub_1DD6DDEAC();
  v105 = v55;
  v106 = v56;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1DD6F0A58();
  v58 = *v20;
  v102 = v20[1];
  v103 = v58;
  v60 = v20[2];
  v59 = v20[3];
  v61 = v20[4];
  v62 = *(v20 + 40);
  sub_1DD6FE770(v25);
  sub_1DD8054B8();
  v104 = v21;
  sub_1DD6EF0F4();
  sub_1DD875BB0();
  switch(v62 >> 6)
  {
    case 1u:
      sub_1DD8055B4();
      v63 = v105;
      sub_1DD824AB4();
      sub_1DD875910();
      LOBYTE(v107) = v103 & 1;
      sub_1DD805608();
      sub_1DD825AB4();
      sub_1DD8759D0();
      goto LABEL_8;
    case 2u:
      sub_1DD80550C();
      sub_1DD8272DC();
      sub_1DD82499C();
      sub_1DD875910();
      LOBYTE(v107) = v103 & 1;
      v108 = v102;
      v109 = v60 & 1;
      v110 = v59;
      v111 = v61;
      LOBYTE(v112) = v62 & 1;
      sub_1DD805560();
      sub_1DD826DD4(&v107, v64, v101, &type metadata for SystemRequirement.UserLocationForSystemRequest);
      v65 = sub_1DD824D98();
      v66(v65);
      v67 = sub_1DD824838();
      goto LABEL_10;
    case 3u:
      if (!(v60 | v102 | v103 | v59 | v61) && v62 == 192)
      {
        LOBYTE(v107) = 0;
        sub_1DD805854();
        sub_1DD79A3A4();
        sub_1DD875910();
        v70 = sub_1DD824880();
        v72 = v95;
LABEL_19:
        v71(v70, v72);
        v77 = sub_1DD6E21D0();
        v78(v77);
        goto LABEL_11;
      }

      v75 = v60 | v102 | v59 | v61;
      v76 = v62 == 192 && v103 == 1;
      if (v76 && !v75)
      {
        sub_1DD8276A4();
        sub_1DD805800();
        sub_1DD705200(&type metadata for SystemRequirement.AuthenticationRequiredCodingKeys, &v107);
        v70 = sub_1DD702E84();
        v72 = v93;
        goto LABEL_19;
      }

      v79 = v62 == 192 && v103 == 2;
      if (!v79 || v75)
      {
        v83 = v62 == 192 && v103 == 3;
        if (!v83 || v75)
        {
          LOBYTE(v107) = 4;
          sub_1DD805704();
          sub_1DD8269B0();
          v63 = v105;
          sub_1DD6F3128();
          sub_1DD875910();
          v80 = sub_1DD824890();
          v82 = &a11;
        }

        else
        {
          sub_1DD82756C();
          sub_1DD805758();
          sub_1DD8269B0();
          v63 = v105;
          sub_1DD6F3128();
          sub_1DD875910();
          v80 = sub_1DD824890();
          v82 = &v113;
        }
      }

      else
      {
        sub_1DD827698();
        sub_1DD8057AC();
        sub_1DD8269B0();
        v63 = v105;
        sub_1DD6F3128();
        sub_1DD875910();
        v80 = sub_1DD824890();
        v82 = &a14;
      }

      v81(v80, *(v82 - 32));
      v67 = sub_1DD6DEBBC();
LABEL_9:
      v68 = v63;
LABEL_10:
      v69(v67, v68);
LABEL_11:
      sub_1DD7536FC();
      sub_1DD6E0C78();
      return;
    default:
      sub_1DD80565C();
      v63 = v105;
      sub_1DD824AB4();
      sub_1DD875910();
      v107 = v103;
      v108 = v102;
      sub_1DD8056B0();
      sub_1DD825AB4();
      sub_1DD8759D0();
LABEL_8:
      v73 = sub_1DD824838();
      v74(v73);
      v67 = sub_1DD6E61C4();
      goto LABEL_9;
  }
}

void SystemRequirement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  sub_1DD7038A0();
  v109 = v24;
  v108 = sub_1DD710A9C(&qword_1ECD12BA0, &qword_1DD88A218);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD824A4C(v26, v99);
  v107 = sub_1DD710A9C(&qword_1ECD12BA8, &qword_1DD88A220);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD824948(v28, v100);
  v106 = sub_1DD710A9C(&qword_1ECD12BB0, &qword_1DD88A228);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD82495C(v30, v101);
  sub_1DD710A9C(&qword_1ECD12BB8, &qword_1DD88A230);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824FD8(v32, v102);
  v33 = sub_1DD710A9C(&qword_1ECD12BC0, &qword_1DD88A238);
  sub_1DD6DF3FC(v33, &a17);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824934(v35, v103);
  v105 = sub_1DD710A9C(&qword_1ECD12BC8, &qword_1DD88A240);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v37);
  v38 = sub_1DD710A9C(&qword_1ECD12BD0, &qword_1DD88A248);
  sub_1DD6DF3FC(v38, &a16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6F0A58();
  v40 = sub_1DD710A9C(&qword_1ECD12BD8, &qword_1DD88A250);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6DE340();
  sub_1DD710A9C(&qword_1ECD12BE0, &qword_1DD88A258);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6DEBA0();
  v43 = v21[3];
  v110 = v21;
  sub_1DD824CF8(v21);
  sub_1DD8054B8();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (!a10)
  {
    sub_1DD6FA3D0();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B7C();
    if (!v44)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v51 == v52)
      {
        __break(1u);
        return;
      }

      v104 = *(v50 + v49);
      sub_1DD6F43D8(v45, v46, v47, v48, v49);
      v43 = sub_1DD6ED830();
      v54 = v53;
      v56 = v55;
      swift_unknownObjectRelease();
      if (v54 == v56 >> 1)
      {
        switch(v104)
        {
          case 1:
            sub_1DD8276A4();
            sub_1DD805800();
            sub_1DD8269B0();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v83 = sub_1DD824890();
            v84(v83);
            v85 = sub_1DD6FE110();
            v86(v85);
            *&v65 = sub_1DD8252DC();
            v64 = 1;
            goto LABEL_16;
          case 2:
            sub_1DD827698();
            sub_1DD8057AC();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v75 = sub_1DD824890();
            v76(v75, v105);
            v77 = sub_1DD6FE110();
            v78(v77);
            *&v65 = sub_1DD8252DC();
            v64 = 2;
            goto LABEL_16;
          case 3:
            sub_1DD82756C();
            sub_1DD805758();
            sub_1DD8272DC();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v79 = sub_1DD6E4290();
            v80(v79);
            v81 = sub_1DD6FE110();
            v82(v81);
            *&v65 = sub_1DD8252DC();
            v64 = 3;
            goto LABEL_16;
          case 4:
            sub_1DD805704();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v71 = sub_1DD6E4290();
            v72(v71);
            v73 = sub_1DD6FE110();
            v74(v73);
            *&v65 = sub_1DD8252DC();
            v64 = 4;
            goto LABEL_16;
          case 5:
            LOBYTE(v111) = 5;
            sub_1DD80565C();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD805950();
            sub_1DD700C9C();
            sub_1DD8758D0();
            sub_1DD826640();
            swift_unknownObjectRelease();
            v91 = sub_1DD6FA9F4();
            v92(v91, v106);
            v93 = sub_1DD6DDEDC();
            v94(v93);
            v62 = 0;
            v63 = 0;
            v64 = v111;
            v61 = v112;
            v65 = 0uLL;
            goto LABEL_17;
          case 6:
            sub_1DD8055B4();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD8058FC();
            sub_1DD700C9C();
            sub_1DD8758D0();
            sub_1DD826640();
            swift_unknownObjectRelease();
            v95 = sub_1DD6FA9F4();
            v96(v95, v107);
            v97 = sub_1DD6DDEDC();
            v98(v97);
            sub_1DD8256F8();
            v64 = 6;
            v65 = 0uLL;
            v63 = 64;
            goto LABEL_17;
          case 7:
            sub_1DD80550C();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD8058A8();
            sub_1DD700C9C();
            sub_1DD8758D0();
            sub_1DD826640();
            swift_unknownObjectRelease();
            v87 = sub_1DD6FA9F4();
            v88(v87, v108);
            v89 = sub_1DD6DDEDC();
            v90(v89);
            v64 = 7;
            v61 = v112;
            v62 = v113;
            v65 = v114;
            v63 = v115 | 0x80;
            goto LABEL_17;
          default:
            sub_1DD805854();
            sub_1DD8269B0();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v57 = sub_1DD824890();
            v58(v57, v40);
            v59 = sub_1DD6FE110();
            v60(v59);
            *&v65 = sub_1DD8252DC();
LABEL_16:
            v20 = v110;
LABEL_17:
            *v109 = v64;
            *(v109 + 8) = v61;
            *(v109 + 16) = v62;
            *(v109 + 24) = v65;
            *(v109 + 40) = v63;
            break;
        }

        goto LABEL_10;
      }
    }

    v66 = sub_1DD875740();
    sub_1DD6E41BC(v66, MEMORY[0x1E69E6B28]);
    sub_1DD82762C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v43 = &type metadata for SystemRequirement;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v67 = sub_1DD6FEB10();
    v68(v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = sub_1DD6DEBBC();
    v70(v69, v20);
  }

  v20 = v110;
LABEL_10:
  sub_1DD6E1EC8(v20);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E1D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65526E496E676973 && a2 == 0xEE00646572697571;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001DD8B7100 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001DD8B7120 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7E1E30(char a1)
{
  if (!a1)
  {
    return 0x65526E496E676973;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000018;
}

uint64_t sub_1DD7E1ECC(uint64_t a1)
{
  v2 = sub_1DD805A4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E1F08(uint64_t a1)
{
  v2 = sub_1DD805A4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E1F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E1D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E1F74(uint64_t a1)
{
  v2 = sub_1DD8059A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E1FB0(uint64_t a1)
{
  v2 = sub_1DD8059A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E1FEC(uint64_t a1)
{
  v2 = sub_1DD805AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2028(uint64_t a1)
{
  v2 = sub_1DD805AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2064(uint64_t a1)
{
  v2 = sub_1DD8059F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E20A0(uint64_t a1)
{
  v2 = sub_1DD8059F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppRequirement.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  sub_1DD826784();
  sub_1DD710A9C(&qword_1ECD12C00, &qword_1DD88A260);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD82480C(v26, v36);
  sub_1DD710A9C(&qword_1ECD12C08, &qword_1DD88A268);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E9924(v28, v37);
  sub_1DD710A9C(&qword_1ECD12C10, &qword_1DD88A270);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD12C18, &qword_1DD88A278);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DDFE4();
  v31 = *v23;
  sub_1DD6FE770(v24);
  sub_1DD8059A4();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (v31)
  {
    if (v31 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD805A4C();
      sub_1DD824CD8();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD8059F8();
      sub_1DD824AE4();
    }

    sub_1DD875910();
  }

  else
  {
    sub_1DD805AA0();
    sub_1DD824CD8();
    sub_1DD875910();
  }

  v32 = sub_1DD6DED98();
  v33(v32);
  v34 = sub_1DD6E0F98();
  v35(v34);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void AppRequirement.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v44 = v4;
  sub_1DD710A9C(&qword_1ECD12C40, &qword_1DD88A280);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD824F70(v6);
  sub_1DD710A9C(&qword_1ECD12C48, &qword_1DD88A288);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  v8 = sub_1DD710A9C(&qword_1ECD12C50, &qword_1DD88A290);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD12C58, &qword_1DD88A298);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  v11 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD8059A4();
  sub_1DD6E4218();
  sub_1DD827620();
  sub_1DD875B90();
  if (!v1)
  {
    v45 = v3;
    sub_1DD6FA3D0();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B24();
    if (!v12)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v19 == v20)
      {
        __break(1u);
        return;
      }

      v21 = *(v18 + v17);
      sub_1DD77E6E4(v13, v14, v15, v16, v17);
      sub_1DD6ED830();
      sub_1DD6E0194();
      v23 = v22;
      swift_unknownObjectRelease();
      if (v11 == v23 >> 1)
      {
        if (v21)
        {
          if (v21 == 1)
          {
            sub_1DD6DEC54();
            sub_1DD805A4C();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD8274EC();
            swift_unknownObjectRelease();
            v32 = sub_1DD6E61C4();
            v33(v32);
            v34 = sub_1DD825998();
            v35(v34);
          }

          else
          {
            sub_1DD6EFF88();
            sub_1DD8059F8();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD8274D8();
            swift_unknownObjectRelease();
            v40 = sub_1DD705C50();
            v41(v40);
            v42 = sub_1DD82622C();
            v43(v42, v21);
          }
        }

        else
        {
          sub_1DD805AA0();
          sub_1DD6E4040();
          sub_1DD875800();
          swift_unknownObjectRelease();
          v36 = sub_1DD6DED98();
          v37(v36, v8);
          v38 = sub_1DD8255C0();
          v39(v38);
          v0 = v44;
        }

        *v0 = v21;
        sub_1DD6E1EC8(v45);
        goto LABEL_11;
      }
    }

    v24 = sub_1DD875740();
    sub_1DD6E41BC(v24, MEMORY[0x1E69E6B28]);
    v26 = v25;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v26 = &type metadata for AppRequirement;
    sub_1DD6FA3D0();
    v27 = sub_1DD875810();
    sub_1DD6DF100(v27);
    sub_1DD8250B8();
    v28 = sub_1DD700660();
    v29(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = sub_1DD6FE110();
    v31(v30);
    v3 = v45;
  }

  sub_1DD6E1EC8(v3);
LABEL_11:
  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E28A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001DD8B7140 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD8B7160 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x80000001DD8B7180 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001DD8B71B0 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001DD8B71D0 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001DD8B71F0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001DD8B7210 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001ALL && 0x80000001DD8B7230 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

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

unint64_t sub_1DD7E2B28(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7E2C10(uint64_t a1)
{
  v2 = sub_1DD805BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2C4C(uint64_t a1)
{
  v2 = sub_1DD805BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E28A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E2CB8(uint64_t a1)
{
  v2 = sub_1DD805AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2CF4(uint64_t a1)
{
  v2 = sub_1DD805AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2D30(uint64_t a1)
{
  v2 = sub_1DD805B48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2D6C(uint64_t a1)
{
  v2 = sub_1DD805B48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2DA8(uint64_t a1)
{
  v2 = sub_1DD805C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2DE4(uint64_t a1)
{
  v2 = sub_1DD805C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2E20(uint64_t a1)
{
  v2 = sub_1DD805B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2E5C(uint64_t a1)
{
  v2 = sub_1DD805B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2E98(uint64_t a1)
{
  v2 = sub_1DD805CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2ED4(uint64_t a1)
{
  v2 = sub_1DD805CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2F10(uint64_t a1)
{
  v2 = sub_1DD805D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2F4C(uint64_t a1)
{
  v2 = sub_1DD805D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2F88(uint64_t a1)
{
  v2 = sub_1DD805D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2FC4(uint64_t a1)
{
  v2 = sub_1DD805D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E3000(uint64_t a1)
{
  v2 = sub_1DD805C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E303C(uint64_t a1)
{
  v2 = sub_1DD805C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PermissionRequirement.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD12C60, &qword_1DD88A2A0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD82486C(v2, v23);
  sub_1DD710A9C(&qword_1ECD12C68, &qword_1DD88A2A8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD824A4C(v4, v24);
  sub_1DD710A9C(&qword_1ECD12C70, &qword_1DD88A2B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD824C9C(v6, v25);
  sub_1DD710A9C(&qword_1ECD12C78, &qword_1DD88A2B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD824934(v8, v26);
  sub_1DD710A9C(&qword_1ECD12C80, &qword_1DD88A2C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824A38(v10, v27);
  sub_1DD710A9C(&qword_1ECD12C88, &qword_1DD88A2C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD824B94(v12, v28);
  v29 = sub_1DD710A9C(&qword_1ECD12C90, &qword_1DD88A2D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = sub_1DD710A9C(&qword_1ECD12C98, &qword_1DD88A2D8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E9560();
  sub_1DD710A9C(&qword_1ECD12CA0, &qword_1DD88A2E0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E7258();
  v17 = *v0;
  sub_1DD70066C();
  sub_1DD805AF4();
  sub_1DD7039CC();
  sub_1DD875BB0();
  switch(v17)
  {
    case 1:
      sub_1DD805D40();
      sub_1DD6FF0F0();
      sub_1DD875910();
      v18 = sub_1DD6E5DE8();
      v20 = v29;
      break;
    case 2:
      sub_1DD805CEC();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 3:
      sub_1DD805C98();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 4:
      sub_1DD805C44();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 5:
      sub_1DD805BF0();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 6:
      sub_1DD82753C();
      sub_1DD805B9C();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 7:
      sub_1DD826E94();
      sub_1DD805B48();
      sub_1DD6FF0F0();
      sub_1DD875910();
LABEL_10:
      v18 = sub_1DD6E61C4();
      break;
    default:
      sub_1DD805D94();
      sub_1DD6FF0F0();
      sub_1DD875910();
      v18 = sub_1DD6FA9F4();
      v20 = v14;
      break;
  }

  v19(v18, v20);
  v21 = sub_1DD825B84();
  v22(v21);
  sub_1DD6E0C78();
}

void PermissionRequirement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v21;
  a20 = v22;
  sub_1DD705C5C();
  v70 = v23;
  sub_1DD710A9C(&qword_1ECD12CF0, &qword_1DD88A2E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD82480C(v25, v62);
  sub_1DD710A9C(&qword_1ECD12CF8, &qword_1DD88A2F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6FF92C(v27, v63);
  sub_1DD710A9C(&qword_1ECD12D00, &qword_1DD88A2F8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E5D10(v29, v64);
  sub_1DD710A9C(&qword_1ECD12D08, &qword_1DD88A300);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD824A4C(v31, v65);
  v69 = sub_1DD710A9C(&qword_1ECD12D10, &qword_1DD88A308);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD82495C(v33, v66);
  sub_1DD710A9C(&qword_1ECD12D18, &qword_1DD88A310);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD82486C(v35, v67);
  v36 = sub_1DD710A9C(&qword_1ECD12D20, &qword_1DD88A318);
  sub_1DD6DF3FC(v36, &a18);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD12D28, &qword_1DD88A320);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD12D30, &qword_1DD88A328);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E9560();
  sub_1DD824D14(v20);
  sub_1DD805AF4();
  sub_1DD8259BC();
  sub_1DD8274A0();
  sub_1DD875B90();
  if (!v72)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    if (v41 != v40 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v68 = *(v43 + v42);
      sub_1DD6ED830();
      v47 = v46;
      v49 = v48;
      swift_unknownObjectRelease();
      if (v47 == v49 >> 1)
      {
        switch(v68)
        {
          case 1:
            sub_1DD805D40();
            sub_1DD8256D4();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v50 = sub_1DD702E84();
            v52 = &a18;
            goto LABEL_16;
          case 2:
            sub_1DD805CEC();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v50 = sub_1DD6E4290();
            break;
          case 3:
            sub_1DD805C98();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v50 = sub_1DD6DED98();
            v59 = v69;
            break;
          case 4:
            sub_1DD805C44();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 5:
            sub_1DD805BF0();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 6:
            sub_1DD82753C();
            sub_1DD805B9C();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 7:
            sub_1DD826E94();
            sub_1DD805B48();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
LABEL_19:
            v50 = sub_1DD6DED98();
            break;
          default:
            sub_1DD805D94();
            sub_1DD8256D4();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v50 = sub_1DD702E84();
            v52 = &a13;
LABEL_16:
            v59 = *(v52 - 32);
            break;
        }

        v51(v50, v59);
        v60 = sub_1DD825158();
        v61(v60);
        v58 = v20;
        *v70 = v68;
        goto LABEL_10;
      }
    }

    v53 = sub_1DD875740();
    sub_1DD6E41BC(v53, MEMORY[0x1E69E6B28]);
    sub_1DD82762C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v71 = &type metadata for PermissionRequirement;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v54 = sub_1DD6FEB10();
    v55(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = sub_1DD825158();
    v57(v56);
  }

  v58 = v20;
LABEL_10:
  sub_1DD6E1EC8(v58);
  sub_1DD703860();
  sub_1DD6E0C78();
}

double ActionFailure.failure.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_1DD804044(v2, v3, v4, v5, v6, v7);
}

void ActionFailure.failure.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DD8040A4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  sub_1DD6FEB38();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t ActionFailure.concludesStreamingStatementID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DD703958(v2, v3, v4);
}

__n128 ActionFailure.concludesStreamingStatementID.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1DD70148C(v1[6], v1[7], v1[8]);
  result = v4;
  *(v1 + 3) = v4;
  v1[8] = v2;
  return result;
}

__n128 ActionFailure.init(failure:concludesStreamingStatementID:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_1DD826F78(a2, a3);
  v5 = *(v4 + 16);
  v7 = v6[1];
  *a1 = *v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = sub_1DD825640();
  sub_1DD70148C(v10, v11, v12);
  result = v14;
  *(a1 + 48) = v14;
  *(a1 + 64) = v5;
  return result;
}

void static ActionFailure.Failure.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1DD826DB8();
  a33 = v34;
  a34 = v35;
  v37 = *v36;
  v38 = *(v36 + 8);
  v40 = *(v36 + 16);
  v39 = *(v36 + 24);
  v41 = *(v36 + 32);
  v42 = *(v36 + 40);
  v44 = *v43;
  v45 = *(v43 + 8);
  v47 = *(v43 + 16);
  v46 = *(v43 + 24);
  v48 = *(v43 + 32);
  v49 = *(v43 + 40);
  a11 = *v36;
  a12 = v38;
  a13 = v40;
  a14 = v39;
  a15 = v41;
  a16 = v42;
  a17 = v44;
  a18 = v45;
  a19 = v47;
  a20 = v46;
  a21 = v48;
  a22 = v49;
  if (v42)
  {
    if (v42 == 1)
    {
      if (v49 == 1)
      {
        if (v38)
        {
          if (v45)
          {
            if (v37 != v44 || v38 != v45)
            {
              sub_1DD6DED5C();
              sub_1DD702AB4();
              v129 = v51;
              sub_1DD875A30();
              v52 = sub_1DD825378();
              sub_1DD804044(v52, v53, v54, v55, v129, 1);
              v56 = sub_1DD6E80FC();
              sub_1DD804044(v56, v57, v58, v59, v60, 1);
              sub_1DD824154(&a11, &unk_1ECD12D38);
              goto LABEL_171;
            }

            sub_1DD6DED5C();
            sub_1DD7051CC();
            sub_1DD804044(v92, v93, v94, v95, v96, 1);
            v97 = sub_1DD6DED5C();
LABEL_65:
            sub_1DD804044(v97, v98, v40, v39, v41, 1);
            sub_1DD824154(&a11, &unk_1ECD12D38);
            goto LABEL_171;
          }
        }

        else if (!v45)
        {
          sub_1DD7051CC();
          sub_1DD804044(v105, v106, v107, v108, v109, 1);
          v97 = v37;
          v98 = 0;
          goto LABEL_65;
        }

        v77 = sub_1DD825378();
        sub_1DD804044(v77, v78, v79, v80, v81, 1);
        v82 = sub_1DD6E80FC();
        v87 = 1;
LABEL_170:
        sub_1DD804044(v82, v83, v84, v85, v86, v87);
        sub_1DD824154(&a11, &unk_1ECD12D38);
        goto LABEL_171;
      }

      goto LABEL_169;
    }

    if (v40 | v38 | v37 | v39 | v41)
    {
      v74 = v40 | v38 | v39 | v41;
      if (v37 != 1 || v74)
      {
        if (v37 != 2 || v74)
        {
          if (v37 != 3 || v74)
          {
            if (v37 != 4 || v74)
            {
              if (v37 != 5 || v74)
              {
                if (v37 != 6 || v74)
                {
                  if (v37 != 7 || v74)
                  {
                    if (v37 != 8 || v74)
                    {
                      if (v37 != 9 || v74)
                      {
                        if (v37 != 10 || v74)
                        {
                          if (v37 != 11 || v74)
                          {
                            if (v37 != 12 || v74)
                            {
                              if (v37 != 13 || v74)
                              {
                                if (v37 != 14 || v74)
                                {
                                  if (v37 != 15 || v74)
                                  {
                                    if (v37 != 16 || v74)
                                    {
                                      if (v49 != 2 || v44 != 17)
                                      {
                                        goto LABEL_169;
                                      }
                                    }

                                    else if (v49 != 2 || v44 != 16)
                                    {
                                      goto LABEL_169;
                                    }
                                  }

                                  else if (v49 != 2 || v44 != 15)
                                  {
                                    goto LABEL_169;
                                  }
                                }

                                else if (v49 != 2 || v44 != 14)
                                {
                                  goto LABEL_169;
                                }
                              }

                              else if (v49 != 2 || v44 != 13)
                              {
                                goto LABEL_169;
                              }
                            }

                            else if (v49 != 2 || v44 != 12)
                            {
                              goto LABEL_169;
                            }
                          }

                          else if (v49 != 2 || v44 != 11)
                          {
                            goto LABEL_169;
                          }
                        }

                        else if (v49 != 2 || v44 != 10)
                        {
                          goto LABEL_169;
                        }
                      }

                      else if (v49 != 2 || v44 != 9)
                      {
                        goto LABEL_169;
                      }
                    }

                    else if (v49 != 2 || v44 != 8)
                    {
                      goto LABEL_169;
                    }
                  }

                  else if (v49 != 2 || v44 != 7)
                  {
                    goto LABEL_169;
                  }
                }

                else if (v49 != 2 || v44 != 6)
                {
                  goto LABEL_169;
                }
              }

              else if (v49 != 2 || v44 != 5)
              {
                goto LABEL_169;
              }
            }

            else if (v49 != 2 || v44 != 4)
            {
              goto LABEL_169;
            }
          }

          else if (v49 != 2 || v44 != 3)
          {
            goto LABEL_169;
          }
        }

        else if (v49 != 2 || v44 != 2)
        {
          goto LABEL_169;
        }
      }

      else if (v49 != 2 || v44 != 1)
      {
        goto LABEL_169;
      }

      if (v47 | v45 | v46 | v48)
      {
LABEL_169:
        v123 = sub_1DD825378();
        sub_1DD804044(v123, v124, v125, v126, v127, v128);
        v82 = sub_1DD6E80FC();
        v87 = v42;
        goto LABEL_170;
      }
    }

    else if (v49 != 2 || v47 | v45 | v44 | v46 | v48)
    {
      goto LABEL_169;
    }

    sub_1DD824154(&a11, &unk_1ECD12D38);
    goto LABEL_171;
  }

  if (v49)
  {
    goto LABEL_169;
  }

  if (v37 != v44 || v38 != v45)
  {
    sub_1DD6DED5C();
    sub_1DD702AB4();
    if ((sub_1DD875A30() & 1) == 0)
    {
      v99 = sub_1DD825378();
      sub_1DD804044(v99, v100, v101, v102, v103, 0);
      v82 = sub_1DD6E80FC();
      v87 = 0;
      goto LABEL_170;
    }
  }

  if (v40 == v47 && v39 == v46)
  {
    v89 = sub_1DD6F9BF8();
    sub_1DD804044(v89, v90, v40, v39, v91, 0);
  }

  else
  {
    sub_1DD6E87AC();
    sub_1DD7051CC();
    v64 = v63;
    sub_1DD875A30();
    v65 = sub_1DD825378();
    sub_1DD804044(v65, v66, v67, v68, v64, 0);
  }

  v69 = sub_1DD6E80FC();
  sub_1DD804044(v69, v70, v71, v72, v73, 0);
  sub_1DD824154(&a11, &unk_1ECD12D38);
LABEL_171:
  sub_1DD826D9C();
}

BOOL static ActionFailure.DeveloperDefinedError.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v1 == *v2 && v3[1] == v2[1];
  if (v10 || (sub_1DD875A30()) && (v4 == v7 ? (v11 = v5 == v8) : (v11 = 0), v11 || (sub_1DD6E8090(), (sub_1DD875A30())))
  {
    return v6 == v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD7E45AC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1DD875A30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD7E4608(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001DD8B7250 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001DD8B7270 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001DD8B7290 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6173694469666977 && a2 == 0xEC00000064656C62;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001DD8B72B0 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x466B726F7774656ELL && a2 == 0xEE006572756C6961;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x466C616974726170 && a2 == 0xEE006572756C6961;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001DD8B72D0 == a2;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ALL && 0x80000001DD8B72F0 == a2;
                  if (v13 || (sub_1DD875A30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F4E797469746E65 && a2 == 0xEE00646E756F4674;
                    if (v14 || (sub_1DD875A30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001DD8B7310 == a2;
                      if (v15 || (sub_1DD875A30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001BLL && 0x80000001DD8B7330 == a2;
                        if (v16 || (sub_1DD875A30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
                          if (v17 || (sub_1DD875A30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6F54656C62616E75 && a2 == 0xEC0000006F646E55;
                            if (v18 || (sub_1DD875A30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL;
                              if (v19 || (sub_1DD875A30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000015 && 0x80000001DD8B7350 == a2;
                                if (v20 || (sub_1DD875A30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F54656C62616E75 && a2 == 0xEE006C65636E6143;
                                  if (v21 || (sub_1DD875A30() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000001DLL && 0x80000001DD8B7370 == a2;
                                    if (v22 || (sub_1DD875A30() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000016 && 0x80000001DD8B7390 == a2;
                                      if (v23 || (sub_1DD875A30() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0xD000000000000015 && 0x80000001DD8B73B0 == a2)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1DD875A30();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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
}

unint64_t sub_1DD7E4C08(char a1)
{
  result = 0x6173694469666977;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 10:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x466B726F7774656ELL;
      break;
    case 6:
      result = 0x466C616974726170;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0x6F4E797469746E65;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x69686374614D6F6ELL;
      break;
    case 13:
    case 16:
      result = 0x6F54656C62616E75;
      break;
    case 14:
      result = 0x61436E6F69746361;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1DD7E4E74(uint64_t a1)
{
  v2 = sub_1DD806088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E4EB0(uint64_t a1)
{
  v2 = sub_1DD806088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E4EEC(uint64_t a1)
{
  v2 = sub_1DD8061D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E4F28(uint64_t a1)
{
  v2 = sub_1DD8061D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E4F64(uint64_t a1)
{
  v2 = sub_1DD8063D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E4FA0(uint64_t a1)
{
  v2 = sub_1DD8063D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E4FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E4608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E500C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7E4C00();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7E5034(uint64_t a1)
{
  v2 = sub_1DD805DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5070(uint64_t a1)
{
  v2 = sub_1DD805DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E50AC(uint64_t a1)
{
  v2 = sub_1DD805FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E50E8(uint64_t a1)
{
  v2 = sub_1DD805FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E5124(uint64_t a1)
{
  v2 = sub_1DD80622C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5160(uint64_t a1)
{
  v2 = sub_1DD80622C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E519C(uint64_t a1)
{
  v2 = sub_1DD806280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E51D8(uint64_t a1)
{
  v2 = sub_1DD806280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E5214(uint64_t a1)
{
  v2 = sub_1DD806478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5250(uint64_t a1)
{
  v2 = sub_1DD806478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E528C(uint64_t a1)
{
  v2 = sub_1DD80637C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E52C8(uint64_t a1)
{
  v2 = sub_1DD80637C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E5304(uint64_t a1)
{
  v2 = sub_1DD806130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5340(uint64_t a1)
{
  v2 = sub_1DD806130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E537C(uint64_t a1)
{
  v2 = sub_1DD806328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E53B8(uint64_t a1)
{
  v2 = sub_1DD806328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E53F4(uint64_t a1)
{
  v2 = sub_1DD8064CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5430(uint64_t a1)
{
  v2 = sub_1DD8064CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E546C(uint64_t a1)
{
  v2 = sub_1DD806520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E54A8(uint64_t a1)
{
  v2 = sub_1DD806520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E54E4(uint64_t a1)
{
  v2 = sub_1DD805F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5520(uint64_t a1)
{
  v2 = sub_1DD805F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E555C(uint64_t a1)
{
  v2 = sub_1DD805F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5598(uint64_t a1)
{
  v2 = sub_1DD805F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E55D4(uint64_t a1)
{
  v2 = sub_1DD805E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5610(uint64_t a1)
{
  v2 = sub_1DD805E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E564C(uint64_t a1)
{
  v2 = sub_1DD8060DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5688(uint64_t a1)
{
  v2 = sub_1DD8060DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E56C4(uint64_t a1)
{
  v2 = sub_1DD8062D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5700(uint64_t a1)
{
  v2 = sub_1DD8062D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E573C(uint64_t a1)
{
  v2 = sub_1DD806184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5778(uint64_t a1)
{
  v2 = sub_1DD806184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E57B4(uint64_t a1)
{
  v2 = sub_1DD805EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E57F0(uint64_t a1)
{
  v2 = sub_1DD805EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E582C(uint64_t a1)
{
  v2 = sub_1DD806424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5868(uint64_t a1)
{
  v2 = sub_1DD806424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.Failure.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  sub_1DD710A9C(&qword_1ECD12D40, &qword_1DD88A338);
  sub_1DD6DDEAC();
  v143[2] = v27;
  v144 = v26;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD824FD8(v29, v122);
  v30 = sub_1DD710A9C(&qword_1ECD12D48, &qword_1DD88A340);
  sub_1DD6DF3FC(v30, v137);
  v126 = v31;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v33);
  v34 = sub_1DD710A9C(&qword_1ECD12D50, &qword_1DD88A348);
  sub_1DD6DF3FC(v34, v136);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v36);
  v37 = sub_1DD710A9C(&qword_1ECD12D58, &qword_1DD88A350);
  sub_1DD6DF3FC(v37, v138);
  v127 = v38;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v40);
  sub_1DD710A9C(&qword_1ECD12D60, &qword_1DD88A358);
  sub_1DD6DDEAC();
  v142[2] = v42;
  v143[0] = v41;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD824FEC(v44, v123);
  v45 = sub_1DD710A9C(&qword_1ECD12D68, &qword_1DD88A360);
  sub_1DD6DF3FC(v45, v139);
  v128 = v46;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v48);
  v49 = sub_1DD710A9C(&qword_1ECD12D70, &qword_1DD88A368);
  sub_1DD6DF3FC(v49, v140);
  v129 = v50;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v52);
  v53 = sub_1DD710A9C(&qword_1ECD12D78, &qword_1DD88A370);
  sub_1DD6DF3FC(v53, v141);
  v130 = v54;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v56);
  v57 = sub_1DD710A9C(&qword_1ECD12D80, &qword_1DD88A378);
  sub_1DD6DF3FC(v57, v142);
  v131 = v58;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v60);
  v61 = sub_1DD710A9C(&qword_1ECD12D88, &qword_1DD88A380);
  sub_1DD6DF3FC(v61, v143);
  v132 = v62;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD8253A0(v64);
  v65 = sub_1DD710A9C(&qword_1ECD12D90, &qword_1DD88A388);
  sub_1DD6DF3FC(v65, &v144);
  v133 = v66;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD8253E0(v68, v124);
  v69 = sub_1DD710A9C(&qword_1ECD12D98, &qword_1DD88A390);
  sub_1DD6DF3FC(v69, v147);
  v134 = v70;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v72);
  v73 = sub_1DD710A9C(&qword_1ECD12DA0, &qword_1DD88A398);
  sub_1DD6DF3FC(v73, &v148);
  v135 = v74;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v76);
  v77 = sub_1DD710A9C(&qword_1ECD12DA8, &qword_1DD88A3A0);
  sub_1DD6DF3FC(v77, v151);
  v136[0] = v78;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v80);
  v81 = sub_1DD710A9C(&qword_1ECD12DB0, &qword_1DD88A3A8);
  sub_1DD6DF3FC(v81, &a9);
  v137[0] = v82;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v84);
  v85 = sub_1DD710A9C(&qword_1ECD12DB8, &qword_1DD88A3B0);
  sub_1DD6DF3FC(v85, &a12);
  v138[0] = v86;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v88);
  v89 = sub_1DD710A9C(&qword_1ECD12DC0, &qword_1DD88A3B8);
  sub_1DD6DF3FC(v89, &a15);
  v139[0] = v90;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1DD824FB0(v92);
  v93 = sub_1DD710A9C(&qword_1ECD12DC8, &qword_1DD88A3C0);
  sub_1DD6DF3FC(v93, &a18);
  v140[0] = v94;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v95);
  sub_1DD825480(v96, v125);
  sub_1DD710A9C(&qword_1ECD12DD0, &qword_1DD88A3C8);
  sub_1DD6DDEAC();
  v141[0] = v98;
  v141[1] = v97;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v99);
  sub_1DD6E0C6C();
  sub_1DD826F24(v100);
  sub_1DD710A9C(&qword_1ECD12DD8, &qword_1DD88A3D0);
  sub_1DD6DDEAC();
  v141[2] = v102;
  v142[0] = v101;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD12DE0, &qword_1DD88A3D8);
  sub_1DD6DDEAC();
  v147[0] = v104;
  v147[1] = v105;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v106);
  sub_1DD6DDFE4();
  v107 = *(v20 + 8);
  a10 = *v20;
  v108 = *(v20 + 24);
  v145 = *(v20 + 16);
  v109 = *(v20 + 32);
  v110 = *(v20 + 40);
  sub_1DD6E6C94(v25);
  sub_1DD805DE8();
  v146 = v21;
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (!v110)
  {
    LOBYTE(v148) = 15;
    sub_1DD805FE0();
    sub_1DD824AB4();
    sub_1DD875910();
    v148 = a10;
    v149 = v107;
    v150 = v145;
    v151[0] = v108;
    v151[1] = v109;
    sub_1DD806034();
    sub_1DD825AB4();
    sub_1DD8759D0();
    goto LABEL_5;
  }

  if (v110 != 1)
  {
    if (v145 | v107 | a10 | v108 | v109)
    {
      v115 = v145 | v107 | v108 | v109;
      if (a10 != 1 || v115)
      {
        if (a10 != 2 || v115)
        {
          if (a10 != 3 || v115)
          {
            if (a10 != 4 || v115)
            {
              if (a10 != 5 || v115)
              {
                if (a10 != 6 || v115)
                {
                  if (a10 != 7 || v115)
                  {
                    if (a10 != 8 || v115)
                    {
                      if (a10 != 9 || v115)
                      {
                        if (a10 != 10 || v115)
                        {
                          if (a10 != 11 || v115)
                          {
                            if (a10 != 12 || v115)
                            {
                              if (a10 != 13 || v115)
                              {
                                if (a10 != 14 || v115)
                                {
                                  if (a10 != 15 || v115)
                                  {
                                    if (a10 != 16 || v115)
                                    {
                                      LOBYTE(v148) = 18;
                                      sub_1DD805EE4();
                                      sub_1DD705200(&type metadata for ActionFailure.Failure.ValueSelectionRequiredCodingKeys, &v148);
                                      v116 = sub_1DD702E84();
                                      v119 = v137;
                                    }

                                    else
                                    {
                                      LOBYTE(v148) = 17;
                                      sub_1DD805F38();
                                      sub_1DD705200(&type metadata for ActionFailure.Failure.SearchSucceededNoMatchingToolCodingKeys, &v148);
                                      v116 = sub_1DD702E84();
                                      v119 = v136;
                                    }
                                  }

                                  else
                                  {
                                    LOBYTE(v148) = 16;
                                    sub_1DD805F8C();
                                    sub_1DD705200(&type metadata for ActionFailure.Failure.UnableToCancelCodingKeys, &v148);
                                    v116 = sub_1DD702E84();
                                    v119 = v138;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v148) = 14;
                                  sub_1DD806088();
                                  sub_1DD705200(&type metadata for ActionFailure.Failure.ActionCanceledCodingKeys, &v148);
                                  v116 = sub_1DD702E84();
                                  v119 = v139;
                                }
                              }

                              else
                              {
                                LOBYTE(v148) = 13;
                                sub_1DD8060DC();
                                sub_1DD705200(&type metadata for ActionFailure.Failure.UnableToUndoCodingKeys, &v148);
                                v116 = sub_1DD702E84();
                                v119 = v140;
                              }
                            }

                            else
                            {
                              LOBYTE(v148) = 12;
                              sub_1DD806130();
                              sub_1DD705200(&type metadata for ActionFailure.Failure.NoMatchingToolCodingKeys, &v148);
                              v116 = sub_1DD702E84();
                              v119 = v141;
                            }
                          }

                          else
                          {
                            LOBYTE(v148) = 11;
                            sub_1DD806184();
                            sub_1DD705200(&type metadata for ActionFailure.Failure.ValueDisambiguationRejectedCodingKeys, &v148);
                            v116 = sub_1DD702E84();
                            v119 = v142;
                          }
                        }

                        else
                        {
                          LOBYTE(v148) = 10;
                          sub_1DD8061D8();
                          sub_1DD705200(&type metadata for ActionFailure.Failure.ActionNotAllowedCodingKeys, &v148);
                          v116 = sub_1DD702E84();
                          v119 = v143;
                        }
                      }

                      else
                      {
                        LOBYTE(v148) = 9;
                        sub_1DD80622C();
                        sub_1DD705200(&type metadata for ActionFailure.Failure.EntityNotFoundCodingKeys, &v148);
                        v116 = sub_1DD702E84();
                        v119 = &v144;
                      }
                    }

                    else
                    {
                      LOBYTE(v148) = 8;
                      sub_1DD806280();
                      sub_1DD705200(&type metadata for ActionFailure.Failure.FeatureCurrentlyRestrictedCodingKeys, &v148);
                      v116 = sub_1DD702E84();
                      v119 = v147;
                    }
                  }

                  else
                  {
                    LOBYTE(v148) = 7;
                    sub_1DD8062D4();
                    sub_1DD705200(&type metadata for ActionFailure.Failure.UnsupportedOnDeviceCodingKeys, &v148);
                    v116 = sub_1DD702E84();
                    v119 = &v148;
                  }
                }

                else
                {
                  LOBYTE(v148) = 6;
                  sub_1DD806328();
                  sub_1DD705200(&type metadata for ActionFailure.Failure.PartialFailureCodingKeys, &v148);
                  v116 = sub_1DD702E84();
                  v119 = v151;
                }
              }

              else
              {
                LOBYTE(v148) = 5;
                sub_1DD80637C();
                sub_1DD705200(&type metadata for ActionFailure.Failure.NetworkFailureCodingKeys, &v148);
                v116 = sub_1DD702E84();
                v119 = &a9;
              }
            }

            else
            {
              LOBYTE(v148) = 4;
              sub_1DD8063D0();
              sub_1DD705200(&type metadata for ActionFailure.Failure.BluetoothDisabledCodingKeys, &v148);
              v116 = sub_1DD702E84();
              v119 = &a12;
            }
          }

          else
          {
            LOBYTE(v148) = 3;
            sub_1DD806424();
            sub_1DD705200(&type metadata for ActionFailure.Failure.WifiDisabledCodingKeys, &v148);
            v116 = sub_1DD702E84();
            v119 = &a15;
          }
        }

        else
        {
          LOBYTE(v148) = 2;
          sub_1DD806478();
          sub_1DD705200(&type metadata for ActionFailure.Failure.LocationDisabledCodingKeys, &v148);
          v116 = sub_1DD702E84();
          v119 = &a18;
        }

        v117 = *(v119 - 32);
        goto LABEL_59;
      }

      LOBYTE(v148) = 1;
      sub_1DD8064CC();
      sub_1DD824E08(&type metadata for ActionFailure.Failure.PreciseLocationDisabledCodingKeys, &v148);
    }

    else
    {
      LOBYTE(v148) = 0;
      sub_1DD806520();
      sub_1DD824E08(&type metadata for ActionFailure.Failure.PreflightCheckFailureCodingKeys, &v148);
    }

    v116 = sub_1DD6DED98();
LABEL_59:
    v118(v116, v117);
    v120 = sub_1DD6E21D0();
    v121(v120);
    goto LABEL_60;
  }

  LOBYTE(v148) = 19;
  sub_1DD805E3C();
  sub_1DD824AB4();
  sub_1DD875910();
  v148 = a10;
  v149 = v107;
  sub_1DD805E90();
  sub_1DD825AB4();
  sub_1DD8759D0();
LABEL_5:
  v111 = sub_1DD824838();
  v112(v111);
  v113 = sub_1DD824A60();
  v114(v113);
LABEL_60:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ActionFailure.Failure.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  sub_1DD7038A0();
  v223 = v24;
  v25 = sub_1DD710A9C(&qword_1ECD12EA0, &qword_1DD88A3E0);
  sub_1DD6DF3FC(v25, &a14);
  v214[1] = v26;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD824C9C(v28, v196);
  v29 = sub_1DD710A9C(&qword_1ECD12EA8, &qword_1DD88A3E8);
  sub_1DD6DF3FC(v29, &a12);
  v213[1] = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824948(v32, v197);
  v33 = sub_1DD710A9C(&qword_1ECD12EB0, &qword_1DD88A3F0);
  sub_1DD6DF3FC(v33, &a10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824FD8(v35, v198);
  v36 = sub_1DD710A9C(&qword_1ECD12EB8, &qword_1DD88A3F8);
  sub_1DD6DF3FC(v36, v228);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD824CB0(v38, v199);
  v39 = sub_1DD710A9C(&qword_1ECD12EC0, &qword_1DD88A400);
  sub_1DD6DF3FC(v39, &v229);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD824934(v41, v200);
  v42 = sub_1DD710A9C(&qword_1ECD12EC8, &qword_1DD88A408);
  sub_1DD6DF3FC(v42, v227);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD824FEC(v44, v201);
  v45 = sub_1DD710A9C(&qword_1ECD12ED0, &qword_1DD88A410);
  sub_1DD6DF3FC(v45, &v225);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD824A38(v47, v202);
  v48 = sub_1DD710A9C(&qword_1ECD12ED8, &qword_1DD88A418);
  sub_1DD6DF3FC(v48, &v224);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD82546C(v50, v203);
  v51 = sub_1DD710A9C(&qword_1ECD12EE0, &qword_1DD88A420);
  sub_1DD6DF3FC(v51, &v223);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD825428(v53, v204);
  v54 = sub_1DD710A9C(&qword_1ECD12EE8, &qword_1DD88A428);
  sub_1DD6DF3FC(v54, &v222);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD824B94(v56, v205);
  v57 = sub_1DD710A9C(&qword_1ECD12EF0, &qword_1DD88A430);
  sub_1DD6DF3FC(v57, &v221);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6E0C6C();
  sub_1DD826F24(v59);
  v60 = sub_1DD710A9C(&qword_1ECD12EF8, &qword_1DD88A438);
  sub_1DD6DF3FC(v60, &v220);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD825480(v62, v206);
  v63 = sub_1DD710A9C(&qword_1ECD12F00, &qword_1DD88A440);
  sub_1DD6DF3FC(v63, &v219);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD6FF92C(v65, v207);
  v66 = sub_1DD710A9C(&qword_1ECD12F08, &qword_1DD88A448);
  sub_1DD6DF3FC(v66, &v218);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD824A4C(v68, v208);
  v69 = sub_1DD710A9C(&qword_1ECD12F10, &qword_1DD88A450);
  sub_1DD6DF3FC(v69, &v217);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v70);
  sub_1DD825410(v71, v209);
  v72 = sub_1DD710A9C(&qword_1ECD12F18, &qword_1DD88A458);
  sub_1DD6DF3FC(v72, &v216);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD8249DC(v74, v210);
  v75 = sub_1DD710A9C(&qword_1ECD12F20, &qword_1DD88A460);
  sub_1DD6DF3FC(v75, &v215);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1DD82495C(v77, v211);
  v78 = sub_1DD710A9C(&qword_1ECD12F28, &qword_1DD88A468);
  sub_1DD6DF3FC(v78, v214);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD705DF0(v80, v212);
  v81 = sub_1DD710A9C(&qword_1ECD12F30, &qword_1DD88A470);
  sub_1DD6DF3FC(v81, v213);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v82);
  sub_1DD6F0A58();
  v83 = sub_1DD710A9C(&qword_1ECD12F38, &qword_1DD88A478);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD12F40, &qword_1DD88A480);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1DD6DEBA0();
  v225 = v20;
  sub_1DD6E1C64();
  sub_1DD805DE8();
  sub_1DD6E4218();
  v86 = a10;
  sub_1DD875B90();
  if (!v86)
  {
    v87 = v224;
    a10 = v21;
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827758();
    if (!v88)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v89 == v90)
      {
        __break(1u);
        return;
      }

      v97 = *(v96 + v95);
      sub_1DD826C40(v91, v92, v93, v94, v95);
      sub_1DD6ED830();
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRelease();
      if (v99 == v101 >> 1)
      {
        v102 = v223;
        switch(v97)
        {
          case 1:
            LOBYTE(v226) = 1;
            sub_1DD8064CC();
            sub_1DD8256D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v155 = sub_1DD702E84();
            v156(v155);
            v157 = sub_1DD6EE278();
            v158(v157);
            sub_1DD6E388C();
            v111 = 1;
            break;
          case 2:
            LOBYTE(v226) = 2;
            sub_1DD806478();
            sub_1DD8256D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v143 = sub_1DD702E84();
            v144(v143);
            v145 = sub_1DD6EE278();
            v146(v145);
            sub_1DD6EFFA0();
            v111 = 2;
            goto LABEL_20;
          case 3:
            LOBYTE(v226) = 3;
            sub_1DD806424();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v147 = sub_1DD824BFC();
            v148(v147);
            v149 = sub_1DD6EE278();
            v150(v149);
            sub_1DD6E388C();
            v111 = 3;
            break;
          case 4:
            LOBYTE(v226) = 4;
            sub_1DD8063D0();
            sub_1DD8256D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v131 = sub_1DD702E84();
            v132(v131);
            v133 = sub_1DD6EE278();
            v134(v133);
            sub_1DD6E388C();
            v111 = 4;
            break;
          case 5:
            LOBYTE(v226) = 5;
            sub_1DD80637C();
            sub_1DD8256D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v163 = sub_1DD702E84();
            v164(v163);
            v165 = sub_1DD6EE278();
            v166(v165);
            sub_1DD6E388C();
            v111 = 5;
            break;
          case 6:
            LOBYTE(v226) = 6;
            sub_1DD806328();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v171 = sub_1DD702E84();
            v172(v171);
            v173 = sub_1DD6EE278();
            v174(v173);
            sub_1DD6E388C();
            v111 = 6;
            break;
          case 7:
            LOBYTE(v226) = 7;
            sub_1DD8062D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v151 = sub_1DD6FA9F4();
            v152(v151);
            v153 = sub_1DD6EE278();
            v154(v153);
            sub_1DD6E388C();
            v111 = 7;
            break;
          case 8:
            LOBYTE(v226) = 8;
            sub_1DD806280();
            sub_1DD8256D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v183 = sub_1DD702E84();
            v184(v183);
            v185 = sub_1DD6EE278();
            v186(v185);
            sub_1DD6E388C();
            v111 = 8;
            break;
          case 9:
            LOBYTE(v226) = 9;
            sub_1DD80622C();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v139 = sub_1DD702E84();
            v140(v139);
            v141 = sub_1DD6EE278();
            v142(v141);
            sub_1DD6E388C();
            v111 = 9;
            break;
          case 10:
            LOBYTE(v226) = 10;
            sub_1DD8061D8();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v179 = sub_1DD702E84();
            v180(v179);
            v181 = sub_1DD6EE278();
            v182(v181);
            sub_1DD6E388C();
            v111 = 10;
            break;
          case 11:
            LOBYTE(v226) = 11;
            sub_1DD806184();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v127 = sub_1DD702E84();
            v128(v127);
            v129 = sub_1DD6EE278();
            v130(v129);
            sub_1DD6E388C();
            v111 = 11;
            break;
          case 12:
            LOBYTE(v226) = 12;
            sub_1DD806130();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v135 = sub_1DD702E84();
            v136(v135);
            v137 = sub_1DD6EE278();
            v138(v137);
            sub_1DD6E388C();
            v111 = 12;
            break;
          case 13:
            LOBYTE(v226) = 13;
            sub_1DD8060DC();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v167 = sub_1DD702E84();
            v168(v167);
            v169 = sub_1DD6EE278();
            v170(v169);
            sub_1DD6E388C();
            v111 = 13;
            break;
          case 14:
            LOBYTE(v226) = 14;
            sub_1DD806088();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v123 = sub_1DD702E84();
            v124(v123);
            v125 = sub_1DD6EE278();
            v126(v125);
            sub_1DD6E388C();
            v111 = 14;
            break;
          case 15:
            LOBYTE(v226) = 15;
            sub_1DD805FE0();
            sub_1DD8272DC();
            sub_1DD6FA420();
            sub_1DD875800();
            sub_1DD8065C8();
            sub_1DD6F3128();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v188 = sub_1DD824BFC();
            v189(v188);
            v190 = sub_1DD6EE278();
            v191(v190);
            v122 = 0;
            v111 = v226;
            v107 = v227[0];
            v108 = v227[1];
            v109 = v228[0];
            v110 = v228[1];
            break;
          case 16:
            LOBYTE(v226) = 16;
            sub_1DD805F8C();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v118 = sub_1DD702E84();
            v119(v118);
            v120 = sub_1DD6EE278();
            v121(v120);
            sub_1DD6E388C();
            v111 = 15;
            break;
          case 17:
            LOBYTE(v226) = 17;
            sub_1DD805F38();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v159 = sub_1DD702E84();
            v160(v159, v213[0]);
            v161 = sub_1DD6EE278();
            v162(v161);
            sub_1DD6E388C();
            v111 = 16;
            break;
          case 18:
            LOBYTE(v226) = 18;
            sub_1DD805EE4();
            sub_1DD827458();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v175 = sub_1DD702E84();
            v176(v175, v214[0]);
            v177 = sub_1DD6EE278();
            v178(v177);
            sub_1DD6E388C();
            v111 = 17;
            break;
          case 19:
            LOBYTE(v226) = 19;
            sub_1DD805E3C();
            sub_1DD6FA420();
            sub_1DD875800();
            sub_1DD806574();
            v187 = v215;
            sub_1DD6F3128();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v192 = sub_1DD824BFC();
            v193(v192, v187);
            v194 = sub_1DD6EE278();
            v195(v194);
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = v226;
            v107 = v227[0];
            v122 = 1;
            break;
          default:
            LOBYTE(v226) = 0;
            sub_1DD806520();
            sub_1DD8256D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v103 = sub_1DD702E84();
            v104(v103, v83);
            v105 = sub_1DD6EE278();
            v106(v105);
            sub_1DD6EFFA0();
LABEL_20:
            v122 = 2;
            break;
        }

        v117 = v225;
        *v102 = v111;
        *(v102 + 8) = v107;
        *(v102 + 16) = v108;
        *(v102 + 24) = v109;
        *(v102 + 32) = v110;
        *(v102 + 40) = v122;
        goto LABEL_12;
      }
    }

    v112 = sub_1DD875740();
    sub_1DD6E41BC(v112, MEMORY[0x1E69E6B28]);
    sub_1DD82762C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v87 = &type metadata for ActionFailure.Failure;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v113 = sub_1DD6FEB10();
    v114(v113);
    swift_willThrow();
    swift_unknownObjectRelease();
    v115 = sub_1DD6ED180();
    v116(v115);
  }

  v117 = v225;
LABEL_12:
  sub_1DD6E1EC8(v117);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t ActionFailure.UnableToHandleRequest.rewrittenUtterance.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligenceFlow::ActionFailure::UnableToHandleRequest __swiftcall ActionFailure.UnableToHandleRequest.init(rewrittenUtterance:)(Swift::String_optional rewrittenUtterance)
{
  sub_1DD8250F8();

  *v3 = v2;
  v3[1] = v1;
  result.rewrittenUtterance.value._object = v5;
  result.rewrittenUtterance.value._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1DD7E7DF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DD8B73D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7E7E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E7DF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7E7EC4(uint64_t a1)
{
  v2 = sub_1DD80661C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E7F00(uint64_t a1)
{
  v2 = sub_1DD80661C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.UnableToHandleRequest.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD12F58, &qword_1DD88A488);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD80661C();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875920();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void sub_1DD7E8050()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD825A04();
  v16 = v4;
  v7 = sub_1DD825C68(v5, v6);
  sub_1DD710A9C(v7, v8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEBA0();
  v10 = sub_1DD6E7320(v0);
  v3(v10);
  sub_1DD825680();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD6FAC28();
    v11 = sub_1DD875820();
    v13 = v12;
    v14 = sub_1DD6DDEDC();
    v15(v14);
    *v16 = v11;
    v16[1] = v13;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t ActionFailure.DeveloperDefinedError.localizedString.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionFailure.DeveloperDefinedError.domain.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1DD7E82C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xEF676E6972745364;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701080931 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7E83D8(char a1)
{
  if (!a1)
  {
    return 0x657A696C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x6E69616D6F64;
  }

  return 1701080931;
}

uint64_t sub_1DD7E8438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E82C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E8460(uint64_t a1)
{
  v2 = sub_1DD806670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E849C(uint64_t a1)
{
  v2 = sub_1DD806670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.DeveloperDefinedError.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  sub_1DD710A9C(&qword_1ECD12F70, &qword_1DD88A498);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6E49C0(v0);
  v2 = sub_1DD806670();
  sub_1DD6E1808(&type metadata for ActionFailure.DeveloperDefinedError.CodingKeys, v3, v2);
  sub_1DD705FD8();
  sub_1DD705C50();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v6)
  {
    sub_1DD8250C8();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD705E14();
    sub_1DD8759B0();
  }

  v4 = sub_1DD6EEDBC();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionFailure.DeveloperDefinedError.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD12F80, &qword_1DD88A4A0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD806670();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD825D44();
    v6 = sub_1DD875870();
    v14 = v7;
    sub_1DD824CE8();
    sub_1DD825D44();
    v12 = sub_1DD875870();
    v13 = v8;
    sub_1DD825178();
    v9 = sub_1DD8758B0();
    v10 = sub_1DD825098();
    v11(v10);
    *v4 = v6;
    v4[1] = v14;
    v4[2] = v12;
    v4[3] = v13;
    v4[4] = v9;

    sub_1DD6E1EC8(v2);
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E87F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B6EC0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7E88C0(char a1)
{
  if (a1)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_1DD7E8938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E87F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E8960(uint64_t a1)
{
  v2 = sub_1DD8066C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E899C(uint64_t a1)
{
  v2 = sub_1DD8066C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD12F88, &qword_1DD88A4A8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE340();
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v21 = *(v0 + 56);
  v22 = *(v0 + 48);
  v20 = *(v0 + 64);
  v23 = *(v0 + 40);
  sub_1DD6DF224(v3, v3[3]);
  sub_1DD826FA8();
  sub_1DD804044(v10, v11, v12, v13, v14, v23);
  sub_1DD8066C4();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD806718();
  sub_1DD8259D4();
  sub_1DD8759D0();
  sub_1DD8040A4(v5, v6, v7, v8, v9, v23);
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD703958(v15, v16, v17);
    sub_1DD70396C();
    sub_1DD8259D4();
    sub_1DD875960();
    sub_1DD70148C(v22, v21, v20);
  }

  v18 = sub_1DD6E21D0();
  v19(v18);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionFailure.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD12FA0, &qword_1DD88A4B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v4 = sub_1DD8066C4();
  sub_1DD6ED2A4(&type metadata for ActionFailure.CodingKeys, v5, v4);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
    v6 = sub_1DD825640();
    sub_1DD70148C(v6, v7, v8);
  }

  else
  {
    sub_1DD80676C();
    sub_1DD82499C();
    sub_1DD8758D0();
    v9 = v23;
    v21 = v25;
    sub_1DD8264F0(v26);
    v20 = v27;
    v34 = v28;
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD8275D0();
    sub_1DD82499C();
    sub_1DD875860();
    v10 = sub_1DD6DFF30();
    v11(v10);
    v12 = v32;
    v13 = v33;
    v18 = v32;
    v14 = sub_1DD825640();
    sub_1DD70148C(v14, v15, v16);
    v22[0] = v23;
    v22[1] = v24;
    v22[2] = v25;
    v22[3] = v19;
    v22[4] = v27;
    LOBYTE(v22[5]) = v28;
    v22[6] = v32;
    v22[7] = v33;
    sub_1DD826E88();
    v22[8] = v32;
    memcpy(v2, v22, 0x48uLL);
    sub_1DD8067C0(v22, &v23);
    sub_1DD6E1EC8(v0);
    sub_1DD826EA0();
    v23 = v9;
    v24 = v17;
    v25 = v21;
    v26 = v19;
    v27 = v20;
    v28 = v34;
    v29 = v18;
    v30 = v13;
    v31 = v12;
    sub_1DD8003B4(&v23);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

double ActionConfirmation.systemStyle.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

__n128 ActionConfirmation.init(parameterValues:systemStyle:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u16[0];
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = a1;
  result = *a2;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v3;
  return result;
}

uint64_t ActionConfirmation.init(parameterValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = result;
  *(a2 + 56) = 0;
  return result;
}

uint64_t ActionConfirmation.init(affirmative:negative:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  type metadata accessor for ParameterValue(0);
  result = sub_1DD875080();
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = result;
  *(a5 + 56) = 0;
  return result;
}

uint64_t ActionConfirmation.init(affirmative:negative:parameterValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = a5;
  *(a6 + 56) = 0;
  return result;
}

IntelligenceFlow::ActionConfirmation::SystemStyle::MontaraEnablement __swiftcall ActionConfirmation.SystemStyle.MontaraEnablement.init(bundleIdentifier:source:isExplicitRequest:)(IntelligenceFlow::ActionConfirmation::SystemStyle::MontaraEnablement bundleIdentifier, IntelligenceFlow::ActionConfirmation::SystemStyle::MontaraEnablement::Source source, Swift::Bool isExplicitRequest)
{
  v4 = *source;
  *v3 = bundleIdentifier.bundleIdentifier;
  *(v3 + 16) = v4;
  *(v3 + 17) = isExplicitRequest;
  bundleIdentifier.source = source;
  return bundleIdentifier;
}

uint64_t sub_1DD7E8FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4151616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001DD8B73F0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5665736F706D6F63 && a2 == 0xEE00697269536169;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6973734174786574 && a2 == 0xED0000746E617473)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

unint64_t sub_1DD7E914C(char a1)
{
  result = 0x4151616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x5665736F706D6F63;
      break;
    case 3:
      result = 0x6973734174786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7E91F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E8FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E921C(uint64_t a1)
{
  v2 = sub_1DD806818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9258(uint64_t a1)
{
  v2 = sub_1DD806818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E9294(uint64_t a1)
{
  v2 = sub_1DD8068C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E92D0(uint64_t a1)
{
  v2 = sub_1DD8068C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E930C(uint64_t a1)
{
  v2 = sub_1DD806914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9348(uint64_t a1)
{
  v2 = sub_1DD806914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E9384(uint64_t a1)
{
  v2 = sub_1DD806968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E93C0(uint64_t a1)
{
  v2 = sub_1DD806968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E93FC(uint64_t a1)
{
  v2 = sub_1DD80686C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9438(uint64_t a1)
{
  v2 = sub_1DD80686C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.SystemStyle.MontaraEnablement.Source.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  sub_1DD710A9C(&qword_1ECD12FB0, &qword_1DD88A4B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD82480C(v27, v39);
  sub_1DD710A9C(&qword_1ECD12FB8, &qword_1DD88A4C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E9924(v29, v40);
  sub_1DD710A9C(&qword_1ECD12FC0, &qword_1DD88A4C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD82495C(v31, v41);
  sub_1DD710A9C(&qword_1ECD12FC8, &qword_1DD88A4D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD12FD0, &qword_1DD88A4D8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6E7258();
  v34 = *v24;
  sub_1DD6E49C0(v25);
  sub_1DD806818();
  sub_1DD7039CC();
  sub_1DD875BB0();
  switch(v34)
  {
    case 1:
      sub_1DD6E4104();
      sub_1DD806914();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_6;
    case 2:
      sub_1DD82768C();
      sub_1DD8068C0();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_6;
    case 3:
      sub_1DD7928CC();
      sub_1DD80686C();
      sub_1DD824848();
      sub_1DD875910();
LABEL_6:
      v35 = sub_1DD825950();
      break;
    default:
      sub_1DD806968();
      sub_1DD824848();
      sub_1DD875910();
      v35 = sub_1DD6FF900();
      break;
  }

  v36(v35);
  v37 = sub_1DD825570();
  v38(v37);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void ActionConfirmation.SystemStyle.MontaraEnablement.Source.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  v64 = v26;
  sub_1DD710A9C(&qword_1ECD13000, &qword_1DD88A4E0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD824F70(v28);
  sub_1DD710A9C(&qword_1ECD13008, &qword_1DD88A4E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E9924(v30, v63);
  sub_1DD710A9C(&qword_1ECD13010, &qword_1DD88A4F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD13018, &qword_1DD88A4F8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD13020, &qword_1DD88A500);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DEA6C();
  sub_1DD825500(v25);
  sub_1DD806818();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (!v65)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827758();
    if (!v34)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      v43 = *(v40 + v39);
      sub_1DD826C40(v35, v36, v37, v38, v39);
      sub_1DD6ED830();
      v45 = v44;
      v47 = v46;
      swift_unknownObjectRelease();
      if (v45 == v47 >> 1)
      {
        switch(v43)
        {
          case 1:
            sub_1DD6E4104();
            sub_1DD806914();
            sub_1DD827458();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_1DD82768C();
            sub_1DD8068C0();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
LABEL_14:
            v48 = sub_1DD6DED98();
            goto LABEL_15;
          case 3:
            sub_1DD7928CC();
            sub_1DD80686C();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v59 = sub_1DD8259C8();
            v60(v59);
            goto LABEL_16;
          default:
            sub_1DD806968();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v48 = sub_1DD6DED98();
            v50 = v24;
LABEL_15:
            v49(v48, v50);
LABEL_16:
            v61 = sub_1DD82568C();
            v62(v61);
            *v64 = v43;
            sub_1DD6E1EC8(v25);
            break;
        }

        goto LABEL_10;
      }
    }

    v51 = sub_1DD875740();
    sub_1DD6E41BC(v51, MEMORY[0x1E69E6B28]);
    v53 = v52;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v53 = &type metadata for ActionConfirmation.SystemStyle.MontaraEnablement.Source;
    v54 = sub_1DD875810();
    sub_1DD6DF100(v54);
    sub_1DD824B14();
    v55 = sub_1DD6FEB10();
    v56(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v57 = sub_1DD8259C8();
    v58(v57);
  }

  sub_1DD6E1EC8(v25);
LABEL_10:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}