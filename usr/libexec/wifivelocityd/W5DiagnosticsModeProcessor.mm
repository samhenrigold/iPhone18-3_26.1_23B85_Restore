@interface W5DiagnosticsModeProcessor
- (BOOL)_canStartMode:(id)mode error:(id *)error;
- (W5DiagnosticsModeProcessor)initWithCurrentPeer:(id)peer;
- (void)_cleanup;
- (void)_runAction:(int64_t)action peer:(id)peer info:(id)info handler:(id)handler completion:(id)completion;
- (void)performStartOperationsWithConfiguration:(id)configuration handler:(id)handler completion:(id)completion;
- (void)performStopOperationsForMode:(id)mode handler:(id)handler completion:(id)completion;
- (void)performUpdateOperationsForMode:(id)mode incomingMode:(id)incomingMode handler:(id)handler completion:(id)completion;
@end

@implementation W5DiagnosticsModeProcessor

- (W5DiagnosticsModeProcessor)initWithCurrentPeer:(id)peer
{
  peerCopy = peer;
  v13.receiver = self;
  v13.super_class = W5DiagnosticsModeProcessor;
  v5 = [(W5DiagnosticsModeProcessor *)&v13 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!peerCopy)
  {
    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315906;
      v15 = "[W5DiagnosticsModeProcessor initWithCurrentPeer:]";
      v16 = 2080;
      v17 = "W5DiagnosticsModeProcessor.m";
      v18 = 1024;
      v19 = 32;
      v20 = 2080;
      v21 = "[W5DiagnosticsModeProcessor initWithCurrentPeer:]";
      LODWORD(v12) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) %s: [DM] currentPeer is nil", &v14, v12, LODWORD(v13.receiver), v13.super_class);
    }

    goto LABEL_9;
  }

  v5->_currentPeer = peerCopy;
  v7 = objc_alloc_init(NSOperationQueue);
  queue = v6->_queue;
  v6->_queue = v7;

  v9 = v6->_queue;
  if (!v9)
  {
LABEL_9:

    v6 = 0;
    goto LABEL_5;
  }

  [(NSOperationQueue *)v9 setMaxConcurrentOperationCount:1];
LABEL_5:

  return v6;
}

- (void)performStartOperationsWithConfiguration:(id)configuration handler:(id)handler completion:(id)completion
{
  configurationCopy = configuration;
  handlerCopy = handler;
  completionCopy = completion;
  v9 = sub_100098A04();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136316162;
    *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
    v100 = 2080;
    v101 = "W5DiagnosticsModeProcessor.m";
    v102 = 1024;
    v103 = 53;
    v104 = 2080;
    v105 = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
    v106 = 2114;
    v107 = configurationCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) %s: [DM] configuration='%{public}@'", location, 48);
  }

  v10 = [[W5DiagnosticsMode alloc] initWithConfiguration:configurationCopy];
  [(W5DiagnosticsModeProcessor *)self setMode:v10];

  mode = [(W5DiagnosticsModeProcessor *)self mode];
  LODWORD(v10) = mode == 0;

  if (v10)
  {
    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315906;
      *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
      v100 = 2080;
      v101 = "W5DiagnosticsModeProcessor.m";
      v102 = 1024;
      v103 = 57;
      v104 = 2114;
      v105 = configurationCopy;
      LODWORD(v56) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) [DM] unable to create diagnostics mode from provided configuration='%{public}@'", location, v56);
    }

    v96 = NSLocalizedFailureReasonErrorKey;
    v97 = @"W5ParamErr";
    v57 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    peers = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v57];
    v98 = peers;
    v23 = [NSArray arrayWithObjects:&v98 count:1];
    completionCopy[2](completionCopy, 0, v23);
  }

  else
  {
    mode2 = [(W5DiagnosticsModeProcessor *)self mode];
    v79 = 0;
    v13 = [(W5DiagnosticsModeProcessor *)self _canStartMode:mode2 error:&v79];
    v57 = v79;

    if (v13)
    {
      [(W5DiagnosticsModeProcessor *)self setConfiguration:configurationCopy];
      mode3 = [(W5DiagnosticsModeProcessor *)self mode];
      [mode3 setState:3];

      v15 = +[NSMutableArray array];
      [(W5DiagnosticsModeProcessor *)self setOperationErrors:v15];

      mode4 = [(W5DiagnosticsModeProcessor *)self mode];
      peers = [mode4 peers];

      currentPeer = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role = [currentPeer role];

      if ((role & 8) != 0)
      {
        v25 = sub_10008EF68(peers, 1);
        obj = v25;
        if (v25)
        {
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v26 = [v25 countByEnumeratingWithState:&v75 objects:v94 count:16];
          if (v26)
          {
            v27 = *v76;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v76 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v75 + 1) + 8 * i);
                v92 = @"DiagnosticsMode";
                mode5 = [(W5DiagnosticsModeProcessor *)self mode];
                v93 = mode5;
                v31 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:3 peer:v29 info:v31 handler:handlerCopy completion:completionCopy];
              }

              v26 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
            }

            while (v26);
          }
        }

        else
        {
          v37 = sub_100098A04();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *location = 136315138;
            *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v37, 0, "[wifivelocity] %s: [DM] no primary peers found in peer list", location);
          }
        }

        v38 = sub_10008EF68(peers, 2);
        v61 = v38;
        if (v38)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v39 = [v38 countByEnumeratingWithState:&v71 objects:v91 count:16];
          if (v39)
          {
            v40 = *v72;
            do
            {
              for (j = 0; j != v39; j = j + 1)
              {
                if (*v72 != v40)
                {
                  objc_enumerationMutation(v61);
                }

                v42 = *(*(&v71 + 1) + 8 * j);
                v89 = @"DiagnosticsMode";
                mode6 = [(W5DiagnosticsModeProcessor *)self mode];
                v90 = mode6;
                v44 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:4 peer:v42 info:v44 handler:handlerCopy completion:completionCopy];
              }

              v39 = [v61 countByEnumeratingWithState:&v71 objects:v91 count:16];
            }

            while (v39);
          }
        }

        else
        {
          v45 = sub_100098A04();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *location = 136315138;
            *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v45, 0, "[wifivelocity] %s: [DM] no secondary peers found in peer list", location);
          }
        }

        v46 = sub_10008EF68(peers, 4);
        mode10 = v46;
        if (v46)
        {
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v47 = [v46 countByEnumeratingWithState:&v67 objects:v88 count:16];
          if (v47)
          {
            v48 = *v68;
            do
            {
              for (k = 0; k != v47; k = k + 1)
              {
                if (*v68 != v48)
                {
                  objc_enumerationMutation(mode10);
                }

                v50 = *(*(&v67 + 1) + 8 * k);
                v86 = @"DiagnosticsMode";
                mode7 = [(W5DiagnosticsModeProcessor *)self mode];
                v87 = mode7;
                v52 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:0 peer:v50 info:v52 handler:handlerCopy completion:completionCopy];

                v84 = @"DiagnosticsMode";
                mode8 = [(W5DiagnosticsModeProcessor *)self mode];
                v85 = mode8;
                v54 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:v50 info:v54 handler:handlerCopy completion:completionCopy];
              }

              v47 = [mode10 countByEnumeratingWithState:&v67 objects:v88 count:16];
            }

            while (v47);
          }

          goto LABEL_54;
        }

        v36 = sub_100098A04();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v36, 0, "[wifivelocity] %s: [DM] no sniffers found in peer list", location);
        }

        mode10 = 0;
      }

      else
      {
        currentPeer2 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        if ([currentPeer2 role])
        {
        }

        else
        {
          currentPeer3 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v21 = ([currentPeer3 role] & 2) == 0;

          if (v21)
          {
            goto LABEL_55;
          }
        }

        currentPeer4 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v82[0] = @"event";
        v33 = [[NSNumber alloc] initWithInt:0];
        v82[1] = @"DiagnosticsMode";
        v83[0] = v33;
        mode9 = [(W5DiagnosticsModeProcessor *)self mode];
        v83[1] = mode9;
        v35 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
        [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:currentPeer4 info:v35 handler:handlerCopy completion:completionCopy];

        obj = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v80[0] = @"event";
        v61 = [[NSNumber alloc] initWithInt:0];
        v80[1] = @"DiagnosticsMode";
        v81[0] = v61;
        mode10 = [(W5DiagnosticsModeProcessor *)self mode];
        v81[1] = mode10;
        v36 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
        [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:obj info:v36 handler:handlerCopy completion:completionCopy];
      }

LABEL_54:
LABEL_55:
      objc_initWeak(location, self);
      queue = [(W5DiagnosticsModeProcessor *)self queue];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10008F0B4;
      v64[3] = &unk_1000E3520;
      objc_copyWeak(&v66, location);
      v65 = completionCopy;
      [queue addBarrierBlock:v64];

      objc_destroyWeak(&v66);
      objc_destroyWeak(location);
      goto LABEL_56;
    }

    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136316162;
      *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
      v100 = 2080;
      v101 = "W5DiagnosticsModeProcessor.m";
      v102 = 1024;
      v103 = 65;
      v104 = 2080;
      v105 = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
      v106 = 2114;
      v107 = v57;
      LODWORD(v56) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v24, 0, "[wifivelocity] %s (%s:%u) %s: [DM] start preflight checks failed error='%{public}@'", location, v56);
    }

    v95 = v57;
    peers = [NSArray arrayWithObjects:&v95 count:1];
    completionCopy[2](completionCopy, 0, peers);
  }

LABEL_56:
}

- (BOOL)_canStartMode:(id)mode error:(id *)error
{
  peers = [mode peers];
  v6 = sub_10008EF68(peers, 4);

  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          info = [*(*(&v19 + 1) + 8 * i) info];
          v13 = [info objectForKeyedSubscript:@"PrimaryChannel"];

          if (!v13)
          {
            v23 = NSLocalizedFailureReasonErrorKey;
            v24 = @"W5ParamErr";
            v15 = 1;
            v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
            v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v17];

            if (error && v14)
            {
              v18 = v14;
              v15 = 0;
              *error = v14;
            }

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v14 = 0;
  v15 = 1;
LABEL_12:

  return v15;
}

- (void)performStopOperationsForMode:(id)mode handler:(id)handler completion:(id)completion
{
  modeCopy = mode;
  handlerCopy = handler;
  completionCopy = completion;
  v92 = modeCopy;
  if ([modeCopy state] == 3 || objc_msgSend(modeCopy, "state") == 4 || objc_msgSend(modeCopy, "state") == 5)
  {
    [(W5DiagnosticsModeProcessor *)self setMode:modeCopy];
    v8 = +[NSMutableArray array];
    [(W5DiagnosticsModeProcessor *)self setOperationErrors:v8];

    mode = [(W5DiagnosticsModeProcessor *)self mode];
    [mode setState:10];

    currentPeer = [(W5DiagnosticsModeProcessor *)self currentPeer];
    if (([currentPeer role] & 8) != 0)
    {
    }

    else
    {
      currentPeer2 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role = [currentPeer2 role];

      if ((role & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    mode2 = [(W5DiagnosticsModeProcessor *)self mode];
    peers = [mode2 peers];
    v91 = sub_10008EF68(peers, 4);

    if (!v91)
    {
      obj = sub_100098A04();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315138;
        *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, obj, 0, "[wifivelocity] %s: [DM] no sniffers found in peer list", location);
      }

LABEL_25:

      mode3 = [(W5DiagnosticsModeProcessor *)self mode];
      peers2 = [mode3 peers];
      v34 = sub_10008EF68(peers2, 1);

      mode4 = [(W5DiagnosticsModeProcessor *)self mode];
      peers3 = [mode4 peers];
      v37 = sub_10008EF68(peers3, 2);

      v101 = objc_alloc_init(NSMutableArray);
      if (v34)
      {
        [v101 addObjectsFromArray:v34];
      }

      if (v37)
      {
        [v101 addObjectsFromArray:v37];
      }

      v150 = @"peers";
      v151 = v101;
      v38 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:12 peer:0 info:v38 handler:handlerCopy completion:completionCopy];

      if (v34)
      {
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v39 = v34;
        v40 = [v39 countByEnumeratingWithState:&v110 objects:v149 count:16];
        if (v40)
        {
          v41 = *v111;
          do
          {
            for (i = 0; i != v40; i = i + 1)
            {
              if (*v111 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v110 + 1) + 8 * i);
              v147 = @"DiagnosticsMode";
              mode5 = [(W5DiagnosticsModeProcessor *)self mode];
              v148 = mode5;
              v45 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
              [(W5DiagnosticsModeProcessor *)self _runAction:3 peer:v43 info:v45 handler:handlerCopy completion:completionCopy];
            }

            v40 = [v39 countByEnumeratingWithState:&v110 objects:v149 count:16];
          }

          while (v40);
        }
      }

      else
      {
        v39 = sub_100098A04();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v39, 0, "[wifivelocity] %s: [DM] no primary peers found in peer list", location);
        }
      }

      if (v37)
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v46 = v37;
        v47 = [v46 countByEnumeratingWithState:&v106 objects:v146 count:16];
        if (v47)
        {
          v48 = *v107;
          do
          {
            for (j = 0; j != v47; j = j + 1)
            {
              if (*v107 != v48)
              {
                objc_enumerationMutation(v46);
              }

              v50 = *(*(&v106 + 1) + 8 * j);
              v144 = @"DiagnosticsMode";
              mode6 = [(W5DiagnosticsModeProcessor *)self mode];
              v145 = mode6;
              v52 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];
              [(W5DiagnosticsModeProcessor *)self _runAction:4 peer:v50 info:v52 handler:handlerCopy completion:completionCopy];
            }

            v47 = [v46 countByEnumeratingWithState:&v106 objects:v146 count:16];
          }

          while (v47);
        }
      }

      else
      {
        v46 = sub_100098A04();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v46, 0, "[wifivelocity] %s: [DM] no secondary peers found in peer list", location);
        }
      }

LABEL_52:
      currentPeer3 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      if ([currentPeer3 role])
      {
      }

      else
      {
        currentPeer4 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v55 = ([currentPeer4 role] & 2) == 0;

        if (v55)
        {
          goto LABEL_57;
        }
      }

      currentPeer5 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v142[0] = @"event";
      v57 = [[NSNumber alloc] initWithInt:1];
      v143[0] = v57;
      v142[1] = @"DiagnosticsMode";
      mode7 = [(W5DiagnosticsModeProcessor *)self mode];
      v143[1] = mode7;
      v59 = [NSDictionary dictionaryWithObjects:v143 forKeys:v142 count:2];
      [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:currentPeer5 info:v59 handler:handlerCopy completion:completionCopy];

      currentPeer6 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v140[0] = @"event";
      v61 = [[NSNumber alloc] initWithInt:1];
      v140[1] = @"DiagnosticsMode";
      v141[0] = v61;
      v141[1] = v92;
      v62 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:2];
      [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:currentPeer6 info:v62 handler:handlerCopy completion:completionCopy];

      currentPeer7 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v138 = @"DiagnosticsMode";
      mode8 = [(W5DiagnosticsModeProcessor *)self mode];
      v139 = mode8;
      v65 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer7 info:v65 handler:handlerCopy completion:completionCopy];

      currentPeer8 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v136 = @"DiagnosticsMode";
      mode9 = [(W5DiagnosticsModeProcessor *)self mode];
      v137 = mode9;
      v68 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:10 peer:currentPeer8 info:v68 handler:handlerCopy completion:completionCopy];

LABEL_57:
      currentPeer9 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role2 = [currentPeer9 role];

      if (role2)
      {
        currentPeer10 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v134 = @"DiagnosticsMode";
        mode10 = [(W5DiagnosticsModeProcessor *)self mode];
        v135 = mode10;
        v73 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:7 peer:currentPeer10 info:v73 handler:handlerCopy completion:completionCopy];
      }

      currentPeer11 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role3 = [currentPeer11 role];

      if ((role3 & 4) != 0)
      {
        currentPeer12 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v132 = @"DiagnosticsMode";
        mode11 = [(W5DiagnosticsModeProcessor *)self mode];
        v133 = mode11;
        v78 = [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer12 info:v78 handler:handlerCopy completion:completionCopy];

        currentPeer13 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v130 = @"DiagnosticsMode";
        v131 = v92;
        v80 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:currentPeer13 info:v80 handler:handlerCopy completion:completionCopy];
      }

      operationErrors = [(W5DiagnosticsModeProcessor *)self operationErrors];
      if (operationErrors)
      {
        operationErrors2 = [(W5DiagnosticsModeProcessor *)self operationErrors];
        v83 = [operationErrors2 count] == 0;

        if (!v83)
        {
          mode12 = [(W5DiagnosticsModeProcessor *)self mode];
          [mode12 setState:5];
        }
      }

      objc_initWeak(location, self);
      queue = [(W5DiagnosticsModeProcessor *)self queue];
      v103[0] = _NSConcreteStackBlock;
      v103[1] = 3221225472;
      v103[2] = sub_100090310;
      v103[3] = &unk_1000E3520;
      objc_copyWeak(&v105, location);
      v104 = completionCopy;
      [queue addBarrierBlock:v103];

      objc_destroyWeak(&v105);
      objc_destroyWeak(location);
      goto LABEL_65;
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v91;
    v95 = [obj countByEnumeratingWithState:&v114 objects:v156 count:16];
    if (!v95)
    {
      goto LABEL_25;
    }

    v94 = *v115;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v115 != v94)
      {
        v16 = v15;
        objc_enumerationMutation(obj);
        v15 = v16;
      }

      v96 = v15;
      v100 = *(*(&v114 + 1) + 8 * v15);
      v154 = @"DiagnosticsMode";
      mode13 = [(W5DiagnosticsModeProcessor *)self mode];
      v155 = mode13;
      v18 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:1 peer:v100 info:v18 handler:handlerCopy completion:completionCopy];

      peer = [v100 peer];
      peerID = [peer peerID];
      currentPeer14 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      peer2 = [currentPeer14 peer];
      peerID2 = [peer2 peerID];
      v23 = peerID2;
      if (peerID == peerID2)
      {
        break;
      }

      peer3 = [v100 peer];
      peerID3 = [peer3 peerID];
      currentPeer15 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      peer4 = [currentPeer15 peer];
      peerID4 = [peer4 peerID];
      v29 = [peerID3 isEqual:peerID4];

      if (v29)
      {
        goto LABEL_18;
      }

      v152 = @"DiagnosticsMode";
      mode14 = [(W5DiagnosticsModeProcessor *)self mode];
      v153 = mode14;
      v31 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:v100 info:v31 handler:handlerCopy completion:completionCopy];

LABEL_20:
      v15 = v96 + 1;
      if (v95 == (v96 + 1))
      {
        v95 = [obj countByEnumeratingWithState:&v114 objects:v156 count:16];
        if (!v95)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }

LABEL_18:
    mode14 = sub_100098A04();
    if (os_log_type_enabled(mode14, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315394;
      *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
      v122 = 2112;
      v123 = v100;
      LODWORD(v90) = 22;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, mode14, 0, "[wifivelocity] %s: [DM] skipping local peer (%@) set sniffer action", location, v90);
    }

    goto LABEL_20;
  }

  v86 = sub_100098A04();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
    v122 = 2080;
    *location = 136316162;
    v123 = "W5DiagnosticsModeProcessor.m";
    v124 = 1024;
    v125 = 351;
    v126 = 2048;
    state = [modeCopy state];
    v128 = 2114;
    v129 = modeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v86, 0, "[wifivelocity] %s (%s:%u) [DM] invalid state (state=%ld) provided for stopping diagnostics mode='%{public}@'", location, 48);
  }

  v118 = NSLocalizedFailureReasonErrorKey;
  v119 = @"W5ParamErr";
  v87 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v88 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v87];
  v120 = v88;
  v89 = [NSArray arrayWithObjects:&v120 count:1];
  (*(completionCopy + 2))(completionCopy, 0, v89);

LABEL_65:
}

- (void)performUpdateOperationsForMode:(id)mode incomingMode:(id)incomingMode handler:(id)handler completion:(id)completion
{
  modeCopy = mode;
  incomingModeCopy = incomingMode;
  handlerCopy = handler;
  completionCopy = completion;
  [(W5DiagnosticsModeProcessor *)self setMode:incomingModeCopy];
  v12 = +[NSMutableArray array];
  [(W5DiagnosticsModeProcessor *)self setOperationErrors:v12];

  if ([incomingModeCopy state] != 3)
  {
    goto LABEL_13;
  }

  if (!modeCopy)
  {
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315650;
      *&location[4] = "[W5DiagnosticsModeProcessor performUpdateOperationsForMode:incomingMode:handler:completion:]";
      v87 = 2080;
      v88 = "W5DiagnosticsModeProcessor.m";
      v89 = 1024;
      v90 = 369;
      LODWORD(v60) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) [DM] No existing mode exists. Adopting incoming mode", location, v60, handlerCopy);
    }

    modeCopy = incomingModeCopy;
  }

  currentPeer = [(W5DiagnosticsModeProcessor *)self currentPeer];
  if ([currentPeer role])
  {

    goto LABEL_10;
  }

  currentPeer2 = [(W5DiagnosticsModeProcessor *)self currentPeer];
  v16 = ([currentPeer2 role] & 2) == 0;

  if (!v16)
  {
LABEL_10:
    currentPeer3 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v97[0] = @"event";
    v18 = [[NSNumber alloc] initWithInt:0];
    v97[1] = @"DiagnosticsMode";
    v98[0] = v18;
    v98[1] = modeCopy;
    v19 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:currentPeer3 info:v19 handler:handlerCopy completion:completionCopy];

    currentPeer4 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v95[0] = @"event";
    v21 = [[NSNumber alloc] initWithInt:0];
    v95[1] = @"DiagnosticsMode";
    v96[0] = v21;
    v96[1] = modeCopy;
    v22 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:currentPeer4 info:v22 handler:handlerCopy completion:completionCopy];
  }

  currentPeer5 = [(W5DiagnosticsModeProcessor *)self currentPeer];
  role = [currentPeer5 role];

  if ((role & 4) != 0)
  {
    currentPeer6 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v93 = @"DiagnosticsMode";
    v94 = modeCopy;
    v26 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:currentPeer6 info:v26 handler:handlerCopy completion:completionCopy];
  }

LABEL_13:
  if ([incomingModeCopy state] != 10)
  {
LABEL_29:
    objc_initWeak(location, self);
    queue = [(W5DiagnosticsModeProcessor *)self queue];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100090DE8;
    v63[3] = &unk_1000E3548;
    v65 = completionCopy;
    v64 = incomingModeCopy;
    objc_copyWeak(&v66, location);
    [queue addBarrierBlock:v63];

    objc_destroyWeak(&v66);
    objc_destroyWeak(location);
    goto LABEL_30;
  }

  if (modeCopy)
  {
    currentPeer7 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    role2 = [currentPeer7 role];

    if (role2)
    {
      currentPeer8 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v81 = @"DiagnosticsMode";
      v82 = modeCopy;
      v30 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:7 peer:currentPeer8 info:v30 handler:handlerCopy completion:completionCopy];
    }

    currentPeer9 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    role3 = [currentPeer9 role];

    if ((role3 & 2) != 0)
    {
      currentPeer10 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v79 = @"DiagnosticsMode";
      v80 = modeCopy;
      v34 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:currentPeer10 info:v34 handler:handlerCopy completion:completionCopy];
    }

    currentPeer11 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    if ([currentPeer11 role])
    {
    }

    else
    {
      currentPeer12 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v37 = ([currentPeer12 role] & 2) == 0;

      if (v37)
      {
LABEL_27:
        currentPeer13 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        role4 = [currentPeer13 role];

        if ((role4 & 4) != 0)
        {
          currentPeer14 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v69 = @"DiagnosticsMode";
          v70 = modeCopy;
          v56 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer14 info:v56 handler:handlerCopy completion:completionCopy];

          currentPeer15 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v67 = @"DiagnosticsMode";
          v68 = modeCopy;
          v58 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:currentPeer15 info:v58 handler:handlerCopy completion:completionCopy];
        }

        goto LABEL_29;
      }
    }

    currentPeer16 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v77[0] = @"event";
    v43 = [[NSNumber alloc] initWithInt:1];
    v77[1] = @"DiagnosticsMode";
    v78[0] = v43;
    v78[1] = modeCopy;
    v44 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:currentPeer16 info:v44 handler:handlerCopy completion:completionCopy];

    currentPeer17 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v75[0] = @"event";
    v46 = [[NSNumber alloc] initWithInt:1];
    v75[1] = @"DiagnosticsMode";
    v76[0] = v46;
    v76[1] = modeCopy;
    v47 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:currentPeer17 info:v47 handler:handlerCopy completion:completionCopy];

    currentPeer18 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v73 = @"DiagnosticsMode";
    v74 = modeCopy;
    v49 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer18 info:v49 handler:handlerCopy completion:completionCopy];

    currentPeer19 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v71 = @"DiagnosticsMode";
    mode = [(W5DiagnosticsModeProcessor *)self mode];
    v72 = mode;
    v52 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:10 peer:currentPeer19 info:v52 handler:handlerCopy completion:completionCopy];

    goto LABEL_27;
  }

  v38 = sub_100098A04();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136315906;
    *&location[4] = "[W5DiagnosticsModeProcessor performUpdateOperationsForMode:incomingMode:handler:completion:]";
    v87 = 2080;
    v88 = "W5DiagnosticsModeProcessor.m";
    v89 = 1024;
    v90 = 404;
    v91 = 2112;
    v92 = incomingModeCopy;
    LODWORD(v60) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v38, 0, "[wifivelocity] %s (%s:%u) [DM] No existing mode matches dm=%@. Returning.", location, v60);
  }

  v83 = NSLocalizedFailureReasonErrorKey;
  v84 = @"W5ParamErr";
  v39 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v40 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v39];
  v85 = v40;
  v41 = [NSArray arrayWithObjects:&v85 count:1];
  (*(completionCopy + 2))(completionCopy, 0, v41);

LABEL_30:
}

- (void)_runAction:(int64_t)action peer:(id)peer info:(id)info handler:(id)handler completion:(id)completion
{
  peerCopy = peer;
  infoCopy = info;
  handlerCopy = handler;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(W5DiagnosticsModeProcessor *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000910B4;
  v20[3] = &unk_1000E3570;
  v17 = handlerCopy;
  v23 = v17;
  v24[1] = action;
  v18 = peerCopy;
  v21 = v18;
  v19 = infoCopy;
  v22 = v19;
  objc_copyWeak(v24, &location);
  [queue addOperationWithBlock:v20];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)_cleanup
{
  queue = [(W5DiagnosticsModeProcessor *)self queue];
  [queue cancelAllOperations];
}

@end