@interface MRAVLightweightReconnaissanceSession
+ (id)searchEndpointsForOutputDeviceUIDImplementation;
+ (void)setSearchEndpointsForOutputDeviceUIDImplementation:(id)implementation;
- (id)_discoverySessionForFeature:(void *)feature;
- (void)searchEndpointsForCompanionWithTimeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForGroupUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForLeaderOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForMyGroupLeaderWithTimeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForRoutingContextUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForRoutingContextUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForString:(id)string timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchEndpointsWithPredicate:(id)predicate timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchForLogicalOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchForOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion;
- (void)searchForOutputDevices:(id)devices categories:(id)categories timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
- (void)searchOutputDeviceUIDs:(id)ds matchingPredicate:(id)predicate timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
- (void)searchOutputDevices:(id)devices reason:(id)reason timeout:(double)timeout queue:(id)queue completion:(id)completion;
@end

@implementation MRAVLightweightReconnaissanceSession

+ (id)searchEndpointsForOutputDeviceUIDImplementation
{
  v2 = MEMORY[0x1A58E3570](__searchEndpointsForOutputDeviceUIDImplementation, a2);

  return v2;
}

- (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  dCopy = d;
  v14 = [[MRRequestDetails alloc] initWithName:@"searchEndpointsForOutputDeviceUID" requestID:0 reason:@"API"];
  [(MRAVLightweightReconnaissanceSession *)self searchEndpointsForOutputDeviceUID:dCopy timeout:v14 details:queueCopy queue:completionCopy completion:timeout];
}

- (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  v114 = *MEMORY[0x1E69E9840];
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (!detailsCopy)
  {
    [MRAVLightweightReconnaissanceSession searchEndpointsForOutputDeviceUID:timeout:details:queue:completion:];
  }

  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  date = [MEMORY[0x1E695DF00] date];
  requestID = [detailsCopy requestID];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__36;
  v106 = __Block_byref_object_dispose__36;
  v81 = dCopy;
  v107 = v81;
  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForOutputDeviceUID", requestID];
  v19 = v18;
  if (v103[5])
  {
    [(__CFString *)v18 appendFormat:@" for %@", v103[5]];
  }

  reason = [detailsCopy reason];

  if (reason)
  {
    reason2 = [detailsCopy reason];
    [(__CFString *)v19 appendFormat:@" because %@", reason2];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v109 = v19;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (timeout > 60.0)
  {
    0x404E000000000000 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&timeout, 0x404E000000000000];
    v24 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v109 = @"searchEndpointsForOutputDeviceUID";
      v110 = 2114;
      v111 = requestID;
      v112 = 2112;
      v113 = 0x404E000000000000;
      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    timeout = 60.0;
  }

  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke;
  v95[3] = &unk_1E76A20D0;
  v101 = &v102;
  v96 = @"searchEndpointsForOutputDeviceUID";
  v25 = requestID;
  v97 = v25;
  v78 = date;
  v98 = v78;
  v82 = queueCopy;
  v99 = v82;
  v77 = completionCopy;
  v100 = v77;
  v26 = MEMORY[0x1A58E3570](v95);
  v27 = [MRBlockGuard alloc];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForOutputDeviceUID", v25];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_2;
  v93[3] = &unk_1E769AD80;
  v29 = v26;
  v94 = v29;
  v30 = [(MRBlockGuard *)v27 initWithTimeout:v28 reason:v93 handler:timeout];

  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_3;
  v90[3] = &unk_1E769C360;
  v80 = v30;
  v91 = v80;
  v79 = v29;
  v92 = v79;
  v31 = MEMORY[0x1A58E3570](v90);
  v32 = +[MRDeviceInfoRequest localDeviceInfo];
  v33 = v103[5];
  v34 = +[MRAVOutputDevice localDeviceUID];
  if ([v33 compare:v34 options:1])
  {
    goto LABEL_20;
  }

  deviceUID = [v32 deviceUID];
  v36 = deviceUID == 0;

  if (!v36)
  {
    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    deviceUID2 = [v32 deviceUID];
    v34 = [v37 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", deviceUID2];

    v39 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v109 = @"searchEndpointsForOutputDeviceUID";
      v110 = 2114;
      v111 = v25;
      v112 = 2112;
      v113 = v34;
      _os_log_impl(&dword_1A2860000, v39, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    deviceUID3 = [v32 deviceUID];
    v41 = v103[5];
    v103[5] = deviceUID3;

LABEL_20:
  }

  if (!v103[5])
  {
    deviceUID4 = [v32 deviceUID];
    v43 = deviceUID4 == 0;

    if (!v43)
    {
      v44 = objc_alloc(MEMORY[0x1E696AEC0]);
      deviceUID5 = [v32 deviceUID];
      v46 = [v44 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", deviceUID5];

      v47 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v109 = @"searchEndpointsForOutputDeviceUID";
        v110 = 2114;
        v111 = v25;
        v112 = 2112;
        v113 = v46;
        _os_log_impl(&dword_1A2860000, v47, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      deviceUID6 = [v32 deviceUID];
      v49 = v103[5];
      v103[5] = deviceUID6;
    }
  }

  if (!v103[5])
  {
    v50 = objc_alloc(MEMORY[0x1E696AEC0]);
    v51 = +[MRAVOutputDevice localDeviceUID];
    v52 = [v50 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", v51];

    v53 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v109 = @"searchEndpointsForOutputDeviceUID";
      v110 = 2114;
      v111 = v25;
      v112 = 2112;
      v113 = v52;
      _os_log_impl(&dword_1A2860000, v53, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v54 = +[MRAVOutputDevice localDeviceUID];
    v55 = v103[5];
    v103[5] = v54;

    if (!v103[5])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"outputDeviceUID"}];
    }
  }

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_48;
  v86[3] = &unk_1E76A20F8;
  v87 = @"searchEndpointsForOutputDeviceUID";
  v56 = v25;
  v88 = v56;
  v57 = v32;
  v89 = v57;
  v58 = MEMORY[0x1A58E3570](v86);
  if (v58[2]())
  {
    searchEndpointsForOutputDeviceUIDImplementation2 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    v60 = v103[5];
    v61 = +[MRAVOutputDevice localDeviceUID];
    v62 = [v60 compare:v61 options:1] == 0;

    if (v62)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v109 = @"searchEndpointsForOutputDeviceUID";
        v110 = 2114;
        v111 = v56;
        v112 = 2112;
        v113 = @"searching for local, using localEndpoint...";
        goto LABEL_44;
      }

LABEL_45:

      v31[2](v31, searchEndpointsForOutputDeviceUIDImplementation2, 0);
      goto LABEL_50;
    }

    deviceUID7 = [v57 deviceUID];
    isEqualToString = objc_msgSend_isEqualToString_(deviceUID7);

    if (isEqualToString)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v109 = @"searchEndpointsForOutputDeviceUID";
        v110 = 2114;
        v111 = v56;
        v112 = 2112;
        v113 = @"searching for localDeviceUID, using localEndpoint...";
LABEL_44:
        _os_log_impl(&dword_1A2860000, v65, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    identifier = [v57 identifier];
    v67 = objc_msgSend_isEqualToString_(identifier);

    if (v67)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v109 = @"searchEndpointsForOutputDeviceUID";
        v110 = 2114;
        v111 = v56;
        v112 = 2112;
        v113 = @"searching for localIdentifier, using localEndpoint...";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_71;
    v85[3] = &unk_1E76A2120;
    v85[4] = &v102;
    v68 = [searchEndpointsForOutputDeviceUIDImplementation2 outputDevicesMatchingPredicate:v85];
    v69 = [v68 count] == 0;

    if (!v69)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v109 = @"searchEndpointsForOutputDeviceUID";
        v110 = 2114;
        v111 = v56;
        v112 = 2112;
        v113 = @"found device in localEndpoint, using localEndpoint...";
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  searchEndpointsForOutputDeviceUIDImplementation = [objc_opt_class() searchEndpointsForOutputDeviceUIDImplementation];

  if (searchEndpointsForOutputDeviceUIDImplementation)
  {
    searchEndpointsForOutputDeviceUIDImplementation2 = [objc_opt_class() searchEndpointsForOutputDeviceUIDImplementation];
    (searchEndpointsForOutputDeviceUIDImplementation2)[2](searchEndpointsForOutputDeviceUIDImplementation2, v103[5], detailsCopy, v82, v31, timeout);
  }

  else
  {
    searchEndpointsForOutputDeviceUIDImplementation2 = MRCreateXPCMessage(0x300000000000030uLL);
    xpc_dictionary_set_double(searchEndpointsForOutputDeviceUIDImplementation2, "timeout", timeout);
    MRAddRequestDetailsToXPCMessage(searchEndpointsForOutputDeviceUIDImplementation2, detailsCopy);
    MRAddStringToXPCMessage(searchEndpointsForOutputDeviceUIDImplementation2, v103[5], "outputDeviceID");
    v71 = +[MRMediaRemoteServiceClient sharedServiceClient];
    service = [v71 service];
    mrXPCConnection = [service mrXPCConnection];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_79;
    v83[3] = &unk_1E769B338;
    v84 = v31;
    [mrXPCConnection sendMessage:searchEndpointsForOutputDeviceUIDImplementation2 queue:v82 reply:v83];
  }

LABEL_50:

  _Block_object_dispose(&v102, 8);
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(*(*(a1 + 72) + 8) + 40);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(*(*(a1 + 72) + 8) + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v48 = v26;
        v49 = 2114;
        v50 = v27;
        v51 = 2114;
        v52 = v28;
        v53 = 2048;
        v54 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v48 = v36;
        v49 = 2114;
        v50 = v37;
        v51 = 2048;
        v52 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v13 = [v5 debugName];
      v20 = *(*(*(a1 + 72) + 8) + 40);
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v48 = v18;
      v49 = 2114;
      v50 = v19;
      v51 = 2112;
      v52 = v13;
      v53 = 2114;
      v54 = v20;
      v55 = 2048;
      v56 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v48 = v33;
      v49 = 2114;
      v50 = v34;
      v51 = 2112;
      v52 = v13;
      v53 = 2048;
      v54 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 72) + 8) + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v48 = v10;
      v49 = 2114;
      v50 = v11;
      v51 = 2114;
      v52 = v6;
      v53 = 2114;
      v54 = v12;
      v55 = 2048;
      v56 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1();
  }

LABEL_21:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_35;
  block[3] = &unk_1E769AC18;
  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  v45 = v6;
  v46 = v40;
  v44 = v5;
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, block);
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_35(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_48(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[MRAVClusterController sharedController];
  v3 = [v2 clusterStatus];

  if (v3 == 2)
  {
    v4 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v14 = 138543874;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      v18 = 2112;
      v19 = @"Not short-circuiting because cluster secondary";
LABEL_10:
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v14, 0x20u);
    }
  }

  else if ([*(a1 + 48) isGroupLeader])
  {
    if (![*(a1 + 48) isAirPlayActive])
    {
      v12 = +[MRUserSettings currentSettings];
      v13 = [v12 supportMultiplayerHost];

      return v13 ^ 1u;
    }

    v4 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v14 = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2112;
      v19 = @"Not short-circuiting because secondary";
      goto LABEL_10;
    }
  }

  else
  {
    v4 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2112;
      v19 = @"Not short-circuiting not group leader";
      goto LABEL_10;
    }
  }

  return 0;
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MREndpointFromXPCMessage(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)searchEndpointsForString:(id)string timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  if (!stringCopy)
  {
    [MRAVLightweightReconnaissanceSession searchEndpointsForString:timeout:reason:queue:completion:];
  }

  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsWithString", uUIDString];
  v19 = v18;
  if (stringCopy)
  {
    [v18 appendFormat:@" for %@", stringCopy];
  }

  if (reasonCopy)
  {
    [v19 appendFormat:@" because %@", reasonCopy];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (timeout > 60.0)
  {
    0x404E000000000000 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&timeout, 0x404E000000000000];
    v22 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = @"searchEndpointsWithString";
      *&buf[12] = 2114;
      *&buf[14] = uUIDString;
      *&buf[22] = 2112;
      v39 = 0x404E000000000000;
      _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    timeout = 60.0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__36;
  v40 = __Block_byref_object_dispose__36;
  v41 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke;
  v35[3] = &unk_1E76A2148;
  v36 = stringCopy;
  v37 = buf;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke_2;
  v28[3] = &unk_1E76A2170;
  v23 = v36;
  v29 = v23;
  v30 = @"searchEndpointsWithString";
  v24 = uUIDString;
  v31 = v24;
  v25 = date;
  v32 = v25;
  v26 = completionCopy;
  v33 = v26;
  v34 = buf;
  [(MRAVLightweightReconnaissanceSession *)self searchEndpointsWithPredicate:v35 timeout:reasonCopy reason:queueCopy queue:v28 completion:timeout];

  _Block_object_dispose(buf, 8);
}

uint64_t __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(v4);

  if (isEqualToString || ([v3 localizedName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend_isEqualToString_(v6), v6, v7) || (objc_msgSend(v3, "debugName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_isEqualToString_(v8), v8, v9))
  {
    v10 = [v3 groupLeader];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

LABEL_5:
    v13 = 1;
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v15 = [v3 outputDevices];
    v16 = [v15 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v68;
      v55 = *v68;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v68 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v56 = v19;
          v20 = *(*(&v67 + 1) + 8 * v19);
          v21 = [v20 uid];
          v22 = objc_msgSend_isEqualToString_(v21);

          if (v22 || ([v20 groupID], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend_isEqualToString_(v23), v23, v24) || (objc_msgSend(v20, "name"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_isEqualToString_(v25), v25, v26) || (objc_msgSend(v20, "bluetoothID"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend_isEqualToString_(v27), v27, v28))
          {
            v52 = *(*(a1 + 40) + 8);
            v53 = v20;
            obj = *(v52 + 40);
            *(v52 + 40) = v53;
LABEL_41:

            goto LABEL_5;
          }

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          obj = [v20 clusterComposition];
          v29 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v64;
            v57 = v15;
            v54 = v17;
            while (2)
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v64 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v63 + 1) + 8 * i);
                v34 = [MRAVDistantOutputDevice alloc];
                v35 = [v33 descriptor];
                v36 = [(MRAVDistantOutputDevice *)v34 initWithDescriptor:v35];

                v37 = [v33 uid];
                v38 = objc_msgSend_isEqualToString_(v37);

                if (v38 & 1) != 0 || ([v33 name], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend_isEqualToString_(v39), v39, (v40))
                {
                  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v36);

                  v15 = v57;
                  goto LABEL_41;
                }
              }

              v30 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
              v15 = v57;
              v17 = v54;
              if (v30)
              {
                continue;
              }

              break;
            }
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          obj = [v20 roomOutputDevices];
          v41 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v60;
            while (2)
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v60 != v43)
                {
                  objc_enumerationMutation(obj);
                }

                v45 = *(*(&v59 + 1) + 8 * j);
                v46 = [v45 uid];
                v47 = objc_msgSend_isEqualToString_(v46);

                if ((v47 & 1) == 0)
                {
                  v48 = [v45 name];
                  v49 = objc_msgSend_isEqualToString_(v48);

                  if ((v49 & 1) == 0)
                  {
                    v50 = [v45 roomID];
                    v51 = objc_msgSend_isEqualToString_(v50);

                    if ((v51 & 1) == 0)
                    {
                      continue;
                    }
                  }
                }

                objc_storeStrong((*(*(a1 + 40) + 8) + 40), v45);
                goto LABEL_41;
              }

              v42 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
              if (v42)
              {
                continue;
              }

              break;
            }
          }

          v18 = v55;
          v19 = v56 + 1;
        }

        while (v56 + 1 != v17);
        v17 = [v15 countByEnumeratingWithState:&v67 objects:v73 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

  return v13;
}

void __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = a1[4];
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = a1[5];
        v26 = a1[6];
        v28 = a1[4];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        v39 = 138544130;
        v40 = v27;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = a1[5];
        v37 = a1[6];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        v39 = 138543874;
        v40 = v36;
        v41 = 2114;
        v42 = v37;
        v43 = 2048;
        v44 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, &v39, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = a1[5];
      v19 = a1[6];
      v13 = [v5 debugName];
      v20 = a1[4];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[7]];
      v39 = 138544386;
      v40 = v18;
      v41 = 2114;
      v42 = v19;
      v43 = 2112;
      v44 = v13;
      v45 = 2114;
      v46 = v20;
      v47 = 2048;
      v48 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = a1[5];
      v34 = a1[6];
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[7]];
      v39 = 138544130;
      v40 = v33;
      v41 = 2114;
      v42 = v34;
      v43 = 2112;
      v44 = v13;
      v45 = 2048;
      v46 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, &v39, v25);

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v39 = 138544386;
      v40 = v11;
      v41 = 2114;
      v42 = v10;
      v43 = 2114;
      v44 = v6;
      v45 = 2114;
      v46 = v12;
      v47 = 2048;
      v48 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

LABEL_21:

  (*(a1[8] + 16))();
}

- (void)searchEndpointsWithPredicate:(id)predicate timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  predicateCopy = predicate;
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v16 = MEMORY[0x1E69E96A0];
  }

  if (timeout > 60.0)
  {
    timeout = 60.0;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__36;
  v45 = __Block_byref_object_dispose__36;
  v46 = 0;
  v17 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v17 setDiscoveryMode:3];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke;
  v36[3] = &unk_1E76A21C0;
  v18 = queueCopy;
  v37 = v18;
  v19 = completionCopy;
  v39 = v19;
  v20 = v17;
  v38 = v20;
  v40 = &v41;
  v21 = MEMORY[0x1A58E3570](v36);
  v22 = [MRBlockGuard alloc];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_3;
  v34[3] = &unk_1E769AD80;
  v23 = v21;
  v35 = v23;
  v24 = [(MRBlockGuard *)v22 initWithTimeout:reasonCopy reason:v34 handler:timeout];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_4;
  v30[3] = &unk_1E76A21E8;
  v25 = predicateCopy;
  v32 = v25;
  v26 = v24;
  v31 = v26;
  v27 = v23;
  v33 = v27;
  v28 = [v20 addEndpointsChangedCallback:v30];
  v29 = v42[5];
  v42[5] = v28;

  _Block_object_dispose(&v41, 8);
}

void __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_2;
  block[3] = &unk_1E76A2198;
  v16 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v15 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void *__101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  result = [*(a1 + 48) setDiscoveryMode:0];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = *(a1 + 48);

    return [v4 removeEndpointsChangedCallback:?];
  }

  return result;
}

uint64_t __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ((*(*(a1 + 40) + 16))(*(a1 + 40)))
        {
          if ([*(a1 + 32) disarm])
          {
            (*(*(a1 + 48) + 16))();
          }

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)searchEndpointsForGroupUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  v102 = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__36;
  v94 = __Block_byref_object_dispose__36;
  v58 = dCopy;
  v95 = v58;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__36;
  v88 = __Block_byref_object_dispose__36;
  v89 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__36;
  v82 = __Block_byref_object_dispose__36;
  v83 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v79[5] setDiscoveryMode:2];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForGroupUID", uUIDString];
  v20 = v19;
  if (v91[5])
  {
    [(__CFString *)v19 appendFormat:@" for %@", v91[5]];
  }

  if (reasonCopy)
  {
    [(__CFString *)v20 appendFormat:@" because %@", reasonCopy];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v97 = v20;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke;
  v68[3] = &unk_1E76A2238;
  v75 = &v90;
  v69 = @"searchEndpointsForGroupUID";
  v22 = uUIDString;
  v70 = v22;
  v23 = date;
  v71 = v23;
  v56 = queueCopy;
  v72 = v56;
  v57 = completionCopy;
  selfCopy = self;
  v74 = v57;
  v76 = &v78;
  v77 = &v84;
  v24 = MEMORY[0x1A58E3570](v68);
  v25 = [MRBlockGuard alloc];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForGroupUID", v22];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_2;
  v66[3] = &unk_1E769AD80;
  v27 = v24;
  v67 = v27;
  v28 = [(MRBlockGuard *)v25 initWithTimeout:v26 reason:v66 handler:timeout];

  v29 = +[MROrigin localOrigin];
  v30 = [MRDeviceInfoRequest deviceInfoForOrigin:v29];

  if (!v91[5])
  {
    groupUID = [v30 groupUID];
    v32 = groupUID == 0;

    if (!v32)
    {
      v33 = objc_alloc(MEMORY[0x1E696AEC0]);
      groupUID2 = [v30 groupUID];
      v35 = [v33 initWithFormat:@"substituting groupID <%@> for nil...", groupUID2];

      v36 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v97 = @"searchEndpointsForGroupUID";
        v98 = 2114;
        v99 = v22;
        v100 = 2112;
        v101 = v35;
        _os_log_impl(&dword_1A2860000, v36, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      groupUID3 = [v30 groupUID];
      v38 = v91[5];
      v91[5] = groupUID3;
    }
  }

  groupUID4 = [v30 groupUID];
  if (groupUID4)
  {
    v40 = v91[5];
    v41 = +[MRAVOutputDevice localDeviceUID];
    LODWORD(v40) = [v40 compare:v41 options:1] == 0;

    if (v40)
    {
      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      groupUID5 = [v30 groupUID];
      v44 = +[MRAVOutputDevice localDeviceUID];
      v45 = [v42 initWithFormat:@"substituting group <%@> for %@...", groupUID5, v44];

      v46 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v97 = @"searchEndpointsForGroupUID";
        v98 = 2114;
        v99 = v22;
        v100 = 2112;
        v101 = v45;
        _os_log_impl(&dword_1A2860000, v46, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      groupUID6 = [v30 groupUID];
      v48 = v91[5];
      v91[5] = groupUID6;
    }
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v50 = v79[5];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_102;
  v60[3] = &unk_1E76A2260;
  v65 = &v90;
  v51 = v28;
  v61 = v51;
  v62 = @"searchEndpointsForGroupUID";
  v52 = v22;
  v63 = v52;
  v53 = v27;
  v64 = v53;
  v54 = [v50 addEndpointsChangedCallback:v60];
  v55 = v85[5];
  v85[5] = v54;

  objc_sync_exit(selfCopy2);
  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v90, 8);
}

void __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(*(*(a1 + 80) + 8) + 40);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(*(*(a1 + 80) + 8) + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v50 = v26;
        v51 = 2114;
        v52 = v27;
        v53 = 2114;
        v54 = v28;
        v55 = 2048;
        v56 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v50 = v36;
        v51 = 2114;
        v52 = v37;
        v53 = 2048;
        v54 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v13 = [v5 debugName];
      v20 = *(*(*(a1 + 80) + 8) + 40);
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v50 = v18;
      v51 = 2114;
      v52 = v19;
      v53 = 2112;
      v54 = v13;
      v55 = 2114;
      v56 = v20;
      v57 = 2048;
      v58 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v50 = v33;
      v51 = 2114;
      v52 = v34;
      v53 = 2112;
      v54 = v13;
      v55 = 2048;
      v56 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(*(*(a1 + 80) + 8) + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 80) + 8) + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v50 = v10;
      v51 = 2114;
      v52 = v11;
      v53 = 2114;
      v54 = v6;
      v55 = 2114;
      v56 = v12;
      v57 = 2048;
      v58 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1();
  }

LABEL_21:

  v39 = *(a1 + 56);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_94;
  v43[3] = &unk_1E76A2210;
  v40 = *(a1 + 72);
  v44 = v5;
  v45 = v6;
  v46 = *(a1 + 64);
  v47 = v40;
  v48 = *(a1 + 88);
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, v43);
}

void __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_94(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  obj = *(a1 + 48);
  objc_sync_enter(obj);
  [*(*(*(a1 + 64) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    [*(*(*(a1 + 64) + 8) + 40) removeEndpointsChangedCallback:?];
  }

  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_sync_exit(obj);
}

uint64_t __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_102(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) outputDevices];
        v9 = [v8 firstObject];
        v10 = [v9 groupID];
        isEqualToString = objc_msgSend_isEqualToString_(v10);

        if (isEqualToString)
        {
          if ([*(a1 + 32) disarm])
          {
            v12 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(a1 + 40);
              v14 = *(a1 + 48);
              *buf = 138543874;
              v20 = v13;
              v21 = 2114;
              v22 = v14;
              v23 = 2112;
              v24 = @"found device in discovery";
              _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 56) + 16))();
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)searchEndpointsForCompanionWithTimeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__36;
  v55 = __Block_byref_object_dispose__36;
  v56 = 0;
  v14 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v14 setDiscoveryMode:2];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForCompanion", uUIDString];
  v19 = v18;
  if (reasonCopy)
  {
    [v18 appendFormat:@" because %@", reasonCopy];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v58 = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke;
  v43[3] = &unk_1E76A2288;
  v44 = @"searchEndpointsForCompanion";
  v21 = uUIDString;
  v45 = v21;
  v22 = date;
  v46 = v22;
  v23 = queueCopy;
  v47 = v23;
  v24 = completionCopy;
  v49 = v24;
  v25 = v14;
  v48 = v25;
  v50 = &v51;
  v26 = MEMORY[0x1A58E3570](v43);
  v27 = [MRBlockGuard alloc];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForCompanion", v21];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_2;
  v41[3] = &unk_1E769AD80;
  v29 = v26;
  v42 = v29;
  v30 = [(MRBlockGuard *)v27 initWithTimeout:v28 reason:v41 handler:timeout];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_3;
  v36[3] = &unk_1E76A22B0;
  v31 = v30;
  v37 = v31;
  v38 = @"searchEndpointsForCompanion";
  v32 = v21;
  v39 = v32;
  v33 = v29;
  v40 = v33;
  v34 = [v25 addEndpointsChangedCallback:v36];
  v35 = v52[5];
  v52[5] = v34;

  _Block_object_dispose(&v51, 8);
}

void __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory(0xAuLL);
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = [v5 debugName];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v30 = v10;
      v31 = 2114;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2048;
      v36 = v14;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v30 = v15;
      v31 = 2114;
      v32 = v16;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v7 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1();
  }

LABEL_10:

  v18 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_109;
  block[3] = &unk_1E76A2198;
  v27 = *(a1 + 72);
  v24 = v5;
  v25 = v6;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v26 = v19;
  v28 = v20;
  v21 = v6;
  v22 = v5;
  dispatch_async(v18, block);
}

void *__103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_109(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  result = [*(a1 + 48) setDiscoveryMode:0];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = *(a1 + 48);

    return [v4 removeEndpointsChangedCallback:?];
  }

  return result;
}

uint64_t __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) isCompanionEndpoint])
        {
          if ([*(a1 + 32) disarm])
          {
            v8 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(a1 + 40);
              v10 = *(a1 + 48);
              *buf = 138543874;
              v16 = v9;
              v17 = 2114;
              v18 = v10;
              v19 = 2112;
              v20 = @"found device in discovery";
              _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 56) + 16))();
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)searchEndpointsForLeaderOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  v74 = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__36;
  v70 = __Block_byref_object_dispose__36;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__36;
  v64 = __Block_byref_object_dispose__36;
  v65 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v61[5] setDiscoveryMode:3];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForLeaderOutputDeviceUID", uUIDString];
  v20 = v19;
  if (dCopy)
  {
    [v19 appendFormat:@" for %@", dCopy];
  }

  if (reasonCopy)
  {
    [v20 appendFormat:@" because %@", reasonCopy];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v73 = v20;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke;
  v50[3] = &unk_1E76A22D8;
  v22 = dCopy;
  v51 = v22;
  v52 = @"searchEndpointsForLeaderOutputDeviceUID";
  v23 = uUIDString;
  v53 = v23;
  v40 = date;
  v54 = v40;
  v38 = queueCopy;
  v55 = v38;
  v39 = completionCopy;
  selfCopy = self;
  v57 = v39;
  v58 = &v60;
  v59 = &v66;
  v24 = MEMORY[0x1A58E3570](v50);
  v25 = [MRBlockGuard alloc];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForLeaderOutputDeviceUID", v23];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2;
  v48[3] = &unk_1E769AD80;
  v27 = v24;
  v49 = v27;
  v28 = [(MRBlockGuard *)v25 initWithTimeout:v26 reason:v48 handler:timeout];

  v29 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
  if (!dCopy)
  {
    (*(v27 + 2))(v27, v29, 0);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v31 = v61[5];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3;
  v42[3] = &unk_1E769FA30;
  v32 = v22;
  v43 = v32;
  v33 = v28;
  v44 = v33;
  v45 = @"searchEndpointsForLeaderOutputDeviceUID";
  v34 = v23;
  v46 = v34;
  v35 = v27;
  v47 = v35;
  v36 = [v31 addEndpointsChangedCallback:v42];
  v37 = v67[5];
  v67[5] = v36;

  objc_sync_exit(selfCopy2);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
}

void __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v50 = v27;
        v51 = 2114;
        v52 = v26;
        v53 = 2114;
        v54 = v28;
        v55 = 2048;
        v56 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v50 = v36;
        v51 = 2114;
        v52 = v37;
        v53 = 2048;
        v54 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v13 = [v5 debugName];
      v20 = *(a1 + 32);
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v50 = v18;
      v51 = 2114;
      v52 = v19;
      v53 = 2112;
      v54 = v13;
      v55 = 2114;
      v56 = v20;
      v57 = 2048;
      v58 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 40);
      v34 = *(a1 + 48);
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v50 = v33;
      v51 = 2114;
      v52 = v34;
      v53 = 2112;
      v54 = v13;
      v55 = 2048;
      v56 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v50 = v11;
      v51 = 2114;
      v52 = v10;
      v53 = 2114;
      v54 = v6;
      v55 = 2114;
      v56 = v12;
      v57 = 2048;
      v58 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

LABEL_21:

  v39 = *(a1 + 64);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_113;
  v43[3] = &unk_1E76A2210;
  v40 = *(a1 + 80);
  v44 = v5;
  v45 = v6;
  v46 = *(a1 + 72);
  v47 = v40;
  v48 = *(a1 + 88);
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, v43);
}

void __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_113(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  obj = *(a1 + 48);
  objc_sync_enter(obj);
  [*(*(*(a1 + 64) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    [*(*(*(a1 + 64) + 8) + 40) removeEndpointsChangedCallback:?];
  }

  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_sync_exit(obj);
}

uint64_t __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 138543874;
    v22 = v5;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 designatedGroupLeader];
        v11 = [v10 supportsMultiplayer];

        if (v11)
        {
          v12 = [v9 outputDevices];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_4;
          v23[3] = &unk_1E769CDC0;
          v23[4] = v9;
          v13 = [v12 msv_firstWhere:v23];

          if ([v13 containsUID:*(a1 + 32)] && objc_msgSend(*(a1 + 40), "disarm"))
          {
            v14 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 48);
              v16 = *(a1 + 56);
              *buf = v22;
              v29 = v15;
              v30 = 2114;
              v31 = v16;
              v32 = 2112;
              v33 = @"found multiplayer device in discovery";
              _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 64) + 16))();
          }
        }

        else
        {
          v17 = [v9 designatedGroupLeader];
          v18 = [v17 containsUID:*(a1 + 32)];

          if (v18)
          {
            if ([*(a1 + 40) disarm])
            {
              v19 = _MRLogForCategory(0xAuLL);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = *(a1 + 48);
                v21 = *(a1 + 56);
                *buf = v22;
                v29 = v20;
                v30 = 2114;
                v31 = v21;
                v32 = 2112;
                v33 = @"found device in discovery";
                _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
              }

              (*(*(a1 + 64) + 16))();
            }

            goto LABEL_21;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

uint64_t __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 designatedGroupLeader];
  v5 = [v4 uid];
  v6 = [v3 containsUID:v5];

  return v6;
}

- (void)searchForOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  v95 = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__36;
  v87 = __Block_byref_object_dispose__36;
  v50 = dCopy;
  v88 = v50;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__36;
  v81 = __Block_byref_object_dispose__36;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__36;
  v75 = __Block_byref_object_dispose__36;
  v76 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchForOutputDeviceUID", uUIDString];
  v20 = v19;
  if (v84[5])
  {
    [(__CFString *)v19 appendFormat:@" for %@", v84[5]];
  }

  if (reasonCopy)
  {
    [(__CFString *)v20 appendFormat:@" because %@", reasonCopy];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v90 = v20;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (timeout > 60.0)
  {
    0x404E000000000000 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&timeout, 0x404E000000000000];
    v23 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v90 = @"searchForOutputDeviceUID";
      v91 = 2114;
      v92 = uUIDString;
      v93 = 2112;
      v94 = 0x404E000000000000;
      _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    timeout = 60.0;
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke;
  v61[3] = &unk_1E76A2300;
  v68 = &v83;
  v62 = @"searchForOutputDeviceUID";
  v24 = uUIDString;
  v63 = v24;
  v25 = date;
  v64 = v25;
  selfCopy = self;
  v69 = &v71;
  v70 = &v77;
  v26 = completionCopy;
  v67 = v26;
  v49 = queueCopy;
  v66 = v49;
  v27 = MEMORY[0x1A58E3570](v61);
  v28 = [MRBlockGuard alloc];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchForOutputDeviceUID", v24];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2;
  v59[3] = &unk_1E769AD80;
  v30 = v27;
  v60 = v30;
  v31 = [(MRBlockGuard *)v28 initWithTimeout:v29 reason:v59 handler:timeout];

  v32 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
  v33 = +[MROrigin localOrigin];
  v34 = [MRDeviceInfoRequest deviceInfoForOrigin:v33];

  if (!v84[5])
  {
    deviceUID = [v34 deviceUID];
    v36 = deviceUID == 0;

    if (!v36)
    {
      v37 = objc_alloc(MEMORY[0x1E696AEC0]);
      deviceUID2 = [v34 deviceUID];
      v39 = [v37 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", deviceUID2];

      v40 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v90 = @"searchForOutputDeviceUID";
        v91 = 2114;
        v92 = v24;
        v93 = 2112;
        v94 = v39;
        _os_log_impl(&dword_1A2860000, v40, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      deviceUID3 = [v34 deviceUID];
      v42 = v84[5];
      v84[5] = deviceUID3;
    }
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_122;
  v58[3] = &unk_1E76A2120;
  v58[4] = &v83;
  v43 = [v32 outputDevicesMatchingPredicate:v58];
  if (![v43 count])
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    [v72[5] setDiscoveryMode:3];
    v46 = v72[5];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_126;
    v52[3] = &unk_1E76A2260;
    v57 = &v83;
    v53 = v31;
    v54 = @"searchForOutputDeviceUID";
    v55 = v24;
    v56 = v30;
    v47 = [v46 addOutputDevicesChangedCallback:v52];
    v48 = v78[5];
    v78[5] = v47;

    objc_sync_exit(selfCopy2);
LABEL_24:

    goto LABEL_25;
  }

  if ([(MSVBlockGuard *)v31 disarm])
  {
    v44 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v90 = @"searchForOutputDeviceUID";
      v91 = 2114;
      v92 = v24;
      v93 = 2112;
      v94 = @"found device in localEndpoint...";
      _os_log_impl(&dword_1A2860000, v44, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    selfCopy2 = [v43 firstObject];
    (*(v30 + 2))(v30, selfCopy2, 0);
    goto LABEL_24;
  }

LABEL_25:

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
}

void __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(*(a1 + 80) + 8) + 40) == 0;
    v8 = _MRLogForCategory(0xAuLL);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_cold_1();
      }
    }

    else if (v9)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(*(*(a1 + 80) + 8) + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v49 = v11;
      v50 = 2114;
      v51 = v10;
      v52 = 2114;
      v53 = v6;
      v54 = 2114;
      v55 = v12;
      v56 = 2048;
      v57 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    }
  }

  else
  {
    v15 = [v5 debugName];
    v16 = v15 == 0;

    v17 = *(*(*(a1 + 80) + 8) + 40);
    v8 = _MRLogForCategory(0xAuLL);
    v18 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        if (v18)
        {
          v26 = *(a1 + 32);
          v25 = *(a1 + 40);
          v27 = *(*(*(a1 + 80) + 8) + 40);
          v28 = [MEMORY[0x1E695DF00] date];
          [v28 timeIntervalSinceDate:*(a1 + 48)];
          *buf = 138544130;
          v49 = v26;
          v50 = 2114;
          v51 = v25;
          v52 = 2114;
          v53 = v27;
          v54 = 2048;
          v55 = v29;
          _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
        }
      }

      else if (v18)
      {
        v36 = *(a1 + 32);
        v35 = *(a1 + 40);
        v37 = [MEMORY[0x1E695DF00] date];
        [v37 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v49 = v36;
        v50 = 2114;
        v51 = v35;
        v52 = 2048;
        v53 = v38;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
      }
    }

    else if (v17)
    {
      if (v18)
      {
        v20 = *(a1 + 32);
        v19 = *(a1 + 40);
        v21 = [v5 debugName];
        v22 = *(*(*(a1 + 80) + 8) + 40);
        v23 = [MEMORY[0x1E695DF00] date];
        [v23 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544386;
        v49 = v20;
        v50 = 2114;
        v51 = v19;
        v52 = 2112;
        v53 = v21;
        v54 = 2114;
        v55 = v22;
        v56 = 2048;
        v57 = v24;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      }
    }

    else if (v18)
    {
      v31 = *(a1 + 32);
      v30 = *(a1 + 40);
      v32 = [v5 debugName];
      v33 = [MEMORY[0x1E695DF00] date];
      [v33 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v49 = v31;
      v50 = 2114;
      v51 = v30;
      v52 = 2112;
      v53 = v32;
      v54 = 2048;
      v55 = v34;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }
  }

  v39 = *(a1 + 56);
  objc_sync_enter(v39);
  [*(*(*(a1 + 88) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 96) + 8) + 40))
  {
    [*(*(*(a1 + 88) + 8) + 40) removeOutputDevicesChangedCallback:?];
  }

  v40 = *(*(a1 + 88) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = 0;

  objc_sync_exit(v39);
  v42 = *(a1 + 72);
  if (v42)
  {
    v43 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_120;
    block[3] = &unk_1E769AC18;
    v47 = v42;
    v45 = v5;
    v46 = v6;
    dispatch_async(v43, block);
  }
}

uint64_t __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_126(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsUID:{*(*(*(a1 + 64) + 8) + 40), v11}])
        {
          if ([*(a1 + 32) disarm])
          {
            v8 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(a1 + 40);
              v10 = *(a1 + 48);
              *buf = 138543874;
              v16 = v9;
              v17 = 2114;
              v18 = v10;
              v19 = 2112;
              v20 = @"found device in discovery";
              _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 56) + 16))();
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)searchForLogicalOutputDeviceUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  v69 = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__36;
  v65 = __Block_byref_object_dispose__36;
  v66 = 0;
  v16 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v16 setDiscoveryMode:3];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchForLogicalOutputDeviceUID", uUIDString];
  v21 = v20;
  if (dCopy)
  {
    [v20 appendFormat:@" for %@", dCopy];
  }

  if (reasonCopy)
  {
    [v21 appendFormat:@" because %@", reasonCopy];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v68 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke;
  v52[3] = &unk_1E76A2328;
  v23 = dCopy;
  v53 = v23;
  v54 = @"searchForLogicalOutputDeviceUID";
  v24 = uUIDString;
  v55 = v24;
  v25 = date;
  v56 = v25;
  v26 = v16;
  v57 = v26;
  v60 = &v61;
  v41 = completionCopy;
  v59 = v41;
  v27 = queueCopy;
  v58 = v27;
  v28 = MEMORY[0x1A58E3570](v52);
  v29 = [MRBlockGuard alloc];
  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchForLogicalOutputDeviceUID", v24];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2;
  v50[3] = &unk_1E769AD80;
  v31 = v28;
  v51 = v31;
  v32 = [(MRBlockGuard *)v29 initWithTimeout:v30 reason:v50 handler:timeout];

  v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3;
  v43[3] = &unk_1E76A2350;
  v34 = v23;
  v44 = v34;
  v35 = v33;
  v45 = v35;
  v46 = @"searchForLogicalOutputDeviceUID";
  v36 = v24;
  v47 = v36;
  v37 = v32;
  v48 = v37;
  v38 = v31;
  v49 = v38;
  v39 = [v26 addOutputDevicesChangedCallback:v43];
  v40 = v62[5];
  v62[5] = v39;

  _Block_object_dispose(&v61, 8);
}

void __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = MRAVOutputDeviceArrayDescription(v5);

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v13 = MRAVOutputDeviceArrayDescription(v5);
        v20 = *(a1 + 32);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v46 = v18;
        v47 = 2114;
        v48 = v19;
        v49 = 2112;
        v50 = v13;
        v51 = 2114;
        v52 = v20;
        v53 = 2048;
        v54 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v13 = MRAVOutputDeviceArrayDescription(v5);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v46 = v33;
        v47 = 2114;
        v48 = v34;
        v49 = 2112;
        v50 = v13;
        v51 = 2048;
        v52 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v46 = v27;
        v47 = 2114;
        v48 = v26;
        v49 = 2114;
        v50 = v28;
        v51 = 2048;
        v52 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v46 = v36;
        v47 = 2114;
        v48 = v37;
        v49 = 2048;
        v50 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v46 = v11;
    v47 = 2114;
    v48 = v10;
    v49 = 2114;
    v50 = v6;
    v51 = 2114;
    v52 = v12;
    v53 = 2048;
    v54 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

LABEL_21:

  [*(a1 + 64) setDiscoveryMode:0];
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    [*(a1 + 64) removeOutputDevicesChangedCallback:?];
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    v40 = *(a1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_130;
    block[3] = &unk_1E769AC18;
    v44 = v39;
    v42 = v5;
    v43 = v6;
    dispatch_async(v40, block);
  }
}

uint64_t __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 logicalDeviceID];
        isEqualToString = objc_msgSend_isEqualToString_(v9);

        if (isEqualToString)
        {
          v11 = *(a1 + 40);
          v12 = [v8 uid];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            v15 = [v8 debugName];
            v16 = [v14 initWithFormat:@"found outputDevice %@", v15];

            v17 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 48);
              v19 = *(a1 + 56);
              *buf = 138543874;
              v29 = v18;
              v30 = 2114;
              v31 = v19;
              v32 = 2112;
              v33 = v16;
              _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            v20 = *(a1 + 40);
            v21 = [v8 uid];
            [v20 setObject:v8 forKeyedSubscript:v21];
          }
        }

        if ([*(a1 + 40) count] == 2 && objc_msgSend(*(a1 + 64), "disarm"))
        {
          v22 = *(a1 + 72);
          v23 = [*(a1 + 40) allValues];
          (*(v22 + 16))(v22, v23, 0);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v5);
  }
}

- (void)searchEndpointsForRoutingContextUID:(id)d timeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  reasonCopy = reason;
  dCopy = d;
  v16 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:reasonCopy];

  [(MRAVLightweightReconnaissanceSession *)self searchEndpointsForRoutingContextUID:dCopy timeout:v16 details:queueCopy queue:completionCopy completion:timeout];
}

- (void)searchEndpointsForRoutingContextUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (!dCopy)
  {
    [MRAVLightweightReconnaissanceSession searchEndpointsForRoutingContextUID:timeout:details:queue:completion:];
  }

  date = [MEMORY[0x1E695DF00] date];
  if (!detailsCopy)
  {
    detailsCopy = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"API"];
  }

  v16 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRRequestDetails *)detailsCopy requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"searchEndpointsForRoutingContextUID", requestID];

  if (dCopy)
  {
    [v18 appendFormat:@" for %@", dCopy];
  }

  label = [(MRRequestDetails *)detailsCopy label];

  if (label)
  {
    label2 = [(MRRequestDetails *)detailsCopy label];
    [v18 appendFormat:@" because %@", label2];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v55 = v18;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke;
  v48[3] = &unk_1E76A2378;
  v49 = dCopy;
  v50 = @"searchEndpointsForRoutingContextUID";
  v51 = detailsCopy;
  v52 = date;
  v53 = completionCopy;
  v40 = completionCopy;
  v39 = date;
  v22 = detailsCopy;
  v23 = dCopy;
  v24 = MEMORY[0x1A58E3570](v48);
  v25 = [MRBlockGuard alloc];
  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  requestID2 = [(MRRequestDetails *)v22 requestID];
  v28 = [v26 initWithFormat:@"%@<%@>", @"searchEndpointsForRoutingContextUID", requestID2];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_142;
  v46[3] = &unk_1E769AD80;
  v29 = v24;
  v47 = v29;
  v30 = [(MRBlockGuard *)v25 initWithTimeout:v28 reason:queueCopy queue:v46 handler:timeout];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_2;
  v43[3] = &unk_1E769C360;
  v44 = v30;
  v45 = v29;
  v31 = v29;
  v32 = v30;
  v33 = MEMORY[0x1A58E3570](v43);
  v34 = MRCreateXPCMessage(0x300000000000033uLL);
  xpc_dictionary_set_double(v34, "timeout", timeout);
  MRAddRequestDetailsToXPCMessage(v34, v22);
  MRAddStringToXPCMessage(v34, v23, "routingContextID");
  v35 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v35 service];
  mrXPCConnection = [service mrXPCConnection];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_3;
  v41[3] = &unk_1E769B338;
  v42 = v33;
  v38 = v33;
  [mrXPCConnection sendMessage:v34 queue:queueCopy reply:v41];
}

void __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = [v5 debugName];
        v19 = *(a1 + 32);
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138544386;
        v37 = v18;
        v38 = 2114;
        v39 = v11;
        v40 = 2112;
        v41 = v13;
        v42 = 2114;
        v43 = v19;
        v44 = 2048;
        v45 = v21;
        v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v23 = v8;
        v24 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v31 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = [v5 debugName];
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138544130;
        v37 = v31;
        v38 = 2114;
        v39 = v11;
        v40 = 2112;
        v41 = v13;
        v42 = 2048;
        v43 = v32;
        v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v23 = v8;
        v24 = 42;
      }

      _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, &v36, v24);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v25 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v26 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138544130;
        v37 = v25;
        v38 = 2114;
        v39 = v11;
        v40 = 2114;
        v41 = v26;
        v42 = 2048;
        v43 = v27;
        v28 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v29 = v8;
        v30 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138543874;
        v37 = v33;
        v38 = 2114;
        v39 = v11;
        v40 = 2048;
        v41 = v34;
        v28 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v29 = v8;
        v30 = 32;
      }

      _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, v28, &v36, v30);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) requestID];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v36 = 138544386;
    v37 = v10;
    v38 = 2114;
    v39 = v11;
    v40 = 2114;
    v41 = v6;
    v42 = 2114;
    v43 = v12;
    v44 = 2048;
    v45 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_cold_1();
  }

LABEL_21:

  v35 = *(a1 + 64);
  if (v35)
  {
    (*(v35 + 16))(v35, v5, v6);
  }
}

uint64_t __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_142(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MREndpointFromXPCMessage(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)searchEndpointsForMyGroupLeaderWithTimeout:(double)timeout reason:(id)reason queue:(id)queue completion:(id)completion
{
  v39[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke;
  v33[3] = &unk_1E76A23A0;
  v34 = @"searchEndpointsForMyGroupLeader";
  v16 = uUIDString;
  v35 = v16;
  v17 = date;
  v36 = v17;
  v18 = completionCopy;
  v38 = v18;
  v19 = queueCopy;
  v37 = v19;
  v20 = MEMORY[0x1A58E3570](v33);
  v21 = MRMediaRemoteCopyDeviceUID();
  if (v21)
  {
    v22 = [MRRequestDetails alloc];
    v29 = reasonCopy;
    reasonCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MRAVLightweightReconnaissanceSession.searchEndpointsForMyGroupLeader-%@", reasonCopy];
    v24 = [(MRRequestDetails *)v22 initWithInitiator:@"Infer" requestID:v16 reason:reasonCopy];

    v25 = [MRAVReconnaissanceSession alloc];
    v39[0] = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    v27 = [(MRAVReconnaissanceSession *)v25 initWithOutputDeviceUIDs:v26 features:8 details:v24];

    [(MRAVReconnaissanceSession *)v27 setCachedDiscoveryEnabled:[(MRAVLightweightReconnaissanceSession *)self cachedDiscoveryEnabled]];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke_2;
    v30[3] = &unk_1E76A23C8;
    v31 = v27;
    v32 = v20;
    v28 = v27;
    [(MRAVReconnaissanceSession *)v28 beginSearchWithTimeout:v30 completion:timeout];

    reasonCopy = v29;
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:33];
    (v20)[2](v20, 0, v24);
  }
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = a1[4];
    v10 = a1[5];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[6]];
    *buf = 138544130;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    v29 = 2112;
    v30 = v5;
    v31 = 2048;
    v32 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = a1[4];
    v17 = a1[5];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[6]];
    *buf = 138543874;
    v26 = v16;
    v27 = 2114;
    v28 = v17;
    v29 = 2048;
    v30 = v18;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1();
  }

LABEL_11:

  v19 = a1[8];
  if (v19)
  {
    v20 = a1[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke_147;
    block[3] = &unk_1E769AC18;
    v24 = v19;
    v22 = v5;
    v23 = v6;
    dispatch_async(v20, block);
  }
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  v8 = *(a1 + 32);
  v7(v6, a3, a4);
}

- (void)searchOutputDevices:(id)devices reason:(id)reason timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  queueCopy = queue;
  completionCopy = completion;
  v14 = MEMORY[0x1E695DF00];
  devicesCopy = devices;
  date = [v14 date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchOutputDevices", uUIDString];
  v19 = v18;
  if (reasonCopy)
  {
    [(__CFString *)v18 appendFormat:@" for %@", reasonCopy];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (timeout > 60.0)
  {
    0x404E000000000000 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&timeout, 0x404E000000000000];
    v22 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v63 = @"searchOutputDevices";
      v64 = 2114;
      v65 = uUIDString;
      v66 = 2112;
      v67 = 0x404E000000000000;
      _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    timeout = 60.0;
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke;
  v55[3] = &unk_1E76A23F0;
  v56 = reasonCopy;
  v57 = @"searchOutputDevices";
  v58 = uUIDString;
  v59 = date;
  v60 = queueCopy;
  v61 = completionCopy;
  v43 = queueCopy;
  v42 = completionCopy;
  v41 = date;
  v40 = uUIDString;
  v23 = reasonCopy;
  v24 = MEMORY[0x1A58E3570](v55);
  v25 = [MRBlockGuard alloc];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_2;
  v53[3] = &unk_1E769AD80;
  v26 = v24;
  v54 = v26;
  v27 = [(MRBlockGuard *)v25 initWithTimeout:v23 reason:v53 handler:timeout];
  v28 = [MRRequestDetails alloc];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MRAVLightweightReconnaissanceSession.searchOutputDevices-%@", v23];
  v30 = [(MRRequestDetails *)v28 initWithInitiator:@"Infer" requestID:v40 reason:v29];

  v31 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:devicesCopy features:8 details:v30];
  [(MRAVReconnaissanceSession *)v31 setCachedDiscoveryEnabled:[(MRAVLightweightReconnaissanceSession *)self cachedDiscoveryEnabled]];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_3;
  v49[3] = &unk_1E76A2418;
  v50 = v31;
  v32 = v27;
  v51 = v32;
  v33 = v26;
  v52 = v33;
  v34 = v31;
  [(MRAVReconnaissanceSession *)v34 beginSearchWithTimeout:v49 endpointsCompletion:timeout];
  v35 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:devicesCopy features:1 details:v30];

  [(MRAVReconnaissanceSession *)v35 setCachedDiscoveryEnabled:[(MRAVLightweightReconnaissanceSession *)self cachedDiscoveryEnabled]];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_4;
  v45[3] = &unk_1E76A2418;
  v46 = v35;
  v47 = v32;
  v48 = v33;
  v36 = v33;
  v37 = v32;
  v38 = v35;
  [(MRAVReconnaissanceSession *)v38 beginSearchWithTimeout:v45 endpointsCompletion:timeout];
}

void __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  v11 = _MRLogForCategory(0xAuLL);
  v12 = v11;
  if (v7 && !v9)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v46 = v15;
      v47 = 2114;
      v48 = v14;
      v49 = 2112;
      v50 = v7;
      v51 = 2114;
      v52 = v16;
      v53 = 2048;
      v54 = v18;
      v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v20 = v12;
      v21 = 52;
      goto LABEL_16;
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v32 = a1[5];
    v33 = a1[6];
    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:a1[7]];
    *buf = 138544130;
    v46 = v32;
    v47 = 2114;
    v48 = v33;
    v49 = 2112;
    v50 = v7;
    v51 = 2048;
    v52 = v34;
    v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (v9)
  {
    v22 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (!v22)
      {
        goto LABEL_22;
      }

      v24 = a1[5];
      v23 = a1[6];
      v25 = a1[4];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v46 = v24;
      v47 = 2114;
      v48 = v23;
      v49 = 2114;
      v50 = v9;
      v51 = 2114;
      v52 = v25;
      v53 = 2048;
      v54 = v26;
      _os_log_error_impl(&dword_1A2860000, v12, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      goto LABEL_17;
    }

    if (v22)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
    }
  }

  else
  {
    v27 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v27)
      {
        goto LABEL_22;
      }

      v29 = a1[5];
      v28 = a1[6];
      v30 = a1[4];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138544130;
      v46 = v29;
      v47 = 2114;
      v48 = v28;
      v49 = 2114;
      v50 = v30;
      v51 = 2048;
      v52 = v31;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v20 = v12;
      v21 = 42;
LABEL_16:
      _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_17:

      goto LABEL_22;
    }

    if (v27)
    {
      v35 = a1[5];
      v36 = a1[6];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138543874;
      v46 = v35;
      v47 = 2114;
      v48 = v36;
      v49 = 2048;
      v50 = v37;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v12;
      v21 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  v38 = a1[9];
  if (v38)
  {
    v39 = a1[8];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_158;
    v40[3] = &unk_1E769C980;
    v44 = v38;
    v41 = v7;
    v42 = v8;
    v43 = v9;
    dispatch_async(v39, v40);
  }
}

void __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a2;
  v8 = a4;
  v9 = a5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  if ([v10 disarm])
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a4;
  v8 = a5;
  v9 = *(a1 + 32);
  v10 = [a2 msv_filter:&__block_literal_global_83];
  if ([v10 count] && objc_msgSend(*(a1 + 40), "disarm"))
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)searchForOutputDevices:(id)devices categories:(id)categories timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  v91 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  categoriesCopy = categories;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_28:
    queueCopy = MEMORY[0x1E69E96A0];
    v57 = MEMORY[0x1E69E96A0];
    if (detailsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  [MRAVLightweightReconnaissanceSession searchForOutputDevices:categories:timeout:details:queue:completion:];
  if (!queueCopy)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (detailsCopy)
  {
    goto LABEL_4;
  }

LABEL_29:
  detailsCopy = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"MRAVLightweightReconnaissanceSession.searchForOutputDevicesWithCategories"];
LABEL_4:
  v18 = [MEMORY[0x1E695DF00] now];
  categoriesCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ - %@", devicesCopy, categoriesCopy];
  v20 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRRequestDetails *)detailsCopy requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", @"searchForOutputDevicesWithCategories", requestID];

  if (categoriesCopy)
  {
    [v22 appendFormat:@" for %@", categoriesCopy];
  }

  initiator = [(MRRequestDetails *)detailsCopy initiator];

  if (initiator)
  {
    initiator2 = [(MRRequestDetails *)detailsCopy initiator];
    [v22 appendFormat:@" because %@", initiator2];
  }

  v65 = categoriesCopy;
  v25 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v90 = v22;
    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (timeout > 60.0)
  {
    timeout = 60.0;
  }

  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke;
  v83[3] = &unk_1E76A2440;
  v26 = detailsCopy;
  v84 = v26;
  v27 = v18;
  v85 = v27;
  v28 = queueCopy;
  v86 = v28;
  v29 = completionCopy;
  v87 = v29;
  v30 = MEMORY[0x1A58E3570](v83);
  if (![categoriesCopy count])
  {

    categoriesCopy = &unk_1F1577608;
  }

  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2;
  v80[3] = &unk_1E76A2468;
  v31 = devicesCopy;
  v81 = v31;
  v32 = v26;
  v82 = v32;
  v33 = [categoriesCopy msv_compactMap:v80];
  v34 = [MRBlockGuard alloc];
  v63 = v32;
  requestReasonID = [(MRRequestDetails *)v32 requestReasonID];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_189;
  v77[3] = &unk_1E769AB50;
  v36 = v30;
  v79 = v36;
  v37 = v33;
  v78 = v37;
  v38 = [(MRBlockGuard *)v34 initWithTimeout:requestReasonID reason:v77 handler:timeout];

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2_190;
  v73[3] = &unk_1E76A2490;
  v39 = v38;
  v74 = v39;
  v40 = v36;
  v76 = v40;
  v41 = v37;
  v75 = v41;
  v42 = MEMORY[0x1A58E3570](v73);
  v64 = v31;
  if (![v41 count])
  {
    v55 = categoriesCopy;
    v47 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39 description:@"Could not resolve the input categories to anything"];
    (v42)[2](v42, 0, 0, v47);
LABEL_25:
    v56 = v65;
    goto LABEL_26;
  }

  v62 = v39;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v43 = v41;
  v44 = [v43 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (!v44)
  {
    v55 = categoriesCopy;
    v47 = v43;
    goto LABEL_25;
  }

  v45 = v44;
  v58 = v41;
  v59 = v40;
  v60 = v28;
  v61 = categoriesCopy;
  v46 = *v70;
  v47 = v43;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v70 != v46)
      {
        objc_enumerationMutation(v47);
      }

      v49 = *(*(&v69 + 1) + 8 * i);
      first = [v49 first];
      second = [v49 second];
      category = [second category];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_3;
      v66[3] = &unk_1E76A24B8;
      v53 = v42;
      v67 = category;
      v68 = v53;
      v54 = category;
      [first beginSearchWithTimeout:v66 completion:7.0];

      v47 = v43;
    }

    v45 = [v43 countByEnumeratingWithState:&v69 objects:v88 count:16];
  }

  while (v45);
  v28 = v60;
  v55 = v61;
  v56 = v65;
  v41 = v58;
  v40 = v59;
  v39 = v62;
LABEL_26:
}

void __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = @"activeCategory";
  if (v10)
  {
    v13 = v10;
  }

  v14 = v13;
  v15 = _MRLogForCategory(0xAuLL);
  v16 = v15;
  if (!v9 || v12)
  {
    if (v12)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v17 = [*(a1 + 32) requestID];
      v18 = [MEMORY[0x1E695DF00] date];
      [v18 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544386;
      v45 = @"searchForOutputDevicesWithCategories";
      v46 = 2114;
      v47 = v17;
      v48 = 2114;
      v49 = v12;
      v50 = 2114;
      v51 = v14;
      v52 = 2048;
      v53 = v23;
      _os_log_error_impl(&dword_1A2860000, v16, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      goto LABEL_13;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = [*(a1 + 32) requestID];
    v18 = [MEMORY[0x1E695DF00] date];
    [v18 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138544130;
    v45 = @"searchForOutputDevicesWithCategories";
    v46 = 2114;
    v47 = v17;
    v48 = 2114;
    v49 = v14;
    v50 = 2048;
    v51 = v24;
    v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v21 = v16;
    v22 = 42;
  }

  else
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = [*(a1 + 32) requestID];
    v18 = [MEMORY[0x1E695DF00] date];
    [v18 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138544386;
    v45 = @"searchForOutputDevicesWithCategories";
    v46 = 2114;
    v47 = v17;
    v48 = 2112;
    v49 = v9;
    v50 = 2114;
    v51 = v14;
    v52 = 2048;
    v53 = v19;
    v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
    v21 = v16;
    v22 = 52;
  }

  _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_13:

LABEL_14:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v39 + 1) + 8 * i) first];
        [v30 cancelSearch];
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v27);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_178;
  block[3] = &unk_1E769AC18;
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v37 = v12;
  v38 = v32;
  v36 = v9;
  v33 = v12;
  v34 = v9;
  dispatch_async(v31, block);
}

id __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:*(a1 + 32) features:1 details:*(a1 + 40)];
  [(MRAVReconnaissanceSession *)v4 setCachedDiscoveryEnabled:1];
  [(MRAVReconnaissanceSession *)v4 setShouldLog:0];
  if (![v3 length])
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E6958460] auxiliarySession];
  v15 = 0;
  v6 = [v5 setCategory:v3 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = [v5 opaqueSessionID];
    v9 = [(MRAVReconnaissanceSession *)v4 discoverySession];
    [v9 setTargetAudioSessionID:v8];

LABEL_5:
    v10 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:v4 second:v5];
    goto LABEL_9;
  }

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to set %@ category on aux content %@", v3, v7];
  v12 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) requestID];
    *buf = 138543874;
    v17 = @"searchForOutputDevicesWithCategories";
    v18 = 2114;
    v19 = v13;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

void __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2_190(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return (*(*(result + 40) + 16))(*(result + 40), a2, *(result + 32));
  }

  return result;
}

void __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) removeOutputDevicesAddedCallback:*(*(*(a1 + 80) + 8) + 40)];
  [*(a1 + 32) setDiscoveryMode:0];
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (!v5 || v6)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v10 = [*(a1 + 48) requestID];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v27 = v16;
      v28 = 2114;
      v29 = v10;
      v30 = 2048;
      v31 = v17;
      v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v14 = v8;
      v15 = 32;
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) requestID];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2112;
    v31 = v5;
    v32 = 2048;
    v33 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_204;
  block[3] = &unk_1E769AC18;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v24 = v6;
  v25 = v19;
  v23 = v5;
  v20 = v6;
  v21 = v5;
  dispatch_async(v18, block);
}

uint64_t __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_5;
        v13[3] = &unk_1E769CA28;
        v13[4] = v8;
        v10 = [v9 msv_filter:v13];
        if ([v10 count])
        {
          if ((*(*(a1 + 56) + 16))())
          {
            (*(*(a1 + 64) + 16))();
          }

          [*(a1 + 40) addObjectsFromArray:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 40) count];
  if (v11 == [*(a1 + 48) count])
  {
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:141];
    (*(*(a1 + 64) + 16))();
  }
}

+ (void)setSearchEndpointsForOutputDeviceUIDImplementation:(id)implementation
{
  v3 = MEMORY[0x1A58E3570](implementation, a2);
  v4 = __searchEndpointsForOutputDeviceUIDImplementation;
  __searchEndpointsForOutputDeviceUIDImplementation = v3;
}

- (id)_discoverySessionForFeature:(void *)feature
{
  if (feature)
  {
    v3 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:a2];
    [v3 setCachedDiscoveryEnabled:{objc_msgSend(feature, "cachedDiscoveryEnabled")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)searchOutputDeviceUIDs:(id)ds matchingPredicate:(id)predicate timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  v81 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  predicateCopy = predicate;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if ([dsCopy count])
  {
    if (predicateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:785 description:{@"Invalid parameter not satisfying: %@", @"outputDeviceUIDs.count > 0"}];

    if (predicateCopy)
    {
LABEL_3:
      if (completionCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:786 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];

  if (completionCopy)
  {
LABEL_4:
    if (queueCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:787 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

  if (!queueCopy)
  {
LABEL_5:
    queueCopy = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
  }

LABEL_6:
  v21 = [MEMORY[0x1E695DF00] now];
  if (!detailsCopy)
  {
    detailsCopy = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"MRAVLightweightReconnaissanceSession.searchOutputDeviceUIDsWithPredicate"];
  }

  v22 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v22 setDiscoveryMode:3];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__36;
  v77 = __Block_byref_object_dispose__36;
  v78 = 0;
  v23 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRRequestDetails *)detailsCopy requestID];
  v25 = [v23 initWithFormat:@"%@<%@>", @"MRAVLightweightReconnaissanceSession.searchOutputDeviceUIDsWithPredicate", requestID];

  if (dsCopy)
  {
    [v25 appendFormat:@" for %@", dsCopy];
  }

  reason = [(MRRequestDetails *)detailsCopy reason];

  if (reason)
  {
    reason2 = [(MRRequestDetails *)detailsCopy reason];
    [v25 appendFormat:@" because %@", reason2];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v80 = v25;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke;
  v65[3] = &unk_1E76A24E0;
  v29 = v22;
  v72 = &v73;
  v66 = v29;
  v67 = @"MRAVLightweightReconnaissanceSession.searchOutputDeviceUIDsWithPredicate";
  v30 = detailsCopy;
  v68 = v30;
  v53 = v21;
  v69 = v53;
  v51 = queueCopy;
  v70 = v51;
  v52 = completionCopy;
  v71 = v52;
  v31 = MEMORY[0x1A58E3570](v65);
  v32 = [MRBlockGuard alloc];
  requestReasonID = [(MRRequestDetails *)v30 requestReasonID];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_2;
  v63[3] = &unk_1E769AD80;
  v34 = v31;
  v64 = v34;
  v35 = [(MRBlockGuard *)v32 initWithTimeout:requestReasonID reason:v63 handler:timeout];

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_3;
  v60[3] = &unk_1E76A2508;
  v36 = v35;
  v61 = v36;
  v37 = v34;
  v62 = v37;
  v38 = MEMORY[0x1A58E3570](v60);
  v39 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:dsCopy];
  v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_4;
  v54[3] = &unk_1E76A2530;
  v41 = dsCopy;
  v55 = v41;
  v42 = predicateCopy;
  v58 = v42;
  v43 = v38;
  v59 = v43;
  v44 = v40;
  v56 = v44;
  v45 = v39;
  v57 = v45;
  v46 = [v29 addOutputDevicesAddedCallback:v54];
  v47 = v74[5];
  v74[5] = v46;

  _Block_object_dispose(&v73, 8);
}

- (void)searchEndpointsForOutputDeviceUID:timeout:details:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"details" object:? file:? lineNumber:? description:?];
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v1 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_11_5(v1, v2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v3, v4, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v5, v6, v7, v8);

  OUTLINED_FUNCTION_10();
}

- (void)searchEndpointsForString:timeout:reason:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"string" object:? file:? lineNumber:? description:?];
}

void __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_2();
  v1 = v0;
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(v1 + 48)];
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v3, v4, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v5, v6, v7, v8);

  OUTLINED_FUNCTION_10();
}

- (void)searchEndpointsForRoutingContextUID:timeout:details:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"routingContextUID" object:? file:? lineNumber:? description:?];
}

void __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_2();
  v2 = [*(v1 + 48) requestID];
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(v0 + 56)];
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9);

  OUTLINED_FUNCTION_10();
}

- (void)searchForOutputDevices:categories:timeout:details:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end