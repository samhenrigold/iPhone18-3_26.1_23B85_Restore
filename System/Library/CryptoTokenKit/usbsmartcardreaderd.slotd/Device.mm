@interface Device
+ (NSMutableDictionary)devices;
+ (Synchronize)synchronize;
+ (void)registerService:(id)service;
- (Device)initWithService:(id)service;
- (NSNumber)locationId;
- (NSNumber)productId;
- (NSNumber)vendorId;
- (NSString)interfaceName;
- (NSString)productName;
- (NSString)vendorName;
- (id)description;
- (id)deviceAccessBlock:(id)block;
- (unint64_t)handleEANotification;
- (void)terminate;
- (void)watchInterruptPipe:(id)pipe;
@end

@implementation Device

+ (NSMutableDictionary)devices
{
  if (qword_10002C008 != -1)
  {
    sub_100017174();
  }

  v3 = qword_10002C000;

  return v3;
}

+ (Synchronize)synchronize
{
  if (qword_10002C018 != -1)
  {
    sub_100017188();
  }

  v3 = qword_10002C010;

  return v3;
}

- (NSString)productName
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  stringValue = [properties get:@"kUSBProductString"];

  if (!stringValue)
  {
    properties2 = [(IOUSBHostInterface *)self->_interface properties];
    stringValue = [properties2 get:@"USB Product Name"];

    if (!stringValue)
    {
      productId = [(Device *)self productId];
      stringValue = [productId stringValue];
    }
  }

  return stringValue;
}

- (NSString)vendorName
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  stringValue = [properties get:@"kUSBVendorString"];

  if (!stringValue)
  {
    properties2 = [(IOUSBHostInterface *)self->_interface properties];
    stringValue = [properties2 get:@"USB Vendor Name"];

    if (!stringValue)
    {
      vendorId = [(Device *)self vendorId];
      stringValue = [vendorId stringValue];
    }
  }

  return stringValue;
}

- (NSString)interfaceName
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"kUSBString"];

  return v3;
}

- (NSNumber)productId
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"idProduct"];

  return v3;
}

- (NSNumber)vendorId
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"idVendor"];

  return v3;
}

- (NSNumber)locationId
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"locationID"];

  return v3;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendString:@"{\n"];
  productName = [(Device *)self productName];
  [v3 appendFormat:@"    productName: %@\n", productName];

  interfaceName = [(Device *)self interfaceName];

  if (interfaceName)
  {
    interfaceName2 = [(Device *)self interfaceName];
    [v3 appendFormat:@"    interfaceName: %@\n\n", interfaceName2];
  }

  vendorName = [(Device *)self vendorName];
  [v3 appendFormat:@"    vendorName: %@\n", vendorName];

  productId = [(Device *)self productId];
  [v3 appendFormat:@"    productId: %@\n", productId];

  vendorId = [(Device *)self vendorId];
  [v3 appendFormat:@"    vendorId: %@\n}", vendorId];

  return v3;
}

- (void)terminate
{
  v3 = sub_10000D560(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Device terminate", buf, 2u);
  }

  if (self->_notificationDispatchToken)
  {
    v5 = sub_10000D560(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10001724C();
    }

    v4 = notify_cancel(self->_notificationDispatchToken);
    self->_notificationDispatchToken = 0;
  }

  if (self->_notificationToken)
  {
    v6 = sub_10000D560(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100017288();
    }

    notify_cancel(self->_notificationToken);
    self->_notificationToken = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_slots;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v25 + 1) + 8 * v11) terminate];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  v13 = sub_10000D560(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000172C4();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  pipes = [(IOUSBHostInterface *)self->_interface pipes];
  v15 = [pipes countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(pipes);
        }

        [*(*(&v21 + 1) + 8 * v18) abortWithOption:1 error:0];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [pipes countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v16);
  }

  v19 = +[Device devices];
  v20 = [NSNumber numberWithUnsignedLongLong:[(Device *)self entryID]];
  [v19 removeObjectForKey:v20];
}

- (unint64_t)handleEANotification
{
  v3 = notify_register_check("com.apple.accessories.ea.sessionStatusChanged", &self->_notificationToken);
  if (v3)
  {
    v4 = sub_10000D560(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100017300();
    }

    return 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000E780;
    v13[3] = &unk_100024968;
    v13[4] = self;
    v6 = objc_retainBlock(v13);
    v5 = (v6[2])();
    if (!v5)
    {
      v7 = +[Device synchronize];
      queue = [v7 queue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000E820;
      v10[3] = &unk_100024990;
      v11 = v6;
      objc_copyWeak(&v12, &location);
      notify_register_dispatch("com.apple.accessories.ea.sessionStatusChanged", &self->_notificationDispatchToken, queue, v10);

      objc_destroyWeak(&v12);
    }

    objc_destroyWeak(&location);
  }

  return v5;
}

- (Device)initWithService:(id)service
{
  serviceCopy = service;
  v97.receiver = self;
  v97.super_class = Device;
  v6 = [(Device *)&v97 init];
  val = v6;
  if (v6)
  {
    *&v6->_notificationToken = 0;
    v7 = [[Synchronize alloc] initWithQueueName:@"com.apple.ctk.ccid.interruption"];
    interruptionSync = val->_interruptionSync;
    val->_interruptionSync = v7;

    v80 = [[Properties alloc] initWithService:serviceCopy];
    v79 = [(Properties *)v80 get:@"idProduct"];
    v78 = [(Properties *)v80 get:@"idVendor"];
    v9 = sub_10000D560(v78);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000173A4(v79, v78);
    }

    AnalyticsSendEventLazy();
    val->_entryID = sub_100001BA8(serviceCopy);
    objc_initWeak(&location, val);
    v10 = [IOUSBHostInterface alloc];
    holder = [serviceCopy holder];
    v95 = 0;
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_10000F39C;
    v93[3] = &unk_1000249F8;
    objc_copyWeak(&v94, &location);
    v12 = [v10 initWithIOService:holder options:0 queue:0 error:&v95 interestHandler:v93];
    v77 = v95;
    interface = val->_interface;
    val->_interface = v12;

    if ([(Device *)val handleEANotification])
    {
      [(Device *)val terminate];
LABEL_6:
      objc_destroyWeak(&v94);
      objc_destroyWeak(&location);

      goto LABEL_7;
    }

    v15 = val->_interface;
    v16 = sub_10000D560(0);
    v17 = v16;
    if (!v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100017520(v77, v17);
      }

      goto LABEL_6;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      productId = [(Device *)val productId];
      unsignedIntValue = [productId unsignedIntValue];
      vendorId = [(Device *)val vendorId];
      unsignedIntValue2 = [vendorId unsignedIntValue];
      locationId = [(Device *)val locationId];
      unsignedIntValue3 = [locationId unsignedIntValue];
      entryID = [(Device *)val entryID];
      vendorName = [(Device *)val vendorName];
      productName = [(Device *)val productName];
      interfaceName = [(Device *)val interfaceName];
      *buf = 67110658;
      v100 = unsignedIntValue;
      v101 = 1024;
      v102 = unsignedIntValue2;
      v103 = 1024;
      v104 = unsignedIntValue3;
      v105 = 2048;
      v106 = entryID;
      v107 = 2114;
      v108 = vendorName;
      v109 = 2114;
      v110 = productName;
      v111 = 2114;
      v112 = interfaceName;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "new device arrival: %04x:%04x %x (entryId=%llx) (%{public}@ %{public}@ %{public}@)", buf, 0x3Cu);
    }

    cCIDDescriptor = [(IOUSBHostInterface *)val->_interface CCIDDescriptor];
    CCIDDescriptor = val->_CCIDDescriptor;
    val->_CCIDDescriptor = cCIDDescriptor;

    v20 = objc_opt_new();
    slots = val->_slots;
    val->_slots = v20;

    p_isa = &val->super.isa;
    if ([(CCIDDescriptorView *)val->_CCIDDescriptor bMaxSlotIndex])
    {
      LODWORD(v23) = [(CCIDDescriptorView *)val->_CCIDDescriptor bMaxCCIDBusySlots];
      v23 = v23 <= 1 ? 1 : v23;
      v24 = dispatch_semaphore_create(v23);
      slotSemaphore = val->_slotSemaphore;
      val->_slotSemaphore = v24;

      p_isa = &val->super.isa;
      if (!val->_slotSemaphore)
      {
        v61 = sub_10000D560(v26);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          sub_100017450();
        }

        objc_destroyWeak(&v94);
        objc_destroyWeak(&location);

        goto LABEL_7;
      }
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    pipes = [p_isa[2] pipes];
    v28 = 0;
    v29 = [pipes countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v29)
    {
      v86 = 0;
      v30 = 0;
      locationId = *v90;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v90 != locationId)
          {
            objc_enumerationMutation(pipes);
          }

          v32 = *(*(&v89 + 1) + 8 * i);
          if ([v32 endpointType] == 2 && objc_msgSend(v32, "endpointDirection") == 1)
          {
            v33 = v32;
            v34 = v30;
            v30 = v33;
          }

          else if ([v32 endpointType] == 2 && !objc_msgSend(v32, "endpointDirection"))
          {
            v37 = v32;
            v34 = v86;
            v86 = v37;
          }

          else
          {
            endpointType = [v32 endpointType];
            if (endpointType == 3 && (endpointType = [v32 endpointDirection], endpointType == 1))
            {
              v36 = v32;
              v34 = v28;
              v28 = v36;
            }

            else
            {
              v34 = sub_10000D560(endpointType);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                sub_100017484(buf, &buf[1], v34);
              }
            }
          }
        }

        v29 = [pipes countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v29);
    }

    else
    {
      v86 = 0;
      v30 = 0;
    }

    v38 = 0;
    v39 = *([(IOUSBHostInterface *)val->_interface interfaceDescriptor]+ 7);
    if (v30)
    {
      v40 = v86 == 0;
    }

    else
    {
      v40 = 1;
    }

    v42 = v40 || v39 != 0;
    LODWORD(productName2) = v42;
    while (1)
    {
      cCIDDescriptor2 = [(Device *)val CCIDDescriptor];
      v44 = v38 > [cCIDDescriptor2 bMaxSlotIndex];

      if (v44)
      {
        break;
      }

      vendorName2 = [(Device *)val vendorName];
      interfaceName2 = [(Device *)val interfaceName];
      if (interfaceName2)
      {
        locationId = [(Device *)val interfaceName];
        pipes = [(Device *)val productName];
        if ([locationId containsString:pipes])
        {
          interfaceName3 = [(Device *)val interfaceName];
          unsignedIntValue2 = 0;
          v48 = 1;
          v82 = interfaceName3;
        }

        else
        {
          interfaceName3 = [(Device *)val productName];
          v48 = 0;
          unsignedIntValue2 = 1;
          v83 = interfaceName3;
        }
      }

      else
      {
        interfaceName3 = [(Device *)val productName];
        v48 = 0;
        unsignedIntValue2 = 0;
        v81 = interfaceName3;
      }

      v49 = [NSMutableString stringWithFormat:@"%@ %@", vendorName2, interfaceName3];
      if (!interfaceName2)
      {
      }

      if (unsignedIntValue2)
      {
      }

      if (v48)
      {
      }

      if (interfaceName2)
      {
      }

      if (qword_10002C038 != -1)
      {
        sub_1000174C4();
      }

      if (byte_10002C030 == 1)
      {
        locationId2 = [(Device *)val locationId];
        [v49 appendFormat:@"[%@]", locationId2];
      }

      cCIDDescriptor3 = [(Device *)val CCIDDescriptor];
      v52 = [cCIDDescriptor3 bMaxSlotIndex] == 0;

      if (!v52)
      {
        [v49 appendFormat:@"(%d)", v38 + 1];
      }

      if (productName2)
      {
        v53 = 0;
      }

      else
      {
        v53 = [[CCIDSlot alloc] initWithDevice:val slotName:v49 slotNumber:v38 pipeIn:v30 pipeOut:v86];
        if (v53)
        {
          [(NSMutableArray *)val->_slots addObject:v53];
        }
      }

      ++v38;
    }

    v54 = [(NSMutableArray *)val->_slots count];
    if (v54)
    {
      if (v28)
      {
        [(Device *)val watchInterruptPipe:v28];
      }

      vendorName3 = [(Device *)val vendorName];
      interfaceName4 = [(Device *)val interfaceName];
      if (interfaceName4)
      {
        unsignedIntValue2 = [(Device *)val interfaceName];
        productName2 = [(Device *)val productName];
        if ([unsignedIntValue2 containsString:productName2])
        {
          interfaceName5 = [(Device *)val interfaceName];
          v58 = 0;
          v59 = 1;
        }

        else
        {
          interfaceName5 = [(Device *)val productName];
          v59 = 0;
          v58 = 1;
        }
      }

      else
      {
        interfaceName5 = [(Device *)val productName];
        v59 = 0;
        v58 = 0;
      }

      v60 = [NSMutableString stringWithFormat:@"%@ %@", vendorName3, interfaceName5];
      if (!interfaceName4)
      {
      }

      if (v58)
      {
      }

      if (v59)
      {
      }

      if (interfaceName4)
      {
      }

      v62 = [NSString stringWithFormat:@"com.apple.ccid:%@", v60];
      v63 = v62;
      [v62 UTF8String];
      v64 = os_transaction_create();
      transaction = val->_transaction;
      val->_transaction = v64;
    }

    else
    {
      v60 = sub_10000D560(0);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        sub_1000174EC();
      }
    }

    objc_destroyWeak(&v94);
    objc_destroyWeak(&location);

    if (!v54)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_102;
    }
  }

  v66 = sub_10000D560(v6);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    sub_100017598();
  }

  v68 = sub_10000D560(v67);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    sub_10001760C(val);
  }

  v14 = val;
LABEL_102:

  return v14;
}

- (void)watchInterruptPipe:(id)pipe
{
  pipeCopy = pipe;
  objc_initWeak(&location, self);
  interruptionSync = [(Device *)self interruptionSync];
  queue = [interruptionSync queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F5E8;
  v8[3] = &unk_100024A48;
  objc_copyWeak(&v11, &location);
  v9 = pipeCopy;
  selfCopy = self;
  v7 = pipeCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

+ (void)registerService:(id)service
{
  serviceCopy = service;
  v4 = +[Device synchronize];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F8A0;
  v6[3] = &unk_1000244F0;
  v7 = serviceCopy;
  v5 = serviceCopy;
  [v4 sync:v6];
}

- (id)deviceAccessBlock:(id)block
{
  slotSemaphore = self->_slotSemaphore;
  if (slotSemaphore)
  {
    blockCopy = block;
    dispatch_semaphore_wait(slotSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v6 = blockCopy[2](blockCopy);

    dispatch_semaphore_signal(self->_slotSemaphore);
  }

  else
  {
    v7 = *(block + 2);
    blockCopy2 = block;
    v6 = v7();
  }

  return v6;
}

@end