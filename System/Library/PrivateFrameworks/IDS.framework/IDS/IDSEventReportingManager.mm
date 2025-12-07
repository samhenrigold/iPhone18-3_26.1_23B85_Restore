@interface IDSEventReportingManager
- (BOOL)serverEnabledEventReporting;
- (void)reportClientEvent:(id)event withCompletion:(id)completion;
@end

@implementation IDSEventReportingManager

- (void)reportClientEvent:(id)event withCompletion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(IDSEventReportingManager *)self serverEnabledEventReporting])
    {
      if (_os_feature_enabled_impl())
      {
        if (eventCopy)
        {
          v38[0] = 0;
          v38[1] = v38;
          v38[2] = 0x2020000000;
          v39 = 0;
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = sub_195A47470;
          v35[3] = &unk_1E743FC00;
          v37 = v38;
          v36 = completionCopy;
          v8 = MEMORY[0x19A8BBEF0](v35);
          registration = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            reportType = [eventCopy reportType];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = reportType;
            _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Reporting event of type %@ to server with completion", &buf, 0xCu);
          }

          v29 = MEMORY[0x1E69E9820];
          v30 = 3221225472;
          v31 = sub_195A474C4;
          v32 = &unk_1E743FC28;
          v33 = eventCopy;
          v11 = v8;
          v34 = v11;
          v12 = &v29;
          v13 = v11;
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v47 = sub_195A47558;
          v48 = &unk_1E743FC78;
          v49 = v13;
          v50 = v12;
          v14 = v12;
          v15 = v13;
          [IDSXPCDaemonController performDaemonControllerTask:&buf, v29, v30, v31, v32];

          _Block_object_dispose(v38, 8);
        }

        else
        {
          registration2 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
          {
            sub_195B2A320();
          }

          v26 = MEMORY[0x1E696ABC0];
          v40 = *MEMORY[0x1E696A278];
          v41 = @"Missing event parameter";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v28 = [v26 errorWithDomain:@"IDSEventReportingManagerErrorDomain" code:200 userInfo:v27];
          (*(completionCopy + 2))(completionCopy, 0, v28);
        }
      }

      else
      {
        registration3 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration3, OS_LOG_TYPE_ERROR))
        {
          sub_195B2A2E0();
        }

        v22 = MEMORY[0x1E696ABC0];
        v42 = *MEMORY[0x1E696A278];
        v43 = @"Event reporting disabled by feature flag";
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v24 = [v22 errorWithDomain:@"IDSEventReportingManagerErrorDomain" code:100 userInfo:v23];
        (*(completionCopy + 2))(completionCopy, 0, v24);
      }
    }

    else
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_ERROR))
      {
        sub_195B2A2A0();
      }

      v18 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A278];
      v45 = @"Event reporting dsiabled by server";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v20 = [v18 errorWithDomain:@"IDSEventReportingManagerErrorDomain" code:100 userInfo:v19];
      (*(completionCopy + 2))(completionCopy, 0, v20);
    }
  }

  else
  {
    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A3A0();
    }
  }
}

- (BOOL)serverEnabledEventReporting
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"client-report-ckv-reliability-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end