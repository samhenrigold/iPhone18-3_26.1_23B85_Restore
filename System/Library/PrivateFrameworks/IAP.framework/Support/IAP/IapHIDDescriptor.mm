@interface IapHIDDescriptor
- (BOOL)areOutReportsAvailable;
- (BOOL)handleInReport:(char *)report withLength:(unsigned int)length;
- (BOOL)handleOutReport:(char *)report withLength:(int64_t)length;
- (IapHIDDescriptor)initWithReportIndex:(unsigned __int8)index andVID:(unsigned __int16)d andPID:(unsigned __int16)iD andCountryCode:(unsigned __int8)code andTransport:(void *)transport andHIDDescriptor:(id)descriptor;
- (id)dequeueOutReport;
- (void)dealloc;
- (void)queueOutReport:(id)report;
@end

@implementation IapHIDDescriptor

- (IapHIDDescriptor)initWithReportIndex:(unsigned __int8)index andVID:(unsigned __int16)d andPID:(unsigned __int16)iD andCountryCode:(unsigned __int8)code andTransport:(void *)transport andHIDDescriptor:(id)descriptor
{
  iDCopy = iD;
  dCopy = d;
  v39.receiver = self;
  v39.super_class = IapHIDDescriptor;
  result = [(IapHIDDescriptor *)&v39 init];
  v16 = result;
  if (!result)
  {
    return v16;
  }

  indexCopy = index;
  if (!transport)
  {
    goto LABEL_7;
  }

  if ((&result->_transport & 7) != 0)
  {
    goto LABEL_24;
  }

  result->_transport = transport;
  if ((transport & 7) != 0)
  {
    goto LABEL_24;
  }

  result = (*(*transport + 208))(transport);
  if (result <= 3)
  {
    v17 = *(&off_100111B30 + result);
  }

  else
  {
LABEL_7:
    v17 = &stru_100119FF8;
  }

  result = sub_1000CC7A0(result, v15);
  if (result && (result & 7) == 0)
  {
    result = (*(result->super.isa + 13))(result, transport);
    v38 = v17;
    if (result)
    {
      if ((result & 7) != 0)
      {
        goto LABEL_24;
      }

      v18 = (*(result->super.isa + 13))(result);
    }

    else
    {
      v18 = 0;
    }

    v19 = [NSString stringWithUTF8String:"ReportDescriptor"];
    v20 = [NSNumber numberWithUnsignedInt:dCopy];
    v35 = [NSString stringWithUTF8String:"VendorID"];
    v21 = [NSNumber numberWithUnsignedInt:iDCopy];
    v34 = [NSString stringWithUTF8String:"ProductID"];
    v22 = [NSNumber numberWithChar:code];
    v33 = [NSString stringWithUTF8String:"CountryCode"];
    v23 = [NSString stringWithUTF8String:"Transport"];
    result = NSNumber;
    descriptorCopy = descriptor;
    v36 = v19;
    v32 = v23;
    if (v18)
    {
      if ((v18 & 3) != 0)
      {
        goto LABEL_24;
      }

      v31 = [NSNumber numberWithUnsignedInt:(v18[64] << 16) | (v18[65] << 8) | v18[66]];
      v30 = [NSString stringWithUTF8String:"VersionNumber"];
      v24 = [NSString stringWithUTF8String:v18 + 104];
      v25 = [NSString stringWithUTF8String:"Manufacturer"];
      v26 = [NSString stringWithUTF8String:v18 + 168];
      v27 = [NSString stringWithUTF8String:"Product"];
      v28 = [NSString stringWithUTF8String:v18 + 232];
    }

    else
    {
      v31 = [NSNumber numberWithUnsignedInt:0];
      v30 = [NSString stringWithUTF8String:"VersionNumber"];
      v25 = [NSString stringWithUTF8String:"Manufacturer"];
      v27 = [NSString stringWithUTF8String:"Product"];
      v26 = &stru_100119FF8;
      v24 = &stru_100119FF8;
      v28 = &stru_100119FF8;
    }

    [NSDictionary dictionaryWithObjectsAndKeys:descriptorCopy, v36, v20, v35, v21, v34, v22, v33, @"iAP", v32, v31, v30, v24, v25, v26, v27, v28, [NSString stringWithUTF8String:"SerialNumber"], v38, [NSString stringWithUTF8String:"LocationID"], [NSNumber numberWithBool:1], [NSString stringWithUTF8String:"Authenticated"], 0];
    result = objc_alloc_init(NSLock);
    if (((v16 + 32) & 7) == 0)
    {
      v16->_outReportsLock = result;
      result = IOHIDUserDeviceCreate();
      if ((&v16->_deviceRef & 7) == 0)
      {
        v16->_deviceRef = result;
        if (result)
        {
          CFRunLoopGetMain();
          IOHIDUserDeviceScheduleWithRunLoop();
          IOHIDUserDeviceRegisterSetReportCallback();
          v16->_outReportsReadSinceLastEvent = 1;
          v16->_reportIndex = indexCopy;
        }

        else
        {
          NSLog(@"ERROR - %s:%s - %d IOHIDUserDeviceCreate failed", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IapHIDDescriptor.mm", "[IapHIDDescriptor initWithReportIndex:andVID:andPID:andCountryCode:andTransport:andHIDDescriptor:]", 93);
          [(IapHIDDescriptor *)v16 dealloc];
          return 0;
        }

        return v16;
      }
    }
  }

LABEL_24:
  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  p_deviceRef = &self->_deviceRef;
  if ((&self->_deviceRef & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*p_deviceRef)
  {
    CFRunLoopGetMain();
    IOHIDUserDeviceUnscheduleFromRunLoop();
    CFRelease(*p_deviceRef);
    *p_deviceRef = 0;
  }

  p_outReportsLock = &self->_outReportsLock;
  if ((&self->_outReportsLock & 7) != 0 || ([(NSLock *)self->_outReportsLock lock], p_outReports = &self->_outReports, (&self->_outReports & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
  }

  else
  {
    if (*p_outReports)
    {

      *p_outReports = 0;
    }

    [(NSLock *)*p_outReportsLock unlock];
    if (*p_outReportsLock)
    {

      *p_outReportsLock = 0;
    }

    v6.receiver = self;
    v6.super_class = IapHIDDescriptor;
    [(IapHIDDescriptor *)&v6 dealloc];
  }
}

- (BOOL)handleInReport:(char *)report withLength:(unsigned int)length
{
  if ((&self->_deviceRef & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = IOHIDUserDeviceHandleReport();
    v5 = v4;
    if (v4)
    {
      NSLog(@"ERROR - %s:%s - %d handling HID report failed 0x%x.", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IapHIDDescriptor.mm", "[IapHIDDescriptor handleInReport:withLength:]", 133, v4);
    }

    LOBYTE(self) = v5 == 0;
  }

  return self;
}

- (BOOL)handleOutReport:(char *)report withLength:(int64_t)length
{
  if (length < 0)
  {
    NSLog(@"ERROR - %s:%s - %d HID report length is less than 0, not sending report", a2, report, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IapHIDDescriptor.mm", "[IapHIDDescriptor handleOutReport:withLength:]", 143);
  }

  else
  {
    v5 = [[NSData alloc] initWithBytes:report length:length];
    [(IapHIDDescriptor *)self queueOutReport:v5];
  }

  return 1;
}

- (BOOL)areOutReportsAvailable
{
  p_outReportsLock = &self->_outReportsLock;
  if ((&self->_outReportsLock & 7) != 0 || (v3 = self, LOBYTE(self) = [(NSLock *)self->_outReportsLock lock], v3->_outReportsReadSinceLastEvent = 1, p_outReports = &v3->_outReports, (&v3->_outReports & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_outReports)
    {
      v5 = [*p_outReports count] != 0;
    }

    else
    {
      v5 = 0;
    }

    [(NSLock *)*p_outReportsLock unlock];
    LOBYTE(self) = v5;
  }

  return self;
}

- (void)queueOutReport:(id)report
{
  p_outReportsLock = &self->_outReportsLock;
  if ((&self->_outReportsLock & 7) != 0)
  {
    goto LABEL_14;
  }

  [(NSLock *)self->_outReportsLock lock];
  outReportsReadSinceLastEvent = self->_outReportsReadSinceLastEvent;
  if (outReportsReadSinceLastEvent >= 2)
  {
LABEL_15:
    __break(0x550Au);
    return;
  }

  self->_outReportsReadSinceLastEvent = 0;
  p_outReports = &self->_outReports;
  if ((&self->_outReports & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  v8 = *p_outReports;
  if (!*p_outReports)
  {
    v8 = objc_alloc_init(NSMutableArray);
    *p_outReports = v8;
  }

  [(NSMutableArray *)v8 addObject:report];
  unlock = [(NSLock *)*p_outReportsLock unlock];
  if (outReportsReadSinceLastEvent)
  {
    v11 = sub_100026440(unlock, v10);
    if (v11 && (v11 & 7) == 0 && ((self + 16) & 7) == 0)
    {
      transport = self->_transport;
      reportIndex = self->_reportIndex;

      sub_100026D2C(v11, transport, reportIndex);
      return;
    }

    goto LABEL_14;
  }
}

- (id)dequeueOutReport
{
  v2 = (self + 32);
  if (((self + 32) & 7) != 0 || (v3 = self, self = [*(self + 4) lock], v3[48] = 1, v4 = (v3 + 40), ((v3 + 40) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v5 = [*v4 objectAtIndex:0];
    [*v4 removeObjectAtIndex:0];
    if (![*v4 count])
    {

      *v4 = 0;
    }

    [*v2 unlock];
    return v5;
  }

  return self;
}

@end