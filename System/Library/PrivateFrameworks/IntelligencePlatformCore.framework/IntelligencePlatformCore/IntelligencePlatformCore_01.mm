uint64_t sub_1C4418980()
{

  return sub_1C45849C8(v2, v1, v0);
}

uint64_t sub_1C44189CC()
{

  return sub_1C45A24C0(v0, 2);
}

uint64_t sub_1C4418A58()
{

  return sub_1C4EFAF88();
}

uint64_t sub_1C4418A94(uint64_t a1)
{

  return sub_1C4EFBD48();
}

void sub_1C4418AF0()
{

  sub_1C459E7C8(0, v0, 0);
}

void sub_1C4418B4C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{

  sub_1C4A80310(v4, a2, a3, a4);
}

uint64_t sub_1C4418B7C()
{

  return sub_1C445FAA8(v1, v0);
}

void sub_1C4418BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 - 316) = a8;
  *(v8 - 328) = a7;
  *(v8 - 336) = a6;
  *(v8 - 312) = a5;
  *(v8 - 192) = a3;
}

void sub_1C4418BD8(uint64_t a1@<X8>)
{
  *(v3 - 192) = a1;
  *(v3 - 152) = v2 + v1;
  *(v3 - 144) = v2;
}

__n128 sub_1C4418C28@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *(v2 + 16);
  *v3 = *v2;
  *(v3 + 16) = v4;
  result = *(v2 + 32);
  v6 = *(v2 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v6;
  return result;
}

uint64_t sub_1C4418C40()
{

  return swift_getObjCClassFromMetadata();
}

void *sub_1C4418C58(void *result)
{
  result[4] = 25188;
  result[5] = 0xE200000000000000;
  result[6] = 0x336574696C7173;
  result[7] = 0xE700000000000000;
  return result;
}

uint64_t sub_1C4418C80()
{

  return sub_1C4EFBED8();
}

uint64_t sub_1C4418CB4(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02718();
}

void sub_1C4418D04()
{

  JUMPOUT(0x1C6940F90);
}

uint64_t sub_1C4418D1C@<X0>(void *a1@<X8>)
{
  v1[26] = a1[4];
  v1[27] = a1[5];
  v1[28] = a1[6];

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1C4418D4C()
{

  return swift_beginAccess();
}

uint64_t sub_1C4418DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_1C4418DE8(double a1)
{
  v5 = (v2 + v1[10]);
  v6 = *(v3 - 120);
  *v5 = *(v3 - 128);
  v5[1] = v6;
  *(v2 + v1[11]) = a1;
  *(v2 + v1[12]) = *(v3 - 156);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4418E54()
{
  *(v0 - 71) = 6;

  return sub_1C4F02738();
}

uint64_t sub_1C4418EA8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a2;
  if (*(v5 + *a2))
  {
    v8 = *(v5 + *a2);
  }

  else
  {
    v10 = v5;
    a3();
    v8 = swift_allocObject();

    a5(v11);
    if (v6)
    {
      return v8;
    }

    *(v10 + v7) = v8;
  }

  return v8;
}

size_t sub_1C4418FDC(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_1C4419004()
{

  return sub_1C4F00F28();
}

uint64_t sub_1C4419098()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C44191D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C4F02048();
}

uint64_t sub_1C44192A0()
{

  return sub_1C4430958(v1, v0, type metadata accessor for Source);
}

__n128 *sub_1C44193AC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "wifiConnected");
  result[2].n128_u16[7] = -4864;
  return result;
}

uint64_t sub_1C441943C()
{
}

uint64_t sub_1C4419470(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4419490(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4419520()
{

  return swift_allocError();
}

uint64_t sub_1C4419598(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C44195E8(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1C441964C()
{

  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C47CDF7C, v0);
}

void sub_1C4419678(void *a1)
{
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v1;
  a1[5] = v3;
  a1[6] = v5;

  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C47D1E28, a1);
}

uint64_t sub_1C44196E4(uint64_t a1)
{

  return sub_1C4F02938();
}

void sub_1C4419898()
{
  v2 = *(v0 + 16) + 1;

  sub_1C458DB8C(0, v2, 1, v0);
}

uint64_t sub_1C44198D4()
{
  v2 = *(v0 - 176);

  return sub_1C4887C10(v2, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
}

void sub_1C44198FC()
{

  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C48893EC, v0);
}

uint64_t sub_1C44199E8(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_1C4419A6C()
{
}

uint64_t sub_1C4419AF4()
{

  return sub_1C4454000(v0, type metadata accessor for Configuration);
}

uint64_t sub_1C4419C7C()
{
  result = v0[198];
  STACK[0x200] = v0[122];
  STACK[0x208] = v0[119];
  STACK[0x210] = v0[118];
  STACK[0x218] = v0[117];
  STACK[0x220] = v0[116];
  STACK[0x228] = v0[115];
  STACK[0x230] = v0[114];
  STACK[0x238] = v0[113];
  STACK[0x240] = v0[112];
  STACK[0x248] = v0[111];
  STACK[0x250] = v0[110];
  STACK[0x258] = v0[109];
  STACK[0x260] = v0[108];
  STACK[0x268] = v0[107];
  STACK[0x270] = v0[106];
  STACK[0x278] = v0[105];
  STACK[0x280] = v0[104];
  STACK[0x288] = v0[103];
  STACK[0x290] = v0[102];
  STACK[0x298] = v0[100];
  STACK[0x2A0] = v0[99];
  STACK[0x2A8] = v0[98];
  STACK[0x2B0] = v0[97];
  STACK[0x2B8] = v0[96];
  STACK[0x2C0] = v0[95];
  STACK[0x2C8] = v0[94];
  STACK[0x2D0] = v0[93];
  STACK[0x2D8] = v0[92];
  STACK[0x2E0] = v0[91];
  return result;
}

uint64_t sub_1C4419F14@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = 0xD00000000000002BLL;
  *(v2 - 88) = (a1 - 32) | 0x8000000000000000;
  return v1;
}

uint64_t sub_1C4419FB0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C441A14C()
{
  v5 = v3 + *(v4 + 48);
  *v5 = *(v0 + *(v1 + 36));
  *(v5 + 8) = 0;
  return v2;
}

uint64_t sub_1C441A1F0()
{
  sub_1C440BAA8(v1, 1, 1, v2);
  sub_1C440BAA8(v0, 1, 1, v4);

  return MEMORY[0x1EEDB3A88](v3, v1, v0);
}

uint64_t sub_1C441A248(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441A320(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441A340(uint64_t a1)
{

  return swift_once();
}

void sub_1C441A360(uint64_t a1@<X8>)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
}

uint64_t sub_1C441A448(uint64_t a1)
{

  return swift_once();
}

char *sub_1C441A4CC@<X0>(uint64_t a1@<X8>)
{
  *v3 = a1;
  v3[1] = v1;
  return v3 + *(v2 + 24);
}

double sub_1C441A500@<D0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);
  *v1 = *a1;
  v3 = *(a1 + 8);
  *(v1 + 8) = v3;
  *(v1 + 24) = v2;
  return *&v3;
}

uint64_t sub_1C441A63C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441A65C()
{

  return swift_unownedRetainStrong();
}

void sub_1C441A710()
{
  v2 = *(v0 - 160);
  *(v0 - 168) = *(v0 - 168);
  *(v0 - 160) = v2;

  JUMPOUT(0x1C6940010);
}

void sub_1C441A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C4BDA73C(a1, a2, a3, a4, a5, a6, a7, sub_1C4BDA854);
}

uint64_t sub_1C441A784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = a11;
  *(a2 + 64) = 1;

  return swift_willThrow();
}

void sub_1C441A7D4(uint64_t a1, void *a2)
{
  a2[2] = 0xD000000000000016;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

uint64_t sub_1C441A834(uint64_t a1)
{

  return swift_once();
}

void sub_1C441A880(uint64_t a1, void *a2)
{
  a2[2] = 0xD000000000000012;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

uint64_t sub_1C441A898(uint64_t a1)
{

  return sub_1C4EFBBA8();
}

uint64_t sub_1C441A8D0(uint64_t result)
{
  strcpy((result + 16), "interactions");
  *(result + 29) = 0;
  *(result + 30) = -5120;
  return result;
}

void sub_1C441A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1C4C6C248(a1, a2, a3, a4, a5, a6, sub_1C4C6C7E8);
}

void sub_1C441A930(uint64_t a1, void *a2)
{
  a2[2] = 0xD000000000000015;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

void sub_1C441A960()
{
  *(v0 - 368) = 0;
  *(v0 - 364) = 0;
  *(v0 - 72) = 0;
  *(v0 - 360) = 0;
  *(v0 - 352) = 0;
  *(v0 - 344) = 0;
  *(v0 - 336) = 0;
  *(v0 - 328) = 0;
}

uint64_t sub_1C441A9CC()
{

  return sub_1C4CDA2CC(v0, _s10ViewConfigVMa);
}

uint64_t sub_1C441AA70(uint64_t a1)
{

  return swift_once();
}

void sub_1C441AB14()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

void sub_1C441ABB0()
{
  *(v0 - 568) = 0;
  *(v0 - 560) = 0;
  *(v0 - 552) = 0;
  *(v0 - 544) = 0;
  *(v0 - 536) = 0;
  *(v0 - 528) = 0;
  *(v0 - 520) = 0;
  *(v0 - 512) = 0;
  *(v0 - 504) = 0;
  *(v0 - 496) = 0;
  *(v0 - 488) = 0;
}

uint64_t sub_1C441ADE8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

__n128 sub_1C441AE54(__n128 *a1)
{
  result = *(v1 - 112);
  a1[1] = result;
  return result;
}

uint64_t sub_1C441AEF8()
{

  return sub_1C4F02478();
}

uint64_t sub_1C441AF34(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return swift_arrayDestroy();
}

uint64_t sub_1C441AF54()
{
}

uint64_t sub_1C441AFF8()
{

  return sub_1C447EAE0(v0, v1);
}

unint64_t sub_1C441B080()
{

  return sub_1C441D828(v0, v1, (v2 - 88));
}

void *sub_1C441B09C()
{

  return sub_1C4409678((v1 - 192), v0);
}

uint64_t sub_1C441B0D4@<X0>(char a1@<W8>)
{
  *(v1 - 288) = a1;

  return sub_1C4F02628();
}

uint64_t sub_1C441B108(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C441B16C()
{
}

uint64_t sub_1C441B1B0()
{

  return sub_1C441D670((v0 - 136), v0 - 176);
}

uint64_t sub_1C441B1E0@<X0>(void *a1@<X8>)
{
  result = *(v1 - 112);
  *a1 = *(v1 - 120);
  a1[1] = result;
  return result;
}

uint64_t sub_1C441B1F0@<X0>(char a3@<W8>)
{
  *(v3 - 72) = a3;

  return sub_1C4F02738();
}

uint64_t sub_1C441B25C()
{
  *(v0 - 67) = 2;

  return sub_1C4EFD548();
}

void sub_1C441B294(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69A9748];

  sub_1C4E7BD7C(319, a2, v3);
}

uint64_t sub_1C441B2FC(int a1)
{
  *(v2 - 240) = a1;
  result = *(v2 - 248);
  *(v2 - 272) = v1;
  return result;
}

uint64_t sub_1C441B368()
{
}

uint64_t sub_1C441B394(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t sub_1C441B3B8@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v2 - 120) + a1);

  return sub_1C4774554(v4, v1);
}

uint64_t sub_1C441B444()
{

  return sub_1C44735D4(v1, 0xE900000000000065, v0);
}

void sub_1C441B464(uint64_t a1)
{
  v5 = *(v3 - 128);

  sub_1C457EB30(v1, v2, a1, v5);
}

uint64_t sub_1C441B484()
{

  return sub_1C4A26040();
}

uint64_t sub_1C441B4C0()
{

  return sub_1C4466EEC(v1, v0);
}

uint64_t sub_1C441B4D8@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + v1);
  *v4 = a1;
  v4[1] = 0xE100000000000000;
}

unint64_t sub_1C441B548@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = *a1;
  v6 = a1[1];

  return sub_1C441D828(v5, v6, va);
}

uint64_t sub_1C441B560()
{
  *(v1 - 396) = *(v1 - 232);

  return sub_1C4609884(v0, v1 - 144);
}

uint64_t sub_1C441B5B8(uint64_t a1)
{
  *(v1 + 120) = a1;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return sub_1C4F01958();
}

uint64_t sub_1C441B610()
{
}

uint64_t sub_1C441B698()
{
  *(v0 - 67) = 2;

  return type metadata accessor for Source(0);
}

uint64_t sub_1C441B6E0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C441B714()
{
  v3 = (v1 + *(v0 + 48));
  *v3 = 0;
  v3[1] = 0;

  return sub_1C4EFEA88();
}

id sub_1C441B738(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t sub_1C441B7C0()
{

  return sub_1C45FE854(v0);
}

uint64_t sub_1C441B85C()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_1C4F02858();
}

uint64_t sub_1C441B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C440BAA8(v4 + v5, 1, 1, a4);
}

uint64_t sub_1C441B92C()
{

  return sub_1C4F00328();
}

void sub_1C441B9C0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441B9D8()
{

  return sub_1C4924B90(v1, v0);
}

uint64_t sub_1C441BA54()
{

  return sub_1C4F01148();
}

void sub_1C441BA9C()
{
  *(v0 - 408) = 0;
  *(v0 - 416) = 0;
  *(v0 - 392) = 0;
  *(v0 - 400) = 0;
  *(v0 - 264) = 0;
  *(v0 - 384) = 0;
  *(v0 - 248) = 0;
  *(v0 - 376) = 0;
  *(v0 - 424) = 0;
  *(v0 - 432) = 0;
  *(v0 - 440) = 0;
  *(v0 - 448) = 0;
}

uint64_t sub_1C441BB74()
{

  return sub_1C4F02358();
}

void sub_1C441BB90()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441BBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21)
{
  a13 = a18;
  a14 = a19;
  a15 = a20;
  a16 = a21;

  return sub_1C4851A34(&a13);
}

uint64_t sub_1C441BC3C()
{

  return sub_1C4F00978();
}

uint64_t sub_1C441BC54(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441BC74(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 12) = 2048;
  *(result + 14) = v2;
  return result;
}

uint64_t sub_1C441BC8C()
{
  v4 = *(v1 + 16);
  *(v3 - 408) = v2;
  result = v0;
  *(v3 - 416) = v1 + 16;
  *(v3 - 424) = v4;
  return result;
}

uint64_t sub_1C441BCC4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441BD04(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441BD24()
{
}

uint64_t sub_1C441BD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

char *sub_1C441BD6C()
{

  return sub_1C459D088(0, v0, 0);
}

__n128 sub_1C441BD8C@<Q0>(void *a1@<X8>)
{
  a1[4] = v2;
  *a1 = v1;
  *(v3 + 48) = *(v4 - 112);
  result = *(v4 - 128);
  *(v3 + 16) = *(v4 - 144);
  *(v3 + 32) = result;
  return result;
}

uint64_t sub_1C441BDA8()
{

  return sub_1C4EF9AD8();
}

uint64_t sub_1C441BE04(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C441BE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4CFDD10(a1, a2, a3, a4, sub_1C4D0DC00);
}

uint64_t sub_1C441BF2C()
{
  *(v0 + *(v1 + 44)) = v4;
  *(v0 + *(v1 + 48)) = *(v2 - 96);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441BFB8@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 - 71) = 6;
  return result;
}

id sub_1C441C058(id a1)
{

  return a1;
}

uint64_t sub_1C441C0D8(uint64_t a1)
{
  v6 = v4 + *(a1 + 20);

  return sub_1C4607C70(v6, v1, v2, v3);
}

id sub_1C441C120(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C441C138()
{

  return sub_1C447E8C0(v0, type metadata accessor for Source);
}

uint64_t sub_1C441C194()
{

  return type metadata accessor for PhaseStores(0);
}

void sub_1C441C1E0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441C200()
{
  *(*(v0 + 136) + *(v0 + 216)) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1C441C22C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02658();
}

void sub_1C441C2C0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441C2D8(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1C441C310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void (*a3)(void)@<X2>)
{
  v4 = *(a2 - 256);

  return sub_1C448CD84(a1, v4, a3);
}

uint64_t sub_1C441C328()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C441C368(__n128 a1)
{

  return sub_1C457E010(v1, v2, v3);
}

uint64_t sub_1C441C3A8()
{
}

void sub_1C441C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1C458B740();
}

uint64_t sub_1C441C41C()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441C440(unsigned int a1)
{

  return sub_1C4EF97B8();
}

uint64_t sub_1C441C460(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C441C4B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C442B738(v2, a2);

  return sub_1C449ED64(v5, v3 + v4);
}

uint64_t sub_1C441C524(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441C544()
{

  return swift_unownedRetainStrong();
}

uint64_t sub_1C441C560()
{
  v2 = *(v0 + 376);

  return sub_1C4418280(v0 + 352, v2);
}

uint64_t sub_1C441C584()
{
  result = *(v1 + 144);
  *(v1 + 72) = v0;
  return result;
}

void sub_1C441C598()
{
  v2 = *(v0 - 608);
}

uint64_t sub_1C441C62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1C448D140(a1, v3);
}

uint64_t sub_1C441C774()
{

  return sub_1C440BAA8(v1, 1, 1, v0);
}

uint64_t sub_1C441C794()
{

  return sub_1C4EF9CD8();
}

void sub_1C441C838()
{
  v6 = (v4 + v2[7]);
  *v6 = v3;
  v6[1] = v5;
  *(v4 + v2[8]) = v0;
  *(v4 + v2[9]) = v1 & 1;
}

uint64_t sub_1C441C85C()
{
}

uint64_t sub_1C441C884()
{

  return sub_1C45FE854(v0);
}

uint64_t sub_1C441C8DC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441C920()
{
  v2 = *(v0 + 176);

  return sub_1C448D818(v2);
}

void sub_1C441C954(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

void sub_1C441C988()
{
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
}

uint64_t sub_1C441C9A0()
{
}

uint64_t sub_1C441C9EC()
{
}

uint64_t sub_1C441CA08()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C441CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F027E8();
}

uint64_t sub_1C441CA74()
{

  return sub_1C4EFAD68();
}

uint64_t sub_1C441CAC0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v4 - 136);

  return sub_1C44CD9E0(v6, v3 + a3, a1, a2);
}

uint64_t sub_1C441CB00()
{

  return sub_1C4F001A8();
}

uint64_t sub_1C441CB38()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;
}

void sub_1C441CB80()
{
  *(v3 - 288) = v1;
  *(v3 - 392) = v0;
  *(v3 - 400) = v2;
}

void sub_1C441CBA4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441CBD8()
{
  v2 = v0[43];

  return sub_1C49D15A0(v2, v0 + 39, v0 + 38);
}

uint64_t sub_1C441CC2C()
{

  return sub_1C4EF9C08();
}

uint64_t sub_1C441CC68(uint64_t a1)
{

  return MEMORY[0x1EEE13DC0](v1, a1);
}

uint64_t sub_1C441CCB8()
{
}

uint64_t sub_1C441CD0C(uint64_t a1)
{

  return swift_once();
}

void sub_1C441CD40()
{

  JUMPOUT(0x1C6942830);
}

void sub_1C441CD60(double a1)
{

  sub_1C4644964();
}

uint64_t sub_1C441CD94(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441CDEC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441CE0C@<X0>(uint64_t a1@<X8>)
{

  return sub_1C443CDD0(v1 + a1, type metadata accessor for VectorDB.EmbeddingConfig);
}

uint64_t sub_1C441CE68()
{
}

uint64_t sub_1C441CE84(uint64_t a1, uint64_t a2)
{

  return sub_1C4EFBE98();
}

void sub_1C441CEBC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1C441CF20()
{

  sub_1C459E828();
}

void sub_1C441CF44()
{
  *(v0 + 32) = *(*(v0 + 40) + 16) != 0;

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C441CF9C()
{

  return sub_1C4418280(v1 - 128, v0);
}

void sub_1C441CFB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1C441D000()
{
  v2 = *(v0 - 304);

  return sub_1C4D42998(v2, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
}

id sub_1C441D120(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1C441D188@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000010;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_1C441D1D8()
{

  return sub_1C466C344((v2 + 16), v0, v1);
}

uint64_t sub_1C441D1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_1C441D23C()
{

  return sub_1C441D670((v0 + 216), v0 + 176);
}

uint64_t sub_1C441D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F00F28();
}

uint64_t sub_1C441D358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_1C441D374()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441D39C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C441D3EC()
{

  return sub_1C443CDD0(v0, v1);
}

uint64_t sub_1C441D408(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4EFB968();
}

void sub_1C441D444()
{
  sub_1C440962C((v0 - 192));

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441D484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1C445EC18(v10, v11, va, v8, v9);
}

void sub_1C441D4A8()
{
  v2 = *(v0 + 16) + 1;

  sub_1C458F628(0, v2, 1, v0);
}

uint64_t sub_1C441D564()
{

  return sub_1C448D4C0();
}

uint64_t sub_1C441D57C()
{
  *(v0 - 72) = 6;

  return sub_1C4F027E8();
}

uint64_t sub_1C441D5B4()
{
  *(v0 - 66) = 1;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C441D618(double a1)
{
  v7 = (v3 + v4[8]);
  *v7 = v2;
  v7[1] = v1;
  v8 = (v3 + v4[10]);
  v9 = *(v5 - 112);
  *v8 = *(v5 - 120);
  v8[1] = v9;
  *(v3 + v4[11]) = a1;
  *(v3 + v4[12]) = *(v5 - 140);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441D670(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C441D710()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 336);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C441D790()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441D7BC()
{

  return swift_slowAlloc();
}

void sub_1C441D7D8()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = 0;
}

void sub_1C441D800(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69A9748];

  sub_1C4EBBCBC(319, a2, v3);
}

unint64_t sub_1C441D828(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C442B770(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C442B870(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1C440962C(v11);
  return v7;
}

uint64_t sub_1C441D8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4();
  v10 = a5();
  v11 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v9, v10, v11);
}

unint64_t sub_1C441D9A4()
{
  result = qword_1EDDFF958;
  if (!qword_1EDDFF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF958);
  }

  return result;
}

unint64_t sub_1C441D9F8()
{
  result = qword_1EDDFF960;
  if (!qword_1EDDFF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF960);
  }

  return result;
}

void sub_1C441DA58()
{
  sub_1C43FE628();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  swift_unownedRetainStrong();
  sub_1C441E000(v3);

  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C4F0C890;
    v15 = MEMORY[0x1E69A0168];
    *(v14 + 56) = MEMORY[0x1E69E63B0];
    *(v14 + 64) = v15;
    v16 = MEMORY[0x1E69E6370];
    v17 = MEMORY[0x1E69A0150];
    *(v14 + 32) = v5;
    *(v14 + 96) = v16;
    *(v14 + 104) = v17;
    v18 = MEMORY[0x1E69E6530];
    *(v14 + 72) = v7 & 1;
    v19 = MEMORY[0x1E69A0180];
    *(v14 + 136) = v18;
    *(v14 + 144) = v19;
    *(v14 + 112) = v9;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v20 = sub_1C43FBF04();
    v21(v20);
    sub_1C43FCF64();
    sub_1C440BAA8(v22, v23, v24, v12);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C44109F8();
}

uint64_t sub_1C441DC54()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C441DC78()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441DCA4(uint64_t a1, unint64_t a2)
{
  sub_1C441DFEC(a1, a2);
}

uint64_t sub_1C441DDA4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = *(v2 - 160);
}

uint64_t sub_1C441DE10(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

BOOL sub_1C441DE30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog)
{

  return os_log_type_enabled(oslog, v9);
}

__n128 sub_1C441DE78()
{
  result = *(v0 - 176);
  *(v0 - 160) = *(v0 - 192);
  *(v0 - 144) = result;
  return result;
}

void sub_1C441DE98()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441DEC4(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C441DF14(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C441DF80(uint64_t a1)
{

  return sub_1C4F00DB8();
}

uint64_t sub_1C441DFB4(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;

  return swift_willThrow();
}

uint64_t sub_1C441DFEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C4434000(a1, a2);
  }

  return a1;
}

uint64_t sub_1C441E06C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1C441E084()
{
  v2 = *(v0 - 792);
  v3 = *(v0 - 800);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C441E0D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C44D7768(v5, v4 + v6, a3, a4);
}

BOOL sub_1C441E1F8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C441E264()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C441E2DC()
{
}

void sub_1C441E30C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, int a11, os_log_type_t a12)
{

  _os_log_impl(a1, log, a12, a4, v12, 0x16u);
}

void sub_1C441E344()
{
  v1 = v0[49];
  v0[51] = v0[48];
  v0[52] = v1;
}

void sub_1C441E398(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 4) = 1;
}

uint64_t sub_1C441E424(uint64_t a1)
{

  return sub_1C4EFB6F8();
}

uint64_t sub_1C441E43C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C441E458()
{

  return sub_1C4F01108();
}

void sub_1C441E478()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441E498()
{

  return sub_1C440BAA8(v0, 0, 1, v1);
}

void sub_1C441E4E4()
{
  *(v0 - 856) = 0;
  *(v0 - 864) = 0;
  *(v0 - 840) = 0;
  *(v0 - 848) = 0;
  *(v0 - 816) = 0;
  *(v0 - 832) = 0;
  *(v0 - 808) = 0;
  *(v0 - 824) = 0;
  *(v0 - 872) = 0;
  *(v0 - 880) = 0;
  *(v0 - 888) = 0;
  *(v0 - 896) = 0;
}

uint64_t sub_1C441E55C()
{

  return sub_1C4EF9CD8();
}

void sub_1C441E5A8()
{
  v5 = *(v4 - 152);
  *(v5 + 16) = v0;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
}

id sub_1C441E5BC()
{
  v3 = *(*(v1 - 128) + 8 * v0 + 32);

  return v3;
}

uint64_t sub_1C441E650(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441E688()
{
  *(v2 - 536) = v1;
  *(v2 - 520) = v0;
  return *(v2 - 288);
}

uint64_t sub_1C441E6F8()
{

  return sub_1C4466EEC(v1, v0);
}

uint64_t sub_1C441E710(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441E730()
{
  v4 = *(v1 + 56) + 32 * v0;

  return sub_1C442B870(v4, v2 - 208);
}

uint64_t sub_1C441E75C()
{

  return sub_1C4EFB898();
}

void *sub_1C441E7B4(void *a1)
{

  return sub_1C4624330(v1, a1);
}

uint64_t sub_1C441E7F0(uint64_t a1)
{
  *(v2 - 72) = v1;

  return sub_1C4EFADF8();
}

void sub_1C441E858(uint64_t a1@<X8>)
{
  v3 = (*(v1 + a1) + 24);

  os_unfair_lock_lock(v3);
}

uint64_t sub_1C441E870(uint64_t a1, uint64_t a2)
{

  return sub_1C4EFBBA8();
}

void sub_1C441E8B4()
{
  *(v1 - 168) = v0;

  sub_1C459D660();
}

uint64_t sub_1C441E914()
{

  return swift_beginAccess();
}

uint64_t sub_1C441E968@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 128);
  result = *(v4 + v3);
  *(v4 + v3) = a1;
  return result;
}

uint64_t sub_1C441E9A8()
{
  *(v0 - 112) = 4;

  return sub_1C4F026C8();
}

uint64_t sub_1C441EA14(uint64_t a1, uint64_t a2)
{

  return sub_1C4F025E8();
}

unint64_t sub_1C441EA40(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1C441D828(v4, v3, va);
}

uint64_t sub_1C441EA60()
{
}

uint64_t sub_1C441EA9C@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_1C441EADC()
{

  return sub_1C45FE854(v0);
}

void sub_1C441EB48(uint64_t a1@<X8>)
{
  *(v1 - 160) = 0;
  *(v1 - 152) = 0;
  *(v1 - 168) = a1;
}

uint64_t sub_1C441EB9C()
{

  return sub_1C47C0140();
}

uint64_t sub_1C441EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *sub_1C441EC18(uint64_t a1, ...)
{

  return sub_1C4F02AF8();
}

uint64_t sub_1C441EC60()
{
  v3 = *(v1 - 264);

  return sub_1C482D6DC(v0, v3);
}

uint64_t sub_1C441ED04()
{

  return sub_1C44157D4(v1, 1, v0);
}

void sub_1C441ED2C(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  sub_1C494DD70(*(v2 + a1));
  sub_1C494DD70(v3);
}

BOOL sub_1C441ED60()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C441ED78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v4 - 72) = *(v2 + 8 * v3);
  return result;
}

void sub_1C441ED8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1C459203C(v10, v11, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1C441EDB0()
{

  return swift_dynamicCast();
}

id sub_1C441EE18()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

void sub_1C441EE30()
{
  v5 = *(v4 - 88);
  *v1 = v3;
  v1[1] = v5;
  v6 = *(v4 - 96);
  v1[2] = *(v4 - 104);
  v1[3] = v6;
  v1[4] = v0;
  v1[5] = v2;
}

uint64_t sub_1C441EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 408) = v9;
  *(v10 - 256) = v8;
  *(v10 - 368) = a8;
  *(v10 - 304) = a7;
  *(v10 - 328) = a6;
  *(v10 - 336) = a5;
  *(v10 - 480) = a4;
  *(v10 - 352) = a2;
  *(v10 - 320) = a1;
  v12 = *(v10 + 24);
  *(v10 - 248) = *(v10 + 32);
  *(v10 - 264) = v12;

  return type metadata accessor for EntityTriple(0);
}

uint64_t sub_1C441EF00(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441EF34()
{
  v3 = *(v1 - 72);

  return sub_1C44098F0(v0, v3);
}

uint64_t sub_1C441EF60()
{

  return type metadata accessor for TopicMatcher(0);
}

void sub_1C441EF8C()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441EFA4(uint64_t a1)
{

  return swift_once();
}

void *sub_1C441F014@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(v4 + 184);

  return sub_1C460784C((v4 + 264), v9, v11, v8, v13, v6, v10, v5, a1, v7, a4);
}

uint64_t sub_1C441F074(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02718();
}

void sub_1C441F0EC()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C441F124()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441F19C()
{
}

uint64_t sub_1C441F220@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C441F2FC()
{

  return sub_1C44DBCAC(v0, type metadata accessor for PHPersonStructs.EntityAliasRelationshipType);
}

uint64_t sub_1C441F394(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441F3CC()
{
}

void sub_1C441F400(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_1C441F44C(uint64_t a1)
{

  return swift_once();
}

void sub_1C441F46C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void sub_1C441F560(char a1@<W8>)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = a1;
}

uint64_t sub_1C441F648(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v1, v2, &protocol conformance descriptor for ProgressToken<A>);
}

uint64_t sub_1C441F6B4@<X0>(char a1@<W8>)
{
  *(v4 - 96) = a1;
  v6 = *(v4 - 256);
  v7 = *(v4 - 264);
  v8 = *(v4 - 268);

  return sub_1C45D7F78(v6, v1, v2, v3, v7, v8);
}

uint64_t sub_1C441F6E8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441F748()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441F788()
{
  v2 = *(v0 - 224);

  return sub_1C46BFDE4(v2, type metadata accessor for ScreenTimeStructs.AddressRelationshipType);
}

uint64_t sub_1C441F7C8(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t sub_1C441F800()
{

  return sub_1C4F02858();
}

double *sub_1C441F820(__n128 a1, __n128 a2)
{
  v5 = a1.n128_i64[0];
  v6 = *(v2 + 80);

  return sub_1C46F64FC(v3, v5, v6);
}

void sub_1C441F8B8(void *a1@<X8>)
{
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
}

uint64_t sub_1C441F8CC()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C441F900(uint64_t a1)
{
  sub_1C440BAA8(v3 + v4, 1, 1, a1);
  sub_1C440BAA8(v3 + *(v2 + 24), 1, 1, a1);
  return sub_1C44157D4(v1, 1, v2);
}

uint64_t sub_1C441F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1C441F984()
{

  return sub_1C47CD188(v0, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
}

uint64_t sub_1C441F9AC()
{

  return sub_1C47D0B14(v0, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType);
}

uint64_t sub_1C441FA58(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C441FACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{

  return static Transformers.reportError(error:context:config:pipelineType:)(a1, 0x694C657275747566, 0xEF746E6576456566, v5, a5);
}

uint64_t sub_1C441FB00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 56) = a2;
  *(result + 64) = v2;
  strcpy((result + 32), "schemaSQLHash");
  *(result + 46) = -4864;
  return result;
}

uint64_t sub_1C441FB2C()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  return sub_1C4F02248();
}

uint64_t sub_1C441FBD0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02798();
}

uint64_t sub_1C441FC18()
{

  return swift_allocObject();
}

uint64_t sub_1C441FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C4505B00(v9, &a9);
}

void sub_1C441FC90(double a1)
{

  sub_1C4647EF8();
}

uint64_t sub_1C441FCF8(uint64_t a1)
{
  sub_1C440BAA8(v1, 1, 1, a1);
}

uint64_t sub_1C441FDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C4F024A8();
}

void *sub_1C441FDE4(void *result)
{
  result[9] = v1;
  result[10] = 0xD000000000000016;
  v6 = v2[24];
  result[11] = v2[25];
  result[12] = v3;
  result[15] = v1;
  result[16] = 0xD000000000000016;
  result[17] = v6;
  result[18] = v4;
  result[21] = v1;
  result[22] = 0xD000000000000018;
  result[23] = v2[23];
  result[24] = v5;
  result[27] = v1;
  result[28] = 0x73656372756F73;
  result[29] = 0xE700000000000000;
  return result;
}

uint64_t sub_1C441FE6C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = 0xD00000000000002BLL;
  *(v2 - 88) = (a1 - 32) | 0x8000000000000000;
  return v1;
}

uint64_t sub_1C441FE90()
{

  return sub_1C4F010B8();
}

uint64_t sub_1C441FEB4()
{

  return sub_1C4F00198();
}

uint64_t sub_1C441FF40()
{

  return sub_1C4EFB5C8();
}

void sub_1C441FF6C()
{
  *(v2 - 184) = v0;
  *(v2 - 88) = v1;

  sub_1C459D970();
}

uint64_t sub_1C441FF94(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4420040()
{
  sub_1C4409678((v0 + 208), *(v0 + 232));

  return sub_1C4EFF7D8();
}

void sub_1C442007C()
{

  sub_1C458A900();
}

void *sub_1C442013C()
{

  return sub_1C446ABD0(0);
}

uint64_t sub_1C4420158(void *a1)
{
  a1[2] = v5;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4420188(uint64_t a1)
{

  return swift_once();
}

void *sub_1C44201C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0x48uLL);
}

__n128 *sub_1C44201F0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x79745F6563616C70;
  result[2].n128_u64[1] = 0xEA00000000006570;
  return result;
}

uint64_t sub_1C4420284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1C4F02358();
}

uint64_t sub_1C44202CC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C44202EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return MEMORY[0x1EEE15020](v2, a1, a2 | 0x8000000000000000, 0);
}

uint64_t sub_1C4420310(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

void sub_1C442032C()
{
  *(v3 - 216) = v1;
  v4 = **(v3 - 136);
  v5 = *(*(v3 - 152) + 72);
  *(v3 - 200) = v2;
  *(v3 - 112) = v4;
  *(v3 - 184) = v5;
  *(v3 - 176) = v0;
}

uint64_t sub_1C4420364@<X0>(char a3@<W8>)
{
  *(v3 - 80) = a3;

  return sub_1C4F02798();
}

uint64_t sub_1C44203B8(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1C442040C()
{

  return sub_1C44CFDB0(58, 0xE100000000000000, v1, v0);
}

uint64_t sub_1C4420464(uint64_t a1, uint64_t a2)
{
  sub_1C442B738(a1, a2);

  return swift_beginAccess();
}

uint64_t sub_1C4420498(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C44204FC()
{

  return sub_1C440BAA8(v0, 1, 1, v1);
}

void sub_1C4420544()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C4420588()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44205B0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

void *sub_1C44205D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return memcpy(va, v13, 0x48uLL);
}

uint64_t sub_1C442063C()
{
  *v1 = 1684628589;
  v1[1] = 0xE400000000000000;
  *(v2 - 68) = v0;

  return sub_1C4EFBDE8();
}

uint64_t sub_1C442066C()
{

  return sub_1C4F01578();
}

void sub_1C44206FC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a14, uint64_t _20, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  sub_1C4C57428(v28, v23, BYTE4(a12) & 1, v22, v27, v26, v25, v24, a14, a11, a12, a14, _20, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4420758()
{

  return sub_1C443C0C8(v0, type metadata accessor for Configuration);
}

void *sub_1C4420794(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  return sub_1C4409678((v2 - 192), *(v2 - 168));
}

uint64_t sub_1C44207CC()
{

  return sub_1C443C180(v0, type metadata accessor for VectorDB.Config);
}

void sub_1C44207F4()
{
  *(v0 - 376) = 1;
  *(v0 - 372) = 1;
  *(v0 - 368) = 1;
}

void sub_1C4420830(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0x16u);
}

uint64_t sub_1C4420884(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_1C44208D8(uint64_t a1, uint64_t a2, ...)
{

  return sub_1C4F01A28();
}

uint64_t sub_1C44208F4(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = v1;
  *(v2 + 16) = a1;
  return v2;
}

void sub_1C4420984()
{

  sub_1C44CD9C0(0, 34, 0);
}

uint64_t sub_1C4420C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4420C3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C456902C(a2, a3);
  sub_1C43FBCE0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C4420C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v26;
  a23 = v27;
  v229 = v23;
  a10 = v28;
  v228 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  sub_1C440A82C();
  sub_1C4EF9C88();
  sub_1C4CE7D58();
  if (v24)
  {
    (*(v44 + 8))(v25, v42);
    goto LABEL_10;
  }

  v225 = v44;
  v226 = v42;
  v222 = v37;
  v223 = v35;
  v227 = v25;
  v230 = v41;
  v224 = v39;
  if (v46 == 2)
  {
    sub_1C44952EC();
    if (!v115)
    {
      sub_1C441A86C();
      swift_once();
    }

    v47 = sub_1C4F00978();
    sub_1C43FCEE8(v47, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CC8();

    if (os_log_type_enabled(v48, v49))
    {
      sub_1C43FECF0();
      v50 = swift_slowAlloc();
      sub_1C43FEC60();
      v51 = swift_slowAlloc();
      v231 = v51;
      *v50 = 136315138;
      v52 = sub_1C4426524(v222, v223, v33, v31);
      v54 = sub_1C4485F3C(v52, v53);

      *(v50 + 4) = v54;
      sub_1C445AC20(&dword_1C43F8000, v55, v56, "SourceUpdater: Dropping notification for %s - no listeners");
      sub_1C440962C(v51);
      v57 = sub_1C44068C0();
      MEMORY[0x1C6942830](v57);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v44 + 8))(v227, v42);
    }

    else
    {

      v59 = sub_1C443F410();
      v60(v59);
    }

    goto LABEL_10;
  }

  v220 = v46;
  sub_1C4417DA0();
  v61 = v220;
  if ((v220 & 0x100) != 0 || ((v220 ^ a10) & 1) != 0 || *(v58 + 16))
  {
    v62 = v58;
    sub_1C4EF9AD8();
    sub_1C445AA08();
    sub_1C441DA58();
    v63 = v31;
    v61 = v220;
  }

  else
  {
    v62 = v58;
    LOBYTE(v25) = v39;
    v63 = v31;
  }

  v64 = v62;
  if (v61 & 1) == 0 || (a10)
  {
    v67 = v42;
  }

  else
  {
    v65 = v63;
    v206 = v62;
    sub_1C443EFA8();
    sub_1C4CE83A0();
    v218 = *(v66 + 16);
    v216 = v65;
    if (v218)
    {
      sub_1C44952EC();
      if (!v115)
      {
        sub_1C441A86C();
        swift_once();
      }

      v68 = 0;
      sub_1C43FBDF0();
      v203 = v69;
      sub_1C43FBDF0();
      v201 = v71;
      *&v72 = 136315394;
      v209 = v72;
      do
      {
        if (v68 >= *(v70 + 16))
        {
          goto LABEL_121;
        }

        v73 = v70;
        v74 = *(v70 + 8 * v68 + 32);
        v75 = sub_1C4F00978();
        sub_1C43FCEE8(v75, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v76 = sub_1C4F00968();
        v77 = sub_1C4F01CF8();

        if (os_log_type_enabled(v76, v77))
        {
          v215 = v77;
          v78 = sub_1C440F274();
          sub_1C43FEC60();
          v212 = swift_slowAlloc();
          v233[0] = v212;
          v79 = v78;
          *v78 = v209;
          v231 = 0;
          v232 = 0xE000000000000000;
          v80 = 0xE700000000000000;
          v81 = 0x6C6F72746E6F63;
          switch(v222)
          {
            case 1:
              v81 = sub_1C4CEC2AC();
              v80 = 0xEE00687061724765;
              break;
            case 2:
              v81 = sub_1C4471D54();
              v82 = 1702125924;
              goto LABEL_33;
            case 3:
              v80 = 0xE500000000000000;
              v81 = 0x656D6F6962;
              break;
            case 4:
              v80 = 0xE400000000000000;
              v81 = 2003134838;
              break;
            case 5:
              v81 = 0xD000000000000010;
              v83 = &a10;
              goto LABEL_36;
            case 6:
              v81 = 0xD000000000000014;
              v83 = &a14;
LABEL_36:
              v80 = *(v83 - 32);
              break;
            case 7:
              v81 = sub_1C4475504();
              v82 = 1852795252;
LABEL_33:
              v80 = v82 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            default:
              break;
          }

          MEMORY[0x1C6940010](v81, v80);

          v84 = sub_1C441CC9C();
          MEMORY[0x1C6940010](v84);
          MEMORY[0x1C6940010](v223, v33);
          v85 = sub_1C441CC9C();
          MEMORY[0x1C6940010](v85);
          a13 = v216;
          sub_1C4F02438();
          v25 = sub_1C441D828(v231, v232, v233);

          *(v79 + 1) = v25;
          *(v79 + 6) = 2048;
          *(v79 + 14) = v74;
          _os_log_impl(&dword_1C43F8000, v76, v215, "SourceUpdater: %s is not available - view %ld can no longer update", v79, 0x16u);
          sub_1C440962C(v212);
          v86 = sub_1C44068C0();
          MEMORY[0x1C6942830](v86);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          LOBYTE(v25) = v224;
        }

        else
        {

          LOBYTE(v25) = v224;
        }

        sub_1C443EFA8();
        sub_1C4CE66C4(v87, v88, v89, v90, v91, v92, v93, v94, v195, v197, v199, v201, v203, v204, v205, v206, v209, *(&v209 + 1), v211, v212);
        ++v68;
        v70 = v73;
      }

      while (v218 != v68);
    }

    v63 = v216;
    v64 = v206;
    v67 = v226;
    v61 = v220;
  }

  v95 = *(v64 + 16);
  v217 = v63;
  if (!v95)
  {
    v181 = v67;

    sub_1C44952EC();
    if (!v115)
    {
      sub_1C441A86C();
      swift_once();
    }

    v182 = sub_1C4F00978();
    sub_1C43FCEE8(v182, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v183 = sub_1C4F00968();
    v184 = sub_1C4F01CF8();

    if (os_log_type_enabled(v183, v184))
    {
      sub_1C43FECF0();
      v185 = swift_slowAlloc();
      sub_1C43FEC60();
      v186 = swift_slowAlloc();
      v231 = v186;
      *v185 = 136315138;
      v187 = sub_1C4426524(v222, v223, v33, v217);
      v189 = sub_1C4485F3C(v187, v188);

      *(v185 + 4) = v189;
      sub_1C445AC20(&dword_1C43F8000, v190, v191, "SourceUpdater: Dropping notification for %s - no action needed");
      sub_1C440962C(v186);
      v192 = sub_1C44068C0();
      MEMORY[0x1C6942830](v192);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v225 + 8))(v227, v226);
    }

    else
    {

      (*(v225 + 8))(v227, v181);
    }

    goto LABEL_10;
  }

  v96 = 0;
  v202 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_highPriortyTaskState;
  LODWORD(v97) = v61 | a10 ^ 1;
  while (1)
  {
    if (v95 == v96)
    {
      v193 = sub_1C443F410();
      v194(v193);

      goto LABEL_10;
    }

    v98 = v96;
    if (v96 >= *(v64 + 16))
    {
      break;
    }

    v99 = v64;
    sub_1C443EFA8();
    sub_1C4423E98();
    v102 = v101;
    if (v97 & 1 | ((v101 & 0x100) == 0))
    {
LABEL_52:
      v96 = (&v98->isa + 1);
      v64 = v99;
      if (a10)
      {
        v198 = v100;
        v214 = v97;
        sub_1C4424B10(v102);
        sub_1C447CE60();
        v115 = v115 && v114 == 0xE400000000000000;
        if (v115)
        {
          v137 = (v102 & 0x1000000) == 0;

          v97 = v33;
          goto LABEL_78;
        }

        sub_1C442E6C0(v113, v95);
        sub_1C4413FD8();

        v97 = v33;
        if (v25)
        {
          v137 = (v102 & 0x1000000) == 0;
LABEL_78:
          v138 = v222;
          if (v137)
          {
            v139 = v228;
            goto LABEL_88;
          }

          LOBYTE(v25) = v223;
          sub_1C44484B8();
          v142 = v141;
          if (!v141)
          {
            v138 = v222;
            goto LABEL_86;
          }

          v143 = *(v229 + v202);
          v233[0] = v140;
          v233[1] = v141;
          MEMORY[0x1EEE9AC00](v140);
          os_unfair_lock_lock(v143 + 6);
          sub_1C44FFBE4(&v143[4], &v231);
          os_unfair_lock_unlock(v143 + 6);

          if (qword_1EDDFD018 != -1)
          {
            sub_1C441A86C();
            swift_once();
          }

          v144 = sub_1C4F00978();
          sub_1C43FCEE8(v144, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v145 = sub_1C4F00968();
          v146 = sub_1C4F01CF8();

          if (os_log_type_enabled(v145, v146))
          {
            v147 = sub_1C440F274();
            v231 = sub_1C43FC11C();
            *v147 = 136315394;
            v138 = v222;
            v148 = sub_1C4426524(v222, v223, v97, v217);
            v150 = v149;
            v25 = sub_1C441D828(v148, v149, &v231);

            *(v147 + 4) = v25;
            *(v147 + 12) = 2080;
            v151 = sub_1C4436744();
            sub_1C441D828(v151, v142, v152);
            sub_1C4406834();

            *(v147 + 14) = v150;
            _os_log_impl(&dword_1C43F8000, v145, v146, "SourceUpdater: %s triggered high priority work for %s", v147, 0x16u);
            swift_arrayDestroy();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();

LABEL_86:
            v139 = v228;
            goto LABEL_88;
          }

          v138 = v222;
          v139 = v228;
LABEL_88:
          sub_1C4409528(v138);
          v154 = v153;
          if (v155 == 2003134838 && v153 == 0xE400000000000000)
          {
            LOBYTE(v25) = v139;

            if (v139 == 11)
            {
              goto LABEL_107;
            }
          }

          else
          {
            sub_1C4F02938();
            sub_1C4413FD8();

            if ((v25 & 1) == 0 || v139 == 11)
            {
              goto LABEL_107;
            }
          }

          sub_1C4424B10(v139);
          sub_1C447CE60();
          if (v115 && v158 == 0xE400000000000000)
          {

LABEL_107:
            sub_1C44952EC();
            if (!v115)
            {
              sub_1C441A86C();
              swift_once();
            }

            v172 = sub_1C4F00978();
            sub_1C43FCEE8(v172, qword_1EDE2DDF8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v95 = sub_1C4F00968();
            v173 = sub_1C4F01CF8();

            if (os_log_type_enabled(v95, v173))
            {
              v25 = sub_1C440F274();
              sub_1C43FEC60();
              v174 = swift_slowAlloc();
              v231 = v174;
              *v25 = 136315394;
              v175 = v138;
              v33 = v97;
              v176 = sub_1C4426524(v175, v223, v97, v217);
              v97 = v95;
              v95 = sub_1C4485F3C(v176, v177);

              *(v25 + 4) = v95;
              sub_1C4460B80();
              _os_log_impl(&dword_1C43F8000, v97, v173, "SourceUpdater: %s triggered %ld to run on the live schedule", v25, 0x16u);
              sub_1C440962C(v174);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              v178 = sub_1C44068C0();
              MEMORY[0x1C6942830](v178);
            }

            else
            {
              v33 = v97;
            }

            sub_1C445AA08();
            sub_1C442AE14();
            sub_1C441BE3C();
            goto LABEL_113;
          }

          sub_1C442E6C0(v157, v154);
          sub_1C4413FD8();

          if (v25)
          {
            goto LABEL_107;
          }

          sub_1C44952EC();
          if (!v115)
          {
            sub_1C441A86C();
            swift_once();
          }

          v160 = sub_1C4F00978();
          sub_1C43FCEE8(v160, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v161 = sub_1C4F00968();
          v162 = sub_1C4F01CF8();

          v163 = v162;
          if (os_log_type_enabled(v161, v162))
          {
            sub_1C43FEC60();
            v164 = swift_slowAlloc();
            v231 = sub_1C43FC11C();
            *v164 = 136315650;
            v165 = sub_1C4426524(v222, v223, v97, v217);
            v167 = sub_1C44C12F8(v165, v166);

            *(v164 + 4) = v167;
            *(v164 + 12) = 2048;
            *(v164 + 14) = v198;
            *(v164 + 22) = 2080;
            v168 = sub_1C4424B10(v228);
            v170 = sub_1C44C12F8(v168, v169);

            *(v164 + 24) = v170;
            _os_log_impl(&dword_1C43F8000, v161, v163, "SourceUpdater: %s triggered %ld to run on context schedule %s (instead of live)", v164, 0x20u);
            swift_arrayDestroy();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          sub_1C442AE14();
          v25 = v229[12];
          v171 = v229[13];
          v95 = sub_1C4409678(v229 + 9, v25);
          (*(v171 + 8))(v228, v25, v171);
          v33 = v97;
          LOBYTE(v25) = v224;
          sub_1C441BE3C();
LABEL_113:
          sub_1C4485DCC();
        }

        else
        {
          v116 = sub_1C4424B10(v102);
          if (v116 == 1701736302 && v117 == 0xE400000000000000)
          {

LABEL_68:
            if (qword_1EDDFD018 != -1)
            {
              sub_1C441A86C();
              swift_once();
            }

            v129 = sub_1C4F00978();
            sub_1C43FCEE8(v129, qword_1EDE2DDF8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v130 = sub_1C4F00968();
            v131 = sub_1C4F01CF8();

            v95 = v223;
            if (os_log_type_enabled(v130, v131))
            {
              v221 = v131;
              v132 = sub_1C440F274();
              sub_1C43FEC60();
              v231 = swift_slowAlloc();
              v97 = v231;
              *v132 = 136315394;
              v133 = sub_1C4426524(v222, v223, v33, v217);
              v135 = sub_1C4485F3C(v133, v134);

              *(v132 + 4) = v135;
              sub_1C4460B80();
              _os_log_impl(&dword_1C43F8000, v130, v221, "SourceUpdater: %s now available for view %ld", v132, 0x16u);
              sub_1C440962C(v97);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              v136 = sub_1C44068C0();
              MEMORY[0x1C6942830](v136);
            }

            LOBYTE(v25) = v224;
            sub_1C441BE3C();
            sub_1C4485DCC();
          }

          else
          {
            sub_1C44257B8(v116, v117);
            sub_1C4413FD8();

            if (v25)
            {
              goto LABEL_68;
            }

            if (qword_1EDDFD018 != -1)
            {
              sub_1C441A86C();
              swift_once();
            }

            v119 = sub_1C4F00978();
            sub_1C43FCEE8(v119, qword_1EDE2DDF8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v120 = sub_1C4F00968();
            v121 = sub_1C4F01CF8();

            if (os_log_type_enabled(v120, v121))
            {
              sub_1C43FEC60();
              v208 = v120;
              v122 = swift_slowAlloc();
              v231 = sub_1C43FC11C();
              *v122 = 136315650;
              v123 = sub_1C4426524(v222, v223, v33, v217);
              v125 = sub_1C44C12F8(v123, v124);

              *(v122 + 4) = v125;
              *(v122 + 12) = 2048;
              *(v122 + 14) = v198;
              *(v122 + 22) = 2080;
              v126 = sub_1C4424B10(v102);
              v196 = sub_1C44C12F8(v126, v127);

              *(v122 + 24) = v196;
              _os_log_impl(&dword_1C43F8000, v208, v121, "SourceUpdater: %s triggered %ld to run on the schedule %s", v122, 0x20u);
              swift_arrayDestroy();
              v128 = sub_1C44068C0();
              MEMORY[0x1C6942830](v128);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            else
            {
            }

            sub_1C442AE14();
            v25 = v229[12];
            v97 = v229[13];
            v95 = sub_1C4409678(v229 + 9, v25);
            (*(v97 + 8))(v102, v25, v97);
            LOBYTE(v25) = v224;
            sub_1C441BE3C();
            sub_1C4485DCC();
            if ((v102 & 0x10000) != 0)
            {
              sub_1C4458FE0(v227, v102);
              sub_1C443EFA8();
              LODWORD(v97) = v214;
              sub_1C446769C();
              sub_1C4485DCC();
              v64 = v99;
            }
          }
        }
      }
    }

    else
    {
      v103 = v100;
      sub_1C443EFA8();
      sub_1C4CE8550();
      v96 = (&v98->isa + 1);
      v64 = v99;
      if (v104)
      {
        v210 = v95;
        if (qword_1EDDFD018 != -1)
        {
          sub_1C441A86C();
          swift_once();
        }

        v105 = sub_1C4F00978();
        sub_1C43FCEE8(v105, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v207 = sub_1C4F00968();
        v106 = sub_1C4F01CF8();

        v200 = v106;
        v107 = sub_1C442B9BC();
        v213 = v97;
        if (os_log_type_enabled(v107, v108))
        {
          v109 = sub_1C440F274();
          sub_1C43FEC60();
          v110 = swift_slowAlloc();
          v231 = v110;
          *v109 = 136315394;
          v111 = sub_1C4426524(v222, v223, v33, v217);
          v219 = sub_1C44C12F8(v111, v112);

          *(v109 + 4) = v219;
          *(v109 + 12) = 2048;
          *(v109 + 14) = v103;
          _os_log_impl(&dword_1C43F8000, v207, v200, "SourceUpdater: %s available - view %ld can now update", v109, 0x16u);
          sub_1C440962C(v110);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        sub_1C4CE8700();
        sub_1C4D11B14(v230, v224);
        sub_1C445C780();
        v95 = v210;
        LOBYTE(v25) = v224;
        LODWORD(v97) = v213;
        v100 = v103;
        goto LABEL_52;
      }
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
  v179 = sub_1C443F410();
  v180(v179);

LABEL_10:
  sub_1C43FBC80();
}

uint64_t sub_1C44221DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>, unint64_t a4@<X5>)
{
  *(v5 - 232) = *(a3 + a2);

  return sub_1C4570108(a2 + 1, a1, v4, a3, a2, a4);
}

uint64_t sub_1C4422208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1C456902C(a5, a6);
}

uint64_t sub_1C4422248()
{
  result = *(v2 - 208);
  *(v2 - 216) = v1;
  *(v2 - 208) = v0;
  return result;
}

uint64_t sub_1C44222A4()
{

  return swift_slowAlloc();
}

void sub_1C4422300()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4422374()
{
}

void sub_1C44223DC()
{

  sub_1C49BA618();
}

uint64_t sub_1C44223F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F01FC8();
}

uint64_t sub_1C4422434(uint64_t a1)
{

  return sub_1C4EF97B8();
}

uint64_t sub_1C442244C()
{

  return sub_1C4F00188();
}

id sub_1C4422480(uint64_t a1)
{

  return MotionStateSignal.sessions(in:)(v1, a1);
}

uint64_t sub_1C44224A0()
{
  result = *(v1 - 400);
  *(v1 - 248) = *(v0 + 16);
  return result;
}

uint64_t sub_1C44224E8()
{
  *(v0 + 120) = v1;

  return swift_bridgeObjectRelease_n();
}

double sub_1C4422504()
{
  result = 0.0;
  v0[25] = 0u;
  v0[26] = 0u;
  v0[27] = 0u;
  v0[28] = 0u;
  v0[29] = 0u;
  return result;
}

uint64_t sub_1C4422518(uint64_t a1)
{

  return sub_1C4F01678();
}

uint64_t sub_1C442254C()
{
  v2 = *(v1 - 200);
  *(v1 - 136) = *(v1 - 196);
  *(v1 - 135) = v2;
  *(v1 - 134) = *(v1 - 204);
  *(v1 - 133) = v0;
  return v1 - 176;
}

void sub_1C4422594()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44225B8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1C4422610()
{
  *(v0 - 65) = 9;

  return sub_1C4F02658();
}

uint64_t sub_1C4422670(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

void sub_1C44226A4()
{
  v4 = (v2 + *(v3 + 32));
  *v4 = v1;
  v4[1] = v0;
}

uint64_t sub_1C44226D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v26 = a6;
  v10 = sub_1C4409678(a3, a3[3]);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v22);
  sub_1C4F01478();
  while (1)
  {
    sub_1C4418280(v22, AssociatedTypeWitness);
    sub_1C4F01FA8();
    if (!v20)
    {
      break;
    }

    sub_1C4420C94(a1, a2, v18, v19, v20, v21, 11, 1, v17, v18, SWORD2(v18), SBYTE6(v18), SHIBYTE(v18), v19, v20, v21, v22[0], v22[1], v22[2], AssociatedTypeWitness, AssociatedConformanceWitness, v25, v26);
    v15 = v14;

    if (v6)
    {
      break;
    }

    if (v15)
    {
      *a5 = 1;
    }

    if ((v15 & 0x100) != 0)
    {
      *v26 = 1;
    }
  }

  return sub_1C440962C(v22);
}

uint64_t sub_1C44228BC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_unownedRetain();

  a2(v6, a4);

  return swift_unownedRelease();
}

uint64_t sub_1C4422A24(int a1)
{
  *(v3 - 260) = a1;
  *(v3 - 200) = v1;
  *(v3 - 256) = v2;
  return v2;
}

uint64_t sub_1C4422A54()
{
  v4 = (*(v0 + 56) + 16 * v2);
  result = v4[1];
  v6 = *(v3 - 88);
  *v4 = v1;
  v4[1] = v6;
  return result;
}

uint64_t sub_1C4422AA0(uint64_t a1)
{

  return swift_once();
}

void sub_1C4422ADC()
{
  *(v3 - 160) = v2;
  *(v3 - 144) = v1;
  *(v3 - 128) = v0;
}

uint64_t sub_1C4422B0C()
{

  return swift_allocObject();
}

uint64_t sub_1C4422B34()
{

  return sub_1C497B524();
}

void sub_1C4422B6C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v11 = *(a1 + 16);
  a9 = v9;
  v12 = (a1 + 32);

  vDSP_svesq(v12, 1, &a9, v11);
}

void sub_1C4422BF4(uint64_t a1, uint64_t a2)
{

  sub_1C4C75350();
}

uint64_t sub_1C4422C70()
{

  return type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
}

uint64_t sub_1C4422C90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  result = *(v2 + v3);
  *(v2 + v3) = a1;
  return result;
}

void sub_1C4422D28(void (*a1)(void))
{
  v4 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  os_unfair_lock_lock(v4 + 6);
  sub_1C4422F74(&v5);
  os_unfair_lock_unlock(v4 + 6);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    a1();
  }
}

void sub_1C4422DD8(void *a1)
{
  v2 = v1;
  sub_1C4409678(a1, a1[3]);
  if (sub_1C4F01558())
  {
    if (qword_1EDDDC0A0 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDE2C950;
    os_unfair_lock_lock((qword_1EDE2C950 + 24));
    sub_1C45D229C(&v4[4]);
    if (v1)
    {
      os_unfair_lock_unlock(v4 + 6);
      __break(1u);
      return;
    }

    v2 = 0;
    os_unfair_lock_unlock(v4 + 6);
  }

  sub_1C44230F4(a1);
  if ((v5 & 1) == 0 || (sub_1C44F642C(), !v2))
  {
    MEMORY[0x1EEE9AC00](v5);
    sub_1C4422934();
  }
}

uint64_t *sub_1C4422F90(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1C4423018(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  sub_1C4409528(*a1);
  if (v4 == 0x656D6F6962 && v3 == 0xE500000000000000)
  {
  }

  else
  {
    v6 = sub_1C4F02938();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  if (v1 == 0xD000000000000016 && 0x80000001C4FC57A0 == v2)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

void sub_1C44230F4(void *a1)
{
  v1 = sub_1C4409678(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  (*(v4 + 16))(v3 - v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v22);
  sub_1C4F01478();
  sub_1C43FBDF0();
  while (2)
  {
    v5 = AssociatedConformanceWitness;
    sub_1C4418280(v22, AssociatedTypeWitness);
    sub_1C4406834();
    sub_1C4F01FA8();
    if (!v21)
    {
      goto LABEL_20;
    }

    switch(v18)
    {
      case 1:
        sub_1C4CEC2AC();
        goto LABEL_8;
      case 2:
        sub_1C4471D54();
        goto LABEL_8;
      case 3:

        goto LABEL_9;
      case 7:
        sub_1C4475504();
        goto LABEL_8;
      default:
LABEL_8:
        sub_1C4F02938();
        sub_1C4413FD8();

        if ((v5 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        v18 = v20;
        v20 = v21;
        sub_1C4415EA8();
        sub_1C4F02058();
        sub_1C4406834();

        if (v21 != 2)
        {
LABEL_12:

          continue;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44A1C70();

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C44A1C70();

        v6 = *(v17 + 120);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v7 = sub_1C43FD018();
        sub_1C445D7D0(v7, v8);
        sub_1C43FEF2C();

        if (v6)
        {

          continue;
        }

        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v9 = sub_1C4F00978();
        sub_1C442B738(v9, qword_1EDE2DF70);
        sub_1C43FEF2C();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v10 = sub_1C4F00968();
        v11 = sub_1C4F01CF8();

        if (os_log_type_enabled(v10, v11))
        {
          sub_1C43FECF0();
          v12 = swift_slowAlloc();
          sub_1C43FEC60();
          v19 = swift_slowAlloc();
          *v12 = 136315138;
          v13 = sub_1C43FD018();
          v16 = sub_1C441D828(v13, v14, v15);

          *(v12 + 4) = v16;
          _os_log_impl(&dword_1C43F8000, v10, v11, "ViewUpdate.Manager: Device %s was updated but it is not in the list of remote devices", v12, 0xCu);
          sub_1C440962C(v19);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

LABEL_20:
        sub_1C440962C(v22);
        sub_1C43FE9F0();
        return;
    }
  }
}

uint64_t sub_1C4423598@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = swift_weakLoadStrong();
  v5 = result;
  if (!result)
  {
    _s7ManagerC18ClearResourceTokenCMa();
    sub_1C43FBDBC();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    swift_weakAssign();
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C4423618(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 132) = a3;

  return type metadata accessor for ConstructionProgressTokens(0);
}

uint64_t sub_1C4423638(uint64_t a1)
{

  return sub_1C4F02458();
}

void sub_1C4423684(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v6, a4, a5, a6, v7, 2u);
}

uint64_t sub_1C4423700(uint64_t a1, uint64_t a2, ...)
{

  return sub_1C4F01A28();
}

uint64_t sub_1C4423738()
{
  v1 = *(v0 + 544);
  sub_1C441D670((v0 + 56), v0 + 16);

  return sub_1C4938228(v1 + 96, v0 + 136);
}

uint64_t sub_1C4423790()
{
  *(v1 + *(v0 + 28)) = 0;
  v4 = v1 + *(v0 + 32);

  return sub_1C4471988(v2, v4);
}

void sub_1C4423818(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1C442385C()
{
  sub_1C44239FC(*(v0 - 176), 0);
  sub_1C44239FC(*(v0 - 200), 0);
  sub_1C44239FC(*(v0 - 208), 0);
  v1 = *(v0 - 216);

  return sub_1C44239FC(v1, 0);
}

uint64_t sub_1C4423918@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C44239B8()
{

  return sub_1C4F02658();
}

uint64_t sub_1C44239FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C4423A0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C456902C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C4423A6C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02718();
}

void sub_1C4423AA4()
{

  sub_1C466B77C();
}

uint64_t sub_1C4423AC0()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C4423B24()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4423B3C()
{

  return sub_1C4453D98();
}

uint64_t sub_1C4423B64(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1C4423B94(__n128 a1)
{
  *(v1 + 16) = v5;
  v8 = (v1 + v4 * v6);
  v8[2].n128_u64[0] = v7;
  v8[2].n128_u64[1] = v2;
  v8[3] = a1;
  v8[4].n128_u64[0] = v3;
}

uint64_t sub_1C4423BEC()
{
  *(v1 + v0) = 0;

  return sub_1C44CDA7C();
}

uint64_t sub_1C4423C28()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4423C50()
{
}

uint64_t sub_1C4423C70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return sub_1C4EF9148();
}

uint64_t sub_1C4423C90(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1C4423CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *(v6 - 260) = a5;
  *(v6 - 296) = a4;
  *(v6 - 232) = a2;
  *(v6 - 224) = a1;
  *(v6 - 256) = a6;
  *(v6 - 312) = a3;
  *(v6 - 264) = a3;

  return sub_1C4EFEEF8();
}

void sub_1C4423D00(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_1C4423D44(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 336) = a1;
  *(v2 - 328) = a1;
}

uint64_t sub_1C4423D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C440BAA8(a1, a2, a3, v3);

  return sub_1C4EFC0A8();
}

uint64_t sub_1C4423DC8()
{

  return sub_1C4F02658();
}

uint64_t sub_1C4423E24(uint64_t a1)
{
  *(v2 - 176) = v1;

  return sub_1C4F027E8();
}

void sub_1C4423E58()
{
  *(v6 - 120) = v1;
  *(v6 - 240) = v0;
  *(v6 - 232) = v4;
  *(v6 - 256) = v3;
  *(v6 - 248) = v2;
  *(v6 - 264) = v5;
  *(v6 - 65) = 0;
}

void sub_1C4423E98()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v49 - v7;
  v9 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C441E000(v2);
  sub_1C441CEF4();

  if (v0)
  {
    goto LABEL_3;
  }

  v11 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v12 = sub_1C44331AC(v11);
  v13 = MEMORY[0x1E69E6530];
  *(v12 + 16) = xmmword_1C4F0D130;
  v14 = MEMORY[0x1E69A0180];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = v4;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v15 = sub_1C43FD018();
  v16(v15);
  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C440BAA8(v17, v18, v19, v9);
  sub_1C43FD428();
  v20 = sub_1C4EFBC48();
  sub_1C4420C3C(v50, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v8, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v20)
  {
    v50[0].n128_u64[0] = 0;
    v50[0].n128_u64[1] = 0xE000000000000000;
    sub_1C4F02248();

    sub_1C43FBDF0();
    v50[0].n128_u64[0] = 0xD000000000000021;
    v50[0].n128_u64[1] = v26;
    v27 = sub_1C4F02858();
    MEMORY[0x1C6940010](v27);

    v28 = v50[0];
    sub_1C450B034();
    v29 = swift_allocError();
    *v30 = v28;
    sub_1C443E44C(v50[2], v50[1], v50[0], v29, v30);

LABEL_3:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v21 = sub_1C4424660(0);
  sub_1C441E870(1, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
  v22 = sub_1C4EFBBE8();
  if (v22)
  {
    v23 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v25 = sub_1C4414708(v24, v49);
    if (v25 == 5)
    {
      MEMORY[0x1EEE9AC00](v25);
      sub_1C43FD954();
      *(v43 - 16) = sub_1C487BF24;
      *(v43 - 8) = &v49[-4];
      sub_1C444157C(v23, 1, sub_1C487BF28);
      goto LABEL_26;
    }

    sub_1C4F017E8();
  }

  else
  {
    sub_1C4EFBB98();
  }

  sub_1C441E870(2, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
  v31 = sub_1C4EFBBE8();
  if (v31)
  {
    v32 = v31;
    MEMORY[0x1EEE9AC00](v31);
    v34 = sub_1C442AA48(v33, v49);
    if (v34 == 5)
    {
      MEMORY[0x1EEE9AC00](v34);
      sub_1C43FD954();
      *(v44 - 16) = sub_1C487BF24;
      *(v44 - 8) = &v49[-4];
      sub_1C444157C(v32, 2, sub_1C487BF28);
      goto LABEL_26;
    }

    sub_1C4F017E8();
  }

  else
  {
    sub_1C44885F0();
    sub_1C4EFBB98();
  }

  sub_1C441E870(3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
  v35 = sub_1C4EFBBE8();
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v35);
    v49[-2] = v20;
    v49[-1] = 3;
    v37 = sqlite3_column_type(v36, 3);
    if (v37 == 5)
    {
      MEMORY[0x1EEE9AC00](v37);
      sub_1C43FD954();
      *(v45 - 16) = sub_1C487BF24;
      *(v45 - 8) = &v49[-4];
      v46 = sub_1C44585C0();
      sub_1C444157C(v46, 3, v47);
      goto LABEL_26;
    }

    sub_1C4F017E8();
  }

  else
  {
    sub_1C4EFBB98();
  }

  sub_1C441E870(4, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
  v38 = sub_1C4EFBBE8();
  if (!v38)
  {
    sub_1C4EFBB98();

    goto LABEL_3;
  }

  v39 = v38;
  v49[1] = v49;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C44417A0();
  *(v40 - 16) = v20;
  *(v40 - 8) = 4;
  v42 = sqlite3_column_type(v41, 4);
  if (v42 != 5)
  {
    sub_1C4F02AA8();

    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD954();
  *(v48 - 16) = sub_1C487BF24;
  *(v48 - 8) = v21;
  sub_1C444157C(v39, 4, sub_1C487BF28);
LABEL_26:
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

void *sub_1C4424660(uint64_t a1)
{
  sub_1C4EFBBA8();
  sub_1C44248E8();
  result = sub_1C4EFB9E8();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C44246D8()
{

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C4424718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4424754()
{
  v2 = *(v0 - 504);
  v3 = *(v0 - 512);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4424774()
{
  sub_1C440962C((v0 + 856));
}

void sub_1C44247A4()
{
  *(v4 - 120) = v3;
  *(v4 - 168) = v0;
  *(v4 - 160) = v2;
  *(v4 - 144) = v1;
}

uint64_t sub_1C44247B4()
{

  return swift_unownedRetainStrong();
}

uint64_t sub_1C44247D0()
{
}

uint64_t sub_1C44247F8()
{

  return sub_1C4EF9CD8();
}

uint64_t sub_1C4424830()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C44248A4@<X0>(uint64_t a1@<X8>)
{

  return sub_1C448D668(v2 + a1, v3 + v1);
}

unint64_t sub_1C44248E8()
{
  result = qword_1EDDF95E0;
  if (!qword_1EDDF95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95E0);
  }

  return result;
}

uint64_t sub_1C4424988()
{
  v2 = *(v0 - 976);
  v3 = *(v0 - 984);

  return sub_1C44239FC(v2, v3);
}

unint64_t sub_1C44249EC(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 320);

  return sub_1C441D828(v5, v1, (v3 - 176));
}

uint64_t sub_1C4424A44()
{

  return sub_1C465B638(v0, v1);
}

uint64_t sub_1C4424A80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 - 144);
  sub_1C440BAA8(*(v2 - 128), a2, 1, *(v2 - 152));

  return sub_1C448D818(v3);
}

uint64_t sub_1C4424B10(char a1)
{
  result = 1702259052;
  switch(a1)
  {
    case 1:
      return 1701736302;
    case 2:
      return 0x796C696164;
    case 3:
      return 0xD000000000000013;
    case 4:
      v3 = 1801807223;
      goto LABEL_8;
    case 5:
      v4 = 0x347972657665;
      goto LABEL_11;
    case 6:
      v4 = 0x327972657665;
LABEL_11:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
      break;
    case 7:
      v3 = 1920298856;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 8:
      result = 0x4D31327972657665;
      break;
    case 9:
      result = 0x694D377972657665;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4424C5C(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);
  v5 = *(v2 - 224);

  return sub_1C4467FE0(v4, v5);
}

void sub_1C4424CC4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4424D04()
{
  v2 = *(v0 - 928);
  v3 = *(v0 - 936);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4424D48()
{

  return sub_1C4EFF028();
}

uint64_t sub_1C4424D84(uint64_t a1, uint64_t a2)
{
}

void sub_1C4424DA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4424DC0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

void sub_1C4424DF4(uint64_t a1)
{

  sub_1C44C9240(a1, v2, 1, v1);
}

uint64_t sub_1C4424E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4424E50@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v3;
  v10 = (v4 + v2[10]);
  *v10 = v5;
  v10[1] = v6;
  *(v4 + v2[11]) = v9;
  *(v4 + v2[12]) = *(v7 - 116);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4424EF0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F025E8();
}

uint64_t sub_1C4424F0C()
{

  return sub_1C44DBE44(v0);
}

uint64_t sub_1C4424F30(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C4424F7C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C4424FB0()
{

  return sub_1C45FE854(v0);
}

void sub_1C442503C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, log, a11, a4, v11, 0x16u);
}

uint64_t sub_1C4425070()
{
}

uint64_t sub_1C44250D8(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

unint64_t sub_1C4425118()
{
  *(v2 - 96) = *(v0 + *(v1 + 36));
  *(v2 - 65) = 5;

  return sub_1C47C7748();
}

uint64_t sub_1C442513C()
{
  result = v1;
  *(v2 - 144) = *(v0 + 8);
  return result;
}

id sub_1C4425150()
{
  *(v1 - 72) = v0;

  return v0;
}

uint64_t sub_1C4425168(uint64_t a1)
{

  return sub_1C4F02858();
}

uint64_t sub_1C4425188(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;
}

uint64_t (*sub_1C44251A4())(uint64_t result, char a2)
{

  return sub_1C4DD10F4((v0 - 120));
}

uint64_t sub_1C44251D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  v25 = *(v23 - 208);

  return sub_1C4434000(v25, a23);
}

void sub_1C4425208()
{
  *(v0 - 944) = 0;
  *(v0 - 952) = 0;
  *(v0 - 928) = 0;
  *(v0 - 936) = 0;
  *(v0 - 904) = 0;
  *(v0 - 920) = 0;
  *(v0 - 192) = 0;
  *(v0 - 912) = 0;
  *(v0 - 960) = 0;
  *(v0 - 968) = 0;
  *(v0 - 976) = 0;
  *(v0 - 984) = 0;
}

void sub_1C44252F0()
{

  sub_1C459EA10();
}

uint64_t sub_1C4425314()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

id sub_1C442532C(uint64_t a1)
{
  *(v3 + 4) = a1;
  *(v3 + 12) = 2080;
  *(v2 + 24) = v1;

  return v1;
}

uint64_t sub_1C442539C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C44253BC()
{
}

uint64_t sub_1C44253D4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C44253F4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4425464(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4425484()
{
  v3 = *(v1 - 240);

  return sub_1C445FAA8(v3, v0);
}

uint64_t sub_1C44254A0()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C44254C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C44254E0()
{
  v4 = *(v2 - 432);

  return sub_1C4420C3C(v4, v0, v1);
}

uint64_t sub_1C4425570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_1C4F02438();
}

uint64_t sub_1C44256BC()
{
  v2 = *(*(v1 - 88) + 36);
  *(v1 - 70) = 5;
  return v0 + v2;
}

uint64_t sub_1C4425724()
{
}

uint64_t sub_1C442573C(uint64_t a1, uint64_t a2)
{

  return sub_1C4460108(a1, a2, v2, v3);
}

uint64_t sub_1C4425754()
{
  v2 = *(v1 - 136);
  *(v1 - 240) = *(v1 - 120);
  *(v1 - 224) = v2;
  return v0;
}

uint64_t sub_1C442576C()
{
  v2 = *(v0 - 840);
  v3 = *(v0 - 848);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44257B8(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

id sub_1C44257F8()
{

  return [v1 (v0 + 2979)];
}

void sub_1C4425880()
{
  *(v0 - 176) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 264) = 0;
}

void sub_1C4425894()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 264) = 0;
}

__n128 sub_1C4425910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 - 204) = a6;
  *(v6 - 216) = a5;
  *(v6 - 72) = a3;
  *(v6 - 200) = a2;
  result = *a1;
  v8 = *(a1 + 16);
  *(v6 - 192) = *a1;
  *(v6 - 176) = v8;
  return result;
}

uint64_t sub_1C44259EC()
{

  return sub_1C4F02548();
}

uint64_t sub_1C4425A64()
{

  return sub_1C4EF9A38();
}

id sub_1C4425AC4()
{
  v2 = *(v0 + 3752);

  return objc_allocWithZone(v2);
}

uint64_t sub_1C4425AF4()
{
  type metadata accessor for EventStreamsEvent._StorageClass(0);

  return swift_allocObject();
}

__n128 sub_1C4425B3C@<Q0>(unint64_t a1@<X8>)
{
  v4 = (*(v3 - 168) + v2);
  v4->n128_u64[0] = a1;
  v4->n128_u64[1] = v1;
  result = *(v3 - 96);
  v4[1] = result;
  return result;
}

void *sub_1C4425B54()
{
  v2 = *(v0 - 104);

  return sub_1C4409678((v0 - 128), v2);
}

uint64_t sub_1C4425BA4()
{

  return sub_1C440BAA8(v1, 0, 1, v0);
}

uint64_t sub_1C4425BD8()
{

  return sub_1C4F00168();
}

void *sub_1C4425C54()
{

  return sub_1C4EFBB98();
}

uint64_t sub_1C4425C70()
{
  v3 = (v1 + *(v0 + 40));
  *v3 = 0;
  v3[1] = 0;

  return sub_1C4EFE478();
}

void sub_1C4425C94()
{
  v2 = *(v0 + 16) + 1;

  sub_1C458DF28(0, v2, 1, v0);
}

uint64_t sub_1C4425CB8()
{

  return sub_1C4420C3C(v2 - 176, v0, v1);
}

__n128 sub_1C4425CD4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  a1[2].n128_u64[0] = 0x656D614E77656976;
  a1[2].n128_u64[1] = 0xE800000000000000;
  v17 = *v14;
  v18 = *(v15 + 8);
  a1[3].n128_u64[0] = v17;
  a1[3].n128_u64[1] = v18;
  return result;
}

uint64_t sub_1C4425D04(uint64_t a1)
{

  return sub_1C4EF96D8();
}

uint64_t sub_1C4425D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C44239FC(a1, *(a2 - 256));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4425DB8(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02048();
}

void *sub_1C4425E08()
{
  v2 = *(v0 + 200);

  return sub_1C4409678((v0 + 176), v2);
}

id sub_1C4425E48()
{

  return sub_1C4673B1C(v2, v4, 0xD000000000000015, v3 | 0x8000000000000000, v1, v0);
}

void sub_1C4425E84()
{
  v2 = *(v0 + 16) + 1;

  sub_1C458EB2C(0, v2, 1, v0);
}

uint64_t sub_1C4425EA8()
{

  return MEMORY[0x1EEE13DB0]();
}

uint64_t sub_1C4425ED4()
{

  return sub_1C4485564(v0, type metadata accessor for EventTriple);
}

uint64_t sub_1C4425F48()
{
  *(v0 + 24) = sub_1C4B0D13C;

  return swift_continuation_init();
}

uint64_t sub_1C4425F78()
{

  return swift_slowAlloc();
}

void sub_1C4425F94()
{
}

uint64_t sub_1C4425FD4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4425FF4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4426014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  a13 = *(v13 + *(a1 + 24));

  return sub_1C4495FC0(&a13);
}

uint64_t sub_1C4426034()
{

  return sub_1C4EF98F8();
}

uint64_t sub_1C4426078(uint64_t a1)
{

  return sub_1C4F01198();
}

uint64_t sub_1C4426090@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_1C4F027A8();
}

uint64_t sub_1C44260C0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C44260F0()
{

  return sub_1C4EFB638();
}

uint64_t sub_1C44261BC(__n128 a1)
{

  return sub_1C4440344(v1, v3);
}

uint64_t sub_1C44261E0(uint64_t a1, unint64_t a2)
{
  v4 = *(v3 + 144);
  v5 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  sub_1C4431E64(a1, a2);

  return sub_1C441DFEC(v4, v5);
}

uint64_t sub_1C4426258(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 5;

  return swift_willThrow();
}

uint64_t sub_1C44262B0(uint64_t a1)
{
  *(v1 - 272) = a1;
  *(a1 + 16) = 0;
  *(v1 - 328) = a1 + 16;

  return swift_allocObject();
}

void sub_1C44262E0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1C44262EC()
{

  return sub_1C4D5F434(v0, type metadata accessor for WalletTransactionOrderStructs.Payment);
}

uint64_t sub_1C4426344()
{

  return sub_1C4F02658();
}

uint64_t sub_1C442638C()
{
  result = v0;
  *(v1 - 208) = *(*(v1 - 112) + 8);
  return result;
}

uint64_t sub_1C44263F8()
{
  v2 = *(v0 - 1168);
  v3 = *(v0 - 1176);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4426444()
{
  *(v3 - 344) = v0;
  *(v3 - 360) = v2;
  *(v3 - 352) = v1;
  *(v3 - 368) = *(v3 - 96);

  return type metadata accessor for Source(0);
}

uint64_t sub_1C4426524(char a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1C4409528(a1);
  MEMORY[0x1C6940010]();

  v6 = sub_1C441CC9C();
  MEMORY[0x1C6940010](v6);
  MEMORY[0x1C6940010](a2, a3);
  v7 = sub_1C441CC9C();
  MEMORY[0x1C6940010](v7);
  sub_1C4F02438();
  return 0;
}

uint64_t sub_1C44265D8()
{
  sub_1C4426608();
  sub_1C43FBDBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4426608()
{

  sub_1C442664C();

  return v0;
}

void sub_1C442664C()
{
  sub_1C441E858(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  sub_1C44266A4();

  os_unfair_lock_unlock(v0 + 6);
}

unint64_t sub_1C44266D0()
{
  result = qword_1EDDFF9E8;
  if (!qword_1EDDFF9E8)
  {
    sub_1C4EF98F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF9E8);
  }

  return result;
}

void sub_1C4426728()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate7Manager20SourceResourceHolder_config;
  v3 = *&v2[*(type metadata accessor for Configuration(0) + 20)];
  if (qword_1EDDF0C88 != -1)
  {
    v17 = v3;
    swift_once();
    v3 = v17;
  }

  sub_1C43FC158(xmmword_1EDDF0C90, v3);
  if (v4)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DF70);
    v6 = sub_1C4F00968();
    sub_1C4F01CC8();
    v7 = sub_1C4404760();
    if (os_log_type_enabled(v7, v8))
    {
      sub_1C43FD1A8();
      v9 = swift_slowAlloc();
      sub_1C4405D10(v9);
      sub_1C440FE5C();
      _os_log_impl(v10, v11, v12, v13, v14, v15);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v1[2] = 0;

    v1[3] = 0;

    type metadata accessor for KeyValueStore(0);
    v16 = sub_1C4F00F28();
    swift_beginAccess();
    v1[4] = v16;

    if (qword_1EDDFF500 != -1)
    {
      sub_1C4417AB0();
      swift_once();
    }

    sub_1C44270DC();
    if (qword_1EDDFEE20[0] != -1)
    {
      sub_1C4403ADC();
      swift_once();
    }

    sub_1C4427314();
    if (qword_1EDDFF230 != -1)
    {
      sub_1C43FE184();
      swift_once();
    }

    sub_1C4427394();
    if (qword_1EDDFF7A0 != -1)
    {
      sub_1C4432DE8();
      swift_once();
    }

    sub_1C44273D4();
    sub_1C4EFAEB8();
  }
}

uint64_t sub_1C4426A0C(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  return 0;
}

void sub_1C4426A30(uint64_t a1@<X8>)
{
  *(v6 + a1) = v1;
  v7 = (v6 + *(v5 + 28));
  *v7 = v3;
  v7[1] = v4;
  *(v6 + *(v5 + 32)) = v2;
}

uint64_t sub_1C4426AB8(uint64_t a1, uint64_t a2)
{

  return sub_1C446C964(a1, a2, v2, v3);
}

uint64_t sub_1C4426B00(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C4426B20(uint64_t a1, uint64_t a2)
{

  return sub_1C446C964(a1, a2, v2, v3);
}

void sub_1C4426B80()
{
  *(v2 - 120) = v1;
  *(v2 - 112) = v1 + 56;
  *(v2 - 104) = v0 + 16;
  *(v2 - 128) = v0 + 8;
}

uint64_t sub_1C4426BD4()
{

  return sqlite3_column_type(v1, v0);
}

uint64_t sub_1C4426C64()
{
}

uint64_t sub_1C4426C90(uint64_t a1)
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

id sub_1C4426D1C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t sub_1C4426D4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1C441D828(a1, a2, va);
}

uint64_t sub_1C4426D64(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4426D9C()
{

  return sub_1C4B0E424(0x6F436C6174736F70, 0xEA00000000006564, v0);
}

uint64_t sub_1C4426DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 - 348) = a8;
  *(v8 - 360) = a7;
  *(v8 - 368) = a6;
  *(v8 - 344) = a5;
  *(v8 - 224) = a3;
  v10 = *(v8 + 40);
  *(v8 - 208) = *(v8 + 32);
  *(v8 - 200) = v10;

  return sub_1C4F00DD8();
}

uint64_t sub_1C4426E18(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4426E84(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4426EA4(__n128 a1, uint64_t a2, __n128 *a3)
{
  a3[3] = a1;
  a3[4].n128_u8[0] = 0;

  return swift_willThrow();
}

uint64_t sub_1C4426ECC()
{
  result = v0;
  *(v2 - 208) = v1;
  return result;
}

uint64_t sub_1C4426F2C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F025E8();
}

void sub_1C4426F4C()
{

  sub_1C459E828();
}

double sub_1C4426F6C()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_1C4426F9C()
{

  return swift_beginAccess();
}

uint64_t sub_1C4426FDC(float a1)
{
  *v1 = a1;
  *(v2 - 192) = 0;
  *(v2 - 184) = 0xE000000000000000;

  return sub_1C4F02248();
}

uint64_t type metadata accessor for KeyValueStore(uint64_t a1)
{
  result = qword_1EDDFF420;
  if (!qword_1EDDFF420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C44270DC()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C442711C(v1);
  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1C442715C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  swift_beginAccess();
  sub_1C43FE83C();
  if (v10)
  {
    v11 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v8 + 16);
    sub_1C456902C(a3, a4);
    sub_1C4F02458();
    v12 = *(v16 + 48);
    v13 = sub_1C4EF98F8();
    sub_1C43FBCE0();
    (*(v14 + 8))(v12 + *(v14 + 72) * v11, v13);
    a5(0);
    sub_1C494A7D4(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1C4F02478();
    *(v8 + 16) = v16;
  }

  return swift_endAccess();
}

void sub_1C4427314()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C44272D4(v1);
  os_unfair_lock_unlock(v0 + 6);
}

void sub_1C4427394()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C4427354(v1);
  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1C44273D4()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44274E4(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4427468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for ViewDatabase, sub_1C44FC100, sub_1C4662528);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4427500()
{
  sub_1C43FBCD4();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442F080;
  v3 = sub_1C4414C5C();

  return sub_1C4428070(v3, v0);
}

uint64_t sub_1C4427590(uint64_t a1, __int16 a2, char a3, char a4, char a5, _BYTE *a6)
{
  *(v7 + 69) = a5;
  *(v7 + 68) = a4;
  *(v7 + 67) = a3;
  *(v7 + 64) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  *(v7 + 70) = *a6;
  return sub_1C43FEB04();
}

void sub_1C44275BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);

  sub_1C4428D8C(v1, v2);
  sub_1C441E858(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  sub_1C4426228();
  sub_1C44276F4(v3);
  if (v2)
  {

    os_unfair_lock_unlock(v1 + 6);
  }

  else
  {
    v4 = *(v0 + 70);
    os_unfair_lock_unlock(v1 + 6);
    *(v0 + 32) = v12;
    *(v0 + 66) = v4;
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_1C4474EA0;
    v6 = *(v0 + 69);
    v7 = *(v0 + 68);
    v8 = *(v0 + 67);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 64);

    sub_1C4428090(v10, v11, v8, v7, v6, (v0 + 66), v9);
  }
}

uint64_t sub_1C442770C()
{
  v14 = v0;
  v1 = *(v0 + 100);
  v2 = *(v0 + 99);
  v3 = *(v0 + 98);
  v4 = *(v0 + 56);
  v5 = *(v0 + 96);
  v13[0] = *(v0 + 101);
  updated = type metadata accessor for ViewUpdate.ViewUpdateJob(0);
  swift_allocObject();
  sub_1C4428D8C(v4, v5);

  v8 = sub_1C44280C0(v7, v4, v5, v3, v2, v1, v13);
  *(v0 + 40) = updated;
  *(v0 + 48) = &off_1F440C260;
  *(v0 + 16) = v8;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 80) = v9;
  *v9 = v10;
  sub_1C443397C(v9);
  sub_1C440A264();

  return sub_1C4427880();
}

uint64_t sub_1C4427880()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = _s12JobSchedulerC13JobIdentifierVMa(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4428220, v0, 0);
}

uint64_t sub_1C4427910()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  sub_1C440B750();
  v5 = sub_1C4428DF0(v3, v4, &unk_1C4F6A794);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v11 = *(v0 + 32);
  *(v6 + 16) = v2;
  *(v6 + 24) = v11;
  *(v6 + 40) = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = sub_1C456902C(&unk_1EC0C6118, &unk_1C4F6A7E0);
  *v7 = v0;
  v7[1] = sub_1C4474460;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v9, v11, v5, 0xD000000000000010, 0x80000001C4FC4600, sub_1C442848C, v6, v8);
}

uint64_t sub_1C4427A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4427910, a3, 0);
}

uint64_t sub_1C4427A88(void (*a1)(__n128))
{
  v2 = v1;
  v4 = sub_1C4F018C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  v9 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault;
  if ((*(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault) & 1) == 0)
  {
    v10 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
    swift_beginAccess();
    if (sub_1C4428DA0(*(v2 + v10)) >= 11)
    {
      *(v2 + v9) = 1;
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v11 = sub_1C4F00978();
      sub_1C442B738(v11, qword_1EDE2DDF8);

      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29 = v27;
        *v14 = 134218242;
        *(v14 + 4) = sub_1C4428DA0(*(v2 + v10));

        *(v14 + 12) = 2080;
        v15 = *(v2 + v10);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C529A0(10, v15);
        v28 = v5;
        _s12JobSchedulerC10JobTrackerCMa(0);
        v16 = sub_1C4F02088();
        v18 = v17;
        swift_unknownObjectRelease();
        v19 = sub_1C441D828(v16, v18, &v29);
        v5 = v28;

        *(v14 + 14) = v19;
        _os_log_impl(&dword_1C43F8000, v12, v13, "ViewUpdate.JobScheduler/Mutate: Exceeded 10 pending View jobs. Currently have %ld jobs: %s", v14, 0x16u);
        v20 = v27;
        sub_1C440962C(v27);
        MEMORY[0x1C6942830](v20, -1, -1);
        MEMORY[0x1C6942830](v14, -1, -1);
      }

      else
      {
      }
    }
  }

  if (*(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop))
  {
    v21 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
    if (v21)
    {

      v22 = sub_1C4428BF0();
      v23 = v22;
      if (v22 && v22 != v21)
      {
        sub_1C44FFA6C();
        v24 = v23[5];
        v25 = v23[6];
        sub_1C4409678(v23 + 2, v24);
        (*(v25 + 8))(&v29, v24, v25);
        if (v29 >= 2u)
        {
          sub_1C4F018A8();
        }

        else
        {
          sub_1C4F01898();
        }

        sub_1C44FFDE4(v8);

        (*(v5 + 8))(v8, v4);
      }

      else
      {
        if (*(v21 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
        {
          sub_1C44FFA6C();
        }
      }
    }
  }

  else
  {
    sub_1C4429198();
  }

  return sub_1C44293C4();
}

uint64_t sub_1C4427E50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4427EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C440A280();
  v10 = swift_task_alloc();
  v11 = sub_1C43FCF54(v10);
  *v11 = v12;
  sub_1C4432DFC(v11);
  sub_1C442642C();

  return sub_1C442804C(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C4427F84()
{
  sub_1C4475B28();
  v7 = v0;
  sub_1C43FEAEC();
  sub_1C44BBF4C();
  sub_1C440FE6C();
  sub_1C4430798();
  sub_1C446073C(MEMORY[0x1E69E7CD0]);
  sub_1C4408120();
  v1 = swift_task_alloc();
  v2 = sub_1C447FAC0(v1);
  *v2 = v3;
  v4 = sub_1C4401314(v2);

  return v5(v4);
}

uint64_t sub_1C442804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C4427F84, 0, 0);
}

uint64_t sub_1C4428090(uint64_t a1, __int16 a2, char a3, char a4, char a5, _BYTE *a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 100) = a5;
  *(v8 + 99) = a4;
  *(v8 + 98) = a3;
  *(v8 + 96) = a2;
  *(v8 + 56) = a1;
  *(v8 + 101) = *a6;
  return sub_1C4413C08();
}

uint64_t sub_1C44280C0(uint64_t a1, unint64_t a2, unsigned int a3, char a4, char a5, char a6, unsigned __int8 *a7)
{
  v14 = *a7;
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  _s7MetricsO7PayloadVMa(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v18);
  if (v14 != 3)
  {
    goto LABEL_4;
  }

  if ((a3 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  if (BYTE2(a2))
  {
    if (BYTE2(a2) == 1)
    {
      LOBYTE(v14) = 0;
      goto LABEL_4;
    }

LABEL_3:
    LOBYTE(v14) = 2;
    goto LABEL_4;
  }

  if (a2)
  {
    goto LABEL_3;
  }

  LOBYTE(v14) = 1;
LABEL_4:
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_priority) = v14;
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_type) = 0;
  if (a3 >> 14)
  {
    if (a3 >> 14 == 1)
    {
      LODWORD(v19) = (a3 >> 8) & 0x3F;
    }

    else
    {
      v19 = a2 >> 16;
    }
  }

  else
  {
    LOBYTE(v19) = a2;
  }

  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_updateContext) = v19;
  v20 = v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery;
  *v20 = a2;
  *(v20 + 8) = a3;
  if (a5)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a4)
  {
    v21 = 1;
  }

  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_runMode) = v21;
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_checkSLA) = a6 & 1;
  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager) = a1;
  return v7;
}

uint64_t sub_1C4428220()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  *v1 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  sub_1C4EF9058();
  _s12JobSchedulerC13WrappedCancelCMa();
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = 0;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = inited;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v6[2] = inited;
  v6[3] = v2;
  v6[4] = v1;
  sub_1C440B750();
  sub_1C4428DF0(v7, v8, &unk_1C4F6A794);
  v9 = swift_task_alloc();
  v0[13] = v9;
  sub_1C456902C(&unk_1EC0C6118, &unk_1C4F6A7E0);
  *v9 = v0;
  v9[1] = sub_1C4475148;
  sub_1C4426C44();

  return MEMORY[0x1EEE6DE18](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C44283C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1C456902C(&qword_1EC0C60F8, &qword_1C4F6A538);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C44283F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4408024(v1);
  sub_1C4426C44();

  return sub_1C4427A60(v3, v4, v5, v6, v7);
}

uint64_t sub_1C4428498(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 16);
  v3 = atomic_load((a2 + 16));
  if (v3)
  {
    sub_1C4F01828();
    sub_1C4428DF0(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1C4F00EA8();
    sub_1C456902C(&qword_1EC0C6128, &qword_1C4F6A840);
    return sub_1C4F01808();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    result = sub_1C4427A88(sub_1C4428800);
    v5 = atomic_load(v2);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](result);
      return sub_1C4427A88(sub_1C4CDD38C);
    }
  }

  return result;
}

uint64_t sub_1C4428608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _s12JobSchedulerC13JobIdentifierVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C442E860(a2, v17);
  sub_1C4427E50(a3, v9, _s12JobSchedulerC13JobIdentifierVMa);
  sub_1C456902C(&unk_1EC0C6130, &qword_1C4F6A880);
  v10 = sub_1C456902C(&qword_1EC0C6128, &qword_1C4F6A840);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  (*(v11 + 16))(v13 + v12, a4, v10);
  _s12JobSchedulerC10JobTrackerCMa(0);
  swift_allocObject();
  sub_1C4428870(v17, v9, v13);
  v14 = swift_beginAccess();
  MEMORY[0x1C6940330](v14);
  sub_1C4427EF0();
  sub_1C4F01748();
  return swift_endAccess();
}

uint64_t sub_1C442880C(uint64_t a1, uint64_t a2)
{
  v4 = _s12JobSchedulerC13JobIdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4428870(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 3);
  v7 = a1[3];
  v8 = sub_1C4409678(a1, v7);
  *(v3 + 40) = v11;
  v9 = sub_1C4422F90((v3 + 16));
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  sub_1C442880C(a2, v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_identifier);
  *(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) = 0;
  *(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) = a3;
  sub_1C440962C(a1);
  return v3;
}

uint64_t sub_1C4428958()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  return sub_1C4434000(v2, v3);
}

uint64_t sub_1C4428988(uint64_t result)
{
  **(v1 - 120) = result;
  *(v1 - 96) = 1;
  return result;
}

uint64_t sub_1C442899C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02798();
}

uint64_t sub_1C44289D0()
{
  v2 = *(v0 - 520);
  v3 = *(v0 - 528);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44289FC()
{

  return sub_1C4EFD548();
}

void sub_1C4428A40(uint64_t a1@<X8>)
{
  v2[24] = v1;
  v2[25] = v3;
  v2[23] = a1;
}

uint64_t sub_1C4428A74(uint64_t a1)
{

  return sub_1C4F02618();
}

void sub_1C4428AAC()
{
  v2 = (v0 + *(v1 + 44));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1C4428AD0()
{
  sub_1C43FBCD4();
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    *(v0 + 72) = 3;
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1C44748C4;

    return sub_1C4427590(0, 0x8000, 0, 0, 1, (v0 + 72));
  }

  else
  {
    sub_1C43FBDA0();

    return v4();
  }
}

uint64_t sub_1C4428BC4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1C4F016D8();
  }

  return result;
}

uint64_t sub_1C4428BF0()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C4F02128())
  {
    v4 = v2 & 0xC000000000000001;
    sub_1C4431590(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = MEMORY[0x1C6940F90](0, v2);
    }

    else
    {
      v5 = *(v2 + 32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    for (j = 1; ; ++j)
    {
      if (i == j)
      {

        return v5;
      }

      sub_1C4431590(j, v4 == 0, v2);
      if (v4)
      {
        v7 = MEMORY[0x1C6940F90](j, v2);
      }

      else
      {
        v7 = *(v2 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_1C44FFC84();
      v9 = sub_1C44FFC84();
      v10 = sub_1C44FFD74(v9, v8);

      if (v10)
      {
        v5 = v7;
      }
    }

    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

uint64_t sub_1C4428D8C(uint64_t result, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v2;
}

uint64_t _s7MetricsO7PayloadVMa(uint64_t a1)
{
  result = qword_1EDDEBD30;
  if (!qword_1EDDEBD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4428DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4428E88()
{
  *(v4 + 16) = v5;
  v7 = (v4 + 32 * v0);
  v7[4] = v1;
  v7[5] = v3;
  v7[6] = v6;
  v7[7] = v2;
}

uint64_t sub_1C4428EA4(uint64_t a1)
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C4428EC4()
{
  v2 = *(v0 - 720);
  v3 = *(v0 - 736);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4428F30()
{

  return sub_1C4EFEC38();
}

uint64_t sub_1C4428F48()
{

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4428F60(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;
  *(v2 - 120) = a1;

  return swift_willThrow();
}

uint64_t sub_1C4428F80()
{

  return type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
}

uint64_t sub_1C4428FA0(uint64_t a1)
{

  return sub_1C4F027E8();
}

uint64_t sub_1C4428FCC()
{
  *(v0 + 240) = *(v1 + 1104);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4429060()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C4429078()
{
  v2 = *(v0 - 1048);
  v3 = *(v0 - 1056);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4429098()
{
}

uint64_t sub_1C44290C4()
{
  v3 = *(v1 - 88);

  return sub_1C4471BAC(v0, v3);
}

void sub_1C44290F0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4429150(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1C4429198()
{
  v1 = v0;
  v2 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-v6];
  v8 = sub_1C4428BF0();
  if (v8)
  {
    sub_1C442E860(v8 + 16, v19 + 1);

    v9 = v20;
    v10 = v21;
    sub_1C4409678((v19 + 1), v20);
    (*(v10 + 8))(v19, v9, v10);
    if (LOBYTE(v19[0]) >= 2u)
    {
      sub_1C4F018A8();
    }

    else
    {
      sub_1C4F01898();
    }

    v12 = sub_1C4F018C8();
    sub_1C440BAA8(v7, 0, 1, v12);
    sub_1C440962C((v19 + 1));
  }

  else
  {
    v11 = sub_1C4F018C8();
    sub_1C440BAA8(v7, 1, 1, v11);
  }

  sub_1C44316B0(v7, v4);
  v13 = sub_1C4428DF0(qword_1EDDEC900, _s12JobSchedulerCMa, &unk_1C4F6A794);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v13;
  v14[4] = v1;
  swift_retain_n();
  sub_1C4785250();
  v16 = v15;
  sub_1C4420C3C(v7, &qword_1EC0BC660, &qword_1C4F29150);
  *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop) = v16;
}

uint64_t sub_1C44293C4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_beginAccess();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C44295B0((v1 + v2), v1);
  v5 = sub_1C4428DA0(*(v1 + v2));
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1C44298CC(v4, v5);
    swift_endAccess();
    v6 = sub_1C4428DA0(v3);
    if (!v6)
    {
    }

    v7 = v6;
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C6940F90](v8, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v8 + 32);
        }

        if (*(v10 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
        {
          v11 = *(v1 + v9);
          if (v11)
          {
            v12 = v10 == v11;
          }

          else
          {
            v12 = 0;
          }

          if (!v12)
          {
            sub_1C4F01828();
            sub_1C4428DF0(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
            v13 = swift_allocError();
            sub_1C4F00EA8();
            sub_1C4474164(v10, v13, 1);
          }
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C44295B0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1C4428DA0(*a1);
  v19 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;

  v6 = 0;
  while (v4 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6940F90](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    if (*(v7 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
    {
      v8 = *(a2 + v19);
      if (!v8)
      {

LABEL_18:

        v10 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          while (2)
          {
            if (v3 >> 62)
            {
              result = sub_1C4F02128();
            }

            else
            {
              result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v10 == result)
            {
              goto LABEL_16;
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1C6940F90](v10, v3);
            }

            else
            {
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v11 = *(v3 + 8 * v10 + 32);
            }

            if (*(v11 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
            {
              v12 = *(a2 + v19);

              if (!v12 || v11 != v12)
              {
LABEL_49:
                v9 = __OFADD__(v10++, 1);
                if (v9)
                {
                  goto LABEL_60;
                }

                continue;
              }
            }

            else
            {
            }

            break;
          }

          if (v6 != v10)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x1C6940F90](v6, v3);
              v14 = MEMORY[0x1C6940F90](v10, v3);
            }

            else
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v6 >= v15)
              {
                goto LABEL_64;
              }

              if (v10 >= v15)
              {
                goto LABEL_65;
              }

              v13 = *(v3 + 32 + 8 * v6);
              v14 = *(v3 + 32 + 8 * v10);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_1C4836300();
              v16 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v3 & 0xFFFFFFFFFFFFFF8;
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

            if ((v3 & 0x8000000000000000) != 0 || v16)
            {
              result = sub_1C4836300();
              v3 = result;
              v17 = result & 0xFFFFFFFFFFFFFF8;
              if ((v10 & 0x8000000000000000) != 0)
              {
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }
            }

            else if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v10 >= *(v17 + 16))
            {
              goto LABEL_62;
            }

            *(v17 + 8 * v10 + 32) = v13;

            *a1 = v3;
          }

          v9 = __OFADD__(v6++, 1);
          if (v9)
          {
            goto LABEL_61;
          }

          goto LABEL_49;
        }

        goto LABEL_66;
      }

      if (v7 != v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_57;
    }
  }

  v6 = sub_1C4428DA0(v3);
LABEL_16:

  return v6;
}

uint64_t sub_1C44298CC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1C443156C(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1C4428DA0(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1C4429970(result, 1);

  return sub_1C4429978(v4, a2, 0);
}

uint64_t sub_1C4429978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  _s12JobSchedulerC10JobTrackerCMa(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1C4F02128();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C4474DF4(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_1C4F02128();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4429A78(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C4F02128();
LABEL_9:
  result = sub_1C4F022B8();
  *v2 = result;
  return result;
}

uint64_t sub_1C4429B18()
{
  v2 = v1;
  v3 = v0;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDF8);
  swift_retain_n();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  v7 = &dword_1EDE2D000;
  if (os_log_type_enabled(v5, v6))
  {
    v75 = v4;
    v8 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v8 = 136446722;
    v9 = sub_1C442A10C(*(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery), *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8));
    sub_1C441D828(v9, v10, v72);
    sub_1C443EFD8();

    *(v8 + 4) = &dword_1EDE2D000;
    *(v8 + 12) = 2082;
    LOBYTE(v69[0]) = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_runMode);
    v11 = sub_1C4F01198();
    sub_1C441D828(v11, v12, v72);
    sub_1C443EFD8();

    *(v8 + 14) = &dword_1EDE2D000;
    *(v8 + 22) = 1026;
    v13 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_checkSLA);

    *(v8 + 24) = v13;
    v2 = v1;
    v7 = &dword_1EDE2D000;

    _os_log_impl(&dword_1C43F8000, v5, v6, "ViewUpdate: Beginning update job for %{public}s [runMode: %{public}s, checkSLA: %{BOOL,public}d]", v8, 0x1Cu);
    swift_arrayDestroy();
    v14 = sub_1C4416E14();
    MEMORY[0x1C6942830](v14);
    v4 = v75;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v15 = v3 + *(v7 + 87);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (!(v17 >> 14))
  {
    v18 = 1;
    goto LABEL_10;
  }

  if (v17 >> 14 == 1)
  {
    v18 = (v17 & 0x3F00) != 0;
LABEL_10:
    v19 = 11;
    goto LABEL_11;
  }

  if (*v15 != 11 && (*v15 & 0x100) == 0)
  {
    v34 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);
    v35 = *v15;
    updated = type metadata accessor for ViewUpdate.ViewUpdateJob.ScheduledViewQueue();
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    v75 = v35;
    *(v37 + 24) = v35;
    v73 = updated;
    v74 = sub_1C443D71C(&qword_1EDDECDF8, v38, type metadata accessor for ViewUpdate.ViewUpdateJob.ScheduledViewQueue, &unk_1C4F6D6AC);
    v72[0] = v37;
    v39 = qword_1EDDFECD0;

    if (v39 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    sub_1C442B738(v4, qword_1EDE2DF70);
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CF8();
    if (os_log_type_enabled(v40, v41))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440A2C8();
      v42 = swift_slowAlloc();
      v69[0] = v42;
      *v7 = 136315138;
      v43 = sub_1C4424B10(v75);
      v45 = sub_1C441D828(v43, v44, v69);

      *(v7 + 1) = v45;
      _os_log_impl(&dword_1C43F8000, v40, v41, "ViewUpdate: Starting schedule run %s", v7, 0xCu);
      sub_1C440962C(v42);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v46 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v46);
    }

    v66 = MEMORY[0x1E69E7CD0];
    v68 = 1;
    goto LABEL_24;
  }

  v18 = 1;
  v19 = *v15;
LABEL_11:
  v20 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);
  v21 = sub_1C4D11E90(v16, v17, v19, *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_checkSLA));
  if (v2)
  {
    return v20;
  }

  v24 = v21;
  v65 = v22;
  HIDWORD(v67) = v18;
  v75 = v16;
  v25 = *(v20 + 16);
  v26 = type metadata accessor for ViewUpdate.ViewUpdateJob.NamedViewQueue(0);
  v27 = swift_allocObject();

  sub_1C4D1CCB8(v24, v25, v28, v29, v30, v31, v32, v33, v63, v64, v65, v67, v69[0], v69[1], v69[2], v70, v71, v72[0], v72[1], v72[2]);
  v73 = v26;
  v74 = sub_1C443D71C(&qword_1EDDECEC0, 255, type metadata accessor for ViewUpdate.ViewUpdateJob.NamedViewQueue, &unk_1C4F6D658);
  v72[0] = v27;
LABEL_24:
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  sub_1C442B738(v4, qword_1EDE2DF70);
  sub_1C442E860(v72, v69);
  v47 = sub_1C4F00968();
  v48 = sub_1C4F01CF8();
  if (os_log_type_enabled(v47, v48))
  {
    sub_1C43FECF0();
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    v51 = v70;
    v50 = v71;
    sub_1C4409678(v69, v70);
    v52 = (*(v50 + 40))(v51, v50);
    sub_1C440962C(v69);
    *(v49 + 4) = v52;
    sub_1C44BBF64(&dword_1C43F8000, v47, v48, "ViewUpdate: Initially have %ld views that may need updating");
    _os_log_impl(v53, v54, v55, v56, v57, v58);
    v59 = sub_1C4416E14();
    MEMORY[0x1C6942830](v59);
  }

  else
  {
    sub_1C440962C(v69);
  }

  v60 = v75;
  sub_1C442E860(v72, v69);
  v61 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_runMode);
  type metadata accessor for ViewUpdate.ViewUpdateJob.ProcessingState();
  v20 = swift_allocObject();
  sub_1C4428D8C(v60, v17);
  sub_1C443DCD0(v69, v60, v17, v66, v61, v68);
  sub_1C440962C(v72);
  return v20;
}

uint64_t sub_1C442A10C(uint64_t a1, unsigned __int16 a2)
{
  if (!(a2 >> 14))
  {
    sub_1C43FCB04();
    sub_1C443D664();
    v2 = v14;
    v3 = *(v14 + 16);
    v15 = *(v14 + 24);
    v16 = (v3 + 1);
    if (v3 >= v15 >> 1)
    {
      sub_1C43FCFE8(v15);
      sub_1C4401E28();
      sub_1C443D664();
      v2 = v27;
    }

    v6 = 0xE800000000000000;
    v17 = 0x73776569566C6C61;
    goto LABEL_16;
  }

  v5 = a1;
  v6 = 0x80000001C4FBE560;
  if (a2 >> 14 == 1)
  {
    v7 = a2;
    v31 = a1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44ECB2C(&v31);
    v2 = v31;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v3 = &v31;
    v8 = sub_1C4F01048();
    v10 = v9;

    sub_1C43FCB04();
    sub_1C443D664();
    sub_1C441DEB0();
    if (v12)
    {
      sub_1C43FCFE8(v11);
      sub_1C4401E28();
      sub_1C443D664();
      v2 = v28;
    }

    *(v2 + 16) = &v31;
    v13 = v2 + 16 * v4;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v18 = sub_1C4424B10(a1);
  v20 = v19;
  sub_1C43FCB04();
  sub_1C443D664();
  sub_1C441DEB0();
  if (v12)
  {
    sub_1C43FCFE8(v21);
    sub_1C4401E28();
    sub_1C443D664();
    v2 = v29;
  }

  *(v2 + 16) = v3;
  v22 = v2 + 16 * v4;
  *(v22 + 32) = v18;
  *(v22 + 40) = v20;
  if ((v5 & 0x100) != 0)
  {
LABEL_13:
    v23 = *(v2 + 24);
    v16 = (v4 + 2);
    if (v4 + 2 > (v23 >> 1))
    {
      sub_1C43FCFE8(v23);
      sub_1C4401E28();
      sub_1C443D664();
      v2 = v30;
    }

    v17 = 0xD000000000000013;
LABEL_16:
    *(v2 + 16) = v16;
    v24 = v2 + 16 * v3;
    *(v24 + 32) = v17;
    *(v24 + 40) = v6;
  }

LABEL_17:
  v31 = v2;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v25 = sub_1C4F01048();

  return v25;
}

uint64_t sub_1C442A378()
{
  *(v2 + v5[5]) = v1;
  v8 = (v2 + v5[7]);
  *v8 = v4;
  v8[1] = v6;
  *(v2 + v5[8]) = v0;
  *(v2 + v5[9]) = v3 & 1;

  return type metadata accessor for PhaseStores(0);
}

double sub_1C442A3B4()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_1C442A458()
{
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1C442A4AC()
{
  v2 = *(v0 + 512);
  *(v1 - 240) = *(v0 + 496);
  *(v1 - 224) = v2;
  result = *(v0 + 528);
  *(v1 - 208) = result;
  return result;
}

uint64_t sub_1C442A4C0()
{

  return swift_arrayInitWithTakeFrontToBack();
}

uint64_t sub_1C442A4F0(uint64_t a1, uint64_t a2)
{
  *(v2 - 232) = a1;
  *(v2 - 224) = a2;

  return sub_1C4F01308();
}

uint64_t sub_1C442A514()
{

  return sub_1C4EFB758();
}

uint64_t sub_1C442A564(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C442A5AC@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C442A5F4@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  *(v3 + *(v4 + 44)) = v7;
  *(v3 + *(v4 + 48)) = *(v5 - 108);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442A62C(uint64_t a1)
{

  return sub_1C4F00968();
}

uint64_t *sub_1C442A644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = v2;
  a1[8] = a2;
  v4 = a1 + 4;

  return sub_1C4422F90(v4);
}

uint64_t sub_1C442A67C()
{

  return sub_1C4EFEEF8();
}

uint64_t sub_1C442A718()
{
}

uint64_t sub_1C442A74C(uint64_t a1)
{

  return sub_1C4F010B8();
}

void sub_1C442A790(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1C442A79C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_1C448D19C(a1, v4);
}

uint64_t sub_1C442A7E4(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;

  return swift_willThrow();
}

uint64_t sub_1C442A80C()
{
  v9 = (v3 + v0[8]);
  *v9 = v1;
  v9[1] = v2;
  v10 = (v3 + v0[10]);
  *v10 = v4;
  v10[1] = v5;
  *(v3 + v0[11]) = v8;
  *(v3 + v0[12]) = *(v6 - 220);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C442A8B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C442A8DC()
{
}

uint64_t sub_1C442A918(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1C442A93C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id sub_1C442A974(float a1)
{
  *v2 = a1;
  *v3 = v1;

  return v1;
}

uint64_t sub_1C442A990(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C443113C(v5 + v4, v3);
}

void sub_1C442A9A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 564);
  v8 = *(v5 - 576);

  _os_log_impl(a1, v8, v7, a4, v4, 0x1Cu);
}

uint64_t sub_1C442AA2C()
{

  return swift_getErrorValue();
}

uint64_t sub_1C442AA48@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 16) = v2;
  *(a2 - 8) = 2;

  return sqlite3_column_type(a1, 2);
}

uint64_t sub_1C442AA64()
{

  return sub_1C448D19C(v0, v1);
}

uint64_t sub_1C442AA80()
{

  return sub_1C4418280(v1 - 176, v0);
}

uint64_t sub_1C442AB20()
{
  *(v2 + v0[5]) = 9;
  v7 = (v2 + v0[7]);
  *v7 = v3;
  v7[1] = v4;
  *(v2 + v0[8]) = v1;
  *(v2 + v0[9]) = v5 & 1;

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C442AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  result = *(v6 + 8 * v5);
  *(v6 + 8 * v5) = v4;
  return result;
}

uint64_t sub_1C442AB8C(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6330];

  return sub_1C4798580(a1, a2, v3);
}

uint64_t sub_1C442ABB0@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4420C3C(v1 + a1, v2, v3);
}

uint64_t sub_1C442ABEC()
{

  return sub_1C4F01578();
}

uint64_t sub_1C442AC3C()
{
  *(v0 - 88) = 0;
  *(v0 - 80) = 0xE000000000000000;

  return sub_1C4F02248();
}

void sub_1C442AC70()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442AC94(float a1)
{
  *v1 = a1;
  sub_1C4409678((v2 - 208), *(v2 - 184));

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

id sub_1C442AD08(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t sub_1C442ADB0()
{

  return sub_1C4F02658();
}

void sub_1C442AE14()
{
  sub_1C43FE96C();
  sub_1C44238D0();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C441E000(v2);
  sub_1C4402530();
  if (!v1)
  {

    v8 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v9 = sub_1C4404370(v8);
    *(v9 + 16) = xmmword_1C4F0CE60;
    v10 = sub_1C4424B10(v4);
    v11 = MEMORY[0x1E69A0138];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = v11;
    v12 = MEMORY[0x1E69E6530];
    *(v9 + 32) = v10;
    *(v9 + 40) = v13;
    sub_1C4443490(v12);
    sub_1C4EFC088();
    v14 = sub_1C43FBF04();
    v15(v14);
    v16 = sub_1C44038D0();
    sub_1C44554A8(v16, v17, v18);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C442AFA8()
{
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveTaskState);
  os_unfair_lock_lock(v1 + 6);
  swift_beginAccess();
  sub_1C442B0C8(&v3, 1);
  swift_endAccess();
  os_unfair_lock_unlock(v1 + 6);
  sub_1C43FBDBC();
  swift_allocObject();
  swift_weakInit();
  os_unfair_lock_lock(v1 + 6);
  sub_1C442B508(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C442B094()
{
  swift_weakDestroy();
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

BOOL sub_1C442B0C8(uint64_t a1, char a2)
{
  sub_1C4851BE8(a1);
  v6 = a2 & 1;
  sub_1C4F02B18();
  sub_1C4F02B68();
  sub_1C44584AC();
  while (1)
  {
    v11 = v7 & v9;
    v12 = (v10 << (v7 & v9)) & *(v8 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      sub_1C442B1AC(a2 & 1, v11, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      goto LABEL_7;
    }

    if (*(*(v4 + 48) + v11) == (a2 & 1))
    {
      break;
    }

    v7 = v11 + 1;
  }

  v6 = *(*(v4 + 48) + v11);
LABEL_7:
  result = v12 == 0;
  *v2 = v6;
  return result;
}

unint64_t sub_1C442B1AC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C48424EC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C442B2EC(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1C4F02AF8();
      sub_1C4F02B18();
      result = sub_1C4F02B68();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == (v5 & 1))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C484AA38();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C442B2EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C456902C(&qword_1EC0BDE48, &unk_1C4F32290);
  result = sub_1C4F021D8();
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C4F02AF8();
        sub_1C4F02B18();
        result = sub_1C4F02B68();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

unint64_t sub_1C442B544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C442B574(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C442B574(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C442B5C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 11);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 11);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 11);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

uint64_t sub_1C442B64C()
{
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C442B738(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C442B770(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C4434D94(a5, a6);
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
    result = sub_1C4F022F8();
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

uint64_t sub_1C442B870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C442B8CC()
{

  return sub_1C440BAA8(v1, 0, 1, v0);
}

void sub_1C442B910()
{

  JUMPOUT(0x1C69407C0);
}

id sub_1C442B92C()
{

  return [v1 (v0 + 2367)];
}

uint64_t sub_1C442B95C()
{

  return sub_1C4418280(v1 - 200, v0);
}

void sub_1C442B994(uint64_t a1@<X8>)
{
  *(v4 + a1) = v1;
  v8 = (v4 + v3[7]);
  *v8 = v6;
  v8[1] = v7;
  *(v4 + v3[8]) = v2;
  *(v4 + v3[9]) = v5 & 1;
}

uint64_t sub_1C442BA34(uint64_t a1, uint64_t a2)
{

  return sub_1C4F01298();
}

void sub_1C442BA70()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442BA8C()
{

  return sub_1C4F00938();
}

void sub_1C442BAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  sub_1C4601D10(a1, 4, v23, v22, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C442BAD0()
{

  return type metadata accessor for ExtractedMatch(0);
}

uint64_t sub_1C442BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 96) = &a9 - v9;

  return sub_1C4EFAD98();
}

uint64_t sub_1C442BB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F00498();
}

void sub_1C442BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_1C49A54E0(sub_1C47FD134, 0, a3, a4, a5, a6, a7, a8);
}

void *sub_1C442BB6C()
{

  return sub_1C4F02AF8();
}

uint64_t sub_1C442BBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void sub_1C442BC88(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;

  sub_1C44CD9C0(0, v1, 0);
}

void sub_1C442BCC0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1C442BD28()
{

  return sub_1C4460108(v4 + v3, v5 + v2, v0, v1);
}

id sub_1C442BD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4673B1C(a1, a2, a3, a4, v4, v5);
}

uint64_t sub_1C442BD80(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = v1;
  *(v2 - 67) = 2;
  return v2 - 67;
}

uint64_t sub_1C442BDA0(uint64_t a1)
{

  return sub_1C4F02678();
}

void sub_1C442BDBC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C442BDDC()
{

  return sub_1C4F000F8();
}

void *sub_1C442BE08(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 + *(v2 + 32));

  return sub_1C44F927C(a1, a2, v5);
}

uint64_t sub_1C442BE24()
{

  return sub_1C4F00FF8();
}

__n128 *sub_1C442BE4C(__n128 *result, __n128 a2)
{
  *(v3 - 88) = result;
  result[1] = a2;
  result->n128_u8[v2] = 0;
  return result;
}

uint64_t sub_1C442BE94(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442BEB4()
{

  return sub_1C4F008F8();
}

uint64_t sub_1C442BED4()
{

  return sub_1C4EF9AE8();
}

void sub_1C442BEF0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_1C442BF0C()
{
  v8 = *(v7 - 256);
  *(v8 + 16) = v6;
  v9 = v8 + (v1 << 6);
  *(v9 + 32) = v4;
  *(v9 + 40) = v0;
  *(v9 + 48) = *(v7 - 352);
  *(v9 + 56) = v5;
  *(v9 + 64) = *(v7 - 320);
  *(v9 + 72) = v3;
  *(v9 + 80) = v2;
  *(v9 + 88) = *(v7 - 264);
}

uint64_t sub_1C442BF5C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442BF9C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442BFE0@<X0>(char a1@<W8>)
{
  *(v2 - 144) = a1;

  return sub_1C4F027B8();
}

uint64_t sub_1C442C024()
{
  v2 = *(v0 + 128);

  return sub_1C443C0C8(v2, type metadata accessor for Configuration);
}

uint64_t sub_1C442C068(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 168) = result;
  *(v7 - 160) = v6;
  *(v7 - 144) = a6;
  *(v7 - 136) = a5;
  *(v7 - 176) = a4;
  *(v7 - 208) = a3;
  *(v7 - 240) = a2;
  return result;
}

uint64_t sub_1C442C0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02938();
}

uint64_t sub_1C442C158(uint64_t result)
{
  *(result + 16) = 0;
  *(v1 - 352) = result + 16;
  return result;
}

uint64_t sub_1C442C170(uint64_t a1)
{

  return sub_1C4F00FD8();
}

uint64_t sub_1C442C1A4()
{
  v3 = *(v0 + 552);

  return sub_1C448D1F8(v1, v3);
}

uint64_t sub_1C442C1EC()
{
  *(v2 - 72) = v1;

  return sub_1C4F027E8();
}

uint64_t sub_1C442C21C(uint64_t a1)
{

  return sub_1C4F02778();
}

uint64_t sub_1C442C2B8()
{
  v9 = (v5 + v4[8]);
  *v9 = v1;
  v9[1] = v0;
  v10 = (v5 + v4[10]);
  *v10 = v3;
  v10[1] = v2;
  *(v5 + v4[11]) = v8;
  *(v5 + v4[12]) = *(v6 - 96);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442C2F8()
{

  return sub_1C4F02618();
}

uint64_t sub_1C442C318(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69A9B60];

  return sub_1C4401CBC(a1, a2, a3, v4);
}

size_t sub_1C442C33C(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 8);
  return result;
}

uint64_t sub_1C442C368()
{

  return swift_allocObject();
}

void sub_1C442C3D8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442C404(uint64_t a1)
{

  return MEMORY[0x1EEE49F08](a1, 0, 1, 0, 1, 0, 1, 100);
}

uint64_t sub_1C442C430()
{

  return sub_1C45BBFB4(v0, v1);
}

uint64_t sub_1C442C4A4(unint64_t *a1)
{
  v2 = MEMORY[0x1E69A94A8];

  return sub_1C4403D50(a1, v2);
}

void sub_1C442C544(uint64_t a1@<X8>)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  *(v2 + 40) = v1;
}

void sub_1C442C614(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

__n128 sub_1C442C690(__n128 *a1)
{
  result = *(v1 - 320);
  a1[1] = result;
  return result;
}

uint64_t sub_1C442C6A0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442C6C0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442C700(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442C74C(uint64_t a1)
{
  v1[4] = a1;
  *v1 = v2;
}

void sub_1C442C7FC()
{

  sub_1C46B7244();
}

uint64_t sub_1C442C81C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C442C838@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;

  return sub_1C46E19E0(v2, v1 + 56 * v3 + 32);
}

uint64_t sub_1C442C85C()
{

  return sub_1C440BAA8(v1 + v0, 0, 1, v2);
}

uint64_t sub_1C442C914()
{

  return sub_1C4EFAD68();
}

uint64_t sub_1C442C998(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E699FDF0];

  return sub_1C4401CBC(a1, a2, a3, v4);
}

uint64_t sub_1C442C9F4()
{
  v2 = *(v0 - 144);

  return sub_1C47CD188(v2, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
}

uint64_t sub_1C442CA1C()
{

  return sub_1C47D0B14(v0, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
}

uint64_t sub_1C442CA44()
{
  *(v0 + 80) = 0;

  return type metadata accessor for PhaseStores(0);
}

__n128 sub_1C442CB08(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t sub_1C442CB80(uint64_t result)
{
  v3 = *(v2 - 264);
  *(v2 - 136) = v1;
  *(v2 - 128) = v3;
  *(v2 - 160) = 8;
  *(result + 56) = *(v2 - 272);
  return result;
}

uint64_t sub_1C442CBCC()
{

  return sub_1C4888C54(v1, v2, v0);
}

double sub_1C442CC10()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void sub_1C442CC74(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_1C442CD48(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442CDF0(uint64_t a1)
{

  return swift_once();
}

_OWORD *sub_1C442CE10()
{
  *(v1 - 176) = v0;

  return sub_1C46601FC();
}

uint64_t sub_1C442CE50@<X0>(unint64_t a2@<X8>)
{
  STACK[0x2E8] = a2;
  v5 = v2[88];
  *(v3 - 256) = v2[89];
  *(v3 - 248) = v5;
  v6 = v2[86];
  *(v3 - 240) = v2[87];
  *(v3 - 232) = v6;
  v7 = v2[84];
  *(v3 - 224) = v2[85];
  *(v3 - 216) = v7;
  v8 = v2[82];
  *(v3 - 208) = v2[83];
  *(v3 - 200) = v8;
  v9 = v2[80];
  *(v3 - 192) = v2[81];
  *(v3 - 184) = v9;
  v10 = v2[78];
  *(v3 - 176) = v2[79];
  *(v3 - 168) = v10;
  v11 = v2[76];
  *(v3 - 160) = v2[77];
  *(v3 - 152) = v11;
  v12 = v2[74];
  *(v3 - 144) = v2[75];
  *(v3 - 136) = v12;
  v13 = v2[72];
  *(v3 - 128) = v2[73];
  *(v3 - 120) = v13;
  v14 = v2[70];
  *(v3 - 112) = v2[71];
  *(v3 - 104) = v14;
  *(v3 - 96) = v2[69];
}

BOOL sub_1C442CEFC(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = 0;

  return sub_1C49F27E4(a1, a2, v2 - 112);
}

unint64_t sub_1C442CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C441D828(v10, v9, &a9);
}

void *sub_1C442CFB4(void *result)
{
  result[4] = 43200;
  result[5] = 0x3FE0000000000000;
  result[2] = v1;
  result[3] = 0x4072C00000000000;
  return result;
}

uint64_t sub_1C442CFD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C4401CBC(a1, a2, a3, &unk_1C4F50F14);
}

unint64_t sub_1C442CFF4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  *v15 = a1;

  return sub_1C441D828(v14, v13, va);
}

uint64_t sub_1C442D05C(uint64_t a1)
{
  *(v2 + v1) = a1;
}

uint64_t sub_1C442D15C(uint64_t a1)
{

  return swift_once();
}

void sub_1C442D214()
{

  sub_1C458A900();
}

uint64_t sub_1C442D260()
{

  return sub_1C4AF2D00(v1, v2, v0);
}

uint64_t sub_1C442D2AC(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

unint64_t sub_1C442D2E4()
{

  return sub_1C4415EA8();
}

uint64_t sub_1C442D320(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442D360(uint64_t a1, uint64_t a2)
{

  return sub_1C4F025E8();
}

double sub_1C442D414()
{
  v1 = *(v0 + 56);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_1C442D480(uint64_t a1, uint64_t a2)
{
  sub_1C442B738(v2, a2);

  return swift_beginAccess();
}

uint64_t sub_1C442D4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BF8();
}

void sub_1C442D534()
{
  v0[1] = 0;
  *(v1 - 72) = 0;
  v0[2] = 0;
  v0[4] = 0;
  v0[6] = 0;
}

uint64_t sub_1C442D554(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C442D5A0()
{
  *(v1 - 112) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442D5EC()
{
}

void sub_1C442D638(uint64_t a1, void *a2)
{
  a2[2] = 0xD000000000000023;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

void sub_1C442D668(uint64_t a1, void *a2)
{
  a2[2] = 0xD00000000000002ALL;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

void sub_1C442D690(uint64_t a1, void *a2)
{
  a2[2] = 0xD00000000000001FLL;
  a2[3] = v2;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
}

void sub_1C442D708(uint64_t a1@<X8>)
{
  v1[6] = v2;
  v1[7] = v3 + 23;
  v1[8] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_1C442D738()
{

  return sub_1C443C0C8(v0, _s10ViewConfigVMa);
}

void sub_1C442D7B8()
{
  *(v0 - 360) = 0;
  *(v0 - 352) = 0;
  *(v0 - 344) = 0;
  *(v0 - 336) = 0;
  *(v0 - 328) = 0;
}

uint64_t sub_1C442D7EC()
{

  return sub_1C4F02658();
}

uint64_t sub_1C442D874(uint64_t a1)
{
  sub_1C440BAA8(v1 + v3, 1, 1, a1);
  sub_1C440BAA8(v1 + v2[11], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[12], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[13], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[14], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[15], 1, 1, a1);
  sub_1C440BAA8(v1 + v2[16], 1, 1, a1);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C442D9A0()
{

  sub_1C458A900();
}

uint64_t sub_1C442D9F0()
{
  *(v0 - 192) = 0x6E696C657069503CLL;
  *(v0 - 184) = 0xEF203A6570795465;
  return 0x6E776F6E6B6E75;
}

void sub_1C442DABC()
{
  *(v0 - 568) = 0;
  *(v0 - 560) = 0;
  *(v0 - 552) = 0;
  *(v0 - 544) = 0;
  *(v0 - 536) = 0;
  *(v0 - 528) = 0;
  *(v0 - 520) = 0;
  *(v0 - 512) = 0;
  *(v0 - 504) = 0;
}

uint64_t sub_1C442DCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F02938();
}

uint64_t sub_1C442DCD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C442DD34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C442DD98@<X0>(uint64_t a1@<X8>)
{
  *(v7 + a1) = v1;
  v9 = (v7 + v2[7]);
  *v9 = v4;
  v9[1] = v5;
  *(v7 + v2[8]) = v3;
  *(v7 + v2[9]) = v6 & 1;

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C442DDE4()
{

  return sub_1C45FE854(v0);
}

uint64_t sub_1C442DE2C()
{

  return type metadata accessor for Configuration(0);
}

uint64_t sub_1C442DE64()
{
}

uint64_t sub_1C442DE80(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

id sub_1C442DE98(uint64_t a1, uint64_t a2)
{
  sub_1C442B738(a1, a2);

  return v2;
}

__n128 sub_1C442DEC4(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

void sub_1C442DED4()
{
  v2 = *(v0 - 248);

  sub_1C49D3A70(v2);
}

uint64_t sub_1C442DEEC()
{

  return type metadata accessor for EntityTaggingPersonDataCollection(0);
}

uint64_t sub_1C442DF38()
{
  *(v0 + *(*(v2 - 192) + 52)) = *(v1 + *(*(v2 - 168) + 48));

  return sub_1C4EF9CD8();
}

uint64_t sub_1C442DFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_1C442E02C()
{

  return swift_task_alloc();
}

uint64_t sub_1C442E04C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C442E068(uint64_t a1)
{

  return sub_1C4F017F8();
}

void sub_1C442E0AC()
{
  *(v0 - 576) = 0;
  *(v0 - 584) = 0;
  *(v0 - 560) = 0;
  *(v0 - 568) = 0;
  *(v0 - 536) = 0;
  *(v0 - 552) = 0;
  *(v0 - 272) = 0;
  *(v0 - 544) = 0;
  *(v0 - 592) = 0;
  *(v0 - 600) = 0;
  *(v0 - 608) = 0;
  *(v0 - 616) = 0;
}

void *sub_1C442E134()
{

  return sub_1C4D2C7B8(v3, v2, v1, v0);
}

void sub_1C442E15C()
{
  STACK[0x200] = v0[123];
  STACK[0x208] = v0[122];
  STACK[0x210] = v0[119];
  STACK[0x218] = v0[118];
  STACK[0x220] = v0[117];
  STACK[0x228] = v0[116];
  STACK[0x230] = v0[115];
  STACK[0x238] = v0[114];
  STACK[0x240] = v0[113];
  STACK[0x248] = v0[112];
  STACK[0x250] = v0[111];
  STACK[0x258] = v0[110];
  STACK[0x260] = v0[109];
  STACK[0x268] = v0[108];
  STACK[0x270] = v0[107];
  STACK[0x278] = v0[106];
  STACK[0x280] = v0[105];
  STACK[0x288] = v0[104];
  STACK[0x290] = v0[103];
  STACK[0x298] = v0[102];
  STACK[0x2A0] = v0[100];
  STACK[0x2A8] = v0[99];
  STACK[0x2B0] = v0[98];
  STACK[0x2B8] = v0[97];
  STACK[0x2C0] = v0[96];
  STACK[0x2C8] = v0[95];
  STACK[0x2D0] = v0[94];
  STACK[0x2D8] = v0[93];
  STACK[0x2E0] = v0[92];
}

uint64_t sub_1C442E3C8()
{
  type metadata accessor for LongitudinalEventData._StorageClass(0);

  return swift_allocObject();
}

uint64_t sub_1C442E404()
{
  v2 = v0[5];
  v3 = v0[6];
  v0[40] = v2;
  v0[41] = v3;

  return sub_1C4418280((v0 + 2), v2);
}

void sub_1C442E440()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  return sub_1C4851520(v25 - 160, va);
}

uint64_t sub_1C442E474()
{
  v4 = *(v2 + 16);

  return sub_1C4A721C4(v0, v4, v1);
}

id sub_1C442E494()
{

  return [v0 (v1 + 3557)];
}

uint64_t sub_1C442E4B8(int a1)
{
  *(v4 - 368) = a1;
  *(v4 - 192) = v1;
  *(v4 - 256) = v3;

  return sub_1C445FAA8(v2, v3);
}

uint64_t sub_1C442E4E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442E500()
{

  return sub_1C4EFD618();
}

uint64_t sub_1C442E530()
{

  return sub_1C4F01828();
}

uint64_t sub_1C442E54C()
{

  return type metadata accessor for Source(0);
}

uint64_t sub_1C442E59C()
{

  return sub_1C4F013E8();
}

void sub_1C442E5BC()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442E5D4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C442E620@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 200) = &a2 - a1;

  return sub_1C4EFD678();
}

void sub_1C442E654(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000019;
  *(a2 + 8) = v2;
  *(a2 + 16) = 4;
}

uint64_t sub_1C442E670(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6310];

  return sub_1C4401CBC(a1, v1, v2, v4);
}

uint64_t sub_1C442E69C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F025E8();
}

uint64_t sub_1C442E6C0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C442E6E0(uint64_t a1)
{

  return sub_1C4EFB728();
}

uint64_t sub_1C442E750()
{

  return sub_1C4F02858();
}

uint64_t sub_1C442E7B4(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C442E7E0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 72) = *(*(v1 - 176) + a1);
  *(v1 - 153) = 8;
  return type metadata accessor for LifeEventStructs.Place(0);
}

uint64_t sub_1C442E860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C442E8C4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C442E9A4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C442EAA4()
{

  return sub_1C4EF9CD8();
}

uint64_t sub_1C442EAD4(uint64_t a1)
{

  return sub_1C4F00FD8();
}

uint64_t sub_1C442EAF8(uint64_t a1, uint64_t a2)
{

  return sub_1C4EF9328();
}

uint64_t sub_1C442EB14(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

void *sub_1C442EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 240) = &a9 - v9;
  *(v11 - 232) = v10;

  return sub_1C4F02AF8();
}

uint64_t sub_1C442EB90()
{

  return sub_1C4924B90(v1, v0);
}

uint64_t sub_1C442EBB8()
{

  return sub_1C4EF9B78();
}

uint64_t sub_1C442EC10@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = v1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442EC58()
{

  return sub_1C4A25FEC();
}

id sub_1C442EC74()
{

  return sub_1C4475EF8(2048);
}

uint64_t sub_1C442ECA4(uint64_t a1)
{

  return sub_1C4EFD5E8();
}

uint64_t sub_1C442ED08()
{
}

uint64_t sub_1C442ED58()
{

  return sub_1C4B960D0(v0);
}

uint64_t sub_1C442ED74()
{

  return sub_1C4F026C8();
}

uint64_t sub_1C442EE00(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1C4F02938();
}

uint64_t sub_1C442EE30(uint64_t a1)
{
  *(v1 - 328) = a1;

  return sub_1C442E860(a1, v1 - 136);
}

uint64_t sub_1C442EF74()
{
  sub_1C4475B28();
  v9 = v1;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v0)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v2 = swift_task_alloc();
    v3 = sub_1C447FAC0(v2);
    *v3 = v4;
    v5 = sub_1C4401314(v3);

    return v6(v5);
  }

  else
  {
    sub_1C43FBDA0();

    return v8();
  }
}

uint64_t sub_1C442F090()
{

  return sub_1C4F00978();
}

void sub_1C442F0A8(uint64_t a1)
{

  sub_1C458E820();
}

uint64_t sub_1C442F0D8()
{

  return sub_1C45A24C0(v0, 3);
}

uint64_t sub_1C442F148(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02548();
}

uint64_t sub_1C442F160@<X0>(uint64_t a1@<X8>)
{
  *(v2 + v3) = a1;

  return sub_1C440BAA8(v2, 0, 1, v1);
}

uint64_t sub_1C442F184()
{

  return swift_slowAlloc();
}

id sub_1C442F1A4()
{
  *(v1 - 72) = v0;

  return v0;
}

uint64_t sub_1C442F1BC()
{

  return swift_allocObject();
}

uint64_t sub_1C442F1F0(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_1C4F00FD8();
}

uint64_t sub_1C442F214()
{
  v2 = *(v0 + 24);

  return sub_1C4418280(v0, v2);
}

uint64_t sub_1C442F280@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = v1;
  *(v3 - 160) = a1 + 8;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C442F2A0()
{
}

uint64_t sub_1C442F2B8()
{
  *(v0 + *(v1 + 28)) = *(v2 - 120);
}

uint64_t sub_1C442F2F8()
{
}

uint64_t sub_1C442F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1C442F368(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C442F3D8()
{
}

uint64_t sub_1C442F3F0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
}

double sub_1C442F414()
{
  result = 0.0;
  v0[28] = 0u;
  v0[29] = 0u;
  v0[26] = 0u;
  v0[27] = 0u;
  v0[25] = 0u;
  return result;
}

__n128 sub_1C442F428@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t sub_1C442F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, __int128 a11)
{
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = a9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11;
  *(a2 + 48) = a11;
  *(a2 + 64) = 0;

  return swift_willThrow();
}

uint64_t sub_1C442F4B4(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1C442F4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
}

void sub_1C442F4F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C442F54C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02738();
}

uint64_t sub_1C442F568()
{

  return sub_1C4F02658();
}

uint64_t sub_1C442F5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02738();
}

uint64_t sub_1C442F5C4()
{
  *(v0 - 72) = 7;

  return sub_1C4F02738();
}

void sub_1C442F634(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C442F680()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C442F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t sub_1C442F6CC()
{

  return sub_1C44CDA7C();
}

uint64_t sub_1C442F718(uint64_t a1)
{

  return sub_1C4EFF808();
}

void sub_1C442F750(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_1C442F778()
{

  return swift_slowAlloc();
}

uint64_t sub_1C442F794()
{

  return sub_1C4BB44E0(v0, v1);
}

uint64_t sub_1C442F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v13 = a13;
}

uint64_t sub_1C442F7D8()
{

  return sub_1C44157D4(v0, 1, v1);
}

uint64_t sub_1C442F8B8()
{
}

uint64_t sub_1C442F8E4(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_1C4F00FD8();
}

uint64_t sub_1C442F914(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C442F938()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 304);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C442F964()
{
  *(v1 - 176) = *(v1 - 376);
  *(v1 - 168) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C442F988@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 184) = a1;
  *(v4 - 176) = v1;
  *(v4 - 208) = *(v4 - 296);
  *(v4 - 104) = v3;
  *(v4 - 96) = v2;

  return sub_1C4422F90((v4 - 128));
}

void sub_1C442F9E0()
{
  v4 = (v1 + *(v2 + 40));
  *v4 = *(v3 - 152);
  v4[1] = v0;
}

uint64_t sub_1C442FADC()
{
}

BOOL sub_1C442FAFC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C442FB14(uint64_t a1)
{

  return sub_1C4423A0C(a1, v1, v2);
}

void sub_1C442FB40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C442FB60(uint64_t a1)
{
  *(v1 + v2) = a1;
}

uint64_t sub_1C442FB80()
{

  return sub_1C44157D4(v1, 2, v0);
}

uint64_t sub_1C442FBF4(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

void sub_1C442FC2C()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C442FC64()
{

  return sub_1C448C9D8();
}

double sub_1C442FCC4()
{
  v1 = *(v0 + 120);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

id sub_1C442FD08()
{
  v2 = *(v0 + 3752);

  return objc_allocWithZone(v2);
}

uint64_t sub_1C442FD50()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[85] = v2;
  v0[86] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C442FDC0(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v2;
  *(v4 - 128) = v3;
  *(v4 - 88) = v1;
  return result;
}

void sub_1C442FDF8()
{
}

uint64_t sub_1C442FE10()
{
  type metadata accessor for HUTenPointContext.VirtualInteraction._StorageClass(0);

  return swift_allocObject();
}

void sub_1C442FE50()
{
  v2 = (v1 + *(v0 + 48));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1C442FE68()
{
}

uint64_t sub_1C442FE94()
{

  return sub_1C44594A4(v1, v0, _s7MetricsO7PayloadVMa);
}

void sub_1C442FED0(unint64_t a1@<X8>)
{

  sub_1C44CD9C0(a1 > 1, v1, 1);
}

void sub_1C442FF30()
{

  sub_1C458A85C();
}

__n128 sub_1C442FFB4(__n128 *a1)
{
  result = *(v1 - 528);
  a1[1] = result;
  a1[2].n128_u64[0] = 0x736C69616D65;
  return result;
}

void sub_1C442FFE4(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = v12;
  a1[1] = v10;
  a1[2] = a8;
  a1[3] = v9;
  a1[4] = a9;
  a1[5] = v11;
}

uint64_t sub_1C4430004()
{

  return sub_1C4485564(v0, type metadata accessor for ConstructionGraphTriple);
}

uint64_t sub_1C443003C()
{
  sub_1C4409678((v0 + 208), *(v0 + 232));

  return sub_1C4EFF7D8();
}

void sub_1C44300DC(uint64_t a1)
{

  sub_1C443D664();
}

BOOL sub_1C4430110(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C443012C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4430170(uint64_t a1)
{

  return swift_once();
}

void sub_1C44301C0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44301E4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4430204()
{

  return sub_1C4B9B2FC(v1, v0, type metadata accessor for ViewDatabaseArtifact.Property);
}

void sub_1C4430244(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1C4430294()
{
  *(v1 + 72) = *(v2 + 8);
  *(v1 + 80) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_1C44302B4(uint64_t a1)
{

  return sub_1C4EFB308();
}

uint64_t sub_1C4430308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_1C4430328(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 72) = a1;
  *(v2 - 360) = a1;
  *(v2 - 352) = a1;
}

void sub_1C4430348(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1 + 11;
  *(v2 - 96) = a1;

  JUMPOUT(0x1C6940010);
}

void sub_1C443036C(uint64_t a1)
{

  sub_1C458E108();
}

__n128 sub_1C443039C(__n128 *a1)
{
  result = v1[30];
  a1[1] = result;
  return result;
}

uint64_t sub_1C44303A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0xD000000000000035;
  *(a2 + 24) = v10;
  *(a2 + 32) = a9;
  *(a2 + 48) = a10;
  *(a2 + 64) = 3;

  return swift_willThrow();
}

uint64_t sub_1C44303E4()
{

  return sub_1C4F016D8();
}

uint64_t sub_1C443046C()
{
  *(v1 - 320) = v0;

  return swift_beginAccess();
}

uint64_t sub_1C44304BC()
{
  v7 = (v3 + v0[8]);
  *v7 = v1;
  v7[1] = v2;
  v8 = (v3 + v0[10]);
  v9 = *(v4 - 96);
  *v8 = *(v4 - 104);
  v8[1] = v9;
  *(v3 + v0[11]) = v6;
  *(v3 + v0[12]) = *(v4 - 108);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C443052C()
{
  *(v6 - 160) = v1;
  *(v6 - 296) = v4;
  *(v6 - 304) = v0;
  *(v6 - 312) = v3;
  *(v6 - 320) = v5;
  *(v6 - 328) = v2;
  *(v6 - 112) = 0;
}

__n128 sub_1C44305CC@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t sub_1C44305D8(uint64_t a1)
{

  return sub_1C4F019A8();
}

uint64_t sub_1C44305F8()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4430610(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t sub_1C4430634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1C4430684()
{
  v2 = *(v0 - 120);
  *(v0 - 160) = v2 + 16;
  *(v0 - 152) = v2 + 8;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44306B4(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C44306F8()
{

  return sub_1C4B0E994(v0 + 16, v0 + 96, v1, v2);
}

void sub_1C4430738(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C443077C(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a2;
  *(v2 - 96) = 1;
  return v2 - 96;
}

uint64_t sub_1C4430848(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44308A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4430900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FCE50();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4430958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44309B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4430A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4430A70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4430B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4430B8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430BEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430C4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}