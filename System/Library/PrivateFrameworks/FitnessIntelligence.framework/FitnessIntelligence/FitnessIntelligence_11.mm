uint64_t sub_1B4A516D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CC8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A51770(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A517DC(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A5185C()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D602C0);
  qword_1EB8A85D8 = 0xD000000000000036;
  unk_1EB8A85E0 = 0x80000001B4D5FDA0;
  return result;
}

uint64_t sub_1B4A518F8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A85E8);
  __swift_project_value_buffer(v0, qword_1EB8A85E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unavailableReasons";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C4A4();
        sub_1B4D17C6C();
      }

      else if (result == 2)
      {
        sub_1B4D17CDC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1B4A5C4A4(), result = sub_1B4D17DDC(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1B4D17E1C(), !v4))
    {
      type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A51CC4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A51D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CC0, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A51DF4(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A51E60(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A51EE0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8600);
  __swift_project_value_buffer(v0, qword_1EB8A8600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AVAILABLE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UNAVAILABLE";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0), sub_1B4A5C360(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A52348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CB8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A523E8(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A52454(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A524E8()
{
  result = MEMORY[0x1B8C7C620](0x7972746E452ELL, 0xE600000000000000);
  qword_1EB8A8630 = 0xD000000000000031;
  *algn_1EB8A8638 = 0x80000001B4D5FDE0;
  return result;
}

uint64_t sub_1B4A52578(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_1B4A525D4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8640);
  __swift_project_value_buffer(v0, qword_1EB8A8640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "role";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1B4D17E3C(), !v5))
  {
    v9 = v4[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_1B4D17E3C(), !v5))
    {
      type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A52A2C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A52A80(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
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

uint64_t sub_1B4A52B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CB0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A52BB0(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A52C1C(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A52C98(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A52E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CA8, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A52F2C(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A28, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A52F98(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8A28, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceCancellationResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17C5C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceCancellationResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1B4D17DCC(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_AnnounceCancellationResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A532D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CA0, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A53378(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A40, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A533E4(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8A40, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A53460(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C4F8();
        sub_1B4D17C6C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1B4A5C4F8(), result = sub_1B4D17DDC(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A536FC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A53774(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C98, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A53814(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A53880(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A53900()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A86A0);
  __swift_project_value_buffer(v0, qword_1EB8A86A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MILD";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HIGH";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A53B70()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A86B8);
  __swift_project_value_buffer(v0, qword_1EB8A86B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B4D1CBF0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "streamIdentifier";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "streamDescription";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "voice";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "intensity";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
LABEL_13:
        sub_1B4D17D1C();
      }

      else if (result == 2)
      {
        sub_1B4A53F0C(a1, v5, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_13;
        case 4:
          sub_1B4A53FC0(a1, v5, a2, a3);
          break;
        case 5:
          sub_1B4A54074(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_1B4A53F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A53FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A54074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = v4[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v5))
  {
    result = sub_1B4A54238(v4, a1, a2, a3);
    if (!v5)
    {
      v12 = v4[3];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v4[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_1B4D17E3C();
      }

      sub_1B4A54454(v4, a1, a2, a3);
      sub_1B4A54670(v4, a1, a2, a3);
      type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A54238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A76C8, &unk_1B4D22410);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A76C8, &unk_1B4D22410);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
}

uint64_t sub_1B4A54454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A54670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v12 + 36), v7, &qword_1EB8A76C0, &qword_1B4D1E798);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A76C0, &qword_1B4D1E798);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
}

uint64_t sub_1B4A548D8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_1B4D17BBC();
  v4 = a1[7];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t sub_1B4A54A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C90, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioAvailable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A54AE0(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioAvailable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A54B4C(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioAvailable);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A54C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t sub_1B4A54CD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), __n128 a5)
{
  v8 = v5[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1B4D17E3C(), !v6))
  {
    (a4)(0, a5);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A54D94(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A54ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C88, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A54F78(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A54FE4(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8A70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A55060(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A55150(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B4D1A800;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1B4D17E7C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A5533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1B4A5C360(a5, a6, a7);
      sub_1B4D17D3C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0), sub_1B4A5C360(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A55528(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A55644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A556B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A5575C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C80, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A557FC(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A55868(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioData);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A558FC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A559C4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8700);
  __swift_project_value_buffer(v0, qword_1EB8A8700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "streamIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunkIndex";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "audioData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "packetCount";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "packetDescriptions";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1B4D17D1C();
      }

      else if (result == 2)
      {
        sub_1B4D17D2C();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_13;
        case 4:
          sub_1B4D17CAC();
          break;
        case 5:
LABEL_13:
          sub_1B4D17C8C();
          break;
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(v4 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    result = sub_1B4D17E3C();
    if (v5)
    {
      return result;
    }
  }

  if (*(v4 + 16))
  {
    result = sub_1B4D17E4C();
    if (v5)
    {
      return result;
    }
  }

  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    goto LABEL_14;
  }

  if (v11)
  {
    v12 = v9;
    v13 = v9 >> 32;
LABEL_14:
    if (v12 == v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v10 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  result = sub_1B4D17DEC();
  if (v5)
  {
    return result;
  }

LABEL_16:
  if (!*(v4 + 40) || (result = sub_1B4D17DFC(), !v5))
  {
    v14 = *(v4 + 48);
    v15 = *(v4 + 56);
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_27;
      }

      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
    }

    else
    {
      if (!v16)
      {
        if ((v15 & 0xFF000000000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_26:
        result = sub_1B4D17DEC();
        if (v5)
        {
          return result;
        }

        goto LABEL_27;
      }

      v17 = v14;
      v18 = v14 >> 32;
    }

    if (v17 != v18)
    {
      goto LABEL_26;
    }

LABEL_27:
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A55F30@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1B4D223D0;
  *(a2 + 40) = 0;
  *(a2 + 48) = xmmword_1B4D223D0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A55F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A56000(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A560C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C78, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A56168(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A561D4(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A56270()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8718);
  __swift_project_value_buffer(v0, qword_1EB8A8718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "streamIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunkCount";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioComplete.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17D1C();
    }

    else if (result == 2)
    {
      sub_1B4D17D2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioComplete.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(v4 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1B4D17E3C(), !v5))
  {
    if (!*(v4 + 16) || (result = sub_1B4D17E4C(), !v5))
    {
      type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_StreamingAudioComplete.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A566B4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A566FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A56770(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A56814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioComplete);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A568B4(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8AA0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioComplete);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A56920(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8AA0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioComplete);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A5699C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A56A84()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8730);
  __swift_project_value_buffer(v0, qword_1EB8A8730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1AA90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "sampleRate";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "formatID";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "formatFlags";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bytesPerPacket";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "framesPerPacket";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bytesPerFrame";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "channelsPerFrame";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "bitsPerChannel";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "reservedData";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A56E2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D17E9C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1B4D17CFC();
            goto LABEL_13;
          }

          if (result != 2)
          {
            goto LABEL_13;
          }
        }
      }

      else if (result > 9)
      {
        goto LABEL_13;
      }

      sub_1B4D17D2C();
LABEL_13:
      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E2C(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_1B4D17E4C(), !v4))
    {
      if (!*(v3 + 12) || (result = sub_1B4D17E4C(), !v4))
      {
        if (!*(v3 + 16) || (result = sub_1B4D17E4C(), !v4))
        {
          if (!*(v3 + 20) || (result = sub_1B4D17E4C(), !v4))
          {
            if (!*(v3 + 24) || (result = sub_1B4D17E4C(), !v4))
            {
              if (!*(v3 + 28) || (result = sub_1B4D17E4C(), !v4))
              {
                if (!*(v3 + 32) || (result = sub_1B4D17E4C(), !v4))
                {
                  if (!*(v3 + 36) || (result = sub_1B4D17E4C(), !v4))
                  {
                    type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
                    return sub_1B4D17BAC();
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

uint64_t sub_1B4A571B4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4A5C360(a2, a3, a4);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A5723C@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A57284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A572F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A573C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C68, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A57460@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D17E9C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1B4A574FC(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A57568(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A575C0(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A5763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_InferenceTelemetryIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3] || (sub_1B4D18DCC() & 1) != 0)
  {
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_DeviceInferenceAvailabilityV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v71 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D60, &qword_1B4D25760);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v71 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v84 = &v71 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - v29;
  v81 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v82 = v22;
  v31 = v81[5];
  v32 = *(v22 + 48);
  v83 = a1;
  sub_1B4974FBC(a1 + v31, v30, &qword_1EB8A8798, &qword_1B4D22458);
  v80 = a2;
  sub_1B4974FBC(a2 + v31, &v30[v32], &qword_1EB8A8798, &qword_1B4D22458);
  v33 = *(v5 + 48);
  if (v33(v30, 1, v4) == 1)
  {
    if (v33(&v30[v32], 1, v4) == 1)
    {
      sub_1B4975024(v30, &qword_1EB8A8798, &qword_1B4D22458);
      v34 = v84;
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  sub_1B4974FBC(v30, v21, &qword_1EB8A8798, &qword_1B4D22458);
  if (v33(&v30[v32], 1, v4) == 1)
  {
    sub_1B4A46828(v21, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
LABEL_16:
    v47 = &qword_1EB8A8D60;
    v48 = &qword_1B4D25760;
LABEL_39:
    v53 = v30;
    goto LABEL_40;
  }

  v49 = v79;
  sub_1B4A3CCD0(&v30[v32], v79, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v50 = *v21;
  v51 = *v49;
  if (v21[8])
  {
    v50 = *v21 != 0;
  }

  if (*(v49 + 8) == 1)
  {
    v34 = v84;
    if (v51)
    {
      if (v50 != 1)
      {
        goto LABEL_38;
      }
    }

    else if (v50)
    {
LABEL_38:
      sub_1B4A46828(v49, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v21, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      v47 = &qword_1EB8A8798;
      v48 = &qword_1B4D22458;
      goto LABEL_39;
    }
  }

  else
  {
    v34 = v84;
    if (v50 != v51)
    {
      goto LABEL_38;
    }
  }

  if ((sub_1B4A0C158(*(v21 + 2), *(v49 + 16)) & 1) == 0)
  {
    goto LABEL_38;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v57 = sub_1B4D1816C();
  sub_1B4A46828(v49, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A46828(v21, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4975024(v30, &qword_1EB8A8798, &qword_1B4D22458);
  if ((v57 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_4:
  v35 = v81[6];
  v36 = *(v82 + 48);
  sub_1B4974FBC(v83 + v35, v34, &qword_1EB8A8798, &qword_1B4D22458);
  v37 = v80;
  sub_1B4974FBC(v80 + v35, v34 + v36, &qword_1EB8A8798, &qword_1B4D22458);
  if (v33(v34, 1, v4) == 1)
  {
    if (v33((v34 + v36), 1, v4) == 1)
    {
      sub_1B4975024(v34, &qword_1EB8A8798, &qword_1B4D22458);
      v38 = v78;
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  v52 = v77;
  sub_1B4974FBC(v34, v77, &qword_1EB8A8798, &qword_1B4D22458);
  if (v33((v34 + v36), 1, v4) == 1)
  {
    sub_1B4A46828(v52, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
LABEL_25:
    v47 = &qword_1EB8A8D60;
    v48 = &qword_1B4D25760;
    v53 = v34;
LABEL_40:
    sub_1B4975024(v53, v47, v48);
    goto LABEL_41;
  }

  v54 = v76;
  sub_1B4A3CCD0(v34 + v36, v76, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v55 = *v52;
  v56 = *v54;
  if (*(v52 + 8))
  {
    v55 = *v52 != 0;
  }

  if (*(v54 + 8) == 1)
  {
    v38 = v78;
    if (v56)
    {
      if (v55 != 1)
      {
        goto LABEL_58;
      }
    }

    else if (v55)
    {
LABEL_58:
      sub_1B4A46828(v54, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v52, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      v47 = &qword_1EB8A8798;
      v48 = &qword_1B4D22458;
      v53 = v34;
      goto LABEL_40;
    }
  }

  else
  {
    v38 = v78;
    if (v55 != v56)
    {
      goto LABEL_58;
    }
  }

  if ((sub_1B4A0C158(*(v52 + 16), *(v54 + 16)) & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v64 = sub_1B4D1816C();
  sub_1B4A46828(v54, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A46828(v52, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4975024(v34, &qword_1EB8A8798, &qword_1B4D22458);
  if ((v64 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_7:
  v39 = v81[7];
  v40 = *(v82 + 48);
  sub_1B4974FBC(v83 + v39, v38, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4974FBC(v37 + v39, v38 + v40, &qword_1EB8A8798, &qword_1B4D22458);
  if (v33(v38, 1, v4) == 1)
  {
    if (v33((v38 + v40), 1, v4) == 1)
    {
      sub_1B4975024(v38, &qword_1EB8A8798, &qword_1B4D22458);
      goto LABEL_10;
    }

    goto LABEL_45;
  }

  v59 = v75;
  sub_1B4974FBC(v38, v75, &qword_1EB8A8798, &qword_1B4D22458);
  if (v33((v38 + v40), 1, v4) == 1)
  {
    sub_1B4A46828(v59, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
LABEL_45:
    v47 = &qword_1EB8A8D60;
    v48 = &qword_1B4D25760;
    v53 = v38;
    goto LABEL_40;
  }

  v60 = v38 + v40;
  v61 = v73;
  sub_1B4A3CCD0(v60, v73, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v62 = *v59;
  v63 = *v61;
  if (*(v59 + 8))
  {
    v62 = *v59 != 0;
  }

  if (*(v61 + 8) == 1)
  {
    if (v63)
    {
      if (v62 != 1)
      {
        goto LABEL_74;
      }
    }

    else if (v62)
    {
LABEL_74:
      sub_1B4A46828(v61, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v59, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      v47 = &qword_1EB8A8798;
      v48 = &qword_1B4D22458;
      v53 = v38;
      goto LABEL_40;
    }
  }

  else if (v62 != v63)
  {
    goto LABEL_74;
  }

  if ((sub_1B4A0C158(*(v59 + 16), *(v61 + 16)) & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v69 = sub_1B4D1816C();
  sub_1B4A46828(v61, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A46828(v59, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4975024(v38, &qword_1EB8A8798, &qword_1B4D22458);
  if ((v69 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_10:
  v41 = v81[8];
  v42 = *(v82 + 48);
  v43 = v74;
  sub_1B4974FBC(v83 + v41, v74, &qword_1EB8A8798, &qword_1B4D22458);
  v44 = v37 + v41;
  v45 = v43;
  sub_1B4974FBC(v44, v43 + v42, &qword_1EB8A8798, &qword_1B4D22458);
  if (v33(v43, 1, v4) != 1)
  {
    v65 = v72;
    sub_1B4974FBC(v45, v72, &qword_1EB8A8798, &qword_1B4D22458);
    if (v33((v45 + v42), 1, v4) == 1)
    {
      sub_1B4A46828(v65, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      goto LABEL_61;
    }

    v66 = v71;
    sub_1B4A3CCD0(v45 + v42, v71, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    v67 = *v65;
    v68 = *v66;
    if (*(v65 + 8))
    {
      v67 = *v65 != 0;
    }

    if (*(v66 + 8) == 1)
    {
      if (v68)
      {
        if (v67 != 1)
        {
          goto LABEL_81;
        }
      }

      else if (v67)
      {
LABEL_81:
        sub_1B4A46828(v66, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
        sub_1B4A46828(v65, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
        v47 = &qword_1EB8A8798;
        v48 = &qword_1B4D22458;
        v53 = v45;
        goto LABEL_40;
      }
    }

    else if (v67 != v68)
    {
      goto LABEL_81;
    }

    if (sub_1B4A0C158(*(v65 + 16), *(v66 + 16)))
    {
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v70 = sub_1B4D1816C();
      sub_1B4A46828(v66, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v65, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4975024(v45, &qword_1EB8A8798, &qword_1B4D22458);
      if (v70)
      {
        goto LABEL_13;
      }

LABEL_41:
      v46 = 0;
      return v46 & 1;
    }

    goto LABEL_81;
  }

  if (v33((v43 + v42), 1, v4) != 1)
  {
LABEL_61:
    v47 = &qword_1EB8A8D60;
    v48 = &qword_1B4D25760;
    v53 = v45;
    goto LABEL_40;
  }

  sub_1B4975024(v43, &qword_1EB8A8798, &qword_1B4D22458);
LABEL_13:
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v46 = sub_1B4D1816C();
  return v46 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_DeviceInferenceAvailabilityV09ComponentF0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_1B4A0C158(a1[2], a2[2]))
  {
    type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B25_AudioSynthesisVoiceAssetV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v49 = a2;
  v46 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v41 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = (&v40 - v5);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D90, &qword_1B4D25790);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v40 - v6;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v47 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v48 = a1;
  v18 = *(v47 + 28);
  v19 = *(v15 + 56);
  sub_1B4974FBC(&a1[v18], v17, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v20 = v49;
  sub_1B4974FBC(&v49[v18], &v17[v19], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v21 = *(v8 + 48);
  if (v21(v17, 1, v7) == 1)
  {
    if (v21(&v17[v19], 1, v7) == 1)
    {
      sub_1B4975024(v17, &qword_1EB8A6938, &qword_1B4D1ACF8);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1B4974FBC(v17, v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
    if (v21(&v17[v19], 1, v7) != 1)
    {
      sub_1B4A3CCD0(&v17[v19], v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      v25 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v13, v10);
      sub_1B4A46828(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      sub_1B4975024(v17, &qword_1EB8A6938, &qword_1B4D1ACF8);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      if (*v48 != *v20)
      {
        goto LABEL_10;
      }

      v28 = *(v48 + 1);
      v29 = *(v20 + 1);
      if (v20[16] == 1)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            if (v28 != 1)
            {
              goto LABEL_10;
            }
          }

          else if (v28 != 2)
          {
            goto LABEL_10;
          }
        }

        else if (v28)
        {
          goto LABEL_10;
        }
      }

      else if (v28 != v29)
      {
        goto LABEL_10;
      }

      v30 = *(v47 + 32);
      v31 = *(v43 + 48);
      v32 = v45;
      sub_1B4974FBC(&v48[v30], v45, &qword_1EB8A8788, &qword_1B4D22448);
      v33 = v32;
      sub_1B4974FBC(&v20[v30], v32 + v31, &qword_1EB8A8788, &qword_1B4D22448);
      v34 = *(v44 + 48);
      v35 = v32;
      v36 = v46;
      if (v34(v35, 1, v46) == 1)
      {
        if (v34(v33 + v31, 1, v36) == 1)
        {
LABEL_24:
          sub_1B4975024(v33, &qword_1EB8A8788, &qword_1B4D22448);
          sub_1B4D17BCC();
          sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v26 = sub_1B4D1816C();
          return v26 & 1;
        }
      }

      else
      {
        v37 = v42;
        sub_1B4974FBC(v33, v42, &qword_1EB8A8788, &qword_1B4D22448);
        if (v34(v33 + v31, 1, v36) != 1)
        {
          v38 = v41;
          sub_1B4A3CCD0(v33 + v31, v41, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
          if (*v37 == *v38 && v37[1] == v38[1])
          {
            sub_1B4D17BCC();
            sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v39 = sub_1B4D1816C();
            sub_1B4A46828(v38, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
            if (v39)
            {
              sub_1B4A46828(v37, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
              goto LABEL_24;
            }
          }

          else
          {
            sub_1B4A46828(v38, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
          }

          sub_1B4A46828(v37, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
          v22 = &qword_1EB8A8788;
          v23 = &qword_1B4D22448;
          goto LABEL_34;
        }

        sub_1B4A46828(v37, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
      }

      v22 = &qword_1EB8A8D90;
      v23 = &qword_1B4D25790;
LABEL_34:
      v24 = v33;
      goto LABEL_7;
    }

    sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  v22 = &qword_1EB8A8D50;
  v23 = &qword_1B4D25750;
  v24 = v17;
LABEL_7:
  sub_1B4975024(v24, v22, v23);
LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B25_AnnounceUtteranceRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v42 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D98, &qword_1B4D25798);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v19)
  {
    goto LABEL_16;
  }

  v42 = v14;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  v43 = a1;
  sub_1B4974FBC(a1 + v21, v13, &qword_1EB8A8778, &qword_1B4D22438);
  v23 = a2 + v21;
  v24 = a2;
  sub_1B4974FBC(v23, &v13[v22], &qword_1EB8A8778, &qword_1B4D22438);
  v25 = *(v5 + 48);
  if (v25(v13, 1, v4) != 1)
  {
    sub_1B4974FBC(v13, v10, &qword_1EB8A8778, &qword_1B4D22438);
    if (v25(&v13[v22], 1, v4) != 1)
    {
      sub_1B4A3CCD0(&v13[v22], v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      v28 = _s19FitnessIntelligence06Apple_a1_B23_AudioSynthesisSettingsV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1B4A46828(v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      sub_1B4A46828(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      sub_1B4975024(v13, &qword_1EB8A8778, &qword_1B4D22438);
      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1B4A46828(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
LABEL_15:
    sub_1B4975024(v13, &qword_1EB8A8D98, &qword_1B4D25798);
    goto LABEL_16;
  }

  if (v25(&v13[v22], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_1B4975024(v13, &qword_1EB8A8778, &qword_1B4D22438);
LABEL_19:
  v30 = v42;
  v29 = v43;
  v31 = *(v42 + 28);
  v32 = *(v43 + v31);
  v33 = *(v24 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    goto LABEL_16;
  }

  v34 = *(v42 + 32);
  v35 = (v43 + v34);
  v36 = *(v43 + v34 + 8);
  v37 = (v24 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v38)
  {
    goto LABEL_16;
  }

  v39 = *(v30 + 36);
  v40 = *(v29 + v39);
  v41 = *(v24 + v39);
  if (v40 == 2)
  {
    if (v41 == 2)
    {
LABEL_36:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v26 = sub_1B4D1816C();
      return v26 & 1;
    }
  }

  else if (v41 != 2 && ((v40 ^ v41) & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_StreamingAudioAvailableV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = (&v61 - v7);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D48, &qword_1B4D25748);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v61 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = &v61 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v61 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D58, &qword_1B4D25758);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v26 = *a1;
  v27 = a1[1];
  v73 = a1;
  if ((v26 != *a2 || v27 != a2[1]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_40;
  }

  v62 = v9;
  v28 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v74 = a2;
  v61 = v28;
  v29 = *(v28 + 28);
  v30 = *(v23 + 48);
  sub_1B4974FBC(v73 + v29, v25, &qword_1EB8A76C8, &unk_1B4D22410);
  v31 = v74 + v29;
  v32 = v74;
  sub_1B4974FBC(v31, &v25[v30], &qword_1EB8A76C8, &unk_1B4D22410);
  v33 = *(v17 + 48);
  if (v33(v25, 1, v16) == 1)
  {
    if (v33(&v25[v30], 1, v16) == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A76C8, &unk_1B4D22410);
      goto LABEL_11;
    }

LABEL_9:
    v34 = &qword_1EB8A8D58;
    v35 = &qword_1B4D25758;
    v36 = v25;
LABEL_39:
    sub_1B4975024(v36, v34, v35);
    goto LABEL_40;
  }

  sub_1B4974FBC(v25, v22, &qword_1EB8A76C8, &unk_1B4D22410);
  if (v33(&v25[v30], 1, v16) == 1)
  {
    sub_1B4A46828(v22, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
    goto LABEL_9;
  }

  sub_1B4A3CCD0(&v25[v30], v19, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v37 = _s19FitnessIntelligence06Apple_a1_B23_AudioStreamDescriptionV2eeoiySbAC_ACtFZ_0(v22, v19);
  sub_1B4A46828(v19, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4A46828(v22, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4975024(v25, &qword_1EB8A76C8, &unk_1B4D22410);
  if ((v37 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_11:
  if ((v73[2] != v32[2] || v73[3] != v32[3]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_40;
  }

  v38 = v61;
  v39 = *(v61 + 32);
  v40 = *(v70 + 48);
  sub_1B4974FBC(v73 + v39, v15, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4974FBC(v32 + v39, &v15[v40], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v41 = v72;
  v42 = *(v71 + 48);
  if (v42(v15, 1, v72) == 1)
  {
    v43 = v42(&v15[v40], 1, v41);
    v44 = v62;
    if (v43 == 1)
    {
      sub_1B4975024(v15, &qword_1EB8A6938, &qword_1B4D1ACF8);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v45 = v69;
  sub_1B4974FBC(v15, v69, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v46 = v42(&v15[v40], 1, v41);
  v44 = v62;
  if (v46 == 1)
  {
    sub_1B4A46828(v45, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
LABEL_19:
    v34 = &qword_1EB8A8D50;
    v35 = &qword_1B4D25750;
    v36 = v15;
    goto LABEL_39;
  }

  v47 = &v15[v40];
  v48 = v65;
  sub_1B4A3CCD0(v47, v65, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v49 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v45, v48);
  sub_1B4A46828(v48, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A46828(v45, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v15, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((v49 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_21:
  v50 = *(v38 + 36);
  v51 = *(v66 + 48);
  sub_1B4974FBC(v73 + v50, v44, &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B4974FBC(v74 + v50, v44 + v51, &qword_1EB8A76C0, &qword_1B4D1E798);
  v52 = v68;
  v53 = *(v67 + 48);
  if (v53(v44, 1, v68) != 1)
  {
    v55 = v64;
    sub_1B4974FBC(v44, v64, &qword_1EB8A76C0, &qword_1B4D1E798);
    if (v53(v44 + v51, 1, v52) == 1)
    {
      sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
      goto LABEL_27;
    }

    v56 = v63;
    sub_1B4A3CCD0(v44 + v51, v63, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    v57 = *v55;
    v58 = *v56;
    if (*(v56 + 8) == 1)
    {
      if (v58)
      {
        if (v58 == 1)
        {
          if (v57 != 1)
          {
            goto LABEL_37;
          }
        }

        else if (v57 != 2)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      if (v57)
      {
LABEL_37:
        sub_1B4A46828(v56, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
        sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
        v34 = &qword_1EB8A76C0;
        v35 = &qword_1B4D1E798;
        goto LABEL_38;
      }
    }

    else if (v57 != v58)
    {
      goto LABEL_37;
    }

LABEL_34:
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v59 = sub_1B4D1816C();
    sub_1B4A46828(v56, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    sub_1B4975024(v44, &qword_1EB8A76C0, &qword_1B4D1E798);
    if (v59)
    {
      goto LABEL_24;
    }

LABEL_40:
    v54 = 0;
    return v54 & 1;
  }

  if (v53(v44 + v51, 1, v52) != 1)
  {
LABEL_27:
    v34 = &qword_1EB8A8D48;
    v35 = &qword_1B4D25748;
LABEL_38:
    v36 = v44;
    goto LABEL_39;
  }

  sub_1B4975024(v44, &qword_1EB8A76C0, &qword_1B4D1E798);
LABEL_24:
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v54 = sub_1B4D1816C();
  return v54 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_AudioSynthesisIntensityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
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
      type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1B4D1816C() & 1;
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

uint64_t _s19FitnessIntelligence06Apple_a1_B23_AudioStreamDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B22_InferenceAvailabilityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a1 + 8))
  {
    v4 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }

LABEL_17:
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1B4D1816C() & 1;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_StreamingAudioChunkV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 4) != *(a2 + 16) || !sub_1B4BDD628(a1[3], a1[4], *(a2 + 24), *(a2 + 32)) || *(a1 + 10) != *(a2 + 40) || !sub_1B4BDD628(a1[6], a1[7], *(a2 + 48), *(a2 + 56)))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B18_InferenceFeedbackV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D70, &qword_1B4D25770);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v51 - v8;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D78, &qword_1B4D25778);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v59 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  v60 = a1;
  v19 = *(v59 + 24);
  v20 = *(v16 + 56);
  sub_1B4974FBC(a1 + v19, v18, &qword_1EB8A83B8, &qword_1B4D22420);
  sub_1B4974FBC(a2 + v19, &v18[v20], &qword_1EB8A83B8, &qword_1B4D22420);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_1B4975024(v18, &qword_1EB8A83B8, &qword_1B4D22420);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v18, v14, &qword_1EB8A83B8, &qword_1B4D22420);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_1B4A46828(v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
LABEL_6:
    v22 = &qword_1EB8A8D78;
    v23 = &qword_1B4D25778;
LABEL_7:
    v24 = v18;
LABEL_8:
    sub_1B4975024(v24, v22, v23);
    goto LABEL_9;
  }

  v27 = v58;
  sub_1B4A3CCD0(&v18[v20], v58, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  v28 = *(v9 + 20);
  v29 = *&v14[v28];
  v30 = *(v27 + v28);
  if (v29 != v30)
  {

    v31 = sub_1B4A47748(v29, v30);

    if (!v31)
    {
      sub_1B4A46828(v27, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
      sub_1B4A46828(v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
      v22 = &qword_1EB8A83B8;
      v23 = &qword_1B4D22420;
      goto LABEL_7;
    }
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v32 = sub_1B4D1816C();
  sub_1B4A46828(v27, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4A46828(v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4975024(v18, &qword_1EB8A83B8, &qword_1B4D22420);
  if ((v32 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  v33 = v60;
  if ((*v60 != *a2 || v60[1] != a2[1]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_9;
  }

  v34 = v59;
  v35 = *(v59 + 28);
  v36 = (v33 + v35);
  v37 = *(v33 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v39)
  {
    goto LABEL_9;
  }

  v40 = *(v34 + 32);
  v41 = *(v54 + 48);
  v42 = v57;
  sub_1B4974FBC(v33 + v40, v57, &qword_1EB8A6940, &unk_1B4D22400);
  v43 = a2 + v40;
  v44 = v42;
  sub_1B4974FBC(v43, v42 + v41, &qword_1EB8A6940, &unk_1B4D22400);
  v45 = v56;
  v46 = *(v55 + 48);
  if (v46(v42, 1, v56) == 1)
  {
    if (v46(v42 + v41, 1, v45) == 1)
    {
      sub_1B4975024(v42, &qword_1EB8A6940, &unk_1B4D22400);
LABEL_32:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v25 = sub_1B4D1816C();
      return v25 & 1;
    }

    goto LABEL_30;
  }

  v47 = v53;
  sub_1B4974FBC(v44, v53, &qword_1EB8A6940, &unk_1B4D22400);
  if (v46(v44 + v41, 1, v45) == 1)
  {
    sub_1B4A46828(v47, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
LABEL_30:
    v22 = &qword_1EB8A8D70;
    v23 = &qword_1B4D25770;
    v24 = v44;
    goto LABEL_8;
  }

  v48 = v44 + v41;
  v49 = v52;
  sub_1B4A3CCD0(v48, v52, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v50 = _s19FitnessIntelligence06Apple_a1_B24_AnnounceUtteranceResultV2eeoiySbAC_ACtFZ_0(v47, v49);
  sub_1B4A46828(v49, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4A46828(v47, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4975024(v44, &qword_1EB8A6940, &unk_1B4D22400);
  if (v50)
  {
    goto LABEL_32;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_AnnounceUtteranceResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v4;
      v22 = sub_1B4D18DCC();
      v4 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = v4[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    return 0;
  }

  v26 = v4[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (!v28)
  {
    if (!v30)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (!v30)
  {
    return 0;
  }

  if (*v27 != *v29 || v28 != v30)
  {
    v31 = v4;
    v32 = sub_1B4D18DCC();
    v4 = v31;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_34:
  v33 = v4[10];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v98 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v98 - v12;
  v105 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v104 = &v98 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D70, &qword_1B4D25770);
  MEMORY[0x1EEE9AC00](v102);
  v19 = &v98 - v18;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_49;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v101 = v15;
      v26 = v19;
      v27 = v11;
      v28 = v5;
      v29 = v10;
      v30 = v4;
      v31 = a1;
      v32 = a2;
      v33 = v13;
      v34 = v7;
      v35 = v20;
      v36 = sub_1B4D18DCC();
      v20 = v35;
      v7 = v34;
      v13 = v33;
      a2 = v32;
      a1 = v31;
      v4 = v30;
      v10 = v29;
      v5 = v28;
      v11 = v27;
      v19 = v26;
      v15 = v101;
      if ((v36 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_49;
  }

  v37 = v20[6];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 8);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_49;
    }
  }

  v42 = v20[7];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_49;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v101 = v15;
      v47 = v19;
      v48 = v11;
      v49 = v5;
      v50 = v10;
      v51 = v4;
      v52 = a1;
      v53 = a2;
      v54 = v13;
      v55 = v7;
      v56 = v20;
      v57 = sub_1B4D18DCC();
      v20 = v56;
      v7 = v55;
      v13 = v54;
      a2 = v53;
      a1 = v52;
      v4 = v51;
      v10 = v50;
      v5 = v49;
      v11 = v48;
      v19 = v47;
      v15 = v101;
      if ((v57 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v46)
  {
    goto LABEL_49;
  }

  v58 = v20[8];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_49;
    }

    if (*v59 != *v61 || v60 != v62)
    {
      v101 = v15;
      v63 = v19;
      v64 = v11;
      v65 = v5;
      v66 = v10;
      v67 = v4;
      v68 = a1;
      v69 = a2;
      v70 = v13;
      v71 = v7;
      v72 = v20;
      v73 = sub_1B4D18DCC();
      v20 = v72;
      v7 = v71;
      v13 = v70;
      a2 = v69;
      a1 = v68;
      v4 = v67;
      v10 = v66;
      v5 = v65;
      v11 = v64;
      v19 = v63;
      v15 = v101;
      if ((v73 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v62)
  {
    goto LABEL_49;
  }

  v74 = v20[9];
  v75 = (a1 + v74);
  v76 = *(a1 + v74 + 8);
  v77 = (a2 + v74);
  v78 = v77[1];
  if (v76)
  {
    if (!v78)
    {
      goto LABEL_49;
    }

    v100 = v7;
    if (*v75 != *v77 || v76 != v78)
    {
      v79 = v20;
      v80 = sub_1B4D18DCC();
      v20 = v79;
      if ((v80 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    v100 = v7;
    if (v78)
    {
      goto LABEL_49;
    }
  }

  v101 = v15;
  v99 = v20;
  v81 = v20[10];
  v82 = *(v102 + 48);
  sub_1B4974FBC(a1 + v81, v19, &qword_1EB8A6940, &unk_1B4D22400);
  v102 = v82;
  sub_1B4974FBC(a2 + v81, &v19[v82], &qword_1EB8A6940, &unk_1B4D22400);
  v83 = v105;
  v103 = *(v103 + 48);
  if ((v103)(v19, 1, v105) != 1)
  {
    sub_1B4974FBC(v19, v104, &qword_1EB8A6940, &unk_1B4D22400);
    if ((v103)(&v19[v102], 1, v83) != 1)
    {
      v87 = v101;
      sub_1B4A3CCD0(&v19[v102], v101, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v88 = v104;
      LODWORD(v103) = _s19FitnessIntelligence06Apple_a1_B24_AnnounceUtteranceResultV2eeoiySbAC_ACtFZ_0(v104, v87);
      v105 = v11;
      sub_1B4A46828(v87, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v11 = v105;
      sub_1B4A46828(v88, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      sub_1B4975024(v19, &qword_1EB8A6940, &unk_1B4D22400);
      if ((v103 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    sub_1B4A46828(v104, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
LABEL_40:
    v84 = &qword_1EB8A8D70;
    v85 = &qword_1B4D25770;
    v86 = v19;
LABEL_48:
    sub_1B4975024(v86, v84, v85);
    goto LABEL_49;
  }

  if ((v103)(&v19[v102], 1, v83) != 1)
  {
    goto LABEL_40;
  }

  sub_1B4975024(v19, &qword_1EB8A6940, &unk_1B4D22400);
LABEL_42:
  v89 = v10;
  v90 = v99[11];
  v91 = v4;
  v92 = *(v11 + 48);
  sub_1B4974FBC(a1 + v90, v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4974FBC(a2 + v90, &v13[v92], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v93 = *(v5 + 48);
  if (v93(v13, 1, v91) == 1)
  {
    if (v93(&v13[v92], 1, v91) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
LABEL_52:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v94 = sub_1B4D1816C();
      return v94 & 1;
    }

    goto LABEL_47;
  }

  sub_1B4974FBC(v13, v89, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v93(&v13[v92], 1, v91) == 1)
  {
    sub_1B4A46828(v89, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
LABEL_47:
    v84 = &qword_1EB8A8D50;
    v85 = &qword_1B4D25750;
    v86 = v13;
    goto LABEL_48;
  }

  v96 = v100;
  sub_1B4A3CCD0(&v13[v92], v100, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v97 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v89, v96);
  sub_1B4A46828(v96, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A46828(v89, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v97)
  {
    goto LABEL_52;
  }

LABEL_49:
  v94 = 0;
  return v94 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1B4D18DCC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_1B4D18DCC() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_AudioSynthesisVoiceSelectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a1 + 8))
  {
    v14 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v15)
    {
      if (v14 != 1)
      {
        goto LABEL_16;
      }
    }

    else if (v14)
    {
      goto LABEL_16;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_16;
  }

  v23 = v7;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v16 = *(v24 + 24);
  v17 = *(v11 + 48);
  sub_1B4974FBC(a1 + v16, v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4974FBC(a2 + v16, &v13[v17], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
LABEL_19:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = sub_1B4D1816C();
      return v19 & 1;
    }

    goto LABEL_15;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1B4A46828(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
LABEL_15:
    sub_1B4975024(v13, &qword_1EB8A8D50, &qword_1B4D25750);
    goto LABEL_16;
  }

  v21 = v23;
  sub_1B4A3CCD0(&v13[v17], v23, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v22 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v10, v21);
  sub_1B4A46828(v21, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A46828(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_AudioSynthesisSettingsV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D68, &qword_1B4D25768);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8A8790, &qword_1B4D22450);
  sub_1B4974FBC(a2 + v14, &v13[v15], &qword_1EB8A8790, &qword_1B4D22450);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A8790, &qword_1B4D22450);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v9, &qword_1EB8A8790, &qword_1B4D22450);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A46828(v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A8D68, &qword_1B4D25768);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_1B4A3CCD0(&v13[v15], v23, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  v18 = _s19FitnessIntelligence06Apple_a1_B29_AudioSynthesisVoiceSelectionV2eeoiySbAC_ACtFZ_0(v9, v17);
  sub_1B4A46828(v17, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4A46828(v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4975024(v13, &qword_1EB8A8790, &qword_1B4D22450);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *a2)
  {
    goto LABEL_10;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1B4D1816C();
  return v19 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B17_InferenceRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v90 = (&v86 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA0, &unk_1B4D257A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v93 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v86 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D98, &qword_1B4D25798);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v22 = v21[5];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_22;
    }

    if (*v23 != *v25 || v24 != v26)
    {
      v89 = a2;
      v27 = v12;
      v28 = a1;
      v29 = v17;
      v30 = v6;
      v31 = v14;
      v32 = v9;
      v33 = v21;
      v34 = sub_1B4D18DCC();
      v21 = v33;
      v9 = v32;
      v14 = v31;
      v6 = v30;
      v17 = v29;
      a1 = v28;
      v12 = v27;
      a2 = v89;
      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v26)
  {
    goto LABEL_22;
  }

  v35 = v21[6];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_22;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v89 = a2;
      v40 = v12;
      v41 = a1;
      v42 = v17;
      v43 = v6;
      v44 = v14;
      v45 = v9;
      v46 = v21;
      v47 = sub_1B4D18DCC();
      v21 = v46;
      v9 = v45;
      v14 = v44;
      v6 = v43;
      v17 = v42;
      a1 = v41;
      v12 = v40;
      a2 = v89;
      if ((v47 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_22;
  }

  v86 = v6;
  v87 = v11;
  v48 = v21[7];
  v49 = *(v18 + 48);
  v88 = a1;
  v89 = v21;
  sub_1B4974FBC(a1 + v48, v20, &qword_1EB8A8778, &qword_1B4D22438);
  v50 = a2 + v48;
  v51 = a2;
  sub_1B4974FBC(v50, &v20[v49], &qword_1EB8A8778, &qword_1B4D22438);
  v52 = *(v93 + 48);
  if (v52(v20, 1, v12) == 1)
  {
    if (v52(&v20[v49], 1, v12) == 1)
    {
      sub_1B4975024(v20, &qword_1EB8A8778, &qword_1B4D22438);
      goto LABEL_25;
    }

LABEL_20:
    v53 = &qword_1EB8A8D98;
    v54 = &qword_1B4D25798;
    v55 = v20;
LABEL_21:
    sub_1B4975024(v55, v53, v54);
    goto LABEL_22;
  }

  sub_1B4974FBC(v20, v17, &qword_1EB8A8778, &qword_1B4D22438);
  if (v52(&v20[v49], 1, v12) == 1)
  {
    sub_1B4A46828(v17, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    goto LABEL_20;
  }

  sub_1B4A3CCD0(&v20[v49], v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v58 = _s19FitnessIntelligence06Apple_a1_B23_AudioSynthesisSettingsV2eeoiySbAC_ACtFZ_0(v17, v14);
  sub_1B4A46828(v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4A46828(v17, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4975024(v20, &qword_1EB8A8778, &qword_1B4D22438);
  if ((v58 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v60 = v88;
  v59 = v89;
  v61 = v89[8];
  v62 = (v88 + v61);
  v63 = *(v88 + v61 + 8);
  v64 = (a2 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_22;
    }

    if (*v62 != *v64 || v63 != v65)
    {
      v66 = sub_1B4D18DCC();
      v59 = v89;
      if ((v66 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v65)
  {
    goto LABEL_22;
  }

  v67 = v59[9];
  v68 = *(v9 + 48);
  v69 = v87;
  sub_1B4974FBC(v60 + v67, v87, &qword_1EB8A8780, &qword_1B4D22440);
  sub_1B4974FBC(v51 + v67, v69 + v68, &qword_1EB8A8780, &qword_1B4D22440);
  v70 = v92;
  v71 = *(v91 + 48);
  if (v71(v69, 1, v92) != 1)
  {
    v72 = v90;
    sub_1B4974FBC(v69, v90, &qword_1EB8A8780, &qword_1B4D22440);
    if (v71(v69 + v68, 1, v70) != 1)
    {
      v73 = v69 + v68;
      v74 = v86;
      sub_1B4A3CCD0(v73, v86, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      v75 = _s19FitnessIntelligence06Apple_a1_B29_InferenceTelemetryIdentifierV2eeoiySbAC_ACtFZ_0(v72, v74);
      sub_1B4A46828(v74, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      sub_1B4A46828(v72, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      sub_1B4975024(v69, &qword_1EB8A8780, &qword_1B4D22440);
      if ((v75 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

    sub_1B4A46828(v72, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    goto LABEL_37;
  }

  if (v71(v69 + v68, 1, v70) != 1)
  {
LABEL_37:
    v53 = &qword_1EB8A8DA0;
    v54 = &unk_1B4D257A0;
    v55 = v69;
    goto LABEL_21;
  }

  sub_1B4975024(v69, &qword_1EB8A8780, &qword_1B4D22440);
LABEL_39:
  v76 = v89;
  v77 = v89[10];
  v78 = (v60 + v77);
  v79 = *(v60 + v77 + 8);
  v80 = (v51 + v77);
  v81 = v80[1];
  if (v79)
  {
    if (!v81)
    {
      goto LABEL_22;
    }

    if (*v78 != *v80 || v79 != v81)
    {
      v82 = sub_1B4D18DCC();
      v76 = v89;
      if ((v82 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v81)
  {
    goto LABEL_22;
  }

  v83 = v76[11];
  v84 = *(v60 + v83);
  v85 = *(v51 + v83);
  if (v84 == 2)
  {
    if (v85 == 2)
    {
LABEL_51:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v56 = sub_1B4D1816C();
      return v56 & 1;
    }
  }

  else if (v85 != 2 && ((v84 ^ v85) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_22:
  v56 = 0;
  return v56 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1B4A47748(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A5C360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4A5C3A8()
{
  result = qword_1EB8A87C0;
  if (!qword_1EB8A87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A87C0);
  }

  return result;
}

unint64_t sub_1B4A5C3FC()
{
  result = qword_1EDC377E8;
  if (!qword_1EDC377E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377E8);
  }

  return result;
}

unint64_t sub_1B4A5C450()
{
  result = qword_1EB8A87F8;
  if (!qword_1EB8A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A87F8);
  }

  return result;
}

unint64_t sub_1B4A5C4A4()
{
  result = qword_1EDC3B2D8[0];
  if (!qword_1EDC3B2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3B2D8);
  }

  return result;
}

unint64_t sub_1B4A5C4F8()
{
  result = qword_1EB8A8850;
  if (!qword_1EB8A8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8850);
  }

  return result;
}

unint64_t sub_1B4A5C550()
{
  result = qword_1EB8A8890;
  if (!qword_1EB8A8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8890);
  }

  return result;
}

unint64_t sub_1B4A5C5A8()
{
  result = qword_1EB8A8898;
  if (!qword_1EB8A8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8898);
  }

  return result;
}

unint64_t sub_1B4A5C630()
{
  result = qword_1EB8A88B0;
  if (!qword_1EB8A88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88B0);
  }

  return result;
}

unint64_t sub_1B4A5C688()
{
  result = qword_1EDC377E0;
  if (!qword_1EDC377E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377E0);
  }

  return result;
}

unint64_t sub_1B4A5C6E0()
{
  result = qword_1EDC377D0;
  if (!qword_1EDC377D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377D0);
  }

  return result;
}

unint64_t sub_1B4A5C768()
{
  result = qword_1EDC377D8;
  if (!qword_1EDC377D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377D8);
  }

  return result;
}

unint64_t sub_1B4A5C7C0()
{
  result = qword_1EB8A88C8;
  if (!qword_1EB8A88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88C8);
  }

  return result;
}

unint64_t sub_1B4A5C818()
{
  result = qword_1EB8A88D0;
  if (!qword_1EB8A88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88D0);
  }

  return result;
}

unint64_t sub_1B4A5C8A0()
{
  result = qword_1EB8A88E8;
  if (!qword_1EB8A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88E8);
  }

  return result;
}

unint64_t sub_1B4A5C8F8()
{
  result = qword_1EDC3B2D0;
  if (!qword_1EDC3B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3B2D0);
  }

  return result;
}

unint64_t sub_1B4A5C950()
{
  result = qword_1EDC3B2C0;
  if (!qword_1EDC3B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3B2C0);
  }

  return result;
}

unint64_t sub_1B4A5C9D8()
{
  result = qword_1EDC3B2C8;
  if (!qword_1EDC3B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3B2C8);
  }

  return result;
}

unint64_t sub_1B4A5CA30()
{
  result = qword_1EB8A8900;
  if (!qword_1EB8A8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8900);
  }

  return result;
}

unint64_t sub_1B4A5CA88()
{
  result = qword_1EB8A8908;
  if (!qword_1EB8A8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8908);
  }

  return result;
}

unint64_t sub_1B4A5CB10()
{
  result = qword_1EB8A8920;
  if (!qword_1EB8A8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8920);
  }

  return result;
}

uint64_t keypath_get_72Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, double *a3@<X8>)
{
  result = a2(0);
  v6 = a1 + *(result + 24);
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *a3 = v7;
  return result;
}

uint64_t keypath_set_73Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = (a5)(0, a2, a3, a4);
  v8 = a2 + *(result + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1B4A5E95C(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4A5EA08(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A5EB80(319, &qword_1EB8A8AE0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8AE8, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B4A5FB28(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4A5EB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4A5EC0C(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A5EB80(319, &qword_1EB8A8AE0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4A5FB28(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A5ED6C(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC378D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4A5FB28(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A5EECC(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EDC3C2D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A5EB80(319, qword_1EDC3B6A0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A5F050(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5F120(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A5FB28(319, &qword_1EDC378D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8B20, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B4A5EB80(319, &qword_1EDC3C2D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4A5F2C4(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EB8A8B38, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8B20, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A5F434(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_230Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B4D17BCC();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 24);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_231Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1B4D17BCC();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 24);

    return v19(v20, a2, a2, v18);
  }
}

void sub_1B4A5F7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1B4D17BCC();
  if (v8 <= 0x3F)
  {
    sub_1B4A5EB80(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5F8B0(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5F990(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EDC3B268, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5FA70(uint64_t a1)
{
  sub_1B4A5FB28(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5FB28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B4A5FCD0(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EB8A8BE0, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A5EB80(319, &qword_1EDC3C2D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8BE8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_305Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B4D17BCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_306Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B4D17BCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B4A5FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17BCC();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_287Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B4D17BCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_288Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B4D17BCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B4A601A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4A5EB80(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4A60270(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_254Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B4D17BCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_255Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B4D17BCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B4A6049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B4D17BCC();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4A60538(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4A605DC(uint64_t a1)
{
  sub_1B4A5EB80(319, &qword_1EB8A8C58, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EB8A8C60, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B4A608BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v2 = *(a1 + 32), v28[0] = *(a1 + 16), v28[1] = v2, v29 = *(a1 + 48), v30 = *(a1 + 64), v24 = v28[0], v25 = v2, v26 = v29, v27 = v30, v4 = *(a2 + 16), v5 = *(a2 + 32), v6 = *(a2 + 48), v32 = *(a2 + 64), v31[1] = v5, v31[2] = v6, v31[0] = v4, v20 = v4, v21 = v5, v22 = v6, v23 = v32, sub_1B498B0D4(v28, v19), sub_1B498B0D4(v31, v19), v8 = _s19FitnessIntelligence25WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v24, &v20), v33[0] = v20, v33[1] = v21, v33[2] = v22, v34 = v23, sub_1B498AD54(v33), v35[0] = v24, v35[1] = v25, v35[2] = v26, v36 = v27, sub_1B498AD54(v35), v8))
  {
    v9 = *(a1 + 96);
    v10 = *(a1 + 104);
    __swift_project_boxed_opaque_existential_1((a1 + 72), v9);
    sub_1B4B70700(v9, *(v10 + 8));
    v11 = *(a2 + 96);
    v12 = *(a2 + 104);
    __swift_project_boxed_opaque_existential_1((a2 + 72), v11);
    sub_1B4B70700(v11, *(v12 + 8));
    v19[0] = v24;
    v13 = WorkoutPropertyKind.rawValue.getter();
    v15 = v14;
    if (v13 == WorkoutPropertyKind.rawValue.getter() && v15 == v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_1B4D18DCC();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A60A94(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v3 = *(a1 + 18), v19 = *(a1 + 16), v20 = v3, v5 = *(a2 + 18), v17 = *(a2 + 16), v18 = v5, (_s19FitnessIntelligence23RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v19, &v17) & 1) != 0))
  {
    v6 = a1;
    v7 = *(a1 + 48);
    v8 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 24), v7);
    sub_1B4B70700(v7, *(v8 + 8));
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    __swift_project_boxed_opaque_existential_1((a2 + 24), v9);
    sub_1B4B70700(v9, *(v10 + 8));
    v11 = RingsPropertyKind.rawValue.getter();
    v13 = v12;
    if (v11 == RingsPropertyKind.rawValue.getter() && v13 == v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1B4D18DCC();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A60BE4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v8 = *(a1 + 40);
  v25 = *(a1 + 16);
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v8;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  v13 = *(a2 + 40);
  *v20 = *(a2 + 16);
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v13;

  LOBYTE(v8) = _s19FitnessIntelligence0A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v25, v20);

  if (v8)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    __swift_project_boxed_opaque_existential_1((a1 + 48), v14);
    sub_1B4B70700(v14, *(v15 + 8));
    v16 = *(a2 + 72);
    v17 = *(a2 + 80);
    __swift_project_boxed_opaque_existential_1((a2 + 48), v16);
    sub_1B4B70700(v16, *(v17 + 8));
    v18 = sub_1B4977FEC(v25, v20[0]);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t WorkoutPropertyRecord.init(startCacheIndex:endCacheIndex:dimensions:property:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = *a1;
  *(a5 + 8) = v5;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = *(a3 + 32);
  *(a5 + 64) = *(a3 + 48);
  return sub_1B496F398(a4, a5 + 72);
}

uint64_t WorkoutPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8 = *(v1 + 48);
  v3 = v8;
  v9 = *(v1 + 64);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1B498B0D4(v7, v6);
}

uint64_t WorkoutPropertyRecord.propertyKind.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t WorkoutPropertyRecord.genericProperty.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[12];
  v4 = v1[13];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t WorkoutPropertyRecord.with(startCacheIndex:endCacheIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 32);
  v11 = *(v3 + 16);
  v12 = v7;
  v13 = *(v3 + 48);
  v14 = *(v3 + 64);
  sub_1B497558C(v3 + 72, a3 + 72);
  *a3 = v5;
  *(a3 + 8) = v6;
  v8 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v8;
  *(a3 + 48) = v13;
  *(a3 + 64) = v14;
  return sub_1B498B0D4(&v11, v10);
}

unint64_t sub_1B4A60F24()
{
  result = qword_1EDC38CE8;
  if (!qword_1EDC38CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CE8);
  }

  return result;
}

uint64_t sub_1B4A60F78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8 = *(v1 + 48);
  v3 = v8;
  v9 = *(v1 + 64);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1B498B0D4(v7, v6);
}

uint64_t sub_1B4A60FC4()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t sub_1B4A61010@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[12];
  v4 = v1[13];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t sub_1B4A6109C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 32);
  v11 = *(v3 + 16);
  v12 = v7;
  v13 = *(v3 + 48);
  v14 = *(v3 + 64);
  sub_1B497558C(v3 + 72, a3 + 72);
  *a3 = v5;
  *(a3 + 8) = v6;
  v8 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v8;
  *(a3 + 48) = v13;
  *(a3 + 64) = v14;
  return sub_1B498B0D4(&v11, v10);
}

unint64_t sub_1B4A61120(uint64_t a1)
{
  *(a1 + 8) = sub_1B4A61150();
  result = sub_1B4A611A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4A61150()
{
  result = qword_1EDC393E8;
  if (!qword_1EDC393E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC393E8);
  }

  return result;
}

unint64_t sub_1B4A611A4()
{
  result = qword_1EDC393F8[0];
  if (!qword_1EDC393F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC393F8);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B4A61220(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4A61268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4A612D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v73 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v73 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v76 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v82 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v73 - v31;
  v33 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v34 = v33[7];
  sub_1B4974FBC(v0 + v34, v32, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v83 = v2;
  v35 = *(v2 + 48);
  v86 = v1;
  v84 = v35;
  LODWORD(v1) = v35(v32, 1, v1);
  sub_1B4975024(v32, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v1 == 1)
  {
    sub_1B4974FBC(v0 + v33[9], v24, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v36 = (*(v87 + 48))(v24, 1, v88);
    sub_1B4975024(v24, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v36 == 1)
    {
      *&result = 0.0;
      return result;
    }
  }

  v39 = v87;
  v38 = v88;
  v40 = v0 + v33[18];
  v41 = v0;
  if ((*(v40 + 8) & 1) != 0 || *v40 != 2)
  {
    sub_1B4974FBC(v0 + v34, v29, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v44 = v86;
    v48 = v84;
    if (v84(v29, 1, v86) == 1)
    {
      v45 = &qword_1EB8A6CA8;
      v46 = &unk_1B4D1C2B0;
      v47 = v29;
      goto LABEL_15;
    }

    v49 = v83;
    v50 = *(v83 + 32);
    v50(v85, v29, v44);
    v51 = v0 + v33[8];
    v52 = v82;
    sub_1B4974FBC(v51, v82, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v48(v52, 1, v44) == 1)
    {
      (*(v49 + 8))(v85, v44);
      v45 = &qword_1EB8A6CA8;
      v46 = &unk_1B4D1C2B0;
      v47 = v52;
      goto LABEL_15;
    }

    v53 = v79;
    v50(v79, v52, v44);
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = [ObjCClassFromMetadata baseUnit];
    v56 = v78;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v58 = v57;
    v59 = *(v49 + 8);
    v59(v56, v44);
    v60 = [ObjCClassFromMetadata baseUnit];
    v61 = v80;
    v62 = v85;
  }

  else
  {
    v42 = v81;
    sub_1B4974FBC(v0 + v33[9], v81, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v43 = *(v39 + 48);
    v44 = v38;
    if (v43(v42, 1, v38) == 1)
    {
      v45 = &qword_1EB8A6C90;
      v46 = &unk_1B4D1BBD0;
      v47 = v42;
LABEL_15:
      sub_1B4975024(v47, v45, v46);
      *&result = 0.0;
      return result;
    }

    v63 = v41;
    v64 = *(v39 + 32);
    v62 = v77;
    v64(v77, v42, v38);
    v65 = v63 + v33[10];
    v66 = v76;
    sub_1B4974FBC(v65, v76, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v43(v66, 1, v38) == 1)
    {
      (*(v39 + 8))(v62, v38);
      v45 = &qword_1EB8A6C90;
      v46 = &unk_1B4D1BBD0;
      v47 = v66;
      goto LABEL_15;
    }

    v53 = v74;
    v64(v74, v66, v38);
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v67 = swift_getObjCClassFromMetadata();
    v68 = [v67 baseUnit];
    v69 = v73;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v58 = v70;
    v59 = *(v39 + 8);
    v59(v69, v44);
    v60 = [v67 baseUnit];
    v61 = v75;
  }

  sub_1B4D1745C();

  sub_1B4D1742C();
  v72 = v71;
  v59(v61, v44);
  v59(v53, v44);
  v59(v62, v44);
  *&result = v58 / v72;
  return result;
}

uint64_t sub_1B4A61B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v35 - v17;
  v18 = type metadata accessor for HKActivitySummaryRepresentable(0);
  sub_1B4974FBC(v0 + *(v18 + 44), v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v19 = *(v8 + 48);
  if (v19(v6, 1, v7) == 1)
  {
    v20 = v6;
LABEL_5:
    sub_1B4975024(v20, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    *&result = 0.0;
    return result;
  }

  v35 = v15;
  v36 = v10;
  v21 = *(v8 + 32);
  v21(v38, v6, v7);
  sub_1B4974FBC(v0 + *(v18 + 48), v3, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v19(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v38, v7);
    v20 = v3;
    goto LABEL_5;
  }

  v23 = v35;
  v21(v35, v3, v7);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [ObjCClassFromMetadata baseUnit];
  v26 = v37;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v28 = v27;
  v29 = *(v8 + 8);
  v29(v26, v7);
  v30 = [ObjCClassFromMetadata baseUnit];
  v31 = v36;
  v32 = v38;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v34 = v33;
  v29(v31, v7);
  v29(v23, v7);
  v29(v32, v7);
  *&result = v28 / v34;
  return result;
}

uint64_t sub_1B4A61EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v35 - v17;
  v18 = type metadata accessor for HKActivitySummaryRepresentable(0);
  sub_1B4974FBC(v0 + *(v18 + 52), v6, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v19 = *(v8 + 48);
  if (v19(v6, 1, v7) == 1)
  {
    v20 = v6;
LABEL_5:
    sub_1B4975024(v20, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    *&result = 0.0;
    return result;
  }

  v35 = v15;
  v36 = v10;
  v21 = *(v8 + 32);
  v21(v38, v6, v7);
  sub_1B4974FBC(v0 + *(v18 + 56), v3, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  if (v19(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v38, v7);
    v20 = v3;
    goto LABEL_5;
  }

  v23 = v35;
  v21(v35, v3, v7);
  v24 = type metadata accessor for UnitCount();
  v25 = [v24 baseUnit];
  v26 = v37;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v28 = v27;
  v29 = *(v8 + 8);
  v29(v26, v7);
  v30 = [v24 baseUnit];
  v31 = v36;
  v32 = v38;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v34 = v33;
  v29(v31, v7);
  v29(v23, v7);
  v29(v32, v7);
  *&result = v28 / v34;
  return result;
}

uint64_t RingProgress.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RingProgress.goal.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RingProgress.remainder.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RingProgress.init(type:value:goal:remainder:percentage:previousPercentage:isCloseToClosing:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, _BYTE *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  *a7 = *a1;
  v16 = type metadata accessor for RingProgress(0, a6, a3, a4);
  v17 = v16[7];
  v18 = sub_1B4D1746C();
  v19 = *(*(v18 - 8) + 32);
  v19(&a7[v17], a2, v18);
  v19(&a7[v16[8]], a3, v18);
  result = (v19)(&a7[v16[9]], a4, v18);
  *&a7[v16[10]] = a8;
  *&a7[v16[11]] = a9;
  a7[v16[12]] = a5;
  return result;
}

uint64_t static RingProgress.from(previousRingRepresentable:currentRingRepresentable:ring:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v237 = a3;
  v238 = a4;
  v239 = a5;
  v240 = a2;
  v227 = a1;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v210 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v228 = &v210 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v234 = (&v210 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v235 = *(v10 - 8);
  v236 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v218 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v210 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v217 = &v210 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v224 = &v210 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v229 = &v210 - v19;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  MEMORY[0x1EEE9AC00](v215);
  v214 = &v210 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v226 = &v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v231 = &v210 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v26 = *(v25 - 8);
  v232 = v25;
  v233 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v212 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v213 = &v210 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v222 = &v210 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v223 = &v210 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v225 = &v210 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v230 = &v210 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  MEMORY[0x1EEE9AC00](v38);
  v216 = &v210 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v211 = &v210 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v210 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v210 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v210 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v210 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  MEMORY[0x1EEE9AC00](v54);
  MEMORY[0x1EEE9AC00](v55);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v210 - v58;
  MEMORY[0x1EEE9AC00](v60);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v210 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v210 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v210 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v79 = &v210 - v78;
  v80 = *v237;
  if (v80 <= 1)
  {
    v236 = v75;
    v237 = v71;
    if (v80)
    {
      v232 = v72;
      v233 = v76;
      v234 = v38;
      v235 = v77;
      v94 = type metadata accessor for HKActivitySummaryRepresentable(0);
      v95 = v240;
      sub_1B4974FBC(v240 + *(v94 + 48), v47, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v96 = v236;
      v97 = v237;
      v98 = v236[6];
      if (v98(v47, 1, v237) == 1)
      {
        sub_1B4975024(v47, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        goto LABEL_39;
      }

      v114 = v47;
      v115 = v96[4];
      v115(v59, v114, v97);
      sub_1B4974FBC(v95 + *(v94 + 44), v44, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v98(v44, 1, v97) == 1)
      {
        (v96[1])(v59, v97);
        sub_1B4975024(v44, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        goto LABEL_39;
      }

      v131 = v235;
      v115(v235, v44, v97);
      v132 = sub_1B4A61B14();
      if (v133)
      {
        v134 = v236[1];
        v134(v131, v97);
        v135 = v59;
        v136 = v97;
LABEL_31:
        v134(v135, v136);
        goto LABEL_39;
      }

      v147 = v132;
      v148 = sub_1B4A61B14();
      if (v149)
      {
        v150 = v236[1];
        v151 = v237;
        v150(v235, v237);
        v150(v59, v151);
        goto LABEL_39;
      }

      v240 = v148;
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v170 = v115;
      v171 = v233;
      v172 = v235;
      sub_1B4D1744C();
      v173 = [objc_opt_self() minutes];
      v174 = v232;
      v175 = v237;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v177 = v176;
      (v236[1])(v174, v175);
      v178 = v177 <= 30.0 && v177 >= 10.0;
      v179 = v234;
      v180 = v216;
      v170(&v216[v234[7]], v59, v175);
      v170(&v180[v179[8]], v172, v175);
      *v180 = 1;
      v170(&v180[v179[9]], v171, v175);
      *&v180[v179[10]] = v147;
      *&v180[v179[11]] = v240;
      v180[v179[12]] = v178;
      v183 = type metadata accessor for RingProgress(0, v238, v181, v182);
      v184 = v239;
LABEL_53:
      v195 = swift_dynamicCast();
      v153 = *(*(v183 - 8) + 56);
      if (v195)
      {
        v154 = v184;
        v155 = 0;
      }

      else
      {
        v154 = v184;
        v155 = 1;
      }

      v152 = v183;
      return v153(v154, v155, 1, v152);
    }

    v235 = v73;
    v81 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v82 = v81;
    v83 = v240 + v81[18];
    if ((*(v83 + 8) & 1) == 0 && *v83 == 2)
    {
      v234 = v38;
      sub_1B4974FBC(v240 + v81[10], v53, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v84 = v236;
      v85 = v236[6];
      if (v85(v53, 1, v237) == 1)
      {
        sub_1B4975024(v53, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_39:
        v152 = type metadata accessor for RingProgress(0, v238, v86, v87);
        v153 = *(*(v152 - 8) + 56);
        v154 = v239;
        v155 = 1;
        return v153(v154, v155, 1, v152);
      }

      v145 = v53;
      v146 = v237;
      v232 = v84[4];
      v233 = (v84 + 4);
      v232(v79, v145, v237);
      sub_1B4974FBC(v240 + v82[9], v50, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v85(v50, 1, v146) == 1)
      {
        (v84[1])(v79, v237);
        v112 = &qword_1EB8A6C90;
        v113 = &unk_1B4D1BBD0;
        goto LABEL_19;
      }

      v165 = v50;
      v166 = v232;
      v232(v69, v165, v237);
      v167 = sub_1B4A612D4();
      if (v168)
      {
        v169 = v237;
        v134 = v236[1];
        v134(v69, v237);
        v135 = v79;
        v136 = v169;
        goto LABEL_31;
      }

      v196 = v167;
      v197 = sub_1B4A612D4();
      if (v198)
      {
        v199 = v237;
        v200 = v236[1];
        v200(v69, v237);
        v200(v79, v199);
        goto LABEL_39;
      }

      v202 = v236;
      v201 = v237;
      v231 = v196;
      v203 = v236[2];
      v240 = v197;
      v203(v66, v79, v237);
      v203(v63, v69, v201);
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v204 = v235;
      sub_1B4D1744C();
      v205 = v202[1];
      v205(v69, v201);
      v205(v79, v201);
      v206 = v211;
      *v211 = 0;
      v207 = v234;
      v166(&v206[v234[7]], v66, v201);
      v166(&v206[v207[8]], v63, v201);
      v166(&v206[v207[9]], v204, v201);
      *&v206[v207[10]] = v231;
      *&v206[v207[11]] = v240;
      v206[v207[12]] = 0;
      v183 = type metadata accessor for RingProgress(0, v238, v208, v209);
      v184 = v239;
      goto LABEL_53;
    }

    v104 = v240;
    v105 = v231;
    sub_1B4974FBC(v240 + v81[8], v231, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v107 = v232;
    v106 = v233;
    v108 = *(v233 + 6);
    if (v108(v105, 1, v232) == 1)
    {
      sub_1B4975024(v105, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_39;
    }

    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v116 = v225;
    sub_1B4D1745C();
    v237 = *(v106 + 1);
    (v237)(v105, v107);
    v118 = *(v106 + 4);
    v117 = v106 + 32;
    v119 = v230;
    v120 = v116;
    v121 = v118;
    v118(v230, v120, v107);
    v122 = v104 + v82[7];
    v123 = v226;
    sub_1B4974FBC(v122, v226, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v108(v123, 1, v107) == 1)
    {
      (v237)(v119, v107);
      sub_1B4975024(v123, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_39;
    }

    v137 = v222;
    sub_1B4D1745C();
    v138 = v237;
    (v237)(v123, v107);
    v139 = v223;
    v233 = v117;
    v121(v223, v137, v107);
    v140 = sub_1B4A612D4();
    if (v141 & 1) != 0 || (v142 = v140, v143 = sub_1B4A612D4(), (v144))
    {
      (v138)(v139, v107);
      (v138)(v230, v107);
      goto LABEL_39;
    }

    v240 = v143;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v185 = v213;
    v236 = v142;
    v186 = v230;
    sub_1B4D1744C();
    v187 = v212;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v189 = v188;
    (v138)(v187, v107);
    v190 = v121;
    v191 = v189 <= 100.0 && v189 >= 20.0;
    v192 = v139;
    v193 = v215;
    v194 = v214;
    v190(&v214[*(v215 + 28)], v186, v107);
    v190(&v194[v193[8]], v192, v107);
    *v194 = 0;
    v190(&v194[v193[9]], v185, v107);
    *&v194[v193[10]] = v236;
    *&v194[v193[11]] = v240;
    v194[v193[12]] = v191;
LABEL_52:
    v183 = type metadata accessor for RingProgress(0, v238, v163, v164);
    v184 = v239;
    goto LABEL_53;
  }

  if (v80 == 2)
  {
    v88 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v89 = v240;
    v90 = v234;
    sub_1B4974FBC(v240 + *(v88 + 56), v234, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v92 = v235;
    v91 = v236;
    v93 = *(v235 + 48);
    if (v93(v90, 1, v236) == 1)
    {
      sub_1B4975024(v90, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      goto LABEL_39;
    }

    v109 = *(v92 + 32);
    v110 = v229;
    v109(v229, v90, v91);
    v111 = v89 + *(v88 + 52);
    v50 = v228;
    sub_1B4974FBC(v111, v228, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    if (v93(v50, 1, v91) == 1)
    {
      (*(v92 + 8))(v110, v91);
      v112 = &qword_1EB8A6D18;
      v113 = &unk_1B4D1BCA0;
LABEL_19:
      sub_1B4975024(v50, v112, v113);
      goto LABEL_39;
    }

    v124 = v224;
    v109(v224, v50, v91);
    v125 = sub_1B4A61EE8();
    if (v126 & 1) != 0 || (v127 = v125, v128 = sub_1B4A61EE8(), (v129))
    {
      v130 = *(v92 + 8);
      v130(v124, v91);
      v130(v110, v91);
      goto LABEL_39;
    }

    v156 = *(v92 + 16);
    v157 = v217;
    v240 = v128;
    v156(v217, v110, v91);
    v156(v221, v124, v91);
    type metadata accessor for UnitCount();
    v158 = v110;
    v159 = v218;
    sub_1B4D1744C();
    v160 = *(v92 + 8);
    v160(v124, v91);
    v160(v158, v91);
    v161 = v219;
    *v219 = 2;
    v162 = v220;
    v109(&v161[*(v220 + 28)], v157, v91);
    v109(&v161[v162[8]], v221, v91);
    v109(&v161[v162[9]], v159, v91);
    *&v161[v162[10]] = v127;
    *&v161[v162[11]] = v240;
    v161[v162[12]] = 0;
    goto LABEL_52;
  }

  v99 = type metadata accessor for RingProgress(0, v238, v73, v74);
  v100 = *(*(v99 - 8) + 56);
  v101 = v99;
  v102 = v239;

  return v100(v102, 1, 1, v101);
}

uint64_t static RingProgress.== infix(_:_:)(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = 1702260589;
  v5 = *a1;
  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x646E617473;
  if (v5 != 2)
  {
    v8 = 0x65657268546C6C61;
    v7 = 0xED000073676E6952;
  }

  v9 = 0x6573696372657865;
  if (*a1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v9 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= 1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  v13 = 0xE400000000000000;
  v14 = 0xE500000000000000;
  v15 = 0x646E617473;
  if (*a2 != 2)
  {
    v15 = 0x65657268546C6C61;
    v14 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v4 = 0x6573696372657865;
    v13 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v16 = v4;
  }

  else
  {
    v16 = v15;
  }

  if (*a2 <= 1u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  if (v10 == v16 && v11 == v17)
  {
  }

  else
  {
    v19 = sub_1B4D18DCC();

    if ((v19 & 1) == 0)
    {
LABEL_32:
      v23 = 0;
      return v23 & 1;
    }
  }

  sub_1B4D1746C();
  v22 = type metadata accessor for RingProgress(0, a3, v20, v21);
  swift_getWitnessTable();
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || *&a1[v22[10]] != *&a2[v22[10]] || *&a1[v22[11]] != *&a2[v22[11]])
  {
    goto LABEL_32;
  }

  v23 = a1[v22[12]] ^ a2[v22[12]] ^ 1;
  return v23 & 1;
}

uint64_t sub_1B4A63C3C(uint64_t a1)
{
  result = sub_1B4D1746C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4A63D5C()
{
  result = qword_1EB8A8E48;
  if (!qword_1EB8A8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E48);
  }

  return result;
}

uint64_t sub_1B4A63DB0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000019;
  v3 = *a1;
  v4 = 0x80000001B4D4AE90;
  if (v3 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001B4D4AE90;
  }

  else
  {
    v6 = 0x80000001B4D4AEB0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F43736472617761;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED0000747865746ELL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x80000001B4D4AEB0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F43736472617761;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED0000747865746ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4A63E94()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A63F44(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4A63FE0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4A6408C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B4A69C28(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B4A640BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000747865746ELL;
  v4 = 0xD000000000000019;
  v5 = 0x80000001B4D4AE90;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001B4D4AEB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6F43736472617761;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1B4A64128(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v30 = a2;
  v31 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E78, &unk_1B4D25A18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - v7;
  v29 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - v12;
  v14 = sub_1B4D1777C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4D1796C();
  __swift_project_value_buffer(v18, qword_1EDC3CE48);
  type metadata accessor for ActivityAchievementAward(0);
  sub_1B4D178FC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B4975024(v13, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_7:
    v20 = type metadata accessor for WorkoutAwardsFact(0);
    (*(*(v20 - 8) + 56))(v31, 1, 1, v20);
    return;
  }

  v26[1] = v4;
  v19 = *(v15 + 32);
  v19(v17, v13, v14);
  sub_1B4A6455C(a1, v30, v8);
  if ((*(v9 + 48))(v8, 1, v29) == 1)
  {
    (*(v15 + 8))(v17, v14);
    sub_1B4975024(v8, &qword_1EB8A8E78, &unk_1B4D25A18);
    goto LABEL_7;
  }

  v30 = type metadata accessor for WorkoutAwardsFact.AwardType;
  v21 = v27;
  sub_1B4A6A070(v8, v27, type metadata accessor for WorkoutAwardsFact.AwardType);
  v22 = v31;
  (*(v15 + 16))(v31, v28, v14);
  v23 = type metadata accessor for WorkoutAwardsFact(0);
  v19((v22 + v23[5]), v17, v14);
  sub_1B4A6A070(v21, v22 + v23[6], v30);
  v24 = a1[1];
  v25 = (v22 + v23[7]);
  *v25 = *a1;
  v25[1] = v24;
  (*(*(v23 - 1) + 56))(v22, 0, 1, v23);
}

void sub_1B4A6455C(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ActivityAchievementAward(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E80, &qword_1B4D25A28);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v82 - v10;
  v12 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1B4A69CF4(a1, a2, v14);
  sub_1B4A656CC(a1, a2, v86);
  v17 = LOBYTE(v86[0]);
  v85 = a1;
  v18 = 0;
  switch(sub_1B497ABAC(sub_1B4A69FC8, v84, &unk_1F2CBA818))
  {
    case 0u:
      v11 = a3;
      v43 = v83;
      if (!v83)
      {
        goto LABEL_59;
      }

      v44 = *(a1 + v6[8]);
      if (!v44)
      {
        goto LABEL_58;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50);
      *a3 = v43;
      v45 = objc_opt_self();
      v35 = v44;
      v18 = v43;
      v46 = [v45 largeCalorieUnit];
      [v35 doubleValueForUnit_];

      if (qword_1EDC36DF0 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_29;
    case 1u:
      v39 = *(a1 + v6[8]);
      if (!v39)
      {
        goto LABEL_57;
      }

      v35 = v39;
      [v35 _value];
      v37 = v40;
      v41 = v40;

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_72;
      }

      if (v37 <= -9.22337204e18)
      {
        goto LABEL_75;
      }

      if (v37 < 9.22337204e18)
      {
        goto LABEL_56;
      }

      goto LABEL_78;
    case 2u:
      v11 = a3;
      v43 = v83;
      if (!v83)
      {
        goto LABEL_59;
      }

      v55 = *(a1 + v6[8]);
      if (!v55)
      {
        goto LABEL_58;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0);
      *a3 = v43;
      v56 = objc_opt_self();
      v57 = v43;
      v58 = v55;
      v59 = [v56 meterUnit];
      [v58 doubleValueForUnit_];

      v60 = [objc_opt_self() meters];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1741C();

      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_43;
    case 3u:
      v11 = a3;
      v43 = v83;
      if (!v83)
      {
        goto LABEL_59;
      }

      v61 = *(a1 + v6[8]);
      if (v61)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30);
        *a3 = v43;
        v62 = objc_opt_self();
        v63 = v43;
        v64 = v61;
        v65 = [v62 meterUnit];
        [v64 doubleValueForUnit_];

        v66 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1741C();

        v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
        goto LABEL_43;
      }

LABEL_58:

LABEL_59:
      v78 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      v67 = *(*(v78 - 8) + 56);
      v68 = v11;
      goto LABEL_64;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      sub_1B4A65AA0(v86);
      v19 = v86[0];
      if (LOBYTE(v86[0]) == 4)
      {
        goto LABEL_62;
      }

      v20 = *(a1 + v6[8]);
      if (!v20)
      {
        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0);
      *a3 = v19;
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 minuteUnit];
      [v22 doubleValueForUnit_];

      v24 = [objc_opt_self() minutes];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      sub_1B4D1741C();

      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 9u:
      if (!v83)
      {
        goto LABEL_63;
      }

      *a3 = v83;
      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0xAu:

      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0xDu:
    case 0xEu:
    case 0xFu:
      sub_1B4A65BFC(a1, v11);

      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_1B4975024(v11, &qword_1EB8A8E80, &qword_1B4D25A28);
        goto LABEL_63;
      }

      sub_1B4A6A070(v11, v16, type metadata accessor for WorkoutAwardsFact.RingValue);
      sub_1B4A6A070(v16, a3, type metadata accessor for WorkoutAwardsFact.RingValue);
      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x10u:
      sub_1B4A6594C(v86);
      v42 = v86[0];
      if (LOBYTE(v86[0]) == 4)
      {
        goto LABEL_62;
      }

      if (LOBYTE(v86[0]) == 2)
      {

        goto LABEL_62;
      }

      v80 = sub_1B4D18DCC();

      if (v80)
      {
        goto LABEL_63;
      }

      v81 = *(a1 + v6[7]);
      if (v81 < 0)
      {
        goto LABEL_84;
      }

      *a3 = v42;
      *(a3 + 1) = v81;
      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x11u:

      if (v17 == 15)
      {
        goto LABEL_63;
      }

      *a3 = v17;
      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x12u:
      if (v17 == 15)
      {
        goto LABEL_62;
      }

      v49 = *(a1 + v6[8]);
      if (!v49)
      {
        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40);
      *a3 = v17;
      v50 = objc_opt_self();
      v51 = v49;
      v52 = [v50 largeCalorieUnit];
      [v51 doubleValueForUnit_];

      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v53 = qword_1EDC36DF8;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v54 = v53;
      sub_1B4D1741C();

      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x13u:
      v74 = *(a1 + v6[8]);
      if (!v74)
      {
        goto LABEL_57;
      }

      v35 = v74;
      [v35 _value];
      v37 = v75;
      v76 = v75;

      if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_73;
      }

      if (v37 <= -9.22337204e18)
      {
        goto LABEL_76;
      }

      if (v37 < 9.22337204e18)
      {
        goto LABEL_56;
      }

      goto LABEL_79;
    case 0x14u:
      v34 = *(a1 + v6[9]);
      if (!v34)
      {
        goto LABEL_57;
      }

      v35 = v34;
      [v35 _value];
      v37 = v36;
      v38 = v36;

      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
LABEL_56:
          *a3 = v37;
          v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
          goto LABEL_68;
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        swift_once();
LABEL_29:
        v47 = qword_1EDC36DF8;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v48 = v47;
        sub_1B4D1741C();

        v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
LABEL_43:
        swift_storeEnumTagMultiPayload();
        v67 = *(*(v25 - 8) + 56);
        v68 = v11;
        goto LABEL_69;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    case 0x15u:
      if (v17 == 15)
      {
        goto LABEL_62;
      }

      v69 = *(a1 + v6[9]);
      if (!v69)
      {
        goto LABEL_62;
      }

      v70 = v69;
      [v70 _value];
      v72 = v71;
      v73 = v71;

      if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v72 <= -9.22337204e18)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        return;
      }

      if (v72 >= 9.22337204e18)
      {
        goto LABEL_83;
      }

      *a3 = v17;
      *(a3 + 1) = v72;
      v25 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
LABEL_68:
      swift_storeEnumTagMultiPayload();
      v67 = *(*(v25 - 8) + 56);
      v68 = a3;
LABEL_69:
      v79 = 0;
      v78 = v25;
LABEL_70:
      v67(v68, v79, 1, v78);
      return;
    case 0x17u:
LABEL_57:
      v77 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      (*(*(v77 - 8) + 56))(a3, 1, 1, v77);

      return;
    default:
      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v26 = sub_1B4D17F6C();
      __swift_project_value_buffer(v26, qword_1EDC36F00);
      sub_1B4A6A0D8(a1, v8, type metadata accessor for ActivityAchievementAward);
      v27 = sub_1B4D17F5C();
      v28 = sub_1B4D1873C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v86[0] = v30;
        *v29 = 136315394;
        *(v29 + 4) = sub_1B49558AC(0xD00000000000001ALL, 0x80000001B4D258E0, v86);
        *(v29 + 12) = 2080;
        v31 = *v8;
        v32 = v8[1];

        sub_1B4A6A140(v8, type metadata accessor for ActivityAchievementAward);
        v33 = sub_1B49558AC(v31, v32, v86);

        *(v29 + 14) = v33;
        _os_log_impl(&dword_1B4953000, v27, v28, "%s: Unsupported award %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C7DDA0](v30, -1, -1);
        MEMORY[0x1B8C7DDA0](v29, -1, -1);

LABEL_62:
      }

      else
      {

        sub_1B4A6A140(v8, type metadata accessor for ActivityAchievementAward);
      }

LABEL_63:
      v78 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      v67 = *(*(v78 - 8) + 56);
      v68 = a3;
LABEL_64:
      v79 = 1;
      goto LABEL_70;
  }
}

uint64_t sub_1B4A653C4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v24 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  __swift_project_value_buffer(v14, qword_1EDC3CE48);
  type metadata accessor for ActivityAchievementAward(0);
  sub_1B4D178FC();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v16 = 1;
  }

  else
  {
    v23[1] = v2;
    v17 = v7;
    v18 = *(v9 + 32);
    v18(v13, v17, v8);
    v19 = v26;
    sub_1B4D178FC();
    if (v15(v19, 1, v8) == 1)
    {
      (*(v9 + 8))(v13, v8);
      sub_1B4975024(v19, &qword_1EB8A6790, &qword_1B4D1BBC0);
      v16 = 1;
    }

    else
    {
      v20 = v24;
      v18(v24, v19, v8);
      v16 = sub_1B4D1772C();
      v21 = *(v9 + 8);
      v21(v20, v8);
      v21(v13, v8);
    }
  }

  return v16 & 1;
}

void sub_1B4A656CC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = type metadata accessor for WorkoutRecord(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = (a1 + *(type metadata accessor for ActivityAchievementAward(0) + 40));
  v18 = v17[1];
  if (v18 && (v19 = *(a2 + 16)) != 0)
  {
    v30 = v7;
    v31 = a3;
    v20 = *v17;
    v21 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v22 = *(v8 + 72);
    while (1)
    {
      sub_1B4A6A0D8(v21, v10, type metadata accessor for WorkoutRecord);
      if (sub_1B4D1779C() == v20 && v18 == v23)
      {
        break;
      }

      v24 = sub_1B4D18DCC();

      if (v24)
      {
        goto LABEL_11;
      }

      sub_1B4A6A140(v10, type metadata accessor for WorkoutRecord);
      v21 += v22;
      if (!--v19)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    sub_1B4A6A070(v10, v13, type metadata accessor for WorkoutRecord);
    sub_1B4A6A070(v13, v16, type metadata accessor for WorkoutRecord);
    v26 = &v16[*(v30 + 40)];
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = *(v26 + 2);
    v25 = v26[24];
    sub_1B4A69FE8(*v26, v28, v29);
    sub_1B4A6A140(v16, type metadata accessor for WorkoutRecord);
    if (v28)
    {
      sub_1B4A6A02C(v27, v28, v29);
      goto LABEL_14;
    }

LABEL_13:
    v25 = 15;
LABEL_14:
    a3 = v31;
  }

  else
  {
    v25 = 15;
  }

  *a3 = v25;
}

uint64_t sub_1B4A6594C@<X0>(char *a2@<X8>)
{
  sub_1B4955758();
  result = sub_1B4D1889C();
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = sub_1B4D1889C();
    if (result)
    {
      v4 = 1;
    }

    else
    {
      result = sub_1B4D1889C();
      if (result)
      {
        v4 = 2;
      }

      else
      {
        result = sub_1B4D1889C();
        if (result)
        {
          v4 = 3;
        }

        else
        {
          v4 = 4;
        }
      }
    }
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B4A65AA0@<X0>(char *a2@<X8>)
{
  sub_1B4955758();
  result = sub_1B4D1889C();
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = sub_1B4D1889C();
    if (result)
    {
      v4 = 1;
    }

    else
    {
      result = sub_1B4D1889C();
      if (result)
      {
        v4 = 2;
      }

      else
      {
        result = sub_1B4D1889C();
        if (result)
        {
          v4 = 3;
        }

        else
        {
          v4 = 4;
        }
      }
    }
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B4A65BFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v25 = *a1;
  v26 = v5;
  v24 = 0x656D695465766F4DLL;
  sub_1B4955758();
  if (sub_1B4D1889C())
  {
    v6 = *(a1 + *(type metadata accessor for ActivityAchievementAward(0) + 32));
    if (v6)
    {
LABEL_3:
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 minuteUnit];
      [v8 doubleValueForUnit_];

      v10 = [objc_opt_self() minutes];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      sub_1B4D1741C();

      v11 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    }
  }

  else if (sub_1B4D1889C())
  {
    v12 = *(a1 + *(type metadata accessor for ActivityAchievementAward(0) + 32));
    if (v12)
    {
      v13 = objc_opt_self();
      v14 = v12;
      v15 = [v13 largeCalorieUnit];
      [v14 doubleValueForUnit_];

      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDC36DF8;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v17 = v16;
      sub_1B4D1741C();

      v11 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
      goto LABEL_17;
    }
  }

  else
  {
    v25 = v4;
    v26 = v5;
    v24 = 0x6573696372657845;
    if (sub_1B4D1889C())
    {
      v6 = *(a1 + *(type metadata accessor for ActivityAchievementAward(0) + 32));
      if (v6)
      {
        goto LABEL_3;
      }
    }

    else if (sub_1B4D1889C())
    {
      v18 = *(a1 + *(type metadata accessor for ActivityAchievementAward(0) + 32));
      if (v18)
      {
        v19 = v18;
        [v19 _value];
        if (qword_1EDC36E70 != -1)
        {
          swift_once();
        }

        v20 = qword_1EDC36E78;
        type metadata accessor for UnitCount();
        v21 = v20;
        sub_1B4D1741C();

        v11 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
        goto LABEL_17;
      }
    }
  }

  v23 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
}

uint64_t sub_1B4A660E8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = sub_1B4BC42A8(*a1);
  LOBYTE(v2) = sub_1B4A66140(v4, v5, v2, v3);

  return v2 & 1;
}

uint64_t sub_1B4A66140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1B4D1823C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1B4D1823C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1B4D18DCC();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1B4D1823C();
      v7 = v9;
    }

    while (v9);
  }

  sub_1B4D1823C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1B4A662A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4A68C78(a1, a3);
}

unint64_t sub_1B4A66360(uint64_t a1)
{
  *(a1 + 8) = sub_1B4A66390();
  result = sub_1B4A663E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4A66390()
{
  result = qword_1EB8A8E50;
  if (!qword_1EB8A8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E50);
  }

  return result;
}

unint64_t sub_1B4A663E4()
{
  result = qword_1EB8A8E58;
  if (!qword_1EB8A8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E58);
  }

  return result;
}

unint64_t sub_1B4A6643C()
{
  result = qword_1EB8A8E60;
  if (!qword_1EB8A8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E60);
  }

  return result;
}

void sub_1B4A66490(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActivityAchievementAward(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B4CDE2F4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B4A66538(v5);
  *a1 = v3;
}

void sub_1B4A66538(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1B4D18D4C();
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
        type metadata accessor for ActivityAchievementAward(0);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActivityAchievementAward(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1B4A66BB8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4A66664(0, v2, 1, a1);
  }
}

void sub_1B4A66664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = sub_1B4D1777C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v63 = type metadata accessor for ActivityAchievementAward(0);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v47 = a2;
  if (a3 != a2)
  {
    v26 = v13;
    v27 = *a4;
    v28 = *(v23 + 72);
    v61 = &v45 - v24;
    v62 = (v14 + 48);
    v53 = (v14 + 8);
    v54 = (v14 + 32);
    v29 = v27 + v28 * (a3 - 1);
    v58 = -v28;
    v59 = v27;
    v30 = a1 - a3;
    v46 = v28;
    v31 = v27 + v28 * a3;
    v55 = v12;
LABEL_5:
    v50 = v29;
    v51 = a3;
    v48 = v31;
    v49 = v30;
    v32 = v30;
    while (1)
    {
      sub_1B4A6A0D8(v31, v25, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A0D8(v29, v64, type metadata accessor for ActivityAchievementAward);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v33 = sub_1B4D1796C();
      __swift_project_value_buffer(v33, qword_1EDC3CE48);
      sub_1B4D178FC();
      v34 = *v62;
      v35 = (*v62)(v12, 1, v26);
      v36 = v12;
      if (v35 == 1)
      {
        goto LABEL_11;
      }

      v57 = *v54;
      v57(v18, v12, v26);
      v37 = v26;
      v38 = v56;
      sub_1B4D178FC();
      v39 = v38;
      v26 = v37;
      if (v34(v39, 1, v37) == 1)
      {
        break;
      }

      v40 = v52;
      v57(v52, v39, v26);
      v41 = sub_1B4D1772C();
      v42 = *v53;
      (*v53)(v40, v26);
      v42(v18, v26);
      sub_1B4A6A140(v64, type metadata accessor for ActivityAchievementAward);
      v25 = v61;
      sub_1B4A6A140(v61, type metadata accessor for ActivityAchievementAward);
      v12 = v55;
      if ((v41 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v59)
      {
        __break(1u);
        return;
      }

      v43 = v60;
      sub_1B4A6A070(v31, v60, type metadata accessor for ActivityAchievementAward);
      swift_arrayInitWithTakeFrontToBack();
      v25 = v61;
      sub_1B4A6A070(v43, v29, type metadata accessor for ActivityAchievementAward);
      v29 += v58;
      v31 += v58;
      if (__CFADD__(v32++, 1))
      {
LABEL_4:
        a3 = v51 + 1;
        v29 = v50 + v46;
        v30 = v49 - 1;
        v31 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    (*v53)(v18, v37);
    v36 = v39;
    v12 = v55;
    v25 = v61;
LABEL_11:
    sub_1B4975024(v36, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4A6A140(v64, type metadata accessor for ActivityAchievementAward);
    sub_1B4A6A140(v25, type metadata accessor for ActivityAchievementAward);
    goto LABEL_13;
  }
}

void sub_1B4A66BB8(char **a1, uint64_t a2, char **a3, char *a4)
{
  v5 = v4;
  v153 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v172 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v182 = &v148 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v157 = &v148 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v148 - v15;
  v166 = sub_1B4D1777C();
  v17 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v171 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v148 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v148 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v148 - v24;
  v175 = type metadata accessor for ActivityAchievementAward(0);
  v26 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v158 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v179 = &v148 - v29;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v148 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v148 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v149 = &v148 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v148 = &v148 - v42;
  v168 = a3;
  v43 = a3[1];
  if (v43 < 1)
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_115:
    a4 = *v153;
    if (!*v153)
    {
      goto LABEL_155;
    }

    v17 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_149;
    }

    v143 = v17;
LABEL_118:
    v185 = v143;
    v17 = *(v143 + 2);
    if (v17 >= 2)
    {
      while (*v168)
      {
        v144 = *&v143[16 * v17];
        v145 = v143;
        v146 = *&v143[16 * v17 + 24];
        sub_1B4A67C18(&(*v168)[*(v26 + 72) * v144], &(*v168)[*(v26 + 72) * *&v143[16 * v17 + 16]], &(*v168)[*(v26 + 72) * v146], a4);
        if (v5)
        {
          goto LABEL_126;
        }

        if (v146 < v144)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1B4CDDE84(v145);
        }

        if (v17 - 2 >= *(v145 + 2))
        {
          goto LABEL_143;
        }

        v147 = &v145[16 * v17];
        *v147 = v144;
        *(v147 + 1) = v146;
        v185 = v145;
        sub_1B4CDDDF8(v17 - 1);
        v143 = v185;
        v17 = *(v185 + 2);
        if (v17 <= 1)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_153;
    }

LABEL_126:

    return;
  }

  v181 = v41;
  v44 = 0;
  v183 = (v17 + 48);
  v173 = (v17 + 8);
  v174 = (v17 + 32);
  v45 = MEMORY[0x1E69E7CC0];
  v150 = v26;
  v152 = a4;
  v161 = v16;
  v156 = v25;
  v184 = v40;
  v160 = v36;
  while (1)
  {
    v159 = v45;
    if (v44 + 1 >= v43)
    {
      v59 = (v44 + 1);
      goto LABEL_33;
    }

    v169 = v43;
    v46 = *v168;
    v47 = *(v26 + 72);
    v48 = &(*v168)[v47 * (v44 + 1)];
    v49 = v148;
    sub_1B4A6A0D8(v48, v148, type metadata accessor for ActivityAchievementAward);
    v50 = &v46[v47 * v44];
    v51 = v44;
    v52 = v149;
    sub_1B4A6A0D8(v50, v149, type metadata accessor for ActivityAchievementAward);
    LODWORD(v177) = sub_1B4A653C4(v49, v52);
    if (v5)
    {
      sub_1B4A6A140(v52, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v49, type metadata accessor for ActivityAchievementAward);
      goto LABEL_126;
    }

    v17 = type metadata accessor for ActivityAchievementAward;
    sub_1B4A6A140(v52, type metadata accessor for ActivityAchievementAward);
    sub_1B4A6A140(v49, type metadata accessor for ActivityAchievementAward);
    v151 = v51;
    v53 = (v51 + 2);
    v176 = v47;
    v54 = &v46[v47 * (v51 + 2)];
    v55 = v161;
    v56 = v48;
    v57 = v160;
    v167 = 0;
    while (1)
    {
      v59 = v169;
      if (v169 == v53)
      {
        break;
      }

      sub_1B4A6A0D8(v54, v57, type metadata accessor for ActivityAchievementAward);
      v178 = v56;
      sub_1B4A6A0D8(v56, v170, type metadata accessor for ActivityAchievementAward);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v60 = sub_1B4D1796C();
      __swift_project_value_buffer(v60, qword_1EDC3CE48);
      v61 = v57;
      sub_1B4D178FC();
      v62 = *v183;
      v63 = v166;
      if ((*v183)(v55, 1, v166) == 1)
      {
        sub_1B4975024(v55, &qword_1EB8A6790, &qword_1B4D1BBC0);
        v17 = 1;
        v58 = v178;
        v57 = v61;
      }

      else
      {
        v64 = v55;
        v65 = v63;
        v66 = v156;
        v165 = *v174;
        v165(v156, v64, v65);
        v67 = v157;
        sub_1B4D178FC();
        v68 = v67;
        if (v62(v67, 1, v65) == 1)
        {
          (*v173)(v66, v65);
          sub_1B4975024(v67, &qword_1EB8A6790, &qword_1B4D1BBC0);
          v17 = 1;
        }

        else
        {
          v69 = v154;
          v165(v154, v68, v65);
          v17 = sub_1B4D1772C();
          v70 = *v173;
          (*v173)(v69, v65);
          v70(v66, v65);
        }

        v55 = v161;
        v57 = v160;
        v58 = v178;
      }

      sub_1B4A6A140(v170, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v57, type metadata accessor for ActivityAchievementAward);
      ++v53;
      v54 += v176;
      v56 = v176 + v58;
      v5 = v167;
      if ((v177 & 1) != (v17 & 1))
      {
        v59 = v53 - 1;
        break;
      }
    }

    v26 = v150;
    a4 = v152;
    v44 = v151;
    if (v177)
    {
      if (v59 < v151)
      {
        goto LABEL_148;
      }

      if (v151 < v59)
      {
        v71 = v176;
        v72 = v176 * (v59 - 1);
        v73 = v59 * v176;
        v169 = v59;
        v74 = v59;
        v75 = v151;
        v76 = v151 * v176;
        do
        {
          if (v75 != --v74)
          {
            v77 = *v168;
            if (!*v168)
            {
              goto LABEL_152;
            }

            v17 = &v77[v76];
            sub_1B4A6A070(&v77[v76], v158, type metadata accessor for ActivityAchievementAward);
            if (v76 < v72 || v17 >= &v77[v73])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B4A6A070(v158, &v77[v72], type metadata accessor for ActivityAchievementAward);
          }

          ++v75;
          v72 -= v71;
          v73 -= v71;
          v76 += v71;
        }

        while (v75 < v74);
        v5 = v167;
        v26 = v150;
        a4 = v152;
        v44 = v151;
        v59 = v169;
      }
    }

LABEL_33:
    v78 = v168[1];
    if (v59 >= v78)
    {
      a4 = v59;
      if (v59 < v44)
      {
        goto LABEL_144;
      }

      goto LABEL_64;
    }

    if (__OFSUB__(v59, v44))
    {
      goto LABEL_145;
    }

    if (&v59[-v44] < a4)
    {
      break;
    }

    a4 = v59;
    if (v59 < v44)
    {
      goto LABEL_144;
    }

LABEL_64:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v45 = v159;
    }

    else
    {
      v45 = sub_1B4A1D58C(0, *(v159 + 2) + 1, 1, v159);
    }

    a4 = *(v45 + 2);
    v98 = *(v45 + 3);
    v17 = (a4 + 1);
    if (a4 >= v98 >> 1)
    {
      v45 = sub_1B4A1D58C((v98 > 1), (a4 + 1), 1, v45);
    }

    *(v45 + 2) = v17;
    v99 = &v45[16 * a4];
    v100 = v162;
    *(v99 + 4) = v44;
    *(v99 + 5) = v100;
    v101 = *v153;
    if (!*v153)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (1)
      {
        v102 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v103 = *(v45 + 4);
          v104 = *(v45 + 5);
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_83:
          if (v106)
          {
            goto LABEL_133;
          }

          v119 = &v45[16 * v17];
          v121 = *v119;
          v120 = *(v119 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_136;
          }

          v125 = &v45[16 * v102 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v113 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v113)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v123, v128))
          {
            goto LABEL_140;
          }

          if (v123 + v128 >= v105)
          {
            if (v105 < v128)
            {
              v102 = v17 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v129 = &v45[16 * v17];
        v131 = *v129;
        v130 = *(v129 + 1);
        v113 = __OFSUB__(v130, v131);
        v123 = v130 - v131;
        v124 = v113;
LABEL_97:
        if (v124)
        {
          goto LABEL_135;
        }

        v132 = &v45[16 * v102];
        v134 = *(v132 + 4);
        v133 = *(v132 + 5);
        v113 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v113)
        {
          goto LABEL_138;
        }

        if (v135 < v123)
        {
          goto LABEL_3;
        }

LABEL_104:
        a4 = (v102 - 1);
        if (v102 - 1 >= v17)
        {
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v168)
        {
          goto LABEL_151;
        }

        v140 = v45;
        v17 = *&v45[16 * a4 + 32];
        v141 = *&v45[16 * v102 + 40];
        sub_1B4A67C18(&(*v168)[*(v26 + 72) * v17], &(*v168)[*(v26 + 72) * *&v45[16 * v102 + 32]], &(*v168)[*(v26 + 72) * v141], v101);
        if (v5)
        {
          goto LABEL_126;
        }

        if (v141 < v17)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_1B4CDDE84(v140);
        }

        if (a4 >= *(v140 + 2))
        {
          goto LABEL_130;
        }

        v142 = &v140[16 * a4];
        *(v142 + 4) = v17;
        *(v142 + 5) = v141;
        v185 = v140;
        sub_1B4CDDDF8(v102);
        v45 = v185;
        v17 = *(v185 + 2);
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v107 = &v45[16 * v17 + 32];
      v108 = *(v107 - 64);
      v109 = *(v107 - 56);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_131;
      }

      v112 = *(v107 - 48);
      v111 = *(v107 - 40);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_132;
      }

      v114 = &v45[16 * v17];
      v116 = *v114;
      v115 = *(v114 + 1);
      v113 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v113)
      {
        goto LABEL_134;
      }

      v113 = __OFADD__(v105, v117);
      v118 = v105 + v117;
      if (v113)
      {
        goto LABEL_137;
      }

      if (v118 >= v110)
      {
        v136 = &v45[16 * v102 + 32];
        v138 = *v136;
        v137 = *(v136 + 1);
        v113 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v113)
        {
          goto LABEL_141;
        }

        if (v105 < v139)
        {
          v102 = v17 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v43 = v168[1];
    v44 = v162;
    a4 = v152;
    if (v162 >= v43)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v44, a4))
  {
    goto LABEL_146;
  }

  if (&a4[v44] >= v78)
  {
    a4 = v168[1];
  }

  else
  {
    a4 += v44;
  }

  if (a4 < v44)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v143 = sub_1B4CDDE84(v17);
    goto LABEL_118;
  }

  v79 = v59;
  if (v59 == a4)
  {
    a4 = v59;
    if (v59 < v44)
    {
      goto LABEL_144;
    }

    goto LABEL_64;
  }

  v80 = v166;
  v167 = v5;
  v81 = *v168;
  v82 = *(v26 + 72);
  v83 = &(*v168)[v82 * (v79 - 1)];
  v177 = -v82;
  v151 = v44;
  v84 = v44 - v79;
  v178 = v81;
  v155 = v82;
  v85 = &v81[v79 * v82];
  v86 = v181;
  v162 = a4;
  while (2)
  {
    v169 = v79;
    v163 = v85;
    v164 = v84;
    v165 = v83;
LABEL_52:
    sub_1B4A6A0D8(v85, v86, type metadata accessor for ActivityAchievementAward);
    sub_1B4A6A0D8(v83, v184, type metadata accessor for ActivityAchievementAward);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v87 = sub_1B4D1796C();
    __swift_project_value_buffer(v87, qword_1EDC3CE48);
    v88 = v182;
    sub_1B4D178FC();
    v89 = *v183;
    if ((*v183)(v88, 1, v80) == 1)
    {
LABEL_57:
      sub_1B4975024(v88, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4A6A140(v184, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v86, type metadata accessor for ActivityAchievementAward);
    }

    else
    {
      v176 = *v174;
      v176(v180, v182, v80);
      v90 = v184;
      v91 = v172;
      sub_1B4D178FC();
      v92 = v91;
      if (v89(v91, 1, v80) == 1)
      {
        (*v173)(v180, v80);
        v88 = v91;
        v86 = v181;
        goto LABEL_57;
      }

      v93 = v171;
      v176(v171, v92, v80);
      v94 = v180;
      LODWORD(v176) = sub_1B4D1772C();
      v95 = *v173;
      (*v173)(v93, v80);
      v95(v94, v80);
      v17 = type metadata accessor for ActivityAchievementAward;
      sub_1B4A6A140(v90, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v181, type metadata accessor for ActivityAchievementAward);
      if ((v176 & 1) == 0)
      {
        v86 = v181;
LABEL_50:
        v79 = v169 + 1;
        v83 = v165 + v155;
        v84 = v164 - 1;
        v85 = v163 + v155;
        a4 = v162;
        if (v169 + 1 == v162)
        {
          v5 = v167;
          v26 = v150;
          v44 = v151;
          if (v162 < v151)
          {
            goto LABEL_144;
          }

          goto LABEL_64;
        }

        continue;
      }
    }

    break;
  }

  if (v178)
  {
    v17 = v179;
    sub_1B4A6A070(v85, v179, type metadata accessor for ActivityAchievementAward);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B4A6A070(v17, v83, type metadata accessor for ActivityAchievementAward);
    v83 += v177;
    v85 += v177;
    v96 = __CFADD__(v84++, 1);
    v86 = v181;
    if (v96)
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_1B4A67C18(char *a1, char *a2, unint64_t a3, char *a4)
{
  v90 = a3;
  v95 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v74 - v14;
  v94 = sub_1B4D1777C();
  v15 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v76 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v74 - v22;
  v23 = type metadata accessor for ActivityAchievementAward(0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v91 = (&v74 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v74 - v31;
  v89 = *(v32 + 72);
  if (!v89)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return;
  }

  v33 = v95 - a1;
  if (v95 - a1 == 0x8000000000000000 && v89 == -1)
  {
    goto LABEL_75;
  }

  v34 = v90 - v95;
  if (v90 - v95 == 0x8000000000000000 && v89 == -1)
  {
    goto LABEL_76;
  }

  v35 = v89;
  v98 = a1;
  v97 = a4;
  v93 = v23;
  if (v33 / v89 >= v34 / v89)
  {
    v87 = v30;
    v38 = v34 / v89 * v89;
    if (a4 < v95 || &v95[v38] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v95)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = &a4[v38];
    v58 = v90;
    if (v38 >= 1)
    {
      v85 = v10;
      v89 = -v89;
      v77 = (v15 + 8);
      v78 = a1;
      v59 = &a4[v38];
      v60 = v87;
      v92 = a4;
      v84 = (v15 + 48);
      v79 = (v15 + 32);
      do
      {
        v75 = v57;
        v61 = v95;
        v95 += v89;
        v86 = v61;
        while (1)
        {
          if (v61 <= a1)
          {
            v98 = v61;
            v96 = v75;
            goto LABEL_73;
          }

          v62 = v58;
          v90 = v59;
          v88 = &v59[v89];
          sub_1B4A6A0D8(&v59[v89], v91, type metadata accessor for ActivityAchievementAward);
          sub_1B4A6A0D8(v95, v60, type metadata accessor for ActivityAchievementAward);
          if (qword_1EDC3CE40 != -1)
          {
            swift_once();
          }

          v63 = sub_1B4D1796C();
          __swift_project_value_buffer(v63, qword_1EDC3CE48);
          v64 = v85;
          sub_1B4D178FC();
          v65 = *v84;
          if ((*v84)(v64, 1, v94) == 1)
          {
            sub_1B4975024(v64, &qword_1EB8A6790, &qword_1B4D1BBC0);
            v66 = 1;
            v60 = v87;
          }

          else
          {
            v83 = v57;
            v67 = v94;
            v68 = v80;
            v82 = *v79;
            (v82)(v80, v64, v94);
            v60 = v87;
            v69 = v81;
            sub_1B4D178FC();
            if (v65(v69, 1, v67) == 1)
            {
              (*v77)(v68, v67);
              sub_1B4975024(v69, &qword_1EB8A6790, &qword_1B4D1BBC0);
              v66 = 1;
            }

            else
            {
              v70 = v76;
              (v82)(v76, v69, v67);
              v66 = sub_1B4D1772C();
              v71 = *v77;
              v72 = v70;
              v60 = v87;
              (*v77)(v72, v67);
              v71(v68, v67);
            }

            a1 = v78;
            v57 = v83;
          }

          v59 = v90;
          v58 = &v62[v89];
          sub_1B4A6A140(v60, type metadata accessor for ActivityAchievementAward);
          sub_1B4A6A140(v91, type metadata accessor for ActivityAchievementAward);
          if (v66)
          {
            break;
          }

          v73 = v88;
          v57 = v88;
          if (v62 < v59 || v58 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v57;
          v61 = v86;
          if (v73 <= v92)
          {
            v95 = v86;
            goto LABEL_72;
          }
        }

        if (v62 < v86 || v58 >= v86)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v62 != v86)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      while (v59 > v92);
    }

LABEL_72:
    v98 = v95;
    v96 = v57;
  }

  else
  {
    v36 = v33 / v89 * v89;
    if (a4 < a1 || &a1[v36] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v37 = v87;
    }

    else
    {
      v37 = v87;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v39 = &a4[v36];
    v96 = &a4[v36];
    v40 = v36 < 1 || v95 >= v90;
    v41 = v88;
    if (!v40)
    {
      v91 = (v15 + 48);
      v82 = (v15 + 8);
      v83 = (v15 + 32);
      v84 = v39;
      while (1)
      {
        sub_1B4A6A0D8(v95, v37, type metadata accessor for ActivityAchievementAward);
        sub_1B4A6A0D8(a4, v28, type metadata accessor for ActivityAchievementAward);
        if (qword_1EDC3CE40 != -1)
        {
          swift_once();
        }

        v42 = sub_1B4D1796C();
        __swift_project_value_buffer(v42, qword_1EDC3CE48);
        sub_1B4D178FC();
        v43 = *v91;
        v44 = (*v91)(v41, 1, v94);
        v45 = v41;
        if (v44 == 1)
        {
          goto LABEL_26;
        }

        v46 = v94;
        v92 = a4;
        v47 = *v83;
        v48 = v28;
        v49 = v85;
        (*v83)(v85, v41, v94);
        v50 = v86;
        sub_1B4D178FC();
        v51 = v50;
        if (v43(v50, 1, v46) == 1)
        {
          break;
        }

        v53 = v79;
        v47(v79, v51, v46);
        v54 = sub_1B4D1772C();
        v55 = *v82;
        (*v82)(v53, v46);
        v55(v49, v46);
        sub_1B4A6A140(v48, type metadata accessor for ActivityAchievementAward);
        v37 = v87;
        sub_1B4A6A140(v87, type metadata accessor for ActivityAchievementAward);
        a4 = v92;
        v41 = v88;
        v35 = v89;
        v28 = v48;
        v39 = v84;
        if ((v54 & 1) == 0)
        {
          v56 = &v92[v89];
          if (a1 < v92 || a1 >= v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v92)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v97 = v56;
          a4 += v35;
          goto LABEL_33;
        }

LABEL_27:
        v52 = &v95[v35];
        if (a1 < v95 || a1 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v95)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v95 = v52;
LABEL_33:
        a1 += v35;
        v98 = a1;
        if (a4 >= v39 || v95 >= v90)
        {
          goto LABEL_73;
        }
      }

      (*v82)(v49, v46);
      v45 = v50;
      a4 = v92;
      v41 = v88;
      v35 = v89;
      v28 = v48;
      v37 = v87;
      v39 = v84;
LABEL_26:
      sub_1B4975024(v45, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4A6A140(v28, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v37, type metadata accessor for ActivityAchievementAward);
      goto LABEL_27;
    }
  }

LABEL_73:
  sub_1B4CDDEC0(&v98, &v97, &v96);
}

void sub_1B4A68708()
{
  v1 = type metadata accessor for WorkoutAwardsFact(0);
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v22 = &v18 - v6;
  v20 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v19 = v8 - 2;
    while (1)
    {
      v23 = 0;
      MEMORY[0x1B8C7DDC0](&v23, 8, v5);
      v12 = (v23 * v8) >> 64;
      if (v8 > v23 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v23 * v8)
        {
          do
          {
            v23 = 0;
            MEMORY[0x1B8C7DDC0](&v23, 8);
          }

          while (v13 > v23 * v8);
          v12 = (v23 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = v7[2];
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v17 = *(v21 + 72);
        sub_1B4A6A0D8(v7 + v16 + v17 * v10, v22, type metadata accessor for WorkoutAwardsFact);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        sub_1B4A6A0D8(v7 + v16 + v17 * v14, v3, type metadata accessor for WorkoutAwardsFact);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1B4CDE340(v7);
        }

        if (v10 >= v7[2])
        {
          goto LABEL_21;
        }

        sub_1B4A69C90(v3, v7 + v16 + v17 * v10);
        if (v14 >= v7[2])
        {
          goto LABEL_22;
        }

        sub_1B4A69C90(v22, v7 + v16 + v17 * v14);
        v9 = v19;
        *v20 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1B4A6895C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivityAchievementAward(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v26 - v8);
  v30 = *(a1 + 16);
  if (v30)
  {
    v10 = 0;
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v32 = *(v7 + 72);
    v28 = v11;
    v29 = a1 + v11;
    v12 = MEMORY[0x1E69E7CC0];
    v27 = a2;
    while (1)
    {
      sub_1B4A6A0D8(v29 + v32 * v10, v9, type metadata accessor for ActivityAchievementAward);
      v13 = *a2;
      v14 = *v9;
      v15 = v9[1];
      if (*(*a2 + 16))
      {
        sub_1B4D18E8C();

        sub_1B4D1820C();
        v16 = sub_1B4D18EDC();
        v17 = -1 << *(v13 + 32);
        v18 = v16 & ~v17;
        if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(v13 + 48) + 16 * v18);
            v21 = *v20 == v14 && v20[1] == v15;
            if (v21 || (sub_1B4D18DCC() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          sub_1B4A6A140(v9, type metadata accessor for ActivityAchievementAward);
          a2 = v27;
          goto LABEL_4;
        }

LABEL_14:

        a2 = v27;
      }

      sub_1B49FA73C(&v33, v14, v15);

      sub_1B4A6A070(v9, v31, type metadata accessor for ActivityAchievementAward);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B4BCED5C(0, *(v12 + 16) + 1, 1);
        v12 = v34;
      }

      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B4BCED5C((v23 > 1), v24 + 1, 1);
        v12 = v34;
      }

      *(v12 + 16) = v24 + 1;
      sub_1B4A6A070(v31, v12 + v28 + v24 * v32, type metadata accessor for ActivityAchievementAward);
LABEL_4:
      if (++v10 == v30)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B4A68C78(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1B4D1777C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E68, &qword_1B4D25A08);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for AwardsContext(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4A68DCC, 0, 0);
}

uint64_t sub_1B4A68DCC()
{
  v49 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for WorkoutAwardsFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E70, &qword_1B4D25A10);
  v47 = sub_1B4D181CC();
  v48 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0x6F43736472617761, 0xED0000747865746ELL);

  (*(v6 + 8))(v47, v48, v2, v2, v5, v6);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1B4975024(v0[12], &qword_1EB8A8E68, &qword_1B4D25A08);
LABEL_9:
    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v8 = v0[7];
  sub_1B4A6A070(v0[12], v0[15], type metadata accessor for AwardsContext);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v0[4] = &type metadata for WorkoutAwardsFactGenerator.QueryIdentifier;
  v47 = sub_1B4D181CC();
  v48 = v11;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AE90);

  (*(v10 + 8))(v47, v48, &type metadata for WorkoutWeekContext, &type metadata for WorkoutWeekContext, v9, v10);

  v12 = v0[3];
  if (!v12)
  {
    v24 = v0[15];
LABEL_8:
    sub_1B4A6A140(v24, type metadata accessor for AwardsContext);
    goto LABEL_9;
  }

  v14 = v4[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v0[7], v14);
  v0[6] = &type metadata for WorkoutAwardsFactGenerator.QueryIdentifier;
  v47 = sub_1B4D181CC();
  v48 = v15;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4AEB0);

  (*(v13 + 8))(v47, v48, &type metadata for WorkoutWeekContext, &type metadata for WorkoutWeekContext, v14, v13);

  v16 = v0[5];
  v17 = v0[15];
  if (!v16)
  {

    v24 = v17;
    goto LABEL_8;
  }

  v19 = v0[10];
  v18 = v0[11];
  v21 = v0[8];
  v20 = v0[9];
  v22 = type metadata accessor for WorkoutState(0);
  (*(v19 + 16))(v18, v21 + *(v22 + 36), v20);
  v47 = v12;
  sub_1B49973E0(v16);
  v23 = v12;
  v47 = *v17;

  sub_1B4A66490(&v47);
  v28 = v0[11];
  v29 = v47;
  v47 = MEMORY[0x1E69E7CD0];
  v30 = sub_1B4A6895C(v29, &v47);

  v31 = swift_task_alloc();
  *(v31 + 16) = v23;
  *(v31 + 24) = v28;
  v32 = sub_1B4AE0F50(sub_1B4A69C74, v31, v30);

  if (!v32[2])
  {

    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v39 = sub_1B4D17F6C();
    __swift_project_value_buffer(v39, qword_1EDC36F00);
    v40 = sub_1B4D17F5C();
    v41 = sub_1B4D1873C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1B4953000, v40, v41, "No Awards found, nothing to highlight", v42, 2u);
      MEMORY[0x1B8C7DDA0](v42, -1, -1);
    }

    v43 = v0[15];
    v45 = v0[10];
    v44 = v0[11];
    v46 = v0[9];

    sub_1B4A6A140(v43, type metadata accessor for AwardsContext);
    (*(v45 + 8))(v44, v46);
    goto LABEL_9;
  }

  v47 = v32;
  sub_1B4A68708();
  v25 = v47;
  if (v47[2] >= 3uLL)
  {
    v33 = *(type metadata accessor for WorkoutAwardsFact(0) - 8);
    sub_1B4C5C2E0(v25, v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), 0, 5uLL);
    v35 = v34;

    v25 = v35;
  }

  v37 = v0[10];
  v36 = v0[11];
  v38 = v0[9];
  sub_1B4A6A140(v0[15], type metadata accessor for AwardsContext);
  (*(v37 + 8))(v36, v38);
LABEL_10:

  v26 = v0[1];

  return v26(v25);
}

unint64_t sub_1B4A69438(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B4D1777C();
  v46 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = sub_1B4D174EC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v40 - v20;
  v48 = v2;
  v21 = *(v2 + 36);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v22 = sub_1B4D1796C();
  v23 = __swift_project_value_buffer(v22, qword_1EDC3CE48);
  v49 = v21;
  Date.dateIntervalFromStartOfWeek(calendar:)(v23, v13);
  v40 = v4;
  v24 = v14;
  v41 = *(v15 + 56);
  v41(v13, 0, 1, v14);
  v25 = *(v15 + 32);
  v25(v50, v13, v24);
  v42 = a1;
  Date.dateIntervalForPreviousWeek(calendar:)(v10);
  v41(v10, 0, 1, v24);
  v25(v47, v10, v24);
  sub_1B4D174DC();
  sub_1B4D174BC();
  v26 = v45;
  sub_1B4D174CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EB0, &qword_1B4D25A60);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EB8, &qword_1B4D25A68);
  v28 = *(*(v27 - 8) + 72);
  v29 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
  v30 = v24;
  v31 = 2 * v28;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B4D1BE00;
  v33 = *(v27 + 48);
  *(v32 + v29) = 0;
  (*(v15 + 16))(v32 + v29 + v33, v26, v30);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v34 = (v32 + v29 + v28);
  v35 = *(v27 + 48);
  *v34 = 1;
  (*(v46 + 16))(&v34[v35], v42 + v49, v51);
  swift_storeEnumTagMultiPayload();
  *(v32 + v29 + v31) = 2;
  v36 = v47;
  sub_1B4D174BC();
  swift_storeEnumTagMultiPayload();
  v37 = sub_1B4C968EC(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v38 = *(v15 + 8);
  v38(v26, v30);
  v38(v36, v30);
  v38(v50, v30);
  return v37;
}

unint64_t sub_1B4A69C28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4D18B1C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4A69C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAwardsFact(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1B4A69CF4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for WorkoutRecord(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = (a1 + *(type metadata accessor for ActivityAchievementAward(0) + 40));
  v13 = v12[1];
  if (!v13)
  {
    return 0;
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = *v12;
  v16 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v17 = *(v6 + 72);
  while (1)
  {
    sub_1B4A6A0D8(v16, v8, type metadata accessor for WorkoutRecord);
    if (sub_1B4D1779C() == v15 && v13 == v18)
    {
      break;
    }

    v19 = sub_1B4D18DCC();

    if (v19)
    {
      goto LABEL_10;
    }

    sub_1B4A6A140(v8, type metadata accessor for WorkoutRecord);
    v16 += v17;
    if (!--v14)
    {
      return 0;
    }
  }

LABEL_10:
  sub_1B4A6A070(v8, v11, type metadata accessor for WorkoutRecord);
  v21 = *&v11[*(v5 + 28)];
  if (v11[*(v5 + 32)] <= 1u && v11[*(v5 + 32)])
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1B4D18DCC();
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v21 isIndoor:v22 & 1];
  sub_1B4A6A140(v11, type metadata accessor for WorkoutRecord);
  return v23;
}

double sub_1B4A69FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void sub_1B4A6A02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1B4A6A070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6A0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6A140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A6A1A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4A6A1F8(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EC0, &qword_1B4D25AA0);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1B4D1AA70;
      v15 = sub_1B4A6A6D8();
      *(v2 + 32) = &type metadata for WorkoutSplitFactGenerator;
      *(v2 + 40) = v15;
      v16 = sub_1B4A6A72C();
      *(v2 + 48) = &type metadata for WorkoutMediaCurrentPlayingItemFactGenerator;
      *(v2 + 56) = v16;
    }

    else
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1B4D223E0;
      v31 = sub_1B4A6A4E0();
      *(v2 + 32) = &type metadata for WorkoutVoiceLongestDistanceFactGenerator;
      *(v2 + 40) = v31;
      v32 = sub_1B4A6A534();
      *(v2 + 48) = &type metadata for WorkoutVoiceGreatestElevationGainFactGenerator;
      *(v2 + 56) = v32;
      v33 = sub_1B4A6A588();
      *(v2 + 64) = &type metadata for WorkoutVoiceMostCaloriesFactGenerator;
      *(v2 + 72) = v33;
      v34 = sub_1B4A6A5DC();
      *(v2 + 80) = &type metadata for ClosedAllRingsFactGenerator;
      *(v2 + 88) = v34;
      v35 = sub_1B4A6A630();
      *(v2 + 96) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFactGenerator;
      *(v2 + 104) = v35;
      v36 = sub_1B4A6A684();
      *(v2 + 112) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFactGenerator;
      *(v2 + 120) = v36;
    }
  }

  else if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B4D25A80;
    v17 = sub_1B4A6A780();
    *(v2 + 32) = &type metadata for WorkoutDetailFactGenerator;
    *(v2 + 40) = v17;
    v18 = sub_1B4A6A7D4();
    *(v2 + 48) = &type metadata for WorkoutGoalAchievementStatusFactGenerator;
    *(v2 + 56) = v18;
    v19 = sub_1B4A6A828();
    *(v2 + 64) = &type metadata for WorkoutMetricsFactGenerator;
    *(v2 + 72) = v19;
    v20 = sub_1B4A6A4E0();
    *(v2 + 80) = &type metadata for WorkoutVoiceLongestDistanceFactGenerator;
    *(v2 + 88) = v20;
    v21 = sub_1B4A6A534();
    *(v2 + 96) = &type metadata for WorkoutVoiceGreatestElevationGainFactGenerator;
    *(v2 + 104) = v21;
    v22 = sub_1B4A6A588();
    *(v2 + 112) = &type metadata for WorkoutVoiceMostCaloriesFactGenerator;
    *(v2 + 120) = v22;
    v23 = sub_1B4A6A6D8();
    *(v2 + 128) = &type metadata for WorkoutSplitFactGenerator;
    *(v2 + 136) = v23;
    v24 = sub_1B4A6A630();
    *(v2 + 144) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFactGenerator;
    *(v2 + 152) = v24;
    v25 = sub_1B4A6A684();
    *(v2 + 160) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFactGenerator;
    *(v2 + 168) = v25;
    v26 = sub_1B4A6A87C();
    *(v2 + 176) = &type metadata for ThisWeekCurrentWorkoutDistanceFactGenerator;
    *(v2 + 184) = v26;
    v27 = sub_1B4A6A8D0();
    *(v2 + 192) = &type metadata for SignificantDistanceDuringWorkoutFactGenerator;
    *(v2 + 200) = v27;
    v28 = sub_1B4A6A924();
    *(v2 + 208) = &type metadata for AverageWorkoutPaceFactGenerator;
    *(v2 + 216) = v28;
    v29 = sub_1B4A6A978();
    *(v2 + 224) = &type metadata for ConsistentWorkoutTrendFactGenerator;
    *(v2 + 232) = v29;
    v30 = sub_1B4A6A9CC();
    *(v2 + 240) = &type metadata for RingProgressFactGenerator;
    *(v2 + 248) = v30;
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B4D25A90;
    v3 = sub_1B4A6A780();
    *(v2 + 32) = &type metadata for WorkoutDetailFactGenerator;
    *(v2 + 40) = v3;
    v4 = sub_1B4A6A72C();
    *(v2 + 48) = &type metadata for WorkoutMediaCurrentPlayingItemFactGenerator;
    *(v2 + 56) = v4;
    v5 = sub_1B4A6AA20();
    *(v2 + 64) = &type metadata for RingClosureStreakFactGenerator;
    *(v2 + 72) = v5;
    v6 = sub_1B4A6AA74();
    *(v2 + 80) = &type metadata for PerfectWeekRingStatusFactGenerator;
    *(v2 + 88) = v6;
    v7 = sub_1B4A6AAC8();
    *(v2 + 96) = &type metadata for RingStateFactGenerator;
    *(v2 + 104) = v7;
    v8 = sub_1B4A6AB1C();
    *(v2 + 112) = &type metadata for CompletedWorkoutsFactGenerator;
    *(v2 + 120) = v8;
    v9 = sub_1B4A6A87C();
    *(v2 + 128) = &type metadata for ThisWeekCurrentWorkoutDistanceFactGenerator;
    *(v2 + 136) = v9;
    v10 = sub_1B4A6AB70();
    *(v2 + 144) = &type metadata for TrainingLoadFactGenerator;
    *(v2 + 152) = v10;
    v11 = sub_1B4A6ABC4();
    *(v2 + 160) = &type metadata for CurrentDayFactGenerator;
    *(v2 + 168) = v11;
    v12 = sub_1B4A6AC18();
    *(v2 + 176) = &type metadata for WorkoutAlertFactGenerator;
    *(v2 + 184) = v12;
    v13 = sub_1B4A6AC6C();
    *(v2 + 192) = &type metadata for WorkoutAwardsFactGenerator;
    *(v2 + 200) = v13;
    v14 = sub_1B4A6A978();
    *(v2 + 208) = &type metadata for ConsistentWorkoutTrendFactGenerator;
    *(v2 + 216) = v14;
  }

  return v2;
}

unint64_t sub_1B4A6A4E0()
{
  result = qword_1EB8A8EC8;
  if (!qword_1EB8A8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EC8);
  }

  return result;
}

unint64_t sub_1B4A6A534()
{
  result = qword_1EB8A8ED0;
  if (!qword_1EB8A8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8ED0);
  }

  return result;
}

unint64_t sub_1B4A6A588()
{
  result = qword_1EB8A8ED8;
  if (!qword_1EB8A8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8ED8);
  }

  return result;
}

unint64_t sub_1B4A6A5DC()
{
  result = qword_1EB8A8EE0;
  if (!qword_1EB8A8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EE0);
  }

  return result;
}

unint64_t sub_1B4A6A630()
{
  result = qword_1EB8A8EE8;
  if (!qword_1EB8A8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EE8);
  }

  return result;
}

unint64_t sub_1B4A6A684()
{
  result = qword_1EB8A8EF0;
  if (!qword_1EB8A8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EF0);
  }

  return result;
}

unint64_t sub_1B4A6A6D8()
{
  result = qword_1EB8A8EF8;
  if (!qword_1EB8A8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EF8);
  }

  return result;
}

unint64_t sub_1B4A6A72C()
{
  result = qword_1EB8A8F00;
  if (!qword_1EB8A8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F00);
  }

  return result;
}

unint64_t sub_1B4A6A780()
{
  result = qword_1EB8A8F08;
  if (!qword_1EB8A8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F08);
  }

  return result;
}

unint64_t sub_1B4A6A7D4()
{
  result = qword_1EB8A8F10;
  if (!qword_1EB8A8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F10);
  }

  return result;
}

unint64_t sub_1B4A6A828()
{
  result = qword_1EB8A8F18;
  if (!qword_1EB8A8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F18);
  }

  return result;
}

unint64_t sub_1B4A6A87C()
{
  result = qword_1EB8A8F20;
  if (!qword_1EB8A8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F20);
  }

  return result;
}

unint64_t sub_1B4A6A8D0()
{
  result = qword_1EB8A8F28;
  if (!qword_1EB8A8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F28);
  }

  return result;
}

unint64_t sub_1B4A6A924()
{
  result = qword_1EB8A8F30;
  if (!qword_1EB8A8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F30);
  }

  return result;
}

unint64_t sub_1B4A6A978()
{
  result = qword_1EB8A8F38;
  if (!qword_1EB8A8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F38);
  }

  return result;
}

unint64_t sub_1B4A6A9CC()
{
  result = qword_1EB8A8F40;
  if (!qword_1EB8A8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F40);
  }

  return result;
}

unint64_t sub_1B4A6AA20()
{
  result = qword_1EB8A8F48;
  if (!qword_1EB8A8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F48);
  }

  return result;
}

unint64_t sub_1B4A6AA74()
{
  result = qword_1EB8A8F50;
  if (!qword_1EB8A8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F50);
  }

  return result;
}

unint64_t sub_1B4A6AAC8()
{
  result = qword_1EB8A8F58;
  if (!qword_1EB8A8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F58);
  }

  return result;
}

unint64_t sub_1B4A6AB1C()
{
  result = qword_1EB8A8F60;
  if (!qword_1EB8A8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F60);
  }

  return result;
}

unint64_t sub_1B4A6AB70()
{
  result = qword_1EB8A8F68;
  if (!qword_1EB8A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F68);
  }

  return result;
}

unint64_t sub_1B4A6ABC4()
{
  result = qword_1EB8A8F70;
  if (!qword_1EB8A8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F70);
  }

  return result;
}

unint64_t sub_1B4A6AC18()
{
  result = qword_1EB8A8F78;
  if (!qword_1EB8A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F78);
  }

  return result;
}

unint64_t sub_1B4A6AC6C()
{
  result = qword_1EB8A8F80;
  if (!qword_1EB8A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F80);
  }

  return result;
}

uint64_t RingsPropertyRecord.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v34 - v4;
  v38 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v43 = a1;
  v15 = *(a1 + v14);
  swift_beginAccess();
  v36 = *(v15 + 16);
  swift_beginAccess();
  v35 = *(v15 + 24);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(v15 + v16, v9, &qword_1EB8A8F90, &unk_1B4D32490);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1B4D17BBC();
    v18 = &v13[v10[5]];
    *v18 = 0;
    *(v18 + 1) = 0;
    v19 = &v13[v10[6]];
    *v19 = 0;
    *(v19 + 1) = 0;
    v13[v10[7]] = 2;
    if (v17(v9, 1, v10) != 1)
    {
      sub_1B4975024(v9, &qword_1EB8A8F90, &unk_1B4D32490);
    }
  }

  else
  {
    sub_1B4A6B870(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  v20 = v40;
  RingsPropertyDimensions.init(_:)(v13, v42);
  v21 = v41;
  if (v20)
  {
    return sub_1B4A6B810(v43, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  }

  v23 = v42[0];
  v24 = BYTE1(v42[0]);
  v25 = BYTE2(v42[0]);
  v26 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  v27 = v15 + v26;
  v28 = v39;
  sub_1B4974FBC(v27, v39, &qword_1EB8A8F88, &unk_1B4D29F50);
  v29 = *(v21 + 48);
  v30 = v38;
  if (v29(v28, 1, v38) == 1)
  {
    v31 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    sub_1B4D17BBC();
    if (v29(v28, 1, v30) != 1)
    {
      sub_1B4975024(v28, &qword_1EB8A8F88, &unk_1B4D29F50);
    }
  }

  else
  {
    sub_1B4A6B870(v28, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  static RingsPropertySerialization.from(_:)(v6, v42);
  sub_1B4A6B810(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4A6B810(v43, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  v32 = v37;
  result = sub_1B496F398(v42, v37 + 24);
  v33 = v35;
  *v32 = v36;
  *(v32 + 8) = v33;
  *(v32 + 16) = v23;
  *(v32 + 17) = v24;
  *(v32 + 18) = v25;
  return result;
}

uint64_t RingsPropertyRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  sub_1B4A6B9A8(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A6B25C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v37 - v5;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v18 = sub_1B4AC8F90(v18);
    *(a1 + v16) = v18;
  }

  swift_beginAccess();
  *(v18 + 16) = v15;
  v19 = a2[1];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + v16);
  v42 = v8;
  if ((v20 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v21 = sub_1B4AC8F90(v21);
    *(a1 + v16) = v21;
  }

  v22 = swift_beginAccess();
  *(v21 + 24) = v19;
  MEMORY[0x1EEE9AC00](v22);
  *(&v37 - 8) = v23;
  *(&v37 - 14) = v24;
  sub_1B4A6B9A8(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  v25 = v41;
  sub_1B4D17DAC();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v16);
  if ((v26 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v27 = sub_1B4AC8F90(v27);
    *(a1 + v16) = v27;
  }

  v28 = v42;
  sub_1B4A6B870(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  (*(v40 + 56))(v11, 0, 1, v12);
  v29 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B49A205C(v11, v27 + v29, &qword_1EB8A8F90, &unk_1B4D32490);
  swift_endAccess();
  v30 = a2[6];
  v31 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v30);
  result = RingsProperty.protobuf()(v30, v31);
  if (!v25)
  {
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a1 + v16);
    if ((v33 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      swift_allocObject();
      v34 = sub_1B4AC8F90(v34);
      *(a1 + v16) = v34;
    }

    v35 = v39;
    sub_1B4A6B870(v28, v39, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    (*(v37 + 56))(v35, 0, 1, v38);
    v36 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
    swift_beginAccess();
    sub_1B49A205C(v35, v34 + v36, &qword_1EB8A8F88, &unk_1B4D29F50);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B4A6B750()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  sub_1B4A6B9A8(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A6B810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A6B870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6B9A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WorkoutVoiceMostCaloriesFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceMostCaloriesFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000072;
  }

  else
  {
    return 0xD000000000000066;
  }
}

uint64_t sub_1B4A6BAB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000072;
  }

  else
  {
    v3 = 0xD000000000000066;
  }

  if (v2)
  {
    v4 = "previousWorkoutWeekContext";
  }

  else
  {
    v4 = "ue of <energy_string>.";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000072;
  }

  else
  {
    v6 = 0xD000000000000066;
  }

  if (*a2)
  {
    v7 = "ue of <energy_string>.";
  }

  else
  {
    v7 = "previousWorkoutWeekContext";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}