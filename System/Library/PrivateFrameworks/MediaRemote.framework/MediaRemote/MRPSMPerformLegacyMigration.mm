@interface MRPSMPerformLegacyMigration
@end

@implementation MRPSMPerformLegacyMigration

void ___MRPSMPerformLegacyMigration_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a2;
  LODWORD(a2) = [v6 startEvent:@"Finalize" role:1];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___MRPSMPerformLegacyMigration_block_invoke_2;
  v31[3] = &unk_1E769D978;
  v8 = a1[4];
  v34 = a2;
  v32 = v8;
  v33 = v5;
  v9 = v5;
  v10 = MEMORY[0x1A58E3570](v31);
  v11 = [a1[5] origin];
  if ([v11 isLocal])
  {
    v12 = 7.0;
  }

  else
  {
    v12 = 15.0;
  }

  v13 = [MRBlockGuard alloc];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [a1[4] requestID];
  v16 = [v14 stringWithFormat:@"endPlaybackSessionMigration<%@>", v15];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___MRPSMPerformLegacyMigration_block_invoke_3;
  v28[3] = &unk_1E769BCD0;
  v29 = a1[6];
  v17 = v10;
  v30 = v17;
  v18 = [(MRBlockGuard *)v13 initWithTimeout:v16 reason:v28 handler:v12];

  v19 = [a1[4] playbackSessionRequest];
  v20 = a1[5];
  v21 = a1[6];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___MRPSMPerformLegacyMigration_block_invoke_5;
  v24[3] = &unk_1E769D9A0;
  v25 = a1[4];
  v26 = v18;
  v27 = v17;
  v22 = v17;
  v23 = v18;
  MRMediaRemoteSendPlaybackSessionMigrateFinalize(v19, v7, 0, v20, v21, v24);
}

void ___MRPSMPerformLegacyMigration_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_4;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

void *___MRPSMPerformLegacyMigration_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 request];
  v5 = [v3 merge:v4];

  result = [*(a1 + 40) disarm];
  if (result)
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  return result;
}

void ___MRPSMPerformLegacyMigration_block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_7;
  v8[3] = &unk_1E769AB50;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = *(v4 + 16);
  v7 = v3;
  v6(v4, v7, v8);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_7(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void ___MRPSMPerformLegacyMigration_block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"GetPlaybackSession" role:2];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___MRPSMPerformLegacyMigration_block_invoke_9;
  v30[3] = &unk_1E769D978;
  v5 = *(a1 + 32);
  v33 = v4;
  v31 = v5;
  v32 = v3;
  v6 = v3;
  v7 = MEMORY[0x1A58E3570](v30);
  v8 = [*(a1 + 40) origin];
  if ([v8 isLocal])
  {
    v9 = 7.0;
  }

  else
  {
    v9 = 15.0;
  }

  v10 = [MRBlockGuard alloc];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [*(a1 + 32) requestID];
  v13 = [v11 stringWithFormat:@"requestPlaybackSession<%@>", v12];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___MRPSMPerformLegacyMigration_block_invoke_10;
  v27[3] = &unk_1E769BCD0;
  v28 = *(a1 + 48);
  v14 = v7;
  v29 = v14;
  v15 = [(MRBlockGuard *)v10 initWithTimeout:v13 reason:v27 handler:v9];

  v16 = [*(a1 + 32) playbackSessionRequest];
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___MRPSMPerformLegacyMigration_block_invoke_12;
  v22[3] = &unk_1E769D9C8;
  v23 = *(a1 + 32);
  v24 = v15;
  v19 = *(a1 + 56);
  v25 = v14;
  v26 = v19;
  v20 = v14;
  v21 = v15;
  MRMediaRemotePlaybackSessionRequestWithResponse(v16, v17, v18, v22);
}

void ___MRPSMPerformLegacyMigration_block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_11;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

void ___MRPSMPerformLegacyMigration_block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 playbackSession];
  v7 = [v6 data];

  [*(a1 + 32) setPlaybackSessionSize:{objc_msgSend(v7, "length")}];
  if ([*(a1 + 40) disarm])
  {
    v8 = [v11 playbackSession];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    (*(*(a1 + 48) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_13(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] startEvent:@"Prepare" role:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___MRPSMPerformLegacyMigration_block_invoke_14;
  v28[3] = &unk_1E769D978;
  v5 = a1[4];
  v31 = v4;
  v29 = v5;
  v30 = v3;
  v6 = v3;
  v7 = MEMORY[0x1A58E3570](v28);
  v8 = [a1[5] origin];
  if ([v8 isLocal])
  {
    v9 = 7.0;
  }

  else
  {
    v9 = 15.0;
  }

  v10 = [MRBlockGuard alloc];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [a1[4] requestID];
  v13 = [v11 stringWithFormat:@"beginPlaybackSessionMigration<%@>", v12];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___MRPSMPerformLegacyMigration_block_invoke_15;
  v25[3] = &unk_1E769BCD0;
  v26 = a1[6];
  v14 = v7;
  v27 = v14;
  v15 = [(MRBlockGuard *)v10 initWithTimeout:v13 reason:v25 handler:v9];

  v16 = [a1[4] playbackSessionRequest];
  v17 = a1[5];
  v18 = a1[6];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___MRPSMPerformLegacyMigration_block_invoke_17;
  v21[3] = &unk_1E769D9A0;
  v22 = a1[4];
  v23 = v15;
  v24 = v14;
  v19 = v14;
  v20 = v15;
  MRMediaRemoteSendPlaybackSessionMigrateBegin(v16, v17, v18, v21);
}

void ___MRPSMPerformLegacyMigration_block_invoke_14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_16;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

void *___MRPSMPerformLegacyMigration_block_invoke_17(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 request];
  v5 = [v3 merge:v4];

  result = [*(a1 + 40) disarm];
  if (result)
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  return result;
}

void ___MRPSMPerformLegacyMigration_block_invoke_18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = ___MRPSMPerformLegacyMigration_block_invoke_19;
    v65[3] = &unk_1E769D888;
    v66 = *(a1 + 32);
    v67 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 72);
    v68 = v4;
    v69 = v5;
    v6 = MEMORY[0x1A58E3570](v65);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = ___MRPSMPerformLegacyMigration_block_invoke_21;
    v63[3] = &unk_1E769DAE0;
    v64 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v7 = MEMORY[0x1A58E3570](v63);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = ___MRPSMPerformLegacyMigration_block_invoke_26;
    v57[3] = &unk_1E769DB30;
    v58 = *(a1 + 32);
    v8 = v7;
    v61 = v8;
    v59 = *(a1 + 56);
    v9 = *(a1 + 48);
    v10 = *(a1 + 88);
    v60 = v9;
    v62 = v10;
    v11 = MEMORY[0x1A58E3570](v57);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = ___MRPSMPerformLegacyMigration_block_invoke_31;
    v52[3] = &unk_1E769D888;
    v53 = *(a1 + 32);
    v54 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 80);
    v55 = v12;
    v56 = v13;
    v34 = MEMORY[0x1A58E3570](v52);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = ___MRPSMPerformLegacyMigration_block_invoke_33;
    v48[3] = &unk_1E769D9F0;
    v49 = *(a1 + 32);
    v50 = *(a1 + 40);
    v51 = *(a1 + 48);
    v14 = MEMORY[0x1A58E3570](v48);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = ___MRPSMPerformLegacyMigration_block_invoke_35;
    v42[3] = &unk_1E769DBD0;
    v43 = *(a1 + 32);
    v44 = *(a1 + 40);
    v45 = *(a1 + 48);
    v15 = v14;
    v16 = *(a1 + 96);
    v46 = v15;
    v47 = v16;
    v17 = MEMORY[0x1A58E3570](v42);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = ___MRPSMPerformLegacyMigration_block_invoke_134;
    v36[3] = &unk_1E769DC48;
    v37 = *(a1 + 32);
    v40 = v8;
    v38 = *(a1 + 56);
    v39 = *(a1 + 48);
    v41 = v15;
    v18 = v15;
    v35 = v8;
    v19 = MEMORY[0x1A58E3570](v36);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v6;
    v22 = [v6 copy];
    v23 = MEMORY[0x1A58E3570]();
    [v20 addObject:v23];

    v24 = [v11 copy];
    v25 = MEMORY[0x1A58E3570]();
    [v20 addObject:v25];

    v26 = [v21 copy];
    v27 = MEMORY[0x1A58E3570]();
    [v20 addObject:v27];

    v28 = [v34 copy];
    v29 = MEMORY[0x1A58E3570]();
    [v20 addObject:v29];

    v30 = [v17 copy];
    v31 = MEMORY[0x1A58E3570]();
    [v20 addObject:v31];

    v32 = [v19 copy];
    v33 = MEMORY[0x1A58E3570]();
    [v20 addObject:v33];

    MRPerformAsyncOperationsUntilError(v20, *(a1 + 64));
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) startEvent:@"GetPlaybackQueue" role:2];
  v4 = [[MRPlaybackQueueRequest alloc] initWithRange:0, 1];
  v5 = [*(a1 + 32) requestID];
  [(MRPlaybackQueueRequest *)v4 setRequestIdentifier:v5];

  [(MRPlaybackQueueRequest *)v4 setIncludeMetadata:1];
  v7 = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 contentItemWithOffset:0];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) endEventWithID:*(a1 + 56) error:a3];
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

id ___MRPSMPerformLegacyMigration_block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = ___MRPSMPerformLegacyMigration_block_invoke_22;
  v33[3] = &unk_1E769DA40;
  v5 = v3;
  v6 = *(a1 + 32);
  v34 = v5;
  v35 = v6;
  v7 = MEMORY[0x1A58E3570](v33);
  v8 = [*(*(*(a1 + 40) + 8) + 40) metadata];
  [v8 playbackRate];
  v10 = v9;

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___MRPSMPerformLegacyMigration_block_invoke_23;
  v29[3] = &unk_1E769DA68;
  v11 = v5;
  v12 = *(a1 + 40);
  v30 = v11;
  v31 = v12;
  v32 = v10;
  v13 = MEMORY[0x1A58E3570](v29);
  CalculatedPlaybackPosition = MRContentItemGetCalculatedPlaybackPosition(*(*(*(a1 + 40) + 8) + 40));
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___MRPSMPerformLegacyMigration_block_invoke_24;
  v25[3] = &unk_1E769DA90;
  v15 = v11;
  v16 = *(a1 + 40);
  v26 = v15;
  v27 = v16;
  v28 = CalculatedPlaybackPosition;
  v17 = MEMORY[0x1A58E3570](v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___MRPSMPerformLegacyMigration_block_invoke_25;
  v23[3] = &unk_1E769DAB8;
  v18 = v15;
  v24 = v18;
  v19 = MEMORY[0x1A58E3570](v23);
  [v4 setContentItem:*(*(*(a1 + 40) + 8) + 40)];
  if (v7[2](v7))
  {
    [v4 setPlaybackState:1];
  }

  if (v13[2](v13))
  {
    v20 = [*(*(*(a1 + 40) + 8) + 40) metadata];
    [v20 playbackRate];
    [v4 setPlaybackRate:v21];
  }

  if (v17[2](v17))
  {
    [v4 setPlaybackPosition:CalculatedPlaybackPosition];
  }

  if (v19[2](v19))
  {
    [v4 setAllowFadeTransition:1];
  }

  return v4;
}

BOOL ___MRPSMPerformLegacyMigration_block_invoke_22(uint64_t a1)
{
  if (([*(a1 + 32) playerOptions] & 4) != 0)
  {
    return 1;
  }

  if (([*(a1 + 32) playerOptions] & 2) == 0)
  {
    return 0;
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);

  return MRMediaRemotePlaybackStateIsAdvancing(v3);
}

BOOL ___MRPSMPerformLegacyMigration_block_invoke_23(uint64_t a1)
{
  if (([*(a1 + 32) playerOptions] & 0x20) != 0 && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "metadata"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isAlwaysLive"), v2, (v3 & 1) == 0))
  {
    return fmin(fabsf(*(a1 + 48)), fabsf(*(a1 + 48) + -1.0)) >= 0.001;
  }

  else
  {
    return 0;
  }
}

BOOL ___MRPSMPerformLegacyMigration_block_invoke_24(uint64_t a1)
{
  if (([*(a1 + 32) playerOptions] & 0x10) != 0 && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "metadata"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isAlwaysLive"), v2, (v3 & 1) == 0))
  {
    return fabs(*(a1 + 48)) >= 0.001;
  }

  else
  {
    return 0;
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"SendPlaybackSession" role:1];
  v5 = (*(*(a1 + 56) + 16))();
  [v5 setPlayerOptions:0];
  [v5 setEndpointOptions:0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___MRPSMPerformLegacyMigration_block_invoke_27;
  v29[3] = &unk_1E769D978;
  v6 = *(a1 + 32);
  v32 = v4;
  v30 = v6;
  v31 = v3;
  v7 = v3;
  v8 = MEMORY[0x1A58E3570](v29);
  v9 = [*(a1 + 40) origin];
  if ([v9 isLocal])
  {
    v10 = 7.0;
  }

  else
  {
    v10 = 15.0;
  }

  v11 = [MRBlockGuard alloc];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [*(a1 + 32) requestID];
  v14 = [v12 stringWithFormat:@"sendPlaybackSession<%@>", v13];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = ___MRPSMPerformLegacyMigration_block_invoke_28;
  v26[3] = &unk_1E769BCD0;
  v27 = *(a1 + 48);
  v15 = v8;
  v28 = v15;
  v16 = [(MRBlockGuard *)v11 initWithTimeout:v14 reason:v26 handler:v10];

  v17 = *(*(*(a1 + 64) + 8) + 40);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___MRPSMPerformLegacyMigration_block_invoke_30;
  v22[3] = &unk_1E769DB08;
  v23 = v16;
  v24 = *(a1 + 32);
  v25 = v15;
  v20 = v15;
  v21 = v16;
  MRMediaRemoteSendPlaybackSession(v17, v5, v18, v19, v22);
}

void ___MRPSMPerformLegacyMigration_block_invoke_27(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_29;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

void ___MRPSMPerformLegacyMigration_block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    v6 = [*(a1 + 40) merge:v7];
    (*(*(a1 + 48) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"GetPlaybackState" role:2];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___MRPSMPerformLegacyMigration_block_invoke_32;
  v9[3] = &unk_1E769DB58;
  v12 = *(a1 + 56);
  v7 = *(a1 + 32);
  v13 = v4;
  v10 = v7;
  v11 = v3;
  v8 = v3;
  MRMediaRemoteGetPlaybackStateForPlayer(v5, v6, v9);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_32(uint64_t a1, int a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  [*(a1 + 32) endEventWithID:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void ___MRPSMPerformLegacyMigration_block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) playerOptions] & 8) != 0)
  {
    v4 = [*(a1 + 32) startEvent:@"SendPause" role:2];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 32) requestID];
    v8 = MRMediaRemotePlaybackSessionMigratePlayerOptionsCopyDescription(8);
    v9 = [v6 stringWithFormat:@"migrationPlaybackSession<%@> for option %@", v7, v8];
    [v5 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v10 = [*(a1 + 32) requestID];
    [v5 setObject:v10 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];

    v11 = [MRPlayerPath alloc];
    v12 = [*(a1 + 40) origin];
    v13 = [(MRPlayerPath *)v11 initWithOrigin:v12 client:0 player:0];

    v14 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___MRPSMPerformLegacyMigration_block_invoke_34;
    v15[3] = &unk_1E769DB80;
    v16 = *(a1 + 32);
    v18 = v4;
    v17 = v3;
    MRMediaRemoteSendCommandToPlayer(1, v5, v13, 0, v14, v15);
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) playerOptions] & 0x40) != 0 && objc_msgSend(*(a1 + 32), "allowFadeTransition"))
  {
    v4 = [*(a1 + 32) startEvent:@"FadeOut" role:2];
    v5 = [[MRNowPlayingRequest alloc] initWithPlayerPath:*(a1 + 40)];
    v6 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___MRPSMPerformLegacyMigration_block_invoke_36;
    v9[3] = &unk_1E769DBA8;
    v10 = *(a1 + 32);
    v14 = v4;
    v11 = *(a1 + 56);
    v7 = v3;
    v8 = *(a1 + 64);
    v12 = v7;
    v13 = v8;
    [(MRNowPlayingRequest *)v5 triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue:v6 completion:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_36(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) endEventWithID:*(a1 + 64) error:v5];
  if (v5)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___MRPSMPerformLegacyMigration_block_invoke_36_cold_1(v5, v6);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

void ___MRPSMPerformLegacyMigration_block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"CoordinatePlayback" role:1];
  v5 = (*(*(a1 + 56) + 16))();
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___MRPSMPerformLegacyMigration_block_invoke_2_138;
  v12[3] = &unk_1E769DC20;
  v9 = *(a1 + 32);
  v18 = v4;
  v13 = v9;
  v14 = v6;
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v17 = v3;
  v10 = v3;
  v11 = v6;
  MRMediaRemoteSendPlaybackSession(0, v5, v7, v8, v12);
}

void ___MRPSMPerformLegacyMigration_block_invoke_2_138(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) merge:a2];
  [*(a1 + 32) endEventWithID:*(a1 + 72) error:v5];
  if (([*(a1 + 32) playerOptions] & 0x40) != 0 && objc_msgSend(*(a1 + 32), "allowFadeTransition"))
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v9 = v8;

    v10 = 1.0 - v9;
    if (1.0 - v9 < 0.0)
    {
      v10 = 0.0;
    }

    v11 = dispatch_time(0, (v10 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___MRPSMPerformLegacyMigration_block_invoke_3_139;
    block[3] = &unk_1E769DBF8;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v14 = v5;
    dispatch_after(v11, v12, block);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_3_139(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___MRPSMPerformLegacyMigration_block_invoke_4_140;
  v3[3] = &unk_1E769AB50;
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_4_140(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    a2 = *(a1 + 32);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

void ___MRPSMPerformLegacyMigration_block_invoke_36_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRPlaybackSession] Fade out failed with error %{public}@", &v2, 0xCu);
}

@end