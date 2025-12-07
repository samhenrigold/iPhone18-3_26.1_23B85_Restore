uint64_t sub_1B8FA8918()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE60);
  __swift_project_value_buffer(v0, qword_1EBABFE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UserReportTypeDefault";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UserReportTypeVisualLookup";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UserReportTypeHashtagImages";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UserReportTypeSafariSBA";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA8B80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE78);
  __swift_project_value_buffer(v0, qword_1EBABFE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UnknownClient";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Safari";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Spotlight";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Images";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "News";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VisualIntelligence";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA8E60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE90);
  __swift_project_value_buffer(v0, qword_1EBABFE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "DeletionReasonUnknown";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Age";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Size";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "UnknownVersion";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MismatchedVersion";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Filesystem";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Corruption";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "JSON";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "JetsamPrevention";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "TooManyFiles";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "DiagnosticsAndUsageDisabled";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "Empty";
  *(v29 + 1) = 5;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "UploadSuccess";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "NotFulfilled";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "CarryOnly";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "UnknownFileType";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8FA93A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CBF78);
  __swift_project_value_buffer(v0, qword_1ED9CBF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B9661280;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 1;
  *v4 = "avgRTT";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 2;
  *v8 = "cellRXPackets";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cellTXPackets";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "connectAttempts";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "connectSuccesses";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "minRTT";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "rxBytes";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "rxDuplicateBytes";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "rxOutOfOrderBytes";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "rxPackets";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "txBytes";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "txPackets";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "txRetransmitPackets";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "varRTT";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "wifiRXPackets";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "wifiTXPackets";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "wiredRXPackets";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "wiredTXPackets";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "statsType";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "txRetransmitBytes";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  return sub_1B964C760();
}

double sub_1B8FA99DC()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
  OUTLINED_FUNCTION_475_0();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 100) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  qword_1ED9CBF98 = v0;
  return result;
}

void sub_1B8FA9A40()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  *(v0 + 16) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 24) = 0;
  *(v0 + 100) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  OUTLINED_FUNCTION_521(v1 + 16, &v62);
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_18(v0 + 16, &v61);
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_521(v2 + 24, &v60);
  v4 = *(v2 + 24);
  OUTLINED_FUNCTION_18(v0 + 24, &v59);
  *(v0 + 24) = v4;
  OUTLINED_FUNCTION_521(v2 + 32, &v58);
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_18(v0 + 32, &v57);
  *(v0 + 32) = v5;
  OUTLINED_FUNCTION_521(v2 + 40, &v56);
  v6 = *(v2 + 40);
  OUTLINED_FUNCTION_18(v0 + 40, v55);
  *(v0 + 40) = v6;
  OUTLINED_FUNCTION_521(v2 + 44, v54);
  v7 = *(v2 + 44);
  OUTLINED_FUNCTION_18(v0 + 44, v53);
  *(v0 + 44) = v7;
  OUTLINED_FUNCTION_521(v2 + 48, v52);
  v8 = *(v2 + 48);
  OUTLINED_FUNCTION_18(v0 + 48, v51);
  *(v0 + 48) = v8;
  OUTLINED_FUNCTION_521(v2 + 56, v50);
  v9 = *(v2 + 56);
  OUTLINED_FUNCTION_18(v0 + 56, v49);
  *(v0 + 56) = v9;
  OUTLINED_FUNCTION_521(v2 + 64, v48);
  v10 = *(v2 + 64);
  OUTLINED_FUNCTION_18(v0 + 64, v47);
  *(v0 + 64) = v10;
  OUTLINED_FUNCTION_521(v2 + 72, v46);
  v11 = *(v2 + 72);
  OUTLINED_FUNCTION_18(v0 + 72, v45);
  *(v0 + 72) = v11;
  OUTLINED_FUNCTION_521(v2 + 80, v44);
  v12 = *(v2 + 80);
  OUTLINED_FUNCTION_18(v0 + 80, v43);
  *(v0 + 80) = v12;
  OUTLINED_FUNCTION_521(v2 + 88, v42);
  v13 = *(v2 + 88);
  OUTLINED_FUNCTION_18(v0 + 88, v41);
  *(v0 + 88) = v13;
  OUTLINED_FUNCTION_521(v2 + 96, v40);
  v14 = *(v2 + 96);
  OUTLINED_FUNCTION_18(v0 + 96, v39);
  *(v0 + 96) = v14;
  OUTLINED_FUNCTION_521(v2 + 104, v38);
  v15 = *(v2 + 104);
  OUTLINED_FUNCTION_18(v0 + 104, v37);
  *(v0 + 104) = v15;
  OUTLINED_FUNCTION_521(v2 + 112, v36);
  LODWORD(v15) = *(v2 + 112);
  OUTLINED_FUNCTION_18(v0 + 112, v35);
  *(v0 + 112) = v15;
  OUTLINED_FUNCTION_521(v2 + 120, v34);
  v16 = *(v2 + 120);
  OUTLINED_FUNCTION_18(v0 + 120, v33);
  *(v0 + 120) = v16;
  OUTLINED_FUNCTION_521(v2 + 128, v32);
  v17 = *(v2 + 128);
  OUTLINED_FUNCTION_18(v0 + 128, v31);
  *(v0 + 128) = v17;
  OUTLINED_FUNCTION_521(v2 + 136, v30);
  v18 = *(v2 + 136);
  OUTLINED_FUNCTION_18(v0 + 136, v29);
  *(v0 + 136) = v18;
  OUTLINED_FUNCTION_521(v2 + 144, v28);
  v19 = *(v2 + 144);
  OUTLINED_FUNCTION_18(v0 + 144, v27);
  *(v0 + 144) = v19;
  OUTLINED_FUNCTION_521(v2 + 152, v26);
  v21 = *(v2 + 152);
  v20 = *(v2 + 160);
  OUTLINED_FUNCTION_18(v0 + 152, v25);
  *(v0 + 152) = v21;
  *(v0 + 160) = v20;
  OUTLINED_FUNCTION_521(v2 + 168, v24);
  v22 = *(v2 + 168);

  OUTLINED_FUNCTION_18(v0 + 168, v23);
  *(v0 + 168) = v22;
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8FA9DE8()
{

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

void Apple_Parsec_Feedback_V2_TCPInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_12_8();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_704_0(v5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    *(v3 + v4) = v6;
  }

  v7 = OUTLINED_FUNCTION_7_6();
  sub_1B8FA9E9C(v7, v8, v9, v10);
  OUTLINED_FUNCTION_823();
}

void sub_1B8FA9E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B900BFB0(a2, a1, a3, a4, MEMORY[0x1E69AACF0]);
        break;
      case 2:
        sub_1B9006EF0(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        break;
      case 3:
        sub_1B8FBF3C4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B900C1AC(a2, a1, a3, a4, MEMORY[0x1E69AACF0]);
        break;
      case 5:
        sub_1B900C204(a2, a1, a3, a4, MEMORY[0x1E69AACF0]);
        break;
      case 6:
        sub_1B900C25C(a2, a1, a3, a4, MEMORY[0x1E69AACF0]);
        break;
      case 7:
        sub_1B8FFD568(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        break;
      case 8:
        sub_1B8FAA1B4(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B8FD7984(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8DE25F4(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8FAA238(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8FAA2BC(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8FAA340(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8FBF7B4(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8FAA3C4(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8FAA448(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8FAA4CC(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B8FAA550(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B8E71960(a2, a1);
        break;
      case 20:
        sub_1B8FAA5D4(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FAA1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B964C710(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_1B964C720(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (result = sub_1B964C720(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 40) || (result = sub_1B964C710(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 44) || (result = sub_1B964C710(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 48) || (result = sub_1B964C710(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 56) || (result = sub_1B964C720(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 64) || (result = sub_1B964C720(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 72) || (result = sub_1B964C720(), !v4))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 80) || (result = sub_1B964C720(), !v4))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 88) || (result = sub_1B964C720(), !v4))
                      {
                        swift_beginAccess();
                        if (!*(a1 + 96) || (result = sub_1B964C720(), !v4))
                        {
                          swift_beginAccess();
                          if (!*(a1 + 104) || (result = sub_1B964C720(), !v4))
                          {
                            swift_beginAccess();
                            if (!*(a1 + 112) || (result = sub_1B964C710(), !v4))
                            {
                              swift_beginAccess();
                              if (!*(a1 + 120) || (result = sub_1B964C720(), !v4))
                              {
                                swift_beginAccess();
                                if (!*(a1 + 128) || (result = sub_1B964C720(), !v4))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 136) || (result = sub_1B964C720(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (!*(a1 + 144) || (result = sub_1B964C720(), !v4))
                                    {
                                      swift_beginAccess();
                                      v7 = *(a1 + 160);
                                      v8 = HIBYTE(v7) & 0xF;
                                      if ((v7 & 0x2000000000000000) == 0)
                                      {
                                        v8 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
                                      }

                                      if (!v8 || (, sub_1B964C700(), result = , !v4))
                                      {
                                        swift_beginAccess();
                                        result = *(a1 + 168);
                                        if (result)
                                        {
                                          return sub_1B964C720();
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

BOOL sub_1B8FAAB9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (v5 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (v6 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  if (v7 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 44);
  swift_beginAccess();
  if (v8 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  v9 = *(a1 + 48);
  swift_beginAccess();
  if (v9 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v10 = *(a1 + 56);
  swift_beginAccess();
  if (v10 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 64);
  swift_beginAccess();
  if (v11 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  swift_beginAccess();
  if (v12 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v13 = *(a1 + 80);
  swift_beginAccess();
  if (v13 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 88);
  swift_beginAccess();
  if (v14 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 96);
  swift_beginAccess();
  if (v15 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 104);
  swift_beginAccess();
  if (v16 != *(a2 + 104))
  {
    return 0;
  }

  swift_beginAccess();
  v17 = *(a1 + 112);
  swift_beginAccess();
  if (v17 != *(a2 + 112))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 120);
  swift_beginAccess();
  if (v18 != *(a2 + 120))
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 128);
  swift_beginAccess();
  if (v19 != *(a2 + 128))
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 136);
  swift_beginAccess();
  if (v20 != *(a2 + 136))
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 144);
  swift_beginAccess();
  if (v21 != *(a2 + 144))
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 152);
  v23 = *(a1 + 160);
  swift_beginAccess();
  v24 = v22 == *(a2 + 152) && v23 == *(a2 + 160);
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 168);
  swift_beginAccess();
  return v25 == *(a2 + 168);
}

uint64_t sub_1B8FAB0F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E78, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FAB174(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FAB1E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FAB270()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CA130);
  __swift_project_value_buffer(v0, qword_1ED9CA130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1B966F910;
  v4 = v64 + v3 + v1[14];
  *(v64 + v3) = 3;
  *v4 = "interfaceIdentifier";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v64 + v3 + v2 + v1[14];
  *(v64 + v3 + v2) = 4;
  *v8 = "peerAddress";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v64 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 5;
  *v10 = "connectionRace";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v64 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "connectionReused";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v64 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "startTimeCounts";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v64 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "stopTimeCounts";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v64 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "connectionUUID";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v64 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "networkProtocolName";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v7();
  v21 = (v64 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 14;
  *v22 = "QUICWhitelistedDomain";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v64 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 15;
  *v24 = "redirectCount";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v64 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 16;
  *v26 = "redirectCountW3C";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v64 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 21;
  *v28 = "requestHeaderSize";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v64 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 22;
  *v30 = "responseBodyBytesDecoded";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v64 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 23;
  *v32 = "responseBodyBytesReceived";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v64 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 26;
  *v34 = "responseHeaderSize";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v64 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 27;
  *v36 = "TFOSuccess";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v64 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 28;
  *v38 = "timingDataInit";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v64 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 31;
  *v40 = "connectStart";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v64 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 32;
  *v42 = "connectEnd";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v7();
  v43 = (v64 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 33;
  *v44 = "domainLookupStart";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  v45 = (v64 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 34;
  *v46 = "domainLookupEnd";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v64 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 35;
  *v48 = "fetchStart";
  *(v48 + 1) = 10;
  v48[16] = 2;
  v7();
  v49 = (v64 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 36;
  *v50 = "redirectStart";
  *(v50 + 1) = 13;
  v50[16] = 2;
  v7();
  v51 = (v64 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 37;
  *v52 = "redirectEnd";
  *(v52 + 1) = 11;
  v52[16] = 2;
  v7();
  v53 = (v64 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 38;
  *v54 = "requestStart";
  *(v54 + 1) = 12;
  v54[16] = 2;
  v7();
  v55 = (v64 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 39;
  *v56 = "requestEnd";
  *(v56 + 1) = 10;
  v56[16] = 2;
  v7();
  v57 = (v64 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 40;
  *v58 = "responseStart";
  *(v58 + 1) = 13;
  v58[16] = 2;
  v7();
  v59 = (v64 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 41;
  *v60 = "responseEnd";
  *(v60 + 1) = 11;
  v60[16] = 2;
  v7();
  v61 = (v64 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 42;
  *v62 = "secureConnectStart";
  *(v62 + 1) = 18;
  v62[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FABB34()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = xmmword_1B9652FE0;
  *(v0 + 48) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__startTimeCounts;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__stopTimeCounts, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart) = 0;
  return v0;
}

uint64_t sub_1B8FABCD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_185();
  *(v1 + 16) = 0;
  *(v1 + 32) = xmmword_1B9652FE0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  v53 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  v54 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v55 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain) = 0;
  v56 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount) = 0;
  v57 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C) = 0;
  v58 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize) = 0;
  v59 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded) = 0;
  v60 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived) = 0;
  v61 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize) = 0;
  v62 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess) = 0;
  v63 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit) = 0;
  v64 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart) = 0;
  v65 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd) = 0;
  v66 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart) = 0;
  v67 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd) = 0;
  v68 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart) = 0;
  v69 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart) = 0;
  v70 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd) = 0;
  v71 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart) = 0;
  v72 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd) = 0;
  v73 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart) = 0;
  v74 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd) = 0;
  v75 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart) = 0;
  OUTLINED_FUNCTION_521(a1 + 16, v131);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  OUTLINED_FUNCTION_18(v1 + 16, v130);
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  OUTLINED_FUNCTION_521(a1 + 32, v129);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  OUTLINED_FUNCTION_18(v1 + 32, v128);
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  *(v1 + 32) = v16;
  *(v1 + 40) = v17;

  v20 = OUTLINED_FUNCTION_467();
  sub_1B8D91FCC(v20, v21);
  sub_1B8D538A0(v18, v19);
  OUTLINED_FUNCTION_521(a1 + 48, v127);
  LOBYTE(v18) = *(a1 + 48);
  OUTLINED_FUNCTION_18(v1 + 48, v126);
  *(v1 + 48) = v18;
  OUTLINED_FUNCTION_521(a1 + 49, &v125);
  LOBYTE(v18) = *(a1 + 49);
  OUTLINED_FUNCTION_18(v1 + 49, &v124);
  *(v1 + 49) = v18;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__startTimeCounts, &v123);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__stopTimeCounts, &v122);
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F188B0();
  v22 = swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  OUTLINED_FUNCTION_505_0(v22, &v121);
  v25 = *v23;
  v24 = v23[1];
  OUTLINED_FUNCTION_18(v53, &v120);
  *v53 = v25;
  v53[1] = v24;

  v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  OUTLINED_FUNCTION_505_0(v26, &v119);
  v29 = *v27;
  v28 = v27[1];
  OUTLINED_FUNCTION_18(v54, &v118);
  *v54 = v29;
  v54[1] = v28;

  v30 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain, &v117);
  LOBYTE(v30) = *(a1 + v30);
  OUTLINED_FUNCTION_18(v1 + v55, &v116);
  *(v1 + v55) = v30;
  v31 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount, &v115);
  LODWORD(v31) = *(a1 + v31);
  OUTLINED_FUNCTION_18(v1 + v56, &v114);
  *(v1 + v56) = v31;
  v32 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C, &v113);
  LODWORD(v32) = *(a1 + v32);
  OUTLINED_FUNCTION_18(v1 + v57, &v112);
  *(v1 + v57) = v32;
  v33 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize, &v111);
  LODWORD(v33) = *(a1 + v33);
  OUTLINED_FUNCTION_18(v1 + v58, &v110);
  *(v1 + v58) = v33;
  v34 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded, &v109);
  LODWORD(v34) = *(a1 + v34);
  OUTLINED_FUNCTION_18(v1 + v59, &v108);
  *(v1 + v59) = v34;
  v35 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived, &v107);
  LODWORD(v35) = *(a1 + v35);
  OUTLINED_FUNCTION_18(v1 + v60, &v106);
  *(v1 + v60) = v35;
  v36 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize, &v105);
  LODWORD(v36) = *(a1 + v36);
  OUTLINED_FUNCTION_18(v1 + v61, &v104);
  *(v1 + v61) = v36;
  v37 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess, &v103);
  LOBYTE(v37) = *(a1 + v37);
  OUTLINED_FUNCTION_18(v1 + v62, &v102);
  *(v1 + v62) = v37;
  v38 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit, &v101);
  v39 = *(a1 + v38);
  OUTLINED_FUNCTION_18(v1 + v63, &v100);
  *(v1 + v63) = v39;
  v40 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart, &v99);
  LODWORD(v40) = *(a1 + v40);
  OUTLINED_FUNCTION_18(v1 + v64, &v98);
  *(v1 + v64) = v40;
  v41 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd, &v97);
  LODWORD(v41) = *(a1 + v41);
  OUTLINED_FUNCTION_18(v1 + v65, &v96);
  *(v1 + v65) = v41;
  v42 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart, &v95);
  LODWORD(v42) = *(a1 + v42);
  OUTLINED_FUNCTION_18(v1 + v66, &v94);
  *(v1 + v66) = v42;
  v43 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd, &v93);
  LODWORD(v43) = *(a1 + v43);
  OUTLINED_FUNCTION_18(v1 + v67, &v92);
  *(v1 + v67) = v43;
  v44 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart, &v91);
  LODWORD(v44) = *(a1 + v44);
  OUTLINED_FUNCTION_18(v1 + v68, &v90);
  *(v1 + v68) = v44;
  v45 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart, &v89);
  LODWORD(v45) = *(a1 + v45);
  OUTLINED_FUNCTION_18(v1 + v69, &v88);
  *(v1 + v69) = v45;
  v46 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd, &v87);
  LODWORD(v46) = *(a1 + v46);
  OUTLINED_FUNCTION_18(v1 + v70, &v86);
  *(v1 + v70) = v46;
  v47 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart, &v85);
  LODWORD(v47) = *(a1 + v47);
  OUTLINED_FUNCTION_18(v1 + v71, &v84);
  *(v1 + v71) = v47;
  v48 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd, &v83);
  LODWORD(v48) = *(a1 + v48);
  OUTLINED_FUNCTION_18(v1 + v72, &v82);
  *(v1 + v72) = v48;
  v49 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart, &v81);
  LODWORD(v49) = *(a1 + v49);
  OUTLINED_FUNCTION_18(v1 + v73, &v80);
  *(v1 + v73) = v49;
  v50 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd, &v79);
  LODWORD(v50) = *(a1 + v50);
  OUTLINED_FUNCTION_18(v1 + v74, &v78);
  *(v1 + v74) = v50;
  v51 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart, &v77);
  LODWORD(v51) = *(a1 + v51);

  OUTLINED_FUNCTION_18(v1 + v75, &v76);
  *(v1 + v75) = v51;
  return v1;
}

uint64_t sub_1B8FAC528()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8FAC578()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8FAC5C8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B8FAC6BC()
{

  sub_1B8D538A0(*(v0 + 32), *(v0 + 40));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__startTimeCounts, &qword_1EBAB8C78, &qword_1B966F950);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__stopTimeCounts, &qword_1EBAB8C78, &qword_1B966F950);

  return v0;
}

void sub_1B8FAC7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 3:
        sub_1B8FFD418(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8FFD46C(a2, a1, a3, a4, MEMORY[0x1E69AAC78]);
        continue;
      case 5:
        sub_1B8E4317C(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B8FDAB24(a2, a1, a3, a4);
        continue;
      case 7:
        sub_1B8FACAB8(a2, a1, a3, a4);
        continue;
      case 8:
        sub_1B8FACB94(a2, a1, a3, a4);
        continue;
      case 9:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid;
        goto LABEL_25;
      case 13:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName;
LABEL_25:
        sub_1B9003EAC(a2, a1, a3, a4, v13, MEMORY[0x1E69AACE0]);
        continue;
      case 14:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
        goto LABEL_29;
      case 15:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
        goto LABEL_35;
      case 16:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
        goto LABEL_35;
      case 21:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
        goto LABEL_35;
      case 22:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
        goto LABEL_35;
      case 23:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
        goto LABEL_35;
      case 26:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
        goto LABEL_35;
      case 27:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
LABEL_29:
        sub_1B900709C(a2, a1, a3, a4, v12);
        continue;
      case 28:
        sub_1B8FC8A90(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit, MEMORY[0x1E69AACD0]);
        continue;
      case 31:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
        goto LABEL_35;
      case 32:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
        goto LABEL_35;
      case 33:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
        goto LABEL_35;
      case 34:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
        goto LABEL_35;
      case 35:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
        goto LABEL_35;
      case 36:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
        goto LABEL_35;
      case 37:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
        goto LABEL_35;
      case 38:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
        goto LABEL_35;
      case 39:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
        goto LABEL_35;
      case 40:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
        goto LABEL_35;
      case 41:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
        goto LABEL_35;
      case 42:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
LABEL_35:
        sub_1B900C4C4(a2, a1, a3, a4, v11, MEMORY[0x1E69AACF0]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FACAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FACB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FACCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = a4(0);
  OUTLINED_FUNCTION_847(v7);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8FACD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v69 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - v10;
  v68 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v12 = MEMORY[0x1EEE9AC00](v68);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v66 = v14;
    v19 = 0;
  }

  else
  {
    v66 = v14;
    v19 = v5;
  }

  v20 = v69;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*(v20 + 32), *(v20 + 40)))
  {
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    sub_1B8D91FCC(v21, v22);
    sub_1B964C6A0();
    if (v19)
    {
      return sub_1B8D538A0(v21, v22);
    }

    sub_1B8D538A0(v21, v22);
  }

  v23 = v69;
  swift_beginAccess();
  if (*(v23 + 48) != 1 || (result = sub_1B964C670(), !v19))
  {
    v24 = v69;
    swift_beginAccess();
    if (*(v24 + 49) != 1 || (result = sub_1B964C670(), !v19))
    {
      v25 = v69;
      swift_beginAccess();
      sub_1B8F1B8B8();
      v26 = v68;
      if (__swift_getEnumTagSinglePayload(v11, 1, v68) == 1)
      {
        sub_1B8D9207C(v11, &qword_1EBAB8C78, &qword_1B966F950);
        v27 = v26;
      }

      else
      {
        sub_1B8FAC528();
        sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
        sub_1B964C740();
        if (v19)
        {
          return sub_1B8FAC5C8();
        }

        v27 = v26;
        sub_1B8FAC5C8();
      }

      swift_beginAccess();
      v28 = v67;
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
      {
        sub_1B8D9207C(v28, &qword_1EBAB8C78, &qword_1B966F950);
LABEL_26:
        v29 = (v25 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
        swift_beginAccess();
        v30 = *v29;
        v31 = v29[1];
        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {

          sub_1B964C700();
          if (v19)
          {
          }
        }

        v33 = (v25 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
        swift_beginAccess();
        v34 = *v33;
        v35 = v33[1];
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {

          sub_1B964C700();
          if (v19)
          {
          }
        }

        v37 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
        swift_beginAccess();
        if (*(v25 + v37) != 1 || (result = sub_1B964C670(), !v19))
        {
          v38 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
          swift_beginAccess();
          if (!*(v25 + v38) || (result = sub_1B964C710(), !v19))
          {
            v39 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
            swift_beginAccess();
            if (!*(v25 + v39) || (result = sub_1B964C710(), !v19))
            {
              v40 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
              swift_beginAccess();
              if (!*(v25 + v40) || (result = sub_1B964C710(), !v19))
              {
                v41 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
                swift_beginAccess();
                if (!*(v25 + v41) || (result = sub_1B964C710(), !v19))
                {
                  v42 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
                  swift_beginAccess();
                  if (!*(v25 + v42) || (result = sub_1B964C710(), !v19))
                  {
                    v43 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
                    swift_beginAccess();
                    if (!*(v25 + v43) || (result = sub_1B964C710(), !v19))
                    {
                      v44 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
                      swift_beginAccess();
                      if (*(v25 + v44) != 1 || (result = sub_1B964C670(), !v19))
                      {
                        v45 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
                        swift_beginAccess();
                        if (*(v25 + v45) == 0.0 || (result = sub_1B964C6F0(), !v19))
                        {
                          v46 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
                          swift_beginAccess();
                          if (!*(v25 + v46) || (result = sub_1B964C710(), !v19))
                          {
                            v47 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
                            swift_beginAccess();
                            if (!*(v25 + v47) || (result = sub_1B964C710(), !v19))
                            {
                              v48 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
                              swift_beginAccess();
                              if (!*(v25 + v48) || (result = sub_1B964C710(), !v19))
                              {
                                v49 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
                                swift_beginAccess();
                                if (!*(v25 + v49) || (result = sub_1B964C710(), !v19))
                                {
                                  v50 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
                                  swift_beginAccess();
                                  if (!*(v25 + v50) || (result = sub_1B964C710(), !v19))
                                  {
                                    v51 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
                                    v52 = v69;
                                    swift_beginAccess();
                                    if (!*(v52 + v51) || (result = sub_1B964C710(), !v19))
                                    {
                                      v53 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
                                      v54 = v69;
                                      swift_beginAccess();
                                      if (!*(v54 + v53) || (result = sub_1B964C710(), !v19))
                                      {
                                        v55 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
                                        v56 = v69;
                                        swift_beginAccess();
                                        if (!*(v56 + v55) || (result = sub_1B964C710(), !v19))
                                        {
                                          v57 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
                                          v58 = v69;
                                          swift_beginAccess();
                                          if (!*(v58 + v57) || (result = sub_1B964C710(), !v19))
                                          {
                                            v59 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
                                            v60 = v69;
                                            swift_beginAccess();
                                            if (!*(v60 + v59) || (result = sub_1B964C710(), !v19))
                                            {
                                              v61 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
                                              v62 = v69;
                                              swift_beginAccess();
                                              if (!*(v62 + v61) || (result = sub_1B964C710(), !v19))
                                              {
                                                v63 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
                                                v64 = v69;
                                                swift_beginAccess();
                                                result = *(v64 + v63);
                                                if (result)
                                                {
                                                  return sub_1B964C710();
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

      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
      sub_1B964C740();
      if (!v19)
      {
        sub_1B8FAC5C8();
        goto LABEL_26;
      }

      return sub_1B8FAC5C8();
    }
  }

  return result;
}

BOOL sub_1B8FAD8E8(uint64_t a1, uint64_t a2)
{
  v118 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v4 = MEMORY[0x1EEE9AC00](v118);
  v6 = &v109[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v109[-v7];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20C8, &qword_1B967F570);
  v8 = MEMORY[0x1EEE9AC00](v117);
  v10 = &v109[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v109[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v109[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v109[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v109[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v109[-v21];
  swift_beginAccess();
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  swift_beginAccess();
  v25 = v23 == *(a2 + 16) && v24 == *(a2 + 24);
  if (v25 || (v26 = sub_1B964C9F0(), result = 0, (v26 & 1) != 0))
  {
    v112 = v10;
    v113 = v15;
    v111 = v6;
    swift_beginAccess();
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    swift_beginAccess();
    v31 = *(a2 + 32);
    v30 = *(a2 + 40);

    sub_1B8D91FCC(v28, v29);
    sub_1B8D91FCC(v31, v30);
    v32 = MEMORY[0x1BFADC060](v28, v29, v31, v30);
    sub_1B8D538A0(v31, v30);
    sub_1B8D538A0(v28, v29);
    if ((v32 & 1) == 0)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v33 = *(a1 + 48);
    swift_beginAccess();
    if (v33 != *(a2 + 48))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v34 = *(a1 + 49);
    swift_beginAccess();
    if (v34 != *(a2 + 49))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    sub_1B8F1B8B8();
    swift_beginAccess();
    v35 = v116;
    v36 = *(v117 + 48);
    sub_1B8F1B8B8();
    v37 = v35;
    sub_1B8F1B8B8();
    v38 = v118;
    if (__swift_getEnumTagSinglePayload(v35, 1, v118) == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAB8C78, &qword_1B966F950);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35 + v36, 1, v38);
      v40 = v113;
      if (EnumTagSinglePayload != 1)
      {
LABEL_21:
        v48 = &qword_1EBAC20C8;
        v49 = &qword_1B967F570;
        v50 = v37;
LABEL_22:
        sub_1B8D9207C(v50, v48, v49);
        goto LABEL_23;
      }

      sub_1B8D9207C(v37, &qword_1EBAB8C78, &qword_1B966F950);
    }

    else
    {
      sub_1B8F1B8B8();
      v41 = __swift_getEnumTagSinglePayload(v35 + v36, 1, v38);
      v40 = v113;
      if (v41 == 1)
      {
LABEL_20:
        sub_1B8D9207C(v22, &qword_1EBAB8C78, &qword_1B966F950);
        sub_1B8FAC5C8();
        goto LABEL_21;
      }

      v42 = v114;
      sub_1B8FAC528();
      v43 = *(v38 + 20);
      v44 = *&v20[v43];
      v45 = *&v42[v43];
      if (v44 != v45 && !sub_1B8FAAB9C(v44, v45))
      {
        sub_1B8FAC5C8();
        sub_1B8D9207C(v22, &qword_1EBAB8C78, &qword_1B966F950);
        sub_1B8FAC5C8();
        v50 = v37;
        goto LABEL_61;
      }

      sub_1B964C2B0();
      sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v110 = sub_1B964C850();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v22, &qword_1EBAB8C78, &qword_1B966F950);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v37, &qword_1EBAB8C78, &qword_1B966F950);
      if ((v110 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v22 = v115;
    sub_1B8F1B8B8();
    swift_beginAccess();
    v46 = *(v117 + 48);
    v37 = v112;
    sub_1B8F1B8B8();
    sub_1B8F1B8B8();
    v47 = v118;
    if (__swift_getEnumTagSinglePayload(v37, 1, v118) == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAB8C78, &qword_1B966F950);
      if (__swift_getEnumTagSinglePayload(v37 + v46, 1, v47) == 1)
      {
        sub_1B8D9207C(v37, &qword_1EBAB8C78, &qword_1B966F950);
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v37 + v46, 1, v47) == 1)
    {
      goto LABEL_20;
    }

    v51 = v111;
    sub_1B8FAC528();
    v52 = *(v47 + 20);
    v53 = *&v40[v52];
    v54 = *&v51[v52];
    if (v53 == v54 || sub_1B8FAAB9C(v53, v54))
    {
      sub_1B964C2B0();
      sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v55 = sub_1B964C850();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v22, &qword_1EBAB8C78, &qword_1B966F950);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v112, &qword_1EBAB8C78, &qword_1B966F950);
      if (v55)
      {
LABEL_28:
        v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
        swift_beginAccess();
        v57 = *v56;
        v58 = v56[1];
        v59 = (a2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
        swift_beginAccess();
        v60 = v57 == *v59 && v58 == v59[1];
        if (v60 || (sub_1B964C9F0() & 1) != 0)
        {
          v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
          swift_beginAccess();
          v62 = *v61;
          v63 = v61[1];
          v64 = (a2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
          swift_beginAccess();
          v65 = v62 == *v64 && v63 == v64[1];
          if (v65 || (sub_1B964C9F0() & 1) != 0)
          {
            v66 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            LODWORD(v66) = *(a1 + v66);
            v67 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            if (v66 == *(a2 + v67))
            {
              v68 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
              swift_beginAccess();
              LODWORD(v68) = *(a1 + v68);
              v69 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
              swift_beginAccess();
              if (v68 == *(a2 + v69))
              {
                v70 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
                swift_beginAccess();
                LODWORD(v70) = *(a1 + v70);
                v71 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
                swift_beginAccess();
                if (v70 == *(a2 + v71))
                {
                  v72 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  LODWORD(v72) = *(a1 + v72);
                  v73 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  if (v72 == *(a2 + v73))
                  {
                    v74 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    LODWORD(v74) = *(a1 + v74);
                    v75 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    if (v74 == *(a2 + v75))
                    {
                      v76 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      LODWORD(v76) = *(a1 + v76);
                      v77 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      if (v76 == *(a2 + v77))
                      {
                        v78 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        LODWORD(v78) = *(a1 + v78);
                        v79 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        if (v78 == *(a2 + v79))
                        {
                          v80 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
                          swift_beginAccess();
                          LODWORD(v80) = *(a1 + v80);
                          v81 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
                          swift_beginAccess();
                          if (v80 == *(a2 + v81))
                          {
                            v82 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
                            swift_beginAccess();
                            v83 = *(a1 + v82);
                            v84 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
                            swift_beginAccess();
                            if (v83 == *(a2 + v84))
                            {
                              v85 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
                              swift_beginAccess();
                              LODWORD(v85) = *(a1 + v85);
                              v86 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
                              swift_beginAccess();
                              if (v85 == *(a2 + v86))
                              {
                                v87 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
                                swift_beginAccess();
                                LODWORD(v87) = *(a1 + v87);
                                v88 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
                                swift_beginAccess();
                                if (v87 == *(a2 + v88))
                                {
                                  v89 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  LODWORD(v89) = *(a1 + v89);
                                  v90 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  if (v89 == *(a2 + v90))
                                  {
                                    v91 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    LODWORD(v91) = *(a1 + v91);
                                    v92 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    if (v91 == *(a2 + v92))
                                    {
                                      v93 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      LODWORD(v93) = *(a1 + v93);
                                      v94 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      if (v93 == *(a2 + v94))
                                      {
                                        v95 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        LODWORD(v95) = *(a1 + v95);
                                        v96 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        if (v95 == *(a2 + v96))
                                        {
                                          v97 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          LODWORD(v97) = *(a1 + v97);
                                          v98 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          if (v97 == *(a2 + v98))
                                          {
                                            v99 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
                                            swift_beginAccess();
                                            LODWORD(v99) = *(a1 + v99);
                                            v100 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
                                            swift_beginAccess();
                                            if (v99 == *(a2 + v100))
                                            {
                                              v101 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              LODWORD(v101) = *(a1 + v101);
                                              v102 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              if (v101 == *(a2 + v102))
                                              {
                                                v103 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
                                                swift_beginAccess();
                                                LODWORD(v103) = *(a1 + v103);
                                                v104 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
                                                swift_beginAccess();
                                                if (v103 == *(a2 + v104))
                                                {
                                                  v105 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  LODWORD(v105) = *(a1 + v105);
                                                  v106 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  if (v105 == *(a2 + v106))
                                                  {
                                                    v107 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v107) = *(a1 + v107);

                                                    v108 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v108) = *(a2 + v108);

                                                    return v107 == v108;
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

LABEL_23:

      return 0;
    }

    sub_1B8FAC5C8();
    sub_1B8D9207C(v22, &qword_1EBAB8C78, &qword_1B966F950);
    sub_1B8FAC5C8();
    v50 = v112;
LABEL_61:
    v48 = &qword_1EBAB8C78;
    v49 = &qword_1B966F950;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B8FAE8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E70, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FAE95C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAB4570, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FAE9CC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAB4570, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FAEA58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFEA8);
  __swift_project_value_buffer(v0, qword_1EBABFEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "results";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "identifier";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "rankingScore";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "fallbackResultSection";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "isInitiallyHidden";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "totalAvailableResults";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "titleButtonItem";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9002548();
        break;
      case 2:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FAEF40(v3, v4, v5, v6);
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FAF00C(v7, v8, v9, v10);
        break;
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 10:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8FAF0F0(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FAEF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B964C520();
  if (v4)
  {
  }

  if (v10)
  {
    if (*(a2 + 64) == 255)
    {
      v7 = -1;
    }

    else
    {
      sub_1B964C3D0();
      v7 = *(a2 + 64);
    }

    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = v10;
    *(a2 + 64) = 0;
    return sub_1B8D525DC(v8, v9, v7);
  }

  return result;
}

uint64_t sub_1B8FAF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0830, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D0, &qword_1B966F958);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_835();
  if (!v7 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v10 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v0))
    {
      if (*(v1 + 24) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v0))
      {
        v11 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v11, v12) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
        {
          if (*(v1 + 64) == 255)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_491();
          OUTLINED_FUNCTION_292_0();
          if (v17)
          {
            sub_1B8FAF474(v13, v14, v15, v16);
          }

          else
          {
            sub_1B8FAF428(v13, v14, v15, v16);
          }

          if (!v0)
          {
LABEL_27:
            if (*(v1 + 65) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
            {
              if (!*(v1 + 68) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
              {
                type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
                OUTLINED_FUNCTION_715_0();
                OUTLINED_FUNCTION_243_1();
                if (v18)
                {
                  sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
LABEL_23:
                  OUTLINED_FUNCTION_8_1();
                  goto LABEL_24;
                }

                OUTLINED_FUNCTION_48_5();
                sub_1B8FAC528();
                OUTLINED_FUNCTION_153_2();
                sub_1B8CD2450(v19, v20, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_325_0();
                sub_1B8FAC5C8();
                if (!v0)
                {
                  goto LABEL_23;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FAF428(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 64);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_1B964C700();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FAF474(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 64);
  if (v4 == 255 || (v4 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B9023B40();
    return sub_1B964C680();
  }

  return result;
}

void static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D0, &qword_1B966F958);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0838, &qword_1B966FAB8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  sub_1B8D7EC30(*v1, *v0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_524_0();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 24) != *(v0 + 24) || (MEMORY[0x1BFADC060](*(v1 + 32), *(v1 + 40), *(v0 + 32), *(v0 + 40)) & 1) == 0)
  {
    goto LABEL_29;
  }

  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v65 = *(v0 + 48);
  v66 = *(v0 + 56);
  v15 = *(v0 + 64);
  if (v14 != 255)
  {
    v69[0] = *(v1 + 48);
    v69[1] = v13;
    v70 = v14;
    if (v15 != 255)
    {
      v67[0] = v65;
      v67[1] = v66;
      v61 = v15 & 1;
      v62 = v15;
      v68 = v15 & 1;
      v16 = OUTLINED_FUNCTION_511_0();
      sub_1B8D52584(v16, v17, v18);
      sub_1B8D52584(v65, v66, v62);
      v19 = OUTLINED_FUNCTION_511_0();
      sub_1B8D52584(v19, v20, v21);
      static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.OneOf_BundleID.== infix(_:_:)(v69, v67);
      v63 = v22;
      sub_1B8D52574(v65, v66, v61);
      v23 = OUTLINED_FUNCTION_233();
      sub_1B8D52574(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_511_0();
      sub_1B8D525DC(v26, v27, v28);
      if ((v63 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    v36 = OUTLINED_FUNCTION_233();
    v34 = v37;
    sub_1B8D52584(v36, v38, v14);
    v39 = OUTLINED_FUNCTION_288();
    sub_1B8D52584(v39, v40, 255);
    v41 = OUTLINED_FUNCTION_511_0();
    sub_1B8D52584(v41, v42, v43);
    v44 = OUTLINED_FUNCTION_233();
    sub_1B8D52574(v44, v45, v46);
LABEL_16:
    v47 = OUTLINED_FUNCTION_511_0();
    sub_1B8D525DC(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_288();
    sub_1B8D525DC(v50, v51, v34);
    goto LABEL_29;
  }

  v29 = OUTLINED_FUNCTION_233();
  v64 = v30;
  sub_1B8D52584(v29, v31, 255);
  if (v64 != 255)
  {
    v32 = OUTLINED_FUNCTION_288();
    v34 = v33;
    sub_1B8D52584(v32, v35, v33);
    goto LABEL_16;
  }

  sub_1B8D52584(v65, v66, 255);
  v52 = OUTLINED_FUNCTION_233();
  sub_1B8D525DC(v52, v53, 255);
LABEL_18:
  if (*(v1 + 65) != *(v0 + 65) || *(v1 + 68) != *(v0 + 68))
  {
    goto LABEL_29;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v54 = *(v7 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v2);
  if (v12)
  {
    OUTLINED_FUNCTION_50(v2 + v54);
    if (v12)
    {
      sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
      goto LABEL_32;
    }
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v2 + v54);
    if (!v55)
    {
      OUTLINED_FUNCTION_48_5();
      OUTLINED_FUNCTION_870();
      OUTLINED_FUNCTION_246();
      v57 = static Apple_Parsec_Feedback_V2_ButtonForFeedback.== infix(_:_:)();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_467();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
      if ((v57 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_40();
      v60 = sub_1B8CD2450(v58, v59, MEMORY[0x1E69AAC10]);
      v56 = OUTLINED_FUNCTION_634(v60);
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_325_0();
    sub_1B8FAC5C8();
  }

  sub_1B8D9207C(v2, &qword_1EBAC0838, &qword_1B966FAB8);
LABEL_29:
  v56 = 0;
LABEL_30:
  OUTLINED_FUNCTION_264(v56);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8FAF988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E68, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FAFA08(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FAFA78(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FAFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ActionItemForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_163_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  v12 = v0;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v6, 1, v2);
  if (v8)
  {
    sub_1B8D9207C(v6, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_5:
    OUTLINED_FUNCTION_541_0();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_23();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_548_0();
  sub_1B8CD2450(v9, v10, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  OUTLINED_FUNCTION_749();
  sub_1B964C740();
  OUTLINED_FUNCTION_119_2();
  sub_1B8FAC5C8();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Feedback_V2_ActionItemForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v9);
  v10 = *(v7 + 56);
  OUTLINED_FUNCTION_89_3();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_12:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v15, v16, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_288();
      v12 = OUTLINED_FUNCTION_656_0(v17, v18);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_119_2();
    sub_1B8FAC5C8();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC0788, &qword_1B966FA28);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_23();
  sub_1B8FAC528();
  v13 = OUTLINED_FUNCTION_246();
  v14 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v13);
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_467();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8FB0098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E60, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FB0118(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1470, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FB0188(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1470, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FB0214()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFED8);
  __swift_project_value_buffer(v0, qword_1EBABFED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "suggestion";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "fbr";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "topicIdentifier";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FB05DC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v3))
    {
      OUTLINED_FUNCTION_1();
      if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
      {
        if (*(v4 + 48) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v3))
        {
          if (!*(v4 + 56) || (OUTLINED_FUNCTION_94_4(), sub_1B9013634(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
          {
            OUTLINED_FUNCTION_1();
            if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
            {
              OUTLINED_FUNCTION_1();
              if (!v9 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
              {
                type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
                OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48) || !sub_1B8D92198(*(v2 + 56), *(v2 + 64), *(v1 + 56)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_737();
  v14 = v5 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v2 + 88) == *(v1 + 88) && *(v2 + 96) == *(v1 + 96);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  v18 = sub_1B8CD2450(v16, v17, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v18) & 1;
}

uint64_t sub_1B8FB0940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E58, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FB09C0(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0A98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FB0A30(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0A98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FB0ABC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFEF0);
  __swift_project_value_buffer(v0, qword_1EBABFEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urls";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FB0E10(v7, v8, v9, v10);
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FB0EDC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FB0E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B964C520();
  if (v4)
  {
  }

  if (v10)
  {
    if (*(a2 + 56) == 255)
    {
      v7 = -1;
    }

    else
    {
      sub_1B964C3D0();
      v7 = *(a2 + 56);
    }

    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = v10;
    *(a2 + 56) = 0;
    return sub_1B8D525DC(v8, v9, v7);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        if (*(v1 + 56) == 255 || ((OUTLINED_FUNCTION_491(), OUTLINED_FUNCTION_292_0(), (v9 & 1) == 0) ? (result = sub_1B8FB1094(v5, v6, v7, v8)) : (result = sub_1B8FB10E0(v5, v6, v7, v8)), !v0))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8FB1094(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_1B964C700();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FB10E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4 == 255 || (v4 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B9023B40();
    return sub_1B964C680();
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v2 + 32), *(v1 + 32)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 56);
  if (v10 == 255)
  {
    v30 = OUTLINED_FUNCTION_461();
    sub_1B8D52584(v30, v31, 255);
    if (v13 == 255)
    {
      v48 = OUTLINED_FUNCTION_259();
      sub_1B8D52584(v48, v49, 255);
      v50 = OUTLINED_FUNCTION_461();
      sub_1B8D525DC(v50, v51, 255);
LABEL_23:
      type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
      OUTLINED_FUNCTION_764();
      OUTLINED_FUNCTION_0_40();
      v54 = sub_1B8CD2450(v52, v53, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v54) & 1;
    }

    v32 = OUTLINED_FUNCTION_259();
    sub_1B8D52584(v32, v33, v13);
    goto LABEL_19;
  }

  v57[0] = *(v2 + 40);
  v57[1] = v9;
  v58 = v10;
  if (v13 == 255)
  {
    v34 = OUTLINED_FUNCTION_461();
    sub_1B8D52584(v34, v35, v10);
    v36 = OUTLINED_FUNCTION_259();
    sub_1B8D52584(v36, v37, 255);
    v38 = OUTLINED_FUNCTION_461();
    sub_1B8D52584(v38, v39, v10);
    v40 = OUTLINED_FUNCTION_461();
    sub_1B8D52574(v40, v41, v42);
LABEL_19:
    v43 = OUTLINED_FUNCTION_461();
    sub_1B8D525DC(v43, v44, v10);
    v45 = OUTLINED_FUNCTION_259();
    sub_1B8D525DC(v45, v46, v13);
    return 0;
  }

  v55[0] = v12;
  v55[1] = v11;
  v14 = v13 & 1;
  v56 = v13 & 1;
  v15 = OUTLINED_FUNCTION_461();
  sub_1B8D52584(v15, v16, v10);
  v17 = OUTLINED_FUNCTION_259();
  sub_1B8D52584(v17, v18, v13);
  v19 = OUTLINED_FUNCTION_461();
  sub_1B8D52584(v19, v20, v10);
  static Apple_Parsec_Feedback_V2_PunchoutForFeedback.OneOf_BundleID.== infix(_:_:)(v57, v55);
  v22 = v21;
  v23 = OUTLINED_FUNCTION_259();
  sub_1B8D52574(v23, v24, v14);
  v25 = OUTLINED_FUNCTION_461();
  sub_1B8D52574(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_461();
  sub_1B8D525DC(v28, v29, v10);
  if (v22)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_1B8FB13EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E50, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FB146C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FB14DC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FB1574()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFF08);
  __swift_project_value_buffer(v0, qword_1EBABFF08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1B966F920;
  v4 = v118 + v3 + v1[14];
  *(v118 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v118 + v3 + v2 + v1[14];
  *(v118 + v3 + v2) = 2;
  *v8 = "topHit";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v118 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v118 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "punchout";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v118 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v118 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "localFeatures";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v118 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "resultType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v118 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "rankingScore";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v118 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "isStaticCorrection";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v118 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "queryId";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v118 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "intendedQuery";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v118 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 16;
  *v28 = "correctedQuery";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v118 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 17;
  *v30 = "completedQuery";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v7();
  v31 = (v118 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 18;
  *v32 = "isLocalApplicationResult";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v7();
  v33 = (v118 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 19;
  *v34 = "publiclyIndexable";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v7();
  v35 = (v118 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 20;
  *v36 = "fbr";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v7();
  v37 = (v118 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 21;
  *v38 = "userInput";
  *(v38 + 1) = 9;
  v38[16] = 2;
  v7();
  v39 = (v118 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 22;
  *v40 = "isFuzzyMatch";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v118 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 23;
  *v42 = "doNotFold";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v118 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 24;
  *v44 = "blockId";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v7();
  v45 = (v118 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 25;
  *v46 = "hashedIdentifier";
  *(v46 + 1) = 16;
  v46[16] = 2;
  v7();
  v47 = (v118 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 26;
  *v48 = "resultBundleId";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v118 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 27;
  *v50 = "knownResultBundleId";
  *(v50 + 1) = 19;
  v50[16] = 2;
  v7();
  v51 = (v118 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 28;
  *v52 = "sectionBundleIdentifier";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v118 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 29;
  *v54 = "knownSectionBundleIdentifier";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v118 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 30;
  *v56 = "applicationBundleIdentifier";
  *(v56 + 1) = 27;
  v56[16] = 2;
  v7();
  v57 = (v118 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 31;
  *v58 = "knownApplicationBundleIdentifier";
  *(v58 + 1) = 32;
  v58[16] = 2;
  v7();
  v59 = (v118 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 32;
  *v60 = "entityData";
  *(v60 + 1) = 10;
  v60[16] = 2;
  v7();
  v61 = (v118 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 33;
  *v62 = "shouldUseCompactDisplay";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v118 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 34;
  *v64 = "noGoTakeover";
  *(v64 + 1) = 12;
  v64[16] = 2;
  v7();
  v65 = (v118 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 35;
  *v66 = "preferTopPlatter";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v118 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 36;
  *v68 = "wasCompact";
  *(v68 + 1) = 10;
  v68[16] = 2;
  v7();
  v69 = (v118 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "didTakeoverGo";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v7();
  v71 = (v118 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 38;
  *v72 = "usesCompactDisplay";
  *(v72 + 1) = 18;
  v72[16] = 2;
  v7();
  v73 = (v118 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 39;
  *v74 = "isInstantAnswer";
  *(v74 + 1) = 15;
  v74[16] = 2;
  v7();
  v75 = (v118 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 40;
  *v76 = "shouldAutoNavigate";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v7();
  v77 = (v118 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 41;
  *v78 = "card";
  *(v78 + 1) = 4;
  v78[16] = 2;
  v7();
  v79 = (v118 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 42;
  *v80 = "inlineCard";
  *(v80 + 1) = 10;
  v80[16] = 2;
  v7();
  v81 = (v118 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 43;
  *v82 = "compactCard";
  *(v82 + 1) = 11;
  v82[16] = 2;
  v7();
  v83 = (v118 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 44;
  *v84 = "containsPersonalResult";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v118 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 45;
  *v86 = "didRerankPersonalResult";
  *(v86 + 1) = 23;
  v86[16] = 2;
  v7();
  v87 = (v118 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 46;
  *v88 = "coreSpotlightIndexUsed";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v118 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 47;
  *v90 = "coreSpotlightIndexUsedReason";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v118 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 48;
  *v92 = "coreSpotlightRankingSignals";
  *(v92 + 1) = 27;
  v92[16] = 2;
  v7();
  v93 = (v118 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 49;
  *v94 = "mailRankingSignals";
  *(v94 + 1) = 18;
  v94[16] = 2;
  v7();
  v95 = (v118 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 50;
  *v96 = "mailResultDetails";
  *(v96 + 1) = 17;
  v96[16] = 2;
  v7();
  v97 = (v118 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 51;
  *v98 = "isVideoAssetFromPhotos";
  *(v98 + 1) = 22;
  v98[16] = 2;
  v7();
  v99 = (v118 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 52;
  *v100 = "isMailInstantAnswerUpdated";
  *(v100 + 1) = 26;
  v100[16] = 2;
  v7();
  v101 = (v118 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 53;
  *v102 = "indexOfSectionWhenRanked";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v7();
  v103 = (v118 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 54;
  *v104 = "indexOfResultInSectionWhenRanked";
  *(v104 + 1) = 32;
  v104[16] = 2;
  v7();
  v105 = (v118 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 55;
  *v106 = "safariAttributes";
  *(v106 + 1) = 16;
  v106[16] = 2;
  v7();
  v107 = (v118 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 56;
  *v108 = "hasAppTopHitShortcut";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v7();
  v109 = (v118 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 57;
  *v110 = "photosAttributes";
  *(v110 + 1) = 16;
  v110[16] = 2;
  v7();
  v111 = (v118 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 58;
  *v112 = "photosAggregatedInfo";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v7();
  v113 = (v118 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 59;
  *v114 = "thirdPartyQueryCompletionMatched";
  *(v114 + 1) = 32;
  v114[16] = 2;
  v7();
  v115 = (v118 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 60;
  *v116 = "thirdPartyNavigationIntentScore";
  *(v116 + 1) = 31;
  v116[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FB24C8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8FB2518()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__type;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable) = 0;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier) = 0;
  v14 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = -1;
  v15 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = -1;
  v16 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = -1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate) = 0;
  v17 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult) = 0;
  v19 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals;
  v22 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals;
  v24 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails;
  v26 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v25, 1, 1, v26);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v27 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v27, 1, 1, v28);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p) = 0;
  v29 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo;
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v31, 1, 1, v32);
  v33 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore) = 0;
  return v0;
}

uint64_t sub_1B8FB2928(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v229 = v172 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v228 = v172 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v227 = v172 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v226 = v172 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v225 = v172 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v224 = v172 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v215 = v172 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v180 = v172 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v176 = v172 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  MEMORY[0x1EEE9AC00](v21 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v22 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action;
  v172[1] = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action;
  v23 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout;
  v174 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout;
  v25 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__type;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures;
  v175 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v29 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v177 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore) = 0;
  v178 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection) = 0;
  v179 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID) = 0;
  v30 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  v181 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  v182 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  v183 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v184 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult) = 0;
  v185 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable) = 0;
  v33 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  v186 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  v187 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v188 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch) = 0;
  v189 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold) = 0;
  v190 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID) = 0;
  v191 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier) = 0;
  v35 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier;
  v173 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier);
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = -1;
  v36 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID;
  v192 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = -1;
  v37 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID;
  *(v37 + 16) = -1;
  *v37 = 0;
  *(v37 + 8) = 0;
  v193 = v37;
  v194 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData);
  *v194 = xmmword_1B9652FE0;
  v195 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay) = 0;
  v196 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover) = 0;
  v197 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter) = 0;
  v198 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact) = 0;
  v199 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo) = 0;
  v200 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay) = 0;
  v201 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer) = 0;
  v202 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate) = 0;
  v38 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card;
  v203 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card;
  v39 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v38, 1, 1, v39);
  v204 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard, 1, 1, v39);
  v205 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard, 1, 1, v39);
  v206 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult) = 0;
  v207 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult) = 0;
  v40 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed;
  v208 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason;
  v209 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason;
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals;
  v210 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals;
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals;
  v211 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals;
  v45 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails;
  v212 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails;
  v47 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v46, 1, 1, v47);
  v213 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos) = 0;
  v214 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated) = 0;
  v216 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked) = 0;
  v217 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v48 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes;
  v218 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes;
  v49 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v48, 1, 1, v49);
  v219 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p) = 0;
  v50 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v220 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v51 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo;
  v221 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo;
  v53 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v52, 1, 1, v53);
  v54 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched;
  v222 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched;
  *v54 = 0;
  *(v54 + 8) = 1;
  v223 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore) = 0;
  swift_beginAccess();
  v56 = *(a1 + 16);
  v55 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v56;
  *(v1 + 24) = v55;
  swift_beginAccess();
  v57 = *(a1 + 32);
  v58 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v57;
  *(v1 + 40) = v58;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();

  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v59 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__type);
  swift_beginAccess();
  v60 = *v59;
  LOBYTE(v59) = *(v59 + 8);
  swift_beginAccess();
  *v26 = v60;
  *(v26 + 8) = v59;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType);
  swift_beginAccess();
  v63 = *v61;
  v62 = v61[1];
  swift_beginAccess();
  *v29 = v63;
  v29[1] = v62;

  v64 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = v177;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v178;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = v179;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v181;
  swift_beginAccess();
  *v75 = v74;
  v75[1] = v73;

  v76 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  v79 = v182;
  swift_beginAccess();
  *v79 = v78;
  v79[1] = v77;

  v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v183;
  swift_beginAccess();
  *v83 = v82;
  v83[1] = v81;

  v84 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult;
  swift_beginAccess();
  LOBYTE(v84) = *(a1 + v84);
  v85 = v184;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable;
  swift_beginAccess();
  LOBYTE(v86) = *(a1 + v86);
  v87 = v185;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];
  v91 = v186;
  swift_beginAccess();
  *v91 = v90;
  v91[1] = v89;

  v92 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = v187;
  swift_beginAccess();
  *v95 = v94;
  v95[1] = v93;

  v96 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch;
  swift_beginAccess();
  LOBYTE(v96) = *(a1 + v96);
  v97 = v188;
  swift_beginAccess();
  *(v1 + v97) = v96;
  v98 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold;
  swift_beginAccess();
  LOBYTE(v98) = *(a1 + v98);
  v99 = v189;
  swift_beginAccess();
  *(v1 + v99) = v98;
  v100 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID;
  swift_beginAccess();
  v101 = *(a1 + v100);
  v102 = v190;
  swift_beginAccess();
  *(v1 + v102) = v101;
  v103 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier;
  swift_beginAccess();
  v104 = *(a1 + v103);
  v105 = v191;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier);
  v107 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier + 8);
  v108 = v173;
  v109 = *v173;
  v110 = v173[1];
  v111 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier + 16);
  *v173 = v106;
  v108[1] = v107;
  LOBYTE(v94) = *(v108 + 16);
  *(v108 + 16) = v111;
  sub_1B8D52584(v106, v107, v111);
  sub_1B8D525DC(v109, v110, v94);
  v112 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID);
  v113 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID + 8);
  v114 = v192;
  v115 = *v192;
  v116 = v192[1];
  v117 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID + 16);
  *v192 = v112;
  v114[1] = v113;
  LOBYTE(v94) = *(v114 + 16);
  *(v114 + 16) = v117;
  sub_1B8D52584(v112, v113, v117);
  sub_1B8D525DC(v115, v116, v94);
  v118 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID);
  v119 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID + 8);
  v120 = v193;
  v121 = *v193;
  v122 = v193[1];
  v123 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID + 16);
  *v193 = v118;
  v120[1] = v119;
  LOBYTE(v94) = *(v120 + 16);
  *(v120 + 16) = v123;
  sub_1B8D52584(v118, v119, v123);
  sub_1B8D525DC(v121, v122, v94);
  v124 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData);
  swift_beginAccess();
  v126 = *v124;
  v125 = v124[1];
  v127 = v194;
  swift_beginAccess();
  v128 = *v127;
  v129 = v127[1];
  *v127 = v126;
  v127[1] = v125;
  sub_1B8D91FCC(v126, v125);
  sub_1B8D538A0(v128, v129);
  v130 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay;
  swift_beginAccess();
  LOBYTE(v130) = *(a1 + v130);
  v131 = v195;
  swift_beginAccess();
  *(v1 + v131) = v130;
  v132 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover;
  swift_beginAccess();
  LOBYTE(v132) = *(a1 + v132);
  v133 = v196;
  swift_beginAccess();
  *(v1 + v133) = v132;
  v134 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter;
  swift_beginAccess();
  LOBYTE(v134) = *(a1 + v134);
  v135 = v197;
  swift_beginAccess();
  *(v1 + v135) = v134;
  v136 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact;
  swift_beginAccess();
  LOBYTE(v136) = *(a1 + v136);
  v137 = v198;
  swift_beginAccess();
  *(v1 + v137) = v136;
  v138 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo;
  swift_beginAccess();
  LOBYTE(v138) = *(a1 + v138);
  v139 = v199;
  swift_beginAccess();
  *(v1 + v139) = v138;
  v140 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay;
  swift_beginAccess();
  LOBYTE(v140) = *(a1 + v140);
  v141 = v200;
  swift_beginAccess();
  *(v1 + v141) = v140;
  v142 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer;
  swift_beginAccess();
  LOBYTE(v142) = *(a1 + v142);
  v143 = v201;
  swift_beginAccess();
  *(v1 + v143) = v142;
  v144 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate;
  swift_beginAccess();
  LOBYTE(v144) = *(a1 + v144);
  v145 = v202;
  swift_beginAccess();
  *(v1 + v145) = v144;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v146 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult;
  swift_beginAccess();
  LOBYTE(v146) = *(a1 + v146);
  v147 = v206;
  swift_beginAccess();
  *(v1 + v147) = v146;
  v148 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult;
  swift_beginAccess();
  LOBYTE(v148) = *(a1 + v148);
  v149 = v207;
  swift_beginAccess();
  *(v1 + v149) = v148;
  v150 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed);
  swift_beginAccess();
  v151 = *v150;
  LOBYTE(v150) = *(v150 + 8);
  v152 = v208;
  swift_beginAccess();
  *v152 = v151;
  *(v152 + 8) = v150;
  v153 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason);
  swift_beginAccess();
  v154 = *v153;
  LOBYTE(v153) = *(v153 + 8);
  v155 = v209;
  swift_beginAccess();
  *v155 = v154;
  *(v155 + 8) = v153;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v156 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos;
  swift_beginAccess();
  LOBYTE(v156) = *(a1 + v156);
  v157 = v213;
  swift_beginAccess();
  *(v1 + v157) = v156;
  v158 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated;
  swift_beginAccess();
  LOBYTE(v158) = *(a1 + v158);
  v159 = v214;
  swift_beginAccess();
  *(v1 + v159) = v158;
  v160 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v160) = *(a1 + v160);
  v161 = v216;
  swift_beginAccess();
  *(v1 + v161) = v160;
  v162 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v162) = *(a1 + v162);
  v163 = v217;
  swift_beginAccess();
  *(v1 + v163) = v162;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v164 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p;
  swift_beginAccess();
  LOBYTE(v164) = *(a1 + v164);
  v165 = v219;
  swift_beginAccess();
  *(v1 + v165) = v164;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v166 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched);
  swift_beginAccess();
  v167 = *v166;
  LOBYTE(v166) = *(v166 + 8);
  v168 = v222;
  swift_beginAccess();
  *v168 = v167;
  *(v168 + 8) = v166;
  v169 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  swift_beginAccess();
  LODWORD(v65) = *v169;

  v170 = v223;
  swift_beginAccess();
  *v170 = v65;
  return v1;
}

uint64_t sub_1B8FB41F8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action, &qword_1EBAC06E0, &qword_1B966F968);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout, &qword_1EBAC06D8, &qword_1B966F960);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures, &qword_1EBAC06E8, &qword_1B966F970);

  sub_1B8D525DC(*(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier), *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier + 8), *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier + 16));
  sub_1B8D525DC(*(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID), *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID + 8), *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID + 16));
  sub_1B8D525DC(*(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID), *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID + 8), *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID + 16));
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData), *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card, &qword_1EBAC06F0, &qword_1B966F978);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard, &qword_1EBAC06F0, &qword_1B966F978);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard, &qword_1EBAC06F0, &qword_1B966F978);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals, &qword_1EBAC06F8, &qword_1B966F980);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals, &qword_1EBAC0700, &qword_1B966F988);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails, &qword_1EBAC0708, &qword_1B966F990);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes, &unk_1EBAC0710, &qword_1B966F998);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes, &qword_1EBAC0718, &qword_1B966F9A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo, &unk_1EBAC0720, &qword_1B966F9A8);
  return v0;
}

void sub_1B8FB44F4()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v9 = v3;
  v5 = v4;
  v7 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = v9(v8);
  }

  OUTLINED_FUNCTION_445_0();
  v2();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FB4B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC1470, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB4C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB4D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B8FB4E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1B964C520();
  if (v6)
  {
  }

  else if (v14)
  {
    v10 = a2 + *a5;
    if (*(v10 + 16) == 255)
    {
      v11 = 255;
    }

    else
    {
      OUTLINED_FUNCTION_259();
      sub_1B964C3D0();
      v11 = *(v10 + 16);
    }

    v12 = *v10;
    v13 = *(v10 + 8);
    *v10 = 0;
    *(v10 + 8) = v14;
    *(v10 + 16) = 0;
    a6(v12, v13, v11);
  }

  OUTLINED_FUNCTION_747();
}

void sub_1B8FB4EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_859();
  OUTLINED_FUNCTION_122_1();
  sub_1B9023B40();
  OUTLINED_FUNCTION_601_0();
  sub_1B964C410();
  OUTLINED_FUNCTION_747();
}

uint64_t sub_1B8FB4FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB5264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC1530, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB5340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC1518, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC1500, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB54F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  sub_1B8CD2450(&qword_1EBAC14E8, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB55D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  sub_1B8CD2450(&qword_1EBAC14D0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FB56B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  sub_1B8CD2450(&qword_1EBAC14B8, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B8FB57CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v177 = &v162 - v9;
  v178 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  MEMORY[0x1EEE9AC00](v178);
  v179 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v174 = &v162 - v12;
  v175 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v171 = &v162 - v15;
  v172 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v168 = &v162 - v18;
  v169 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v165 = &v162 - v21;
  v166 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v162 = &v162 - v24;
  v163 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  MEMORY[0x1EEE9AC00](v163);
  v164 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v183 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v184 = &v162 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v185 = &v162 - v31;
  v186 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v32 = MEMORY[0x1EEE9AC00](v186);
  v180 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v181 = &v162 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v182 = &v162 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v192 = &v162 - v38;
  v188 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v189 = &v162 - v41;
  v190 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v162 - v44;
  v46 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  MEMORY[0x1EEE9AC00](v46);
  swift_beginAccess();
  v47 = *(a1 + 16);
  v48 = *(a1 + 24);
  v205 = a1;
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {

    v50 = v194;
    sub_1B964C700();
    v51 = a3;
    v52 = a4;
    v53 = v50;
    if (v50)
    {

      return;
    }

    v193 = v51;
  }

  else
  {
    v193 = a3;
    v52 = a4;
    v53 = v194;
  }

  v54 = v205;
  swift_beginAccess();
  if (*(v54 + 32))
  {
    v55 = *(v54 + 40);
    v203 = *(v54 + 32);
    v204 = v55;
    sub_1B9023FD8();
    sub_1B964C680();
    if (v53)
    {
      return;
    }

    v53 = 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBAC06E0, &qword_1B966F968);
    v56 = v53;
    v57 = v52;
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8CD2450(&qword_1EBAC1470, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);
    sub_1B964C740();
    v56 = v53;
    if (v53)
    {
      goto LABEL_25;
    }

    v57 = v52;
    sub_1B8FAC5C8();
  }

  swift_beginAccess();
  v58 = v189;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v190);
  v61 = v192;
  v60 = v193;
  if (EnumTagSinglePayload == 1)
  {
    v62 = v56;
    sub_1B8D9207C(v58, &qword_1EBAC06D8, &qword_1B966F960);
    v63 = v60;
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
    sub_1B964C740();
    if (v56)
    {
      goto LABEL_25;
    }

    v63 = v60;
    v62 = 0;
    sub_1B8FAC5C8();
  }

  v64 = v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__type;
  swift_beginAccess();
  if (!sub_1B8D92198(*v64, *(v64 + 8), 0))
  {
    v65 = *(v64 + 8);
    v201 = *v64;
    v202 = v65;
    sub_1B902402C();
    sub_1B964C680();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v61, 1, v188) == 1)
  {
    sub_1B8D9207C(v61, &qword_1EBAC06E8, &qword_1B966F970);
    goto LABEL_28;
  }

  sub_1B8FAC528();
  sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
  sub_1B964C740();
  if (v62)
  {
LABEL_25:
    sub_1B8FAC5C8();
    return;
  }

  v62 = 0;
  sub_1B8FAC5C8();
LABEL_28:
  v66 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    sub_1B964C700();
    if (v62)
    {
LABEL_32:

      return;
    }
  }

  v70 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  v71 = v205;
  swift_beginAccess();
  if (*(v71 + v70) != 0.0)
  {
    sub_1B964C6F0();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v72 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection;
  v73 = v205;
  swift_beginAccess();
  if (*(v73 + v72) == 1)
  {
    sub_1B964C670();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v74 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID;
  v75 = v205;
  swift_beginAccess();
  if (*(v75 + v74))
  {
    sub_1B964C720();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v76 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  swift_beginAccess();
  v77 = *v76;
  v78 = v76[1];
  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v77 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {

    sub_1B964C700();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v80 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {

    sub_1B964C700();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v84 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v87 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v87)
  {

    sub_1B964C700();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v88 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult;
  v89 = v205;
  swift_beginAccess();
  if (*(v89 + v88) == 1)
  {
    sub_1B964C670();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v90 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable;
  v91 = v205;
  swift_beginAccess();
  if (*(v91 + v90) == 1)
  {
    sub_1B964C670();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v92 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v95 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v95)
  {

    sub_1B964C700();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v96 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {

    sub_1B964C700();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v100 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch;
  v101 = v205;
  swift_beginAccess();
  if (*(v101 + v100) == 1)
  {
    sub_1B964C670();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v102 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold;
  v103 = v205;
  swift_beginAccess();
  if (*(v103 + v102) == 1)
  {
    sub_1B964C670();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v104 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID;
  v105 = v205;
  swift_beginAccess();
  if (*(v105 + v104))
  {
    sub_1B964C720();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v106 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier;
  v107 = v205;
  swift_beginAccess();
  if (*(v107 + v106))
  {
    v108 = v63;
    v109 = v57;
    sub_1B964C720();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  else
  {
    v108 = v63;
    v109 = v57;
  }

  v110 = *(v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier + 16);
  if (v110 == 255)
  {
    goto LABEL_102;
  }

  if (v110)
  {
    sub_1B8FB7CD8(v205, a2, v108, v109, &OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier, 27);
  }

  else
  {
    sub_1B8FB7C30();
  }

  if (!v62)
  {
LABEL_102:
    v111 = *(v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID + 16);
    if (v111 == 255)
    {
      goto LABEL_184;
    }

    if (v111)
    {
      sub_1B8FB7CD8(v205, a2, v108, v109, &OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID, 29);
    }

    else
    {
      sub_1B8FB7C30();
    }

    if (!v62)
    {
LABEL_184:
      v112 = *(v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID + 16);
      if (v112 == 255)
      {
        goto LABEL_103;
      }

      if (v112)
      {
        sub_1B8FB7CD8(v205, a2, v108, v109, &OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID, 31);
      }

      else
      {
        sub_1B8FB7C30();
      }

      if (!v62)
      {
LABEL_103:
        v113 = v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData;
        swift_beginAccess();
        if (!sub_1B8D99EA8(*v113, *(v113 + 8)))
        {
          v114 = *v113;
          v115 = *(v113 + 8);
          sub_1B8D91FCC(v114, v115);
          sub_1B964C6A0();
          if (v62)
          {
            sub_1B8D538A0(v114, v115);
            return;
          }

          sub_1B8D538A0(v114, v115);
        }

        v116 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay;
        v117 = v205;
        swift_beginAccess();
        if (*(v117 + v116) != 1 || (sub_1B964C670(), !v62))
        {
          v118 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover;
          v119 = v205;
          swift_beginAccess();
          if (*(v119 + v118) != 1 || (sub_1B964C670(), !v62))
          {
            v120 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter;
            v121 = v205;
            swift_beginAccess();
            if (*(v121 + v120) != 1 || (sub_1B964C670(), !v62))
            {
              v122 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact;
              v123 = v205;
              swift_beginAccess();
              if (*(v123 + v122) != 1 || (sub_1B964C670(), !v62))
              {
                v124 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo;
                v125 = v205;
                swift_beginAccess();
                if (*(v125 + v124) != 1 || (sub_1B964C670(), !v62))
                {
                  v126 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay;
                  v127 = v205;
                  swift_beginAccess();
                  if (*(v127 + v126) != 1 || (sub_1B964C670(), !v62))
                  {
                    v128 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer;
                    v129 = v205;
                    swift_beginAccess();
                    if (*(v129 + v128) != 1 || (sub_1B964C670(), !v62))
                    {
                      v130 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate;
                      v131 = v205;
                      swift_beginAccess();
                      if (*(v131 + v130) != 1 || (sub_1B964C670(), !v62))
                      {
                        swift_beginAccess();
                        v132 = v185;
                        sub_1B8F1B8B8();
                        if (__swift_getEnumTagSinglePayload(v132, 1, v186) == 1)
                        {
                          sub_1B8D9207C(v185, &qword_1EBAC06F0, &qword_1B966F978);
                        }

                        else
                        {
                          sub_1B8FAC528();
                          sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_1B964C740();
                          if (v62)
                          {
                            goto LABEL_134;
                          }

                          sub_1B8FAC5C8();
                        }

                        swift_beginAccess();
                        v133 = v184;
                        sub_1B8F1B8B8();
                        if (__swift_getEnumTagSinglePayload(v133, 1, v186) == 1)
                        {
                          sub_1B8D9207C(v184, &qword_1EBAC06F0, &qword_1B966F978);
                        }

                        else
                        {
                          sub_1B8FAC528();
                          sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_1B964C740();
                          if (v62)
                          {
                            goto LABEL_134;
                          }

                          sub_1B8FAC5C8();
                        }

                        swift_beginAccess();
                        v134 = v183;
                        sub_1B8F1B8B8();
                        if (__swift_getEnumTagSinglePayload(v134, 1, v186) == 1)
                        {
                          sub_1B8D9207C(v183, &qword_1EBAC06F0, &qword_1B966F978);
                        }

                        else
                        {
                          sub_1B8FAC528();
                          sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_1B964C740();
                          if (v62)
                          {
                            goto LABEL_134;
                          }

                          sub_1B8FAC5C8();
                        }

                        v135 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult;
                        v136 = v205;
                        swift_beginAccess();
                        if (*(v136 + v135) != 1 || (sub_1B964C670(), !v62))
                        {
                          v137 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult;
                          v138 = v205;
                          swift_beginAccess();
                          if (*(v138 + v137) != 1 || (sub_1B964C670(), !v62))
                          {
                            v139 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed);
                            swift_beginAccess();
                            if (!*v139 || (v140 = *(v139 + 8), v199 = *v139, v200 = v140, sub_1B9023EDC(), sub_1B964C680(), !v62))
                            {
                              v141 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason);
                              swift_beginAccess();
                              if (!*v141 || (v142 = *(v141 + 8), v197 = *v141, v198 = v142, sub_1B9023E88(), sub_1B964C680(), !v62))
                              {
                                swift_beginAccess();
                                v143 = v162;
                                sub_1B8F1B8B8();
                                if (__swift_getEnumTagSinglePayload(v143, 1, v163) == 1)
                                {
                                  sub_1B8D9207C(v162, &qword_1EBAC06F8, &qword_1B966F980);
                                }

                                else
                                {
                                  sub_1B8FAC528();
                                  sub_1B8CD2450(&qword_1EBAC1530, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);
                                  sub_1B964C740();
                                  if (v62)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_1B8FAC5C8();
                                }

                                swift_beginAccess();
                                v144 = v165;
                                sub_1B8F1B8B8();
                                if (__swift_getEnumTagSinglePayload(v144, 1, v166) == 1)
                                {
                                  sub_1B8D9207C(v165, &qword_1EBAC0700, &qword_1B966F988);
                                }

                                else
                                {
                                  sub_1B8FAC528();
                                  sub_1B8CD2450(&qword_1EBAC1518, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);
                                  sub_1B964C740();
                                  if (v62)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_1B8FAC5C8();
                                }

                                swift_beginAccess();
                                v145 = v168;
                                sub_1B8F1B8B8();
                                if (__swift_getEnumTagSinglePayload(v145, 1, v169) == 1)
                                {
                                  sub_1B8D9207C(v168, &qword_1EBAC0708, &qword_1B966F990);
                                }

                                else
                                {
                                  sub_1B8FAC528();
                                  sub_1B8CD2450(&qword_1EBAC1500, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);
                                  sub_1B964C740();
                                  if (v62)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_1B8FAC5C8();
                                }

                                v146 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos;
                                v147 = v205;
                                swift_beginAccess();
                                if (*(v147 + v146) != 1 || (sub_1B964C670(), !v62))
                                {
                                  v148 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated;
                                  v149 = v205;
                                  swift_beginAccess();
                                  if (*(v149 + v148) != 1 || (sub_1B964C670(), !v62))
                                  {
                                    v150 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked;
                                    v151 = v205;
                                    swift_beginAccess();
                                    if (!*(v151 + v150) || (sub_1B964C6C0(), !v62))
                                    {
                                      v152 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked;
                                      v153 = v205;
                                      swift_beginAccess();
                                      if (!*(v153 + v152) || (sub_1B964C6C0(), !v62))
                                      {
                                        swift_beginAccess();
                                        v154 = v171;
                                        sub_1B8F1B8B8();
                                        if (__swift_getEnumTagSinglePayload(v154, 1, v172) == 1)
                                        {
                                          sub_1B8D9207C(v171, &unk_1EBAC0710, &qword_1B966F998);
                                        }

                                        else
                                        {
                                          sub_1B8FAC528();
                                          sub_1B8CD2450(&qword_1EBAC14E8, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);
                                          sub_1B964C740();
                                          if (v62)
                                          {
                                            goto LABEL_134;
                                          }

                                          sub_1B8FAC5C8();
                                        }

                                        v155 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p;
                                        v156 = v205;
                                        swift_beginAccess();
                                        if (*(v156 + v155) == 1)
                                        {
                                          sub_1B964C670();
                                          if (v62)
                                          {
                                            return;
                                          }
                                        }

                                        swift_beginAccess();
                                        v157 = v174;
                                        sub_1B8F1B8B8();
                                        if (__swift_getEnumTagSinglePayload(v157, 1, v175) == 1)
                                        {
                                          sub_1B8D9207C(v174, &qword_1EBAC0718, &qword_1B966F9A0);
                                        }

                                        else
                                        {
                                          sub_1B8FAC528();
                                          sub_1B8CD2450(&qword_1EBAC14D0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
                                          sub_1B964C740();
                                          if (v62)
                                          {
                                            goto LABEL_134;
                                          }

                                          sub_1B8FAC5C8();
                                        }

                                        swift_beginAccess();
                                        v158 = v177;
                                        sub_1B8F1B8B8();
                                        if (__swift_getEnumTagSinglePayload(v158, 1, v178) == 1)
                                        {
                                          sub_1B8D9207C(v177, &unk_1EBAC0720, &qword_1B966F9A8);
LABEL_178:
                                          v159 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched);
                                          swift_beginAccess();
                                          if (!*v159 || (v160 = *(v159 + 8), v195 = *v159, v196 = v160, sub_1B9023E34(), sub_1B964C680(), !v62))
                                          {
                                            v161 = (v205 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
                                            swift_beginAccess();
                                            if (*v161 != 0.0)
                                            {
                                              sub_1B964C6B0();
                                            }
                                          }

                                          return;
                                        }

                                        sub_1B8FAC528();
                                        sub_1B8CD2450(&qword_1EBAC14B8, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);
                                        sub_1B964C740();
                                        if (!v62)
                                        {
                                          sub_1B8FAC5C8();
                                          goto LABEL_178;
                                        }

LABEL_134:
                                        sub_1B8FAC5C8();
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

void sub_1B8FB7C30()
{
  OUTLINED_FUNCTION_273_0();
  v3 = *(v2 + *v1 + 16);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v0;
    v5 = OUTLINED_FUNCTION_606();
    v6(v5);
    OUTLINED_FUNCTION_606();
    sub_1B964C700();
    v7 = OUTLINED_FUNCTION_606();
    v4(v7);
    OUTLINED_FUNCTION_272_0();
  }
}

uint64_t sub_1B8FB7CD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = *(result + *a5 + 16);
  if (v6 == 255 || (v6 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B9023B40();
    return sub_1B964C680();
  }

  return result;
}

BOOL sub_1B8FB7DA4(uint64_t a1, void *a2)
{
  v582 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v584 = v8;
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20D0, &qword_1B967F578);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_238_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  v583 = v12;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_266_0();
  v581 = v14;
  v15 = OUTLINED_FUNCTION_201();
  v577 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21();
  v578 = v17;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20D8, &qword_1B967F580);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v579 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  v21 = OUTLINED_FUNCTION_183(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v576 = v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_266_0();
  v575 = v24;
  v25 = OUTLINED_FUNCTION_201();
  v570 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v25);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_21();
  v572 = v27;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20E0, &qword_1B967F588);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_185();
  v573 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  v31 = OUTLINED_FUNCTION_183(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  v571 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_266_0();
  v569 = v34;
  v35 = OUTLINED_FUNCTION_201();
  v565 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v35);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  v566 = v37;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20E8, &qword_1B967F590);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_185();
  v567 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  v41 = OUTLINED_FUNCTION_183(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44_0();
  v564 = v42;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_266_0();
  v563 = v44;
  v45 = OUTLINED_FUNCTION_201();
  v557 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v45);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_21();
  v560 = v47;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20F0, &qword_1B967F598);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_185();
  v561 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  v51 = OUTLINED_FUNCTION_183(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44_0();
  v559 = v52;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_266_0();
  v558 = v54;
  v55 = OUTLINED_FUNCTION_201();
  v553 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v55);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_21();
  v554 = v57;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20F8, &qword_1B967F5A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_185();
  v555 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  v61 = OUTLINED_FUNCTION_183(v60);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44_0();
  v552 = v62;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_266_0();
  v551 = v64;
  v65 = OUTLINED_FUNCTION_201();
  v547 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v65);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_44_0();
  v548 = v67;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_682();
  v542 = v69;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_266_0();
  v538 = v71;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07B8, &qword_1B966FA58);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_44_0();
  v549 = v73;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_682();
  v543 = v75;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_266_0();
  v539 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  v79 = OUTLINED_FUNCTION_183(v78);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_44_0();
  v546 = v80;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_682();
  v545 = v82;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_682();
  v541 = v84;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_682();
  v540 = v86;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_682();
  v537 = v88;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_266_0();
  v536 = v90;
  v91 = OUTLINED_FUNCTION_201();
  v588 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v91);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_21();
  v585 = v93;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2100, &qword_1B967F5A8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_185();
  v589 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  v97 = OUTLINED_FUNCTION_183(v96);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_44_0();
  v586 = v98;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_266_0();
  v596 = v100;
  v101 = OUTLINED_FUNCTION_201();
  v594 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v101);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_21();
  v590 = v103;
  v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_185();
  v595 = v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v107 = OUTLINED_FUNCTION_183(v106);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_44_0();
  v591 = v108;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_266_0();
  v598 = v110;
  v111 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v111);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_21();
  v592 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2108, &qword_1B967F5B0);
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v534 - v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  v118 = OUTLINED_FUNCTION_183(v117);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_44_0();
  v597 = v119;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_521(a1 + 16, v700);
  v122 = *(a1 + 16);
  v121 = *(a1 + 24);
  OUTLINED_FUNCTION_521((a2 + 2), v699);
  v123 = v122 == a2[2] && v121 == a2[3];
  if (!v123 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v698);
  v124 = *(a1 + 32);
  v125 = *(a1 + 40);
  OUTLINED_FUNCTION_521((a2 + 4), v697);
  if (!sub_1B8D92198(v124, v125, a2[4]))
  {
    return 0;
  }

  v534 = v2;
  v535 = a2;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action, v696);
  v126 = v535;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action, v695);
  v127 = *(v3 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_75(v116);
  if (v123)
  {

    sub_1B8D9207C(v4, &qword_1EBAC06E0, &qword_1B966F968);
    OUTLINED_FUNCTION_75(&v116[v127]);
    if (v123)
    {
      sub_1B8D9207C(v116, &qword_1EBAC06E0, &qword_1B966F968);
      goto LABEL_17;
    }

LABEL_15:
    v129 = &qword_1EBAC2108;
    v130 = &qword_1B967F5B0;
    v131 = v116;
LABEL_26:
    sub_1B8D9207C(v131, v129, v130);
LABEL_27:

    return 0;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_75(&v116[v127]);
  if (v128)
  {

    sub_1B8D9207C(v4, &qword_1EBAC06E0, &qword_1B966F968);
    sub_1B8FAC5C8();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_209_2();
  sub_1B8FAC528();

  static Apple_Parsec_Feedback_V2_ActionItemForFeedback.== infix(_:_:)();
  v133 = v132;
  sub_1B8FAC5C8();
  v134 = OUTLINED_FUNCTION_259();
  sub_1B8D9207C(v134, v135, &qword_1B966F968);
  OUTLINED_FUNCTION_236();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v116, &qword_1EBAC06E0, &qword_1B966F968);
  if ((v133 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout, &v694);
  v136 = v598;
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout, &v693);
  OUTLINED_FUNCTION_224_1();
  v137 = v595;
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_178(v137, 1, v594);
  if (v123)
  {
    sub_1B8D9207C(v136, &qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_37_0(&dword_1ED9FF000 + v137);
    v138 = v596;
    if (v123)
    {
      v139 = sub_1B8D9207C(v137, &qword_1EBAC06D8, &qword_1B966F960);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  LODWORD(v136) = v591;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(&dword_1ED9FF000 + v137);
  v138 = v596;
  if (v140)
  {
    sub_1B8D9207C(v598, &qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_119_2();
    sub_1B8FAC5C8();
LABEL_25:
    v129 = &qword_1EBAC0788;
    v130 = &qword_1B966FA28;
    v131 = v137;
    goto LABEL_26;
  }

  sub_1B8FAC528();
  v142 = OUTLINED_FUNCTION_275();
  v143 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v142);
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v144, v145, v146);
  OUTLINED_FUNCTION_825();
  OUTLINED_FUNCTION_466();
  v139 = sub_1B8D9207C(v147, v148, v149);
  if ((v143 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  OUTLINED_FUNCTION_7_7(v139, &v692);
  OUTLINED_FUNCTION_831();
  OUTLINED_FUNCTION_505_0(v150, &v691);
  v151 = OUTLINED_FUNCTION_220_1();
  if (!sub_1B8D92198(v151, v152, v153))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures, &v690);
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures, &v689);
  v154 = *(v587 + 48);
  v155 = v589;
  OUTLINED_FUNCTION_668_0();
  v156 = v155;
  OUTLINED_FUNCTION_668_0();
  v157 = v588;
  OUTLINED_FUNCTION_178(v155, 1, v588);
  if (v123)
  {
    sub_1B8D9207C(v138, &qword_1EBAC06E8, &qword_1B966F970);
    OUTLINED_FUNCTION_37_0(v155 + v154);
    if (v123)
    {
      v158 = sub_1B8D9207C(v155, &qword_1EBAC06E8, &qword_1B966F970);
      goto LABEL_36;
    }

    goto LABEL_87;
  }

  v136 = v586;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v155 + v154);
  if (v229)
  {
    sub_1B8D9207C(v138, &qword_1EBAC06E8, &qword_1B966F970);
    sub_1B8FAC5C8();
LABEL_87:
    v129 = &qword_1EBAC2100;
    v130 = &qword_1B967F5A8;
    v131 = v155;
    goto LABEL_26;
  }

  sub_1B8FAC528();
  sub_1B8DB1280();
  if ((v230 & 1) == 0 || (sub_1B8DB17CC(), (v231 & 1) == 0))
  {
    sub_1B8FAC5C8();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v242, v243, v244);
    sub_1B8FAC5C8();
    v131 = OUTLINED_FUNCTION_246();
    v130 = &qword_1B966F970;
    goto LABEL_26;
  }

  v232 = *(v157 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v233, v234, MEMORY[0x1E69AAC10]);
  v235 = OUTLINED_FUNCTION_731(v136 + v232);
  sub_1B8FAC5C8();
  v156 = &qword_1B966F970;
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v236, v237, v238);
  OUTLINED_FUNCTION_825();
  OUTLINED_FUNCTION_466();
  v158 = sub_1B8D9207C(v239, v240, v241);
  if ((v235 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_36:
  v159 = a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType;
  v160 = OUTLINED_FUNCTION_26_6(v158, &v688);
  v161 = *(v159 + 8);
  OUTLINED_FUNCTION_505_0(v160, &v687);
  OUTLINED_FUNCTION_714_0();
  if (!v123 || v161 != v162)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v164 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore, &v686);
  v165 = *(a1 + v164);
  v166 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore, &v685);
  if (v165 != *(v126 + v166))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection, &v684);
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection, &v683);
  OUTLINED_FUNCTION_855();
  if (!v123)
  {
    goto LABEL_27;
  }

  v167 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID, &v682);
  v168 = *(a1 + v167);
  v169 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID;
  v170 = OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID, &v681);
  if (v168 != *(v126 + v169))
  {
    goto LABEL_27;
  }

  v171 = a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery;
  v172 = OUTLINED_FUNCTION_26_6(v170, &v680);
  v173 = *(v171 + 8);
  OUTLINED_FUNCTION_505_0(v172, &v679);
  OUTLINED_FUNCTION_714_0();
  if (!v123 || v173 != v175)
  {
    OUTLINED_FUNCTION_543();
    v174 = sub_1B964C9F0();
    if ((v174 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v177 = a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery;
  v178 = OUTLINED_FUNCTION_26_6(v174, &v678);
  v179 = *(v177 + 8);
  OUTLINED_FUNCTION_505_0(v178, &v677);
  OUTLINED_FUNCTION_714_0();
  if (!v123 || v179 != v181)
  {
    OUTLINED_FUNCTION_543();
    v180 = sub_1B964C9F0();
    if ((v180 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v183 = a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery;
  v184 = OUTLINED_FUNCTION_26_6(v180, &v676);
  v185 = *(v183 + 8);
  OUTLINED_FUNCTION_505_0(v184, &v675);
  OUTLINED_FUNCTION_714_0();
  if (!v123 || v185 != v186)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult, &v674);
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult, &v673);
  OUTLINED_FUNCTION_855();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable, &v672);
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable, &v671);
  OUTLINED_FUNCTION_855();
  if (!v123)
  {
    goto LABEL_27;
  }

  v189 = a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr;
  v190 = OUTLINED_FUNCTION_26_6(v188, &v670);
  v191 = *(v189 + 8);
  OUTLINED_FUNCTION_505_0(v190, &v669);
  OUTLINED_FUNCTION_714_0();
  if (!v123 || v191 != v193)
  {
    OUTLINED_FUNCTION_543();
    v192 = sub_1B964C9F0();
    if ((v192 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v195 = a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput;
  v196 = OUTLINED_FUNCTION_26_6(v192, &v668);
  v197 = *(v195 + 8);
  v198 = v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput;
  OUTLINED_FUNCTION_505_0(v196, &v667);
  OUTLINED_FUNCTION_714_0();
  if (!v123 || v197 != v199)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch, &v666);
  v201 = a1;
  OUTLINED_FUNCTION_521(v126 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch, &v665);
  OUTLINED_FUNCTION_855();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold, &v664);
  v202 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v202, &v663);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  v203 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID, &v662);
  v204 = *(a1 + v203);
  v205 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID;
  v206 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v206, &v661);
  if (v204 != *&v198[v205])
  {
    goto LABEL_27;
  }

  v207 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier, &v660);
  v208 = *(a1 + v207);
  v209 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier;
  v210 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v210, &v659);
  if (v208 != *&v198[v209])
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_376_0();
  if (v123)
  {
    v245 = OUTLINED_FUNCTION_74_7();
    sub_1B8D52584(v245, v246, 255);
    if (v136 != 255)
    {
      goto LABEL_107;
    }

    v247 = OUTLINED_FUNCTION_366_0();
    sub_1B8D525DC(v247, v248, 255);
  }

  else
  {
    OUTLINED_FUNCTION_639_0();
    if (v123)
    {
LABEL_105:
      v291 = OUTLINED_FUNCTION_283_1();
      sub_1B8D52584(v291, v292, v293);
      v294 = OUTLINED_FUNCTION_257();
      sub_1B8D52584(v294, v295, 255);
      v296 = OUTLINED_FUNCTION_283_1();
      sub_1B8D52584(v296, v297, v298);
      v299 = OUTLINED_FUNCTION_257();
      sub_1B8D52584(v299, v300, 255);
      v301 = OUTLINED_FUNCTION_283_1();
      sub_1B8D52584(v301, v302, v303);

      v304 = OUTLINED_FUNCTION_257();
      sub_1B8D525DC(v304, v305, 255);
      v306 = OUTLINED_FUNCTION_283_1();
      sub_1B8D525DC(v306, v307, v308);
      v309 = OUTLINED_FUNCTION_74_7();
      sub_1B8D52574(v309, v310, v311);
LABEL_108:
      v316 = OUTLINED_FUNCTION_283_1();
      sub_1B8D525DC(v316, v317, v318);
      v319 = OUTLINED_FUNCTION_257();
      sub_1B8D525DC(v319, v320, v136);
      return 0;
    }

    v655 = v155;
    v656 = v156;
    v211 = v136 & 1;
    v657 = v136 & 1;
    v212 = OUTLINED_FUNCTION_283_1();
    sub_1B8D52584(v212, v213, v214);
    v215 = OUTLINED_FUNCTION_257();
    sub_1B8D52584(v215, v216, v136);
    v217 = OUTLINED_FUNCTION_283_1();
    sub_1B8D52584(v217, v218, v219);
    static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_ResultBundleIdentifier.== infix(_:_:)(v658, &v655);
    LODWORD(v136) = v220;
    v221 = OUTLINED_FUNCTION_257();
    sub_1B8D52574(v221, v222, v211);
    v223 = OUTLINED_FUNCTION_74_7();
    sub_1B8D52574(v223, v224, v225);
    v226 = OUTLINED_FUNCTION_283_1();
    sub_1B8D525DC(v226, v227, v228);
    if ((v136 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_376_0();
  if (v123)
  {
    v267 = OUTLINED_FUNCTION_74_7();
    sub_1B8D52584(v267, v268, 255);
    if (v136 == 255)
    {
      v269 = OUTLINED_FUNCTION_366_0();
      sub_1B8D525DC(v269, v270, 255);
      goto LABEL_101;
    }

LABEL_107:
    v314 = OUTLINED_FUNCTION_257();
    sub_1B8D52584(v314, v315, v136);

    goto LABEL_108;
  }

  OUTLINED_FUNCTION_639_0();
  if (v123)
  {
    goto LABEL_105;
  }

  v655 = v155;
  v656 = v156;
  v249 = v136 & 1;
  v657 = v136 & 1;
  v250 = OUTLINED_FUNCTION_283_1();
  sub_1B8D52584(v250, v251, v252);
  v253 = OUTLINED_FUNCTION_257();
  sub_1B8D52584(v253, v254, v136);
  v255 = OUTLINED_FUNCTION_283_1();
  sub_1B8D52584(v255, v256, v257);
  static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_SectionBundleID.== infix(_:_:)(v658, &v655);
  LODWORD(v136) = v258;
  v259 = OUTLINED_FUNCTION_257();
  sub_1B8D52574(v259, v260, v249);
  v261 = OUTLINED_FUNCTION_74_7();
  sub_1B8D52574(v261, v262, v263);
  v264 = OUTLINED_FUNCTION_283_1();
  sub_1B8D525DC(v264, v265, v266);
  if ((v136 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_101:
  OUTLINED_FUNCTION_376_0();
  if (v123)
  {
    v312 = OUTLINED_FUNCTION_74_7();
    sub_1B8D52584(v312, v313, 255);
    if (v136 == 255)
    {
      v321 = OUTLINED_FUNCTION_366_0();
      v290 = sub_1B8D525DC(v321, v322, 255);
      goto LABEL_110;
    }

    goto LABEL_107;
  }

  OUTLINED_FUNCTION_639_0();
  if (v123)
  {
    goto LABEL_105;
  }

  v655 = v155;
  v656 = v156;
  v271 = v136 & 1;
  v657 = v136 & 1;
  v272 = OUTLINED_FUNCTION_283_1();
  sub_1B8D52584(v272, v273, v274);
  v275 = OUTLINED_FUNCTION_257();
  sub_1B8D52584(v275, v276, v136);
  v277 = OUTLINED_FUNCTION_283_1();
  sub_1B8D52584(v277, v278, v279);
  static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_ApplicationBundleID.== infix(_:_:)(v658, &v655);
  v281 = v280;
  v282 = OUTLINED_FUNCTION_257();
  sub_1B8D52574(v282, v283, v271);
  v284 = OUTLINED_FUNCTION_74_7();
  sub_1B8D52574(v284, v285, v286);
  v287 = OUTLINED_FUNCTION_283_1();
  v290 = sub_1B8D525DC(v287, v288, v289);
  if ((v281 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_110:
  OUTLINED_FUNCTION_7_7(v290, v658);
  OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_505_0(v323, &v655);
  v324 = OUTLINED_FUNCTION_74_7();
  sub_1B8D91FCC(v324, v325);
  v326 = OUTLINED_FUNCTION_186();
  sub_1B8D91FCC(v326, v327);
  v328 = OUTLINED_FUNCTION_74_7();
  v329 = MEMORY[0x1BFADC060](v328);
  v330 = OUTLINED_FUNCTION_186();
  sub_1B8D538A0(v330, v331);
  v332 = OUTLINED_FUNCTION_74_7();
  sub_1B8D538A0(v332, v333);
  if ((v329 & 1) == 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay, &v654);
  v334 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v334, &v653);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover, &v652);
  v335 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v335, &v651);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter, &v650);
  v336 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v336, &v649);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact, &v648);
  v337 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v337, &v647);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo, &v646);
  v338 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v338, &v645);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay, &v644);
  v339 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v339, &v643);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer, &v642);
  v340 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v340, &v641);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate, &v640);
  v341 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v341, &v639);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card, &v638);
  OUTLINED_FUNCTION_474_0();
  v342 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v342, &v637);
  OUTLINED_FUNCTION_224_1();
  v343 = v539;
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  OUTLINED_FUNCTION_345_0(v343);
  if (v123)
  {
    sub_1B8D9207C(v536, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_345_0(&dword_1ED9FF000 + v539);
    if (v123)
    {
      sub_1B8D9207C(v539, &qword_1EBAC06F0, &qword_1B966F978);
      goto LABEL_132;
    }

LABEL_156:
    v367 = &qword_1EBAC07B8;
    v368 = &qword_1B966FA58;
    v369 = v539;
LABEL_192:
    sub_1B8D9207C(v369, v367, v368);
    goto LABEL_27;
  }

  v365 = v539;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_345_0(&dword_1ED9FF000 + v365);
  if (v366)
  {
    sub_1B8D9207C(v536, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_31_12();
    sub_1B8FAC5C8();
    goto LABEL_156;
  }

  v370 = v538;
  OUTLINED_FUNCTION_827();
  sub_1B8D8050C(*v537, *v370);
  if ((v371 & 1) == 0)
  {
    goto LABEL_191;
  }

  v372 = v537[1] == v538[1] && v537[2] == v538[2];
  if (!v372 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_191;
  }

  v373 = OUTLINED_FUNCTION_804();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v374, v375, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_707_0();
  OUTLINED_FUNCTION_157_5();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v376, v377, v378);
  OUTLINED_FUNCTION_196();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v379, v380, v381);
  if ((v373 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_132:
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard, &v636);
  OUTLINED_FUNCTION_474_0();
  v344 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v344, &v635);
  OUTLINED_FUNCTION_224_1();
  v345 = v543;
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  OUTLINED_FUNCTION_345_0(v345);
  if (v123)
  {
    sub_1B8D9207C(v540, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_345_0(&dword_1ED9FF000 + v543);
    if (v123)
    {
      sub_1B8D9207C(v543, &qword_1EBAC06F0, &qword_1B966F978);
      goto LABEL_137;
    }

    goto LABEL_169;
  }

  v382 = v543;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_345_0(&dword_1ED9FF000 + v382);
  if (v383)
  {
    sub_1B8D9207C(v540, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_31_12();
    sub_1B8FAC5C8();
LABEL_169:
    v367 = &qword_1EBAC07B8;
    v368 = &qword_1B966FA58;
    v369 = v543;
    goto LABEL_192;
  }

  v384 = v542;
  OUTLINED_FUNCTION_827();
  sub_1B8D8050C(*v541, *v384);
  if ((v385 & 1) == 0)
  {
    goto LABEL_191;
  }

  v386 = v541[1] == v542[1] && v541[2] == v542[2];
  if (!v386 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_191;
  }

  v387 = OUTLINED_FUNCTION_804();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v388, v389, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_707_0();
  OUTLINED_FUNCTION_157_5();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v390, v391, v392);
  OUTLINED_FUNCTION_196();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v393, v394, v395);
  if ((v387 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_137:
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard, &v634);
  OUTLINED_FUNCTION_474_0();
  v346 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v346, &v633);
  OUTLINED_FUNCTION_224_1();
  v347 = v549;
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  OUTLINED_FUNCTION_345_0(v347);
  if (v123)
  {
    sub_1B8D9207C(v545, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_345_0(&dword_1ED9FF000 + v549);
    if (v123)
    {
      sub_1B8D9207C(v549, &qword_1EBAC06F0, &qword_1B966F978);
      goto LABEL_142;
    }

    goto LABEL_182;
  }

  v396 = v549;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_345_0(&dword_1ED9FF000 + v396);
  if (v397)
  {
    sub_1B8D9207C(v545, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_31_12();
    sub_1B8FAC5C8();
LABEL_182:
    v367 = &qword_1EBAC07B8;
    v368 = &qword_1B966FA58;
    v369 = v549;
    goto LABEL_192;
  }

  v398 = v548;
  OUTLINED_FUNCTION_827();
  sub_1B8D8050C(*v546, *v398);
  if ((v399 & 1) == 0)
  {
    goto LABEL_191;
  }

  v400 = v546[1] == v548[1] && v546[2] == v548[2];
  if (!v400 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_191;
  }

  v401 = OUTLINED_FUNCTION_804();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v402, v403, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_731(&qword_1B966F978 + v546);
  OUTLINED_FUNCTION_157_5();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v404, v405, v406);
  OUTLINED_FUNCTION_196();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v407, v408, v409);
  if ((v401 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_142:
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult, &v632);
  v348 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v348, &v631);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult, &v630);
  v349 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v349, &v629);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_7(v350, &v628);
  OUTLINED_FUNCTION_831();
  OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_505_0(v351, &v627);
  v352 = OUTLINED_FUNCTION_220_1();
  v355 = sub_1B8D92198(v352, v353, v354);
  if (!v355)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_7(v355, &v626);
  OUTLINED_FUNCTION_831();
  OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_505_0(v356, &v625);
  v357 = OUTLINED_FUNCTION_220_1();
  if (!sub_1B8D92198(v357, v358, v359))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals, &v624);
  OUTLINED_FUNCTION_474_0();
  v360 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v360, &v623);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  v361 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v361, v362, v553);
  if (v123)
  {
    sub_1B8D9207C(v551, &qword_1EBAC06F8, &qword_1B966F980);
    v363 = OUTLINED_FUNCTION_631_0(v555);
    OUTLINED_FUNCTION_178(v363, v364, v553);
    if (v123)
    {
      sub_1B8D9207C(v555, &qword_1EBAC06F8, &qword_1B966F980);
      goto LABEL_199;
    }

LABEL_197:
    v367 = &qword_1EBAC20F8;
    v368 = &qword_1B967F5A0;
    v369 = v555;
    goto LABEL_192;
  }

  sub_1B8F1B8B8();
  v413 = OUTLINED_FUNCTION_539_0();
  OUTLINED_FUNCTION_178(v413, v414, v553);
  if (v415)
  {
    sub_1B8D9207C(v551, &qword_1EBAC06F8, &qword_1B966F980);
    sub_1B8FAC5C8();
    goto LABEL_197;
  }

  sub_1B8FAC528();
  v416 = OUTLINED_FUNCTION_275();
  v417 = static Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.== infix(_:_:)(v416);
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v418, v419, v420);
  OUTLINED_FUNCTION_825();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v421, v422, v423);
  if ((v417 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_199:
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals, &v622);
  OUTLINED_FUNCTION_474_0();
  v424 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v424, &v621);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  v425 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v425, v426, v557);
  if (v123)
  {
    sub_1B8D9207C(v558, &qword_1EBAC0700, &qword_1B966F988);
    v427 = OUTLINED_FUNCTION_631_0(v561);
    OUTLINED_FUNCTION_178(v427, v428, v557);
    if (v123)
    {
      sub_1B8D9207C(v561, &qword_1EBAC0700, &qword_1B966F988);
      goto LABEL_211;
    }

LABEL_207:
    v367 = &qword_1EBAC20F0;
    v368 = &qword_1B967F598;
    v369 = v561;
    goto LABEL_192;
  }

  sub_1B8F1B8B8();
  v429 = OUTLINED_FUNCTION_539_0();
  OUTLINED_FUNCTION_178(v429, v430, v557);
  if (v431)
  {
    sub_1B8D9207C(v558, &qword_1EBAC0700, &qword_1B966F988);
    sub_1B8FAC5C8();
    goto LABEL_207;
  }

  v432 = v560;
  OUTLINED_FUNCTION_827();
  v433 = *(v557 + 20);
  v434 = *(v559 + v433);
  v435 = *(v432 + v433);
  if (v434 != v435 && !sub_1B8FC1F88(v434, v435))
  {
    goto LABEL_191;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v436, v437, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_541_0();
  v438 = sub_1B964C850();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v439, v440, v441);
  OUTLINED_FUNCTION_196();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v442, v443, v444);
  if ((v438 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_211:
  v445 = &unk_1ED9FA000;
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails, &v620);
  OUTLINED_FUNCTION_474_0();
  v446 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v446, &v619);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  v447 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v447, v448, v565);
  if (v123)
  {
    sub_1B8D9207C(v563, &qword_1EBAC0708, &qword_1B966F990);
    v449 = OUTLINED_FUNCTION_631_0(v567);
    OUTLINED_FUNCTION_178(v449, v450, v565);
    if (v123)
    {
      sub_1B8D9207C(v567, &qword_1EBAC0708, &qword_1B966F990);
      goto LABEL_221;
    }

LABEL_219:
    v367 = &qword_1EBAC20E8;
    v368 = &qword_1B967F590;
    v369 = v567;
    goto LABEL_192;
  }

  sub_1B8F1B8B8();
  v451 = OUTLINED_FUNCTION_539_0();
  OUTLINED_FUNCTION_178(v451, v452, v565);
  if (v453)
  {
    sub_1B8D9207C(v563, &qword_1EBAC0708, &qword_1B966F990);
    sub_1B8FAC5C8();
    goto LABEL_219;
  }

  sub_1B8FAC528();
  OUTLINED_FUNCTION_275();
  v454 = static Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.== infix(_:_:)();
  sub_1B8FAC5C8();
  v445 = &qword_1EBAC0708;
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v455, v456, v457);
  OUTLINED_FUNCTION_825();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v458, v459, v460);
  if ((v454 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_221:
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos, &v618);
  v461 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v461, &v617);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated, &v616);
  v462 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v462, &v615);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  v463 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked;
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked, &v614);
  LODWORD(v463) = *(v201 + v463);
  v464 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked;
  v465 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v465, &v613);
  if (v463 != *(v445 + v464))
  {
    goto LABEL_27;
  }

  v466 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked;
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked, &v612);
  LODWORD(v466) = *(v201 + v466);
  v467 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked;
  v468 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v468, &v611);
  if (v466 != *(v445 + v467))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes, &v610);
  OUTLINED_FUNCTION_474_0();
  v469 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v469, &v609);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  v470 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v470, v471, v570);
  if (v123)
  {
    sub_1B8D9207C(v569, &unk_1EBAC0710, &qword_1B966F998);
    v472 = OUTLINED_FUNCTION_631_0(v573);
    OUTLINED_FUNCTION_178(v472, v473, v570);
    if (v123)
    {
      sub_1B8D9207C(v573, &unk_1EBAC0710, &qword_1B966F998);
      goto LABEL_232;
    }

LABEL_243:
    v367 = &qword_1EBAC20E0;
    v368 = &qword_1B967F588;
    v369 = v573;
    goto LABEL_192;
  }

  sub_1B8F1B8B8();
  v480 = OUTLINED_FUNCTION_539_0();
  OUTLINED_FUNCTION_178(v480, v481, v570);
  if (v482)
  {
    sub_1B8D9207C(v569, &unk_1EBAC0710, &qword_1B966F998);
    sub_1B8FAC5C8();
    goto LABEL_243;
  }

  v483 = v572;
  OUTLINED_FUNCTION_827();
  v484 = *v571;
  v485 = *v483;
  if (*(v483 + 8) == 1)
  {
    if (v485)
    {
      if (v485 == 1)
      {
        if (v484 != 1)
        {
LABEL_191:
          sub_1B8FAC5C8();
          OUTLINED_FUNCTION_176_2();
          sub_1B8D9207C(v410, v411, v412);
          sub_1B8FAC5C8();
          OUTLINED_FUNCTION_176_2();
          goto LABEL_192;
        }
      }

      else if (v484 != 2)
      {
        goto LABEL_191;
      }
    }

    else if (v484)
    {
      goto LABEL_191;
    }
  }

  else if (v484 != v485)
  {
    goto LABEL_191;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v486, v487, MEMORY[0x1E69AAC10]);
  v488 = OUTLINED_FUNCTION_707_0();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v489, v490, v491);
  OUTLINED_FUNCTION_196();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v492, v493, v494);
  if ((v488 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_232:
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p, &v608);
  v474 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v474, &v607);
  OUTLINED_FUNCTION_78_0();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes, &v606);
  OUTLINED_FUNCTION_474_0();
  v475 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v475, &v605);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  v476 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v476, v477, v577);
  if (v123)
  {
    sub_1B8D9207C(v575, &qword_1EBAC0718, &qword_1B966F9A0);
    v478 = OUTLINED_FUNCTION_631_0(v579);
    OUTLINED_FUNCTION_178(v478, v479, v577);
    if (v123)
    {
      sub_1B8D9207C(v579, &qword_1EBAC0718, &qword_1B966F9A0);
      goto LABEL_261;
    }

LABEL_255:
    v367 = &qword_1EBAC20D8;
    v368 = &qword_1B967F580;
    v369 = v579;
    goto LABEL_192;
  }

  sub_1B8F1B8B8();
  v495 = OUTLINED_FUNCTION_539_0();
  OUTLINED_FUNCTION_178(v495, v496, v577);
  if (v497)
  {
    sub_1B8D9207C(v575, &qword_1EBAC0718, &qword_1B966F9A0);
    sub_1B8FAC5C8();
    goto LABEL_255;
  }

  sub_1B8FAC528();
  OUTLINED_FUNCTION_275();
  v498 = static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v499, v500, v501);
  OUTLINED_FUNCTION_825();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v502, v503, v504);
  if ((v498 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_261:
  OUTLINED_FUNCTION_521(v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo, &v604);
  OUTLINED_FUNCTION_474_0();
  v505 = OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521(v505, &v603);
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_474_0();
  OUTLINED_FUNCTION_397_0();
  v506 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v506, v507, v582);
  if (v123)
  {
    sub_1B8D9207C(v581, &unk_1EBAC0720, &qword_1B966F9A8);
    v508 = OUTLINED_FUNCTION_631_0(v534);
    OUTLINED_FUNCTION_178(v508, v509, v582);
    if (v123)
    {
      v510 = sub_1B8D9207C(v534, &unk_1EBAC0720, &qword_1B966F9A8);
      goto LABEL_274;
    }

LABEL_269:
    v367 = &qword_1EBAC20D0;
    v368 = &qword_1B967F578;
    v369 = v534;
    goto LABEL_192;
  }

  sub_1B8F1B8B8();
  v511 = OUTLINED_FUNCTION_539_0();
  OUTLINED_FUNCTION_178(v511, v512, v582);
  if (v513)
  {
    sub_1B8D9207C(v581, &unk_1EBAC0720, &qword_1B966F9A8);
    sub_1B8FAC5C8();
    goto LABEL_269;
  }

  v514 = v584;
  sub_1B8FAC528();
  if (!sub_1B8D92198(*v583, *(v583 + 8), *v514) || !sub_1B8D92198(*(v583 + 16), *(v583 + 24), v584[2]) || !sub_1B8D92198(*(v583 + 32), *(v583 + 40), v584[4]))
  {
    goto LABEL_191;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v515, v516, MEMORY[0x1E69AAC10]);
  v517 = OUTLINED_FUNCTION_707_0();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v518, v519, v520);
  OUTLINED_FUNCTION_196();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_466();
  v510 = sub_1B8D9207C(v521, v522, v523);
  if ((v517 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_274:
  OUTLINED_FUNCTION_7_7(v510, &v602);
  OUTLINED_FUNCTION_831();
  OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_505_0(v524, &v601);
  v525 = OUTLINED_FUNCTION_220_1();
  v528 = sub_1B8D92198(v525, v526, v527);
  if (!v528)
  {
    goto LABEL_27;
  }

  v529 = (v201 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_7_7(v528, &v600);
  v530 = *v529;

  v532 = (v535 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_7_7(v531, &v599);
  v533 = *v532;

  return v530 == v533;
}

uint64_t sub_1B8FBAC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E48, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FBAC84(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FBACF4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FBAD8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFF28);
  __swift_project_value_buffer(v0, qword_1EBABFF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "totalNumberOfAssets";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfEmbeddingMatchedAssets";
  *(v10 + 1) = 35;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfMetadataMatchedAssets";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8CEFFD4();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FBB09C(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FBB034(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if (!sub_1B8D92198(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_848();
  if (!sub_1B8D92198(v4, v5, v6))
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_492_0();
  if (!sub_1B8D92198(v7, v8, v9))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_40();
  v12 = sub_1B8CD2450(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B8FBB32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E40, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FBB3AC(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC14B8, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FBB41C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC14B8, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FBB4B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFF40);
  __swift_project_value_buffer(v0, qword_1EBABFF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "positionIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isEmbeddingMatched";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isMetadataMatched";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isVideo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isFavorite";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosSuggestionType";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FBB848(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_PhotosAttributes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    if (*(v4 + 8) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
    {
      if (*(v4 + 9) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
      {
        if (*(v4 + 10) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
        {
          if (*(v4 + 11) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
          {
            if (!*(v4 + 16) || (OUTLINED_FUNCTION_94_4(), sub_1B90136DC(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
              OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_227_0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  if (v1[9] != v0[9])
  {
    return 0;
  }

  if (v1[10] != v0[10])
  {
    return 0;
  }

  if (v1[11] != v0[11])
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_848();
  if (!sub_1B8D92198(v5, v6, v7))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_868();
  OUTLINED_FUNCTION_0_40();
  v10 = sub_1B8CD2450(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8FBBB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E38, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FBBBB8(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC14D0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FBBC28(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC14D0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FBBD2C()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_445_0();
      v0();
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_SafariAttributes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  if (!*v3 || (OUTLINED_FUNCTION_94_4(), sub_1B9013730(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v4))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_SafariAttributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_40();
      v6 = sub_1B8CD2450(v4, v5, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v6) & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1B8FBBFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E30, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FBC044(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC14E8, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FBC0B4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC14E8, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FBC140()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFF70);
  __swift_project_value_buffer(v0, qword_1EBABFF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dataSources";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestionScore";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "skgMegadomeSpotlightIndexEntries";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FBC3F0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  if (!*v3 || (OUTLINED_FUNCTION_94_4(), sub_1B9013784(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v4))
  {
    if (*(v5 + 12) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v4))
    {
      if (!*(v5 + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C6C0(), !v4))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v1 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v1 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v1)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v1 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_722_0();
    if (v4)
    {
      OUTLINED_FUNCTION_735();
      if (v4)
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
        OUTLINED_FUNCTION_736();
        OUTLINED_FUNCTION_0_40();
        v7 = sub_1B8CD2450(v5, v6, MEMORY[0x1E69AAC10]);
        return OUTLINED_FUNCTION_634(v7) & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B8FBC69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E28, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FBC71C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1500, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FBC78C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1500, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FBC818()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFF88);
  __swift_project_value_buffer(v0, qword_1EBABFF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1B966F930;
  v4 = v146 + v3 + v1[14];
  *(v146 + v3) = 1;
  *v4 = "wasReorderedByRecency";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v146 + v3 + v2 + v1[14];
  *(v146 + v3 + v2) = 2;
  *v8 = "numEngagements";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v146 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "numDaysEngagedLast30Days";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v146 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "averageEngagementAgeLast7Days";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v7();
  v13 = (v146 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "averageEngagementAgeLast14Days";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v7();
  v15 = (v146 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "averageEngagementAgeLast21Days";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  v17 = (v146 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "averageEngagementAgeLast30Days";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v7();
  v19 = (v146 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "daysSinceReceipt";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v146 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "l1Score";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v7();
  v23 = (v146 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "l2Score";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v146 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "isFlagged";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v146 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isRepliedTo";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v146 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isSemanticMatch";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v146 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isSyntacticMatch";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v146 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "semanticScore";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v7();
  v35 = (v146 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "syntacticScore";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v146 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "countUnigramMatchInAuthors";
  *(v38 + 1) = 26;
  v38[16] = 2;
  v7();
  v39 = (v146 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "countBigramMatchInAuthors";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = (v146 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = 0x1B96FA000;
  *(v42 + 1) = 24;
  v42[16] = 2;
  v7();
  v43 = (v146 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "countUnigramPrefixMatchInAuthors";
  *(v44 + 1) = 32;
  v44[16] = 2;
  v7();
  v45 = (v146 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "countBigramPrefixMatchInAuthors";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v146 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "countNgramPrefixMatchInAuthors";
  *(v48 + 1) = 30;
  v48[16] = 2;
  v7();
  v49 = (v146 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "countUnigramMatchInAuthorEmailAddresses";
  *(v50 + 1) = 39;
  v50[16] = 2;
  v7();
  v51 = (v146 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "countBigramMatchInAuthorEmailAddresses";
  *(v52 + 1) = 38;
  v52[16] = 2;
  v7();
  v53 = (v146 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "countNgramMatchInAuthorEmailAddresses";
  *(v54 + 1) = 37;
  v54[16] = 2;
  v7();
  v55 = (v146 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "countUnigramPrefixMatchInAuthorEmailAddresses";
  *(v56 + 1) = 45;
  v56[16] = 2;
  v7();
  v57 = (v146 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "countBigramPrefixMatchInAuthorEmailAddresses";
  *(v58 + 1) = 44;
  v58[16] = 2;
  v7();
  v59 = (v146 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "countNgramPrefixMatchInAuthorEmailAddresses";
  *(v60 + 1) = 43;
  v60[16] = 2;
  v7();
  v61 = (v146 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "countUnigramMatchInSubject";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v7();
  v63 = (v146 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "countBigramMatchInSubject";
  *(v64 + 1) = 25;
  v64[16] = 2;
  v7();
  v65 = (v146 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "countNgramMatchInSubject";
  *(v66 + 1) = 24;
  v66[16] = 2;
  v7();
  v67 = (v146 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "countUnigramPrefixMatchInSubject";
  *(v68 + 1) = 32;
  v68[16] = 2;
  v7();
  v69 = (v146 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "countBigramPrefixMatchInSubject";
  *(v70 + 1) = 31;
  v70[16] = 2;
  v7();
  v71 = (v146 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "countNgramPrefixMatchInSubject";
  *(v72 + 1) = 30;
  v72[16] = 2;
  v7();
  v73 = (v146 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "countUnigramMatchInTextContent";
  *(v74 + 1) = 30;
  v74[16] = 2;
  v7();
  v75 = (v146 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "countBigramMatchInTextContent";
  *(v76 + 1) = 29;
  v76[16] = 2;
  v7();
  v77 = (v146 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "countNgramMatchInTextContent";
  *(v78 + 1) = 28;
  v78[16] = 2;
  v7();
  v79 = (v146 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "countUnigramPrefixMatchInTextContent";
  *(v80 + 1) = 36;
  v80[16] = 2;
  v7();
  v81 = (v146 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "countBigramPrefixMatchInTextContent";
  *(v82 + 1) = 35;
  v82[16] = 2;
  v7();
  v83 = (v146 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "countNgramPrefixMatchInTextContent";
  *(v84 + 1) = 34;
  v84[16] = 2;
  v7();
  v85 = (v146 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "countUnigramMatchInRecipients";
  *(v86 + 1) = 29;
  v86[16] = 2;
  v7();
  v87 = (v146 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "countBigramMatchInRecipients";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v7();
  v89 = (v146 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "countNgramMatchInRecipients";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v146 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "countUnigramPrefixMatchInRecipients";
  *(v92 + 1) = 35;
  v92[16] = 2;
  v7();
  v93 = (v146 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "countBigramPrefixMatchInRecipients";
  *(v94 + 1) = 34;
  v94[16] = 2;
  v7();
  v95 = (v146 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "countNgramPrefixMatchInRecipients";
  *(v96 + 1) = 33;
  v96[16] = 2;
  v7();
  v97 = (v146 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "countUnigramMatchInRecipientEmailAddresses";
  *(v98 + 1) = 42;
  v98[16] = 2;
  v7();
  v99 = (v146 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "countBigramMatchInRecipientEmailAddresses";
  *(v100 + 1) = 41;
  v100[16] = 2;
  v7();
  v101 = (v146 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "countNgramMatchInRecipientEmailAddresses";
  *(v102 + 1) = 40;
  v102[16] = 2;
  v7();
  v103 = (v146 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "countUnigramPrefixMatchInRecipientEmailAddresses";
  *(v104 + 1) = 48;
  v104[16] = 2;
  v7();
  v105 = (v146 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "countBigramPrefixMatchInRecipientEmailAddresses";
  *(v106 + 1) = 47;
  v106[16] = 2;
  v7();
  v107 = (v146 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "countNgramPrefixMatchInRecipientEmailAddresses";
  *(v108 + 1) = 46;
  v108[16] = 2;
  v7();
  v109 = (v146 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "countUnigramMatchInEmailAddresses";
  *(v110 + 1) = 33;
  v110[16] = 2;
  v7();
  v111 = (v146 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "countBigramMatchInEmailAddresses";
  *(v112 + 1) = 32;
  v112[16] = 2;
  v7();
  v113 = (v146 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "countNgramMatchInEmailAddresses";
  *(v114 + 1) = 31;
  v114[16] = 2;
  v7();
  v115 = (v146 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "countUnigramPrefixMatchInEmailAddresses";
  *(v116 + 1) = 39;
  v116[16] = 2;
  v7();
  v117 = (v146 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "countBigramPrefixMatchInEmailAddresses";
  *(v118 + 1) = 38;
  v118[16] = 2;
  v7();
  v119 = (v146 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "countNgramPrefixMatchInEmailAddresses";
  *(v120 + 1) = 37;
  v120[16] = 2;
  v7();
  v121 = (v146 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "countUnigramMatchInAttachmentTypes";
  *(v122 + 1) = 34;
  v122[16] = 2;
  v7();
  v123 = (v146 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "countBigramMatchInAttachmentTypes";
  *(v124 + 1) = 33;
  v124[16] = 2;
  v7();
  v125 = (v146 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "countNgramMatchInAttachmentTypes";
  *(v126 + 1) = 32;
  v126[16] = 2;
  v7();
  v127 = (v146 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "countUnigramPrefixMatchInAttachmentTypes";
  *(v128 + 1) = 40;
  v128[16] = 2;
  v7();
  v129 = (v146 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "countBigramPrefixMatchInAttachmentTypes";
  *(v130 + 1) = 39;
  v130[16] = 2;
  v7();
  v131 = (v146 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "countNgramPrefixMatchInAttachmentTypes";
  *(v132 + 1) = 38;
  v132[16] = 2;
  v7();
  v133 = (v146 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "countUnigramMatchInAttachmentNames";
  *(v134 + 1) = 34;
  v134[16] = 2;
  v7();
  v135 = (v146 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "countBigramMatchInAttachmentNames";
  *(v136 + 1) = 33;
  v136[16] = 2;
  v7();
  v137 = (v146 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 67;
  *v138 = "countNgramMatchInAttachmentNames";
  *(v138 + 1) = 32;
  v138[16] = 2;
  v7();
  v139 = (v146 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 68;
  *v140 = "countUnigramPrefixMatchInAttachmentNames";
  *(v140 + 1) = 40;
  v140[16] = 2;
  v7();
  v141 = (v146 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 69;
  *v142 = "countBigramPrefixMatchInAttachmentNames";
  *(v142 + 1) = 39;
  v142[16] = 2;
  v7();
  v143 = (v146 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 70;
  *v144 = "countNgramPrefixMatchInAttachmentNames";
  *(v144 + 1) = 38;
  v144[16] = 2;
  v7();
  return sub_1B964C760();
}

void sub_1B8FBDA28()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  bzero((v0 + 24), 0x114uLL);
  qword_1EBABFFA0 = v0;
}

uint64_t sub_1B8FBDB18(uint64_t a1)
{
  *(v1 + 16) = 0;
  bzero((v1 + 24), 0x114uLL);
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 52) = v5;
  swift_beginAccess();
  v6 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v6;
  swift_beginAccess();
  v7 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v7;
  swift_beginAccess();
  v8 = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 68) = v8;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 75);
  swift_beginAccess();
  *(v1 + 75) = v6;
  swift_beginAccess();
  v9 = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 76) = v9;
  swift_beginAccess();
  v10 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v10;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 84) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 88) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 92) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 96) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 100) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 108) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 116) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 124) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 128) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 132) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 136) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 140) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 148);
  swift_beginAccess();
  *(v1 + 148) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 152) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 156);
  swift_beginAccess();
  *(v1 + 156) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 160) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 164) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 168) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 172);
  swift_beginAccess();
  *(v1 + 172) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 176) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 180);
  swift_beginAccess();
  *(v1 + 180) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 184) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 188);
  swift_beginAccess();
  *(v1 + 188) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 192) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 196) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 200) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 204);
  swift_beginAccess();
  *(v1 + 204) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 208) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 212);
  swift_beginAccess();
  *(v1 + 212) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 216) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 220);
  swift_beginAccess();
  *(v1 + 220) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 224);
  swift_beginAccess();
  *(v1 + 224) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 228);
  swift_beginAccess();
  *(v1 + 228) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 232) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 236);
  swift_beginAccess();
  *(v1 + 236) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 240) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 244);
  swift_beginAccess();
  *(v1 + 244) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 252);
  swift_beginAccess();
  *(v1 + 252) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 260);
  swift_beginAccess();
  *(v1 + 260) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 264) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 268);
  swift_beginAccess();
  *(v1 + 268) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 272) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 276);
  swift_beginAccess();
  *(v1 + 276) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 280) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 284);
  swift_beginAccess();
  *(v1 + 284) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 288);
  swift_beginAccess();
  *(v1 + 288) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 292);
  swift_beginAccess();
  *(v1 + 292) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 296);

  swift_beginAccess();
  *(v1 + 296) = v6;
  return v1;
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_12_8();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_704_0(v5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v3 + v4) = sub_1B8FBDB18(v6);
  }

  v7 = OUTLINED_FUNCTION_7_6();
  sub_1B8FBEA5C(v7, v8, v9, v10);
  OUTLINED_FUNCTION_823();
}

void sub_1B8FBEA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B8FBF340(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B9006EF0(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        break;
      case 3:
        sub_1B8FBF3C4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B900C1AC(a2, a1, a3, a4, MEMORY[0x1E69AAC98]);
        break;
      case 5:
        sub_1B900C204(a2, a1, a3, a4, MEMORY[0x1E69AAC98]);
        break;
      case 6:
        sub_1B900C25C(a2, a1, a3, a4, MEMORY[0x1E69AAC98]);
        break;
      case 7:
        sub_1B900C2B4(a2, a1, a3, a4, MEMORY[0x1E69AAC98]);
        break;
      case 8:
        sub_1B8FFD568(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        break;
      case 9:
        sub_1B900C5CC(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B900C620(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8E43200(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8FFD654(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8FBF418(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8FBF49C(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B900C6C8(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B900C71C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B900C770(a2, a1, a3, a4, MEMORY[0x1E69AACF0]);
        break;
      case 18:
        sub_1B900C7C8(a2, a1, a3, a4, MEMORY[0x1E69AACF0]);
        break;
      case 19:
        sub_1B8FBF520(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B8FBF5A4(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B8FBF628(a2, a1, a3, a4);
        break;
      case 22:
        sub_1B8FBF6AC(a2, a1, a3, a4);
        break;
      case 23:
        sub_1B8FBF730(a2, a1, a3, a4);
        break;
      case 24:
        sub_1B8FBF7B4(a2, a1, a3, a4);
        break;
      case 25:
        sub_1B8FBF808(a2, a1, a3, a4);
        break;
      case 26:
        sub_1B8FBF88C(a2, a1, a3, a4);
        break;
      case 27:
        sub_1B8FBF910(a2, a1, a3, a4);
        break;
      case 28:
        sub_1B8FBF994(a2, a1, a3, a4);
        break;
      case 29:
        sub_1B8FBFA18(a2, a1, a3, a4);
        break;
      case 30:
        sub_1B8FBFA9C(a2, a1, a3, a4);
        break;
      case 31:
        sub_1B8FBFB20(a2, a1, a3, a4);
        break;
      case 32:
        sub_1B8FBFBA4(a2, a1, a3, a4);
        break;
      case 33:
        sub_1B8FBFC28(a2, a1, a3, a4);
        break;
      case 34:
        sub_1B8E9B014(a2, a1, a3, a4);
        break;
      case 35:
        sub_1B8FBFCAC(a2, a1, a3, a4);
        break;
      case 36:
        sub_1B8FBFD30(a2, a1, a3, a4);
        break;
      case 37:
        sub_1B8FBFDB4(a2, a1, a3, a4);
        break;
      case 38:
        sub_1B8FBFE38(a2, a1, a3, a4);
        break;
      case 39:
        sub_1B8FBFEBC(a2, a1, a3, a4);
        break;
      case 40:
        sub_1B8FBFF40(a2, a1, a3, a4);
        break;
      case 41:
        sub_1B8FBFFC4(a2, a1, a3, a4);
        break;
      case 42:
        sub_1B8FC0048(a2, a1, a3, a4);
        break;
      case 43:
        sub_1B8FC00CC(a2, a1, a3, a4);
        break;
      case 44:
        sub_1B8FC0150(a2, a1, a3, a4);
        break;
      case 45:
        sub_1B8FC01D4(a2, a1, a3, a4);
        break;
      case 46:
        sub_1B8FC0258(a2, a1, a3, a4);
        break;
      case 47:
        sub_1B8FC02DC(a2, a1, a3, a4);
        break;
      case 48:
        sub_1B8FC0360(a2, a1, a3, a4);
        break;
      case 49:
        sub_1B8FC03E4(a2, a1, a3, a4);
        break;
      case 50:
        sub_1B8FC0468(a2, a1, a3, a4);
        break;
      case 51:
        sub_1B8FC04EC(a2, a1, a3, a4);
        break;
      case 52:
        sub_1B8FC0570(a2, a1, a3, a4);
        break;
      case 53:
        sub_1B8FC05F4(a2, a1, a3, a4);
        break;
      case 54:
        sub_1B8FC0678(a2, a1, a3, a4);
        break;
      case 55:
        sub_1B8FC06FC(a2, a1, a3, a4);
        break;
      case 56:
        sub_1B8FC0780(a2, a1, a3, a4);
        break;
      case 57:
        sub_1B8FC0804(a2, a1, a3, a4);
        break;
      case 58:
        sub_1B8FC0888(a2, a1, a3, a4);
        break;
      case 59:
        sub_1B8FC090C(a2, a1, a3, a4);
        break;
      case 60:
        sub_1B8FC0990(a2, a1, a3, a4);
        break;
      case 61:
        sub_1B8FC0A14(a2, a1, a3, a4);
        break;
      case 62:
        sub_1B8FC0A98(a2, a1, a3, a4);
        break;
      case 63:
        sub_1B8FC0B1C(a2, a1, a3, a4);
        break;
      case 64:
        sub_1B8FC0BA0(a2, a1, a3, a4);
        break;
      default:
        switch(v9)
        {
          case 'A':
            sub_1B8FC0C24(a2, a1, a3, a4);
            break;
          case 'B':
            sub_1B8FC0CA8(a2, a1, a3, a4);
            break;
          case 'C':
            sub_1B8FC0D2C(a2, a1, a3, a4);
            break;
          case 'D':
            sub_1B8FC0DB0(a2, a1, a3, a4);
            break;
          case 'E':
            sub_1B8FC0E34(a2, a1, a3, a4);
            break;
          case 'F':
            sub_1B8FC0EB8(a2, a1, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B8FBF340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

void sub_1B8FBF3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C560();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B8FBF418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FBF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FBF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBF5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBF628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBF6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

void sub_1B8FBF7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C540();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B8FBF808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBF88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBF910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBF994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FBFFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC00CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC01D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC02DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC03E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC04EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC05F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC06FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8FC0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_1B964C720(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (result = sub_1B964C720(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 40) || (result = sub_1B964C6C0(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 44) || (result = sub_1B964C6C0(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 48) || (result = sub_1B964C6C0(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 52) || (result = sub_1B964C6C0(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 56) || (result = sub_1B964C720(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 64) == 0.0 || (result = sub_1B964C6B0(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 68) == 0.0 || (result = sub_1B964C6B0(), !v4))
                    {
                      swift_beginAccess();
                      if (*(a1 + 72) != 1 || (result = sub_1B964C670(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 73) != 1 || (result = sub_1B964C670(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 74) != 1 || (result = sub_1B964C670(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 75) != 1 || (result = sub_1B964C670(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 76) == 0.0 || (result = sub_1B964C6B0(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 80) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 84) || (result = sub_1B964C710(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (!*(a1 + 88) || (result = sub_1B964C710(), !v4))
                                    {
                                      swift_beginAccess();
                                      if (!*(a1 + 92) || (result = sub_1B964C710(), !v4))
                                      {
                                        swift_beginAccess();
                                        if (!*(a1 + 96) || (result = sub_1B964C710(), !v4))
                                        {
                                          swift_beginAccess();
                                          if (!*(a1 + 100) || (result = sub_1B964C710(), !v4))
                                          {
                                            swift_beginAccess();
                                            if (!*(a1 + 104) || (result = sub_1B964C710(), !v4))
                                            {
                                              swift_beginAccess();
                                              if (!*(a1 + 108) || (result = sub_1B964C710(), !v4))
                                              {
                                                swift_beginAccess();
                                                if (!*(a1 + 112) || (result = sub_1B964C710(), !v4))
                                                {
                                                  swift_beginAccess();
                                                  if (!*(a1 + 116) || (result = sub_1B964C710(), !v4))
                                                  {
                                                    swift_beginAccess();
                                                    if (!*(a1 + 120) || (result = sub_1B964C710(), !v4))
                                                    {
                                                      swift_beginAccess();
                                                      if (!*(a1 + 124) || (result = sub_1B964C710(), !v4))
                                                      {
                                                        swift_beginAccess();
                                                        if (!*(a1 + 128) || (result = sub_1B964C710(), !v4))
                                                        {
                                                          swift_beginAccess();
                                                          if (!*(a1 + 132) || (result = sub_1B964C710(), !v4))
                                                          {
                                                            swift_beginAccess();
                                                            if (!*(a1 + 136) || (result = sub_1B964C710(), !v4))
                                                            {
                                                              swift_beginAccess();
                                                              if (!*(a1 + 140) || (result = sub_1B964C710(), !v4))
                                                              {
                                                                swift_beginAccess();
                                                                if (!*(a1 + 144) || (result = sub_1B964C710(), !v4))
                                                                {
                                                                  swift_beginAccess();
                                                                  if (!*(a1 + 148) || (result = sub_1B964C710(), !v4))
                                                                  {
                                                                    swift_beginAccess();
                                                                    if (!*(a1 + 152) || (result = sub_1B964C710(), !v4))
                                                                    {
                                                                      swift_beginAccess();
                                                                      if (!*(a1 + 156) || (result = sub_1B964C710(), !v4))
                                                                      {
                                                                        swift_beginAccess();
                                                                        if (!*(a1 + 160) || (result = sub_1B964C710(), !v4))
                                                                        {
                                                                          swift_beginAccess();
                                                                          if (!*(a1 + 164) || (result = sub_1B964C710(), !v4))
                                                                          {
                                                                            swift_beginAccess();
                                                                            if (!*(a1 + 168) || (result = sub_1B964C710(), !v4))
                                                                            {
                                                                              swift_beginAccess();
                                                                              if (!*(a1 + 172) || (result = sub_1B964C710(), !v4))
                                                                              {
                                                                                swift_beginAccess();
                                                                                if (!*(a1 + 176) || (result = sub_1B964C710(), !v4))
                                                                                {
                                                                                  swift_beginAccess();
                                                                                  if (!*(a1 + 180) || (result = sub_1B964C710(), !v4))
                                                                                  {
                                                                                    swift_beginAccess();
                                                                                    if (!*(a1 + 184) || (result = sub_1B964C710(), !v4))
                                                                                    {
                                                                                      swift_beginAccess();
                                                                                      if (!*(a1 + 188) || (result = sub_1B964C710(), !v4))
                                                                                      {
                                                                                        swift_beginAccess();
                                                                                        if (!*(a1 + 192) || (result = sub_1B964C710(), !v4))
                                                                                        {
                                                                                          swift_beginAccess();
                                                                                          if (!*(a1 + 196) || (result = sub_1B964C710(), !v4))
                                                                                          {
                                                                                            swift_beginAccess();
                                                                                            if (!*(a1 + 200) || (result = sub_1B964C710(), !v4))
                                                                                            {
                                                                                              swift_beginAccess();
                                                                                              if (!*(a1 + 204) || (result = sub_1B964C710(), !v4))
                                                                                              {
                                                                                                swift_beginAccess();
                                                                                                if (!*(a1 + 208) || (result = sub_1B964C710(), !v4))
                                                                                                {
                                                                                                  swift_beginAccess();
                                                                                                  if (!*(a1 + 212) || (result = sub_1B964C710(), !v4))
                                                                                                  {
                                                                                                    swift_beginAccess();
                                                                                                    if (!*(a1 + 216) || (result = sub_1B964C710(), !v4))
                                                                                                    {
                                                                                                      swift_beginAccess();
                                                                                                      if (!*(a1 + 220) || (result = sub_1B964C710(), !v4))
                                                                                                      {
                                                                                                        swift_beginAccess();
                                                                                                        if (!*(a1 + 224) || (result = sub_1B964C710(), !v4))
                                                                                                        {
                                                                                                          swift_beginAccess();
                                                                                                          if (!*(a1 + 228) || (result = sub_1B964C710(), !v4))
                                                                                                          {
                                                                                                            swift_beginAccess();
                                                                                                            if (!*(a1 + 232) || (result = sub_1B964C710(), !v4))
                                                                                                            {
                                                                                                              swift_beginAccess();
                                                                                                              if (!*(a1 + 236) || (result = sub_1B964C710(), !v4))
                                                                                                              {
                                                                                                                swift_beginAccess();
                                                                                                                if (!*(a1 + 240) || (result = sub_1B964C710(), !v4))
                                                                                                                {
                                                                                                                  swift_beginAccess();
                                                                                                                  if (!*(a1 + 244) || (result = sub_1B964C710(), !v4))
                                                                                                                  {
                                                                                                                    swift_beginAccess();
                                                                                                                    if (!*(a1 + 248) || (result = sub_1B964C710(), !v4))
                                                                                                                    {
                                                                                                                      swift_beginAccess();
                                                                                                                      if (!*(a1 + 252) || (result = sub_1B964C710(), !v4))
                                                                                                                      {
                                                                                                                        swift_beginAccess();
                                                                                                                        if (!*(a1 + 256) || (result = sub_1B964C710(), !v4))
                                                                                                                        {
                                                                                                                          swift_beginAccess();
                                                                                                                          if (!*(a1 + 260) || (result = sub_1B964C710(), !v4))
                                                                                                                          {
                                                                                                                            swift_beginAccess();
                                                                                                                            if (!*(a1 + 264) || (result = sub_1B964C710(), !v4))
                                                                                                                            {
                                                                                                                              swift_beginAccess();
                                                                                                                              if (!*(a1 + 268) || (result = sub_1B964C710(), !v4))
                                                                                                                              {
                                                                                                                                swift_beginAccess();
                                                                                                                                if (!*(a1 + 272) || (result = sub_1B964C710(), !v4))
                                                                                                                                {
                                                                                                                                  swift_beginAccess();
                                                                                                                                  if (!*(a1 + 276) || (result = sub_1B964C710(), !v4))
                                                                                                                                  {
                                                                                                                                    swift_beginAccess();
                                                                                                                                    if (!*(a1 + 280) || (result = sub_1B964C710(), !v4))
                                                                                                                                    {
                                                                                                                                      swift_beginAccess();
                                                                                                                                      if (!*(a1 + 284) || (result = sub_1B964C710(), !v4))
                                                                                                                                      {
                                                                                                                                        swift_beginAccess();
                                                                                                                                        if (!*(a1 + 288) || (result = sub_1B964C710(), !v4))
                                                                                                                                        {
                                                                                                                                          swift_beginAccess();
                                                                                                                                          if (!*(a1 + 292) || (result = sub_1B964C710(), !v4))
                                                                                                                                          {
                                                                                                                                            swift_beginAccess();
                                                                                                                                            result = *(a1 + 296);
                                                                                                                                            if (result)
                                                                                                                                            {
                                                                                                                                              return sub_1B964C710();
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

BOOL sub_1B8FC1F88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (v5 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (v6 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  if (v7 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 44);
  swift_beginAccess();
  if (v8 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  v9 = *(a1 + 48);
  swift_beginAccess();
  if (v9 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v10 = *(a1 + 52);
  swift_beginAccess();
  if (v10 != *(a2 + 52))
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 56);
  swift_beginAccess();
  if (v11 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v12 = *(a1 + 64);
  swift_beginAccess();
  if (v12 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v13 = *(a1 + 68);
  swift_beginAccess();
  if (v13 != *(a2 + 68))
  {
    return 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 72);
  swift_beginAccess();
  if (v14 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 73);
  swift_beginAccess();
  if (v15 != *(a2 + 73))
  {
    return 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 74);
  swift_beginAccess();
  if (v16 != *(a2 + 74))
  {
    return 0;
  }

  swift_beginAccess();
  v17 = *(a1 + 75);
  swift_beginAccess();
  if (v17 != *(a2 + 75))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 76);
  swift_beginAccess();
  if (v18 != *(a2 + 76))
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 80);
  swift_beginAccess();
  if (v19 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 84);
  swift_beginAccess();
  if (v20 != *(a2 + 84))
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 88);
  swift_beginAccess();
  if (v21 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 92);
  swift_beginAccess();
  if (v22 != *(a2 + 92))
  {
    return 0;
  }

  swift_beginAccess();
  v23 = *(a1 + 96);
  swift_beginAccess();
  if (v23 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 100);
  swift_beginAccess();
  if (v24 != *(a2 + 100))
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 104);
  swift_beginAccess();
  if (v25 != *(a2 + 104))
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 108);
  swift_beginAccess();
  if (v26 != *(a2 + 108))
  {
    return 0;
  }

  swift_beginAccess();
  v27 = *(a1 + 112);
  swift_beginAccess();
  if (v27 != *(a2 + 112))
  {
    return 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 116);
  swift_beginAccess();
  if (v28 != *(a2 + 116))
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 120);
  swift_beginAccess();
  if (v29 != *(a2 + 120))
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 124);
  swift_beginAccess();
  if (v30 != *(a2 + 124))
  {
    return 0;
  }

  swift_beginAccess();
  v31 = *(a1 + 128);
  swift_beginAccess();
  if (v31 != *(a2 + 128))
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 132);
  swift_beginAccess();
  if (v32 != *(a2 + 132))
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 136);
  swift_beginAccess();
  if (v33 != *(a2 + 136))
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 140);
  swift_beginAccess();
  if (v34 != *(a2 + 140))
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 144);
  swift_beginAccess();
  if (v35 != *(a2 + 144))
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 148);
  swift_beginAccess();
  if (v36 != *(a2 + 148))
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 152);
  swift_beginAccess();
  if (v37 != *(a2 + 152))
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 156);
  swift_beginAccess();
  if (v38 != *(a2 + 156))
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 160);
  swift_beginAccess();
  if (v39 != *(a2 + 160))
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 164);
  swift_beginAccess();
  if (v40 != *(a2 + 164))
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 168);
  swift_beginAccess();
  if (v41 != *(a2 + 168))
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 172);
  swift_beginAccess();
  if (v42 != *(a2 + 172))
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 176);
  swift_beginAccess();
  if (v43 != *(a2 + 176))
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 180);
  swift_beginAccess();
  if (v44 != *(a2 + 180))
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 184);
  swift_beginAccess();
  if (v45 != *(a2 + 184))
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 188);
  swift_beginAccess();
  if (v46 != *(a2 + 188))
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 192);
  swift_beginAccess();
  if (v47 != *(a2 + 192))
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 196);
  swift_beginAccess();
  if (v48 != *(a2 + 196))
  {
    return 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 200);
  swift_beginAccess();
  if (v49 != *(a2 + 200))
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 204);
  swift_beginAccess();
  if (v50 != *(a2 + 204))
  {
    return 0;
  }

  swift_beginAccess();
  v51 = *(a1 + 208);
  swift_beginAccess();
  if (v51 != *(a2 + 208))
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 212);
  swift_beginAccess();
  if (v52 != *(a2 + 212))
  {
    return 0;
  }

  swift_beginAccess();
  v53 = *(a1 + 216);
  swift_beginAccess();
  if (v53 != *(a2 + 216))
  {
    return 0;
  }

  swift_beginAccess();
  v54 = *(a1 + 220);
  swift_beginAccess();
  if (v54 != *(a2 + 220))
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 224);
  swift_beginAccess();
  if (v55 != *(a2 + 224))
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 228);
  swift_beginAccess();
  if (v56 != *(a2 + 228))
  {
    return 0;
  }

  swift_beginAccess();
  v57 = *(a1 + 232);
  swift_beginAccess();
  if (v57 != *(a2 + 232))
  {
    return 0;
  }

  swift_beginAccess();
  v58 = *(a1 + 236);
  swift_beginAccess();
  if (v58 != *(a2 + 236))
  {
    return 0;
  }

  swift_beginAccess();
  v59 = *(a1 + 240);
  swift_beginAccess();
  if (v59 != *(a2 + 240))
  {
    return 0;
  }

  swift_beginAccess();
  v60 = *(a1 + 244);
  swift_beginAccess();
  if (v60 != *(a2 + 244))
  {
    return 0;
  }

  swift_beginAccess();
  v61 = *(a1 + 248);
  swift_beginAccess();
  if (v61 != *(a2 + 248))
  {
    return 0;
  }

  swift_beginAccess();
  v62 = *(a1 + 252);
  swift_beginAccess();
  if (v62 != *(a2 + 252))
  {
    return 0;
  }

  swift_beginAccess();
  v63 = *(a1 + 256);
  swift_beginAccess();
  if (v63 != *(a2 + 256))
  {
    return 0;
  }

  swift_beginAccess();
  v64 = *(a1 + 260);
  swift_beginAccess();
  if (v64 != *(a2 + 260))
  {
    return 0;
  }

  swift_beginAccess();
  v65 = *(a1 + 264);
  swift_beginAccess();
  if (v65 != *(a2 + 264))
  {
    return 0;
  }

  swift_beginAccess();
  v66 = *(a1 + 268);
  swift_beginAccess();
  if (v66 != *(a2 + 268))
  {
    return 0;
  }

  swift_beginAccess();
  v67 = *(a1 + 272);
  swift_beginAccess();
  if (v67 != *(a2 + 272))
  {
    return 0;
  }

  swift_beginAccess();
  v68 = *(a1 + 276);
  swift_beginAccess();
  if (v68 != *(a2 + 276))
  {
    return 0;
  }

  swift_beginAccess();
  v69 = *(a1 + 280);
  swift_beginAccess();
  if (v69 != *(a2 + 280))
  {
    return 0;
  }

  swift_beginAccess();
  v70 = *(a1 + 284);
  swift_beginAccess();
  if (v70 != *(a2 + 284))
  {
    return 0;
  }

  swift_beginAccess();
  v71 = *(a1 + 288);
  swift_beginAccess();
  if (v71 != *(a2 + 288))
  {
    return 0;
  }

  swift_beginAccess();
  v72 = *(a1 + 292);
  swift_beginAccess();
  if (v72 != *(a2 + 292))
  {
    return 0;
  }

  swift_beginAccess();
  v73 = *(a1 + 296);
  swift_beginAccess();
  return v73 == *(a2 + 296);
}