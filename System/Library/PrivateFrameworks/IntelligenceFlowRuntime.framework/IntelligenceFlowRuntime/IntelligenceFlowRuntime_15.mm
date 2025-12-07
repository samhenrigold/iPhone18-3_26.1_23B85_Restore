uint64_t sub_22BCE77D4(uint64_t a1)
{
  sub_22BDBB814();
  FeedbackLearning.CandidateParameter.hash(into:)();
  return sub_22BDBB834();
}

uint64_t FeedbackLearning.CandidateParameter.description.getter()
{
  v1 = sub_22BDB4C34();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v5 = sub_22BB3DFC0();
  type metadata accessor for FeedbackLearning.CandidateParameter(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = (v8 - v7);
  sub_22BB32C5C();
  v10 = sub_22BB53C48();
  sub_22BCF8A8C(v10, v11);
  sub_22BB3B69C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x2318A4C40](*v9, v9[1]);

      sub_22BB36A44();
      break;
    case 2u:
    case 3u:
      return sub_22BB95B5C();
    default:
      (*(v3 + 32))(v0, v9, v1);
      sub_22BD00C54();
      sub_22BDB4C24();
      v12 = sub_22BDBB684();
      MEMORY[0x2318A4C40](v12);

      v13 = sub_22BB3182C();
      v14(v13);
      break;
  }

  return sub_22BB95B5C();
}

void static FeedbackLearning.CandidateDefinition.== infix(_:_:)()
{
  sub_22BB30F94();
  v52 = v4;
  v53 = v5;
  sub_22BDBA994();
  sub_22BB30444();
  v49 = v7;
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v46 = v8;
  sub_22BB2F120();
  sub_22BDBA594();
  sub_22BB30444();
  v47 = v10;
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BB3662C();
  v11 = sub_22BDBA014();
  sub_22BB30444();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v14 = sub_22BB3848C();
  type metadata accessor for FeedbackLearning.CandidateDefinition(v14);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB34360();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BBE6DE0(&qword_27D8E4660, &qword_22BDC32A0);
  sub_22BB2F0C8(v21);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB395E0();
  v24 = *(v23 + 56);
  sub_22BCF8A8C(v52, v0);
  sub_22BCF8A8C(v53, v0 + v24);
  sub_22BB3A84C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BB32380();
      sub_22BCF8A8C(v0, v2);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v47 + 32))(v1, v0 + v24, v48);
        sub_22BB58D2C();
        sub_22BDBA574();
        v26 = *(v47 + 8);
        v27 = sub_22BB39478();
        v26(v27);
        (v26)(v2, v48);
LABEL_14:
        sub_22BB3CEC4();
        sub_22BCF8AE4(v0, v45);
        goto LABEL_15;
      }

      v38 = sub_22BB3B088();
    }

    else
    {
      sub_22BB32380();
      v32 = sub_22BB31F54();
      sub_22BCF8A8C(v32, v33);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BB3AE34();
        v34(v46, v0 + v24, v50);
        sub_22BB393C4();
        sub_22BDBA954();
        v35 = *(v49 + 8);
        v36 = sub_22BB52D78();
        v35(v36);
        v37 = sub_22BB53C48();
        v35(v37);
        goto LABEL_14;
      }

      v39 = v50;
      v40 = *(v49 + 8);
      v38 = v18;
    }

    v40(v38, v39);
  }

  else
  {
    sub_22BB32380();
    v28 = sub_22BB500C0();
    sub_22BCF8A8C(v28, v29);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BB3AE34();
      v41(v3, v0 + v24, v11);
      sub_22BDB9FD4();
      v42 = *(v51 + 8);
      v43 = sub_22BD00A24();
      v42(v43);
      v44 = sub_22BD00AA4();
      v42(v44);
      goto LABEL_14;
    }

    v30 = sub_22BD00AA4();
    v31(v30);
  }

  sub_22BB58728(v0, &qword_27D8E4660, &qword_22BDC32A0);
LABEL_15:
  sub_22BB314EC();
}

uint64_t sub_22BCE7E1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

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

uint64_t sub_22BCE7F24(char a1)
{
  if (!a1)
  {
    return 1819242356;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x616D65686373;
}

uint64_t sub_22BCE7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE7E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE7F9C(uint64_t a1)
{
  v2 = sub_22BCF8B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE7FD8(uint64_t a1)
{
  v2 = sub_22BCF8B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE8014(uint64_t a1)
{
  v2 = sub_22BCF8B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE8050(uint64_t a1)
{
  v2 = sub_22BCF8B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE808C(uint64_t a1)
{
  v2 = sub_22BCF8C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE80C8(uint64_t a1)
{
  v2 = sub_22BCF8C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE8104(uint64_t a1)
{
  v2 = sub_22BCF8BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE8140(uint64_t a1)
{
  v2 = sub_22BCF8BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateDefinition.encode(to:)()
{
  sub_22BB31014();
  sub_22BB92328();
  sub_22BBE6DE0(&qword_27D8E4668, &qword_22BDC32A8);
  sub_22BB30444();
  v62 = v3;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB340E0(v5, v51);
  sub_22BDBA994();
  sub_22BB30444();
  v60 = v7;
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v59 = v8;
  sub_22BBE6DE0(&qword_27D8E4670, &qword_22BDC32B0);
  sub_22BB30444();
  v58 = v9;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB30BA8();
  sub_22BB2F120();
  sub_22BDBA594();
  sub_22BB30444();
  v56 = v12;
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v55 = v13;
  v54 = sub_22BBE6DE0(&qword_27D8E4678, &qword_22BDC32B8);
  sub_22BB30444();
  v52 = v14;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB36808();
  v16 = sub_22BDBA014();
  sub_22BB30444();
  v53 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v19 = sub_22BB319F8();
  type metadata accessor for FeedbackLearning.CandidateDefinition(v19);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BB33230();
  sub_22BBE6DE0(&qword_27D8E4680, &qword_22BDC32C0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB354DC();
  v22 = sub_22BB3A19C();
  sub_22BB699E4(v22, v23);
  sub_22BCF8B3C();
  sub_22BDBB8A4();
  sub_22BB32380();
  sub_22BCF8A8C(v63, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v56;
      v25 = v57;
      sub_22BB379C8();
      v27 = v55;
      v28 = sub_22BB94E38();
      v29(v28);
      sub_22BB393D0();
      sub_22BCF8BE4();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      sub_22BB759C8();
      v32 = sub_22BCF8848(v30, v31, MEMORY[0x277D72A80]);
      v33 = v58;
      sub_22BB980C8(v55, v34, v35, v36, v32);
    }

    else
    {
      v26 = v60;
      v25 = v61;
      sub_22BB379C8();
      v27 = v59;
      v39 = sub_22BB94E38();
      v40(v39);
      sub_22BB3CF44();
      sub_22BCF8B90();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      sub_22BD007B4();
      v43 = sub_22BCF8848(v41, v42, MEMORY[0x277D73360]);
      v33 = v62;
      sub_22BB980C8(v59, v44, v45, v46, v43);
      sub_22BD00DA4();
    }

    v47 = sub_22BB34F2C();
    v48(v47, v33);
    (*(v26 + 8))(v27, v25);
  }

  else
  {
    (*(v53 + 32))(v1, v0, v16);
    sub_22BCF8C38();
    sub_22BB72F1C();
    sub_22BDBB5F4();
    sub_22BB38124();
    sub_22BCF8848(v37, v38, MEMORY[0x277D72240]);
    sub_22BDBB664();
    (*(v52 + 8))(v2, v54);
    (*(v53 + 8))(v1, v16);
  }

  v49 = sub_22BB3DFD0();
  v50(v49, v0);
  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateDefinition.init(from:)()
{
  sub_22BB31014();
  v89 = v0;
  v5 = v4;
  v84 = v6;
  v87 = sub_22BBE6DE0(&qword_27D8E46B8, &qword_22BDC32C8);
  sub_22BB30444();
  v83 = v7;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB38B54(v9, v73);
  sub_22BBE6DE0(&qword_27D8E46C0, &qword_22BDC32D0);
  sub_22BB30444();
  v81 = v11;
  v82 = v10;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB37048(v13, v73);
  sub_22BBE6DE0(&qword_27D8E46C8, &qword_22BDC32D8);
  sub_22BB30444();
  v79 = v15;
  v80 = v14;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB39504(v17);
  sub_22BBE6DE0(&qword_27D8E46D0, &qword_22BDC32E0);
  sub_22BB30444();
  v85 = v19;
  v86 = v18;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB395E0();
  v21 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v22);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v23);
  sub_22BB34360();
  MEMORY[0x28223BE20](v24);
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  v28 = v5[4];
  v88 = v5;
  v29 = sub_22BB8AB74();
  sub_22BB699E4(v29, v30);
  sub_22BCF8B3C();
  sub_22BB69544();
  sub_22BD00C48();
  sub_22BDBB894();
  if (!v0)
  {
    v75 = v3;
    v76 = v1;
    v77 = v2;
    v78 = v27;
    v32 = v86;
    v31 = v87;
    v89 = v21;
    v33 = sub_22BDBB5E4();
    sub_22BD00A84(v33);
    if (!v34)
    {
      sub_22BB2F4F4();
      if (v39 == v40)
      {
        __break(1u);
        return;
      }

      v41 = *(v38 + v36);
      sub_22BB97F40(v35, v36, v38, v37);
      sub_22BBBFF50();
      if (!v28)
      {
        if (v41)
        {
          if (v41 == 1)
          {
            sub_22BB393D0();
            sub_22BCF8BE4();
            sub_22BB2F230();
            sub_22BDBB554();
            v42 = v78;
            sub_22BDBA594();
            sub_22BB759C8();
            sub_22BCF8848(v43, v44, MEMORY[0x277D72A98]);
            v45 = v75;
            sub_22BDBB5D4();
            v74 = 0;
            swift_unknownObjectRelease();
            v59 = sub_22BB53C48();
            v60(v59);
            v61 = sub_22BB3A988();
          }

          else
          {
            sub_22BB3CF44();
            sub_22BCF8B90();
            sub_22BB2F230();
            sub_22BDBB554();
            v42 = v78;
            sub_22BDBA994();
            sub_22BD007B4();
            sub_22BCF8848(v57, v58, MEMORY[0x277D73378]);
            v45 = v77;
            sub_22BDBB5D4();
            v74 = 0;
            swift_unknownObjectRelease();
            v69 = sub_22BB9607C();
            v70(v69, v31);
            v61 = sub_22BB38B68();
          }

          v62(v61);
          swift_storeEnumTagMultiPayload();
          v68 = v45;
          v67 = v88;
        }

        else
        {
          sub_22BCF8C38();
          sub_22BB2F230();
          sub_22BDBB554();
          sub_22BDBA014();
          sub_22BB38124();
          sub_22BCF8848(v54, v55, MEMORY[0x277D72258]);
          v56 = v76;
          sub_22BDBB5D4();
          v74 = 0;
          swift_unknownObjectRelease();
          v63 = sub_22BB3B6B8();
          v64(v63);
          v65 = sub_22BB32E04();
          v66(v65);
          swift_storeEnumTagMultiPayload();
          v67 = v88;
          v42 = v78;
          v68 = v56;
        }

        sub_22BCF8A34(v68, v42);
        v71 = sub_22BB3ADA8();
        sub_22BCF8A34(v71, v72);
        sub_22BB32FA4(v67);
        goto LABEL_11;
      }
    }

    v46 = sub_22BDBB3A4();
    sub_22BB31A08(v46, MEMORY[0x277D841A0]);
    v48 = v47;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v48 = v89;
    v49 = sub_22BDBB564();
    sub_22BB36D74(v49);
    sub_22BB30474();
    v50 = sub_22BB527FC();
    v51(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = sub_22BB3B5D8();
    v53(v52, v32);
  }

  sub_22BB32FA4(v88);
LABEL_11:
  sub_22BD00C9C();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateDefinition.description.getter()
{
  sub_22BB30F94();
  v3 = sub_22BDBA594();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB3DFC0();
  v7 = sub_22BDBA014();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB3662C();
  type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB32380();
  v12 = sub_22BB393C4();
  sub_22BCF8A8C(v12, v13);
  sub_22BB32E04();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v0, v2, v3);
      sub_22BD00C54();
      v15 = sub_22BDBA584();
      MEMORY[0x2318A4C40](v15);

      sub_22BB36A44();
      v16 = sub_22BB3182C();
      v17(v16);
    }

    else
    {
      sub_22BCF8AE4(v2, type metadata accessor for FeedbackLearning.CandidateDefinition);
    }
  }

  else
  {
    (*(v9 + 32))(v1, v2, v7);
    v18 = sub_22BDB9FE4();
    MEMORY[0x2318A4C40](v18);

    sub_22BB36A44();
    v19 = sub_22BB3AAD8();
    v20(v19);
  }

  sub_22BB393C4();
  sub_22BB314EC();
}

BOOL static FeedbackLearning.CandidateEvaluation.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB4C04() & 1) != 0 && (v2 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0), sub_22BB36D64(v2), static FeedbackLearning.CandidateParameter.== infix(_:_:)(), (v3) && (sub_22BB94E2C(v2[6]), static FeedbackLearning.CandidateDefinition.== infix(_:_:)(), (v4) && (sub_22BB94E2C(v2[7]), (sub_22BDB7B04()) && *(v1 + v2[8]) == *(v0 + v2[8]) && (v5 = v2[9], v8 = *(v1 + v5), v7 = *(v0 + v5), (static FeedbackLearning.CandidateOutcome.== infix(_:_:)(&v8, &v7)))
  {
    return *(v1 + v2[10]) == *(v0 + v2[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BCE91D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022BDD32D0 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000022BDD32F0 == a2;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
            if (v10 || (sub_22BDBB6D4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6F6974616E6F64 && a2 == 0xEF736E6F6974704FLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_22BDBB6D4();

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

unint64_t sub_22BCE943C(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6974756C6F736572;
      break;
    case 5:
      result = 0x656D6F6374756FLL;
      break;
    case 6:
      result = 0x6E6F6974616E6F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE91D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE9554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCE9434();
  *a1 = result;
  return result;
}

uint64_t sub_22BCE957C(uint64_t a1)
{
  v2 = sub_22BCF8CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE95B8(uint64_t a1)
{
  v2 = sub_22BCF8CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateEvaluation.encode(to:)(uint64_t a1)
{
  sub_22BD00EDC();
  sub_22BBE6DE0(&qword_27D8E46E8, &qword_22BDC32E8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB3721C();
  sub_22BB3B3AC();
  v3 = sub_22BCF8CAC();
  sub_22BD0071C(&_s19CandidateEvaluationV10CodingKeysON, v4, v3);
  sub_22BDB4C34();
  sub_22BB35B60();
  sub_22BCF8848(v5, v6, MEMORY[0x277D1C340]);
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
    sub_22BD0096C();
    v8 = sub_22BD00CFC(v7);
    type metadata accessor for FeedbackLearning.CandidateParameter(v8);
    sub_22BB58AD4();
    sub_22BCF8848(v9, v10, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v11 = sub_22BD00CFC(2);
    type metadata accessor for FeedbackLearning.CandidateDefinition(v11);
    sub_22BD008BC();
    sub_22BCF8848(v12, v13, &protocol conformance descriptor for FeedbackLearning.CandidateDefinition);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    sub_22BD00CFC(3);
    sub_22BDB7B44();
    sub_22BB36E04();
    sub_22BCF8848(v14, v15, MEMORY[0x277D1D610]);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    sub_22BB3E098();
    sub_22BCF8D00();
    sub_22BB337A0();
    sub_22BDBB664();
    sub_22BBC0278();
    sub_22BCF8D54();
    sub_22BB337A0();
    sub_22BDBB664();
    sub_22BD00EA8();
    sub_22BCF8DA8();
    sub_22BB337A0();
    sub_22BDBB664();
  }

  v16 = sub_22BB35198();
  v17(v16);
  sub_22BD00EC8();
}

void FeedbackLearning.CandidateEvaluation.init(from:)()
{
  sub_22BB31014();
  v5 = v4;
  v48 = v6;
  v55 = sub_22BDB7B44();
  sub_22BB30444();
  v53 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v49 = v9;
  v10 = sub_22BB2F120();
  type metadata accessor for FeedbackLearning.CandidateDefinition(v10);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v50 = v12;
  v13 = sub_22BB2F120();
  type metadata accessor for FeedbackLearning.CandidateParameter(v13);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB36FD8();
  v15 = sub_22BDB4C34();
  sub_22BB30444();
  v54 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  sub_22BB72E10();
  sub_22BBE6DE0(&qword_27D8E4728, &qword_22BDC32F0);
  sub_22BB30444();
  v51 = v19;
  v52 = v18;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB34298();
  v56 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v21);
  sub_22BB305A8();
  v23 = v22;
  v24 = sub_22BB2F324();
  sub_22BB699E4(v24, v25);
  sub_22BCF8CAC();
  sub_22BD00CC0();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v5);
  }

  else
  {
    sub_22BB35B60();
    sub_22BCF8848(v26, v27, MEMORY[0x277D1C360]);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v54 + 32))(v23, v2, v15);
    sub_22BB58AD4();
    sub_22BCF8848(v28, v29, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    sub_22BB31158();
    sub_22BCF8A34(v3, v23 + v30);
    sub_22BD008BC();
    sub_22BCF8848(v31, v32, &protocol conformance descriptor for FeedbackLearning.CandidateDefinition);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    sub_22BCF8A34(v50, v23 + v56[6]);
    LOBYTE(v57) = 3;
    sub_22BB36E04();
    sub_22BCF8848(v33, v34, MEMORY[0x277D1D628]);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v53 + 32))(v23 + v56[7], v49, v55);
    sub_22BB3E098();
    v35 = sub_22BCF8DFC();
    sub_22BB38554(&type metadata for FeedbackLearning.CandidateParameterResolution, v36, v37, v38, v35);
    *(v23 + v56[8]) = 3;
    sub_22BBC0278();
    v39 = sub_22BCF8E50();
    sub_22BB38554(&type metadata for FeedbackLearning.CandidateOutcome, v40, v41, v42, v39);
    *(v23 + v56[9]) = 3;
    sub_22BD00EA8();
    v43 = sub_22BCF8EA4();
    sub_22BB38554(&type metadata for FeedbackLearning.CandidateDonationOptionSet, v44, v45, v46, v43);
    (*(v51 + 8))(v1, v52);
    *(v23 + v56[10]) = v57;
    sub_22BD00844();
    sub_22BCF8A8C(v23, v48);
    sub_22BB32FA4(v5);
    sub_22BD0082C();
    sub_22BCF8AE4(v23, v47);
  }

  sub_22BB975A0();
  sub_22BB376A8();
}

void static FeedbackLearning.TaskFailureReason.== infix(_:_:)()
{
  sub_22BB30F94();
  v31 = v5;
  v32 = v6;
  sub_22BDB8294();
  sub_22BB30444();
  v29 = v8;
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB319F8();
  v9 = sub_22BDB4C84();
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB3662C();
  type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v14);
  sub_22BD00B4C();
  v15 = sub_22BBE6DE0(&qword_27D8E4760, &qword_22BDC32F8);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BD00A30();
  v18 = *(v17 + 56);
  sub_22BCF8A8C(v31, v0);
  sub_22BCF8A8C(v32, v0 + v18);
  sub_22BB3A19C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB53D70();
    sub_22BCF8A8C(v0, v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BB3AE34();
      v19(v1, v0 + v18, v30);
      sub_22BDB8284();
      v20 = *(v29 + 8);
      v21 = sub_22BB3AC54();
      v20(v21);
      (v20)(v3, v30);
LABEL_9:
      sub_22BB362D0();
      sub_22BCF8AE4(v0, v28);
      goto LABEL_10;
    }

    v24 = sub_22BB3B088();
    v25(v24);
  }

  else
  {
    sub_22BB53D70();
    v22 = sub_22BB8AB74();
    sub_22BCF8A8C(v22, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v11 + 32))(v2, v0 + v18, v9);
      sub_22BB89D18();
      sub_22BDB4C74();
      v26 = *(v11 + 8);
      v27 = sub_22BB39478();
      v26(v27);
      (v26)(v4, v9);
      goto LABEL_9;
    }

    (*(v11 + 8))(v4, v9);
  }

  sub_22BB58728(v0, &qword_27D8E4760, &qword_22BDC32F8);
LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BCEA240(uint64_t a1)
{
  v2 = sub_22BCF8F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEA27C(uint64_t a1)
{
  v2 = sub_22BCF8F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEA2B8(uint64_t a1)
{
  v2 = sub_22BCF8F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEA2F4(uint64_t a1)
{
  v2 = sub_22BCF8F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEA330(uint64_t a1)
{
  v2 = sub_22BCF8FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEA36C(uint64_t a1)
{
  v2 = sub_22BCF8FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskFailureReason.encode(to:)()
{
  sub_22BB31014();
  sub_22BBE6DE0(&qword_27D8E4768, &qword_22BDC3300);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB39504(v3);
  sub_22BDB8294();
  sub_22BB30444();
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v33 = v5;
  sub_22BBE6DE0(&qword_27D8E4770, &qword_22BDC3308);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB354DC();
  sub_22BDB4C84();
  sub_22BB30444();
  v31 = v8;
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v11 = v10 - v9;
  type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BD00790();
  sub_22BBE6DE0(&qword_27D8E4778, &qword_22BDC3310);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB32750();
  v14 = sub_22BB53C48();
  sub_22BB699E4(v14, v15);
  sub_22BCF8F18();
  sub_22BDBB8A4();
  sub_22BB53D70();
  sub_22BCF8A8C(v0, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB379C8();
    v16(v33, v1, v34);
    sub_22BB75960();
    sub_22BCF8F6C();
    sub_22BB393F8();
    sub_22BDBB5F4();
    sub_22BD00814();
    sub_22BCF8848(v17, v18, MEMORY[0x277D1DC70]);
    sub_22BDBB664();
    sub_22BB38B78();
    v19 = sub_22BB3ADA8();
    v20(v19);
    v21 = sub_22BD0073C();
    v22(v21);
  }

  else
  {
    v23 = sub_22BD00E6C();
    v24(v23);
    sub_22BCF8FC0();
    sub_22BBBEB1C();
    sub_22BB393F8();
    sub_22BDBB5F4();
    sub_22BB69AD8();
    sub_22BCF8848(v25, v26, MEMORY[0x277D1C430]);
    sub_22BDBB664();
    v27 = sub_22BB692D0();
    v28(v27);
    (*(v31 + 8))(v11, v32);
  }

  v29 = sub_22BB348D0();
  v30(v29);
  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFailureReason.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  sub_22BD00B7C(v13);
  sub_22BBE6DE0(&qword_27D8E47A8, &qword_22BDC3318);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F240(v15, v56);
  sub_22BBE6DE0(&qword_27D8E47B0, &qword_22BDC3320);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB37048(v17, v57);
  sub_22BBE6DE0(&qword_27D8E47B8, &qword_22BDC3328);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB354DC();
  type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v20);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v21);
  sub_22BB3E4C0();
  v22 = v12[3];
  sub_22BB9575C(v12);
  sub_22BCF8F18();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v11)
  {
    v23 = sub_22BB7553C();
    sub_22BD01008(v23);
    if (v24)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    sub_22BB3DE3C(v25, v26, v28, v27);
    sub_22BD00A3C();
    if (v22)
    {
LABEL_9:
      v35 = sub_22BDBB3A4();
      sub_22BB31A08(v35, MEMORY[0x277D841A0]);
      sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BB97E38();
      sub_22BD00E30();
      sub_22BB36D74(v36);
      sub_22BB330A0();
      v37 = sub_22BD00C90();
      v38(v37);
      swift_willThrow();
      swift_unknownObjectRelease();
      v39 = sub_22BB397A4();
      v40(v39, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BCF8F6C();
        sub_22BB8DB14();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB8294();
          sub_22BD00814();
          v33 = sub_22BCF8848(v31, v32, MEMORY[0x277D1DC78]);
          sub_22BB8AC44(v33, v34);
          sub_22BD00B5C();
          swift_unknownObjectRelease();
          v48 = sub_22BB3FCC8();
          v49(v48);
          v50 = sub_22BB38B68();
          v51(v50);
          sub_22BD00B30();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_22BCF8A34(v10, 0);
          sub_22BD00D58();
          v41 = v58;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BCF8FC0();
        sub_22BB77E64();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB4C84();
          sub_22BB69AD8();
          v46 = sub_22BCF8848(v44, v45, MEMORY[0x277D1C438]);
          sub_22BB34EF8(v46, v47);
          swift_unknownObjectRelease();
          v52 = sub_22BB3FCC8();
          v53(v52);
          v54 = sub_22BB3A280();
          v55(v54);
          sub_22BD00B30();
          goto LABEL_16;
        }
      }

      v42 = sub_22BB3A280();
      v43(v42);
      swift_unknownObjectRelease();
    }

    v12 = v58;
  }

  v41 = v12;
LABEL_12:
  sub_22BB32FA4(v41);
  sub_22BD00E18();
  sub_22BB376A8();
}

void static FeedbackLearning.TaskStatus.== infix(_:_:)()
{
  sub_22BB3B094();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BD00A30();
  v8 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v9 = sub_22BB2F0C8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BBE6DE0(&qword_27D8E47D0, &unk_22BDC3330);
  sub_22BB2F0C8(v13);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB395E0();
  v16 = *(v15 + 56);
  sub_22BCF8A8C(v5, v0);
  sub_22BCF8A8C(v3, v0 + v16);
  v17 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  switch(sub_22BB3AA28(v0, 4, v17))
  {
    case 1u:
      if (sub_22BD0097C() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_22BD0097C() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (sub_22BD0097C() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (sub_22BD0097C() != 4)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_22BD008E0();
      break;
    default:
      sub_22BB3A464();
      sub_22BCF8A8C(v0, v12);
      if (sub_22BD0097C())
      {
        sub_22BB362D0();
        sub_22BCF8AE4(v12, v18);
LABEL_7:
        sub_22BB58728(v0, &qword_27D8E47D0, &unk_22BDC3330);
      }

      else
      {
        sub_22BB6F948();
        sub_22BCF8A34(v0 + v16, v1);
        sub_22BB37494();
        static FeedbackLearning.TaskFailureReason.== infix(_:_:)();
        sub_22BCF8AE4(v1, type metadata accessor for FeedbackLearning.TaskFailureReason);
        sub_22BCF8AE4(v12, type metadata accessor for FeedbackLearning.TaskFailureReason);
        sub_22BD008E0();
      }

      break;
  }

  sub_22BB36A24();
}

uint64_t sub_22BCEAF44(uint64_t a1)
{
  v2 = sub_22BCF9088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEAF80(uint64_t a1)
{
  v2 = sub_22BCF9088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEAFBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCEAF28();
  *a1 = result;
  return result;
}

uint64_t sub_22BCEAFE4(uint64_t a1)
{
  v2 = sub_22BCF9034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB020(uint64_t a1)
{
  v2 = sub_22BCF9034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB05C(uint64_t a1)
{
  v2 = sub_22BCF90DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB098(uint64_t a1)
{
  v2 = sub_22BCF90DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB0D8(uint64_t a1)
{
  v2 = sub_22BCF9130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB114(uint64_t a1)
{
  v2 = sub_22BCF9130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB150(uint64_t a1)
{
  v2 = sub_22BCF9184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB18C(uint64_t a1)
{
  v2 = sub_22BCF9184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB1C8(uint64_t a1)
{
  v2 = sub_22BCF91D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB204(uint64_t a1)
{
  v2 = sub_22BCF91D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskStatus.encode(to:)()
{
  sub_22BB31014();
  sub_22BD00E54();
  sub_22BBE6DE0(&qword_27D8E47D8, &qword_22BDC3340);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB2F240(v3, v33);
  v36 = sub_22BBE6DE0(&qword_27D8E47E0, &qword_22BDC3348);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB30BA8();
  sub_22BD00C78(v5);
  sub_22BBE6DE0(&qword_27D8E47E8, &qword_22BDC3350);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB6BB20(v7, v34);
  type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v35 = v9;
  sub_22BBE6DE0(&qword_27D8E47F0, &qword_22BDC3358);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB34298();
  sub_22BBE6DE0(&qword_27D8E47F8, &qword_22BDC3360);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB3721C();
  v12 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v13 = sub_22BB2F0C8(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  sub_22BB33230();
  sub_22BBE6DE0(&qword_27D8E4800, &qword_22BDC3368);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB36808();
  v15 = sub_22BB3A19C();
  sub_22BB699E4(v15, v16);
  sub_22BCF9034();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BB3A464();
  sub_22BD01048();
  sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v17 = sub_22BD00E84();
  switch(sub_22BB3AA28(v17, 4, v18))
  {
    case 1u:
      sub_22BCF91D8();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v28 = sub_22BB9607C();
      goto LABEL_7;
    case 2u:
      sub_22BD00E78();
      sub_22BCF9184();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v28 = sub_22BB3B088();
      goto LABEL_7;
    case 3u:
      sub_22BD00DF8();
      sub_22BCF90DC();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v28 = sub_22BB37D64();
      v29 = v36;
      goto LABEL_7;
    case 4u:
      sub_22BB3E098();
      sub_22BCF9088();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v28 = sub_22BB37D64();
LABEL_7:
      v30(v28, v29);
      v31 = sub_22BD0073C();
      v32(v31);
      break;
    default:
      sub_22BCF8A34(v0, v35);
      sub_22BB8D22C();
      sub_22BCF9130();
      sub_22BB52E84();
      sub_22BDBB5F4();
      sub_22BB8B680();
      v21 = sub_22BCF8848(v19, v20, &protocol conformance descriptor for FeedbackLearning.TaskFailureReason);
      sub_22BBC2544(v21, v22);
      v23 = sub_22BB3AB0C();
      v24(v23, v1);
      sub_22BB362D0();
      sub_22BCF8AE4(v35, v25);
      v26 = sub_22BD0073C();
      v27(v26);
      break;
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.TaskStatus.init(from:)()
{
  sub_22BB31014();
  sub_22BD00D8C();
  v68 = v1;
  sub_22BBE6DE0(&qword_27D8E4840, &qword_22BDC3370);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB38B54(v3, v63);
  sub_22BBE6DE0(&qword_27D8E4848, &qword_22BDC3378);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB6BB20(v5, v64);
  sub_22BBE6DE0(&qword_27D8E4850, &qword_22BDC3380);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB340E0(v7, v65);
  v67 = sub_22BBE6DE0(&qword_27D8E4858, &qword_22BDC3388);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  sub_22BD00C78(v9);
  sub_22BBE6DE0(&qword_27D8E4860, &qword_22BDC3390);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB52928();
  v11 = sub_22BBE6DE0(&qword_27D8E4868, &qword_22BDC3398);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB36808();
  type metadata accessor for FeedbackLearning.TaskStatus(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v14);
  sub_22BB3E4C0();
  v69 = v0;
  v15 = sub_22BB3A19C();
  sub_22BB699E4(v15, v16);
  sub_22BCF9034();
  sub_22BD00918();
  sub_22BDBB894();
  if (!v70)
  {
    v17 = sub_22BD00BC4();
    sub_22BD00A84(v17);
    if (!v18)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v23 == v24)
      {
        __break(1u);
        return;
      }

      v25 = *(v22 + v20);
      sub_22BB97F40(v19, v20, v22, v21);
      sub_22BD00F50();
      if (!(v11 >> 1))
      {
        switch(v25)
        {
          case 1:
            sub_22BD00E78();
            sub_22BCF9184();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v52 = sub_22BB34F2C();
            v53(v52, v67);
            v54 = sub_22BB5426C();
            v55(v54);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v30 = sub_22BB3AAFC();
            v32 = 2;
            goto LABEL_15;
          case 2:
            sub_22BB8D22C();
            sub_22BCF9130();
            sub_22BB3E1EC();
            sub_22BDBB554();
            type metadata accessor for FeedbackLearning.TaskFailureReason(0);
            sub_22BB8B680();
            v46 = sub_22BCF8848(v44, v45, &protocol conformance descriptor for FeedbackLearning.TaskFailureReason);
            sub_22BD00998(v46, v47);
            swift_unknownObjectRelease();
            v56 = sub_22BB8DCCC();
            v57(v56);
            v58 = sub_22BB3AAD8();
            v59(v58);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v60 = sub_22BD0095C();
            sub_22BB336D0(v60, v61, 4, v62);
            sub_22BB92854();
            v25 = v66;
            sub_22BCF8A34(0, v66);
            goto LABEL_16;
          case 3:
            sub_22BD00DF8();
            sub_22BCF90DC();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v48 = sub_22BB34F2C();
            v49(v48);
            v50 = sub_22BB5426C();
            v51(v50);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v30 = sub_22BB3AAFC();
            v32 = 3;
            goto LABEL_15;
          case 4:
            sub_22BB3E098();
            sub_22BCF9088();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v40 = sub_22BC54A0C();
            v41(v40);
            v42 = sub_22BB5426C();
            v43(v42);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v30 = sub_22BB3AAFC();
            v32 = 4;
            goto LABEL_15;
          default:
            sub_22BCF91D8();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v26 = sub_22BB37D64();
            v27(v26);
            v28 = sub_22BB5426C();
            v29(v28);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v30 = sub_22BB3AAFC();
            v32 = 1;
LABEL_15:
            sub_22BB336D0(v30, v32, 4, v31);
LABEL_16:
            sub_22BB92854();
            sub_22BCF8A34(v25, v68);
            v39 = v69;
            break;
        }

        goto LABEL_10;
      }
    }

    v33 = sub_22BDBB3A4();
    sub_22BB31A08(v33, MEMORY[0x277D841A0]);
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    v34 = sub_22BD00EF0();
    sub_22BB36D74(v34);
    sub_22BB330A0();
    v35 = sub_22BD00A78();
    v36(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = sub_22BB3B6B8();
    v38(v37);
  }

  v39 = v69;
LABEL_10:
  sub_22BB32FA4(v39);
  sub_22BB975A0();
  sub_22BB376A8();
}

uint64_t static FeedbackLearning.TaskPromptStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }

    return sub_22BBE7CE0();
  }

  if (v3 == 3)
  {
    return sub_22BBE7CE0();
  }

  return v2 == v3;
}

uint64_t sub_22BCEBF64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D7269666E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

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

uint64_t sub_22BCEC02C(char a1)
{
  if (a1)
  {
    return 0x6D7269666E6F63;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_22BCEC064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCEBF64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCEC08C(uint64_t a1)
{
  v2 = sub_22BCF922C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC0C8(uint64_t a1)
{
  v2 = sub_22BCF922C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEC104(uint64_t a1)
{
  v2 = sub_22BCF9280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC140(uint64_t a1)
{
  v2 = sub_22BCF9280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEC17C(uint64_t a1)
{
  v2 = sub_22BCF92D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC1B8(uint64_t a1)
{
  v2 = sub_22BCF92D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskPromptStatus.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31014();
  v25 = v24;
  sub_22BBE6DE0(&qword_27D8E4878, &qword_22BDC33A0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB30BA8();
  sub_22BD00CD8(v27);
  sub_22BBE6DE0(&qword_27D8E4880, &qword_22BDC33A8);
  sub_22BB30444();
  v37 = v29;
  v38 = v28;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB36808();
  sub_22BBE6DE0(&qword_27D8E4888, &qword_22BDC33B0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB34298();
  v32 = *v22;
  sub_22BB699E4(v25, v25[3]);
  sub_22BCF922C();
  sub_22BD00CC0();
  sub_22BDBB8A4();
  if (v32 == 3)
  {
    sub_22BCF92D4();
    sub_22BB31D34();
    sub_22BDBB5F4();
    (*(v37 + 8))(v23, v38);
  }

  else
  {
    sub_22BB75960();
    sub_22BCF9280();
    sub_22BB31D34();
    sub_22BDBB5F4();
    sub_22BCF8534();
    sub_22BDBB664();
    sub_22BB3158C();
    v35 = sub_22BB3A86C();
    v36(v35);
  }

  v33 = sub_22BB58D2C();
  v34(v33);
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.TaskPromptStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BB31014();
  sub_22BD00B6C(v14);
  sub_22BBE6DE0(&qword_27D8E48A8, &qword_22BDC33B8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB32750();
  v16 = sub_22BBE6DE0(&qword_27D8E48B0, &qword_22BDC33C0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB34298();
  v18 = sub_22BBE6DE0(&qword_27D8E48B8, &qword_22BDC33C8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB354DC();
  v20 = v13[4];
  sub_22BB699E4(v13, v13[3]);
  sub_22BCF922C();
  sub_22BB95B68();
  sub_22BD00C48();
  sub_22BDBB894();
  if (!v12)
  {
    v21 = sub_22BDBB5E4();
    sub_22BCF80B8(v21, 0);
    if (v23 != v22 >> 1)
    {
      sub_22BB2F4F4();
      if (v28 == v29)
      {
        __break(1u);
        return;
      }

      v50 = *(v27 + v25);
      sub_22BB97F40(v24, v25, v27, v26);
      sub_22BBBFF50();
      if (!v20)
      {
        if (v50)
        {
          sub_22BB75960();
          sub_22BCF9280();
          sub_22BBBD27C();
          sub_22BD00E48();
          sub_22BDBB554();
          v30 = v49;
          sub_22BCF85DC();
          sub_22BB393F8();
          sub_22BDBB5D4();
          swift_unknownObjectRelease();
          v44 = sub_22BC5448C();
          v45(v44);
          v46 = sub_22BB3972C();
          v47(v46);
        }

        else
        {
          sub_22BCF92D4();
          sub_22BBBD27C();
          sub_22BD00E48();
          sub_22BDBB554();
          v30 = v49;
          swift_unknownObjectRelease();
          v40 = sub_22BB37D64();
          v41(v40, v16);
          v42 = sub_22BB3B6B8();
          v43(v42);
          a12 = 3;
        }

        *v30 = a12;
        v39 = v13;
        goto LABEL_10;
      }
    }

    v31 = sub_22BDBB3A4();
    sub_22BB31A08(v31, MEMORY[0x277D841A0]);
    v33 = v32;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v33 = &type metadata for FeedbackLearning.TaskPromptStatus;
    sub_22BDBB564();
    sub_22BD00E30();
    sub_22BB36D74(v34);
    sub_22BB330A0();
    v35 = sub_22BD00C90();
    v36(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = sub_22BB3AB0C();
    v38(v37, v18);
  }

  v39 = v13;
LABEL_10:
  sub_22BB32FA4(v39);
  sub_22BD00C9C();
  sub_22BB376A8();
}

uint64_t static FeedbackLearning.TaskOutcome.== infix(_:_:)()
{
  sub_22BB35F54();
  static FeedbackLearning.TaskStatus.== infix(_:_:)();
  if (v2)
  {
    v3 = *(type metadata accessor for FeedbackLearning.TaskOutcome(0) + 20);
    v4 = *(v1 + v3);
    v5 = *(v0 + v3);
    if (v4 == 3)
    {
      if (v5 == 3)
      {
        return 1;
      }
    }

    else if (v4 == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22BCEC988(uint64_t a1)
{
  v2 = sub_22BCF9348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC9C4(uint64_t a1)
{
  v2 = sub_22BCF9348();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  sub_22BBE6DE0(&qword_27D8E48C0, &qword_22BDC33D0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB3721C();
  sub_22BB3B3AC();
  v18 = sub_22BCF9348();
  sub_22BD0071C(&_s11TaskOutcomeV10CodingKeysON, v19, v18);
  v20 = sub_22BD00E24();
  type metadata accessor for FeedbackLearning.TaskStatus(v20);
  sub_22BB6FEC4();
  sub_22BCF8848(v21, v22, &protocol conformance descriptor for FeedbackLearning.TaskStatus);
  sub_22BB36BDC();
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v16)
  {
    type metadata accessor for FeedbackLearning.TaskOutcome(0);
    sub_22BD008D4();
    sub_22BCF939C();
    sub_22BB37A08();
    sub_22BDBB664();
  }

  v23 = sub_22BB35198();
  v24(v23);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void FeedbackLearning.TaskOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BB31014();
  v16 = sub_22BD00EB4(v15);
  type metadata accessor for FeedbackLearning.TaskStatus(v16);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  v36 = v18;
  sub_22BBE6DE0(&qword_27D8E48E0, &qword_22BDC33D8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BB30CE4();
  v21 = type metadata accessor for FeedbackLearning.TaskOutcome(v20);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v22);
  sub_22BB3662C();
  v23 = sub_22BB3A84C();
  sub_22BB699E4(v23, v24);
  sub_22BCF9348();
  sub_22BD00C6C();
  sub_22BDBB894();
  if (v14)
  {
    sub_22BB32FA4(v12);
  }

  else
  {
    sub_22BB6FEC4();
    sub_22BCF8848(v25, v26, &protocol conformance descriptor for FeedbackLearning.TaskStatus);
    sub_22BB36BDC();
    sub_22BD00B9C(v27, v28, v29, v30, v31);
    sub_22BB92854();
    sub_22BCF8A34(v36, v13);
    sub_22BD008D4();
    sub_22BCF93F0();
    sub_22BB3B0C0();
    sub_22BDBB5D4();
    v32 = sub_22BB89D18();
    v33(v32);
    *(v13 + *(v21 + 20)) = a12;
    v34 = sub_22BB6BE0C();
    sub_22BCF8A8C(v34, v35);
    sub_22BB32FA4(v12);
    sub_22BCF8AE4(v13, type metadata accessor for FeedbackLearning.TaskOutcome);
  }

  sub_22BB376A8();
}

uint64_t static FeedbackLearning.TaskAction.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4() & 1) != 0 && (v2 = type metadata accessor for FeedbackLearning.FlowActionEvent(0), sub_22BB36D64(v2), static FeedbackLearning.ActionValue.== infix(_:_:)(), (v3) && (v4 = type metadata accessor for FeedbackLearning.TaskAction(0), sub_22BB36D64(v4), (sub_22BDB9FD4()))
  {
    v5 = *(v1 + *(v4 + 24)) ^ *(v0 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22BCECE60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6465747563657865 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

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

uint64_t sub_22BCECF7C(char a1)
{
  if (!a1)
  {
    return 0x76456E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x696665446C6F6F74;
  }

  return 0x6465747563657865;
}

uint64_t sub_22BCECFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCECE60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCED018(uint64_t a1)
{
  v2 = sub_22BCF9464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCED054(uint64_t a1)
{
  v2 = sub_22BCF9464();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  sub_22BBE6DE0(&qword_27D8E48F8, &qword_22BDC33E0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB3721C();
  sub_22BB3B3AC();
  v18 = sub_22BCF9464();
  sub_22BD0071C(&_s10TaskActionV10CodingKeysON, v19, v18);
  v20 = sub_22BD00E24();
  type metadata accessor for FeedbackLearning.FlowActionEvent(v20);
  sub_22BB8AD1C();
  sub_22BCF8848(v21, v22, &protocol conformance descriptor for FeedbackLearning.FlowActionEvent);
  sub_22BB36BDC();
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v16)
  {
    type metadata accessor for FeedbackLearning.TaskAction(0);
    sub_22BD0096C();
    sub_22BDBA014();
    sub_22BB38124();
    sub_22BCF8848(v23, v24, MEMORY[0x277D72240]);
    sub_22BB3AD98();
    sub_22BDBB664();
    sub_22BB8D22C();
    sub_22BB37A08();
    sub_22BDBB634();
  }

  v25 = sub_22BB35198();
  v26(v25);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void FeedbackLearning.TaskAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BB31014();
  v24 = v23;
  sub_22BDBA014();
  sub_22BB30444();
  v45 = v26;
  v46 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22BB3662C();
  type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v27);
  sub_22BB305A8();
  sub_22BD00CD8(v28);
  v48 = sub_22BBE6DE0(&qword_27D8E4910, &qword_22BDC33E8);
  sub_22BB30444();
  v44 = v29;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BB3848C();
  v32 = type metadata accessor for FeedbackLearning.TaskAction(v31);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v33);
  sub_22BB30574();
  sub_22BB33230();
  v34 = sub_22BD00AA4();
  sub_22BB699E4(v34, v35);
  sub_22BCF9464();
  sub_22BB69544();
  sub_22BDBB894();
  if (v20)
  {
    sub_22BB32FA4(v24);
  }

  else
  {
    sub_22BB8AD1C();
    sub_22BCF8848(v36, v37, &protocol conformance descriptor for FeedbackLearning.FlowActionEvent);
    sub_22BB36BDC();
    sub_22BDBB5D4();
    sub_22BCF8A34(v47, v19);
    sub_22BB393D0();
    sub_22BB38124();
    sub_22BCF8848(v38, v39, MEMORY[0x277D72258]);
    sub_22BBBEB1C();
    sub_22BD00C90();
    sub_22BDBB5D4();
    (*(v45 + 32))(v19 + *(v32 + 20), v21, v46);
    sub_22BB8D22C();
    v40 = sub_22BDBB5A4();
    (*(v44 + 8))(v22, v48);
    *(v19 + *(v32 + 24)) = v40 & 1;
    v41 = sub_22BB68F28();
    sub_22BCF8A8C(v41, v42);
    sub_22BB32FA4(v24);
    sub_22BB30848();
    sub_22BCF8AE4(v19, v43);
  }

  sub_22BB376A8();
}

void FeedbackLearning.TaskAction.description.getter()
{
  sub_22BB3B094();
  sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v1);
  sub_22BB3662C();
  sub_22BB37D18();
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD000000000000012, 0x800000022BDD31D0);
  v2 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v3 = sub_22BDB9FE4();
  MEMORY[0x2318A4C40](v3);

  MEMORY[0x2318A4C40](0x6D6574617473202CLL, 0xEE003D6449746E65);
  type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  sub_22BD1D6A4();
  sub_22BB35B60();
  sub_22BCF8848(v4, v5, MEMORY[0x277D1C368]);
  v6 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v6);

  v7 = sub_22BB3AAD8();
  v8(v7);
  MEMORY[0x2318A4C40](0x49746E657665202CLL, 0xEA00000000003D64);
  sub_22BDB43E4();
  sub_22BB377E0();
  sub_22BCF8848(v9, v10, MEMORY[0x277CC9628]);
  v11 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v11);

  MEMORY[0x2318A4C40](0x747563657865202CLL, 0xEB000000003D6465);
  if (*(v0 + *(v2 + 24)))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x2318A4C40](v12, v13);

  sub_22BB36A44();
  sub_22BB36A24();
}

void static FeedbackLearning.TaskFinalResolutionValue.== infix(_:_:)()
{
  sub_22BB30F94();
  v34 = v3;
  v5 = v4;
  type metadata accessor for FeedbackLearning.TaskAction(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v33 = v7;
  sub_22BB2F120();
  v8 = sub_22BDB4C34();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB345CC();
  type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v12);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v13);
  sub_22BD00B4C();
  v14 = sub_22BBE6DE0(&qword_27D8E4920, &qword_22BDC33F0);
  sub_22BB2F0C8(v14);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB395E0();
  v17 = *(v16 + 56);
  sub_22BCF8A8C(v5, v0);
  sub_22BCF8A8C(v34, v0 + v17);
  sub_22BB3A84C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BB30D5C();
    v21 = sub_22BC54A0C();
    sub_22BCF8A8C(v21, v22);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22BB379C8();
      v26(v2, v0 + v17, v8);
      sub_22BDB4C04();
      v27 = *(v10 + 8);
      v27(v2, v8);
      v28 = sub_22BB89D18();
      (v27)(v28);
      sub_22BB327E8();
      sub_22BCF8AE4(v0, v29);
      goto LABEL_12;
    }

    v23 = sub_22BB89D18();
    v24(v23);
    goto LABEL_9;
  }

  sub_22BB30D5C();
  v18 = sub_22BB500C0();
  sub_22BCF8A8C(v18, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BB30848();
    sub_22BCF8AE4(v1, v25);
LABEL_9:
    sub_22BB58728(v0, &qword_27D8E4920, &qword_22BDC33F0);
    goto LABEL_12;
  }

  sub_22BB3AF78();
  sub_22BCF8A34(v0 + v17, v33);
  sub_22BB3B69C();
  if (sub_22BDB43B4())
  {
    type metadata accessor for FeedbackLearning.FlowActionEvent(0);
    static FeedbackLearning.ActionValue.== infix(_:_:)();
    if (v20)
    {
      sub_22BDB9FD4();
    }
  }

  sub_22BB30848();
  sub_22BCF8AE4(v33, v30);
  sub_22BB30848();
  sub_22BCF8AE4(v1, v31);
  sub_22BB327E8();
  sub_22BCF8AE4(v0, v32);
LABEL_12:
  sub_22BB314EC();
}

uint64_t sub_22BCEDBF0(uint64_t a1)
{
  v2 = sub_22BCF952C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEDC2C(uint64_t a1)
{
  v2 = sub_22BCF952C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEDC68(uint64_t a1)
{
  v2 = sub_22BCF94D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEDCA4(uint64_t a1)
{
  v2 = sub_22BCF94D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEDCE0(uint64_t a1)
{
  v2 = sub_22BCF9580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEDD1C(uint64_t a1)
{
  v2 = sub_22BCF9580();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskFinalResolutionValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31014();
  sub_22BB92328();
  sub_22BBE6DE0(&qword_27D8E4928, &qword_22BDC33F8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB38B54(v26, v59);
  type metadata accessor for FeedbackLearning.TaskAction(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v27);
  sub_22BB305A8();
  v60 = v28;
  sub_22BBE6DE0(&qword_27D8E4930, &qword_22BDC3400);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB395E0();
  sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v30);
  sub_22BB3662C();
  v31 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  sub_22BD00790();
  sub_22BBE6DE0(&qword_27D8E4938, &qword_22BDC3408);
  sub_22BB30444();
  v34 = v33;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  sub_22BB34298();
  v37 = *(v22 + 24);
  v36 = *(v22 + 32);
  v38 = sub_22BB8AB74();
  sub_22BB699E4(v38, v39);
  sub_22BCF94D8();
  sub_22BD00CC0();
  sub_22BD00C48();
  sub_22BDBB8A4();
  sub_22BB30D5C();
  sub_22BCF8A8C(v61, v24);
  sub_22BD00A24();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BCF8A34(v24, v60);
    sub_22BB75960();
    sub_22BCF952C();
    sub_22BB72F1C();
    sub_22BDBB5F4();
    sub_22BB69738();
    v42 = sub_22BCF8848(v40, v41, &protocol conformance descriptor for FeedbackLearning.TaskAction);
    sub_22BD00ADC(v42, v43);
    sub_22BD00DA4();
    v44 = sub_22BB692D0();
    v45(v44);
    sub_22BB30848();
    sub_22BCF8AE4(v60, v46);
    v47 = sub_22BC5448C();
    v48(v47);
  }

  else
  {
    v49 = sub_22BD00A5C();
    v50(v49);
    sub_22BCF9580();
    sub_22BD00908();
    sub_22BDBB5F4();
    sub_22BB35B60();
    v53 = sub_22BCF8848(v51, v52, MEMORY[0x277D1C340]);
    sub_22BBC3B18(v53, v54);
    v55 = sub_22BB37D64();
    v56(v55, v31);
    v57 = sub_22BB3DFD0();
    v58(v57, v37);
    (*(v34 + 8))(v23, v36);
  }

  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFinalResolutionValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  sub_22BD00B7C(v13);
  sub_22BBE6DE0(&qword_27D8E4960, &qword_22BDC3410);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F240(v15, v56);
  sub_22BBE6DE0(&qword_27D8E4968, &qword_22BDC3418);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB37048(v17, v57);
  sub_22BBE6DE0(&qword_27D8E4970, &unk_22BDC3420);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB354DC();
  type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v20);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v21);
  sub_22BB3E4C0();
  v22 = v12[3];
  sub_22BB9575C(v12);
  sub_22BCF94D8();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v11)
  {
    v23 = sub_22BB7553C();
    sub_22BD01008(v23);
    if (v24)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    sub_22BB3DE3C(v25, v26, v28, v27);
    sub_22BD00A3C();
    if (v22)
    {
LABEL_9:
      v35 = sub_22BDBB3A4();
      sub_22BB31A08(v35, MEMORY[0x277D841A0]);
      sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BB97E38();
      sub_22BD00E30();
      sub_22BB36D74(v36);
      sub_22BB330A0();
      v37 = sub_22BD00C90();
      v38(v37);
      swift_willThrow();
      swift_unknownObjectRelease();
      v39 = sub_22BB397A4();
      v40(v39, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BCF952C();
        sub_22BB8DB14();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          type metadata accessor for FeedbackLearning.TaskAction(0);
          sub_22BB69738();
          v33 = sub_22BCF8848(v31, v32, &protocol conformance descriptor for FeedbackLearning.TaskAction);
          sub_22BB8AC44(v33, v34);
          sub_22BD00B5C();
          swift_unknownObjectRelease();
          v48 = sub_22BB3FCC8();
          v49(v48);
          v50 = sub_22BB38B68();
          v51(v50);
          sub_22BD00B30();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_22BCF8A34(v10, 0);
          sub_22BD00D58();
          v41 = v58;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BCF9580();
        sub_22BB77E64();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB4C34();
          sub_22BB35B60();
          v46 = sub_22BCF8848(v44, v45, MEMORY[0x277D1C360]);
          sub_22BB34EF8(v46, v47);
          swift_unknownObjectRelease();
          v52 = sub_22BB3FCC8();
          v53(v52);
          v54 = sub_22BB3A280();
          v55(v54);
          sub_22BD00B30();
          goto LABEL_16;
        }
      }

      v42 = sub_22BB3A280();
      v43(v42);
      swift_unknownObjectRelease();
    }

    v12 = v58;
  }

  v41 = v12;
LABEL_12:
  sub_22BB32FA4(v41);
  sub_22BD00E18();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFinalResolutionValue.description.getter()
{
  sub_22BB3B094();
  v2 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v3 = sub_22BB2F0C8(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB3DFC0();
  v4 = sub_22BDB4C34();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v8 = sub_22BB319F8();
  type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(v8);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v9);
  sub_22BB3662C();
  sub_22BB30D5C();
  v10 = sub_22BB345A8();
  sub_22BCF8A8C(v10, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB3AF78();
    v12 = sub_22BB39478();
    sub_22BCF8A34(v12, v13);
    sub_22BB37D18();
    sub_22BDBB334();

    FeedbackLearning.TaskAction.description.getter();
    MEMORY[0x2318A4C40]();

    sub_22BB36A44();
    sub_22BB30848();
    sub_22BCF8AE4(v0, v14);
  }

  else
  {
    sub_22BB379C8();
    v15 = sub_22BB3B69C();
    v16(v15);
    sub_22BB37D18();
    sub_22BDBB334();

    sub_22BDB4C24();
    v17 = sub_22BDBB684();
    MEMORY[0x2318A4C40](v17);

    sub_22BB36A44();
    (*(v6 + 8))(v1, v4);
  }

  sub_22BB345A8();
  sub_22BB36A24();
}

void static FeedbackLearning.TaskFinalResolutionState.== infix(_:_:)()
{
  sub_22BB30F94();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v40 = v10;
  v11 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  sub_22BB2F0C8(v11);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB3721C();
  v13 = sub_22BBE6DE0(&qword_27D8E4980, &qword_22BDC3430);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BB3DFC0();
  v16 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(v15);
  v17 = sub_22BB2F0C8(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  sub_22BB36FD8();
  v18 = sub_22BBE6DE0(&qword_27D8E4988, &unk_22BDC3438);
  sub_22BB2F0C8(v18);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB395E0();
  v21 = *(v20 + 56);
  sub_22BCF8A8C(v7, v0);
  sub_22BCF8A8C(v5, v0 + v21);
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  sub_22BBBE7B4();
  sub_22BB31814(v22, v23, v24);
  if (v33)
  {
    sub_22BBBE7B4();
    sub_22BB31814(v25, v26, v27);
    if (v33)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_22BB37D4C();
    v28 = sub_22BB3A84C();
    sub_22BCF8A8C(v28, v29);
    sub_22BBBE7B4();
    sub_22BB31814(v30, v31, v32);
    if (!v33)
    {
      v34 = *(v13 + 48);
      sub_22BC8D26C();
      sub_22BC8D26C();
      sub_22BB31814(v1, 1, v8);
      if (v35)
      {
        sub_22BB31814(v1 + v34, 1, v8);
        if (v33)
        {
          sub_22BB58728(v1, &qword_27D8E3D98, &qword_22BDC1130);
LABEL_19:
          sub_22BB89DFC();
          goto LABEL_20;
        }
      }

      else
      {
        sub_22BCF95D4(v1, v2);
        sub_22BB31814(v1 + v34, 1, v8);
        if (!v36)
        {
          sub_22BD0079C();
          sub_22BCF8A34(v1 + v34, v40);
          static FeedbackLearning.TaskFinalResolutionValue.== infix(_:_:)();
          sub_22BCF8AE4(v40, type metadata accessor for FeedbackLearning.TaskFinalResolutionValue);
          v38 = sub_22BD00AA4();
          sub_22BCF8AE4(v38, v39);
          sub_22BB58728(v1, &qword_27D8E3D98, &qword_22BDC1130);
          goto LABEL_19;
        }

        sub_22BB327E8();
        sub_22BCF8AE4(v2, v37);
      }

      sub_22BB58728(v1, &qword_27D8E4980, &qword_22BDC3430);
      goto LABEL_19;
    }

    sub_22BB58728(v3, &qword_27D8E3D98, &qword_22BDC1130);
  }

  sub_22BB58728(v0, &qword_27D8E4988, &unk_22BDC3438);
LABEL_20:
  sub_22BB314EC();
}

uint64_t sub_22BCEEBC0(uint64_t a1)
{
  v2 = sub_22BCF9644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEEBFC(uint64_t a1)
{
  v2 = sub_22BCF9644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEEC38(uint64_t a1)
{
  v2 = sub_22BCF96EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEEC74(uint64_t a1)
{
  v2 = sub_22BCF96EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEECB0(uint64_t a1)
{
  v2 = sub_22BCF9698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEECEC(uint64_t a1)
{
  v2 = sub_22BCF9698();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskFinalResolutionState.encode(to:)()
{
  sub_22BB31014();
  sub_22BD00E54();
  sub_22BBE6DE0(&qword_27D8E4990, &qword_22BDC3448);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB38B54(v3, v24);
  sub_22BBE6DE0(&qword_27D8E4998, &qword_22BDC3450);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB354DC();
  v5 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  v8 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(v7);
  v9 = sub_22BB2F0C8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB33230();
  sub_22BBE6DE0(&qword_27D8E49A0, &qword_22BDC3458);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BD00790();
  v11 = sub_22BB393C4();
  sub_22BB699E4(v11, v12);
  sub_22BCF9644();
  sub_22BD00CA8();
  sub_22BDBB8A4();
  sub_22BB37D4C();
  sub_22BD01048();
  v13 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  if (sub_22BB3AA28(v0, 1, v13) == 1)
  {
    sub_22BCF9698();
    sub_22BB71F34();
    sub_22BDBB5F4();
    v14 = sub_22BB37D64();
    v15(v14);
  }

  else
  {
    sub_22BC54A0C();
    sub_22BC8D26C();
    sub_22BCF96EC();
    sub_22BBBEB1C();
    sub_22BB71F34();
    sub_22BDBB5F4();
    type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    sub_22BB97710();
    v20 = sub_22BCF8848(v18, v19, &protocol conformance descriptor for FeedbackLearning.TaskFinalResolutionValue);
    sub_22BD00AB0(v20, v21);
    v22 = sub_22BB692D0();
    v23(v22);
    sub_22BB58728(v1, &qword_27D8E3D98, &qword_22BDC1130);
  }

  v16 = sub_22BB757A0();
  v17(v16);
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFinalResolutionState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v74 = v29;
  sub_22BBE6DE0(&qword_27D8E49C8, &qword_22BDC3460);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB37048(v31, v72);
  sub_22BBE6DE0(&qword_27D8E49D0, &qword_22BDC3468);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB30BA8();
  v33 = sub_22BBE6DE0(&qword_27D8E49D8, &qword_22BDC3470);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB354DC();
  v35 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v36);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v37);
  sub_22BB8AD68();
  v38 = sub_22BD00E6C();
  sub_22BB699E4(v38, v39);
  sub_22BCF9644();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v23)
  {
    v40 = sub_22BD00C14();
    sub_22BD01028(v40);
    v41 = v33;
    if (!v42)
    {
      sub_22BB2F4F4();
      if (v47 == v48)
      {
        __break(1u);
        return;
      }

      sub_22BD00BEC(v43, v44, v45, v46);
      sub_22BD00B8C();
      swift_unknownObjectRelease();
      if (!(v33 >> 1))
      {
        if (v33)
        {
          sub_22BB75960();
          sub_22BCF9698();
          sub_22BBC0580(&_s24TaskFinalResolutionStateO20IncompleteCodingKeysON, &a13);
          v49 = v74;
          swift_unknownObjectRelease();
          v50 = sub_22BB9607C();
          v51(v50);
          v52 = sub_22BB34604();
          v53(v52, v35);
          v54 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
          sub_22BD00938(v54);
        }

        else
        {
          a12 = 0;
          sub_22BCF96EC();
          sub_22BBC0580(&_s24TaskFinalResolutionStateO18CompleteCodingKeysON, &a12);
          v49 = v74;
          type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
          sub_22BB97710();
          sub_22BCF8848(v62, v63, &protocol conformance descriptor for FeedbackLearning.TaskFinalResolutionValue);
          sub_22BD009CC();
          swift_unknownObjectRelease();
          v64 = sub_22BB757A0();
          v65(v64);
          v66 = sub_22BB3A84C();
          v67(v66);
          sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
          v68 = sub_22BD0095C();
          sub_22BB336D0(v68, v69, 1, v70);
          sub_22BCF8A34(v24, v73);
        }

        v71 = sub_22BB68F28();
        sub_22BCF8A34(v71, v49);
        sub_22BB32FA4(0);
        goto LABEL_11;
      }

      v41 = v35;
    }

    v55 = sub_22BDBB3A4();
    sub_22BB31A08(v55, MEMORY[0x277D841A0]);
    v57 = v56;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    v58 = sub_22BBBEDFC();
    sub_22BB36D74(v58);
    sub_22BB330A0();
    (*(v59 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = sub_22BB34604();
    v61(v60, v41);
    v28 = 0;
  }

  sub_22BB32FA4(v28);
LABEL_11:
  sub_22BB376A8();
}

uint64_t FeedbackLearning.TaskFinalResolutionState.description.getter()
{
  sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v0);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v1);
  sub_22BB8AD68();
  v2 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v3 = sub_22BB2F0C8(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BD00A30();
  sub_22BB37D4C();
  v4 = sub_22BB95B5C();
  sub_22BCF8A8C(v4, v5);
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v6 = sub_22BB69A84();
  sub_22BB31814(v6, 1, v7);
  if (!v8)
  {
    sub_22BB2F324();
    sub_22BC8D26C();
    sub_22BDBB334();

    v9 = sub_22BB500C0();
    sub_22BCF95D4(v9, v10);
    sub_22BB3AC54();
    v11 = sub_22BDBAC14();
    MEMORY[0x2318A4C40](v11);

    sub_22BB36A44();
    v12 = sub_22BB33728();
    sub_22BB58728(v12, v13, &qword_22BDC1130);
  }

  return sub_22BB37494();
}

void static FeedbackLearning.TaskEvaluation.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4())
  {
    v2 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
    sub_22BB36D64(v2);
    if (sub_22BDB4C04())
    {
      sub_22BB94E2C(v2[6]);
      if (sub_22BDB7A54() & 1) != 0 && (sub_22BCF0534(*(v1 + v2[7]), *(v0 + v2[7])))
      {
        sub_22BB94E2C(v2[8]);
        static FeedbackLearning.TaskFinalResolutionState.== infix(_:_:)();
        if (v3)
        {
          sub_22BB94E2C(v2[9]);
          if (static FeedbackLearning.TaskOutcome.== infix(_:_:)())
          {
            v4 = v2[10];
            v5 = (v1 + v4);
            v6 = *(v1 + v4 + 16);
            v7 = *(v1 + v4 + 24);
            v8 = (v0 + v4);
            v9 = v8[8];
            v10 = *v8;
            v11 = v5[8];
            v12 = *v5;

            sub_22BD11304(v12, v11, v6, v7, v10, v9);
          }
        }
      }
    }
  }
}

void sub_22BCEF80C()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  sub_22BB36C00();
  MEMORY[0x28223BE20](v5);
  sub_22BD00748();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB7079C();
  if (v10 && v0 && v4 != v2)
  {
    sub_22BB75950();
    v12 = v4 + v11;
    v13 = v2 + v11;
    v15 = *(v14 + 72);
    while (1)
    {
      v16 = sub_22BB3AC54();
      sub_22BCF8A8C(v16, v17);
      v18 = sub_22BB95B5C();
      sub_22BCF8A8C(v18, v19);
      sub_22BB37494();
      static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = sub_22BDB7B74();
      sub_22BCF8AE4(v8, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
      v22 = sub_22BD00E3C();
      sub_22BCF8AE4(v22, v23);
      if (v21)
      {
        v13 += v15;
        v12 += v15;
        if (--v0)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_22BCF8AE4(v8, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
    v24 = sub_22BB3182C();
    sub_22BCF8AE4(v24, v25);
  }

LABEL_12:
  sub_22BB314EC();
}

void sub_22BCEFA08()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for CandidateEntity(0);
  sub_22BB36C00();
  MEMORY[0x28223BE20](v7);
  sub_22BD00748();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB7079C();
  if (v25 && v1 && v5 != v3)
  {
    sub_22BB75950();
    v13 = v5 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      v17 = sub_22BB3AC54();
      sub_22BCF8A8C(v17, v18);
      v19 = sub_22BB95B5C();
      sub_22BCF8A8C(v19, v20);
      sub_22BB37494();
      if ((sub_22BDBA574() & 1) == 0)
      {
        break;
      }

      v21 = *(v6 + 20);
      v22 = *(v0 + v21);
      v23 = *(v0 + v21 + 8);
      v24 = (v10 + v21);
      v25 = v22 == *v24 && v23 == v24[1];
      if (v25)
      {
        sub_22BCF8AE4(v10, type metadata accessor for CandidateEntity);
        sub_22BCF8AE4(v0, type metadata accessor for CandidateEntity);
      }

      else
      {
        v26 = sub_22BDBB6D4();
        sub_22BCF8AE4(v10, type metadata accessor for CandidateEntity);
        v27 = sub_22BD00E3C();
        sub_22BCF8AE4(v27, v28);
        if ((v26 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v14 += v16;
      v13 += v16;
      if (!--v1)
      {
        goto LABEL_17;
      }
    }

    sub_22BCF8AE4(v10, type metadata accessor for CandidateEntity);
    v29 = sub_22BB3182C();
    sub_22BCF8AE4(v29, v30);
  }

LABEL_17:
  sub_22BB314EC();
}

void sub_22BCEFC84()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = _s24StatementExecutionResultOMa(0);
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v62 = v8;
  v9 = sub_22BBE6DE0(&qword_27D8E4E68, &qword_22BDC7260);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB395E0();
  _s19EvaluatorVoteSourceOMa(0);
  sub_22BB30444();
  v63 = v12;
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v20 = *(v5 + 16);
  if (v20 == *(v3 + 16) && v20 && v5 != v3)
  {
    v60 = v17;
    v61 = v16;
    v21 = 0;
    v55 = v3 + 32;
    v56 = v5 + 32;
    v22 = v63;
    v54 = v20;
    while (v21 != v20)
    {
      v23 = (v56 + 32 * v21);
      v24 = (v55 + 32 * v21);
      if (*v23 != *v24 || v23[8] != v24[8])
      {
        goto LABEL_34;
      }

      v26 = *(v23 + 2);
      v67 = *(v24 + 2);
      v68 = v26;
      v27 = *(v26 + 16);
      if (v27 != *(v67 + 16))
      {
        goto LABEL_34;
      }

      v28 = *(v23 + 3);
      v59 = *(v24 + 3);
      v57 = v21;
      v58 = v28;
      if (v27)
      {
        v66 = *(v22 + 80);
        v29 = v68;

        v30 = v67;

        if (v29 != v30)
        {
          v31 = 0;
          v32 = (v66 + 32) & ~v66;
          v66 = v68 + v32;
          v65 = v67 + v32;
          while (v31 < *(v68 + 16))
          {
            v33 = *(v22 + 72) * v31;
            sub_22BB34348();
            sub_22BCF8A8C(v66 + v33, v19);
            if (v31 >= *(v67 + 16))
            {
              goto LABEL_36;
            }

            sub_22BCF8A8C(v65 + v33, v1);
            v34 = *(v9 + 48);
            v35 = sub_22BB94E38();
            sub_22BCF8A8C(v35, v36);
            sub_22BCF8A8C(v1, v34 + v0);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_22BB8B720();
              sub_22BCF8AE4(v1, v37);
              sub_22BCF8AE4(v19, _s19EvaluatorVoteSourceOMa);
              sub_22BB34348();
              v38 = v60;
              sub_22BCF8A8C(v0, v60);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                goto LABEL_32;
              }

              if (*v38 != *(v34 + v0))
              {
LABEL_30:
                sub_22BB368AC();
                sub_22BCF8AE4(v0, v50);
                goto LABEL_33;
              }
            }

            else
            {
              sub_22BB34348();
              v39 = v61;
              sub_22BCF8A8C(v0, v61);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_22BB73F68();
                sub_22BCF8AE4(v1, v51);
                sub_22BCF8AE4(v19, v34);
                sub_22BD007E4();
                sub_22BCF8AE4(v39, v52);
LABEL_32:
                sub_22BB58728(v0, &qword_27D8E4E68, &qword_22BDC7260);
LABEL_33:

                goto LABEL_34;
              }

              sub_22BD007FC();
              v40 = v34 + v0;
              v41 = v62;
              sub_22BCF8A34(v40, v62);
              sub_22BD04890();
              v43 = v42;
              sub_22BCF8AE4(v41, _s24StatementExecutionResultOMa);
              sub_22BB73F68();
              sub_22BCF8AE4(v1, v44);
              sub_22BCF8AE4(v19, v41);
              v45 = sub_22BB32E04();
              sub_22BCF8AE4(v45, v46);
              v22 = v63;
              if ((v43 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            ++v31;
            sub_22BB368AC();
            sub_22BCF8AE4(v0, v47);
            if (v27 == v31)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }
      }

      else
      {
      }

LABEL_26:
      sub_22BB3AC54();
      sub_22BCEFC84();
      v49 = v48;

      if (v49)
      {
        v21 = v57 + 1;
        v20 = v54;
        if (v57 + 1 != v54)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    sub_22BB314EC();
  }
}

void sub_22BCF018C()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v5 = _s24StatementExecutionResultOMa(0);
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BD00E60(v7);
  v8 = sub_22BBE6DE0(&qword_27D8E4E68, &qword_22BDC7260);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BD00A30();
  v10 = _s19EvaluatorVoteSourceOMa(0);
  sub_22BB36C00();
  MEMORY[0x28223BE20](v11);
  sub_22BD00748();
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v20 = &v42 - v19;
  v21 = *(v4 + 16);
  if (v21 != *(v2 + 16) || !v21 || v4 == v2)
  {
    goto LABEL_16;
  }

  v43 = v18;
  v44 = v17;
  sub_22BB75950();
  v23 = v4 + v22;
  v24 = v2 + v22;
  v47 = *(v25 + 72);
  v42 = v20;
  while (1)
  {
    sub_22BCF8A8C(v23, v20);
    sub_22BCF8A8C(v24, v16);
    v26 = *(v8 + 48);
    sub_22BCF8A8C(v20, v0);
    sub_22BCF8A8C(v16, v0 + v26);
    sub_22BB53C48();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22BB34348();
    v27 = v44;
    sub_22BCF8A8C(v0, v44);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_14;
    }

    v28 = *v27;
    v29 = *(v0 + v26);
    sub_22BB368AC();
    sub_22BCF8AE4(v0, v30);
    if (v28 != v29)
    {
      goto LABEL_15;
    }

LABEL_11:
    sub_22BB8B720();
    sub_22BCF8AE4(v16, v40);
    sub_22BCF8AE4(v20, v28);
    v24 += v47;
    v23 += v47;
    if (!--v21)
    {
      goto LABEL_16;
    }
  }

  sub_22BB34348();
  v28 = v43;
  sub_22BCF8A8C(v0, v43);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BD007FC();
    v31 = v16;
    v32 = v10;
    v33 = v8;
    v34 = v45;
    sub_22BCF8A34(v0 + v26, v45);
    sub_22BD04890();
    v46 = v35;
    v36 = v34;
    v8 = v33;
    v10 = v32;
    v16 = v31;
    v20 = v42;
    sub_22BCF8AE4(v36, _s24StatementExecutionResultOMa);
    v37 = sub_22BD00E3C();
    sub_22BCF8AE4(v37, v38);
    sub_22BB368AC();
    sub_22BCF8AE4(v0, v39);
    if ((v46 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_22BD007E4();
  sub_22BCF8AE4(v28, v41);
LABEL_14:
  sub_22BB58728(v0, &qword_27D8E4E68, &qword_22BDC7260);
LABEL_15:
  sub_22BCF8AE4(v16, _s19EvaluatorVoteSourceOMa);
  sub_22BCF8AE4(v20, _s19EvaluatorVoteSourceOMa);
LABEL_16:
  sub_22BB314EC();
}

uint64_t sub_22BCF0534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_22BCF8A8C(v13, v10);
    if (!v11)
    {
      break;
    }

    sub_22BCF8A8C(v14, v7);
    if ((sub_22BDB4C04() & 1) == 0)
    {
      goto LABEL_35;
    }

    static FeedbackLearning.CandidateParameter.== infix(_:_:)();
    if ((v17 & 1) == 0)
    {
      goto LABEL_35;
    }

    static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
    if ((v18 & 1) == 0 || (sub_22BDB7B04() & 1) == 0 || v10[v4[8]] != v7[v4[8]])
    {
      goto LABEL_35;
    }

    v19 = v4[9];
    v20 = v10[v19];
    v21 = v7[v19];
    if (v20 >> 6)
    {
      if (v20 >> 6 != 1)
      {
        switch(v20)
        {
          case 0x81u:
            if (v21 != 129)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
          case 0x82u:
            if (v21 != 130)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
          case 0x83u:
            if (v21 != 131)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
          default:
            if (v21 != 128)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
        }
      }

      if ((v21 & 0xC0) != 0x40 || ((v21 ^ v20) & 0x3F) != 0)
      {
LABEL_35:
        sub_22BCF8AE4(v7, type metadata accessor for FeedbackLearning.CandidateEvaluation);
        sub_22BCF8AE4(v10, type metadata accessor for FeedbackLearning.CandidateEvaluation);
        return 0;
      }
    }

    else if (v21 > 0x3F || v20 != v21)
    {
      goto LABEL_35;
    }

LABEL_21:
    v23 = *&v10[v4[10]];
    sub_22BCF8AE4(v10, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    v24 = *&v7[v4[10]];
    sub_22BCF8AE4(v7, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    result = v23 == v24;
    v25 = v23 != v24 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v25)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22BCF0818()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BDB9B54();
  sub_22BB30444();
  v123 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB30C74();
  v122 = (v8 - v9);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v10);
  v12 = &v95 - v11;
  v13 = sub_22BDB4C34();
  sub_22BB30444();
  v117 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  v108 = v16 - v17;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v18);
  v115 = &v95 - v19;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v20);
  v22 = &v95 - v21;
  v23 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v24);
  sub_22BB30C74();
  v112 = v25 - v26;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v27);
  v109 = (&v95 - v28);
  v113 = sub_22BBE6DE0(&qword_27D8E4E50, &qword_22BDC7250);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB32750();
  type metadata accessor for FeedbackLearning.FlowExpression(0);
  sub_22BB36C00();
  MEMORY[0x28223BE20](v30);
  sub_22BD00748();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v95 - v36;
  v38 = *(v4 + 16);
  if (v38 != *(v2 + 16) || !v38 || v4 == v2)
  {
LABEL_42:
    sub_22BB314EC();
    return;
  }

  v102 = v35;
  v100 = v0;
  v98 = v23;
  v39 = 0;
  sub_22BB75950();
  v41 = v4 + v40;
  v99 = v2 + v40;
  v95 = v117 + 32;
  v110 = (v117 + 8);
  v111 = v13;
  v106 = v22;
  v107 = v117 + 16;
  v120 = (v123 + 8);
  v121 = v123 + 16;
  v43 = *(v42 + 72);
  v114 = v33;
  v116 = v37;
  v105 = v44;
  v97 = v4 + v40;
  v96 = v43;
  while (1)
  {
    v45 = v43 * v39;
    sub_22BB74014();
    sub_22BCF8A8C(v41 + v45, v37);
    if (v39 == v105)
    {
      goto LABEL_47;
    }

    v101 = v39;
    sub_22BB74014();
    sub_22BCF8A8C(v99 + v45, v33);
    if ((sub_22BDB4C04() & 1) == 0)
    {
      goto LABEL_41;
    }

    v46 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
    if ((sub_22BDB4C04() & 1) == 0)
    {
      goto LABEL_41;
    }

    v47 = *(v46 + 24);
    v48 = *(v113 + 48);
    v49 = v116;
    v50 = v100;
    sub_22BCF8A8C(&v116[v47], v100);
    v51 = v114;
    sub_22BCF8A8C(v114 + v47, v50 + v48);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v53 = v112;
      if (EnumCaseMultiPayload != 1)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_24;
      }

      v54 = sub_22BD00774();
      sub_22BCF8A8C(v54, v53);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v91 = sub_22BB3972C();
        v92(v91);
        goto LABEL_40;
      }

      v55 = sub_22BD00A78();
      v56(v55);
      LODWORD(v119) = sub_22BDB4C04();
      v57 = *v110;
      v58 = sub_22BB3AAD8();
      v57(v58);
      v59 = sub_22BB3972C();
      v57(v59);
      if ((v119 & 1) == 0)
      {
        sub_22BB35FC4();
        v94 = v50;
LABEL_37:
        sub_22BCF8AE4(v94, v93);
LABEL_41:
        sub_22BCF8AE4(v114, type metadata accessor for FeedbackLearning.FlowExpression);
        sub_22BCF8AE4(v116, type metadata accessor for FeedbackLearning.FlowExpression);
        goto LABEL_42;
      }
    }

    else
    {
      v60 = sub_22BD00774();
      v61 = v109;
      sub_22BCF8A8C(v60, v109);
      v62 = *v61;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_40:
        sub_22BB58728(v50, &qword_27D8E4E50, &qword_22BDC7250);
        goto LABEL_41;
      }

      v63 = *(v50 + v48);
      v118 = *(v62 + 16);
      v119 = v63;
      if (v118 != *(v63 + 16))
      {
LABEL_36:

        sub_22BB35FC4();
        v94 = v100;
        goto LABEL_37;
      }

      if (v118 && v62 != v119)
      {
        v64 = 0;
        sub_22BB2F390();
        v104 = v62 + v65;
        v103 = v119 + v65;
        while (v64 < *(v62 + 16))
        {
          v66 = *(v117 + 72) * v64;
          v67 = *(v117 + 16);
          v68 = v106;
          v69 = v111;
          v67(v106, v104 + v66, v111);
          if (v64 >= *(v119 + 16))
          {
            goto LABEL_46;
          }

          v70 = v115;
          v67(v115, v103 + v66, v69);
          sub_22BB35B60();
          sub_22BCF8848(&qword_28142DD10, v71, MEMORY[0x277D1C358]);
          sub_22BD00A24();
          v72 = sub_22BDBABD4();
          v73 = *v110;
          (*v110)(v70, v69);
          (v73)(v68, v69);
          if ((v72 & 1) == 0)
          {
            goto LABEL_36;
          }

          if (v118 == ++v64)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_45;
      }

LABEL_22:

      v50 = v100;
      v51 = v114;
      v49 = v116;
    }

LABEL_24:
    sub_22BB35FC4();
    sub_22BCF8AE4(v50, v74);
    v75 = *(v102 + 20);
    v76 = *(v49 + v75);
    v77 = *(v51 + v75);
    v78 = *(v76 + 16);
    if (v78 != *(v77 + 16))
    {
      goto LABEL_41;
    }

    if (v78 && v76 != v77)
    {
      break;
    }

LABEL_32:
    v88 = v116;
    v33 = v114;
    sub_22BCF1134();
    v90 = v89;
    sub_22BCF8AE4(v33, type metadata accessor for FeedbackLearning.FlowExpression);
    sub_22BCF8AE4(v88, type metadata accessor for FeedbackLearning.FlowExpression);
    if (v90)
    {
      v39 = v101 + 1;
      v37 = v116;
      v41 = v97;
      v43 = v96;
      if (v101 + 1 != v105)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  v79 = 0;
  sub_22BB2F390();
  v118 = v77 + v80;
  v119 = v76 + v80;
  while (v79 < *(v76 + 16))
  {
    v81 = *(v123 + 72) * v79;
    v82 = *(v123 + 16);
    v82(v12, v119 + v81, v5);
    if (v79 >= *(v77 + 16))
    {
      goto LABEL_44;
    }

    v83 = v12;
    v84 = v122;
    v82(v122, v118 + v81, v5);
    sub_22BCF8848(&qword_27D8E4E58, MEMORY[0x277D1E890], MEMORY[0x277D1E8A0]);
    v85 = sub_22BDBABD4();
    v86 = *v120;
    v87 = v84;
    v12 = v83;
    (*v120)(v87, v5);
    v86(v83, v5);
    if ((v85 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v78 == ++v79)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_22BCF1134()
{
  sub_22BB30F94();
  v4 = v3;
  sub_22BB30F68();
  v65 = sub_22BDB81A4();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v60 = v8;
  sub_22BB2F120();
  v63 = sub_22BDB9564();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v59 = v12;
  v13 = sub_22BB2F120();
  v68 = type metadata accessor for FeedbackLearning.ActionValue(v13);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v15);
  v64 = &v53 - v16;
  v67 = sub_22BBE6DE0(&qword_27D8E4E60, &qword_22BDC7258);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BB30CE4();
  v66 = type metadata accessor for FeedbackLearning.FlowActionEvent(v18);
  sub_22BB36C00();
  MEMORY[0x28223BE20](v19);
  sub_22BD00748();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v26 = *(v0 + 16);
  if (v26 == *(v4 + 16) && v26 && v0 != v4)
  {
    sub_22BB75950();
    v28 = v0 + v27;
    v29 = v4 + v27;
    v54 = (v10 + 32);
    v55 = v1;
    v53 = (v6 + 32);
    v56 = (v6 + 8);
    v57 = (v10 + 8);
    v31 = *(v30 + 72);
    v61 = v25;
    v62 = v22;
    while (1)
    {
      v32 = sub_22BB345A8();
      sub_22BCF8A8C(v32, v33);
      v34 = sub_22BD00E3C();
      sub_22BCF8A8C(v34, v35);
      if ((sub_22BDB43B4() & 1) == 0)
      {
        break;
      }

      v36 = *(v66 + 20);
      v37 = v25;
      v38 = *(v67 + 48);
      sub_22BCF8A8C(&v37[v36], v2);
      sub_22BCF8A8C(v22 + v36, v2 + v38);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = sub_22BB3CF28();
        v40 = v55;
        sub_22BCF8A8C(v39, v55);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v56)(v40, v65);
          goto LABEL_16;
        }

        v41 = v2 + v38;
        v42 = v60;
        v43 = v65;
        (*v53)(v60, v41, v65);
        sub_22BD0073C();
        v58 = sub_22BDB8184();
        v44 = *v56;
        (*v56)(v42, v43);
        v45 = sub_22BB8E548();
        (v44)(v45);
      }

      else
      {
        v46 = sub_22BB3CF28();
        v47 = v64;
        sub_22BCF8A8C(v46, v64);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v57)(v47, v63);
LABEL_16:
          sub_22BB58728(v2, &qword_27D8E4E60, &qword_22BDC7258);
          v22 = v62;
          break;
        }

        (*v54)(v59, v2 + v38, v63);
        sub_22BC5448C();
        v58 = sub_22BDB9534();
        v48 = *v57;
        v49 = sub_22BB33728();
        (v48)(v49);
        v50 = sub_22BB58D2C();
        (v48)(v50);
      }

      sub_22BCF8AE4(v2, type metadata accessor for FeedbackLearning.ActionValue);
      v25 = v61;
      v22 = v62;
      if ((v58 & 1) == 0)
      {
        break;
      }

      sub_22BCF8AE4(v62, type metadata accessor for FeedbackLearning.FlowActionEvent);
      sub_22BCF8AE4(v25, type metadata accessor for FeedbackLearning.FlowActionEvent);
      v29 += v31;
      v28 += v31;
      if (!--v26)
      {
        goto LABEL_18;
      }
    }

    sub_22BCF8AE4(v22, type metadata accessor for FeedbackLearning.FlowActionEvent);
    v51 = sub_22BB95B5C();
    sub_22BCF8AE4(v51, v52);
  }

LABEL_18:
  sub_22BB314EC();
}

void sub_22BCF1674()
{
  sub_22BB30F94();
  v31 = v2;
  v32 = v3;
  v30 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9(0);
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v14);
  sub_22BB3E4C0();
  v15 = *(v8 + 16);
  if (v15 == *(v6 + 16) && v15 && v8 != v6)
  {
    sub_22BB2F390();
    v17 = v8 + v16;
    v18 = v6 + v16;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = (v19 - 8);
    v28 = *(v19 + 56);
    v29 = v20;
    while (1)
    {
      v22 = sub_22BB32E04();
      v29(v22);
      if (!v15)
      {
        break;
      }

      v23 = v19;
      (v29)(v0, v18, v10);
      sub_22BCF8848(v30, v31, v32);
      v24 = sub_22BDBABD4();
      v25 = *v21;
      v26 = sub_22BB95B5C();
      v25(v26);
      (v25)(v1, v10);
      if (v24)
      {
        v18 += v28;
        v17 += v28;
        v27 = v15-- == 1;
        v19 = v23;
        if (!v27)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_22BB314EC();
  }
}

uint64_t static FeedbackLearning.TypedCandidateInteraction.== infix(_:_:)()
{
  sub_22BB35F54();
  static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  sub_22BB36D64(v1);

  return sub_22BDB7B74();
}

uint64_t sub_22BCF1884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022BDD32F0 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6F6974616E6F64 && a2 == 0xEF736E6F6974704FLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_22BDBB6D4();

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

unint64_t sub_22BCF1A90(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6974756C6F736572;
      break;
    case 4:
      result = 0x656D6F6374756FLL;
      break;
    case 5:
      result = 0x6E6F6974616E6F64;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22BCF1B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  sub_22BBE6DE0(&qword_27D8E50E8, &qword_22BDC7788);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB3721C();
  sub_22BB3B3AC();
  v18 = sub_22BCFEB78();
  sub_22BD0071C(&_s18TaskDefinitionThinO23CandidateEvaluationThinV10CodingKeysON, v19, v18);
  sub_22BDB4C34();
  sub_22BB35B60();
  sub_22BCF8848(v20, v21, MEMORY[0x277D1C340]);
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v16)
  {
    _s18TaskDefinitionThinO23CandidateEvaluationThinVMa(0);
    sub_22BD0096C();
    v23 = sub_22BD00CFC(v22);
    type metadata accessor for FeedbackLearning.CandidateParameter(v23);
    sub_22BB58AD4();
    sub_22BCF8848(v24, v25, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
    sub_22BB3AD98();
    sub_22BDBB664();
    sub_22BD00CFC(2);
    sub_22BDB7B44();
    sub_22BB36E04();
    sub_22BCF8848(v26, v27, MEMORY[0x277D1D610]);
    sub_22BB3AD98();
    sub_22BDBB664();
    sub_22BBC05F0();
    sub_22BCF8D00();
    sub_22BB337A0();
    sub_22BDBB664();
    sub_22BB3E098();
    sub_22BCF8D54();
    sub_22BB337A0();
    sub_22BDBB664();
    sub_22BBC0278();
    sub_22BCF8DA8();
    sub_22BB337A0();
    sub_22BDBB664();
  }

  v28 = sub_22BB35198();
  v29(v28);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void sub_22BCF1DCC()
{
  sub_22BB31014();
  v5 = v4;
  v44 = v6;
  v50 = sub_22BDB7B44();
  sub_22BB30444();
  v46 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v45 = v9;
  v10 = sub_22BB2F120();
  type metadata accessor for FeedbackLearning.CandidateParameter(v10);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB33230();
  v12 = sub_22BDB4C34();
  sub_22BB30444();
  v51 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BBE6DE0(&qword_27D8E50D8, &qword_22BDC7780);
  sub_22BB30444();
  v47 = v16;
  v48 = v15;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BB30CE4();
  v49 = _s18TaskDefinitionThinO23CandidateEvaluationThinVMa(v18);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v19);
  sub_22BB305A8();
  v21 = v20;
  v22 = sub_22BB345A8();
  sub_22BB699E4(v22, v23);
  sub_22BCFEB78();
  sub_22BD00C6C();
  sub_22BDBB894();
  if (v1)
  {
    sub_22BB32FA4(v5);
  }

  else
  {
    sub_22BB35B60();
    sub_22BCF8848(v24, v25, MEMORY[0x277D1C360]);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v51 + 32))(v21, v2, v12);
    sub_22BB58AD4();
    sub_22BCF8848(v26, v27, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    sub_22BB31158();
    sub_22BCF8A34(v0, v21 + v28);
    LOBYTE(v52) = 2;
    sub_22BB36E04();
    sub_22BCF8848(v29, v30, MEMORY[0x277D1D628]);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v46 + 32))(v21 + v49[6], v45, v50);
    sub_22BBC05F0();
    v31 = sub_22BCF8DFC();
    sub_22BBCC100(&type metadata for FeedbackLearning.CandidateParameterResolution, v32, v33, v34, v31);
    *(v21 + v49[7]) = 2;
    sub_22BB3E098();
    v35 = sub_22BCF8E50();
    sub_22BBCC100(&type metadata for FeedbackLearning.CandidateOutcome, v36, v37, v38, v35);
    *(v21 + v49[8]) = 2;
    sub_22BBC0278();
    v39 = sub_22BCF8EA4();
    sub_22BBCC100(&type metadata for FeedbackLearning.CandidateDonationOptionSet, v40, v41, v42, v39);
    (*(v47 + 8))(v3, v48);
    *(v21 + v49[9]) = v52;
    v43 = sub_22BB6BE0C();
    sub_22BCF8A8C(v43, v44);
    sub_22BB32FA4(v5);
    sub_22BCF8AE4(v21, _s18TaskDefinitionThinO23CandidateEvaluationThinVMa);
  }

  sub_22BD00C9C();
  sub_22BB376A8();
}

uint64_t sub_22BCF230C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

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

uint64_t sub_22BCF23DC(char a1)
{
  if (a1)
  {
    return 0x6465747563657865;
  }

  else
  {
    return 0x76456E6F69746361;
  }
}

void sub_22BCF2420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BD00EDC();
  v18 = sub_22BBE6DE0(&qword_27D8E4EE0, &qword_22BDC7660);
  sub_22BB30444();
  v20 = v19;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB354DC();
  sub_22BB3B3AC();
  v22 = sub_22BCFE590();
  sub_22BD00758(&_s18TaskDefinitionThinO14TaskActionThinV10CodingKeysON, v23, v22);
  sub_22BD00E24();
  sub_22BDB43E4();
  sub_22BB377E0();
  sub_22BCF8848(v24, v25, MEMORY[0x277CC95F8]);
  sub_22BB36BDC();
  sub_22BB527FC();
  sub_22BDBB664();
  if (!v16)
  {
    _s18TaskDefinitionThinO14TaskActionThinVMa(0);
    sub_22BB393D0();
    sub_22BDBB634();
  }

  (*(v20 + 8))(v17, v18);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void sub_22BCF2578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31014();
  v26 = v25;
  sub_22BDB43E4();
  sub_22BB30444();
  v42 = v28;
  v43 = v27;
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  sub_22BD00790();
  sub_22BBE6DE0(&qword_27D8E4ED0, &qword_22BDC7658);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB36808();
  v30 = _s18TaskDefinitionThinO14TaskActionThinVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v31);
  sub_22BB3662C();
  v32 = sub_22BC54A0C();
  sub_22BB699E4(v32, v33);
  sub_22BCFE590();
  sub_22BD00918();
  sub_22BD00C48();
  sub_22BDBB894();
  if (v22)
  {
    sub_22BB32FA4(v26);
  }

  else
  {
    sub_22BB377E0();
    sub_22BCF8848(v34, v35, MEMORY[0x277CC9618]);
    sub_22BB36BDC();
    sub_22BDBB5D4();
    (*(v42 + 32))(v23, v24, v43);
    sub_22BB393D0();
    v36 = sub_22BDBB5A4();
    v37 = sub_22BB97698();
    v38(v37);
    *(v23 + *(v30 + 20)) = v36 & 1;
    v39 = sub_22BB68F28();
    sub_22BCF8A8C(v39, v40);
    sub_22BB32FA4(v26);
    sub_22BB695B8();
    sub_22BCF8AE4(v23, v41);
  }

  sub_22BB975A0();
  sub_22BB376A8();
}

uint64_t sub_22BCF281C()
{
  sub_22BB35F54();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (sub_22BB32E28(0x65756C6176, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6E6F69746361 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28(0x6E6F69746361, 0xE600000000000000);
    sub_22BBC05FC();
    sub_22BD00D98();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

void sub_22BCF28B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31014();
  sub_22BB92328();
  sub_22BBE6DE0(&qword_27D8E4F20, &qword_22BDC7680);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB38B54(v26, v59);
  _s18TaskDefinitionThinO14TaskActionThinVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v27);
  sub_22BB305A8();
  v60 = v28;
  sub_22BBE6DE0(&qword_27D8E4F28, &qword_22BDC7688);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB395E0();
  sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v30);
  sub_22BB3662C();
  v31 = _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  sub_22BD00790();
  sub_22BBE6DE0(&qword_27D8E4F30, &qword_22BDC7690);
  sub_22BB30444();
  v34 = v33;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  sub_22BB34298();
  v37 = *(v22 + 24);
  v36 = *(v22 + 32);
  v38 = sub_22BB8AB74();
  sub_22BB699E4(v38, v39);
  sub_22BCFE5E4();
  sub_22BD00CC0();
  sub_22BD00C48();
  sub_22BDBB8A4();
  sub_22BCF8A8C(v61, v24);
  sub_22BD00A24();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BCF8A34(v24, v60);
    sub_22BB75960();
    sub_22BCFE638();
    sub_22BB72F1C();
    sub_22BDBB5F4();
    sub_22BBBE724();
    v42 = sub_22BCF8848(v40, v41, &unk_22BDC75CC);
    sub_22BD00ADC(v42, v43);
    sub_22BD00DA4();
    v44 = sub_22BB692D0();
    v45(v44);
    sub_22BB695B8();
    sub_22BCF8AE4(v60, v46);
    v47 = sub_22BC5448C();
    v48(v47);
  }

  else
  {
    v49 = sub_22BD00A5C();
    v50(v49);
    sub_22BCFE68C();
    sub_22BD00908();
    sub_22BDBB5F4();
    sub_22BB35B60();
    v53 = sub_22BCF8848(v51, v52, MEMORY[0x277D1C340]);
    sub_22BBC3B18(v53, v54);
    v55 = sub_22BB37D64();
    v56(v55, v31);
    v57 = sub_22BB3DFD0();
    v58(v57, v37);
    (*(v34 + 8))(v23, v36);
  }

  sub_22BD00C3C();
  sub_22BB376A8();
}

void sub_22BCF2CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  sub_22BD00B7C(v13);
  sub_22BBE6DE0(&qword_27D8E4EE8, &qword_22BDC7668);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F240(v15, v56);
  sub_22BBE6DE0(&qword_27D8E4EF0, &qword_22BDC7670);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB37048(v17, v57);
  sub_22BBE6DE0(&qword_27D8E4EF8, &qword_22BDC7678);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB354DC();
  _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v20);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v21);
  sub_22BB3E4C0();
  v22 = v12[3];
  sub_22BB9575C(v12);
  sub_22BCFE5E4();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v11)
  {
    v23 = sub_22BB7553C();
    sub_22BD01008(v23);
    if (v24)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v29 == v30)
    {
      __break(1u);
      return;
    }

    sub_22BB3DE3C(v25, v26, v28, v27);
    sub_22BD00A3C();
    if (v22)
    {
LABEL_9:
      v35 = sub_22BDBB3A4();
      sub_22BB31A08(v35, MEMORY[0x277D841A0]);
      sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BB97E38();
      sub_22BD00E30();
      sub_22BB36D74(v36);
      sub_22BB330A0();
      v37 = sub_22BD00C90();
      v38(v37);
      swift_willThrow();
      swift_unknownObjectRelease();
      v39 = sub_22BB397A4();
      v40(v39, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BCFE638();
        sub_22BB8DB14();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          _s18TaskDefinitionThinO14TaskActionThinVMa(0);
          sub_22BBBE724();
          v33 = sub_22BCF8848(v31, v32, &unk_22BDC75F4);
          sub_22BB8AC44(v33, v34);
          sub_22BD00B5C();
          swift_unknownObjectRelease();
          v48 = sub_22BB3FCC8();
          v49(v48);
          v50 = sub_22BB38B68();
          v51(v50);
          sub_22BD00B30();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_22BCF8A34(v10, 0);
          sub_22BD00D58();
          v41 = v58;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BCFE68C();
        sub_22BB77E64();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB4C34();
          sub_22BB35B60();
          v46 = sub_22BCF8848(v44, v45, MEMORY[0x277D1C360]);
          sub_22BB34EF8(v46, v47);
          swift_unknownObjectRelease();
          v52 = sub_22BB3FCC8();
          v53(v52);
          v54 = sub_22BB3A280();
          v55(v54);
          sub_22BD00B30();
          goto LABEL_16;
        }
      }

      v42 = sub_22BB3A280();
      v43(v42);
      swift_unknownObjectRelease();
    }

    v12 = v58;
  }

  v41 = v12;
LABEL_12:
  sub_22BB32FA4(v41);
  sub_22BD00E18();
  sub_22BB376A8();
}

uint64_t sub_22BCF315C()
{
  sub_22BB35F54();
  v3 = v1 == 0x6574656C706D6F63 && v2 == 0xE800000000000000;
  if (v3 || (sub_22BB32E28(0x6574656C706D6F63, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x656C706D6F636E69 && v0 == 0xEA00000000006574)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28(0x656C706D6F636E69, 0xEA00000000006574);
    sub_22BBC05FC();
    sub_22BD00D98();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_22BCF3204(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BDBB6D4();
    sub_22BBC05FC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_22BCF3270()
{
  sub_22BB31014();
  sub_22BD00E54();
  sub_22BBE6DE0(&qword_27D8E4FE8, &qword_22BDC76F0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB38B54(v3, v24);
  sub_22BBE6DE0(&qword_27D8E4FF0, &qword_22BDC76F8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB354DC();
  v5 = sub_22BBE6DE0(&qword_27D8E4FF8, &qword_22BDC7700);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  v8 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v7);
  v9 = sub_22BB2F0C8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB33230();
  sub_22BBE6DE0(&qword_27D8E5000, &qword_22BDC7708);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BD00790();
  v11 = sub_22BB393C4();
  sub_22BB699E4(v11, v12);
  sub_22BCFE830();
  sub_22BD00CA8();
  sub_22BDBB8A4();
  sub_22BD01048();
  v13 = sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  if (sub_22BB3AA28(v0, 1, v13) == 1)
  {
    sub_22BCFE884();
    sub_22BB71F34();
    sub_22BDBB5F4();
    v14 = sub_22BB37D64();
    v15(v14);
  }

  else
  {
    sub_22BC54A0C();
    sub_22BC8D26C();
    sub_22BCFE8D8();
    sub_22BBBEB1C();
    sub_22BB71F34();
    sub_22BDBB5F4();
    _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
    sub_22BBBDE8C();
    v20 = sub_22BCF8848(v18, v19, &unk_22BDC757C);
    sub_22BD00AB0(v20, v21);
    v22 = sub_22BB692D0();
    v23(v22);
    sub_22BB58728(v1, &qword_27D8E4FF8, &qword_22BDC7700);
  }

  v16 = sub_22BB757A0();
  v17(v16);
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCF35CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  sub_22BBE6DE0(&qword_27D8E4FB0, &qword_22BDC76D8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB37048(v30, v71);
  sub_22BBE6DE0(&qword_27D8E4FB8, &qword_22BDC76E0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB30BA8();
  v32 = sub_22BBE6DE0(&qword_27D8E4FC0, &qword_22BDC76E8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB354DC();
  v34 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v35);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v36);
  sub_22BB8AD68();
  v37 = sub_22BD00E6C();
  sub_22BB699E4(v37, v38);
  sub_22BCFE830();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v23)
  {
    v39 = sub_22BD00C14();
    sub_22BD01028(v39);
    v40 = v32;
    if (!v41)
    {
      sub_22BB2F4F4();
      if (v46 == v47)
      {
        __break(1u);
        return;
      }

      sub_22BD00BEC(v42, v43, v44, v45);
      sub_22BD00B8C();
      swift_unknownObjectRelease();
      if (!(v32 >> 1))
      {
        if (v32)
        {
          sub_22BB75960();
          sub_22BCFE884();
          sub_22BBC0580(&_s18TaskDefinitionThinO28TaskFinalResolutionStateThinO20IncompleteCodingKeysON, &a13);
          swift_unknownObjectRelease();
          v48 = sub_22BB9607C();
          v49(v48);
          v50 = sub_22BB34604();
          v51(v50, v34);
          v52 = sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
          sub_22BD00938(v52);
        }

        else
        {
          a12 = 0;
          sub_22BCFE8D8();
          sub_22BBC0580(&_s18TaskDefinitionThinO28TaskFinalResolutionStateThinO18CompleteCodingKeysON, &a12);
          _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
          sub_22BBBDE8C();
          sub_22BCF8848(v60, v61, &unk_22BDC75A4);
          sub_22BD009CC();
          swift_unknownObjectRelease();
          v62 = sub_22BB757A0();
          v63(v62);
          v64 = sub_22BB3A84C();
          v65(v64);
          sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
          v66 = sub_22BD0095C();
          sub_22BB336D0(v66, v67, 1, v68);
          sub_22BB2F530();
          sub_22BCF8A34(v24, v72);
        }

        sub_22BB2F530();
        v69 = sub_22BB8AB74();
        sub_22BCF8A34(v69, v70);
        sub_22BB32FA4(0);
        goto LABEL_11;
      }

      v40 = v34;
    }

    v53 = sub_22BDBB3A4();
    sub_22BB31A08(v53, MEMORY[0x277D841A0]);
    v55 = v54;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    v56 = sub_22BBBEDFC();
    sub_22BB36D74(v56);
    sub_22BB330A0();
    (*(v57 + 104))(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = sub_22BB34604();
    v59(v58, v40);
    v28 = 0;
  }

  sub_22BB32FA4(v28);
LABEL_11:
  sub_22BB376A8();
}

uint64_t sub_22BCF3A94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022BDD3310 == a2;
  if (v3 || (sub_22BB32E28(0xD000000000000010, 0x800000022BDD3310) & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_22BD00D44();
    if (a1 == 0x6C61636974697263 && a2 == v6)
    {

      return 1;
    }

    else
    {
      sub_22BB32E28(0x6C61636974697263, v6);
      sub_22BBC05FC();
      sub_22BD00D98();
      if (v3)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_22BCF3B3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BDBB6D4();
    sub_22BBC05FC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_22BCF3BA4()
{
  sub_22BB31014();
  sub_22BBE6DE0(&qword_27D8E4F70, &qword_22BDC76B0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB340E0(v4, v33);
  sub_22BBE6DE0(&qword_27D8E4F78, &qword_22BDC76B8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB37048(v6, v34);
  v7 = sub_22BDB4C84();
  sub_22BB30444();
  v35 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v10 = sub_22BB3848C();
  v11 = _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(v10);
  v12 = sub_22BB2F0C8(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BB72E10();
  sub_22BBE6DE0(&qword_27D8E4F80, &qword_22BDC76C0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB36808();
  v14 = sub_22BB53C48();
  sub_22BB699E4(v14, v15);
  sub_22BCFE6E0();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BCF8A8C(v0, v1);
  sub_22BBBE7B4();
  if (sub_22BB3AA28(v16, v17, v18) == 1)
  {
    sub_22BCFE734();
    sub_22BB52E84();
    sub_22BDBB5F4();
    v19 = sub_22BB37D64();
    v20(v19);
  }

  else
  {
    (*(v35 + 32))(v2, v1, v7);
    sub_22BCFE788();
    sub_22BB77E64();
    sub_22BB52E84();
    sub_22BDBB5F4();
    sub_22BB69AD8();
    v25 = sub_22BCF8848(v23, v24, MEMORY[0x277D1C430]);
    sub_22BB980C8(v2, v26, v27, v28, v25);
    sub_22BB38B78();
    v29 = sub_22BB3ADA8();
    v30(v29);
    v31 = sub_22BB977C4();
    v32(v31, v7);
  }

  v21 = sub_22BD0073C();
  v22(v21);
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCF3F18()
{
  sub_22BB31014();
  v4 = v3;
  v54 = v5;
  sub_22BBE6DE0(&qword_27D8E4F40, &qword_22BDC7698);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB2F240(v7, v52);
  v53 = sub_22BBE6DE0(&qword_27D8E4F48, &qword_22BDC76A0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v9 = sub_22BBE6DE0(&qword_27D8E4F50, &qword_22BDC76A8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB32750();
  _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v12);
  sub_22BB8AD68();
  v13 = sub_22BD00E6C();
  sub_22BB699E4(v13, v14);
  sub_22BCFE6E0();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v1)
  {
    v15 = sub_22BDBB5E4();
    sub_22BD01028(v15);
    v16 = v9;
    if (!v17)
    {
      sub_22BB2F4F4();
      if (v22 == v23)
      {
        __break(1u);
        return;
      }

      v24 = v9;
      v25 = *(v21 + v19);
      sub_22BCFD8E0(v19 + 1, v18, v4, v21, v19, v20);
      v27 = v26;
      v29 = v28;
      swift_unknownObjectRelease();
      if (v27 == v29 >> 1)
      {
        if (v25)
        {
          sub_22BB75960();
          sub_22BCFE734();
          sub_22BB8DB14();
          sub_22BB31D34();
          sub_22BDBB554();
          v30 = v54;
          swift_unknownObjectRelease();
          v38 = sub_22BB34F2C();
          v39(v38);
          v40 = sub_22BB33728();
          v41(v40);
          v42 = sub_22BDB4C84();
          sub_22BD00938(v42);
        }

        else
        {
          sub_22BCFE788();
          sub_22BB31D34();
          sub_22BDBB554();
          v43 = sub_22BDB4C84();
          sub_22BB69AD8();
          sub_22BCF8848(v44, v45, MEMORY[0x277D1C438]);
          sub_22BDBB5D4();
          swift_unknownObjectRelease();
          v46 = sub_22BB977C4();
          v47(v46, v53);
          v48 = sub_22BB33728();
          v49(v48);
          sub_22BB336D0(v2, 0, 1, v43);
          v50 = sub_22BB6BE0C();
          sub_22BCF8A34(v50, v0);
          v30 = v54;
        }

        v51 = sub_22BB68F28();
        sub_22BCF8A34(v51, v30);
        sub_22BB32FA4(v4);
        goto LABEL_11;
      }

      v16 = v24;
    }

    v31 = sub_22BDBB3A4();
    sub_22BB31A08(v31, MEMORY[0x277D841A0]);
    v33 = v32;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    v34 = sub_22BBBEDFC();
    sub_22BB36D74(v34);
    sub_22BB30474();
    (*(v35 + 104))(v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = sub_22BB34604();
    v37(v36, v16);
  }

  sub_22BB32FA4(v4);
LABEL_11:
  sub_22BB376A8();
}

uint64_t sub_22BCF4478()
{
  sub_22BB35F54();
  v3 = v1 == 0x6E776F6E6B6E75 && v2 == 0xE700000000000000;
  if (v3 || (sub_22BB32E28(0x6E776F6E6B6E75, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6465727265666E69 && v0 == 0xEF73736563637553;
    if (v5 || (sub_22BB32E28(0x6465727265666E69, 0xEF73736563637553) & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_22BD00D44();
      v7 = v1 == 0x6465727265666E69 && v0 == v6;
      if (v7 || (sub_22BB32E28(0x6465727265666E69, v6) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = sub_22BD00D14();
        v10 = v1 == v8 && v0 == v9;
        if (v10 || (sub_22BB32E28(v8, v9) & 1) != 0)
        {

          return 3;
        }

        else if (v1 == 0x6C65636E6163 && v0 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          sub_22BB32E28(0x6C65636E6163, 0xE600000000000000);
          sub_22BBC05FC();
          if (v1)
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

uint64_t sub_22BCF45BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BDBB6D4();
    sub_22BBC05FC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_22BCF4628()
{
  sub_22BB31014();
  sub_22BD00E54();
  sub_22BBE6DE0(&qword_27D8E50A0, &qword_22BDC7750);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB2F240(v3, v32);
  v35 = sub_22BBE6DE0(&qword_27D8E50A8, &qword_22BDC7758);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB30BA8();
  sub_22BD00C78(v5);
  sub_22BBE6DE0(&qword_27D8E50B0, &qword_22BDC7760);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB6BB20(v7, v33);
  _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v34 = v9;
  sub_22BBE6DE0(&qword_27D8E50B8, &qword_22BDC7768);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB34298();
  sub_22BBE6DE0(&qword_27D8E50C0, &qword_22BDC7770);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB3721C();
  v12 = _s18TaskDefinitionThinO14TaskStatusThinOMa(0);
  v13 = sub_22BB2F0C8(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  sub_22BB33230();
  sub_22BBE6DE0(&qword_27D8E50C8, &qword_22BDC7778);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB36808();
  v15 = sub_22BB3A19C();
  sub_22BB699E4(v15, v16);
  sub_22BCFE980();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BD01048();
  sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  v17 = sub_22BD00E84();
  switch(sub_22BB3AA28(v17, 4, v18))
  {
    case 1u:
      sub_22BCFEB24();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v27 = sub_22BB9607C();
      goto LABEL_7;
    case 2u:
      sub_22BD00E78();
      sub_22BCFEAD0();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v27 = sub_22BB3B088();
      goto LABEL_7;
    case 3u:
      sub_22BD00DF8();
      sub_22BCFEA28();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v27 = sub_22BB37D64();
      v28 = v35;
      goto LABEL_7;
    case 4u:
      sub_22BB3E098();
      sub_22BCFE9D4();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v27 = sub_22BB37D64();
LABEL_7:
      v29(v27, v28);
      v30 = sub_22BD0073C();
      v31(v30);
      break;
    default:
      sub_22BCF8A34(v0, v34);
      sub_22BB8D22C();
      sub_22BCFEA7C();
      sub_22BB52E84();
      sub_22BDBB5F4();
      sub_22BD008A4();
      v21 = sub_22BCF8848(v19, v20, &unk_22BDC752C);
      sub_22BBC2544(v21, v22);
      v23 = sub_22BB3AB0C();
      v24(v23, v1);
      sub_22BCF8AE4(v34, _s18TaskDefinitionThinO21TaskFailureReasonThinOMa);
      v25 = sub_22BD0073C();
      v26(v25);
      break;
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCF4B70()
{
  sub_22BB31014();
  sub_22BD00D8C();
  v68 = v1;
  sub_22BBE6DE0(&qword_27D8E5038, &qword_22BDC7720);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB38B54(v3, v63);
  sub_22BBE6DE0(&qword_27D8E5040, &qword_22BDC7728);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB6BB20(v5, v64);
  sub_22BBE6DE0(&qword_27D8E5048, &qword_22BDC7730);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB340E0(v7, v65);
  v67 = sub_22BBE6DE0(&qword_27D8E5050, &qword_22BDC7738);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  sub_22BD00C78(v9);
  sub_22BBE6DE0(&qword_27D8E5058, &qword_22BDC7740);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB52928();
  v11 = sub_22BBE6DE0(&qword_27D8E5060, &qword_22BDC7748);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB36808();
  _s18TaskDefinitionThinO14TaskStatusThinOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v14);
  sub_22BB3E4C0();
  v69 = v0;
  v15 = sub_22BB3A19C();
  sub_22BB699E4(v15, v16);
  sub_22BCFE980();
  sub_22BD00918();
  sub_22BDBB894();
  if (!v70)
  {
    v17 = sub_22BD00BC4();
    sub_22BD00A84(v17);
    if (!v18)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v23 == v24)
      {
        __break(1u);
        return;
      }

      v25 = *(v22 + v20);
      sub_22BB97F40(v19, v20, v22, v21);
      sub_22BD00F50();
      if (!(v11 >> 1))
      {
        switch(v25)
        {
          case 1:
            sub_22BD00E78();
            sub_22BCFEAD0();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v52 = sub_22BB34F2C();
            v53(v52, v67);
            v54 = sub_22BB5426C();
            v55(v54);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v30 = sub_22BB3AAFC();
            v32 = 2;
            goto LABEL_15;
          case 2:
            sub_22BB8D22C();
            sub_22BCFEA7C();
            sub_22BB3E1EC();
            sub_22BDBB554();
            _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(0);
            sub_22BD008A4();
            v46 = sub_22BCF8848(v44, v45, &unk_22BDC7554);
            sub_22BD00998(v46, v47);
            swift_unknownObjectRelease();
            v56 = sub_22BB8DCCC();
            v57(v56);
            v58 = sub_22BB3AAD8();
            v59(v58);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v60 = sub_22BD0095C();
            sub_22BB336D0(v60, v61, 4, v62);
            sub_22BB73BA4();
            v25 = v66;
            sub_22BCF8A34(0, v66);
            goto LABEL_16;
          case 3:
            sub_22BD00DF8();
            sub_22BCFEA28();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v48 = sub_22BB34F2C();
            v49(v48);
            v50 = sub_22BB5426C();
            v51(v50);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v30 = sub_22BB3AAFC();
            v32 = 3;
            goto LABEL_15;
          case 4:
            sub_22BB3E098();
            sub_22BCFE9D4();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v40 = sub_22BC54A0C();
            v41(v40);
            v42 = sub_22BB5426C();
            v43(v42);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v30 = sub_22BB3AAFC();
            v32 = 4;
            goto LABEL_15;
          default:
            sub_22BCFEB24();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v26 = sub_22BB37D64();
            v27(v26);
            v28 = sub_22BB5426C();
            v29(v28);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v30 = sub_22BB3AAFC();
            v32 = 1;
LABEL_15:
            sub_22BB336D0(v30, v32, 4, v31);
LABEL_16:
            sub_22BB73BA4();
            sub_22BCF8A34(v25, v68);
            v39 = v69;
            break;
        }

        goto LABEL_10;
      }
    }

    v33 = sub_22BDBB3A4();
    sub_22BB31A08(v33, MEMORY[0x277D841A0]);
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    v34 = sub_22BD00EF0();
    sub_22BB36D74(v34);
    sub_22BB330A0();
    v35 = sub_22BD00A78();
    v36(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = sub_22BB3B6B8();
    v38(v37);
  }

  v39 = v69;
LABEL_10:
  sub_22BB32FA4(v39);
  sub_22BB975A0();
  sub_22BB376A8();
}

uint64_t sub_22BCF5300()
{
  sub_22BB35F54();
  v3 = v1 == 0x737574617473 && v2 == 0xE600000000000000;
  if (v3 || (sub_22BB32E28(0x737574617473, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x745374706D6F7270 && v0 == 0xEB00000000657461)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28(0x745374706D6F7270, 0xEB00000000657461);
    sub_22BBC05FC();
    sub_22BD00D98();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_22BCF53A0(uint64_t a1)
{
  v1 = a1;
  sub_22BD00D74(a1);
  MEMORY[0x2318A57F0](v1 & 1);
  return sub_22BDBB834();
}

void sub_22BCF53E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  sub_22BBE6DE0(&qword_27D8E5028, &qword_22BDC7718);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB3721C();
  sub_22BB3B3AC();
  v18 = sub_22BCFE92C();
  sub_22BD0071C(&_s18TaskDefinitionThinO15TaskOutcomeThinV10CodingKeysON, v19, v18);
  v20 = sub_22BD00E24();
  _s18TaskDefinitionThinO14TaskStatusThinOMa(v20);
  sub_22BB75710();
  sub_22BCF8848(v21, v22, &unk_22BDC73EC);
  sub_22BB36BDC();
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v16)
  {
    _s18TaskDefinitionThinO15TaskOutcomeThinVMa(0);
    sub_22BD008D4();
    sub_22BCF939C();
    sub_22BB37A08();
    sub_22BDBB664();
  }

  v23 = sub_22BB35198();
  v24(v23);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void sub_22BCF5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BB31014();
  v16 = sub_22BD00EB4(v15);
  _s18TaskDefinitionThinO14TaskStatusThinOMa(v16);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  v36 = v18;
  sub_22BBE6DE0(&qword_27D8E5010, &qword_22BDC7710);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BB30CE4();
  v21 = _s18TaskDefinitionThinO15TaskOutcomeThinVMa(v20);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v22);
  sub_22BB3662C();
  v23 = sub_22BB3A84C();
  sub_22BB699E4(v23, v24);
  sub_22BCFE92C();
  sub_22BD00C6C();
  sub_22BDBB894();
  if (v14)
  {
    sub_22BB32FA4(v12);
  }

  else
  {
    sub_22BB75710();
    sub_22BCF8848(v25, v26, &unk_22BDC7414);
    sub_22BB36BDC();
    sub_22BD00B9C(v27, v28, v29, v30, v31);
    sub_22BB73BA4();
    sub_22BCF8A34(v36, v13);
    sub_22BD008D4();
    sub_22BCF93F0();
    sub_22BB3B0C0();
    sub_22BDBB5D4();
    v32 = sub_22BB89D18();
    v33(v32);
    *(v13 + *(v21 + 20)) = a12;
    v34 = sub_22BB6BE0C();
    sub_22BCF8A8C(v34, v35);
    sub_22BB32FA4(v12);
    sub_22BCF8AE4(v13, _s18TaskDefinitionThinO15TaskOutcomeThinVMa);
  }

  sub_22BB376A8();
}

uint64_t sub_22BCF5790(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BCF5810(uint64_t a1)
{
  sub_22BD00D74(a1);
  MEMORY[0x2318A57F0](0);
  return sub_22BDBB834();
}

void sub_22BCF5868(uint64_t a1)
{
  sub_22BD00EDC();
  sub_22BBE6DE0(&qword_27D8E4FA0, &qword_22BDC76D0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v1);
  sub_22BB32750();
  sub_22BB3B3AC();
  v2 = sub_22BCFE7DC();
  sub_22BD00758(&_s18TaskDefinitionThinO15TaskContextThinV10CodingKeysON, v3, v2);
  sub_22BDB4354();
  sub_22BD0088C();
  sub_22BCF8848(v4, v5, MEMORY[0x277CC9580]);
  sub_22BD00A78();
  sub_22BDBB664();
  v6 = sub_22BB52D78();
  v7(v6);
  sub_22BD00EC8();
}

void sub_22BCF598C()
{
  sub_22BB31014();
  sub_22BB310A8(v2);
  sub_22BDB4354();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v4 = sub_22BBE6DE0(&qword_27D8E4F88, &qword_22BDC76C8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BB3848C();
  v7 = _s18TaskDefinitionThinO15TaskContextThinVMa(v6);
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB36FD8();
  v9 = sub_22BB500C0();
  sub_22BB699E4(v9, v10);
  sub_22BCFE7DC();
  sub_22BD00CA8();
  sub_22BDBB894();
  if (!v1)
  {
    sub_22BD0088C();
    v13 = sub_22BCF8848(v11, v12, MEMORY[0x277CC95A0]);
    sub_22BB31C28(v13, v14);
    v15 = sub_22BB977C4();
    v16(v15, v4);
    v17 = sub_22BB3569C();
    v18(v17);
    sub_22BB8987C();
    v19 = sub_22BB3A86C();
    sub_22BCF8A34(v19, v20);
  }

  sub_22BB32FA4(v0);
  sub_22BD00C9C();
  sub_22BB376A8();
}

uint64_t sub_22BCF5B6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022BDD2520 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F43656369766564 && a2 == 0xED0000747865746ELL;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000022BDD3330 == a2;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000022BDD3350 == a2;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
            if (v10 || (sub_22BDBB6D4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000011 && 0x800000022BDD3370 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_22BDBB6D4();

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

uint64_t sub_22BCF5DB4(uint64_t a1)
{
  v1 = a1;
  sub_22BD00D74(a1);
  MEMORY[0x2318A57F0](v1);
  return sub_22BDBB834();
}

unint64_t sub_22BCF5DF4(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F43656369766564;
      break;
    case 3:
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x656D6F6374756FLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void sub_22BCF5ED0(uint64_t a1)
{
  sub_22BD00EDC();
  sub_22BBE6DE0(&qword_27D8E4E88, &qword_22BDC7648);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB3721C();
  sub_22BB3B3AC();
  v3 = sub_22BCFE4E8();
  sub_22BD0071C(&_s18TaskDefinitionThinO18TaskEvaluationThinV10CodingKeysON, v4, v3);
  sub_22BDB43E4();
  sub_22BB377E0();
  sub_22BCF8848(v5, v6, MEMORY[0x277CC95F8]);
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
    sub_22BD0096C();
    sub_22BD00E9C(v7);
    sub_22BDB4C34();
    sub_22BB35B60();
    sub_22BCF8848(v8, v9, MEMORY[0x277D1C340]);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v10 = sub_22BD00E9C(2);
    _s18TaskDefinitionThinO15TaskContextThinVMa(v10);
    sub_22BB70148();
    sub_22BCF8848(v11, v12, &unk_22BDC74DC);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    sub_22BBC05F0();
    sub_22BBE6DE0(&qword_27D8E4EA0, &qword_22BDC7650);
    sub_22BCFEBCC(&qword_27D8E4EA8, &qword_27D8E4EB0, &unk_22BDC739C);
    sub_22BB3AD98();
    sub_22BDBB664();
    v13 = sub_22BD00E9C(4);
    _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v13);
    sub_22BD00874();
    sub_22BCF8848(v14, v15, &unk_22BDC748C);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v16 = sub_22BD00E9C(5);
    _s18TaskDefinitionThinO15TaskOutcomeThinVMa(v16);
    sub_22BD0085C();
    sub_22BCF8848(v17, v18, &unk_22BDC743C);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    sub_22BD00EA8();
    sub_22BCFE53C();
    sub_22BDBB664();
  }

  v19 = sub_22BB35198();
  v20(v19);
  sub_22BD00EC8();
}

void sub_22BCF6220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v88 = v29;
  v90 = _s18TaskDefinitionThinO15TaskOutcomeThinVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v30);
  sub_22BB305A8();
  v89 = v31;
  v32 = sub_22BB2F120();
  v91 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v32);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  v92 = v34;
  v35 = sub_22BB2F120();
  v93 = _s18TaskDefinitionThinO15TaskContextThinVMa(v35);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v36);
  sub_22BB305A8();
  v94 = v37;
  sub_22BB2F120();
  sub_22BDB4C34();
  sub_22BB30444();
  v95 = v39;
  v96 = v38;
  MEMORY[0x28223BE20](v38);
  sub_22BB30574();
  sub_22BB72E10();
  sub_22BDB43E4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v40);
  sub_22BB3662C();
  sub_22BBE6DE0(&qword_27D8E50F0, &qword_22BDC7790);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v41);
  sub_22BB36808();
  v97 = _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v42);
  sub_22BB305A8();
  v44 = v43;
  v45 = sub_22BB2F324();
  sub_22BB699E4(v45, v46);
  sub_22BCFE4E8();
  sub_22BD00918();
  sub_22BDBB894();
  if (v23)
  {
    sub_22BB32FA4(v28);
  }

  else
  {
    sub_22BB377E0();
    sub_22BCF8848(v47, v48, MEMORY[0x277CC9618]);
    sub_22BD00CB4();
    sub_22BDBB5D4();
    v49 = sub_22BB3B69C();
    v50(v49);
    sub_22BB35B60();
    sub_22BCF8848(v51, v52, MEMORY[0x277D1C360]);
    sub_22BD00CB4();
    sub_22BD00F90(v53, v54, v55, v56, v57);
    (*(v95 + 32))(v44 + v97[5], v24, v96);
    LOBYTE(v98) = 2;
    sub_22BB70148();
    sub_22BCF8848(v58, v59, &unk_22BDC7504);
    sub_22BD00CB4();
    sub_22BD00B14(v93, v60, v61, v62, v63);
    sub_22BB8987C();
    sub_22BCF8A34(v94, v44 + v64);
    sub_22BBE6DE0(&qword_27D8E4EA0, &qword_22BDC7650);
    sub_22BBC05F0();
    v65 = sub_22BCFEBCC(&qword_27D8E5100, &qword_27D8E5108, &unk_22BDC73C4);
    sub_22BD00F90(v65, &a13, v66, v67, v65);
    *(v44 + v97[7]) = v98;
    sub_22BD00874();
    sub_22BCF8848(v68, v69, &unk_22BDC74B4);
    sub_22BD00CB4();
    sub_22BD00B14(v91, v70, v71, v72, v73);
    sub_22BB2F530();
    sub_22BCF8A34(v92, v44 + v74);
    sub_22BD0085C();
    sub_22BCF8848(v75, v76, &unk_22BDC7464);
    sub_22BD00CB4();
    sub_22BD00B14(v90, v77, v78, v79, v80);
    sub_22BB97C08();
    sub_22BCF8A34(v89, v81);
    sub_22BD00EA8();
    v82 = sub_22BCFEC64();
    sub_22BD00B14(&_s24EvaluationDefinitionThinO20EvaluationResultThinVN, &a13, v83, v84, v82);
    v85 = sub_22BD00A00();
    v86(v85);
    v87 = v44 + v97[10];
    *v87 = 5;
    *(v87 + 8) = v99;
    *(v87 + 16) = v100;
    sub_22BCF8A8C(v44, v88);
    sub_22BB32FA4(v28);
    sub_22BCF8AE4(v44, _s18TaskDefinitionThinO18TaskEvaluationThinVMa);
  }

  sub_22BD00E18();
  sub_22BB376A8();
}

uint64_t sub_22BCF696C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF1884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCF6994(uint64_t a1)
{
  v2 = sub_22BCFEB78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF69D0(uint64_t a1)
{
  v2 = sub_22BCFEB78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF230C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCF6A6C(uint64_t a1)
{
  v2 = sub_22BCFE590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6AA8(uint64_t a1)
{
  v2 = sub_22BCFE590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6B14(uint64_t a1)
{
  v2 = sub_22BCFE638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6B50(uint64_t a1)
{
  v2 = sub_22BCFE638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6B8C(uint64_t a1)
{
  v2 = sub_22BCFE5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6BC8(uint64_t a1)
{
  v2 = sub_22BCFE5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6C04(uint64_t a1)
{
  v2 = sub_22BCFE68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6C40(uint64_t a1)
{
  v2 = sub_22BCFE68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6CAC(uint64_t a1)
{
  v2 = sub_22BCFE830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6CE8(uint64_t a1)
{
  v2 = sub_22BCFE830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6D24(uint64_t a1)
{
  v2 = sub_22BCFE8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6D60(uint64_t a1)
{
  v2 = sub_22BCFE8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6D9C(uint64_t a1)
{
  v2 = sub_22BCFE884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6DD8(uint64_t a1)
{
  v2 = sub_22BCFE884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6E44(uint64_t a1)
{
  v2 = sub_22BCFE6E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6E80(uint64_t a1)
{
  v2 = sub_22BCFE6E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6EBC(uint64_t a1)
{
  v2 = sub_22BCFE734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6EF8(uint64_t a1)
{
  v2 = sub_22BCFE734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6F34(uint64_t a1)
{
  v2 = sub_22BCFE788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6F70(uint64_t a1)
{
  v2 = sub_22BCFE788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6FDC(uint64_t a1)
{
  v2 = sub_22BCFE9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7018(uint64_t a1)
{
  v2 = sub_22BCFE9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7054(uint64_t a1)
{
  v2 = sub_22BCFE980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7090(uint64_t a1)
{
  v2 = sub_22BCFE980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF70CC(uint64_t a1)
{
  v2 = sub_22BCFEA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7108(uint64_t a1)
{
  v2 = sub_22BCFEA28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7144(uint64_t a1)
{
  v2 = sub_22BCFEA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7180(uint64_t a1)
{
  v2 = sub_22BCFEA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF71BC(uint64_t a1)
{
  v2 = sub_22BCFEAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF71F8(uint64_t a1)
{
  v2 = sub_22BCFEAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7234(uint64_t a1)
{
  v2 = sub_22BCFEB24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7270(uint64_t a1)
{
  v2 = sub_22BCFEB24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF72DC(uint64_t a1)
{
  v2 = sub_22BCFE92C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7318(uint64_t a1)
{
  v2 = sub_22BCFE92C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF5790(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCF73B4(uint64_t a1)
{
  v2 = sub_22BCFE7DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF73F0(uint64_t a1)
{
  v2 = sub_22BCFE7DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF5B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCF748C(uint64_t a1)
{
  v2 = sub_22BCFE4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF74C8(uint64_t a1)
{
  v2 = sub_22BCFE4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7534@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeedbackLearning.TaskAction(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v5 = sub_22BB3DFC0();
  type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB30D5C();
  v7 = sub_22BB3AAD8();
  sub_22BCF8A8C(v7, v8);
  sub_22BD00AA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB3AF78();
    v9 = sub_22BB3AC54();
    sub_22BCF8A34(v9, v10);
    sub_22BDB43E4();
    sub_22BB2F330();
    (*(v11 + 16))(a1, v1);
    v12 = *(v1 + *(v3 + 24));
    sub_22BB30848();
    sub_22BCF8AE4(v1, v13);
    *(a1 + *(_s18TaskDefinitionThinO14TaskActionThinVMa(0) + 20)) = v12;
  }

  else
  {
    sub_22BDB4C34();
    sub_22BB2F330();
    v14 = sub_22BB500C0();
    v15(v14);
  }

  _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_22BCF76B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB3B094();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  v24 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  sub_22BD00A30();
  v26 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  v27 = sub_22BB2F0C8(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BB30C74();
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v32 = sub_22BB2F0C8(v31);
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  v35 = v34 - v33;
  sub_22BB37D4C();
  v36 = sub_22BB32E04();
  sub_22BCF8A8C(v36, v37);
  v38 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  sub_22BB31814(v35, 1, v38);
  if (!v39)
  {
    sub_22BC8D26C();
    sub_22BCF95D4(v30, v19);
    sub_22BB31814(v19, 1, v24);
    if (!v39)
    {
      sub_22BD0079C();
      v40 = sub_22BB95B5C();
      sub_22BCF8A34(v40, v41);
      sub_22BCF7534(v23);
      sub_22BB327E8();
      sub_22BCF8AE4(v18, v42);
    }

    sub_22BB58728(v30, &qword_27D8E3D98, &qword_22BDC1130);
    v43 = _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
    sub_22BD00FB0(v43);
  }

  v44 = sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  sub_22BD00FB0(v44);
  sub_22BB36A24();
}

uint64_t sub_22BCF7890@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BD00A30();
  sub_22BB53D70();
  v4 = sub_22BB37494();
  sub_22BCF8A8C(v4, v5);
  sub_22BB53C48();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = sub_22BDB4C84();
  if (EnumCaseMultiPayload == 1)
  {
    sub_22BB336D0(a1, 1, 1, v7);
    sub_22BB362D0();
    return sub_22BCF8AE4(v1, v8);
  }

  else
  {
    sub_22BB30474();
    v10 = sub_22BB31F54();
    v11(v10);
    return sub_22BB336D0(a1, 0, 1, v7);
  }
}

void sub_22BCF7988()
{
  sub_22BB30F94();
  v4 = v1;
  v6 = v5;
  v7 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB345CC();
  v128 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v125 = v12;
  v13 = sub_22BB2F120();
  _s18TaskDefinitionThinO23CandidateEvaluationThinVMa(v13);
  sub_22BB30444();
  v126 = v15;
  v127 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v20 = sub_22BB2F0C8(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  v115 = v21;
  v22 = sub_22BB2F120();
  v23 = _s18TaskDefinitionThinO14TaskStatusThinOMa(v22);
  v24 = sub_22BB2F0C8(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BB30C74();
  v116 = v25 - v26;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v27);
  v119 = &v105 - v28;
  v29 = sub_22BB2F120();
  v118 = _s18TaskDefinitionThinO15TaskOutcomeThinVMa(v29);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v30);
  sub_22BB305A8();
  v121 = v31;
  v32 = sub_22BB2F120();
  v33 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v32);
  v34 = sub_22BB2F0C8(v33);
  MEMORY[0x28223BE20](v34);
  sub_22BB305A8();
  v120 = v35;
  v36 = sub_22BB2F120();
  v37 = _s18TaskDefinitionThinO15TaskContextThinVMa(v36);
  v38 = sub_22BB2F0C8(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BB30574();
  sub_22BB33230();
  v39 = sub_22BDB4C34();
  sub_22BB30444();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22BB30574();
  sub_22BB319F8();
  sub_22BDB43E4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v43);
  sub_22BB30574();
  v46 = v45 - v44;
  v111 = v47;
  v48 = *(v47 + 16);
  v110 = v46;
  v112 = v49;
  v48();
  v50 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v51 = v50[5];
  v113 = v2;
  v114 = v41;
  v52 = *(v41 + 16);
  v129 = v39;
  v123 = v52;
  v124 = v41 + 16;
  v52(v2, v4 + v51, v39);
  v117 = v0;
  sub_22BDB7A64();
  v60 = *(v4 + v50[7]);
  v61 = *(v60 + 16);
  v62 = MEMORY[0x277D84F90];
  if (v61)
  {
    v106 = v50;
    v107 = v3;
    v108 = v4;
    v109 = v6;
    v131 = MEMORY[0x277D84F90];
    sub_22BD284D8(0, v61, 0);
    v62 = v131;
    sub_22BB2F390();
    v64 = v60 + v63;
    v122 = *(v10 + 72);
    v65 = v125;
    do
    {
      v130 = v62;
      sub_22BD00844();
      sub_22BCF8A8C(v64, v65);
      v66 = v18;
      v67 = v128;
      sub_22BDB7B24();
      sub_22BDB7B34();
      v68 = v127;
      sub_22BB89D18();
      sub_22BDB7B14();
      v123(v66, v65, v129);
      sub_22BB32C5C();
      sub_22BCF8A8C(v65 + v69, v66 + v70);
      v71 = *(v65 + v67[8]);
      v72 = *(v65 + v67[9]);
      v73 = v67[10];
      v18 = v66;
      v74 = *(v65 + v73);
      sub_22BD0082C();
      sub_22BCF8AE4(v65, v75);
      *(v66 + v68[7]) = v71;
      *(v66 + v68[8]) = v72;
      v76 = v68[9];
      v62 = v130;
      *(v66 + v76) = v74;
      v131 = v62;
      v78 = *(v62 + 16);
      v77 = *(v62 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_22BD284D8(v77 > 1, v78 + 1, 1);
        v62 = v131;
      }

      *(v62 + 16) = v78 + 1;
      sub_22BB2F390();
      sub_22BCF8A34(v66, v62 + v79 + *(v80 + 72) * v78);
      v64 += v122;
      --v61;
    }

    while (v61);
    v6 = v109;
    v4 = v108;
    v3 = v107;
    v50 = v106;
  }

  v81 = v120;
  sub_22BCF76B0(v4 + v50[8], v53, v54, v55, v56, v57, v58, v59, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  v82 = v4 + v50[9];
  sub_22BB3A464();
  v83 = v115;
  sub_22BCF8A8C(v82, v115);
  v84 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v85 = sub_22BB3AA28(v83, 4, v84);
  v86 = v116;
  if (!v85)
  {
    sub_22BB6F948();
    sub_22BCF8A34(v83, v3);
    sub_22BCF7890(v86);
    sub_22BB362D0();
    sub_22BCF8AE4(v3, v87);
  }

  v88 = sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  sub_22BB336D0(v86, v85, 4, v88);
  v89 = v86;
  v90 = v119;
  sub_22BCF8A34(v89, v119);
  v91 = *(v82 + *(type metadata accessor for FeedbackLearning.TaskOutcome(0) + 20));
  v92 = v121;
  sub_22BCF8A34(v90, v121);
  *(v92 + *(v118 + 20)) = v91;
  v93 = sub_22BD01234(*(v4 + v50[10]), *(v4 + v50[10] + 8), *(v4 + v50[10] + 16), *(v4 + v50[10] + 24));
  v95 = v94;
  v97 = v96;
  v99 = v98;
  (*(v111 + 32))(v6, v110, v112);
  v100 = _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
  (*(v114 + 32))(v6 + v100[5], v113, v129);
  sub_22BB8987C();
  sub_22BCF8A34(v117, v6 + v101);
  *(v6 + v100[7]) = v62;
  sub_22BB2F530();
  sub_22BCF8A34(v81, v6 + v102);
  sub_22BB97C08();
  sub_22BCF8A34(v92, v103);
  v104 = v6 + v100[10];
  *v104 = v93;
  *(v104 + 8) = v95;
  *(v104 + 16) = v97;
  *(v104 + 24) = v99;
  sub_22BB314EC();
}

void sub_22BCF80B8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22BBBFEBC();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_22BCF80F0()
{
  result = qword_27D8E4428;
  if (!qword_27D8E4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4428);
  }

  return result;
}

unint64_t sub_22BCF8144()
{
  result = qword_27D8E4430;
  if (!qword_27D8E4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4430);
  }

  return result;
}

unint64_t sub_22BCF8198()
{
  result = qword_27D8E4438;
  if (!qword_27D8E4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4438);
  }

  return result;
}

unint64_t sub_22BCF81EC()
{
  result = qword_27D8E4440;
  if (!qword_27D8E4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4440);
  }

  return result;
}

unint64_t sub_22BCF8240()
{
  result = qword_27D8E4448;
  if (!qword_27D8E4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4448);
  }

  return result;
}

unint64_t sub_22BCF8294()
{
  result = qword_27D8E44B0;
  if (!qword_27D8E44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44B0);
  }

  return result;
}

unint64_t sub_22BCF82E8()
{
  result = qword_27D8E44B8;
  if (!qword_27D8E44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44B8);
  }

  return result;
}

unint64_t sub_22BCF833C()
{
  result = qword_27D8E44C0;
  if (!qword_27D8E44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44C0);
  }

  return result;
}

unint64_t sub_22BCF8390()
{
  result = qword_27D8E44C8;
  if (!qword_27D8E44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44C8);
  }

  return result;
}

unint64_t sub_22BCF83E4()
{
  result = qword_27D8E44D0;
  if (!qword_27D8E44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44D0);
  }

  return result;
}

unint64_t sub_22BCF8438()
{
  result = qword_27D8E44D8;
  if (!qword_27D8E44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44D8);
  }

  return result;
}

unint64_t sub_22BCF848C()
{
  result = qword_27D8E44E0;
  if (!qword_27D8E44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44E0);
  }

  return result;
}

unint64_t sub_22BCF84E0()
{
  result = qword_27D8E44E8;
  if (!qword_27D8E44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44E8);
  }

  return result;
}

unint64_t sub_22BCF8534()
{
  result = qword_27D8E44F0;
  if (!qword_27D8E44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44F0);
  }

  return result;
}

unint64_t sub_22BCF8588()
{
  result = qword_27D8E4530;
  if (!qword_27D8E4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4530);
  }

  return result;
}

unint64_t sub_22BCF85DC()
{
  result = qword_27D8E4538;
  if (!qword_27D8E4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4538);
  }

  return result;
}

unint64_t sub_22BCF8630()
{
  result = qword_27D8E4568;
  if (!qword_27D8E4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4568);
  }

  return result;
}

unint64_t sub_22BCF8684()
{
  result = qword_27D8E4570;
  if (!qword_27D8E4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4570);
  }

  return result;
}

unint64_t sub_22BCF86D8()
{
  result = qword_27D8E4578;
  if (!qword_27D8E4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4578);
  }

  return result;
}

unint64_t sub_22BCF872C()
{
  result = qword_27D8E4580;
  if (!qword_27D8E4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4580);
  }

  return result;
}

unint64_t sub_22BCF8780()
{
  result = qword_27D8E4588;
  if (!qword_27D8E4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4588);
  }

  return result;
}

unint64_t sub_22BCF87D4()
{
  result = qword_27D8E45C0;
  if (!qword_27D8E45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E45C0);
  }

  return result;
}

uint64_t sub_22BCF8848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22BCF8890()
{
  result = qword_27D8E4600;
  if (!qword_27D8E4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4600);
  }

  return result;
}

unint64_t sub_22BCF88E4()
{
  result = qword_27D8E4608;
  if (!qword_27D8E4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4608);
  }

  return result;
}

unint64_t sub_22BCF8938()
{
  result = qword_27D8E4610;
  if (!qword_27D8E4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4610);
  }

  return result;
}

unint64_t sub_22BCF898C()
{
  result = qword_27D8E4620;
  if (!qword_27D8E4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4620);
  }

  return result;
}

unint64_t sub_22BCF89E0()
{
  result = qword_27D8E4628;
  if (!qword_27D8E4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4628);
  }

  return result;
}

uint64_t sub_22BCF8A34(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BCF8A8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BCF8AE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22BCF8B3C()
{
  result = qword_27D8E4688;
  if (!qword_27D8E4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4688);
  }

  return result;
}

unint64_t sub_22BCF8B90()
{
  result = qword_27D8E4690;
  if (!qword_27D8E4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4690);
  }

  return result;
}

unint64_t sub_22BCF8BE4()
{
  result = qword_27D8E46A0;
  if (!qword_27D8E46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E46A0);
  }

  return result;
}

unint64_t sub_22BCF8C38()
{
  result = qword_27D8E46A8;
  if (!qword_27D8E46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E46A8);
  }

  return result;
}

unint64_t sub_22BCF8CAC()
{
  result = qword_27D8E46F0;
  if (!qword_27D8E46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E46F0);
  }

  return result;
}

unint64_t sub_22BCF8D00()
{
  result = qword_27D8E4710;
  if (!qword_27D8E4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4710);
  }

  return result;
}

unint64_t sub_22BCF8D54()
{
  result = qword_27D8E4718;
  if (!qword_27D8E4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4718);
  }

  return result;
}

unint64_t sub_22BCF8DA8()
{
  result = qword_27D8E4720;
  if (!qword_27D8E4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4720);
  }

  return result;
}

unint64_t sub_22BCF8DFC()
{
  result = qword_27D8E4748;
  if (!qword_27D8E4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4748);
  }

  return result;
}

unint64_t sub_22BCF8E50()
{
  result = qword_27D8E4750;
  if (!qword_27D8E4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4750);
  }

  return result;
}

unint64_t sub_22BCF8EA4()
{
  result = qword_27D8E4758;
  if (!qword_27D8E4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4758);
  }

  return result;
}

unint64_t sub_22BCF8F18()
{
  result = qword_27D8E4780;
  if (!qword_27D8E4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4780);
  }

  return result;
}

unint64_t sub_22BCF8F6C()
{
  result = qword_27D8E4788;
  if (!qword_27D8E4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4788);
  }

  return result;
}

unint64_t sub_22BCF8FC0()
{
  result = qword_27D8E4798;
  if (!qword_27D8E4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4798);
  }

  return result;
}

unint64_t sub_22BCF9034()
{
  result = qword_27D8E4808;
  if (!qword_27D8E4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4808);
  }

  return result;
}

unint64_t sub_22BCF9088()
{
  result = qword_27D8E4810;
  if (!qword_27D8E4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4810);
  }

  return result;
}

unint64_t sub_22BCF90DC()
{
  result = qword_27D8E4818;
  if (!qword_27D8E4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4818);
  }

  return result;
}

unint64_t sub_22BCF9130()
{
  result = qword_27D8E4820;
  if (!qword_27D8E4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4820);
  }

  return result;
}

unint64_t sub_22BCF9184()
{
  result = qword_27D8E4830;
  if (!qword_27D8E4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4830);
  }

  return result;
}

unint64_t sub_22BCF91D8()
{
  result = qword_27D8E4838;
  if (!qword_27D8E4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4838);
  }

  return result;
}

unint64_t sub_22BCF922C()
{
  result = qword_27D8E4890;
  if (!qword_27D8E4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4890);
  }

  return result;
}

unint64_t sub_22BCF9280()
{
  result = qword_27D8E4898;
  if (!qword_27D8E4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4898);
  }

  return result;
}

unint64_t sub_22BCF92D4()
{
  result = qword_27D8E48A0;
  if (!qword_27D8E48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48A0);
  }

  return result;
}

unint64_t sub_22BCF9348()
{
  result = qword_27D8E48C8;
  if (!qword_27D8E48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48C8);
  }

  return result;
}

unint64_t sub_22BCF939C()
{
  result = qword_27D8E48D8;
  if (!qword_27D8E48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48D8);
  }

  return result;
}

unint64_t sub_22BCF93F0()
{
  result = qword_27D8E48F0;
  if (!qword_27D8E48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48F0);
  }

  return result;
}

unint64_t sub_22BCF9464()
{
  result = qword_27D8E4900;
  if (!qword_27D8E4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4900);
  }

  return result;
}

unint64_t sub_22BCF94D8()
{
  result = qword_27D8E4940;
  if (!qword_27D8E4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4940);
  }

  return result;
}

unint64_t sub_22BCF952C()
{
  result = qword_27D8E4948;
  if (!qword_27D8E4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4948);
  }

  return result;
}

unint64_t sub_22BCF9580()
{
  result = qword_27D8E4958;
  if (!qword_27D8E4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4958);
  }

  return result;
}

uint64_t sub_22BCF95D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BCF9644()
{
  result = qword_27D8E49A8;
  if (!qword_27D8E49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49A8);
  }

  return result;
}

unint64_t sub_22BCF9698()
{
  result = qword_27D8E49B0;
  if (!qword_27D8E49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49B0);
  }

  return result;
}

unint64_t sub_22BCF96EC()
{
  result = qword_27D8E49B8;
  if (!qword_27D8E49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49B8);
  }

  return result;
}

unint64_t sub_22BCF9764()
{
  result = qword_27D8E49E8;
  if (!qword_27D8E49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49E8);
  }

  return result;
}

unint64_t sub_22BCF97BC()
{
  result = qword_27D8E49F0;
  if (!qword_27D8E49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49F0);
  }

  return result;
}

unint64_t sub_22BCF9814()
{
  result = qword_27D8E49F8;
  if (!qword_27D8E49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49F8);
  }

  return result;
}

unint64_t sub_22BCF986C()
{
  result = qword_27D8E4A00;
  if (!qword_27D8E4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A00);
  }

  return result;
}

unint64_t sub_22BCF98C4()
{
  result = qword_27D8E4A08;
  if (!qword_27D8E4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A08);
  }

  return result;
}

unint64_t sub_22BCF991C()
{
  result = qword_27D8E4A10;
  if (!qword_27D8E4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A10);
  }

  return result;
}

unint64_t sub_22BCF9974()
{
  result = qword_27D8E4A18;
  if (!qword_27D8E4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A18);
  }

  return result;
}

uint64_t _s16CandidateOutcomeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s16CandidateOutcomeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
        break;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCF9B9C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_22BCF9BC8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 3 ^ 0x82;
  }

  *result = v2;
  return result;
}

uint64_t _s26CandidateDonationOptionSetVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s26CandidateDonationOptionSetVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22BCF9CB8(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BCF9D20(uint64_t a1)
{
  result = sub_22BDBA014();
  if (v2 <= 0x3F)
  {
    result = sub_22BDBA594();
    if (v3 <= 0x3F)
    {
      result = sub_22BDBA994();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BCF9DD0(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.CandidateParameter(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
      if (v4 <= 0x3F)
      {
        result = sub_22BDB7B44();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *_s16TaskPromptStatusOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s16TaskPromptStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCFA094(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22BCFA0A8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_22BCFA138(uint64_t a1)
{
  result = type metadata accessor for FeedbackLearning.FlowActionEvent(319);
  if (v2 <= 0x3F)
  {
    result = sub_22BDBA014();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCFA1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_22BD00C84();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      sub_22BD00CE4();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCFA2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22BD00C84();
  sub_22BCFDCB4(v5, v6, v7, v8);
  v10 = v9;
  if (v11 <= 0x3F)
  {
    sub_22BD00CE4();
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v10;
}

void sub_22BCFA33C(uint64_t a1)
{
  sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    sub_22BDB4C34();
    if (v2 <= 0x3F)
    {
      sub_22BDB7A84();
      if (v3 <= 0x3F)
      {
        sub_22BCFA458(319, &qword_281428858, type metadata accessor for FeedbackLearning.CandidateEvaluation, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FeedbackLearning.TaskFinalResolutionState(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FeedbackLearning.TaskOutcome(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22BCFA458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BCFA4E4(uint64_t a1)
{
  result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
  if (v2 <= 0x3F)
  {
    result = sub_22BDB7B94();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCFA818(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFA89C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCFA9A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFAA2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BCFAB2C()
{
  result = qword_27D8E4A20;
  if (!qword_27D8E4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A20);
  }

  return result;
}

unint64_t sub_22BCFAB84()
{
  result = qword_27D8E4A28;
  if (!qword_27D8E4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A28);
  }

  return result;
}

unint64_t sub_22BCFABDC()
{
  result = qword_27D8E4A30;
  if (!qword_27D8E4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A30);
  }

  return result;
}

unint64_t sub_22BCFAC34()
{
  result = qword_27D8E4A38;
  if (!qword_27D8E4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A38);
  }

  return result;
}

unint64_t sub_22BCFAC8C()
{
  result = qword_27D8E4A40;
  if (!qword_27D8E4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A40);
  }

  return result;
}

unint64_t sub_22BCFACE4()
{
  result = qword_27D8E4A48;
  if (!qword_27D8E4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A48);
  }

  return result;
}

unint64_t sub_22BCFAD3C()
{
  result = qword_27D8E4A50;
  if (!qword_27D8E4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A50);
  }

  return result;
}

unint64_t sub_22BCFAD94()
{
  result = qword_27D8E4A58;
  if (!qword_27D8E4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A58);
  }

  return result;
}

unint64_t sub_22BCFADEC()
{
  result = qword_27D8E4A60;
  if (!qword_27D8E4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A60);
  }

  return result;
}

unint64_t sub_22BCFAE44()
{
  result = qword_27D8E4A68;
  if (!qword_27D8E4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A68);
  }

  return result;
}

unint64_t sub_22BCFAE9C()
{
  result = qword_27D8E4A70;
  if (!qword_27D8E4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A70);
  }

  return result;
}

unint64_t sub_22BCFAEF4()
{
  result = qword_27D8E4A78;
  if (!qword_27D8E4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A78);
  }

  return result;
}

unint64_t sub_22BCFAF4C()
{
  result = qword_27D8E4A80;
  if (!qword_27D8E4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A80);
  }

  return result;
}

unint64_t sub_22BCFAFA4()
{
  result = qword_27D8E4A88;
  if (!qword_27D8E4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A88);
  }

  return result;
}

unint64_t sub_22BCFAFFC()
{
  result = qword_27D8E4A90;
  if (!qword_27D8E4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A90);
  }

  return result;
}

unint64_t sub_22BCFB054()
{
  result = qword_27D8E4A98;
  if (!qword_27D8E4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A98);
  }

  return result;
}

unint64_t sub_22BCFB0AC()
{
  result = qword_27D8E4AA0;
  if (!qword_27D8E4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AA0);
  }

  return result;
}

unint64_t sub_22BCFB104()
{
  result = qword_27D8E4AA8;
  if (!qword_27D8E4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AA8);
  }

  return result;
}

unint64_t sub_22BCFB15C()
{
  result = qword_27D8E4AB0;
  if (!qword_27D8E4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AB0);
  }

  return result;
}

unint64_t sub_22BCFB1B4()
{
  result = qword_27D8E4AB8;
  if (!qword_27D8E4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AB8);
  }

  return result;
}

unint64_t sub_22BCFB20C()
{
  result = qword_27D8E4AC0;
  if (!qword_27D8E4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AC0);
  }

  return result;
}

unint64_t sub_22BCFB264()
{
  result = qword_27D8E4AC8;
  if (!qword_27D8E4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AC8);
  }

  return result;
}

unint64_t sub_22BCFB2BC()
{
  result = qword_27D8E4AD0;
  if (!qword_27D8E4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AD0);
  }

  return result;
}

unint64_t sub_22BCFB314()
{
  result = qword_27D8E4AD8;
  if (!qword_27D8E4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AD8);
  }

  return result;
}

unint64_t sub_22BCFB36C()
{
  result = qword_27D8E4AE0;
  if (!qword_27D8E4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AE0);
  }

  return result;
}

unint64_t sub_22BCFB3C4()
{
  result = qword_27D8E4AE8;
  if (!qword_27D8E4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AE8);
  }

  return result;
}

unint64_t sub_22BCFB41C()
{
  result = qword_27D8E4AF0;
  if (!qword_27D8E4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AF0);
  }

  return result;
}

unint64_t sub_22BCFB474()
{
  result = qword_27D8E4AF8;
  if (!qword_27D8E4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AF8);
  }

  return result;
}

unint64_t sub_22BCFB4CC()
{
  result = qword_27D8E4B00;
  if (!qword_27D8E4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B00);
  }

  return result;
}

unint64_t sub_22BCFB524()
{
  result = qword_27D8E4B08;
  if (!qword_27D8E4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B08);
  }

  return result;
}

unint64_t sub_22BCFB57C()
{
  result = qword_27D8E4B10;
  if (!qword_27D8E4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B10);
  }

  return result;
}

unint64_t sub_22BCFB5D4()
{
  result = qword_27D8E4B18;
  if (!qword_27D8E4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B18);
  }

  return result;
}

unint64_t sub_22BCFB62C()
{
  result = qword_27D8E4B20;
  if (!qword_27D8E4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B20);
  }

  return result;
}

unint64_t sub_22BCFB684()
{
  result = qword_27D8E4B28;
  if (!qword_27D8E4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B28);
  }

  return result;
}

unint64_t sub_22BCFB6DC()
{
  result = qword_27D8E4B30;
  if (!qword_27D8E4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B30);
  }

  return result;
}

unint64_t sub_22BCFB734()
{
  result = qword_27D8E4B38;
  if (!qword_27D8E4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B38);
  }

  return result;
}

unint64_t sub_22BCFB78C()
{
  result = qword_27D8E4B40;
  if (!qword_27D8E4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B40);
  }

  return result;
}

unint64_t sub_22BCFB7E4()
{
  result = qword_27D8E4B48;
  if (!qword_27D8E4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B48);
  }

  return result;
}

unint64_t sub_22BCFB83C()
{
  result = qword_27D8E4B50;
  if (!qword_27D8E4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B50);
  }

  return result;
}

unint64_t sub_22BCFB894()
{
  result = qword_27D8E4B58;
  if (!qword_27D8E4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B58);
  }

  return result;
}

unint64_t sub_22BCFB8EC()
{
  result = qword_27D8E4B60;
  if (!qword_27D8E4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B60);
  }

  return result;
}

unint64_t sub_22BCFB944()
{
  result = qword_27D8E4B68;
  if (!qword_27D8E4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B68);
  }

  return result;
}

unint64_t sub_22BCFB99C()
{
  result = qword_27D8E4B70;
  if (!qword_27D8E4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B70);
  }

  return result;
}

unint64_t sub_22BCFB9F4()
{
  result = qword_27D8E4B78;
  if (!qword_27D8E4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B78);
  }

  return result;
}

unint64_t sub_22BCFBA4C()
{
  result = qword_27D8E4B80;
  if (!qword_27D8E4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B80);
  }

  return result;
}

unint64_t sub_22BCFBAA4()
{
  result = qword_27D8E4B88;
  if (!qword_27D8E4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B88);
  }

  return result;
}

unint64_t sub_22BCFBAFC()
{
  result = qword_27D8E4B90;
  if (!qword_27D8E4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B90);
  }

  return result;
}

unint64_t sub_22BCFBB54()
{
  result = qword_27D8E4B98;
  if (!qword_27D8E4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B98);
  }

  return result;
}

unint64_t sub_22BCFBBAC()
{
  result = qword_27D8E4BA0;
  if (!qword_27D8E4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BA0);
  }

  return result;
}

unint64_t sub_22BCFBC04()
{
  result = qword_27D8E4BA8;
  if (!qword_27D8E4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BA8);
  }

  return result;
}

unint64_t sub_22BCFBC5C()
{
  result = qword_27D8E4BB0;
  if (!qword_27D8E4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BB0);
  }

  return result;
}

unint64_t sub_22BCFBCB4()
{
  result = qword_27D8E4BB8;
  if (!qword_27D8E4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BB8);
  }

  return result;
}

unint64_t sub_22BCFBD0C()
{
  result = qword_27D8E4BC0;
  if (!qword_27D8E4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BC0);
  }

  return result;
}

unint64_t sub_22BCFBD64()
{
  result = qword_27D8E4BC8;
  if (!qword_27D8E4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BC8);
  }

  return result;
}

unint64_t sub_22BCFBDBC()
{
  result = qword_27D8E4BD0;
  if (!qword_27D8E4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BD0);
  }

  return result;
}

unint64_t sub_22BCFBE14()
{
  result = qword_27D8E4BD8;
  if (!qword_27D8E4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BD8);
  }

  return result;
}

unint64_t sub_22BCFBE6C()
{
  result = qword_27D8E4BE0;
  if (!qword_27D8E4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BE0);
  }

  return result;
}

unint64_t sub_22BCFBEC4()
{
  result = qword_27D8E4BE8;
  if (!qword_27D8E4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BE8);
  }

  return result;
}

unint64_t sub_22BCFBF1C()
{
  result = qword_27D8E4BF0;
  if (!qword_27D8E4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BF0);
  }

  return result;
}

unint64_t sub_22BCFBF74()
{
  result = qword_27D8E4BF8;
  if (!qword_27D8E4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BF8);
  }

  return result;
}

unint64_t sub_22BCFBFCC()
{
  result = qword_27D8E4C00;
  if (!qword_27D8E4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C00);
  }

  return result;
}

unint64_t sub_22BCFC024()
{
  result = qword_27D8E4C08;
  if (!qword_27D8E4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C08);
  }

  return result;
}

unint64_t sub_22BCFC07C()
{
  result = qword_27D8E4C10;
  if (!qword_27D8E4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C10);
  }

  return result;
}

unint64_t sub_22BCFC0D4()
{
  result = qword_27D8E4C18;
  if (!qword_27D8E4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C18);
  }

  return result;
}

unint64_t sub_22BCFC12C()
{
  result = qword_27D8E4C20;
  if (!qword_27D8E4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C20);
  }

  return result;
}

unint64_t sub_22BCFC184()
{
  result = qword_27D8E4C28;
  if (!qword_27D8E4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C28);
  }

  return result;
}

unint64_t sub_22BCFC1DC()
{
  result = qword_27D8E4C30;
  if (!qword_27D8E4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C30);
  }

  return result;
}

unint64_t sub_22BCFC234()
{
  result = qword_27D8E4C38;
  if (!qword_27D8E4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C38);
  }

  return result;
}

unint64_t sub_22BCFC28C()
{
  result = qword_27D8E4C40;
  if (!qword_27D8E4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C40);
  }

  return result;
}

unint64_t sub_22BCFC2E4()
{
  result = qword_27D8E4C48;
  if (!qword_27D8E4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C48);
  }

  return result;
}

unint64_t sub_22BCFC33C()
{
  result = qword_27D8E4C50;
  if (!qword_27D8E4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C50);
  }

  return result;
}

unint64_t sub_22BCFC394()
{
  result = qword_27D8E4C58;
  if (!qword_27D8E4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C58);
  }

  return result;
}

unint64_t sub_22BCFC3EC()
{
  result = qword_27D8E4C60;
  if (!qword_27D8E4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C60);
  }

  return result;
}

unint64_t sub_22BCFC444()
{
  result = qword_27D8E4C68;
  if (!qword_27D8E4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C68);
  }

  return result;
}

unint64_t sub_22BCFC49C()
{
  result = qword_27D8E4C70;
  if (!qword_27D8E4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C70);
  }

  return result;
}

unint64_t sub_22BCFC4F4()
{
  result = qword_27D8E4C78;
  if (!qword_27D8E4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C78);
  }

  return result;
}

unint64_t sub_22BCFC54C()
{
  result = qword_27D8E4C80;
  if (!qword_27D8E4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C80);
  }

  return result;
}

unint64_t sub_22BCFC5A4()
{
  result = qword_27D8E4C88;
  if (!qword_27D8E4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C88);
  }

  return result;
}

unint64_t sub_22BCFC5FC()
{
  result = qword_27D8E4C90;
  if (!qword_27D8E4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C90);
  }

  return result;
}

unint64_t sub_22BCFC654()
{
  result = qword_27D8E4C98;
  if (!qword_27D8E4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C98);
  }

  return result;
}

unint64_t sub_22BCFC6AC()
{
  result = qword_27D8E4CA0;
  if (!qword_27D8E4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CA0);
  }

  return result;
}

unint64_t sub_22BCFC704()
{
  result = qword_27D8E4CA8;
  if (!qword_27D8E4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CA8);
  }

  return result;
}

unint64_t sub_22BCFC75C()
{
  result = qword_27D8E4CB0;
  if (!qword_27D8E4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CB0);
  }

  return result;
}

unint64_t sub_22BCFC7B4()
{
  result = qword_27D8E4CB8;
  if (!qword_27D8E4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CB8);
  }

  return result;
}

unint64_t sub_22BCFC80C()
{
  result = qword_27D8E4CC0;
  if (!qword_27D8E4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CC0);
  }

  return result;
}

unint64_t sub_22BCFC864()
{
  result = qword_27D8E4CC8;
  if (!qword_27D8E4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CC8);
  }

  return result;
}

unint64_t sub_22BCFC8BC()
{
  result = qword_27D8E4CD0;
  if (!qword_27D8E4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CD0);
  }

  return result;
}

unint64_t sub_22BCFC914()
{
  result = qword_27D8E4CD8;
  if (!qword_27D8E4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CD8);
  }

  return result;
}

unint64_t sub_22BCFC96C()
{
  result = qword_27D8E4CE0;
  if (!qword_27D8E4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CE0);
  }

  return result;
}

unint64_t sub_22BCFC9C4()
{
  result = qword_27D8E4CE8;
  if (!qword_27D8E4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CE8);
  }

  return result;
}

unint64_t sub_22BCFCA1C()
{
  result = qword_27D8E4CF0;
  if (!qword_27D8E4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CF0);
  }

  return result;
}