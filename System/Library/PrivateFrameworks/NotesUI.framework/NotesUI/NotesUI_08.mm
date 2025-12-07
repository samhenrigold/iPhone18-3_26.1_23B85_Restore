uint64_t sub_1D43679A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D441AAE4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D4367AA0, 0, 0);
}

uint64_t sub_1D4367AA0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D441AAF4();
  v5 = sub_1D4368218(&qword_1EC7CB470, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D441ADF4();
  sub_1D4368218(&qword_1EC7CB478, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D441AB04();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D4367C30;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D4367C30()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D4367DEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D4367DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D4367E58(uint64_t a1, Class a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(a2);

  return sub_1D4367EB0(a1, v7, a3, a4);
}

id sub_1D4367EB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeLayoutMode] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView] = 0;
  sub_1D41766C0(0, &qword_1EC7CA1B8, 0x1E69DD238);
  sub_1D441A1C4();
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v7 = &a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager];
  *v7 = a1;
  *(v7 + 1) = a4;
  v9.receiver = a2;
  v9.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D4367FB0()
{
  *(v0 + qword_1EC7CB298) = 0;
  sub_1D441ABC4();
  __break(1u);
}

void sub_1D4368048(void *a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70, &qword_1D4438E40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D4438D80;
  v5 = [a1 heightAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *(v4 + 32) = v6;
  v7 = [a1 widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v4 + 40) = v8;
  v9 = [a1 centerXAnchor];
  v10 = [a1 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v4 + 48) = v11;
  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA6D6410](v13, v4);
      }

      else
      {
        if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v14 = *(v4 + 8 * v13 + 32);
      }

      v16 = v14;
      ++v13;
      LODWORD(v15) = 1144750080;
      [v14 setPriority_];
    }

    while (v12 != v13);
  }
}

uint64_t sub_1D4368218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D4368274()
{
  result = qword_1EC7CB480;
  if (!qword_1EC7CB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB480);
  }

  return result;
}

void ICDeleteDecisionControlling.performDecision(completion:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D43239B0;
  v4[3] = &block_descriptor_13;
  v3 = _Block_copy(v4);

  [v2 performDecisionWithCompletion_];
  _Block_release(v3);
}

uint64_t ICDeleteDecisionControlling.performDecision()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1D4419F54();
  v2[5] = sub_1D4419F44();
  v4 = sub_1D4419F04();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D436841C, v4, v3);
}

uint64_t sub_1D436841C(uint64_t a1)
{
  v8 = *(v1 + 16);
  v2 = sub_1D4419F44();
  *(v1 + 64) = v2;
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *(v3 + 16) = v8;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_1D4368530;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v1 + 88, v2, v5, 0xD000000000000011, 0x80000001D4451380, sub_1D43688A4, v3, v6);
}

uint64_t sub_1D4368530()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D4368690, v3, v2);
}

uint64_t sub_1D4368690()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1D43686F4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB490, &qword_1D4439B20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1D43688AC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D43239B0;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  [a2 performDecisionWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_1D43688AC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB490, &qword_1D4439B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB490, &qword_1D4439B20);
  return sub_1D4419F24();
}

unint64_t sub_1D4368968()
{
  result = qword_1EC7CB498;
  if (!qword_1EC7CB498)
  {
    type metadata accessor for ThumbnailCacheLevels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB498);
  }

  return result;
}

uint64_t ICNumberLiteral.range.getter()
{
  v1 = v0 + OBJC_IVAR___ICNumberLiteral_range;
  swift_beginAccess();
  return *v1;
}

void ICNumberLiteral.range.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICNumberLiteral_range);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ICNumberLiteral.string.getter()
{
  v1 = (v0 + OBJC_IVAR___ICNumberLiteral_string);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ICNumberLiteral.string.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICNumberLiteral_string);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1D4368CF0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 string];
  v4 = sub_1D4419C54();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ICNumberLiteral.init(range:string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1D4419C14();

  v8 = [v6 initWithRange:a1 string:{a2, v7}];

  return v8;
}

{
  v5 = (v4 + OBJC_IVAR___ICNumberLiteral_range);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___ICNumberLiteral_string);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = ICNumberLiteral;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ICNumberLiteral.isEqual(_:)(uint64_t a1)
{
  sub_1D418CFF4(a1, v17);
  if (!v18)
  {
    sub_1D418D074(v17);
    goto LABEL_10;
  }

  type metadata accessor for ICNumberLiteral();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  v2 = [v1 range];
  v4 = v3;
  if (v2 != [v16 range] || v4 != v5)
  {

    goto LABEL_10;
  }

  v6 = [v1 string];
  v7 = sub_1D4419C54();
  v9 = v8;

  v10 = [v16 string];
  v11 = sub_1D4419C54();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D441AD84();
  }

  return v14 & 1;
}

unint64_t type metadata accessor for ICNumberLiteral()
{
  result = qword_1EC7CB4B0[0];
  if (!qword_1EC7CB4B0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EC7CB4B0);
  }

  return result;
}

id ICNumberLiteral.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1D436918C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D430BF3C();
    if (v2 <= 0x3F)
    {
      sub_1D4369554(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D4369234(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1D436937C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = a2 - 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1D4369554(uint64_t a1)
{
  if (!qword_1EC7CB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB540, qword_1D4439B80);
    v1 = sub_1D441A784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7CB538);
    }
  }
}

uint64_t sub_1D4369660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v38 = *(a1 - 8);
  v39 = *(v38 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D4418614();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - v12;
  v13 = sub_1D4418614();
  v41 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v33 - v16;
  (*(v8 + 16))(v10, v2, v7);
  if (*(v2 + *(a1 + 40)))
  {
    v17 = -1.0;
  }

  else
  {
    v17 = 1.0;
  }

  sub_1D44193A4();
  v18 = *(a1 + 24);
  MEMORY[0x1DA6D4A20](v7, v18, 1.0, v17, v19, v20);
  (*(v8 + 8))(v10, v7);
  v21 = v38;
  v22 = v36;
  (*(v38 + 16))(v36, v3, a1);
  v23 = v21;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v7;
  *(v25 + 24) = v18;
  (*(v23 + 32))(v25 + v24, v22, a1);
  v45 = v18;
  v46 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  v27 = v34;
  v28 = v35;
  sub_1D44190F4();

  (*(v40 + 8))(v27, v11);
  v29 = sub_1D4369BB4();
  v43 = WitnessTable;
  v44 = v29;
  swift_getWitnessTable();
  v30 = v37;
  sub_1D43EE934();
  v31 = *(v41 + 8);
  v31(v28, v13);
  sub_1D43EE934();
  return (v31)(v30, v13);
}

uint64_t sub_1D4369AB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HoverView(0, a3, a4, a4);
  result = sub_1D43695FC(a1, v6);
  v8 = (a2 + *(v6 + 44));
  if (*v8)
  {
    return (*v8)(a1 & 1);
  }

  return result;
}

uint64_t sub_1D4369B28(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for HoverView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1D4369AB8(a1, v9, v6, v7);
}

unint64_t sub_1D4369BB4()
{
  result = qword_1EC7CB548;
  if (!qword_1EC7CB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB548);
  }

  return result;
}

uint64_t AvatarThumbnailView.init(thumbnailService:participants:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AvatarThumbnailView.body.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_1D4369E24;
  a1[1] = v5;
  v6 = v4;
}

void sub_1D4369C90(void *a2@<X1>, void *a4@<X8>)
{
  sub_1D4418574();
  v7 = v6;
  v9 = v8;
  v10 = objc_allocWithZone(ICThumbnailConfiguration);
  sub_1D436A11C();
  v11 = sub_1D4419E24();
  v12 = [v10 initForAvatarWithParticipants:v11 preferredSize:0 hasBorder:{v7, v9}];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB560, &qword_1D4439CA0);
  sub_1D4419284();
  v13 = a2;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB568, &qword_1D4439CA8);
  sub_1D4419294();

  sub_1D44192A4();

  *a4 = v13;
  a4[1] = v14;
  a4[2] = sub_1D4369E48;
  a4[3] = 0;
  a4[4] = sub_1D4369F64;
  a4[5] = 0;
  a4[6] = v15;
  a4[7] = v16;
}

uint64_t sub_1D4369E48@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1D4419234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v7 = sub_1D4419274();
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  *(a2 + 8) = 256;
  return result;
}

uint64_t sub_1D4369F64@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() quaternaryLabelColor];
  result = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
  *a1 = result;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_1D4369FB4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_1D436A168;
  a1[1] = v5;
  v6 = v4;
}

uint64_t sub_1D436A024(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D436A06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D436A0B8()
{
  result = qword_1EC7CB550;
  if (!qword_1EC7CB550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB558, &qword_1D4439C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB550);
  }

  return result;
}

unint64_t sub_1D436A11C()
{
  result = qword_1EC7CAF48;
  if (!qword_1EC7CAF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CAF48);
  }

  return result;
}

uint64_t LockedNotesViewController.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, &v1[v3], AssociatedTypeWitness);
}

id LockedNotesViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D436AF4C(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v4;
}

id LockedNotesViewController.init(configuration:)(uint64_t a1)
{
  v2 = sub_1D436AF4C(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v2;
}

void sub_1D436A388(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = 0;
  *(v1 + *((*v2 & *v1) + 0x70)) = 0;
  *(v1 + *((*v2 & *v1) + 0x78)) = 0;
  sub_1D441ABC4();
  __break(1u);
}

void sub_1D436A49C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v35 = v3;
  v36 = &v33 - v8;
  locked = type metadata accessor for LockedNotesViewController(0, v4, v3, v9);
  v40.receiver = v0;
  v40.super_class = locked;
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v34 = [v0 navigationItem];
  v11 = *((*v2 & *v0) + 0x60);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 8);
  v13(v39, AssociatedTypeWitness, AssociatedConformanceWitness);

  v14 = sub_1D4419C14();

  v13(v39, AssociatedTypeWitness, AssociatedConformanceWitness);

  v15 = sub_1D4419C14();

  v16 = v34;
  [v34 ic:v14 setTitle:v15 andSubtitle:?];

  v17 = MEMORY[0x1E69E7D40];
  v18 = [v1 navigationItem];
  [v18 setLargeTitleDisplayMode_];

  v19 = v37;
  (*(v38 + 16))(v37, v1 + v11, AssociatedTypeWitness);
  (*(v35 + 32))(v19, v4);
  sub_1D44192E4();
  v20 = sub_1D4418C74();
  v39[3] = swift_getObjectType();
  v39[0] = v20;
  v21 = sub_1D42CE6D8(v39);
  __swift_destroy_boxed_opaque_existential_0(v39);
  v22 = *((*v17 & *v1) + 0x68);
  v23 = *(v1 + v22);
  *(v1 + v22) = v21;

  if (!*(v1 + *((*v17 & *v1) + 0x68)))
  {
    __break(1u);
    goto LABEL_10;
  }

  [v1 addChildViewController_];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  v26 = *(v1 + *((*v17 & *v1) + 0x68));
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = [v26 view];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = v27;
  [v25 addSubview_];

  v29 = *(v1 + *((*v17 & *v1) + 0x68));
  if (!v29)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v29 didMoveToParentViewController_];
  v30 = *(v1 + *((*v17 & *v1) + 0x68));
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = [v30 view];
  if (v31)
  {
    v32 = v31;
    [v31 ic_addConstraintsToFillSuperview];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1D436A96C(void *a1)
{
  v1 = a1;
  sub_1D436A49C();
}

uint64_t sub_1D436A9B4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1D441A804();

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

id static LockedNotesViewController.present(with:in:)(uint64_t a1, void *a2)
{
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v19 - v8;
  (*(v10 + 16))(&v19 - v8, a1);
  v11 = (*(v2 + 128))(v9);
  type metadata accessor for LockedNotesNavigationController(0, v6, v5, v12);
  v13 = v11;
  v14 = sub_1D4333598(v13);

  v15 = [a2 rootViewController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 ic_topViewController];

    [v17 presentViewController:v14 animated:1 completion:0];
  }

  return v13;
}

void static LockedNotesViewController.dismiss(in:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v5 = [a1 rootViewController];
  if (v5)
  {
    v6 = v5;
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1D417BEE4;
    v8[3] = &block_descriptor_14;
    v7 = _Block_copy(v8);

    [v6 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }

  else
  {
    a2();
  }
}

id LockedNotesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D4419C14();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D436AD38(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1D436B0B0();
}

id LockedNotesViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  locked = type metadata accessor for LockedNotesViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = locked;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1D436AE18(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v3], AssociatedTypeWitness);

  v5 = *&a1[*((*v2 & *a1) + 0x78)];
}

id sub_1D436AF4C(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)] = 0;
  *&v1[*((*v4 & *v1) + 0x70)] = 0;
  *&v1[*((*v4 & *v1) + 0x78)] = 0;
  v6 = *((*v4 & *v1) + 0x60);
  v7 = *((v5 & v3) + 0x58);
  v8 = *((v5 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v1[v6], a1, AssociatedTypeWitness);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LockedNotesViewController(0, v8, v7, v10);
  return objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
}

void *sub_1D436B17C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v25 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {

    sub_1D441A874();
    _s5IndexCMa(0);
    sub_1D4188890(&qword_1EDE325C0, _s5IndexCMa, &unk_1D4436E38);
    result = sub_1D441A0A4();
    v2 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v18 = v2;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1D441A8F4())
      {
        goto LABEL_22;
      }

      _s5IndexCMa(0);
      swift_dynamicCast();
      v15 = v19;
      v6 = v11;
      v7 = v12;
      if (!v19)
      {
LABEL_23:
        v2 = v18;
LABEL_22:
        sub_1D43300C8(v2);

        return v17;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_18:
    v19 = v15;
    v16 = sub_1D4419904();

    v11 = v6;
    v12 = v7;
    v2 = v18;
    if (v16)
    {
      MEMORY[0x1DA6D5820](result);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D4419E94();
      }

      result = sub_1D4419EB4();
      v17 = v25;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D436B42C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    _s5IndexCMa(0);
    sub_1D4188890(&qword_1EDE325C0, _s5IndexCMa, &unk_1D4436E38);
    result = sub_1D441A0A4();
    v2 = v34;
    v4 = v35;
    v5 = v36;
    v6 = v37;
    v7 = v38;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);

    v7 = v11;
    v6 = 0;
  }

  v31 = MEMORY[0x1E69E7CC0];
  v32 = v2;
LABEL_8:
  v12 = v6;
  v13 = v7;
  while (v2 < 0)
  {
    if (!sub_1D441A8F4() || (_s5IndexCMa(0), swift_dynamicCast(), v19 = v39, v6 = v12, v33 = v13, !v39))
    {
LABEL_32:
      sub_1D43300C8(v32);
      return v31;
    }

LABEL_20:
    v20 = (v19 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange);
    if ((*(v19 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16) & 1) == 0)
    {
      v14 = *v20;
      v15 = v20[1];

      v2 = v32;
LABEL_27:
      v27 = v31;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D438CD7C(0, *(v31 + 16) + 1, 1, v31);
        v27 = result;
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      v7 = v33;
      if (v29 >= v28 >> 1)
      {
        result = sub_1D438CD7C((v28 > 1), v29 + 1, 1, v27);
        v7 = v33;
        v27 = result;
      }

      *(v27 + 16) = v29 + 1;
      v31 = v27;
      v30 = v27 + 16 * v29;
      *(v30 + 32) = v14;
      *(v30 + 40) = v15;
      goto LABEL_8;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = [Strong mergeableString];

      v24 = sub_1D441A3E4();
      v25 = v24;
      v26 = *(v24 + 16);
      v16 = v26 == 0;
      if (v26)
      {
        v14 = *(v24 + 32);
        v15 = *(v25 + 40);
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 1;
    }

    *v20 = v14;
    v20[1] = v15;
    *(v20 + 16) = v16;

    v12 = v6;
    v2 = v32;
    v13 = v33;
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  v17 = v12;
  v18 = v13;
  v6 = v12;
  if (v13)
  {
LABEL_16:
    v33 = (v18 - 1) & v18;
    v19 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v19)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v6 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v18 = *(v4 + 8 * v6);
    ++v17;
    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D436B778()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE32CE8);
  __swift_project_value_buffer(v0, qword_1EDE32CE8);
  return sub_1D4418164();
}

id ICCalculateGraphingController.init(note:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNote_];

  return v2;
}

{
  v2 = sub_1D418824C(a1);

  return v2;
}

void sub_1D436B8A8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_allocWithZone(_s25InsertionPromptControllerCMa());
    v6 = v4;
    v7 = sub_1D4378240(v6);
    v8 = *&v6[OBJC_IVAR___ICCalculateGraphingController_insertionPromptController];
    *&v6[OBJC_IVAR___ICCalculateGraphingController_insertionPromptController] = v7;

    if (qword_1EDE32CE0 != -1)
    {
      swift_once();
    }

    v9 = sub_1D44181B4();
    __swift_project_value_buffer(v9, qword_1EDE32CE8);
    v10 = a2;
    v11 = sub_1D44181A4();
    v12 = sub_1D441A154();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      v15 = [v10 shortLoggingDescription];
      v16 = sub_1D4419C54();
      v18 = v17;

      v19 = sub_1D42E9410(v16, v18, &v20);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1D4171000, v11, v12, "Started graph insertion prompt controller {note: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1DA6D8690](v14, -1, -1);
      MEMORY[0x1DA6D8690](v13, -1, -1);
    }
  }
}

void sub_1D436BA84(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v88 = a2;
  v89 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v76 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v76 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - v22;
  v24 = [v4 textView];
  if (v24)
  {
    v25 = v24;
    v85 = v12;
    v86 = v15;
    v26 = [v4 note];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 textStorage];

      if (v28)
      {
        v80 = v18;
        v84 = a4;
        v79 = v25;
        [v25 ic:v89 rectForRange:v88];
        x = v103.origin.x;
        y = v103.origin.y;
        width = v103.size.width;
        height = v103.size.height;
        MinX = CGRectGetMinX(v103);
        v104.origin.x = x;
        v104.origin.y = y;
        v104.size.width = width;
        v104.size.height = height;
        MidY = CGRectGetMidY(v104);
        v35 = *(v90 + 56);
        v83 = v90 + 56;
        v82 = v35;
        v35(v23, 1, 1, v6);
        v36 = *MEMORY[0x1E69DB5F8];
        v37 = swift_allocObject();
        *(v37 + 16) = v4;
        *(v37 + 24) = MinX;
        *(v37 + 32) = MidY;
        *(v37 + 40) = v87;
        *(v37 + 48) = v23;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_1D4376628;
        *(v38 + 24) = v37;
        v78 = v37;
        v100 = sub_1D417CF74;
        v101 = v38;
        aBlock = MEMORY[0x1E69E9820];
        v97 = 1107296256;
        v98 = sub_1D417C9A0;
        v99 = &block_descriptor_40_0;
        v39 = _Block_copy(&aBlock);
        v40 = v23;
        v41 = v28;
        v42 = v4;

        v43 = v41;
        v81 = v36;
        [v41 enumerateAttribute:v36 inRange:v89 options:v88 usingBlock:{0, v39}];
        _Block_release(v39);
        LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

        if (v41)
        {
          __break(1u);
        }

        else
        {
          sub_1D417CF94(v40, v21, &qword_1EC7CB598, &qword_1D4439D10);
          v44 = *(v90 + 48);
          v90 += 48;
          v45 = v44(v21, 1, v6);
          v46 = v84;
          v47 = v40;
          if (v45 != 1)
          {

            sub_1D42D742C(v21, v8, &qword_1EC7CB590, &qword_1D4439D08);
            sub_1D42D742C(v8, v46, &qword_1EC7CB590, &qword_1D4439D08);
            v82(v46, 0, 1, v6);
            sub_1D41769C4(v40, &qword_1EC7CB598, &qword_1D4439D10);
LABEL_22:

            return;
          }

          v76 = v44;
          sub_1D41769C4(v21, &qword_1EC7CB598, &qword_1D4439D10);
          v48 = v80;
          v49 = v82;
          v82(v80, 1, 1, v6);
          v93 = 0;
          v94 = 0;
          v50 = v88 + v89;
          v95 = 1;
          v51 = swift_allocObject();
          *(v51 + 16) = v42;
          *(v51 + 24) = MinX;
          *(v51 + 32) = MidY;
          *(v51 + 40) = v87;
          *(v51 + 48) = v48;
          *(v51 + 56) = &v93;
          v52 = swift_allocObject();
          *(v52 + 16) = sub_1D437663C;
          *(v52 + 24) = v51;
          v88 = v51;
          v100 = sub_1D4376688;
          v101 = v52;
          aBlock = MEMORY[0x1E69E9820];
          v97 = 1107296256;
          v98 = sub_1D417C9A0;
          v99 = &block_descriptor_50;
          v53 = _Block_copy(&aBlock);
          v54 = v42;

          [v43 enumerateAttribute:v81 inRange:0 options:v50 usingBlock:{0, v53}];
          _Block_release(v53);
          LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

          if ((v53 & 1) == 0)
          {
            v77 = v47;
            v55 = v86;
            v49(v86, 1, 1, v6);
            v91[0] = 0;
            v91[1] = 0;
            v92 = 1;
            v56 = [v43 length];

            if (!__OFSUB__(v56, v50))
            {
              v57 = v43;
              v58 = swift_allocObject();
              *(v58 + 16) = v54;
              *(v58 + 24) = MinX;
              *(v58 + 32) = MidY;
              *(v58 + 40) = v87;
              *(v58 + 48) = v55;
              *(v58 + 56) = v91;
              v59 = swift_allocObject();
              *(v59 + 16) = sub_1D437668C;
              *(v59 + 24) = v58;
              v100 = sub_1D4376688;
              v101 = v59;
              aBlock = MEMORY[0x1E69E9820];
              v97 = 1107296256;
              v98 = sub_1D417C9A0;
              v99 = &block_descriptor_60;
              v60 = _Block_copy(&aBlock);
              v61 = v54;

              [v43 enumerateAttribute:v81 inRange:v50 options:&v56[-v50] usingBlock:{2, v60}];
              _Block_release(v60);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if ((isEscapingClosureAtFileLocation & 1) == 0)
              {
                v63 = v84;
                v64 = v77;
                v65 = v79;
                if (v95 & 1) != 0 || (v92)
                {

                  v66 = v80;
                  v67 = v85;
                  sub_1D417CF94(v80, v85, &qword_1EC7CB598, &qword_1D4439D10);
                  v68 = v76;
                  if (v76(v67, 1, v6) == 1)
                  {
                    sub_1D417CF94(v86, v63, &qword_1EC7CB598, &qword_1D4439D10);
                    if (v68(v67, 1, v6) != 1)
                    {
                      sub_1D41769C4(v67, &qword_1EC7CB598, &qword_1D4439D10);
                    }
                  }

                  else
                  {
                    sub_1D42D742C(v67, v63, &qword_1EC7CB590, &qword_1D4439D08);
                    v82(v63, 0, 1, v6);
                  }

                  sub_1D41769C4(v86, &qword_1EC7CB598, &qword_1D4439D10);
                  sub_1D41769C4(v66, &qword_1EC7CB598, &qword_1D4439D10);
                  sub_1D41769C4(v64, &qword_1EC7CB598, &qword_1D4439D10);

                  goto LABEL_22;
                }

                v70 = v89 - (v94 + v93);
                v71 = v80;
                if (!__OFSUB__(v89, v94 + v93))
                {
                  v72 = v91[0];

                  v73 = v72 - v50;
                  if (!__OFSUB__(v72, v50))
                  {
                    v74 = v86;
                    if (v70 >= v73)
                    {
                      v75 = v86;
                    }

                    else
                    {
                      v75 = v71;
                    }

                    sub_1D417CF94(v75, v63, &qword_1EC7CB598, &qword_1D4439D10);
                    sub_1D41769C4(v74, &qword_1EC7CB598, &qword_1D4439D10);
                    sub_1D41769C4(v71, &qword_1EC7CB598, &qword_1D4439D10);
                    sub_1D41769C4(v64, &qword_1EC7CB598, &qword_1D4439D10);

                    goto LABEL_22;
                  }

                  goto LABEL_34;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
                return;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }
  }

  v69 = *(v90 + 56);

  v69(a4, 1, 1, v6);
}

uint64_t sub_1D436C584(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, int a6, uint64_t a7, double a8, double a9)
{
  v58 = a7;
  v59 = a4;
  v60 = a6;
  v68 = a5;
  v63 = a3;
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98, &qword_1D4437418);
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5C8, &unk_1D4439D30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5A8, &qword_1D4439D18);
  v61 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = sub_1D4419604();
  v64 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = (&v51 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v67 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  sub_1D417CF94(a1, v70, &qword_1EC7C9720, &qword_1D4436990);
  if (v71)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5D0, &qword_1D4439D40);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v28 = v69;
    v29 = [v68 textView];
    if (v29)
    {
      v57 = v29;
      v30 = [v29 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
      if (v30)
      {
        v56 = v30;
        v31 = [v30 view];
        if (v31)
        {
          v53 = v26;
          v32 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5D8, &qword_1D4439D48);
          v55 = v32;
          v33 = swift_dynamicCastClass();
          if (v33)
          {
            v54 = v33;
            v52 = v28;
            [v57 ic:v66 rectForRange:v63];
            v34 = [v68 note];
            if (v34 && (v35 = v34, v36 = [v34 calculateDocumentController], v35, v36))
            {
              v68 = ICCalculateDocumentController.paperKitDocument(for:)(v66, v63);
              v66 = v37;
            }

            else
            {
              v68 = 0;
              v66 = 0;
            }

            v42 = MEMORY[0x1E69782D0];
            if ((v60 & 1) == 0)
            {
              v42 = MEMORY[0x1E69782C8];
            }

            (*(v64 + 104))(v20, *v42, v18);
            sub_1D44196F4();
            sub_1D4419A74();

            swift_unknownObjectRelease();
            (*(v62 + 8))(v11, v65);
            (*(v64 + 8))(v20, v18);
            v43 = v61;
            if ((*(v61 + 48))(v14, 1, v15) == 1)
            {

              sub_1D41769C4(v14, &qword_1EC7CB5C8, &unk_1D4439D30);
              v44 = 1;
            }

            else
            {
              v45 = *(v43 + 32);
              v45(v17, v14, v15);
              v46 = *(v24 + 48);
              *v23 = v54;
              v45(v23 + v46, v17, v15);
              v44 = 0;
            }

            v47 = v67;
            v48 = *(v67 + 56);
            v48(v23, v44, 1, v24);
            if ((*(v47 + 48))(v23, 1, v24) != 1)
            {
              v49 = v53;
              sub_1D42D742C(v23, v53, &qword_1EC7CB590, &qword_1D4439D08);
              v50 = v58;
              sub_1D41769C4(v58, &qword_1EC7CB598, &qword_1D4439D10);
              sub_1D417CF94(v49, v50, &qword_1EC7CB590, &qword_1D4439D08);
              v48(v50, 0, 1, v24);
              *v59 = 1;

              v40 = v49;
              v38 = &qword_1EC7CB590;
              v39 = &qword_1D4439D08;
              return sub_1D41769C4(v40, v38, v39);
            }

            goto LABEL_21;
          }

          v41 = v57;
          v57 = v28;
          v28 = v55;
        }

        else
        {
          v41 = v56;
        }
      }
    }

    (*(v67 + 56))(v23, 1, 1, v24);
LABEL_21:
    v38 = &qword_1EC7CB598;
    v39 = &qword_1D4439D10;
    v40 = v23;
    return sub_1D41769C4(v40, v38, v39);
  }

  v38 = &qword_1EC7C9720;
  v39 = &qword_1D4436990;
  v40 = v70;
  return sub_1D41769C4(v40, v38, v39);
}

uint64_t sub_1D436CCEC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, int a6, uint64_t a7, void *a8, double a9, double a10)
{
  v64 = a4;
  v65 = a8;
  v63 = a7;
  v66 = a6;
  v74 = a5;
  v69 = a3;
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98, &qword_1D4437418);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5C8, &unk_1D4439D30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5A8, &qword_1D4439D18);
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = sub_1D4419604();
  v70 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = (&v55 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v73 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  sub_1D417CF94(a1, v76, &qword_1EC7C9720, &qword_1D4436990);
  if (v77)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5D0, &qword_1D4439D40);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v29 = v75;
    v30 = [v74 textView];
    if (v30)
    {
      v62 = v30;
      v31 = [v30 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
      if (v31)
      {
        v61 = v31;
        v32 = [v31 view];
        if (v32)
        {
          v58 = v27;
          v33 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5D8, &qword_1D4439D48);
          v60 = v33;
          v34 = swift_dynamicCastClass();
          if (v34)
          {
            v59 = v34;
            v57 = v29;
            [v62 ic:v72 rectForRange:v69];
            v35 = [v74 note];
            if (v35 && (v36 = v35, v37 = [v35 calculateDocumentController], v36, v37))
            {
              v74 = ICCalculateDocumentController.paperKitDocument(for:)(v72, v69);
              v56 = v38;
            }

            else
            {
              v74 = 0;
              v56 = 0;
            }

            v43 = MEMORY[0x1E69782D0];
            if ((v66 & 1) == 0)
            {
              v43 = MEMORY[0x1E69782C8];
            }

            (*(v70 + 104))(v21, *v43, v19);
            sub_1D44196F4();
            sub_1D4419A74();

            swift_unknownObjectRelease();
            (*(v68 + 8))(v12, v71);
            (*(v70 + 8))(v21, v19);
            v44 = v67;
            if ((*(v67 + 48))(v15, 1, v16) == 1)
            {

              sub_1D41769C4(v15, &qword_1EC7CB5C8, &unk_1D4439D30);
              v45 = 1;
            }

            else
            {
              v46 = *(v44 + 32);
              v46(v18, v15, v16);
              v47 = *(v25 + 48);
              *v24 = v59;
              v46(v24 + v47, v18, v16);
              v45 = 0;
            }

            v48 = v73;
            v49 = *(v73 + 56);
            v49(v24, v45, 1, v25);
            if ((*(v48 + 48))(v24, 1, v25) != 1)
            {
              v50 = v58;
              sub_1D42D742C(v24, v58, &qword_1EC7CB590, &qword_1D4439D08);
              v51 = v63;
              sub_1D41769C4(v63, &qword_1EC7CB598, &qword_1D4439D10);
              sub_1D417CF94(v50, v51, &qword_1EC7CB590, &qword_1D4439D08);
              v49(v51, 0, 1, v25);
              v52 = v64;
              v53 = v65;
              v54 = v69;
              *v65 = v72;
              v53[1] = v54;
              *(v53 + 16) = 0;
              *v52 = 1;

              v41 = v50;
              v39 = &qword_1EC7CB590;
              v40 = &qword_1D4439D08;
              return sub_1D41769C4(v41, v39, v40);
            }

            goto LABEL_21;
          }

          v42 = v62;
          v62 = v29;
          v29 = v60;
        }

        else
        {
          v42 = v61;
        }
      }
    }

    (*(v73 + 56))(v24, 1, 1, v25);
LABEL_21:
    v39 = &qword_1EC7CB598;
    v40 = &qword_1D4439D10;
    v41 = v24;
    return sub_1D41769C4(v41, v39, v40);
  }

  v39 = &qword_1EC7C9720;
  v40 = &qword_1D4436990;
  v41 = v76;
  return sub_1D41769C4(v41, v39, v40);
}

void __swiftcall ICCalculateGraphingController.insertionDecision(forExpressionsIn:)(ICCalculateGraphingControllerInsertionDecision *__return_ptr retstr, __C::_NSRange forExpressionsIn)
{
  length = forExpressionsIn.length;
  location = forExpressionsIn.location;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v223 = *(v3 - 8);
  v224 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v222 = &v201 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v201 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v201 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v201 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v201 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v201 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v201 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v218 = &v201 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v212 = (&v201 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v213 = &v201 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v205 = &v201 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v206 = &v201 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v207 = &v201 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v208 = &v201 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v210 = &v201 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v211 = &v201 - v43;
  v217 = sub_1D4419604();
  v204 = *(v217 - 8);
  v44 = MEMORY[0x1EEE9AC00](v217);
  v216 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v215 = &v201 - v46;
  v47 = sub_1D4416E44();
  v214 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v201 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v2;
  v50 = [v2 note];
  if (!v50)
  {
    goto LABEL_11;
  }

  v51 = v50;
  v219 = [v50 calculateDocumentController];
  if (!v219)
  {
LABEL_10:

LABEL_11:
    v60 = v223;
    v59 = v224;
    (*(v223 + 56))(v11, 1, 1, v224);
    v61 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);
    type metadata accessor for Errors(0);
    v226 = 0;
    sub_1D42EA814(MEMORY[0x1E69E7CC0]);
    sub_1D4188890(&qword_1EC7C9480, type metadata accessor for Errors, &unk_1D4435438);
    sub_1D44170E4();
    v62 = v225[0];
    v63 = sub_1D44170F4();

    v64 = sub_1D4419E24();
    v65 = [v61 initWithError:v63 allowsInsertingNewGraph:0 allowsAddingToGraph:0 is3DGraphable:0 graphableVariables:v64];

    sub_1D44198E4();
    v66 = v65;
    v67 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v66, &unk_1EC7CB730, v67, 1);
    swift_endAccess();

    sub_1D417CF94(v11, v8, &qword_1EC7CB598, &qword_1D4439D10);
    v68 = 0;
    if ((*(v60 + 48))(v8, 1, v59) != 1)
    {
      sub_1D417CF94(v8, v222, &qword_1EC7CB590, &qword_1D4439D08);
      v68 = sub_1D441ADC4();
      sub_1D41769C4(v8, &qword_1EC7CB590, &qword_1D4439D08);
    }

    swift_beginAccess();
    objc_setAssociatedObject(v66, &unk_1EC7CB731, v68, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_beginAccess();
    v69 = v66;
    objc_setAssociatedObject(v69, &unk_1EC7CB732, 0, 1);
    swift_endAccess();

    v52 = v69;
    v70 = sub_1D4419EF4();
    swift_beginAccess();
    objc_setAssociatedObject(v52, &unk_1EC7CB733, v70, 1);
    swift_endAccess();

    v71 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v52, &unk_1EC7CB734, v71, 1);
    swift_endAccess();
    v72 = v11;
    goto LABEL_14;
  }

  v203 = [v51 textStorage];
  if (!v203)
  {

    v51 = v219;
    goto LABEL_10;
  }

  if (([v51 isCalculateMathEnabled] & 1) == 0)
  {
    v73 = v51;
    v74 = v223;
    v75 = v224;
    (*(v223 + 56))(v17, 1, 1, v224);
    v76 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);
    type metadata accessor for Errors(0);
    v226 = 1;
    sub_1D42EA814(MEMORY[0x1E69E7CC0]);
    sub_1D4188890(&qword_1EC7C9480, type metadata accessor for Errors, &unk_1D4435438);
    sub_1D44170E4();
    v77 = v225[0];
    v78 = sub_1D44170F4();

    v79 = sub_1D4419E24();
    v80 = [v76 initWithError:v78 allowsInsertingNewGraph:0 allowsAddingToGraph:0 is3DGraphable:0 graphableVariables:v79];

    sub_1D44198E4();
    v81 = v80;
    v82 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v81, &unk_1EC7CB730, v82, 1);
    swift_endAccess();

    sub_1D417CF94(v17, v14, &qword_1EC7CB598, &qword_1D4439D10);
    v83 = (*(v74 + 48))(v14, 1, v75);
    v84 = 0;
    v52 = v219;
    if (v83 != 1)
    {
      sub_1D417CF94(v14, v222, &qword_1EC7CB590, &qword_1D4439D08);
      v84 = sub_1D441ADC4();
      sub_1D41769C4(v14, &qword_1EC7CB590, &qword_1D4439D08);
    }

    swift_beginAccess();
    objc_setAssociatedObject(v81, &unk_1EC7CB731, v84, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_beginAccess();
    v85 = v81;
    objc_setAssociatedObject(v85, &unk_1EC7CB732, 0, 1);
    swift_endAccess();

    v86 = v85;
    v87 = sub_1D4419EF4();
    swift_beginAccess();
    objc_setAssociatedObject(v86, &unk_1EC7CB733, v87, 1);
    swift_endAccess();

    v88 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v86, &unk_1EC7CB734, v88, 1);
    swift_endAccess();

    v72 = v17;
    v71 = v73;
    goto LABEL_14;
  }

  if (![v51 isEditable])
  {
    v89 = v51;
    v91 = v223;
    v90 = v224;
    (*(v223 + 56))(v23, 1, 1, v224);
    v92 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);
    type metadata accessor for Errors(0);
    v226 = 2;
    sub_1D42EA814(MEMORY[0x1E69E7CC0]);
    sub_1D4188890(&qword_1EC7C9480, type metadata accessor for Errors, &unk_1D4435438);
    sub_1D44170E4();
    v93 = v225[0];
    v94 = sub_1D44170F4();

    v95 = sub_1D4419E24();
    v96 = [v92 initWithError:v94 allowsInsertingNewGraph:0 allowsAddingToGraph:0 is3DGraphable:0 graphableVariables:v95];

    sub_1D44198E4();
    v97 = v96;
    v98 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v97, &unk_1EC7CB730, v98, 1);
    swift_endAccess();

    sub_1D417CF94(v23, v20, &qword_1EC7CB598, &qword_1D4439D10);
    v99 = 0;
    if ((*(v91 + 48))(v20, 1, v90) != 1)
    {
      sub_1D417CF94(v20, v222, &qword_1EC7CB590, &qword_1D4439D08);
      v99 = sub_1D441ADC4();
      sub_1D41769C4(v20, &qword_1EC7CB590, &qword_1D4439D08);
    }

    swift_beginAccess();
    objc_setAssociatedObject(v97, &unk_1EC7CB731, v99, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_beginAccess();
    v100 = v97;
    objc_setAssociatedObject(v100, &unk_1EC7CB732, 0, 1);
    swift_endAccess();

    v101 = v100;
    v102 = sub_1D4419EF4();
    swift_beginAccess();
    objc_setAssociatedObject(v101, &unk_1EC7CB733, v102, 1);
    swift_endAccess();

    v103 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v101, &unk_1EC7CB734, v103, 1);
    swift_endAccess();

    v72 = v23;
    v52 = v219;
    v71 = v89;
    goto LABEL_14;
  }

  v202 = v51;
  if (![v51 canAddAttachment])
  {
    v105 = v223;
    v104 = v224;
    v72 = v218;
    (*(v223 + 56))(v218, 1, 1, v224);
    v106 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);
    type metadata accessor for Errors(0);
    v226 = 3;
    sub_1D42EA814(MEMORY[0x1E69E7CC0]);
    sub_1D4188890(&qword_1EC7C9480, type metadata accessor for Errors, &unk_1D4435438);
    sub_1D44170E4();
    v107 = v225[0];
    v108 = sub_1D44170F4();

    v109 = sub_1D4419E24();
    v110 = [v106 initWithError:v108 allowsInsertingNewGraph:0 allowsAddingToGraph:0 is3DGraphable:0 graphableVariables:v109];

    sub_1D44198E4();
    v111 = v110;
    v112 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v111, &unk_1EC7CB730, v112, 1);
    swift_endAccess();

    sub_1D417CF94(v72, v26, &qword_1EC7CB598, &qword_1D4439D10);
    v113 = (*(v105 + 48))(v26, 1, v104);
    v114 = 0;
    v52 = v219;
    if (v113 != 1)
    {
      sub_1D417CF94(v26, v222, &qword_1EC7CB590, &qword_1D4439D08);
      v114 = sub_1D441ADC4();
      v115 = v26;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v52 = v219;
  sub_1D4189834();
  v53 = sub_1D4419974();

  v54 = sub_1D4373950(v53, location, length);
  v55 = sub_1D4189834();

  v56 = sub_1D436B17C(v54, v55);

  if ((v54 & 0xC000000000000001) != 0)
  {
    v58 = sub_1D441A8C4();
  }

  else
  {
    v58 = *(v54 + 16);
  }

  if (!v58)
  {

    v149 = v223;
    v148 = v224;
    v72 = v213;
    (*(v223 + 56))(v213, 1, 1, v224);
    v150 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);
    type metadata accessor for Errors(0);
    v226 = 4;
    sub_1D42EA814(MEMORY[0x1E69E7CC0]);
    sub_1D4188890(&qword_1EC7C9480, type metadata accessor for Errors, &unk_1D4435438);
    sub_1D44170E4();
    v151 = v225[0];
    v152 = sub_1D44170F4();

    v153 = sub_1D4419E24();
    v154 = [v150 initWithError:v152 allowsInsertingNewGraph:0 allowsAddingToGraph:0 is3DGraphable:0 graphableVariables:v153];

    sub_1D44198E4();
    v111 = v154;
    v155 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v111, &unk_1EC7CB730, v155, 1);
    swift_endAccess();

    v156 = v212;
    sub_1D417CF94(v72, v212, &qword_1EC7CB598, &qword_1D4439D10);
    v114 = 0;
    if ((*(v149 + 48))(v156, 1, v148) != 1)
    {
      sub_1D417CF94(v156, v222, &qword_1EC7CB590, &qword_1D4439D08);
      v114 = sub_1D441ADC4();
      v115 = v156;
      goto LABEL_60;
    }

LABEL_61:
    swift_beginAccess();
    objc_setAssociatedObject(v111, &unk_1EC7CB731, v114, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_beginAccess();
    v188 = v111;
    objc_setAssociatedObject(v188, &unk_1EC7CB732, 0, 1);
    swift_endAccess();

    v189 = v188;
    v190 = sub_1D4419EF4();
    swift_beginAccess();
    objc_setAssociatedObject(v189, &unk_1EC7CB733, v190, 1);
    swift_endAccess();

    v191 = sub_1D4419E24();
    swift_beginAccess();
    objc_setAssociatedObject(v189, &unk_1EC7CB734, v191, 1);
    swift_endAccess();

    goto LABEL_62;
  }

  v212 = 0;
  if (v56 >> 62)
  {
LABEL_79:
    v116 = sub_1D441A8C4();
  }

  else
  {
    v116 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v218 = v56;
  v213 = v116;
  if (v116)
  {
    v117 = 0;
    v118 = v56 & 0xC000000000000001;
    v119 = v56 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v118)
      {
        MEMORY[0x1DA6D6410](v117, v56);
        v121 = (v117 + 1);
        if (__OFADD__(v117, 1))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v117 >= *(v119 + 16))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v121 = (v117 + 1);
        if (__OFADD__(v117, 1))
        {
          goto LABEL_40;
        }
      }

      if (sub_1D4419754())
      {
      }

      else
      {
        v225[3] = &type metadata for CalculatePencilAndPaperFeature;
        v225[4] = sub_1D4374F44();
        v122 = sub_1D4417E34();
        __swift_destroy_boxed_opaque_existential_0(v225);
        if ((v122 & 1) == 0)
        {

LABEL_58:

          v179 = v223;
          v178 = v224;
          v72 = v206;
          (*(v223 + 56))(v206, 1, 1, v224);
          v180 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);
          type metadata accessor for Errors(0);
          v226 = 5;
          sub_1D42EA814(MEMORY[0x1E69E7CC0]);
          sub_1D4188890(&qword_1EC7C9480, type metadata accessor for Errors, &unk_1D4435438);
          sub_1D44170E4();
          v181 = v225[0];
          v182 = sub_1D44170F4();

          v183 = sub_1D4419E24();
          v184 = [v180 initWithError:v182 allowsInsertingNewGraph:0 allowsAddingToGraph:0 is3DGraphable:0 graphableVariables:v183];

          sub_1D44198E4();
          v111 = v184;
          v185 = sub_1D4419E24();
          swift_beginAccess();
          objc_setAssociatedObject(v111, &unk_1EC7CB730, v185, 1);
          swift_endAccess();

          v186 = v205;
          sub_1D417CF94(v72, v205, &qword_1EC7CB598, &qword_1D4439D10);
          v187 = (*(v179 + 48))(v186, 1, v178);
          v114 = 0;
          v52 = v219;
          if (v187 != 1)
          {
            sub_1D417CF94(v186, v222, &qword_1EC7CB590, &qword_1D4439D08);
            v114 = sub_1D441ADC4();
            v115 = v186;
LABEL_60:
            sub_1D41769C4(v115, &qword_1EC7CB590, &qword_1D4439D08);
          }

          goto LABEL_61;
        }

        v123 = *(sub_1D44197C4() + 16);

        if (!v123)
        {

          goto LABEL_58;
        }
      }

      ++v117;
      v120 = v121 == v213;
      v56 = v218;
    }

    while (!v120);
  }

  sub_1D436B42C(v54, v57);

  v124 = sub_1D441A714();

  v125 = (v214 + 8);
  v126 = (v124 + 40);
  v214 = v124;
  v56 = -*(v124 + 16);
  v54 = -1;
  while (v56 + v54 != -1)
  {
    if (++v54 >= *(v214 + 16))
    {
      __break(1u);
      goto LABEL_77;
    }

    v127 = *(v126 - 1);
    v128 = *v126;
    v129 = [v203 string];
    if (!v129)
    {
      __break(1u);
      return;
    }

    v130 = v129;
    v126 += 2;
    sub_1D4416DE4();
    v131 = sub_1D4416DD4();
    (*v125)(v49, v47);
    v132 = [v130 ic:v127 range:v128 onlyContainsCharacterSet:v131];

    if ((v132 & 1) == 0)
    {

      v134 = v223;
      v133 = v224;
      v72 = v208;
      (*(v223 + 56))(v208, 1, 1, v224);
      v135 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);
      type metadata accessor for Errors(0);
      v226 = 6;
      sub_1D42EA814(MEMORY[0x1E69E7CC0]);
      sub_1D4188890(&qword_1EC7C9480, type metadata accessor for Errors, &unk_1D4435438);
      sub_1D44170E4();
      v136 = v225[0];
      v137 = sub_1D44170F4();

      v138 = sub_1D4419E24();
      v139 = [v135 initWithError:v137 allowsInsertingNewGraph:0 allowsAddingToGraph:0 is3DGraphable:0 graphableVariables:v138];

      sub_1D44198E4();
      v140 = v139;
      v141 = sub_1D4419E24();
      swift_beginAccess();
      objc_setAssociatedObject(v140, &unk_1EC7CB730, v141, 1);
      swift_endAccess();

      v142 = v207;
      sub_1D417CF94(v72, v207, &qword_1EC7CB598, &qword_1D4439D10);
      v143 = 0;
      if ((*(v134 + 48))(v142, 1, v133) != 1)
      {
        sub_1D417CF94(v142, v222, &qword_1EC7CB590, &qword_1D4439D08);
        v143 = sub_1D441ADC4();
        sub_1D41769C4(v142, &qword_1EC7CB590, &qword_1D4439D08);
      }

      swift_beginAccess();
      objc_setAssociatedObject(v140, &unk_1EC7CB731, v143, 1);
      swift_endAccess();

      swift_unknownObjectRelease();
      swift_beginAccess();
      v144 = v140;
      objc_setAssociatedObject(v144, &unk_1EC7CB732, 0, 1);
      swift_endAccess();

      v145 = v144;
      v146 = sub_1D4419EF4();
      swift_beginAccess();
      objc_setAssociatedObject(v145, &unk_1EC7CB733, v146, 1);
      swift_endAccess();

      v147 = sub_1D4419E24();
      swift_beginAccess();
      objc_setAssociatedObject(v145, &unk_1EC7CB734, v147, 1);
      swift_endAccess();

      goto LABEL_56;
    }
  }

  v56 = v218;
  v225[0] = v218;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58, &qword_1D44363A0);
  sub_1D417645C(&unk_1EC7CB700, &qword_1EC7C9B58, &qword_1D44363A0, MEMORY[0x1E69E6340]);
  sub_1D441A0E4();
  if (v226)
  {
    v157 = v215;
    sub_1D4419884();
    v158 = v204;
    v160 = v216;
    v159 = v217;
    (*(v204 + 104))(v216, *MEMORY[0x1E69782D0], v217);
    v161 = sub_1D44195F4();
    v162 = *(v158 + 8);
    v162(v160, v159);
    v162(v157, v159);
    sub_1D44197C4();

    v163 = v213;
    goto LABEL_53;
  }

  v163 = v213;
  if (!v213)
  {
    goto LABEL_75;
  }

  v54 = 0;
  v47 = v56 & 0xC000000000000001;
  v192 = v56 & 0xFFFFFFFFFFFFFF8;
  LODWORD(v214) = *MEMORY[0x1E69782D0];
  v212 = (v204 + 104);
  v208 = (v204 + 8);
  LOBYTE(v161) = 1;
  v193 = MEMORY[0x1E69E7CC0];
  v207 = v56 & 0xFFFFFFFFFFFFFF8;
  v49 = (v204 + 8);
  while (v47)
  {
    MEMORY[0x1DA6D6410](v54, v218);
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_74;
    }

LABEL_70:
    if (v161)
    {
      v194 = v193;
      v195 = v215;
      sub_1D4419884();
      v197 = v216;
      v196 = v217;
      (*v212)(v216, v214, v217);
      v161 = sub_1D44195F4();

      v198 = *v49;
      (*v49)(v197, v196);
      v199 = v195;
      v193 = v194;
      v192 = v207;
      v200 = v196;
      v163 = v213;
      v198(v199, v200);
    }

    else
    {

      v161 = 0;
    }

    ++v54;
    if (v56 == v163)
    {
      goto LABEL_53;
    }
  }

  if (v54 >= *(v192 + 16))
  {
    goto LABEL_78;
  }

  v56 = v54 + 1;
  if (!__OFADD__(v54, 1))
  {
    goto LABEL_70;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  v161 = 1;
LABEL_53:
  v72 = v211;
  sub_1D436BA84(location, length, v161 & 1, v211);
  v164 = v224;
  length = *(v223 + 48);
  v165 = length(v72, 1, v224) != 1;
  v166 = objc_allocWithZone(ICCalculateGraphingControllerInsertionDecision);

  v167 = sub_1D4419E24();

  LODWORD(v223) = v161;
  v168 = [v166 initWithError:0 allowsInsertingNewGraph:v163 != 0 allowsAddingToGraph:v165 is3DGraphable:v161 & 1 graphableVariables:v167];

  sub_1D44198E4();
  v169 = v168;
  v170 = sub_1D4419E24();

  swift_beginAccess();
  objc_setAssociatedObject(v169, &unk_1EC7CB730, v170, 1);
  swift_endAccess();

  v171 = v210;
  sub_1D417CF94(v72, v210, &qword_1EC7CB598, &qword_1D4439D10);
  v172 = 0;
  if (length(v171, 1, v164) != 1)
  {
    sub_1D417CF94(v171, v222, &qword_1EC7CB590, &qword_1D4439D08);
    v172 = sub_1D441ADC4();
    sub_1D41769C4(v171, &qword_1EC7CB590, &qword_1D4439D08);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v169, &unk_1EC7CB731, v172, 1);
  swift_endAccess();

  swift_unknownObjectRelease();
  v173 = v169;
  v174 = sub_1D441A0C4();
  swift_beginAccess();
  objc_setAssociatedObject(v173, &unk_1EC7CB732, v174, 1);
  swift_endAccess();

  v175 = v173;
  v176 = sub_1D4419EF4();
  swift_beginAccess();
  objc_setAssociatedObject(v175, &unk_1EC7CB733, v176, 1);
  swift_endAccess();

  v177 = sub_1D4419E24();

  swift_beginAccess();
  objc_setAssociatedObject(v175, &unk_1EC7CB734, v177, 1);
  swift_endAccess();

LABEL_56:
  v52 = v219;
LABEL_62:
  v71 = v202;
LABEL_14:

  sub_1D41769C4(v72, &qword_1EC7CB598, &qword_1D4439D10);
}

Swift::Void __swiftcall ICCalculateGraphingController.perform(_:)(ICCalculateGraphingControllerInsertionDecision *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v116[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v116[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v116[-v12];
  v14 = [v2 note];
  if (!v14)
  {
    return;
  }

  v126 = v14;
  v15 = [v14 textStorage];
  if (!v15)
  {
    v41 = v126;
LABEL_20:

    return;
  }

  v125 = v15;
  v16 = [v126 managedObjectContext];
  if (!v16)
  {
    v42 = v126;
LABEL_19:

    v41 = v125;
    goto LABEL_20;
  }

  v124 = v16;
  v17 = [v126 calculateDocumentController];
  if (!v17)
  {

    v41 = v124;
    goto LABEL_20;
  }

  v18 = v17;
  v123 = v2;
  if (qword_1EDE32CE0 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v19 = sub_1D44181B4();
    v20 = __swift_project_value_buffer(v19, qword_1EDE32CE8);
    v21 = v126;
    v22 = a1;
    v126 = v20;
    v23 = sub_1D44181A4();
    v24 = sub_1D441A154();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v121 = v8;
      v26 = v25;
      p_isa = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v128 = v120;
      *v26 = 136315394;
      v27 = [v21 shortLoggingDescription];
      v118 = v23;
      v28 = v18;
      v29 = v27;
      v30 = sub_1D4419C54();
      v122 = v21;
      v31 = v30;
      v117 = v24;
      v32 = v22;
      v34 = v33;

      v18 = v28;
      v35 = sub_1D42E9410(v31, v34, &v128);
      v22 = v32;

      *(v26 + 4) = v35;
      v21 = v122;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v32;
      v36 = p_isa;
      *p_isa = v32;
      v37 = v32;
      v38 = v118;
      _os_log_impl(&dword_1D4171000, v118, v117, "Performing graph insertion decision… {note: %s, decision: %@}", v26, 0x16u);
      sub_1D41769C4(v36, &qword_1EC7C9918, &unk_1D44365D0);
      MEMORY[0x1DA6D8690](v36, -1, -1);
      v39 = v120;
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x1DA6D8690](v39, -1, -1);
      v40 = v26;
      v8 = v121;
      MEMORY[0x1DA6D8690](v40, -1, -1);
    }

    else
    {
    }

    v43 = [(ICCalculateGraphingControllerInsertionDecision *)v22 error];
    if (v43)
    {
      v44 = v43;
      v45 = v21;
      v46 = v44;
      v47 = sub_1D44181A4();
      v48 = sub_1D441A164();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v128 = v51;
        *v49 = 136315394;
        v52 = [v45 shortLoggingDescription];
        v53 = sub_1D4419C54();
        v121 = v18;
        v54 = v53;
        v56 = v55;

        v57 = sub_1D42E9410(v54, v56, &v128);

        *(v49 + 4) = v57;
        *(v49 + 12) = 2112;
        v58 = v46;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 14) = v59;
        *v50 = v59;
        _os_log_impl(&dword_1D4171000, v47, v48, "Cannot perform graph insertion decision {note: %s, error: %@}", v49, 0x16u);
        sub_1D41769C4(v50, &qword_1EC7C9918, &unk_1D44365D0);
        MEMORY[0x1DA6D8690](v50, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x1DA6D8690](v51, -1, -1);
        MEMORY[0x1DA6D8690](v49, -1, -1);

        goto LABEL_15;
      }

      v42 = v124;
      goto LABEL_19;
    }

    sub_1D437AA70(v6);
    v60 = *(v8 + 48);
    v8 += 48;
    if (v60(v6, 1, v7) == 1)
    {
      v61 = &qword_1EC7CB598;
      v62 = &qword_1D4439D10;
      v63 = v6;
      goto LABEL_33;
    }

    sub_1D42D742C(v6, v13, &qword_1EC7CB590, &qword_1D4439D08);
    if ([(ICCalculateGraphingControllerInsertionDecision *)v22 prefersExistingGraph])
    {
      v121 = v18;
      v122 = v21;
      v64 = sub_1D437ABCC();
      v65 = v64;
      if (v64 >> 62)
      {
        v66 = sub_1D441A8C4();
        if (v66)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v66)
        {
LABEL_26:
          if (v66 < 1)
          {
            __break(1u);
            return;
          }

          v67 = 0;
          v126 = (v65 & 0xC000000000000001);
          v68 = v65;
          do
          {
            if (v126)
            {
              v69 = MEMORY[0x1DA6D6410](v67, v65);
            }

            else
            {
              v69 = *(v65 + 8 * v67 + 32);
            }

            ++v67;
            sub_1D417CF94(v13, v11, &qword_1EC7CB590, &qword_1D4439D08);
            v70 = *v11;
            v71 = *(v7 + 48);
            sub_1D437050C(v69, *v11, v11 + v71);

            v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5A8, &qword_1D4439D18);
            (*(*(v72 - 8) + 8))(v11 + v71, v72);
            v65 = v68;
          }

          while (v66 != v67);
        }
      }

      sub_1D441A544();

      sub_1D41769C4(v13, &qword_1EC7CB590, &qword_1D4439D08);
      return;
    }

    v61 = &qword_1EC7CB590;
    v62 = &qword_1D4439D08;
    v63 = v13;
LABEL_33:
    sub_1D41769C4(v63, v61, v62);
    a1 = v22;
    v73 = sub_1D437ABCC();
    if (v73 >> 62)
    {
      break;
    }

    if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_89;
    }

LABEL_35:
    if ((v73 & 0xC000000000000001) != 0)
    {
      v118 = MEMORY[0x1DA6D6410](0);
    }

    else
    {
      if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_95;
      }

      v118 = *(v73 + 32);
    }

    p_isa = &v22->super.isa;
    v11 = sub_1D437ABCC();
    v121 = v18;
    a1 = v18;
    v6 = sub_1D4189834();
    v128 = MEMORY[0x1E69E7CC0];
    v122 = v21;
    if (v11 >> 62)
    {
      v18 = sub_1D441A8C4();
    }

    else
    {
      v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = (v11 & 0xC000000000000001);

    v74 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v18 == v74)
      {

        if (!(v8 >> 62))
        {
          v126 = (v8 & 0xFFFFFFFFFFFFFF8);
          v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_54;
        }

LABEL_95:
        v126 = (v8 & 0xFFFFFFFFFFFFFF8);
        v11 = sub_1D441A8C4();
LABEL_54:
        v18 = 0;
        v76 = v8 & 0xC000000000000001;
        v120 = MEMORY[0x1E69E7CC0];
        if (!v11)
        {
LABEL_55:

          sub_1D441A724();
          v78 = v77;
          v79 = v125;
          v80 = [v79 string];
          sub_1D4419C54();

          if (v78)
          {

            v81 = v121;
            v82 = v118;
          }

          else
          {
            v93 = sub_1D4419C94();
            v95 = v94;
            v97 = v96;

            v81 = v121;
            v82 = v118;
            if ((v97 & 1) == 0)
            {

              v98 = (v93 + v95);
              goto LABEL_82;
            }
          }

          v98 = [v79 length];

LABEL_82:
          v99 = p_isa;
          v100 = [p_isa graphableVariable];
          sub_1D4419C54();

          sub_1D44197B4();
          v101 = v122;
          v102 = v99;
          v103 = v123;
          v104 = v124;
          sub_1D437511C(v82, v98, v103, v102, v101, v103, v104);

          return;
        }

        while (1)
        {
          while (1)
          {
            if (v76)
            {
              v84 = v8;
              v8 = MEMORY[0x1DA6D6410](v18, v8);
              v6 = (v18 + 1);
              if (__OFADD__(v18, 1))
              {
                goto LABEL_85;
              }
            }

            else
            {
              if (v18 >= *(v126 + 2))
              {
                goto LABEL_86;
              }

              v84 = v8;
              v8 = *(v8 + 8 * v18 + 32);

              v6 = (v18 + 1);
              if (__OFADD__(v18, 1))
              {
                goto LABEL_85;
              }
            }

            v7 = v8 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
            if (*(v8 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16))
            {
              break;
            }

            a1 = *v7;
            v13 = *(v7 + 8);

            v8 = v84;
LABEL_70:
            v90 = v120;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_1D438CD7C(0, *(v90 + 2) + 1, 1, v90);
            }

            v7 = *(v90 + 2);
            v91 = *(v90 + 3);
            if (v7 >= v91 >> 1)
            {
              v90 = sub_1D438CD7C((v91 > 1), v7 + 1, 1, v90);
            }

            *(v90 + 2) = v7 + 1;
            v120 = v90;
            v92 = &v90[16 * v7];
            *(v92 + 4) = a1;
            *(v92 + 5) = v13;
            v18 = v6;
            if (v11 == v6)
            {
              goto LABEL_55;
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();

          if (Strong)
          {
            v86 = [Strong mergeableString];

            v87 = sub_1D441A3E4();
            v88 = v87;
            v89 = *(v87 + 16);
            v83 = v89 == 0;
            if (v89)
            {
              a1 = *(v88 + 32);
              v13 = *(v88 + 40);
            }

            else
            {
              a1 = 0;
              v13 = 0;
            }
          }

          else
          {
            a1 = 0;
            v13 = 0;
            v83 = 1;
          }

          *v7 = a1;
          *(v7 + 8) = v13;
          *(v7 + 16) = v83;

          ++v18;
          v8 = v84;
          if (!v83)
          {
            goto LABEL_70;
          }

          if (v11 == v18)
          {
            goto LABEL_55;
          }
        }
      }

      if (!v13)
      {
        break;
      }

      MEMORY[0x1DA6D6410](v74, v11);
      v7 = &v74->super.isa + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_83;
      }

LABEL_45:
      a1 = v6;
      sub_1D4419954();

      v74 = (v74 + 1);
      if (v127)
      {
        a1 = &v128;
        MEMORY[0x1DA6D5820](v75);
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D4419E94();
        }

        sub_1D4419EB4();
        v8 = v128;
        v74 = v7;
      }
    }

    if (v74 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    v7 = &v74->super.isa + 1;
    if (!__OFADD__(v74, 1))
    {
      goto LABEL_45;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

  v105 = v73;
  v106 = sub_1D441A8C4();
  v73 = v105;
  if (v106)
  {
    goto LABEL_35;
  }

LABEL_89:

  v45 = v21;
  v107 = sub_1D44181A4();
  v108 = sub_1D441A164();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v128 = v110;
    *v109 = 136315138;
    v111 = [v45 shortLoggingDescription];
    v112 = sub_1D4419C54();
    v114 = v113;

    v115 = sub_1D42E9410(v112, v114, &v128);

    *(v109 + 4) = v115;
    _os_log_impl(&dword_1D4171000, v107, v108, "Cannot insert graph for decision without expressions {note: %s}", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x1DA6D8690](v110, -1, -1);
    MEMORY[0x1DA6D8690](v109, -1, -1);

LABEL_15:
  }

  else
  {
  }
}

uint64_t sub_1D437050C(uint64_t a1, void *a2, uint64_t a3)
{
  v111 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5A8, &qword_1D4439D18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v95 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA478, &unk_1D4438120);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = v95 - v11;
  v12 = sub_1D4417494();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v103 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D4419654();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v109 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720, &qword_1D4439D20);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v95 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v108 = (v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v95 - v26;
  *(v95 - v26) = a2;
  (*(v7 + 16))(v95 + *(v25 + 48) - v26, a3, v6);
  v28 = a2;
  v29 = [v3 note];
  if (!v29)
  {
    v60 = &qword_1EC7CB590;
    v61 = &qword_1D4439D08;
    v62 = v27;
LABEL_21:
    sub_1D41769C4(v62, v60, v61);
    return 0;
  }

  v30 = v29;
  v110 = v27;
  v31 = [v29 calculateDocumentController];
  if (!v31)
  {
    sub_1D41769C4(v110, &qword_1EC7CB590, &qword_1D4439D08);

    return 0;
  }

  v32 = v31;
  v95[3] = v3;
  v96 = v19;
  if (qword_1EDE32CE0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D44181B4();
  v34 = __swift_project_value_buffer(v33, qword_1EDE32CE8);
  v35 = v30;
  v98 = v34;
  v36 = sub_1D44181A4();
  v37 = sub_1D441A154();

  v38 = os_log_type_enabled(v36, v37);
  v101 = v6;
  v102 = v9;
  v99 = v7;
  v107 = v21;
  v97 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v114[0] = v40;
    *v39 = 136315138;
    v41 = [v35 shortLoggingDescription];
    v42 = sub_1D4419C54();
    v44 = v43;

    v45 = sub_1D42E9410(v42, v44, v114);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_1D4171000, v36, v37, "Adding expression to graph… {note: %s}", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v46 = v40;
    v21 = v107;
    MEMORY[0x1DA6D8690](v46, -1, -1);
    MEMORY[0x1DA6D8690](v39, -1, -1);
  }

  v47 = v113;
  v100 = v32;
  sub_1D432A8EC(v21);
  v48 = v96;
  sub_1D417CF94(v21, v96, &qword_1EC7CB720, &qword_1D4439D20);
  v49 = v112;
  v50 = *(v112 + 48);
  if (v50(v48, 1, v47) == 1)
  {
    v95[2] = sub_1D4419734();
    v95[1] = v51;
    v52 = v103;
    sub_1D4417484();
    sub_1D4417444();
    (*(v104 + 8))(v52, v105);
    sub_1D44197A4();
    v53 = sub_1D44196E4();
    (*(*(v53 - 8) + 56))(v106, 1, 1, v53);
    v54 = v109;
    v47 = v113;
    sub_1D4419614();
    v55 = v50(v48, 1, v47) == 1;
    v56 = v101;
    v57 = v99;
    v58 = v110;
    if (!v55)
    {
      v59 = v110;
      sub_1D41769C4(v48, &qword_1EC7CB720, &qword_1D4439D20);
      v58 = v59;
    }
  }

  else
  {
    v54 = v109;
    (*(v49 + 32))(v109, v48, v47);
    v56 = v101;
    v57 = v99;
    v58 = v110;
  }

  v64 = v108;
  sub_1D417CF94(v58, v108, &qword_1EC7CB590, &qword_1D4439D08);
  v65 = *v64;
  (*(v57 + 32))(v102, v64 + *(v22 + 48), v56);
  sub_1D4419704();
  v66 = v50(v107, 1, v47);
  v67 = v97;
  if (v66 == 1)
  {
    sub_1D4189834();
    sub_1D4419954();

    if (!v114[0] || (sub_1D43096D4(), v69 = v68, , (v69 & 1) != 0) || (sub_1D4374F98(v111), (v72 & 1) != 0))
    {
      v73 = v67;
      v74 = sub_1D44181A4();
      v75 = sub_1D441A164();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v114[0] = v77;
        *v76 = 136315138;
        v78 = [v73 shortLoggingDescription];
        v79 = v57;
        v80 = sub_1D4419C54();
        v82 = v81;

        v83 = sub_1D42E9410(v80, v82, v114);

        *(v76 + 4) = v83;
        _os_log_impl(&dword_1D4171000, v74, v75, "Cannot insert graph because declaration range is invalid {note: %s}", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x1DA6D8690](v77, -1, -1);
        MEMORY[0x1DA6D8690](v76, -1, -1);

        (*(v79 + 8))(v102, v101);
        (*(v112 + 8))(v109, v113);
      }

      else
      {

        (*(v57 + 8))(v102, v56);
        (*(v112 + 8))(v54, v47);
      }

      sub_1D41769C4(v110, &qword_1EC7CB590, &qword_1D4439D08);
      v62 = v107;
      v60 = &qword_1EC7CB720;
      v61 = &qword_1D4439D20;
      goto LABEL_21;
    }

    sub_1D4372C08(v54, v70, v71);
  }

  v84 = v67;
  v85 = sub_1D44181A4();
  v86 = sub_1D441A154();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v114[0] = v88;
    *v87 = 136315138;
    v89 = [v84 shortLoggingDescription];
    v90 = v57;
    v91 = sub_1D4419C54();
    v93 = v92;

    v94 = sub_1D42E9410(v91, v93, v114);

    *(v87 + 4) = v94;
    _os_log_impl(&dword_1D4171000, v85, v86, "Added expression to graph {note: %s}", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x1DA6D8690](v88, -1, -1);
    MEMORY[0x1DA6D8690](v87, -1, -1);

    (*(v90 + 8))(v102, v101);
    (*(v112 + 8))(v109, v113);
  }

  else
  {

    (*(v57 + 8))(v102, v56);
    (*(v112 + 8))(v54, v47);
  }

  sub_1D41769C4(v110, &qword_1EC7CB590, &qword_1D4439D08);
  sub_1D41769C4(v107, &qword_1EC7CB720, &qword_1D4439D20);
  return 1;
}

void sub_1D4371008(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = v60 - v16;
  v19 = v18;
  sub_1D417CF94(a1, v10, &qword_1EC7CB598, &qword_1D4439D10);
  if ((*(v12 + 48))(v10, 1, v19) == 1)
  {
    v20 = &qword_1EC7CB598;
    v21 = &qword_1D4439D10;
    v22 = v10;
LABEL_27:
    sub_1D41769C4(v22, v20, v21);
    return;
  }

  sub_1D42D742C(v10, v17, &qword_1EC7CB590, &qword_1D4439D08);
  v23 = sub_1D437ABCC();
  if (v23 >> 62)
  {
    v24 = sub_1D441A8C4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 < 2)
  {
    v20 = &qword_1EC7CB590;
    v21 = &qword_1D4439D08;
    v22 = v17;
    goto LABEL_27;
  }

  if (qword_1EDE32CE0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D44181B4();
  __swift_project_value_buffer(v25, qword_1EDE32CE8);
  v26 = a3;
  v27 = sub_1D44181A4();
  v28 = sub_1D441A154();

  v29 = os_log_type_enabled(v27, v28);
  v61 = v19;
  v62 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v64 = v31;
    *v30 = 136315138;
    v32 = [v26 shortLoggingDescription];
    v33 = sub_1D4419C54();
    v35 = v34;

    v36 = sub_1D42E9410(v33, v35, &v64);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1D4171000, v27, v28, "Adding remaining expressions to newly created graph… {note: %s}", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1DA6D8690](v31, -1, -1);
    MEMORY[0x1DA6D8690](v30, -1, -1);
  }

  v37 = sub_1D437ABCC();
  v38 = v37;
  v39 = v37 >> 62;
  if (!(v37 >> 62))
  {
    v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v40 != 0;
    if (v40 >= v41)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  v59 = sub_1D441A8C4();
  if ((v59 & 0x8000000000000000) == 0)
  {
    v40 = v59;
    v41 = v59 != 0;
    if (sub_1D441A8C4() >= v41)
    {
      if (sub_1D441A8C4() >= v40)
      {
LABEL_12:
        v60[1] = a5;
        if ((v38 & 0xC000000000000001) != 0 && v40 > 1)
        {
          sub_1D44198E4();

          v42 = v41;
          do
          {
            v43 = v42 + 1;
            sub_1D441A9F4();
            v42 = v43;
          }

          while (v40 != v43);
        }

        else
        {
        }

        if (v39)
        {
          v60[0] = sub_1D441ABE4();
          v44 = v45;
          v41 = v46;
          v48 = v47;

          v40 = v48 >> 1;
        }

        else
        {
          v60[0] = v38 & 0xFFFFFFFFFFFFFF8;
          v44 = (v38 & 0xFFFFFFFFFFFFFF8) + 32;
        }

        v51 = v40 - v41;
        v49 = v40 == v41;
        v50 = v40 <= v41;
        v53 = v61;
        v52 = v62;
        if (v49)
        {
          goto LABEL_26;
        }

        if (!v50)
        {
          v54 = v44 + 8 * v41;
          do
          {
            v54 += 8;
            sub_1D417CF94(v52, v15, &qword_1EC7CB590, &qword_1D4439D08);
            v55 = *v15;
            v56 = *(v53 + 48);

            sub_1D437050C(v57, v55, v15 + v56);

            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5A8, &qword_1D4439D18);
            (*(*(v58 - 8) + 8))(v15 + v56, v58);
            --v51;
          }

          while (v51);
LABEL_26:
          swift_unknownObjectRelease();
          sub_1D441A544();
          v20 = &qword_1EC7CB590;
          v21 = &qword_1D4439D08;
          v22 = v52;
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      __break(1u);
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D43715F4(uint64_t a1, char *a2, void *a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16)
{
  v95 = a7;
  v96 = a8;
  v105 = a3;
  v106 = a6;
  v98 = a5;
  v99 = a4;
  v97 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v84 - v18;
  v20 = sub_1D4419444();
  v104 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D4419484();
  v102 = *(v22 - 8);
  v103 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720, &qword_1D4439D20);
  v93 = *(v24 - 8);
  v25 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v94 = &v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90, &unk_1D443A870);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v84 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98, &qword_1D4437418);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v84 - v32;
  sub_1D417CF94(a1, v29, &qword_1EC7C9F90, &unk_1D443A870);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v97 = v19;
    v34 = v99;
    sub_1D41769C4(v29, &qword_1EC7C9F90, &unk_1D443A870);
    sub_1D41766C0(0, &qword_1EDE33D70, 0x1E69E9610);
    v35 = sub_1D441A2C4();
    v36 = swift_allocObject();
    v37 = v105;
    *(v36 + 16) = v105;
    v111 = sub_1D43764C0;
    v112 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v109 = sub_1D417BEE4;
    v110 = &block_descriptor_15;
    v38 = _Block_copy(&aBlock);
    v39 = v37;

    v40 = v100;
    sub_1D4419464();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D4188890(&qword_1EDE32AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520, &qword_1D4436F00);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520, &qword_1D4436F00, MEMORY[0x1E69E6328]);
    v41 = v101;
    sub_1D441A814();
    MEMORY[0x1DA6D5D00](0, v40, v41, v38);
    _Block_release(v38);

    (*(v104 + 8))(v41, v20);
    (*(v102 + 8))(v40, v103);
    if (qword_1EDE32CE0 != -1)
    {
      swift_once();
    }

    v42 = sub_1D44181B4();
    __swift_project_value_buffer(v42, qword_1EDE32CE8);
    v43 = v34;
    v44 = sub_1D44181A4();
    v45 = sub_1D441A164();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      v48 = [v43 shortLoggingDescription];
      v49 = sub_1D4419C54();
      v51 = v50;

      v52 = sub_1D42E9410(v49, v51, &aBlock);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_1D4171000, v44, v45, "Cannot insert graph because the updated paper doesn't exist — deleting attachment {note: %s}", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x1DA6D8690](v47, -1, -1);
      MEMORY[0x1DA6D8690](v46, -1, -1);
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
    v54 = v97;
    (*(*(v53 - 8) + 56))(v97, 1, 1, v53);
    v98(v54);
    return sub_1D41769C4(v54, &qword_1EC7CB598, &qword_1D4439D10);
  }

  else
  {
    v88 = a16;
    v87 = a15;
    v86 = a14;
    v85 = a13;
    v84 = a12;
    v92 = a10;
    v91 = a9;
    v90 = v31;
    v56 = *(v31 + 32);
    v89 = v33;
    v56(v33, v29, v30);
    sub_1D4419A54();
    sub_1D41766C0(0, &qword_1EDE33D70, 0x1E69E9610);
    v96 = sub_1D441A2C4();
    v57 = v94;
    sub_1D417CF94(a11, v94, &qword_1EC7CB720, &qword_1D4439D20);
    v58 = (*(v93 + 80) + 64) & ~*(v93 + 80);
    v59 = (v25 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = v20;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v65 = v92;
    v64[2] = v91;
    v64[3] = v65;
    v95 = v30;
    v66 = v99;
    v64[4] = v105;
    v64[5] = v66;
    v67 = v106;
    v64[6] = v98;
    v64[7] = v67;
    sub_1D42D742C(v57, v64 + v58, &qword_1EC7CB720, &qword_1D4439D20);
    v68 = v97;
    *(v64 + v59) = v97;
    *(v64 + v60) = v84;
    v69 = v85;
    *(v64 + v61) = v85;
    *(v64 + v62) = v86;
    v70 = v87;
    *(v64 + v63) = v87;
    v71 = v88;
    *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v88;
    v111 = sub_1D4376518;
    v112 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v109 = sub_1D417BEE4;
    v110 = &block_descriptor_19;
    v98 = _Block_copy(&aBlock);
    v72 = v91;

    v73 = v105;
    v74 = v66;

    v75 = v68;

    v76 = v69;
    v77 = v70;
    v78 = v71;

    v79 = v100;
    sub_1D4419464();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D4188890(&qword_1EDE32AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520, &qword_1D4436F00);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520, &qword_1D4436F00, MEMORY[0x1E69E6328]);
    v80 = v101;
    v81 = v93;
    sub_1D441A814();
    v82 = v98;
    v83 = v96;
    MEMORY[0x1DA6D5D00](0, v79, v80, v98);
    _Block_release(v82);

    (*(v104 + 8))(v80, v81);
    (*(v102 + 8))(v79, v103);
    return (*(v90 + 8))(v89, v95);
  }
}

uint64_t sub_1D4372074(int a1, uint64_t a2, void (**a3)(char *, uint64_t, uint64_t), void *a4, void (*a5)(char *), uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, id a12, uint64_t a13)
{
  v112 = a8;
  v113 = a4;
  v114 = a5;
  v115 = a6;
  v116 = a3;
  v15 = sub_1D4419444();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D4419484();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v103 - v20;
  v22 = sub_1D4419654();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_projectBox();
  sub_1D4189834();
  sub_1D4419954();

  if (!aBlock[0] || (v106 = v16, v107 = v15, sub_1D43096D4(), v28 = v27, , (v28 & 1) != 0))
  {
    sub_1D41766C0(0, &qword_1EDE32920, 0x1E69B7680);
    [swift_getObjCClassFromMetadata() purgeAttachment_];
    if (qword_1EDE32CE0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D44181B4();
    __swift_project_value_buffer(v29, qword_1EDE32CE8);
    v30 = v113;
    v31 = sub_1D44181A4();
    v32 = sub_1D441A164();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_8;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    v35 = [v30 shortLoggingDescription];
    v36 = sub_1D4419C54();
    v38 = v37;

    v39 = sub_1D42E9410(v36, v38, aBlock);

    *(v33 + 4) = v39;
    v40 = "Cannot insert graph because expression range is invalid — deleting attachment {note: %s}";
LABEL_7:
    _os_log_impl(&dword_1D4171000, v31, v32, v40, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1DA6D8690](v34, -1, -1);
    MEMORY[0x1DA6D8690](v33, -1, -1);
LABEL_8:

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
    (*(*(v41 - 8) + 56))(v21, 1, 1, v41);
    v114(v21);
    return sub_1D41769C4(v21, &qword_1EC7CB598, &qword_1D4439D10);
  }

  if ((v23[6])(a7, 1, v22) == 1)
  {
    sub_1D4374F98(a2);
    if (v45)
    {
      sub_1D41766C0(0, &qword_1EDE32920, 0x1E69B7680);
      [swift_getObjCClassFromMetadata() purgeAttachment_];
      if (qword_1EDE32CE0 != -1)
      {
        swift_once();
      }

      v46 = sub_1D44181B4();
      __swift_project_value_buffer(v46, qword_1EDE32CE8);
      v47 = v113;
      v31 = sub_1D44181A4();
      v32 = sub_1D441A164();

      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_8;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      v48 = [v47 shortLoggingDescription];
      v49 = sub_1D4419C54();
      v51 = v50;

      v52 = sub_1D42E9410(v49, v51, aBlock);

      *(v33 + 4) = v52;
      v40 = "Cannot insert graph because declaration range is invalid — deleting attachment {note: %s}";
      goto LABEL_7;
    }

    v53 = v43;
    v54 = v44;
    swift_beginAccess();
    v23[2](v25, v26, v22);
    sub_1D4372C08(v25, v53, v54);
    v55 = v23[1];
    ++v23;
    (v55)(v25, v22);
  }

  [a10 beginEditing];
  v56 = [a10 undoManager];
  v57 = objc_opt_self();
  v58 = sub_1D4419C14();
  v59 = [v57 localizedFrameworkStringForKey:v58 value:0 table:0 allowSiri:1];

  if (!v59)
  {
    sub_1D4419C54();
    v59 = sub_1D4419C14();
  }

  [v56 setActionName_];

  v60 = sub_1D4419C14();
  [a10 replaceCharactersInRange:a11 withString:{0, v60}];

  [a10 endEditing];
  if (__OFADD__(a11, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v23 = v116;

  v61 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v62 = sub_1D4419C14();
  v63 = [v61 initWithString_];

  if (__OFADD__(a11, 2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [a10 insertAttributedString:v63 atIndex:a11 + 2];

  if (qword_1EDE32CE0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v105 = a11;
  v64 = a13;
  v65 = sub_1D44181B4();
  __swift_project_value_buffer(v65, qword_1EDE32CE8);
  v66 = v113;
  v67 = v23;
  v68 = sub_1D44181A4();
  v69 = sub_1D441A154();

  v70 = os_log_type_enabled(v68, v69);
  v104 = a10;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v116 = a13;
    aBlock[0] = v72;
    v73 = v72;
    *v71 = 136315394;
    v74 = [v66 shortLoggingDescription];
    v75 = sub_1D4419C54();
    v77 = v76;

    v78 = sub_1D42E9410(v75, v77, aBlock);

    *(v71 + 4) = v78;
    *(v71 + 12) = 2080;
    v79 = [v67 shortLoggingDescription];
    v80 = sub_1D4419C54();
    v82 = v81;

    v83 = sub_1D42E9410(v80, v82, aBlock);

    *(v71 + 14) = v83;
    _os_log_impl(&dword_1D4171000, v68, v69, "Inserted graph {note: %s, graphAttachment: %s}", v71, 0x16u);
    swift_arrayDestroy();
    v64 = v116;
    MEMORY[0x1DA6D8690](v73, -1, -1);
    MEMORY[0x1DA6D8690](v71, -1, -1);
  }

  v84 = v114;
  v85 = v115;
  v87 = v106;
  v86 = v107;
  sub_1D41766C0(0, &qword_1EDE33D70, 0x1E69E9610);
  v116 = sub_1D441A2C4();
  v88 = swift_allocObject();
  v88[2] = v67;
  v88[3] = v64;
  v89 = v112;
  v90 = v105;
  v88[4] = v112;
  v88[5] = v90;
  v88[6] = v66;
  v88[7] = v84;
  v91 = v67;
  v92 = v66;
  v93 = v104;
  v88[8] = v85;
  v88[9] = v93;
  aBlock[4] = sub_1D4376600;
  aBlock[5] = v88;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_25;
  v94 = _Block_copy(aBlock);
  v95 = v92;
  v96 = v91;
  v97 = v64;
  v98 = v89;

  v99 = v93;

  v100 = v108;
  sub_1D4419464();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D4188890(&qword_1EDE32AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520, &qword_1D4436F00);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520, &qword_1D4436F00, MEMORY[0x1E69E6328]);
  v101 = v110;
  sub_1D441A814();
  v102 = v116;
  MEMORY[0x1DA6D5D00](0, v100, v101, v94);
  _Block_release(v94);

  (*(v87 + 8))(v101, v86);
  return (*(v109 + 8))(v100, v111);
}

void sub_1D4372C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D44197F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 note];
  if (!v11)
  {
    return;
  }

  v45 = v11;
  v44 = [v11 textStorage];
  if (v44)
  {
    v12 = [v3 attachmentInsertionController];
    if (v12)
    {
      v43 = v12;
      sub_1D4419624();
      sub_1D4374E1C(MEMORY[0x1E69E7CC0]);
      (*(v8 + 104))(v10, *MEMORY[0x1E6992100], v7);
      sub_1D4417484();
      sub_1D44198E4();
      swift_allocObject();
      v13 = sub_1D44198F4();
      sub_1D43D96F0(v13);
      v15 = v14;
      v17 = v16;
      v18 = [v44 isRightToLeftAtIndex_];
      if (v18)
      {
        v46[0] = v15;
        v46[1] = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE80, &unk_1D4438E48);
        sub_1D417645C(&unk_1EC7CAE88, &qword_1EC7CAE80, &unk_1D4438E48, MEMORY[0x1E69E6EB0]);
        sub_1D4419DB4();
      }

      v19 = objc_opt_self();
      sub_1D4419634();
      v20 = sub_1D4419C14();

      v21 = sub_1D4419C14();

      v22 = [v19 newCalculateGraphExpressionAttachmentWithIdentifier:v20 altText:v21 note:v45 parentAttachment:0 rightToLeft:v18];

      v23 = v43;
      if (qword_1EDE32CE0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D44181B4();
      __swift_project_value_buffer(v24, qword_1EDE32CE8);
      v25 = v45;
      v26 = v22;
      v27 = sub_1D44181A4();
      v28 = sub_1D441A154();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 136315394;
        v45 = v13;
        v46[0] = v30;
        v31 = [v25 shortLoggingDescription];
        v32 = sub_1D4419C54();
        v34 = v33;

        v35 = sub_1D42E9410(v32, v34, v46);

        *(v29 + 4) = v35;
        *(v29 + 12) = 2080;
        v36 = [v26 shortLoggingDescription];
        v37 = sub_1D4419C54();
        v39 = v38;

        v40 = sub_1D42E9410(v37, v39, v46);

        *(v29 + 14) = v40;
        _os_log_impl(&dword_1D4171000, v27, v28, "Inserted graph expression attachment {note: %s, expressionAttachment: %s}", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6D8690](v30, -1, -1);
        MEMORY[0x1DA6D8690](v29, -1, -1);
      }

      else
      {
      }

      return;
    }

    v41 = v44;
  }

  else
  {
    v41 = v45;
  }
}

void sub_1D4373160(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = [a1 rangeInNote];
  if (__OFADD__(&v16[v17], 1))
  {
    __break(1u);
  }

  else
  {
    [a2 setSelectedRange_];
    v18 = [a1 paperBundleModel];
    if (v18)
    {
      v19 = v18;
      v20 = swift_allocObject();
      v20[2] = a1;
      v20[3] = a3;
      v20[4] = a4;
      v20[5] = a5;
      v20[6] = a6;
      v20[7] = a7;
      v20[8] = a8;
      v26[4] = sub_1D4376614;
      v26[5] = v20;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1107296256;
      v26[2] = sub_1D417BEE4;
      v26[3] = &block_descriptor_31_0;
      v21 = _Block_copy(v26);
      v22 = a1;
      v23 = a3;
      v24 = a5;

      v25 = a8;

      [v19 updateMinimumSupportedVersionIfNeededWithCompletionHandler_];
      _Block_release(v21);
    }
  }
}

uint64_t sub_1D43732D8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *), void *a6, void *a7)
{
  v46 = a7;
  v47 = a5;
  v45 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  v20 = sub_1D4419C14();
  [a1 updateChangeCountWithReason_];

  v21 = [objc_opt_self() sharedGenerator];
  [v21 generatePreviewIfNeededForAttachment_];

  sub_1D436BA84(a3, 0, 0, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v46 = a6;
    sub_1D41769C4(v15, &qword_1EC7CB598, &qword_1D4439D10);
    if (qword_1EDE32CE0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D44181B4();
    __swift_project_value_buffer(v22, qword_1EDE32CE8);
    v23 = v45;
    v24 = a1;
    v25 = sub_1D44181A4();
    v26 = sub_1D441A164();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v27 = 136315394;
      v28 = [v23 shortLoggingDescription];
      v29 = sub_1D4419C54();
      v31 = v30;

      v32 = sub_1D42E9410(v29, v31, &v48);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v33 = [v24 shortLoggingDescription];
      v34 = sub_1D4419C54();
      v36 = v35;

      v37 = sub_1D42E9410(v34, v36, &v48);

      *(v27 + 14) = v37;
      _os_log_impl(&dword_1D4171000, v25, v26, "Cannot find graph reference after insertion {note: %s, graphAttachment: %s}", v27, 0x16u);
      v38 = v45;
      swift_arrayDestroy();
      MEMORY[0x1DA6D8690](v38, -1, -1);
      MEMORY[0x1DA6D8690](v27, -1, -1);
    }

    v39 = v47;
    (*(v17 + 56))(v13, 1, 1, v16);
    v39(v13);
    v40 = &qword_1EC7CB598;
    v41 = &qword_1D4439D10;
    v42 = v13;
  }

  else
  {
    sub_1D42D742C(v15, v19, &qword_1EC7CB590, &qword_1D4439D08);
    v43 = v46;
    [v46 setDisableUndoCoalesceBreaking_];
    sub_1D417CF94(v19, v13, &qword_1EC7CB590, &qword_1D4439D08);
    (*(v17 + 56))(v13, 0, 1, v16);
    v47(v13);
    sub_1D41769C4(v13, &qword_1EC7CB598, &qword_1D4439D10);
    [v43 setDisableUndoCoalesceBreaking_];
    v42 = v19;
    v40 = &qword_1EC7CB590;
    v41 = &qword_1D4439D08;
  }

  return sub_1D41769C4(v42, v40, v41);
}

id ICCalculateGraphingController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_1D43738BC(uint64_t a1)
{
  sub_1D4419C54();
  sub_1D441AEB4();
  sub_1D4419CD4();
  v2 = sub_1D441AF04();

  return sub_1D4189E88(a1, v2);
}

uint64_t sub_1D4373950(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1D44196C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CD0];
    v48 = MEMORY[0x1E69E7CD0];
    sub_1D441A874();
    v13 = sub_1D441A8F4();
    if (v13)
    {
      v14 = v13;
      _s5IndexCMa(0);
      v15 = v14;
      v44 = a3 + a2;
      v45 = a2;
      v43 = (v8 + 48);
      v40 = (v8 + 8);
      v41 = (v8 + 32);
      do
      {
        v46 = v15;
        swift_dynamicCast();
        v16 = v47;
        v17 = v47 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
        if (*(v47 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16) == 1)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_5;
          }

          v19 = Strong;
          v20 = [Strong mergeableString];

          v21 = sub_1D441A3E4();
          if (!v21[2])
          {

LABEL_5:
            *v17 = 0;
            *(v17 + 8) = 0;
            *(v17 + 16) = 1;
            goto LABEL_6;
          }

          v22 = v21[4];
          v23 = v21[5];

          *v17 = v22;
          *(v17 + 8) = v23;
          *(v17 + 16) = 0;
          v16 = v47;
        }

        else
        {
          v22 = *v17;
          v23 = *(v17 + 8);
        }

        if (v44 >= v22 && v23 + v22 >= v45)
        {
          v25 = *(v3 + 16);
          if (*(v3 + 24) <= v25)
          {
            sub_1D43C7C14(v25 + 1);
          }

          v3 = v48;
          sub_1D441AEB4();
          sub_1D441A424();
          sub_1D417CF94(v16 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v12, &unk_1EC7CA3B0, &qword_1D44360C0);
          if ((*v43)(v12, 1, v7) == 1)
          {
            sub_1D441AED4();
          }

          else
          {
            v26 = v42;
            (*v41)(v42, v12, v7);
            sub_1D441AED4();
            sub_1D4188890(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
            sub_1D4419B94();
            (*v40)(v26, v7);
          }

          result = sub_1D441AF04();
          v28 = v3 + 56;
          v29 = -1 << *(v3 + 32);
          v30 = result & ~v29;
          v31 = v30 >> 6;
          if (((-1 << v30) & ~*(v3 + 56 + 8 * (v30 >> 6))) != 0)
          {
            v32 = __clz(__rbit64((-1 << v30) & ~*(v3 + 56 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = 0;
            v34 = (63 - v29) >> 6;
            do
            {
              if (++v31 == v34 && (v33 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v35 = v31 == v34;
              if (v31 == v34)
              {
                v31 = 0;
              }

              v33 |= v35;
              v36 = *(v28 + 8 * v31);
            }

            while (v36 == -1);
            v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          }

          *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
          *(*(v3 + 48) + 8 * v32) = v16;
          ++*(v3 + 16);
          goto LABEL_7;
        }

LABEL_6:

LABEL_7:
        v15 = sub_1D441A8F4();
      }

      while (v15);
    }
  }

  else
  {
    v37 = v39[1];
    v38 = sub_1D43748B8(a1, a2, a3);
    if (!v37)
    {
      return v38;
    }
  }

  return v3;
}

unint64_t *sub_1D4373E0C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D4374C00(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_1D4373E9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9878, &qword_1D4435E08);
  result = sub_1D441A994();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1D441AEB4();

    sub_1D4419CD4();
    result = sub_1D441AF04();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D43740C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D44196C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0, &qword_1D44360C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - v13;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v43 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9808, &qword_1D4435DD8);
  result = sub_1D441A994();
  v15 = result;
  v44 = a4;
  v42 = v11;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v19 = (v9 + 48);
  v38 = (v9 + 8);
  v39 = (v9 + 32);
  v20 = result + 56;
  v40 = (v9 + 48);
  v41 = v14;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v45 = (v17 - 1) & v17;
LABEL_16:
    v24 = *(*(v44 + 48) + 8 * (v21 | (v18 << 6)));
    sub_1D441AEB4();

    sub_1D441A424();
    sub_1D417CF94(v24 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v14, &unk_1EC7CA3B0, &qword_1D44360C0);
    v25 = v43;
    if ((*v19)(v14, 1, v43) == 1)
    {
      sub_1D441AED4();
    }

    else
    {
      v26 = v42;
      (*v39)(v42, v14, v25);
      sub_1D441AED4();
      sub_1D4188890(&qword_1EC7CA4C0, MEMORY[0x1E69782D8], MEMORY[0x1E69782E0]);
      sub_1D4419B94();
      v27 = v26;
      v19 = v40;
      v14 = v41;
      (*v38)(v27, v25);
    }

    result = sub_1D441AF04();
    v28 = -1 << *(v15 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v20 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v20 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    *(*(v15 + 48) + 8 * v31) = v24;
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    v17 = v45;
    if (!a3)
    {
LABEL_31:

      return v15;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      goto LABEL_31;
    }

    v23 = a1[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v45 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D43744D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5E8, &qword_1D4439D58);
  result = sub_1D441A994();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1D441AEA4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D43746C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5E0, &qword_1D4439D50);
  result = sub_1D441A994();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1D441A5D4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_1D43748B8(uint64_t a1, uint64_t a2, void *Strong)
{
  v6 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = 1;
  v9 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v28 = v9;
    v29 = v3;
    v27[1] = v27;
    MEMORY[0x1EEE9AC00](a1);
    v30 = v27 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v10);
    v31 = 0;
    v32 = a2;
    v11 = 0;
    v9 = v6 + 56;
    v12 = v8 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v6 + 56);
    v8 = (v12 + 63) >> 6;
    v34 = Strong + a2;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      a2 = v6;
      v19 = *(*(v6 + 48) + 8 * v18) + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      if (*(v19 + 16))
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          v33 = v18;
          v20 = [Strong mergeableString];

          Strong = sub_1D441A3E4();
          v21 = Strong;
          if (Strong[2])
          {
            Strong = Strong[4];
            v22 = v21[5];

            *v19 = Strong;
            *(v19 + 8) = v22;
            *(v19 + 16) = 0;
            goto LABEL_19;
          }
        }

        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 1;
      }

      else
      {
        v33 = v15 | (v11 << 6);
        Strong = *v19;
        v22 = *(v19 + 8);

LABEL_19:

        if (v34 >= Strong && Strong + v22 >= v32)
        {
          *&v30[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
          if (__OFADD__(v31++, 1))
          {
            __break(1u);
            return sub_1D43740C0(v30, v28, v31, v6);
          }
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        return sub_1D43740C0(v30, v28, v31, v6);
      }

      v17 = *(v9 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v25 = swift_slowAlloc();
  v26 = sub_1D4373E0C(v25, v9, v6, a2, Strong);

  MEMORY[0x1DA6D8690](v25, -1, -1);
  return v26;
}

unint64_t *sub_1D4374C00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v27 = a5 + a4;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14) + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
    if (*(v15 + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v17 = [Strong mergeableString];

        v18 = sub_1D441A3E4();
        v19 = v18;
        if (*(v18 + 16))
        {
          v20 = *(v18 + 32);
          v21 = *(v19 + 40);

          *v15 = v20;
          *(v15 + 8) = v21;
          *(v15 + 16) = 0;
          goto LABEL_18;
        }
      }

      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 1;
    }

    else
    {
      v20 = *v15;
      v21 = *(v15 + 8);

LABEL_18:

      if (v27 >= v20 && v21 + v20 >= a4)
      {
        *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
LABEL_23:

          return sub_1D43740C0(v24, v23, v25, a3);
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_23;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D4374E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99B8, &unk_1D4436060);
    v3 = sub_1D441AC24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D417CF94(v4, &v11, &qword_1EC7C99C0, &qword_1D4438140);
      v5 = v11;
      result = sub_1D43738BC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D417CF84(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D4374F44()
{
  result = qword_1EC7CB5A0;
  if (!qword_1EC7CB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB5A0);
  }

  return result;
}

void sub_1D4374F98(uint64_t a1)
{
  v18 = sub_1D4419734();
  v19 = v1;
  v2 = objc_opt_self();
  v3 = [v2 ic_equalsSignCharacterString];
  v4 = sub_1D4419C54();
  v6 = v5;

  v17 = v4;
  sub_1D42CC920();
  v7 = sub_1D441A7B4();

  if (v7[2] && (v9 = v7[4], v8 = v7[5], , , sub_1D4419784(), v10))
  {

    v11 = MEMORY[0x1DA6D5780](v9, v8);

    v12 = [v2 ic_equalsSignCharacterString];
    v13 = sub_1D4419C54();
    v15 = v14;

    v16 = MEMORY[0x1DA6D5780](v13, v15);

    if (__OFADD__(v11, v16))
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_1D437511C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v160 = a2;
  v172 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB598, &qword_1D4439D10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v142 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5C0, &qword_1D4439D28);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v163 = &v142 - v16;
  v166 = sub_1D4419654();
  v158 = *(v166 - 1);
  MEMORY[0x1EEE9AC00](v166);
  v156 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA478, &unk_1D4438120);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v154 = &v142 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720, &qword_1D4439D20);
  v157 = *(v20 - 8);
  v21 = *(v157 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v159 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v161 = &v142 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v171 = &v142 - v25;
  v175 = sub_1D4417234();
  v170 = *(v175 - 8);
  v26 = *(v170 + 64);
  v27 = MEMORY[0x1EEE9AC00](v175);
  v162 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v155 = &v142 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v169 = &v142 - v30;
  v31 = sub_1D4419AC4();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v165 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1D4419564();
  MEMORY[0x1EEE9AC00](v164);
  v34 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98, &qword_1D4437418);
  v167 = *(v35 - 8);
  v168 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v176 = &v142 - v36;
  v174 = sub_1D4417494();
  v177 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v179 = a7;
  v42 = [a3 note];
  if (!v42)
  {
    goto LABEL_15;
  }

  v43 = v42;
  v178 = v40;
  v44 = [a3 textView];
  if (!v44)
  {
LABEL_14:

    v40 = v178;
LABEL_15:
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
    (*(*(v67 - 8) + 56))(v14, 1, 1, v67);
    sub_1D4371008(v14, v39, v40, v41, v179);
    sub_1D41769C4(v14, &qword_1EC7CB598, &qword_1D4439D10);
  }

  v45 = v44;
  v153 = v41;
  v46 = [a3 attachmentInsertionController];
  if (!v46)
  {
LABEL_13:
    v41 = v153;

    v43 = v45;
    goto LABEL_14;
  }

  v47 = v46;
  v152 = v39;
  v48 = [v43 textStorage];
  if (!v48)
  {
    v49 = v47;
LABEL_12:

    v43 = v45;
    v45 = v49;
    v39 = v152;
    goto LABEL_13;
  }

  v49 = v48;
  v50 = [v43 calculateDocumentController];
  if (!v50)
  {

    v43 = v45;
    v45 = v47;
    goto LABEL_12;
  }

  v145 = v38;
  v146 = v34;
  v150 = v50;
  if (qword_1EDE32CE0 != -1)
  {
    swift_once();
  }

  v51 = sub_1D44181B4();
  v52 = __swift_project_value_buffer(v51, qword_1EDE32CE8);
  v53 = v43;
  v143 = v52;
  v54 = sub_1D44181A4();
  LODWORD(v52) = sub_1D441A154();
  v151 = v53;

  LODWORD(v142) = v52;
  v55 = v52;
  v56 = v54;
  v57 = os_log_type_enabled(v54, v55);
  v144 = a3;
  v149 = v45;
  v148 = v47;
  v147 = v49;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v180 = v59;
    *v58 = 136315138;
    v60 = v151;
    v61 = [v151 shortLoggingDescription];
    v62 = sub_1D4419C54();
    v64 = v63;

    v65 = sub_1D42E9410(v62, v64, &v180);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_1D4171000, v56, v142, "Inserting graph… {note: %s}", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1DA6D8690](v59, -1, -1);
    MEMORY[0x1DA6D8690](v58, -1, -1);

    v66 = v60;
  }

  else
  {

    v66 = v151;
  }

  v69 = v173;
  sub_1D4417484();
  sub_1D4417444();
  v70 = *(v177 + 8);
  v177 += 8;
  v70(v69, v174);
  v71 = sub_1D4419C14();

  v72 = [v66 addSystemPaperAttachmentWithIdentifier_];

  sub_1D4419554();
  sub_1D4419AD4();
  sub_1D4188890(&unk_1EDE32AC0, MEMORY[0x1E69782A0], MEMORY[0x1E6978290]);
  sub_1D4419A94();
  v73 = objc_allocWithZone(sub_1D4417A44());
  v74 = v72;
  v75 = sub_1D4417A14();
  v76 = sub_1D4417A24();
  v77 = v166;
  if (v76)
  {
    v78 = v76;
    v79 = [v74 paperBundleModel];
    if (v79)
    {
      v179 = v78;
      v164 = v74;
      v165 = v75;
      v80 = v79;
      v81 = [v79 paperBundleURL];

      v82 = v155;
      sub_1D4417214();

      v83 = *(v170 + 32);
      v155 = (v170 + 32);
      v153 = v83;
      v83(v169, v82, v175);
      v84 = v171;
      sub_1D432A8EC(v171);
      v178 = swift_allocBox();
      v152 = v85;
      v86 = v161;
      sub_1D417CF94(v84, v161, &qword_1EC7CB720, &qword_1D4439D20);
      v87 = v158;
      v88 = *(v158 + 48);
      if (v88(v86, 1, v77) == 1)
      {
        sub_1D4419734();
        v146 = v89;
        v90 = v173;
        sub_1D4417484();
        v143 = sub_1D4417444();
        v142 = v91;
        v70(v90, v174);
        sub_1D44197A4();
        v177 = v92;
        v93 = sub_1D44196E4();
        (*(*(v93 - 8) + 56))(v154, 1, 1, v93);
        v94 = v152;
        v95 = v161;
        sub_1D4419614();
        v96 = v94;
        if (v88(v95, 1, v77) != 1)
        {
          sub_1D41769C4(v95, &qword_1EC7CB720, &qword_1D4439D20);
        }
      }

      else
      {
        v96 = v152;
        (*(v87 + 32))(v152, v86, v77);
      }

      v177 = sub_1D4419AA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70, &qword_1D4438E40);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1D4438490;
      v115 = v114;
      v174 = v114;
      v116 = v156;
      (*(v87 + 16))(v156, v96, v77);
      v117 = sub_1D4419644();
      (*(v87 + 8))(v116, v77);
      *(v115 + 32) = v117;
      v118 = sub_1D44195C4();
      (*(*(v118 - 8) + 56))(v163, 1, 1, v118);
      v119 = v170;
      (*(v170 + 16))(v162, v169, v175);
      v120 = v159;
      sub_1D417CF94(v171, v159, &qword_1EC7CB720, &qword_1D4439D20);
      v158 = (*(v119 + 80) + 64) & ~*(v119 + 80);
      v173 = ((v26 + v158 + 7) & 0xFFFFFFFFFFFFFFF8);
      v156 = ((v173 + 15) & 0xFFFFFFFFFFFFFFF8);
      v121 = &v156[*(v157 + 80) + 8] & ~*(v157 + 80);
      v166 = ((v21 + v121 + 7) & 0xFFFFFFFFFFFFFFF8);
      v161 = (v166 + 15) & 0xFFFFFFFFFFFFFFF8;
      v122 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
      v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
      v124 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
      v125 = swift_allocObject();
      v126 = v164;
      *(v125 + 16) = v144;
      *(v125 + 24) = v126;
      v127 = v151;
      *(v125 + 32) = v151;
      *(v125 + 40) = sub_1D437633C;
      v128 = v179;
      *(v125 + 48) = v145;
      *(v125 + 56) = v128;
      v153(v125 + v158, v162, v175);
      v129 = v150;
      v130 = v172;
      *&v173[v125] = v150;
      *&v156[v125] = v130;
      sub_1D42D742C(v120, v125 + v121, &qword_1EC7CB720, &qword_1D4439D20);
      *(v166 + v125) = v178;
      v131 = v147;
      v132 = v160;
      *(v125 + v161) = v147;
      *(v125 + v122) = v132;
      v133 = v148;
      *(v125 + v123) = v148;
      v134 = v149;
      *(v125 + v124) = v149;
      v173 = v127;
      v166 = v126;
      v135 = v144;

      v179 = v179;
      v136 = v129;

      v137 = v131;
      v138 = v133;
      v139 = v134;
      v140 = v176;
      v141 = v163;
      sub_1D4419A14();

      sub_1D41769C4(v141, &qword_1EC7CB5C0, &qword_1D4439D28);
      sub_1D41769C4(v171, &qword_1EC7CB720, &qword_1D4439D20);
      (*(v170 + 8))(v169, v175);
      (*(v167 + 8))(v140, v168);
    }
  }

  v97 = v151;
  v98 = sub_1D44181A4();
  v99 = sub_1D441A164();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v180 = v101;
    *v100 = 136315138;
    v102 = [v97 shortLoggingDescription];
    v103 = v75;
    v104 = sub_1D4419C54();
    v177 = v97;
    v105 = v74;
    v107 = v106;

    v108 = v104;
    v75 = v103;
    v109 = sub_1D42E9410(v108, v107, &v180);
    v74 = v105;
    v97 = v177;

    *(v100 + 4) = v109;
    _os_log_impl(&dword_1D4171000, v98, v99, "Cannot insert graph because the Coherence context doesn't exist — deleting attachment {note: %s}", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x1DA6D8690](v101, -1, -1);
    MEMORY[0x1DA6D8690](v100, -1, -1);
  }

  v110 = v147;
  v111 = v152;
  v112 = v153;
  sub_1D41766C0(0, &qword_1EDE32920, 0x1E69B7680);
  [swift_getObjCClassFromMetadata() purgeAttachment_];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
  (*(*(v113 - 8) + 56))(v14, 1, 1, v113);
  sub_1D4371008(v14, v111, v178, v112, v179);

  sub_1D41769C4(v14, &qword_1EC7CB598, &qword_1D4439D10);
  (*(v167 + 8))(v176, v168);
}

uint64_t sub_1D4376348(uint64_t a1)
{
  v3 = *(sub_1D4417234() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720, &qword_1D4439D20) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D43715F4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v6), v1 + v8, *(v1 + v9), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1D43764C0()
{
  v1 = *(v0 + 16);
  sub_1D41766C0(0, &qword_1EDE32920, 0x1E69B7680);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata purgeAttachment_];
}

uint64_t sub_1D4376518()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720, &qword_1D4439D20) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D4372074(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id ActivityEventResolver.resolve(_:)(uint64_t a1)
{
  sub_1D4417D34();
  v1 = v5;
  if (v5)
  {
    v2 = v5;
    if ([v2 isVisible])
    {
      v3 = [v2 isSharedViaICloud];

      if (v3)
      {
        return v1;
      }
    }

    else
    {
    }

    return 0;
  }

  return v1;
}

void *ActivityEventResolver.object.getter()
{
  v1 = *(v0 + OBJC_IVAR___ActivityEventResolver_object);
  v2 = v1;
  return v1;
}

id ActivityEventResolver.init(object:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___ActivityEventResolver_objectCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB610, &qword_1D4439D70);
  swift_allocObject();
  *&v1[v4] = sub_1D4417D14();
  v5 = OBJC_IVAR___ActivityEventResolver_participantCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB620, &qword_1D4439D78);
  swift_allocObject();
  *&v1[v5] = sub_1D4417D14();
  v6 = OBJC_IVAR___ActivityEventResolver_participantAvatarCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB630, &qword_1D4439D80);
  swift_allocObject();
  *&v1[v6] = sub_1D4417D14();
  v7 = OBJC_IVAR___ActivityEventResolver_mentionsCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB640, &qword_1D4439D88);
  swift_allocObject();
  *&v1[v7] = sub_1D4417D14();
  v8 = OBJC_IVAR___ActivityEventResolver_itemCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB650, &qword_1D4439D90);
  swift_allocObject();
  *&v1[v8] = sub_1D4417D14();
  *&v1[OBJC_IVAR___ActivityEventResolver_objectDidUpdateShareObservation] = 0;
  if (a1 && (v9 = [a1 managedObjectContext]) != 0 || (v10 = objc_msgSend(objc_opt_self(), sel_sharedContext)) != 0 && (v11 = v10, v12 = objc_msgSend(v10, sel_managedObjectContext), v11, (v9 = v12) != 0))
  {
    *&v2[OBJC_IVAR___ActivityEventResolver_object] = a1;
    *&v2[OBJC_IVAR___ActivityEventResolver_context] = v9;
    v20.receiver = v2;
    v20.super_class = ObjectType;
    v13 = v9;
    v14 = a1;
    v15 = objc_msgSendSuper2(&v20, sel_init);
    if (a1)
    {
      v16 = v14;
      v15 = v15;
      sub_1D4376B80(v16);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for ICError(0);
    v15 = v17;
    v21 = 221;
    sub_1D42EA814(MEMORY[0x1E69E7CC0]);
    sub_1D43781E8(&qword_1EC7C94B8, type metadata accessor for ICError, &unk_1D4435548);
    sub_1D44170E4();
    swift_willThrow();

    swift_deallocPartialClassInstance();
  }

  return v15;
}

uint64_t sub_1D4376B80(void *a1)
{
  v2 = v1;
  v4 = sub_1D441A4A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultCenter];
  v9 = [a1 sharedRootObject];
  sub_1D441A4B4();

  *(swift_allocObject() + 16) = v2;
  sub_1D43781E8(&qword_1EDE326E0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v10 = v2;
  v11 = sub_1D4418474();

  (*(v5 + 8))(v7, v4);
  *&v10[OBJC_IVAR___ActivityEventResolver_objectDidUpdateShareObservation] = v11;
}

uint64_t sub_1D4376DE4()
{
  sub_1D4417D24();
  sub_1D4417D24();
  return sub_1D4417D24();
}

id ActivityEventResolver.resolves(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D4417914();
  v5 = v4;
  v6 = *(v2 + OBJC_IVAR___ActivityEventResolver_object);
  if (!v6 || (v7 = v3, (v8 = [v6 identifier]) == 0))
  {

    return 0;
  }

  v9 = v8;
  v10 = sub_1D4419C54();
  v12 = v11;

  if (v7 == v10 && v5 == v12)
  {

    goto LABEL_13;
  }

  v14 = sub_1D441AD84();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  result = [v6 isVisible];
  if (result)
  {
    return [v6 isSharedViaICloud];
  }

  return result;
}

id ActivityEventResolver.fetch(_:)()
{
  v1 = objc_opt_self();
  sub_1D4417914();
  v2 = sub_1D4419C14();

  v3 = [v1 cloudObjectWithIdentifier:v2 context:*(v0 + OBJC_IVAR___ActivityEventResolver_context)];

  return v3;
}

id sub_1D4376FC0(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_1D4417914();
  v3 = sub_1D4419C14();

  v4 = [v2 cloudObjectWithIdentifier:v3 context:*(a1 + OBJC_IVAR___ActivityEventResolver_context)];

  return v4;
}

id ActivityEventResolver.fetch(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ActivityEventResolver_object);
  if (v2)
  {
    sub_1D4417C04();
    v3 = sub_1D4419C14();

    v2 = [v2 participantForUserID_];
  }

  return v2;
}

id sub_1D437713C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ActivityEventResolver_object);
  if (v1)
  {
    sub_1D4417C04();
    v2 = sub_1D4419C14();

    v1 = [v1 participantForUserID_];
  }

  return v1;
}

id ActivityEventResolver.fetchMention(for:)()
{
  sub_1D4417C24();
  if (!v1)
  {
    return 0;
  }

  sub_1D43780A4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1D4419C14();
  v4 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v3 context:*(v0 + OBJC_IVAR___ActivityEventResolver_context)];

  return v4;
}

uint64_t ActivityEventResolver.resolveMention(for:)(uint64_t a1)
{
  sub_1D4417C24();
  sub_1D4417D34();

  return v2;
}

id sub_1D43772F8(uint64_t a1)
{
  sub_1D4417C24();
  if (!v2)
  {
    return 0;
  }

  sub_1D43780A4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_1D4419C14();
  v5 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v4 context:*(a1 + OBJC_IVAR___ActivityEventResolver_context)];

  return v5;
}

uint64_t sub_1D43773A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

Swift::String_optional __swiftcall ActivityEventResolver.fetchSnippet(for:)(Swift::OpaquePointer a1)
{
  v3 = sub_1D4417C84();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v54 = v6;
  rawValue = a1._rawValue;
  v7 = *(a1._rawValue + 2);
  v52 = v1;
  v53 = v6 + 16;
  v50 = (v6 + 8);
  v51 = OBJC_IVAR___ActivityEventResolver_mentionsCache;
  v56 = v1;
  v8 = 0;
  while (v7 != v8)
  {
    if (v8 >= v7)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v17 = sub_1D441A8C4();
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_11;
    }

    (*(v54 + 16))(v5, rawValue + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v8, v3);
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_29;
    }

    v10 = sub_1D4417C24();
    v11 = MEMORY[0x1EEE9AC00](v10);
    *(&v49 - 2) = v56;
    *(&v49 - 1) = v5;
    v57 = v11;
    v58 = v12;
    MEMORY[0x1EEE9AC00](v11);
    *(&v49 - 2) = sub_1D4378234;
    *(&v49 - 1) = v13;
    sub_1D4417D34();

    v14 = v59;
    v15 = (*v50)(v5, v3);
    ++v8;
    if (v14)
    {
      MEMORY[0x1DA6D5820](v15);
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D4419E94();
      }

      sub_1D4419EB4();
      v49 = v60;
      v8 = v9;
    }
  }

  v16 = v56;

  v7 = v49;
  v5 = (v49 & 0xFFFFFFFFFFFFFF8);
  if (v49 >> 62)
  {
    goto LABEL_32;
  }

  v17 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_33:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

LABEL_11:
  v18 = 0;
  v19 = v7 & 0xC000000000000001;
  v20 = MEMORY[0x1E69E7CC0];
  do
  {
    v21 = v18;
    while (1)
    {
      if (v19)
      {
        v22 = MEMORY[0x1DA6D6410](v21, v7);
        v18 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v21 >= *(v5 + 2))
        {
          goto LABEL_31;
        }

        v22 = *(v7 + 8 * v21 + 32);
        v18 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_30;
        }
      }

      v23 = v22;
      v24 = [v23 parentAttachment];
      if (v24)
      {
        break;
      }

      ++v21;
      if (v18 == v17)
      {
        goto LABEL_34;
      }
    }

    v25 = v24;
    v26 = [v24 attachmentType];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D438D5C8(0, *(v20 + 2) + 1, 1, v20);
    }

    v28 = *(v20 + 2);
    v27 = *(v20 + 3);
    if (v28 >= v27 >> 1)
    {
      v20 = sub_1D438D5C8((v27 > 1), v28 + 1, 1, v20);
    }

    *(v20 + 2) = v28 + 1;
    *&v20[2 * v28 + 32] = v26;
    v7 = v49;
  }

  while (v18 != v17);
LABEL_34:
  v29 = sub_1D439193C(v20);

  if (*(v29 + 16))
  {

    if (*(v29 + 16) == 1 && !sub_1D42DDE40(12, v29))
    {
      sub_1D42DDE40(10, v29);

      v47 = objc_opt_self();
      v40 = sub_1D4419C14();
      v41 = [v47 localizedFrameworkStringForKey:v40 value:0 table:0 allowSiri:1];
    }

    else
    {

      v39 = objc_opt_self();
      v40 = sub_1D4419C14();
      v41 = [v39 localizedFrameworkStringForKey:v40 value:0 table:0 allowSiri:1];
    }

    v38 = v41;
  }

  else
  {

    v30 = objc_opt_self();
    sub_1D43780A4();
    v31 = sub_1D4419E24();

    v32 = [v30 snippetForMentions_];

    v33 = v32;
    if (!v32)
    {
      sub_1D4419C54();
      v33 = sub_1D4419C14();
    }

    v34 = sub_1D4419C54();
    v36 = v35;

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {

      v42 = 0;
      v44 = 0;
      goto LABEL_47;
    }

    v38 = [v33 ic_quotedString];
  }

  v42 = sub_1D4419C54();
  v44 = v43;

LABEL_47:
  v45 = v42;
  v46 = v44;
  result.value._object = v46;
  result.value._countAndFlagsBits = v45;
  return result;
}

void ActivityEventResolver.resolve(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if ((*(v7 + 56))(v6, v7))
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = (*(v9 + 8))(v8, v9);
    MEMORY[0x1EEE9AC00](v10);
    sub_1D4417D34();
  }

  else
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    ActivityStreamItemConvertible.activityItem(resolver:)(v3, v11, v12, a2);
  }
}

uint64_t sub_1D4377BD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return ActivityStreamItemConvertible.activityItem(resolver:)(a2, v5, v6, a3);
}

id ActivityEventResolver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityEventResolver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D4377DA0()
{
  v1 = *(v0 + OBJC_IVAR___ActivityEventResolver_object);
  v2 = v1;
  return v1;
}

id sub_1D4377DD4()
{
  v1 = objc_opt_self();
  sub_1D4417914();
  v2 = sub_1D4419C14();

  v3 = [v1 cloudObjectWithIdentifier:v2 context:*(v0 + OBJC_IVAR___ActivityEventResolver_context)];

  return v3;
}

id sub_1D4377E60(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ActivityEventResolver_object);
  if (v2)
  {
    sub_1D4417C04();
    v3 = sub_1D4419C14();

    v2 = [v2 participantForUserID_];
  }

  return v2;
}

id sub_1D4377F4C(uint64_t a1)
{
  sub_1D4417C24();
  if (!v2)
  {
    return 0;
  }

  sub_1D43780A4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_1D4419C14();
  v5 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v4 context:*(v1 + OBJC_IVAR___ActivityEventResolver_context)];

  return v5;
}

uint64_t sub_1D4377FF4(uint64_t a1)
{
  sub_1D4417C24();
  sub_1D4417D34();

  return v2;
}

unint64_t sub_1D43780A4()
{
  result = qword_1EC7CB660;
  if (!qword_1EC7CB660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CB660);
  }

  return result;
}

uint64_t sub_1D43780F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1D4378128@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return ActivityStreamItemConvertible.activityItem(resolver:)(v4, v5, v6, a1);
}

uint64_t sub_1D43781E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1D4378240(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 2;
  *&v1[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction] = 0;
  v1[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_noteIsMerging] = 0;
  swift_unknownObjectWeakAssign();
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v26, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  v9 = *MEMORY[0x1E69B7530];
  v10 = v7;
  v11 = [a1 note];
  [v8 addObserver:v10 selector:sel_noteWillPerformMerge_ name:v9 object:v11];

  v12 = [v6 defaultCenter];
  v13 = *MEMORY[0x1E69B74E8];
  v14 = v10;
  v15 = [a1 note];
  [v12 addObserver:v14 selector:sel_noteDidPerformMerge_ name:v13 object:v15];

  v16 = [v6 defaultCenter];
  v17 = [a1 note];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 calculateDocumentController];

    if (v19)
    {
      v25 = v19;
      type metadata accessor for ICCalculateDocumentController(0);
      v19 = sub_1D441AD64();
    }
  }

  else
  {
    v19 = 0;
  }

  [v16 addObserver:v14 selector:sel_documentControllerDidUpdate_ name:@"ICCalculateDocumentControllerDidUpdateDocument" object:v19];

  swift_unknownObjectRelease();
  v20 = [v6 defaultCenter];
  v21 = *MEMORY[0x1E69DE750];
  v22 = v14;
  v23 = [a1 textView];
  [v20 addObserver:v22 selector:sel_textViewDidChangeText_ name:v21 object:v23];

  return v22;
}

void sub_1D437854C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state;
  v6 = *(v3 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state);
  v5 = *(v3 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 8);
  v7 = *(v3 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  if (v7)
  {
    if (v7 != 1)
    {
      return;
    }

    v8 = *(v3 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction);
    if (v8)
    {
      v11 = a3;
      sub_1D437A9C8(a1, a2, a3);
      v18 = v8;
      [v18 dismissMenu];
      sub_1D437A97C(v6, v5, 1);
      sub_1D437A97C(a1, a2, v11);

      return;
    }

    v15 = v6;
    v16 = v5;
    v17 = 1;
  }

  else
  {
    v14 = a3;
    sub_1D437A9C8(a1, a2, a3);
    [v5 invalidate];
    sub_1D437A97C(v6, v5, 0);
    v15 = a1;
    v16 = a2;
    v17 = v14;
  }

  sub_1D437A97C(v15, v16, v17);
}

double sub_1D43786BC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920, &unk_1D4436620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  v3 = *MEMORY[0x1E69B7B18];
  *(inited + 32) = sub_1D4419C54();
  *(inited + 72) = MEMORY[0x1E69E63B0];
  *(inited + 40) = v4;
  *(inited + 48) = 0x3FF8000000000000;
  sub_1D42EA814(inited);
  swift_setDeallocating();
  sub_1D41769C4(inited + 32, &unk_1EC7CB710, &unk_1D4436360);
  v5 = sub_1D4419B54();

  [v1 registerDefaults_];

  v6 = [v0 standardUserDefaults];
  [v6 doubleForKey_];
  v8 = v7;

  return v8;
}

void sub_1D4378830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720, &qword_1D4439D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  if (*(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16) == 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v6 = [Strong note];
  if (!v6)
  {
    v14 = v24;
LABEL_15:

    return;
  }

  v23 = v6;
  v7 = [v6 calculateDocumentController];
  if (!v7)
  {

    v14 = v23;
    goto LABEL_15;
  }

  v22 = v7;
  if (([v7 isCalculateMathEnabled] & 1) == 0)
  {

    v14 = v22;
    goto LABEL_15;
  }

  v8 = v1;
  sub_1D432A8EC(v4);
  v9 = sub_1D4419654();
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) != 1)
  {

    sub_1D41769C4(v4, &qword_1EC7CB720, &qword_1D4439D20);
    return;
  }

  sub_1D41769C4(v4, &qword_1EC7CB720, &qword_1D4439D20);
  if ((sub_1D4419754() & 1) == 0)
  {

    v13 = v24;
    goto LABEL_20;
  }

  sub_1D4189834();
  sub_1D4419954();

  if (!v25)
  {
LABEL_11:
    sub_1D437854C(0, 0, 2);

    v13 = v22;
LABEL_20:

    return;
  }

  v10 = sub_1D43096D4();
  if (v12)
  {

    goto LABEL_11;
  }

  v15 = [v24 insertionDecisionForExpressionsInRange_];
  v16 = objc_opt_self();
  v17 = v8;
  if (qword_1EC7C9218 != -1)
  {
    v21 = v16;
    swift_once();
    v16 = v21;
  }

  v18 = [v16 scheduledTimerWithTimeInterval:v17 target:sel_promptTimerDidFire_ selector:0 userInfo:0 repeats:*&qword_1EC7D13C0];
  v19 = v15;
  v20 = v18;
  sub_1D437854C(v15, v18, 0);
}

void sub_1D4378BAC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong note];

    if (v5)
    {
      v6 = [v5 calculateDocumentController];

      if (v6)
      {
        v7 = sub_1D437A350();
        if (!v7)
        {
LABEL_11:

          goto LABEL_13;
        }

        v8 = v7;
        v21 = sub_1D437ABCC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58, &qword_1D44363A0);
        sub_1D417645C(&unk_1EC7CB700, &qword_1EC7C9B58, &qword_1D44363A0, MEMORY[0x1E69E6340]);
        sub_1D441A0E4();

        if (!v22)
        {
LABEL_10:

          goto LABEL_11;
        }

        if (sub_1D4419754())
        {
          sub_1D4189834();
          sub_1D4419954();

          if (v21)
          {
            sub_1D43096D4();
            v10 = v9;

            if ((v10 & 1) == 0)
            {
              v20 = a1;
              sub_1D437854C(a1, 0, 1);
              sub_1D41766C0(0, &qword_1EC7CB728, 0x1E69DC9D8);
              v16 = sub_1D441A584();
              [v8 presentEditMenuWithConfiguration_];

              goto LABEL_17;
            }
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_13:
  v11 = v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state;
  v13 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state);
  v12 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 8);
  v14 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 2;
  if (v14)
  {
    if (v14 != 1)
    {
      return;
    }

    v15 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction);
    if (v15)
    {
      v16 = v15;
      [v16 dismissMenu];
      sub_1D437A97C(v13, v12, 1);
LABEL_17:

      return;
    }

    v17 = v13;
    v18 = v12;
    v19 = 1;
  }

  else
  {
    [v12 invalidate];
    v17 = v13;
    v18 = v12;
    v19 = 0;
  }

  sub_1D437A97C(v17, v18, v19);
}

void sub_1D4378EBC()
{
  v1 = v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state;
  v3 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state);
  v2 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 8);
  v4 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction);
    if (v5)
    {
      v9 = v5;
      [v9 dismissMenu];
      sub_1D437A97C(v3, v2, 1);

      return;
    }

    v6 = v3;
    v7 = v2;
    v8 = 1;
  }

  else
  {
    [v2 invalidate];
    v6 = v3;
    v7 = v2;
    v8 = 0;
  }

  sub_1D437A97C(v6, v7, v8);
}

uint64_t sub_1D4378FC0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result note];

    if (!v2)
    {
      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v4 = Strong, v5 = [Strong textView], v4, !v5))
    {
LABEL_11:

      return 0;
    }

    v6 = [v2 calculateDocumentController];
    if (!v6)
    {

      return 0;
    }

    v7 = v6;
    v19[0] = sub_1D437ABCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58, &qword_1D44363A0);
    sub_1D417645C(&unk_1EC7CB700, &qword_1EC7C9B58, &qword_1D44363A0, MEMORY[0x1E69E6340]);
    sub_1D441A0E4();

    if (!v21)
    {
LABEL_10:

      goto LABEL_11;
    }

    sub_1D4189834();
    sub_1D4419954();

    if (!v19[0] || (v8 = sub_1D43096D4(), v10 = v9, , (v10 & 1) != 0))
    {

      goto LABEL_10;
    }

    sub_1D43231A4();
    sub_1D43084A0(v8, 1, v19);

    v11 = v19[0];
    if (!v19[0])
    {

      return 0;
    }

    v12 = v19[1];
    v13 = v19[2];
    [v5 selectedRange];
    sub_1D441A6E4();
    if (v14)
    {
      v15 = v13 + v12;
      v16 = [v5 selectedRange];
      v18 = v17;

      v21 = v20;
      sub_1D42D5CC0(&v21);
      return v15 == v16 + v18;
    }

    else
    {

      v21 = v20;
      sub_1D42D5CC0(&v21);
      return 1;
    }
  }

  return result;
}

void sub_1D437934C()
{
  v1 = sub_1D4419444();
  v25 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D4419484();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41766C0(0, &qword_1EDE33D70, 0x1E69E9610);
  v7 = sub_1D441A2C4();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1D437AA14;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_16;
  v9 = _Block_copy(aBlock);
  v23 = v0;

  sub_1D4419464();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D437AA28(&qword_1EDE32AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520, &qword_1D4436F00);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520, &qword_1D4436F00, MEMORY[0x1E69E6328]);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v6, v3, v9);
  _Block_release(v9);

  v10 = v23;
  (*(v25 + 8))(v3, v1);
  (*(v4 + 8))(v6, v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong note];

    if (v13)
    {
      v14 = [v13 calculateDocumentController];

      if (v14)
      {
        if (v10[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16] < 2u)
        {
          v15 = *&v10[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state];
          aBlock[0] = sub_1D437ABCC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58, &qword_1D44363A0);
          sub_1D417645C(&unk_1EC7CB700, &qword_1EC7C9B58, &qword_1D44363A0, MEMORY[0x1E69E6340]);
          sub_1D441A0E4();
          v16 = v26;

          if (!v16)
          {

            goto LABEL_11;
          }

          sub_1D4189834();
          sub_1D4419954();

          if (aBlock[0] && (v17 = sub_1D43096D4(), v19 = v18, , (v19 & 1) == 0))
          {
            v21 = sub_1D437ACB0();
            if ((v22 & 1) != 0 || v17 != v21)
            {
              goto LABEL_9;
            }
          }

          else
          {
            sub_1D437ACB0();
            if ((v20 & 1) == 0)
            {
LABEL_9:
              sub_1D4378EBC();

LABEL_11:

              return;
            }
          }
        }
      }
    }
  }
}

void sub_1D43797F0()
{
  v1 = v0;
  v2 = sub_1D4416E84();
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  sub_1D4419C54();
  sub_1D441A954();
  if (!*(v3 + 16) || (v4 = sub_1D42D00F4(v38), (v5 & 1) == 0))
  {

    sub_1D42D7374(v38);
LABEL_22:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_23;
  }

  sub_1D42D5D14(*(v3 + 56) + 32 * v4, &v36);
  sub_1D42D7374(v38);

  if (!*(&v37 + 1))
  {
LABEL_23:
    sub_1D41769C4(&v36, &qword_1EC7C9720, &qword_1D4436990);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4E0, &unk_1D4438160);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = v38[0];
  v7 = sub_1D4416E84();
  if (!v7)
  {
LABEL_30:

    goto LABEL_22;
  }

  v8 = v7;
  sub_1D4419C54();
  sub_1D441A954();
  if (!*(v8 + 16) || (v9 = sub_1D42D00F4(v38), (v10 & 1) == 0))
  {

    sub_1D42D7374(v38);
    v36 = 0u;
    v37 = 0u;
    goto LABEL_26;
  }

  sub_1D42D5D14(*(v8 + 56) + 32 * v9, &v36);
  sub_1D42D7374(v38);

  if (!*(&v37 + 1))
  {
LABEL_26:

    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

    return;
  }

  v11 = v38[0];
  v12 = sub_1D4416E84();
  if (!v12)
  {

    goto LABEL_30;
  }

  v13 = v12;
  sub_1D4419C54();
  sub_1D441A954();
  if (!*(v13 + 16) || (v14 = sub_1D42D00F4(v38), (v15 & 1) == 0))
  {

    sub_1D42D7374(v38);
    v36 = 0u;
    v37 = 0u;
    goto LABEL_28;
  }

  sub_1D42D5D14(*(v13 + 56) + 32 * v14, &v36);
  sub_1D42D7374(v38);

  if (!*(&v37 + 1))
  {
LABEL_28:

    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_32;
  }

  v16 = v38[0];
  if (*(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16) < 2u && (v17 = *(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state), v18 = sub_1D437ABCC(), v17, v38[0] = v18, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58, &qword_1D44363A0), sub_1D417645C(&unk_1EC7CB700, &qword_1EC7C9B58, &qword_1D44363A0, MEMORY[0x1E69E6340]), sub_1D441A0E4(), , v36))
  {
    v19 = sub_1D42DDF0C(v36, v6);

    if (v19)
    {
      sub_1D4378EBC();
    }
  }

  else
  {
  }

  if (*(v1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_noteIsMerging))
  {
  }

  else
  {
    v20 = sub_1D42DE1BC(v16, v11);
    if ((v20 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D441A874();
      sub_1D44198E4();
      sub_1D437AA28(&qword_1EC7C9820, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
      sub_1D441A0A4();
      v22 = v38[0];
      v21 = v38[1];
      v23 = v38[2];
      v24 = v38[3];
      v25 = v38[4];
    }

    else
    {
      v26 = -1 << *(v20 + 32);
      v21 = v20 + 56;
      v23 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(v20 + 56);
      v24 = 0;
    }

    v29 = (v23 + 64) >> 6;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_43:
    if (sub_1D441A8F4())
    {
      sub_1D44198E4();
      swift_dynamicCast();
      v30 = v36;
      v31 = v24;
      v32 = v25;
      while (v30)
      {

        v35 = sub_1D4419754();

        if (v35)
        {
          sub_1D419FA48(v22);

          sub_1D4378830(v30);

          return;
        }

        v24 = v31;
        v25 = v32;
        if (v22 < 0)
        {
          goto LABEL_43;
        }

LABEL_45:
        v33 = v24;
        v34 = v25;
        v31 = v24;
        if (!v25)
        {
          while (1)
          {
            v31 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v31 >= v29)
            {
              goto LABEL_54;
            }

            v34 = *(v21 + 8 * v31);
            ++v33;
            if (v34)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
          return;
        }

LABEL_49:
        v32 = (v34 - 1) & v34;
        v30 = *(*(v22 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v34)))));
      }
    }

LABEL_54:
    sub_1D419FA48(v22);
  }
}

void sub_1D4379DFC()
{
  v1 = (v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state);
  if (*(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16) <= 1u)
  {
    v2 = *v1;
    v7 = *v1;
    if (sub_1D4378FC0())
    {
      v3 = objc_opt_self();
      if (qword_1EC7C9218 != -1)
      {
        v6 = v3;
        swift_once();
        v3 = v6;
      }

      v4 = [v3 scheduledTimerWithTimeInterval:v0 target:sel_promptTimerDidFire_ selector:0 userInfo:0 repeats:*&qword_1EC7D13C0];
      v5 = v7;
      v7 = v4;
      sub_1D437854C(v2, v4, 0);
    }

    else
    {
      sub_1D437854C(0, 0, 2);
    }
  }
}

uint64_t sub_1D4379F4C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1D4416E94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t get_enum_tag_for_layout_string_So29ICCalculateGraphingControllerC7NotesUIE015InsertionPromptC0C6StatesO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D437A29C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D437A2E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D437A328(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D437A350()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong textView];

    if (v3)
    {
      v4 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction;
      if (!*(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction))
      {
        v5 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
        [v3 addInteraction_];

        v3 = *(v0 + v4);
        *(v0 + v4) = v5;
      }
    }
  }

  return *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction);
}

void sub_1D437A41C()
{
  v1 = (v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state);
  if (!*(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16))
  {
    v2 = *v1;
    v11 = *v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v4 = Strong, v5 = [Strong scrubberController], v4, v5) && (v6 = objc_msgSend(v5, sel_isShowing), v5, v6))
    {
      v7 = objc_opt_self();
      if (qword_1EC7C9218 != -1)
      {
        v10 = v7;
        swift_once();
        v7 = v10;
      }

      v8 = [v7 scheduledTimerWithTimeInterval:v0 target:sel_promptTimerDidFire_ selector:0 userInfo:0 repeats:*&qword_1EC7D13C0];
      v9 = v11;
      v11 = v8;
      sub_1D437854C(v2, v8, 0);
    }

    else
    {
      sub_1D4378BAC(v11);
    }
  }
}

double sub_1D437A594()
{
  v1 = v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state;
  v2 = 0.0;
  if (*(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16) == 1)
  {
    v4 = *v1;
    v3 = *(v1 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v4;
      v7 = [v6 textView];

      if (v7)
      {
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8 && (v9 = v8, v10 = [v8 note], v9, v10) && (v11 = objc_msgSend(v10, sel_calculateDocumentController), v10, v11))
        {
          v36 = sub_1D437ABCC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58, &qword_1D44363A0);
          sub_1D417645C(&unk_1EC7CB700, &qword_1EC7C9B58, &qword_1D44363A0, MEMORY[0x1E69E6340]);
          sub_1D441A0E4();
          if (v35)
          {

            sub_1D4189834();
            sub_1D4419954();

            if (v36)
            {
              sub_1D43096D4();
              v13 = v12;

              if ((v13 & 1) == 0)
              {
                v14 = swift_unknownObjectWeakLoadStrong();
                if (v14)
                {
                  v15 = v14;
                  sub_1D4374F98(v35);
                  v17 = v16;
                  v19 = v18;
                  v21 = v20;

                  if ((v21 & 1) == 0)
                  {
                    [v7 ic:v17 rectForRange:v19];
                    v24 = v23;
                    v26 = v25;
                    v28 = v27;
                    v30 = v29;
                    [v7 textContainerInset];
                    v32 = v31;
                    v34 = v33;
                    v37.origin.x = v24;
                    v37.origin.y = v26;
                    v37.size.width = v28;
                    v37.size.height = v30;
                    *&v2 = CGRectOffset(v37, v34, v32);

                    sub_1D437A97C(v4, v3, 1);
                    return v2;
                  }
                }
              }
            }

            sub_1D437A97C(v4, v3, 1);
          }

          else
          {
            sub_1D437A97C(v4, v3, 1);
          }
        }

        else
        {
          sub_1D437A97C(v4, v3, 1);
        }
      }

      else
      {
        sub_1D437A97C(v4, v3, 1);
      }
    }
  }

  return v2;
}

void sub_1D437A89C()
{
  v1 = v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state;
  if (*(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state + 16) == 1)
  {
    v2 = *v1;
    v3 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 2;
    v4 = *(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_editMenuInteraction);
    if (v4)
    {
      v5 = v4;
      [v5 dismissMenu];
      sub_1D437A97C(v2, v3, 1);
    }

    else
    {

      sub_1D437A97C(v2, v3, 1);
    }
  }
}

void sub_1D437A97C(void *a1, void *a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    a1 = a2;
  }
}

id sub_1D437A9C8(id result, void *a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

uint64_t sub_1D437AA28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D437AA70@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &unk_1EC7CB731);
  swift_endAccess();
  if (v3)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a1, v5 ^ 1u, 1, v4);
  }

  else
  {
    sub_1D418D074(v10);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB590, &qword_1D4439D08);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_1D437ABCC()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EC7CB730);
  swift_endAccess();
  if (v1)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58, &qword_1D44363A0);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1D418D074(v6);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D437ACB0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EC7CB732);
  swift_endAccess();
  if (v1)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D418D074(v6);
    return 0;
  }
}

uint64_t sub_1D437AD90()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CB738);
  __swift_project_value_buffer(v0, qword_1EC7CB738);
  return sub_1D4418104();
}

id static ThumbnailCache.shared.getter()
{
  if (qword_1EDE33398 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE333A0;

  return v1;
}

void sub_1D437AEC8(id *a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *a1;
  ThumbnailCache.subscript.setter(v4, v3);
}

void sub_1D437AF0C(void *a1)
{
  if ([a1 cacheLevel] >= 1)
  {
    v3 = [a1 uniqueKey];
    sub_1D4417D54();
    if ([a1 cacheLevel] >= 2)
    {
      v2 = [a1 uniqueKey];
      sub_1D43445F4(v2);
    }
  }
}

uint64_t sub_1D437AFE0(void *a1)
{
  v3 = sub_1D4419444();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D4419484();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR___ICThumbnailCache_cacheKeyQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1D437EE1C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_1D4419464();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D418D5E4(&qword_1EDE32AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520, &qword_1D4436F00);
  sub_1D418D674(&qword_1EDE32A70, &qword_1EC7CA520, &qword_1D4436F00);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void (*ThumbnailCache.subscript.modify(void *a1, void *a2))(uint64_t a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  sub_1D418C3D4(a2);
  *a1 = v4;
  return sub_1D437B314;
}

void sub_1D437B314(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    v4 = v3;
    ThumbnailCache.subscript.setter(v3, v2);
  }

  else
  {
    ThumbnailCache.subscript.setter(v3, v2);
  }
}

void ThumbnailCache.creationDate(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 cacheLevel] < 1)
  {
    v6 = sub_1D4417434();
    v7 = *(*(v6 - 8) + 56);

    v7(a2, 1, 1, v6);
  }

  else
  {
    v10 = [a1 uniqueKey];
    sub_1D4417D44();

    if (v11)
    {
      v4 = [v11 creationDate];
      sub_1D44173F4();

      v5 = sub_1D4417434();
      (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    }

    else if ([a1 cacheLevel] < 2)
    {
      v9 = sub_1D4417434();
      (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
    }

    else
    {
      v8 = [a1 uniqueKey];
      sub_1D4343BD0(v8, a2);
    }
  }
}

void sub_1D437B6DC(void *a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  v4 = sub_1D4417434();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11DescriptionVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D441AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 image];
  if (!v14)
  {
    sub_1D441AA24();
    v22 = sub_1D441AA74();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB778, &qword_1D4439F08) + 48);
    v26 = [a1 image];
    *(v24 + 3) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB780, &qword_1D4439F10);
    *v24 = v26;
    (*(v11 + 16))(&v24[v25], v13, v10);
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B30], v22);
    swift_willThrow();

    (*(v11 + 8))(v13, v10);
    return;
  }

  v81 = v14;
  v82 = v2;
  v15 = [a1 configuration];
  v86 = [v15 uniqueKey];

  v16 = [a1 configuration];
  v79 = [v16 thumbnailType];

  v17 = [a1 creationDate];
  sub_1D44173F4();

  v18 = [a1 configuration];
  v19 = [v18 associatedObjectTitle];

  if (v19)
  {
    v20 = sub_1D4419C54();
    v84 = v21;
    v85 = v20;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  v27 = [a1 associatedObjectIdentifiers];
  v78 = sub_1D441A064();

  v28 = [a1 configuration];
  v29 = [v28 appearanceInfo];

  v77 = [v29 type];
  v30 = [a1 configuration];
  [v30 preferredSize];
  v32 = v31;
  v34 = v33;

  v35 = [a1 configuration];
  [v35 scale];
  v37 = v36;

  v38 = [a1 configuration];
  v39 = [v38 backgroundColor];

  v80 = v6;
  if (!v39)
  {
    goto LABEL_10;
  }

  v40 = [v39 CGColor];

  v41 = v40;
  v42 = ICStringFromCGColor();
  if (!v42)
  {

LABEL_10:
    v44 = 0;
    v46 = 0;
    goto LABEL_11;
  }

  v43 = v42;
  v44 = sub_1D4419C54();
  v46 = v45;

LABEL_11:
  v47 = [a1 imageScaling];
  v48 = [a1 thumbnailDecorationType];
  v83 = a1;
  v49 = [a1 configuration];
  v50 = [v49 hasBorder];

  v52 = v79;
  v51 = v80;
  *v9 = v86;
  *(v9 + 1) = v52;
  v53 = v7[6];
  (*(v87 + 32))(&v9[v53], v51, v88);
  v54 = &v9[v7[7]];
  v55 = v84;
  *v54 = v85;
  v54[1] = v55;
  v56 = v77;
  *&v9[v7[8]] = v78;
  *&v9[v7[9]] = v56;
  v57 = &v9[v7[10]];
  *v57 = v32;
  *(v57 + 1) = v34;
  *&v9[v7[11]] = v37;
  v58 = &v9[v7[12]];
  *v58 = v44;
  v58[1] = v46;
  *&v9[v7[13]] = v47;
  *&v9[v7[14]] = v48;
  v9[v7[15]] = v50;
  if (qword_1EDE332A0 != -1)
  {
    swift_once();
  }

  sub_1D418D5E4(&qword_1EDE33368, _s11DescriptionVMa, &unk_1D4439F70);
  v59 = v82;
  v60 = sub_1D4416D84();
  if (v59)
  {
    sub_1D437EDBC(v9, _s11DescriptionVMa);
  }

  else
  {
    v62 = v60;
    v63 = v61;
    v64 = type metadata accessor for PersistedThumbnail(0);
    v65 = v76;
    (*(v87 + 16))(v76 + v64[5], &v9[v53], v88);
    v66 = v84;

    v88 = v86;
    v67 = v81;
    v68 = [v81 ic_PNGData];
    v69 = sub_1D4417264();
    v86 = v70;
    v87 = v69;

    sub_1D437EDBC(v9, _s11DescriptionVMa);
    *v65 = v88;
    v71 = (v65 + v64[6]);
    *v71 = v85;
    v71[1] = v66;
    *(v65 + v64[7]) = v37;
    *(v65 + v64[8]) = 0;
    v72 = (v65 + v64[9]);
    *v72 = v62;
    v72[1] = v63;
    v73 = (v65 + v64[10]);
    v74 = v86;
    *v73 = v87;
    v73[1] = v74;
  }
}

char *sub_1D437BE9C()
{
  v2 = v0;
  v3 = sub_1D441AA34();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11DescriptionVMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE332A8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for PersistedThumbnail(0);
  sub_1D418D5E4(&qword_1EC7CB790, _s11DescriptionVMa, &unk_1D4439F48);
  sub_1D4416D54();
  if (!v1)
  {
    v10 = v6[14];
    v51 = *&v8[v6[13]];
    v52 = 0;
    v50 = *(v8 + 1);
    v11 = *&v8[v10];
    v53 = v9;
    v12 = *(v0 + *(v9 + 28));
    v13 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v14 = sub_1D4417254();
    v15 = [v13 initWithData:v14 scale:v12];

    if (!v15)
    {
      sub_1D441AA24();
      v19 = sub_1D441AA44();
      swift_allocError();
      v21 = v20;
      v23 = v54;
      v22 = v55;
      (v54[2])(v20, v5, v55);
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
      swift_willThrow();
      v23[1](v5, v22);
      sub_1D437EDBC(v8, _s11DescriptionVMa);
      return v5;
    }

    v54 = v15;
    v16 = *&v8[v6[12] + 8];
    v49 = v11;
    if (v16)
    {

      v17 = sub_1D4419C14();
      v18 = ICCGColorCreateWithString();

      if (v18)
      {
        v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      }

      else
      {
        v16 = 0;
      }
    }

    v24 = *v2;
    v25 = (*v2 + OBJC_IVAR___ICThumbnailKey_objectId);
    v26 = v25[1];
    v48[0] = *v25;
    v27 = (v2 + *(v53 + 24));
    v28 = v27[1];
    v48[1] = *v27;
    v29 = *(v24 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
    v48[2] = *(v24 + OBJC_IVAR___ICThumbnailKey_accountId);
    v30 = &v8[v6[10]];
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v53 + 32);
    v55 = v2;
    v34 = *(v2 + v33);
    v35 = objc_opt_self();

    v36 = [v35 appearanceInfoWithType_];
    v37 = v8[v6[15]];
    v38 = v16;
    if (v26)
    {
      v39 = sub_1D4419C14();

      if (!v28)
      {
LABEL_13:
        if (v29)
        {
          v40 = sub_1D4419C14();
        }

        else
        {
          v40 = 0;
        }

        v41 = objc_allocWithZone(ICThumbnailConfiguration);
        LOBYTE(v47) = v37;
        v42 = [v41 initWithThumbnailType:v50 associatedObject:0 associatedObjectIdentifier:v39 associatedObjectTitle:v28 accountIdentifier:v40 cacheLevel:2 preferredSize:v31 scale:v32 appearanceInfo:v12 backgroundColor:v36 hasBorder:{v38, v47}];

        v5 = [objc_allocWithZone(ICThumbnailDescription) initWithConfiguration_];
        v43 = sub_1D44173A4();
        [v5 setCreationDate_];

        [v5 setCached_];
        v44 = sub_1D441A054();
        [v5 setAssociatedObjectIdentifiers_];

        v45 = v54;
        [v5 setImage_];
        [v5 setImageScaling_];
        [v5 setThumbnailDecorationType_];

        sub_1D437EDBC(v8, _s11DescriptionVMa);
        return v5;
      }
    }

    else
    {
      v39 = 0;
      if (!v28)
      {
        goto LABEL_13;
      }
    }

    v28 = sub_1D4419C14();
    goto LABEL_13;
  }

  return v5;
}

uint64_t sub_1D437C4D0(uint64_t a1)
{
  v3 = sub_1D4419444();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D4419484();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR___ICThumbnailCache_cacheKeyQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1D437D55C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_12_1;
  v11 = _Block_copy(aBlock);

  v12 = v1;
  sub_1D4419464();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D418D5E4(&qword_1EDE32AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520, &qword_1D4436F00);
  sub_1D418D674(&qword_1EDE32A70, &qword_1EC7CA520, &qword_1D4436F00);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_1D437C808()
{
  v0 = sub_1D4419454();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4419484();
  __swift_allocate_value_buffer(v4, qword_1EDE333B8);
  __swift_project_value_buffer(v4, qword_1EDE333B8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  return sub_1D4419474();
}

double sub_1D437C910(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___ICThumbnailCache_objectIdentifiersToCacheKeys;
  swift_beginAccess();
  v5 = a2;

  v7 = sub_1D437EE24(v6, v5);

  sub_1D4389780(v8);
  v13 = v9;

  sub_1D4389780(v10);
  sub_1D437E824(v11);
  *(a1 + v4) = v7;

  sub_1D437C9E4(v13);

  return result;
}

void sub_1D437C9E4(uint64_t a1)
{
  v3 = [objc_opt_self() sharedContext];
  if (v3 && (v4 = v3, v5 = [v3 workerManagedObjectContext], v4, v5))
  {
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = v5;
    v6[4] = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1D437E424;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1D437F9A4;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D418D6C8;
    aBlock[3] = &block_descriptor_21_0;
    v8 = _Block_copy(aBlock);

    v9 = v5;
    v10 = v1;

    [v9 performBlockAndWait_];

    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EC7C9220 != -1)
    {
      swift_once();
    }

    v11 = sub_1D44181B4();
    __swift_project_value_buffer(v11, qword_1EC7CB738);
    oslog = sub_1D44181A4();
    v12 = sub_1D441A164();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D4171000, oslog, v12, "Cannot create worker context", v13, 2u);
      MEMORY[0x1DA6D8690](v13, -1, -1);
    }
  }
}

void sub_1D437CC80(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = OBJC_IVAR___ICThumbnailCache_objectIdentifiersToCacheKeys;
  v9 = (v5 + 63) >> 6;
  v10 = 0;
  v38 = OBJC_IVAR___ICThumbnailCache_objectIdentifiersToCacheKeys;
  v35 = v9;
  v36 = a1 + 56;

LABEL_7:
  if (!v7)
  {
    do
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_35;
      }

      if (v11 >= v9)
      {

        sub_1D437C9E4(v3);
        return;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
    }

    while (!v7);
    v10 = v11;
  }

  v12 = (*(v3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
  v13 = *v12;
  v14 = v12[1];
  swift_beginAccess();

  v15 = sub_1D418DA8C(v13, v14);
  if ((v16 & 1) == 0)
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v17 = v8;
  v18 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + v17);
  *(v2 + v17) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D42D59A0();
  }

  v21 = *(*(v20 + 56) + 8 * v18);
  sub_1D4322920(v18, v20);
  *(v2 + v17) = v20;
  swift_endAccess();

  if ((v21 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    type metadata accessor for ThumbnailKey();
    sub_1D418D5E4(&qword_1EC7CB770, type metadata accessor for ThumbnailKey, MEMORY[0x1E69E81B8]);
    sub_1D441A0A4();
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
  }

  else
  {
    v26 = -1 << *(v21 + 32);
    v22 = v21 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 56);

    v24 = 0;
  }

  if (v21 < 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v29 = v24;
    v30 = v25;
    v31 = v24;
    if (!v25)
    {
      break;
    }

LABEL_26:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v21 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
LABEL_32:
      sub_1D419FA48(v21);
      v2 = a2;
      v4 = v36;
      v3 = v37;
      v9 = v35;
LABEL_6:
      v7 &= v7 - 1;

      v8 = v38;
      goto LABEL_7;
    }

    while (1)
    {
      v40 = 0;
      v34 = v33;
      sub_1D4417D54();

      v24 = v31;
      v25 = v32;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_28:
      if (sub_1D441A8F4())
      {
        type metadata accessor for ThumbnailKey();
        swift_dynamicCast();
        v33 = v40;
        v31 = v24;
        v32 = v25;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= ((v23 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v30 = *(v22 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1D437D014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = sub_1D438DA40(*(a1 + 16), 0);
    v7 = sub_1D43C1CAC(v37, v6 + 4, v4, a1);
    v8 = *&v37[0];

    sub_1D419FA48(v8);
    if (v7 != v4)
    {
      __break(1u);
    }
  }

  v9 = objc_opt_self();
  v10 = sub_1D4419E24();

  v11 = [v9 predicateForObjectsWithIdentifiers_];

  sub_1D41766C0(0, &qword_1EDE32710, 0x1E69B7700);
  v12 = [swift_getObjCClassFromMetadata() ic:v11 objectIDsMatchingPredicate:a2 context:?];
  v36 = sub_1D41766C0(0, &qword_1EDE32768, 0x1E695D630);
  v13 = sub_1D4419E44();

  if (v13 >> 62)
  {
    goto LABEL_17;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v34 = objc_opt_self();
      if (v14 < 1)
      {
        break;
      }

      v32 = v11;
      v33 = v13 & 0xC000000000000001;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99D8, &qword_1D44360A8);
      v15 = 0;
      while (1)
      {
        v16 = v33 ? MEMORY[0x1DA6D6410](v15, v13) : *(v13 + 8 * v15 + 32);
        v17 = v16;
        v18 = [v34 defaultCenter];
        *&v37[0] = sub_1D4419C54();
        *(&v37[0] + 1) = v19;
        v20 = @"ICThumbnailCacheDidInvalidateThumbnailNotification";
        sub_1D441A954();
        v40[8] = v36;
        v40[5] = v17;
        v11 = sub_1D441AC24();
        v21 = v17;
        sub_1D437ED00(v40, v37);
        v22 = sub_1D42D00F4(v37);
        if (v23)
        {
          break;
        }

        v11[(v22 >> 6) + 8] |= 1 << v22;
        v24 = v11[6] + 40 * v22;
        v25 = v37[0];
        v26 = v37[1];
        *(v24 + 32) = v38;
        *v24 = v25;
        *(v24 + 16) = v26;
        sub_1D417CF84(&v39, (v11[7] + 32 * v22));
        v27 = v11[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_16;
        }

        ++v15;
        v11[2] = v29;
        sub_1D41769C4(v40, &qword_1EC7C9FE0, &unk_1D44360B0);
        v30 = v13;
        v31 = sub_1D4419B54();

        [v18 postNotificationName:v20 object:a3 userInfo:v31];

        v13 = v30;
        if (v14 == v15)
        {

          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v14 = sub_1D441A8C4();
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

id ThumbnailCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ThumbnailCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D437D564(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x676E696C616373;
    v7 = 0x697461726F636564;
    if (a1 != 10)
    {
      v7 = 0x6564726F42736168;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6572726566657270;
    v9 = 0x656C616373;
    if (a1 != 7)
    {
      v9 = 0x756F72676B636162;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7955819;
    v2 = 0x656C746974;
    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0x6E61726165707061;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1701869940;
    if (a1 != 1)
    {
      v4 = 0x6E6F697461657263;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D437D6FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB7A0, &qword_1D4439F98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D437F230();
  sub_1D441AF94();
  *&v11 = *v3;
  v12 = 0;
  type metadata accessor for ThumbnailKey();
  sub_1D418D5E4(&qword_1EDE33540, type metadata accessor for ThumbnailKey, &protocol conformance descriptor for ThumbnailKey);
  sub_1D441AD24();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1D441AD04();
    v9 = _s11DescriptionVMa(0);
    LOBYTE(v11) = 2;
    sub_1D4417434();
    sub_1D418D5E4(&qword_1EDE33828, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D441AD24();
    LOBYTE(v11) = 3;
    sub_1D441ACC4();
    *&v11 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB7A8, &qword_1D4439FA0);
    sub_1D437F284(&qword_1EDE32A28, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D441AD24();
    LOBYTE(v11) = 5;
    sub_1D441AD14();
    v11 = *(v3 + v9[10]);
    v12 = 6;
    type metadata accessor for CGSize(0);
    sub_1D418D5E4(&unk_1EDE32450, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1D441AD24();
    *&v11 = *(v3 + v9[11]);
    v12 = 7;
    sub_1D4344E7C();
    sub_1D441AD24();
    LOBYTE(v11) = 8;
    sub_1D441ACC4();
    LOBYTE(v11) = 9;
    sub_1D441AD14();
    LOBYTE(v11) = 10;
    sub_1D441AD04();
    LOBYTE(v11) = 11;
    sub_1D441ACF4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D437DB7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1D4417434();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB7B0, &qword_1D4439FA8);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = _s11DescriptionVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D437F230();
  v35 = v9;
  sub_1D441AF84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v14 = v33;
    v29 = v4;
    v30 = v10;
    v28 = v12;
    type metadata accessor for ThumbnailKey();
    v38 = 0;
    sub_1D418D5E4(&qword_1EDE33538, type metadata accessor for ThumbnailKey, &protocol conformance descriptor for ThumbnailKey);
    sub_1D441ACB4();
    v15 = v28;
    *v28 = v37;
    LOBYTE(v37) = 1;
    *(v15 + 1) = sub_1D441AC94();
    LOBYTE(v37) = 2;
    sub_1D418D5E4(&qword_1EDE33820, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v16 = v29;
    sub_1D441ACB4();
    (*(v32 + 32))(&v15[v30[6]], v6, v16);
    LOBYTE(v37) = 3;
    v17 = sub_1D441AC54();
    v18 = &v15[v30[7]];
    *v18 = v17;
    v18[1] = v19;
    v27 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB7A8, &qword_1D4439FA0);
    v38 = 4;
    sub_1D437F284(&qword_1EC7CB7B8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1D441ACB4();
    *&v15[v30[8]] = v37;
    LOBYTE(v37) = 5;
    *&v15[v30[9]] = sub_1D441ACA4();
    type metadata accessor for CGSize(0);
    v38 = 6;
    sub_1D418D5E4(&qword_1EC7CB7C0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1D441ACB4();
    *&v15[v30[10]] = v37;
    v38 = 7;
    sub_1D4344D78();
    sub_1D441ACB4();
    *&v15[v30[11]] = v37;
    LOBYTE(v37) = 8;
    v20 = sub_1D441AC54();
    v21 = &v15[v30[12]];
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v37) = 9;
    *&v28[v30[13]] = sub_1D441ACA4();
    LOBYTE(v37) = 10;
    *&v28[v30[14]] = sub_1D441AC94();
    LOBYTE(v37) = 11;
    v23 = sub_1D441AC84();
    (*(v14 + 8))(v35, v34);
    v24 = v31;
    v25 = v23 & 1;
    v26 = v28;
    v28[v30[15]] = v25;
    sub_1D437F2F0(v26, v24);
    __swift_destroy_boxed_opaque_existential_0(v36);
    sub_1D437EDBC(v26, _s11DescriptionVMa);
  }
}

uint64_t sub_1D437E348@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D437F5AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D437E37C(uint64_t a1)
{
  v2 = sub_1D437F230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D437E3B8(uint64_t a1)
{
  v2 = sub_1D437F230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D437E430(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0, &qword_1D4436090);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v37 - v4;
  v5 = sub_1D4417494();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v50 = &v37 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v42 = &v37 - v13;
  v43 = v12;
  v14 = 0;
  v44 = v1;
  v45 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v39 = v12 + 32;
  v40 = v21;
  v48 = (v12 + 8);
  v49 = v12 + 16;
  v41 = v16;
  if ((v19 & v15) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      do
      {
LABEL_9:
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = v42;
        v24 = v43;
        v26 = *(v43 + 72);
        v27 = *(v45 + 48) + v26 * (v23 | (v14 << 6));
        v46 = *(v43 + 16);
        v47 = v26;
        v46(v42, v27, v5);
        (*(v24 + 32))(v50, v25, v5);
        v28 = *v1;
        if (*(*v1 + 16) && (sub_1D418D5E4(&qword_1EDE33D40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v29 = sub_1D4419B84(), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          while (1)
          {
            v46(v8, *(v28 + 48) + v31 * v47, v5);
            sub_1D418D5E4(&unk_1EDE33D30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v33 = sub_1D4419BE4();
            v34 = *v48;
            (*v48)(v8, v5);
            if (v33)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v35 = v38;
          v36 = v50;
          v1 = v44;
          sub_1D43CB774(v50, v38);
          sub_1D41769C4(v35, &unk_1EC7CA4F0, &qword_1D4436090);
          result = v34(v36, v5);
        }

        else
        {
LABEL_14:
          v1 = v44;
          sub_1D417CFFC(v8, v50);
          result = (*v48)(v8, v5);
        }

        v21 = v40;
        v16 = v41;
      }

      while (v20);
    }
  }

  __break(1u);
  return result;
}

void sub_1D437E824(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v20;
      sub_1D43C5A30(&v22, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_1D441AEB4();

    sub_1D4419CD4();
    v14 = sub_1D441AF04();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_1D441AD84() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v20;
    sub_1D43CBA40(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

void sub_1D437EA0C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D441A874();
    type metadata accessor for ThumbnailKey();
    sub_1D418D5E4(&qword_1EC7CB770, type metadata accessor for ThumbnailKey, MEMORY[0x1E69E81B8]);
    sub_1D441A0A4();
    v3 = v30;
    v25 = v31;
    v4 = v32;
    v27 = v33;
    v5 = v34;
  }

  else
  {
    v27 = 0;
    v6 = -1 << *(a1 + 32);
    v25 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  type metadata accessor for ThumbnailKey();
  v9 = (v4 + 64) >> 6;
  v26 = v3;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  v14 = sub_1D441A8F4();
  if (!v14)
  {
LABEL_30:
    sub_1D419FA48(v3);
    return;
  }

  v28 = v14;
  swift_dynamicCast();
  for (i = v29; ; i = v29)
  {
    v15 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v16 = i;
      v17 = sub_1D441A904();

      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!*(v15 + 16) || (v19 = sub_1D441A5D4(), v20 = -1 << *(v15 + 32), v21 = v19 & ~v20, ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
      {
LABEL_9:
        sub_1D418DED8(&v28, i);

        v3 = v26;
        if (v26 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v15 + 48) + 8 * v21);
        v24 = sub_1D441A5E4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    v18 = sub_1D43CBD24(i);

    v3 = v26;
    if (v26 < 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (!v5)
    {
      break;
    }

    v10 = v27;
LABEL_17:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v29 = *(*(v3 + 48) + ((v10 << 9) | (8 * v12)));
  }

  v11 = v27;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_30;
    }

    v5 = *(v25 + 8 * v10);
    ++v11;
    if (v5)
    {
      v27 = v10;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1D437ED00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FE0, &unk_1D44360B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11DescriptionVMa(uint64_t a1)
{
  result = qword_1EDE33308;
  if (!qword_1EDE33308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D437EDBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D437EE24(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97C8, &qword_1D4435DA8);
  result = sub_1D441ABF4();
  v4 = 0;
  v28 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v26 = result + 8;
  v27 = result;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v28 + 48) + 16 * v15);
      v17 = v16[1];
      v31 = *v16;
      v18 = *(*(v28 + 56) + 8 * v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70, &qword_1D4438E40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4438490;
      *(inited + 32) = a2;
      swift_bridgeObjectRetain_n();

      v20 = a2;
      v21 = sub_1D43919E8(inited);

      sub_1D437EA0C(v21);

      result = v27;
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v22 = (v27[6] + 16 * v15);
      *v22 = v31;
      v22[1] = v17;
      *(v27[7] + 8 * v15) = v18;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      v10 = v30;
      if (!v30)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D437F050(uint64_t a1)
{
  type metadata accessor for ThumbnailKey();
  if (v1 <= 0x3F)
  {
    sub_1D4417434();
    if (v2 <= 0x3F)
    {
      sub_1D41873A4();
      if (v3 <= 0x3F)
      {
        sub_1D437F154();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D437F154()
{
  if (!qword_1EDE32A30)
  {
    v0 = sub_1D441A0B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE32A30);
    }
  }
}

uint64_t sub_1D437F1AC(uint64_t a1)
{
  *(a1 + 8) = sub_1D418D5E4(&qword_1EC7CB790, _s11DescriptionVMa, &unk_1D4439F48);
  result = sub_1D418D5E4(&qword_1EDE33368, _s11DescriptionVMa, &unk_1D4439F70);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D437F230()
{
  result = qword_1EDE33380;
  if (!qword_1EDE33380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33380);
  }

  return result;
}

uint64_t sub_1D437F284(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB7A8, &qword_1D4439FA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D437F2F0(uint64_t a1, uint64_t a2)
{
  v4 = _s11DescriptionVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11DescriptionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}