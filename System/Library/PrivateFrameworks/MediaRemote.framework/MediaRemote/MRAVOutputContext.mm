@interface MRAVOutputContext
+ (OS_dispatch_queue)notificationQueue;
- (BOOL)containsLocalDevice;
- (BOOL)containsOutputDevice:(id)device;
- (BOOL)containsOutputDeviceUID:(id)d;
- (BOOL)isVolumeMuted;
- (BOOL)supportsMultipleBluetoothOutputDevices;
- (BOOL)supportsVolumeControl;
- (MRAVOutputDevice)predictedOutputDevice;
- (NSArray)outputDeviceUIDs;
- (NSArray)outputDevices;
- (NSArray)outputDevicesSnapshot;
- (NSArray)personalDeviceUIDs;
- (NSArray)personalDevices;
- (NSArray)predictedOutputDeviceUIDs;
- (NSString)contextID;
- (float)volume;
- (id)outputDeviceForUID:(id)d;
- (unsigned)type;
- (unsigned)volumeControlCapabilities;
- (void)_compareOutputDeviceList:(id)list withNewOutputDeviceList:(id)deviceList;
- (void)_notfiyOutputDeviceRemoved:(id)removed;
- (void)_notifyChangesInOutputDevicesWithAdded:(id)added removed:(id)removed updated:(id)updated previous:(id)previous newDevices:(id)devices;
- (void)_notifyOutputDeviceAdded:(id)added;
- (void)_notifyOutputDeviceChanged:(id)changed;
- (void)_reloadOutputDevices;
- (void)_reloadWithOutputDevices:(id)devices;
- (void)_scheduleOutputContextDeviceDidChangeNotification;
- (void)_scheduleOutputContextDevicesDidChangeNotification;
- (void)_scheduleOutputContextDidChangeNotification;
- (void)addOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withCallbackQueue:(id)queue block:(id)block;
- (void)adjustVolume:(int64_t)volume details:(id)details;
- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)removeAllOutputDevicesWithCallbackQueue:(id)queue block:(id)block;
- (void)removeOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withCallbackQueue:(id)queue block:(id)block;
- (void)resetPredictedOutputDevice;
- (void)setOutputDevices:(id)devices;
- (void)setOutputDevices:(id)devices initiator:(id)initiator password:(id)password fadeAudio:(BOOL)audio withCallbackQueue:(id)queue block:(id)block;
- (void)setVolume:(float)volume details:(id)details;
- (void)setVolumeMuted:(BOOL)muted details:(id)details;
@end

@implementation MRAVOutputContext

- (NSArray)outputDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_outputDevices copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)outputDevicesSnapshot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_outputDevicesSnapshot copy];
  objc_sync_exit(selfCopy);

  return v3;
}

+ (OS_dispatch_queue)notificationQueue
{
  if (notificationQueue___once != -1)
  {
    +[MRAVOutputContext notificationQueue];
  }

  v3 = notificationQueue_queue;

  return v3;
}

void __38__MRAVOutputContext_notificationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MRAVOutputContext.notificationQueue", v2);
  v1 = notificationQueue_queue;
  notificationQueue_queue = v0;
}

- (void)_scheduleOutputContextDidChangeNotification
{
  notificationQueue = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRAVOutputContext__scheduleOutputContextDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

void __64__MRAVOutputContext__scheduleOutputContextDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MRAVOutputContextDidChangeNotification" object:*(a1 + 32)];
}

- (void)_scheduleOutputContextDeviceDidChangeNotification
{
  notificationQueue = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRAVOutputContext__scheduleOutputContextDeviceDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)_scheduleOutputContextDevicesDidChangeNotification
{
  notificationQueue = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MRAVOutputContext__scheduleOutputContextDevicesDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (NSString)contextID
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext contextID]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (unsigned)type
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext type]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setOutputDevices:(id)devices
{
  v27 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(devicesCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = devicesCopy;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [MRAVDistantOutputDevice alloc];
        descriptor = [v12 descriptor];
        v15 = [(MRAVDistantOutputDevice *)v13 initWithDescriptor:descriptor];
        [(NSArray *)v6 addObject:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  outputDevices = selfCopy->_outputDevices;
  selfCopy->_outputDevices = v7;
  v18 = v7;

  outputDevicesSnapshot = selfCopy->_outputDevicesSnapshot;
  selfCopy->_outputDevicesSnapshot = v6;

  objc_sync_exit(selfCopy);
  [v5 timeIntervalSinceNow];
  if (v20 < -0.1)
  {
    v21 = _MRLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MRAVOutputContext setOutputDevices:v5];
    }
  }
}

- (NSArray)outputDeviceUIDs
{
  outputDevices = [(MRAVOutputContext *)self outputDevices];
  v3 = [outputDevices mr_compactMap:&__block_literal_global_49];

  return v3;
}

- (NSArray)personalDevices
{
  outputDevices = [(MRAVOutputContext *)self outputDevices];
  v3 = [outputDevices mr_compactMap:&__block_literal_global_130];

  return v3;
}

void *__36__MRAVOutputContext_personalDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPersonalRoute])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSArray)personalDeviceUIDs
{
  personalDevices = [(MRAVOutputContext *)self personalDevices];
  v3 = [personalDevices mr_compactMap:&__block_literal_global_132];

  return v3;
}

- (BOOL)containsOutputDevice:(id)device
{
  v4 = [device uid];
  LOBYTE(self) = [(MRAVOutputContext *)self containsOutputDeviceUID:v4];

  return self;
}

- (BOOL)containsOutputDeviceUID:(id)d
{
  v3 = [(MRAVOutputContext *)self outputDeviceForUID:d];
  v4 = v3 != 0;

  return v4;
}

- (id)outputDeviceForUID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  outputDevices = [(MRAVOutputContext *)self outputDevices];
  v6 = [outputDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(outputDevices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsUID:dCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [outputDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsLocalDevice
{
  outputDevices = [(MRAVOutputContext *)self outputDevices];
  v3 = [outputDevices msv_firstWhere:&__block_literal_global_135];
  v4 = v3 != 0;

  return v4;
}

- (MRAVOutputDevice)predictedOutputDevice
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext predictedOutputDevice]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSArray)predictedOutputDeviceUIDs
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext predictedOutputDeviceUIDs]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (unsigned)volumeControlCapabilities
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext volumeControlCapabilities]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)supportsVolumeControl
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext supportsVolumeControl]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (float)volume
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext volume]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setVolume:(float)volume details:(id)details
{
  detailsCopy = details;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext setVolume:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setVolumeMuted:(BOOL)muted details:(id)details
{
  detailsCopy = details;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext setVolumeMuted:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)isVolumeMuted
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext isVolumeMuted]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)adjustVolume:(int64_t)volume details:(id)details
{
  detailsCopy = details;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext adjustVolume:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)supportsMultipleBluetoothOutputDevices
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext supportsMultipleBluetoothOutputDevices]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext modifyTopologyWithRequest:withReplyQueue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_reloadOutputDevices
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext _reloadOutputDevices]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)_reloadWithOutputDevices:(id)devices
{
  v4 = MEMORY[0x1E695DFD8];
  devicesCopy = devices;
  outputDevicesSnapshot = [(MRAVOutputContext *)self outputDevicesSnapshot];
  v7 = [v4 setWithArray:outputDevicesSnapshot];

  [(MRAVOutputContext *)self setOutputDevices:devicesCopy];
  v8 = MEMORY[0x1E695DFD8];
  outputDevicesSnapshot2 = [(MRAVOutputContext *)self outputDevicesSnapshot];
  v10 = [v8 setWithArray:outputDevicesSnapshot2];

  v11 = [devicesCopy count];
  if (v11 != [v10 count])
  {
    v12 = _MRLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MRAVOutputContext _reloadWithOutputDevices:v12];
    }
  }

  v13 = [MEMORY[0x1E695DF00] now];
  allObjects = [v7 allObjects];
  mr_allOutputDevices = [allObjects mr_allOutputDevices];
  allObjects2 = [v10 allObjects];
  mr_allOutputDevices2 = [allObjects2 mr_allOutputDevices];
  [(MRAVOutputContext *)self _compareOutputDeviceList:mr_allOutputDevices withNewOutputDeviceList:mr_allOutputDevices2];

  [v13 timeIntervalSinceNow];
  if (v18 < -0.1)
  {
    v19 = _MRLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MRAVOutputContext _reloadWithOutputDevices:v13];
    }
  }
}

- (void)_compareOutputDeviceList:(id)list withNewOutputDeviceList:(id)deviceList
{
  v59 = *MEMORY[0x1E69E9840];
  listCopy = list;
  deviceListCopy = deviceList;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = listCopy;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v12 = deviceListCopy;
        v13 = [v12 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v48;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v48 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v47 + 1) + 8 * j);
              if ([v11 isEqualFuzzy:v17])
              {
                [v37 addObject:v17];

                goto LABEL_16;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v47 objects:v57 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        [v36 addObject:v11];
LABEL_16:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = deviceListCopy;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v43 + 1) + 8 * k);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v24 = obj;
        v25 = [v24 countByEnumeratingWithState:&v39 objects:v55 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v40;
          while (2)
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v40 != v27)
              {
                objc_enumerationMutation(v24);
              }

              if ([*(*(&v39 + 1) + 8 * m) isEqualFuzzy:v23])
              {

                goto LABEL_33;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v39 objects:v55 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        [v35 addObject:v23];
LABEL_33:
        ;
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v20);
  }

  notificationQueue = [objc_opt_class() notificationQueue];
  v30 = v18;
  v31 = obj;
  v32 = v37;
  v33 = v36;
  v34 = v35;
  msv_dispatch_async_on_queue();
}

void __70__MRAVOutputContext__compareOutputDeviceList_withNewOutputDeviceList___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] now];
  [*(a1 + 32) _notifyChangesInOutputDevicesWithAdded:*(a1 + 40) removed:*(a1 + 48) updated:*(a1 + 56) previous:*(a1 + 64) newDevices:*(a1 + 72)];
  [v2 timeIntervalSinceNow];
  if (v3 < -0.1)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__MRAVOutputContext__compareOutputDeviceList_withNewOutputDeviceList___block_invoke_cold_1(v2);
    }
  }
}

- (void)_notifyChangesInOutputDevicesWithAdded:(id)added removed:(id)removed updated:(id)updated previous:(id)previous newDevices:(id)devices
{
  v62 = a2;
  v102 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  removedCopy = removed;
  updatedCopy = updated;
  previousCopy = previous;
  devicesCopy = devices;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"kMRAVOutputContextDevicesDidChangeNotification" object:self];

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v18 = removedCopy;
  v19 = [v18 countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v90;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v90 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(MRAVOutputContext *)self _notfiyOutputDeviceRemoved:*(*(&v89 + 1) + 8 * i), v62];
      }

      v20 = [v18 countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v20);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = addedCopy;
  v23 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v86;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v86 != v25)
        {
          objc_enumerationMutation(obj);
        }

        [(MRAVOutputContext *)self _notifyOutputDeviceAdded:*(*(&v85 + 1) + 8 * j), v62];
      }

      v24 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
    }

    while (v24);
  }

  if ([obj count] || objc_msgSend(v18, "count"))
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"MRAVOutputContextOutputDevicesDidChangeNotification" object:self userInfo:0];
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v65 = devicesCopy;
  v28 = [v65 countByEnumeratingWithState:&v81 objects:v99 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v82;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v82 != v31)
        {
          objc_enumerationMutation(v65);
        }

        v30 += [*(*(&v81 + 1) + 8 * k) isPersonalRoute];
      }

      v29 = [v65 countByEnumeratingWithState:&v81 objects:v99 count:16];
    }

    while (v29);
  }

  else
  {
    v30 = 0;
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v68 = previousCopy;
  v33 = [v68 countByEnumeratingWithState:&v77 objects:v98 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v78;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v78 != v36)
        {
          objc_enumerationMutation(v68);
        }

        v35 += [*(*(&v77 + 1) + 8 * m) isPersonalRoute];
      }

      v34 = [v68 countByEnumeratingWithState:&v77 objects:v98 count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
  }

  if (v30 > v35)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 postNotificationName:@"MRAVOutputContextDidAddPersonalDeviceNotification" object:self];
  }

  v63 = v18;
  if (v30 < v35)
  {
    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 postNotificationName:@"MRAVOutputContextDidRemovePersonalDeviceNotification" object:self];
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v64 = updatedCopy;
  v67 = [v64 countByEnumeratingWithState:&v73 objects:v97 count:16];
  if (v67)
  {
    v40 = *v74;
    do
    {
      v41 = 0;
      do
      {
        if (*v74 != v40)
        {
          objc_enumerationMutation(v64);
        }

        v42 = *(*(&v73 + 1) + 8 * v41);
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __96__MRAVOutputContext__notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices___block_invoke;
        v72[3] = &unk_1E769CDC0;
        v72[4] = v42;
        v43 = [v68 msv_firstWhere:{v72, v62, v63}];
        if (!v43)
        {
          [MRAVOutputContext _notifyChangesInOutputDevicesWithAdded:v62 removed:self updated:? previous:? newDevices:?];
        }

        if (_notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__onceToken != -1)
        {
          [MRAVOutputContext _notifyChangesInOutputDevicesWithAdded:removed:updated:previous:newDevices:];
        }

        v70 = 0;
        v71 = 0;
        v69 = 0;
        v44 = [v43 isEqualToOutputDevice:v42 denyList:_notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__denyList addedProperties:&v71 removedProperties:&v70 changedProperties:&v69];
        v45 = v71;
        v46 = v70;
        v47 = v69;
        if ((v44 & 1) == 0)
        {
          if ([(MRAVOutputContext *)self shouldLog])
          {
            v48 = _MRLogForCategory(0);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              debugName = [v42 debugName];
              *buf = 138543618;
              v94 = debugName;
              v95 = 2114;
              selfCopy = self;
              _os_log_impl(&dword_1A2860000, v48, OS_LOG_TYPE_DEFAULT, "[OutputContext] Updated outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
            }

            if ([v45 count])
            {
              v50 = +[MRUserSettings currentSettings];
              verboseOutputContextLogging = [v50 verboseOutputContextLogging];

              if (verboseOutputContextLogging)
              {
                v53 = MRLogCategoryOutputContextUpdates(v52);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v94 = v45;
                  _os_log_impl(&dword_1A2860000, v53, OS_LOG_TYPE_DEFAULT, "[OutputContext] Added Fields: %{public}@", buf, 0xCu);
                }
              }
            }

            if ([v46 count])
            {
              v54 = +[MRUserSettings currentSettings];
              verboseOutputContextLogging2 = [v54 verboseOutputContextLogging];

              if (verboseOutputContextLogging2)
              {
                v57 = MRLogCategoryOutputContextUpdates(v56);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v94 = v46;
                  _os_log_impl(&dword_1A2860000, v57, OS_LOG_TYPE_DEFAULT, "[OutputContext] Removed Fields: %{public}@", buf, 0xCu);
                }
              }
            }

            if ([v47 count])
            {
              v58 = +[MRUserSettings currentSettings];
              verboseOutputContextLogging3 = [v58 verboseOutputContextLogging];

              if (verboseOutputContextLogging3)
              {
                v61 = MRLogCategoryOutputContextUpdates(v60);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v94 = v47;
                  _os_log_impl(&dword_1A2860000, v61, OS_LOG_TYPE_DEFAULT, "[OutputContext] Changed Values: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          [(MRAVOutputContext *)self _notifyOutputDeviceChanged:v42];
        }

        ++v41;
      }

      while (v67 != v41);
      v67 = [v64 countByEnumeratingWithState:&v73 objects:v97 count:16];
    }

    while (v67);
  }
}

void __96__MRAVOutputContext__notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices___block_invoke_2()
{
  v0 = _notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__denyList;
  _notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__denyList = &unk_1F1577518;
}

- (void)_notfiyOutputDeviceRemoved:(id)removed
{
  v24 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  if ([(MRAVOutputContext *)self shouldLog])
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [removedCopy debugName];
      *buf = 138543618;
      v21 = debugName;
      v22 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed removed outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v18 = @"MRAVOutputContextOutputDeviceUserInfoKey";
  v19 = removedCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [defaultCenter postNotificationName:@"MRAVOutputContextDidRemoveOutputDeviceNotification" object:self userInfo:v8];

  if ([removedCopy isLocalDevice])
  {
    if ([(MRAVOutputContext *)self shouldLog])
    {
      v9 = +[MRUserSettings currentSettings];
      verboseOutputContextLogging = [v9 verboseOutputContextLogging];

      if (verboseOutputContextLogging)
      {
        v12 = MRLogCategoryOutputContextUpdates(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          debugName2 = [removedCopy debugName];
          *buf = 138543618;
          v21 = debugName2;
          v22 = 2114;
          selfCopy2 = self;
          _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed removed localOutputDevice %{public}@ for context: %{public}@", buf, 0x16u);
        }
      }
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v17 = removedCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [defaultCenter2 postNotificationName:@"MRAVOutputContextDidRemoveLocalDeviceNotification" object:self userInfo:v15];
  }
}

- (void)_notifyOutputDeviceAdded:(id)added
{
  v29 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  if ([(MRAVOutputContext *)self shouldLog])
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [addedCopy debugName];
      *buf = 138543618;
      v26 = debugName;
      v27 = 2114;
      selfCopy3 = self;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed added outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
    }

    v7 = +[MRUserSettings currentSettings];
    verboseOutputContextLogging = [v7 verboseOutputContextLogging];

    if (verboseOutputContextLogging)
    {
      v10 = MRLogCategoryOutputContextUpdates(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        descriptor = [addedCopy descriptor];
        *buf = 138543618;
        v26 = descriptor;
        v27 = 2114;
        selfCopy3 = self;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed added outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
      }
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v23 = @"MRAVOutputContextOutputDeviceUserInfoKey";
  v24 = addedCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [defaultCenter postNotificationName:@"MRAVOutputContextDidAddOutputDeviceNotification" object:self userInfo:v13];

  if ([addedCopy isLocalDevice])
  {
    if ([(MRAVOutputContext *)self shouldLog])
    {
      v14 = +[MRUserSettings currentSettings];
      verboseOutputContextLogging2 = [v14 verboseOutputContextLogging];

      if (verboseOutputContextLogging2)
      {
        v17 = MRLogCategoryOutputContextUpdates(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          debugName2 = [addedCopy debugName];
          *buf = 138543618;
          v26 = debugName2;
          v27 = 2114;
          selfCopy3 = self;
          _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed added localOutputDevice %{public}@ for context: %{public}@", buf, 0x16u);
        }
      }
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v22 = addedCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [defaultCenter2 postNotificationName:@"MRAVOutputContextDidAddLocalDeviceNotification" object:self userInfo:v20];
  }
}

- (void)_notifyOutputDeviceChanged:(id)changed
{
  v12[1] = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = @"MRAVOutputContextOutputDeviceUserInfoKey";
  v12[0] = changedCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [defaultCenter postNotificationName:@"MRAVOutputContextOutputDeviceDidChangeNotification" object:self userInfo:v6];

  if ([changedCopy isLocalDevice])
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v10 = changedCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [defaultCenter2 postNotificationName:@"MRAVOutputContextLocalDeviceDidChangeNotification" object:self userInfo:v8];
  }
}

- (void)addOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withCallbackQueue:(id)queue block:(id)block
{
  audioCopy = audio;
  blockCopy = block;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v16 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:initiatorCopy];

  v17 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v16 type:1 outputDevices:devicesCopy];
  [(MRGroupTopologyModificationRequest *)v17 setFadeAudio:audioCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__MRAVOutputContext_Deprecated__addOutputDevices_initiator_fadeAudio_withCallbackQueue_block___block_invoke;
  v19[3] = &unk_1E769AD80;
  v20 = blockCopy;
  v18 = blockCopy;
  [(MRAVOutputContext *)self modifyTopologyWithRequest:v17 withReplyQueue:queueCopy completion:v19];
}

uint64_t __94__MRAVOutputContext_Deprecated__addOutputDevices_initiator_fadeAudio_withCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setOutputDevices:(id)devices initiator:(id)initiator password:(id)password fadeAudio:(BOOL)audio withCallbackQueue:(id)queue block:(id)block
{
  audioCopy = audio;
  blockCopy = block;
  queueCopy = queue;
  passwordCopy = password;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v19 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:initiatorCopy];

  v20 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v19 type:3 outputDevices:devicesCopy];
  [(MRGroupTopologyModificationRequest *)v20 setFadeAudio:audioCopy];
  [(MRGroupTopologyModificationRequest *)v20 setPassword:passwordCopy];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __103__MRAVOutputContext_Deprecated__setOutputDevices_initiator_password_fadeAudio_withCallbackQueue_block___block_invoke;
  v22[3] = &unk_1E769AD80;
  v23 = blockCopy;
  v21 = blockCopy;
  [(MRAVOutputContext *)self modifyTopologyWithRequest:v20 withReplyQueue:queueCopy completion:v22];
}

uint64_t __103__MRAVOutputContext_Deprecated__setOutputDevices_initiator_password_fadeAudio_withCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withCallbackQueue:(id)queue block:(id)block
{
  audioCopy = audio;
  blockCopy = block;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v16 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:initiatorCopy];

  v17 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v16 type:2 outputDevices:devicesCopy];
  [(MRGroupTopologyModificationRequest *)v17 setFadeAudio:audioCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__MRAVOutputContext_Deprecated__removeOutputDevices_initiator_fadeAudio_withCallbackQueue_block___block_invoke;
  v19[3] = &unk_1E769AD80;
  v20 = blockCopy;
  v18 = blockCopy;
  [(MRAVOutputContext *)self modifyTopologyWithRequest:v17 withReplyQueue:queueCopy completion:v19];
}

uint64_t __97__MRAVOutputContext_Deprecated__removeOutputDevices_initiator_fadeAudio_withCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeAllOutputDevicesWithCallbackQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v8 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"API"];
  v9 = [MRGroupTopologyModificationRequest alloc];
  outputDevices = [(MRAVOutputContext *)self outputDevices];
  v11 = [(MRGroupTopologyModificationRequest *)v9 initWithRequestDetails:v8 type:2 outputDevices:outputDevices];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__MRAVOutputContext_Deprecated__removeAllOutputDevicesWithCallbackQueue_block___block_invoke;
  v13[3] = &unk_1E769AD80;
  v14 = blockCopy;
  v12 = blockCopy;
  [(MRAVOutputContext *)self modifyTopologyWithRequest:v11 withReplyQueue:queueCopy completion:v13];
}

uint64_t __79__MRAVOutputContext_Deprecated__removeAllOutputDevicesWithCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resetPredictedOutputDevice
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext(Deprecated) resetPredictedOutputDevice]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setOutputDevices:(void *)a1 .cold.1(void *a1)
{
  [a1 timeIntervalSinceNow];
  v2 = OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v3, v4, "[OutputContext] setOutputDevices took %lf seconds", v5, v6, v7, v8, v2);
}

- (void)_reloadWithOutputDevices:(void *)a1 .cold.2(void *a1)
{
  [a1 timeIntervalSinceNow];
  v2 = OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v3, v4, "[OutputContext] CompareOutputDeviceList took %lf seconds", v5, v6, v7, v8, v2);
}

void __70__MRAVOutputContext__compareOutputDeviceList_withNewOutputDeviceList___block_invoke_cold_1(void *a1)
{
  [a1 timeIntervalSinceNow];
  v2 = OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v3, v4, "[OutputContext] NotifyChanges took %lf seconds", v5, v6, v7, v8, v2);
}

- (void)_notifyChangesInOutputDevicesWithAdded:(uint64_t)a1 removed:(uint64_t)a2 updated:previous:newDevices:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVOutputContext.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"previousOutputDevice"}];
}

@end