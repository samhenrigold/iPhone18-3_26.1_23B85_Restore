@interface CMContinuityCaptureAVCaptureVideoSession
- (BOOL)hasConnectionsForEntity:(int64_t)entity;
- (BOOL)isMulticamSession;
- (CMContinuityCaptureAVCaptureVideoSession)initWithQueue:(id)queue requiresMulticamSession:(BOOL)session;
- (void)addConnections:(id)connections;
- (void)dealloc;
- (void)removeConnections:(id)connections;
- (void)start;
- (void)stop;
@end

@implementation CMContinuityCaptureAVCaptureVideoSession

- (void)dealloc
{
  if ([(NSMutableArray *)self->_connections count])
  {
    [MEMORY[0x277CBEAD8] raise:self format:self->_connections];
  }

  v3.receiver = self;
  v3.super_class = CMContinuityCaptureAVCaptureVideoSession;
  [(CMContinuityCaptureAVCaptureBaseSession *)&v3 dealloc];
}

- (BOOL)isMulticamSession
{
  captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)addConnections:(id)connections
{
  connectionsCopy = connections;
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 1)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = connectionsCopy;
    obj = connectionsCopy;
    v46 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (!v46)
    {
      goto LABEL_38;
    }

    v45 = *v60;
    while (1)
    {
      for (i = 0; i != v46; i = (v33 + 1))
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v59 + 1) + 8 * i);
        v48 = i;
        inputPorts = [v47 inputPorts];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v8 = [inputPorts countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          v9 = v8;
          v10 = *v56;
          do
          {
            for (j = 0; j != v9; j = (j + 1))
            {
              if (*v56 != v10)
              {
                objc_enumerationMutation(inputPorts);
              }

              v12 = *(*(&v55 + 1) + 8 * j);
              captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
              input = [v12 input];
              v15 = [captureSession canAddInput:?];

              if (v15)
              {
                input2 = [v12 input];
                captureSession2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
                [captureSession2 addInputWithNoConnections:?];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  device = [input2 device];
                  deviceType = [device deviceType];
                  v20 = [deviceType isEqualToString:?];

                  if ((v20 & 1) == 0)
                  {
                    objc_storeStrong(&self->_videoCameraInput, input2);
LABEL_21:
                    [(NSMutableArray *)self->_connectionEntities addObject:?];
                    goto LABEL_22;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  device2 = [input2 device];
                  deviceType2 = [device2 deviceType];
                  v23 = [deviceType2 isEqualToString:?];

                  if (v23)
                  {
                    goto LABEL_21;
                  }
                }
              }

              else
              {
                input2 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(input2, OS_LOG_TYPE_DEFAULT))
                {
                  input3 = [v12 input];
                  *buf = 138412802;
                  selfCopy4 = self;
                  v51 = 2112;
                  *v52 = input3;
                  *&v52[8] = 2080;
                  *&v52[10] = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
                  _os_log_impl(&dword_242545000, input2, OS_LOG_TYPE_DEFAULT, "%@ can't add input %@ %s", buf, 0x20u);
                }
              }

LABEL_22:
            }

            v9 = [inputPorts countByEnumeratingWithState:? objects:? count:?];
          }

          while (v9);
        }

        captureSession3 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
        output = [v47 output];
        v27 = [captureSession3 canAddOutput:?];

        if (v27)
        {
          captureSession4 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          output2 = [v47 output];
          [captureSession4 addOutputWithNoConnections:?];
        }

        else
        {
          captureSession4 = CMContinuityCaptureLog(2);
          if (!os_log_type_enabled(captureSession4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          output2 = [v47 output];
          inputPorts2 = [v47 inputPorts];
          *buf = 138413058;
          selfCopy4 = self;
          v51 = 2112;
          *v52 = output2;
          *&v52[8] = 2112;
          *&v52[10] = inputPorts2;
          v53 = 2080;
          v54 = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
          _os_log_impl(&dword_242545000, captureSession4, OS_LOG_TYPE_DEFAULT, "%@ can't add output %@ for input %@ %s", buf, 0x2Au);
        }

LABEL_29:
        captureSession5 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
        connections = [captureSession5 connections];
        if ([connections containsObject:?])
        {

          v33 = v48;
        }

        else
        {
          captureSession6 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          v35 = [captureSession6 canAddConnection:?];

          v33 = v48;
          if (v35)
          {
            captureSession7 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            [captureSession7 addConnection:?];

            [(NSMutableArray *)self->_connections addObject:?];
            goto LABEL_36;
          }
        }

        v37 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          captureSession8 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections2 = [captureSession8 connections];
          v40 = [connections2 containsObject:?];
          *buf = 138412802;
          selfCopy4 = self;
          v51 = 2112;
          *v52 = v47;
          *&v52[8] = 1024;
          *&v52[10] = v40;
          _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%@ can't add connection New %@ %d", buf, 0x1Cu);
        }

LABEL_36:
      }

      v46 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (!v46)
      {
LABEL_38:

        v41 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          connections = self->_connections;
          *buf = 138412290;
          selfCopy4 = connections;
          _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_DEFAULT, "addConnections done. Current connections: %@", buf, 0xCu);
        }

        connectionsCopy = v43;
        goto LABEL_43;
      }
    }
  }

  v41 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v51 = 1024;
    *v52 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    *&v52[4] = 2080;
    *&v52[6] = "[CMContinuityCaptureAVCaptureVideoSession addConnections:]";
    _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_DEFAULT, "%@ Invalid state %d for %s", buf, 0x1Cu);
  }

LABEL_43:
}

- (void)removeConnections:(id)connections
{
  connectionsCopy = connections;
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 1)
  {
    v99 = connectionsCopy;
    obj = connectionsCopy;
    selfCopy = self;
    v107 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v107)
    {
      v105 = MEMORY[0];
      do
      {
        v6 = 0;
        do
        {
          if (MEMORY[0] != v105)
          {
            objc_enumerationMutation(obj);
          }

          v109 = v6;
          v7 = *(8 * v6);
          captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections = [captureSession connections];
          v10 = [connections containsObject:?];

          if (v10)
          {
            v11 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v113 = v7;
              _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "Removing connection: %@", buf, 0xCu);
            }

            captureSession2 = [(CMContinuityCaptureAVCaptureBaseSession *)selfCopy captureSession];
            [captureSession2 removeConnection:?];

            [(NSMutableArray *)selfCopy->_connections removeObject:?];
          }

          inputPorts = [v7 inputPorts];
          v14 = [inputPorts countByEnumeratingWithState:? objects:? count:?];
          if (v14)
          {
            v15 = v14;
            v16 = MEMORY[0];
            do
            {
              for (i = 0; i != v15; i = (i + 1))
              {
                if (MEMORY[0] != v16)
                {
                  objc_enumerationMutation(inputPorts);
                }

                input = [*(8 * i) input];
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([input device], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "deviceType"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:"), v20, v19, !v21) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(input, "device"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "deviceType"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:"), v23, v22, v24))
                {
                  [(NSMutableArray *)selfCopy->_connectionEntities removeObject:?];
                }
              }

              v15 = [inputPorts countByEnumeratingWithState:? objects:? count:?];
            }

            while (v15);
          }

          self = selfCopy;
          v6 = v109 + 1;
        }

        while (v109 + 1 != v107);
        v107 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v107);
    }

    v101 = obj;
    obja = [v101 countByEnumeratingWithState:? objects:? count:?];
    if (obja)
    {
      v102 = MEMORY[0];
      do
      {
        v25 = 0;
        do
        {
          if (MEMORY[0] != v102)
          {
            objc_enumerationMutation(v101);
          }

          v106 = v25;
          v26 = *(8 * v25);
          captureSession3 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections2 = [captureSession3 connections];

          v29 = [connections2 countByEnumeratingWithState:? objects:? count:?];
          if (v29)
          {
            v30 = v29;
            v31 = MEMORY[0];
LABEL_32:
            v32 = 0;
            while (1)
            {
              if (MEMORY[0] != v31)
              {
                objc_enumerationMutation(connections2);
              }

              output = [*(8 * v32) output];
              output2 = [v26 output];
              v35 = [output isEqual:?];

              if (v35)
              {
                break;
              }

              if (v30 == ++v32)
              {
                v30 = [connections2 countByEnumeratingWithState:? objects:? count:?];
                if (v30)
                {
                  goto LABEL_32;
                }

                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:

            v36 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              output3 = [v26 output];
              *buf = 138412290;
              *v113 = output3;
              _os_log_impl(&dword_242545000, v36, OS_LOG_TYPE_DEFAULT, "Removing output: %@", buf, 0xCu);
            }

            connections2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            output4 = [v26 output];
            [connections2 removeOutput:?];
          }

          captureSession4 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections3 = [captureSession4 connections];
          connection = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
          v42 = [connections3 containsObject:?];

          if (v42)
          {
            array = [MEMORY[0x277CBEB18] array];
            connection2 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
            inputPorts2 = [connection2 inputPorts];

            v46 = [inputPorts2 countByEnumeratingWithState:? objects:? count:?];
            if (v46)
            {
              v47 = v46;
              v48 = MEMORY[0];
              do
              {
                for (j = 0; j != v47; j = (j + 1))
                {
                  if (MEMORY[0] != v48)
                  {
                    objc_enumerationMutation(inputPorts2);
                  }

                  input2 = [*(8 * j) input];
                  [array addObject:?];
                }

                v47 = [inputPorts2 countByEnumeratingWithState:? objects:? count:?];
              }

              while (v47);
            }

            captureSession5 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            videoCameraInput = [captureSession5 connections];

            v110 = [videoCameraInput countByEnumeratingWithState:? objects:? count:?];
            if (v110)
            {
              v53 = MEMORY[0];
              v100 = MEMORY[0];
              do
              {
                for (k = 0; k != v110; k = (k + 1))
                {
                  if (MEMORY[0] != v53)
                  {
                    objc_enumerationMutation(videoCameraInput);
                  }

                  v55 = *(8 * k);
                  connection3 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
                  v57 = [v55 isEqual:?];

                  if ((v57 & 1) == 0)
                  {
                    inputPorts3 = [v55 inputPorts];
                    v59 = [inputPorts3 countByEnumeratingWithState:? objects:? count:?];
                    if (v59)
                    {
                      v60 = v59;
                      v61 = MEMORY[0];
                      while (2)
                      {
                        for (m = 0; m != v60; m = (m + 1))
                        {
                          if (MEMORY[0] != v61)
                          {
                            objc_enumerationMutation(inputPorts3);
                          }

                          input3 = [*(8 * m) input];
                          v64 = [array containsObject:?];

                          if (v64)
                          {

                            self = selfCopy;
                            goto LABEL_70;
                          }
                        }

                        v60 = [inputPorts3 countByEnumeratingWithState:? objects:? count:?];
                        self = selfCopy;
                        if (v60)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v53 = v100;
                  }
                }

                v110 = [videoCameraInput countByEnumeratingWithState:? objects:? count:?];
              }

              while (v110);
            }

            v65 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              connection4 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
              *buf = 138412290;
              *v113 = connection4;
              _os_log_impl(&dword_242545000, v65, OS_LOG_TYPE_DEFAULT, "Removing preivew layer connection: %@", buf, 0xCu);
            }

            captureSession6 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
            connection5 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer connection];
            [captureSession6 removeConnection:?];

            videoCameraInput = self->_videoCameraInput;
            self->_videoCameraInput = 0;
LABEL_70:
          }

          array2 = [MEMORY[0x277CBEB18] array];
          inputPorts4 = [v26 inputPorts];
          v71 = [inputPorts4 countByEnumeratingWithState:? objects:? count:?];
          if (v71)
          {
            v72 = v71;
            v73 = MEMORY[0];
            do
            {
              for (n = 0; n != v72; n = (n + 1))
              {
                if (MEMORY[0] != v73)
                {
                  objc_enumerationMutation(inputPorts4);
                }

                input4 = [*(8 * n) input];
                [array2 addObject:?];
              }

              v72 = [inputPorts4 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v72);
          }

          array3 = [MEMORY[0x277CBEB18] array];
          captureSession7 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
          connections4 = [captureSession7 connections];

          v111 = connections4;
          v79 = [connections4 countByEnumeratingWithState:? objects:? count:?];
          if (v79)
          {
            v80 = v79;
            v81 = MEMORY[0];
            do
            {
              for (ii = 0; ii != v80; ii = (ii + 1))
              {
                if (MEMORY[0] != v81)
                {
                  objc_enumerationMutation(v111);
                }

                inputPorts5 = [*(8 * ii) inputPorts];
                v84 = [inputPorts5 countByEnumeratingWithState:? objects:? count:?];
                if (v84)
                {
                  v85 = v84;
                  v86 = MEMORY[0];
                  do
                  {
                    for (jj = 0; jj != v85; jj = (jj + 1))
                    {
                      if (MEMORY[0] != v86)
                      {
                        objc_enumerationMutation(inputPorts5);
                      }

                      input5 = [*(8 * jj) input];
                      [array3 addObject:?];
                    }

                    v85 = [inputPorts5 countByEnumeratingWithState:? objects:? count:?];
                  }

                  while (v85);
                }
              }

              v80 = [v111 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v80);
          }

          v89 = array2;
          v90 = [v89 countByEnumeratingWithState:? objects:? count:?];
          self = selfCopy;
          if (v90)
          {
            v91 = v90;
            v92 = MEMORY[0];
            do
            {
              for (kk = 0; kk != v91; kk = (kk + 1))
              {
                if (MEMORY[0] != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = *(8 * kk);
                if (([array3 containsObject:?] & 1) == 0)
                {
                  v95 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v113 = v94;
                    _os_log_impl(&dword_242545000, v95, OS_LOG_TYPE_DEFAULT, "Removing input: %@", buf, 0xCu);
                  }

                  captureSession8 = [(CMContinuityCaptureAVCaptureBaseSession *)selfCopy captureSession];
                  [captureSession8 removeInput:?];
                }
              }

              v91 = [v89 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v91);
          }

          v25 = v106 + 1;
        }

        while ((v106 + 1) != obja);
        obja = [v101 countByEnumeratingWithState:? objects:? count:?];
      }

      while (obja);
    }

    v97 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      connections = self->_connections;
      *buf = 138412290;
      *v113 = connections;
      _os_log_impl(&dword_242545000, v97, OS_LOG_TYPE_DEFAULT, "State After removal %@", buf, 0xCu);
    }

    connectionsCopy = v99;
  }

  else
  {
    v97 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v113 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
      *&v113[4] = 2080;
      *&v113[6] = "[CMContinuityCaptureAVCaptureVideoSession removeConnections:]";
      _os_log_impl(&dword_242545000, v97, OS_LOG_TYPE_DEFAULT, "Invalid state %d for %s", buf, 0x12u);
    }
  }
}

- (BOOL)hasConnectionsForEntity:(int64_t)entity
{
  connectionEntities = self->_connectionEntities;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  LOBYTE(connectionEntities) = [(NSMutableArray *)connectionEntities containsObject:?];

  return connectionEntities;
}

- (void)start
{
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v18 = 1024;
    state = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@  start in state %d", buf, 0x12u);
  }

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state])
  {
    v5 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_12;
    }

    state2 = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
    *buf = 138412802;
    selfCopy2 = self;
    v18 = 1024;
    state = state2;
    v20 = 2080;
    v21 = "[CMContinuityCaptureAVCaptureVideoSession start]";
    v7 = "%@ Invalid state %d for %s";
    v8 = v5;
    v9 = 28;
LABEL_6:
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_7;
  }

  captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
  connections = [captureSession connections];
  v12 = [connections count];

  if (!v12)
  {
    v5 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "There are no active connections for start session";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  if (self->_videoPreviewLayer)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__CMContinuityCaptureAVCaptureVideoSession_start__block_invoke;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v15, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v15);
  }

  v13.receiver = self;
  v13.super_class = CMContinuityCaptureAVCaptureVideoSession;
  [(CMContinuityCaptureAVCaptureBaseSession *)&v13 start];
LABEL_12:
  objc_destroyWeak(&location);
}

void __49__CMContinuityCaptureAVCaptureVideoSession_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[6] connection];
    [v2 setVideoOrientation:?];

    WeakRetained = v3;
  }
}

- (void)stop
{
  queue = [(CMContinuityCaptureAVCaptureBaseSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CMContinuityCaptureAVCaptureBaseSession *)self state]== 2)
  {
    captureSession = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
    connections = [captureSession connections];
    v6 = [connections count];

    if (!v6)
    {
      v10.receiver = self;
      v10.super_class = CMContinuityCaptureAVCaptureVideoSession;
      [(CMContinuityCaptureAVCaptureBaseSession *)&v10 stop];
      [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer setSession:?];
      return;
    }

    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      captureSession2 = [(CMContinuityCaptureAVCaptureBaseSession *)self captureSession];
      connections2 = [captureSession2 connections];
      *buf = 134217984;
      v12[0] = [connections2 count];
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "There are still %lu connections remaining. Not stopping the session.", buf, 0xCu);
    }
  }

  else
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v12[0]) = [(CMContinuityCaptureAVCaptureBaseSession *)self state];
      WORD2(v12[0]) = 2080;
      *(v12 + 6) = "[CMContinuityCaptureAVCaptureVideoSession stop]";
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "Invalid state %d for %s", buf, 0x12u);
    }
  }
}

- (CMContinuityCaptureAVCaptureVideoSession)initWithQueue:(id)queue requiresMulticamSession:(BOOL)session
{
  sessionCopy = session;
  queueCopy = queue;
  v7 = 0x277CE5B10;
  if (!sessionCopy)
  {
    v7 = 0x277CE5B38;
  }

  v8 = objc_alloc_init(*v7);
  if (v8 && (v20.receiver = self, v20.super_class = CMContinuityCaptureAVCaptureVideoSession, (self = [(CMContinuityCaptureAVCaptureBaseSession *)&v20 initWithCaptureSession:v8 queue:queueCopy]) != 0))
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ created capture session %@", &v16, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = self->_connections;
    self->_connections = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connectionEntities = self->_connectionEntities;
    self->_connectionEntities = v12;

    self = self;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

@end