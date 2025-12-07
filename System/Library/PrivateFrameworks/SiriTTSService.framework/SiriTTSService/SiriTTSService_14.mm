uint64_t sub_1B1BBE1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_ResponseOutputItemAdded(0);
  type metadata accessor for Realtime_V1_Item(0);
  sub_1B1BB99B4(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item, &protocol conformance descriptor for Realtime_V1_Item);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1BBE3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_Item(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(0);
  sub_1B1B8D9D8(a1 + *(v9 + 36), v7, &qword_1EB762AF8, &qword_1B1C3A120);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762AF8, &qword_1B1C3A120);
  }

  sub_1B1BB85CC();
  sub_1B1BB99B4(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item, &protocol conformance descriptor for Realtime_V1_Item);
  sub_1B1C2C788();
  return sub_1B1B9C820();
}

uint64_t sub_1B1BBE650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D68, type metadata accessor for Realtime_V1_ResponseOutputItemAdded, &protocol conformance descriptor for Realtime_V1_ResponseOutputItemAdded);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBE6D0(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639B0, type metadata accessor for Realtime_V1_ResponseOutputItemAdded, &protocol conformance descriptor for Realtime_V1_ResponseOutputItemAdded);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBE740(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB7639B0, type metadata accessor for Realtime_V1_ResponseOutputItemAdded, &protocol conformance descriptor for Realtime_V1_ResponseOutputItemAdded);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBE7D8()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7635A0);
  __swift_project_value_buffer(v0, qword_1EB7635A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_id";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "output_index";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseOutputItemDone.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBEC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D60, type metadata accessor for Realtime_V1_ResponseOutputItemDone, &protocol conformance descriptor for Realtime_V1_ResponseOutputItemDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBECCC(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639C8, type metadata accessor for Realtime_V1_ResponseOutputItemDone, &protocol conformance descriptor for Realtime_V1_ResponseOutputItemDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBED3C(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB7639C8, type metadata accessor for Realtime_V1_ResponseOutputItemDone, &protocol conformance descriptor for Realtime_V1_ResponseOutputItemDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBEF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D58, type metadata accessor for Realtime_V1_ResponseContentPartAdded, &protocol conformance descriptor for Realtime_V1_ResponseContentPartAdded);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBEFC8(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639E0, type metadata accessor for Realtime_V1_ResponseContentPartAdded, &protocol conformance descriptor for Realtime_V1_ResponseContentPartAdded);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBF038(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB7639E0, type metadata accessor for Realtime_V1_ResponseContentPartAdded, &protocol conformance descriptor for Realtime_V1_ResponseContentPartAdded);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBF140()
{
  OUTLINED_FUNCTION_144_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C698();
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_101_1();
        v1(v4);
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C678();
        break;
      case 7:
        OUTLINED_FUNCTION_101_1();
        sub_1B1BBF214();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BBF214()
{
  OUTLINED_FUNCTION_74();
  v0(0);
  type metadata accessor for Realtime_V1_Part(0);
  OUTLINED_FUNCTION_177();
  sub_1B1BB99B4(v1, v2, &protocol conformance descriptor for Realtime_V1_Part);
  OUTLINED_FUNCTION_39();
  return sub_1B1C2C6B8();
}

void sub_1B1BBF3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_286();
  v9 = v8;
  v11 = v10;
  v12 = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_23(v14);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_277();
  v17 = type metadata accessor for Realtime_V1_Part(v16);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  v19 = OUTLINED_FUNCTION_193();
  v20 = v9(v19);
  sub_1B1B8D9D8(v11 + *(v20 + 44), v7, &qword_1EB7636F0, &qword_1B1C3D0B0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v17) == 1)
  {
    sub_1B1A90C20(v7, &qword_1EB7636F0, &qword_1B1C3D0B0);
  }

  else
  {
    sub_1B1BB85CC();
    OUTLINED_FUNCTION_177();
    sub_1B1BB99B4(v21, v22, &protocol conformance descriptor for Realtime_V1_Part);
    sub_1B1C2C788();
    OUTLINED_FUNCTION_178();
    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BBF634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D50, type metadata accessor for Realtime_V1_ResponseContentPartDone, &protocol conformance descriptor for Realtime_V1_ResponseContentPartDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBF6B4(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB7639F8, type metadata accessor for Realtime_V1_ResponseContentPartDone, &protocol conformance descriptor for Realtime_V1_ResponseContentPartDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBF724(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB7639F8, type metadata accessor for Realtime_V1_ResponseContentPartDone, &protocol conformance descriptor for Realtime_V1_ResponseContentPartDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBF90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D48, type metadata accessor for Realtime_V1_ResponseTextDelta, &protocol conformance descriptor for Realtime_V1_ResponseTextDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBF98C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A10, type metadata accessor for Realtime_V1_ResponseTextDelta, &protocol conformance descriptor for Realtime_V1_ResponseTextDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBF9FC(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763A10, type metadata accessor for Realtime_V1_ResponseTextDelta, &protocol conformance descriptor for Realtime_V1_ResponseTextDelta);

  return sub_1B1C2C6E8();
}

void sub_1B1BBFB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_286();
  v11 = v10;
  OUTLINED_FUNCTION_7_18();
  if (!v12 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
  {
    if (OUTLINED_FUNCTION_171() || (v13 = sub_1B1BB99FC(), OUTLINED_FUNCTION_158(v13, v14, &type metadata for Realtime_V1_ServerEventType, v13, v15, v16, v17, v18, v7), OUTLINED_FUNCTION_16_4(), sub_1B1C2C718(), !v8))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v19 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
      {
        OUTLINED_FUNCTION_17_0();
        if (!v20 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
        {
          v21 = *(v9 + 64);
          if (!v21 || (OUTLINED_FUNCTION_102_2(v21, 5), !v8))
          {
            v22 = *(v9 + 68);
            if (!v22 || (OUTLINED_FUNCTION_102_2(v22, 6), !v8))
            {
              OUTLINED_FUNCTION_17_0();
              if (!v23 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
              {
                v11(0);
                OUTLINED_FUNCTION_48();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BBFD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D40, type metadata accessor for Realtime_V1_ResponseTextDone, &protocol conformance descriptor for Realtime_V1_ResponseTextDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BBFD80(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A28, type metadata accessor for Realtime_V1_ResponseTextDone, &protocol conformance descriptor for Realtime_V1_ResponseTextDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BBFDF0(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763A28, type metadata accessor for Realtime_V1_ResponseTextDone, &protocol conformance descriptor for Realtime_V1_ResponseTextDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BBFFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D38, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta, &protocol conformance descriptor for Realtime_V1_ResponseAudioTranscriptDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC0040(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A40, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta, &protocol conformance descriptor for Realtime_V1_ResponseAudioTranscriptDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC00B0(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763A40, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta, &protocol conformance descriptor for Realtime_V1_ResponseAudioTranscriptDelta);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC03C4()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 7:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C698();
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_119_0();
        v0(v4);
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BC055C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D30, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone, &protocol conformance descriptor for Realtime_V1_ResponseAudioTranscriptDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC05DC(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A58, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone, &protocol conformance descriptor for Realtime_V1_ResponseAudioTranscriptDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC064C(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763A58, type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone, &protocol conformance descriptor for Realtime_V1_ResponseAudioTranscriptDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC06E4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB763648);
  __swift_project_value_buffer(v0, qword_1EB763648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B1C3B470;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v4 = "event_id";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 2;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "response_id";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "item_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "output_index";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "content_index";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "delta";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "audio_bytes";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseAudioDelta.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 7:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      case 8:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C658();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BC0D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D28, type metadata accessor for Realtime_V1_ResponseAudioDelta, &protocol conformance descriptor for Realtime_V1_ResponseAudioDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC0D90(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A70, type metadata accessor for Realtime_V1_ResponseAudioDelta, &protocol conformance descriptor for Realtime_V1_ResponseAudioDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC0E00(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763A70, type metadata accessor for Realtime_V1_ResponseAudioDelta, &protocol conformance descriptor for Realtime_V1_ResponseAudioDelta);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC0E8C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB763660);
  __swift_project_value_buffer(v0, qword_1EB763660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_id";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "item_id";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "output_index";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "content_index";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseAudioDone.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFD9B8();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BC13C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D20, type metadata accessor for Realtime_V1_ResponseAudioDone, &protocol conformance descriptor for Realtime_V1_ResponseAudioDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC1448(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763A88, type metadata accessor for Realtime_V1_ResponseAudioDone, &protocol conformance descriptor for Realtime_V1_ResponseAudioDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC14B8(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763A88, type metadata accessor for Realtime_V1_ResponseAudioDone, &protocol conformance descriptor for Realtime_V1_ResponseAudioDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC1568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B1C2C7B8();
  OUTLINED_FUNCTION_262(v7);
  v8 = OUTLINED_FUNCTION_33();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040);
  OUTLINED_FUNCTION_99_0();
  v11 = *(v10 + 72);
  OUTLINED_FUNCTION_192();
  v30 = OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_98_2(v30, xmmword_1B1C373A0);
  OUTLINED_FUNCTION_146("event_id");
  sub_1B1C2C798();
  OUTLINED_FUNCTION_45();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_169();
  v13();
  v14 = OUTLINED_FUNCTION_97_2();
  v15 = OUTLINED_FUNCTION_278(v14, "type");
  (v13)(v15);
  v16 = OUTLINED_FUNCTION_157(v6 + 2 * v11);
  *v17 = 3;
  v18 = OUTLINED_FUNCTION_55_3(v16, "response_id");
  (v13)(v18);
  v19 = OUTLINED_FUNCTION_142_0(3 * v11);
  *v20 = 4;
  OUTLINED_FUNCTION_278(v19, "item_id");
  OUTLINED_FUNCTION_169();
  v13();
  v21 = OUTLINED_FUNCTION_157(v6 + 4 * v11);
  *v22 = 5;
  v23 = OUTLINED_FUNCTION_55_3(v21, "output_index");
  (v13)(v23);
  v24 = OUTLINED_FUNCTION_142_0(5 * v11);
  *v25 = 6;
  OUTLINED_FUNCTION_278(v24, "call_id");
  OUTLINED_FUNCTION_169();
  v13();
  v26 = *(v5 + 56);
  v27 = (v6 + 6 * v11);
  *v27 = 7;
  v28 = v27 + v26;
  *v28 = a3;
  *(v28 + 1) = a4;
  v28[16] = v4;
  v13();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1BC18D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D18, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta, &protocol conformance descriptor for Realtime_V1_ResponseFunctionCallArgumentsDelta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC1958(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763AA0, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta, &protocol conformance descriptor for Realtime_V1_ResponseFunctionCallArgumentsDelta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC19C8(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763AA0, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta, &protocol conformance descriptor for Realtime_V1_ResponseFunctionCallArgumentsDelta);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC1AC8()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 6:
      case 7:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C698();
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_119_0();
        v0(v4);
        break;
      case 5:
        OUTLINED_FUNCTION_131_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

void sub_1B1BC1BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_286();
  v11 = v10;
  OUTLINED_FUNCTION_7_18();
  if (!v12 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
  {
    if (OUTLINED_FUNCTION_171() || (v13 = sub_1B1BB99FC(), OUTLINED_FUNCTION_158(v13, v14, &type metadata for Realtime_V1_ServerEventType, v13, v15, v16, v17, v18, v7), OUTLINED_FUNCTION_16_4(), sub_1B1C2C718(), !v8))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v19 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
      {
        OUTLINED_FUNCTION_17_0();
        if (!v20 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
        {
          v21 = *(v9 + 64);
          if (!v21 || (OUTLINED_FUNCTION_102_2(v21, 5), !v8))
          {
            OUTLINED_FUNCTION_17_0();
            if (!v22 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
            {
              OUTLINED_FUNCTION_17_0();
              if (!v23 || (OUTLINED_FUNCTION_17_17(), sub_1B1C2C768(), !v8))
              {
                v11(0);
                OUTLINED_FUNCTION_48();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_285();
}

uint64_t sub_1B1BC1D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D10, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone, &protocol conformance descriptor for Realtime_V1_ResponseFunctionCallArgumentsDone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC1E1C(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763AB8, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone, &protocol conformance descriptor for Realtime_V1_ResponseFunctionCallArgumentsDone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC1E8C(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763AB8, type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone, &protocol conformance descriptor for Realtime_V1_ResponseFunctionCallArgumentsDone);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1BC20F8()
{
  OUTLINED_FUNCTION_144_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v6 = OUTLINED_FUNCTION_101_1();
        v0(v6);
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_101_1();
        v2(v5);
        break;
      case 1:
        OUTLINED_FUNCTION_169();
        sub_1B1C2C698();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1BC218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_RateLimit(0);
  sub_1B1BB99B4(&qword_1EB763228, type metadata accessor for Realtime_V1_RateLimit, &protocol conformance descriptor for Realtime_V1_RateLimit);
  return sub_1B1C2C6A8();
}

uint64_t sub_1B1BC236C()
{
  OUTLINED_FUNCTION_166();
  v2 = v1;
  sub_1B1C2D888();
  v2(0);
  v3 = OUTLINED_FUNCTION_33();
  sub_1B1BB99B4(v3, v4, v0);
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1BC2444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99B4(&qword_1EB763D08, type metadata accessor for Realtime_V1_RateLimitsUpdated, &protocol conformance descriptor for Realtime_V1_RateLimitsUpdated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1BC24C4(uint64_t a1)
{
  v2 = sub_1B1BB99B4(&qword_1EB763AD0, type metadata accessor for Realtime_V1_RateLimitsUpdated, &protocol conformance descriptor for Realtime_V1_RateLimitsUpdated);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1BC2534(uint64_t a1, uint64_t a2)
{
  sub_1B1BB99B4(&qword_1EB763AD0, type metadata accessor for Realtime_V1_RateLimitsUpdated, &protocol conformance descriptor for Realtime_V1_RateLimitsUpdated);

  return sub_1B1C2C6E8();
}

unint64_t sub_1B1BC25B8()
{
  result = qword_1EB763808;
  if (!qword_1EB763808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763808);
  }

  return result;
}

unint64_t sub_1B1BC2610()
{
  result = qword_1EB763810;
  if (!qword_1EB763810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB763818, &qword_1B1C3D118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763810);
  }

  return result;
}

unint64_t sub_1B1BC2678()
{
  result = qword_1EB763820;
  if (!qword_1EB763820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763820);
  }

  return result;
}

void sub_1B1BC47A8(uint64_t a1)
{
  sub_1B1BC4B28(319, &qword_1EB763AF0, type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1BC4864(uint64_t a1)
{
  result = type metadata accessor for Realtime_V1_ClientError(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Realtime_V1_SessionCreated(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Realtime_V1_SessionUpdated(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Realtime_V1_ConversationCreated(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Realtime_V1_InputAudioBufferCleared(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Realtime_V1_ConversationItemCreated(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Realtime_V1_ConversationItemTruncated(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Realtime_V1_ConversationItemDeleted(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Realtime_V1_ResponseCreated(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for Realtime_V1_ResponseDone(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for Realtime_V1_ResponseOutputItemDone(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for Realtime_V1_ResponseContentPartAdded(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for Realtime_V1_ResponseContentPartDone(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for Realtime_V1_ResponseTextDelta(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for Realtime_V1_ResponseTextDone(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for Realtime_V1_ResponseAudioDelta(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Realtime_V1_ResponseAudioDone(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Realtime_V1_RateLimitsUpdated(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                          return 0;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1BC4B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_162Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58_0();
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_86();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void __swift_store_extra_inhabitant_index_163Tm()
{
  OUTLINED_FUNCTION_120_0();
  v3 = v2;
  v5 = v4;
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_86();
  if (*(v7 + 84) == v1)
  {

    __swift_storeEnumTagSinglePayload(v5, v3, v3, v6);
  }

  else
  {
    *(v5 + *(v0 + 20)) = (v3 - 1);
  }
}

uint64_t sub_1B1BC4D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B1C2C5C8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_211();
    }
  }

  return result;
}

void sub_1B1BC4E40(uint64_t a1)
{
  sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    sub_1B1BC4B28(319, &qword_1EB762D10, type metadata accessor for Realtime_V1_Item, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_198Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_199Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1BC5084()
{
  OUTLINED_FUNCTION_270();
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_110_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_211();
  }

  return result;
}

uint64_t sub_1B1BC512C(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1BC5218(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_153Tm()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v5 = *(v1 + 28);
  }

  v8 = OUTLINED_FUNCTION_76(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_154Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_86();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 24);
    }

    else
    {
      v5 = OUTLINED_FUNCTION_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      v4 = *(v0 + 28);
    }

    v7 = OUTLINED_FUNCTION_62_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1B1BC549C()
{
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_176();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_211();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_207Tm()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 32);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v5 = *(v1 + 36);
  }

  v8 = OUTLINED_FUNCTION_76(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_208Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_86();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 32);
    }

    else
    {
      v5 = OUTLINED_FUNCTION_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      v4 = *(v0 + 36);
    }

    v7 = OUTLINED_FUNCTION_62_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1B1BC56E0()
{
  OUTLINED_FUNCTION_270();
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_176();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_110_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_211();
    }
  }
}

uint64_t sub_1B1BC57B8()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_116_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_211();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_306Tm()
{
  OUTLINED_FUNCTION_61();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_86();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F0, &qword_1B1C3D0B0);
    v5 = *(v1 + 44);
  }

  v6 = OUTLINED_FUNCTION_76(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void __swift_store_extra_inhabitant_index_307Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_120_0();
    sub_1B1C2C5C8();
    OUTLINED_FUNCTION_86();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F0, &qword_1B1C3D0B0);
      v4 = *(v0 + 44);
    }

    v5 = OUTLINED_FUNCTION_62_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1B1BC59E4()
{
  OUTLINED_FUNCTION_270();
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    sub_1B1BC4B28(319, &qword_1EB763C38, type metadata accessor for Realtime_V1_Part, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_110_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_211();
    }
  }
}

uint64_t sub_1B1BC5B74(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1BC5C40(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_324Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 44));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_325Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 44));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1BC5DE8()
{
  OUTLINED_FUNCTION_270();
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_110_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_211();
  }

  return result;
}

void __swift_store_extra_inhabitant_index_226Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B1BC5EF8(uint64_t a1)
{
  sub_1B1BC4B28(319, &qword_1EB763CE0, type metadata accessor for Realtime_V1_RateLimit, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1BC5FD4(uint64_t a1)
{
  sub_1B1BC4B28(319, &qword_1EB762D70, type metadata accessor for Realtime_V1_Session, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_111_1@<X0>(uint64_t a1@<X8>)
{
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = 0;
  v1[10] = a1;
  return 0;
}

void OUTLINED_FUNCTION_112_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_122_0(uint64_t a1)
{

  return sub_1B1B8D9D8(a1, v1, v2, v3);
}

void OUTLINED_FUNCTION_146(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 8;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_1B1B8D9D8(v0 + v2, v1, v3, v4);
}

void OUTLINED_FUNCTION_154(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
}

uint64_t OUTLINED_FUNCTION_155@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B1B8D9D8(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_160@<X0>(uint64_t a1@<X8>)
{

  return sub_1B1B8D9D8(v1 + a1, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_164@<X0>(uint64_t a1@<X8>)
{
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  return 0;
}

BOOL OUTLINED_FUNCTION_171()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1B1B1AFA0(v2, v3, 0);
}

BOOL OUTLINED_FUNCTION_172()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1B1B1AFA0(v2, v3, 0);
}

void OUTLINED_FUNCTION_176()
{
  v3 = MEMORY[0x1E69E6720];

  sub_1B1BC4B28(319, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_196(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_208@<X0>(uint64_t a2@<X8>)
{
  *(v4 + 56) = 0;
  *(v4 + 64) = v3;
  *(v4 + 72) = a2;
  *(v4 + 80) = 0;
  *(v4 + 88) = v3;
  *(v4 + 92) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = v2;
  *(v4 + 120) = 0;
  *(v4 + 128) = v2;

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_209@<X0>(uint64_t a2@<X8>)
{
  v3[4] = v2;
  v3[5] = 0;
  v3[6] = a2;
  v3[7] = 0;
  v3[8] = a2;
  v3[9] = 0;
  v3[10] = a2;
  v3[11] = 0;
  v3[12] = a2;
  v3[13] = 0;
  v3[14] = a2;
  v3[15] = 0;
  v3[16] = a2;

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_216@<X0>(uint64_t a2@<X8>)
{
  v2[6] = 0;
  v2[7] = a2;
  v2[8] = 0;

  return sub_1B1C2C5B8();
}

BOOL OUTLINED_FUNCTION_217()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v0 + 16);

  return sub_1B1B1AFA0(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_218(uint64_t a1)
{

  return sub_1B1C2CB18();
}

__n128 *OUTLINED_FUNCTION_221(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(result->n128_u64 + v2) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_222()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_223()
{

  return sub_1B1C2C7B8();
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

unint64_t OUTLINED_FUNCTION_226()
{

  return sub_1B1BB99FC();
}

uint64_t OUTLINED_FUNCTION_228@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = 4;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_230@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_231(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_235@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 48) = 0;
  *(v2 + 56) = a2;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = a2;
  *(v2 + 88) = 0;
  *(v2 + 96) = a2;

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_236@<X0>(uint64_t a2@<X8>)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = 0;
  *(v4 + 72) = v3;
  *(v4 + 76) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = v2;

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_237()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_238(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_248()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_249()
{

  return sub_1B1C2C5C8();
}

uint64_t OUTLINED_FUNCTION_250()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_251(uint64_t a1)
{
  *(v1 + 48) = 0;

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_253()
{

  return sub_1B1C2C5C8();
}

uint64_t OUTLINED_FUNCTION_254()
{

  return sub_1B1B9C820();
}

uint64_t OUTLINED_FUNCTION_255(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_256(uint64_t a1)
{

  return sub_1B1B8D9D8(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_259()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_260()
{

  return sub_1B1BB85CC();
}

uint64_t OUTLINED_FUNCTION_261(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

uint64_t *OUTLINED_FUNCTION_262(uint64_t a1)
{

  return __swift_allocate_value_buffer(a1, v1);
}

uint64_t OUTLINED_FUNCTION_263()
{

  return sub_1B1BB85CC();
}

void OUTLINED_FUNCTION_265()
{
  v2 = *(v0 + 40);
  *(v1 + 72) = *(v0 + 32);
  *(v1 + 80) = v2;
}

void OUTLINED_FUNCTION_266(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 8;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_278@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v3;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_281@<X0>(uint64_t a1@<X8>)
{

  return sub_1B1B8D9D8(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_282@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a2;

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_284(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

uint64_t sub_1B1BC6EF0(uint64_t a1)
{
  v2 = sub_1B1C2C428();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1B1BC703C(v4);
}

uint64_t sub_1B1BC6FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  swift_beginAccess();
  sub_1B1C2C428();
  OUTLINED_FUNCTION_45();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1B1BC703C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  swift_beginAccess();
  sub_1B1C2C428();
  OUTLINED_FUNCTION_45();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B1BC7124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v22 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_1B1BC78C0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_22;
  v20 = _Block_copy(aBlock);

  sub_1B1C2C9A8();
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v18, v12, v20);
  _Block_release(v20);
  (*(v8 + 8))(v12, v6);
  (*(v14 + 8))(v18, v22);
}

uint64_t sub_1B1BC73D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v16 = a3;
  v17 = a2;
  v4 = sub_1B1C2C428();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition);
  v18 = OBJC_IVAR____TtC14SiriTTSService7Timeout_shouldStop;
  v9 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  swift_beginAccess();
  v10 = (v5 + 16);
  v11 = (v5 + 8);
  while (1)
  {

    [v8 lock];
    v12 = *(a1 + v18);
    if (v12)
    {
      break;
    }

    (*v10)(v7, a1 + v9, v4);
    v13 = sub_1B1C2C378();
    (*v11)(v7, v4);
    v14 = [v8 waitUntilDate_];

    [v8 unlock];

    if ((v14 & 1) == 0)
    {
      return v17(v12);
    }
  }

  [v8 unlock];

  return v17(v12);
}

id sub_1B1BC7598()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition);
  [v1 lock];
  *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_shouldStop) = 1;
  [v1 signal];

  return [v1 unlock];
}

id sub_1B1BC760C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition);
  [v1 lock];
  [v1 signal];

  return [v1 unlock];
}

uint64_t Timeout.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
  sub_1B1C2C428();
  OUTLINED_FUNCTION_45();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t Timeout.__deallocating_deinit()
{
  Timeout.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for Timeout(uint64_t a1)
{
  result = qword_1ED9A4F88;
  if (!qword_1ED9A4F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1BC7794(uint64_t a1)
{
  result = sub_1B1C2C428();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1BC78CC()
{
  v12 = sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  sub_1B1C2D118();
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v8 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_16();
  sub_1B1C2C358();
  v9 = OBJC_IVAR____TtC14SiriTTSService7Timeout_waitCondition;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  v11 = OBJC_IVAR____TtC14SiriTTSService7Timeout_queue;
  sub_1B1AA7918();
  sub_1B1C2C9A8();
  sub_1B1ACD030(&qword_1ED9A9720, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v12);
  *(v0 + v11) = sub_1B1C2D158();
  *(v0 + OBJC_IVAR____TtC14SiriTTSService7Timeout_shouldStop) = 0;
  return v0;
}

uint64_t IsNaturalVoiceCondition.__allocating_init(pool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  IsNaturalVoiceCondition.init(pool:)(a1);
  return v2;
}

uint64_t sub_1B1BC7BA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = IsNaturalVoiceCondition.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1BC7C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1B1C2CBC8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2CBB8();
  v10 = sub_1B1C2CB68();
  v12 = v11;
  result = (*(v6 + 8))(v9, v4);
  if (v12 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B1BC8CB0();
    v14 = sub_1B1BC7D78(v10, v12);
    [v14 setDelegate_];
    [v14 parse];

    swift_beginAccess();
  }

  return result;
}

id sub_1B1BC7D78(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B1C2C298();
  v6 = [v4 initWithData_];

  sub_1B1A94524(a1, a2);
  return v6;
}

uint64_t sub_1B1BC7DF0()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService16SSMLSimpleParser_phonemes;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1BC7EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = a2 == 0x656D656E6F6870 && a3 == 0xE700000000000000;
  if (v11 || (result = sub_1B1C2D7A8(), (result & 1) != 0))
  {
    v13 = sub_1B1A945F4(0x7465626168706C61, 0xE800000000000000, a8);
    v15 = v14;
    v16 = sub_1B1A945F4(26736, 0xE200000000000000, a8);
    v18 = v17;
    v19 = OBJC_IVAR____TtC14SiriTTSService16SSMLSimpleParser_phonemes;
    swift_beginAccess();
    sub_1B1B36F04();
    v20 = *(*(v9 + v19) + 16);
    sub_1B1B3DBD0(v20);
    v21 = *(v9 + v19);
    *(v21 + 16) = v20 + 1;
    v22 = (v21 + 32 * v20);
    v22[4] = v13;
    v22[5] = v15;
    v22[6] = v16;
    v22[7] = v18;
    *(v9 + v19) = v21;
    return swift_endAccess();
  }

  return result;
}

id sub_1B1BC80A8()
{
  *&v0[OBJC_IVAR____TtC14SiriTTSService16SSMLSimpleParser_phonemes] = MEMORY[0x1E69E7CC0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SSMLSimpleParser();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t RoughDurationEstimationAction.__allocating_init(pool:)(uint64_t a1)
{
  OUTLINED_FUNCTION_66();
  swift_allocObject();
  return RoughDurationEstimationAction.init(pool:)(a1);
}

uint64_t RoughDurationEstimationAction.init(pool:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763ED0, &qword_1B1C406F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C405C0;
  *(inited + 32) = 0x41532D7261;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = xmmword_1B1C405D0;
  *(inited + 64) = 1041126916;
  *(inited + 72) = 0x4B442D6164;
  *(inited + 80) = 0xE500000000000000;
  *(inited + 88) = xmmword_1B1C405E0;
  *(inited + 104) = 1032000111;
  *(inited + 112) = 25956;
  *(inited + 120) = 0xE200000000000000;
  *(inited + 128) = xmmword_1B1C405F0;
  *(inited + 144) = 1030859260;
  *(inited + 152) = 28261;
  *(inited + 160) = 0xE200000000000000;
  *(inited + 168) = xmmword_1B1C40600;
  *(inited + 184) = 1030322389;
  *(inited + 192) = 29541;
  *(inited + 200) = 0xE200000000000000;
  *(inited + 208) = xmmword_1B1C40610;
  *(inited + 224) = 1032939635;
  *(inited + 232) = 29286;
  *(inited + 240) = 0xE200000000000000;
  *(inited + 248) = xmmword_1B1C40620;
  *(inited + 264) = 1029248647;
  *(inited + 272) = 0x54492D7469;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = xmmword_1B1C40630;
  *(inited + 304) = 1031127695;
  *(inited + 312) = 0x504A2D616ALL;
  *(inited + 320) = 0xE500000000000000;
  *(inited + 328) = xmmword_1B1C40640;
  *(inited + 344) = 1039113650;
  *(inited + 352) = 0x4F4E2D626ELL;
  *(inited + 360) = 0xE500000000000000;
  *(inited + 368) = xmmword_1B1C40650;
  *(inited + 384) = 1032536982;
  *(inited + 392) = 28526;
  *(inited + 400) = 0xE200000000000000;
  *(inited + 408) = xmmword_1B1C40650;
  *(inited + 424) = 1032536982;
  *(inited + 432) = 0x4C4E2D6C6ELL;
  *(inited + 440) = 0xE500000000000000;
  *(inited + 448) = xmmword_1B1C40660;
  *(inited + 464) = 1032000111;
  *(inited + 472) = 29808;
  *(inited + 480) = 0xE200000000000000;
  *(inited + 488) = xmmword_1B1C40670;
  *(inited + 504) = 1033744941;
  *(inited + 512) = 0x55522D7572;
  *(inited + 520) = 0xE500000000000000;
  *(inited + 528) = xmmword_1B1C40680;
  *(inited + 544) = 1032402764;
  *(inited + 552) = 0x45532D7673;
  *(inited + 560) = 0xE500000000000000;
  *(inited + 568) = xmmword_1B1C40690;
  *(inited + 584) = 1031664566;
  *(inited + 592) = 26746;
  *(inited + 600) = 0xE200000000000000;
  *(inited + 608) = xmmword_1B1C406A0;
  *(inited + 624) = 1032671199;
  *(inited + 632) = 0x4B482D687ALL;
  *(inited + 640) = 0xE500000000000000;
  *(inited + 648) = xmmword_1B1C406B0;
  *(inited + 664) = 1034013377;
  *(inited + 672) = 0x57542D687ALL;
  *(inited + 680) = 0xE500000000000000;
  *(inited + 688) = xmmword_1B1C406C0;
  *(inited + 704) = 1034013377;
  *(inited + 712) = 0x636972656E6567;
  *(inited + 720) = 0xE700000000000000;
  *(inited + 728) = xmmword_1B1C406D0;
  *(inited + 744) = 1031396131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763ED8, &unk_1B1C406F8);
  *(v1 + 32) = sub_1B1C2CAB8();
  v3 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v3;
}

uint64_t sub_1B1BC84BC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v6 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v7 = &v6[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_1B1B2A090(v8, v9, v4);
  v12 = v11;
  v14 = v13;

  if ((v14 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  v16 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v17 = &v16[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];

  v20 = sub_1B1BC863C(2, v19, v18);
  v21 = MEMORY[0x1B27380D0](v20);
  v23 = v22;

  result = sub_1B1B2A090(v21, v23, v4);
  if ((v25 & 0x100000000) == 0 || (result = sub_1B1B2A090(0x636972656E6567, 0xE700000000000000, v4), (v25 & 0x100000000) == 0))
  {
    v10 = result;
    v12 = v24;
    LODWORD(v14) = v25;

LABEL_5:
    *a3 = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BC863C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B1C2CC98();
    v3 = sub_1B1C2CE08();

    return v3;
  }

  return result;
}

void sub_1B1BC86FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1)
  {
    v15 = a1;
    [v15 rangeAtIndex_];
    v7 = sub_1B1C2D028();
    if (v9)
    {
    }

    else
    {
      v10 = v7;
      v11 = v8;
      sub_1B1B36F1C();
      v12 = *(*a6 + 16);
      sub_1B1B3DBE8(v12);

      v13 = *a6;
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
    }
  }
}

void sub_1B1BC87C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

void sub_1B1BC8834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = a1;
    [v10 rangeAtIndex_];
    sub_1B1C2D028();
    if (v5)
    {
    }

    else
    {
      v6 = sub_1B1C2CE08();
      v7 = MEMORY[0x1B27380D0](v6);
      v9 = v8;

      MEMORY[0x1B27381B0](2106144, 0xE300000000000000);

      MEMORY[0x1B27381B0](v7, v9);
    }
  }
}

uint64_t RoughDurationEstimationAction.deinit()
{
  v0 = Buffer.deinit();

  return v0;
}

uint64_t sub_1B1BC89A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RoughDurationEstimationAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

id DurationEstimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DurationEstimator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DurationEstimator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B1BC8AD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1BC8BC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1BC8C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B1BC8CB0()
{
  result = qword_1EB763F60;
  if (!qword_1EB763F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB763F60);
  }

  return result;
}

void sub_1B1BC8D08(int a1)
{
  v3 = [v1 audibleContext];
  v4 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_66_0(&v3[OBJC_IVAR___SiriTTSAudibleContext_audioSessionId], v5);
  *&v3[v4] = a1;
}

void sub_1B1BC8D74(void *a1, char *a2, char *a3)
{
  [a1 lock];
  swift_beginAccess();
  swift_beginAccess();
  sub_1B1B70950();
  v7 = v6;
  swift_endAccess();

  [a1 unlock];
}

unint64_t sub_1B1BC8E3C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B1BCED7C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1B1C2D528();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          OUTLINED_FUNCTION_19_10();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1B1C2D578();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          OUTLINED_FUNCTION_19_10();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

void *sub_1B1BC8FB0(uint64_t a1)
{
  result = sub_1B1B60118(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1B1BCED04(&v5, result, v3, 0, a1);
  }
}

void sub_1B1BC9038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1B1BD0110(a1, *v2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v8)
  {

    MEMORY[0x1B2738320](v9);
    sub_1B1B3E0D4(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    v6 = *v2;
    sub_1B1AA30F4();
    v10 = *(v2[1] + 16);
    sub_1B1AA3234(v10);
    v11 = v2[1];
    *(v11 + 16) = v10 + 1;
    *(v11 + 8 * v10 + 32) = v7;
    v2[1] = v11;
  }

  if (a2)
  {
    sub_1B1BD0110(a2, v6);
    if (v12)
    {

      MEMORY[0x1B2738320](v13);
      sub_1B1B3E0D4(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1C2CEC8();
      v6 = *v2;
      sub_1B1AA30F4();
      v14 = *(v2[1] + 16);
      sub_1B1AA3234(v14);
      v15 = v2[1];
      *(v15 + 16) = v14 + 1;
      *(v15 + 8 * v14 + 32) = v7;
      v2[1] = v15;
    }

    sub_1B1BD0110(a1, v6);
    if (v17)
    {
      goto LABEL_16;
    }

    v18 = v16;
    sub_1B1BD0110(a2, v6);
    if (v20)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v21 = v19;
    v22 = v3[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1B1C00CDC(v22);
      v22 = v26;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (v18 < v22[2])
        {
          v23 = &v22[v18];
          sub_1B1AA149C();
          v24 = *(v23[4] + 16);
          sub_1B1AA14B4(v24);
          v25 = v23[4];
          *(v25 + 16) = v24 + 1;
          *(v25 + 8 * v24 + 32) = v21;
          v3[1] = v22;
          return;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_1B1BC9214(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    result = sub_1B1C2D468();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v5 = a1 & 0xC000000000000001;
  sub_1B1A9EC44(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B2738A20](0, a1);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  sub_1B1BD0110(v6, *v1);
  if (v7)
  {

    MEMORY[0x1B2738320](v8);
    sub_1B1B3E0D4(*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    sub_1B1AA30F4();
    v9 = *(v1[1] + 16);
    sub_1B1AA3234(v9);
    v10 = v1[1];
    *(v10 + 16) = v9 + 1;
    *(v10 + 8 * v9 + 32) = MEMORY[0x1E69E7CC0];

    v2[1] = v10;
  }

  else
  {
  }

  result = sub_1B1A9547C();
  v11 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (result != 1)
  {
    sub_1B1A9EC44(0, v5 == 0, a1);
    sub_1B1A9EC44(v11 - 1, v5 == 0, a1);
    sub_1B1A9EC44(1uLL, v5 == 0, a1);
    sub_1B1A9EC44(v11, v5 == 0, a1);
    result = 0;
    do
    {
      v12 = result + 1;
      if (v5)
      {
        v13 = MEMORY[0x1B2738A20]();
        v14 = MEMORY[0x1B2738A20](v12, a1);
      }

      else
      {
        v15 = a1 + 8 * result;
        v13 = *(v15 + 32);
        v14 = *(v15 + 40);
      }

      sub_1B1BC9038(v13, v14);

      result = v12;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_1B1BC941C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1B1BC94B0(v1, v2);
}

uint64_t sub_1B1BC945C()
{
  v1 = (v0 + OBJC_IVAR___SiriTTSServiceSession__clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B1BC94B0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SiriTTSServiceSession__clientId);
  OUTLINED_FUNCTION_66_0(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_1B1BC9508())(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B1BC9564()
{
  v1 = (v0 + OBJC_IVAR___SiriTTSServiceSession__clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = sub_1B1A91B08(v3);
    if (v5)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id ServiceSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ServiceSession.init()()
{
  v1 = v0;
  v2 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = &v0[OBJC_IVAR___SiriTTSServiceSession__clientId];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR___SiriTTSServiceSession_tasksLock;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v11 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  type metadata accessor for TaskOperation();
  *&v1[v11] = sub_1B1C2CAB8();
  v12 = OBJC_IVAR___SiriTTSServiceSession_queue;
  sub_1B1AA7918();
  sub_1B1C2C9B8();
  v34 = 1;
  v13 = OUTLINED_FUNCTION_8_25();
  v16 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(v13, v14, v8, v15);
  (*(v4 + 8))(v8, v2);
  *&v1[v12] = v16;
  v17 = OBJC_IVAR___SiriTTSServiceSession_accessoryId;
  v18 = sub_1B1C2C478();
  __swift_storeEnumTagSinglePayload(&v1[v17], 1, 1, v18);
  v33.receiver = v1;
  v33.super_class = type metadata accessor for ServiceSession(0);
  v19 = objc_msgSendSuper2(&v33, sel_init);
  v20 = qword_1ED9A9288;
  v21 = v19;
  if (v20 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v22 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v22, qword_1ED9A9120);
  v23 = sub_1B1C2C888();
  v24 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_21_0();
    v25 = OUTLINED_FUNCTION_14_16();
    *v8 = 138412290;
    *(v8 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    OUTLINED_FUNCTION_29_8();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_1B1A90C20(v25, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_11_23();
  }

  return v21;
}

uint64_t type metadata accessor for ServiceSession(uint64_t a1)
{
  result = qword_1EB763F80;
  if (!qword_1EB763F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ServiceSession.init(accessoryId:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v10 = (v9 - v8);
  v11 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = &v1[OBJC_IVAR___SiriTTSServiceSession__clientId];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = OBJC_IVAR___SiriTTSServiceSession_tasksLock;
  *&v2[v19] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v20 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  type metadata accessor for TaskOperation();
  *&v2[v20] = sub_1B1C2CAB8();
  v21 = OBJC_IVAR___SiriTTSServiceSession_queue;
  sub_1B1AA7918();
  sub_1B1C2C9B8();
  LOBYTE(v48) = 1;
  v22 = OUTLINED_FUNCTION_8_25();
  v25 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(v22, v23, v17, v24);
  (*(v13 + 8))(v17, v11);
  *&v2[v21] = v25;
  v26 = OBJC_IVAR___SiriTTSServiceSession_accessoryId;
  v47 = v6;
  v27 = *(v6 + 16);
  v27(&v2[OBJC_IVAR___SiriTTSServiceSession_accessoryId], a1, v4);
  __swift_storeEnumTagSinglePayload(&v2[v26], 0, 1, v4);
  v49.receiver = v2;
  v49.super_class = type metadata accessor for ServiceSession(0);
  v28 = objc_msgSendSuper2(&v49, sel_init);
  v29 = qword_1ED9A9288;
  v30 = v28;
  if (v29 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v31 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v31, qword_1ED9A9120);
  v27(v10, a1, v4);
  v32 = sub_1B1C2C888();
  v33 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v46 = a1;
    v43 = OUTLINED_FUNCTION_17_2();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v34 = 138412546;
    *(v34 + 4) = v30;
    *v43 = v30;
    *(v34 + 12) = 2080;
    sub_1B1BCF378(&unk_1EB764220, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v35 = v10;
    v44 = v30;
    v36 = sub_1B1C2D778();
    v38 = v37;
    v39 = *(v47 + 8);
    v39(v35, v4);
    v40 = sub_1B1A930E4(v36, v38, &v48);

    *(v34 + 14) = v40;
    _os_log_impl(&dword_1B1A8A000, v32, v33, "Init ServiceSession %@, with accessory %s", v34, 0x16u);
    sub_1B1A90C20(v43, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v39(v46, v4);
  }

  else
  {

    v41 = *(v6 + 8);
    v41(a1, v4);
    v41(v10, v4);
  }

  return v30;
}

id ServiceSession.__deallocating_deinit()
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = v0;
  v4 = sub_1B1C2C888();
  v5 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_21_0();
    v6 = OUTLINED_FUNCTION_14_16();
    *v1 = 138412290;
    *(v1 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    OUTLINED_FUNCTION_29_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_1B1A90C20(v6, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_11_23();
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for ServiceSession(0);
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

void sub_1B1BC9FE8(unint64_t a1, char *a2, void (**a3)(void, void))
{
  v149 = a2;
  v5 = sub_1B1C2C988();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v144 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1B1C2C9D8();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2C1C8();
  v153 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v133 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v127 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v151 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v137 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v127 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  _Block_copy(a3);
  if (qword_1ED9A96B8 != -1)
  {
LABEL_52:
    swift_once();
  }

  v141 = qword_1ED9A96C0;
  sub_1B1A91998();
  if (v22 != 2 && (v22 & 1) != 0)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v23 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v23, qword_1ED9A9120);
    v24 = sub_1B1C2C888();
    v25 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B1A8A000, v24, v25, "Skipped #PreviewRequest: TTS is disabled.", v26, 2u);
      MEMORY[0x1B2739FD0](v26, -1, -1);
    }

    a3[2](a3, 0);

    _Block_release(a3);
    return;
  }

  v132 = v9;
  v139 = v6;
  v140 = v5;
  v27 = mach_absolute_time();
  v28 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  swift_beginAccess();
  *(a1 + v28) = v27;
  v29 = v149;
  v30 = sub_1B1BC9564();
  v32 = v31;
  v33 = (a1 + OBJC_IVAR___SiriTTSBaseRequest_clientBundleId);
  swift_beginAccess();
  *v33 = v30;
  v33[1] = v32;

  sub_1B1BCECA4(v29 + OBJC_IVAR___SiriTTSServiceSession_accessoryId, v20, &qword_1EB761DF8, qword_1B1C40850);
  v34 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
  swift_beginAccess();
  sub_1B1A91B74(v20, a1 + v34);
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v146 = a3;
  v35 = sub_1B1C2C8A8();
  v36 = __swift_project_value_buffer(v35, qword_1ED9A9120);
  v20 = a1;
  v138 = v36;
  v37 = sub_1B1C2C888();
  v6 = sub_1B1C2D0D8();

  v38 = os_log_type_enabled(v37, v6);
  v9 = v151;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138543362;
    *(v39 + 4) = v20;
    *v40 = v20;
    v41 = v20;
    _os_log_impl(&dword_1B1A8A000, v37, v6, "Start #PreviewRequest, %{public}@", v39, 0xCu);
    sub_1B1A90C20(v40, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v40, -1, -1);
    MEMORY[0x1B2739FD0](v39, -1, -1);
  }

  v148 = v21;

  if (!sub_1B1AD5C10())
  {
    v42 = [objc_opt_self() sharedInstance];
    v43 = [v42 opaqueSessionID];

    sub_1B1BC8D08(v43);
  }

  v44 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  v5 = v149;
  swift_beginAccess();
  v45 = *(v5 + v44);
  a3 = (v45 + 64);
  v46 = *(v45 + 64);
  v47 = *(v45 + 32);
  v147 = 1;
  v48 = 1 << v47;
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  a1 = v49 & v46;
  v21 = (v48 + 63) >> 6;
  v130 = (v153 + 32);
  v131 = (v153 + 8);
  v152 = v45;

  v50 = 0;
  while (1)
  {
    v51 = v50;
    if (!a1)
    {
      break;
    }

LABEL_24:
    v52 = *(*(v152 + 56) + ((v50 << 9) | (8 * __clz(__rbit64(a1)))));
    v150 = OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request;
    v53 = *&v52[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request];
    v164 = qword_1F28D9208;
    v6 = swift_dynamicCastObjCProtocolConditional();
    v153 = v52;
    if (v6)
    {
      swift_getObjectType();
      v54 = v52;
      v55 = v20;
      v56 = v53;
      v5 = AudibleRequestProtocol.audioSessionId.getter();

      v20 = v55;
      v9 = v151;
    }

    else
    {
      v57 = v52;
      v5 = 0;
    }

    a1 &= a1 - 1;
    v58 = sub_1B1AD5C10();
    if (v6)
    {
      v59 = v5 == v58;
    }

    else
    {
      v59 = 0;
    }

    if (v59)
    {
      v129 = v20;
      v60 = *(v150 + v153);
      type metadata accessor for PreviewRequest(0);
      v61 = swift_dynamicCastClass();
      v62 = (v61 == 0) & v147;
      v63 = v137;
      if (v61 && ((v147 ^ 1) & 1) == 0)
      {
        v64 = v60;
        if ([v153 isCancelled])
        {

          goto LABEL_42;
        }

        v147 = v64;
        v65 = v136;
        sub_1B1B12A30();
        sub_1B1B12A30();
        v66 = *(v135 + 48);
        v67 = v65;
        v68 = v134;
        sub_1B1BCECA4(v67, v134, &unk_1EB761F00, &qword_1B1C36480);
        v128 = v66;
        sub_1B1BCECA4(v63, v68 + v66, &unk_1EB761F00, &qword_1B1C36480);
        if (__swift_getEnumTagSinglePayload(v68, 1, v132) == 1)
        {

          sub_1B1A90C20(v63, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v136, &unk_1EB761F00, &qword_1B1C36480);
          if (__swift_getEnumTagSinglePayload(v68 + v128, 1, v132) == 1)
          {
            sub_1B1A90C20(v68, &unk_1EB761F00, &qword_1B1C36480);
            v62 = 0;
            goto LABEL_43;
          }

LABEL_41:
          sub_1B1A90C20(v68, &qword_1EB763F70, &unk_1B1C407E8);
LABEL_42:
          v62 = 1;
          goto LABEL_43;
        }

        sub_1B1BCECA4(v68, v9, &unk_1EB761F00, &qword_1B1C36480);
        v69 = v128;
        if (__swift_getEnumTagSinglePayload(v68 + v128, 1, v132) == 1)
        {

          sub_1B1A90C20(v137, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v136, &unk_1EB761F00, &qword_1B1C36480);
          (*v131)(v9, v132);
          goto LABEL_41;
        }

        v70 = v68 + v69;
        v71 = v132;
        v72 = v133;
        (*v130)(v133, v70, v132);
        sub_1B1BCF378(&qword_1EB763F78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        LODWORD(v128) = sub_1B1C2CB18();

        v73 = *v131;
        v74 = v72;
        v9 = v151;
        (*v131)(v74, v71);
        sub_1B1A90C20(v137, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A90C20(v136, &unk_1EB761F00, &qword_1B1C36480);
        v73(v9, v71);
        sub_1B1A90C20(v68, &unk_1EB761F00, &qword_1B1C36480);
        v62 = v128 ^ 1;
      }

LABEL_43:
      v6 = v153;
      v5 = *(v150 + v153);
      sub_1B1BCE560(v5);

      v147 = v62;
      v20 = v129;
    }

    else
    {
    }
  }

  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v50 >= v21)
    {
      break;
    }

    a1 = a3[v50];
    ++v51;
    if (a1)
    {
      goto LABEL_24;
    }
  }

  if (v147)
  {
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v75 = ObjectPool.init()();
    v76 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v76);
    sub_1B1B76328(v141);
    v162 = MEMORY[0x1E69E7CC0];
    v163 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v78 = type metadata accessor for RequestParsingAction();
    swift_allocObject();

    v80 = RequestParsingAction.init(pool:)(v79);
    type metadata accessor for WorkflowNode();
    v81 = swift_allocObject();
    v81[5] = v78;
    v81[6] = &protocol witness table for RequestParsingAction;
    v81[2] = v80;
    *(inited + 32) = v81;
    v82 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v152 = v75;
    v84 = AudioPlaybackAction.init(pool:)(v83);
    v85 = swift_allocObject();
    v85[5] = v82;
    v85[6] = &protocol witness table for AudioPlaybackAction;
    v85[2] = v84;
    *(inited + 40) = v85;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    v155 = v162;
    v156 = v163;
    type metadata accessor for Workflow();
    swift_allocObject();
    v86 = v76;

    v150 = v76;
    v153 = Workflow.init(graph:notification:errorHandlers:)();
    v147 = 0;
    v87 = type metadata accessor for DelegateHandler();
    v88 = swift_allocObject();
    v89 = v20;
    v90 = v86;
    v91 = v149;
    v92 = sub_1B1BCEF98(v90, v91, v89, v88);
    v93 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v151 = v90;
    v94 = AudioHandler.init(notificationCenter:)(v151);
    v95 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1B1C36280;
    v141 = v92;
    *(v96 + 32) = v92;
    *(v96 + 88) = v93;
    *(v96 + 56) = v87;
    *(v96 + 64) = v94;
    *(v95 + 16) = v96;
    v97 = v95;
    v98 = type metadata accessor for TaskOperation();
    v99 = objc_allocWithZone(v98);
    v100 = &v99[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *v100 = 0;
    *(v100 + 1) = 0;
    *(v100 + 2) = 1;
    *&v99[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v89;
    *&v99[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v153;
    *&v99[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v91;
    v149 = v94;
    *&v99[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v94;
    *&v99[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v150;
    *&v99[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v161.receiver = v99;
    v161.super_class = v98;
    swift_retain_n();
    v101 = v89;
    v102 = v91;

    v103 = objc_msgSendSuper2(&v161, sel_init);
    v104 = swift_allocObject();
    v104[2] = v103;
    v104[3] = v101;
    v104[4] = v102;
    v104[5] = sub_1B1A95808;
    v104[6] = v148;
    v104[7] = v97;
    v138 = v97;
    v159 = sub_1B1BCF6A4;
    v160 = v104;
    v155 = MEMORY[0x1E69E9820];
    v156 = 1107296256;
    v150 = &v157;
    v157 = sub_1B1A95870;
    v158 = &block_descriptor_63;
    v105 = _Block_copy(&v155);
    v106 = v103;
    v137 = v101;
    v107 = v102;
    v108 = v106;

    sub_1B1A94514(sub_1B1BCF6A4, v104);

    [v108 setCompletionBlock_];
    _Block_release(v105);

    v109 = *&v107[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v110 = v137;
    v111 = v107;
    v112 = v108;
    [v109 lock];
    sub_1B1BCE400(v111, v110, v112);
    [v109 unlock];

    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    v159 = sub_1B1BCF6A8;
    v160 = v113;
    v155 = MEMORY[0x1E69E9820];
    v156 = 1107296256;
    v157 = sub_1B1A95870;
    v158 = &block_descriptor_60_1;
    v114 = _Block_copy(&v155);
    v115 = v112;
    v116 = v142;
    sub_1B1C2C9A8();
    v154 = MEMORY[0x1E69E7CC0];
    sub_1B1BCF378(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v117 = v144;
    v118 = v140;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v116, v117, v114);
    _Block_release(v114);

    (v139)[1](v117, v118);
    (*(v143 + 8))(v116, v145);

    v119 = v146;
  }

  else
  {
    v120 = v20;
    v121 = sub_1B1C2C888();
    v122 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v123 = 138543362;
      *(v123 + 4) = v120;
      *v124 = v120;
      v125 = v120;
      _os_log_impl(&dword_1B1A8A000, v121, v122, "#PreviewRequest ignored for %{public}@", v123, 0xCu);
      sub_1B1A90C20(v124, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v124, -1, -1);
      MEMORY[0x1B2739FD0](v123, -1, -1);
    }

    v126 = v146;
    v146[2](v146, 0);

    v119 = v126;
  }

  _Block_release(v119);
}

uint64_t sub_1B1BCB310(char *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3)
{
  v159 = a3;
  v158 = a2;
  v4 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v156 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v155 = v15 - v14;
  v16 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v163 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  v143 = v20 - v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v139 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v144 = (&v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v147 = &v139 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v153 = &v139 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v139 - v30;
  if (qword_1ED9A96B8 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_5_27(&qword_1ED9A96B8);
  }

  v154 = qword_1ED9A96C0;
  sub_1B1A91998();
  if (v32 != 2 && (v32 & 1) != 0)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v33 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v33, qword_1ED9A9120);
    v34 = sub_1B1C2C888();
    v35 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v34, v35))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
LABEL_46:
      OUTLINED_FUNCTION_11();
    }

    goto LABEL_47;
  }

  v142 = v16;
  v151 = v6;
  v152 = v4;
  v41 = mach_absolute_time();
  v42 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_66_0(&a1[OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime], v176);
  *&a1[v42] = v41;
  v43 = v160;
  v44 = sub_1B1BC9564();
  v46 = v45;
  v6 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  OUTLINED_FUNCTION_66_0(&a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId], v175);
  *v6 = v44;
  v6[1] = v46;

  sub_1B1BCECA4(v43 + OBJC_IVAR___SiriTTSServiceSession_accessoryId, v31, &qword_1EB761DF8, qword_1B1C40850);
  v47 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1A91B74(v31, &a1[v47]);
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v48 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v48, qword_1ED9A9120);
  v31 = a1;
  v148 = v47;
  v49 = sub_1B1C2C888();
  v50 = sub_1B1C2D0D8();

  v16 = "OptionalNotificationHandling";
  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_21_0();
    v6 = OUTLINED_FUNCTION_17_2();
    *v51 = 138543362;
    *(v51 + 4) = v31;
    *v6 = v31;
    v52 = v31;
    _os_log_impl(&dword_1B1A8A000, v49, v50, "Start #PreviewRequest, %{public}@", v51, 0xCu);
    sub_1B1A90C20(v6, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v149 = v10;
  v150 = v11;

  if (!sub_1B1AD5C10())
  {
    v53 = [objc_opt_self() sharedInstance];
    v54 = [v53 opaqueSessionID];

    sub_1B1BC8D08(v54);
  }

  v55 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  v4 = v160;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v56 = *&v4[v55];
  a1 = (v56 + 64);
  v57 = *(v56 + 64);
  v58 = *(v56 + 32);
  v157 = 1;
  v59 = 1 << v58;
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v11 = v60 & v57;
  v10 = (v59 + 63) >> 6;
  v140 = (v163 + 32);
  v141 = (v163 + 8);
  v163 = v56;

  v61 = 0;
  v161 = v31;
  while (1)
  {
    v62 = v61;
    if (!v11)
    {
      break;
    }

LABEL_21:
    v16 = *(*(v163 + 56) + ((v61 << 9) | (8 * __clz(__rbit64(v11)))));
    v162 = OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request;
    v63 = *&v16[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request];
    v174 = qword_1F28D9208;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      swift_getObjectType();
      v64 = v16;
      v65 = v63;
      v4 = AudibleRequestProtocol.audioSessionId.getter();

      v31 = v161;
    }

    else
    {
      v66 = v16;
      v4 = 0;
    }

    v11 &= v11 - 1;
    v67 = sub_1B1AD5C10();
    if (v6)
    {
      v68 = v4 == v67;
    }

    else
    {
      v68 = 0;
    }

    if (v68)
    {
      v6 = *&v16[v162];
      type metadata accessor for PreviewRequest(0);
      v69 = swift_dynamicCastClass();
      v70 = (v69 == 0) & v157;
      v71 = v153;
      if (v69 && ((v157 ^ 1) & 1) == 0)
      {
        v72 = v6;
        if ([v16 isCancelled])
        {

          goto LABEL_39;
        }

        v157 = v72;
        sub_1B1B12A30();
        v73 = v147;
        sub_1B1B12A30();
        v74 = *(v145 + 48);
        v75 = v71;
        v76 = v146;
        sub_1B1BCECA4(v75, v146, &unk_1EB761F00, &qword_1B1C36480);
        v139 = v74;
        v77 = v76 + v74;
        v78 = v73;
        sub_1B1BCECA4(v73, v77, &unk_1EB761F00, &qword_1B1C36480);
        v79 = v142;
        if (__swift_getEnumTagSinglePayload(v76, 1, v142) == 1)
        {

          v80 = v78;
          v6 = &qword_1B1C36480;
          sub_1B1A90C20(v80, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v153, &unk_1EB761F00, &qword_1B1C36480);
          if (__swift_getEnumTagSinglePayload(v76 + v139, 1, v79) == 1)
          {
            sub_1B1A90C20(v76, &unk_1EB761F00, &qword_1B1C36480);
            v70 = 0;
            goto LABEL_40;
          }

LABEL_38:
          sub_1B1A90C20(v76, &qword_1EB763F70, &unk_1B1C407E8);
LABEL_39:
          v70 = 1;
          goto LABEL_40;
        }

        v6 = v144;
        sub_1B1BCECA4(v76, v144, &unk_1EB761F00, &qword_1B1C36480);
        v81 = v139;
        if (__swift_getEnumTagSinglePayload(v76 + v139, 1, v79) == 1)
        {

          sub_1B1A90C20(v147, &unk_1EB761F00, &qword_1B1C36480);
          sub_1B1A90C20(v153, &unk_1EB761F00, &qword_1B1C36480);
          (*v141)(v6, v79);
          goto LABEL_38;
        }

        v82 = v143;
        (*v140)(v143, v76 + v81, v79);
        sub_1B1BCF378(&qword_1EB763F78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        LODWORD(v139) = sub_1B1C2CB18();

        v83 = *v141;
        (*v141)(v82, v79);
        v6 = &qword_1B1C36480;
        sub_1B1A90C20(v147, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A90C20(v153, &unk_1EB761F00, &qword_1B1C36480);
        v83(v144, v79);
        sub_1B1A90C20(v146, &unk_1EB761F00, &qword_1B1C36480);
        v70 = v139 ^ 1;
      }

LABEL_40:
      v4 = *&v16[v162];
      sub_1B1BCE560(v4);

      v157 = v70;
      v31 = v161;
    }

    else
    {
    }
  }

  while (1)
  {
    v61 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v61 >= v10)
    {
      break;
    }

    v11 = *&a1[8 * v61];
    ++v62;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  if (v157)
  {
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v84 = ObjectPool.init()();
    v85 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v85);
    sub_1B1B76328(v154);
    v172 = MEMORY[0x1E69E7CC0];
    v173 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v87 = type metadata accessor for RequestParsingAction();
    OUTLINED_FUNCTION_24_6(v87);

    v89 = RequestParsingAction.init(pool:)(v88);
    type metadata accessor for WorkflowNode();
    OUTLINED_FUNCTION_13_22();
    v90 = swift_allocObject();
    v90[5] = v87;
    v90[6] = &protocol witness table for RequestParsingAction;
    v90[2] = v89;
    *(inited + 32) = v90;
    v91 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v162 = v84;
    v93 = AudioPlaybackAction.init(pool:)(v92);
    OUTLINED_FUNCTION_13_22();
    v94 = swift_allocObject();
    v94[5] = v91;
    v94[6] = &protocol witness table for AudioPlaybackAction;
    v94[2] = v93;
    *(inited + 40) = v94;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    v165 = v172;
    v166 = v173;
    type metadata accessor for Workflow();
    swift_allocObject();
    v95 = v85;

    v163 = Workflow.init(graph:notification:errorHandlers:)();
    v157 = 0;
    v96 = type metadata accessor for DelegateHandler();
    v97 = OUTLINED_FUNCTION_24_6(v96);
    v98 = v161;
    v99 = v95;
    v100 = v160;
    v101 = sub_1B1BCEF98(v99, v100, v98, v97);
    v102 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v161 = v99;
    v103 = AudioHandler.init(notificationCenter:)(v161);
    OUTLINED_FUNCTION_17();
    v104 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1B1C36280;
    v154 = v101;
    *(v105 + 32) = v101;
    *(v105 + 88) = v102;
    *(v105 + 56) = v96;
    *(v105 + 64) = v103;
    *(v104 + 16) = v105;
    v106 = type metadata accessor for TaskOperation();
    v107 = objc_allocWithZone(v106);
    v108 = &v107[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *v108 = 0;
    *(v108 + 1) = 0;
    *(v108 + 2) = 1;
    *&v107[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v98;
    *&v107[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v163;
    *&v107[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v100;
    v160 = v103;
    *&v107[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v103;
    *&v107[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v85;
    *&v107[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v171.receiver = v107;
    v171.super_class = v106;
    swift_retain_n();
    v109 = v98;
    v110 = v100;

    v111 = objc_msgSendSuper2(&v171, sel_init);
    v112 = swift_allocObject();
    v112[2] = v111;
    v112[3] = v109;
    v113 = v158;
    v114 = v159;
    v112[4] = v110;
    v112[5] = v113;
    v112[6] = v114;
    v112[7] = v104;
    v153 = v104;
    v169 = sub_1B1BCF364;
    v170 = v112;
    v165 = MEMORY[0x1E69E9820];
    v166 = 1107296256;
    v158 = &v167;
    v167 = sub_1B1A95870;
    v168 = &block_descriptor_9_2;
    v115 = _Block_copy(&v165);
    v116 = v111;
    v148 = v109;
    v117 = v110;
    v118 = v116;

    sub_1B1A94514(sub_1B1BCF364, v112);

    [v118 setCompletionBlock_];
    _Block_release(v115);

    v119 = *&v117[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v120 = v148;
    v121 = v117;
    v122 = v118;
    [v119 lock];
    sub_1B1BCE400(v121, v120, v122);
    [v119 unlock];

    OUTLINED_FUNCTION_17();
    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    v169 = sub_1B1BCF368;
    v170 = v123;
    v165 = MEMORY[0x1E69E9820];
    v166 = 1107296256;
    v167 = sub_1B1A95870;
    v168 = &block_descriptor_24;
    v124 = _Block_copy(&v165);
    v125 = v122;
    v126 = v155;
    sub_1B1C2C9A8();
    v164 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_24();
    sub_1B1BCF378(v127, v128, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v129 = v149;
    v130 = v152;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v126, v129, v124);
    _Block_release(v124);

    (v151[1])(v129, v130);
    (*(v156 + 8))(v126, v150);
  }

  v132 = v31;
  v34 = sub_1B1C2C888();
  v133 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v34, v133))
  {
    v134 = OUTLINED_FUNCTION_21_0();
    v135 = OUTLINED_FUNCTION_17_2();
    *v134 = 138543362;
    *(v134 + 4) = v132;
    *v135 = v132;
    v136 = v132;
    OUTLINED_FUNCTION_13_0(&dword_1B1A8A000, v137, v138, "#PreviewRequest ignored for %{public}@");
    sub_1B1A90C20(v135, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    goto LABEL_46;
  }

LABEL_47:

  return (v158)(0);
}

uint64_t sub_1B1BCC454(uint64_t a1, void *a2, char *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = sub_1B1AA9FF0();
  if (v10)
  {
    v11 = v10;
    v38 = a3;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    v13 = a2;
    v14 = v11;
    v15 = sub_1B1C2C888();
    v16 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v15, v16))
    {
      v35 = a4;
      v17 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v17 = 134218242;
      v36 = a2;
      v18 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v17 + 4) = *&v13[v18];

      *(v17 + 12) = 2080;
      v19 = [v14 localizedDescription];
      v20 = sub_1B1C2CB58();
      v22 = v21;

      v23 = sub_1B1A930E4(v20, v22, v39);
      a2 = v36;

      *(v17 + 14) = v23;
      _os_log_impl(&dword_1B1A8A000, v15, v16, "#Error #PreviewRequest id %llu, error: %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1B2739FD0](v34, -1, -1);
      v24 = v17;
      a4 = v35;
      MEMORY[0x1B2739FD0](v24, -1, -1);
    }

    else
    {
    }

    a3 = v38;
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);
    v26 = a2;
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v27, v28))
    {
      v37 = a2;
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      v30 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v29 + 4) = *&v26[v30];

      _os_log_impl(&dword_1B1A8A000, v27, v28, "#Success #PreviewRequest id %llu", v29, 0xCu);
      v31 = v29;
      a2 = v37;
      MEMORY[0x1B2739FD0](v31, -1, -1);
    }

    else
    {
    }
  }

  sub_1B1BC8D74(*&a3[OBJC_IVAR___SiriTTSServiceSession_tasksLock], a3, a2);
  v32 = sub_1B1AA9FF0();
  a4();

  swift_beginAccess();
  *(a6 + 16) = MEMORY[0x1E69E7CC0];
}

void sub_1B1BCC830(char *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v90 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2C9D8();
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v88 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v81 - v12;
  v91 = swift_allocObject();
  *(v91 + 16) = a3;
  _Block_copy(a3);
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED9A96C0;
  sub_1B1A91998();
  if (v15 == 2 || (v15 & 1) == 0)
  {
    v86 = v6;
    v87 = a3;
    v20 = mach_absolute_time();
    v21 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *&a1[v21] = v20;
    v22 = sub_1B1BC9564();
    v24 = v23;
    v25 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    swift_beginAccess();
    *v25 = v22;
    *(v25 + 1) = v24;

    sub_1B1BCECA4(&a2[OBJC_IVAR___SiriTTSServiceSession_accessoryId], v13, &qword_1EB761DF8, qword_1B1C40850);
    v26 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
    swift_beginAccess();
    sub_1B1A91B74(v13, &a1[v26]);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v27 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v27, qword_1ED9A9120);
    v28 = a1;
    v29 = sub_1B1C2C888();
    v30 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_1B1A8A000, v29, v30, "Start #AudioHintRequest, %{public}@", v31, 0xCu);
      sub_1B1A90C20(v32, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v32, -1, -1);
      MEMORY[0x1B2739FD0](v31, -1, -1);
    }

    if (!sub_1B1AD5C10())
    {
      v34 = [objc_opt_self() sharedInstance];
      v35 = [v34 opaqueSessionID];

      sub_1B1BC8D08(v35);
    }

    v84 = v9;
    v85 = v7;
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v36 = ObjectPool.init()();
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v37);
    sub_1B1B76328(v14);
    v101 = MEMORY[0x1E69E7CC0];
    v102 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v39 = type metadata accessor for RequestParsingAction();
    swift_allocObject();

    v41 = RequestParsingAction.init(pool:)(v40);
    type metadata accessor for WorkflowNode();
    v42 = swift_allocObject();
    v42[5] = v39;
    v42[6] = &protocol witness table for RequestParsingAction;
    v42[2] = v41;
    *(inited + 32) = v42;
    v43 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v83 = v36;
    v45 = AudioPlaybackAction.init(pool:)(v44);
    v46 = swift_allocObject();
    v46[5] = v43;
    v46[6] = &protocol witness table for AudioPlaybackAction;
    v46[2] = v45;
    *(inited + 40) = v46;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    aBlock = v101;
    v95 = v102;
    type metadata accessor for Workflow();
    swift_allocObject();
    v47 = v37;

    v92 = Workflow.init(graph:notification:errorHandlers:)();
    v48 = type metadata accessor for DelegateHandler();
    v49 = swift_allocObject();
    v50 = v28;
    v51 = v47;
    v52 = a2;
    v53 = sub_1B1BCEF98(v51, v52, v50, v49);
    v54 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v82 = v51;
    v55 = AudioHandler.init(notificationCenter:)(v82);
    v56 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1B1C36280;
    v81[2] = v53;
    *(v57 + 32) = v53;
    *(v57 + 88) = v54;
    *(v57 + 56) = v48;
    *(v57 + 64) = v55;
    *(v56 + 16) = v57;
    v58 = v56;
    v59 = type metadata accessor for TaskOperation();
    v60 = objc_allocWithZone(v59);
    v61 = &v60[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *(v61 + 2) = 1;
    *v61 = 0;
    *(v61 + 1) = 0;
    *&v60[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v50;
    *&v60[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v92;
    *&v60[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v52;
    v81[3] = v55;
    *&v60[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v55;
    *&v60[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v37;
    *&v60[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v100.receiver = v60;
    v100.super_class = v59;
    swift_retain_n();
    v62 = v50;
    v63 = v52;

    v64 = objc_msgSendSuper2(&v100, sel_init);
    v65 = swift_allocObject();
    v65[2] = v64;
    v65[3] = v62;
    v66 = v91;
    v65[4] = sub_1B1A95AD0;
    v65[5] = v66;
    v81[1] = v58;
    v65[6] = v58;
    v98 = sub_1B1BCF6A0;
    v99 = v65;
    aBlock = MEMORY[0x1E69E9820];
    v95 = 1107296256;
    v81[0] = &v96;
    v96 = sub_1B1A95870;
    v97 = &block_descriptor_44;
    v67 = _Block_copy(&aBlock);
    v68 = v64;
    v69 = v62;
    v70 = v68;

    sub_1B1A94514(sub_1B1BCF6A0, v65);

    [v70 setCompletionBlock_];
    _Block_release(v67);

    v71 = *&v63[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v72 = v69;
    v73 = v63;
    v74 = v70;
    [v71 lock];
    sub_1B1BCE400(v73, v72, v74);
    [v71 unlock];

    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    v98 = sub_1B1BCF6A8;
    v99 = v75;
    aBlock = MEMORY[0x1E69E9820];
    v95 = 1107296256;
    v96 = sub_1B1A95870;
    v97 = &block_descriptor_41;
    v76 = _Block_copy(&aBlock);
    v77 = v74;
    v78 = v88;
    sub_1B1C2C9A8();
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B1BCF378(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v79 = v90;
    v80 = v86;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v78, v79, v76);
    _Block_release(v76);

    (*(v85 + 8))(v79, v80);
    (*(v89 + 8))(v78, v84);

    _Block_release(v87);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v16, qword_1ED9A9120);
    v17 = sub_1B1C2C888();
    v18 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B1A8A000, v17, v18, "Skipped #AudioHintRequest: TTS is disabled.", v19, 2u);
      MEMORY[0x1B2739FD0](v19, -1, -1);
    }

    a3[2](a3, 0);

    _Block_release(a3);
  }
}

uint64_t sub_1B1BCD524(char *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v109 = a3;
  v108 = a2;
  v6 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v107 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v98 - v20;
  if (qword_1ED9A96B8 != -1)
  {
    OUTLINED_FUNCTION_5_27(&qword_1ED9A96B8);
  }

  v22 = qword_1ED9A96C0;
  sub_1B1A91998();
  if (v23 == 2 || (v23 & 1) == 0)
  {
    v104 = v13;
    v105 = v8;
    v106 = v6;
    v29 = mach_absolute_time();
    v30 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    OUTLINED_FUNCTION_66_0(&a1[OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime], v121);
    *&a1[v30] = v29;
    v31 = sub_1B1BC9564();
    v33 = v32;
    v34 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    OUTLINED_FUNCTION_66_0(&a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId], v120);
    *v34 = v31;
    *(v34 + 1) = v33;

    sub_1B1BCECA4(v4 + OBJC_IVAR___SiriTTSServiceSession_accessoryId, v21, &qword_1EB761DF8, qword_1B1C40850);
    v35 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();
    sub_1B1A91B74(v21, &a1[v35]);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v36 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v36, qword_1ED9A9120);
    v37 = a1;
    v38 = sub_1B1C2C888();
    v39 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_21_0();
      v40 = OUTLINED_FUNCTION_14_16();
      *v21 = 138543362;
      *(v21 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      sub_1B1A90C20(v40, &qword_1EB7625C0, &qword_1B1C37990);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_11_23();
    }

    if (!sub_1B1AD5C10())
    {
      v47 = [objc_opt_self() sharedInstance];
      v48 = [v47 opaqueSessionID];

      sub_1B1BC8D08(v48);
    }

    v102 = v15;
    v103 = v12;
    type metadata accessor for ObjectPool();
    swift_initStackObject();
    v49 = ObjectPool.init()();
    v50 = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
    sub_1B1B763B8(v50);
    sub_1B1B76328(v22);
    v118 = MEMORY[0x1E69E7CC0];
    v119 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C38B50;
    v52 = type metadata accessor for RequestParsingAction();
    OUTLINED_FUNCTION_24_6(v52);

    v54 = RequestParsingAction.init(pool:)(v53);
    type metadata accessor for WorkflowNode();
    OUTLINED_FUNCTION_13_22();
    v55 = swift_allocObject();
    v55[5] = v52;
    v55[6] = &protocol witness table for RequestParsingAction;
    v55[2] = v54;
    *(inited + 32) = v55;
    v56 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v101 = v49;
    v58 = AudioPlaybackAction.init(pool:)(v57);
    OUTLINED_FUNCTION_13_22();
    v59 = swift_allocObject();
    v59[5] = v56;
    v59[6] = &protocol witness table for AudioPlaybackAction;
    v59[2] = v58;
    *(inited + 40) = v59;
    sub_1B1BC9214(inited);
    swift_setDeallocating();
    sub_1B1B2EFA8();
    aBlock = v118;
    v112 = v119;
    type metadata accessor for Workflow();
    swift_allocObject();
    v60 = v50;

    v99 = v50;
    v61 = Workflow.init(graph:notification:errorHandlers:)();
    v62 = type metadata accessor for DelegateHandler();
    v63 = OUTLINED_FUNCTION_24_6(v62);
    v64 = v37;
    v65 = v60;
    v66 = v4;
    v67 = sub_1B1BCEF98(v65, v66, v64, v63);
    v68 = type metadata accessor for AudioHandler();
    swift_allocObject();
    v100 = v65;
    v69 = AudioHandler.init(notificationCenter:)(v100);
    OUTLINED_FUNCTION_17();
    v70 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1B1C36280;
    v98[0] = v67;
    *(v71 + 32) = v67;
    *(v71 + 88) = v68;
    *(v71 + 56) = v62;
    *(v71 + 64) = v69;
    *(v70 + 16) = v71;
    v72 = v70;
    v73 = type metadata accessor for TaskOperation();
    v74 = objc_allocWithZone(v73);
    v75 = &v74[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflowError];
    *(v75 + 2) = 1;
    *v75 = 0;
    *(v75 + 1) = 0;
    *&v74[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request] = v64;
    *&v74[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow] = v61;
    *&v74[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_delegate] = v66;
    v98[1] = v69;
    *&v74[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler] = v69;
    *&v74[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_notification] = v99;
    *&v74[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue] = 0;
    v117.receiver = v74;
    v117.super_class = v73;
    swift_retain_n();
    v76 = v64;
    v77 = v66;

    v78 = objc_msgSendSuper2(&v117, sel_init);
    OUTLINED_FUNCTION_13_22();
    v79 = swift_allocObject();
    v79[2] = v78;
    v79[3] = v76;
    v80 = v108;
    v108 = v61;
    v81 = v109;
    v79[4] = v80;
    v79[5] = v81;
    v79[6] = v72;
    v115 = sub_1B1BCF3C0;
    v116 = v79;
    aBlock = MEMORY[0x1E69E9820];
    v112 = 1107296256;
    v99 = &v113;
    v113 = sub_1B1A95870;
    v114 = &block_descriptor_22;
    v82 = _Block_copy(&aBlock);
    v83 = v78;
    v84 = v76;
    v85 = v83;

    sub_1B1A94514(sub_1B1BCF3C0, v79);

    [v85 setCompletionBlock_];
    _Block_release(v82);

    v86 = *&v77[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
    v87 = v84;
    v88 = v77;
    v89 = v85;
    [v86 lock];
    sub_1B1BCE400(v88, v87, v89);
    [v86 unlock];

    OUTLINED_FUNCTION_17();
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    v115 = sub_1B1BCF6A8;
    v116 = v90;
    aBlock = MEMORY[0x1E69E9820];
    v112 = 1107296256;
    v113 = sub_1B1A95870;
    v114 = &block_descriptor_19;
    v91 = _Block_copy(&aBlock);
    v92 = v89;
    v93 = v107;
    sub_1B1C2C9A8();
    v110 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_24();
    sub_1B1BCF378(v94, v95, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1AA6F40();
    v96 = v103;
    v97 = v106;
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v93, v96, v91);
    _Block_release(v91);

    (*(v105 + 8))(v96, v97);
    (*(v102 + 8))(v93, v104);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v24 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v24, qword_1ED9A9120);
    v25 = sub_1B1C2C888();
    v26 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B1A8A000, v25, v26, "Skipped #AudioHintRequest: TTS is disabled.", v27, 2u);
      OUTLINED_FUNCTION_11();
    }

    return v108(0);
  }
}

uint64_t sub_1B1BCE0B8(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1B1AA9FF0();
  if (v8)
  {
    v9 = v8;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v10 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v10, qword_1ED9A9120);
    v11 = a2;
    v12 = v9;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0B8();

    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_12;
    }

    v30 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31[0] = v16;
    *v15 = 134218242;
    v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v15 + 4) = *&v11[v17];

    *(v15 + 12) = 2080;
    v18 = [v12 localizedDescription];
    v19 = sub_1B1C2CB58();
    v21 = v20;

    v22 = sub_1B1A930E4(v19, v21, v31);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B1A8A000, v13, v14, "#Error #AudioHintRequest id %llu, error: %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2739FD0](v16, -1, -1);
    v23 = v15;
    a3 = v30;
    MEMORY[0x1B2739FD0](v23, -1, -1);
    goto LABEL_10;
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v24 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v24, qword_1ED9A9120);
  v12 = a2;
  v13 = sub_1B1C2C888();
  v25 = sub_1B1C2D0D8();
  if (!os_log_type_enabled(v13, v25))
  {
LABEL_10:

    goto LABEL_12;
  }

  v26 = swift_slowAlloc();
  *v26 = 134217984;
  v27 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  swift_beginAccess();
  *(v26 + 4) = *&v12[v27];

  _os_log_impl(&dword_1B1A8A000, v13, v25, "#Success #AudioHintRequest id %llu", v26, 0xCu);
  MEMORY[0x1B2739FD0](v26, -1, -1);

LABEL_12:
  v28 = sub_1B1AA9FF0();
  a3();

  swift_beginAccess();
  *(a5 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1BCE400(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v5 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  v6 = a3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + v5);
  sub_1B1B379E4();
  *(a1 + v5) = v8;
  return swift_endAccess();
}

void sub_1B1BCE4D4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_1B1BCE560(void *a1)
{
  v2 = v1;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = a1;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21_0();
    v9 = OUTLINED_FUNCTION_17_2();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    OUTLINED_FUNCTION_13_0(&dword_1B1A8A000, v11, v12, "#CancelRequest, %@");
    sub_1B1A90C20(v9, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10_1();
  }

  v13 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v14 = *&v5[v13];
  v15 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v16 = sub_1B1B2A278(v14, *(v2 + v15));
  [v16 cancel];
}

void sub_1B1BCE728(uint64_t a1, void (**a2)(void, float, float))
{
  swift_beginAccess();

  sub_1B1BC8FB0(v3);
  v5 = v4;

  if (!v5)
  {
    goto LABEL_5;
  }

  if (!*&v5[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler])
  {

LABEL_5:
    a2[2](a2, -120.0, -120.0);
    goto LABEL_6;
  }

  AudioHandler.audioPower.getter(&v6);
  a2[2](a2, *v6.i32, *&v6.i32[1]);

LABEL_6:
  _Block_release(a2);
}

uint64_t sub_1B1BCE808(void (*a1)(float, float))
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  sub_1B1BC8FB0(v2);
  v4 = v3;

  if (v4)
  {
    if (*&v4[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_audioHandler])
    {

      AudioHandler.audioPower.getter(&v7);
      a1(*v7.i32, *&v7.i32[1]);
    }
  }

  return (a1)(v5, -120.0, -120.0);
}

Swift::Void __swiftcall ServiceSession.didStartSpeaking(requestId:)(Swift::UInt64 requestId)
{
  v3 = *&v1[OBJC_IVAR___SiriTTSServiceSession_tasksLock];
  v4 = v1;
  [v3 lock];
  v5 = OBJC_IVAR___SiriTTSServiceSession_tasks;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v6 = *&v4[v5];
  if (*(v6 + 16) && (v7 = sub_1B1A954B0(requestId), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  [v3 unlock];

  if (v9)
  {
    v11 = *&v9[OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request];

    if (swift_dynamicCastObjCProtocolConditional())
    {
      ObjectType = swift_getObjectType();
      started = AudibleRequestProtocol.didStartSpeaking.getter();
      if (started)
      {
        v15 = started;
        v16 = v14;
        AudibleRequestProtocol.didStartSpeaking.setter(0, 0, ObjectType);
        v15(v17);

        sub_1B1A9D798(v15, v16);
        return;
      }
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v27 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v27, qword_1ED9A9120);
      v28 = v11;
      v11 = sub_1B1C2C888();
      v29 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v11, v29))
      {
        OUTLINED_FUNCTION_21_0();
        v30 = OUTLINED_FUNCTION_14_16();
        *v4 = 138412290;
        *(v4 + 4) = v28;
        *v30 = v28;
        v31 = v28;
        _os_log_impl(&dword_1B1A8A000, v11, v29, "Request is not audible, but called with didStartSpeaking. %@", v4, 0xCu);
        sub_1B1A90C20(v30, &qword_1EB7625C0, &qword_1B1C37990);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_11_23();

        return;
      }
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v18 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_21_0();
      *v21 = 134217984;
      *(v21 + 4) = requestId;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      OUTLINED_FUNCTION_11_23();
    }
  }
}

uint64_t sub_1B1BCECA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_45();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void *sub_1B1BCED04(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;
    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1B1BCED7C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B1BCEE1C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B1BCEE8C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B1BCEE1C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1B1B276E0(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B1BCEE8C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1B1C2D578();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

void *sub_1B1BCEF98(void *a1, void *a2, void *a3, void *a4)
{
  a4[3] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  a4[2] = a1;
  swift_unknownObjectWeakAssign();
  a4[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = qword_1ED9A4D58;
  v10 = a1;
  v11 = a3;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;

  sub_1B1ADAB20();

  if (qword_1ED9A4EA8 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v14;
  v16 = v11;
  sub_1B1ADABD8();

  if (qword_1ED9A4DA0 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED9A4DA8;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  v20 = v16;
  sub_1B1ADBB38(v17, sub_1B1AC52E8, v19);

  if (qword_1ED9A4C90 != -1)
  {
    swift_once();
  }

  v21 = qword_1ED9A4C98;
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v20;
  v24 = v20;
  sub_1B1ADBB68(v21, sub_1B1AAFF04, v23);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  sub_1B1ADAC08();

  return a4;
}

uint64_t sub_1B1BCF378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B1BCF3CC(uint64_t a1)
{
  sub_1B1AF6018(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroy_12Tm()
{

  OUTLINED_FUNCTION_13_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t AudioPlaybackAction.__allocating_init(pool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioPlaybackAction.init(pool:)(a1);
  return v2;
}

uint64_t sub_1B1BCF734()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
}

uint64_t sub_1B1BCF768(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1B1BCF800(uint64_t a1)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v1 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v1, qword_1ED9A9120);
  v2 = sub_1B1C2C888();
  v3 = sub_1B1C2D098();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B1A8A000, v2, v3, "Cancelling audio playback", v4, 2u);
    MEMORY[0x1B2739FD0](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_1B1AA6ED0(v6 + 32, &v10);

    if (*(&v11 + 1))
    {
      sub_1B1A8D0E0(&v10, v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v8 + 72))(v7, v8);
      return __swift_destroy_boxed_opaque_existential_0(v13);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  return sub_1B1A90C78(&v10, &qword_1EB763F90, &unk_1B1C40840);
}

uint64_t sub_1B1BCFB40()
{
  v0 = sub_1B1C2D128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1B1AC3BF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AC3C50();
  sub_1B1C2D418();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1B1C2D158();
  qword_1ED9AA638 = result;
  return result;
}

uint64_t sub_1B1BCFD58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1B1C2C0A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v7, qword_1ED9AA650);
  __swift_project_value_buffer(v7, qword_1ED9AA650);
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F58], v3);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  return sub_1B1C2C198();
}

uint64_t sub_1B1BCFF04()
{
  OUTLINED_FUNCTION_1_35();
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  return OUTLINED_FUNCTION_0_33() & 1;
}

uint64_t sub_1B1BCFF50()
{
  OUTLINED_FUNCTION_1_35();
  sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
  return OUTLINED_FUNCTION_0_33() & 1;
}

unint64_t sub_1B1BCFF9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1B1C2CC78())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1B1C2CDD8() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1B1C2D7A8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1B1BD0084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1B1C2D7A8() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void sub_1B1BD0110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A9547C();
  v5 = 0;
  while (v4 != v5)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2738A20](v5, a2);
      swift_unknownObjectRelease();
      if (v7 == a1)
      {
        return;
      }
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }

      if (*(a2 + 8 * v5 + 32) == a1)
      {
        return;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }
}

id sub_1B1BD01D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B1C38370;
  if (qword_1ED9A4F08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED9A4F10;
  *(v0 + 32) = qword_1ED9A4F10;
  v2 = qword_1EB761310;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB761318;
  *(v0 + 40) = qword_1EB761318;
  v5 = qword_1ED9A94C8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9A94B8;
  *(v0 + 48) = qword_1ED9A94B8;
  v8 = qword_1ED9A9840;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED9A9728;
  *(v0 + 56) = qword_1ED9A9728;
  v11 = qword_1EB7615D8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB7625D0;
  *(v0 + 64) = qword_1EB7625D0;
  v14 = qword_1ED9A4EF8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED9A4F00;
  *(v0 + 72) = qword_1ED9A4F00;
  qword_1EB763FB0 = v0;

  return v16;
}

id sub_1B1BD03B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B1C40970;
  if (qword_1EB7615E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7625D8;
  *(v0 + 32) = qword_1EB7625D8;
  v2 = qword_1ED9A9628;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A9598;
  *(v0 + 40) = qword_1ED9A9598;
  v5 = qword_1ED9A9100;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9A90A8;
  *(v0 + 48) = qword_1ED9A90A8;
  v8 = qword_1ED9A97D8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED9A9830;
  *(v0 + 56) = qword_1ED9A9830;
  qword_1EB763FB8 = v0;

  return v10;
}

BOOL TTSAsset.isOlder(_:)()
{
  OUTLINED_FUNCTION_2_31();
  v1 = (*(v0 + 160))();
  v3 = v2;
  OUTLINED_FUNCTION_0_34();
  v5 = (*(v4 + 160))();
  if (v1 == v5 && v3 == v6)
  {

    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_4_26(v5);

  result = 0;
  if (v8)
  {
LABEL_8:
    OUTLINED_FUNCTION_2_31();
    v11 = (*(v10 + 168))();
    OUTLINED_FUNCTION_0_34();
    return v11 < (*(v12 + 168))();
  }

  return result;
}

BOOL TTSAsset.isNewer(_:)()
{
  OUTLINED_FUNCTION_2_31();
  v1 = (*(v0 + 160))();
  v3 = v2;
  OUTLINED_FUNCTION_0_34();
  v5 = (*(v4 + 160))();
  if (v1 == v5 && v3 == v6)
  {

    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_4_26(v5);

  result = 0;
  if (v8)
  {
LABEL_8:
    OUTLINED_FUNCTION_2_31();
    v11 = (*(v10 + 168))();
    OUTLINED_FUNCTION_0_34();
    return (*(v12 + 168))() < v11;
  }

  return result;
}

void sub_1B1BD0858(void *a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v1 + 16) + 40) lock];
  OUTLINED_FUNCTION_9_25();
  v4 = a1;

  [*(*(v1 + 16) + 40) unlock];
}

void sub_1B1BD08E8(void *a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v1 + 48) + 40) lock];
  OUTLINED_FUNCTION_9_25();
  v4 = a1;

  [*(*(v1 + 48) + 40) unlock];
}

void sub_1B1BD0978(void *a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v1 + 32) + 40) lock];
  OUTLINED_FUNCTION_9_25();
  v4 = a1;

  [*(*(v1 + 32) + 40) unlock];
}

unint64_t sub_1B1BD0A08(unint64_t result)
{
  if (result >= 3)
  {
    result = sub_1B1C2D7E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1BD0A48(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  SynthesizingRequestProtocol.text.getter();
  v3 = sub_1B1C2CB28();

  [v2 setString_];

  v4 = SynthesizingRequestProtocol.voice.getter(a1);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  v5 = sub_1B1C2CB28();

  [v2 setLanguage_];

  SynthesizingRequestProtocol.text.getter();

  SynthesizingRequestProtocol.text.getter();

  v6 = sub_1B1C2D048();

  v7 = *(v6 + 16);

  return v7;
}

uint64_t sub_1B1BD0BB8(uint64_t a1)
{
  if (!SynthesizingRequestProtocol.style.getter(a1))
  {
    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B1B5692C();
    if ((v5 & 1) != 0 || (v6 = v4, v4 = sub_1B1BD0A48(a1), v4 < v6))
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v4) == 0xD00000000000001ALL && 0x80000001B1C48480 == v7)
      {
      }

      else
      {
        v9 = sub_1B1C2D7A8();

        if ((v9 & 1) == 0)
        {
          goto LABEL_2;
        }
      }
    }

    return 1;
  }

LABEL_2:

  return SynthesizingRequestProtocol.style.getter(a1);
}

uint64_t sub_1B1BD0D28(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1B1BD0D70(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  [v3 lock];
  *(v1 + 128) = a1;
  [v3 unlock];
  return swift_endAccess();
}

void *sub_1B1BD0DE4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = v1;
  v4 = v2;
  [v4 lock];
  v5 = v3;
  [v4 unlock];

  return v1;
}

uint64_t sub_1B1BD0E68(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  [v3 lock];
  v4 = *(v1 + 144);
  *(v1 + 144) = a1;

  [v3 unlock];
  return swift_endAccess();
}

uint64_t DeviceSynthesisAction.__allocating_init(pool:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24();
  return DeviceSynthesisAction.init(pool:)();
}

void sub_1B1BD0F1C()
{

  sub_1B1ADA260(v0 + 72);

  v1 = *(v0 + 144);
}

void sub_1B1BD0F98()
{
  v0 = sub_1B1BD0DE4();
  if (v0)
  {
    v1 = v0;
    [v0 stopSynthesis];
    sub_1B1BD0D70(1);
  }
}

void sub_1B1BD0FE0(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B1B22BB4();
  if (v17)
  {
    v129 = v5;
    v134 = v17;
    v130 = v14;
    v136 = a1;
    v18 = sub_1B1AA95C4();
    if (v18)
    {
      v19 = v18;
      if (v3[6])
      {
        if (qword_1ED9A4DF8 != -1)
        {
          swift_once();
        }

        sub_1B1AEAD14();
      }

      v126 = v12;
      v127 = v8;
      v125 = v6;
      v128 = v2;
      OUTLINED_FUNCTION_17();
      v133 = swift_allocObject();
      *(v133 + 16) = 0;
      OUTLINED_FUNCTION_17();
      v20 = swift_allocObject();
      *(v20 + 16) = MEMORY[0x1E69E7CC0];
      v21 = [objc_allocWithZone(SiriTTSSynthesisEngineRequest) init];
      ObjectType = swift_getObjectType();
      SynthesizingRequestProtocol.text.getter();
      v23 = sub_1B1C2CB28();

      [v21 setText_];

      aBlock = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x90))();
      v24 = sub_1B1C2D778();
      sub_1B1BD2CA4(v24, v25, v21);
      v26 = OUTLINED_FUNCTION_6_25();
      *&v27 = SynthesizingRequestProtocol.rate.getter(v26);
      [v21 setRate_];
      *&v28 = SynthesizingRequestProtocol.pitch.getter(ObjectType);
      [v21 setPitch_];
      *&v29 = SynthesizingRequestProtocol.volume.getter(ObjectType);
      [v21 setVolume_];
      v30 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();

      OUTLINED_FUNCTION_10_27(v32, v31, sel_setNeuralSentencePitch_);
      v33 = OUTLINED_FUNCTION_6_25();
      v34 = SynthesizingRequestProtocol.prosodyProperties.getter(v33);
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();

      OUTLINED_FUNCTION_10_27(v36, v35, sel_setNeuralSentencePitchRange_);
      v37 = OUTLINED_FUNCTION_6_25();
      v38 = SynthesizingRequestProtocol.prosodyProperties.getter(v37);
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();

      OUTLINED_FUNCTION_10_27(v40, v39, sel_setNeuralSentenceDuration_);
      v41 = OUTLINED_FUNCTION_6_25();
      v42 = SynthesizingRequestProtocol.prosodyProperties.getter(v41);
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();

      OUTLINED_FUNCTION_10_27(v44, v43, sel_setNeuralSentenceEnergy_);
      v45 = OUTLINED_FUNCTION_6_25();
      v46 = SynthesizingRequestProtocol.prosodyProperties.getter(v45);
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();

      OUTLINED_FUNCTION_10_27(v48, v47, sel_setNeuralSentenceTilt_);
      v49 = v3[8];
      if (v49 && (sub_1B1A9B6B0(), v50 != 2) && (v50 & 1) != 0)
      {
        v51 = 0;
      }

      else
      {
        v56 = OUTLINED_FUNCTION_6_25();
        v51 = SynthesizingRequestProtocol.privacySensitive.getter(v56);
      }

      [v21 setPrivacySensitive_];
      v57 = OUTLINED_FUNCTION_6_25();
      [v21 setDisableThermalFallback_];
      [v21 setProfile_];
      v58 = sub_1B1BD0BB8(ObjectType);
      SynthesisContext.PromptStyle.description.getter(v58);
      sub_1B1C2CB28();
      OUTLINED_FUNCTION_24();

      [v21 setPromptStyle_];

      sub_1B1ADD454((v3 + 9), &aBlock);
      v59 = v144;
      v124 = v11;
      v123 = v21;
      if (v144)
      {
        v60 = v145;
        __swift_project_boxed_opaque_existential_1(&aBlock, v144);
        v61 = OUTLINED_FUNCTION_24();
        v59 = v62(v61, v60);
        v64 = v63;
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        if (v64)
        {
          v65 = v3;
          v59 = 0;
        }

        else
        {
          v65 = v3;
        }
      }

      else
      {
        v65 = v3;
        sub_1B1ADA260(&aBlock);
      }

      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      OUTLINED_FUNCTION_17();
      v71 = swift_allocObject();
      v71[2] = 0;
      v72 = swift_allocObject();
      v73 = v134;
      *(v72 + 2) = v70;
      *(v72 + 3) = v73;
      *(v72 + 4) = v65;
      *(v72 + 5) = v19;
      *(v72 + 6) = v136;
      *(v72 + 7) = v20;
      v131 = v20;
      *(v72 + 8) = v133;
      *(v72 + 9) = v71;
      v74 = v129;
      *(v72 + 10) = v59;
      *(v72 + 11) = v74;
      v145 = sub_1B1ACEC10;
      v146 = v72;
      aBlock = MEMORY[0x1E69E9820];
      v142 = 1107296256;
      v143 = sub_1B1ACEB88;
      v144 = &block_descriptor_25;
      v75 = _Block_copy(&aBlock);
      v122 = v146;
      v132 = v70;

      v76 = v73;
      v77 = v65;
      v78 = v76;

      v129 = v19;
      v79 = v19;
      v80 = v131;

      v134 = v71;

      v82 = v123;
      OUTLINED_FUNCTION_7_20(v81, sel_setAudioHandler_);
      _Block_release(v75);
      v145 = sub_1B1BD2D08;
      v146 = v77;
      aBlock = MEMORY[0x1E69E9820];
      v142 = 1107296256;
      v143 = sub_1B1BD2190;
      v144 = &block_descriptor_13_0;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v83, sel_setPromptHandler_);
      _Block_release(v75);
      v84 = v78;
      if ([v78 supportWordTiming])
      {
        v85 = v79;
        v86 = swift_allocObject();
        *(v86 + 16) = 0;
        v145 = sub_1B1BD2DD0;
        v146 = v86;
        aBlock = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_2_32();
        v143 = v87;
        v144 = &block_descriptor_35_0;
        v88 = _Block_copy(&aBlock);

        OUTLINED_FUNCTION_7_20(v89, sel_setWordAlignmentFailureHandler_);
        _Block_release(v88);
        v90 = swift_allocObject();
        *(v90 + 2) = v86;
        *(v90 + 3) = v85;
        *(v90 + 4) = v80;
        *(v90 + 5) = v77;
        v145 = sub_1B1AC2E3C;
        v146 = v90;
        aBlock = MEMORY[0x1E69E9820];
        v142 = 1107296256;
        v143 = sub_1B1AC5EAC;
        v144 = &block_descriptor_41_0;
        v91 = _Block_copy(&aBlock);

        v92 = v85;

        OUTLINED_FUNCTION_7_20(v93, sel_setWordTimingsHandler_);
        _Block_release(v91);
      }

      else
      {
        v94 = v79;
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v95 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v95, qword_1ED9A9120);
        v91 = sub_1B1C2C888();
        v96 = sub_1B1C2D098();
        if (os_log_type_enabled(v91, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_1B1A8A000, v91, v96, "Word timing isn't supported", v97, 2u);
          MEMORY[0x1B2739FD0](v97, -1, -1);
        }

        v85 = v94;
      }

      v145 = sub_1B1AEE9A0;
      v146 = v77;
      OUTLINED_FUNCTION_0_35();
      v143 = sub_1B1A95870;
      v144 = &block_descriptor_16_1;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v98, sel_setNeuralFallbackHandler_);
      _Block_release(v91);
      v145 = sub_1B1BD2D10;
      v146 = v77;
      aBlock = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_2_32();
      v143 = v99;
      v144 = &block_descriptor_19_0;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v100, sel_setUseHydraFrontendHandler_);
      _Block_release(v91);
      v145 = sub_1B1BD2D54;
      v146 = v77;
      aBlock = MEMORY[0x1E69E9820];
      v142 = 1107296256;
      v143 = sub_1B1BD255C;
      v144 = &block_descriptor_22_0;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v101, sel_setDynamicPromptHandler_);
      _Block_release(v91);
      v145 = sub_1B1BD2D5C;
      v146 = v77;
      aBlock = MEMORY[0x1E69E9820];
      v142 = 1107296256;
      v143 = sub_1B1BD27B4;
      v144 = &block_descriptor_25;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_5_29();

      OUTLINED_FUNCTION_7_20(v102, sel_setSynthesisIssueHandler_);
      _Block_release(v91);
      sub_1B1B3456C();
      v103 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
      [v84 asbd];
      v104 = &v103[OBJC_IVAR___SiriTTSAudioData_asbd];
      swift_beginAccess();
      v105 = v139;
      *v104 = v138;
      *(v104 + 1) = v105;
      *(v104 + 4) = v140;
      type metadata accessor for DataContainer();
      OUTLINED_FUNCTION_17();
      v106 = swift_allocObject();
      *(v106 + 16) = sub_1B1C2CAB8();
      v122 = v103;
      sub_1B1ACC2E4(v103);
      v107 = v85;
      sub_1B1AD7464(v129);
      v108 = v136;
      v111 = sub_1B1AA95A0(v109, v110);
      sub_1B1AA795C(v111);
      v112 = sub_1B1AA9644();
      sub_1B1AA9764(v112);
      sub_1B1AA81A8(v106);
      v129 = v77[5];
      v113 = swift_allocObject();
      v114 = v133;
      *(v113 + 2) = v77;
      *(v113 + 3) = v114;
      *(v113 + 4) = v84;
      *(v113 + 5) = v82;
      *(v113 + 6) = v132;
      *(v113 + 7) = v107;
      *(v113 + 8) = v108;
      v145 = sub_1B1BD2D64;
      v146 = v113;
      OUTLINED_FUNCTION_0_35();
      v143 = sub_1B1A95870;
      v144 = &block_descriptor_31;
      v115 = _Block_copy(&aBlock);

      v121 = v84;

      v120 = v107;

      v116 = v82;
      v117 = v135;
      sub_1B1C2C9A8();
      v137 = MEMORY[0x1E69E7CC0];
      sub_1B1BD2D78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
      sub_1B1AA6F40();
      v118 = v124;
      v119 = v125;
      sub_1B1C2D418();
      MEMORY[0x1B2738610](0, v117, v118, v115);
      _Block_release(v115);

      (*(v127 + 8))(v118, v119);
      (*(v130 + 8))(v117, v126);
    }

    else
    {
      sub_1B1A9EC9C();
      v66 = swift_allocError();
      OUTLINED_FUNCTION_8_26(v66, v67);
      *(v69 + 8) = v68 | 1;
      *(v69 + 16) = 0x80000001B1C52490;
      swift_willThrow();
    }
  }

  else
  {
    sub_1B1A9EC9C();
    v52 = swift_allocError();
    OUTLINED_FUNCTION_8_26(v52, v53);
    *(v54 + 8) = v55;
    *(v54 + 16) = 0x80000001B1C52460;
    swift_willThrow();
  }
}

unint64_t sub_1B1BD1EFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = SynthesizingRequestProtocol.synthesisProfile.getter(ObjectType);
  sub_1B1ADD454(a2 + 72, v11);
  v5 = v12;
  if (!v12)
  {
    sub_1B1ADA260(v11);
LABEL_6:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v9)
  {
    goto LABEL_6;
  }

  if (!v4)
  {
    v4 = v7;
LABEL_9:
    sub_1B1BD0A08(v4);
    return v4;
  }

  return 0;
}

void sub_1B1BD1FC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v6 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v6, qword_1ED9A9120);

  v7 = sub_1B1C2C888();
  v8 = sub_1B1C2D098();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B1A930E4(a1, a2, &v13);
    _os_log_impl(&dword_1B1A8A000, v7, v8, "Synthesized with prompt: '%s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2739FD0](v10, -1, -1);
    MEMORY[0x1B2739FD0](v9, -1, -1);
  }

  v11 = *(a3 + 48);
  if (v11)
  {
    if (qword_1ED9A4DB0 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED9A4DB8;

    [v11 postNotificationName:v12 object:0];
  }
}

uint64_t sub_1B1BD2190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1B1C2CB58();
  v5 = v4;

  v2(v3, v5);
}

void sub_1B1BD21FC(uint64_t a1)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D0B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "Encountered word alignment failure, word timing info will be ignored", v5, 2u);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
}

void sub_1B1BD22FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v10, qword_1ED9A9120);

  v11 = sub_1B1C2C888();
  v12 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1B1A930E4(a1, a2, &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1B1A930E4(a3, a4, &v17);
    _os_log_impl(&dword_1B1A8A000, v11, v12, "Received dynamic prompt usage status. voicePrompt:%s, stylePrompt:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v14, -1, -1);
    MEMORY[0x1B2739FD0](v13, -1, -1);
  }

  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 && *(a5 + 48))
  {
    if (qword_1EB760FC0 != -1)
    {
      swift_once();
    }

    sub_1B1B18D54(qword_1EB760FC8, a1, a2);
  }

  v16 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v16 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && *(a5 + 48))
  {
    if (qword_1EB760FD8 != -1)
    {
      swift_once();
    }

    sub_1B1B18D54(qword_1EB760FE0, a3, a4);
  }
}

uint64_t sub_1B1BD255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = sub_1B1C2CB58();
  v6 = v5;
  v7 = sub_1B1C2CB58();
  v9 = v8;

  v3(v4, v6, v7, v9);
}

uint64_t sub_1B1BD25F4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = sub_1B1C2C888();
  v6 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1A8A000, v5, v6, "Detected quality issue in synthesized audio data.", v7, 2u);
    MEMORY[0x1B2739FD0](v7, -1, -1);
  }

  if (a1 == 2)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }

    if (qword_1ED9A4E28 != -1)
    {
      swift_once();
    }

    sub_1B1AC638C(qword_1ED9A4E30, 10, 0, 0);
    v8 = 0;
    goto LABEL_16;
  }

  if (a1 == 1 && *(a2 + 48))
  {
    if (qword_1ED9A4E28 != -1)
    {
      swift_once();
    }

    sub_1B1AC638C(qword_1ED9A4E30, 11, 0, 0);
    v8 = 1;
LABEL_16:

    return v8;
  }

  return 1;
}

uint64_t sub_1B1BD27B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t sub_1B1BD2804(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  sub_1B1BD0E68(a3);
  if (qword_1ED9A4D38 != -1)
  {
    swift_once();
  }

  sub_1B1B34568();

  v32[0] = 0;
  v13 = [v12 synthesize:a4 error:v32];
  v14 = v32[0];
  if (v13)
  {
    swift_beginAccess();
    if (*(a5 + 16))
    {
      v15 = objc_allocWithZone(type metadata accessor for AudioData());
      v16 = v14;
      v17 = [v15 init];
      type metadata accessor for DataContainer();
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1B1C2CAB8();
      v19 = v17;
      sub_1B1ACC2E4(v17);
      v20 = a6;
      sub_1B1AD7464(a6);
      v23 = sub_1B1AA95A0(v21, v22);
      sub_1B1AA795C(v23);
      v24 = sub_1B1AA9644();
      sub_1B1AA9764(v24);
      sub_1B1AA81A8(v18);
    }

    else if (*(a1 + 48))
    {
      v28 = qword_1EB761020;
      v29 = v14;
      if (v28 != -1)
      {
        swift_once();
      }

      sub_1B1AC638C(qword_1EB761028, 1, 0xD000000000000032, 0x80000001B1C52590);
    }

    else
    {
      v30 = v14;
    }

    sub_1B1ADA1CC();
  }

  else
  {
    v25 = v32[0];
    v26 = sub_1B1C2C058();

    swift_willThrow();
    if (*(a1 + 48))
    {
      if (qword_1EB761020 != -1)
      {
        swift_once();
      }

      sub_1B1B18DB8();
    }

    v27 = v26;
    sub_1B1BD0978(v26);
    if (*(a1 + 112))
    {
      sub_1B1B231C4(0);
    }
  }

  return sub_1B1BD2B30(a1, (a2 + 16));
}

uint64_t sub_1B1BD2B30(uint64_t a1, double *a2)
{
  sub_1B1BD0E68(0);
  if (*(a1 + 48))
  {
    if (qword_1ED9A4E88 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1B1ADED40(*a2);
  }

  return sub_1B1B3456C();
}

uint64_t sub_1B1BD2C34@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceSynthesisAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

void sub_1B1BD2CA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1C2CB28();

  [a3 setRequestId_];
}

unint64_t sub_1B1BD2D78()
{
  result = qword_1ED9A8DC0;
  if (!qword_1ED9A8DC0)
  {
    sub_1B1C2C988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A8DC0);
  }

  return result;
}

uint64_t sub_1B1BD2F2C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B1C2CFA8();
  if (!v19)
  {
    return sub_1B1C2CEA8();
  }

  v41 = v19;
  v45 = sub_1B1C2D5F8();
  v32 = sub_1B1C2D608();
  sub_1B1C2D5A8();
  result = sub_1B1C2CF98();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B1C2CFF8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B1C2D5E8();
      result = sub_1B1C2CFB8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BD3348(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B1AE06E4(0, v2, 0);
  v3 = v10;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1B1A93378(v4, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B1AE06E4(v5 > 1, v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

char *sub_1B1BD3470(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v2 = sub_1B1A8EB10();
  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B1A93378(*(a1 + 56) + 32 * v2, v37);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_0_36(v4, v5, v6, v4, v7, v8, v9, v10, v32, v35, v37[0]) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!*(v33 + 16))
  {

LABEL_8:

    return 0;
  }

  sub_1B1A93AEC(1701667150, 0xE400000000000000, a1);
  if (v38)
  {
    OUTLINED_FUNCTION_0_36(v11, v12, v13, MEMORY[0x1E69E6158], v14, v15, v16, v17, v33, v36, v37[0]);
  }

  else
  {
    sub_1B1A90C78(v37, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v20 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v18 = SynthesisVoice.init(language:name:)();
  sub_1B1A93AEC(1701869908, 0xE400000000000000, a1);

  if (v38)
  {
    if (OUTLINED_FUNCTION_0_36(v21, v22, v23, MEMORY[0x1E69E6530], v24, v25, v26, v27, v33, v36, v37[0]))
    {
      v28 = SynthesisVoice.VoiceType.init(rawValue:)(v34);
      if ((v29 & 1) == 0)
      {
        v30 = v28;
        v31 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        swift_beginAccess();
        *&v18[v31] = v30;
      }
    }
  }

  else
  {
    sub_1B1A90C78(v37, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return v18;
}

uint64_t sub_1B1BD365C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 0x65676175676E614CLL;
  *(inited + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B1C361C0;
  v4 = (v1 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_65(v1 + OBJC_IVAR___SiriTTSSynthesisVoice_language, v20);
  v5 = *v4;
  v6 = v4[1];
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  *(inited + 48) = v3;

  v7 = MEMORY[0x1E69E6158];
  v8 = sub_1B1C2CAB8();
  v9 = (v1 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_65(v1 + OBJC_IVAR___SiriTTSSynthesisVoice_name, v19);
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v17 = v7;
    *&v16 = v11;
    *(&v16 + 1) = v10;
    sub_1B1A9EEE0(&v16, v15);

    swift_isUniquelyReferenced_nonNull_native();
    v18[0] = v8;
    sub_1B1A9EEF0();
    v8 = v18[0];
  }

  v12 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_65(v1 + OBJC_IVAR___SiriTTSSynthesisVoice_type, v18);
  v13 = *(v1 + v12);
  if (v13)
  {
    v17 = MEMORY[0x1E69E6530];
    *&v16 = v13;
    sub_1B1A9EEE0(&v16, v15);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B1A9EEF0();
  }

  return v8;
}

void *sub_1B1BD385C(uint64_t a1)
{
  v6 = sub_1B1BDDD5C(a1);
  sub_1B1BD52CC(&v6);
  v1 = v6;
  v2 = v6[2];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    v3 = 5;
    do
    {
      v4 = v1[v3];
      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      v3 += 2;
      --v2;
    }

    while (v2);

    return v6;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t RandomAccessCollection.stableSorted(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(a4 + 8) + 8) + 8);
  v9 = sub_1B1C2D678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-v11];
  MEMORY[0x1B27382F0](a3, v8);
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v26 = a2;
  swift_getWitnessTable();
  v13 = sub_1B1C2CE48();
  (*(v10 + 8))(v12, v9);
  v27 = v13;
  v21 = a3;
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v15 = sub_1B1C2CEF8();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1B1BD2F2C(sub_1B1BD3E08, v20, v15, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v17);

  return v18;
}

BOOL sub_1B1BD3B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v9 = a4;
  v6 = sub_1B1BD3ED0(&v10, &v9);
  if (v6 == 2)
  {
    return a1 < a3;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B1BD3BD0(char *a1, char *a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = a3(&a1[*(TupleTypeMetadata2 + 48)], &a2[*(TupleTypeMetadata2 + 48)]);
  if (v10 == 2)
  {
    v10 = *a1 < *a2;
  }

  return v10 & 1;
}

uint64_t sub_1B1BD3CB8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, TupleTypeMetadata2);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a3, &v8[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
}

id sub_1B1BD3E50()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  *&v0[OBJC_IVAR___SiriTTSPreferences_defaults] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Preferences();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B1BD3ED0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = (v3 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  if (v5)
  {
    if (!v8 || (v6 == v9 ? (v10 = v5 == v8) : (v10 = 0), !v10 && (sub_1B1C2D7A8() & 1) == 0))
    {
LABEL_18:
      v11 = v5;
      goto LABEL_19;
    }
  }

  else if (v8)
  {
    goto LABEL_10;
  }

  v12 = (v2 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = (v3 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v16 = v13 == *v15 && v14 == v15[1];
  if (v16 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 2;
  }

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_10:
  v6 = 0;
  v11 = 0xE000000000000000;
LABEL_19:
  v18 = (v2 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  if (v8)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v8;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v23 = (v3 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];
  v26 = v6 == v21 && v11 == v22;
  if (v26 || (sub_1B1C2D7A8() & 1) != 0)
  {

    if (v20 == v25 && v19 == v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_1B1C2D7A8();
    }
  }

  else
  {
    v28 = sub_1B1C2D7A8();
  }

  return v28 & 1;
}

void sub_1B1BD4148(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F0, &unk_1B1C39750);
  v3 = sub_1B1C2CAB8();
  v57 = sub_1B1A9547C();
  if (v57)
  {
    v4 = 0;
    v55 = a1;
    v56 = a1 & 0xC000000000000001;
    v54 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v56)
      {
        v5 = MEMORY[0x1B2738A20](v4, a1);
      }

      else
      {
        if (v4 >= *(v54 + 16))
        {
          goto LABEL_52;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_65(&v5[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId], v63);
      OUTLINED_FUNCTION_65(&v6[OBJC_IVAR___SiriTTSVoiceSubscription_clientId], v62);
      v7 = v3[2];

      if (!v7 || (OUTLINED_FUNCTION_1_37(), sub_1B1A8EB10(), (v8 & 1) == 0))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F0, &qword_1B1C38030);
        sub_1B1C2CAB8();
        swift_isUniquelyReferenced_nonNull_native();
        v61 = v3;
        sub_1B1B37A0C();
        v3 = v61;
      }

      if (!v3[2])
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_1_37();
      v9 = sub_1B1A8EB10();
      if ((v10 & 1) == 0)
      {
        goto LABEL_45;
      }

      v58 = v4 + 1;
      if (!*(*(v3[7] + 8 * v9) + 16) || (, sub_1B1A8EB10(), v12 = v11, , (v12 & 1) == 0))
      {
        v13 = v6;
        swift_isUniquelyReferenced_nonNull_native();
        v61 = v3;
        OUTLINED_FUNCTION_1_37();
        sub_1B1A8EB10();
        OUTLINED_FUNCTION_2_33();
        if (__OFADD__(v16, v17))
        {
          goto LABEL_50;
        }

        v18 = v14;
        v19 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762550, &qword_1B1C38108);
        if (sub_1B1C2D628())
        {
          OUTLINED_FUNCTION_1_37();
          v20 = sub_1B1A8EB10();
          if ((v19 & 1) != (v21 & 1))
          {
            goto LABEL_53;
          }

          v18 = v20;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_51;
        }

        v3 = v61;
        v22 = *(v61[7] + 8 * v18);
        swift_isUniquelyReferenced_nonNull_native();
        v60 = v22;
        sub_1B1B379F8();
        if (v60)
        {
          *(v3[7] + 8 * v18) = v60;
        }

        else
        {
          sub_1B1BD640C(v3[6] + 16 * v18);
          sub_1B1C2D648();
        }

        v6 = v13;
      }

      v23 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
      OUTLINED_FUNCTION_65(&v6[OBJC_IVAR___SiriTTSVoiceSubscription_voice], v59);
      v24 = v6;
      v25 = *&v6[v23];
      v26 = sub_1B1BD365C();

      swift_isUniquelyReferenced_nonNull_native();
      v61 = v3;
      OUTLINED_FUNCTION_1_37();
      sub_1B1A8EB10();
      OUTLINED_FUNCTION_2_33();
      if (__OFADD__(v29, v30))
      {
        goto LABEL_46;
      }

      v31 = v27;
      v32 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762550, &qword_1B1C38108);
      if (sub_1B1C2D628())
      {
        OUTLINED_FUNCTION_1_37();
        v33 = sub_1B1A8EB10();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_53;
        }

        v31 = v33;
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_47;
      }

      v35 = *(v61[7] + 8 * v31);
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v35;
      sub_1B1A8EB10();
      OUTLINED_FUNCTION_2_33();
      if (__OFADD__(v38, v39))
      {
        goto LABEL_48;
      }

      v40 = v36;
      v41 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762548, &qword_1B1C38100);
      if (sub_1B1C2D628())
      {
        v42 = sub_1B1A8EB10();
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_53;
        }

        v40 = v42;
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_49;
      }

      v44 = *(*(v60 + 56) + 8 * v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1B04A94(0, v44[2] + 1, 1, v44);
        v44 = v48;
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        sub_1B1B04A94(v45 > 1, v46 + 1, 1, v44);
        v44 = v49;
      }

      v44[2] = v46 + 1;
      v44[v46 + 4] = v26;

      *(*(v60 + 56) + 8 * v40) = v44;

      v47 = v60;
      if (v60)
      {

        v3 = v61;
        *(v61[7] + 8 * v31) = v47;
      }

      else
      {

        v3 = v61;
        sub_1B1BD640C(v61[6] + 16 * v31);
        sub_1B1C2D648();
      }

      a1 = v55;

      ++v4;
      if (v58 == v57)
      {
        goto LABEL_42;
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
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    sub_1B1C2D818();
    __break(1u);
  }

  else
  {
LABEL_42:
    v50 = *(v53 + OBJC_IVAR___SiriTTSPreferences_defaults);
    v51 = sub_1B1C2CA78();
    v52 = sub_1B1C2CB28();

    [v50 setObject:v51 forKey:v52];
  }
}

uint64_t sub_1B1BD47D8(uint64_t a1)
{
  sub_1B1BD4148(a1, 1);
}

uint64_t (*sub_1B1BD4814(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1B1AF7348(1);
  return sub_1B1BD4860;
}

uint64_t sub_1B1BD489C(uint64_t a1)
{
  sub_1B1BD4148(a1, 0);
}

uint64_t (*sub_1B1BD48D8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1B1AF7348(0);
  return sub_1B1BD4924;
}

uint64_t sub_1B1BD492C(uint64_t *a1, char a2, char a3)
{
  v4 = *a1;
  if (a2)
  {

    sub_1B1BD4148(v5, a3);
  }

  else
  {
    sub_1B1BD4148(v4, a3);
  }
}

void sub_1B1BD4994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E562D6976 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B1C2D7A8() & 1) != 0)
  {

    sub_1B1BD4A9C(a1, a2);
  }
}

void sub_1B1BD4A9C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___SiriTTSPreferences_defaults);
  v5 = sub_1B1C2CB28();
  v6 = [v4 dictionaryForKey_];

  if (!v6)
  {
    v40 = 0u;
    v41 = 0u;
    goto LABEL_20;
  }

  v7 = sub_1B1C2CA98();

  sub_1B1A93AEC(0, 0xE000000000000000, v7);

  if (!*(&v41 + 1))
  {
LABEL_20:
    sub_1B1A90C78(&v40, &qword_1EB761DE0, &qword_1B1C352C0);
    return;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FC8, &qword_1B1C40A40);
  if (OUTLINED_FUNCTION_6_26(v8, v9, v10, v11, v12, v13))
  {
    v14 = sub_1B1AE795C();

    if (v14)
    {
      v15 = sub_1B1BD3348(v14);

      if (v15)
      {
        v16 = 0;
        v17 = *(v15 + 16);
        v18 = v15 + 32;
        OUTLINED_FUNCTION_8_27();
        v36 = v17;
        v37 = v15;
        v35 = v15 + 32;
        while (1)
        {
LABEL_7:
          if (v16 == v17)
          {

            return;
          }

          if (v16 >= *(v15 + 16))
          {
            break;
          }

          v19 = *(v18 + 8 * v16++);
          if (*(v19 + 16))
          {

            v20 = sub_1B1A8EB10();
            if (v21)
            {
              sub_1B1A93378(*(v19 + 56) + 32 * v20, &v40);
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
              if (OUTLINED_FUNCTION_6_26(v22, v23, v24, v25, v26, v27))
              {
                v28 = (v39 + 40);
                v29 = -*(v39 + 16);
                v30 = -1;
                while (1)
                {
                  if (v29 + v30 == -1)
                  {

                    v17 = v36;
                    v15 = v37;
                    v18 = v35;
                    OUTLINED_FUNCTION_8_27();
                    goto LABEL_7;
                  }

                  if (++v30 >= *(v39 + 16))
                  {
                    break;
                  }

                  v31 = v28 + 2;
                  v32 = *(v28 - 1);
                  v33 = *v28;
                  type metadata accessor for AssistantAsset();

                  v34 = sub_1B1B65974(a1, a2, v32, v33);

                  v28 = v31;
                  if (v34)
                  {

                    return;
                  }
                }

                __break(1u);
                break;
              }
            }
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1B1BD4D78()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSPreferences_defaults);
  v2 = sub_1B1C2CB28();
  v3 = [v1 dictionaryForKey_];

  if (v3)
  {
    v4 = sub_1B1C2CA98();

    v5 = sub_1B1A8EB10();
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
      sub_1B1C2D628();

      sub_1B1A9EEE0((*(v4 + 56) + 32 * v7), &v18);
      sub_1B1C2D648();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    sub_1B1A90C78(&v18, &qword_1EB761DE0, &qword_1B1C352C0);
    v8 = sub_1B1C2CA78();

    v9 = sub_1B1C2CB28();
    [v1 setObject:v8 forKey:v9];
  }

  v10 = sub_1B1C2CB28();
  v11 = [v1 dictionaryForKey_];

  if (v11)
  {
    v12 = sub_1B1C2CA98();

    v13 = sub_1B1A8EB10();
    if (v14)
    {
      v15 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
      sub_1B1C2D628();

      sub_1B1A9EEE0((*(v12 + 56) + 32 * v15), &v18);
      sub_1B1C2D648();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    sub_1B1A90C78(&v18, &qword_1EB761DE0, &qword_1B1C352C0);
    v16 = sub_1B1C2CA78();

    v17 = sub_1B1C2CB28();
    [v1 setObject:v16 forKey:v17];
  }
}

void sub_1B1BD52CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B1BDE510(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1B1BD5338(v5);
  *a1 = v2;
}

void sub_1B1BD5338(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B1C2D768();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A0, &unk_1B1C37E80);
        v6 = sub_1B1C2CEB8();
        *(v6 + 16) = v5;
      }

      v49[0] = (v6 + 32);
      v49[1] = v5;
      sub_1B1BD5728(v49, v48, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v2 < 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return;
  }

  if (v2 < 2)
  {
    return;
  }

  v39 = v2;
  v7 = *a1;
  v8 = -1;
  v9 = 1;
  v43 = *a1;
  do
  {
    v41 = v9;
    v42 = v8;
    v10 = (v43 + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = v8;
    v40 = v7;
    while (1)
    {
      v14 = v7[1];
      v45 = *v7;
      v15 = (v12 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
      swift_beginAccess();
      v17 = *v15;
      v16 = v15[1];
      v50 = v14;
      v18 = (v14 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
      swift_beginAccess();
      v19 = v18[1];
      v46 = *v18;
      v47 = v13;
      if (v16)
      {
        if (!v19)
        {
          goto LABEL_27;
        }

        v20 = v17 == *v18 && v16 == v19;
        if (!v20 && (sub_1B1C2D7A8() & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v19)
      {
        goto LABEL_18;
      }

      v21 = (v12 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      swift_beginAccess();
      v22 = *v21;
      v23 = v21[1];
      v24 = (v50 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      swift_beginAccess();
      v25 = v22 == *v24 && v23 == v24[1];
      if (!v25 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v26 = v47;
      if (v11 >= v45)
      {
        goto LABEL_50;
      }

LABEL_45:
      if (!v43)
      {
        goto LABEL_57;
      }

      v11 = v7[2];
      v12 = v7[3];
      *(v7 + 1) = *v7;
      *v7 = v11;
      v7[1] = v12;
      v7 -= 2;
      v38 = __CFADD__(v26, 1);
      v13 = v26 + 1;
      if (v38)
      {
        goto LABEL_50;
      }
    }

    if (!v16)
    {
LABEL_18:
      v17 = 0;
      v16 = 0xE000000000000000;
    }

LABEL_27:
    v27 = (v12 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
    swift_beginAccess();
    v28 = v27[1];
    v44 = *v27;
    if (v19)
    {
      v29 = v46;
    }

    else
    {
      v29 = 0;
    }

    if (v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = (v50 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
    swift_beginAccess();
    v33 = *v31;
    v32 = v31[1];
    v34 = v17 == v29 && v16 == v30;
    if (!v34 && (sub_1B1C2D7A8() & 1) == 0)
    {
      v37 = sub_1B1C2D7A8();

      v26 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    if (v44 != v33 || v28 != v32)
    {
      v36 = sub_1B1C2D7A8();

      v26 = v47;
      if ((v36 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

LABEL_50:
    v9 = v41 + 1;
    v7 = v40 + 2;
    v8 = v42 - 1;
  }

  while (v41 + 1 != v39);
}

void sub_1B1BD5728(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_162:
    v160 = *a1;
    if (!*a1)
    {
      goto LABEL_204;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_164:
      v129 = (v8 + 16);
      v130 = *(v8 + 16);
      while (v130 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_201;
        }

        v131 = v8;
        v132 = (v8 + 16 * v130);
        v133 = *v132;
        v134 = &v129[2 * v130];
        v8 = *(v134 + 1);
        sub_1B1BD6230((*a3 + 16 * *v132), (*a3 + 16 * *v134), (*a3 + 16 * v8), v160);
        if (v5)
        {
          break;
        }

        if (v8 < v133)
        {
          goto LABEL_189;
        }

        if (v130 - 2 >= *v129)
        {
          goto LABEL_190;
        }

        *v132 = v133;
        v132[1] = v8;
        v135 = *v129 - v130;
        if (*v129 < v130)
        {
          goto LABEL_191;
        }

        v130 = *v129 - 1;
        sub_1B1BDD81C(v134 + 16, v135, v134);
        *v129 = v130;
        v8 = v131;
      }

LABEL_172:

      return;
    }

LABEL_198:
    v8 = sub_1B1BDD728(v8);
    goto LABEL_164;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v145 = v7;
    if (v7 + 1 >= v6)
    {
      v19 = v7 + 1;
      goto LABEL_57;
    }

    v147 = v6;
    v9 = *a3 + 16 * (v7 + 1);
    v10 = *v9;
    v11 = (*a3 + 16 * v7);
    v12 = v7;
    v14 = *v11;
    v13 = v11[1];
    v15 = *(v9 + 8);
    v16 = v13;
    v149 = sub_1B1BD3B6C(v10, v15, v14, v16);
    if (v5)
    {

      return;
    }

    v17 = v12 + 2;
    v155 = 16 * v12;
    v18 = v11 + 5;
    v7 = v12;
    v143 = v8;
    while (1)
    {
      v19 = v147;
      if (v17 >= v147)
      {
        break;
      }

      v157 = v18;
      v158 = v17;
      v20 = *v18;
      v151 = *(v18 - 1);
      v22 = *(v18 - 3);
      v21 = *(v18 - 2);
      v23 = (*v18 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
      swift_beginAccess();
      v25 = *v23;
      v24 = v23[1];
      v160 = v21;
      v26 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
      swift_beginAccess();
      v27 = *v26;
      v28 = *(v26 + 1);
      if (v24)
      {
        if (!v28)
        {
          goto LABEL_24;
        }

        v29 = v25 == v27 && v24 == v28;
        if (!v29 && (sub_1B1C2D7A8() & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (v28)
      {
        goto LABEL_16;
      }

      v31 = (v20 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      swift_beginAccess();
      v32 = *v31;
      v33 = v31[1];
      v34 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
      swift_beginAccess();
      v35 = v32 == *v34 && v33 == *(v34 + 1);
      if (v35 || (sub_1B1C2D7A8() & 1) != 0)
      {
        v36 = v151 < v22;
        goto LABEL_45;
      }

      if (v24)
      {
LABEL_24:
        v30 = v24;
        goto LABEL_25;
      }

LABEL_16:
      v25 = 0;
      v30 = 0xE000000000000000;
LABEL_25:
      v37 = (v20 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
      swift_beginAccess();
      v38 = v37[1];
      v152 = *v37;
      if (v28)
      {
        v39 = v27;
      }

      else
      {
        v39 = 0;
      }

      if (v28)
      {
        v40 = v28;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      v41 = &v160[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
      swift_beginAccess();
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = v25 == v39 && v30 == v40;
      if (v44 || (sub_1B1C2D7A8() & 1) != 0)
      {

        if (v152 == v42 && v38 == v43)
        {

          v8 = v143;
          v7 = v145;
          v46 = v158;
          if (v149)
          {
            v19 = v158;
            v5 = 0;
            goto LABEL_50;
          }

          goto LABEL_46;
        }

        v36 = sub_1B1C2D7A8();
      }

      else
      {
        v36 = sub_1B1C2D7A8();
      }

LABEL_45:
      v8 = v143;
      v7 = v145;
      v46 = v158;
      if ((v149 ^ v36))
      {
        v19 = v158;
        break;
      }

LABEL_46:
      v17 = v46 + 1;
      v18 = v157 + 2;
    }

    v5 = 0;
    if (!v149)
    {
      goto LABEL_57;
    }

LABEL_50:
    if (v19 < v7)
    {
      goto LABEL_195;
    }

    if (v7 < v19)
    {
      v47 = 0;
      v48 = 16 * v19;
      v49 = v7;
      do
      {
        if (v49 != v19 + v47 - 1)
        {
          v50 = *a3;
          if (!*a3)
          {
            goto LABEL_202;
          }

          v51 = (v50 + v155);
          v52 = v50 + v48;
          v53 = *v51;
          v54 = v51[1];
          *v51 = *(v52 - 16);
          *(v52 - 16) = v53;
          *(v52 - 8) = v54;
        }

        ++v49;
        --v47;
        v48 -= 16;
        v155 += 16;
      }

      while (v49 < v19 + v47);
    }

LABEL_57:
    v55 = a3[1];
    if (v19 >= v55)
    {
      goto LABEL_110;
    }

    if (__OFSUB__(v19, v7))
    {
      goto LABEL_194;
    }

    if (v19 - v7 >= a4)
    {
LABEL_110:
      if (v19 < v7)
      {
        goto LABEL_193;
      }

      v140 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1B04838();
        v8 = v127;
      }

      v85 = *(v8 + 16);
      v86 = v85 + 1;
      if (v85 >= *(v8 + 24) >> 1)
      {
        sub_1B1B04838();
        v8 = v128;
      }

      *(v8 + 16) = v86;
      v87 = v8 + 32;
      v88 = (v8 + 32 + 16 * v85);
      *v88 = v7;
      v88[1] = v140;
      v160 = *a1;
      if (!*a1)
      {
        goto LABEL_203;
      }

      if (!v85)
      {
LABEL_159:
        v6 = a3[1];
        v7 = v140;
        if (v140 >= v6)
        {
          goto LABEL_162;
        }

        continue;
      }

      while (1)
      {
        v89 = v86 - 1;
        v90 = (v87 + 16 * (v86 - 1));
        v91 = (v8 + 16 * v86);
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(v8 + 32);
          v93 = *(v8 + 40);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_130:
          if (v95)
          {
            goto LABEL_180;
          }

          v107 = *v91;
          v106 = v91[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_183;
          }

          v111 = v90[1];
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_186;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_188;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_152;
          }

          goto LABEL_145;
        }

        if (v86 < 2)
        {
          goto LABEL_182;
        }

        v114 = *v91;
        v113 = v91[1];
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_145:
        if (v110)
        {
          goto LABEL_185;
        }

        v116 = *v90;
        v115 = v90[1];
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_187;
        }

        if (v117 < v109)
        {
          goto LABEL_159;
        }

LABEL_152:
        if (v89 - 1 >= v86)
        {
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        if (!*a3)
        {
          goto LABEL_200;
        }

        v121 = (v87 + 16 * (v89 - 1));
        v122 = *v121;
        v123 = v87 + 16 * v89;
        v124 = *(v123 + 8);
        sub_1B1BD6230((*a3 + 16 * *v121), (*a3 + 16 * *v123), (*a3 + 16 * v124), v160);
        if (v5)
        {
          goto LABEL_172;
        }

        if (v124 < v122)
        {
          goto LABEL_175;
        }

        v125 = v8;
        v8 = *(v8 + 16);
        if (v89 > v8)
        {
          goto LABEL_176;
        }

        *v121 = v122;
        v121[1] = v124;
        if (v89 >= v8)
        {
          goto LABEL_177;
        }

        v86 = v8 - 1;
        sub_1B1BDD81C((v123 + 16), v8 - 1 - v89, (v87 + 16 * v89));
        *(v125 + 16) = v8 - 1;
        v126 = v8 > 2;
        v8 = v125;
        if (!v126)
        {
          goto LABEL_159;
        }
      }

      v96 = v87 + 16 * v86;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_178;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_179;
      }

      v103 = v91[1];
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_181;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_184;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = v90[1];
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_192;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_152;
      }

      goto LABEL_130;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_196;
  }

  if (v7 + a4 < v55)
  {
    v55 = v7 + a4;
  }

  if (v55 < v7)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (v19 == v55)
  {
    goto LABEL_110;
  }

  v139 = v55;
  v144 = v8;
  v137 = v5;
  v150 = *a3;
  v56 = (*a3 + 16 * v19);
  v57 = v7 - v19;
  while (2)
  {
    v148 = v19;
    v58 = (v150 + 16 * v19);
    v59 = *v58;
    v60 = v58[1];
    v141 = v57;
    v142 = v56;
LABEL_67:
    v159 = v57;
    v156 = *(v56 - 2);
    v61 = *(v56 - 1);
    v62 = (v60 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
    swift_beginAccess();
    v63 = *v62;
    v64 = v62[1];
    v160 = v61;
    v65 = &v61[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
    swift_beginAccess();
    v66 = *v65;
    v67 = *(v65 + 1);
    if (!v64)
    {
      if (v67)
      {
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (v67)
    {
      v68 = v63 == v66 && v64 == v67;
      if (v68 || (sub_1B1C2D7A8() & 1) != 0)
      {
LABEL_77:
        v153 = v63;
        v70 = (v60 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
        swift_beginAccess();
        v71 = *v70;
        v72 = v70[1];
        v73 = &v160[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
        swift_beginAccess();
        v74 = v71 == *v73 && v72 == *(v73 + 1);
        if (v74 || (sub_1B1C2D7A8() & 1) != 0)
        {
          if (v59 >= v156)
          {
            goto LABEL_108;
          }

          goto LABEL_104;
        }

        v63 = v153;
        if (v64)
        {
          goto LABEL_85;
        }

LABEL_76:
        v69 = 0;
        v64 = 0xE000000000000000;
        goto LABEL_86;
      }
    }

LABEL_85:
    v69 = v63;
LABEL_86:
    v75 = (v60 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
    swift_beginAccess();
    v76 = v75[1];
    v154 = *v75;
    if (v67)
    {
      v77 = v66;
    }

    else
    {
      v77 = 0;
    }

    if (v67)
    {
      v78 = v67;
    }

    else
    {
      v78 = 0xE000000000000000;
    }

    v79 = &v160[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
    swift_beginAccess();
    v80 = *v79;
    v81 = *(v79 + 1);
    v82 = v69 == v77 && v64 == v78;
    if (v82 || (sub_1B1C2D7A8() & 1) != 0)
    {

      if (v154 == v80 && v76 == v81)
      {

LABEL_108:
        v19 = v148 + 1;
        v56 = v142 + 2;
        v57 = v141 - 1;
        if (v148 + 1 == v139)
        {
          v5 = v137;
          v8 = v144;
          v7 = v145;
          v19 = v139;
          goto LABEL_110;
        }

        continue;
      }

      v84 = sub_1B1C2D7A8();
    }

    else
    {
      v84 = sub_1B1C2D7A8();
    }

    break;
  }

  if ((v84 & 1) == 0)
  {
    goto LABEL_108;
  }

LABEL_104:
  if (v150)
  {
    v59 = *v56;
    v60 = v56[1];
    *v56 = *(v56 - 1);
    *(v56 - 1) = v60;
    *(v56 - 2) = v59;
    v56 -= 2;
    v57 = v159 + 1;
    if (v159 == -1)
    {
      goto LABEL_108;
    }

    goto LABEL_67;
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}

uint64_t sub_1B1BD6230(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B1AC9DF0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_34;
      }

      v12 = *v6;
      v14 = *v4;
      v13 = *(v4 + 1);
      v30 = *(v6 + 1);
      v29 = v13;
      v15 = sub_1B1BD3ED0(&v30, &v29);
      v16 = v15 == 2 ? v12 < v14 : v15;
      if (!v16)
      {
        break;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 16;
      if (!v18)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 16;
    }

    v17 = v4;
    v18 = v7 == v4;
    v4 += 16;
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_15:
    *v7 = *v17;
    goto LABEL_16;
  }

  sub_1B1AC9DF0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_18:
  v19 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v21 = *(v10 - 2);
    v23 = *(v6 - 2);
    v22 = *(v6 - 1);
    v30 = *(v10 - 1);
    v29 = v22;
    v24 = sub_1B1BD3ED0(&v30, &v29);
    if (v24 == 2)
    {
      v25 = v21 < v23;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      v18 = v5 + 16 == v6;
      v6 -= 16;
      if (!v18)
      {
        *v5 = *v19;
        v6 = v19;
      }

      goto LABEL_18;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_34:
  v26 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v26])
  {
    memmove(v6, v4, 16 * v26);
  }

  return 1;
}

unint64_t sub_1B1BD6460()
{
  result = qword_1EB763FD8;
  if (!qword_1EB763FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB763FD0, &qword_1B1C40A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763FD8);
  }

  return result;
}

void *sub_1B1BD6504(uint64_t a1)
{
  v2 = OBJC_IVAR___TTSAsset_age;
  OUTLINED_FUNCTION_7_3(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1B1BD6580(uint64_t a1)
{
  v2 = OBJC_IVAR___TTSAsset_downloadSize;
  OUTLINED_FUNCTION_7_3(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B1BD66BC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___TTSAsset____lazy_storage___brand;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *TTSAsset.effectiveDiskSize.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB0, &unk_1B1C40E10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v55 - v2;
  v66 = sub_1B1C2BFD8();
  OUTLINED_FUNCTION_7();
  v60 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_1B1C2C078();
  OUTLINED_FUNCTION_7();
  v59 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v55 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v55 - v26;
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v25);
  if (result)
  {
    v29 = result;
    v58 = v10;
    v30 = [result bundleURL];

    sub_1B1C2C168();
    v61 = v17;
    v63 = *(v17 + 32);
    v64 = v17 + 32;
    v63(v27, v24, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C36280;
    v32 = *MEMORY[0x1E695DB50];
    v33 = *MEMORY[0x1E695DB78];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    *(inited + 40) = v33;
    v34 = v32;
    v35 = v33;
    sub_1B1B483DC(inited);
    v37 = v36;
    v38 = [objc_opt_self() defaultManager];

    sub_1B1BD6F24(v39, sub_1B1B36F90, sub_1B1BDE214);
    v40 = sub_1B1C2D088();

    if (v40)
    {
      v65 = v37;
      v56 = v27;
      v55 = v40;
      sub_1B1C2D058();
      v57 = 0;
      v41 = (v61 + 1);
      v42 = (v60 + 4);
      ++v60;
      v61 = v42;
      while (1)
      {
        sub_1B1C2C068();
        if (!v67)
        {
          break;
        }

        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
          v63(v21, v9, v15);
          sub_1B1C2C0D8();
          v43 = v66;
          __swift_storeEnumTagSinglePayload(v3, 0, 1, v66);
          v44 = v62;
          (*v61)(v62, v3, v43);
          v45 = sub_1B1C2BF98();
          if (v45 == 2 || (v45 & 1) != 0)
          {
            (*v60)(v44, v66);
            v46 = OUTLINED_FUNCTION_8_28();
            v47(v46);
          }

          else
          {
            v48 = sub_1B1C2BFC8();
            v49 = v44;
            v51 = v50;
            (*v60)(v49, v66);
            v52 = OUTLINED_FUNCTION_8_28();
            v53(v52);
            if ((v51 & 1) == 0)
            {
              v54 = __OFADD__(v57, v48);
              v57 += v48;
              if (v54)
              {
                __break(1u);
                break;
              }
            }
          }
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
          sub_1B1A90C78(v9, &unk_1EB761F00, &qword_1B1C36480);
        }
      }

      (*(v59 + 8))(v14, v58);
      (*v41)(v56, v15);
      return v57;
    }

    else
    {
      (v61)[1](v27, v15);

      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1BD6F24(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_1B1A9D350(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1B1BD7234@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

void sub_1B1BD7290(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B1BD6540(v1);
}

uint64_t sub_1B1BD7350@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

void sub_1B1BD73AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B1BD65BC(v1);
}

void *sub_1B1BD7410(uint64_t a1)
{
  v2 = OBJC_IVAR___TTSAsset_diskSize;
  OUTLINED_FUNCTION_7_3(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B1BD74A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

void sub_1B1BD7504(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B1BD65FC(v1);
}

void *sub_1B1BD7578(uint64_t a1)
{
  v2 = OBJC_IVAR___TTSAsset_bundle;
  OUTLINED_FUNCTION_7_3(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B1BD7610@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

void sub_1B1BD7674(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B1BD667C(v1);
}

uint64_t sub_1B1BD7700@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id TTSAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL TTSAsset.locallyAvailable.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t OpusEncoder.__allocating_init(sourceFormat:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0();
  v2 = swift_allocObject();
  OpusEncoder.init(sourceFormat:)(a1);
  return v2;
}

uint64_t OpusEncoder.init(sourceFormat:)(uint64_t a1)
{
  v2 = v1;
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v4;
  v38 = *(a1 + 32);
  v5 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
  if (!v5)
  {
    *v36 = 0;
    *&v36[8] = 0xE000000000000000;
    sub_1B1C2D538();
    v34 = *v36;
    MEMORY[0x1B27381B0](0xD00000000000001ALL, 0x80000001B1C52A00);
    v13 = *(a1 + 16);
    *v36 = *a1;
    *&v36[16] = v13;
    *&v36[32] = *(a1 + 32);
    type metadata accessor for AudioStreamBasicDescription(0);
    sub_1B1C2D618();
    v14 = sub_1B1A9EC9C();
    v15 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v14);
    OUTLINED_FUNCTION_0_18(v15, v16);
    *(v17 + 8) = v34;
    swift_willThrow();
LABEL_12:
    type metadata accessor for OpusEncoder();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v6 = v5;
  *(v2 + 16) = v5;
  OUTLINED_FUNCTION_5_30();
  *v36 = v7;
  *&v36[8] = xmmword_1B1C387F0;
  *&v36[24] = xmmword_1B1C38800;
  v8 = objc_allocWithZone(MEMORY[0x1E6958418]);
  v9 = v6;
  v10 = [v8 initWithStreamDescription_];
  if (!v10)
  {
    v18 = sub_1B1A9EC9C();
    v19 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v18);
    OUTLINED_FUNCTION_0_18(v19, v20);
    *(v21 + 8) = 0xD00000000000001FLL;
    *(v21 + 16) = 0x80000001B1C52A20;
    swift_willThrow();

    v22 = *(v2 + 16);
LABEL_11:

    goto LABEL_12;
  }

  v11 = v10;
  *(v2 + 24) = v10;
  sub_1B1A8E474(0, &qword_1ED9A9880, 0x1E69E58C0);
  v12 = v11;
  if (sub_1B1C2D248())
  {

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    return v2;
  }

  sub_1B1A8E474(0, &qword_1EB761030, 0x1E69583F0);
  v23 = v9;
  v24 = v12;
  v25 = sub_1B1B3FA14(v23, v24);
  if (!v25)
  {
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000035, 0x80000001B1C52A40);
    type metadata accessor for AudioStreamBasicDescription(0);
    sub_1B1C2D618();
    v28 = sub_1B1A9EC9C();
    v29 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v28);
    OUTLINED_FUNCTION_0_18(v29, v30);
    *(v31 + 8) = v35;
    swift_willThrow();

    v22 = *(v2 + 24);
    goto LABEL_11;
  }

  *(v2 + 32) = v25;
  v26 = v25;
  if ([v26 maximumOutputPacketSize])
  {
    v27 = [v26 maximumOutputPacketSize];
  }

  else
  {
    v27 = 1024;
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69583D8]) initWithFormat:v24 packetCapacity:50 maximumPacketSize:v27];

  *(v2 + 40) = v33;
  return v2;
}

void *sub_1B1BD7FEC()
{
  v2 = v0[4];
  if (v2)
  {
    v3 = objc_allocWithZone(type metadata accessor for AudioData());
    v4 = v2;
    v5 = [v3 init];
    sub_1B1AD16A4(v5);
    if (v1)
    {
    }

    else
    {
      v0 = v6;

      [v4 reset];
    }
  }

  else
  {
    v0 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
    v7 = v0 + OBJC_IVAR___SiriTTSAudioData_asbd;
    swift_beginAccess();
    OUTLINED_FUNCTION_5_30();
    *v7 = v8;
    *(v7 + 8) = xmmword_1B1C387F0;
    *(v7 + 24) = xmmword_1B1C38800;
  }

  return v0;
}

uint64_t OpusEncoder.__deallocating_deinit()
{
  OpusEncoder.deinit();
  v0 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t dispatch thunk of OpusEncoder.__allocating_init(sourceFormat:)(uint64_t *a1)
{
  v2 = *(v1 + 112);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

SiriTTSService::SynthesisCacheFile::SynthesisCacheChunkIterator __swiftcall SynthesisCacheFile.makeIterator()()
{
  v2 = v0;
  v3 = *(v1 + *(type metadata accessor for SynthesisCacheFile(0) + 20));
  *v2 = v3;

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SynthesisCacheFile.close()()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + *(type metadata accessor for SynthesisCacheFile(0) + 20));
  v10 = 0;
  v3 = [v2 seekToOffset:0 error:&v10];
  v4 = v10;
  if (!v3)
  {
LABEL_7:
    v9 = v4;
    sub_1B1C2C058();

    swift_willThrow();
    return;
  }

  v5 = qword_1ED9A5138;
  v6 = v10;
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED9A5138);
  }

  v10 = qword_1ED9A5140;
  v11 = *algn_1ED9A5148;
  sub_1B1AA64DC(qword_1ED9A5140, *algn_1ED9A5148);
  sub_1B1AD03C8();
  sub_1B1C2D078();
  sub_1B1A94524(v10, v11);
  if (!v1)
  {
    v10 = 0;
    v7 = [v2 closeAndReturnError_];
    v4 = v10;
    if (v7)
    {
      v8 = v10;
      return;
    }

    goto LABEL_7;
  }
}

uint64_t SynthesisCache.init(audio:timingInfos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B1BD83B4()
{
  result = sub_1B1BD83D4();
  qword_1ED9A5228 = result;
  return result;
}

uint64_t sub_1B1BD83D4()
{
  v0 = sub_1B1C2C0A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1C2C1C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = [objc_opt_self() mainBundle];
  v15 = sub_1B1A91B08(v14);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    sub_1B1C2C0B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v19 = swift_allocObject();
    v28 = v8;
    *(v19 + 16) = xmmword_1B1C364E0;
    *(v19 + 32) = 0x7972617262694CLL;
    *(v19 + 40) = 0xE700000000000000;
    *(v19 + 48) = 0x736568636143;
    *(v19 + 56) = 0xE600000000000000;
    *(v19 + 64) = v17;
    *(v19 + 72) = v18;
    strcpy((v19 + 80), "SynthesisCache");
    *(v19 + 95) = -18;
    (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v0);
    sub_1B1A8EDAC();
    sub_1B1C2C1A8();

    (*(v1 + 8))(v3, v0);
    v20 = *(v5 + 8);
    v20(v11, v4);
    (*(v5 + 16))(v28, v13, v4);
    type metadata accessor for CacheStorage(0);
    v21 = swift_allocObject();
    sub_1B1BD892C();
    v20(v13, v4);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B1A8A000, v23, v24, "Missing bundle identifier for CacheStorage", v25, 2u);
      MEMORY[0x1B2739FD0](v25, -1, -1);
    }

    return 0;
  }

  return v21;
}

void sub_1B1BD892C()
{
  OUTLINED_FUNCTION_12_17();
  v2 = v1;
  v32 = *MEMORY[0x1E69E9840];
  v3 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v11 = *(v5 + 16);
  v29 = v2;
  v11(v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v2, v3);
  v31 = 0;
  v26 = objc_opt_self();
  v12 = [v26 defaultManager];
  v27 = v10;
  v28 = v11;
  v11(v9, v0 + v10, v3);
  sub_1B1C2C098();
  v13 = *(v5 + 8);
  v13(v9, v3);
  v14 = sub_1B1C2CB28();

  LOBYTE(v10) = [v12 fileExistsAtPath:v14 isDirectory:&v31];

  if (v10)
  {
    v15 = v29;
    v16 = v3;
    v17 = v13;
    if ((v31 & 1) == 0)
    {
      sub_1B1C2D538();

      v30[0] = 0xD000000000000013;
      v30[1] = 0x80000001B1C52C40;
      sub_1B1B317AC();
      v18 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v18);

      MEMORY[0x1B27381B0](0xD000000000000015, 0x80000001B1C52C60);
      v19 = sub_1B1A9EC9C();
      OUTLINED_FUNCTION_34(&type metadata for TTSError, v19);
      *v20 = 1;
      *(v20 + 8) = 0xD000000000000013;
      *(v20 + 16) = 0x80000001B1C52C40;
LABEL_8:
      swift_willThrow();

      v17(v15, v16);
      goto LABEL_9;
    }
  }

  else
  {
    v21 = [v26 defaultManager];
    v28(v9, v0 + v27, v3);
    v22 = sub_1B1C2C118();
    v13(v9, v3);
    v30[0] = 0;
    v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v30];

    v16 = v3;
    v17 = v13;
    if (!v23)
    {
      v25 = v30[0];
      OUTLINED_FUNCTION_19_5();
      sub_1B1C2C058();

      v15 = v29;
      goto LABEL_8;
    }

    v24 = v30[0];
    v15 = v29;
  }

  v17(v15, v16);
LABEL_9:
  OUTLINED_FUNCTION_13_23();
}

void sub_1B1BD8C94()
{
  OUTLINED_FUNCTION_12_17();
  v27 = v1;
  v28 = v2;
  v4 = v3;
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v11 = (v10 - v9);
  v12 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  (*(v14 + 16))(v18, v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v12);
  v29[0] = v4;
  v29[1] = v28;
  (*(v7 + 104))(v11, *MEMORY[0x1E6968F68], v5);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v19 = OUTLINED_FUNCTION_42_0();
  v20(v19);
  v21 = *(v14 + 8);
  v21(v18, v12);
  v22 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_19_5();

  v29[0] = 0;
  LOBYTE(v4) = [v22 removeItemAtPath:v11 error:v29];

  if (v4)
  {
    v23 = v29[0];
  }

  else
  {
    v25 = v29[0];
    sub_1B1C2C058();

    swift_willThrow();
  }

  v24 = OUTLINED_FUNCTION_15();
  (v21)(v24);
  OUTLINED_FUNCTION_13_23();
}

void sub_1B1BD8F50()
{
  OUTLINED_FUNCTION_12_17();
  v55[2] = *MEMORY[0x1E69E9840];
  v52 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v51 = v6 - v5;
  v7 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_132();
  v48 = v11;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v46 = objc_opt_self();
  v15 = [v46 defaultManager];
  v16 = *(v9 + 16);
  v53 = v0;
  v44 = v9 + 16;
  v45 = OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v43 = v16;
  v16(v14, v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v7);
  sub_1B1C2C098();
  OUTLINED_FUNCTION_25_11();
  v17 = *(v9 + 8);
  v47 = v14;
  v49 = v9 + 8;
  v50 = v7;
  v42 = v17;
  v17(v14, v7);
  OUTLINED_FUNCTION_42_1();
  v18 = sub_1B1C2CB28();

  v55[0] = 0;
  v19 = [v15 contentsOfDirectoryAtPath:v18 error:v55];

  v20 = v55[0];
  if (v19)
  {
    v37 = v1;
    v21 = sub_1B1C2CE78();
    v22 = v20;

    v23 = 0;
    v41 = *(v21 + 16);
    v40 = *MEMORY[0x1E6968F68];
    v38 = (v3 + 8);
    v39 = (v3 + 104);
    v54 = v21;
    for (i = (v21 + 40); ; i += 2)
    {
      if (v41 == v23)
      {

        goto LABEL_11;
      }

      if (v23 >= *(v54 + 16))
      {
        __break(1u);
      }

      v26 = *(i - 1);
      v25 = *i;

      v27 = [v46 defaultManager];
      v28 = v48;
      v29 = v50;
      v43(v48, v53 + v45, v50);
      v55[0] = v26;
      v55[1] = v25;
      v31 = v51;
      v30 = v52;
      (*v39)(v51, v40, v52);
      sub_1B1A8EDAC();
      v32 = v47;
      sub_1B1C2C1B8();
      (*v38)(v31, v30);
      v33 = v42;
      v42(v28, v29);

      sub_1B1C2C098();
      OUTLINED_FUNCTION_25_11();
      v33(v32, v29);
      OUTLINED_FUNCTION_42_1();
      v34 = sub_1B1C2CB28();

      v55[0] = 0;
      LODWORD(v25) = [v27 removeItemAtPath:v34 error:v55];

      v35 = v55[0];
      if (!v25)
      {
        break;
      }

      ++v23;
    }

    v36 = v35;
  }

  else
  {
    v36 = v55[0];
  }

  sub_1B1C2C058();

  swift_willThrow();
LABEL_11:
  OUTLINED_FUNCTION_13_23();
}

void sub_1B1BD937C(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v75 = a2;
  v77[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B1C2C1C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v76 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v68 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v62 - v9;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1C2C8A8();
  v11 = __swift_project_value_buffer(v10, qword_1ED9A9120);

  v72 = v11;
  v12 = sub_1B1C2C888();
  v13 = sub_1B1C2D0D8();

  v14 = os_log_type_enabled(v12, v13);
  v73 = v3;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v77[0] = v16;
    *v15 = 136446210;
    v17 = v64;
    (*(v4 + 16))(v64, a1 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v73);
    sub_1B1B317AC();
    v18 = sub_1B1C2D778();
    v20 = v19;
    (*(v4 + 8))(v17, v73);
    v21 = sub_1B1A930E4(v18, v20, v77);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1B1A8A000, v12, v13, "Cleaning cache storage: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2739FD0](v16, -1, -1);
    v22 = v15;
    v3 = v73;
    MEMORY[0x1B2739FD0](v22, -1, -1);
  }

  v65 = a1;
  v23 = sub_1B1BDA094(a1);
  v24 = sub_1B1BDA3E8(v23, v75);

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = objc_opt_self();
    v62 = v24;
    v63 = v4;
    v28 = v4 + 16;
    v27 = *(v4 + 16);
    v29 = v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v74 = *(v4 + 72);
    v75 = (v4 + 8);
    *&v30 = 136315138;
    v66 = v30;
    v31 = v68;
    v70 = v28;
    v71 = v26;
    v67 = v27;
    do
    {
      v27(v31, v29, v3);
      v32 = [v26 defaultManager];
      v33 = sub_1B1C2C118();
      v77[0] = 0;
      v34 = [v32 removeItemAtURL:v33 error:v77];

      if (v34)
      {
        v35 = *v75;
        v36 = v77[0];
        v35(v31, v3);
      }

      else
      {
        v37 = v77[0];
        v38 = sub_1B1C2C058();

        swift_willThrow();
        v27(v76, v31, v3);
        v39 = sub_1B1C2C888();
        v40 = sub_1B1C2D0C8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v77[0] = v42;
          *v41 = v66;
          sub_1B1B317AC();
          v43 = sub_1B1C2D778();
          v45 = v44;
          v69 = v38;
          v46 = *v75;
          (*v75)(v76, v73);
          v47 = sub_1B1A930E4(v43, v45, v77);
          v3 = v73;

          *(v41 + 4) = v47;
          _os_log_impl(&dword_1B1A8A000, v39, v40, "Unable to remove cache file at path: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v31 = v68;
          MEMORY[0x1B2739FD0](v42, -1, -1);
          v27 = v67;
          MEMORY[0x1B2739FD0](v41, -1, -1);

          v46(v31, v3);
        }

        else
        {

          v48 = *v75;
          (*v75)(v76, v3);
          v48(v31, v3);
        }

        v26 = v71;
      }

      v29 += v74;
      --v25;
    }

    while (v25);

    v4 = v63;
  }

  else
  {
  }

  v49 = v65;

  v50 = sub_1B1C2C888();
  v51 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v49;
    v55 = v4;
    v56 = v53;
    v77[0] = v53;
    *v52 = 136446210;
    v57 = v64;
    (*(v55 + 16))(v64, v54 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v3);
    sub_1B1B317AC();
    v58 = sub_1B1C2D778();
    v60 = v59;
    (*(v55 + 8))(v57, v3);
    v61 = sub_1B1A930E4(v58, v60, v77);

    *(v52 + 4) = v61;
    _os_log_impl(&dword_1B1A8A000, v50, v51, "Cleaned cache storage: %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x1B2739FD0](v56, -1, -1);
    MEMORY[0x1B2739FD0](v52, -1, -1);
  }
}

void sub_1B1BD9A5C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v78 = v3;
  v79 = v2;
  v81[1] = *MEMORY[0x1E69E9840];
  v77 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_132();
  v80 = v7;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v66 - v9;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v66 - v11;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v12 = sub_1B1C2C8A8();
  v13 = __swift_project_value_buffer(v12, qword_1ED9A9120);

  v76 = v13;
  v14 = sub_1B1C2C888();
  v15 = sub_1B1C2D0D8();

  v16 = os_log_type_enabled(v14, v15);
  v69 = v1;
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_21_0();
    v18 = OUTLINED_FUNCTION_19_0();
    v81[0] = v18;
    *v17 = 136446210;
    v19 = v1 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
    v20 = v68;
    v21 = v77;
    (*(v5 + 16))(v68, v19, v77);
    sub_1B1B317AC();
    sub_1B1C2D778();
    OUTLINED_FUNCTION_25_11();
    v22 = v21;
    v1 = v69;
    (*(v5 + 8))(v20, v22);
    v23 = OUTLINED_FUNCTION_42_1();
    v26 = sub_1B1A930E4(v23, v24, v25);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_1B1A8A000, v14, v15, "Cleaning cache storage: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  sub_1B1BDA094(v1);
  v27 = v79();

  v28 = *(v27 + 16);
  v29 = v77;
  if (v28)
  {
    v30 = objc_opt_self();
    v66 = v27;
    v67 = v5;
    v32 = v5 + 16;
    v31 = *(v5 + 16);
    v33 = v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v78 = *(v5 + 72);
    v79 = (v5 + 8);
    *&v34 = 136315138;
    v70 = v34;
    v35 = v72;
    v74 = v32;
    v75 = v30;
    v71 = v31;
    do
    {
      v31(v35, v33, v29);
      v36 = [v30 defaultManager];
      v37 = sub_1B1C2C118();
      v81[0] = 0;
      v38 = [v36 removeItemAtURL:v37 error:v81];

      if (v38)
      {
        v39 = *v79;
        v40 = v81[0];
        v39(v35, v29);
      }

      else
      {
        v41 = v81[0];
        v42 = sub_1B1C2C058();

        swift_willThrow();
        v31(v80, v35, v29);
        v43 = sub_1B1C2C888();
        v44 = sub_1B1C2D0C8();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = OUTLINED_FUNCTION_21_0();
          v46 = OUTLINED_FUNCTION_19_0();
          v81[0] = v46;
          *v45 = v70;
          sub_1B1B317AC();
          v47 = sub_1B1C2D778();
          v49 = v48;
          v73 = v42;
          v50 = *v79;
          (*v79)(v80, v77);
          v51 = sub_1B1A930E4(v47, v49, v81);
          v29 = v77;

          *(v45 + 4) = v51;
          _os_log_impl(&dword_1B1A8A000, v43, v44, "Unable to remove cache file at path: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          v35 = v72;
          OUTLINED_FUNCTION_11();
          v31 = v71;
          OUTLINED_FUNCTION_11();

          v50(v35, v29);
        }

        else
        {

          v52 = *v79;
          (*v79)(v80, v29);
          v52(v35, v29);
        }

        v30 = v75;
      }

      v33 += v78;
      --v28;
    }

    while (v28);

    v5 = v67;
  }

  else
  {
  }

  v53 = v69;

  v54 = sub_1B1C2C888();
  v55 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_21_0();
    v57 = OUTLINED_FUNCTION_19_0();
    v58 = v53;
    v59 = v5;
    v60 = v57;
    v81[0] = v57;
    *v56 = 136446210;
    v61 = v68;
    (*(v59 + 16))(v68, v58 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v29);
    sub_1B1B317AC();
    sub_1B1C2D778();
    OUTLINED_FUNCTION_25_11();
    (*(v59 + 8))(v61, v29);
    v62 = OUTLINED_FUNCTION_42_1();
    v65 = sub_1B1A930E4(v62, v63, v64);

    *(v56 + 4) = v65;
    _os_log_impl(&dword_1B1A8A000, v54, v55, "Cleaned cache storage: %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  OUTLINED_FUNCTION_26_1();
}