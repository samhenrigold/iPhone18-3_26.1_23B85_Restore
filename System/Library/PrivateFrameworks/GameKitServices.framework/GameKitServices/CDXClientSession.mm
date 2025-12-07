@interface CDXClientSession
- (BOOL)retransmitEvent;
- (BOOL)sendData:(id)data toParticipants:(id)participants;
- (BOOL)sendRaw:(id)raw toParticipants:(id)participants;
- (CDXClientSession)initWithCDXClient:(id)client ticket:(id)ticket sessionKey:(id)key;
- (id)decrypt:(id)decrypt ticket:(id)ticket;
- (id)encrypt:(id)encrypt;
- (void)dealloc;
- (void)invalidate;
- (void)recvRaw:(id)raw ticket:(id)ticket;
- (void)resetRetransmitTimer;
- (void)retransmitEvent;
- (void)setTicket:(id)ticket;
- (void)stopRetransmitTimer;
@end

@implementation CDXClientSession

- (CDXClientSession)initWithCDXClient:(id)client ticket:(id)ticket sessionKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CDXClientSession;
  v8 = [(CDXClientSession *)&v16 init];
  if (v8)
  {
    v8->CDXClient_ = client;
    v9 = malloc_type_malloc(2 * [ticket CDXTicketPCNT], 0x1000040BDFB0063uLL);
    v8->ack_ = v9;
    bzero(v9, 2 * [ticket CDXTicketPCNT]);
    v8->ticket_ = [ticket copyWithZone:{-[CDXClientSession zone](v8, "zone")}];
    v10 = [key copyWithZone:{-[CDXClientSession zone](v8, "zone")}];
    v11 = v10;
    v8->sessionKey_ = v10;
    memset(md, 170, 16);
    if (v10 && [(NSData *)v10 length]!= 16)
    {
      CC_MD5([(NSData *)v11 bytes], [(NSData *)v11 length], md);
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
    }

    v8->sessionKeyPrepped_ = v11;
    v8->pid_ = [(NSData *)v8->ticket_ CDXTicketPID];
    if (!v8->sessionKey_ && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [objc_msgSend_description(v8) UTF8String];
        *md = 136315906;
        *&md[4] = v12;
        *&md[12] = 2080;
        *&md[14] = "[CDXClientSession initWithCDXClient:ticket:sessionKey:]";
        v18 = 1024;
        v19 = 293;
        v20 = 2080;
        v21 = uTF8String;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: No session key provided. Contents of CDX session will be unencrypted!", md, 0x26u);
      }
    }
  }

  return v8;
}

- (void)stopRetransmitTimer
{
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_22(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9(&dword_24E50C000, v1, v2, "CDXClient [%s] %s:%d %s: Turning off retransmit timer.", v3, v4, v5, v6);
}

- (void)invalidate
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, "CDXClient [%s] %s:%d ", v2, v3, v4, v5);
}

- (BOOL)retransmitEvent
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      v7 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          retransmitAttempts = self->retransmitAttempts_;
          *v26 = 136315906;
          *&v26[4] = v5;
          *&v26[12] = 2080;
          *&v26[14] = "[CDXClientSession retransmitEvent]";
          *&v26[22] = 1024;
          LODWORD(v27) = 338;
          WORD2(v27) = 1024;
          *(&v27 + 6) = retransmitAttempts;
          v9 = "CDXClient [%s] %s:%d retransmitAttempts = %d";
          v10 = v6;
          v11 = 34;
LABEL_13:
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, v9, v26, v11);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(CDXClientSession *)v5 retransmitEvent];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(CDXClientSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_18;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    v14 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->retransmitAttempts_;
        *v26 = 136316418;
        *&v26[4] = v12;
        *&v26[12] = 2080;
        *&v26[14] = "[CDXClientSession retransmitEvent]";
        *&v26[22] = 1024;
        LODWORD(v27) = 338;
        WORD2(v27) = 2112;
        *(&v27 + 6) = v4;
        HIWORD(v27) = 2048;
        selfCopy3 = self;
        LOWORD(v29) = 1024;
        *(&v29 + 2) = v15;
        v9 = "CDXClient [%s] %s:%d %@(%p) retransmitAttempts = %d";
        v10 = v13;
        v11 = 54;
        goto LABEL_13;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = self->retransmitAttempts_;
      *v26 = 136316418;
      *&v26[4] = v12;
      *&v26[12] = 2080;
      *&v26[14] = "[CDXClientSession retransmitEvent]";
      *&v26[22] = 1024;
      LODWORD(v27) = 338;
      WORD2(v27) = 2112;
      *(&v27 + 6) = v4;
      HIWORD(v27) = 2048;
      selfCopy3 = self;
      LOWORD(v29) = 1024;
      *(&v29 + 2) = v16;
      _os_log_debug_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d %@(%p) retransmitAttempts = %d", v26, 0x36u);
    }
  }

LABEL_18:
  if ([(NSMutableIndexSet *)self->participantsInFlight_ count:*v26]&& [(CDXClientSession *)self sendRaw:self->lastSent_ toParticipants:self->participantsInFlight_]&& (v17 = self->retransmitAttempts_, self->retransmitAttempts_ = v17 + 1, v17 <= 65))
  {
    v18 = pow(1.33333333, (v17 + 1)) * 0.1;
    if (v18 <= 1.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = (((arc4random() & 0xFFFFFF) / 16777000.0) * 0.2 + 0.9) * v19;
    retransmitTimer = self->retransmitTimer_;
    v22 = v20 * 1000000000.0;
    v23 = dispatch_time(0, v22);
    dispatch_source_set_timer(retransmitTimer, v23, 0xFFFFFFFFFFFFFFFFLL, v22);
    v24 = 1;
  }

  else
  {
    [(CDXClientSession *)self stopRetransmitTimer];
    v24 = 0;
  }

  return v24;
}

- (void)resetRetransmitTimer
{
  if (!self->retransmitTimer_)
  {
    queue = [self->CDXClient_ queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    self->retransmitTimer_ = v4;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__CDXClientSession_resetRetransmitTimer__block_invoke;
    handler[3] = &unk_279682BA8;
    handler[4] = self;
    dispatch_source_set_event_handler(v4, handler);
    retransmitTimer = self->retransmitTimer_;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__CDXClientSession_resetRetransmitTimer__block_invoke_2;
    v10[3] = &unk_279682BA8;
    v10[4] = self;
    dispatch_source_set_cancel_handler(retransmitTimer, v10);
    dispatch_resume(self->retransmitTimer_);
  }

  self->retransmitAttempts_ = 0;
  v6 = (((arc4random() & 0xFFFFFF) / 16777000.0) * 0.2 + 0.9) * 0.100000001;
  v7 = self->retransmitTimer_;
  v8 = v6 * 1000000000.0;
  v9 = dispatch_time(0, v8);
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, v8);
}

void __40__CDXClientSession_resetRetransmitTimer__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 88) = 0;
  }
}

- (void)dealloc
{
  [(CDXClientSession *)self invalidate];

  free(self->ack_);
  v3.receiver = self;
  v3.super_class = CDXClientSession;
  [(CDXClientSession *)&v3 dealloc];
}

- (void)setTicket:(id)ticket
{
  if ([ticket CDXTicketWellFormed] && -[NSData CDXTicketIsRelatedToTicket:](self->ticket_, "CDXTicketIsRelatedToTicket:", ticket))
  {
    ticket = self->ticket_;
    self->ticket_ = [ticket copyWithZone:{-[CDXClientSession zone](self, "zone")}];
  }
}

- (id)decrypt:(id)decrypt ticket:(id)ticket
{
  decryptCopy = decrypt;
  iv[2] = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (self->sessionKey_)
  {
    v7 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(decrypt, "length") + 16}];
    iv[0] = *([ticket bytes] + 4);
    iv[1] = *([ticket bytes] + 4);
    LOBYTE(iv[0]) |= [ticket CDXTicketPID];
    v8 = CCCrypt(1u, 0, 1u, -[NSData bytes](self->sessionKeyPrepped_, "bytes"), -[NSData length](self->sessionKeyPrepped_, "length"), iv, [decryptCopy bytes], objc_msgSend(decryptCopy, "length"), objc_msgSend(v7, "mutableBytes"), objc_msgSend(v7, "length"), &v18);
    if (v8)
    {
      v9 = v8;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          uTF8String = [objc_msgSend_description(self) UTF8String];
          *buf = 136316162;
          v22 = v10;
          v23 = 2080;
          v24 = "[CDXClientSession decrypt:ticket:]";
          v25 = 1024;
          v26 = 471;
          v27 = 2080;
          v28 = uTF8String;
          v29 = 1024;
          v30 = v9;
          _os_log_error_impl(&dword_24E50C000, v11, OS_LOG_TYPE_ERROR, "CDXClient [%s] %s:%d %s: Decryption failed: CCCrypt() returned error %d", buf, 0x2Cu);
        }
      }

      cDXClient = [(CDXClientSession *)self CDXClient];
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA590];
      v19[0] = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decryption failed. (CCCrypt error %d)", v9];
      v19[1] = @"CDXTicket";
      v20[0] = v15;
      v20[1] = ticket;
      -[CDXClient setError:](cDXClient, "setError:", [v13 errorWithDomain:v14 code:v9 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 2)}]);
      return 0;
    }

    else
    {
      [v7 setLength:v18];
      return v7;
    }
  }

  return decryptCopy;
}

- (id)encrypt:(id)encrypt
{
  encryptCopy = encrypt;
  iv[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (self->sessionKey_)
  {
    v5 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(encrypt, "length") + 16}];
    iv[0] = *([(NSData *)self->ticket_ bytes]+ 4);
    iv[1] = *([(NSData *)self->ticket_ bytes]+ 4);
    LOBYTE(iv[0]) |= [(NSData *)self->ticket_ CDXTicketPID];
    v6 = CCCrypt(0, 0, 1u, -[NSData bytes](self->sessionKeyPrepped_, "bytes"), -[NSData length](self->sessionKeyPrepped_, "length"), iv, [encryptCopy bytes], objc_msgSend(encryptCopy, "length"), objc_msgSend(v5, "mutableBytes"), objc_msgSend(v5, "length"), &v16);
    if (v6)
    {
      v7 = v6;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          uTF8String = [objc_msgSend_description(self) UTF8String];
          *buf = 136316162;
          v20 = v8;
          v21 = 2080;
          v22 = "[CDXClientSession encrypt:]";
          v23 = 1024;
          v24 = 531;
          v25 = 2080;
          v26 = uTF8String;
          v27 = 1024;
          v28 = v7;
          _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, "CDXClient [%s] %s:%d %s: Encryption failed: CCCrypt() returned error %d", buf, 0x2Cu);
        }
      }

      cDXClient = [(CDXClientSession *)self CDXClient];
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA590];
      v17[0] = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Encryption failed. (CCCrypt error %d)", v7];
      v17[1] = @"CDXTicket";
      v18[0] = v13;
      v18[1] = [(CDXClientSession *)self ticket];
      -[CDXClient setError:](cDXClient, "setError:", [v11 errorWithDomain:v12 code:v7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v18, v17, 2)}]);
      return 0;
    }

    else
    {
      [v5 setLength:v16];
      return v5;
    }
  }

  return encryptCopy;
}

- (BOOL)sendRaw:(id)raw toParticipants:(id)participants
{
  v32 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  v8 = [(CDXClientSession *)self encrypt:raw];
  if (v8)
  {
    v9 = v8;
    [data appendData:self->ticket_];
    if (participants)
    {
      mutableBytes = [data mutableBytes];
      v11 = (mutableBytes + [data length]);
      cDXTicketPCNT = [(NSData *)self->ticket_ CDXTicketPCNT];
      mutableCDXTicket = [data mutableCDXTicket];
      *mutableCDXTicket |= 2u;
      v14 = (cDXTicketPCNT + 7) / 8;
      [data increaseLengthBy:v14];
      bzero(v11, v14);
      if (cDXTicketPCNT >= 1)
      {
        v15 = 0;
        v16 = cDXTicketPCNT & 0x7FFFFFFF;
        do
        {
          if ([participants containsIndex:v15])
          {
            *(v11 + (v15 >> 3)) |= 0x80u >> (v15 & 7);
          }

          ++v15;
        }

        while (v16 != v15);
      }
    }

    [data appendData:v9];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v18 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 8)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *v18;
      v21 = *v18;
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          [data length];
          *v31 = 136315906;
          *&v31[4] = v19;
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_4();
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d packet length before CDXClientSession sendData. length=%lu", v31, 0x26u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [data length];
        *v31 = 136315906;
        *&v31[4] = v19;
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_4();
        _os_log_debug_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d packet length before CDXClientSession sendData. length=%lu", v31, 0x26u);
      }
    }

    if ([data length] < 0x5DC)
    {
      goto LABEL_23;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_23;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *v18;
      if (!os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      [data length];
      *v31 = 136316162;
      *&v31[4] = v22;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_12();
      v24 = &dword_24E50C000;
      v25 = "CDXClient [%s] %s:%d packet length is over kCDXMTU_SIZE when CDXClientSession sendData. length=%lu. Data will not be sent! kCDXMTU_SIZE=%d";
      v26 = v31;
      v27 = v23;
      v28 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(CDXClientSession *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_23;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      [data length];
      *v31 = 136316674;
      *&v31[4] = v29;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_21();
      v28 = 64;
    }

    _os_log_error_impl(v24, v27, OS_LOG_TYPE_ERROR, v25, v26, v28);
LABEL_23:
    LOBYTE(v8) = [data length] <= 0x5DB && -[CDXClient sendRaw:](self->CDXClient_, "sendRaw:", data);
  }

  return v8;
}

- (BOOL)sendData:(id)data toParticipants:(id)participants
{
  v51 = *MEMORY[0x277D85DE8];
  if (!data)
  {
    goto LABEL_40;
  }

  if (participants)
  {
    v9 = [participants count];
    if (!v9)
    {
      return v9;
    }
  }

  data = [MEMORY[0x277CBEB28] data];
  [data increaseLengthBy:8];
  [data appendData:data];
  mutableBytes = [data mutableBytes];
  *mutableBytes = 512;
  v12 = self->seq_ + 1;
  self->seq_ = v12;
  *(mutableBytes + 4) = v12;
  *(mutableBytes + 2) = bswap32([data length] - 8) >> 16;
  if (!participants)
  {
    self->ack_[self->pid_] = self->seq_;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v14 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_13())
    {
      *v42 = 136315650;
      *&v42[4] = v5;
      OUTLINED_FUNCTION_0();
      v44 = 626;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d send-data", v42, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_13())
    {
      uTF8String = [objc_msgSend_description(self) UTF8String];
      v16 = *(mutableBytes + 4);
      if (participants)
      {
        uTF8String2 = [objc_msgSend_description(participants) UTF8String];
      }

      else
      {
        uTF8String2 = "everyone-who-isn't-me";
      }

      *v42 = 136316418;
      *&v42[4] = v5;
      *&v42[12] = 2080;
      *&v42[14] = "[CDXClientSession sendData:toParticipants:]";
      v43 = 1024;
      v44 = 628;
      v45 = 2080;
      v46 = uTF8String;
      v47 = 1024;
      v48 = v16;
      v49 = 2080;
      v50 = uTF8String2;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Sending out packet seq=%d. toParticipants:%s", v42, 0x36u);
    }
  }

  if ([participants count] == 1)
  {
    firstIndex = [participants firstIndex];
    if (firstIndex < [(NSData *)self->ticket_ CDXTicketPCNT])
    {
      *(mutableBytes + 1) |= 1u;
      ack = self->ack_;
      *(mutableBytes + 6) = ack[[participants firstIndex]];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *v14;
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        [data length];
        *v42 = 136315906;
        *&v42[4] = v20;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_21();
        _os_log_impl(v22, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 0x26u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [data length];
      *v42 = 136315906;
      *&v42[4] = v20;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_21();
      _os_log_debug_impl(v29, v30, OS_LOG_TYPE_DEBUG, v31, v32, 0x26u);
    }
  }

  if ([data length] >= 0x5DC)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
LABEL_40:
        LOBYTE(v9) = 0;
        return v9;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *v14;
      LODWORD(v9) = os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [data length];
      *v42 = 136316162;
      *&v42[4] = v33;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_12();
      v35 = &dword_24E50C000;
      v36 = "CDXClient [%s] %s:%d MTU LIMIT HIT! data length is over kCDXMTU_SIZE while CDXClient sendData. length=%lu. Data will not be sent. kCDXMTU_SIZE=%d";
      v37 = v42;
      v38 = v34;
      v39 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(CDXClientSession *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_40;
      }

      v40 = VRTraceErrorLogLevelToCSTR();
      LODWORD(v9) = os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [data length];
      *v42 = 136316674;
      *&v42[4] = v40;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_21();
      v39 = 64;
    }

    _os_log_error_impl(v35, v38, OS_LOG_TYPE_ERROR, v36, v37, v39);
    goto LABEL_40;
  }

  v26 = self->lastSent_;
  self->lastSent_ = [data copyWithZone:{-[CDXClientSession zone](self, "zone")}];
  [(CDXClientSession *)self resetRetransmitTimer];
  participantsInFlight = self->participantsInFlight_;
  if (participants)
  {
    v28 = [participants mutableCopyWithZone:{-[CDXClientSession zone](self, "zone")}];
  }

  else
  {
    v28 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, -[NSData CDXTicketPCNT](self->ticket_, "CDXTicketPCNT")}];
  }

  self->participantsInFlight_ = v28;

  LOBYTE(v9) = [(CDXClientSession *)self sendRaw:data toParticipants:participants];
  return v9;
}

- (void)recvRaw:(id)raw ticket:(id)ticket
{
  v75 = *MEMORY[0x277D85DE8];
  cDXTicketPID = [ticket CDXTicketPID];
  v11 = [(CDXClientSession *)self decrypt:raw ticket:ticket];
  if (v11)
  {
    v12 = v11;
    if ([v11 length] >= 8)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v14 = MEMORY[0x277CE5818];
      if (ErrorLogLevelForModule >= 6)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_13())
        {
          if (self)
          {
            uTF8String = [objc_msgSend_description(self) UTF8String];
          }

          else
          {
            uTF8String = "<nil>";
          }

          *buf = 136316674;
          v62 = v4;
          v63 = 2080;
          v64 = "[CDXClientSession recvRaw:ticket:]";
          v65 = 1024;
          v66 = 671;
          v67 = 2080;
          v68 = uTF8String;
          v69 = 2080;
          Name = sel_getName(a2);
          v71 = 1024;
          v72 = cDXTicketPID;
          v73 = 2080;
          uTF8String2 = [objc_msgSend_description(v12) UTF8String];
          _os_log_impl(&dword_24E50C000, raw, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: %s PID=%d, %s", buf, 0x40u);
          v14 = MEMORY[0x277CE5818];
        }
      }

      bytes = [v12 bytes];
      if (!*bytes)
      {
        v16 = bytes;
        v17 = Te2 + 488;
        if (bytes[1])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            VRTraceErrorLogLevelToCSTR();
            if (OUTLINED_FUNCTION_14())
            {
              if (self)
              {
                uTF8String3 = [objc_msgSend_description(self) UTF8String];
              }

              else
              {
                uTF8String3 = "<nil>";
              }

              sel_getName(a2);
              *buf = 136316674;
              v62 = uTF8String;
              OUTLINED_FUNCTION_7();
              v66 = 679;
              v67 = v19;
              v68 = uTF8String3;
              v69 = v19;
              Name = v20;
              v71 = v21;
              v72 = v22;
              v73 = v21;
              LODWORD(uTF8String2) = v23;
              OUTLINED_FUNCTION_18();
              _os_log_impl(v24, v25, v26, v27, v28, 0x3Cu);
              v17 = &Te2[122];
            }
          }

          if (*(v16 + 3) == self->seq_)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_14())
              {
                uTF8String4 = [objc_msgSend_description(self) UTF8String];
                v30 = a2;
                v31 = v17;
                v32 = uTF8String4;
                sel_getName(v30);
                *buf = *(v31 + 198);
                v62 = uTF8String;
                OUTLINED_FUNCTION_5();
                v66 = 681;
                v67 = v33;
                v68 = v32;
                v17 = v31;
                v69 = v33;
                Name = v34;
                v71 = v35;
                v72 = v36;
                OUTLINED_FUNCTION_18();
                _os_log_impl(v37, v38, v39, v40, v41, 0x36u);
              }
            }

            [(NSMutableIndexSet *)self->participantsInFlight_ removeIndex:cDXTicketPID];
            if (![(NSMutableIndexSet *)self->participantsInFlight_ count])
            {
              [(CDXClientSession *)self stopRetransmitTimer];
            }
          }
        }

        if ((v16[1] & 2) != 0)
        {
          v42 = (bswap32(*(v16 + 1)) >> 16) + 8;
          if (v42 <= [v12 length])
          {
            v43 = *(v16 + 2);
            ack = self->ack_;
            v45 = cDXTicketPID;
            if (v43 <= ack[cDXTicketPID])
            {
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v52 = VRTraceErrorLogLevelToCSTR();
                v53 = *v14;
                if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
                {
                  [objc_msgSend_description(self) UTF8String];
                  *buf = *(v17 + 198);
                  v62 = v52;
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_11();
                  _os_log_impl(&dword_24E50C000, v53, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Received DUPLICATE packet %d from participant %d.", buf, 0x32u);
                }
              }
            }

            else
            {
              ack[cDXTicketPID] = v43;
              inboundHandler = self->inboundHandler_;
              if (inboundHandler)
              {
                inboundHandler[2](inboundHandler, cDXTicketPID, v12);
              }

              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                VRTraceErrorLogLevelToCSTR();
                if (OUTLINED_FUNCTION_14())
                {
                  [objc_msgSend_description(self) UTF8String];
                  *buf = *(v17 + 198);
                  v62 = uTF8String;
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_18();
                  _os_log_impl(v47, v48, v49, v50, v51, 0x32u);
                }
              }

              -[CDXClientSessionDelegate CDXClientSession:receivedData:from:](self->delegate_, "CDXClientSession:receivedData:from:", self, [v12 subdataWithRange:{8, objc_msgSend(v12, "length") - 8}], cDXTicketPID);
            }

            v58 = 256;
            seq = self->seq_;
            v60 = self->ack_[cDXTicketPID];
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v54 = VRTraceErrorLogLevelToCSTR();
              v55 = *v14;
              v56 = *v14;
              if (*MEMORY[0x277CE5808] == 1)
              {
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  [objc_msgSend_description(self) UTF8String];
                  *buf = 136316162;
                  v62 = v54;
                  OUTLINED_FUNCTION_5();
                  OUTLINED_FUNCTION_16();
                  _os_log_impl(&dword_24E50C000, v55, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Sending ACK to %d.", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                [objc_msgSend_description(self) UTF8String];
                *buf = 136316162;
                v62 = v54;
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_16();
                _os_log_debug_impl(&dword_24E50C000, v55, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d %s: Sending ACK to %d.", buf, 0x2Cu);
              }
            }

            v57 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v58 length:8 freeWhenDone:0];
            -[CDXClientSession sendRaw:toParticipants:](self, "sendRaw:toParticipants:", v57, [MEMORY[0x277CCAA78] indexSetWithIndex:v45]);
          }
        }
      }
    }
  }
}

- (void)retransmitEvent
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  selfCopy = self;
  v6 = 2080;
  OUTLINED_FUNCTION_3();
  v7 = 338;
  v8 = v1;
  v9 = v2;
  _os_log_debug_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d retransmitAttempts = %d", &v4, 0x22u);
}

@end