uint64_t sub_19A2F9438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2F9554();
}

uint64_t GenerativePlayground.dropPromptGuidanceSketchAssignment()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2F9554();
}

uint64_t sub_19A2F9554()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F95E8, 0, 0);
}

uint64_t sub_19A2F95E8()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2F960C, v1, 0);
}

uint64_t sub_19A2F960C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2F96B8, 0, 0);
}

uint64_t sub_19A2F96B8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v2 + *(v3 + 88);
  v5 = type metadata accessor for GenerationRecipe(0);
  v6 = v4 + *(v5 + 84);
  sub_19A331C90(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = v4 + *(v5 + 44);
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v2 + *(v3 + 48);
  sub_19A335458(*v8, *(v8 + 8));
  *v8 = 0;
  *(v8 + 8) = -1;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v1, 0);
}

void GenerativePlayground.drawOnImageBaseImageDimensions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3;
  *(a1 + 16) = v2;
}

void GenerativePlayground.drawOnImageSketchImageDimensions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 84);
  v3 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *(v1 + 64);
  }

  *a1 = v3;
  *(a1 + 16) = v2;
}

void GenerativePlayground.drawOnImageSketchMaskDimensions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 60);
  v3 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *(v1 + 40);
  }

  *a1 = v3;
  *(a1 + 16) = v2;
}

id GenerativePlayground.DrawOnImageConfiguration.baseImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

id GenerativePlayground.DrawOnImageConfiguration.sketchImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

id GenerativePlayground.DrawOnImageConfiguration.sketchMask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t GenerativePlayground.DrawOnImageAssignmentOptions.RenderMode.hashValue.getter()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

uint64_t _s16VisualGeneration20GenerativePlaygroundC43PromptConditioningImageSanitizationCategoryO9hashValueSivg_0()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

uint64_t sub_19A2F9900(uint64_t a1)
{
  v2 = *v1;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v2);
  return sub_19A57410C();
}

VisualGeneration::GenerativePlayground::DrawOnImageAssignmentOptions __swiftcall GenerativePlayground.DrawOnImageAssignmentOptions.init(renderMode:)(VisualGeneration::GenerativePlayground::DrawOnImageAssignmentOptions::RenderMode renderMode)
{
  *v1 = *renderMode;
  *(v1 + 4) = 0;
  *(v1 + 8) = 257;
  result.renderMode = renderMode;
  return result;
}

uint64_t GenerativePlayground.DrawOnImageAssignmentOptions.scribbleStrength.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

id GenerativePlayground.DrawnOnImageAssignmentEventInfo.baseImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_19A3319D0(v2, v3);
}

id GenerativePlayground.DrawnOnImageAssignmentEventInfo.sketchMask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_19A3319D0(v2, v3);
}

id GenerativePlayground.DrawOnImagePromptSynthesisEventInfo.scribbleColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_19A3319D0(v2, v3);
}

uint64_t GenerativePlayground.assign(baseImage:sketchImage:sketchMask:options:eventsHandler:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 104) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0, &qword_19A577180);
  *(v7 + 128) = swift_task_alloc();
  v12 = type metadata accessor for DefinitionSession(0);
  *(v7 + 136) = v12;
  *(v7 + 144) = *(v12 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *a1;
  *(v7 + 168) = v13;
  *(v7 + 176) = v14;
  *(v7 + 262) = *(a1 + 8);
  v15 = *a2;
  *(v7 + 263) = *(a2 + 8);
  v16 = *a3;
  *(v7 + 184) = v15;
  *(v7 + 192) = v16;
  *(v7 + 264) = *(a3 + 8);
  *(v7 + 200) = *a4;
  *(v7 + 260) = *(a4 + 8);

  return MEMORY[0x1EEE6DFA0](sub_19A2F9BBC, 0, 0);
}

uint64_t sub_19A2F9BBC()
{
  v1 = *(v0 + 200);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    LODWORD(v2) = 0;
    LOBYTE(v3) = 1;
    LOBYTE(v4) = 1;
  }

  else
  {
    v2 = HIDWORD(v1);
    v3 = *(v0 + 260);
    v4 = (v3 >> 8) & 1;
  }

  *(v0 + 267) = v4;
  *(v0 + 266) = v3 & 1;
  *(v0 + 256) = v2;
  *(v0 + 265) = v1 & 1;
  v5 = *(*(v0 + 120) + 168);
  *(v0 + 208) = v5;
  return MEMORY[0x1EEE6DFA0](sub_19A2F9C28, v5, 0);
}

uint64_t sub_19A2F9C28()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[27] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2F9CD8, 0, 0);
}

uint64_t sub_19A2F9CD8()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 136) + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v22 = *(v0 + 266);
  v23 = *(v0 + 267);
  v20 = *(v0 + 265);
  v21 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 263);
  v8 = *(v0 + 262);
  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  sub_19A331B84(*(v0 + 160), v10, type metadata accessor for DefinitionSession);
  type metadata accessor for GenerativePlayground.DrawOnImageAssignmentTask(0);
  v11 = swift_allocObject();
  *(v0 + 224) = v11;
  *(v0 + 40) = &type metadata for CurrentTaskCanceller;
  *(v0 + 48) = &off_1F0DAF620;
  v12 = v6;
  v13 = v9;
  v14 = v5;
  sub_19A57101C();
  sub_19A3319E4(v10, v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  *(v11 + 48) = v6;
  *(v11 + 56) = v4;
  sub_19A2EA460((v0 + 16), v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller);
  *(v11 + 65) = v20;
  *(v11 + 60) = v21;
  *(v11 + 64) = v22;
  *(v11 + 66) = v23;
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_19A2F9F34;
  v16 = *(v0 + 128);
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);

  return sub_19A43DED8(v16, v17, v18);
}

uint64_t sub_19A2F9F34()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_19A2FA25C;
  }

  else
  {
    v2 = sub_19A2FA048;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2FA048()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];

  sub_19A331764(v2, type metadata accessor for DefinitionSession);
  (*(v4 + 56))(v5, 0, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_19A2FA10C, v1, 0);
}

uint64_t sub_19A2FA10C()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0, &qword_19A577180);
  }

  else
  {
    v3 = v0[26];
    v2 = v0[27];
    v4 = v0[21];
    sub_19A3319E4(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A331CD0(v4, v3 + v2, type metadata accessor for DefinitionSession);
    swift_endAccess();
    sub_19A331764(v4, type metadata accessor for DefinitionSession);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A2FA25C()
{

  v0[31] = v0[30];
  v1 = v0[26];
  sub_19A331764(v0[20], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FA2EC, v1, 0);
}

uint64_t sub_19A2FA2EC()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall GenerativePlayground.dropDrawOnImageAssignment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_19A31F114(0xD00000000000001BLL, 0x800000019A595FD0, &v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0, &qword_19A577110);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;

  v11 = dispatch_semaphore_create(0);
  v12 = sub_19A5731CC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = &unk_19A577190;
  v13[6] = v1;
  v13[7] = v10;
  v14 = v11;

  sub_19A307070(0, 0, v4, &unk_19A577198, v13);

  sub_19A57366C();
  if (*(v10 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A2FA630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2FA74C();
}

uint64_t GenerativePlayground.dropDrawOnImageAssignment()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2FA74C();
}

uint64_t sub_19A2FA74C()
{
  v1[21] = v0;
  v1[22] = type metadata accessor for DefinitionSession(0);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FA7E0, 0, 0);
}

uint64_t sub_19A2FA7E0()
{
  v1 = *(*(v0 + 168) + 168);
  *(v0 + 192) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FA804, v1, 0);
}

uint64_t sub_19A2FA804()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[25] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FA8B0, 0, 0);
}

uint64_t sub_19A2FA8B0()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = v2 + *(v3 + 88);
  v5 = type metadata accessor for GenerationRecipe(0);
  v6 = v4 + v5[21];
  sub_19A331C90(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = v4 + v5[11];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = (v4 + v5[23]);
  v9 = *v8;
  v10 = v8[2];
  *(v0 + 32) = v8[1];
  *(v0 + 48) = v10;
  *(v0 + 16) = v9;
  v11 = v8[3];
  v12 = v8[4];
  v13 = v8[5];
  *(v0 + 112) = *(v8 + 12);
  *(v0 + 80) = v12;
  *(v0 + 96) = v13;
  *(v0 + 64) = v11;
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0198, &unk_19A578D30);
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  *(v8 + 12) = 0;
  v14 = v4 + v5[22];
  sub_19A331C90(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = v2 + *(v3 + 56);
  sub_19A335400(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32));
  *v15 = xmmword_19A577080;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  *(v15 + 40) = 0;

  return MEMORY[0x1EEE6DFA0](sub_19A2FAA28, v1, 0);
}

uint64_t sub_19A2FAA28()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t GenerativePlayground.promptConditioningImage.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FAB84, 0, 0);
}

uint64_t sub_19A2FAB84()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FABA8, v1, 0);
}

uint64_t sub_19A2FABA8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FAC50, 0, 0);
}

uint64_t sub_19A2FAC50()
{
  v1 = v0[8];
  v2 = *(v1 + *(v0[7] + 52));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = v3;
  }

  else
  {
    v3 = 0;
    v4 = -1;
  }

  v6 = v0[5];
  *v6 = v3;
  *(v6 + 8) = v4;
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v7 = v0[1];

  return v7();
}

uint64_t GenerativePlayground.promptConditioningImageFaces.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FADAC, 0, 0);
}

uint64_t sub_19A2FADAC()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FADD0, v1, 0);
}

uint64_t sub_19A2FADD0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FAE78, 0, 0);
}

uint64_t sub_19A2FAE78()
{
  v1 = *(v0 + 56);
  v2 = sub_19A39D424();
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_19A3226A0(0, v3, 0);
      v4 = v17;
      v5 = *(v17 + 16);
      v6 = 32 * v5;
      v7 = (v2 + 48);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v10 = *(v17 + 24);
        v11 = v5 + 1;
        if (v5 >= v10 >> 1)
        {
          v15 = *v7;
          v16 = *(v7 - 1);
          sub_19A3226A0((v10 > 1), v5 + 1, 1);
          v9 = v15;
          v8 = v16;
        }

        *(v17 + 16) = v11;
        v12 = v17 + v6;
        *(v12 + 32) = v8;
        *(v12 + 48) = v9;
        v6 += 32;
        v7 += 3;
        v5 = v11;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *(v0 + 8);

  return v13(v4);
}

uint64_t GenerativePlayground.recommendedPromptConditioningImageDimensions.getter@<X0>(uint64_t a1@<X8>)
{
  sub_19A33546C(v1 + 128, v8, &qword_1EAF9FDA8, &qword_19A581780);
  v3 = v9;
  if (!v9)
  {
    result = sub_19A2F3FA0(v8, &qword_1EAF9FDA8, &qword_19A581780);
    goto LABEL_5;
  }

  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 56))(&v11, v3, v4);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v8);
  if (v12)
  {
LABEL_5:
    v7 = 0uLL;
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = v11;
LABEL_6:
  *a1 = v7;
  *(a1 + 16) = v6;
  return result;
}

uint64_t GenerativePlayground.assign(promptConditioningImage:options:eventsHandler:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = *a2;
  *(v4 + 16) = *a1;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  v9 = swift_task_alloc();
  *(v4 + 32) = v9;
  *v9 = v4;
  v9[1] = sub_19A2FB2A0;

  return sub_19A2FB3EC((v4 + 16), (v4 + 25), a3, a4);
}

uint64_t sub_19A2FB2A0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A2FB3D4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A2FB3EC(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 104) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0, &qword_19A577180);
  *(v5 + 128) = swift_task_alloc();
  v8 = type metadata accessor for DefinitionSession(0);
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v5 + 168) = v9;
  *(v5 + 176) = v10;
  *(v5 + 236) = *(a1 + 8);
  *(v5 + 232) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_19A2FB524, 0, 0);
}

uint64_t sub_19A2FB524()
{
  v1 = *(v0 + 232);
  v2 = (v1 >> 8) & 1;
  v3 = HIWORD(v1) & 1;
  if (v1 == 2)
  {
    LOBYTE(v1) = 1;
    LOBYTE(v2) = 1;
    LOBYTE(v3) = 1;
    v4 = 1;
  }

  else
  {
    v4 = HIBYTE(v1);
  }

  *(v0 + 240) = v4;
  *(v0 + 239) = v3;
  *(v0 + 238) = v2;
  *(v0 + 237) = v1 & 1;
  v5 = *(*(v0 + 120) + 168);
  *(v0 + 184) = v5;
  return MEMORY[0x1EEE6DFA0](sub_19A2FB588, v5, 0);
}

uint64_t sub_19A2FB588()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[24] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FB638, 0, 0);
}

uint64_t sub_19A2FB638()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 136) + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = *(v0 + 240);
  v5 = *(v0 + 239);
  v6 = *(v0 + 238);
  v7 = *(v0 + 237);
  v8 = *(v0 + 236);
  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  sub_19A331B84(*(v0 + 160), v10, type metadata accessor for DefinitionSession);
  type metadata accessor for GenerativePlayground.PromptConditioningImageAssignmentTask(0);
  v11 = swift_allocObject();
  *(v0 + 200) = v11;
  *(v0 + 40) = &type metadata for CurrentTaskCanceller;
  *(v0 + 48) = &off_1F0DAF620;
  v12 = v9;
  sub_19A57101C();
  sub_19A3319E4(v10, v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  sub_19A2EA460((v0 + 16), v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller);
  v13 = (v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__options);
  *v13 = v7;
  v13[1] = v6;
  v13[2] = v5;
  v13[3] = v4;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_19A2FB86C;
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);

  return sub_19A409DBC(v15, v16, v17);
}

uint64_t sub_19A2FB86C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_19A2FBB94;
  }

  else
  {
    v2 = sub_19A2FB980;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2FB980()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];

  sub_19A331764(v2, type metadata accessor for DefinitionSession);
  (*(v4 + 56))(v5, 0, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_19A2FBA44, v1, 0);
}

uint64_t sub_19A2FBA44()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0, &qword_19A577180);
  }

  else
  {
    v3 = v0[23];
    v2 = v0[24];
    v4 = v0[21];
    sub_19A3319E4(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A331CD0(v4, v3 + v2, type metadata accessor for DefinitionSession);
    swift_endAccess();
    sub_19A331764(v4, type metadata accessor for DefinitionSession);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A2FBB94()
{

  v0[28] = v0[27];
  v1 = v0[23];
  sub_19A331764(v0[20], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FBC24, v1, 0);
}

uint64_t sub_19A2FBC24()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall GenerativePlayground.dropPromptConditioningImageAssignment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_19A31F114(0xD000000000000027, 0x800000019A595FF0, &v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0, &qword_19A577110);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;

  v11 = dispatch_semaphore_create(0);
  v12 = sub_19A5731CC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = &unk_19A5771D8;
  v13[6] = v1;
  v13[7] = v10;
  v14 = v11;

  sub_19A307070(0, 0, v4, &unk_19A5771E0, v13);

  sub_19A57366C();
  if (*(v10 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A2FBF68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2FC084();
}

uint64_t GenerativePlayground.dropPromptConditioningImageAssignment()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2FC084();
}

uint64_t sub_19A2FC084()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FC118, 0, 0);
}

uint64_t sub_19A2FC118()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FC13C, v1, 0);
}

uint64_t sub_19A2FC13C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FC1E8, 0, 0);
}

uint64_t sub_19A2FC1E8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v2 + *(v3 + 88);
  v5 = *(type metadata accessor for GenerationRecipe(0) + 100);

  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + v5) = MEMORY[0x1E69E7CC0];
  v7 = *(v3 + 52);

  *(v2 + v7) = v6;
  sub_19A4C64E0();

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v1, 0);
}

uint64_t GenerativePlayground.availableImageStyles.getter()
{
  sub_19A33546C(v0 + 128, &v5, &qword_1EAF9FDA8, &qword_19A581780);
  if (v6)
  {
    sub_19A2EA460(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(*(v2 + 32) + 8))(v1);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_19A2F3FA0(&v5, &qword_1EAF9FDA8, &qword_19A581780);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t GenerativePlayground._gmsFilteredAvailableImageStyles.getter()
{
  v1[45] = v0;
  v2 = sub_19A57174C();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v3 = sub_19A57177C();
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();
  v4 = sub_19A57192C();
  v1[53] = v4;
  v1[54] = *(v4 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = type metadata accessor for GenerationRecipe(0);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = type metadata accessor for DefinitionSession(0);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FC550, 0, 0);
}

uint64_t sub_19A2FC550()
{
  if (geteuid())
  {
    v1 = *(v0 + 360);
    v2 = *(v1 + 112);
    *(v0 + 496) = v2;
    v3 = *(v1 + 120);
    *(v0 + 504) = v3;
    if (v2 == 0xD000000000000029 && 0x800000019A596020 == v3)
    {
      goto LABEL_8;
    }

    if (sub_19A573F1C())
    {
      v1 = *(v0 + 360);
LABEL_8:
      sub_19A33546C(v1 + 128, v0 + 136, &qword_1EAF9FDA8, &qword_19A581780);
      if (*(v0 + 160))
      {
        sub_19A2EA460((v0 + 136), v0 + 96);
        v5 = *(v0 + 120);
        v6 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v5);
        v7 = (*(*(v6 + 32) + 8))(v5);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
      }

      else
      {
        sub_19A2F3FA0(v0 + 136, &qword_1EAF9FDA8, &qword_19A581780);
        v7 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 512) = v7;
      v15 = *(v7 + 16);
      *(v0 + 520) = v15;
      if (!v15)
      {

        goto LABEL_25;
      }

      *(v0 + 528) = *(*(v0 + 360) + 168);
      *(v0 + 536) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
      swift_beginAccess();
      *(v0 + 576) = *MEMORY[0x1E69A11A0];
      *(v0 + 552) = MEMORY[0x1E69E7CC0];
      *(v0 + 544) = 0;
      v16 = *(v0 + 512);
      if (*(v16 + 16))
      {
        v17 = *(v0 + 528);
        *(v0 + 580) = *(v16 + 32);

        return MEMORY[0x1EEE6DFA0](sub_19A2FC910, v17, 0);
      }

      __break(1u);
LABEL_30:
      swift_once();
      goto LABEL_12;
    }
  }

  if (geteuid())
  {
    goto LABEL_15;
  }

  if (qword_1ED824050 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v8 = sub_19A5723FC();
  __swift_project_value_buffer(v8, qword_1ED82BCF0);
  v9 = sub_19A5723DC();
  v10 = sub_19A57355C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19A2DE000, v9, v10, "GenerativeModelsAvailability can not be queried as root. Try again when runing as the logged in user (or mobile).", v11, 2u);
    MEMORY[0x19A902C50](v11, -1, -1);
  }

LABEL_15:
  sub_19A33546C(*(v0 + 360) + 128, v0 + 56, &qword_1EAF9FDA8, &qword_19A581780);
  if (!*(v0 + 80))
  {
    sub_19A2F3FA0(v0 + 56, &qword_1EAF9FDA8, &qword_19A581780);
LABEL_25:
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  sub_19A2EA460((v0 + 56), v0 + 16);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v14 = (*(*(v13 + 32) + 8))(v12);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
LABEL_26:

  v18 = *(v0 + 8);

  return v18(v14);
}

uint64_t sub_19A2FC910()
{
  sub_19A331B84(v0[66] + v0[67], v0[61], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FC998, 0, 0);
}

uint64_t sub_19A2FC998()
{
  v1 = v0[61];
  v2 = v0[58];
  sub_19A331B84(v1 + *(v0[59] + 88), v2, type metadata accessor for GenerationRecipe);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  v3 = *v2;
  sub_19A331764(v2, type metadata accessor for GenerationRecipe);
  v4 = "Generation.AppleDiffusion";
  v5 = 0xD000000000000010;
  if (v3 == 2)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v4 = &unk_19A5771E0;
  }

  v6 = ".PhotosGenerativeEdit";
  v7 = 0xD000000000000027;
  if (v3)
  {
    v7 = 0xD000000000000025;
    v6 = ".KeyboardEmojiGenerator";
  }

  if (v3 <= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v4 = v6;
  }

  v0[71] = v4;
  v0[70] = v8;
  v9 = v0[66];

  return MEMORY[0x1EEE6DFA0](sub_19A2FCAD4, v9, 0);
}

uint64_t sub_19A2FCAD4()
{
  sub_19A331B84(v0[66] + v0[67], v0[60], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FCB5C, 0, 0);
}

uint64_t sub_19A2FCB5C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  sub_19A331B84(v1 + *(*(v0 + 472) + 88), v3, type metadata accessor for GenerationRecipe);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  v4 = (v3 + *(v2 + 84));
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  sub_19A331BEC(*v4, v6, v8, v7);
  sub_19A331764(v3, type metadata accessor for GenerationRecipe);
  if (v7)
  {
    sub_19A331C90(v5, v6, v8, v7);
  }

  v9 = *(v0 + 580);
  *(v0 + 328) = MEMORY[0x1E69E7CC0];
  sub_19A322580(0, 1, 0);
  v10 = *(v0 + 328);
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = 0xE500000000000000;
        v12 = 0x696A6F6D65;
      }

      else
      {
        v12 = 0x61727473756C6C69;
        v11 = 0xEC0000006E6F6974;
      }
    }

    else
    {
      v12 = 0x6F6974616D696E61;
      v11 = 0xE90000000000006ELL;
    }
  }

  else if (v9 > 4)
  {
    if (v9 == 5)
    {
      v11 = 0x800000019A595400;
      v12 = 0xD000000000000013;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x6C616E7265747865;
    }
  }

  else if (v9 == 3)
  {
    v11 = 0xE600000000000000;
    v12 = 0x686374656B73;
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x747241656E696CLL;
  }

  v96 = v7;
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_19A322580((v13 > 1), v14 + 1, 1);
    v10 = *(v0 + 328);
  }

  v15 = *(v0 + 496);
  v16 = *(v0 + 504);
  *(v10 + 16) = v14 + 1;
  v17 = v10 + 16 * v14;
  *(v17 + 32) = v12;
  *(v17 + 40) = v11;
  *(v0 + 336) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
  sub_19A331C2C();
  v18 = sub_19A572BEC();
  v20 = v19;

  if ((v15 != 0xD000000000000029 || 0x800000019A596020 != v16) && (sub_19A573F1C() & 1) == 0)
  {
    v24 = 0;
    v25 = 0;
    v21 = v96;
    goto LABEL_34;
  }

  v21 = v96;
  if (v96)
  {
    v22 = 9;
LABEL_33:
    v24 = AppleDiffusionAdapter.rawValue.getter(v22);
    v25 = v27;
    goto LABEL_34;
  }

  v23 = *(v0 + 580);
  if (v23 <= 2)
  {
    if (v23 == 1)
    {
      v26 = 3;
    }

    else
    {
      v26 = 5;
    }

    if (*(v0 + 580))
    {
      v22 = v26;
    }

    else
    {
      v22 = 1;
    }

    goto LABEL_33;
  }

  if (v23 - 3 < 2)
  {
    v22 = 7;
    goto LABEL_33;
  }

  type metadata accessor for GeneratorError(0);
  sub_19A335220(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
  v51 = swift_allocError();
  *v52 = v23;
  *(v52 + 8) = 0xD000000000000029;
  *(v52 + 16) = 0x800000019A596020;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v24 = 0;
  v25 = 0;
LABEL_34:
  v28 = *(v0 + 568);
  v29 = *(v0 + 580);
  *(v0 + 200) = *(v0 + 560);
  *(v0 + 208) = v28 | 0x8000000000000000;

  MEMORY[0x19A900A50](58, 0xE100000000000000);
  v30 = *(v0 + 208);
  *(v0 + 216) = *(v0 + 200);
  *(v0 + 224) = v30;

  MEMORY[0x19A900A50](v18, v20);

  v31 = *(v0 + 224);
  *(v0 + 232) = *(v0 + 216);
  *(v0 + 240) = v31;

  MEMORY[0x19A900A50](58, 0xE100000000000000);

  v32 = *(v0 + 240);
  if (v25)
  {
    v33 = v25;
  }

  else
  {
    v24 = 0;
    v33 = 0xE000000000000000;
  }

  *(v0 + 248) = *(v0 + 232);
  *(v0 + 256) = v32;

  MEMORY[0x19A900A50](v24, v33);

  *(v0 + 344) = MEMORY[0x1E69E7CC0];
  sub_19A322580(0, 1, 0);
  v34 = *(v0 + 344);
  if (v29 <= 2)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        v35 = 0xE500000000000000;
        v36 = 0x696A6F6D65;
      }

      else
      {
        v36 = 0x61727473756C6C69;
        v35 = 0xEC0000006E6F6974;
      }
    }

    else
    {
      v35 = 0xE90000000000006ELL;
      v36 = 0x6F6974616D696E61;
    }
  }

  else if (v29 > 4)
  {
    if (v29 == 5)
    {
      v35 = 0x800000019A595400;
      v36 = 0xD000000000000013;
    }

    else
    {
      v35 = 0xE800000000000000;
      v36 = 0x6C616E7265747865;
    }
  }

  else if (v29 == 3)
  {
    v35 = 0xE600000000000000;
    v36 = 0x686374656B73;
  }

  else
  {
    v35 = 0xE700000000000000;
    v36 = 0x747241656E696CLL;
  }

  v38 = *(v34 + 16);
  v37 = *(v34 + 24);
  if (v38 >= v37 >> 1)
  {
    v83 = v36;
    sub_19A322580((v37 > 1), v38 + 1, 1);
    v36 = v83;
    v34 = *(v0 + 344);
  }

  v40 = *(v0 + 496);
  v39 = *(v0 + 504);
  *(v34 + 16) = v38 + 1;
  v41 = v34 + 16 * v38;
  *(v41 + 32) = v36;
  *(v41 + 40) = v35;
  *(v0 + 352) = v34;
  v42 = sub_19A572BEC();
  v44 = v43;

  v94 = v42;
  if (v40 == 0xD000000000000029 && 0x800000019A596020 == v39 || (sub_19A573F1C() & 1) != 0)
  {
    if (v21)
    {
      v45 = v44;
      v46 = 8;
LABEL_71:
      v48 = AppleDiffusionAdapter.rawValue.getter(v46);
      v49 = v53;
      goto LABEL_72;
    }

    v47 = *(v0 + 580);
    if (v47 <= 2)
    {
      v45 = v44;
      if (v47 == 1)
      {
        v50 = 2;
      }

      else
      {
        v50 = 4;
      }

      if (*(v0 + 580))
      {
        v46 = v50;
      }

      else
      {
        v46 = 0;
      }

      goto LABEL_71;
    }

    v45 = v44;
    if (v47 - 3 < 2)
    {
      v46 = 6;
      goto LABEL_71;
    }

    if (v47 == 5)
    {
      v46 = 10;
      goto LABEL_71;
    }

    type metadata accessor for GeneratorError(0);
    sub_19A335220(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
    v81 = swift_allocError();
    *v82 = 6;
    *(v82 + 8) = 0xD000000000000029;
    *(v82 + 16) = 0x800000019A596020;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v45 = v44;
  }

  v48 = 0;
  v49 = 0;
LABEL_72:
  v92 = *(v0 + 576);
  v54 = *(v0 + 432);
  v55 = *(v0 + 416);
  v97 = *(v0 + 424);
  v56 = *(v0 + 408);
  v84 = *(v0 + 440);
  v85 = *(v0 + 400);
  v86 = *(v0 + 392);
  v88 = *(v0 + 384);
  v57 = *(v0 + 376);
  v90 = *(v0 + 368);
  v58 = *(v0 + 568) | 0x8000000000000000;
  *(v0 + 264) = *(v0 + 560);
  *(v0 + 272) = v58;

  MEMORY[0x19A900A50](58, 0xE100000000000000);

  v59 = *(v0 + 272);
  *(v0 + 280) = *(v0 + 264);
  *(v0 + 288) = v59;

  MEMORY[0x19A900A50](v94, v45);

  v60 = *(v0 + 288);
  *(v0 + 296) = *(v0 + 280);
  *(v0 + 304) = v60;

  MEMORY[0x19A900A50](58, 0xE100000000000000);

  v61 = *(v0 + 304);
  if (!v49)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
  }

  *(v0 + 312) = *(v0 + 296);
  *(v0 + 320) = v61;

  MEMORY[0x19A900A50](v48, v49);

  sub_19A57176C();
  sub_19A57190C();
  v95 = *(v56 + 8);
  v95(v55, v85);
  sub_19A57187C();
  v62 = v92;
  v93 = *(v57 + 104);
  v93(v88, v62, v90);
  v63 = sub_19A57173C();
  v64 = *(v57 + 8);
  v64(v88, v90);
  v64(v86, v90);
  v65 = *(v54 + 8);
  v65(v84, v97);
  if ((v63 & 1) == 0)
  {

    v71 = *(v0 + 552);
    goto LABEL_81;
  }

  v89 = *(v0 + 576);
  v66 = *(v0 + 440);
  v67 = *(v0 + 416);
  v91 = *(v0 + 424);
  v68 = *(v0 + 392);
  v87 = *(v0 + 400);
  v69 = *(v0 + 384);
  v70 = *(v0 + 368);
  sub_19A57176C();
  sub_19A57190C();
  v95(v67, v87);
  sub_19A57187C();
  v93(v69, v89, v70);
  LOBYTE(v67) = sub_19A57173C();
  v64(v69, v70);
  v64(v68, v70);
  v65(v66, v91);
  v71 = *(v0 + 552);
  if ((v67 & 1) == 0)
  {
    goto LABEL_81;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v0 + 552);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v74 = *(v71 + 2);
    v73 = *(v71 + 3);
    if (v74 >= v73 >> 1)
    {
      v71 = sub_19A31D27C((v73 > 1), v74 + 1, 1, v71);
    }

    v75 = *(v0 + 580);
    *(v71 + 2) = v74 + 1;
    v71[v74 + 32] = v75;
LABEL_81:
    v76 = *(v0 + 544) + 1;
    if (v76 == *(v0 + 520))
    {

      v77 = *(v0 + 8);

      return v77(v71);
    }

    *(v0 + 552) = v71;
    *(v0 + 544) = v76;
    v79 = *(v0 + 512);
    if (v76 < *(v79 + 16))
    {
      break;
    }

    __break(1u);
LABEL_91:
    v71 = sub_19A31D27C(0, *(v71 + 2) + 1, 1, v71);
  }

  v80 = *(v0 + 528);
  *(v0 + 580) = *(v79 + v76 + 32);

  return MEMORY[0x1EEE6DFA0](sub_19A2FC910, v80, 0);
}

uint64_t GenerativePlayground.definitionSession.getter(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FD700, 0, 0);
}

uint64_t sub_19A2FD700()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FD724, v1, 0);
}

uint64_t sub_19A2FD724()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = v0[1];

  return v4();
}

Swift::Bool __swiftcall GenerativePlayground.imageStyle(_:canBeCombinedWith:)(VisualGeneration::ImageStyle _, Swift::OpaquePointer canBeCombinedWith)
{
  v4 = *_;
  sub_19A33546C(v2 + 128, &v9, &qword_1EAF9FDA8, &qword_19A581780);
  if (v10)
  {
    sub_19A2EA460(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    LOBYTE(v9) = v4;
    v7 = (*(*(v6 + 40) + 8))(&v9, canBeCombinedWith._rawValue, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    sub_19A2F3FA0(&v9, &qword_1EAF9FDA8, &qword_19A581780);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t GenerativePlayground.assignedImageStyles.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FD934, 0, 0);
}

uint64_t sub_19A2FD934()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FD958, v1, 0);
}

uint64_t sub_19A2FD958()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FDA00, 0, 0);
}

uint64_t sub_19A2FDA00()
{
  v1 = v0[7];
  v2 = v1 + *(v0[6] + 88);
  v3 = *(v2 + *(type metadata accessor for GenerationRecipe(0) + 24));

  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t GenerativePlayground.assign_async(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A2F759C;

  return sub_19A2FDB38(a1);
}

uint64_t sub_19A2FDB38(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for DefinitionSession(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FDBCC, 0, 0);
}

uint64_t sub_19A2FDBCC()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FDBF0, v1, 0);
}

uint64_t sub_19A2FDBF0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FDC9C, 0, 0);
}

uint64_t sub_19A2FDC9C()
{
  v1 = v0[11] + *(v0[10] + 88);
  v2 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F6F4(*(v1 + v2[5]), *(v1 + v2[5] + 8));
  v3 = v2[6];
  sub_19A4D4414(*(v1 + v3), v0[8]);
  if ((v4 & 1) == 0)
  {
    v5 = v0[8];
    v6 = (v1 + v2[30]);
    sub_19A331DC8(*v6, v6[1], v6[2], v6[3], v6[4]);
    *v6 = 0;
    v6[1] = 0;
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = 1;
    *(v6 + 37) = 0;
    sub_19A4340A4(v5);
    v7 = v0[8];

    *(v1 + v3) = v7;
    sub_19A4C64E0();
  }

  v8 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_19A2FDDE0, v8, 0);
}

uint64_t sub_19A2FDDE0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A2FDEAC()
{
  sub_19A331764(*(v0 + 88), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerativePlayground.add(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A2FDFC4(a1);
}

uint64_t sub_19A2FDFC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for DefinitionSession(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FE058, 0, 0);
}

uint64_t sub_19A2FE058()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FE07C, v1, 0);
}

uint64_t sub_19A2FE07C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FE128, 0, 0);
}

uint64_t sub_19A2FE128()
{
  v1 = v0[11];
  v2 = *(v0[10] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_19A2FE234;
  v5 = v0[8];

  return sub_19A4B9C10(v5);
}

uint64_t sub_19A2FE234()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 120) = v0;
    v3 = *(v2 + 96);
    v4 = sub_19A2FE358;
  }

  else
  {
    v3 = *(v2 + 96);
    v4 = sub_19A3355B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A2FE358()
{
  sub_19A331764(*(v0 + 88), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerativePlayground.remove(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A2FE470(a1);
}

uint64_t sub_19A2FE470(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for DefinitionSession(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FE504, 0, 0);
}

uint64_t sub_19A2FE504()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FE528, v1, 0);
}

uint64_t sub_19A2FE528()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FE5D4, 0, 0);
}

uint64_t sub_19A2FE5D4()
{
  v1 = v0[11];
  v2 = *(v0[10] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_19A2FE6E0;
  v5 = v0[8];

  return sub_19A4BA068(v5);
}

uint64_t sub_19A2FE6E0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 120) = v0;
    v3 = *(v2 + 96);
    v4 = sub_19A3355C0;
  }

  else
  {
    v3 = *(v2 + 96);
    v4 = sub_19A3355B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t GenerativePlayground.removeAllImageStyles()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2FE890();
}

uint64_t sub_19A2FE890()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FE924, 0, 0);
}

uint64_t sub_19A2FE924()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FE948, v1, 0);
}

uint64_t sub_19A2FE948()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FE9F4, 0, 0);
}

uint64_t sub_19A2FE9F4()
{
  v1 = v0[10] + *(v0[9] + 88);
  v2 = *(type metadata accessor for GenerationRecipe(0) + 24);
  if (*(*(v1 + v2) + 16))
  {

    *(v1 + v2) = MEMORY[0x1E69E7CC0];
    sub_19A4C64E0();
  }

  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v3, 0);
}

uint64_t GenerativePlayground.findPersonIndications()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for GenerationRecipe(0);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for DefinitionSession(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FEB58, 0, 0);
}

uint64_t sub_19A2FEB58()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FEB7C, v1, 0);
}

uint64_t sub_19A2FEB7C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FEC24, 0, 0);
}

uint64_t sub_19A2FEC24()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  sub_19A331B84(v1 + *(v0[9] + 88), v2, type metadata accessor for GenerationRecipe);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  v5 = (v2 + *(v3 + 104));
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  sub_19A331764(v2, type metadata accessor for GenerationRecipe);
  *v4 = v7;
  v4[1] = v6;
  v4[2] = v8;
  v4[3] = v9;

  v10 = v0[1];

  return v10();
}

uint64_t GenerativePlayground.directableDemographicCategories.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_19A33546C(v1 + 128, &v6, &qword_1EAF9FDA8, &qword_19A581780);
  if (v7)
  {
    sub_19A2EA460(&v6, v8);
    v4 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(*(v3 + 16) + 8))(v4);
    return __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    result = sub_19A2F3FA0(&v6, &qword_1EAF9FDA8, &qword_19A581780);
    *a1 = 0;
  }

  return result;
}

uint64_t sub_19A2FEDFC(int *a1)
{
  v2 = *a1;
  sub_19A33546C(v1 + 128, &v11, &qword_1EAF9FDA8, &qword_19A581780);
  if (v12)
  {
    sub_19A2EA460(&v11, v13);
    v4 = v14;
    v3 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(*(v3 + 16) + 8))(&v11, v4);
    if ((v2 & ~v11) != 0)
    {
      v5 = v11 & ~v2;
      sub_19A3353AC();
      swift_allocError();
      *v6 = v5;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    sub_19A2F3FA0(&v11, &qword_1EAF9FDA8, &qword_19A581780);
    v9 = *(v1 + 112);
    v8 = *(v1 + 120);
    sub_19A2F1130();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t sub_19A2FEF58(int a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v6 = sub_19A5723FC();
  __swift_project_value_buffer(v6, qword_1ED82BCF0);
  v7 = sub_19A5723DC();
  v8 = sub_19A57356C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136446210;
    v11 = sub_19A572DAC();
    v13 = sub_19A31F114(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_19A2DE000, v7, v8, "Assigning demographic directive '%{public}s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v14 = v10;
    v4 = v3;
    MEMORY[0x19A902C50](v14, -1, -1);
    MEMORY[0x19A902C50](v9, -1, -1);
  }

  LODWORD(v27) = a1;
  result = sub_19A2FEDFC(&v27);
  if (v4)
  {
    v16 = v4;
    v17 = sub_19A5723DC();
    v18 = sub_19A57355C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136446466;
      v21 = sub_19A572DAC();
      v23 = sub_19A31F114(v21, v22, &v27);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_19A57405C();
      v26 = sub_19A31F114(v24, v25, &v27);

      *(v19 + 14) = v26;
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v20, -1, -1);
      MEMORY[0x19A902C50](v19, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A2FF254(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v8 = sub_19A5723FC();
  __swift_project_value_buffer(v8, qword_1ED82BCF0);

  v9 = sub_19A5723DC();
  v10 = sub_19A57356C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136446210;
    v29 = a2;
    v30 = a3;

    v13 = sub_19A572DAC();
    v15 = sub_19A31F114(v13, v14, &v31);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_19A2DE000, v9, v10, "Assigning demographic directive '%{public}s'", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v16 = v12;
    v4 = v3;
    MEMORY[0x19A902C50](v16, -1, -1);
    MEMORY[0x19A902C50](v11, -1, -1);
  }

  LODWORD(v29) = a1;
  result = sub_19A2FEDFC(&v29);
  if (v4)
  {

    v18 = v4;
    v19 = sub_19A5723DC();
    v20 = sub_19A57355C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136446466;
      v29 = a2;
      v30 = a3;

      v23 = sub_19A572DAC();
      v25 = sub_19A31F114(v23, v24, &v31);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_19A57405C();
      v28 = sub_19A31F114(v26, v27, &v31);

      *(v21 + 14) = v28;
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v22, -1, -1);
      MEMORY[0x19A902C50](v21, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t GenerativePlayground.genderDirective.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FF618, 0, 0);
}

uint64_t sub_19A2FF618()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FF63C, v1, 0);
}

uint64_t sub_19A2FF63C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FF6E4, 0, 0);
}

uint64_t sub_19A2FF6E4()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2 + 1);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t GenerativePlayground.specifyGenderDirective(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A33558C;

  return sub_19A2FF818(v2);
}

uint64_t sub_19A2FF818(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession(0);
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FF8B0, 0, 0);
}

uint64_t sub_19A2FF8B0()
{
  sub_19A2FEF58(1, *(v0 + 104), &type metadata for Gender);
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A2FF980, v1, 0);
}

uint64_t sub_19A2FF980()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v6 + 1) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A2FFA58, v2, 0);
}

uint64_t sub_19A2FFA58()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t GenerativePlayground.dropGenderDirective()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FFBB8, 0, 0);
}

uint64_t sub_19A2FFBB8()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FFBDC, v1, 0);
}

uint64_t sub_19A2FFBDC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v4, v1, type metadata accessor for DefinitionSession);
  v5 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v5 + 1) = 3;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v2, 0);
}

uint64_t GenerativePlayground.skinToneDirective.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2FFD40, 0, 0);
}

uint64_t sub_19A2FFD40()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2FFD64, v1, 0);
}

uint64_t sub_19A2FFD64()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2FFE0C, 0, 0);
}

uint64_t sub_19A2FFE0C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[7] + 88);
  *v2 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3 + 2);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t GenerativePlayground.specifySkinToneDirective(_:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = type metadata accessor for DefinitionSession(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 104) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_19A2FFF58, 0, 0);
}

uint64_t sub_19A2FFF58()
{
  sub_19A2FEF58(2, *(v0 + 104), &type metadata for SkinTone);
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A300028, v1, 0);
}

uint64_t sub_19A300028()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v4 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v6 + 2) = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B8, v2, 0);
}

uint64_t GenerativePlayground.dropSkinToneDirective()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A300194, 0, 0);
}

uint64_t sub_19A300194()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3001B8, v1, 0);
}

uint64_t sub_19A3001B8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v4, v1, type metadata accessor for DefinitionSession);
  v5 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v5 + 2) = 10;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v2, 0);
}

uint64_t GenerativePlayground.personDescriptionDirective.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30031C, 0, 0);
}

uint64_t sub_19A30031C()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A300340, v1, 0);
}

uint64_t sub_19A300340()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3003E8, 0, 0);
}

uint64_t sub_19A3003E8()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);

  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t GenerativePlayground.specifyPersonDescriptionDirective(_:analysisLocales:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A3004C0, 0, 0);
}

uint64_t sub_19A3004C0()
{
  sub_19A2FF254(4, v0[2], v0[3]);
  v1 = *(v0[5] + 168);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_19A3005D0;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_19A3006C4(v5, v3, v4, v1);
}

uint64_t sub_19A3005D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_19A3006C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for DefinitionSession(0);
  v4[16] = swift_task_alloc();
  v5 = sub_19A57093C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3007F0, 0, 0);
}

uint64_t sub_19A3007F0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];
  v0[8] = v0[10];
  v0[9] = v5;
  sub_19A5708CC();
  sub_19A2F4450();
  v0[20] = sub_19A57380C();
  v0[21] = v6;
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_19A3008B8, v4, 0);
}

uint64_t sub_19A3008B8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[22] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v3, v1, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A300968, 0, 0);
}

uint64_t sub_19A300968()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[12];
    v5 = *(v4 + 16);
    v6 = sub_19A57112C();
    v7 = *(v6 - 8);
    if (v5)
    {
      (*(*(v6 - 8) + 16))(v0[14], v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
      v8 = 0;
      v1 = v0[20];
      v2 = v0[21];
    }

    else
    {
      v8 = 1;
    }

    v14 = v0[14];
    (*(v7 + 56))(v14, v8, 1, v6);
    v15 = sub_19A4396A8(v1, v2, v14);
    v17 = v16;

    v0[23] = v17;
    sub_19A2F3FA0(v14, &qword_1EAF9FDC8, &qword_19A577310);
    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v18[1] = sub_19A300C64;
    v19 = v0[12];

    return DefinitionSession.specifyPersonDescriptionDirective(_:analysisLocales:)(v15, v17, v19);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];

    v11 = *(v10 + 88);
    v12 = v9 + *(type metadata accessor for GenerationRecipe(0) + 52) + v11;

    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    v13 = v0[13];

    return MEMORY[0x1EEE6DFA0](sub_19A300B78, v13, 0);
  }
}

uint64_t sub_19A300B78()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[13];
  swift_beginAccess();
  sub_19A331CD0(v2, v3 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v2, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A300C64()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_19A300DE0;
  }

  else
  {
    v2 = sub_19A300D78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A300D78()
{

  v1 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_19A300B78, v1, 0);
}

uint64_t sub_19A300DE0()
{
  v1 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_19A300E4C, v1, 0);
}

uint64_t sub_19A300E4C()
{
  sub_19A331764(*(v0 + 128), type metadata accessor for DefinitionSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A300EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for DefinitionSession(0);
  v4[16] = swift_task_alloc();
  v5 = sub_19A57093C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30101C, 0, 0);
}

uint64_t sub_19A30101C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];
  v0[8] = v0[10];
  v0[9] = v5;
  sub_19A5708CC();
  sub_19A2F4450();
  v0[20] = sub_19A57380C();
  v0[21] = v6;
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_19A3010E4, v4, 0);
}

uint64_t sub_19A3010E4()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[22] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v3, v1, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A301194, 0, 0);
}

uint64_t sub_19A301194()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[12];
    v5 = *(v4 + 16);
    v6 = sub_19A57112C();
    v7 = *(v6 - 8);
    if (v5)
    {
      (*(*(v6 - 8) + 16))(v0[14], v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
      v8 = 0;
      v1 = v0[20];
      v2 = v0[21];
    }

    else
    {
      v8 = 1;
    }

    v14 = v0[14];
    (*(v7 + 56))(v14, v8, 1, v6);
    v15 = sub_19A4396A8(v1, v2, v14);
    v17 = v16;

    v0[23] = v17;
    sub_19A2F3FA0(v14, &qword_1EAF9FDC8, &qword_19A577310);
    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v18[1] = sub_19A3013A4;
    v19 = v0[12];

    return DefinitionSession.specifyPersonDescriptionDirective(_:analysisLocales:)(v15, v17, v19);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];

    v11 = *(v10 + 88);
    v12 = v9 + *(type metadata accessor for GenerationRecipe(0) + 52) + v11;

    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    v13 = v0[13];

    return MEMORY[0x1EEE6DFA0](sub_19A3355A0, v13, 0);
  }
}

uint64_t sub_19A3013A4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_19A301520;
  }

  else
  {
    v2 = sub_19A3014B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3014B8()
{

  v1 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_19A3355A0, v1, 0);
}

uint64_t sub_19A301520()
{
  v1 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_19A33560C, v1, 0);
}

uint64_t GenerativePlayground.dropPersonDescriptionDirective()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A301620, 0, 0);
}

uint64_t sub_19A301620()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A301644, v1, 0);
}

uint64_t sub_19A301644()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3016F0, 0, 0);
}

uint64_t sub_19A3016F0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = *(v0[9] + 88);
  v4 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3;

  *(v4 + 8) = 0;
  *(v4 + 16) = 0;

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v2, 0);
}

uint64_t GenerativePlayground.discreteRequestIdentifier.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A301818, 0, 0);
}

uint64_t sub_19A301818()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A30183C, v1, 0);
}

uint64_t sub_19A30183C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3018E4, 0, 0);
}

uint64_t sub_19A3018E4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[7] + 88);
  v4 = v1 + *(type metadata accessor for GenerationRecipe(0) + 72);
  v5 = sub_19A57102C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v4 + v3, v5);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  (*(v6 + 56))(v2, 0, 1, v5);

  v7 = v0[1];

  return v7();
}

uint64_t GenerativePlayground.currentGenerationState.getter(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DefinitionSession(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A301ACC, 0, 0);
}

uint64_t sub_19A301ACC()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A301AF0, v1, 0);
}

uint64_t sub_19A301AF0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A301B98, 0, 0);
}

uint64_t sub_19A301B98()
{
  v1 = v0[9];
  v15 = v0[8];
  v2 = v0[7];
  v3 = v0[5];
  v4 = sub_19A57102C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v2, 1, 1, v4);
  v7 = type metadata accessor for GenerationState(0);
  v8 = v7[5];
  v6(v3 + v8, 1, 1, v4);
  (*(v5 + 16))(v3, v1, v4);
  sub_19A3315F4(v2, v3 + v8);
  v9 = (v1 + *(v15 + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = (v3 + v7[6]);
  *v12 = v10;
  v12[1] = v11;
  sub_19A331B84(v1 + *(v15 + 88), v3 + v7[7], type metadata accessor for GenerationRecipe);

  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v13 = v0[1];

  return v13();
}

uint64_t GenerativePlayground.apply(generationState:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for DefinitionSession(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A301DD8, 0, 0);
}

uint64_t sub_19A301DD8()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A301DFC, v1, 0);
}

uint64_t sub_19A301DFC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A301EA8, 0, 0);
}

uint64_t sub_19A301EA8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for GenerationState(0);
  sub_19A331CD0(v4 + *(v5 + 28), v1 + *(v3 + 88), type metadata accessor for GenerationRecipe);

  return MEMORY[0x1EEE6DFA0](sub_19A2FDDE0, v2, 0);
}

uint64_t GenerativePlayground.queryParserPreheat()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A301FE0, 0, 0);
}

uint64_t sub_19A301FE0()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A302004, v1, 0);
}

uint64_t sub_19A302004()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3020B0, 0, 0);
}

uint64_t sub_19A3020B0()
{
  v1 = *(*(v0[10] + *(v0[9] + 80)) + 16);
  v0[13] = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A302130, v1, 0);
}

uint64_t sub_19A302130()
{
  v1 = *(v0 + 88);
  [*(*(v0 + 104) + 112) preheat];

  return MEMORY[0x1EEE6DFA0](sub_19A2F7B4C, v1, 0);
}

uint64_t GenerativePlayground.queryParserCooldown()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A302244, 0, 0);
}

uint64_t sub_19A302244()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A302268, v1, 0);
}

uint64_t sub_19A302268()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A302314, 0, 0);
}

uint64_t sub_19A302314()
{
  v1 = *(*(v0[10] + *(v0[9] + 80)) + 16);
  v0[13] = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A302394, v1, 0);
}

uint64_t sub_19A302394()
{
  v1 = *(v0 + 88);
  [*(*(v0 + 104) + 112) cooldown];

  return MEMORY[0x1EEE6DFA0](sub_19A3355B0, v1, 0);
}

uint64_t GenerativePlayground.PreviewGenerationOptions.engineeredPromptLanguageAnalysisParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
}

uint64_t GenerativePlayground.PreviewGenerationOptions.engineeredPromptLanguageAnalysisParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

void GenerativePlayground.PreviewGenerationOptions.init()(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  *(a1 + 24) = 0;
}

uint64_t GenerativePlayground.PreviewGenerationSession.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t GenerativePlayground.PreviewGenerationSession.eventStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenerativePlayground.PreviewGenerationSession(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB8, &qword_19A5772F8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenerativePlayground.PreviewGenerationSession.prompt.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.PreviewGenerationSession(0) + 24));

  return v1;
}

uint64_t GenerativePlayground.PreviewGenerationSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = v1 + *(type metadata accessor for GenerativePlayground.PreviewGenerationSession(0) + 28);
  v7 = type metadata accessor for GenerationState(0);
  sub_19A33546C(v6 + *(v7 + 20), v5, &qword_1EAF9FD80, &unk_19A57B720);
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t GenerativePlayground.PreviewGenerationSession.isCancelled.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativePlayground.PreviewGenerationSession(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  sub_19A331B84(v0, v4, type metadata accessor for GenerativePlayground.PreviewGenerationSession);
  v6 = sub_19A5723DC();
  v7 = sub_19A57354C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = GenerativePlayground.PreviewGenerationSession.description.getter();
    v12 = v11;
    sub_19A331764(v4, type metadata accessor for GenerativePlayground.PreviewGenerationSession);
    v13 = sub_19A31F114(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_19A2DE000, v6, v7, "%s checking cancellation", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  else
  {

    sub_19A331764(v4, type metadata accessor for GenerativePlayground.PreviewGenerationSession);
  }

  v14 = (v1 + *(v2 + 32));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  return (*(v16 + 8))(v15, v16) & 1;
}

Swift::Void __swiftcall GenerativePlayground.PreviewGenerationSession.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativePlayground.PreviewGenerationSession(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  sub_19A331B84(v0, v4, type metadata accessor for GenerativePlayground.PreviewGenerationSession);
  v6 = sub_19A5723DC();
  v7 = sub_19A57354C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = GenerativePlayground.PreviewGenerationSession.description.getter();
    v12 = v11;
    sub_19A331764(v4, type metadata accessor for GenerativePlayground.PreviewGenerationSession);
    v13 = sub_19A31F114(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_19A2DE000, v6, v7, "cancelling %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  else
  {

    sub_19A331764(v4, type metadata accessor for GenerativePlayground.PreviewGenerationSession);
  }

  v14 = (v1 + *(v2 + 32));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 16))(v15, v16);
}

uint64_t GenerativePlayground.PreviewGenerationSession.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - v2;
  v4 = sub_19A57102C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0xD000000000000019;
  v12[1] = 0x800000019A5960E0;
  v8 = v0 + *(type metadata accessor for GenerativePlayground.PreviewGenerationSession(0) + 28);
  v9 = type metadata accessor for GenerationState(0);
  sub_19A33546C(v8 + *(v9 + 20), v3, &qword_1EAF9FD80, &unk_19A57B720);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_19A335220(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_19A573EDC();
    MEMORY[0x19A900A50](v11);

    (*(v5 + 8))(v7, v4);
    return v12[0];
  }

  return result;
}

uint64_t sub_19A302D80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_19A33546C(a1, &v7, &qword_1EAF9FDE0, &unk_19A57B770);
  if (v8)
  {
    sub_19A2EA460(&v7, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0180, &unk_19A578D20);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19A576E20;
    *(v3 + 56) = &type metadata for GenerationSeedAssigningRecipePreparer;
    *(v3 + 64) = &off_1F0DAD928;
    sub_19A2F3EF0(v9, v3 + 72);
    *a2 = v3;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
    v5 = &off_1F0DAE3D0;
    v6 = &type metadata for RecipePreparationSequence;
  }

  else
  {
    result = sub_19A2F3FA0(&v7, &qword_1EAF9FDE0, &unk_19A57B770);
    v5 = &off_1F0DAD928;
    v6 = &type metadata for GenerationSeedAssigningRecipePreparer;
  }

  a2[3] = v6;
  a2[4] = v5;
  return result;
}

uint64_t sub_19A302E70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_19A33546C(a1, &v7, &qword_1EAF9FDE0, &unk_19A57B770);
  if (v8)
  {
    sub_19A2EA460(&v7, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0180, &unk_19A578D20);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19A576E20;
    *(v3 + 56) = &type metadata for CharacterRecipePreparer;
    *(v3 + 64) = &off_1F0DB1058;
    sub_19A2F3EF0(v9, v3 + 72);
    *a2 = v3;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
    v5 = &off_1F0DAE3D0;
    v6 = &type metadata for RecipePreparationSequence;
  }

  else
  {
    result = sub_19A2F3FA0(&v7, &qword_1EAF9FDE0, &unk_19A57B770);
    v5 = &off_1F0DB1058;
    v6 = &type metadata for CharacterRecipePreparer;
  }

  a2[3] = v6;
  a2[4] = v5;
  return result;
}

uint64_t sub_19A302F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v71 = a8;
  v76 = a7;
  v77 = a5;
  v74 = a6;
  v79 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v73 = *(v20 - 8);
  v70 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v54 - v21;
  v23 = type metadata accessor for GenerationState(0);
  v67 = *(v23 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v78 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0160, &qword_19A578CE8);
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v54 - v30;
  v75 = a2;
  v32 = *(a2 + 16);
  v80 = a3;
  v81 = a4;
  os_unfair_lock_lock(v32 + 20);
  sub_19A334E58(&v32[4]);
  v68 = a17;
  v66 = a15;
  v65 = a14;
  v64 = a13;
  v60 = a11;
  v63 = a10;
  v62 = a9;
  v61 = HIDWORD(a11);
  os_unfair_lock_unlock(v32 + 20);
  v33 = sub_19A5731CC();
  v34 = *(*(v33 - 8) + 56);
  v69 = v31;
  v34(v31, 1, 1, v33);
  v35 = v72;
  v36 = *(v72 + 16);
  v58 = v28;
  v36(v28, v79, v25);
  sub_19A331B84(v71, v78, type metadata accessor for GenerationState);
  sub_19A2F3EF0(a12, &v82);
  sub_19A33546C(a16, v22, &qword_1EAF9FDC8, &qword_19A577310);
  v37 = *(v35 + 80);
  v38 = v25;
  v59 = v25;
  v39 = (v37 + 32) & ~v37;
  v40 = (v26 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v71 = v22;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v67 + 80) + v42 + 8) & ~*(v67 + 80);
  v44 = (v24 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v44 + 31) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v73 + 80) + v54 + 8) & ~*(v73 + 80);
  v73 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  (*(v35 + 32))(v46 + v39, v58, v38);
  v47 = v78;
  *(v46 + v40) = v77;
  *(v46 + v41) = v74;
  *(v46 + v42) = v76;
  sub_19A3319E4(v47, v46 + v43, type metadata accessor for GenerationState);
  v48 = v46 + v44;
  v49 = v63;
  *v48 = v62;
  *(v48 + 8) = v49;
  v50 = v61;
  *(v48 + 16) = v60;
  *(v48 + 20) = v50;
  sub_19A2EA460(&v82, v46 + v57);
  *(v46 + v67) = v64;
  v51 = v65;
  *(v46 + v56) = v65;
  *(v46 + v55) = v66;
  *(v46 + v54) = v75;
  sub_19A3351B8(v71, v46 + v45, &qword_1EAF9FDC8, &qword_19A577310);
  *(v46 + v73) = v68;

  v52 = v51;

  sub_19A307070(0, 0, v69, &unk_19A578D00, v46);

  sub_19A5731DC();

  sub_19A3EB40C();
}

uint64_t sub_19A303598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 472) = v22;
  *(v8 + 480) = v23;
  *(v8 + 456) = v21;
  *(v8 + 440) = v20;
  *(v8 + 424) = v19;
  *(v8 + 408) = v18;
  *(v8 + 392) = a7;
  *(v8 + 400) = a8;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 368) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0148, &qword_19A578CB0);
  *(v8 + 488) = swift_task_alloc();
  v9 = sub_19A571C1C();
  *(v8 + 496) = v9;
  *(v8 + 504) = *(v9 - 8);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = sub_19A570A9C();
  *(v8 + 528) = swift_task_alloc();
  type metadata accessor for AugmentedPrompt(0);
  *(v8 + 536) = swift_task_alloc();
  v10 = sub_19A57102C();
  *(v8 + 544) = v10;
  *(v8 + 552) = *(v10 - 8);
  *(v8 + 560) = swift_task_alloc();
  v11 = type metadata accessor for GeneratedImage(0);
  *(v8 + 568) = v11;
  *(v8 + 576) = *(v11 - 8);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0160, &qword_19A578CE8);
  *(v8 + 616) = v12;
  v13 = *(v12 - 8);
  *(v8 + 624) = v13;
  *(v8 + 632) = *(v13 + 64);
  *(v8 + 640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  *(v8 + 680) = swift_task_alloc();
  v14 = type metadata accessor for GenerationState(0);
  *(v8 + 688) = v14;
  *(v8 + 696) = *(v14 - 8);
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98, &qword_19A578D10);
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = type metadata accessor for GenerativePlayground.PreviewGenerationEvent(0);
  *(v8 + 760) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0170, &qword_19A578D18);
  *(v8 + 768) = v15;
  *(v8 + 776) = *(v15 - 8);
  *(v8 + 784) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A303A64, 0, 0);
}

uint64_t sub_19A303A64()
{
  v104 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  swift_storeEnumTagMultiPayload();
  sub_19A5731EC();
  v4 = *(v2 + 8);
  *(v0 + 792) = v4;
  *(v0 + 800) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  sub_19A432438();
  v5 = *(v0 + 784);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 384);
  *v7 = 0;
  *(v7 + 8) = v8;
  *(v7 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  sub_19A5731EC();
  v4(v5, v6);
  if (v8 < 1)
  {
    __break(1u);
    swift_once();
    v9 = sub_19A5723FC();
    __swift_project_value_buffer(v9, qword_1ED82BCF0);

    v10 = sub_19A5723DC();
    v11 = sub_19A57355C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v103 = v13;
      *v12 = 136315138;
      v14 = sub_19A57338C();
      v16 = v15;

      v17 = sub_19A31F114(v14, v16, &v103);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_19A2DE000, v10, v11, "Translating ModelManagerError.dDTSSS with strings %s to a VGF error.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x19A902C50](v13, -1, -1);
      MEMORY[0x19A902C50](v12, -1, -1);
    }

    else
    {
    }

    v22 = *(v0 + 792);
    v23 = *(v0 + 784);
    v24 = *(v0 + 768);
    v25 = *(v0 + 760);
    sub_19A335164();
    v26 = swift_allocError();
    *v27 = xmmword_19A577090;
    *(v27 + 16) = 3;
    *v25 = v26;
    swift_storeEnumTagMultiPayload();
    sub_19A5731EC();
    v22(v23, v24);
    sub_19A5731FC();

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    swift_beginAccess();
    sub_19A432438();
    v18 = *(v0 + 688);
    v19 = *(v0 + 392);
    v20 = *(*(v0 + 696) + 56);
    *(v0 + 808) = v20;
    *(v0 + 816) = 1;
    v20(*(v0 + 744), 1, 1, v18);
    if (v19)
    {
      v21 = *(v0 + 392);

      os_unfair_lock_lock((v21 + 16));
      sub_19A38BF98((v21 + 24), v21, v0 + 336);
      os_unfair_lock_unlock((v21 + 16));
      v29 = *(v0 + 808);
      v30 = *(v0 + 744);
      v31 = *(v0 + 696);
      v32 = *(v0 + 688);
      v33 = *(v0 + 400);
      v34 = *(v0 + 336);
      v35 = *(v0 + 344);
      v36 = *(v0 + 348);
      sub_19A2F3FA0(v30, &qword_1EAF9FC98, &qword_19A578D10);
      sub_19A331B84(v33, v30, type metadata accessor for GenerationState);
      v29(v30, 0, 1, v32);
      v37 = *(v32 + 28);
      v38 = type metadata accessor for GenerationRecipe(0);
      v39 = v30 + *(v38 + 28) + v37;
      *v39 = v34;
      *(v39 + 8) = 0;
      result = (*(v31 + 48))(v30, 1, v32);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v41 = *(v0 + 744);
      v42 = *(v0 + 688);

      v43 = v41 + *(v38 + 44) + *(v42 + 28);
      *v43 = v35;
      *(v43 + 4) = v36;
    }

    v44 = *(v0 + 736);
    v45 = *(v0 + 696);
    v46 = *(v0 + 688);
    sub_19A33546C(*(v0 + 744), v44, &qword_1EAF9FC98, &qword_19A578D10);
    v47 = *(v45 + 48);
    v48 = v47(v44, 1, v46);
    v49 = *(v0 + 736);
    v50 = *(v0 + 728);
    if (v48 == 1)
    {
      v51 = *(v0 + 688);
      sub_19A331B84(*(v0 + 400), v50, type metadata accessor for GenerationState);
      v52 = v47(v49, 1, v51);

      if (v52 != 1)
      {
        sub_19A2F3FA0(*(v0 + 736), &qword_1EAF9FC98, &qword_19A578D10);
      }
    }

    else
    {
      sub_19A3319E4(*(v0 + 736), v50, type metadata accessor for GenerationState);
    }

    v53 = *(v0 + 728);
    v54 = *(v0 + 720);
    v55 = *(v0 + 688);
    v56 = *(v0 + 680);
    v57 = *(v0 + 672);
    v58 = *(v0 + 552);
    v101 = *(v0 + 544);
    v59 = *(v0 + 472);
    v60 = *(v0 + 440);
    v61 = *(v0 + 376);
    sub_19A2F3EF0(*(v0 + 432), v0 + 232);
    *(v0 + 16) = *(v60 + 16);
    v63 = *(v60 + 48);
    v62 = *(v60 + 64);
    v64 = *(v60 + 32);
    *(v0 + 80) = *(v60 + 80);
    *(v0 + 48) = v63;
    *(v0 + 64) = v62;
    *(v0 + 32) = v64;
    sub_19A33546C(v59, v56, &qword_1EAF9FDC8, &qword_19A577310);
    *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
    *(v0 + 304) = &off_1F0DAF5F0;
    *(v0 + 272) = v61;
    type metadata accessor for GenerativePlayground.GenerationTask(0);
    v65 = swift_allocObject();
    *(v0 + 824) = v65;
    sub_19A331B84(v53, v54, type metadata accessor for GenerationState);
    v66 = *(v0 + 64);
    v67 = *(v55 + 28);
    v68 = type metadata accessor for GenerationRecipe(0);
    *(v0 + 832) = v68;
    *(v54 + *(v68 + 20) + v67 + 40) = v66;
    v69 = *(v55 + 20);
    sub_19A33546C(v54 + v69, v57, &qword_1EAF9FD80, &unk_19A57B720);
    v70 = *(v58 + 48);
    *(v0 + 840) = v70;
    *(v0 + 848) = (v58 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v71 = v70(v57, 1, v101);
    v72 = *(v0 + 672);
    if (v71 == 1)
    {
      v73 = *(v0 + 664);
      v74 = *(v0 + 552);
      v75 = *(v0 + 544);
      v76 = *(v0 + 448);
      sub_19A334C34(v0 + 16, v0 + 88);
      v77 = v76;

      sub_19A2F3FA0(v72, &qword_1EAF9FD80, &unk_19A57B720);
      sub_19A57101C();
      (*(v74 + 56))(v73, 0, 1, v75);
      sub_19A3315F4(v73, v54 + v69);
    }

    else
    {
      v78 = *(v0 + 448);
      sub_19A334C34(v0 + 16, v0 + 160);
      v79 = v78;

      sub_19A2F3FA0(v72, &qword_1EAF9FD80, &unk_19A57B720);
    }

    v80 = *(v0 + 728);
    v100 = *(v0 + 720);
    v102 = *(v0 + 680);
    v82 = *(v0 + 456);
    v81 = *(v0 + 464);
    v83 = *(v0 + 448);
    v85 = *(v0 + 416);
    v84 = *(v0 + 424);
    v86 = *(v0 + 408);
    sub_19A331B84(v100, v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
    v87 = (v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client);
    *v87 = v86;
    v87[1] = v85;
    v87[2] = v84;
    sub_19A331764(v80, type metadata accessor for GenerationState);
    *(v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService) = v83;
    v88 = v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
    v89 = *(v0 + 64);
    *(v88 + 32) = *(v0 + 48);
    *(v88 + 48) = v89;
    *(v88 + 64) = *(v0 + 80);
    v90 = *(v0 + 32);
    *v88 = *(v0 + 16);
    *(v88 + 16) = v90;
    sub_19A2EA460((v0 + 272), v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
    v91 = v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
    v92 = *(v0 + 248);
    *v91 = *(v0 + 232);
    *(v91 + 16) = v92;
    *(v91 + 32) = *(v0 + 264);
    *(v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession) = v82;
    *(v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker) = v81;
    sub_19A3351B8(v102, v65 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);

    sub_19A331764(v100, type metadata accessor for GenerationState);
    v93 = *(v0 + 640);
    v94 = *(v0 + 624);
    v95 = *(v0 + 616);
    (*(v94 + 16))(v93, *(v0 + 368), v95);
    v96 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v97 = swift_allocObject();
    (*(v94 + 32))(v97 + v96, v93, v95);
    *(v0 + 864) = v97;
    *(v0 + 856) = sub_19A3352EC;
    v98 = swift_task_alloc();
    *(v0 + 872) = v98;
    *v98 = v0;
    v98[1] = sub_19A304B94;
    v99 = *(v0 + 712);

    return sub_19A48B33C(v99, sub_19A3352EC, v97);
  }
}

uint64_t sub_19A304B94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 880) = a1;
  *(v3 + 888) = v1;

  if (v1)
  {
    v4 = sub_19A3063B4;
  }

  else
  {
    v4 = sub_19A304CAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A304CAC()
{
  v217 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 384);
  *v5 = *(v0 + 816);
  *(v5 + 8) = v6;
  *(v5 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  sub_19A5731EC();
  v2(v3, v4);
  if (*(v1 + 16))
  {
    v7 = *(v0 + 840);
    v8 = *(v0 + 656);
    v9 = *(v0 + 648);
    v10 = *(v0 + 608);
    v11 = *(v0 + 600);
    v12 = *(v0 + 568);
    v13 = *(v0 + 552);
    v14 = *(v0 + 544);
    v15 = *(*(v0 + 576) + 80);
    sub_19A331B84(*(v0 + 880) + ((v15 + 32) & ~v15), v11, type metadata accessor for GeneratedImage);

    sub_19A3319E4(v11, v10, type metadata accessor for GeneratedImage);
    (*(v13 + 56))(v8, 1, 1, v14);
    v16 = (v10 + *(v12 + 20));
    v214 = *v16;
    sub_19A3351B8(v8, v9, &qword_1EAF9FD80, &unk_19A57B720);
    if (v7(v9, 1, v14) == 1)
    {
      v17 = *(v0 + 840);
      v18 = *(v0 + 648);
      v19 = *(v0 + 560);
      v20 = *(v0 + 552);
      v21 = *(v0 + 544);
      v22 = type metadata accessor for ImageProvenance(0);
      (*(v20 + 16))(v19, &v16[*(v22 + 20)], v21);
      if (v17(v18, 1, v21) != 1)
      {
        sub_19A2F3FA0(*(v0 + 648), &qword_1EAF9FD80, &unk_19A57B720);
      }
    }

    else
    {
      (*(*(v0 + 552) + 32))(*(v0 + 560), *(v0 + 648), *(v0 + 544));
    }

    v207 = *(v0 + 712);
    v209 = *(v0 + 832);
    v203 = *(v0 + 816);
    v205 = *(v0 + 688);
    v26 = *(v0 + 608);
    v27 = *(v0 + 592);
    v28 = *(v0 + 568);
    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 544);
    v32 = type metadata accessor for ImageProvenance(0);
    v33 = *&v16[v32[7]];
    v34 = (v27 + v28[5]);
    *v34 = v214;
    (*(v30 + 32))(&v34[v32[5]], v29, v31);
    *&v34[v32[6]] = v203;
    *&v34[v32[7]] = v33;
    *&v34[v32[8]] = 0;
    v35 = *(v26 + 8);
    v36 = *v26;
    v37 = *(v26 + v28[6]);
    v38 = (v26 + v28[7]);
    v39 = *(v38 + 16);
    v40 = v28[10];
    v41 = *v38;
    *(v27 + v40) = 3;
    *v27 = v36;
    *(v27 + 8) = v35;
    *(v27 + v28[6]) = v37;
    v42 = v27 + v28[7];
    *v42 = v41;
    *(v42 + 16) = v39;
    *(v27 + v40) = 3;
    v43 = *(v207 + *(v205 + 28) + *(v209 + 76));
    if (*(v43 + 16))
    {
      v44 = *(type metadata accessor for ResolvedTextPrompt(0) - 8);
      v45 = *(v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + 16);
      v46 = v36;

      v47 = sub_19A386EC4(v45);
      v49 = v48;
    }

    else
    {
      v50 = v36;

      v47 = 0;
      v49 = 0xE000000000000000;
    }

    v51 = *(v0 + 888);
    v52 = *(v0 + 536);
    v53 = (*(v0 + 592) + *(*(v0 + 568) + 32));
    *v53 = v47;
    v53[1] = v49;
    sub_19A36C3E0(v52);
    if (v51)
    {

      v54 = 0;
      v55 = 0xE000000000000000;
    }

    else
    {
      v56 = *(v0 + 536);
      sub_19A570A4C();
      sub_19A335220(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      v54 = sub_19A572F7C();
      v55 = v57;
      sub_19A331764(v56, type metadata accessor for AugmentedPrompt);
    }

    v201 = *(v0 + 856);
    v202 = *(v0 + 864);
    v206 = *(v0 + 792);
    v58 = *(v0 + 784);
    v204 = *(v0 + 768);
    v59 = *(v0 + 760);
    v60 = *(v0 + 712);
    v61 = *(v0 + 704);
    v210 = *(v0 + 608);
    v62 = *(v0 + 592);
    v63 = *(v0 + 584);
    v64 = *(v0 + 568);

    v65 = (v62 + *(v64 + 36));
    *v65 = v54;
    v65[1] = v55;
    sub_19A331B84(v62, v63, type metadata accessor for GeneratedImage);
    sub_19A331B84(v60, v61, type metadata accessor for GenerationState);
    type metadata accessor for GenerativePlayground.PreviewRepresentation(0);
    v66 = swift_allocObject();
    sub_19A3319E4(v63, v66 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage, type metadata accessor for GeneratedImage);
    sub_19A3319E4(v61, v66 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generationState, type metadata accessor for GenerationState);
    *v59 = v66;
    swift_storeEnumTagMultiPayload();

    sub_19A5731EC();
    sub_19A2E0A60(v201, v202);

    v206(v58, v204);
    sub_19A331764(v60, type metadata accessor for GenerationState);
    sub_19A331764(v210, type metadata accessor for GeneratedImage);
    sub_19A331764(v62, type metadata accessor for GeneratedImage);
    v25 = 0;
  }

  else
  {
    v23 = *(v0 + 864);
    v24 = *(v0 + 856);
    sub_19A331764(*(v0 + 712), type metadata accessor for GenerationState);
    sub_19A2E0A60(v24, v23);

    v25 = *(v0 + 888);
  }

  v67 = *(v0 + 816);
  v68 = *(v0 + 384);
  sub_19A2F3FA0(*(v0 + 744), &qword_1EAF9FC98, &qword_19A578D10);
  if (v67 == v68)
  {
    sub_19A5731FC();
LABEL_62:

    v200 = *(v0 + 8);

    return v200();
  }

  v69 = *(v0 + 816);
  v70 = v69 + 1;
  if (__OFADD__(v69, 1))
  {
    __break(1u);
    goto LABEL_66;
  }

  sub_19A432438();
  if (v25)
  {
    v71 = v25;
    *(v0 + 352) = v25;
    v72 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {
      v73 = (*(*(v0 + 504) + 88))(*(v0 + 512), *(v0 + 496));
      if (v73 == *MEMORY[0x1E69B25A0])
      {
        v75 = *(v0 + 504);
        v74 = *(v0 + 512);
        v76 = *(v0 + 496);

        (*(v75 + 96))(v74, v76);
        if (qword_1ED824050 == -1)
        {
LABEL_21:
          v77 = sub_19A5723FC();
          __swift_project_value_buffer(v77, qword_1ED82BCF0);

          v78 = sub_19A5723DC();
          v79 = sub_19A57355C();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v216[0] = v81;
            *v80 = 136315138;
            v82 = sub_19A57338C();
            v84 = v83;

            v85 = sub_19A31F114(v82, v84, v216);

            *(v80 + 4) = v85;
            _os_log_impl(&dword_19A2DE000, v78, v79, "Translating ModelManagerError.dDTSSS with strings %s to a VGF error.", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v81);
            MEMORY[0x19A902C50](v81, -1, -1);
            MEMORY[0x19A902C50](v80, -1, -1);
          }

          else
          {
          }

          v169 = *(v0 + 792);
          v170 = *(v0 + 784);
          v171 = *(v0 + 768);
          v172 = *(v0 + 760);
          sub_19A335164();
          v173 = swift_allocError();
          *v174 = xmmword_19A577090;
          *(v174 + 16) = 3;
          *v172 = v173;
          swift_storeEnumTagMultiPayload();
          sub_19A5731EC();
          v169(v170, v171);
LABEL_48:
          sub_19A5731FC();
          v175 = *(v0 + 352);
LABEL_61:

          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_21;
      }

      if (v73 == *MEMORY[0x1E69B2598])
      {

        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v88 = sub_19A5723FC();
        __swift_project_value_buffer(v88, qword_1ED82BCF0);
        v89 = sub_19A5723DC();
        v90 = sub_19A57355C();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&dword_19A2DE000, v89, v90, "Translating ModelManagerError.dDTSS to a VGF error.", v91, 2u);
          MEMORY[0x19A902C50](v91, -1, -1);
        }

        v92 = *(v0 + 792);
        v93 = *(v0 + 784);
        v94 = *(v0 + 768);
        v95 = *(v0 + 760);

        sub_19A335164();
        v96 = swift_allocError();
        *v97 = xmmword_19A577090;
        *(v97 + 16) = 3;
        *v95 = v96;
        swift_storeEnumTagMultiPayload();
        sub_19A5731EC();
        v92(v93, v94);
        goto LABEL_48;
      }

      (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
    }

    v176 = sub_19A4B1174(v25);
    *(v0 + 360) = v176;
    v177 = v176;
    v178 = type metadata accessor for GeneratorError(0);
    v179 = swift_dynamicCast();
    v180 = *(*(v178 - 8) + 56);
    v181 = *(v0 + 488);
    if (v179)
    {
      v180(*(v0 + 488), 0, 1, v178);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v183 = *(v0 + 488);
      if (EnumCaseMultiPayload == 7)
      {
        v184 = *v183;
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v185 = sub_19A5723FC();
        __swift_project_value_buffer(v185, qword_1ED82BCF0);

        v186 = sub_19A5723DC();
        v187 = sub_19A57355C();

        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v216[0] = v189;
          *v188 = 136446210;
          v190 = MEMORY[0x19A900C10](v184, &type metadata for GeneratorError.VersionTriple);
          v192 = v191;

          v193 = sub_19A31F114(v190, v192, v216);

          *(v188 + 4) = v193;
          _os_log_impl(&dword_19A2DE000, v186, v187, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v188, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v189);
          MEMORY[0x19A902C50](v189, -1, -1);
          MEMORY[0x19A902C50](v188, -1, -1);
        }

        else
        {
        }

        v194 = *(*(v0 + 480) + 176);
        os_unfair_lock_lock((v194 + 24));
        type metadata accessor for AppleDiffusionResourceFactory(0);
        v195 = static AppleDiffusionResourceFactory.shared(reset:)(1);

        *(v194 + 16) = v195;
        os_unfair_lock_unlock((v194 + 24));
      }

      else
      {
        sub_19A331764(v183, type metadata accessor for GeneratorError);
      }
    }

    else
    {
      v180(*(v0 + 488), 1, 1, v178);
      sub_19A2F3FA0(v181, &qword_1EAFA0148, &qword_19A578CB0);
    }

    v196 = *(v0 + 792);
    v197 = *(v0 + 784);
    v198 = *(v0 + 768);
    **(v0 + 760) = v176;
    swift_storeEnumTagMultiPayload();
    v199 = v176;
    sub_19A5731EC();
    v196(v197, v198);
    sub_19A5731FC();

    v175 = v71;
    goto LABEL_61;
  }

  *(v0 + 816) = v70;
  v86 = *(v0 + 392);
  (*(v0 + 808))(*(v0 + 744), 1, 1, *(v0 + 688));
  if (v86)
  {
    v87 = *(v0 + 392);

    os_unfair_lock_lock((v87 + 16));
    sub_19A38BF98((v87 + 24), v87, v0 + 336);
    os_unfair_lock_unlock((v87 + 16));
    v98 = *(v0 + 808);
    v99 = *(v0 + 744);
    v100 = *(v0 + 696);
    v101 = *(v0 + 688);
    v102 = *(v0 + 400);
    v103 = *(v0 + 336);
    v211 = *(v0 + 344);
    v104 = *(v0 + 348);
    sub_19A2F3FA0(v99, &qword_1EAF9FC98, &qword_19A578D10);
    sub_19A331B84(v102, v99, type metadata accessor for GenerationState);
    v98(v99, 0, 1, v101);
    v105 = *(v101 + 28);
    v106 = type metadata accessor for GenerationRecipe(0);
    v107 = v99 + *(v106 + 28) + v105;
    *v107 = v103;
    *(v107 + 8) = 0;
    result = (*(v100 + 48))(v99, 1, v101);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v109 = *(v0 + 744);
    v110 = *(v0 + 688);

    v111 = v109 + *(v106 + 44) + *(v110 + 28);
    *v111 = v211;
    *(v111 + 4) = v104;
  }

  v112 = *(v0 + 736);
  v113 = *(v0 + 696);
  v114 = *(v0 + 688);
  sub_19A33546C(*(v0 + 744), v112, &qword_1EAF9FC98, &qword_19A578D10);
  v115 = *(v113 + 48);
  v116 = v115(v112, 1, v114);
  v117 = *(v0 + 736);
  v118 = *(v0 + 728);
  v215 = v70;
  if (v116 == 1)
  {
    v119 = *(v0 + 688);
    sub_19A331B84(*(v0 + 400), v118, type metadata accessor for GenerationState);
    v120 = v115(v117, 1, v119);

    if (v120 != 1)
    {
      sub_19A2F3FA0(*(v0 + 736), &qword_1EAF9FC98, &qword_19A578D10);
    }
  }

  else
  {
    sub_19A3319E4(v117, v118, type metadata accessor for GenerationState);
  }

  v121 = *(v0 + 728);
  v122 = *(v0 + 720);
  v123 = *(v0 + 688);
  v124 = *(v0 + 680);
  v125 = *(v0 + 672);
  v126 = *(v0 + 552);
  v212 = *(v0 + 544);
  v127 = *(v0 + 472);
  v128 = *(v0 + 440);
  v129 = *(v0 + 376);
  sub_19A2F3EF0(*(v0 + 432), v0 + 232);
  *(v0 + 16) = *(v128 + 16);
  v131 = *(v128 + 48);
  v130 = *(v128 + 64);
  v132 = *(v128 + 32);
  *(v0 + 80) = *(v128 + 80);
  *(v0 + 48) = v131;
  *(v0 + 64) = v130;
  *(v0 + 32) = v132;
  sub_19A33546C(v127, v124, &qword_1EAF9FDC8, &qword_19A577310);
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
  *(v0 + 304) = &off_1F0DAF5F0;
  *(v0 + 272) = v129;
  type metadata accessor for GenerativePlayground.GenerationTask(0);
  v133 = swift_allocObject();
  *(v0 + 824) = v133;
  sub_19A331B84(v121, v122, type metadata accessor for GenerationState);
  v134 = *(v0 + 64);
  v135 = *(v123 + 28);
  v136 = type metadata accessor for GenerationRecipe(0);
  *(v0 + 832) = v136;
  *(v122 + *(v136 + 20) + v135 + 40) = v134;
  v137 = *(v123 + 20);
  sub_19A33546C(v122 + v137, v125, &qword_1EAF9FD80, &unk_19A57B720);
  v138 = *(v126 + 48);
  *(v0 + 840) = v138;
  *(v0 + 848) = (v126 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v139 = v138(v125, 1, v212);
  v140 = *(v0 + 672);
  if (v139 == 1)
  {
    v141 = *(v0 + 664);
    v142 = *(v0 + 552);
    v143 = *(v0 + 544);
    v144 = *(v0 + 448);
    sub_19A334C34(v0 + 16, v0 + 88);
    v145 = v144;

    sub_19A2F3FA0(v140, &qword_1EAF9FD80, &unk_19A57B720);
    sub_19A57101C();
    (*(v142 + 56))(v141, 0, 1, v143);
    sub_19A3315F4(v141, v122 + v137);
  }

  else
  {
    v146 = *(v0 + 448);
    sub_19A334C34(v0 + 16, v0 + 160);
    v147 = v146;

    sub_19A2F3FA0(v140, &qword_1EAF9FD80, &unk_19A57B720);
  }

  v148 = *(v0 + 728);
  v208 = *(v0 + 720);
  v213 = *(v0 + 680);
  v150 = *(v0 + 456);
  v149 = *(v0 + 464);
  v151 = *(v0 + 448);
  v153 = *(v0 + 416);
  v152 = *(v0 + 424);
  v154 = *(v0 + 408);
  sub_19A331B84(v208, v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
  v155 = (v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client);
  *v155 = v154;
  v155[1] = v153;
  v155[2] = v152;
  sub_19A331764(v148, type metadata accessor for GenerationState);
  *(v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService) = v151;
  v156 = v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
  v157 = *(v0 + 64);
  *(v156 + 32) = *(v0 + 48);
  *(v156 + 48) = v157;
  *(v156 + 64) = *(v0 + 80);
  v158 = *(v0 + 32);
  *v156 = *(v0 + 16);
  *(v156 + 16) = v158;
  sub_19A2EA460((v0 + 272), v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
  v159 = v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
  v160 = *(v0 + 248);
  *v159 = *(v0 + 232);
  *(v159 + 16) = v160;
  *(v159 + 32) = *(v0 + 264);
  *(v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession) = v150;
  *(v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker) = v149;
  sub_19A3351B8(v213, v133 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);

  sub_19A331764(v208, type metadata accessor for GenerationState);
  if (v215 == 1)
  {
    v161 = *(v0 + 640);
    v162 = *(v0 + 624);
    v163 = *(v0 + 616);
    (*(v162 + 16))(v161, *(v0 + 368), v163);
    v164 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v165 = swift_allocObject();
    (*(v162 + 32))(v165 + v164, v161, v163);
    v166 = sub_19A3352EC;
  }

  else
  {
    v166 = 0;
    v165 = 0;
  }

  *(v0 + 864) = v165;
  *(v0 + 856) = v166;
  v167 = swift_task_alloc();
  *(v0 + 872) = v167;
  *v167 = v0;
  v167[1] = sub_19A304B94;
  v168 = *(v0 + 712);

  return sub_19A48B33C(v168, v166, v165);
}

uint64_t sub_19A3063B4()
{
  v63 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 744);

  sub_19A2E0A60(v2, v1);
  sub_19A2F3FA0(v3, &qword_1EAF9FC98, &qword_19A578D10);
  v4 = *(v0 + 888);
  *(v0 + 352) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (swift_dynamicCast())
  {
    v6 = (*(*(v0 + 504) + 88))(*(v0 + 512), *(v0 + 496));
    if (v6 == *MEMORY[0x1E69B25A0])
    {
      v8 = *(v0 + 504);
      v7 = *(v0 + 512);
      v9 = *(v0 + 496);

      (*(v8 + 96))(v7, v9);
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v10 = sub_19A5723FC();
      __swift_project_value_buffer(v10, qword_1ED82BCF0);

      v11 = sub_19A5723DC();
      v12 = sub_19A57355C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v62[0] = v14;
        *v13 = 136315138;
        v15 = sub_19A57338C();
        v17 = v16;

        v18 = sub_19A31F114(v15, v17, v62);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_19A2DE000, v11, v12, "Translating ModelManagerError.dDTSSS with strings %s to a VGF error.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x19A902C50](v14, -1, -1);
        MEMORY[0x19A902C50](v13, -1, -1);
      }

      else
      {
      }

      v29 = *(v0 + 792);
      v30 = *(v0 + 784);
      v31 = *(v0 + 768);
      v32 = *(v0 + 760);
      sub_19A335164();
      v33 = swift_allocError();
      *v34 = xmmword_19A577090;
      *(v34 + 16) = 3;
      *v32 = v33;
      swift_storeEnumTagMultiPayload();
      sub_19A5731EC();
      v29(v30, v31);
LABEL_15:
      sub_19A5731FC();
      v35 = *(v0 + 352);
      goto LABEL_28;
    }

    if (v6 == *MEMORY[0x1E69B2598])
    {

      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v19 = sub_19A5723FC();
      __swift_project_value_buffer(v19, qword_1ED82BCF0);
      v20 = sub_19A5723DC();
      v21 = sub_19A57355C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_19A2DE000, v20, v21, "Translating ModelManagerError.dDTSS to a VGF error.", v22, 2u);
        MEMORY[0x19A902C50](v22, -1, -1);
      }

      v23 = *(v0 + 792);
      v24 = *(v0 + 784);
      v25 = *(v0 + 768);
      v26 = *(v0 + 760);

      sub_19A335164();
      v27 = swift_allocError();
      *v28 = xmmword_19A577090;
      *(v28 + 16) = 3;
      *v26 = v27;
      swift_storeEnumTagMultiPayload();
      sub_19A5731EC();
      v23(v24, v25);
      goto LABEL_15;
    }

    (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  }

  v36 = sub_19A4B1174(v4);
  *(v0 + 360) = v36;
  v37 = v36;
  v38 = type metadata accessor for GeneratorError(0);
  v39 = swift_dynamicCast();
  v40 = *(*(v38 - 8) + 56);
  v41 = *(v0 + 488);
  if (v39)
  {
    v40(*(v0 + 488), 0, 1, v38);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = *(v0 + 488);
    if (EnumCaseMultiPayload == 7)
    {
      v44 = *v43;
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v45 = sub_19A5723FC();
      __swift_project_value_buffer(v45, qword_1ED82BCF0);

      v46 = sub_19A5723DC();
      v47 = sub_19A57355C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v62[0] = v49;
        *v48 = 136446210;
        v50 = MEMORY[0x19A900C10](v44, &type metadata for GeneratorError.VersionTriple);
        v52 = v51;

        v53 = sub_19A31F114(v50, v52, v62);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_19A2DE000, v46, v47, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x19A902C50](v49, -1, -1);
        MEMORY[0x19A902C50](v48, -1, -1);
      }

      else
      {
      }

      v54 = *(*(v0 + 480) + 176);
      os_unfair_lock_lock((v54 + 24));
      type metadata accessor for AppleDiffusionResourceFactory(0);
      v55 = static AppleDiffusionResourceFactory.shared(reset:)(1);

      *(v54 + 16) = v55;
      os_unfair_lock_unlock((v54 + 24));
    }

    else
    {
      sub_19A331764(v43, type metadata accessor for GeneratorError);
    }
  }

  else
  {
    v40(*(v0 + 488), 1, 1, v38);
    sub_19A2F3FA0(v41, &qword_1EAFA0148, &qword_19A578CB0);
  }

  v56 = *(v0 + 792);
  v57 = *(v0 + 784);
  v58 = *(v0 + 768);
  **(v0 + 760) = v36;
  swift_storeEnumTagMultiPayload();
  v59 = v36;
  sub_19A5731EC();
  v56(v57, v58);
  sub_19A5731FC();

  v35 = v4;
LABEL_28:

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_19A306D7C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerationState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativePlayground.PreviewGenerationEvent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0170, &qword_19A578D18);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = type metadata accessor for GenerativePlayground.GenerationEvent(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A331B84(a2, v15, type metadata accessor for GenerativePlayground.GenerationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_19A3319E4(v15, v5, type metadata accessor for GenerationState);
    sub_19A331B84(v5, v8, type metadata accessor for GenerationState);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0160, &qword_19A578CE8);
    sub_19A5731EC();
    (*(v10 + 8))(v12, v9);
    v18 = type metadata accessor for GenerationState;
    v19 = v5;
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0160, &qword_19A578CE8);
      sub_19A5731EC();
      return (*(v10 + 8))(v12, v9);
    }

    v18 = type metadata accessor for GenerativePlayground.GenerationEvent;
    v19 = v15;
  }

  return sub_19A331764(v19, v18);
}

uint64_t sub_19A307070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A33546C(a3, v25 - v10, &qword_1EAF9FD98, &qword_19A57A710);
  v12 = sub_19A5731CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A2F3FA0(v11, &qword_1EAF9FD98, &qword_19A57A710);
  }

  else
  {
    sub_19A5731BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A57314C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A572DEC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_19A2F3FA0(a3, &qword_1EAF9FD98, &qword_19A57A710);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A2F3FA0(a3, &qword_1EAF9FD98, &qword_19A57A710);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A307370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = v2 + *(a1 + 28);
  v9 = type metadata accessor for GenerationState(0);
  sub_19A33546C(v8 + *(v9 + 20), v7, &qword_1EAF9FD80, &unk_19A57B720);
  v10 = sub_19A57102C();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  __break(1u);
  return result;
}

uint64_t GenerativePlayground.PreviewRepresentation.deinit()
{
  sub_19A331764(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage, type metadata accessor for GeneratedImage);
  sub_19A331764(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generationState, type metadata accessor for GenerationState);
  return v0;
}

uint64_t GenerativePlayground.PreviewRepresentation.__deallocating_deinit()
{
  sub_19A331764(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage, type metadata accessor for GeneratedImage);
  sub_19A331764(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generationState, type metadata accessor for GenerationState);

  return swift_deallocClassInstance();
}

uint64_t GenerativePlayground.generatePreviews(options:generationID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC0, &qword_19A577308);
  *(v4 + 184) = v6;
  *(v4 + 192) = *(v6 - 8);
  *(v4 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = type metadata accessor for GenerationState(0);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v7 = sub_19A57102C();
  *(v4 + 264) = v7;
  *(v4 + 272) = *(v7 - 8);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = type metadata accessor for DefinitionSession(0);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = *a2;
  *(v4 + 328) = *(a2 + 16);
  *(v4 + 344) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_19A307830, 0, 0);
}

uint64_t sub_19A307830()
{
  v1 = *(*(v0 + 176) + 168);
  *(v0 + 336) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A307854, v1, 0);
}

uint64_t sub_19A307854()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A307900, 0, 0);
}

uint64_t sub_19A307900()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  sub_19A33546C(*(v0 + 168), v3, &qword_1EAF9FD80, &unk_19A57B720);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 264);
    sub_19A57101C();
    if (v4(v5, 1, v6) != 1)
    {
      sub_19A2F3FA0(*(v0 + 256), &qword_1EAF9FD80, &unk_19A57B720);
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  }

  v7 = *(v0 + 296);
  v76 = *(v0 + 304);
  v8 = *(v0 + 280);
  v61 = *(v0 + 288);
  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v13 = *(v0 + 224);
  sub_19A331B84(v76, v7, type metadata accessor for DefinitionSession);
  v74 = *(v10 + 16);
  v74(v12, v8, v9);
  v14 = *(v10 + 56);
  v14(v12, 0, 1, v9);
  v15 = v13[5];
  v14(v11 + v15, 1, 1, v9);
  v74(v11, v7, v9);
  sub_19A3315F4(v12, v11 + v15);
  v16 = (v7 + v61[5]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v11 + v13[6]);
  *v19 = v17;
  v19[1] = v18;
  sub_19A331B84(v7 + v61[22], v11 + v13[7], type metadata accessor for GenerationRecipe);

  sub_19A331764(v7, type metadata accessor for DefinitionSession);
  v20 = v76 + v61[9];
  v21 = *(v20 + *(_s17AssignmentOptionsVMa(0) + 32));
  v22 = *(v21 + 16);
  v23 = sub_19A57112C();
  v24 = *(v23 - 8);
  if (v22)
  {
    (*(*(v23 - 8) + 16))(*(v0 + 216), v21 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v23);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v71 = *(v0 + 344);
  v70 = *(v0 + 328);
  v53 = *(v0 + 320);
  v26 = *(v0 + 304);
  v72 = *(v0 + 312);
  v27 = *(v0 + 288);
  v68 = *(v0 + 280);
  v67 = *(v0 + 264);
  v28 = *(v0 + 240);
  v65 = *(v0 + 272);
  v66 = v28;
  v29 = *(v0 + 232);
  v30 = *(v0 + 216);
  v75 = *(v0 + 200);
  v77 = *(v0 + 208);
  v31 = *(v0 + 176);
  v63 = *(v0 + 192);
  v64 = *(v0 + 184);
  v59 = v31;
  v69 = *(v0 + 160);
  (*(v24 + 56))(v30, v25, 1, v23);
  v32 = (v26 + v61[5]);
  v60 = v32[1];
  v62 = *v32;
  v33 = v32[2];
  v34 = v28;
  v35 = v29;
  v73 = v29;
  sub_19A331B84(v34, v29, type metadata accessor for GenerationState);
  sub_19A4BABB8(v0 + 16);
  v36 = (v26 + v27[10]);
  v55 = v36[1];
  v56 = *v36;
  v57 = *(v31 + 104);
  v58 = *(v26 + v27[15]);
  v37 = sub_19A4CB924();
  v38 = v26 + v27[8];
  v39 = *(v38 + 40);
  v40 = *(v38 + 48);
  sub_19A33546C(v30, v77, &qword_1EAF9FDC8, &qword_19A577310);
  v54 = *(v26 + v27[6]);
  v41 = type metadata accessor for GenerativePlayground.PreviewGenerationSession(0);
  sub_19A331B84(v35, v69 + v41[7], type metadata accessor for GenerationState);
  *v69 = v72;
  *(v69 + 8) = v53;
  *(v69 + 16) = v70;
  *(v69 + 24) = v71;
  v42 = (v69 + v41[6]);
  *v42 = v39;
  v42[1] = v40;
  v43 = type metadata accessor for StatefulCanceller();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v0 + 80) = v43;
  *(v0 + 88) = &off_1F0DAF608;
  *(v0 + 56) = v44;

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
  v46 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD8, &unk_19A577320);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v46 + 56) = v47;
  *(v46 + 64) = 0;
  sub_19A2EA460((v0 + 56), v46 + 16);
  v48 = (v69 + v41[8]);
  v48[3] = v45;
  v48[4] = &off_1F0DAF5F0;
  *v48 = v46;

  sub_19A302D80(v0 + 16, (v0 + 96));
  v49 = swift_allocObject();
  *(v49 + 76) = 0;
  *(v49 + 80) = 1;
  *(v49 + 16) = v53;
  *(v49 + 24) = v70;
  *(v49 + 32) = v71;

  *(v49 + 40) = vdupq_n_s64(0x140uLL);
  *(v49 + 56) = 0;
  *(v49 + 72) = 0;
  *(v49 + 64) = 1;
  v50 = swift_task_alloc();
  v50[2] = v37;
  v50[3] = v56;
  v50[4] = v55;
  v50[5] = v46;
  v50[6] = v72;
  v50[7] = v54;
  v50[8] = v73;
  v50[9] = v62;
  v50[10] = v60;
  v50[11] = v33;
  v50[12] = v0 + 96;
  v50[13] = v49;
  v50[14] = v58;
  v50[15] = v57;
  v50[16] = v77;
  v50[17] = v59;
  type metadata accessor for GenerativePlayground.PreviewGenerationEvent(0);
  (*(v63 + 104))(v75, *MEMORY[0x1E69E8650], v64);
  sub_19A57320C();

  sub_19A2F3FA0(v0 + 16, &qword_1EAF9FDE0, &unk_19A57B770);
  sub_19A2F3FA0(v30, &qword_1EAF9FDC8, &qword_19A577310);
  (*(v65 + 8))(v68, v67);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  sub_19A2F3FA0(v77, &qword_1EAF9FDC8, &qword_19A577310);
  sub_19A331764(v73, type metadata accessor for GenerationState);
  sub_19A331764(v66, type metadata accessor for GenerationState);
  sub_19A331764(v26, type metadata accessor for DefinitionSession);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_19A308090(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession(0);
  v2[8] = swift_task_alloc();
  v2[9] = _s17AssignmentOptionsVMa(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A308154, 0, 0);
}

uint64_t sub_19A308154()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A308178, v1, 0);
}

uint64_t sub_19A308178()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A308224, 0, 0);
}

uint64_t sub_19A308224()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  sub_19A331B84(v3 + *(v0[7] + 36), v1, _s17AssignmentOptionsVMa);
  sub_19A331764(v3, type metadata accessor for DefinitionSession);
  GenerativePlayground.PromptAssignmentOptions.init()(v4);
  *v4 = *v1;
  v4[1] = v1[1];
  v5 = v2[6];
  v6 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  sub_19A334DE8(&v1[v5], &v4[v6[6]]);
  v4[v6[7]] = v1[v2[7]];
  v7 = &v1[v2[8]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 4);
  v11 = &v4[v6[8]];

  *v11 = v8;
  *(v11 + 1) = v9;
  *(v11 + 4) = v10;
  v4[v6[9]] = v1[v2[9]];
  v4[v6[10]] = v1[v2[10]];
  *&v4[v6[11]] = *&v1[v2[11]];
  *&v4[v6[12]] = *&v1[v2[12]];
  *&v4[v6[13]] = *&v1[v2[13]];
  *&v4[v6[14]] = *&v1[v2[14]];
  v4[v6[15]] = v1[v2[16]];
  v12 = &v1[v2[15]];
  v13 = *v12;
  v14 = v12[8];
  sub_19A331764(v1, _s17AssignmentOptionsVMa);
  v15 = &v4[v6[17]];
  *v15 = v13;
  v15[8] = v14;

  v16 = v0[1];

  return v16();
}

uint64_t GenerativePlayground.rewriteConfiguration(generationSeed:)(uint64_t a1, char a2)
{
  *(v3 + 329) = a2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v2;
  *(v3 + 352) = type metadata accessor for GenerationRecipe(0);
  *(v3 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0, &qword_19A577180);
  *(v3 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  v4 = type metadata accessor for DefinitionSession(0);
  *(v3 + 416) = v4;
  *(v3 + 424) = *(v4 - 8);
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3085FC, 0, 0);
}

uint64_t sub_19A3085FC()
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "GenerativePlayground.rewriteConfiguration", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = *(v0 + 329);

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 472) = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  if (v9)
  {
    v10 = swift_task_alloc();
    *(v0 + 496) = v10;
    *v10 = v0;
    v10[1] = sub_19A308A84;
    v11 = *(v0 + 408);

    return sub_19A308090(v11);
  }

  else
  {
    v13 = *(*(v0 + 344) + 168);
    *(v0 + 480) = v13;

    return MEMORY[0x1EEE6DFA0](sub_19A3088A8, v13, 0);
  }
}

uint64_t sub_19A3088A8()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[52];
  v4 = v0[44];
  v5 = v0[42];
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[61] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v6, v2, type metadata accessor for DefinitionSession);
  v7 = v2 + *(v3 + 88) + *(v4 + 28);
  *v7 = v5;
  *(v7 + 8) = 0;

  return MEMORY[0x1EEE6DFA0](sub_19A308984, v1, 0);
}

uint64_t sub_19A308984()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[58];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_19A308A84;
  v5 = v0[51];

  return sub_19A308090(v5);
}

uint64_t sub_19A308A84()
{

  return MEMORY[0x1EEE6DFA0](sub_19A308B80, 0, 0);
}

uint64_t sub_19A308B80()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  *(v1 + *(v2 + 36)) = 1;
  v4 = *(v2 + 24);
  *(v0 + 332) = v4;
  sub_19A33546C(v1 + v4, v3, &qword_1EAF9FD80, &unk_19A57B720);
  v5 = sub_19A57102C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_19A2F3FA0(v3, &qword_1EAF9FD80, &unk_19A57B720);
  if (v6 == 1)
  {
    v7 = *(*(v0 + 344) + 168);
    *(v0 + 504) = v7;
    v8 = sub_19A308F98;
LABEL_12:

    return MEMORY[0x1EEE6DFA0](v8, v7, 0);
  }

  v9 = *(*(v0 + 408) + *(*(v0 + 392) + 60));
  if (v9 <= 1)
  {
    v10 = sub_19A573F1C();

    if (v10)
    {
      goto LABEL_7;
    }
  }

  else if (v9 == 2)
  {
    swift_bridgeObjectRelease_n();
LABEL_7:
    v11 = 1;
    v12 = 52;
    goto LABEL_9;
  }

  v11 = 0;
  v12 = 56;
LABEL_9:
  *(v0 + 330) = v11;
  v13 = *(*(v0 + 408) + *(*(v0 + 392) + v12));
  *(v0 + 512) = v13;
  if (v13 < 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  if (v13)
  {
    v14 = *(v0 + 344);
    *(v0 + 520) = 0u;
    v7 = *(v14 + 168);
    *(v0 + 536) = v7;
    v8 = sub_19A309400;
    goto LABEL_12;
  }

  if (qword_1EAF9F208 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v15 = sub_19A5723FC();
  __swift_project_value_buffer(v15, qword_1EAFCA1E8);
  v16 = sub_19A5723DC();
  v17 = sub_19A57355C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 512);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v18;
    _os_log_impl(&dword_19A2DE000, v16, v17, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v19, 0xCu);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

  v20 = *(v0 + 472);
  sub_19A331764(*(v0 + 408), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  sub_19A2E0A60(0, 0);
  sub_19A2E0A60(&unk_19A57D978, 0);
  sub_19A30B2D8("GenerativePlayground.rewriteConfiguration", 41, 2, v20);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_19A308F98()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 464);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A309044, 0, 0);
}

uint64_t sub_19A309044()
{
  v1 = *(v0 + 332);
  v2 = *(v0 + 464);
  v3 = *(v0 + 408);
  v4 = *(v0 + 376);
  sub_19A33546C(v2 + *(*(v0 + 416) + 28), v4, &qword_1EAF9FD80, &unk_19A57B720);
  sub_19A331764(v2, type metadata accessor for DefinitionSession);
  sub_19A3315F4(v4, v3 + v1);
  v5 = *(*(v0 + 408) + *(*(v0 + 392) + 60));
  if (v5 <= 1)
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  else if (v5 == 2)
  {
    swift_bridgeObjectRelease_n();
LABEL_5:
    v7 = 1;
    v8 = 52;
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 56;
LABEL_7:
  *(v0 + 330) = v7;
  v9 = *(*(v0 + 408) + *(*(v0 + 392) + v8));
  *(v0 + 512) = v9;
  if (v9 < 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  if (v9)
  {
    v10 = *(v0 + 344);
    *(v0 + 520) = 0u;
    v11 = *(v10 + 168);
    *(v0 + 536) = v11;

    return MEMORY[0x1EEE6DFA0](sub_19A309400, v11, 0);
  }

  if (qword_1EAF9F208 != -1)
  {
    goto LABEL_19;
  }

LABEL_13:
  v12 = sub_19A5723FC();
  __swift_project_value_buffer(v12, qword_1EAFCA1E8);
  v13 = sub_19A5723DC();
  v14 = sub_19A57355C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 512);
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v15;
    _os_log_impl(&dword_19A2DE000, v13, v14, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v16, 0xCu);
    MEMORY[0x19A902C50](v16, -1, -1);
  }

  v17 = *(v0 + 472);
  sub_19A331764(*(v0 + 408), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  sub_19A2E0A60(0, 0);
  sub_19A2E0A60(&unk_19A57D978, 0);
  sub_19A30B2D8("GenerativePlayground.rewriteConfiguration", 41, 2, v17);

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_19A309400()
{
  v1 = v0[67];
  v2 = v0[58];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[68] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[69] = v4;
  *v4 = v0;
  v4[1] = sub_19A3094E0;

  return sub_19A4BA7AC();
}

uint64_t sub_19A3094E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[15] = v3;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v6 = v4[67];
  v5[70] = a2;
  v5[71] = a3;

  return MEMORY[0x1EEE6DFA0](sub_19A309600, v6, 0);
}

uint64_t sub_19A309600()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[58];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3096CC, 0, 0);
}

uint64_t sub_19A3096CC()
{
  v23 = v0;
  v1 = v0[71];
  if (v1)
  {
    v2 = v0[16];
    v0[72] = v2;
    v3 = qword_1EAF9F208;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_19A5723FC();
    v0[73] = __swift_project_value_buffer(v4, qword_1EAFCA1E8);

    v5 = sub_19A5723DC();
    v6 = sub_19A57356C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[70];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315395;
      if (v2)
      {
        v10 = 0x6C616E696769726FLL;
      }

      else
      {
        v10 = 0x722074706D6F7270;
      }

      if (v2)
      {
        v11 = 0xEF74706D6F727020;
      }

      else
      {
        v11 = 0xEE00657469727765;
      }

      v12 = sub_19A31F114(v10, v11, &v22);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2081;

      v13 = sub_19A31F114(v7, v1, &v22);

      *(v8 + 14) = v13;

      _os_log_impl(&dword_19A2DE000, v5, v6, "rewriteConfiguration assigning %s: %{private}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v9, -1, -1);
      MEMORY[0x19A902C50](v8, -1, -1);
    }

    else
    {
    }

    v21 = v0[67];

    return MEMORY[0x1EEE6DFA0](sub_19A309AF8, v21, 0);
  }

  else
  {
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v14 = sub_19A5723FC();
    __swift_project_value_buffer(v14, qword_1EAFCA1E8);
    v15 = sub_19A5723DC();
    v16 = sub_19A57355C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19A2DE000, v15, v16, "rewriteConfiguration failed in getting prompt rewrite.", v17, 2u);
      MEMORY[0x19A902C50](v17, -1, -1);
    }

    v18 = v0[59];
    sub_19A331764(v0[51], type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    sub_19A2E0A60(0, 0);
    sub_19A2E0A60(&unk_19A57D978, 0);
    sub_19A30B2D8("GenerativePlayground.rewriteConfiguration", 41, 2, v18);

    v19 = v0[1];

    return v19(0);
  }
}

uint64_t sub_19A309AF8()
{
  sub_19A331B84(v0[67] + v0[68], v0[57], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A309B80, 0, 0);
}

uint64_t sub_19A309B80()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 456) + *(*(v0 + 416) + 88);
  v3 = *(v1 + 76);

  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + v3) = MEMORY[0x1E69E7CC0];
  v5 = *(v1 + 96);

  *(v2 + v5) = v4;
  if (qword_1ED8248B0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v28 = v0;
    v6 = *(v0 + 352);
    v8 = qword_1ED82BD08;
    v7 = unk_1ED82BD10;
    v9 = qword_1ED82BD18;
    v10 = unk_1ED82BD20;
    v11 = (v2 + v6[26]);

    *v11 = v8;
    v11[1] = v7;
    v11[2] = v9;
    v11[3] = v10;
    *(v2 + v6[27]) = 0;
    *(v2 + v6[29]) = 0;
    v12 = (v2 + v6[30]);
    sub_19A331DC8(*v12, v12[1], v12[2], v12[3], v12[4]);
    *v12 = 0;
    v12[1] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = 1;
    *(v12 + 37) = 0;
    v0 = v6[25];
    v27 = v2;
    v13 = *(v2 + v0);
    v14 = *(v13 + 2);
    if (!v14)
    {
      break;
    }

    v26 = v6[25];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_19A32E550(v13);
    }

    v15 = 0;
    v16 = v13 + 72;
    while (v15 != v14)
    {
      if (v15 >= *(v13 + 2))
      {
        goto LABEL_32;
      }

      v2 = 72 * v15;
      v17 = *&v16[72 * v15];
      v18 = *(v17 + 2);
      if (v18)
      {
        v19 = 0;
        v0 = 0;
        while (v15 < *(v13 + 2))
        {
          if (v0 >= *(v17 + 2))
          {
            goto LABEL_29;
          }

          v21 = v17[v19 + 75];
          if (v21 != 2 && (v21 & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v16[72 * v15] = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v17 = sub_19A32E53C(v17);
              *&v16[72 * v15] = v17;
            }

            if (v0 >= *(v17 + 2))
            {
              goto LABEL_30;
            }

            v20 = &v17[v19];
            v20[74] = 0;
            *(v20 + 36) = 3;
            *&v16[72 * v15] = v17;
          }

          ++v0;
          v19 += 48;
          if (v18 == v0)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }

LABEL_6:
      if (++v15 == v14)
      {
        *(v27 + v26) = v13;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_25:
  v24 = *(v28 + 536);
  sub_19A4C64E0();

  return MEMORY[0x1EEE6DFA0](sub_19A309E48, v24, 0);
}

uint64_t sub_19A309E48()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[57];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A309F14, 0, 0);
}

uint64_t sub_19A309F14()
{
  v1 = *(v0 + 536);
  sub_19A2E0A50(0, 0);
  sub_19A2E0A50(&unk_19A57D978, 0);

  return MEMORY[0x1EEE6DFA0](sub_19A309FA0, v1, 0);
}

uint64_t sub_19A309FA0()
{
  sub_19A331B84(v0[67] + v0[68], v0[55], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30A028, 0, 0);
}

uint64_t sub_19A30A028()
{
  v1 = *(v0 + 520);
  v2 = (*(v0 + 440) + *(*(v0 + 416) + 88) + *(*(v0 + 352) + 20));
  sub_19A34F6F4(*v2, v2[1]);
  if (v1)
  {
    *(v0 + 616) = v1;
    v3 = *(v0 + 536);
    sub_19A331764(*(v0 + 440), type metadata accessor for DefinitionSession);

    return MEMORY[0x1EEE6DFA0](sub_19A30A6B8, v3, 0);
  }

  else
  {
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 464);
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    sub_19A331B84(*(v0 + 440), v6, type metadata accessor for DefinitionSession);
    sub_19A331B84(v7, v8, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    *(v0 + 40) = &type metadata for CurrentTaskCanceller;
    *(v0 + 48) = &off_1F0DAF620;
    type metadata accessor for GenerativePlayground.PromptAssignmentTask(0);
    v9 = swift_allocObject();
    *(v0 + 592) = v9;
    sub_19A57101C();
    sub_19A3319E4(v6, v9 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    sub_19A2EA460((v0 + 16), v9 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller);
    sub_19A3319E4(v8, v9 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__assignmentOptions, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = &unk_19A57D978;
    *(v0 + 80) = 0;

    v10 = swift_task_alloc();
    *(v0 + 600) = v10;
    *v10 = v0;
    v10[1] = sub_19A30A294;
    v11 = *(v0 + 368);

    return sub_19A3E5364(v11, (v0 + 56));
  }
}

uint64_t sub_19A30A294()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_19A30A59C;
  }

  else
  {
    v2 = sub_19A30A3A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A30A3A8()
{
  v1 = v0[67];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[46];

  (*(v4 + 56))(v5, 0, 1, v3);
  sub_19A331764(v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30A46C, v1, 0);
}

uint64_t sub_19A30A46C()
{
  v1 = v0[46];
  if ((*(v0[53] + 48))(v1, 1, v0[52]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0, &qword_19A577180);
  }

  else
  {
    v2 = v0[68];
    v3 = v0[67];
    v4 = v0[56];
    sub_19A3319E4(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A331CD0(v4, v3 + v2, type metadata accessor for DefinitionSession);
    swift_endAccess();
    sub_19A331764(v4, type metadata accessor for DefinitionSession);
  }

  return MEMORY[0x1EEE6DFA0](sub_19A30ABA4, 0, 0);
}

uint64_t sub_19A30A59C()
{
  v1 = *(v0 + 608);
  v2 = v1;
  sub_19A3E40B8(v1, v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 608);
  if (v3 == 255)
  {
    swift_willThrow();

    v6 = *(v0 + 608);
  }

  else
  {
    v5 = *(v0 + 320);
    sub_19A331E10();
    v6 = swift_allocError();
    *v7 = v5;
    *(v7 + 8) = v3;
    swift_willThrow();
  }

  *(v0 + 616) = v6;
  v8 = *(v0 + 536);
  sub_19A331764(*(v0 + 440), type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30A6B8, v8, 0);
}

uint64_t sub_19A30A6D4()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 330);
  sub_19A2E0A60(0, 0);
  sub_19A2E0A60(&unk_19A57D978, 0);

  v3 = *(v0 + 616);
  if (v2 & 1) != 0 || (v1)
  {
    v14 = *(v0 + 472);
    v15 = *(v0 + 408);
    swift_willThrow();
    sub_19A331764(v15, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    sub_19A2E0A60(0, 0);
    sub_19A2E0A60(&unk_19A57D978, 0);
    sub_19A30B2D8("GenerativePlayground.rewriteConfiguration", 41, 2, v14);

    v16 = *(v0 + 8);
LABEL_13:

    return v16(0);
  }

  v4 = v3;
  v5 = sub_19A5723DC();
  v6 = sub_19A57355C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 616);
  if (v7)
  {
    v9 = *(v0 + 528) + 1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_19A2DE000, v5, v6, "Error during rewriteConfiguration assignment attempt %ld: %@", v10, 0x16u);
    sub_19A2F3FA0(v11, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 528) + 1;
  if (v17 == *(v0 + 512))
  {
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v18 = sub_19A5723FC();
    __swift_project_value_buffer(v18, qword_1EAFCA1E8);
    v19 = sub_19A5723DC();
    v20 = sub_19A57355C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 512);
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v21;
      _os_log_impl(&dword_19A2DE000, v19, v20, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v22, 0xCu);
      MEMORY[0x19A902C50](v22, -1, -1);
    }

    v23 = *(v0 + 472);
    sub_19A331764(*(v0 + 408), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    sub_19A2E0A60(0, 0);
    sub_19A2E0A60(&unk_19A57D978, 0);
    sub_19A30B2D8("GenerativePlayground.rewriteConfiguration", 41, 2, v23);

    v16 = *(v0 + 8);
    goto LABEL_13;
  }

  *(v0 + 528) = v17;
  *(v0 + 520) = 0;
  v25 = *(*(v0 + 344) + 168);
  *(v0 + 536) = v25;

  return MEMORY[0x1EEE6DFA0](sub_19A309400, v25, 0);
}

uint64_t sub_19A30ABA4()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 330);
  sub_19A2E0A60(0, 0);
  sub_19A2E0A60(&unk_19A57D978, 0);
  if (v2 & 1) != 0 || (v1)
  {

    v4 = *(v0 + 472);
    sub_19A331764(*(v0 + 408), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    sub_19A2E0A60(0, 0);
    sub_19A2E0A60(&unk_19A57D978, 0);
    sub_19A30B2D8("GenerativePlayground.rewriteConfiguration", 41, 2, v4);

    v5 = *(v0 + 8);

    return v5(1);
  }

  else
  {
    v3 = *(v0 + 536);

    return MEMORY[0x1EEE6DFA0](sub_19A30AD88, v3, 0);
  }
}

uint64_t sub_19A30AD88()
{
  sub_19A331B84(v0[67] + v0[68], v0[54], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30AE10, 0, 0);
}

uint64_t sub_19A30AE10()
{
  v36 = v0;
  v1 = v0[44];
  v2 = v0[45];
  sub_19A331B84(v0[54] + *(v0[52] + 88), v2, type metadata accessor for GenerationRecipe);
  v3 = (v2 + *(v1 + 104));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  sub_19A331764(v2, type metadata accessor for GenerationRecipe);
  v0[11] = v5;
  v0[12] = v4;
  v0[13] = v6;
  v0[14] = v7;
  PersonIndications.spans.getter();
  v9 = v8;

  v10 = *(v9 + 16);

  if (!v10)
  {
    sub_19A331764(v0[54], type metadata accessor for DefinitionSession);

LABEL_12:
    v29 = v0[59];
    sub_19A331764(v0[51], type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    sub_19A2E0A60(0, 0);
    sub_19A2E0A60(&unk_19A57D978, 0);
    sub_19A30B2D8("GenerativePlayground.rewriteConfiguration", 41, 2, v29);

    v30 = v0[1];

    return v30(v10 == 0);
  }

  v11 = sub_19A5723DC();
  v12 = sub_19A57356C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[71];
  if (v13)
  {
    v15 = v0[70];
    v16 = v0[64];
    v34 = v0[54];
    v17 = v0[66] + 1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136381187;
    v20 = sub_19A31F114(v15, v14, &v35);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v17;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v16;
    _os_log_impl(&dword_19A2DE000, v11, v12, "Prompt rewrite '%{private}s' contains people hallucinations after full assignment, trying with another one. Attempt %ld/%ld", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x19A902C50](v19, -1, -1);
    MEMORY[0x19A902C50](v18, -1, -1);

    v21 = v34;
  }

  else
  {
    v22 = v0[54];

    v21 = v22;
  }

  sub_19A331764(v21, type metadata accessor for DefinitionSession);
  v23 = v0[66] + 1;
  if (v23 == v0[64])
  {
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v24 = sub_19A5723FC();
    __swift_project_value_buffer(v24, qword_1EAFCA1E8);
    v25 = sub_19A5723DC();
    v26 = sub_19A57355C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[64];
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = v27;
      _os_log_impl(&dword_19A2DE000, v25, v26, "rewriteConfiguration exhausted all %ld attempts without finding suitable rewrite.", v28, 0xCu);
      MEMORY[0x19A902C50](v28, -1, -1);
    }

    goto LABEL_12;
  }

  v32 = v0[76];
  v0[66] = v23;
  v0[65] = v32;
  v33 = *(v0[43] + 168);
  v0[67] = v33;

  return MEMORY[0x1EEE6DFA0](sub_19A309400, v33, 0);
}

uint64_t sub_19A30B2D8(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v6 = sub_19A57236C();
  __swift_project_value_buffer(v6, qword_1ED82BD30);
  v7 = sub_19A57234C();
  v8 = sub_19A57231C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v12 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = v12;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v24;
LABEL_11:
      v14 = sub_19A57237C();
      v15 = *(v14 - 8);
      MEMORY[0x1EEE9AC00](v14);
      v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v18 = (*(v15 + 88))(v17, v14);
      if (MEMORY[0x1E69E93E0] && v18 == *MEMORY[0x1E69E93E0])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v15 + 8))(v17, v14);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v7, v23, v21, a1, v19, v20, 2u);
      MEMORY[0x19A902C50](v20, -1, -1);
LABEL_16:

      return (*(v9 + 8))(v11, v8);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

int64x2_t sub_19A30B5C0()
{
  result = vdupq_n_s64(0x200uLL);
  xmmword_1EAF9FD70 = result;
  return result;
}

void GenerativePlayground.defaultImageDimensions.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  if (*(v2 + 16))
  {
    *a1 = *(v2 + 32);
  }

  else
  {
    __break(1u);
  }
}

uint64_t GenerativePlayground.generationSeed.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  sub_19A4B3BEC(0x69746172656E6567, 0xEE00646565536E6FLL, 0xD000000000000016, 0x800000019A596130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF0, &qword_19A577358);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 256;
  *(v6 + 32) = 0;

  v7 = dispatch_semaphore_create(0);
  v8 = sub_19A5731CC();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = &unk_19A577350;
  v9[6] = v1;
  v9[7] = v6;
  v10 = v7;

  sub_19A307070(0, 0, v4, &unk_19A5818C0, v9);

  result = sub_19A57366C();
  if (*(v6 + 25))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v6 + 16);

    return v12;
  }

  return result;
}

void GenerativePlayground.generationSeed.setter(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v8 = sub_19A5723FC();
  __swift_project_value_buffer(v8, qword_1ED82BCF0);
  sub_19A4B3BEC(0x69746172656E6567, 0xEE00646565536E6FLL, 0xD000000000000017, 0x800000019A596150);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0, &qword_19A577110);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;

  v11 = dispatch_semaphore_create(0);
  v12 = sub_19A5731CC();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = &unk_19A577378;
  v13[6] = v9;
  v13[7] = v10;
  v14 = v11;

  sub_19A307070(0, 0, v7, &unk_19A577380, v13);

  sub_19A57366C();
  if (*(v10 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A30BA84(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for DefinitionSession(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30BB18, 0, 0);
}

uint64_t sub_19A30BB18()
{
  v1 = *(*(v0 + 48) + 168);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A30BB3C, v1, 0);
}

uint64_t sub_19A30BB3C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30BBE4, 0, 0);
}

uint64_t sub_19A30BBE4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[7] + 88);
  v4 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  *v2 = v5;
  *(v2 + 8) = v6;

  v7 = v0[1];

  return v7();
}

uint64_t GenerativePlayground.assignedGenerationSeed.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30BD2C, 0, 0);
}

uint64_t sub_19A30BD2C()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A30BD50, v1, 0);
}

uint64_t sub_19A30BD50()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30BDF8, 0, 0);
}

uint64_t sub_19A30BDF8()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v2);
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_19A30BEA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = type metadata accessor for DefinitionSession(0);
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30BF40, 0, 0);
}

uint64_t sub_19A30BF40()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A30BF64, v1, 0);
}

uint64_t sub_19A30BF64()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 112);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 104) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v6, v1, type metadata accessor for DefinitionSession);
  v7 = *(v4 + 88);
  v8 = v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v7;
  *v8 = v5;
  *(v8 + 8) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_19A30C044, v2, 0);
}

uint64_t sub_19A30C044()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t GenerativePlayground.assign(generationSeed:)(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for DefinitionSession(0);
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30C1A4, 0, 0);
}

uint64_t sub_19A30C1A4()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A30C1C8, v1, 0);
}

uint64_t sub_19A30C1C8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  v5 = *(v0 + 64);
  v6 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 104) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v2 + v6, v1, type metadata accessor for DefinitionSession);
  v7 = *(v3 + 88);
  v8 = v1 + *(type metadata accessor for GenerationRecipe(0) + 28) + v7;
  *v8 = v5;
  *(v8 + 8) = v4 & 1;

  return MEMORY[0x1EEE6DFA0](sub_19A3355BC, v2, 0);
}

void (*GenerativePlayground.generationSeed.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = GenerativePlayground.generationSeed.getter();
  *(a1 + 8) = v3 & 1;
  return sub_19A30C2FC;
}

uint64_t GenerativePlayground.setImageVariations(repeatedGenerationSeed:generationSeeds:scribbleStrengths:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 128) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 96) = type metadata accessor for DefinitionSession(0);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30C3C8, 0, 0);
}

uint64_t sub_19A30C3C8()
{
  v1 = *(*(v0 + 88) + 168);
  *(v0 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A30C3EC, v1, 0);
}

uint64_t sub_19A30C3EC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[15] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30C498, 0, 0);
}

uint64_t sub_19A30C498()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 128);
  v7 = *(v0 + 64);
  type metadata accessor for ImageVariations();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6 & 1;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;
  v9 = *(v3 + 24);

  *(v2 + v9) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A30C574, v1, 0);
}

uint64_t sub_19A30C574()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t GenerativePlayground.GenerationOptions.scribbleStrength.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativePlayground.GenerationOptions.lcmScale.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativePlayground.GenerationOptions.engineeredPromptLanguageAnalysisParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
}

uint64_t GenerativePlayground.GenerationOptions.engineeredPromptLanguageAnalysisParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

void GenerativePlayground.GenerationOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t GenerativePlayground.generatedImages(options:eventsHandler:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  v6 = sub_19A57102C();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = a1[2];
  *(v4 + 60) = *(a1 + 44);

  return MEMORY[0x1EEE6DFA0](sub_19A30C91C, 0, 0);
}

uint64_t sub_19A30C91C(uint64_t a1)
{
  sub_19A57101C();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_19A30C9C4;
  v3 = *(v1 + 120);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return GenerativePlayground.generatedImages(options:generationID:eventsHandler:)((v1 + 16), v3, v5, v4);
}

uint64_t sub_19A30C9C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_19A30CB70;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_19A30CAEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A30CAEC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];
  v2 = v0[18];

  return v1(v2);
}

uint64_t sub_19A30CB70()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t GenerativePlayground.generatedImages(options:generationID:eventsHandler:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 352) = a4;
  *(v5 + 360) = v4;
  *(v5 + 336) = a2;
  *(v5 + 344) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  *(v5 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = type metadata accessor for GenerationState(0);
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = type metadata accessor for DefinitionSession(0);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  v7 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  *(v5 + 48) = a1[2];
  *(v5 + 60) = *(a1 + 44);

  return MEMORY[0x1EEE6DFA0](sub_19A30CD50, 0, 0);
}

uint64_t sub_19A30CD50()
{
  v1 = *(*(v0 + 360) + 168);
  *(v0 + 424) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A30CD74, v1, 0);
}

uint64_t sub_19A30CD74()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A30CE1C, 0, 0);
}

uint64_t sub_19A30CE1C(uint64_t a1)
{
  v3 = *(v1 + 408);
  v2 = *(v1 + 416);
  v4 = *(v1 + 392);
  v48 = *(v1 + 400);
  v6 = *(v1 + 376);
  v5 = *(v1 + 384);
  v7 = *(v1 + 336);
  sub_19A4BABB8(v1 + 264);
  sub_19A302D80(v1 + 264, (v1 + 224));
  sub_19A2F3FA0(v1 + 264, &qword_1EAF9FDE0, &unk_19A57B770);
  sub_19A331B84(v2, v3, type metadata accessor for DefinitionSession);
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v47 = v6;
  v10(v6, v7, v8);
  v11 = *(v9 + 56);
  v11(v6, 0, 1, v8);
  v12 = v5[5];
  v11(v4 + v12, 1, 1, v8);
  v10(v4, v3, v8);
  sub_19A3315F4(v47, v4 + v12);
  v13 = (v3 + *(v48 + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = (v4 + v5[6]);
  *v16 = v14;
  v16[1] = v15;
  sub_19A331B84(v3 + *(v48 + 88), v4 + v5[7], type metadata accessor for GenerationRecipe);

  sub_19A331764(v3, type metadata accessor for DefinitionSession);
  v18 = *(v1 + 56);
  if (v18 == 1)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    *(v1 + 456) = 1;
    *(v1 + 464) = 1;
    v26 = 1;
    v27 = 1;
    v28 = 1;
  }

  else
  {
    v24 = *(v1 + 16);
    *(v1 + 76) = *(v1 + 17);
    *(v1 + 79) = *(v1 + 20);
    v28 = *(v1 + 24);
    v27 = *(v1 + 32);
    v23 = *(v1 + 33);
    v17 = *(v1 + 34);
    v22 = *(v1 + 36);
    v26 = *(v1 + 40);
    *(v1 + 90) = *(v1 + 41);
    *(v1 + 92) = *(v1 + 43);
    v21 = *(v1 + 44);
    v25 = *(v1 + 48);
    v29 = *(v1 + 49);
    *(v1 + 86) = *(v1 + 52);
    *(v1 + 83) = v29;
    v20 = *(v1 + 64);
    v19 = *(v1 + 72);
    *(v1 + 456) = v26;
    *(v1 + 464) = v25;
  }

  v30 = *(v1 + 416);
  v31 = *(v1 + 400);
  *(v1 + 96) = v24;
  *(v1 + 97) = *(v1 + 76);
  *(v1 + 100) = *(v1 + 79);
  *(v1 + 104) = v28;
  *(v1 + 112) = v27;
  *(v1 + 113) = v23;
  *(v1 + 114) = v17;
  *(v1 + 116) = v22;
  *(v1 + 120) = v26;
  *(v1 + 121) = *(v1 + 90);
  *(v1 + 123) = *(v1 + 92);
  *(v1 + 124) = v21;
  *(v1 + 128) = v25;
  *(v1 + 132) = *(v1 + 86);
  *(v1 + 129) = *(v1 + 83);
  *(v1 + 136) = v18;
  *(v1 + 144) = v20;
  *(v1 + 152) = v19;
  v32 = v30 + *(v31 + 36);
  v33 = *(v32 + *(_s17AssignmentOptionsVMa(0) + 32));
  v34 = *(v33 + 16);
  v35 = sub_19A57112C();
  v36 = *(v35 - 8);
  if (v34)
  {
    (*(*(v35 - 8) + 16))(*(v1 + 368), v33 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)), v35);
    v37 = 0;
    v30 = *(v1 + 416);
  }

  else
  {
    v37 = 1;
  }

  v38 = *(v1 + 392);
  v40 = *(v1 + 360);
  v39 = *(v1 + 368);
  v42 = *(v1 + 344);
  v41 = *(v1 + 352);
  (*(v36 + 56))(v39, v37, 1, v35);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
  v44 = swift_task_alloc();
  *(v1 + 432) = v44;
  v44[2] = v1 + 96;
  v44[3] = v30;
  v44[4] = v38;
  v44[5] = v1 + 224;
  v44[6] = v40;
  v44[7] = v39;
  v44[8] = v42;
  v44[9] = v41;
  sub_19A33546C(v1 + 16, v1 + 160, &qword_1EAF9FE00, &qword_19A5773C8);
  v45 = swift_task_alloc();
  *(v1 + 440) = v45;
  *v45 = v1;
  v45[1] = sub_19A30D2B8;

  return MEMORY[0x1EEE6DD58](v1 + 328, v43, v43, 0, 0, &unk_19A5773C0, v44, v43);
}

uint64_t sub_19A30D2B8()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_19A30D4E0;
  }

  else
  {
    sub_19A3320F4(v2 + 96);

    v3 = sub_19A30D3E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A30D3E0()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[41];
  sub_19A2F3FA0(v0[46], &qword_1EAF9FDC8, &qword_19A577310);
  sub_19A331764(v2, type metadata accessor for GenerationState);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_19A30D4E0()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[46];
  sub_19A3320F4((v0 + 12));

  sub_19A2F3FA0(v3, &qword_1EAF9FDC8, &qword_19A577310);
  sub_19A331764(v2, type metadata accessor for GenerationState);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  sub_19A331764(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A30D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = v11;
  v8[29] = v12;
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[21] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for GenerationState(0);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30D72C, 0, 0);
}

uint64_t sub_19A30D72C()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v39 = *(v0 + 264);
  v34 = *(v0 + 256);
  v35 = *(v0 + 248);
  v3 = *(v0 + 208);
  v33 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v44 = *(v6 + 48);
  v45 = *(v6 + 40);
  v43 = *(v6 + 56);
  sub_19A334DB0(v6, v0 + 16);

  v46 = *(v6 + 8);
  v42 = *v6;
  v8 = type metadata accessor for DefinitionSession(0);
  v9 = (v7 + *(v8 + 20));
  v10 = v9[1];
  v37 = *v9;
  v11 = v9[2];
  sub_19A331B84(v5, v1, type metadata accessor for GenerationState);
  sub_19A2F3EF0(v4, v0 + 88);
  v12 = *(v7 + *(v8 + 60));
  v13 = *(v3 + 104);
  v38 = v10;

  v36 = v12;
  v41 = v13;

  v14 = sub_19A4CB924();
  sub_19A33546C(v33, v34, &qword_1EAF9FDC8, &qword_19A577310);
  *(v0 + 152) = &type metadata for CurrentTaskCanceller;
  *(v0 + 160) = &off_1F0DAF620;
  type metadata accessor for GenerativePlayground.GenerationTask(0);
  v15 = swift_allocObject();
  *(v0 + 296) = v15;
  sub_19A331B84(v1, v2, type metadata accessor for GenerationState);
  v16 = *(v39 + 28);
  *(v2 + *(type metadata accessor for GenerationRecipe(0) + 20) + v16 + 40) = v46;
  v17 = *(v39 + 20);
  sub_19A33546C(v2 + v17, v35, &qword_1EAF9FD80, &unk_19A57B720);
  v18 = sub_19A57102C();
  v19 = *(v18 - 8);
  LODWORD(v13) = (*(v19 + 48))(v35, 1, v18);
  v40 = v14;

  sub_19A2F3FA0(v35, &qword_1EAF9FD80, &unk_19A57B720);
  if (v13 == 1)
  {
    v20 = *(v0 + 240);
    sub_19A57101C();
    (*(v19 + 56))(v20, 0, 1, v18);
    sub_19A3315F4(v20, v2 + v17);
  }

  v21 = *(v0 + 280);
  v22 = *(v0 + 288);
  v23 = *(v0 + 256);
  sub_19A331B84(v21, v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
  v24 = (v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client);
  *v24 = v37;
  v24[1] = v38;
  v24[2] = v11;
  sub_19A331764(v22, type metadata accessor for GenerationState);
  *(v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService) = v36;
  v25 = v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
  *v25 = v45;
  *(v25 + 8) = v44;
  *(v25 + 16) = v43;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  *(v25 + 41) = *(v0 + 76);
  *(v25 + 44) = *(v0 + 79);
  *(v25 + 48) = v46;
  *(v25 + 56) = v42;
  *(v25 + 57) = *(v0 + 83);
  *(v25 + 59) = *(v0 + 85);
  *(v25 + 60) = 0;
  *(v25 + 64) = 1;
  sub_19A2EA460((v0 + 128), v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
  v26 = v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
  v27 = *(v0 + 104);
  *v26 = *(v0 + 88);
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v0 + 120);
  *(v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession) = v41;
  *(v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker) = v40;
  sub_19A3351B8(v23, v15 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);
  sub_19A331764(v21, type metadata accessor for GenerationState);
  v28 = swift_task_alloc();
  *(v0 + 304) = v28;
  *v28 = v0;
  v28[1] = sub_19A30DB8C;
  v29 = *(v0 + 272);
  v30 = *(v0 + 224);
  v31 = *(v0 + 232);

  return sub_19A48B33C(v29, v30, v31);
}

uint64_t sub_19A30DB8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_19A30DD90;
  }

  else
  {
    v6 = *(v4 + 272);
    *(v4 + 320) = a1;
    sub_19A331764(v6, type metadata accessor for GenerationState);
    v5 = sub_19A30DCCC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A30DCCC()
{
  v1 = v0[40];
  v2 = v0[21];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A30DD90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerativePlayground.ImageGenerationSession.eventStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession_eventStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE08, &qword_19A5773D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenerativePlayground.ImageGenerationSession.prompt.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession_prompt);

  return v1;
}

uint64_t GenerativePlayground.ImageGenerationSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__generationID;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenerativePlayground.ImageGenerationSession.isCancelled.getter()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v12 = sub_19A5741FC();
    v13 = v6;
    MEMORY[0x19A900A50](32, 0xE100000000000000);
    sub_19A57102C();
    sub_19A335220(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v7 = sub_19A573EDC();
    MEMORY[0x19A900A50](v7);

    v8 = sub_19A31F114(v12, v13, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%s checking cancellation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller), v9);
  return (*(v10 + 8))(v9, v10) & 1;
}

Swift::Void __swiftcall GenerativePlayground.ImageGenerationSession.cancel()()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v11 = sub_19A5741FC();
    v12 = v6;
    MEMORY[0x19A900A50](32, 0xE100000000000000);
    sub_19A57102C();
    sub_19A335220(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v7 = sub_19A573EDC();
    MEMORY[0x19A900A50](v7);

    v8 = sub_19A31F114(v11, v12, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v2, v3, "cancelling %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller), v9);
  (*(v10 + 16))(v9, v10);
}

uint64_t GenerativePlayground.ImageGenerationSession.description.getter()
{
  v2 = sub_19A5741FC();
  MEMORY[0x19A900A50](32, 0xE100000000000000);
  sub_19A57102C();
  sub_19A335220(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return v2;
}

uint64_t sub_19A30E528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  v72 = a7;
  v73 = a8;
  v59 = a6;
  v66 = a4;
  v67 = a5;
  v64 = a2;
  v65 = a3;
  v63 = a1;
  v74 = a13;
  v71 = a11;
  v58 = a12;
  v68 = a9;
  v69 = HIDWORD(a9);
  v70 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v61 = *(v14 - 8);
  v60 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v56 = &v52 - v15;
  v17 = sub_19A57102C();
  v54 = v17;
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - v22;
  v53 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v52 - v25;
  v62 = &v52 - v25;
  v27 = sub_19A5731CC();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = *(v20 + 16);
  v29 = v23;
  v30 = v19;
  v57 = v19;
  v28(v29, a1, v19);
  v31 = v75;
  (*(v75 + 16))(&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v17);
  sub_19A33546C(v58, v16, &qword_1EAF9FDC8, &qword_19A577310);
  v32 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v33 = (v21 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 87) & 0xFFFFFFFFFFFFFFF8;
  v36 = (*(v31 + 80) + v35 + 8) & ~*(v31 + 80);
  v37 = (v18 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v37 + 31) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v61 + 80) + v58 + 8) & ~*(v61 + 80);
  v61 = (v60 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (*(v20 + 32))(v39 + v32, v53, v30);
  v40 = v65;
  *(v39 + v33) = v64;
  *(v39 + v34) = v40;
  v41 = v39 + v52;
  v43 = v66;
  v42 = v67;
  v44 = *(v66 + 48);
  *(v41 + 32) = *(v66 + 32);
  *(v41 + 48) = v44;
  *(v41 + 64) = *(v43 + 64);
  v45 = *(v43 + 16);
  *v41 = *v43;
  *(v41 + 16) = v45;
  *(v39 + v35) = v42;
  (*(v75 + 32))(v39 + v36, v55, v54);
  v46 = v39 + v37;
  v47 = v73;
  *v46 = v72;
  *(v46 + 8) = v47;
  v48 = v69;
  *(v46 + 16) = v68;
  *(v46 + 20) = v48;
  v49 = v71;
  *(v39 + v59) = v70;
  *(v39 + v58) = v49;
  sub_19A3351B8(v56, v39 + v38, &qword_1EAF9FDC8, &qword_19A577310);
  *(v39 + v61) = v74;

  sub_19A334C34(v43, v76);

  v50 = v42;
  sub_19A307070(0, 0, v62, &unk_19A578CD0, v39);

  sub_19A5731DC();

  sub_19A3EB40C();
}

uint64_t sub_19A30EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v19;
  *(v8 + 320) = v20;
  *(v8 + 296) = v18;
  *(v8 + 280) = v17;
  *(v8 + 264) = v16;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a5;
  *(v8 + 240) = a6;
  *(v8 + 224) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0148, &qword_19A578CB0);
  *(v8 + 328) = swift_task_alloc();
  v9 = sub_19A57102C();
  *(v8 + 336) = v9;
  *(v8 + 344) = *(v9 - 8);
  *(v8 + 352) = swift_task_alloc();
  v10 = type metadata accessor for GeneratedImage(0);
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = type metadata accessor for ImageProvenance(0);
  *(v8 + 408) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
  *(v8 + 416) = v11;
  v12 = *(v11 - 8);
  *(v8 + 424) = v12;
  *(v8 + 432) = *(v12 + 64);
  *(v8 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = type metadata accessor for GenerationState(0);
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = type metadata accessor for GenerativePlayground.ImageGenerationEvent(0);
  *(v8 + 552) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0150, &qword_19A578CB8);
  *(v8 + 560) = v13;
  *(v8 + 568) = *(v13 - 8);
  *(v8 + 576) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A30EE98, 0, 0);
}

uint64_t sub_19A30EE98()
{
  v116 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  swift_storeEnumTagMultiPayload();
  sub_19A5731EC();
  v4 = *(v2 + 8);
  *(v0 + 584) = v4;
  *(v0 + 592) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  sub_19A432438();
  v5 = *(v0 + 240);
  if (v5 >> 62)
  {
    v6 = sub_19A573B4C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 600) = v6;
  v7 = *(v0 + 576);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  v10 = *(v0 + 416);
  *v9 = 0;
  *(v9 + 8) = v6;
  *(v9 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  sub_19A5731EC();
  v4(v7, v8);
  if (v5 >> 62)
  {
    v14 = sub_19A573B4C();
    *(v0 + 608) = v14;
    if (v14)
    {
LABEL_5:
      v12 = *(v0 + 240);
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x19A901520](0);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v13 = *(v12 + 32);
      }

      *(v0 + 616) = v13;
      *(v0 + 624) = 1;
      sub_19A432438();
      *(v0 + 632) = 0;
      v15 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage;
      *(v0 + 640) = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage;
      v16 = v13 + v15;
      v17 = *(v13 + v15);
      *(v0 + 648) = v17;
      if (*(v13 + v15 + 8) == 2)
      {
        if (*(*(v0 + 248) + 56))
        {
          v18 = *(v0 + 368);
          v19 = *(v0 + 256);
          v20 = type metadata accessor for GenerativePlayground.GenerationTask(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF00, &unk_19A57BCB0);
          v21 = *(v18 + 80);
          *(v0 + 84) = v21;
          v22 = (v21 + 32) & ~v21;
          v23 = swift_allocObject();
          *(v0 + 656) = v23;
          *(v23 + 16) = xmmword_19A576E10;
          sub_19A331B84(v16, v23 + v22, type metadata accessor for GeneratedImage);
          v24 = v17;
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
          v26 = swift_task_alloc();
          *(v0 + 664) = v26;
          v26[2] = v23;
          v26[3] = v20;
          v26[4] = v19;
          v27 = swift_task_alloc();
          *(v0 + 672) = v27;
          *v27 = v0;
          v27[1] = sub_19A30FD4C;
          v118 = v25;

          return MEMORY[0x1EEE6DBF8](v0 + 216);
        }

        else
        {
          v52 = *(v0 + 536);
          v110 = *(v0 + 512);
          v53 = *(v0 + 496);
          v101 = *(v0 + 528);
          v102 = *(v0 + 488);
          v103 = *(v0 + 520);
          v104 = *(v0 + 480);
          v112 = *(v0 + 472);
          v54 = *(v0 + 336);
          v55 = *(v0 + 344);
          v100 = *(v0 + 312);
          v56 = *(v0 + 264);
          v105 = *(v0 + 232);
          v108 = *(v0 + 248);
          sub_19A331B84(v13 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generationState, v52, type metadata accessor for GenerationState);
          v57 = *(v53 + 20);
          v58 = v53;
          v99 = v53;
          v59 = v17;
          sub_19A2F3FA0(v52 + v57, &qword_1EAF9FD80, &unk_19A57B720);
          v106 = v54;
          (*(v55 + 16))(v52 + v57, v56, v54);
          v97 = *(v55 + 56);
          v97(v52 + v57, 0, 1, v54);
          v60 = v59;
          Width = CVPixelBufferGetWidth(v60);
          Height = CVPixelBufferGetHeight(v60);
          LODWORD(v54) = CVPixelBufferGetPixelFormatType(v60);

          type metadata accessor for ResolvedImage.HiddenBufferData();
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_19A5770A0;
          v63 = v52 + *(v58 + 28);
          v64 = type metadata accessor for GenerationRecipe(0);
          v65 = v63 + v64[22];
          sub_19A331C90(*v65, *(v65 + 8), *(v65 + 16), *(v65 + 24));
          *v65 = Width;
          *(v65 + 8) = Height;
          *(v65 + 16) = v54;
          *(v65 + 24) = v17;
          *(v65 + 32) = v62;
          v66 = v63 + v64[12];
          *v66 = 0;
          *(v66 + 4) = 0;
          sub_19A331B84(v52, v101, type metadata accessor for GenerationState);
          sub_19A33546C(v100, v102, &qword_1EAF9FDC8, &qword_19A577310);
          sub_19A331B84(v101, v103, type metadata accessor for GenerationState);
          sub_19A33546C(v102, v104, &qword_1EAF9FDC8, &qword_19A577310);
          *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
          *(v0 + 192) = &off_1F0DAF5F0;
          *(v0 + 160) = v105;
          type metadata accessor for GenerativePlayground.GenerationTask(0);
          v67 = swift_allocObject();
          *(v0 + 680) = v67;
          sub_19A331B84(v103, v110, type metadata accessor for GenerationState);
          *(v110 + v64[5] + *(v99 + 28) + 40) = *(v108 + 48);
          v68 = *(v99 + 20);
          sub_19A33546C(v110 + v68, v112, &qword_1EAF9FD80, &unk_19A57B720);
          LODWORD(v54) = (*(v55 + 48))(v112, 1, v106);

          v69 = *(v0 + 472);
          if (v54 == 1)
          {
            v70 = *(v0 + 464);
            v71 = *(v0 + 336);
            v72 = *(v0 + 256);
            sub_19A334C34(*(v0 + 248), v0 + 16);
            v73 = v72;

            sub_19A2F3FA0(v69, &qword_1EAF9FD80, &unk_19A57B720);
            sub_19A57101C();
            v97(v70, 0, 1, v71);
            sub_19A3315F4(v70, v110 + v68);
          }

          else
          {
            v74 = *(v0 + 256);
            sub_19A334C34(*(v0 + 248), v0 + 88);
            v75 = v74;

            sub_19A2F3FA0(v69, &qword_1EAF9FD80, &unk_19A57B720);
          }

          v107 = *(v0 + 528);
          v76 = *(v0 + 520);
          v77 = *(v0 + 488);
          v113 = *(v0 + 512);
          v114 = *(v0 + 480);
          v109 = *(v0 + 296);
          v111 = *(v0 + 304);
          v79 = *(v0 + 280);
          v78 = *(v0 + 288);
          v80 = *(v0 + 272);
          v82 = *(v0 + 248);
          v81 = *(v0 + 256);
          sub_19A331B84(v113, v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
          v83 = (v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client);
          *v83 = v80;
          v83[1] = v79;
          v83[2] = v78;
          sub_19A331764(v76, type metadata accessor for GenerationState);
          sub_19A2F3FA0(v77, &qword_1EAF9FDC8, &qword_19A577310);
          sub_19A331764(v107, type metadata accessor for GenerationState);
          *(v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService) = v81;
          v84 = v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
          *v84 = *v82;
          v86 = *(v82 + 32);
          v85 = *(v82 + 48);
          v87 = *(v82 + 16);
          *(v84 + 64) = *(v82 + 64);
          *(v84 + 32) = v86;
          *(v84 + 48) = v85;
          *(v84 + 16) = v87;
          sub_19A2EA460((v0 + 160), v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
          v88 = v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
          *v88 = 0u;
          *(v88 + 16) = 0u;
          *(v88 + 32) = 0;
          *(v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession) = v109;
          *(v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker) = v111;
          sub_19A3351B8(v114, v67 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);

          sub_19A331764(v113, type metadata accessor for GenerationState);
          v89 = *(v0 + 440);
          v90 = *(v0 + 416);
          v91 = *(v0 + 424);
          (*(v91 + 16))(v89, *(v0 + 224), v90);
          v92 = (*(v91 + 80) + 16) & ~*(v91 + 80);
          v93 = swift_allocObject();
          (*(v91 + 32))(v93 + v92, v89, v90);
          *(v0 + 696) = v93;
          *(v0 + 688) = sub_19A334CC4;
          v94 = swift_task_alloc();
          *(v0 + 704) = v94;
          *v94 = v0;
          v94[1] = sub_19A31121C;
          v95 = *(v0 + 504);

          return sub_19A48B33C(v95, sub_19A334CC4, v93);
        }
      }

      sub_19A332CC8();
      v7 = swift_allocError();
      *v28 = 1;
      swift_willThrow();

      v10 = sub_19A4B1174(v7);
      *(v0 + 200) = v10;
      v29 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
      v30 = type metadata accessor for GeneratorError(0);
      v31 = swift_dynamicCast();
      v32 = *(*(v30 - 8) + 56);
      v33 = *(v0 + 328);
      if (v31)
      {
        v32(*(v0 + 328), 0, 1, v30);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v35 = *(v0 + 328);
        if (EnumCaseMultiPayload == 7)
        {
          v8 = *v35;
          if (qword_1ED824050 == -1)
          {
LABEL_19:
            v36 = sub_19A5723FC();
            __swift_project_value_buffer(v36, qword_1ED82BCF0);

            v37 = sub_19A5723DC();
            v38 = sub_19A57355C();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v115 = v40;
              *v39 = 136446210;
              v41 = MEMORY[0x19A900C10](v8, &type metadata for GeneratorError.VersionTriple);
              v43 = v42;

              v44 = sub_19A31F114(v41, v43, &v115);

              *(v39 + 4) = v44;
              _os_log_impl(&dword_19A2DE000, v37, v38, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v39, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v40);
              MEMORY[0x19A902C50](v40, -1, -1);
              MEMORY[0x19A902C50](v39, -1, -1);
            }

            else
            {
            }

            v45 = *(*(v0 + 320) + 176);
            os_unfair_lock_lock((v45 + 24));
            type metadata accessor for AppleDiffusionResourceFactory(0);
            v46 = static AppleDiffusionResourceFactory.shared(reset:)(1);

            *(v45 + 16) = v46;
            os_unfair_lock_unlock((v45 + 24));
            goto LABEL_25;
          }

LABEL_38:
          swift_once();
          goto LABEL_19;
        }

        sub_19A331764(v35, type metadata accessor for GeneratorError);
      }

      else
      {
        v32(*(v0 + 328), 1, 1, v30);
        sub_19A2F3FA0(v33, &qword_1EAFA0148, &qword_19A578CB0);
      }

LABEL_25:
      v47 = *(v0 + 584);
      v48 = *(v0 + 576);
      v49 = *(v0 + 560);
      **(v0 + 552) = v10;
      swift_storeEnumTagMultiPayload();
      v50 = v10;
      sub_19A5731EC();
      v47(v48, v49);
      sub_19A5731FC();

      goto LABEL_26;
    }
  }

  else
  {
    v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 608) = v11;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  sub_19A5731FC();
LABEL_26:

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_19A30FD4C()
{

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x1EEE6DFA0](sub_19A30FEC8, 0, 0);
}

uint64_t sub_19A30FEC8()
{
  v178 = v0;
  v1 = v0[27];
  v166 = v0 + 27;
  v168 = v0[79];
  v2 = v0[78];
  v3 = v0[75];
  v4 = v0[72];
  v170 = v0[73];
  v6 = v0[69];
  v5 = v0[70];
  sub_19A331B84(v0[77] + v0[80] + *(v0[45] + 20), v0[51], type metadata accessor for ImageProvenance);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  sub_19A5731EC();
  (v170)(v4, v5);
  if (*(v1 + 16))
  {
    v7 = v0[56];
    v8 = v0[57];
    v9 = v0[50];
    v10 = v0[51];
    v11 = v0[48];
    v12 = v0[49];
    v173 = v0[45];
    v13 = v0[42];
    v14 = v0[43];
    v15 = *(v0[46] + 80);
    sub_19A331B84(v1 + ((v15 + 32) & ~v15), v11, type metadata accessor for GeneratedImage);

    sub_19A3319E4(v11, v12, type metadata accessor for GeneratedImage);
    (*(v14 + 56))(v8, 1, 1, v13);
    v16 = *(v9 + 28);
    v17 = *(v10 + *(v9 + 24));
    v18 = *(v10 + v16);
    v19 = (v12 + *(v173 + 20));
    v20 = *v19;
    sub_19A33546C(v8, v7, &qword_1EAF9FD80, &unk_19A57B720);
    v21 = *(v14 + 48);
    v22 = v21(v7, 1, v13);
    v23 = v0[56];
    if (v22 == 1)
    {
      v24 = v0[42];
      (*(v0[43] + 16))(v0[44], &v19[*(v0[50] + 20)], v24);
      if (v21(v23, 1, v24) != 1)
      {
        sub_19A2F3FA0(v0[56], &qword_1EAF9FD80, &unk_19A57B720);
      }
    }

    else
    {
      (*(v0[43] + 32))(v0[44], v0[56], v0[42]);
    }

    v27 = *&v19[*(v0[50] + 28)];
    if (v18)
    {
      if (v27)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[26] = v27;
        sub_19A332630(v18, sub_19A32F4E4, 0, isUniquelyReferenced_nonNull_native, v0 + 26);
        if (v168)
        {
        }

        v171 = v20;
        v174 = v17;
        v32 = v0[57];

        sub_19A2F3FA0(v32, &qword_1EAF9FD80, &unk_19A57B720);
        v168 = 0;
        v27 = v0[26];
      }

      else
      {
        v171 = v20;
        v174 = v17;
        v31 = v0[57];

        sub_19A2F3FA0(v31, &qword_1EAF9FD80, &unk_19A57B720);
        v27 = v18;
      }
    }

    else
    {
      v171 = v20;
      v174 = v17;
      v30 = v0[57];

      sub_19A2F3FA0(v30, &qword_1EAF9FD80, &unk_19A57B720);
    }

    v158 = v0[81];
    v161 = v0[73];
    v33 = v0[72];
    v156 = v0[70];
    v34 = v0[69];
    v35 = v0[51];
    v36 = v0;
    v37 = v0[50];
    v38 = v36[49];
    v39 = v36[47];
    v40 = v36[44];
    v41 = v36[45];
    v42 = v36[42];
    v43 = v36[43];
    v44 = (v39 + v41[5]);
    *v44 = v171;
    (*(v43 + 32))(&v44[v37[5]], v40, v42);
    *&v44[v37[6]] = v174;
    *&v44[v37[7]] = v27;
    v45 = v37[8];
    v0 = v36;
    *&v44[v45] = 0;
    v26 = v35;
    v4 = *v38;
    LOBYTE(v45) = *(v38 + 8);
    v46 = *(v38 + v41[6]);
    v47 = (v38 + v41[8]);
    v48 = *v47;
    v49 = v47[1];
    v50 = (v38 + v41[9]);
    v51 = *v50;
    v1 = v50[1];
    v52 = v38 + v41[7];
    LOBYTE(v50) = *(v52 + 16);
    v53 = v41[10];
    v54 = *v52;
    *(v39 + v53) = 3;
    *v39 = v4;
    *(v39 + 8) = v45;
    *(v39 + v41[6]) = v46;
    v55 = v39 + v41[7];
    *v55 = v54;
    *(v55 + 16) = v50;
    v56 = (v39 + v41[8]);
    *v56 = v48;
    v56[1] = v49;
    v57 = (v39 + v41[9]);
    *v57 = v51;
    v57[1] = v1;
    *(v39 + v53) = 3;
    sub_19A331B84(v39, v34, type metadata accessor for GeneratedImage);
    swift_storeEnumTagMultiPayload();
    v58 = v4;

    sub_19A5731EC();

    v161(v33, v156);
    sub_19A331764(v39, type metadata accessor for GeneratedImage);
    sub_19A331764(v38, type metadata accessor for GeneratedImage);
  }

  else
  {
    v25 = v0[81];
    v26 = v0[51];
  }

  sub_19A331764(v26, type metadata accessor for ImageProvenance);
  v59 = v0[78];
  if (v59 == v0[76])
  {
    sub_19A5731FC();
LABEL_43:

    v124 = v0[1];

    return v124();
  }

  v60 = v0[30];
  if ((v60 & 0xC000000000000001) != 0)
  {
    v62 = MEMORY[0x19A901520](v0[78]);
    v61 = v166;
  }

  else
  {
    v61 = v166;
    if (v59 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v62 = *(v60 + 8 * v59 + 32);
  }

  v0[77] = v62;
  v63 = v59 + 1;
  v0[78] = v59 + 1;
  if (__OFADD__(v59, 1))
  {
    __break(1u);
    goto LABEL_54;
  }

  sub_19A432438();
  v0[79] = v168;
  if (v168)
  {
    v4 = v168;
    goto LABEL_31;
  }

  v64 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage;
  v0[80] = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage;
  v65 = v62 + v64;
  v66 = *(v62 + v64);
  v0[81] = v66;
  if (*(v62 + v64 + 8) != 2)
  {
    sub_19A332CC8();
    v4 = swift_allocError();
    *v78 = 1;
    swift_willThrow();
LABEL_31:

    v26 = sub_19A4B1174(v4);
    v0[25] = v26;
    v79 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    v80 = type metadata accessor for GeneratorError(0);
    v81 = swift_dynamicCast();
    v82 = *(*(v80 - 8) + 56);
    v83 = v0[41];
    if (v81)
    {
      v82(v0[41], 0, 1, v80);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v85 = v0[41];
      if (EnumCaseMultiPayload == 7)
      {
        v1 = *v85;
        if (qword_1ED824050 == -1)
        {
LABEL_34:
          v86 = sub_19A5723FC();
          __swift_project_value_buffer(v86, qword_1ED82BCF0);

          v87 = sub_19A5723DC();
          v88 = sub_19A57355C();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v177 = v90;
            *v89 = 136446210;
            v91 = MEMORY[0x19A900C10](v1, &type metadata for GeneratorError.VersionTriple);
            v93 = v92;

            v94 = sub_19A31F114(v91, v93, &v177);

            *(v89 + 4) = v94;
            _os_log_impl(&dword_19A2DE000, v87, v88, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v90);
            MEMORY[0x19A902C50](v90, -1, -1);
            MEMORY[0x19A902C50](v89, -1, -1);
          }

          else
          {
          }

          v95 = *(v0[40] + 176);
          os_unfair_lock_lock((v95 + 24));
          type metadata accessor for AppleDiffusionResourceFactory(0);
          v119 = static AppleDiffusionResourceFactory.shared(reset:)(1);

          *(v95 + 16) = v119;
          os_unfair_lock_unlock((v95 + 24));
          goto LABEL_42;
        }

LABEL_55:
        swift_once();
        goto LABEL_34;
      }

      sub_19A331764(v85, type metadata accessor for GeneratorError);
    }

    else
    {
      v82(v0[41], 1, 1, v80);
      sub_19A2F3FA0(v83, &qword_1EAFA0148, &qword_19A578CB0);
    }

LABEL_42:
    v120 = v0[73];
    v121 = v0[72];
    v122 = v0[70];
    *v0[69] = v26;
    swift_storeEnumTagMultiPayload();
    v123 = v26;
    sub_19A5731EC();
    v120(v121, v122);
    sub_19A5731FC();

    goto LABEL_43;
  }

  if (*(v0[31] + 56))
  {
    v67 = v0;
    v68 = v0[46];
    v69 = v67[32];
    v70 = type metadata accessor for GenerativePlayground.GenerationTask(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF00, &unk_19A57BCB0);
    v71 = *(v68 + 80);
    *(v67 + 21) = v71;
    v72 = (v71 + 32) & ~v71;
    v73 = swift_allocObject();
    v67[82] = v73;
    *(v73 + 16) = xmmword_19A576E10;
    sub_19A331B84(v65, v73 + v72, type metadata accessor for GeneratedImage);
    v74 = v66;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
    v76 = swift_task_alloc();
    v67[83] = v76;
    v76[2] = v73;
    v76[3] = v70;
    v76[4] = v69;
    v77 = swift_task_alloc();
    v67[84] = v77;
    *v77 = v67;
    v77[1] = sub_19A30FD4C;
    v180 = v75;

    return MEMORY[0x1EEE6DBF8](v61);
  }

  else
  {
    v172 = (v61 - 7);
    v96 = v0[67];
    v149 = v0[64];
    v97 = v0[62];
    v151 = v0[66];
    v152 = v0[61];
    v153 = v0[65];
    v154 = v0[60];
    v164 = v0[59];
    v98 = v0[42];
    v99 = v0[43];
    v150 = v0[39];
    v100 = v0[33];
    v155 = v0[29];
    v162 = v0[31];
    sub_19A331B84(v62 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generationState, v96, type metadata accessor for GenerationState);
    v175 = v0;
    v101 = *(v97 + 20);
    v102 = v66;
    sub_19A2F3FA0(v96 + v101, &qword_1EAF9FD80, &unk_19A57B720);
    v157 = v98;
    v159 = v99;
    (*(v99 + 16))(v96 + v101, v100, v98);
    v147 = *(v99 + 56);
    v147(v96 + v101, 0, 1, v98);
    v103 = v102;
    Width = CVPixelBufferGetWidth(v103);
    Height = CVPixelBufferGetHeight(v103);
    LODWORD(v99) = CVPixelBufferGetPixelFormatType(v103);

    type metadata accessor for ResolvedImage.HiddenBufferData();
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_19A5770A0;
    v106 = v99;
    v107 = v96 + *(v97 + 28);
    v108 = type metadata accessor for GenerationRecipe(0);
    v109 = v107 + v108[22];
    sub_19A331C90(*v109, *(v109 + 8), *(v109 + 16), *(v109 + 24));
    *v109 = Width;
    *(v109 + 8) = Height;
    *(v109 + 16) = v106;
    *(v109 + 24) = v66;
    *(v109 + 32) = v105;
    v110 = v107 + v108[12];
    *v110 = 0;
    *(v110 + 4) = 0;
    sub_19A331B84(v96, v151, type metadata accessor for GenerationState);
    sub_19A33546C(v150, v152, &qword_1EAF9FDC8, &qword_19A577310);
    sub_19A331B84(v151, v153, type metadata accessor for GenerationState);
    sub_19A33546C(v152, v154, &qword_1EAF9FDC8, &qword_19A577310);
    v175[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
    v175[24] = &off_1F0DAF5F0;
    v175[20] = v155;
    type metadata accessor for GenerativePlayground.GenerationTask(0);
    v111 = swift_allocObject();
    v175[85] = v111;
    sub_19A331B84(v153, v149, type metadata accessor for GenerationState);
    *(v149 + v108[5] + *(v97 + 28) + 40) = *(v162 + 48);
    v112 = *(v97 + 20);
    sub_19A33546C(v149 + v112, v164, &qword_1EAF9FD80, &unk_19A57B720);
    LODWORD(v97) = (*(v159 + 48))(v164, 1, v157);

    v113 = v175[59];
    if (v97 == 1)
    {
      v114 = v175[58];
      v115 = v175[42];
      v116 = v175;
      v117 = v175[32];
      sub_19A334C34(v175[31], (v166 - 25));
      v118 = v117;

      sub_19A2F3FA0(v113, &qword_1EAF9FD80, &unk_19A57B720);
      sub_19A57101C();
      v147(v114, 0, 1, v115);
      sub_19A3315F4(v114, v149 + v112);
    }

    else
    {
      v116 = v175;
      v125 = v175[32];
      sub_19A334C34(v175[31], (v166 - 16));
      v126 = v125;

      sub_19A2F3FA0(v113, &qword_1EAF9FD80, &unk_19A57B720);
    }

    v163 = v116[66];
    v127 = v116[65];
    v128 = v116[61];
    v176 = v116[60];
    v167 = v116[38];
    v169 = v116[64];
    v165 = v116[37];
    v130 = v116[35];
    v129 = v116[36];
    v131 = v116[34];
    v132 = v116[31];
    v160 = v116[32];
    sub_19A331B84(v169, v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
    v133 = (v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client);
    *v133 = v131;
    v133[1] = v130;
    v133[2] = v129;
    sub_19A331764(v127, type metadata accessor for GenerationState);
    sub_19A2F3FA0(v128, &qword_1EAF9FDC8, &qword_19A577310);
    sub_19A331764(v163, type metadata accessor for GenerationState);
    *(v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService) = v160;
    v134 = v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
    *v134 = *v132;
    v136 = *(v132 + 32);
    v135 = *(v132 + 48);
    v137 = *(v132 + 16);
    *(v134 + 64) = *(v132 + 64);
    *(v134 + 32) = v136;
    *(v134 + 48) = v135;
    *(v134 + 16) = v137;
    sub_19A2EA460(v172, v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
    v138 = v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
    *v138 = 0u;
    *(v138 + 16) = 0u;
    *(v138 + 32) = 0;
    *(v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession) = v165;
    *(v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker) = v167;
    sub_19A3351B8(v176, v111 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);

    sub_19A331764(v169, type metadata accessor for GenerationState);
    v139 = 0;
    v140 = 0;
    if (v63 == 1)
    {
      v141 = v116[55];
      v143 = v116[52];
      v142 = v116[53];
      (*(v142 + 16))(v141, v116[28], v143);
      v144 = (*(v142 + 80) + 16) & ~*(v142 + 80);
      v140 = swift_allocObject();
      (*(v142 + 32))(v140 + v144, v141, v143);
      v139 = sub_19A334CC4;
    }

    v116[87] = v140;
    v116[86] = v139;
    v145 = swift_task_alloc();
    v116[88] = v145;
    *v145 = v116;
    v145[1] = sub_19A31121C;
    v146 = v116[63];

    return sub_19A48B33C(v146, v139, v140);
  }
}

uint64_t sub_19A31121C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v5 = sub_19A3126A0;
  }

  else
  {
    v6 = *(v4 + 504);
    *(v4 + 720) = a1;
    sub_19A331764(v6, type metadata accessor for GenerationState);
    v5 = sub_19A31135C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A31135C()
{
  v173 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 536);

  sub_19A2E0A60(v2, v1);
  sub_19A331764(v3, type metadata accessor for GenerationState);
  v4 = *(v0 + 720);
  v5 = *(v0 + 624);
  v6 = *(v0 + 600);
  v162 = *(v0 + 712);
  v165 = *(v0 + 584);
  v7 = *(v0 + 576);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  sub_19A331B84(*(v0 + 616) + *(v0 + 640) + *(*(v0 + 360) + 20), *(v0 + 408), type metadata accessor for ImageProvenance);
  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  sub_19A5731EC();
  v165(v7, v8);
  if (v4[2])
  {
    v10 = *(v0 + 448);
    v11 = *(v0 + 456);
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);
    v14 = *(v0 + 384);
    v15 = *(v0 + 392);
    v169 = *(v0 + 360);
    v16 = *(v0 + 336);
    v17 = *(v0 + 344);
    v18 = *(*(v0 + 368) + 80);
    sub_19A331B84(v4 + ((v18 + 32) & ~v18), v14, type metadata accessor for GeneratedImage);

    sub_19A3319E4(v14, v15, type metadata accessor for GeneratedImage);
    (*(v17 + 56))(v11, 1, 1, v16);
    v19 = *(v13 + 28);
    v20 = *(v12 + *(v13 + 24));
    v21 = *(v12 + v19);
    v22 = (v15 + *(v169 + 20));
    v23 = *v22;
    sub_19A33546C(v11, v10, &qword_1EAF9FD80, &unk_19A57B720);
    v24 = *(v17 + 48);
    v25 = v24(v10, 1, v16);
    v26 = *(v0 + 448);
    if (v25 == 1)
    {
      v27 = *(v0 + 336);
      (*(*(v0 + 344) + 16))(*(v0 + 352), &v22[*(*(v0 + 400) + 20)], v27);
      if (v24(v26, 1, v27) != 1)
      {
        sub_19A2F3FA0(*(v0 + 448), &qword_1EAF9FD80, &unk_19A57B720);
      }
    }

    else
    {
      (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 448), *(v0 + 336));
    }

    v30 = *&v22[*(*(v0 + 400) + 28)];
    if (v21)
    {
      if (v30)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 208) = v30;
        sub_19A332630(v21, sub_19A32F4E4, 0, isUniquelyReferenced_nonNull_native, (v0 + 208));
        if (v162)
        {
        }

        v166 = v23;
        v170 = v20;
        v35 = *(v0 + 456);

        sub_19A2F3FA0(v35, &qword_1EAF9FD80, &unk_19A57B720);
        v162 = 0;
        v30 = *(v0 + 208);
      }

      else
      {
        v166 = v23;
        v170 = v20;
        v34 = *(v0 + 456);

        sub_19A2F3FA0(v34, &qword_1EAF9FD80, &unk_19A57B720);
        v30 = v21;
      }
    }

    else
    {
      v166 = v23;
      v170 = v20;
      v33 = *(v0 + 456);

      sub_19A2F3FA0(v33, &qword_1EAF9FD80, &unk_19A57B720);
    }

    v154 = *(v0 + 648);
    v157 = *(v0 + 584);
    v36 = *(v0 + 576);
    v152 = *(v0 + 560);
    v37 = *(v0 + 552);
    v29 = *(v0 + 408);
    v8 = *(v0 + 392);
    v38 = *(v0 + 400);
    v39 = *(v0 + 376);
    v40 = *(v0 + 352);
    v41 = *(v0 + 360);
    v42 = *(v0 + 336);
    v43 = *(v0 + 344);
    v44 = (v39 + v41[5]);
    *v44 = v166;
    (*(v43 + 32))(&v44[v38[5]], v40, v42);
    *&v44[v38[6]] = v170;
    *&v44[v38[7]] = v30;
    *&v44[v38[8]] = 0;
    v4 = *v8;
    v45 = v8[8];
    v46 = v8[v41[6]];
    v47 = &v8[v41[8]];
    v48 = *v47;
    v49 = *(v47 + 1);
    v50 = &v8[v41[9]];
    v51 = *v50;
    v52 = *(v50 + 1);
    v53 = &v8[v41[7]];
    LOBYTE(v50) = v53[16];
    v54 = v41[10];
    v55 = *v53;
    *(v39 + v54) = 3;
    *v39 = v4;
    *(v39 + 8) = v45;
    *(v39 + v41[6]) = v46;
    v56 = v39 + v41[7];
    *v56 = v55;
    *(v56 + 16) = v50;
    v57 = (v39 + v41[8]);
    *v57 = v48;
    v57[1] = v49;
    v58 = (v39 + v41[9]);
    *v58 = v51;
    v58[1] = v52;
    *(v39 + v54) = 3;
    sub_19A331B84(v39, v37, type metadata accessor for GeneratedImage);
    swift_storeEnumTagMultiPayload();
    v59 = v4;

    sub_19A5731EC();

    v157(v36, v152);
    sub_19A331764(v39, type metadata accessor for GeneratedImage);
    sub_19A331764(v8, type metadata accessor for GeneratedImage);
  }

  else
  {
    v28 = *(v0 + 648);
    v29 = *(v0 + 408);
  }

  sub_19A331764(v29, type metadata accessor for ImageProvenance);
  v60 = *(v0 + 624);
  if (v60 == *(v0 + 608))
  {
    sub_19A5731FC();
LABEL_43:

    v121 = *(v0 + 8);

    return v121();
  }

  v61 = *(v0 + 240);
  if ((v61 & 0xC000000000000001) != 0)
  {
    v62 = MEMORY[0x19A901520](*(v0 + 624));
  }

  else
  {
    if (v60 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v62 = *(v61 + 8 * v60 + 32);
  }

  *(v0 + 616) = v62;
  v63 = v60 + 1;
  *(v0 + 624) = v60 + 1;
  if (__OFADD__(v60, 1))
  {
    __break(1u);
    goto LABEL_54;
  }

  sub_19A432438();
  *(v0 + 632) = v162;
  if (v162)
  {
    v29 = v162;
    goto LABEL_31;
  }

  v64 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage;
  *(v0 + 640) = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generatedImage;
  v65 = v62 + v64;
  v66 = *(v62 + v64);
  *(v0 + 648) = v66;
  if (*(v62 + v64 + 8) != 2)
  {
    sub_19A332CC8();
    v29 = swift_allocError();
    *v77 = 1;
    swift_willThrow();
LABEL_31:

    v8 = sub_19A4B1174(v29);
    *(v0 + 200) = v8;
    v78 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    v79 = type metadata accessor for GeneratorError(0);
    v80 = swift_dynamicCast();
    v81 = *(*(v79 - 8) + 56);
    v82 = *(v0 + 328);
    if (v80)
    {
      v81(*(v0 + 328), 0, 1, v79);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v84 = *(v0 + 328);
      if (EnumCaseMultiPayload == 7)
      {
        v4 = *v84;
        if (qword_1ED824050 == -1)
        {
LABEL_34:
          v85 = sub_19A5723FC();
          __swift_project_value_buffer(v85, qword_1ED82BCF0);

          v86 = sub_19A5723DC();
          v87 = sub_19A57355C();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v172 = v89;
            *v88 = 136446210;
            v90 = MEMORY[0x19A900C10](v4, &type metadata for GeneratorError.VersionTriple);
            v92 = v91;

            v93 = sub_19A31F114(v90, v92, &v172);

            *(v88 + 4) = v93;
            _os_log_impl(&dword_19A2DE000, v86, v87, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v89);
            MEMORY[0x19A902C50](v89, -1, -1);
            MEMORY[0x19A902C50](v88, -1, -1);
          }

          else
          {
          }

          v94 = *(*(v0 + 320) + 176);
          os_unfair_lock_lock((v94 + 24));
          type metadata accessor for AppleDiffusionResourceFactory(0);
          v116 = static AppleDiffusionResourceFactory.shared(reset:)(1);

          *(v94 + 16) = v116;
          os_unfair_lock_unlock((v94 + 24));
          goto LABEL_42;
        }

LABEL_55:
        swift_once();
        goto LABEL_34;
      }

      sub_19A331764(v84, type metadata accessor for GeneratorError);
    }

    else
    {
      v81(*(v0 + 328), 1, 1, v79);
      sub_19A2F3FA0(v82, &qword_1EAFA0148, &qword_19A578CB0);
    }

LABEL_42:
    v117 = *(v0 + 584);
    v118 = *(v0 + 576);
    v119 = *(v0 + 560);
    **(v0 + 552) = v8;
    swift_storeEnumTagMultiPayload();
    v120 = v8;
    sub_19A5731EC();
    v117(v118, v119);
    sub_19A5731FC();

    goto LABEL_43;
  }

  if (*(*(v0 + 248) + 56))
  {
    v67 = *(v0 + 368);
    v68 = *(v0 + 256);
    v69 = type metadata accessor for GenerativePlayground.GenerationTask(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF00, &unk_19A57BCB0);
    v70 = *(v67 + 80);
    *(v0 + 84) = v70;
    v71 = (v70 + 32) & ~v70;
    v72 = swift_allocObject();
    *(v0 + 656) = v72;
    *(v72 + 16) = xmmword_19A576E10;
    sub_19A331B84(v65, v72 + v71, type metadata accessor for GeneratedImage);
    v73 = v66;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
    v75 = swift_task_alloc();
    *(v0 + 664) = v75;
    v75[2] = v72;
    v75[3] = v69;
    v75[4] = v68;
    v76 = swift_task_alloc();
    *(v0 + 672) = v76;
    *v76 = v0;
    v76[1] = sub_19A30FD4C;
    v175 = v74;

    return MEMORY[0x1EEE6DBF8](v0 + 216);
  }

  else
  {
    v95 = *(v0 + 536);
    v147 = *(v0 + 512);
    v96 = *(v0 + 496);
    v149 = *(v0 + 528);
    v150 = *(v0 + 488);
    v151 = *(v0 + 520);
    v153 = *(v0 + 480);
    v167 = *(v0 + 472);
    v97 = *(v0 + 336);
    v98 = *(v0 + 344);
    v148 = *(v0 + 312);
    v99 = *(v0 + 264);
    v155 = *(v0 + 232);
    v163 = *(v0 + 248);
    sub_19A331B84(v62 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground21PreviewRepresentation_generationState, v95, type metadata accessor for GenerationState);
    v100 = *(v96 + 20);
    v146 = v96;
    v101 = v66;
    sub_19A2F3FA0(v95 + v100, &qword_1EAF9FD80, &unk_19A57B720);
    v158 = v97;
    v160 = v98;
    (*(v98 + 16))(v95 + v100, v99, v97);
    v144 = *(v98 + 56);
    v144(v95 + v100, 0, 1, v97);
    v102 = v101;
    Width = CVPixelBufferGetWidth(v102);
    Height = CVPixelBufferGetHeight(v102);
    LODWORD(v97) = CVPixelBufferGetPixelFormatType(v102);

    type metadata accessor for ResolvedImage.HiddenBufferData();
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_19A5770A0;
    v105 = v95 + *(v96 + 28);
    v106 = type metadata accessor for GenerationRecipe(0);
    v107 = v105 + v106[22];
    sub_19A331C90(*v107, *(v107 + 8), *(v107 + 16), *(v107 + 24));
    *v107 = Width;
    *(v107 + 8) = Height;
    *(v107 + 16) = v97;
    *(v107 + 24) = v66;
    *(v107 + 32) = v104;
    v108 = v105 + v106[12];
    *v108 = 0;
    *(v108 + 4) = 0;
    sub_19A331B84(v95, v149, type metadata accessor for GenerationState);
    sub_19A33546C(v148, v150, &qword_1EAF9FDC8, &qword_19A577310);
    sub_19A331B84(v149, v151, type metadata accessor for GenerationState);
    sub_19A33546C(v150, v153, &qword_1EAF9FDC8, &qword_19A577310);
    *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
    *(v0 + 192) = &off_1F0DAF5F0;
    *(v0 + 160) = v155;
    type metadata accessor for GenerativePlayground.GenerationTask(0);
    v109 = swift_allocObject();
    *(v0 + 680) = v109;
    sub_19A331B84(v151, v147, type metadata accessor for GenerationState);
    *(v147 + v106[5] + *(v146 + 28) + 40) = *(v163 + 48);
    v110 = *(v146 + 20);
    sub_19A33546C(v147 + v110, v167, &qword_1EAF9FD80, &unk_19A57B720);
    LODWORD(v97) = (*(v160 + 48))(v167, 1, v158);

    v111 = *(v0 + 472);
    if (v97 == 1)
    {
      v112 = *(v0 + 464);
      v113 = *(v0 + 336);
      v114 = *(v0 + 256);
      sub_19A334C34(*(v0 + 248), v0 + 16);
      v115 = v114;

      sub_19A2F3FA0(v111, &qword_1EAF9FD80, &unk_19A57B720);
      sub_19A57101C();
      v144(v112, 0, 1, v113);
      sub_19A3315F4(v112, v147 + v110);
    }

    else
    {
      v122 = *(v0 + 256);
      sub_19A334C34(*(v0 + 248), v0 + 88);
      v123 = v122;

      sub_19A2F3FA0(v111, &qword_1EAF9FD80, &unk_19A57B720);
    }

    v159 = *(v0 + 528);
    v124 = *(v0 + 520);
    v125 = *(v0 + 488);
    v168 = *(v0 + 512);
    v171 = *(v0 + 480);
    v164 = *(v0 + 304);
    v161 = *(v0 + 296);
    v126 = *(v0 + 280);
    v127 = *(v0 + 288);
    v128 = *(v0 + 272);
    v129 = *(v0 + 248);
    v156 = *(v0 + 256);
    sub_19A331B84(v168, v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
    v130 = (v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client);
    *v130 = v128;
    v130[1] = v126;
    v130[2] = v127;
    sub_19A331764(v124, type metadata accessor for GenerationState);
    sub_19A2F3FA0(v125, &qword_1EAF9FDC8, &qword_19A577310);
    sub_19A331764(v159, type metadata accessor for GenerationState);
    *(v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService) = v156;
    v131 = v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
    *v131 = *v129;
    v133 = *(v129 + 32);
    v132 = *(v129 + 48);
    v134 = *(v129 + 16);
    *(v131 + 64) = *(v129 + 64);
    *(v131 + 32) = v133;
    *(v131 + 48) = v132;
    *(v131 + 16) = v134;
    sub_19A2EA460((v0 + 160), v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
    v135 = v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
    *v135 = 0u;
    *(v135 + 16) = 0u;
    *(v135 + 32) = 0;
    *(v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession) = v161;
    *(v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker) = v164;
    sub_19A3351B8(v171, v109 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);

    sub_19A331764(v168, type metadata accessor for GenerationState);
    v136 = 0;
    v137 = 0;
    if (v63 == 1)
    {
      v138 = *(v0 + 440);
      v139 = *(v0 + 416);
      v140 = *(v0 + 424);
      (*(v140 + 16))(v138, *(v0 + 224), v139);
      v141 = (*(v140 + 80) + 16) & ~*(v140 + 80);
      v137 = swift_allocObject();
      (*(v140 + 32))(v137 + v141, v138, v139);
      v136 = sub_19A334CC4;
    }

    *(v0 + 696) = v137;
    *(v0 + 688) = v136;
    v142 = swift_task_alloc();
    *(v0 + 704) = v142;
    *v142 = v0;
    v142[1] = sub_19A31121C;
    v143 = *(v0 + 504);

    return sub_19A48B33C(v143, v136, v137);
  }
}

uint64_t sub_19A3126A0()
{
  v33 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 648);
  v4 = *(v0 + 536);

  sub_19A2E0A60(v2, v1);
  sub_19A331764(v4, type metadata accessor for GenerationState);
  v5 = *(v0 + 712);
  v6 = sub_19A4B1174(v5);
  *(v0 + 200) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  v8 = type metadata accessor for GeneratorError(0);
  v9 = swift_dynamicCast();
  v10 = *(*(v8 - 8) + 56);
  v11 = *(v0 + 328);
  if (v9)
  {
    v10(*(v0 + 328), 0, 1, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v0 + 328);
    if (EnumCaseMultiPayload == 7)
    {
      v14 = *v13;
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v15 = sub_19A5723FC();
      __swift_project_value_buffer(v15, qword_1ED82BCF0);

      v16 = sub_19A5723DC();
      v17 = sub_19A57355C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32 = v19;
        *v18 = 136446210;
        v20 = MEMORY[0x19A900C10](v14, &type metadata for GeneratorError.VersionTriple);
        v22 = v21;

        v23 = sub_19A31F114(v20, v22, &v32);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_19A2DE000, v16, v17, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x19A902C50](v19, -1, -1);
        MEMORY[0x19A902C50](v18, -1, -1);
      }

      else
      {
      }

      v24 = *(*(v0 + 320) + 176);
      os_unfair_lock_lock((v24 + 24));
      type metadata accessor for AppleDiffusionResourceFactory(0);
      v25 = static AppleDiffusionResourceFactory.shared(reset:)(1);

      *(v24 + 16) = v25;
      os_unfair_lock_unlock((v24 + 24));
    }

    else
    {
      sub_19A331764(v13, type metadata accessor for GeneratorError);
    }
  }

  else
  {
    v10(*(v0 + 328), 1, 1, v8);
    sub_19A2F3FA0(v11, &qword_1EAFA0148, &qword_19A578CB0);
  }

  v26 = *(v0 + 584);
  v27 = *(v0 + 576);
  v28 = *(v0 + 560);
  **(v0 + 552) = v6;
  swift_storeEnumTagMultiPayload();
  v29 = v6;
  sub_19A5731EC();
  v26(v27, v28);
  sub_19A5731FC();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_19A312C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = type metadata accessor for GenerativePlayground.ImageGenerationEvent(0);
  MEMORY[0x1EEE9AC00](v63);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0150, &qword_19A578CB8);
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v56 - v8;
  v9 = type metadata accessor for GenerationState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativePlayground.GenerationEvent(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v22 = sub_19A5723FC();
  v23 = __swift_project_value_buffer(v22, qword_1ED82BCF0);
  v66 = a2;
  sub_19A331B84(a2, v21, type metadata accessor for GenerativePlayground.GenerationEvent);
  v59 = v23;
  v24 = sub_19A5723DC();
  v25 = sub_19A57356C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v60 = v11;
    v27 = v26;
    v57 = swift_slowAlloc();
    v58 = a3;
    v67 = v57;
    *v27 = 136446466;
    *(v27 + 4) = sub_19A31F114(0xD0000000000000A4, 0x800000019A596170, &v67);
    *(v27 + 12) = 2080;
    sub_19A331B84(v21, v64, type metadata accessor for GenerativePlayground.GenerationEvent);
    v28 = v7;
    v29 = sub_19A572DAC();
    v30 = v14;
    v31 = v6;
    v33 = v32;
    sub_19A331764(v21, type metadata accessor for GenerativePlayground.GenerationEvent);
    v34 = v29;
    v7 = v28;
    v35 = sub_19A31F114(v34, v33, &v67);
    v6 = v31;
    v14 = v30;

    *(v27 + 14) = v35;
    _os_log_impl(&dword_19A2DE000, v24, v25, "%{public}s: eventHandler is called, event=%s", v27, 0x16u);
    v36 = v57;
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v36, -1, -1);
    v37 = v27;
    v11 = v60;
    MEMORY[0x19A902C50](v37, -1, -1);
  }

  else
  {

    sub_19A331764(v21, type metadata accessor for GenerativePlayground.GenerationEvent);
  }

  v39 = v65;
  v38 = v66;
  sub_19A331B84(v66, v65, type metadata accessor for GenerativePlayground.GenerationEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_19A3319E4(v39, v11, type metadata accessor for GenerationState);
    sub_19A331B84(v38, v14, type metadata accessor for GenerativePlayground.GenerationEvent);
    v40 = sub_19A5723DC();
    v41 = sub_19A57356C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v60 = v11;
      v43 = v42;
      v44 = swift_slowAlloc();
      v67 = v44;
      *v43 = 136446466;
      *(v43 + 4) = sub_19A31F114(0xD0000000000000A4, 0x800000019A596170, &v67);
      *(v43 + 12) = 2080;
      sub_19A331B84(v14, v64, type metadata accessor for GenerativePlayground.GenerationEvent);
      v45 = sub_19A572DAC();
      v46 = v14;
      v47 = v45;
      v49 = v48;
      sub_19A331764(v46, type metadata accessor for GenerativePlayground.GenerationEvent);
      v50 = sub_19A31F114(v47, v49, &v67);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_19A2DE000, v40, v41, "%{public}s: eventHandler, event=%s. Before continuation.yield", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v44, -1, -1);
      v51 = v43;
      v11 = v60;
      MEMORY[0x19A902C50](v51, -1, -1);
    }

    else
    {

      sub_19A331764(v14, type metadata accessor for GenerativePlayground.GenerationEvent);
    }

    sub_19A331B84(v11, v6, type metadata accessor for GenerationState);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
    v54 = v61;
    sub_19A5731EC();
    (*(v62 + 8))(v54, v7);
    v52 = type metadata accessor for GenerationState;
    v53 = v11;
  }

  else
  {
    v52 = type metadata accessor for GenerativePlayground.GenerationEvent;
    v53 = v39;
  }

  return sub_19A331764(v53, v52);
}

uint64_t sub_19A313334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v22 - v14;
  (*(v11 + 16))(v22 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  *(v18 + v17) = a2;
  v19 = sub_19A5731CC();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a3;
  v20[5] = sub_19A334818;
  v20[6] = v18;

  sub_19A307070(0, 0, v9, &unk_19A578C88, v20);

  sub_19A5731DC();

  sub_19A3EB40C();
}

void sub_19A3135C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v82 = a3;
  v5 = type metadata accessor for GenerationState(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0148, &qword_19A578CB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v73 - v9;
  v10 = type metadata accessor for GenerativePlayground.ImageGenerationEvent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0150, &qword_19A578CB8);
  v13 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v15 = &v73 - v14;
  v16 = type metadata accessor for GenerativePlayground.GenerationEvent(0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73 - v22;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v24 = sub_19A5723FC();
  v25 = __swift_project_value_buffer(v24, qword_1ED82BCF0);
  sub_19A331B84(a2, v23, type metadata accessor for GenerativePlayground.GenerationEvent);
  v75 = v25;
  v26 = sub_19A5723DC();
  v79 = sub_19A57356C();
  if (os_log_type_enabled(v26, v79))
  {
    v27 = swift_slowAlloc();
    v78 = v13;
    v28 = v27;
    v29 = swift_slowAlloc();
    v76 = v15;
    v73 = v29;
    v83 = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_19A31F114(0xD00000000000009FLL, 0x800000019A596220, &v83);
    *(v28 + 12) = 2080;
    sub_19A331B84(v23, v20, type metadata accessor for GenerativePlayground.GenerationEvent);
    v30 = sub_19A572DAC();
    v31 = a2;
    v32 = v7;
    v33 = v12;
    v34 = v10;
    v36 = v35;
    sub_19A331764(v23, type metadata accessor for GenerativePlayground.GenerationEvent);
    v37 = sub_19A31F114(v30, v36, &v83);
    v10 = v34;
    v12 = v33;
    v7 = v32;
    a2 = v31;

    *(v28 + 14) = v37;
    _os_log_impl(&dword_19A2DE000, v26, v79, "%{public}s: eventHandler, event=%s", v28, 0x16u);
    v38 = v73;
    swift_arrayDestroy();
    v39 = v38;
    v15 = v76;
    MEMORY[0x19A902C50](v39, -1, -1);
    v40 = v28;
    v13 = v78;
    MEMORY[0x19A902C50](v40, -1, -1);
  }

  else
  {

    sub_19A331764(v23, type metadata accessor for GenerativePlayground.GenerationEvent);
  }

  v41 = v81;
  v42 = a2;
  v43 = v80;
  sub_19A331B84(v42, v80, type metadata accessor for GenerativePlayground.GenerationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v82 = v10;
      v46 = *v43;
      v47 = *(*v43 + 2);
      if (v47)
      {
        v48 = *(type metadata accessor for GeneratedImage(0) - 8);
        v49 = *(v48 + 80);
        v50 = v15;
        v81 = v46;
        v51 = v46 + ((v49 + 32) & ~v49);
        v52 = *(v48 + 72);
        v78 = v13;
        do
        {
          sub_19A331B84(v51, v12, type metadata accessor for GeneratedImage);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
          sub_19A5731EC();
          (*(v13 + 8))(v50, v41);
          v51 += v52;
          --v47;
        }

        while (v47);

        v13 = v78;
        v15 = v50;
      }

      else
      {
      }

      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
      sub_19A5731EC();
      (*(v13 + 8))(v15, v41);
      sub_19A5731FC();
      return;
    }

    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
    sub_19A5731EC();
LABEL_21:
    (*(v13 + 8))(v15, v41);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v45 = *(v43 + 16);
    *v12 = *v43;
    *(v12 + 16) = v45;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
    sub_19A5731EC();

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_19A3319E4(v43, v7, type metadata accessor for GenerationState);
    sub_19A331B84(v7, v12, type metadata accessor for GenerationState);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
    sub_19A5731EC();
    (*(v13 + 8))(v15, v41);
    sub_19A331764(v7, type metadata accessor for GenerationState);
  }

  else
  {
    v53 = *v43;
    v54 = sub_19A4B1174(*v43);
    v83 = v54;
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    v56 = type metadata accessor for GeneratorError(0);
    v57 = v77;
    v58 = swift_dynamicCast();
    v59 = *(*(v56 - 8) + 56);
    if (v58)
    {
      v59(v57, 0, 1, v56);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v76 = v15;
        v78 = v13;
        v60 = *v57;

        v61 = sub_19A5723DC();
        v62 = sub_19A57355C();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v80 = v12;
          v65 = v64;
          v83 = v64;
          *v63 = 136446210;
          v66 = MEMORY[0x19A900C10](v60, &type metadata for GeneratorError.VersionTriple);
          v68 = v67;

          v69 = sub_19A31F114(v66, v68, &v83);

          *(v63 + 4) = v69;
          _os_log_impl(&dword_19A2DE000, v61, v62, "Attempting to reset generator state due to model catalog asset mismatch: %{public}s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v65);
          v12 = v80;
          MEMORY[0x19A902C50](v65, -1, -1);
          MEMORY[0x19A902C50](v63, -1, -1);
        }

        else
        {
        }

        v70 = *(v74 + 176);
        os_unfair_lock_lock((v70 + 24));
        type metadata accessor for AppleDiffusionResourceFactory(0);
        v71 = static AppleDiffusionResourceFactory.shared(reset:)(1);

        *(v70 + 16) = v71;
        os_unfair_lock_unlock((v70 + 24));
        v13 = v78;
        v15 = v76;
      }

      else
      {
        sub_19A331764(v57, type metadata accessor for GeneratorError);
      }
    }

    else
    {
      v59(v57, 1, 1, v56);
      sub_19A2F3FA0(v57, &qword_1EAFA0148, &qword_19A578CB0);
    }

    *v12 = v54;
    swift_storeEnumTagMultiPayload();
    v72 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120, &qword_19A578C78);
    sub_19A5731EC();
    (*(v13 + 8))(v15, v81);
    sub_19A5731FC();
  }
}

uint64_t sub_19A314134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0130, &qword_19A578C98);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_19A314224;

  return sub_19A48B33C(v9, a5, a6);
}

uint64_t sub_19A314224(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_19A314430;
  }

  else
  {
    *(v4 + 32) = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0138, &qword_19A578CA0);
    *(v4 + 40) = v6;
    *(v4 + 48) = *(v6 + 48);
    v5 = sub_19A31436C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A31436C()
{
  *(*(v0 + 16) + *(v0 + 48)) = *(v0 + 32);
  v1 = *(v0 + 16);
  (*(*(*(v0 + 40) - 8) + 56))(v1, 0, 1);
  sub_19A2F3FA0(v1, &qword_1EAFA0130, &qword_19A578C98);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A314430()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0138, &qword_19A578CA0);
  v2 = *(v0 + 16);
  (*(*(v1 - 8) + 56))(v2, 1, 1, v1);
  sub_19A2F3FA0(v2, &qword_1EAFA0130, &qword_19A578C98);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A3144F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  (*(v8 + 16))(&v17 - v10, a1, v7, v9);
  result = (*(v8 + 88))(v11, v7);
  if (result != *MEMORY[0x1E69E8610])
  {
    if (result == *MEMORY[0x1E69E8618])
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v13 = sub_19A5723FC();
      __swift_project_value_buffer(v13, qword_1ED82BCF0);
      v14 = sub_19A5723DC();
      v15 = sub_19A57356C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_19A2DE000, v14, v15, a5, v16, 2u);
        MEMORY[0x19A902C50](v16, -1, -1);
      }

      return sub_19A57322C();
    }

    else
    {
      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t GenerativePlayground.ImageGenerationSession.deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE08, &qword_19A5773D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller));
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__generationID;
  v4 = sub_19A57102C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativePlayground.ImageGenerationSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE08, &qword_19A5773D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller));
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__generationID;
  v4 = sub_19A57102C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_19A3148DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__generationID;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A3149A4()
{
  v2 = sub_19A5741FC();
  MEMORY[0x19A900A50](32, 0xE100000000000000);
  sub_19A57102C();
  sub_19A335220(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return v2;
}

uint64_t GenerativePlayground.generateImages(from:generationID:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE20, &qword_19A5773E0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  v3[27] = swift_task_alloc();
  v5 = sub_19A57102C();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = type metadata accessor for DefinitionSession(0);
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A314C6C, 0, 0);
}

uint64_t sub_19A314C6C()
{
  v1 = *(*(v0 + 168) + 168);
  *(v0 + 272) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A314C90, v1, 0);
}

uint64_t sub_19A314C90()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A314D38, 0, 0);
}

uint64_t sub_19A314D38()
{
  v66 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_19A33546C(*(v0 + 160), v3, &qword_1EAF9FD80, &unk_19A57B720);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    sub_19A57101C();
    if (v4(v5, 1, v6) != 1)
    {
      sub_19A2F3FA0(*(v0 + 216), &qword_1EAF9FD80, &unk_19A57B720);
    }
  }

  else
  {
    (*(*(v0 + 232) + 32))(*(v0 + 248), *(v0 + 216), *(v0 + 224));
  }

  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = v7 + v8[9];
  v10 = *(v9 + *(_s17AssignmentOptionsVMa(0) + 32));
  v11 = *(v10 + 16);
  v12 = sub_19A57112C();
  v13 = *(v12 - 8);
  if (v11)
  {
    (*(*(v12 - 8) + 16))(*(v0 + 208), v10 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)), v12);
    v14 = 0;
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
  }

  else
  {
    v14 = 1;
  }

  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 208);
  v59 = *(v0 + 200);
  v61 = *(v0 + 168);
  (*(v13 + 56))(v19, v14, 1, v12);
  v20 = (v7 + v8[5]);
  v63 = v20[1];
  v64 = *v20;
  v21 = v20[2];
  v55 = *(v17 + 16);
  v55(v16, v15, v18);
  v60 = *(v7 + v8[15]);
  v62 = *(v61 + 104);
  v22 = sub_19A4CB924();
  v23 = v7 + v8[8];
  v25 = *(v23 + 40);
  v24 = *(v23 + 48);
  sub_19A33546C(v19, v59, &qword_1EAF9FDC8, &qword_19A577310);
  type metadata accessor for GenerativePlayground.ImageGenerationSession(0);
  v26 = swift_allocObject();
  v27 = qword_1ED824050;
  v58 = v22;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_19A5723FC();
  __swift_project_value_buffer(v28, qword_1ED82BCF0);
  v29 = sub_19A5723DC();
  v30 = sub_19A57356C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v65 = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_19A31F114(0xD0000000000000A4, 0x800000019A596170, &v65);
    _os_log_impl(&dword_19A2DE000, v29, v30, "%{public}s: GenerativePlayground.init(from generationID)", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x19A902C50](v32, -1, -1);
    MEMORY[0x19A902C50](v31, -1, -1);
  }

  v33 = *(v0 + 240);
  v56 = *(v0 + 248);
  v57 = *(v0 + 264);
  v52 = *(v0 + 232);
  v53 = *(v0 + 224);
  v54 = *(v0 + 208);
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v36 = *(v0 + 184);
  v50 = *(v0 + 168);
  v51 = *(v0 + 176);
  v49 = *(v0 + 152);
  (v55)(v26 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__generationID, v33);
  *(v26 + 16) = 1;
  v37 = (v26 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession_prompt);
  *v37 = v25;
  v37[1] = v24;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = vdupq_n_s64(0x200uLL);
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 1;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  v38 = type metadata accessor for StatefulCanceller();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v0 + 112) = v38;
  *(v0 + 120) = &off_1F0DAF608;
  *(v0 + 88) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
  v41 = v26;
  v42 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD8, &unk_19A577320);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v42 + 56) = v43;
  *(v42 + 64) = 0;
  sub_19A2EA460((v0 + 88), v42 + 16);
  v44 = (v41 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller);
  v44[3] = v40;
  v44[4] = &off_1F0DAF5F0;
  *v44 = v42;
  v45 = swift_task_alloc();
  v45[2] = v42;
  v45[3] = v49;
  v45[4] = v0 + 16;
  v45[5] = v60;
  v45[6] = v33;
  v45[7] = v64;
  v45[8] = v63;
  v45[9] = v21;
  v45[10] = v62;
  v45[11] = v58;
  v45[12] = v34;
  v45[13] = v50;
  type metadata accessor for GenerativePlayground.ImageGenerationEvent(0);
  (*(v36 + 104))(v35, *MEMORY[0x1E69E8650], v51);

  sub_19A57320C();

  sub_19A3321A8(v0 + 16);

  sub_19A2F3FA0(v54, &qword_1EAF9FDC8, &qword_19A577310);
  v46 = *(v52 + 8);
  v46(v56, v53);

  sub_19A2F3FA0(v34, &qword_1EAF9FDC8, &qword_19A577310);
  v46(v33, v53);
  sub_19A331764(v57, type metadata accessor for DefinitionSession);

  v47 = *(v0 + 8);

  return v47(v41);
}

uint64_t GenerativePlayground.generateImages(options:generationID:)(uint64_t *a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE20, &qword_19A5773E0);
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = type metadata accessor for GenerationState(0);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v6 = sub_19A57102C();
  v3[47] = v6;
  v3[48] = *(v6 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = type metadata accessor for DefinitionSession(0);
  v3[51] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  v3[52] = v7;
  v3[53] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A315644, 0, 0);
}

uint64_t sub_19A315644()
{
  v1 = *(*(v0 + 248) + 168);
  *(v0 + 432) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A315668, v1, 0);
}

uint64_t sub_19A315668()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A315714, 0, 0);
}

uint64_t sub_19A315714()
{
  v105 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_19A33546C(*(v0 + 240), v3, &qword_1EAF9FD80, &unk_19A57B720);
  v4 = *(v2 + 48);
  v103 = v4;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 368);
    v6 = *(v0 + 376);
    sub_19A57101C();
    if (v4(v5, 1, v6) != 1)
    {
      sub_19A2F3FA0(*(v0 + 368), &qword_1EAF9FD80, &unk_19A57B720);
    }
  }

  else
  {
    (*(*(v0 + 384) + 32))(*(v0 + 392), *(v0 + 368), *(v0 + 376));
  }

  v7 = *(v0 + 408);
  v99 = *(v0 + 416);
  v8 = *(v0 + 392);
  v97 = *(v0 + 400);
  v9 = *(v0 + 376);
  v10 = *(v0 + 384);
  v11 = *(v0 + 360);
  v12 = *(v0 + 336);
  v13 = *(v0 + 304);
  sub_19A331B84(v99, v7, type metadata accessor for DefinitionSession);
  v95 = *(v10 + 16);
  v95(v11, v8, v9);
  v14 = *(v10 + 56);
  v14(v11, 0, 1, v9);
  v15 = v13[5];
  v85 = v14;
  v14(v12 + v15, 1, 1, v9);
  v95(v12, v7, v9);
  sub_19A3315F4(v11, v12 + v15);
  v16 = (v7 + v97[5]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v12 + v13[6]);
  *v19 = v17;
  v19[1] = v18;
  v102 = v13;
  sub_19A331B84(v7 + v97[22], v12 + v13[7], type metadata accessor for GenerationRecipe);

  sub_19A331764(v7, type metadata accessor for DefinitionSession);
  v20 = v99 + v97[9];
  v21 = *(v20 + *(_s17AssignmentOptionsVMa(0) + 32));
  v22 = *(v21 + 16);
  v23 = sub_19A57112C();
  v24 = *(v23 - 8);
  if (v22)
  {
    (*(*(v23 - 8) + 16))(*(v0 + 296), v21 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v23);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(v0 + 416);
  v27 = *(v0 + 400);
  v29 = *(v0 + 328);
  v28 = *(v0 + 336);
  v30 = *(v0 + 296);
  v100 = *(v0 + 288);
  v31 = *(v0 + 248);
  (*(v24 + 56))(v30, v25, 1, v23);
  v32 = (v26 + v97[5]);
  v33 = v32[1];
  v94 = *v32;
  v34 = v32[2];
  sub_19A331B84(v28, v29, type metadata accessor for GenerationState);
  v93 = v33;

  sub_19A4BABB8(v0 + 16);
  v92 = *(v26 + *(v27 + 60));
  v96 = *(v31 + 104);
  v35 = sub_19A4CB924();
  v36 = v26 + *(v27 + 32);
  v38 = *(v36 + 40);
  v37 = *(v36 + 48);
  sub_19A33546C(v30, v100, &qword_1EAF9FDC8, &qword_19A577310);
  type metadata accessor for GenerativePlayground.ImageGenerationSession(0);
  v101 = swift_allocObject();
  v39 = qword_1ED824050;
  v98 = v35;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = sub_19A5723FC();
  __swift_project_value_buffer(v40, qword_1ED82BCF0);
  v41 = sub_19A5723DC();
  v42 = sub_19A57356C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v104 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_19A31F114(0xD00000000000009FLL, 0x800000019A596220, &v104);
    _os_log_impl(&dword_19A2DE000, v41, v42, "%{public}s: GenerativePlayground.init(from GeneratioinState)", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x19A902C50](v44, -1, -1);
    MEMORY[0x19A902C50](v43, -1, -1);
  }

  v45 = *(v0 + 376);
  v46 = *(v0 + 352);
  sub_19A33546C(*(v0 + 328) + v102[5], v46, &qword_1EAF9FD80, &unk_19A57B720);
  result = v103(v46, 1, v45);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v48 = *(v0 + 424);
    v49 = *(v0 + 344);
    v50 = *(v0 + 320);
    v51 = *(v0 + 328);
    v52 = *(v0 + 312);
    v89 = *(v0 + 288);
    v91 = *(v0 + 376);
    v88 = *(v0 + 280);
    (*(*(v0 + 384) + 32))(v101 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__generationID, *(v0 + 352));
    *(v101 + 16) = v48;
    v53 = (v101 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession_prompt);
    *v53 = v38;
    v53[1] = v37;
    sub_19A302D80(v0 + 16, (v0 + 56));
    v54 = type metadata accessor for StatefulCanceller();
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v0 + 120) = v54;
    *(v0 + 128) = &off_1F0DAF608;
    *(v0 + 96) = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD0, &qword_19A577318);
    v57 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDD8, &unk_19A577320);
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v57 + 56) = v58;
    *(v57 + 64) = 0;
    sub_19A2EA460((v0 + 96), v57 + 16);
    v59 = (v101 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground22ImageGenerationSession__sendableCanceller);
    v59[3] = v56;
    v59[4] = &off_1F0DAF5F0;
    *v59 = v57;
    sub_19A331B84(v51, v50, type metadata accessor for GenerationState);
    sub_19A2F3EF0(v0 + 56, v0 + 136);
    sub_19A33546C(v89, v88, &qword_1EAF9FDC8, &qword_19A577310);
    *(v0 + 200) = v56;
    *(v0 + 208) = &off_1F0DAF5F0;
    *(v0 + 176) = v57;
    type metadata accessor for GenerativePlayground.GenerationTask(0);
    v60 = swift_allocObject();
    sub_19A331B84(v50, v52, type metadata accessor for GenerationState);
    v61 = v102[7];
    *(v52 + *(type metadata accessor for GenerationRecipe(0) + 20) + v61 + 40) = v48;
    v62 = v102[5];
    sub_19A33546C(v52 + v62, v49, &qword_1EAF9FD80, &unk_19A57B720);
    LODWORD(v48) = v103(v49, 1, v91);
    swift_retain_n();

    v63 = v92;

    sub_19A2F3FA0(v49, &qword_1EAF9FD80, &unk_19A57B720);
    if (v48 == 1)
    {
      v64 = *(v0 + 376);
      v65 = *(v0 + 360);
      sub_19A57101C();
      v85(v65, 0, 1, v64);
      sub_19A3315F4(v65, v52 + v62);
    }

    v66 = *(v0 + 424);
    v90 = *(v0 + 416);
    v83 = *(v0 + 384);
    v84 = *(v0 + 376);
    v86 = *(v0 + 392);
    v67 = *(v0 + 320);
    v87 = *(v0 + 336);
    v68 = *(v0 + 312);
    v80 = *(v0 + 288);
    v81 = *(v0 + 328);
    v69 = *(v0 + 280);
    v82 = *(v0 + 296);
    v70 = *(v0 + 264);
    v78 = *(v0 + 272);
    v79 = *(v0 + 256);
    v77 = *(v0 + 248);
    sub_19A331B84(v68, v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);
    v71 = (v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__client);
    *v71 = v94;
    v71[1] = v93;
    v71[2] = v34;
    sub_19A331764(v67, type metadata accessor for GenerationState);
    *(v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__mediaAnalysisService) = v63;
    v72 = v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__options;
    *v72 = 0;
    *(v72 + 8) = 0;
    *(v72 + 16) = 0;
    *(v72 + 24) = vdupq_n_s64(0x200uLL);
    *(v72 + 40) = 0;
    *(v72 + 48) = v66;
    *(v72 + 56) = 1;
    *(v72 + 60) = 0;
    *(v72 + 64) = 1;
    sub_19A2EA460((v0 + 176), v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__sendableCanceller);
    v73 = v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__recipePreparer;
    v74 = *(v0 + 152);
    *v73 = *(v0 + 136);
    *(v73 + 16) = v74;
    *(v73 + 32) = *(v0 + 168);
    *(v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__visionSession) = v96;
    *(v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__imageChecker) = v98;
    sub_19A3351B8(v69, v60 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8, &qword_19A577310);
    sub_19A331764(v68, type metadata accessor for GenerationState);
    v75 = swift_task_alloc();
    v75[2] = v77;
    v75[3] = v60;
    v75[4] = v57;
    type metadata accessor for GenerativePlayground.ImageGenerationEvent(0);
    (*(v70 + 104))(v78, *MEMORY[0x1E69E8650], v79);
    sub_19A57320C();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    sub_19A2F3FA0(v80, &qword_1EAF9FDC8, &qword_19A577310);
    sub_19A2F3FA0(v0 + 16, &qword_1EAF9FDE0, &unk_19A57B770);
    sub_19A331764(v81, type metadata accessor for GenerationState);
    sub_19A2F3FA0(v82, &qword_1EAF9FDC8, &qword_19A577310);
    (*(v83 + 8))(v86, v84);

    sub_19A331764(v87, type metadata accessor for GenerationState);
    sub_19A331764(v90, type metadata accessor for DefinitionSession);

    v76 = *(v0 + 8);

    return v76(v101);
  }

  return result;
}