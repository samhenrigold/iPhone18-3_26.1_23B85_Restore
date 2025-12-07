uint64_t OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_12(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_31_14@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 40);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_31_15()
{
  *(v0 + 264) = *(v0 + 56);
  *(v0 + 280) = *(v0 + 72);
  *(v0 + 89) = *(v0 + 88);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
}

void OUTLINED_FUNCTION_31_16(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);

  sub_267DB7C44();
}

uint64_t OUTLINED_FUNCTION_31_20()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  v13[60] = a1;
  v13[61] = a2;
  v13[62] = *(a12 + 96);

  return memcpy(v13 + 2, a13, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_31_22(uint64_t a1)
{

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_31_24(uint64_t a1)
{

  return sub_267EF78C8();
}

uint64_t OUTLINED_FUNCTION_31_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_267EF9128();
}

id OUTLINED_FUNCTION_92_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_9_11()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_9_14(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_9_16(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_267C956D0(sub_267C96444, a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_9_23(uint64_t a1)
{

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_9_25(uint64_t a1)
{
  v2[29] = *(a1 + v1 + 32);
  v2[30] = *(a1 + v1 + 40);
  v2[31] = *(a1 + v1 + 48);
  v2[32] = *(a1 + v1 + 56);
}

uint64_t OUTLINED_FUNCTION_9_26()
{
}

double OUTLINED_FUNCTION_9_29()
{
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_9_30(uint64_t a1@<X8>)
{

  sub_267C72494(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_9_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_37@<X0>(uint64_t a1@<X0>, char a2@<W8>, char a3, char a4, char a5)
{
  v11 = *(v5 + 80) & 1;
  v12 = *(v5 + 48) & 1;

  return sub_267C01144(a1, a2 & 1, v11, v6, v12, v7 & 1, v8 & 1, v9 & 1, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_9_39()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_40()
{
}

id OUTLINED_FUNCTION_9_41@<X0>(void *a1@<X8>)
{
  *(v1 + 472) = a1;

  return a1;
}

id OUTLINED_FUNCTION_9_42(int a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return [v13 a2];
}

uint64_t OUTLINED_FUNCTION_9_43(uint64_t a1)
{

  return sub_267EF89B8();
}

double OUTLINED_FUNCTION_9_44()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 5;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_46(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_48()
{
}

uint64_t OUTLINED_FUNCTION_9_51(uint64_t a1)
{

  return sub_267EF89F8();
}

BOOL OUTLINED_FUNCTION_9_53(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_56(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

void *OUTLINED_FUNCTION_9_60()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v2);
}

void OUTLINED_FUNCTION_2_18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

void OUTLINED_FUNCTION_2_24()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_2_31(uint64_t a1)
{

  return sub_267EF9DA8();
}

void OUTLINED_FUNCTION_2_34(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 65);
  *(v1 + 56) = a1;
  v5 = *(v1 + 64);
  *(v1 + 64) = 0;
  *(v1 + 65) = 1;

  sub_267D240BC(v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_267EF9C98();
}

uint64_t OUTLINED_FUNCTION_2_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_267EF9C98();
}

uint64_t OUTLINED_FUNCTION_2_38@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_267EF9E18();
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF3F48();
}

uint64_t OUTLINED_FUNCTION_2_40()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_2_41(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_267BA33E8(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_46()
{
  v3 = v0[114];
  *(v1 - 176) = v0[117];
  *(v1 - 168) = v3;
  v4 = v0[108];
  *(v1 - 160) = v0[111];
  *(v1 - 152) = v4;
  v5 = v0[104];
  *(v1 - 144) = v0[105];
  *(v1 - 136) = v5;
  v6 = v0[99];
  *(v1 - 128) = v0[102];
  *(v1 - 120) = v6;
  *(v1 - 112) = v0[96];
}

uint64_t OUTLINED_FUNCTION_2_47()
{

  return sub_267C2FB6C(v2 - 128, v2 - 192, v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF3F98();
}

uint64_t OUTLINED_FUNCTION_2_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF3F48();
}

uint64_t OUTLINED_FUNCTION_2_53(uint64_t a1)
{

  return sub_267EF92D8();
}

uint64_t OUTLINED_FUNCTION_2_54(uint64_t a1, uint64_t a2)
{

  return sub_267EF9948();
}

void OUTLINED_FUNCTION_2_59(uint8_t *buf)
{
  *buf = 0;

  _os_log_impl(v2, v1, v4, v3, buf, 2u);
}

uint64_t OUTLINED_FUNCTION_2_65()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_2_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF3F48();
}

uint64_t OUTLINED_FUNCTION_2_71()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_72(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_2_76()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
  v4 = v3 + *(v2 + 20);

  return sub_267BD3DDC(v0, v4);
}

uint64_t OUTLINED_FUNCTION_2_78(uint64_t a1)
{

  return sub_267EF9D88();
}

uint64_t sub_267BAEBEC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t OUTLINED_FUNCTION_22_6()
{
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_11@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_22_12()
{
}

uint64_t OUTLINED_FUNCTION_22_13()
{
}

uint64_t OUTLINED_FUNCTION_22_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return sub_267EF3B08();
}

uint64_t OUTLINED_FUNCTION_22_17()
{
}

uint64_t OUTLINED_FUNCTION_143()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_22_23(uint64_t a1)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_22_29()
{
  v2[14].n128_u64[0] = v1;
  v2[14].n128_u64[1] = v0;
  result = v2[1];
  v2[11] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_33()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
}

uint64_t OUTLINED_FUNCTION_22_37()
{

  return sub_267EF4708();
}

uint64_t OUTLINED_FUNCTION_22_38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_22_40()
{
  sub_267B9A5E8((v0 + 16), *(v0 + 224));
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_267B9F98C(v1 + v0, v2, v3);
}

void *OUTLINED_FUNCTION_44_6()
{

  return __swift_project_boxed_opaque_existential_0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1)
{
  *(v1 + 1304) = a1;

  return sub_267C90570();
}

uint64_t OUTLINED_FUNCTION_44_17(uint64_t a1, void *a2)
{
  *a2 = 0xD00000000000002CLL;
  a2[1] = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_44_20()
{

  sub_267BB78E4(v0 & v1, 0, 0);
}

uint64_t OUTLINED_FUNCTION_44_22(uint64_t a1)
{
  v3 = v2[103];
  v4 = v2[102];
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  __swift_destroy_boxed_opaque_existential_0(v2 + 14);
  __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t OUTLINED_FUNCTION_44_25(uint64_t a1, uint64_t a2, ...)
{

  return sub_267EF4C98();
}

double OUTLINED_FUNCTION_62_8()
{
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_11(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_62_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 48) = a2;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_14()
{
}

uint64_t OUTLINED_FUNCTION_53_7()
{

  return sub_267EF2D18();
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_10()
{
}

void OUTLINED_FUNCTION_53_12(uint64_t a1@<X8>)
{
  *(v1 + 32) = a1;

  sub_267C7220C(0, v2, 0);
}

void OUTLINED_FUNCTION_53_13()
{
  *v1 = v3;
  v1[7] = v4;
  v1[8] = v2;
  v1[10] = v0;
}

void *OUTLINED_FUNCTION_33_0()
{
  v2 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_0((v0 - 128), v2);
}

void OUTLINED_FUNCTION_53_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[24] = 0;
  v12[25] = 0;
  v12[26] = a12;
  v12[27] = a10;
}

double OUTLINED_FUNCTION_53_17()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  return result;
}

void OUTLINED_FUNCTION_53_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_53_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_267BA33E8(v16, v17, va);
}

void OUTLINED_FUNCTION_53_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

id OUTLINED_FUNCTION_53_24(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

uint64_t OUTLINED_FUNCTION_19_1()
{
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_19_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
  v4 = v3 + *(v2 + 20);

  return sub_267BD3DDC(v1, v4);
}

uint64_t OUTLINED_FUNCTION_19_11()
{
}

uint64_t OUTLINED_FUNCTION_19_14(void *a1)
{
  v5 = *(v3 - 128);
  a1[2] = v1;
  a1[3] = v5;
  a1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_22()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_26(void *a1@<X8>)
{
  v1[29] = a1[5];
  v1[30] = a1[6];
  v1[31] = a1[7];
  v1[32] = a1[8];
}

uint64_t OUTLINED_FUNCTION_19_28@<X0>(uint64_t a1@<X8>)
{

  return sub_267DCE628(v1 + a1, type metadata accessor for TimedSentMessageContext);
}

uint64_t OUTLINED_FUNCTION_19_29()
{

  return sub_267EF8238();
}

uint64_t OUTLINED_FUNCTION_19_30()
{
  sub_267B9A5E8(v0, v1 + 376);
  v2 = *(v1 + 400);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 + 376, v2);
}

void *OUTLINED_FUNCTION_19_32()
{
  v2 = *(v0 + 112);

  return __swift_project_boxed_opaque_existential_0((v0 + 88), v2);
}

uint64_t OUTLINED_FUNCTION_19_34()
{
  __swift_destroy_boxed_opaque_existential_0((v1 - 136));
  __swift_destroy_boxed_opaque_existential_0(v0 + 253);
  __swift_destroy_boxed_opaque_existential_0(v0 + 270);
  __swift_destroy_boxed_opaque_existential_0((v1 - 176));
  __swift_destroy_boxed_opaque_existential_0(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0(v0 + 197);
  __swift_destroy_boxed_opaque_existential_0(v0 + 202);
  __swift_destroy_boxed_opaque_existential_0(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0(v0 + 213);
  __swift_destroy_boxed_opaque_existential_0(v0 + 218);
  __swift_destroy_boxed_opaque_existential_0(v0 + 100);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 105);
}

uint64_t OUTLINED_FUNCTION_19_38()
{
}

uint64_t OUTLINED_FUNCTION_19_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return 0;
}

void OUTLINED_FUNCTION_19_47()
{

  sub_267C70CB0();
}

unint64_t sub_267BAFCAC()
{
  result = qword_28022BB40;
  if (!qword_28022BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BB40);
  }

  return result;
}

const char *sub_267BAFD08(char a1)
{
  result = "confirmation_context_training";
  switch(a1)
  {
    case 1:
      result = "blushing_phantom";
      break;
    case 2:
      result = "MessageEditing";
      break;
    case 3:
      result = "dialog_improvements_v4";
      break;
    case 4:
      result = "reading_intelligence";
      break;
    case 5:
      result = "flex";
      break;
    case 6:
      result = "SiriX";
      break;
    case 7:
      result = "correction_ui";
      break;
    case 8:
      result = "auto_send_auto_enable";
      break;
    case 9:
      result = "last_name_reduction_all_locales";
      break;
    case 10:
      result = "announce_check_in_messages";
      break;
    case 11:
      result = "Zelkova";
      break;
    case 12:
      result = "text_summarization";
      break;
    case 13:
      result = "CatchUp";
      break;
    case 14:
      result = "multilingual_message_reading";
      break;
    case 15:
      result = "smart_replies";
      break;
    case 16:
      result = "shareSheetSupport";
      break;
    case 17:
      result = "reaction_reading";
      break;
    case 18:
    case 19:
      result = "SMART";
      break;
    case 20:
      result = "send_later";
      break;
    case 21:
      result = "montara";
      break;
    case 22:
      result = "location_smart_reply";
      break;
    case 23:
      result = "photosSharing";
      break;
    case 24:
      result = "carplay_tapbacks";
      break;
    case 25:
      result = "carplay_tapbacks_voice_support";
      break;
    case 26:
      result = "photoPicker";
      break;
    case 27:
      result = "Solarium";
      break;
    case 28:
      result = "readingRequestSummarization";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return sub_267BB170C(v1 + 240, v1 + 304, v0, v2);
}

void *OUTLINED_FUNCTION_72_1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result[2] = v11;
  result[3] = v16;
  result[4] = v13;
  result[5] = v17;
  result[6] = v15;
  result[7] = v14;
  result[8] = a11;
  result[9] = v12;
  result[10] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_2()
{

  return sub_267EF8348();
}

void *OUTLINED_FUNCTION_72_3(void *result)
{
  result[2] = 0xD000000000000012;
  result[3] = v1;
  result[4] = 0xD000000000000022;
  result[5] = v2;
  return result;
}

id OUTLINED_FUNCTION_72_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);

  return v4;
}

void *OUTLINED_FUNCTION_72_13()
{

  return sub_267DF9C34(v1, v0);
}

uint64_t OUTLINED_FUNCTION_72_15()
{

  return sub_267EF78A8();
}

uint64_t OUTLINED_FUNCTION_72_16(char a1)
{

  return sub_267EF4128();
}

uint64_t OUTLINED_FUNCTION_97_3()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_267BBD0EC(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_97_5(char a1, char a2)
{
  *(v2 + 105) = a2;
  *(v2 + 104) = a1;
  return 0;
}

void OUTLINED_FUNCTION_97_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

unint64_t OUTLINED_FUNCTION_97_8()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_97_9()
{
}

uint64_t OUTLINED_FUNCTION_97_11()
{

  return sub_267EF9328();
}

uint64_t sub_267BB020C()
{
  v171 = v1;
  v3 = *(v1 + 928);
  v4 = *(v1 + 864);
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_83(v4 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state, v1 + 792);
  sub_267BC0ABC(v4 + v5, v3);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *(v1 + 928);
      v7 = *(v6 + 25);
      v8 = v6[1];
      *(v1 + 256) = *v6;
      *(v1 + 272) = v8;
      *(v1 + 281) = v7;
      sub_267E301F8(v1 + 256);
      v9 = v1 + 256;
      goto LABEL_61;
    case 1u:
      v59 = OUTLINED_FUNCTION_45_22();
      *(v1 + 160) = v61;
      *(v1 + 176) = v60;
      *(v1 + 185) = v59;
      sub_267BBF30C(v1 + 160, v1 + 208);
      if (*(v1 + 248))
      {
        sub_267BBF344(v1 + 208);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v62 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v62, qword_280240FB0);
        v63 = sub_267EF89F8();
        v64 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v64))
        {
          v65 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v65);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v66, v67, v68, v69, v70, 2u);
          OUTLINED_FUNCTION_26();
        }

        v71 = *(v1 + 920);

        sub_267BBF30C(v1 + 160, v71);
        OUTLINED_FUNCTION_26_0();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3(v4 + v5, v1 + 744);
        sub_267B9FF94(v71, v4 + v5);
        swift_endAccess();
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v1 + 936) = v72;
        *v72 = v73;
        v74 = sub_267E2F8B4;
        goto LABEL_51;
      }

      sub_267B9A5E8((v1 + 208), v1 + 584);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v137 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v137, qword_280240FB0);
      v138 = sub_267EF89F8();
      v139 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v139))
      {
        v140 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v140);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v141, v142, v143, v144, v145, 2u);
        OUTLINED_FUNCTION_26();
      }

      v146 = *(v1 + 864);

      sub_267B9AFEC(v1 + 584, v1 + 624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229208, &qword_267EFCB90);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_267EFCC90;
      OUTLINED_FUNCTION_76_12((v146 + 16));
      v148 = OUTLINED_FUNCTION_7_1();
      v149(v148);
      v150 = *(v146 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs);
      *(v1 + 728) = &type metadata for MessagesFeatureFlagsImpl;
      *(v1 + 736) = off_2878D1228;
      v151 = type metadata accessor for SearchForMessagesUnsupportedUseCaseCheckFlowStrategy();
      v152 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 704, &type metadata for MessagesFeatureFlagsImpl);
      v152[11] = &type metadata for MessagesFeatureFlagsImpl;
      v152[12] = off_2878D1228;
      sub_267B9A5E8((v1 + 664), (v152 + 2));
      v152[7] = v150;

      __swift_destroy_boxed_opaque_existential_0((v1 + 704));
      *(v147 + 56) = v151;
      *(v147 + 64) = &off_2878D7DC0;
      *(v147 + 32) = v152;
      OUTLINED_FUNCTION_76_12((v146 + 16));
      v153 = OUTLINED_FUNCTION_7_1();
      v154(v153);
      if (qword_2802286F0 != -1)
      {
        OUTLINED_FUNCTION_4_0(&qword_2802286F0);
      }

      v155 = *(v1 + 864);
      sub_267B9AFEC(qword_2802405A0, v1 + 544);
      v156 = sub_267EF72E8();
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 544, *(v1 + 568));
      *(v1 + 488) = &type metadata for CATProvider;
      *(v1 + 496) = &off_2878CE7A0;
      *(v1 + 448) = &type metadata for TTSUtil;
      *(v1 + 456) = &off_2878D0CB0;
      *(v1 + 424) = v156;
      *(v1 + 432) = &off_2878D0918;
      v157 = type metadata accessor for UnsupportedWithLowQualityVoiceOnWatchStrategy();
      v158 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 464, &type metadata for CATProvider);
      v159 = *__swift_mutable_project_boxed_opaque_existential_1(v1 + 424, &type metadata for TTSUtil);
      *(v158 + 80) = &type metadata for CATProvider;
      *(v158 + 88) = &off_2878CE7A0;
      *(v158 + 120) = &type metadata for TTSUtil;
      *(v158 + 128) = &off_2878D0CB0;
      *(v158 + 96) = v159;
      sub_267B9A5E8((v1 + 304), v158 + 16);
      __swift_destroy_boxed_opaque_existential_0((v1 + 424));
      __swift_destroy_boxed_opaque_existential_0((v1 + 464));
      __swift_destroy_boxed_opaque_existential_0((v1 + 544));
      *(v147 + 96) = v157;
      *(v147 + 104) = &off_2878CF9E8;
      *(v147 + 72) = v158;
      sub_267B9AFEC(v146 + 16, v1 + 384);
      type metadata accessor for RequestSupportCheckFlow();
      swift_allocObject();
      *(v1 + 840) = sub_267E90F8C((v1 + 624), v147, (v1 + 384));
      sub_267B9AFEC(v1 + 584, v1 + 344);
      OUTLINED_FUNCTION_46_19();
      v160 = swift_allocObject();
      *(v160 + 16) = v155;
      sub_267B9A5E8((v1 + 344), v160 + 24);
      sub_267BC1DB4(&qword_280229230, type metadata accessor for RequestSupportCheckFlow, &unk_267F0DCA8);

      sub_267EF3FC8();

      __swift_destroy_boxed_opaque_existential_0((v1 + 584));
      v9 = v1 + 160;
LABEL_61:
      sub_267BBF344(v9);
      goto LABEL_62;
    case 2u:
      v14 = OUTLINED_FUNCTION_45_22();
      *(v1 + 112) = v16;
      *(v1 + 128) = v15;
      *(v1 + 137) = v14;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v17 = sub_267EF8A08();
      __swift_project_value_buffer(v17, qword_280240FB0);
      v18 = sub_267EF89F8();
      v19 = sub_267EF95C8();
      if (os_log_type_enabled(v18, v19))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v25 = *(v1 + 920);
      v26 = *(v1 + 864);

      sub_267BBF30C(v1 + 112, v25);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v4 + v5, v1 + 768);
      sub_267B9FF94(v25, v4 + v5);
      swift_endAccess();
      OUTLINED_FUNCTION_76_12((v26 + 16));
      v27 = OUTLINED_FUNCTION_7_1();
      v28(v27);
      __swift_project_boxed_opaque_existential_0((v1 + 504), *(v1 + 528));
      OUTLINED_FUNCTION_7_1();
      v29 = sub_267EF3C58();
      __swift_destroy_boxed_opaque_existential_0((v1 + 504));
      if (v29)
      {
        v30 = sub_267EF89F8();
        v31 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v31))
        {
          v32 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v32);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v33, v34, v35, v36, v37, 2u);
          OUTLINED_FUNCTION_26();
        }

        v38 = type metadata accessor for MessagesPostPersonalDomainActivityNotificationFlowStrategy();
        v39 = OUTLINED_FUNCTION_49(v38);
        v170[3] = v38;
        v170[4] = sub_267BC1DB4(&qword_28022C568, type metadata accessor for MessagesPostPersonalDomainActivityNotificationFlowStrategy, &unk_267F0BF08);
        v170[0] = v39;
        v40 = sub_267EF33A8();
        OUTLINED_FUNCTION_97(v40);
        *(v1 + 816) = sub_267EF3398();
        sub_267EF3FE8();
        sub_267BBF344(v1 + 112);

LABEL_62:
        OUTLINED_FUNCTION_10_40();

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_89();

        __asm { BRAA            X1, X16 }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 944) = v72;
      *v72 = v134;
      v74 = sub_267E2FA1C;
LABEL_51:
      v72[1] = v74;
      OUTLINED_FUNCTION_89();

      return sub_267BBFC38();
    case 3u:
      v41 = OUTLINED_FUNCTION_45_22();
      *(v1 + 64) = v43;
      *(v1 + 80) = v42;
      *(v1 + 89) = v41;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v44 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
      v45 = sub_267EF89F8();
      v46 = sub_267EF95C8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v47);
        _os_log_impl(&dword_267B93000, v45, v46, "#SearchForMessagesFlow ready to start", v0, 2u);
        OUTLINED_FUNCTION_26();
      }

      sub_267BBFD44();
      v9 = v1 + 64;
      goto LABEL_61;
    case 4u:
      v10 = **(v1 + 928);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v11 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
      v12 = v10;
      v13 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_95();
      if (OUTLINED_FUNCTION_99())
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 5u:
      v10 = **(v1 + 928);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v75 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v75, qword_280240FB0);
      v76 = v10;
      v13 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_95();
      if (OUTLINED_FUNCTION_99())
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 6u:
      v77 = *(v1 + 928);
      v78 = *(v1 + 904);
      v79 = *(v1 + 880);
      v80 = *(v1 + 872);
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C898, &unk_267F0B870) + 48);
      v82 = *v77;
      v83 = v77[1];
      *(v1 + 41) = *(v77 + 25);
      *(v1 + 16) = v82;
      *(v1 + 32) = v83;
      (*(v79 + 32))(v78, v77 + v81, v80);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v84 = *(v1 + 880);
      v85 = *(v1 + 872);
      v86 = sub_267EF8A08();
      __swift_project_value_buffer(v86, qword_280240FB0);
      v87 = *(v84 + 16);
      v88 = OUTLINED_FUNCTION_61_0();
      v87(v88);
      v89 = sub_267EF89F8();
      v90 = sub_267EF95D8();
      v91 = OUTLINED_FUNCTION_10_2(v90);
      v92 = *(v1 + 896);
      if (v91)
      {
        v93 = *(v1 + 888);
        v94 = *(v1 + 880);
        v95 = *(v1 + 872);
        OUTLINED_FUNCTION_48();
        v169 = OUTLINED_FUNCTION_64_2();
        v170[0] = v169;
        *v85 = 136315138;
        (v87)(v93, v92, v95);
        v96 = sub_267EF9098();
        v98 = v97;
        v101 = *(v94 + 8);
        v100 = v94 + 8;
        v99 = v101;
        v101(v92, v95);
        v102 = sub_267BA33E8(v96, v98, v170);

        *(v85 + 4) = v102;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v103, v104, v105, v106, v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v169);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      else
      {
        v163 = *(v1 + 880);
        v164 = *(v1 + 872);

        v165 = *(v163 + 8);
        v100 = v163 + 8;
        v99 = v165;
        v165(v92, v164);
      }

      *(v1 + 960) = v99;
      *(v1 + 952) = v100;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 968) = v166;
      *v166 = v167;
      v166[1] = sub_267E2FB84;
      OUTLINED_FUNCTION_89();

      return sub_267BBF808();
    case 7u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v48 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
      v49 = sub_267EF89F8();
      v50 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v50))
      {
        v51 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v51);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v52, v53, v54, v55, v56, 2u);
        OUTLINED_FUNCTION_26();
      }

      v57 = *(v1 + 928);

      sub_267EF4018();
      v58 = v57;
      goto LABEL_49;
    case 8u:
      v10 = **(v1 + 928);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v108 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v108, qword_280240FB0);
      v109 = v10;
      v13 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_95();
      if (OUTLINED_FUNCTION_99())
      {
LABEL_42:
        OUTLINED_FUNCTION_48();
        v110 = OUTLINED_FUNCTION_55_0();
        v170[0] = v110;
        OUTLINED_FUNCTION_61_15(4.8149e-34);
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
        v112 = OUTLINED_FUNCTION_110_1(v111);
        sub_267BA33E8(v112, v113, v170);
        OUTLINED_FUNCTION_79();
        *(v2 + 4) = v4;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v114, v115, v116, v117, v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v110);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_29_1();
      }

LABEL_43:

      sub_267EF4018();
      goto LABEL_62;
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v119 = *(v1 + 864);
      v120 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v120, qword_280240FB0);

      v121 = sub_267EF89F8();
      v122 = sub_267EF95E8();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = *(v1 + 920);
        OUTLINED_FUNCTION_48();
        v124 = OUTLINED_FUNCTION_64_2();
        v170[0] = v124;
        *v119 = 136315138;
        sub_267BC0ABC(v4 + v5, v123);
        v125 = sub_267EF9098();
        v127 = sub_267BA33E8(v125, v126, v170);

        *(v119 + 4) = v127;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v128, v129, v130, v131, v132, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v124);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      v133 = *(v1 + 928);
      sub_267EF4018();
      v58 = v133;
LABEL_49:
      sub_267B9F658(v58);
      goto LABEL_62;
  }
}

uint64_t sub_267BB1160()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_46_19();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void OUTLINED_FUNCTION_61_5(uint64_t a1@<X8>)
{
  v2 = *(v1 + 978);
  *(v1 + 936) = a1;
  *(v1 + 980) = v2;
}

uint64_t OUTLINED_FUNCTION_61_8(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_323(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void *OUTLINED_FUNCTION_61_11(uint64_t a1)
{
  *(v3 - 112) = v2;
  *(v3 - 96) = v1;

  return sub_267BE8B74(0, a1 & ~(a1 >> 63), 0);
}

double OUTLINED_FUNCTION_61_12()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

double OUTLINED_FUNCTION_61_13()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_14(uint64_t a1)
{
}

id OUTLINED_FUNCTION_61_15(float a1)
{
  *v2 = a1;
  *v3 = v1;

  return v1;
}

unint64_t OUTLINED_FUNCTION_61_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267BA33E8(v10, v9, &a9);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return sub_267BB170C(v0 + 240, v0 + 432, v1, v2);
}

uint64_t OUTLINED_FUNCTION_73_4()
{
}

uint64_t OUTLINED_FUNCTION_73_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[36] = a2;
  v2[39] = result;
  v2[40] = 0x746365666665;
  v2[41] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_7()
{
}

uint64_t OUTLINED_FUNCTION_73_9()
{

  return sub_267EF9B28();
}

uint64_t *OUTLINED_FUNCTION_73_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

uint64_t OUTLINED_FUNCTION_68_3()
{
  v2 = *(v0 + 800);
  v3 = *(v0 + 776);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_68_5()
{
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_267D5D51C(a13, v13);
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return sub_267EF8348();
}

BOOL OUTLINED_FUNCTION_68_10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_68_11()
{
  v2 = *(*v0 + 16);

  return sub_267BCEA7C(v2);
}

uint64_t OUTLINED_FUNCTION_68_15()
{
}

uint64_t type metadata accessor for SearchForMessagesCATs(uint64_t a1)
{
  result = qword_28022A9B0;
  if (!qword_28022A9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB1654()
{
  swift_allocObject();
  OUTLINED_FUNCTION_26_3();
  return sub_267BA1948(v0, v1, v2);
}

uint64_t sub_267BB16A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_267BB170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_38_2()
{
  *(v0 + 16) = *(v1 + *(v2 + 24));

  return sub_267C10434();
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

id OUTLINED_FUNCTION_38_4()
{
  __swift_project_boxed_opaque_existential_0((v0 + 448), *(v0 + 472));

  return v1;
}

void OUTLINED_FUNCTION_90_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_38_5()
{

  return sub_267EF7958();
}

uint64_t *OUTLINED_FUNCTION_38_7()
{
  v3 = *(v1 - 96);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_38_8()
{
  v2 = *(v0 + 1096);

  return sub_267BD5F58(v2, type metadata accessor for ReadComponentPatternCommonParameters);
}

void *OUTLINED_FUNCTION_38_10()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_38_11@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 48);
  v3[36] = v1;
  v3[39] = a1;
  v3[40] = 1954047348;
  v3[41] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_38_14(uint64_t a1, __n128 a2)
{

  sub_267BFEC0C(v4, v2, v3, v6);
}

uint64_t OUTLINED_FUNCTION_38_15(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v2[36] = *(v3 + 96);

  return sub_267DB4110();
}

uint64_t OUTLINED_FUNCTION_38_16()
{
  v2 = v0[158];
  *(v1 - 144) = v0[154];
  v3 = v0[148];
  result = v0[136];
  *(v1 - 136) = v0[133];
  *(v1 - 128) = v2;
  v5 = v0[132];
  *(v1 - 112) = v3;
  *(v1 - 104) = v5;
  *(v1 - 120) = v0[131];
  return result;
}

uint64_t OUTLINED_FUNCTION_38_19(uint64_t a1)
{

  return sub_267B9FF34(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_22()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_38_23(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(v3[73], a2, 1, v3[77]);

  return memcpy(v3 + 17, v2, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_38_24()
{
}

uint64_t OUTLINED_FUNCTION_38_27()
{
}

uint64_t OUTLINED_FUNCTION_38_30(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_38_31(uint64_t a1)
{

  return sub_267EF8F28();
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return sub_267B9AB18(v0 + 448);
}

void OUTLINED_FUNCTION_82_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_82_5()
{
  *(v5 - 136) = v0[160];
  *(v5 - 128) = v4;
  *(v5 - 104) = v3;
  v7 = v0[140];
  *(v5 - 120) = v2;
  *(v5 - 112) = v7;
  *(v5 - 144) = v0[87];
}

uint64_t OUTLINED_FUNCTION_82_7()
{
}

uint64_t OUTLINED_FUNCTION_82_8()
{
}

uint64_t OUTLINED_FUNCTION_82_9@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  __swift_destroy_boxed_opaque_existential_0(v2 + 157);
  __swift_destroy_boxed_opaque_existential_0(v2 + 167);

  return __swift_destroy_boxed_opaque_existential_0(v2 + 172);
}

uint64_t OUTLINED_FUNCTION_82_10()
{
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_267EF7B68();
}

uint64_t OUTLINED_FUNCTION_55_4@<X0>(uint64_t a1@<X8>)
{

  return sub_267C12220(v2, v1 + a1);
}

void OUTLINED_FUNCTION_55_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE700000000000000;
  return result;
}

void *OUTLINED_FUNCTION_55_8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_267EF9FC8();
}

uint64_t OUTLINED_FUNCTION_55_11()
{
}

uint64_t OUTLINED_FUNCTION_55_17()
{
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_267B9F98C(v1 + v0, v2, v3);
}

void OUTLINED_FUNCTION_43_4(uint64_t a1@<X8>)
{
  v2[87] = v1;
  v2[86] = v3;
  v2[83] = a1;
}

void OUTLINED_FUNCTION_43_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_9()
{
  v2 = *(v0 + 960);

  return sub_267BD5F58(v2, type metadata accessor for TextComponent);
}

uint64_t OUTLINED_FUNCTION_43_11()
{
}

unint64_t OUTLINED_FUNCTION_43_12()
{
  *(v1 - 80) = *(v0 + 192);
  *(v0 + 192) = 0x8000000000000000;

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_43_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 24) = &a9 - v9;

  return sub_267EF2728();
}

uint64_t OUTLINED_FUNCTION_43_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1)
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_15_17()
{
  v1 = *(v0 + 56);
  *(v1 + 213) = 1;
  *(*(v1 + 216) + 24) = 1;
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_15_21@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 56), 1, 1, v2);
  v4 = v1 + *(v3 + 60);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_15_24()
{
}

uint64_t OUTLINED_FUNCTION_15_31@<X0>(uint64_t a1@<X8>)
{

  return sub_267B9AFEC(v1 + 40 * a1 + 32, v2 + 256);
}

double OUTLINED_FUNCTION_15_37()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_41()
{
  v2 = *(v0 + 536);
  *(v1 - 96) = *(v0 + 512);
  return v2;
}

uint64_t OUTLINED_FUNCTION_15_42()
{

  return sub_267BA1B7C(v0);
}

uint64_t OUTLINED_FUNCTION_15_43()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_15_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 248) = &a9 - v9;

  return sub_267EF4D38();
}

uint64_t OUTLINED_FUNCTION_15_46()
{

  return sub_267B9AFEC(v0 + 16, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_15_47()
{

  return sub_267EF8238();
}

uint64_t OUTLINED_FUNCTION_57_4(uint64_t a1)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_57_7()
{
  sub_267BA7F4C((v0 + 16), (v0 + 48));

  return sub_267BA9F38(0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_57_9()
{

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_57_10()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));
  result = v0;
  *(v3 - 120) = v2 + 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_11(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 72);

  return sub_267EF8998(a1, 63, 2, a4, v8, v5, v6);
}

uint64_t OUTLINED_FUNCTION_57_16(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(v2, a2, 1, *(v3 + 296));

  return sub_267EF70C8();
}

uint64_t OUTLINED_FUNCTION_57_17()
{
}

uint64_t OUTLINED_FUNCTION_57_18(uint64_t result)
{
  *(v3 + 168) = result;
  *(v3 + 176) = v2;
  *(v3 + 184) = 0xE800000000000000;
  *(v3 + 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_20()
{

  return sub_267EF8348();
}

void *OUTLINED_FUNCTION_10_6(uint64_t a1, ...)
{

  return sub_267EF9FC8();
}

uint64_t OUTLINED_FUNCTION_10_8()
{
  __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));

  return sub_267EF3C48();
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  v4 = *(v0 + 120);

  return sub_267BAF0DC(v4);
}

uint64_t OUTLINED_FUNCTION_10_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_10_12()
{
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2)
{

  return sub_267BB16A4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_10_17()
{
  *(v2 - 65) = v1;

  return sub_267EF9DF8();
}

void *OUTLINED_FUNCTION_10_21()
{
  v2 = *(v0 - 64);

  return __swift_project_boxed_opaque_existential_0((v0 - 88), v2);
}

void OUTLINED_FUNCTION_10_22(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return sub_267EF9CE8();
}

uint64_t OUTLINED_FUNCTION_10_24()
{
}

uint64_t OUTLINED_FUNCTION_10_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_28()
{
  *v6 = v0;
  *(v6 + 8) = v1;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  return v2 + 8;
}

uint64_t OUTLINED_FUNCTION_10_30()
{
  v3 = v0[146];
  *(v1 - 112) = v0[115];
  *(v1 - 104) = v3;
  *(v1 - 120) = v0[91];
}

uint64_t OUTLINED_FUNCTION_10_35()
{
}

double OUTLINED_FUNCTION_10_37(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return v5;
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_10_40()
{
}

uint64_t OUTLINED_FUNCTION_10_47()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_10_48(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_267BB2D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267BB2D8C()
{
  v5 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = sub_267BB2E68();
  *v1 = v0;
  v1[1] = sub_267BC442C;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000014, 0x8000000267F18B90, v3, &type metadata for LabelsCATsSimple.SnippetLabelsDialogIds, v2);
}

unint64_t sub_267BB2E68()
{
  result = qword_28022B400;
  if (!qword_28022B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B400);
  }

  return result;
}

uint64_t sub_267BB2EBC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_267BC4D6C;

  return v6(a1);
}

uint64_t sub_267BB2FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_267BF1CB4;

  return sub_267BB3068(a1, v4, v5, v6);
}

uint64_t sub_267BB3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_267EF8268();
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BB30F8, 0, 0);
}

uint64_t sub_267BB30F8()
{
  OUTLINED_FUNCTION_12();
  v4 = (*(v0[3] + 208) + **(v0[3] + 208));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_267BC4B20;
  v2 = v0[4];

  return v4(v2);
}

uint64_t sub_267BB31E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BF1CB4;

  return sub_267BB3280(a1);
}

uint64_t sub_267BB3280(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_267EF7B88();
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BB3310, 0, 0);
}

uint64_t sub_267BB3310()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v1 = sub_267EF8A08();
  v0[7] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#CATLabels loading label CATs", v4, 2u);
    MEMORY[0x26D60A7B0](v4, -1, -1);
  }

  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for LabelsCATsSimple(0);
  sub_267EF7B68();
  v0[8] = sub_267EF79E8();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_267BC452C;

  return sub_267BB2D8C();
}

uint64_t type metadata accessor for LabelsCATsSimple(uint64_t a1)
{
  result = qword_28022B3F0;
  if (!qword_28022B3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DirectInvocationUseCases(uint64_t a1)
{
  result = qword_28022CBA8;
  if (!qword_28022CBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB3554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_267BB3794(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_267EF79C8();
  (*(v7 + 8))(a2, v3);
  sub_267BB2D24(a1);
  return v13;
}

uint64_t sub_267BB36B0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_47();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_75(v1);

  return v4(v3);
}

uint64_t sub_267BB3794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BB3824@<X0>(unint64_t a1@<X0>, void *a4@<X8>)
{
  v6 = a1;
  if (!a1)
  {
    v30 = 0u;
    v31 = 0u;
    goto LABEL_6;
  }

  sub_267BB40A0();
  if (!*(&v31 + 1))
  {
LABEL_6:
    sub_267B9FF34(&v30, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_13_46(v8, v9, v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v26, v28, v30))
  {
    *a4 = v27;
    a4[1] = v29;
    v15 = type metadata accessor for DirectInvocationUseCases(0);
    OUTLINED_FUNCTION_23_28(v15);
    v16 = OUTLINED_FUNCTION_19_41();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

LABEL_7:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);

  v21 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_40_23();
  if (os_log_type_enabled(v21, v4))
  {
    OUTLINED_FUNCTION_48();
    *&v30 = OUTLINED_FUNCTION_5_4();
    *v5 = 136315138;
    if (v6)
    {
      v22 = sub_267EF8F08();
      v6 = v23;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_25_38();
    }

    v24 = sub_267BA33E8(v22, v6, &v30);

    *(v5 + 4) = v24;
    OUTLINED_FUNCTION_18_36(&dword_267B93000);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_32_0();
  }

  type metadata accessor for DirectInvocationUseCases(0);
  v16 = OUTLINED_FUNCTION_55();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_89_2()
{
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_89_13()
{

  return sub_267EF78A8();
}

uint64_t sub_267BB3B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7C38();

  sub_267EF7C08();
  return sub_267EF3AD8();
}

uint64_t sub_267BB3B80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_267BB3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a1)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v15 = sub_267EF92D8();

    if (a4)
    {
LABEL_3:
      v16 = sub_267EF8FF8();

      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  if (a7)
  {
    v17 = sub_267EF8FF8();
  }

  else
  {
    v17 = 0;
  }

  if (a9)
  {
    v18 = sub_267EF8FF8();
  }

  else
  {
    v18 = 0;
  }

  if (a10)
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v19 = sub_267EF92D8();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v15 outgoingMessageType:a2 content:v16 speakableGroupName:a5 conversationIdentifier:v17 serviceName:v18 sender:a11 attachments:v19];

  return v20;
}

uint64_t sub_267BB3D8C(unint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    v43 = 0u;
    v44 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0();
  if (!*(&v44 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v43, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_13_46(v4, v5, v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v37, v40, v43))
  {
    v2 = v38;
    v1 = v41;
    sub_267BB40A0();
    v18 = OUTLINED_FUNCTION_13_46(v11, v12, v13, MEMORY[0x277D837D0], v14, v15, v16, v17, v38, v41, v43);
    if (v18)
    {
      v26 = OUTLINED_FUNCTION_37_23(v18, v19, v20, v21, v22, v23, v24, v25, v39, v42);
      OUTLINED_FUNCTION_23_28(v26);
      v27 = OUTLINED_FUNCTION_19_41();
      return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    }
  }

LABEL_8:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v31 = sub_267EF8A08();
  __swift_project_value_buffer(v31, qword_280240FB0);

  v32 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_40_23();
  if (os_log_type_enabled(v32, v1))
  {
    OUTLINED_FUNCTION_48();
    *&v43 = OUTLINED_FUNCTION_5_4();
    *v2 = 136315138;
    if (v3)
    {
      v33 = sub_267EF8F08();
      v3 = v34;
    }

    else
    {
      v33 = OUTLINED_FUNCTION_25_38();
    }

    v35 = sub_267BA33E8(v33, v3, &v43);

    *(v2 + 4) = v35;
    OUTLINED_FUNCTION_18_36(&dword_267B93000);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_32_0();
  }

  type metadata accessor for DirectInvocationUseCases(0);
  v27 = OUTLINED_FUNCTION_55();
  return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1)
{
  v1[8] = a1;
  v1[4] = v2;
  v1[5] = v3;
}

uint64_t OUTLINED_FUNCTION_104_5()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_104_6()
{
}

uint64_t OUTLINED_FUNCTION_104_8()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 - 120));
}

double sub_267BB40A0()
{
  OUTLINED_FUNCTION_120_2();
  if (v2 && (v3 = v1, v4 = sub_267BA9948(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_267BA2E04(v6, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_121_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_121_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_121_2@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267BC9B04(v3 + a1, v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_121_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t sub_267BB41B0(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t OUTLINED_FUNCTION_60_7(uint64_t a1)
{
  v4 = v1[117];
  *(v2 - 168) = v1[118];
  *(v2 - 160) = v4;
  v5 = v1[111];
  *(v2 - 152) = v1[114];
  *(v2 - 144) = v5;
  v6 = v1[105];
  *(v2 - 136) = v1[108];
  *(v2 - 128) = v6;
  v7 = v1[102];
  *(v2 - 120) = v1[104];
  *(v2 - 112) = v7;
  v8 = v1[96];
  *(v2 - 104) = v1[99];
  *(v2 - 96) = v8;
}

uint64_t OUTLINED_FUNCTION_60_9(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_60_12()
{

  return sub_267EF3C98();
}

void OUTLINED_FUNCTION_60_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_60_17(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  v2 = *(v0 - 200);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 224, v2);
}

uint64_t OUTLINED_FUNCTION_125_1()
{
}

void OUTLINED_FUNCTION_125_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_125_6()
{
  *(v4 - 216) = v3;
  *(v4 - 208) = v1;
  *(v4 - 272) = v2;
  *(v4 - 176) = v0;
}

uint64_t sub_267BB4430(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *OUTLINED_FUNCTION_41_1()
{
  v2 = *(v0 + 80);

  return __swift_project_boxed_opaque_existential_0((v0 + 56), v2);
}

uint64_t OUTLINED_FUNCTION_41_2()
{
}

uint64_t OUTLINED_FUNCTION_41_4()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_0((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return sub_267EF9328();
}

uint64_t OUTLINED_FUNCTION_41_14(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_41_18()
{
  v2 = *(v0 + 384);
}

uint64_t OUTLINED_FUNCTION_41_21()
{

  return sub_267EF97F8();
}

uint64_t sub_267BB46B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BA83C4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

unint64_t sub_267BB478C()
{
  result = qword_280229068;
  if (!qword_280229068)
  {
    sub_267EF7B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229068);
  }

  return result;
}

unint64_t sub_267BB47E4()
{
  result = qword_280229078;
  if (!qword_280229078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229070, &qword_267EFC428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229078);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{
  *(v1 + 632) = a1;
  *(v1 + 600) = 22;

  return sub_267EF5128();
}

void OUTLINED_FUNCTION_67_0()
{
  v2 = v1[1];
  *(v0 + 64) = *v1;
  *(v0 + 48) = v2;
}

void OUTLINED_FUNCTION_67_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_67_4(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_267BA33E8(v4, v3, va);
}

BOOL OUTLINED_FUNCTION_67_6()
{
  v5 = *(v2 + 8);

  return sub_267C00EC4(v3, v0, v1, v5);
}

uint64_t OUTLINED_FUNCTION_67_8()
{

  return sub_267EF4938();
}

uint64_t OUTLINED_FUNCTION_67_9(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

unint64_t OUTLINED_FUNCTION_67_10(uint64_t a1, unint64_t a2)
{

  return sub_267BA33E8(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_67_11()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 54);
}

uint64_t OUTLINED_FUNCTION_67_13()
{
}

uint64_t sub_267BB4A3C()
{
  v0 = sub_267EF7B88();
  MEMORY[0x28223BE20](v0);
  type metadata accessor for LabelsCATs(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229060, &qword_267EFC420);
  *(swift_allocObject() + 16) = xmmword_267EFC020;
  sub_267EF7B78();
  sub_267BB478C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229070, &qword_267EFC428);
  sub_267BB47E4();
  sub_267EF99C8();
  return sub_267EF78E8();
}

uint64_t type metadata accessor for LabelsCATs(uint64_t a1)
{
  result = qword_280229EE0;
  if (!qword_280229EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB4BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF7B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_267EF78B8();
  (*(v6 + 8))(a2, v5);
  sub_267BB2D24(a1);
  return v11;
}

uint64_t OUTLINED_FUNCTION_83_0()
{
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_267EF78E8();
}

uint64_t OUTLINED_FUNCTION_83_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_83_5()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_83_6()
{
  *(v4 - 136) = v0[160];
  *(v4 - 128) = v2;
  *(v4 - 112) = v3;
  *(v4 - 120) = v0[140];
  *(v4 - 144) = v0[87];
}

uint64_t OUTLINED_FUNCTION_83_8(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return sub_267EF7B68();
}

uint64_t OUTLINED_FUNCTION_63_4()
{

  return sub_267EF9A68();
}

double OUTLINED_FUNCTION_63_10()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_12(uint64_t result)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_63_15()
{

  return sub_267EF8348();
}

unint64_t sub_267BB5034()
{
  result = qword_28022B130;
  if (!qword_28022B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B130);
  }

  return result;
}

uint64_t sub_267BB5088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_267BB52B4(a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D5C230]);
  v6 = sub_267BB5B04(v4);
  v7 = sub_267BB5B84(v6);
  if (v8)
  {
    *a2 = v7;
    a2[1] = v8;
    v9 = type metadata accessor for DirectInvocationUseCases(0);
    swift_storeEnumTagMultiPayload();
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);

    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      if (a1)
      {
        v18 = sub_267EF8F08();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_267BA33E8(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_267B93000, v14, v15, "#DirectInvocationUseCases invalid user data for triggerGatekeeper: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D60A7B0](v17, -1, -1);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    v12 = type metadata accessor for DirectInvocationUseCases(0);
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_267BB52B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB90, &qword_267F0D0A8);
    v2 = sub_267EF9CF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_267BA2E04(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_267BA7F4C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_267BA7F4C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_267BA7F4C(v31, v32);
    result = sub_267EF9AC8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_267BA7F4C(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double OUTLINED_FUNCTION_96()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_96_1(uint64_t a1, unint64_t a2)
{

  return sub_267BB8FCC(1uLL, a1, a2);
}

uint64_t OUTLINED_FUNCTION_96_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  return MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, v6, v5, v7, a5);
}

void OUTLINED_FUNCTION_96_6()
{
  v5 = v1[160];
  *(v3 - 120) = v1[142];
  *(v3 - 112) = v0;
  v6 = v1[106];
  *(v3 - 136) = v5;
  *(v3 - 128) = v6;
}

uint64_t OUTLINED_FUNCTION_96_7(uint64_t a1)
{

  return sub_267EF7B58();
}

uint64_t OUTLINED_FUNCTION_96_8()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_98_2()
{

  return sub_267EF4888();
}

uint64_t OUTLINED_FUNCTION_98_3()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));

  return sub_267EF7C38();
}

void OUTLINED_FUNCTION_98_4()
{
}

uint64_t OUTLINED_FUNCTION_98_7()
{
}

unint64_t OUTLINED_FUNCTION_98_9(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267BA33E8(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_98_10()
{
}

uint64_t OUTLINED_FUNCTION_45_12()
{

  return sub_267EF3D38();
}

double OUTLINED_FUNCTION_45_13()
{
  *(v0 + 96) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_15()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_45_16(uint64_t a1)
{
  *v1 = a1;

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_20(uint64_t a1)
{

  return sub_267EF90F8();
}

void OUTLINED_FUNCTION_45_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_45_27()
{
}

uint64_t OUTLINED_FUNCTION_45_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x2821BB850](a1, a2, a3, a4, a5, a6, a7);
}

void OUTLINED_FUNCTION_100_2()
{
}

uint64_t OUTLINED_FUNCTION_100_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_100_6()
{
  *(v0 + v1[11]) = v4;
  *(v0 + v1[12]) = v3;
  *(v0 + v1[13]) = v2;
}

uint64_t OUTLINED_FUNCTION_100_7()
{

  return sub_267DC8AC4(v1, v2 + v0);
}

uint64_t OUTLINED_FUNCTION_100_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_100_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;

  return sub_267EF8248();
}

id sub_267BB5B04(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_267EF8EE8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t sub_267BB5B84(void *a1)
{
  v2 = [a1 appBundleId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t type metadata accessor for GatekeeperCATs(uint64_t a1)
{
  result = qword_28022C068;
  if (!qword_28022C068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB5CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF7B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_267EF78B8();
  (*(v6 + 8))(a2, v5);
  sub_267BB2D24(a1);
  return v11;
}

uint64_t sub_267BB5F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF7B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267C2FB6C(a1, &v13 - v10, &qword_280229E20, &unk_267EFDCC0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_267EF78B8();
  (*(v6 + 8))(a2, v5);
  sub_267B9F98C(a1, &qword_280229E20, &unk_267EFDCC0);
  return v11;
}

BOOL sub_267BB60E8()
{
  if (sub_267BB6154(0xD000000000000016, 0x8000000267F1A5B0))
  {
    return 1;
  }

  return sub_267BB6154(0xD000000000000011, 0x8000000267F1A5D0);
}

BOOL sub_267BB6154(uint64_t a1, unint64_t a2)
{
  sub_267EF89E8();
  OUTLINED_FUNCTION_4_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_55();
  v9 = sub_267EF7C18();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    v13 = qword_280240FC8;
    sub_267EF89C8();
    v14 = sub_267EF9698();
    OUTLINED_FUNCTION_8_47(v14, &dword_267B93000, v15, "AppIntentSupportPolicyCheck");
    if (qword_2802287A8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_0(qword_280240E08, qword_280240E20);
    v16 = sub_267BB62F8(v11, v12, a1, a2);

    v17 = sub_267EF9688();
    OUTLINED_FUNCTION_8_47(v17, &dword_267B93000, v18, "AppIntentSupportPolicyCheck");
    (*(v7 + 8))(v3, v2);
  }

  else
  {
    return 0;
  }

  return v16;
}

BOOL sub_267BB62F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  sub_267EF95D8();

  v10 = &unk_267EFC000;
  if (OUTLINED_FUNCTION_99())
  {
    v11 = OUTLINED_FUNCTION_48();
    v12 = OUTLINED_FUNCTION_52();
    *&v63[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = OUTLINED_FUNCTION_0_53();
    OUTLINED_FUNCTION_45();
    _os_log_impl(v13, v14, v15, v16, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (qword_2802287B0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(qword_280240E30, qword_280240E48);
  v17 = sub_267BB6BA4(a3, a4);
  *&v63[0] = a1;
  *(&v63[0] + 1) = a2;
  MEMORY[0x28223BE20](v17);
  v18 = sub_267BC2B54();

  if (v18)
  {

    v19 = sub_267EF89F8();
    sub_267EF95C8();

    if (OUTLINED_FUNCTION_99())
    {
      v20 = swift_slowAlloc();
      *&v63[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = OUTLINED_FUNCTION_0_53();
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_267BA33E8(a3, a4, v63);
      OUTLINED_FUNCTION_45();
      _os_log_impl(v21, v22, v23, v24, v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    return 0;
  }

  v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  OUTLINED_FUNCTION_43();

  v28 = sub_267BC2BFC(a1, a2, 0);
  v29 = sub_267BC3164([v28 compatibilityObject], &selRef_bundleType);
  v31 = v30;
  v32 = sub_267EF9028();
  if (!v31)
  {

    goto LABEL_34;
  }

  if (v29 == v32 && v31 == v33)
  {
  }

  else
  {
    v35 = sub_267EF9EA8();

    if ((v35 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v36 = [v28 infoDictionary];
  v37 = sub_267EF8FF8();
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v38 = [v36 objectForKey:v37 ofClass:swift_getObjCClassFromMetadata()];

  if (v38)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63[0] = v61;
  v63[1] = v62;
  v10 = &unk_267EFC000;
  if (*(&v62 + 1))
  {
    if (swift_dynamicCast())
    {
      v39 = v60;
      if ([v60 BOOLValue] && (v40 = objc_allocWithZone(MEMORY[0x277CBEBD0]), OUTLINED_FUNCTION_43(), , (v41 = sub_267BEB478(a1, a2)) != 0))
      {
        v42 = v41;
        v43 = sub_267EF8FF8();
        v44 = [v42 BOOLForKey_];

        if ((v44 & 1) == 0)
        {

          v48 = sub_267EF89F8();
          v49 = sub_267EF95D8();

          if (!os_log_type_enabled(v48, v49))
          {
            goto LABEL_41;
          }

          v50 = OUTLINED_FUNCTION_48();
          v51 = OUTLINED_FUNCTION_52();
          *&v63[0] = v51;
          *v50 = 136315138;
          *(v50 + 4) = OUTLINED_FUNCTION_0_53();
          v52 = "AppIntentSupportResolver# Skipping hidden internal app %s";
          goto LABEL_40;
        }

        v10 = &unk_267EFC000;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_267B9FF34(v63, &qword_28022AEF0, &qword_267EFCDE0);
  }

LABEL_34:
  v45 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v45)
  {

    v53 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_99())
    {
      v54 = OUTLINED_FUNCTION_48();
      v55 = OUTLINED_FUNCTION_52();
      *&v63[0] = v55;
      *v54 = v10[9];
      *(v54 + 4) = OUTLINED_FUNCTION_0_53();
      OUTLINED_FUNCTION_45();
      _os_log_impl(v56, v57, v58, v59, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_45;
  }

  v39 = v45;
  if (sub_267BC2D54(v45))
  {
    v46 = sub_267EF9028();
    v47 = sub_267BC2EE0(v46);

    if (v47)
    {
      v26 = sub_267BC2F78(a3, a4, v47);

      return v26;
    }
  }

  v48 = sub_267EF89F8();
  v49 = sub_267EF95C8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_48();
    v51 = OUTLINED_FUNCTION_52();
    *&v63[0] = v51;
    *v50 = v10[9];
    *(v50 + 4) = OUTLINED_FUNCTION_0_53();
    v52 = "AppIntentSupportResolver# %s does not have intents app extension";
LABEL_40:
    _os_log_impl(&dword_267B93000, v48, v49, v52, v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

LABEL_41:

LABEL_45:
  return 0;
}

uint64_t sub_267BB6BA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF89E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = sub_267BB7170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CA40, &qword_267F0C858);
  if (sub_267EF9098() == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_267EF9EA8();

    if ((v11 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v12 = qword_280240FC8;
  sub_267EF89C8();
  v13 = sub_267EF9698();
  OUTLINED_FUNCTION_1_78(v13, &dword_267B93000, v14, "SiriMessages.FetchAppDisallowListTrial");
  v15 = v2[5];
  v16 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v15);
  v17 = (*(v16 + 8))(0xD000000000000014, 0x8000000267F1BFC0, 0xD000000000000031, 0x8000000267F0F890, v15, v16);
  if (!v17)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v37 = sub_267EF8A08();
    __swift_project_value_buffer(v37, qword_280240FB0);
    v38 = sub_267EF89F8();
    v39 = sub_267EF95E8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52 = v6;
      v53[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = OUTLINED_FUNCTION_3_73();
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_267BA33E8(0xD000000000000031, 0x8000000267F0F890, v53);
      _os_log_impl(&dword_267B93000, v38, v39, "DisallowedAppsProvider#getSendMessageIntentDisallowedApps - missing trial level for expected factor: %s in namespace: %s", v40, 0x16u);
      swift_arrayDestroy();
      v6 = v52;
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v42 = sub_267EF9688();
    OUTLINED_FUNCTION_1_78(v42, &dword_267B93000, v43, "SiriMessages.FetchAppDisallowListTrial");
    goto LABEL_30;
  }

  v18 = v17;
  v19 = sub_267EF9688();
  OUTLINED_FUNCTION_1_78(v19, &dword_267B93000, v20, "SiriMessages.FetchAppDisallowListTrial");
  if ([v18 levelOneOfCase] != 11)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v44 = sub_267EF8A08();
    __swift_project_value_buffer(v44, qword_280240FB0);
    v45 = v18;
    v46 = sub_267EF89F8();
    v47 = sub_267EF95E8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v6;
      v50 = swift_slowAlloc();
      v53[0] = v50;
      *v48 = 136315394;
      *(v48 + 4) = OUTLINED_FUNCTION_3_73();
      *(v48 + 12) = 1024;
      *(v48 + 14) = [v45 levelOneOfCase];

      _os_log_impl(&dword_267B93000, v46, v47, "DisallowedAppsProvider#getSendMessageIntentDisallowedApps - Trial factor %s is set as unsupported type: %d", v48, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v49 + 8))(v8, v5);
      return MEMORY[0x277D84F90];
    }

LABEL_30:
    (*(v6 + 8))(v8, v5);
    return MEMORY[0x277D84F90];
  }

  result = sub_267BC31D0(v18);
  if (v22)
  {
    v53[0] = result;
    v53[1] = v22;
    sub_267BB5034();
    v23 = sub_267EF9998();

    v24 = *(v23 + 16);
    if (v24)
    {
      v51 = v5;
      v52 = v6;
      v53[0] = MEMORY[0x277D84F90];
      sub_267BC7934(0, v24, 0);
      v25 = v53[0];
      v26 = (v23 + 56);
      do
      {
        v27 = *(v26 - 3);
        v28 = *(v26 - 2);
        v29 = *(v26 - 1);
        v30 = *v26;

        v31 = MEMORY[0x26D608DB0](v27, v28, v29, v30);
        v33 = v32;

        v53[0] = v25;
        v35 = *(v25 + 16);
        v34 = *(v25 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_267BC7934((v34 > 1), v35 + 1, 1);
          v25 = v53[0];
        }

        *(v25 + 16) = v35 + 1;
        v36 = v25 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        v26 += 4;
        --v24;
      }

      while (v24);
      (*(v52 + 8))(v8, v51);

      return v25;
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_267BB7170()
{
  result = qword_28022AE60;
  if (!qword_28022AE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022AE60);
  }

  return result;
}

uint64_t sub_267BB71B4()
{
  **(v1 + 264) = vextq_s8(*(v1 + 328), *(v1 + 328), 8uLL);
  v3 = *(v1 + 328);
  v95 = *(v1 + 336);
  v4 = *(*(v1 + 232) + 416);
  *(v1 + 344) = v4;
  if (!v4)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v17, v18, "#TextComponent Current conversation is nil!!");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    v19 = swift_allocError();
    OUTLINED_FUNCTION_44_17(v19, v20);
    OUTLINED_FUNCTION_30_26();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_98();

    __asm { BRAA            X1, X16 }
  }

  v91 = v3;
  v5 = *(v1 + 312);
  v6 = *(v1 + 264);
  sub_267BFF55C(v6, v5);

  sub_267BFF5C0();
  *(v1 + 352) = v7;
  sub_267C00468(v5);
  if (*(v6 + 72))
  {
    v8 = *(v1 + 288);
    __swift_project_boxed_opaque_existential_0((*(v1 + 232) + 16), *(*(v1 + 232) + 40));
    v9 = OUTLINED_FUNCTION_10_0();
    v10(v9);
    v2 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_10_0();
    sub_267EF3B68();

    OUTLINED_FUNCTION_42_20();

    v0 = v8 + 8;
    v11 = OUTLINED_FUNCTION_63();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  OUTLINED_FUNCTION_45_18();
  if ((v23 & 1) == 0)
  {
    INMessageEffectType.description.getter(*(v0 + 80));
    sub_267EF90F8();

    v0 = *(v1 + 264);
  }

  v24 = *(v1 + 232);
  sub_267EF79B8();
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = *(v0 + 56);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v30 = *(v24 + 256);

  v31 = OUTLINED_FUNCTION_63();
  v33 = sub_267BBF2B0(v31, v32, v30);

  OUTLINED_FUNCTION_34_20();
  v34 = OUTLINED_FUNCTION_63();
  v36 = sub_267BBF2B0(v34, v35, v2);
  v38 = v37;

  *(v1 + 376) = v36;
  *(v1 + 384) = v38;
  if (v36 == 2)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v38;
  }

  if (v93)
  {
    v40 = [v93 displayName];
    sub_267EF9028();

    v41 = sub_267EF9118();
  }

  else
  {
    v41 = 0;
  }

  OUTLINED_FUNCTION_25_28();
  if (v36 != 2 && (v42 & 1) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v39 <= -1.0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v39 >= 1.84467441e19)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v43 = v39;

  sub_267BB78E4(BYTE4(v89) & v33, v41 & 1, v39);

  OUTLINED_FUNCTION_53_14(v44, v45, v46, v47, v48, v49, v50, v51, v89, v91, v93, v95);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();

  OUTLINED_FUNCTION_63();
  sub_267BB7A18();

  v52 = *(v1 + 88);
  if (v52 == 1)
  {
    OUTLINED_FUNCTION_40_16();
    if (!v53)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v54 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);

    v55 = sub_267EF89F8();
    v56 = sub_267EF95D8();

    if (os_log_type_enabled(v55, v56))
    {
      v43 = OUTLINED_FUNCTION_48();
      v57 = OUTLINED_FUNCTION_52();
      *v43 = 136315138;
      v58 = OUTLINED_FUNCTION_44_0();
      *(v43 + 4) = sub_267BA33E8(v58, v59, v60);
      _os_log_impl(&dword_267B93000, v55, v56, "#TextComponent processedContent is .differentLanguage(%s)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_46_17(v61, v62, v63, v64, v65, v66, v67, v68, v90, v92, v94, v96);
  }

  else
  {
    if (v52 != 255)
    {
      sub_267B9FF34(v1 + 56, &qword_280229918, &qword_267F003B0);
    }

    v4 = 0;
    v29 = 0;
  }

  *(v1 + 392) = v4;
  *(v1 + 400) = v29;
  if (v94)
  {
    v69 = [v94 displayName];
    v43 = sub_267EF9028();

    LOBYTE(v69) = sub_267EF9118();

    if (v69)
    {
      v70 = [v94 displayName];
      sub_267EF9028();

      v71 = [objc_allocWithZone(sub_267EF67F8()) init];

      v43 = sub_267EF67B8();
      v73 = v72;

      *(v1 + 208) = v43;
      *(v1 + 216) = v73;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v74 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v74, qword_280240FB0);
      v75 = sub_267EF89F8();
      v76 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v76))
      {
        v77 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v77);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v78, v79, "#TextComponent message from a shortcode..normalizing");
        OUTLINED_FUNCTION_26();
      }
    }
  }

  v33 = *(*(v1 + 264) + 40);
  if (sub_267BAF0DC(v33))
  {
    OUTLINED_FUNCTION_1_9();
    if (!v43)
    {
      v80 = *(v33 + 32);
LABEL_42:
      *(v1 + 408) = v80;
      v81 = swift_task_alloc();
      *(v1 + 416) = v81;
      *v81 = v1;
      OUTLINED_FUNCTION_12_33(v81);
      OUTLINED_FUNCTION_98();

      return sub_267BB7B40();
    }

LABEL_51:
    v80 = MEMORY[0x26D609870](0, v33);
    goto LABEL_42;
  }

  *(v1 + 440) = 0;
  *(v1 + 448) = 0;
  *(*(v1 + 344) + 82) = 0;
  v84 = swift_task_alloc();
  *(v1 + 456) = v84;
  *v84 = v1;
  OUTLINED_FUNCTION_1_60(v84);
  OUTLINED_FUNCTION_98();

  return sub_267BB8698(v85, v86, v87);
}

void sub_267BB78E4(char a1, char a2, uint64_t a3)
{
  v7 = [*(v3 + 16) smsContext];
  if (!v7)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v27 = sub_267EF89F8();
    v9 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v9, v10, v11, v12, v13, v14, v15, v16, v24, v27))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v17);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v18, v19, "#SMSReadMessageSelfLogger smsContext is not initialized!", v20, v21, v22, v23, v25, v26);
      OUTLINED_FUNCTION_4_4();
    }

    goto LABEL_13;
  }

  v26 = v7;
  if ((a1 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    [v26 addIsSenderShortCodeList:1];
    v7 = v26;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [v7 addIsLongMessageList:1];
  v7 = v26;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (a3)
  {
LABEL_12:
    [v26 addMessageDurationsInSeconds:a3];
LABEL_13:
    v7 = v26;
  }

LABEL_14:
}

void sub_267BB7A18()
{
  OUTLINED_FUNCTION_120_2();
  if (v2 && (v3 = v1, v4 = sub_267BA9948(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 40 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = OUTLINED_FUNCTION_50_7();
    sub_267BB7AA0(v12, v13, v14, v15, v11);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -1;
  }

  *v0 = v7;
  *(v0 + 8) = v8;
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  *(v0 + 32) = v11;
}

void sub_267BB7AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t sub_267BB7B00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_267BB7B40()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267BB7B68()
{
  v1 = sub_267BB8214(*(v0 + 16));
  if (!v2)
  {
    if (qword_280228818 != -1)
    {
LABEL_38:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v27 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v30);
    v33 = "#INMessage+RREntityHelpers extractOneTimeCode: no content";
    goto LABEL_24;
  }

  v3 = v1;
  v4 = v2;
  v5 = [*(v0 + 16) sender];
  if (!v5)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v34 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v34, qword_280240FB0);
    v28 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (!os_log_type_enabled(v28, v35))
    {
      goto LABEL_25;
    }

    v36 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v36);
    v33 = "#INMessage+RREntityHelpers extractOneTimeCode: not detecting auth code for non-shortcode sender";
LABEL_24:
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v31, v32, v33);
    OUTLINED_FUNCTION_26();
LABEL_25:

    v37 = 0;
    v38 = 0;
    goto LABEL_33;
  }

  v6 = v5;
  v47 = v0;
  v7 = [v5 displayName];

  sub_267EF9028();
  sub_267EF9118();

  v8 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];

  v9 = MEMORY[0x26D608EC0](v3, v4);

  v10 = objc_opt_self();
  v11 = sub_267EF8FF8();
  v46 = v8;
  v12 = [v10 scanString:v11 range:0 configuration:{v9, v8}];

  sub_267BA9F38(0, &qword_28022C2C0, 0x277D04218);
  OUTLINED_FUNCTION_37_18();
  v13 = sub_267EF92F8();

  v14 = sub_267BAF0DC(v13);
  v15 = 0;
  v0 = v13 & 0xFFFFFFFFFFFFFF8;
  v16 = *MEMORY[0x277D04048];
  while (1)
  {
    if (v14 == v15)
    {

      v37 = 0;
      v38 = 0;
      v0 = v47;
      goto LABEL_33;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D609870](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v17 = *(v13 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v19 = [v17 type];
    result = sub_267EF9028();
    if (!v16)
    {
      __break(1u);
      return result;
    }

    v22 = result;
    v23 = v21;

    if (v22 == sub_267EF9028() && v23 == v24)
    {
      break;
    }

    OUTLINED_FUNCTION_109();
    v26 = sub_267EF9EA8();

    if (v26)
    {
      goto LABEL_28;
    }

    ++v15;
  }

LABEL_28:

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v39 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95D8();
  v0 = v47;
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_32();
    *v42 = 0;
    _os_log_impl(&dword_267B93000, v40, v41, "#INMessage+RREntityHelpers extractOneTimeCode: Auth code found", v42, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v43 = [v18 value];
  v37 = sub_267EF9028();
  v38 = v44;

LABEL_33:
  v45 = *(v0 + 8);

  return v45(v37, v38);
}

uint64_t sub_267BB802C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 408);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v9 + 424) = v7;
  *(v9 + 432) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_92_7(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_92_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_267BB8214(void *a1)
{
  v1 = [a1 content];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267BB8278()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 91) = v3;
  *(v1 + 464) = v4;
  *(v1 + 472) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267BB8364(uint64_t a1)
{
  v2 = *(v1 + 416);
  if (v2)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    OUTLINED_FUNCTION_4_58(a1);

    v5 = sub_267BB8BC4();

    if (v5)
    {
      v7 = *(v5 + 88);
      v6 = *(v5 + 96);

      if (v3 == v7 && v4 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_267EF9EA8();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

const char *sub_267BB8450(char a1)
{
  switch(a1)
  {
    case 27:
      return "SwiftUI";
    case 6:
      return "SiriMail";
    case 11:
      return "Zelkova";
  }

  v1 = "ResponseFramework";
  v2 = "SiriMessages";
  if (a1 == 1)
  {
    v2 = "SiriInCall";
  }

  if (a1 != 18)
  {
    v1 = v2;
  }

  if (a1 == 13)
  {
    return "ProactiveHarvesting";
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_115_3()
{
}

uint64_t OUTLINED_FUNCTION_115_4(__n128 a1)
{
  a1.n128_u64[0] = 5.0;
  v9 = *(v7 - 128);

  return MEMORY[0x2821BEEF8](v4, v6, v5, v9, v2, v1 & 1, v3, a1);
}

void *OUTLINED_FUNCTION_115_5(uint64_t a1)
{

  return sub_267BE8B74(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_267BB8608()
{
  OUTLINED_FUNCTION_12();
  v0[55] = v0[53];
  v0[56] = v2;
  *(v0[43] + 82) = v3;
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_1_60(v4);

  return sub_267BB8698(v5, v6, v7);
}

uint64_t sub_267BB8698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = sub_267EF2E38();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BB875C, 0, 0);
}

uint64_t sub_267BB875C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[29];
  v0[17] = &type metadata for Features;
  v2 = sub_267BAFCAC();
  *(v0 + 112) = 14;
  v0[18] = v2;
  v3 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  if ((v3 & 1) != 0 && v1)
  {
    v4 = sub_267EF72E8();
    sub_267BA9F38(0, &qword_28022A0A8, 0x277CE2028);
    v5 = sub_267EF9028();
    v0[35] = sub_267C944A0(v5, v6);
    ConversationEventStore.init()((v0 + 2));
    v7 = [v4 assistantVoiceMaps];
    v8 = sub_267EF72B8();

    v0[36] = sub_267C90434(v8);
    v9 = swift_task_alloc();
    v0[37] = v9;
    *v9 = v0;
    v9[1] = sub_267DDE2B4;

    return sub_267C9C508();
  }

  else
  {

    v11 = v0[1];

    return v11(0, 0, 0);
  }
}

uint64_t sub_267BB8940()
{
  v1 = *(v0 + 232);
  if (*(v1 + 88))
  {
    sub_267BFF55C(*(v0 + 264), *(v0 + 312));
    OUTLINED_FUNCTION_10(&unk_267F08D40);
    v2 = swift_task_alloc();
    *(v0 + 480) = v2;
    *v2 = v0;
    v2[1] = sub_267DDD7F0;
    OUTLINED_FUNCTION_46_0();

    __asm { BR              X3 }
  }

  v5 = *(v0 + 360);
  v17 = *(v0 + 352);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 248);
  v9 = *(v0 + 240);
  v16 = *(v0 + 464);
  v15 = *(v0 + 440);
  v10 = __swift_project_boxed_opaque_existential_0(*(v0 + 256), *(*(v0 + 256) + 24));
  sub_267BB8364(v10);
  v11 = swift_task_alloc();
  *(v0 + 544) = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v1;
  *(v11 + 32) = v7;
  *(v11 + 40) = v0 + 208;
  *(v11 + 48) = v15;
  *(v11 + 64) = v16;
  *(v11 + 80) = v5;
  *(v11 + 88) = v6;
  *(v11 + 96) = v17;
  *(v11 + 104) = v9;
  *(v11 + 112) = v0 + 192;
  v12 = swift_task_alloc();
  *(v0 + 552) = v12;
  *v12 = v0;
  v12[1] = sub_267BD6EF0;
  OUTLINED_FUNCTION_46_0();

  return sub_267BB8BDC();
}

uint64_t sub_267BB8B44()
{
  OUTLINED_FUNCTION_53_5();
  if (!v2)
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v1(result - 1, (v0 & 0xC000000000000001) == 0, v0);
      if ((v0 & 0xC000000000000001) == 0)
      {
      }
    }

    v4 = OUTLINED_FUNCTION_3();
    return MEMORY[0x26D609870](v4);
  }

  result = OUTLINED_FUNCTION_63_4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_267BB8BDC()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 109) = v4;
  *(v1 + 108) = v5;
  v10 = OUTLINED_FUNCTION_13_26(v6, v7, v8, v9);
  TextComponentParameters = type metadata accessor for SearchForMessagesReadTextComponentParameters(v10);
  OUTLINED_FUNCTION_79_3(TextComponentParameters);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267BB8C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 40);
  v13 = *(v12 + 48);
  v51 = *(v12 + 109);
  v15 = *(v12 + 108);
  v16 = *(v12 + 107);
  v17 = *(v12 + 106);
  v18 = *(v12 + 105);
  v19 = *(v12 + 104);
  v20 = sub_267EF79B8();
  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_19_17(v14[6]);
  v22 = OUTLINED_FUNCTION_42_13(v21);
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  OUTLINED_FUNCTION_31_14(v14[9]);
  v25 = OUTLINED_FUNCTION_42_13(v14[11]);
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
  OUTLINED_FUNCTION_30_18(v14[13]);
  v28 = OUTLINED_FUNCTION_42_13(v14[20]);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v20);
  v31 = OUTLINED_FUNCTION_42_13(v14[21]);
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v20);
  v34 = OUTLINED_FUNCTION_42_13(v14[23]);
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v20);
  OUTLINED_FUNCTION_16_20(v14[24]);
  *(v13 + v37) = 0;
  *(v13 + v14[12]) = 0;
  *(v13 + v14[14]) = v19;
  *(v13 + v14[15]) = v18;
  *(v13 + v14[16]) = v17;
  *(v13 + v14[17]) = v16;
  *(v13 + v14[19]) = v15;
  *(v13 + v14[22]) = 0;
  *(v13 + v14[25]) = v51;
  OUTLINED_FUNCTION_1_3();
  v52 = v38;
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_134_0(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_19_0(v40);
  OUTLINED_FUNCTION_40();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, v52, a10, a11, a12);
}

uint64_t sub_267BB8E14(uint64_t (*a1)(void))
{
  a1(0);
  v1 = sub_267EF5658();
  sub_267BB8F30(v1, v2);
  v4 = v3;

  if (v4)
  {
    sub_267EF8F68();
  }

  OUTLINED_FUNCTION_73_2();
  v5 = OUTLINED_FUNCTION_46_2();
  MEMORY[0x26D608E60](v5);

  v6 = sub_267EF5658();
  OUTLINED_FUNCTION_96_1(v6, v7);
  sub_267BB9090();

  sub_267EF9188();

  return v9;
}

uint64_t sub_267BB8F30(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_267EF9258();
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_144_0()
{
}

uint64_t OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2, ...)
{

  return sub_267EF9098();
}

unint64_t sub_267BB8FCC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_267EF9168();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_267EF9278();
      OUTLINED_FUNCTION_74_0();

      return OUTLINED_FUNCTION_50_7();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_267BB9090()
{
  result = qword_28022A0D8;
  if (!qword_28022A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A0D8);
  }

  return result;
}

unint64_t sub_267BB9114(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = sub_267EF9098();
  sub_267BB9258(5, v7, v8);
  sub_267BB9090();
  sub_267EF9188();

  MEMORY[0x26D608E60](0x2E65756C61562ELL, 0xE700000000000000);

  a5(a1);
  sub_267EF8F68();

  v9 = OUTLINED_FUNCTION_37_1();
  MEMORY[0x26D608E60](v9);

  return 0xD000000000000012;
}

uint64_t sub_267BB9258(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_267EF9168();
    sub_267EF9278();
    OUTLINED_FUNCTION_74_0();

    return OUTLINED_FUNCTION_50_7();
  }

  return result;
}

uint64_t sub_267BB9308(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    case 5:
      result = 1953063287;
      break;
    case 6:
      result = 0x65756E69746E6F63;
      break;
    case 7:
      result = 1819042147;
      break;
    default:
      return result;
  }

  return result;
}

void sub_267BB93FC()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v124 = v3;
  sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v126 = v4;
  v127 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v113 - v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  *&v122 = v13;
  OUTLINED_FUNCTION_115();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v113 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v113 - v18;
  v125 = sub_267EF4158();
  OUTLINED_FUNCTION_58();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  v26 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v27 = OUTLINED_FUNCTION_53_0();
  v28(v27, v26);
  sub_267EF4148();
  OUTLINED_FUNCTION_62_1(v129, v130);
  sub_267EF3B98();
  v123 = v25;
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v129);
  LODWORD(v120) = v2;
  if (v2 < 2u)
  {
    v121 = v21;
    v29 = sub_267EF6268();
    OUTLINED_FUNCTION_97(v29);
    v30 = sub_267EF6258();
    v31 = sub_267EF6018();
    OUTLINED_FUNCTION_97(v31);
    v119 = sub_267EF6008();
    sub_267EF6218();
    v32 = sub_267EF6448();
    OUTLINED_FUNCTION_97(v32);
    v33 = sub_267EF6438();
    sub_267EF61F8();
    v118 = v33;
    OUTLINED_FUNCTION_22_0();
    sub_267DFDDC4();
    v34 = v12;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v35 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v35, qword_280240FB0);
    v36 = *(v127 + 16);
    v36(v8, v12, v126);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v38))
    {
      v39 = OUTLINED_FUNCTION_48();
      v114 = v39;
      v116 = OUTLINED_FUNCTION_52();
      v128 = v116;
      *v39 = 136315138;
      v40 = v122;
      v41 = OUTLINED_FUNCTION_61_4();
      v115 = v37;
      v42 = v126;
      (v36)(v41);
      sub_267EF5458();
      v113[3] = v33;
      v130 = v42;
      OUTLINED_FUNCTION_115_7();
      v131 = sub_267EDB6D8(v43, v44, MEMORY[0x277D5DC50]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v129);
      v36(boxed_opaque_existential_0, v40, v42);
      v46 = sub_267EF5448();
      v117 = v30;
      v48 = v47;
      v49 = v36;
      v50 = v8;
      v51 = *(v127 + 8);
      v51(v40, v42);
      v52 = v50;
      v36 = v49;
      v51(v52, v42);
      v53 = v51;
      __swift_destroy_boxed_opaque_existential_0(v129);
      v54 = sub_267BA33E8(v46, v48, &v128);

      *(v114 + 1) = v54;
      v55 = v115;
      OUTLINED_FUNCTION_109_10();
      _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v116);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v53 = *(v127 + 8);
      v53(v8, v126);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
    OUTLINED_FUNCTION_229_1();
    v87 = v86 & ~v85;
    v88 = swift_allocObject();
    v122 = xmmword_267EFC020;
    *(v88 + 16) = xmmword_267EFC020;
    v36(v88 + v87, v34, v126);
    v89 = v123;
    sub_267EF4088();
    if (qword_280228900 != -1)
    {
      OUTLINED_FUNCTION_7_3(&qword_280228900);
    }

    sub_267BB8DFC();
    sub_267EF40D8();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v91 = OUTLINED_FUNCTION_225_0(v90);
    OUTLINED_FUNCTION_191_1(v91);
    v91[2].n128_u64[0] = sub_267BB90E4(2);
    v91[2].n128_u64[1] = v92;
    sub_267EF40A8();
    v93 = OUTLINED_FUNCTION_225_0(v90);
    OUTLINED_FUNCTION_191_1(v93);
    v93[2].n128_u64[0] = sub_267BB90E4(2);
    v93[2].n128_u64[1] = v94;
    sub_267EF4108();
    v95 = sub_267EF4748();
    OUTLINED_FUNCTION_97(v95);
    sub_267EF4738();
    v96 = v121;
    if (qword_280228860 != -1)
    {
      swift_once();
    }

    sub_267EF5648();
    sub_267EF4708();

    sub_267EF4728();

    sub_267EF4138();
    if (v120)
    {
      v97 = OUTLINED_FUNCTION_225_0(v90);
      OUTLINED_FUNCTION_191_1(v97);
      if (qword_280228830 != -1)
      {
        swift_once();
      }

      v97[2].n128_u64[0] = sub_267BCEF48();
      v97[2].n128_u64[1] = v98;
    }

    else
    {
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_267EFCE30;
      if (qword_280228898 != -1)
      {
        swift_once();
      }

      *(v100 + 32) = sub_267BCEF14();
      *(v100 + 40) = v101;
      if (qword_280228870 != -1)
      {
        swift_once();
      }

      *(v100 + 48) = sub_267BCEF2C();
      *(v100 + 56) = v102;
      if (qword_280228888 != -1)
      {
        swift_once();
      }

      *(v100 + 64) = sub_267BCEF48();
      *(v100 + 72) = v103;
    }

    sub_267EF4118();

    v53(v34, v126);
LABEL_35:
    (*(v96 + 32))(v124, v89, v125);
    v99 = 0;
    goto LABEL_36;
  }

  if (v2 == 3)
  {
    v121 = v21;
    v61 = sub_267EF6268();
    OUTLINED_FUNCTION_97(v61);
    v62 = sub_267EF6258();
    sub_267EF6228();
    v63 = sub_267EF6448();
    OUTLINED_FUNCTION_97(v63);
    v64 = sub_267EF6438();
    sub_267EF61F8();
    OUTLINED_FUNCTION_22_0();
    sub_267DFDDC4();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v65 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v65, qword_280240FB0);
    v66 = *(v127 + 16);
    v66(v17, v19, v126);
    v67 = sub_267EF89F8();
    v68 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v68))
    {
      v69 = OUTLINED_FUNCTION_48();
      v120 = v62;
      v70 = v126;
      v71 = v69;
      v117 = v69;
      v118 = OUTLINED_FUNCTION_52();
      v128 = v118;
      *v71 = 136315138;
      v119 = v64;
      v72 = v122;
      v66(v122, v17, v70);
      sub_267EF5458();
      v116 = v67;
      v130 = v70;
      OUTLINED_FUNCTION_115_7();
      v131 = sub_267EDB6D8(v73, v74, MEMORY[0x277D5DC50]);
      v75 = __swift_allocate_boxed_opaque_existential_0(v129);
      v66(v75, v72, v70);
      v76 = sub_267EF5448();
      LODWORD(v115) = v68;
      v78 = v77;
      v79 = v66;
      v80 = *(v127 + 8);
      v80(v72, v70);
      v81 = OUTLINED_FUNCTION_44_0();
      (v80)(v81);
      v82 = v80;
      v66 = v79;
      __swift_destroy_boxed_opaque_existential_0(v129);
      sub_267BA33E8(v76, v78, &v128);
      OUTLINED_FUNCTION_53_0();

      v84 = v116;
      v83 = v117;
      *(v117 + 4) = v76;
      _os_log_impl(&dword_267B93000, v84, v115, "#makeNeedsValueContextFor submitting NLv4 dialog act: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v118);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {

      v82 = *(v127 + 8);
      v82(v17, v126);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
    OUTLINED_FUNCTION_229_1();
    v106 = v105 & ~v104;
    v107 = swift_allocObject();
    v122 = xmmword_267EFC020;
    *(v107 + 16) = xmmword_267EFC020;
    v66((v107 + v106), v19, v126);
    v89 = v123;
    sub_267EF4088();
    if (qword_280228900 != -1)
    {
      OUTLINED_FUNCTION_7_3(&qword_280228900);
    }

    sub_267BB8DFC();
    sub_267EF40E8();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v109 = OUTLINED_FUNCTION_225_0(v108);
    OUTLINED_FUNCTION_191_1(v109);
    v109[2].n128_u64[0] = sub_267BB90E4(2);
    v109[2].n128_u64[1] = v110;
    sub_267EF40B8();
    v111 = OUTLINED_FUNCTION_225_0(v108);
    OUTLINED_FUNCTION_191_1(v111);
    v96 = v121;
    if (qword_280228848 != -1)
    {
      swift_once();
    }

    v111[2].n128_u64[0] = sub_267BCEF48();
    v111[2].n128_u64[1] = v112;
    sub_267EF40C8();

    v82(v19, v126);
    goto LABEL_35;
  }

  (*(v21 + 8))(v123, v125);
  v99 = 1;
LABEL_36:
  __swift_storeEnumTagSinglePayload(v124, v99, 1, v125);
  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_210_1()
{

  return sub_267BCEF64();
}

uint64_t OUTLINED_FUNCTION_208_0()
{
}

uint64_t OUTLINED_FUNCTION_208_1()
{
  v1[51] = v0;
  v1[52] = v2;
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  return sub_267BCEF64();
}

uint64_t OUTLINED_FUNCTION_178_1@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a2[1] = v3;
  *(v4 - 104) = a1;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_80(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result[2] = a18;
  result[3] = v21;
  result[4] = v23;
  result[5] = v22;
  result[6] = v18;
  result[7] = v19;
  result[8] = v20;
  return result;
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1)
{

  return sub_267EF9EA8();
}

BOOL OUTLINED_FUNCTION_116_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_80_5(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x2821BEEF8](v9, v11, v8, a5, v10, a7, v7, a1);
}

uint64_t OUTLINED_FUNCTION_80_7()
{

  return type metadata accessor for MessagesMessageComponentDialogContext();
}

uint64_t OUTLINED_FUNCTION_80_8()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_80_9()
{
}

uint64_t OUTLINED_FUNCTION_80_10()
{

  return sub_267BC7F48(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_80_11()
{
}

void *OUTLINED_FUNCTION_80_12()
{

  return __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
}

uint64_t OUTLINED_FUNCTION_80_13()
{

  return sub_267B9AFEC(v0 - 128, v0 - 168);
}

uint64_t sub_267BBA214()
{
  OUTLINED_FUNCTION_31_19();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_26_25();

  return sub_267BBA36C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_132@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267C26980(v4, v3 + a3, a1, a2);
}

void OUTLINED_FUNCTION_132_1()
{

  sub_267C70BD8();
}

uint64_t OUTLINED_FUNCTION_132_2()
{

  return sub_267EF95D8();
}

uint64_t sub_267BBA36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  type metadata accessor for TextComponent(0);
  *(v8 + 168) = swift_task_alloc();
  v9 = sub_267EF8248();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BBA52C, 0, 0);
}

uint64_t sub_267BBA52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_377();
  v23 = *(v22 + 56);
  v24 = *(v22 + 64);
  TextComponentParameters = type metadata accessor for SearchForMessagesReadTextComponentParameters(0);
  *(v22 + 288) = TextComponentParameters;
  v26 = *(TextComponentParameters + 44);
  sub_267B9FF34(v23 + v26, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v28 = ComponentPatternCommonParameters[5];
  v29 = sub_267EF79B8();
  *(v22 + 296) = v29;
  v141 = *(v29 - 8);
  v145 = v28;
  (*(v141 + 16))(v23 + v26, v24 + v28, v29);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v147 = v24;
  *(v22 + 16) = *(v24 + ComponentPatternCommonParameters[6]);
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v149 = TextComponentParameters;
  v151 = v29;
  v33 = *(v22 + 64);
  v34 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v29);
  OUTLINED_FUNCTION_46_1(*(TextComponentParameters + 80));
  *(v22 + 32) = *(v33 + ComponentPatternCommonParameters[7]);
  sub_267EF8348();
  v37 = *(v22 + 272);
  v39 = *(v22 + 56);
  v38 = *(v22 + 64);
  v40 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v29);
  sub_267BD3DDC(v37, v39 + v149[21]);
  *(v22 + 40) = *(v38 + ComponentPatternCommonParameters[8]);
  sub_267EF8348();
  v43 = *(v22 + 264);
  v45 = *(v22 + 56);
  v44 = *(v22 + 64);
  v46 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v29);
  sub_267BD3DDC(v43, v45 + v149[23]);
  *(v22 + 48) = *(v44 + ComponentPatternCommonParameters[9]);
  sub_267EF8348();
  v134 = *(v22 + 256);
  v135 = *(v22 + 56);
  v136 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v29);
  v139 = sub_267BD3DDC(v134, v135 + v149[24]);
  *(v22 + 304) = 0;
  v49 = *(*(v22 + 72) + 96);
  *(v22 + 312) = v49;
  v143 = v49;
  if (sub_267BE84FC(v139))
  {
    v50 = *(*(v22 + 80) + 40);
    v51 = v29;
    if (sub_267BAF0DC(v50))
    {
      sub_267BBD0EC(0, (v50 & 0xC000000000000001) == 0, v50);
      if ((v50 & 0xC000000000000001) != 0)
      {

        v52 = MEMORY[0x26D609870](0, v50);
      }

      else
      {
        v52 = *(v50 + 32);
      }

      v54 = *(v22 + 240);
      v53 = *(v22 + 248);
      v55 = [v52 identifier];

      sub_267EF9028();
      sub_267EF90F8();

      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v29);
      (*(v141 + 32))(v53, v54, v29);
    }

    else
    {
      v60 = *(v22 + 240);
      __swift_storeEnumTagSinglePayload(v60, 1, 1, v29);
      sub_267EF90F8();
      if (__swift_getEnumTagSinglePayload(v60, 1, v29) != 1)
      {
        sub_267B9FF34(*(v22 + 240), &unk_28022AE30, &qword_267EFC0B0);
      }
    }

    v59 = 0;
  }

  else
  {
    v59 = 1;
    v51 = v29;
  }

  v61 = *(v22 + 248);
  v62 = *(v22 + 88);
  v63 = *(v22 + 56);
  __swift_storeEnumTagSinglePayload(v61, v59, 1, v51);
  sub_267BD3DDC(v61, v63 + v149[18]);
  if (*(v62 + 8))
  {

    sub_267EF90F8();
  }

  v64 = *(v22 + 232);
  v65 = *(v22 + 104);
  v66 = *(v22 + 56);
  v67 = 1;
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v51);
  sub_267BD3DDC(v64, v66 + v149[8]);
  if (v65)
  {
    sub_267EF90F8();
    v67 = 0;
  }

  v71 = *(v22 + 224);
  v72 = *(v22 + 120);
  v73 = *(v22 + 56);
  v74 = 1;
  __swift_storeEnumTagSinglePayload(v71, v67, 1, v51);
  sub_267BD3DDC(v71, v73);
  if (v72)
  {
    sub_267EF90F8();
    v74 = 0;
  }

  v75 = *(v22 + 216);
  v76 = *(v22 + 152);
  v142 = *(v22 + 160);
  v78 = *(v22 + 136);
  v77 = *(v22 + 144);
  v79 = *(v22 + 128);
  v80 = *(v22 + 56);
  __swift_storeEnumTagSinglePayload(v75, v74, 1, v151);
  sub_267BD3DDC(v75, v80 + v149[10]);
  *(v80 + v149[22]) = v79;

  sub_267BE855C(v78, v80 + v149[13]);
  v81 = v149[7];

  *(v80 + v81) = v77;
  v82 = v149[12];

  *(v80 + v82) = v76;
  if (*(v142 + 8))
  {

    sub_267EF90F8();
  }

  v83 = *(v22 + 208);
  v84 = *(v22 + 168);
  v85 = *(v22 + 80);
  v86 = *(v22 + 56);
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v151);
  sub_267BD3DDC(v83, v86 + v149[9]);
  *(v22 + 320) = sub_267EF7998();
  *(v22 + 328) = v90;
  v91 = sub_267BFF55C(v85, v84);
  *(v22 + 336) = sub_267BE85CC(v91);
  sub_267C00468(v84);
  v92 = sub_267BDAF74(v143);
  *(v22 + 352) = v92 & 1;
  if (v92)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v152 = v93;
    v94 = swift_task_alloc();
    *(v22 + 344) = v94;
    *v94 = v22;
    v94[1] = sub_267BDA980;
    OUTLINED_FUNCTION_93();

    return v97(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, v142, v143, v145, v147, v149, v152, a18, a19, a20, a21, a22);
  }

  else
  {
    v104 = *(v22 + 304);
    v106 = *(v22 + 192);
    v105 = *(v22 + 200);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    v108 = 0xE000000000000000;
    if (!v109)
    {
      v108 = v107;
    }

    v140 = v108;
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_72();
    sub_267EF8238();
    sub_267EF8348();
    if (v104)
    {
      OUTLINED_FUNCTION_39_17();
      v144 = v110;
      v146 = v111;
      v112 = *(v22 + 192);
      v148 = v113;
      v150 = *(v22 + 200);
      OUTLINED_FUNCTION_56_15();
      v153 = v114;
      (*(v115 + 8))(v112);
    }

    else
    {
      OUTLINED_FUNCTION_55_14();
      a11 = v117;
      v142 = v116;
      v144 = *(v22 + 232);
      v146 = *(v22 + 224);
      v148 = *(v22 + 216);
      v150 = *(v22 + 208);
      v118 = *(v22 + 192);
      v119 = *(v22 + 200);
      OUTLINED_FUNCTION_56_15();
      v153 = v120;
      v121 = *(v22 + 56);
      (*(v122 + 8))(v118);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v106);
      sub_267BD3DDC(v119, v121 + *(v105 + 24));
    }

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_93();

    return v127(v126, v127, v128, v129, v130, v131, v132, v133, v140, a10, a11, v142, v144, v146, v148, v150, v153, a18, a19, a20, a21, a22);
  }
}

double OUTLINED_FUNCTION_150()
{
  result = 0.0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_150_1()
{
}

uint64_t type metadata accessor for TextComponent(uint64_t a1)
{
  result = qword_28022C168;
  if (!qword_28022C168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ReadComponentPatternCommonParameters(uint64_t a1)
{
  result = qword_28022A1B0;
  if (!qword_28022A1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_267BBAFA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229848, &qword_267EFE9E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_267BBB018()
{

  return swift_deallocClassInstance();
}

void sub_267BBB050()
{
  OUTLINED_FUNCTION_48_0();
  v46 = v0;
  v1 = sub_267EF5148();
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v45 = v4 - v3;
  sub_267EF5248();
  OUTLINED_FUNCTION_58();
  v43 = v6;
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v42 = v7 - v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v41 = sub_267EF5318();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = sub_267EF5198();
  v22 = OUTLINED_FUNCTION_18(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  v26 = sub_267EF5438();
  v40 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_60();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v39 - v32;
  sub_267EF5428();
  sub_267BC8EDC(0, 0, v25);
  sub_267EF5418();
  sub_267EF5308();
  (*(v27 + 16))(v30, v33, v26);
  sub_267EF52A8();
  sub_267EF5238();
  v34 = v13;
  v35 = *(v13 + 16);
  v36 = v41;
  v35(v17, v20, v41);
  sub_267EF5228();
  sub_267EF53C8();
  v37 = v43;
  v38 = v44;
  (*(v43 + 16))(v42, v11, v44);
  sub_267EF53A8();
  sub_267BBB3D0();
  sub_267EF5398();
  (*(v37 + 8))(v11, v38);
  (*(v34 + 8))(v20, v36);
  (*(v27 + 8))(v33, v40);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BBB3D0()
{
  OUTLINED_FUNCTION_7_42();
  v1 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C3E8, &unk_267F0A6C0);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_267EF2D18();
  sub_267EF5468();
  (*(v3 + 8))(v7, v1);
  v12 = sub_267EF5148();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(v0, v11, v12);
  }

  sub_267EF5138();
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    return sub_267DFE66C(v11);
  }

  return result;
}

void sub_267BBB55C()
{
  OUTLINED_FUNCTION_48_0();
  v76 = v0;
  v77 = v1;
  v81 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v74 = &v71 - v5;
  sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v79 = v7;
  v80 = v6;
  v8 = MEMORY[0x28223BE20](v6);
  *&v75 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8E14(MEMORY[0x277D5E400]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_267F00200;
  *(v15 + 32) = sub_267BB9114(2, &type metadata for SmsConfirmationValue, &qword_28022A0E8, &qword_267F00448, sub_267BB9308);
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_267BB9114(7, &type metadata for SmsConfirmationValue, &qword_28022A0E8, &qword_267F00448, sub_267BB9308);
  *(v15 + 56) = v17;
  *(v15 + 64) = sub_267BB9114(3, &type metadata for SmsVerbValue, &qword_28022A0E0, &qword_267F00440, sub_267D6D160);
  *(v15 + 72) = v18;
  OUTLINED_FUNCTION_78_3();
  *(v15 + 80) = sub_267BB9114(v19, v20, v21, v22, sub_267D6D160);
  *(v15 + 88) = v23;
  OUTLINED_FUNCTION_78_3();
  *(v15 + 96) = sub_267BB9114(v24, v25, v26, v27, sub_267D6D160);
  *(v15 + 104) = v28;
  *(v15 + 112) = sub_267BB9114(27, &type metadata for SmsReferenceValue, &qword_28022A0D0, &qword_267F00438, sub_267D6C0D4);
  *(v15 + 120) = v29;
  sub_267EF4148();
  sub_267EF40D8();
  sub_267EF4108();
  v30 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v31 = sub_267EF9028();
  sub_267BF64EC(v31, v32, v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v34 = OUTLINED_FUNCTION_47_3(v33);
  *(v34 + 16) = xmmword_267EFCA40;
  *(v34 + 32) = v30;
  sub_267EF40F8();
  v35 = sub_267EF6488();
  v36 = OUTLINED_FUNCTION_97(v35);
  sub_267EF6478();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v37 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v37, qword_280240FB0);
  v38 = v79;
  v39 = v80;
  v40 = *(v79 + 16);
  v78 = v14;
  v40(v12, v14, v80);
  v73 = v36;
  v41 = sub_267EF89F8();
  v42 = sub_267EF95D8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_48();
    v72 = v42;
    v44 = v43;
    v71 = swift_slowAlloc();
    v83 = v71;
    *v44 = 136315138;
    v45 = v75;
    v40(v75, v12, v39);
    v46 = sub_267EF5458();
    v82[3] = v39;
    v82[4] = sub_267BBBD50(&qword_28022BAF0, 255, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
    v40(boxed_opaque_existential_0, v45, v39);
    sub_267EF5448();
    OUTLINED_FUNCTION_76();
    v48 = *(v79 + 8);
    v48(v45, v80);
    v48(v12, v80);
    v38 = v79;
    __swift_destroy_boxed_opaque_existential_0(v82);
    v49 = sub_267BA33E8(v46, v39, &v83);
    v39 = v80;

    *(v44 + 4) = v49;
    _os_log_impl(&dword_267B93000, v41, v72, "#makeComponentNLContextUpdate submitting NLv4 SystemDialogAct: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v48 = *(v38 + 8);
    v48(v12, v39);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v50 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v51 = swift_allocObject();
  v75 = xmmword_267EFC020;
  *(v51 + 16) = xmmword_267EFC020;
  v52 = v78;
  v40((v51 + v50), v78, v39);
  sub_267EF4088();
  if (v77)
  {
    v53 = [v77 sender];
    if (v53)
    {
      v54 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
      v55 = sub_267EF8AE8();
      OUTLINED_FUNCTION_30_0(v55);
      v56 = swift_allocObject();
      *(v56 + 16) = v75;
      sub_267EF8A78();
      v57 = v74;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
      sub_267BF66B0();
      sub_267BD6C8C(v57, &unk_28022BAE0);
      sub_267EF4058();
      v62 = v54;
      v63 = sub_267EF89F8();
      v64 = sub_267EF95D8();

      if (OUTLINED_FUNCTION_121_1())
      {
        OUTLINED_FUNCTION_48();
        v65 = OUTLINED_FUNCTION_55_0();
        v82[0] = v65;
        *v56 = 136315138;
        v66 = [v62 displayName];
        sub_267EF9028();

        v67 = OUTLINED_FUNCTION_65_2();
        v70 = sub_267BA33E8(v67, v68, v69);

        *(v56 + 4) = v70;
        v39 = v80;
        _os_log_impl(&dword_267B93000, v63, v64, "#makeComponentNLContextUpdate Donating sender %s to RRaaS", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        v52 = v78;
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_29_1();
      }

      else
      {
      }
    }
  }

  sub_267EF4098();
  sub_267EF4128();
  v48(v52, v39);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BBBD50(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_110_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267BBBD94()
{
  sub_267B9A5E8((v1 + 584), v1 + 544);
  __swift_project_boxed_opaque_existential_0((v1 + 384), *(v1 + 408));
  OUTLINED_FUNCTION_42_7();
  v2 = OUTLINED_FUNCTION_26_0();
  v4 = v3(v2);
  sub_267C904F0(v4);
  OUTLINED_FUNCTION_43();

  if (v0)
  {
    v5 = *(v1 + 968);
    v6 = *(v1 + 896);
    v7 = objc_allocWithZone(MEMORY[0x277D47918]);
    v8 = v0;
    v9 = [v7 init];
    sub_267D60504(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = *(v1 + 976);
      v12 = *(v1 + 968);
      v13 = *(v1 + 896);
      v10 = sub_267EF2C48();
      (*(v11 + 8))(v13, v12);
    }

    [v9 setDateReadingStarted_];

    sub_267BA9F38(0, &qword_28022A098, 0x277D47B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0A0, &unk_267F003F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v16 = OUTLINED_FUNCTION_47_3(v15);
    *(v16 + 16) = xmmword_267EFCA40;
    *(v16 + 32) = v9;
    *(inited + 32) = v16;
    sub_267E7EA58(inited);
    v18 = v17;

    sub_267B9AFEC(v1 + 544, v1 + 664);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
    if (swift_dynamicCast())
    {
      v19 = *(v1 + 888);
      v20 = *(v1 + 880);
      v21 = *(v1 + 872);
      v22 = *(v1 + 864);
      v23 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
      (*(v20 + 32))(v19, v22, v21);
      v26 = OUTLINED_FUNCTION_47_3(v15);
      *(v26 + 16) = xmmword_267EFCA40;
      *(v26 + 32) = v18;
      *(v1 + 728) = v21;
      *(v1 + 736) = MEMORY[0x277D5C1D8];
      __swift_allocate_boxed_opaque_existential_0((v1 + 704));
      v27 = v18;
      sub_267D76034(v26);

      v28 = OUTLINED_FUNCTION_26_0();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_0((v1 + 544));
      sub_267B9A5E8((v1 + 704), v1 + 544);
    }

    else
    {
      v30 = *(v1 + 872);
      v31 = *(v1 + 864);

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
      sub_267BD6C8C(v31, &qword_28022BB70);
    }
  }

  OUTLINED_FUNCTION_26_10();
  v35 = sub_267C934C4();
  if (v35)
  {
    v36 = v35;
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v38))
    {
      v39 = OUTLINED_FUNCTION_32();
      *v39 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v40, v41, v42, v43, v39, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    v44 = *(v1 + 832);

    sub_267B9AFEC(v1 + 544, v44);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v46 = OUTLINED_FUNCTION_47_3(v45);
    *(v46 + 16) = xmmword_267EFCA40;
    *(v46 + 32) = v36;
  }

  else
  {
    sub_267B9AFEC(v1 + 544, *(v1 + 832));
    v46 = MEMORY[0x277D84F90];
  }

  v47 = *(v1 + 1216);
  v48 = *(v1 + 936);
  v49 = *(v1 + 928);
  v50 = *(v1 + 920);
  v51 = *(v1 + 832);

  __swift_destroy_boxed_opaque_existential_0((v1 + 544));
  (*(v49 + 8))(v48, v50);
  *(v51 + 40) = MEMORY[0x277D84F90];
  *(v51 + 48) = v46;
  __swift_destroy_boxed_opaque_existential_0((v1 + 384));
  __swift_destroy_boxed_opaque_existential_0((v1 + 424));

  OUTLINED_FUNCTION_17();

  return v52();
}

uint64_t OUTLINED_FUNCTION_138@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267BC9B04(v3 + a1, v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20)
{

  return sub_267B9A5E8(&a20, &a15);
}

uint64_t sub_267BBC340()
{
  sub_267BBC36C();
  OUTLINED_FUNCTION_5_75();

  return swift_deallocClassInstance();
}

uint64_t sub_267BBC36C()
{

  return v0;
}

uint64_t sub_267BBC39C()
{
  sub_267BBC3D0();

  return swift_deallocClassInstance();
}

uint64_t sub_267BBC3F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

id sub_267BBC4F0()
{
  OUTLINED_FUNCTION_29();
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v3, v4, "#ReadAction reading is starting...");
    OUTLINED_FUNCTION_32_0();
  }

  sub_267BC1E68();
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v6 = result;
    v7 = v0[53];
    v8 = sub_267EF9028();
    v10 = v9;

    sub_267EF3838();
    v11 = OUTLINED_FUNCTION_3();
    v12(v11);
    sub_267B9AFEC((v0 + 16), (v0 + 21));
    type metadata accessor for MessagesSELFPerformanceLogger(0);
    swift_allocObject();
    v0[58] = MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(100, v8, v10, v7, v0 + 21);
    v13 = swift_task_alloc();
    v0[59] = v13;
    *v13 = v0;
    v13[1] = sub_267C36B50;
    v15 = v0[49];
    v14 = v0[50];
    v16 = v0[48];

    return sub_267BD4F00((v0 + 67), v14, (v0 + 2), v16, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MessagesSELFPerformanceLogger(uint64_t a1)
{
  result = qword_280229DA8;
  if (!qword_280229DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = sub_267EF2D28();
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  *(v6 + OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_failed) = 0;
  *(v6 + OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_ended) = 0;
  sub_267B9AFEC(a5, v6 + 16);
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  sub_267BBC84C();
  sub_267EF2D18();
  *(v6 + 80) = sub_267BBC890(v15);
  v16 = OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_osLogger;
  v17 = sub_267EF8A08();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6 + v16, a4, v17);
  sub_267BBC920();
  __swift_destroy_boxed_opaque_existential_0(a5);
  (*(v18 + 8))(a4, v17);
  return v6;
}

unint64_t sub_267BBC84C()
{
  result = qword_2802294F0;
  if (!qword_2802294F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802294F0);
  }

  return result;
}

id sub_267BBC890(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_267EF2CF8();
  v4 = [v2 initWithNSUUID_];

  sub_267EF2D28();
  OUTLINED_FUNCTION_0_9();
  (*(v5 + 8))(a1);
  return v4;
}

void sub_267BBC920()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
  if (v1)
  {
    oslog = v1;
    [v1 setDomainExecutionType:*(v0 + 56)];

    v2 = sub_267EF89F8();
    v3 = sub_267EF95D8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v22 = v5;
      *v4 = 136315138;
      v6 = sub_267EF9798();
      v8 = sub_267BA33E8(v6, v7, &v22);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_267B93000, v2, v3, "#MessagesSELFPerformanceLogger Registered start event for %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267BBCB48(oslog, 0);
  }

  else
  {

    oslog = sub_267EF89F8();
    v9 = sub_267EF95E8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = sub_267EF9798();
      v14 = sub_267BA33E8(v12, v13, &v22);

      *(v10 + 4) = v14;
      OUTLINED_FUNCTION_4_19(&dword_267B93000, v15, v16, "#MessagesSELFPerformanceLogger Failed to create start event for %s", v17, v18, v19, v20, oslog);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }
}

void sub_267BBCB48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v5)
  {
    v27 = v5;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v27 setStartedOrChanged:v6];
      goto LABEL_11;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v27 setFailed:v9];
      v10 = OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_failed;
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        goto LABEL_11;
      }

      [v27 setEnded:v11];
      v10 = OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_ended;
    }

    *(v2 + v10) = 1;
LABEL_11:
    v12 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
    if (v12)
    {
      v13 = v12;
      [v27 setContextId:v3[10]];
      [v13 setFlowDomainExecutionContext_];
      sub_267EF3B18();

      v14 = v13;
      sub_267EF3AF8();
      __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
      sub_267EF3848();

      v15 = sub_267EF89F8();
      v16 = sub_267EF95D8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v17 = 136315394;
        if (a2)
        {
          if (a2 == 1)
          {
            v18 = 0x6572756C696166;
          }

          else
          {
            v18 = 6581861;
          }

          if (a2 == 1)
          {
            v19 = 0xE700000000000000;
          }

          else
          {
            v19 = 0xE300000000000000;
          }
        }

        else
        {
          v19 = 0xE500000000000000;
          v18 = 0x7472617473;
        }

        v23 = sub_267BA33E8(v18, v19, &v28);

        *(v17 + 4) = v23;
        *(v17 + 12) = 2080;
        v24 = sub_267EF9798();
        v26 = sub_267BA33E8(v24, v25, &v28);

        *(v17 + 14) = v26;
        _os_log_impl(&dword_267B93000, v15, v16, "#MessagesSELFPerformanceLogger successfully sent %s performance event for %s", v17, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }
    }

    else
    {
      v20 = sub_267EF89F8();
      v21 = sub_267EF95E8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_267B93000, v20, v21, "#MessagesSELFPerformanceLogger Failed to create client event", v22, 2u);
        OUTLINED_FUNCTION_32_0();
      }
    }

    goto LABEL_26;
  }

  v27 = sub_267EF89F8();
  v7 = sub_267EF95E8();
  if (os_log_type_enabled(v27, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_267B93000, v27, v7, "#MessagesSELFPerformanceLogger Failed to create execution context", v8, 2u);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_26:
}

id sub_267BBCF90()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_3_57());
  sub_267EF92D8();
  OUTLINED_FUNCTION_7_41();
  v3 = OUTLINED_FUNCTION_5_52();
  v5 = [v3 v4];

  v6 = v5;
  if (v0)
  {
    v7 = sub_267EF8FF8();
  }

  else
  {
    v7 = 0;
  }

  [v5 _setLaunchId_];

  return v5;
}

unint64_t sub_267BBD080(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_267BA33E8(v2, v3, va);
}

BOOL OUTLINED_FUNCTION_54_8()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_54_15()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t sub_267BBD25C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267BBD2F4(a1);
}

uint64_t sub_267BBD314()
{
  OUTLINED_FUNCTION_12();
  sub_267EF3D38();
  sub_267EF3D28();
  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267BBD38C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_267EF9028();
    OUTLINED_FUNCTION_23_21();
  }

  return OUTLINED_FUNCTION_61_0();
}

double sub_267BBD3E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_94_1(a2);
  }

  sub_267B9AFEC(a1 + 32, a2);
  return result;
}

uint64_t sub_267BBD414()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_267BBD44C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = [v0 type];
  if (v10 == 2 || v10 == 1)
  {
    sub_267EF90F8();
    v11 = sub_267EF79B8();
    v12 = 0;
  }

  else
  {
    v11 = sub_267EF79B8();
    v12 = 1;
  }

  v13 = 1;
  __swift_storeEnumTagSinglePayload(v9, v12, 1, v11);
  sub_267EF7568();
  swift_allocObject();
  sub_267EF7558();
  sub_267EF7528();

  sub_267BC2AF0(v0);
  if (v14)
  {
    sub_267EF90F8();

    v13 = 0;
  }

  v15 = sub_267EF79B8();
  v16 = 1;
  __swift_storeEnumTagSinglePayload(v7, v13, 1, v15);
  sub_267EF7548();

  sub_267BBD6F0(v7);
  v17 = [v0 label];
  if (v17)
  {
    v18 = v17;
    sub_267EF9028();

    sub_267EF90F8();

    v16 = 0;
  }

  __swift_storeEnumTagSinglePayload(v4, v16, 1, v15);
  sub_267EF7538();

  sub_267BBD6F0(v4);
  v19 = sub_267EF7518();

  sub_267BBD6F0(v9);
  return v19;
}

uint64_t sub_267BBD6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267BBD758(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = sub_267BBD380(a1);
  if (v18)
  {
    v19 = v18;
    v56 = v17;
  }

  else
  {
    v56 = sub_267BBDEAC();
    v19 = v20;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v21 = sub_267EF8A08();
  v22 = __swift_project_value_buffer(v21, qword_280240FB0);
  v23 = a1;
  v57 = v22;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v55 = v11;
    v28 = v19;
    v29 = a2;
    v30 = a3;
    v31 = v27;
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v32 = v23;
    _os_log_impl(&dword_267B93000, v24, v25, "#RecentInteractionUtils determining canUseConversationalName for  %@", v26, 0xCu);
    sub_267B9F98C(v31, &unk_280229E30, &unk_267EFC270);
    v33 = v31;
    a3 = v30;
    a2 = v29;
    v19 = v28;
    v11 = v55;
    MEMORY[0x26D60A7B0](v33, -1, -1);
    MEMORY[0x26D60A7B0](v26, -1, -1);
  }

  v34 = [v23 nameComponents];
  if (v34)
  {
    v35 = v34;
    sub_267EF2A18();

    v36 = sub_267EF2A58();
    v37 = 0;
  }

  else
  {
    v36 = sub_267EF2A58();
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v37, 1, v36);
  sub_267BBE134(v14, v16, &unk_28022BCA0, &unk_267EFD990);
  sub_267EF2A58();
  if (__swift_getEnumTagSinglePayload(v16, 1, v36))
  {
    sub_267B9F98C(v16, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    v42 = sub_267EF2A28();
    v44 = v43;
    sub_267B9F98C(v16, &unk_28022BCA0, &unk_267EFD990);
    if (v44)
    {
      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        v46 = v42;
        goto LABEL_28;
      }
    }
  }

  v38 = [v23 nameComponents];
  if (v38)
  {
    v39 = v38;
    v40 = v58;
    sub_267EF2A18();

    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v58;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v36);
  sub_267BBE134(v40, v11, &unk_28022BCA0, &unk_267EFD990);
  if (__swift_getEnumTagSinglePayload(v11, 1, v36))
  {

    sub_267B9F98C(v11, &unk_28022BCA0, &unk_267EFD990);
LABEL_33:
    v50 = sub_267EF89F8();
    v52 = sub_267EF95D8();
    if (os_log_type_enabled(v50, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_267B93000, v50, v52, "#RecentInteractionUtils name is not identifying, use full name", v53, 2u);
      MEMORY[0x26D60A7B0](v53, -1, -1);
    }

    LOBYTE(v50) = 0;
    goto LABEL_36;
  }

  v47 = sub_267EF2988();
  v44 = v48;
  sub_267B9F98C(v11, &unk_28022BCA0, &unk_267EFD990);
  if (!v44)
  {
LABEL_32:

    goto LABEL_33;
  }

  v49 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

    goto LABEL_32;
  }

  v46 = v47;
LABEL_28:
  LOWORD(v50) = sub_267DAB760(v46, v44, v56, v19, a2, a3);

  if ((v50 & 0x100) == 0)
  {
LABEL_36:
    v51 = 0;
    return v51 | (v50 & 1);
  }

  v51 = 256;
  return v51 | (v50 & 1);
}

uint64_t sub_267BBDC60(void *a1)
{
  v2 = sub_267EF6EA8();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  sub_267EF6E98();
  v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  LOWORD(a1) = sub_267BBD758(a1, v8, v9);

  (*(v4 + 8))(v8, v2);
  return a1 & 0x101;
}

id sub_267BBDEAC()
{
  sub_267EF9078();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v3 = sub_267BBD38C(v0, &selRef_contactIdentifier);
  if (!v4)
  {
    v3 = sub_267BBD38C(v0, &selRef_customIdentifier);
    if (!v5)
    {
      return sub_267DEAEC4();
    }
  }

  v14 = v3;
  v6 = [v0 personHandle];
  if (v6)
  {
    sub_267BBE048(v6);
    if (v7)
    {
      sub_267EF9068();
      sub_267EF9038();
      OUTLINED_FUNCTION_15_33();

      v8 = OUTLINED_FUNCTION_66();
      v9(v8);
      if (v1 >> 60 != 15)
      {
        v10 = sub_267EF2BC8();
        MEMORY[0x26D608E60](v10);

        MEMORY[0x26D608E60](58, 0xE100000000000000);

        v11 = OUTLINED_FUNCTION_54_0();
        sub_267BBE0C8(v11, v12);
      }
    }
  }

  return v14;
}

uint64_t sub_267BBE048(void *a1)
{
  v2 = [a1 value];

  if (v2)
  {
    sub_267EF9028();
    OUTLINED_FUNCTION_74_0();
  }

  return OUTLINED_FUNCTION_108();
}

uint64_t OUTLINED_FUNCTION_367@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267BF3128(v3, v4 + a1, a2, a3);
}

uint64_t sub_267BBE0C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_267BBE0DC(a1, a2);
  }

  return a1;
}

uint64_t sub_267BBE0DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_267BBE134(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_267BBE184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return v4;
}

uint64_t sub_267BBE1D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return a2;
}

id sub_267BBE22C(void *a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = sub_267BBD380(a1);
  if (!v2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v8 = sub_267EF89F8();
    v23 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v23))
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v24);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v25, v26, "#ContactsUtils canContact(for:) failed to get contactIdentifier - returning nil");
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_23;
  }

  v3 = v1;
  v4 = v2;
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267EFC020;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  v7 = sub_267EF92D8();

  v8 = [v5 predicateForContactsWithIdentifiers_];

  v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_267EFCA40;
  v11 = *MEMORY[0x277CBCF88];
  *(v10 + 32) = *MEMORY[0x277CBCF88];
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B110, &qword_267F04E38);
  v13 = sub_267EF92D8();

  v40[0] = 0;
  v14 = [v9 unifiedContactsMatchingPredicate:v8 keysToFetch:v13 error:v40];

  v15 = v40[0];
  if (!v14)
  {
    v27 = v40[0];
    v28 = sub_267EF2A78();

    swift_willThrow();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    v30 = v28;
    v31 = sub_267EF89F8();
    v32 = sub_267EF95C8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_267B93000, v31, v32, "#ContactsUtils error thrown when querying for contacts: %@", v33, 0xCu);
      sub_267B9FF34(v34, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v34, -1, -1);
      MEMORY[0x26D60A7B0](v33, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_267BA9F38(0, &unk_28022B120, 0x277CBDA58);
  v16 = sub_267EF92F8();
  v17 = v15;

  if (sub_267BAF0DC(v16) > 1)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_32();
      *v21 = 0;
      _os_log_impl(&dword_267B93000, v19, v20, "#ContactsUtils A contacts query based on contactID returned > 1 contacts", v21, 2u);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    goto LABEL_23;
  }

  if (!sub_267BAF0DC(v16))
  {

LABEL_23:

    return 0;
  }

  sub_267BBD0EC(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x26D609870](0, v16);
  }

  else
  {
    v37 = *(v16 + 32);
  }

  v38 = v37;

  return v38;
}

uint64_t sub_267BBE6F8(void *a1)
{
  v2 = [a1 content];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

id sub_267BBE768@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a3;
  ObjectType = swift_getObjectType();
  v8 = sub_267EF8EC8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v54 - v13;
  if ((sub_267BBEE50() & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (os_log_type_enabled(v27, v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_7(&dword_267B93000, v29, v28, "#INObjects+DialogObjectConversion display name NOT from phone number");
      OUTLINED_FUNCTION_42_0();
    }

    v30 = [v4 displayName];
    sub_267EF9028();

    v31 = v59;
    sub_267EF90F8();

    v24 = sub_267EF79B8();
    v25 = v31;
    goto LABEL_16;
  }

  v58 = ObjectType;
  if (qword_280228760 != -1)
  {
    swift_once();
  }

  v15 = qword_280240AF0;
  result = [v4 displayName];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = [v15 objectForKey_];

  if (v18)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (os_log_type_enabled(v20, v21))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_7(&dword_267B93000, v22, v21, "#INObjects+DialogObjectConversion returning inferred unknown contact from cache");
      OUTLINED_FUNCTION_42_0();
    }

    sub_267EF9028();
    v23 = v59;
    sub_267EF90F8();

    v24 = sub_267EF79B8();
    v25 = v23;
LABEL_16:

    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  }

  v56 = v9;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v57 = v32 + 16;
  v33 = v32;
  *(v32 + 24) = 0;
  v55 = dispatch_semaphore_create(0);
  if (qword_280228750 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(&qword_280240AC0, v60);
  __swift_project_boxed_opaque_existential_0(v60, v60[3]);
  v34 = [v4 displayName];
  v35 = sub_267EF9028();
  v54[0] = v36;
  v54[1] = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_267EFC020;
  if (a2)
  {
    v38 = a1;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (a2)
  {
    v39 = a2;
  }

  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = swift_allocObject();
  v40[2] = v4;
  v40[3] = v33;
  v41 = v55;
  v42 = v58;
  v40[4] = v55;
  v40[5] = v42;

  v43 = v4;

  v44 = v41;
  sub_267EF67C8();

  __swift_destroy_boxed_opaque_existential_0(v60);
  sub_267EF8EB8();
  sub_267EF8ED8();
  v45 = *(v56 + 8);
  v45(v12, v8);
  sub_267EF9748();
  v45(v14, v8);
  if (sub_267EF8E48())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v46 = sub_267EF8A08();
    __swift_project_value_buffer(v46, qword_280240FB0);
    v47 = sub_267EF89F8();
    v48 = sub_267EF95E8();
    if (os_log_type_enabled(v47, v48))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_7(&dword_267B93000, v49, v48, "#INObjects+DialogObjectConversion timed out waiting for unknown contact suggestion");
      OUTLINED_FUNCTION_42_0();
    }
  }

  swift_beginAccess();
  if (*(v33 + 24))
  {

    v50 = v59;
    sub_267EF90F8();

    v51 = sub_267EF79B8();
    v52 = v50;
    v53 = 0;
  }

  else
  {

    v51 = sub_267EF79B8();
    v52 = v59;
    v53 = 1;
  }

  __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
}

uint64_t sub_267BBEDD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267BBEE08()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267BBEE50()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result type];

    if (v3 == 2)
    {
      result = [v0 personHandle];
      if (!result)
      {
        return result;
      }

      v4 = sub_267BBE048(result);
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        v8 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v8 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          v9 = [v0 displayName];
          v10 = sub_267EF9028();
          v12 = v11;

          if (v6 == v10 && v7 == v12)
          {
            goto LABEL_17;
          }

          v14 = sub_267EF9EA8();

          if (v14)
          {
            goto LABEL_18;
          }

          v15 = sub_267EF8FF8();

          v16 = PNCreateFormattedStringWithCountry();

          if (v16)
          {
            v17 = sub_267EF9028();
            v19 = v18;
          }

          else
          {
            v17 = 0;
            v19 = 0;
          }

          v20 = [v0 displayName];
          v21 = sub_267EF9028();
          v23 = v22;

          if (v19)
          {
            if (v17 != v21 || v19 != v23)
            {
              v25 = sub_267EF9EA8();

              return v25 & 1;
            }

LABEL_17:

LABEL_18:

            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t INMessageEffectType.description.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7269427970706168;
      break;
    case 2:
      result = 0x69747465666E6F63;
      break;
    case 3:
      result = 0x73726573616CLL;
      break;
    case 4:
      result = 0x6B726F7765726966;
      break;
    case 5:
      result = 0x676E69746F6F6873;
      break;
    case 6:
      result = 0x6C62697369766E69;
      break;
    case 7:
      result = 0x656C746E6567;
      break;
    case 8:
      result = 1685417836;
      break;
    case 9:
      result = 0x746361706D69;
      break;
    case 10:
      result = 0x73656C6B72617073;
      break;
    case 11:
      result = 0x7472616568;
      break;
    case 12:
      result = 1869112165;
      break;
    case 13:
      result = 0x6867696C746F7073;
      break;
    default:
      sub_267EF9B68();

      v3 = sub_267EF9E58();
      MEMORY[0x26D608E60](v3);

      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_267BBF2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_267BA9948();
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 2;
  }
}

id sub_267BBF380(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  if (a1 && sub_267BAF0DC(a1))
  {
    sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D609870](0, v5);
    }

    else
    {
      v6 = *(v5 + 32);
    }

    v7 = v6;
    v8 = sub_267EF67A8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);

  v12 = a2;
  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v15 = 136315394;
    *(v15 + 4) = sub_267BA33E8(v8, v10, v32);
    *(v15 + 12) = 2080;
    v16 = [v12 displayName];
    v17 = sub_267EF9028();
    v18 = v12;
    v20 = v19;

    v21 = sub_267BA33E8(v17, v20, v32);
    v12 = v18;

    *(v15 + 14) = v21;
    _os_log_impl(&dword_267B93000, v13, v14, "#INObjects+DialogObjectConversion contact description %s displayName %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v31, -1, -1);
    MEMORY[0x26D60A7B0](v15, -1, -1);
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  if (!sub_267BAF0DC(v5))
  {
    v5 = 0;
LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D609870](0, v5);
  }

  else
  {
    v22 = *(v5 + 32);
  }

  v23 = v22;
  v5 = sub_267EF67A8();
  v25 = v24;

LABEL_18:
  swift_beginAccess();
  *(a3 + 16) = v5;
  *(a3 + 24) = v25;

  if (!v25)
  {

    return sub_267EF9758();
  }

  v26 = qword_280228760;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_280240AF0;
  v28 = sub_267EF8FF8();
  result = [v12 displayName];
  if (result)
  {
    v30 = result;

    [v27 setObject:v28 forKey:v30];

    return sub_267EF9758();
  }

  __break(1u);
  return result;
}

char *sub_267BBF714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229848, &qword_267EFE9E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_267BBF808()
{
  OUTLINED_FUNCTION_12();
  v1[43] = v2;
  v1[44] = v0;
  v1[41] = v3;
  v1[42] = v4;
  v5 = type metadata accessor for SearchForMessagesFlow.State(0);
  v1[45] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[46] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  v1[47] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[48] = v7;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BBF900(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v10, v11, "#SearchForMessagesFlow Sharing policy flow failed, request unsupported", v12, 2u);
      MEMORY[0x26D60A7B0](v12, -1, -1);
    }

    sub_267C266B0();
    v13 = swift_allocError();
    *v14 = 0xD00000000000001ALL;
    v14[1] = 0x8000000267F1BA30;
    *v8 = v13;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v15 = sub_267EF8A08();
    __swift_project_value_buffer(v15, qword_280240FB0);
    v16 = sub_267EF89F8();
    v17 = sub_267EF95C8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_267B93000, v16, v17, "#SearchForMessagesFlow Sharing policy flow passed", v18, 2u);
      MEMORY[0x26D60A7B0](v18, -1, -1);
    }

    sub_267BBF30C(a3, v8);
  }

  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  swift_beginAccess();
  sub_267B9FF94(v8, a2 + v19);
  return swift_endAccess();
}

uint64_t sub_267BBFB9C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_267BAEBEC;

  return sub_267BBFC38();
}

uint64_t sub_267BBFC38()
{
  OUTLINED_FUNCTION_12();
  v1[108] = v0;
  v1[107] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  v1[109] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[110] = v4;
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v5 = type metadata accessor for SearchForMessagesFlow.State(0);
  v1[114] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267BBFD44()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v45 = type metadata accessor for SearchForMessagesFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v46 = v9 - v8;
  v44 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  type metadata accessor for SearchForMessagesState();
  *(swift_allocObject() + 16) = 0;
  sub_267B9AFEC(v2 + 16, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = type metadata accessor for SearchForMessagesRCHFlowStrategy(0);
  OUTLINED_FUNCTION_97(v21);
  v22 = OUTLINED_FUNCTION_80_11();
  v23 = sub_267BC025C(v22, &v51, v16);
  sub_267BC08F0();
  sub_267BC0B20();
  v25 = v24;

  v47 = v4;
  sub_267BBF30C(v4, &v51);
  if (v52[24])
  {
    v26 = v51;
    __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory), *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory + 24));
    sub_267E2F5A8(v23, v25, v26);

LABEL_5:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_32();
      *v34 = 0;
      _os_log_impl(&dword_267B93000, v32, v33, "#SearchForMessagesFlow pushing RCHFlow", v34, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    v35 = v46;
    swift_storeEnumTagMultiPayload();
    v36 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
    OUTLINED_FUNCTION_66_3(v2 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state, &v51);
    sub_267B9FF94(v35, v2 + v36);
    swift_endAccess();
    sub_267BBF30C(v47, &v51);
    v37 = swift_allocObject();
    *(v37 + 16) = v2;
    v38 = *v52;
    *(v37 + 24) = v51;
    *(v37 + 40) = v38;
    *(v37 + 49) = *&v52[9];

    sub_267EF3FD8();

    goto LABEL_15;
  }

  v43[2] = v6;
  sub_267B9A5E8(&v51, v48);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory), *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory + 24));
  v43[0] = v25;
  v43[1] = v23;
  sub_267E2F448(v23, v25);
  v27 = v49;
  v28 = v50;
  __swift_project_boxed_opaque_existential_0(v48, v49);
  v29 = *(v28 + 8);

  v29(v27, v28);
  v30 = sub_267EF3528();

  (*(v11 + 8))(v1, v44);
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_0(v48);
    goto LABEL_5;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v39 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95E8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_32();
    *v42 = 0;
    _os_log_impl(&dword_267B93000, v40, v41, "#SearchForMessagesFlow RCHFlow.on() returned false", v42, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4018();

  __swift_destroy_boxed_opaque_existential_0(v48);
LABEL_15:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BC025C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_58();
  v56 = v8;
  MEMORY[0x28223BE20](v9);
  v55 = v53 - v10;
  v11 = sub_267EF7B88();
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_0();
  v12 = sub_267EF68A8();
  OUTLINED_FUNCTION_58();
  v57 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v53 - v22;
  v24 = (v4 + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_appName);
  *v24 = 0;
  v24[1] = 0;
  *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow32SearchForMessagesRCHFlowStrategy_searchForMessagesState) = a1;
  v54 = a2;
  sub_267B9AFEC(a2, v77);
  v53[2] = a3;
  sub_267BC0880(a3, v23);
  v25 = qword_2802286F0;
  v53[1] = a1;

  if (v25 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(qword_2802405A0, v76);
  v53[0] = sub_267EF3AA8();
  v26 = sub_267EF8938();
  v27 = sub_267EF8928();
  v74 = v26;
  v75 = MEMORY[0x277D5FDD8];
  *&v73 = v27;
  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  v71 = &type metadata for CATProvider;
  v72 = &off_2878CE7A0;
  v68 = &type metadata for MessagesFeatureFlagsImpl;
  v69 = off_2878D1228;
  v65 = v12;
  v66 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
  (*(v57 + 16))(boxed_opaque_existential_0, v17, v12);
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(v4 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v70, v71);
  *(v4 + 64) = sub_267BB4A3C();
  sub_267BC0880(v23, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v58) == 1)
  {
    v63[3] = v12;
    v63[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v63);
    sub_267EF6898();
    v29 = sub_267EF8928();
    v62[3] = v26;
    v62[4] = MEMORY[0x277D5FDD8];
    v62[0] = v29;
    sub_267B9AFEC(v77, v61);
    sub_267B9AFEC(v63, v60);
    sub_267B9AFEC(v62, v59);
    v30 = swift_allocObject();
    sub_267B9A5E8(v61, v30 + 16);
    sub_267B9A5E8(v60, v30 + 56);
    sub_267B9A5E8(v59, v30 + 96);
    sub_267EF4C08();
    sub_267BC1E68();
    v31 = v55;
    OUTLINED_FUNCTION_12_11();
    sub_267EF7058();

    OUTLINED_FUNCTION_12_11();
    sub_267B9FF34(v32, v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v35 = OUTLINED_FUNCTION_15_14();
    v36(v35);
    OUTLINED_FUNCTION_12_11();
    sub_267B9FF34(v37, v38, v39);
    __swift_destroy_boxed_opaque_existential_0(v62);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v40 = v58;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v58);
    v42 = v56;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9FF34(v21, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {

    OUTLINED_FUNCTION_12_11();
    sub_267B9FF34(v43, v44, v45);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v46 = OUTLINED_FUNCTION_15_14();
    v47(v46);
    OUTLINED_FUNCTION_12_11();
    sub_267B9FF34(v48, v49, v50);
    v31 = v55;
    v42 = v56;
    v40 = v58;
    (*(v56 + 32))(v55, v21, v58);
  }

  (*(v42 + 32))(v4 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v31, v40);
  v51 = (v4 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  *v51 = v53[0];
  v51[1] = &off_2878D5360;
  sub_267B9A5E8(&v67, v4 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(&v73, v4 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v64, v4 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v77, v4 + 16);
  __swift_destroy_boxed_opaque_existential_0(v70);
  __swift_destroy_boxed_opaque_existential_0(v76);
  return v4;
}

uint64_t sub_267BC0838()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267BC0880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BC08F0()
{
  sub_267BBF30C(v0, v8);
  if (v9)
  {

    v1 = sub_267EF7C18();
  }

  else
  {
    sub_267B9A5E8(v8, v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v1 = (*(v3 + 368))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return v1;
}

uint64_t sub_267BC09A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v9, a4);
}

uint64_t type metadata accessor for SearchForMessageHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_28022ACE8;
  if (!qword_28022ACE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BC0ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267BC0B20()
{
  OUTLINED_FUNCTION_48_0();
  v83[0] = v2;
  v87 = sub_267EF3DE8();
  OUTLINED_FUNCTION_58();
  v86 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v85 = v6 - v5;
  v7 = sub_267EF68A8();
  OUTLINED_FUNCTION_58();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C840, &qword_267F0B838);
  OUTLINED_FUNCTION_58();
  v89 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_60();
  v88 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v83 - v22;
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  v83[1] = sub_267BA9F38(0, &qword_280229680, 0x277CD4050);
  sub_267EF36C8();

  v99 = v16;
  v101 = v23;
  sub_267EF3648();
  v84 = v0;
  sub_267B9AFEC(v0 + 16, v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v92 = v1;
  OUTLINED_FUNCTION_78();
  v98 = v24;
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  sub_267B9AFEC(qword_2802405A0, &v111);
  v100 = sub_267EF3AA8();
  v97 = sub_267EF8938();
  sub_267EF8928();

  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
  v109 = &type metadata for CATProvider;
  v110 = &off_2878CE7A0;
  v106 = &type metadata for MessagesFeatureFlagsImpl;
  v107 = off_2878D1228;
  v103 = v7;
  v104 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v102);
  v29 = *(v9 + 16);
  v95 = v9 + 16;
  v96 = v29;
  v29(boxed_opaque_existential_0, v13, v7);
  v30 = type metadata accessor for SearchForMessagesNeedsValueFlowStrategy(0);
  OUTLINED_FUNCTION_97(v30);
  v31 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
  __swift_mutable_project_boxed_opaque_existential_1(&v105, v106);
  OUTLINED_FUNCTION_71_9();
  v91 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_0();
  v34 = OUTLINED_FUNCTION_26_30(v33);
  v35(v34);
  sub_267BDCDC8();
  v37 = v36;

  v38 = *(v31 + 8);
  v93 = v31 + 8;
  v94 = v38;
  v38(v13, v7);
  __swift_destroy_boxed_opaque_existential_0(&v102);
  OUTLINED_FUNCTION_12_39();
  *&v114[0] = v37;
  sub_267BC1DB4(&qword_28022C848, type metadata accessor for SearchForMessagesNeedsValueFlowStrategy, &unk_267F06B60);
  OUTLINED_FUNCTION_68_12();
  sub_267EF3548();

  sub_267EF3628();
  v39 = v84;
  sub_267B9AFEC(v84 + 16, v114);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v98);
  sub_267B9AFEC(qword_2802405A0, &v111);
  sub_267EF8928();

  v90 = v13;
  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
  v109 = &type metadata for CATProvider;
  v110 = &off_2878CE7A0;
  v106 = &type metadata for MessagesFeatureFlagsImpl;
  v107 = off_2878D1228;
  v103 = v91;
  v104 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(&v102);
  OUTLINED_FUNCTION_67_12();
  v43();
  v44 = type metadata accessor for SearchForMessagesUnsupportedValueFlowStrategy(0);
  OUTLINED_FUNCTION_97(v44);
  __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
  __swift_mutable_project_boxed_opaque_existential_1(&v105, v106);
  OUTLINED_FUNCTION_71_9();
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_0_0();
  v47 = OUTLINED_FUNCTION_26_30(v46);
  v48(v47);
  sub_267BDCDC8();
  v50 = v49;

  OUTLINED_FUNCTION_66_17();
  v51();
  __swift_destroy_boxed_opaque_existential_0(&v102);
  OUTLINED_FUNCTION_12_39();
  *&v114[0] = v50;
  sub_267BC1DB4(&qword_28022C850, type metadata accessor for SearchForMessagesUnsupportedValueFlowStrategy, &unk_267F05E00);
  OUTLINED_FUNCTION_68_12();
  sub_267EF35E8();

  v52 = v99;
  sub_267EF3678();
  v53 = swift_allocObject();
  v54 = v83[0];
  *(v53 + 16) = v39;
  *(v53 + 24) = v54;

  sub_267EF3638();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v55 = sub_267BB4A3C();
  sub_267B9AFEC(v39 + 16, v114);
  v56 = type metadata accessor for CommonTemplateProvider();
  v57 = OUTLINED_FUNCTION_49(v56);
  v58 = type metadata accessor for TCCTemplateProvider();
  v59 = OUTLINED_FUNCTION_49(v58);
  v60 = v85;
  sub_267EF3DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C638, &qword_267F0B0B8);
  v61 = swift_allocObject();
  v112 = v56;
  v113 = &off_2878D2530;
  *&v111 = v57;
  v109 = v58;
  v110 = &off_2878D0E48;
  *&v108 = v59;
  v62 = v87;
  v106 = v87;
  v107 = &off_2878D0D80;
  v63 = __swift_allocate_boxed_opaque_existential_0(&v105);
  v64 = v86;
  (*(v86 + 16))(v63, v60, v62);
  v103 = &type metadata for MessagesFeatureFlagsImpl;
  v104 = off_2878D1228;
  (*(v64 + 8))(v60, v62);
  *(v61 + 224) = 0;
  *(v61 + 56) = v55;
  sub_267B9A5E8(&v111, v61 + 64);
  sub_267B9A5E8(&v108, v61 + 104);
  sub_267B9A5E8(&v105, v61 + 144);
  sub_267B9A5E8(&v102, v61 + 184);
  sub_267B9A5E8(v114, v61 + 16);
  *&v114[0] = v61;
  sub_267BC1E20(&qword_28022C648, &qword_28022C638, &qword_267F0B0B8, &unk_267F01168);
  sub_267EF35C8();

  OUTLINED_FUNCTION_61_0();
  sub_267EF36A8();

  sub_267EF3698();
  sub_267B9AFEC(v39 + 16, v114);
  v65 = v92;
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v98);
  sub_267B9AFEC(qword_2802405A0, &v111);
  v69 = sub_267EF8928();

  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
  v109 = &type metadata for CATProvider;
  v110 = &off_2878CE7A0;
  v106 = &type metadata for MessagesFeatureFlagsImpl;
  v107 = off_2878D1228;
  v103 = v91;
  v104 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(&v102);
  OUTLINED_FUNCTION_67_12();
  v70();
  v71 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(0);
  v72 = OUTLINED_FUNCTION_97(v71);
  __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
  __swift_mutable_project_boxed_opaque_existential_1(&v105, v106);
  __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  (*(v74 + 16))(&type metadata for MessagesFeatureFlagsImpl);
  v75 = sub_267E335F4(v114, v65, v100, &off_2878D5360, v69, &type metadata for MessagesFeatureFlagsImpl, v72);

  OUTLINED_FUNCTION_66_17();
  v76();
  __swift_destroy_boxed_opaque_existential_0(&v102);
  OUTLINED_FUNCTION_12_39();
  *&v114[0] = v75;
  sub_267BC1DB4(&qword_28022C858, type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy, &unk_267F0C010);
  OUTLINED_FUNCTION_68_12();
  sub_267EF35A8();

  v77 = v101;
  sub_267EF3688();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C860, &qword_267F0B850);
  *&v114[0] = OUTLINED_FUNCTION_49(v78);
  sub_267BC1E20(&qword_28022C868, &qword_28022C860, &qword_267F0B850, &unk_267F07C70);
  OUTLINED_FUNCTION_68_12();
  sub_267EF3598();

  OUTLINED_FUNCTION_26_0();
  sub_267EF3668();
  v79 = v89;
  v80 = OUTLINED_FUNCTION_61_0();
  v81(v80);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C870, &qword_267F0B858);
  OUTLINED_FUNCTION_97(v82);
  OUTLINED_FUNCTION_43();
  sub_267EF36D8();
  (*(v79 + 8))(v77, v52);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BC1868()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_74_2(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_110_1(uint64_t a1)
{

  return sub_267EF9098();
}

uint64_t OUTLINED_FUNCTION_74_6(uint64_t a1)
{
  *(v1 + 1232) = a1;
  v3 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_0((v2 + 16), v3);
  return v3;
}

uint64_t OUTLINED_FUNCTION_74_13(uint64_t a1)
{

  return sub_267B9F98C(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_77_2()
{
  *(*(v1 - 96) + 192) = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_77_3()
{
}

uint64_t OUTLINED_FUNCTION_77_6()
{
}

uint64_t OUTLINED_FUNCTION_77_8()
{
}

void OUTLINED_FUNCTION_33_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1)
{

  return sub_267EF9EA8();
}

id OUTLINED_FUNCTION_33_8(float a1)
{
  *v3 = a1;
  *v2 = v1;

  return v1;
}

void OUTLINED_FUNCTION_33_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_33_11()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

__n128 OUTLINED_FUNCTION_33_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *v10 = a10.n128_u32[0];
  return result;
}

unint64_t OUTLINED_FUNCTION_33_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v14 - 96) = a1;
  *v13 = a13;

  return sub_267DF0E90();
}

char *OUTLINED_FUNCTION_33_16(void *a1, uint64_t a2, uint64_t a3, void *a4)
{

  return sub_267DF6184(a1, v7, v4, a4, v5, 0, v6, v8);
}

id OUTLINED_FUNCTION_33_17()
{

  return sub_267BC20F4(v2, 0, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_33_18()
{
  *v1 = 0;
  *(v1 + *(v2 + 56)) = v0;
}

uint64_t OUTLINED_FUNCTION_33_19@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  strcpy((result + 80), "manualDownload");
  *(result + 95) = -18;
  return result;
}

uint64_t sub_267BC1DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BC1E20(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267BC1E68()
{
  result = qword_280229118;
  if (!qword_280229118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229118);
  }

  return result;
}

void *sub_267BC1EAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_267BC1FDC(a1, a2);
  sub_267BC1EF8(byte_2878CA258);
  return v3;
}

char *sub_267BC1EF8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (!result || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_267BBF714(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 2))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_267BC1FDC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_267EF91B8())
  {
    result = sub_267BBAFA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_267EF9B38();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_267EF9BC8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

id sub_267BC20F4(uint64_t a1, unsigned __int8 a2, int a3, uint64_t a4, void *a5)
{
  v82 = a1;
  v83 = a4;
  LODWORD(v6) = a3;
  sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v80 = v9;
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v77[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v84 = &v77[-v15];
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);
  v17 = a5;
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();

  v20 = os_log_type_enabled(v18, v19);
  v85 = v17;
  if (v20)
  {
    v21 = v6;
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v86[0] = v22;
    *v6 = 136315138;
    v23 = sub_267BBD380(v17);
    if (!v24)
    {
      v23 = sub_267BBDEAC();
    }

    sub_267BA33E8(v23, v24, v86);
    OUTLINED_FUNCTION_58_1();

    *(v6 + 4) = v17;
    _os_log_impl(&dword_267B93000, v18, v19, "#INObjects+DialogObjectConversion converting INPerson %s to DialogPerson", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D60A7B0](v22, -1, -1);
    MEMORY[0x26D60A7B0](v6, -1, -1);

    LODWORD(v6) = v21;
  }

  else
  {
  }

  v25 = a2 | v6;
  v26 = v85;
  if (((a2 | v6) & 1) == 0)
  {
    v27 = v6;
    if (qword_280228758 != -1)
    {
      OUTLINED_FUNCTION_6_28(&qword_280228758);
    }

    v6 = qword_280240AE8;
    sub_267BBD380(v26);
    if (!v28)
    {
      sub_267BBDEAC();
    }

    sub_267EF8FF8();
    OUTLINED_FUNCTION_58_1();

    v29 = [v6 objectForKey_];

    LODWORD(v6) = v27;
    if (v29)
    {
      v30 = sub_267EF89F8();
      v31 = sub_267EF95D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_267B93000, v30, v31, "#INObjects+DialogObjectConversion Using cached version of this DialogPerson", v32, 2u);
        MEMORY[0x26D60A7B0](v32, -1, -1);
      }

      return v29;
    }
  }

  v33 = sub_267EF7758();
  OUTLINED_FUNCTION_97(v33);
  sub_267EF7748();
  if (a2)
  {
    v34 = 1;
    if (v6)
    {
      v78 = 1;
      goto LABEL_27;
    }

    v78 = 1;
    v37 = v82;
  }

  else
  {
    v87 = &type metadata for Features;
    v88 = sub_267BAFCAC();
    LOBYTE(v86[0]) = 9;
    v35 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v86);
    v36 = v35 & 1;
    v37 = v82;
    if (sub_267DA9594(v82, v36))
    {
      v38 = sub_267BBDC60(v26);
    }

    else
    {
      v38 = sub_267D2D4D8(v26);
    }

    v34 = v38;
    v78 = (v38 >> 8) & 1;
    if (v6)
    {
      goto LABEL_27;
    }
  }

  sub_267EF77C8();
  (*(v80 + 16))(v79, v37, v81);
  v39 = v26;
  if (sub_267EF7658())
  {
    sub_267EF77B8();
    sub_267EF76C8();
    LODWORD(v82) = v34;
    OUTLINED_FUNCTION_13_25();
    OUTLINED_FUNCTION_24_13();
    sub_267EF7628();
    sub_267EF76E8();

    OUTLINED_FUNCTION_13_25();
    OUTLINED_FUNCTION_24_13();
    sub_267EF7618();
    sub_267EF76D8();

    OUTLINED_FUNCTION_13_25();
    OUTLINED_FUNCTION_24_13();
    sub_267EF7798();
    sub_267EF76B8();

    OUTLINED_FUNCTION_13_25();
    OUTLINED_FUNCTION_24_13();
    sub_267EF7768();
    sub_267EF7678();

    v26 = v85;
    sub_267B9F98C(v14, &unk_28022AE30, &qword_267EFC0B0);
  }

LABEL_27:
  v40 = sub_267BBE22C(v26);
  if (!v40)
  {
    goto LABEL_39;
  }

  v41 = v40;
  v42 = [v40 termsOfAddress];
  sub_267BA9F38(0, &qword_28022B150, 0x277CCACB8);
  v43 = sub_267EF92F8();

  if (!sub_267BAF0DC(v43))
  {

LABEL_38:

    goto LABEL_39;
  }

  v44 = OUTLINED_FUNCTION_2_36();
  sub_267BBD0EC(v44, v45, v46);
  if (v42)
  {
    v47 = MEMORY[0x26D609870](0, v43);
  }

  else
  {
    v47 = *(v43 + 32);
  }

  v48 = v47;

  v49 = sub_267D32660(v48);
  if (!v49)
  {

    goto LABEL_38;
  }

  v50 = v49;
  if (sub_267BAF0DC(v49))
  {
    LODWORD(v82) = v6;
    v51 = OUTLINED_FUNCTION_2_36();
    sub_267BBD0EC(v51, v52, v53);
    if (v42)
    {
      v54 = MEMORY[0x26D609870](0, v50);
    }

    else
    {
      v54 = *(v50 + 32);
    }

    v6 = v54;

    v55 = [v6 pronoun];

    sub_267EF9028();
    v56 = sub_267EF7818();
    OUTLINED_FUNCTION_97(v56);
    sub_267EF7808();
    sub_267EF90F8();

    v57 = sub_267EF79B8();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v57);
    sub_267EF77E8();
    OUTLINED_FUNCTION_58_1();

    sub_267B9F98C(v14, &unk_28022AE30, &qword_267EFC0B0);
    sub_267EF77F8();

    v26 = v85;
    LOBYTE(v6) = v82;
  }

  else
  {
  }

LABEL_39:
  v58 = v84;
  if ((v6 & 1) == 0)
  {
    if (v83)
    {
      swift_beginAccess();
      sub_267BBD3E4();
      v60 = v87;
      if (!v87)
      {
        sub_267B9F98C(v86, &qword_280229910, &unk_267EFEB70);
        v68 = 0;
LABEL_51:
        sub_267BBE768(v68, v60, v58);

        goto LABEL_52;
      }

      v61 = v88;
      __swift_project_boxed_opaque_existential_0(v86, v87);
      v62 = (*(v61 + 16))(v60, v61);
      if (sub_267BAF0DC(v62))
      {
        v63 = OUTLINED_FUNCTION_2_36();
        sub_267BBD0EC(v63, v64, v65);
        if (v61)
        {
          v66 = MEMORY[0x26D609870](0, v62);
        }

        else
        {
          v66 = *(v62 + 32);
        }

        v67 = v66;

        v68 = sub_267BBE6F8(v67);
        v60 = v69;
        __swift_destroy_boxed_opaque_existential_0(v86);
        v58 = v84;
        goto LABEL_51;
      }

      __swift_destroy_boxed_opaque_existential_0(v86);
    }

    v68 = 0;
    v60 = 0;
    goto LABEL_51;
  }

  v59 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v59);
LABEL_52:
  v70 = sub_267EF76A8();
  sub_267B9F98C(v58, &unk_28022AE30, &qword_267EFC0B0);
  sub_267EF7718();
  OUTLINED_FUNCTION_43();

  v71 = [v26 relationship];
  if (v71)
  {
  }

  sub_267EF7698();

  v72 = [v26 personHandle];
  if (v72)
  {
    v73 = v72;
    sub_267BBD44C();
  }

  sub_267EF7668();

  sub_267EF7728();
  OUTLINED_FUNCTION_58_1();

  sub_267EF7688();
  OUTLINED_FUNCTION_43();

  v29 = sub_267EF7738();

  if (v25 & 1) == 0 && (v78)
  {
    if (qword_280228758 != -1)
    {
      OUTLINED_FUNCTION_6_28(&qword_280228758);
    }

    v74 = qword_280240AE8;
    sub_267BBD380(v26);
    if (!v75)
    {
      sub_267BBDEAC();
    }

    sub_267EF8FF8();
    OUTLINED_FUNCTION_58_1();

    [v74 setObject:v29 forKey:v70];
  }

  return v29;
}

uint64_t sub_267BC2AF0(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

BOOL sub_267BC2B54()
{
  OUTLINED_FUNCTION_60_4();
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

id sub_267BC2BFC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_267EF8FF8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_123_0@<X0>(uint64_t a1@<X8>)
{

  return sub_267B9A5E8((v1 + 584), v2 + a1);
}

uint64_t OUTLINED_FUNCTION_123_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_267DB37C4(a1, a2, a3, a4, v6, a6, 1u);
}

uint64_t OUTLINED_FUNCTION_123_3()
{
}

uint64_t sub_267BC2D54(void *a1)
{
  v1 = [a1 supportedIntentsGroupedByExtensionPoints];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
  v3 = sub_267EF8EF8();

  return v3;
}

BOOL sub_267BC2DD0()
{
  if (sub_267BB6154(0xD000000000000013, 0x8000000267F0F820))
  {
    return 1;
  }

  return sub_267BB6154(0xD000000000000019, 0x8000000267F1A5F0);
}

id sub_267BC2E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_267EF8FF8();
  v6 = sub_267EF8FF8();
  v7 = [v4 levelForFactor:v5 withNamespaceName:v6];

  return v7;
}

uint64_t sub_267BC2EE8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_267C94D90(a1), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_52_3(v2);
  }

  else
  {
    OUTLINED_FUNCTION_114();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267BC2F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_267BA9948();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_93_2(v3);
}

BOOL sub_267BC2F78(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_267EF9FC8();
  sub_267EF9128();
  sub_267EFA018();
  OUTLINED_FUNCTION_12_54();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_267EF9EA8();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

char *sub_267BC305C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_267BC3164(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_267EF9028();

  return v4;
}

uint64_t sub_267BC31D0(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267BC3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_267EF9EA8() & 1;
  }
}

uint64_t sub_267BC32EC(uint64_t a1)
{
  v157 = sub_267EF6718();
  OUTLINED_FUNCTION_23();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v150 = v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  v162 = (&v139 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1(&v139 - v11);
  v143 = sub_267EF8228();
  OUTLINED_FUNCTION_23();
  v142 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v15 - v14);
  v148 = sub_267EF8428();
  OUTLINED_FUNCTION_23();
  v147 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v19 - v18);
  v153 = sub_267EF4BE8();
  OUTLINED_FUNCTION_23();
  v152 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v149 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1(&v139 - v24);
  v25 = sub_267EF4C08();
  OUTLINED_FUNCTION_23();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  v154 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  v158 = &v139 - v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  v159 = &v139 - v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  v36 = &v139 - v35;
  v37 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_0_0();
  v43 = v42 - v41;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v44 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
  v45 = *(v39 + 16);
  v160 = a1;
  v45(v43, a1, v37);
  v155 = v1;
  v46 = sub_267EF89F8();
  v47 = sub_267EF95C8();
  v48 = os_log_type_enabled(v46, v47);
  v156 = v4;
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_48();
    v140 = OUTLINED_FUNCTION_52();
    v165[0] = v140;
    *v49 = 136315138;
    sub_267BC41E0(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v50 = sub_267EF9E58();
    v144 = v36;
    v51 = v25;
    v52 = v27;
    v54 = v53;
    (*(v39 + 8))(v43, v37);
    v55 = sub_267BA33E8(v50, v54, v165);
    v27 = v52;
    v25 = v51;
    v36 = v144;

    *(v49 + 4) = v55;
    _os_log_impl(&dword_267B93000, v46, v47, "Gatekeeper# received input: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v140);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {

    (*(v39 + 8))(v43, v37);
  }

  sub_267EF4B88();
  v56 = OUTLINED_FUNCTION_68_0();
  v58 = v57(v56);
  v60 = v161;
  v59 = v162;
  v61 = v159;
  if (v58 == *MEMORY[0x277D5C128])
  {
    goto LABEL_7;
  }

  if (v58 == *MEMORY[0x277D5C158])
  {
    v66 = v154;
    (*(v27 + 16))(v154, v36, v25);
    (*(v27 + 96))(v66, v25);
    v67 = *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D50, &qword_267F0C8C0) + 48));
    v69 = v156;
    v68 = v157;
    (*(v156 + 32))(v59, v66, v157);
    OUTLINED_FUNCTION_72();
    swift_beginAccess();
    sub_267BB5E24(v60 + 56, v165);
    if (v166 == 2)
    {
      v160 = v67;
      (*(v69 + 16))(v150, v59, v68);
      v70 = type metadata accessor for PhoneCallNLv3Intent(0);
      OUTLINED_FUNCTION_27_4();
      swift_allocObject();
      v71 = OUTLINED_FUNCTION_25_0();
      v72 = sub_267DD2140(v71);
      if (v72)
      {
        v165[3] = v70;
        v165[4] = &off_2878D5AC8;
        v165[0] = v72;

        v73 = sub_267EF4BF8();

        (*(v69 + 8))(v59, v68);
        v165[5] = v73;
        v166 = 3;
        OUTLINED_FUNCTION_66_3(v60 + 56, v163);
        sub_267BE9CA0(v165, v60 + 56);
LABEL_12:
        swift_endAccess();
LABEL_16:
        v76 = OUTLINED_FUNCTION_68_0();
        v77(v76);
        v65 = 1;
        return v65 & 1;
      }

      v106 = sub_267EF89F8();
      v107 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_36(v107))
      {
        v108 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v108);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v109, v110, v111, v112, v113, 2u);
        OUTLINED_FUNCTION_26();
      }

      (*(v69 + 8))(v162, v157);
    }

    else
    {
      sub_267B9B9EC(v165);

      v78 = sub_267EF89F8();
      v79 = sub_267EF95E8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_48();
        v81 = OUTLINED_FUNCTION_52();
        v163[0] = v81;
        *v80 = 136315138;
        sub_267BB5E24(v60 + 56, v165);
        v82 = sub_267EF9098();
        v84 = sub_267BA33E8(v82, v83, v163);

        *(v80 + 4) = v84;
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();

        (*(v156 + 8))(v162, v157);
      }

      else
      {

        (*(v156 + 8))(v59, v157);
      }
    }

    goto LABEL_42;
  }

  if (v58 == *MEMORY[0x277D5C150])
  {
    (*(v27 + 16))(v159, v36, v25);
    (*(v27 + 96))(v61, v25);
    v74 = objc_opt_self();
    sub_267EF4BC8();
    v75 = sub_267EF8FF8();

    LODWORD(v74) = [v74 supports_];

    if (v74)
    {
      (*(v152 + 8))(v61, v153);
      goto LABEL_16;
    }

    (*(v152 + 32))(v151, v61, v153);
    (*(v147 + 104))(v146, *MEMORY[0x277D5D6F8], v148);
    v98 = sub_267EF8418();
    v100 = v99;
    v101 = OUTLINED_FUNCTION_100_0();
    v102(v101);
    if (v98 == sub_267EF4BC8() && v100 == v103)
    {

      v105 = v149;
    }

    else
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_98_1();

      v105 = v149;
      if ((v98 & 1) == 0)
      {
        (*(v152 + 8))(v151, v153);
        goto LABEL_20;
      }
    }

    v114 = v145;
    sub_267B9CC04(v151, v145);
    v115 = type metadata accessor for DirectInvocationUseCases(0);
    if (__swift_getEnumTagSinglePayload(v114, 1, v115) == 1)
    {
      sub_267B9FED8(v114, &unk_28022BBE0, qword_267EFD030);
      v116 = v153;
      v117 = v152;
    }

    else
    {
      OUTLINED_FUNCTION_66();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v116 = v153;
      v117 = v152;
      if (EnumCaseMultiPayload == 1)
      {
        v119 = v142;
        v120 = v141;
        v121 = OUTLINED_FUNCTION_61_0();
        v122 = v143;
        v123(v121);
        v162 = sub_267EF8218();
        v125 = v124;
        (*(v119 + 8))(v120, v122);
        (*(v117 + 8))(v151, v116);
        v165[0] = v162;
        v165[1] = v125;
        v166 = 0;
        OUTLINED_FUNCTION_66_3(v60 + 56, v164);
        sub_267BE9CA0(v165, v60 + 56);
        goto LABEL_12;
      }

      sub_267CCEDF4(v114);
    }

    v126 = v151;
    (*(v117 + 16))(v105, v151, v116);
    v127 = sub_267EF89F8();
    v128 = v105;
    v129 = sub_267EF95E8();
    if (os_log_type_enabled(v127, v129))
    {
      v130 = OUTLINED_FUNCTION_48();
      v162 = OUTLINED_FUNCTION_52();
      v165[0] = v162;
      *v130 = 136315138;
      v164[0] = sub_267EF4BD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C668, &unk_267F0B0F0);
      v131 = sub_267EF9098();
      v133 = v132;
      v144 = v36;
      v134 = *(v152 + 8);
      v134(v128, v153);
      sub_267BA33E8(v131, v133, v165);
      OUTLINED_FUNCTION_25_0();

      *(v130 + 4) = v128;
      _os_log_impl(&dword_267B93000, v127, v129, "Gatekeeper# Invalid button press received in invocation: %s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v162);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();

      v134(v151, v153);
    }

    else
    {

      v135 = *(v117 + 8);
      v135(v128, v116);
      v135(v126, v116);
    }

LABEL_42:
    v136 = OUTLINED_FUNCTION_68_0();
    v137(v136);
    v65 = 0;
    return v65 & 1;
  }

  if (v58 != *MEMORY[0x277D5C160])
  {
LABEL_20:
    v90 = sub_267EF89F8();
    v91 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v91))
    {
      v92 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v92);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_42;
  }

LABEL_7:
  v62 = *(v27 + 8);
  v63 = OUTLINED_FUNCTION_68_0();
  v62(v63);
  v64 = v158;
  sub_267EF4B88();
  v65 = sub_267E1E9BC(v64);
  (v62)(v64, v25);
  return v65 & 1;
}