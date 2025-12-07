uint64_t sub_22B96B890@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v45 = a1;
  v43 = a2;
  v4 = sub_22B9349C8(&qword_27D8D51A0, &qword_22BA15448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  sub_22B96F578();
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
    v42[2] = v3;
    v42[3] = v2;
    v17 = sub_22B96F788(v13, 0);
    v19 = v18;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD40);

    v21 = sub_22BA0FEDC();
    v22 = sub_22BA1046C();

    if (os_log_type_enabled(v21, v22))
    {
      v40 = v22;
      HIBYTE(v42[1]) = -18;
      v41 = v21;
      strcpy(v42, "(no sync date)");
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v23 = 136315394;
      v24 = sub_22B99153C(v17, v19, &v44);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2080;
      if (qword_28141AE08)
      {
        v25 = [qword_28141AE08 lastSyncDate];
        if (v25)
        {
          v26 = v25;
          sub_22BA0FD5C();

          v27 = sub_22BA0FD8C();
          (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
        }

        else
        {
          v27 = sub_22BA0FD8C();
          (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
        }

        sub_22B935A74(v10, v12);
        sub_22BA0FD8C();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v12, 1, v27) == 1)
        {
          sub_22B936BEC(v12, &unk_27D8D4A90, &qword_22BA126A0);
        }

        else
        {
          sub_22BA0FDDC();
          v29 = sub_22BA0FDEC();
          (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
          v42[0] = sub_22BA0FCDC();
          v42[1] = v30;
          sub_22B936BEC(v6, &qword_27D8D51A0, &qword_22BA15448);
          (*(v28 + 8))(v12, v27);
        }
      }

      v31 = sub_22B99153C(v42[0], v42[1], &v44);

      *(v23 + 14) = v31;
      v32 = v41;
      _os_log_impl(&dword_22B92A000, v41, v40, "Scheduling periodic sync with %s, lastSyncDate %s", v23, 0x16u);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v33, -1, -1);
      MEMORY[0x23189ADD0](v23, -1, -1);
    }

    else
    {
    }
  }

  v46 = 2;
  v34 = sub_22BA0FFCC();
  v35 = IMBagIntValueWithDefault();

  sub_22B9DB77C(v35, 12, v14, v16 & 1);
  sub_22B96C910(&v46, 4, 5, v36, v45 & 1, v43);
  return swift_unknownObjectRelease();
}

uint64_t sub_22B96BDB4@<X0>(uint64_t *a1@<X8>)
{
  sub_22B969400(1, v18);
  sub_22B96997C(1, v17);
  sub_22B969D38(1, &unk_283F51458, 0, v16);
  sub_22B96A10C(1, v15);
  sub_22B96A2E4(1, v14);
  sub_22B96A694(1, v13);
  v2 = qword_28141AE30;
  if (qword_28141AE30)
  {
    swift_unknownObjectRetain_n();
    sub_22B9DB620();
    v4 = v3;
    sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22BA13CB0;
    sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22BA153D0;
    sub_22B935B38(v18, v6 + 32);
    sub_22B935B38(v17, v6 + 72);
    sub_22B935B38(v16, v6 + 112);
    sub_22B935B38(v15, v6 + 152);
    sub_22B935B38(v14, v6 + 192);
    sub_22B935B38(v13, v6 + 232);
    *(v5 + 56) = &type metadata for RecordZonesPrepStep;
    *(v5 + 64) = &off_283F55950;
    v7 = swift_allocObject();
    *(v5 + 32) = v7;
    *(v7 + 16) = 0x6D6F44616964654DLL;
    *(v7 + 24) = 0xEB000000006E6961;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = v6;
    *(v7 + 64) = v2;
    v12[3] = &type metadata for CloudKitSyncRetryStrategy;
    v12[4] = &off_283F54398;
    v8 = type metadata accessor for SyncJob();
    v9 = swift_allocObject();
    sub_22B943D3C(v12, &type metadata for CloudKitSyncRetryStrategy);
    *(v9 + 56) = &type metadata for CloudKitSyncRetryStrategy;
    *(v9 + 64) = &off_283F54398;
    *(v9 + 24) = v2;
    *(v9 + 72) = 1;
    *(v9 + 80) = v4;
    *(v9 + 88) = v5;
    *(v9 + 96) = 151519232;
    *(v9 + 16) = 1280;
    *(v9 + 100) = 1;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    swift_unknownObjectRetain();
    sub_22B936C4C(v12);
    a1[3] = v8;
    a1[4] = &off_283F54680;
    swift_unknownObjectRelease();
    *a1 = v9;
  }

  else
  {
    sub_22B96F460();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }

  sub_22B936C4C(v13);
  sub_22B936C4C(v14);
  sub_22B936C4C(v15);
  sub_22B936C4C(v16);
  sub_22B936C4C(v17);
  return sub_22B936C4C(v18);
}

uint64_t sub_22B96C070@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_22B969D38(0, &unk_283F51498, &unk_283F514F8, v19);
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v5 = [qword_28141AE28 assetStore];
  if (v5)
  {
    v6 = v5;
    if (qword_28141AE30)
    {
      v17 = qword_28141AE30;
    }

    else
    {
      v17 = [objc_allocWithZone(NoOpErrorAnalyzer) init];
    }

    swift_unknownObjectRetain();
    v16 = sub_22B9DBCF0();
    sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22BA13410;
    v19[6] = v2;
    if (qword_28141AE18)
    {
      v10 = qword_28141AE18;
    }

    else
    {
      type metadata accessor for NoOpPreReqVerifier();
      v10 = swift_allocObject();
    }

    v11 = qword_28141AE10;
    *(v9 + 56) = &type metadata for SyncPreReqsVerifierStep;
    *(v9 + 64) = &off_283F587B8;
    v12 = swift_allocObject();
    *(v9 + 32) = v12;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = v10;
    *(v12 + 48) = v11;
    *(v9 + 96) = &type metadata for AttachmentAssetDownloadStep;
    *(v9 + 104) = &off_283F588D0;
    v13 = swift_allocObject();
    *(v9 + 72) = v13;
    sub_22B935B38(v19, v13 + 40);
    *(v13 + 16) = 1;
    *(v13 + 80) = v6;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    v18[3] = &type metadata for CloudKitSyncRetryStrategy;
    v18[4] = &off_283F54398;
    v14 = type metadata accessor for SyncJob();
    v15 = swift_allocObject();
    sub_22B943D3C(v18, &type metadata for CloudKitSyncRetryStrategy);
    *(v15 + 56) = &type metadata for CloudKitSyncRetryStrategy;
    *(v15 + 64) = &off_283F54398;
    *(v15 + 24) = v17;
    *(v15 + 72) = a1 & 1;
    *(v15 + 80) = v16;
    *(v15 + 88) = v9;
    *(v15 + 96) = 185204736;
    *(v15 + 16) = 1024;
    *(v15 + 100) = 0;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_22B936C4C(v18);
    a2[3] = v14;
    a2[4] = &off_283F54680;
    swift_unknownObjectRelease();
    *a2 = v15;
    return sub_22B936C4C(v19);
  }

  else
  {
    sub_22B96F460();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    return sub_22B936C4C(v19);
  }
}

uint64_t sub_22B96C35C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  sub_22B9697A8(0, v23);
  v4 = qword_28141AE30;
  if (qword_28141AE30)
  {
    swift_unknownObjectRetain();
    sub_22B9DBBF0();
    v19 = v5;
    sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22BA153C0;
    v24 = a1;
    if (qword_28141AE18)
    {
      v7 = qword_28141AE18;
    }

    else
    {
      type metadata accessor for NoOpPreReqVerifier();
      v7 = swift_allocObject();
    }

    v9 = qword_28141AE10;
    *(v6 + 56) = &type metadata for SyncPreReqsVerifierStep;
    *(v6 + 64) = &off_283F587B8;
    v10 = swift_allocObject();
    *(v6 + 32) = v10;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = v7;
    *(v10 + 48) = v9;
    sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22BA13CB0;
    sub_22B935B38(v23, v11 + 32);
    *(v6 + 96) = &type metadata for RecordZonesPrepStep;
    *(v6 + 104) = &off_283F55950;
    v12 = swift_allocObject();
    *(v6 + 72) = v12;
    *(v12 + 16) = 0x6D6F44616964654DLL;
    *(v12 + 24) = 0xEB000000006E6961;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = v11;
    *(v12 + 64) = v4;
    *(v6 + 136) = &type metadata for TelemetryCheckStep;
    *(v6 + 144) = &off_283F547F0;
    *(v6 + 112) = 0;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    sub_22B935B38(v23, &v20);
    Handler = type metadata accessor for DuplicateCountReadHandler();
    v14 = swift_allocObject();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_defaultActor_initialize();
    *(v14 + 112) = MEMORY[0x277D84F98];
    *(v6 + 176) = &type metadata for RecordZoneReader;
    *(v6 + 184) = &off_283F55540;
    v15 = swift_allocObject();
    *(v6 + 152) = v15;
    *(v15 + 88) = Handler;
    *(v15 + 96) = &off_283F57118;
    *(v15 + 64) = v14;
    *(v15 + 16) = 1;
    sub_22B92DFEC(&v20, v15 + 24);
    *(v15 + 104) = 0;
    *(v15 + 112) = 1;
    *(v15 + 113) = 0;
    *(v15 + 115) = 1;
    *(v15 + 120) = 0;
    *(v15 + 128) = 0;
    *(v6 + 216) = &type metadata for ReportDiagnosticTelemetryStep;
    *(v6 + 224) = &off_283F53510;
    *(v6 + 192) = 0;
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
    v21 = &type metadata for CloudKitSyncRetryStrategy;
    v22 = &off_283F54398;
    v16 = type metadata accessor for SyncJob();
    v17 = swift_allocObject();
    sub_22B943D3C(&v20, &type metadata for CloudKitSyncRetryStrategy);
    *(v17 + 56) = &type metadata for CloudKitSyncRetryStrategy;
    *(v17 + 64) = &off_283F54398;
    *(v17 + 24) = v4;
    *(v17 + 72) = v24 & 1;
    *(v17 + 80) = v19;
    *(v17 + 88) = v6;
    *(v17 + 96) = 252575744;
    *(v17 + 16) = 1792;
    *(v17 + 100) = 1;
    *(v17 + 104) = 0;
    *(v17 + 112) = 0;
    swift_unknownObjectRetain();
    sub_22B936C4C(&v20);
    a2[3] = v16;
    a2[4] = &off_283F54680;
    swift_unknownObjectRelease();
    *a2 = v17;
  }

  else
  {
    sub_22B96F460();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();
  }

  return sub_22B936C4C(v23);
}

uint64_t sub_22B96C6D8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (qword_28141AE30)
  {
    v3 = qword_28141AE30;
  }

  else
  {
    v3 = [objc_allocWithZone(NoOpErrorAnalyzer) init];
  }

  swift_unknownObjectRetain();
  sub_22B9DB620();
  v5 = v4;
  sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA13410;
  if (qword_28141AE18)
  {
    v7 = qword_28141AE18;
  }

  else
  {
    type metadata accessor for NoOpPreReqVerifier();
    v7 = swift_allocObject();
  }

  v8 = qword_28141AE10;
  *(v6 + 56) = &type metadata for SyncPreReqsVerifierStep;
  *(v6 + 64) = &off_283F587B8;
  v9 = swift_allocObject();
  *(v6 + 32) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = qword_2814158A8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28141ADA8;
  *(v6 + 96) = &type metadata for ImportStragglersStep;
  *(v6 + 104) = &off_283F573F0;
  v12 = swift_allocObject();
  *(v6 + 72) = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = v11;
  v17[3] = &type metadata for CloudKitSyncRetryStrategy;
  v17[4] = &off_283F54398;
  v13 = type metadata accessor for SyncJob();
  v14 = swift_allocObject();
  sub_22B943D3C(v17, &type metadata for CloudKitSyncRetryStrategy);
  *(v14 + 56) = &type metadata for CloudKitSyncRetryStrategy;
  *(v14 + 64) = &off_283F54398;
  *(v14 + 24) = v3;
  *(v14 + 72) = a1 & 1;
  *(v14 + 80) = v5;
  *(v14 + 88) = v6;
  *(v14 + 96) = 185204736;
  *(v14 + 16) = 2304;
  *(v14 + 100) = 0;
  *(v14 + 104) = 0;
  *(v14 + 112) = 0;

  result = sub_22B936C4C(v17);
  a2[3] = v13;
  a2[4] = &off_283F54680;
  *a2 = v14;
  return result;
}

uint64_t sub_22B96C910@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  sub_22B969400(0, v246);
  sub_22B9695D0(0, v245);
  sub_22B96997C(0, v244);
  sub_22B969B54(0, v243);
  sub_22B969D38(0, &unk_283F51458, 0, v242);
  sub_22B969F24(0, v241);
  sub_22B96A10C(0, v240);
  sub_22B96A2E4(0, v239);
  sub_22B96A4BC(0, v238);
  sub_22B96A694(0, v237);
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v12 = [qword_28141AE28 recordStoreFor_];
  if (!v12)
  {
    goto LABEL_44;
  }

  v226 = a3;
  v227 = v11;
  v225 = a2;
  v13 = v12;
  v14 = [qword_28141AE28 deletingStoreFor_];
  if (!v14)
  {
LABEL_43:
    swift_unknownObjectRelease();
LABEL_44:
    sub_22B96F460();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    goto LABEL_45;
  }

  v15 = v14;
  v224 = a4;
  v16 = [qword_28141AE28 recordStoreFor_];
  if (!v16)
  {
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v17 = v16;
  v222 = a6;
  v18 = [qword_28141AE28 deletingStoreFor_];
  if (!v18)
  {
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v19 = v18;
  v223 = [qword_28141AE28 recordStoreFor_];
  if (!v223)
  {
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v221 = [qword_28141AE28 recordStoreFor_];
  if (!v221)
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v220 = [qword_28141AE28 recordStoreFor_];
  if (!v220)
  {
LABEL_38:
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v219 = [qword_28141AE28 recordStoreFor_];
  if (!v219)
  {
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v218 = [qword_28141AE28 deletingStoreFor_];
  if (!v218)
  {
LABEL_36:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v217 = [qword_28141AE28 recordStoreFor_];
  if (!v217)
  {
LABEL_35:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v20 = [qword_28141AE28 deletingStoreFor_];
  if (!v20)
  {
LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v215 = v20;
  v21 = [qword_28141AE28 recordStoreFor_];
  if (!v21)
  {
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v22 = v21;
  v23 = [qword_28141AE28 deletingStoreFor_];
  if (!v23)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v208 = v22;
  v209 = v23;
  if (!qword_28141AE08 || (v207 = qword_28141AE30) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v206 = qword_28141AE08;
  sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22BA153E0;
  if (qword_28141AE18)
  {
    v210 = qword_28141AE18;
  }

  else
  {
    type metadata accessor for NoOpPreReqVerifier();
    v210 = swift_allocObject();
  }

  v27 = qword_28141AE10;
  *(v24 + 56) = &type metadata for SyncPreReqsVerifierStep;
  *(v24 + 64) = &off_283F587B8;
  v28 = swift_allocObject();
  *(v24 + 32) = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = v210;
  *(v28 + 48) = v27;
  *(v24 + 96) = &type metadata for PrepareDatabaseStep;
  *(v24 + 104) = &off_283F53910;
  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0;
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22BA153F0;
  *(v29 + 32) = v13;
  *(v29 + 40) = v17;
  *(v29 + 48) = v219;
  *(v29 + 56) = v22;
  *(v24 + 136) = &type metadata for LocalStateManagementStep;
  *(v24 + 144) = &off_283F52D68;
  v30 = swift_allocObject();
  *(v24 + 112) = v30;
  v30[1] = vdupq_n_s64(1uLL);
  v30[2].i8[0] = 0;
  v30[2].i64[1] = 0;
  v30[3].i64[0] = 0;
  v30[3].i64[1] = v29;
  v30[4].i64[0] = v206;
  sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22BA153B0;
  sub_22B935B38(v246, v31 + 32);
  sub_22B935B38(v245, v31 + 72);
  sub_22B935B38(v244, v31 + 112);
  sub_22B935B38(v242, v31 + 152);
  sub_22B935B38(v240, v31 + 192);
  sub_22B935B38(v239, v31 + 232);
  sub_22B935B38(v237, v31 + 272);
  sub_22B935B38(v243, v31 + 312);
  sub_22B935B38(v241, v31 + 352);
  sub_22B935B38(v238, v31 + 392);
  *(v24 + 176) = &type metadata for RecordZonesPrepStep;
  *(v24 + 184) = &off_283F55950;
  v32 = swift_allocObject();
  *(v24 + 152) = v32;
  *(v32 + 16) = 0x6D6F44616964654DLL;
  *(v32 + 24) = 0xEB000000006E6961;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 48) = 0;
  *(v32 + 56) = v31;
  *(v32 + 64) = v207;
  *(v24 + 216) = &type metadata for PrepareStatisticsStep;
  *(v24 + 224) = &off_283F53228;
  *(v24 + 192) = 0;
  *(v24 + 200) = 0;
  *(v24 + 208) = 0;
  v33 = qword_2814158A8;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_28141ADA8;
  *(v24 + 256) = &type metadata for ImportStep;
  *(v24 + 264) = &off_283F52E58;
  v35 = swift_allocObject();
  *(v24 + 232) = v35;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = &unk_283F51628;
  *(v35 + 48) = v34;
  v211 = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22BA13420;
  sub_22B935B38(v246, &v234);
  swift_retain_n();
  Current = CFAbsoluteTimeGetCurrent();
  type metadata accessor for DuplicateCountReadHandler();
  v201 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v201 + 112) = MEMORY[0x277D84F98];
  *(v36 + 56) = &type metadata for RecordZoneReader;
  *(v36 + 64) = &off_283F55540;
  v38 = swift_allocObject();
  *(v36 + 32) = v38;
  *(v38 + 88) = &type metadata for SyncStoreReadHandler;
  *(v38 + 96) = &off_283F55648;
  v39 = swift_allocObject();
  *(v38 + 64) = v39;
  *(v39 + 16) = Current;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 40) = v201;
  *(v38 + 16) = 1;
  sub_22B92DFEC(&v234, v38 + 24);
  *(v38 + 104) = 0;
  *(v38 + 112) = 1;
  *(v38 + 113) = 256;
  *(v38 + 115) = 1;
  *(v38 + 120) = 0;
  *(v38 + 128) = 0;
  sub_22B935B38(v245, &v234);
  v40 = CFAbsoluteTimeGetCurrent();
  v41 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v41 + 112) = MEMORY[0x277D84F98];
  v216 = v24;
  v42 = v41;
  *(v36 + 96) = &type metadata for RecordZoneReader;
  *(v36 + 104) = &off_283F55540;
  v43 = swift_allocObject();
  *(v36 + 72) = v43;
  *(v43 + 88) = &type metadata for SyncStoreReadHandler;
  *(v43 + 96) = &off_283F55648;
  v44 = swift_allocObject();
  *(v43 + 64) = v44;
  *(v44 + 16) = v40;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 40) = v42;
  *(v43 + 16) = 1;
  sub_22B92DFEC(&v234, v43 + 24);
  *(v43 + 104) = 0;
  *(v43 + 112) = 1;
  *(v43 + 113) = 256;
  *(v43 + 115) = 1;
  *(v43 + 120) = 0;
  *(v43 + 128) = 0;
  *(v36 + 136) = &type metadata for ImportStep;
  *(v36 + 144) = &off_283F52E58;
  v45 = swift_allocObject();
  *(v36 + 112) = v45;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = &unk_283F51650;
  *(v45 + 48) = v211;
  *(v216 + 296) = &type metadata for MultiStepSyncStep;
  *(v216 + 304) = &off_283F54C78;
  v46 = swift_allocObject();
  *(v216 + 272) = v46;
  *(v46 + 16) = 0;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0;
  *(v46 + 24) = v36;
  *(v46 + 48) = 1;
  sub_22B935B38(v242, &v234);
  v47 = CFAbsoluteTimeGetCurrent();
  v202 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v202 + 112) = MEMORY[0x277D84F98];
  *(v216 + 336) = &type metadata for RecordZoneReader;
  *(v216 + 344) = &off_283F55540;
  v48 = swift_allocObject();
  *(v216 + 312) = v48;
  *(v48 + 88) = &type metadata for SyncStoreReadHandler;
  *(v48 + 96) = &off_283F55648;
  v49 = swift_allocObject();
  *(v48 + 64) = v49;
  *(v49 + 16) = v47;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = v202;
  *(v48 + 16) = 1;
  sub_22B92DFEC(&v234, v48 + 24);
  *(v48 + 104) = 0;
  *(v48 + 112) = 1;
  *(v48 + 113) = 256;
  *(v48 + 115) = 1;
  *(v48 + 120) = 0;
  *(v48 + 128) = 0;
  v235 = &type metadata for RecordZoneReader;
  v236 = &off_283F55540;
  v50 = swift_allocObject();
  *&v234 = v50;
  sub_22B935B38(v241, v50 + 24);
  v51 = CFAbsoluteTimeGetCurrent();
  v52 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v52 + 112) = MEMORY[0x277D84F98];
  *(v50 + 88) = &type metadata for SyncStoreReadHandler;
  *(v50 + 96) = &off_283F55648;
  v53 = swift_allocObject();
  *(v50 + 64) = v53;
  *(v53 + 16) = v51;
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 40) = v52;
  *(v50 + 16) = 1;
  *(v50 + 104) = 0;
  *(v50 + 112) = 1;
  *(v50 + 113) = 256;
  *(v50 + 115) = 1;
  *(v50 + 120) = 0;
  *(v50 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 352);
  }

  else
  {
    *(v216 + 376) = &type metadata for NoOpSyncStep;
    *(v216 + 384) = &off_283F54C38;
    *(v216 + 352) = 0;
    *(v216 + 360) = 0;
    *(v216 + 368) = 0;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v239, &v234);
  v54 = CFAbsoluteTimeGetCurrent();
  v55 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v55 + 112) = MEMORY[0x277D84F98];
  *(v216 + 416) = &type metadata for RecordZoneReader;
  *(v216 + 424) = &off_283F55540;
  v56 = swift_allocObject();
  *(v216 + 392) = v56;
  *(v56 + 88) = &type metadata for SyncStoreReadHandler;
  *(v56 + 96) = &off_283F55648;
  v57 = swift_allocObject();
  *(v56 + 64) = v57;
  *(v57 + 16) = v54;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = v55;
  *(v56 + 16) = 1;
  sub_22B92DFEC(&v234, v56 + 24);
  *(v56 + 104) = 0;
  *(v56 + 112) = 1;
  *(v56 + 113) = 256;
  *(v56 + 115) = 1;
  *(v56 + 120) = 0;
  *(v56 + 128) = 0;
  v235 = &type metadata for RecordZoneReader;
  v236 = &off_283F55540;
  v58 = swift_allocObject();
  *&v234 = v58;
  sub_22B935B38(v238, v58 + 24);
  v59 = CFAbsoluteTimeGetCurrent();
  v60 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v60 + 112) = MEMORY[0x277D84F98];
  *(v58 + 88) = &type metadata for SyncStoreReadHandler;
  *(v58 + 96) = &off_283F55648;
  v61 = swift_allocObject();
  *(v58 + 64) = v61;
  *(v61 + 16) = v59;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 40) = v60;
  *(v58 + 16) = 1;
  *(v58 + 104) = 0;
  *(v58 + 112) = 1;
  *(v58 + 113) = 256;
  *(v58 + 115) = 1;
  *(v58 + 120) = 0;
  *(v58 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 432);
  }

  else
  {
    *(v216 + 456) = &type metadata for NoOpSyncStep;
    *(v216 + 464) = &off_283F54C38;
    *(v216 + 432) = 0;
    *(v216 + 440) = 0;
    *(v216 + 448) = 0;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v237, &v234);
  v62 = CFAbsoluteTimeGetCurrent();
  v63 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v63 + 112) = MEMORY[0x277D84F98];
  *(v216 + 496) = &type metadata for RecordZoneReader;
  *(v216 + 504) = &off_283F55540;
  v64 = swift_allocObject();
  *(v216 + 472) = v64;
  *(v64 + 88) = &type metadata for SyncStoreReadHandler;
  *(v64 + 96) = &off_283F55648;
  v65 = swift_allocObject();
  *(v64 + 64) = v65;
  *(v65 + 16) = v62;
  *(v65 + 24) = 0;
  *(v65 + 32) = 0;
  *(v65 + 40) = v63;
  *(v64 + 16) = 1;
  sub_22B92DFEC(&v234, v64 + 24);
  *(v64 + 104) = 0;
  *(v64 + 112) = 1;
  *(v64 + 113) = 256;
  *(v64 + 115) = 1;
  *(v64 + 120) = 0;
  *(v64 + 128) = 0;
  if (v227 < 2 && v227)
  {
  }

  else
  {
    v66 = sub_22BA10C6C();

    if ((v66 & 1) == 0)
    {
      *(v216 + 536) = &type metadata for NoOpSyncStep;
      *(v216 + 544) = &off_283F54C38;
      *(v216 + 512) = 0;
      *(v216 + 520) = 0u;
      goto LABEL_59;
    }
  }

  *(v216 + 536) = &type metadata for ImportStragglersStep;
  *(v216 + 544) = &off_283F573F0;
  v67 = swift_allocObject();
  *(v216 + 512) = v67;
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 40) = v211;

LABEL_59:
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_22BA13420;
  sub_22B935B38(v244, &v234);
  v69 = CFAbsoluteTimeGetCurrent();
  v70 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v70 + 112) = MEMORY[0x277D84F98];
  v232 = &type metadata for SyncStoreReadHandler;
  v233 = &off_283F55648;
  v71 = swift_allocObject();
  *&v231 = v71;
  *(v71 + 16) = v69;
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 40) = v70;
  v72 = sub_22BA0FFCC();
  v203 = IMBagIntValueWithDefault();

  *(v68 + 56) = &type metadata for RecordZoneReader;
  *(v68 + 64) = &off_283F55540;
  v73 = swift_allocObject();
  *(v68 + 32) = v73;
  *(v73 + 16) = 0;
  sub_22B92DFEC(&v234, v73 + 24);
  sub_22B92DFEC(&v231, v73 + 64);
  *(v73 + 104) = v203;
  *(v73 + 112) = 0;
  *(v73 + 113) = 256;
  *(v73 + 115) = 1;
  *(v73 + 120) = 0;
  *(v73 + 128) = 0;
  v235 = &type metadata for RecordZoneReader;
  v236 = &off_283F55540;
  v74 = swift_allocObject();
  *&v234 = v74;
  sub_22B935B38(v243, v74 + 24);
  v75 = CFAbsoluteTimeGetCurrent();
  v76 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v76 + 112) = MEMORY[0x277D84F98];
  *(v74 + 88) = &type metadata for SyncStoreReadHandler;
  *(v74 + 96) = &off_283F55648;
  v77 = swift_allocObject();
  *(v74 + 64) = v77;
  *(v77 + 16) = v75;
  *(v77 + 24) = 0;
  *(v77 + 32) = 0;
  *(v77 + 40) = v76;
  v78 = sub_22BA0FFCC();
  v204 = IMBagIntValueWithDefault();

  *(v74 + 16) = 0;
  *(v74 + 104) = v204;
  *(v74 + 112) = 0;
  *(v74 + 113) = 256;
  *(v74 + 115) = 1;
  *(v74 + 120) = 0;
  *(v74 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v68 + 72);
  }

  else
  {
    *(v68 + 96) = &type metadata for NoOpSyncStep;
    *(v68 + 104) = &off_283F54C38;
    *(v68 + 72) = 0;
    *(v68 + 80) = 0;
    *(v68 + 88) = 0;
  }

  sub_22B936C4C(&v234);
  *(v68 + 136) = &type metadata for ImportStep;
  *(v68 + 144) = &off_283F52E58;
  v79 = swift_allocObject();
  *(v68 + 112) = v79;
  *(v79 + 16) = 0;
  *(v79 + 24) = 0u;
  *(v79 + 40) = &unk_283F51678;
  *(v79 + 48) = v211;
  *(v216 + 576) = &type metadata for MultiStepSyncStep;
  *(v216 + 584) = &off_283F54C78;
  v80 = swift_allocObject();
  *(v216 + 552) = v80;
  *(v80 + 16) = 1;
  *(v80 + 24) = v68;
  *(v80 + 32) = 0u;
  *(v80 + 48) = 257;
  *(v216 + 616) = &type metadata for ImportStep;
  *(v216 + 624) = &off_283F52E58;
  v81 = swift_allocObject();
  *(v216 + 592) = v81;
  *(v81 + 16) = 0;
  *(v81 + 24) = 0u;
  *(v81 + 40) = &unk_283F516A0;
  *(v81 + 48) = v211;
  sub_22B935B38(v240, &v234);
  swift_retain_n();
  v82 = CFAbsoluteTimeGetCurrent();
  v83 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v83 + 112) = MEMORY[0x277D84F98];
  *(v216 + 656) = &type metadata for RecordZoneReader;
  *(v216 + 664) = &off_283F55540;
  v84 = swift_allocObject();
  *(v216 + 632) = v84;
  *(v84 + 88) = &type metadata for SyncStoreReadHandler;
  *(v84 + 96) = &off_283F55648;
  v85 = swift_allocObject();
  *(v84 + 64) = v85;
  *(v85 + 16) = v82;
  *(v85 + 24) = 0;
  *(v85 + 32) = 0;
  *(v85 + 40) = v83;
  *(v84 + 16) = 1;
  sub_22B92DFEC(&v234, v84 + 24);
  *(v84 + 104) = 0;
  *(v84 + 112) = 1;
  *(v84 + 113) = 256;
  *(v84 + 115) = 1;
  *(v84 + 120) = 0u;
  *(v216 + 696) = &type metadata for ImportStep;
  *(v216 + 704) = &off_283F52E58;
  v86 = swift_allocObject();
  *(v216 + 672) = v86;
  *(v86 + 16) = 0;
  *(v86 + 24) = 0u;
  *(v86 + 40) = &unk_283F516C8;
  *(v86 + 48) = v211;
  *(v216 + 736) = &type metadata for PrepareStatisticsStep;
  *(v216 + 744) = &off_283F53228;
  *(v216 + 712) = 0;
  *(v216 + 720) = 0u;
  sub_22B935B38(v246, &v234);
  v87 = type metadata accessor for LiveDataDeleteHandler();
  v88 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v89 = MEMORY[0x277D84F90];
  v88[15] = MEMORY[0x277D84F90];
  v88[16] = sub_22B9BBDF0(v89);
  v88[14] = v15;
  v232 = v87;
  v233 = &off_283F54440;
  v212 = v87;
  *&v231 = v88;
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v90 = sub_22B9374C0(8u, 0);
  if (v91)
  {
    v92 = sub_22BA0FFCC();
    v93 = IMBagIntValueWithDefault();
  }

  else
  {
    v93 = v90;
  }

  *(v216 + 776) = &type metadata for RecordZoneDeleter;
  *(v216 + 784) = &off_283F54F28;
  v94 = swift_allocObject();
  *(v216 + 752) = v94;
  sub_22B92DFEC(&v234, v94 + 16);
  sub_22B92DFEC(&v231, v94 + 56);
  *(v94 + 96) = 1;
  *(v94 + 104) = v93;
  *(v94 + 112) = 0;
  *(v94 + 120) = 0;
  *(v94 + 128) = 0;
  sub_22B935B38(v244, &v234);
  v95 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v96 = MEMORY[0x277D84F90];
  v95[15] = MEMORY[0x277D84F90];
  v205 = v95;
  v95[16] = sub_22B9BBDF0(v96);
  v95[14] = v19;
  *(v216 + 816) = &type metadata for RecordZoneDeleter;
  *(v216 + 824) = &off_283F54F28;
  v97 = swift_allocObject();
  *(v216 + 792) = v97;
  *(v97 + 80) = v212;
  *(v97 + 88) = &off_283F54440;
  *(v97 + 56) = v205;
  sub_22B92DFEC(&v234, v97 + 16);
  *(v97 + 96) = 1;
  *(v97 + 104) = 100;
  *(v97 + 112) = 0;
  *(v97 + 120) = 0;
  *(v97 + 128) = 0;
  sub_22B935B38(v242, &v234);
  v98 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v99 = MEMORY[0x277D84F90];
  v98[15] = MEMORY[0x277D84F90];
  v98[16] = sub_22B9BBDF0(v99);
  v98[14] = v218;
  *(v216 + 856) = &type metadata for RecordZoneDeleter;
  *(v216 + 864) = &off_283F54F28;
  v100 = swift_allocObject();
  *(v216 + 832) = v100;
  *(v100 + 80) = v212;
  *(v100 + 88) = &off_283F54440;
  *(v100 + 56) = v98;
  sub_22B92DFEC(&v234, v100 + 16);
  *(v100 + 96) = 1;
  *(v100 + 104) = 100;
  *(v100 + 112) = 0;
  *(v100 + 120) = 0;
  *(v100 + 128) = 0;
  sub_22B935B38(v239, &v234);
  v101 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v102 = MEMORY[0x277D84F90];
  v101[15] = MEMORY[0x277D84F90];
  v101[16] = sub_22B9BBDF0(v102);
  v101[14] = v215;
  *(v216 + 896) = &type metadata for RecordZoneDeleter;
  *(v216 + 904) = &off_283F54F28;
  v103 = swift_allocObject();
  *(v216 + 872) = v103;
  *(v103 + 80) = v212;
  *(v103 + 88) = &off_283F54440;
  *(v103 + 56) = v101;
  sub_22B92DFEC(&v234, v103 + 16);
  *(v103 + 96) = 1;
  *(v103 + 104) = 100;
  *(v103 + 112) = 0;
  *(v103 + 120) = 0;
  *(v103 + 128) = 0;
  sub_22B935B38(v237, &v234);
  v104 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v105 = MEMORY[0x277D84F90];
  v104[15] = MEMORY[0x277D84F90];
  v104[16] = sub_22B9BBDF0(v105);
  v104[14] = v209;
  v232 = v212;
  v233 = &off_283F54440;
  *&v231 = v104;
  v106 = sub_22B9374C0(8u, 0);
  if (v107)
  {
    v108 = sub_22BA0FFCC();
    v109 = IMBagIntValueWithDefault();
  }

  else
  {
    v109 = v106;
  }

  *(v216 + 936) = &type metadata for RecordZoneDeleter;
  *(v216 + 944) = &off_283F54F28;
  v110 = swift_allocObject();
  *(v216 + 912) = v110;
  sub_22B92DFEC(&v234, v110 + 16);
  sub_22B92DFEC(&v231, v110 + 56);
  *(v110 + 96) = 1;
  *(v110 + 104) = v109;
  *(v110 + 112) = 0;
  *(v110 + 120) = 0;
  *(v110 + 128) = 0;
  sub_22B935B38(v245, &v234);
  v111 = type metadata accessor for LiveDataWriteHandler();
  v112 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v113 = MEMORY[0x277D84F90];
  v112[15] = MEMORY[0x277D84F90];
  v112[16] = sub_22B9BBDF0(v113);
  v112[14] = v13;
  v232 = v111;
  v233 = &off_283F57E28;
  v213 = v111;
  *&v231 = v112;
  v114 = sub_22B9374C0(7u, 0);
  if (v115)
  {
    v116 = sub_22BA0FFCC();
    v117 = IMBagIntValueWithDefault();
  }

  else
  {
    v117 = v114;
  }

  *(v216 + 976) = &type metadata for RecordZoneWriter;
  *(v216 + 984) = &off_283F53108;
  v118 = swift_allocObject();
  *(v216 + 952) = v118;
  *(v118 + 16) = 2;
  *(v118 + 24) = 1;
  sub_22B92DFEC(&v234, v118 + 40);
  sub_22B92DFEC(&v231, v118 + 80);
  *(v118 + 120) = 0;
  *(v118 + 128) = 0;
  *(v118 + 32) = v117;
  sub_22B935B38(v246, &v234);
  v119 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v120 = MEMORY[0x277D84F90];
  v119[15] = MEMORY[0x277D84F90];
  v119[16] = sub_22B9BBDF0(v120);
  v119[14] = v13;
  v232 = v111;
  v233 = &off_283F57E28;
  *&v231 = v119;
  v121 = sub_22B9374C0(7u, 0);
  if (v122)
  {
    v123 = sub_22BA0FFCC();
    v124 = IMBagIntValueWithDefault();
  }

  else
  {
    v124 = v121;
  }

  *(v216 + 1016) = &type metadata for RecordZoneWriter;
  *(v216 + 1024) = &off_283F53108;
  v125 = swift_allocObject();
  *(v216 + 992) = v125;
  *(v125 + 16) = 1;
  *(v125 + 24) = 1;
  sub_22B92DFEC(&v234, v125 + 40);
  sub_22B92DFEC(&v231, v125 + 80);
  *(v125 + 120) = 0;
  *(v125 + 128) = 0;
  *(v125 + 32) = v124;
  sub_22B935B38(v244, &v234);
  v126 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v127 = MEMORY[0x277D84F90];
  v126[15] = MEMORY[0x277D84F90];
  v126[16] = sub_22B9BBDF0(v127);
  v126[14] = v17;
  v232 = v111;
  v233 = &off_283F57E28;
  *&v231 = v126;
  v128 = sub_22B9374C0(7u, 0);
  if (v129)
  {
    v130 = sub_22BA0FFCC();
    v131 = IMBagIntValueWithDefault();
  }

  else
  {
    v131 = v128;
  }

  *(v216 + 1056) = &type metadata for RecordZoneWriter;
  *(v216 + 1064) = &off_283F53108;
  v132 = swift_allocObject();
  *(v216 + 1032) = v132;
  *(v132 + 16) = 3;
  *(v132 + 24) = 1;
  sub_22B92DFEC(&v234, v132 + 40);
  sub_22B92DFEC(&v231, v132 + 80);
  *(v132 + 120) = 0;
  *(v132 + 128) = 0;
  *(v132 + 32) = v131;
  sub_22B935B38(v243, &v231);
  v133 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v134 = MEMORY[0x277D84F90];
  v133[15] = MEMORY[0x277D84F90];
  v133[16] = sub_22B9BBDF0(v134);
  v133[14] = v17;
  v229 = v111;
  v230 = &off_283F57E28;
  *&v228 = v133;
  v135 = sub_22B9374C0(7u, 0);
  if (v136)
  {
    v137 = sub_22BA0FFCC();
    v138 = IMBagIntValueWithDefault();
  }

  else
  {
    v138 = v135;
  }

  v235 = &type metadata for RecordZoneWriter;
  v236 = &off_283F53108;
  v139 = swift_allocObject();
  *&v234 = v139;
  *(v139 + 16) = 4;
  *(v139 + 24) = 1;
  sub_22B92DFEC(&v231, v139 + 40);
  sub_22B92DFEC(&v228, v139 + 80);
  *(v139 + 120) = 0;
  *(v139 + 128) = 0;
  *(v139 + 32) = v138;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 1072);
  }

  else
  {
    *(v216 + 1096) = &type metadata for NoOpSyncStep;
    *(v216 + 1104) = &off_283F54C38;
    *(v216 + 1072) = 0;
    *(v216 + 1080) = 0u;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v240, &v234);
  v140 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v141 = MEMORY[0x277D84F90];
  v140[15] = MEMORY[0x277D84F90];
  v140[16] = sub_22B9BBDF0(v141);
  v140[14] = v223;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v140;
  v142 = sub_22B9374C0(7u, 0);
  if (v143)
  {
    v144 = sub_22BA0FFCC();
    v145 = IMBagIntValueWithDefault();

    v146 = v216;
  }

  else
  {
    v146 = v216;
    v145 = v142;
  }

  v146[142] = &type metadata for RecordZoneWriter;
  v146[143] = &off_283F53108;
  v147 = swift_allocObject();
  v146[139] = v147;
  *(v147 + 16) = 0;
  *(v147 + 24) = 1;
  sub_22B92DFEC(&v234, v147 + 40);
  sub_22B92DFEC(&v231, v147 + 80);
  *(v147 + 120) = 0;
  *(v147 + 128) = 0;
  *(v147 + 32) = v145;
  sub_22B935B38(v240, &v234);
  v148 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v149 = MEMORY[0x277D84F90];
  v148[15] = MEMORY[0x277D84F90];
  v148[16] = sub_22B9BBDF0(v149);
  v148[14] = v221;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v148;
  v150 = sub_22B9374C0(7u, 0);
  if (v151)
  {
    v152 = sub_22BA0FFCC();
    v153 = IMBagIntValueWithDefault();
  }

  else
  {
    v153 = v150;
  }

  *(v216 + 1176) = &type metadata for RecordZoneWriter;
  *(v216 + 1184) = &off_283F53108;
  v154 = swift_allocObject();
  *(v216 + 1152) = v154;
  *(v154 + 16) = 0;
  *(v154 + 24) = 1;
  sub_22B92DFEC(&v234, v154 + 40);
  sub_22B92DFEC(&v231, v154 + 80);
  *(v154 + 120) = 0;
  *(v154 + 128) = 0;
  *(v154 + 32) = v153;
  sub_22B935B38(v240, &v234);
  v155 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v156 = MEMORY[0x277D84F90];
  v155[15] = MEMORY[0x277D84F90];
  v155[16] = sub_22B9BBDF0(v156);
  v155[14] = v220;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v155;
  v157 = sub_22B9374C0(7u, 0);
  if (v158)
  {
    v159 = sub_22BA0FFCC();
    v160 = IMBagIntValueWithDefault();
  }

  else
  {
    v160 = v157;
  }

  *(v216 + 1216) = &type metadata for RecordZoneWriter;
  *(v216 + 1224) = &off_283F53108;
  v161 = swift_allocObject();
  *(v216 + 1192) = v161;
  *(v161 + 16) = 0;
  *(v161 + 24) = 1;
  sub_22B92DFEC(&v234, v161 + 40);
  sub_22B92DFEC(&v231, v161 + 80);
  *(v161 + 120) = 0;
  *(v161 + 128) = 0;
  *(v161 + 32) = v160;
  sub_22B935B38(v239, &v234);
  v162 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v163 = MEMORY[0x277D84F90];
  v162[15] = MEMORY[0x277D84F90];
  v162[16] = sub_22B9BBDF0(v163);
  v162[14] = v217;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v162;
  v164 = sub_22B9374C0(7u, 0);
  if (v165)
  {
    v166 = sub_22BA0FFCC();
    v167 = IMBagIntValueWithDefault();
  }

  else
  {
    v167 = v164;
  }

  *(v216 + 1256) = &type metadata for RecordZoneWriter;
  *(v216 + 1264) = &off_283F53108;
  v168 = swift_allocObject();
  *(v216 + 1232) = v168;
  *(v168 + 16) = 3;
  *(v168 + 24) = 1;
  sub_22B92DFEC(&v234, v168 + 40);
  sub_22B92DFEC(&v231, v168 + 80);
  *(v168 + 120) = 0;
  *(v168 + 128) = 0;
  *(v168 + 32) = v167;
  sub_22B935B38(v238, &v231);
  v169 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v170 = MEMORY[0x277D84F90];
  v169[15] = MEMORY[0x277D84F90];
  v169[16] = sub_22B9BBDF0(v170);
  v169[14] = v217;
  v229 = v213;
  v230 = &off_283F57E28;
  *&v228 = v169;
  v171 = sub_22B9374C0(7u, 0);
  if (v172)
  {
    v173 = sub_22BA0FFCC();
    v174 = IMBagIntValueWithDefault();
  }

  else
  {
    v174 = v171;
  }

  v235 = &type metadata for RecordZoneWriter;
  v236 = &off_283F53108;
  v175 = swift_allocObject();
  *&v234 = v175;
  *(v175 + 16) = 4;
  *(v175 + 24) = 1;
  sub_22B92DFEC(&v231, v175 + 40);
  sub_22B92DFEC(&v228, v175 + 80);
  *(v175 + 120) = 0;
  *(v175 + 128) = 0;
  *(v175 + 32) = v174;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 1272);
  }

  else
  {
    *(v216 + 1296) = &type metadata for NoOpSyncStep;
    *(v216 + 1304) = &off_283F54C38;
    *(v216 + 1272) = 0;
    *(v216 + 1280) = 0u;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v242, &v234);
  v176 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v177 = MEMORY[0x277D84F90];
  v176[15] = MEMORY[0x277D84F90];
  v176[16] = sub_22B9BBDF0(v177);
  v176[14] = v219;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v176;
  v178 = sub_22B9374C0(7u, 0);
  if (v179)
  {
    v180 = sub_22BA0FFCC();
    v181 = IMBagIntValueWithDefault();

    v182 = v216;
  }

  else
  {
    v182 = v216;
    v181 = v178;
  }

  v182[167] = &type metadata for RecordZoneWriter;
  v182[168] = &off_283F53108;
  v183 = swift_allocObject();
  v182[164] = v183;
  *(v183 + 16) = 3;
  *(v183 + 24) = 1;
  sub_22B92DFEC(&v234, v183 + 40);
  sub_22B92DFEC(&v231, v183 + 80);
  *(v183 + 120) = 0;
  *(v183 + 128) = 0;
  *(v183 + 32) = v181;
  sub_22B935B38(v241, &v231);
  v184 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v185 = MEMORY[0x277D84F90];
  v184[15] = MEMORY[0x277D84F90];
  v184[16] = sub_22B9BBDF0(v185);
  v184[14] = v219;
  v229 = v213;
  v230 = &off_283F57E28;
  *&v228 = v184;
  v186 = sub_22B9374C0(7u, 0);
  if (v187)
  {
    v188 = sub_22BA0FFCC();
    v189 = IMBagIntValueWithDefault();
  }

  else
  {
    v189 = v186;
  }

  v235 = &type metadata for RecordZoneWriter;
  v236 = &off_283F53108;
  v190 = swift_allocObject();
  *&v234 = v190;
  *(v190 + 16) = 4;
  *(v190 + 24) = 1;
  sub_22B92DFEC(&v231, v190 + 40);
  sub_22B92DFEC(&v228, v190 + 80);
  *(v190 + 120) = 0;
  *(v190 + 128) = 0;
  *(v190 + 32) = v189;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 1352);
  }

  else
  {
    *(v216 + 1376) = &type metadata for NoOpSyncStep;
    *(v216 + 1384) = &off_283F54C38;
    *(v216 + 1352) = 0;
    *(v216 + 1360) = 0u;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v237, &v234);
  v191 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v192 = MEMORY[0x277D84F90];
  v191[15] = MEMORY[0x277D84F90];
  v191[16] = sub_22B9BBDF0(v192);
  v191[14] = v208;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v191;
  v193 = sub_22B9374C0(7u, 0);
  if (v194)
  {
    v195 = sub_22BA0FFCC();
    v196 = IMBagIntValueWithDefault();
  }

  else
  {
    v196 = v193;
  }

  *(v216 + 1416) = &type metadata for RecordZoneWriter;
  *(v216 + 1424) = &off_283F53108;
  v197 = swift_allocObject();
  *(v216 + 1392) = v197;
  *(v197 + 16) = 0;
  *(v197 + 24) = 1;
  sub_22B92DFEC(&v234, v197 + 40);
  sub_22B92DFEC(&v231, v197 + 80);
  *(v197 + 120) = 0u;
  *(v197 + 32) = v196;
  *(v216 + 1456) = &type metadata for ReportRecordFailuresTelemetryStep;
  *(v216 + 1464) = &off_283F57998;
  *(v216 + 1432) = 0;
  *(v216 + 1440) = 0u;
  v198 = qword_28141AE10;
  if (!qword_28141AE10)
  {
    v198 = [objc_allocWithZone(NoOpBackupController) init];
  }

  *(v216 + 1496) = &type metadata for SyncCompleteStep;
  *(v216 + 1504) = &off_283F563A0;
  v199 = swift_allocObject();
  *(v216 + 1472) = v199;
  *(v199 + 16) = 0;
  *(v199 + 24) = 0;
  *(v199 + 32) = 0;
  *(v199 + 40) = v198;
  v235 = &type metadata for CloudKitSyncRetryStrategy;
  v236 = &off_283F54398;
  v214 = type metadata accessor for SyncJob();
  v200 = swift_allocObject();
  sub_22B943D3C(&v234, &type metadata for CloudKitSyncRetryStrategy);
  *(v200 + 56) = &type metadata for CloudKitSyncRetryStrategy;
  *(v200 + 64) = &off_283F54398;
  *(v200 + 17) = v227;
  *(v200 + 24) = v207;
  *(v200 + 72) = a5 & 1;
  *(v200 + 80) = v224;
  *(v200 + 88) = v216;
  *(v200 + 96) = 0;
  *(v200 + 98) = v225;
  *(v200 + 99) = v226;
  *(v200 + 16) = 0;
  *(v200 + 100) = 1;
  *(v200 + 104) = 0;
  *(v200 + 112) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22B936C4C(&v234);
  v222[3] = v214;
  v222[4] = &off_283F54680;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *v222 = v200;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_45:
  sub_22B936C4C(v237);
  sub_22B936C4C(v238);
  sub_22B936C4C(v239);
  sub_22B936C4C(v240);
  sub_22B936C4C(v241);
  sub_22B936C4C(v242);
  sub_22B936C4C(v243);
  sub_22B936C4C(v244);
  sub_22B936C4C(v245);
  return sub_22B936C4C(v246);
}

unint64_t sub_22B96F460()
{
  result = qword_27D8D5188;
  if (!qword_27D8D5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5188);
  }

  return result;
}

id sub_22B96F4B4()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    v3 = [objc_opt_self() sharedFeatureFlags];
    v4 = [v3 isRelayChatBotEnabled];

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (v5 != 1 || v2 > 6)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = 0x56u >> v2;
    }

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22B96F578()
{
  v0 = sub_22BA0FD8C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  if (qword_28141AE08)
  {
    v7 = [swift_unknownObjectRetain() lastFullSyncDate];
    if (!v7)
    {
      swift_unknownObjectRelease();
      return;
    }

    v8 = v7;
    sub_22BA0FD5C();

    (*(v1 + 32))(v6, v4, v0);
    sub_22BA0FD3C();
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        v10 = v9;
        v11 = v9;
        if (v9 < 0)
        {
          v11 = -v10;
          if (__OFSUB__(0, v10))
          {
            goto LABEL_18;
          }
        }

        v12 = *MEMORY[0x277D86298];
        swift_unknownObjectRelease();
        (*(v1 + 8))(v6, v0);
        if (v11 >= v12 || !__OFADD__(v12, v10))
        {
          return;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_22B96F788(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0x79616C6564206F6ELL;
  }

  if (a1 > 59)
  {
    if (a1 > 0xE0F)
    {
      v6 = sub_22BA10C1C();
      v4 = 1936877600;
      v5 = 0xE400000000000000;
      goto LABEL_9;
    }

    v6 = sub_22BA10C1C();
    v3 = 1852402976;
  }

  else
  {
    v6 = sub_22BA10C1C();
    v3 = 1667592992;
  }

  v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
  v5 = 0xE500000000000000;
LABEL_9:
  MEMORY[0x231899730](v4, v5);
  return v6;
}

uint64_t sub_22B96F8F8(void (*a1)(void), void (*a2)(void))
{
  if (v2[3])
  {
  }

  a1(v2[5]);
  a2(v2[6]);

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t sub_22B96F968(void (*a1)(void))
{
  if (*(v1 + 24))
  {
  }

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t getEnumTagSinglePayload for CloudSyncFactoryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudSyncFactoryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B96FB14()
{
  result = qword_27D8D51A8;
  if (!qword_27D8D51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51A8);
  }

  return result;
}

id CloudSyncSummary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncSummary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncSummary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_22B96FCBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B96FCD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B96FD18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B96FD84()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B96FE38(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B96FED8(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B96FF88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B970360(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B96FFB8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x4C5255656C6966;
  v4 = 0xE900000000000065;
  v5 = 0x727574616E676973;
  if (*v1 != 2)
  {
    v5 = 1684632949;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1702521203;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22B970028()
{
  v1 = 0x4C5255656C6966;
  v2 = 0x727574616E676973;
  if (*v0 != 2)
  {
    v2 = 1684632949;
  }

  if (*v0)
  {
    v1 = 1702521203;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22B970094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B970360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B9700C8(uint64_t a1)
{
  v2 = sub_22B970680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B970104(uint64_t a1)
{
  v2 = sub_22B970680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B970140(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D51D0, &qword_22BA155E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22B9358B4(a1, a1[3]);
  sub_22B970680();
  sub_22BA10D9C();
  v8[15] = 0;
  sub_22BA10BCC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_22BA10B9C();
  v8[13] = 2;
  sub_22BA10B7C();
  v8[12] = 3;
  sub_22BA10B7C();
  return (*(v4 + 8))(v6, v3);
}

double sub_22B970304@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_22B9703AC(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_22B970360(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B9703AC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D51C8, &qword_22BA155D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B970680();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_22BA10B1C();
  v11 = v10;
  v12 = v9;
  LOBYTE(v34[0]) = 1;
  v28 = sub_22BA10AEC();
  v40 = v13 & 1;
  LOBYTE(v34[0]) = 2;
  v14 = sub_22BA10ACC();
  v29 = v15;
  v27 = v14;
  v41 = 3;
  v16 = sub_22BA10ACC();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v26 = v12;
  *&v30 = v12;
  *(&v30 + 1) = v11;
  v20 = v27;
  *&v31 = v28;
  LOBYTE(v12) = v40;
  BYTE8(v31) = v40;
  v21 = v29;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  *&v33 = v16;
  *(&v33 + 1) = v19;
  sub_22B9706D4(&v30, v34);
  sub_22B936C4C(a1);
  v34[0] = v26;
  v34[1] = v11;
  v34[2] = v28;
  v35 = v12;
  v36 = v20;
  v37 = v21;
  v38 = v16;
  v39 = v19;
  result = sub_22B97070C(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

unint64_t sub_22B970680()
{
  result = qword_281415A00[0];
  if (!qword_281415A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281415A00);
  }

  return result;
}

unint64_t sub_22B970750()
{
  result = qword_27D8D51D8;
  if (!qword_27D8D51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51D8);
  }

  return result;
}

unint64_t sub_22B9707A8()
{
  result = qword_2814159F0;
  if (!qword_2814159F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159F0);
  }

  return result;
}

unint64_t sub_22B970800()
{
  result = qword_2814159F8;
  if (!qword_2814159F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159F8);
  }

  return result;
}

uint64_t sub_22B970854(unint64_t a1, unint64_t a2, char a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_22B968100(0, v5 & ~(v5 >> 63), 0);
    v9 = a1;
    if (v4)
    {
      if (v4 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v32 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v45;
    v30 = v5;
    v31 = v4;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
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
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v32 + v11;
      if (v4 == 2)
      {
        if (v13 < *(v9 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(v9 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_22BA0FA2C();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_22BA0FA4C();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = v9;
          v34 = BYTE2(v9);
          v35 = BYTE3(v9);
          v36 = v28;
          v37 = BYTE5(v9);
          v38 = BYTE6(v9);
          v39 = HIBYTE(v9);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v20 = *(&v33 + v32 + v11);
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_22BA0FA2C();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_22BA0FA4C();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = a1;
LABEL_36:
      sub_22B9349C8(&qword_27D8D4F78, &qword_22BA15760);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_22BA13CB0;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v4 = sub_22BA1001C();
      v23 = v22;

      v45 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22B968100((v24 > 1), v25 + 1, 1);
        v9 = a1;
        v8 = v45;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v4;
      *(v26 + 40) = v23;
      ++v11;
      v5 = v30;
      LODWORD(v4) = v31;
    }

    while (v12 != v30);
  }

  return v8;
}

uint64_t sub_22B970BF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v88 = a4;
  v89[2] = *MEMORY[0x277D85DE8];
  v9 = sub_22BA0F98C();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BA0FC4C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v86 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = v78 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v82 = v78 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v78 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v78 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v78 - v25;
  v27 = [a1 fileURL];
  if (v27)
  {
    v28 = v27;
    sub_22BA0FC0C();

    v29 = *(v12 + 32);
    v87 = v26;
    v29(v26, v24, v11);
    v30 = [a1 UUID];
    v31 = v11;
    if (v30)
    {
      v79 = v29;
      v32 = v30;
      v33 = sub_22BA0FFFC();
      v35 = v34;

      v36 = [a1 signature];
      if (v36)
      {
        v78[0] = v33;
        v78[1] = a1;
        v80 = v31;
        v37 = v36;
        v38 = sub_22BA0FCAC();
        v86 = v39;

        sub_22B971A60();
        v56 = v35;
        v57 = v12;
        v58 = *sub_22B9358B4(v5, v5[3]);
        LOBYTE(v89[0]) = 0;
        sub_22BA0FB7C();
        v59 = sub_22BA0FFCC();

        v60 = [v58 fileExistsAtPath:v59 isDirectory:v89];

        if (v60 && (v89[0] & 1) != 0)
        {
          v84 = v38;
          v61 = v5;
          v62 = v57;
        }

        else
        {
          v61 = v5;
          v63 = sub_22B9358B4(v5, v5[3]);
          sub_22B964F88(v21, 1, *v63);
          v62 = v57;
          v84 = v38;
        }

        v64 = v56;
        v65 = v80;
        (*(v62 + 8))(v21, v80);
        v66 = v86;
        v67 = v82;
        sub_22B971A60();
        v85 = v62;
        v89[0] = sub_22B970854(v84, v66, 0);
        sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
        sub_22B9486FC();
        v68 = sub_22BA0FFAC();
        v70 = v69;

        v89[0] = v78[0];
        v89[1] = v64;
        MEMORY[0x231899730](46, 0xE100000000000000);
        MEMORY[0x231899730](v68, v70);

        v71 = v81;
        sub_22BA0FBDC();

        v72 = sub_22B9358B4(v61, v61[3]);
        v73 = v87;
        sub_22B964EA4(v87, v71, *v72);
        (*(v85 + 8))(v67, v65);
        sub_22B9359BC(v84, v86);
        v74 = v88;
        v75 = v73;
        v76 = v79;
        v79(v88, v75, v65);
        v77 = type metadata accessor for SyncFiles.FileMove(0);
        v76(v74 + *(v77 + 20), v71, v65);
        sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
        return swift_storeEnumTagMultiPayload();
      }
    }

    v52 = sub_22B9358B4(v5, v5[3]);
    v53 = v87;
    sub_22B964DE0(v87, *v52);
    sub_22B9729CC();
    v54 = swift_allocError();
    *v55 = 1;
    (*(v12 + 8))(v53, v31);
    *v88 = v54;
    sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
    return swift_storeEnumTagMultiPayload();
  }

  v40 = a3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v41 = sub_22BA0FEFC();
  sub_22B936CA8(v41, qword_28141AD40);

  v42 = a1;
  v43 = sub_22BA0FEDC();
  v44 = sub_22BA1044C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v89[0] = v47;
    *v45 = 136315394;
    *(v45 + 4) = sub_22B99153C(a2, v40, v89);
    *(v45 + 12) = 2112;
    *(v45 + 14) = v42;
    *v46 = v42;
    v48 = v42;
    _os_log_impl(&dword_22B92A000, v43, v44, "Error, we failed to get the fileURL for with key %s for %@", v45, 0x16u);
    sub_22B95DEF0(v46);
    MEMORY[0x23189ADD0](v46, -1, -1);
    sub_22B936C4C(v47);
    MEMORY[0x23189ADD0](v47, -1, -1);
    MEMORY[0x23189ADD0](v45, -1, -1);
  }

  sub_22B9729CC();
  v49 = swift_allocError();
  *v50 = 0;
  *v88 = v49;
  sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22B971A60()
{
  v0 = sub_22BA0FC4C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v10 = 1668184435;
  v11 = 0xE400000000000000;
  sub_22B936ACC();
  sub_22BA1076C();
  sub_22BA0FBCC();

  v10 = 0x737465737361;
  v11 = 0xE600000000000000;
  sub_22BA1076C();
  sub_22BA0FBCC();

  v8 = *(v1 + 8);
  v8(v4, v0);
  return (v8)(v6, v0);
}

uint64_t sub_22B971C1C()
{
  sub_22BA0FA9C();
  swift_allocObject();
  result = sub_22BA0FA8C();
  qword_281416840 = result;
  return result;
}

uint64_t sub_22B971C5C()
{
  sub_22BA0FADC();
  swift_allocObject();
  v0 = sub_22BA0FACC();
  result = sub_22BA0FAAC();
  qword_281416828 = v0;
  return result;
}

uint64_t sub_22B971CA8(uint64_t a1)
{
  v2 = v1;
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = *sub_22B9358B4(v2, v2[3]);
  LOBYTE(v8[0]) = 0;
  sub_22BA0FB7C();
  v5 = sub_22BA0FFCC();

  LODWORD(v4) = [v4 fileExistsAtPath:v5 isDirectory:v8];

  result = 0;
  if (v4)
  {
    v7 = sub_22B9358B4(v2, v2[3]);
    sub_22B964DE0(a1, *v7);
    return 1;
  }

  return result;
}

unint64_t sub_22B972028()
{
  v0 = sub_22BA0FB8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22BA0FC4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-v12];
  v14 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v21 = 0xD00000000000001BLL;
  v22 = 0x800000022BA1CDB0;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D0], v0);
  sub_22B936ACC();
  sub_22BA0FC2C();
  (*(v1 + 8))(v3, v0);
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_22BA0FBEC();
  v15(v11, v4);
  v16 = sub_22BA0FC5C();
  v18 = v17;
  if (qword_281416838 != -1)
  {
    swift_once();
  }

  sub_22B9349C8(&qword_27D8D51E0, &unk_22BA15740);
  sub_22B97295C(&qword_281414C48, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  sub_22BA0FA7C();
  v15(v13, v4);
  sub_22B9359BC(v16, v18);
  return v21;
}

uint64_t sub_22B9724B4(uint64_t a1)
{
  v34 = a1;
  v1 = sub_22BA0FB8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BA0FC4C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v35 = 0xD00000000000001BLL;
  v36 = 0x800000022BA1CDB0;
  (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
  sub_22B936ACC();
  sub_22BA0FC2C();
  (*(v2 + 8))(v4, v1);
  v16 = *(v6 + 8);
  v16(v9, v5);
  sub_22BA0FBEC();
  v16(v12, v5);
  if (qword_281416820 != -1)
  {
    swift_once();
  }

  v35 = v34;
  sub_22B9349C8(&qword_27D8D51E0, &unk_22BA15740);
  sub_22B97295C(&qword_281414C50, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  v17 = v37;
  v18 = sub_22BA0FABC();
  if (v17)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v22 = sub_22BA0FEFC();
    sub_22B936CA8(v22, qword_28141AD40);
    v23 = v17;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1044C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v14;
      v27 = v26;
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v17;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_22B92A000, v24, v25, "Failed to write diagnostics binary plist: %@", v27, 0xCu);
      sub_22B95DEF0(v28);
      MEMORY[0x23189ADD0](v28, -1, -1);
      MEMORY[0x23189ADD0](v27, -1, -1);

      v31 = v37;
    }

    else
    {

      v31 = v14;
    }

    return (v16)(v31, v5);
  }

  else
  {
    v20 = v18;
    v21 = v19;
    sub_22BA0FCBC();
    v16(v14, v5);
    return sub_22B9359BC(v20, v21);
  }
}

uint64_t sub_22B97295C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D51E0, &unk_22BA15740);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B9729CC()
{
  result = qword_27D8D51E8;
  if (!qword_27D8D51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51E8);
  }

  return result;
}

uint64_t sub_22B972A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SyncFiles.FileMove(uint64_t a1)
{
  result = qword_281416810;
  if (!qword_281416810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B972AB4()
{
  v0 = sub_22BA0FB8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BA0FC4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v17 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v14 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v17[2] = 0xD00000000000001BLL;
  v17[3] = 0x800000022BA1CDB0;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_22B936ACC();
  sub_22BA0FC2C();
  (*(v1 + 8))(v3, v0);
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_22BA0FBEC();
  v15(v11, v4);
  v16 = [objc_opt_self() defaultManager];
  sub_22B964DE0(v13, v16);
  v15(v13, v4);
}

uint64_t sub_22B972ED8(uint64_t a1)
{
  result = sub_22BA0FC4C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22B972F48()
{
  result = qword_27D8D51F8;
  if (!qword_27D8D51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51F8);
  }

  return result;
}

void sub_22B972F9C(uint64_t a1, void *a2, int a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a7;
  v42 = a5;
  v44 = a4;
  v43 = a3;
  v47 = a1;
  v48 = a2;
  v8 = sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = *(v9 + 16);
  v12(&v40 - v10, a1, v8);
  v45 = *(v9 + 80);
  v13 = (v45 + 16) & ~v45;
  v14 = swift_allocObject();
  v15 = *(v9 + 32);
  v15(v14 + v13, v11, v8);
  sub_22BA105DC();
  v12(v11, v47, v8);
  v16 = swift_allocObject();
  v46 = v15;
  v15(v16 + v13, v11, v8);
  v17 = v47;
  sub_22BA105EC();
  if (v43)
  {
    v12(v11, v17, v8);
    v18 = swift_allocObject();
    v46(v18 + v13, v11, v8);
    v51 = sub_22B973BCC;
    v52 = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9739D8;
    v50 = &unk_283F542C0;
    v19 = _Block_copy(aBlock);

    [v48 setPerRecordProgressBlock_];
    _Block_release(v19);
  }

  v12(v11, v17, v8);
  v20 = swift_allocObject();
  v46(v20 + v13, v11, v8);
  v21 = v48;
  sub_22BA105BC();
  if ((*v44 & 1) == 0)
  {
    *v44 = 1;
    v22 = v42;
    v23 = *(v42 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v24 = *(v42 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
    sub_22B9358B4((v42 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase), v23);
    (*(v24 + 8))(v21, v23, v24);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v25 = sub_22BA0FEFC();
    sub_22B936CA8(v25, qword_28141AD40);
    sub_22B935B38(v41, aBlock);
    swift_unknownObjectRetain();
    v26 = v21;
    v27 = sub_22BA0FEDC();
    v28 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55 = v31;
      *v29 = 136315650;
      v32 = sub_22B9358B4(aBlock, v50);
      v33 = *v32;
      v34 = v32[1];

      sub_22B936C4C(aBlock);
      v35 = sub_22B99153C(v33, v34, &v55);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v53 = 0x2E636E7973;
      v54 = 0xE500000000000000;
      sub_22B9358B4((v22 + 16), *(v22 + 40));
      v36 = sub_22B9B580C();
      MEMORY[0x231899730](v36);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v37 = sub_22BA10C1C();
      MEMORY[0x231899730](v37);

      v38 = sub_22B99153C(v53, v54, &v55);

      *(v29 + 14) = v38;
      *(v29 + 22) = 2112;
      *(v29 + 24) = v26;
      *v30 = v26;
      v39 = v26;
      _os_log_impl(&dword_22B92A000, v27, v28, "Added write operation for %s (sync: %s): %@", v29, 0x20u);
      sub_22B95DEF0(v30);
      MEMORY[0x23189ADD0](v30, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v31, -1, -1);
      MEMORY[0x23189ADD0](v29, -1, -1);
    }

    else
    {

      sub_22B936C4C(aBlock);
    }
  }
}

uint64_t sub_22B973574(void *a1, void *a2, char a3)
{
  v6 = sub_22B9349C8(&qword_27D8D5208, qword_22BA15870);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  if (a3)
  {
    v14 = a1;
    v15 = a2;
    v16 = 1;
    sub_22B930C44(a2);
    v10 = a1;
  }

  else
  {
    v14 = a2;
    v15 = 0;
    v16 = 0;
    v11 = a2;
  }

  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  sub_22BA1033C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22B9736C4(void *a1, void *a2, char a3)
{
  v6 = sub_22B9349C8(&qword_27D8D5208, qword_22BA15870);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  if (a3)
  {
    v14 = a1;
    v15 = a2;
    v16 = 65;
    v10 = a1;
    sub_22B973C70(a2, 1);
  }

  else
  {
    v14 = a1;
    v15 = 0;
    v16 = 64;
    v11 = a1;
  }

  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  sub_22BA1033C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22B973818(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  v8 = *(sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3 & 1, v9);
}

uint64_t sub_22B9738C0(void *a1, double a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5208, qword_22BA15870);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[1] = a1;
  *&v10[2] = a2;
  v11 = 0x80;
  v8 = a1;
  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  sub_22BA1033C();
  return (*(v5 + 8))(v7, v4);
}

void sub_22B9739D8(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a3);
}

uint64_t sub_22B973A50(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  return sub_22BA1034C();
}

uint64_t sub_22B973AAC(void *a1, char a2)
{
  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);

  return sub_22B973A50(a1, a2 & 1);
}

uint64_t sub_22B973B38()
{
  v1 = sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B973BCC(void *a1, double a2)
{
  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);

  return sub_22B9738C0(a1, a2);
}

uint64_t sub_22B973C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22B973C70(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B973C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22B973CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_22B973D6C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B973DC8(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v2[28] = swift_task_alloc();
  v3 = sub_22BA0FC4C();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B973EC0, 0, 0);
}

uint64_t sub_22B973EC0()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + *(type metadata accessor for ChatRecord(0) + 120));
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = sub_22B990A58(28775, 0xE200000000000000);
      if (v4)
      {
        v5 = *(v0 + 232);
        v6 = *(v0 + 240);
        v7 = *(v0 + 224);
        v8 = (*(v2 + 56) + (v3 << 6));
        v9 = v8[3];
        v11 = *v8;
        v10 = v8[1];
        *(v0 + 48) = v8[2];
        *(v0 + 64) = v9;
        *(v0 + 16) = v11;
        *(v0 + 32) = v10;
        sub_22B9706D4(v0 + 16, v0 + 80);
        sub_22BA0FC1C();
        if ((*(v6 + 48))(v7, 1, v5) == 1)
        {
          v12 = *(v0 + 224);
          sub_22B97070C(v0 + 16);
          sub_22B936BEC(v12, &qword_27D8D5210, qword_22BA16040);
        }

        else
        {
          v13 = *(v0 + 248);
          v14 = *(v0 + 208);
          (*(*(v0 + 240) + 32))(v13, *(v0 + 224), *(v0 + 232));
          v15 = sub_22B9358B4(v14, v14[3]);
          sub_22B964DE0(v13, *v15);
          (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
          sub_22B97070C(v0 + 16);
        }
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22B974224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B974358();
}

uint64_t sub_22B9742C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B943E68;

  return sub_22B973DC8(a1);
}

uint64_t sub_22B974358()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for ChatRecord(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B974404, 0, 0);
}

uint64_t sub_22B974404()
{
  v31 = v0;
  v1 = v0[4];
  v0[9] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[10] = v2;
  if (v2)
  {
    v3 = qword_28141ADC8;
    v0[11] = qword_28141ADC8;
    if (v3)
    {
      v4 = qword_28141ADD0;
      v0[12] = qword_28141ADD0;
      v0[13] = *(v4 + 16);
      v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x3A06000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v6 = sub_22BA1029C();
      v0[15] = v6;
      v0[16] = v5;

      return MEMORY[0x2822009F8](sub_22B9747F0, v6, v5);
    }

    else
    {
      sub_22B952500();
      swift_allocError();
      swift_willThrow();

      v18 = v0[1];

      return v18();
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
      v1 = v0[4];
    }

    v8 = v0[6];
    v7 = v0[7];
    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD10);
    sub_22B974E6C(v1, v7);
    sub_22B974E6C(v1, v8);
    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1042C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[7];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v14 = 136315394;
      v15 = v0[7];
      if (*(v13 + 24))
      {
        v16 = *(v15 + 16);
        v17 = *(v13 + 24);
      }

      else
      {
        v17 = 0xE500000000000000;
        v16 = 0x3E6C696E3CLL;
      }

      v20 = v0[8];
      v21 = v0[6];

      sub_22B974ED0(v15);
      v22 = sub_22B99153C(v16, v17, v30);

      *(v14 + 4) = v22;
      *(v14 + 12) = 2080;
      sub_22B974E6C(v21, v20);
      v23 = sub_22BA1005C();
      v25 = v24;
      sub_22B974ED0(v21);
      v26 = sub_22B99153C(v23, v25, v30);

      *(v14 + 14) = v26;
      _os_log_impl(&dword_22B92A000, v10, v11, "Service %s is not supported, do not import chat %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v29, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
      v19 = v0[6];

      sub_22B974ED0(v19);
      sub_22B974ED0(v13);
    }

    v27 = v0[1];

    return v27(0);
  }
}

uint64_t sub_22B9747F0()
{
  *(v0 + 176) = (*(v0 + 104))(*(v0 + 72), *(v0 + 80)) & 1;

  return MEMORY[0x2822009F8](sub_22B97486C, 0, 0);
}

uint64_t sub_22B97486C()
{
  v47 = v0;
  v1 = *(v0 + 176);
  if (v1 != 1)
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 32);
    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD10);
    sub_22B974E6C(v15, v13);
    sub_22B974E6C(v15, v14);
    v17 = sub_22BA0FEDC();
    v18 = sub_22BA1042C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 56);
    if (v19)
    {
      v45 = v1;
      v21 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46[0] = v44;
      *v21 = 136315394;
      v22 = *(v0 + 56);
      if (*(v20 + 24))
      {
        v23 = *(v22 + 16);
        v24 = *(v20 + 24);
      }

      else
      {
        v24 = 0xE500000000000000;
        v23 = 0x3E6C696E3CLL;
      }

      v35 = *(v0 + 64);
      v36 = *(v0 + 48);

      sub_22B974ED0(v22);
      v37 = sub_22B99153C(v23, v24, v46);

      *(v21 + 4) = v37;
      *(v21 + 12) = 2080;
      sub_22B974E6C(v36, v35);
      v38 = sub_22BA1005C();
      v40 = v39;
      sub_22B974ED0(v36);
      v41 = sub_22B99153C(v38, v40, v46);

      *(v21 + 14) = v41;
      _os_log_impl(&dword_22B92A000, v17, v18, "Service %s is not supported, do not import chat %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v44, -1, -1);
      MEMORY[0x23189ADD0](v21, -1, -1);

      v1 = v45;
    }

    else
    {
      v33 = *(v0 + 48);

      sub_22B974ED0(v33);
      sub_22B974ED0(v20);
    }

    goto LABEL_24;
  }

  v2 = (*(v0 + 32) + *(*(v0 + 40) + 68));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    if (([objc_opt_self() supportsBusinessChat] & 1) == 0)
    {
      v5 = sub_22BA0FFCC();
      v6 = MEMORY[0x23189A5A0]();

      if (v6)
      {
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v7 = sub_22BA0FEFC();
        sub_22B936CA8(v7, qword_28141AD10);

        v8 = sub_22BA0FEDC();
        v9 = sub_22BA1042C();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v46[0] = v11;
          *v10 = 136315138;
          v12 = sub_22B99153C(v4, v3, v46);

          *(v10 + 4) = v12;
          _os_log_impl(&dword_22B92A000, v8, v9, "Business chat is not supported, do not import chat %s", v10, 0xCu);
          sub_22B936C4C(v11);
          MEMORY[0x23189ADD0](v11, -1, -1);
          MEMORY[0x23189ADD0](v10, -1, -1);
        }

        else
        {
        }

LABEL_24:

        v42 = *(v0 + 8);

        return v42(v1);
      }
    }
  }

  v25 = qword_28141ADC8;
  *(v0 + 136) = qword_28141ADC8;
  if (v25)
  {
    v26 = *(v0 + 64);
    v27 = *(v0 + 32);
    v28 = qword_28141ADD0;
    *(v0 + 144) = qword_28141ADD0;
    sub_22B974E6C(v27, v26);
    v29 = type metadata accessor for ChatRecordKeyedDataSource(0);
    v30 = objc_allocWithZone(v29);
    sub_22B974E6C(v26, v30 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord);
    *(v0 + 16) = v30;
    *(v0 + 24) = v29;
    *(v0 + 152) = objc_msgSendSuper2((v0 + 16), sel_init);
    sub_22B974ED0(v26);
    *(v0 + 160) = *(v28 + 8);
    *(v0 + 168) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0xC482000000000000;
    v31 = *(v0 + 120);
    v32 = *(v0 + 128);

    return MEMORY[0x2822009F8](sub_22B974DD4, v31, v32);
  }

  else
  {
    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_22B974DD4()
{
  v1 = *(v0 + 152);
  (*(v0 + 160))(v1);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_22B974E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B974ED0(uint64_t a1)
{
  v2 = type metadata accessor for ChatRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B974F2C(void *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ActionRecord(0);
  if (*(a1 + *(v5 + 68) + 8))
  {
    v6 = sub_22BA0FFCC();
  }

  else
  {
    v6 = 0;
  }

  sub_22B94498C(a1 + *(v5 + 64), v4);
  v7 = sub_22BA0FD8C();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v9 = sub_22BA0FCFC();
    (*(v8 + 8))(v4, v7);
  }

  if (a1[1])
  {
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v6 time:v9 guid:v10 type:3];

  if (v11)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B9750E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [v3 setActionType_];
    sub_22B977794();
    if (v5)
    {
      osloga = sub_22BA0FFCC();

      [v3 setOtherHandle_];
    }

    else
    {
      [v3 setOtherHandle_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22B99153C(a2, a3, &v14);
      _os_log_impl(&dword_22B92A000, oslog, v9, "No Proto for IMGroupActionItem %s", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }
  }
}

uint64_t sub_22B9752A4(uint64_t a1)
{
  v2 = type metadata accessor for ActionRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B975314@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_22BA0FB5C();
  v7 = CKCanRetryForError();

  if (v7)
  {
    v8 = sub_22BA0FB5C();
    v9 = CKEarliestStartDateAfterError();

    if (v9)
    {
      sub_22BA0FD5C();

      v10 = sub_22BA0FD8C();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    }

    else
    {
      v14 = sub_22BA0FD8C();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    }

    return sub_22B935A74(v5, a2);
  }

  else
  {
    v11 = sub_22BA0FD8C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t sub_22B9754DC(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_22B990D50(a1), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B97557C(uint64_t a1)
{
  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    return 0;
  }

  sub_22B990D50(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();
    return v5;
  }

  return result;
}

uint64_t sub_22B975648()
{
  swift_beginAccess();
  if (!*(*(v0 + 16) + 16))
  {
    return 0;
  }

  sub_22B990D50(2);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();
    return v3;
  }

  return result;
}

unint64_t sub_22B9757DC(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 21:
      result = 0xD000000000000016;
      break;
    case 7:
    case 22:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
    case 20:
      result = 0xD000000000000014;
      break;
    case 10:
    case 24:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 11:
    case 13:
    case 17:
    case 19:
    case 28:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD00000000000002CLL;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    case 15:
      result = 0xD000000000000027;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 26:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22B975A48(uint64_t a1)
{
  v2 = sub_22BA1096C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BA1097C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D84160])
  {
    (*(v7 + 96))(v9, v6);
    v11 = sub_22B9349C8(&qword_27D8D5220, &qword_22BA15AF0);
    (*(v3 + 32))(v5, v9 + *(v11 + 48), v2);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_22BA108FC();

    v12 = 0x6D73694D65707954;
    v13 = 0xEE00203A68637461;
  }

  else
  {
    if (v10 == *MEMORY[0x277D84170])
    {
      (*(v7 + 96))(v9, v6);
      v14 = sub_22B9349C8(&qword_27D8D5220, &qword_22BA15AF0);
      (*(v3 + 32))(v5, v9 + *(v14 + 48), v2);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_22BA108FC();

      v12 = 0x746F4E65756C6156;
      v15 = 1853189958;
    }

    else
    {
      if (v10 == *MEMORY[0x277D84158])
      {
        (*(v7 + 96))(v9, v6);
        v24 = *(sub_22B9349C8(&qword_27D8D5230, &unk_22BA15B00) + 48);
        sub_22B92DFEC(v9, &v34);
        (*(v3 + 32))(v5, v9 + v24, v2);
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_22BA108FC();
        MEMORY[0x231899730](0x6F46746F4E79654BLL, 0xED00005B20646E75);
        sub_22B9358B4(&v34, v36);
        sub_22BA10C4C();
        MEMORY[0x231899730](2112093, 0xE300000000000000);
        v25 = sub_22BA1094C();
        v26 = sub_22B9349C8(&qword_27D8D5228, &qword_22BA15AF8);
        v27 = MEMORY[0x231899870](v25, v26);
        v29 = v28;

        MEMORY[0x231899730](v27, v29);

        MEMORY[0x231899730](8236, 0xE200000000000000);
        v30 = sub_22BA1095C();
        MEMORY[0x231899730](v30);

        v22 = v32;
        (*(v3 + 8))(v5, v2);
        sub_22B936C4C(&v34);
        return v22;
      }

      if (v10 != *MEMORY[0x277D84168])
      {
        (*(v7 + 8))(v9, v6);
        return 0xD000000000000016;
      }

      (*(v7 + 96))(v9, v6);
      (*(v3 + 32))(v5, v9, v2);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_22BA108FC();

      v12 = 0x72726F4361746144;
      v15 = 1702129781;
    }

    v13 = v15 | 0xEF203A6400000000;
  }

  v34 = v12;
  v35 = v13;
  v16 = sub_22BA1094C();
  v17 = sub_22B9349C8(&qword_27D8D5228, &qword_22BA15AF8);
  v18 = MEMORY[0x231899870](v16, v17);
  v20 = v19;

  MEMORY[0x231899730](v18, v20);

  MEMORY[0x231899730](8236, 0xE200000000000000);
  v21 = sub_22BA1095C();
  MEMORY[0x231899730](v21);

  v22 = v34;
  (*(v3 + 8))(v5, v2);
  return v22;
}

void sub_22B975FD8(char a1, void *a2, id a3, uint64_t a4)
{
  v7 = sub_22B9349C8(&qword_27D8D5218, &unk_22BA15AE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  v10 = sub_22BA1097C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[5] = a2;
  v14 = a2;
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
    v17 = [objc_opt_self() sharedInstance];
    if (v17)
    {
      v18 = v17;
      sub_22B9757DC(a1);
      v19 = sub_22BA0FFCC();

      v20 = swift_allocError();
      (*(v11 + 16))(v21, v13, v10);
      v22 = sub_22BA0FB5C();

      v23 = sub_22BA0FFCC();
      sub_22B975A48(v13);
      v24 = sub_22BA0FFCC();

      [v18 forceAutoBugCaptureWithSubType:v19 errorPayload:v22 type:v23 context:v24];

      (*(v11 + 8))(v13, v10);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v16(v9, 1, 1, v10);
  sub_22B9763A8(v9);
  v25 = [objc_opt_self() sharedInstance];
  if (!v25)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v26 = v25;
  sub_22B9757DC(a1);
  v27 = sub_22BA0FFCC();

  v28 = sub_22BA0FB5C();
  v29 = sub_22BA0FFCC();
  if (!a4)
  {
    swift_getErrorValue();
    sub_22B9587B4(v31[2], v31[3]);
  }

  v30 = sub_22BA0FFCC();

  [v26 forceAutoBugCaptureWithSubType:v27 errorPayload:v28 type:v29 context:v30];
}

uint64_t sub_22B9763A8(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5218, &unk_22BA15AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B976424()
{
  result = qword_27D8D5238;
  if (!qword_27D8D5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5238);
  }

  return result;
}

uint64_t sub_22B976478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_22B9680E0(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_22BA107CC();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = v1;
  v25 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v26 = v7;
    v11 = (*(a1 + 56) + 16 * v6);
    v12 = v11[1];
    v13 = *(v29 + 16);
    v14 = *(v29 + 24);
    v27 = *v11;
    v28 = v13 + 1;
    v15 = *(*(a1 + 48) + 8 * v6);

    if (v13 >= v14 >> 1)
    {
      result = sub_22B9680E0((v14 > 1), v28, 1);
    }

    *(v29 + 16) = v28;
    v16 = v29 + 32 * v13;
    *(v16 + 32) = v15;
    *(v16 + 40) = v27;
    *(v16 + 48) = v12;
    *(v16 + 56) = 1;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v25;
    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22B951A48(v6, v25, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22B951A48(v6, v25, 0);
    }

LABEL_4:
    v7 = v26 + 1;
    v6 = v9;
    if (v26 + 1 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22B9766D0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22B976760, v1, 0);
}

uint64_t sub_22B976760()
{
  v0[5] = *(v0[4] + 112);
  v0[2] = 0;
  sub_22BA102EC();
  v0[6] = sub_22BA102DC();
  v2 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B976838, v2, v1);
}

uint64_t sub_22B976838()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v4 = [v1 batchOfRecordIDsToDeleteWithLimit:v3 error:v0 + 2];
  v5 = v0[2];
  v0[7] = v4;
  v0[8] = v5;
  v6 = v5;

  return MEMORY[0x2822009F8](sub_22B976908, v2, 0);
}

uint64_t sub_22B976908()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[4];
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    sub_22B977228();
    v3 = sub_22BA0FF6C();

    *(v2 + 128) = v3;

    v4 = sub_22B976478(v3);

    v5 = sub_22B93769C(v4);
LABEL_7:
    v13 = v0[1];

    return v13(v5, v6);
  }

  v7 = v0[8];
  v8 = sub_22BA0FB6C();

  swift_willThrow();
  v9 = sub_22BA0FB5C();
  sub_22B951A54(0, &qword_281414A18, 0x277D82BB8);
  if (qword_281414A90 != -1)
  {
    swift_once();
  }

  if (sub_22BA1072C())
  {
    v10 = sub_22B93769C(MEMORY[0x277D84F90]);
    v12 = v11;

    v6 = v12;
    v5 = v10;
    goto LABEL_7;
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_22B976B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 72) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 40) = a1;
  *(v6 + 48) = a3;
  return MEMORY[0x2822009F8](sub_22B976B60, v5, 0);
}

uint64_t sub_22B976B60()
{
  v57 = v0;
  if (*(v0 + 72))
  {
    v1 = *(v0 + 56);
    if (qword_281414D30 != -1)
    {
      swift_once();
      v1 = *(v0 + 56);
    }

    v2 = *(v0 + 48);
    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = v2;
    sub_22B973C70(v1, 1);
    swift_unknownObjectRetain();
    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1044C();

    sub_22B97721C(v1, 1);
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 48);
      v7 = *(v0 + 56);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v56 = v11;
      *v9 = 138412802;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2112;
      v12 = v8;
      sub_22B973C70(v7, 1);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      v10[1] = v13;
      *(v9 + 22) = 2080;
      sub_22BA0FDCC();
      sub_22B944034();
      v14 = sub_22BA10C1C();
      v16 = sub_22B99153C(v14, v15, &v56);

      *(v9 + 24) = v16;
      _os_log_impl(&dword_22B92A000, v5, v6, "Delete Sync failed to delete record to CK %@ %@ %s", v9, 0x20u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v10, -1, -1);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }

    goto LABEL_23;
  }

  v17 = *(*(v0 + 64) + 128);
  if (*(v17 + 16))
  {
    v18 = *(v0 + 48);

    v19 = sub_22B990B14(v18);
    if (v20)
    {
      v21 = (*(v17 + 56) + 16 * v19);
      v23 = *v21;
      v22 = v21[1];

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 48);
      v25 = sub_22BA0FEFC();
      sub_22B936CA8(v25, qword_28141AD40);

      v26 = v24;
      v27 = sub_22BA0FEDC();
      v28 = sub_22BA1046C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v0 + 48);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v56 = v31;
        *v30 = 136315394;
        v32 = sub_22B99153C(v23, v22, &v56);

        *(v30 + 4) = v32;
        *(v30 + 12) = 2080;
        v33 = [v29 zoneID];
        v34 = [v33 zoneName];

        v35 = sub_22BA0FFFC();
        v37 = v36;

        v38 = sub_22B99153C(v35, v37, &v56);

        *(v30 + 14) = v38;
        _os_log_impl(&dword_22B92A000, v27, v28, "Deleted %s for %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v31, -1, -1);
        MEMORY[0x23189ADD0](v30, -1, -1);
      }

      else
      {
      }

      v52 = *(v0 + 64);
      v53 = *(v0 + 48);
      swift_beginAccess();
      MEMORY[0x231899830](v53);
      if (*((*(v52 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v52 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22BA1022C();
      }

      sub_22BA1026C();
      swift_endAccess();
      goto LABEL_23;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 48);
  v40 = sub_22BA0FEFC();
  sub_22B936CA8(v40, qword_28141AD40);
  v41 = v39;
  v42 = sub_22BA0FEDC();
  v43 = sub_22BA1044C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 48);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56 = v46;
    *v45 = 136315138;
    v47 = [v44 recordName];
    v48 = sub_22BA0FFFC();
    v50 = v49;

    v51 = sub_22B99153C(v48, v50, &v56);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_22B92A000, v42, v43, "Failed to find %s in batch map for guid update", v45, 0xCu);
    sub_22B936C4C(v46);
    MEMORY[0x23189ADD0](v46, -1, -1);
    MEMORY[0x23189ADD0](v45, -1, -1);
  }

LABEL_23:
  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_22B9771B0()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B97721C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_22B977228()
{
  result = qword_281414BD8;
  if (!qword_281414BD8)
  {
    sub_22B951A54(255, &qword_281414BE0, 0x277CBC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414BD8);
  }

  return result;
}

uint64_t sub_22B9772B0()
{
  v0[6] = *(v0[5] + 112);
  swift_beginAccess();
  sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);

  v0[7] = sub_22BA101DC();

  sub_22BA102EC();
  v0[8] = sub_22BA102DC();
  v2 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9773A0, v2, v1);
}

uint64_t sub_22B9773A0()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];

  [v2 clearTombstonesForRecordIDs_];

  return MEMORY[0x2822009F8](sub_22B97742C, v3, 0);
}

uint64_t sub_22B97742C()
{
  v1 = *(v0 + 40);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 120) = MEMORY[0x277D84F90];

  *(v1 + 128) = sub_22B9BBDF0(v2);

  v3 = *(v0 + 8);

  return v3();
}

void sub_22B9774B8(void *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ActionRecord(0);
  if (*(a1 + *(v5 + 68) + 8))
  {
    v6 = sub_22BA0FFCC();
  }

  else
  {
    v6 = 0;
  }

  sub_22B94498C(a1 + *(v5 + 64), v4);
  v7 = sub_22BA0FD8C();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v9 = sub_22BA0FCFC();
    (*(v8 + 8))(v4, v7);
  }

  if (a1[1])
  {
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v6 time:v9 guid:v10 type:4];

  if (v11)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B97766C()
{
  type metadata accessor for ImportCoordinator();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_28141AD98 = result;
  return result;
}

uint64_t sub_22B9776C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22B977724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B977794()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v6 = *(v0 + 5);
      if (v6)
      {
        v3 = v6;
        v4 = [v3 otherHandle];
        if (!v4)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      return 0;
    }

    if (v1 == 3)
    {
      v2 = *(v0 + 2);
      if (v2)
      {
        v3 = v2;
        v4 = [v3 otherHandle];
        if (!v4)
        {
          goto LABEL_19;
        }

LABEL_16:
        v8 = v4;
        v9 = sub_22BA0FFFC();

        return v9;
      }

      return 0;
    }

    v7 = *(v0 + 4);
    if (!v7)
    {
      return 0;
    }

    v3 = v7;
    v4 = [v3 otherHandle];
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_19:

    return 0;
  }

  if (*v0)
  {
    v11 = *(v0 + 3);
    if (!v11)
    {
      return 0;
    }

    v3 = v11;
    v4 = [v3 otherHandle];
    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v5 = *(v0 + 1);
  if (v5)
  {
    v3 = v5;
    v4 = [v3 otherHandle];
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_22B9778DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  if (v2 != 1)
  {
    v3 = 0xE900000000000032;
  }

  if (*a1)
  {
    v4 = 0x6F746F725067736DLL;
  }

  else
  {
    v4 = 0x6570795467736DLL;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v6 = 0xE900000000000032;
  }

  if (*a2)
  {
    v7 = 0x6F746F725067736DLL;
  }

  else
  {
    v7 = 0x6570795467736DLL;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();
  }

  return v9 & 1;
}

uint64_t sub_22B9779B0()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B977A58(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B977AEC(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B977B90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B9786EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B977BC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  if (v2 != 1)
  {
    v4 = 0xE900000000000032;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6F746F725067736DLL;
  }

  else
  {
    v6 = 0x6570795467736DLL;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_22B977C24()
{
  if (*v0)
  {
    return 0x6F746F725067736DLL;
  }

  else
  {
    return 0x6570795467736DLL;
  }
}

unint64_t sub_22B977C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B9786EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B977CB8(uint64_t a1)
{
  v2 = sub_22B97852C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B977CF4(uint64_t a1)
{
  v2 = sub_22B97852C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B977D30()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 messageSummaryInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22BA0FCAC();
    v7 = v6;

    v8 = sub_22BA0FC8C();
    sub_22B9359BC(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = JWDecodeDictionary();

  if (v10)
  {
    v11 = sub_22BA0FF6C();

    sub_22B98963C(v11);
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

double sub_22B977E28@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22B977E78(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

void sub_22B977E78(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5240, &qword_22BA15D48);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B97852C();
  sub_22BA10D8C();
  if (v2)
  {
    sub_22B936C4C(a1);

    return;
  }

  v52 = 0;
  sub_22B978580();
  sub_22BA10B3C();
  v9 = v49;
  v52 = 1;
  v10 = sub_22B9363C8();
  sub_22BA10AFC();
  v51 = v9;
  v47 = v6;
  v48 = v5;
  v11 = v50;
  v45 = a2;
  v46 = v10;
  if (v50 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_37;
  }

  v44 = v49;
  v17 = sub_22BA0FC8C();
  v18 = [v17 _FTOptionallyDecompressData];

  if (v18)
  {
    v19 = sub_22BA0FCAC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  if (v51 <= 1)
  {
    if (!v51)
    {
      if (v21 >> 60 == 15)
      {
        v23 = 0;
      }

      else
      {
        v23 = sub_22BA0FC8C();
        sub_22B9359A8(v19, v21);
      }

      v16 = [objc_allocWithZone(MEMORY[0x277D1ABE0]) initWithData_];

      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_36;
    }

    if (v21 >> 60 == 15)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_22BA0FC8C();
      sub_22B9359A8(v19, v21);
    }

    v14 = [objc_allocWithZone(MEMORY[0x277D1ABE8]) initWithData_];

    v12 = 0;
    v13 = 0;
  }

  else
  {
    if (v51 == 2)
    {
      if (v21 >> 60 == 15)
      {
        v24 = 0;
      }

      else
      {
        v24 = sub_22BA0FC8C();
        sub_22B9359A8(v19, v21);
      }

      v12 = [objc_allocWithZone(MEMORY[0x277D1ABF8]) initWithData_];

      v13 = 0;
    }

    else
    {
      if (v51 == 3)
      {
        if (v21 >> 60 == 15)
        {
          v22 = 0;
        }

        else
        {
          v22 = sub_22BA0FC8C();
          sub_22B9359A8(v19, v21);
        }

        v15 = [objc_allocWithZone(MEMORY[0x277D1AC38]) initWithData_];

        v12 = 0;
        v13 = 0;
        v14 = 0;
        goto LABEL_35;
      }

      if (v21 >> 60 == 15)
      {
        v25 = 0;
      }

      else
      {
        v25 = sub_22BA0FC8C();
        sub_22B9359A8(v19, v21);
      }

      v13 = [objc_allocWithZone(MEMORY[0x277D1ABD8]) initWithData_];

      v12 = 0;
    }

    v14 = 0;
  }

  v15 = 0;
LABEL_35:
  v16 = 0;
LABEL_36:
  sub_22B9359A8(v44, v11);
LABEL_37:
  v52 = 2;
  sub_22BA10AFC();
  if (v50 >> 60 == 15)
  {
    v47[1](v8, v48);
LABEL_49:
    v35 = 0;
    goto LABEL_50;
  }

  v44 = v49;
  v46 = v50;
  v43 = sub_22BA0FC8C();
  v27 = [v43 _FTOptionallyDecompressData];

  if (!v27)
  {
    if (v51 == 3)
    {
      goto LABEL_44;
    }

    v36 = 0;
    v43 = 0xF000000000000000;
LABEL_48:
    v47[1](v8, v48);
    sub_22B9359A8(v44, v46);
    sub_22B9359A8(v36, v43);
    goto LABEL_49;
  }

  v42 = sub_22BA0FCAC();
  v43 = v28;

  if (v51 != 3)
  {
    v36 = v42;
    goto LABEL_48;
  }

  if (v43 >> 60 == 15)
  {
LABEL_44:
    v32 = 0;
    goto LABEL_45;
  }

  v29 = v42;
  v30 = sub_22BA0FC8C();
  v31 = v29;
  v32 = v30;
  sub_22B9359A8(v31, v43);
LABEL_45:
  v33 = [objc_allocWithZone(MEMORY[0x277D1AC18]) initWithData_];
  v34 = v32;
  v35 = v33;

  sub_22B9359A8(v44, v46);
  v47[1](v8, v48);
LABEL_50:
  v46 = v35;
  v44 = v35;
  v48 = v16;
  v47 = v15;
  v43 = v14;
  v37 = v13;
  v38 = v12;
  sub_22B936C4C(a1);

  v39 = v45;
  *v45 = v51;
  v39[1] = v16;
  v39[2] = v15;
  v39[3] = v14;
  v39[4] = v13;
  v40 = v46;
  v39[5] = v12;
  v39[6] = v40;
}

unint64_t sub_22B97852C()
{
  result = qword_27D8D5248;
  if (!qword_27D8D5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5248);
  }

  return result;
}

unint64_t sub_22B978580()
{
  result = qword_27D8D5250;
  if (!qword_27D8D5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5250);
  }

  return result;
}

unint64_t sub_22B9785E8()
{
  result = qword_27D8D5258;
  if (!qword_27D8D5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5258);
  }

  return result;
}

unint64_t sub_22B978640()
{
  result = qword_27D8D5260;
  if (!qword_27D8D5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5260);
  }

  return result;
}

unint64_t sub_22B978698()
{
  result = qword_27D8D5268;
  if (!qword_27D8D5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5268);
  }

  return result;
}

unint64_t sub_22B9786EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

__n128 sub_22B978744(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22B978758(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B9787A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22B978804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B97882C, 0, 0);
}

uint64_t sub_22B97882C()
{
  v16 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v2 + 16);
  v0[7] = v3;
  v0[8] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xA5B8000000000000;
  v3(&v15, v1);
  if (v15 < 7u && ((0x5Fu >> v15) & 1) != 0)
  {
    v4 = 0xE090D0C0B0A09uLL >> (8 * (v15 & 0x1Fu));
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_22B978B8C;
    v7 = v0[2];
    v6 = v0[3];
    v22 = v4;
    v21 = 59;
    v20 = 2;
    v19 = 22;
    v18 = "stepStarting(context:)";

    return sub_22B9E81AC(v7, v6, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/Protocols/SyncJob.swift", 99, 2);
  }

  else
  {
    v9 = v0[7];
    v10 = v0[5];
    v11 = v0[4];
    v12 = *(*sub_22B9358B4((v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
    v9((&v15 + 1), v11, v10);
    v13 = sub_22BA0FFCC();

    [v12 setObject:v13 forKey:*MEMORY[0x277D19AA0]];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B978B8C()
{

  return MEMORY[0x2822009F8](sub_22B978C88, 0, 0);
}

uint64_t sub_22B978C88()
{
  v9 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[4];
  v4 = *(*sub_22B9358B4((v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
  v1(&v8, v3, v2);
  v5 = sub_22BA0FFCC();

  [v4 setObject:v5 forKey:*MEMORY[0x277D19AA0]];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22B978ECC()
{
  swift_unknownObjectRelease();
  sub_22B936C4C(v0 + 4);
  swift_unknownObjectRelease();

  sub_22B979210(v0[13], v0[14]);

  return swift_deallocClassInstance();
}

uint64_t sub_22B978F7C()
{
  v1 = *(*v0 + 104);
  sub_22B930C20(v1, *(*v0 + 112));
  return v1;
}

uint64_t sub_22B978FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B945AC8;

  return sub_22B978804(a1, a2, a3, &off_283F54680);
}

uint64_t sub_22B979068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22B943E68;

  return sub_22B979130(a1);
}

uint64_t sub_22B979150()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  [*(*sub_22B9358B4(v1 v1[3]) + 24)];
  [*(*sub_22B9358B4(v1 v1[3]) + 24)];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B979210(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B979220()
{
  v1[82] = v0;
  v1[83] = type metadata accessor for AttachmentRecord(0);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9792C0, 0, 0);
}

uint64_t sub_22B9792C0()
{
  v1 = *(v0 + 656);
  v2 = *(*(v0 + 664) + 52);
  *(v0 + 1056) = v2;
  memcpy((v0 + 16), (v1 + v2), 0x140uLL);
  if (sub_22B97CA68(v0 + 16) == 1)
  {
    v3 = 0;
  }

  else
  {

    v3 = sub_22BA0FFCC();
  }

  v4 = IMMessageGuidFromIMFileTransferGuid();

  if (v4)
  {
    v5 = sub_22BA0FFFC();
    v7 = v6;

    v8 = qword_281414F10;

    if (v8 != -1)
    {
      swift_once();
    }

    sub_22B99F8F8(v5, v7);
    v4 = v9;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 704) = v7;
  *(v0 + 696) = v5;
  *(v0 + 688) = v4;
  v10 = qword_28141ADC8;
  *(v0 + 712) = qword_28141ADC8;
  if (v10)
  {
    v11 = qword_28141ADD0;
    *(v0 + 720) = qword_28141ADD0;
    *(v0 + 728) = *(v11 + 104);
    *(v0 + 736) = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0x4C2F000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    *(v0 + 744) = sub_22BA102EC();
    v13 = sub_22BA1029C();
    *(v0 + 752) = v13;
    *(v0 + 760) = v12;

    return MEMORY[0x2822009F8](sub_22B979520, v13, v12);
  }

  else
  {

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22B979520()
{
  (*(v0 + 728))(*(v0 + 688));

  return MEMORY[0x2822009F8](sub_22B97959C, 0, 0);
}

uint64_t sub_22B97959C()
{
  memcpy((v0 + 336), (*(v0 + 656) + *(v0 + 1056)), 0x140uLL);
  if (sub_22B97CA68(v0 + 336) == 1)
  {
    v1 = *(v0 + 672);
    v2 = *(v0 + 656);
    *(v0 + 1060) = sub_22B97B858() & 1;
    *(v0 + 904) = sub_22B97CA80();
    sub_22B97CACC(v2, v1);
    *(v0 + 912) = sub_22BA102DC();
    v3 = sub_22BA1029C();
    v5 = v4;
    v6 = sub_22B97A0B4;
    v7 = v3;
    v8 = v5;
LABEL_5:

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  *(v0 + 768) = *(v0 + 520);
  *(v0 + 776) = *(v0 + 528);
  v9 = qword_28141ADC8;
  *(v0 + 784) = qword_28141ADC8;
  if (v9)
  {
    v10 = qword_28141ADD0;
    *(v0 + 792) = qword_28141ADD0;
    *(v0 + 800) = *(v10 + 112);
    *(v0 + 808) = (v10 + 112) & 0xFFFFFFFFFFFFLL | 0x4B50000000000000;
    v11 = *(v0 + 760);
    v12 = *(v0 + 752);

    v6 = sub_22B97976C;
    v7 = v12;
    v8 = v11;
    goto LABEL_5;
  }

  v13 = *(v0 + 688);

  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B97976C()
{
  *(v0 + 816) = (*(v0 + 800))(*(v0 + 768), *(v0 + 776));

  return MEMORY[0x2822009F8](sub_22B9797F0, 0, 0);
}

uint64_t sub_22B9797F0()
{
  if (*(v0 + 816))
  {
    v1 = *(v0 + 680);
    v2 = *(v0 + 656);
    *(v0 + 824) = sub_22B97CA80();
    sub_22B97CACC(v2, v1);
    *(v0 + 832) = sub_22BA102DC();
    v3 = sub_22BA1029C();
    v5 = v4;
    v6 = sub_22B97991C;
  }

  else
  {

    v7 = *(v0 + 672);
    v8 = *(v0 + 656);
    *(v0 + 1060) = sub_22B97B858() & 1;
    *(v0 + 904) = sub_22B97CA80();
    sub_22B97CACC(v8, v7);
    *(v0 + 912) = sub_22BA102DC();
    v3 = sub_22BA1029C();
    v5 = v9;
    v6 = sub_22B97A0B4;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_22B97991C()
{
  v1 = v0[85];

  v0[105] = sub_22B9AD110(v1, 0);
  v0[106] = 0;

  return MEMORY[0x2822009F8](sub_22B9799D4, 0, 0);
}

uint64_t sub_22B9799D4()
{
  v28 = v0;
  if (sub_22B97B1A4(*(v0 + 816), *(v0 + 840)))
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD10);

    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1042C();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 776);
    if (v4)
    {
      v6 = *(v0 + 768);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136315138;
      v9 = sub_22B99153C(v6, v5, &v27);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_22B92A000, v2, v3, "Transfer %s: local data newer than cloud; marking dirty to update server", v7, 0xCu);
      sub_22B936C4C(v8);
      MEMORY[0x23189ADD0](v8, -1, -1);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }

    else
    {
    }

    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = *(v0 + 840);
  v12 = *(v0 + 816);
  v13 = *(v0 + 656);
  [v12 setCloudKitSyncState_];
  sub_22B97BBF8(v12, v11);
  if (*(v13 + 56))
  {
    v14 = sub_22BA0FFCC();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 664);
  v16 = *(v0 + 656);
  [*(v0 + 816) setCloudKitRecordID_];

  if (*(v16 + *(v15 + 56) + 8) >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_22BA0FC8C();
  }

  [*(v0 + 816) setCloudKitServerChangeTokenBlob_];

  v18 = qword_28141ADC8;
  *(v0 + 856) = qword_28141ADC8;
  if (v18)
  {
    v19 = qword_28141ADD0;
    *(v0 + 864) = qword_28141ADD0;
    *(v0 + 872) = *(v19 + 120);
    *(v0 + 880) = (v19 + 120) & 0xFFFFFFFFFFFFLL | 0x848E000000000000;
    v20 = *(v0 + 760);
    v21 = *(v0 + 752);

    return MEMORY[0x2822009F8](sub_22B979D18, v21, v20);
  }

  else
  {
    v22 = *(v0 + 840);
    v23 = *(v0 + 816);
    v24 = *(v0 + 688);

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_22B979D18()
{
  (*(v0 + 872))(*(v0 + 816), *(v0 + 696), *(v0 + 704));

  return MEMORY[0x2822009F8](sub_22B979DA8, 0, 0);
}

uint64_t sub_22B979DA8()
{
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 816);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 816);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_22B92A000, v4, v5, "Stored attachment for existing transfer %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  *(v0 + 888) = sub_22BA102DC();
  v11 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B979F58, v11, v10);
}

uint64_t sub_22B979F58()
{
  v1 = *(v0 + 816);

  *(v0 + 896) = [v1 guid];

  return MEMORY[0x2822009F8](sub_22B979FE0, 0, 0);
}

uint64_t sub_22B979FE0()
{
  v1 = v0[112];
  v2 = v0[105];
  v3 = v0[102];
  v4 = v0[86];
  if (v1)
  {
    v5 = sub_22BA0FFFC();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0;
  }

  v8 = v0[1];

  return v8(v5, v7);
}

uint64_t sub_22B97A0B4()
{
  v1 = v0[84];

  v0[115] = sub_22B9AD110(v1, 1);
  v0[116] = 0;

  return MEMORY[0x2822009F8](sub_22B97A160, 0, 0);
}

uint64_t sub_22B97A160()
{
  v1 = *(v0 + 1060);
  if (*(v0 + 1060))
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  [*(v0 + 920) _setTransferState_];
  if (v1 && [*(v0 + 920) thumbnailMode] == 1)
  {
    [*(v0 + 920) _setTransferState_];
  }

  v3 = *(v0 + 688);
  [*(v0 + 920) setCloudKitSyncState_];
  if (v3 && ((v4 = *(v0 + 688), objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass())))
  {
    v5 = qword_28141ADC8;
    *(v0 + 936) = qword_28141ADC8;
    if (v5)
    {
      v6 = qword_28141ADD0;
      *(v0 + 944) = qword_28141ADD0;
      *(v0 + 952) = *(v6 + 120);
      *(v0 + 960) = (v6 + 120) & 0xFFFFFFFFFFFFLL | 0x848E000000000000;
      v7 = *(v0 + 760);
      v8 = *(v0 + 752);
      v9 = sub_22B97A384;
LABEL_14:

      return MEMORY[0x2822009F8](v9, v8, v7);
    }

    v12 = *(v0 + 920);
  }

  else
  {

    v10 = qword_28141ADC8;
    *(v0 + 1008) = qword_28141ADC8;
    if (v10)
    {
      v11 = qword_28141ADD0;
      *(v0 + 1016) = qword_28141ADD0;
      *(v0 + 1024) = *(v11 + 120);
      *(v0 + 1032) = (v11 + 120) & 0xFFFFFFFFFFFFLL | 0x848E000000000000;
      v7 = *(v0 + 760);
      v8 = *(v0 + 752);
      v9 = sub_22B97A994;
      goto LABEL_14;
    }

    v12 = *(v0 + 920);
    v4 = *(v0 + 688);
  }

  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22B97A384()
{
  (*(v0 + 952))(*(v0 + 920), *(v0 + 696), *(v0 + 704));

  return MEMORY[0x2822009F8](sub_22B97A414, 0, 0);
}

uint64_t sub_22B97A414()
{
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 920);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 920);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_22B92A000, v4, v5, "Stored attachment for transfer %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  *(v0 + 968) = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *(v0 + 688);
  v13 = [v11 balloonBundleID];
  if (!v13)
  {
    sub_22BA0FFFC();
    goto LABEL_12;
  }

  v14 = v13;
  v15 = sub_22BA0FFFC();
  v17 = v16;

  v18 = sub_22BA0FFFC();
  if (!v17)
  {
LABEL_12:
    v20 = *(v0 + 688);

    goto LABEL_13;
  }

  if (v15 == v18 && v17 == v19)
  {

    goto LABEL_24;
  }

  v30 = sub_22BA10C6C();

  if ((v30 & 1) == 0)
  {
    v20 = *(v0 + 688);
LABEL_13:

    v21 = *(v0 + 968);
    v22 = *(v0 + 688);
    if (([v21 isAudioMessage] & 1) != 0 || (objc_msgSend(*(v0 + 920), sel_isSticker) & 1) != 0 || objc_msgSend(*(v0 + 920), sel_hideAttachment) || objc_msgSend(*(v0 + 920), sel_isLocation))
    {
      v23 = *(v0 + 688);
    }

    else
    {
      v23 = *(v0 + 688);
      [*(v0 + 920) isContact];
    }

LABEL_19:
    *(v0 + 1040) = sub_22BA102DC();
    v24 = sub_22BA1029C();
    v26 = v25;
    v27 = sub_22B97AC18;
    v28 = v24;
    v29 = v26;
LABEL_20:

    return MEMORY[0x2822009F8](v27, v28, v29);
  }

LABEL_24:
  v31 = qword_28141ADC8;
  *(v0 + 976) = qword_28141ADC8;
  if (v31)
  {
    v32 = qword_28141ADD0;
    *(v0 + 984) = qword_28141ADD0;
    *(v0 + 992) = *(v32 + 328);
    *(v0 + 1000) = (v32 + 328) & 0xFFFFFFFFFFFFLL | 0xD999000000000000;
    v29 = *(v0 + 760);
    v28 = *(v0 + 752);
    v27 = sub_22B97A808;
    goto LABEL_20;
  }

  v33 = *(v0 + 920);
  v34 = *(v0 + 688);

  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_22B97A808()
{
  (*(v0 + 992))(*(v0 + 920));

  return MEMORY[0x2822009F8](sub_22B97A884, 0, 0);
}

uint64_t sub_22B97A884()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 688);
  if (([v1 isAudioMessage] & 1) != 0 || (objc_msgSend(*(v0 + 920), sel_isSticker) & 1) != 0 || objc_msgSend(*(v0 + 920), sel_hideAttachment) || objc_msgSend(*(v0 + 920), sel_isLocation))
  {
    v3 = *(v0 + 688);
  }

  else
  {
    v3 = *(v0 + 688);
    [*(v0 + 920) isContact];
  }

  *(v0 + 1040) = sub_22BA102DC();
  v5 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B97AC18, v5, v4);
}

uint64_t sub_22B97A994()
{
  (*(v0 + 1024))(*(v0 + 920), 0, 0);

  return MEMORY[0x2822009F8](sub_22B97AA18, 0, 0);
}

uint64_t sub_22B97AA18()
{
  v23 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 920);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 920);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    v14 = sub_22BA0FFFC();
    v16 = v15;

    v17 = sub_22B99153C(v14, v16, &v22);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_22B92A000, v4, v5, "Stored attachment without associate-able message for transfer %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 1040) = sub_22BA102DC();
  v18 = sub_22BA1029C();
  v20 = v19;
  v11 = sub_22B97AC18;
  v12 = v18;
  v13 = v20;

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22B97AC18()
{
  v1 = *(v0 + 920);

  *(v0 + 1048) = [v1 guid];

  return MEMORY[0x2822009F8](sub_22B97ACA0, 0, 0);
}

uint64_t sub_22B97ACA0()
{
  v1 = v0[131];
  v2 = v0[115];
  v3 = v0[86];
  if (v1)
  {
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_22B97AD68()
{
  v1 = *(v0 + 688);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B97ADE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B97AE60(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_22BA0FC4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v19 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  sub_22BA0E688(v7);
  v20 = *(v9 + 48);
  v14 = v20(v7, 1, v8);
  v18 = v9;
  if (v14 == 1)
  {
    sub_22B936BEC(v7, &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v24 = &type metadata for FileManagerProvider;
    v25 = &off_283F53B48;
    v23[0] = [objc_opt_self() defaultManager];
    sub_22B971CA8(v13);
    (*(v9 + 8))(v13, v8);
    sub_22B957EE4(v23);
  }

  sub_22BA0E698(v5);
  if (v20(v5, 1, v8) == 1)
  {
    return sub_22B936BEC(v5, &qword_27D8D5210, qword_22BA16040);
  }

  v16 = v18;
  v17 = v19;
  (*(v18 + 32))(v19, v5, v8);
  v24 = &type metadata for FileManagerProvider;
  v25 = &off_283F53B48;
  v23[0] = [objc_opt_self() defaultManager];
  sub_22B971CA8(v17);
  (*(v16 + 8))(v17, v8);
  return sub_22B957EE4(v23);
}

uint64_t sub_22B97B1A4(void *a1, void *a2)
{
  v3 = v2;
  if ((sub_22B97B858() & 1) == 0 || !sub_22B97BB34(a1))
  {
    v17 = [a1 stickerUserInfo];
    if (v17)
    {
      v18 = v17;
      v19 = sub_22BA0FF6C();

      v60 = sub_22BA0FFFC();
      v61 = v20;
      sub_22BA1086C();
      if (*(v19 + 16))
      {
        v21 = sub_22B990AD0(__dst);
        if (v22)
        {
          sub_22B936B20(*(v19 + 56) + 32 * v21, v62);
          sub_22B9580C4(__dst);

          if ((swift_dynamicCast() & 1) == 0 || v60 != 1)
          {
            goto LABEL_19;
          }

          if (qword_281414D18 != -1)
          {
            swift_once();
          }

          v23 = sub_22BA0FEFC();
          sub_22B936CA8(v23, qword_28141AD10);
          v24 = a1;
          v25 = sub_22BA0FEDC();
          v26 = sub_22BA1042C();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            __dst[0] = v28;
            *v27 = 136315138;
            v29 = [v24 guid];
            if (v29)
            {
              v58 = v28;
              v30 = v29;
              v31 = sub_22BA0FFFC();
              v33 = v32;

              v28 = v58;
            }

            else
            {
              v31 = 0x646975672D6F6ELL;
              v33 = 0xE700000000000000;
            }

            v46 = sub_22B99153C(v31, v33, __dst);

            *(v27 + 4) = v46;
            _os_log_impl(&dword_22B92A000, v25, v26, "Transfer %s: stickerInfo present locally but missing in cloud", v27, 0xCu);
            sub_22B936C4C(v28);
            MEMORY[0x23189ADD0](v28, -1, -1);
            MEMORY[0x23189ADD0](v27, -1, -1);
          }

          v47 = type metadata accessor for AttachmentRecord(0);
          memcpy(__dst, (v3 + *(v47 + 52)), sizeof(__dst));
          if (sub_22B97CA68(__dst) != 1)
          {
            v48 = __dst[32] >> 60 == 15 ? 0 : sub_22BA0FC8C();
            v49 = JWDecodeDictionary();

            if (v49)
            {
              v50 = sub_22BA0FF6C();

              sub_22B98963C(v50);
              v52 = v51;

              if (v52)
              {
                v53 = sub_22BA0FFFC();
                if (*(v52 + 16))
                {
                  v55 = sub_22B990A58(v53, v54);
                  v57 = v56;

                  if (v57)
                  {
                    sub_22B936B20(*(v52 + 56) + 32 * v55, v62);

                    sub_22B936BEC(v62, &unk_27D8D5A30, qword_22BA13390);
                    goto LABEL_19;
                  }
                }

                else
                {
                }
              }
            }
          }

          memset(v62, 0, 32);
          sub_22B936BEC(v62, &unk_27D8D5A30, qword_22BA13390);
          return 1;
        }
      }

      sub_22B9580C4(__dst);
    }

LABEL_19:
    v34 = [a1 previewGenerationVersion];
    if ([a2 previewGenerationVersion] >= v34)
    {
      return 0;
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v35 = sub_22BA0FEFC();
    sub_22B936CA8(v35, qword_28141AD10);
    v36 = a1;
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1042C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_31;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    __dst[0] = v11;
    *v10 = 136315138;
    v37 = [v36 guid];
    if (v37)
    {
      v38 = v37;
      v39 = sub_22BA0FFFC();
      v41 = v40;
    }

    else
    {
      v39 = 0x646975672D6F6ELL;
      v41 = 0xE700000000000000;
    }

    v43 = sub_22B99153C(v39, v41, __dst);

    *(v10 + 4) = v43;
    v44 = "Transfer %s: preview gen ver is newer than cloud";
    goto LABEL_30;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v6 = sub_22BA0FEFC();
  sub_22B936CA8(v6, qword_28141AD10);
  v7 = a1;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1042C();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_31;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  __dst[0] = v11;
  *v10 = 136315138;
  v12 = [v7 guid];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22BA0FFFC();
    v16 = v15;
  }

  else
  {
    v14 = 0x646975672D6F6ELL;
    v16 = 0xE700000000000000;
  }

  v45 = sub_22B99153C(v14, v16, __dst);

  *(v10 + 4) = v45;
  v44 = "Transfer %s: existing asset is preferred over cloud";
LABEL_30:
  _os_log_impl(&dword_22B92A000, v8, v9, v44, v10, 0xCu);
  sub_22B936C4C(v11);
  MEMORY[0x23189ADD0](v11, -1, -1);
  MEMORY[0x23189ADD0](v10, -1, -1);
LABEL_31:

  return 1;
}

id sub_22B97B858()
{
  v16[40] = *MEMORY[0x277D85DE8];
  v1 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14[-v2];
  v4 = sub_22BA0FC4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AttachmentRecord(0);
  memcpy(v16, (v0 + *(v8 + 52)), 0x140uLL);
  if (sub_22B97CA68(v16) == 1 || !v16[39] || !*(v16[39] + 16))
  {
    goto LABEL_8;
  }

  sub_22B990A58(6386028, 0xE300000000000000);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_9;
  }

  sub_22BA0FC1C();

  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = [objc_opt_self() defaultManager];
    v15 = 0;
    sub_22BA0FB7C();
    v11 = sub_22BA0FFCC();

    v12 = [v10 fileExistsAtPath:v11 isDirectory:&v15];

    (*(v5 + 8))(v7, v4);
    return v12;
  }

LABEL_9:
  sub_22B936BEC(v3, &qword_27D8D5210, qword_22BA16040);
  return 0;
}

BOOL sub_22B97BB34(void *a1)
{
  if ((sub_22B97B858() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 localPath];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_22B97BE3C(v4, v6);
  v9 = v8;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v10 = sub_22BA0E7BC();
  v12 = sub_22B97BE3C(v10, v11);
  v14 = v13;

  return (v12 & 1) == 0 || v14 < v9;
}

id sub_22B97BBF8(void *a1, void *a2)
{
  if ((sub_22B97B858() & 1) != 0 && sub_22B97BCE0(a1))
  {
    [a1 _setTransferState_];
    sub_22B9ABBA8(v2);
  }

  v5 = [a2 previewGenerationVersion];
  result = [a1 previewGenerationVersion];
  if (result < v5)
  {
    [a1 setPreviewGenerationState_];
    v7 = [a2 previewGenerationVersion];

    return [a1 setPreviewGenerationVersion_];
  }

  return result;
}

BOOL sub_22B97BCE0(void *a1)
{
  if ((sub_22B97B858() & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for AttachmentRecord(0);
  memcpy(v23, (v1 + *(v3 + 52)), sizeof(v23));
  if (sub_22B97CA68(v23) != 1)
  {
    v4 = v23[39];
    if (v23[39])
    {
      if (*(v23[39] + 16))
      {

        v5 = sub_22B990A58(6386028, 0xE300000000000000);
        if (v6)
        {
          v7 = (*(v4 + 56) + (v5 << 6));
          v9 = *v7;
          v8 = v7[1];

          v10 = v9;
          goto LABEL_9;
        }
      }
    }
  }

  v10 = 0;
  v8 = 0;
LABEL_9:
  v11 = sub_22B97BE3C(v10, v8);
  v13 = v12;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v14 = [a1 localPath];
  if (v14)
  {
    v15 = v14;
    v16 = sub_22BA0FFFC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v20 = sub_22B97BE3C(v16, v18);
  v22 = v21;

  return (v20 & 1) == 0 || v22 < v13;
}

uint64_t sub_22B97BE3C(uint64_t a1, unint64_t a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = sub_22BA0FFCC();
  v7 = [v5 fileExistsAtPath_];

  if (v7)
  {
    v8 = [v4 defaultManager];
    v9 = sub_22BA0FFCC();
    v24[0] = 0;
    v10 = [v8 attributesOfItemAtPath:v9 error:v24];

    v11 = v24[0];
    if (v10)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_22B97CB30();
      v12 = sub_22BA0FF6C();
      v13 = v11;

      if (*(v12 + 16) && (v14 = sub_22B990C6C(*MEMORY[0x277CCA1C0]), (v15 & 1) != 0))
      {
        sub_22B936B20(*(v12 + 56) + 32 * v14, v24);

        if (swift_dynamicCast())
        {
          return 1;
        }
      }

      else
      {
      }
    }

    else
    {
      v17 = v24[0];
      v18 = sub_22BA0FB6C();

      swift_willThrow();
      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v19 = sub_22BA0FEFC();
      sub_22B936CA8(v19, qword_28141AD10);

      v20 = sub_22BA0FEDC();
      v21 = sub_22BA1044C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_22B99153C(a1, a2, v24);
        _os_log_impl(&dword_22B92A000, v20, v21, "Failed to get file attributes of item at: %s", v22, 0xCu);
        sub_22B936C4C(v23);
        MEMORY[0x23189ADD0](v23, -1, -1);
        MEMORY[0x23189ADD0](v22, -1, -1);
      }
    }
  }

  return 0;
}

uint64_t sub_22B97C158(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_22BA0FC4C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B97C268, 0, 0);
}

uint64_t sub_22B97C268(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[5];
  sub_22BA0E688(v4);
  v5 = *(v3 + 48);
  if (v5(v4, 1, v2) == 1)
  {
    sub_22B936BEC(v1[5], &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    v6 = v1[9];
    v7 = v1[2];
    (*(v1[7] + 32))(v6, v1[5], v1[6]);
    v8 = sub_22B9358B4(v7, v7[3]);
    sub_22B964DE0(v6, *v8);
    (*(v1[7] + 8))(v1[9], v1[6]);
  }

  v9 = v1[6];
  v10 = v1[4];
  sub_22BA0E698(v10);
  if (v5(v10, 1, v9) == 1)
  {
    sub_22B936BEC(v1[4], &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    v11 = v1[8];
    v12 = v1[2];
    (*(v1[7] + 32))(v11, v1[4], v1[6]);
    v13 = sub_22B9358B4(v12, v12[3]);
    sub_22B964DE0(v11, *v13);
    (*(v1[7] + 8))(v1[8], v1[6]);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_22B97C71C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B97C7AC;

  return sub_22B979220();
}

uint64_t sub_22B97C7AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v7 = sub_22B97C958;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v7 = sub_22B97C8E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B97C8E0()
{
  sub_22B97AE60(v0[6], v0[5]);

  v1 = v0[1];

  return v1(1);
}

uint64_t sub_22B97C958()
{
  sub_22B97AE60(0, 0);
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B97C9D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B943E68;

  return sub_22B97C158(a1);
}

uint64_t sub_22B97CA68(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22B97CA80()
{
  result = qword_281414B70;
  if (!qword_281414B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B70);
  }

  return result;
}

uint64_t sub_22B97CACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B97CB30()
{
  result = qword_281414B28;
  if (!qword_281414B28)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414B28);
  }

  return result;
}

unint64_t sub_22B97CB9C()
{
  result = qword_27D8D52D0;
  if (!qword_27D8D52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52D0);
  }

  return result;
}

uint64_t sub_22B97CC1C()
{
  type metadata accessor for CloudState();
  if (sub_22BA0876C())
  {
    sub_22B944A5C();
    swift_allocError();
    *v1 = xmmword_22BA16130;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 8);

    return v4(0, 0);
  }
}

uint64_t sub_22B97CD04()
{

  return swift_deallocClassInstance();
}

unint64_t sub_22B97CD7C()
{
  result = qword_27D8D52D8;
  if (!qword_27D8D52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52D8);
  }

  return result;
}

uint64_t sub_22B97CDE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B9349C8(&qword_27D8D52E8, &qword_22BA16320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B97D320();
  sub_22BA10D9C();
  v12 = 0;
  sub_22BA10BDC();
  if (!v3)
  {
    v11 = 1;
    sub_22BA10BDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22B97CF68()
{
  if (*v0)
  {
    return 0x736572756C696166;
  }

  else
  {
    return 0x6573736563637573;
  }
}

uint64_t sub_22B97CFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573736563637573 && a2 == 0xE900000000000073;
  if (v6 || (sub_22BA10C6C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22B97D08C(uint64_t a1)
{
  v2 = sub_22B97D320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B97D0C8(uint64_t a1)
{
  v2 = sub_22B97D320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B97D130@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22B97D178(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_22B97D178(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D52E0, &qword_22BA16318);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B97D320();
  sub_22BA10D8C();
  v8[15] = 0;
  v6 = sub_22BA10B2C();
  v8[14] = 1;
  sub_22BA10B2C();
  (*(v3 + 8))(v5, v2);
  sub_22B936C4C(a1);
  return v6;
}

unint64_t sub_22B97D320()
{
  result = qword_281416660;
  if (!qword_281416660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416660);
  }

  return result;
}

unint64_t sub_22B97D388()
{
  result = qword_27D8D52F0;
  if (!qword_27D8D52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52F0);
  }

  return result;
}

unint64_t sub_22B97D3E0()
{
  result = qword_281416650;
  if (!qword_281416650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416650);
  }

  return result;
}

unint64_t sub_22B97D438()
{
  result = qword_281416658;
  if (!qword_281416658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416658);
  }

  return result;
}

unint64_t sub_22B97D4B0()
{
  result = qword_27D8D52F8;
  if (!qword_27D8D52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52F8);
  }

  return result;
}

uint64_t sub_22B97D504(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22B97D524, 0, 0);
}

uint64_t sub_22B97D524()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_22B97D554, v1, 0);
}

uint64_t sub_22B97D554()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v1 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 40);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 184) = v2;
  swift_endAccess();
  v7 = v6;

  return MEMORY[0x2822009F8](sub_22B97D668, 0, 0);
}

uint64_t sub_22B97D668()
{
  sub_22B9358B4((*(v0 + 48) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 48) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v1 = sub_22BA09CBC();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = sub_22BA0FB5C();
    [v2 appendError_];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 8);

  return v4();
}

id sub_22B97D720()
{
  sub_22B9806A0();
  v0 = sub_22BA10C3C();
  if (!v0)
  {
    v0 = swift_allocError();
  }

  v1 = v0;
  v2 = sub_22BA0FB5C();

  v3 = [v2 userInfo];
  v4 = sub_22BA0FF6C();

  v5 = sub_22BA0FFFC();
  if (!*(v4 + 16))
  {

    goto LABEL_8;
  }

  v7 = sub_22B990A58(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_22B936B20(*(v4 + 56) + 32 * v7, &v20);

  sub_22B958B58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v20 = [v2 code];
    v12 = sub_22BA10C1C();
    goto LABEL_10;
  }

  [v2 code];
  v20 = sub_22BA10C1C();
  v21 = v10;
  MEMORY[0x231899730](47, 0xE100000000000000);
  [v19 code];
  v11 = sub_22BA10C1C();
  MEMORY[0x231899730](v11);

  v12 = v20;
  v13 = v21;
LABEL_10:
  v20 = v12;
  v21 = v13;
  MEMORY[0x231899730](8250, 0xE200000000000000);
  v14 = [v2 domain];
  v15 = sub_22BA0FFFC();
  v17 = v16;

  MEMORY[0x231899730](v15, v17);

  return v20;
}

uint64_t sub_22B97D99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B980888;

  return sub_22B97DA50(a1, a2, a3, &off_283F54658);
}

uint64_t sub_22B97DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_22B97DA78, 0, 0);
}

uint64_t sub_22B97DA78()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v1 + 32);
  *(v0 + 120) = v3;
  v4 = v3(v2, v1);
  v5 = (*(v1 + 16))(v2, v1);
  *(v0 + 128) = v5;
  v8 = *(v5 + 2);
  *(v0 + 136) = v8;
  if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    *(v0 + 160) = 0;
    *(v0 + 168) = v9;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    *(v0 + 256) = v4 == 2;
    if (*(v5 + 2))
    {
      sub_22B935B38(v5 + 32, v0 + 16);
      v11 = *(v0 + 40);
      v10 = *(v0 + 48);
      sub_22B9358B4((v0 + 16), v11);
      v12 = swift_task_alloc();
      *(v0 + 176) = v12;
      *v12 = v0;
      v12[1] = sub_22B97DD3C;
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);

      return sub_22B97EDC0(v14, v13, v11, v10);
    }

    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v16 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  *(v0 + 200) = MEMORY[0x277D84F90];
  *(v0 + 208) = v17;
  if (v17)
  {
    v18 = *(v16 + 32);
    *(v0 + 216) = v18;
    if (v17 != 1)
    {
      v22 = *(v0 + 80);
      v23 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 224) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 232) = *(v22 + v23);
      v24 = v18;
      *(v0 + 240) = 1;
      v25 = *(v0 + 232);
      v26 = *(*(v0 + 200) + 40);
      *(v0 + 248) = v26;

      v27 = v26;
      v5 = sub_22B97E1B4;
      v6 = v25;
      v7 = 0;

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    v19 = v18;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {

    v21 = *(v0 + 8);

    return v21(0, v4 == 2);
  }
}

uint64_t sub_22B97DD3C(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 257) = a2;
  *(v5 + 184) = v2;

  if (v2)
  {
    sub_22B936C4C((v5 + 16));
    v6 = sub_22B97E54C;
  }

  else
  {
    *(v5 + 192) = a1;
    sub_22B936C4C((v5 + 16));
    v6 = sub_22B97DE78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B97DE78(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 192);
  v5 = *(v3 + 152);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_31;
  }

  a1 = (*(v3 + 120))(*(v3 + 96));
  if (a1)
  {
    if (a1 == 1)
    {
      if (*(v3 + 257))
      {

        v7 = 1;
        goto LABEL_14;
      }

      v9 = sub_22BA10C6C();

      if (v9)
      {
        v7 = 1;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (*(v3 + 257))
    {
      v8 = sub_22BA10C6C();

      if ((v8 & 1) == 0)
      {
LABEL_11:
        v7 = *(v3 + 256);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v7 = 0;
LABEL_14:
  v10 = *(v3 + 160) + 1;
  if (v10 != *(v3 + 136))
  {
    *(v3 + 152) = v6;
    *(v3 + 160) = v10;
    *(v3 + 144) = v6;
    *(v3 + 256) = v7;
    v17 = *(v3 + 128);
    if (v10 < *(v17 + 16))
    {
      sub_22B935B38(v17 + 40 * v10 + 32, v3 + 16);
      v19 = *(v3 + 40);
      v18 = *(v3 + 48);
      sub_22B9358B4((v3 + 16), v19);
      v20 = swift_task_alloc();
      *(v3 + 176) = v20;
      *v20 = v3;
      v20[1] = sub_22B97DD3C;
      v22 = *(v3 + 80);
      v21 = *(v3 + 88);

      return sub_22B97EDC0(v22, v21, v19, v18);
    }

LABEL_31:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v11 = *(v3 + 168);

  *(v3 + 200) = v11;
  v12 = *(v11 + 16);
  *(v3 + 208) = v12;
  if (v12)
  {
    v13 = *(v11 + 32);
    *(v3 + 216) = v13;
    if (v12 == 1)
    {
      v14 = v13;
      swift_willThrow();

      v15 = *(v3 + 8);

      return v15();
    }

    v24 = *(v3 + 80);
    v25 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
    *(v3 + 224) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    *(v3 + 232) = *(v24 + v25);
    v26 = v13;
    *(v3 + 240) = 1;
    v27 = *(v3 + 232);
    v28 = *(*(v3 + 200) + 40);
    *(v3 + 248) = v28;

    v29 = v28;
    a1 = sub_22B97E1B4;
    a2 = v27;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v23 = *(v3 + 8);

  return v23(v6, v7);
}

uint64_t sub_22B97E1B4()
{
  v1 = *(v0 + 232);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 232);
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v9 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v7 + 184) = v2;
  swift_endAccess();
  v8 = v6;

  return MEMORY[0x2822009F8](sub_22B97E2C8, 0, 0);
}

uint64_t sub_22B97E2C8()
{
  v24 = v0;
  v1 = (*(v0 + 80) + *(v0 + 224));
  v2 = *(*sub_22B9358B4(v1, v1[3]) + 56);
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 208);
    v5 = *(v0 + 240) + 1;
    swift_unknownObjectRetain();
    v6 = sub_22BA0FB5C();
    [v2 appendError_];
    swift_unknownObjectRelease();

    if (v5 == v4)
    {
LABEL_3:

      swift_willThrow();

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD40);
    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1044C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      v14 = sub_22B97D720();
      v16 = sub_22B99153C(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v10, v11, "Encountered error setting sync date: %s", v12, 0xCu);
      sub_22B936C4C(v13);
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    v17 = *(v0 + 208);
    v18 = *(v0 + 240) + 1;

    if (v18 == v17)
    {
      goto LABEL_3;
    }
  }

  v19 = *(v0 + 232);
  v20 = *(v0 + 240) + 1;
  *(v0 + 240) = v20;
  v21 = *(*(v0 + 200) + 8 * v20 + 32);
  *(v0 + 248) = v21;
  v22 = v21;

  return MEMORY[0x2822009F8](sub_22B97E1B4, v19, 0);
}

uint64_t sub_22B97E54C()
{
  if (((*(*(v0 + 104) + 24))(*(v0 + 96)) & 1) == 0)
  {

    swift_willThrow();
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40(0, v4[2] + 1, 1, *(v0 + 168));
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40((v5 > 1), v6 + 1, 1, v4);
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v7 = *(v0 + 184);
  v4[2] = v6 + 1;
  v8 = (v4 + 4);
  v4[v6 + 4] = v7;
  v9 = *(v0 + 160) + 1;
  if (v9 == *(v0 + 136))
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 256);

    *(v0 + 200) = v4;
    v12 = v4[2];
    *(v0 + 208) = v12;
    if (v12)
    {
      v13 = *v8;
      *(v0 + 216) = *v8;
      if (v12 == 1)
      {
        v14 = v13;
        swift_willThrow();

LABEL_11:
        v15 = *(v0 + 8);

        return v15();
      }

      v24 = *(v0 + 80);
      v25 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 224) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 232) = *(v24 + v25);
      v26 = v13;
      *(v0 + 240) = 1;
      v27 = *(v0 + 232);
      v28 = *(*(v0 + 200) + 40);
      *(v0 + 248) = v28;

      v29 = v28;
      isUniquelyReferenced_nonNull_native = sub_22B97E1B4;
      v2 = v27;
      v3 = 0;

      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v2, v3);
    }

    v23 = *(v0 + 8);

    return v23(v10, v11);
  }

  else
  {
    *(v0 + 160) = v9;
    *(v0 + 168) = v4;
    v17 = *(v0 + 128);
    if (v9 >= *(v17 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v2, v3);
    }

    sub_22B935B38(v17 + 40 * v9 + 32, v0 + 16);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    sub_22B9358B4((v0 + 16), v19);
    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = sub_22B97DD3C;
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);

    return sub_22B97EDC0(v22, v21, v19, v18);
  }
}

uint64_t sub_22B97E86C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7972746572;
  }

  else
  {
    v3 = 1701736292;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7972746572;
  }

  else
  {
    v5 = 1701736292;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B97E908()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B97E980(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B97E9E4(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B97EA58@<X0>(char *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22B97EAB8(uint64_t *a1@<X8>)
{
  v2 = 1701736292;
  if (*v1)
  {
    v2 = 0x7972746572;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22B97EAEC()
{
  v1 = 0xD000000000000019;
  v2 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
  v3 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
  sub_22B9358B4((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v2);
  if ((*(v3 + 48))(v2, v3))
  {
    v4 = 0;
    v5 = "Syncing has been disabled";
    v1 = 0xD00000000000001BLL;
  }

  else
  {
    if (*(*sub_22B9358B4((v0 + 16), *(v0 + 40)) + 100))
    {
      sub_22B9358B4((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
      v5 = "User cancelled sync, aborting";
      if (sub_22BA08808())
      {
        v4 = 1;
        goto LABEL_17;
      }

      v4 = 1;
      if ((sub_22B92DA70(1, 0) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = 0x100000000;
    if (!*(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 4))
    {
      v6 = 0;
    }

    v7 = v6 | (*(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 3) << 24);
    v8 = 0x10000;
    if (!*(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 2))
    {
      v8 = 0;
    }

    v9 = 256;
    if (!*(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 1))
    {
      v9 = 0;
    }

    if (sub_22B9802D0(v0, v7 | v8 | v9 | *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy)))
    {
      sub_22B9358B4((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
      result = sub_22BA08920();
      if ((result & 1) == 0)
      {
        return result;
      }

      v5 = "device policy criteria";
      v1 = 0xD00000000000001DLL;
      v4 = 7;
    }

    else
    {
      v5 = "lay";
      v1 = 0xD000000000000026;
      v4 = 4;
    }
  }

LABEL_17:
  v11 = *MEMORY[0x277D19D08];
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13CB0;
  *(inited + 32) = sub_22BA0FFFC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v13;
  *(inited + 48) = v1;
  *(inited + 56) = v5 | 0x8000000000000000;
  v14 = v11;
  sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9806F4(inited + 32);
  v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v16 = sub_22BA0FF5C();

  [v15 initWithDomain:v14 code:v4 userInfo:v16];

  return swift_willThrow();
}

uint64_t sub_22B97EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v12 = (*(a4 + 40) + **(a4 + 40));
  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = sub_22B97EEFC;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_22B97EEFC()
{

  return MEMORY[0x2822009F8](sub_22B97EFF8, 0, 0);
}

uint64_t sub_22B97EFF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v0[5];
  v5 = *(v4 + 24);
  v0[8] = v5;
  v0[9] = (v4 + 24) & 0xFFFFFFFFFFFFLL | 0xB99B000000000000;
  v5(v3, v1, v2);
  v6 = v0[4];
  v7 = *(v0[5] + 32);
  v0[10] = v7;
  v0[11] = 0;
  v7(v0[2], v0[3], v6);
  v14 = (*(v0[5] + 48) + **(v0[5] + 48));
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_22B97F1A4;
  v9 = v0[5];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return v14(v12, v10, v11, v9);
}

uint64_t sub_22B97F1A4(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *v3;
  *(v5 + 136) = a2;
  *(v5 + 104) = v2;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v5 + 112) = a1;

    return MEMORY[0x2822009F8](sub_22B97F2F8, 0, 0);
  }
}

void sub_22B97F2F8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = v2 + v1;
  *(v0 + 120) = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
    return;
  }

  if (((*(*(v0 + 40) + 8))(*(v0 + 32)) & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((*(v0 + 136) & 1) == 0)
  {
    v4 = sub_22BA10C6C();

    if (v4)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = (*(*(v0 + 40) + 56) + **(*(v0 + 40) + 56));
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_22B97F5F8;
    v8 = *(v0 + 40);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = v14;

    goto LABEL_13;
  }

LABEL_6:
  v5 = *(v0 + 104);
  (*(v0 + 64))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (!v5)
  {
    *(v0 + 88) = v3;
    (*(v0 + 80))(*(v0 + 16), *(v0 + 24), *(v0 + 32));
    v15 = (*(*(v0 + 40) + 48) + **(*(v0 + 40) + 48));
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = sub_22B97F1A4;
    v8 = *(v0 + 40);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = v15;

LABEL_13:
    v12(v11, v9, v10, v8);
    return;
  }

  v6 = *(v0 + 8);

  v6();
}

uint64_t sub_22B97F5F8()
{

  return MEMORY[0x2822009F8](sub_22B97F6F4, 0, 0);
}

uint64_t sub_22B97F6F4()
{
  v1 = (*(*(v0 + 40) + 16))(*(v0 + 32));
  if (v1)
  {
    v3 = v2;
    v4 = v1;
    v1();
    sub_22B979210(v4, v3);
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 120);
  v7 = *(v0 + 136) & 1;

  return v5(v6, v7);
}

unint64_t sub_22B97F79C()
{
  result = qword_27D8D5300;
  if (!qword_27D8D5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5300);
  }

  return result;
}

uint64_t sub_22B97F808()
{
  v1 = *(v0 + 16);
  sub_22B930C20(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_22B97F83C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = *(v2 + 32);
  v8 = *(v2 + 33);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B947814;

  return sub_22B944BBC(a1, a2, v6, v7, v8);
}

char *sub_22B97F934(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5338, &qword_22BA16718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B97FA40(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B9349C8(&qword_27D8D5310, &unk_22BA165B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B97FB74(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B97FC80(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B9349C8(&qword_27D8D5180, &unk_22BA15390);
  v10 = *(type metadata accessor for DatabaseRecord(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DatabaseRecord(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22B97FE58(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5330, &qword_22BA16708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22B97FF5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B9349C8(&qword_27D8D5320, &qword_22BA166F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B9349C8(&qword_27D8D5328, &qword_22BA16700);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B980090(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B9349C8(&qword_27D8D5318, qword_22BA165D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B9801C4(uint64_t a1, uint64_t a2)
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

  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22B980248(uint64_t a1, uint64_t a2)
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

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_22B9802D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*sub_22B9358B4((a1 + 16), *(a1 + 40)) + 17);
    if (v3 <= 4 || v3 > 6 || v3 == 5)
    {
      v4 = sub_22BA10C6C();

      if ((v4 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v5 = sub_22B9E0FF4();
  if ((a2 & 0xFF000100) == 0x1000100)
  {
    if (!v5)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v13 = sub_22BA0FEFC();
      sub_22B936CA8(v13, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v8 = sub_22BA1044C();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_25;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Device Policy Violation: User was on wifi then network disconnected";
      goto LABEL_24;
    }

    if (v5 == 2)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v8 = sub_22BA1044C();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_25;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Device Policy Violation: User was on wifi then switched to cellular";
LABEL_24:
      _os_log_impl(&dword_22B92A000, v7, v8, v10, v9, 2u);
      MEMORY[0x23189ADD0](v9, -1, -1);
LABEL_25:

      return 0;
    }
  }

  v11 = 1;
  if ((a2 & 0x100010000) == 0x10000 && (v5 & 0x100) != 0)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device Policy Violation: User was charging then went on battery";
    goto LABEL_24;
  }

  return v11;
}

unint64_t sub_22B9806A0()
{
  result = qword_27D8D5308;
  if (!qword_27D8D5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5308);
  }

  return result;
}

uint64_t sub_22B9806F4(uint64_t a1)
{
  v2 = sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_22B98076C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B980780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B9807C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B980830()
{
  result = qword_27D8D5340;
  if (!qword_27D8D5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5340);
  }

  return result;
}

uint64_t type metadata accessor for MessageUpdateRecord(uint64_t a1)
{
  result = qword_281415518;
  if (!qword_281415518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B980908(uint64_t a1)
{
  sub_22B9651AC(319, &qword_281414C40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22B934C68(319);
    if (v2 <= 0x3F)
    {
      sub_22B9651AC(319, &unk_281416C20, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22B9809D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v42 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = v37 - v6;
  v7 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v37 - v9;
  v11 = sub_22B9349C8(&qword_27D8D5348, &unk_22BA16868);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  updated = type metadata accessor for MessageUpdateRecord(0);
  MEMORY[0x28223BE20](updated);
  v16 = (v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B9358B4(a1, a1[3]);
  sub_22B960C9C();
  v17 = v47;
  sub_22BA10D8C();
  if (v17)
  {
    return sub_22B936C4C(a1);
  }

  v47 = v13;
  v38 = updated;
  v39 = v16;
  v40 = v11;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9358F8();
  sub_22BA10D8C();
  LOBYTE(v48) = 0;
  v18 = sub_22BA10ACC();
  v19 = v39;
  *v39 = v18;
  v19[1] = v20;
  LOBYTE(v48) = 1;
  v21 = v10;
  v19[2] = sub_22BA10ACC();
  v19[3] = v22;
  LOBYTE(v48) = 2;
  v37[1] = 0;
  v19[4] = sub_22BA10ACC();
  v19[5] = v23;
  LOBYTE(v48) = 3;
  v19[6] = sub_22BA10ACC();
  v19[7] = v24;
  LOBYTE(v48) = 4;
  v19[8] = sub_22BA10ACC();
  v19[9] = v25;
  LOBYTE(v48) = 5;
  v19[10] = sub_22BA10ACC();
  v19[11] = v26;
  sub_22BA0FD8C();
  LOBYTE(v48) = 6;
  v37[0] = sub_22B9817C8(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_22BA10AFC();
  v27 = v38;
  sub_22B935A74(v43, v39 + v38[10]);
  LOBYTE(v48) = 7;
  v28 = v42;
  sub_22BA10AFC();
  sub_22B935A74(v28, v39 + v27[11]);
  LOBYTE(v48) = 8;
  v29 = sub_22BA10ACC();
  v30 = (v39 + v38[12]);
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v48) = 0;
  v32 = sub_22BA10ACC();
  v33 = (v39 + v38[13]);
  *v33 = v32;
  v33[1] = v34;
  v49 = 1;
  sub_22B9363C8();
  sub_22BA10AFC();
  (*(v45 + 8))(v21, v44);
  (*(v46 + 8))(v47, v40);
  v35 = v39;
  *(v39 + v38[14]) = v48;
  sub_22B981810(v35, v41);
  sub_22B936C4C(0);
  return sub_22B981874(v35);
}

uint64_t sub_22B981330(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 28789;
  }

  else
  {
    v2 = 29813;
  }

  if (*a2)
  {
    v3 = 28789;
  }

  else
  {
    v3 = 29813;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22BA10C6C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22B9813A0()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B981400(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B981444(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9814A0@<X0>(char *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22B981500(uint64_t *a1@<X8>)
{
  v2 = 29813;
  if (*v1)
  {
    v2 = 28789;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_22B981520()
{
  if (*v0)
  {
    return 28789;
  }

  else
  {
    return 29813;
  }
}

uint64_t sub_22B98153C@<X0>(char *a3@<X8>)
{
  v4 = sub_22BA10AAC();

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

uint64_t sub_22B9815A0(uint64_t a1)
{
  v2 = sub_22B960C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9815DC(uint64_t a1)
{
  v2 = sub_22B960C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B981630(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5018, &qword_22BA14750);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22B9358B4(a1, a1[3]);
  sub_22B960C9C();
  sub_22BA10D9C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B981744(uint64_t a1)
{
  *(a1 + 8) = sub_22B9817C8(&qword_281415530, type metadata accessor for MessageUpdateRecord, &unk_22BA1681C);
  result = sub_22B9817C8(&qword_281415538, type metadata accessor for MessageUpdateRecord, &unk_22BA167F4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9817C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B981810(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for MessageUpdateRecord(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_22B981874(uint64_t a1)
{
  updated = type metadata accessor for MessageUpdateRecord(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_22B9818E4()
{
  result = qword_27D8D5350;
  if (!qword_27D8D5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5350);
  }

  return result;
}

unint64_t sub_22B98193C()
{
  result = qword_281415540;
  if (!qword_281415540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415540);
  }

  return result;
}

unint64_t sub_22B981994()
{
  result = qword_281415548;
  if (!qword_281415548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415548);
  }

  return result;
}

uint64_t sub_22B9819E8(uint64_t a1)
{
  v2 = sub_22BA0FB5C();
  v3 = [v1 wasRecordArchived_];

  return v3 ^ 1;
}

uint64_t sub_22B981A2C()
{
  qword_2814160F0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_22B981A68()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_22B981AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B981B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B981B98(unint64_t a1, void *a2)
{
  v28 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = MEMORY[0x277D84F90];
    v22 = a1 & 0xC000000000000001;
    v20 = a1;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = a1 + 32;
    v23 = v3;
    v24 = a2;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x231899FA0](v4, v20);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v26 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;
      if ((*a2 & 0xC000000000000001) == 0)
      {
        if (*(v9 + 16))
        {
          sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);

          v12 = sub_22BA1071C();
          v13 = -1 << *(v9 + 32);
          v14 = v12 & ~v13;
          if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
          {
            v15 = ~v13;
            while (1)
            {
              v16 = *(*(v9 + 48) + 8 * v14);
              v17 = sub_22BA1072C();

              if (v17)
              {
                break;
              }

              v14 = (v14 + 1) & v15;
              if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            v3 = v23;
            a2 = v24;
            v5 = v22;
            v6 = v25;
            goto LABEL_5;
          }

LABEL_18:

          v3 = v23;
          a2 = v24;
          v5 = v22;
          v6 = v25;
        }

LABEL_19:
        sub_22B9FF448(&v27, v7);

        MEMORY[0x231899830]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22BA1022C();
          v6 = v25;
        }

        a1 = sub_22BA1026C();
        v21 = v28;
        goto LABEL_5;
      }

      v10 = v7;
      v11 = sub_22BA1083C();

      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v18 = a1;
    v3 = sub_22BA1080C();
    a1 = v18;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22B981E44(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22BA109CC();
    v4 = v1 + 64;
    result = sub_22BA107CC();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 48) + 8 * v5);
      sub_22BA1099C();
      sub_22BA109DC();
      v1 = v19;
      sub_22BA109EC();
      result = sub_22BA109AC();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_22B951A48(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_22B951A48(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
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
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}