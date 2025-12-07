size_t sub_22C36998C(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 8);
  return result;
}

uint64_t sub_22C3699D4()
{

  return swift_task_alloc();
}

void sub_22C3699EC()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C369A04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C369ACC(uint64_t a1)
{

  return sub_22C36C640(v1 + v2, 1, 1, a1);
}

uint64_t sub_22C369AF8(uint64_t a1)
{

  return sub_22C36C640(v1 + v2, 1, 1, a1);
}

uint64_t sub_22C369BC4()
{
}

void sub_22C369C2C()
{

  sub_22C591324();
}

uint64_t sub_22C369C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C369CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v14 = va_arg(va1, void);

  return sub_22C4760BC(va, a8, v10, a10, v11, va1);
}

void sub_22C369DE4(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[2].n128_u64[0] = 0;
  *v3 = a2;
  v3[1] = a2;
}

BOOL sub_22C369E90(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C369F1C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22C369F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C909F0C();
}

uint64_t sub_22C369FEC()
{
  v2 = v0[47];
  *(v1 - 96) = v0[44];
  *(v1 - 88) = v2;
  return v0[36];
}

uint64_t sub_22C36A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = v10[20];
  v13 = v10[21];
  *(v11 - 144) = v10[24];
  *(v11 - 136) = v13;
  v16 = v10[16];
  v15 = v10[17];
  *(v11 - 128) = v14;
  *(v11 - 120) = v15;
  v17 = v10[15];
  *(v11 - 112) = v16;
  *(v11 - 104) = v17;
  *(v11 - 96) = v10[12];
}

void sub_22C36A274()
{
  v2 = *(v0 + 440);
  *(v1 - 216) = *(v0 + 448);
  *(v1 - 208) = v2;
}

__n128 sub_22C36A2C4(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

void sub_22C36A2D4()
{
}

void sub_22C36A344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 112) = v10;
  *(v11 - 104) = &a9 - v9;
  *(v11 - 88) = v10 + 32;
}

uint64_t sub_22C36A37C()
{

  return sub_22C7AB96C(v0, type metadata accessor for StepResolution);
}

uint64_t sub_22C36A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_22C36A49C(uint64_t a1, uint64_t a2)
{

  return sub_22C90B3AC();
}

uint64_t sub_22C36A644(uint64_t a1, uint64_t a2)
{

  return sub_22C9062CC();
}

uint64_t sub_22C36A6B0(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

void sub_22C36A7BC()
{
  v2 = *(v0 + 16) + 1;

  sub_22C592574(0, v2, 1, v0);
}

uint64_t sub_22C36A96C()
{

  return swift_getWitnessTable();
}

__n128 sub_22C36AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a12, char a13)
{
  *v12 = a9;
  v12[1] = a10;
  result = *(&a10 + 9);
  *(v12 + 25) = *(&a10 + 9);
  return result;
}

void sub_22C36AAA0()
{
  v2 = v0[43];
  *(v1 - 128) = v0[46];
  *(v1 - 120) = v2;
  v3 = v0[39];
  *(v1 - 112) = v0[40];
  *(v1 - 104) = v3;
}

uint64_t sub_22C36AB58()
{

  return swift_allocObject();
}

uint64_t sub_22C36ABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_22C90AD4C();
}

uint64_t sub_22C36AC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 + 104);
  *(v10 - 96) = *(v9 + 128);
  *(v10 - 88) = v12;
}

uint64_t sub_22C36ACEC(uint64_t result)
{
  *(v3 - 128) = v1;
  *(v3 - 104) = v2 + 16;
  *(v3 - 96) = v2;
  *(v3 - 120) = v2 + 32;
  *(v3 - 112) = result;
  return result;
}

void sub_22C36AD70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_22C36ADD0()
{
  STACK[0x200] = v0[123];
  STACK[0x208] = v0[122];
  STACK[0x210] = v0[121];
  STACK[0x218] = v0[118];
  STACK[0x220] = v0[117];
  STACK[0x228] = v0[116];
  STACK[0x230] = v0[113];
  STACK[0x238] = v0[110];
  STACK[0x240] = v0[109];
  STACK[0x248] = v0[108];
  STACK[0x250] = v0[107];
  STACK[0x258] = v0[104];
  STACK[0x260] = v0[101];
  STACK[0x268] = v0[100];
  STACK[0x270] = v0[97];
  STACK[0x278] = v0[94];
  STACK[0x280] = v0[93];
  STACK[0x288] = v0[90];
  STACK[0x290] = v0[87];
  STACK[0x298] = v0[86];
  STACK[0x2A0] = v0[83];
  STACK[0x2A8] = v0[82];
  STACK[0x2B0] = v0[79];
  STACK[0x2B8] = v0[76];
  STACK[0x2C0] = v0[75];
  STACK[0x2C8] = v0[74];
  STACK[0x2D0] = v0[73];
  STACK[0x2D8] = v0[72];
  STACK[0x2E0] = v0[71];
  STACK[0x2E8] = v0[70];
  STACK[0x2F0] = v0[69];
  STACK[0x2F8] = v0[66];
  STACK[0x300] = v0[65];
}

uint64_t sub_22C36B084()
{
  result = v0[193];
  STACK[0x200] = v0[98];
  STACK[0x208] = v0[97];
  STACK[0x210] = v0[96];
  STACK[0x218] = v0[95];
  STACK[0x220] = v0[94];
  STACK[0x228] = v0[91];
  STACK[0x230] = v0[90];
  STACK[0x238] = v0[89];
  STACK[0x240] = v0[88];
  STACK[0x248] = v0[87];
  STACK[0x250] = v0[84];
  STACK[0x258] = v0[83];
  STACK[0x260] = v0[82];
  STACK[0x268] = v0[81];
  STACK[0x270] = v0[80];
  STACK[0x278] = v0[79];
  return result;
}

void sub_22C36B2A8()
{
  STACK[0x200] = v0[75];
  STACK[0x208] = v0[74];
  STACK[0x210] = v0[73];
  STACK[0x218] = v0[70];
  STACK[0x220] = v0[69];
  STACK[0x228] = v0[66];
  v1 = v0[62];
  STACK[0x230] = v0[63];
  STACK[0x238] = v1;
  STACK[0x240] = v0[59];
  STACK[0x248] = v0[56];
}

uint64_t sub_22C36B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28211F310](&a9, a2, a2, v9, v9);
}

uint64_t sub_22C36B514()
{

  return sub_22C90B32C();
}

void sub_22C36B634()
{
  v2 = v0[47];
  *(v1 - 184) = v0[48];
  *(v1 - 176) = v2;
  v3 = v0[43];
  *(v1 - 168) = v0[44];
  *(v1 - 160) = v3;
  v4 = v0[41];
  *(v1 - 152) = v0[42];
  *(v1 - 144) = v4;
  v6 = v0[36];
  v5 = v0[37];
  *(v1 - 136) = v0[40];
  *(v1 - 128) = v5;
  v7 = v0[33];
  *(v1 - 120) = v6;
  *(v1 - 112) = v7;
}

unint64_t sub_22C36B6D8()
{
  v3 = *(v2 - 72);
  *(v3 + 16) = v0;
  return v3 + ((*(*(v2 - 112) + 80) + 32) & ~*(*(v2 - 112) + 80)) + *(*(v2 - 112) + 72) * v1;
}

uint64_t sub_22C36B7B8()
{
  *v0 = 0x8000000000000000;

  return sub_22C36E2BC(v2, v1);
}

uint64_t sub_22C36B7E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = v2;
  *(result + 32) = 2;
  return result;
}

uint64_t sub_22C36B80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 112) = *(a1 + a2);
}

uint64_t sub_22C36B8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v9[50];
  *(v10 - 256) = v9[51];
  *(v10 - 248) = v12;
  v14 = v9[43];
  v13 = v9[44];
  *(v10 - 240) = v9[47];
  *(v10 - 232) = v13;
  v15 = v9[40];
  *(v10 - 224) = v14;
  *(v10 - 216) = v15;
  v16 = v9[34];
  *(v10 - 208) = v9[37];
  *(v10 - 200) = v16;
  v18 = v9[27];
  v17 = v9[28];
  *(v10 - 192) = v9[31];
  *(v10 - 184) = v17;
  v20 = v9[23];
  v19 = v9[24];
  *(v10 - 176) = v18;
  *(v10 - 168) = v19;
  v22 = v9[21];
  v21 = v9[22];
  *(v10 - 160) = v20;
  *(v10 - 152) = v21;
  v23 = v9[20];
  *(v10 - 144) = v22;
  *(v10 - 136) = v23;
  v24 = v9[16];
  *(v10 - 128) = v9[17];
  *(v10 - 120) = v24;
  v25 = v9[10];
  *(v10 - 112) = v9[13];
  *(v10 - 104) = v25;
}

uint64_t sub_22C36BAB8()
{

  return swift_allocObject();
}

void sub_22C36BAE0()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C36BB14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_22C36BB4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22C3A5908(a3, a4);
}

uint64_t sub_22C36BB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90AE4C();
}

uint64_t sub_22C36BBD8()
{

  return sub_22C3F956C(v0, type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface);
}

uint64_t sub_22C36BC30()
{

  return swift_slowAlloc();
}

uint64_t sub_22C36BC64(uint64_t a1, uint64_t a2)
{

  return sub_22C90B36C();
}

uint64_t sub_22C36BCB0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return MEMORY[0x2821FC310](va, v3, v3, a1);
}

uint64_t sub_22C36BD04()
{

  return swift_beginAccess();
}

uint64_t sub_22C36BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22C36DD28(&a9, v9, v10);
}

uint64_t sub_22C36BD64()
{

  return sub_22C4D6B50(v0, type metadata accessor for FullPlannerGMSClientConfiguration);
}

uint64_t sub_22C36BD9C@<X0>(int a1@<W8>)
{
  *(v1 + 48) = a1;

  return sub_22C901EEC();
}

uint64_t (*sub_22C36BDBC(void *a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v3;
  return sub_22C4E717C;
}

void sub_22C36BDEC()
{

  sub_22C591324();
}

void sub_22C36BE40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

size_t sub_22C36BF48(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_22C36BFA0(uint64_t a1)
{
  *(v1 + 216) = a1;
  *v2 = *(v1 + 144);
}

uint64_t sub_22C36C080(uint64_t a1)
{

  return sub_22C370B74(a1, 1, v1);
}

void *sub_22C36C098(void *a1)
{

  return sub_22C5F0048(a1, 15);
}

void sub_22C36C0C0()
{
  v2 = v0[56];
  *(v1 - 128) = v0[57];
  *(v1 - 120) = v2;
  v3 = v0[52];
  *(v1 - 112) = v0[55];
  *(v1 - 104) = v3;
  *(v1 - 96) = v0[49];
}

uint64_t sub_22C36C168@<X0>(uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v23 - 256) = v21;
  *(v23 - 248) = a9;
  v25 = v22[48];
  *(v23 - 240) = v22[49];
  *(v23 - 232) = v25;
  v27 = v22[41];
  v26 = v22[42];
  *(v23 - 224) = v22[45];
  *(v23 - 216) = v26;
  v29 = v22[39];
  v28 = v22[40];
  *(v23 - 208) = v27;
  *(v23 - 200) = v28;
  v31 = v22[37];
  v30 = v22[38];
  *(v23 - 192) = v29;
  *(v23 - 184) = v30;
  v33 = v22[35];
  v32 = v22[36];
  *(v23 - 176) = v31;
  *(v23 - 168) = v32;
  v34 = v22[34];
  *(v23 - 160) = v33;
  *(v23 - 152) = v34;
  v35 = v22[28];
  *(v23 - 144) = v22[31];
  *(v23 - 136) = v35;
  v36 = v22[22];
  *(v23 - 128) = v22[25];
  *(v23 - 120) = v36;
  v37 = v22[16];
  *(v23 - 112) = v22[19];
  *(v23 - 104) = v37;
  *(v23 - 96) = v22[13];
}

void sub_22C36C1EC(uint64_t a1)
{

  sub_22C71D15C();
}

__n128 sub_22C36C270(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

uint64_t sub_22C36C27C(uint64_t a1)
{

  return sub_22C75A6D4(a1, v1, type metadata accessor for JointResolution.DeviceContext);
}

void sub_22C36C30C()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C36C4C8()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C36C4E8(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_22C36C594(uint64_t a1, uint64_t a2)
{

  sub_22C590270(a1, a2, 1, v2);
}

uint64_t ToolboxResources.__allocating_init(toolbox:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v4 + 32))(v2 + v3, a1);
  return v2;
}

uint64_t FullPlannerService.init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = a1;
  sub_22C36C730(a2, v3 + 72);
  *(v3 + 112) = a3;
  return v3;
}

uint64_t sub_22C36C730(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FullPlannerService.__allocating_init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FullPlannerService.init(toolboxResources:toolExecutionSession:identityChain:)(a1, a2, a3);
  return v6;
}

uint64_t ToolboxResources.toolbox.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ToolboxResources(uint64_t a1)
{
  result = qword_281434500;
  if (!qword_281434500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C36C8C0()
{
}

uint64_t PlanOverridesService.init(toolbox:)()
{
  sub_22C3869F0();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F98];
  *(v1 + 120) = 0;
  v2 = (v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_22C90077C();
  sub_22C36A748();
  sub_22C36C640(v3, v4, v5, v6);
  v7 = (v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_assetVersion);
  *v7 = 4271950;
  v7[1] = 0xE300000000000000;
  v8 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDuration;
  swift_getKeyPath();
  sub_22C901F3C();

  *(v1 + v8) = v13;
  v9 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDurationVariation;
  swift_getKeyPath();
  sub_22C901F3C();

  *(v1 + v9) = v13;
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v11 + 32))(v1 + v10, v0);
  return v1;
}

uint64_t sub_22C36CA0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901E2C();
  *a1 = result;
  return result;
}

uint64_t sub_22C36CA38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901E5C();
  *a1 = result;
  return result;
}

uint64_t sub_22C36CA70(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_22C36CA94(uint64_t a1)
{

  return sub_22C4ED860(a1, v2, v1);
}

uint64_t sub_22C36CB04(uint64_t a1)
{

  return sub_22C36DD28(a1, v1, v2);
}

void sub_22C36CB64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22C36CB90()
{
  *(v3 - 272) = v0;
  *(v3 - 280) = v1;
  *(v3 - 288) = v2;
}

uint64_t sub_22C36CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_22C36CBE0(id a1)
{

  return sub_22C8258C8(0, v1, a1);
}

uint64_t PlanOverridesService.__allocating_init(toolbox:)()
{
  swift_allocObject();
  sub_22C37BB14();
  PlanOverridesService.init(toolbox:)();
  return v0;
}

double sub_22C36CCD8@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  return result;
}

uint64_t PlanResolverService.init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[4] = a4;
  a8[5] = a6;
  v14 = sub_22C36D548(a8 + 1);
  v18 = *(a4 - 8);
  (*(v18 + 16))(v14, a2, a4);
  a8[9] = a5;
  a8[10] = a7;
  v15 = sub_22C36D548(a8 + 6);
  (*(*(a5 - 8) + 32))(v15, a3, a5);
  v16 = *(v18 + 8);

  return v16(a2, a4);
}

void *sub_22C36CECC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v18 = a6;
  v19 = a7;
  v13 = sub_22C36D548(&v17);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  swift_defaultActor_initialize();
  bzero(a5 + 26, 0xB0uLL);
  v14 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock;
  v15 = sub_22C3A5908(&qword_27D9BB570, &qword_22C92D210);
  sub_22C36C640(a5 + v14, 1, 1, v15);
  a5[14] = a1;
  sub_22C36C730(a2, (a5 + 15));
  a5[20] = a3;
  sub_22C36C730(&v17, (a5 + 21));
  return a5;
}

uint64_t ResponseGenerationService.__allocating_init(toolboxResources:toolExecutionSession:identityChain:featureStoreService:)()
{
  sub_22C37DAA8();
  v1 = swift_allocObject();
  sub_22C36D1E4(v0, *(v0 + 24));
  sub_22C8D51E8();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v4 = sub_22C8D51D0(v3);
  v5(v4);
  sub_22C8D5150();
  v6 = sub_22C37BB14();
  sub_22C36FF94(v6);
  return v1;
}

BOOL sub_22C36D08C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C36D0D4()
{

  return swift_task_alloc();
}

uint64_t sub_22C36D148(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_22C36D190()
{
  *(v1 + 296) = v0;

  return sub_22C900F8C();
}

uint64_t sub_22C36D1E4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22C36D240()
{

  return swift_slowAlloc();
}

uint64_t sub_22C36D2B4@<X0>(uint64_t a1@<X8>)
{
  sub_22C374168((a1 + 120), *(a1 + 144));

  return sub_22C90887C();
}

uint64_t sub_22C36D2F4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_22C36D300@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 + a2) |= v2;
  *(*(v3 + 48) + 8 * result) = v5;
  ++*(v3 + 16);
  return result;
}

uint64_t sub_22C36D354()
{

  return sub_22C90B64C();
}

uint64_t sub_22C36D3C0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 664) = a1 & 0xFFFFFFFFFFFFLL | 0x7AC4000000000000;
}

void sub_22C36D418(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_22C36D438()
{
}

void sub_22C36D468()
{

  sub_22C8892F4();
}

uint64_t QueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:contextRetrieval:)()
{
  sub_22C38ABF4();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v4;
  *(v1 + 136) = v3;
  v6 = *(v2 + 16);
  *(v1 + 144) = *v2;
  *(v1 + 160) = v6;
  *(v1 + 176) = *(v2 + 32);
  sub_22C36C730(v0, v1 + 184);
  return v1;
}

uint64_t QueryDecorationService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:contextRetrieval:)()
{
  sub_22C38ABF4();
  v0 = swift_allocObject();
  QueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:contextRetrieval:)();
  return v0;
}

uint64_t *sub_22C36D548(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_22C36D628(uint64_t a1)
{
  *(v3 + 40) = a1;
  sub_22C36C640(v2, 1, 1, a1);
  *(v3 + 88) = *(v1 + 20);

  return sub_22C90068C();
}

void sub_22C36D69C()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C36D704()
{

  return sub_22C90639C();
}

uint64_t sub_22C36D798(uint64_t a1)
{

  return sub_22C36DD28(a1, v1, v2);
}

uint64_t sub_22C36D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_22C36C730(&a10, v10);
}

void sub_22C36D84C(uint64_t a1@<X8>)
{
  *(a1 - 32) = v1;
  *(a1 - 24) = v2;
  *(a1 - 16) = *(v3 - 280);
}

void *sub_22C36D8D4@<X0>(void *a1@<X8>)
{
  result = a1;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_22C36D8E8()
{
  result = v0;
  *(v1 - 160) = v0;
  return result;
}

uint64_t sub_22C36D928()
{

  return sub_22C90AEFC();
}

void sub_22C36DA20()
{

  JUMPOUT(0x2318B7850);
}

void sub_22C36DA64()
{
  v3 = v1[50];
  v4 = v1[51];
  *(v2 - 256) = v0;
  *(v2 - 248) = v4;
  *(v2 - 240) = v3;
  v5 = v1[44];
  *(v2 - 232) = v1[47];
  *(v2 - 224) = v5;
  v6 = v1[38];
  *(v2 - 216) = v1[41];
  *(v2 - 208) = v6;
  v7 = v1[31];
  v8 = v1[32];
  *(v2 - 200) = v1[35];
  *(v2 - 192) = v8;
  *(v2 - 184) = v7;
  v9 = v1[25];
  *(v2 - 176) = v1[28];
  *(v2 - 168) = v9;
  v10 = v1[19];
  *(v2 - 160) = v1[22];
  *(v2 - 152) = v10;
  v11 = v1[15];
  *(v2 - 144) = v1[16];
  *(v2 - 136) = v11;
  v12 = v1[11];
  *(v2 - 128) = v1[12];
  *(v2 - 120) = v12;
  *(v2 - 112) = v1[8];
}

uint64_t sub_22C36DAF0()
{

  return sub_22C90B4FC();
}

BOOL sub_22C36DB24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22C36DB40(uint64_t a1@<X8>)
{

  sub_22C3B60C0(0, a1 + 1, 1);
}

__n128 sub_22C36DB60()
{
  v1 = *(v0 - 176);
  v3 = *(v0 - 208);
  result = *(v0 - 192);
  *(v0 - 144) = *(v0 - 224);
  *(v0 - 128) = v3;
  *(v0 - 112) = result;
  *(v0 - 96) = v1;
  return result;
}

uint64_t sub_22C36DB90(uint64_t a1)
{

  return sub_22C90A0BC();
}

BOOL sub_22C36DBFC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C36DC18@<X0>(uint64_t a1@<X8>)
{
  v2[60] = a1;
  v2[61] = v1;
  v4 = v2[9];
  v5 = v2[6];
  *(v3 - 88) = v2[7];
  return v4 + *(v5 + 48);
}

uint64_t sub_22C36DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_willThrow();
}

uint64_t FullPlannerService.deinit()
{
  sub_22C36DD28(v0 + 24, &qword_27D9BE070, &qword_22C91CE48);

  sub_22C36FF94((v0 + 72));

  return v0;
}

uint64_t sub_22C36DD28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22C3A5908(a2, a3);
  sub_22C36985C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C36DD80(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C70C980(a1, a2);
  sub_22C3A5908(v3, v4);
  sub_22C36985C();
  (*(v5 + 8))(v2);
  return v2;
}

char *sub_22C36DDD4()
{
  sub_22C376B84((v0 + 16), &qword_27D9C0990, &qword_22C929780);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);

  sub_22C36FF94(v0 + 21);
  sub_22C36FF94(v0 + 26);

  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime28QueryDecorationServiceCaller_clock;
  sub_22C90B10C();
  sub_22C36BBA8();
  (*(v2 + 8))(&v0[v1]);
  return v0;
}

uint64_t sub_22C36DE90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t type metadata accessor for FullPlannerHydrationArbiter(uint64_t a1)
{
  result = qword_281435138;
  if (!qword_281435138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FullPlannerService.__deallocating_deinit()
{
  FullPlannerService.deinit();

  return swift_deallocClassInstance();
}

uint64_t PlanOverridesService.__deallocating_deinit()
{
  PlanOverridesService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t PlanOverridesService.deinit()
{

  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);
  sub_22C36E030(*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore), *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 8), *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 16));
  sub_22C36DD28(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_userLocale, &qword_27D9BD820, &unk_22C9195C0);

  swift_defaultActor_destroy();
  return v0;
}

void sub_22C36E030(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t QueryDecorationService.__deallocating_deinit()
{
  QueryDecorationService.deinit();

  return MEMORY[0x282200960](v0);
}

void *QueryDecorationService.deinit()
{

  sub_22C36DD28(v0 + 144, &qword_27D9C06A0, &qword_22C929950);
  sub_22C36FF94((v0 + 184));
  swift_defaultActor_destroy();
  return v0;
}

void *QueryDecorator.deinit()
{

  sub_22C36FF94(v0 + 3);
  sub_22C36FF94(v0 + 8);
  sub_22C36FF94(v0 + 13);

  sub_22C36DD28((v0 + 21), &qword_27D9C01C8, &qword_22C9298B0);

  sub_22C36FF94(v0 + 27);
  return v0;
}

uint64_t QueryDecorator.__deallocating_deinit()
{
  QueryDecorator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C36E1A8()
{
  sub_22C36DDD4();

  return swift_deallocClassInstance();
}

uint64_t sub_22C36E200()
{
  v1 = sub_22C90A0EC();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_22C36E278(0, &qword_28142F9B8, 0x277D73B08);
  v3 = sub_22C90A5EC();

  return v3;
}

uint64_t sub_22C36E278(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_22C36E2E8()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22C374168(v0 + 4, v1);
  v3 = (*(v2 + 8))(v0[2], v0[3], v1, v2);
  sub_22C36E278(0, &qword_28142F968, 0x277D73B18);
  v4 = sub_22C909F0C();
  v5 = sub_22C36E2B8();
  v6 = 0;
LABEL_2:
  for (i = v6; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318B8460](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v3 + 8 * i + 32);
    }

    v9 = v8;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 factor];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = sub_22C36EB80(v10);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = [v9 level];
      if (v15)
      {
        v29 = v15;
        swift_isUniquelyReferenced_nonNull_native();
        v27 = sub_22C36E2BC(v13, v14);
        if (__OFADD__(v4[2], (v16 & 1) == 0))
        {
          goto LABEL_25;
        }

        v28 = v16;
        sub_22C3A5908(&qword_27D9C1660, &unk_22C92DF58);
        if (sub_22C90B15C())
        {
          v17 = sub_22C36E2BC(v13, v14);
          if ((v28 & 1) != (v18 & 1))
          {
            goto LABEL_28;
          }

          v19 = v17;
          if ((v28 & 1) == 0)
          {
LABEL_18:
            v4[(v19 >> 6) + 8] |= 1 << v19;
            v20 = (v4[6] + 16 * v19);
            *v20 = v13;
            v20[1] = v14;
            *(v4[7] + 8 * v19) = v29;

            v21 = v4[2];
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (!v22)
            {
              v4[2] = v23;
              goto LABEL_2;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v19 = v27;
          if ((v28 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v24 = v4[7];
        v25 = *(v24 + 8 * v19);
        *(v24 + 8 * v19) = v29;

        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C36E5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_22C63443C();
  a3(v10, a1, a2);
  v7 = sub_22C90B66C();

  return a4(a1, a2, v7);
}

uint64_t sub_22C36E65C(char a1)
{
  v2 = v1;
  sub_22C36E278(0, &qword_28142F968, 0x277D73B18);
  *(v2 + 72) = sub_22C909F0C();
  v4 = "INTELLIGENCE_FLOW_QUERY_DECORATOR";
  if ((a1 & 1) == 0)
  {
    v4 = "INTELLIGENCE_FLOW_PLAN_RESOLUTION";
  }

  *(v2 + 80) = xmmword_22C9114A0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 16) = 0xD000000000000021;
  *(v2 + 24) = (v4 - 32) | 0x8000000000000000;
  v5 = [objc_opt_self() clientWithIdentifier_];
  v6 = sub_22C36E278(0, &qword_28142F960, 0x277D73660);
  *(v2 + 56) = v6;
  *(v2 + 64) = &off_283FC3D68;
  *(v2 + 32) = v5;
  sub_22C374168((v2 + 32), v6);
  sub_22C374134();
  v7 = sub_22C36E2E8();
  swift_beginAccess();
  *(v2 + 72) = v7;

  sub_22C36E7C4(v7);

  return v2;
}

uint64_t sub_22C36E7C4(uint64_t a1)
{
  v3 = sub_22C9063DC();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000002BLL, 0x800000022C93A3D0);
  MEMORY[0x2318B7850](*(v1 + 16), *(v1 + 24));
  MEMORY[0x2318B7850](10272, 0xE200000000000000);
  v35 = *(a1 + 16);
  v5 = sub_22C90B47C();
  MEMORY[0x2318B7850](v5);

  MEMORY[0x2318B7850](670249, 0xE300000000000000);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(a1 + 56) + 8 * v13);
      v8 &= v8 - 1;
      v35 = 34;
      v36 = 0xE100000000000000;

      v18 = v17;
      MEMORY[0x2318B7850](v15, v16);

      MEMORY[0x2318B7850](2112034, 0xE300000000000000);
      v19 = [v18 description];
      v20 = sub_22C90A11C();
      v22 = v21;

      MEMORY[0x2318B7850](v20, v22);

      MEMORY[0x2318B7850](2570, 0xE200000000000000);
      MEMORY[0x2318B7850](v35, v36);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v23 = v32;
  sub_22C9040BC();
  v25 = v37;
  v24 = v38;

  v26 = sub_22C9063CC();
  v27 = sub_22C90AACC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    v30 = sub_22C36F9F4(v25, v24, &v35);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_22C366000, v26, v27, "%s", v28, 0xCu);
    sub_22C36FF94(v29);
    MEMORY[0x2318B9880](v29, -1, -1);
    MEMORY[0x2318B9880](v28, -1, -1);
  }

  else
  {
  }

  return (*(v33 + 8))(v23, v34);
}

uint64_t sub_22C36EB80(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

void sub_22C36ECEC()
{
  sub_22C374168((v1 + 192), v0);

  JUMPOUT(0x2318B4EB0);
}

uint64_t sub_22C36ED28(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_22C36ED74(uint64_t a1)
{

  return sub_22C909F7C();
}

__n128 sub_22C36EDDC(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

void sub_22C36EDE8()
{

  JUMPOUT(0x2318B8460);
}

unint64_t sub_22C36EF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22C90B4FC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_22C36EFB8()
{
  sub_22C36BA7C();
  v1 = v0;
  v74 = v2;
  v4 = v3;
  v71 = v5;
  v76 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_22C9063DC();
  sub_22C369824();
  v77 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v69 = (&v65 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  v90 = &type metadata for QueryDecorationLoggerBuilder;
  v91 = &protocol witness table for QueryDecorationLoggerBuilder;
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
  v88 = &off_283FC1370;
  *&v86 = v4;
  type metadata accessor for QueryDecorationContextRegistry();
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v22 + 112) = MEMORY[0x277D84F90];
  v1[26] = v22;
  type metadata accessor for TrialManager();
  swift_allocObject();
  v23 = sub_22C36E65C(1);
  v1[30] = &type metadata for QueryDecorationFeatureControl;
  v1[31] = &off_283FC14D0;
  v73 = v1;
  v1[27] = v23;
  sub_22C90400C();

  v24 = sub_22C9063CC();
  v25 = sub_22C90AABC();

  v26 = os_log_type_enabled(v24, v25);
  v75 = v8;
  v70 = v10;
  v72 = v11;
  v68 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *&v83 = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_22C37BCF8("igenceflow.iftool");
    *(v27 + 12) = 2080;
    v28 = v8 == 0;
    v29 = v8;
    if (v8)
    {
      v30 = v10;
    }

    else
    {
      v30 = 0x3E6C696E3CLL;
    }

    if (v28)
    {
      v31 = 0xE500000000000000;
    }

    else
    {
      v31 = v29;
    }

    v32 = sub_22C36F9F4(v30, v31, &v83);

    *(v27 + 14) = v32;
    sub_22C3868B4(&dword_22C366000, v33, v34, "%s QueryDecorator initializer (clientApplicationIdentifier: %s)");
    swift_arrayDestroy();
    v11 = v72;
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v35 = (*(v77 + 8))(v21, v11);
  if (qword_281431278 != -1)
  {
    v35 = swift_once();
  }

  v36 = sub_22C36FAB8(v35);
  DecorationCache = type metadata accessor for QueryDecorationCache(0);
  v38 = v73;
  v73[21] = v36;
  *(v38 + 192) = DecorationCache;
  *(v38 + 200) = &off_283FC17B8;
  v77 = sub_22C379D54();

  sub_22C378AB0(v74, &v83);
  v39 = type metadata accessor for ContextRetrievalService();
  v40 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(&v83, v40 + 112);
  v84 = v39;
  v85 = &off_283FC1488;
  *&v83 = v40;
  type metadata accessor for ToolContextRetrievalService();
  v41 = swift_allocObject();
  v42 = sub_22C36D1E4(&v83, v39);
  v43 = *(v39 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v72 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = (&v65 - v72);
  v69 = *(v43 + 16);
  v69(&v65 - v72);
  v46 = *v45;
  v68 = v41;
  v41[5] = v39;
  v41[6] = &off_283FC1488;
  v41[2] = v46;

  sub_22C36FF94(&v83);
  v47 = v73;
  sub_22C3E8FB4((v73 + 21), &v83, &qword_27D9C01C8, &qword_22C9298B0);
  type metadata accessor for OnScreenContentRetrievalService();
  memset(v81, 0, sizeof(v81));
  v82 = 0;
  v48 = swift_allocObject();
  v49 = sub_22C9043BC();
  sub_22C3856A0(v49);

  v50 = v75;

  v67 = v40;

  v51 = sub_22C9043AC();
  v48[5] = v49;
  v48[6] = &protocol witness table for ContextRetrieval;
  v48[2] = v51;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78[3] = v39;
  v78[4] = &off_283FC1488;
  v78[0] = v40;
  DecorationServiceCaller = type metadata accessor for QueryDecorationServiceCaller(0);
  v53 = sub_22C3856A0(DecorationServiceCaller);
  v54 = sub_22C36D1E4(v78, v39);
  v66 = &v65;
  MEMORY[0x28223BE20](v54);
  v55 = (&v65 - v72);
  v69(&v65 - v72);
  v56 = *v55;
  v57 = v68;

  v58 = v70;
  v59 = v50;
  v60 = v76;
  sub_22C378B10(v70, v59, v76, &v83, v56, v81, v48, v79, v57, v77, v53, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v62 = v61;
  sub_22C36FF94(v78);
  v84 = DecorationServiceCaller;
  v85 = &off_283FC1C08;

  *&v83 = v62;
  sub_22C36FF94(v74);
  sub_22C36C730(&v83, (v47 + 3));
  sub_22C36C730(&v89, (v47 + 8));
  sub_22C36C730(&v86, (v47 + 13));
  v47[2] = v71;
  v63 = v75;
  v47[18] = v58;
  v47[19] = v63;
  v47[20] = v60;
  sub_22C36CC48();
}

unint64_t sub_22C36F898(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22C380A10(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_22C90AFCC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22C36F998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22C36F9F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22C36F898(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_22C36F998(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_22C36FF94(v11);
  return v7;
}

uint64_t sub_22C36FB44()
{

  return swift_slowAlloc();
}

uint64_t sub_22C36FB5C()
{

  return swift_task_alloc();
}

uint64_t sub_22C36FB7C(uint64_t a1, uint64_t a2)
{
  *(v5 - 160) = v3 + 1;

  return sub_22C36C640(v4, a2, 1, v2);
}

BOOL sub_22C36FBB4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C36FBE4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void sub_22C36FC14(uint64_t a1, uint64_t a2)
{

  sub_22C591324();
}

void sub_22C36FC38()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C36FC80(uint64_t a1, uint64_t a2)
{

  return sub_22C90B41C();
}

unint64_t sub_22C36FCE8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000019, a1 | 0x8000000000000000, (v1 - 128));
}

uint64_t sub_22C36FE1C(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_22C90ABEC();
}

uint64_t sub_22C36FE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v25 = v21[43];
  v24 = v21[44];
  *(v22 - 176) = v20;
  *(v22 - 168) = v24;
  v27 = v21[41];
  v26 = v21[42];
  *(v22 - 160) = v25;
  *(v22 - 152) = v26;
  v28 = v21[40];
  *(v22 - 144) = v27;
  *(v22 - 136) = v28;
  v29 = v21[36];
  *(v22 - 128) = v21[37];
  *(v22 - 120) = v29;
  v30 = v21[30];
  v31 = v21[31];
  *(v22 - 112) = v21[33];
  *(v22 - 104) = v31;
  *(v22 - 96) = v30;
}

void sub_22C36FEC0()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C36FF20()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C36FF50@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return sub_22C90B26C();
}

uint64_t sub_22C36FF94(void *a1)
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

BOOL sub_22C370048(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C370060()
{

  return swift_slowAlloc();
}

uint64_t sub_22C3700B4(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_22C370148(uint64_t a1)
{

  return sub_22C472480(a1, v2, v1);
}

uint64_t sub_22C3701C8(uint64_t result)
{
  *(result + 16) = 4;
  *(result + 24) = 1;
  return result;
}

BOOL sub_22C37026C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C3702BC()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22C37034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = (*(a17 + 56) + 16 * v17);
  *v19 = a14;
  v19[1] = a15;
}

uint64_t sub_22C3703C0()
{
  v1 = *(v0 - 104);
  sub_22C374168((v0 - 128), v1);
  return v1;
}

uint64_t sub_22C3704D0()
{

  return swift_arrayInitWithCopy();
}

void sub_22C370510()
{

  JUMPOUT(0x2318B9880);
}

__n128 sub_22C370574()
{
  v1 = *(v0 - 136);
  *(v0 - 224) = *(v0 - 152);
  *(v0 - 208) = v1;
  result = *(v0 - 120);
  v3 = *(v0 - 104);
  *(v0 - 192) = result;
  *(v0 - 176) = v3;
  return result;
}

void sub_22C370594()
{

  JUMPOUT(0x2318B7850);
}

void sub_22C370600(uint64_t a1, uint64_t a2)
{

  sub_22C57ADA4();
}

uint64_t sub_22C370620(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_22C37068C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22C379DF8(v9 + v10, &a9, a3, a4);
}

uint64_t sub_22C370704()
{
}

uint64_t sub_22C370744(uint64_t a1)
{

  return sub_22C370B74(a1, 1, v1);
}

void sub_22C370868()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t sub_22C370944()
{
  result = *(v0 - 88);
  *(v0 - 128) = **(v0 - 96);
  return result;
}

uint64_t sub_22C37095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

__n128 *sub_22C37097C(__n128 *result, __n128 a2)
{
  *(v2 - 136) = result;
  result[1] = a2;
  return result;
}

void sub_22C3709A0()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C370A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

unint64_t sub_22C370A8C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000032, (a1 - 32) | 0x8000000000000000, (v1 - 80));
}

uint64_t sub_22C370B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_22C901F0C();
}

uint64_t sub_22C370B38()
{

  return sub_22C8D4D04(v0, type metadata accessor for DialogOutput);
}

void *sub_22C370B9C(uint64_t a1, unint64_t a2)
{
  v103 = a1;
  v83 = sub_22C90035C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v99 = v7 - v6;
  sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v86 = &v81 - v9;
  sub_22C36BA0C();
  v92 = sub_22C90046C();
  sub_22C369824();
  v100 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v82 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v84 = &v81 - v15;
  MEMORY[0x28223BE20](v14);
  v98 = &v81 - v16;
  sub_22C36BA0C();
  sub_22C901DDC();
  sub_22C369824();
  v96 = v18;
  v97 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v93 = v20 - v19;
  sub_22C36BA0C();
  sub_22C90210C();
  sub_22C369824();
  v94 = v22;
  v95 = v21;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v25 = v24 - v23;
  sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  v101 = sub_22C902D7C();
  sub_22C369824();
  v91 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v90 = v32 - v31;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369958();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v88 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C90405C();

  v38 = sub_22C9063CC();
  v39 = sub_22C90AABC();
  v102 = a2;

  v40 = os_log_type_enabled(v38, v39);
  v85 = v4;
  v89 = v34;
  if (v40)
  {
    v34 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v104 = v41;
    *v34 = 136315138;
    *(v34 + 4) = sub_22C36F9F4(v103, v102, &v104);
    _os_log_impl(&dword_22C366000, v38, v39, "Getting OTA preferences for locale %s", v34, 0xCu);
    sub_22C36FF94(v41);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v42 = sub_22C8B3AC0();
  v43(v42);
  sub_22C9020FC();
  v45 = v96;
  v44 = v97;
  v46 = v93;
  (*(v96 + 104))(v93, *MEMORY[0x277D1C250], v97);
  sub_22C9020EC();
  (*(v45 + 8))(v46, v44);
  (*(v94 + 8))(v25, v95);
  v47 = v101;
  v48 = sub_22C370B74(v28, 1, v101);
  v49 = v99;
  v50 = v100;
  v51 = v98;
  if (v48 == 1)
  {
    v52 = &qword_27D9BD698;
    v53 = &qword_22C9187B0;
    v54 = v28;
LABEL_7:
    sub_22C3770B0(v54, v52, v53);
    v59 = v88;
    sub_22C90405C();
    v60 = sub_22C9063CC();
    v61 = sub_22C90AABC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v104 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_22C36F9F4(0xD00000000000001DLL, 0x800000022C92C780, &v104);
      _os_log_impl(&dword_22C366000, v60, v61, "%s MobileAssets not available", v62, 0xCu);
      sub_22C36FF94(v63);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    v87(v59, v34);
    return 0;
  }

  v55 = v90;
  v56 = v91;
  (*(v91 + 32))(v90, v28, v47);
  v57 = v86;
  sub_22C902D5C();
  v58 = v92;
  if (sub_22C370B74(v57, 1, v92) == 1)
  {
    (*(v56 + 8))(v55, v47);
    v52 = &qword_27D9BB138;
    v53 = &qword_22C90DB70;
    v54 = v57;
    goto LABEL_7;
  }

  (*(v50 + 32))(v51, v57, v58);
  v103 = 0x800000022C939730;
  v104 = 0xD000000000000023;
  v105 = 0x800000022C939730;
  v66 = v85;
  v67 = *(v85 + 104);
  LODWORD(v102) = *MEMORY[0x277CC91D8];
  v68 = v83;
  v97 = v67;
  v67(v49);
  v69 = sub_22C3858B4();
  v70 = v50;
  v71 = v84;
  v96 = v69;
  sub_22C90043C();
  v95 = *(v66 + 8);
  v95(v49, v68);
  v72 = v68;
  v73 = [objc_opt_self() defaultManager];
  sub_22C9003FC();
  v74 = sub_22C90A0EC();

  v75 = [v73 fileExistsAtPath_];

  if (v75)
  {
    v104 = 0xD000000000000023;
    v105 = v103;
    v97(v49, v102, v72);
    v76 = v82;
    sub_22C90043C();
    v95(v49, v72);
    v64 = sub_22C37A508(v76);
    v77 = *(v70 + 8);
    v78 = v92;
    v77(v76, v92);
    v77(v71, v78);
    v77(v51, v78);
    (*(v91 + 8))(v90, v101);
    return v64;
  }

  v79 = *(v70 + 8);
  v80 = v92;
  v79(v71, v92);
  v79(v51, v80);
  (*(v91 + 8))(v90, v101);
  return 0;
}

uint64_t sub_22C3715C4(void x0_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_22C37162C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_22C90AD4C();
}

uint64_t sub_22C371664()
{

  return sub_22C4207B0(v0, type metadata accessor for PlanPostProcessor);
}

uint64_t sub_22C3717CC()
{

  return sub_22C36DD28(v0 + v3, v1, v2);
}

uint64_t sub_22C3717E8()
{

  return sub_22C4D0CC0(v0, type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration);
}

uint64_t sub_22C37188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = v19[37];
  *(v20 - 112) = v19[40];
  *(v20 - 104) = v22;
  v23 = v19[31];
  *(v20 - 96) = v19[34];
  *(v20 - 88) = v23;
}

void sub_22C371988(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C3719D8()
{

  return sub_22C588FBC(v0, v1);
}

uint64_t sub_22C371A38()
{
  v3 = (v1 + 2 * v0);
  *v3 = 0x72656E74726170;
  v3[1] = 0xE700000000000000;
  return *(v2 - 160);
}

uint64_t sub_22C371A68()
{
  v2 = *(v0 + 32);
  result = *(v1 - 96);
  *(v1 - 120) = *(v0 + 72);
  *(v1 - 112) = v2;
  return result;
}

uint64_t sub_22C371B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = v20[61];
  STACK[0x308] = v20[62];
  v24 = v20[60];
  *(v21 - 256) = v23;
  *(v21 - 248) = v24;
  v25 = v20[57];
  *(v21 - 240) = v20[58];
  *(v21 - 232) = v25;
  v27 = v20[50];
  v26 = v20[51];
  *(v21 - 224) = v20[54];
  *(v21 - 216) = v26;
  v28 = v20[49];
  *(v21 - 208) = v27;
  *(v21 - 200) = v28;
  v30 = v20[43];
  v29 = v20[44];
  *(v21 - 192) = v20[47];
  *(v21 - 184) = v29;
  v32 = v20[41];
  v31 = v20[42];
  *(v21 - 176) = v30;
  *(v21 - 168) = v31;
  v34 = v20[37];
  v33 = v20[38];
  *(v21 - 160) = v32;
  *(v21 - 152) = v33;
  v36 = v20[33];
  v35 = v20[34];
  *(v21 - 144) = v34;
  *(v21 - 136) = v35;
  v38 = v20[31];
  v37 = v20[32];
  *(v21 - 128) = v36;
  *(v21 - 120) = v37;
  v39 = v20[29];
  v40 = v20[30];
  *(v21 - 112) = v38;
  *(v21 - 104) = v40;
  *(v21 - 96) = v39;
}

uint64_t sub_22C371BC4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C371C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

void sub_22C371C50()
{
  v2 = v0[32];
  *(v1 - 224) = v0[33];
  *(v1 - 216) = v2;
  v3 = v0[28];
  *(v1 - 208) = v0[29];
  *(v1 - 200) = v3;
  v4 = v0[24];
  *(v1 - 192) = v0[25];
  *(v1 - 184) = v4;
  *(v1 - 176) = v0[23];
}

uint64_t sub_22C371CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36C640(a1, 1, 1, a4);

  return sub_22C90083C();
}

uint64_t sub_22C371E18(uint64_t a1)
{

  return sub_22C7FB5AC(a1, type metadata accessor for LooselyComparableRetrievedTool);
}

uint64_t sub_22C371E3C()
{

  return sub_22C909F0C();
}

uint64_t sub_22C371E6C(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_22C371E88()
{

  return swift_beginAccess();
}

uint64_t sub_22C371ED0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22C371F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 88) = *(v8 + 40);
}

void sub_22C371F58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C371FE4(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C372014()
{

  return swift_slowAlloc();
}

uint64_t sub_22C372098()
{
  sub_22C36A674(*(v3 - 200));

  return sub_22C3AC228(v2, v0, v1);
}

uint64_t sub_22C372138()
{

  return type metadata accessor for PromptMapperResolver(0);
}

uint64_t sub_22C372170()
{
  *(v0 + 16) = v3;
  *(v0 + 8 * v1 + 32) = v2;

  return sub_22C3DB9B0(v0);
}

void sub_22C3721A8(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t sub_22C37228C()
{

  return type metadata accessor for PromptTreeIdentifier(0);
}

uint64_t sub_22C372300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 88) = *(v8 + 216);
}

uint64_t sub_22C3723A8()
{
  result = v0;
  *(v3 - 152) = v2;
  *(v3 - 168) = v1;
  return result;
}

uint64_t sub_22C3724F4(unint64_t *a1)
{
  v2 = MEMORY[0x277D1F108];

  return sub_22C386908(a1, v2);
}

uint64_t sub_22C372538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_22C901F0C();
}

uint64_t sub_22C3725D8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

double sub_22C372600()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = -1;
  return result;
}

unint64_t sub_22C372678(uint64_t a1)
{
  *(v1 - 112) = 10;
  *(v1 - 104) = 0xE100000000000000;
  *(v1 - 128) = 4091452;
  *(v1 - 120) = 0xE300000000000000;

  return sub_22C3858B4();
}

uint64_t sub_22C37272C()
{

  return sub_22C472434(v1, v2, v0);
}

double sub_22C37274C()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

void *sub_22C372768@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[2] = v3;
  result[3] = a2;
  result[4] = v2;
  result[5] = (v4 - 32) | 0x8000000000000000;
  *v5 = result;
  return result;
}

uint64_t sub_22C372818(uint64_t a1)
{

  return swift_once();
}

void sub_22C37285C()
{
  v2 = *(v0 + 16) + 1;

  sub_22C591F6C(0, v2, 1, v0);
}

__n128 sub_22C3728DC()
{
  v1 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v1;
  result = *(v0 - 192);
  v3 = *(v0 - 176);
  *(v0 - 256) = result;
  *(v0 - 240) = v3;
  return result;
}

uint64_t sub_22C372900@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = v2;
  return result;
}

void sub_22C372934()
{

  sub_22C591324();
}

uint64_t sub_22C37299C()
{

  return sub_22C9062CC();
}

void sub_22C3729C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C3729F0()
{

  return sub_22C9003BC();
}

char *sub_22C372A18(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 120) = a1;
  return a1 + v2;
}

void sub_22C372A84()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C372AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = v20[48];
  v23 = v20[49];
  *(v21 - 256) = v20[50];
  *(v21 - 248) = v23;
  v26 = v20[45];
  v25 = v20[46];
  *(v21 - 240) = v24;
  *(v21 - 232) = v25;
  v28 = v20[41];
  v27 = v20[42];
  *(v21 - 224) = v26;
  *(v21 - 216) = v27;
  v30 = v20[39];
  v29 = v20[40];
  *(v21 - 208) = v28;
  *(v21 - 200) = v29;
  v32 = v20[35];
  v31 = v20[36];
  *(v21 - 192) = v30;
  *(v21 - 184) = v31;
  v33 = v20[32];
  *(v21 - 176) = v32;
  *(v21 - 168) = v33;
  v35 = v20[25];
  v34 = v20[26];
  *(v21 - 160) = v20[29];
  *(v21 - 152) = v34;
  v37 = v20[23];
  v36 = v20[24];
  *(v21 - 144) = v35;
  *(v21 - 136) = v36;
  v38 = v20[20];
  *(v21 - 128) = v37;
  *(v21 - 120) = v38;
  v39 = v20[16];
  *(v21 - 112) = v20[17];
  *(v21 - 104) = v39;
  *(v21 - 96) = v20[13];
}

uint64_t sub_22C372B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = v20[52];
  v23 = v20[53];
  *(v21 - 256) = v20[56];
  *(v21 - 248) = v23;
  v26 = v20[48];
  v25 = v20[49];
  *(v21 - 240) = v24;
  *(v21 - 232) = v25;
  v27 = v20[45];
  *(v21 - 224) = v26;
  *(v21 - 216) = v27;
  v28 = v20[41];
  *(v21 - 208) = v20[42];
  *(v21 - 200) = v28;
  v29 = v20[39];
  *(v21 - 192) = v20[40];
  *(v21 - 184) = v29;
  v30 = v20[37];
  *(v21 - 176) = v20[38];
  *(v21 - 168) = v30;
  v31 = v20[35];
  *(v21 - 160) = v20[36];
  *(v21 - 152) = v31;
  v32 = v20[31];
  *(v21 - 144) = v20[34];
  *(v21 - 136) = v32;
  v33 = v20[25];
  *(v21 - 128) = v20[28];
  *(v21 - 120) = v33;
  v34 = v20[19];
  *(v21 - 112) = v20[22];
  *(v21 - 104) = v34;
  v35 = v20[13];
  *(v21 - 96) = v20[16];
  *(v21 - 88) = v35;
}

uint64_t sub_22C372BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 96);
  v7 = *(v4 - 112);
  *a2 = *(v4 - 128);
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;

  return swift_willThrow();
}

void sub_22C372C24()
{

  JUMPOUT(0x2318B7850);
}

id sub_22C372C44()
{

  return sub_22C5F2214(v0, 65568);
}

id sub_22C372C6C()
{

  return [v2 (v3 + 2040)];
}

void sub_22C372C8C()
{
  *(v2 - 248) = (v0 + 63) >> 6;
  *(v2 - 240) = v1;
  v3 = *(v2 - 176);
  *(v2 - 232) = v3 + 16;
  v4 = *(v2 - 96);
  *(v2 - 120) = v3 + 32;
  *(v2 - 136) = v4 + 16;
  *(v2 - 128) = v4 + 32;
  *(v2 - 216) = v3 + 8;
  *(v2 - 208) = v4 + 8;
}

uint64_t sub_22C372D24()
{

  return sub_22C76C7B4(v0, type metadata accessor for DateComponentsResolver);
}

unint64_t sub_22C372DA4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000035, (a1 - 32) | 0x8000000000000000, (v1 - 112));
}

unint64_t sub_22C372E3C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000001FLL, a1 | 0x8000000000000000, (v1 - 72));
}

uint64_t sub_22C372E5C(uint64_t a1, uint64_t a2)
{

  return sub_22C90AD7C();
}

uint64_t sub_22C372EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C372F94(&unk_22C929B28, v20);
}

uint64_t sub_22C372F94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_22C372FB0()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C373010()
{
  v3 = v0[40];
  *(v2 - 128) = v0[41];
  *(v2 - 120) = v3;
  v4 = v0[34];
  *(v2 - 112) = v0[37];
  *(v2 - 104) = v4;
  v5 = v0[29];
  *(v2 - 96) = v0[32];
  *(v2 - 88) = v5;
  return v1;
}

uint64_t sub_22C373084@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  *a2 = a7;
  a2[1] = a6;
  a2[2].n128_u64[0] = a5;
  *(v7 - 120) = a1;

  return swift_willThrow();
}

uint64_t sub_22C3730BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_22C3730D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_22C3731C0(uint64_t a1)
{

  return sub_22C3DA7AC(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t sub_22C3731E4()
{

  return sub_22C3E0180(v0, type metadata accessor for RenderableTool);
}

uint64_t sub_22C3732B8()
{

  return sub_22C45B5A8(v0, type metadata accessor for RenderableTool);
}

uint64_t sub_22C373368()
{

  return swift_getWitnessTable();
}

void sub_22C373428(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[2].n128_u64[0] = 0;
  *v3 = a2;
  v3[1] = a2;
}

void *sub_22C37346C(void *result)
{
  result[4] = 0x794D646E6946;
  result[5] = 0xE600000000000000;
  result[6] = 0x74694B656D6F48;
  result[7] = 0xE700000000000000;
  return result;
}

void sub_22C3734D0(uint64_t a1, char a2)
{
  sub_22C50AF74(*(v2 - 552), a2);
  v3 = *(v2 - 672) & 1;
  v4 = *(v2 - 600);
  v5 = *(v2 - 544);
  v6 = *(v2 - 536);
  v7 = *(v2 - 520);
  v8 = *(v2 - 664);

  sub_22C456CE4(v4, v5, v6, v7, v8, v3);
}

void sub_22C373608()
{
  *(v3 - 136) = v0;
  *(v3 - 128) = v1;
  *(v3 - 104) = v2 + 32;
}

uint64_t sub_22C373854()
{

  return sub_22C90B41C();
}

uint64_t sub_22C373880()
{

  return swift_allocObject();
}

uint64_t sub_22C3738DC()
{

  return swift_beginAccess();
}

uint64_t sub_22C3739A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = v20[53];
  v23 = v20[54];
  *(v21 - 256) = v20[57];
  *(v21 - 248) = v23;
  v26 = v20[49];
  v25 = v20[50];
  *(v21 - 240) = v24;
  *(v21 - 232) = v25;
  v28 = v20[45];
  v27 = v20[46];
  *(v21 - 224) = v26;
  *(v21 - 216) = v27;
  v30 = v20[43];
  v29 = v20[44];
  *(v21 - 208) = v28;
  *(v21 - 200) = v29;
  v32 = v20[39];
  v31 = v20[40];
  *(v21 - 192) = v30;
  *(v21 - 184) = v31;
  v33 = v20[38];
  *(v21 - 176) = v32;
  *(v21 - 168) = v33;
  v35 = v20[32];
  v34 = v20[33];
  *(v21 - 160) = v20[36];
  *(v21 - 152) = v34;
  v36 = v20[31];
  *(v21 - 144) = v35;
  *(v21 - 136) = v36;
  v38 = v20[24];
  v37 = v20[25];
  *(v21 - 128) = v20[28];
  *(v21 - 120) = v37;
  v39 = v20[22];
  *(v21 - 112) = v38;
  *(v21 - 104) = v39;
  *(v21 - 96) = v20[19];
}

uint64_t sub_22C373AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

void *sub_22C373AF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  result[5] = v3;
  result[6] = v2;
  result[7] = v3;
  result[8] = v2;
  return result;
}

uint64_t sub_22C373B30@<X0>(uint64_t a8@<X8>, uint64_t a9)
{
  *(v9 - 80) = a8;
}

uint64_t sub_22C373BCC(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C373C0C()
{

  return MEMORY[0x282176F80]();
}

void sub_22C373C4C()
{
  *(v4 - 168) = v3 + 16;
  *(v4 - 160) = v3;
  *(v4 - 184) = v0;
  *(v4 - 176) = v2 + 16;
  *(v4 - 152) = v1;
  *(v4 - 144) = v2;
  *(v4 - 128) = v2 + 32;
  *(v4 - 120) = v3 + 32;
}

uint64_t sub_22C373CC0()
{

  return sub_22C900F8C();
}

void sub_22C373CFC()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C373D68()
{
  sub_22C373D9C();

  return swift_deallocClassInstance();
}

void *sub_22C373D9C()
{

  sub_22C36FF94(v0 + 4);

  sub_22C373DE0(v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);
  return v0;
}

void sub_22C373DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_22C373E78(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  a1(0);
  sub_22C373F18(a2, 255, a3, a4);
  sub_22C3870A4();
  return sub_22C90411C();
}

uint64_t sub_22C373F18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22C373F90(uint64_t a1, void *a2)
{
  result = sub_22C373FC0(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_22C373FC0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_22C374010(a1);
  return v2;
}

void *sub_22C374010(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F98];
  v1[14] = MEMORY[0x277D84F98];
  type metadata accessor for TrialManager();
  swift_allocObject();
  sub_22C36E65C(1);
  sub_22C37931C();
  v5 = v4;

  sub_22C9040FC();
  sub_22C36985C();
  (*(v6 + 8))(a1);
  v1[15] = v5;
  v1[16] = v3;
  type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C36A748();
  sub_22C36C640(v7, v8, v9, v10);
  return v1;
}

void *sub_22C374168(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22C3741B4()
{
  type metadata accessor for PlanOverridesService(0);
  sub_22C3A5908(&qword_27D9C1428, &qword_22C92D608);
  v0 = sub_22C3A5908(&qword_27D9C1430, &qword_22C92D610);
  return sub_22C8D520C(v0);
}

uint64_t sub_22C37420C()
{
  sub_22C3A5908(&qword_27D9C13F8, &qword_22C92D5D8);
  v0 = sub_22C3A5908(&qword_27D9C1400, &qword_22C92D5E0);
  return sub_22C8D520C(v0);
}

uint64_t sub_22C37425C()
{
  type metadata accessor for QueryDecorationService();
  sub_22C3A5908(&qword_27D9C13D8, &qword_22C92D5B8);
  v0 = sub_22C3A5908(&qword_27D9C13E0, &qword_22C92D5C0);
  return sub_22C8D520C(v0);
}

uint64_t sub_22C3742B4()
{
  type metadata accessor for ResponseGenerationService(0);
  sub_22C3A5908(&qword_27D9C13C0, &qword_22C92D5A8);
  sub_22C3A5908(&qword_27D9C13C8, &qword_22C92D5B0);
  return sub_22C90A1AC();
}

uint64_t type metadata accessor for ResponseGenerationService(uint64_t a1)
{
  result = qword_2814320D0;
  if (!qword_2814320D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C374360()
{
  type metadata accessor for FullPlannerService();
  sub_22C3A5908(&qword_27D9C1438, &qword_22C92D618);
  v0 = sub_22C3A5908(&qword_27D9C1440, &unk_22C92D620);
  return sub_22C8D520C(v0);
}

uint64_t sub_22C3743B4()
{
}

void sub_22C37441C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_22C374458()
{

  return sub_22C90364C();
}

uint64_t sub_22C374478()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C3744D4()
{

  return sub_22C90AEEC();
}

uint64_t sub_22C374514(uint64_t a1, uint64_t a2)
{

  return sub_22C763800(a1, a2, v2, v6, v5, v4, v3);
}

id sub_22C3745A8(void *a1)
{

  return [a1 (v1 + 120)];
}

void sub_22C3745DC()
{
  *(v2 - 128) = v1 + 32;
  *(v2 - 120) = v1 + 16;
  *(v2 - 136) = v0;
}

uint64_t sub_22C3745F8()
{

  return swift_unknownObjectRetain_n();
}

_OWORD *sub_22C374614()
{

  return sub_22C456E34((v0 - 120), (v0 - 160));
}

uint64_t static PlanOverridesService.isEnabled()()
{
  v0 = sub_22C90363C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277D1EB98], v0);
  v6 = sub_22C90362C();
  v7 = sub_22C36BBCC();
  v8(v7);
  return v6 & 1;
}

uint64_t sub_22C3747A0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C3A5908(&qword_27D9BE160, &qword_22C91D088);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22C374800@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8E0];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_22C37486C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C37524C;

  return PlanResolverService.setup(sessionState:)();
}

uint64_t sub_22C374948()
{

  return sub_22C3AFE44();
}

void sub_22C374980()
{
  v1 = *(v0 - 120);
  *(v0 - 200) = *(v0 - 128);
  v2 = *(v0 - 112);
  *(v0 - 216) = v1;
  *(v0 - 248) = v2;
}

uint64_t sub_22C3749B0(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_22C374A78@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_22C36F9F4(0xD000000000000023, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_22C374AE8()
{

  return swift_retain_n();
}

uint64_t sub_22C374B18(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_22C374B64()
{

  return sub_22C4AEBD0(v0, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
}

uint64_t sub_22C374BAC()
{

  return sub_22C901EFC();
}

uint64_t sub_22C374BC8(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for FullPlannerPreferences(0);
}

void sub_22C374C24()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t sub_22C374CB8()
{
}

uint64_t sub_22C374D38()
{

  return swift_allocObject();
}

uint64_t sub_22C374D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C36C640(a1, 1, 1, a4);
}

void sub_22C374D9C()
{
  *(v4 - 392) = v1 + 32;
  v5 = *(v4 - 344);
  *(v4 - 360) = v5 + 16;
  v6 = *(v4 - 336);
  *(v4 - 368) = v6 + 16;
  *(v4 - 272) = v6 + 32;
  *(v4 - 304) = v5 + 8;
  *(v4 - 312) = v6 + 8;
  *(v4 - 352) = v3;
  *(v4 - 328) = v5 + 32;
  *(v4 - 424) = v1;
  *(v4 - 288) = v2;
  *(v4 - 408) = v0;
  *(v4 - 416) = v0 + 56;
}

void sub_22C374F10(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1;
}

void sub_22C374F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_22C75BAC0();
}

uint64_t sub_22C374FAC()
{

  return sub_22C90184C();
}

uint64_t sub_22C375018()
{
  v3 = v0[130];
  *(v1 - 112) = v0[132];
  *(v1 - 104) = v3;
  *(v1 - 96) = v0[129];
  v4 = v0[127];
  v5 = v0[124];
  *(v1 - 144) = v0[123];
  *(v1 - 136) = v4;
  *(v1 - 160) = v0[116];
  *(v1 - 152) = v5;
  v6 = v0[112];
  *(v1 - 176) = v0[113];
  *(v1 - 168) = v6;
  v7 = v0[98];
  *(v1 - 192) = v0[99];
  *(v1 - 184) = v7;
  v8 = v0[96];
  *(v1 - 208) = v0[97];
  *(v1 - 200) = v8;
  *(v1 - 128) = v0[73];
  *(v1 - 224) = v0[46];
  *(v1 - 240) = v0[44];
  *(v1 - 256) = v0[40];
  *(v1 - 232) = v0[17];
  *(v1 - 216) = v0[13];

  return sub_22C90069C();
}

void sub_22C3750D0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_22C3751A8()
{
  sub_22C36FF94(*(v0 - 112));

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C37524C()
{
  sub_22C369980();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t PlanResolverService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8C8];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t dispatch thunk of PlannerService.setup(sessionState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return v9(a1, a2, a3);
}

uint64_t sub_22C3754C8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22C382AF4;

  return sub_22C375560();
}

uint64_t sub_22C375560()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v3);
  v1[4] = sub_22C3699D4();
  v4 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v4);
  v1[5] = sub_22C3699D4();
  v5 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v5);
  v1[6] = sub_22C3699D4();
  v6 = sub_22C90880C();
  v1[7] = v6;
  sub_22C3699B8(v6);
  v1[8] = v7;
  v1[9] = sub_22C3699D4();
  v8 = sub_22C90069C();
  v1[10] = v8;
  sub_22C3699B8(v8);
  v1[11] = v9;
  v1[12] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9C1350, &qword_22C92D1F0);
  sub_22C369914(v10);
  v1[13] = sub_22C3699D4();
  v11 = sub_22C9021BC();
  v1[14] = v11;
  sub_22C3699B8(v11);
  v1[15] = v12;
  v1[16] = sub_22C3699D4();
  v13 = sub_22C9021DC();
  v1[17] = v13;
  sub_22C3699B8(v13);
  v1[18] = v14;
  v1[19] = sub_22C3699D4();
  v15 = sub_22C90077C();
  v1[20] = v15;
  sub_22C3699B8(v15);
  v1[21] = v16;
  v17 = sub_22C3699D4();
  sub_22C8D525C(v17);
  v18 = sub_22C9068CC();
  v1[23] = v18;
  sub_22C3699B8(v18);
  v1[24] = v19;
  v1[25] = sub_22C3699D4();
  v20 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C375840(uint64_t a1)
{

  return swift_allocObject();
}

void sub_22C3758A8()
{
  v1[2] = v0 + 1;
  v3 = *(v2 - 248);
  v1[4] = *(v2 - 240);
  v1[5] = v3;
}

uint64_t sub_22C3758BC()
{

  return sub_22C9062EC();
}

uint64_t sub_22C375924(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(v3 + 16) = a1;
  *(v1 + 32) = v3 | 0x6000000000000000;

  return type metadata accessor for PromptTreeIdentifier.Label(0);
}

uint64_t sub_22C375948(uint64_t a1, uint64_t a2)
{

  return sub_22C4F59C4(a1, a2, 2112800, 0xE300000000000000, 0, 0xE000000000000000);
}

uint64_t sub_22C37596C()
{
  result = v0 + 8;
  *(v1 - 152) = v0 + 8;
  return result;
}

uint64_t sub_22C3759A0(uint64_t result)
{
  v4 = *(v2 + 152);
  *(result + 16) = v1;
  *(result + 24) = v4;
  *(v3 + 32) = result | 0x4000000000000000;
  return result;
}

uint64_t sub_22C375A18@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 104) = *(v1 + 456);

  return sub_22C9087AC();
}

uint64_t sub_22C375B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_22C375BB4(uint64_t a1, uint64_t a2)
{

  return sub_22C36C640(a1, a2, 1, v2);
}

void *sub_22C375CAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[4] = a2;
  result[5] = v2;
  result[6] = 8202;
  result[7] = 0xE200000000000000;
  return result;
}

void *sub_22C375CEC()
{

  return memcpy((v0 + 944), (v0 + 1152), 0xD0uLL);
}

uint64_t sub_22C375D08()
{

  return sub_22C90B62C();
}

void sub_22C375D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_22C62917C();
}

void sub_22C375D4C()
{
  v2 = v0[46];
  *(v1 - 208) = v0[47];
  *(v1 - 200) = v2;
  v3 = v0[44];
  *(v1 - 192) = v0[45];
  *(v1 - 184) = v3;
  v5 = v0[37];
  v4 = v0[38];
  *(v1 - 176) = v0[41];
  *(v1 - 168) = v4;
  v7 = v0[33];
  v6 = v0[34];
  *(v1 - 160) = v5;
  *(v1 - 152) = v6;
  v9 = v0[31];
  v8 = v0[32];
  *(v1 - 144) = v7;
  *(v1 - 136) = v8;
  v11 = v0[27];
  v10 = v0[28];
  *(v1 - 128) = v9;
  *(v1 - 120) = v10;
  v12 = v0[24];
  *(v1 - 112) = v11;
  *(v1 - 104) = v12;
}

uint64_t sub_22C375DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_22C375E54()
{
}

uint64_t sub_22C375E94(uint64_t a1)
{

  return swift_allocObject();
}

id sub_22C375ED4(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t sub_22C375EEC()
{

  return swift_slowAlloc();
}

uint64_t sub_22C375F34()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C375FC8(uint64_t a1)
{
  result = sub_22C36C640(v1, 1, 1, a1);
  *(v2 - 104) = 0;
  return result;
}

void sub_22C376034(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C37607C()
{
}

void sub_22C3760A4()
{

  sub_22C5975CC();
}

uint64_t sub_22C3760D4()
{
  sub_22C90877C();
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  sub_22C9068BC();
  sub_22C9021CC();
  (*(v3 + 8))(v1, v2);
  sub_22C90689C();
  if (sub_22C370B74(v5, 1, v4) == 1)
  {
    v6 = v0[14];
    _s30IntelligenceFlowPlannerRuntime25ResponseGenerationServiceC5setup14responseLocale20sessionIdentityToken13interactionId0K26WideOriginatingDeviceIDSId14genderSettingsy10Foundation0J0V_0abC7Support7SessionO0xlM0VSgAJ4UUIDVSgSSSg0aB006GenderU0VtYaKFfA3__0();
    v7 = sub_22C36CCF8();
    sub_22C36D0A8(v7, v8, v6);
    if (!v9)
    {
      sub_22C36DD28(v0[13], &qword_27D9C1350, &qword_22C92D1F0);
    }
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  }

  v10 = v0[6];
  sub_22C90878C();
  sub_22C9087FC();
  v11 = sub_22C36ECB4();
  v12(v11);
  sub_22C9068AC();
  v13 = sub_22C90212C();
  if (sub_22C370B74(v10, 1, v13) == 1)
  {
    sub_22C36DD28(v0[6], &qword_27D9BE068, &qword_22C91CE40);
    v14 = 0;
  }

  else
  {
    sub_22C90211C();
    v14 = v15;
    sub_22C36BBA8();
    v16 = sub_22C36BBCC();
    v17(v16);
  }

  v0[26] = v14;
  v18 = v0[10];
  sub_22C37FBF8(*(v0[3] + 160), v0[5]);
  v19 = sub_22C8D51C0();
  v20(v19);
  sub_22C36BECC();
  sub_22C36C640(v21, v22, v23, v18);
  v24 = swift_task_alloc();
  v0[27] = v24;
  *v24 = v0;
  v24[1] = sub_22C383A28;

  return sub_22C380254();
}

uint64_t sub_22C37640C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C37649C();
}

uint64_t sub_22C37649C()
{
  sub_22C369980();
  v1[22] = v0;
  v2 = sub_22C90B0EC();
  v1[23] = v2;
  sub_22C3699B8(v2);
  v1[24] = v3;
  v1[25] = sub_22C3699D4();
  v4 = sub_22C90B10C();
  v1[26] = v4;
  sub_22C3699B8(v4);
  v1[27] = v5;
  v1[28] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C377848, v0, 0);
}

void sub_22C3765C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C3765E4(uint64_t a1)
{

  return sub_22C90320C();
}

uint64_t sub_22C376688()
{

  return sub_22C901EDC();
}

uint64_t sub_22C3766F8(unint64_t *a1)
{
  v4 = MEMORY[0x277D83970];

  return sub_22C3D32C8(a1, v1, v2, v4);
}

void sub_22C376758(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a1[2] = a2;
  a1[3] = a3;
  a1[4].n128_u64[0] = v3;
  a1[4].n128_u8[8] = v4;
}

void sub_22C3767FC()
{
  v2 = v0[86];
  v3 = v0[66];
  v4 = v0[65];
  *(v1 - 104) = v0[64];
  *(v1 - 96) = v3;
  *(v1 - 120) = v0[63];
  *(v1 - 112) = v4;
  v5 = v0[49];
  *(v1 - 136) = v2;
  *(v1 - 128) = v5;
}

void sub_22C376864(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C376884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_22C716438(a1, v3);
}

uint64_t sub_22C3768C8()
{
}

void sub_22C3768E0()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
}

void sub_22C3768F8(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *(v1 - 496) = v2 + 16;
  *(v1 - 504) = v2 + 32;
  *(v1 - 512) = v2 + 8;
}

void sub_22C376924(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22C376940()
{

  return swift_slowAlloc();
}

uint64_t sub_22C376988()
{
  v2 = *(v0 + 552);

  return sub_22C7A6E8C(v2, type metadata accessor for DateResolver);
}

uint64_t sub_22C3769B0()
{
}

unint64_t sub_22C3769D4()
{

  return sub_22C36F9F4(0xD000000000000059, (v0 - 32) | 0x8000000000000000, (v1 - 112));
}

void sub_22C376A28()
{

  JUMPOUT(0x2318B8B10);
}

unint64_t sub_22C376A64(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;
  *(v2 - 136) = 32;
  *(v2 - 128) = 0xE100000000000000;

  return sub_22C3858B4();
}

uint64_t sub_22C376AB0(uint64_t a1, uint64_t a2)
{

  return sub_22C90B41C();
}

uint64_t sub_22C376AD4()
{
  v4 = *(v3 + 328);
  v5 = *(v3 + 520);
  *(v0 + 16) = v1;
  return v0 + ((v5 + 32) & ~v5) + v4 * v2;
}

uint64_t sub_22C376B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_22C376B84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22C3A5908(a2, a3);
  sub_22C36BBA8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t PlannerSpanMatchService.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t OnScreenContentRetrievalService.__deallocating_deinit()
{
  sub_22C36FF94((v0 + 16));
  sub_22C373A24();

  return swift_deallocClassInstance();
}

uint64_t sub_22C376C48()
{
  sub_22C36FF94((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ContextRetrievalService.__deallocating_deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C376CB8()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposter_clock;
  sub_22C90B10C();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_22C376D4C()
{
  sub_22C376D78();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C376D78()
{

  sub_22C36DD28(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU, &qword_27D9C0760, &qword_22C928BD8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C376DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*(a1 + 40));
  }

  v7 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  v8 = a1 + *(a3 + 32);

  return sub_22C370B74(v8, a2, v7);
}

void *ResponseGenerationService.deinit()
{

  sub_22C36FF94((v0 + 120));

  sub_22C36FF94((v0 + 168));
  sub_22C36DD28(v0 + 208, &qword_27D9C1368, &qword_22C92D220);
  sub_22C36DD28(v0 + 248, &qword_27D9C1360, &qword_22C92D218);
  sub_22C37275C();
  sub_22C36DD28(v1, v2, v3);
  sub_22C37275C();
  sub_22C36DD28(v4, v5, v6);

  sub_22C36DD28(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock, &qword_27D9C1358, &qword_22C92D208);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C376F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8D8];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_22C376FB8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ResponseGenerationService.__deallocating_deinit()
{
  ResponseGenerationService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t ToolboxResources.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3770B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22C3A5908(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22C377110()
{
  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder, &qword_27D9BB138, &qword_22C90DB70);

  return swift_deallocClassInstance();
}

uint64_t ResponseGenerationBiomeRoot.__deallocating_deinit()
{
  ResponseGenerationBiomeRoot.deinit();

  return swift_deallocClassInstance();
}

void *ResponseGenerationBiomeRoot.deinit()
{

  if (*(v0 + 96) >= 2uLL)
  {
    sub_22C36FF94((v0 + 72));
  }

  return v0;
}

uint64_t ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.__deallocating_deinit()
{
  ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.deinit();

  return swift_deallocClassInstance();
}

void *ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.deinit()
{

  return v0;
}

uint64_t sub_22C3772A8(uint64_t a1)
{

  return sub_22C90A0BC();
}

uint64_t sub_22C377328(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C37740C()
{

  return type metadata accessor for FullPlannerPreferences(0);
}

uint64_t sub_22C377464(uint64_t result)
{
  *(result + 16) = v1;
  *(v3 + 32) = result;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3 | 0xA000000000000002;
  return result;
}

uint64_t sub_22C3774C0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 176);
  v5 = *(v2 - 160);

  return MEMORY[0x2821FBD60](a1, a2, v4, v5);
}

uint64_t sub_22C3774E0()
{
  *(v1 + 168) = *(v2 + 8);
  *(v1 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_22C377534@<X0>(__n128 *a2@<X1>, unint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  *a2 = a7;
  a2[1] = a6;
  a2[2].n128_u64[0] = a5;

  return swift_willThrow();
}

uint64_t sub_22C377550(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C3775C0(uint64_t a1)
{

  return sub_22C601DAC(a1, v1, type metadata accessor for JointResolution.DeviceContext);
}

void sub_22C377620(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t sub_22C377680(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(0xD00000000000001ALL, a2, (v2 - 88));
}

void sub_22C377700(uint64_t *a1)
{

  sub_22C37931C();
}

uint64_t sub_22C377818()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22C377848()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[24];
  v13 = v0[23];
  v14 = v0[26];
  v4 = v0[22];
  v12 = v0[27];
  v5 = *(v4 + 136);
  sub_22C378A4C(v4 + 184, (v0 + 2));
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
  v7 = swift_allocObject();

  sub_22C90B0FC();
  v0[10] = DecorationSignposter;
  v0[11] = &off_283FC1370;
  v0[7] = v7;

  sub_22C90B0FC();
  sub_22C90B0CC();
  type metadata accessor for QueryDecorator();
  sub_22C377A58(v0 + 7, v5 != 0);
  sub_22C378A4C((v0 + 2), (v0 + 17));
  swift_allocObject();

  sub_22C36EFB8();
  v9 = v8;
  sub_22C389A50(v0 + 12, v5);
  sub_22C36FF94(v0 + 12);
  (*(v3 + 8))(v2, v13);
  (*(v12 + 8))(v1, v14);
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  *(v4 + 112) = v9;

  sub_22C369A24();

  return v10();
}

uint64_t sub_22C377A58(void *a1, char a2)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_22C374168(a1, v2);
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  return (*(v3 + 8))(inited, v2, v3);
}

uint64_t sub_22C377B20@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 128) = *(a1 + 8);
  return result;
}

uint64_t sub_22C377B34()
{

  return sub_22C90069C();
}

uint64_t sub_22C377C2C()
{

  return sub_22C456C94(v1, 0, v0);
}

uint64_t sub_22C377CA0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_22C377CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return sub_22C901F0C();
}

char *sub_22C377D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 648);
  v3 = *(*(v1 + 640) + 48);
  *v2 = a1;
  return v2 + v3;
}

double sub_22C377E18@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  return result;
}

uint64_t sub_22C377E2C(uint64_t result)
{
  *(result + 16) = 0x766E695F6C6F6F74;
  *(result + 24) = 0xEF6E6F697461636FLL;
  return result;
}

void sub_22C377E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 - 720);
  v9 = *(v6 - 712);
  v10 = *(v6 - 704);
  v11 = *(v6 - 696);
  v12 = *(v6 - 680);

  sub_22C456CE4(v8, v9, v10, v11, v12, a6);
}

uint64_t sub_22C377F0C()
{

  return sub_22C909F0C();
}

uint64_t sub_22C377F60()
{
  v2 = v0[42];
  result = v0[30];
  *(v1 - 96) = v0[12];
  *(v1 - 88) = v2;
  return result;
}

uint64_t sub_22C378064()
{
  result = v0[230];
  STACK[0x200] = v0[124];
  STACK[0x208] = v0[123];
  STACK[0x210] = v0[122];
  STACK[0x218] = v0[121];
  STACK[0x220] = v0[118];
  STACK[0x228] = v0[117];
  STACK[0x230] = v0[116];
  STACK[0x238] = v0[113];
  STACK[0x240] = v0[110];
  STACK[0x248] = v0[109];
  STACK[0x250] = v0[108];
  STACK[0x258] = v0[107];
  STACK[0x260] = v0[104];
  STACK[0x268] = v0[101];
  STACK[0x270] = v0[100];
  STACK[0x278] = v0[97];
  STACK[0x280] = v0[94];
  STACK[0x288] = v0[93];
  STACK[0x290] = v0[90];
  STACK[0x298] = v0[87];
  STACK[0x2A0] = v0[86];
  STACK[0x2A8] = v0[83];
  STACK[0x2B0] = v0[82];
  STACK[0x2B8] = v0[79];
  STACK[0x2C0] = v0[76];
  STACK[0x2C8] = v0[75];
  STACK[0x2D0] = v0[74];
  STACK[0x2D8] = v0[73];
  STACK[0x2E0] = v0[72];
  STACK[0x2E8] = v0[71];
  STACK[0x2F0] = v0[70];
  STACK[0x2F8] = v0[69];
  STACK[0x300] = v0[66];
  STACK[0x308] = v0[65];
  return result;
}

uint64_t sub_22C378318()
{
  result = v0[193];
  STACK[0x200] = v0[101];
  STACK[0x208] = v0[98];
  STACK[0x210] = v0[97];
  STACK[0x218] = v0[96];
  STACK[0x220] = v0[95];
  STACK[0x228] = v0[94];
  STACK[0x230] = v0[91];
  STACK[0x238] = v0[90];
  STACK[0x240] = v0[89];
  STACK[0x248] = v0[88];
  STACK[0x250] = v0[87];
  STACK[0x258] = v0[84];
  STACK[0x260] = v0[83];
  STACK[0x268] = v0[82];
  STACK[0x270] = v0[81];
  STACK[0x278] = v0[80];
  return result;
}

uint64_t sub_22C378550()
{
}

uint64_t sub_22C378568(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C3785EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a2 = v4;
  a2[1] = v5;

  return swift_willThrow();
}

__n128 sub_22C378608(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

__n128 sub_22C378620(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

unint64_t sub_22C378678@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000025, (a1 - 32) | 0x8000000000000000, (v1 - 104));
}

void sub_22C37869C()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C378868()
{
  result = v0;
  *(v1 - 232) = *(*(v1 - 112) + 8);
  return result;
}

void sub_22C378880(unint64_t a1@<X8>)
{

  sub_22C590270(a1 > 1, v2, 1, v1);
}

uint64_t sub_22C37890C(unint64_t *a1)
{
  v2 = MEMORY[0x277D1F110];

  return sub_22C386908(a1, v2);
}

uint64_t sub_22C378970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C378A00(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

id sub_22C378A34(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_22C378A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22C378AB0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_22C36BBA8();
  (*v3)(a2);
  return a2;
}

void sub_22C378B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C36BA7C();
  v98 = v24;
  v99 = v23;
  v96 = v26;
  v97 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_22C9063DC();
  sub_22C369824();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22C369ABC();
  v91 = (v39 - v40);
  v42 = MEMORY[0x28223BE20](v41);
  v92 = &v88 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v88 - v44;
  v105[3] = type metadata accessor for ContextRetrievalService();
  v105[4] = &off_283FC1488;
  v105[0] = v28;
  sub_22C90B0FC();
  sub_22C90400C();

  v46 = sub_22C9063CC();
  v47 = sub_22C90AABC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v94 = v34;
    v49 = v48;
    v50 = swift_slowAlloc();
    v93 = v30;
    *&v102 = v50;
    *v49 = 136315650;
    *(v49 + 4) = sub_22C385840("contextRetrieval");
    v89 = v37;
    *(v49 + 12) = 2080;
    v90 = v35;
    if (v32)
    {
      v51 = v94;
    }

    else
    {
      v51 = 0x3E6C696E3CLL;
    }

    if (v32)
    {
      v52 = v32;
    }

    else
    {
      v52 = 0xE500000000000000;
    }

    v53 = sub_22C36F9F4(v51, v52, &v102);

    *(v49 + 14) = v53;
    *(v49 + 22) = 2080;
    v54 = [objc_opt_self() callStackSymbols];
    v55 = MEMORY[0x277D837D0];
    v56 = sub_22C90A5EC();

    v57 = MEMORY[0x2318B7B00](v56, v55);
    v59 = v58;

    v60 = v57;
    v35 = v90;
    v61 = sub_22C36F9F4(v60, v59, &v102);
    v34 = v94;

    *(v49 + 24) = v61;
    v37 = v89;
    _os_log_impl(&dword_22C366000, v46, v47, "%s QueryDecorationCollector initializer (clientApplicationId: %s) %s", v49, 0x20u);
    swift_arrayDestroy();
    v30 = v93;
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v95 = *(v37 + 8);
  v95(v45, v35);
  sub_22C378AB0(v105, a23 + 56);
  *(a23 + 152) = v96;
  sub_22C3E8FB4(v98, &v100, &qword_27D9C0A48, &qword_22C929E58);
  if (v101)
  {
    sub_22C36C730(&v100, &v102);
  }

  else
  {
    matched = type metadata accessor for PlannerSpanMatchService();
    v63 = swift_allocObject();

    swift_defaultActor_initialize();
    sub_22C907D8C();
    *(v63 + 112) = sub_22C907D7C();
    v103 = matched;
    v104 = &off_283FC14C0;
    *&v102 = v63;
    if (v101)
    {
      sub_22C36DD28(&v100, &qword_27D9C0A48, &qword_22C929E58);
    }
  }

  v94 = a22;
  sub_22C36C730(&v102, a23 + 96);
  sub_22C3E8FB4(v30, &v100, &qword_27D9C01C8, &qword_22C9298B0);
  if (v101)
  {
    sub_22C36C730(&v100, &v102);
  }

  else
  {
    v103 = &type metadata for QueryDecorationFallbackNoOpCache;
    v104 = &off_283FC1A58;
  }

  sub_22C36C730(&v102, a23 + 208);
  *(a23 + 144) = v97;
  *(a23 + 248) = v34;
  *(a23 + 256) = v32;
  *(a23 + 160) = a21;
  type metadata accessor for TrialManager();
  swift_allocObject();

  v64 = sub_22C36E65C(1);
  *(a23 + 192) = &type metadata for QueryDecorationFeatureControl;
  *(a23 + 200) = &off_283FC14D0;
  *(a23 + 168) = v64;
  if (*(v99 + 24))
  {
    v65 = v92;
    sub_22C90400C();
    v66 = sub_22C9063CC();
    v67 = sub_22C90AACC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v93 = v30;
      v69 = v68;
      v70 = v35;
      v71 = swift_slowAlloc();
      *&v102 = v71;
      *v69 = 136315138;
      *(v69 + 4) = sub_22C385840("contextRetrieval");
      _os_log_impl(&dword_22C366000, v66, v67, "%s Running with supplied ToolRetrievalService", v69, 0xCu);
      sub_22C36FF94(v71);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C36DD28(v98, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v93, &qword_27D9C01C8, &qword_22C9298B0);
      v72 = v65;
      v73 = v70;
    }

    else
    {

      sub_22C36DD28(v98, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v30, &qword_27D9C01C8, &qword_22C9298B0);
      v72 = v65;
      v73 = v35;
    }

    v95(v72, v73);
    sub_22C36FF94(v105);
    v86 = v99;
    v87 = *(v99 + 16);
    *(a23 + 16) = *v99;
    *(a23 + 32) = v87;
    *(a23 + 48) = *(v86 + 32);
  }

  else
  {
    v74 = v91;
    sub_22C90400C();
    v75 = sub_22C9063CC();
    v76 = sub_22C90AABC();
    if (sub_22C36D08C(v76))
    {
      swift_slowAlloc();
      v77 = v35;
      v78 = sub_22C862E80();
      *&v102 = v78;
      *v32 = 136315138;
      *(v32 + 4) = sub_22C385840("contextRetrieval");
      sub_22C374ED0();
      _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
      sub_22C36FF94(v78);
      sub_22C3699EC();
      sub_22C36BAE0();

      sub_22C36DD28(v98, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v30, &qword_27D9C01C8, &qword_22C9298B0);
      v84 = v74;
      v85 = v77;
    }

    else
    {

      sub_22C36DD28(v98, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v30, &qword_27D9C01C8, &qword_22C9298B0);
      v84 = v74;
      v85 = v35;
    }

    v95(v84, v85);
    sub_22C36FF94(v105);
    sub_22C36DD28(v99, &qword_27D9C0990, &qword_22C929780);
    *(a23 + 16) = 0u;
    *(a23 + 32) = 0u;
    *(a23 + 48) = 0;
  }

  *(a23 + 136) = 0;
  sub_22C36CC48();
}

void sub_22C37931C()
{
  sub_22C36BA7C();
  v45 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_22C9063DC();
  sub_22C369824();
  v46 = v12;
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C36993C();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = sub_22C3A5908(&qword_27D9BE030, &qword_22C91CD20);
  sub_22C369824();
  v18 = v17;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C381AB0();
  v49 = v6;
  sub_22C901E6C();
  swift_bridgeObjectRetain_n();
  sub_22C3806B8();
  sub_22C901F0C();
  sub_22C901F1C();
  (*(v18 + 8))(v0, v16);
  if (v50)
  {
    if (v4)
    {
      v20 = sub_22C5882C8(v45, v10, v8, v6);

      sub_22C90400C();

      v21 = sub_22C9063CC();
      v22 = sub_22C90AACC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_22C370060();
        v49 = swift_slowAlloc();
        *v23 = 136315650;
        v24 = sub_22C3806B8();
        *(v23 + 4) = sub_22C36F9F4(v24, v25, v26);
        *(v23 + 12) = 2080;
        v48 = v20;
        v45 = v20;
        v27 = sub_22C90A1AC();
        v29 = sub_22C36F9F4(v27, v28, &v49);

        *(v23 + 14) = v29;
        *(v23 + 22) = 2080;
        v48 = v6;
        v30 = sub_22C90A1AC();
        v32 = sub_22C36F9F4(v30, v31, &v49);

        *(v23 + 24) = v32;
        _os_log_impl(&dword_22C366000, v21, v22, "QueryDecorationFactor %s was returned as %s. Default is %s", v23, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v46 + 8))(v1, v47);
    }

    else
    {
    }
  }

  else
  {
    v33 = v49;

    sub_22C90400C();

    v34 = sub_22C9063CC();
    v35 = sub_22C90AACC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v36 = 136315394;
      v37 = sub_22C3806B8();
      *(v36 + 4) = sub_22C36F9F4(v37, v38, v39);
      *(v36 + 12) = 2080;
      v48 = v33;
      v40 = sub_22C90A1AC();
      v42 = sub_22C36F9F4(v40, v41, &v49);

      *(v36 + 14) = v42;
      sub_22C58AAB8(&dword_22C366000, v43, v44, "QueryDecorationFactor %s was set via UserDefaults to %s");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v46 + 8))(v15, v47);
  }

  sub_22C36CC48();
}

uint64_t sub_22C3797A8()
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_22C379890(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{

  return sub_22C4A7FB0(a1, a3, a4);
}

uint64_t sub_22C3798B4()
{

  return sub_22C901EDC();
}

uint64_t sub_22C3798CC()
{
}

uint64_t sub_22C3798E4()
{

  return sub_22C903F7C();
}

uint64_t sub_22C379928()
{

  return swift_slowAlloc();
}

uint64_t sub_22C379944()
{
}

uint64_t sub_22C379968(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83948];

  return sub_22C5AADDC(a1, a2, v3);
}

uint64_t sub_22C37998C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a2 = v5;
  a2[1] = v4;

  return swift_willThrow();
}

void sub_22C3799F0()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t sub_22C379A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[46];
  *(v9 - 200) = v8[47];
  *(v9 - 192) = v11;
  v12 = v8[44];
  *(v9 - 184) = v8[45];
  *(v9 - 176) = v12;
  v14 = v8[37];
  v13 = v8[38];
  *(v9 - 168) = v8[41];
  *(v9 - 160) = v13;
  v16 = v8[33];
  v15 = v8[34];
  *(v9 - 152) = v14;
  *(v9 - 144) = v15;
  v18 = v8[31];
  v17 = v8[32];
  *(v9 - 136) = v16;
  *(v9 - 128) = v17;
  v20 = v8[27];
  v19 = v8[28];
  *(v9 - 120) = v18;
  *(v9 - 112) = v19;
  v21 = v8[24];
  *(v9 - 104) = v20;
  *(v9 - 96) = v21;
}

uint64_t sub_22C379A84(unint64_t *a1)
{
  v2 = MEMORY[0x277D1C368];

  return sub_22C4E9D34(a1, v2);
}

uint64_t sub_22C379ABC(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_22C90ABEC();
}

uint64_t sub_22C379B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[43];
  *(v9 - 184) = v8[44];
  *(v9 - 176) = v11;
  v12 = v8[41];
  *(v9 - 168) = v8[42];
  *(v9 - 160) = v12;
  v14 = v8[36];
  v13 = v8[37];
  *(v9 - 152) = v8[40];
  *(v9 - 144) = v13;
  v15 = v8[33];
  *(v9 - 136) = v14;
  *(v9 - 128) = v15;
  v16 = v8[30];
  *(v9 - 120) = v8[31];
  *(v9 - 112) = v16;
}

uint64_t sub_22C379BB0(uint64_t a1)
{

  return sub_22C370B74(v1, 1, a1);
}

void sub_22C379BF8()
{
  *(v0 - 96) = 11763938;
  *(v0 - 88) = 0xA300000000000000;
  *(v0 - 112) = 34;
  *(v0 - 104) = 0xE100000000000000;
}

uint64_t sub_22C379CB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
    v8 = v5 + *(a4 + 32);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C379DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C3A5908(a3, a4);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t type metadata accessor for QueryDecorationServiceCaller(uint64_t a1)
{
  result = qword_281431530;
  if (!qword_281431530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C379F0C(uint64_t a1, uint64_t a2)
{
  *(v3 - 248) = a2;
  *(v3 - 240) = a1;
  return v2;
}

uint64_t sub_22C379F24(uint64_t a1)
{
  sub_22C36C640(v2 + v3, 1, 1, a1);
  *(v4 + 96) = *(v1 + 28);

  return sub_22C90068C();
}

uint64_t sub_22C37A040(uint64_t a1)
{
  result = a1 + 8;
  *(v1 - 112) = result;
  return result;
}

void sub_22C37A0D8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 208) = v3;
  *(v2 + 216) = 0xEA00000000007265;

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 48);
  v7 = *(v4 + 32);
  *a2 = *(v4 + 16);
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;

  return swift_willThrow();
}

uint64_t sub_22C37A180()
{

  return swift_slowAlloc();
}

uint64_t sub_22C37A1B8()
{

  return sub_22C90708C();
}

unint64_t sub_22C37A21C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_22C36F9F4(0xD00000000000002BLL, a2, a3);
}

void sub_22C37A234(uint64_t a1@<X8>)
{
  v7 = (v1 + v4[8]);
  *v7 = v2;
  v7[1] = v3;
  v8 = v1 + v4[9];
  *v8 = v6;
  *(v8 + 8) = v5;
  *(v8 + 16) = a1;
  *(v1 + v4[10]) = 0;
}

uint64_t sub_22C37A2DC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>, __n128 a3@<Q2>)
{
  *(v3 + 208) = a3;
  *(v3 + 224) = a2;
  *(v3 + 240) = *(a1 + 32);
  *(v3 + 249) = *(a1 + 41);

  return sub_22C7428D8(v3 + 336, v3 + 400);
}

uint64_t sub_22C37A324()
{

  return sub_22C36E2BC(v1, v0);
}

uint64_t sub_22C37A368()
{
}

uint64_t sub_22C37A3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
}

unint64_t sub_22C37A3F4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000054, (a1 - 32) | 0x8000000000000000, (v1 - 168));
}

uint64_t sub_22C37A4D4()
{

  return swift_dynamicCast();
}

void *sub_22C37A508(void *a1)
{
  v2 = sub_22C90046C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v30 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  sub_22C90405C();
  (*(v3 + 16))(v5, a1, v2);
  v12 = sub_22C9063CC();
  v13 = sub_22C90AACC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v6;
    v15 = v14;
    v28[0] = swift_slowAlloc();
    v31 = v28[0];
    *v15 = 136315138;
    sub_22C37AA18(&qword_281435848, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_22C90B47C();
    v28[1] = a1;
    v17 = v7;
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    v20 = sub_22C36F9F4(v16, v19, &v31);
    v7 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_22C366000, v12, v13, "Loading plist from %s", v15, 0xCu);
    v21 = v28[0];
    sub_22C36FF94(v28[0]);
    MEMORY[0x2318B9880](v21, -1, -1);
    v22 = v15;
    v6 = v29;
    MEMORY[0x2318B9880](v22, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  (*(v7 + 8))(v11, v6);
  v23 = sub_22C9004AC();
  v25 = v24;
  sub_22C90029C();
  swift_allocObject();
  sub_22C90028C();
  type metadata accessor for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences();
  sub_22C37AA18(&qword_281430298, v26, type metadata accessor for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences, &protocol conformance descriptor for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences);
  sub_22C90027C();

  sub_22C38B120(v23, v25);
  return v31;
}

uint64_t sub_22C37AA18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22C37AA60(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22C37AA98()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C37AB28()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C37ABD4()
{
  *(v1 - 200) = v0;

  return swift_projectBox();
}

uint64_t sub_22C37ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C37AC04()
{
}

uint64_t sub_22C37AC1C()
{

  return swift_allocObject();
}

uint64_t sub_22C37AC70()
{

  return sub_22C90882C();
}

uint64_t sub_22C37AC94()
{
  *(v1 - 104) = v0;
}

uint64_t sub_22C37ACD0()
{

  return swift_slowAlloc();
}

uint64_t sub_22C37ACEC(uint64_t a1, uint64_t a2)
{
  *(v7 - 120) = v4;
  *(v7 - 160) = *(v6 + 480);
  *(v7 - 152) = v2;
  *(v7 - 144) = a2;
  *(v7 - 136) = v5;
  return v3;
}

uint64_t sub_22C37AD3C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36DD28(v2 + a1, v1, v3);
}

unint64_t sub_22C37AD58@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000060, a1 | 0x8000000000000000, (v1 - 80));
}

uint64_t sub_22C37ADD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v5 - 72) = v4;
  *(v5 - 168) = v3;
  *(v5 - 160) = a3;
  *(v5 - 192) = a1;
  *(v5 - 184) = a2;

  return sub_22C9093BC();
}

uint64_t sub_22C37AE04()
{

  return sub_22C8D4CB0(v1, v0);
}

uint64_t sub_22C37AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v10 = sub_22C37B45C();
  sub_22C3699B8(v10);
  sub_22C370424();
  v11 = swift_task_alloc();
  v12 = sub_22C36D860(v11);
  *v12 = v13;
  v12[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C37C050(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_22C37AF38()
{
  sub_22C36FB38();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v4[1] = sub_22C588ED8;

  return v7(v1);
}

uint64_t sub_22C37B060()
{
}

void sub_22C37B09C()
{

  JUMPOUT(0x2318B9880);
}

unint64_t sub_22C37B0CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_22C36F9F4(0xD00000000000001ALL, a2, a3);
}

void sub_22C37B0F0()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C37B150(uint64_t a1)
{
  *(v2 + 584) = *(v1 + 80);

  return swift_allocObject();
}

uint64_t sub_22C37B1BC()
{

  return swift_arrayInitWithCopy();
}

void *sub_22C37B1D8()
{
  v2 = 16 * v0[2];

  return memmove(v0 + 6, v0 + 4, v2);
}

BOOL sub_22C37B204(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22C37B250(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C37B27C()
{

  return sub_22C901EDC();
}

uint64_t sub_22C37B2A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_22C37B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22C36C640(a1, 1, 1, a4);
  *(v4 - 96) = 0;
  return result;
}

uint64_t sub_22C37B3BC()
{
}

uint64_t sub_22C37B45C()
{

  return sub_22C90622C();
}

uint64_t sub_22C37B4AC()
{
  v5 = *(v1 + 312);

  return sub_22C4E719C(v0, v5, v2, v3);
}

uint64_t sub_22C37B550(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a2 = v5;
  a2[1] = v4;

  return swift_willThrow();
}

uint64_t sub_22C37B578(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C37B5C8()
{

  return sub_22C90B62C();
}

unint64_t sub_22C37B618@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000037, (a1 - 32) | 0x8000000000000000, (v1 - 160));
}

uint64_t sub_22C37B648(uint64_t a1)
{

  return swift_once();
}

void sub_22C37B674()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37B748(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_22C90ABEC();
}

void sub_22C37B824()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C8719D4(v4, a2, 0, a4, (v5 - 128));
}

uint64_t sub_22C37B890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8[54];
  v11 = v8[55];
  *(v9 - 112) = v8[58];
  *(v9 - 104) = v11;
  v13 = v8[51];
  v14 = v8[52];
  *(v9 - 96) = v12;
  *(v9 - 88) = v14;
  *(v9 - 80) = v13;
}

unint64_t sub_22C37B948(float a1)
{
  *v3 = a1;

  return sub_22C36F9F4(v2, v1, (v4 - 88));
}

void sub_22C37B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 104);
  v23 = *(v20 - 112);

  sub_22C439F24(a1, v23, v22, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_22C37BA04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v26 - 104) = result;
  *(v26 - 96) = a2;
  *(v26 - 120) = a22;
  *(v26 - 112) = a26;
  return result;
}

void sub_22C37BA74()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_22C90892C();
}

void *sub_22C37BAD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22C597CAC(v4, a2, a3, a4, v5, v6);
}

uint64_t sub_22C37BC9C()
{
  sub_22C36FF94((v0 + 16));
}

unint64_t sub_22C37BCF8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000065, a1 | 0x8000000000000000, (v1 - 216));
}

uint64_t sub_22C37BD18@<X0>(char a3@<W8>)
{
  *(v3 - 112) = a3;

  return sub_22C90B37C();
}

uint64_t sub_22C37BD54(unint64_t *a1)
{
  v4 = MEMORY[0x277D83988];

  return sub_22C3D32C8(a1, v1, v2, v4);
}

uint64_t sub_22C37BDB0()
{

  return sub_22C90AFCC();
}

uint64_t sub_22C37BDF4()
{

  return sub_22C906BFC();
}

uint64_t sub_22C37BE48@<X0>(int *a1@<X8>)
{
  *(v1 - 88) = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_22C37BE94(uint64_t a1)
{

  return sub_22C90A0BC();
}

uint64_t sub_22C37BF28(uint64_t a1)
{

  return sub_22C36DD28(a1, v1, v2);
}

id sub_22C37BF40()
{

  return [v1 (v3 + 2040)];
}

void sub_22C37BF90(void *a1@<X8>)
{
  v2 = *(v1 - 128);
  v3 = *(v1 - 120);
  *a1 = *(v1 - 136);
  a1[1] = v3;
  a1[2] = v2;
  v4 = *(v1 - 144);
  a1[3] = *(v1 - 152);
  a1[4] = v4;
}

uint64_t sub_22C37C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C37C074, 0, 0);
}

uint64_t sub_22C37C074()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C37C39C(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C37C0CC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22C850594;

  return v5();
}

uint64_t sub_22C37C1B8()
{
  sub_22C369980();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22C374D1C(v2);
  *v3 = v4;
  v5 = sub_22C37BCE8(v3);

  return sub_22C37C240(v5, v1);
}

uint64_t sub_22C37C240(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C85D138;

  return sub_22C37C2DC(a2);
}

uint64_t sub_22C37C2DC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22C903E9C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C37DEF0, 0, 0);
}

uint64_t sub_22C37C39C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v60 = a1;
  v4 = sub_22C3A5908(&qword_27D9C0578, &qword_22C927FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = (&v56 - v5);
  v6 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_22C905D2C();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9C0590, &qword_22C927FD8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_22C9061AC();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v61 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v56 - v18;
  v19 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - v20;
  v22 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v56 - v23;
  v25 = sub_22C905DFC();
  v58 = *(v25 - 8);
  v26 = v58;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B32C0](v27);
  v30 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_contextId;
  sub_22C90624C();
  v31 = sub_22C90069C();
  (*(*(v31 - 8) + 16))(v21, &v3[v30], v31);
  sub_22C36C640(v21, 0, 1, v31);
  sub_22C90623C();
  v32 = sub_22C90625C();
  sub_22C36C640(v24, 0, 1, v32);
  sub_22C905A7C();
  v33 = v56;
  v34 = v60;
  sub_22C37CA7C(v60, v56);
  v35 = *(v26 + 16);
  v57 = v25;
  v35(v14, v29, v25);
  sub_22C36C640(v14, 0, 1, v25);
  sub_22C90593C();
  v36 = *(v3 + 5);
  v37 = *(v3 + 6);
  sub_22C374168(v3 + 2, v36);
  (*(v37 + 8))(v33, v36, v37);
  v38 = v59;
  sub_22C905D1C();
  MEMORY[0x2318B31D0](1);
  sub_22C3A5908(&qword_27D9C0598, &unk_22C927FE0);
  v39 = *(sub_22C90618C() - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22C90F800;
  sub_22C903C7C();
  v42 = sub_22C903D4C();
  sub_22C36C640(v8, 0, 1, v42);
  sub_22C8153D4(v8, (v41 + v40));
  sub_22C36DD28(v8, &qword_27D9C0588, &qword_22C927FD0);
  sub_22C905D0C();
  v43 = v61;
  sub_22C37CA7C(v34, v61);
  v44 = v62;
  v45 = swift_allocBox();
  v46 = v63;
  (*(v63 + 16))(v47, v38, v44);
  v48 = v67;
  *v67 = v45;
  v49 = *MEMORY[0x277D200A8];
  v50 = sub_22C905CEC();
  (*(*(v50 - 8) + 104))(v48, v49, v50);
  sub_22C36C640(v48, 0, 1, v50);
  sub_22C905C6C();
  v51 = *(v3 + 5);
  v52 = *(v3 + 6);
  sub_22C374168(v3 + 2, v51);
  (*(v52 + 8))(v43, v51, v52);
  v53 = v66;
  v54 = *(v65 + 8);
  v54(v43, v66);
  (*(v46 + 8))(v38, v44);
  v54(v33, v53);
  return (*(v58 + 8))(v29, v57);
}

uint64_t sub_22C37CA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v3 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_22C3A5908(&qword_27D9C04C0, &qword_22C927F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_22C905AAC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905A9C();
  v19 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_componentId;
  sub_22C90624C();
  v20 = sub_22C90069C();
  (*(*(v20 - 8) + 16))(v11, v2 + v19, v20);
  sub_22C36C640(v11, 0, 1, v20);
  sub_22C90623C();
  v21 = sub_22C90625C();
  sub_22C36C640(v14, 0, 1, v21);
  sub_22C905A7C();
  sub_22C90068C();
  sub_22C36C640(v11, 0, 1, v20);
  sub_22C905A8C();
  sub_22C90619C();
  (*(v16 + 16))(v8, v18, v15);
  sub_22C36C640(v8, 0, 1, v15);
  sub_22C905A4C();
  v22 = sub_22C90622C();
  (*(*(v22 - 8) + 16))(v5, v25, v22);
  sub_22C36C640(v5, 0, 1, v22);
  sub_22C905CDC();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_22C37CDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v41 = a1;
  v42 = a2;
  v3 = sub_22C3A5908(&qword_27D9C04D0, &qword_22C927F10);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - v4;
  v5 = sub_22C9061AC();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9C04E8, &qword_22C927F28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v40 = sub_22C905F9C();
  v16 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9C04F0, &qword_22C927F30);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v39 - v20;
  v22 = sub_22C905FCC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B3490](v24);
  v27 = sub_22C905A5C();
  (*(*(v27 - 8) + 16))(v21, v41, v27);
  sub_22C36C640(v21, 0, 1, v27);
  sub_22C905FAC();
  sub_22C905F8C();
  sub_22C90624C();
  v28 = sub_22C90069C();
  (*(*(v28 - 8) + 16))(v12, v42, v28);
  sub_22C36C640(v12, 0, 1, v28);
  sub_22C90623C();
  v29 = sub_22C90625C();
  sub_22C36C640(v15, 0, 1, v29);
  sub_22C905F7C();
  (*(v23 + 16))(v9, v26, v22);
  sub_22C36C640(v9, 0, 1, v22);
  sub_22C905F4C();
  v30 = v43;
  v31 = v46;
  sub_22C37CA7C(v45, v43);
  v32 = v44;
  v33 = v40;
  (*(v16 + 16))(v44, v18, v40);
  sub_22C36C640(v32, 0, 1, v33);
  v34 = v30;
  sub_22C905EAC();
  v35 = v31;
  v36 = *(v31 + 40);
  v37 = *(v35 + 48);
  sub_22C374168((v35 + 16), v36);
  (*(v37 + 8))(v34, v36, v37);
  (*(v47 + 8))(v34, v48);
  (*(v16 + 8))(v18, v33);
  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_22C37D378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_22C90363C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_22C9063DC();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_22C903E9C();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C37D614, 0, 0);
}

uint64_t sub_22C37D51C()
{
  sub_22C36FB38();
  v1[493] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85626C, 0, 0);
  }

  else
  {
    v2 = v1[355];
    v1[499] = v2;

    swift_task_alloc();
    sub_22C36CC90();
    v1[505] = v3;
    *v3 = v4;
    v3[1] = sub_22C855784;
    v5 = v1[427];
    v6 = v1[361];

    return sub_22C37D378(v5, v6, v2);
  }
}

uint64_t sub_22C37D614()
{
  sub_22C36D5EC();
  v1 = v0[6];
  v2 = sub_22C375194();
  v3(v2);
  sub_22C85D4B4();
  v4 = sub_22C38ABE0();
  v5(v4);
  if (v1)
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v0[16] = *(v8 + 96);
    sub_22C903C8C();
    sub_22C36D2A8();
    v9 = swift_allocObject();
    v0[17] = v9;
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;

    v10 = swift_task_alloc();
    v0[18] = v10;
    sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
    sub_22C85D2E4();
    *v10 = v11;
    sub_22C85D57C();
    v12.n128_f64[0] = sub_22C37C000();

    return MEMORY[0x2821C8618](v12);
  }

  else
  {
    sub_22C90400C();
    v13 = sub_22C9063CC();
    v14 = sub_22C90AABC();
    if (sub_22C37B204(v14))
    {
      v15 = sub_22C36D240();
      sub_22C36C890(v15);
      sub_22C36BB14(&dword_22C366000, v16, v17, "Foreground Tool context retrieval skiped as not enabled.");
      sub_22C372FB0();
    }

    v18 = v0[2];

    v19 = sub_22C36BAFC();
    v20(v19);
    v21 = type metadata accessor for RetrievedToolContext(0);
    sub_22C903E3C();
    *v18 = 0;
    v18[1] = 0;
    sub_22C36BECC();
    v25 = sub_22C36C640(v22, v23, v24, v21);
    sub_22C85D498(v25, v26, v27, v28, v29, v30, v31, v32);

    sub_22C369C50();

    return v33();
  }
}

uint64_t sub_22C37D850()
{

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

BOOL sub_22C37D894(uint64_t a1, uint64_t a2)
{
  if (sub_22C37DABC(a2))
  {
    v3 = *(sub_22C903C3C() + 16);

    if (v3)
    {
      v4 = sub_22C903C3C();
      MEMORY[0x28223BE20](v4);
      v7[2] = a2;
      v5 = sub_22C37D348(sub_22C85C774, v7, v4);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_22C37D95C()
{
}

double sub_22C37D980()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 40) = 1;
  return result;
}

uint64_t sub_22C37D9B0()
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return v4 & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t sub_22C37DA38(uint64_t a1)
{

  return sub_22C909F8C();
}

uint64_t sub_22C37DA50()
{
}

void sub_22C37DA6C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, os_log_type_t a13)
{

  _os_log_impl(a1, v13, a13, a4, v14, 0x20u);
}

uint64_t sub_22C37DABC(uint64_t a1)
{
  sub_22C9063DC();
  sub_22C369824();
  v50 = v3;
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v52 = v5 - v4;
  v6 = sub_22C90363C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C903E9C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v49 = &v46[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v46[-v23];
  v25 = *(v15 + 16);
  v25(&v46[-v23], a1, v13);
  v26 = (*(v15 + 88))(v24, v13);
  if (v26 == *MEMORY[0x277D1F170])
  {
    v27 = MEMORY[0x277D1EBE0];
LABEL_5:
    (*(v8 + 104))(v12, *v27, v6);
    v28 = sub_22C90362C();
    v29 = sub_22C372158();
    v30(v29);
    return v28 & 1;
  }

  if (v26 == *MEMORY[0x277D1F188])
  {
    v27 = MEMORY[0x277D1EBB0];
    goto LABEL_5;
  }

  if (v26 == *MEMORY[0x277D1F180] || v26 == *MEMORY[0x277D1F198] || v26 == *MEMORY[0x277D1F178])
  {
    v28 = 0;
  }

  else
  {
    if (v26 != *MEMORY[0x277D1F1A0] && v26 != *MEMORY[0x277D1F190])
    {
      v35 = v52;
      sub_22C90400C();
      v36 = v49;
      v25(v49, a1, v13);
      v37 = sub_22C9063CC();
      v38 = sub_22C90AADC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = sub_22C36FB44();
        v48 = sub_22C370060();
        v53 = v48;
        *v39 = 136315138;
        v25(v19, v36, v13);
        sub_22C90A1AC();
        v47 = v38;
        v40 = sub_22C85D468();
        v38(v40);
        v41 = sub_22C36CA88();
        v44 = sub_22C36F9F4(v41, v42, v43);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_22C366000, v37, v47, "QueryDecorator isServiceEnabled called with unknown service %s", v39, 0xCu);
        sub_22C36FF94(v48);
        sub_22C3699EC();
        sub_22C37B09C();

        (*(v50 + 8))(v52, v51);
      }

      else
      {

        v45 = sub_22C85D468();
        v38(v45);
        (*(v50 + 8))(v35, v51);
      }

      (v38)(v24, v13);
    }

    v28 = 1;
  }

  return v28 & 1;
}

uint64_t sub_22C37DEF0()
{
  sub_22C3749D8();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_22C903C3C();
  (*(v2 + 104))(v1, *MEMORY[0x277D1F1A0], v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_22C37D348(sub_22C85D0F8, v5, v4);

  v7 = sub_22C36D39C();
  v8(v7);
  if (v6)
  {
    v10 = v0[3];
    v9 = v0[4];
    sub_22C903C8C();
    v12 = v11;
    sub_22C36A83C();
    v13 = swift_allocObject();
    v0[8] = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;

    v14 = swift_task_alloc();
    v0[9] = v14;
    sub_22C3A5908(&qword_27D9BFAA8, &qword_22C9297F0);
    sub_22C85D2E4();
    *v14 = v15;
    v14[1] = sub_22C859B80;
    v16.n128_u64[0] = v12;

    return MEMORY[0x2821C8618](v16);
  }

  else
  {

    sub_22C36D5E0();

    return v17(0);
  }
}

uint64_t sub_22C37E100()
{

  return sub_22C3D33B8();
}

void sub_22C37E124()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C37E140()
{

  return sub_22C9063DC();
}

uint64_t sub_22C37E200(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_22C37E22C()
{

  return swift_getErrorValue();
}

uint64_t sub_22C37E248@<X0>(_BYTE *a2@<X1>, char a5@<W8>)
{
  *a2 = a5;

  return swift_willThrow();
}

double sub_22C37E2E0()
{
  *(v0 - 160) = 0;
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 152) = -1;
  return result;
}

uint64_t sub_22C37E320()
{

  return swift_arrayDestroy();
}

void sub_22C37E340()
{
  STACK[0x200] = v0[122];
  STACK[0x208] = v0[121];
  STACK[0x210] = v0[118];
  STACK[0x218] = v0[117];
  STACK[0x220] = v0[116];
  STACK[0x228] = v0[113];
  STACK[0x230] = v0[110];
  STACK[0x238] = v0[109];
  STACK[0x240] = v0[108];
  STACK[0x248] = v0[107];
  STACK[0x250] = v0[104];
  STACK[0x258] = v0[101];
  STACK[0x260] = v0[100];
  STACK[0x268] = v0[97];
  STACK[0x270] = v0[94];
  STACK[0x278] = v0[93];
  STACK[0x280] = v0[90];
  STACK[0x288] = v0[87];
  STACK[0x290] = v0[86];
  STACK[0x298] = v0[83];
  STACK[0x2A0] = v0[82];
  STACK[0x2A8] = v0[79];
  STACK[0x2B0] = v0[76];
  STACK[0x2B8] = v0[75];
  STACK[0x2C0] = v0[74];
  STACK[0x2C8] = v0[73];
  STACK[0x2D0] = v0[72];
  STACK[0x2D8] = v0[71];
  STACK[0x2E0] = v0[70];
  STACK[0x2E8] = v0[69];
  STACK[0x2F0] = v0[66];
  STACK[0x2F8] = v0[65];
}

void sub_22C37E5E0()
{
  STACK[0x200] = v0[74];
  STACK[0x208] = v0[73];
  STACK[0x210] = v0[70];
  STACK[0x218] = v0[69];
  STACK[0x220] = v0[66];
  v1 = v0[62];
  STACK[0x228] = v0[63];
  STACK[0x230] = v1;
  STACK[0x238] = v0[59];
}

uint64_t sub_22C37E7A0(uint64_t a1)
{

  return sub_22C90A0BC();
}

uint64_t sub_22C37E81C()
{
}

uint64_t sub_22C37E8A8()
{

  return sub_22C90AEFC();
}

uint64_t sub_22C37E8F8()
{
  v6 = *(*(v4 - 96) + 48);
  *v1 = v0;
  v1[1] = v3;

  return sub_22C892044(v2, v1 + v6);
}

uint64_t type metadata accessor for RetrievedToolContext(uint64_t a1)
{
  result = qword_281433718;
  if (!qword_281433718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C37E970()
{
  sub_22C3743E4();
  sub_22C37A458();
  v0 = sub_22C905A5C();
  sub_22C3699B8(v0);
  v1 = sub_22C90069C();
  sub_22C3699B8(v1);
  v2 = sub_22C90622C();
  sub_22C369914(v2);
  sub_22C370424();
  v3 = swift_task_alloc();
  v4 = sub_22C8236A4(v3);
  *v4 = v5;
  sub_22C36FEE0(v4);
  sub_22C373AE0();

  return sub_22C37EB48(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22C37EAEC()
{
  sub_22C369980();
  v0 = sub_22C38C50C();
  sub_22C37CDF4(v0, v1, v2);
  sub_22C369A24();

  return v3();
}

uint64_t sub_22C37EB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22C37EAEC, 0, 0);
}

uint64_t sub_22C37EB94()
{

  return sub_22C901D4C();
}

uint64_t sub_22C37EBE8()
{

  return swift_slowAlloc();
}

void sub_22C37ECC4()
{
  v3 = v0[50];
  v2 = v0[51];
  *(v1 - 256) = v0[54];
  *(v1 - 248) = v2;
  v5 = v0[46];
  v4 = v0[47];
  *(v1 - 240) = v3;
  *(v1 - 232) = v4;
  v7 = v0[44];
  v6 = v0[45];
  *(v1 - 224) = v5;
  *(v1 - 216) = v6;
  v9 = v0[42];
  v8 = v0[43];
  *(v1 - 208) = v7;
  *(v1 - 200) = v8;
  v10 = v0[41];
  *(v1 - 192) = v9;
  *(v1 - 184) = v10;
  v12 = v0[34];
  v11 = v0[35];
  *(v1 - 176) = v0[38];
  *(v1 - 168) = v11;
  v13 = v0[33];
  *(v1 - 160) = v12;
  *(v1 - 152) = v13;
  v14 = v0[29];
  *(v1 - 144) = v0[30];
  *(v1 - 136) = v14;
  v15 = v0[24];
  *(v1 - 128) = v0[27];
  *(v1 - 120) = v15;
  v16 = v0[18];
  v17 = v0[19];
  *(v1 - 112) = v0[21];
  *(v1 - 104) = v17;
  *(v1 - 96) = v16;
}

id sub_22C37ED5C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_22C37EDA0()
{

  return sub_22C7F42A8();
}

unint64_t sub_22C37EDD0@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000013, (a1 - 32) | 0x8000000000000000, (v1 - 168));
}

void sub_22C37EE20(unint64_t a1@<X8>)
{

  sub_22C3B60C0(a1 > 1, v1, 1);
}

void sub_22C37EE44(uint64_t a1, uint64_t a2)
{

  sub_22C8892F4();
}

void sub_22C37EE60()
{
  v3 = *(v0 + 16);
  *(v2 - 128) = v1;
  *(v2 - 96) = v3;
}

uint64_t type metadata accessor for ResponseGenerationPreferences(uint64_t a1)
{
  result = qword_281430EE8;
  if (!qword_281430EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C37EFA0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C37EFF4(uint64_t a1, uint64_t a2)
{
  result = sub_22C36C640(v3, a2, 1, v2);
  *(v5 - 208) = v4 + 16;
  *(v5 - 240) = v4 + 8;
  *(v5 - 232) = v4 + 32;
  return result;
}

void sub_22C37F09C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C37F0D4(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return swift_arrayDestroy();
}

uint64_t sub_22C37F138()
{

  return sub_22C4AB864(v0, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
}

uint64_t sub_22C37F180@<X0>(uint64_t a8@<X8>)
{
  *(v9 - 80) = a8;
  *(v9 - 88) = *(v8 + 312);
}

void sub_22C37F204()
{

  sub_22C591324();
}

void sub_22C37F23C()
{

  sub_22C456CE4(v1, v4, v3, v2, v0, 0);
}

void sub_22C37F278()
{
  *v0 = v5;
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0;
}

void sub_22C37F28C(uint64_t a1@<X8>)
{
  *(v2 - 160) = a1;

  sub_22C3B7454(0, v1, 0);
}

void sub_22C37F2B0()
{
  v3 = *(v1 - 552);
  v4 = *(v1 - 504);

  sub_22C456D48(v0, v3, v4);
}

uint64_t sub_22C37F328(uint64_t a1)
{
  v1[23] = a1;
  v1[24] = *(v3 + 8);
  v1[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

uint64_t sub_22C37F37C()
{
  result = v0;
  *(v3 - 184) = v1;
  *(v3 - 128) = v2;
  return result;
}

uint64_t sub_22C37F3C0()
{

  return sub_22C633A2C();
}

uint64_t sub_22C37F418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C37F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *(a1 + 16) = a17;

  return sub_22C90ABEC();
}

void sub_22C37F4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = (*(v18 + 48) + 16 * v16);
  *v21 = v15;
  v21[1] = v17;
  v22 = (*(v18 + 56) + 16 * v16);
  *v22 = a14;
  v22[1] = a15;
}

uint64_t sub_22C37F524()
{
  v2 = v0[132];
  *(v1 - 88) = v0[131];
  v3 = v0[129];
  *(v1 - 104) = v2;
  *(v1 - 96) = v3;
  return v0[116];
}

uint64_t sub_22C37F564()
{
}

uint64_t sub_22C37F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

_WORD *sub_22C37F644(_WORD *result)
{
  *(v2 - 104) = v1;
  *result = 0;
  return result;
}

uint64_t sub_22C37F67C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22C37F720(uint64_t a1)
{

  return sub_22C909E6C();
}

uint64_t sub_22C37F780(uint64_t result)
{
  *(result + 16) = 4;
  *(result + 24) = 1;
  return result;
}

unint64_t sub_22C37F7A8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000048, (a1 - 32) | 0x8000000000000000, (v1 - 144));
}

uint64_t sub_22C37F7E8(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v2 + 32) = v1 | 0x8000000000000000;
  *(v2 + 40) = 0;
}

void sub_22C37F818(uint64_t a1@<X8>)
{

  sub_22C3B6B48(0, a1 + 1, 1);
}

void sub_22C37F838()
{
}

uint64_t sub_22C37F864()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C37F998()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 360);

  return sub_22C72E460(v2, v3);
}

void sub_22C37F9D8()
{
  v0[50] = 0;
  v0[51] = 0xE000000000000000;
  v0[52] = 0;
  v0[53] = 0xE000000000000000;
}

uint64_t sub_22C37FA10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821B8B58](v3, v4, a3, 0, 1, 1);
}

uint64_t sub_22C37FA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

void sub_22C37FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(v7, a1, va);
}

void *sub_22C37FACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  v4 = *(v2 + 40);

  return sub_22C374168((v2 + 16), v4);
}

uint64_t sub_22C37FAE8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C7D5E18((a1 + 16), a1 + 32, v2, v1);
}

uint64_t sub_22C37FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_22C37FB44(uint64_t result)
{
  *(v1 + 472) = result;
  *(v1 + 524) = *(result + 32);
  return result;
}

double sub_22C37FB74(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
  *(a1 + 12) = 2048;
  result = v3;
  *(a1 + 14) = v3;
  return result;
}

uint64_t sub_22C37FB94()
{

  return type metadata accessor for ResponseGenerationPreferences(0);
}

uint64_t sub_22C37FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[41];
  v12 = v8[42];
  *(v9 - 104) = v8[45];
  *(v9 - 96) = v12;
  *(v9 - 88) = v11;
}

void sub_22C37FC8C()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37FDC4()
{
  v1 = *(v0 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22C37FE60()
{
  *(v2 - 160) = *(v1 + 808);
  v3 = *(v1 + 456);
  *(v2 - 144) = v0;
  *(v2 - 136) = v3;
}

uint64_t sub_22C37FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8[20];
  v11 = v8[21];
  *(v9 - 136) = v8[24];
  *(v9 - 128) = v11;
  v14 = v8[16];
  v13 = v8[17];
  *(v9 - 120) = v12;
  *(v9 - 112) = v13;
  v15 = v8[15];
  *(v9 - 104) = v14;
  *(v9 - 96) = v15;
  *(v9 - 88) = v8[12];
}

uint64_t sub_22C37FFA0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

uint64_t sub_22C380034()
{
  result = *(v1 - 96);
  *(v1 - 120) = v0;
  return result;
}

uint64_t sub_22C380078(uint64_t a1, uint64_t a2)
{
  *(v2 - 160) = a1;
  *(v2 - 144) = a2;
}

void sub_22C3800A8()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C3800C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_22C90AD4C();
}

uint64_t sub_22C3800E8()
{
  sub_22C374168((v0 + 96), *(v0 + 120));

  return sub_22C90880C();
}

uint64_t sub_22C3801EC()
{

  return sub_22C909FFC();
}

uint64_t sub_22C380204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C380220(uint64_t a1)
{

  return sub_22C90B47C();
}

uint64_t sub_22C380254()
{
  sub_22C369980();
  v1[46] = v2;
  v1[47] = v0;
  v1[45] = v3;
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v4);
  v1[48] = sub_22C3699D4();
  v5 = sub_22C9063DC();
  v1[49] = v5;
  sub_22C3699B8(v5);
  v1[50] = v6;
  v1[51] = sub_22C3699D4();
  v7 = sub_22C90077C();
  v1[52] = v7;
  sub_22C3699B8(v7);
  v1[53] = v8;
  v1[54] = sub_22C3856B8();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v9 = sub_22C90070C();
  v1[57] = v9;
  sub_22C3699B8(v9);
  v1[58] = v10;
  v1[59] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9C1358, &qword_22C92D208);
  sub_22C369914(v11);
  v1[60] = sub_22C3699D4();
  v12 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C380458()
{

  return swift_arrayDestroy();
}

unint64_t sub_22C3804C8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000003CLL, (a1 - 32) | 0x8000000000000000, (v1 - 136));
}

void sub_22C380500()
{

  sub_22C456CE4(v4, v3, v2, v0, v1, 0);
}

uint64_t sub_22C380640()
{
  v1 = v0[30];
  sub_22C374168(v0 + 26, v0[29]);
  return v1;
}

void sub_22C380694()
{
}

uint64_t sub_22C3806D0()
{

  return sub_22C90AC5C();
}

unint64_t sub_22C380768()
{
  result = qword_281430178;
  if (!qword_281430178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281430178);
  }

  return result;
}

void *static ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.loadFromOta()()
{
  v0 = sub_22C380820();
  v2 = sub_22C370B9C(v0, v1);

  return v2;
}

void *sub_22C3807F8@<X0>(uint64_t *a1@<X8>)
{
  result = static ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.loadFromOta()();
  *a1 = result;
  return result;
}

uint64_t sub_22C380820()
{
  v0 = sub_22C9063DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814374F0)
  {
    v4 = qword_2814374E8;
  }

  else
  {
    v4 = 0x53555F6E65;
    sub_22C90405C();
    v5 = sub_22C9063CC();
    v6 = sub_22C90AADC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_22C36F9F4(0x53555F6E65, 0xE500000000000000, &v11);
      _os_log_impl(&dword_22C366000, v5, v6, "No locale identifier set, falling back to %s", v7, 0xCu);
      sub_22C36FF94(v8);
      MEMORY[0x2318B9880](v8, -1, -1);
      MEMORY[0x2318B9880](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

uint64_t sub_22C380A10(uint64_t a1, unint64_t a2)
{
  v3 = sub_22C387760(a1, a2);
  sub_22C3878EC(&unk_283FAE968);
  return v3;
}

uint64_t sub_22C380A80()
{
  v77 = v0;
  v1 = v0;
  v4 = v0 + 472;
  v2 = *(v0 + 472);
  v3 = *(v4 + 8);
  v5 = *(v1 + 456);
  v6 = *(v1 + 464);
  v7 = *(v1 + 424);
  v72 = *(v1 + 440);
  v73 = *(v1 + 432);
  v69 = *(v1 + 416);
  v70 = *(v1 + 448);
  v8 = *(v1 + 376);
  log = v8;
  v65 = *(v1 + 360);
  v67 = sub_22C3A5908(&qword_27D9BB570, &qword_22C92D210);
  sub_22C36A748();
  sub_22C36C640(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock;
  sub_22C79D0C0(v8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock, v1 + 216);
  sub_22C8D4400(v3, v8 + v13, &qword_27D9C1358, &qword_22C92D208);
  swift_endAccess();
  (*(v6 + 104))(v2, *MEMORY[0x277CC9668], v5);
  sub_22C9006BC();
  v14 = sub_22C9006CC();
  v16 = v15;

  (*(v6 + 8))(v2, v5);
  qword_2814374E8 = v14;
  qword_2814374F0 = v16;

  sub_22C380768();
  sub_22C90271C();
  sub_22C36BECC();
  sub_22C36C640(v17, v18, v19, v67);
  sub_22C79D0C0(log + v13, v1 + 240);
  sub_22C8D4400(v3, log + v13, &qword_27D9C1358, &qword_22C92D208);
  swift_endAccess();
  v20 = *(v7 + 16);
  v20(v70, v65, v69);
  sub_22C90405C();
  v20(v72, v65, v69);
  v20(v73, v70, v69);
  v21 = sub_22C9063CC();
  v22 = sub_22C90AABC();
  v23 = sub_22C36FBB4(v22);
  v74 = *(v1 + 432);
  v25 = *(v1 + 416);
  v24 = *(v1 + 424);
  v26 = *(v1 + 400);
  v27 = *(v1 + 408);
  if (v23)
  {
    v71 = *(v1 + 392);
    v28 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v28 = 136315394;
    sub_22C38B5F0(&qword_281435838, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v66 = v26;
    v68 = v27;
    v29 = sub_22C90B47C();
    v30 = v20;
    v32 = v31;
    v62 = v22;
    v33 = *(v24 + 8);
    v34 = sub_22C379FC8();
    v33(v34);
    v35 = sub_22C36F9F4(v29, v32, &v76);
    v20 = v30;

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    sub_22C90B47C();
    sub_22C8D5288();
    (v33)(v74, v25);
    v36 = sub_22C36BBCC();
    sub_22C36F9F4(v36, v37, v38);
    sub_22C37BB14();

    *(v28 + 14) = v74;
    _os_log_impl(&dword_22C366000, v21, v62, "Input locale: %s, locale will be used: %s", v28, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v66 + 8))(v68, v71);
  }

  else
  {

    v39 = *(v24 + 8);
    v39(v74, v25);
    v40 = sub_22C379FC8();
    (v39)(v40);
    v41 = sub_22C36CA88();
    v42(v41);
  }

  v43 = *(v1 + 448);
  v63 = *(v1 + 424);
  v44 = *(v1 + 416);
  v45 = *(v1 + 376);
  v75 = *(v1 + 384);
  v46 = *(v1 + 368);
  v47 = *(v45 + 112);
  v48 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  v49 = type metadata accessor for DefaultResponseGenerationInputBuilder(0);
  *(v1 + 40) = v49;
  *(v1 + 48) = &off_283FC2CD0;
  v50 = sub_22C36D548((v1 + 16));
  sub_22C908AEC();
  sub_22C369A9C();
  (*(v51 + 16))(v50, v47 + v48);
  v20(v50 + *(v49 + 20), v43, v44);
  v52 = *(v49 + 24);
  sub_22C9021BC();
  sub_22C369A9C();
  (*(v53 + 16))(v50 + v52, v46);
  sub_22C79D0C0(v45 + 248, v1 + 264);
  sub_22C8D4400(v1 + 16, v45 + 248, &qword_27D9C1360, &qword_22C92D218);
  swift_endAccess();
  type metadata accessor for ResponseGenerationBiomeRoot();
  swift_allocObject();
  sub_22C38B6B4();
  *(v45 + 376) = v54;

  sub_22C381CB4();
  v55 = type metadata accessor for DefaultCATResponseDialogGenerator(0);
  swift_allocObject();
  v56 = sub_22C3835E0(v75);
  *(v1 + 80) = v55;
  *(v1 + 88) = &off_283FC29B0;
  *(v1 + 56) = v56;
  sub_22C79D0C0(v45 + 208, v1 + 288);

  sub_22C8D4400(v1 + 56, v45 + 208, &qword_27D9C1368, &qword_22C92D220);
  swift_endAccess();
  *(v1 + 120) = v55;
  *(v1 + 128) = &off_283FC29B0;
  *(v1 + 96) = v56;
  *(v1 + 160) = &type metadata for FallbackDialogGenerator;
  *(v1 + 168) = &off_283FC2B20;
  v57 = swift_allocObject();
  *(v1 + 136) = v57;
  sub_22C38376C(v1 + 96, v57 + 16);
  sub_22C79D0C0(v45 + 328, v1 + 312);

  sub_22C8D4400(v1 + 136, v45 + 328, &qword_27D9C1370, &qword_22C92D228);
  swift_endAccess();
  *(v1 + 200) = &type metadata for FallbackDialogGenerator;
  *(v1 + 208) = &off_283FC2B20;
  v58 = swift_allocObject();
  *(v1 + 176) = v58;
  v59 = *(v1 + 112);
  *(v58 + 16) = *(v1 + 96);
  *(v58 + 32) = v59;
  *(v58 + 48) = *(v1 + 128);

  (*(v63 + 8))(v43, v44);
  sub_22C79D0C0(v45 + 288, v1 + 336);
  sub_22C8D4400(v1 + 176, v45 + 288, &qword_27D9C1370, &qword_22C92D228);
  swift_endAccess();

  v60 = *(v1 + 8);

  return v60();
}

uint64_t sub_22C3811F8()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_22C38129C()
{

  return sub_22C505B90(v0, (v1 - 128));
}

uint64_t sub_22C3812C4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v4 - 124) = a2;
  *(v4 - 168) = v3 + 96;
  *(v4 - 160) = v3 + 8;
  *(v4 - 144) = result;
  *(v4 - 136) = v2 + 32;
  return result;
}

uint64_t sub_22C3812E0()
{

  return sub_22C90451C();
}

void sub_22C381354(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 128);

  _os_log_impl(a1, v5, v8, a4, v4, 0x16u);
}

uint64_t sub_22C381388()
{
}

uint64_t sub_22C381470(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return v4;
}

uint64_t sub_22C38153C()
{

  return swift_beginAccess();
}

uint64_t sub_22C38155C@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X1>)
{
  v3 = *(a1 - 256);

  return sub_22C7F4300(v3, a2);
}

uint64_t sub_22C381580()
{
}

uint64_t sub_22C3815A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 + 48);
  *(v5 - 240) = v3;
  *(v5 - 232) = a3;
  return *(v5 - 216) + v6;
}

uint64_t sub_22C3815C0()
{
}

uint64_t sub_22C3815EC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C38163C()
{

  return type metadata accessor for PromptTreeIdentifier(0);
}

__n128 sub_22C381670(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 104);
  result = *(v2 + 88);
  *a2 = *(v2 + 72);
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_22C3816D4(uint64_t a1, uint64_t a2)
{

  return sub_22C36DD28(a2, v2, v3);
}

uint64_t sub_22C381714()
{

  return sub_22C909F0C();
}

uint64_t sub_22C38172C()
{

  return sub_22C6A438C();
}

uint64_t sub_22C381768(uint64_t a1)
{

  return sub_22C36C640(v1, 1, 1, a1);
}

uint64_t sub_22C381798()
{

  return MEMORY[0x2821B8A50]();
}

void sub_22C3817B8()
{
  sub_22C36FF94(v0);

  JUMPOUT(0x2318B9880);
}

void sub_22C381858()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C3818D4()
{

  return sub_22C902EBC();
}

void sub_22C381980(uint64_t a1, uint64_t a2)
{

  sub_22C62F094();
}

unint64_t sub_22C381A0C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000033, a1 | 0x8000000000000000, (v1 - 96));
}

void sub_22C381A2C()
{
  *(v3 + 16) = v1;
  v4 = v3 + 16 * v2;
  *(v4 + 32) = 1;
  *(v4 + 40) = v0;
}

uint64_t sub_22C381A70()
{

  return sub_22C901EDC();
}

__n128 sub_22C381B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11)
{
  v14 = v11 + *(v12 + 20);
  *v14 = v13;
  result = a11;
  *(v14 + 8) = a9;
  return result;
}

uint64_t sub_22C381BAC(uint64_t result)
{
  *(v2 + 32) = result;
  *(v3 - 264) = v1;
  return result;
}

uint64_t sub_22C381BBC()
{

  return sub_22C906CFC();
}

void sub_22C381C20()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 96);

  sub_22C8591E8(v3, v2);
}

uint64_t sub_22C381C90()
{
}

void sub_22C381CB4()
{
  sub_22C36BA7C();
  v92 = v3;
  sub_22C9063DC();
  sub_22C369824();
  v90 = v5;
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v84 = v10;
  sub_22C36BA0C();
  sub_22C90035C();
  sub_22C369824();
  v85 = v12;
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  v95 = sub_22C90046C();
  sub_22C369824();
  v88 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v87 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v24);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v94 = v26;
  v27 = sub_22C36BA0C();
  v28 = type metadata accessor for ResponseGenerationPreferences(v27);
  sub_22C36985C();
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  sub_22C3881C0();
  v30 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  sub_22C369914(v30);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  v33 = &v76 - v32;
  v93 = sub_22C902D7C();
  sub_22C369824();
  v89 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  v38 = v37 - v36;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
  }

  v39 = sub_22C37AA60(v28, qword_281437588);
  sub_22C3870A4();
  swift_beginAccess();
  sub_22C36C57C();
  sub_22C382BD4(v39, v0, v40);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C901EDC();
  v41 = v96;
  sub_22C38C258();
  sub_22C38B6EC(v0, v42);
  if (v41 == 1)
  {
    sub_22C86D044();
  }

  else
  {
    sub_22C3879D0();
  }

  v43 = v93;
  sub_22C36D0A8(v33, 1, v93);
  v44 = v94;
  if (v46)
  {
    sub_22C36DD28(v33, &qword_27D9BD698, &qword_22C9187B0);
    v45 = v95;
LABEL_12:
    sub_22C90405C();
    v49 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (os_log_type_enabled(v49, v50))
    {
      sub_22C3720F4();
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22C366000, v49, v8, "Can't find catalog asset, which should be required.", v51, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v90 + 8))(v8, v91);
    goto LABEL_15;
  }

  v82 = v1;
  (*(v89 + 32))(v38, v33, v43);
  sub_22C902D5C();
  v45 = v95;
  sub_22C36D0A8(v19, 1, v95);
  if (v46)
  {
    v47 = sub_22C37B9B0();
    v48(v47);
    sub_22C36DD28(v19, &qword_27D9BB138, &qword_22C90DB70);
    goto LABEL_12;
  }

  v80 = v38;
  v83 = v2;
  v54 = *(v88 + 32);
  v78 = v88 + 32;
  v77 = v54;
  v54(v44, v19, v45);
  v96 = 0x676F6C61746163;
  v97 = 0xE700000000000000;
  v57 = v85;
  v56 = v86;
  v58 = *(v85 + 104);
  v81 = *MEMORY[0x277CC91D8];
  v55 = v81;
  v58(v15, v81, v86);
  v79 = sub_22C3858B4();
  v59 = v82;
  sub_22C90044C();
  v60 = *(v57 + 8);
  v60(v15, v56);
  v96 = 0x6574616C706D6554;
  v97 = 0xE900000000000073;
  v58(v15, v55, v56);
  sub_22C90044C();
  v60(v15, v56);
  v88 = *(v88 + 8);
  (v88)(v59, v95);
  v96 = 0x676F6C616964;
  v97 = 0xE600000000000000;
  v58(v15, v81, v56);
  sub_22C90044C();
  v61 = sub_22C36A724();
  (v60)(v61);
  sub_22C3819C0();
  v96 = 0xD00000000000001CLL;
  v97 = v62;
  v58(v15, v81, v56);
  v45 = v95;
  v63 = v87;
  sub_22C90044C();
  v64 = sub_22C36A724();
  (v60)(v64);
  v65 = v88;
  (v88)(v59, v45);
  v66 = [objc_opt_self() defaultManager];
  sub_22C9003EC();
  v67 = sub_22C90A0EC();

  v68 = [v66 fileExistsAtPath_];

  if (v68)
  {
    v65(v63, v45);
    v65(v94, v45);
    (*(v89 + 8))(v80, v93);
    v53 = v92;
    v77(v92, v83, v45);
    v52 = 0;
    goto LABEL_16;
  }

  v70 = v83;
  v69 = v84;
  sub_22C90405C();
  v71 = sub_22C9063CC();
  sub_22C90AADC();
  sub_22C375AAC();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v89;
  if (v73)
  {
    sub_22C3720F4();
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_22C366000, v71, v69, "Can't find fallback templates inside ResponseCatalog.", v75, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v90 + 8))(v69, v91);
  v65(v63, v45);
  v65(v70, v45);
  v65(v94, v45);
  (*(v74 + 8))(v80, v93);
LABEL_15:
  v52 = 1;
  v53 = v92;
LABEL_16:
  sub_22C36C640(v53, v52, 1, v45);
  sub_22C36CC48();
}

uint64_t sub_22C382590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C3825AC@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + ((v3 << 10) | (16 * a1)));
  result = v4[1];
  *v2 = *v4;
  v2[1] = result;
  return result;
}

uint64_t sub_22C3825F4()
{

  return sub_22C42B564(v0, v1);
}

uint64_t sub_22C382614()
{
}

uint64_t sub_22C382638(unint64_t *a1)
{
  v4 = MEMORY[0x277D83958];

  return sub_22C3D32C8(a1, v1, v2, v4);
}

unint64_t sub_22C382688()
{

  return sub_22C36F9F4(v0, v1, (v2 - 96));
}

uint64_t sub_22C3826A4(uint64_t a1)
{
  *(a1 + 16) = 0x6E61747369737361;
  *(a1 + 24) = 0xE900000000000074;
  *(v1 + 40) = a1;

  return swift_allocObject();
}

uint64_t sub_22C382724()
{

  return sub_22C901EDC();
}

uint64_t sub_22C382768()
{

  return swift_slowAlloc();
}

uint64_t sub_22C3827D0()
{

  return sub_22C3DB08C(v2, v3, v0, v1);
}

uint64_t sub_22C382864()
{
  v2 = *(v0 + 16);

  return sub_22C726E8C(v2, type metadata accessor for StructuredQueryConverter);
}

__n128 sub_22C38289C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 - 176) = *a1;
  *(v1 - 160) = v3;
  *(v1 - 144) = *(a1 + 32);
  return result;
}

void sub_22C3828DC(uint64_t a1@<X8>)
{
  *(v5 - 224) = a1;
  v6 = v3[20];
  *(v5 - 184) = v4;
  *(v5 - 176) = v6;
  *(v5 - 216) = v3[17];
  *(v5 - 208) = v2;
  v7 = v3[13];
  v8 = *(v1 + 8);
  *(v5 - 200) = v1 + 8;
  *(v5 - 168) = v7;
  *(v5 - 160) = v8;
}

uint64_t sub_22C382918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C382978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

void sub_22C3829D0()
{
}

uint64_t sub_22C3829F4(uint64_t a1)
{
  *(v1 + 8) = sub_22C844FD4;
  v7 = *(v2 + 184);
  v6[4] = v5;
  v6[5] = a1;
  v6[2] = v3;
  v6[3] = v4;
  return v7;
}

uint64_t sub_22C382A58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90B3CC();
}

uint64_t sub_22C382A94()
{

  return swift_task_alloc();
}

uint64_t sub_22C382AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C382AF4()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C382BD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C382C4C()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;
}

uint64_t sub_22C382C68()
{
  v3 = *(v1 - 280);

  return sub_22C4242E4(v0, v3, 5);
}

void sub_22C382C88()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C382CA8()
{
}

uint64_t sub_22C382CC0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v1;

  return sub_22C9089CC();
}

uint64_t sub_22C382CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C90B4FC();
}

void sub_22C382D04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C382D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 104) = a1;

  return swift_willThrow();
}

uint64_t sub_22C382DC8()
{

  return swift_allocObject();
}

uint64_t sub_22C382DE4()
{
  v3 = *(v1 - 88);
  v4 = *(v1 - 112);

  return sub_22C79CFB4(v0, v3, v4);
}

unint64_t sub_22C382E0C()
{

  return sub_22C36F9F4(v0, v1, (v2 - 168));
}

uint64_t sub_22C382E40()
{

  return swift_beginAccess();
}

void sub_22C382EE0()
{
  v2 = *(v0 + 16) + 1;
  *(v1 - 168) = v0;
  *(v0 + 16) = v2;
}

uint64_t sub_22C382EF8()
{

  return sub_22C9063DC();
}

uint64_t sub_22C382F1C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x74706D6F7270;
  a1[2].n128_u64[1] = 0xE600000000000000;
  return 0;
}

void sub_22C382FD0(unint64_t a1@<X8>)
{

  sub_22C3B685C(a1 > 1, v1, 1);
}

uint64_t sub_22C382FF4(uint64_t a1)
{

  return sub_22C901EEC();
}

uint64_t sub_22C383030(uint64_t a1)
{
  v3 = *(a1 + 20);
  *(v1 + v3) = v2;
  return v1 + v3;
}

uint64_t sub_22C383050()
{

  return swift_slowAlloc();
}

uint64_t sub_22C3830B8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22C383144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a1 + 8) = sub_22C584F7C;
  v24[4] = 0;
  v24[5] = 0;
  v24[15] = v23;
  v24[16] = a17;
  v24[13] = v21;
  v24[14] = v22;
  v24[11] = v21;
  v24[12] = v22;
  v24[9] = v19;
  v24[10] = v17;
  v24[7] = v18;
  v24[8] = v19;
  return v20 + 112;
}

uint64_t sub_22C3831F8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90708C();
}

void sub_22C383270()
{
  STACK[0x208] = v0[118];
  STACK[0x210] = v0[117];
  STACK[0x218] = v0[116];
  STACK[0x220] = v0[115];
  STACK[0x228] = v0[114];
  STACK[0x230] = v0[113];
  STACK[0x238] = v0[112];
  STACK[0x240] = v0[111];
  STACK[0x248] = v0[110];
  STACK[0x250] = v0[107];
  STACK[0x258] = v0[106];
  STACK[0x260] = v0[103];
  STACK[0x268] = v0[102];
  STACK[0x270] = v0[101];
  STACK[0x278] = v0[100];
  STACK[0x280] = v0[97];
  STACK[0x288] = v0[94];
  STACK[0x290] = v0[93];
  STACK[0x298] = v0[90];
  STACK[0x2A0] = v0[87];
  STACK[0x2A8] = v0[86];
  STACK[0x2B0] = v0[83];
  STACK[0x2B8] = v0[82];
  STACK[0x2C0] = v0[81];
  STACK[0x2C8] = v0[80];
  STACK[0x2D0] = v0[79];
  STACK[0x2D8] = v0[76];
  STACK[0x2E0] = v0[75];
  STACK[0x2E8] = v0[74];
  STACK[0x2F0] = v0[73];
  STACK[0x2F8] = v0[72];
  STACK[0x300] = v0[69];
  STACK[0x308] = v0[68];
  STACK[0x310] = v0[65];
  STACK[0x318] = v0[62];
  v1 = v0[58];
  STACK[0x320] = v0[59];
  STACK[0x328] = v1;
  v2 = v0[56];
  STACK[0x330] = v0[57];
  STACK[0x338] = v2;
}

__n128 sub_22C3833F0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v1[21] = *a1;
  v1[22] = v2;
  v1[23] = *(a1 + 32);
  return *(a1 + 41);
}

__n128 sub_22C383438@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t sub_22C383450(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_22C383478@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000006CLL, a1 | 0x8000000000000000, (v1 - 96));
}

uint64_t type metadata accessor for DefaultCATResponseDialogGenerator(uint64_t a1)
{
  result = qword_2814305F0;
  if (!qword_2814305F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C3835E0(uint64_t a1)
{
  v3 = sub_22C90046C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  if (sub_22C370B74(a1, 1, v3) == 1)
  {
    sub_22C3770B0(a1, &qword_27D9BB138, &qword_22C90DB70);
    v10 = v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder;
    v11 = 1;
  }

  else
  {
    v12 = *(v5 + 32);
    v12(v9, a1, v3);
    v13 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder;
    v12(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder, v9, v3);
    v10 = v1 + v13;
    v11 = 0;
  }

  sub_22C36C640(v10, v11, 1, v3);
  return v1;
}

__n128 sub_22C383710(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22C383724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C3837D4(uint64_t result)
{
  v2 = *(v1 - 96);
  *(v1 - 152) = v2 + 32;
  *(v1 - 144) = v2 + 16;
  *(v1 - 136) = result;
  return result;
}

uint64_t sub_22C383854(uint64_t a1)
{

  return sub_22C90A0BC();
}

uint64_t sub_22C383884()
{

  return sub_22C3AC228(v0, v1, v2);
}

uint64_t sub_22C3838BC(uint64_t a1, uint64_t *a2)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22C3838EC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22C383940(unint64_t *a1)
{
  v3 = MEMORY[0x277D1E478];

  return sub_22C38694C(a1, v1, v3);
}

uint64_t sub_22C3839C0(uint64_t a1, uint64_t a2)
{

  return sub_22C90AEEC();
}

uint64_t sub_22C3839E4()
{
}

uint64_t sub_22C383A10(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t sub_22C383A28()
{
  sub_22C36D5EC();
  sub_22C386504();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v0 + 40);
  v6 = *(v0 + 32);
  *v4 = *v2;
  *(v3 + 224) = v1;

  sub_22C36DD28(v6, &qword_27D9BB190, qword_22C90DD90);
  sub_22C36DD28(v5, &qword_27D9BB728, &qword_22C911230);
  sub_22C36D1D8();
  v8 = *(v7 + 24);
  if (v1)
  {
    v9 = sub_22C8C7BBC;
  }

  else
  {
    v9 = sub_22C383EC4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

unint64_t sub_22C383BF0(unint64_t result)
{
  *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v2 + 48) + 8 * result) = v3;
  ++*(v2 + 16);
  return result;
}

void sub_22C383C58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C383C94(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_22C383D1C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v3 = *(v1 + 360);
  *(v2 - 88) = *(v1 + 112);
  return v3;
}

uint64_t sub_22C383E74()
{
  result = v0;
  *(v1 - 304) = *(*(v1 - 264) + 8);
  return result;
}

uint64_t sub_22C383E94(uint64_t a1, uint64_t a2)
{
  *(v3 - 132) = v2;

  return sub_22C90B1DC();
}

uint64_t sub_22C383EC4()
{
  v1 = v0[24];
  v2 = v0[25];
  v10 = v0[23];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v4, v5);
  v6 = sub_22C36FC2C();
  v7(v6);
  (*(v1 + 8))(v2, v10);

  sub_22C369C50();

  return v8();
}

uint64_t default argument 3 of QueryDecorator.init(clientApplicationIdentifier:toolboxResources:selfLoggerFactory:signposter:contextClient:)@<X0>(uint64_t *a1@<X8>)
{
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
  v3 = swift_allocObject();
  result = sub_22C90B0FC();
  a1[3] = DecorationSignposter;
  a1[4] = &off_283FC1370;
  *a1 = v3;
  return result;
}

void *sub_22C38407C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a7;
  v43 = a6;
  v40 = a5;
  v51 = a3;
  v48 = a1;
  v49 = a2;
  v46 = a10;
  v13 = *(a9 - 8);
  v37 = a11;
  MEMORY[0x28223BE20](a1);
  v42 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22C90B0EC();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C90B10C();
  v44 = *(v45 - 8);
  v16 = MEMORY[0x28223BE20](v45);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a8;
  v19 = *(a8 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  v25 = *(v19 + 32);
  v39 = &v36 - v23;
  v25(&v36 - v23, a4, a8);
  v54[3] = a9;
  v54[4] = a11;
  v26 = sub_22C36D548(v54);
  (*(v13 + 32))(v26, v40, a9);
  sub_22C90B0FC();
  sub_22C90B0CC();
  sub_22C377A58(v54, v51 != 0);
  v27 = v43;
  sub_22C378A4C(v43, v52);
  v28 = swift_allocObject();
  v29 = v36;
  (*(v19 + 16))(v22, v24, v36);
  v30 = *(v13 + 16);
  v31 = v42;
  v30(v42, v26, a9);
  v32 = v51;

  v33 = sub_22C3844FC(v48, v49, v32, v22, 0, v31, v52, v28, a9, v29, v37, v46);
  v34 = v38;
  sub_22C389A50(v53, v32);

  sub_22C36FF94(v27);
  sub_22C36FF94(v53);
  (*(v47 + 8))(v34, v50);
  (*(v44 + 8))(v18, v45);
  sub_22C36FF94(v54);
  (*(v19 + 8))(v39, v29);
  return v33;
}

void *sub_22C3844FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a7;
  v70 = a5;
  v77 = a3;
  v73 = a1;
  v16 = sub_22C9063DC();
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v67 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v69 = (&v67 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - v21;
  v90 = a10;
  v91 = a12;
  v23 = sub_22C36D548(&v89);
  (*(*(a10 - 8) + 32))(v23, a4, a10);
  v87 = a9;
  v88 = a11;
  v24 = sub_22C36D548(&v86);
  (*(*(a9 - 8) + 32))(v24, a6, a9);
  type metadata accessor for QueryDecorationContextRegistry();
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 112) = MEMORY[0x277D84F90];
  a8[26] = v25;
  type metadata accessor for TrialManager();
  swift_allocObject();
  v26 = sub_22C36E65C(1);
  a8[30] = &type metadata for QueryDecorationFeatureControl;
  a8[31] = &off_283FC14D0;
  v74 = a8;
  a8[27] = v26;
  sub_22C90400C();

  v27 = sub_22C9063CC();
  v28 = sub_22C90AABC();

  v29 = os_log_type_enabled(v27, v28);
  v76 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v83 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_22C36F9F4(0xD000000000000065, 0x800000022C937B50, &v83);
    *(v30 + 12) = 2080;
    if (a2)
    {
      v32 = v73;
    }

    else
    {
      v32 = 0x3E6C696E3CLL;
    }

    if (a2)
    {
      v33 = a2;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    v34 = sub_22C36F9F4(v32, v33, &v83);

    *(v30 + 14) = v34;
    _os_log_impl(&dword_22C366000, v27, v28, "%s QueryDecorator initializer (clientApplicationIdentifier: %s)", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v31, -1, -1);
    MEMORY[0x2318B9880](v30, -1, -1);
  }

  v35 = *(v71 + 8);
  v36 = v35(v22, v72);
  if (qword_281431278 != -1)
  {
    v36 = swift_once();
  }

  v37 = sub_22C36FAB8(v36);
  v68 = v35;
  v38 = v37;
  DecorationCache = type metadata accessor for QueryDecorationCache(0);
  v40 = v74;
  v74[21] = v38;
  v40[24] = DecorationCache;
  v40[25] = &off_283FC17B8;
  v72 = sub_22C379D54();

  sub_22C378A4C(v75, &v83);
  v41 = type metadata accessor for ContextRetrievalService();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(&v83, v42 + 112);
  v84 = v41;
  v85 = &off_283FC1488;
  *&v83 = v42;
  type metadata accessor for ToolContextRetrievalService();
  v43 = swift_allocObject();
  v44 = sub_22C36D1E4(&v83, v41);
  v45 = *(v41 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v71 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = (&v67 - v71);
  v69 = *(v45 + 16);
  v69(&v67 - v71);
  v48 = *v47;
  v43[5] = v41;
  v43[6] = &off_283FC1488;
  v43[2] = v48;

  sub_22C36FF94(&v83);
  v49 = v74;
  sub_22C379DF8((v74 + 21), &v83, &qword_27D9C01C8, &qword_22C9298B0);
  type metadata accessor for OnScreenContentRetrievalService();
  memset(v81, 0, sizeof(v81));
  v82 = 0;
  v50 = swift_allocObject();
  v51 = sub_22C9043BC();
  swift_allocObject();

  v68 = v42;

  v52 = sub_22C9043AC();
  v50[5] = v51;
  v50[6] = &protocol witness table for ContextRetrieval;
  v50[2] = v52;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78[3] = v41;
  v78[4] = &off_283FC1488;
  v78[0] = v42;
  DecorationServiceCaller = type metadata accessor for QueryDecorationServiceCaller(0);
  v54 = swift_allocObject();
  v55 = sub_22C36D1E4(v78, v41);
  v67 = &v67;
  MEMORY[0x28223BE20](v55);
  v56 = (&v67 - v71);
  v69(&v67 - v71);
  v57 = *v56;

  v65 = v54;
  v64 = v43;
  v58 = v73;
  v59 = v76;
  v60 = v77;
  sub_22C378B10(v73, v76, v77, &v83, v57, v81, v50, v79, v64, v72, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v62 = v61;
  sub_22C36FF94(v78);
  v84 = DecorationServiceCaller;
  v85 = &off_283FC1C08;

  *&v83 = v62;
  sub_22C36FF94(v75);
  sub_22C36C730(&v83, (v49 + 3));
  sub_22C36C730(&v89, (v49 + 8));
  sub_22C36C730(&v86, (v49 + 13));
  v49[2] = v70;
  v49[18] = v58;
  v49[19] = v59;
  v49[20] = v60;
  return v49;
}

uint64_t sub_22C384F20()
{
  sub_22C369980();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C385028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Decoration = type metadata accessor for QueryDecorationSignposter.SignpostStateImpl(0);
  swift_allocObject();

  result = sub_22C3850EC(v2, a1);
  a2[3] = Decoration;
  a2[4] = &off_283FC1360;
  *a2 = result;
  return result;
}

uint64_t sub_22C3850EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = sub_22C90B0EC();
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90634C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = sub_22C90636C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v3[2] = a1;
  v3[3] = a2;
  v39 = a1;

  v37 = a2;

  sub_22C90367C();
  v20 = v3[3];
  v34 = *(v20 + 16);
  v33 = *(v20 + 32);
  sub_22C90367C();
  sub_22C90635C();
  sub_22C90631C();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v22 = sub_22C90635C();
  v32 = sub_22C90AB6C();
  result = sub_22C90AC5C();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = v21;
  v31 = v8;
  if ((v33 & 1) == 0)
  {
    v24 = v12;
    v12 = v34;
    if (v34)
    {
LABEL_9:
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v22, v32, v26, v12, "", v25, 2u);
      MEMORY[0x2318B9880](v25, -1, -1);
      v12 = v24;
      v21 = v30;
      v8 = v31;
LABEL_10:

      (*(v8 + 16))(v35, v12, v7);
      sub_22C9063AC();
      swift_allocObject();
      v27 = sub_22C90639C();
      (*(v8 + 8))(v12, v7);
      v21(v19, v13);
      v3[4] = v27;
      v28 = v38;
      sub_22C90B0CC();

      (*(v36 + 32))(v3 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733217SignpostStateImpl_start, v28, v40);
      *(v3 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733217SignpostStateImpl_ended) = 0;
      return v3;
    }

    __break(1u);
  }

  if (v34 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v34 & 0xFFFFF800) != 0xD800)
  {
    if (v34 >> 16 <= 0x10)
    {
      v24 = v12;
      v12 = &v41;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_22C385538(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C3855E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2[91] = a2;
  v3 = v2[82];
  sub_22C36C640(v3, a1, 1, v2[80]);
  return v3;
}

uint64_t sub_22C385658()
{

  return sub_22C9081AC();
}

uint64_t sub_22C3856A0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C3856B8()
{

  return swift_task_alloc();
}

uint64_t sub_22C385814()
{

  return swift_slowAlloc();
}

unint64_t sub_22C385840@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000097, a1 | 0x8000000000000000, (v1 - 168));
}

char *sub_22C385860()
{
  v6 = *(v3 + 32);
  v7 = *(v5 + 48);
  *v2 = v4;
  v2[1] = v0;
  *(v1 + 496) = v6;
  *(v1 + 504) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  return v2 + v7;
}

unint64_t sub_22C3858B4()
{
  result = qword_28142FA40;
  if (!qword_28142FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142FA40);
  }

  return result;
}

void *QueryDecorator.__allocating_init(clientApplicationIdentifier:toolboxResources:selfLoggerFactory:signposter:contextClient:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a4[3];
  v10 = a4[4];
  sub_22C36D1E4(a4, v11);
  sub_22C36A948();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13);
  v18 = a5[3];
  v17 = a5[4];
  sub_22C36D1E4(a5, v18);
  sub_22C36A948();
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v24 = sub_22C38407C(a1, a2, a3, v15, v22, a6, v28, v11, v18, v10, v17);
  sub_22C36FF94(a5);
  sub_22C36FF94(a4);
  return v24;
}

uint64_t sub_22C385AE4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C385BDC()
{
  sub_22C3749D8();
  v0[36] = v0[33];
  sub_22C903C8C();
  sub_22C903CAC();
  if (v3)
  {
    sub_22C50B5FC();
  }

  else
  {
    sub_22C90068C();
    sub_22C90065C();
    sub_22C50B5FC();
    v4 = sub_22C372164();
    v5(v4);
  }

  sub_22C36D190();
  sub_22C903C6C();
  sub_22C90841C();

  v6 = swift_task_alloc();
  v0[38] = v6;
  sub_22C84BC94();
  sub_22C38694C(v7, v1, MEMORY[0x277D1E468]);
  sub_22C84BCCC(&qword_28142FAC8);
  sub_22C388444();
  sub_22C38694C(v8, v2, MEMORY[0x277D1E480]);
  v9 = sub_22C383940(&qword_28142FAB8);
  *v6 = v0;
  v10 = sub_22C3829F4(v9);

  return MEMORY[0x28215E6E8](v10);
}

uint64_t sub_22C385D6C(uint64_t a1)
{
  *(v1 + 736) = a1;
}

uint64_t sub_22C385DE8()
{

  return sub_22C907DCC();
}

uint64_t sub_22C385E2C()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void sub_22C385E88()
{
  *(v6 - 416) = v3 + 56;
  *(v6 - 424) = ((1 << *(v3 + 32)) + 63) >> 6;
  *(v6 - 336) = v2 + 16;
  *(v6 - 344) = v1 + 16;
  *(v6 - 264) = v1 + 32;
  *(v6 - 280) = v2 + 8;
  *(v6 - 288) = v1 + 8;
  *(v6 - 400) = v0 + 56;
  *(v6 - 304) = v1;
  *(v6 - 312) = v2;
  *(v6 - 320) = v4;
  *(v6 - 328) = v5;
  *(v6 - 352) = v2 + 32;
  *(v6 - 384) = v3;
  *(v6 - 392) = v0;
}

uint64_t sub_22C385FA4()
{

  return sub_22C90903C();
}

uint64_t sub_22C385FC4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C385FDC(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C386034(uint64_t result, float a2)
{
  *v3 = a2;
  *(v4 - 104) = v2;
  *(v4 - 96) = result;
  return result;
}

uint64_t sub_22C386058()
{
  *(v0 - 96) = *(v0 - 152);
}

void sub_22C3860B4()
{

  sub_22C89D150();
}

id sub_22C386118()
{

  return [v0 (v1 + 1272)];
}

uint64_t sub_22C38614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 128);

  return MEMORY[0x2821FBD60](a1, a2, a21, v23);
}

void sub_22C386180(uint64_t a1, uint64_t a2)
{

  sub_22C591324();
}

double sub_22C386198()
{
  v1 = *(v0 - 392);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = 1;
  return result;
}

void sub_22C3861D0(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *(v1 + 56) = v3;
  *(v1 + 104) = v2;
}

uint64_t sub_22C38620C()
{

  return sub_22C58FF40(v0, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

void sub_22C3862A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v8 + 824);
  *(v9 - 96) = v7;

  sub_22C3B5E2C(0, v11, 0, a4, a5, a6, a7);
}

void sub_22C386394()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C3863B4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_22C38642C()
{
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;
}

uint64_t sub_22C386458()
{
  sub_22C374168((v0 + 232), v1);

  return sub_22C9079EC();
}

__n128 sub_22C38649C()
{
  v2 = *(v1 - 160);
  *(v1 - 128) = *(v1 - 176);
  *(v1 - 112) = v2;
  result = *(v1 - 151);
  *(v1 - 103) = result;
  *(v1 - 192) = v0;
  return result;
}

uint64_t sub_22C3864B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 32) = v3;
  *(a2 - 24) = v2;
  *(a2 - 16) = *(v4 - 552);
  *(a2 - 8) = result;
  return result;
}

void sub_22C38652C()
{
  sub_22C36FF94(v0);

  JUMPOUT(0x2318B9880);
}

__n128 sub_22C386560()
{
  v1 = *(v0 - 184);
  *(v0 - 144) = *(v0 - 200);
  *(v0 - 128) = v1;
  result = *(v0 - 175);
  *(v0 - 119) = result;
  return result;
}

uint64_t sub_22C386590(uint64_t a1, float a2)
{
  *v4 = a2;
  *(v2 + 360) = v3;

  return sub_22C9087FC();
}

uint64_t sub_22C38662C(uint64_t a1, uint64_t a2)
{

  return sub_22C90B47C();
}

id sub_22C38664C()
{

  return sub_22C5F2214(v0, 65568);
}

uint64_t sub_22C3866CC()
{

  return sub_22C90B62C();
}

uint64_t sub_22C3866EC(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C386714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_22C3A5908(a5, a6);
}

uint64_t sub_22C38672C@<X0>(uint64_t a1@<X8>)
{
  *v2 = *(v6 - 88);
  v2[1] = v5;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v4;
  return v3;
}

uint64_t sub_22C386764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

void sub_22C38679C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v4 + 360);

  _os_log_impl(a1, v6, v8, a4, v5, 0x16u);
}

void sub_22C386830(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_22C386898()
{

  return swift_unknownObjectRetain_n();
}

void sub_22C3868B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C3868F0(uint64_t a1)
{

  return sub_22C90405C();
}

uint64_t sub_22C386908(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C903D4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C38694C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C3869A4()
{

  return swift_retain_n();
}

void sub_22C3869BC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(v2 + 16) = a1;

  sub_22C45A8C4(v2 | 0x6000000000000000, 0);
}

uint64_t sub_22C3869FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 848) = a2;
  *(v14 + 672) = *(v15 + 104);
  *(v14 + 680) = (v15 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return a14;
}

uint64_t sub_22C386A50()
{

  return sub_22C90882C();
}

uint64_t sub_22C386A68()
{

  return sub_22C90AEEC();
}

uint64_t sub_22C386A98()
{

  return swift_slowAlloc();
}

uint64_t sub_22C386AE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 104);

  return sub_22C79CFB4(v3, v6, a3);
}

void sub_22C386B04()
{
  v3 = *(v1 + 584);
  *(v2 - 160) = v0;
  *(v2 - 152) = v3;
}

uint64_t sub_22C386B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C386B50(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_22C386B70()
{
  *(v4 - 312) = (v0 + 63) >> 6;
  *(v4 - 296) = v1 + 16;
  *(v4 - 304) = v3 + 16;
  *(v4 - 216) = v3 + 32;
  *(v4 - 208) = v1 + 32;
  *(v4 - 264) = v1;
  *(v4 - 256) = v3;
  *(v4 - 248) = v2;
  *(v4 - 240) = v3 + 8;
  *(v4 - 232) = v1 + 8;
}

_OWORD *sub_22C386C08(uint64_t a1)
{

  return sub_22C62F20C();
}

uint64_t sub_22C386C7C()
{
  *(v1 - 120) = *(v0 + 320);
  *(v1 - 128) = *(v0 + 296);

  return swift_slowAlloc();
}

double sub_22C386CA8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_22C386CE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22C3A5908(a3, a4);
}

uint64_t sub_22C386D8C(uint64_t a1)
{

  return sub_22C90A5EC();
}

void sub_22C386DA4()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C386DE8()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C386E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 88) = v7;
  *(v8 - 112) = a2;

  sub_22C3B5E2C(0, a2, 0, a4, a5, a6, a7);
}

uint64_t sub_22C386E28()
{

  return sub_22C908D2C();
}

void sub_22C386E98(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_22C386EA4(uint64_t a1)
{

  return sub_22C901EDC();
}

uint64_t sub_22C386EDC@<X0>(void *a1@<X8>)
{
  *a1 = v4;
  a1[1] = v2;
  v7 = (a1 + v1);
  v8 = *(v5 - 104);

  return sub_22C8F0480(v8, v3, v7);
}

uint64_t sub_22C386F58(uint64_t a1)
{

  return sub_22C36C640(v1 + v2, 1, 1, a1);
}

uint64_t sub_22C386F88()
{
  v2[8] = v1;
  v2[9] = v0;
  v2[10] = v3;

  return sub_22C90069C();
}

uint64_t sub_22C386FC8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_22C3E8FB4(v2, &a2 - a1, v3, v4);
}

uint64_t sub_22C38701C()
{

  return swift_bridgeObjectRetain_n();
}

void sub_22C387034(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C3870C8(uint64_t a1, uint64_t a2)
{

  return sub_22C4B86BC(v2, a2);
}

uint64_t sub_22C3870F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22C3E8FB4(v9 + v10, &a9, a3, a4);
}

double sub_22C387108@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

double sub_22C38711C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_22C38712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_22C901F0C();
}

uint64_t sub_22C387168@<X0>(uint64_t a1@<X8>)
{

  return sub_22C378A4C(v3 + a1, v2 + v1);
}

double sub_22C3871A0@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 1;
  return result;
}

uint64_t sub_22C3871D0()
{
  *(v0 + 88) = &unk_22C91AB18;
  *(v0 + 96) = 0;
}

void sub_22C3871F8(uint64_t a1, uint64_t a2)
{

  sub_22C591324();
}

uint64_t sub_22C387250()
{

  return sub_22C90735C();
}

uint64_t sub_22C3872CC()
{

  return sub_22C3DB138(v3, v2, v0, v1);
}

uint64_t sub_22C387310(uint64_t a1)
{

  return sub_22C36C640(a1, 0, 1, v1);
}

uint64_t sub_22C38732C(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_22C909F7C();
}

uint64_t sub_22C387350(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v2;
  *(v1 + 22) = 2048;
  return result;
}

uint64_t sub_22C3873BC@<X0>(uint64_t a9@<X8>)
{
  *(v11 - 256) = v9;
  *(v11 - 248) = a9;
  v13 = v10[48];
  *(v11 - 240) = v10[49];
  *(v11 - 232) = v13;
  v14 = v10[45];
  *(v11 - 224) = v10[46];
  *(v11 - 216) = v14;
  v15 = v10[41];
  *(v11 - 208) = v10[42];
  *(v11 - 200) = v15;
  v16 = v10[39];
  *(v11 - 192) = v10[40];
  *(v11 - 184) = v16;
  v17 = v10[35];
  *(v11 - 176) = v10[36];
  *(v11 - 168) = v17;
  v18 = v10[29];
  *(v11 - 160) = v10[32];
  *(v11 - 152) = v18;
  v19 = v10[25];
  *(v11 - 144) = v10[26];
  *(v11 - 136) = v19;
  v20 = v10[23];
  *(v11 - 128) = v10[24];
  *(v11 - 120) = v20;
  v22 = v10[16];
  v21 = v10[17];
  *(v11 - 112) = v10[20];
  *(v11 - 104) = v21;
  v23 = v10[13];
  *(v11 - 96) = v22;
  *(v11 - 88) = v23;
}

uint64_t sub_22C387440()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C387490(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C3874D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

void sub_22C387500(unint64_t a1@<X8>)
{

  sub_22C3B7754(a1 > 1, v1, 1);
}

void sub_22C387674()
{
}

uint64_t sub_22C3876D8()
{

  return sub_22C8C5ED8();
}

uint64_t sub_22C387760(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_22C90A3BC())
  {
    result = sub_22C387878(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22C90AF0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_22C90AFCC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_22C387878(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C3A5908(&qword_27D9BA9E8, &qword_22C90D030);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_22C3878EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_22C3A880C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22C3879D0()
{
  v1 = sub_22C901DDC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C37B6BC();
  v5 = sub_22C90210C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  sub_22C9020FC();
  (*(v3 + 104))(v0, *MEMORY[0x277D1C248], v1);
  sub_22C871F7C();
  sub_22C9020EC();
  v12 = sub_22C36A724();
  v13(v12);
  return (*(v7 + 8))(v11, v5);
}

void sub_22C387B80()
{
  *(v6 - 344) = v2;
  *(v6 - 352) = v0;
  *(v6 - 280) = v3;
  *(v6 - 360) = v5;
  *(v6 - 400) = v4;
  *(v6 - 408) = v1;
}

void sub_22C387CAC()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C387CC4()
{

  return sub_22C90B64C();
}

unint64_t sub_22C387D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C575E6C();
}

id sub_22C387D48()
{

  return [v0 (v1 + 855)];
}

uint64_t sub_22C387D6C(uint64_t a1)
{

  return sub_22C90AFAC();
}

uint64_t sub_22C387DA8()
{
  *(v2 - 104) = *(*(v1 + 56) + 8 * v0);
}

uint64_t sub_22C387DF4(uint64_t a1)
{
  v2 = sub_22C9061AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = sub_22C9063DC();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90406C();
  v12 = *(v3 + 16);
  v12(v8, a1, v2);
  v13 = sub_22C9063CC();
  v14 = sub_22C90AABC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[1] = a1;
    v16 = v15;
    v23[0] = swift_slowAlloc();
    *&v26 = v23[0];
    *v16 = 136315394;
    *(v16 + 4) = sub_22C36F9F4(0x6E65764574696D65, 0xED0000293A5F2874, &v26);
    *(v16 + 12) = 2080;
    v12(v6, v8, v2);
    v17 = sub_22C90A1AC();
    v19 = v18;
    (*(v3 + 8))(v8, v2);
    v20 = sub_22C36F9F4(v17, v19, &v26);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_22C366000, v13, v14, "[%s] Writing log %s", v16, 0x16u);
    v21 = v23[0];
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v21, -1, -1);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  result = (*(v24 + 8))(v11, v25);
  if (qword_281431190 != -1)
  {
    result = swift_once();
  }

  if (qword_2814311B0)
  {
    result = sub_22C378A4C(&xmmword_281431198, &v26);
  }

  else
  {
    v26 = xmmword_281431198;
    v27 = *algn_2814311A8;
    v28 = qword_2814311B8;
  }

  if (*(&v27 + 1))
  {
    sub_22C374168(&v26, *(&v27 + 1));
    sub_22C9062BC();
    return sub_22C36FF94(&v26);
  }

  return result;
}