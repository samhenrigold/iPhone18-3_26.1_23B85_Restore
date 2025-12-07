unint64_t sub_268AC5B50()
{
  result = qword_2802A8790;
  if (!qword_2802A8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8790);
  }

  return result;
}

unint64_t sub_268AC5BA8()
{
  result = qword_2802A8798;
  if (!qword_2802A8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8798);
  }

  return result;
}

unint64_t sub_268AC5C00()
{
  result = qword_2802A87A0;
  if (!qword_2802A87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87A0);
  }

  return result;
}

unint64_t sub_268AC5C58()
{
  result = qword_2802A87A8;
  if (!qword_2802A87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87A8);
  }

  return result;
}

unint64_t sub_268AC5CB0()
{
  result = qword_2802A87B0;
  if (!qword_2802A87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87B0);
  }

  return result;
}

unint64_t sub_268AC5D08()
{
  result = qword_2802A87B8;
  if (!qword_2802A87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87B8);
  }

  return result;
}

unint64_t sub_268AC5D60()
{
  result = qword_2802A87C0;
  if (!qword_2802A87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87C0);
  }

  return result;
}

unint64_t sub_268AC5DB8()
{
  result = qword_2802A87C8;
  if (!qword_2802A87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87C8);
  }

  return result;
}

unint64_t sub_268AC5E10()
{
  result = qword_2802A87D0;
  if (!qword_2802A87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87D0);
  }

  return result;
}

unint64_t sub_268AC5E68()
{
  result = qword_2802A87D8;
  if (!qword_2802A87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87D8);
  }

  return result;
}

unint64_t sub_268AC5EC0()
{
  result = qword_2802A87E0;
  if (!qword_2802A87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87E0);
  }

  return result;
}

unint64_t sub_268AC5F18()
{
  result = qword_2802A87E8;
  if (!qword_2802A87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87E8);
  }

  return result;
}

unint64_t sub_268AC5F70()
{
  result = qword_2802A87F0;
  if (!qword_2802A87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87F0);
  }

  return result;
}

unint64_t sub_268AC5FC8()
{
  result = qword_2802A87F8;
  if (!qword_2802A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87F8);
  }

  return result;
}

unint64_t sub_268AC6020()
{
  result = qword_2802A8800;
  if (!qword_2802A8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8800);
  }

  return result;
}

unint64_t sub_268AC6078()
{
  result = qword_2802A8808;
  if (!qword_2802A8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8808);
  }

  return result;
}

unint64_t sub_268AC60CC()
{
  result = qword_2802A8810;
  if (!qword_2802A8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8810);
  }

  return result;
}

unint64_t sub_268AC6120()
{
  result = qword_2802A8818;
  if (!qword_2802A8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8818);
  }

  return result;
}

unint64_t sub_268AC6174()
{
  result = qword_2802A8828;
  if (!qword_2802A8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8828);
  }

  return result;
}

unint64_t sub_268AC61C8()
{
  result = qword_2802A8830;
  if (!qword_2802A8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8830);
  }

  return result;
}

_BYTE *sub_268AC621C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268AC62B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268AC62F4()
{
  result = qword_2802A8840;
  if (!qword_2802A8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8840);
  }

  return result;
}

unint64_t sub_268AC634C()
{
  result = qword_2802A8848;
  if (!qword_2802A8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8848);
  }

  return result;
}

unint64_t sub_268AC63A4()
{
  result = qword_2802A8850;
  if (!qword_2802A8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8850);
  }

  return result;
}

uint64_t sub_268AC6434()
{
  OUTLINED_FUNCTION_132_1();

  return sub_268AB3F14();
}

uint64_t sub_268AC6488()
{
  OUTLINED_FUNCTION_132_1();

  return sub_268ABAEA4();
}

uint64_t sub_268AC64DC()
{
  OUTLINED_FUNCTION_132_1();

  return sub_268ABB0EC();
}

uint64_t sub_268AC6530()
{
  OUTLINED_FUNCTION_132_1();

  return sub_268ABC88C();
}

uint64_t sub_268AC6584()
{
  OUTLINED_FUNCTION_132_1();

  return sub_268ABD570();
}

void OUTLINED_FUNCTION_0_49()
{
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v1 - 72) = 0;
  *(v0 + 96) = 0;
  *(v0 + 140) = 0;
}

double OUTLINED_FUNCTION_3_43()
{
  v1 = *(v0 + 392);
  *(v0 + 40) = *(v0 + 400);
  *(v0 + 48) = v1;
  *(v0 + 36) = *(v0 + 408);
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  result = 0.0;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 305) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_21()
{
  *(v0 - 264) = 2;

  return sub_268B383B4();
}

uint64_t OUTLINED_FUNCTION_14_23()
{
  *(v0 - 264) = 1;

  return sub_268B383B4();
}

void OUTLINED_FUNCTION_23_20()
{
  v2 = *(v0 + 40);
  *(v1 - 120) = *(v0 + 48);
  *(v1 - 112) = v2;
  *(v1 - 104) = *(v0 + 36);
  *(v1 - 103) = *(v0 + 12);
}

void OUTLINED_FUNCTION_24_17()
{
  v1 = *(v0 + 40);
  *(v0 + 216) = *(v0 + 48);
  *(v0 + 224) = v1;
  *(v0 + 232) = *(v0 + 36);
  *(v0 + 233) = *(v0 + 12);
}

void OUTLINED_FUNCTION_26_16()
{
  v2 = *(v1 - 168);
  *(v1 - 72) = *(v1 - 176);
  v3 = *(v1 - 160);
  *(v0 + 120) = *(v1 - 152);
  *(v0 + 128) = v2;
  v4 = *(v1 - 144);
  *(v0 + 56) = *(v1 - 136);
  *(v0 + 64) = v3;
  *(v0 + 80) = *(v1 - 112);
  *(v0 + 88) = v4;
  *(v0 + 76) = *(v1 - 96);
}

void OUTLINED_FUNCTION_29_15()
{
  *(v1 - 72) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
}

void OUTLINED_FUNCTION_30_16()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 48) = 0;
  *(v0 + 64) = 0;
  *(v1 - 72) = 0;
  *(v0 + 104) = 0;
  *(v0 + 100) = 0;
}

void OUTLINED_FUNCTION_31_18()
{
  *(v0 + 136) = v2;
  *(v0 + 137) = v3;
  *(v0 + 138) = v1;
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  *(v0 + 144) = *(v4 - 72);
  *(v0 + 152) = v6;
  v7 = *(v0 + 56);
  *(v0 + 160) = *(v0 + 64);
  *(v0 + 168) = v5;
  *(v0 + 176) = *(v0 + 88);
  *(v0 + 184) = v7;
}

uint64_t OUTLINED_FUNCTION_34_12()
{
  *(v9 - 192) = v1;
  *(v9 - 191) = v4;
  *(v9 - 190) = v2;
  *(v0 + 419) = *(v9 - 96);
  *(v9 - 185) = *(v9 - 92);
  v10 = *(v0 + 112);
  *(v9 - 184) = *(v0 + 120);
  *(v9 - 176) = v10;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  *(v9 - 168) = v5;
  *(v9 - 160) = v11;
  v13 = *(v0 + 104);
  *(v9 - 152) = v12;
  *(v9 - 144) = v13;
  v14 = *(v0 + 136);
  *(v9 - 136) = *(v9 - 72);
  *(v9 - 128) = v14;
  *(v9 - 120) = v6;
  *(v9 - 112) = v7;
  *(v9 - 104) = v3;
  *(v9 - 103) = v8;
  LODWORD(v14) = *(v0 + 128);
  *(v9 - 102) = *(v0 + 132);
  *(v9 - 101) = v14;
  return v9 - 192;
}

uint64_t OUTLINED_FUNCTION_36_11()
{
  *(v9 - 192) = v1;
  *(v9 - 191) = v4;
  *(v9 - 190) = v3;
  *(v0 + 419) = *(v9 - 96);
  *(v9 - 185) = *(v9 - 92);
  v10 = *(v0 + 120);
  *(v9 - 184) = *(v0 + 128);
  *(v9 - 176) = v10;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v9 - 168) = v2;
  *(v9 - 160) = v11;
  v13 = *(v0 + 72);
  *(v9 - 152) = v12;
  *(v9 - 144) = v13;
  v14 = *(v0 + 96);
  *(v9 - 136) = *(v9 - 72);
  *(v9 - 128) = v14;
  *(v9 - 120) = v8;
  *(v9 - 112) = v5;
  *(v9 - 104) = v7;
  *(v9 - 103) = v6;
  *(v9 - 102) = *(v0 + 140);
  return v9 - 192;
}

uint64_t OUTLINED_FUNCTION_37_15()
{
  *(v0 + 240) = *(v0 + 44);
  *(v0 + 241) = *v0;
  *(v0 + 242) = *(v0 + 96);
  *(v0 + 248) = v5;
  *(v0 + 256) = v6;
  *(v0 + 264) = *(v0 + 64);
  *(v0 + 272) = v4;
  v9 = *(v0 + 80);
  *(v0 + 280) = *(v0 + 88);
  *(v0 + 288) = v8;
  *(v0 + 296) = v7;
  *(v0 + 304) = v3;
  v10 = *(v0 + 16);
  *(v0 + 312) = v9;
  *(v0 + 320) = v10;
  *(v0 + 328) = *(v0 + 76);
  *(v0 + 329) = *(v0 + 100);
  *(v0 + 330) = v1;
  *(v0 + 331) = v2;
  *(v0 + 336) = *(v0 + 32);
  return v0 + 240;
}

double OUTLINED_FUNCTION_40_10@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 65) = 0u;
  return result;
}

void OUTLINED_FUNCTION_41_6()
{
  *(v0 + 8) = v1 & 1;
  v2 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 68);
  *(v0 + 145) = v2;
}

uint64_t OUTLINED_FUNCTION_47_8()
{
  v5 = *(v2 + 8);
  *(v2 + 192) = v4;
  *(v2 + 200) = v5;
  v6 = *(v2 + 16);
  *(v2 + 208) = v1;
  *(v2 + 216) = v6;
  *(v2 + 224) = *(v2 + 76);
  *(v2 + 225) = *(v2 + 100);
  *(v2 + 226) = v3;
  *(v2 + 227) = *(v2 + 28);
  *(v2 + 232) = v0;
  return v2 + 136;
}

void OUTLINED_FUNCTION_61_5()
{
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  *(v0 + 240) = *(v9 - 72);
  *(v0 + 248) = v11;
  *(v0 + 256) = v5;
  *(v0 + 264) = v10;
  *(v0 + 272) = v6;
  *(v0 + 280) = v8;
  *(v0 + 288) = v7;
  *(v0 + 296) = v3;
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;
  *(v0 + 320) = v4;
}

uint64_t OUTLINED_FUNCTION_75_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268B38574();
}

void OUTLINED_FUNCTION_78_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_79_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_80_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_84_5()
{
  *(v0 + 52) = v1 & 1;
  *(v0 + 152) = v5;
  *(v0 + 153) = v2;
  *(v0 + 154) = v4;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  *(v0 + 160) = *(v6 - 72);
  *(v0 + 168) = v7;
  *(v0 + 176) = *(v0 + 72);
  *(v0 + 184) = v8;
  v9 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 104);
  *(v0 + 200) = v9;
  v10 = *(v0 + 32);
  *(v0 + 208) = *(v0 + 24);
  *(v0 + 216) = v10;
  v11 = *(v0 + 40);
  *(v0 + 224) = *(v0 + 88);
  *(v0 + 232) = v11;
  *(v0 + 240) = *(v0 + 84);
  *(v0 + 241) = *(v0 + 116);
  *(v0 + 242) = *(v0 + 60);
  *(v0 + 243) = v3;
  *(v0 + 244) = *(v0 + 48);
  *(v0 + 245) = v1 & 1;
  return v0 + 152;
}

void OUTLINED_FUNCTION_89_6()
{
  v2 = *(v0 + 136);
  *(v1 - 136) = *(v1 - 72);
  *(v1 - 128) = v2;
}

uint64_t OUTLINED_FUNCTION_90_6@<X0>(char a1@<W8>)
{
  v2 = *(v1 + 128);
  *(v1 + 234) = *(v1 + 132);
  *(v1 + 235) = v2;
  *(v1 + 236) = a1;
  return v1 + 144;
}

void OUTLINED_FUNCTION_91_5()
{
  v2 = *(v0 + 128);
  *(v1 - 102) = *(v0 + 132);
  *(v1 - 101) = v2;
}

uint64_t OUTLINED_FUNCTION_92_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268B38584();
}

void OUTLINED_FUNCTION_93_7()
{
  v0[19] = v3;
  v0[20] = v1;
  v0[21] = v0[3];
  v0[22] = v2;
}

uint64_t OUTLINED_FUNCTION_96_5()
{
  v9 = *(v0 + 12);
  *(v0 + 248) = *(v0 + 16);
  *(v0 + 249) = v9;
  *(v0 + 250) = *(v0 + 56);
  *(v0 + 256) = v4;
  *(v0 + 264) = v5;
  *(v0 + 272) = *(v0 + 72);
  *(v0 + 280) = v6;
  v10 = *(v0 + 96);
  *(v0 + 288) = *(v0 + 104);
  *(v0 + 296) = v10;
  *(v0 + 304) = v8;
  *(v0 + 312) = v7;
  *(v0 + 320) = *(v0 + 88);
  *(v0 + 328) = v2;
  *(v0 + 336) = *(v0 + 84);
  *(v0 + 337) = *(v0 + 116);
  *(v0 + 338) = *(v0 + 60);
  *(v0 + 339) = v3;
  *(v0 + 340) = v1;
  *(v0 + 341) = *(v0 + 52);
  return v0 + 248;
}

uint64_t OUTLINED_FUNCTION_97_4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v10 - 88) = a1;

  return sub_26890C900(v9 + 16, va);
}

unint64_t OUTLINED_FUNCTION_98_3(char a1)
{
  *(v1 + 60) = a1 & 1;
  *(v1 + 327) = 3;

  return sub_268A356BC();
}

uint64_t OUTLINED_FUNCTION_99_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_113_2()
{
  *(v1 - 102) = *(v0 + 140);
  *(v1 - 101) = *(v0 + 8);
  return v1 - 192;
}

uint64_t OUTLINED_FUNCTION_119_1@<X0>(char a1@<W8>)
{
  *(v1 + 234) = *(v1 + 140);
  *(v1 + 235) = a1;
  return v1 + 144;
}

id OUTLINED_FUNCTION_134_1(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return [v11 a2];
}

uint64_t OUTLINED_FUNCTION_138_1(void *a1)
{
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *(v3 - 192) = v1;
  *(v3 - 191) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_145_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_26890C900(v1 + 16, v2 - 136);
}

void *OUTLINED_FUNCTION_150_0()
{

  return memcpy((v0 - 240), (v0 - 152), 0x51uLL);
}

unint64_t OUTLINED_FUNCTION_151_1()
{
  *(v1 - 280) = *(v0 + 96);
  *(v1 - 66) = 7;

  return sub_268AC2078();
}

void OUTLINED_FUNCTION_153_1()
{
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  *(v0 + 248) = *(v9 - 72);
  *(v0 + 256) = v11;
  *(v0 + 264) = v5;
  *(v0 + 272) = v10;
  *(v0 + 280) = v6;
  *(v0 + 288) = v3;
  *(v0 + 296) = v8;
  *(v0 + 304) = v7;
  *(v0 + 312) = v1;
  *(v0 + 320) = v2;
  *(v0 + 328) = v4;
}

void *OUTLINED_FUNCTION_158_1()
{

  return sub_268B38364();
}

uint64_t OUTLINED_FUNCTION_166_0(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  *(v6 - 96) = v5;
  *(v6 - 100) = a3;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

unint64_t OUTLINED_FUNCTION_168_1(int a1)
{
  *(v1 + 4) = a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v2;
  *(v1 + 351) = 7;

  return sub_268AC2D44();
}

uint64_t OUTLINED_FUNCTION_172_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return sub_268B344D4();
}

unint64_t OUTLINED_FUNCTION_177_0(int a1)
{
  *(v1 + 96) = a1;
  *(v1 + 100) = v2;
  *(v3 - 177) = 3;

  return sub_268A356BC();
}

double OUTLINED_FUNCTION_182_1(uint64_t a1)
{
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

double OUTLINED_FUNCTION_183_1@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_184_1()
{
  *(v0 - 82) = 1;

  return sub_268B38344();
}

uint64_t OUTLINED_FUNCTION_185_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_188_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_268B380E4();
}

void *OUTLINED_FUNCTION_204_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_268B380E4();
}

void *OUTLINED_FUNCTION_206_1()
{

  return memcpy((v1 - 152), v0, 0x51uLL);
}

void *OUTLINED_FUNCTION_207_1()
{
  v2 = *(v0 + 48);

  return memcpy(v2, (v0 + 136), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_208_1()
{

  return sub_268B34514();
}

id OUTLINED_FUNCTION_224_1(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return [v10 a2];
}

id OUTLINED_FUNCTION_225_0(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return [v10 a2];
}

uint64_t OUTLINED_FUNCTION_226_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_268B344D4();
}

id sub_268AC76C4(_BYTE *a1)
{
  sub_268AC778C(a1);
  sub_268AC7AC8(a1, v1);
  sub_268AC7E90(a1);
  if (*a1 - 4 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_268B4FCE8[(*a1 - 4)];
  }

  [v1 setDirection_];
  v4 = type metadata accessor for MediaPlayerIntent(0);
  v5 = 0;
  v6 = 0;
  v7 = a1[*(v4 + 48)];
  if (v7 != 26)
  {
    v5 = sub_268942D54(v7);
  }

  v8 = sub_268A7528C(v5, v6);

  return [v1 setMediaType_];
}

uint64_t sub_268AC778C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MediaPlayerIntent(0);
  v22 = sub_2689A9870(&qword_2802A56B0, &unk_268B3E7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37F04();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "Found home automation nodes, attempting to map them to SiriKit intent", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_268B3BBA0;
    v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v12);
    v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    *(v11 + 32) = sub_268A91478(v14);
    v16 = off_287959F78;
    v17 = type metadata accessor for SkipContentIntent();
    v16(v11, v17, &off_287959F58);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t sub_268AC7AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = var50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaPlayerIntent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v9 + 100)];
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v15 = qword_2802A4F30;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v16, v4);
    v17 = sub_268B37A34();
    v18 = sub_268B37F04();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v19, 2u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v20 = sub_268B18100(a2);
    if (v20)
    {
      v21 = v20;
      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26D625BD0](0, v21);
        }

        else
        {
          v22 = *(v21 + 32);
        }

        v23 = v22;

        v24 = sub_268B37BC4();

        [v23 setRouteId_];

        sub_2688C063C();
        v25 = sub_268B38054();
        [v23 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v33) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v33, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v27 = v26;
    sub_2688C063C();
    v28 = sub_268B38054();
    [v27 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    *(v29 + 32) = v27;
    v30 = off_287959F78;
    v31 = type metadata accessor for SkipContentIntent();
    v25 = v27;
    v30(v29, v31, &off_287959F58);
LABEL_13:
  }

  return sub_2688C2F6C(v11);
}

uint64_t sub_268AC7E90(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  v9 = sub_268B37854();
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v22);
      sub_26890C900(v22, v21);
      sub_268AC88F0(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v23;
    v13 = off_28795BB58;
    v14 = type metadata accessor for SkipContentIntent();
    v13(v12, v14, &off_28795BB48);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_2688C2F6C(v8);
}

uint64_t DeviceQuery.deviceType.getter()
{
  sub_2688EF000(v0, &selRef_deviceTypeString);
  if (v1)
  {
    sub_268B37004();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  sub_268B37034();
  v3 = OUTLINED_FUNCTION_39_9();

  return __swift_storeEnumTagSinglePayload(v3, v2, 1, v4);
}

uint64_t DeviceQuery.deviceType.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_33_17(v6, v11);
  v7 = sub_268B37034();
  OUTLINED_FUNCTION_135(v1, 1, v7);
  if (v8)
  {
    sub_2688C058C(v1, &qword_2802A58F0, &unk_268B3BEC0);
    v1 = 0;
  }

  else
  {
    sub_268B37014();
    OUTLINED_FUNCTION_70();
    (*(v9 + 8))(v1, v7);
    OUTLINED_FUNCTION_70_1();
    sub_268B37BC4();
    OUTLINED_FUNCTION_226();
  }

  [v2 setDeviceTypeString_];

  return sub_2688C058C(a1, &qword_2802A58F0, &unk_268B3BEC0);
}

void sub_268AC8384(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = &v59 - v4;
  v6 = sub_268B35894();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v68 = v10;
  OUTLINED_FUNCTION_9();
  sub_268B34674();
  OUTLINED_FUNCTION_1();
  v66 = v12;
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  sub_268AC964C();
  v26 = v25;
  v27 = MEMORY[0x26D6237C0]();
  if (v27)
  {
    v63 = v27;
    v65 = v8;
    sub_268B35BD4();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    v64 = v26;
    v32 = MEMORY[0x26D623510](v26, v24);
    sub_2688C058C(v24, &unk_2802A62D0, &qword_268B3EDD0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v33 = __swift_project_value_buffer(v15, qword_2802CDA10);
    (*(v17 + 16))(v20, v33, v15);

    v34 = sub_268B37A34();
    v35 = sub_268B37ED4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v6;
      v37 = v36;
      v38 = swift_slowAlloc();
      v61 = v5;
      v39 = v38;
      v69 = v32;
      v70 = v38;
      *v37 = 136315138;
      sub_268B36624();
      v62 = a1;
      sub_268ACBB20(&qword_2802A6830, MEMORY[0x277D5F428], MEMORY[0x277D5F430]);
      v59 = v32;
      v40 = sub_268B38404();
      v42 = sub_26892CDB8(v40, v41, &v70);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2688BB000, v34, v35, "DeviceQuery#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x26D6266E0](v39, -1, -1);
      v43 = v37;
      v6 = v60;
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    (*(v17 + 8))(v20, v15);
    sub_268B34664();
    sub_268B34634();
    (*(v66 + 8))(v14, v67);
    v49 = v65;
    v50 = v68;
    (*(v65 + 104))(v68, *MEMORY[0x277D5F638], v6);
    sub_268B35884();
    (*(v49 + 8))(v50, v6);
    sub_268B37A74();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    sub_268B37A84();

    sub_268B37A94();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    sub_268B37A94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AC88F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = sub_268AC915C();
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v18;
  v21 = v19;
  v22 = sub_268B37614();
  if (v23)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_36_12(v22, sel_setRoomName_);

  OUTLINED_FUNCTION_6_40();
  v24 = sub_268B37624();
  if (v25)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_36_12(v24, sel_setZoneName_);

  OUTLINED_FUNCTION_6_40();
  v26 = sub_268B375F4();
  if (v27)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_36_12(v26, sel_setAccessoryName_);

  OUTLINED_FUNCTION_6_40();
  v28 = sub_268B375D4();
  if (v29)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_36_12(v28, sel_setServiceName_);

  OUTLINED_FUNCTION_6_40();
  v30 = sub_268B375E4();
  if (v31)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_36_12(v30, sel_setServiceGroup_);

  OUTLINED_FUNCTION_6_40();
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_36_12(v32, sel_setFromEntity_);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_186();
  sub_268B37604();
  v33 = sub_268B37464();
  OUTLINED_FUNCTION_135(v17, 1, v33);
  if (v34)
  {
    v37 = sub_2688C058C(v17, &qword_2802A5BA8, &qword_268B3C690);
    v36 = 0;
  }

  else
  {
    sub_268B37454();
    OUTLINED_FUNCTION_70();
    (*(v35 + 8))(v17, v33);
    v36 = sub_268B37BC4();
  }

  OUTLINED_FUNCTION_36_12(v37, sel_setDeviceQuantifierString_);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268B375C4();
  v38 = sub_268B37034();
  OUTLINED_FUNCTION_135(v13, 1, v38);
  if (v34)
  {
    v41 = sub_2688C058C(v13, &qword_2802A58F0, &unk_268B3BEC0);
    v39 = 0;
  }

  else
  {
    v39 = sub_268B37014();
    OUTLINED_FUNCTION_70();
    (*(v40 + 8))(v13, v38);
    sub_268B37BC4();
    OUTLINED_FUNCTION_186();
  }

  OUTLINED_FUNCTION_36_12(v41, sel_setDeviceTypeString_);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_226();
  sub_268B37634();
  v42 = sub_268B378F4();
  OUTLINED_FUNCTION_135(v9, 1, v42);
  if (v34)
  {
    v46 = sub_2688C058C(v9, &qword_2802A5908, &qword_268B3D920);
    v45 = 0;
  }

  else
  {
    sub_268B378E4();
    OUTLINED_FUNCTION_70();
    v43 = OUTLINED_FUNCTION_70_1();
    v44(v43);
    v45 = sub_268B37BC4();
  }

  OUTLINED_FUNCTION_36_12(v46, sel_setPlaceHintString_);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_70_1();
  sub_268B37644();
  v47 = sub_268B37924();
  OUTLINED_FUNCTION_135(v5, 1, v47);
  if (v34)
  {
    v50 = sub_2688C058C(v5, &qword_2802A5CA8, &unk_268B3CE30);
    v48 = 0;
  }

  else
  {
    v48 = sub_268B37914();
    OUTLINED_FUNCTION_70();
    (*(v49 + 8))(v5, v47);
    sub_268B37BC4();
    OUTLINED_FUNCTION_226();
  }

  OUTLINED_FUNCTION_36_12(v50, sel_setReferenceString_);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  OUTLINED_FUNCTION_23();
}

uint64_t DeviceQuery.hasReferenceOnly.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  DeviceQuery.reference.getter();
  v6 = sub_268B37924();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_2688C058C(v5, &qword_2802A5CA8, &unk_268B3CE30);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  sub_2688EF000(v1, &selRef_roomName);
  if (!v8)
  {
    sub_2688EF000(v1, &selRef_zoneName);
    if (!v9)
    {
      sub_2688EF000(v1, &selRef_accessoryName);
      if (!v10)
      {
        sub_2688EF000(v1, &selRef_serviceName);
        if (!v11)
        {
          sub_2688EF000(v1, &selRef_serviceGroup);
          if (!v12)
          {
            v13 = [v1 fromEntity];
            sub_2688C063C();
            v14 = sub_268B38054();
            v15 = v14;
            if (v13)
            {
              v16 = sub_268B38074();

              if (v16)
              {
                return 0;
              }
            }

            else
            {
            }

            sub_2688EF000(v1, &selRef_deviceQuantifierString);
            if (!v17)
            {
              sub_2688EF000(v1, &selRef_deviceTypeString);
              if (!v18)
              {
                sub_2688EF000(v1, &selRef_placeHintString);
                if (!v19)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_268AC90C0(SEL *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v5 = sub_2688EF000(v3, a1);
  if (v6)
  {

    return a2(v5);
  }

  else
  {
    a3(0);
    OUTLINED_FUNCTION_39_9();
    OUTLINED_FUNCTION_96();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

id sub_268AC915C()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_268B37BC4();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  return v3;
}

uint64_t DeviceQuery.isFromEntity.getter()
{
  v1 = [v0 fromEntity];
  sub_2688C063C();
  v2 = sub_268B38054();
  if (v1)
  {
    v3 = sub_268B38074();

    v2 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t DeviceQuery.deviceQuantifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_33_17(v6, v11);
  v7 = sub_268B37464();
  OUTLINED_FUNCTION_135(v1, 1, v7);
  if (v8)
  {
    sub_2688C058C(v1, &qword_2802A5BA8, &qword_268B3C690);
    v1 = 0;
  }

  else
  {
    sub_268B37454();
    OUTLINED_FUNCTION_70();
    (*(v9 + 8))(v1, v7);
    OUTLINED_FUNCTION_70_1();
    sub_268B37BC4();
    OUTLINED_FUNCTION_226();
  }

  [v2 setDeviceQuantifierString_];

  return sub_2688C058C(a1, &qword_2802A5BA8, &qword_268B3C690);
}

void (*DeviceQuery.deviceQuantifier.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  DeviceQuery.deviceQuantifier.getter();
  return sub_268AC9408;
}

uint64_t sub_268AC9430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = OUTLINED_FUNCTION_70_1();
  sub_2688F1FA4(v14, v15, a5, a6);
  return a7(v13);
}

void (*DeviceQuery.deviceType.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  DeviceQuery.deviceType.getter();
  return sub_268AC9568;
}

void sub_268AC9590(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a2)
  {
    OUTLINED_FUNCTION_38_7(a1, a2, a3, a4, a5);
    a3(v8);
    sub_2688C058C(v9, v6, v5);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v9);

  free(v8);
}

void sub_268AC964C()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v323 = v1;
  v324 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2();
  v322 = v2;
  OUTLINED_FUNCTION_9();
  v319 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v318 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v6);
  v328 = sub_268B37034();
  OUTLINED_FUNCTION_1();
  v339 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v9);
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6128, &qword_268B3E808);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v326 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_78();
  v335 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v321 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v333 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_78();
  v325 = v27;
  OUTLINED_FUNCTION_9();
  v290 = sub_268B35F54();
  OUTLINED_FUNCTION_1();
  v289 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v30);
  v294 = sub_268B37464();
  OUTLINED_FUNCTION_1();
  v299 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v33);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_79(&v285[-v35]);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v40);
  v338 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v332 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2();
  v337 = v43;
  OUTLINED_FUNCTION_9();
  v316 = sub_268B356F4();
  OUTLINED_FUNCTION_1();
  v315 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v46);
  v47 = sub_268B378F4();
  OUTLINED_FUNCTION_1();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v56);
  v58 = &v285[-v57];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v60 = OUTLINED_FUNCTION_22(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v285[-v69];
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_18();
  v320 = v71;
  OUTLINED_FUNCTION_8();
  v73 = MEMORY[0x28223BE20](v72);
  v75 = &v285[-v74];
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v285[-v77];
  MEMORY[0x28223BE20](v76);
  v80 = &v285[-v79];
  sub_268B35754();
  swift_allocObject();
  v334 = sub_268B35744();
  DeviceQuery.placeHint.getter();
  v81 = *MEMORY[0x277D5F9A8];
  v327 = v49;
  v329 = *(v49 + 104);
  v330 = v49 + 104;
  v329(v78, v81, v47);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v47);
  v331 = v52;
  v85 = *(v52 + 48);
  sub_2688F1FA4(v80, v58, &qword_2802A5908, &qword_268B3D920);
  sub_2688F1FA4(v78, v58 + v85, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v58);
  if (v88)
  {
    OUTLINED_FUNCTION_12_2(v78);
    OUTLINED_FUNCTION_12_2(v80);
    OUTLINED_FUNCTION_11_21(v58 + v85);
    v86 = v333;
    if (v88)
    {
      v87 = v335;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  sub_2688F1FA4(v58, v75, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v58 + v85);
  if (v88)
  {
    sub_2688C058C(v78, &qword_2802A5908, &qword_268B3D920);
    sub_2688C058C(v80, &qword_2802A5908, &qword_268B3D920);
    v89 = OUTLINED_FUNCTION_106_2();
    v90(v89);
    v86 = v333;
LABEL_9:
    sub_2688C058C(v58, &qword_2802A5900, &unk_268B3BED0);
    v87 = v335;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_18();
  v107 = v310;
  v108(v310, v58 + v85, v47);
  OUTLINED_FUNCTION_0_51();
  sub_268ACBB20(v109, v110, MEMORY[0x277D5F9E0]);
  v111 = OUTLINED_FUNCTION_39_9();
  v286 = OUTLINED_FUNCTION_59_4(v111, v107, v112, v113);
  v114 = *(v52 + 8);
  v114(v107, v47);
  sub_2688C058C(v78, &qword_2802A5908, &qword_268B3D920);
  sub_2688C058C(v80, &qword_2802A5908, &qword_268B3D920);
  v115 = OUTLINED_FUNCTION_106_2();
  (v114)(v115);
  sub_2688C058C(v58, &qword_2802A5908, &qword_268B3D920);
  v87 = v335;
  v86 = v333;
  if (v286)
  {
    goto LABEL_37;
  }

LABEL_10:
  v91 = v320;
  DeviceQuery.placeHint.getter();
  v329(v70, *MEMORY[0x277D5F9B8], v47);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_61_6(v92, v93, v94);
  v95 = v314;
  OUTLINED_FUNCTION_37_16(v91, v314);
  OUTLINED_FUNCTION_37_16(v70, v58 + v95);
  OUTLINED_FUNCTION_11_21(v95);
  if (v88)
  {
    OUTLINED_FUNCTION_12_2(v70);
    OUTLINED_FUNCTION_12_2(v91);
    OUTLINED_FUNCTION_11_21(v58 + v95);
    if (!v88)
    {
      goto LABEL_19;
    }

    v58 = v95;
LABEL_15:
    sub_2688C058C(v58, &qword_2802A5908, &qword_268B3D920);
LABEL_37:
    v136 = OUTLINED_FUNCTION_19_18();
    v137(v136);
    sub_268B35714();
    v138 = (v58 + 1);
    v139 = OUTLINED_FUNCTION_153_0();
    v140(v139);
LABEL_38:
    v106 = v328;
LABEL_39:
    v141 = v325;
    goto LABEL_40;
  }

  v96 = v301;
  sub_2688F1FA4(v95, v301, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v58 + v95);
  if (v97)
  {
    v58 = v96;
    OUTLINED_FUNCTION_12_2(v70);
    OUTLINED_FUNCTION_12_2(v320);
    v98 = OUTLINED_FUNCTION_40_11();
    v99(v98);
LABEL_19:
    sub_2688C058C(v95, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_24_18();
  v127 = OUTLINED_FUNCTION_21_18();
  v128(v127);
  OUTLINED_FUNCTION_0_51();
  v131 = sub_268ACBB20(v129, v130, MEMORY[0x277D5F9E0]);
  v286 = OUTLINED_FUNCTION_59_4(v96, v58, v132, v131);
  v133 = *(v95 + 8);
  v134 = OUTLINED_FUNCTION_40_11();
  v133(v134);
  v58 = &qword_268B3D920;
  OUTLINED_FUNCTION_31_19(v70);
  OUTLINED_FUNCTION_31_19(v320);
  v135 = OUTLINED_FUNCTION_106_2();
  v133(v135);
  v86 = v333;
  OUTLINED_FUNCTION_31_19(v95);
  if (v286)
  {
    goto LABEL_37;
  }

LABEL_20:
  v100 = v312;
  DeviceQuery.placeHint.getter();
  v101 = v311;
  v329(v311, *MEMORY[0x277D5F9B0], v47);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_61_6(v102, v103, v104);
  v105 = v304;
  OUTLINED_FUNCTION_37_16(v100, v304);
  OUTLINED_FUNCTION_37_16(v101, v58 + v105);
  OUTLINED_FUNCTION_11_21(v105);
  if (v88)
  {
    OUTLINED_FUNCTION_12_2(v101);
    OUTLINED_FUNCTION_12_2(v100);
    OUTLINED_FUNCTION_11_21(v58 + v105);
    v87 = v335;
    if (v88)
    {
      sub_2688C058C(v105, &qword_2802A5908, &qword_268B3D920);
      v106 = v328;
      goto LABEL_95;
    }

    goto LABEL_30;
  }

  v116 = v295;
  sub_2688F1FA4(v105, v295, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_11_21(v58 + v105);
  if (v117)
  {
    v58 = v116;
    OUTLINED_FUNCTION_29_16(&v341);
    OUTLINED_FUNCTION_29_16(&v342);
    v118 = OUTLINED_FUNCTION_40_11();
    v119(v118);
    v87 = v335;
LABEL_30:
    sub_2688C058C(v105, &qword_2802A5900, &unk_268B3BED0);
    v106 = v328;
    v221 = v307;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_24_18();
  v211 = OUTLINED_FUNCTION_21_18();
  v212(v211);
  OUTLINED_FUNCTION_0_51();
  sub_268ACBB20(v213, v214, MEMORY[0x277D5F9E0]);
  v215 = OUTLINED_FUNCTION_39_9();
  LODWORD(v320) = OUTLINED_FUNCTION_59_4(v215, v58, v216, v217);
  v218 = *(v101 + 8);
  v219 = OUTLINED_FUNCTION_40_11();
  v218(v219);
  v58 = &qword_268B3D920;
  OUTLINED_FUNCTION_18_19(&v341);
  OUTLINED_FUNCTION_18_19(&v342);
  v220 = OUTLINED_FUNCTION_106_2();
  v218(v220);
  v221 = v307;
  v86 = v333;
  OUTLINED_FUNCTION_31_19(v105);
  v106 = v328;
  v87 = v335;
  if ((v320 & 1) == 0)
  {
LABEL_31:
    DeviceQuery.placeHint.getter();
    v120 = v303;
    v329(v303, *MEMORY[0x277D5F9C0], v47);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_61_6(v121, v122, v123);
    v124 = v221;
    v125 = v221;
    v126 = v308;
    OUTLINED_FUNCTION_37_16(v124, v308);
    sub_2688F1FA4(v120, v58 + v126, &qword_2802A5908, &qword_268B3D920);
    OUTLINED_FUNCTION_11_21(v126);
    if (v88)
    {
      OUTLINED_FUNCTION_12_2(v120);
      OUTLINED_FUNCTION_54_7(v125);
      OUTLINED_FUNCTION_11_21(&qword_2802A5908 + v58);
      v86 = v333;
      if (v88)
      {
        sub_2688C058C(&qword_2802A5908, &qword_2802A5908, &qword_268B3D920);
LABEL_122:
        v260 = OUTLINED_FUNCTION_19_18();
        v261(v260);
        sub_268B35714();
        v138 = (v58 + 1);
        v262 = OUTLINED_FUNCTION_153_0();
        v263(v262);
        goto LABEL_39;
      }
    }

    else
    {
      v200 = v292;
      sub_2688F1FA4(v126, v292, &qword_2802A5908, &qword_268B3D920);
      OUTLINED_FUNCTION_11_21(v58 + v126);
      if (!v201)
      {
        OUTLINED_FUNCTION_24_18();
        v252 = OUTLINED_FUNCTION_21_18();
        v253(v252);
        OUTLINED_FUNCTION_0_51();
        v256 = sub_268ACBB20(v254, v255, MEMORY[0x277D5F9E0]);
        LODWORD(v331) = OUTLINED_FUNCTION_59_4(v200, v58, v257, v256);
        v258 = *(v126 + 8);
        v259 = OUTLINED_FUNCTION_40_11();
        v258(v259);
        v58 = &qword_268B3D920;
        OUTLINED_FUNCTION_18_19(&v332);
        OUTLINED_FUNCTION_18_19(&v336);
        (v258)(v200, v47);
        OUTLINED_FUNCTION_31_19(v126);
        v86 = v333;
        if (v331)
        {
          goto LABEL_122;
        }

LABEL_89:
        v202 = v298;
        DeviceQuery.deviceQuantifier.getter();
        v203 = v297;
        v204 = v294;
        (*(v299 + 104))(v297, *MEMORY[0x277D5F868], v294);
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v205, v206, v207, v204);
        v138 = *(v293 + 48);
        v208 = v300;
        sub_2688F1FA4(v202, v300, &qword_2802A5BA8, &qword_268B3C690);
        sub_2688F1FA4(v203, v208 + v138, &qword_2802A5BA8, &qword_268B3C690);
        OUTLINED_FUNCTION_135(v208, 1, v204);
        if (v88)
        {
          OUTLINED_FUNCTION_12_2(v203);
          OUTLINED_FUNCTION_55_8(v202);
          OUTLINED_FUNCTION_135(&qword_2802A5BA8 + v138, 1, v204);
          v209 = v334;
          v87 = v335;
          v210 = v340;
          if (v88)
          {
            sub_2688C058C(&qword_2802A5BA8, &qword_2802A5BA8, &qword_268B3C690);
LABEL_124:
            sub_268B36364();
            swift_allocObject();
            sub_268B36354();
            v268 = v289;
            v269 = v288;
            v138 = v290;
            (*(v289 + 104))(v288, *MEMORY[0x277D5EA28], v290);
            sub_268B36344();
            (*(v268 + 8))(v269, v138);

            sub_268B35E84();

            goto LABEL_38;
          }
        }

        else
        {
          v244 = v291;
          sub_2688F1FA4(v208, v291, &qword_2802A5BA8, &qword_268B3C690);
          OUTLINED_FUNCTION_135(v208 + v138, 1, v204);
          if (!v245)
          {
            v264 = v299;
            v265 = (v208 + v138);
            v266 = v287;
            (*(v299 + 32))(v287, v265, v204);
            sub_268ACBB20(&qword_2802A5BB0, MEMORY[0x277D5F880], MEMORY[0x277D5F890]);
            LODWORD(v331) = sub_268B37BB4();
            v267 = *(v264 + 8);
            v267(v266, v204);
            v138 = &qword_268B3C690;
            OUTLINED_FUNCTION_18_19(&v326);
            OUTLINED_FUNCTION_18_19(&v327);
            v267(v244, v204);
            OUTLINED_FUNCTION_31_19(v208);
            v209 = v334;
            v87 = v335;
            v210 = v340;
            if (v331)
            {
              goto LABEL_124;
            }

LABEL_113:
            v246 = sub_2688EF000(v210, &selRef_zoneName);
            if (v247)
            {
              v331 = v246;
              sub_268B35724();
              v248 = sub_268B35E54();
              v249 = OUTLINED_FUNCTION_9_27(v248);
              if (v249)
              {
                v250 = v249;
              }

              else
              {
                v250 = MEMORY[0x277D84F90];
              }

              OUTLINED_FUNCTION_32_12();
              if (v209)
              {
                OUTLINED_FUNCTION_45_8();
              }

              else
              {
                v138 = v338;
                OUTLINED_FUNCTION_44_8();
              }

              sub_268B357F4();
              sub_268B357B4();

              v251 = OUTLINED_FUNCTION_25_18();
              (v210)(v251);
              if (v209)
              {
                MEMORY[0x26D625BD0](0, v250);
              }

              else
              {
                OUTLINED_FUNCTION_44_8();
              }

              v106 = v328;

              v275 = OUTLINED_FUNCTION_47_9();
              MEMORY[0x26D623200](v275);
            }

            else
            {
              v270 = sub_2688EF000(v210, &selRef_roomName);
              if (v271)
              {
                v331 = v270;
                sub_268B35724();
                v272 = sub_268B35E54();
                v273 = OUTLINED_FUNCTION_9_27(v272);
                if (v273)
                {
                  v250 = v273;
                }

                else
                {
                  v250 = MEMORY[0x277D84F90];
                }

                OUTLINED_FUNCTION_32_12();
                if (v209)
                {
                  OUTLINED_FUNCTION_45_8();
                }

                else
                {
                  v138 = v338;
                  OUTLINED_FUNCTION_44_8();
                }

                sub_268B357E4();
                sub_268B357B4();

                v274 = OUTLINED_FUNCTION_25_18();
                (v210)(v274);
                if (v209)
                {
                  MEMORY[0x26D625BD0](0, v250);
                }

                else
                {
                  OUTLINED_FUNCTION_44_8();
                }

                v106 = v328;

                v284 = OUTLINED_FUNCTION_47_9();
                MEMORY[0x26D6231F0](v284);
              }

              else
              {
                v276 = sub_2688EF000(v210, &selRef_accessoryName);
                v106 = v328;
                v141 = v325;
                if (!v277)
                {
                  goto LABEL_40;
                }

                v278 = v277;
                v279 = v276;
                sub_268B35724();
                v280 = sub_268B35E54();
                v281 = OUTLINED_FUNCTION_9_27(v280);
                if (v281)
                {
                  v282 = v281;
                }

                else
                {
                  v282 = MEMORY[0x277D84F90];
                }

                OUTLINED_FUNCTION_32_12();
                if (v209)
                {
                  OUTLINED_FUNCTION_45_8();
                }

                else
                {
                  v138 = v338;
                  OUTLINED_FUNCTION_44_8();
                }

                sub_268B35824();
                sub_268B357B4();

                v283 = OUTLINED_FUNCTION_25_18();
                (v210)(v283);
                if (v209)
                {
                  MEMORY[0x26D625BD0](0, v282);
                }

                else
                {
                  OUTLINED_FUNCTION_44_8();
                }

                v106 = v328;

                v250 = v337;
                MEMORY[0x26D623230](v279, v278);
              }
            }

            sub_268B357B4();

            (v210)(v250, v338);
            v86 = v333;
            goto LABEL_39;
          }

          v138 = v204;
          OUTLINED_FUNCTION_29_16(&v326);
          OUTLINED_FUNCTION_55_8(v298);
          (*(v299 + 8))(v244, v204);
          v209 = v334;
          v87 = v335;
          v210 = v340;
        }

        sub_2688C058C(&qword_2802A5BA8, &qword_2802A5BA0, &unk_268B41020);
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_29_16(&v332);
      OUTLINED_FUNCTION_54_7(v307);
      (*(v327 + 8))(v200, v47);
      v86 = v333;
    }

    sub_2688C058C(&qword_2802A5908, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_89;
  }

LABEL_95:
  sub_268B35724();
  v222 = sub_268B35E54();
  v223 = OUTLINED_FUNCTION_9_27(v222);
  if (v223)
  {
    v224 = v223;
  }

  else
  {
    v224 = MEMORY[0x277D84F90];
  }

  sub_2688EFD10();
  if ((v224 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D625BD0](0, v224);
  }

  else
  {
  }

  v138 = v332;
  v141 = v325;

  OUTLINED_FUNCTION_51_7();
  sub_268B35834();
  sub_268B357B4();

  (*(v138 + 8))(v224, v338);
LABEL_40:
  DeviceQuery.deviceType.getter();
  v142 = *MEMORY[0x277D5F720];
  v331 = *(v339 + 104);
  v331(v86, v142, v106);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_4(v143, v144, v145);
  OUTLINED_FUNCTION_37_16(v141, v87);
  OUTLINED_FUNCTION_37_16(v86, v87 + v138);
  OUTLINED_FUNCTION_8_32(v87);
  if (v88)
  {
    OUTLINED_FUNCTION_12_2(v86);
    OUTLINED_FUNCTION_12_2(v141);
    OUTLINED_FUNCTION_8_32(v87 + v138);
    if (v88)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  v146 = v309;
  sub_2688F1FA4(v87, v309, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v87 + v138);
  if (v147)
  {
    v138 = v146;
    OUTLINED_FUNCTION_12_2(v86);
    OUTLINED_FUNCTION_12_2(v141);
    (*(v339 + 8))(v146, v106);
LABEL_48:
    sub_2688C058C(v87, &qword_2802A6128, &qword_268B3E808);
    v173 = v317;
    goto LABEL_49;
  }

  v163 = OUTLINED_FUNCTION_20_20();
  v164(v163);
  OUTLINED_FUNCTION_5_28();
  sub_268ACBB20(v165, v166, MEMORY[0x277D5F758]);
  v167 = OUTLINED_FUNCTION_39_9();
  LODWORD(v330) = OUTLINED_FUNCTION_46_10(v167, v168, v169, v170);
  v171 = OUTLINED_FUNCTION_49_6();
  v87(v171);
  v138 = &unk_268B3BEC0;
  OUTLINED_FUNCTION_31_19(v86);
  v172 = v141;
  v173 = v317;
  OUTLINED_FUNCTION_31_19(v172);
  (v87)(v146, v106);
  OUTLINED_FUNCTION_31_19(v335);
  if (v330)
  {
    goto LABEL_70;
  }

LABEL_49:
  DeviceQuery.deviceType.getter();
  v148 = v321;
  v331(v321, *MEMORY[0x277D5F738], v106);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_4(v149, v150, v151);
  v152 = v326;
  sub_2688F1FA4(v173, v326, &qword_2802A58F0, &unk_268B3BEC0);
  sub_2688F1FA4(v148, v152 + v138, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v152);
  if (v88)
  {
    OUTLINED_FUNCTION_12_2(v148);
    OUTLINED_FUNCTION_56_7();
    OUTLINED_FUNCTION_8_32(v87 + v138);
    if (!v88)
    {
      goto LABEL_57;
    }

LABEL_53:
    sub_2688C058C(v87, &qword_2802A58F0, &unk_268B3BEC0);
LABEL_70:
    sub_268B371B4();
    sub_268B37174();
    v186 = OUTLINED_FUNCTION_153_0();
    sub_26892E340(v186, v187);
    v189 = v188;

    v190 = OUTLINED_FUNCTION_35_13();
    v191(v190);
    sub_268B35724();

    v192 = sub_268B35E54();
    v193 = OUTLINED_FUNCTION_9_27(v192);
    if (v193)
    {
      v161 = v193;
    }

    else
    {
      v161 = MEMORY[0x277D84F90];
    }

    v194 = sub_2688EFD0C();
    v195 = v194 - 1;
    if (__OFSUB__(v194, 1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_57_5();
      if (!v189)
      {

LABEL_76:
        v176 = v332;

        OUTLINED_FUNCTION_51_7();
        sub_268B35864();
LABEL_77:
        sub_268B357B4();

        (v176[1])(v161, v338);
        goto LABEL_78;
      }
    }

    MEMORY[0x26D625BD0](v195, v161);
    goto LABEL_76;
  }

  v153 = v302;
  sub_2688F1FA4(v152, v302, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v152 + v138);
  if (v154)
  {
    OUTLINED_FUNCTION_12_2(v321);
    OUTLINED_FUNCTION_56_7();
    (*(v339 + 8))(v153, v106);
LABEL_57:
    sub_2688C058C(v87, &qword_2802A6128, &qword_268B3E808);
    goto LABEL_58;
  }

  v177 = OUTLINED_FUNCTION_20_20();
  v178(v177);
  OUTLINED_FUNCTION_5_28();
  v181 = sub_268ACBB20(v179, v180, MEMORY[0x277D5F758]);
  v184 = OUTLINED_FUNCTION_46_10(v153, v182, v183, v181);
  v185 = OUTLINED_FUNCTION_49_6();
  v87(v185);
  v138 = &unk_268B3BEC0;
  OUTLINED_FUNCTION_31_19(v321);
  OUTLINED_FUNCTION_31_19(v173);
  (v87)(v153, v106);
  OUTLINED_FUNCTION_31_19(v152);
  if (v184)
  {
    goto LABEL_70;
  }

LABEL_58:
  v155 = v313;
  DeviceQuery.deviceType.getter();
  v156 = v305;
  v331(v305, *MEMORY[0x277D5F740], v106);
  v157 = v155;
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_60_4(v158, v159, v160);
  v161 = &qword_2802A58F0;
  v162 = v306;
  OUTLINED_FUNCTION_37_16(v157, v306);
  OUTLINED_FUNCTION_37_16(v156, v162 + v138);
  OUTLINED_FUNCTION_8_32(v162);
  if (v88)
  {
    OUTLINED_FUNCTION_12_2(v156);
    OUTLINED_FUNCTION_12_2(v157);
    OUTLINED_FUNCTION_8_32(v162 + v138);
    if (v88)
    {
      sub_2688C058C(v162, &qword_2802A58F0, &unk_268B3BEC0);
LABEL_102:
      sub_268B371B4();
      sub_268B371D4();
      v234 = OUTLINED_FUNCTION_153_0();
      sub_26892E340(v234, v235);
      v237 = v236;

      v238 = OUTLINED_FUNCTION_35_13();
      v239(v238);
      sub_268B35724();

      v240 = sub_268B35E54();
      v241 = OUTLINED_FUNCTION_9_27(v240);
      if (v241)
      {
        v161 = v241;
      }

      else
      {
        v161 = MEMORY[0x277D84F90];
      }

      v242 = sub_2688EFD0C();
      v243 = v242 - 1;
      if (__OFSUB__(v242, 1))
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_57_5();
        if (!v237)
        {

LABEL_108:
          v176 = v332;

          OUTLINED_FUNCTION_51_7();
          sub_268B357D4();
          goto LABEL_77;
        }
      }

      MEMORY[0x26D625BD0](v243, v161);
      goto LABEL_108;
    }

LABEL_68:
    sub_2688C058C(v162, &qword_2802A6128, &qword_268B3E808);
    v176 = v332;
    goto LABEL_78;
  }

  v174 = v296;
  sub_2688F1FA4(v162, v296, &qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_8_32(v162 + v138);
  if (v175)
  {
    OUTLINED_FUNCTION_12_2(v156);
    OUTLINED_FUNCTION_29_16(&v343);
    (*(v339 + 8))(v174, v106);
    goto LABEL_68;
  }

  v225 = v339;
  v226 = OUTLINED_FUNCTION_20_20();
  v227(v226);
  OUTLINED_FUNCTION_5_28();
  v230 = sub_268ACBB20(v228, v229, MEMORY[0x277D5F758]);
  v161 = OUTLINED_FUNCTION_46_10(v174, v231, v232, v230);
  v233 = *(v225 + 8);
  v233(v138, v106);
  OUTLINED_FUNCTION_31_19(v156);
  OUTLINED_FUNCTION_18_19(&v343);
  v233(v174, v106);
  OUTLINED_FUNCTION_31_19(v162);
  v176 = v332;
  if (v161)
  {
    goto LABEL_102;
  }

LABEL_78:
  if (DeviceQuery.isFromEntity.getter())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v196 = v324;
    v197 = __swift_project_value_buffer(v324, qword_2802CDA10);
    (*(v323 + 16))(v322, v197, v196);
    v161 = sub_268B37A34();
    v198 = sub_268B37EE4();
    if (os_log_type_enabled(v161, v198))
    {
      v199 = swift_slowAlloc();
      *v199 = 0;
      _os_log_impl(&dword_2688BB000, v161, v198, "DeviceQuery#toUsoBuilder From entity found, but donation blocked by rdar://88971898", v199, 2u);
      MEMORY[0x26D6266E0](v199, -1, -1);
    }

    (*(v323 + 8))(v322, v324);
  }

  OUTLINED_FUNCTION_51_7();
  sub_268B35854();
  sub_268B357B4();

  (v176[1])(v161, v338);
  OUTLINED_FUNCTION_23();
}

void (*sub_268ACB7B4(void **a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690) - 8) + 64);
  *a1 = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  DeviceQuery.deviceQuantifier.getter();
  return sub_268ACB850;
}

void (*sub_268ACB8C0(void **a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0) - 8) + 64);
  *a1 = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  DeviceQuery.deviceType.getter();
  return sub_268ACB95C;
}

void sub_268ACB984(void **a1, uint64_t a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v8 = a1[1];
  v9 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_38_7(a1, a2, a3, a4, a5);
    a3(v9);
    sub_2688C058C(v8, v6, v5);
  }

  else
  {
    a3(a1[1]);
  }

  free(v8);

  free(v9);
}

uint64_t sub_268ACBB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_6_40()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_27(uint64_t a1)
{

  return sub_268B35B54();
}

uint64_t OUTLINED_FUNCTION_18_19@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_2688C058C(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_29_16@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_2688C058C(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_31_19(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_2688EFD10();
}

uint64_t OUTLINED_FUNCTION_33_17@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2688F1FA4(v2, &a2 - a1, v3, v4);
}

id OUTLINED_FUNCTION_36_12(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_37_16(uint64_t a1, uint64_t a2)
{

  return sub_2688F1FA4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return sub_2688F1FA4(v6, v5, a4, a5);
}

uint64_t OUTLINED_FUNCTION_44_8()
{
}

void OUTLINED_FUNCTION_45_8()
{

  JUMPOUT(0x26D625BD0);
}

uint64_t OUTLINED_FUNCTION_46_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268B37BB4();
}

uint64_t OUTLINED_FUNCTION_54_7(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_55_8(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_56_7()
{

  return sub_2688C058C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return sub_2688EFD10();
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268B37BB4();
}

Swift::String_optional __swiftcall UsoTask_seekForward_common_MediaItem.verb()()
{
  v0 = 0x77726F4670696B73;
  v1 = 0xEB00000000647261;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268ACBFB4(uint64_t a1)
{
  result = sub_268ACC060(&qword_2802A8858, &protocol conformance descriptor for UsoTask_seekForward_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268ACC060(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36454();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268ACC0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268ACC13C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268ACC190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268ACC1E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268ACC238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268ACC28C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268ACC2E0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268ACC334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268ACC398(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268ACC3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268ACC450(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268ACC4B4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268ACC518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

unint64_t sub_268ACC57C()
{
  if ([v0 volumeSettingType] == 2 && (v1 = objc_msgSend(v0, sel_currentVolumeOutput)) != 0 && (v2 = v1, objc_msgSend(v1, sel_floatValue), v4 = v3, v2, (v5 = objc_msgSend(v0, sel_resolvedVolumeOutput)) != 0))
  {
    v6 = v5;
    [v5 floatValue];
    v8 = v7;

    v9 = [v0 volumeSettingState];
    v10 = 0;
    v11 = -v8;
    if (v9 == 5)
    {
      v11 = v8;
    }

    v12 = v4 + v11;
  }

  else
  {
    v13 = [v0 resolvedVolumeOutput];
    if (v13)
    {
      v14 = v13;
      [v13 floatValue];
      v16 = v15;

      v10 = 0;
      v12 = v16;
    }

    else
    {
      v12 = 0.0;
      v10 = 1;
    }
  }

  return LODWORD(v12) | (v10 << 32);
}

uint64_t sub_268ACC6A8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v64 = a5;
  v65 = a4;
  v66 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v62);
  v63 = (&v59 - v5);
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v61 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    __swift_project_value_buffer(v6, qword_2802CDA10);
    v17 = *(v7 + 16);
    OUTLINED_FUNCTION_30_8();
    v17();
    v18 = sub_268B37A34();
    v19 = sub_268B37ED4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2688BB000, v18, v19, "SetShuffleStateConfirmIntentStrategy.makeDialogForConfirmation()", v20, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = *(v7 + 8);
    v7 += 8;
    v21 = v22;
    (v22)(v16, v6);
    v23 = v66;
    v24 = sub_268B18100(v66);
    if (!v24)
    {
      break;
    }

    v25 = v24;
    v26 = sub_2688EFD0C();
    if (!v26)
    {

      break;
    }

    v27 = v26;
    v28 = [v23 shuffleState];
    if (v28 == 2)
    {
      LODWORD(v66) = 0;
      v29 = v61;
    }

    else
    {
      v29 = v61;
      if (v28 != 1)
      {
        v54 = v21;

        v55 = v60;
        OUTLINED_FUNCTION_30_8();
        v17();
        v56 = sub_268B37A34();
        v57 = sub_268B37EE4();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_2688BB000, v56, v57, "Unexpected shuffle state found", v58, 2u);
          OUTLINED_FUNCTION_12();
        }

        v54(v55, v6);
        sub_2688C2ECC();
        v33 = swift_allocError();
        v35 = 84;
        goto LABEL_13;
      }

      LODWORD(v66) = 1;
    }

    OUTLINED_FUNCTION_30_8();
    v17();

    v38 = sub_268B37A34();
    v16 = sub_268B37EC4();

    if (os_log_type_enabled(v38, v16))
    {
      v39 = swift_slowAlloc();
      v63 = v21;
      v40 = v39;
      v41 = swift_slowAlloc();
      v67 = v41;
      *v40 = 136315138;
      v42 = type metadata accessor for Device();
      v43 = MEMORY[0x26D6256F0](v25, v42);
      v7 = sub_26892CDB8(v43, v44, &v67);

      *(v40 + 4) = v7;
      _os_log_impl(&dword_2688BB000, v38, v16, "Confirming devices: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v63(v61, v6);
    }

    else
    {

      (v21)(v29, v6);
    }

    v10 = 0;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27 == v10)
      {

        sub_268AB9068(v45, v66, v65, v64);
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x26D625BD0](v10, v25);
      }

      else
      {
        if (v10 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v46 = *(v25 + 8 * v10 + 32);
      }

      v6 = v46;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v47 = sub_268988580(v46);
      if (v48)
      {
        v16 = v47;
        v50 = v48;

        goto LABEL_28;
      }

      v16 = sub_268988568(v6);
      v50 = v49;

      ++v10;
      if (v50)
      {
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v45 = v52;
        }

        v6 = *(v45 + 16);
        if (v6 >= *(v45 + 24) >> 1)
        {
          sub_2689876A4();
          v45 = v53;
        }

        *(v45 + 16) = v6 + 1;
        v51 = v45 + 16 * v6;
        *(v51 + 32) = v16;
        *(v51 + 40) = v50;
        v10 = v7;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  OUTLINED_FUNCTION_30_8();
  v17();
  v30 = sub_268B37A34();
  v31 = sub_268B37EE4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "Could not find any devices in the intent for confirmation", v32, 2u);
    OUTLINED_FUNCTION_12();
  }

  (v21)(v10, v6);
  sub_2688C2ECC();
  v33 = swift_allocError();
  v35 = 83;
LABEL_13:
  *v34 = v35;
  v36 = v63;
  *v63 = v33;
  swift_storeEnumTagMultiPayload();
  v65(v36);
  return sub_268919854(v36);
}

void sub_268ACCDC0()
{
  type metadata accessor for SetShuffleStateConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268ACCE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268ACCF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetShuffleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268ACCF9C(uint64_t a1)
{
  result = sub_268ACCFC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268ACCFC4()
{
  result = qword_2802A8870;
  if (!qword_2802A8870)
  {
    type metadata accessor for SetShuffleStateConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8870);
  }

  return result;
}

BOOL sub_268ACD018()
{
  OUTLINED_FUNCTION_7_33();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

BOOL sub_268ACD0C0()
{
  OUTLINED_FUNCTION_7_33();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v10 = *v4;

    v7 = v1(&v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;

    ++v4;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_268ACD16C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_268ACD25C()
{
  OUTLINED_FUNCTION_7_33();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v11 = *v4;
    v7 = v11;
    v8 = v1(&v11);
    if (v0)
    {

      return v5 != 0;
    }

    v9 = v8;

    ++v4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_268ACD2FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14[-v2];
  v17 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B48200;
  inited[3] = xmmword_268B48210;
  v16 = UsoTask_play_uso_NoEntity.verb()();
  v15 = &v16;
  v5 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v5 && (v16.value._countAndFlagsBits = v0, sub_268B35E64(), OUTLINED_FUNCTION_2_35(), sub_268ACE950(v6, v7, &protocol conformance descriptor for UsoTask_play_uso_NoEntity), sub_268B37364(), v8 = sub_268B37924(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v8), sub_268ACE800(v3), EnumTagSinglePayload != 1))
  {
    OUTLINED_FUNCTION_2_35();
    sub_268ACE950(v11, v12, &protocol conformance descriptor for UsoTask_play_uso_NoEntity);
    v10 = sub_268B37834();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_268ACD4D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  v14 = v0;
  v4 = UsoTask_play_common_MediaItem.hasMediaItemsToPlay()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B48200;
  inited[3] = xmmword_268B48210;
  v13 = UsoTask_play_common_MediaItem.verb()();
  v12 = &v13;
  v6 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v6 && (v13.value._countAndFlagsBits = v0, sub_268B36024(), sub_268ACE950(&qword_2802A8878, MEMORY[0x277D5ECC8], &protocol conformance descriptor for UsoTask_play_common_MediaItem), sub_268B37364(), v7 = sub_268B37924(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v7), sub_268ACE800(v3), EnumTagSinglePayload != 1))
  {
    sub_268ACE950(&qword_2802A8880, MEMORY[0x277D5ECC8], &protocol conformance descriptor for UsoTask_play_common_MediaItem);
    v9 = sub_268B37834() & !v4;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall UsoTask_play_common_MediaItem.hasMediaItemsToPlay()()
{
  sub_268B36314();
  if (v6 && (sub_268B35EF4(), v1 = v0, , v1) || (sub_268B36314(), v6) && (v2 = sub_268B35EB4(), , v2))
  {

    return 1;
  }

  sub_268B36314();
  if (v6 && (v3 = sub_268B35B84(), , v3) || (sub_268B36314(), v6) && (v4 = sub_268B35ED4(), , v4))
  {

    return 1;
  }

  return 0;
}

Swift::String_optional __swiftcall UsoTask_play_common_MediaItem.verb()()
{
  v1 = 2036427888;
  if (UsoTask_play_common_MediaItem.referencedSetting()(v0) && (sub_268962A68(), v3 = v2, v4 = v2, , v4 != 24))
  {
    v1 = sub_26893E3F8(v3);
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v1;
  result.value._object = v5;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t UsoTask_play_common_MediaItem.referencedSetting()(uint64_t a1)
{
  result = sub_268B36304();
  if (result)
  {
    v2 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v2);
      }

      else
      {
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268ACD8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (UsoTask_play_common_MediaItem.referencedSetting()(a1))
  {
    sub_268964750();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_268ACD960(uint64_t a1)
{
  if (!UsoTask_play_common_MediaItem.referencedSetting()(a1))
  {
    return 0;
  }

  v1 = sub_268B35DA4();

  if (!v1)
  {
    return 0;
  }

  v2 = sub_268B35FD4();

  return v2;
}

uint64_t UsoTask_play_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v67 - v3;
  v5 = sub_268B37A54();
  v67[3] = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v67 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v67 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v67 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v67 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v67 - v21;
  v23 = sub_268ACD4D0();
  if (v23)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v24 = v5;
    __swift_project_value_buffer(v5, qword_2802CDA10);
    OUTLINED_FUNCTION_1_54();
    v25(v22);
    v26 = sub_268B37A34();
    v27 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v27))
    {
      v28 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v28);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v29, v30, "UsoTask_play_common_MediaItem#shouldHandle This is an addSpeaker request, handling in controls");
      OUTLINED_FUNCTION_83_0();
    }

    v31 = 0;
  }

  else
  {
    v32 = UsoTask_play_common_MediaItem.referencedSetting()(v23);
    if (v32)
    {
      v33 = v32;
      sub_2689633E8();
      if (v34)
      {
        v67[2] = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
        inited = swift_initStackObject();
        inited[1] = xmmword_268B3BBD0;
        inited[2] = xmmword_268B3F0D0;
        inited[3] = xmmword_268B3F0E0;
        v36 = UsoTask_play_common_MediaItem.verb()();
        v67[1] = v67;
        v69 = v36;
        MEMORY[0x28223BE20](v36.value._countAndFlagsBits);
        v67[-2] = &v69;
        v37 = sub_268ACD0C0();
        swift_setDeallocating();
        sub_268ACE6C0();

        if (v37)
        {
          v69.value._countAndFlagsBits = v1;
          sub_268B36024();
          sub_268ACE950(&qword_2802A8878, MEMORY[0x277D5ECC8], &protocol conformance descriptor for UsoTask_play_common_MediaItem);
          sub_268B37364();
          v38 = sub_268B37924();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v38);
          sub_268ACE800(v4);
          if (EnumTagSinglePayload == 1)
          {
            v24 = v5;
            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
            }

            __swift_project_value_buffer(v5, qword_2802CDA10);
            OUTLINED_FUNCTION_1_54();
            v40(v17);
            v41 = sub_268B37A34();
            v42 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v42))
            {
              v43 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v43);
              OUTLINED_FUNCTION_112_1(&dword_2688BB000, v44, v45, "UsoTask_play_common_MediaItem#shouldHandle Verb is shuffle/repeat without a reference, rejecting");
              OUTLINED_FUNCTION_83_0();
            }

            v31 = 3;
            v22 = v17;
          }

          else
          {
            v24 = v5;
            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
            }

            __swift_project_value_buffer(v5, qword_2802CDA10);
            OUTLINED_FUNCTION_1_54();
            v60(v20);
            v61 = sub_268B37A34();
            v62 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v62))
            {
              v63 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v63);
              OUTLINED_FUNCTION_112_1(&dword_2688BB000, v64, v65, "UsoTask_play_common_MediaItem#shouldHandle Verb is shuffle/repeat with a reference, handling in controls");
              OUTLINED_FUNCTION_83_0();
            }

            v31 = 0;
            v22 = v20;
          }
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v24 = v5;
          __swift_project_value_buffer(v5, qword_2802CDA10);
          OUTLINED_FUNCTION_1_54();
          v54(v14);
          v55 = sub_268B37A34();
          v56 = sub_268B37F04();
          if (OUTLINED_FUNCTION_19(v56))
          {
            v57 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v57);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v58, v59, "UsoTask_play_common_MediaItem#shouldHandle Task is mediaPlayer. Handling in controls");
            OUTLINED_FUNCTION_83_0();
          }

          v31 = 0;
          v22 = v14;
        }
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        v24 = v5;
        __swift_project_value_buffer(v5, qword_2802CDA10);
        OUTLINED_FUNCTION_1_54();
        v50(v11);
        v51 = sub_268B37A34();
        v52 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v52))
        {
          v53 = OUTLINED_FUNCTION_14();
          *v53 = 0;
          _os_log_impl(&dword_2688BB000, v51, v11, "UsoTask_play_common_MediaItem#shouldHandle Task is not mediaPlayer: Not handling in controls", v53, 2u);
          MEMORY[0x26D6266E0](v53, -1, -1);
        }

        v31 = 3;
        v22 = v11;
      }
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v24 = v5;
      __swift_project_value_buffer(v5, qword_2802CDA10);
      OUTLINED_FUNCTION_1_54();
      v46(v8);
      v47 = sub_268B37A34();
      v48 = sub_268B37EE4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        *v49 = 0;
        _os_log_impl(&dword_2688BB000, v47, v48, "UsoTask_play_common_MediaItem#shouldHandle no referenced setting found in task. Not handling in Controls", v49, 2u);
        MEMORY[0x26D6266E0](v49, -1, -1);
      }

      v31 = 3;
      v22 = v8;
    }
  }

  result = (*(v5 + 8))(v22, v24);
  *v68 = v31;
  return result;
}

uint64_t sub_268ACE1F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268ACE244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268ACE298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268ACE2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268ACE340(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268ACE394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268ACE3E8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268ACE43C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268ACE4A0(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268ACE4F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268ACE558(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268ACE5BC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268ACE620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268ACE684()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268ACE6C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268ACE718()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268ACE758()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_4_41();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268ACE800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268ACE868(uint64_t a1)
{
  result = sub_268ACE950(&qword_2802A8878, MEMORY[0x277D5ECC8], &protocol conformance descriptor for UsoTask_play_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268ACE950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268ACE9E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v74 = (&v66 - v7);
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v72 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v70 = &v66 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v66 - v19);
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    __swift_project_value_buffer(v8, qword_2802CDA10);
    v77 = v10;
    v21 = *(v10 + 16);
    OUTLINED_FUNCTION_5_29();
    v21();
    v22 = sub_268B37A34();
    v23 = sub_268B37ED4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_14();
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "SkipContentConfirmIntentStrategy.makeDialogForConfirmation()", v24, 2u);
      OUTLINED_FUNCTION_12();
    }

    v26 = v77 + 8;
    v25 = *(v77 + 8);
    v25(v20, v8);
    v71 = a2;
    v27 = sub_268B18100(a2);
    if (!v27)
    {
      break;
    }

    a2 = v27;
    v28 = sub_2688EFD0C();
    if (!v28)
    {

      break;
    }

    v29 = v28;
    v77 = v26;
    OUTLINED_FUNCTION_5_29();
    v21();
    v20 = sub_268B37A34();
    v30 = sub_268B37EC4();
    if (os_log_type_enabled(v20, v30))
    {
      v31 = swift_slowAlloc();
      v68 = v30;
      v32 = v31;
      v69 = swift_slowAlloc();
      v78 = v69;
      *v32 = 136315138;
      v33 = type metadata accessor for Device();
      v34 = MEMORY[0x26D6256F0](a2, v33);
      v72 = v8;
      v36 = sub_26892CDB8(v34, v35, &v78);
      v67 = v18;
      v37 = v36;
      v8 = v72;

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2688BB000, v20, v68, "Confirming devices: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v38 = v67;
    }

    else
    {

      v38 = v18;
    }

    v25(v38, v8);
    v49 = [v71 direction];
    if (v49 == 1)
    {
      LODWORD(v77) = 0;
    }

    else
    {
      if (v49 != 2)
      {
        v60 = v25;

        v61 = v70;
        OUTLINED_FUNCTION_5_29();
        v21();
        v62 = sub_268B37A34();
        v63 = sub_268B37EE4();
        if (os_log_type_enabled(v62, v63))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v64, v65, "Unexpected skip content direction");
          OUTLINED_FUNCTION_12();
        }

        v60(v61, v8);
        sub_2688C2ECC();
        v44 = swift_allocError();
        v46 = 116;
        goto LABEL_12;
      }

      LODWORD(v77) = 1;
    }

    v18 = 0;
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v50 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29 == v18)
      {

        sub_268AB860C(v50, v77, v76, v75);
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x26D625BD0](v18, a2);
      }

      else
      {
        if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v51 = *(a2 + 8 * v18 + 32);
      }

      v8 = v51;
      v52 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v53 = sub_268988580(v51);
      if (v54)
      {
        v20 = v53;
        v56 = v54;

        goto LABEL_28;
      }

      v20 = sub_268988568(v8);
      v56 = v55;

      ++v18;
      if (v56)
      {
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v50 = v58;
        }

        v8 = *(v50 + 16);
        if (v8 >= *(v50 + 24) >> 1)
        {
          sub_2689876A4();
          v50 = v59;
        }

        *(v50 + 16) = v8 + 1;
        v57 = v50 + 16 * v8;
        *(v57 + 32) = v20;
        *(v57 + 40) = v56;
        v18 = v52;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v39 = v72;
  OUTLINED_FUNCTION_5_29();
  v21();
  v40 = sub_268B37A34();
  v41 = sub_268B37EE4();
  if (os_log_type_enabled(v40, v41))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v42, v43, "Could not find any devices in the intent for confirmation");
    OUTLINED_FUNCTION_12();
  }

  v25(v39, v8);
  sub_2688C2ECC();
  v44 = swift_allocError();
  v46 = 115;
LABEL_12:
  *v45 = v46;
  v47 = v74;
  *v74 = v44;
  swift_storeEnumTagMultiPayload();
  v76(v47);
  return sub_2688C058C(v47, &qword_2802A6300, &unk_268B3BD80);
}

uint64_t sub_268ACF088(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v55 = a2;
  v51 = a1;
  v7 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v52 = v8;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v46 - v13;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v49 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v22 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v47 = *(v16 + 16);
  v48 = v22;
  v47(v21);
  v23 = sub_268B37A34();
  v24 = sub_268B37ED4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    v46 = v7;
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "SkipContentConfirmIntentStrategy.makePromptForConfirmation() called", v25, 2u);
    v7 = v46;
    OUTLINED_FUNCTION_12();
  }

  v26 = *(v16 + 8);
  v26(v21, v14);
  v27 = [v55 direction];
  if (v27 == 2)
  {
    v28 = a5;
    sub_268B36574();
    swift_allocObject();
    sub_268B36564();
    goto LABEL_9;
  }

  if (v27 == 1)
  {
    v28 = a5;
    sub_268B36504();
    swift_allocObject();
    sub_268B364F4();
LABEL_9:

    v29 = v54;
    sub_2689D9FD4();

    v30 = v52;
    v31 = v50;
    (*(v52 + 16))(v50, v29, v7);
    v32 = (*(v30 + 80) + 56) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = a4;
    *(v33 + 3) = v28;
    v34 = v55;
    v35 = v53;
    *(v33 + 4) = v55;
    *(v33 + 5) = v35;
    *(v33 + 6) = v51;
    (*(v30 + 32))(&v33[v32], v31, v7);

    v36 = v34;

    sub_268ACE9E4(v37, v36, v38, sub_268AD00FC, v33);

    return (*(v30 + 8))(v54, v7);
  }

  v55 = a4;
  v40 = v49;
  (v47)(v49, v48, v14);
  v41 = sub_268B37A34();
  v42 = sub_268B37EE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "Unexpected skip content direction", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  v26(v40, v14);
  sub_2688C2ECC();
  v44 = swift_allocError();
  *v45 = 117;
  v56[0] = v44;
  v57 = 1;
  (v55)(v56);
  return sub_2688C058C(v56, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_268ACF548(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v64 = a6;
  v65 = a7;
  v63 = a5;
  v70 = a4;
  v71 = a2;
  v72 = a3;
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - v14;
  v15 = sub_268B34E24();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_268B37A54();
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v62 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v56 - v30;
  sub_2688F1FA4(v67, v23, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v23, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v18, qword_2802CDA10);
    v33 = v58;
    v58[2](v20, v32, v18);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SkipContentConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (v33[1])(v20, v18);
    sub_2688C2ECC();
    v37 = swift_allocError();
    *v38 = -71;
    v73[0] = v37;
    v74 = 1;
    v71(v73);
    return sub_2688C058C(v73, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v23, v31);
    sub_268947F08();
    v56 = v40;
    v41 = v63;
    __swift_project_boxed_opaque_existential_1(v63 + 8, v63[11]);
    v42 = *MEMORY[0x277D5BB48];
    v43 = *(v68 + 104);
    v58 = v17;
    v43(v17, v42, v69);
    sub_2688F1FA4(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v57 = v24;

    v44 = sub_268B350F4();
    v67 = *(v44 - 8);
    v45 = v59;
    (*(v67 + 32))(v59, v29, v44);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
    v46 = sub_268B34B94();
    v47 = v61;
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v46);
    v48 = v60;
    sub_2688F1FA4(v45, v60, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v48, 1, v44) == 1)
    {
      sub_2688C058C(v48, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v67 + 8))(v48, v44);
    }

    v49 = v58;
    sub_2688E36A0();

    sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v45, &unk_2802A57B0, &unk_268B3CE00);
    (*(v68 + 8))(v49, v69);
    v50 = v41[16];
    v51 = v41[17];
    __swift_project_boxed_opaque_existential_1(v41 + 13, v50);
    v52 = v62;
    sub_2688F1FA4(v31, v62, &unk_2802A56E0, &unk_268B3CDF0);
    v53 = *(v52 + *(v57 + 48));
    v54 = sub_268B35044();
    v55 = v66;
    (*(*(v54 - 8) + 16))(v66, v65, v54);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
    (*(v51 + 16))(v52, v53, v55, v71, v72, v50, v51);

    sub_2688C058C(v55, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v31, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v67 + 8))(v52, v44);
  }
}

void sub_268ACFDD4()
{
  type metadata accessor for SkipContentConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268ACFE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268ACFF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SkipContentConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268ACFFB0(uint64_t a1)
{
  result = sub_268ACFFD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268ACFFD8()
{
  result = qword_2802A88A0;
  if (!qword_2802A88A0)
  {
    type metadata accessor for SkipContentConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A88A0);
  }

  return result;
}

uint64_t sub_268AD002C()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_268AD00FC(uint64_t a1)
{
  v3 = *(sub_268B35044() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_268ACF548(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268AD0184()
{
  v6[0] = sub_268B37F44();
  v0 = *(v6[0] - 8);
  MEMORY[0x28223BE20](v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37F34();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268B37B14();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  sub_268B37AD4();
  v6[1] = MEMORY[0x277D84F90];
  sub_268A0E800(&unk_2802A5890, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v6[0]);
  result = sub_268B37F74();
  qword_2802A88A8 = result;
  return result;
}

uint64_t sub_268AD03EC(uint64_t a1)
{
  sub_268B34B04();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_268B34B14();
  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

void sub_268AD0450()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42(&qword_2802A50B8);
  }

  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v3;
  v8[4] = v1;
  OUTLINED_FUNCTION_0_52(v8);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v18[2] = v9;
  v18[3] = &block_descriptor_42;
  v10 = _Block_copy(v18);

  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v11, v12, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_7_34();
  sub_268B38124();
  v13 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v13);
  _Block_release(v10);
  v14 = OUTLINED_FUNCTION_0_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_14_24();
  v17(v16);

  OUTLINED_FUNCTION_23();
}

void sub_268AD0694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268B37BC4();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_268AD3274;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_268AD0774;
  v7[3] = &block_descriptor_48;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_268AD0774(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_268AD0810()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42(&qword_2802A50B8);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  OUTLINED_FUNCTION_0_52(v6);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v16[2] = v7;
  v16[3] = &block_descriptor_36;
  v8 = _Block_copy(v16);

  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v9, v10, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_7_34();
  sub_268B38124();
  v11 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v11);
  _Block_release(v8);
  v12 = OUTLINED_FUNCTION_0_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_14_24();
  v15(v14);

  OUTLINED_FUNCTION_23();
}

void sub_268AD0A44(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedAnalytics];
  if (v4)
  {
    v5 = v4;
    sub_268AD3170(a1, a2, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_268AD0AC0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42(&qword_2802A50B8);
  }

  OUTLINED_FUNCTION_168_0();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  OUTLINED_FUNCTION_0_52(v4);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v15[2] = v5;
  v15[3] = &block_descriptor_30_0;
  v6 = _Block_copy(v15);
  v7 = v1;
  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v8, v9, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_7_34();
  sub_268B38124();
  v10 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v10);
  _Block_release(v6);
  v11 = OUTLINED_FUNCTION_0_1();
  v12(v11);
  v13 = OUTLINED_FUNCTION_14_24();
  v14(v13);

  OUTLINED_FUNCTION_23();
}

void sub_268AD0CE8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedLoggingService];
  [v2 logToCoreAnalyticsCrossDeviceRequestEvent_];
}

void sub_268AD0D58()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v24 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v25 = OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42(&qword_2802A50B8);
  }

  OUTLINED_FUNCTION_168_0();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v24;
  v15[4] = v2;
  v15[5] = v9;
  v15[6] = v7;
  v15[7] = v5;
  OUTLINED_FUNCTION_0_52(v15);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v26[2] = v16;
  v26[3] = &block_descriptor_24;
  v17 = _Block_copy(v26);

  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v18, v19, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  v20 = sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_13_22(v20);
  v21 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v21);
  _Block_release(v17);
  v22 = OUTLINED_FUNCTION_0_1();
  v23(v22);
  (*(v12 + 8))(v0, v25);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD0FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v54 = a4;
  v55 = a5;
  v62 = a2;
  v63 = a3;
  v6 = sub_268B37954();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88B0, &qword_268B502A8);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v53 - v9;
  v10 = sub_268B379D4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B379E4();
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - v16;
  v18 = sub_268B34674();
  v64 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - v29;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_268B34624();
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_2688EF38C(v17, qword_2802A6EF0, &unk_268B502B0);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v24, qword_2802CDA10);
      (*(v25 + 16))(v28, v33, v24);
      v34 = sub_268B37A34();
      v35 = sub_268B37EE4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2688BB000, v34, v35, "AnalyticsServiceLogger.logSELFCrossDeviceCommandStartedEvent expects a valid requestId. Returning.", v36, 2u);
        MEMORY[0x26D6266E0](v36, -1, -1);
      }

      return (*(v25 + 8))(v28, v24);
    }

    else
    {
      v42 = v64;
      (*(v64 + 32))(v23, v17, v18);
      (*(v42 + 16))(v21, v23, v18);
      sub_268AD28C4(v54, v55, v12);
      v43 = sub_268B379B4();
      __swift_storeEnumTagSinglePayload(v53, 1, 1, v43);
      v44 = v65;
      sub_268B379A4();
      sub_26890C900(v32 + 16, v66);
      v63 = v66[4];
      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88D0, &qword_268B502D8) + 64);
      v47 = v58;
      v46 = v59;
      *v58 = 0;
      *(v47 + 1) = v46;
      v62 = v32;
      v48 = v56;
      v49 = v44;
      v50 = v57;
      (*(v56 + 16))(&v47[v45], v49, v57);
      v52 = v60;
      v51 = v61;
      (*(v60 + 104))(v47, *MEMORY[0x277D61ED0], v61);

      sub_268B37994();

      (*(v52 + 8))(v47, v51);
      (*(v48 + 8))(v65, v50);
      (*(v64 + 8))(v23, v18);
      return __swift_destroy_boxed_opaque_existential_0Tm(v66);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v24, qword_2802CDA10);
    (*(v25 + 16))(v30, v38, v24);
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v39, v40, "Couldn't find strong self. Exiting", v41, 2u);
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    return (*(v25 + 8))(v30, v24);
  }
}

void sub_268AD1708()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v25 = v9;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v26 = OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_30();
  if (qword_2802A50B8 != -1)
  {
    OUTLINED_FUNCTION_4_42(&qword_2802A50B8);
  }

  OUTLINED_FUNCTION_168_0();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v6;
  v15[4] = v4;
  v15[5] = v25;
  v15[6] = v8;
  v15[7] = v2;
  OUTLINED_FUNCTION_0_52(v15);
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v27[2] = v16;
  v27[3] = &block_descriptor_13;
  v17 = _Block_copy(v27);

  v18 = v2;
  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v19, v20, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  v21 = sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  OUTLINED_FUNCTION_13_22(v21);
  v22 = OUTLINED_FUNCTION_9_28();
  MEMORY[0x26D625950](v22);
  _Block_release(v17);
  v23 = OUTLINED_FUNCTION_0_1();
  v24(v23);
  (*(v12 + 8))(v0, v26);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD19A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), void (*a5)(void, void, void), uint64_t a6)
{
  v80 = a6;
  v79 = a5;
  v78 = a4;
  v84 = a2;
  v85 = a3;
  v83 = sub_268B37954();
  v95 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_268B37944();
  v82 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_268B379B4();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88B0, &qword_268B502A8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - v12;
  v96 = sub_268B379E4();
  v92 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v89 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B379D4();
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v74 - v21;
  v23 = sub_268B34674();
  v87 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v86 = &v74 - v27;
  v28 = sub_268B37A54();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v74 - v33;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    sub_268B34624();
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      sub_2688EF38C(v22, qword_2802A6EF0, &unk_268B502B0);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v28, qword_2802CDA10);
      (*(v29 + 16))(v32, v37, v28);
      v38 = sub_268B37A34();
      v39 = sub_268B37EE4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2688BB000, v38, v39, "AnalyticsServiceLogger.logSELFCrossDeviceCommandEndedEvent expects a valid requestId. Returning.", v40, 2u);
        MEMORY[0x26D6266E0](v40, -1, -1);
      }

      return (*(v29 + 8))(v32, v28);
    }

    else
    {
      v85 = v36;
      v47 = v86;
      v46 = v87;
      (*(v87 + 32))(v86, v22, v23);
      v48 = v88;
      v49 = v78;
      v50 = v79;
      sub_268AD28C4(v78, v79, v88);
      v51 = *(v46 + 16);
      v84 = v23;
      v51(v26, v47, v23);
      (*(v90 + 16))(v18, v48, v91);
      v52 = v77;
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v77);
      v53 = v89;
      sub_268B379A4();
      v54 = v76;
      sub_268AD2D20(v49, v50, v76);
      if (__swift_getEnumTagSinglePayload(v54, 1, v52) == 1)
      {
        sub_2688EF38C(v54, &qword_2802A88B0, &qword_268B502A8);
      }

      else
      {
        v55 = v75;
        v56 = v74;
        (*(v75 + 32))(v74, v54, v52);
        (*(v55 + 16))(v13, v56, v52);
        __swift_storeEnumTagSinglePayload(v13, 0, 1, v52);
        sub_268B379C4();
        (*(v55 + 8))(v56, v52);
      }

      v57 = v93;
      v58 = v94;
      v59 = v82;
      v60 = v92;
      v61 = MEMORY[0x277D61EB8];
      v62 = v80;
      if (v80)
      {
        v61 = MEMORY[0x277D61EC0];
      }

      (*(v82 + 104))(v93, *v61, v94);
      sub_26890C900(v85 + 16, v97);
      v82 = v99;
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88C0, &qword_268B502C0) + 48);
      v64 = v81;
      v78 = *(v60 + 16);
      v78(v81, v53, v96);
      (*(v59 + 16))(&v64[v63], v57, v58);
      v65 = *MEMORY[0x277D61EB0];
      v66 = v95;
      v67 = v83;
      v79 = *(v95 + 104);
      v79(v64, v65, v83);
      sub_268B37994();
      v68 = *(v66 + 8);
      v68(v64, v67);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      if (v62)
      {
        sub_26890C900(v85 + 16, v97);
        v82 = v99;
        __swift_project_boxed_opaque_existential_1(v97, v98);
        v95 = v66 + 8;
        v69 = v67;
        v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88C8, &unk_268B502C8) + 48);
        v71 = v89;
        v78(v64, v89, v96);
        v72 = *MEMORY[0x277D61EA8];
        v73 = sub_268B37934();
        (*(*(v73 - 8) + 104))(&v64[v70], v72, v73);
        v79(v64, *MEMORY[0x277D61EC8], v69);
        sub_268B37994();

        v68(v64, v69);
        (*(v59 + 8))(v93, v94);
        (*(v92 + 8))(v71, v96);
        (*(v90 + 8))(v88, v91);
        (*(v87 + 8))(v86, v84);
        return __swift_destroy_boxed_opaque_existential_0Tm(v97);
      }

      else
      {

        (*(v59 + 8))(v93, v94);
        (*(v92 + 8))(v89, v96);
        (*(v90 + 8))(v88, v91);
        return (*(v87 + 8))(v86, v84);
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v28, qword_2802CDA10);
    (*(v29 + 16))(v34, v42, v28);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "Couldn't find strong self. Exiting", v45, 2u);
      MEMORY[0x26D6266E0](v45, -1, -1);
    }

    return (*(v29 + 8))(v34, v28);
  }
}

uint64_t sub_268AD25A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2688EA03C(0, &qword_2802A88B8, 0x277CEF390);
  v3 = sub_268B37CE4();
  v4 = sub_268B37BC4();
  v5 = AFAnalyticsContextCreateForCrossDeviceCommandHandledWithServiceDeviceContexts();

  if (!v5)
  {
    return 0;
  }

  sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
  v6 = sub_268B37B64();

  return v6;
}

id sub_268AD2674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  if (a1[2])
  {
    v15 = a1[4];
    v14 = a1[5];
  }

  else
  {
    v15 = 0;
    v14 = 0xE000000000000000;
  }

  v16 = objc_allocWithZone(MEMORY[0x277CEF230]);
  v17 = sub_268AD2E94(v15, v14);
  if (v17)
  {
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v29 = v17;
        v20 = MEMORY[0x26D625BD0](0, a2);
      }

      else
      {
        v18 = *(a2 + 32);
        v19 = v17;
        v20 = v18;
      }

      v21 = v20;
      v22 = [v20 identifier];

      if (v22)
      {
        sub_268B34654();

        v23 = sub_268B34674();
        v24 = 0;
      }

      else
      {
        v23 = sub_268B34674();
        v24 = 1;
      }

      __swift_storeEnumTagSinglePayload(v11, v24, 1, v23);
      sub_268AD2EF8(v11, v13);
    }

    else
    {
      v25 = v17;
      sub_268B34624();
    }

    v26 = sub_268B34674();
    v27 = 0;
    if (__swift_getEnumTagSinglePayload(v13, 1, v26) != 1)
    {
      v27 = sub_268B34644();
      (*(*(v26 - 8) + 8))(v13, v26);
    }

    sub_268AD2F68(v27, a3, a4, v17);
  }

  return v17;
}

uint64_t sub_268AD28C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D61FB8];
  v7 = sub_268B379D4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v31 = *(v10 + 104);
  v31(a3, v6, v7);
  v11 = a1 == 0x64654D6573756170 && a2 == 0xEA00000000006169;
  if (v11 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F60];
LABEL_7:
    (*(v9 + 8))(a3, v7);
    v13 = *v12;

    return (v31)(a3, v13, v7);
  }

  v15 = a1 == 0x654D656D75736572 && a2 == 0xEB00000000616964;
  if (v15 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F68];
    goto LABEL_7;
  }

  v16 = a1 == 0x746E6F4370696B73 && a2 == 0xEB00000000746E65;
  if (v16 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F88];
    goto LABEL_7;
  }

  v17 = a1 == 0x656D695470696B73 && a2 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F78];
    goto LABEL_7;
  }

  v18 = a1 == 0x656D69546B656573 && a2 == 0xE800000000000000;
  if (v18 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F70];
    goto LABEL_7;
  }

  v19 = a1 == 0x6165706552746573 && a2 == 0xEE00657461745374;
  if (v19 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F90];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_31();
  v21 = a1 == 0xD000000000000010 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61FB0];
    goto LABEL_7;
  }

  v22 = a1 == 0x6666756853746573 && a2 == 0xEF6574617453656CLL;
  if (v22 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61FA0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_31();
  v24 = a1 == 0xD000000000000010 && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61FA8];
    goto LABEL_7;
  }

  v25 = a1 == 0x5464694474616877 && a2 == 0xEE00796153796568;
  if (v25 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v12 = MEMORY[0x277D61F98];
    goto LABEL_7;
  }

  v26 = a1 == 0x6F74536B63697551 && a2 == 0xE900000000000070;
  if (v26 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0) || ((OUTLINED_FUNCTION_11_31(), a1 == 0xD000000000000019) ? (v28 = v27 == a2) : (v28 = 0), v28 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0) || ((OUTLINED_FUNCTION_11_31(), a1 == 0xD00000000000001ALL) ? (v30 = v29 == a2) : (v30 = 0), v30 || (OUTLINED_FUNCTION_152_0(), result = sub_268B38444(), (result & 1) != 0))))
  {
    v12 = MEMORY[0x277D61F58];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_268AD2D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_268B379B4();
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  OUTLINED_FUNCTION_11_31();
  v8 = a1 == 0xD000000000000019 && v7 == a2;
  if (v8 || (OUTLINED_FUNCTION_152_0(), (sub_268B38444() & 1) != 0))
  {
    v9 = MEMORY[0x277D61F48];
LABEL_7:
    sub_2688EF38C(a3, &qword_2802A88B0, &qword_268B502A8);
    (*(*(v6 - 8) + 104))(a3, *v9, v6);

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  OUTLINED_FUNCTION_11_31();
  v12 = a1 == 0xD00000000000001ALL && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_152_0(), result = sub_268B38444(), (result & 1) != 0))
  {
    v9 = MEMORY[0x277D61F40];
    goto LABEL_7;
  }

  return result;
}

id sub_268AD2E94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithNearbyDevicesLoggingID_];

  return v4;
}

uint64_t sub_268AD2EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_268AD2F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_268B37BC4();
  [a4 addCoreAnalyticsDeviceTargetedWithContextIdentifier:a1 commandResultDescription:v6];
}

uint64_t sub_268AD2FD0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_16Tm_0(void (*a1)(void))
{

  a1(*(v1 + 56));

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

uint64_t sub_268AD30F4()
{
  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AD3130()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_268AD3170(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_268B37B54();
  [a3 logEventWithType:a1 context:v5];
}

uint64_t sub_268AD31F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268AD3240()
{

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return sub_268B37B14();
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1)
{

  return sub_268B38124();
}

void sub_268AD33CC(uint64_t *a1@<X8>)
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = sub_268B37BC4();
  v13 = [v11 BOOLForKey_];

  if (!v13)
  {

LABEL_9:
    a1[3] = &type metadata for DeviceContextProvider;
    a1[4] = &off_287951A98;
    *a1 = swift_allocObject();
    sub_268B36AE4();
    return;
  }

  if (qword_2802A5030 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_82(v2, qword_2802CDB30);
  (*(v4 + 16))(v8);
  v14 = sub_268B37A34();
  v15 = sub_268B37EF4();
  if (OUTLINED_FUNCTION_196(v15))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_50_0(&dword_2688BB000, v16, v17, "!!!!! Simulated context is being used !!!!!");
    OUTLINED_FUNCTION_12_8();
  }

  (*(v4 + 8))(v8, v2);
  a1[3] = &type metadata for SimulatedContextProvider;
  a1[4] = &off_287954CD0;
}

uint64_t sub_268AD35F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2))
  {

    return a4(v15);
  }

  else
  {
    sub_26890C900(a3, v20);
    v17 = swift_allocObject();
    sub_2688E6514(v20, (v17 + 2));
    v17[7] = a1;
    v17[8] = a2;
    v17[9] = a4;
    v17[10] = a5;
    v18 = *(a7 + 8);
    v19 = a1;

    v18(sub_268AE1CA8, v17, a6, a7);
  }
}

BOOL sub_268AD3708(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_268AD3738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  while (2)
  {
    if (v2)
    {
      v4 = *v3;
      if (*v3 < 5)
      {
        switch(a1)
        {
          case 0:
            if (!v4)
            {
              return v2 != 0;
            }

            goto LABEL_14;
          case 1:
            if (v4 != 1)
            {
              goto LABEL_14;
            }

            return v2 != 0;
          case 2:
            if (v4 == 2)
            {
              return v2 != 0;
            }

            goto LABEL_14;
          case 3:
            if (v4 == 3)
            {
              return v2 != 0;
            }

            goto LABEL_14;
          case 4:
            if (v4 == 4)
            {
              return v2 != 0;
            }

LABEL_14:
            ++v3;
            --v2;
            continue;
          default:
            break;
        }
      }

      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268AD3810);
    }

    return v2 != 0;
  }
}

void sub_268AD3824()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE400000000000000;
    v7 = 2036427888;
    switch(*v4)
    {
      case 1:
        v6 = 0xE500000000000000;
        v7 = 0x6573756170;
        break;
      case 2:
        v6 = 0xE600000000000000;
        v7 = 0x656D75736572;
        break;
      case 3:
        v7 = 1886352499;
        break;
      case 4:
        v7 = 1885956979;
        break;
      case 5:
        v6 = 0xE800000000000000;
        v7 = 0x73756F6976657270;
        break;
      case 6:
        v7 = 1801807219;
        break;
      case 7:
        v7 = 0x77726F4670696B73;
        v8 = 6582881;
        goto LABEL_16;
      case 8:
        v7 = 0x6B63614270696B73;
        v6 = 0xEC00000064726177;
        break;
      case 9:
        v6 = 0xE600000000000000;
        v7 = 0x746165706572;
        break;
      case 0xA:
        v6 = 0xE700000000000000;
        v10 = 0x726174736572;
        goto LABEL_25;
      case 0xB:
        v6 = 0xE700000000000000;
        v7 = 0x656C6666756873;
        break;
      case 0xC:
        v7 = 0x6165705365766F6DLL;
        v8 = 7497067;
LABEL_16:
        v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0xD:
        v6 = 0xEA00000000007265;
        v7 = 0x6B61657053646461;
        break;
      case 0xE:
        v7 = 0x705365766F6D6572;
        v6 = 0xED000072656B6165;
        break;
      case 0xF:
        v6 = 0xE600000000000000;
        v7 = 0x627265566F6ELL;
        break;
      case 0x10:
        v7 = 0xD000000000000017;
        v6 = 0x8000000268B56230;
        break;
      case 0x11:
        v6 = 0xE900000000000065;
        v7 = 0x736972616D6D7573;
        break;
      case 0x12:
        v6 = 0xE700000000000000;
        v10 = 0x736575716572;
LABEL_25:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 0x13:
        v7 = 0xD000000000000016;
        v6 = 0x8000000268B56260;
        break;
      case 0x14:
        v7 = 0xD000000000000016;
        v6 = 0x8000000268B56280;
        break;
      case 0x15:
        OUTLINED_FUNCTION_16_11();
        v7 = v9 + 2309;
        v6 = 0xE800000000000000;
        break;
      case 0x16:
        v6 = 0xE800000000000000;
        v7 = 0x6573616572636564;
        break;
      case 0x17:
        v7 = 1701079400;
        break;
      default:
        break;
    }

    v11 = 0xE400000000000000;
    v12 = 2036427888;
    switch(v1)
    {
      case 1:
        v11 = 0xE500000000000000;
        v12 = 0x6573756170;
        break;
      case 2:
        v11 = 0xE600000000000000;
        v12 = 0x656D75736572;
        break;
      case 3:
        v12 = 1886352499;
        break;
      case 4:
        v12 = 1885956979;
        break;
      case 5:
        v11 = 0xE800000000000000;
        v12 = 0x73756F6976657270;
        break;
      case 6:
        v12 = 1801807219;
        break;
      case 7:
        v12 = 0x77726F4670696B73;
        v13 = 6582881;
        goto LABEL_42;
      case 8:
        v12 = 0x6B63614270696B73;
        v11 = 0xEC00000064726177;
        break;
      case 9:
        v11 = 0xE600000000000000;
        v12 = 0x746165706572;
        break;
      case 10:
        v11 = 0xE700000000000000;
        v15 = 0x726174736572;
        goto LABEL_51;
      case 11:
        v11 = 0xE700000000000000;
        v12 = 0x656C6666756873;
        break;
      case 12:
        v12 = 0x6165705365766F6DLL;
        v13 = 7497067;
LABEL_42:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 13:
        v11 = 0xEA00000000007265;
        v12 = 0x6B61657053646461;
        break;
      case 14:
        v12 = 0x705365766F6D6572;
        v11 = 0xED000072656B6165;
        break;
      case 15:
        v11 = 0xE600000000000000;
        v12 = 0x627265566F6ELL;
        break;
      case 16:
        v12 = 0xD000000000000017;
        v11 = 0x8000000268B56230;
        break;
      case 17:
        v11 = 0xE900000000000065;
        v12 = 0x736972616D6D7573;
        break;
      case 18:
        v11 = 0xE700000000000000;
        v15 = 0x736575716572;
LABEL_51:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 19:
        v12 = 0xD000000000000016;
        v11 = 0x8000000268B56260;
        break;
      case 20:
        v12 = 0xD000000000000016;
        v11 = 0x8000000268B56280;
        break;
      case 21:
        OUTLINED_FUNCTION_16_11();
        v12 = v14 + 2309;
        v11 = 0xE800000000000000;
        break;
      case 22:
        v11 = 0xE800000000000000;
        v12 = 0x6573616572636564;
        break;
      case 23:
        v12 = 1701079400;
        break;
      default:
        break;
    }

    if (v7 == v12 && v6 == v11)
    {

      break;
    }

    v17 = OUTLINED_FUNCTION_86_6(v7);

    ++v4;
  }

  while ((v17 & 1) == 0);
  OUTLINED_FUNCTION_23();
}

BOOL sub_268AD3DDC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = (a3 + 40);
  while (v3)
  {
    if (*v4)
    {
      if (a2)
      {
        return v3 != 0;
      }
    }

    else if ((a2 & 1) == 0)
    {
      v5 = *(v4 - 1);
      if (v5 < 5)
      {
        switch(a1)
        {
          case 0:
            if (!v5)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 1:
            if (v5 == 1)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 2:
            if (v5 == 2)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 3:
            if (v5 == 3)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          case 4:
            if (v5 == 4)
            {
              return v3 != 0;
            }

            goto LABEL_7;
          default:
            break;
        }
      }

      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268AD3EC8);
    }

LABEL_7:
    v4 += 16;
    --v3;
  }

  return v3 != 0;
}

BOOL sub_268AD3EDC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE400000000000000;
    v8 = 1684104562;
    switch(*v4)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 7628147;
        break;
      case 2:
        v8 = 0x6573616572636E69;
        v7 = 0xE800000000000000;
        break;
      case 3:
        v7 = 0xE800000000000000;
        v8 = 0x6573616572636564;
        break;
      default:
        break;
    }

    v9 = 0xE400000000000000;
    v10 = 1684104562;
    switch(a1)
    {
      case 1:
        v9 = 0xE300000000000000;
        v10 = 7628147;
        break;
      case 2:
        v10 = 0x6573616572636E69;
        v9 = 0xE800000000000000;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x6573616572636564;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = OUTLINED_FUNCTION_86_6(v8);

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_268AD404C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void *sub_268AD4078(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v31 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v31 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v32 = *i;
    v5 = *(i - 1);
    v6 = sub_268988580(v5);
    if (!v7)
    {
      v6 = sub_268988568(v5);
    }

    v8 = v6;
    v9 = v7;
    v11 = sub_268A759D0(v6);
    v12 = v3[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_21;
    }

    v14 = v10;
    if (v3[3] < v12 + v13)
    {
      sub_268ADF148();
      v3 = v33;
      v15 = sub_268A759D0(v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_23;
      }

      v11 = v15;
    }

    if (v14)
    {

      v17 = v3[7];
      v18 = *(v17 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v11) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268987D58();
        v18 = v27;
        *(v17 + 8 * v11) = v27;
      }

      v20 = *(v18 + 16);
      if (v20 >= *(v18 + 24) >> 1)
      {
        sub_268987D58();
        v18 = v28;
        *(v17 + 8 * v11) = v28;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v5;
      *(v21 + 40) = v32;
      v1 = a1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59F0, &qword_268B3C030);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_268B3BBC0;
      *(v22 + 32) = v5;
      *(v22 + 40) = v32;
      v3[(v11 >> 6) + 8] |= 1 << v11;
      v23 = (v3[6] + 16 * v11);
      *v23 = v8;
      v23[1] = v9;
      *(v3[7] + 8 * v11) = v22;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_22;
      }

      v3[2] = v26;
    }

    ++v2;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

void *sub_268AD42E4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (v7)
    {
      v8 = sub_268AE10A4(v7);
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = sub_268A759D0(v8);
    v13 = v2[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_25;
    }

    v15 = v11;
    if (v2[3] < v13 + v14)
    {
      sub_268ADF148();
      v2 = v26;
      v16 = sub_268A759D0(v8);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_27;
      }

      v12 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v12);
      MEMORY[0x26D6256C0](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_268B3BBA0;
      *(v20 + 32) = v6;
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v21 = (v2[6] + 16 * v12);
      *v21 = v8;
      v21[1] = v10;
      *(v2[7] + 8 * v12) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      v2[2] = v24;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

void *sub_268AD455C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v25 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_26898858C(v5);
    v9 = v8;
    v11 = sub_268A759D0(v7);
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v14 = v10;
    if (v2[3] < v12 + v13)
    {
      sub_268ADF148();
      v2 = v25;
      v15 = sub_268A759D0(v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_24;
      }

      v11 = v15;
    }

    if (v14)
    {

      v18 = (v2[7] + 8 * v11);
      MEMORY[0x26D6256C0](v17);
      if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_268B3BBA0;
      *(v19 + 32) = v6;
      v2[(v11 >> 6) + 8] |= 1 << v11;
      v20 = (v2[6] + 16 * v11);
      *v20 = v7;
      v20[1] = v9;
      *(v2[7] + 8 * v11) = v19;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

void *sub_268AD47A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2689880CC(*(a1 + 16), 0);
  sub_268AE1274();
  v4 = v3;

  sub_2689475B8();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  v6 = v2;
  sub_268ADF3A4(&v6);
  return v6;
}

void sub_268AD488C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v50 - v14);
  if (qword_2802A4F30 != -1)
  {
LABEL_27:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
  v16 = *(v8 + 16);
  v53 = v17;
  v54 = v16;
  (v16)(v15);

  v18 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_13();
  v20 = os_log_type_enabled(v18, v19);
  v57 = v6;
  v58 = v8;
  v51 = v13;
  v52 = v1;
  v55 = v8 + 16;
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_238();
    v1 = OUTLINED_FUNCTION_173_0();
    v59 = v1;
    *v21 = 134218242;
    *(v21 + 4) = sub_2688EFD0C();

    *(v21 + 12) = 2080;
    v22 = NowPlayingState.description.getter(v5);
    v24 = sub_26892CDB8(v22, v23, &v59);

    *(v21 + 14) = v24;
    _os_log_impl(&dword_2688BB000, v18, v0, "Filtering %ld context(s) by playstate: %s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v25 = OUTLINED_FUNCTION_103();
  v56 = v26;
  v26(v25);
  v59 = MEMORY[0x277D84F90];
  v27 = sub_2688EFD0C();
  v28 = 0;
  v8 = v3 & 0xC000000000000001;
  v13 = (v3 & 0xFFFFFFFFFFFFFF8);
  v6 = &unk_279C42000;
  while (v27 != v28)
  {
    if (v8)
    {
      v29 = MEMORY[0x26D625BD0](v28, v3);
    }

    else
    {
      if (v28 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v29 = *(v3 + 8 * v28 + 32);
    }

    v0 = v29;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if ([v29 nowPlayingState] == v5)
    {
      v15 = &v59;
      sub_268B38214();
      v1 = v59[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v28;
  }

  v30 = v59;
  v31 = sub_2688EFD0C();
  if (v31 != sub_2688EFD0C())
  {
    v32 = v52;
    v33 = v57;
    v54(v52, v53, v57);

    v34 = sub_268B37A34();
    v40 = sub_268B37EC4();
    if (!OUTLINED_FUNCTION_2_19(v40))
    {

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_172_0();
    v59 = OUTLINED_FUNCTION_118_0();
    *v0 = 136315138;
    v41 = type metadata accessor for DeviceContext();
    MEMORY[0x26D6256F0](v30, v41);

    v42 = OUTLINED_FUNCTION_97();
    v45 = sub_26892CDB8(v42, v43, v44);

    *(v0 + 1) = v45;
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_204(v46, v47, v48, v49);
    OUTLINED_FUNCTION_36_13();
    goto LABEL_21;
  }

  v32 = v51;
  v33 = v57;
  v54(v51, v53, v57);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v35))
  {
    OUTLINED_FUNCTION_172_0();
    v36 = OUTLINED_FUNCTION_118_0();
    v59 = v36;
    *v0 = 136315138;
    v37 = NowPlayingState.description.getter(v5);
    v39 = sub_26892CDB8(v37, v38, &v59);

    *(v0 + 1) = v39;
    OUTLINED_FUNCTION_204(&dword_2688BB000, v34, v35, "All contexts matched playstate: %s", v50);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
LABEL_21:
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

LABEL_24:
  v56(v32, v33);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD4D4C(char *a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v69 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v80 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v69 - v14);
  if (qword_2802A4F30 != -1)
  {
LABEL_33:
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v17 = *(v5 + 16);
  v77 = v16;
  v78 = v17;
  v79 = v5 + 16;
  (v17)(v15);

  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  v20 = os_log_type_enabled(v18, v19);
  v74 = a1;
  v76 = a2;
  v70 = v11;
  v71 = v8;
  if (v20)
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v85 = v21;
    *v11 = 134218242;
    *(v11 + 4) = sub_2688EFD0C();

    *(v11 + 6) = 2080;
    v22 = NowPlayingState.description.getter(v74);
    v24 = sub_26892CDB8(v22, v23, &v85);
    a2 = v76;

    *(v11 + 14) = v24;
    _os_log_impl(&dword_2688BB000, v18, v19, "Filtering %ld context(s) by playstate: %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v25 = v21;
    a1 = v74;
    MEMORY[0x26D6266E0](v25, -1, -1);
    MEMORY[0x26D6266E0](v11, -1, -1);
  }

  else
  {
  }

  v27 = *(v5 + 8);
  v5 += 8;
  v26 = v27;
  v27(v15, v4);
  v85 = MEMORY[0x277D84F90];
  v28 = sub_2688EFD0C();
  v29 = 0;
  v82 = a2 & 0xC000000000000001;
  v83 = v28;
  v81 = a2 & 0xFFFFFFFFFFFFFF8;
  *&v30 = 136315138;
  v73 = v30;
  v8 = v80;
  v72 = v5;
  while (v83 != v29)
  {
    if (v82)
    {
      v31 = MEMORY[0x26D625BD0](v29, a2);
    }

    else
    {
      if (v29 >= *(v81 + 16))
      {
        goto LABEL_32;
      }

      v31 = *(a2 + 8 * v29 + 32);
    }

    v32 = v31;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v33 = [v31 context];
    if (v33)
    {
      v15 = v33;
      v11 = [v33 nowPlayingState];

      if (v11 == a1)
      {
        v15 = &v85;
        sub_268B38214();
        sub_268B38244();
        v8 = v80;
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }
    }

    else
    {
      v78(v8, v77, v4);
      v34 = v32;
      v15 = sub_268B37A34();
      v35 = sub_268B37EE4();
      if (os_log_type_enabled(v15, v35))
      {
        v11 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v84 = v75;
        *v11 = v73;
        v36 = [v34 description];
        v37 = v26;
        v38 = v4;
        v39 = sub_268B37BF4();
        v41 = v40;

        v42 = v39;
        v4 = v38;
        v26 = v37;
        v43 = sub_26892CDB8(v42, v41, &v84);
        v5 = v72;

        *(v11 + 4) = v43;
        v8 = v80;
        _os_log_impl(&dword_2688BB000, v15, v35, "Excluding item %s with no context", v11, 0xCu);
        v44 = v75;
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        v45 = v44;
        a1 = v74;
        MEMORY[0x26D6266E0](v45, -1, -1);
        MEMORY[0x26D6266E0](v11, -1, -1);
      }

      else
      {
      }

      v26(v8, v4);

      a2 = v76;
    }

    ++v29;
  }

  v83 = v26;
  v46 = v85;
  v47 = sub_2688EFD0C();
  if (v47 != sub_2688EFD0C())
  {
    v48 = v71;
    v78(v71, v77, v4);

    v49 = sub_268B37A34();
    v58 = sub_268B37EC4();
    if (os_log_type_enabled(v49, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v85 = v60;
      *v59 = v73;
      v61 = type metadata accessor for Device();
      v62 = MEMORY[0x26D6256F0](v46, v61);
      v55 = v4;
      v64 = v63;

      v65 = sub_26892CDB8(v62, v64, &v85);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_2688BB000, v49, v58, "Contexts matching playState: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x26D6266E0](v60, -1, -1);
      v57 = v59;
      goto LABEL_26;
    }

LABEL_29:
    v66 = v48;
    v67 = v4;
    goto LABEL_30;
  }

  v48 = v70;
  v78(v70, v77, v4);
  v49 = sub_268B37A34();
  v50 = sub_268B37F04();
  if (!os_log_type_enabled(v49, v50))
  {

    goto LABEL_29;
  }

  v51 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v85 = v52;
  *v51 = v73;
  v53 = NowPlayingState.description.getter(a1);
  v55 = v4;
  v56 = sub_26892CDB8(v53, v54, &v85);

  *(v51 + 4) = v56;
  _os_log_impl(&dword_2688BB000, v49, v50, "All contexts matched playstate: %s", v51, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  MEMORY[0x26D6266E0](v52, -1, -1);
  v57 = v51;
LABEL_26:
  MEMORY[0x26D6266E0](v57, -1, -1);

  v66 = v48;
  v67 = v55;
LABEL_30:
  v83(v66, v67);
  return v46;
}

void sub_268AD550C()
{
  OUTLINED_FUNCTION_26();
  v79 = v0;
  v83 = v1;
  v84 = v2;
  v87 = v3;
  v5 = v4;
  v91 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v76 - v8;
  v10 = sub_268B34614();
  OUTLINED_FUNCTION_1();
  v89 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v88 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v80 = v19 - v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v82 = v22;
  OUTLINED_FUNCTION_8();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v76 - v27;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v15, qword_2802CDA10);
  v29 = *(v17 + 16);
  v85 = v30;
  v86 = v29;
  (v29)(v28);

  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  v33 = os_log_type_enabled(v31, v32);
  v90 = v10;
  if (v33)
  {
    v77 = v26;
    v78 = v17;
    OUTLINED_FUNCTION_238();
    v34 = OUTLINED_FUNCTION_53_1();
    v92[0] = v34;
    *v26 = 134218242;
    *(v26 + 4) = v87(v5);

    *(v26 + 6) = 2080;
    v81 = v15;
    if (v91)
    {
      if (v91 == 1)
      {
        v35 = 0x646E6957676E6F4CLL;
      }

      else
      {
        v35 = 1701736270;
      }

      if (v91 == 1)
      {
        v10 = 0xEA0000000000776FLL;
      }

      else
      {
        v10 = 0xE400000000000000;
      }
    }

    else
    {
      v35 = OUTLINED_FUNCTION_33_18();
    }

    v37 = sub_26892CDB8(v35, v10, v92);

    *(v26 + 14) = v37;
    _os_log_impl(&dword_2688BB000, v31, v32, "Filtering %ld by window: %s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_20_2();

    v36 = *(v78 + 8);
    v15 = v81;
    v36(v28, v81);
    v10 = v90;
    v26 = v77;
  }

  else
  {

    v36 = *(v17 + 8);
    v36(v28, v15);
  }

  sub_268A4CF10(v91, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v42 = v88;
    v43 = (*(v89 + 32))(v88, v9, v10);
    MEMORY[0x28223BE20](v43);
    *(&v76 - 2) = v42;

    v44 = v84(v83, &v76 - 4, v5);
    v45 = v87;
    v46 = (v87)();
    if (v46 == v45(v5))
    {
      v47 = v82;
      v86(v82, v85, v15);
      v48 = sub_268B37A34();
      v49 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v49))
      {
        v50 = v15;
        v51 = OUTLINED_FUNCTION_172_0();
        v52 = OUTLINED_FUNCTION_173_0();
        v92[0] = v52;
        *v51 = 136315138;
        if (v91)
        {
          if (v91 == 1)
          {
            v53 = 0x646E6957676E6F4CLL;
          }

          else
          {
            v53 = 1701736270;
          }

          if (v91 == 1)
          {
            v47 = 0xEA0000000000776FLL;
          }

          else
          {
            v47 = 0xE400000000000000;
          }
        }

        else
        {
          v53 = OUTLINED_FUNCTION_33_18();
        }

        v71 = sub_26892CDB8(v53, v47, v92);

        *(v51 + 4) = v71;
        OUTLINED_FUNCTION_44_9();
        OUTLINED_FUNCTION_60_5(v72, v73, v74, v75);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();

        v69 = v82;
        v70 = v50;
        goto LABEL_34;
      }
    }

    else
    {
      v47 = v80;
      v86(v80, v85, v15);

      v54 = sub_268B37A34();
      v55 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_2_19(v55))
      {
        v56 = OUTLINED_FUNCTION_172_0();
        v81 = v15;
        v57 = v56;
        v58 = v47;
        v59 = OUTLINED_FUNCTION_173_0();
        v92[0] = v59;
        *v57 = 136315138;
        v60 = v79(0);
        MEMORY[0x26D6256F0](v44, v60);

        v61 = OUTLINED_FUNCTION_97();
        v64 = sub_26892CDB8(v61, v62, v63);

        *(v57 + 4) = v64;
        OUTLINED_FUNCTION_44_9();
        OUTLINED_FUNCTION_60_5(v65, v66, v67, v68);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_6();

        v69 = v58;
        v70 = v81;
LABEL_34:
        v36(v69, v70);
        (*(v89 + 8))(v88, v90);
        goto LABEL_35;
      }
    }

    v69 = v47;
    v70 = v15;
    goto LABEL_34;
  }

  sub_2688EF38C(v9, &unk_2802A7350, qword_268B3FF10);
  v86(v26, v85, v15);
  v38 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v38, v39))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_78_0(&dword_2688BB000, v40, v41, "Window start date not specified. Returning all contexts");
    OUTLINED_FUNCTION_84_0();
  }

  v36(v26, v15);

LABEL_35:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD5C08(void *a1, uint64_t a2)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B34614();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v12 = [v11 nowPlayingTimestamp];
  if (v12)
  {
    v13 = v12;
    sub_268B345D4();

    v14 = sub_268B345A4();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v3, qword_2802CDA10);
    (*(v4 + 16))(v6, v15, v3);
    v16 = v11;
    v17 = sub_268B37A34();
    v18 = sub_268B37EE4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_2688BB000, v17, v18, "Excluding context %@ with no timestamp", v19, 0xCu);
      sub_2688EF38C(v20, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v20, -1, -1);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    else
    {
      v21 = v17;
      v17 = v16;
    }

    (*(v4 + 8))(v6, v3);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_268AD5F00(void *a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B34614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 context];
  if (!v12)
  {
LABEL_10:
    v16 = 0;
    return v16 & 1;
  }

  v13 = v12;
  v25[1] = v2;
  v14 = [v12 nowPlayingTimestamp];
  if (!v14)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v17, v4);
    v18 = v13;
    v19 = sub_268B37A34();
    v20 = sub_268B37EE4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v13;
      v23 = v18;
      _os_log_impl(&dword_2688BB000, v19, v20, "Excluding context %@ with no timestamp", v21, 0xCu);
      sub_2688EF38C(v22, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v22, -1, -1);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    else
    {
      v23 = v19;
      v19 = v18;
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_10;
  }

  v15 = v14;
  sub_268B345D4();

  v16 = sub_268B345A4();
  (*(v9 + 8))(v11, v8);
  return v16 & 1;
}

uint64_t sub_268AD621C(void *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = [a1 context];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 nowPlayingTimestamp];

    if (v15)
    {
      sub_268B345D4();

      v16 = sub_268B34614();
      v17 = 0;
    }

    else
    {
      v16 = sub_268B34614();
      v17 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v17, 1, v16);
    sub_2688EF3EC(v10, v12);
    sub_268B34614();
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
    {
      sub_2688EF38C(v12, &unk_2802A7350, qword_268B3FF10);
      return 1;
    }
  }

  else
  {
    v18 = sub_268B34614();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  }

  sub_2688EF38C(v12, &unk_2802A7350, qword_268B3FF10);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v19, v3);
  v20 = a1;
  v21 = sub_268B37A34();
  v22 = sub_268B37EE4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v6;
    v24 = v23;
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315138;
    v26 = v4;
    v27 = [v20 description];
    v28 = sub_268B37BF4();
    v37 = v1;
    v29 = v28;
    v35 = v3;
    v31 = v30;

    v32 = sub_26892CDB8(v29, v31, &v38);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_2688BB000, v21, v22, "Item: %s has invalid timestamp. Discarding...", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x26D6266E0](v25, -1, -1);
    MEMORY[0x26D6266E0](v24, -1, -1);

    (*(v26 + 8))(v36, v35);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

void sub_268AD6600(void *a1, void *a2)
{
  v4 = sub_268B34614();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = [a1 context];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v11 nowPlayingTimestamp];

  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_268B345D4();

  v14 = [a2 context];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 nowPlayingTimestamp];

  if (v16)
  {
    sub_268B345D4();

    sub_268B345A4();
    v17 = *(v5 + 8);
    v17(v8, v4);
    v17(v10, v4);
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_268AD67D0(void *a1, void *a2)
{
  v6 = sub_268B34614();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_7();
  result = [a1 nowPlayingTimestamp];
  if (result)
  {
    v12 = result;
    sub_268B345D4();

    result = [a2 nowPlayingTimestamp];
    if (result)
    {
      v13 = result;
      sub_268B345D4();

      LOBYTE(v13) = sub_268B345A4();
      v14 = *(v8 + 8);
      v14(v2, v6);
      v14(v3, v6);
      return (v13 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_268AD6928(void *a1, void *a2)
{
  v27 = a1;
  v26 = sub_268B34744();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_268B34614();
  v6 = *(v25 - 8);
  v7 = MEMORY[0x28223BE20](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v24 = sub_268B34754();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B34734();
  v15 = [a2 context];
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v15 nowPlayingTimestamp];

  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_268B345D4();

  v18 = [v27 context];
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v18 nowPlayingTimestamp];

  if (v20)
  {
    sub_268B345D4();

    v21 = v26;
    (*(v3 + 104))(v5, *MEMORY[0x277CC99A8], v26);
    sub_268B34724();
    (*(v3 + 8))(v5, v21);
    (*(v12 + 8))(v14, v24);
    v22 = *(v6 + 8);
    v23 = v25;
    v22(v9, v25);
    v22(v11, v23);
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_268AD6C64(void *a1, void *a2)
{
  v33 = a1;
  v3 = sub_268B34744();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v32 = sub_268B34614();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  sub_268B34754();
  OUTLINED_FUNCTION_1();
  v30 = v20;
  v31 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  sub_268B34734();
  result = [a2 nowPlayingTimestamp];
  if (result)
  {
    v25 = result;
    sub_268B345D4();

    result = [v33 nowPlayingTimestamp];
    if (result)
    {
      v26 = result;
      sub_268B345D4();

      (*(v5 + 104))(v9, *MEMORY[0x277CC99A8], v3);
      v27 = sub_268B34724();
      (*(v5 + 8))(v9, v3);
      v28 = *(v11 + 8);
      v29 = v32;
      v28(v15, v32);
      v28(v18, v29);
      (*(v30 + 8))(v23, v31);
      return (v27 == 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_268AD6F0C(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = sub_268B382A4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D625BD0](v4, a2);
      }

      else
      {
        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = sub_268B37D64();
      [v6 setSkipConfirmation_];
    }

    while (v3 != v4);
  }
}

uint64_t sub_268AD6FE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_26894A7E4();
  ObjectType = swift_getObjectType();
  v8 = *(a4 + 16);

  v10 = v8(v9, ObjectType, a4);
  return a5(v10);
}

uint64_t sub_268AD7090()
{
  sub_268B36C54();
  result = sub_268B36C24();
  qword_2802CDB48 = result;
  unk_2802CDB50 = v1;
  return result;
}

uint64_t sub_268AD70C8(uint64_t a1)
{
  v3 = sub_268B37A54();
  v84 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v90 = &v77 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v77 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  v13 = sub_2688EFD0C();
  v14 = 0;
  v15 = a1 & 0xC000000000000001;
  v91 = a1 & 0xC000000000000001;
  v92 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v13 == v14)
    {
      v79 = 0;
      goto LABEL_12;
    }

    if (v15)
    {
      v16 = MEMORY[0x26D625BD0](v14, a1);
    }

    else
    {
      if (v14 >= *(v92 + 16))
      {
        goto LABEL_68;
      }

      v16 = *(a1 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_67;
    }

    v18 = [v16 context];
    if (v18)
    {
      v19 = v18;
      v1 = [v18 proximity];

      if (v1 - 1 >= 4)
      {
        break;
      }
    }

    ++v14;
    v15 = v91;
  }

  if (v1)
  {
    while (1)
    {
      v94 = v1;
LABEL_73:
      sub_268B38474();
      __break(1u);
    }
  }

  v67 = v17;
  v68 = [v67 context];
  if (!v68 || (v69 = v68, v70 = [v68 nowPlayingState], v69, v70 != 1))
  {
    v79 = v67;

    v15 = v91;
LABEL_12:
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    while (v13 != v20)
    {
      if (v15)
      {
        v22 = MEMORY[0x26D625BD0](v20, a1);
      }

      else
      {
        if (v20 >= *(v92 + 16))
        {
          goto LABEL_66;
        }

        v22 = *(a1 + 8 * v20 + 32);
      }

      v23 = v22;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v24 = [v22 context];
      if (v24)
      {
        v25 = v24;
        v1 = [v24 proximity];

        switch(v1)
        {
          case 0uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
            goto LABEL_20;
          case 1uLL:
            v26 = [v23 context];
            if (!v26)
            {
              goto LABEL_20;
            }

            v27 = v26;
            v1 = [v26 nowPlayingState];

            if (v1 != 1)
            {
              goto LABEL_20;
            }

            sub_268B38214();
            v1 = v94[2];
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
            break;
          default:
            v93 = v1;
            goto LABEL_73;
        }
      }

      else
      {
LABEL_20:
      }

      ++v20;
    }

    v78 = v94;
    if (sub_2688EFD0C())
    {
      v15 = v78;
      goto LABEL_51;
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v1 = __swift_project_value_buffer(v3, qword_2802CDA10);
    v88 = v84[2];
    v89 = v84 + 2;
    v88(v10, v1, v3);
    v28 = sub_268B37A34();
    v29 = sub_268B37F04();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "Could not find immediate devices, look near and far", v30, 2u);
      MEMORY[0x26D6266E0](v30, -1, -1);
    }

    v86 = v84[1];
    v87 = v84 + 1;
    v31 = v86(v10, v3);
    v10 = 0;
    v94 = v21;
    v31.n128_u64[0] = 136315138;
    v81 = v31;
    v32 = v90;
    v82 = v1;
    v83 = a1;
    while (1)
    {
      if (v13 == v10)
      {

        v15 = v94;
LABEL_51:
        v1 = v84;
        v10 = v80;
        if (qword_2802A4F30 == -1)
        {
LABEL_52:
          v54 = __swift_project_value_buffer(v3, qword_2802CDA10);
          (v1[2])(v10, v54, v3);
          v55 = sub_268B37A34();
          v56 = sub_268B37EC4();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v94 = v58;
            *v57 = 136315138;
            v59 = type metadata accessor for Device();

            v61 = MEMORY[0x26D6256F0](v60, v59);
            v62 = v3;
            v64 = v63;

            v65 = sub_26892CDB8(v61, v64, &v94);

            *(v57 + 4) = v65;
            _os_log_impl(&dword_2688BB000, v55, v56, "Selected pausable devices: %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            MEMORY[0x26D6266E0](v58, -1, -1);
            MEMORY[0x26D6266E0](v57, -1, -1);

            (v1[1])(v10, v62);
          }

          else
          {

            (v1[1])(v10, v3);
          }

          return v15;
        }

LABEL_71:
        swift_once();
        goto LABEL_52;
      }

      if (v15)
      {
        v33 = MEMORY[0x26D625BD0](v10, a1);
      }

      else
      {
        if (v10 >= *(v92 + 16))
        {
          goto LABEL_70;
        }

        v33 = *(a1 + 8 * v10 + 32);
      }

      v34 = v33;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_69;
      }

      v35 = [v33 context];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 proximity];

        if (sub_268AD3738(v37, &unk_28794F0A0))
        {
          v38 = [v34 context];
          if (v38)
          {
            v39 = v38;
            v40 = [v38 nowPlayingState];

            if (v40 == 1)
            {
              sub_268B38214();
              sub_268B38244();
              v32 = v90;
              sub_268B38254();
              sub_268B38224();
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        v88(v32, v1, v3);
        v34 = v34;
        v41 = sub_268B37A34();
        v42 = sub_268B37F04();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v93 = v85;
          *v43 = v81.n128_u32[0];
          v44 = [v34 description];
          v45 = v13;
          v46 = v3;
          v47 = sub_268B37BF4();
          v49 = v48;

          v50 = v47;
          v3 = v46;
          v13 = v45;
          v51 = sub_26892CDB8(v50, v49, &v93);
          a1 = v83;

          *(v43 + 4) = v51;
          v32 = v90;
          _os_log_impl(&dword_2688BB000, v41, v42, "Skipping item with missing proximity: %s", v43, 0xCu);
          v52 = v85;
          __swift_destroy_boxed_opaque_existential_0Tm(v85);
          v15 = v91;
          MEMORY[0x26D6266E0](v52, -1, -1);
          v53 = v43;
          v1 = v82;
          MEMORY[0x26D6266E0](v53, -1, -1);
        }

        else
        {
        }

        v86(v32, v3);
      }

LABEL_48:
      ++v10;
    }
  }

  v71 = v67;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v72 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v73 = v84;
  (v84[2])(v12, v72, v3);
  v74 = sub_268B37A34();
  v75 = sub_268B37F04();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_2688BB000, v74, v75, "Selecting primary device context", v76, 2u);
    MEMORY[0x26D6266E0](v76, -1, -1);
  }

  (v73[1])(v12, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_268B3BBA0;
  *(v15 + 32) = v71;

  return v15;
}

void sub_268AD7AE8()
{
  OUTLINED_FUNCTION_26();
  v33 = v1;
  v34 = v2;
  v4 = v3;
  sub_268B34714();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  sub_268B37474();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  sub_268B37434();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v8 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v8);
  if (v4 == 1)
  {
    v9 = OUTLINED_FUNCTION_78_8();
    v10(v9);
    v11 = OUTLINED_FUNCTION_81_3();
    v12(v11);
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_58_8();
    v13 = OUTLINED_FUNCTION_46_11();
    v14(v13);
    v15 = OUTLINED_FUNCTION_79_8();
    v16(v15);
    v17 = OUTLINED_FUNCTION_50_9();
    v18(v17);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88E8, &qword_268B50378);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_268B3BBC0;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_268AE1C0C();
      *(v19 + 32) = v33;
      *(v19 + 40) = v34;
LABEL_6:

      sub_268B37C04();
    }
  }

  else
  {
    v20 = OUTLINED_FUNCTION_78_8();
    v21(v20);
    v22 = OUTLINED_FUNCTION_81_3();
    v23(v22);
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_58_8();
    v24 = OUTLINED_FUNCTION_46_11();
    v25(v24);
    v26 = OUTLINED_FUNCTION_79_8();
    v27(v26);
    v28 = OUTLINED_FUNCTION_50_9();
    v29(v28);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88E8, &qword_268B50378);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_268B3BBD0;
      *(v30 + 56) = MEMORY[0x277D837D0];
      v31 = sub_268AE1C0C();
      *(v30 + 32) = v33;
      *(v30 + 40) = v34;
      v32 = MEMORY[0x277D83C10];
      *(v30 + 96) = MEMORY[0x277D83B88];
      *(v30 + 104) = v32;
      *(v30 + 64) = v31;
      *(v30 + 72) = v4;
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AD7E78(uint64_t a1, void *a2)
{
  v4 = sub_268B37A54();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v39 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = sub_2688EFD0C();
  v14 = 0;
  v15 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v13 == v14)
    {
      if (a2)
      {
        v19 = [a2 context];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 nowPlayingState];

          if (v21 == 1)
          {
            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v22 = v44;
            v23 = __swift_project_value_buffer(v44, qword_2802CDA10);
            v24 = v43;
            v12 = v40;
            (*(v43 + 16))(v40, v23, v22);
            v25 = sub_268B37A34();
            v26 = sub_268B37EC4();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              *v27 = 0;
              v28 = "Local device is playing. Don't disambiguate with local device since it is already resumed.";
              goto LABEL_41;
            }

            goto LABEL_43;
          }
        }
      }

      if (v13)
      {
        v30 = 0;
        while (1)
        {
          if (v13 == v30)
          {
            return 1;
          }

          if (v15)
          {
            v31 = MEMORY[0x26D625BD0](v30, a1);
          }

          else
          {
            if (v30 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v31 = *(a1 + 8 * v30 + 32);
          }

          v32 = v31;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_49;
          }

          if (sub_268ADA114(v31))
          {
            break;
          }

          v33 = sub_268ADA06C(v32);

          ++v30;
          if (v33)
          {
            goto LABEL_37;
          }
        }

LABEL_37:
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v22 = v44;
        v37 = __swift_project_value_buffer(v44, qword_2802CDA10);
        v12 = v42;
        v24 = v43;
        (*(v43 + 16))(v42, v37, v22);
        v25 = sub_268B37A34();
        v26 = sub_268B37EC4();
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_43;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = "Auto resumable device found, don't disambiguate with local!";
LABEL_41:
        _os_log_impl(&dword_2688BB000, v25, v26, v28, v27, 2u);
        v36 = 0;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v22 = v44;
        v34 = __swift_project_value_buffer(v44, qword_2802CDA10);
        v24 = v43;
        v12 = v41;
        (*(v43 + 16))(v41, v34, v22);
        v25 = sub_268B37A34();
        v35 = sub_268B37EC4();
        if (!os_log_type_enabled(v25, v35))
        {
          v36 = 1;
          goto LABEL_44;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2688BB000, v25, v35, "No resumable device found in long resumable window. Include local device", v27, 2u);
        v36 = 1;
      }

      MEMORY[0x26D6266E0](v27, -1, -1);
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = MEMORY[0x26D625BD0](v14, a1);
    }

    else
    {
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v16 = *(a1 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v18 = sub_268983434(v16);

    ++v14;
    if (v18)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_51;
      }

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_18:
  v22 = v44;
  v29 = __swift_project_value_buffer(v44, qword_2802CDA10);
  v24 = v43;
  (*(v43 + 16))(v12, v29, v22);
  v25 = sub_268B37A34();
  v26 = sub_268B37EC4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "The resumable devices contain the primary device. Don't include local device again";
    goto LABEL_41;
  }

LABEL_43:
  v36 = 0;
LABEL_44:

  (*(v24 + 8))(v12, v22);
  return v36;
}

void sub_268AD8430()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v212 = v3;
  v211 = v4;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v205 - v14);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v205 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v228 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v210 = &v205 - v28;
  if (!sub_2688EFD0C())
  {
    if (qword_2802A4F30 == -1)
    {
LABEL_138:
      OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
      (*(v7 + 16))(v11);
      v202 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v202, v203))
      {
        v204 = OUTLINED_FUNCTION_14();
        *v204 = 0;
        _os_log_impl(&dword_2688BB000, v202, v5, "Cannot group empty device list", v204, 2u);
        OUTLINED_FUNCTION_6();
      }

      (*(v7 + 8))(v11, v5);
      goto LABEL_141;
    }

LABEL_149:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_138;
  }

  v206 = v20;
  v208 = v1;

  v233 = v5;
  v5 = 0;
  v30 = sub_268AD42E4(v29);
  v31 = v233;
  v32 = v30 + 8;
  OUTLINED_FUNCTION_7_35();
  v232 = v34 & v33;
  v225 = (v35 + 63) >> 6;
  v236 = (v7 + 16);
  v237 = (v7 + 8);
  v231 = v36;

  v37 = 0;
  *&v38 = 136315138;
  v218 = v38;
  *&v38 = 136315394;
  v217 = v38;
  *&v38 = 134217984;
  v207 = v38;
  *&v38 = 138412802;
  v226 = v38;
  v219 = MEMORY[0x277D84F90];
  v234 = v2;
  v220 = v15;
  v7 = 0x2802A4000uLL;
  v222 = v32;
LABEL_3:
  while (2)
  {
    v39 = v225;
    while (1)
    {
      isa = v232;
      if (!v232)
      {
        v41 = MEMORY[0x277D84F90];
        while (1)
        {
          v42 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v42 >= v39)
          {

            OUTLINED_FUNCTION_53_8();
            v11 = v2;
            sub_268ADA9B8();
            v197 = v196;
            v7 = 0;
            v245[0] = v41;
            v198 = *(v196 + 16);
            v199 = (v196 + 40);
            while (v198 != v7)
            {
              if (v7 >= *(v197 + 16))
              {
                goto LABEL_143;
              }

              v200 = *v199;
              v243 = *(v199 - 1);
              v244 = v200;
              v11 = v243;
              sub_268AD9ADC(&v243, &v242);

              if (v242)
              {
                v11 = v245;
                MEMORY[0x26D6256C0]();
                v201 = *((v245[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
                if (*((v245[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v201 >> 1)
                {
                  OUTLINED_FUNCTION_23_11(v201);
                  sub_268B37D14();
                }

                sub_268B37D44();
              }

              v199 += 2;
              ++v7;
            }

            OUTLINED_FUNCTION_53_8();

LABEL_141:
            OUTLINED_FUNCTION_23();
            return;
          }

          isa = v32[v42].isa;
          ++v37;
          if (isa)
          {
            v37 = v42;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v41 = MEMORY[0x277D84F90];
LABEL_11:
      v232 = (isa - 1) & isa;
      v227 = v37;
      OUTLINED_FUNCTION_69_8();
      v44 = v43[1];
      v229 = *v43;
      v46 = *(v45 + 16);
      v235 = v44;

      if (!v46 || (v11 = v231, v47 = sub_268A759D0(v229), (v48 & 1) == 0))
      {
LABEL_90:
        OUTLINED_FUNCTION_26_17();
        if (!v58)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v31, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v132(v15);
        v133 = v235;

        v32 = sub_268B37A34();
        v11 = sub_268B37EE4();

        if (OUTLINED_FUNCTION_210())
        {
          OUTLINED_FUNCTION_172_0();
          v31 = OUTLINED_FUNCTION_53_1();
          v244 = v133;
          v245[0] = v31;
          OUTLINED_FUNCTION_10_28();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
          v134 = sub_268B37C24();
          v15 = sub_26892CDB8(v134, v135, v245);

          *(v7 + 4) = v15;
          OUTLINED_FUNCTION_74_6();
          OUTLINED_FUNCTION_56_8(&dword_2688BB000, v32, v11, "Could not find device contexts for group %s...skipping this group", v205);
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          OUTLINED_FUNCTION_15_25();
          v7 = 0x2802A4000;
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        OUTLINED_FUNCTION_66_7();
        v136 = OUTLINED_FUNCTION_97();
        v137(v136);
        goto LABEL_96;
      }

      v49 = *(*(v231 + 56) + 8 * v47);
      if (v49 >> 62)
      {
        OUTLINED_FUNCTION_67_6(v49 & 0xFFFFFFFFFFFFFF8);
        v50 = sub_268B382A4();
        if (!v50)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v50)
        {
          goto LABEL_90;
        }
      }

      v239 = v49 & 0xC000000000000001;
      if ((v49 & 0xC000000000000001) != 0)
      {

        v51 = MEMORY[0x26D625BD0](0, v49);
      }

      else
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_148;
        }

        v11 = *(v49 + 32);

        v51 = v11;
      }

      v209 = v51;
      if (v49 >> 62)
      {
        OUTLINED_FUNCTION_67_6(v49 & 0xFFFFFFFFFFFFFF8);
        v52 = sub_268B382A4();
      }

      else
      {
        v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v52 == 1)
      {

        OUTLINED_FUNCTION_26_17();
        if (!v58)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v31, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v159 = v210;
        v160(v210);
        v161 = sub_268B37A34();
        v162 = sub_268B37EC4();
        if (OUTLINED_FUNCTION_19(v162))
        {
          v163 = OUTLINED_FUNCTION_14();
          *v163 = 0;
          _os_log_impl(&dword_2688BB000, v161, v159, "Single device in group, adding it to grouped device list", v163, 2u);
          OUTLINED_FUNCTION_15_25();
        }

        OUTLINED_FUNCTION_66_7();
        v164(v210, v31);
        OUTLINED_FUNCTION_53_8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_30();
          OUTLINED_FUNCTION_41_7(v192);
        }

        OUTLINED_FUNCTION_42_11();
        v11 = *(v165 + 16);
        v166 = *(v165 + 24);
        v32 = (v11 + 1);
        if (v11 >= v166 >> 1)
        {
          OUTLINED_FUNCTION_23_11(v166);
          OUTLINED_FUNCTION_55_9();
          OUTLINED_FUNCTION_41_7(v193);
        }

        OUTLINED_FUNCTION_42_11();
        *(v167 + 16) = v32;
        v168 = v167 + 16 * v11;
        *(v168 + 32) = v209;
        *(v168 + 40) = 1;
        OUTLINED_FUNCTION_73_6();
        goto LABEL_3;
      }

      v53 = 0;
      v243 = v41;
      v230 = (v49 & 0xFFFFFFFFFFFFFF8);
      v54 = v228;
      v238 = v50;
      v240 = v49;
      while (1)
      {
        v241 = v5;
        if (v50 == v53)
        {
          break;
        }

        if (v239)
        {
          v55 = MEMORY[0x26D625BD0](v53, v49);
        }

        else
        {
          if (v53 >= *(v230 + 2))
          {
            goto LABEL_146;
          }

          v55 = *(v49 + 8 * v53 + 32);
        }

        v56 = v55;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_144;
        }

        if ((sub_26898580C() & 1) == 0)
        {
          goto LABEL_36;
        }

        v57 = sub_268984D14();
        OUTLINED_FUNCTION_26_17();
        if (!v58)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v31, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v59(v54);
        v60 = v56;
        v11 = v54;
        v61 = sub_268B37A34();
        v62 = sub_268B37F04();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = v226;
          *(v63 + 4) = v60;
          *v64 = v60;
          *(v63 + 12) = 1024;
          v11 = v60;
          v31 = sub_268984D14();

          *(v63 + 14) = v31 & 1;
          *(v63 + 18) = 1024;
          *(v63 + 20) = v57 & 1;
          _os_log_impl(&dword_2688BB000, v61, v62, "Device %@ is silent primary, isTV: %{BOOL}d. keepSilentPrimary: %{BOOL}d", v63, 0x18u);
          sub_2688EF38C(v64, &qword_2802A6420, &unk_268B3C680);
          OUTLINED_FUNCTION_12_26();
          v54 = v228;
          OUTLINED_FUNCTION_12();
        }

        else
        {

          v61 = v60;
        }

        v2 = v234;

        OUTLINED_FUNCTION_66_7();
        v65(v54, v31);
        v7 = 0x2802A4000;
        if ((v57 & 1) == 0)
        {
        }

        else
        {
LABEL_36:
          v11 = &v243;
          sub_268B38214();
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        v49 = v240;
        v5 = v241;
        v50 = v238;
        ++v53;
      }

      v66 = v243;
      v67 = sub_2688EFD0C();
      if (!v67)
      {

        OUTLINED_FUNCTION_26_17();
        v15 = v220;
        if (!v58)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v31, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v83 = v208;
        v84(v208);
        v11 = v83;
        v32 = sub_268B37A34();
        v85 = sub_268B37EE4();
        v86 = OUTLINED_FUNCTION_19(v85);
        v5 = v241;
        if (v86)
        {
          v87 = OUTLINED_FUNCTION_14();
          *v87 = 0;
          _os_log_impl(&dword_2688BB000, v32, v83, "No devices found in group after final primary filtration. Skipping this group", v87, 2u);
          OUTLINED_FUNCTION_15_25();
        }

        OUTLINED_FUNCTION_87_5();
        OUTLINED_FUNCTION_66_7();
        v88(v83, v31);
        v7 = 0x2802A4000;
        goto LABEL_96;
      }

      v68 = v67;
      sub_2688EFD10();
      v69 = v214;
      v239 = v66 & 0xC000000000000001;
      if ((v66 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x26D625BD0](0, v66);
      }

      else
      {
        v70 = *(v66 + 4);
      }

      v205 = v70;
      OUTLINED_FUNCTION_26_17();
      if (!v58)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v31, qword_2802CDA10);
      v71 = *v236;
      v224 = v72;
      v230 = v71;
      v71(v69);

      v73 = sub_268B37A34();
      v11 = sub_268B37F04();

      v74 = OUTLINED_FUNCTION_210();
      v238 = v66;
      if (v74)
      {
        OUTLINED_FUNCTION_172_0();
        v75 = v69;
        v76 = OUTLINED_FUNCTION_53_1();
        v243 = v76;
        *v7 = v218;
        v77 = type metadata accessor for Device();
        v78 = MEMORY[0x26D6256F0](v66, v77);
        v80 = sub_26892CDB8(v78, v79, &v243);
        v66 = v238;

        *(v7 + 4) = v80;
        OUTLINED_FUNCTION_56_8(&dword_2688BB000, v73, v11, "Devices in group after silent primary filtration: %s", v205);
        __swift_destroy_boxed_opaque_existential_0Tm(v76);
        OUTLINED_FUNCTION_12_26();
        OUTLINED_FUNCTION_20_2();

        v81 = *v237;
        v82 = v75;
      }

      else
      {

        v81 = *v237;
        v82 = v69;
      }

      v223 = v81;
      v81(v82, v31);
      v5 = v215;
      v7 = &selRef_groupLeader;
      v89 = 0;
LABEL_53:
      if (v68 != v89)
      {
        break;
      }

      OUTLINED_FUNCTION_2_36();
      v95();
      v96 = v235;

      v97 = sub_268B37A34();
      v11 = sub_268B37ED4();

      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v98 = OUTLINED_FUNCTION_53_1();
        v244 = v96;
        v245[0] = v98;
        OUTLINED_FUNCTION_10_28();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
        v99 = sub_268B37C24();
        v101 = sub_26892CDB8(v99, v100, v245);

        *(&selRef_groupLeader + 4) = v101;
        OUTLINED_FUNCTION_56_8(&dword_2688BB000, v97, v11, "Grouping devices in group %s", v205);
        __swift_destroy_boxed_opaque_existential_0Tm(v98);
        OUTLINED_FUNCTION_12_26();
        OUTLINED_FUNCTION_20_2();
      }

      OUTLINED_FUNCTION_6_41();
      v102();
      v103 = v221;
      v245[0] = MEMORY[0x277D84FA0];
      v104 = v238;
      if (v68 < 1)
      {
        __break(1u);
        goto LABEL_151;
      }

      v105 = 0;
      v106 = 7104878;
      if (v235)
      {
        v106 = v229;
      }

      v229 = v106;
      v107 = 0xE300000000000000;
      if (v235)
      {
        v107 = v235;
      }

      v240 = v107;
      do
      {
        if (v239)
        {
          v108 = OUTLINED_FUNCTION_192();
          v109 = MEMORY[0x26D625BD0](v108);
        }

        else
        {
          v109 = v104[v105 + 4];
        }

        v110 = v109;
        sub_268988568(v109);
        if (v111)
        {
          sub_268ADD5F8(&v243);
        }

        else
        {
          OUTLINED_FUNCTION_2_36();
          v112();

          v113 = v110;
          v114 = sub_268B37A34();
          v115 = sub_268B37ED4();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = OUTLINED_FUNCTION_238();
            swift_slowAlloc();
            v243 = OUTLINED_FUNCTION_118_0();
            *v116 = v217;

            v31 = v240;
            v117 = sub_26892CDB8(v229, v240, &v243);

            *(v116 + 4) = v117;
            v2 = v234;
            *(v116 + 12) = 2112;
            *(v116 + 14) = v113;
            *v103 = v113;
            v118 = v113;
            _os_log_impl(&dword_2688BB000, v114, v115, "Group %s: Skipping context %@", v116, 0x16u);
            sub_2688EF38C(v103, &qword_2802A6420, &unk_268B3C680);
            OUTLINED_FUNCTION_12_26();
            OUTLINED_FUNCTION_36_13();
            v103 = v221;
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          else
          {
          }

          OUTLINED_FUNCTION_6_41();
          v119();
          v104 = v238;
        }

        ++v105;
      }

      while (v68 != v105);
      v15 = sub_268AD47A8(v245[0]);

      OUTLINED_FUNCTION_2_36();
      v120();

      v121 = sub_268B37A34();
      v122 = sub_268B37F04();

      if (OUTLINED_FUNCTION_210())
      {
        OUTLINED_FUNCTION_172_0();
        v243 = OUTLINED_FUNCTION_118_0();
        *v103 = v218;
        v123 = MEMORY[0x26D6256F0](v15, MEMORY[0x277D837D0]);
        v125 = sub_26892CDB8(v123, v124, &v243);

        *(v103 + 4) = v125;
        v2 = v234;
        OUTLINED_FUNCTION_204(&dword_2688BB000, v121, v122, "Unique rooms in group: %s", v205);
        OUTLINED_FUNCTION_36_13();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12_26();
      }

      OUTLINED_FUNCTION_6_41();
      v126();
      v5 = v241;
      v7 = 0x2802A4000;
      v127 = v15[2];
      if (v127)
      {
        v169 = v15[5];
        v239 = v15[4];
        v170 = v206;
        OUTLINED_FUNCTION_2_36();
        v171();

        v230 = v169;

        v172 = sub_268B37A34();
        v173 = sub_268B37ED4();

        if (OUTLINED_FUNCTION_210())
        {
          v174 = OUTLINED_FUNCTION_238();
          v243 = swift_slowAlloc();
          *v174 = v217;
          v175 = sub_26892CDB8(v229, v240, &v243);

          *(v174 + 4) = v175;
          *(v174 + 12) = 2080;
          v176 = MEMORY[0x26D6256F0](v15, MEMORY[0x277D837D0]);
          v178 = v177;

          v179 = sub_26892CDB8(v176, v178, &v243);

          *(v174 + 14) = v179;
          _os_log_impl(&dword_2688BB000, v172, v173, "Group %s: unique rooms: %s", v174, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_12_8();
          v7 = 0x2802A4000;
          OUTLINED_FUNCTION_12();

          v180 = v170;
          v181 = v233;
        }

        else
        {

          v180 = v170;
          v181 = v31;
        }

        v223(v180, v181);
        v182 = v205;
        sub_268ADA198();
        v32 = v183;

        sub_268AE1114(v239, v230, v32);
        OUTLINED_FUNCTION_53_8();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_74_6();
        if ((v184 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_30();
          OUTLINED_FUNCTION_41_7(v194);
        }

        v5 = v241;
        OUTLINED_FUNCTION_42_11();
        v187 = *(v185 + 16);
        v186 = *(v185 + 24);
        v11 = v187 + 1;
        if (v187 >= v186 >> 1)
        {
          OUTLINED_FUNCTION_23_11(v186);
          OUTLINED_FUNCTION_55_9();
          OUTLINED_FUNCTION_41_7(v195);
        }

        OUTLINED_FUNCTION_87_5();
        OUTLINED_FUNCTION_42_11();
        *(v188 + 16) = v11;
        v189 = v188 + 16 * v187;
        *(v189 + 32) = v32;
        *(v189 + 40) = v127;
        v31 = v233;
        goto LABEL_110;
      }

      v11 = v216;
      OUTLINED_FUNCTION_2_36();
      v128();
      v32 = sub_268B37A34();
      v129 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v129))
      {
        v130 = OUTLINED_FUNCTION_172_0();
        *v130 = v207;
        *(v130 + 4) = 0;
        OUTLINED_FUNCTION_60_5(&dword_2688BB000, v32, v11, "Error getting the first room name in a group. groupRoomCount %ld...skipping this group");
        OUTLINED_FUNCTION_15_25();
      }

      OUTLINED_FUNCTION_87_5();
      OUTLINED_FUNCTION_6_41();
      v131();
      OUTLINED_FUNCTION_74_6();
LABEL_96:
      OUTLINED_FUNCTION_73_6();
      v39 = v225;
      v37 = v227;
    }

    if (v239)
    {
      v90 = MEMORY[0x26D625BD0](v89, v66);
    }

    else
    {
      if (v89 >= *(v66 + 2))
      {
        goto LABEL_147;
      }

      v90 = *(v66 + v89 + 4);
    }

    v15 = v90;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_145;
    }

    v91 = [v90 context];
    if (!v91 || (v92 = v91, v11 = [v91 proximity], v92, v11 - 1 < 4))
    {
      v93 = [v15 context];
      if (v93)
      {
        v94 = v93;
        v11 = [v93 proximity];

        if (v11 - 2 >= 3)
        {
          if (v11)
          {
            v138 = v2;
            if (v11 != 1)
            {
              break;
            }

            goto LABEL_102;
          }
        }
      }

      ++v89;
      v66 = v238;
      goto LABEL_53;
    }

    v138 = v2;
    if (!v11)
    {
LABEL_102:

      v139 = v213;
      OUTLINED_FUNCTION_2_36();
      v140();
      v141 = v235;

      v142 = sub_268B37A34();
      v143 = sub_268B37EC4();

      v144 = OUTLINED_FUNCTION_210();
      v5 = v241;
      if (v144)
      {
        OUTLINED_FUNCTION_172_0();
        v145 = OUTLINED_FUNCTION_53_1();
        v244 = v141;
        v245[0] = v145;
        OUTLINED_FUNCTION_10_28();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
        v146 = sub_268B37C24();
        v148 = sub_26892CDB8(v146, v147, v245);

        *(&selRef_groupLeader + 4) = v148;
        OUTLINED_FUNCTION_56_8(&dword_2688BB000, v142, v143, "Group %s has primary or immediate device. Adding it.", v205);
        __swift_destroy_boxed_opaque_existential_0Tm(v145);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_20_2();

        v149 = v213;
        v150 = v233;
      }

      else
      {

        v149 = v139;
        v150 = v31;
      }

      v223(v149, v150);
      v7 = 0x2802A4000;
      sub_268ADA198();
      v32 = v151;
      OUTLINED_FUNCTION_53_8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = v138;
      v153 = v205;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_16_30();
        OUTLINED_FUNCTION_41_7(v190);
      }

      OUTLINED_FUNCTION_42_11();
      v156 = *(v154 + 16);
      v155 = *(v154 + 24);
      v11 = v156 + 1;
      if (v156 >= v155 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v155);
        OUTLINED_FUNCTION_55_9();
        OUTLINED_FUNCTION_41_7(v191);
      }

      OUTLINED_FUNCTION_87_5();
      OUTLINED_FUNCTION_42_11();
      *(v157 + 16) = v11;
      v158 = v157 + 16 * v156;
      *(v158 + 32) = v32;
      *(v158 + 40) = 1;
      v31 = v233;
      OUTLINED_FUNCTION_74_6();
LABEL_110:
      OUTLINED_FUNCTION_73_6();
      v37 = v227;
      continue;
    }

    break;
  }

LABEL_151:
  v243 = v11;
  sub_268B38474();
  __break(1u);
}

id sub_268AD9ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 8) < 2)
  {
    goto LABEL_6;
  }

  sub_268988580(v8);
  if (!v9)
  {
    sub_268988568(v8);
  }

  sub_268AD7AE8();
  v11 = v10;
  v13 = v12;

  if (v13)
  {
    sub_268AE1114(v11, v13, v8);
LABEL_6:
    *a2 = v8;
    return v8;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v15, v4);
  v16 = sub_268B37A34();
  v17 = sub_268B37EE4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Error generating group name...skipping this group", v18, 2u);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  *a2 = 0;
  return result;
}

BOOL sub_268AD9D10(void *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268B3BBA0;
  *(v7 + 32) = a1;
  v8 = a1;
  sub_268AD4D4C(2, v7);

  sub_268AD550C();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2688EFD0C();

  sub_2688EFD0C();
  sub_26894AE34();
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v11, v3);

  v12 = sub_268B37A34();
  v13 = sub_268B37EC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446210;
    v16 = type metadata accessor for Device();
    v17 = MEMORY[0x26D6256F0](v10, v16);
    v19 = v18;

    v20 = sub_26892CDB8(v17, v19, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2688BB000, v12, v13, "Most recent resumable context in short window = %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x26D6266E0](v15, -1, -1);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
  v21 = sub_2688EFD0C();

  return v21 != 0;
}

BOOL sub_268ADA06C(void *a1)
{
  if (!sub_268AD9D10(a1))
  {
    return 0;
  }

  v3 = *(v1 + 144);
  v4 = [a1 context];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 proximity];
  }

  else
  {
    v6 = 0;
  }

  return sub_268AD3DDC(v6, v5 == 0, v3);
}

BOOL sub_268ADA114(void *a1)
{
  v2 = *(v1 + 136);
  v3 = [a1 context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 proximity];
  }

  else
  {
    v5 = 0;
  }

  return sub_268AD3DDC(v5, v4 == 0, v2);
}

void sub_268ADA198()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v44 = v4;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v41 = v6;
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v43 = v8 - v7;
  OUTLINED_FUNCTION_9();
  v9 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  (*(v11 + 104))(v14 - v13, *MEMORY[0x277D5F640], v9);
  v16 = sub_268920878(v1, v15);
  (*(v11 + 8))(v15, v9);
  if (v16)
  {
    v17 = sub_2688EFD0C();
    v18 = 0;
    v19 = v3 & 0xC000000000000001;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17 == v18)
      {
        goto LABEL_29;
      }

      if (v19)
      {
        v21 = MEMORY[0x26D625BD0](v18, v3);
      }

      else
      {
        if (v18 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v21 = *(v3 + 8 * v18 + 32);
      }

      v16 = v21;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v22 = [v21 context];
      if (v22)
      {
        v23 = sub_268AE10A4(v22);
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v26 = [v44 context];
      if (!v26)
      {
        break;
      }

      v27 = sub_268AE10A4(v26);
      if (!v25)
      {
        if (v28)
        {
LABEL_23:

          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (!v28)
      {
        goto LABEL_23;
      }

      if (v23 == v27 && v25 == v28)
      {

LABEL_25:
        if (sub_268984D14())
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v30 = sub_268B38444();

      if (v30)
      {
        goto LABEL_25;
      }

LABEL_26:

LABEL_27:
      ++v18;
    }

    if (v25)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_29:
  v16 = v44;
LABEL_30:
  v20 = v41;
  v19 = v42;
  if (qword_2802A4F30 != -1)
  {
LABEL_36:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v19, qword_2802CDA10);
  (*(v20 + 16))(v43);
  v31 = v16;
  v32 = sub_268B37A34();
  v33 = sub_268B37EC4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_172_0();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    OUTLINED_FUNCTION_44_9();
    _os_log_impl(v37, v38, v39, v40, v34, 0xCu);
    sub_2688EF38C(v35, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_12();
  }

  (*(v20 + 8))(v43, v19);
  OUTLINED_FUNCTION_23();
}

void sub_268ADA55C()
{
  OUTLINED_FUNCTION_26();
  v52 = v0;
  v61 = v2;
  v62 = v3;
  v5 = v4;
  v7 = v6;
  sub_268B34714();
  OUTLINED_FUNCTION_1();
  v59 = v9;
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v56 = v11 - v10;
  OUTLINED_FUNCTION_9();
  sub_268B37474();
  OUTLINED_FUNCTION_1();
  v57 = v13;
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v55 = v15 - v14;
  OUTLINED_FUNCTION_9();
  v63 = sub_268B37434();
  OUTLINED_FUNCTION_1();
  v54 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v53 = v19 - v18;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - v25;
  v27 = sub_268B371B4();
  sub_268B371C4();
  v28 = sub_26892E340(v26, v27);
  v30 = v29;

  v31 = *(v22 + 8);
  v31(v26, v20);
  if (!v30)
  {
    goto LABEL_7;
  }

  if (v28 == v7 && v30 == v5)
  {

    goto LABEL_15;
  }

  v33 = OUTLINED_FUNCTION_57_6();

  if (v33)
  {
LABEL_15:
    OUTLINED_FUNCTION_89_7();
    v40 = MEMORY[0x277D5F830];
    goto LABEL_18;
  }

LABEL_7:
  v34 = sub_268B371B4();
  sub_268B371D4();
  v35 = sub_26892E340(v1, v34);
  v37 = v36;

  v31(v1, v20);
  if (!v37)
  {
LABEL_13:

    goto LABEL_20;
  }

  if (v35 == v7 && v37 == v5)
  {
  }

  else
  {
    v39 = OUTLINED_FUNCTION_57_6();

    if ((v39 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_89_7();
  v40 = MEMORY[0x277D5F838];
LABEL_18:
  v42 = v53;
  v41 = v54;
  (*(v54 + 104))(v53, *v40, v63);
  v44 = v57;
  v43 = v58;
  v45 = v55;
  (*(v57 + 104))(v55, *MEMORY[0x277D5F8A8], v58);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  v46 = v56;
  sub_268B34C94();
  sub_268B376E4();
  v48 = v47;
  (*(v59 + 8))(v46, v60);
  (*(v44 + 8))(v45, v43);
  (*(v41 + 8))(v42, v63);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88E8, &qword_268B50378);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_268B3BBC0;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_268AE1C0C();
    v50 = v62;
    *(v49 + 32) = v61;
    *(v49 + 40) = v50;

    OUTLINED_FUNCTION_103();
    sub_268B37C04();
  }

LABEL_20:
  OUTLINED_FUNCTION_23();
}

void sub_268ADA9B8()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;

  v8 = sub_268AD4078(v7);
  v68 = MEMORY[0x277D84F90];
  v9 = v8 + 8;
  OUTLINED_FUNCTION_7_35();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v59 = (v2 + 8);
  v15 = 0;
  v64 = v14;
  v65 = v8 + 8;
  v61 = v6;
  v62 = v0;

  if (v12)
  {
LABEL_6:
    while (1)
    {
      OUTLINED_FUNCTION_69_8();
      v19 = *v17;
      v18 = v17[1];
      v20 = v8[2];

      if (!v20)
      {
        break;
      }

      v66 = (v12 - 1) & v12;
      v21 = sub_268A759D0(v19);
      if ((v22 & 1) != 0 && (v23 = *(v8[7] + 8 * v21), v24 = *(v23 + 16), v24 >= 2))
      {
        v25 = qword_2802A4F30;

        if (v25 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        __swift_project_value_buffer(v0, qword_2802CDA10);
        OUTLINED_FUNCTION_11_32();
        v26(v6);

        v27 = sub_268B37A34();
        v28 = sub_268B37ED4();

        v63 = v23;
        if (os_log_type_enabled(v27, v28))
        {
          v29 = OUTLINED_FUNCTION_172_0();
          v30 = OUTLINED_FUNCTION_173_0();
          v67 = v30;
          *v29 = 136315138;
          if (v18)
          {
            v31 = v19;
          }

          else
          {
            v31 = 7104878;
          }

          if (!v18)
          {
            v18 = 0xE300000000000000;
          }

          v32 = sub_26892CDB8(v31, v18, &v67);

          *(v29 + 4) = v32;
          OUTLINED_FUNCTION_60_5(&dword_2688BB000, v27, v28, "Adding device types for devices in room %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          OUTLINED_FUNCTION_20_2();
          v23 = v63;
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        (*v59)(v6, v0);
        v67 = MEMORY[0x277D84F90];
        sub_2689447AC(0, v24, 0);
        v45 = v67;
        v46 = (v23 + 40);
        do
        {
          v47 = *v46;
          v48 = *(v46 - 1);
          sub_268988574(v48);
          sub_268988580(v48);
          if (!v49)
          {
            sub_268988568(v48);
          }

          sub_268ADA55C();
          v51 = v50;

          if (v51)
          {
            v52 = sub_268B37BC4();
          }

          else
          {
            v52 = 0;
          }

          v53 = OUTLINED_FUNCTION_78_8();
          [v53 v54];

          v67 = v45;
          v56 = *(v45 + 16);
          v55 = *(v45 + 24);
          if (v56 >= v55 >> 1)
          {
            v58 = OUTLINED_FUNCTION_23_11(v55);
            sub_2689447AC(v58, v56 + 1, 1);
            v45 = v67;
          }

          v46 += 2;
          *(v45 + 16) = v56 + 1;
          v57 = v45 + 16 * v56;
          *(v57 + 32) = v48;
          *(v57 + 40) = v47;
          --v24;
        }

        while (v24);

        sub_2689849D8(v45);
        v6 = v61;
        v0 = v62;
        v8 = v60;
      }

      else
      {
        if (!v8[2])
        {
          break;
        }

        v33 = sub_268A759D0(v19);
        v35 = v34;

        if ((v35 & 1) == 0)
        {
          goto LABEL_46;
        }

        v36 = *(v8[7] + 8 * v33);
        v37 = *(v36 + 16);
        v38 = v68;
        v39 = *(v68 + 16);
        if (__OFADD__(v39, v37))
        {
          goto LABEL_47;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v40 = *(v38 + 24) >> 1, v40 < v39 + v37))
        {
          sub_268987D58();
          v38 = v41;
          v40 = *(v41 + 24) >> 1;
        }

        if (*(v36 + 16))
        {
          if (v40 - *(v38 + 16) < v37)
          {
            goto LABEL_49;
          }

          swift_arrayInitWithCopy();

          if (v37)
          {
            v42 = *(v38 + 16);
            v43 = __OFADD__(v42, v37);
            v44 = v42 + v37;
            if (v43)
            {
              goto LABEL_50;
            }

            *(v38 + 16) = v44;
          }
        }

        else
        {

          if (v37)
          {
            goto LABEL_48;
          }
        }

        v68 = v38;
      }

      v14 = v64;
      v9 = v65;
      v12 = v66;
      if (!v66)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        OUTLINED_FUNCTION_23();
        return;
      }

      v12 = v9[v16];
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_6;
      }
    }

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
  }

  __break(1u);
}