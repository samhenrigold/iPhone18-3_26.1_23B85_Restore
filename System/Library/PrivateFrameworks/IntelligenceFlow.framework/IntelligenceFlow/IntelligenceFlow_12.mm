uint64_t static ActionConfirmation.SystemStyle.MontaraEnablement.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E27E8(a1);
  sub_1DD700BB8();
  v7 = v7 && v5 == v6;
  if (v7)
  {
    if (v3 != v4)
    {
      return 0;
    }

    return v1 ^ v2 ^ 1u;
  }

  sub_1DD875A30();
  result = sub_1DD6FE86C();
  if ((v9 & 1) != 0 && v3 == v4)
  {
    return v1 ^ v2 ^ 1u;
  }

  return result;
}

uint64_t sub_1DD7E9DE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001DD8B7410 == a2)
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

uint64_t sub_1DD7E9EF8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0xD000000000000011;
}

uint64_t sub_1DD7E9F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E9DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E9F88(uint64_t a1)
{
  v2 = sub_1DD8069BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9FC4(uint64_t a1)
{
  v2 = sub_1DD8069BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.SystemStyle.MontaraEnablement.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD13028, &qword_1DD88A508);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD826A0C();
  sub_1DD6FE8B0(v2);
  sub_1DD8069BC();
  sub_1DD6E17D8();
  sub_1DD826FA8();
  sub_1DD875BB0();
  sub_1DD705FD8();
  sub_1DD6E594C();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6E4104();
    sub_1DD806A10();
    sub_1DD705E14();
    sub_1DD8759D0();
    sub_1DD8263D0();
    sub_1DD705E14();
    sub_1DD875980();
  }

  v4 = sub_1DD6EEDBC();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionConfirmation.SystemStyle.MontaraEnablement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  sub_1DD710A9C(&qword_1ECD13040, &qword_1DD88A510);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v18 = sub_1DD8069BC();
  sub_1DD6ED2A4(&type metadata for ActionConfirmation.SystemStyle.MontaraEnablement.CodingKeys, v19, v18);
  if (v13)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD806A64();
    sub_1DD705C28();
    sub_1DD8758D0();
    sub_1DD8263D0();
    sub_1DD6E5374();
    v20 = sub_1DD875880();
    v21 = sub_1DD6DEA2C();
    v22(v21);
    *v14 = v16;
    *(v14 + 8) = v15;
    *(v14 + 16) = a12;
    *(v14 + 17) = v20 & 1;

    sub_1DD826950();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

BOOL static ActionConfirmation.SystemStyle.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 17);
  v6 = *(v2 + 16);
  v7 = *(v2 + 17);
  if (v1 != *v2 || *(v3 + 8) != *(v2 + 8))
  {
    if ((sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }

    return v4 == v6 && v5 == v7;
  }

  return v4 == v6 && ((v5 ^ v7) & 1) == 0;
}

uint64_t sub_1DD7EA3A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001DD8B7430 == a2)
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

uint64_t sub_1DD7EA440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EA3A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7EA46C(uint64_t a1)
{
  v2 = sub_1DD806AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EA4A8(uint64_t a1)
{
  v2 = sub_1DD806AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EA4E4(uint64_t a1)
{
  v2 = sub_1DD806B0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EA520(uint64_t a1)
{
  v2 = sub_1DD806B0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.SystemStyle.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  sub_1DD710A9C(&qword_1ECD13050, &qword_1DD88A518);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DE340();
  sub_1DD710A9C(&qword_1ECD13058, &qword_1DD88A520);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDFE4();
  sub_1DD6E7320(v0);
  sub_1DD806AB8();
  sub_1DD77E6F4();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD806B0C();
  sub_1DD82499C();
  sub_1DD875910();
  sub_1DD806B60();
  sub_1DD8759D0();
  v3 = sub_1DD8252CC();
  v4(v3);
  v5 = sub_1DD6E5DB0();
  v6(v5);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ActionConfirmation.SystemStyle.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v33 = v4;
  sub_1DD710A9C(&qword_1ECD13078, &qword_1DD88A528);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E7258();
  v6 = sub_1DD710A9C(&qword_1ECD13080, &qword_1DD88A530);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v8 = v3[4];
  sub_1DD6FE8B0(v3);
  v9 = sub_1DD806AB8();
  sub_1DD825BBC(&type metadata for ActionConfirmation.SystemStyle.CodingKeys, v10, v9);
  if (v0)
  {
    goto LABEL_9;
  }

  sub_1DD875900();
  sub_1DD6ED750();
  v12 = v6;
  if (v13 == v11 >> 1)
  {
LABEL_8:
    v17 = sub_1DD875740();
    sub_1DD6E41BC(v17, MEMORY[0x1E69E6B28]);
    v19 = v18;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v19 = &type metadata for ActionConfirmation.SystemStyle;
    v20 = sub_1DD875810();
    sub_1DD6DF100(v20);
    sub_1DD6E0540();
    (*(v21 + 104))(v19);
    swift_willThrow();
    swift_unknownObjectRelease();
    v22 = sub_1DD825950();
    v23(v22, v12);
LABEL_9:
    v28 = v3;
    goto LABEL_10;
  }

  sub_1DD825138();
  if (v15 == v16)
  {
    __break(1u);
    return;
  }

  sub_1DD826E1C(v14);
  sub_1DD6ED830();
  sub_1DD827210();
  if (v8 != v6 >> 1)
  {
    v12 = v1;
    goto LABEL_8;
  }

  sub_1DD806B0C();
  sub_1DD826238();
  sub_1DD875800();
  sub_1DD806BB4();
  sub_1DD8250A8();
  sub_1DD8758D0();
  swift_unknownObjectRelease();
  v24 = sub_1DD6DFF24();
  v25(v24);
  v26 = sub_1DD705230();
  v27(v26);
  *v33 = v29;
  *(v33 + 8) = v30;
  *(v33 + 16) = v31;
  *(v33 + 17) = v32;
  v28 = v3;
LABEL_10:
  sub_1DD6E1EC8(v28);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7EAAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D7269666661 && a2 == 0xEB00000000657669;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657669746167656ELL && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74536D6574737973 && a2 == 0xEB00000000656C79)
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

uint64_t sub_1DD7EAC10(char a1)
{
  result = 0x74616D7269666661;
  switch(a1)
  {
    case 1:
      result = 0x657669746167656ELL;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x74536D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7EACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EAAA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7EAD10(uint64_t a1)
{
  v2 = sub_1DD806C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EAD4C(uint64_t a1)
{
  v2 = sub_1DD806C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD13090, &qword_1DD88A538);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6E49C0(v2);
  v4 = sub_1DD806C08();
  sub_1DD6E1808(&type metadata for ActionConfirmation.CodingKeys, v5, v4);
  sub_1DD705C50();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD702E94();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6EFF88();
    sub_1DD710A9C(&qword_1ECD130A0, &qword_1DD88A540);
    sub_1DD806C5C();
    sub_1DD826748();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
    sub_1DD7928CC();
    sub_1DD806D18();

    sub_1DD826748();
    sub_1DD6DE334();
    sub_1DD875960();
  }

  v6 = sub_1DD6EEDBC();
  v7(v6);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionConfirmation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD130C0, &qword_1DD88A548);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6F0A58();
  sub_1DD6FE770(v0);
  sub_1DD806C08();
  sub_1DD825968();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6DEB0C();
    v4 = sub_1DD875870();
    v16 = v5;
    LOBYTE(v19[0]) = 1;
    sub_1DD6DEB0C();
    v6 = sub_1DD875870();
    *(&v15 + 1) = v7;
    *&v15 = v6;
    sub_1DD710A9C(&qword_1ECD130A0, &qword_1DD88A540);
    sub_1DD806D6C();
    sub_1DD8268C0();
    sub_1DD8758D0();
    v14 = v19[0];
    sub_1DD7928CC();
    sub_1DD806E28();
    sub_1DD8275D0();
    sub_1DD8256A4();
    sub_1DD875860();
    v8 = sub_1DD8259C8();
    v9(v8);
    sub_1DD8264F0(v25);
    v10 = v27;
    *&v17[0] = v4;
    *(&v17[0] + 1) = v16;
    v17[1] = v15;
    *v18 = v19[0];
    *&v18[8] = v11;
    *&v18[16] = v26;
    *&v18[24] = v27;
    *v2 = v17[0];
    v2[1] = v15;
    v2[2] = *v18;
    *(v2 + 42) = *&v18[10];
    sub_1DD806E7C(v17, v19);
    sub_1DD6E1EC8(v0);
    v19[0] = v4;
    v19[1] = v16;
    v20 = v15;
    v21 = v14;
    v22 = v13;
    sub_1DD826EA0();
    v23 = v12;
    v24 = v10;
    sub_1DD80043C(v19);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void ParameterValue.promptSelection.getter()
{
  v1 = sub_1DD6E0A5C();
  type metadata accessor for ParameterValue(v1);
  sub_1DD6E0508();
  v3 = *v2;
  v4 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 9);
  *v0 = v3;
  *(v0 + 8) = v4;
  *(v0 + 9) = v2;
}

void ParameterValue.promptSelection.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  type metadata accessor for ParameterValue(0);
  sub_1DD6E0508();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 9) = v3;
}

uint64_t ParameterValue.promptSelection.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterValue(v0);
  return sub_1DD6DDF9C();
}

uint64_t ParameterValue.init(value:promptSelection:)()
{
  sub_1DD826938();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = v0 + *(type metadata accessor for ParameterValue(0) + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  sub_1DD874FA0();
  sub_1DD6DF448();
  v6 = sub_1DD6E21D0();
  result = v7(v6);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = v4;
  return result;
}

uint64_t static ParameterValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
  {
    v2 = *(type metadata accessor for ParameterValue(0) + 20);
    v3 = (v1 + v2);
    v4 = *(v1 + v2 + 9);
    v5 = (v0 + v2);
    v6 = *(v0 + v2 + 9);
    if (v4)
    {
      if (v6)
      {
        return 1;
      }
    }

    else if ((v6 & 1) == 0)
    {
      v8 = *v3;
      v9 = *(v3 + 8);
      v10 = *v5;
      v11 = *(v5 + 8);
      if (v9)
      {
        if (v8)
        {
          if ((v11 & 1) != 0 && v10)
          {
            return 1;
          }
        }

        else if ((v11 & 1) != 0 && !v10)
        {
          return 1;
        }
      }

      else if ((v11 & 1) == 0 && v8 == v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7EB494()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x655374706D6F7270 && v0 == 0xEF6E6F697463656CLL)
  {

    return 1;
  }

  else
  {
    sub_1DD824AA4();
    sub_1DD875A30();
    sub_1DD82698C();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7EB544(uint64_t a1)
{
  v2 = sub_1DD806EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EB580(uint64_t a1)
{
  v2 = sub_1DD806EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD130E0, &qword_1DD88A550);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v16 = sub_1DD806EB4();
  sub_1DD6E1808(&type metadata for ParameterValue.CodingKeys, v17, v16);
  sub_1DD825C8C();
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v18);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v14)
  {
    type metadata accessor for ParameterValue(0);
    sub_1DD82682C();
    sub_1DD806F08();
    sub_1DD824DE8();
    sub_1DD875960();
  }

  v19 = sub_1DD6EFFB4();
  v20(v19);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ParameterValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  sub_1DD826914(v4);
  v17 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v16 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD8247F4();
  v18 = sub_1DD710A9C(&qword_1ECD130F8, &qword_1DD88A558);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD700BA4();
  v9 = type metadata accessor for ParameterValue(v8);
  v10 = sub_1DD6DEA10(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD702A64();
  v12 = v1 + *(v11 + 28);
  *v12 = 0;
  *(v12 + 8) = 256;
  sub_1DD824CF8(v0);
  sub_1DD806EB4();
  sub_1DD6EF0F4();
  sub_1DD826A7C();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6E05D4();
    sub_1DD6E1E84(v13);
    sub_1DD6F9A4C();
    sub_1DD8268C0();
    sub_1DD8758D0();
    (*(v16 + 32))(v1, v3, v17);
    sub_1DD6DEC54();
    sub_1DD806F5C();
    sub_1DD8256A4();
    sub_1DD875860();
    v14 = sub_1DD6E4290();
    v15(v14, v18);
    *v12 = v19;
    *(v12 + 8) = v20;
    *(v12 + 9) = v21;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t static PromptSelection.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD7EBA68()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x656D7269666E6F63 && v2 == 0xE900000000000064;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0xD000000000000018 && 0x80000001DD8B66B0 == v0;
    if (v5 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x6465696E6564 && v0 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      sub_1DD824AA4();
      sub_1DD875A30();
      sub_1DD82698C();
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

uint64_t sub_1DD7EBB60()
{
  sub_1DD705CF0();
  if (v2 == 0x7865646E69 && v1 == 0xE500000000000000)
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

uint64_t sub_1DD7EBBC4(uint64_t a1)
{
  v2 = sub_1DD806FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBC00(uint64_t a1)
{
  v2 = sub_1DD806FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EBC3C(uint64_t a1)
{
  v2 = sub_1DD8070AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBC78(uint64_t a1)
{
  v2 = sub_1DD8070AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EBCB4(uint64_t a1)
{
  v2 = sub_1DD807004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBCF0(uint64_t a1)
{
  v2 = sub_1DD807004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EBD2C(uint64_t a1)
{
  v2 = sub_1DD807058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBD68(uint64_t a1)
{
  v2 = sub_1DD807058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSelection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD826784();
  sub_1DD710A9C(&qword_1ECD13108, &qword_1DD88A560);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E9924(v23, v40);
  sub_1DD710A9C(&qword_1ECD13110, &qword_1DD88A568);
  sub_1DD6DDEAC();
  v43 = v24;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD82480C(v26, v41);
  sub_1DD710A9C(&qword_1ECD13118, &qword_1DD88A570);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD82495C(v28, v42);
  sub_1DD710A9C(&qword_1ECD13120, &qword_1DD88A578);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DEBA0();
  v30 = *v20;
  v31 = *(v20 + 8);
  sub_1DD825500(v21);
  sub_1DD806FB0();
  sub_1DD6E4218();
  sub_1DD875BB0();
  if (v31 == 1)
  {
    if (v30)
    {
      sub_1DD6EFF88();
      sub_1DD807004();
      sub_1DD826E4C();
    }

    else
    {
      sub_1DD8070AC();
    }

    sub_1DD824DA8();
    sub_1DD875910();
    v36 = sub_1DD705C68();
    v37(v36);
    v38 = sub_1DD8257C8();
    v39(v38);
  }

  else
  {
    sub_1DD6DEC54();
    sub_1DD807058();
    sub_1DD824DA8();
    sub_1DD875910();
    sub_1DD8759B0();
    v32 = sub_1DD705E24();
    v33(v32, v43);
    v34 = sub_1DD8257C8();
    v35(v34);
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void PromptSelection.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  v46 = v2;
  v47 = sub_1DD710A9C(&qword_1ECD13148, &qword_1DD88A580);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD82486C(v4, v45);
  sub_1DD710A9C(&qword_1ECD13150, &qword_1DD88A588);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  v6 = sub_1DD710A9C(&qword_1ECD13158, &qword_1DD88A590);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD13160, &qword_1DD88A598);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E7258();
  sub_1DD6FE8B0(v1);
  sub_1DD806FB0();
  sub_1DD7039CC();
  sub_1DD875B90();
  if (!v48)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827598();
    if (!v9)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v10 == v11)
      {
        __break(1u);
        return;
      }

      v18 = *(v17 + v16);
      sub_1DD826480(v12, v13, v14, v15, v16);
      sub_1DD6ED830();
      v20 = v19;
      v22 = v21;
      swift_unknownObjectRelease();
      if (v20 == v22 >> 1)
      {
        if (v18)
        {
          if (v18 == 1)
          {
            sub_1DD6DEC54();
            sub_1DD807058();
            sub_1DD8250E8();
            sub_1DD875800();
            v23 = v46;
            sub_1DD8258D0();
            v39 = sub_1DD8758B0();
            swift_unknownObjectRelease();
            v40 = sub_1DD824F60();
            v41(v40);
            v42 = sub_1DD82527C();
            v43(v42);
            v44 = 0;
          }

          else
          {
            sub_1DD6EFF88();
            sub_1DD807004();
            sub_1DD6E4040();
            sub_1DD826118();
            sub_1DD875800();
            v23 = v46;
            swift_unknownObjectRelease();
            v35 = sub_1DD6DED98();
            v36(v35, v47);
            v37 = sub_1DD82527C();
            v38(v37);
            v39 = 1;
            v44 = 1;
          }
        }

        else
        {
          sub_1DD8070AC();
          sub_1DD6E4040();
          sub_1DD826118();
          sub_1DD875800();
          swift_unknownObjectRelease();
          v31 = sub_1DD6DED98();
          v32(v31, v6);
          v33 = sub_1DD825864();
          v34(v33, v0);
          v39 = 0;
          v44 = 1;
          v23 = v46;
        }

        *v23 = v39;
        *(v23 + 8) = v44;
        sub_1DD6E1EC8(v1);
        goto LABEL_13;
      }
    }

    v24 = sub_1DD875740();
    sub_1DD6E41BC(v24, MEMORY[0x1E69E6B28]);
    v26 = v25;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v26 = &type metadata for PromptSelection;
    sub_1DD7039C0();
    v27 = sub_1DD875810();
    sub_1DD6DF100(v27);
    sub_1DD6E0540();
    (*(v28 + 104))(v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    v29 = sub_1DD705C68();
    v30(v29, v0);
  }

  sub_1DD6E1EC8(v1);
LABEL_13:
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t ParameterNeedsValue.currentValue.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterNeedsValue(v0);
  return sub_1DD6DDF9C();
}

uint64_t ParameterNeedsValue.typeInstance.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterNeedsValue(v0);
  return sub_1DD6DDF9C();
}

double ParameterNeedsValue.context.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = (v1 + *(type metadata accessor for ParameterNeedsValue(v2) + 28));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;

  return result;
}

uint64_t ParameterNeedsValue.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for ParameterNeedsValue(0);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ParameterNeedsValue.context.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterNeedsValue(v0);
  return sub_1DD6DDF9C();
}

void ParameterNeedsValue.init(parameterId:typeInstance:context:)()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = v6[1];
  v9 = type metadata accessor for ParameterNeedsValue(0);
  v10 = &v5[*(v9 + 28)];
  *v10 = 0;
  *(v10 + 1) = 0;
  *v5 = v3;
  *(v5 + 1) = v1;
  sub_1DD874F70();
  v11 = swift_allocBox();
  sub_1DD6E0540();
  (*(v12 + 104))();
  v13 = *(v9 + 20);
  *&v5[v13] = v11;
  v14 = *MEMORY[0x1E69DAE70];
  sub_1DD874FA0();
  sub_1DD6DF448();
  (*(v15 + 104))(&v5[v13], v14);
  sub_1DD874FC0();
  sub_1DD6DF448();
  v16 = sub_1DD6E26D8();
  v17(v16);

  *v10 = v7;
  *(v10 + 1) = v8;
  sub_1DD6DFED0();
}

void ParameterNeedsValue.init(parameterId:currentValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD827764();
  sub_1DD8257B8();
  v9 = sub_1DD6E0A5C();
  v10 = type metadata accessor for ParameterNeedsValue(v9);
  v11 = &v5[*(v10 + 28)];
  *v11 = 0;
  *(v11 + 1) = 0;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_1DD701458();
  sub_1DD874FA0();
  sub_1DD6DF448();
  (*(v12 + 32))(&v5[v7], v6);
  sub_1DD875010();
  swift_allocBox();
  sub_1DD8274C0();
  sub_1DD874FF0();
  v13 = swift_allocBox();
  sub_1DD6E0540();
  (*(v14 + 104))();
  *v8 = v13;
  sub_1DD6E0540();
  (*(v15 + 104))(v8);
  v16 = *(v10 + 24);
  *&v5[v16] = v7;
  v17 = *MEMORY[0x1E69DAF30];
  sub_1DD874FC0();
  sub_1DD6DF448();
  (*(v18 + 104))(&v5[v16], v17);

  *v11 = 0;
  *(v11 + 1) = 0;
  sub_1DD827720();
}

void ParameterNeedsValue.init(parameterId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD827764();
  v7 = v6;
  v9 = v8;
  sub_1DD6E0A5C();
  sub_1DD875010();
  v10 = swift_allocBox();
  v12 = v11;
  sub_1DD874FF0();
  v13 = swift_allocBox();
  sub_1DD6E0540();
  (*(v14 + 104))();
  *v12 = v13;
  sub_1DD8250B8();
  v15 = sub_1DD826A94();
  v16(v15);
  v17 = type metadata accessor for ParameterNeedsValue(0);
  v18 = v17[6];
  *&v5[v18] = v10;
  v19 = *MEMORY[0x1E69DAF30];
  sub_1DD874FC0();
  sub_1DD6DF448();
  (*(v20 + 104))(&v5[v18], v19);
  v21 = &v5[v17[7]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *v5 = v9;
  *(v5 + 1) = v7;
  sub_1DD874F70();
  v22 = swift_allocBox();
  sub_1DD6E0540();
  (*(v23 + 104))();
  v24 = v17[5];
  *&v5[v24] = v22;
  v25 = *MEMORY[0x1E69DAE70];
  sub_1DD874FA0();
  sub_1DD6DF448();
  (*(v26 + 104))(&v5[v24], v25);

  *v21 = 0;
  *(v21 + 1) = 0;
  sub_1DD827720();
}

uint64_t sub_1DD7ECCF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7551686372616573 && a2 == 0xEB00000000797265)
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

uint64_t sub_1DD7ECD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ECCF4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7ECDC0(uint64_t a1)
{
  v2 = sub_1DD807100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ECDFC(uint64_t a1)
{
  v2 = sub_1DD807100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNeedsValue.Context.PhotosSearch.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD13168, &qword_1DD88A5A0);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD807100();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t static ParameterNeedsValue.Context.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  sub_1DD875A30();
  result = sub_1DD6FE86C();
  if (v6)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1DD7ECFC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6553736F746F6870 && a2 == 0xEC00000068637261)
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

uint64_t sub_1DD7ED068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ECFC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7ED094(uint64_t a1)
{
  v2 = sub_1DD807154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ED0D0(uint64_t a1)
{
  v2 = sub_1DD807154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7ED10C(uint64_t a1)
{
  v2 = sub_1DD8071A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ED148(uint64_t a1)
{
  v2 = sub_1DD8071A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNeedsValue.Context.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  sub_1DD710A9C(&qword_1ECD13180, &qword_1DD88A5B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DE340();
  sub_1DD710A9C(&qword_1ECD13188, &qword_1DD88A5B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDFE4();
  sub_1DD6E7320(v0);
  sub_1DD807154();
  sub_1DD77E6F4();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8071A8();
  sub_1DD82499C();
  sub_1DD875910();
  sub_1DD8071FC();
  sub_1DD8759D0();
  v3 = sub_1DD8252CC();
  v4(v3);
  v5 = sub_1DD6E5DB0();
  v6(v5);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ParameterNeedsValue.Context.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v31 = v4;
  sub_1DD710A9C(&qword_1ECD131A8, &qword_1DD88A5C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E7258();
  v6 = sub_1DD710A9C(&qword_1ECD131B0, &qword_1DD88A5C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v8 = v3[4];
  sub_1DD6FE8B0(v3);
  v9 = sub_1DD807154();
  sub_1DD825BBC(&type metadata for ParameterNeedsValue.Context.CodingKeys, v10, v9);
  if (v0)
  {
    goto LABEL_9;
  }

  sub_1DD875900();
  sub_1DD6ED750();
  v12 = v6;
  if (v13 == v11 >> 1)
  {
LABEL_8:
    v17 = sub_1DD875740();
    sub_1DD6E41BC(v17, MEMORY[0x1E69E6B28]);
    v19 = v18;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v19 = &type metadata for ParameterNeedsValue.Context;
    v20 = sub_1DD875810();
    sub_1DD6DF100(v20);
    sub_1DD6E0540();
    (*(v21 + 104))(v19);
    swift_willThrow();
    swift_unknownObjectRelease();
    v22 = sub_1DD825950();
    v23(v22, v12);
LABEL_9:
    v28 = v3;
    goto LABEL_10;
  }

  sub_1DD825138();
  if (v15 == v16)
  {
    __break(1u);
    return;
  }

  sub_1DD826E1C(v14);
  sub_1DD6ED830();
  sub_1DD827210();
  if (v8 != v6 >> 1)
  {
    v12 = v1;
    goto LABEL_8;
  }

  sub_1DD8071A8();
  sub_1DD826238();
  sub_1DD875800();
  sub_1DD807250();
  sub_1DD8250A8();
  sub_1DD8758D0();
  swift_unknownObjectRelease();
  v24 = sub_1DD6DFF24();
  v25(v24);
  v26 = sub_1DD705230();
  v27(v26);
  *v31 = v29;
  v31[1] = v30;
  v28 = v3;
LABEL_10:
  sub_1DD6E1EC8(v28);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7ED6D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x56746E6572727563 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD7ED83C(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x56746E6572727563;
      break;
    case 2:
      result = 0x74736E4965707974;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7ED8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ED6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7ED908(uint64_t a1)
{
  v2 = sub_1DD8072A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ED944(uint64_t a1)
{
  v2 = sub_1DD8072A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNeedsValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  sub_1DD710A9C(&qword_1ECD131C0, &qword_1DD88A5D0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v16 = sub_1DD8072A4();
  sub_1DD6E1808(&type metadata for ParameterNeedsValue.CodingKeys, v17, v16);
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v14)
  {
    type metadata accessor for ParameterNeedsValue(0);
    sub_1DD82553C();
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v18);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    sub_1DD874FC0();
    sub_1DD700C54();
    sub_1DD6E1E84(v19);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    sub_1DD8072F8();
    sub_1DD6E5E30();

    sub_1DD6DE334();
    sub_1DD875960();
  }

  v20 = sub_1DD6EFFB4();
  v21(v20);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void ParameterNeedsValue.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v24 = sub_1DD874FC0();
  sub_1DD6DDEAC();
  v23 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v22 = v8;
  sub_1DD6E9A9C();
  sub_1DD874FA0();
  sub_1DD6E125C();
  v25 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD702A64();
  sub_1DD710A9C(&qword_1ECD131D8, &qword_1DD88A5D8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for ParameterNeedsValue(v12);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v16 = (v3 + *(v15 + 28));
  *v16 = 0;
  v16[1] = 0;
  v26 = v16;
  sub_1DD824CF8(v5);
  sub_1DD8072A4();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v5);
  }

  else
  {
    LOBYTE(v27) = 0;
    *v3 = sub_1DD875870();
    v3[1] = v17;
    sub_1DD826820();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v18);
    sub_1DD8758D0();
    (*(v25 + 32))(v3 + *(v13 + 20), v2, v1);
    sub_1DD826B30();
    sub_1DD700C54();
    sub_1DD6E1E84(v19);
    sub_1DD8758D0();
    (*(v23 + 32))(v3 + *(v13 + 24), v22, v24);
    sub_1DD7928CC();
    sub_1DD80734C();
    sub_1DD826F48();
    sub_1DD875860();
    v20 = sub_1DD826FD8();
    v21(v20);

    *v26 = v27;
    v26[1] = v28;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD825E00();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t AttributedValue.ancestorId.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for AttributedValue(v0);
  v2 = sub_1DD8255E0(*(v1 + 20));

  return sub_1DD703958(v2, v3, v4);
}

__n128 AttributedValue.init(value:ancestorId:)(uint64_t a1, uint64_t a2)
{
  sub_1DD8250F8();
  v5 = *(v4 + 32);
  sub_1DD874FA0();
  sub_1DD6DF448();
  v11 = v2[1];
  v12 = *v2;
  v6 = sub_1DD6E87AC();
  v7(v6);
  sub_1DD825A74();
  v9 = (v3 + v8);
  result = v12;
  *v9 = v12;
  v9[1] = v11;
  v9[2].n128_u8[0] = v5;
  return result;
}

BOOL static AttributedValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD825A74();
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v7 = *(a1 + v4 + 24);
  v9 = *(a1 + v4 + 32);
  v10 = (a2 + v4);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v10 + 32);
  if (v8 != 1)
  {
    v63[0] = v6;
    v63[1] = v5;
    v63[2] = v8;
    v63[3] = v7;
    v64 = v9;
    if (v13 != 1)
    {
      v58 = v12;
      v59 = v11;
      v60 = v13;
      v61 = v14;
      v62 = v15 & 1;
      v57 = static AncestorID.== infix(_:_:)(v63, &v58);
      v45 = sub_1DD824858();
      sub_1DD703958(v45, v46, v47);
      sub_1DD6E6378();
      sub_1DD826844();
      sub_1DD703958(v48, v49, v50);
      v51 = sub_1DD824858();
      sub_1DD703958(v51, v52, v53);

      v54 = sub_1DD824858();
      sub_1DD70148C(v54, v55, v56);
      return (v57 & 1) != 0;
    }

    v26 = sub_1DD824858();
    sub_1DD703958(v26, v27, v28);
    sub_1DD6E6378();
    sub_1DD8273E4();
    sub_1DD703958(v29, v30, v31);
    v32 = sub_1DD824858();
    sub_1DD703958(v32, v33, v34);

    goto LABEL_8;
  }

  sub_1DD6E0C60();
  sub_1DD8273F0();
  sub_1DD703958(v16, v17, v18);
  if (v13 != 1)
  {
    sub_1DD6E6378();
    sub_1DD826844();
    sub_1DD703958(v35, v36, v37);
LABEL_8:
    v38 = sub_1DD824858();
    sub_1DD70148C(v38, v39, v40);
    sub_1DD6E6378();
    sub_1DD826844();
    sub_1DD70148C(v41, v42, v43);
    return 0;
  }

  v19 = 1;
  sub_1DD6E6378();
  sub_1DD8273E4();
  sub_1DD703958(v20, v21, v22);
  sub_1DD6E0C60();
  sub_1DD8273F0();
  sub_1DD70148C(v23, v24, v25);
  return v19;
}

uint64_t sub_1DD7EE284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449)
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

uint64_t sub_1DD7EE350(char a1)
{
  if (a1)
  {
    return 0x726F747365636E61;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD7EE390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EE284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7EE3B8(uint64_t a1)
{
  v2 = sub_1DD8073C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EE3F4(uint64_t a1)
{
  v2 = sub_1DD8073C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AttributedValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD131E8, &qword_1DD88A5E0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v14 = sub_1DD8073C0();
  sub_1DD6E1808(&type metadata for AttributedValue.CodingKeys, v15, v14);
  LOBYTE(v26) = 0;
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v16);
  sub_1DD825A9C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v12)
  {
    v17 = type metadata accessor for AttributedValue(0);
    v18 = sub_1DD82595C(*(v17 + 20));
    v21 = sub_1DD826E70(v18, v19, v20);
    sub_1DD703958(v21, v22, v23);
    sub_1DD703904();
    sub_1DD824DE8();
    sub_1DD875960();
    sub_1DD70148C(v26, v27, v28);
  }

  v24 = sub_1DD6EFFB4();
  v25(v24);
  sub_1DD825790();
  sub_1DD826CF4();
}

void AttributedValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  sub_1DD710A9C(&qword_1ECD131F8, &qword_1DD88A5E8);
  sub_1DD6DDEAC();
  v15 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD700BA4();
  v7 = type metadata accessor for AttributedValue(v6);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD824734();
  sub_1DD824794();
  sub_1DD8073C0();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v16) = 0;
    sub_1DD6E05D4();
    sub_1DD6E1E84(v9);
    sub_1DD8276BC();
    sub_1DD8758D0();
    sub_1DD826578();
    v10 = sub_1DD825B84();
    v11(v10);
    sub_1DD6FF8F4();
    sub_1DD705C9C();
    sub_1DD8250A8();
    sub_1DD875860();
    v12 = sub_1DD825068();
    v13(v12, v15);
    v14 = v1 + *(v7 + 20);
    *v14 = v16;
    *(v14 + 16) = v17;
    *(v14 + 32) = v18;
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E8904();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7EE8E8()
{
  v3 = sub_1DD825000();
  v5 = *(v4(v3) + 24);
  v0(0);
  sub_1DD6DE1C4();
  v8 = *(v7 + 16);

  return v8(v2, v1 + v5, v6);
}

uint64_t sub_1DD7EE960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = sub_1DD6EE78C();
  v9(v8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEA6C();
  v11 = sub_1DD6E0C60();
  v12(v11);
  return a6(v6);
}

void ParameterConfirmation.item.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterConfirmation(v0);
  sub_1DD6E8904();
  sub_1DD6E5ABC();
  sub_1DD874FA0();
  sub_1DD6DF448();
  v1 = sub_1DD6E21D0();
  v2(v1);
  sub_1DD825A74();
  sub_1DD6F448C(v3);
  sub_1DD825D94(v4, xmmword_1DD8890D0);
}

void (*ParameterConfirmation.item.modify())(int **a1, char a2)
{
  v1 = sub_1DD7281CC(0x40uLL);
  sub_1DD82748C(v1);
  *(v0 + 8) = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v3 = v2;
  *(v0 + 16) = v2;
  v5 = *(v4 + 64);
  *(v0 + 24) = sub_1DD7281CC(v5);
  *(v0 + 32) = sub_1DD7281CC(v5);
  *(v0 + 56) = *(type metadata accessor for ParameterConfirmation(0) + 24);
  *(v0 + 40) = *(v3 + 16);
  *(v0 + 48) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = sub_1DD700660();
  v7(v6);
  return sub_1DD7EEB84;
}

void sub_1DD7EEB84(int **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 3);
  v3 = *(*a1 + 4);
  v5 = *v2 + *(v2 + 14);
  if (a2)
  {
    v6 = sub_1DD6F8CC0();
    v7(v6);
    sub_1DD6E8904();
    sub_1DD6E5ABC();
    sub_1DD8274CC();
    v8 = sub_1DD6E9594();
    v9(v8);
    sub_1DD825A74();
    v11 = (v5 + v10);
    v11->n128_u64[0] = 0;
    v11->n128_u64[1] = 0;
    sub_1DD825D94(v11, xmmword_1DD8890D0);
    v12 = sub_1DD705564();
    v13(v12);
  }

  else
  {
    sub_1DD6E8904();
    sub_1DD6E5ABC();
    v14 = sub_1DD6F4498();
    v15(v14);
    sub_1DD825A74();
    v17 = (v5 + v16);
    v17->n128_u64[0] = 0;
    v17->n128_u64[1] = 0;
    sub_1DD825D94(v17, xmmword_1DD8890D0);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1DD7EECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DD6EE78C();
  v4(v3);
  sub_1DD8275C4();
  return sub_1DD7FFEA0();
}

uint64_t ParameterConfirmation.attributedValue.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterConfirmation(v0);
  return sub_1DD6DDF9C();
}

uint64_t ParameterConfirmation.ancestorValue.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterConfirmation(v0);
  return sub_1DD6DDF9C();
}

uint64_t ParameterConfirmation.itemDescription.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterConfirmation(v0);
  return sub_1DD6DDF9C();
}

uint64_t ParameterConfirmation.propertyIdForItemDescription.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterConfirmation(v0);
  return sub_1DD6DDF9C();
}

void ParameterConfirmation.init(parameterId:parameterIndex:attributedValue:ancestorValue:)()
{
  sub_1DD6DEB38();
  v5 = v4;
  v6 = sub_1DD6FC2A8();
  v7 = type metadata accessor for ParameterConfirmation(v6);
  sub_1DD874FA0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v8, v9, v10, v11);
  v12 = (v3 + *(v7 + 32));
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + *(v7 + 36));
  *v13 = 0;
  v13[1] = 0;
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = v0;
  *(v3 + 24) = v5 & 1;
  sub_1DD6DEAF4();
  sub_1DD6E59B8();
  sub_1DD807414();
  sub_1DD6DFED0();
}

void ParameterConfirmation.init(parameterId:parameterIndex:item:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  sub_1DD8257B8();
  v6 = v5;
  v7 = type metadata accessor for ParameterConfirmation(0);
  v8 = sub_1DD874FA0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v9, v10, v11, v8);
  sub_1DD826754(*(v7 + 32));
  sub_1DD826754(*(v7 + 36));
  *v6 = v2;
  *(v6 + 8) = v1;
  *(v6 + 16) = v0;
  *(v6 + 24) = v4 & 1;
  sub_1DD6E0540();
  v12 = sub_1DD6E21D0();
  v13(v12);
  sub_1DD825A74();
  sub_1DD6F448C(v14);
  sub_1DD825D94(v15, xmmword_1DD8890D0);
  sub_1DD6DFED0();
}

void ParameterConfirmation.init(parameterId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD827764();
  sub_1DD824C64();
  *(v8 + 16) = 0;
  *(v7 + 24) = 1;
  v9 = type metadata accessor for ParameterConfirmation(0);
  v10 = sub_1DD874FA0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v11, v12, v13, v10);
  v14 = (v7 + *(v9 + 32));
  *v14 = 0;
  v14[1] = 0;
  v15 = (v7 + *(v9 + 36));
  *v15 = 0;
  v15[1] = 0;
  *v7 = v6;
  *(v7 + 8) = v5;
  sub_1DD6E0540();
  v16 = sub_1DD6E21D0();
  v17(v16);
  sub_1DD825A74();
  sub_1DD6F448C(v18);
  sub_1DD825D94(v19, xmmword_1DD8890D0);
  sub_1DD827720();
}

void ParameterConfirmation.init(parameterId:item:itemDescription:propertyIdForItemDescription:)()
{
  sub_1DD6FF8A8();
  v21 = v2;
  v22 = v3;
  v5 = v4;
  v7 = v6;
  sub_1DD82758C();
  v9 = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  v10 = type metadata accessor for ParameterConfirmation(0);
  sub_1DD874FA0();
  sub_1DD825300();
  sub_1DD6E5E68(v11, v12, v13, v14);
  v15 = (v9 + *(v10 + 32));
  v16 = (v9 + *(v10 + 36));
  *v9 = v1;
  v9[1] = v0;
  sub_1DD6E0540();
  v17 = sub_1DD6DDEDC();
  v18(v17);
  sub_1DD825A74();
  sub_1DD826754(v19);
  sub_1DD825D94(v20, xmmword_1DD8890D0);
  *v15 = v7;
  v15[1] = v5;
  *v16 = v21;
  v16[1] = v22;
  sub_1DD6E58C4();
}

uint64_t sub_1DD7EF21C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEE007865646E4972;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7475626972747461 && a2 == 0xEF65756C61566465;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F747365636E61 && a2 == 0xED000065756C6156;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x637365446D657469 && a2 == 0xEF6E6F6974706972;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001CLL && 0x80000001DD8B7450 == a2)
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

unint64_t sub_1DD7EF430(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0x726F747365636E61;
      break;
    case 4:
      result = 0x637365446D657469;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7EF518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EF21C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7EF540(uint64_t a1)
{
  v2 = sub_1DD807460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EF57C(uint64_t a1)
{
  v2 = sub_1DD807460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterConfirmation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  sub_1DD710A9C(&qword_1ECD13200, &qword_1DD88A5F0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v18 = sub_1DD807460();
  sub_1DD6E1808(&type metadata for ParameterConfirmation.CodingKeys, v19, v18);
  sub_1DD705FD8();
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v16)
  {
    sub_1DD8250C8();
    sub_1DD705DBC();
    sub_1DD875950();
    v20 = type metadata accessor for ParameterConfirmation(0);
    sub_1DD6E0FF8();
    type metadata accessor for AttributedValue(0);
    sub_1DD826250();
    sub_1DD6E1E84(v21);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    sub_1DD6E6174();
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v22);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    sub_1DD6F8CE0(*(v20 + 32));
    sub_1DD82636C();
    sub_1DD705DBC();
    sub_1DD875920();
    sub_1DD6F8CE0(*(v20 + 36));
    sub_1DD8267FC();
    sub_1DD705DBC();
    sub_1DD875920();
  }

  v23 = sub_1DD6EFFB4();
  v24(v23);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void ParameterConfirmation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  v23 = v22;
  v50 = v24;
  v25 = sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
  sub_1DD6DEA10(v25);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E9924(v27, v50);
  type metadata accessor for AttributedValue(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD824734();
  sub_1DD710A9C(&qword_1ECD13218, &qword_1DD88A5F8);
  sub_1DD6DDEAC();
  v51 = v30;
  v52 = v29;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DEBA0();
  type metadata accessor for ParameterConfirmation(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD702A64();
  v53 = v33;
  v34 = *(v33 + 28);
  v35 = sub_1DD874FA0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v36, v37, v38, v35);
  sub_1DD824794();
  sub_1DD807460();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (v19)
  {
    sub_1DD6E1EC8(v23);
    sub_1DD824154(v21 + v34, &qword_1ECD121B8);
  }

  else
  {
    sub_1DD825188();
    *v21 = sub_1DD875870();
    *(v21 + 8) = v39;
    sub_1DD824CE8();
    *(v21 + 16) = sub_1DD875850();
    *(v21 + 24) = v40 & 1;
    sub_1DD6E0FF8();
    sub_1DD826250();
    sub_1DD6E1E84(v41);
    sub_1DD827008();
    sub_1DD8758D0();
    sub_1DD6DEAF4();
    sub_1DD6E59B8();
    sub_1DD6E6174();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v42);
    sub_1DD826E4C();
    sub_1DD6E710C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD82636C();
    v43 = sub_1DD875820();
    v44 = (v21 + *(v53 + 32));
    *v44 = v43;
    v44[1] = v45;
    sub_1DD8267FC();
    v46 = sub_1DD875820();
    v54 = v47;
    v48 = v46;
    v49 = (v21 + *(v53 + 36));
    (*(v51 + 8))(v20, v52);
    *v49 = v48;
    v49[1] = v54;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v23);
    sub_1DD82579C();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t ParameterDisambiguation.parameterId.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void ParameterDisambiguation.items.getter()
{
  sub_1DD6DEB38();
  v1 = type metadata accessor for AttributedValue(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1DD6ED3C0();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD824734();
  v4 = *(v0 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_1DD827134();
    v6 = v15;
    sub_1DD6E17FC();
    sub_1DD826FC0();
    do
    {
      sub_1DD825C74();
      sub_1DD6E5870();
      v7 = sub_1DD6E40D8();
      v8(v7);
      sub_1DD6E8904();
      sub_1DD6E5ABC();
      sub_1DD8273FC();
      if (v10)
      {
        sub_1DD76C51C(v9 > 1, v2, 1);
        v6 = v15;
      }

      *(v6 + 16) = v2;
      sub_1DD825744();
      v12 = sub_1DD826AF0(v11);
      v13(v12);
      v4 += v14;
      --v5;
    }

    while (v5);
  }

  sub_1DD6DFED0();
}

void ParameterDisambiguation.items.setter()
{
  sub_1DD6DEB38();
  v4 = v3;
  v16 = type metadata accessor for AttributedValue(0);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E2220();
  v6 = *(v4 + 16);
  if (v6)
  {
    v15 = v0;
    sub_1DD8264BC(MEMORY[0x1E69E7CC0]);
    v7 = v18;
    sub_1DD874FA0();
    sub_1DD6DE1C4();
    v17 = *(v8 + 16);
    v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    v11 = v16;
    do
    {
      v12 = sub_1DD8257C8();
      v17(v12);
      sub_1DD824F9C((v1 + *(v11 + 20)));
      sub_1DD827678();
      if (v14)
      {
        sub_1DD826584(v13);
        v11 = v16;
        v7 = v18;
      }

      *(v7 + 16) = v2;
      sub_1DD6E17FC();
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v9 += v10;
      --v6;
    }

    while (v6);

    v0 = v15;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 32) = v7;
  sub_1DD6DFED0();
}

void (*ParameterDisambiguation.items.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  ParameterDisambiguation.items.getter();
  *a1 = v3;
  return sub_1DD7F00E0;
}

void sub_1DD7F00E0(uint64_t a1, char a2)
{
  if (a2)
  {

    ParameterDisambiguation.items.setter();
  }

  else
  {
    ParameterDisambiguation.items.setter();
  }
}

uint64_t ParameterDisambiguation.attributedValues.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ParameterDisambiguation.itemDescriptions.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ParameterDisambiguation.propertyIdForItemDescriptions.setter()
{
  sub_1DD6DE304();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ParameterDisambiguation.init(parameterId:parameterIndex:attributedValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  return result;
}

void ParameterDisambiguation.init(parameterId:parameterIndex:items:)()
{
  sub_1DD6DEB38();
  v6 = v5;
  v8 = v7;
  sub_1DD8257B8();
  v9 = sub_1DD6E0A5C();
  v22 = type metadata accessor for AttributedValue(v9);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E6200();
  v11 = *(v6 + 16);
  if (v11)
  {
    v20 = v2;
    v21 = v1;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DD76C574(0, v11, 0);
    sub_1DD874FA0();
    sub_1DD6DE1C4();
    v13 = *(v12 + 16);
    v14 = v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v12 + 72);
    do
    {
      v16 = sub_1DD6FAA70();
      v13(v16);
      sub_1DD824F9C((v4 + *(v22 + 20)));
      v18 = *(v23 + 16);
      v17 = *(v23 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = sub_1DD705C8C(v17);
        sub_1DD76C574(v19, v18 + 1, 1);
      }

      *(v23 + 16) = v18 + 1;
      sub_1DD825744();
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v14 += v15;
      --v11;
    }

    while (v11);

    v1 = v21;
    v2 = v20;
  }

  else
  {
  }

  *v0 = v3;
  v0[1] = v2;
  v0[2] = v1;
  sub_1DD827664(v8 & 1);
  sub_1DD6DFED0();
}

void ParameterDisambiguation.init(parameterId:items:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DD6E0A5C();
  type metadata accessor for AttributedValue(v8);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v10 = *(v3 + 16);
  if (v10)
  {
    v19 = v5;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DD76C574(0, v10, 0);
    v20 = sub_1DD874FA0();
    sub_1DD6DE1C4();
    v12 = *(v11 + 16);
    v13 = v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    do
    {
      v12(v1, v13, v20);
      sub_1DD8275F4();
      sub_1DD824F9C(v15);
      v17 = *(v21 + 16);
      v16 = *(v21 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = sub_1DD705C8C(v16);
        sub_1DD76C574(v18, v17 + 1, 1);
      }

      *(v21 + 16) = v17 + 1;
      sub_1DD825744();
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v13 += v14;
      --v10;
    }

    while (v10);

    v5 = v19;
  }

  else
  {
  }

  *v0 = v7;
  v0[1] = v5;
  v0[2] = 0;
  sub_1DD827664(1);
  sub_1DD6DFED0();
}

void ParameterDisambiguation.init(parameterId:items:itemDescriptions:propertyIdForItemDescription:)()
{
  sub_1DD6DEB38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v31 = type metadata accessor for AttributedValue(0);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6ED3C0();
  v16 = *(v8 + 16);
  if (v16)
  {
    v27 = v12;
    v28 = v10;
    v29 = v6;
    v30 = v2;
    v32 = MEMORY[0x1E69E7CC0];
    v17 = v8;
    sub_1DD76C574(0, v16, 0);
    v18 = v32;
    sub_1DD874FA0();
    sub_1DD6DE1C4();
    v20 = *(v19 + 16);
    v21 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v22 = *(v19 + 72);
    do
    {
      v23 = sub_1DD825C04();
      v20(v23);
      sub_1DD824F9C((v0 + *(v31 + 20)));
      v25 = *(v32 + 16);
      v24 = *(v32 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = sub_1DD705C8C(v24);
        sub_1DD76C574(v26, v25 + 1, 1);
      }

      *(v32 + 16) = v25 + 1;
      sub_1DD825744();
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v21 += v22;
      --v16;
    }

    while (v16);

    v2 = v30;
    v6 = v29;
    v12 = v27;
    v10 = v28;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *v14 = v12;
  *(v14 + 8) = v10;
  *(v14 + 16) = 0;
  *(v14 + 24) = 1;
  *(v14 + 32) = v18;
  *(v14 + 40) = v6;
  *(v14 + 48) = v4;
  *(v14 + 56) = v2;
  sub_1DD6DFED0();
}

uint64_t sub_1DD7F07F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEE007865646E4972;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001DD8B7470 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DD8B7490 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B74B0 == a2)
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

unint64_t sub_1DD7F09A4(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7F0A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F07F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F0A80(uint64_t a1)
{
  v2 = sub_1DD8074B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F0ABC(uint64_t a1)
{
  v2 = sub_1DD8074B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD13228, &qword_1DD88A600);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD826A64();
  sub_1DD6E6C94(v2);
  sub_1DD8074B4();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD6DDEDC();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD701464();
    sub_1DD6DE334();
    sub_1DD875950();
    sub_1DD705DE4();
    sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
    sub_1DD807508();
    sub_1DD825BAC();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD824C1C(&qword_1EE015DC0);
    sub_1DD825BAC();
    sub_1DD6FF6E0();
    sub_1DD875960();
    sub_1DD6E594C();
    sub_1DD6DE334();
    sub_1DD875920();
  }

  v5 = sub_1DD825B08();
  v6(v5, v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ParameterDisambiguation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v28 = v27;
  v29 = sub_1DD710A9C(&qword_1ECD13248, &qword_1DD88A610);
  sub_1DD6DDEAC();
  v31 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6E7258();
  sub_1DD824D14(v24);
  sub_1DD8074B4();
  sub_1DD825968();
  sub_1DD826F60();
  sub_1DD875B90();
  if (v25)
  {
    sub_1DD6E1EC8(v24);
  }

  else
  {
    sub_1DD825ACC();
    v33 = sub_1DD875870();
    v46 = v34;
    LOBYTE(v51[0]) = 1;
    sub_1DD825ACC();
    v35 = sub_1DD875850();
    v57 = v36 & 1;
    sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
    sub_1DD8075BC();
    sub_1DD825198();
    sub_1DD825ACC();
    sub_1DD8758D0();
    v45 = v51[0];
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    LOBYTE(v47) = 3;
    sub_1DD6FF744(&qword_1EE015DB8, MEMORY[0x1E69E6190]);
    sub_1DD825198();
    sub_1DD825ACC();
    sub_1DD875860();
    v44 = v35;
    v37 = v51[0];
    sub_1DD6E70D8();
    sub_1DD825ACC();
    v38 = sub_1DD875820();
    v39 = v26;
    v41 = v40;
    (*(v31 + 8))(v39, v29);
    *&v47 = v33;
    *(&v47 + 1) = v46;
    *&v48 = v44;
    BYTE8(v48) = v57;
    *&v49 = v51[0];
    *(&v49 + 1) = v51[0];
    *&v50 = v38;
    *(&v50 + 1) = v41;
    v42 = v50;
    v28[2] = v49;
    v28[3] = v42;
    v43 = v48;
    *v28 = v47;
    v28[1] = v43;
    sub_1DD807670(&v47, v51);
    sub_1DD6E1EC8(v24);
    v51[0] = v33;
    v51[1] = v46;
    v51[2] = v44;
    v52 = v57;
    v53 = v45;
    v54 = v37;
    v55 = v38;
    v56 = v41;
    sub_1DD80040C(v51);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void ValueDisambiguation.items.getter()
{
  sub_1DD6DEB38();
  v1 = type metadata accessor for AttributedValue(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1DD6ED3C0();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD824734();
  v4 = *v0;
  v5 = *(*v0 + 16);
  if (v5)
  {
    sub_1DD827134();
    v6 = v15;
    sub_1DD6E17FC();
    sub_1DD826FC0();
    do
    {
      sub_1DD825C74();
      sub_1DD6E5870();
      v7 = sub_1DD6E40D8();
      v8(v7);
      sub_1DD6E8904();
      sub_1DD6E5ABC();
      sub_1DD8273FC();
      if (v10)
      {
        sub_1DD76C51C(v9 > 1, v2, 1);
        v6 = v15;
      }

      *(v6 + 16) = v2;
      sub_1DD825744();
      v12 = sub_1DD826AF0(v11);
      v13(v12);
      v4 += v14;
      --v5;
    }

    while (v5);
  }

  sub_1DD6DFED0();
}

void ValueDisambiguation.items.setter()
{
  sub_1DD6DEB38();
  v4 = v3;
  v16 = type metadata accessor for AttributedValue(0);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E2220();

  v6 = *(v4 + 16);
  if (v6)
  {
    v15 = v0;
    sub_1DD8264BC(MEMORY[0x1E69E7CC0]);
    v7 = v18;
    sub_1DD874FA0();
    sub_1DD6DE1C4();
    v17 = *(v8 + 16);
    v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    v11 = v16;
    do
    {
      v12 = sub_1DD8257C8();
      v17(v12);
      sub_1DD824F9C((v1 + *(v11 + 20)));
      sub_1DD827678();
      if (v14)
      {
        sub_1DD826584(v13);
        v11 = v16;
        v7 = v18;
      }

      *(v7 + 16) = v2;
      sub_1DD6E17FC();
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v9 += v10;
      --v6;
    }

    while (v6);

    v0 = v15;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *v0 = v7;
  sub_1DD6DFED0();
}

void (*ValueDisambiguation.items.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  ValueDisambiguation.items.getter();
  *a1 = v3;
  return sub_1DD7F1454;
}

void sub_1DD7F1454(uint64_t a1, char a2)
{
  if (a2)
  {

    ValueDisambiguation.items.setter();
  }

  else
  {
    ValueDisambiguation.items.setter();
  }
}

IntelligenceFlow::ValueDisambiguation __swiftcall ValueDisambiguation.init(items:)(Swift::OpaquePointer items)
{
  sub_1DD6DEB38();
  v4 = v3;
  v5 = sub_1DD6E0A5C();
  v18 = type metadata accessor for AttributedValue(v5);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E2220();
  v7 = *(v4 + 16);
  if (v7)
  {
    v17 = v1;
    sub_1DD8264BC(MEMORY[0x1E69E7CC0]);
    v8 = v19;
    sub_1DD874FA0();
    sub_1DD6DE1C4();
    v10 = *(v9 + 16);
    v11 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    do
    {
      v13 = sub_1DD8257C8();
      v10(v13);
      sub_1DD824F9C((v2 + *(v18 + 20)));
      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DD826584(v14);
      }

      *(v19 + 16) = v15 + 1;
      sub_1DD825744();
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v11 += v12;
      --v7;
    }

    while (v7);

    v1 = v17;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *v1 = v8;
  sub_1DD6DFED0();
  return result;
}

uint64_t sub_1DD7F1658(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD8B7470 == a2)
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

uint64_t sub_1DD7F16F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F1658(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7F1724(uint64_t a1)
{
  v2 = sub_1DD8076A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F1760(uint64_t a1)
{
  v2 = sub_1DD8076A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ValueDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD13258, &qword_1DD88A618);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE340();
  sub_1DD6E6C94(v1);
  sub_1DD8076A8();

  sub_1DD8256E0();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
  sub_1DD807508();
  sub_1DD8262B0();
  sub_1DD824BEC();
  sub_1DD8759D0();
  sub_1DD827394();

  v3 = sub_1DD6E40D8();
  v4(v3);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void ValueDisambiguation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v23 = v22;
  sub_1DD710A9C(&qword_1ECD13268, &qword_1DD88A620);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD8076A8();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v21)
  {
    sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
    sub_1DD8075BC();
    sub_1DD825118();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v25 = sub_1DD6DDEDC();
    v26(v25);
    *v23 = a10;
  }

  sub_1DD6E1EC8(v20);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t ParameterNotAllowed.value.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterNotAllowed(v0);
  return sub_1DD6DDF9C();
}

uint64_t ParameterNotAllowed.reason.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for ParameterNotAllowed(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t ParameterNotAllowed.reason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ParameterNotAllowed(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t ParameterNotAllowed.reason.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterNotAllowed(v0);
  return sub_1DD6DDF9C();
}

IntelligenceFlow::ParameterNotAllowed::Reason_optional __swiftcall ParameterNotAllowed.Reason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD7F1BA8@<X0>(uint64_t *a1@<X8>)
{
  result = ParameterNotAllowed.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ParameterNotAllowed.init(parameterId:value:)(uint64_t a1)
{
  sub_1DD824C64();
  v5 = type metadata accessor for ParameterNotAllowed(0);
  *(v4 + *(v5 + 24)) = 0;
  *v4 = v3;
  v4[1] = v2;
  v6 = *(v5 + 20);
  sub_1DD874FA0();
  sub_1DD6DF448();
  v8 = *(v7 + 32);

  return v8(v4 + v6, v1);
}

uint64_t ParameterNotAllowed.init(parameterId:value:reason:)(uint64_t a1)
{
  sub_1DD824C64();
  v6 = *v5;
  v7 = type metadata accessor for ParameterNotAllowed(0);
  v8 = *(v7 + 24);
  *(v4 + v8) = 0;
  *v4 = v3;
  v4[1] = v2;
  v9 = *(v7 + 20);
  sub_1DD874FA0();
  sub_1DD6DF448();
  result = (*(v10 + 32))(v4 + v9, v1);
  *(v4 + v8) = v6;
  return result;
}

uint64_t sub_1DD7F1D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
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

uint64_t sub_1DD7F1E88(char a1)
{
  if (!a1)
  {
    return 0x6574656D61726170;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x6E6F73616572;
}

uint64_t sub_1DD7F1EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F1D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F1F10(uint64_t a1)
{
  v2 = sub_1DD8076FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F1F4C(uint64_t a1)
{
  v2 = sub_1DD8076FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNotAllowed.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD13270, &qword_1DD88A628);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v18 = sub_1DD8076FC();
  sub_1DD6E1808(&type metadata for ParameterNotAllowed.CodingKeys, v19, v18);
  sub_1DD705FD8();
  sub_1DD824BDC();
  sub_1DD875970();
  if (!v16)
  {
    type metadata accessor for ParameterNotAllowed(0);
    sub_1DD82553C();
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v20);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD8263D0();
    sub_1DD807750();
    sub_1DD824DE8();
    sub_1DD8759D0();
  }

  v21 = sub_1DD6EFFB4();
  v22(v21);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ParameterNotAllowed.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1DD6DED2C();
  v24 = v23;
  sub_1DD826914(v25);
  v41 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v39 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DDEE8();
  v40 = v28;
  sub_1DD710A9C(&qword_1ECD13288, &qword_1DD88A630);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1DD6E27D4();
  v31 = type metadata accessor for ParameterNotAllowed(v30);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v34 = *(v33 + 24);
  *(v22 + v34) = 0;
  sub_1DD824CF8(v24);
  sub_1DD8076FC();
  sub_1DD8259BC();
  sub_1DD826A7C();
  sub_1DD875B90();
  if (v21)
  {
    sub_1DD6E1EC8(v24);
  }

  else
  {
    sub_1DD8259A4();
    *v22 = sub_1DD875870();
    v22[1] = v35;
    sub_1DD6DEC54();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v36);
    sub_1DD705C1C();
    sub_1DD8758D0();
    (*(v39 + 32))(v22 + *(v31 + 20), v40, v41);
    sub_1DD8263D0();
    sub_1DD8077A4();
    sub_1DD8758D0();
    v37 = sub_1DD826444();
    v38(v37);
    *(v22 + v34) = HIBYTE(a11);
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v24);
    sub_1DD826B48();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t ParameterCandidatesNotFound.value.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ParameterCandidatesNotFound(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7F252C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a3(0);
  sub_1DD874FA0();
  sub_1DD6DF448();
  v4 = sub_1DD6E26D8();

  return v5(v4);
}

uint64_t sub_1DD7F25A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD7F266C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1DD7F26B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F25A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F26D8(uint64_t a1)
{
  v2 = sub_1DD8077F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F2714(uint64_t a1)
{
  v2 = sub_1DD8077F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterCandidatesNotFound.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD13298, &qword_1DD88A638);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD8077F8();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD705FD8();
  sub_1DD825620();
  sub_1DD875970();
  if (!v16)
  {
    type metadata accessor for ParameterCandidatesNotFound(0);
    sub_1DD6DEC54();
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v18);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v19 = sub_1DD825168();
  v20(v19);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ParameterCandidatesNotFound.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  v15 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v14 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E6200();
  sub_1DD710A9C(&qword_1ECD132A8, &qword_1DD88A640);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD6E27D4();
  type metadata accessor for ParameterCandidatesNotFound(v8);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD702A64();
  sub_1DD824D14(v0);
  sub_1DD8077F8();
  sub_1DD8259BC();
  sub_1DD8268F0();
  sub_1DD875B90();
  if (v3)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6FAB58();
    *v2 = sub_1DD875870();
    v2[1] = v10;
    sub_1DD6DEC54();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v11);
    sub_1DD826808();
    sub_1DD6FAB58();
    sub_1DD8758D0();
    v12 = sub_1DD7051D8();
    v13(v12);
    (*(v14 + 32))(v2 + *(v1 + 20), v4, v15);
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F2B80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B74D0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD7F2C4C(char a1)
{
  if (a1)
  {
    return 0x736C6F6F74;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DD7F2C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F2B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F2CB4(uint64_t a1)
{
  v2 = sub_1DD80784C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F2CF0(uint64_t a1)
{
  v2 = sub_1DD80784C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD132B0, &qword_1DD88A648);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD826A64();
  v2 = sub_1DD8267D8();
  sub_1DD6E7320(v2);
  sub_1DD80784C();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875920();
  if (!v0)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD132C0, &qword_1DD88A650);
    sub_1DD8078A0();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v3 = sub_1DD6DE58C();
  v4(v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ToolDisambiguation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD132D8, &qword_1DD88A658);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v3 = sub_1DD80784C();
  sub_1DD6ED2A4(&type metadata for ToolDisambiguation.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875820();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD132C0, &qword_1DD88A650);
    sub_1DD82552C();
    sub_1DD807954();
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

uint64_t AppIntentsInvocationPreview.parameters.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t AppIntentsInvocationPreview.Parameter.key.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppIntentsInvocationPreview.Parameter.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1DD718FA4(v2, v3, v4);
}

uint64_t AppIntentsInvocationPreview.Parameter.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1DD718FB0(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

__n128 AppIntentsInvocationPreview.Parameter.init(key:value:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t _s16IntelligenceFlow14MessagePayloadO11SpeechQueryV9CandidateV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD7F3188(uint64_t a1)
{
  v2 = sub_1DD807A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F31C4(uint64_t a1)
{
  v2 = sub_1DD807A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.Value.StringValue.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD132F0, &qword_1DD88A660);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD807A08();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F3350()
{
  sub_1DD705CF0();
  if (v2 == 0x65756C6176 && v1 == 0xE500000000000000)
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

uint64_t sub_1DD7F33B4(uint64_t a1)
{
  v2 = sub_1DD807A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F33F0(uint64_t a1)
{
  v2 = sub_1DD807A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.Value.ArrayValue.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD13308, &qword_1DD88A670);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE340();
  sub_1DD6E6C94(v1);
  sub_1DD807A5C();

  sub_1DD8256E0();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD13318, &qword_1DD88A678);
  sub_1DD807AB0();
  sub_1DD8262B0();
  sub_1DD824BEC();
  sub_1DD8759D0();
  sub_1DD827394();

  v3 = sub_1DD6E40D8();
  v4(v3);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.Parameter.Value.ArrayValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v23 = v22;
  sub_1DD710A9C(&qword_1ECD13330, &qword_1DD88A680);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD807A5C();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v21)
  {
    sub_1DD710A9C(&qword_1ECD13318, &qword_1DD88A678);
    sub_1DD807B88();
    sub_1DD825118();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v25 = sub_1DD6DDEDC();
    v26(v25);
    *v23 = a10;
  }

  sub_1DD6E1EC8(v20);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t static AppIntentsInvocationPreview.Parameter.Value.== infix(_:_:)()
{
  sub_1DD827600();
  if (v5)
  {
    if (v4)
    {
      v6 = sub_1DD6E0C60();
      sub_1DD718FA4(v6, v7, 1);
      v8 = sub_1DD6E21D0();
      sub_1DD718FA4(v8, v9, 1);
      v10 = sub_1DD6E0C60();
      sub_1DD718FA4(v10, v11, 1);
      v12 = sub_1DD6E21D0();
      sub_1DD718FA4(v12, v13, 1);
      v14 = sub_1DD705564();
      v16 = sub_1DD714590(v14, v15);
      v17 = sub_1DD6E21D0();
      sub_1DD718FB0(v17, v18, 1);
      v19 = sub_1DD6E0C60();
      sub_1DD718FB0(v19, v20, 1);
      v21 = sub_1DD6E0C60();
      sub_1DD718FB0(v21, v22, 1);
      v23 = sub_1DD6E21D0();
      sub_1DD718FB0(v23, v24, 1);
      return v16 & 1;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    v26 = sub_1DD6E0C60();
    sub_1DD718FA4(v26, v27, v4);
    v28 = sub_1DD6E21D0();
    sub_1DD718FA4(v28, v29, v5);
    v30 = sub_1DD6E21D0();
    sub_1DD718FB0(v30, v31, v5);
    v32 = sub_1DD6E0C60();
    sub_1DD718FB0(v32, v33, v4);
    return 0;
  }

  if (v1 == v3 && v0 == v2)
  {
    sub_1DD718FA4(v1, v0, 0);
    v46 = sub_1DD6DE464();
    sub_1DD718FA4(v46, v47, v48);
    v49 = sub_1DD6DE464();
    sub_1DD718FB0(v49, v50, v51);
    v52 = sub_1DD6DE464();
    sub_1DD718FB0(v52, v53, v54);
    return 1;
  }

  v35 = sub_1DD7013BC(v1, v0);
  v36 = sub_1DD6E0C60();
  sub_1DD718FA4(v36, v37, 0);
  v38 = sub_1DD6DE464();
  sub_1DD718FA4(v38, v39, v40);
  v41 = sub_1DD6DE464();
  sub_1DD718FB0(v41, v42, v43);
  v44 = sub_1DD6E0C60();
  sub_1DD718FB0(v44, v45, 0);
  result = 0;
  if (v35)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1DD7F3800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD7F38C0(char a1)
{
  if (a1)
  {
    return 0x7961727261;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_1DD7F38F0(uint64_t a1)
{
  v2 = sub_1DD807CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F392C(uint64_t a1)
{
  v2 = sub_1DD807CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F3970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F3800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F3998(uint64_t a1)
{
  v2 = sub_1DD807C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F39D4(uint64_t a1)
{
  v2 = sub_1DD807C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F3A10(uint64_t a1)
{
  v2 = sub_1DD807D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F3A4C(uint64_t a1)
{
  v2 = sub_1DD807D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.Value.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD13348, &qword_1DD88A688);
  sub_1DD6DDEAC();
  v17 = v3;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD13350, &qword_1DD88A690);
  sub_1DD6DDEAC();
  v16 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD13358, &qword_1DD88A698);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v18 = *v0;
  v15 = v0[1];
  v8 = *(v0 + 16);
  sub_1DD825500(v2);
  sub_1DD807C60();
  sub_1DD6E4218();
  sub_1DD875BB0();
  if (v8)
  {
    sub_1DD826820();
    sub_1DD807CB4();
    sub_1DD6FF0F0();
    sub_1DD875910();
    v19[0] = v18;
    sub_1DD807D08();
    v9 = v17;
    sub_1DD8759D0();
    v10 = sub_1DD705C68();
  }

  else
  {
    sub_1DD807D5C();
    sub_1DD6FF0F0();
    sub_1DD875910();
    v19[0] = v18;
    v19[1] = v15;
    sub_1DD807DB0();
    v9 = v16;
    sub_1DD826DD4(v19, v12, v16, &type metadata for AppIntentsInvocationPreview.Parameter.Value.StringValue);
    v10 = sub_1DD825068();
  }

  v11(v10, v9);
  v13 = sub_1DD6E60FC();
  v14(v13);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.Parameter.Value.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  v50 = v13;
  sub_1DD710A9C(&qword_1ECD13388, &qword_1DD88A6A0);
  sub_1DD6DDEAC();
  v49 = v14;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD13390, &qword_1DD88A6A8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD13398, &qword_1DD88A6B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEBA0();
  sub_1DD824D14(v12);
  sub_1DD807C60();
  sub_1DD6E4218();
  sub_1DD826F60();
  sub_1DD875B90();
  if (!a10)
  {
    v53 = v12;
    sub_1DD826378();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B24();
    if (!v18)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v25 == v26)
      {
        __break(1u);
        return;
      }

      v27 = *(v24 + v23);
      sub_1DD77E6E4(v19, v20, v21, v22, v23);
      v28 = sub_1DD6ED830();
      v30 = v29;
      v32 = v31;
      swift_unknownObjectRelease();
      v11 = v28;
      if (v30 == v32 >> 1)
      {
        v33 = v27;
        if (v27)
        {
          sub_1DD826820();
          sub_1DD807CB4();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD807E04();
          sub_1DD8256A4();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v39 = sub_1DD6E4290();
          v40(v39, v49);
          v41 = sub_1DD770D98();
          v42(v41);
          v43 = 0;
          v44 = v51;
          v33 = v27;
        }

        else
        {
          LOBYTE(v51) = 0;
          sub_1DD807D5C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD807E58();
          sub_1DD826238();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v45 = sub_1DD6DEBBC();
          v46(v45, v10);
          v47 = sub_1DD770D98();
          v48(v47);
          v44 = v51;
          v43 = v52;
        }

        *v50 = v44;
        *(v50 + 8) = v43;
        *(v50 + 16) = v33;
        sub_1DD6E1EC8(v53);
        goto LABEL_11;
      }
    }

    v34 = sub_1DD875740();
    sub_1DD6E41BC(v34, MEMORY[0x1E69E6B28]);
    sub_1DD82702C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v11 = &type metadata for AppIntentsInvocationPreview.Parameter.Value;
    sub_1DD826378();
    v35 = sub_1DD875810();
    sub_1DD6DF100(v35);
    sub_1DD6E0540();
    (*(v36 + 104))(v11);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = sub_1DD6E37A0();
    v38(v37);
    v12 = v53;
  }

  sub_1DD6E1EC8(v12);
LABEL_11:
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t static AppIntentsInvocationPreview.Parameter.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 32);
  v5 = *(v2 + 32);
  v6 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v6 || (v7 = 0, (sub_1DD875A30() & 1) != 0))
  {
    v8 = sub_1DD6DDEFC();
    sub_1DD718FA4(v8, v9, v4);
    v10 = sub_1DD7029A8();
    sub_1DD718FA4(v10, v11, v5);
    v7 = static AppIntentsInvocationPreview.Parameter.Value.== infix(_:_:)();
    v12 = sub_1DD7029A8();
    sub_1DD718FB0(v12, v13, v5);
    v14 = sub_1DD6DDEFC();
    sub_1DD718FB0(v14, v15, v4);
  }

  return v7 & 1;
}

uint64_t sub_1DD7F42C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD7F4388(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1DD7F43BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F42C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F43E4(uint64_t a1)
{
  v2 = sub_1DD807EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F4420(uint64_t a1)
{
  v2 = sub_1DD807EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.Parameter.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD133B0, &qword_1DD88A6B8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  sub_1DD6FE770(v3);
  sub_1DD807EAC();
  sub_1DD6E17D8();
  sub_1DD8267F0();
  sub_1DD875BB0();
  sub_1DD705C50();
  sub_1DD825668();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD718FA4(v5, v6, v7);
    sub_1DD807B34();
    sub_1DD826748();
    sub_1DD6E5334();
    sub_1DD8759D0();
    sub_1DD718FB0(v11, v10, v12);
  }

  v8 = sub_1DD6DEA04();
  v9(v8);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.Parameter.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD133C0, &qword_1DD88A6C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v6 = sub_1DD807EAC();
  sub_1DD6ED2A4(&type metadata for AppIntentsInvocationPreview.Parameter.CodingKeys, v7, v6);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v14) = 0;
    sub_1DD825108();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD807C0C();
    sub_1DD6E40F8();
    sub_1DD82499C();
    sub_1DD8758D0();
    v8 = sub_1DD6DFF30();
    v9(v8);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v14;
    *(v2 + 24) = v15;
    *(v2 + 32) = v16;

    v10 = sub_1DD700D0C();
    sub_1DD718FA4(v10, v11, v16);
    sub_1DD826950();

    v12 = sub_1DD700D0C();
    sub_1DD718FB0(v12, v13, v16);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void static AppIntentsInvocationPreview.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1DD875A30() & 1) != 0)
  {
    v9 = v4 == v6 && v5 == v7;
    if (v9 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
    {
      sub_1DD6DDEFC();

      sub_1DD71435C();
    }
  }
}

uint64_t sub_1DD7F4818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_1DD7F492C(char a1)
{
  if (!a1)
  {
    return 0x6449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x746E65746E69;
  }

  return 0x6574656D61726170;
}

uint64_t sub_1DD7F498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F4818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F49B4(uint64_t a1)
{
  v2 = sub_1DD807F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F49F0(uint64_t a1)
{
  v2 = sub_1DD807F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIntentsInvocationPreview.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD133C8, &qword_1DD88A6C8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6FE770(v2);
  sub_1DD807F00();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD8250C8();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD710A9C(&qword_1ECD133D8, &qword_1DD88A6D0);
    sub_1DD807F54();
    sub_1DD826298();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
  }

  v4 = sub_1DD6EEDBC();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void AppIntentsInvocationPreview.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v22 = v21;
  sub_1DD710A9C(&qword_1ECD133F0, &qword_1DD88A6D8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v24 = sub_1DD807F00();
  sub_1DD6FC48C(&type metadata for AppIntentsInvocationPreview.CodingKeys, v25, v24);
  if (v20)
  {
    sub_1DD6E1EC8(v19);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6F178C();
    v26 = sub_1DD875870();
    v33 = v27;
    sub_1DD824CE8();
    sub_1DD6F178C();
    v31 = sub_1DD875870();
    v32 = v28;
    sub_1DD710A9C(&qword_1ECD133D8, &qword_1DD88A6D0);
    sub_1DD6E0FF8();
    sub_1DD80802C();
    sub_1DD8758D0();
    v29 = sub_1DD825098();
    v30(v29);
    *v22 = v26;
    v22[1] = v33;
    v22[2] = v31;
    v22[3] = v32;
    v22[4] = v34;

    sub_1DD824F80();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t PlannerPromptData.onScreenContext.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PlannerPromptData.availableTools.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PlannerPromptData.OnScreenContextValue.type.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for PlannerPromptData.OnScreenContextValue(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t PlannerPromptData.OnScreenContextValue.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PlannerPromptData.OnScreenContextValue(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t PlannerPromptData.OnScreenContextValue.type.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for PlannerPromptData.OnScreenContextValue(v0);
  return sub_1DD6DDF9C();
}

uint64_t PlannerPromptData.OnScreenContextValue.init(value:type:)()
{
  sub_1DD826938();
  v2 = *v1;
  sub_1DD874FA0();
  sub_1DD6DF448();
  v3 = sub_1DD6E21D0();
  v4(v3);
  result = type metadata accessor for PlannerPromptData.OnScreenContextValue(0);
  *(v0 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_1DD7F4F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417375636F466E69 && a2 == 0xEA00000000007070;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657263536E6FLL && a2 == 0xEE006E6F73726550;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000001DD8B74F0 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001DD8B7510 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x80000001DD8B7530 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001DD8B7550 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000016 && 0x80000001DD8B7570 == a2)
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

unint64_t sub_1DD7F51D4(char a1)
{
  result = 0x417375636F466E69;
  switch(a1)
  {
    case 1:
      result = 0x6E65657263536E6FLL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7F52DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F4F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F5304(uint64_t a1)
{
  v2 = sub_1DD808124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5340(uint64_t a1)
{
  v2 = sub_1DD808124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F537C(uint64_t a1)
{
  v2 = sub_1DD808370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F53B8(uint64_t a1)
{
  v2 = sub_1DD808370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F53F4(uint64_t a1)
{
  v2 = sub_1DD808274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5430(uint64_t a1)
{
  v2 = sub_1DD808274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F546C(uint64_t a1)
{
  v2 = sub_1DD808220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F54A8(uint64_t a1)
{
  v2 = sub_1DD808220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F54E4(uint64_t a1)
{
  v2 = sub_1DD8081CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5520(uint64_t a1)
{
  v2 = sub_1DD8081CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F555C(uint64_t a1)
{
  v2 = sub_1DD8082C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5598(uint64_t a1)
{
  v2 = sub_1DD8082C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F55D4(uint64_t a1)
{
  v2 = sub_1DD808178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5610(uint64_t a1)
{
  v2 = sub_1DD808178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F564C(uint64_t a1)
{
  v2 = sub_1DD80831C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F5688(uint64_t a1)
{
  v2 = sub_1DD80831C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.OnScreenContextValue.ContextType.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v0;
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD13408, &qword_1DD88A6E0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82486C(v6, v29);
  sub_1DD710A9C(&qword_1ECD13410, &qword_1DD88A6E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD824A4C(v8, v30);
  sub_1DD710A9C(&qword_1ECD13418, &qword_1DD88A6F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824C9C(v10, v31);
  sub_1DD710A9C(&qword_1ECD13420, &qword_1DD88A6F8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD824934(v12, v32);
  sub_1DD710A9C(&qword_1ECD13428, &qword_1DD88A700);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD824A38(v14, v33);
  sub_1DD710A9C(&qword_1ECD13430, &qword_1DD88A708);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD13438, &qword_1DD88A710);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBA0();
  v34 = sub_1DD710A9C(&qword_1ECD13440, &qword_1DD88A718);
  sub_1DD6DDEAC();
  v18 = v17;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6E7258();
  v20 = *v2;
  sub_1DD824D14(v4);
  sub_1DD808124();
  sub_1DD7039CC();
  sub_1DD826F60();
  sub_1DD875BB0();
  switch(v20)
  {
    case 1:
      sub_1DD80831C();
      v26 = v34;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 2:
      sub_1DD8082C8();
      v26 = v34;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 3:
      sub_1DD6E6174();
      sub_1DD808274();
      v26 = v34;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 4:
      sub_1DD808220();
      v26 = v34;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 5:
      sub_1DD8081CC();
      v26 = v34;
      sub_1DD8250E8();
      sub_1DD875910();
      goto LABEL_9;
    case 6:
      sub_1DD6FFDDC();
      sub_1DD808178();
      v26 = v34;
      sub_1DD8250E8();
      sub_1DD875910();
LABEL_9:
      v27 = sub_1DD6DED98();
      v28(v27);
      v25 = *(v18 + 8);
      v23 = v1;
      v24 = v26;
      break;
    default:
      sub_1DD808370();
      sub_1DD6FF0F0();
      sub_1DD875910();
      v21 = sub_1DD6FE110();
      v22(v21);
      v23 = sub_1DD825B84();
      break;
  }

  v25(v23, v24);
  sub_1DD6E0C78();
}

void PlannerPromptData.OnScreenContextValue.ContextType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1DD6DED2C();
  sub_1DD705C5C();
  v103 = v28;
  sub_1DD710A9C(&qword_1ECD13488, &qword_1DD88A720);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD82480C(v30, v96);
  sub_1DD710A9C(&qword_1ECD13490, &qword_1DD88A728);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E5D10(v32, v97);
  v102 = sub_1DD710A9C(&qword_1ECD13498, &qword_1DD88A730);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6FF92C(v34, v98);
  sub_1DD710A9C(&qword_1ECD134A0, &qword_1DD88A738);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD824A4C(v36, v99);
  sub_1DD710A9C(&qword_1ECD134A8, &qword_1DD88A740);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD82486C(v38, v100);
  sub_1DD710A9C(&qword_1ECD134B0, &qword_1DD88A748);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E17C8();
  v40 = sub_1DD710A9C(&qword_1ECD134B8, &qword_1DD88A750);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6E9560();
  sub_1DD710A9C(&qword_1ECD134C0, &qword_1DD88A758);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6E7258();
  v43 = v27[3];
  sub_1DD824CF8(v27);
  sub_1DD808124();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875B90();
  if (!v104)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD827758();
    if (!v44)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v51 == v52)
      {
        __break(1u);
        return;
      }

      v101 = *(v50 + v49);
      sub_1DD826C40(v45, v46, v47, v48, v49);
      sub_1DD6ED830();
      sub_1DD6E0194();
      v54 = v53;
      swift_unknownObjectRelease();
      if (v43 == (v54 >> 1))
      {
        switch(v101)
        {
          case 1:
            sub_1DD80831C();
            sub_1DD8269BC();
            sub_1DD824848();
            sub_1DD82705C(v80, v81, v82, v83);
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_1DD8082C8();
            sub_1DD824848();
            sub_1DD82705C(v72, v73, v74, v75);
            swift_unknownObjectRelease();
            v59 = sub_1DD6ED80C();
            break;
          case 3:
            sub_1DD6E6174();
            sub_1DD808274();
            sub_1DD824848();
            sub_1DD82705C(v76, v77, v78, v79);
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 4:
            sub_1DD808220();
            sub_1DD824848();
            sub_1DD82705C(v68, v69, v70, v71);
            swift_unknownObjectRelease();
            v59 = sub_1DD825950();
            v61 = v102;
            break;
          case 5:
            sub_1DD8081CC();
            sub_1DD826808();
            sub_1DD824848();
            sub_1DD82705C(v84, v85, v86, v87);
            swift_unknownObjectRelease();
            v59 = sub_1DD6E4290();
            break;
          case 6:
            sub_1DD6FFDDC();
            sub_1DD808178();
            sub_1DD824848();
            sub_1DD82705C(v88, v89, v90, v91);
            swift_unknownObjectRelease();
LABEL_17:
            v59 = sub_1DD825950();
            break;
          default:
            sub_1DD808370();
            sub_1DD8269BC();
            sub_1DD824848();
            sub_1DD82705C(v55, v56, v57, v58);
            swift_unknownObjectRelease();
            v59 = sub_1DD825950();
            v61 = v40;
            break;
        }

        v60(v59, v61);
        v92 = sub_1DD825570();
        v93(v92);
        sub_1DD826EA0();
        *v103 = v94;
        sub_1DD6E1EC8(v95);
        goto LABEL_10;
      }
    }

    v62 = sub_1DD875740();
    sub_1DD6E41BC(v62, MEMORY[0x1E69E6B28]);
    sub_1DD827740();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v43 = &type metadata for PlannerPromptData.OnScreenContextValue.ContextType;
    v63 = sub_1DD875810();
    sub_1DD6DF100(v63);
    sub_1DD824B14();
    v64 = sub_1DD6FEB10();
    v65(v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v66 = sub_1DD826680();
    v67(v66);
  }

  sub_1DD6E1EC8(v27);
LABEL_10:
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

BOOL static PlannerPromptData.OnScreenContextValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PlannerPromptData.OnScreenContextValue(0);
  sub_1DD826CC0();
  return v0 != 0;
}

uint64_t sub_1DD7F6400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1DD7F64C4(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD7F64F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F6400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F6520(uint64_t a1)
{
  v2 = sub_1DD8083C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F655C(uint64_t a1)
{
  v2 = sub_1DD8083C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.OnScreenContextValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD134C8, &qword_1DD88A760);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v18 = sub_1DD8083C4();
  sub_1DD6E1808(&type metadata for PlannerPromptData.OnScreenContextValue.CodingKeys, v19, v18);
  sub_1DD825C8C();
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v20);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v16)
  {
    type metadata accessor for PlannerPromptData.OnScreenContextValue(0);
    sub_1DD6E4104();
    sub_1DD808418();
    sub_1DD824DE8();
    sub_1DD8759D0();
  }

  v21 = sub_1DD6EFFB4();
  v22(v21);
  sub_1DD825790();
  sub_1DD826CF4();
}

void PlannerPromptData.OnScreenContextValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  sub_1DD874FA0();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E535C();
  sub_1DD710A9C(&qword_1ECD134E0, &qword_1DD88A768);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1DD700BA4();
  v18 = type metadata accessor for PlannerPromptData.OnScreenContextValue(v17);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6E2220();
  sub_1DD6FE8B0(v12);
  sub_1DD8083C4();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v14)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD6E05D4();
    sub_1DD6E1E84(v20);
    sub_1DD6F9A4C();
    sub_1DD82668C();
    sub_1DD827074(v21, v22, v23, v24, v25);
    sub_1DD826578();
    v26 = sub_1DD825B84();
    v27(v26);
    sub_1DD6E4104();
    sub_1DD80846C();
    sub_1DD6FE82C();
    sub_1DD8758D0();
    v28 = sub_1DD6FAE08();
    v29(v28);
    *(v13 + *(v18 + 20)) = a12;
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v12);
    sub_1DD8259EC();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t PlannerPromptData.Tool.definition.getter()
{
  sub_1DD6FAAAC();
  sub_1DD82471C();
  return sub_1DD6E5870();
}

uint64_t sub_1DD7F6AFC(uint64_t a1)
{
  v2 = sub_1DD8084E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F6B38(uint64_t a1)
{
  v2 = sub_1DD8084E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.ToolDefinition.encode(to:)(uint64_t a1)
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  sub_1DD710A9C(&qword_1ECD134F0, &qword_1DD88A770);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  v2 = sub_1DD8084E0();
  sub_1DD825588(&type metadata for PlannerPromptData.Tool.Definition.ToolDefinition.CodingKeys, v3, v2);
  sub_1DD874F10();
  sub_1DD6DE350();
  v5 = sub_1DD6E1E84(v4);
  sub_1DD6E71A4(v5, v6);
  v7 = sub_1DD6ED4B8();
  v8(v7);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void PlannerPromptData.Tool.Definition.ToolDefinition.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  sub_1DD874F10();
  sub_1DD6E125C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  sub_1DD826760(v4);
  sub_1DD710A9C(&qword_1ECD13508, &qword_1DD88A778);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD6E27D4();
  v7 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(v6);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E6200();
  sub_1DD824CF8(v0);
  sub_1DD8084E0();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD6DE350();
    v10 = sub_1DD6E1E84(v9);
    sub_1DD6E49DC(v10, v11);
    v12 = sub_1DD6F3238();
    v13(v12);
    v14 = sub_1DD6E891C();
    v15(v14);
    sub_1DD824F48();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F6F08(uint64_t a1)
{
  v2 = sub_1DD808554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F6F44(uint64_t a1)
{
  v2 = sub_1DD808554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.ClientAction.encode(to:)(uint64_t a1)
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  sub_1DD710A9C(&qword_1ECD13510, &qword_1DD88A780);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  v2 = sub_1DD808554();
  sub_1DD825588(&type metadata for PlannerPromptData.Tool.Definition.ClientAction.CodingKeys, v3, v2);
  sub_1DD874F10();
  sub_1DD6DE350();
  v5 = sub_1DD6E1E84(v4);
  sub_1DD6E71A4(v5, v6);
  v7 = sub_1DD6ED4B8();
  v8(v7);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void PlannerPromptData.Tool.Definition.ClientAction.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  sub_1DD874F10();
  sub_1DD6E125C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  sub_1DD826760(v4);
  sub_1DD710A9C(&qword_1ECD13520, &qword_1DD88A788);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD6E27D4();
  v7 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(v6);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E6200();
  sub_1DD824CF8(v0);
  sub_1DD808554();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD6DE350();
    v10 = sub_1DD6E1E84(v9);
    sub_1DD6E49DC(v10, v11);
    v12 = sub_1DD6F3238();
    v13(v12);
    v14 = sub_1DD6E891C();
    v15(v14);
    sub_1DD6F8C1C();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F72CC()
{
  v0 = sub_1DD6F9E24();
  v1(v0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6E21D0();

  return v3(v2);
}

uint64_t sub_1DD7F7330()
{
  sub_1DD705CF0();
  if (v2 == 0x696669746E656469 && v1 == 0xEA00000000007265)
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

uint64_t sub_1DD7F73A0(uint64_t a1)
{
  v2 = sub_1DD8085C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F73DC(uint64_t a1)
{
  v2 = sub_1DD8085C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.AssistantSchema.encode(to:)(uint64_t a1)
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  sub_1DD710A9C(&qword_1ECD13528, &qword_1DD88A790);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  v2 = sub_1DD8085C8();
  sub_1DD825588(&type metadata for PlannerPromptData.Tool.Definition.AssistantSchema.CodingKeys, v3, v2);
  sub_1DD875050();
  sub_1DD824F30();
  v5 = sub_1DD6E1E84(v4);
  sub_1DD6E71A4(v5, v6);
  v7 = sub_1DD6ED4B8();
  v8(v7);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

uint64_t sub_1DD7F755C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = sub_1DD6E0C60();
  sub_1DD6E1E84(v2);
  sub_1DD6EFF74();

  return sub_1DD8750C0();
}

uint64_t sub_1DD7F7614(uint64_t a1)
{
  sub_1DD8257B8();
  sub_1DD6DEDA4();
  v1(0);
  v2 = sub_1DD6E0C60();
  sub_1DD6E1E84(v2);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.AssistantSchema.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  sub_1DD875050();
  sub_1DD6E125C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  sub_1DD826760(v4);
  sub_1DD710A9C(&qword_1ECD13548, &qword_1DD88A798);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD6E27D4();
  v7 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(v6);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E6200();
  sub_1DD824CF8(v0);
  sub_1DD8085C8();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD824F30();
    v10 = sub_1DD6E1E84(v9);
    sub_1DD6E49DC(v10, v11);
    v12 = sub_1DD6F3238();
    v13(v12);
    v14 = sub_1DD6E891C();
    v15(v14);
    sub_1DD824F18();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F7890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1DD875B20();
  a4(0);
  v5 = sub_1DD6E0C60();
  sub_1DD6E1E84(v5);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

double PlannerPromptData.Tool.Definition.UIControlTool.command.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 PlannerPromptData.Tool.Definition.UIControlTool.command.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

uint64_t sub_1DD7F7A70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_1DD6EE78C();
  v8 = *(v7(v6) + 24);
  a3(0);
  sub_1DD6DF448();
  v10 = *(v9 + 40);

  return v10(v3 + v8, v4);
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.toolDefinition.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(v0);
  return sub_1DD6DDF9C();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.init(appBundleIdentifier:command:toolDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  v7 = *(a3 + 3);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  sub_1DD874F10();
  sub_1DD6DF448();
  v8 = sub_1DD6E26D8();

  return v9(v8);
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.Command.identifier.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligenceFlow::PlannerPromptData::Tool::Definition::UIControlTool::Command __swiftcall PlannerPromptData.Tool.Definition.UIControlTool.Command.init(name:identifier:)(Swift::String name, Swift::String identifier)
{
  *v2 = name;
  v2[1] = identifier;
  result.identifier = identifier;
  result.name = name;
  return result;
}

uint64_t static PlannerPromptData.Tool.Definition.UIControlTool.Command.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1DD875A30(), result = sub_1DD6FE86C(), (v10 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      sub_1DD6E8090();

      return sub_1DD875A30();
    }
  }

  return result;
}

uint64_t sub_1DD7F7CD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_1DD7F7DA0(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD7F7DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F7CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F7E04(uint64_t a1)
{
  v2 = sub_1DD80865C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F7E40(uint64_t a1)
{
  v2 = sub_1DD80865C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.UIControlTool.Command.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD13558, &qword_1DD88A7A0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6FE770(v2);
  sub_1DD80865C();
  sub_1DD6E17D8();
  sub_1DD8267F0();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD8250C8();
    sub_1DD705DBC();
    sub_1DD875970();
  }

  v4 = sub_1DD6DE58C();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.Command.hash(into:)(uint64_t a1)
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD6E5F58();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.Command.hashValue.getter()
{
  v0 = sub_1DD6DEDA4();
  sub_1DD827170(v0);
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.UIControlTool.Command.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD13568, &qword_1DD88A7A8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v6 = sub_1DD80865C();
  sub_1DD6ED2A4(&type metadata for PlannerPromptData.Tool.Definition.UIControlTool.Command.CodingKeys, v7, v6);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD824CE8();
    sub_1DD825108();
    v8 = sub_1DD875870();
    v10 = v9;
    v13 = v8;
    v11 = sub_1DD6E5DB0();
    v12(v11);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v13;
    v2[3] = v10;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F81D0(uint64_t a1)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

uint64_t static PlannerPromptData.Tool.Definition.UIControlTool.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E1FC0(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[4];
  v7 = v2[5];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v10 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v6 != v8 || v7 != v9)
  {
    sub_1DD6E65D0();
    if ((sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  v12 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  sub_1DD8263A4(*(v12 + 24));

  return _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
}

uint64_t sub_1DD7F82F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B7590 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL)
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

uint64_t sub_1DD7F8418(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x646E616D6D6F63;
  }

  return 0x696665446C6F6F74;
}

uint64_t sub_1DD7F8488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F82F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F84B0(uint64_t a1)
{
  v2 = sub_1DD8086B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F84EC(uint64_t a1)
{
  v2 = sub_1DD8086B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.UIControlTool.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD13570, &qword_1DD88A7B0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD8086B0();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD825620();
  sub_1DD875970();
  if (!v12)
  {
    sub_1DD808704();
    sub_1DD6E5E30();

    sub_1DD7055A8();
    sub_1DD8759D0();

    type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
    sub_1DD826B30();
    sub_1DD874F10();
    sub_1DD6DE350();
    sub_1DD6E1E84(v14);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v15 = sub_1DD825168();
  v16(v15);
  sub_1DD825790();
  sub_1DD826CF4();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.hash(into:)(uint64_t a1)
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD6E5F58();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  sub_1DD874F10();
  sub_1DD6DE350();
  sub_1DD6E1E84(v1);
  sub_1DD6E5F58();
  return sub_1DD8750C0();
}

uint64_t PlannerPromptData.Tool.Definition.UIControlTool.hashValue.getter()
{
  sub_1DD6DEDA4();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v0 = _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD827170(v0);
  type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  sub_1DD874F10();
  sub_1DD6DE350();
  sub_1DD6E1E84(v1);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.UIControlTool.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v16 = sub_1DD874F10();
  sub_1DD6DDEAC();
  v15 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  sub_1DD710A9C(&qword_1ECD13588, &qword_1DD88A7B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD700BA4();
  v9 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(v8);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E2220();
  sub_1DD824D14(v4);
  sub_1DD8086B0();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v4);
  }

  else
  {
    LOBYTE(v17) = 0;
    *v1 = sub_1DD875870();
    *(v1 + 8) = v11;
    sub_1DD6FF8F4();
    sub_1DD808758();
    sub_1DD8275D0();
    sub_1DD8256A4();
    sub_1DD8758D0();
    *(v1 + 16) = v17;
    *(v1 + 32) = v18;
    *(v1 + 40) = v19;
    sub_1DD6DE350();
    sub_1DD6E1E84(v12);
    sub_1DD8758D0();
    v13 = sub_1DD6DFF24();
    v14(v13);
    (*(v15 + 32))(v1 + *(v9 + 24), v2, v16);
    sub_1DD700948();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v4);
    sub_1DD6FC290();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7F8B50(uint64_t a1)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD874F10();
  sub_1DD6E1E84(&unk_1ECD13500);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

void static PlannerPromptData.Tool.Definition.== infix(_:_:)()
{
  sub_1DD6DEB38();
  type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  v25 = v3;
  v4 = sub_1DD6E9A9C();
  v5 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(v4);
  v6 = sub_1DD6DEA10(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v7 = sub_1DD6E9A9C();
  v8 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(v7);
  v9 = sub_1DD6DEA10(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD702A64();
  v10 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
  v11 = sub_1DD6DEA10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD8247F4();
  type metadata accessor for PlannerPromptData.Tool.Definition(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE21C();
  sub_1DD825028();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6FF81C();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD825898();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DFF40();
  v16 = sub_1DD710A9C(&qword_1ECD13598, &qword_1DD88A7C0);
  sub_1DD6DEA10(v16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E17C8();
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD825980();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD82471C();
      sub_1DD6DDEFC();
      sub_1DD6E5870();
      if (sub_1DD8278C0() == 1)
      {
        sub_1DD6F8C1C();
        sub_1DD6E59B8();
        sub_1DD6ED180();
        _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
        sub_1DD6E5ABC();
        sub_1DD6E58E0();
        goto LABEL_32;
      }

      sub_1DD8261B4();
      goto LABEL_29;
    case 2u:
      sub_1DD82471C();
      sub_1DD6E5F58();
      sub_1DD6E5870();
      if (sub_1DD8278C0() != 2)
      {
        goto LABEL_29;
      }

      sub_1DD824F18();
      sub_1DD6E59B8();
      sub_1DD6FF97C();
      _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO15AssistantSchemaV2eeoiySbAI_AItFZ_0();
      sub_1DD6E5ABC();
      goto LABEL_32;
    case 3u:
      sub_1DD82471C();
      sub_1DD825974();
      sub_1DD6E5870();
      if (sub_1DD8278C0() != 3)
      {
        sub_1DD6FC290();
        goto LABEL_29;
      }

      sub_1DD6E59B8();
      v18 = *v1 == *v25 && v1[1] == v25[1];
      if (v18 || (sub_1DD875A30() & 1) != 0)
      {
        v19 = v1[4];
        v20 = v1[5];
        v21 = v25[4];
        v22 = v25[5];
        v23 = v1[2] == v25[2] && v1[3] == v25[3];
        if (v23 || (sub_1DD875A30() & 1) != 0)
        {
          v24 = v19 == v21 && v20 == v22;
          if (v24 || (sub_1DD6FF0E4(), (sub_1DD875A30() & 1) != 0))
          {
            _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
          }
        }
      }

      sub_1DD8261CC();
      sub_1DD6E5ABC();
      sub_1DD770D4C();
      sub_1DD6E5ABC();
      sub_1DD700698();
      break;
    default:
      sub_1DD82471C();
      sub_1DD825C04();
      sub_1DD6E5870();
      if (sub_1DD8278C0())
      {
        sub_1DD6FF720();
LABEL_29:
        sub_1DD6E5ABC();
        sub_1DD824154(v0, &qword_1ECD13598);
      }

      else
      {
        sub_1DD824F48();
        sub_1DD6E59B8();
        sub_1DD770D98();
        _s16IntelligenceFlow17PlannerPromptDataV4ToolV10DefinitionO0fG0V2eeoiySbAI_AItFZ_0();
        sub_1DD6E5ABC();
LABEL_32:
        sub_1DD6E5ABC();
        sub_1DD700698();
      }

      break;
  }

  sub_1DD6DFED0();
}

uint64_t sub_1DD7F90E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F72746E6F436975 && a2 == 0xE90000000000006CLL)
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

uint64_t sub_1DD7F9254(char a1)
{
  result = 1819242356;
  switch(a1)
  {
    case 1:
      result = 0x6341746E65696C63;
      break;
    case 2:
      result = 0x6E61747369737361;
      break;
    case 3:
      result = 0x6F72746E6F436975;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7F92E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7F934C(uint64_t a1)
{
  v2 = sub_1DD808854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9388(uint64_t a1)
{
  v2 = sub_1DD808854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F93C4(uint64_t a1)
{
  v2 = sub_1DD8088A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9400(uint64_t a1)
{
  v2 = sub_1DD8088A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F9444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F90E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F946C(uint64_t a1)
{
  v2 = sub_1DD8087AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F94A8(uint64_t a1)
{
  v2 = sub_1DD8087AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F94E4(uint64_t a1)
{
  v2 = sub_1DD8088FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9520(uint64_t a1)
{
  v2 = sub_1DD8088FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7F955C(uint64_t a1)
{
  v2 = sub_1DD808800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F9598(uint64_t a1)
{
  v2 = sub_1DD808800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.Definition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1DD6DED2C();
  v22 = v21;
  sub_1DD710A9C(&qword_1ECD135A0, &qword_1DD88A7C8);
  sub_1DD6DDEAC();
  v69 = v23;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6FF92C(v25, v60);
  v68 = type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDEE8();
  sub_1DD710A9C(&qword_1ECD135A8, &qword_1DD88A7D0);
  sub_1DD6DDEAC();
  v67 = v27;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD824948(v29, v61);
  v66 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DDEE8();
  sub_1DD710A9C(&qword_1ECD135B0, &qword_1DD88A7D8);
  sub_1DD6DDEAC();
  v65 = v31;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD824A38(v33, v62);
  v64 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6DDEE8();
  sub_1DD710A9C(&qword_1ECD135B8, &qword_1DD88A7E0);
  sub_1DD6DDEAC();
  v63 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6DDFE4();
  type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6ED3C0();
  type metadata accessor for PlannerPromptData.Tool.Definition(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6E6200();
  sub_1DD710A9C(&qword_1ECD135C0, &qword_1DD88A7E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6DE340();
  sub_1DD6FE770(v22);
  sub_1DD8087AC();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD82471C();
  sub_1DD6E5870();
  sub_1DD6DFF24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E59B8();
      sub_1DD6E4104();
      sub_1DD8088A8();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD826184();
      sub_1DD6E1E84(v55);
      v56 = sub_1DD6FAD44();
      sub_1DD827848(v56, v57, v65, v64);
      v58 = sub_1DD6E6AD4();
      v59(v58);
      goto LABEL_6;
    case 2u:
      sub_1DD6E59B8();
      sub_1DD82768C();
      sub_1DD808854();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD6F4D58();
      sub_1DD6E1E84(v45);
      v46 = sub_1DD6FAD44();
      sub_1DD827848(v46, v47, v67, v66);
      v48 = sub_1DD6E6AD4();
      v49(v48);
      goto LABEL_6;
    case 3u:
      sub_1DD6E59B8();
      sub_1DD7928CC();
      sub_1DD808800();
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD82619C();
      sub_1DD6E1E84(v50);
      v51 = sub_1DD6FAD44();
      sub_1DD827848(v51, v52, v69, v68);
      v53 = sub_1DD6E6AD4();
      v54(v53);
LABEL_6:
      sub_1DD6E5ABC();
      v43 = sub_1DD824A94();
      break;
    default:
      sub_1DD6E59B8();
      sub_1DD8088FC();
      sub_1DD8251A8();
      sub_1DD875910();
      sub_1DD7051E8();
      sub_1DD6E1E84(v40);
      sub_1DD8276C8();
      sub_1DD8759D0();
      v41 = sub_1DD705C68();
      v42(v41, v63);
      sub_1DD6FF720();
      sub_1DD6E5ABC();
      v43 = sub_1DD825148();
      break;
  }

  v44(v43);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void PlannerPromptData.Tool.Definition.hash(into:)()
{
  sub_1DD6DEB38();
  v0 = sub_1DD6DE290();
  type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(v0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DE4A8();
  v2 = sub_1DD826C10();
  v3 = type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(v2);
  v4 = sub_1DD6DEA10(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD824734();
  v5 = type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(0);
  v6 = sub_1DD6DEA10(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E2220();
  v7 = type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD702A64();
  type metadata accessor for PlannerPromptData.Tool.Definition(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  sub_1DD82471C();
  sub_1DD826680();
  sub_1DD6E5870();
  sub_1DD6E594C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6F8C1C();
      sub_1DD8256EC();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](1);
      sub_1DD874F10();
      sub_1DD6DE350();
      sub_1DD6E1E84(v13);
      sub_1DD6FE878();
      sub_1DD8750C0();
      sub_1DD8261B4();
      break;
    case 2u:
      sub_1DD824F18();
      sub_1DD825570();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](2);
      sub_1DD875050();
      sub_1DD824F30();
      sub_1DD6E1E84(v11);
      sub_1DD6FE878();
      sub_1DD8750C0();
      sub_1DD825C80();
      break;
    case 3u:
      sub_1DD825CEC();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](3);
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      sub_1DD6DDEFC();
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      sub_1DD874F10();
      sub_1DD6DE350();
      sub_1DD6E1E84(v12);
      sub_1DD825974();
      sub_1DD8750C0();
      sub_1DD6FC290();
      break;
    default:
      sub_1DD824F48();
      sub_1DD6E6384();
      sub_1DD6E59B8();
      MEMORY[0x1E12B5570](0);
      sub_1DD874F10();
      sub_1DD6DE350();
      sub_1DD6E1E84(v10);
      sub_1DD6FE878();
      sub_1DD8750C0();
      sub_1DD6FF720();
      break;
  }

  sub_1DD6E5ABC();
  sub_1DD6DFED0();
}

uint64_t PlannerPromptData.Tool.Definition.hashValue.getter()
{
  sub_1DD6DEDA4();
  PlannerPromptData.Tool.Definition.hash(into:)();
  return sub_1DD875B60();
}

void PlannerPromptData.Tool.Definition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD705C5C();
  sub_1DD710A9C(&qword_1ECD13610, &qword_1DD88A7F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E9924(v23, v78);
  sub_1DD710A9C(&qword_1ECD13618, &qword_1DD88A7F8);
  sub_1DD6DDEAC();
  v83 = v24;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6FF92C(v26, v79);
  sub_1DD710A9C(&qword_1ECD13620, &qword_1DD88A800);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD824A4C(v28, v80);
  sub_1DD710A9C(&qword_1ECD13628, &qword_1DD88A808);
  sub_1DD6DDEAC();
  v82 = v29;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD82495C(v31, v81);
  sub_1DD710A9C(&qword_1ECD13630, &qword_1DD88A810);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DEBA0();
  v84 = type metadata accessor for PlannerPromptData.Tool.Definition(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DE21C();
  sub_1DD824D78();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD8264E0();
  v85 = v20;
  sub_1DD824D14(v20);
  sub_1DD8087AC();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (!v86)
  {
    sub_1DD826378();
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826908();
    if (!v38)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      v47 = *(v44 + v43);
      sub_1DD6E988C(v39, v40, v41, v42, v43);
      v21 = sub_1DD6ED830();
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      if (v49 == v51 >> 1)
      {
        switch(v47)
        {
          case 1:
            sub_1DD6E4104();
            sub_1DD8088A8();
            sub_1DD824DB8();
            sub_1DD875800();
            type metadata accessor for PlannerPromptData.Tool.Definition.ClientAction(0);
            sub_1DD826184();
            sub_1DD6E1E84(v60);
            sub_1DD7039C0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v74 = sub_1DD825078();
            v75(v74);
            v76 = sub_1DD6E37A0();
            v77(v76);
            sub_1DD825980();
            swift_storeEnumTagMultiPayload();
            goto LABEL_14;
          case 2:
            sub_1DD82768C();
            sub_1DD808854();
            sub_1DD824DB8();
            sub_1DD875800();
            type metadata accessor for PlannerPromptData.Tool.Definition.AssistantSchema(0);
            sub_1DD6F4D58();
            sub_1DD6E1E84(v58);
            sub_1DD6F9BEC();
            sub_1DD826A88();
            sub_1DD8758D0();
            sub_1DD826C00();
            swift_unknownObjectRelease();
            v61 = sub_1DD6DEBBC();
            v62(v61, v83);
            v63 = sub_1DD770D98();
            v64(v63);
            sub_1DD826814();
            swift_storeEnumTagMultiPayload();
            goto LABEL_14;
          case 3:
            sub_1DD7928CC();
            sub_1DD808800();
            sub_1DD824DB8();
            sub_1DD875800();
            type metadata accessor for PlannerPromptData.Tool.Definition.UIControlTool(0);
            sub_1DD82619C();
            sub_1DD6E1E84(v59);
            sub_1DD8269B0();
            sub_1DD7039C0();
            sub_1DD8758D0();
            sub_1DD826C00();
            swift_unknownObjectRelease();
            v65 = sub_1DD825078();
            v66(v65);
            v67 = sub_1DD770D98();
            v68(v67);
            sub_1DD8259E0();
            swift_storeEnumTagMultiPayload();
LABEL_14:
            v73 = v85;
            break;
          default:
            sub_1DD8088FC();
            sub_1DD824DB8();
            sub_1DD875800();
            type metadata accessor for PlannerPromptData.Tool.Definition.ToolDefinition(0);
            sub_1DD7051E8();
            sub_1DD6E1E84(v52);
            sub_1DD826A88();
            sub_1DD8758D0();
            sub_1DD826C00();
            swift_unknownObjectRelease();
            v69 = sub_1DD6DEBBC();
            v70(v69, v82);
            v71 = sub_1DD770D98();
            v72(v71);
            sub_1DD825980();
            swift_storeEnumTagMultiPayload();
            v73 = v85;
            break;
        }

        sub_1DD6E59B8();
        sub_1DD6E59B8();
        sub_1DD6E1EC8(v73);
        goto LABEL_10;
      }
    }

    v53 = sub_1DD875740();
    sub_1DD6E41BC(v53, MEMORY[0x1E69E6B28]);
    sub_1DD827740();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v21 = v84;
    sub_1DD826378();
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v54 = sub_1DD6FEB10();
    v55(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = sub_1DD6E37A0();
    v57(v56);
  }

  sub_1DD6E1EC8(v85);
LABEL_10:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7FA878(uint64_t a1)
{
  sub_1DD875B20();
  PlannerPromptData.Tool.Definition.hash(into:)();
  return sub_1DD875B60();
}

uint64_t sub_1DD7FA8EC()
{
  sub_1DD705CF0();
  if (v2 == 0x6974696E69666564 && v1 == 0xEA00000000006E6FLL)
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

uint64_t sub_1DD7FA95C(uint64_t a1)
{
  v2 = sub_1DD808950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FA998(uint64_t a1)
{
  v2 = sub_1DD808950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.Tool.encode(to:)(uint64_t a1)
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  sub_1DD710A9C(&qword_1ECD13658, &qword_1DD88A818);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  v2 = sub_1DD808950();
  sub_1DD825588(&type metadata for PlannerPromptData.Tool.CodingKeys, v3, v2);
  type metadata accessor for PlannerPromptData.Tool.Definition(0);
  sub_1DD826154();
  v5 = sub_1DD6E1E84(v4);
  sub_1DD6E71A4(v5, v6);
  v7 = sub_1DD6ED4B8();
  v8(v7);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void PlannerPromptData.Tool.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  type metadata accessor for PlannerPromptData.Tool.Definition(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  sub_1DD826760(v3);
  v4 = sub_1DD710A9C(&qword_1ECD13670, &qword_1DD88A820);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DD6E27D4();
  v7 = type metadata accessor for PlannerPromptData.Tool(v6);
  v8 = sub_1DD6DEA10(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E6200();
  sub_1DD824CF8(v0);
  sub_1DD808950();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD826154();
    sub_1DD6E1E84(v9);
    sub_1DD826C90();
    sub_1DD6FAB58();
    sub_1DD8758D0();
    v10 = sub_1DD6ED80C();
    v11(v10, v4);
    sub_1DD701480();
    sub_1DD6E59B8();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

IntelligenceFlow::PlannerPromptData __swiftcall PlannerPromptData.init(onScreenContext:availableTools:)(Swift::OpaquePointer onScreenContext, Swift::OpaquePointer availableTools)
{
  v2->_rawValue = onScreenContext._rawValue;
  v2[1]._rawValue = availableTools._rawValue;
  result.availableTools = availableTools;
  result.onScreenContext = onScreenContext;
  return result;
}

uint64_t sub_1DD7FACE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65657263536E6FLL && a2 == 0xEF747865746E6F43;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xEE00736C6F6F5465)
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

uint64_t sub_1DD7FADBC(char a1)
{
  if (a1)
  {
    return 0x6C62616C69617661;
  }

  else
  {
    return 0x6E65657263536E6FLL;
  }
}

uint64_t sub_1DD7FAE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7FACE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7FAE3C(uint64_t a1)
{
  v2 = sub_1DD8089C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FAE78(uint64_t a1)
{
  v2 = sub_1DD8089C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlannerPromptData.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD13680, &qword_1DD88A828);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6E6C94(v2);
  sub_1DD8089C4();
  sub_1DD826F3C();

  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD13690, &qword_1DD88A830);
  sub_1DD808A18();
  sub_1DD825BAC();
  sub_1DD6E9630();
  sub_1DD8759D0();

  if (!v0)
  {
    sub_1DD82682C();
    sub_1DD710A9C(&qword_1ECD136A8, &qword_1DD88A838);
    sub_1DD808ACC();
    sub_1DD825BAC();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v4 = sub_1DD6DEA04();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void PlannerPromptData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD136C0, &qword_1DD88A840);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v14 = sub_1DD8089C4();
  sub_1DD6ED2A4(&type metadata for PlannerPromptData.CodingKeys, v15, v14);
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD13690, &qword_1DD88A830);
    sub_1DD808B80();
    sub_1DD6E9644();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD710A9C(&qword_1ECD136A8, &qword_1DD88A838);
    sub_1DD82682C();
    sub_1DD808C34();
    sub_1DD6E9644();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v16 = sub_1DD6DFF30();
    v17(v16);
    *v12 = a10;
    v12[1] = a10;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7FB218()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x64496C6F6F74 && v2 == 0xE600000000000000;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x6574656D61726170 && v0 == 0xEA00000000007372)
  {

    return 1;
  }

  else
  {
    sub_1DD824AA4();
    sub_1DD875A30();
    sub_1DD82698C();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7FB2C8(uint64_t a1)
{
  v2 = sub_1DD808CE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FB304(uint64_t a1)
{
  v2 = sub_1DD808CE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionResolutionUpdate.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD136E8, &qword_1DD88A848);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD826A64();
  v2 = sub_1DD8267D8();
  sub_1DD6E7320(v2);
  sub_1DD808CE8();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v3 = sub_1DD6DE58C();
  v4(v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void sub_1DD7FB4A0()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD825A04();
  v6 = sub_1DD825C68(v4, v5);
  sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  v9 = sub_1DD6E7320(v0);
  v3(v9);
  sub_1DD827014();
  sub_1DD827524();
  sub_1DD825680();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD82552C();
    sub_1DD7FD2FC();
    sub_1DD824B6C();
    sub_1DD8258B8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v10 = sub_1DD6DEA2C();
    v11(v10);
    sub_1DD8277B8();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7FB658()
{
  v0 = sub_1DD6DE290();
  v1(v0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6E21D0();

  return v3(v2);
}

uint64_t ActionExecutionOutcome.toolId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionExecutionOutcome(v0);
  return sub_1DD6DDF9C();
}

uint64_t ActionExecutionOutcome.outcome.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for ActionExecutionOutcome(v0);
  return sub_1DD6DDF9C();
}

void sub_1DD7FB808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD827764();
  v9 = v8;
  sub_1DD6FC2A8();
  sub_1DD874820();
  sub_1DD6DF448();
  v10 = sub_1DD6E5DB0();
  v11(v10);
  v12 = (v7 + *(v9(0) + 20));
  *v12 = v6;
  v12[1] = v5;
  sub_1DD6E59B8();
  sub_1DD827720();
}

uint64_t sub_1DD7FB898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
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

    else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1DD7FB9AC(char a1)
{
  if (!a1)
  {
    return 0x76456E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x64496C6F6F74;
  }

  return 0x656D6F6374756FLL;
}

uint64_t sub_1DD7FBA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7FB898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7FBA3C(uint64_t a1)
{
  v2 = sub_1DD808D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7FBA78(uint64_t a1)
{
  v2 = sub_1DD808D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionExecutionOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD13700, &qword_1DD88A858);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD808D3C();
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
    type metadata accessor for ActionExecutionOutcome(0);
    sub_1DD825AA8();
    sub_1DD824D48((v17 + v20));
    sub_1DD7055A8();
    sub_1DD875970();
    sub_1DD6E0FF8();
    type metadata accessor for StatementOutcome(0);
    sub_1DD6DE08C();
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

void ActionExecutionOutcome.init(from:)()
{
  sub_1DD6DED2C();
  v3 = sub_1DD82662C(v2);
  type metadata accessor for StatementOutcome(v3);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD824734();
  sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEE8();
  sub_1DD826244(v6);
  sub_1DD710A9C(&qword_1ECD13710, &qword_1DD88A860);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  type metadata accessor for ActionExecutionOutcome(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6ED3C0();
  sub_1DD6FE8B0(v1);
  sub_1DD808D3C();
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
    sub_1DD6DE08C();
    sub_1DD6E1E84(v18);
    sub_1DD827008();
    sub_1DD6E4968();
    sub_1DD8758D0();
    v19 = sub_1DD825780();
    v20(v19);
    sub_1DD6E0B14();
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

unint64_t sub_1DD7FBFA0()
{
  result = qword_1ECD10C38;
  if (!qword_1ECD10C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C38);
  }

  return result;
}

unint64_t sub_1DD7FBFF4()
{
  result = qword_1ECD10C40;
  if (!qword_1ECD10C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C40);
  }

  return result;
}

unint64_t sub_1DD7FC048()
{
  result = qword_1ECD10C50;
  if (!qword_1ECD10C50)
  {
    sub_1DD717E88(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD7FBFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C50);
  }

  return result;
}

unint64_t sub_1DD7FC0CC()
{
  result = qword_1ECD10C60;
  if (!qword_1ECD10C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C60);
  }

  return result;
}

unint64_t sub_1DD7FC120()
{
  result = qword_1ECD10C68;
  if (!qword_1ECD10C68)
  {
    sub_1DD717E88(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD7FC0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C68);
  }

  return result;
}

unint64_t sub_1DD7FC1A4()
{
  result = qword_1ECD10CA0;
  if (!qword_1ECD10CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CA0);
  }

  return result;
}

unint64_t sub_1DD7FC1F8()
{
  result = qword_1ECD10CA8;
  if (!qword_1ECD10CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CA8);
  }

  return result;
}

unint64_t sub_1DD7FC24C()
{
  result = qword_1ECD10CB0;
  if (!qword_1ECD10CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CB0);
  }

  return result;
}

unint64_t sub_1DD7FC2A0()
{
  result = qword_1ECD10CB8;
  if (!qword_1ECD10CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CB8);
  }

  return result;
}

unint64_t sub_1DD7FC2F4()
{
  result = qword_1ECD10CC0;
  if (!qword_1ECD10CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CC0);
  }

  return result;
}

unint64_t sub_1DD7FC348()
{
  result = qword_1ECD10CC8;
  if (!qword_1ECD10CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10CC8);
  }

  return result;
}

void sub_1DD7FC39C(int64_t a1)
{
  v71 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v6 = &v55 - v5;
  v68 = sub_1DD874FA0();
  v7 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD710A9C(&qword_1ECD151C8, &qword_1DD8A70A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v16;
  v18 = *(a1 + 16);
  v19 = *(*v1 + 16);
  if (__OFADD__(v19, v18))
  {
    __break(1u);
    goto LABEL_10;
  }

  v67 = v14;
  v70 = v6;
  sub_1DD864BA4(v19 + v18, 1);
  v2 = *v1;
  v6 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v20 = *(v4 + 72);
  v21 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  v69 = v20;
  sub_1DD84ED74();
  if (v22 < v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v22)
  {
    v25 = *(v2 + 16);
    v26 = __OFADD__(v25, v22);
    v27 = v25 + v22;
    if (v26)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v27;
  }

  if (v22 != v21)
  {
    sub_1DD82414C(v73);
LABEL_8:
    *v1 = v2;
    return;
  }

LABEL_11:
  v66 = *(v2 + 16);
  v23 = v74;
  v61 = v73;
  v62 = v7;
  v24 = v75;
  a1 = v76;
  v58 = v74;
  v56 = v6;
  v55 = v75;
  if (v77)
  {
    v28 = (v77 - 1) & v77;
    v29 = __clz(__rbit64(v77)) | (v76 << 6);
    v57 = (v75 + 64) >> 6;
LABEL_19:
    v7 = v62;
    v32 = *(v61 + 56);
    v33 = (*(v61 + 48) + 16 * v29);
    v34 = *v33;
    v65 = v33[1];
    v35 = v72;
    v36 = v68;
    (*(v62 + 16))(v72, v32 + *(v62 + 72) * v29, v68, v15);
    v37 = v71;
    v38 = *(v71 + 48);
    *v17 = v34;
    v39 = v37;
    *(v17 + 1) = v65;
    (*(v7 + 32))(&v17[v38], v35, v36);
    sub_1DD6E5E68(v17, 0, 1, v39);

LABEL_20:
    v59 = v7 + 32;
    v60 = v7 + 16;
    v40 = v66;
    while (2)
    {
      sub_1DD700E60();
      if (sub_1DD6E5ED0(v67, 1, v39) != 1)
      {
        sub_1DD824154(v67, &qword_1ECD151C8);
        v41 = *(v2 + 24);
        v64 = v41 >> 1;
        if ((v41 >> 1) < v40 + 1)
        {
          sub_1DD784A68(v41 > 1, v40 + 1, 1, v2);
          v2 = v54;
          v64 = *(v54 + 24) >> 1;
        }

        v63 = &v56[v2];
        while (1)
        {
          sub_1DD700E60();
          if (sub_1DD6E5ED0(v11, 1, v39) == 1)
          {
            break;
          }

          v42 = v70;
          sub_1DD6E3A64();
          v43 = v62;
          if (v40 >= v64)
          {
            sub_1DD824154(v42, &qword_1ECD0FA80);
            v39 = v71;
            goto LABEL_39;
          }

          sub_1DD824154(v17, &qword_1ECD151C8);
          sub_1DD6E3A64();
          v66 = v40 + 1;
          if (!v28)
          {
            v39 = v71;
            while (1)
            {
              v44 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
                break;
              }

              if (v44 >= v57)
              {
                sub_1DD6E5E68(v17, 1, 1, v71);
                v28 = 0;
                goto LABEL_35;
              }

              v28 = *(v58 + 8 * v44);
              ++a1;
              if (v28)
              {
                a1 = v44;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v44 = a1;
LABEL_34:
          v45 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v46 = v45 | (v44 << 6);
          v47 = *(v61 + 56);
          v48 = (*(v61 + 48) + 16 * v46);
          v49 = v48[1];
          v65 = *v48;
          v50 = v68;
          (*(v43 + 16))(v72, v47 + *(v43 + 72) * v46, v68);
          v52 = v71;
          v51 = v72;
          v53 = *(v71 + 48);
          *v17 = v65;
          *(v17 + 1) = v49;
          (*(v43 + 32))(&v17[v53], v51, v50);
          sub_1DD6E5E68(v17, 0, 1, v52);
          v39 = v52;

LABEL_35:
          v40 = v66;
        }

        sub_1DD824154(v11, &qword_1ECD151C8);
LABEL_39:
        *(v2 + 16) = v40;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1DD824154(v17, &qword_1ECD151C8);
    sub_1DD82414C(v61);
    sub_1DD824154(v67, &qword_1ECD151C8);
    goto LABEL_8;
  }

LABEL_14:
  v57 = (v24 + 64) >> 6;
  while (1)
  {
    v30 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      break;
    }

    if (v30 >= ((v24 + 64) >> 6))
    {
      v39 = v71;
      sub_1DD6E5E68(v17, 1, 1, v71);
      v28 = 0;
      goto LABEL_20;
    }

    v31 = *(v23 + 8 * v30);
    ++a1;
    if (v31)
    {
      v28 = (v31 - 1) & v31;
      v29 = __clz(__rbit64(v31)) | (v30 << 6);
      a1 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
}

unint64_t sub_1DD7FCA58()
{
  result = qword_1ECD10D08;
  if (!qword_1ECD10D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D08);
  }

  return result;
}

unint64_t sub_1DD7FCAAC()
{
  result = qword_1ECD10D10;
  if (!qword_1ECD10D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D10);
  }

  return result;
}

unint64_t sub_1DD7FCB00()
{
  result = qword_1ECD10D20;
  if (!qword_1ECD10D20)
  {
    sub_1DD717E88(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD7FCB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D20);
  }

  return result;
}

unint64_t sub_1DD7FCB84()
{
  result = qword_1ECD10D28;
  if (!qword_1ECD10D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D28);
  }

  return result;
}

unint64_t sub_1DD7FCBD8()
{
  result = qword_1ECD10D38;
  if (!qword_1ECD10D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D38);
  }

  return result;
}

unint64_t sub_1DD7FCC2C()
{
  result = qword_1ECD10D40;
  if (!qword_1ECD10D40)
  {
    sub_1DD717E88(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD7FCCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D40);
  }

  return result;
}

unint64_t sub_1DD7FCCB0()
{
  result = qword_1ECD10D48;
  if (!qword_1ECD10D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D48);
  }

  return result;
}

unint64_t sub_1DD7FCD24()
{
  result = qword_1ECD10D70;
  if (!qword_1ECD10D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D70);
  }

  return result;
}

unint64_t sub_1DD7FCD78()
{
  result = qword_1ECD10D78;
  if (!qword_1ECD10D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D78);
  }

  return result;
}

unint64_t sub_1DD7FCDCC()
{
  result = qword_1ECD10D90;
  if (!qword_1ECD10D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10D90);
  }

  return result;
}

unint64_t sub_1DD7FCE20()
{
  result = qword_1ECD10DA8;
  if (!qword_1ECD10DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DA8);
  }

  return result;
}

unint64_t sub_1DD7FCE74()
{
  result = qword_1ECD10DB8;
  if (!qword_1ECD10DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DB8);
  }

  return result;
}

unint64_t sub_1DD7FCEC8()
{
  result = qword_1ECD10DD8;
  if (!qword_1ECD10DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DD8);
  }

  return result;
}

unint64_t sub_1DD7FCF1C()
{
  result = qword_1ECD10DE0;
  if (!qword_1ECD10DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DE0);
  }

  return result;
}

unint64_t sub_1DD7FCF70()
{
  result = qword_1ECD10DE8;
  if (!qword_1ECD10DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DE8);
  }

  return result;
}

unint64_t sub_1DD7FCFC4()
{
  result = qword_1ECD10DF0;
  if (!qword_1ECD10DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DF0);
  }

  return result;
}

unint64_t sub_1DD7FD018()
{
  result = qword_1ECD10DF8;
  if (!qword_1ECD10DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10DF8);
  }

  return result;
}

unint64_t sub_1DD7FD06C()
{
  result = qword_1ECD10E18;
  if (!qword_1ECD10E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E18);
  }

  return result;
}

unint64_t sub_1DD7FD0C0()
{
  result = qword_1ECD10E20;
  if (!qword_1ECD10E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E20);
  }

  return result;
}

unint64_t sub_1DD7FD144()
{
  result = qword_1ECD10E50;
  if (!qword_1ECD10E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E50);
  }

  return result;
}

unint64_t sub_1DD7FD198()
{
  result = qword_1ECD10E60;
  if (!qword_1ECD10E60)
  {
    sub_1DD717E88(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD6E1E84(&unk_1EE015E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E60);
  }

  return result;
}

unint64_t sub_1DD7FD254()
{
  result = qword_1ECD10E68;
  if (!qword_1ECD10E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E68);
  }

  return result;
}

unint64_t sub_1DD7FD2A8()
{
  result = qword_1ECD10E70;
  if (!qword_1ECD10E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E70);
  }

  return result;
}

unint64_t sub_1DD7FD2FC()
{
  result = qword_1ECD10E80;
  if (!qword_1ECD10E80)
  {
    sub_1DD717E88(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD6E1E84(&unk_1EE015E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E80);
  }

  return result;
}

unint64_t sub_1DD7FD3B8()
{
  result = qword_1ECD10E88;
  if (!qword_1ECD10E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E88);
  }

  return result;
}

unint64_t sub_1DD7FD40C()
{
  result = qword_1ECD10E90;
  if (!qword_1ECD10E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10E90);
  }

  return result;
}

unint64_t sub_1DD7FD460()
{
  result = qword_1ECD10EA0;
  if (!qword_1ECD10EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EA0);
  }

  return result;
}

unint64_t sub_1DD7FD4B4()
{
  result = qword_1ECD10EC0;
  if (!qword_1ECD10EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EC0);
  }

  return result;
}

unint64_t sub_1DD7FD508()
{
  result = qword_1ECD10ED8;
  if (!qword_1ECD10ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10ED8);
  }

  return result;
}

unint64_t sub_1DD7FD55C()
{
  result = qword_1ECD10EE0;
  if (!qword_1ECD10EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EE0);
  }

  return result;
}

unint64_t sub_1DD7FD5B0()
{
  result = qword_1ECD10EF0;
  if (!qword_1ECD10EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10EF0);
  }

  return result;
}

double sub_1DD7FD604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1DD7FD670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1DD7FD6DC()
{
  result = qword_1ECD10F20;
  if (!qword_1ECD10F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F20);
  }

  return result;
}

unint64_t sub_1DD7FD730()
{
  result = qword_1ECD10F30;
  if (!qword_1ECD10F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F30);
  }

  return result;
}

unint64_t sub_1DD7FD784()
{
  result = qword_1ECD10F38;
  if (!qword_1ECD10F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F38);
  }

  return result;
}

unint64_t sub_1DD7FD7D8()
{
  result = qword_1ECD10F40;
  if (!qword_1ECD10F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F40);
  }

  return result;
}

unint64_t sub_1DD7FD82C()
{
  result = qword_1ECD10F48;
  if (!qword_1ECD10F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F48);
  }

  return result;
}

unint64_t sub_1DD7FD880()
{
  result = qword_1ECD10F80;
  if (!qword_1ECD10F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F80);
  }

  return result;
}

unint64_t sub_1DD7FD8D4()
{
  result = qword_1ECD10F88;
  if (!qword_1ECD10F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F88);
  }

  return result;
}

unint64_t sub_1DD7FD928()
{
  result = qword_1ECD10F98;
  if (!qword_1ECD10F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10F98);
  }

  return result;
}

unint64_t sub_1DD7FD97C()
{
  result = qword_1ECD10FB0;
  if (!qword_1ECD10FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FB0);
  }

  return result;
}

unint64_t sub_1DD7FD9D0()
{
  result = qword_1ECD10FC8;
  if (!qword_1ECD10FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FC8);
  }

  return result;
}

unint64_t sub_1DD7FDA24()
{
  result = qword_1ECD10FE0;
  if (!qword_1ECD10FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FE0);
  }

  return result;
}

unint64_t sub_1DD7FDA78()
{
  result = qword_1ECD10FF8;
  if (!qword_1ECD10FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10FF8);
  }

  return result;
}

unint64_t sub_1DD7FDACC()
{
  result = qword_1ECD11010;
  if (!qword_1ECD11010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11010);
  }

  return result;
}

unint64_t sub_1DD7FDB20()
{
  result = qword_1ECD11028;
  if (!qword_1ECD11028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11028);
  }

  return result;
}

unint64_t sub_1DD7FDB74()
{
  result = qword_1ECD11040;
  if (!qword_1ECD11040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11040);
  }

  return result;
}

unint64_t sub_1DD7FDC00()
{
  result = qword_1ECD110A0;
  if (!qword_1ECD110A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110A0);
  }

  return result;
}

unint64_t sub_1DD7FDC54()
{
  result = qword_1ECD110A8;
  if (!qword_1ECD110A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110A8);
  }

  return result;
}

unint64_t sub_1DD7FDCA8()
{
  result = qword_1ECD110B0;
  if (!qword_1ECD110B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110B0);
  }

  return result;
}

unint64_t sub_1DD7FDCFC()
{
  result = qword_1ECD110B8;
  if (!qword_1ECD110B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110B8);
  }

  return result;
}

unint64_t sub_1DD7FDD50()
{
  result = qword_1ECD110C0;
  if (!qword_1ECD110C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110C0);
  }

  return result;
}

unint64_t sub_1DD7FDDA4()
{
  result = qword_1ECD110C8;
  if (!qword_1ECD110C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110C8);
  }

  return result;
}

unint64_t sub_1DD7FDDF8()
{
  result = qword_1ECD110D0;
  if (!qword_1ECD110D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110D0);
  }

  return result;
}

unint64_t sub_1DD7FDE4C()
{
  result = qword_1ECD110D8;
  if (!qword_1ECD110D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110D8);
  }

  return result;
}

unint64_t sub_1DD7FDEA0()
{
  result = qword_1ECD110E0;
  if (!qword_1ECD110E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110E0);
  }

  return result;
}

unint64_t sub_1DD7FDEF4()
{
  result = qword_1ECD110E8;
  if (!qword_1ECD110E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110E8);
  }

  return result;
}

unint64_t sub_1DD7FDF48()
{
  result = qword_1ECD110F0;
  if (!qword_1ECD110F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110F0);
  }

  return result;
}

unint64_t sub_1DD7FDF9C()
{
  result = qword_1ECD110F8;
  if (!qword_1ECD110F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD110F8);
  }

  return result;
}

unint64_t sub_1DD7FDFF0()
{
  result = qword_1ECD11100;
  if (!qword_1ECD11100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11100);
  }

  return result;
}

unint64_t sub_1DD7FE044()
{
  result = qword_1ECD11108;
  if (!qword_1ECD11108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11108);
  }

  return result;
}

unint64_t sub_1DD7FE098()
{
  result = qword_1ECD11110;
  if (!qword_1ECD11110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11110);
  }

  return result;
}

unint64_t sub_1DD7FE0EC()
{
  result = qword_1ECD11118;
  if (!qword_1ECD11118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11118);
  }

  return result;
}

unint64_t sub_1DD7FE140()
{
  result = qword_1ECD11120;
  if (!qword_1ECD11120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11120);
  }

  return result;
}

unint64_t sub_1DD7FE194()
{
  result = qword_1ECD11170;
  if (!qword_1ECD11170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11170);
  }

  return result;
}

unint64_t sub_1DD7FE1E8()
{
  result = qword_1ECD11178;
  if (!qword_1ECD11178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11178);
  }

  return result;
}

unint64_t sub_1DD7FE23C()
{
  result = qword_1ECD11180;
  if (!qword_1ECD11180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11180);
  }

  return result;
}

unint64_t sub_1DD7FE290()
{
  result = qword_1ECD11188;
  if (!qword_1ECD11188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11188);
  }

  return result;
}

unint64_t sub_1DD7FE2E4()
{
  result = qword_1ECD11190;
  if (!qword_1ECD11190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11190);
  }

  return result;
}

unint64_t sub_1DD7FE338()
{
  result = qword_1ECD11198;
  if (!qword_1ECD11198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11198);
  }

  return result;
}

unint64_t sub_1DD7FE38C()
{
  result = qword_1ECD111A0;
  if (!qword_1ECD111A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111A0);
  }

  return result;
}

unint64_t sub_1DD7FE3E0()
{
  result = qword_1ECD111A8;
  if (!qword_1ECD111A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111A8);
  }

  return result;
}

unint64_t sub_1DD7FE434()
{
  result = qword_1ECD111B8;
  if (!qword_1ECD111B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111B8);
  }

  return result;
}

unint64_t sub_1DD7FE488()
{
  result = qword_1ECD111D0;
  if (!qword_1ECD111D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111D0);
  }

  return result;
}

unint64_t sub_1DD7FE4DC()
{
  result = qword_1ECD111E8;
  if (!qword_1ECD111E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD111E8);
  }

  return result;
}

unint64_t sub_1DD7FE530()
{
  result = qword_1ECD11200;
  if (!qword_1ECD11200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11200);
  }

  return result;
}

unint64_t sub_1DD7FE584()
{
  result = qword_1ECD11210;
  if (!qword_1ECD11210)
  {
    sub_1DD717E88(&qword_1ECD11208, &qword_1DD889440);
    sub_1DD7FE608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11210);
  }

  return result;
}

unint64_t sub_1DD7FE608()
{
  result = qword_1ECD11218;
  if (!qword_1ECD11218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11218);
  }

  return result;
}

unint64_t sub_1DD7FE65C()
{
  result = qword_1ECD11228;
  if (!qword_1ECD11228)
  {
    sub_1DD717E88(&qword_1ECD11208, &qword_1DD889440);
    sub_1DD7FE6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11228);
  }

  return result;
}

unint64_t sub_1DD7FE6E0()
{
  result = qword_1ECD11230;
  if (!qword_1ECD11230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11230);
  }

  return result;
}

unint64_t sub_1DD7FE734()
{
  result = qword_1ECD11240;
  if (!qword_1ECD11240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11240);
  }

  return result;
}

unint64_t sub_1DD7FE788()
{
  result = qword_1ECD11258;
  if (!qword_1ECD11258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11258);
  }

  return result;
}

unint64_t sub_1DD7FE7DC()
{
  result = qword_1ECD11270;
  if (!qword_1ECD11270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11270);
  }

  return result;
}

unint64_t sub_1DD7FE830()
{
  result = qword_1ECD11288;
  if (!qword_1ECD11288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11288);
  }

  return result;
}

unint64_t sub_1DD7FE8C4()
{
  result = qword_1ECD112C8;
  if (!qword_1ECD112C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD112C8);
  }

  return result;
}

unint64_t sub_1DD7FE918()
{
  result = qword_1ECD112D0;
  if (!qword_1ECD112D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD112D0);
  }

  return result;
}

unint64_t sub_1DD7FE96C()
{
  result = qword_1ECD112E0;
  if (!qword_1ECD112E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD112E0);
  }

  return result;
}

unint64_t sub_1DD7FE9C0()
{
  result = qword_1ECD11310;
  if (!qword_1ECD11310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11310);
  }

  return result;
}

unint64_t sub_1DD7FEA14()
{
  result = qword_1ECD11320;
  if (!qword_1ECD11320)
  {
    sub_1DD717E88(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD6E1E84(&unk_1EE015E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11320);
  }

  return result;
}

unint64_t sub_1DD7FEAC8()
{
  result = qword_1ECD11330;
  if (!qword_1ECD11330)
  {
    sub_1DD717E88(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD6E1E84(&unk_1EE015E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11330);
  }

  return result;
}

double sub_1DD7FEBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD7FEC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1DD7FEC5C()
{
  result = qword_1ECD11368;
  if (!qword_1ECD11368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11368);
  }

  return result;
}

unint64_t sub_1DD7FECB0()
{
  result = qword_1ECD11370;
  if (!qword_1ECD11370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11370);
  }

  return result;
}

unint64_t sub_1DD7FED04()
{
  result = qword_1ECD11378;
  if (!qword_1ECD11378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11378);
  }

  return result;
}

unint64_t sub_1DD7FED58()
{
  result = qword_1ECD11380;
  if (!qword_1ECD11380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11380);
  }

  return result;
}

unint64_t sub_1DD7FEDAC()
{
  result = qword_1ECD11388;
  if (!qword_1ECD11388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11388);
  }

  return result;
}

unint64_t sub_1DD7FEE00()
{
  result = qword_1ECD11390;
  if (!qword_1ECD11390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11390);
  }

  return result;
}

unint64_t sub_1DD7FEE54()
{
  result = qword_1ECD11398;
  if (!qword_1ECD11398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11398);
  }

  return result;
}

unint64_t sub_1DD7FEEA8()
{
  result = qword_1ECD113A0;
  if (!qword_1ECD113A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113A0);
  }

  return result;
}

unint64_t sub_1DD7FEEFC()
{
  result = qword_1ECD113D0;
  if (!qword_1ECD113D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113D0);
  }

  return result;
}

unint64_t sub_1DD7FEF50()
{
  result = qword_1ECD113D8;
  if (!qword_1ECD113D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113D8);
  }

  return result;
}

unint64_t sub_1DD7FEFA4()
{
  result = qword_1ECD113E0;
  if (!qword_1ECD113E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113E0);
  }

  return result;
}

unint64_t sub_1DD7FEFF8()
{
  result = qword_1ECD113F0;
  if (!qword_1ECD113F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD113F0);
  }

  return result;
}

unint64_t sub_1DD7FF04C()
{
  result = qword_1ECD11420;
  if (!qword_1ECD11420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11420);
  }

  return result;
}

unint64_t sub_1DD7FF0A0()
{
  result = qword_1ECD11428;
  if (!qword_1ECD11428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11428);
  }

  return result;
}

unint64_t sub_1DD7FF0F4()
{
  result = qword_1ECD11430;
  if (!qword_1ECD11430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11430);
  }

  return result;
}

unint64_t sub_1DD7FF148()
{
  result = qword_1ECD11438;
  if (!qword_1ECD11438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11438);
  }

  return result;
}

unint64_t sub_1DD7FF19C()
{
  result = qword_1ECD11468;
  if (!qword_1ECD11468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11468);
  }

  return result;
}

unint64_t sub_1DD7FF1F0()
{
  result = qword_1ECD11470;
  if (!qword_1ECD11470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11470);
  }

  return result;
}

unint64_t sub_1DD7FF244()
{
  result = qword_1ECD11480;
  if (!qword_1ECD11480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11480);
  }

  return result;
}

unint64_t sub_1DD7FF298()
{
  result = qword_1ECD11490;
  if (!qword_1ECD11490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11490);
  }

  return result;
}

unint64_t sub_1DD7FF2EC()
{
  result = qword_1ECD11498;
  if (!qword_1ECD11498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11498);
  }

  return result;
}

unint64_t sub_1DD7FF340()
{
  result = qword_1ECD114A8;
  if (!qword_1ECD114A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114A8);
  }

  return result;
}

unint64_t sub_1DD7FF3CC()
{
  result = qword_1ECD114B8;
  if (!qword_1ECD114B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114B8);
  }

  return result;
}

unint64_t sub_1DD7FF420()
{
  result = qword_1ECD114D0;
  if (!qword_1ECD114D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114D0);
  }

  return result;
}

unint64_t sub_1DD7FF474()
{
  result = qword_1ECD114E0;
  if (!qword_1ECD114E0)
  {
    sub_1DD717E88(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD6E1E84(&unk_1ECD114E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD114E0);
  }

  return result;
}

unint64_t sub_1DD7FF530()
{
  result = qword_1ECD11500;
  if (!qword_1ECD11500)
  {
    sub_1DD717E88(&qword_1ECD11298, &qword_1DD889498);
    sub_1DD6E1E84(&unk_1ECD11508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11500);
  }

  return result;
}

unint64_t sub_1DD7FF5E4()
{
  result = qword_1ECD11518;
  if (!qword_1ECD11518)
  {
    sub_1DD717E88(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD6E1E84(&unk_1ECD11520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11518);
  }

  return result;
}

unint64_t sub_1DD7FF6A0(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD114F0, &qword_1DD8895E0);
    v4();
    sub_1DD8256C8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD7FF71C()
{
  result = qword_1ECD11530;
  if (!qword_1ECD11530)
  {
    sub_1DD717E88(&qword_1ECD11298, &qword_1DD889498);
    sub_1DD6E1E84(&unk_1ECD11538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11530);
  }

  return result;
}

unint64_t sub_1DD7FF7D0()
{
  result = qword_1ECD11548;
  if (!qword_1ECD11548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11548);
  }

  return result;
}

unint64_t sub_1DD7FF824()
{
  result = qword_1ECD11560;
  if (!qword_1ECD11560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11560);
  }

  return result;
}

unint64_t sub_1DD7FF8B8()
{
  result = qword_1ECD11590;
  if (!qword_1ECD11590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11590);
  }

  return result;
}

unint64_t sub_1DD7FF90C()
{
  result = qword_1ECD11598;
  if (!qword_1ECD11598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11598);
  }

  return result;
}

unint64_t sub_1DD7FF960()
{
  result = qword_1ECD115A8;
  if (!qword_1ECD115A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115A8);
  }

  return result;
}

unint64_t sub_1DD7FF9B4()
{
  result = qword_1ECD115B0;
  if (!qword_1ECD115B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115B0);
  }

  return result;
}

unint64_t sub_1DD7FFA08()
{
  result = qword_1ECD115D8;
  if (!qword_1ECD115D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115D8);
  }

  return result;
}

unint64_t sub_1DD7FFA5C()
{
  result = qword_1ECD115E8;
  if (!qword_1ECD115E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115E8);
  }

  return result;
}

unint64_t sub_1DD7FFAB0()
{
  result = qword_1ECD115F8;
  if (!qword_1ECD115F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD115F8);
  }

  return result;
}

unint64_t sub_1DD7FFB04()
{
  result = qword_1ECD11610;
  if (!qword_1ECD11610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11610);
  }

  return result;
}

unint64_t sub_1DD7FFB58()
{
  result = qword_1ECD11638;
  if (!qword_1ECD11638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11638);
  }

  return result;
}

unint64_t sub_1DD7FFBAC()
{
  result = qword_1ECD11640;
  if (!qword_1ECD11640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11640);
  }

  return result;
}

unint64_t sub_1DD7FFC00()
{
  result = qword_1ECD11648;
  if (!qword_1ECD11648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11648);
  }

  return result;
}

unint64_t sub_1DD7FFC54()
{
  result = qword_1ECD11650;
  if (!qword_1ECD11650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11650);
  }

  return result;
}

unint64_t sub_1DD7FFCA8()
{
  result = qword_1ECD11658;
  if (!qword_1ECD11658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11658);
  }

  return result;
}

unint64_t sub_1DD7FFCFC()
{
  result = qword_1ECD11660;
  if (!qword_1ECD11660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11660);
  }

  return result;
}

unint64_t sub_1DD7FFD50()
{
  result = qword_1ECD11668;
  if (!qword_1ECD11668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11668);
  }

  return result;
}

unint64_t sub_1DD7FFDA4()
{
  result = qword_1ECD11690;
  if (!qword_1ECD11690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11690);
  }

  return result;
}

unint64_t sub_1DD7FFDF8()
{
  result = qword_1ECD11698;
  if (!qword_1ECD11698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD11698);
  }

  return result;
}

unint64_t sub_1DD7FFE4C()
{
  result = qword_1ECD116A0;
  if (!qword_1ECD116A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116A0);
  }

  return result;
}

uint64_t sub_1DD7FFEA0()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DF448();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

unint64_t sub_1DD7FFF14()
{
  result = qword_1ECD116B0;
  if (!qword_1ECD116B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD116B0);
  }

  return result;
}