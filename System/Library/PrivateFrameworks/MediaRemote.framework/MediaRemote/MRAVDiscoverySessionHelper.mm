@interface MRAVDiscoverySessionHelper
- (MRAVDiscoverySessionHelper)initWithFeatures:(unint64_t)features;
- (id)createDiscoverySession;
- (void)searchAVOutputDeviceForUID:(id)d timeout:(double)timeout identifier:(id)identifier reason:(id)reason completion:(id)completion;
@end

@implementation MRAVDiscoverySessionHelper

- (MRAVDiscoverySessionHelper)initWithFeatures:(unint64_t)features
{
  v5.receiver = self;
  v5.super_class = MRAVDiscoverySessionHelper;
  result = [(MRAVDiscoverySessionHelper *)&v5 init];
  if (result)
  {
    result->_discoverySessionFeatures = features;
  }

  return result;
}

- (void)searchAVOutputDeviceForUID:(id)d timeout:(double)timeout identifier:(id)identifier reason:(id)reason completion:(id)completion
{
  v67[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  reasonCopy = reason;
  completionCopy = completion;
  date = [MEMORY[0x1E695DF00] date];
  reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"searchAVOutputDeviceForUID-%@", reasonCopy];
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputDeviceUID=%@", dCopy];
  identifierCopy = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", reasonCopy, identifierCopy];
  v18 = identifierCopy;
  if (dCopy)
  {
    [identifierCopy appendFormat:@" for %@", dCopy];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v64 = 0x3042000000;
  v65 = __Block_byref_object_copy__7;
  v66 = __Block_byref_object_dispose__7;
  v67[0] = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke;
  v56[3] = &unk_1E769C7F8;
  p_buf = &buf;
  v20 = dCopy;
  v57 = v20;
  v21 = reasonCopy;
  v58 = v21;
  v38 = identifierCopy;
  v59 = v38;
  v22 = date;
  v60 = v22;
  v23 = completionCopy;
  v61 = v23;
  v24 = MEMORY[0x1A58E3570](v56);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__17;
  v54 = __Block_byref_object_dispose__18;
  v55 = 0;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_19;
  v46[3] = &unk_1E769C848;
  v25 = v20;
  v47 = v25;
  v49 = &v50;
  v26 = v24;
  v48 = v26;
  v27 = MEMORY[0x1A58E3570](v46);
  createDiscoverySession = [(MRAVDiscoverySessionHelper *)self createDiscoverySession];
  [createDiscoverySession setDiscoveryMode:3];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v30 = *MEMORY[0x1E69587A0];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_3;
  v43[3] = &unk_1E769C870;
  v31 = v27;
  v45 = v31;
  v32 = createDiscoverySession;
  v44 = v32;
  v33 = [defaultCenter addObserverForName:v30 object:v32 queue:0 usingBlock:v43];
  objc_storeWeak((*(&buf + 1) + 40), v33);

  v34 = [MRBlockGuard alloc];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_4;
  v41[3] = &unk_1E769AD80;
  v35 = v26;
  v42 = v35;
  v36 = [(MRBlockGuard *)v34 initWithTimeout:v21 reason:v41 handler:timeout];
  v37 = v51[5];
  v51[5] = v36;

  (*(v31 + 2))(v31, v32);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(v67);
}

void __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((*(a1[9] + 8) + 40));
  [v7 removeObserver:WeakRetained];

  v9 = a1[4];
  v10 = _MRLogForCategory(0xAuLL);
  v11 = v10;
  if (v5 && !v6)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        v14 = a1[5];
        v13 = a1[6];
        v15 = a1[4];
        v16 = [MEMORY[0x1E695DF00] date];
        [v16 timeIntervalSinceDate:a1[7]];
        v37 = 138544386;
        v38 = v14;
        v39 = 2114;
        v40 = v13;
        v41 = 2112;
        v42 = v5;
        v43 = 2114;
        v44 = v15;
        v45 = 2048;
        v46 = v17;
        v18 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v19 = v11;
        v20 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v37, v20);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v12)
    {
      goto LABEL_22;
    }

    v31 = a1[5];
    v32 = a1[6];
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:a1[7]];
    v37 = 138544130;
    v38 = v31;
    v39 = 2114;
    v40 = v32;
    v41 = 2112;
    v42 = v5;
    v43 = 2048;
    v44 = v33;
    v18 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v19 = v11;
    v20 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v21 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v21)
      {
        v23 = a1[5];
        v22 = a1[6];
        v24 = a1[4];
        v16 = [MEMORY[0x1E695DF00] date];
        [v16 timeIntervalSinceDate:a1[7]];
        v37 = 138544386;
        v38 = v23;
        v39 = 2114;
        v40 = v22;
        v41 = 2114;
        v42 = v6;
        v43 = 2114;
        v44 = v24;
        v45 = 2048;
        v46 = v25;
        _os_log_error_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v37, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v21)
    {
      __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_cold_1(a1, v6, v11);
    }

    goto LABEL_22;
  }

  v26 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (!v26)
    {
      goto LABEL_22;
    }

    v34 = a1[5];
    v35 = a1[6];
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:a1[7]];
    v37 = 138543874;
    v38 = v34;
    v39 = 2114;
    v40 = v35;
    v41 = 2048;
    v42 = v36;
    v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v19 = v11;
    v20 = 32;
    goto LABEL_16;
  }

  if (v26)
  {
    v28 = a1[5];
    v27 = a1[6];
    v29 = a1[4];
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:a1[7]];
    v37 = 138544130;
    v38 = v28;
    v39 = 2114;
    v40 = v27;
    v41 = 2114;
    v42 = v29;
    v43 = 2048;
    v44 = v30;
    v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[8] + 16))();
}

void __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = [a2 availableOutputDevices];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_2;
  v5[3] = &unk_1E769C820;
  v6 = *(a1 + 32);
  v4 = [v3 mr_first:v5];
  if (v4 && [*(*(*(a1 + 48) + 8) + 40) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (id)createDiscoverySession
{
  v2 = [objc_alloc(MEMORY[0x1E6958810]) initWithDeviceFeatures:self->_discoverySessionFeatures];

  return v2;
}

void __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a1[5];
  v7 = a1[6];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSinceDate:a1[7]];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

@end