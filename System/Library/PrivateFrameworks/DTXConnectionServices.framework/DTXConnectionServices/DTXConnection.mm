@interface DTXConnection
+ (id)connectionToAddress:(id)address;
+ (void)initialize;
+ (void)observeDecompressionExceptionLogging:(id)logging;
+ (void)registerTransport:(Class)transport forScheme:(id)scheme;
- (BOOL)_addHandler:(id)handler forMessage:(unsigned int)message channel:(id)channel;
- (BOOL)publishCapability:(id)capability withVersion:(int)version forClass:(Class)class error:(id *)error;
- (BOOL)sendMessage:(id)message fromChannel:(id)channel sendMode:(int)mode syncWithReply:(BOOL)reply replyHandler:(id)handler;
- (DTXConnection)initWithTransport:(id)transport;
- (NSString)description;
- (double)preflightSynchronouslyWithTimeout:(double)timeout;
- (id)_makeProxyChannelWithRemoteInterface:(id)interface remoteInterfaceName:(id)name exportedInterface:(id)exportedInterface exportedInterfaceName:(id)interfaceName;
- (id)_sendHeartbeatAsyncWithTimeout:(double)timeout;
- (id)localCapabilities;
- (id)makeChannelWithIdentifier:(id)identifier;
- (id)makeProxyChannelWithRemoteInterface:(id)interface exportedInterface:(id)exportedInterface;
- (id)remoteCapabilityVersions;
- (int)remoteCapabilityVersion:(id)version;
- (void)_cancelInternal:(id)internal;
- (void)_channelCanceled:(unsigned int)canceled;
- (void)_handleMessageParseException:(id)exception forChannelCode:(unsigned int)code messageID:(unsigned int)d fragmentCount:(unsigned int)count withPayloadBytes:(const void *)bytes ofLength:(unint64_t)length;
- (void)_handleMissingRemoteCapabilities;
- (void)_handleProxyRequestForInterface:(id)interface interfaceName:(id)name peerInterface:(id)peerInterface peerInterfaceName:(id)interfaceName handler:(id)handler;
- (void)_notifyCompressionHint:(unsigned int)hint forChannelCode:(unsigned int)code;
- (void)_notifyOfPublishedCapabilities:(id)capabilities;
- (void)_receiveQueueSetCompressionHint:(unsigned int)hint onChannel:(id)channel;
- (void)_requestChannelWithCode:(unsigned int)code identifier:(id)identifier;
- (void)_routeMessage:(id)message;
- (void)_scheduleMessage:(id)message toChannel:(id)channel;
- (void)_setupWireProtocols;
- (void)_unregisterChannel:(id)channel;
- (void)cancelWithSerializedTransport:(id)transport;
- (void)dealloc;
- (void)handleProxyRequestForInterface:(id)interface peerInterface:(id)peerInterface handler:(id)handler;
- (void)publishCapability:(id)capability withVersion:(int)version forClass:(Class)class;
- (void)publishServicesInImagePath:(id)path;
- (void)registerCapabilityOverrideBlock:(id)block;
- (void)replaceCompressorForDecompression:(id)decompression;
- (void)resume;
- (void)setChannelHandler:(id)handler;
- (void)setCompressionHint:(int)hint forChannel:(id)channel;
- (void)setMaximumEnqueueSize:(unint64_t)size;
- (void)setRemoteTracer:(BOOL)tracer;
- (void)suspend;
@end

@implementation DTXConnection

+ (void)initialize
{
  v44 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    objc_opt_class();
    v2 = dispatch_queue_create("connection transport registry guard", 0);
    v3 = qword_2814DB5C8;
    qword_2814DB5C8 = v2;

    v4 = objc_opt_new();
    v5 = qword_2814DB5B0;
    qword_2814DB5B0 = v4;

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v6, v7);
    qword_2814DB5F0 = v8;
    v9 = os_log_create("com.apple.dt.DTXConnectionServices", "DTXConnection");
    v10 = qword_2814DB5B8;
    qword_2814DB5B8 = v9;

    v11 = os_log_create("com.apple.dt.DTXConnectionServices", "Capabilities");
    v12 = qword_2814DB5E8;
    qword_2814DB5E8 = v11;

    v13 = objc_opt_new();
    v14 = qword_2814DB5F8;
    qword_2814DB5F8 = v13;

    objc_msgSend_setErrorStatus_(qword_2814DB5F8, v15, 2);
    objc_msgSend__makeImmutable(qword_2814DB5F8, v16, v17);
    pthread_key_create(&qword_2814DB5E0, 0);
    v20 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v18, v19);
    byte_2814DB618 = objc_msgSend_BOOLForKey_(v20, v21, @"DTXConnectionTracer");

    if (byte_2814DB618 == 1)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = getprogname();
      v24 = getpid();
      v26 = objc_msgSend_stringWithFormat_(v22, v25, @"%s[%d].DTXConnection.XXXXXX.log", v23, v24);
      v27 = NSTemporaryDirectory();
      v29 = objc_msgSend_stringByAppendingPathComponent_(v27, v28, v26);
      v30 = v29;
      v33 = objc_msgSend_fileSystemRepresentation(v30, v31, v32);

      v34 = strdup(v33);
      v35 = mkstemps(v34, 4);
      qword_27EE80D30 = fdopen(v35, "we");
      setlinebuf(qword_27EE80D30);
      v36 = qword_2814DB5B8;
      if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
        *buf = 136315650;
        v39 = getprogname();
        v40 = 1024;
        v41 = getpid();
        v42 = 2080;
        v43 = v34;
        _os_log_impl(&dword_247F3D000, v37, OS_LOG_TYPE_ERROR, "%s[%d]: Global DTXConnection log enabled - also written to '%s'", buf, 0x1Cu);
      }

      free(v34);
    }
  }
}

+ (void)registerTransport:(Class)transport forScheme:(id)scheme
{
  schemeCopy = scheme;
  v6 = schemeCopy;
  if (transport && schemeCopy)
  {
    v7 = qword_2814DB5C8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247F45514;
    v8[3] = &unk_278EEE9D0;
    transportCopy = transport;
    v9 = schemeCopy;
    dispatch_sync(v7, v8);
  }
}

- (void)publishServicesInImagePath:(id)path
{
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = pathCopy;
  if (pathCopy && objc_msgSend_length(pathCopy, v5, v6))
  {
    v8 = qword_2814DB5E8;
    if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v37 = v7;
      _os_log_impl(&dword_247F3D000, v8, OS_LOG_TYPE_INFO, "registering capabilities in image: %{public}@", buf, 0xCu);
    }

    v9 = v7;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);
    v13 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_247F45BD8;
    v34[3] = &unk_278EEE9F8;
    v34[4] = self;
    sub_247F45920(v12, sel_registerCapabilities_, v13, v34);
    v14 = v7;
    v17 = objc_msgSend_UTF8String(v14, v15, v16);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v31 = sub_247F45CC4;
    v32 = &unk_278EEE9F8;
    selfCopy = self;
    v29 = v30;
    v18 = objc_getProtocol("DTTapServiceDelegate");
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = sub_247F4D208(v17);
    outCount = 0;
    v20 = objc_copyClassNamesForImage(v19, &outCount);
    v21 = qword_2814DB5E8;
    if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
    {
      v22 = "<nil image?>";
      if (v17)
      {
        v22 = v17;
      }

      *buf = 136315394;
      v37 = v22;
      v38 = 1024;
      v39 = outCount;
      _os_log_impl(&dword_247F3D000, v21, OS_LOG_TYPE_DEBUG, "scanning image %s (%u classes)", buf, 0x12u);
    }

    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v24 = qword_2814DB5E8;
        if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
        {
          v25 = v20[i];
          if (!v25)
          {
            v25 = "<nil className>";
          }

          *buf = 136315138;
          v37 = v25;
          _os_log_impl(&dword_247F3D000, v24, OS_LOG_TYPE_DEBUG, "checking class %s", buf, 0xCu);
        }

        v26 = v20[i];
        if (v26)
        {
          Class = objc_getClass(v26);
          if (class_conformsToProtocol(Class, v18))
          {
            v28 = qword_2814DB5E8;
            if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_247F3D000, v28, OS_LOG_TYPE_DEBUG, "protocol matched for class, calling block", buf, 2u);
            }

            v31(v29, Class);
          }
        }
      }
    }

    else if (!v20)
    {
LABEL_25:

      goto LABEL_26;
    }

    free(v20);
    goto LABEL_25;
  }

LABEL_26:
}

- (void)setCompressionHint:(int)hint forChannel:(id)channel
{
  v4 = *&hint;
  channelCopy = channel;
  handler_queue = self->_handler_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F45EC0;
  block[3] = &unk_278EEEA20;
  block[4] = self;
  v16 = v4;
  v8 = channelCopy;
  v15 = v8;
  dispatch_sync(handler_queue, block);
  if (v8)
  {
    v11 = objc_msgSend_channelCode(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_messageWithSelector_typesAndArguments_(DTXMessage, v9, sel__notifyCompressionHint_forChannelCode_, 3, v4, 3, v11, 0);
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v13, v12, 0, 2, 0, 0);
}

+ (id)connectionToAddress:(id)address
{
  addressCopy = address;
  v5 = [self alloc];
  v6 = addressCopy;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v27 = 0;
  v9 = objc_msgSend_scheme(v6, v7, v8);
  v10 = qword_2814DB5C8;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_247F4D31C;
  v21 = &unk_278EEE8B8;
  v23 = &v24;
  v11 = v9;
  v22 = v11;
  dispatch_sync(v10, &v18);
  v12 = objc_alloc(v25[3]);
  v14 = objc_msgSend_initWithRemoteAddress_(v12, v13, v6, v18, v19, v20, v21);

  _Block_object_dispose(&v24, 8);
  v16 = objc_msgSend_initWithTransport_(v5, v15, v14);

  return v16;
}

- (void)_handleMessageParseException:(id)exception forChannelCode:(unsigned int)code messageID:(unsigned int)d fragmentCount:(unsigned int)count withPayloadBytes:(const void *)bytes ofLength:(unint64_t)length
{
  v10 = *&count;
  v11 = *&d;
  v12 = *&code;
  v104[6] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    LODWORD(v102[0]) = v12;
    WORD2(v102[0]) = 2048;
    *(v102 + 6) = length;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "exception handler called for message parsing: channel code:%u, payload length:%llu", buf, 0x12u);
  }

  if (!exceptionCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_38:
    objc_exception_throw(exceptionCopy);
  }

  v104[0] = &unk_285A15D58;
  v103[0] = @"Version";
  v103[1] = @"ChannelCode";
  v15 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v14, v12);
  v104[1] = v15;
  v103[2] = @"MessageID";
  v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, v11);
  v104[2] = v17;
  v103[3] = @"FragmentCount";
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v10);
  v104[3] = v19;
  v103[4] = @"SerializedDataRawLength";
  v21 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v20, length);
  v104[4] = v21;
  v103[5] = @"SerializedDataBase64";
  v23 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v22, bytes, length, 0);
  v25 = objc_msgSend_base64EncodedStringWithOptions_(v23, v24, 0);
  v104[5] = v25;
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v104, v103, 6);

  v96 = 0;
  v29 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v28, v27, 1, &v96);
  v30 = v96;
  v33 = v30;
  if (!v29 || v30)
  {
    v66 = MEMORY[0x277D86220];
    v67 = MEMORY[0x277D86220];
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    if (v33)
    {
      v66 = objc_msgSend_localizedDescription(v33, v68, v69);
      v70 = v66;
      v73 = objc_msgSend_UTF8String(v70, v71, v72);
    }

    else
    {
      v73 = "{no error available}";
    }

    *buf = 136315138;
    v102[0] = v73;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to serialize log content to JSON: %s", buf, 0xCu);
    if (!v33)
    {
      goto LABEL_37;
    }

LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  v34 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v31, v32);
  v95 = 0;
  v36 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v34, v35, 5, 1, 0, 0, &v95);
  v37 = v95;

  if (v37)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v76 = objc_msgSend_localizedDescription(v37, v74, v75);
      v77 = v76;
      v80 = objc_msgSend_UTF8String(v77, v78, v79);
      *buf = 136315138;
      v102[0] = v80;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to get ~/Library NSURL, nowhere to write to failure log: %s", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v39 = objc_msgSend_URLWithString_relativeToURL_(MEMORY[0x277CBEBC0], v38, @"Logs/DTXConnection", v36);
  if (!v39)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v81 = MEMORY[0x277D86220];
    v82 = "failed to build DTXConnection log dir URL, nowhere to write to failure log";
    v83 = buf;
    v84 = 2;
LABEL_33:
    _os_log_impl(&dword_247F3D000, v81, OS_LOG_TYPE_ERROR, v82, v83, v84);
    goto LABEL_38;
  }

  v42 = v39;
  v43 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v40, v41);
  v94 = 0;
  v45 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v43, v44, v42, 1, 0, &v94);
  v46 = v94;

  if (!v45 || v46)
  {
    v66 = MEMORY[0x277D86220];
    v85 = MEMORY[0x277D86220];
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    if (v46)
    {
      v66 = objc_msgSend_localizedDescription(v46, v86, v87);
      v91 = v66;
      v88 = objc_msgSend_UTF8String(v91, v92, v93);
    }

    else
    {
      v88 = "<no error returned>";
    }

    *buf = 136315138;
    v102[0] = v88;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to create DTXConnection log dir, nowhere to write to failure log: %s", buf, 0xCu);
    if (!v46)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v49 = objc_msgSend_path(v42, v47, v48);
  v50 = v49;
  v53 = objc_msgSend_UTF8String(v50, v51, v52);
  v54 = getpid();
  snprintf(buf, 0x400uLL, "%s/FailedDecompression-%d-XXXXXX.log", v53, v54);

  v55 = mkstemps(buf, 4);
  if (v55 == -1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v89 = __error();
    v90 = strerror(*v89);
    *v97 = 136315394;
    v98 = buf;
    v99 = 2080;
    v100 = v90;
    v81 = MEMORY[0x277D86220];
    v82 = "failed to create file '%s': %s";
    v83 = v97;
    v84 = 22;
    goto LABEL_33;
  }

  v56 = v55;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v97 = 136315138;
    v98 = buf;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "writing failed decompression log to '%s'", v97, 0xCu);
  }

  v57 = objc_alloc(MEMORY[0x277CCACA8]);
  v59 = objc_msgSend_initWithData_encoding_(v57, v58, v29, 4);
  v60 = v59;
  v63 = objc_msgSend_UTF8String(v60, v61, v62);
  dprintf(v56, "%s", v63);

  if ((v56 & 0x80000000) == 0 && close(v56) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v64 = __error();
    v65 = strerror(*v64);
    *v97 = 136315394;
    v98 = buf;
    v99 = 2080;
    v100 = v65;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to close file '%s': %s", v97, 0x16u);
  }

  if (!qword_27EE80D38 || (*(qword_27EE80D38 + 16))())
  {
    goto LABEL_38;
  }
}

- (void)_setupWireProtocols
{
  p_incomingParser = &self->_incomingParser;
  v5 = objc_msgSend_parsingComplete(self->_incomingParser, a2, v2);
  v6 = *p_incomingParser;
  *p_incomingParser = 0;

  outgoingTransmitter = self->_outgoingTransmitter;
  self->_outgoingTransmitter = 0;

  v10 = objc_msgSend_resourceTracker(self->_controlTransport, v8, v9);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_247F468E0;
  v28 = sub_247F468F0;
  v29 = 0;
  v11 = [DTXMessageParser alloc];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_247F468F8;
  v20[3] = &unk_278EEEA70;
  v12 = v10;
  v21 = v12;
  selfCopy = self;
  v23 = &v24;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_247F46A3C;
  v19[3] = &unk_278EEEA98;
  v19[4] = self;
  v14 = objc_msgSend_initWithMessageHandler_andParseExceptionHandler_(v11, v13, v20, v19);
  v15 = v25[5];
  v25[5] = v14;

  objc_storeStrong(p_incomingParser, v25[5]);
  v16 = objc_opt_new();
  v17 = self->_outgoingTransmitter;
  self->_outgoingTransmitter = v16;

  objc_msgSend_setSuggestedFragmentSize_(self->_outgoingTransmitter, v18, 0x10000);
  _Block_object_dispose(&v24, 8);
}

- (DTXConnection)initWithTransport:(id)transport
{
  transportCopy = transport;
  v67.receiver = self;
  v67.super_class = DTXConnection;
  v6 = [(DTXConnection *)&v67 init];
  v7 = v6;
  if (v6)
  {
    if (transportCopy)
    {
      objc_storeStrong(&v6->_controlTransport, transport);
      v10 = objc_msgSend_permittedBlockCompressionTypes(transportCopy, v8, v9);
      v11 = *(v7 + 40);
      *(v7 + 40) = v10;

      v14 = objc_msgSend_resourceTracker(*(v7 + 32), v12, v13);
      v15 = *(v7 + 144);
      *(v7 + 144) = v14;

      v16 = objc_opt_new();
      v17 = *(v7 + 88);
      *(v7 + 88) = v16;

      v18 = objc_opt_new();
      v19 = *(v7 + 96);
      *(v7 + 96) = v18;

      v20 = objc_opt_new();
      v21 = *(v7 + 72);
      *(v7 + 72) = v20;

      v22 = objc_opt_new();
      v23 = *(v7 + 80);
      *(v7 + 80) = v22;

      v24 = objc_opt_new();
      v25 = *(v7 + 136);
      *(v7 + 136) = v24;

      v26 = dispatch_queue_create("connection control queue", 0);
      v27 = *(v7 + 24);
      *(v7 + 24) = v26;

      v28 = dispatch_queue_create_with_target_V2("connection data queue", 0, *(v7 + 24));
      v29 = *(v7 + 16);
      *(v7 + 16) = v28;

      v30 = dispatch_queue_create("connection handler queue", 0);
      v31 = *(v7 + 56);
      *(v7 + 56) = v30;

      v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v33 = dispatch_queue_create_with_target_V2("connection receive queue", v32, *(v7 + 56));
      v34 = *(v7 + 48);
      *(v7 + 48) = v33;

      v35 = dispatch_semaphore_create(0);
      v36 = *(v7 + 152);
      *(v7 + 152) = v35;

      v37 = objc_opt_new();
      v38 = *(v7 + 104);
      *(v7 + 104) = v37;

      v39 = objc_opt_new();
      v40 = *(v7 + 112);
      *(v7 + 112) = v39;

      *(v7 + 188) = atomic_fetch_add(dword_2814DB5D8, 1u) + 1;
      objc_msgSend_suspend(v7, v41, v42);
      v45 = byte_2814DB618;
      *(v7 + 184) = byte_2814DB618;
      if (v45 == 1)
      {
        *(v7 + 200) = 0x80000;
      }

      v46 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v43, v44);
      v48 = objc_msgSend_integerForKey_(v46, v47, @"DefaultBlockCompressionType");
      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = 3;
      }

      *(v7 + 216) = v50;
      v51 = objc_msgSend_integerForKey_(v46, v49, @"CompressionMinSizeThreshold");
      v52 = 0x4000;
      if (v51)
      {
        v52 = v51;
      }

      *(v7 + 224) = v52;
      *(v7 + 212) = 1;
      *(v7 + 64) = 1;
      v53 = [DTXChannel alloc];
      v55 = objc_msgSend_initWithConnection_channelIdentifier_label_(v53, v54, v7, 0, 0);
      v56 = *(v7 + 176);
      *(v7 + 176) = v55;

      objc_msgSend_setObject_forKeyedSubscript_(*(v7 + 72), v57, *(v7 + 176), &unk_285A15D70);
      BlockCompressor = objc_msgSend_createBlockCompressor(DTXBlockCompressorFactory, v58, v59);
      v61 = *(v7 + 232);
      *(v7 + 232) = BlockCompressor;

      if (objc_msgSend_supportedDirections(transportCopy, v62, v63) == 2)
      {
        *(v7 + 208) = 2;
      }

      objc_msgSend__setupWireProtocols(v7, v64, v65);
    }

    else
    {
      v46 = v6;
      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  firstMessageSem = self->_firstMessageSem;
  if (firstMessageSem && self->_remoteCapabilityVersions)
  {
    dispatch_semaphore_wait(firstMessageSem, 0xFFFFFFFFFFFFFFFFLL);
  }

  v4.receiver = self;
  v4.super_class = DTXConnection;
  [(DTXConnection *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%s %p : x%d>", Name, self, self->_connectionIndex);
}

- (void)setMaximumEnqueueSize:(unint64_t)size
{
  if (*MEMORY[0x277D85FA0] <= size)
  {
    sizeCopy = size;
    objc_msgSend_setTotalSize_(self->_resourceTracker, a2, size);
  }

  else
  {
    sizeCopy = *MEMORY[0x277D85FA0];
    objc_msgSend_setTotalSize_(self->_resourceTracker, a2, *MEMORY[0x277D85FA0]);
  }

  objc_msgSend_setMaxChunkSize_(self->_resourceTracker, v5, sizeCopy >> 3);
  v9 = objc_msgSend_resourceTracker(self->_controlTransport, v6, v7);
  objc_msgSend_setTotalSize_(v9, v8, sizeCopy);
}

- (void)publishCapability:(id)capability withVersion:(int)version forClass:(Class)class
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v5 = objc_msgSend_publishCapability_withVersion_forClass_error_(self, a2, capability, *&version, class, &v13);
  v6 = v13;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if (v6)
    {
      v8 = qword_2814DB5B8;
      if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v12 = objc_msgSend_localizedDescription(v7, v10, v11);
        *buf = 138543362;
        v15 = v12;
        _os_log_impl(&dword_247F3D000, v9, OS_LOG_TYPE_ERROR, "Failed to publish capability: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (BOOL)publishCapability:(id)capability withVersion:(int)version forClass:(Class)class error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_247F468E0;
  v33 = sub_247F468F0;
  v34 = 0;
  handler_queue = self->_handler_queue;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_247F47170;
  v23 = &unk_278EEEAC0;
  selfCopy = self;
  v26 = &v29;
  versionCopy = version;
  v12 = capabilityCopy;
  v25 = v12;
  classCopy = class;
  dispatch_sync(handler_queue, &v20);
  v14 = v30[5];
  if (error && v14)
  {
    v15 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v36, &v35, 1, v20, v21, v22, v23, selfCopy);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"DTXConnection", 2, v16);

    v14 = v30[5];
  }

  v18 = v14 == 0;

  _Block_object_dispose(&v29, 8);
  return v18;
}

- (id)localCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247F468E0;
  v10 = sub_247F468F0;
  v11 = 0;
  handler_queue = self->_handler_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F47574;
  v5[3] = &unk_278EEE8B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(handler_queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_sendHeartbeatAsyncWithTimeout:(double)timeout
{
  v5 = objc_opt_new();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v6 = kDTXHeartbeatMessage;
  defaultChannel = self->_defaultChannel;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F476F4;
  v13[3] = &unk_278EEEAE8;
  timeoutCopy = timeout;
  v15 = v17;
  v13[4] = self;
  v8 = v5;
  v14 = v8;
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v9, v6, defaultChannel, 2, 0, v13);
  v10 = v14;
  v11 = v8;

  _Block_object_dispose(v17, 8);

  return v11;
}

- (double)preflightSynchronouslyWithTimeout:(double)timeout
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v8 = objc_msgSend__sendHeartbeatAsyncWithTimeout_(self, v6, v7, timeout);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F479D4;
  v13[3] = &unk_278EEEB10;
  v15 = &v16;
  v9 = v5;
  v14 = v9;
  objc_msgSend_handleCompletion_(v8, v10, v13);
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (void)_handleMissingRemoteCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  receive_queue = self->_receive_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F47B1C;
  v5[3] = &unk_278EEE668;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(receive_queue, v5);
  if (*(v7 + 24) == 1)
  {
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v4, kDTXAckBarrierMessage, self->_defaultChannel, 2, 0, 0);
    dispatch_semaphore_wait(self->_firstMessageSem, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_firstMessageSem);
  }

  _Block_object_dispose(&v6, 8);
}

- (int)remoteCapabilityVersion:(id)version
{
  versionCopy = version;
  remoteCapabilityVersions = self->_remoteCapabilityVersions;
  if (!remoteCapabilityVersions)
  {
    objc_msgSend__handleMissingRemoteCapabilities(self, v4, v5);
    remoteCapabilityVersions = self->_remoteCapabilityVersions;
  }

  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);

  if (remoteCapabilityVersions == v8 || (objc_msgSend_objectForKey_(self->_remoteCapabilityVersions, v9, versionCopy), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = 0x80000000;
  }

  else
  {
    v13 = v10;
    v14 = objc_msgSend_intValue(v10, v11, v12);
  }

  return v14;
}

- (void)registerCapabilityOverrideBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    handler_queue = self->_handler_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247F47CDC;
    v7[3] = &unk_278EEE5F0;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_sync(handler_queue, v7);
  }
}

- (id)remoteCapabilityVersions
{
  if (!self->_remoteCapabilityVersions)
  {
    objc_msgSend__handleMissingRemoteCapabilities(self, a2, v2);
  }

  v4 = objc_opt_new();
  remoteCapabilityVersions = self->_remoteCapabilityVersions;
  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);

  if (remoteCapabilityVersions != v8)
  {
    objc_msgSend_addEntriesFromDictionary_(v4, v9, self->_remoteCapabilityVersions);
  }

  v10 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_247F47EAC;
  v15[3] = &unk_278EEEB38;
  v16 = v10;
  v11 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v12, v15);
  objc_msgSend_removeObjectsForKeys_(v4, v13, v11);

  return v4;
}

- (void)suspend
{
  dispatch_suspend(self->_outgoing_control_queue);
  receive_queue = self->_receive_queue;

  dispatch_suspend(receive_queue);
}

- (void)resume
{
  handler_queue = self->_handler_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F47FC4;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(handler_queue, block);
}

- (void)setChannelHandler:(id)handler
{
  handlerCopy = handler;
  handler_queue = self->_handler_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F48464;
  v7[3] = &unk_278EEE5F0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(handler_queue, v7);
}

- (void)cancelWithSerializedTransport:(id)transport
{
  transportCopy = transport;
  v7 = transportCopy;
  if (transportCopy)
  {
    objc_msgSend__cancelInternal_(self, v4, transportCopy);
  }

  else
  {
    sub_247F59D54();
    objc_msgSend__cancelInternal_(self, v6, 0);
  }
}

- (void)_cancelInternal:(id)internal
{
  internalCopy = internal;
  receive_queue = self->_receive_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F485BC;
  v7[3] = &unk_278EEE5F0;
  v7[4] = self;
  v8 = internalCopy;
  v6 = internalCopy;
  dispatch_async(receive_queue, v7);
}

- (BOOL)sendMessage:(id)message fromChannel:(id)channel sendMode:(int)mode syncWithReply:(BOOL)reply replyHandler:(id)handler
{
  replyCopy = reply;
  v97 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  channelCopy = channel;
  handlerCopy = handler;
  v17 = 0;
  if (messageCopy && kDTXInterruptionMessage != messageCopy)
  {
    v82 = replyCopy;
    v18 = objc_msgSend_serializedLength(messageCopy, v14, v15);
    v21 = v18;
    logMessageCallstackSizeThreshold = self->_logMessageCallstackSizeThreshold;
    if (logMessageCallstackSizeThreshold && v18 > logMessageCallstackSizeThreshold && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = objc_msgSend_callStackSymbols(MEMORY[0x277CCACC8], v19, v20);
      v25 = objc_msgSend_componentsJoinedByString_(v23, v24, @"\n");
      v26 = v25;
      *buf = 134218242;
      v94 = vcvtd_n_f64_u64(v21, 0x14uLL);
      v95 = 2080;
      v96 = objc_msgSend_UTF8String(v26, v27, v28);
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "large message (%.2lf MB) from:\n%s", buf, 0x16u);
    }

    if (v21 >= self->_compressionMinSizeThreshold && self->_remoteCompressionCapabilityVersion >= 1)
    {
      compressionTypeForUnspecified = objc_msgSend_compressionTypeHint(channelCopy, v19, v20);
      if (compressionTypeForUnspecified <= 1)
      {
        compressionTypeForUnspecified = self->_compressionTypeForUnspecified;
      }

      if (compressionTypeForUnspecified != 2)
      {
        permittedBlockCompressors = self->_permittedBlockCompressors;
        if (permittedBlockCompressors)
        {
          v31 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, compressionTypeForUnspecified);
          v33 = objc_msgSend_containsObject_(permittedBlockCompressors, v32, v31);

          if (v33)
          {
            remoteCompressionCapabilityVersion = self->_remoteCompressionCapabilityVersion;
            if (remoteCompressionCapabilityVersion >= 2)
            {
              remoteCompressionCapabilityVersion = 2;
            }

            objc_msgSend_compressWithCompressor_usingType_forCompatibilityWithVersion_(messageCopy, v19, self->_compressor, compressionTypeForUnspecified, remoteCompressionCapabilityVersion);
          }
        }
      }
    }

    if (kDTXAckBarrierMessage == messageCopy)
    {
      v35 = objc_msgSend_message(DTXMessage, v19, v20);

      objc_msgSend__makeBarrier(v35, v36, v37);
      messageCopy = v35;
    }

    objc_msgSend__makeImmutable(messageCopy, v19, v20);
    v40 = objc_msgSend_serializedLength(messageCopy, v38, v39);
    v42 = v40;
    if (messageCopy == kDTXBarrierMessage)
    {
      v43 = 0;
    }

    else
    {
      v43 = v40;
    }

    if (mode)
    {
      v44 = 0;
      v45 = objc_msgSend_acquireSize_(self->_resourceTracker, v41, 0);
    }

    else
    {
      v44 = v43;
      v45 = objc_msgSend_acquireSize_(self->_resourceTracker, v41, v43);
    }

    if (v45)
    {
      v48 = v45;
      v81 = channelCopy;
      if (objc_msgSend_conversationIndex(messageCopy, v46, v47))
      {
        if (objc_msgSend_deserialized(messageCopy, v49, v50))
        {
          v53 = 0;
          v54 = objc_msgSend_channelCode(v81, v51, v52);
        }

        else
        {
          v48 = objc_msgSend_identifier(messageCopy, v51, v52);
          v53 = objc_msgSend_conversationIndex(messageCopy, v58, v59) << 32;
          v54 = objc_msgSend_channelCode(messageCopy, v60, v61);
        }
      }

      else
      {
        v57 = channelCopy;
        v53 = 0;
        v54 = objc_msgSend_channelCode(v57, v49, v50);
      }

      v62 = v54;
      v63 = 0x100000000;
      v80 = handlerCopy;
      if (!handlerCopy && (objc_msgSend_isDispatch(messageCopy, v55, v56) & v82) == 0)
      {
        v63 = 0;
      }

      v64 = v63 | v62;
      if (mode == 1)
      {
        v65 = dispatch_semaphore_create(0);
      }

      else
      {
        v65 = 0;
      }

      v67 = messageCopy == kDTXBarrierMessage || messageCopy == kDTXHeartbeatMessage;
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = sub_247F49054;
      v83[3] = &unk_278EEEC78;
      v83[4] = self;
      v87 = v42;
      v91 = mode == 2;
      v92 = v67;
      messageCopy = messageCopy;
      v68 = v53 | v48;
      v84 = messageCopy;
      v89 = v68;
      v90 = v64;
      channelCopy = v81;
      v69 = v81;
      v85 = v69;
      v88 = v44;
      v70 = v65;
      v86 = v70;
      v72 = MEMORY[0x24C1C0D80](v83);
      if (self->_tracer)
      {
        v73 = objc_msgSend_descriptionWithRoutingInformation_(messageCopy, v71, v68, v64);
        sub_247F48190("  sent  ", self, v69, v73);
      }

      if (v82 && v63)
      {
        v76 = pthread_getspecific(qword_2814DB5E0);
        handlerCopy = v80;
        if (v76 == v69 && messageCopy != kDTXBarrierMessage)
        {
          objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v74, @"DTXConnectionException", @"API misuse: client attempted to synchronously send a message and wait for response while already executing in channel's asynchronous handler context.");
        }

        if (v76)
        {
          objc_msgSend_suspendLimits(self->_incomingResourceTracker, v74, v75);
          sub_247F495A4(v80, v72);
          objc_msgSend_resumeLimits(self->_incomingResourceTracker, v77, v78);
        }

        else
        {
          sub_247F495A4(v80, v72);
        }

        if (!v70)
        {
          goto LABEL_55;
        }
      }

      else
      {
        handlerCopy = v80;
        (v72)[2](v72, v80);
        if (!v70)
        {
LABEL_55:

          v17 = 0;
          goto LABEL_56;
        }
      }

      dispatch_semaphore_wait(v70, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_55;
    }

    v17 = 1;
  }

LABEL_56:

  return v17;
}

- (BOOL)_addHandler:(id)handler forMessage:(unsigned int)message channel:(id)channel
{
  handlerCopy = handler;
  channelCopy = channel;
  v12 = channelCopy;
  if (handlerCopy)
  {
    if (!channelCopy)
    {
      v12 = self->_defaultChannel;
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v13 = objc_msgSend_channelCode(v12, v10, v11);
    v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v14, message | (v13 << 32));
    handler_queue = self->_handler_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_247F498A4;
    v20[3] = &unk_278EEECA0;
    v20[4] = self;
    v24 = &v27;
    v25 = v13;
    v12 = v12;
    v21 = v12;
    v22 = v15;
    v23 = handlerCopy;
    messageCopy = message;
    v17 = v15;
    dispatch_sync(handler_queue, v20);
    v18 = *(v28 + 24);

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

- (void)_routeMessage:(id)message
{
  messageCopy = message;
  v26 = messageCopy;
  if (kDTXInterruptionMessage == messageCopy)
  {
    objc_msgSend_cancel(self, v5, v6);
  }

  else
  {
    v7 = objc_msgSend_conversationIndex(messageCopy, v5, v6);
    v10 = objc_msgSend_channelCode(v26, v8, v9);
    if (v7)
    {
      LODWORD(v12) = v10;
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, v10);
    }

    else
    {
      v12 = -v10;
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, v12);
    }
    v14 = ;
    if (v12)
    {
      v15 = objc_msgSend_objectForKey_(self->_channelsByCode, v13, v14);
    }

    else
    {
      v15 = self->_defaultChannel;
    }

    v17 = v15;
    if (!v15)
    {
      v18 = objc_msgSend_objectForKey_(self->_unconfiguredChannelsByCode, v16, v14);
      v17 = v18;
      if (v18)
      {
        objc_msgSend_resume(v18, v16, v19);
        objc_msgSend_removeObjectForKey_(self->_unconfiguredChannelsByCode, v20, v14);
        objc_msgSend_setObject_forKey_(self->_channelsByCode, v21, v17, v14);
      }
    }

    objc_msgSend__scheduleMessage_toChannel_(self, v16, v26, v17);
    if (!self->_remoteCapabilityVersions)
    {
      v24 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v22, v23);
      objc_msgSend__notifyOfPublishedCapabilities_(self, v25, v24);
    }
  }
}

- (void)_scheduleMessage:(id)message toChannel:(id)channel
{
  v97[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  channelCopy = channel;
  if (self->_tracer)
  {
    v10 = objc_msgSend_description(messageCopy, v7, v8);
    sub_247F48190("received", self, channelCopy, v10);
  }

  if (channelCopy)
  {
    if (objc_msgSend_isBarrier(messageCopy, v7, v8))
    {
      incomingResourceTracker = self->_incomingResourceTracker;
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = sub_247F4A0F0;
      v92[3] = &unk_278EEE6E0;
      v92[4] = self;
      v93 = channelCopy;
      objc_msgSend__scheduleMessage_tracker_withHandler_(v93, v14, messageCopy, incomingResourceTracker, v92);
    }

    else if (objc_msgSend_isDispatch(messageCopy, v11, v12))
    {
      v35 = objc_autoreleasePoolPush();
      if (self->_defaultChannel == channelCopy && objc_msgSend_shouldInvokeWithTarget_(messageCopy, v34, self))
      {
        v36 = pthread_getspecific(qword_2814DB5E0);
        pthread_setspecific(qword_2814DB5E0, self->_defaultChannel);
        objc_msgSend_invokeWithTarget_replyChannel_validator_(messageCopy, v37, self, channelCopy, 0);
        pthread_setspecific(qword_2814DB5E0, v36);
        v38 = self->_incomingResourceTracker;
        v41 = objc_msgSend_cost(messageCopy, v39, v40);
        objc_msgSend_releaseSize_(v38, v42, v41);
      }

      else
      {
        objc_msgSend__scheduleMessage_tracker_withHandler_(channelCopy, v34, messageCopy, self->_incomingResourceTracker, 0);
      }

      objc_autoreleasePoolPop(v35);
    }

    else if (objc_msgSend_conversationIndex(messageCopy, v32, v33))
    {
      v45 = objc_msgSend_conversationIndex(messageCopy, v43, v44);
      v48 = objc_msgSend_channelCode(messageCopy, v46, v47);
      if (v45)
      {
        v51 = v48;
      }

      else
      {
        v51 = -v48;
      }

      v52 = MEMORY[0x277CCABB0];
      v53 = objc_msgSend_identifier(messageCopy, v49, v50);
      v55 = objc_msgSend_numberWithUnsignedLongLong_(v52, v54, v53 | (v51 << 32));
      v59 = objc_msgSend_objectForKey_(self->_handlersByIdentifier, v56, v55);
      if (v59)
      {
        objc_msgSend__scheduleMessage_tracker_withHandler_(channelCopy, v57, messageCopy, self->_incomingResourceTracker, v59);
        objc_msgSend_removeObjectForKey_(self->_handlersByIdentifier, v60, v55);
      }

      else
      {
        if (objc_msgSend_expectsReply(messageCopy, v57, v58))
        {
          v69 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v67, @"DTXMissingReplyBlockException", @"Peer was not expecting a reply for the provided message and dropped it", 0);
          v70 = MEMORY[0x277CCA9B8];
          v94 = *MEMORY[0x277CCA450];
          v73 = objc_msgSend_description(v69, v71, v72);
          v95 = v73;
          v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, &v95, &v94, 1);
          v77 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v76, @"DTXConnection", 1, v75);
          v79 = objc_msgSend_newReplyWithError_(messageCopy, v78, v77);

          objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v80, v79, channelCopy, 2, 0, 0);
        }

        v81 = self->_incomingResourceTracker;
        v82 = objc_msgSend_cost(messageCopy, v67, v68);
        objc_msgSend_releaseSize_(v81, v83, v82);
      }
    }

    else
    {
      if (!messageCopy)
      {
        v61 = objc_msgSend_mutableCopy(self->_handlersByIdentifier, v43, v44);
        handlersByIdentifier = self->_handlersByIdentifier;
        v84 = MEMORY[0x277D85DD0];
        v85 = 3221225472;
        v86 = sub_247F4A150;
        v87 = &unk_278EEECC8;
        v88 = channelCopy;
        v63 = v61;
        v89 = v63;
        selfCopy = self;
        v91 = 0;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(handlersByIdentifier, v64, &v84);
        v65 = self->_handlersByIdentifier;
        self->_handlersByIdentifier = v63;
        v66 = v63;
      }

      objc_msgSend__scheduleMessage_tracker_withHandler_(channelCopy, v43, messageCopy, self->_incomingResourceTracker, 0, v84, v85, v86, v87);
    }
  }

  else
  {
    if (objc_msgSend_expectsReply(messageCopy, v7, v8))
    {
      v17 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v15, @"DTXMissingChannelException", @"Unable to invoke message sent to invalid channel", 0);
      v18 = MEMORY[0x277CCA9B8];
      v96 = *MEMORY[0x277CCA450];
      v21 = objc_msgSend_description(v17, v19, v20);
      v97[0] = v21;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v97, &v96, 1);
      v25 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v24, @"DTXConnection", 1, v23);
      v27 = objc_msgSend_newReplyWithError_(messageCopy, v26, v25);

      objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v28, v27, 0, 2, 0, 0);
    }

    v29 = self->_incomingResourceTracker;
    v30 = objc_msgSend_cost(messageCopy, v15, v16);
    objc_msgSend_releaseSize_(v29, v31, v30);
  }
}

- (id)makeChannelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_247F468E0;
  v31 = sub_247F468F0;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  handler_queue = self->_handler_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F4A48C;
  block[3] = &unk_278EEECF0;
  v21 = &v23;
  v22 = &v27;
  block[4] = self;
  v6 = identifierCopy;
  v20 = v6;
  dispatch_sync(handler_queue, block);
  v8 = objc_msgSend_messageWithSelector_typesAndArguments_(DTXMessage, v7, sel__requestChannelWithCode_identifier_, 3, *(v24 + 6), 11, v6, 0);
  v9 = v28[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247F4A554;
  v16[3] = &unk_278EEE6E0;
  v10 = v6;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v12, v8, 0, 2, 0, v16);
  objc_msgSend_setCompressionTypeHint_(v28[5], v13, self->_newChannelCompressionHint);
  v14 = v28[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

- (void)setRemoteTracer:(BOOL)tracer
{
  self->_remoteTracer = tracer;
  v5 = objc_msgSend_messageWithSelector_typesAndArguments_(DTXMessage, a2, sel__setTracerState_, 3, tracer, 0);
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v4, v5, 0, 2, 0, 0);
}

- (void)_unregisterChannel:(id)channel
{
  channelCopy = channel;
  v7 = channelCopy;
  if (channelCopy)
  {
    v8 = objc_msgSend_channelCode(channelCopy, v5, v6);
    v10 = objc_msgSend_messageWithSelector_typesAndArguments_(DTXMessage, v9, sel__channelCanceled_, 3, v8, 0);
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v11, v10, 0, 2, 0, 0);
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self, v12, kDTXBarrierMessage, 0, 2, 0, 0);
    receive_queue = self->_receive_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F4A7C8;
    block[3] = &unk_278EEED18;
    v15 = v7;
    selfCopy = self;
    dispatch_async(receive_queue, block);
  }
}

- (void)_requestChannelWithCode:(unsigned int)code identifier:(id)identifier
{
  v75 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = objc_autoreleasePoolPush();
  v8 = -code;
  v9 = [DTXChannel alloc];
  v11 = objc_msgSend_initWithConnection_channelIdentifier_label_(v9, v10, self, v8, identifierCopy);
  objc_msgSend_suspend(v11, v12, v13);
  objc_msgSend_setCompressionTypeHint_(v11, v14, self->_newChannelCompressionHint);
  v16 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v8);
  objc_msgSend_setObject_forKey_(self->_unconfiguredChannelsByCode, v17, v11, v16);
  v54 = MEMORY[0x24C1C0D80](self->_channelHandler);
  v19 = objc_msgSend_componentsSeparatedByString_(identifierCopy, v18, @":");
  if (objc_msgSend_count(v19, v20, v21) == 3 && (objc_msgSend_objectAtIndex_(v19, v22, 0), v23 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v23, v24, @"dtxproxy"), v23, isEqualToString))
  {
    v27 = objc_msgSend_objectAtIndex_(v19, v26, 1);
    v28 = sub_247F4D400(v27);
    v29 = v28;

    v31 = objc_msgSend_objectAtIndex_(v19, v30, 2);
    v32 = sub_247F4D400(v31);
    v33 = v32;

    v34 = 1;
  }

  else
  {
    v28 = 0;
    v32 = 0;
    v34 = 0;
  }

  v35 = v28;
  v36 = v32;
  if (v34)
  {
    v53 = v16;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v71 = 0x3032000000;
    v72 = sub_247F468E0;
    v73 = sub_247F468F0;
    v74 = 0;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v37 = self->_protocolHandlers;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v63, v69, 16);
    if (v40)
    {
      v41 = *v64;
      while (2)
      {
        v42 = v7;
        for (i = 0; i != v40; ++i)
        {
          if (*v64 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v44 = *(*(&v63 + 1) + 8 * i);
          if (objc_msgSend_matchesPublishedProtocolName_peerProtocolName_(v44, v39, v36, v35, v53))
          {
            objc_storeStrong((*(&buf + 1) + 40), v44);
            v7 = v42;
            goto LABEL_18;
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v63, v69, 16);
        v7 = v42;
        if (v40)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v16 = v53;
    if (*(*(&buf + 1) + 40))
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = sub_247F4AD5C;
      v60[3] = &unk_278EEE668;
      v61 = v11;
      p_buf = &buf;
      objc_msgSend__scheduleBlock_(v61, v46, v60);
    }

    else
    {
      v50 = qword_2814DB5B8;
      if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
      {
        *v67 = 138543362;
        v68 = identifierCopy;
        _os_log_impl(&dword_247F3D000, v50, OS_LOG_TYPE_ERROR, "Protocol handler unavailable for specified channel: %{public}@", v67, 0xCu);
      }

      objc_msgSend_cancel(v11, v51, v52, v53);
    }

    _Block_object_dispose(&buf, 8);
  }

  else if (v54)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_247F4AE34;
    v55[3] = &unk_278EEED40;
    v59 = v54;
    v56 = v11;
    v57 = identifierCopy;
    selfCopy = self;
    objc_msgSend__scheduleBlock_(v56, v45, v55);
  }

  else
  {
    v47 = qword_2814DB5B8;
    if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&dword_247F3D000, v47, OS_LOG_TYPE_ERROR, "No channel handler specified; channel canceled. %{public}@", &buf, 0xCu);
    }

    objc_msgSend_cancel(v11, v48, v49);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_notifyOfPublishedCapabilities:(id)capabilities
{
  p_remoteCapabilityVersions = &self->_remoteCapabilityVersions;
  remoteCapabilityVersions = self->_remoteCapabilityVersions;
  v6 = objc_msgSend_mutableCopy(capabilities, a2, capabilities);
  v7 = v6;
  v8 = p_remoteCapabilityVersions[1];
  if (v8)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247F4AFA4;
    v17[3] = &unk_278EEED68;
    v18 = v6;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v17);
    capabilityOverrideBlocks = self->_capabilityOverrideBlocks;
    self->_capabilityOverrideBlocks = 0;
  }

  objc_storeStrong(p_remoteCapabilityVersions, v7);
  v12 = objc_msgSend_objectForKeyedSubscript_(*p_remoteCapabilityVersions, v11, @"com.apple.private.DTXBlockCompression");
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_intValue(v12, v13, v14);
  }

  else
  {
    v16 = 0x80000000;
  }

  self->_remoteCompressionCapabilityVersion = v16;
  if (!remoteCapabilityVersions)
  {
    dispatch_semaphore_signal(self->_firstMessageSem);
  }
}

- (void)_channelCanceled:(unsigned int)canceled
{
  objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, -canceled);
  v14 = p_channelsByCode = &self->_channelsByCode;
  v6 = objc_msgSend_objectForKey_(self->_channelsByCode, v5, v14);
  if (v6)
  {
    v8 = v6;
    objc_msgSend__scheduleMessage_toChannel_(self, v7, 0, v6);
  }

  else
  {
    p_channelsByCode = &self->_unconfiguredChannelsByCode;
    v10 = objc_msgSend_objectForKey_(self->_unconfiguredChannelsByCode, v7, v14);
    if (!v10)
    {
      goto LABEL_6;
    }

    v8 = v10;
    objc_msgSend_resume(v10, v11, v12);
    objc_msgSend__scheduleMessage_toChannel_(self, v13, 0, v8);
  }

  objc_msgSend_removeObjectForKey_(*p_channelsByCode, v9, v14);

LABEL_6:
}

- (void)_receiveQueueSetCompressionHint:(unsigned int)hint onChannel:(id)channel
{
  v4 = *&hint;
  if (channel)
  {

    sub_247F4B1A4(channel, *&hint);
  }

  else
  {
    channelsByCode = self->_channelsByCode;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = sub_247F4D468;
    v12 = &unk_278EEEF10;
    hintCopy = hint;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(channelsByCode, a2, &v9);
    unconfiguredChannelsByCode = self->_unconfiguredChannelsByCode;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = sub_247F4D468;
    v12 = &unk_278EEEF10;
    hintCopy = v4;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(unconfiguredChannelsByCode, v8, &v9);
    sub_247F4B1A4(self->_defaultChannel, v4);
    self->_newChannelCompressionHint = v4;
  }
}

- (void)_notifyCompressionHint:(unsigned int)hint forChannelCode:(unsigned int)code
{
  v4 = *&hint;
  v17 = *MEMORY[0x277D85DE8];
  if (hint - 11 > 0xFFFFFFF5)
  {
    if (code)
    {
      v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, -code);
      v8 = objc_msgSend_objectForKey_(self->_channelsByCode, v7, v6);
      if (!v8)
      {
        v8 = objc_msgSend_objectForKey_(self->_unconfiguredChannelsByCode, v9, v6);
      }

      v11 = v8;

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;
    objc_msgSend__receiveQueueSetCompressionHint_onChannel_(self, v10, v4, v10);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    v14 = v4;
    v15 = 1024;
    v16 = 10;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "attempted to set the compression type hint to an unknown compression method: specified=%u, max valid=%u", buf, 0xEu);
  }
}

- (void)handleProxyRequestForInterface:(id)interface peerInterface:(id)peerInterface handler:(id)handler
{
  proto = interface;
  peerInterfaceCopy = peerInterface;
  handlerCopy = handler;
  v11 = NSStringFromProtocol(proto);
  if (peerInterfaceCopy)
  {
    v12 = NSStringFromProtocol(peerInterfaceCopy);
    objc_msgSend__handleProxyRequestForInterface_interfaceName_peerInterface_peerInterfaceName_handler_(self, v13, proto, v11, peerInterfaceCopy, v12, handlerCopy);
  }

  else
  {
    objc_msgSend__handleProxyRequestForInterface_interfaceName_peerInterface_peerInterfaceName_handler_(self, v10, proto, v11, 0, 0, handlerCopy);
  }
}

- (void)_handleProxyRequestForInterface:(id)interface interfaceName:(id)name peerInterface:(id)peerInterface peerInterfaceName:(id)interfaceName handler:(id)handler
{
  interfaceCopy = interface;
  nameCopy = name;
  peerInterfaceCopy = peerInterface;
  interfaceNameCopy = interfaceName;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_247F59E4C();
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  sub_247F59EC0();
LABEL_3:
  if ((peerInterfaceCopy == 0) != (interfaceNameCopy == 0))
  {
    sub_247F59F34();
    if (handlerCopy)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_247F59FA8();
    goto LABEL_5;
  }

  if (!handlerCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  handler_queue = self->_handler_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_247F4B774;
  v23[3] = &unk_278EEED90;
  v24 = interfaceCopy;
  v25 = nameCopy;
  v26 = peerInterfaceCopy;
  v27 = interfaceNameCopy;
  selfCopy = self;
  v29 = handlerCopy;
  v18 = handlerCopy;
  v19 = interfaceNameCopy;
  v20 = peerInterfaceCopy;
  v21 = nameCopy;
  v22 = interfaceCopy;
  dispatch_sync(handler_queue, v23);
}

- (id)makeProxyChannelWithRemoteInterface:(id)interface exportedInterface:(id)exportedInterface
{
  interfaceCopy = interface;
  exportedInterfaceCopy = exportedInterface;
  v9 = NSStringFromProtocol(interfaceCopy);
  if (exportedInterfaceCopy)
  {
    v10 = NSStringFromProtocol(exportedInterfaceCopy);
    v12 = objc_msgSend__makeProxyChannelWithRemoteInterface_remoteInterfaceName_exportedInterface_exportedInterfaceName_(self, v11, interfaceCopy, v9, exportedInterfaceCopy, v10);
  }

  else
  {
    v12 = objc_msgSend__makeProxyChannelWithRemoteInterface_remoteInterfaceName_exportedInterface_exportedInterfaceName_(self, v8, interfaceCopy, v9, 0, 0);
  }

  return v12;
}

- (id)_makeProxyChannelWithRemoteInterface:(id)interface remoteInterfaceName:(id)name exportedInterface:(id)exportedInterface exportedInterfaceName:(id)interfaceName
{
  interfaceCopy = interface;
  nameCopy = name;
  exportedInterfaceCopy = exportedInterface;
  interfaceNameCopy = interfaceName;
  if (interfaceCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_247F5A01C();
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  sub_247F5A090();
LABEL_3:
  if ((exportedInterfaceCopy == 0) != (interfaceNameCopy == 0))
  {
    sub_247F5A104();
  }

  v15 = @"*";
  if (interfaceNameCopy)
  {
    v16 = interfaceNameCopy;
  }

  else
  {
    v16 = @"*";
  }

  if (nameCopy)
  {
    v15 = nameCopy;
  }

  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@:%@:%@", @"dtxproxy", v16, v15);
  v19 = objc_msgSend_makeChannelWithIdentifier_(self, v18, v17);
  v20 = [DTXProxyChannel alloc];
  v22 = objc_msgSend_initWithChannel_remoteProtocol_localProtocol_(v20, v21, v19, interfaceCopy, exportedInterfaceCopy);

  return v22;
}

+ (void)observeDecompressionExceptionLogging:(id)logging
{
  v3 = MEMORY[0x24C1C0D80](logging, a2);
  v4 = qword_27EE80D38;
  qword_27EE80D38 = v3;
}

- (void)replaceCompressorForDecompression:(id)decompression
{
  incomingParser = self->_incomingParser;
  if (incomingParser)
  {
    MEMORY[0x2821F9670](incomingParser, sel_replaceCompressor_, decompression);
  }
}

@end