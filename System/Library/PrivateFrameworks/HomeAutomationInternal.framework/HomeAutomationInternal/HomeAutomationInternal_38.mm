uint64_t sub_252C0DF0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C0E0E0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C0E058;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0E058()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSetColorParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0E0E0()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSetColorParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0E164(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C0E188, 0, 0);
}

uint64_t sub_252C0E188()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationBatteryResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;

  return v9(0xD00000000000001FLL, 0x8000000252E8A2D0, v5);
}

uint64_t sub_252C0E320(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_252C1A198;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_252C1A194;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0E46C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C0E490, 0, 0);
}

uint64_t sub_252C0E490()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationBatteryResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E628;

  return v9(0xD00000000000001ELL, 0x8000000252E8A2F0, v5);
}

uint64_t sub_252C0E628(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_252C0E7DC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_252C0E774;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0E774()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_252C0E7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0E840(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0E8DC, 0, 0);
}

uint64_t sub_252C0E8DC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = v4;
  *(v1 + v2[7]) = 0;

  sub_252D823D0(v1, v3);
  v8 = sub_252C0700C();
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C0EA64;

  return v11(0xD00000000000001ELL, 0x8000000252E8A0A0, v8);
}

uint64_t sub_252C0EA64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C0EC38;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C0EBB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0EBB0()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationFailureResponseParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0EC38()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationFailureResponseParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0ECBC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return MEMORY[0x2822009F8](sub_252C0ECE4, 0, 0);
}

uint64_t sub_252C0ECE4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for HomeAutomationEntityResponses();
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0x6552797469746E65;
  *(v6 + 40) = 0xEF7365736E6F7073;
  *(v6 + 48) = v5;
  *(v6 + 72) = v4;
  *(v6 + 80) = 0xD000000000000017;
  *(v6 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 96) = v3;
  *(v6 + 120) = v7;
  strcpy((v6 + 128), "intentContext");
  *(v6 + 142) = -4864;
  *(v6 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v6 + 144) = v1;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();

  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_252C0EECC;

  return v10(0xD000000000000016, 0x8000000252E8A080, v6);
}

uint64_t sub_252C0EECC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C0F088;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C0F018;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0F018()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_252C0F088()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0F114(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 80) = a1;
  *(v3 + 32) = type metadata accessor for HomeAutomationSetSecuritySystemStateParameters(0);
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0F1AC, 0, 0);
}

uint64_t sub_252C0F1AC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[9], 1, 1, v5);
  *(v1 + v2[5]) = v4;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252BCCC3C(v1, v3);
  v7 = sub_252C09E40(type metadata accessor for HomeAutomationSetSecuritySystemStateParameters, type metadata accessor for HomeAutomationPolledEntityResponses, type metadata accessor for HomeAutomationPolledEntityResponses);
  *(v0 + 48) = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_252C0F368;

  return v10(0xD000000000000025, 0x8000000252E86E20, v7);
}

uint64_t sub_252C0F368(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C0F53C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C0F4B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0F4B4()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationSetSecuritySystemStateParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C0F53C()
{
  sub_252C16904(*(v0 + 40), type metadata accessor for HomeAutomationSetSecuritySystemStateParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0F5C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSetPolledStateParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0F65C, 0, 0);
}

uint64_t sub_252C0F65C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[9], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252BCFC58(v1, v4, v3);
  v8 = sub_252C09E40(type metadata accessor for HomeAutomationSetPolledStateParameters, type metadata accessor for HomeAutomationPolledEntityResponses, type metadata accessor for HomeAutomationPolledEntityResponses);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C0F820;

  return v11(0xD00000000000001DLL, 0x8000000252E8A6B0, v8);
}

uint64_t sub_252C0F820(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C1A140;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C1A13C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0F96C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSetPolledStateParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0FA08, 0, 0);
}

uint64_t sub_252C0FA08()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[9], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252BCFC58(v1, v4, v3);
  v8 = sub_252C09E40(type metadata accessor for HomeAutomationSetPolledStateParameters, type metadata accessor for HomeAutomationPolledEntityResponses, type metadata accessor for HomeAutomationPolledEntityResponses);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C0FBCC;

  return v11(0xD00000000000001DLL, 0x8000000252E8A6B0, v8);
}

uint64_t sub_252C0FBCC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C0FDA0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C0FD18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0FD18()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSetPolledStateParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0FDA0()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSetPolledStateParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0FE24(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C0FE48, 0, 0);
}

uint64_t sub_252C0FE48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;

  return v9(0xD000000000000020, 0x8000000252E8A7E0, v5);
}

uint64_t sub_252C0FFE0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C10004, 0, 0);
}

uint64_t sub_252C10004()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationEntityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000019;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0x8000000252E775C0;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;

  return v9(0xD000000000000021, 0x8000000252E77590, v5);
}

uint64_t sub_252C10198(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C101BC, 0, 0);
}

uint64_t sub_252C101BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;

  return v9(0xD000000000000022, 0x8000000252E8A870, v5);
}

uint64_t sub_252C10354(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C10378, 0, 0);
}

uint64_t sub_252C10378()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;

  return v9(0xD000000000000022, 0x8000000252E666F0, v5);
}

uint64_t sub_252C10510(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 112) = a1;
  return MEMORY[0x2822009F8](sub_252C10538, 0, 0);
}

uint64_t sub_252C10538()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_252D5A410(v0 + 16, v1, v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = sub_252C078FC(v3, v4, v5);
  *(v0 + 80) = v6;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_252C10634;

  return v9(0xD00000000000001DLL, 0x8000000252E8A230, v6);
}

uint64_t sub_252C10634(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_252C107F0;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_252C10780;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C10780()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_252C107F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1085C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 112) = a1;
  return MEMORY[0x2822009F8](sub_252C10884, 0, 0);
}

uint64_t sub_252C10884()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_2529C5358(v0 + 16, v1, v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = sub_252C07A24(v3, v4, v5);
  *(v0 + 80) = v6;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_252C10980;

  return v9(0xD000000000000022, 0x8000000252E8A8A0, v6);
}

uint64_t sub_252C10980(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_252C1A130;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_252C1A12C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C10ACC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 104) = a1;
  return MEMORY[0x2822009F8](sub_252C10AF0, 0, 0);
}

uint64_t sub_252C10AF0()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_2529C4E24(v0 + 16, v1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = sub_252C07A24(v2, v3, v4);
  *(v0 + 72) = v5;
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_252C10BEC;

  return v8(0xD000000000000022, 0x8000000252E8A8A0, v5);
}

uint64_t sub_252C10BEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_252C10DA8;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_252C10D38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C10D38()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_252C10DA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C10E14(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return MEMORY[0x2822009F8](sub_252C10E3C, 0, 0);
}

uint64_t sub_252C10E3C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for HomeAutomationClimateResponses();
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  v8 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v6 + 96) = v1;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x65736E6F70736572;
  *(v6 + 168) = v4;
  *(v6 + 136) = 0xE900000000000073;
  *(v6 + 144) = v5;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_252C11018;

  return v11(0xD000000000000022, 0x8000000252E8A110, v6);
}

uint64_t sub_252C11018(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C111D4;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C11164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C11164()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_252C111D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C11240(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C11264, 0, 0);
}

uint64_t sub_252C11264()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationAmbientLightLevelResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000013;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0x8000000252E8A170;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;

  return v9(0xD000000000000023, 0x8000000252E8A140, v5);
}

uint64_t sub_252C113F8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C1141C, 0, 0);
}

uint64_t sub_252C1141C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationHumidityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;

  return v9(0xD00000000000001FLL, 0x8000000252E8A190, v5);
}

uint64_t sub_252C115B4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C115D8, 0, 0);
}

uint64_t sub_252C115D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationAirQualityEntityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000019;
  *(v5 + 40) = 0x8000000252E8A1E0;
  *(v5 + 48) = v4;
  *(v5 + 72) = v3;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000252E6FE70;
  *(v5 + 120) = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_252C0E320;

  return v8(0xD000000000000021, 0x8000000252E8A1B0, v5);
}

uint64_t sub_252C11770(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return MEMORY[0x2822009F8](sub_252C11798, 0, 0);
}

uint64_t sub_252C11798()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for HomeAutomationNumericEntityResponses();
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  v8 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v6 + 96) = v1;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x6552726F736E6573;
  *(v6 + 168) = v4;
  *(v6 + 136) = 0xEF7365736E6F7073;
  *(v6 + 144) = v5;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_252C1197C;

  return v11(0xD00000000000002FLL, 0x8000000252E8A200, v6);
}

uint64_t sub_252C1197C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C1A184;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C1A180;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C11B48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C11B70, 0, 0);
}

uint64_t sub_252C11B70()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "getResponses");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  v6 = type metadata accessor for HomeAutomationClimateResponses();
  *(v4 + 96) = v2;
  *(v4 + 120) = v6;
  strcpy((v4 + 128), "setResponses");
  *(v4 + 168) = v6;
  *(v4 + 141) = 0;
  *(v4 + 142) = -5120;
  *(v4 + 144) = v1;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  swift_retain_n();
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C11D08;

  return v9(0xD000000000000028, 0x8000000252E666C0, v4);
}

uint64_t sub_252C11D08(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_252C11EC4;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_252C11E54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C11E54()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_252C11EC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C11F30(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C11F54, 0, 0);
}

uint64_t sub_252C11F54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationDiscoveryEntityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0x6552797469746E65;
  *(v5 + 40) = 0xEF7365736E6F7073;
  *(v5 + 48) = v4;
  *(v5 + 88) = 0x8000000252E6FE70;
  *(v5 + 120) = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  *(v5 + 72) = v3;
  *(v5 + 80) = 0xD000000000000017;

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_252C0E320;

  return v8(0xD000000000000021, 0x8000000252E8A930, v5);
}

uint64_t sub_252C120F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C12194, 0, 0);
}

uint64_t sub_252C12194()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA2D7C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C12358;

  return v11(0xD000000000000026, 0x8000000252E8A390, v8);
}

uint64_t sub_252C12358(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C1252C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C124A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C124A4()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C1252C()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C125B0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C1264C, 0, 0);
}

uint64_t sub_252C1264C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C14(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C12810;

  return v11(0xD000000000000026, 0x8000000252E8A3C0, v8);
}

uint64_t sub_252C12810(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C1A148;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C1A144;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C1295C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C129F8, 0, 0);
}

uint64_t sub_252C129F8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C6C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C12BBC;

  return v11(0xD000000000000024, 0x8000000252E8A3F0, v8);
}

uint64_t sub_252C12BBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C1A150;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C1A14C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C12D08(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C12DA4, 0, 0);
}

uint64_t sub_252C12DA4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3CC4(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C12F68;

  return v11(0xD000000000000026, 0x8000000252E8A420, v8);
}

uint64_t sub_252C12F68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C1A158;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C1A154;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C130B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C13150, 0, 0);
}

uint64_t sub_252C13150()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3D1C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C13314;

  return v11(0xD000000000000027, 0x8000000252E8A450, v8);
}

uint64_t sub_252C13314(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C1A160;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C1A15C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C13460(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 80) = a1;
  *(v3 + 32) = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C134F8, 0, 0);
}

uint64_t sub_252C134F8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[6], 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  v6(v1 + v2[8], 1, 1, v5);
  *(v1 + v2[5]) = v4;
  sub_252BA3510(v1, v3);
  v7 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);
  *(v0 + 48) = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_252C136B4;

  return v10(0xD000000000000026, 0x8000000252E8A390, v7);
}

uint64_t sub_252C136B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C13888;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C13800;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C13800()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C13888()
{
  sub_252C16904(*(v0 + 40), type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1390C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C139A8, 0, 0);
}

uint64_t sub_252C139A8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C14(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C13B6C;

  return v11(0xD000000000000026, 0x8000000252E8A3C0, v8);
}

uint64_t sub_252C13B6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C13D40;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C13CB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C13CB8()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C13D40()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C13DC4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C13E60, 0, 0);
}

uint64_t sub_252C13E60()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C6C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C14024;

  return v11(0xD000000000000024, 0x8000000252E8A3F0, v8);
}

uint64_t sub_252C14024(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C141F8;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C14170;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C14170()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C141F8()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1427C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C14318, 0, 0);
}

uint64_t sub_252C14318()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3CC4(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C144DC;

  return v11(0xD000000000000026, 0x8000000252E8A420, v8);
}

uint64_t sub_252C144DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C146B0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C14628;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C14628()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C146B0()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C14734(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C147D0, 0, 0);
}

uint64_t sub_252C147D0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3D1C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C14994;

  return v11(0xD000000000000027, 0x8000000252E8A450, v8);
}

uint64_t sub_252C14994(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C14B68;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C14AE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C14AE0()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C14B68()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C14BEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C14C88, 0, 0);
}

uint64_t sub_252C14C88()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA30C0(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C14E4C;

  return v11(0xD000000000000026, 0x8000000252E665B0, v8);
}

uint64_t sub_252C14E4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C1A168;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C1A164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C14F98(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 112) = a1;
  return MEMORY[0x2822009F8](sub_252C14FC0, 0, 0);
}

uint64_t sub_252C14FC0()
{
  *(v0 + 16) = *(v0 + 112);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_252BAAEC0(v0 + 16, v1, v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 72) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  if (v4)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
    v9 = v4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x65736E6F70736572;
  *(v6 + 136) = 0xE900000000000073;
  v10 = 0;
  if (v5)
  {
    v10 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v0 + 80) = v5;
  *(v6 + 144) = v5;
  *(v6 + 168) = v10;
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_252C151BC;

  return v13(0xD000000000000025, 0x8000000252E8A6D0, v6);
}

uint64_t sub_252C151BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_252C1537C;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_252C15308;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C15308()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_252C1537C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C153EC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 80) = a1;
  *(v3 + 32) = type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters(0);
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C15484, 0, 0);
}

uint64_t sub_252C15484()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  *(v1 + v2[5]) = v4;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252CAEE38(v1, v3);
  v7 = sub_252C05740();
  *(v0 + 48) = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_252C155FC;

  return v10(0xD00000000000002ELL, 0x8000000252E69820, v7);
}

uint64_t sub_252C155FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C157D0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C15748;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C15748()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C157D0()
{
  sub_252C16904(*(v0 + 40), type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C15854(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1040) = a4;
  *(v4 + 1032) = a3;
  *(v4 + 1024) = a2;
  *(v4 + 1088) = a1;
  return MEMORY[0x2822009F8](sub_252C15880, 0, 0);
}

uint64_t sub_252C15880()
{
  v12 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1088);
  memcpy((v0 + 16), (v1 + 112), 0x1F8uLL);
  memcpy(__dst, (v1 + 112), sizeof(__dst));

  sub_252938414(v0 + 16, v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  v4 = sub_252953488(0, __dst, 0);
  *(v0 + 1048) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 1056) = v5;
  *(v5 + 16) = xmmword_252E3C280;
  *(v5 + 32) = 0x6552797469746E65;
  *(v5 + 40) = 0xEF7365736E6F7073;
  v6 = type metadata accessor for HomeAutomationEntityResponses();
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v3;
  *(v5 + 120) = v7;
  strcpy((v5 + 128), "intentContext");
  *(v5 + 142) = -4864;
  *(v5 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v5 + 144) = v4;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 1064) = v8;
  *v8 = v0;
  v8[1] = sub_252C15AA4;

  return v10(0xD00000000000001CLL, 0x8000000252E8A480, v5);
}

uint64_t sub_252C15AA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1072) = v1;

  if (v1)
  {
    v5 = sub_252C15C64;
  }

  else
  {
    *(v4 + 1080) = a1;
    v5 = sub_252C15BF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C15BF0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1080);

  return v1(v2);
}

uint64_t sub_252C15C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C15CD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1040) = a4;
  *(v4 + 1032) = a3;
  *(v4 + 1024) = a2;
  *(v4 + 1088) = a1;
  return MEMORY[0x2822009F8](sub_252C15D00, 0, 0);
}

uint64_t sub_252C15D00()
{
  v12 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1088);
  memcpy((v0 + 16), (v1 + 112), 0x1F8uLL);
  memcpy(__dst, (v1 + 112), sizeof(__dst));

  sub_252938414(v0 + 16, v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  v4 = sub_252953488(0, __dst, 0);
  *(v0 + 1048) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 1056) = v5;
  *(v5 + 16) = xmmword_252E3C280;
  *(v5 + 32) = 0x6552797469746E65;
  *(v5 + 40) = 0xEF7365736E6F7073;
  v6 = type metadata accessor for HomeAutomationEntityResponses();
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v3;
  *(v5 + 120) = v7;
  strcpy((v5 + 128), "intentContext");
  *(v5 + 142) = -4864;
  *(v5 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v5 + 144) = v4;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 1064) = v8;
  *v8 = v0;
  v8[1] = sub_252C15F24;

  return v10(0xD00000000000001FLL, 0x8000000252E8A4E0, v5);
}

uint64_t sub_252C15F24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1072) = v1;

  if (v1)
  {
    v5 = sub_252C1A138;
  }

  else
  {
    *(v4 + 1080) = a1;
    v5 = sub_252C1A134;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C16070(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 81) = a2;
  *(v4 + 80) = a1;
  *(v4 + 32) = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C1610C, 0, 0);
}

uint64_t sub_252C1610C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 81);
  v4 = *(v0 + 80);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  v6(v1 + v2[9], 1, 1, v5);
  *(v1 + v2[5]) = v4;
  v7 = v1 + v2[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v1 + v2[8]) = v3;
  sub_252CB7D14(v1);
  v8 = sub_252C07368();
  *(v0 + 48) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_252C162BC;

  return v11(0xD000000000000026, 0x8000000252E6DE60, v8);
}

uint64_t sub_252C162BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C16490;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C16408;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C16408()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C16490()
{
  sub_252C16904(*(v0 + 40), type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C16514(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 64) = a1;
  return MEMORY[0x2822009F8](sub_252C16538, 0, 0);
}

uint64_t sub_252C16538()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000019;
  *(v3 + 88) = 0x8000000252E775C0;
  *(v3 + 120) = type metadata accessor for HomeAutomationEntityResponses();
  *(v3 + 96) = v1;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_252C166AC;

  return v7(0xD000000000000021, 0x8000000252E77590, v3);
}

uint64_t sub_252C166AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_252C16860;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_252C167F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C167F8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_252C16860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C16904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252C16B84(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C16C20, 0, 0);
}

uint64_t sub_252C16C20()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252C229CC(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C16DE4;

  return v11(0xD000000000000026, 0x8000000252E665B0, v8);
}

uint64_t sub_252C16DE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C16FB8;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C16F30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C16F30()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C16FB8()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);

  v1 = *(v0 + 8);

  return v1();
}

void sub_252C17224()
{
  if (!qword_27F543F98)
  {
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F543F98);
    }
  }
}

void sub_252C1729C(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252C173CC(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F543FE0, type metadata accessor for HomeAutomationNumericEntityResponses, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C1757C(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C1769C(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C17224();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C177D0(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544040, type metadata accessor for HomeAutomationClimateResponses, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C1795C(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544058, type metadata accessor for HomeAutomationPolledEntityResponses, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C17AC4(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F544080, type metadata accessor for HomeAutomationBooleanResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C17C74(uint64_t a1)
{
  sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C17E00(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C17F3C(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_460Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_461Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_252C181B0(uint64_t a1)
{
  sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C18314(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252C1848C(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_361Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_362Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_252C18720(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252C187F4(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C18914(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F544178, type metadata accessor for HomeAutomationAutomation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C18A88(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F544178, type metadata accessor for HomeAutomationAutomation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C18C90(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C17224();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C18D84(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C18EB0(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C19070(uint64_t a1)
{
  sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544210, type metadata accessor for HomeAutomationHomeLocation, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C191D4(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C19334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v9 <= 0x3F)
  {
    sub_252C19908(319, a4, a5, a6);
    if (v10 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_370Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_371Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_252C19624(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F544248, type metadata accessor for HomeAutomationAirPurifierResponses, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C197CC(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544260, type metadata accessor for HomeAutomationTappableCommand, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C19908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_451Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_452Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_252C19B2C(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_379Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_380Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_252C19E64(uint64_t a1)
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252C17224();
    if (v2 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

BOOL sub_252C1A19C()
{
  v0 = sub_252C1A454();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_24:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_23;
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v7 = sub_252E36164();
    v9 = v8;

    ++v4;
    if ((v9 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7D44(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_2529F7D44((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v7;
      v4 = v6;
    }
  }

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544C58);

  v13 = sub_252E36AC4();
  v14 = sub_252E374C4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = MEMORY[0x2530AD730](v5, MEMORY[0x277D839F8]);
    v19 = sub_252BE2CE0(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_252917000, v13, v14, "Temperature threshold values: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2530AED00](v16, -1, -1);
    MEMORY[0x2530AED00](v15, -1, -1);
  }

  v20 = sub_252DF8A60(v5);

  v21 = *(v20 + 2);

  return v21 == 1;
}

unint64_t sub_252C1A454()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_17:
    if (sub_252E378C4() == 1)
    {
      v17 = MEMORY[0x277D84F90];
      v2 = sub_252E378C4();
LABEL_4:
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      while (v2 != v3)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        v6 = sub_25296E640();

        ++v3;
        if (v6)
        {
          MEMORY[0x2530AD700](v7);
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v4 = v17;
          v3 = v5;
        }
      }

      return v4;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    v2 = 1;
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
  sub_252E360E4();
  sub_252936E8C(&qword_27F5442F0, &qword_27F5442C8, &qword_252E533F8);
  v4 = sub_252E371C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442E8, &qword_252E53408);
  sub_252936E8C(&qword_27F5442F8, &qword_27F5442E8, &qword_252E53408);
  v8 = sub_252E371C4();
  v9 = COERCE_DOUBLE(sub_252987D34(v8));
  if ((v10 & 1) != 0 || (v11 = *(v8 + 16)) == 0)
  {
LABEL_24:

    return v4;
  }

  v12 = -v11;
  v13 = 4;
  while (*(v8 + 8 * v13) != v9)
  {
    ++v13;
    if (v12 + v13 == 4)
    {
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_252E3C130;
  result = v13 - 4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2530ADF00](result, v4);
    goto LABEL_29;
  }

  if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v4 + 8 * v13);

LABEL_29:

    *(v15 + 32) = v16;
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C1A790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_252E36324();
  v32 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = *(v0 + 24);
  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v11 = 0;
    v34 = v9 & 0xFFFFFFFFFFFFFF8;
    v35 = v9 & 0xC000000000000001;
    v12 = (v32 + 48);
    v33 = (v32 + 32);
    v13 = MEMORY[0x277D84F90];
    v30 = i;
    v31 = v8;
    while (v35)
    {
      v14 = MEMORY[0x2530ADF00](v11, v9);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v14 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType, v3);

      if ((*v12)(v3, 1, v4) == 1)
      {
        sub_252938BBC(v3);
      }

      else
      {
        v16 = v4;
        v17 = v9;
        v18 = *v33;
        v19 = v16;
        (*v33)(v8, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2529F7F74(0, v13[2] + 1, 1, v13);
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          v13 = sub_2529F7F74((v20 > 1), v21 + 1, 1, v13);
        }

        v13[2] = v21 + 1;
        v22 = v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v21;
        v8 = v31;
        (v18)(v22, v31, v19);
        v9 = v17;
        v4 = v19;
        i = v30;
      }

      ++v11;
      if (v15 == i)
      {
        goto LABEL_21;
      }
    }

    if (v11 >= *(v34 + 16))
    {
      goto LABEL_18;
    }

    v14 = *(v9 + 8 * v11 + 32);

    v15 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_21:
  v23 = sub_252DF8B58(v13);

  if (*(v23 + 2) == 1)
  {
    v24 = v32;
    v25 = v29;
    (*(v32 + 16))(v29, &v23[(*(v24 + 80) + 32) & ~*(v24 + 80)], v4);

    v26 = sub_252E36304();
    (*(v24 + 8))(v25, v4);
    return v26;
  }

  else
  {

    return 0;
  }
}

BOOL sub_252C1AB40()
{
  v0 = sub_252C1B27C(sub_252C1C7AC, sub_252C1C5E8, sub_25292AB4C, sub_252C1C7AC);
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_40:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v26 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v1);
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_37;
      }

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    v6 = sub_252E36164();
    v8 = v7;

    ++v4;
    if ((v8 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2529F7D44(0, *(v26 + 2) + 1, 1, v26);
      }

      v10 = *(v26 + 2);
      v9 = *(v26 + 3);
      if (v10 >= v9 >> 1)
      {
        v26 = sub_2529F7D44((v9 > 1), v10 + 1, 1, v26);
      }

      *(v26 + 2) = v10 + 1;
      *&v26[8 * v10 + 32] = v6;
      v4 = v5;
    }
  }

  v11 = sub_252C1B27C(sub_252C1C7C4, sub_252C1C614, sub_25292AB4C, sub_252C1C7C4);
  v12 = v11;
  v2 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v1 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v14, v12);
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v14 >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_38;
      }
    }

    v16 = sub_252E36164();
    v18 = v17;

    ++v14;
    if ((v18 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_2529F7D44(0, *(v1 + 16) + 1, 1, v1);
      }

      v20 = *(v1 + 16);
      v19 = *(v1 + 24);
      if (v20 >= v19 >> 1)
      {
        v1 = sub_2529F7D44((v19 > 1), v20 + 1, 1, v1);
      }

      *(v1 + 16) = v20 + 1;
      *(v1 + 8 * v20 + 32) = v16;
      v14 = v15;
    }
  }

  v21 = sub_252DF8A60(v26);

  v22 = *(v21 + 2);

  if (v22 == 1)
  {
    v23 = sub_252DF8A60(v1);

    v24 = *(v23 + 2);

    return v24 == 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_252C1AEEC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v30[-v13];
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, &v30[-v13]);
  sub_252956C1C(v14, v12);
  v15 = sub_252E36324();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v12, 1, v15) == 1)
  {
    sub_252938BBC(v12);
  }

  else
  {
    v31 = a3;
    v32 = a2;
    sub_252E36304();
    (*(v16 + 8))(v12, v15);
    v18 = sub_252E36FA4();
    v20 = v19;

    if (v18 == 0x737569736C6563 && v20 == 0xE700000000000000)
    {
      LOBYTE(a3) = v31;
LABEL_21:

      if (a3)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    v22 = sub_252E37DB4();

    LOBYTE(a3) = v31;
    if (v22)
    {
LABEL_18:
      if (a3)
      {
        goto LABEL_19;
      }

LABEL_22:
      sub_252E360C4();
      swift_allocObject();
      sub_252E360B4();
      sub_252E36194();

      sub_252E36184();

      v28 = sub_252E36174();

      goto LABEL_23;
    }
  }

  sub_252956C1C(v14, v9);
  if (v17(v9, 1, v15) == 1)
  {
    sub_252938BBC(v9);
    goto LABEL_5;
  }

  sub_252E36304();
  (*(v16 + 8))(v9, v15);
  v23 = sub_252E36FA4();
  v25 = v24;

  if (v23 == 99 && v25 == 0xE100000000000000)
  {
    goto LABEL_21;
  }

  v27 = sub_252E37DB4();

  if (v27)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((a3 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v28 = 0;
LABEL_23:
  sub_252938BBC(v14);
  return v28;
}

unint64_t sub_252C1B27C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v6 = *(v4 + 24);
  if (v6 >> 62)
  {
    v9 = a1;
    v10 = sub_252E378C4();
    a1 = v9;
    if (v10 == 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_3:
    v23 = &v25;
    v7 = MEMORY[0x28223BE20](a1);

    v8 = sub_252CB0BB0(v7, v22, v6);

    return v8;
  }

  MEMORY[0x28223BE20](a1);
  v23 = &v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
  sub_252E360E4();
  sub_252936E8C(&qword_27F5442F0, &qword_27F5442C8, &qword_252E533F8);
  v8 = sub_252E371C4();

  v24 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442E8, &qword_252E53408);
  sub_252936E8C(&qword_27F5442F8, &qword_27F5442E8, &qword_252E53408);
  v11 = sub_252E371C4();
  v12 = *(sub_252C75AFC(v11) + 16);

  if (v12 == 1)
  {

    MEMORY[0x28223BE20](v13);
    v23 = &v25;

    v8 = sub_252CB0BB0(a4, v22, v6);

    return v8;
  }

  v14 = COERCE_DOUBLE(sub_252987D34(v11));
  if ((v15 & 1) != 0 || (v16 = *(v11 + 16)) == 0)
  {
LABEL_12:

    return v8;
  }

  v17 = -v16;
  v18 = 4;
  while (*(v11 + 8 * v18) != v14)
  {
    ++v18;
    if (v17 + v18 == 4)
    {
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_252E3C130;
  result = v18 - 4;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x2530ADF00](result, v8);
    goto LABEL_17;
  }

  if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v8 + 8 * v18);

LABEL_17:

    *(v20 + 32) = v21;
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C1B5C4(void *a1)
{
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2530ADF00](v5, v3);
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return result;
        }

        v8 = *(result + *a1);
        swift_unknownObjectRelease();
        if ((v8 & 1) == 0)
        {
          return 0;
        }

LABEL_9:
        if (v5 == v4)
        {
          return 1;
        }
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v4 = sub_252E378C4();
      if (!v4)
      {
        return 1;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if (*(*(v3 + 32 + 8 * v5) + *a1) != 1)
    {
      return 0;
    }

    ++v5;
    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_252C1B6B0()
{
  v1 = sub_252C1A790();
  if (!v2)
  {
    return 0;
  }

  if (v1 != 0x65676E6172 || v2 != 0xE500000000000000)
  {
    v3 = sub_252E37DB4();

    if (v3)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  v4 = *(v0 + 24);
  v5 = (v4 >> 62);
  if (v4 >> 62)
  {
LABEL_38:
    v6 = sub_252E378C4();
    if (!v6)
    {
      return 1;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 1;
    }
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v9 = v4 + 32;
  while (!v8)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    if (*(*(v9 + 8 * v7) + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold) != 1)
    {
LABEL_18:
      if (v5)
      {
        v13 = sub_252E378C4();
        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          return 1;
        }
      }

      v14 = 0;
      v5 = &OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold;
      while (1)
      {
        if (v8)
        {
          v15 = MEMORY[0x2530ADF00](v14, v4);
          v11 = __OFADD__(v14++, 1);
          if (v11)
          {
            goto LABEL_35;
          }

          v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold);
          swift_unknownObjectRelease();
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          if (*(*(v9 + 8 * v14) + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold) != 1)
          {
            return 0;
          }

          ++v14;
        }

        if (v14 == v13)
        {
          return 1;
        }
      }
    }

    ++v7;
LABEL_14:
    if (v7 == v6)
    {
      return 1;
    }
  }

  result = MEMORY[0x2530ADF00](v7, v4);
  v11 = __OFADD__(v7++, 1);
  if (!v11)
  {
    v12 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold);
    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_252C1B894@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == 0xD000000000000014 && 0x8000000252E68110 == a2;
  if (v7 || (sub_252E37DB4() & 1) != 0)
  {
    v8 = *(v3 + 24);
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
    *a3 = v8;

    return result;
  }

  if ((a1 != 0x746E756F63 || a2 != 0xE500000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0xD000000000000012 && 0x8000000252E8AA70 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v12 = sub_252C1A19C();
      goto LABEL_19;
    }

    if (a1 == 0x7571696E55736168 && a2 == 0xEE0065676E615265 || (sub_252E37DB4() & 1) != 0)
    {
      v12 = sub_252C1AB40();
      goto LABEL_19;
    }

    if (a1 == 0xD000000000000015 && 0x8000000252E8AA90 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v13 = sub_252C1A454();
    }

    else
    {
      if (a1 == 0xD00000000000001FLL && 0x8000000252E8AAB0 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        v14 = sub_252C1C7AC;
        v15 = sub_252C1C5E8;
        v16 = sub_252C1C7AC;
      }

      else
      {
        if ((a1 != 0xD00000000000001FLL || 0x8000000252E8AAD0 != a2) && (sub_252E37DB4() & 1) == 0)
        {
          if (a1 == 0xD000000000000021 && 0x8000000252E8AAF0 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold);
          }

          else if (a1 == 0xD000000000000021 && 0x8000000252E8AB20 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold);
          }

          else if (a1 == 0xD000000000000017 && 0x8000000252E8AB50 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold);
          }

          else if (a1 == 0xD000000000000017 && 0x8000000252E8AB70 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold);
          }

          else
          {
            if ((a1 != 0xD000000000000015 || 0x8000000252E8AB90 != a2) && (sub_252E37DB4() & 1) == 0)
            {
              result = 0.0;
              *a3 = 0u;
              *(a3 + 16) = 0u;
              return result;
            }

            v12 = sub_252C1B6B0();
          }

LABEL_19:
          *(a3 + 24) = MEMORY[0x277D839B0];
          *a3 = v12 & 1;
          return result;
        }

        v14 = sub_252C1C7C4;
        v15 = sub_252C1C614;
        v16 = sub_252C1C7C4;
      }

      v13 = sub_252C1B27C(v14, v15, sub_25292AB4C, v16);
    }

    v17 = v13;
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442E8, &qword_252E53408);
    *a3 = v17;
    return result;
  }

  v10 = *(v3 + 24);
  if (v10 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v11;
  *(a3 + 24) = MEMORY[0x277D839F8];
  *a3 = v11;
  return result;
}

uint64_t sub_252C1BD5C()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C1BDD0(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C1BE24@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252C1BEB4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252C1BF0C(uint64_t a1)
{
  v2 = sub_252C1C4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C1BF48(uint64_t a1)
{
  v2 = sub_252C1C4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C1BFA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442D8, &qword_252E53400);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C1C4AC();
  sub_252E37F84();
  v9[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
  sub_252C1C500(&qword_27F5442E0, &qword_27F540E18, protocol conformance descriptor for HomeAutomationAbstractMeasurement, MEMORY[0x277D83948]);
  sub_252E37D54();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_252C1C164(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442B8, &qword_252E533F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C1C4AC();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAbstractMeasurements();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
    sub_252C1C500(&qword_27F5442D0, &qword_27F540E00, protocol conformance descriptor for HomeAutomationAbstractMeasurement, MEMORY[0x277D83978]);
    sub_252E37C64();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252C1C3A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAbstractMeasurements();
  v5 = swift_allocObject();
  result = sub_252C1C164(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252C1C4AC()
{
  result = qword_27F5442C0;
  if (!qword_27F5442C0)
  {
    result = swift_getWitnessTable(byte_252E5350C, &type metadata for HomeAutomationAbstractMeasurements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5442C0);
  }

  return result;
}

uint64_t sub_252C1C500(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5442C8, &qword_252E533F8);
    v10 = sub_252C1C5A0(a2, 255, type metadata accessor for HomeAutomationAbstractMeasurement, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252C1C5A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252C1C640@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a2();
  result = sub_252C1AEEC(v4, v5, v6 & 1);
  *a3 = result;
  return result;
}

unint64_t sub_252C1C6A8()
{
  result = qword_27F544300;
  if (!qword_27F544300)
  {
    result = swift_getWitnessTable(byte_252E534E4, &type metadata for HomeAutomationAbstractMeasurements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544300);
  }

  return result;
}

unint64_t sub_252C1C700()
{
  result = qword_27F544308;
  if (!qword_27F544308)
  {
    result = swift_getWitnessTable(byte_252E5341C, &type metadata for HomeAutomationAbstractMeasurements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544308);
  }

  return result;
}

unint64_t sub_252C1C758()
{
  result = qword_27F544310;
  if (!qword_27F544310)
  {
    result = swift_getWitnessTable(byte_252E53444, &type metadata for HomeAutomationAbstractMeasurements.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544310);
  }

  return result;
}

uint64_t sub_252C1C7DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v6 = a1;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v8 + 16), v53);

  __swift_project_boxed_opaque_existential_1(v53, v54);
  v9 = sub_252E338D4();
  v10 = __swift_destroy_boxed_opaque_existential_1(v53);
  if (v9)
  {
    v11 = [v6 entityResponses];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for HomeEntityResponse();
      v13 = sub_252E37264();

      if (v13 >> 62)
      {
LABEL_38:
        v14 = sub_252E378C4();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          v15 = 0;
          v49 = v13 & 0xFFFFFFFFFFFFFF8;
          v50 = v13 & 0xC000000000000001;
          v47 = a2;
          v48 = v13 + 32;
          v45 = v6;
          v46 = v5;
          v43 = v14;
          v44 = v13;
          do
          {
            if (v50)
            {
              v23 = MEMORY[0x2530ADF00](v15, v13);
            }

            else
            {
              if (v15 >= *(v49 + 16))
              {
                goto LABEL_37;
              }

              v23 = *(v48 + 8 * v15);
            }

            v24 = v23;
            v25 = __OFADD__(v15, 1);
            v26 = v15 + 1;
            if (v25)
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v51 = v26;
            v27 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v52 = v24;
            v28 = sub_252E36F04();
            v29 = [v27 initWithIdentifier:0 displayString:v28];

            v21 = v52;
            v22 = v29;
            [v22 setBoolValue_];
            [v22 setType_];

            v30 = [v52 taskResponses];
            if (v30)
            {
              v31 = v30;
              type metadata accessor for HomeUserTaskResponse();
              v32 = sub_252E37264();

              if (v32 >> 62)
              {
                v33 = sub_252E378C4();
                v6 = v4;
                if (v33)
                {
LABEL_17:
                  v13 = 0;
                  v55 = v32 & 0xC000000000000001;
                  v5 = (v32 & 0xFFFFFFFFFFFFFF8);
                  v34 = v33;
                  while (1)
                  {
                    if (v55)
                    {
                      v35 = MEMORY[0x2530ADF00](v13, v32);
                    }

                    else
                    {
                      if (v13 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_35;
                      }

                      v35 = *(v32 + 8 * v13 + 32);
                    }

                    v36 = v35;
                    a2 = v13 + 1;
                    if (__OFADD__(v13, 1))
                    {
                      __break(1u);
LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

                    v53[0] = v35;
                    v4 = v22;
                    v37 = sub_252DA5D40(v53, 0x1B, v22, 0, 1);

                    if (v37)
                    {
                      break;
                    }

                    ++v13;
                    v22 = v4;
                    if (a2 == v34)
                    {
                      goto LABEL_8;
                    }
                  }

                  if (sub_252C2DF04(41))
                  {
                    v40 = v46[12];
                    v41 = v46[13];
                    __swift_project_boxed_opaque_existential_1(v46 + 9, v40);
                    v38 = v40;
                    v39 = v41;
                    return sub_252944924(v38, v39);
                  }

                  v5 = v46;
LABEL_41:
                  v18 = v5[12];
                  v19 = v5[13];
                  __swift_project_boxed_opaque_existential_1(v5 + 9, v18);
                  v20 = *(v19 + 72);
                  return v20(v18, v19);
                }
              }

              else
              {
                v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v6 = v4;
                if (v33)
                {
                  goto LABEL_17;
                }
              }

LABEL_8:
              v4 = v6;

              v21 = v22;
              v5 = v46;
              a2 = v47;
              v13 = v44;
              v6 = v45;
              v14 = v43;
              v22 = v52;
            }

            v15 = v51;
          }

          while (v51 != v14);
        }
      }
    }

    sub_252C2DF04(41);
    goto LABEL_41;
  }

  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10);
  sub_252929E74((v16 + 16), v53);

  __swift_project_boxed_opaque_existential_1(v53, v54);
  v17 = sub_252E338E4();
  __swift_destroy_boxed_opaque_existential_1(v53);
  v18 = v5[12];
  v19 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v18);
  if (v17)
  {
    v20 = *(v19 + 72);
    return v20(v18, v19);
  }

  v38 = v18;
  v39 = v19;
  return sub_252944924(v38, v39);
}

uint64_t sub_252C1CC4C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a2;
  *(v7 + 40) = a5;
  *(v7 + 161) = a4;
  *(v7 + 160) = a3;
  *(v7 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = type metadata accessor for HomeAutomationSuccessfulActionParameters(0);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C1CD54, 0, 0);
}

uint64_t sub_252C1CD54()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_252E36AD4();
  *(v0 + 88) = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E8AE60, 0xD00000000000008FLL, 0x8000000252E6B430);
  if (v1)
  {
    v3 = *(v0 + 24);

    if ((sub_252B2FB08() & 1) != 0 || *(v0 + 160) & 1 | (*(v0 + 32) != 1) && (*(v0 + 48) == 0) | *(v0 + 161) & 1)
    {
      v4 = swift_task_alloc();
      *(v0 + 96) = v4;
      *v4 = v0;
      v4[1] = sub_252C1CFBC;

      return sub_252C1D9CC(v3);
    }
  }

  v6 = *__swift_project_boxed_opaque_existential_1((*(v0 + 56) + 24), *(*(v0 + 56) + 48));

  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_252C1D81C;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);

  return sub_252C14BEC(0, v6, v8, v9);
}

uint64_t sub_252C1CFBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_252C1D488;
  }

  else
  {
    v4 = sub_252C1D0FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C1D0FC()
{
  v1 = *(v0 + 104);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  v4 = *(v0 + 80);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  sub_252CC3D90(0xD000000000000040, 0x8000000252E8AE80, 0xD00000000000008FLL, 0x8000000252E6B430);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  v7 = *(v5 + 20);
  v8 = sub_252E36324();
  v9 = *(*(v8 - 8) + 56);
  v9(&v4[v7], 1, 1, v8);
  *v4 = 0;
  v10 = sub_25294833C(1u, 0, 0);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v10 dictionary];
  if (!v12)
  {

LABEL_11:
    v9(*(v0 + 64), 1, 1, v8);
    goto LABEL_12;
  }

  v13 = v12;
  v27 = v7;
  v14 = objc_opt_self();
  *(v0 + 16) = 0;
  v15 = [v14 dataWithPropertyList:v13 format:200 options:0 error:v0 + 16];
  v16 = *(v0 + 16);
  if (!v15)
  {
    v20 = v16;
    v21 = sub_252E32C54();

    swift_willThrow();
    v7 = v27;
    goto LABEL_11;
  }

  v26 = *(v0 + 64);
  v17 = sub_252E32D34();
  v19 = v18;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v17, v19);
  v9(v26, 0, 1, v8);
  v7 = v27;
LABEL_12:
  sub_252956C98(*(v0 + 64), &v4[v7]);
  v22 = sub_252C0AA58();
  *(v0 + 120) = v22;
  v23 = MEMORY[0x277D55BE8];
  v24 = *MEMORY[0x277D55BE8];
  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_252C1D534;

  return ((v24 + v23))(0xD00000000000001FLL, 0x8000000252E8AD70, v22);
}

uint64_t sub_252C1D488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1D534(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_252C1D764;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_252C1D6A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C1D6A4()
{
  sub_252C242F8(v0[10]);

  v1 = v0[18];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252C1D764()
{
  sub_252C242F8(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1D81C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252C1D9CC(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_252C1D9EC, 0, 0);
}

uint64_t sub_252C1D9EC()
{
  v1 = (v0[5] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v3 = *v1;
  v2 = v1[1];
  v0[7] = v2;
  v4 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v5 = v0[6];
    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v3, v2);
    sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E8AF40, 0xD00000000000008FLL, 0x8000000252E6B430);

    v7 = *__swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));

    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_252C1DF98;
    v9 = v0[5];

    return sub_252C13460(0, v7, v9);
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D18);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E8AED0);
  MEMORY[0x2530AD570](v3, v2);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E6B430);

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v12 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v16 = sub_252C14734;

      v13 = swift_task_alloc();
      v0[12] = v13;
      *v13 = v0;
      v14 = sub_252C1E504;
      goto LABEL_21;
    }

    if (v4 == 5)
    {
      v12 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v16 = sub_252C13DC4;

      v13 = swift_task_alloc();
      v0[10] = v13;
      *v13 = v0;
      v14 = sub_252C1E24C;
      goto LABEL_21;
    }
  }

  else
  {
    if (v4 == 2)
    {
      v12 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v16 = sub_252C1390C;

      v13 = swift_task_alloc();
      v0[9] = v13;
      *v13 = v0;
      v14 = sub_252C1E0F0;
      goto LABEL_21;
    }

    if (v4 == 3)
    {
      v12 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v16 = sub_252C1427C;

      v13 = swift_task_alloc();
      v0[11] = v13;
      *v13 = v0;
      v14 = sub_252C1E3A8;
LABEL_21:
      v13[1] = v14;

      return v16(0, v12, v3, v2);
    }
  }

  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[4] = v4;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000025, 0x8000000252E8AF10, 661);

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_252C1DF98(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t sub_252C1E0F0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t sub_252C1E24C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t sub_252C1E3A8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t sub_252C1E504(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t sub_252C1E660(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a5;
  *(v7 + 153) = a4;
  *(v7 + 152) = a3;
  *(v7 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C1E70C, 0, 0);
}

uint64_t sub_252C1E70C()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_252E36AD4();
  *(v0 + 64) = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8AD10, 0xD00000000000008FLL, 0x8000000252E6B430);
  if (v1)
  {
    v3 = *(v0 + 16);

    if (sub_252B2FB08())
    {
      goto LABEL_5;
    }

    if ((*(v0 + 152) & 1) != 0 || *(v0 + 24) != 1)
    {
      if (!*(v0 + 40) || (*(v0 + 153) & 1) != 0)
      {
LABEL_5:
        v4 = swift_task_alloc();
        *(v0 + 72) = v4;
        *v4 = v0;
        v4[1] = sub_252C1E9C0;

        return sub_252C1F0D0(v3);
      }

      v13 = *(v0 + 48);

      v6 = *(v13 + 64);
      goto LABEL_12;
    }
  }

  v6 = *(*(v0 + 48) + 64);
  if (!*(v0 + 40))
  {
    v9 = *(v0 + 56);
    v10 = sub_252E36324();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    goto LABEL_14;
  }

LABEL_12:
  v7 = *(v0 + 56);

  sub_252E37024();
  v8 = sub_252E36324();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
LABEL_14:
  *(v0 + 128) = v6;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_252C1EEC8;
  v12 = *(v0 + 56);

  return sub_252D28F48(v12);
}

uint64_t sub_252C1E9C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_252C1EC40;
  }

  else
  {
    v4 = sub_252C1EAD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C1EAD4()
{
  v1 = v0[10];
  if (v1)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v4 = v0[6];
    sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E8AD30, 0xD00000000000008FLL, 0x8000000252E6B430);
    v0[12] = *(v4 + 64);
    v7 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_252C1ECAC;
    v6 = MEMORY[0x277D84F90];

    return v7(0xD00000000000001FLL, 0x8000000252E8AD70, v6);
  }
}

uint64_t sub_252C1EC40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1ECAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_252C1EE50;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_252C1EDDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C1EDDC()
{

  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_252C1EE50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1EEC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 144) = v1;

  sub_25293847C(*(v4 + 56), &qword_27F540298, &unk_252E3C270);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1F06C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_252C1F06C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1F0D0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_252C1F0F0, 0, 0);
}

uint64_t sub_252C1F0F0()
{
  v1 = (v0[5] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v5 = v0[6];
    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v2, v3);
    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8AE30, 0xD00000000000008FLL, 0x8000000252E6B430);

    v0[7] = *(v5 + 64);
    v7 = "secureFailureResponses";
    v18 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v9 = sub_252C1F688;
    goto LABEL_5;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v2, v3);
  sub_252CC3D90(0xD000000000000030, 0x8000000252E8AD90, 0xD00000000000008FLL, 0x8000000252E6B430);

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v0[19] = *(v0[6] + 64);
      v18 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v17 = swift_task_alloc();
      v0[20] = v17;
      *v17 = v0;
      v17[1] = sub_252C1FC4C;
      v10 = MEMORY[0x277D84F90];
      v12 = 0xD000000000000027;
      v11 = 0x8000000252E8A450;
      goto LABEL_6;
    }

    if (v4 == 5)
    {
      v0[13] = *(v0[6] + 64);
      v18 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = sub_252C1F99C;
      v10 = MEMORY[0x277D84F90];
      v11 = 0x8000000252E8A3F0;
      v12 = 0xD000000000000024;
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 == 2)
    {
      v0[10] = *(v0[6] + 64);
      v7 = "ceneEnabledSecureScene";
      v18 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v9 = sub_252C1F844;
      goto LABEL_5;
    }

    if (v4 == 3)
    {
      v0[16] = *(v0[6] + 64);
      v7 = "ceneEnabledGoodNight";
      v18 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v8 = swift_task_alloc();
      v0[17] = v8;
      *v8 = v0;
      v9 = sub_252C1FAF4;
LABEL_5:
      v8[1] = v9;
      v10 = MEMORY[0x277D84F90];
      v11 = v7 | 0x8000000000000000;
      v12 = 0xD000000000000026;
LABEL_6:

      return v18(v12, v11, v10);
    }
  }

  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[4] = v4;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000024, 0x8000000252E8AE00, 686);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_252C1F688(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1F7E0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C1F7E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1F844(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FDA4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C1F99C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FE08, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C1FAF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FE6C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C1FC4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FED0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C1FDA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1FE08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1FE6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1FED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C1FF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[163] = v3;
  v4[162] = a3;
  v4[161] = a2;
  v4[160] = a1;
  sub_252E33944();
  v4[164] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[165] = v5;
  v4[166] = *(v5 - 8);
  v4[167] = swift_task_alloc();
  v4[168] = swift_task_alloc();
  v4[169] = swift_task_alloc();
  v4[170] = swift_task_alloc();
  v6 = sub_252E32A64();
  v4[171] = v6;
  v4[172] = *(v6 - 8);
  v4[173] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C200AC, 0, 0);
}

uint64_t sub_252C200AC()
{
  v126 = v0;
  v1 = *(v0 + 1296);
  if (v1)
  {
    v2 = [v1 entityResponses];
    v122 = v0;
    if (!v2)
    {
      v115 = 0;
      v116 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_35;
    }

    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
LABEL_33:
      v4 = sub_252E378C4();
      if (v4)
      {
LABEL_5:
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x2530ADF00](v5, v3);
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v2 = v6;
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v8 = [v6 entity];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 type];

            if (v10 == 5)
            {
              break;
            }
          }

          ++v5;
          if (v7 == v4)
          {
            goto LABEL_34;
          }
        }

        v17 = [v2 entity];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 entityIdentifier];

          v0 = v122;
          if (v19)
          {
            v15 = sub_252E36F34();
            v16 = v20;
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }
        }

        else
        {
          v15 = 0;
          v16 = 0;
          v0 = v122;
        }

        v21 = [v2 entity];
        if (v21)
        {
          v22 = v21;
          v115 = [v21 sceneType];
        }

        else
        {
          v115 = 0;
        }

        v23 = [v2 entity];
        if (v23 && (v24 = v23, v25 = [v23 homeEntityName], v24, v25))
        {
          v116 = sub_252E36F34();
          v14 = v26;
        }

        else
        {
          v116 = 0;
          v14 = 0;
        }

LABEL_35:
        *(v0 + 1400) = v2;
        v120 = v14;
        *(v0 + 1392) = v14;
        v27 = type metadata accessor for HomeStore(0);
        v28 = static HomeStore.shared.getter(v27);
        v29 = sub_2529DA828();

        if (v29 >> 62)
        {
          goto LABEL_122;
        }

        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          while (1)
          {
            v31 = 0;
            v0 = v29 & 0xFFFFFFFFFFFFFF8;
            while ((v29 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x2530ADF00](v31, v29);
              v33 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
LABEL_60:
                __break(1u);
LABEL_61:
                v0 = v122;
                goto LABEL_62;
              }

LABEL_43:
              v34 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
              if (v34)
              {
                if (!v16)
                {
                  sub_252E32E24();

                  goto LABEL_39;
                }

                v35 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v15 && v34 == v16;
                if (v35 || (sub_252E37DB4() & 1) != 0)
                {
                  goto LABEL_64;
                }
              }

              else if (!v16)
              {
                goto LABEL_65;
              }

              if (sub_252E32E24() == v15 && v16 == v36)
              {

LABEL_64:

LABEL_65:

                v0 = v122;
                goto LABEL_66;
              }

              v38 = v15;
              v15 = sub_252E37DB4();

              if (v15)
              {
                goto LABEL_64;
              }

              v15 = v38;
LABEL_39:
              ++v31;
              if (v33 == v30)
              {
                goto LABEL_61;
              }
            }

            if (v31 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

LABEL_121:
            __break(1u);
LABEL_122:
            v30 = sub_252E378C4();
            if (!v30)
            {
              goto LABEL_62;
            }
          }

          v32 = *(v29 + 8 * v31 + 32);

          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_60;
          }

          goto LABEL_43;
        }

LABEL_62:

        v32 = 0;
LABEL_66:
        *(v0 + 1408) = v32;
        if (qword_27F53F240 != -1)
        {
          swift_once();
        }

        v39 = qword_27F575728 + 64;
        v40 = -1 << *(qword_27F575728 + 32);
        if (-v40 < 64)
        {
          v41 = ~(-1 << -v40);
        }

        else
        {
          v41 = -1;
        }

        v29 = v41 & *(qword_27F575728 + 64);
        v16 = (63 - v40) >> 6;
        v42 = (*(v0 + 1376) + 8);

        v0 = 0;
        v117 = v32;
        v110 = v39;
        v111 = v43;
        v109 = v16;
LABEL_73:
        while (v29)
        {
LABEL_78:
          v45 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          v46 = (v0 << 9) | (8 * v45);
          if (*(*(v43 + 48) + v46) == v115)
          {
            v47 = *(*(v43 + 56) + v46);
            v114 = v47 + 56;
            v48 = -1 << *(v47 + 32);
            if (-v48 < 64)
            {
              v49 = ~(-1 << -v48);
            }

            else
            {
              v49 = -1;
            }

            v50 = v49 & *(v47 + 56);
            v112 = v29;
            v113 = (63 - v48) >> 6;
            v121 = v47;
            swift_bridgeObjectRetain_n();
            v51 = 0;
            while (v50)
            {
LABEL_89:
              v53 = v122[173];
              v54 = v122[171];
              v55 = __clz(__rbit64(v50));
              v50 &= v50 - 1;
              v56 = (*(v121 + 48) + ((v51 << 10) | (16 * v55)));
              v57 = v56[1];
              v122[148] = *v56;
              v122[149] = v57;
              v123 = v54;

              sub_252E32A44();
              sub_252947DBC();
              v58 = sub_252E37784();
              v29 = v42;
              v59 = *v42;
              (*v42)(v53, v54);
              v122[156] = v58;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
              sub_2529508A0();
              v60 = sub_252E36EA4();
              v62 = v61;

              v122[150] = v60;
              v122[151] = v62;
              sub_252E32A34();
              v63 = sub_252E37784();
              v64 = v123;
              v124 = v59;
              v59(v53, v64);

              v122[157] = v63;
              sub_252E36EA4();

              v15 = sub_252E36FA4();
              v16 = v65;

              if (v120)
              {
                v66 = v122[173];
                v67 = v122[171];
                v118 = v67;
                v122[152] = v116;
                v122[153] = v120;
                sub_252E32A44();
                v119 = v15;
                v68 = sub_252E37784();
                v15 = v42;
                v124(v66, v67);
                v122[158] = v68;
                v69 = sub_252E36EA4();
                v71 = v70;

                v122[154] = v69;
                v122[155] = v71;
                sub_252E32A34();
                v72 = sub_252E37784();
                v124(v66, v118);

                v122[159] = v72;
                sub_252E36EA4();
                v29 = v16;

                v73 = sub_252E36FA4();
                v75 = v74;

                if (v119 == v73 && v29 == v75)
                {

                  v32 = v117;
LABEL_96:

                  v77 = 1;
                  goto LABEL_97;
                }

                v16 = sub_252E37DB4();

                v32 = v117;
                if (v16)
                {
                  goto LABEL_96;
                }
              }

              else
              {

                v32 = v117;
              }
            }

            while (1)
            {
              v52 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                break;
              }

              if (v52 >= v113)
              {

                v39 = v110;
                v43 = v111;
                v16 = v109;
                v29 = v112;
                goto LABEL_73;
              }

              v50 = *(v114 + 8 * v52);
              ++v51;
              if (v50)
              {
                v51 = v52;
                goto LABEL_89;
              }
            }

            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }
        }

        while (1)
        {
          v44 = v0 + 1;
          if (__OFADD__(v0, 1))
          {
            goto LABEL_120;
          }

          if (v44 >= v16)
          {
            break;
          }

          v29 = *(v39 + 8 * v44);
          ++v0;
          if (v29)
          {
            v0 = v44;
            goto LABEL_78;
          }
        }

        v77 = 0;
LABEL_97:
        v78 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v76);
        sub_252929E74((v78 + 16), (v122 + 128));

        __swift_project_boxed_opaque_existential_1(v122 + 128, v122[131]);
        v79 = sub_252E338F4();
        v80 = __swift_destroy_boxed_opaque_existential_1(v122 + 128);
        if ((v79 & 1) == 0)
        {
          v81 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v80);
          sub_252929E74((v81 + 288), (v122 + 133));

          v82 = v122[136];
          v83 = v122[137];
          __swift_project_boxed_opaque_existential_1(v122 + 133, v82);
          v84 = (*(v83 + 120))(v82, v83);
          __swift_destroy_boxed_opaque_existential_1(v122 + 133);
          if (v84)
          {
            if (v32)
            {
              v85 = v122[163];
              v86 = v122[161];
              memcpy(v122 + 2, v85 + 14, 0x1F8uLL);
              memcpy(__dst, v85 + 14, 0x1F8uLL);

              sub_2529D291C((v122 + 2), (v122 + 65));
              v87 = v86;
              v88 = v32;
              v89 = sub_252953488(v86, __dst, 0);
              v122[177] = v89;

              sub_252E33924();
              sub_252E33F54();
              v90 = v85[12];
              v91 = v85[13];
              __swift_project_boxed_opaque_existential_1(v85 + 9, v90);
              v92 = swift_task_alloc();
              v122[178] = v92;
              *(v92 + 16) = v85;
              *(v92 + 24) = v88;
              *(v92 + 32) = v115;
              *(v92 + 40) = v77;
              *(v92 + 48) = v116;
              *(v92 + 56) = v120;
              v93 = swift_task_alloc();
              v122[179] = v93;
              v93[2] = v87;
              v93[3] = v89;
              v93[4] = v88;
              v94 = swift_task_alloc();
              v122[180] = v94;
              *v94 = v122;
              v94[1] = sub_252C20FA4;
              v95 = v122[170];
              v96 = v122[160];
              v130 = v90;
              v131 = v91;
              v129 = 512;
              v128 = 0;

              return sub_252A199A8(v96, &unk_252E53628, v92, &unk_252E53638, v93, v95, 0, 0);
            }

            v106 = v122[163];
            v99 = v106[12];
            v107 = v106[13];
            __swift_project_boxed_opaque_existential_1(v106 + 9, v99);
            v101 = swift_task_alloc();
            v122[182] = v101;
            *(v101 + 16) = v106;
            *(v101 + 24) = 0;
            *(v101 + 32) = v115;
            *(v101 + 40) = v77;
            *(v101 + 48) = v116;
            *(v101 + 56) = v120;
            sub_252AD7CC4();
            v108 = swift_task_alloc();
            v122[183] = v108;
            *v108 = v122;
            v108[1] = sub_252C21118;
            v103 = v122[169];
            v104 = v122[160];
            v130 = v107;
            v105 = &unk_252E53610;
            goto LABEL_114;
          }
        }

        if (v32)
        {

          if (sub_252B2FB08())
          {
            goto LABEL_105;
          }

          if (v115 != 1)
          {
            if (!v120)
            {
              goto LABEL_106;
            }

            if (v77)
            {
LABEL_105:

LABEL_106:
              v97 = swift_task_alloc();
              v122[185] = v97;
              *v97 = v122;
              v97[1] = sub_252C21618;

              return sub_252C81418((v122 + 143), v32);
            }
          }
        }

        v98 = v122[163];
        v99 = v98[12];
        v100 = v98[13];
        __swift_project_boxed_opaque_existential_1(v98 + 9, v99);
        v101 = swift_task_alloc();
        v122[189] = v101;
        *(v101 + 16) = v98;
        *(v101 + 24) = v116;
        *(v101 + 32) = v120;
        sub_252AD7CC4();
        v102 = swift_task_alloc();
        v122[190] = v102;
        *v102 = v122;
        v102[1] = sub_252C21C54;
        v103 = v122[167];
        v104 = v122[160];
        v130 = v100;
        v105 = &unk_252E535E8;
LABEL_114:

        return sub_252BDB88C(v104, v105, v101, v103, 0, 0, 0, v99);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }

LABEL_34:

    v115 = 0;
    v116 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v2 = 0;
    v0 = v122;
    goto LABEL_35;
  }

  sub_2529318DC();
  swift_allocError();
  *v11 = 6;
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252C20FA4()
{
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v2 = sub_252C21390;
  }

  else
  {
    v2 = sub_252C21290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C21118()
{
  v2 = *v1;
  *(*v1 + 1472) = v0;

  (*(v2[166] + 8))(v2[169], v2[165]);

  if (v0)
  {
    v3 = sub_252C21550;
  }

  else
  {

    v3 = sub_252C21490;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C21290()
{
  v1 = v0[170];
  v2 = v0[166];
  v3 = v0[165];

  (*(v2 + 8))(v1, v3);
  v4 = v0[175];
  v5 = v0[162];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252C21390()
{
  v1 = v0[170];
  v2 = v0[166];
  v3 = v0[165];

  (*(v2 + 8))(v1, v3);
  v4 = v0[175];
  v5 = v0[162];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252C21490()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C21550()
{

  v1 = *(v0 + 1296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C21618()
{
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v2 = sub_252C21E98;
  }

  else
  {
    v2 = sub_252C2172C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C2172C()
{
  if (*(v0 + 1168))
  {
    v1 = *(v0 + 1296);
    v2 = *(v0 + 1280);

    sub_252A52D18((v0 + 1144), v0 + 1104);
    sub_252A52D18((v0 + 1104), v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_25293847C(v0 + 1144, &qword_27F542188, &qword_252E43C80);
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 1304);
    v6 = *(v0 + 1296);
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D18);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8ACD0);
    v8 = [v6 description];
    v9 = sub_252E36F34();
    v11 = v10;

    MEMORY[0x2530AD570](v9, v11);

    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E8AC30);

    v12 = *(v5 + 96);
    __swift_project_boxed_opaque_existential_1((v5 + 72), v12);
    sub_252AD7CC4();
    v13 = swift_task_alloc();
    *(v0 + 1496) = v13;
    *v13 = v0;
    v13[1] = sub_252C21A1C;
    v14 = *(v0 + 1344);
    v15 = *(v0 + 1304);
    v16 = *(v0 + 1280);

    return sub_252BDB88C(v16, &unk_252E53600, v15, v14, 0, 0, 0, v12);
  }
}

uint64_t sub_252C21A1C()
{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  (*(v2[166] + 8))(v2[168], v2[165]);
  if (v0)
  {
    v3 = sub_252C21F68;
  }

  else
  {
    v3 = sub_252C21B84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C21B84()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C21C54()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  (*(v2[166] + 8))(v2[167], v2[165]);

  if (v0)
  {
    v3 = sub_252C22038;
  }

  else
  {

    v3 = sub_252C21DCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C21DCC()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C21E98()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C21F68()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C22038()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C22110(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for HomeAutomationSuccessfulActionParameters(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C22208, 0, 0);
}

uint64_t sub_252C22208()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v3 = *(v1 + 20);
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(&v2[v3], 1, 1, v4);
  *v2 = 0;
  v6 = sub_25294833C(1u, 0, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 dictionary];
    if (v8)
    {
      v9 = v8;
      v10 = objc_opt_self();
      *(v0 + 16) = 0;
      v11 = [v10 dataWithPropertyList:v9 format:200 options:0 error:v0 + 16];
      v12 = *(v0 + 16);
      if (v11)
      {
        v24 = *(v0 + 32);
        v13 = sub_252E32D34();
        v25 = v3;
        v15 = v14;

        sub_252E32D24();
        sub_252E362F4();

        v16 = v15;
        v3 = v25;
        sub_25296464C(v13, v16);
        v5(v24, 0, 1, v4);
        goto LABEL_8;
      }

      v17 = v12;
      v18 = sub_252E32C54();

      swift_willThrow();
    }

    else
    {
    }
  }

  v5(*(v0 + 32), 1, 1, v4);
LABEL_8:
  sub_252956C98(*(v0 + 32), &v2[v3]);
  v19 = sub_252C0AA58();
  *(v0 + 56) = v19;
  v20 = MEMORY[0x277D55BE8];
  v21 = *MEMORY[0x277D55BE8];
  v22 = swift_task_alloc();
  *(v0 + 64) = v22;
  *v22 = v0;
  v22[1] = sub_252C224D8;

  return ((v21 + v20))(0xD00000000000001FLL, 0x8000000252E8AD70, v19);
}

uint64_t sub_252C224D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C226FC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C22648;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C22648()
{
  sub_252C242F8(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C226FC()
{
  sub_252C242F8(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C227AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252C227D0, 0, 0);
}

uint64_t sub_252C227D0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252C228A8;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C16B84(0, v1, v3, v4);
}

uint64_t sub_252C228A8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252C229CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a3)
  {
    sub_252E37024();
    v15 = sub_252E36324();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v15 = sub_252E36324();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  v17 = v37;
  sub_252956C98(v14, v37 + *(v16 + 24));
  sub_252E37024();

  sub_252E36324();
  v18 = *(*(v15 - 8) + 56);
  v19 = 1;
  v18(v12, 0, 1, v15);
  v35 = v16;
  sub_252956C98(v12, v17 + *(v16 + 28));
  sub_252E37024();
  v18(v9, 0, 1, v15);
  sub_252956C98(v9, v17);
  v20 = sub_25294833C(1u, 0, 0);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 dictionary];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v38[0] = 0;
      v25 = [v24 dataWithPropertyList:v23 format:200 options:0 error:v38];
      v26 = v38[0];
      if (v25)
      {
        v27 = sub_252E32D34();
        v29 = v28;

        sub_252E32D24();
        v30 = v36;
        sub_252E362F4();

        sub_25296464C(v27, v29);
        v19 = 0;
      }

      else
      {
        v31 = v26;
        v32 = sub_252E32C54();

        swift_willThrow();
        v19 = 1;
        v30 = v36;
      }
    }

    else
    {

      v30 = v36;
    }
  }

  else
  {
    v30 = v36;
  }

  v18(v30, v19, 1, v15);
  v33 = v37;
  sub_252956C98(v30, v37 + *(v35 + 32));
  sub_252E37024();
  v18(v9, 0, 1, v15);
  return sub_252956C98(v9, v33);
}

uint64_t sub_252C22E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_252C22E40, 0, 0);
}

uint64_t sub_252C22E40()
{
  v1 = v0[7];
  if (!v1)
  {
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_252C23348;
    v10 = v0[5];
    v11 = v0[6];
    v12 = 0;
LABEL_20:

    return sub_252C1FF34(v10, v11, v12);
  }

  v2 = v1;
  v3 = [v2 entityResponses];
  if (!v3)
  {
    goto LABEL_15;
  }

  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:

LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2530ADF00](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 entity];

  if (!v8)
  {
    goto LABEL_14;
  }

  v3 = [v8 sceneType];

  if (v3 == 2)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((sub_252C28D24(v0[6]) & 1) == 0)
  {
LABEL_19:
    v16 = v2;
    v17 = swift_task_alloc();
    v0[9] = v17;
    *v17 = v0;
    v17[1] = sub_252C231C8;
    v12 = v0[7];
    v10 = v0[5];
    v11 = v0[6];
    goto LABEL_20;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v13 = v0[5];
  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E8ABF0);
  v0[4] = v3;
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E8AC10);
  sub_252CC3D90(v0[2], v0[3], 0xD000000000000093, 0x8000000252E8AC30);

  sub_252C1C7DC(v2, v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_252C231C8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_252C2343C;
  }

  else
  {

    v3 = sub_252C232E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C232E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C23348()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252C2343C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C234D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2529C8CCC;

  return sub_252C1E660(a2, a3, 0, a4, a5, a6);
}

uint64_t sub_252C235BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for CompletionSnippetModel(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_252C236AC;

  return sub_252A26640(v8, a2, a3, 1, 1, a4);
}

uint64_t sub_252C236AC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_25295A398;
  }

  else
  {
    v2 = sub_252C237C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C237C0()
{
  v1 = v0[2];
  sub_2529645E8(v0[3], v1);
  v2 = type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C23890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2529C9EDC;

  return sub_252C1CC4C(a2, a3, 0, a4, a5, a6);
}

uint64_t sub_252C239A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252C1FF34(a1, a2, a3);
}

uint64_t sub_252C23A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C22E1C(a1, a2, a3);
}

uint64_t sub_252C23B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252C22E1C(a1, a2, a3);
}

void *sub_252C23BC0@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SceneEnabledResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C23C24(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_252C2F554();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v29 = v2 & 0xC000000000000001;
    v26 = v2;
    v27 = (v2 + 32);
    while (1)
    {
      if (v29)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          goto LABEL_37;
        }

        v5 = v27[v4];
      }

      v6 = v5;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = [v5 taskResponses];
      if (!v8)
      {

        goto LABEL_40;
      }

      type metadata accessor for HomeUserTaskResponse();
      v9 = sub_252E37264();

      v10 = [v6 entity];
      if (!v10)
      {
        goto LABEL_31;
      }

      if (v9 >> 62)
      {
        v11 = sub_252E378C4();
        if (!v11)
        {
LABEL_31:

          v8 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_31;
        }
      }

      v30 = v6;
      v12 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2530ADF00](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v13 = *(v9 + 32 + 8 * v12);
        }

        v14 = v13;
        v7 = __OFADD__(v12++, 1);
        if (v7)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (qword_27F53F728 != -1)
        {
          swift_once();
        }

        v15 = qword_27F575C38;
        v16 = [v14 taskOutcome];
        if (*(v15 + 16))
        {
          v17 = v16;
          sub_252E37EC4();
          MEMORY[0x2530AE390](v17);
          v2 = v31;
          v18 = sub_252E37F14();
          v19 = -1 << *(v15 + 32);
          v20 = v18 & ~v19;
          if ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            break;
          }
        }

LABEL_15:

        if (v12 == v11)
        {

          v8 = 0;
          goto LABEL_40;
        }
      }

      v21 = ~v19;
      while (*(*(v15 + 48) + 8 * v20) != v17)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v2 = v26;
      if (v4 == i)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_39:
  v8 = 1;
LABEL_40:

  v22 = sub_252C2F554();
  if (v22 >> 62)
  {
    v25 = sub_252E378C4();

    if (v25)
    {
      return v8;
    }

    return 0;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v23)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_252C23F84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C227AC(v2, v3, v4);
}

uint64_t sub_252C2402C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C22110(v0);
}

uint64_t sub_252C240BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25294B958;

  return sub_252C23890(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_252C24180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25294B7BC;

  return sub_252C234D4(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_252C24244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252C235BC(a1, v4, v5, v6);
}

uint64_t sub_252C242F8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSuccessfulActionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C2436C(unsigned __int8 *a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x277D84F90];
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = v5[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v6 == 2 || (v6 & 1) != 0)
  {
    v7 = [a1 filters];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for HomeFilter();
      v9 = sub_252E37264();

      v10 = [a1 userTask];
      v11 = HomeStore.accessories(matching:supporting:)(v9, v10);
      v13 = v12;

      if (v13)
      {
        v14 = v11;
        v15 = 1;
      }

      else
      {
        if (v11 >> 62)
        {
          if (sub_252E378C4())
          {
            goto LABEL_11;
          }
        }

        else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_11:
          v5 = a1;
          goto LABEL_12;
        }

        v14 = v11;
        v15 = 0;
      }

      sub_252929F10(v14, v15);
      v11 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_12:

  *(v2 + 16) = v11;

  return v2;
}

uint64_t sub_252C244D4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
LABEL_22:
    if (!sub_252E378C4())
    {
      return 0;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x2530ADF00](0, v3);

    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_8:
    v7 = (*(*v5 + 256))(v6);

    v1 = *(v1 + 16);
    if (v1 >> 62)
    {
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    while (1)
    {
      v10 = v8 == v9;
      if (v8 == v9)
      {
        goto LABEL_20;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v9, v1);
        if (__OFADD__(v9, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:

          return v10;
        }
      }

      else
      {
        if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v11 = *(v1 + 8 * v9 + 32);

        if (__OFADD__(v9, 1))
        {
          goto LABEL_19;
        }
      }

      v12 = (*(*v11 + 256))();

      ++v9;
      if (v12 != v7)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252C246DC@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000035, 0x8000000252E8B090, 0xD000000000000086, 0x8000000252E8B000);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 192), v12);

  v6 = *(v1 + 16);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x2530ADF00](0, v6);

    goto LABEL_8;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);

LABEL_8:
    v9 = v13;
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v11 = (*(*v8 + 256))();
    (*(v10 + 40))(v11, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_252C248B0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (qword_27F53F558 != -1)
  {
LABEL_18:
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000031, 0x8000000252E8AFC0, 0xD000000000000086, 0x8000000252E8B000);
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v6 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v5);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      type metadata accessor for MatterAccessory(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v10 = v8;

        v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
        sub_252929E74((v12 + 192), v17);

        v13 = v18;
        v14 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v14 + 32))(v20, v10, v13, v14);

        v15 = v20[1];
        *a1 = v20[0];
        a1[1] = v15;
        v16 = v20[3];
        a1[2] = v20[2];
        a1[3] = v16;
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }

      ++v6;
    }

    while (v7 != v2);
  }

  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AccessoriesCollectionDecorator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252C24B5C()
{
  v1 = [v0 userTask];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 value];

  if (!v3)
  {
    goto LABEL_7;
  }

  if ([v3 type] == 2 || objc_msgSend(v3, sel_type) == 4)
  {
LABEL_11:
    v5 = 1;

    return v5;
  }

  v4 = [v3 type];

  if (v4 != 6)
  {
LABEL_7:
    v6 = [v0 userTask];
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v3 = [v6 value];

    if (!v3)
    {
      return 0;
    }

    v8 = [v3 stringValue];
    if (!v8)
    {
      v5 = 0;

      return v5;
    }

    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_252C24C90()
{
  v1 = [v0 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 value];
      if (v5)
      {
        if ([v5 type] == 2 || objc_msgSend(v5, sel_type) == 4)
        {
          v6 = 1;
LABEL_15:

          return v6;
        }

        v12 = [v5 type];

        if (v12 == 6)
        {
          return 1;
        }
      }
    }

    else
    {
    }
  }

  v7 = [v0 automatableTask];
  if (v7)
  {
    v5 = v7;
    type metadata accessor for ControlAutomateHomeIntent();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

    v5 = [v9 value];
    if (v5)
    {
      v10 = [v5 stringValue];
      if (v10)
      {

        v6 = 1;
        goto LABEL_15;
      }

LABEL_14:
      v6 = 0;
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_252C24E5C()
{
  if (sub_252C513E8())
  {
    return 0;
  }

  else
  {
    return sub_252C24B5C() & 1;
  }
}

uint64_t sub_252C24EB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultUnitHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252C24EE4(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = [v6 value];

    if (v9)
    {
      [v9 doubleValue];
      v7 = v10;
    }
  }

  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v13 = sub_252D6CA80(v12);

    v14 = sub_252C6E240(a1);
    v15 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v16 = sub_252E36F04();
    v17 = [v15 initWithIdentifier:0 displayString:v16];

    v18 = v17;
    [v18 setDoubleValue_];
    [v18 setUnit_];
    [v18 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v19 = sub_252D6CC80(v18);
    swift_beginAccess();
    v13[4] = v19;
  }

  else
  {
    v13 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v20, v2);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();
  v35 = v32;
  v36 = v33;
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E8B1C0);
  if (v13)
  {
    swift_beginAccess();
  }

  else
  {
    v21 = 0;
  }

  v34 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v22 = sub_252E36F94();
  MEMORY[0x2530AD570](v22);

  sub_252CC3D90(v35, v36, 0xD00000000000008ELL, 0x8000000252E8B130);

  (*(v3 + 8))(v5, v2);
  if (v13)
  {

    v23 = sub_252D6CB58();
  }

  else
  {
    v23 = 0;
  }

  v24 = [a1 filters];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for HomeFilter();
    v26 = sub_252E37264();
  }

  else
  {
    v26 = 0;
  }

  v27 = [a1 time];
  v28 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v28 setUserTask_];
  if (v26)
  {
    type metadata accessor for HomeFilter();
    v29 = sub_252E37254();
  }

  else
  {
    v29 = 0;
  }

  [v28 setFilters_];

  [v28 setTime_];

  return v28;
}

id sub_252C253A0(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v2 = sub_252D6CA80(v2);
  }

  v3 = [a1 userTask];
  if (v3 && (v4 = v3, v5 = [v3 value], v4, v5))
  {
    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v6 = sub_252D6CC80(v5);
    *(v6 + 80) = 1;
    if (!v2)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  v2[4] = v6;
  swift_retain_n();

  v7 = sub_252D6CB58();

LABEL_9:
  v8 = [a1 filters];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 time];
  v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v12 setUserTask_];
  if (v10)
  {
    type metadata accessor for HomeFilter();
    v13 = sub_252E37254();
  }

  else
  {
    v13 = 0;
  }

  [v12 setFilters_];

  [v12 setTime_];

  return v12;
}

id sub_252C25600(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 6 && sub_252C4B5D4())
    {
      v5 = [a1 userTask];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 value];

        if (v7)
        {
          [v7 doubleValue];

          return sub_252C24EE4(a1);
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  if (sub_252C4B5D4())
  {
    v9 = [a1 userTask];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 attribute];

      if (v11 == 11)
      {
        return sub_252C253A0(a1);
      }
    }

    else
    {
      sub_252C515AC();
    }

    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      if (v14 == 2)
      {
        return sub_252C253A0(a1);
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E8B110, 0xD00000000000008ELL, 0x8000000252E8B130);
  return a1;
}

unint64_t sub_252C257F4()
{
  result = sub_252CC52B0(&unk_2864A5518);
  qword_27F575A28 = result;
  return result;
}

uint64_t sub_252C2581C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[459] = v3;
  v4[458] = a3;
  v4[457] = a2;
  v4[456] = a1;
  v5 = sub_252E34014();
  v4[460] = v5;
  v4[461] = *(v5 - 8);
  v4[462] = swift_task_alloc();
  v4[463] = swift_task_alloc();
  v4[464] = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  v4[465] = swift_task_alloc();
  v6 = sub_252E36324();
  v4[466] = v6;
  v4[467] = *(v6 - 8);
  v4[468] = swift_task_alloc();
  v4[469] = swift_task_alloc();
  v4[470] = swift_task_alloc();
  v4[471] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C259A4, 0, 0);
}

uint64_t sub_252C259A4()
{
  v125 = v0;
  v1 = *(v0 + 3672);
  memcpy((v0 + 520), v1 + 14, 0x1F8uLL);
  memcpy((v0 + 16), v1 + 14, 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    goto LABEL_10;
  }

  memcpy((v0 + 2536), (v0 + 520), 0x1F8uLL);
  v2 = sub_2529353AC(v0 + 2536, v0 + 3040);
  sub_252B680FC(v2);
  sub_252B65874(&v123);

  v3 = v123;
  if (v123 == 77)
  {
LABEL_9:
    sub_25299F5D4(v0 + 520);
LABEL_10:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D18);
    v123 = 0;
    v124 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E8B250);
    memcpy((v0 + 1024), v1 + 14, 0x1F8uLL);
    memcpy((v0 + 1528), v1 + 14, 0x1F8uLL);
    sub_2529D291C(v0 + 1024, v0 + 2032);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    v15 = MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E8B280);
    sub_252B680FC(v15);
    sub_252B65874(&v122);

    *(v0 + 3880) = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544318, &qword_252E53750);
    v16 = sub_252E36F94();
    MEMORY[0x2530AD570](v16);

    MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E8B2A0);
    sub_252CC4050(v123, v124, 0xD000000000000098, 0x8000000252E8B2D0, 0xD00000000000001FLL, 0x8000000252E84990, 46);

    sub_2529515FC(6, 0, 0xD000000000000017, 0x8000000252E8B370);
    sub_2529318DC();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  if (qword_27F53F3F0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v4 = qword_27F575A28;
    if (!*(qword_27F575A28 + 16))
    {
      goto LABEL_9;
    }

    v5 = sub_252A4509C(v3);
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }

    v96 = *(*(v4 + 56) + v5);
    v7 = [*(v0 + 3656) userTask];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v9 = [v7 attribute];

    sub_252B680FC(v10);
    v91 = sub_252B65FC8();

    v92 = *(v0 + 225);
    sub_252B680FC(v11);
    v89 = sub_252B664A8();

    if (v89 == 2)
    {
      v93 = 0;
    }

    else
    {
      sub_252B680FC(v12);
      v93 = sub_252B664A8();
    }

    v95 = v3;
    v94 = *(v0 + 3664);
    if (!v94)
    {
      v39 = 0;
      v40 = MEMORY[0x277D84F90];
      v101 = 1;
      v25 = MEMORY[0x277D84F90];
LABEL_68:
      v120 = v39;
      v99 = v40;
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v110 = v89;
      v88 = *(v0 + 3728);
      v90 = *(v0 + 3672);
      v59 = sub_252E36AD4();
      __swift_project_value_buffer(v59, qword_27F544D18);
      sub_252CC3D90(0xD000000000000036, 0x8000000252E8B390, 0xD000000000000098, 0x8000000252E8B2D0);
      v123 = 0;
      v124 = 0xE000000000000000;
      sub_252E379F4();
      v60 = v124;
      *(v0 + 3624) = v123;
      *(v0 + 3632) = v60;
      MEMORY[0x2530AD570](0x6465746365707865, 0xEF203A6574617453);
      *(v0 + 3881) = v95;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E8B3D0);
      *(v0 + 3882) = v96;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8B3F0);
      v117 = v91 & 1;
      if (v91)
      {
        v61 = 1702195828;
      }

      else
      {
        v61 = 0x65736C6166;
      }

      if (v91)
      {
        v62 = 0xE400000000000000;
      }

      else
      {
        v62 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v61, v62);

      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E8B410);
      v114 = v92 != 2;
      if (v92 == 2)
      {
        v63 = 0x65736C6166;
      }

      else
      {
        v63 = 1702195828;
      }

      if (v92 == 2)
      {
        v64 = 0xE500000000000000;
      }

      else
      {
        v64 = 0xE400000000000000;
      }

      MEMORY[0x2530AD570](v63, v64);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E8B430);
      v65 = v110 == 2;
      v111 = v110 != 2;
      if (v65)
      {
        v66 = 0x65736C6166;
      }

      else
      {
        v66 = 1702195828;
      }

      if (v65)
      {
        v67 = 0xE500000000000000;
      }

      else
      {
        v67 = 0xE400000000000000;
      }

      MEMORY[0x2530AD570](v66, v67);

      MEMORY[0x2530AD570](0x53646C756F68730ALL, 0xEF203A7365597961);
      v107 = v93 & 1;
      if (v93)
      {
        v68 = 1702195828;
      }

      else
      {
        v68 = 0x65736C6166;
      }

      if (v93)
      {
        v69 = 0xE400000000000000;
      }

      else
      {
        v69 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v68, v69);

      MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E8B450);
      v70 = MEMORY[0x2530AD730](v25, v88);
      MEMORY[0x2530AD570](v70);

      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E8B470);
      v71 = MEMORY[0x2530AD730](v40, v88);
      MEMORY[0x2530AD570](v71);

      sub_252CC3D90(*(v0 + 3624), *(v0 + 3632), 0xD000000000000098, 0x8000000252E8B2D0);

      v72 = swift_allocObject();
      *(v0 + 3776) = v72;
      *(v72 + 16) = v90;
      *(v72 + 24) = v114;
      *(v72 + 32) = v25;
      *(v72 + 40) = v117;
      *(v72 + 41) = v111;
      *(v72 + 42) = v107;
      *(v72 + 48) = v40;
      *(v72 + 56) = v95;
      *(v72 + 57) = v96;
      *(v72 + 64) = v120;
      *(v72 + 72) = v101 & 1;

      if (v94)
      {
        v73 = *(v0 + 3736);
        v74 = *(v0 + 3728);
        v75 = *(v0 + 3720);
        v76 = *(v0 + 3712);
        v77 = *(v0 + 3672);
        v78 = *(v77 + 48);
        v79 = *(v0 + 3664);
        __swift_project_boxed_opaque_existential_1((v77 + 24), v78);
        v80 = *(v73 + 56);
        v80(&v75[v76[5]], 1, 1, v74);
        v80(&v75[v76[8]], 1, 1, v74);
        v80(&v75[v76[12]], 1, 1, v74);
        *v75 = 0;
        v75[v76[6]] = v114;
        *&v75[v76[7]] = v25;
        v75[v76[9]] = v117;
        v75[v76[10]] = v111;
        v75[v76[11]] = v107;
        *&v75[v76[13]] = v99;
        sub_252C27D40(v75, v95, v96, v120, v101 & 1);
        v81 = sub_252C06334();
        *(v0 + 3784) = v81;
        v121 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
        v82 = swift_task_alloc();
        *(v0 + 3792) = v82;
        *v82 = v0;
        v82[1] = sub_252C26A5C;

        return v121(0xD000000000000020, 0x8000000252E8B490, v81);
      }

      else
      {
        v83 = *(v0 + 3672);

        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v84 = v83[12];
        v85 = v83[13];
        __swift_project_boxed_opaque_existential_1(v83 + 9, v84);
        sub_252AD7CC4();
        v86 = swift_task_alloc();
        *(v0 + 3840) = v86;
        *v86 = v0;
        v86[1] = sub_252C26E3C;
        v87 = *(v0 + 3704);
        v127 = v85;

        return sub_252BDB88C(v0 + 3544, &unk_252E53760, v72, v87, 0, 0, 0, v84);
      }
    }

    LOBYTE(v123) = v3;
    v22 = sub_252C2CDC4(&v123, v9);
    v23 = v22;
    v97 = v9;
    if (v22 >> 62)
    {
      v24 = sub_252E378C4();
      v1 = &off_279711000;
      if (!v24)
      {
LABEL_43:
        v25 = MEMORY[0x277D84F90];
LABEL_44:

        LOBYTE(v123) = v96;
        v41 = sub_252C2CDC4(&v123, v97);
        v42 = v41;
        if (v41 >> 62)
        {
          goto LABEL_65;
        }

        for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
        {
          v44 = 0;
          v119 = v42 & 0xC000000000000001;
          v98 = *(v0 + 3736);
          v113 = (v98 + 32);
          v116 = v42 & 0xFFFFFFFFFFFFFF8;
          v40 = MEMORY[0x277D84F90];
          v102 = v42;
          v104 = v25;
          v106 = i;
          while (1)
          {
            if (v119)
            {
              v45 = MEMORY[0x2530ADF00](v44, v42);
            }

            else
            {
              if (v44 >= *(v116 + 16))
              {
                goto LABEL_64;
              }

              v45 = *(v42 + 8 * v44 + 32);
            }

            v46 = v45;
            v47 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            v48 = [v45 v1[221]];
            if (v48)
            {
              v49 = v48;
              v50 = [v48 homeEntityName];

              if (v50)
              {
                v109 = *(v0 + 3752);
                v51 = *(v0 + 3744);
                v52 = *(v0 + 3728);
                sub_252E36F34();

                sub_252E37024();

                v53 = *v113;
                (*v113)(v109, v51, v52);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v40 = sub_2529F7F74(0, v40[2] + 1, 1, v40);
                }

                v55 = v40[2];
                v54 = v40[3];
                v42 = v102;
                v25 = v104;
                if (v55 >= v54 >> 1)
                {
                  v40 = sub_2529F7F74((v54 > 1), v55 + 1, 1, v40);
                }

                v56 = *(v0 + 3752);
                v57 = *(v0 + 3728);
                v40[2] = v55 + 1;
                v53(v40 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v55, v56, v57);
                v1 = &off_279711000;
              }

              else
              {
              }

              i = v106;
            }

            else
            {
            }

            ++v44;
            if (v47 == i)
            {
              goto LABEL_67;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          ;
        }

        v40 = MEMORY[0x277D84F90];
LABEL_67:

        v39 = sub_252C2ECE0();
        v101 = v58;
        goto LABEL_68;
      }
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v1 = &off_279711000;
      if (!v24)
      {
        goto LABEL_43;
      }
    }

    v3 = 0;
    v118 = v23 & 0xC000000000000001;
    v100 = *(v0 + 3736);
    v112 = (v100 + 32);
    v115 = v23 & 0xFFFFFFFFFFFFFF8;
    v25 = MEMORY[0x277D84F90];
    v103 = v24;
    v105 = v23;
    while (1)
    {
      if (v118)
      {
        v26 = MEMORY[0x2530ADF00](v3, v23);
      }

      else
      {
        if (v3 >= *(v115 + 16))
        {
          goto LABEL_40;
        }

        v26 = *(v23 + 8 * v3 + 32);
      }

      v27 = v26;
      v28 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v29 = [v26 v1[221]];
      if (v29 && (v30 = v29, v31 = [v29 homeEntityName], v30, v31))
      {
        v32 = *(v0 + 3768);
        v33 = *(v0 + 3760);
        v108 = *(v0 + 3728);
        sub_252E36F34();

        sub_252E37024();

        v34 = *v112;
        (*v112)(v32, v33, v108);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2529F7F74(0, v25[2] + 1, 1, v25);
        }

        v36 = v25[2];
        v35 = v25[3];
        v24 = v103;
        if (v36 >= v35 >> 1)
        {
          v25 = sub_2529F7F74((v35 > 1), v36 + 1, 1, v25);
        }

        v37 = *(v0 + 3768);
        v38 = *(v0 + 3728);
        v25[2] = v36 + 1;
        v34(v25 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v36, v37, v38);
        v1 = &off_279711000;
        v23 = v105;
      }

      else
      {
      }

      ++v3;
      if (v28 == v24)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544D18);
  sub_252CC4050(0xD000000000000027, 0x8000000252E8B4C0, 0xD000000000000098, 0x8000000252E8B2D0, 0xD00000000000001FLL, 0x8000000252E84990, 58);
  sub_2529515FC(6, 0, 0xD000000000000017, 0x8000000252E8B370);
  sub_2529318DC();
  swift_allocError();
  *v21 = 8;
  swift_willThrow();
  sub_25299F5D4(v0 + 520);
LABEL_13:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_252C26A5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3800) = a1;
  *(v3 + 3808) = v1;

  if (v1)
  {
    v4 = sub_252C26D54;
  }

  else
  {
    v4 = sub_252C26B9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C26B9C()
{
  v1 = v0[458];
  sub_252C28570(v0[465]);
  v2 = swift_task_alloc();
  v0[477] = v2;
  *v2 = v0;
  v2[1] = sub_252C26C3C;

  return sub_252E174F4(v1);
}

uint64_t sub_252C26C3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3824) = a1;
  *(v3 + 3832) = v1;

  if (v1)
  {
    v4 = sub_252C27100;
  }

  else
  {
    v4 = sub_252C26FA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C26D54()
{
  v1 = v0[458];
  sub_252C28570(v0[465]);

  sub_25299F5D4((v0 + 65));

  v2 = v0[1];

  return v2();
}

uint64_t sub_252C26E3C()
{
  v2 = *v1;
  *(*v1 + 3848) = v0;

  (*(v2[461] + 8))(v2[463], v2[460]);
  if (v0)
  {
    v3 = sub_252C27754;
  }

  else
  {
    v3 = sub_252C275DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C26FA4()
{
  v1 = v0 + 455;
  v2 = v0[478];
  v3 = v0[475];
  v0[455] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[459];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[482] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[483] = v11;
  *v11 = v0;
  v11[1] = sub_252C271E8;
  v12 = v0[462];

  return sub_252BDB88C((v0 + 448), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252C27100()
{
  v1 = *(v0 + 3664);

  sub_25299F5D4(v0 + 520);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C271E8()
{
  v2 = *v1;
  *(*v1 + 3872) = v0;

  (*(v2[461] + 8))(v2[462], v2[460]);
  if (v0)
  {
    v3 = sub_252C274D8;
  }

  else
  {

    v3 = sub_252C27340;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C27340()
{
  v1 = *(v0 + 3672);
  v2 = *(v0 + 3656);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 3824);
  v9 = *(v0 + 3800);
  v10 = *(v0 + 3664);
  (*(v4 + 112))(v7, v0 + 3584, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 3584));

  sub_25299F5D4(v0 + 520);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252C274D8()
{
  v1 = *(v0 + 3824);
  v2 = *(v0 + 3664);

  sub_25299F5D4(v0 + 520);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252C275DC()
{
  v1 = v0[459];
  v2 = v0[457];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 443, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 443);

  sub_25299F5D4((v0 + 65));

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C27754()
{

  sub_25299F5D4(v0 + 520);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C27828(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 102) = v13;
  *(v8 + 101) = v11;
  *(v8 + 100) = a8;
  *(v8 + 32) = a7;
  *(v8 + 40) = v12;
  *(v8 + 99) = a6;
  *(v8 + 98) = a5;
  *(v8 + 97) = a4;
  *(v8 + 96) = a2;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 48) = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C278EC, 0, 0);
}

uint64_t sub_252C278EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v18 = *(v0 + 40);
  v13 = *(v0 + 98);
  v14 = *(v0 + 99);
  v12 = *(v0 + 97);
  v4 = *(v0 + 96);
  v5 = *(v0 + 24);
  v16 = *(v0 + 100);
  v17 = *(v0 + 102);
  v15 = *(v0 + 101);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v6 = v1[5];
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);
  v8(&v2[v6], 1, 1, v7);
  v8(&v2[v1[8]], 1, 1, v7);
  v8(&v2[v1[12]], 1, 1, v7);
  *v2 = 0;
  v2[v1[6]] = v4;
  *&v2[v1[7]] = v5;
  v2[v1[9]] = v12;
  v2[v1[10]] = v13;
  v2[v1[11]] = v14;
  *&v2[v1[13]] = v3;

  sub_252C27D40(v2, v16, v15, v18, v17 & 1);
  v9 = sub_252C06334();
  *(v0 + 64) = v9;
  v19 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_252C27B10;

  return v19(0xD000000000000020, 0x8000000252E8B490, v9);
}

uint64_t sub_252C27B10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252C27CD0;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252C27C5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C27C5C()
{
  sub_252C28570(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_252C27CD0()
{
  sub_252C28570(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C27D40(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-v11];
  v17[15] = a2;
  StateSemantic.rawValue.getter();
  sub_252E362F4();
  v13 = sub_252E36324();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 0, 1, v13);
  v15 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  sub_252956C98(v12, a1 + v15[5]);
  v17[14] = a3;
  StateSemantic.rawValue.getter();
  sub_252E362F4();
  v14(v12, 0, 1, v13);
  sub_252956C98(v12, a1 + v15[8]);
  static SemanticMapper.getSemanticKey(for:)(a4, a5 & 1, v12);
  return sub_252956C98(v12, a1 + v15[12]);
}

uint64_t sub_252C27EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C2581C(a1, a2, a3);
}

void *sub_252C27FA4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ConvenienceAnswerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C28008(void *a1)
{
  v2 = sub_252B680FC(a1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {

LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  memcpy(__dst, (v3 + 504 * v4 - 472), sizeof(__dst));
  sub_2529353AC(__dst, &v20);

  if (!*(__dst[24] + 16))
  {
    goto LABEL_12;
  }

  v5 = *(__dst[24] + 32);
  v6 = [a1 userTask];
  if (!v6)
  {
    sub_252C515AC();
    goto LABEL_12;
  }

  v7 = v6;
  if ([v6 taskType] != 4)
  {
    v8 = [v7 taskType];

    if (v8 == 5)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_252935408(__dst);
    goto LABEL_13;
  }

LABEL_9:
  v9 = [a1 userTask];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 attribute];

  v12 = vdupq_n_s64(v11);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A54F0, v12), vceqq_s64(unk_2864A5500, v12)))) & 1) == 0 && qword_2864A5510 != v11)
  {
    goto LABEL_12;
  }

  if (BYTE1(__dst[26]) == 2)
  {
    v15 = (__dst[11] + 32);
    v16 = *(__dst[11] + 16);
    while (2)
    {
      if (v16)
      {
        switch(*v15)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v17 = sub_252E37DB4();

            ++v15;
            --v16;
            if ((v17 & 1) == 0)
            {
              continue;
            }

            goto LABEL_21;
          default:

            goto LABEL_21;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_21:
  if (qword_27F53F3F0 != -1)
  {
    swift_once();
  }

  v18 = *(qword_27F575A28 + 16);

  if (v18)
  {
    sub_252A4509C(v5);
    v13 = v19;
  }

  else
  {
    v13 = 0;
  }

  sub_252935408(__dst);

  return v13 & 1;
}

uint64_t sub_252C28460()
{
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = *(v0 + 42);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25294B958;

  return sub_252C27828(v12, v11, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_252C28570(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_252C285F0()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v35 = v2;
    if (v4 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = v4;
      v7 = 0;
      v4 &= 0xC000000000000001;
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      v9 = v6 + 32;
      v10 = &off_279711000;
      v32 = v4;
      v33 = i;
      v31 = v6 & 0xFFFFFFFFFFFFFF8;
      v29 = v6;
      v30 = v6 + 32;
      while (1)
      {
        if (v4)
        {
          v11 = MEMORY[0x2530ADF00](v7, v29);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_43;
          }

          v11 = *(v9 + 8 * v7);
        }

        v12 = v11;
        v13 = __OFADD__(v7++, 1);
        if (v13)
        {
          break;
        }

        v14 = [v11 v10[220]];
        if (!v14)
        {
          goto LABEL_6;
        }

        v2 = v14;
        type metadata accessor for HomeUserTaskResponse();
        v15 = sub_252E37264();

        v16 = [v12 entity];
        if (!v16)
        {

LABEL_6:

          goto LABEL_7;
        }

        if (v15 >> 62)
        {
          v17 = sub_252E378C4();
          if (v17)
          {
LABEL_16:
            v18 = 0;
            v4 = v15 + 32;
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x2530ADF00](v18, v15);
              }

              else
              {
                if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_41;
                }

                v19 = *(v4 + 8 * v18);
              }

              v20 = v19;
              v13 = __OFADD__(v18++, 1);
              if (v13)
              {
                break;
              }

              if (qword_27F53F728 != -1)
              {
                swift_once();
              }

              v21 = qword_27F575C38;
              v22 = [v20 taskOutcome];
              if (*(v21 + 16))
              {
                v23 = v22;
                sub_252E37EC4();
                MEMORY[0x2530AE390](v23);
                v2 = v34;
                v24 = sub_252E37F14();
                v25 = -1 << *(v21 + 32);
                v26 = v24 & ~v25;
                if ((*(v21 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
                {
                  v27 = ~v25;
                  while (*(*(v21 + 48) + 8 * v26) != v23)
                  {
                    v26 = (v26 + 1) & v27;
                    if (((*(v21 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
                    {
                      goto LABEL_17;
                    }
                  }

                  v2 = &v35;
                  sub_252E37A94();
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_32;
                }
              }

LABEL_17:

              if (v18 == v17)
              {

LABEL_32:
                v4 = v32;
                i = v33;
                v9 = v30;
                v8 = v31;
                v10 = &off_279711000;
                goto LABEL_7;
              }
            }

            __break(1u);
LABEL_41:
            __break(1u);
            break;
          }
        }

        else
        {
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_16;
          }
        }

        v10 = &off_279711000;
LABEL_7:
        if (v7 == i)
        {
          v2 = v35;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_38:
  }

  return v2;
}

uint64_t sub_252C28980(void *a1, uint64_t *a2, unint64_t a3)
{
  v4 = [v3 entityResponses];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for HomeEntityResponse();
    v7 = sub_252E37264();

    v8 = v7;
    v44 = v5;
    if (v7 >> 62)
    {
      goto LABEL_43;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v37 = v8;
        v10 = 0;
        v11 = v8 & 0xC000000000000001;
        v12 = v8 & 0xFFFFFFFFFFFFFF8;
        v13 = v8 + 32;
        v14 = &off_279711000;
        v15 = &off_279711000;
        v40 = v8 & 0xC000000000000001;
        v41 = v9;
        v38 = v8 + 32;
        v39 = v8 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v11)
          {
            v8 = MEMORY[0x2530ADF00](v10, v37);
          }

          else
          {
            if (v10 >= *(v12 + 16))
            {
              goto LABEL_40;
            }

            v8 = *(v13 + 8 * v10);
          }

          v16 = v8;
          v17 = __OFADD__(v10++, 1);
          if (v17)
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          v18 = [v8 v14[221]];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 v15[222]];

            if (v20 == 7)
            {
              v21 = [v16 taskResponses];
              if (v21)
              {
                break;
              }
            }
          }

LABEL_6:
          if (v10 == v9)
          {
            v5 = v44;
            goto LABEL_45;
          }
        }

        v22 = v21;
        type metadata accessor for HomeUserTaskResponse();
        v23 = sub_252E37264();

        v24 = [v16 v14[221]];
        if (!v24)
        {
          break;
        }

        if (!(v23 >> 62))
        {
          v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_17;
          }

          goto LABEL_36;
        }

        v8 = sub_252E378C4();
        v25 = v8;
        if (!v8)
        {
LABEL_36:

LABEL_37:
          v11 = v40;
          v9 = v41;
          v13 = v38;
          v12 = v39;
          v14 = &off_279711000;
          v15 = &off_279711000;
          goto LABEL_6;
        }

LABEL_17:
        v26 = 0;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x2530ADF00](v26, v23);
          }

          else
          {
            if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v8 = *(v23 + 32 + 8 * v26);
          }

          v27 = v8;
          v17 = __OFADD__(v26++, 1);
          if (v17)
          {
            break;
          }

          if (*a1 != -1)
          {
            swift_once();
          }

          v28 = *a2;
          v29 = [v27 taskOutcome];
          if (*(v28 + 16))
          {
            v30 = v29;
            sub_252E37EC4();
            MEMORY[0x2530AE390](v30);
            v31 = sub_252E37F14();
            v32 = -1 << *(v28 + 32);
            v33 = v31 & ~v32;
            if ((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
            {
              v34 = ~v32;
              while (*(*(v28 + 48) + 8 * v33) != v30)
              {
                v33 = (v33 + 1) & v34;
                if (((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
                {
                  goto LABEL_18;
                }
              }

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              v8 = sub_252E37AA4();
              goto LABEL_37;
            }
          }

LABEL_18:

          if (v26 == v25)
          {
            goto LABEL_36;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v35 = v8;
        v9 = sub_252E378C4();
        v8 = v35;
        if (!v9)
        {
          goto LABEL_44;
        }
      }

      v15 = &off_279711000;
      goto LABEL_6;
    }

LABEL_44:
    v5 = MEMORY[0x277D84F90];
LABEL_45:
  }

  return v5;
}

uint64_t sub_252C28D24(unint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v166 = v6;
  v167 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v160 - v11);
  if (qword_27F53F600 != -1)
  {
    goto LABEL_144;
  }

  while (1)
  {
    v13 = qword_27F544F88;
    sub_252E36A94();
    sub_252E375D4();
    v168 = v12;
    v14 = sub_252E36A84();
    sub_252B680FC(v14);
    sub_252B68288();
    v16 = v15;

    if (v16)
    {

      v17 = type metadata accessor for HomeStore(0);
      v18 = static HomeStore.shared.getter(v17);
      v19 = MEMORY[0x277D84F90];
      if (a1)
      {
        v20 = [a1 filters];
        if (v20)
        {
          v21 = v20;
          type metadata accessor for HomeFilter();
          v22 = sub_252E37264();
        }

        else
        {
          v22 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }

      v40 = sub_2529F744C(v22);

      if (!v40)
      {
        goto LABEL_102;
      }

      v41 = [*&v40[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
      if (!v41 || (v42 = v41, type metadata accessor for Room(0), swift_allocObject(), v43 = sub_2529A1E08(v42), v44 = sub_2529A2E84(), , (v165 = v44) == 0))
      {

LABEL_102:
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v99 = sub_252E36AD4();
        __swift_project_value_buffer(v99, qword_27F544CE8);
        sub_252CC3D90(0xD000000000000024, 0x8000000252E8B7F0, 0xD000000000000098, 0x8000000252E69730);
        v100 = sub_252E375C4();
        LOBYTE(v158) = 2;
        v101 = v168;
        sub_252E36A74(v100, &dword_252917000, v13, "GetLocalDeviceInformation", 25, 2, v168, " enableTelemetry=YES ", 21, v158, v19);
        (*(v167 + 8))(v101, v166);
        return 0;
      }

      v164 = v43;
      v12 = v168;
    }

    else
    {
      v23 = v3;
      a1 = v13;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      v24 = type metadata accessor for HomeStore(0);
      v25 = static HomeStore.shared.getter(v24);
      v26 = sub_2529F219C();
      v28 = v27;

      if (v28)
      {
        goto LABEL_7;
      }

      if (!v26)
      {
        goto LABEL_13;
      }

      v29 = [*&v26[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
      if (!v29)
      {
        goto LABEL_7;
      }

      v30 = v29;
      type metadata accessor for Room(0);
      swift_allocObject();
      v31 = sub_2529A1E08(v30);
      v165 = sub_2529A2E84();
      if (!v165)
      {

LABEL_7:
        sub_252956C8C(v26, v28 & 1);
LABEL_13:
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544CE8);
        sub_252CC3D90(0xD000000000000026, 0x8000000252E8B610, 0xD000000000000098, 0x8000000252E69730);
        v34 = sub_252E375C4();
        v35 = MEMORY[0x277D84F90];
        LOBYTE(v158) = 2;
        sub_252E36A74(v34, &dword_252917000, a1, "GetCurrentDevice", 16, 2, v10, " enableTelemetry=YES ", 21, v158, MEMORY[0x277D84F90]);
        v36 = sub_252E375C4();
        LOBYTE(v159) = 2;
        v37 = v168;
        sub_252E36A74(v36, &dword_252917000, a1, "GetLocalDeviceInformation", 25, 2, v168, " enableTelemetry=YES ", 21, v159, v35);
        v38 = v166;
        v39 = *(v167 + 8);
        v39(v10, v166);
        v39(v37, v38);
        return 0;
      }

      v164 = v31;
      v32 = sub_252E375C4();
      LOBYTE(v158) = 2;
      sub_252E36A74(v32, &dword_252917000, a1, "GetCurrentDevice", 16, 2, v10, " enableTelemetry=YES ", 21, v158, MEMORY[0x277D84F90]);
      sub_252956C8C(v26, 0);
      (*(v167 + 8))(v10, v166);
      v12 = v168;
      v3 = v23;
    }

    v45 = sub_252E375C4();
    v10 = MEMORY[0x277D84F90];
    LOBYTE(v158) = 2;
    sub_252E36A74(v45, &dword_252917000, v13, "GetLocalDeviceInformation", 25, 2, v12, " enableTelemetry=YES ", 21, v158, MEMORY[0x277D84F90]);

    v46 = sub_252C2F554();
    v47 = v46;
    if (v46 >> 62)
    {
      goto LABEL_186;
    }

    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_30:

LABEL_31:

    v57 = sub_252C2C640();
    v175 = v10;
    if (v57 >> 62)
    {
      v12 = v57;
      v58 = sub_252E378C4();
      v57 = v12;
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (!v58)
    {
LABEL_75:
      v2 = v5;

      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v77 = sub_252E36AD4();
      __swift_project_value_buffer(v77, qword_27F544CE8);
      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();

      v173 = 0xD00000000000001DLL;
      v174 = 0x8000000252E8B640;
      v78 = type metadata accessor for HomeEntity();
      v79 = MEMORY[0x2530AD730](v5, v78);
      MEMORY[0x2530AD570](v79);

      a1 = "esponses from intent response: ";
      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E8B660);
      v80 = (v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v81 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v82 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v81, v82);

      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E8B690);
      v83 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v84 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v172 = (v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      MEMORY[0x2530AD570](v83, v84);

      v12 = v174;
      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v85 = *(v5 + 16);
        if (v85)
        {
          goto LABEL_80;
        }

LABEL_191:

        goto LABEL_192;
      }

      v85 = sub_252E378C4();
      if (!v85)
      {
        goto LABEL_191;
      }

LABEL_80:
      v86 = 0;
      v3 = (v5 & 0xC000000000000001);
      while (2)
      {
        if (v3)
        {
          v87 = MEMORY[0x2530ADF00](v86, v5);
        }

        else
        {
          if (v86 >= *(v5 + 16))
          {
            goto LABEL_143;
          }

          v87 = *(v5 + 8 * v86 + 32);
        }

        a1 = v87;
        v10 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_142;
        }

        v88 = [v87 room];
        if (v88)
        {
          v89 = v88;
          v90 = sub_252E36F34();
          v12 = v91;

          if (v90 == *v80 && v12 == v80[1])
          {

            v5 = v2;
            goto LABEL_95;
          }

          v93 = sub_252E37DB4();

          v5 = v2;
          if (v93)
          {
LABEL_95:
            v94 = [a1 home];
            if (v94)
            {
              v95 = v94;
              v96 = sub_252E36F34();
              v12 = v97;

              if (v96 == *v172 && v12 == v172[1])
              {

LABEL_111:
                (*(v167 + 8))(v168, v166);

                return 1;
              }

              v98 = sub_252E37DB4();

              v5 = v2;
              if (v98)
              {
                goto LABEL_111;
              }

              goto LABEL_82;
            }
          }
        }

LABEL_82:
        ++v86;
        if (v10 == v85)
        {
          goto LABEL_191;
        }

        continue;
      }
    }

    v59 = 0;
    v171 = (v57 & 0xFFFFFFFFFFFFFF8);
    v172 = (v57 & 0xC000000000000001);
    v163 = v57;
    v169 = (v57 + 32);
    v170 = v58;
    while (1)
    {
      if (v172)
      {
        v60 = MEMORY[0x2530ADF00](v59, v163);
      }

      else
      {
        if (v59 >= v171[2])
        {
          goto LABEL_141;
        }

        v60 = v169[v59];
      }

      v3 = v60;
      v61 = __OFADD__(v59++, 1);
      if (v61)
      {
        break;
      }

      v62 = [v60 deviceTypes];
      if (v62)
      {
        v63 = v62;
        v12 = sub_252E37264();

        v10 = v12[2];
        if (v10)
        {
          v64 = (v12 + 4);
          v65 = v5;
          do
          {
            v66 = *v64++;
            v67 = sub_252E25FC4(v66);
            if ((v68 & 1) == 0)
            {
              v69 = v67;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_2529F7B8C(0, *(v65 + 2) + 1, 1, v65);
              }

              v2 = *(v65 + 2);
              v70 = *(v65 + 3);
              if (v2 >= v70 >> 1)
              {
                v65 = sub_2529F7B8C((v70 > 1), v2 + 1, 1, v65);
              }

              *(v65 + 2) = v2 + 1;
              *&v65[8 * v2 + 32] = v69;
            }

            --v10;
          }

          while (v10);
        }

        else
        {
          v65 = v5;
        }
      }

      else
      {
        v65 = 0;
      }

      if (qword_27F53F408 != -1)
      {
        swift_once();
      }

      v71 = qword_27F575A40;
      if (v65)
      {
        a1 = v65;
      }

      else
      {
        a1 = v5;
      }

      if (*(qword_27F575A40 + 16) && (v72 = *(a1 + 16)) != 0)
      {
        v10 = 0;
        v2 = qword_27F575A40 + 56;
        while (1)
        {
          if (*(v71 + 16))
          {
            v12 = *(a1 + 32 + 8 * v10);
            sub_252E37EC4();
            MEMORY[0x2530AE390](v12);
            v73 = sub_252E37F14();
            v74 = -1 << *(v71 + 32);
            v75 = v73 & ~v74;
            if ((*(v2 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
            {
              break;
            }
          }

LABEL_62:
          if (++v10 == v72)
          {

            goto LABEL_70;
          }
        }

        v76 = ~v74;
        while (*(*(v71 + 48) + 8 * v75) != v12)
        {
          v75 = (v75 + 1) & v76;
          if (((*(v2 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        sub_252E37A94();
        v12 = *(v175 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
LABEL_70:
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
      }

      if (v59 == v170)
      {
        v5 = v175;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
  }

LABEL_23:
  if ((v47 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x2530ADF00](0, v47);
  }

  else
  {
    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_196:

LABEL_197:

      sub_252956C8C(v172, 0);
      v157 = 1;
      goto LABEL_198;
    }

    v48 = *(v47 + 32);
  }

  v12 = v48;

  v49 = [v12 entity];

  if (!v49)
  {
    goto LABEL_31;
  }

  v50 = [v49 entityIdentifier];

  if (!v50)
  {
    goto LABEL_31;
  }

  v12 = sub_252E36F34();
  v52 = v51;

  v53 = type metadata accessor for HomeStore(0);
  v54 = static HomeStore.shared.getter(v53);
  a1 = sub_2529F53FC(v12, v52);
  v56 = v55;

  if (v56)
  {
    sub_252956C8C(a1, 1);
    goto LABEL_30;
  }

  if (!a1)
  {
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    v107 = sub_252E36AD4();
    __swift_project_value_buffer(v107, qword_27F544CE8);
    v173 = 0;
    v174 = 0xE000000000000000;
    sub_252E379F4();

    v173 = 0xD000000000000019;
    v174 = 0x8000000252E8B6B0;
    MEMORY[0x2530AD570](v12, v52);

    MEMORY[0x2530AD570](0x756F662073617720, 0xEB000000002E646ELL);
    sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

    v108 = 0;
    goto LABEL_139;
  }

  v102 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) requiresDeviceUnlock];
  if (v102)
  {
    if (qword_27F53F4C0 != -1)
    {
      goto LABEL_201;
    }

    goto LABEL_109;
  }

  v109 = sub_252B2F280(v102);
  v110 = v109;
  if (v109 >> 62)
  {
    v111 = sub_252E378C4();
    if (!v111)
    {
      goto LABEL_135;
    }
  }

  else
  {
    v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v111)
    {
      goto LABEL_135;
    }
  }

  v163 = v3;
  v172 = a1;
  a1 = 0;
  v112 = v110 & 0xC000000000000001;
  v113 = v110 & 0xFFFFFFFFFFFFFF8;
  v114 = (v110 + 32);
  v170 = v111;
  v171 = (v110 & 0xFFFFFFFFFFFFFF8);
  v169 = (v110 + 32);
  while (1)
  {
    if (v112)
    {
      v115 = MEMORY[0x2530ADF00](a1, v110);
      v61 = __OFADD__(a1++, 1);
      if (v61)
      {
        break;
      }

      goto LABEL_121;
    }

    if (a1 >= *(v113 + 16))
    {
      goto LABEL_200;
    }

    v115 = v114[a1];

    v61 = __OFADD__(a1++, 1);
    if (v61)
    {
      break;
    }

LABEL_121:
    if (qword_27F53F408 != -1)
    {
      swift_once();
    }

    v116 = qword_27F575A40;
    v117 = (*(*v115 + 256))();
    if (!*(v116 + 16) || (v118 = v117, sub_252E37EC4(), MEMORY[0x2530AE390](v118), v119 = sub_252E37F14(), v120 = -1 << *(v116 + 32), v121 = v119 & ~v120, ((*(v116 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0))
    {
LABEL_134:

      a1 = v172;
LABEL_135:

      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v124 = sub_252E36AD4();
      __swift_project_value_buffer(v124, qword_27F544CE8);
      v104 = "No scene with identifier ";
      v105 = 0xD00000000000005DLL;
      goto LABEL_138;
    }

    v122 = ~v120;
    while (*(*(v116 + 48) + 8 * v121) != v118)
    {
      v121 = (v121 + 1) & v122;
      if (((*(v116 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    v123 = v170;
    v113 = v171;
    v114 = v169;
    if (a1 == v170)
    {

      v125 = 0;
      v173 = v10;
      v169 = (v163 + 32);
      while (2)
      {
        v126 = v125;
        while (1)
        {
          if (v112)
          {
            v127 = MEMORY[0x2530ADF00](v126, v110);
            v125 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
              goto LABEL_204;
            }
          }

          else
          {
            if (v126 >= *(v113 + 16))
            {
              goto LABEL_205;
            }

            v127 = *(v110 + 8 * v126 + 32);

            v125 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
              goto LABEL_207;
            }
          }

          v128 = [*(v127 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
          if (v128)
          {
            break;
          }

          ++v126;
          if (v125 == v123)
          {
            goto LABEL_161;
          }
        }

        v129 = v128;
        type metadata accessor for Room(0);
        v163 = swift_allocObject();
        *(v163 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v129;
        v130 = v129;
        v131 = [v130 uniqueIdentifier];
        sub_252E32E64();

        v132 = [v130 name];
        v162 = sub_252E36F34();
        v161 = v133;

        v134 = [v130 assistantIdentifier];
        if (v134)
        {
          v135 = v134;
          v160 = sub_252E36F34();
          v137 = v136;
        }

        else
        {

          v160 = 0;
          v137 = 0;
        }

        v138 = v163;
        v139 = (*v169)(v163 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v5, v2);
        v140 = (v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v141 = v161;
        *v140 = v162;
        v140[1] = v141;
        *(v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v142 = (v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v142 = v160;
        v142[1] = v137;
        MEMORY[0x2530AD700](v139);
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v10 = v173;
        v113 = v171;
        if (v125 != v123)
        {
          continue;
        }

        break;
      }

LABEL_161:

      if (qword_27F53F4C0 == -1)
      {
        goto LABEL_162;
      }

LABEL_207:
      swift_once();
LABEL_162:
      v143 = sub_252E36AD4();
      __swift_project_value_buffer(v143, qword_27F544CE8);
      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E8B730);
      v144 = type metadata accessor for Room(0);
      v145 = MEMORY[0x2530AD730](v10, v144);
      MEMORY[0x2530AD570](v145);

      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      v173 = 0;
      v174 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E8B780);
      v5 = v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      v146 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v147 = *(v164 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v146, v147);

      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E8B690);
      v148 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v149 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v171 = (v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      MEMORY[0x2530AD570](v148, v149);

      sub_252CC3D90(v173, v174, 0xD000000000000098, 0x8000000252E69730);

      if (v10 >> 62)
      {
        v47 = sub_252E378C4();
      }

      else
      {
        v47 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      if (!v47)
      {
LABEL_188:

        sub_252956C8C(v172, 0);

        v157 = 0;
LABEL_198:
        (*(v167 + 8))(v168, v166);
        return v157;
      }

      a1 = 0;
      v2 = v10 & 0xC000000000000001;
      v170 = v5;
      while (v2)
      {
        v150 = MEMORY[0x2530ADF00](a1, v10);
        v3 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          goto LABEL_185;
        }

LABEL_171:
        v151 = *(v150 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v5 && *(v150 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v5 + 8);
        if (v151 || (sub_252E37DB4()) && (v152 = sub_2529A2E84()) != 0)
        {
          v154 = *(v152 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v153 = *(v152 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          if (v154 == *v171 && v153 == v171[1])
          {
            goto LABEL_196;
          }

          v156 = sub_252E37DB4();

          v12 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
          v5 = v170;
          if (v156)
          {
            goto LABEL_197;
          }
        }

        else
        {
        }

        ++a1;
        if (v3 == v47)
        {
          goto LABEL_188;
        }
      }

      if (a1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_206;
      }

      v150 = *(v10 + 8 * a1 + 32);

      v3 = (a1 + 1);
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_171;
      }

LABEL_185:
      __break(1u);
LABEL_186:
      if (!sub_252E378C4())
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  swift_once();
LABEL_109:
  v103 = sub_252E36AD4();
  __swift_project_value_buffer(v103, qword_27F544CE8);
  v104 = "if a room with name ";
  v105 = 0xD000000000000035;
LABEL_138:
  sub_252CC3D90(v105, v104 | 0x8000000000000000, 0xD000000000000098, 0x8000000252E69730);

  v108 = a1;
LABEL_139:
  sub_252956C8C(v108, 0);

LABEL_192:

  (*(v167 + 8))(v168, v166);
  return 0;
}