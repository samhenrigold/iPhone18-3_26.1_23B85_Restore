uint64_t type metadata accessor for EditorialDetailState(uint64_t a1)
{
  result = qword_2810F7610;
  if (!qword_2810F7610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A6864(uint64_t a1)
{
  result = type metadata accessor for EditorialDetailLayout(319);
  if (v2 <= 0x3F)
  {
    result = sub_24B75B1F8();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for EditorialDetailLoadState(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for EditorialDetailLayout(uint64_t a1)
{
  result = qword_2810F7578;
  if (!qword_2810F7578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A695C(uint64_t a1)
{
  result = sub_24B75B308();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for EditorialDetailLoadState(uint64_t a1)
{
  result = qword_2810F7418;
  if (!qword_2810F7418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A6A1C(uint64_t a1)
{
  sub_24B6A6A74();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24B6A6A74()
{
  if (!qword_2810F74F0[0])
  {
    v0 = type metadata accessor for EditorialDetailContent(0);
    if (!v1)
    {
      atomic_store(v0, qword_2810F74F0);
    }
  }
}

uint64_t type metadata accessor for EditorialDetailContent(uint64_t a1)
{
  result = qword_2810F74E0;
  if (!qword_2810F74E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A6B08(uint64_t a1)
{
  sub_24B6A6BFC(319);
  if (v1 <= 0x3F)
  {
    sub_24B6A7074(319);
    if (v2 <= 0x3F)
    {
      sub_24B6A7594(319);
      if (v3 <= 0x3F)
      {
        sub_24B75B108();
        if (v4 <= 0x3F)
        {
          sub_24B6A7490();
          if (v5 <= 0x3F)
          {
            sub_24B6A74E0(319);
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

void sub_24B6A6BFC(uint64_t a1)
{
  if (!qword_2810F7AD0)
  {
    type metadata accessor for EditorialArtwork(255);
    sub_24B6A6DEC(qword_2810F7248, type metadata accessor for EditorialArtwork, &protocol conformance descriptor for EditorialArtwork);
    v1 = sub_24B75B2C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F7AD0);
    }
  }
}

uint64_t type metadata accessor for EditorialArtwork(uint64_t a1)
{
  result = qword_2810F7218;
  if (!qword_2810F7218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A6CDC(uint64_t a1)
{
  sub_24B6A6D98(319, &qword_2810F7AE8, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_24B6A6D98(319, &qword_2810F7AF8, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6A6D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B75C4E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B6A6DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A6E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A6EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A6F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A6F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24B6A7074(uint64_t a1)
{
  if (!qword_2810F6920)
  {
    type metadata accessor for EditorialExternalLink(255);
    sub_24B6A6DEC(&qword_2810F70E8, type metadata accessor for EditorialExternalLink, &protocol conformance descriptor for EditorialExternalLink);
    v1 = sub_24B75C458();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F6920);
    }
  }
}

uint64_t type metadata accessor for EditorialExternalLink(uint64_t a1)
{
  result = qword_2810F70D0;
  if (!qword_2810F70D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A7154(uint64_t a1)
{
  result = sub_24B75B108();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B6A71D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A7218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A7260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A72A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24B75B108();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6A72EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A7334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A737C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24B6A740C(uint64_t a1)
{
  sub_24B6A7490();
  if (v1 <= 0x3F)
  {
    sub_24B75B108();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6A7490()
{
  if (!qword_2810F6960)
  {
    v0 = sub_24B75C4E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F6960);
    }
  }
}

void sub_24B6A74E0(uint64_t a1)
{
  if (!qword_2810F6928)
  {
    sub_24B6A753C();
    v1 = sub_24B75C458();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F6928);
    }
  }
}

unint64_t sub_24B6A753C()
{
  result = qword_2810F70F8[0];
  if (!qword_2810F70F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810F70F8);
  }

  return result;
}

void sub_24B6A7594(uint64_t a1)
{
  if (!qword_2810F7158[0])
  {
    type metadata accessor for EditorialPreview(255);
    v1 = sub_24B75C4E8();
    if (!v2)
    {
      atomic_store(v1, qword_2810F7158);
    }
  }
}

uint64_t type metadata accessor for EditorialPreview(uint64_t a1)
{
  result = qword_2810F7188;
  if (!qword_2810F7188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B6A7638()
{
  result = qword_2810F70F0;
  if (!qword_2810F70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F70F0);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewState(uint64_t a1)
{
  result = qword_2810F6CA8;
  if (!qword_2810F6CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A76D8(uint64_t a1)
{
  result = type metadata accessor for WorkoutContextMenuPreviewLoadState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewLoadState(uint64_t a1)
{
  result = qword_2810F69F8;
  if (!qword_2810F69F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A77A8(uint64_t a1)
{
  v1 = type metadata accessor for WorkoutContextMenuPreviewContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewContent(uint64_t a1)
{
  result = qword_2810F6AB0;
  if (!qword_2810F6AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A784C(uint64_t a1)
{
  if (!qword_2810F7AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
    v1 = sub_24B75C4E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F7AD8);
    }
  }
}

void sub_24B6A78B0(uint64_t a1)
{
  sub_24B6A784C(319);
  if (v1 <= 0x3F)
  {
    sub_24B6A7AA0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewArtwork(uint64_t a1)
{
  result = qword_2810F6B40;
  if (!qword_2810F6B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A7AA0(uint64_t a1)
{
  if (!qword_2810F7B00)
  {
    sub_24B75AFE8();
    v1 = sub_24B75C4E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F7B00);
    }
  }
}

uint64_t type metadata accessor for ProgramDetailState(uint64_t a1)
{
  result = qword_2810F7AB0;
  if (!qword_2810F7AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A7B44(uint64_t a1)
{
  result = type metadata accessor for ProgramDetailLoadState(319);
  if (v2 <= 0x3F)
  {
    result = sub_24B75B1F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ProgramDetailLoadState(uint64_t a1)
{
  result = qword_2810F79E8;
  if (!qword_2810F79E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A7C40(uint64_t a1)
{
  sub_24B6A7C98();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24B6A7C98()
{
  if (!qword_2810F7398)
  {
    v0 = type metadata accessor for WorkoutProgram(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7398);
    }
  }
}

uint64_t type metadata accessor for WorkoutProgram(uint64_t a1)
{
  result = qword_2810F7388;
  if (!qword_2810F7388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A7D2C(uint64_t a1)
{
  sub_24B6A7ECC(319);
  if (v1 <= 0x3F)
  {
    sub_24B75AFE8();
    if (v2 <= 0x3F)
    {
      sub_24B6A8268(319, &qword_2810F6940, type metadata accessor for WorkoutProgramLinkAnnotation, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24B6A8268(319, qword_2810F6F50, type metadata accessor for WorkoutProgramPreview, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24B75B108();
          if (v5 <= 0x3F)
          {
            sub_24B6A8268(319, &qword_2810F7B00, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24B6A83E8();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24B6A7ECC(uint64_t a1)
{
  if (!qword_2810F7AE0)
  {
    type metadata accessor for WorkoutProgramArtwork(255);
    sub_24B6A8070(qword_2810F7048, type metadata accessor for WorkoutProgramArtwork, &protocol conformance descriptor for WorkoutProgramArtwork);
    v1 = sub_24B75B2C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F7AE0);
    }
  }
}

uint64_t type metadata accessor for WorkoutProgramArtwork(uint64_t a1)
{
  result = qword_2810F7018;
  if (!qword_2810F7018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A7FAC(uint64_t a1)
{
  sub_24B6A6D98(319, &qword_2810F7AE8, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_24B6A6D98(319, &qword_2810F7AF8, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B6A8070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A80B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6A8100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24B6A8268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for WorkoutProgramLinkAnnotation(uint64_t a1)
{
  result = qword_2810F6E48;
  if (!qword_2810F6E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A8318(uint64_t a1)
{
  result = sub_24B75B108();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutProgramPreview(uint64_t a1)
{
  result = qword_2810F6F80;
  if (!qword_2810F6F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B6A83E8()
{
  if (!qword_2810F6938)
  {
    v0 = sub_24B75C3B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F6938);
    }
  }
}

uint64_t sub_24B6A8458(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A8490(uint64_t a1)
{
  sub_24B6A84E8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24B6A84E8(uint64_t a1)
{
  if (!qword_2810F72A8[0])
  {
    type metadata accessor for WorkoutSchedule(255);
    v1 = sub_24B75C4E8();
    if (!v2)
    {
      atomic_store(v1, qword_2810F72A8);
    }
  }
}

uint64_t type metadata accessor for WorkoutSchedule(uint64_t a1)
{
  result = qword_2810F72D8;
  if (!qword_2810F72D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B6A858C(uint64_t a1)
{
  result = sub_24B75B1D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B6A8650(uint64_t a1)
{
  sub_24B6C7124(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
    swift_getFunctionTypeMetadata1();
    sub_24B75B288();
    if (v5 <= 0x3F)
    {
      type metadata accessor for WorkoutContextMenuPreviewView.Layout(319, v3, *(a1 + 24), v4);
      if (v6 <= 0x3F)
      {
        sub_24B6C71E0(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24B6A8784@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B6A87D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24B75B1F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B6A8908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24B75B1F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B6A8A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6A8AC4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6A8B50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B75B248();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_24B75B1F8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    State = type metadata accessor for WorkoutScheduleLoadState(0);
    if (*(*(State - 8) + 84) == a2)
    {
      v8 = State;
      v12 = *(State - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_24B6A8D1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B75B248();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24B75B1F8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  State = type metadata accessor for WorkoutScheduleLoadState(0);
  if (*(*(State - 8) + 84) == a3)
  {
    v10 = State;
    v14 = *(State - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_24B6A8EEC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aHighlight[8];
  *a1 = *aHighlight;
  a1[1] = v2;
}

uint64_t sub_24B6A8F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B6A9014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B6A90E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B6A91EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B6A9304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B75B108();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B6A93B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6A9454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6A94C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6A9540(uint64_t a1, uint64_t a2, uint64_t a3)
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
    State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, State);
  }
}

uint64_t sub_24B6A95EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B6A9690()
{

  return swift_deallocObject();
}

uint64_t sub_24B6A96D0()
{

  return swift_deallocObject();
}

uint64_t sub_24B6A970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for WorkoutContextMenuPreviewView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80)));
  sub_24B6C7004(*v6, v6[1]);
  v7 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  v8 = sub_24B75B288();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v5[13];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_24B6A989C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  v6 = sub_24B75B288();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[9];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24B6A9A04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  result = sub_24B75B288();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[9];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_24B6A9B7C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344A8, &unk_24B75F6B0);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B8, &unk_24B75F6C0);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C0A8();
  sub_24B75B558();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B6A9D48()
{

  return swift_deallocObject();
}

uint64_t sub_24B6A9D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (*(*(*(a3 + 24) - 8) + 84) == a2)
  {
    v5 = *(*(a3 + 24) - 8);
    v6 = *(a3 + 84);
  }

  else if (*(*(*(a3 + 32) - 8) + 84) == a2)
  {
    v5 = *(*(a3 + 32) - 8);
    v6 = *(a3 + 88);
  }

  else
  {
    if (*(*(*(a3 + 40) - 8) + 84) != a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
      swift_getFunctionTypeMetadata();
      v12 = sub_24B75B288();
      v13 = *(v12 - 8);
      if (*(v13 + 84) == a2)
      {
        return (*(v13 + 48))(a1 + *(a3 + 96), a2, v12);
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
      return (*(*(v14 - 8) + 48))(a1 + *(a3 + 100), a2, v14);
    }

    v5 = *(*(a3 + 40) - 8);
    v6 = *(a3 + 92);
  }

  v7 = *(v5 + 48);
  v8 = a1 + v6;

  return v7(v8);
}

uint64_t sub_24B6AA000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v4 = *(a4 + 24);
  if (*(*(v4 - 8) + 84) == a3)
  {
    v5 = *(*(a4 + 24) - 8);
    v6 = *(a4 + 84);
  }

  else
  {
    v4 = *(a4 + 32);
    if (*(*(v4 - 8) + 84) == a3)
    {
      v5 = *(*(a4 + 32) - 8);
      v6 = *(a4 + 88);
    }

    else
    {
      v4 = *(a4 + 40);
      if (*(*(v4 - 8) + 84) != a3)
      {
        v9 = result;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
        swift_getFunctionTypeMetadata();
        v13 = sub_24B75B288();
        v14 = *(v13 - 8);
        if (*(v14 + 84) == a3)
        {
          return (*(v14 + 56))(v9 + *(a4 + 96), a2, a2, v13);
        }

        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
        return (*(*(v15 - 8) + 56))(v9 + *(a4 + 100), a2, a2, v15);
      }

      v5 = *(*(a4 + 40) - 8);
      v6 = *(a4 + 92);
    }
  }

  v7 = *(v5 + 56);
  v8 = result + v6;

  return v7(v8, a2, a2, v4);
}

uint64_t sub_24B6AA288(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034528, &qword_24B75F8D0);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908, MEMORY[0x277D83980]);
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  sub_24B75C4E8();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  sub_24B75B4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948, MEMORY[0x277CDF500]);
  sub_24B75B4C8();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345C0, &qword_24B75F958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345D0, &unk_24B75F960);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B4F8();
  sub_24B75B7B8();
  sub_24B75B7B8();
  sub_24B75BF88();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B7B8();
  sub_24B75BF88();
  sub_24B6E4F94();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24B6AB670()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 72);
  v18 = *(v0 + 16);
  v19 = v1;
  v20 = v2;
  v21 = *(v0 + 40);
  v16 = v21;
  v22 = *(v0 + 56);
  v23 = v3;
  v4 = (type metadata accessor for WorkoutDetailView(0, &v18) - 8);
  v5 = (*(*v4 + 80) + 80) & ~*(*v4 + 80);
  v6 = (*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v17 = (v6 + *(*(v7 - 8) + 80) + 9) & ~*(*(v7 - 8) + 80);
  v8 = (v0 + v5);
  sub_24B6C7004(*v8, v8[1]);
  (*(*(v1 - 8) + 8))(v8 + v4[23], v1);
  (*(*(v2 - 8) + 8))(v8 + v4[24], v2);
  (*(*(v16 - 8) + 8))(v8 + v4[25]);
  v9 = v4[26];
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  v20 = v7;
  *&v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  v10 = sub_24B75B288();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v4[27];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v12 - 8) + 8))(v8 + v11, v12);

  v13 = sub_24B75B108();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v17, 1, v13))
  {
    (*(v14 + 8))(v0 + v17, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_24B6AB9E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v31 = *(*(v5 - 8) + 80);
  v6 = (v31 + 80) & ~v31;
  v7 = *(*(v5 - 8) + 64);
  v32 = v1;
  v33 = v2;
  v34 = v3;
  v26 = *(v0 + 40);
  v8 = *(v0 + 56);
  v35 = v26;
  v36 = v8;
  v37 = v4;
  v9 = type metadata accessor for WorkoutDetailView(0, &v32);
  v30 = *(*(v9 - 1) + 80);
  v10 = (v6 + v7 + v30) & ~v30;
  v11 = *(*(v9 - 1) + 64);
  v12 = type metadata accessor for WorkoutDetailMusicTrack(0);
  v29 = *(*(v12 - 8) + 80);
  v27 = (v10 + v11 + v29) & ~v29;
  v13 = sub_24B75B108();
  v25 = *(v13 - 8);
  v28 = *(v25 + 48);
  if (!v28(v0 + v6, 1, v13))
  {
    (*(v25 + 8))(v0 + v6, v13);
  }

  sub_24B6C7004(*(v0 + v10), *(v0 + v10 + 8));
  (*(*(v2 - 8) + 8))(v0 + v10 + v9[21], v2);
  (*(*(v3 - 8) + 8))(v0 + v10 + v9[22], v3);
  (*(*(v26 - 8) + 8))(v0 + v10 + v9[23]);
  v14 = v9[24];
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  v34 = v5;
  *&v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  v15 = sub_24B75B288();
  (*(*(v15 - 8) + 8))(v0 + v10 + v14, v15);
  v16 = v9[25];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v17 - 8) + 8))(v0 + v10 + v16, v17);

  v18 = v0 + v27 + *(v12 + 20);
  v19 = sub_24B75B298();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  v21 = *(type metadata accessor for WorkoutDetailArtwork(0) + 20);
  if (!v28(v18 + v21, 1, v13))
  {
    (*(v25 + 8))(v18 + v21, v13);
  }

  v22 = v0 + v27 + *(v12 + 24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B75B2D8();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24B6ABF3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B75B628();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B6ABF94()
{

  return swift_deallocObject();
}

uint64_t sub_24B6AC004()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 72);
  v23 = *(v0 + 16);
  v24 = v1;
  v25 = v2;
  v26 = *(v0 + 40);
  v22 = v26;
  v27 = *(v0 + 56);
  v28 = v3;
  v4 = (type metadata accessor for WorkoutDetailView(0, &v23) - 8);
  v5 = (*(*v4 + 80) + 80) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = type metadata accessor for WorkoutDetailTrainer(0);
  v8 = (v5 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v9 = (v0 + v5);
  sub_24B6C7004(*v9, v9[1]);
  (*(*(v1 - 8) + 8))(v9 + v4[23], v1);
  (*(*(v2 - 8) + 8))(v9 + v4[24], v2);
  (*(*(v22 - 8) + 8))(v9 + v4[25]);
  v10 = v4[26];
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
  *&v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  v11 = sub_24B75B288();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);
  v12 = v4[27];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = v0 + v8;
  v15 = type metadata accessor for WorkoutDetailArtwork(0);
  if (!(*(*(v15 - 8) + 48))(v0 + v8, 1, v15))
  {
    v16 = sub_24B75B298();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v0 + v8, 1, v16))
    {
      (*(v17 + 8))(v0 + v8, v16);
    }

    v18 = *(v15 + 20);
    v19 = sub_24B75B108();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24B6AC4D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WorkoutDetailArtwork(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B6AC600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for WorkoutDetailArtwork(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B6AC738@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x24C247940]();
  *a1 = result;
  return result;
}

uint64_t sub_24B6AC80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6AC884(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6AC910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75B608();
  *a1 = result;
  return result;
}

uint64_t sub_24B6AC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B6ACAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B6ACBF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED0, &qword_24B761780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED8, &qword_24B761788);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_24B75B108();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B6ACD84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED0, &qword_24B761780);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED8, &qword_24B761788);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_24B75B108();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24B6ACF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24B75B108();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B6ACFC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6AD06C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_24B75AFE8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = sub_24B75B108();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_24B6AD298(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24B75AFE8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_24B75B108();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[10];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_24B6AD4C4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for EditorialDetailLayout(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_24B75B1F8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  State = type metadata accessor for EditorialDetailLoadState(0);
  v15 = *(*(State - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, State);
}

uint64_t sub_24B6AD630(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for EditorialDetailLayout(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24B75B1F8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  State = type metadata accessor for EditorialDetailLoadState(0);
  v15 = *(*(State - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, State);
}

uint64_t sub_24B6AD79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B6AD8A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B6AD9BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75B658();
  *a1 = result;
  return result;
}

uint64_t sub_24B6ADA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6ADA90(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6ADB90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B75AFE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for WorkoutDetailArtwork(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[18];
    goto LABEL_13;
  }

  v18 = sub_24B75B108();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[23];

  return v19(v20, a2, v18);
}

uint64_t sub_24B6ADDAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B75AFE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for WorkoutDetailArtwork(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[18];
    goto LABEL_11;
  }

  v18 = sub_24B75B108();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[23];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_24B6ADFC8()
{

  return swift_deallocObject();
}

uint64_t sub_24B6AE020()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24B6AE10C()
{

  return swift_deallocObject();
}

uint64_t sub_24B6AE160()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24B6AE244()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24B6AE324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6AE390(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6AE420()
{

  return swift_deallocObject();
}

uint64_t sub_24B6AE458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B6AE50C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6AE5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B6AE708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B6AE82C()
{

  return swift_deallocObject();
}

uint64_t sub_24B6AE864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v6 = sub_24B75B288();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = *(a3 + 52);
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + *(a3 + 56));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = *(a3 + 60);
      goto LABEL_3;
    }

    v14 = *(*(*(a3 + 24) - 8) + 48);
    v15 = a1 + *(a3 + 64);

    return v14(v15, a2);
  }
}

uint64_t sub_24B6AEA08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  result = sub_24B75B288();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = *(a4 + 52);
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = *(a4 + 60);
    goto LABEL_3;
  }

  v14 = *(*(*(a4 + 24) - 8) + 56);
  v15 = a1 + *(a4 + 64);

  return v14(v15, a2, a2);
}

uint64_t sub_24B6AEBBC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345E8, &qword_24B766D40);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v1 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  sub_24B75B7B8();
  sub_24B75BF88();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA0, &qword_24B766D78);
  sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40, MEMORY[0x277CDD7F8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA8, &qword_24B766D80);
  sub_24B6C743C(&qword_27F035EB0, &qword_27F035EA8, &qword_24B766D80, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EB8, &qword_24B766D88);
  swift_getOpaqueTypeConformance2();
  sub_24B6E89B0();
  sub_24B6C743C(&qword_27F035EC0, &qword_27F035EB8, &qword_24B766D88, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6AF334()
{
  v1 = *(v0 + 40);
  v28 = *(v0 + 16);
  v29 = *(v0 + 24);
  v27 = v29;
  v30 = v1;
  v2 = (type metadata accessor for ProgramDetailView(0, &v28) - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for WorkoutProgram(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  sub_24B6C7004(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v8 = sub_24B75B288();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v2[17];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  (*(*(v27 - 8) + 8))(v0 + v3 + v2[18]);
  v11 = v0 + v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = &unk_27F0360D8;
    v13 = &unk_24B767000;
  }

  else
  {
    v12 = &unk_27F0360D0;
    v13 = &unk_24B766FF8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  (*(*(v14 - 8) + 8))(v0 + v6, v14);
  v15 = v5[5];
  v16 = sub_24B75AFE8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v18(v11 + v15, v16);

  v19 = v11 + v5[8];
  v20 = type metadata accessor for WorkoutProgramPreview(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {

    v21 = *(v20 + 20);
    v22 = sub_24B75B108();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);
  }

  v23 = v5[9];
  v24 = sub_24B75B108();
  (*(*(v24 - 8) + 8))(v11 + v23, v24);
  v25 = v5[10];
  if (!(*(v17 + 48))(v11 + v25, 1, v16))
  {
    v18(v11 + v25, v16);
  }

  v18(v11 + v5[11], v16);
  v18(v11 + v5[12], v16);

  return swift_deallocObject();
}

uint64_t sub_24B6AF7B0()
{
  v1 = *(v0 + 40);
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v14 = v16;
  v17 = v1;
  v2 = (type metadata accessor for ProgramDetailView(0, &v15) - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_24B75AFE8();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v0 + v3);
  sub_24B6C7004(*v8, v8[1]);
  v9 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v10 = sub_24B75B288();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v11 = v2[17];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  (*(*(v14 - 8) + 8))(v8 + v2[18]);
  (*(v6 + 8))(v0 + v7, v5);
  return swift_deallocObject();
}

uint64_t sub_24B6AFA08()
{
  v1 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = v1;
  v2 = (type metadata accessor for ProgramDetailView(0, &v10) - 8);
  v3 = (v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80)));
  sub_24B6C7004(*v3, v3[1]);
  v4 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v5 = sub_24B75B288();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v2[17];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  (*(*(v9 - 8) + 8))(v3 + v2[18]);

  return swift_deallocObject();
}

uint64_t sub_24B6AFBF0()
{
  v1 = *(v0 + 40);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  v15 = v17;
  v18 = v1;
  v2 = (type metadata accessor for ProgramDetailView(0, &v16) - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = (type metadata accessor for WorkoutProgramLinkAnnotation(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (v0 + v3);
  sub_24B6C7004(*v7, v7[1]);
  v8 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v9 = sub_24B75B288();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  v10 = v2[17];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  (*(*(v15 - 8) + 8))(v7 + v2[18]);

  v12 = v5[8];
  v13 = sub_24B75B108();
  (*(*(v13 - 8) + 8))(v0 + v6 + v12, v13);
  return swift_deallocObject();
}

uint64_t sub_24B6AFEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6AFF1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B6AFFAC()
{

  return swift_deallocObject();
}

uint64_t sub_24B6AFFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v8 = sub_24B75B288();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a3 + 68);
LABEL_11:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = *(a3 + 72);
    goto LABEL_11;
  }

  v9 = *(a3 + 24);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = *(*(a3 + 24) - 8);
    v11 = *(a3 + 76);
    goto LABEL_11;
  }

  v14 = *(*(*(a3 + 32) - 8) + 48);
  v15 = a1 + *(a3 + 80);

  return v14(v15, a2);
}

uint64_t sub_24B6B01C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v8 = sub_24B75B288();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a4 + 68);
LABEL_9:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = *(a4 + 72);
    goto LABEL_9;
  }

  v9 = *(a4 + 24);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = *(*(a4 + 24) - 8);
    v11 = *(a4 + 76);
    goto LABEL_9;
  }

  v14 = *(*(*(a4 + 32) - 8) + 56);
  v15 = v5 + *(a4 + 80);

  return v14(v15, a2, a2);
}

uint64_t sub_24B6B03AC(void *a1)
{
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  sub_24B75B7B8();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B6B0728()
{
  v1 = *(v0 + 24);
  v24[0] = *(v0 + 16);
  v24[1] = v1;
  v2 = *(v0 + 48);
  v25 = *(v0 + 32);
  v23 = v25;
  v26 = v2;
  v3 = (type metadata accessor for EditorialDetailView(0, v24) - 8);
  v4 = (*(*v3 + 80) + 64) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for EditorialDetailContent(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  sub_24B6C7004(*(v0 + v4), *(v0 + v4 + 8));
  v8 = v3[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v9 = sub_24B75B288();
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);
  v10 = v3[20];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v11 - 8) + 8))(v0 + v4 + v10, v11);
  (*(*(v1 - 8) + 8))(v0 + v4 + v3[21], v1);
  (*(*(v23 - 8) + 8))(v0 + v4 + v3[22]);
  v12 = v0 + v7;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = &unk_27F036458;
    v14 = &unk_24B767A28;
  }

  else
  {
    v13 = &unk_27F036450;
    v14 = &unk_24B767A20;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  (*(*(v15 - 8) + 8))(v0 + v7, v15);

  v16 = v12 + *(v6 + 32);
  v17 = type metadata accessor for EditorialPreview(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {

    v18 = *(v17 + 20);
    v19 = sub_24B75B108();
    (*(*(v19 - 8) + 8))(v16 + v18, v19);
  }

  v20 = *(v6 + 36);
  v21 = sub_24B75B108();
  (*(*(v21 - 8) + 8))(v12 + v20, v21);

  return swift_deallocObject();
}

uint64_t sub_24B6B0B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036460, &unk_24B767A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6B0B9C()
{

  return swift_deallocObject();
}

uint64_t sub_24B6B0BD4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for EditorialDetailContent(0);
  v4 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v24 = *(*(v3 - 8) + 64);
  v26 = v1;
  v27[0] = v2;
  v27[1] = v1;
  v5 = *(v0 + 48);
  v25 = *(v0 + 32);
  v28 = v25;
  v29 = v5;
  v6 = type metadata accessor for EditorialDetailView(0, v27);
  v7 = *(*(v6 - 1) + 80);
  v8 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED0, &qword_24B761780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &unk_27F036458;
    v10 = &unk_24B767A28;
  }

  else
  {
    v9 = &unk_27F036450;
    v10 = &unk_24B767A20;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  (*(*(v11 - 8) + 8))(v0 + v4, v11);

  v12 = v8 + *(v3 + 32);
  v13 = type metadata accessor for EditorialPreview(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    v14 = *(v13 + 20);
    v15 = sub_24B75B108();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  v16 = (v4 + v24 + v7) & ~v7;
  v17 = *(v3 + 36);
  v18 = sub_24B75B108();
  (*(*(v18 - 8) + 8))(v8 + v17, v18);

  sub_24B6C7004(*(v0 + v16), *(v0 + v16 + 8));
  v19 = v6[17];
  swift_getFunctionTypeMetadata1();
  v20 = sub_24B75B288();
  (*(*(v20 - 8) + 8))(v0 + v16 + v19, v20);
  v21 = v6[18];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v22 - 8) + 8))(v0 + v16 + v21, v22);
  (*(*(v26 - 8) + 8))(v0 + v16 + v6[19]);
  (*(*(v25 - 8) + 8))(v0 + v16 + v6[20]);
  return swift_deallocObject();
}

uint64_t sub_24B6B1048@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B75B698();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B6B1120(uint64_t a1, uint64_t a2, int *a3)
{
  State = type metadata accessor for ProgramDetailLoadState(0);
  if (*(*(State - 8) + 84) == a2)
  {
    v7 = State;
    v8 = *(State - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_24B75B1F8();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_24B6B122C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  State = type metadata accessor for ProgramDetailLoadState(0);
  if (*(*(State - 8) + 84) == a3)
  {
    v9 = State;
    v10 = *(State - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_24B75B1F8();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_24B6B1334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B75B308();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B6B13EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B75B308();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24B6B14A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24B75B108();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B6B1554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6B15F8()
{
  v1 = type metadata accessor for WorkoutProgram(0);
  v23 = *(*(v1 - 1) + 80);
  v2 = (v23 + 176) & ~v23;
  v21 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for WorkoutProgramPreview(0);
  v4 = *(v3 - 8);
  v20 = *(v4 + 80);

  v22 = v2;
  v5 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = &unk_27F0360D8;
    v7 = &unk_24B767000;
  }

  else
  {
    v6 = &unk_27F0360D0;
    v7 = &unk_24B766FF8;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = v1[5];
  v10 = sub_24B75AFE8();
  v11 = *(v10 - 8);
  v25 = *(v11 + 8);
  v25(v5 + v9, v10);

  v12 = v5 + v1[8];
  if (!(*(v4 + 48))(v12, 1, v3))
  {

    v13 = *(v3 + 20);
    v14 = sub_24B75B108();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  v24 = v3;
  v15 = v1[9];
  v16 = sub_24B75B108();
  v17 = *(*(v16 - 8) + 8);
  v17(v5 + v15, v16);
  v18 = v1[10];
  if (!(*(v11 + 48))(v5 + v18, 1, v10))
  {
    v25(v5 + v18, v10);
  }

  v25(v5 + v1[11], v10);
  v25(v5 + v1[12], v10);

  v17(v0 + ((v22 + v21 + v20) & ~v20) + *(v24 + 20), v16);

  return swift_deallocObject();
}

uint64_t sub_24B6B19DC()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 176) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24B6B1AEC()
{
  v1 = type metadata accessor for WorkoutProgram(0);
  v2 = *(*(v1 - 1) + 80);

  v3 = v0 + ((v2 + 176) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &unk_27F0360D8;
    v5 = &unk_24B767000;
  }

  else
  {
    v4 = &unk_27F0360D0;
    v5 = &unk_24B766FF8;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  (*(*(v6 - 8) + 8))(v0 + ((v2 + 176) & ~v2), v6);
  v7 = v1[5];
  v8 = sub_24B75AFE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v3 + v7, v8);

  v11 = v3 + v1[8];
  v12 = type metadata accessor for WorkoutProgramPreview(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {

    v13 = *(v12 + 20);
    v14 = sub_24B75B108();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  v15 = v1[9];
  v16 = sub_24B75B108();
  (*(*(v16 - 8) + 8))(v3 + v15, v16);
  v17 = v1[10];
  if (!(*(v9 + 48))(v3 + v17, 1, v8))
  {
    v10(v3 + v17, v8);
  }

  v10(v3 + v1[11], v8);
  v10(v3 + v1[12], v8);

  return swift_deallocObject();
}

uint64_t sub_24B6B1E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B6B1F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B6B2078(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B1D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B6B20E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B1D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B6B2154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24B75B108();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B6B220C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24B75B108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6B2324(uint64_t a1)
{
  v2 = sub_24B6B35C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2360(uint64_t a1)
{
  v2 = sub_24B6B35C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B239C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E656D7069757165;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6E6F697461727564;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D656874;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7469617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6547636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x76654C6C6C696B73;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B6B24BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B6B3770(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6B24F0(uint64_t a1)
{
  v2 = sub_24B6B32CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B252C(uint64_t a1)
{
  v2 = sub_24B6B32CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2568(uint64_t a1)
{
  v2 = sub_24B6B356C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B25A4(uint64_t a1)
{
  v2 = sub_24B6B356C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B25E0(uint64_t a1)
{
  v2 = sub_24B6B3518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B261C(uint64_t a1)
{
  v2 = sub_24B6B3518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2658(uint64_t a1)
{
  v2 = sub_24B6B34C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2694(uint64_t a1)
{
  v2 = sub_24B6B34C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B26D0(uint64_t a1)
{
  v2 = sub_24B6B3470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B270C(uint64_t a1)
{
  v2 = sub_24B6B3470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2748(uint64_t a1)
{
  v2 = sub_24B6B341C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2784(uint64_t a1)
{
  v2 = sub_24B6B341C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B27C0(uint64_t a1)
{
  v2 = sub_24B6B33C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B27FC(uint64_t a1)
{
  v2 = sub_24B6B33C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B2838(uint64_t a1)
{
  v2 = sub_24B6B3374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B2874(uint64_t a1)
{
  v2 = sub_24B6B3374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B28B0(uint64_t a1)
{
  v2 = sub_24B6B3320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B28EC(uint64_t a1)
{
  v2 = sub_24B6B3320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialFilterKind.encode(to:)(void *a1, int a2)
{
  LODWORD(v68) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033CF8, &qword_24B75CC50);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D00, &qword_24B75CC58);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D08, &qword_24B75CC60);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v44 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D10, &qword_24B75CC68);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D18, &qword_24B75CC70);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D20, &qword_24B75CC78);
  v67 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v66 = &v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D28, &qword_24B75CC80);
  v65 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v64 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D30, &qword_24B75CC88);
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D38, &qword_24B75CC90);
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033D40, &qword_24B75CC98);
  v19 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B32CC();
  v69 = v21;
  sub_24B75C738();
  v22 = (v19 + 8);
  v23 = v68;
  if (v68 <= 3u)
  {
    v61 = v16;
    v68 = v22;
    v30 = v62;
    v29 = v63;
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v73 = 2;
        sub_24B6B3518();
        v38 = v31;
        v40 = v69;
        v39 = v70;
        sub_24B75C638();
        (*(v32 + 8))(v38, v45);
      }

      else
      {
        v74 = 3;
        sub_24B6B34C4();
        v42 = v33;
        v40 = v69;
        v39 = v70;
        sub_24B75C638();
        (*(v34 + 8))(v42, v46);
      }
    }

    else
    {
      if (!v23)
      {
        v71[0] = 0;
        sub_24B6B35C0();
        v35 = v69;
        v36 = v70;
        sub_24B75C638();
        (*(v30 + 8))(v18, v61);
        return (*v68)(v35, v36);
      }

      v72 = 1;
      sub_24B6B356C();
      v40 = v69;
      v39 = v70;
      sub_24B75C638();
      (*(v29 + 8))(v15, v13);
    }

    return (*v68)(v40, v39);
  }

  else
  {
    if (v68 <= 5u)
    {
      if (v68 == 4)
      {
        v75 = 4;
        sub_24B6B3470();
        v41 = v47;
        v25 = v69;
        v26 = v70;
        sub_24B75C638();
        (*(v48 + 8))(v41, v49);
      }

      else
      {
        v76 = 5;
        sub_24B6B341C();
        v43 = v50;
        v25 = v69;
        v26 = v70;
        sub_24B75C638();
        (*(v51 + 8))(v43, v52);
      }
    }

    else
    {
      if (v68 == 6)
      {
        v77 = 6;
        sub_24B6B33C8();
        v24 = v53;
        v25 = v69;
        v26 = v70;
        sub_24B75C638();
        v28 = v54;
        v27 = v55;
      }

      else if (v68 == 7)
      {
        v78 = 7;
        sub_24B6B3374();
        v24 = v56;
        v25 = v69;
        v26 = v70;
        sub_24B75C638();
        v28 = v57;
        v27 = v58;
      }

      else
      {
        v79 = 8;
        sub_24B6B3320();
        v24 = v59;
        v25 = v69;
        v26 = v70;
        sub_24B75C638();
        v28 = v60;
        v27 = v61;
      }

      (*(v28 + 8))(v24, v27);
    }

    return (*v22)(v25, v26);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B6B32CC()
{
  result = qword_27F033D48;
  if (!qword_27F033D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D48);
  }

  return result;
}

unint64_t sub_24B6B3320()
{
  result = qword_27F033D50;
  if (!qword_27F033D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D50);
  }

  return result;
}

unint64_t sub_24B6B3374()
{
  result = qword_27F033D58;
  if (!qword_27F033D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D58);
  }

  return result;
}

unint64_t sub_24B6B33C8()
{
  result = qword_27F033D60;
  if (!qword_27F033D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D60);
  }

  return result;
}

unint64_t sub_24B6B341C()
{
  result = qword_27F033D68;
  if (!qword_27F033D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D68);
  }

  return result;
}

unint64_t sub_24B6B3470()
{
  result = qword_27F033D70;
  if (!qword_27F033D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D70);
  }

  return result;
}

unint64_t sub_24B6B34C4()
{
  result = qword_27F033D78;
  if (!qword_27F033D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D78);
  }

  return result;
}

unint64_t sub_24B6B3518()
{
  result = qword_27F033D80;
  if (!qword_27F033D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D80);
  }

  return result;
}

unint64_t sub_24B6B356C()
{
  result = qword_27F033D88;
  if (!qword_27F033D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D88);
  }

  return result;
}

unint64_t sub_24B6B35C0()
{
  result = qword_27F033D90;
  if (!qword_27F033D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D90);
  }

  return result;
}

char *sub_24B6B362C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B6B3A58(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t EditorialFilterKind.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B6B36E4()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

uint64_t sub_24B6B372C(uint64_t a1)
{
  v2 = *v1;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v2);
  return sub_24B75C718();
}

uint64_t sub_24B6B3770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7469617274 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

char *sub_24B6B3A58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E50, &qword_24B75D580);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E58, &qword_24B75D588);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E60, &qword_24B75D590);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E68, &qword_24B75D598);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v47 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E70, &qword_24B75D5A0);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v72 = &v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E78, &qword_24B75D5A8);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v71 = &v47 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E80, &qword_24B75D5B0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v67 = &v47 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E88, &qword_24B75D5B8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E90, &qword_24B75D5C0);
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033E98, &qword_24B75D5C8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v22 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24B6B32CC();
  v23 = v75;
  sub_24B75C728();
  if (!v23)
  {
    v48 = v17;
    v47 = v15;
    v24 = v14;
    v25 = v71;
    v26 = v72;
    v27 = v73;
    v75 = v19;
    v49 = v21;
    v28 = sub_24B75C628();
    v29 = (2 * *(v28 + 16)) | 1;
    v76 = v28;
    v77 = v28 + 32;
    v78 = 0;
    v79 = v29;
    v30 = sub_24B6B6658();
    if (v30 != 9 && v78 == v79 >> 1)
    {
      v21 = v30;
      if (v30 <= 3u)
      {
        v31 = v49;
        if (v30 > 1u)
        {
          if (v30 == 2)
          {
            v80 = 2;
            sub_24B6B3518();
            v45 = v67;
            sub_24B75C598();
            (*(v53 + 8))(v45, v54);
          }

          else
          {
            v80 = 3;
            sub_24B6B34C4();
            sub_24B75C598();
            (*(v55 + 8))(v25, v56);
          }

          (*(v75 + 8))(v31, v18);
          goto LABEL_29;
        }

        v32 = v75;
        if (v30)
        {
          v80 = 1;
          sub_24B6B356C();
          sub_24B75C598();
          v42 = *(v51 + 8);
          v43 = v24;
          v44 = &v81;
        }

        else
        {
          v80 = 0;
          sub_24B6B35C0();
          v41 = v48;
          sub_24B75C598();
          v42 = *(v50 + 8);
          v43 = v41;
          v44 = &v79;
        }
      }

      else
      {
        v31 = v49;
        if (v30 > 5u)
        {
          v32 = v75;
          if (v30 == 6)
          {
            v80 = 6;
            sub_24B6B33C8();
            v33 = v68;
            sub_24B75C598();
            v35 = v61;
            v34 = v62;
          }

          else
          {
            if (v30 != 7)
            {
              v80 = 8;
              sub_24B6B3320();
              v46 = v70;
              sub_24B75C598();
              (*(v65 + 8))(v46, v66);
LABEL_28:
              (*(v32 + 8))(v31, v18);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v74);
              return v21;
            }

            v80 = 7;
            sub_24B6B3374();
            v33 = v69;
            sub_24B75C598();
            v35 = v63;
            v34 = v64;
          }

          goto LABEL_26;
        }

        v32 = v75;
        if (v30 != 4)
        {
          v80 = 5;
          sub_24B6B341C();
          v33 = v27;
          sub_24B75C598();
          v35 = v59;
          v34 = v60;
LABEL_26:
          v42 = *(v35 + 8);
          v43 = v33;
          goto LABEL_27;
        }

        v80 = 4;
        sub_24B6B3470();
        sub_24B75C598();
        v42 = *(v58 + 8);
        v43 = v26;
        v44 = &v82;
      }

      v34 = *(v44 - 32);
LABEL_27:
      v42(v43, v34);
      goto LABEL_28;
    }

    v36 = sub_24B75C568();
    v21 = swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v38 = &type metadata for EditorialFilterKind;
    v39 = v49;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v75 + 8))(v39, v18);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v21;
}

unint64_t sub_24B6B4520()
{
  result = qword_27F033D98;
  if (!qword_27F033D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F033DA0, &qword_24B75CCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033D98);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B6B45F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B6B4680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6B47D4()
{
  result = qword_27F033DA8;
  if (!qword_27F033DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DA8);
  }

  return result;
}

unint64_t sub_24B6B482C()
{
  result = qword_27F033DB0;
  if (!qword_27F033DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DB0);
  }

  return result;
}

unint64_t sub_24B6B4884()
{
  result = qword_27F033DB8;
  if (!qword_27F033DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DB8);
  }

  return result;
}

unint64_t sub_24B6B48DC()
{
  result = qword_27F033DC0;
  if (!qword_27F033DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DC0);
  }

  return result;
}

unint64_t sub_24B6B4934()
{
  result = qword_27F033DC8;
  if (!qword_27F033DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DC8);
  }

  return result;
}

unint64_t sub_24B6B498C()
{
  result = qword_27F033DD0;
  if (!qword_27F033DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DD0);
  }

  return result;
}

unint64_t sub_24B6B49E4()
{
  result = qword_27F033DD8;
  if (!qword_27F033DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DD8);
  }

  return result;
}

unint64_t sub_24B6B4A3C()
{
  result = qword_27F033DE0;
  if (!qword_27F033DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DE0);
  }

  return result;
}

unint64_t sub_24B6B4A94()
{
  result = qword_27F033DE8;
  if (!qword_27F033DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DE8);
  }

  return result;
}

unint64_t sub_24B6B4AEC()
{
  result = qword_27F033DF0;
  if (!qword_27F033DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DF0);
  }

  return result;
}

unint64_t sub_24B6B4B44()
{
  result = qword_27F033DF8;
  if (!qword_27F033DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033DF8);
  }

  return result;
}

unint64_t sub_24B6B4B9C()
{
  result = qword_27F033E00;
  if (!qword_27F033E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E00);
  }

  return result;
}

unint64_t sub_24B6B4BF4()
{
  result = qword_27F033E08;
  if (!qword_27F033E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E08);
  }

  return result;
}

unint64_t sub_24B6B4C4C()
{
  result = qword_27F033E10;
  if (!qword_27F033E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E10);
  }

  return result;
}

unint64_t sub_24B6B4CA4()
{
  result = qword_27F033E18;
  if (!qword_27F033E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E18);
  }

  return result;
}

unint64_t sub_24B6B4CFC()
{
  result = qword_27F033E20;
  if (!qword_27F033E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E20);
  }

  return result;
}

unint64_t sub_24B6B4D54()
{
  result = qword_27F033E28;
  if (!qword_27F033E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E28);
  }

  return result;
}

unint64_t sub_24B6B4DAC()
{
  result = qword_27F033E30;
  if (!qword_27F033E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E30);
  }

  return result;
}

unint64_t sub_24B6B4E04()
{
  result = qword_27F033E38;
  if (!qword_27F033E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E38);
  }

  return result;
}

unint64_t sub_24B6B4E5C()
{
  result = qword_27F033E40;
  if (!qword_27F033E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E40);
  }

  return result;
}

unint64_t sub_24B6B4EB4()
{
  result = qword_27F033E48;
  if (!qword_27F033E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033E48);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B6B4F60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6B4F80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27F033EA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F033EA8);
    }
  }
}

__n128 WorkoutDetailState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailState(0) + 28);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for WorkoutDetailState(uint64_t a1)
{
  result = qword_27F033F10;
  if (!qword_27F033F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetailState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailState(0) + 32);

  return sub_24B6B50F8(v3, a1);
}

uint64_t sub_24B6B50F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutDetailState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailState(0) + 32);

  return sub_24B6B51AC(a1, v3);
}

uint64_t sub_24B6B51AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutDetailState.init(workoutIdentifier:locale:isOffline:layout:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for WorkoutDetailState(0);
  v13 = v12[5];
  v14 = sub_24B75B1F8();
  (*(*(v14 - 8) + 32))(&a7[v13], a3, v14);
  a7[v12[6]] = a4;
  v15 = &a7[v12[7]];
  v16 = *(a5 + 48);
  *(v15 + 2) = *(a5 + 32);
  *(v15 + 3) = v16;
  v15[64] = *(a5 + 64);
  v17 = *(a5 + 16);
  *v15 = *a5;
  *(v15 + 1) = v17;
  v18 = &a7[v12[8]];

  return sub_24B6B5340(a6, v18);
}

uint64_t sub_24B6B5340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6B53B0()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x6E696C66664F7369;
  v4 = 0x74756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x7461745364616F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B6B5450@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B6B6494(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6B5484(uint64_t a1)
{
  v2 = sub_24B6B57A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B54C0(uint64_t a1)
{
  v2 = sub_24B6B57A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB8, &qword_24B75D608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B57A8();
  sub_24B75C738();
  LOBYTE(v15) = 0;
  sub_24B75C678();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutDetailState(0);
    LOBYTE(v15) = 1;
    sub_24B75B1F8();
    sub_24B6B61F4(&qword_27F033EC8, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_24B75C6A8();
    v20 = 2;
    sub_24B75C688();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[3];
    v17 = v10[2];
    v18 = v11;
    v19 = *(v10 + 64);
    v12 = v10[1];
    v15 = *v10;
    v16 = v12;
    v14[15] = 3;
    sub_24B6B57FC();
    sub_24B75C6A8();
    LOBYTE(v15) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
    sub_24B6B5D68(&qword_27F033ED8, MEMORY[0x277D043D0]);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B6B57A8()
{
  result = qword_27F033EC0;
  if (!qword_27F033EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033EC0);
  }

  return result;
}

unint64_t sub_24B6B57FC()
{
  result = qword_27F033ED0;
  if (!qword_27F033ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033ED0);
  }

  return result;
}

uint64_t WorkoutDetailState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EB0, &qword_24B75D600);
  MEMORY[0x28223BE20](v24);
  v25 = &v22 - v3;
  v4 = sub_24B75B1F8();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EF0, &qword_24B75D610);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WorkoutDetailState(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B57A8();
  v28 = v8;
  v12 = v30;
  sub_24B75C728();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v11;
  v14 = v26;
  LOBYTE(v31) = 0;
  *v13 = sub_24B75C5E8();
  v13[1] = v15;
  v30 = v15;
  LOBYTE(v31) = 1;
  sub_24B6B61F4(&qword_27F033EF8, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  sub_24B75C618();
  (*(v14 + 32))(v13 + v9[5], v6, v4);
  LOBYTE(v31) = 2;
  v22 = 0;
  v16 = v13;
  *(v13 + v9[6]) = sub_24B75C5F8() & 1;
  v37 = 3;
  sub_24B6B5D14();
  sub_24B75C618();
  v17 = v13 + v9[7];
  v18 = v34;
  *(v17 + 2) = v33;
  *(v17 + 3) = v18;
  v17[64] = v35;
  v19 = v32;
  *v17 = v31;
  *(v17 + 1) = v19;
  v36 = 4;
  sub_24B6B5D68(&qword_27F033F08, MEMORY[0x277D043D8]);
  v20 = v25;
  sub_24B75C618();
  (*(v27 + 8))(v28, v29);
  sub_24B6B5340(v20, v16 + v9[8]);
  sub_24B6B5E3C(v16, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6B5EA0(v16);
}

unint64_t sub_24B6B5D14()
{
  result = qword_27F033F00;
  if (!qword_27F033F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F00);
  }

  return result;
}

uint64_t sub_24B6B5D68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F033EB0, &qword_24B75D600);
    sub_24B6B61F4(&qword_27F033EE0, type metadata accessor for WorkoutDetail, &protocol conformance descriptor for WorkoutDetail);
    sub_24B6B61F4(&qword_27F033EE8, type metadata accessor for WorkoutDetail, &protocol conformance descriptor for WorkoutDetail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6B5E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6B5EA0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20FitnessProductDetail07WorkoutC5StateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for WorkoutDetailState(0);
  if ((MEMORY[0x24C2474B0](a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[6]) != *(a2 + v5[6]))
  {
    return 0;
  }

  v6 = a1 + v5[7];
  v7 = *(v6 + 3);
  v18[2] = *(v6 + 2);
  v18[3] = v7;
  v19 = v6[64];
  v8 = *(v6 + 1);
  v18[0] = *v6;
  v18[1] = v8;
  v9 = a2 + v5[7];
  v10 = *(v9 + 3);
  v16[2] = *(v9 + 2);
  v16[3] = v10;
  v17 = v9[64];
  v11 = *(v9 + 1);
  v16[0] = *v9;
  v16[1] = v11;
  if (!_s20FitnessProductDetail07WorkoutC6LayoutV2eeoiySbAC_ACtFZ_0(v18, v16))
  {
    return 0;
  }

  v12 = v5[8];
  v13 = type metadata accessor for WorkoutDetail(0);
  v14 = sub_24B6B61F4(&qword_27F033F28, type metadata accessor for WorkoutDetail, &protocol conformance descriptor for WorkoutDetail);

  return MEMORY[0x282159B18](a1 + v12, a2 + v12, v13, v14);
}

void sub_24B6B60B4(uint64_t a1)
{
  sub_24B75B1F8();
  if (v1 <= 0x3F)
  {
    sub_24B6B6160(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6B6160(uint64_t a1)
{
  if (!qword_27F033F20)
  {
    type metadata accessor for WorkoutDetail(255);
    sub_24B6B61F4(&qword_27F033F28, type metadata accessor for WorkoutDetail, &protocol conformance descriptor for WorkoutDetail);
    v1 = sub_24B75C1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F033F20);
    }
  }
}

uint64_t sub_24B6B61F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for WorkoutDetailState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutDetailState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6B6390()
{
  result = qword_27F033F30;
  if (!qword_27F033F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F30);
  }

  return result;
}

unint64_t sub_24B6B63E8()
{
  result = qword_27F033F38;
  if (!qword_27F033F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F38);
  }

  return result;
}

unint64_t sub_24B6B6440()
{
  result = qword_27F033F40;
  if (!qword_27F033F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F40);
  }

  return result;
}

uint64_t sub_24B6B6494(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B76BB20 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696C66664F7369 && a2 == 0xE900000000000065 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B6B6658()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B668C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B66C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B66F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 11;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B6728()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B675C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B6790()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B67C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6B67F8()
{
  if (*v0)
  {
    return 0x64656863746566;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_24B6B682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B6B6914(uint64_t a1)
{
  v2 = sub_24B6B7018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B6950(uint64_t a1)
{
  v2 = sub_24B6B7018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B6994()
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  return sub_24B75C718();
}

uint64_t sub_24B6B69D8(uint64_t a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  return sub_24B75C718();
}

uint64_t sub_24B6B6A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B6B6AA4(uint64_t a1)
{
  v2 = sub_24B6B706C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B6AE0(uint64_t a1)
{
  v2 = sub_24B6B706C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6B6B1C(uint64_t a1)
{
  v2 = sub_24B6B70C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B6B58(uint64_t a1)
{
  v2 = sub_24B6B70C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutScheduleLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F48, &unk_24B75D7D0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v22 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F58, &qword_24B75D7E0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F60, &qword_24B75D7E8);
  v13 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B7018();
  sub_24B75C738();
  sub_24B6B8FC4(v29, v12, type metadata accessor for WorkoutScheduleLoadState);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v31 = 0;
    sub_24B6B70C0();
    v16 = v30;
    sub_24B75C638();
    (*(v23 + 8))(v9, v24);
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    v18 = v25;
    sub_24B6B8DE8(v12, v25, &qword_27F033F50, &unk_24B764A50);
    v32 = 1;
    sub_24B6B706C();
    v19 = v26;
    v20 = v30;
    sub_24B75C638();
    type metadata accessor for WorkoutSchedule(0);
    sub_24B6B7744(&qword_27F033F78, type metadata accessor for WorkoutSchedule, &protocol conformance descriptor for WorkoutSchedule);
    v21 = v28;
    sub_24B75C668();
    (*(v27 + 8))(v19, v21);
    sub_24B6B9CD4(v18, &qword_27F033F50, &unk_24B764A50);
    return (*(v13 + 8))(v15, v20);
  }
}

unint64_t sub_24B6B7018()
{
  result = qword_27F033F68;
  if (!qword_27F033F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F68);
  }

  return result;
}

unint64_t sub_24B6B706C()
{
  result = qword_27F033F70;
  if (!qword_27F033F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F70);
  }

  return result;
}

unint64_t sub_24B6B70C0()
{
  result = qword_27F033F80;
  if (!qword_27F033F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033F80);
  }

  return result;
}

uint64_t WorkoutScheduleLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F88, &qword_24B75D7F0);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x28223BE20](v3);
  v46 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F90, &qword_24B75D7F8);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F98, &unk_24B75D800);
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  MEMORY[0x28223BE20](State);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24B6B7018();
  v20 = v49;
  sub_24B75C728();
  if (!v20)
  {
    v49 = State;
    v21 = v44;
    v22 = v45;
    v40 = v15;
    v41 = v18;
    v23 = v46;
    v24 = v47;
    v25 = sub_24B75C628();
    if (*(v25 + 16) == 1)
    {
      v49 = v25;
      if (*(v25 + 32))
      {
        v52 = 1;
        sub_24B6B706C();
        v26 = v23;
        v27 = v12;
        sub_24B75C598();
        v28 = v48;
        type metadata accessor for WorkoutSchedule(0);
        sub_24B6B7744(&qword_27F033FA0, type metadata accessor for WorkoutSchedule, &protocol conformance descriptor for WorkoutSchedule);
        v34 = v40;
        v35 = v42;
        sub_24B75C5D8();
        (*(v43 + 8))(v26, v35);
        (*(v28 + 8))(v27, v10);
        swift_unknownObjectRelease();
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
        (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
        v37 = v41;
        sub_24B6B9D9C(v34, v41, type metadata accessor for WorkoutScheduleLoadState);
      }

      else
      {
        v51 = 0;
        sub_24B6B70C0();
        sub_24B75C598();
        v32 = v48;
        (*(v22 + 8))(v9, v21);
        (*(v32 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
        v37 = v41;
        (*(*(v38 - 8) + 56))(v41, 1, 1, v38);
      }

      sub_24B6B9D9C(v37, v24, type metadata accessor for WorkoutScheduleLoadState);
    }

    else
    {
      v29 = sub_24B75C568();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
      *v31 = v49;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v48 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_24B6B7744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ArtworkBannerState.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B75B248();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkBannerState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArtworkBannerState(0) + 20);
  v4 = sub_24B75B1F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArtworkBannerState.workoutIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkBannerState(0) + 24));

  return v1;
}

uint64_t ArtworkBannerState.sampleContentWorkoutIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkBannerState(0) + 28));

  return v1;
}

uint64_t ArtworkBannerState.sampleContentPlaybackRestriction.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ArtworkBannerState(0) + 36);

  return sub_24B6B8D78(a1, v3);
}

uint64_t ArtworkBannerState.init(calendar:workoutScheduleLoadState:sampleContentPlaybackRestriction:locale:workoutIdentifier:sampleContentWorkoutIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_24B75B248();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for ArtworkBannerState(0);
  sub_24B6B9D9C(a2, a9 + v19[8], type metadata accessor for WorkoutScheduleLoadState);
  sub_24B6B8DE8(a3, a9 + v19[9], &qword_27F033FA8, &qword_24B75D810);
  v20 = v19[5];
  v21 = sub_24B75B1F8();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a4, v21);
  v23 = (a9 + v19[6]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + v19[7]);
  *v24 = a7;
  v24[1] = a8;
  return result;
}

unint64_t sub_24B6B7B8C()
{
  v1 = *v0;
  v2 = 0x7261646E656C6163;
  v3 = 0xD000000000000020;
  if (v1 == 4)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B6B7C50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B6B9AD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6B7C84(uint64_t a1)
{
  v2 = sub_24B6B8E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6B7CC0(uint64_t a1)
{
  v2 = sub_24B6B8E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArtworkBannerState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FB0, &qword_24B75D818);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B8E50();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75B248();
  sub_24B6B7744(&qword_27F033FC0, MEMORY[0x277CC99E8], MEMORY[0x277CC99F0]);
  sub_24B75C6A8();
  if (!v1)
  {
    type metadata accessor for ArtworkBannerState(0);
    v8[14] = 1;
    sub_24B75B1F8();
    sub_24B6B7744(&qword_27F033EC8, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_24B75C6A8();
    v8[13] = 2;
    sub_24B75C678();
    v8[12] = 3;
    sub_24B75C648();
    v8[11] = 4;
    type metadata accessor for WorkoutScheduleLoadState(0);
    sub_24B6B7744(&qword_27F033FC8, type metadata accessor for WorkoutScheduleLoadState, &protocol conformance descriptor for WorkoutScheduleLoadState);
    sub_24B75C6A8();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
    sub_24B6B8F4C(&qword_27F033FD0, MEMORY[0x277D043D0]);
    sub_24B75C6A8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ArtworkBannerState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - v3;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  MEMORY[0x28223BE20](State);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B75B1F8();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24B75B248();
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FE8, &qword_24B75D820);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ArtworkBannerState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6B8E50();
  v38 = v10;
  v14 = v39;
  sub_24B75C728();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v16 = v34;
  v45 = 0;
  sub_24B6B7744(&qword_27F033FF0, MEMORY[0x277CC99E8], MEMORY[0x277CC9A00]);
  sub_24B75C618();
  (*(v32 + 32))(v15, v35, v37);
  v44 = 1;
  sub_24B6B7744(&qword_27F033EF8, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  sub_24B75C618();
  v26 = v5;
  (*(v16 + 32))(v15 + v11[5], v7, v5);
  v43 = 2;
  v39 = 0;
  v17 = sub_24B75C5E8();
  v18 = (v15 + v11[6]);
  *v18 = v17;
  v18[1] = v19;
  v42 = 3;
  v20 = sub_24B75C5B8();
  v22 = (v15 + v11[7]);
  *v22 = v20;
  v22[1] = v23;
  v41 = 4;
  sub_24B6B7744(&qword_27F033FF8, type metadata accessor for WorkoutScheduleLoadState, &protocol conformance descriptor for WorkoutScheduleLoadState);
  v24 = v31;
  sub_24B75C618();
  sub_24B6B9D9C(v24, v15 + v11[8], type metadata accessor for WorkoutScheduleLoadState);
  v40 = 5;
  sub_24B6B8F4C(&qword_27F034000, MEMORY[0x277D043D8]);
  v25 = v29;
  sub_24B75C618();
  (*(v33 + 8))(v38, v36);
  sub_24B6B8DE8(v25, v15 + v11[9], &qword_27F033FA8, &qword_24B75D810);
  sub_24B6B8FC4(v15, v27, type metadata accessor for ArtworkBannerState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6B902C(v15, type metadata accessor for ArtworkBannerState);
}

uint64_t _s20FitnessProductDetail24WorkoutScheduleLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSchedule(0);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034080, &qword_24B75DD80);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034088, &qword_24B75DD88);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  v19 = *(v18 + 56);
  sub_24B6B8FC4(a1, &v32 - v16, type metadata accessor for WorkoutScheduleLoadState);
  sub_24B6B8FC4(a2, &v17[v19], type metadata accessor for WorkoutScheduleLoadState);
  v20 = *(v7 + 48);
  if (v20(v17, 1, v6) == 1)
  {
    if (v20(&v17[v19], 1, v6) == 1)
    {
LABEL_3:
      sub_24B6B902C(v17, type metadata accessor for WorkoutScheduleLoadState);
      return 1;
    }

    goto LABEL_6;
  }

  sub_24B6B8FC4(v17, v14, type metadata accessor for WorkoutScheduleLoadState);
  if (v20(&v17[v19], 1, v6) != 1)
  {
    v22 = *(v9 + 48);
    sub_24B6B8DE8(v14, v11, &qword_27F033F50, &unk_24B764A50);
    sub_24B6B8DE8(&v17[v19], &v11[v22], &qword_27F033F50, &unk_24B764A50);
    v23 = v35;
    v24 = *(v34 + 48);
    if (v24(v11, 1, v35) == 1)
    {
      if (v24(&v11[v22], 1, v23) == 1)
      {
        sub_24B6B9CD4(v11, &qword_27F033F50, &unk_24B764A50);
        goto LABEL_3;
      }
    }

    else
    {
      v25 = v33;
      sub_24B6B9D34(v11, v33, &qword_27F033F50, &unk_24B764A50);
      if (v24(&v11[v22], 1, v23) != 1)
      {
        v28 = v32;
        sub_24B6B9D9C(&v11[v22], v32, type metadata accessor for WorkoutSchedule);
        if (sub_24B75B1B8())
        {
          v29 = *(v23 + 20);
          v30 = *(v25 + v29);
          v31 = *(v28 + v29);
          sub_24B6B902C(v28, type metadata accessor for WorkoutSchedule);
          sub_24B6B902C(v25, type metadata accessor for WorkoutSchedule);
          sub_24B6B9CD4(v11, &qword_27F033F50, &unk_24B764A50);
          if (v30 == v31)
          {
            goto LABEL_3;
          }

          goto LABEL_14;
        }

        sub_24B6B902C(v28, type metadata accessor for WorkoutSchedule);
        sub_24B6B902C(v25, type metadata accessor for WorkoutSchedule);
        v26 = &qword_27F033F50;
        v27 = &unk_24B764A50;
LABEL_13:
        sub_24B6B9CD4(v11, v26, v27);
LABEL_14:
        sub_24B6B902C(v17, type metadata accessor for WorkoutScheduleLoadState);
        return 0;
      }

      sub_24B6B902C(v25, type metadata accessor for WorkoutSchedule);
    }

    v26 = &qword_27F034080;
    v27 = &qword_24B75DD80;
    goto LABEL_13;
  }

  sub_24B6B9CD4(v14, &qword_27F033F50, &unk_24B764A50);
LABEL_6:
  sub_24B6B9CD4(v17, &qword_27F034088, &qword_24B75DD88);
  return 0;
}

uint64_t sub_24B6B8D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6B8DE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_24B6B8E50()
{
  result = qword_27F033FB8;
  if (!qword_27F033FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033FB8);
  }

  return result;
}

unint64_t sub_24B6B8EA4()
{
  result = qword_27F033FD8;
  if (!qword_27F033FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033FD8);
  }

  return result;
}

unint64_t sub_24B6B8EF8()
{
  result = qword_27F033FE0;
  if (!qword_27F033FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F033FE0);
  }

  return result;
}

uint64_t sub_24B6B8F4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F033FA8, &qword_24B75D810);
    sub_24B6B8EA4();
    sub_24B6B8EF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6B8FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6B902C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s20FitnessProductDetail18ArtworkBannerStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x24C247500]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkBannerState(0);
  if ((MEMORY[0x24C2474B0](a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((_s20FitnessProductDetail24WorkoutScheduleLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    return 0;
  }

  v16 = v4[9];
  v17 = sub_24B6B9324();

  return MEMORY[0x282159B18](a1 + v16, a2 + v16, &type metadata for SampleContentPlaybackRestriction, v17);
}

void sub_24B6B91F4(uint64_t a1)
{
  sub_24B75B248();
  if (v1 <= 0x3F)
  {
    sub_24B75B1F8();
    if (v2 <= 0x3F)
    {
      sub_24B6A7490();
      if (v3 <= 0x3F)
      {
        type metadata accessor for WorkoutScheduleLoadState(319);
        if (v4 <= 0x3F)
        {
          sub_24B6B92C8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B6B92C8(uint64_t a1)
{
  if (!qword_27F034018)
  {
    sub_24B6B9324();
    v1 = sub_24B75C1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F034018);
    }
  }
}

unint64_t sub_24B6B9324()
{
  result = qword_27F034020;
  if (!qword_27F034020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034020);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkBannerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkBannerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutScheduleLoadState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutScheduleLoadState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutScheduleLoadState.FetchedCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WorkoutScheduleLoadState.FetchedCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24B6B9714()
{
  result = qword_27F034028;
  if (!qword_27F034028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034028);
  }

  return result;
}

unint64_t sub_24B6B976C()
{
  result = qword_27F034030;
  if (!qword_27F034030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034030);
  }

  return result;
}

unint64_t sub_24B6B97C4()
{
  result = qword_27F034038;
  if (!qword_27F034038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034038);
  }

  return result;
}

unint64_t sub_24B6B981C()
{
  result = qword_27F034040;
  if (!qword_27F034040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034040);
  }

  return result;
}

unint64_t sub_24B6B9874()
{
  result = qword_27F034048;
  if (!qword_27F034048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034048);
  }

  return result;
}

unint64_t sub_24B6B98CC()
{
  result = qword_27F034050;
  if (!qword_27F034050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034050);
  }

  return result;
}

unint64_t sub_24B6B9924()
{
  result = qword_27F034058;
  if (!qword_27F034058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034058);
  }

  return result;
}

unint64_t sub_24B6B997C()
{
  result = qword_27F034060;
  if (!qword_27F034060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034060);
  }

  return result;
}

unint64_t sub_24B6B99D4()
{
  result = qword_27F034068;
  if (!qword_27F034068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034068);
  }

  return result;
}

unint64_t sub_24B6B9A2C()
{
  result = qword_27F034070;
  if (!qword_27F034070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034070);
  }

  return result;
}

unint64_t sub_24B6B9A84()
{
  result = qword_27F034078;
  if (!qword_27F034078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034078);
  }

  return result;
}

uint64_t sub_24B6B9AD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76BB20 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000024B76BB40 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B76BB60 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024B76BB80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B6B9CD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B6B9D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B6B9D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id static NSBundle.localization.getter()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t static HighlightAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *aHighlight;

  return v0;
}

uint64_t static HighlightAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aHighlight = a1;
  *&aHighlight[8] = a2;
}

uint64_t sub_24B6B9FB0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aHighlight = v2;
  *&aHighlight[8] = v1;
}

uint64_t sub_24B6BA0B8()
{
  swift_beginAccess();
  v0 = *aHighlight;

  return v0;
}

uint64_t sub_24B6BA12C(uint64_t a1)
{
  sub_24B6BA2F8();

  return sub_24B75AEF8();
}

uint64_t sub_24B6BA178(uint64_t a1)
{
  sub_24B6BA2F8();

  return sub_24B75AEF8();
}

unint64_t sub_24B6BA1C8()
{
  result = qword_27F0340A0;
  if (!qword_27F0340A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340A0);
  }

  return result;
}

unint64_t sub_24B6BA22C()
{
  result = qword_27F0340A8;
  if (!qword_27F0340A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340A8);
  }

  return result;
}

unint64_t sub_24B6BA284()
{
  result = qword_27F0340B0;
  if (!qword_27F0340B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340B0);
  }

  return result;
}

unint64_t sub_24B6BA2F8()
{
  result = qword_27F0340B8;
  if (!qword_27F0340B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340B8);
  }

  return result;
}

unint64_t sub_24B6BA34C()
{
  result = qword_27F0340C0;
  if (!qword_27F0340C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340C0);
  }

  return result;
}

uint64_t WorkoutDetailTrainer.bio.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetailTrainer(0) + 20));

  return v1;
}

uint64_t type metadata accessor for WorkoutDetailTrainer(uint64_t a1)
{
  result = qword_2810F7728;
  if (!qword_2810F7728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetailTrainer.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetailTrainer(0) + 24));

  return v1;
}

uint64_t WorkoutDetailTrainer.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetailTrainer(0) + 28));

  return v1;
}

int *WorkoutDetailTrainer.init(artwork:bio:identifier:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_24B6BA56C(a1, a8);
  result = type metadata accessor for WorkoutDetailTrainer(0);
  v16 = (a8 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  v18 = (a8 + result[7]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t sub_24B6BA56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6BA5DC()
{
  v1 = 0x6B726F77747261;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (*v0)
  {
    v1 = 7301474;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B6BA64C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B6BBE58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6BA680(uint64_t a1)
{
  v2 = sub_24B6BA918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BA6BC(uint64_t a1)
{
  v2 = sub_24B6BA918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailTrainer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340D0, &qword_24B75DFB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BA918();
  sub_24B75C738();
  v8[15] = 0;
  type metadata accessor for WorkoutDetailArtwork(0);
  sub_24B6BC028(&qword_27F0340E0, type metadata accessor for WorkoutDetailArtwork, &protocol conformance descriptor for WorkoutDetailArtwork);
  sub_24B75C668();
  if (!v1)
  {
    type metadata accessor for WorkoutDetailTrainer(0);
    v8[14] = 1;
    sub_24B75C648();
    v8[13] = 2;
    sub_24B75C678();
    v8[12] = 3;
    sub_24B75C678();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B6BA918()
{
  result = qword_27F0340D8;
  if (!qword_27F0340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0340D8);
  }

  return result;
}

uint64_t WorkoutDetailTrainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340E8, &qword_24B75DFC0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for WorkoutDetailTrainer(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BA918();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v30;
  v14 = v12;
  type metadata accessor for WorkoutDetailArtwork(0);
  v35 = 0;
  sub_24B6BC028(&qword_27F0340F0, type metadata accessor for WorkoutDetailArtwork, &protocol conformance descriptor for WorkoutDetailArtwork);
  v15 = v31;
  sub_24B75C5D8();
  sub_24B6BA56C(v6, v14);
  v34 = 1;
  v16 = sub_24B75C5B8();
  v17 = (v14 + v10[5]);
  *v17 = v16;
  v17[1] = v18;
  v33 = 2;
  v19 = sub_24B75C5E8();
  v20 = (v14 + v10[6]);
  *v20 = v19;
  v20[1] = v21;
  v32 = 3;
  v22 = sub_24B75C5E8();
  v23 = v9;
  v25 = v24;
  (*(v13 + 8))(v23, v15);
  v26 = (v14 + v10[7]);
  *v26 = v22;
  v26[1] = v25;
  sub_24B6BAD50(v14, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6BC070(v14, type metadata accessor for WorkoutDetailTrainer);
}

uint64_t sub_24B6BAD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailTrainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutDetailTrainer.hash(into:)(uint64_t a1)
{
  sub_24B6BB198(a1);
  if (*(v1 + *(type metadata accessor for WorkoutDetailTrainer(0) + 20) + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75C358();

  return sub_24B75C358();
}

uint64_t WorkoutDetailTrainer.hashValue.getter()
{
  sub_24B75C6D8();
  sub_24B6BB198(v2);
  if (*(v0 + *(type metadata accessor for WorkoutDetailTrainer(0) + 20) + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75C358();
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6BAF68(int *a1)
{
  sub_24B75C6D8();
  sub_24B6BB198(v4);
  if (*(v1 + a1[5] + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75C358();
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6BB028(uint64_t a1, int *a2)
{
  sub_24B6BB198(a1);
  if (*(v2 + a2[5] + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75C358();

  return sub_24B75C358();
}

uint64_t sub_24B6BB0D8(uint64_t a1, int *a2)
{
  sub_24B75C6D8();
  sub_24B6BB198(v5);
  if (*(v2 + a2[5] + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75C358();
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6BB198(uint64_t a1)
{
  v29 = a1;
  v1 = sub_24B75B108();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_24B75B298();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for WorkoutDetailArtwork(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  sub_24B6B9D34(v28, &v24 - v17, &qword_27F0340C8, &qword_24B75DFB0);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    return sub_24B75C6F8();
  }

  sub_24B6BBFC4(v18, v15);
  sub_24B75C6F8();
  sub_24B6B9D34(v15, v11, &qword_27F034120, &unk_24B75E1E0);
  v20 = v25;
  if ((*(v25 + 48))(v11, 1, v6) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v20 + 32))(v8, v11, v6);
    sub_24B75C6F8();
    sub_24B6BC028(&qword_27F034128, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B75C2C8();
    (*(v20 + 8))(v8, v6);
  }

  v22 = v26;
  v21 = v27;
  sub_24B6B9D34(&v15[*(v12 + 20)], v5, &qword_27F034118, &qword_24B75E1D8);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v23 = v24;
    (*(v22 + 32))(v24, v5, v21);
    sub_24B75C6F8();
    sub_24B6BC028(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B75C2C8();
    (*(v22 + 8))(v23, v21);
  }

  sub_24B75C358();
  return sub_24B6BC070(v15, type metadata accessor for WorkoutDetailArtwork);
}

uint64_t sub_24B6BB698()
{
  if (v0[4])
  {
    return sub_24B75C6F8();
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_24B75C6F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x24C2489D0](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x24C2489D0](v7);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x24C2489D0](v8);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x24C2489D0](v9);
}

uint64_t _s20FitnessProductDetail07WorkoutC7TrainerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034138, &unk_24B7634A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v15 = *(v14 + 56);
  sub_24B6B9D34(a1, &v34 - v12, &qword_27F0340C8, &qword_24B75DFB0);
  sub_24B6B9D34(a2, &v13[v15], &qword_27F0340C8, &qword_24B75DFB0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_24B6B9CD4(v13, &qword_27F0340C8, &qword_24B75DFB0);
      goto LABEL_10;
    }

LABEL_6:
    sub_24B6B9CD4(v13, &qword_27F034138, &unk_24B7634A0);
    goto LABEL_7;
  }

  sub_24B6B9D34(v13, v10, &qword_27F0340C8, &qword_24B75DFB0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_24B6BC070(v10, type metadata accessor for WorkoutDetailArtwork);
    goto LABEL_6;
  }

  sub_24B6BBFC4(&v13[v15], v7);
  v19 = static WorkoutDetailArtwork.== infix(_:_:)(v10, v7);
  sub_24B6BC070(v7, type metadata accessor for WorkoutDetailArtwork);
  sub_24B6BC070(v10, type metadata accessor for WorkoutDetailArtwork);
  sub_24B6B9CD4(v13, &qword_27F0340C8, &qword_24B75DFB0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v20 = type metadata accessor for WorkoutDetailTrainer(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_17;
    }

LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  v26 = v20[6];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_7;
  }

  v30 = v20[7];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if (v31 == *v33 && v32 == v33[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_24B75C6B8();
  }

  return v17 & 1;
}

void sub_24B6BBB14(uint64_t a1)
{
  sub_24B6BBBA8(319);
  if (v1 <= 0x3F)
  {
    sub_24B6A7490();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6BBBA8(uint64_t a1)
{
  if (!qword_2810F7790)
  {
    type metadata accessor for WorkoutDetailArtwork(255);
    v1 = sub_24B75C4E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2810F7790);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutDetailTrainer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutDetailTrainer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6BBD54()
{
  result = qword_27F034100;
  if (!qword_27F034100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034100);
  }

  return result;
}

unint64_t sub_24B6BBDAC()
{
  result = qword_27F034108;
  if (!qword_27F034108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034108);
  }

  return result;
}

unint64_t sub_24B6BBE04()
{
  result = qword_27F034110;
  if (!qword_27F034110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034110);
  }

  return result;
}

uint64_t sub_24B6BBE58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7301474 && a2 == 0xE300000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B6BBFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6BC028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B6BC070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B6BC0E0()
{
  if (*v0)
  {
    return 0x72616C75676572;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_24B6BC114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B6BC1F0(uint64_t a1)
{
  v2 = sub_24B6BC614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BC22C(uint64_t a1)
{
  v2 = sub_24B6BC614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BC268(uint64_t a1)
{
  v2 = sub_24B6BC6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BC2A4(uint64_t a1)
{
  v2 = sub_24B6BC6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BC2E0(uint64_t a1)
{
  v2 = sub_24B6BC668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BC31C(uint64_t a1)
{
  v2 = sub_24B6BC668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewSizeClass.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034140, &qword_24B75E1F0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034148, &qword_24B75E1F8);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034150, &qword_24B75E200);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BC614();
  sub_24B75C738();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B6BC668();
    sub_24B75C638();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B6BC6BC();
    sub_24B75C638();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B6BC614()
{
  result = qword_27F034158;
  if (!qword_27F034158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034158);
  }

  return result;
}

unint64_t sub_24B6BC668()
{
  result = qword_27F034160;
  if (!qword_27F034160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034160);
  }

  return result;
}

unint64_t sub_24B6BC6BC()
{
  result = qword_27F034168;
  if (!qword_27F034168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034168);
  }

  return result;
}

uint64_t sub_24B6BC72C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B6BC7E8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewSizeClass.hashValue.getter(char a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1 & 1);
  return sub_24B75C718();
}

uint64_t sub_24B6BC7E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341B0, &qword_24B75E580);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341B8, &qword_24B75E588);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341C0, &unk_24B75E590);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BC614();
  v11 = v26;
  sub_24B75C728();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B75C628();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B6B9E04();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B75C568();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v19 = &type metadata for WorkoutContextMenuPreviewSizeClass;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B6BC668();
    sub_24B75C598();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B6BC6BC();
    sub_24B75C598();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B6BCCA8()
{
  result = qword_27F034170;
  if (!qword_27F034170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034170);
  }

  return result;
}

unint64_t sub_24B6BCD40()
{
  result = qword_27F034178;
  if (!qword_27F034178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034178);
  }

  return result;
}

unint64_t sub_24B6BCD98()
{
  result = qword_27F034180;
  if (!qword_27F034180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034180);
  }

  return result;
}

unint64_t sub_24B6BCDF0()
{
  result = qword_27F034188;
  if (!qword_27F034188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034188);
  }

  return result;
}

unint64_t sub_24B6BCE48()
{
  result = qword_27F034190;
  if (!qword_27F034190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034190);
  }

  return result;
}

unint64_t sub_24B6BCEA0()
{
  result = qword_27F034198;
  if (!qword_27F034198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034198);
  }

  return result;
}

unint64_t sub_24B6BCEF8()
{
  result = qword_27F0341A0;
  if (!qword_27F0341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0341A0);
  }

  return result;
}

unint64_t sub_24B6BCF50()
{
  result = qword_27F0341A8;
  if (!qword_27F0341A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0341A8);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B6B8DE8(a1, a3, &qword_27F034120, &unk_24B75E1E0);
  v5 = type metadata accessor for WorkoutContextMenuPreviewArtwork(0);
  return sub_24B6B8DE8(a2, a3 + *(v5 + 20), &qword_27F034118, &qword_24B75E1D8);
}

uint64_t sub_24B6BD090()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_24B6BD0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B6BD1C8(uint64_t a1)
{
  v2 = sub_24B6BD4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BD204(uint64_t a1)
{
  v2 = sub_24B6BD4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341C8, &qword_24B75E5A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BD4A4();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75B298();
  sub_24B6A6E7C(&qword_27F0341D8, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_24B75C668();
  if (!v1)
  {
    type metadata accessor for WorkoutContextMenuPreviewArtwork(0);
    v8[14] = 1;
    sub_24B75B108();
    sub_24B6A6E7C(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B75C668();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B6BD4A4()
{
  result = qword_27F0341D0;
  if (!qword_27F0341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0341D0);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0341E8, &qword_24B75E5A8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for WorkoutContextMenuPreviewArtwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BD4A4();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  sub_24B75B298();
  v26 = 0;
  sub_24B6A6E7C(&qword_27F0341F0, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v16 = v23;
  v17 = v24;
  sub_24B75C5D8();
  sub_24B6B8DE8(v16, v14, &qword_27F034120, &unk_24B75E1E0);
  sub_24B75B108();
  v25 = 1;
  sub_24B6A6E7C(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B75C5D8();
  (*(v15 + 8))(v10, v17);
  sub_24B6B8DE8(v6, v14 + *(v20 + 20), &qword_27F034118, &qword_24B75E1D8);
  sub_24B6BD8A8(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6BD90C(v14);
}

uint64_t sub_24B6BD8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6BD90C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutContextMenuPreviewArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutContextMenuPreviewArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B75B108();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_24B75B298();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_24B6B9D34(v2, &v20 - v13, &qword_27F034120, &unk_24B75E1E0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_24B75C6F8();
    sub_24B6A6E7C(&qword_27F034128, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B75C2C8();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for WorkoutContextMenuPreviewArtwork(0);
  sub_24B6B9D34(v2 + *(v15 + 20), v7, &qword_27F034118, &qword_24B75E1D8);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_24B75C6F8();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_24B75C6F8();
  sub_24B6A6E7C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return (*(v17 + 8))(v19, v16);
}

uint64_t WorkoutContextMenuPreviewArtwork.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewArtwork.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B6BDD84()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewArtwork.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B6BDDC8(uint64_t a1)
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewArtwork.hash(into:)(v2);
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail32WorkoutContextMenuPreviewArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - v8;
  v9 = sub_24B75B298();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - v17;
  v20 = *(v19 + 56);
  v42 = a1;
  sub_24B6B9D34(a1, &v38 - v17, &qword_27F034120, &unk_24B75E1E0);
  v43 = a2;
  sub_24B6B9D34(a2, &v18[v20], &qword_27F034120, &unk_24B75E1E0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) != 1)
  {
    sub_24B6B9D34(v18, v15, &qword_27F034120, &unk_24B75E1E0);
    if (v21(&v18[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v18[v20], v9);
      sub_24B6A6E7C(&qword_27F034230, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v25 = sub_24B75C2D8();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_24B6B9CD4(v18, &qword_27F034120, &unk_24B75E1E0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_27F034220;
    v23 = &unk_24B75E810;
    v24 = v18;
LABEL_14:
    sub_24B6B9CD4(v24, v22, v23);
    return 0;
  }

  if (v21(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_24B6B9CD4(v18, &qword_27F034120, &unk_24B75E1E0);
LABEL_8:
  v27 = *(type metadata accessor for WorkoutContextMenuPreviewArtwork(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_24B6B9D34(v42 + v27, v41, &qword_27F034118, &qword_24B75E1D8);
  sub_24B6B9D34(v43 + v27, v28 + v29, &qword_27F034118, &qword_24B75E1D8);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_24B6B9CD4(v28, &qword_27F034118, &qword_24B75E1D8);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_24B6B9D34(v28, v39, &qword_27F034118, &qword_24B75E1D8);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_27F034218;
    v23 = &unk_24B761640;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_24B6A6E7C(&qword_27F034228, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = sub_24B75C2D8();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_24B6B9CD4(v28, &qword_27F034118, &qword_24B75E1D8);
  return (v36 & 1) != 0;
}

unint64_t sub_24B6BE474()
{
  result = qword_27F034200;
  if (!qword_27F034200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034200);
  }

  return result;
}

unint64_t sub_24B6BE4CC()
{
  result = qword_27F034208;
  if (!qword_27F034208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034208);
  }

  return result;
}

unint64_t sub_24B6BE524()
{
  result = qword_27F034210;
  if (!qword_27F034210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034210);
  }

  return result;
}

uint64_t sub_24B6BE5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B6BE68C(uint64_t a1)
{
  v2 = sub_24B6BED38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BE6C8(uint64_t a1)
{
  v2 = sub_24B6BED38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BE704(uint64_t a1)
{
  v2 = sub_24B6BED8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BE740(uint64_t a1)
{
  v2 = sub_24B6BED8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BE77C(uint64_t a1)
{
  v2 = sub_24B6BEDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BE7B8(uint64_t a1)
{
  v2 = sub_24B6BEDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DownloadStatus.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) & 1) != 0 || (*(a2 + 9))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 8) & 1 | (*a1 < *a2);
}

BOOL static DownloadStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    return (*(a2 + 9) & 1) != 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && *a1 == *a2;
  }
}

uint64_t sub_24B6BE8A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) & 1) != 0 || (*(a2 + 9))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 8) & 1 | (*a1 < *a2);
}

uint64_t sub_24B6BE8F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  return (*a2 >= *a1) & ~*(a2 + 8);
}

uint64_t sub_24B6BE940(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    return 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    return 1;
  }

  return (*a1 >= *a2) & ~*(a1 + 8);
}

uint64_t sub_24B6BE98C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9) & 1) != 0 || (*(a1 + 9))
  {
    return 1;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  return *(a2 + 8) & 1 | (*a2 < *a1);
}

uint64_t sub_24B6BE9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v4 = *(a2 + 9);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    if (*(a1 + 8))
    {
      if ((*(a2 + 8) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t DownloadStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034238, &qword_24B75E820);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v17 = v15 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034240, &qword_24B75E828);
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034248, &qword_24B75E830);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v15[1] = *v1;
  v21 = *(v1 + 8);
  v11 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BED38();
  sub_24B75C738();
  if (v11)
  {
    v23 = 1;
    sub_24B6BED8C();
    v12 = v17;
    sub_24B75C638();
    (*(v19 + 8))(v12, v20);
  }

  else
  {
    v22 = 0;
    sub_24B6BEDE0();
    sub_24B75C638();
    v14 = v18;
    sub_24B75C658();
    (*(v16 + 8))(v6, v14);
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_24B6BED38()
{
  result = qword_27F034250;
  if (!qword_27F034250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034250);
  }

  return result;
}

unint64_t sub_24B6BED8C()
{
  result = qword_27F034258;
  if (!qword_27F034258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034258);
  }

  return result;
}

unint64_t sub_24B6BEDE0()
{
  result = qword_27F034260;
  if (!qword_27F034260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034260);
  }

  return result;
}

uint64_t DownloadStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034268, &qword_24B75E838);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034270, &qword_24B75E840);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034278, &unk_24B75E848);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B6BED38();
  v15 = v37;
  sub_24B75C728();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v37 = v11;
  v16 = v36;
  v17 = sub_24B75C628();
  v18 = (2 * *(v17 + 16)) | 1;
  v39 = v17;
  v40 = v17 + 32;
  v41 = 0;
  v42 = v18;
  v19 = sub_24B6B9E04();
  v20 = v10;
  if (v19 == 2 || v41 != v42 >> 1)
  {
    v24 = sub_24B75C568();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v26 = &type metadata for DownloadStatus;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v37 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v21 = v19;
  if (v19)
  {
    v43 = 1;
    sub_24B6BED8C();
    sub_24B75C598();
    v22 = 0;
    (*(v34 + 8))(v6, v33);
    (*(v37 + 8))(v13, v20);
    swift_unknownObjectRelease();
    v23 = 0;
  }

  else
  {
    v43 = 0;
    sub_24B6BEDE0();
    sub_24B75C598();
    v28 = sub_24B75C5C8();
    v29 = v37;
    v22 = v28;
    v30 = v9;
    v32 = v31;
    (*(v35 + 8))(v30, v7);
    (*(v29 + 8))(v13, v20);
    swift_unknownObjectRelease();
    v23 = v32 & 1;
  }

  *v16 = v22;
  *(v16 + 8) = v23;
  *(v16 + 9) = v21 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t DownloadStatus.hash(into:)()
{
  if (*(v0 + 9))
  {
    return MEMORY[0x24C2489B0](1);
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  MEMORY[0x24C2489B0](0);
  if (v3)
  {
    return sub_24B75C6F8();
  }

  sub_24B75C6F8();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x24C2489D0](v4);
}

uint64_t DownloadStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_24B75C6D8();
  if (v3)
  {
    MEMORY[0x24C2489B0](1);
  }

  else
  {
    MEMORY[0x24C2489B0](0);
    if (v2)
    {
      sub_24B75C6F8();
    }

    else
    {
      sub_24B75C6F8();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v1;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x24C2489D0](v4);
    }
  }

  return sub_24B75C718();
}

uint64_t sub_24B6BF478(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_24B75C6D8();
  if (v4)
  {
    MEMORY[0x24C2489B0](1);
  }

  else
  {
    MEMORY[0x24C2489B0](0);
    if (v3)
    {
      sub_24B75C6F8();
    }

    else
    {
      sub_24B75C6F8();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x24C2489D0](v5);
    }
  }

  return sub_24B75C718();
}

unint64_t sub_24B6BF50C()
{
  result = qword_27F034280;
  if (!qword_27F034280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034280);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_24B6BF5C4(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6BF5E0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_24B6BF64C()
{
  result = qword_27F034288;
  if (!qword_27F034288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034288);
  }

  return result;
}

unint64_t sub_24B6BF6A4()
{
  result = qword_27F034290;
  if (!qword_27F034290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034290);
  }

  return result;
}

unint64_t sub_24B6BF6FC()
{
  result = qword_27F034298;
  if (!qword_27F034298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034298);
  }

  return result;
}