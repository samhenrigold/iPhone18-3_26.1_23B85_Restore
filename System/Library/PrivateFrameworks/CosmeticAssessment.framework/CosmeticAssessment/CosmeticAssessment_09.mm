unint64_t sub_247D0216C()
{
  result = qword_27EE648C0;
  if (!qword_27EE648C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648C0);
  }

  return result;
}

unint64_t sub_247D021C4()
{
  result = qword_27EE648C8;
  if (!qword_27EE648C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648C8);
  }

  return result;
}

unint64_t sub_247D0221C()
{
  result = qword_27EE648D0;
  if (!qword_27EE648D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648D0);
  }

  return result;
}

unint64_t sub_247D022A4()
{
  result = qword_27EE648E8;
  if (!qword_27EE648E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648E8);
  }

  return result;
}

unint64_t sub_247D022FC()
{
  result = qword_27EE648F0;
  if (!qword_27EE648F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648F0);
  }

  return result;
}

unint64_t sub_247D02354()
{
  result = qword_27EE648F8;
  if (!qword_27EE648F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648F8);
  }

  return result;
}

unint64_t sub_247D023DC()
{
  result = qword_27EE64910;
  if (!qword_27EE64910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64910);
  }

  return result;
}

unint64_t sub_247D02434()
{
  result = qword_27EE64918;
  if (!qword_27EE64918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64918);
  }

  return result;
}

unint64_t sub_247D0248C()
{
  result = qword_27EE64920;
  if (!qword_27EE64920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64920);
  }

  return result;
}

unint64_t sub_247D02514()
{
  result = qword_27EE64938;
  if (!qword_27EE64938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64938);
  }

  return result;
}

unint64_t sub_247D0256C()
{
  result = qword_27EE64940;
  if (!qword_27EE64940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64940);
  }

  return result;
}

unint64_t sub_247D025C4()
{
  result = qword_27EE64948;
  if (!qword_27EE64948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64948);
  }

  return result;
}

unint64_t sub_247D0264C()
{
  result = qword_27EE64960;
  if (!qword_27EE64960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64960);
  }

  return result;
}

unint64_t sub_247D026A4()
{
  result = qword_27EE64968;
  if (!qword_27EE64968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64968);
  }

  return result;
}

unint64_t sub_247D026FC()
{
  result = qword_27EE64970;
  if (!qword_27EE64970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64970);
  }

  return result;
}

unint64_t sub_247D02784()
{
  result = qword_27EE64988;
  if (!qword_27EE64988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64988);
  }

  return result;
}

unint64_t sub_247D027DC()
{
  result = qword_27EE64990;
  if (!qword_27EE64990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64990);
  }

  return result;
}

unint64_t sub_247D02834()
{
  result = qword_27EE64998;
  if (!qword_27EE64998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64998);
  }

  return result;
}

unint64_t sub_247D028BC()
{
  result = qword_27EE649B0;
  if (!qword_27EE649B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE649B0);
  }

  return result;
}

unint64_t sub_247D02914()
{
  result = qword_27EE649B8;
  if (!qword_27EE649B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE649B8);
  }

  return result;
}

double sub_247D02968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for FlowResponse.Step(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for FlowResponse.Step._StorageClass(0);
    swift_allocObject();
    v10 = sub_247CFEB68(v11);
    *(v4 + v8) = v10;
  }

  return sub_247D02A10(v10, a1, a2, a3);
}

double sub_247D02A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_247D1F238();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(v9)
    {
      case 1:
        sub_247D02C28(a2, a1, a3, a4);
        break;
      case 2:
        sub_247D02CAC(a2, a1, a3, a4);
        break;
      case 3:
        sub_247D02D78(a2, a1, a3, a4);
        break;
      case 4:
        sub_247D02E44(a2, a1, a3, a4);
        break;
      case 5:
        sub_247D02ED8(a2, a1, a3, a4);
        break;
      case 6:
        sub_247D02F6C(a2, a1, a3, a4);
        break;
      case 7:
        sub_247D02FF0(a2, a1, a3, a4);
        break;
      case 8:
        sub_247D03074(a1, a2, a3, a4);
        break;
      case 9:
        sub_247D03684(a1, a2, a3, a4);
        break;
      case 10:
        sub_247D03C90(a1, a2, a3, a4);
        break;
      case 11:
        sub_247D0429C(a1, a2, a3, a4);
        break;
      case 12:
        sub_247D048A8(a1, a2, a3, a4);
        break;
      case 13:
        sub_247D04EB4(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

double sub_247D02C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_247D1F2C8();
  swift_endAccess();
  return result;
}

double sub_247D02CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FlowResponse.Step.Action(0);
  sub_247D12004(&qword_27EE64A28, type metadata accessor for FlowResponse.Step.Action, &unk_247D2B288);
  sub_247D1F2D8();
  swift_endAccess();
  return result;
}

double sub_247D02D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FlowResponse.Step.HiddenAction(0);
  sub_247D12004(&qword_27EE64A68, type metadata accessor for FlowResponse.Step.HiddenAction, &unk_247D2B5A8);
  sub_247D1F2D8();
  swift_endAccess();
  return result;
}

double sub_247D02E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_247D1A720();
  sub_247D1F288();
  swift_endAccess();
  return result;
}

double sub_247D02ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_247D1A774();
  sub_247D1F288();
  swift_endAccess();
  return result;
}

double sub_247D02F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_247D1F278();
  swift_endAccess();
  return result;
}

double sub_247D02FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_247D1F278();
  swift_endAccess();
  return result;
}

double sub_247D03074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for FlowResponse.Step.Information(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64CC0, &qword_247D2CAB8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v48 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v39 - v25;
  v47 = v6;
  v27 = *(v6 + 56);
  v50 = v5;
  v43 = v27;
  v27(&v39 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v42 = a1;
  sub_247C2BD10(a1 + v28, v14, &unk_27EE63230, &unk_247D25320);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  v45 = v15;
  if (v29 == 1)
  {
    sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
    v30 = v50;
  }

  else
  {
    sub_247D19DF4(v14, v21, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247D19DF4(v21, v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
      v30 = v50;
    }

    else
    {
      sub_247C27100(v26, &qword_27EE64CC0, &qword_247D2CAB8);
      v31 = v44;
      sub_247D19DF4(v19, v44, type metadata accessor for FlowResponse.Step.Information);
      sub_247D19DF4(v31, v26, type metadata accessor for FlowResponse.Step.Information);
      v30 = v50;
      v43(v26, 0, 1, v50);
    }
  }

  v32 = v48;
  sub_247D12004(&qword_27EE64BC8, type metadata accessor for FlowResponse.Step.Information, &unk_247D2C548);
  v33 = v49;
  sub_247D1F2E8();
  if (v33)
  {
    sub_247C27100(v26, &qword_27EE64CC0, &qword_247D2CAB8);
  }

  else
  {
    sub_247C2BD10(v26, v32, &qword_27EE64CC0, &qword_247D2CAB8);
    if ((*(v47 + 48))(v32, 1, v30) == 1)
    {
      sub_247C27100(v26, &qword_27EE64CC0, &qword_247D2CAB8);
      sub_247C27100(v32, &qword_27EE64CC0, &qword_247D2CAB8);
    }

    else
    {
      v35 = v46;
      sub_247D19DF4(v32, v46, type metadata accessor for FlowResponse.Step.Information);
      if (v29 != 1)
      {
        sub_247D1F248();
      }

      v36 = v45;
      sub_247C27100(v26, &qword_27EE64CC0, &qword_247D2CAB8);
      v37 = v41;
      sub_247D19DF4(v35, v41, type metadata accessor for FlowResponse.Step.Information);
      swift_storeEnumTagMultiPayload();
      (*(v40 + 56))(v37, 0, 1, v36);
      v38 = v42;
      swift_beginAccess();
      sub_247C74F08(v37, v38 + v28);
      swift_endAccess();
    }
  }

  return result;
}

double sub_247D03684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64CC8, &qword_247D2CAC0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v40 = a1;
  sub_247C2BD10(a1 + v28, v14, &unk_27EE63230, &unk_247D25320);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
  }

  else
  {
    sub_247D19DF4(v14, v21, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247D19DF4(v21, v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_247C27100(v26, &qword_27EE64CC8, &qword_247D2CAC0);
      v29 = v44;
      sub_247D19DF4(v19, v44, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      sub_247D19DF4(v29, v26, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_247D12004(&qword_27EE64B88, type metadata accessor for FlowResponse.Step.CosmeticCapture, &unk_247D2C278);
  v32 = v47;
  sub_247D1F2E8();
  if (v32)
  {
    sub_247C27100(v26, &qword_27EE64CC8, &qword_247D2CAC0);
  }

  else
  {
    sub_247C2BD10(v26, v31, &qword_27EE64CC8, &qword_247D2CAC0);
    if ((*(v45 + 48))(v31, 1, v30) == 1)
    {
      sub_247C27100(v26, &qword_27EE64CC8, &qword_247D2CAC0);
      sub_247C27100(v31, &qword_27EE64CC8, &qword_247D2CAC0);
    }

    else
    {
      v34 = v42;
      sub_247D19DF4(v31, v42, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      if (v41 != 1)
      {
        sub_247D1F248();
      }

      sub_247C27100(v26, &qword_27EE64CC8, &qword_247D2CAC0);
      v35 = v39;
      sub_247D19DF4(v34, v39, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      swift_storeEnumTagMultiPayload();
      (*(v38 + 56))(v35, 0, 1, v15);
      v36 = v40;
      swift_beginAccess();
      sub_247C74F08(v35, v36 + v28);
      swift_endAccess();
    }
  }

  return result;
}

double sub_247D03C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for FlowResponse.Step.Loading(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64CD0, &qword_247D2CAC8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v40 = a1;
  sub_247C2BD10(a1 + v28, v14, &unk_27EE63230, &unk_247D25320);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
  }

  else
  {
    sub_247D19DF4(v14, v21, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247D19DF4(v21, v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_247C27100(v26, &qword_27EE64CD0, &qword_247D2CAC8);
      v29 = v44;
      sub_247D19DF4(v19, v44, type metadata accessor for FlowResponse.Step.Loading);
      sub_247D19DF4(v29, v26, type metadata accessor for FlowResponse.Step.Loading);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_247D12004(&qword_27EE64B28, type metadata accessor for FlowResponse.Step.Loading, "Q<O:Ģ");
  v32 = v47;
  sub_247D1F2E8();
  if (v32)
  {
    sub_247C27100(v26, &qword_27EE64CD0, &qword_247D2CAC8);
  }

  else
  {
    sub_247C2BD10(v26, v31, &qword_27EE64CD0, &qword_247D2CAC8);
    if ((*(v45 + 48))(v31, 1, v30) == 1)
    {
      sub_247C27100(v26, &qword_27EE64CD0, &qword_247D2CAC8);
      sub_247C27100(v31, &qword_27EE64CD0, &qword_247D2CAC8);
    }

    else
    {
      v34 = v42;
      sub_247D19DF4(v31, v42, type metadata accessor for FlowResponse.Step.Loading);
      if (v41 != 1)
      {
        sub_247D1F248();
      }

      sub_247C27100(v26, &qword_27EE64CD0, &qword_247D2CAC8);
      v35 = v39;
      sub_247D19DF4(v34, v39, type metadata accessor for FlowResponse.Step.Loading);
      swift_storeEnumTagMultiPayload();
      (*(v38 + 56))(v35, 0, 1, v15);
      v36 = v40;
      swift_beginAccess();
      sub_247C74F08(v35, v36 + v28);
      swift_endAccess();
    }
  }

  return result;
}

double sub_247D0429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for FlowResponse.Step.Exit(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64CD8, &qword_247D2CAD0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v40 = a1;
  sub_247C2BD10(a1 + v28, v14, &unk_27EE63230, &unk_247D25320);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
  }

  else
  {
    sub_247D19DF4(v14, v21, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247D19DF4(v21, v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_247C27100(v26, &qword_27EE64CD8, &qword_247D2CAD0);
      v29 = v44;
      sub_247D19DF4(v19, v44, type metadata accessor for FlowResponse.Step.Exit);
      sub_247D19DF4(v29, v26, type metadata accessor for FlowResponse.Step.Exit);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_247D12004(&qword_27EE64AA8, type metadata accessor for FlowResponse.Step.Exit, &unk_247D2B8A0);
  v32 = v47;
  sub_247D1F2E8();
  if (v32)
  {
    sub_247C27100(v26, &qword_27EE64CD8, &qword_247D2CAD0);
  }

  else
  {
    sub_247C2BD10(v26, v31, &qword_27EE64CD8, &qword_247D2CAD0);
    if ((*(v45 + 48))(v31, 1, v30) == 1)
    {
      sub_247C27100(v26, &qword_27EE64CD8, &qword_247D2CAD0);
      sub_247C27100(v31, &qword_27EE64CD8, &qword_247D2CAD0);
    }

    else
    {
      v34 = v42;
      sub_247D19DF4(v31, v42, type metadata accessor for FlowResponse.Step.Exit);
      if (v41 != 1)
      {
        sub_247D1F248();
      }

      sub_247C27100(v26, &qword_27EE64CD8, &qword_247D2CAD0);
      v35 = v39;
      sub_247D19DF4(v34, v39, type metadata accessor for FlowResponse.Step.Exit);
      swift_storeEnumTagMultiPayload();
      (*(v38 + 56))(v35, 0, 1, v15);
      v36 = v40;
      swift_beginAccess();
      sub_247C74F08(v35, v36 + v28);
      swift_endAccess();
    }
  }

  return result;
}

double sub_247D048A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for FlowResponse.Step.URL(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64CE0, &qword_247D2CAD8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v40 = a1;
  sub_247C2BD10(a1 + v28, v14, &unk_27EE63230, &unk_247D25320);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
  }

  else
  {
    sub_247D19DF4(v14, v21, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247D19DF4(v21, v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_247C27100(v26, &qword_27EE64CE0, &qword_247D2CAD8);
      v29 = v44;
      sub_247D19DF4(v19, v44, type metadata accessor for FlowResponse.Step.URL);
      sub_247D19DF4(v29, v26, type metadata accessor for FlowResponse.Step.URL);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_247D12004(&qword_27EE64A88, type metadata accessor for FlowResponse.Step.URL, &unk_247D2B710);
  v32 = v47;
  sub_247D1F2E8();
  if (v32)
  {
    sub_247C27100(v26, &qword_27EE64CE0, &qword_247D2CAD8);
  }

  else
  {
    sub_247C2BD10(v26, v31, &qword_27EE64CE0, &qword_247D2CAD8);
    if ((*(v45 + 48))(v31, 1, v30) == 1)
    {
      sub_247C27100(v26, &qword_27EE64CE0, &qword_247D2CAD8);
      sub_247C27100(v31, &qword_27EE64CE0, &qword_247D2CAD8);
    }

    else
    {
      v34 = v42;
      sub_247D19DF4(v31, v42, type metadata accessor for FlowResponse.Step.URL);
      if (v41 != 1)
      {
        sub_247D1F248();
      }

      sub_247C27100(v26, &qword_27EE64CE0, &qword_247D2CAD8);
      v35 = v39;
      sub_247D19DF4(v34, v39, type metadata accessor for FlowResponse.Step.URL);
      swift_storeEnumTagMultiPayload();
      (*(v38 + 56))(v35, 0, 1, v15);
      v36 = v40;
      swift_beginAccess();
      sub_247C74F08(v35, v36 + v28);
      swift_endAccess();
    }
  }

  return result;
}

double sub_247D04EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for FlowResponse.Step.Progress(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64CE8, &qword_247D2CAE0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v40 = a1;
  sub_247C2BD10(a1 + v28, v14, &unk_27EE63230, &unk_247D25320);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
  }

  else
  {
    sub_247D19DF4(v14, v21, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247D19DF4(v21, v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_247C27100(v26, &qword_27EE64CE8, &qword_247D2CAE0);
      v29 = v44;
      sub_247D19DF4(v19, v44, type metadata accessor for FlowResponse.Step.Progress);
      sub_247D19DF4(v29, v26, type metadata accessor for FlowResponse.Step.Progress);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_247D12004(&qword_27EE64AE8, type metadata accessor for FlowResponse.Step.Progress, &unk_247D2BB70);
  v32 = v47;
  sub_247D1F2E8();
  if (v32)
  {
    sub_247C27100(v26, &qword_27EE64CE8, &qword_247D2CAE0);
  }

  else
  {
    sub_247C2BD10(v26, v31, &qword_27EE64CE8, &qword_247D2CAE0);
    if ((*(v45 + 48))(v31, 1, v30) == 1)
    {
      sub_247C27100(v26, &qword_27EE64CE8, &qword_247D2CAE0);
      sub_247C27100(v31, &qword_27EE64CE8, &qword_247D2CAE0);
    }

    else
    {
      v34 = v42;
      sub_247D19DF4(v31, v42, type metadata accessor for FlowResponse.Step.Progress);
      if (v41 != 1)
      {
        sub_247D1F248();
      }

      sub_247C27100(v26, &qword_27EE64CE8, &qword_247D2CAE0);
      v35 = v39;
      sub_247D19DF4(v34, v39, type metadata accessor for FlowResponse.Step.Progress);
      swift_storeEnumTagMultiPayload();
      (*(v38 + 56))(v35, 0, 1, v15);
      v36 = v40;
      swift_beginAccess();
      sub_247C74F08(v35, v36 + v28);
      swift_endAccess();
    }
  }

  return result;
}

void sub_247D054C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for FlowResponse.Step(0);
  sub_247D0552C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    sub_247D1F178();
  }
}

void sub_247D0552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_247D1F3C8();
    if (v4)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16))
  {
    goto LABEL_9;
  }

  type metadata accessor for FlowResponse.Step.Action(0);
  sub_247D12004(&qword_27EE64A28, type metadata accessor for FlowResponse.Step.Action, &unk_247D2B288);

  sub_247D1F3D8();
  if (v4)
  {
LABEL_11:

    return;
  }

LABEL_9:
  swift_beginAccess();
  if (*(*(a1 + 40) + 16))
  {
    type metadata accessor for FlowResponse.Step.HiddenAction(0);
    sub_247D12004(&qword_27EE64A68, type metadata accessor for FlowResponse.Step.HiddenAction, &unk_247D2B5A8);

    sub_247D1F3D8();
    if (v4)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  if (!*(a1 + 48) || (v14 = *(a1 + 56), v22 = *(a1 + 48), v23 = v14, sub_247D1A720(), sub_247D1F388(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 64) || (v15 = *(a1 + 72), v20 = *(a1 + 64), v21 = v15, sub_247D1A774(), sub_247D1F388(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 73) != 1 || (sub_247D1F378(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 74) != 1 || (sub_247D1F378(), !v4))
        {
          v16 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
          swift_beginAccess();
          sub_247C2BD10(a1 + v16, v11, &unk_27EE63230, &unk_247D25320);
          v17 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
          if ((*(*(v17 - 8) + 48))(v11, 1, v17) != 1)
          {
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload > 2)
            {
              if (EnumCaseMultiPayload == 3)
              {
                sub_247D06118(a1, a2, a3, a4);
              }

              else if (EnumCaseMultiPayload == 4)
              {
                sub_247D06370(a1, a2, a3, a4);
              }

              else
              {
                sub_247D065C8(a1, a2, a3, a4);
              }
            }

            else if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_247D05C68(a1, a2, a3, a4);
              }

              else
              {
                sub_247D05EC0(a1, a2, a3, a4);
              }
            }

            else
            {
              sub_247D05A14(a1, a2, a3, a4);
            }

            sub_247D19D94(v11, type metadata accessor for FlowResponse.Step.OneOf_Contents);
          }
        }
      }
    }
  }
}

uint64_t sub_247D05A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Information(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(a1 + v11, v7, &unk_27EE63230, &unk_247D25320);
  v12 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_247C27100(v7, &unk_27EE63230, &unk_247D25320);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.Information);
    sub_247D12004(&qword_27EE64BC8, type metadata accessor for FlowResponse.Step.Information, &unk_247D2C548);
    sub_247D1F3E8();
    return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Information);
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_247D05C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(a1 + v11, v7, &unk_27EE63230, &unk_247D25320);
  v12 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_247C27100(v7, &unk_27EE63230, &unk_247D25320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    sub_247D12004(&qword_27EE64B88, type metadata accessor for FlowResponse.Step.CosmeticCapture, &unk_247D2C278);
    sub_247D1F3E8();
    return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_247D05EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Loading(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(a1 + v11, v7, &unk_27EE63230, &unk_247D25320);
  v12 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_247C27100(v7, &unk_27EE63230, &unk_247D25320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.Loading);
    sub_247D12004(&qword_27EE64B28, type metadata accessor for FlowResponse.Step.Loading, "Q<O:Ģ");
    sub_247D1F3E8();
    return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Loading);
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_247D06118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Exit(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(a1 + v11, v7, &unk_27EE63230, &unk_247D25320);
  v12 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_247C27100(v7, &unk_27EE63230, &unk_247D25320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.Exit);
    sub_247D12004(&qword_27EE64AA8, type metadata accessor for FlowResponse.Step.Exit, &unk_247D2B8A0);
    sub_247D1F3E8();
    return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Exit);
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_247D06370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.URL(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(a1 + v11, v7, &unk_27EE63230, &unk_247D25320);
  v12 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_247C27100(v7, &unk_27EE63230, &unk_247D25320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.URL);
    sub_247D12004(&qword_27EE64A88, type metadata accessor for FlowResponse.Step.URL, &unk_247D2B710);
    sub_247D1F3E8();
    return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.URL);
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_247D065C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Progress(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(a1 + v11, v7, &unk_27EE63230, &unk_247D25320);
  v12 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_247C27100(v7, &unk_27EE63230, &unk_247D25320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.Progress);
    sub_247D12004(&qword_27EE64AE8, type metadata accessor for FlowResponse.Step.Progress, &unk_247D2BB70);
    sub_247D1F3E8();
    return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Progress);
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  __break(1u);
  return result;
}

BOOL sub_247D06820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C58, &unk_247D2CA60);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230, &unk_247D25320);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  if (__PAIR128__(v15, v16) != *(a2 + 16) && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v40 = v8;
  swift_beginAccess();
  v17 = *(a1 + 32);
  swift_beginAccess();
  v18 = *(a2 + 32);

  v19 = sub_247D157D0(v17, v18);

  if ((v19 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v20 = *(a1 + 40);
  swift_beginAccess();
  v21 = *(a2 + 40);

  v22 = sub_247D15AC0(v20, v21);

  if ((v22 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  swift_beginAccess();
  if (!sub_247CF82EC(v23, v24, *(a2 + 48)))
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v25 = *(a1 + 64);
  swift_beginAccess();
  v26 = *(a2 + 64);
  if (*(a2 + 72) == 1)
  {
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_23;
        }
      }

      else if (v25 != 3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!v26)
      {
        if (!v25)
        {
          goto LABEL_12;
        }

LABEL_23:

        return 0;
      }

      if (v25 != 1)
      {
        goto LABEL_23;
      }
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_23;
  }

LABEL_12:
  swift_beginAccess();
  v27 = *(a1 + 73);
  swift_beginAccess();
  if (v27 != *(a2 + 73))
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v28 = *(a1 + 74);
  swift_beginAccess();
  if (v28 != *(a2 + 74))
  {
    goto LABEL_23;
  }

  v29 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(a1 + v29, v14, &unk_27EE63230, &unk_247D25320);
  v30 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v31 = *(v6 + 48);
  v32 = v40;
  sub_247C2BD10(v14, v40, &unk_27EE63230, &unk_247D25320);
  v39 = v31;
  sub_247C2BD10(a2 + v30, v32 + v31, &unk_27EE63230, &unk_247D25320);
  v33 = *(v42 + 48);
  if (v33(v32, 1, v4) != 1)
  {
    sub_247C2BD10(v32, v12, &unk_27EE63230, &unk_247D25320);
    v35 = v39;
    if (v33(v32 + v39, 1, v4) == 1)
    {

      sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
      sub_247D19D94(v12, type metadata accessor for FlowResponse.Step.OneOf_Contents);
      goto LABEL_27;
    }

    v36 = v41;
    sub_247D19DF4(v32 + v35, v41, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    v37 = sub_247D17CF0(v12, v36);

    sub_247D19D94(v36, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
    sub_247D19D94(v12, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    sub_247C27100(v32, &unk_27EE63230, &unk_247D25320);
    return (v37 & 1) != 0;
  }

  sub_247C27100(v14, &unk_27EE63230, &unk_247D25320);
  if (v33(v32 + v39, 1, v4) != 1)
  {
LABEL_27:
    sub_247C27100(v32, &qword_27EE64C58, &unk_247D2CA60);
    return 0;
  }

  sub_247C27100(v32, &unk_27EE63230, &unk_247D25320);
  return 1;
}

double sub_247D06E9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_247D1F188();
  v4 = *(a1 + 20);
  if (qword_27EE62648 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27EE646A8;

  return result;
}

uint64_t sub_247D06F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64CA8, type metadata accessor for FlowResponse.Step, &unk_247D2C6C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D07028(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64BE8, type metadata accessor for FlowResponse.Step, &unk_247D2C700);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D07094(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64BE8, type metadata accessor for FlowResponse.Step, &unk_247D2C700);

  return sub_247D1F338();
}

uint64_t sub_247D07114()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72EB8);
  __swift_project_value_buffer(v0, qword_27EE72EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE_PEER_COMMAND";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RETRY";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PREPARE_CAMERA";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ASSESSMENT_COMPLETED";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0737C()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72ED0);
  __swift_project_value_buffer(v0, qword_27EE72ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_247D2A1E0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "NONE_PEER_STEP";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_247D1F3F8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DARK_QR_CODE";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "LIGHT_QR_CODE";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TURN_DEVICE_OVER";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CHECKING_FOR_DAMAGE";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "FINISHED_ASSESSMENT";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RETRY_FLOW";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ISSUE_FOUND";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_247D1F408();
}

uint64_t sub_247D07710()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72EF8);
  __swift_project_value_buffer(v0, qword_27EE72EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "masthead";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bulleted_List_Items";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "footnote_key";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D07930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_247D1F238();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_247D1F2C8();
          break;
        case 2:
          type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
          sub_247D12004(&qword_27EE64BA8, type metadata accessor for FlowResponse.Step.Information.BulletedListItem, &unk_247D2C3E0);
          sub_247D1F2D8();
          break;
        case 1:
          sub_247D07A50(a1, v5, a2, a3);
          break;
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D07A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowResponse.Step.Information(0);
  type metadata accessor for FlowResponse.Step.Masthead(0);
  sub_247D12004(&qword_27EE64A48, type metadata accessor for FlowResponse.Step.Masthead, &unk_247D2B418);
  return sub_247D1F2E8();
}

uint64_t sub_247D07B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D07C34(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
      sub_247D12004(&qword_27EE64BA8, type metadata accessor for FlowResponse.Step.Information.BulletedListItem, &unk_247D2C3E0);
      sub_247D1F3D8();
    }

    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_247D1F3C8();
    }

    type metadata accessor for FlowResponse.Step.Information(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247D07C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68, &qword_247D2A310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.Information(0);
  sub_247C2BD10(a1 + *(v12 + 28), v7, &qword_27EE62F68, &qword_247D2A310);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE62F68, &qword_247D2A310);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FlowResponse.Step.Masthead);
  sub_247D12004(&qword_27EE64A48, type metadata accessor for FlowResponse.Step.Masthead, &unk_247D2B418);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FlowResponse.Step.Masthead);
}

uint64_t sub_247D07E54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  sub_247D1F188();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_247D07F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64CF0, type metadata accessor for FlowResponse.Step.Information, &unk_247D2C510);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D07FE0(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64BC8, type metadata accessor for FlowResponse.Step.Information, &unk_247D2C548);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0804C(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64BC8, type metadata accessor for FlowResponse.Step.Information, &unk_247D2C548);

  return sub_247D1F338();
}

void sub_247D080C8()
{
  if (qword_27EE62660 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE72EE8;
  v1 = qword_27EE72EF0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x24C1B7B80](0xD000000000000011, 0x8000000247D33270);

  qword_27EE72F10 = v0;
  *algn_27EE72F18 = v1;
}

uint64_t sub_247D08170()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72F20);
  __swift_project_value_buffer(v0, qword_27EE72F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title_key";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description_key";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sf_symbol_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sf_symbol_prefers_monochrome";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "sf_symbol_configuration";
  *(v15 + 8) = 23;
  *(v15 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D08404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_247D1F238();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        sub_247D1F2C8();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_2;
        case 4:
          sub_247D1F278();
          break;
        case 5:
          sub_247D084E0(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_247D084E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
  type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  sub_247D12004(&qword_27EE649E8, type metadata accessor for FlowResponse.SFSymbolConfiguration, &unk_247D2AF90);
  return sub_247D1F2E8();
}

uint64_t sub_247D08594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_247D1F3C8(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_247D1F3C8(), !v4))
    {
      v13 = *(v3 + 40);
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_247D1F3C8(), !v4))
      {
        if (*(v3 + 48) != 1 || (result = sub_247D1F378(), !v4))
        {
          result = sub_247D086C8(v3, a1, a2, a3);
          if (!v4)
          {
            type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
            return sub_247D1F178();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_247D086C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60, &unk_247D23D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
  sub_247C2BD10(a1 + *(v12 + 36), v7, &qword_27EE62F60, &unk_247D23D70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE62F60, &unk_247D23D70);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  sub_247D12004(&qword_27EE649E8, type metadata accessor for FlowResponse.SFSymbolConfiguration, &unk_247D2AF90);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FlowResponse.SFSymbolConfiguration);
}

uint64_t sub_247D088E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  sub_247D1F188();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_247D089D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64CF8, type metadata accessor for FlowResponse.Step.Information.BulletedListItem, &unk_247D2C3A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D08A70(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64BA8, type metadata accessor for FlowResponse.Step.Information.BulletedListItem, &unk_247D2C3E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D08ADC(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64BA8, type metadata accessor for FlowResponse.Step.Information.BulletedListItem, &unk_247D2C3E0);

  return sub_247D1F338();
}

uint64_t sub_247D08B5C()
{
  result = MEMORY[0x24C1B7B80](0xD000000000000010, 0x8000000247D332F0);
  qword_27EE72F38 = 0xD000000000000011;
  unk_27EE72F40 = 0x8000000247D33090;
  return result;
}

uint64_t sub_247D08BD0()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72F48);
  __swift_project_value_buffer(v0, qword_27EE72F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_247D2A1F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "navigation_title_key";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_247D1F3F8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "title_key";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "body_key";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "upload_token";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "authenticating_configuration";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "capture_configuration";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "image_validations";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  return sub_247D1F408();
}

uint64_t sub_247D08ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_247D1F238();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
          sub_247D1F2C8();
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          sub_247D091D4(a1, v5, a2, a3);
        }

        else if (result == 8)
        {
          type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo(0);
          sub_247D12004(&qword_27EE64B48, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo, &unk_247D2BFA8);
          sub_247D1F2D8();
        }
      }

      else if (result == 4)
      {
        sub_247D0906C(a1, v5, a2, a3);
      }

      else if (result == 6)
      {
        sub_247D09120(a1, v5, a2, a3);
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D0906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  type metadata accessor for FileUploadToken(0);
  sub_247D12004(&qword_27EE64D08, type metadata accessor for FileUploadToken, &unk_247D2CF14);
  return sub_247D1F2E8();
}

uint64_t sub_247D09120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  sub_247D12004(&qword_27EE64B68, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, &unk_247D2C110);
  return sub_247D1F2E8();
}

uint64_t sub_247D091D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  sub_247D12004(&qword_27EE64B68, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, &unk_247D2C110);
  return sub_247D1F2E8();
}

uint64_t sub_247D09288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_247D1F3C8(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_247D1F3C8(), !v4))
    {
      v13 = v3[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_247D1F3C8(), !v4))
      {
        result = sub_247D09444(v3, a1, a2, a3);
        if (!v4)
        {
          sub_247D09660(v3, a1, a2, a3);
          sub_247D0987C(v3, a1, a2, a3);
          if (*(v3[6] + 16))
          {
            type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo(0);
            sub_247D12004(&qword_27EE64B48, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo, &unk_247D2BFA8);
            sub_247D1F3D8();
          }

          type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
          return sub_247D1F178();
        }
      }
    }
  }

  return result;
}

uint64_t sub_247D09444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290, &qword_247D243F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FileUploadToken(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(a1 + *(v12 + 36), v7, &qword_27EE63290, &qword_247D243F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE63290, &qword_247D243F0);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FileUploadToken);
  sub_247D12004(&qword_27EE64D08, type metadata accessor for FileUploadToken, &unk_247D2CF14);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FileUploadToken);
}

uint64_t sub_247D09660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0, &unk_247D237F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(a1 + *(v12 + 40), v7, &qword_27EE62DE0, &unk_247D237F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE62DE0, &unk_247D237F0);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  sub_247D12004(&qword_27EE64B68, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, &unk_247D2C110);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
}

uint64_t sub_247D0987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0, &unk_247D237F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(a1 + *(v12 + 44), v7, &qword_27EE62DE0, &unk_247D237F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE62DE0, &unk_247D237F0);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  sub_247D12004(&qword_27EE64B68, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, &unk_247D2C110);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
}

uint64_t sub_247D09A98@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = MEMORY[0x277D84F90];
  sub_247D1F188();
  v4 = a1[9];
  v5 = type metadata accessor for FileUploadToken(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[10];
  v7 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), &a2[v6], 1, 1, v7);
  v8 = &a2[a1[11]];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_247D09C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D00, type metadata accessor for FlowResponse.Step.CosmeticCapture, &unk_247D2C240);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D09CB0(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64B88, type metadata accessor for FlowResponse.Step.CosmeticCapture, &unk_247D2C278);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D09D1C(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64B88, type metadata accessor for FlowResponse.Step.CosmeticCapture, &unk_247D2C278);

  return sub_247D1F338();
}

void sub_247D09D98()
{
  if (qword_27EE62680 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE72F38;
  v1 = qword_27EE72F40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x24C1B7B80](0x756769666E6F432ELL, 0xEE006E6F69746172);

  qword_27EE72F60 = v0;
  *algn_27EE72F68 = v1;
}

uint64_t sub_247D09E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D1F238();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_247D1F168();
        sub_247D1F228();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D09F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_247D1F168(), result = sub_247D1F358(), !v4))
  {
    type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247D0A078(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D10, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, &unk_247D2C0D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0A118(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64B68, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, &unk_247D2C110);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0A184(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64B68, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, &unk_247D2C110);

  return sub_247D1F338();
}

void sub_247D0A218()
{
  if (qword_27EE62680 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE72F38;
  v1 = qword_27EE72F40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x24C1B7B80](0xD000000000000014, 0x8000000247D333A0);

  qword_27EE72F88 = v0;
  unk_27EE72F90 = v1;
}

uint64_t sub_247D0A2C0()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72F98);
  __swift_project_value_buffer(v0, qword_27EE72F98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D23870;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "validation_id";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "step_id";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0A500(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D18, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo, &unk_247D2BF70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0A5A0(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64B48, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo, &unk_247D2BFA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0A60C(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64B48, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo, &unk_247D2BFA8);

  return sub_247D1F338();
}

uint64_t sub_247D0A6B0()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72FC0);
  __swift_project_value_buffer(v0, qword_27EE72FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D23870;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "masthead";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_upload";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_247D1F238();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_247D0A914(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_247D0A9C8(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_247D0A914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowResponse.Step.Loading(0);
  type metadata accessor for FlowResponse.Step.Masthead(0);
  sub_247D12004(&qword_27EE64A48, type metadata accessor for FlowResponse.Step.Masthead, &unk_247D2B418);
  return sub_247D1F2E8();
}

uint64_t sub_247D0A9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for FlowResponse.Step.Loading.ImageUpload(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA0, &qword_247D23DD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64D28, &qword_247D2CAE8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_247C2BD10(v45, v11, &qword_27EE62FA0, &qword_247D23DD8);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_247C27100(v11, &qword_27EE62FA0, &qword_247D23DD8);
    v26 = v40;
  }

  else
  {
    sub_247D19DF4(v11, v18, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
    sub_247D19DF4(v18, v16, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
    sub_247C27100(v23, &qword_27EE64D28, &qword_247D2CAE8);
    v27 = v38;
    sub_247D19DF4(v16, v38, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
    sub_247D19DF4(v27, v23, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_247D12004(&qword_27EE64B08, type metadata accessor for FlowResponse.Step.Loading.ImageUpload, &unk_247D2BCD8);
  v28 = v41;
  sub_247D1F2E8();
  v29 = v39;
  if (v28)
  {
    return sub_247C27100(v23, &qword_27EE64D28, &qword_247D2CAE8);
  }

  sub_247C2BD10(v23, v39, &qword_27EE64D28, &qword_247D2CAE8);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_247C27100(v23, &qword_27EE64D28, &qword_247D2CAE8);
    return sub_247C27100(v29, &qword_27EE64D28, &qword_247D2CAE8);
  }

  else
  {
    v31 = v36;
    sub_247D19DF4(v29, v36, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
    if (v25 != 1)
    {
      sub_247D1F248();
    }

    sub_247C27100(v23, &qword_27EE64D28, &qword_247D2CAE8);
    v32 = v45;
    sub_247C27100(v45, &qword_27EE62FA0, &qword_247D23DD8);
    sub_247D19DF4(v31, v32, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_247D0AF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D0AFA4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_247D0B1C0(v3, a1, a2, a3);
    type metadata accessor for FlowResponse.Step.Loading(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247D0AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68, &qword_247D2A310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.Loading(0);
  sub_247C2BD10(a1 + *(v12 + 24), v7, &qword_27EE62F68, &qword_247D2A310);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE62F68, &qword_247D2A310);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FlowResponse.Step.Masthead);
  sub_247D12004(&qword_27EE64A48, type metadata accessor for FlowResponse.Step.Masthead, &unk_247D2B418);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FlowResponse.Step.Masthead);
}

uint64_t sub_247D0B1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA0, &qword_247D23DD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Loading.ImageUpload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247C2BD10(a1, v7, &qword_27EE62FA0, &qword_247D23DD8);
  v11 = type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_247C27100(v7, &qword_27EE62FA0, &qword_247D23DD8);
  }

  sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  sub_247D12004(&qword_27EE64B08, type metadata accessor for FlowResponse.Step.Loading.ImageUpload, &unk_247D2BCD8);
  sub_247D1F3E8();
  return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
}

uint64_t sub_247D0B3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  sub_247D1F188();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_247D0B4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D20, type metadata accessor for FlowResponse.Step.Loading, &unk_247D2BE08);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0B57C(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64B28, type metadata accessor for FlowResponse.Step.Loading, "Q<O:Ģ");

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0B5E8(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64B28, type metadata accessor for FlowResponse.Step.Loading, "Q<O:Ģ");

  return sub_247D1F338();
}

void sub_247D0B668()
{
  if (qword_27EE626B0 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE72FB0;
  v1 = *algn_27EE72FB8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x24C1B7B80](0x70556567616D492ELL, 0xEC00000064616F6CLL);

  qword_27EE72FD8 = v0;
  unk_27EE72FE0 = v1;
}

uint64_t sub_247D0B720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_247D1F238();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_247D0B7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D30, type metadata accessor for FlowResponse.Step.Loading.ImageUpload, &unk_247D2BCA0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0B878(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64B08, type metadata accessor for FlowResponse.Step.Loading.ImageUpload, &unk_247D2BCD8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0B8E4(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64B08, type metadata accessor for FlowResponse.Step.Loading.ImageUpload, &unk_247D2BCD8);

  return sub_247D1F338();
}

uint64_t sub_247D0B98C()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73010);
  __swift_project_value_buffer(v0, qword_27EE73010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title_key";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle_key";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "image_upload";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0BB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_247D1F238();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_247D0BC3C(v5, a1, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_247D1F2C8();
    }
  }

  return result;
}

uint64_t sub_247D0BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a1;
  v4 = type metadata accessor for FlowResponse.Step.Progress.ImageUpload(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63740, &qword_247D25CF8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64D40, &qword_247D2CAF0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v40 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v34 - v22;
  v38 = v5;
  v24 = *(v5 + 56);
  v41 = v4;
  v24(&v34 - v22, 1, 1, v4);
  v34 = *(type metadata accessor for FlowResponse.Step.Progress(0) + 24);
  sub_247C2BD10(v46 + v34, v11, &qword_27EE63740, &qword_247D25CF8);
  v35 = v13;
  v36 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_247C27100(v11, &qword_27EE63740, &qword_247D25CF8);
    v26 = v41;
  }

  else
  {
    sub_247D19DF4(v11, v18, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
    sub_247D19DF4(v18, v16, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
    sub_247C27100(v23, &qword_27EE64D40, &qword_247D2CAF0);
    v27 = v39;
    sub_247D19DF4(v16, v39, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
    sub_247D19DF4(v27, v23, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
    v26 = v41;
    v24(v23, 0, 1, v41);
  }

  sub_247D12004(&qword_27EE64AC8, type metadata accessor for FlowResponse.Step.Progress.ImageUpload, &unk_247D2BA08);
  v28 = v42;
  sub_247D1F2E8();
  v29 = v40;
  if (v28)
  {
    return sub_247C27100(v23, &qword_27EE64D40, &qword_247D2CAF0);
  }

  sub_247C2BD10(v23, v40, &qword_27EE64D40, &qword_247D2CAF0);
  if ((*(v38 + 48))(v29, 1, v26) == 1)
  {
    sub_247C27100(v23, &qword_27EE64D40, &qword_247D2CAF0);
    return sub_247C27100(v29, &qword_27EE64D40, &qword_247D2CAF0);
  }

  else
  {
    v31 = v37;
    sub_247D19DF4(v29, v37, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
    if (v25 != 1)
    {
      sub_247D1F248();
    }

    sub_247C27100(v23, &qword_27EE64D40, &qword_247D2CAF0);
    v32 = v46;
    v33 = v34;
    sub_247C27100(v46 + v34, &qword_27EE63740, &qword_247D25CF8);
    sub_247D19DF4(v31, v32 + v33, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
    return (*(v35 + 56))(v32 + v33, 0, 1, v36);
  }
}

uint64_t sub_247D0C1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_247D1F3C8(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_247D1F3C8(), !v4))
    {
      result = sub_247D0C27C(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for FlowResponse.Step.Progress(0);
        return sub_247D1F178();
      }
    }
  }

  return result;
}

uint64_t sub_247D0C27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63740, &qword_247D25CF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Step.Progress.ImageUpload(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowResponse.Step.Progress(0);
  sub_247C2BD10(a1 + *(v11 + 24), v7, &qword_27EE63740, &qword_247D25CF8);
  v12 = type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    return sub_247C27100(v7, &qword_27EE63740, &qword_247D25CF8);
  }

  sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  sub_247D12004(&qword_27EE64AC8, type metadata accessor for FlowResponse.Step.Progress.ImageUpload, &unk_247D2BA08);
  sub_247D1F3E8();
  return sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
}

uint64_t sub_247D0C488@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return sub_247D1F188();
}

uint64_t sub_247D0C568(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D38, type metadata accessor for FlowResponse.Step.Progress, &unk_247D2BB38);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0C608(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64AE8, type metadata accessor for FlowResponse.Step.Progress, &unk_247D2BB70);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0C674(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64AE8, type metadata accessor for FlowResponse.Step.Progress, &unk_247D2BB70);

  return sub_247D1F338();
}

void sub_247D0C6F4()
{
  if (qword_27EE626D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE73000;
  v1 = *algn_27EE73008;
  swift_bridgeObjectRetain_n();
  MEMORY[0x24C1B7B80](0x70556567616D492ELL, 0xEC00000064616F6CLL);

  qword_27EE73028 = v0;
  unk_27EE73030 = v1;
}

uint64_t sub_247D0C7AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_247D1F428();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_247D1F418();
}

uint64_t sub_247D0C81C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247D1F198();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_247D0C884(uint64_t a1)
{
  v3 = sub_247D1F198();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_247D0C8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D48, type metadata accessor for FlowResponse.Step.Progress.ImageUpload, &unk_247D2B9D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0C98C(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64AC8, type metadata accessor for FlowResponse.Step.Progress.ImageUpload, &unk_247D2BA08);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0C9F8(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64AC8, type metadata accessor for FlowResponse.Step.Progress.ImageUpload, &unk_247D2BA08);

  return sub_247D1F338();
}

uint64_t sub_247D0CA74(uint64_t a1, uint64_t a2)
{
  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D0CB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D1F238();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_247D1A7C8();
        sub_247D1F288();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D0CBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_247D1A7C8(), result = sub_247D1F388(), !v4))
  {
    type metadata accessor for FlowResponse.Step.Exit(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247D0CC90@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  return sub_247D1F188();
}

uint64_t sub_247D0CD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D50, type metadata accessor for FlowResponse.Step.Exit, &unk_247D2B868);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0CDB4(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64AA8, type metadata accessor for FlowResponse.Step.Exit, &unk_247D2B8A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0CE20(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64AA8, type metadata accessor for FlowResponse.Step.Exit, &unk_247D2B8A0);

  return sub_247D1F338();
}

uint64_t sub_247D0CEA0()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73078);
  __swift_project_value_buffer(v0, qword_27EE73078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIEW_SUPPORT_OPTIONS";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "EXCEEDED_RETRY_LIMIT";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0D10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_247D1F3C8(), !v4))
  {
    type metadata accessor for FlowResponse.Step.URL(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247D0D1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D60, type metadata accessor for FlowResponse.Step.URL, &unk_247D2B6D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0D280(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64A88, type metadata accessor for FlowResponse.Step.URL, &unk_247D2B710);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0D2EC(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64A88, type metadata accessor for FlowResponse.Step.URL, &unk_247D2B710);

  return sub_247D1F338();
}

uint64_t sub_247D0D368(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D0D454()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE730C8);
  __swift_project_value_buffer(v0, qword_27EE730C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D23870;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "step_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "child_context";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0D61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D1F238();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_247D1F2C8();
      }

      else if (result == 2)
      {
        sub_247D1A81C();
        sub_247D1F288();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D0D6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_247D1F3C8(), !v4))
  {
    if (!v3[2] || (sub_247D1A81C(), result = sub_247D1F388(), !v4))
    {
      type metadata accessor for FlowResponse.Step.HiddenAction(0);
      return sub_247D1F178();
    }
  }

  return result;
}

uint64_t sub_247D0D7BC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return sub_247D1F188();
}

uint64_t sub_247D0D848(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D68, type metadata accessor for FlowResponse.Step.HiddenAction, &unk_247D2B570);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0D8E8(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64A68, type metadata accessor for FlowResponse.Step.HiddenAction, &unk_247D2B5A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0D954(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64A68, type metadata accessor for FlowResponse.Step.HiddenAction, &unk_247D2B5A8);

  return sub_247D1F338();
}

uint64_t sub_247D0D9D4()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE730E0);
  __swift_project_value_buffer(v0, qword_27EE730E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SMUDGE";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FINAL_ASSESSMENT";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UNABLE_TO_CAPTURE";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "GENERIC_ERROR";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "POSSIBLE_ISSUE";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0DCE8()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73108);
  __swift_project_value_buffer(v0, qword_27EE73108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sf_symbol_name";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sf_symbol_prefers_monochrome";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "title_key";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "subtitle_key";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "animated_icon";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sf_symbol_configuration";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0DFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_247D1F238();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
LABEL_4:
            sub_247D1F2C8();
            break;
          case 5:
            sub_247D1A870();
            sub_247D1F288();
            break;
          case 6:
            sub_247D0E0DC(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_4;
          case 2:
            sub_247D1F278();
            break;
          case 3:
            goto LABEL_4;
        }
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D0E0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowResponse.Step.Masthead(0);
  type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  sub_247D12004(&qword_27EE649E8, type metadata accessor for FlowResponse.SFSymbolConfiguration, &unk_247D2AF90);
  return sub_247D1F2E8();
}

uint64_t sub_247D0E190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_247D1F3C8(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_247D1F378(), !v4))
    {
      v11 = *(v3 + 32);
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_247D1F3C8(), !v4))
      {
        v13 = *(v3 + 48);
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v14 || (result = sub_247D1F3C8(), !v4))
        {
          if (!*(v3 + 56) || (sub_247D1A870(), result = sub_247D1F388(), !v4))
          {
            result = sub_247D0E314(v3, a1, a2, a3);
            if (!v4)
            {
              type metadata accessor for FlowResponse.Step.Masthead(0);
              return sub_247D1F178();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_247D0E314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60, &unk_247D23D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.Masthead(0);
  sub_247C2BD10(a1 + *(v12 + 40), v7, &qword_27EE62F60, &unk_247D23D70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE62F60, &unk_247D23D70);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  sub_247D12004(&qword_27EE649E8, type metadata accessor for FlowResponse.SFSymbolConfiguration, &unk_247D2AF90);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FlowResponse.SFSymbolConfiguration);
}

uint64_t sub_247D0E534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  sub_247D1F188();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_247D0E62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D78, type metadata accessor for FlowResponse.Step.Masthead, &unk_247D2B3E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0E6CC(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64A48, type metadata accessor for FlowResponse.Step.Masthead, &unk_247D2B418);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0E738(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64A48, type metadata accessor for FlowResponse.Step.Masthead, &unk_247D2B418);

  return sub_247D1F338();
}

uint64_t sub_247D0E7B8()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73120);
  __swift_project_value_buffer(v0, qword_27EE73120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HEARTBEAT";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "CHECKING_IMAGES";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0EA10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x24C1B7B80](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x8000000247D33090;
  return result;
}

uint64_t sub_247D0EA7C()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73148);
  __swift_project_value_buffer(v0, qword_27EE73148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "step_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title_key";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "role";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "accessory_sf_symbol_name";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0ECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D1F238();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_247D1A8C4();
          sub_247D1F288();
        }

        else if (result == 4)
        {
          goto LABEL_4;
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        sub_247D1F2C8();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D0EDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_247D1F3C8(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_247D1F3C8(), !v4))
    {
      if (!v3[4] || (sub_247D1A8C4(), result = sub_247D1F388(), !v4))
      {
        v10 = v3[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_247D1F3C8(), !v4))
        {
          type metadata accessor for FlowResponse.Step.Action(0);
          return sub_247D1F178();
        }
      }
    }
  }

  return result;
}

uint64_t sub_247D0EF04@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  return sub_247D1F188();
}

uint64_t sub_247D0EF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D88, type metadata accessor for FlowResponse.Step.Action, &unk_247D2B250);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0F038(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64A28, type metadata accessor for FlowResponse.Step.Action, &unk_247D2B288);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0F0A4(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64A28, type metadata accessor for FlowResponse.Step.Action, &unk_247D2B288);

  return sub_247D1F338();
}

uint64_t sub_247D0F124()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73160);
  __swift_project_value_buffer(v0, qword_27EE73160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PRIMARY";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SECONDARY";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "TERTIARY";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0F358()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73178);
  __swift_project_value_buffer(v0, qword_27EE73178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D23870;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "marketing_name";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0F528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_247D1F238();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_247D1F2C8();
    }
  }

  return result;
}

uint64_t sub_247D0F5D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_247D1F3C8(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_247D1F3C8(), !v5))
    {
      a4(0);
      return sub_247D1F178();
    }
  }

  return result;
}

uint64_t sub_247D0F6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64D98, type metadata accessor for FlowResponse.Product, &unk_247D2B0C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D0F764(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE64A08, type metadata accessor for FlowResponse.Product, &unk_247D2B0F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D0F7D0(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE64A08, type metadata accessor for FlowResponse.Product, &unk_247D2B0F8);

  return sub_247D1F338();
}

uint64_t sub_247D0F84C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D0F928()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73190);
  __swift_project_value_buffer(v0, qword_27EE73190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "symbol_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "monochrome";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "palette_colors";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "apply_gradient_effect";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D0FB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_247D1F238();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_247D0FE58(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
        sub_247D1F278();
      }
    }

    else if (result == 1)
    {
      sub_247D1F2C8();
    }

    else if (result == 2)
    {
      sub_247D0FC70(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_247D0FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390, &unk_247D2A340);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v18 = 2;
  result = sub_247D1F268();
  if (!v4 && v18 != 2)
  {
    v17 = v18;
    v16 = 0;
    v10 = *(type metadata accessor for FlowResponse.SFSymbolConfiguration(0) + 20);
    sub_247C2BD10(a2 + v10, v8, &qword_27EE63390, &unk_247D2A340);
    v11 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    sub_247C27100(v8, &qword_27EE63390, &unk_247D2A340);
    if (v13 != 1)
    {
      v14 = v16;
      result = sub_247D1F248();
      if (v14)
      {
        return result;
      }

      v16 = 0;
    }

    sub_247C27100(a2 + v10, &qword_27EE63390, &unk_247D2A340);
    *(a2 + v10) = v17 & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2 + v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_247D0FE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390, &unk_247D2A340);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64DA8, &qword_247D2CAF8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for FlowResponse.SFSymbolConfiguration(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_247C2BD10(a1 + v28, v12, &qword_27EE63390, &unk_247D2A340);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_247C27100(v12, &qword_27EE63390, &unk_247D2A340);
    v30 = v13;
  }

  else
  {
    sub_247D19DF4(v12, v19, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
    sub_247D19DF4(v19, v17, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_247C27100(v24, &qword_27EE64DA8, &qword_247D2CAF8);
      v31 = v17;
      v32 = v45;
      sub_247D19DF4(v31, v45, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
      sub_247D19DF4(v32, v24, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_247D19D94(v17, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_247D12004(&qword_27EE649C8, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors, &unk_247D2AE00);
  v35 = v48;
  sub_247D1F2E8();
  if (v35)
  {
    return sub_247C27100(v24, &qword_27EE64DA8, &qword_247D2CAF8);
  }

  sub_247C2BD10(v24, v34, &qword_27EE64DA8, &qword_247D2CAF8);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_247C27100(v24, &qword_27EE64DA8, &qword_247D2CAF8);
    return sub_247C27100(v34, &qword_27EE64DA8, &qword_247D2CAF8);
  }

  else
  {
    v37 = v44;
    sub_247D19DF4(v34, v44, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
    if (v29 != 1)
    {
      sub_247D1F248();
    }

    sub_247C27100(v24, &qword_27EE64DA8, &qword_247D2CAF8);
    v38 = v43;
    v39 = v41;
    sub_247C27100(v43 + v41, &qword_27EE63390, &unk_247D2A340);
    sub_247D19DF4(v37, v38 + v39, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_247D10420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390, &unk_247D2A340);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = v3[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    result = sub_247D1F3C8();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v15 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  sub_247C2BD10(v3 + *(v15 + 20), v11, &qword_27EE63390, &unk_247D2A340);
  v16 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    v17 = v5;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v5;
    sub_247D10794(v3, a1, a2, a3);
    result = sub_247D19D94(v11, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v17 = v5;
    result = sub_247D10624(v3, a1, a2, a3);
    if (v5)
    {
      return result;
    }
  }

  if (*(v3 + *(v15 + 24)) != 1)
  {
    return sub_247D1F178();
  }

  result = sub_247D1F378();
  if (!v17)
  {
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247D10624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390, &unk_247D2A340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  sub_247C2BD10(a1 + *(v8 + 20), v7, &qword_27EE63390, &unk_247D2A340);
  v9 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_247C27100(v7, &qword_27EE63390, &unk_247D2A340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_247D1F378();
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
  __break(1u);
  return result;
}

uint64_t sub_247D10794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390, &unk_247D2A340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  sub_247C2BD10(a1 + *(v11 + 20), v7, &qword_27EE63390, &unk_247D2A340);
  v12 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_247C27100(v7, &qword_27EE63390, &unk_247D2A340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D19DF4(v7, v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
    sub_247D12004(&qword_27EE649C8, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors, &unk_247D2AE00);
    sub_247D1F3E8();
    return sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
  }

  result = sub_247D19D94(v7, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
  __break(1u);
  return result;
}

uint64_t sub_247D109DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  a2[*(a1 + 24)] = 0;
  return sub_247D1F188();
}

uint64_t sub_247D10AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64DA0, type metadata accessor for FlowResponse.SFSymbolConfiguration, &unk_247D2AF58);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D10B50(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE649E8, type metadata accessor for FlowResponse.SFSymbolConfiguration, &unk_247D2AF90);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D10BBC(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE649E8, type metadata accessor for FlowResponse.SFSymbolConfiguration, &unk_247D2AF90);

  return sub_247D1F338();
}

uint64_t sub_247D10C38()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE731A8);
  __swift_project_value_buffer(v0, qword_27EE731A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_247D2A200;
  v4 = v98 + v3;
  v5 = v98 + v3 + v1[14];
  *(v98 + v3) = 0;
  *v5 = "CLEAR";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_247D1F3F8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v98 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SYSTEM_RED";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v98 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SYSTEM_GREEN";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v98 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SYSTEM_BLUE";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v98 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "SYSTEM_ORANGE";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v98 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SYSTEM_YELLOW";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v98 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "SYSTEM_PURPLE";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v98 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SYSTEM_PINK";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v98 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "SYSTEM_TEAL";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v98 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SYSTEM_INDIGO";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v98 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SYSTEM_BROWN";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v98 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SYSTEM_MINT";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v98 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SYSTEM_CYAN";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v98 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "BLACK";
  *(v32 + 1) = 5;
  v32[16] = 2;
  v8();
  v33 = (v98 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "WHITE";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v8();
  v35 = (v98 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "GRAY";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v98 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "RED";
  *(v37 + 8) = 3;
  *(v37 + 16) = 2;
  v8();
  v38 = (v98 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "GREEN";
  *(v39 + 1) = 5;
  v39[16] = 2;
  v8();
  v40 = (v98 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "BLUE";
  *(v41 + 1) = 4;
  v41[16] = 2;
  v8();
  v42 = (v98 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "ORANGE";
  *(v43 + 1) = 6;
  v43[16] = 2;
  v8();
  v44 = (v98 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "YELLOW";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v8();
  v46 = (v98 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "PURPLE";
  *(v47 + 1) = 6;
  v47[16] = 2;
  v8();
  v48 = (v98 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "BROWN";
  *(v49 + 1) = 5;
  v49[16] = 2;
  v8();
  v50 = (v98 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "SYSTEM_GRAY";
  *(v51 + 1) = 11;
  v51[16] = 2;
  v8();
  v52 = (v98 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "SYSTEM_GRAY2";
  *(v53 + 1) = 12;
  v53[16] = 2;
  v8();
  v54 = (v98 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "SYSTEM_GRAY3";
  *(v55 + 1) = 12;
  v55[16] = 2;
  v8();
  v56 = (v98 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "SYSTEM_GRAY4";
  *(v57 + 1) = 12;
  v57[16] = 2;
  v8();
  v58 = (v98 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 29;
  *v59 = "SYSTEM_GRAY5";
  *(v59 + 1) = 12;
  v59[16] = 2;
  v8();
  v60 = (v98 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "SYSTEM_GRAY6";
  *(v61 + 1) = 12;
  v61[16] = 2;
  v8();
  v62 = (v98 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "LABEL";
  *(v63 + 1) = 5;
  v63[16] = 2;
  v8();
  v64 = (v98 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 32;
  *v65 = "SECONDARY_LABEL";
  *(v65 + 1) = 15;
  v65[16] = 2;
  v8();
  v66 = (v98 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 33;
  *v67 = "TERTIARY_LABEL";
  *(v67 + 1) = 14;
  v67[16] = 2;
  v8();
  v68 = v98 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 34;
  *v68 = "QUATERNARY_LABEL";
  *(v68 + 8) = 16;
  *(v68 + 16) = 2;
  v8();
  v69 = (v98 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 35;
  *v70 = "LINK";
  *(v70 + 1) = 4;
  v70[16] = 2;
  v8();
  v71 = (v98 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 36;
  *v72 = "PLACEHOLDER_TEXT";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v8();
  v73 = (v98 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 37;
  *v74 = "SYSTEM_BACKGROUND";
  *(v74 + 1) = 17;
  v74[16] = 2;
  v8();
  v75 = (v98 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 38;
  *v76 = "SECONDARY_SYSTEM_BACKGROUND";
  *(v76 + 1) = 27;
  v76[16] = 2;
  v8();
  v77 = (v98 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 39;
  *v78 = "TERTIARY_SYSTEM_BACKGROUND";
  *(v78 + 1) = 26;
  v78[16] = 2;
  v8();
  v79 = (v98 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 40;
  *v80 = "SYSTEM_GROUPED_BACKGROUND";
  *(v80 + 1) = 25;
  v80[16] = 2;
  v8();
  v81 = (v98 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 41;
  *v82 = "SECONDARY_SYSTEM_GROUPED_BACKGROUND";
  *(v82 + 1) = 35;
  v82[16] = 2;
  v8();
  v83 = (v98 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 42;
  *v84 = "TERTIARY_SYSTEM_GROUPED_BACKGROUND";
  *(v84 + 1) = 34;
  v84[16] = 2;
  v8();
  v85 = (v98 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 43;
  *v86 = "SEPARATOR";
  *(v86 + 1) = 9;
  v86[16] = 2;
  v8();
  v87 = (v98 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 44;
  *v88 = "OPAQUE_SEPARATOR";
  *(v88 + 1) = 16;
  v88[16] = 2;
  v8();
  v89 = (v98 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 45;
  *v90 = "SYSTEM_FILL";
  *(v90 + 1) = 11;
  v90[16] = 2;
  v8();
  v91 = (v98 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 46;
  *v92 = "SECONDARY_SYSTEM_FILL";
  *(v92 + 1) = 21;
  v92[16] = 2;
  v8();
  v93 = (v98 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 47;
  *v94 = "TERTIARY_SYSTEM_FILL";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v8();
  v95 = (v98 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 48;
  *v96 = "QUATERNARY_SYSTEM_FILL";
  *(v96 + 1) = 22;
  v96[16] = 2;
  v8();
  return sub_247D1F408();
}

uint64_t sub_247D118F8()
{
  result = MEMORY[0x24C1B7B80](0x6F626D795346532ELL, 0xEF73726F6C6F436CLL);
  qword_27EE731C0 = 0xD000000000000022;
  *algn_27EE731C8 = 0x8000000247D33550;
  return result;
}

uint64_t sub_247D11990(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_247D1F428();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_247D23880;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_247D1F3F8();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_247D1F408();
}

uint64_t sub_247D11B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D1F238();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_247D1A918();
        sub_247D1F258();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D11BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_247D1A918(), result = sub_247D1F368(), !v4))
  {
    type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247D11C98(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_247D11D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64DB0, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors, &unk_247D2ADC8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D11DC8(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE649C8, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors, &unk_247D2AE00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D11E34(uint64_t a1, uint64_t a2)
{
  sub_247D12004(&qword_27EE649C8, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors, &unk_247D2AE00);

  return sub_247D1F338();
}

uint64_t sub_247D11EC8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D12004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_247D1365C(uint64_t a1, uint64_t a2)
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
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = sub_247CCFDA8(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
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

uint64_t sub_247D13798(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_247CCFDA8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_247D20538();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247D1393C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v42 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64DC0, &unk_247D2D260);
  MEMORY[0x28223BE20](v47);
  v48 = &v42 - v11;
  v12 = type metadata accessor for FileUploadToken(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v18 = (&v42 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_46:
    v39 = 0;
    return v39 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v20 = *(a1 + 16);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v45 = (v5 + 48);
  v46 = v4;
  v43 = *(v16 + 72);
  v44 = v12;
  v24 = v20;
  v42 = v7;
  while (1)
  {
    result = sub_247D19E5C(v22, v18, type metadata accessor for FileUploadToken);
    if (!v24)
    {
      break;
    }

    v51 = v24;
    sub_247D19E5C(v23, v15, type metadata accessor for FileUploadToken);
    v26 = *v18 == *v15 && v18[1] == v15[1];
    if (!v26 && (sub_247D20538() & 1) == 0)
    {
      goto LABEL_45;
    }

    v27 = v18[2] == v15[2] && v18[3] == v15[3];
    if (!v27 && (sub_247D20538() & 1) == 0 || (v18[4] != v15[4] || v18[5] != v15[5]) && (sub_247D20538() & 1) == 0)
    {
      goto LABEL_45;
    }

    if ((v18[6] != v15[6] || v18[7] != v15[7]) && (sub_247D20538() & 1) == 0)
    {
      goto LABEL_45;
    }

    v49 = v23;
    v50 = v22;
    v28 = *(v12 + 36);
    v29 = v48;
    v30 = *(v47 + 48);
    sub_247C2BD10(v18 + v28, v48, &qword_27EE63288, &qword_247D246E0);
    sub_247C2BD10(v15 + v28, v29 + v30, &qword_27EE63288, &qword_247D246E0);
    v31 = v46;
    v32 = *v45;
    if ((*v45)(v29, 1, v46) == 1)
    {
      v26 = v32(v29 + v30, 1, v31) == 1;
      v33 = v29;
      if (!v26)
      {
        goto LABEL_43;
      }

      sub_247C27100(v29, &qword_27EE63288, &qword_247D246E0);
      v12 = v44;
      v35 = v49;
      v34 = v50;
    }

    else
    {
      sub_247C2BD10(v29, v10, &qword_27EE63288, &qword_247D246E0);
      if (v32(v29 + v30, 1, v31) == 1)
      {
        sub_247D19D94(v10, type metadata accessor for Metadata);
        v33 = v29;
LABEL_43:
        v40 = &qword_27EE64DC0;
        v41 = &unk_247D2D260;
        goto LABEL_44;
      }

      v36 = v42;
      sub_247D19DF4(v29 + v30, v42, type metadata accessor for Metadata);
      if ((*v10 != *v36 || v10[1] != v36[1]) && (sub_247D20538() & 1) == 0 || (v10[2] != v36[2] || v10[3] != v36[3]) && (sub_247D20538() & 1) == 0 || (v10[4] != v36[4] || v10[5] != v36[5]) && (sub_247D20538() & 1) == 0)
      {
        sub_247D19D94(v36, type metadata accessor for Metadata);
        sub_247D19D94(v10, type metadata accessor for Metadata);
        v40 = &qword_27EE63288;
        v41 = &qword_247D246E0;
        v33 = v29;
LABEL_44:
        sub_247C27100(v33, v40, v41);
LABEL_45:
        sub_247D19D94(v15, type metadata accessor for FileUploadToken);
        sub_247D19D94(v18, type metadata accessor for FileUploadToken);
        goto LABEL_46;
      }

      sub_247D1F198();
      v37 = v29;
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_247D1FB78();
      sub_247D19D94(v36, type metadata accessor for Metadata);
      sub_247D19D94(v10, type metadata accessor for Metadata);
      sub_247C27100(v37, &qword_27EE63288, &qword_247D246E0);
      v12 = v44;
      v35 = v49;
      v34 = v50;
      if ((v38 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    sub_247D1F198();
    sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = sub_247D1FB78();
    sub_247D19D94(v15, type metadata accessor for FileUploadToken);
    sub_247D19D94(v18, type metadata accessor for FileUploadToken);
    if (v39)
    {
      v24 = v51 - 1;
      v23 = v35 + v43;
      v22 = v34 + v43;
      if (v51 != 1)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_247D13FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileStatusResponse.FileResult(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_247D19E5C(v13, v10, type metadata accessor for FileStatusResponse.FileResult);
      sub_247D19E5C(v14, v7, type metadata accessor for FileStatusResponse.FileResult);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      v17 = *(v10 + 2) == *(v7 + 2) && *(v10 + 3) == *(v7 + 3);
      if (!v17 && (sub_247D20538() & 1) == 0 || v10[32] != v7[32])
      {
        break;
      }

      v18 = *(v10 + 5);
      v19 = *(v7 + 5);
      if (v7[48] == 1)
      {
        if (v19 <= 1)
        {
          if (v19)
          {
            if (v18 != 1)
            {
              break;
            }
          }

          else if (v18)
          {
            break;
          }
        }

        else if (v19 == 2)
        {
          if (v18 != 2)
          {
            break;
          }
        }

        else if (v19 == 3)
        {
          if (v18 != 3)
          {
            break;
          }
        }

        else if (v18 != 4)
        {
          break;
        }
      }

      else if (v18 != v19)
      {
        break;
      }

      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_247D1FB78();
      sub_247D19D94(v7, type metadata accessor for FileStatusResponse.FileResult);
      sub_247D19D94(v10, type metadata accessor for FileStatusResponse.FileResult);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_247D19D94(v7, type metadata accessor for FileStatusResponse.FileResult);
    sub_247D19D94(v10, type metadata accessor for FileStatusResponse.FileResult);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_247D142F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_247D14380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileStatusRequest.FileInfo(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_247D19E5C(v26 + v15 * v12, v10, type metadata accessor for FileStatusRequest.FileInfo);
    if (v12 == v11)
    {
      break;
    }

    sub_247D19E5C(v14 + v15 * v12, v7, type metadata accessor for FileStatusRequest.FileInfo);
    v17 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
    if (!v17 && (sub_247D20538() & 1) == 0 || v10[16] != v7[16] || (*(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4)) && (sub_247D20538() & 1) == 0)
    {
      goto LABEL_33;
    }

    if ((*(v10 + 5) != *(v7 + 5) || *(v10 + 6) != *(v7 + 6)) && (sub_247D20538() & 1) == 0)
    {
      goto LABEL_33;
    }

    v18 = *(v10 + 7);
    v19 = *(v7 + 7);
    v20 = *(v18 + 16);
    if (v20 != *(v19 + 16))
    {
      goto LABEL_33;
    }

    if (v20 && v18 != v19)
    {
      v21 = (v18 + 40);
      v22 = (v19 + 40);
      while (1)
      {
        v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
        if (!v23 && (sub_247D20538() & 1) == 0)
        {
          break;
        }

        v21 += 2;
        v22 += 2;
        if (!--v20)
        {
          goto LABEL_29;
        }
      }

LABEL_33:
      sub_247D19D94(v7, type metadata accessor for FileStatusRequest.FileInfo);
      sub_247D19D94(v10, type metadata accessor for FileStatusRequest.FileInfo);
      goto LABEL_34;
    }

LABEL_29:
    sub_247D1F198();
    sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v24 = sub_247D1FB78();
    sub_247D19D94(v7, type metadata accessor for FileStatusRequest.FileInfo);
    sub_247D19D94(v10, type metadata accessor for FileStatusRequest.FileInfo);
    if ((v24 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_247D146B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
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
      sub_247D19E5C(v13, v10, type metadata accessor for FlowResponse.Step);
      sub_247D19E5C(v14, v7, type metadata accessor for FlowResponse.Step);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18)
      {

        v19 = sub_247D06820(v17, v18);

        if (!v19)
        {
          break;
        }
      }

      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((sub_247D1FB78() & 1) == 0)
      {
        break;
      }

      sub_247D19D94(v7, type metadata accessor for FlowResponse.Step);
      sub_247D19D94(v10, type metadata accessor for FlowResponse.Step);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_247D19D94(v7, type metadata accessor for FlowResponse.Step);
    sub_247D19D94(v10, type metadata accessor for FlowResponse.Step);
  }

  return 0;
}

uint64_t sub_247D14920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  v75 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390, &unk_247D2A340);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v62 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C78, &qword_247D2CA88);
  MEMORY[0x28223BE20](v73);
  v72 = &v62 - v8;
  v9 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60, &unk_247D23D70);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = (&v62 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C70, &qword_247D2CA80);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v79 = type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
  v17 = MEMORY[0x28223BE20](v79);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_46:
    v57 = 0;
    return v57 & 1;
  }

  if (v23 && a1 != a2)
  {
    v76 = v9;
    v64 = v4;
    v65 = v16;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = a2 + v24;
    v68 = v19;
    v69 = (v10 + 48);
    v62 = v14;
    v63 = (v75 + 48);
    v67 = *(v20 + 72);
    while (1)
    {
      sub_247D19E5C(v25, v22, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
      sub_247D19E5C(v26, v19, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
      v27 = *v22 == *v19 && *(v22 + 1) == *(v19 + 1);
      if (!v27 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      v28 = *(v22 + 2) == *(v19 + 2) && *(v22 + 3) == *(v19 + 3);
      if (!v28 && (sub_247D20538() & 1) == 0 || (*(v22 + 4) != *(v19 + 4) || *(v22 + 5) != *(v19 + 5)) && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      if (v22[48] != v19[48])
      {
        break;
      }

      v74 = v23;
      v75 = v26;
      v29 = *(v79 + 36);
      v30 = *(v14 + 48);
      sub_247C2BD10(&v22[v29], v16, &qword_27EE62F60, &unk_247D23D70);
      sub_247C2BD10(&v19[v29], &v16[v30], &qword_27EE62F60, &unk_247D23D70);
      v31 = *v69;
      v32 = v76;
      if ((*v69)(v16, 1, v76) == 1)
      {
        v33 = v31(&v16[v30], 1, v32);
        v19 = v68;
        if (v33 != 1)
        {
          goto LABEL_40;
        }

        sub_247C27100(v16, &qword_27EE62F60, &unk_247D23D70);
        v34 = v74;
        v35 = v75;
      }

      else
      {
        v36 = v16;
        v37 = v16;
        v38 = v77;
        sub_247C2BD10(v36, v77, &qword_27EE62F60, &unk_247D23D70);
        if (v31(&v37[v30], 1, v32) == 1)
        {
          sub_247D19D94(v38, type metadata accessor for FlowResponse.SFSymbolConfiguration);
          v16 = v37;
          v19 = v68;
LABEL_40:
          v58 = &qword_27EE64C70;
          v59 = &qword_247D2CA80;
          v60 = v16;
          goto LABEL_44;
        }

        v66 = v25;
        v39 = &v37[v30];
        v40 = v78;
        sub_247D19DF4(v39, v78, type metadata accessor for FlowResponse.SFSymbolConfiguration);
        v41 = v40[1];
        v27 = *v38 == *v40;
        v42 = v73;
        v19 = v68;
        if (!v27 || v38[1] != v41)
        {
          v43 = sub_247D20538();
          v38 = v77;
          if ((v43 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v44 = *(v76 + 20);
        v45 = *(v42 + 48);
        v46 = v38 + v44;
        v47 = v72;
        sub_247C2BD10(v46, v72, &qword_27EE63390, &unk_247D2A340);
        sub_247C2BD10(v78 + v44, v47 + v45, &qword_27EE63390, &unk_247D2A340);
        v48 = v64;
        v49 = *v63;
        if ((*v63)(v47, 1, v64) == 1)
        {
          v27 = v49(v47 + v45, 1, v48) == 1;
          v50 = v47;
          if (!v27)
          {
            goto LABEL_42;
          }

          sub_247C27100(v47, &qword_27EE63390, &unk_247D2A340);
          v51 = v76;
          v38 = v77;
        }

        else
        {
          v52 = v71;
          sub_247C2BD10(v47, v71, &qword_27EE63390, &unk_247D2A340);
          if (v49(v47 + v45, 1, v48) == 1)
          {
            sub_247D19D94(v52, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
            v50 = v47;
LABEL_42:
            sub_247C27100(v50, &qword_27EE64C78, &qword_247D2CA88);
            v38 = v77;
LABEL_43:
            sub_247D19D94(v78, type metadata accessor for FlowResponse.SFSymbolConfiguration);
            sub_247D19D94(v38, type metadata accessor for FlowResponse.SFSymbolConfiguration);
            v58 = &qword_27EE62F60;
            v59 = &unk_247D23D70;
            v60 = v65;
LABEL_44:
            sub_247C27100(v60, v58, v59);
            break;
          }

          v53 = v70;
          sub_247D19DF4(v47 + v45, v70, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
          v54 = sub_247D1A26C(v52, v53);
          sub_247D19D94(v53, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
          sub_247D19D94(v52, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
          sub_247C27100(v47, &qword_27EE63390, &unk_247D2A340);
          v51 = v76;
          v38 = v77;
          if ((v54 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        if (*(v38 + *(v51 + 24)) != *(v78 + *(v51 + 24)))
        {
          goto LABEL_43;
        }

        sub_247D1F198();
        sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v55 = v78;
        v56 = sub_247D1FB78();
        sub_247D19D94(v55, type metadata accessor for FlowResponse.SFSymbolConfiguration);
        sub_247D19D94(v38, type metadata accessor for FlowResponse.SFSymbolConfiguration);
        v16 = v65;
        sub_247C27100(v65, &qword_27EE62F60, &unk_247D23D70);
        v14 = v62;
        v25 = v66;
        v34 = v74;
        v35 = v75;
        if ((v56 & 1) == 0)
        {
          break;
        }
      }

      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v57 = sub_247D1FB78();
      sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
      sub_247D19D94(v22, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
      if (v57)
      {
        v26 = v35 + v67;
        v25 += v67;
        v23 = v34 - 1;
        if (v23)
        {
          continue;
        }
      }

      return v57 & 1;
    }

    sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
    sub_247D19D94(v22, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
    goto LABEL_46;
  }

  v57 = 1;
  return v57 & 1;
}

uint64_t sub_247D1527C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_247D19E5C(v13, v10, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
      sub_247D19E5C(v14, v7, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_247D1FB78();
      sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
      sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
    sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_247D15500(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *(v3 - 1);
      if (*v3 == 1)
      {
        v6 = qword_247D2CB10[v6];
      }

      v5 = *(i - 1);
      if (*i)
      {
        switch(v5)
        {
          case 13:
            v5 = 15;
            break;
          case 14:
            v5 = 16;
            break;
          case 15:
            v5 = 17;
            break;
          case 16:
            v5 = 18;
            break;
          case 17:
            v5 = 19;
            break;
          case 18:
            v5 = 20;
            break;
          case 19:
            v5 = 21;
            break;
          case 20:
            v5 = 22;
            break;
          case 21:
            if (v6 != 23)
            {
              return 0;
            }

            goto LABEL_7;
          case 22:
            if (v6 != 24)
            {
              return 0;
            }

            goto LABEL_7;
          case 23:
            if (v6 != 25)
            {
              return 0;
            }

            goto LABEL_7;
          case 24:
            if (v6 != 26)
            {
              return 0;
            }

            goto LABEL_7;
          case 25:
            if (v6 != 27)
            {
              return 0;
            }

            goto LABEL_7;
          case 26:
            if (v6 != 28)
            {
              return 0;
            }

            goto LABEL_7;
          case 27:
            if (v6 != 29)
            {
              return 0;
            }

            goto LABEL_7;
          case 28:
            if (v6 != 30)
            {
              return 0;
            }

            goto LABEL_7;
          case 29:
            if (v6 != 31)
            {
              return 0;
            }

            goto LABEL_7;
          case 30:
            if (v6 != 32)
            {
              return 0;
            }

            goto LABEL_7;
          case 31:
            if (v6 != 33)
            {
              return 0;
            }

            goto LABEL_7;
          case 32:
            if (v6 != 34)
            {
              return 0;
            }

            goto LABEL_7;
          case 33:
            if (v6 != 35)
            {
              return 0;
            }

            goto LABEL_7;
          case 34:
            if (v6 != 36)
            {
              return 0;
            }

            goto LABEL_7;
          case 35:
            if (v6 != 37)
            {
              return 0;
            }

            goto LABEL_7;
          case 36:
            if (v6 != 38)
            {
              return 0;
            }

            goto LABEL_7;
          case 37:
            if (v6 != 39)
            {
              return 0;
            }

            goto LABEL_7;
          case 38:
            if (v6 != 40)
            {
              return 0;
            }

            goto LABEL_7;
          case 39:
            if (v6 != 41)
            {
              return 0;
            }

            goto LABEL_7;
          case 40:
            if (v6 != 42)
            {
              return 0;
            }

            goto LABEL_7;
          case 41:
            if (v6 != 43)
            {
              return 0;
            }

            goto LABEL_7;
          case 42:
            if (v6 != 44)
            {
              return 0;
            }

            goto LABEL_7;
          case 43:
            if (v6 != 45)
            {
              return 0;
            }

            goto LABEL_7;
          case 44:
            if (v6 != 46)
            {
              return 0;
            }

            goto LABEL_7;
          case 45:
            if (v6 != 47)
            {
              return 0;
            }

            goto LABEL_7;
          case 46:
            if (v6 != 48)
            {
              return 0;
            }

            goto LABEL_7;
          default:
            break;
        }
      }

      if (v6 != v5)
      {
        break;
      }

LABEL_7:
      v3 += 16;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_247D157D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.Action(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_33:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_247D19E5C(v13, v10, type metadata accessor for FlowResponse.Step.Action);
      sub_247D19E5C(v14, v7, type metadata accessor for FlowResponse.Step.Action);
      v16 = *v10 == *v7 && v10[1] == *(v7 + 1);
      if (!v16 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == *(v7 + 2) && v10[3] == *(v7 + 3);
      if (!v17 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      v18 = v10[4];
      v19 = *(v7 + 4);
      if (v7[40] == 1)
      {
        if (v19)
        {
          if (v19 == 1)
          {
            if (v18 != 1)
            {
              break;
            }
          }

          else if (v18 != 2)
          {
            break;
          }
        }

        else if (v18)
        {
          break;
        }
      }

      else if (v18 != v19)
      {
        break;
      }

      if ((v10[6] != *(v7 + 6) || v10[7] != *(v7 + 7)) && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_247D1FB78();
      sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.Action);
      sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Action);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.Action);
    sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.Action);
    goto LABEL_33;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_247D15AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v19 = 1;
      return v19 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_247D19E5C(v13, v10, type metadata accessor for FlowResponse.Step.HiddenAction);
      sub_247D19E5C(v14, v7, type metadata accessor for FlowResponse.Step.HiddenAction);
      v16 = *v10 == *v7 && v10[1] == *(v7 + 1);
      if (!v16 && (sub_247D20538() & 1) == 0)
      {
        break;
      }

      v17 = v10[2];
      v18 = *(v7 + 2);
      if (v7[24] == 1)
      {
        if (v18 > 2)
        {
          if (v18 == 3)
          {
            if (v17 != 3)
            {
              break;
            }
          }

          else if (v18 == 4)
          {
            if (v17 != 4)
            {
              break;
            }
          }

          else if (v17 != 5)
          {
            break;
          }
        }

        else if (v18)
        {
          if (v18 == 1)
          {
            if (v17 != 1)
            {
              break;
            }
          }

          else if (v17 != 2)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_247D1FB78();
      sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.HiddenAction);
      sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.HiddenAction);
      if (v19)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.HiddenAction);
    sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.HiddenAction);
  }

  v19 = 0;
  return v19 & 1;
}

unint64_t sub_247D15DA4(uint64_t a1)
{
  v2 = sub_247D20608();

  return sub_247D15FC8(a1, v2);
}

unint64_t sub_247D15DEC(uint64_t a1)
{
  sub_247D1FBE8();
  sub_247D20618();
  sub_247D1FCB8();
  v2 = sub_247D20658();

  return sub_247D16034(a1, v2);
}

unint64_t sub_247D15E7C(uint64_t a1)
{
  v1 = a1;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1 + 1001);
  v2 = sub_247D20658();

  return sub_247D16138(v1, v2);
}

unint64_t sub_247D15EEC(uint64_t a1)
{
  v2 = sub_247D20268();

  return sub_247D161A8(a1, v2);
}

unint64_t sub_247D15F30(uint64_t a1)
{
  sub_247D1EF78();
  sub_247D12004(&qword_27EE63808, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_247D1FB48();

  return sub_247D16270(a1, v2);
}

unint64_t sub_247D15FC8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_247D16034(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_247D1FBE8();
      v8 = v7;
      if (v6 == sub_247D1FBE8() && v8 == v9)
      {
        break;
      }

      v11 = sub_247D20538();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_247D16138(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_247D161A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_247D1ADC4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1B8130](v9, a1);
      sub_247D1AE20(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_247D16270(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_247D1EF78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_247D12004(&qword_27EE64DC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_247D1FB78();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_247D16430(void *a1, void *a2)
{
  v4 = type metadata accessor for FlowResponse.Product(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637C0, &qword_247D25D98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C50, &qword_247D2CA58);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_247D20538() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_247D20538() & 1) == 0 || (sub_247D146B0(a1[4], a2[4]) & 1) == 0 || (sub_247D13798(a1[5], a2[5]) & 1) == 0 || (sub_247D13798(a1[6], a2[6]) & 1) == 0)
  {
    goto LABEL_24;
  }

  v25 = type metadata accessor for FlowResponse(0);
  v14 = *(v25 + 40);
  v15 = *(v11 + 48);
  sub_247C2BD10(a1 + v14, v13, &qword_27EE637C0, &qword_247D25D98);
  v16 = a2 + v14;
  v17 = v15;
  sub_247C2BD10(v16, &v13[v15], &qword_27EE637C0, &qword_247D25D98);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_247C27100(v13, &qword_27EE637C0, &qword_247D25D98);
LABEL_23:
      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = sub_247D1FB78();
      return v21 & 1;
    }

    goto LABEL_14;
  }

  sub_247C2BD10(v13, v10, &qword_27EE637C0, &qword_247D25D98);
  if (v18(&v13[v17], 1, v4) != 1)
  {
    sub_247D19DF4(&v13[v17], v7, type metadata accessor for FlowResponse.Product);
    if ((*v10 != *v7 || v10[1] != v7[1]) && (sub_247D20538() & 1) == 0 || (v10[2] != v7[2] || v10[3] != v7[3]) && (sub_247D20538() & 1) == 0)
    {
      sub_247D19D94(v7, type metadata accessor for FlowResponse.Product);
      sub_247D19D94(v10, type metadata accessor for FlowResponse.Product);
      v19 = &qword_27EE637C0;
      v20 = &qword_247D25D98;
      goto LABEL_15;
    }

    sub_247D1F198();
    sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = sub_247D1FB78();
    sub_247D19D94(v7, type metadata accessor for FlowResponse.Product);
    sub_247D19D94(v10, type metadata accessor for FlowResponse.Product);
    sub_247C27100(v13, &qword_27EE637C0, &qword_247D25D98);
    if (v22)
    {
      goto LABEL_23;
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  sub_247D19D94(v10, type metadata accessor for FlowResponse.Product);
LABEL_14:
  v19 = &qword_27EE64C50;
  v20 = &qword_247D2CA58;
LABEL_15:
  sub_247C27100(v13, v19, v20);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_247D168E8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FlowResponse.Step(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_247D06820(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D169D0(void *a1, void *a2)
{
  v4 = type metadata accessor for FlowResponse.Step.Progress.ImageUpload(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C98, &qword_247D2CAA8);
  MEMORY[0x28223BE20](v38);
  v11 = &v34 - v10;
  v12 = type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63740, &qword_247D25CF8);
  MEMORY[0x28223BE20](v16 - 8);
  v39 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64CA0, &qword_247D2CAB0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  if (*a1 != *a2 && (sub_247D20538() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_247D20538() & 1) == 0)
  {
    goto LABEL_12;
  }

  v34 = v15;
  v35 = v9;
  v36 = v7;
  v37 = type metadata accessor for FlowResponse.Step.Progress(0);
  v21 = *(v37 + 24);
  v22 = *(v18 + 48);
  sub_247C2BD10(a1 + v21, v20, &qword_27EE63740, &qword_247D25CF8);
  sub_247C2BD10(a2 + v21, &v20[v22], &qword_27EE63740, &qword_247D25CF8);
  v23 = *(v13 + 48);
  if (v23(v20, 1, v12) == 1)
  {
    if (v23(&v20[v22], 1, v12) == 1)
    {
      sub_247C27100(v20, &qword_27EE63740, &qword_247D25CF8);
LABEL_14:
      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_247D1FB78();
      return v25 & 1;
    }

    goto LABEL_11;
  }

  v24 = v39;
  sub_247C2BD10(v20, v39, &qword_27EE63740, &qword_247D25CF8);
  if (v23(&v20[v22], 1, v12) == 1)
  {
    sub_247D19D94(v24, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
LABEL_11:
    sub_247C27100(v20, &qword_27EE64CA0, &qword_247D2CAB0);
    goto LABEL_12;
  }

  v26 = v34;
  sub_247D19DF4(&v20[v22], v34, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
  v27 = v24;
  v28 = *(v38 + 48);
  sub_247D19E5C(v27, v11, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
  sub_247D19E5C(v26, &v11[v28], type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
  v29 = v35;
  sub_247D19DF4(v11, v35, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  v30 = &v11[v28];
  v31 = v36;
  sub_247D19DF4(v30, v36, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v32 = sub_247D1FB78();
  sub_247D19D94(v31, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  sub_247D19D94(v29, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  sub_247D19D94(v26, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
  sub_247D19D94(v27, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
  sub_247C27100(v20, &qword_27EE63740, &qword_247D25CF8);
  if (v32)
  {
    goto LABEL_14;
  }

LABEL_12:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_247D16F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.Progress.ImageUpload(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C98, &qword_247D2CAA8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  v14 = *(v11 + 56);
  sub_247D19E5C(a1, &v16 - v12, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
  sub_247D19E5C(a2, &v13[v14], type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation);
  sub_247D19DF4(v13, v9, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  sub_247D19DF4(&v13[v14], v7, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  LOBYTE(a2) = sub_247D1FB78();
  sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  sub_247D19D94(v9, type metadata accessor for FlowResponse.Step.Progress.ImageUpload);
  return a2 & 1;
}

uint64_t sub_247D17118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.Loading.ImageUpload(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C88, &qword_247D2CA98);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  v14 = *(v11 + 56);
  sub_247D19E5C(a1, &v16 - v12, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
  sub_247D19E5C(a2, &v13[v14], type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
  sub_247D19DF4(v13, v9, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  sub_247D19DF4(&v13[v14], v7, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  LOBYTE(a2) = sub_247D1FB78();
  sub_247D19D94(v7, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  sub_247D19D94(v9, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  return a2 & 1;
}

uint64_t sub_247D172FC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (sub_247D20538() & 1) != 0)
  {
    type metadata accessor for FlowResponse.Step.Action(0);
    sub_247D1F198();
    sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_247D1FB78() & 1;
  }

  return 0;
}

uint64_t sub_247D17448(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for FlowResponse.Step.Exit(0);
      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_247D1FB78() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_247D17528(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for FlowResponse.Step.Loading.ImageUpload(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v47 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C88, &qword_247D2CA98);
  MEMORY[0x28223BE20](v48);
  v49 = &v47 - v7;
  v8 = type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation(0);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA0, &qword_247D23DD8);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v47 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C90, &qword_247D2CAA0);
  MEMORY[0x28223BE20](v55);
  v58 = &v47 - v12;
  v13 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68, &qword_247D2A310);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C68, &qword_247D2CA78);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - v22;
  v53 = type metadata accessor for FlowResponse.Step.Loading(0);
  v24 = *(v53 + 24);
  v25 = *(v21 + 56);
  v59 = a1;
  sub_247C2BD10(a1 + v24, v23, &qword_27EE62F68, &qword_247D2A310);
  v26 = v60 + v24;
  v27 = v60;
  sub_247C2BD10(v26, &v23[v25], &qword_27EE62F68, &qword_247D2A310);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) != 1)
  {
    sub_247C2BD10(v23, v19, &qword_27EE62F68, &qword_247D2A310);
    if (v28(&v23[v25], 1, v13) != 1)
    {
      sub_247D19DF4(&v23[v25], v16, type metadata accessor for FlowResponse.Step.Masthead);
      v32 = sub_247D187DC(v19, v16);
      sub_247D19D94(v16, type metadata accessor for FlowResponse.Step.Masthead);
      sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.Masthead);
      sub_247C27100(v23, &qword_27EE62F68, &qword_247D2A310);
      if ((v32 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_247D19D94(v19, type metadata accessor for FlowResponse.Step.Masthead);
LABEL_6:
    v29 = &qword_27EE64C68;
    v30 = &qword_247D2CA78;
    v31 = v23;
LABEL_14:
    sub_247C27100(v31, v29, v30);
    goto LABEL_15;
  }

  if (v28(&v23[v25], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_247C27100(v23, &qword_27EE62F68, &qword_247D2A310);
LABEL_8:
  v33 = *(v55 + 48);
  v34 = v58;
  sub_247C2BD10(v59, v58, &qword_27EE62FA0, &qword_247D23DD8);
  sub_247C2BD10(v27, v34 + v33, &qword_27EE62FA0, &qword_247D23DD8);
  v35 = v57;
  v36 = *(v56 + 48);
  if (v36(v34, 1, v57) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_247C27100(v34, &qword_27EE62FA0, &qword_247D23DD8);
LABEL_18:
      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_247D1FB78();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v54;
  sub_247C2BD10(v34, v54, &qword_27EE62FA0, &qword_247D23DD8);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_247D19D94(v37, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
LABEL_13:
    v29 = &qword_27EE64C90;
    v30 = &qword_247D2CAA0;
    v31 = v34;
    goto LABEL_14;
  }

  v40 = v50;
  sub_247D19DF4(v34 + v33, v50, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
  v41 = v49;
  v42 = *(v48 + 48);
  sub_247D19E5C(v37, v49, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
  sub_247D19E5C(v40, v41 + v42, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
  v43 = v51;
  sub_247D19DF4(v41, v51, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  v44 = v41 + v42;
  v45 = v52;
  sub_247D19DF4(v44, v52, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v46 = sub_247D1FB78();
  sub_247D19D94(v45, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  sub_247D19D94(v43, type metadata accessor for FlowResponse.Step.Loading.ImageUpload);
  sub_247D19D94(v40, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
  sub_247D19D94(v37, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation);
  sub_247C27100(v34, &qword_27EE62FA0, &qword_247D23DD8);
  if (v46)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_247D17CF0(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v2 = type metadata accessor for FlowResponse.Step.Progress(0);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for FlowResponse.Step.URL(0);
  MEMORY[0x28223BE20](v56);
  v60 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for FlowResponse.Step.Exit(0);
  MEMORY[0x28223BE20](v55);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowResponse.Step.Loading(0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for FlowResponse.Step.Information(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v62 = (&v55 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = (&v55 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v55 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = (&v55 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C60, &qword_247D2CA70);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v55 - v32;
  v34 = *(v31 + 56);
  sub_247D19E5C(v63, &v55 - v32, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  sub_247D19E5C(v64, &v33[v34], type metadata accessor for FlowResponse.Step.OneOf_Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v17 = v62;
        sub_247D19E5C(v33, v62, type metadata accessor for FlowResponse.Step.OneOf_Contents);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v39 = v60;
          sub_247D19DF4(&v33[v34], v60, type metadata accessor for FlowResponse.Step.URL);
          if (*v17 == *v39 && v17[1] == v39[1] || (sub_247D20538() & 1) != 0)
          {
            sub_247D1F198();
            sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            if (sub_247D1FB78())
            {
              sub_247D19D94(v39, type metadata accessor for FlowResponse.Step.URL);
              v40 = v17;
              v41 = type metadata accessor for FlowResponse.Step.URL;
LABEL_42:
              sub_247D19D94(v40, v41);
              sub_247D19D94(v33, type metadata accessor for FlowResponse.Step.OneOf_Contents);
              v36 = 1;
              return v36 & 1;
            }
          }

          sub_247D19D94(v39, type metadata accessor for FlowResponse.Step.URL);
          v52 = v17;
          v53 = type metadata accessor for FlowResponse.Step.URL;
LABEL_46:
          sub_247D19D94(v52, v53);
          sub_247D19D94(v33, type metadata accessor for FlowResponse.Step.OneOf_Contents);
          goto LABEL_35;
        }

        v50 = type metadata accessor for FlowResponse.Step.URL;
      }

      else
      {
        sub_247D19E5C(v33, v17, type metadata accessor for FlowResponse.Step.OneOf_Contents);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v48 = v58;
          sub_247D19DF4(&v33[v34], v58, type metadata accessor for FlowResponse.Step.Progress);
          v36 = sub_247D169D0(v17, v48);
          v37 = type metadata accessor for FlowResponse.Step.Progress;
          sub_247D19D94(v48, type metadata accessor for FlowResponse.Step.Progress);
          v38 = v17;
          goto LABEL_26;
        }

        v50 = type metadata accessor for FlowResponse.Step.Progress;
      }

LABEL_33:
      v42 = v50;
      v43 = v17;
      goto LABEL_34;
    }

    v17 = v61;
    sub_247D19E5C(v33, v61, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v50 = type metadata accessor for FlowResponse.Step.Exit;
      goto LABEL_33;
    }

    v44 = v59;
    sub_247D19DF4(&v33[v34], v59, type metadata accessor for FlowResponse.Step.Exit);
    v45 = *v17;
    v46 = *v44;
    if (*(v44 + 8) == 1)
    {
      if (v46)
      {
        if (v46 == 1)
        {
          if (v45 != 1)
          {
            goto LABEL_44;
          }
        }

        else if (v45 != 2)
        {
          goto LABEL_44;
        }

LABEL_40:
        sub_247D1F198();
        sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v54 = sub_247D1FB78();
        sub_247D19D94(v44, type metadata accessor for FlowResponse.Step.Exit);
        if (v54)
        {
          v41 = type metadata accessor for FlowResponse.Step.Exit;
          v40 = v17;
          goto LABEL_42;
        }

        goto LABEL_45;
      }

      if (!v45)
      {
        goto LABEL_40;
      }
    }

    else if (v45 == v46)
    {
      goto LABEL_40;
    }

LABEL_44:
    sub_247D19D94(v44, type metadata accessor for FlowResponse.Step.Exit);
LABEL_45:
    v53 = type metadata accessor for FlowResponse.Step.Exit;
    v52 = v17;
    goto LABEL_46;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_247D19E5C(v33, v29, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_247D19DF4(&v33[v34], v13, type metadata accessor for FlowResponse.Step.Information);
      v36 = sub_247D18C0C(v29, v13);
      sub_247D19D94(v13, type metadata accessor for FlowResponse.Step.Information);
      v38 = v29;
      v49 = type metadata accessor for FlowResponse.Step.Information;
      goto LABEL_27;
    }

    v42 = type metadata accessor for FlowResponse.Step.Information;
    v43 = v29;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_247D19E5C(v33, v24, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v47 = v57;
      sub_247D19DF4(&v33[v34], v57, type metadata accessor for FlowResponse.Step.Loading);
      v36 = sub_247D17528(v24, v47);
      v37 = type metadata accessor for FlowResponse.Step.Loading;
      sub_247D19D94(v47, type metadata accessor for FlowResponse.Step.Loading);
      v38 = v24;
      goto LABEL_26;
    }

    v42 = type metadata accessor for FlowResponse.Step.Loading;
    v43 = v24;
    goto LABEL_34;
  }

  sub_247D19E5C(v33, v27, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = type metadata accessor for FlowResponse.Step.CosmeticCapture;
    v43 = v27;
LABEL_34:
    sub_247D19D94(v43, v42);
    sub_247C27100(v33, &qword_27EE64C60, &qword_247D2CA70);
LABEL_35:
    v36 = 0;
    return v36 & 1;
  }

  sub_247D19DF4(&v33[v34], v10, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v36 = sub_247D19390(v27, v10);
  v37 = type metadata accessor for FlowResponse.Step.CosmeticCapture;
  sub_247D19D94(v10, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v38 = v27;
LABEL_26:
  v49 = v37;
LABEL_27:
  sub_247D19D94(v38, v49);
  sub_247D19D94(v33, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  return v36 & 1;
}

uint64_t sub_247D1869C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if (v5 != 3)
        {
          return 0;
        }
      }

      else if (v6 == 4)
      {
        if (v5 != 4)
        {
          return 0;
        }
      }

      else if (v5 != 5)
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
      {
        return 0;
      }

LABEL_13:
      type metadata accessor for FlowResponse.Step.HiddenAction(0);
      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_247D1FB78() & 1;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else if (v5 == v6)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_247D187DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60, &unk_247D23D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C70, &qword_247D2CA80);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_247D20538() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_247D20538() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_247D20538() & 1) == 0)
  {
    goto LABEL_4;
  }

  v16 = *(a1 + 56);
  v17 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if (v16 != 1)
        {
          goto LABEL_4;
        }
      }

      else if (v16 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v16)
    {
      goto LABEL_4;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_4;
  }

  v25 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v18 = *(v25 + 40);
  v19 = *(v11 + 48);
  sub_247C2BD10(a1 + v18, v13, &qword_27EE62F60, &unk_247D23D70);
  v20 = a2 + v18;
  v21 = v19;
  sub_247C2BD10(v20, &v13[v19], &qword_27EE62F60, &unk_247D23D70);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_247C27100(v13, &qword_27EE62F60, &unk_247D23D70);
LABEL_29:
      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v14 = sub_247D1FB78();
      return v14 & 1;
    }

    goto LABEL_27;
  }

  sub_247C2BD10(v13, v10, &qword_27EE62F60, &unk_247D23D70);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration);
LABEL_27:
    sub_247C27100(v13, &qword_27EE64C70, &qword_247D2CA80);
    goto LABEL_4;
  }

  sub_247D19DF4(&v13[v21], v7, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  v23 = sub_247D19EC4(v10, v7);
  sub_247D19D94(v7, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  sub_247C27100(v13, &qword_27EE62F60, &unk_247D23D70);
  if (v23)
  {
    goto LABEL_29;
  }

LABEL_4:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_247D18C0C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68, &qword_247D2A310);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C68, &qword_247D2CA78);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for FlowResponse.Step.Information(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_247C2BD10(a1 + v14, v13, &qword_27EE62F68, &qword_247D2A310);
  sub_247C2BD10(a2 + v14, &v13[v15], &qword_27EE62F68, &qword_247D2A310);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_247C2BD10(v13, v9, &qword_27EE62F68, &qword_247D2A310);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_247D19DF4(&v13[v15], v24, type metadata accessor for FlowResponse.Step.Masthead);
      v18 = sub_247D187DC(v9, v17);
      sub_247D19D94(v17, type metadata accessor for FlowResponse.Step.Masthead);
      sub_247D19D94(v9, type metadata accessor for FlowResponse.Step.Masthead);
      sub_247C27100(v13, &qword_27EE62F68, &qword_247D2A310);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_247D19D94(v9, type metadata accessor for FlowResponse.Step.Masthead);
LABEL_6:
    sub_247C27100(v13, &qword_27EE64C68, &qword_247D2CA78);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_247C27100(v13, &qword_27EE62F68, &qword_247D2A310);
LABEL_8:
  v19 = v25;
  if ((sub_247D14920(*v25, *a2) & 1) == 0 || (v19[1] != a2[1] || v19[2] != a2[2]) && (sub_247D20538() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_247D1FB78();
  return v20 & 1;
}

uint64_t sub_247D18FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60, &unk_247D23D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C70, &qword_247D2CA80);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_247D20538() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_247D20538() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_247D20538() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_16;
  }

  v21 = type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
  v14 = *(v21 + 36);
  v15 = *(v11 + 48);
  sub_247C2BD10(a1 + v14, v13, &qword_27EE62F60, &unk_247D23D70);
  sub_247C2BD10(a2 + v14, &v13[v15], &qword_27EE62F60, &unk_247D23D70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_247C27100(v13, &qword_27EE62F60, &unk_247D23D70);
LABEL_19:
      sub_247D1F198();
      sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_247D1FB78();
      return v17 & 1;
    }

    goto LABEL_15;
  }

  sub_247C2BD10(v13, v10, &qword_27EE62F60, &unk_247D23D70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration);
LABEL_15:
    sub_247C27100(v13, &qword_27EE64C70, &qword_247D2CA80);
    goto LABEL_16;
  }

  sub_247D19DF4(&v13[v15], v7, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  v19 = sub_247D19EC4(v10, v7);
  sub_247D19D94(v7, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  sub_247C27100(v13, &qword_27EE62F60, &unk_247D23D70);
  if (v19)
  {
    goto LABEL_19;
  }

LABEL_16:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_247D19390(void *a1, void *a2)
{
  v4 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v62 = (&v57 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0, &unk_247D237F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v61 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v64 = (&v57 - v12);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C30, &qword_247D2CA48);
  v13 = MEMORY[0x28223BE20](v68);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v57 - v16;
  v17 = type metadata accessor for FileUploadToken(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290, &qword_247D243F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = (&v57 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C38, &qword_247D2CA50);
  MEMORY[0x28223BE20](v24);
  v26 = &v57 - v25;
  if (*a1 != *a2 && (sub_247D20538() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_247D20538() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_247D20538() & 1) == 0)
  {
    goto LABEL_29;
  }

  v58 = v15;
  v59 = v7;
  v27 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v63 = a2;
  v60 = v27;
  v28 = *(v27 + 36);
  v29 = *(v24 + 48);
  sub_247C2BD10(a1 + v28, v26, &qword_27EE63290, &qword_247D243F0);
  sub_247C2BD10(v63 + v28, &v26[v29], &qword_27EE63290, &qword_247D243F0);
  v30 = *(v18 + 48);
  if (v30(v26, 1, v17) == 1)
  {
    if (v30(&v26[v29], 1, v17) == 1)
    {
      sub_247C27100(v26, &qword_27EE63290, &qword_247D243F0);
      goto LABEL_16;
    }

LABEL_14:
    v31 = &qword_27EE64C38;
    v32 = &qword_247D2CA50;
    v33 = v26;
LABEL_28:
    sub_247C27100(v33, v31, v32);
    goto LABEL_29;
  }

  sub_247C2BD10(v26, v23, &qword_27EE63290, &qword_247D243F0);
  if (v30(&v26[v29], 1, v17) == 1)
  {
    sub_247D19D94(v23, type metadata accessor for FileUploadToken);
    goto LABEL_14;
  }

  sub_247D19DF4(&v26[v29], v20, type metadata accessor for FileUploadToken);
  v34 = sub_247D1D620(v23, v20);
  sub_247D19D94(v20, type metadata accessor for FileUploadToken);
  sub_247D19D94(v23, type metadata accessor for FileUploadToken);
  sub_247C27100(v26, &qword_27EE63290, &qword_247D243F0);
  if ((v34 & 1) == 0)
  {
LABEL_29:
    v48 = 0;
    return v48 & 1;
  }

LABEL_16:
  v35 = *(v60 + 40);
  v36 = v67;
  v37 = *(v68 + 48);
  sub_247C2BD10(a1 + v35, v67, &qword_27EE62DE0, &unk_247D237F0);
  v38 = v36;
  sub_247C2BD10(v63 + v35, v36 + v37, &qword_27EE62DE0, &unk_247D237F0);
  v39 = v66;
  v40 = *(v65 + 48);
  if (v40(v38, 1, v66) == 1)
  {
    v41 = v40(v38 + v37, 1, v39);
    v43 = v58;
    v42 = v59;
    if (v41 == 1)
    {
      sub_247C27100(v38, &qword_27EE62DE0, &unk_247D237F0);
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v49 = v64;
  sub_247C2BD10(v38, v64, &qword_27EE62DE0, &unk_247D237F0);
  v50 = v40(v38 + v37, 1, v39);
  v43 = v58;
  v42 = v59;
  if (v50 == 1)
  {
    sub_247D19D94(v49, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
LABEL_26:
    v31 = &qword_27EE64C30;
    v32 = &qword_247D2CA48;
LABEL_27:
    v33 = v38;
    goto LABEL_28;
  }

  v52 = v38 + v37;
  v53 = v62;
  sub_247D19DF4(v52, v62, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  if ((sub_247D13798(*v49, *v53) & 1) == 0)
  {
    sub_247D19D94(v53, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    sub_247D19D94(v49, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v31 = &qword_27EE62DE0;
    v32 = &unk_247D237F0;
    goto LABEL_27;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v54 = sub_247D1FB78();
  sub_247D19D94(v53, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  sub_247D19D94(v49, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  sub_247C27100(v67, &qword_27EE62DE0, &unk_247D237F0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v44 = *(v60 + 44);
  v45 = *(v68 + 48);
  sub_247C2BD10(a1 + v44, v43, &qword_27EE62DE0, &unk_247D237F0);
  v46 = v63 + v44;
  v47 = v63;
  sub_247C2BD10(v46, v43 + v45, &qword_27EE62DE0, &unk_247D237F0);
  if (v40(v43, 1, v39) == 1)
  {
    if (v40(v43 + v45, 1, v39) == 1)
    {
      sub_247C27100(v43, &qword_27EE62DE0, &unk_247D237F0);
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  v55 = v61;
  sub_247C2BD10(v43, v61, &qword_27EE62DE0, &unk_247D237F0);
  if (v40(v43 + v45, 1, v39) == 1)
  {
    sub_247D19D94(v55, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
LABEL_36:
    v31 = &qword_27EE64C30;
    v32 = &qword_247D2CA48;
    v33 = v43;
    goto LABEL_28;
  }

  sub_247D19DF4(v43 + v45, v42, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  if ((sub_247D13798(*v55, *v42) & 1) == 0)
  {
    sub_247D19D94(v42, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    sub_247D19D94(v55, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v31 = &qword_27EE62DE0;
    v32 = &unk_247D237F0;
    v33 = v43;
    goto LABEL_28;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v47 = v63;
  v56 = sub_247D1FB78();
  sub_247D19D94(v42, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  sub_247D19D94(v55, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  sub_247C27100(v43, &qword_27EE62DE0, &unk_247D237F0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  if ((sub_247D1527C(a1[6], v47[6]) & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = sub_247D1FB78();
  return v48 & 1;
}

uint64_t sub_247D19D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247D19DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D19E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D19EC4(void *a1, void *a2)
{
  v4 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390, &unk_247D2A340);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C78, &qword_247D2CA88);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_247D20538() & 1) == 0)
  {
    goto LABEL_11;
  }

  v21 = v7;
  v22 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_247C2BD10(a1 + v14, v13, &qword_27EE63390, &unk_247D2A340);
  sub_247C2BD10(a2 + v14, &v13[v15], &qword_27EE63390, &unk_247D2A340);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_247C2BD10(v13, v10, &qword_27EE63390, &unk_247D2A340);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v21;
      sub_247D19DF4(&v13[v15], v21, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
      v18 = sub_247D1A26C(v10, v17);
      sub_247D19D94(v17, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
      sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
      sub_247C27100(v13, &qword_27EE63390, &unk_247D2A340);
      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
LABEL_8:
    sub_247C27100(v13, &qword_27EE64C78, &qword_247D2CA88);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_247C27100(v13, &qword_27EE63390, &unk_247D2A340);
LABEL_10:
  if (*(a1 + *(v22 + 24)) == *(a2 + *(v22 + 24)))
  {
    sub_247D1F198();
    sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_247D1FB78();
    return v19 & 1;
  }

LABEL_11:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_247D1A26C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64C80, &qword_247D2CA90);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = *(v14 + 56);
  sub_247D19E5C(a1, &v22 - v15, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
  sub_247D19E5C(a2, &v16[v17], type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_247D19E5C(v16, v12, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = *v12 ^ v16[v17];
      sub_247D19D94(v16, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_247D19E5C(v16, v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
LABEL_9:
    sub_247C27100(v16, &qword_27EE64C80, &qword_247D2CA90);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  sub_247D19DF4(&v16[v17], v6, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
  if ((sub_247D15500(*v10, *v6) & 1) == 0)
  {
    sub_247D19D94(v6, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
    goto LABEL_11;
  }

  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v18 = sub_247D1FB78();
  sub_247D19D94(v6, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
  if ((v18 & 1) == 0)
  {
LABEL_11:
    sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
    sub_247D19D94(v16, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
    goto LABEL_12;
  }

  sub_247D19D94(v10, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
  sub_247D19D94(v16, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_247D1A61C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_247D20538() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FlowRequest(0);
  sub_247D1F198();
  sub_247D12004(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

unint64_t sub_247D1A720()
{
  result = qword_27EE64CB0;
  if (!qword_27EE64CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64CB0);
  }

  return result;
}

unint64_t sub_247D1A774()
{
  result = qword_27EE64CB8;
  if (!qword_27EE64CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64CB8);
  }

  return result;
}

unint64_t sub_247D1A7C8()
{
  result = qword_27EE64D58;
  if (!qword_27EE64D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64D58);
  }

  return result;
}

unint64_t sub_247D1A81C()
{
  result = qword_27EE64D70;
  if (!qword_27EE64D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64D70);
  }

  return result;
}

unint64_t sub_247D1A870()
{
  result = qword_27EE64D80;
  if (!qword_27EE64D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64D80);
  }

  return result;
}

unint64_t sub_247D1A8C4()
{
  result = qword_27EE64D90;
  if (!qword_27EE64D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64D90);
  }

  return result;
}

unint64_t sub_247D1A918()
{
  result = qword_27EE64DB8;
  if (!qword_27EE64DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64DB8);
  }

  return result;
}

uint64_t sub_247D1A9A8(uint64_t result)
{
  switch(result)
  {
    case 15:
      result = 13;
      break;
    case 16:
      result = 14;
      break;
    case 17:
      result = 15;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 21;
      break;
    case 24:
      result = 22;
      break;
    case 25:
      result = 23;
      break;
    case 26:
      result = 24;
      break;
    case 27:
      result = 25;
      break;
    case 28:
      result = 26;
      break;
    case 29:
      result = 27;
      break;
    case 30:
      result = 28;
      break;
    case 31:
      result = 29;
      break;
    case 32:
      result = 30;
      break;
    case 33:
      result = 31;
      break;
    case 34:
      result = 32;
      break;
    case 35:
      result = 33;
      break;
    case 36:
      result = 34;
      break;
    case 37:
      result = 35;
      break;
    case 38:
      result = 36;
      break;
    case 39:
      result = 37;
      break;
    case 40:
      result = 38;
      break;
    case 41:
      result = 39;
      break;
    case 42:
      result = 40;
      break;
    case 43:
      result = 41;
      break;
    case 44:
      result = 42;
      break;
    case 45:
      result = 43;
      break;
    case 46:
      result = 44;
      break;
    case 47:
      result = 45;
      break;
    case 48:
      result = 46;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_247D1AC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247D1AD20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247D1AF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_247D1B094(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_247D1B1E4(uint64_t a1)
{
  sub_247D1F198();
  if (v1 <= 0x3F)
  {
    sub_247D1DE48(319, &qword_27EE64DF0, type metadata accessor for Metadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_247D1B2F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for FileUploadToken(0);
  sub_247D1D9AC(v0 + *(v4 + 36), v3);
  v5 = type metadata accessor for Metadata(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_247C27100(v3, &qword_27EE63288, &qword_247D246E0);
  return v6;
}

uint64_t sub_247D1B3E0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for FileUploadToken(0);
  sub_247D1D9AC(v1 + *(v6 + 36), v5);
  v7 = type metadata accessor for Metadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_247D1DA1C(v5, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  sub_247D1F188();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_247C27100(v5, &qword_27EE63288, &qword_247D246E0);
  }

  return result;
}

uint64_t sub_247D1B524()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE731E8);
  __swift_project_value_buffer(v0, qword_27EE731E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serial_number";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "session_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "suite_id";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D1B784(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1CF88(&qword_27EE64E80, type metadata accessor for FileUploadTokensRequestV2, &unk_247D2D1AC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D1B824(uint64_t a1)
{
  v2 = sub_247D1CF88(&qword_27EE64E68, type metadata accessor for FileUploadTokensRequestV2, &unk_247D2D1E4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D1B890(uint64_t a1, uint64_t a2)
{
  sub_247D1CF88(&qword_27EE64E68, type metadata accessor for FileUploadTokensRequestV2, &unk_247D2D1E4);

  return sub_247D1F338();
}

uint64_t sub_247D1B93C()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73200);
  __swift_project_value_buffer(v0, qword_27EE73200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "serial_number";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "session_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "suite_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tokens";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D1BB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_247D1F238();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for FileUploadToken(0);
          sub_247D1CF88(&qword_27EE64D08, type metadata accessor for FileUploadToken, &unk_247D2CF14);
          sub_247D1F2D8();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        sub_247D1F2C8();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247D1BCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_247D1F3C8(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_247D1F3C8(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_247D1F3C8(), !v4))
      {
        if (!*(v3[6] + 16) || (type metadata accessor for FileUploadToken(0), sub_247D1CF88(&qword_27EE64D08, type metadata accessor for FileUploadToken, &unk_247D2CF14), result = sub_247D1F3D8(), !v4))
        {
          type metadata accessor for FileUploadTokensResponseV2(0);
          return sub_247D1F178();
        }
      }
    }
  }

  return result;
}

uint64_t sub_247D1BE24@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = MEMORY[0x277D84F90];
  return sub_247D1F188();
}

uint64_t sub_247D1BEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1CF88(&qword_27EE64E88, type metadata accessor for FileUploadTokensResponseV2, &unk_247D2D044);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D1BF4C(uint64_t a1)
{
  v2 = sub_247D1CF88(&qword_27EE64E48, type metadata accessor for FileUploadTokensResponseV2, &unk_247D2D07C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D1BFB8(uint64_t a1, uint64_t a2)
{
  sub_247D1CF88(&qword_27EE64E48, type metadata accessor for FileUploadTokensResponseV2, &unk_247D2D07C);

  return sub_247D1F338();
}

uint64_t sub_247D1C038()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73218);
  __swift_project_value_buffer(v0, qword_27EE73218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_247D28BA0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "url";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_247D1F3F8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "key";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "auth_token";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "id";
  *(v13 + 1) = 2;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "metadata";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return sub_247D1F408();
}

uint64_t sub_247D1C2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_247D1F238();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        sub_247D1F2C8();
      }
    }

    else
    {
      if (result == 3 || result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        sub_247D1C398(a1, v5, a2, a3);
      }
    }
  }
}

uint64_t sub_247D1C398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileUploadToken(0);
  type metadata accessor for Metadata(0);
  sub_247D1CF88(&qword_27EE64E10, type metadata accessor for Metadata, &unk_247D2CDAC);
  return sub_247D1F2E8();
}

uint64_t sub_247D1C44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_247D1F3C8(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_247D1F3C8(), !v4))
    {
      v13 = v3[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_247D1F3C8(), !v4))
      {
        v15 = v3[7];
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = sub_247D1F3C8(), !v4))
        {
          result = sub_247D1C588(v3, a1, a2, a3);
          if (!v4)
          {
            type metadata accessor for FileUploadToken(0);
            return sub_247D1F178();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_247D1C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Metadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileUploadToken(0);
  sub_247D1D9AC(a1 + *(v12 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE63288, &qword_247D246E0);
  }

  sub_247D1DA1C(v7, v11);
  sub_247D1CF88(&qword_27EE64E10, type metadata accessor for Metadata, &unk_247D2CDAC);
  sub_247D1F3E8();
  return sub_247C86E70(v11);
}

uint64_t sub_247D1C76C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  sub_247D1F188();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Metadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_247D1C854(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1CF88(&qword_27EE64E90, type metadata accessor for FileUploadToken, &unk_247D2CEDC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D1C8F4(uint64_t a1)
{
  v2 = sub_247D1CF88(&qword_27EE64D08, type metadata accessor for FileUploadToken, &unk_247D2CF14);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D1C960(uint64_t a1, uint64_t a2)
{
  sub_247D1CF88(&qword_27EE64D08, type metadata accessor for FileUploadToken, &unk_247D2CF14);

  return sub_247D1F338();
}

uint64_t sub_247D1C9E0()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73230);
  __swift_project_value_buffer(v0, qword_27EE73230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "color";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "position";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "size";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D1CC20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_247D1F3C8(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_247D1F3C8(), !v5))
    {
      v12 = v4[5];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v13 || (result = sub_247D1F3C8(), !v5))
      {
        a4(0);
        return sub_247D1F178();
      }
    }
  }

  return result;
}

uint64_t sub_247D1CD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1CF88(&qword_27EE64E98, type metadata accessor for Metadata, &unk_247D2CD74);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D1CE0C(uint64_t a1)
{
  v2 = sub_247D1CF88(&qword_27EE64E10, type metadata accessor for Metadata, &unk_247D2CDAC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D1CE78(uint64_t a1, uint64_t a2)
{
  sub_247D1CF88(&qword_27EE64E10, type metadata accessor for Metadata, &unk_247D2CDAC);

  return sub_247D1F338();
}

uint64_t sub_247D1CF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247D1D400(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_247D20538() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  if ((sub_247D1393C(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FileUploadTokensResponseV2(0);
  sub_247D1F198();
  sub_247D1CF88(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D1D514(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_247D20538() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_247D1F198();
  sub_247D1CF88(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D1D620(void *a1, void *a2)
{
  v4 = type metadata accessor for Metadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64DC0, &unk_247D2D260);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_247D20538() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_247D20538() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_247D20538() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_247D20538() & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(type metadata accessor for FileUploadToken(0) + 36);
  v15 = *(v11 + 48);
  sub_247D1D9AC(a1 + v14, v13);
  sub_247D1D9AC(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_247C27100(v13, &qword_27EE63288, &qword_247D246E0);
LABEL_21:
      sub_247D1F198();
      sub_247D1CF88(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_247D1FB78();
      return v17 & 1;
    }

    goto LABEL_17;
  }

  sub_247D1D9AC(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_247C86E70(v10);
LABEL_17:
    sub_247C27100(v13, &qword_27EE64DC0, &unk_247D2D260);
    goto LABEL_18;
  }

  sub_247D1DA1C(&v13[v15], v7);
  v19 = sub_247D1D514(v10, v7, type metadata accessor for Metadata);
  sub_247C86E70(v7);
  sub_247C86E70(v10);
  sub_247C27100(v13, &qword_27EE63288, &qword_247D246E0);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_18:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_247D1D9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288, &qword_247D246E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247D1DA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247D1DC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247D1DCD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_247D1DD7C(uint64_t a1)
{
  sub_247D1DE48(319, &qword_27EE64EC0, type metadata accessor for FileUploadToken, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_247D1F198();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247D1DE48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_247D1DED4()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE73248);
  __swift_project_value_buffer(v0, qword_27EE73248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428, qword_247D29930);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430, &unk_247D29200) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "reference_number";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suite_results_key";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uut_command";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ds_id";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247D1E164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_247D1F238();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        sub_247D1F2A8();
      }
    }

    else if (result == 3 || result == 4)
    {
      sub_247D1F2C8();
    }

    else if (result == 5)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_247D1E228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_247D1F3A8(), !v4))
  {
    if (!v3[1] || (result = sub_247D1F3A8(), !v4))
    {
      v6 = v3[3];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_247D1F3C8(), !v4))
      {
        v8 = v3[5];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v3[4] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_247D1F3C8(), !v4))
        {
          if (!v3[6] || (result = sub_247D1F3A8(), !v4))
          {
            type metadata accessor for FeedbackRequest(0);
            return sub_247D1F178();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_247D1E34C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  return sub_247D1F188();
}

uint64_t sub_247D1E3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1E894(&qword_27EE64EE8, type metadata accessor for FeedbackRequest, &unk_247D2D368);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247D1E450@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE627A8 != -1)
  {
    swift_once();
  }

  v2 = sub_247D1F428();
  v3 = __swift_project_value_buffer(v2, qword_27EE73248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_247D1E4F8(uint64_t a1)
{
  v2 = sub_247D1E894(&qword_27EE64ED0, type metadata accessor for FeedbackRequest, &unk_247D2D3A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247D1E564(uint64_t a1, uint64_t a2)
{
  sub_247D1E894(&qword_27EE64ED0, type metadata accessor for FeedbackRequest, &unk_247D2D3A0);

  return sub_247D1F338();
}

uint64_t type metadata accessor for FeedbackRequest(uint64_t a1)
{
  result = qword_27EE64EF0;
  if (!qword_27EE64EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247D1E750(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_247D20538();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v7 = a1;
    v8 = a2;
    v9 = sub_247D20538();
    a2 = v8;
    v10 = v9;
    a1 = v7;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  type metadata accessor for FeedbackRequest(0);
  sub_247D1F198();
  sub_247D1E894(&qword_27EE63C00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247D1E894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247D1E8F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247D1E9B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247D1EA54(uint64_t a1)
{
  result = sub_247D1F198();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x2821350B0](imageWidth, imageHeight, normalizedRect.origin, *&normalizedRect.origin.y, normalizedRect.size, *&normalizedRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}