@interface SAAudioAccessory
- (SAAudioAccessory)initWithQueue:(id)queue;
- (int64_t)convertToSAInEarStatus:(int)status;
- (int64_t)getPrimaryBudSide;
- (void)attachBTSession;
- (void)btSessionEventHandler:(BTSessionImpl *)handler event:(int)event result:(int)result;
- (void)getInEarStatus:(int64_t *)status secondary:(int64_t *)secondary;
- (void)refreshBTDevice;
- (void)reset;
- (void)setBTAddress:(id)address;
@end

@implementation SAAudioAccessory

- (SAAudioAccessory)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = SAAudioAccessory;
  v5 = [(SAAudioAccessory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SAAudioAccessory *)v5 setQueue:queueCopy];
    [(SAAudioAccessory *)v6 setFBTAddress:&stru_287709218];
    [(SAAudioAccessory *)v6 attachBTSession];
  }

  return v6;
}

- (void)attachBTSession
{
  v8 = *MEMORY[0x277D85DE8];
  queue = [(SAAudioAccessory *)self queue];
  v3 = BTSessionAttachWithQueue();

  if (v3)
  {
    v4 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 68289026;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory failed to register BT session callback}", v5, 0x12u);
    }
  }
}

- (void)setBTAddress:(id)address
{
  v14 = *MEMORY[0x277D85DE8];
  if (address)
  {
    [(SAAudioAccessory *)self setFBTAddress:?];
    v4 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      fBTAddress = [(SAAudioAccessory *)self fBTAddress];
      v8 = 68289283;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2113;
      v13 = fBTAddress;
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAAudioAccessory set BT address of the current device, address:%{private}@}", &v8, 0x1Cu);
    }

    [(SAAudioAccessory *)self refreshBTDevice];
  }

  else
  {
    [(SAAudioAccessory *)self setFBTAddress:&stru_287709218];
    v7 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory received unknown BT address}", &v8, 0x12u);
    }

    [(SAAudioAccessory *)self setFBTDevice:0];
  }
}

- (void)refreshBTDevice
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(SAAudioAccessory *)self fBTSession])
  {
    v11 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v12 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - invalid BT session}";
    goto LABEL_8;
  }

  fBTAddress = [(SAAudioAccessory *)self fBTAddress];
  v4 = [fBTAddress length];

  if (v4 != 17)
  {
    v13 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v8 = v13;
    fBTAddress2 = [(SAAudioAccessory *)self fBTAddress];
    *buf = 68289283;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = fBTAddress2;
    v10 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - invalid BT address, address:%{private}@}";
    goto LABEL_11;
  }

  fBTAddress3 = [(SAAudioAccessory *)self fBTAddress];
  [fBTAddress3 UTF8String];
  v6 = BTDeviceAddressFromString();

  if (v6)
  {
    v7 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v8 = v7;
    fBTAddress2 = [(SAAudioAccessory *)self fBTAddress];
    *buf = 68289283;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = fBTAddress2;
    v10 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - failed to convert address into a valid BT address, address:%{private}@}";
    goto LABEL_11;
  }

  [(SAAudioAccessory *)self fBTSession];
  if (!BTDeviceFromAddress())
  {
    [(SAAudioAccessory *)self fBTDevice];
    if (!BTDeviceGetDeviceId())
    {
      return;
    }

    [(SAAudioAccessory *)self setFProductID:0];
    v11 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v12 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - Failed to get the product ID}";
LABEL_8:
    _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    return;
  }

  [(SAAudioAccessory *)self reset];
  v14 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    v8 = v14;
    fBTAddress2 = [(SAAudioAccessory *)self fBTAddress];
    *buf = 68289283;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = fBTAddress2;
    v10 = "{msg%{public}.0s:SAAudioAccessory refresh device failed - Failed to get the device handle with BT address, address:%{private}@}";
LABEL_11:
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x1Cu);
  }
}

- (void)reset
{
  [(SAAudioAccessory *)self setFBTDevice:0];
  [(SAAudioAccessory *)self setFProductID:0];

  [(SAAudioAccessory *)self setFBTAddress:&stru_287709218];
}

- (int64_t)convertToSAInEarStatus:(int)status
{
  if (status >= 3)
  {
    return 3;
  }

  else
  {
    return status;
  }
}

- (void)getInEarStatus:(int64_t *)status secondary:(int64_t *)secondary
{
  v27 = *MEMORY[0x277D85DE8];
  *status = 3;
  *secondary = 3;
  if (![(SAAudioAccessory *)self fBTDevice])
  {
    v9 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v10 = "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT device}";
    goto LABEL_8;
  }

  fBTAddress = [(SAAudioAccessory *)self fBTAddress];
  v8 = [fBTAddress length];

  if (v8 == 17)
  {
    [(SAAudioAccessory *)self fBTAccessoryManager];
    [(SAAudioAccessory *)self fBTDevice];
    if (BTAccessoryManagerGetInEarDetectionEnable())
    {
      v9 = TASALog;
      if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v10 = "{msg%{public}.0s:SAAudioAccessory in ear status - failed to get IED setting}";
LABEL_8:
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
      return;
    }

    [(SAAudioAccessory *)self fBTAccessoryManager];
    [(SAAudioAccessory *)self fBTDevice];
    if (BTAccessoryManagerGetInEarStatus())
    {
      v14 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory in ear status - failed to get inear status}", buf, 0x12u);
      }

      v15 = 3;
      *status = 3;
      goto LABEL_15;
    }

    *status = [(SAAudioAccessory *)self convertToSAInEarStatus:0];
    *secondary = [(SAAudioAccessory *)self convertToSAInEarStatus:0];
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *status;
      v18 = *secondary;
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2049;
      v24 = v17;
      v25 = 2049;
      v26 = v18;
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAAudioAccessory received in ear status, Primary:%{private}ld, Secondary:%{private}ld}", buf, 0x26u);
    }

    if (!*status && [(SAAudioAccessory *)self fProductID]== 8202)
    {
      v15 = 0;
LABEL_15:
      *secondary = v15;
    }
  }

  else
  {
    v11 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      fBTAddress2 = [(SAAudioAccessory *)self fBTAddress];
      *buf = 68289283;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2113;
      v24 = fBTAddress2;
      _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT address, address:%{private}@}", buf, 0x1Cu);
    }
  }
}

- (int64_t)getPrimaryBudSide
{
  v12 = *MEMORY[0x277D85DE8];
  if (![(SAAudioAccessory *)self fBTDevice])
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v6 = "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT device when get primary bud side}";
      goto LABEL_10;
    }

    return 2;
  }

  fBTAddress = [(SAAudioAccessory *)self fBTAddress];
  v4 = [fBTAddress length];

  if (v4 != 17)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v6 = "{msg%{public}.0s:SAAudioAccessory in ear status - invalid BT address when get primary bud side}";
      goto LABEL_10;
    }

    return 2;
  }

  [(SAAudioAccessory *)self fBTAccessoryManager];
  [(SAAudioAccessory *)self fBTDevice];
  if (BTAccessoryManagerGetPrimaryBudSide())
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v6 = "{msg%{public}.0s:SAAudioAccessory in ear status - failed to get primary bud}";
LABEL_10:
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
      return 2;
    }

    return 2;
  }

  return 2;
}

- (void)btSessionEventHandler:(BTSessionImpl *)handler event:(int)event result:(int)result
{
  v22 = *MEMORY[0x277D85DE8];
  if ((event & 0xFFFFFFFD) == 0)
  {
    if (event == 2)
    {
      [(SAAudioAccessory *)self setFBTSession:0, *&event, *&result];
      v6 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAAudioAccessory BT session terminated}", buf, 0x12u);
      }

      [(SAAudioAccessory *)self reset];
      fBTSessionAttachRetryCount = [(SAAudioAccessory *)self fBTSessionAttachRetryCount];
      [(SAAudioAccessory *)self setFBTSessionAttachRetryCount:(fBTSessionAttachRetryCount + 1)];
      if (fBTSessionAttachRetryCount <= 4)
      {
        v8 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          fBTSessionAttachRetryCount2 = [(SAAudioAccessory *)self fBTSessionAttachRetryCount];
          *buf = 68289283;
          v17 = 0;
          v18 = 2082;
          v19 = "";
          v20 = 1025;
          v21 = fBTSessionAttachRetryCount2;
          _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAAudioAccessory BT session re-attaching, Retry count:%{private}d}", buf, 0x18u);
        }

        [(SAAudioAccessory *)self attachBTSession];
      }
    }

    else
    {
      [(SAAudioAccessory *)self setFBTSessionAttachRetryCount:0, *&event, *&result];
      [(SAAudioAccessory *)self setFBTSession:handler];
      v12 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAAudioAccessory BT session attached successfully}", buf, 0x12u);
      }

      [(SAAudioAccessory *)self fBTSession];
      Default = BTAccessoryManagerGetDefault();
      if (Default)
      {
        v14 = Default;
        v15 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289283;
          v17 = 0;
          v18 = 2082;
          v19 = "";
          v20 = 1025;
          v21 = v14;
          _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAAudioAccessory Accessory Mananger unavailable., status:%{private}d}", buf, 0x18u);
        }
      }

      else
      {
        [(SAAudioAccessory *)self setFBTAccessoryManager:0];
        [(SAAudioAccessory *)self refreshBTDevice];
      }
    }
  }
}

@end