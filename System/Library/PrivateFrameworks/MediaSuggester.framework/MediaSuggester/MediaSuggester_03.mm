uint64_t sub_22CA0E638()
{
  sub_22C9D02E4(&qword_27D9E50E8, &qword_22CA24AB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22CA22F90;
  v1 = type metadata accessor for MSSuggestionRewardScorer();
  v2 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_22CA0EAE4(&qword_27D9E50F0, type metadata accessor for MSSuggestionRewardScorer, &unk_22CA24A38);
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_22CA0E6E8()
{
  *(v0 + 16) = 0;
  sub_22CA20C60();
  swift_allocObject();
  *(v0 + 24) = sub_22CA20C50();
  return v0;
}

uint64_t sub_22CA0E7A0()
{

  return v0;
}

uint64_t sub_22CA0E7C8()
{
  sub_22CA0E7A0();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22CA0E838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = type metadata accessor for MSSuggestionRewardScorerPipeline();
  v6 = sub_22CA0EAE4(&qword_27D9E4C90, type metadata accessor for MSSuggestionRewardScorerPipeline, &unk_22CA249F8);
  *v4 = v2;
  v4[1] = sub_22C9D8320;

  return MEMORY[0x28213B598](a2, v5, v6);
}

uint64_t sub_22CA0E924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSSuggestionRewardScorerPipeline();

  return MEMORY[0x28213B588](a1, v5, a3);
}

uint64_t sub_22CA0E970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213B580](a1, WitnessTable);
}

uint64_t sub_22CA0EAE4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22CA0EB28(uint64_t a1)
{

  return [v2 (v1 + 1400)];
}

uint64_t sub_22CA0EB48(uint64_t a1, uint64_t a2)
{
  sub_22C9D02E4(&unk_27D9E4D70, &qword_22CA231E8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_22CA0EBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_22CA20F70();
  sub_22C9D0B98(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_22CA24B10;
  v9[5] = v8;
  sub_22CA10990(0, 0, v6, &unk_22CA24B20, v9);
}

uint64_t sub_22CA0ECEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_22C9D05CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_22CA0EB48(v4, a3);
  }

  type metadata accessor for MSSuggestion(0);
  v6 = sub_22CA20EC0();
  return sub_22CA0EBBC(v4, v6);
}

uint64_t sub_22CA0EDAC()
{
  v1 = *(v0 + OBJC_IVAR___MSLegacySuggester_requestIdentifier);

  return v1;
}

uint64_t sub_22CA0EE58(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSLegacySuggester_requestIdentifier);
  *v3 = a1;
  v3[1] = a2;
}

id MSLegacySuggester.init(requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSLegacySuggester_requestIdentifier);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = MSLegacySuggester;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22CA0EEEC()
{
  sub_22CA20A20();
  sub_22C9DAE90();
  MEMORY[0x28223BE20](v2);
  sub_22CA11160();
  sub_22CA20A10();
  sub_22CA20A00();
  v3 = sub_22CA0D71C();
  v4(v3);
  _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0(v0, v1);
  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t MSLegacySuggester.description.getter()
{
  sub_22CA211A0();

  swift_getObjectType();
  v1 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v1);

  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA27F20);
  v2 = [v0 requestIdentifier];
  v3 = sub_22CA20E20();
  v5 = v4;

  MEMORY[0x2318BA9C0](v3, v5);

  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return 60;
}

id MSLegacySuggester.copy(with:)@<X0>(void *a1@<X8>)
{
  sub_22CA20A20();
  sub_22C9DAE90();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22CA11160();
  sub_22CA20A10();
  sub_22CA20A00();
  v6 = sub_22CA0D71C();
  v7(v6);
  result = _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0(v1, v2);
  a1[3] = v5;
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for MSLegacySuggester()
{
  result = qword_28143A2A0;
  if (!qword_28143A2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A2A0);
  }

  return result;
}

Swift::Void __swiftcall MSLegacySuggester.encode(with:)(NSCoder with)
{
  v3 = [v1 requestIdentifier];
  if (!v3)
  {
    sub_22CA20E20();
    sub_22CA20E10();
    sub_22C9D7254();
  }

  v4 = sub_22C9D07A8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id MSLegacySuggester.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = sub_22C9D07A8();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_22C9D6C44(v14, &unk_27D9E4D60, &unk_22CA22BE0);
LABEL_9:
    type metadata accessor for MSLegacySuggester();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v11;
  v6 = &v1[OBJC_IVAR___MSLegacySuggester_requestIdentifier];
  *v6 = v10;
  *(v6 + 1) = v5;
  v9.receiver = v1;
  v9.super_class = MSLegacySuggester;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

uint64_t MSLegacySuggester.suggestions(with:)()
{
  sub_22C9D6F3C();
  v1[4] = v2;
  v1[5] = v0;
  sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA0F638, 0, 0);
}

uint64_t sub_22CA0F638()
{
  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4(&qword_28143A320);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, &unk_28143A4E0);
  v4 = v1;
  v5 = v2;
  v6 = sub_22CA20AF0();
  v7 = sub_22CA21010();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v8;
    v11[1] = v9;
    v12 = v8;
    v13 = v9;
    _os_log_impl(&dword_22C9CA000, v6, v7, "(Legacy) Performing preference-respecting request %@ with options: %@", v10, 0x16u);
    sub_22C9D02E4(&unk_27D9E5090, &qword_22CA22E00);
    swift_arrayDestroy();
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[4];

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v17 = sub_22CA209F0();
  sub_22C9D0B98(v14, 1, 1, v17);
  sub_22C9D0B98(v15, 1, 1, v17);
  v18 = sub_22C9F0A1C(v16, 0, v14, v15);
  sub_22C9D6C44(v0[6], &unk_27D9E4F00, &unk_22CA232D0);
  v19 = sub_22CA11184();
  sub_22C9D6C44(v19, v20, &unk_22CA232D0);

  v21 = v0[1];

  return v21(v18);
}

uint64_t sub_22CA0F98C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22CA0FA50;

  return MSLegacySuggester.suggestions(with:)();
}

uint64_t sub_22CA0FA50()
{
  sub_22CA0D6D4();
  v2 = v0;
  sub_22C9D70B4();
  v4 = v3;
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  sub_22C9D6EA4();
  *v9 = v8;

  if (v0)
  {
    if (v5)
    {
      v10 = v4[4];
      v11 = sub_22CA20920();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v13 = v4[4];
      type metadata accessor for MSSuggestion(0);
      v11 = sub_22CA20EB0();

      v14 = sub_22CA11184();
      v15(v14);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_22C9D7050();

  return v16();
}

uint64_t static MSLegacySuggester.availablebundleIDsForMediaSuggestions()()
{
  v0 = sub_22CA209F0();
  sub_22C9DAE90();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  sub_22CA209E0();
  sub_22CA209B0();
  v9 = *(v2 + 8);
  v9(v6, v0);
  sub_22CA209E0();
  type metadata accessor for MSBiomeMediaReader();
  inited = swift_initStackObject();
  sub_22C9F81A4();
  v11 = sub_22C9D7254();
  v9(v11, v0);
  v9(v8, v0);
  return inited;
}

uint64_t sub_22CA0FDE4()
{
  sub_22C9D6F3C();
  v1 = [swift_getObjCClassFromMetadata() availablebundleIDsForMediaSuggestions];
  v2 = sub_22CA20EC0();

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_22CA0FE70(uint64_t a1, void (**a2)(void, void))
{
  v3 = [swift_getObjCClassFromMetadata() availablebundleIDsForMediaSuggestions];
  sub_22CA20EC0();

  v4 = sub_22CA20EB0();
  (a2)[2](a2, v4);

  _Block_release(a2);
}

uint64_t static MSLegacySuggester.availableBundleIDs(completion:)(void (*a1)(uint64_t))
{
  v2 = [swift_getObjCClassFromMetadata() availablebundleIDsForMediaSuggestions];
  v3 = sub_22CA20EC0();

  a1(v3);
}

uint64_t sub_22CA1019C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_22CA20F70();
  sub_22C9D0B98(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;
  v13 = a1;

  sub_22C9D1034(0, 0, v9, &unk_22CA24AF0, v11);
}

uint64_t sub_22CA102A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  return MEMORY[0x2822009F8](sub_22CA102C4, 0, 0);
}

uint64_t sub_22CA102C4()
{
  sub_22CA0D6D4();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22CA103E8;
  v3 = swift_continuation_init();
  v0[17] = sub_22C9D02E4(&qword_27D9E5110, &qword_22CA24858);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22CA0ECEC;
  v0[13] = &unk_283FCE2D8;
  v0[14] = v3;
  [v2 suggestionsWithOptions:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22CA103E8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 184) = v2;
  if (v2)
  {
    v3 = sub_22CA104F0;
  }

  else
  {
    v3 = sub_22CA0B514;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22CA104F0(uint64_t a1)
{
  swift_willThrow();
  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4(&qword_28143A320);
  }

  v2 = *(v1 + 184);
  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, &unk_28143A4E0);
  v4 = sub_22C9D7254();
  v5 = sub_22CA20AF0();
  v6 = sub_22CA21000();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22C9CA000, v5, v6, "Error encountered while fetching suggestions. Error: %@", v8, 0xCu);
    sub_22C9D6C44(v9, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v12 = *(v1 + 184);
  v13 = *(v1 + 168);

  v14 = v12;
  v13(0, v12);

  sub_22C9D7050();

  return v15();
}

id MSLegacySuggester.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22CA107C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22C9D6E54;

  return v6();
}

uint64_t sub_22CA108A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22C9D0F54;

  return v7();
}

uint64_t sub_22CA10990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_22CA10F98(a3, v22 - v10);
  v12 = sub_22CA20F70();
  if (sub_22C9D68B0(v11, 1, v12) == 1)
  {
    sub_22C9D6C44(v11, &unk_27D9E4A00, &qword_22CA22D90);
  }

  else
  {
    sub_22CA20F60();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_22CA20F10();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_22CA20E50() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_22C9D6C44(a3, &unk_27D9E4A00, &qword_22CA22D90);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22C9D6C44(a3, &unk_27D9E4A00, &qword_22CA22D90);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_22CA10C5C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  v7 = sub_22C9D705C(v6);
  *v7 = v8;
  v7[1] = sub_22C9D6E54;
  v9 = sub_22C9D708C();

  return sub_22CA102A0(v9, v10, v1, v2, v3, v5, v4);
}

uint64_t sub_22CA10D38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C9D6E54;
  v2 = sub_22CA11184();

  return v3(v2);
}

uint64_t sub_22CA10DE8()
{
  sub_22CA0D6D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C9D6E54;
  v2 = sub_22CA11184();

  return v3(v2);
}

uint64_t sub_22CA10EA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CA10EE0()
{
  sub_22CA0D6D4();
  v0 = swift_task_alloc();
  v1 = sub_22C9D705C(v0);
  *v1 = v2;
  v1[1] = sub_22C9D0F54;
  v3 = sub_22C9D708C();

  return v4(v3);
}

uint64_t sub_22CA10F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CA11008()
{
  v0 = swift_task_alloc();
  v1 = sub_22C9D705C(v0);
  *v1 = v2;
  v1[1] = sub_22C9D6E54;
  v3 = sub_22C9D708C();

  return v4(v3);
}

uint64_t sub_22CA110B0()
{
  v0 = swift_task_alloc();
  v1 = sub_22C9D705C(v0);
  *v1 = v2;
  v1[1] = sub_22C9D0F54;
  v3 = sub_22C9D708C();

  return v4(v3);
}

unint64_t sub_22CA11160()
{

  return type metadata accessor for MSLegacySuggester();
}

uint64_t sub_22CA11190()
{
  *(v0 + 16) = 0;
  sub_22CA20C40();
  swift_allocObject();
  v1 = sub_22CA1410C();
  if (&OBJC_IVAR____TtC14MediaSuggester33MSSuggestionRewardRankingPipeline_partitionAllocations)
  {
    swift_unexpectedError();

    type metadata accessor for MSSuggestionRewardRanker();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v1;
    return v0;
  }

  return result;
}

uint64_t sub_22CA11234(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  sub_22CA1255C(&v3);
  return v3;
}

BOOL sub_22CA1128C()
{
  sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v0 = sub_22CA20B80();
  v1 = sub_22CA20E10();
  v2 = [v0 featureValueForName_];

  swift_unknownObjectRelease();
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    [v2 doubleValue];
    v4 = v5;
  }

  v6 = sub_22CA20B80();
  v7 = sub_22CA20E10();
  v8 = [v6 featureValueForName_];

  swift_unknownObjectRelease();
  if (v8)
  {
    [v8 doubleValue];
    v3 = v9;
  }

  return v3 < v4;
}

uint64_t sub_22CA11414()
{
  sub_22C9D02E4(&qword_27D9E5138, &unk_22CA24D50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22CA22F90;
  v1 = type metadata accessor for MSSuggestionRewardRanker();
  v2 = swift_allocObject();
  sub_22CA11190();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_22CA118FC(&qword_27D9E5140, type metadata accessor for MSSuggestionRewardRanker, &unk_22CA24CD8);
  *(v0 + 32) = v2;
  return v0;
}

void *sub_22CA114C8()
{
  v0[2] = sub_22CA20DD0();
  v0[3] = 0;
  sub_22CA20C40();
  swift_allocObject();
  v1 = sub_22CA1410C();
  if (&OBJC_IVAR____TtC14MediaSuggester33MSSuggestionRewardRankingPipeline_partitionAllocations)
  {
    swift_unexpectedError();

    type metadata accessor for MSSuggestionRewardRankingPipeline();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v0[4] = v1;
    return v0;
  }

  return result;
}

void *sub_22CA11598()
{

  return v0;
}

uint64_t sub_22CA115C8()
{
  sub_22CA11598();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_22CA11644(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = type metadata accessor for MSSuggestionRewardRankingPipeline();
  v6 = sub_22CA118FC(&qword_27D9E4CA0, type metadata accessor for MSSuggestionRewardRankingPipeline, &unk_22CA24C98);
  *v4 = v2;
  v4[1] = sub_22C9D8320;

  return MEMORY[0x28213B590](a2, v5, v6);
}

uint64_t sub_22CA11730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSSuggestionRewardRankingPipeline();

  return MEMORY[0x28213B588](a1, v5, a3);
}

uint64_t sub_22CA1177C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213B580](a1, WitnessTable);
}

uint64_t sub_22CA118FC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22CA11940()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5168, &qword_22CA24D90);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_22CA14130(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22CA14100();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA11A28()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E4BE8, &qword_22CA22E90);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22CA14100();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_22CA11AF8()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5180, &qword_22CA24DA8);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_22CA14130(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22CA14100();
  if (v1)
  {
    if (v7 != v0 || &v10[112 * v2] <= v9)
    {
      memmove(v9, v10, 112 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA11BE0()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    v7 = sub_22C9D02E4(&qword_27D9E5170, &qword_22CA24D98);
    v8 = sub_22CA140E4(v7);
    j__malloc_size(v8);
    sub_22CA14088();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[2 * v2 + 4] <= v8 + 4)
    {
      memmove(v8 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v11 = sub_22C9D02E4(&qword_27D9E5178, &qword_22CA24DA0);
    sub_22CA140C4(v11);
  }
}

void sub_22CA11CC8()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    v7 = sub_22C9D02E4(&qword_27D9E4F70, &unk_22CA23EA0);
    v8 = sub_22CA140E4(v7);
    j__malloc_size(v8);
    sub_22CA14088();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = sub_22CA14100();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA11D94()
{
  sub_22CA140B8();
  if (v3)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_22C9D02E4(&qword_27D9E5148, &qword_22CA24D60);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_22CA14088();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_22CA11E70()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5158, &qword_22CA24D70);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v10 = sub_22C9D02E4(&qword_27D9E5160, &qword_22CA24D78);
    sub_22CA140C4(v10);
  }
}

char *sub_22CA11F70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22CA14058(a3, result);
  }

  return result;
}

char *sub_22CA11F90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_22CA14058(a3, result);
  }

  return result;
}

uint64_t sub_22CA11FB8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_22CA120A4()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    v7 = sub_22C9D02E4(&qword_27D9E4F70, &unk_22CA23EA0);
    v8 = sub_22CA140E4(v7);
    j__malloc_size(v8);
    sub_22CA14088();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = sub_22CA14100();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA12170()
{
  sub_22CA140B8();
  if (v4)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  sub_22CA1409C();
  if (v3)
  {
    v7 = sub_22C9D02E4(&qword_27D9E5170, &qword_22CA24D98);
    v8 = sub_22CA140E4(v7);
    j__malloc_size(v8);
    sub_22CA14088();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[2 * v2 + 4] <= v8 + 4)
    {
      memmove(v8 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v11 = sub_22C9D02E4(&qword_27D9E5178, &qword_22CA24DA0);
    sub_22CA140C4(v11);
  }
}

void *sub_22CA12258(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22C9D02E4(&qword_27D9E4F58, &unk_22CA24D80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22C9D02E4(&qword_27D9E5018, &qword_22CA243D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22CA12390(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C9D02E4(&qword_27D9E5150, &qword_22CA24D68);
  v10 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22CA11FB8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22CA1255C(uint64_t *a1)
{
  v2 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22CA14044(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22CA12610(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22CA12610(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22CA21330();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
        v6 = sub_22CA20EF0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_22CA12AD0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22CA12758(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22CA12758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v9 = MEMORY[0x28223BE20](v8);
  v49 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v39 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  v41 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v50 = *(v14 + 16);
    v51 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v46 = -v18;
    v47 = (v14 + 32);
    v21 = a1 - a3;
    v48 = v17;
    v40 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v44 = v20;
      v45 = a3;
      v42 = v22;
      v43 = v21;
      do
      {
        v23 = v50;
        v50(v16, v22, v8);
        v23(v52, v20, v8);
        v24 = v16;
        v25 = sub_22CA20B80();
        v26 = sub_22CA20E10();
        v27 = [v25 featureValueForName_];

        swift_unknownObjectRelease();
        v28 = 0.0;
        v29 = 0.0;
        if (v27)
        {
          [v27 doubleValue];
          v29 = v30;
        }

        v31 = sub_22CA20B80();
        v32 = sub_22CA20E10();
        v33 = [v31 featureValueForName_];

        swift_unknownObjectRelease();
        if (v33)
        {
          [v33 doubleValue];
          v28 = v34;
        }

        v35 = *v19;
        (*v19)(v52, v8);
        v16 = v24;
        result = (v35)(v24, v8);
        if (v28 >= v29)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return result;
        }

        v36 = *v47;
        v37 = v49;
        (*v47)(v49, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v36)(v20, v37, v8);
        v20 += v46;
        v22 += v46;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v45 + 1;
      v20 = v44 + v40;
      v21 = v43 - 1;
      v22 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22CA12AD0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v9 = MEMORY[0x28223BE20](v8);
  v148 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v158 = &v138 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v163 = &v138 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v162 = &v138 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v138 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v154 = &v138 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v152 = v23;
  v153 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_111:
    v163 = *v144;
    if (!v163)
    {
      goto LABEL_153;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_113;
    }

    goto LABEL_147;
  }

  v140 = &v138 - v22;
  v141 = v24;
  v139 = a4;
  v26 = 0;
  v160 = v23 + 16;
  v161 = (v23 + 8);
  v159 = (v23 + 32);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v26++;
    if (v26 < v25)
    {
      v151 = v25;
      v142 = v27;
      v29 = v26;
      v30 = *v153;
      v31 = *(v23 + 72);
      v155 = v29;
      v32 = v30 + v31 * v29;
      v33 = *(v23 + 16);
      v34 = v140;
      v27 = v28;
      v33(v140, v32, v8);
      v157 = v30;
      v35 = v30 + v31 * v28;
      v36 = v34;
      v37 = v141;
      v149 = v33;
      v33(v141, v35, v8);
      LODWORD(v150) = sub_22CA1128C();
      if (v5)
      {
        v137 = *v161;
        (*v161)(v37, v8);
        v137(v36, v8);
LABEL_121:

        return;
      }

      v145 = 0;
      v38 = *v161;
      (*v161)(v37, v8);
      v38(v36, v8);
      v143 = v28;
      v39 = v28 + 2;
      v40 = v157 + v31 * (v28 + 2);
      v26 = v155;
      v41 = v31;
      v157 = v31;
      v42 = v151;
      while (1)
      {
        v5 = v39;
        if (v26 + 1 >= v42)
        {
          break;
        }

        v27 = v26;
        v43 = v149;
        (v149)(v154, v40, v8);
        v43(v156, v32, v8);
        v44 = sub_22CA20B80();
        v45 = sub_22CA20E10();
        v46 = [v44 featureValueForName_];

        swift_unknownObjectRelease();
        v47 = 0.0;
        v48 = 0.0;
        if (v46)
        {
          [v46 doubleValue];
          v48 = v49;
        }

        v50 = sub_22CA20B80();
        v51 = sub_22CA20E10();
        v52 = [v50 featureValueForName_];

        swift_unknownObjectRelease();
        if (v52)
        {
          [v52 doubleValue];
          v47 = v53;
        }

        v38(v156, v8);
        v38(v154, v8);
        v41 = v157;
        v40 += v157;
        v32 += v157;
        v26 = (v27 + 1);
        v39 = v5 + 1;
        v42 = v151;
        if (((v150 ^ (v47 >= v48)) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v26 = v42;
LABEL_14:
      if (v150)
      {
        v28 = v143;
        if (v26 < v143)
        {
          goto LABEL_146;
        }

        if (v143 >= v26)
        {
          v5 = v145;
          v27 = v142;
          goto LABEL_37;
        }

        if (v42 >= v5)
        {
          v54 = v5;
        }

        else
        {
          v54 = v42;
        }

        v55 = v143;
        v56 = v26;
        v57 = v41 * (v54 - 1);
        v58 = v41 * v54;
        v59 = v143 * v41;
        v155 = v56;
        v5 = v145;
        do
        {
          if (v55 != --v56)
          {
            v60 = *v153;
            if (!*v153)
            {
              goto LABEL_151;
            }

            v61 = *v159;
            (*v159)(v148, v60 + v59, v8);
            v62 = v59 < v57 || v60 + v59 >= v60 + v58;
            if (v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v61((v60 + v57), v148, v8);
            v5 = v145;
            v41 = v157;
          }

          ++v55;
          v57 -= v41;
          v58 -= v41;
          v59 += v41;
        }

        while (v55 < v56);
        v27 = v142;
        v26 = v155;
      }

      else
      {
        v5 = v145;
        v27 = v142;
      }

      v28 = v143;
    }

LABEL_37:
    v63 = v153[1];
    if (v26 < v63)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_143;
      }

      if (v26 - v28 < v139)
      {
        break;
      }
    }

LABEL_57:
    if (v26 < v28)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22CA11D94();
      v27 = v128;
    }

    v86 = *(v27 + 2);
    v87 = v86 + 1;
    if (v86 >= *(v27 + 3) >> 1)
    {
      sub_22CA11D94();
      v27 = v129;
    }

    *(v27 + 2) = v87;
    v88 = v27 + 32;
    v89 = &v27[16 * v86 + 32];
    *v89 = v28;
    *(v89 + 1) = v26;
    v157 = *v144;
    if (!v157)
    {
      goto LABEL_152;
    }

    if (v86)
    {
      v155 = v26;
      v151 = v27 + 32;
      while (1)
      {
        v90 = v87 - 1;
        v91 = &v88[16 * v87 - 16];
        v92 = &v27[16 * v87];
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v93 = *(v27 + 4);
          v94 = *(v27 + 5);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_78:
          if (v96)
          {
            goto LABEL_129;
          }

          v108 = *v92;
          v107 = *(v92 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_132;
          }

          v112 = *(v91 + 1);
          v113 = v112 - *v91;
          if (__OFSUB__(v112, *v91))
          {
            goto LABEL_135;
          }

          if (__OFADD__(v110, v113))
          {
            goto LABEL_137;
          }

          if (v110 + v113 >= v95)
          {
            if (v95 < v113)
            {
              v90 = v87 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        if (v87 < 2)
        {
          goto LABEL_131;
        }

        v115 = *v92;
        v114 = *(v92 + 1);
        v103 = __OFSUB__(v114, v115);
        v110 = v114 - v115;
        v111 = v103;
LABEL_93:
        if (v111)
        {
          goto LABEL_134;
        }

        v117 = *v91;
        v116 = *(v91 + 1);
        v103 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v103)
        {
          goto LABEL_136;
        }

        if (v118 < v110)
        {
          goto LABEL_107;
        }

LABEL_100:
        if (v90 - 1 >= v87)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v153)
        {
          goto LABEL_149;
        }

        v122 = v27;
        v123 = &v88[16 * v90 - 16];
        v27 = *v123;
        v124 = v90;
        v125 = &v88[16 * v90];
        v126 = *(v125 + 1);
        sub_22CA1374C(*v153 + *(v152 + 72) * *v123, *v153 + *(v152 + 72) * *v125, (*v153 + *(v152 + 72) * v126), v157);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v126 < v27)
        {
          goto LABEL_124;
        }

        v5 = *(v122 + 2);
        if (v124 > v5)
        {
          goto LABEL_125;
        }

        *v123 = v27;
        *(v123 + 1) = v126;
        if (v124 >= v5)
        {
          goto LABEL_126;
        }

        v87 = v5 - 1;
        memmove(v125, v125 + 16, 16 * (v5 - 1 - v124));
        v27 = v122;
        *(v122 + 2) = v5 - 1;
        v127 = v5 > 2;
        v5 = 0;
        v26 = v155;
        v88 = v151;
        if (!v127)
        {
          goto LABEL_107;
        }
      }

      v97 = &v88[16 * v87];
      v98 = *(v97 - 8);
      v99 = *(v97 - 7);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_127;
      }

      v102 = *(v97 - 6);
      v101 = *(v97 - 5);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_128;
      }

      v104 = *(v92 + 1);
      v105 = v104 - *v92;
      if (__OFSUB__(v104, *v92))
      {
        goto LABEL_130;
      }

      v103 = __OFADD__(v95, v105);
      v106 = v95 + v105;
      if (v103)
      {
        goto LABEL_133;
      }

      if (v106 >= v100)
      {
        v120 = *v91;
        v119 = *(v91 + 1);
        v103 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v103)
        {
          goto LABEL_141;
        }

        if (v95 < v121)
        {
          v90 = v87 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_78;
    }

LABEL_107:
    v23 = v152;
    v25 = v153[1];
    if (v26 >= v25)
    {
      goto LABEL_111;
    }
  }

  v64 = v28 + v139;
  if (__OFADD__(v28, v139))
  {
    goto LABEL_144;
  }

  if (v64 >= v63)
  {
    v64 = v153[1];
  }

  if (v64 < v28)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    v27 = sub_22CA13E30(v27);
LABEL_113:
    v130 = v27 + 16;
    v131 = *(v27 + 2);
    while (v131 >= 2)
    {
      if (!*v153)
      {
        goto LABEL_150;
      }

      v132 = v27;
      v27 += 16 * v131;
      v133 = *v27;
      v134 = &v130[2 * v131];
      v135 = v134[1];
      sub_22CA1374C(*v153 + *(v152 + 72) * *v27, *v153 + *(v152 + 72) * *v134, (*v153 + *(v152 + 72) * v135), v163);
      if (v5)
      {
        break;
      }

      if (v135 < v133)
      {
        goto LABEL_138;
      }

      if (v131 - 2 >= *v130)
      {
        goto LABEL_139;
      }

      *v27 = v133;
      *(v27 + 1) = v135;
      v136 = *v130 - v131;
      if (*v130 < v131)
      {
        goto LABEL_140;
      }

      v131 = *v130 - 1;
      memmove(v134, v134 + 2, 16 * v136);
      *v130 = v131;
      v27 = v132;
    }

    goto LABEL_121;
  }

  if (v26 == v64)
  {
    goto LABEL_57;
  }

  v142 = v27;
  v145 = v5;
  v65 = *v153;
  v66 = *(v152 + 72);
  v67 = *(v152 + 16);
  v68 = v28;
  v69 = *v153 + v66 * (v26 - 1);
  v70 = -v66;
  v143 = v68;
  v71 = &v68[-v26];
  v157 = v65;
  v146 = v66;
  v147 = v64;
  v72 = (v65 + v26 * v66);
LABEL_46:
  v155 = v26;
  v149 = v72;
  v150 = v71;
  v151 = v69;
  while (1)
  {
    v67(v162, v72, v8);
    v67(v163, v69, v8);
    v73 = sub_22CA20B80();
    v74 = sub_22CA20E10();
    v75 = [v73 featureValueForName_];

    swift_unknownObjectRelease();
    v76 = 0.0;
    v77 = 0.0;
    if (v75)
    {
      [v75 doubleValue];
      v77 = v78;
    }

    v79 = sub_22CA20B80();
    v80 = sub_22CA20E10();
    v81 = [v79 featureValueForName_];

    swift_unknownObjectRelease();
    if (v81)
    {
      [v81 doubleValue];
      v76 = v82;
    }

    v83 = *v161;
    (*v161)(v163, v8);
    v83(v162, v8);
    if (v76 >= v77)
    {
LABEL_55:
      v26 = (v155 + 1);
      v69 = &v151[v146];
      v71 = v150 - 1;
      v72 = &v149[v146];
      if (v155 + 1 == v147)
      {
        v26 = v147;
        v5 = v145;
        v27 = v142;
        v28 = v143;
        goto LABEL_57;
      }

      goto LABEL_46;
    }

    if (!v157)
    {
      break;
    }

    v84 = v158;
    v85 = *v159;
    (*v159)(v158, v72, v8);
    swift_arrayInitWithTakeFrontToBack();
    v85(v69, v84, v8);
    v69 += v70;
    v72 += v70;
    v62 = __CFADD__(v71++, 1);
    if (v62)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_22CA1374C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v9 = MEMORY[0x28223BE20](v8);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v67 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v75 = &v67 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_68;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_69;
  }

  v24 = (a2 - a1) / v20;
  v78 = a1;
  v77 = a4;
  v73 = (v16 + 8);
  v74 = (v16 + 16);
  v25 = v22 / v20;
  if (v24 >= v22 / v20)
  {
    sub_22CA11FB8(a2, v22 / v20, a4);
    v46 = a4 + v25 * v20;
    v47 = -v20;
    v48 = v46;
    v69 = a4;
    v75 = -v20;
LABEL_40:
    v70 = (a2 + v47);
    v49 = a3;
    v67 = v48;
    while (1)
    {
      if (v46 <= a4)
      {
        v78 = a2;
        v76 = v48;
        goto LABEL_66;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v50 = v46 + v47;
      v51 = *v74;
      (*v74)(v71, v50, v8);
      v51(v72, v70, v8);
      v52 = sub_22CA20B80();
      v53 = sub_22CA20E10();
      v54 = [v52 featureValueForName_];

      swift_unknownObjectRelease();
      v55 = 0.0;
      v56 = 0.0;
      if (v54)
      {
        [v54 doubleValue];
        v56 = v57;
      }

      v58 = sub_22CA20B80();
      v59 = sub_22CA20E10();
      v60 = [v58 featureValueForName_];

      swift_unknownObjectRelease();
      if (v60)
      {
        [v60 doubleValue];
        v55 = v61;
      }

      a3 = &v49[v75];
      v62 = *v73;
      (*v73)(v72, v8);
      v62(v71, v8);
      a4 = v69;
      if (v55 < v56)
      {
        if (v49 < a2 || a3 >= a2)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v48 = v68;
          v47 = v75;
        }

        else
        {
          v48 = v68;
          v21 = v49 == a2;
          v65 = v70;
          a2 = v70;
          v47 = v75;
          if (!v21)
          {
            v66 = v68;
            swift_arrayInitWithTakeBackToFront();
            a2 = v65;
            v48 = v66;
          }
        }

        goto LABEL_40;
      }

      if (v49 < v46 || a3 >= v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = a3;
        v46 = v50;
        v48 = v50;
        v47 = v75;
      }

      else
      {
        v48 = v50;
        v21 = v46 == v49;
        v49 = a3;
        v46 = v50;
        v47 = v75;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = a3;
          v46 = v50;
          v48 = v50;
        }
      }
    }

    v78 = a2;
    v76 = v67;
  }

  else
  {
    sub_22CA11FB8(a1, (a2 - a1) / v20, a4);
    v72 = (a4 + v24 * v20);
    v76 = v72;
    v26 = v20;
    v70 = a3;
    while (a4 < v72 && a2 < a3)
    {
      v28 = *v74;
      v29 = a2;
      (*v74)(v18, a2, v8);
      v30 = a4;
      v28(v75, a4, v8);
      v31 = sub_22CA20B80();
      v32 = sub_22CA20E10();
      v33 = [v31 featureValueForName_];

      swift_unknownObjectRelease();
      v34 = 0.0;
      v35 = 0.0;
      if (v33)
      {
        [v33 doubleValue];
        v35 = v36;
      }

      v37 = sub_22CA20B80();
      v38 = sub_22CA20E10();
      v39 = [v37 featureValueForName_];

      swift_unknownObjectRelease();
      if (v39)
      {
        [v39 doubleValue];
        v34 = v40;
      }

      v41 = *v73;
      (*v73)(v75, v8);
      v41(v18, v8);
      a4 = v30;
      if (v34 >= v35)
      {
        v44 = v30 + v26;
        v45 = a1 < v30 || a1 >= v44;
        a2 = v29;
        if (v45)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v70;
        }

        else
        {
          a3 = v70;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v77 = v44;
        a4 += v26;
      }

      else
      {
        v42 = v29;
        a2 = v29 + v26;
        if (a1 < v29 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v70;
        }

        else
        {
          a3 = v70;
          if (a1 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 += v26;
      v78 = a1;
    }
  }

LABEL_66:
  sub_22CA13E44(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_22CA13E44(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22CA13F30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22C9D02E4(&qword_27D9E5148, &qword_22CA24D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_22CA140C4(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22CA140E4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22CA1410C()
{

  return MEMORY[0x28213B608](0xD000000000000021, v0 | 0x8000000000000000);
}

uint64_t sub_22CA14130(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_22CA14144()
{
  sub_22CA20BD0();
  swift_allocObject();
  *(v0 + 16) = sub_22CA20BC0();
  return v0;
}

void *sub_22CA14214(uint64_t a1)
{
  v2 = v1;
  sub_22CA20C80();
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  swift_allocObject();
  *(v1 + 96) = sub_22CA20C70();
  type metadata accessor for MSAppIntentPlayAudioCandidateSourceRequestTransformer();
  v3 = swift_allocObject();
  sub_22CA14144();
  v2[5] = v3;
  sub_22C9D02E4(&qword_27D9E4E08, &qword_22CA234E0);
  swift_allocObject();
  v2[6] = sub_22CA20B70();
  type metadata accessor for MSAppIntentAudioPlaybackCandidateSource();
  swift_allocObject();

  v2[4] = sub_22C9E8E9C(v4);
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  sub_22CA14884(&qword_27D9E4E20, 255, MEMORY[0x277CE9B38], MEMORY[0x277CE9B08]);

  v5 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v5);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA26F20);
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000016, 0x800000022CA26F40);
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA26F60);
  sub_22CA21240();

  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  return v2;
}

uint64_t sub_22CA14554(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline();
  v7 = sub_22CA14884(&qword_27D9E4C78, v6, type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline, &unk_22CA24F48);
  *v4 = v2;
  v4[1] = sub_22C9D8320;

  return MEMORY[0x28213B5A0](a2, v5, v7);
}

uint64_t sub_22CA14884(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_22CA148CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22CA21440();
  sub_22CA20E60();
  v6 = sub_22CA21490();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_22CA21360();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_22CA149B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA14A64, 0, 0);
}

uint64_t sub_22CA14A64()
{
  v114 = v0;
  if (qword_28143A320 != -1)
  {
LABEL_58:
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_22CA20B10();
  v3 = sub_22C9D0494(v2, &unk_28143A4E0);
  v4 = v1;

  v101 = v3;
  v5 = sub_22CA20AF0();
  v6 = sub_22CA21010();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = v8 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
    v11 = *(v8 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
    v12 = *(v10 + 8);

    v13 = sub_22C9D60B0(v11, v12, &v113);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[15] = *(v7 + 16);
    v14 = sub_22CA20C20();
    sub_22CA1624C();
    sub_22CA16204(v15, 255, v16, MEMORY[0x277CE9B08]);
    v17 = sub_22CA21340();
    sub_22C9D60B0(v17, v18, &v113);
    sub_22CA1627C();

    *(v9 + 14) = v14;
    _os_log_impl(&dword_22C9CA000, v5, v6, "<requestID: %s> %s: Get suggestions (with features)", v9, 0x16u);
    swift_arrayDestroy();
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v19 = v0[20];
  v20 = v0[21];
  v21 = v0[17];
  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v22 = sub_22CA209F0();
  sub_22C9D0B98(v20, 1, 1, v22);
  sub_22C9D0B98(v19, 1, 1, v22);
  v23 = [v21 allowedBundleIdentifiers];
  sub_22CA20EC0();

  sub_22C9EFAC4();
  v25 = v24;

  sub_22C9E9758(v19);
  sub_22C9E9758(v20);
  result = sub_22C9E6DA0();
  v27 = MEMORY[0x277D84FA0];
  v103 = MEMORY[0x277D84F90];
  if (result)
  {
    if (result >= 1)
    {
      v28 = 0;
      v102 = v0;
      v108 = result;
      v109 = v25 & 0xC000000000000001;
      v104 = v25 + 32;
      v107 = v25;
      do
      {
        if (v109)
        {
          v29 = MEMORY[0x2318BAD10](v28, v25);
        }

        else
        {
          v29 = *(v25 + 8 * v28 + 32);
        }

        v0 = v29;
        v30 = *(v29 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID);
        v31 = *(v29 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8);
        v32 = OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent;
        v33 = *(v29 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent);
        v34 = objc_allocWithZone(MSUnifiedMediaIntent);
        swift_bridgeObjectRetain_n();
        v35 = v33;
        sub_22CA1627C();
        v36 = sub_22CA20E10();

        v37 = [v34 initWithIntent:v33 bundleID:v36];

        v38 = *(v0 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
        objc_allocWithZone(MSSuggestion);
        v39 = v37;
        v40 = sub_22C9DDDC8(v39, v30, v31, v38);
        v41 = OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date;
        [v40 setIntentDate_];
        [v40 setIntent_];
        sub_22C9DDEBC(v40);
        if (v42)
        {

          v43 = *(v0 + v41);

          sub_22CA00C9C(v40, 84, v43);
        }

        ++v28;

        v25 = v107;
        v44 = v108;
      }

      while (v108 != v28);
      v45 = 0;
      v110 = v27;
      v111 = MEMORY[0x277D84F90];
      v112 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v109)
        {
          v46 = MEMORY[0x2318BAD10](v45, v25);
        }

        else
        {
          if (v45 >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v46 = *(v104 + 8 * v45);
        }

        v47 = v46;
        v48 = OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent;
        v49 = *&v46[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent];
        v50 = [v49 mediaContainer];
        if (v50)
        {
          v51 = v50;
          v52 = sub_22C9D6670(v50);
          if (v53)
          {
            v54 = v52;
            v0 = v53;
            v106 = v49;
            if (*(v110 + 16))
            {
              sub_22CA21440();
              sub_22CA20E60();
              sub_22CA21490();
              sub_22CA16264();
              while (1)
              {
                v56 = v55 & v44;
                if (((*(&v113 + (((v55 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v44)) & 1) == 0)
                {
                  break;
                }

                v57 = (*(v110 + 48) + 16 * v56);
                if (*v57 != v54 || v0 != v57[1])
                {
                  v59 = sub_22CA21360();
                  v55 = v56 + 1;
                  if ((v59 & 1) == 0)
                  {
                    continue;
                  }
                }

                v25 = v107;
                v44 = v108;
                goto LABEL_48;
              }
            }

            sub_22CA15904(&v113, v54, v0);

            v60 = *&v47[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID];
            v61 = *&v47[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8];
            v62 = *&v47[v48];
            v63 = v48;
            v64 = objc_allocWithZone(MSUnifiedMediaIntent);
            swift_bridgeObjectRetain_n();
            v65 = v62;
            sub_22CA1627C();
            v66 = sub_22CA20E10();

            v67 = [v64 initWithIntent:v62 bundleID:v66];

            v68 = *&v47[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource];
            objc_allocWithZone(MSSuggestion);
            v69 = v67;
            v70 = sub_22C9DDDC8(v69, v60, v61, v68);
            [v70 setIntentDate_];
            v105 = v63;
            [v70 setIntent_];
            v0 = v70;
            MEMORY[0x2318BA9F0]();
            if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22CA20EE0();
            }

            sub_22CA20F00();
            sub_22C9D02E4(&qword_27D9E4E48, &unk_22CA243F0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22CA22F90;
            *(inited + 32) = 0xD000000000000013;
            *(inited + 40) = 0x800000022CA25DF0;
            *(inited + 72) = MEMORY[0x277D837D0];
            strcpy((inited + 48), "consumedMedia");
            *(inited + 62) = -4864;
            v72 = sub_22CA20DD0();
            v73 = objc_allocWithZone(MEMORY[0x277CBFED0]);
            sub_22CA17474(v72);
            v25 = v107;
            MEMORY[0x2318BA9F0]();
            if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22CA20EE0();
            }

            sub_22CA20F00();
            v103 = v112;

            v44 = v108;
            v48 = v105;
            v49 = v106;
          }
        }

        v74 = [*&v47[v48] identifier];
        if (v74)
        {
          v75 = v74;
          v76 = sub_22CA20E20();
          v0 = v77;

          if (*(v110 + 16))
          {
            sub_22CA21440();
            sub_22CA20E60();
            sub_22CA21490();
            sub_22CA16264();
            while (1)
            {
              v79 = v78 & v44;
              if (((*(&v113 + (((v78 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v78 & v44)) & 1) == 0)
              {
                break;
              }

              v80 = (*(v110 + 48) + 16 * v79);
              if (*v80 != v76 || v80[1] != v0)
              {
                v82 = sub_22CA21360();
                v78 = v79 + 1;
                if ((v82 & 1) == 0)
                {
                  continue;
                }
              }

              v49 = v47;
              v44 = v108;
              goto LABEL_48;
            }

            v44 = v108;
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_48:
        ++v45;

        if (v45 == v44)
        {

          v0 = v102;
          goto LABEL_51;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_51:
    v83 = v0[17];

    swift_bridgeObjectRetain_n();
    v84 = v83;

    v85 = sub_22CA20AF0();
    v86 = sub_22CA21010();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = v0[19];
      v88 = v0[17];
      v89 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v89 = 136315650;
      v90 = v88 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
      v91 = *(v88 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
      v92 = *(v90 + 8);

      v93 = sub_22C9D60B0(v91, v92, &v113);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      v0[14] = *(v87 + 16);
      v94 = sub_22CA20C20();
      sub_22CA1624C();
      sub_22CA16204(v95, 255, v96, MEMORY[0x277CE9B08]);
      v97 = sub_22CA21340();
      sub_22C9D60B0(v97, v98, &v113);
      sub_22CA1627C();

      *(v89 + 14) = v94;
      *(v89 + 22) = 2048;
      v99 = sub_22C9E6DA0();

      *(v89 + 24) = v99;

      _os_log_impl(&dword_22C9CA000, v85, v86, "<requestID: %s> %s: Returning %ld suggestions with features", v89, 0x20u);
      swift_arrayDestroy();
      sub_22C9D70C0();
      sub_22C9D70C0();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_22C9E28F0();
    sub_22CA169F0(v103);
    type metadata accessor for MSSuggestion(0);
    sub_22CA20CB0();

    v100 = v0[1];

    return v100();
  }

  return result;
}

uint64_t sub_22CA156A8(uint64_t a1)
{
  sub_22CA20C20();
  swift_allocObject();
  *(v1 + 16) = sub_22CA20C10();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_22CA1577C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22C9E2724;

  return sub_22CA149B8(a1, v4, v5);
}

BOOL sub_22CA15904(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22CA21440();
  sub_22CA20E60();
  v8 = sub_22CA21490();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_22CA21360() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_22CA15CAC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_22CA15A50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22C9D02E4(&qword_27D9E51D8, &qword_22CA25198);
  result = sub_22CA21170();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_22CA15E14(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22CA21440();
    sub_22CA20E60();
    result = sub_22CA21490();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_22CA15CAC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22CA15A50(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22CA15FD0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_22CA21440();
      sub_22CA20E60();
      v16 = sub_22CA21490();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_22CA21360() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_22CA15E78();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_22CA213B0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_22CA15E14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22CA25080;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_22CA15E78()
{
  v1 = v0;
  sub_22C9D02E4(&qword_27D9E51D8, &qword_22CA25198);
  v2 = *v0;
  v3 = sub_22CA21160();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_22CA15FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22C9D02E4(&qword_27D9E51D8, &qword_22CA25198);
  result = sub_22CA21170();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_22CA21440();

        sub_22CA20E60();
        result = sub_22CA21490();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22CA16204(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CA16288(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result == 1)
    {
      return 1;
    }

    else
    {
      if (qword_28143A320 != -1)
      {
        sub_22CA16988();
        swift_once();
      }

      v2 = sub_22CA20B10();
      sub_22C9D0494(v2, &unk_28143A4E0);
      v3 = sub_22CA20AF0();
      v4 = sub_22CA21000();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 67109120;
        v5[1] = v1;
        sub_22CA169D0(&dword_22C9CA000, v6, v7, "Cannot convert suggestionSource %d to candidate source type");
        sub_22CA169C4();
        MEMORY[0x2318BB680]();
      }

      sub_22C9D661C();
      v8 = swift_allocError();
      return sub_22CA1699C(v8, v9);
    }
  }

  return result;
}

uint64_t sub_22CA1638C(uint64_t a1, uint64_t a2)
{

  v4 = sub_22C9DE2A4(a1, a2) - 22;
  if (v4 > 0xCu)
  {
    return 3000;
  }

  else
  {
    return *&a9[4 * v4];
  }
}

id sub_22CA163EC(uint64_t a1, uint64_t a2)
{

  switch(sub_22C9DE2A4(a1, a2))
  {
    case '#':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    case '$':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    case '%':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    case '&':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    default:
      v5 = sub_22CA1638C(a1, a2);
      result = sub_22C9FDEC0(v5);
      break;
  }

  return result;
}

uint64_t sub_22CA1651C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 mediaContainer];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_22C9DDE44(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_9:
    if (qword_28143A320 != -1)
    {
      sub_22CA16988();
      swift_once();
    }

    v16 = sub_22CA20B10();
    sub_22C9D0494(v16, &unk_28143A4E0);

    v17 = a1;
    v18 = sub_22CA20AF0();
    v19 = sub_22CA21000();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_22C9D60B0(a2, a3, &v25);
      *(v20 + 12) = 2112;
      v23 = [v17 mediaContainer];
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_22C9CA000, v18, v19, "INPlayMediaIntent Invalid (%s has nil identifier. Media container: %@", v20, 0x16u);
      sub_22CA16920(v21);
      sub_22CA169C4();
      MEMORY[0x2318BB680]();
      sub_22C9D04CC(v22);
      sub_22CA169C4();
      MEMORY[0x2318BB680]();
      sub_22CA169C4();
      MEMORY[0x2318BB680]();
    }

    goto LABEL_14;
  }

  v12 = [a1 mediaContainer];
  if (!v12 || (v13 = v12, v14 = [v12 type], v13, v14 >= 0x14))
  {
LABEL_14:
    LOBYTE(v15) = 0;
    return v15 & 1;
  }

  v15 = 0xF87FEu >> v14;
  return v15 & 1;
}

uint64_t sub_22CA16750(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 2;
  }

  else
  {
    return dword_22CA251F8[a1 - 1];
  }
}

uint64_t sub_22CA16774(int a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x6574736567677573;
  }

  if ((a1 - 4) < 5 || a1 == 2)
  {
    return 0x64656D75736E6F63;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22CA167EC(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  if (qword_28143A320 != -1)
  {
    sub_22CA16988();
    swift_once();
  }

  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, &unk_28143A4E0);
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v6[1] = a1;
    sub_22CA169D0(&dword_22C9CA000, v7, v8, "Cannot convert engagementType %d to candidate source type");
    sub_22CA169C4();
    MEMORY[0x2318BB680]();
  }

  sub_22C9D661C();
  v9 = swift_allocError();
  return sub_22CA1699C(v9, v10);
}

uint64_t sub_22CA16920(uint64_t a1)
{
  v2 = sub_22C9D02E4(&unk_27D9E5090, &qword_22CA22E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CA1699C(uint64_t a1, uint64_t a2)
{
  *a2 = 5;
  *(a2 + 8) = 2;

  return swift_willThrow();
}

void sub_22CA169D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

id sub_22CA169F0(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22C9D02E4(&qword_27D9E51F0, qword_22CA25318);
  v2 = sub_22CA20EB0();

  v3 = [v1 initWithFeatureProviderArray_];

  return v3;
}

uint64_t sub_22CA16A80(uint64_t a1)
{
  sub_22CA20D30();
  swift_allocObject();
  v3 = sub_22CA20D20();
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_22CA16B30(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA16C00, 0, 0);
}

uint64_t sub_22CA16C00()
{
  v1 = *(*(v0 + 56) + 16);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 64);
    *(v0 + 136) = *(*(v0 + 80) + 80);
    v3 = sub_22CA20B80();
    *(v0 + 104) = v3;
    *(v0 + 112) = *(v2 + 16);

    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_22CA16D40;

    return sub_22CA00D88(v3);
  }

  else
  {
    sub_22C9E28F0();
    sub_22CA169F0(MEMORY[0x277D84F90]);

    v6 = sub_22CA175D8();

    return v7(v6);
  }
}

uint64_t sub_22CA16D40()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22CA1727C;
  }

  else
  {
    v2 = sub_22CA16E74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22CA16E74()
{
  v28 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);
  v27 = MEMORY[0x277D84F90];
  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v3 = [v2 allowedBundleIdentifiers];
  sub_22CA20EC0();

  [v2 suggestionType];
  sub_22C9F234C();

  v4 = sub_22CA20B80();
  sub_22C9FFB48(v4);
  if (v1)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v5 = *(v0 + 80);
    swift_unknownObjectRelease();
    v6 = 0;
    v7 = 0;
    v9 = *(v5 + 16);
    v8 = v5 + 16;
    v25 = *(v8 + 56);
    v26 = v9;
    while (v7 != *(v0 + 96))
    {
      v26(*(v0 + 88), *(v0 + 56) + v6 + ((*(v0 + 136) + 32) & ~*(v0 + 136)), *(v0 + 72));
      v10 = sub_22CA20DD0();
      v11 = objc_allocWithZone(MEMORY[0x277CBFED0]);
      v12 = sub_22CA17474(v10);
      sub_22CA20B90();
      v13 = *(v0 + 32);
      v14 = sub_22C9FFBE8(v13);

      if (v14)
      {

        v12 = v14;
      }

      sub_22CA20B90();
      v15 = *(v0 + 40);
      v16 = sub_22CA01CE0(v15);

      if (v16)
      {
        swift_getObjectType();
        v17 = v16;
        v18 = sub_22CA21050();

        swift_unknownObjectRelease();
        v12 = v18;
      }

      v19 = *(v0 + 88);
      v20 = *(v0 + 72);
      swift_getObjectType();
      sub_22CA17584(v12, &v27);
      (*(v8 - 8))(v19, v20);
      v6 += v25;
      ++v7;
    }

    sub_22C9E28F0();
    sub_22CA169F0(v27);

    swift_unknownObjectRelease();

    v21 = sub_22CA175D8();

    return v22(v21);
  }
}

uint64_t sub_22CA1727C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22CA17324(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C9ECDEC;

  return sub_22CA16B30(v4, a2);
}

uint64_t sub_22CA17434(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSBatchCandidateFeatureProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22CA17474(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22CA20DA0();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22CA20930();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_22CA17584(uint64_t a1, void *a2)
{
  MEMORY[0x2318BA9F0]();
  sub_22C9FAF48();
  return sub_22CA20F00();
}

__n128 sub_22CA175EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22CA175F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CA17638(uint64_t result, int a2, int a3)
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

void sub_22CA17684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22CA20920();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_22CA17714()
{
  sub_22C9D7018();
  v1 = [*(v0 + 48) currentIntent];
  *(v0 + 56) = [v1 intent];

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for MSPlayMediaIntent();
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22CA17930;

    return sub_22CA1BD4C();
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for MSPlayMediaAppIntent();
      *(v0 + 40) = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
      *(v0 + 16) = v5;
      swift_unknownObjectRetain();
      v6 = swift_task_alloc();
      *(v0 + 88) = v6;
      *v6 = v0;
      v6[1] = sub_22CA17B00;

      return sub_22CA1CCDC();
    }

    else
    {
      swift_unknownObjectRelease();
      v7 = *(v0 + 8);

      return v7(0);
    }
  }
}

uint64_t sub_22CA17930()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22CA17A38()
{
  sub_22C9D6F3C();
  swift_unknownObjectRelease_n();
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22CA17AA0()
{
  sub_22C9D6F3C();
  swift_unknownObjectRelease_n();
  sub_22C9D7050();

  return v0();
}

uint64_t sub_22CA17B00()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  v4[12] = v0;

  if (!v0)
  {
    v4[13] = v1;
    sub_22C9D04CC(v4 + 2);
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22CA17C10()
{
  sub_22C9D6F3C();
  swift_unknownObjectRelease();
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22CA17C74()
{
  sub_22C9D6F3C();
  swift_unknownObjectRelease();
  sub_22C9D04CC((v0 + 16));
  sub_22C9D7050();

  return v1();
}

uint64_t static MSAlbumArtwork.artwork(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_22CA181B8(a1, a2, a3, &unk_283FCE458, &unk_22CA25378);
}

{
  return sub_22CA181B8(a1, a2, a3, &unk_283FCE480, &unk_22CA25388);
}

uint64_t sub_22CA17CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  type metadata accessor for MSPlayMediaIntent();
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_22CA17DA0;

  return sub_22CA1BD4C();
}

uint64_t sub_22CA17DA0()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (!v0)
  {
    *(v4 + 48) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22CA17EA8()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 48);
  (*(v0 + 16))(v1, 0);

  sub_22C9D7050();

  return v2();
}

uint64_t sub_22CA17F14()
{
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Failed to retrieve artwork. Error: %@", v7, 0xCu);
    sub_22CA16920(v8);
    MEMORY[0x2318BB680](v8, -1, -1);
    MEMORY[0x2318BB680](v7, -1, -1);
  }

  v11 = *(v0 + 40);
  v12 = *(v0 + 16);

  v13 = v11;
  v12(0, v11);

  sub_22C9D7050();

  return v14();
}

uint64_t sub_22CA180BC()
{
  sub_22CA18710();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22CA186DC(v1);

  return sub_22CA17CF8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22CA181B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22CA20F70();
  sub_22C9D0B98(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = a1;

  sub_22C9D1034(0, 0, v12, a5, v14);
}

uint64_t sub_22CA182B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_22CA18354;

  return sub_22CA176F4(a5);
}

uint64_t sub_22CA18354()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (!v0)
  {
    *(v4 + 48) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22CA1845C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22CA184A4()
{
  sub_22CA18710();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22CA186DC(v1);

  return sub_22CA182B4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22CA18580(uint64_t a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v9 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v9;
  swift_getObjCClassMetadata();
  v10 = a3;
  a7();
}

MSAlbumArtwork __swiftcall MSAlbumArtwork.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22CA18724()
{
  sub_22CA20BD0();
  swift_allocObject();
  *(v0 + 16) = sub_22CA20BC0();
  return v0;
}

void *sub_22CA187F4(uint64_t a1)
{
  v2 = v1;
  sub_22CA20C80();
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  swift_allocObject();
  *(v1 + 96) = sub_22CA20C70();
  type metadata accessor for MSSiriKitPlayMediaIntentCandidateSourceRequestTransformer();
  v3 = swift_allocObject();
  sub_22CA18724();
  v2[5] = v3;
  sub_22C9D02E4(&qword_27D9E4E08, &qword_22CA234E0);
  swift_allocObject();
  v2[6] = sub_22CA20B70();
  type metadata accessor for MSSiriKitPlayMediaIntentCandidateSource();
  swift_allocObject();

  v2[4] = sub_22CA156A8(v4);
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  sub_22CA18E64(&qword_27D9E4E20, 255, MEMORY[0x277CE9B38], MEMORY[0x277CE9B08]);

  v5 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v5);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA26F20);
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000016, 0x800000022CA26F40);
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA26F60);
  sub_22CA21240();

  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  return v2;
}

uint64_t sub_22CA18B34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline();
  v7 = sub_22CA18E64(&qword_27D9E4C80, v6, type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline, &unk_22CA25548);
  *v4 = v2;
  v4[1] = sub_22C9D8320;

  return MEMORY[0x28213B5A0](a2, v5, v7);
}

uint64_t sub_22CA18E64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CA18EC0()
{
  sub_22C9D6F3C();
  if (os_feature_enabled_ranked_suggestions())
  {
    type metadata accessor for MSRankedSuggester();
    v1 = swift_task_alloc();
    *(v0 + 16) = v1;
    *v1 = v0;
    v1[1] = sub_22CA18FD4;

    return static MSRankedSuggester.availableBundleIDs()();
  }

  else
  {
    type metadata accessor for MSLegacySuggester();
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_22CA190B4;

    return static MSLegacySuggester.availableBundleIDs()();
  }
}

uint64_t sub_22CA18FD4()
{
  sub_22C9D6F3C();
  sub_22CA1A600();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  v3 = sub_22CA1A610();

  return v4(v3);
}

uint64_t sub_22CA190B4()
{
  sub_22C9D6F3C();
  sub_22CA1A600();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  v3 = sub_22CA1A610();

  return v4(v3);
}

void sub_22CA19194(uint64_t a1, uint64_t a2)
{
  v3 = sub_22CA20EB0();
  (*(a2 + 16))(a2, v3);
}

void sub_22CA191F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for MSSuggestion(0);
    v5 = sub_22CA20EB0();
  }

  if (a2)
  {
    v6 = sub_22CA20920();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22CA19380()
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v2 = [v0 *v1];
  v3 = [v2 requestIdentifier];

  v4 = sub_22CA20E20();
  return v4;
}

id MSSuggester.copy(with:)@<X0>(uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MSSuggester();
  v5 = [v2 requestIdentifier];
  v6 = sub_22CA20E20();
  v8 = v7;

  result = sub_22CA199E8(v6, v8);
  a2[3] = v4;
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for MSSuggester()
{
  result = qword_27D9E5250;
  if (!qword_27D9E5250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E5250);
  }

  return result;
}

Swift::Void __swiftcall MSSuggester.encode(with:)(NSCoder with)
{
  v3 = [v1 legacySuggester];
  sub_22CA1A620();
  v4 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 rankedSuggester];
  sub_22CA1A640();
  v6 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

MSSuggester_optional __swiftcall MSSuggester.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v6 = v2;
  result.value.rankedSuggester = v4;
  result.value.legacySuggester = v3;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

id MSSuggester.init(coder:)(void *a1)
{
  sub_22CA1A620();
  v3 = sub_22CA20E10();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {

LABEL_15:
    sub_22C9D027C(&v26);
    goto LABEL_16;
  }

  v5 = type metadata accessor for MSLegacySuggester();
  if ((sub_22CA1A654(v5, v6, v7, v5, v8, v9, v10) & 1) == 0)
  {

LABEL_16:
    type metadata accessor for MSSuggester();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_22CA1A640();
  v11 = sub_22CA20E10();
  v12 = [a1 decodeObjectForKey_];

  if (v12)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {

    goto LABEL_15;
  }

  v13 = type metadata accessor for MSRankedSuggester();
  if ((sub_22CA1A654(v13, v14, v15, v13, v16, v17, v18) & 1) == 0)
  {

    goto LABEL_16;
  }

  v19 = v23;
  *&v1[OBJC_IVAR___MSSuggester_legacySuggester] = v23;
  *&v1[OBJC_IVAR___MSSuggester_rankedSuggester] = v19;
  v22.receiver = v1;
  v22.super_class = MSSuggester;
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

uint64_t sub_22CA198D8()
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v0 = [objc_opt_self() defaultRequest];
  type metadata accessor for MSSuggester();
  v1 = [v0 requestIdentifier];
  v2 = sub_22CA20E20();
  v4 = v3;

  sub_22CA199E8(v2, v4);

  return swift_dynamicCastUnknownClassUnconditional();
}

id sub_22CA199E8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22CA20E10();

  v4 = [v2 initWithRequestIdentifier_];

  return v4;
}

id MSSuggester.init(requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MSRankedSuggester();

  *&v2[OBJC_IVAR___MSSuggester_rankedSuggester] = j___sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC();
  type metadata accessor for MSLegacySuggester();
  *&v2[OBJC_IVAR___MSSuggester_legacySuggester] = j___sSo17MSLegacySuggesterC05MediaB0E17requestIdentifierABSS_tcfC(a1, a2);
  v6.receiver = v2;
  v6.super_class = MSSuggester;
  return objc_msgSendSuper2(&v6, sel_init);
}

void MSSuggester.suggestions(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 requestIdentifier];
  v9 = sub_22CA20E20();
  v11 = v10;

  v12 = (a1 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
  *v12 = v9;
  v12[1] = v11;

  if (os_feature_enabled_ranked_suggestions())
  {
    v13 = [v4 rankedSuggester];
    v18 = a2;
    v19 = a3;
    sub_22CA1A5B0();
    sub_22CA1A5E8();
    v15 = &unk_283FCE510;
  }

  else
  {
    v13 = [v4 legacySuggester];
    v18 = a2;
    v19 = a3;
    sub_22CA1A5B0();
    sub_22CA1A5E8();
    v15 = &unk_283FCE4E8;
  }

  v17[2] = v14;
  v17[3] = v15;
  v16 = _Block_copy(v17);

  [v13 suggestionsWithOptions:a1 completion:v16];
  _Block_release(v16);
}

uint64_t sub_22CA19C84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for MSSuggestion(0);
    v4 = sub_22CA20EC0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_22CA19D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static MSSuggester.availablebundleIDsForMediaSuggestions()()
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v0 = [objc_opt_self() availablebundleIDsForMediaSuggestions];
  v1 = sub_22CA20EC0();

  return v1;
}

void static MSSuggester.availableBundleIDs(completion:)(uint64_t a1, uint64_t a2)
{
  if (os_feature_enabled_ranked_suggestions())
  {
    v4 = objc_opt_self();
    v9 = a1;
    v10 = a2;
    sub_22CA1A5B0();
    sub_22CA1A5D0();
    v6 = &unk_283FCE560;
  }

  else
  {
    v4 = objc_opt_self();
    v9 = a1;
    v10 = a2;
    sub_22CA1A5B0();
    sub_22CA1A5D0();
    v6 = &unk_283FCE538;
  }

  v8[2] = v5;
  v8[3] = v6;
  v7 = _Block_copy(v8);

  [v4 availableBundleIDsWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_22CA19F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_22CA20EC0();

  v2(v3);
}

uint64_t MSSuggester.candidates(for:)(uint64_t a1)
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v4 = [v1 *v3];
  v5 = [v4 candidatesForRequestOptions_];

  type metadata accessor for MSSuggestion(0);
  v6 = sub_22CA20EC0();

  return v6;
}

uint64_t MSSuggester.candidates(for:from:to:)(uint64_t a1)
{
  if (os_feature_enabled_ranked_suggestions())
  {
    v3 = [v1 rankedSuggester];
    v4 = sub_22CA209A0();
    v5 = sub_22CA209A0();
    v6 = [v3 candidatesForRequestOptions:a1 from:v4 to:v5];
  }

  else
  {
    v5 = [v1 legacySuggester];
    v6 = [v5 candidatesForRequestOptions_];
  }

  type metadata accessor for MSSuggestion(0);
  v7 = sub_22CA20EC0();

  return v7;
}

uint64_t sub_22CA1A3F8()
{
  sub_22C9D6F3C();
  if (os_feature_enabled_ranked_suggestions())
  {
    type metadata accessor for MSRankedSuggester();
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_22CA190B4;

    return static MSRankedSuggester.candidateCount(for:)();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3(0);
  }
}

MSSuggester __swiftcall MSSuggester.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.rankedSuggester = v3;
  result.legacySuggester = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_22CA1A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t getEnumTagSinglePayload for MSConstants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MSConstants(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22CA1A79C()
{
  v0 = sub_22CA20B10();
  sub_22CA1AA1C(v0, qword_28143A438);
  sub_22C9D0494(v0, qword_28143A438);
  return sub_22CA20B00();
}

uint64_t sub_22CA1A880()
{
  sub_22CA1AC54();
  v1 = sub_22CA20B10();
  sub_22CA1AA1C(v1, v0);
  sub_22C9D0494(v1, v0);
  return sub_22CA20B00();
}

uint64_t sub_22CA1A960()
{
  sub_22CA1AC54();
  sub_22CA1ABFC();
  result = sub_22CA21100();
  *v0 = result;
  return result;
}

uint64_t *sub_22CA1AA1C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_22CA1AB70(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_22CA20AE0();
  sub_22CA1AA1C(v8, a2);
  sub_22C9D0494(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_22CA20AD0();
}

unint64_t sub_22CA1ABFC()
{
  result = qword_28143A090;
  if (!qword_28143A090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A090);
  }

  return result;
}

id MSPlayMediaIntent.__allocating_init(intent:bundleID:date:suggestionSource:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = a4;
  v11 = objc_allocWithZone(v5);
  return MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(a1, a2, a3, v6, a5);
}

uint64_t MSPlayMediaIntent.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID);

  return v1;
}

id MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(void *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v6 = &v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent] = a1;
  v7 = &v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID];
  *v7 = a2;
  *(v7 + 1) = a3;
  *&v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date] = a5;
  *&v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource] = a4;
  v8 = a1;
  v9 = [v8 mediaContainer];
  if (v9)
  {
    v9 = sub_22C9DDE44(v9);
  }

  else
  {
    v10 = 0;
  }

  *v6 = v9;
  *(v6 + 1) = v10;

  v13.receiver = v5;
  v13.super_class = type metadata accessor for MSPlayMediaIntent();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

uint64_t sub_22CA1AE34@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent);
  v5 = v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID;
  v6 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID);
  v7 = *(v5 + 8);
  v8 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date);
  v9 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
  v10 = type metadata accessor for MSPlayMediaIntent();
  v11 = objc_allocWithZone(v10);
  v12 = v4;

  v13 = MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(v12, v6, v7, v9, v8);
  v14 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier + 8);
  v15 = &v13[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier];
  *v15 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier);
  *(v15 + 1) = v14;

  a1[3] = v10;
  *a1 = v13;
  return result;
}

void sub_22CA1AF84(void *a1)
{
  v3 = sub_22C9D7030();
  sub_22C9D06F4();

  v4 = sub_22CA20E10();
  v5 = sub_22C9D6F18();
  sub_22C9D06F4();

  v6 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date);
  v7 = sub_22CA20E10();
  [a1 encodeDouble:v7 forKey:v6];

  v8 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
  v9 = sub_22C9E050C();
  [a1 encodeInt32:v8 forKey:v9];

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier + 8))
  {

    v10 = sub_22CA20E10();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_22CA1CB48();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();
}

id MSPlayMediaIntent.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = sub_22C9D7030();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_22CA21130();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  sub_22C9D0698(v6, v7, v8, v9, v10, v11, v12, v13, v72, v75, v78.receiver, v78.super_class, v79, v80, v81, *(&v81 + 1), v82);
  if (!v14)
  {

LABEL_16:
    sub_22C9D6C44(v83, &unk_27D9E4D60, &unk_22CA22BE0);
    goto LABEL_17;
  }

  v15 = sub_22CA1C660();
  if ((sub_22CA1CB28(v15, v16, v17, v15, v18, v19, v20, v21) & 1) == 0)
  {

    goto LABEL_17;
  }

  v22 = v79;
  v23 = sub_22C9D6F18();
  v24 = [a1 decodeObjectForKey_];

  if (v24)
  {
    sub_22CA21130();
    v25 = swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  *&v40 = sub_22C9D0698(v25, v26, v27, v28, v29, v30, v31, v32, v73, v76, v78.receiver, v78.super_class, v79, v80, v81, *(&v81 + 1), v82).n128_u64[0];
  if (!v41)
  {

    goto LABEL_16;
  }

  if (sub_22CA1CB28(v33, v34, v35, MEMORY[0x277D837D0], v36, v37, v38, v39, v40))
  {
    v42 = v79;
    v43 = sub_22CA20E10();
    [a1 decodeDoubleForKey_];
    v45 = v44;

    v46 = sub_22C9E050C();
    v47 = [a1 decodeInt32ForKey_];

    v48 = sub_22CA1CB48();
    v49 = [a1 decodeObjectForKey_];

    if (v49)
    {
      sub_22CA21130();
      v50 = swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    *&v67 = sub_22C9D0698(v50, v51, v52, v53, v54, v55, v56, v57, v74, v80, v78.receiver, v78.super_class, v79, v80, v81, *(&v81 + 1), v82).n128_u64[0];
    if (v68)
    {
      if (sub_22CA1CB28(v60, v61, v62, MEMORY[0x277D837D0], v63, v64, v65, v66, v67))
      {
        v69 = v79;
        v70 = v80;
LABEL_26:
        *&v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent] = v22;
        v71 = &v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID];
        *v71 = v42;
        v71[1] = v77;
        *&v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date] = v45;
        *&v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource] = v47;
        *v3 = v69;
        v3[1] = v70;

        v78.receiver = v1;
        v78.super_class = type metadata accessor for MSPlayMediaIntent();
        v58 = objc_msgSendSuper2(&v78, sel_init);

        return v58;
      }
    }

    else
    {
      sub_22C9D6C44(v83, &unk_27D9E4D60, &unk_22CA22BE0);
    }

    v69 = 0;
    v70 = 0xE000000000000000;
    goto LABEL_26;
  }

LABEL_17:

  type metadata accessor for MSPlayMediaIntent();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22CA1B520()
{
  v1 = v0;
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v2);

  MEMORY[0x2318BA9C0](0x746E65746E49203ALL, 0xE90000000000003DLL);
  v3 = [*(v0 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent) description];
  v4 = sub_22CA20E20();
  v6 = v5;

  MEMORY[0x2318BA9C0](v4, v6);

  MEMORY[0x2318BA9C0](0x656C646E7562202CLL, 0xEB000000003D4449);
  MEMORY[0x2318BA9C0](*(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID), *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8));
  MEMORY[0x2318BA9C0](0x3D65746164202CLL, 0xE700000000000000);
  sub_22CA20FA0();
  MEMORY[0x2318BA9C0](0xD000000000000013, 0x800000022CA28940);
  LODWORD(v24) = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
  type metadata accessor for MSSuggestionSourceType(0);
  sub_22CA1CB70(v7, v8, v9, v10, v11, v12, v13, v14, v24, v26, 0);
  MEMORY[0x2318BA9C0](0x6669746E65646920, 0xEC0000003D726569);
  v25 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier);
  v15 = sub_22C9D02E4(&qword_27D9E5178, &qword_22CA24DA0);
  sub_22CA1CB70(v15, v16, v17, v18, v19, v20, v21, v22, v25, *(&v25 + 1), v27);
  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return v28;
}

uint64_t sub_22CA1B74C()
{
  sub_22C9D7018();
  v1 = *(v0[19] + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent);
  v0[20] = v1;
  v2 = [v1 mediaContainer];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 artwork];
    v0[21] = v4;

    if (v4 && [v4 _requiresRetrieval])
    {
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_22CA1B900;
      v5 = swift_continuation_init();
      v0[17] = sub_22C9D02E4(&unk_27D9E5290, &unk_22CA256A8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_22CA1BCC4;
      v0[13] = &unk_283FCE650;
      v0[14] = v5;
      [v4 _retrieveImageDataWithReply_];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_22C9E6EBC();

  return v6(v4);
}

uint64_t sub_22CA1B900()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 176) = v2;
  if (v2)
  {
    v3 = sub_22CA1BC5C;
  }

  else
  {
    v3 = sub_22CA1BA08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22CA1BA08()
{
  v22 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {

    sub_22C9E6EBC();

    return v2(v1);
  }

  else
  {
    if (qword_27D9E4730 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 152);
    v5 = sub_22CA20B10();
    sub_22C9D0494(v5, &unk_27D9E8080);
    v6 = v4;
    v7 = sub_22CA20AF0();
    v8 = sub_22CA21000();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = [v9 identifier];
      if (v12)
      {
        v13 = v12;
        v14 = sub_22CA20E20();
        v16 = v15;
      }

      else
      {
        v16 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E55;
      }

      v17 = sub_22C9D60B0(v14, v16, &v21);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_22C9CA000, v7, v8, "PlayMediaIntent: Artwork retrieval error %s", v10, 0xCu);
      sub_22C9D04CC(v11);
      sub_22C9D70C0();
      sub_22C9D70C0();
    }

    v18 = *(v0 + 168);
    sub_22C9D661C();
    swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 2;
    swift_willThrow();

    sub_22C9D7050();

    return v20();
  }
}

uint64_t sub_22CA1BC5C()
{
  sub_22C9D7018();
  v1 = *(v0 + 168);
  swift_willThrow();

  sub_22C9D7050();

  return v2();
}

uint64_t sub_22CA1BCC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_22C9D05CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_22CA11158();
  }

  else
  {
    v8 = a2;

    return sub_22CA0EBB8(v5, a2);
  }
}

uint64_t sub_22CA1BD4C()
{
  sub_22C9D6F3C();
  v0[2] = v1;
  v2 = sub_22CA209F0();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA1BE08, 0, 0);
}

uint64_t sub_22CA1BE08(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_22CA209E0();
  sub_22CA20990();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = objc_allocWithZone(type metadata accessor for MSPlayMediaIntent());
  v1[6] = MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(v5, 0x6C7070612E6D6F63, 0xEE0044494F4E2E65, 2, v7);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_22CA1BF18;

  return sub_22CA1B72C();
}

uint64_t sub_22CA1BF18()
{
  sub_22C9D7018();
  v3 = v2;
  sub_22C9D70B4();
  v5 = v4;
  v6 = *v1;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v5 + 64) = v0;

  if (v0)
  {
    v8 = sub_22CA1C098;
  }

  else
  {
    *(v5 + 72) = v3;
    v8 = sub_22CA1C030;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22CA1C030()
{
  sub_22C9D6F3C();

  sub_22C9E6EBC();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_22CA1C098()
{
  sub_22C9D6F3C();

  sub_22C9D7050();

  return v1();
}

uint64_t sub_22CA1C0FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_22CA20F70();
  sub_22C9D0B98(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v3;
  v12 = a1;

  sub_22C9D1034(0, 0, v9, &unk_22CA256C0, v11);
}

uint64_t sub_22CA1C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_22CA1C294;

  return sub_22CA1BD4C();
}

uint64_t sub_22CA1C294()
{
  sub_22C9D7018();
  v3 = v2;
  sub_22C9D70B4();
  v5 = v4;
  v6 = *v1;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v5 + 40) = v0;

  if (v0)
  {
    v8 = sub_22CA1C3AC;
  }

  else
  {
    *(v5 + 48) = v3;
    v8 = sub_22CA17EA8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22CA1C3AC()
{
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Failed to retrieve artwork. Error: %@", v7, 0xCu);
    sub_22C9D6C44(v8, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v11 = *(v0 + 40);
  v12 = *(v0 + 16);

  v13 = v11;
  v12(0, v11);

  sub_22C9D7050();

  return v14();
}

id MSPlayMediaIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSPlayMediaIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPlayMediaIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22CA1C660()
{
  result = qword_28143A310;
  if (!qword_28143A310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A310);
  }

  return result;
}

uint64_t sub_22CA1C6BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22C9D0F54;

  return sub_22CA1C1FC(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of MSPlayMediaIntent.albumArtwork()()
{
  sub_22C9D7018();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22CA1C968;

  return v5();
}

uint64_t sub_22CA1C968()
{
  sub_22C9D6F3C();
  v2 = v1;
  sub_22C9D70B4();
  v3 = *v0;
  sub_22C9D6EA4();
  *v4 = v3;

  sub_22C9E6EBC();

  return v5(v2);
}

uint64_t getEnumTagSinglePayload for MSSuggestionError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MSSuggestionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22CA1CAE8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22CA1CB00(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22CA1CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_22CA1CB48()
{

  return sub_22CA20E10();
}

uint64_t sub_22CA1CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return sub_22CA21240();
}

uint64_t sub_22CA1CB94(uint64_t a1)
{
  result = MEMORY[0x2318BAB30](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_22CA15904(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

id MSPlayMediaAppIntent.__allocating_init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)()
{
  sub_22CA206B4();
  v1 = objc_allocWithZone(v0);
  return MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
}

uint64_t sub_22CA1CCDC()
{
  sub_22C9D6F3C();
  v0[6] = v1;
  v2 = sub_22CA209F0();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](&sub_22CA1CD98, 0, 0);
}

uint64_t sub_22CA1CEC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22C9D6EA4();
  *v6 = v5;
  *(v4 + 96) = v1;

  if (v1)
  {
    v7 = sub_22CA1D04C;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_22CA1CFE0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22CA1CFE0()
{
  sub_22C9D6F3C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_22CA1D04C()
{
  sub_22C9D6F3C();

  sub_22C9D7050();

  return v1();
}

uint64_t MSPlayMediaAppIntent.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID);

  return v1;
}

id MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)()
{
  sub_22CA206B4();
  sub_22C9D66FC(v11, &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction]);
  v12 = &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
  *v12 = v7;
  *(v12 + 1) = v6;
  *&v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_date] = v10;
  *&v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource] = v5;
  v13 = &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
  *v13 = v4;
  *(v13 + 1) = v3;
  *&v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags] = v2;
  v14 = &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle];
  *v14 = v0;
  *(v14 + 1) = v9;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for MSPlayMediaAppIntent();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_22C9D04CC(v8);
  return v15;
}

id sub_22CA1D230@<X0>(void *a1@<X8>)
{
  sub_22C9D66FC(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v6);
  v3 = type metadata accessor for MSPlayMediaAppIntent();
  v4 = objc_allocWithZone(v3);

  result = MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
  a1[3] = v3;
  *a1 = result;
  return result;
}

void sub_22CA1D3B8(void *a1)
{
  sub_22C9D05CC((v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction), *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction + 24));
  sub_22CA21350();
  v3 = sub_22CA206E0();
  sub_22C9D06F4();
  swift_unknownObjectRelease();

  v4 = sub_22CA20E10();
  v5 = sub_22C9D6F18();
  sub_22C9D06F4();

  v6 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_date);
  v7 = sub_22CA20E10();
  [a1 encodeDouble:v7 forKey:v6];

  v8 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource);
  v9 = sub_22C9E050C();
  [a1 encodeInt32:v8 forKey:v9];

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8))
  {
    sub_22CA20E10();
  }

  v10 = sub_22CA1CB48();
  sub_22C9D06F4();
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags))
  {

    sub_22CA054BC(v11);
    v12 = sub_22CA20EB0();

    v13 = sub_22CA20E10();
    [a1 encodeObject:v12 forKey:v13];
  }

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle + 8))
  {
    v14 = sub_22CA20E10();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22CA20830();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();
}

id MSPlayMediaAppIntent.init(coder:)(uint64_t a1)
{
  v3 = v1;
  v4 = sub_22CA206E0();
  v5 = sub_22CA207EC();
  v7 = [v5 v6];

  if (!v7)
  {
    goto LABEL_11;
  }

  sub_22CA21130();
  swift_unknownObjectRelease();
  v8 = sub_22C9D6F18();
  v9 = sub_22CA207EC();
  v11 = [v9 v10];

  if (v11)
  {
    sub_22CA21130();
    v12 = swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  *&v27 = sub_22C9DAEE8(v12, v13, v14, v15, v16, v17, v18, v19, v98, v103, v107, v112, v115.receiver, v115.super_class, v116, v117, v118, *(&v118 + 1), v119).n128_u64[0];
  if (!v28)
  {
    sub_22C9D04CC(v121);

    sub_22C9D6C44(v120, &unk_27D9E4D60, &unk_22CA22BE0);
LABEL_12:
    type metadata accessor for MSPlayMediaAppIntent();
    sub_22CA207A8();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((sub_22CA20730(v20, v21, v22, MEMORY[0x277D837D0], v23, v24, v25, v26, v99, v104, v27) & 1) == 0)
  {
    sub_22C9D04CC(v121);
LABEL_11:

    goto LABEL_12;
  }

  v29 = sub_22CA20E10();
  [v2 decodeDoubleForKey_];
  v31 = v30;

  v32 = sub_22C9E050C();
  LODWORD(v108) = [v2 decodeInt32ForKey_];

  v33 = sub_22CA1CB48();
  v34 = sub_22CA207EC();
  v36 = [v34 v35];

  if (v36)
  {
    sub_22CA21130();
    v37 = swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  *&v54 = sub_22C9DAEE8(v37, v38, v39, v40, v41, v42, v43, v44, v100, v116, v108, v117, v115.receiver, v115.super_class, v116, v117, v118, *(&v118 + 1), v119).n128_u64[0];
  if (v55)
  {
    v56 = sub_22CA20730(v47, v48, v49, MEMORY[0x277D837D0], v50, v51, v52, v53, v101, v105, v54);
    if (v56)
    {
      v57 = v116;
    }

    else
    {
      v57 = 0;
    }

    if (v56)
    {
      v58 = v117;
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    sub_22C9D6C44(v120, &unk_27D9E4D60, &unk_22CA22BE0);
    v57 = 0;
    v58 = 0;
  }

  sub_22C9D0434(0, &qword_27D9E52E0, 0x277CCACA8);
  v59 = sub_22CA210A0();
  v60 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  if (v59)
  {
    v120[0] = v59;
    sub_22C9D02E4(&unk_27D9E52E8, &qword_22CA25768);
    sub_22C9D02E4(&qword_27D9E4980, &qword_22CA25770);
    if (swift_dynamicCast())
    {
      v60 = v118;
    }
  }

  v62 = sub_22CA20830();
  v63 = sub_22CA207EC();
  v65 = [v63 v64];

  if (v65)
  {
    sub_22CA21130();
    v66 = swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  *&v81 = sub_22C9DAEE8(v66, v67, v68, v69, v70, v71, v72, v73, v101, v105, v109, v113, v115.receiver, v115.super_class, v116, v117, v118, *(&v118 + 1), v119).n128_u64[0];
  if (v82)
  {
    v83 = sub_22CA20730(v74, v75, v76, MEMORY[0x277D837D0], v77, v78, v79, v80, v102, v106, v81);
    if (v83)
    {
      v84 = v116;
    }

    else
    {
      v84 = 0;
    }

    if (v83)
    {
      v85 = v117;
    }

    else
    {
      v85 = 0;
    }
  }

  else
  {
    sub_22C9D6C44(v120, &unk_27D9E4D60, &unk_22CA22BE0);
    v84 = 0;
    v85 = 0;
  }

  sub_22C9D66FC(v121, &v3[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction]);
  v86 = &v3[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
  *v86 = v106;
  v86[1] = v114;
  *&v3[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_date] = v31;
  *&v3[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource] = v110;
  v87 = &v3[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
  *v87 = v57;
  v87[1] = v58;
  v88 = *(v60 + 16);
  if (v88)
  {
    v111 = v84;
    v120[0] = v61;
    sub_22CA0CB14(0, v88, 0);
    v89 = v120[0];
    v90 = (v60 + 40);
    do
    {
      v92 = *(v90 - 1);
      v91 = *v90;
      v120[0] = v89;
      v94 = *(v89 + 16);
      v93 = *(v89 + 24);

      if (v94 >= v93 >> 1)
      {
        sub_22CA0CB14(v93 > 1, v94 + 1, 1);
        v89 = v120[0];
      }

      *(v89 + 16) = v94 + 1;
      v95 = v89 + 16 * v94;
      *(v95 + 32) = v92;
      *(v95 + 40) = v91;
      v90 += 2;
      --v88;
    }

    while (v88);

    v84 = v111;
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
  }

  v96 = sub_22CA1CB94(v89);
  sub_22C9D04CC(v121);
  *&v3[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags] = v96;
  v97 = &v3[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle];
  *v97 = v84;
  v97[1] = v85;
  v115.receiver = v3;
  v115.super_class = type metadata accessor for MSPlayMediaAppIntent();
  v45 = objc_msgSendSuper2(&v115, sel_init);

  return v45;
}

void sub_22CA1DF60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22CA207F8();
  a27 = v29;
  a28 = v30;
  sub_22C9D66FC(v28 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, &a13);
  v31 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20710(v31, v32, v33, v31))
  {
    goto LABEL_30;
  }

  v34 = [a12 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  sub_22CA207A8();
  v35 = sub_22CA20EC0();

  v36 = sub_22C9E6DA0();
  if (!v36)
  {
LABEL_29:

LABEL_30:
    sub_22CA20814();
    return;
  }

  v37 = v36;
  v38 = 0;
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x2318BAD10](v38, v35);
    }

    else
    {
      if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v39 = *(v35 + 8 * v38 + 32);
    }

    v40 = v39;
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v42 = [v39 identifier];
    v43 = sub_22CA20E20();
    v45 = v44;

    if (v43 == 0x65646F73697065 && v45 == 0xE700000000000000)
    {
LABEL_20:

      goto LABEL_21;
    }

    v47 = sub_22CA207B4(v43, v45, 0x65646F73697065);

    if ((v47 & 1) == 0)
    {
      v48 = [v40 identifier];
      v49 = sub_22CA20E20();
      v51 = v50;

      sub_22CA20668();
      if (v49 == v52 && v51 == 0xEB00000000797469)
      {
        goto LABEL_20;
      }

      v54 = sub_22CA21360();

      if ((v54 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_21:
    v55 = [v40 value];
    if (!v55)
    {
      goto LABEL_27;
    }

    v56 = v55;
    v57 = [v55 displayRepresentation];

    if (!v57)
    {
      goto LABEL_27;
    }

    v58 = [v57 image];
    if (!v58)
    {

LABEL_27:
      goto LABEL_28;
    }

    v59 = v58;
    v60 = [v58 inImage];

    if (v60)
    {

      goto LABEL_30;
    }

LABEL_28:
    ++v38;
    if (v41 == v37)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_22CA1E254()
{
  v43 = v0;
  sub_22C9D66FC(v0[7] + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, (v0 + 2));
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (sub_22CA20778())
  {
    v2 = v0[6];
    v3 = [v2 parameters];
    sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
    sub_22CA207A8();
    v4 = sub_22CA20EC0();

    v5 = sub_22C9E6DA0();
    if (v5)
    {
      v6 = v5;
      v40 = v2;
      v41 = v0;
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2318BAD10](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v2 = v8;
        v0 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v9 = [v8 identifier];
        v10 = sub_22CA20E20();
        v1 = v11;

        if (v10 == 0x65646F73697065 && v1 == 0xE700000000000000)
        {
          goto LABEL_20;
        }

        v13 = sub_22CA207B4(v10, v1, 0x65646F73697065);

        if ((v13 & 1) == 0)
        {
          break;
        }

LABEL_21:
        v19 = [v2 value];
        if (v19)
        {
          v20 = v19;
          v1 = [v19 displayRepresentation];

          if (v1)
          {

            v24 = [v1 image];
            if (v24)
            {
              v25 = v24;
              v21 = [v24 inImage];

              if (v21)
              {

                goto LABEL_25;
              }
            }

            v0 = v41;
            if (qword_27D9E4730 == -1)
            {
LABEL_35:
              v26 = v0[7];
              v27 = sub_22CA20B10();
              sub_22C9D0494(v27, &unk_27D9E8080);
              v28 = v26;
              v29 = sub_22CA20AF0();
              v30 = sub_22CA21000();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = v0[7];
                v32 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v42 = v33;
                *v32 = 136315138;
                v34 = *(v31 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8);
                if (v34)
                {
                  v35 = *(v31 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier);
                }

                else
                {
                  v35 = 0x6E776F6E6B6E55;
                }

                if (v34)
                {
                  v36 = v34;
                }

                else
                {
                  v36 = 0xE700000000000000;
                }

                v37 = sub_22C9D60B0(v35, v36, &v42);

                *(v32 + 4) = v37;
                _os_log_impl(&dword_22C9CA000, v29, v30, "AppIntent: Artwork empty %s", v32, 0xCu);
                sub_22C9D04CC(v33);
                sub_22C9D70C0();
                sub_22C9D70C0();
              }

              sub_22CA20604();
              swift_allocError();
              *v38 = 4;
              *(v38 + 8) = 2;
              swift_willThrow();

              sub_22C9D7050();

              return v39();
            }

LABEL_48:
            swift_once();
            goto LABEL_35;
          }
        }

LABEL_23:

        ++v7;
        if (v0 == v6)
        {

          v21 = 0;
LABEL_25:
          v0 = v41;
          goto LABEL_28;
        }
      }

      v14 = [v2 identifier];
      v15 = sub_22CA20E20();
      v1 = v16;

      if (v15 != 0x746E456F69647561 || v1 != 0xEB00000000797469)
      {
        sub_22CA20668();
        v18 = sub_22CA21360();

        if ((v18 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

LABEL_20:

      goto LABEL_21;
    }
  }

  v21 = 0;
LABEL_28:
  v22 = v0[1];

  return v22(v21);
}

void sub_22CA1E76C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22CA207F8();
  a27 = v29;
  a28 = v30;
  sub_22C9D66FC(v28 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, &a13);
  v31 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20710(v31, v32, v33, v31))
  {
    goto LABEL_22;
  }

  v34 = [a12 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  sub_22CA207A8();
  v35 = sub_22CA20EC0();

  v36 = sub_22C9E6DA0();
  if (!v36)
  {
LABEL_21:

    sub_22C9D02E4(&unk_27D9E5320, &qword_22CA231E0);
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D837D0];
    *(v55 + 16) = xmmword_22CA22F90;
    *(v55 + 56) = v56;
    *(v55 + 32) = 0x6E696E7275746552;
    *(v55 + 40) = 0xEF7974706D452067;
    sub_22CA21430();

LABEL_22:
    v57 = 1;
    goto LABEL_23;
  }

  v37 = v36;
  v38 = 0;
  v39 = 0xEB00000000797469;
  v40 = 0x1FAF97000uLL;
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x2318BAD10](v38, v35);
    }

    else
    {
      if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_49;
      }

      v41 = *(v35 + 8 * v38 + 32);
    }

    v28 = v41;
    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    v43 = v40;
    v44 = v39;
    v45 = [v41 identifier];
    v46 = sub_22CA20E20();
    v48 = v47;

    v39 = v44;
    sub_22CA20668();
    if (v46 == v49 && v48 == v44)
    {
    }

    else
    {
      v51 = sub_22CA21360();

      if ((v51 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v40 = v43;
    v52 = [v28 (v43 + 376)];
    if (!v52)
    {

      goto LABEL_20;
    }

    v53 = v52;
    v54 = [v52 (v43 + 376)];

    sub_22CA21130();
    swift_unknownObjectRelease();
    sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
    if (sub_22CA20778())
    {
      break;
    }

LABEL_18:

    v40 = v43;
LABEL_20:
    ++v38;
    if (v42 == v37)
    {
      goto LABEL_21;
    }
  }

  v35 = a12;
  v58 = [a12 identifier];
  v59 = [v58 typeIdentifier];

  v38 = sub_22CA20E20();
  v37 = v60;

  v61 = v38 == 0x4565646F73697045 && v37 == 0xED0000797469746ELL;
  if (v61 || (sub_22CA2075C(0x4565646F73697045, 0xED0000797469746ELL) & 1) != 0 || (v38 == 0x746E456D75626C41 ? (v62 = v37 == v44) : (v62 = 0), v62 || (sub_22CA2075C(0x746E456D75626C41, v44) & 1) != 0 || (v38 == 0x7473696C79616C50 ? (v63 = v37 == 0xEE00797469746E45) : (v63 = 0), v63 || (sub_22CA2075C(0x7473696C79616C50, 0xEE00797469746E45) & 1) != 0)))
  {

    v57 = 0;
    goto LABEL_23;
  }

LABEL_43:
  if (v38 != 0x6E45747369747241 || v37 != 0xEC00000079746974)
  {
    sub_22CA2075C(0x6E45747369747241, 0xEC00000079746974);

    goto LABEL_50;
  }

LABEL_49:

LABEL_50:

  v57 = 0;
LABEL_23:
  LOBYTE(a13) = v57;
  sub_22CA20814();
}

uint64_t sub_22CA1EC14()
{
  sub_22C9D66FC(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v3);
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (sub_22CA20778())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_22CA1EC80()
{
  sub_22C9D66FC(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v93);
  v1 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20890(v1, v2, v3, v1, v4, v5, v6, v7, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91))
  {

    return;
  }

  v8 = [v92 parameters];
  v9 = sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v10 = sub_22CA20EC0();

  v76 = sub_22C9E6DA0();
  if (!v76)
  {

    goto LABEL_68;
  }

  v60 = v92;
  v62 = v9;
  v11 = 0;
  v64 = (v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID);
  v66 = v10;
  v78 = v10 & 0xC000000000000001;
  v68 = v10 + 32;
  v70 = v10 & 0xFFFFFFFFFFFFFF8;
  v86 = 0x800000022CA25AB0;
  while (1)
  {
    if (v78)
    {
      v12 = MEMORY[0x2318BAD10](v11, v10);
    }

    else
    {
      if (v11 >= *(v70 + 16))
      {
        goto LABEL_74;
      }

      v12 = *(v68 + 8 * v11);
    }

    v13 = v12;
    if (__OFADD__(v11++, 1))
    {
      goto LABEL_73;
    }

    v15 = [v12 identifier];
    sub_22CA20E20();
    sub_22CA208C8();
    sub_22CA20790();
    v16 = v16 && v8 == 0xE700000000000000;
    if (v16)
    {
LABEL_20:

      goto LABEL_21;
    }

    v17 = sub_22CA20750();
    sub_22CA207B4(v17, v18, v19);
    sub_22CA208B0();
    if ((v0 & 1) == 0)
    {
      v20 = [v13 identifier];
      sub_22CA20E20();
      sub_22CA208C8();
      sub_22CA20668();
      if (v0 == v21 && v8 == 0xEB00000000797469)
      {
        goto LABEL_20;
      }

      sub_22CA20750();
      sub_22CA21360();
      sub_22CA208B0();
      if ((v0 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

LABEL_21:
    v0 = 0x27872A000uLL;
    v23 = [v13 value];
    if (!v23 || (v8 = v23, v0 = [v23 value], v8, sub_22CA21130(), swift_unknownObjectRelease(), v24 = sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0), (sub_22CA20890(v24, v25, v26, v24, v27, v28, v29, v30, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92) & 1) == 0))
    {
LABEL_61:

      goto LABEL_62;
    }

    v72 = v92;
    v74 = v13;
    v8 = [v92 properties];
    v31 = sub_22CA20EC0();

    if (!(v31 >> 62))
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        break;
      }

      goto LABEL_60;
    }

    v32 = sub_22CA21290();
    if (v32)
    {
      break;
    }

LABEL_60:

    v10 = v66;
LABEL_62:
    if (v11 == v76)
    {

LABEL_68:

      return;
    }
  }

  v33 = 0;
  v90 = v31 & 0xC000000000000001;
  v82 = v64[1];
  v84 = *v64;
  v80 = v31 & 0xFFFFFFFFFFFFFF8;
  v35 = *v64 == 0xD000000000000012 && v86 == v64[1];
  HIDWORD(v88) = v35;
  while (1)
  {
    if (v90)
    {
      v36 = MEMORY[0x2318BAD10](v33, v31);
    }

    else
    {
      if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v36 = *(v31 + 8 * v33 + 32);
    }

    v37 = v36;
    v8 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v88 & 0x100000000) != 0 || (sub_22CA21360())
    {
LABEL_39:
      v38 = [v37 identifier];
      v39 = sub_22CA20E20();
      v0 = v40;

      if (v39 == 0x656D614E776F6873 && v0 == 0xE800000000000000)
      {
      }

      else
      {
        v42 = sub_22CA21360();

        if ((v42 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      v43 = [v37 value];
      if (v43)
      {
        v44 = v43;
        sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
        v45 = [v44 valueType];
        v46 = [objc_opt_self() stringValueType];
        v0 = sub_22CA210D0();

        if (v0)
        {

          v55 = [v44 value];
          sub_22CA21130();

          swift_unknownObjectRelease();
LABEL_70:

          sub_22CA20778();
          return;
        }

LABEL_58:

        goto LABEL_59;
      }

      goto LABEL_59;
    }

    v47 = [v37 identifier];
    v48 = sub_22CA20E20();
    v0 = v49;

    if (v48 == 0x656C746974 && v0 == 0xE500000000000000)
    {
    }

    else
    {
      v51 = sub_22CA21360();

      if ((v51 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v52 = [v37 value];
    if (v52)
    {
      v44 = v52;
      sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
      v53 = [v44 valueType];
      v54 = [objc_opt_self() stringValueType];
      v0 = sub_22CA210D0();

      if (v0)
      {

        v56 = [v44 value];
        sub_22CA21130();

        swift_unknownObjectRelease();
        goto LABEL_70;
      }

      goto LABEL_58;
    }

LABEL_59:

    ++v33;
    if (v8 == v32)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

void sub_22CA1F3C8()
{
  sub_22C9D66FC(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v66);
  v1 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20870(v1, v2, v3, v1, v4, v5, v6, v7, v47, v49, v51, v53, v55, v57, v59, v61))
  {
    return;
  }

  v8 = v65;
  v9 = [v65 parameters];
  v10 = sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v11 = sub_22CA20EC0();

  v12 = sub_22C9E6DA0();
  if (!v12)
  {
LABEL_50:

    return;
  }

  v13 = v12;
  v14 = 0;
  v63 = v11 & 0xC000000000000001;
  v58 = v11 + 32;
  v60 = v11 & 0xFFFFFFFFFFFFFF8;
  v54 = v12;
  v56 = v11;
  v50 = v10;
  v52 = v65;
  while (1)
  {
    if (v63)
    {
      v15 = MEMORY[0x2318BAD10](v14, v11);
    }

    else
    {
      if (v14 >= *(v60 + 16))
      {
        goto LABEL_56;
      }

      v15 = *(v58 + 8 * v14);
    }

    if (__OFADD__(v14++, 1))
    {
      goto LABEL_55;
    }

    v64 = v15;
    v17 = [v15 identifier];
    sub_22CA20E20();
    sub_22CA208C8();
    sub_22CA20790();
    v18 = v18 && v9 == 0xE700000000000000;
    if (v18)
    {
      break;
    }

    v19 = sub_22CA20750();
    sub_22CA207B4(v19, v20, v21);
    sub_22CA208B0();
    if (v0)
    {
      goto LABEL_21;
    }

    v22 = [v64 identifier];
    sub_22CA20E20();
    sub_22CA208C8();
    sub_22CA20668();
    if (v0 == v23 && v9 == 0xEB00000000797469)
    {
      break;
    }

    sub_22CA20750();
    sub_22CA21360();
    sub_22CA208B0();
    if (v0)
    {
      goto LABEL_21;
    }

LABEL_44:

LABEL_47:
    if (v14 == v13)
    {
      goto LABEL_50;
    }
  }

LABEL_21:
  v0 = 0x27872A000uLL;
  v25 = [v64 value];
  if (!v25)
  {
    goto LABEL_44;
  }

  v9 = v25;
  v0 = [v25 value];

  sub_22CA21130();
  swift_unknownObjectRelease();
  v26 = sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
  if ((sub_22CA20870(v26, v27, v28, v26, v29, v30, v31, v32, v48, v50, v52, v54, v56, v58, v60, v62) & 1) == 0)
  {
    goto LABEL_44;
  }

  v62 = v14;
  v9 = [v65 properties];
  v33 = sub_22CA20EC0();

  if (v33 >> 62)
  {
    v34 = sub_22CA21290();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22CA207D8();
  if (!v34)
  {

LABEL_46:
    v11 = v56;
    v13 = v54;
    v14 = v62;
    goto LABEL_47;
  }

  v9 = 0;
  while (2)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x2318BAD10](v9, v33);
    }

    else
    {
      if (v9 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v35 = *(v33 + 8 * v9 + 32);
    }

    v36 = v35;
    v37 = (v9 + 1);
    if (!__OFADD__(v9, 1))
    {
      v38 = [v35 identifier];
      v39 = sub_22CA20E20();
      v0 = v40;

      if (v39 == v14 && v0 == 0xE700000000000000)
      {
      }

      else
      {
        v42 = sub_22CA207B4(v39, v0, v14);

        if ((v42 & 1) == 0)
        {
LABEL_42:

          ++v9;
          if (v37 == v34)
          {

            v8 = v52;
            goto LABEL_46;
          }

          continue;
        }
      }

      v43 = [v36 value];
      if (v43)
      {
        v44 = v43;
        sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
        v45 = [v44 valueType];
        v14 = [objc_opt_self() stringValueType];
        v0 = sub_22CA210D0();

        if (v0)
        {

          v46 = [v44 value];
          sub_22CA21130();

          swift_unknownObjectRelease();
          sub_22CA20778();
          return;
        }

        sub_22CA207D8();
      }

      goto LABEL_42;
    }

    break;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_22CA1F910(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22CA207F8();
  a27 = v28;
  a28 = v29;
  sub_22C9D66FC(v30, &a13);
  v31 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20710(v31, v32, v33, v31))
  {
    goto LABEL_26;
  }

  v34 = [a12 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  sub_22CA207A8();
  v35 = sub_22CA20EC0();

  v36 = sub_22C9E6DA0();
  if (!v36)
  {
LABEL_25:

LABEL_26:
    sub_22CA20814();
    return;
  }

  v37 = v36;
  v38 = 0;
  v39 = 0x65646F73697065;
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x2318BAD10](v38, v35);
    }

    else
    {
      if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v40 = *(v35 + 8 * v38 + 32);
    }

    v41 = v40;
    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v43 = v39;
    v44 = [v40 identifier];
    v45 = sub_22CA20E20();
    v47 = v46;

    v39 = v43;
    if (v45 == v43 && v47 == 0xE700000000000000)
    {
      goto LABEL_21;
    }

    v49 = sub_22CA207B4(v45, v47, v43);

    if ((v49 & 1) == 0)
    {
      v50 = [v41 identifier];
      v51 = sub_22CA20E20();
      v53 = v52;

      sub_22CA20668();
      if (v51 != v54 || v53 != 0xEB00000000797469)
      {
        v56 = sub_22CA21360();

        v39 = v43;
        if ((v56 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v39 = v43;
LABEL_21:
    }

LABEL_22:
    v57 = [v41 value];
    if (v57)
    {
      v58 = v57;
      [v57 value];

      sub_22CA21130();
      swift_unknownObjectRelease();
      sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
      if (sub_22CA20778())
      {

        v59 = [a12 identifier];
        v60 = [v59 instanceIdentifier];

        sub_22CA20E20();
        goto LABEL_26;
      }
    }

LABEL_24:

    ++v38;
    if (v42 == v37)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_22CA1FC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v12 - v7;
  v9 = sub_22CA20F70();
  sub_22C9D0B98(v8, 1, 1, v9);
  sub_22C9D66FC(a1, v12);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_22C9E9818(v12, (v10 + 32));
  *(v10 + 64) = a2;
  *(v10 + 72) = a3;

  sub_22C9D1034(0, 0, v8, &unk_22CA257D0, v10);
}

uint64_t sub_22CA1FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_22CA209F0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](&sub_22CA1FE08, 0, 0);
}

uint64_t sub_22CA1FF2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22C9D6EA4();
  *v6 = v5;
  *(v4 + 112) = v1;

  if (v1)
  {
    v7 = sub_22CA200D4;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_22CA2004C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22CA2004C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  (*(v0 + 56))(v1, 0);

  sub_22C9D7050();

  return v3();
}

uint64_t sub_22CA200D4()
{
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Failed to retrieve artwork. Error: %@", v7, 0xCu);
    sub_22C9D6C44(v8, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 56);

  v13 = v11;
  v12(0, v11);

  sub_22C9D7050();

  return v14();
}

id MSPlayMediaAppIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSPlayMediaAppIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPlayMediaAppIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22CA20540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22C9DE05C;

  return sub_22CA1FD44(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_22CA20604()
{
  result = qword_27D9E5310;
  if (!qword_27D9E5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E5310);
  }

  return result;
}

uint64_t sub_22CA206E0()
{

  return sub_22CA20E10();
}

uint64_t sub_22CA20710(uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_22CA20730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_22CA2075C(uint64_t a1, uint64_t a2)
{

  return sub_22CA21360();
}

uint64_t sub_22CA20778()
{

  return swift_dynamicCast();
}

uint64_t sub_22CA207B4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22CA21360();
}

uint64_t sub_22CA20830()
{

  return sub_22CA20E10();
}

uint64_t sub_22CA20850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_22CA21240();
}

uint64_t sub_22CA20870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_22CA20890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return swift_dynamicCast();
}

uint64_t sub_22CA208B0()
{
}

void sub_22CA208C8()
{
}