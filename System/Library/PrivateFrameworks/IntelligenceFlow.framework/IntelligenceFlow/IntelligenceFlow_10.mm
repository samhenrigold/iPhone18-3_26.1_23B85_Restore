uint64_t sub_1DD7BF1B0(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x7365756C6176;
  }

  return 0x6C6F686563616C70;
}

uint64_t sub_1DD7BF210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7BF0A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7BF238(uint64_t a1)
{
  v2 = sub_1DD800D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF274(uint64_t a1)
{
  v2 = sub_1DD800D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BF2B0(uint64_t a1)
{
  v2 = sub_1DD800DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF2EC(uint64_t a1)
{
  v2 = sub_1DD800DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BF328(uint64_t a1)
{
  v2 = sub_1DD800EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF364(uint64_t a1)
{
  v2 = sub_1DD800EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7BF3A0(uint64_t a1)
{
  v2 = sub_1DD800E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BF3DC(uint64_t a1)
{
  v2 = sub_1DD800E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD119B0, &qword_1DD889860);
  sub_1DD6DDEAC();
  v18 = v1;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD824A4C(v3, v16);
  sub_1DD710A9C(&qword_1ECD119B8, &qword_1DD889868);
  sub_1DD6DDEAC();
  v17 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD119C0, &qword_1DD889870);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD119C8, &qword_1DD889878);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  v19 = v0[1];
  v20 = *v0;
  v8 = *(v0 + 16);
  sub_1DD824794();
  sub_1DD800D50();
  sub_1DD8256E0();
  sub_1DD875BB0();
  if (v8)
  {
    if (v8 == 1)
    {
      sub_1DD826820();
      sub_1DD800E4C();
      sub_1DD824AB4();
      sub_1DD875910();
      v21 = v20;
      sub_1DD800EA0();
      v9 = v17;
      sub_1DD826DD4(&v21, v10, v17, &type metadata for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummaryValues);
      v11 = sub_1DD6E4290();
    }

    else
    {
      sub_1DD826B30();
      sub_1DD800DA4();
      sub_1DD824AB4();
      sub_1DD875910();
      v21 = v20;
      v22 = v19;
      sub_1DD800DF8();
      v9 = v18;
      sub_1DD825AB4();
      sub_1DD8759D0();
      v11 = sub_1DD705C68();
    }

    v13 = v9;
  }

  else
  {
    sub_1DD800EF4();
    sub_1DD824AB4();
    sub_1DD875910();
    v21 = v20;
    v22 = v19;
    sub_1DD800F48();
    sub_1DD8255A4();
    sub_1DD8759D0();
    v11 = sub_1DD6E37A0();
  }

  v12(v11, v13);
  v14 = sub_1DD824A60();
  v15(v14);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD7038A0();
  v60 = v12;
  v59 = sub_1DD710A9C(&qword_1ECD11A08, &qword_1DD889880);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD82480C(v14, v57);
  sub_1DD710A9C(&qword_1ECD11A10, &qword_1DD889888);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD11A18, &qword_1DD889890);
  sub_1DD6DDEAC();
  v61 = v16;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6F0A58();
  v18 = sub_1DD710A9C(&qword_1ECD11A20, &qword_1DD889898);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE340();
  v62 = v10;
  sub_1DD70066C();
  sub_1DD800D50();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!a10)
  {
    v20 = v11;
    sub_1DD875900();
    sub_1DD6ED750();
    if (v22 != v21 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v29 == v30)
      {
        __break(1u);
        return;
      }

      v58 = *(v28 + v27);
      sub_1DD827424(v23, v24, v25, v26, v27);
      sub_1DD6ED830();
      sub_1DD8277D8();
      v11 = v61;
      if (v20 == (v18 >> 1))
      {
        if (v58)
        {
          if (v58 == 1)
          {
            sub_1DD826820();
            sub_1DD800E4C();
            sub_1DD8251A8();
            sub_1DD875800();
            sub_1DD800FF0();
            sub_1DD6F3128();
            sub_1DD827074(v36, v37, v38, v39, v40);
            sub_1DD826778();
            swift_unknownObjectRelease();
            v41 = sub_1DD824D98();
            v42(v41);
            v43 = sub_1DD825148();
            v44(v43);
            v45 = 0;
            v46 = v62;
            v47 = v63;
            v48 = v60;
          }

          else
          {
            sub_1DD826B30();
            sub_1DD800DA4();
            sub_1DD8251A8();
            sub_1DD875800();
            v48 = v60;
            sub_1DD800F9C();
            sub_1DD8256A4();
            sub_1DD8758D0();
            sub_1DD826544();
            swift_unknownObjectRelease();
            v53 = sub_1DD6E4290();
            v54(v53, v59);
            v55 = sub_1DD826AC8();
            v56(v55, v18);
            v47 = v63;
            v45 = v64;
            v46 = v62;
          }
        }

        else
        {
          LOBYTE(v63) = 0;
          sub_1DD800EF4();
          sub_1DD6FF7A8();
          sub_1DD875800();
          sub_1DD801044();
          sub_1DD8247C8();
          sub_1DD8758D0();
          sub_1DD826544();
          swift_unknownObjectRelease();
          v49 = sub_1DD825650();
          v50(v49);
          v51 = sub_1DD826AC8();
          v52(v51, v18);
          v47 = v63;
          v45 = v64;
          v46 = v62;
          v48 = v60;
        }

        *v48 = v47;
        *(v48 + 8) = v45;
        *(v48 + 16) = v58;
        sub_1DD6E1EC8(v46);
        goto LABEL_11;
      }
    }

    v31 = sub_1DD875740();
    sub_1DD6E41BC(v31, MEMORY[0x1E69E6B28]);
    sub_1DD8274C0();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v11 = &type metadata for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary;
    v32 = sub_1DD875810();
    sub_1DD6DF100(v32);
    sub_1DD824B14();
    (*(v33 + 104))(v11);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = sub_1DD6FAF18();
    v35(v34);
  }

  sub_1DD6E1EC8(v62);
LABEL_11:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7BFE04(uint64_t a1)
{
  v2 = sub_1DD801098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7BFE40(uint64_t a1)
{
  v2 = sub_1DD801098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummaryValue.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11A40, &qword_1DD8898A0);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD801098();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummaryValues.summaries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1DD7C0018(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656972616D6D7573 && a2 == 0xE900000000000073)
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

uint64_t sub_1DD7C00B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C0018(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7C00E4(uint64_t a1)
{
  v2 = sub_1DD8010EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C0120(uint64_t a1)
{
  v2 = sub_1DD8010EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7C0190()
{
  sub_1DD6DED2C();
  v10 = v0;
  v2 = v1;
  v4 = sub_1DD825C68(v1, v3);
  sub_1DD710A9C(v4, v5);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE340();
  v7 = sub_1DD6FE8B0(v2);
  v10(v7);
  sub_1DD826F3C();

  sub_1DD827620();
  sub_1DD875BB0();
  sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
  sub_1DD824C1C(&qword_1EE015DC0);
  sub_1DD8262B0();
  sub_1DD824BEC();
  sub_1DD8759D0();

  v8 = sub_1DD6E40D8();
  v9(v8);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void sub_1DD7C02F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v23 = v22;
  sub_1DD825A04();
  v33 = v24;
  v27 = sub_1DD825C68(v25, v26);
  sub_1DD710A9C(v27, v28);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DEBA0();
  v30 = sub_1DD6E7320(v20);
  v23(v30);
  sub_1DD825680();
  sub_1DD875B90();
  if (!v21)
  {
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD6FF744(&qword_1EE015DB8, MEMORY[0x1E69E6190]);
    sub_1DD825118();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v31 = sub_1DD6FBE88();
    v32(v31);
    *v33 = a10;
  }

  sub_1DD6E1EC8(v20);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7C048C()
{
  sub_1DD705CF0();
  if (v2 == 0x7972616D6D7573 && v1 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7C04F4(uint64_t a1)
{
  v2 = sub_1DD801140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C0530(uint64_t a1)
{
  v2 = sub_1DD801140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummaryPlaceholder.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11A70, &qword_1DD8898C0);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD801140();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t static MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.formatStringVariableCaptureReference.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0DFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD710A9C(&qword_1ECD11A88, &qword_1DD8898D0);
  sub_1DD6E1224(v2, qword_1ECD10B98);
  sub_1DD6E0540();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DD7C07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_1DD825C68(a1, a2);
  v9 = sub_1DD710A9C(v7, v8);
  sub_1DD732C90(v9, a4);
  v10 = sub_1DD6E87AC();
  sub_1DD6E1224(v10, v11);
  return a5();
}

uint64_t static MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.formatStringVariableRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0DFA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD710A9C(&qword_1ECD11A90, &qword_1DD8898D8);
  sub_1DD6E1224(v2, qword_1ECD10BB0);
  sub_1DD6E0540();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DD7C0914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DD8B6790 == a2)
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

uint64_t sub_1DD7C09E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

uint64_t sub_1DD7C0A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C0914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C0A5C(uint64_t a1)
{
  v2 = sub_1DD801194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C0A98(uint64_t a1)
{
  v2 = sub_1DD801194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD11A98, &qword_1DD8898E0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD826A64();
  v2 = sub_1DD8267D8();
  sub_1DD6E7320(v2);
  sub_1DD801194();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD11AA8, &qword_1DD8898E8);
    sub_1DD8011E8(&unk_1ECD11AB0);
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v3 = sub_1DD6DE58C();
  v4(v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD11AC0, &qword_1DD8898F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v3 = sub_1DD801194();
  sub_1DD6ED2A4(&type metadata for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD11AA8, &qword_1DD8898E8);
    sub_1DD82552C();
    sub_1DD8011E8(&unk_1ECD11AC8);
    sub_1DD824B6C();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v5 = sub_1DD6DFF30();
    v6(v5);
    sub_1DD82696C();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

BOOL static MessagePayload.ActionSummaryUpdate.== infix(_:_:)()
{
  sub_1DD6E1F34();
  result = 0;
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v2 = *(type metadata accessor for MessagePayload.ActionSummaryUpdate(0) + 20);
    v3 = *(v1 + v2);
    v4 = *(v1 + v2 + 8);
    v5 = (v0 + v2);
    v6 = v3 == *v5 && v4 == v5[1];
    if (v6 || (sub_1DD8256B0(), (sub_1DD875A30() & 1) != 0))
    {

      v7 = sub_1DD6E0C60();
      v9 = sub_1DD7A8C6C(v7, v8);

      if (v9)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1DD7C0ED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001DD8B67B0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD7C0FA4(char a1)
{
  if (a1)
  {
    return 0x7972616D6D7573;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1DD7C0FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C0ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C1010(uint64_t a1)
{
  v2 = sub_1DD80130C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C104C(uint64_t a1)
{
  v2 = sub_1DD80130C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionSummaryUpdate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD11AD8, &qword_1DD8898F8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v16 = sub_1DD80130C();
  sub_1DD6E1808(&type metadata for MessagePayload.ActionSummaryUpdate.CodingKeys, v17, v16);
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v18);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v14)
  {
    type metadata accessor for MessagePayload.ActionSummaryUpdate(0);
    sub_1DD826FFC();
    sub_1DD801360();
    sub_1DD6E5E30();

    sub_1DD825048();
    sub_1DD6E72A8();
    sub_1DD8759D0();
  }

  v19 = sub_1DD6EFFB4();
  v20(v19);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ActionSummaryUpdate.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  sub_1DD710A9C(&qword_1ECD11AF0, &qword_1DD889900);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DD700BA4();
  v6 = type metadata accessor for MessagePayload.ActionSummaryUpdate(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E2220();
  sub_1DD824794();
  sub_1DD80130C();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v19) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v8);
    sub_1DD825A9C();
    sub_1DD82668C();
    sub_1DD827074(v9, v10, v11, v12, v13);
    sub_1DD826578();
    v14 = sub_1DD825B84();
    v15(v14);
    sub_1DD6FF8F4();
    sub_1DD8013B4();
    sub_1DD6E40F8();
    sub_1DD6FE82C();
    sub_1DD8758D0();
    v16 = sub_1DD6FAE08();
    v17(v16);
    v18 = v1 + *(v6 + 20);
    *v18 = v19;
    *(v18 + 8) = v20;
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD8259EC();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void static MessagePayload.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v417 = v5;
  v416 = v6;
  v358 = type metadata accessor for ActionExecutionOutcome(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v379 = v8;
  v9 = sub_1DD6E9A9C();
  v10 = type metadata accessor for SessionServerDebuggerEvent(v9);
  v11 = sub_1DD6DEA10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDEE8();
  v377 = v12;
  v13 = sub_1DD6E9A9C();
  v14 = type metadata accessor for SessionClientDebuggerEvent(v13);
  v15 = sub_1DD6DEA10(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DDEE8();
  v376 = v16;
  v17 = sub_1DD6E9A9C();
  v355 = type metadata accessor for MessagePayload.ActionSummaryUpdate(v17);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDEE8();
  v378 = v19;
  v20 = sub_1DD6E9A9C();
  v21 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v20);
  v22 = sub_1DD6DEA10(v21);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DDEE8();
  v375 = v23;
  v24 = sub_1DD6E9A9C();
  v354 = type metadata accessor for MessagePayload.ExternalAgentOutcome(v24);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DDEE8();
  v374 = v26;
  v27 = sub_1DD6E9A9C();
  v28 = type metadata accessor for MessagePayload.ExternalAgentRequest(v27);
  v29 = sub_1DD6DEA10(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDEE8();
  v373 = v30;
  v31 = sub_1DD6E9A9C();
  v32 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v31);
  v33 = sub_1DD6DEA10(v32);
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DDEE8();
  v372 = v34;
  v35 = sub_1DD6E9A9C();
  v36 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(v35);
  v37 = sub_1DD6DEA10(v36);
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DDEE8();
  v371 = v38;
  v39 = sub_1DD6E9A9C();
  v40 = type metadata accessor for IntermediateSystemResponseRendered(v39);
  v41 = sub_1DD6DEA10(v40);
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6DDEE8();
  v370 = v42;
  v43 = sub_1DD6E9A9C();
  v44 = type metadata accessor for IntermediateSystemResponse(v43);
  v45 = sub_1DD6DEA10(v44);
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6DDEE8();
  v369 = v46;
  v47 = sub_1DD6E9A9C();
  v48 = type metadata accessor for SystemResponse(v47);
  v49 = sub_1DD6DEA10(v48);
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6DDEE8();
  v368 = v50;
  v51 = sub_1DD6E9A9C();
  v52 = type metadata accessor for ActionResponse(v51);
  v53 = sub_1DD6DEA10(v52);
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6DDEE8();
  v366 = v54;
  v55 = sub_1DD6E9A9C();
  v56 = type metadata accessor for SystemPromptResolution(v55);
  v57 = sub_1DD6DEA10(v56);
  MEMORY[0x1EEE9AC00](v57);
  sub_1DD6DDEE8();
  v365 = v58;
  v59 = sub_1DD6E9A9C();
  v357 = type metadata accessor for SystemPrompt(v59);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6DDEE8();
  v367 = v61;
  v62 = sub_1DD6E9A9C();
  v63 = type metadata accessor for MessagePayload.ClientActionResult(v62);
  v64 = sub_1DD6DEA10(v63);
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD6DDEE8();
  v364 = v65;
  v66 = sub_1DD6E9A9C();
  v67 = type metadata accessor for MessagePayload.ClientAction(v66);
  v68 = sub_1DD6DEA10(v67);
  MEMORY[0x1EEE9AC00](v68);
  sub_1DD6DDEE8();
  v363 = v69;
  v70 = sub_1DD6E9A9C();
  v353 = type metadata accessor for MessagePayload.ClientEffectResolved(v70);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v71);
  sub_1DD6DDEE8();
  v362 = v72;
  v73 = sub_1DD6E9A9C();
  v74 = type metadata accessor for MessagePayload.ClientEffectInvocation(v73);
  v75 = sub_1DD6DEA10(v74);
  MEMORY[0x1EEE9AC00](v75);
  sub_1DD6DDEE8();
  v360 = v76;
  v77 = sub_1DD6E9A9C();
  v352 = type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(v77);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v78);
  sub_1DD6DDEE8();
  v361 = v79;
  v80 = sub_1DD6E9A9C();
  v81 = type metadata accessor for MessagePayload.Request(v80);
  v82 = sub_1DD6DEA10(v81);
  MEMORY[0x1EEE9AC00](v82);
  sub_1DD6DDEE8();
  v359 = v83;
  v84 = sub_1DD6E9A9C();
  v85 = type metadata accessor for MessagePayload.UserTurnStarted(v84);
  v86 = sub_1DD6DEA10(v85);
  MEMORY[0x1EEE9AC00](v86);
  sub_1DD6DDEE8();
  v356 = v87;
  v88 = sub_1DD6E9A9C();
  v415 = type metadata accessor for MessagePayload(v88);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v89);
  sub_1DD6DE21C();
  v414 = v90 - v91;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v92);
  sub_1DD6F1780();
  v409 = v93;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v94);
  sub_1DD6F1780();
  v408 = v95;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v96);
  sub_1DD6F1780();
  v412 = v97;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v98);
  sub_1DD6F1780();
  v411 = v99;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v100);
  sub_1DD6F1780();
  v410 = v101;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v102);
  sub_1DD6F1780();
  v413 = v103;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v104);
  sub_1DD6F1780();
  v406 = v105;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v106);
  sub_1DD6F1780();
  v403 = v107;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v108);
  sub_1DD6F1780();
  v401 = v109;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v110);
  sub_1DD6F1780();
  v407 = v111;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v112);
  sub_1DD6F1780();
  v405 = v113;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v114);
  sub_1DD6F1780();
  v404 = v115;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v116);
  sub_1DD6F1780();
  v402 = v117;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v118);
  sub_1DD6F1780();
  v397 = v119;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v120);
  sub_1DD6F1780();
  v395 = v121;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v122);
  sub_1DD6F1780();
  v393 = v123;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v124);
  sub_1DD6F1780();
  v399 = v125;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v126);
  sub_1DD6F1780();
  v398 = v127;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v128);
  sub_1DD6F1780();
  v396 = v129;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v130);
  sub_1DD6F1780();
  v394 = v131;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v132);
  sub_1DD6F1780();
  v392 = v133;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v134);
  sub_1DD6F1780();
  v400 = v135;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v136);
  sub_1DD6F1780();
  v388 = v137;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v138);
  sub_1DD6F1780();
  v387 = v139;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v140);
  sub_1DD6F1780();
  v390 = v141;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v142);
  sub_1DD6F1780();
  v389 = v143;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v144);
  sub_1DD6F1780();
  v386 = v145;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v146);
  sub_1DD6F1780();
  v391 = v147;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v148);
  sub_1DD6F1780();
  v385 = v149;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v150);
  sub_1DD6F1780();
  v383 = v151;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v152);
  sub_1DD6F1780();
  v382 = v153;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v154);
  sub_1DD6F1780();
  v381 = v155;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v156);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v157);
  sub_1DD6F1780();
  v380 = v158;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v159);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v160);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v161);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v162);
  sub_1DD6F1780();
  v384 = v163;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v164);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v165);
  v167 = (&v352 - v166);
  v168 = sub_1DD710A9C(&qword_1ECD11B00, &qword_1DD889908);
  sub_1DD6DEA10(v168);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v169);
  sub_1DD6DEBA0();
  v171 = v1 + *(v170 + 56);
  sub_1DD6E5870();
  v417 = v171;
  sub_1DD6E5870();
  sub_1DD770D98();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD703A24();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1DD6E59B8();
        sub_1DD8256C8();
        static MessagePayload.Request.== infix(_:_:)();
        sub_1DD6E5ABC();
        sub_1DD6E58E0();
        goto LABEL_215;
      }

      sub_1DD8259EC();
      goto LABEL_198;
    case 2u:
      if (sub_1DD827890() == 2)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 3u:
      if (sub_1DD827890() == 3)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 4u:
      if (sub_1DD827890() == 4)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 5u:
      sub_1DD6DF42C();
      v241 = v384;
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      v242 = v361;
      sub_1DD6E59B8();
      v243 = v241[1];
      v244 = v242[1];
      if (v243)
      {
        if (!v244)
        {
          goto LABEL_218;
        }

        v245 = *v241 == *v242 && v243 == v244;
        if (!v245 && (sub_1DD875A30() & 1) == 0)
        {
          goto LABEL_218;
        }
      }

      else if (v244)
      {
        goto LABEL_218;
      }

      sub_1DD826568(v352);
      if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
      {
LABEL_214:
        sub_1DD6E5ABC();
        sub_1DD770D4C();
        goto LABEL_215;
      }

LABEL_218:
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      goto LABEL_219;
    case 6u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      v250 = *v4;
      v251 = *(v4 + 8);
      v252 = *(v4 + 16);
      v253 = v417;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v254 = *v253;
        v255 = *(v253 + 8);
        v256 = v253[2];
        *&v421[0] = v250;
        BYTE8(v421[0]) = v251;
        *&v421[1] = v252;
        *&v420[0] = v254;
        BYTE8(v420[0]) = v255;
        *&v420[1] = v256;
        sub_1DD82750C();
        static MessagePayload.SessionError.== infix(_:_:)();
        v257 = sub_1DD6F4D4C();
        sub_1DD71900C(v257);

        sub_1DD71900C(v250);
        goto LABEL_113;
      }

      sub_1DD71900C(v250);
      goto LABEL_197;
    case 7u:
      sub_1DD6E5344();
      v210 = v1;
      sub_1DD6F4D4C();
      sub_1DD6E5870();
      v212 = *v2;
      v211 = *(v2 + 8);
      v213 = *(v2 + 16);
      v214 = v417;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_190;
      }

      v215 = *(v214 + 16);
      if (v212 != *v214 || v211 != v214[1])
      {
        v217 = sub_1DD8258C4();
        if ((sub_1DD6FA430(v217, v218, v219) & 1) == 0)
        {
          goto LABEL_210;
        }
      }

      if (v213 != v215)
      {
        goto LABEL_210;
      }

      sub_1DD7029A8();
      sub_1DD715F90();
      v221 = v220;

      if (v221)
      {
        goto LABEL_216;
      }

      goto LABEL_220;
    case 8u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      v210 = v1;
      v263 = v0[1];
      v262 = v0[2];
      v264 = v0[5];
      v265 = v417;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

LABEL_190:

        v1 = v210;
        goto LABEL_199;
      }

      v266 = v0[4];
      v267 = *(v0 + 24);
      v268 = *v0;
      v269 = *v265;
      v270 = v265[1];
      v271 = v265[2];
      v272 = *(v265 + 24);
      v273 = v265[4];
      v274 = v265[5];
      *&v421[0] = v268;
      *(&v421[0] + 1) = v263;
      *&v421[1] = v262;
      BYTE8(v421[1]) = v267;
      *&v421[2] = v266;
      *(&v421[2] + 1) = v264;
      *&v420[0] = v269;
      *(&v420[0] + 1) = v270;
      *&v420[1] = v271;
      BYTE8(v420[1]) = v272;
      *&v420[2] = v273;
      *(&v420[2] + 1) = v274;
      v275 = sub_1DD82750C();
      static MessagePayload.Query.== infix(_:_:)(v275, v276, v277, v278, v279);

LABEL_113:

      sub_1DD6E6ABC();
      goto LABEL_217;
    case 9u:
      sub_1DD6DF42C();
      v195 = v380;
      sub_1DD6E5870();
      v196 = *v195;
      v197 = v195[3];
      v198 = v417;
      sub_1DD825B90();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_196;
      }

      v199 = v195[2];
      v200 = *(v195 + 8);
      v201 = *v198;
      v202 = *(v198 + 8);
      v203 = v198[2];
      v204 = v198[3];
      *&v421[0] = v196;
      BYTE8(v421[0]) = v200;
      *&v421[1] = v199;
      *(&v421[1] + 1) = v197;
      *&v420[0] = v201;
      BYTE8(v420[0]) = v202;
      *&v420[1] = v203;
      *(&v420[1] + 1) = v204;
      v205 = sub_1DD82750C();
      static MessagePayload.SpeechQuery.== infix(_:_:)(v205, v206);

      sub_1DD6E6ABC();
      goto LABEL_217;
    case 0xAu:
      sub_1DD6E5344();
      sub_1DD827530();
      sub_1DD6E5870();
      v174 = *v3;
      v173 = v3[1];
      v175 = v417;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_104;
      }

      goto LABEL_110;
    case 0xBu:
      sub_1DD6DF42C();
      v186 = v381;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 11)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0xCu:
      sub_1DD6DF42C();
      v186 = v382;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 12)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0xDu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD703A24();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_197;
      }

      sub_1DD6E58E0();
      sub_1DD7152B8();
      sub_1DD827818();

      goto LABEL_216;
    case 0xEu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientEffectInvocation.== infix(_:_:)();
      goto LABEL_167;
    case 0xFu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        sub_1DD826568(v353);
        static MessagePayload.ClientEffectResolved.Result.== infix(_:_:)();
        v209 = v208;
        sub_1DD6E1180();
        sub_1DD6E5ABC();
        if (v209)
        {
          sub_1DD6E1180();
          goto LABEL_215;
        }
      }

      else
      {
        sub_1DD6E1180();
        sub_1DD6E5ABC();
      }

      sub_1DD6E1180();
LABEL_219:
      sub_1DD6E5ABC();
      goto LABEL_220;
    case 0x10u:
      sub_1DD6DF42C();
      v189 = v386;
      sub_1DD6E5870();
      memcpy(v421, v189, 0x68uLL);
      v190 = v417;
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        memcpy(v420, v190, 0x68uLL);
        memcpy(v419, v189, 0x68uLL);
        memcpy(v418, v190, 0x68uLL);
        static MessagePayload.ActionWillExecute.== infix(_:_:)(v419, v418);
        sub_1DD800214(v420);
        sub_1DD800214(v421);
        goto LABEL_216;
      }

      sub_1DD800214(v421);
      goto LABEL_199;
    case 0x11u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientAction.== infix(_:_:)();
      goto LABEL_167;
    case 0x12u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientActionResult.== infix(_:_:)();
      goto LABEL_167;
    case 0x13u:
      sub_1DD6E5344();
      v416 = v1;
      v289 = v387;
      sub_1DD6E5870();
      v290 = v289[3];
      v291 = v289[4];
      v292 = v289[5];
      v293 = v417;
      sub_1DD825B90();
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        v334 = sub_1DD6E5DB0();
        sub_1DD6E6658(v334, v335);
        v336 = sub_1DD6E0F70();
        sub_1DD6E6658(v336, v337);

        v1 = v416;
        goto LABEL_199;
      }

      v414 = v292;
      v415 = v290;
      v294 = *v293;
      v295 = v293[1];
      v296 = v293[4];
      v297 = v293[5];
      v413 = v296;
      v298 = sub_1DD6E5DB0();
      if ((MEMORY[0x1E12B41A0](v298) & 1) == 0 || (v299 = sub_1DD827734(), (MEMORY[0x1E12B41A0](v299) & 1) == 0))
      {
        v338 = sub_1DD703A24();
        sub_1DD6E6658(v338, v339);
        v340 = sub_1DD700B4C();
        sub_1DD6E6658(v340, v341);

        v342 = sub_1DD6E5DB0();
        sub_1DD6E6658(v342, v343);
        v344 = sub_1DD827734();
        sub_1DD6E6658(v344, v345);

        goto LABEL_220;
      }

      if (v291 == v413 && v414 == v297)
      {
        sub_1DD6E6658(v294, v295);
        v346 = sub_1DD700B4C();
        sub_1DD6E6658(v346, v347);

        v348 = sub_1DD6E5DB0();
        sub_1DD6E6658(v348, v349);
        v350 = sub_1DD827734();
        sub_1DD6E6658(v350, v351);
      }

      else
      {
        LODWORD(v417) = sub_1DD875A30();
        v301 = sub_1DD703A24();
        sub_1DD6E6658(v301, v302);
        v303 = sub_1DD700B4C();
        sub_1DD6E6658(v303, v304);

        v305 = sub_1DD6E5DB0();
        sub_1DD6E6658(v305, v306);
        v307 = sub_1DD827734();
        sub_1DD6E6658(v307, v308);

        if ((v417 & 1) == 0)
        {
          goto LABEL_220;
        }
      }

      goto LABEL_216;
    case 0x14u:
      sub_1DD6DF42C();
      v186 = v388;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 20)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0x15u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        sub_1DD8264A8();
        v248 = v181 && v246 == v247;
        if (v248 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD8267E4(*(v357 + 24));
          static SystemPrompt.Prompt.== infix(_:_:)();
          if (v249)
          {
            goto LABEL_214;
          }
        }
      }

      goto LABEL_218;
    case 0x16u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static SystemPromptResolution.== infix(_:_:)();
      goto LABEL_167;
    case 0x17u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static ActionResponse.== infix(_:_:)();
      goto LABEL_167;
    case 0x18u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      v207 = sub_1DD6E9594();
      static SystemResponse.== infix(_:_:)(v207);
      goto LABEL_167;
    case 0x19u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static IntermediateSystemResponse.== infix(_:_:)();
      goto LABEL_167;
    case 0x1Au:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static IntermediateSystemResponseRendered.== infix(_:_:)();
      goto LABEL_167;
    case 0x1Bu:
      sub_1DD6DF42C();
      v186 = v393;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 27)
      {
        goto LABEL_197;
      }

      goto LABEL_145;
    case 0x1Cu:
      sub_1DD6DF42C();
      v186 = v395;
      sub_1DD6E5870();
      if (sub_1DD825AD8() != 28)
      {
        goto LABEL_197;
      }

LABEL_145:
      v319 = *v167;
      v320 = v167[1];
      if (v171 == v319 && v186 == v320)
      {
        goto LABEL_152;
      }

      v322 = sub_1DD770D4C();
      sub_1DD6FA430(v322, v323, v324);
      sub_1DD827818();
      goto LABEL_150;
    case 0x1Du:
      if (sub_1DD827890() == 29)
      {
        goto LABEL_216;
      }

      goto LABEL_199;
    case 0x1Eu:
      sub_1DD6DF42C();
      v280 = v397;
      sub_1DD6E5870();
      v282 = *v280;
      v281 = v280[1];
      v283 = v417;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_197;
      }

      v284 = v283[1];
      if (!v281)
      {

        if (!v284)
        {
          goto LABEL_153;
        }

LABEL_225:

LABEL_220:
        sub_1DD6E6ABC();
        sub_1DD6E5ABC();
        goto LABEL_221;
      }

      if (!v284)
      {

        goto LABEL_225;
      }

      if (v282 == *v283 && v281 == v284)
      {
LABEL_152:

LABEL_153:

        goto LABEL_216;
      }

      v286 = sub_1DD6E0C60();
      LOBYTE(v171) = sub_1DD8278F0(v286, v287, v288);

LABEL_150:

      if ((v171 & 1) == 0)
      {
        goto LABEL_220;
      }

LABEL_216:
      sub_1DD6E6ABC();
LABEL_217:
      sub_1DD6E5ABC();
LABEL_221:
      sub_1DD6DFED0();
      return;
    case 0x1Fu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ExternalAgentTextQuery.== infix(_:_:)();
      goto LABEL_167;
    case 0x20u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ExternalAgentSpeechQuery.== infix(_:_:)();
      goto LABEL_167;
    case 0x21u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ExternalAgentRequest.== infix(_:_:)();
      goto LABEL_167;
    case 0x22u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      static StatementOutcome.== infix(_:_:)();
      if (v187)
      {
        sub_1DD7152B8();
        if (v188)
        {
          goto LABEL_214;
        }
      }

      goto LABEL_218;
    case 0x23u:
      sub_1DD6E5344();
      sub_1DD827530();
      v176 = v401;
      sub_1DD6E5870();
      v178 = *v176;
      v177 = v176[1];
      v179 = v417;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_110;
      }

      goto LABEL_11;
    case 0x24u:
      sub_1DD6E5344();
      sub_1DD827530();
      v180 = v403;
      sub_1DD6E5870();
      v178 = *v180;
      v177 = v180[1];
      v179 = v417;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_110;
      }

LABEL_11:
      v181 = v178 == *v179 && v177 == v179[1];
      if (!v181)
      {
        v182 = sub_1DD8258C4();
        if ((sub_1DD6FA430(v182, v183, v184) & 1) == 0)
        {
          goto LABEL_210;
        }
      }

      sub_1DD7029A8();
      sub_1DD7152B8();
      goto LABEL_140;
    case 0x25u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static MessagePayload.ClientUndoRedoRequest.== infix(_:_:)();
      goto LABEL_167;
    case 0x26u:
      sub_1DD6DF42C();
      v325 = v413;
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      v326 = v378;
      sub_1DD6E59B8();
      sub_1DD6DFF24();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        v327 = *(v355 + 20);
        v328 = *(v325 + v327);
        v329 = *(v325 + v327 + 8);
        v330 = (v326 + v327);
        v331 = v328 == *v330 && v329 == v330[1];
        if (v331 || (sub_1DD8278F0(v328, v329, *v330) & 1) != 0)
        {

          v332 = sub_1DD6E0F70();
          sub_1DD7A8C6C(v332, v333);
          sub_1DD827878();

          if (v1)
          {
            sub_1DD6FF708();
            sub_1DD6E5ABC();
            sub_1DD8265C8();
            sub_1DD6E5ABC();
            goto LABEL_216;
          }
        }
      }

      sub_1DD6FF708();
      sub_1DD6E5ABC();
      sub_1DD8265C8();
      sub_1DD6E5ABC();
      goto LABEL_220;
    case 0x27u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 39)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static SessionClientDebuggerEvent.Payload.== infix(_:_:)();
      goto LABEL_167;
    case 0x28u:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E9594();
      static SessionServerDebuggerEvent.Payload.== infix(_:_:)();
LABEL_167:
      sub_1DD6E5ABC();
      goto LABEL_215;
    case 0x29u:
      sub_1DD6DF42C();
      v222 = v412;
      sub_1DD6E5870();
      v223 = v222[1];
      v421[0] = *v222;
      v421[1] = v223;
      v224 = v222[3];
      v421[2] = v222[2];
      v421[3] = v224;
      v225 = v417;
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        v226 = v225[1];
        v418[0] = *v225;
        v418[1] = v226;
        v227 = v225[3];
        v229 = *v225;
        v228 = v225[1];
        v418[2] = v225[2];
        v418[3] = v227;
        v230 = v222[1];
        v426 = *v222;
        v427 = v230;
        v231 = v222[3];
        v428 = v222[2];
        v429 = v231;
        v422 = v229;
        v423 = v228;
        v232 = v225[3];
        v424 = v225[2];
        v425 = v232;
        v233 = sub_1DD82750C();
        sub_1DD80149C(v233, v234);
        sub_1DD80149C(v418, v420);
        static SessionStatusUpdate.Payload.== infix(_:_:)(&v426, &v422, v235, v236, v237, v238, v239, v240);
        v419[0] = v422;
        v419[1] = v423;
        v419[2] = v424;
        v419[3] = v425;
        sub_1DD8014F8(v419);
        v420[0] = v426;
        v420[1] = v427;
        v420[2] = v428;
        v420[3] = v429;
        sub_1DD8014F8(v420);
        sub_1DD801448(v418);
        sub_1DD801448(v421);
        goto LABEL_216;
      }

      sub_1DD801448(v421);
      goto LABEL_199;
    case 0x2Au:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 42)
      {
LABEL_196:

LABEL_197:

        goto LABEL_199;
      }

      sub_1DD6E58E0();
      sub_1DD715384();
      if ((v309 & 1) == 0)
      {
        goto LABEL_210;
      }

      v310 = sub_1DD7029A8();
      sub_1DD715528(v310, v311, v312, v313, v314, v315, v316, v317, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      goto LABEL_140;
    case 0x2Bu:
      sub_1DD6E5344();
      sub_1DD827530();
      v172 = v409;
      sub_1DD6E5870();
      v174 = *v172;
      v173 = v172[1];
      v175 = v417;
      sub_1DD825C98();
      if (swift_getEnumCaseMultiPayload() != 43)
      {
LABEL_110:

        v1 = v2;
        goto LABEL_199;
      }

LABEL_104:
      if (v174 != *v175 || v173 != v175[1])
      {
        v259 = sub_1DD8258C4();
        if ((sub_1DD6FA430(v259, v260, v261) & 1) == 0)
        {
LABEL_210:

          goto LABEL_220;
        }
      }

      sub_1DD7029A8();
      sub_1DD7A874C();
LABEL_140:
      v318 = v185;

      if (v318)
      {
        goto LABEL_216;
      }

      goto LABEL_220;
    case 0x2Cu:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_198;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD6E0C60();
      if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
      {
        sub_1DD8264A8();
        v193 = v181 && v191 == v192;
        if (v193 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD8267E4(*(v358 + 24));
          static StatementOutcome.== infix(_:_:)();
          if (v194)
          {
            goto LABEL_214;
          }
        }
      }

      goto LABEL_218;
    default:
      sub_1DD6DF42C();
      sub_1DD6E5870();
      sub_1DD82568C();
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1DD7006C0();
        sub_1DD6E59B8();
        sub_1DD6FF97C();
        static MessagePayload.UserTurnStarted.== infix(_:_:)();
        sub_1DD6E5ABC();
LABEL_215:
        sub_1DD6E5ABC();
        goto LABEL_216;
      }

      sub_1DD7061EC();
LABEL_198:
      sub_1DD6E5ABC();
LABEL_199:
      sub_1DD824154(v1, &qword_1ECD11B00);
      goto LABEL_221;
  }
}

void static SystemPrompt.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for SystemPrompt(0);
    sub_1DD826354();
    sub_1DD824820(v1);
    v4 = v4 && v2 == v3;
    if (v4 || (sub_1DD875A30() & 1) != 0)
    {
      sub_1DD8263A4(*(v0 + 24));

      static SystemPrompt.Prompt.== infix(_:_:)();
    }
  }
}

void static ActionResponse.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v5 = sub_1DD827638();
  v58 = type metadata accessor for ResponseOutput(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v54 = v7;
  v8 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E5D10(v10, v54);
  v57 = sub_1DD710A9C(&qword_1ECD11B10, &qword_1DD889918);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v59 = v12;
  sub_1DD6E9A9C();
  v13 = sub_1DD874820();
  sub_1DD6DDEAC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E6200();
  v17 = sub_1DD6F4D4C();
  v19 = sub_1DD710A9C(v17, v18);
  sub_1DD6DEA10(v19);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DEA6C();
  v21 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v21);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E9560();
  v24 = *(v23 + 56);
  sub_1DD825B90();
  sub_1DD827050();
  sub_1DD700E60();
  sub_1DD827050();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (v25)
  {
    sub_1DD6E26E4(v2 + v24);
    if (v25)
    {
      sub_1DD824154(v2, &qword_1ECD0E540);
      goto LABEL_13;
    }

LABEL_9:
    v28 = &qword_1ECD10E30;
    v29 = v2;
LABEL_10:
    sub_1DD824154(v29, v28);
    goto LABEL_11;
  }

  sub_1DD825998();
  sub_1DD700E60();
  sub_1DD6E26E4(v2 + v24);
  if (v25)
  {
    v26 = sub_1DD770D4C();
    v27(v26);
    goto LABEL_9;
  }

  (*(v15 + 32))(v1, v2 + v24, v13);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v30);
  sub_1DD700B4C();
  v31 = sub_1DD8750F0();
  v32 = *(v15 + 8);
  v33 = sub_1DD8265C8();
  v32(v33);
  v34 = sub_1DD770D4C();
  v32(v34);
  sub_1DD824154(v2, &qword_1ECD0E540);
  if ((v31 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v35 = *(type metadata accessor for ActionResponse(0) + 20);
  v36 = *(v4 + v35 + 8);
  if (*(v0 + v35 + 8))
  {
    if (!v36)
    {
      goto LABEL_11;
    }

    sub_1DD824D88(v0 + v35);
    v39 = v25 && v37 == v38;
    if (!v39 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v36)
  {
    goto LABEL_11;
  }

  sub_1DD8264A8();
  if (v25)
  {
    v42 = v40 == v41;
  }

  else
  {
    v42 = 0;
  }

  if (!v42 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_11;
  }

  static ActionOutcome.== infix(_:_:)();
  if ((v43 & 1) == 0)
  {
    goto LABEL_11;
  }

  static ResponseManifest.== infix(_:_:)();
  if ((v44 & 1) == 0)
  {
    goto LABEL_11;
  }

  v45 = *(v57 + 48);
  sub_1DD700E60();
  sub_1DD700E60();
  sub_1DD6DE1FC(v59, 1, v58);
  if (!v25)
  {
    sub_1DD700E60();
    sub_1DD6DE1FC(v59 + v45, 1, v58);
    if (!v46)
    {
      sub_1DD82477C();
      sub_1DD6E59B8();
      v47 = static ResponseOutput.== infix(_:_:)(v56, v55);
      sub_1DD6E5ABC();
      sub_1DD8256EC();
      sub_1DD6E5ABC();
      sub_1DD824154(v59, &qword_1ECD11B08);
      if ((v47 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

    sub_1DD824F00();
    sub_1DD6E5ABC();
    goto LABEL_37;
  }

  sub_1DD6DE1FC(v59 + v45, 1, v58);
  if (!v25)
  {
LABEL_37:
    v28 = &qword_1ECD11B10;
    v29 = v59;
    goto LABEL_10;
  }

  sub_1DD824154(v59, &qword_1ECD11B08);
LABEL_39:
  sub_1DD826BE0();
  if (v50 && v48)
  {
    sub_1DD824D88(v49);
    if (v25)
    {
      v53 = v51 == v52;
    }

    else
    {
      v53 = 0;
    }

    if (!v53)
    {
      sub_1DD875A30();
    }
  }

LABEL_11:
  sub_1DD6DFED0();
}

void static IntermediateSystemResponse.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = sub_1DD827638();
  v98 = type metadata accessor for ResponseOutput(v3);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v5 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD82486C(v7, v96);
  v97 = sub_1DD710A9C(&qword_1ECD11B10, &qword_1DD889918);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD824F70(v9);
  v10 = sub_1DD874820();
  sub_1DD6DDEAC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E535C();
  v14 = &qword_1ECD0E540;
  v15 = sub_1DD6F9BF8();
  v17 = sub_1DD710A9C(v15, v16);
  sub_1DD6DEA10(v17);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDFE4();
  v19 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v19);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DEBA0();
  v22 = *(v21 + 56);
  sub_1DD8256EC();
  sub_1DD702AB4();
  sub_1DD700E60();
  sub_1DD702AB4();
  sub_1DD700E60();
  sub_1DD6E26E4(v1);
  if (v23)
  {
    sub_1DD6E26E4(v1 + v22);
    if (v23)
    {
      sub_1DD824154(v1, &qword_1ECD0E540);
      goto LABEL_12;
    }

LABEL_9:
    v26 = &qword_1ECD10E30;
LABEL_10:
    sub_1DD824154(v1, v26);
    goto LABEL_43;
  }

  sub_1DD6F4D4C();
  sub_1DD700E60();
  sub_1DD6E26E4(v1 + v22);
  if (v23)
  {
    v24 = sub_1DD6F441C();
    v25(v24);
    goto LABEL_9;
  }

  (*(v12 + 32))(v0, v1 + v22, v10);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v27);
  sub_1DD825650();
  v14 = sub_1DD8750F0();
  v28 = *(v12 + 8);
  v29 = sub_1DD770D4C();
  v28(v29);
  v30 = sub_1DD6F441C();
  v28(v30);
  sub_1DD824154(v1, &qword_1ECD0E540);
  if ((v14 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  type metadata accessor for IntermediateSystemResponse(0);
  sub_1DD826B0C();
  sub_1DD826A18();
  if (!v23)
  {
    if (v2 == 1)
    {
      v42 = sub_1DD824A70();
      sub_1DD703958(v42, v1, 1);
      v43 = sub_1DD6FABC8();
      sub_1DD703958(v43, v44, v45);

LABEL_29:
      v49 = sub_1DD6FABC8();
      sub_1DD70148C(v49, v50, v51);
      v52 = sub_1DD824DD8();
LABEL_42:
      sub_1DD70148C(v52, v53, v54);
      goto LABEL_43;
    }

    if (&qword_1DD878B10 == v0)
    {
      if (!v10)
      {
        v84 = sub_1DD6E6378();
        sub_1DD703958(v84, v85, 0);
        v66 = 0;
        if (!v2)
        {
          v86 = sub_1DD6DED5C();
          sub_1DD703958(v86, v87, 0);
          v88 = sub_1DD6E6378();
          sub_1DD703958(v88, v89, 0);
          v90 = sub_1DD6DED5C();
          v92 = 0;
          goto LABEL_60;
        }

LABEL_40:
        v67 = sub_1DD824DD8();
        sub_1DD703958(v67, v68, v69);
        v70 = sub_1DD6E6378();
        sub_1DD703958(v70, v71, v66);
        v72 = sub_1DD824DD8();
        sub_1DD70148C(v72, v73, v74);
        goto LABEL_41;
      }

      if (v2)
      {
        if (v14 != v1 || v10 != v2)
        {
          sub_1DD8265C8();
          sub_1DD827050();
          v56 = sub_1DD875A30();
          sub_1DD824A70();
          sub_1DD8259B0();
          sub_1DD703958(v57, v58, v59);
          sub_1DD824A70();
          sub_1DD8259B0();
          sub_1DD70148C(v60, v61, v62);
          if (v56)
          {
            goto LABEL_61;
          }

LABEL_41:

          v52 = sub_1DD6FABC8();
          goto LABEL_42;
        }

        sub_1DD824A70();
        sub_1DD8257D4();
        sub_1DD703958(v93, v94, v95);
        sub_1DD824A70();
        sub_1DD8257D4();
LABEL_60:
        sub_1DD70148C(v90, v91, v92);
LABEL_61:

        goto LABEL_16;
      }
    }

    v63 = sub_1DD6FABC8();
    sub_1DD703958(v63, v64, v65);
    v66 = v10;
    goto LABEL_40;
  }

  v31 = sub_1DD6E6378();
  sub_1DD703958(v31, v32, 1);
  if (v2 != 1)
  {
    v46 = sub_1DD824DD8();
    sub_1DD703958(v46, v47, v48);
    goto LABEL_29;
  }

  v33 = sub_1DD6DED5C();
  sub_1DD703958(v33, v34, 1);
LABEL_16:
  v35 = sub_1DD6FABC8();
  sub_1DD70148C(v35, v36, v37);
  sub_1DD824A14();
  if (v23)
  {
    v40 = v38 == v39;
  }

  else
  {
    v40 = 0;
  }

  if (!v40 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_43;
  }

  v41 = *(v97 + 48);
  v1 = v99;
  sub_1DD827158();
  sub_1DD827158();
  sub_1DD6DE1FC(v99, 1, v98);
  if (!v23)
  {
    sub_1DD700E60();
    sub_1DD6E26E4(v99 + v41);
    if (!v75)
    {
      sub_1DD82477C();
      sub_1DD6E59B8();
      v76 = sub_1DD825C74();
      static ResponseOutput.== infix(_:_:)(v76, v77);
      sub_1DD825D50();
      sub_1DD6E5ABC();
      sub_1DD825650();
      sub_1DD6E5ABC();
      sub_1DD824154(v99, &qword_1ECD11B08);
      if ((v98 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }

    sub_1DD824F00();
    sub_1DD6E5ABC();
    goto LABEL_47;
  }

  sub_1DD6E26E4(v99 + v41);
  if (!v23)
  {
LABEL_47:
    v26 = &qword_1ECD11B10;
    goto LABEL_10;
  }

  sub_1DD824154(v99, &qword_1ECD11B08);
LABEL_49:
  sub_1DD826BE0();
  if (v80 && v78)
  {
    sub_1DD824D88(v79);
    if (v23)
    {
      v83 = v81 == v82;
    }

    else
    {
      v83 = 0;
    }

    if (!v83)
    {
      sub_1DD875A30();
    }
  }

LABEL_43:
  sub_1DD6DFED0();
}

void static IntermediateSystemResponseRendered.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  sub_1DD874820();
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E535C();
  v6 = sub_1DD6ED130();
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEBA0();
  v10 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE340();
  v13 = *(v12 + 56);
  sub_1DD6FF97C();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (v14)
  {
    sub_1DD6E26E4(v2 + v13);
    if (v14)
    {
      sub_1DD824154(v2, &qword_1ECD0E540);
      goto LABEL_11;
    }

LABEL_9:
    sub_1DD824154(v2, &qword_1ECD10E30);
    goto LABEL_38;
  }

  sub_1DD6EFF74();
  sub_1DD700E60();
  sub_1DD6E26E4(v2 + v13);
  if (v14)
  {
    v15 = sub_1DD8258C4();
    v16(v15);
    goto LABEL_9;
  }

  v17 = sub_1DD8252A0();
  v18(v17);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v19);
  sub_1DD6E60FC();
  v20 = sub_1DD8750F0();
  v21 = *(v4 + 8);
  v22 = sub_1DD770D4C();
  v21(v22);
  v23 = sub_1DD8258C4();
  v21(v23);
  sub_1DD824154(v2, &qword_1ECD0E540);
  if ((v20 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_11:
  v24 = *(type metadata accessor for IntermediateSystemResponseRendered(0) + 20);
  v26 = *(v1 + v24);
  v25 = *(v1 + v24 + 8);
  v27 = *(v1 + v24 + 16);
  v28 = (v0 + v24);
  v29 = v28[2];
  if (v27 != 1)
  {
    if (v29 == 1)
    {
      v43 = sub_1DD824C78();
      sub_1DD703958(v43, v44, v45);
      v46 = sub_1DD6ED130();
      sub_1DD703958(v46, v47, 1);
      v48 = sub_1DD824C78();
      sub_1DD703958(v48, v49, v50);

LABEL_24:
      v54 = sub_1DD824C78();
      sub_1DD70148C(v54, v55, v56);
      v57 = sub_1DD705DD4();
LABEL_37:
      sub_1DD70148C(v57, v58, v59);
      goto LABEL_38;
    }

    if (v26 == *v28)
    {
      if (!v27)
      {
        v86 = sub_1DD770D4C();
        sub_1DD703958(v86, v87, 0);
        v77 = 0;
        if (!v29)
        {
          v88 = sub_1DD6ED130();
          sub_1DD703958(v88, v89, 0);
          v90 = sub_1DD770D4C();
          sub_1DD703958(v90, v91, 0);
          v92 = sub_1DD6ED130();
          v94 = 0;
          goto LABEL_43;
        }

LABEL_35:
        v78 = sub_1DD705DD4();
        sub_1DD703958(v78, v79, v80);
        v81 = sub_1DD770D4C();
        sub_1DD703958(v81, v82, v77);
        v83 = sub_1DD705DD4();
        sub_1DD70148C(v83, v84, v85);
        goto LABEL_36;
      }

      if (v29)
      {
        if (v25 != v28[1] || v27 != v29)
        {
          sub_1DD8256C8();
          sub_1DD75366C();
          v61 = sub_1DD875A30();
          v62 = sub_1DD824C78();
          sub_1DD703958(v62, v63, v64);
          v65 = sub_1DD705DD4();
          sub_1DD703958(v65, v66, v67);
          v68 = sub_1DD824C78();
          sub_1DD703958(v68, v69, v70);
          v71 = sub_1DD705DD4();
          sub_1DD70148C(v71, v72, v73);
          if (v61)
          {
            goto LABEL_44;
          }

LABEL_36:

          v57 = sub_1DD824C78();
          goto LABEL_37;
        }

        v95 = sub_1DD824C78();
        sub_1DD703958(v95, v96, v97);
        v98 = sub_1DD6F441C();
        sub_1DD703958(v98, v99, v27);
        v100 = sub_1DD824C78();
        sub_1DD703958(v100, v101, v102);
        v92 = sub_1DD6F441C();
        v94 = v27;
LABEL_43:
        sub_1DD70148C(v92, v93, v94);
LABEL_44:

        goto LABEL_14;
      }
    }

    v74 = sub_1DD824C78();
    sub_1DD703958(v74, v75, v76);
    v77 = v27;
    goto LABEL_35;
  }

  v30 = sub_1DD770D4C();
  sub_1DD703958(v30, v31, 1);
  if (v29 != 1)
  {
    v51 = sub_1DD705DD4();
    sub_1DD703958(v51, v52, v53);
    goto LABEL_24;
  }

  v32 = sub_1DD6ED130();
  sub_1DD703958(v32, v33, 1);
LABEL_14:
  v34 = sub_1DD824C78();
  sub_1DD70148C(v34, v35, v36);
  sub_1DD6E8898();
  if (v39 && v37)
  {
    sub_1DD824D88(v38);
    if (v14)
    {
      v42 = v40 == v41;
    }

    else
    {
      v42 = 0;
    }

    if (!v42)
    {
      sub_1DD875A30();
    }
  }

LABEL_38:
  sub_1DD6DFED0();
}

void static PlannerPromptData.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD715384();
  if (v20)
  {
    v21 = sub_1DD6DDEFC();

    sub_1DD715528(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1DD7C4C0C(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v4 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1DD6DDEFC();

  return v6(v5);
}

void static ActionExecutionOutcome.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for ActionExecutionOutcome(0);
    sub_1DD826354();
    sub_1DD824820(v1);
    v4 = v4 && v2 == v3;
    if (v4 || (sub_1DD875A30() & 1) != 0)
    {
      sub_1DD8263A4(*(v0 + 24));

      static StatementOutcome.== infix(_:_:)();
    }
  }
}

uint64_t sub_1DD7C4D18(uint64_t a1)
{
  v2 = sub_1DD80154C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4D54(uint64_t a1)
{
  v2 = sub_1DD80154C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4D90(uint64_t a1)
{
  v2 = sub_1DD8015A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4DCC(uint64_t a1)
{
  v2 = sub_1DD8015A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4E08(uint64_t a1)
{
  v2 = sub_1DD801DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4E44(uint64_t a1)
{
  v2 = sub_1DD801DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4E80(uint64_t a1)
{
  v2 = sub_1DD801840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4EBC(uint64_t a1)
{
  v2 = sub_1DD801840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4EF8(uint64_t a1)
{
  v2 = sub_1DD8020C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4F34(uint64_t a1)
{
  v2 = sub_1DD8020C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4F70(uint64_t a1)
{
  v2 = sub_1DD802074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C4FAC(uint64_t a1)
{
  v2 = sub_1DD802074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C4FE8(uint64_t a1)
{
  v2 = sub_1DD802020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5024(uint64_t a1)
{
  v2 = sub_1DD802020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5060(uint64_t a1)
{
  v2 = sub_1DD801F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C509C(uint64_t a1)
{
  v2 = sub_1DD801F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C50D8(uint64_t a1)
{
  v2 = sub_1DD8017EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5114(uint64_t a1)
{
  v2 = sub_1DD8017EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5150(uint64_t a1)
{
  v2 = sub_1DD8021C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C518C(uint64_t a1)
{
  v2 = sub_1DD8021C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C51C8(uint64_t a1)
{
  v2 = sub_1DD802170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5204(uint64_t a1)
{
  v2 = sub_1DD802170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5240(uint64_t a1)
{
  v2 = sub_1DD801ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C527C(uint64_t a1)
{
  v2 = sub_1DD801ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C52B8(uint64_t a1)
{
  v2 = sub_1DD802410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C52F4(uint64_t a1)
{
  v2 = sub_1DD802410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5330(uint64_t a1)
{
  v2 = sub_1DD801894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C536C(uint64_t a1)
{
  v2 = sub_1DD801894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C53A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7C4D10();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7C53D0(uint64_t a1)
{
  v2 = sub_1DD6FAA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C540C(uint64_t a1)
{
  v2 = sub_1DD6FAA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5448(uint64_t a1)
{
  v2 = sub_1DD801B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5484(uint64_t a1)
{
  v2 = sub_1DD801B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C54C0(uint64_t a1)
{
  v2 = sub_1DD801C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C54FC(uint64_t a1)
{
  v2 = sub_1DD801C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5538(uint64_t a1)
{
  v2 = sub_1DD802218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5574(uint64_t a1)
{
  v2 = sub_1DD802218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C55B0(uint64_t a1)
{
  v2 = sub_1DD8027AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C55EC(uint64_t a1)
{
  v2 = sub_1DD8027AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5628(uint64_t a1)
{
  v2 = sub_1DD8026B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5664(uint64_t a1)
{
  v2 = sub_1DD8026B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C56A0(uint64_t a1)
{
  v2 = sub_1DD703164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C56DC(uint64_t a1)
{
  v2 = sub_1DD703164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5718(uint64_t a1)
{
  v2 = sub_1DD80193C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5754(uint64_t a1)
{
  v2 = sub_1DD80193C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5790(uint64_t a1)
{
  v2 = sub_1DD6FDB5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C57CC(uint64_t a1)
{
  v2 = sub_1DD6FDB5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5808(uint64_t a1)
{
  v2 = sub_1DD8018E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5844(uint64_t a1)
{
  v2 = sub_1DD8018E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5880(uint64_t a1)
{
  v2 = sub_1DD801990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C58BC(uint64_t a1)
{
  v2 = sub_1DD801990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C58F8(uint64_t a1)
{
  v2 = sub_1DD8019E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5934(uint64_t a1)
{
  v2 = sub_1DD8019E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5970(uint64_t a1)
{
  v2 = sub_1DD801D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C59AC(uint64_t a1)
{
  v2 = sub_1DD801D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C59E8(uint64_t a1)
{
  v2 = sub_1DD801CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5A24(uint64_t a1)
{
  v2 = sub_1DD801CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5A60(uint64_t a1)
{
  v2 = sub_1DD8022C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5A9C(uint64_t a1)
{
  v2 = sub_1DD8022C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5AD8(uint64_t a1)
{
  v2 = sub_1DD801648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5B14(uint64_t a1)
{
  v2 = sub_1DD801648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5B50(uint64_t a1)
{
  v2 = sub_1DD802608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5B8C(uint64_t a1)
{
  v2 = sub_1DD802608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5BC8(uint64_t a1)
{
  v2 = sub_1DD802368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5C04(uint64_t a1)
{
  v2 = sub_1DD802368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5C40(uint64_t a1)
{
  v2 = sub_1DD802560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5C7C(uint64_t a1)
{
  v2 = sub_1DD802560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5CB8(uint64_t a1)
{
  v2 = sub_1DD8028FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5CF4(uint64_t a1)
{
  v2 = sub_1DD8028FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5D30(uint64_t a1)
{
  v2 = sub_1DD801A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5D6C(uint64_t a1)
{
  v2 = sub_1DD801A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5DA8(uint64_t a1)
{
  v2 = sub_1DD801AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5DE4(uint64_t a1)
{
  v2 = sub_1DD801AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5E20(uint64_t a1)
{
  v2 = sub_1DD801798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5E5C(uint64_t a1)
{
  v2 = sub_1DD801798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5E98(uint64_t a1)
{
  v2 = sub_1DD802854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5ED4(uint64_t a1)
{
  v2 = sub_1DD802854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5F10(uint64_t a1)
{
  v2 = sub_1DD8024B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5F4C(uint64_t a1)
{
  v2 = sub_1DD8024B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C5F88(uint64_t a1)
{
  v2 = sub_1DD8016F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C5FC4(uint64_t a1)
{
  v2 = sub_1DD8016F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6000(uint64_t a1)
{
  v2 = sub_1DD802758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C603C(uint64_t a1)
{
  v2 = sub_1DD802758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6078(uint64_t a1)
{
  v2 = sub_1DD801E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C60B4(uint64_t a1)
{
  v2 = sub_1DD801E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C60F0(uint64_t a1)
{
  v2 = sub_1DD801E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C612C(uint64_t a1)
{
  v2 = sub_1DD801E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6168(uint64_t a1)
{
  v2 = sub_1DD801D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C61A4(uint64_t a1)
{
  v2 = sub_1DD801D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C61E0(uint64_t a1)
{
  v2 = sub_1DD6F9C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C621C(uint64_t a1)
{
  v2 = sub_1DD6F9C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C6258(uint64_t a1)
{
  v2 = sub_1DD802950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C6294(uint64_t a1)
{
  v2 = sub_1DD802950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.init(query:requiredContextProviders:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E7258();
  v12 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v12);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD824CB0(v14, v90[0]);
  v15 = sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
  sub_1DD6DEA10(v15);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E9560();
  v95 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
  sub_1DD6DDEAC();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE21C();
  v97 = v20 - v21;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v22);
  if (!v3)
  {
    goto LABEL_19;
  }

  v96 = (v90 - v23);
  v91 = v7;
  v92 = v5;
  v98 = MEMORY[0x1E69E7CC0];
  v24 = *(v3 + 16);
  v93 = v9;
  if (v24)
  {
    v25 = v3 + 32;
    do
    {
      sub_1DD803034(v25, &v99);
      sub_1DD6DF224(&v99, *(&v100 + 1));
      v26 = sub_1DD6DED5C();
      v28 = v27(v26);
      sub_1DD6E1EC8(&v99);
      sub_1DD7FC39C(v28);
      v25 += 40;
      --v24;
    }

    while (v24);

    v29 = v98;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v29 + 16);
  v31 = v96;
  if (!v30)
  {
LABEL_18:

    v5 = v92;
    v9 = v93;
    v7 = v91;
LABEL_19:
    *v9 = v7;
    v9[1] = v5;
    type metadata accessor for MessagePayload.RequestContent(0);
    swift_storeEnumTagMultiPayload();
    v67 = sub_1DD874820();
    sub_1DD6E0C90();
    sub_1DD70386C(v68, v69, v70, v67);
    v71 = sub_1DD874B70();
    sub_1DD6E0C90();
    v75 = sub_1DD70386C(v72, v73, v74, v71);
    v76 = type metadata accessor for MessagePayload.Request(v75);
    v77 = v76[5];
    v78 = v9 + v76[7];
    *(v78 + 6) = 0;
    *(v78 + 1) = 0u;
    *(v78 + 2) = 0u;
    *v78 = 0u;
    v78[56] = -1;
    sub_1DD6E0C90();
    sub_1DD6E5E68(v79, v80, v81, v67);
    sub_1DD827360();
    v82 = (v9 + v76[10]);
    *v82 = 0;
    v82[1] = 0;
    sub_1DD6E0C90();
    sub_1DD6E5E68(v83, v84, v85, v71);
    *(v9 + v77) = 0;
    *(v9 + v76[6]) = 0;
    v86 = *(v78 + 1);
    v99 = *v78;
    v100 = v86;
    *v101 = *(v78 + 2);
    *&v101[9] = *(v78 + 41);
    sub_1DD824154(&v99, &unk_1ECD10E28);
    *v78 = 0u;
    *(v78 + 1) = 0u;
    *(v78 + 2) = 0u;
    *(v78 + 6) = 0;
    v78[56] = -1;
    sub_1DD807414();
    v87 = sub_1DD82676C();
    sub_1DD6FE2E0(v87, v88, v89);
    sub_1DD827360();
    sub_1DD807414();
    type metadata accessor for MessagePayload(0);
    swift_storeEnumTagMultiPayload();
    sub_1DD6DFED0();
    return;
  }

  v90[1] = v29;
  v90[2] = v0;
  sub_1DD6E17FC();
  v34 = v32 + v33;
  v35 = MEMORY[0x1E69E7CC8];
  v94 = *(v18 + 72);
  while (1)
  {
    sub_1DD82598C();
    sub_1DD700E60();
    sub_1DD82598C();
    sub_1DD700E60();

    v37 = *v31;
    v36 = v31[1];
    swift_isUniquelyReferenced_nonNull_native();
    *&v99 = v35;
    v38 = sub_1DD825570();
    v40 = sub_1DD6FB688(v38, v39);
    if (__OFADD__(v35[2], (v41 & 1) == 0))
    {
      break;
    }

    v42 = v40;
    v43 = v41;
    sub_1DD710A9C(&qword_1ECD121C0, &unk_1DD889C10);
    if (sub_1DD875770())
    {
      v44 = sub_1DD825570();
      v46 = sub_1DD6FB688(v44, v45);
      if ((v43 & 1) != (v47 & 1))
      {
        goto LABEL_22;
      }

      v42 = v46;
    }

    v48 = *(v95 + 48);
    v35 = v99;
    if (v43)
    {
      v49 = *(v99 + 56);
      v50 = sub_1DD874FA0();
      sub_1DD6DE1C4();
      v52 = *(v51 + 32);
      v53 = *(v51 + 72) * v42;
      v52(v1, v49 + v53, v50);
      v52(v35[7] + v53, v97 + v48, v50);
      sub_1DD6E09D4();
      sub_1DD6E5E68(v54, v55, v56, v50);
    }

    else
    {
      *(v99 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v57 = (v35[6] + 16 * v42);
      *v57 = v37;
      v57[1] = v36;
      v58 = v35[7];
      v59 = sub_1DD874FA0();
      sub_1DD6DE1C4();
      (*(v60 + 32))(v58 + *(v60 + 72) * v42, v97 + v48, v59);
      v61 = v35[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_21;
      }

      v35[2] = v63;
      sub_1DD6E0C90();
      sub_1DD6E5E68(v64, v65, v66, v59);
    }

    sub_1DD824154(v1, &qword_1ECD121B8);
    v31 = v96;
    sub_1DD824154(v96, &qword_1ECD0FA80);
    v34 += v94;
    if (!--v30)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1DD875A80();
  __break(1u);
}

uint64_t sub_1DD7C6974()
{
  v3 = sub_1DD6ED7A4();
  v4(v3);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SystemPrompt.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemPrompt(v0);
  return sub_1DD6DDF9C();
}

uint64_t SystemPrompt.prompt.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemPrompt(v0);
  return sub_1DD6DDF9C();
}

unint64_t SystemPrompt.description.getter()
{
  sub_1DD8756B0();

  sub_1DD826724();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v1);
  v2 = sub_1DD875A10();
  MEMORY[0x1E12B4C10](v2);

  MEMORY[0x1E12B4C10](0x64496C6F6F74202CLL, 0xEA0000000000203ALL);
  type metadata accessor for SystemPrompt(0);
  sub_1DD826354();
  MEMORY[0x1E12B4C10](*(v0 + v3), *(v0 + v3 + 8));
  MEMORY[0x1E12B4C10](0x74706D6F7270202CLL, 0xEA0000000000203ALL);
  v4 = SystemPrompt.Prompt.description.getter();
  MEMORY[0x1E12B4C10](v4);

  sub_1DD826BA8();
  return 0xD000000000000015;
}

uint64_t sub_1DD7C6BC8(char a1)
{
  sub_1DD8756B0();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E12B4C10](v2, v3);

  MEMORY[0x1E12B4C10](41, 0xE100000000000000);
  MEMORY[0x1E12B4C10](0xD00000000000002ELL, 0x80000001DD8B63C0);
}

unint64_t SystemPrompt.Prompt.description.getter()
{
  v0 = 0xD000000000000012;
  type metadata accessor for SystemPrompt.Prompt(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6E535C();
  sub_1DD6FAB40();
  sub_1DD705564();
  sub_1DD6E5870();
  sub_1DD6E0C60();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DD8259F8();
  sub_1DD6E5ABC();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v0 = 0xD000000000000013;
      break;
    case 2:
      v0 = 0xD000000000000015;
      break;
    case 3:
      v0 = 0xD000000000000017;
      break;
    default:
      return v0;
  }

  return v0;
}

void static SystemPrompt.Prompt.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v1 = type metadata accessor for ParameterConfirmation(0);
  v2 = sub_1DD6DEA10(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  v3 = sub_1DD6E9A9C();
  v4 = type metadata accessor for ParameterNeedsValue(v3);
  v5 = sub_1DD6DEA10(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD702A64();
  type metadata accessor for SystemPrompt.Prompt(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE21C();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD8264E0();
  v13 = sub_1DD710A9C(&qword_1ECD121D0, &qword_1DD889C98);
  sub_1DD6DEA10(v13);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD8265FC();
  v16 = (v0 + *(v15 + 56));
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD8256C8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6FAB40();
      sub_1DD826680();
      sub_1DD6E5870();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1DD824E70();
        sub_1DD6E59B8();
        v21 = sub_1DD6E6384();
        static ParameterNeedsValue.== infix(_:_:)(v21);
        sub_1DD824E58();
        sub_1DD6E5ABC();
        goto LABEL_10;
      }

      sub_1DD825E00();
      goto LABEL_14;
    case 2u:
      sub_1DD6FAB40();
      sub_1DD6E5870();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_14:
        sub_1DD6E5ABC();
        goto LABEL_15;
      }

      sub_1DD824E28();
      sub_1DD6E59B8();
      static ParameterConfirmation.== infix(_:_:)();
      sub_1DD6E5ABC();
LABEL_10:
      sub_1DD6E5ABC();
      goto LABEL_17;
    case 3u:
      sub_1DD6FAB40();
      sub_1DD700D0C();
      sub_1DD6E5870();
      v17 = v9[1];
      v24[0] = *v9;
      v24[1] = v17;
      v18 = v9[3];
      v25[0] = v9[2];
      v25[1] = v18;
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v19 = v16[1];
        v22[0] = *v16;
        v22[1] = v19;
        v20 = v16[3];
        v23[0] = v16[2];
        v23[1] = v20;
        static ParameterDisambiguation.== infix(_:_:)();
        sub_1DD80040C(v22);
        sub_1DD80040C(v24);
        goto LABEL_17;
      }

      sub_1DD80040C(v24);
      goto LABEL_15;
    default:
      sub_1DD6FAB40();
      sub_1DD705564();
      sub_1DD6E5870();
      *(v25 + 10) = sub_1DD6FF6B0();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1DD80043C(v24);
LABEL_15:
        sub_1DD824154(v0, &qword_1ECD121D0);
      }

      else
      {
        sub_1DD826EB8();
        *(v23 + 10) = *(v16 + 42);
        static ActionConfirmation.== infix(_:_:)();
        sub_1DD80043C(v22);
        sub_1DD80043C(v24);
LABEL_17:
        sub_1DD8259EC();
        sub_1DD6E5ABC();
      }

      sub_1DD6DFED0();
      return;
  }
}

void static ActionConfirmation.== infix(_:_:)()
{
  sub_1DD6FF8A8();
  v1 = sub_1DD6E27E8(v0);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v3[5];
  v6 = v3[6];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (v12 || (sub_1DD875A30() & 1) != 0)
  {
    v13 = v4 == v8 && v5 == v9;
    if (v13 || (sub_1DD705DD4(), (sub_1DD875A30() & 1) != 0))
    {
      v14 = sub_1DD6EFF74();
      sub_1DD7AA640(v14, v15);
      if (v16)
      {
        if (v6)
        {
          if (v11)
          {
            if (v7 != v10 || v6 != v11)
            {
              v18 = sub_1DD6E21D0();
              sub_1DD7013BC(v18, v19);
            }

            goto LABEL_21;
          }
        }

        else if (!v11)
        {
LABEL_21:
        }
      }
    }
  }

  sub_1DD6E58C4();
}

uint64_t static ParameterNeedsValue.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E1FC0(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ParameterNeedsValue(0);
  sub_1DD6F4D70(v6);
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD8263A4(*(v6 + 24));
  if ((sub_1DD874FB0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v8 = v2 + v7;
  v9 = *(v2 + v7 + 8);
  v10 = *(v1 + v7 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1DD824D88(v8);
    if (v5 && v9 == v11)
    {
    }

    else
    {
      v13 = sub_1DD875A30();

      if ((v13 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  return 1;
}

void static ParameterConfirmation.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v3 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E535C();
  v5 = sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEBA0();
  v7 = sub_1DD710A9C(&qword_1ECD121D8, &qword_1DD889CA0);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE340();
  v9 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v9 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!*(v0 + 24))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(v1 + 16) != *(v0 + 16))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_22;
    }
  }

  v11 = type metadata accessor for ParameterConfirmation(0);
  v12 = sub_1DD826E64(*(v11 + 24));
  if (!static AttributedValue.== infix(_:_:)(v12, v13))
  {
    goto LABEL_22;
  }

  v14 = *(v7 + 48);
  sub_1DD825BF4();
  sub_1DD700E60();
  sub_1DD75366C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (!v9)
  {
    sub_1DD6EFF74();
    sub_1DD700E60();
    sub_1DD6E26E4(v2 + v14);
    if (!v15)
    {
      v18 = sub_1DD6F444C();
      v19(v18);
      sub_1DD6E05D4();
      sub_1DD6E1E84(v20);
      sub_1DD6E60FC();
      v21 = sub_1DD8750F0();
      v22 = sub_1DD770D4C();
      MEMORY[0](v22);
      v23 = sub_1DD8258C4();
      MEMORY[0](v23);
      sub_1DD824154(v2, &qword_1ECD121B8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    v16 = sub_1DD6FF900();
    v17(v16, v3);
LABEL_21:
    sub_1DD824154(v2, &qword_1ECD121D8);
    goto LABEL_22;
  }

  sub_1DD6E26E4(v2 + v14);
  if (!v9)
  {
    goto LABEL_21;
  }

  sub_1DD824154(v2, &qword_1ECD121B8);
LABEL_24:
  sub_1DD6E8898();
  if (v26)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    sub_1DD824D88(v25);
    v29 = v9 && v27 == v28;
    if (!v29 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v24)
  {
    goto LABEL_22;
  }

  sub_1DD6E8898();
  if (v32 && v30)
  {
    sub_1DD824D88(v31);
    if (!v9 || v33 != v34)
    {
      sub_1DD875A30();
    }
  }

LABEL_22:
  sub_1DD6DFED0();
}

void static ParameterDisambiguation.== infix(_:_:)()
{
  sub_1DD6FF8A8();
  v1 = sub_1DD6E27E8(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  v17 = *(v3 + 48);
  v18 = *(v3 + 56);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 40);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  if (!v10 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v5)
  {
    if (!v8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v13 = v8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_26;
    }
  }

  sub_1DD6ED130();
  sub_1DD7162FC();
  if ((v14 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v6)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    sub_1DD6EFF74();
    sub_1DD7152B8();
    if ((v15 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  if (v18 && v12 && (v17 != v11 || v18 != v12))
  {
    sub_1DD875A30();
  }

LABEL_26:
  sub_1DD6E58C4();
}

uint64_t sub_1DD7C77DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD8B6BC0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD8B6BE0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001DD8B6C00 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x80000001DD8B6C20 == a2)
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

unint64_t sub_1DD7C7938(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7C79B4(uint64_t a1)
{
  v2 = sub_1DD803258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C79F0(uint64_t a1)
{
  v2 = sub_1DD803258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C77DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C7A5C(uint64_t a1)
{
  v2 = sub_1DD8030B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C7A98(uint64_t a1)
{
  v2 = sub_1DD8030B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7AD4(uint64_t a1)
{
  v2 = sub_1DD8031B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C7B10(uint64_t a1)
{
  v2 = sub_1DD8031B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7B4C(uint64_t a1)
{
  v2 = sub_1DD803108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C7B88(uint64_t a1)
{
  v2 = sub_1DD803108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7C7BC4(uint64_t a1)
{
  v2 = sub_1DD803204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C7C00(uint64_t a1)
{
  v2 = sub_1DD803204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPrompt.Prompt.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v64 = sub_1DD710A9C(&qword_1ECD121E0, &qword_1DD889CA8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD8249DC(v26, v62);
  v27 = sub_1DD710A9C(&qword_1ECD121E8, &qword_1DD889CB0);
  sub_1DD6DF3FC(v27, &a16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD8247DC(v29, v63);
  v30 = type metadata accessor for ParameterConfirmation(0);
  v31 = sub_1DD6DEDE0(v30, &a12);
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v32);
  v33 = sub_1DD710A9C(&qword_1ECD121F0, &qword_1DD889CB8);
  sub_1DD6DF3FC(v33, &a11);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E0C6C();
  v36 = sub_1DD6ED230(v35);
  v37 = type metadata accessor for ParameterNeedsValue(v36);
  v38 = sub_1DD6DEDE0(v37, &v70);
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD702A64();
  v39 = sub_1DD710A9C(&qword_1ECD121F8, &qword_1DD889CC0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6E17C8();
  type metadata accessor for SystemPrompt.Prompt(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6E535C();
  sub_1DD710A9C(&qword_1ECD12200, &qword_1DD889CC8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6DE340();
  sub_1DD6FE770(v24);
  sub_1DD8030B4();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD6FAB40();
  sub_1DD6E5870();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E59B8();
      sub_1DD826920();
      sub_1DD803204();
      sub_1DD8272FC();
      sub_1DD6EFF94();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD6DEC60();
      sub_1DD6E1E84(v57);
      sub_1DD6FAD44();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v58 = sub_1DD6E5DE8();
      v59(v58);
      goto LABEL_6;
    case 2u:
      sub_1DD6E5B50();
      sub_1DD826FF0();
      sub_1DD8031B0();
      sub_1DD6EFF94();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD6E0FE0();
      sub_1DD6E1E84(v48);
      sub_1DD6FAD44();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v49 = sub_1DD6E5DE8();
      v50(v49);
LABEL_6:
      sub_1DD6E5ABC();
      v60 = sub_1DD824A94();
      v61(v60);
      break;
    case 3u:
      v51 = v20[1];
      v67 = *v20;
      v68 = v51;
      v52 = v20[3];
      v69[0] = v20[2];
      v69[1] = v52;
      sub_1DD803108();
      sub_1DD6EFF94();
      sub_1DD6FA420();
      sub_1DD875910();
      v65[0] = v67;
      v65[1] = v68;
      v66[0] = v69[0];
      v66[1] = v69[1];
      sub_1DD80315C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v53 = sub_1DD6E5DE8();
      v54(v53, v64);
      v55 = sub_1DD824A94();
      v56(v55);
      sub_1DD80040C(&v67);
      break;
    default:
      *(v69 + 10) = sub_1DD6FF6B0();
      LOBYTE(v65[0]) = 0;
      sub_1DD803258();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD8273B8();
      *(v66 + 10) = *(v69 + 10);
      sub_1DD8032AC();
      sub_1DD827280(v65, v43, v39, &type metadata for ActionConfirmation);
      sub_1DD6DEDD4();
      v44 = sub_1DD825980();
      v45(v44);
      v46 = sub_1DD824A60();
      v47(v46);
      sub_1DD80043C(&v67);
      break;
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void SystemPrompt.Prompt.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v24;
  a20 = v25;
  sub_1DD7038A0();
  sub_1DD710A9C(&qword_1ECD12250, &qword_1DD889CD0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD824A38(v27, v81);
  sub_1DD710A9C(&qword_1ECD12258, &qword_1DD889CD8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD82546C(v29, v82);
  v30 = sub_1DD710A9C(&qword_1ECD12260, &qword_1DD889CE0);
  sub_1DD6DF3FC(v30, &a16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD825428(v32, v83);
  sub_1DD710A9C(&qword_1ECD12268, &qword_1DD889CE8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD824B94(v34, v84);
  v87 = sub_1DD710A9C(&qword_1ECD12270, &qword_1DD889CF0);
  sub_1DD6DDEAC();
  v85 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  v37 = sub_1DD6E27D4();
  v86 = type metadata accessor for SystemPrompt.Prompt(v37);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6DFF40();
  v43 = v20[4];
  v88 = v20;
  sub_1DD70066C();
  sub_1DD8030B4();
  sub_1DD8259BC();
  sub_1DD8270F4(v44, v45, v46);
  if (!v21)
  {
    sub_1DD827308();
    a10 = v23;
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827598();
    if (!v47)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v54 == v55)
      {
        __break(1u);
        return;
      }

      v56 = *(v53 + v52);
      sub_1DD826480(v48, v49, v50, v51, v52);
      sub_1DD6ED830();
      sub_1DD8276EC();
      v58 = v57;
      swift_unknownObjectRelease();
      if (v43 == v58 >> 1)
      {
        switch(v56)
        {
          case 1:
            sub_1DD803204();
            sub_1DD6F3128();
            sub_1DD875800();
            type metadata accessor for ParameterNeedsValue(0);
            sub_1DD6DEC60();
            sub_1DD6E1E84(v65);
            sub_1DD6F4500();
            sub_1DD825CE0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v77 = sub_1DD824890();
            v78(v77);
            v79 = sub_1DD824F60();
            v80(v79);
            sub_1DD825674();
            swift_storeEnumTagMultiPayload();
            sub_1DD6ED818();
            goto LABEL_15;
          case 2:
            sub_1DD8031B0();
            sub_1DD6F3128();
            sub_1DD825CB0();
            sub_1DD875800();
            type metadata accessor for ParameterConfirmation(0);
            sub_1DD6E0FE0();
            sub_1DD6E1E84(v64);
            sub_1DD825CE0();
            sub_1DD8758D0();
            sub_1DD826B98();
            swift_unknownObjectRelease();
            v66 = sub_1DD8252CC();
            v67(v66);
            v68 = sub_1DD6FAA70();
            v69(v68);
            sub_1DD825C04();
            swift_storeEnumTagMultiPayload();
            sub_1DD6ED818();
LABEL_15:
            sub_1DD6E59B8();
            v76 = v88;
            goto LABEL_16;
          case 3:
            v89.n128_u8[0] = 3;
            sub_1DD803108();
            sub_1DD6F3128();
            sub_1DD825CB0();
            sub_1DD875800();
            sub_1DD803300();
            sub_1DD6F09C4();
            sub_1DD8758D0();
            sub_1DD826330();
            sub_1DD826B98();
            swift_unknownObjectRelease();
            v70 = sub_1DD6E6384();
            v71(v70);
            v72 = sub_1DD6FAA70();
            v73(v72);
            sub_1DD826888(&a11, v89, v90);
            *(v85 + 40) = *v91;
            *(v85 + 56) = *&v91[16];
            sub_1DD825C04();
            goto LABEL_14;
          default:
            v89.n128_u8[0] = 0;
            sub_1DD803258();
            sub_1DD6F3128();
            sub_1DD875800();
            sub_1DD803354();
            sub_1DD6E9938();
            sub_1DD8758D0();
            sub_1DD826330();
            sub_1DD826B98();
            swift_unknownObjectRelease();
            v74 = sub_1DD826814();
            v75(v74);
            (*(v85 + 8))(a10, v87);
            sub_1DD826888(&a10, v89, v90);
            *(v85 + 40) = *v91;
            *(v85 + 50) = *&v91[10];
            sub_1DD825C04();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            sub_1DD6ED818();
            sub_1DD6E59B8();
            v76 = v88;
LABEL_16:
            sub_1DD6ED818();
            sub_1DD8256C8();
            sub_1DD6E59B8();
            sub_1DD6E1EC8(v76);
            break;
        }

        goto LABEL_10;
      }
    }

    v59 = sub_1DD875740();
    sub_1DD6E41BC(v59, MEMORY[0x1E69E6B28]);
    sub_1DD827740();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v22 = v86;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v60 = sub_1DD6FEB10();
    v61(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = sub_1DD6DEBBC();
    v63(v62, v87);
  }

  sub_1DD6E1EC8(v88);
LABEL_10:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7C8BC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
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

uint64_t sub_1DD7C8D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C8BC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7C8D48(uint64_t a1)
{
  v2 = sub_1DD8033A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7C8D84(uint64_t a1)
{
  v2 = sub_1DD8033A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPrompt.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD12298, &qword_1DD889CF8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD8033A8();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v19);
  sub_1DD6F9A4C();
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v16)
  {
    type metadata accessor for SystemPrompt(0);
    sub_1DD825AA8();
    sub_1DD824D48((v17 + v20));
    sub_1DD7055A8();
    sub_1DD875970();
    sub_1DD6E0FF8();
    type metadata accessor for SystemPrompt.Prompt(0);
    sub_1DD700630();
    sub_1DD6E1E84(v21);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v22 = sub_1DD825168();
  v23(v22);
  sub_1DD825790();
  sub_1DD826CF4();
}

void SystemPrompt.init(from:)()
{
  sub_1DD6DED2C();
  v3 = sub_1DD82662C(v2);
  type metadata accessor for SystemPrompt.Prompt(v3);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD824734();
  sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  sub_1DD826244(v6);
  sub_1DD710A9C(&qword_1ECD122B0, &qword_1DD889D00);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  type metadata accessor for SystemPrompt(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6ED3C0();
  sub_1DD6FE8B0(v1);
  sub_1DD8033A8();
  sub_1DD6E17D8();
  sub_1DD82686C(v9, v10, v11);
  if (v0)
  {
    sub_1DD6E1EC8(v1);
  }

  else
  {
    sub_1DD8265B4();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v12);
    sub_1DD6F9A4C();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v13 = sub_1DD825764();
    v14(v13);
    sub_1DD824CE8();
    sub_1DD6E72A8();
    sub_1DD875870();
    sub_1DD8275F4();
    *v17 = v15;
    v17[1] = v16;
    sub_1DD6E0FF8();
    sub_1DD700630();
    sub_1DD6E1E84(v18);
    sub_1DD827008();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v19 = sub_1DD825780();
    v20(v19);
    sub_1DD6ED818();
    sub_1DD6E59B8();
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v1);
    sub_1DD826B48();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t SystemPromptResolution.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemPromptResolution(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7C9368(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = sub_1DD6EE78C();
  v8(v7);
  v9 = sub_1DD701458();
  a3(v9);
  sub_1DD6DF448();
  v11 = *(v10 + 40);

  return v11(v3 + v5, v4);
}

void (*SystemPromptResolution.actionResponseEventId.modify())(uint64_t a1)
{
  v1 = sub_1DD7281CC(0x28uLL);
  sub_1DD82748C(v1);
  *(v0 + 8) = sub_1DD874820();
  sub_1DD6DDEAC();
  *(v0 + 16) = v2;
  *(v0 + 24) = sub_1DD7281CC(*(v3 + 64));
  *(v0 + 32) = *(type metadata accessor for SystemPromptResolution(0) + 20);
  v4 = sub_1DD700660();
  v5(v4);
  return sub_1DD7C94B8;
}

void sub_1DD7C94B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  (*(*(*a1 + 16) + 40))(**a1 + *(*a1 + 32), v2, *(*a1 + 8));
  free(v2);

  free(v1);
}

uint64_t SystemPromptResolution.userAction.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemPromptResolution(v0);
  return sub_1DD6DDF9C();
}

uint64_t SystemPromptResolution.statementId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemPromptResolution(v0);
  return sub_1DD6DDF9C();
}

uint64_t SystemPromptResolution.inputModality.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SystemPromptResolution(v2);
  v4 = (v1 + *(result + 32));
  v11 = *(v4 + 32) == 2 && ((v5 = *v4, v6 = v4[1], v7 = v4[2] | v4[3], (v8 = v7 | *v4 | v6) == 0) || ((v9 = v7 | v6, v5 == 1) ? (v10 = v9 == 0) : (v10 = 0), v10)) && v8 != 0;
  *v0 = v11;
  return result;
}

uint64_t sub_1DD7C9694@<X0>(_BYTE *a1@<X8>)
{
  result = SystemPromptResolution.inputModality.getter();
  *a1 = v3;
  return result;
}

uint64_t SystemPromptResolution.inputModality.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1 + *(type metadata accessor for SystemPromptResolution(0) + 32);
  v4 = sub_1DD6E3AB0();
  result = sub_1DD7FD670(v4, v5, v6, v7, v8);
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  return result;
}

uint64_t (*SystemPromptResolution.inputModality.modify(void *a1))(uint64_t a1)
{
  v3 = sub_1DD82661C(a1);
  v4 = *(type metadata accessor for SystemPromptResolution(v3) + 32);
  *(v1 + 8) = v4;
  v5 = (v2 + v4);
  v10 = *(v5 + 32) == 2 && ((v6 = *v5, v7 = v5[1] | v5[2] | v5[3], (v8 = v7 | *v5) == 0) || (v6 == 1 ? (v9 = v7 == 0) : (v9 = 0), v9)) && v8 != 0;
  *(v1 + 12) = v10;
  return sub_1DD7C97E0;
}

uint64_t sub_1DD7C97E0(uint64_t a1)
{
  v1 = *a1 + *(a1 + 8);
  v2 = *(a1 + 12);
  result = sub_1DD7FD670(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2;
  return result;
}

double SystemPromptResolution.input.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SystemPromptResolution(v0);
  v2 = sub_1DD8255E0(*(v1 + 32));

  return sub_1DD7FD604(v2, v3, v4, v5, v6);
}

void SystemPromptResolution.input.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + *(type metadata accessor for SystemPromptResolution(0) + 32);
  v4 = sub_1DD6E3AB0();
  sub_1DD7FD670(v4, v5, v6, v7, v8);
  sub_1DD6FEB38();
  *(v3 + 32) = v2;
}

uint64_t SystemPromptResolution.input.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemPromptResolution(v0);
  return sub_1DD6DDF9C();
}

uint64_t SystemPromptResolution.description.getter()
{
  v1 = sub_1DD6FF97C();
  v3 = sub_1DD710A9C(v1, v2);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD8756B0();
  MEMORY[0x1E12B4C10](0xD000000000000026, 0x80000001DD8B62B0);
  sub_1DD825974();
  sub_1DD700E60();
  v5 = sub_1DD874820();
  v6 = sub_1DD6DE1FC(v0, 1, v5);
  if (v7)
  {
    sub_1DD824154(v0, &qword_1ECD0E540);
  }

  else
  {
    MEMORY[0x1E12B41F0](v6);
    sub_1DD6E0540();
    v8 = sub_1DD6E0C60();
    v9(v8);
  }

  v10 = sub_1DD6DDEDC();
  MEMORY[0x1E12B4C10](v10);

  MEMORY[0x1E12B4C10](0xD000000000000019, 0x80000001DD8B62E0);
  type metadata accessor for SystemPromptResolution(0);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v11);
  v12 = sub_1DD875A10();
  MEMORY[0x1E12B4C10](v12);

  MEMORY[0x1E12B4C10](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v13 = SystemPromptResolution.UserAction.description.getter();
  MEMORY[0x1E12B4C10](v13);

  MEMORY[0x1E12B4C10](0x6D6574617473202CLL, 0xEF203A6449746E65);
  v14 = StatementID.description.getter();
  MEMORY[0x1E12B4C10](v14);

  sub_1DD826BA8();
  return 0;
}

__n128 SystemPromptResolution.init(actionEventId:systemResponseEventId:userAction:statementId:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD826D80();
  sub_1DD6E01A0();
  v7 = *v6;
  v8 = *(v6 + 1);
  v26 = *(v6 + 2);
  v27 = *v9;
  v29 = v9[1];
  v10 = v9[2].u8[0];
  v11 = sub_1DD874820();
  sub_1DD6F8CEC(v11);
  v13 = (v5 + v12);
  sub_1DD827380();
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  sub_1DD6FF0E4();
  v14();
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v26;
  v16.i32[0] = 255;
  v17.i32[0] = v10;
  v18 = vdupq_lane_s32(*&vceqq_s32(v17, v16), 0);
  v28 = vbicq_s8(v27, v18);
  v30 = vbicq_s8(v29, v18);
  if (v10 == 255)
  {
    v19 = 2;
  }

  else
  {
    v19 = v10;
  }

  v20 = sub_1DD6FA3DC();
  sub_1DD7FD670(v20, v21, v22, v23, v24);
  *v13 = v28;
  v13[1] = v30;
  v13[2].i8[0] = v19;
  sub_1DD6F37CC();
  return result;
}

void sub_1DD7C9C70()
{
  sub_1DD6FF8A8();
  sub_1DD6E01A0();
  v11 = *v1;
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = *v4;
  v6 = sub_1DD874820();
  sub_1DD6F8CEC(v6);
  v8 = v0 + v7;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 2;
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  sub_1DD6FF0E4();
  v9();
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v10 = v11;
  *(v10 + 8) = v2;
  *(v10 + 16) = v3;
  sub_1DD7FD670(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  *v8 = v5 & 1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 2;
  sub_1DD6E58C4();
}

void SystemPromptResolution.init(actionEventId:actionResponseEventId:userAction:statementId:)()
{
  sub_1DD6DEB38();
  sub_1DD6E01A0();
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = sub_1DD874820();
  sub_1DD6F8CEC(v4);
  sub_1DD825BDC(v5);
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  sub_1DD6FF0E4();
  v6();
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  sub_1DD6DFED0();
}

void SystemPromptResolution.init(actionEventId:actionResponseEventId:userAction:)()
{
  sub_1DD6E0A5C();
  v0 = sub_1DD874820();
  sub_1DD6F8CEC(v0);
  sub_1DD825BDC(v1);
  sub_1DD6DEA04();
  sub_1DD807414();
  sub_1DD82583C();
  sub_1DD6FF0E4();
  v2();
  sub_1DD6F3220();
  sub_1DD826B70();
  sub_1DD6E59B8();
  sub_1DD827500();
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
}

uint64_t sub_1DD7C9EA0()
{
  sub_1DD6E0A5C();
  v1 = sub_1DD874820();
  v2 = sub_1DD8251B8();
  v5 = sub_1DD70386C(v2, v3, v4, v1);
  v6 = type metadata accessor for SystemPromptResolution(v5);
  sub_1DD825BDC(*(v6 + 32));
  sub_1DD824154(v0, &qword_1ECD0E540);
  sub_1DD6FF0E4();
  v7();
  sub_1DD825D88();
  sub_1DD6E5E68(v8, v9, v10, v11);
  _s16IntelligenceFlow15SessionClientIDVACycfC_0();
  v12 = sub_1DD6FF97C();
  v13(v12);
  sub_1DD6F3220();
  sub_1DD826B70();
  result = sub_1DD6E59B8();
  v15 = v0 + *(v6 + 28);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  return result;
}

uint64_t SystemPromptResolution.InputModality.description.getter()
{
  if (*v0)
  {
    return 0x7365672064616568;
  }

  else
  {
    return 0x6863756F74;
  }
}

uint64_t sub_1DD7C9FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863756F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473654764616568 && a2 == 0xEB00000000657275)
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

uint64_t sub_1DD7CA0B0(char a1)
{
  if (a1)
  {
    return 0x7473654764616568;
  }

  else
  {
    return 0x6863756F74;
  }
}

uint64_t sub_1DD7CA0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7C9FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CA11C(uint64_t a1)
{
  v2 = sub_1DD80341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CA158(uint64_t a1)
{
  v2 = sub_1DD80341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CA194(uint64_t a1)
{
  v2 = sub_1DD803470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CA1D0(uint64_t a1)
{
  v2 = sub_1DD803470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CA20C(uint64_t a1)
{
  v2 = sub_1DD8034C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CA248(uint64_t a1)
{
  v2 = sub_1DD8034C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.InputModality.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  sub_1DD826784();
  sub_1DD710A9C(&qword_1ECD122C0, &qword_1DD889D08);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD82480C(v26, v34);
  sub_1DD710A9C(&qword_1ECD122C8, &qword_1DD889D10);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD122D0, &qword_1DD889D18);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E7258();
  v29 = *v23;
  sub_1DD824CF8(v24);
  sub_1DD80341C();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875BB0();
  if (v29)
  {
    sub_1DD6FF8F4();
    sub_1DD803470();
    sub_1DD824848();
    sub_1DD875910();
    v30 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD8034C4();
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

void SystemPromptResolution.InputModality.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD826C50(v23);
  v54 = sub_1DD710A9C(&qword_1ECD122F0, &qword_1DD889D20);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E17C8();
  v25 = sub_1DD710A9C(&qword_1ECD122F8, &qword_1DD889D28);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD12300, &qword_1DD889D30);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DEBA0();
  sub_1DD6E6C94(v21);
  sub_1DD80341C();
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
          sub_1DD803470();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v43 = sub_1DD825038();
          v45 = v54;
        }

        else
        {
          sub_1DD8034C4();
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
    *v22 = &type metadata for SystemPromptResolution.InputModality;
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

uint64_t SystemPromptResolution.ResolutionInput.description.getter()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      MEMORY[0x1E12B4C10](0x28686365657073, 0xE700000000000000);
      sub_1DD875760();
      sub_1DD826BA8();
      return 0;
    }

    else if (*(v0 + 8) | *v0 | *(v0 + 16) | *(v0 + 24))
    {
      return 0x7365672064616568;
    }

    else
    {
      return 0x6863756F74;
    }
  }

  else
  {
    MEMORY[0x1E12B4C10](0x2874786574, 0xE500000000000000);
    sub_1DD875760();
    sub_1DD826BA8();
    return 0;
  }
}

BOOL static SystemPromptResolution.ResolutionInput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *(a2 + 32);
  v11 = a1[3];
  v115 = v4;
  if (*(a1 + 32))
  {
    if (v5 == 1)
    {
      if (v10 == 1)
      {
        v116[0] = *a1;
        v116[1] = v2;
        v117 = v4;
        v12 = sub_1DD824B58();
        sub_1DD7FD604(v12, v13, v14, v15, 1);
        v16 = sub_1DD6FDDBC();
        sub_1DD7FD604(v16, v17, v18, v19, v20);
        v21 = sub_1DD824B58();
        sub_1DD7FD604(v21, v22, v23, v24, 1);
        v25 = sub_1DD6FDDBC();
        sub_1DD7FD604(v25, v26, v27, v28, v29);
        v30 = static MessagePayload.RequestContent.SpeechContent.== infix(_:_:)(v116);
        v31 = sub_1DD6FDDBC();
        sub_1DD7FD670(v31, v32, v33, v34, v35);
        v36 = sub_1DD824B58();
        sub_1DD7FD670(v36, v37, v38, v39, 1);
        v40 = sub_1DD824B58();
        sub_1DD7FD670(v40, v41, v42, v43, 1);
        v44 = sub_1DD6FDDBC();
LABEL_22:
        sub_1DD7FD670(v44, v45, v46, v47, v48);
        return v30;
      }

      goto LABEL_27;
    }

    if (v4 | v2 | v3 | v11)
    {
      if (v10 == 2 && v7 == 1 && (v9 | v6 | v8) == 0)
      {
        v30 = 1;
        sub_1DD825850();
        sub_1DD7FD670(v73, v74, v75, v76, v77);
        sub_1DD825850();
        goto LABEL_22;
      }

LABEL_27:
      v79 = sub_1DD824B58();
      sub_1DD7FD604(v79, v80, v81, v82, v10);
      v83 = sub_1DD6E0C60();
      sub_1DD7FD604(v83, v84, v115, v11, v5);
      v85 = sub_1DD6E0C60();
      sub_1DD7FD670(v85, v86, v115, v11, v5);
      v87 = sub_1DD824B58();
      sub_1DD7FD670(v87, v88, v89, v90, v10);
      return 0;
    }

    if (v10 != 2 || (v9 | v6 | v7 | v8) != 0)
    {
      goto LABEL_27;
    }

    sub_1DD825850();
    sub_1DD7FD670(v110, v111, v112, v113, v114);
    sub_1DD825850();
    goto LABEL_31;
  }

  if (*(a2 + 32))
  {
    goto LABEL_27;
  }

  if (v3 == v7 && v2 == v6)
  {
    sub_1DD824AA4();
    sub_1DD7FD604(v92, v93, v94, v95, v96);
    sub_1DD6E0C60();
    sub_1DD82668C();
    sub_1DD7FD604(v97, v98, v99, v100, 0);
    sub_1DD6E0C60();
    sub_1DD82668C();
    sub_1DD7FD670(v101, v102, v103, v104, 0);
    sub_1DD6E0C60();
    sub_1DD824AA4();
LABEL_31:
    sub_1DD7FD670(v105, v106, v107, v108, v109);
    return 1;
  }

  v50 = sub_1DD875A30();
  sub_1DD6E5DB0();
  sub_1DD824AA4();
  sub_1DD7FD604(v51, v52, v53, v54, v55);
  sub_1DD6E0C60();
  sub_1DD705D5C();
  sub_1DD7FD604(v56, v57, v58, v59, v60);
  sub_1DD6E0C60();
  sub_1DD705D5C();
  sub_1DD7FD670(v61, v62, v63, v64, v65);
  sub_1DD6E5DB0();
  sub_1DD824AA4();
  sub_1DD7FD670(v66, v67, v68, v69, v70);
  v30 = 0;
  if (v50)
  {
    return 1;
  }

  return v30;
}

uint64_t sub_1DD7CAC38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863756F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473654764616568 && a2 == 0xEB00000000657275;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686365657073 && a2 == 0xE600000000000000)
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

uint64_t sub_1DD7CAD8C(char a1)
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

uint64_t sub_1DD7CAE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CAC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CAE38(uint64_t a1)
{
  v2 = sub_1DD803518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAE74(uint64_t a1)
{
  v2 = sub_1DD803518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CAEB0(uint64_t a1)
{
  v2 = sub_1DD803614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAEEC(uint64_t a1)
{
  v2 = sub_1DD803614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CAF28(uint64_t a1)
{
  v2 = sub_1DD80356C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAF64(uint64_t a1)
{
  v2 = sub_1DD80356C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CAFA0(uint64_t a1)
{
  v2 = sub_1DD8035C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CAFDC(uint64_t a1)
{
  v2 = sub_1DD8035C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CB018(uint64_t a1)
{
  v2 = sub_1DD803668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CB054(uint64_t a1)
{
  v2 = sub_1DD803668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.ResolutionInput.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD12308, &qword_1DD889D38);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v4);
  sub_1DD710A9C(&qword_1ECD12310, &qword_1DD889D40);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD824FD8(v6, v20);
  sub_1DD710A9C(&qword_1ECD12318, &qword_1DD889D48);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD824FEC(v8, v21);
  sub_1DD710A9C(&qword_1ECD12320, &qword_1DD889D50);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E7258();
  sub_1DD710A9C(&qword_1ECD12328, &qword_1DD889D58);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE340();
  v22 = v0[1];
  v23 = *v0;
  v11 = v0[2];
  v12 = v0[3];
  v13 = *(v0 + 32);
  sub_1DD6E49C0(v2);
  sub_1DD803518();
  sub_1DD8250D8();
  sub_1DD875BB0();
  if (!v13)
  {
    sub_1DD8035C0();
    sub_1DD824AB4();
    sub_1DD875910();
    sub_1DD6FDFC8();
    sub_1DD825AB4();
    sub_1DD8759D0();
    v18 = sub_1DD824838();
LABEL_8:
    v19(v18);
    v16 = sub_1DD824A60();
    goto LABEL_9;
  }

  if (v13 != 1)
  {
    if (v11 | v22 | v23 | v12)
    {
      sub_1DD803614();
      sub_1DD824AB4();
      sub_1DD875910();
      v18 = sub_1DD6FF900();
    }

    else
    {
      sub_1DD803668();
      sub_1DD824AB4();
      sub_1DD875910();
      v18 = sub_1DD705E24();
    }

    goto LABEL_8;
  }

  sub_1DD80356C();
  sub_1DD8251A8();
  sub_1DD875910();
  sub_1DD7FD784();
  sub_1DD8759D0();
  v14 = sub_1DD824F60();
  v15(v14);
  v16 = sub_1DD825148();
LABEL_9:
  v17(v16);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void SystemPromptResolution.ResolutionInput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1DD6DED2C();
  sub_1DD7038A0();
  v74 = v11;
  v75 = sub_1DD710A9C(&qword_1ECD12358, &qword_1DD889D60);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6FF92C(v13, v71);
  sub_1DD710A9C(&qword_1ECD12360, &qword_1DD889D68);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD824A4C(v15, v72);
  sub_1DD710A9C(&qword_1ECD12368, &qword_1DD889D70);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E9560();
  v17 = sub_1DD710A9C(&qword_1ECD12370, &qword_1DD889D78);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E17C8();
  v19 = sub_1DD710A9C(&qword_1ECD12378, &qword_1DD889D80);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6F0A58();
  v76 = v10;
  sub_1DD824D14(v10);
  sub_1DD803518();
  sub_1DD6EF0F4();
  sub_1DD8274A0();
  sub_1DD875B90();
  v21 = a10;
  if (!a10)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B24();
    v22 = v19;
    if (!v23)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v24 == v25)
      {
        __break(1u);
        return;
      }

      v73 = *(v31 + v30);
      sub_1DD6F43D8(v26, v27, v28, v29, v30);
      v21 = sub_1DD6ED830();
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      if (v33 == v35 >> 1)
      {
        switch(v73)
        {
          case 1:
            sub_1DD803614();
            sub_1DD82499C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v59 = sub_1DD825950();
            v60(v59);
            v61 = sub_1DD824838();
            v62(v61);
            v41 = 0;
            v42 = 0uLL;
            v43 = 2;
            v40 = 1;
            break;
          case 2:
            sub_1DD826FE4();
            sub_1DD8035C0();
            sub_1DD82499C();
            sub_1DD875800();
            sub_1DD700960();
            sub_1DD6F3128();
            sub_1DD827860(v49, v50, v51, v52, v53);
            sub_1DD826544();
            swift_unknownObjectRelease();
            v63 = sub_1DD825998();
            v64(v63);
            v65 = sub_1DD6E5DB0();
            v66(v65);
            v43 = 0;
            v40 = v77;
            v41 = v78;
            v42 = 0uLL;
            break;
          case 3:
            LOBYTE(v77) = 3;
            sub_1DD80356C();
            sub_1DD82499C();
            sub_1DD875800();
            sub_1DD7FD880();
            sub_1DD6F3128();
            sub_1DD827860(v54, v55, v56, v57, v58);
            sub_1DD826544();
            swift_unknownObjectRelease();
            v67 = sub_1DD6ED80C();
            v68(v67, v75);
            v69 = sub_1DD6E5DB0();
            v70(v69);
            v40 = v77;
            v41 = v78;
            v43 = 1;
            v42 = v79;
            break;
          default:
            sub_1DD803668();
            sub_1DD82499C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v36 = sub_1DD825950();
            v37(v36, v17);
            v38 = sub_1DD824838();
            v39(v38);
            v40 = 0;
            v41 = 0;
            v42 = 0uLL;
            v43 = 2;
            break;
        }

        *v74 = v40;
        *(v74 + 8) = v41;
        *(v74 + 16) = v42;
        *(v74 + 32) = v43;
        sub_1DD6E1EC8(v76);
        goto LABEL_13;
      }

      v22 = v19;
    }

    v44 = sub_1DD875740();
    sub_1DD6E41BC(v44, MEMORY[0x1E69E6B28]);
    sub_1DD8274C0();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v21 = &type metadata for SystemPromptResolution.ResolutionInput;
    v45 = sub_1DD875810();
    sub_1DD6DF100(v45);
    sub_1DD824B14();
    (*(v46 + 104))(v21);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_1DD824DC8();
    v48(v47, v22);
  }

  sub_1DD6E1EC8(v76);
LABEL_13:
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t SystemPromptResolution.UserAction.description.getter()
{
  sub_1DD874FA0();
  sub_1DD6E49A8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DE4A8();
  v2 = sub_1DD826C10();
  type metadata accessor for SystemPromptResolution.UserAction(v2);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD824734();
  sub_1DD6ED4CC();
  sub_1DD8256C8();
  sub_1DD6E5870();
  sub_1DD6E0F70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD8274CC();
      v4 = sub_1DD6FF97C();
      v5(v4);
      sub_1DD825714();
      sub_1DD8756B0();
      MEMORY[0x1E12B4C10](0xD000000000000017, 0x80000001DD8B6380);
      sub_1DD875760();
      sub_1DD826BA8();
      v6 = sub_1DD6ED118();
      v7(v6);
      return sub_1DD705564();
    case 3u:
    case 4u:
      sub_1DD825714();
      sub_1DD8756B0();

      sub_1DD8257F8();
      v9 = sub_1DD875A10();
      goto LABEL_11;
    case 5u:
      v13 = *v0;
      sub_1DD825714();
      sub_1DD8756B0();
      MEMORY[0x1E12B4C10](0xD000000000000015, 0x80000001DD8B6300);
      sub_1DD7C6BC8(v13);
      goto LABEL_12;
    case 6u:
    case 7u:
      return sub_1DD705564();
    default:
      v8 = *v0;
      sub_1DD825714();
      sub_1DD8756B0();

      sub_1DD8257F8();
      if (v8)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (v8)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = v10;
LABEL_11:
      MEMORY[0x1E12B4C10](v9, v11);

LABEL_12:
      sub_1DD826BA8();
      return sub_1DD705564();
  }
}

void static SystemPromptResolution.UserAction.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  v19 = v1;
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  v3 = sub_1DD6E9A9C();
  type metadata accessor for SystemPromptResolution.UserAction(v3);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE21C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6FF81C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD8264E0();
  v10 = sub_1DD710A9C(&qword_1ECD12380, &qword_1DD889D88);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E17C8();
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD6DDEFC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6ED4CC();
      sub_1DD701174();
      sub_1DD6E5870();
      if (sub_1DD826DEC() == 1)
      {
        v12 = sub_1DD826A94();
        v13(v12);
        sub_1DD8256EC();
        _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
        v14 = *(v19 + 8);
        v15 = sub_1DD6E60FC();
        v14(v15);
        v16 = sub_1DD825B84();
        v14(v16);
        goto LABEL_17;
      }

      v17 = sub_1DD705E24();
      v18(v17);
      goto LABEL_19;
    case 2u:
      sub_1DD6ED4CC();
      sub_1DD6E5F58();
      sub_1DD6E5870();
      if (sub_1DD826DEC() == 2)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    case 3u:
      sub_1DD6ED4CC();
      sub_1DD6E5870();
      if (sub_1DD826DEC() == 3)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    case 4u:
      sub_1DD6ED4CC();
      sub_1DD825980();
      sub_1DD6E5870();
      if (sub_1DD826DEC() == 4)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    case 5u:
      sub_1DD6ED4CC();
      sub_1DD705230();
      sub_1DD6E5870();
      if (sub_1DD826DEC() == 5)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    case 6u:
      if (sub_1DD826DEC() == 6)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    case 7u:
      if (sub_1DD826DEC() != 7)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    default:
      sub_1DD6ED4CC();
      sub_1DD825974();
      sub_1DD6E5870();
      if (sub_1DD826DEC())
      {
LABEL_19:
        sub_1DD824154(v0, &qword_1ECD12380);
      }

      else
      {
LABEL_17:
        sub_1DD824984();
        sub_1DD6E5ABC();
      }

      sub_1DD6FE01C();
      sub_1DD6DFED0();
      return;
  }
}

uint64_t sub_1DD7CC264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6F69746361 && a2 == 0xEF64656D7269666ELL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E55656369766564 && a2 == 0xEE0064656B636F6CLL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001DD8B6C40 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001DD8B6C60 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001DD8B6C80 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001DD8B6CA0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001DD8B6CC0 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL)
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

unint64_t sub_1DD7CC4F8(char a1)
{
  result = 0x6F436E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E55656369766564;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x61436E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7CC628(uint64_t a1)
{
  v2 = sub_1DD803710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC664(uint64_t a1)
{
  v2 = sub_1DD803710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC6A0(uint64_t a1)
{
  v2 = sub_1DD803A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC6DC(uint64_t a1)
{
  v2 = sub_1DD803A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CC264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CC748(uint64_t a1)
{
  v2 = sub_1DD8036BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC784(uint64_t a1)
{
  v2 = sub_1DD8036BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC7C0(uint64_t a1)
{
  v2 = sub_1DD8039B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC7FC(uint64_t a1)
{
  v2 = sub_1DD8039B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC838(uint64_t a1)
{
  v2 = sub_1DD803860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC874(uint64_t a1)
{
  v2 = sub_1DD803860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC8B0(uint64_t a1)
{
  v2 = sub_1DD803908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC8EC(uint64_t a1)
{
  v2 = sub_1DD803908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC928(uint64_t a1)
{
  v2 = sub_1DD8038B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC964(uint64_t a1)
{
  v2 = sub_1DD8038B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CC9A0(uint64_t a1)
{
  v2 = sub_1DD80395C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CC9DC(uint64_t a1)
{
  v2 = sub_1DD80395C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7CCA18(uint64_t a1)
{
  v2 = sub_1DD8037B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CCA54(uint64_t a1)
{
  v2 = sub_1DD8037B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.UserAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, unsigned __int8 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1DD6DED2C();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  sub_1DD710A9C(&qword_1ECD12388, &qword_1DD889D90);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD82495C(v31, v69);
  sub_1DD710A9C(&qword_1ECD12390, &qword_1DD889D98);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD824948(v33, v70);
  sub_1DD710A9C(&qword_1ECD12398, &qword_1DD889DA0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824CB0(v35, v71);
  sub_1DD710A9C(&qword_1ECD123A0, &qword_1DD889DA8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD82546C(v37, v72);
  sub_1DD710A9C(&qword_1ECD123A8, &qword_1DD889DB0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD8247DC(v39, v73);
  sub_1DD710A9C(&qword_1ECD123B0, &qword_1DD889DB8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6E0C6C();
  sub_1DD6ED230(v41);
  v42 = sub_1DD874FA0();
  v43 = sub_1DD6DF3FC(v42, &a23);
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v44);
  v45 = sub_1DD710A9C(&qword_1ECD123B8, &qword_1DD889DC0);
  sub_1DD6DF3FC(v45, &a18);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6E7258();
  sub_1DD710A9C(&qword_1ECD123C0, &qword_1DD889DC8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6E17C8();
  type metadata accessor for SystemPromptResolution.UserAction(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD8247F4();
  sub_1DD710A9C(&qword_1ECD123C8, &qword_1DD889DD0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6DDFE4();
  sub_1DD824CF8(v29);
  sub_1DD8036BC();
  sub_1DD77E6F4();
  sub_1DD826A7C();
  sub_1DD875BB0();
  sub_1DD6ED4CC();
  sub_1DD6E5870();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6F9BEC();
      v58 = sub_1DD6F9BF8();
      v59(v58);
      sub_1DD80395C();
      sub_1DD825CA4();
      sub_1DD6E4968();
      sub_1DD875910();
      sub_1DD6E05D4();
      sub_1DD6E1E84(v60);
      sub_1DD8759D0();
      v61 = sub_1DD8249F4();
      v62(v61);
      v63 = sub_1DD825674();
      v64(v63);
      goto LABEL_11;
    case 2u:
      sub_1DD803908();
      sub_1DD6EFF94();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD826654();
      sub_1DD875980();
      goto LABEL_9;
    case 3u:
      sub_1DD82636C();
      sub_1DD8038B4();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD826654();
      sub_1DD8759B0();
      goto LABEL_9;
    case 4u:
      sub_1DD803860();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD826654();
      sub_1DD8759B0();
      goto LABEL_9;
    case 5u:
      sub_1DD82753C();
      sub_1DD8037B8();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD80380C();
      sub_1DD826654();
      sub_1DD8759D0();
LABEL_9:
      v65 = sub_1DD6FE110();
      v66(v65);
      v52 = sub_1DD824A60();
      goto LABEL_12;
    case 6u:
      sub_1DD826E94();
      sub_1DD803710();
      sub_1DD6E4968();
      sub_1DD875910();
      sub_1DD803764();
      sub_1DD8759D0();
      v67 = sub_1DD6FBE88();
      v68(v67);
LABEL_11:
      v52 = sub_1DD6DE58C();
      goto LABEL_12;
    case 7u:
      sub_1DD701464();
      sub_1DD8039B0();
      sub_1DD79A3A4();
      sub_1DD875910();
      v54 = sub_1DD6E1858();
      v55(v54);
      v56 = sub_1DD6E21D0();
      v57(v56);
      goto LABEL_13;
    default:
      sub_1DD803A04();
      sub_1DD6E710C();
      sub_1DD875910();
      sub_1DD875980();
      sub_1DD6DEDD4();
      v50 = sub_1DD825980();
      v51(v50);
      v52 = sub_1DD6FBE88();
LABEL_12:
      v53(v52);
LABEL_13:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

void SystemPromptResolution.UserAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v26;
  a20 = v27;
  v158 = v20;
  v151 = v28;
  v150 = sub_1DD710A9C(&qword_1ECD12428, &qword_1DD889DD8);
  sub_1DD6DDEAC();
  v152 = v29;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD824948(v31, v132);
  v149 = sub_1DD710A9C(&qword_1ECD12430, &qword_1DD889DE0);
  sub_1DD6DDEAC();
  v144 = v32;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD824FD8(v34, v132);
  v148 = sub_1DD710A9C(&qword_1ECD12438, &qword_1DD889DE8);
  sub_1DD6DDEAC();
  v143 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD824934(v37, v132);
  v147 = sub_1DD710A9C(&qword_1ECD12440, &qword_1DD889DF0);
  sub_1DD6DDEAC();
  v142 = v38;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E5D10(v40, v132);
  v41 = sub_1DD710A9C(&qword_1ECD12448, &qword_1DD889DF8);
  sub_1DD6DF3FC(v41, &a18);
  v141 = v42;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD82486C(v44, v132);
  v45 = sub_1DD710A9C(&qword_1ECD12450, &qword_1DD889E00);
  sub_1DD6DF3FC(v45, &a17);
  v140 = v46;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD824CB0(v48, v132);
  v49 = sub_1DD710A9C(&qword_1ECD12458, &qword_1DD889E08);
  sub_1DD6DF3FC(v49, &a16);
  v145 = v50;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD824FEC(v52, v132);
  v53 = sub_1DD710A9C(&qword_1ECD12460, &qword_1DD889E10);
  sub_1DD6DF3FC(v53, &a15);
  v139 = v54;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD824A38(v56, v132);
  v156 = sub_1DD710A9C(&qword_1ECD12468, &qword_1DD889E18);
  sub_1DD6DDEAC();
  v154 = v57;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  v59 = sub_1DD700BA4();
  v153 = type metadata accessor for SystemPromptResolution.UserAction(v59);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v65);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1DD825884();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v132 - v68;
  v70 = sub_1DD826F54();
  sub_1DD6FE8B0(v70);
  sub_1DD8036BC();
  v155 = v25;
  sub_1DD6EF0F4();
  v71 = v158;
  sub_1DD875B90();
  if (!v71)
  {
    v134 = v23;
    v135 = v24;
    v136 = v21;
    v137 = v22;
    v158 = v69;
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826908();
    if (!v72)
    {
      sub_1DD6E6120();
      v133 = 0;
      sub_1DD6E42A8();
      if (v79 == v80)
      {
        __break(1u);
        return;
      }

      v81 = *(v78 + v77);
      sub_1DD6E988C(v73, v74, v75, v76, v77);
      sub_1DD6ED830();
      v83 = v82;
      v85 = v84;
      swift_unknownObjectRelease();
      if (v83 == v85 >> 1)
      {
        v86 = v133;
        switch(v81)
        {
          case 1:
            sub_1DD701464();
            sub_1DD8039B0();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v86)
            {
              goto LABEL_25;
            }

            swift_unknownObjectRelease();
            v98 = sub_1DD702E84();
            v99(v98, v146);
            v100 = sub_1DD824B44();
            v101(v100);
            swift_storeEnumTagMultiPayload();
            goto LABEL_29;
          case 2:
            sub_1DD80395C();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v86)
            {
              goto LABEL_25;
            }

            sub_1DD874FA0();
            sub_1DD6E05D4();
            sub_1DD6E1E84(v97);
            sub_1DD6F9BEC();
            sub_1DD825CE0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v109 = sub_1DD6E6CB0();
            v110(v109);
            v111 = sub_1DD824B44();
            v112(v111);
            swift_storeEnumTagMultiPayload();
            sub_1DD6F3220();
            goto LABEL_28;
          case 3:
            sub_1DD803908();
            sub_1DD824DA8();
            sub_1DD875800();
            if (!v86)
            {
              goto LABEL_17;
            }

            goto LABEL_25;
          case 4:
            sub_1DD82636C();
            sub_1DD8038B4();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v86)
            {
              goto LABEL_25;
            }

            v96 = v147;
            v104 = sub_1DD8758B0();
            swift_unknownObjectRelease();
            v105 = sub_1DD702E84();
            v106(v105, v96);
            v107 = sub_1DD824B44();
            v108(v107);
            *v136 = v104;
            goto LABEL_27;
          case 5:
            sub_1DD803860();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v86)
            {
              goto LABEL_25;
            }

            sub_1DD826CD0();
            v122 = sub_1DD8758B0();
            swift_unknownObjectRelease();
            v123 = sub_1DD6E6CB0();
            v124(v123);
            v125 = sub_1DD824B44();
            v126(v125);
            *v138 = v122;
            swift_storeEnumTagMultiPayload();
            sub_1DD6F3220();
            goto LABEL_28;
          case 6:
            sub_1DD82753C();
            sub_1DD8037B8();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v86)
            {
              goto LABEL_25;
            }

            sub_1DD803AAC();
            sub_1DD824AB4();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v127 = sub_1DD6E6CB0();
            v128(v127);
            v129 = sub_1DD8257C8();
            v130(v129);
            sub_1DD8263F8(SBYTE5(a10));
            goto LABEL_27;
          case 7:
            sub_1DD826E94();
            sub_1DD803710();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v86)
            {
              goto LABEL_25;
            }

            sub_1DD803A58();
            sub_1DD6F3128();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v118 = sub_1DD705564();
            v119(v118);
            v120 = sub_1DD8257C8();
            v121(v120);
            sub_1DD82633C(&v159);
            goto LABEL_27;
          default:
            HIBYTE(v159) = 0;
            sub_1DD803A04();
            sub_1DD824DA8();
            sub_1DD875800();
            if (v86)
            {
LABEL_25:
              v102 = sub_1DD824B44();
              v103(v102);
              swift_unknownObjectRelease();
              goto LABEL_10;
            }

LABEL_17:
            sub_1DD826CD0();
            v113 = sub_1DD875880();
            swift_unknownObjectRelease();
            v114 = sub_1DD6E6CB0();
            v115(v114);
            v116 = sub_1DD824B44();
            v117(v116);
            sub_1DD8263F8(v113 & 1);
LABEL_27:
            swift_storeEnumTagMultiPayload();
            sub_1DD6F3220();
LABEL_28:
            sub_1DD6E59B8();
LABEL_29:
            v131 = v157;
            sub_1DD6F3220();
            sub_1DD6E59B8();
            v95 = v131;
            break;
        }

        goto LABEL_11;
      }
    }

    v87 = v153;
    v88 = sub_1DD875740();
    sub_1DD6E41BC(v88, MEMORY[0x1E69E6B28]);
    v90 = v89;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v90 = v87;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v91 = sub_1DD6FEB10();
    v92(v91);
    swift_willThrow();
    swift_unknownObjectRelease();
    v93 = sub_1DD824B44();
    v94(v93);
  }

LABEL_10:
  v95 = v157;
LABEL_11:
  sub_1DD6E1EC8(v95);
  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

unint64_t SystemPromptResolution.RequirementResolution.description.getter()
{
  v1 = *v0;
  sub_1DD8756B0();

  sub_1DD826724();
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

  MEMORY[0x1E12B4C10](v2, v3);

  sub_1DD826BA8();
  return 0xD00000000000002ELL;
}

uint64_t sub_1DD7CE0BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001DD8B6CE0 == a2)
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

uint64_t sub_1DD7CE15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CE0BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7CE188(uint64_t a1)
{
  v2 = sub_1DD803B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CE1C4(uint64_t a1)
{
  v2 = sub_1DD803B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.RequirementResolution.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD12480, &qword_1DD889E20);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEBA0();
  sub_1DD6E6C94(v1);
  sub_1DD803B00();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD875980();
  v3 = sub_1DD6DDEDC();
  v4(v3);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void SystemPromptResolution.RequirementResolution.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD12490, &qword_1DD889E28);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v5 = sub_1DD803B00();
  sub_1DD6FC48C(&type metadata for SystemPromptResolution.RequirementResolution.CodingKeys, v6, v5);
  if (!v1)
  {
    sub_1DD6EE778();
    v7 = sub_1DD875880();
    v8 = sub_1DD6DEA2C();
    v9(v8);
    *v3 = v7 & 1;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7CE420(uint64_t a1)
{
  v2 = sub_1DD803B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CE45C(uint64_t a1)
{
  v2 = sub_1DD803B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.stepId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v1[2] = sub_1DD826B54(v8);
  sub_1DD6DDEAC();
  v1[3] = v9;
  v11 = sub_1DD7281CC(*(v10 + 64));
  v12 = sub_1DD8276E0(v11);
  v1[5] = sub_1DD7281CC(v12);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v13)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v13)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v14 = sub_1DD824C78();
    v15(v14);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

uint64_t _s16IntelligenceFlow14ActionResponseV6stepId10Foundation4UUIDVvg_0()
{
  v1 = sub_1DD7029A8();
  v3 = sub_1DD710A9C(v1, v2);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD8265FC();
  sub_1DD6F8CC0();
  sub_1DD700E60();
  sub_1DD874820();
  v5 = sub_1DD6E5E30();
  sub_1DD6DE1FC(v5, 1, v0);
  if (v6)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    result = sub_1DD6DE1FC(v0, 1, v0);
    if (!v6)
    {
      return sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    sub_1DD6E0540();
    v7 = sub_1DD6DDEFC();
    return v8(v7);
  }

  return result;
}

uint64_t _s16IntelligenceFlow14ActionResponseV6stepId10Foundation4UUIDVvs_0()
{
  sub_1DD824154(v0, &qword_1ECD0E540);
  v1 = sub_1DD874820();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E21D0();
  v3(v2);
  sub_1DD6E09D4();

  return sub_1DD6E5E68(v4, v5, v6, v1);
}

void SystemPromptResolution.eventId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v1[2] = sub_1DD826B54(v8);
  sub_1DD6DDEAC();
  v1[3] = v9;
  v11 = sub_1DD7281CC(*(v10 + 64));
  v12 = sub_1DD8276E0(v11);
  v1[5] = sub_1DD7281CC(v12);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v13)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v13)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v14 = sub_1DD824C78();
    v15(v14);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

void sub_1DD7CE908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD827764();
  v6 = (*v5)[4];
  v7 = (*v5)[5];
  v9 = **v5;
  v8 = (*v5)[1];
  if (v10)
  {
    sub_1DD6FF0E4();
    v11();
    sub_1DD824154(v9, &qword_1ECD0E540);
    sub_1DD826A58();
    v12 = sub_1DD8258C4();
    v13(v12);
    sub_1DD826F6C();
    sub_1DD825D88();
    sub_1DD6E5E68(v14, v15, v16, v17);
    v18 = sub_1DD6FF97C();
    v19(v18);
  }

  else
  {
    sub_1DD824154(**v5, &qword_1ECD0E540);
    sub_1DD6FF0E4();
    v20();
    sub_1DD826F6C();
    sub_1DD825D88();
    sub_1DD6E5E68(v21, v22, v23, v24);
  }

  free(v7);
  free(v6);
  free(v8);
  sub_1DD827720();

  free(v25);
}

uint64_t sub_1DD7CEA20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD8B6020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

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

unint64_t sub_1DD7CEBD8(char a1)
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

uint64_t sub_1DD7CEC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7CEA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7CECBC(uint64_t a1)
{
  v2 = sub_1DD803BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7CECF8(uint64_t a1)
{
  v2 = sub_1DD803BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemPromptResolution.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6E86E0();
  sub_1DD710A9C(&qword_1ECD124A8, &qword_1DD889E38);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v3 = sub_1DD803BA8();
  sub_1DD6E1808(&type metadata for SystemPromptResolution.CodingKeys, v4, v3);
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v5);
  sub_1DD6E5FDC();
  sub_1DD875960();
  if (!v0)
  {
    type metadata accessor for SystemPromptResolution(0);
    sub_1DD825AA8();
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    sub_1DD826FE4();
    type metadata accessor for SystemPromptResolution.UserAction(0);
    sub_1DD826280();
    sub_1DD6E1E84(v6);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    sub_1DD7928CC();
    sub_1DD70396C();
    sub_1DD6E5E30();

    sub_1DD8259D4();
    sub_1DD6DE334();
    sub_1DD8759D0();

    v16 = sub_1DD6F8CE0(*(v1 + 32));
    v17 = v8;
    v18 = *(v7 + 16);
    v19 = *(v7 + 24);
    v20 = *(v7 + 32);
    sub_1DD6E70D8();
    sub_1DD7FD604(v9, v10, v11, v12, v13);
    sub_1DD803BFC();
    sub_1DD6E5334();
    sub_1DD8759D0();
    sub_1DD7FD670(v16, v17, v18, v19, v20);
  }

  v14 = sub_1DD6DEA04();
  v15(v14);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void SystemPromptResolution.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  type metadata accessor for SystemPromptResolution.UserAction(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  sub_1DD6E9A9C();
  v6 = sub_1DD874820();
  sub_1DD6DDEAC();
  v30 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD824734();
  v9 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD124C8, &qword_1DD889E40);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for SystemPromptResolution(v12);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E2220();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v15, v16, v17, v6);
  v31 = v13;
  v18 = v2 + *(v13 + 32);
  sub_1DD827380();
  v19 = v4[3];
  sub_1DD70066C();
  sub_1DD803BA8();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD827518();
    sub_1DD6E1EC8(v4);
    sub_1DD824154(v2, &qword_1ECD0E540);
    if (v4)
    {
      sub_1DD824984();
      sub_1DD6E5ABC();
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    else if (!v19)
    {
LABEL_6:
      v21 = sub_1DD6FA3DC();
      sub_1DD7FD670(v21, v22, v23, v24, v25);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1DD6E14DC();
  sub_1DD6E1E84(v20);
  sub_1DD8275B0();
  sub_1DD875860();
  sub_1DD825674();
  sub_1DD807414();
  v32[0] = 1;
  sub_1DD8275B0();
  sub_1DD8758D0();
  (*(v30 + 32))(v2 + *(v31 + 20), v1, v6);
  sub_1DD826FE4();
  sub_1DD826280();
  sub_1DD6E1E84(v26);
  sub_1DD8758D0();
  sub_1DD6F3220();
  sub_1DD6E59B8();
  sub_1DD7928CC();
  sub_1DD705D68();
  sub_1DD826E34();
  sub_1DD8758D0();
  v27 = v2 + *(v31 + 28);
  *v27 = *v32;
  *(v27 + 8) = *&v32[8];
  sub_1DD6E70D8();
  sub_1DD803C50();
  sub_1DD826E34();
  sub_1DD8758D0();
  v28 = sub_1DD826454();
  v29(v28);
  sub_1DD7FD670(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32));
  *v18 = *v32;
  *(v18 + 16) = *&v32[16];
  *(v18 + 32) = v33;
  sub_1DD700948();
  sub_1DD6E5870();
  sub_1DD6E1EC8(v4);
  sub_1DD824EB8();
  sub_1DD6E5ABC();
LABEL_7:
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t ActionResponse.exprId.getter()
{
  type metadata accessor for ActionResponse(0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t ActionResponse.exprId.setter()
{
  v3 = sub_1DD6ED7A4();
  type metadata accessor for ActionResponse(v3);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionResponse.exprId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7CF608()
{
  v0 = sub_1DD826B18();
  v1(v0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t ActionResponse.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionResponse.outcome.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7CF758()
{
  v0 = sub_1DD825000();
  v1(v0);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t ActionResponse.response.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  sub_1DD82491C();
  sub_1DD826F84();
  return sub_1DD7FFEA0();
}

uint64_t ActionResponse.response.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionResponse.responseOutput.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for ActionResponse(v0);
  return sub_1DD700E60();
}

uint64_t ActionResponse.responseOutput.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  sub_1DD826F84();
  return sub_1DD807414();
}

uint64_t ActionResponse.responseOutput.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionResponse.clientQueryId.getter()
{
  type metadata accessor for ActionResponse(0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t ActionResponse.clientQueryId.setter()
{
  v3 = sub_1DD6ED7A4();
  type metadata accessor for ActionResponse(v3);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionResponse.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionResponse(v0);
  return sub_1DD6DDF9C();
}

void ActionResponse.init(actionEventId:exprId:toolId:outcome:responseOutput:clientQueryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1DD826D80();
  v51 = v30;
  v50 = v31;
  sub_1DD826C60();
  v33 = v32;
  v34 = sub_1DD874820();
  v37 = sub_1DD6DEA4C(v33, v35, v36, v34);
  v38 = type metadata accessor for ActionResponse(v37);
  v39 = (v33 + v38[5]);
  ResponseManifest.init()();
  v40 = v38[9];
  v41 = type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v42, v43, v44, v41);
  v45 = (v33 + v38[10]);
  sub_1DD807414();
  *v39 = v29;
  v39[1] = v28;
  v46 = (v33 + v38[6]);
  *v46 = v27;
  v46[1] = v50;
  sub_1DD6E5FF0();
  sub_1DD6E59B8();
  sub_1DD824154(v33 + v40, &qword_1ECD11B08);
  sub_1DD82477C();
  sub_1DD6E59B8();
  sub_1DD6E09D4();
  sub_1DD6E5E68(v47, v48, v49, v41);
  *v45 = v51;
  v45[1] = a27;
  sub_1DD6F37CC();
}

uint64_t ActionResponse.init(actionEventId:exprId:toolId:outcome:responseOutput:)()
{
  sub_1DD6FF8A8();
  v5 = v4;
  sub_1DD825B54();
  sub_1DD874820();
  v6 = sub_1DD6FF79C();
  v10 = sub_1DD6DEA4C(v6, v7, v8, v9);
  v11 = type metadata accessor for ActionResponse(v10);
  v12 = (v0 + v11[5]);
  ResponseManifest.init()();
  v13 = v11[9];
  type metadata accessor for ResponseOutput(0);
  sub_1DD825310();
  sub_1DD6E5E68(v14, v15, v16, v17);
  sub_1DD6F448C(v11[10]);
  sub_1DD8265C8();
  sub_1DD807414();
  *v12 = v3;
  v12[1] = v2;
  v18 = (v0 + v11[6]);
  *v18 = v1;
  v18[1] = v5;
  sub_1DD6E5FF0();
  sub_1DD6E59B8();
  sub_1DD824154(v0 + v13, &qword_1ECD11B08);
  sub_1DD82477C();
  sub_1DD6E59B8();
  sub_1DD825D88();
  sub_1DD6E58C4();

  return sub_1DD6E5E68(v19, v20, v21, v22);
}

void ActionResponse.init(actionEventId:exprId:toolId:outcome:response:)()
{
  sub_1DD6FF8A8();
  sub_1DD825B3C();
  sub_1DD6F9E24();
  sub_1DD874820();
  v6 = sub_1DD6FF79C();
  v10 = sub_1DD6DEA4C(v6, v7, v8, v9);
  type metadata accessor for ActionResponse(v10);
  sub_1DD827658();
  v12 = (v0 + v11);
  ResponseManifest.init()();
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v13, v14, v15, v16);
  sub_1DD6F448C(*(v5 + 40));
  sub_1DD807414();
  *v12 = v4;
  v12[1] = v3;
  v17 = (v0 + *(v5 + 24));
  *v17 = v2;
  v17[1] = v1;
  sub_1DD6E5FF0();
  sub_1DD6E59B8();
  sub_1DD82491C();
  sub_1DD7FFEA0();
  sub_1DD6E58C4();
}

void sub_1DD7CFC78()
{
  sub_1DD6DEB38();
  v2 = v1;
  v4 = v3;
  sub_1DD6F9E24();
  v5 = sub_1DD874820();
  sub_1DD6E0C90();
  v9 = sub_1DD70386C(v6, v7, v8, v5);
  v10 = type metadata accessor for ActionResponse(v9);
  sub_1DD6E0508();
  *v11 = 0;
  v11[1] = 0;
  ResponseManifest.init()();
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v12, v13, v14, v15);
  sub_1DD6F448C(*(v10 + 40));
  sub_1DD824154(v0, &qword_1ECD0E540);
  sub_1DD6E0540();
  v16 = sub_1DD6ED180();
  v17(v16);
  sub_1DD6E09D4();
  sub_1DD6E5E68(v18, v19, v20, v5);
  v21 = (v0 + *(v10 + 24));
  *v21 = v4;
  v21[1] = v2;
  sub_1DD6E5FF0();
  sub_1DD8275C4();
  sub_1DD6E59B8();
  sub_1DD82491C();
  sub_1DD7FFEA0();
  sub_1DD6DFED0();
}

void ActionResponse.stepId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v1[2] = sub_1DD826B54(v8);
  sub_1DD6DDEAC();
  v1[3] = v9;
  v11 = sub_1DD7281CC(*(v10 + 64));
  v12 = sub_1DD8276E0(v11);
  v1[5] = sub_1DD7281CC(v12);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v13)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v13)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v14 = sub_1DD824C78();
    v15(v14);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

void ActionResponse.eventId.modify()
{
  sub_1DD6DEB38();
  v2 = sub_1DD8263E8();
  v3 = sub_1DD7281CC(v2);
  sub_1DD826698(v3);
  v4 = sub_1DD6ED130();
  v6 = sub_1DD710A9C(v4, v5);
  sub_1DD6DEA10(v6);
  v8 = sub_1DD7281CC(*(v7 + 64));
  v1[2] = sub_1DD826B54(v8);
  sub_1DD6DDEAC();
  v1[3] = v9;
  v11 = sub_1DD7281CC(*(v10 + 64));
  v12 = sub_1DD8276E0(v11);
  v1[5] = sub_1DD7281CC(v12);
  sub_1DD6E87AC();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD824C40();
  if (v13)
  {
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD824C40();
    if (!v13)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
    }
  }

  else
  {
    v14 = sub_1DD824C78();
    v15(v14);
  }

  sub_1DD8275E8();
  sub_1DD6DFED0();
}

void ActionResponse.init(actionEventId:exprId:toolId:outcome:responseOutput:)()
{
  sub_1DD6FF8A8();
  sub_1DD825B3C();
  sub_1DD6F9E24();
  sub_1DD874820();
  v6 = sub_1DD6FF79C();
  v10 = sub_1DD6DEA4C(v6, v7, v8, v9);
  type metadata accessor for ActionResponse(v10);
  sub_1DD827658();
  v12 = (v0 + v11);
  ResponseManifest.init()();
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v13, v14, v15, v16);
  sub_1DD6F448C(*(v5 + 40));
  sub_1DD807414();
  *v12 = v4;
  v12[1] = v3;
  v17 = (v0 + *(v5 + 24));
  *v17 = v2;
  v17[1] = v1;
  sub_1DD6E5FF0();
  sub_1DD8275C4();
  sub_1DD6E59B8();
  sub_1DD807414();
  sub_1DD6E58C4();
}

void static ActionOutcome.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v67 = v3;
  v60 = type metadata accessor for ParameterCandidatesNotFound(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v5 = sub_1DD6E9A9C();
  v61 = type metadata accessor for ParameterNotAllowed(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v7 = sub_1DD6E9A9C();
  v8 = type metadata accessor for ParameterConfirmation(v7);
  v9 = sub_1DD6DEA10(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDEE8();
  v10 = sub_1DD6E9A9C();
  v11 = type metadata accessor for ParameterNeedsValue(v10);
  v12 = sub_1DD6DEA10(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEE8();
  v13 = sub_1DD6E9A9C();
  v14 = type metadata accessor for SnippetStream(v13);
  v15 = sub_1DD6DEA10(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DDEE8();
  v16 = sub_1DD6E9A9C();
  v17 = type metadata accessor for ActionSuccess(v16);
  v18 = sub_1DD6DEA10(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDEE8();
  v19 = sub_1DD6E9A9C();
  type metadata accessor for ActionOutcome(v19);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DE21C();
  v64 = v21 - v22;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6F1780();
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6F1780();
  v66 = v26;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6F1780();
  v65 = v28;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6F1780();
  v63 = v30;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6F1780();
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6F1780();
  v62 = v33;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD826CA0();
  v38 = sub_1DD710A9C(&qword_1ECD124E0, &qword_1DD889E48);
  sub_1DD6DEA10(v38);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6DE340();
  sub_1DD6E5870();
  sub_1DD8270D0();
  sub_1DD6E9594();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_56;
      }

      sub_1DD824E40();
      sub_1DD6E59B8();
      sub_1DD825650();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6F8CA8();
      goto LABEL_33;
    case 2u:
      sub_1DD6E2208();
      sub_1DD6F4498();
      sub_1DD6E5870();
      if (sub_1DD8266E0() == 2)
      {
        sub_1DD825A10();
        v43 = sub_1DD826A70();
        sub_1DD80043C(v43);
        sub_1DD80043C(v71);
        goto LABEL_61;
      }

      sub_1DD80043C(v71);
      goto LABEL_57;
    case 3u:
      sub_1DD6E2208();
      sub_1DD6E0F70();
      sub_1DD6E5870();
      v45 = *v0;
      v44 = v0[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_57;
      }

      v46 = v67[1];
      if (v44)
      {
        if (!v46)
        {
          goto LABEL_66;
        }

        v47 = v45 == *v67 && v44 == v46;
        if (!v47)
        {
          v48 = sub_1DD8258C4();
          if ((sub_1DD6FA430(v48, v49, v50) & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else if (v46)
      {
LABEL_66:

        goto LABEL_68;
      }

      sub_1DD6E0F70();
      sub_1DD716FC0();
      sub_1DD827878();

LABEL_68:
      sub_1DD6E5ABC();
LABEL_63:
      sub_1DD6FE01C();
      sub_1DD6DFED0();
      return;
    case 4u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_56;
      }

      sub_1DD824E70();
      sub_1DD6E59B8();
      static ParameterNeedsValue.== infix(_:_:)(v62);
      sub_1DD824E58();
      sub_1DD6E5ABC();
      sub_1DD825650();
      goto LABEL_60;
    case 5u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_56;
      }

      sub_1DD824E28();
      sub_1DD6E59B8();
      sub_1DD825650();
      static ParameterConfirmation.== infix(_:_:)();
      sub_1DD82616C();
LABEL_33:
      sub_1DD6E5ABC();
      goto LABEL_60;
    case 6u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      v54 = v63[1];
      v71[0] = *v63;
      v71[1] = v54;
      v55 = v63[3];
      v71[2] = v63[2];
      v71[3] = v55;
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1DD825DA0();
        v56 = sub_1DD826A70();
        sub_1DD80040C(v56);
        sub_1DD80040C(v71);
        goto LABEL_61;
      }

      sub_1DD80040C(v71);
      goto LABEL_57;
    case 7u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v53 = v47 && v51 == v52;
      if (v53 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD8267E4(*(v61 + 20));
        if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
        {
          sub_1DD6FEB44();
        }
      }

      goto LABEL_45;
    case 8u:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_56;
      }

      sub_1DD7006C0();
      sub_1DD6E59B8();
      sub_1DD826498();
      v59 = v47 && v57 == v58;
      if (v59 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD826568(v60);
        _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      }

LABEL_45:
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      sub_1DD6E5ABC();
      sub_1DD6DE600();
      goto LABEL_68;
    case 9u:
      sub_1DD6E2208();
      sub_1DD8259E0();
      sub_1DD6E5870();
      if (sub_1DD702B14() == 9)
      {
        sub_1DD825C10();
        v41 = sub_1DD6F9BF8();
        sub_1DD8003E4(v41, v42, v66, v65, v64, v67);
        sub_1DD6FE78C();
        sub_1DD6DE600();
        goto LABEL_62;
      }

      sub_1DD6FE78C();
      v1 = v2;
      goto LABEL_57;
    case 0xAu:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        sub_1DD6E5C7C();
        sub_1DD7162FC();

        goto LABEL_61;
      }

      goto LABEL_57;
    case 0xBu:
      sub_1DD6E2208();
      sub_1DD6E5870();
      sub_1DD827938(v71);
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        sub_1DD827920(&v70);
        sub_1DD827938(v69);
        sub_1DD827920(v68);
        static ActionFailure.== infix(_:_:)(v69, v68);
        v40 = sub_1DD826A70();
        sub_1DD8003B4(v40);
        sub_1DD8003B4(v71);
        goto LABEL_61;
      }

      sub_1DD8003B4(v71);
      goto LABEL_57;
    default:
      sub_1DD6E2208();
      sub_1DD825C98();
      sub_1DD6E5870();
      sub_1DD700D0C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1DD6FADF0();
LABEL_56:
        sub_1DD6E5ABC();
LABEL_57:
        sub_1DD824154(v1, &qword_1ECD124E0);
      }

      else
      {
        sub_1DD7006C0();
        sub_1DD6E59B8();
        sub_1DD825998();
        static ActionSuccess.== infix(_:_:)();
        sub_1DD825D6C();
        sub_1DD6E5ABC();
LABEL_60:
        sub_1DD6E5ABC();
LABEL_61:
        sub_1DD6DE600();
LABEL_62:
        sub_1DD6E5ABC();
      }

      goto LABEL_63;
  }
}

uint64_t sub_1DD7D0AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x644972707865 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65736E6F70736572 && a2 == 0xEE0074757074754FLL;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

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

unint64_t sub_1DD7D0D20(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      v3 = 1919973477;
      goto LABEL_4;
    case 2:
      v3 = 1819242356;
LABEL_4:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x644900000000;
      break;
    case 3:
      result = 0x656D6F6374756FLL;
      break;
    case 4:
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D0DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D0AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D0E24(uint64_t a1)
{
  v2 = sub_1DD803CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D0E60(uint64_t a1)
{
  v2 = sub_1DD803CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD124E8, &qword_1DD889E50);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v19 = sub_1DD803CA4();
  sub_1DD6E1808(&type metadata for ActionResponse.CodingKeys, v20, v19);
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v21);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v16)
  {
    v22 = type metadata accessor for ActionResponse(0);
    sub_1DD82554C(v22);
    sub_1DD8250C8();
    sub_1DD824BDC();
    sub_1DD875920();
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD6E6174();
    type metadata accessor for ActionOutcome(0);
    sub_1DD705C74();
    sub_1DD6E1E84(v23);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD82636C();
    type metadata accessor for ResponseManifest(0);
    sub_1DD6FAC34();
    sub_1DD6E1E84(v24);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD8267FC();
    type metadata accessor for ResponseOutput(0);
    sub_1DD6F17A8();
    sub_1DD6E1E84(v25);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD875960();
    sub_1DD82595C(*(v17 + 40));
    sub_1DD827548();
    sub_1DD824BDC();
    sub_1DD875920();
  }

  v26 = sub_1DD6EFFB4();
  v27(v26);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ActionResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  v23 = v22;
  v66 = v24;
  v25 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v25);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD824948(v27, v66);
  v28 = type metadata accessor for ResponseManifest(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DDEE8();
  v30 = sub_1DD6E9A9C();
  type metadata accessor for ActionOutcome(v30);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DDEE8();
  v32 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v32);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6FF92C(v34, v67);
  v69 = sub_1DD710A9C(&qword_1ECD12508, &qword_1DD889E58);
  sub_1DD6DDEAC();
  v68 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  v37 = sub_1DD700BA4();
  v38 = type metadata accessor for ActionResponse(v37);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v40 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v41, v42, v43, v40);
  v44 = (v20 + v38[8]);
  bzero(v44, 0xD9uLL);
  type metadata accessor for ResponseVisual.UIType(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v45, v46, v47, v48);
  sub_1DD826754(v28[9]);
  sub_1DD826754(v28[10]);
  *(v44 + v28[11]) = 2;
  *(v44 + v28[12]) = 2;
  v49 = v38[9];
  v50 = type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v51, v52, v53, v50);
  v70 = v23;
  sub_1DD6E6C94(v23);
  sub_1DD803CA4();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v19)
  {
    sub_1DD825AF8();
    sub_1DD6E1EC8(v23);
    sub_1DD824154(v20, &qword_1ECD0E540);

    if (v40)
    {
      sub_1DD8276B0(v38[6]);
    }

    if (v49)
    {
      sub_1DD6DE600();
      sub_1DD6E5ABC();
    }

    sub_1DD825E18();
    sub_1DD6E5ABC();
    sub_1DD824154(v20 + v49, &qword_1ECD11B08);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v54);
    sub_1DD6F9A4C();
    sub_1DD826A88();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD824CE8();
    v55 = sub_1DD875820();
    sub_1DD82692C(v55, v56, v38[5]);
    sub_1DD825178();
    v57 = sub_1DD875870();
    sub_1DD82692C(v57, v58, v38[6]);
    sub_1DD6E6174();
    sub_1DD705C74();
    sub_1DD6E1E84(v59);
    sub_1DD8758D0();
    sub_1DD6E5FF0();
    sub_1DD6E59B8();
    sub_1DD82636C();
    sub_1DD6FAC34();
    sub_1DD6E1E84(v60);
    sub_1DD8758D0();
    sub_1DD82491C();
    sub_1DD825C04();
    sub_1DD7FFEA0();
    sub_1DD8267FC();
    sub_1DD6F17A8();
    sub_1DD6E1E84(v61);
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD827548();
    v62 = sub_1DD875820();
    v64 = v63;
    v65 = (v20 + v38[10]);
    (*(v68 + 8))(v21, v69);
    *v65 = v62;
    v65[1] = v64;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v70);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t SystemResponse.statementId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D1844()
{
  v3 = sub_1DD6ED7A4();
  v4(v3);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SystemResponse.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D18EC()
{
  v0 = sub_1DD825000();
  v1(v0);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t sub_1DD7D1958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DD6EE78C();
  v4(v3);
  sub_1DD8275C4();
  return sub_1DD7FFEA0();
}

uint64_t SystemResponse.outcome.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D1A2C()
{
  v0 = sub_1DD6F355C();
  v1(v0);
  return sub_1DD826384();
}

uint64_t SystemResponse.responseOutput.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D1AD4()
{
  v3 = sub_1DD6ED7A4();
  v4(v3);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SystemResponse.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SystemResponse(v0);
  return sub_1DD6DDF9C();
}

double SystemResponse.interpretedStatementResults.getter()
{
  type metadata accessor for SystemResponse(0);

  return result;
}

void SystemResponse.init(responseOutput:clientQueryId:interpretedStatementResults:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v47 = v5;
  v48 = v6;
  v46 = v7;
  v9 = v8;
  v10 = sub_1DD710A9C(&qword_1ECD12520, &qword_1DD889E60);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEBA0();
  v12 = type metadata accessor for InterpretedStatementResult(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E535C();
  v14 = sub_1DD874820();
  v15 = sub_1DD8251B8();
  v18 = sub_1DD70386C(v15, v16, v17, v14);
  type metadata accessor for SystemResponse(v18);
  sub_1DD826354();
  v20 = (v9 + v19);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 1;
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v21, v22, v23, v24);
  v25 = (v9 + v0[9]);
  sub_1DD803D18();
  *v25 = v47;
  v25[1] = v48;
  *(v9 + v0[10]) = v4;
  sub_1DD785EE4(v4, v2);
  sub_1DD6DE1FC(v2, 1, v12);
  if (v26)
  {
    sub_1DD824154(v2, &qword_1ECD12520);
    sub_1DD824154(v9, &qword_1ECD0E540);
    v27 = sub_1DD8251B8();
    sub_1DD6E5E68(v27, v28, v29, v14);
    sub_1DD70148C(*v20, v20[1], v20[2]);
    *v20 = 0;
    v20[1] = 0;
    v20[2] = 1;
    sub_1DD824154(v46, &qword_1ECD11B08);
    sub_1DD826ED0();
    *v30 = 0;
    v30[1] = 0xE000000000000000;
    v31 = v9 + v0[7];
    v32 = sub_1DD825640();
    sub_1DD70148C(v32, v33, v34);
    *v31 = 14;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 2;
    *(v31 + 41) = *v49;
    *(v31 + 44) = *&v49[3];
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 1;
    type metadata accessor for StatementOutcome(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1DD700948();
    sub_1DD6E59B8();
    sub_1DD6DEA04();
    sub_1DD803D18();
    v35 = (v1 + *(v12 + 24));
    v37 = *(v35 + 1);
    v36 = *(v35 + 2);
    v38 = v20[2];
    *v20 = *v35;
    v20[1] = v37;
    v20[2] = v36;

    v39 = sub_1DD6F4D4C();
    sub_1DD70148C(v39, v40, v38);
    v41 = sub_1DD8276B0(*(v12 + 32));
    if (v41)
    {
      v43 = *v42;
      v44 = v41;
    }

    else
    {
      v43 = 0;
      v44 = 0xE000000000000000;
    }

    sub_1DD824154(v46, &qword_1ECD11B08);
    sub_1DD826ED0();
    *v45 = v43;
    v45[1] = v44;
    sub_1DD6ED690();
    sub_1DD6E5870();
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6DFED0();
}

void ActionFailure.init(failure:)()
{
  sub_1DD826938();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = sub_1DD825640();
  sub_1DD70148C(v4, v5, v6);
  sub_1DD6FEB38();
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
}

void SystemResponse.init(actionEventId:statementId:toolId:outcome:responseOutput:clientQueryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD826D80();
  v37 = v10;
  v38 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1DD826F78(v18, v22);
  v24 = *(v23 + 16);
  v25 = sub_1DD874820();
  v28 = sub_1DD6DEA4C(v21, v26, v27, v25);
  type metadata accessor for SystemResponse(v28);
  sub_1DD825AA8();
  v30 = (v21 + v29);
  *v30 = 0;
  v30[1] = 0;
  v30[2] = 1;
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v31, v32, v33, v34);
  v35 = (v21 + v9[9]);
  sub_1DD6ED118();
  sub_1DD803D18();
  sub_1DD70148C(*v30, v30[1], v30[2]);
  *v30 = a9;
  v30[2] = v24;
  v36 = (v21 + v9[6]);
  *v36 = v17;
  v36[1] = v15;
  sub_1DD6ED690();
  sub_1DD6E5870();
  sub_1DD75366C();
  sub_1DD803D18();
  *v35 = v37;
  v35[1] = v38;
  sub_1DD824154(v13, &qword_1ECD11B08);
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  sub_1DD824154(v19, &qword_1ECD0E540);
  *(v21 + v9[10]) = MEMORY[0x1E69E7CC0];
  sub_1DD6F37CC();
}

void SystemResponse.init(actionEventId:statementId:toolId:outcome:responseOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD826528();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1DD826F78(v13, v17);
  v19 = *(v18 + 16);
  v20 = sub_1DD874820();
  v23 = sub_1DD6DEA4C(v16, v21, v22, v20);
  v24 = type metadata accessor for SystemResponse(v23);
  v25 = (v16 + v24[5]);
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 1;
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v26, v27, v28, v29);
  v30 = (v16 + v24[9]);
  *v30 = 0;
  v30[1] = 0;
  sub_1DD6E21D0();
  sub_1DD803D18();
  v31 = sub_1DD700D00();
  sub_1DD70148C(v31, v32, v33);
  *v25 = a9;
  v25[2] = v19;
  v34 = (v16 + v24[6]);
  *v34 = v12;
  v34[1] = v10;
  sub_1DD6ED690();
  sub_1DD6E5870();
  sub_1DD807414();
  sub_1DD6E0900();
  sub_1DD6E5ABC();
  sub_1DD824154(v14, &qword_1ECD0E540);
  *(v16 + v24[10]) = MEMORY[0x1E69E7CC0];
  sub_1DD8264FC();
}

uint64_t sub_1DD7D2188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65736E6F70736572 && a2 == 0xEE0074757074754FLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6D00 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

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

unint64_t sub_1DD7D23D8(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x64496C6F6F74;
      break;
    case 3:
      result = 0x656D6F6374756FLL;
      break;
    case 4:
      result = 0x65736E6F70736572;
      break;
    case 5:
      result = 0x7551746E65696C63;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D24D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D2188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D2500(uint64_t a1)
{
  v2 = sub_1DD803D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D253C(uint64_t a1)
{
  v2 = sub_1DD803D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  sub_1DD710A9C(&qword_1ECD12528, &qword_1DD889E68);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v18 = sub_1DD803D64();
  sub_1DD6E1808(&type metadata for SystemResponse.CodingKeys, v19, v18);
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v20);
  sub_1DD826B3C();
  sub_1DD6E9630();
  sub_1DD875960();
  if (!v14)
  {
    type metadata accessor for SystemResponse(0);
    sub_1DD825AA8();
    sub_1DD8253B4((v15 + v21));
    sub_1DD826FFC();
    sub_1DD703958(v22, v23, v24);
    sub_1DD70396C();
    sub_1DD6E5334();
    sub_1DD875960();
    v25 = sub_1DD6FE710();
    sub_1DD70148C(v25, v26, v27);
    sub_1DD6F8CE0(*(v16 + 24));
    sub_1DD705DBC();
    sub_1DD875970();
    v28 = sub_1DD6FF738(3);
    type metadata accessor for StatementOutcome(v28);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v29);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    v30 = sub_1DD6FF738(4);
    type metadata accessor for ResponseOutput(v30);
    sub_1DD6F17A8();
    sub_1DD6E1E84(v31);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    sub_1DD6F8CE0(*(v16 + 36));
    sub_1DD705DBC();
    sub_1DD875920();
    sub_1DD710A9C(&qword_1ECD12538, &qword_1DD889E70);
    sub_1DD803DB8();
    sub_1DD826298();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v32 = sub_1DD6EFFB4();
  v33(v32);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void SystemResponse.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD824934(v8, v39);
  type metadata accessor for StatementOutcome(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E6200();
  v10 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD824C9C(v12, v40);
  v42 = sub_1DD710A9C(&qword_1ECD12550, &qword_1DD889E78);
  sub_1DD6DDEAC();
  v41 = v13;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  v15 = type metadata accessor for SystemResponse(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E535C();
  v17 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v18, v19, v20, v17);
  sub_1DD82774C(v15[5]);
  *(v2 + 16) = 1;
  v21 = v15[8];
  type metadata accessor for ResponseOutput(0);
  sub_1DD825300();
  sub_1DD6E5E68(v22, v23, v24, v25);
  sub_1DD70066C();
  sub_1DD803D64();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD825AF8();
    sub_1DD6E1EC8(v5);
    sub_1DD824154(v1, &qword_1ECD0E540);
    v27 = sub_1DD826718();
    sub_1DD70148C(v27, v28, v29);
    if (v0)
    {
      sub_1DD8276B0(v15[6]);
    }

    if (v5)
    {
      sub_1DD6E0900();
      sub_1DD6E5ABC();
    }

    sub_1DD824154(v1 + v21, &qword_1ECD11B08);
  }

  else
  {
    LOBYTE(v43) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v26);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD6E60FC();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD875860();
    v30 = sub_1DD826718();
    sub_1DD70148C(v30, v31, v32);
    *v2 = v43;
    *(v2 + 16) = v44;
    sub_1DD826730(2);
    v33 = sub_1DD875870();
    sub_1DD8265D4(v33, v34, v15[6]);
    sub_1DD6DE08C();
    sub_1DD6E1E84(v35);
    sub_1DD825A9C();
    sub_1DD8758D0();
    sub_1DD6E0B14();
    sub_1DD6E59B8();
    LOBYTE(v43) = 4;
    sub_1DD6F17A8();
    sub_1DD6E1E84(v36);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD826730(5);
    v37 = sub_1DD875820();
    sub_1DD82692C(v37, v38, v15[9]);
    sub_1DD710A9C(&qword_1ECD12538, &qword_1DD889E70);
    sub_1DD6FFDDC();
    sub_1DD803E6C();
    sub_1DD6E40F8();
    sub_1DD8758D0();
    (*(v41 + 8))(v3, v42);
    *(v1 + v15[10]) = v43;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7D2E58()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  v3 = sub_1DD825320(*(v2 + 20));

  return sub_1DD703958(v3, v4, v5);
}

double sub_1DD7D2EB4()
{
  v0 = sub_1DD82580C();
  v2 = v1(v0);
  v3 = sub_1DD6E3A44(*(v2 + 20));
  v6 = sub_1DD70148C(v3, v4, v5);
  *&result = sub_1DD82640C(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15).n128_u64[0];
  return result;
}

uint64_t IntermediateSystemResponse.statementId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for IntermediateSystemResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponse.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for IntermediateSystemResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7D2FF4()
{
  v0 = sub_1DD6F355C();
  v1(v0);
  return sub_1DD826384();
}

uint64_t IntermediateSystemResponse.responseOutput.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for IntermediateSystemResponse(v0);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponse.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for IntermediateSystemResponse(v0);
  return sub_1DD6DDF9C();
}

void IntermediateSystemResponse.init(actionEventId:statementId:toolId:responseOutput:clientQueryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD826528();
  v37 = v10;
  v38 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1DD826F78(v18, v19);
  v21 = *(v20 + 16);
  v22 = sub_1DD874820();
  v25 = sub_1DD6DEA4C(v17, v23, v24, v22);
  type metadata accessor for IntermediateSystemResponse(v25);
  sub_1DD826B0C();
  v27 = (v17 + v26);
  *v27 = 0;
  v27[1] = 0;
  v27[2] = 1;
  type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v28, v29, v30, v31);
  v32 = (v17 + *(v9 + 32));
  sub_1DD825650();
  sub_1DD807414();
  v33 = sub_1DD82676C();
  sub_1DD70148C(v33, v34, v35);
  *v27 = a9;
  v27[2] = v21;
  v36 = (v17 + *(v9 + 24));
  *v36 = v15;
  v36[1] = v13;
  sub_1DD807414();
  *v32 = v37;
  v32[1] = v38;
  sub_1DD8264FC();
}

uint64_t sub_1DD7D31D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65736E6F70736572 && a2 == 0xEE0074757074754FLL;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

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

uint64_t sub_1DD7D338C(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x64496C6F6F74;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D3458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D31D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D3480(uint64_t a1)
{
  v2 = sub_1DD803F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D34BC(uint64_t a1)
{
  v2 = sub_1DD803F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntermediateSystemResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD12568, &qword_1DD889E80);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v17 = sub_1DD803F20();
  sub_1DD6E1808(&type metadata for IntermediateSystemResponse.CodingKeys, v18, v17);
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v19);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v14)
  {
    type metadata accessor for IntermediateSystemResponse(0);
    sub_1DD8257A8();
    sub_1DD8253B4(v20);
    sub_1DD826FFC();
    sub_1DD703958(v21, v22, v23);
    sub_1DD70396C();
    sub_1DD824DE8();
    sub_1DD875960();
    v24 = sub_1DD6FE710();
    sub_1DD70148C(v24, v25, v26);
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
    v27 = sub_1DD6FF738(3);
    type metadata accessor for ResponseOutput(v27);
    sub_1DD6F17A8();
    sub_1DD6E1E84(v28);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD875960();
    sub_1DD82595C(*(v15 + 32));
    sub_1DD824BDC();
    sub_1DD875920();
  }

  v29 = sub_1DD6EFFB4();
  v30(v29);
  sub_1DD825790();
  sub_1DD826CF4();
}

void IntermediateSystemResponse.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v38 = v5;
  v6 = sub_1DD710A9C(&qword_1ECD11B08, &qword_1DD889910);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD824948(v8, v38);
  v9 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD82495C(v11, v39);
  sub_1DD710A9C(&qword_1ECD12578, &qword_1DD889E88);
  sub_1DD6DDEAC();
  v40 = v13;
  v41 = v12;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDFE4();
  v15 = type metadata accessor for IntermediateSystemResponse(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E535C();
  v17 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v18, v19, v20, v17);
  sub_1DD82774C(v15[5]);
  *(v2 + 16) = 1;
  v21 = v15[7];
  v22 = type metadata accessor for ResponseOutput(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v23, v24, v25, v22);
  v26 = sub_1DD826F54();
  sub_1DD6FE770(v26);
  sub_1DD803F20();
  sub_1DD77E6F4();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v42);
    sub_1DD824154(v1, &qword_1ECD0E540);
    v28 = sub_1DD826718();
    sub_1DD70148C(v28, v29, v30);
    sub_1DD824154(v1 + v21, &qword_1ECD11B08);
  }

  else
  {
    LOBYTE(v43) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v27);
    sub_1DD825A9C();
    sub_1DD8258D0();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD6E40F8();
    sub_1DD79A3A4();
    sub_1DD875860();
    v31 = sub_1DD826718();
    sub_1DD70148C(v31, v32, v33);
    *v2 = v43;
    *(v2 + 16) = v44;
    sub_1DD826730(2);
    v34 = sub_1DD875870();
    sub_1DD8265D4(v34, v35, v15[6]);
    sub_1DD6F17A8();
    sub_1DD6E1E84(v36);
    sub_1DD825A9C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD826730(4);
    sub_1DD875820();
    sub_1DD825CD4();
    v37 = (v1 + v15[8]);
    (*(v40 + 8))(v4, v41);
    *v37 = v22;
    v37[1] = v40;
    sub_1DD70131C();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v42);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t IntermediateSystemResponseRendered.statementId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for IntermediateSystemResponseRendered(v0);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponseRendered.toolId.getter()
{
  type metadata accessor for IntermediateSystemResponseRendered(0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t IntermediateSystemResponseRendered.toolId.setter()
{
  v3 = sub_1DD6ED7A4();
  type metadata accessor for IntermediateSystemResponseRendered(v3);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntermediateSystemResponseRendered.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for IntermediateSystemResponseRendered(v0);
  return sub_1DD6DDF9C();
}

uint64_t IntermediateSystemResponseRendered.renderedResponse.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for IntermediateSystemResponseRendered(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t IntermediateSystemResponseRendered.renderedResponse.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for IntermediateSystemResponseRendered(v0);
  return sub_1DD6DDF9C();
}

__n128 IntermediateSystemResponseRendered.init(actionEventId:statementId:toolId:renderedResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1DD6FF8A8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1DD826F78(v17, v18);
  v20 = *(v19 + 16);
  v21 = sub_1DD874820();
  v24 = sub_1DD6DEA4C(v16, v22, v23, v21);
  v25 = type metadata accessor for IntermediateSystemResponseRendered(v24);
  v26 = (v16 + v25[5]);
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 1;
  v27 = (v16 + v25[6]);
  sub_1DD7029A8();
  sub_1DD807414();
  sub_1DD70148C(*v26, v26[1], v26[2]);
  *v26 = a9;
  v26[2] = v20;
  *v27 = v14;
  v27[1] = v12;
  *(v16 + v25[7]) = v10;
  sub_1DD6E58C4();
  return result;
}

uint64_t sub_1DD7D3E20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001DD8B6D20 == a2)
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

unint64_t sub_1DD7D3F88(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E656D6574617473;
      break;
    case 2:
      result = 0x64496C6F6F74;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7D4028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7D3E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7D4050(uint64_t a1)
{
  v2 = sub_1DD803F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7D408C(uint64_t a1)
{
  v2 = sub_1DD803F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntermediateSystemResponseRendered.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD12580, &qword_1DD889E90);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v16 = sub_1DD803F74();
  sub_1DD6E1808(&type metadata for IntermediateSystemResponseRendered.CodingKeys, v17, v16);
  sub_1DD8269A4();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v18);
  sub_1DD826B3C();
  sub_1DD6E5924();
  sub_1DD875960();
  if (!v14)
  {
    type metadata accessor for IntermediateSystemResponseRendered(0);
    sub_1DD8257A8();
    sub_1DD8253B4(v19);
    sub_1DD826FFC();
    sub_1DD703958(v20, v21, v22);
    sub_1DD70396C();
    sub_1DD824DE8();
    sub_1DD875960();
    v23 = sub_1DD6FE710();
    sub_1DD70148C(v23, v24, v25);
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875920();
    sub_1DD824DE8();
    sub_1DD875980();
  }

  v26 = sub_1DD6EFFB4();
  v27(v26);
  sub_1DD825790();
  sub_1DD826CF4();
}