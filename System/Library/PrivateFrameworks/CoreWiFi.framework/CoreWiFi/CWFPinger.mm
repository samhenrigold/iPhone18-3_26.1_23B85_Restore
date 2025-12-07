@interface CWFPinger
- (CWFPinger)init;
- (double)percentLoss;
- (unsigned)checksumForData:(id)data;
- (void)completePingWithError:(id)error;
- (void)receiveReply;
- (void)sendPing;
- (void)startPingingToHost:(id)host withNumberOfPings:(unint64_t)pings completion:(id)completion;
- (void)stop;
@end

@implementation CWFPinger

- (CWFPinger)init
{
  v8.receiver = self;
  v8.super_class = CWFPinger;
  v2 = [(CWFPinger *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CWFPinger *)v2 setSequenceNumber:0];
    [(CWFPinger *)v3 setIdentifier:getpid()];
    [(CWFPinger *)v3 setRawSocket:0xFFFFFFFFLL];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.cwf.ping", v4);
    [(CWFPinger *)v3 setNetworkQueue:v5];

    [(CWFPinger *)v3 setMaxPings:0];
    [(CWFPinger *)v3 setCurrentPingCount:0];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CWFPinger *)v3 setLatencyValues:v6];
  }

  return v3;
}

- (void)startPingingToHost:(id)host withNumberOfPings:(unint64_t)pings completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  completionCopy = completion;
  [(CWFPinger *)self setMaxPings:pings];
  [(CWFPinger *)self setCurrentPingCount:0];
  [(CWFPinger *)self setCompletion:completionCopy];

  latencyValues = [(CWFPinger *)self latencyValues];
  [latencyValues removeAllObjects];

  [(CWFPinger *)self setRawSocket:socket(2, 2, 1)];
  if ([(CWFPinger *)self rawSocket]< 0)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = __error();
      v25 = strerror(*v24);
      v26 = *__error();
      v63 = 136315394;
      v64 = v25;
      v65 = 1024;
      v66 = v26;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] CWFPinger: Failed to create ICMP socket: %s (errno: %d)", &v63, 18);
    }

    v27 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v28 = MEMORY[0x1E696AEC0];
    v29 = __error();
    v30 = strerror(*v29);
    v31 = [v28 stringWithFormat:@"CWFPinger: Failed to create ICMP socket: %s (errno: %d)", v30, *__error()];
    v62 = v31;
    v32 = MEMORY[0x1E695DF20];
    v33 = &v62;
    v34 = &v61;
    goto LABEL_26;
  }

  if (!gethostbyname([hostCopy UTF8String]))
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v63 = 138412290;
      v64 = hostCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[corewifi] CWFPinger: Failed to resolve hostname: %@", &v63, 12);
    }

    v38 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v60 = @"Failed to resolve hostname";
    v39 = MEMORY[0x1E695DF20];
    v40 = &v60;
    v41 = &v59;
    goto LABEL_31;
  }

  v53 = 0;
  __memcpy_chk();
  *&v58.sa_len = 512;
  *&v58.sa_data[6] = 0;
  __memcpy_chk();
  if (connect([(CWFPinger *)self rawSocket], &v58, 0x10u) < 0)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v42 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v43 = __error();
      v44 = strerror(*v43);
      v45 = *__error();
      v63 = 136315394;
      v64 = v44;
      v65 = 1024;
      v66 = v45;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 0, "[corewifi] CWFPinger: Failed to connect ICMP socket: %s (errno: %d)", &v63, 18);
    }

    v27 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A578];
    v46 = MEMORY[0x1E696AEC0];
    v47 = __error();
    v48 = strerror(*v47);
    v31 = [v46 stringWithFormat:@"CWFPinger: Failed to connect ICMP socket: %s (errno: %d)", v48, *__error()];
    v57 = v31;
    v32 = MEMORY[0x1E695DF20];
    v33 = &v57;
    v34 = &v56;
LABEL_26:
    v49 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
    v50 = [v27 errorWithDomain:@"com.apple.CWFPinger" code:-1 userInfo:v49];

LABEL_32:
    [(CWFPinger *)self completePingWithError:v50];

    goto LABEL_33;
  }

  [(CWFPinger *)self rawSocket];
  v11 = nw_connection_create_with_connected_socket();
  [(CWFPinger *)self setConnection:v11];

  connection = [(CWFPinger *)self connection];

  if (!connection)
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      v36 = CWFGetOSLog();
    }

    else
    {
      v36 = MEMORY[0x1E69E9C10];
      v51 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v63) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v36, 0, "[corewifi] CWFPinger: Failed to create nw_connection from socket", &v63, 2);
    }

    v38 = MEMORY[0x1E696ABC0];
    v54 = *MEMORY[0x1E696A578];
    v55 = @"Failed to create nw_connection from socket";
    v39 = MEMORY[0x1E695DF20];
    v40 = &v55;
    v41 = &v54;
LABEL_31:
    v31 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
    v50 = [v38 errorWithDomain:@"com.apple.CWFPinger" code:-1 userInfo:v31];
    goto LABEL_32;
  }

  [(CWFPinger *)self setRawSocket:0xFFFFFFFFLL];
  connection2 = [(CWFPinger *)self connection];
  networkQueue = [(CWFPinger *)self networkQueue];
  nw_connection_set_queue(connection2, networkQueue);

  connection3 = [(CWFPinger *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0CE7AC8;
  handler[3] = &unk_1E86E8D98;
  handler[4] = self;
  nw_connection_set_state_changed_handler(connection3, handler);

  connection4 = [(CWFPinger *)self connection];
  nw_connection_start(connection4);

LABEL_33:
}

- (void)sendPing
{
  *&v24[9] = *MEMORY[0x1E69E9840];
  connection = [(CWFPinger *)self connection];
  if (connection && (v4 = connection, v5 = [(CWFPinger *)self stopped], v4, !v5))
  {
    if ([(CWFPinger *)self maxPings]&& (v8 = [(CWFPinger *)self currentPingCount], v8 >= [(CWFPinger *)self maxPings]))
    {
      v18 = CWFGetOSLog();
      if (v18)
      {
        v19 = CWFGetOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134217984;
        *v24 = [(CWFPinger *)self maxPings];
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 0, "[corewifi] CWFPinger: Completed %lu pings, stopping.", &v23);
      }

      [(CWFPinger *)self completePingWithError:0];
    }

    else
    {
      [(CWFPinger *)self setCurrentPingCount:[(CWFPinger *)self currentPingCount]+ 1];
      memset(&v24[1], 0, 20);
      v23 = 8;
      LOWORD(v24[0]) = __rev16([(CWFPinger *)self identifier]);
      sequenceNumber = [(CWFPinger *)self sequenceNumber];
      [(CWFPinger *)self setSequenceNumber:(sequenceNumber + 1)];
      HIWORD(v24[0]) = __rev16(sequenceNumber);
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v12 = v11;

      v22 = v12;
      v13 = [MEMORY[0x1E695DF88] dataWithBytes:&v23 length:28];
      [v13 appendBytes:&v22 length:8];
      HIWORD(v23) = [(CWFPinger *)self checksumForData:v13];
      [v13 replaceBytesInRange:0 withBytes:{28, &v23}];
      v14 = dispatch_data_create([v13 bytes], objc_msgSend(v13, "length"), 0, 0);
      connection2 = [(CWFPinger *)self connection];
      v16 = *MEMORY[0x1E6977E88];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = sub_1E0CE8180;
      completion[3] = &unk_1E86E8DC0;
      completion[4] = self;
      nw_connection_send(connection2, v14, v16, 1, completion);
    }
  }

  else
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] CWFPinger: Pinger has been stopped, no longer have connection", &v23, 2);
    }
  }
}

- (void)receiveReply
{
  connection = [(CWFPinger *)self connection];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = sub_1E0CE83A0;
  completion[3] = &unk_1E86E8E08;
  completion[4] = self;
  nw_connection_receive(connection, 1u, 0xFFFFFFFF, completion);
}

- (double)percentLoss
{
  if (![(CWFPinger *)self maxPings])
  {
    return 0.0;
  }

  latencyValues = [(CWFPinger *)self latencyValues];
  v4 = [latencyValues count];
  v5 = v4 / [(CWFPinger *)self maxPings];

  return (1.0 - v5) * 100.0;
}

- (void)completePingWithError:(id)error
{
  errorCopy = error;
  [(CWFPinger *)self stop];
  completion = [(CWFPinger *)self completion];

  if (completion)
  {
    networkQueue = [(CWFPinger *)self networkQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CE8840;
    v7[3] = &unk_1E86E6420;
    v8 = errorCopy;
    selfCopy = self;
    dispatch_async(networkQueue, v7);
  }
}

- (unsigned)checksumForData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];
  if (v5 < 2)
  {
    v6 = 0;
    if (v5)
    {
LABEL_5:
      v6 += *bytes << 8;
    }
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *bytes;
      bytes += 2;
      v6 += v7;
      v5 -= 2;
    }

    while (v5 > 1);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  if (v6 >= 0x10000)
  {
    do
    {
      v6 = HIWORD(v6) + v6;
    }

    while (HIWORD(v6));
  }

  return ~v6;
}

- (void)stop
{
  if (![(CWFPinger *)self stopped])
  {
    [(CWFPinger *)self setStopped:1];
    connection = [(CWFPinger *)self connection];

    if (connection)
    {
      connection2 = [(CWFPinger *)self connection];
      nw_connection_cancel(connection2);

      [(CWFPinger *)self setConnection:0];
    }

    else if (([(CWFPinger *)self rawSocket]& 0x80000000) == 0)
    {
      close([(CWFPinger *)self rawSocket]);

      [(CWFPinger *)self setRawSocket:0xFFFFFFFFLL];
    }
  }
}

@end