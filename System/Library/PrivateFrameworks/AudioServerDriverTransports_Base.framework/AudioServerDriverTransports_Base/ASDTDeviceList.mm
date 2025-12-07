@interface ASDTDeviceList
- (ASDTDeviceList)init;
- (BOOL)addAudioDeviceWithCheck:(id)check;
- (NSArray)audioDevices;
- (id)getAudioDeviceWithUID:(id)d;
- (void)addAudioDevices:(id)devices;
- (void)init;
- (void)notifyOfInterest:(int)interest forDevice:(id)device;
- (void)registerObject:(id)object withInterests:(int)interests forUID:(id)d;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDeviceWithUID:(id)d;
- (void)removeAudioDevices:(id)devices;
@end

@implementation ASDTDeviceList

- (NSArray)audioDevices
{
  lock = [(ASDTDeviceList *)self lock];
  [lock lock];

  audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
  allValues = [audioDeviceDict allValues];

  lock2 = [(ASDTDeviceList *)self lock];
  [lock2 unlock];

  return allValues;
}

- (ASDTDeviceList)init
{
  v16.receiver = self;
  v16.super_class = ASDTDeviceList;
  v2 = [(ASDTDeviceList *)&v16 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTDeviceList *)v2 setAudioDeviceDict:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTDeviceList *)v2 setInterestsDict:dictionary2];

  v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  [(ASDTDeviceList *)v2 setLock:v5];

  lock = [(ASDTDeviceList *)v2 lock];
  [lock setName:@"com.apple.AudioServerDriverTransports.ASDTDeviceList"];

  lock2 = [(ASDTDeviceList *)v2 lock];
  if (lock2)
  {
    v9 = lock2;
    audioDeviceDict = [(ASDTDeviceList *)v2 audioDeviceDict];
    if (audioDeviceDict)
    {
      v11 = audioDeviceDict;
      interestsDict = [(ASDTDeviceList *)v2 interestsDict];

      if (interestsDict)
      {
LABEL_5:
        v13 = v2;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v14 = ASDTBaseLogType(lock2, v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceList *)v14 init];
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)getAudioDeviceWithUID:(id)d
{
  if (d)
  {
    dCopy = d;
    lock = [(ASDTDeviceList *)self lock];
    [lock lock];

    audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
    v7 = [audioDeviceDict objectForKey:dCopy];

    lock2 = [(ASDTDeviceList *)self lock];
    [lock2 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addAudioDeviceWithCheck:(id)check
{
  checkCopy = check;
  deviceUID = [checkCopy deviceUID];

  if (deviceUID)
  {
    lock = [(ASDTDeviceList *)self lock];
    [lock lock];

    audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
    deviceUID2 = [checkCopy deviceUID];
    [audioDeviceDict setObject:checkCopy forKey:deviceUID2];

    lock2 = [(ASDTDeviceList *)self lock];
    [lock2 unlock];

    [(ASDTDeviceList *)self notifyOfInterest:1 forDevice:checkCopy];
  }

  else
  {
    v12 = ASDTBaseLogType(v6, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceList *)checkCopy addAudioDeviceWithCheck:v12];
    }
  }

  return deviceUID != 0;
}

- (void)addAudioDevices:(id)devices
{
  v14 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(devicesCopy);
        }

        [(ASDTDeviceList *)self addAudioDevice:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [devicesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAudioDeviceWithUID:(id)d
{
  dCopy = d;
  v4 = [(ASDTDeviceList *)self getAudioDeviceWithUID:?];
  if (v4)
  {
    [(ASDTDeviceList *)self notifyOfInterest:4 forDevice:v4];
    lock = [(ASDTDeviceList *)self lock];
    [lock lock];

    audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
    [audioDeviceDict removeObjectForKey:dCopy];

    lock2 = [(ASDTDeviceList *)self lock];
    [lock2 unlock];
  }
}

- (void)removeAudioDevice:(id)device
{
  deviceUID = [device deviceUID];
  [(ASDTDeviceList *)self removeAudioDeviceWithUID:deviceUID];
}

- (void)removeAudioDevices:(id)devices
{
  v15 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(devicesCopy);
        }

        deviceUID = [*(*(&v10 + 1) + 8 * v8) deviceUID];
        [(ASDTDeviceList *)self removeAudioDeviceWithUID:deviceUID];

        ++v8;
      }

      while (v6 != v8);
      v6 = [devicesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)registerObject:(id)object withInterests:(int)interests forUID:(id)d
{
  v6 = *&interests;
  objectCopy = object;
  dCopy = d;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:objectCopy];
  lock = [(ASDTDeviceList *)self lock];
  [lock lock];

  interestsDict = [(ASDTDeviceList *)self interestsDict];
  dictionary = [interestsDict objectForKey:dCopy];

  if (v6)
  {
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      if (!dictionary)
      {
        v16 = ASDTBaseLogType(0, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(ASDTDeviceList *)v16 registerObject:v17 withInterests:v18 forUID:v19, v20, v21, v22, v23];
        }

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTDeviceList.m" lineNumber:154 description:@"Memory allocation error."];
      }

      interestsDict2 = [(ASDTDeviceList *)self interestsDict];
      [interestsDict2 setObject:dictionary forKey:dCopy];
    }

    v26 = [dictionary objectForKey:v11];
    if (v26)
    {
      v27 = v26;
      [v26 setInterests:v6];
      if ((v6 & 1) == 0)
      {
LABEL_10:
        v28 = 0;
LABEL_20:
        lock2 = [(ASDTDeviceList *)self lock];
        [lock2 unlock];

        [v27 notifyOfInterest:1 forDevice:v28];
        goto LABEL_21;
      }
    }

    else
    {
      v27 = [ASDTDeviceInterest createForObject:objectCopy withInterests:v6];
      if (!v27)
      {
        v32 = ASDTBaseLogType(0, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [(ASDTDeviceList *)v32 registerObject:v33 withInterests:v34 forUID:v35, v36, v37, v38, v39];
        }

        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"ASDTDeviceList.m" lineNumber:161 description:@"Memory allocation error."];
      }

      [dictionary setObject:v27 forKey:v11];
      if ((v6 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
    v28 = [audioDeviceDict objectForKey:dCopy];

    goto LABEL_20;
  }

  v29 = [dictionary objectForKey:v11];
  v27 = v29;
  if (v29)
  {
    [v29 setInterested:0];
    [dictionary removeObjectForKey:v11];
  }

  lock3 = [(ASDTDeviceList *)self lock];
  [lock3 unlock];

LABEL_21:
}

- (void)notifyOfInterest:(int)interest forDevice:(id)device
{
  v4 = *&interest;
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v9 = deviceCopy;
  if (!v4)
  {
    v10 = ASDTBaseLogType(deviceCopy, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceList *)v10 notifyOfInterest:v11 forDevice:v12, v13, v14, v15, v16, v17];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTDeviceList.m" lineNumber:177 description:@"Invalid Arguments."];
  }

  deviceUID = [v9 deviceUID];

  if (deviceUID)
  {
    lock = [(ASDTDeviceList *)self lock];
    [lock lock];

    interestsDict = [(ASDTDeviceList *)self interestsDict];
    deviceUID2 = [v9 deviceUID];
    v23 = [interestsDict objectForKey:deviceUID2];

    allValues = [v23 allValues];
    lock2 = [(ASDTDeviceList *)self lock];
    [lock2 unlock];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = allValues;
    v27 = [v26 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v32;
      do
      {
        v30 = 0;
        do
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v31 + 1) + 8 * v30++) notifyOfInterest:v4 forDevice:{v9, v31}];
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v28);
    }
  }
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "ASDTDeviceList";
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%s: Memory allocation error.", &v1, 0xCu);
}

- (void)addAudioDeviceWithCheck:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 deviceUID];
  v4 = 136315394;
  v5 = "ASDTDeviceList";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%s: Failed adding audio device with UID: %@", &v4, 0x16u);
}

@end