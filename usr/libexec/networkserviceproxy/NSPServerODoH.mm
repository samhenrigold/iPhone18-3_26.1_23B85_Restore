@interface NSPServerODoH
- (void)reportErrorForDNSAgent:(id)agent error:(int)error withOptions:(id)options;
@end

@implementation NSPServerODoH

- (void)reportErrorForDNSAgent:(id)agent error:(int)error withOptions:(id)options
{
  v6 = *&error;
  agentCopy = agent;
  optionsCopy = options;
  buffer = 0u;
  memset(v40, 0, sizeof(v40));
  v10 = [optionsCopy objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v11 = [NWPath pathForClientID:v10];
  v12 = v11;
  if (!v11)
  {
LABEL_7:
    v17 = 0;
    interface = 0;
    goto LABEL_13;
  }

  interface = [v11 interface];
  parameters = [v12 parameters];
  v15 = [parameters pid];
  if (!v15)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v16 = v15;
  if (proc_pidinfo(v15, 13, 1uLL, &buffer, 64) != 64)
  {
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v16;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to convert from PID (%d) to process name", &buf, 8u);
    }

    goto LABEL_11;
  }

  v17 = v40;
LABEL_12:

LABEL_13:
  v19 = nplog_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = "none";
    }

    interfaceName = [interface interfaceName];
    LODWORD(buf) = 67109634;
    HIDWORD(buf) = v6;
    v35 = 2080;
    v36 = v20;
    v37 = 2112;
    v38 = interfaceName;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received DNS error (%d) from %s on interface %@", &buf, 0x1Cu);
  }

  objc_initWeak(&buf, self);
  v22 = NPGetInternalQueue();
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10004D41C;
  v29 = &unk_100109D88;
  objc_copyWeak(&v32, &buf);
  v33 = v6;
  v23 = interface;
  v30 = v23;
  selfCopy = self;
  dispatch_async(v22, &v26);

  if (v6)
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_delegate);
    }

    resolver = [agentCopy resolver];
    dohURL = [resolver dohURL];
    [(NSPServerODoH *)self handleDNSAgentErrorReport:dohURL error:v6];
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&buf);
}

@end