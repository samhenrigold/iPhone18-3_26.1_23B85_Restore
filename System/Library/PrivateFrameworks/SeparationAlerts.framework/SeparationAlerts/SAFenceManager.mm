@interface SAFenceManager
- (BOOL)isSafeLocation:(id)location;
- (BOOL)startMonitorSafeLocation:(id)location forDevice:(id)device;
- (BOOL)startMonitorUnsafeLocationExit:(id)exit forDevice:(id)device;
- (BOOL)stopMonitorSafeLocation:(id)location forDevice:(id)device;
- (BOOL)stopMonitorUnsafeLocationExit:(id)exit forDevice:(id)device;
- (SAFenceManager)init;
- (id)getRegionForSafeLocation:(id)location;
- (unint64_t)getSafeLocationCount;
- (unint64_t)getUnsafeLocationCount;
- (void)addClient:(id)client;
- (void)handleFenceEvent:(unint64_t)event forRegion:(id)region;
- (void)ingestTAEvent:(id)event;
- (void)notifyState:(unint64_t)state forSafeLocationRegion:(id)region;
- (void)notifyState:(unint64_t)state forUnsafeLocationRegion:(id)region;
- (void)removeClient:(id)client;
- (void)removeLocationsForDeviceUuid:(id)uuid;
@end

@implementation SAFenceManager

- (SAFenceManager)init
{
  v16.receiver = self;
  v16.super_class = SAFenceManager;
  v2 = [(SAFenceManager *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDsByUnsafeRegionIdentifier = v2->_deviceUUIDsByUnsafeRegionIdentifier;
    v2->_deviceUUIDsByUnsafeRegionIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDsBySafeLocation = v2->_deviceUUIDsBySafeLocation;
    v2->_deviceUUIDsBySafeLocation = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    safeLocationsByRegionIdentifier = v2->_safeLocationsByRegionIdentifier;
    v2->_safeLocationsByRegionIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statesByRegionIdentifier = v2->_statesByRegionIdentifier;
    v2->_statesByRegionIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    regionsByRegionIdentifier = v2->_regionsByRegionIdentifier;
    v2->_regionsByRegionIdentifier = v13;
  }

  return v2;
}

- (unint64_t)getSafeLocationCount
{
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v3 = [deviceUUIDsBySafeLocation count];

  return v3;
}

- (unint64_t)getUnsafeLocationCount
{
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v3 = [deviceUUIDsByUnsafeRegionIdentifier count];

  return v3;
}

- (id)getRegionForSafeLocation:(id)location
{
  v27 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  v6 = [safeLocationsByRegionIdentifier countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(safeLocationsByRegionIdentifier);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        safeLocationsByRegionIdentifier2 = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
        v12 = [safeLocationsByRegionIdentifier2 objectForKey:v10];
        v13 = [v12 isEqual:locationCopy];

        if (v13)
        {
          regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
          v15 = [regionsByRegionIdentifier objectForKey:v10];

          goto LABEL_13;
        }
      }

      v7 = [safeLocationsByRegionIdentifier countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Could not find region for safe location}", buf, 0x12u);
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (BOOL)startMonitorSafeLocation:(id)location forDevice:(id)device
{
  v77 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v9 = [deviceUUIDsBySafeLocation objectForKey:locationCopy];

  if (!v9)
  {
    v60 = 0;
    identifier = [locationCopy identifier];
    uUIDString = [identifier UUIDString];

    [locationCopy latitude];
    v16 = v15;
    [locationCopy longitude];
    v18 = v17;
    [locationCopy radius];
    if (v19 >= 100.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 100.0;
    }

    v59 = uUIDString;
    v21 = [objc_alloc(MEMORY[0x277CBFBC8]) initForLowPowerWithCenter:uUIDString radius:v16 identifier:{v18, v20}];
    [v21 setGeoReferenceFrame:{objc_msgSend(locationCopy, "referenceFrame")}];
    v22 = v21;
    v63 = deviceCopy;
    v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{deviceCopy, 0}];
    regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
    identifier2 = [v22 identifier];
    [regionsByRegionIdentifier setObject:v22 forKey:identifier2];

    deviceUUIDsBySafeLocation2 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
    [deviceUUIDsBySafeLocation2 setObject:v23 forKey:locationCopy];

    safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
    identifier3 = [v22 identifier];
    v29 = locationCopy;
    [safeLocationsByRegionIdentifier setObject:locationCopy forKey:identifier3];

    statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier4 = [v22 identifier];
    [statesByRegionIdentifier setObject:&unk_287710090 forKey:identifier4];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    clients = [(SAFenceManager *)self clients];
    v33 = [clients countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v65;
      do
      {
        v36 = 0;
        do
        {
          if (*v65 != v35)
          {
            objc_enumerationMutation(clients);
          }

          v37 = *(*(&v64 + 1) + 8 * v36);
          if (objc_opt_respondsToSelector())
          {
            [v37 addGeofence:v22];
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = [clients countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v34);
    }

    locationCopy = v29;
    goto LABEL_33;
  }

  deviceUUIDsBySafeLocation3 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v11 = [deviceUUIDsBySafeLocation3 objectForKey:locationCopy];

  if (![v11 containsObject:deviceCopy])
  {
    v59 = v11;
    v60 = v9;
    deviceUUIDsBySafeLocation4 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
    v39 = [deviceUUIDsBySafeLocation4 objectForKey:locationCopy];
    v63 = deviceCopy;
    [v39 addObject:deviceCopy];

    v40 = [(SAFenceManager *)self getRegionForSafeLocation:locationCopy];
    statesByRegionIdentifier2 = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier5 = [v40 identifier];
    v43 = [statesByRegionIdentifier2 objectForKey:identifier5];

    if (v43)
    {
      statesByRegionIdentifier3 = [(SAFenceManager *)self statesByRegionIdentifier];
      identifier6 = [v40 identifier];
      v46 = [statesByRegionIdentifier3 objectForKey:identifier6];
      v47 = [v46 isEqual:&unk_287710090];

      if ((v47 & 1) == 0)
      {
        selfCopy = self;
        v62 = locationCopy;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        clients2 = [(SAFenceManager *)self clients];
        v49 = [clients2 countByEnumeratingWithState:&v68 objects:v73 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v69;
          do
          {
            v52 = 0;
            do
            {
              if (*v69 != v51)
              {
                objc_enumerationMutation(clients2);
              }

              v53 = *(*(&v68 + 1) + 8 * v52);
              if (objc_opt_respondsToSelector())
              {
                statesByRegionIdentifier4 = [(SAFenceManager *)selfCopy statesByRegionIdentifier];
                identifier7 = [v40 identifier];
                v56 = [statesByRegionIdentifier4 objectForKey:identifier7];
                [v53 didDetermineState:objc_msgSend(v56 forSafeLocation:"unsignedIntegerValue") forDevice:{v62, v63}];
              }

              ++v52;
            }

            while (v50 != v52);
            v50 = [clients2 countByEnumeratingWithState:&v68 objects:v73 count:16];
          }

          while (v50);
        }

        locationCopy = v62;
      }
    }

    else
    {
      v57 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        buf = 68289026;
        v75 = 2082;
        v76 = "";
        _os_log_impl(&dword_2656EA000, v57, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Safe location state should have been set to unknown at least}", &buf, 0x12u);
      }
    }

LABEL_33:
    deviceCopy = v63;
    v11 = v59;
    v9 = v60;
    goto LABEL_34;
  }

  v12 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    buf = 68289026;
    v75 = 2082;
    v76 = "";
    _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Safe location already used for this device}", &buf, 0x12u);
  }

LABEL_34:

  return v9 == 0;
}

- (BOOL)stopMonitorSafeLocation:(id)location forDevice:(id)device
{
  v41 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v9 = [deviceUUIDsBySafeLocation objectForKey:locationCopy];

  if (!v9)
  {
    v30 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Can't remove a non-existent safe location}", &buf, 0x12u);
    }

    goto LABEL_15;
  }

  deviceUUIDsBySafeLocation2 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v11 = [deviceUUIDsBySafeLocation2 objectForKey:locationCopy];
  [v11 removeObject:deviceCopy];

  deviceUUIDsBySafeLocation3 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v13 = [deviceUUIDsBySafeLocation3 objectForKey:locationCopy];
  v14 = [v13 count];

  if (v14)
  {
LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  v32 = deviceCopy;
  v15 = [(SAFenceManager *)self getRegionForSafeLocation:locationCopy];
  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  identifier = [v15 identifier];
  [statesByRegionIdentifier removeObjectForKey:identifier];

  safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  identifier2 = [v15 identifier];
  [safeLocationsByRegionIdentifier removeObjectForKey:identifier2];

  deviceUUIDsBySafeLocation4 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  [deviceUUIDsBySafeLocation4 removeObjectForKey:locationCopy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  clients = [(SAFenceManager *)self clients];
  v22 = [clients countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(clients);
        }

        v26 = *(*(&v33 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v26 removeGeofence:v15];
        }
      }

      v23 = [clients countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
  identifier3 = [v15 identifier];
  [regionsByRegionIdentifier removeObjectForKey:identifier3];

  v29 = 1;
  deviceCopy = v32;
LABEL_16:

  return v29;
}

- (BOOL)startMonitorUnsafeLocationExit:(id)exit forDevice:(id)device
{
  v67 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  deviceCopy = device;
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier = [exitCopy identifier];
  v10 = [deviceUUIDsByUnsafeRegionIdentifier objectForKey:identifier];

  if (!v10)
  {
    goto LABEL_9;
  }

  if (![v10 containsObject:deviceCopy])
  {
    goto LABEL_6;
  }

  v11 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
  {
    buf = 68289026;
    v65 = 2082;
    v66 = "";
    _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Unsafe location already used for this device}", &buf, 0x12u);
  }

  [(SAFenceManager *)self stopMonitorUnsafeLocationExit:exitCopy forDevice:deviceCopy];
  deviceUUIDsByUnsafeRegionIdentifier2 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier2 = [exitCopy identifier];
  v14 = [deviceUUIDsByUnsafeRegionIdentifier2 objectForKey:identifier2];

  v10 = v14;
  if (v14)
  {
LABEL_6:
    deviceUUIDsByUnsafeRegionIdentifier3 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
    identifier3 = [exitCopy identifier];
    v17 = [deviceUUIDsByUnsafeRegionIdentifier3 objectForKey:identifier3];
    [v17 addObject:deviceCopy];

    statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier4 = [exitCopy identifier];
    v20 = [statesByRegionIdentifier objectForKey:identifier4];

    if (v20)
    {
      v51 = v10;
      statesByRegionIdentifier2 = [(SAFenceManager *)self statesByRegionIdentifier];
      identifier5 = [exitCopy identifier];
      v23 = [statesByRegionIdentifier2 objectForKey:identifier5];
      v24 = [v23 isEqual:&unk_287710090];

      if (v24)
      {
        v25 = 0;
        v10 = v51;
      }

      else
      {
        v52 = deviceCopy;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = [(SAFenceManager *)self clients];
        v41 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v59;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v59 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v58 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [(SAFenceManager *)self statesByRegionIdentifier];
                v47 = v46 = self;
                identifier6 = [exitCopy identifier];
                v49 = [v47 objectForKey:identifier6];
                [v45 didDetermineState:objc_msgSend(v49 forUnsafeLocation:"unsignedIntegerValue") forDevice:{exitCopy, v52}];

                self = v46;
              }
            }

            v42 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
          }

          while (v42);
        }

        v25 = 0;
        v10 = v51;
        deviceCopy = v52;
      }
    }

    else
    {
      v40 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        buf = 68289026;
        v65 = 2082;
        v66 = "";
        _os_log_impl(&dword_2656EA000, v40, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Unsafe location state should have been set to unknown at least}", &buf, 0x12u);
      }

      v25 = 0;
    }
  }

  else
  {
LABEL_9:
    v26 = deviceCopy;
    v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{deviceCopy, 0}];
    regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
    identifier7 = [exitCopy identifier];
    [regionsByRegionIdentifier setObject:exitCopy forKey:identifier7];

    deviceUUIDsByUnsafeRegionIdentifier4 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
    identifier8 = [exitCopy identifier];
    [deviceUUIDsByUnsafeRegionIdentifier4 setObject:v27 forKey:identifier8];

    statesByRegionIdentifier3 = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier9 = [exitCopy identifier];
    [statesByRegionIdentifier3 setObject:&unk_287710090 forKey:identifier9];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    clients = [(SAFenceManager *)self clients];
    v35 = [clients countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v55;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v55 != v37)
          {
            objc_enumerationMutation(clients);
          }

          v39 = *(*(&v54 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v39 addGeofence:exitCopy];
          }
        }

        v36 = [clients countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v36);
    }

    v10 = 0;
    v25 = 1;
    deviceCopy = v26;
  }

  return v25;
}

- (BOOL)stopMonitorUnsafeLocationExit:(id)exit forDevice:(id)device
{
  v41 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  deviceCopy = device;
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier = [exitCopy identifier];
  v10 = [deviceUUIDsByUnsafeRegionIdentifier objectForKey:identifier];

  if (!v10)
  {
    v31 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, Can't remove a non-existent unsafe location}", &buf, 0x12u);
    }

    goto LABEL_15;
  }

  deviceUUIDsByUnsafeRegionIdentifier2 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier2 = [exitCopy identifier];
  v13 = [deviceUUIDsByUnsafeRegionIdentifier2 objectForKey:identifier2];
  [v13 removeObject:deviceCopy];

  deviceUUIDsByUnsafeRegionIdentifier3 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier3 = [exitCopy identifier];
  v16 = [deviceUUIDsByUnsafeRegionIdentifier3 objectForKey:identifier3];
  v17 = [v16 count];

  if (v17)
  {
LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  identifier4 = [exitCopy identifier];
  [statesByRegionIdentifier removeObjectForKey:identifier4];

  deviceUUIDsByUnsafeRegionIdentifier4 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  identifier5 = [exitCopy identifier];
  [deviceUUIDsByUnsafeRegionIdentifier4 removeObjectForKey:identifier5];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  clients = [(SAFenceManager *)self clients];
  v23 = [clients countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(clients);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v27 removeGeofence:exitCopy];
        }
      }

      v24 = [clients countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v24);
  }

  regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
  identifier6 = [exitCopy identifier];
  [regionsByRegionIdentifier removeObjectForKey:identifier6];

  v30 = 1;
LABEL_16:

  return v30;
}

- (void)removeLocationsForDeviceUuid:(id)uuid
{
  v57 = *MEMORY[0x277D85DE8];
  uuidCopy = uuid;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
  v6 = [deviceUUIDsByUnsafeRegionIdentifier countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      v9 = 0;
      do
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(deviceUUIDsByUnsafeRegionIdentifier);
        }

        v10 = *(*(&v49 + 1) + 8 * v9);
        deviceUUIDsByUnsafeRegionIdentifier2 = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
        v12 = [deviceUUIDsByUnsafeRegionIdentifier2 objectForKey:v10];
        v13 = [v12 containsObject:uuidCopy];

        if (v13)
        {
          regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
          v15 = [regionsByRegionIdentifier objectForKey:v10];
          [v36 addObject:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [deviceUUIDsByUnsafeRegionIdentifier countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v7);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
  v17 = [deviceUUIDsBySafeLocation countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      v20 = 0;
      do
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(deviceUUIDsBySafeLocation);
        }

        v21 = *(*(&v45 + 1) + 8 * v20);
        deviceUUIDsBySafeLocation2 = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
        v23 = [deviceUUIDsBySafeLocation2 objectForKey:v21];
        v24 = [v23 containsObject:uuidCopy];

        if (v24)
        {
          [v35 addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [deviceUUIDsBySafeLocation countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v18);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = v36;
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      v29 = 0;
      do
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(SAFenceManager *)self stopMonitorUnsafeLocationExit:*(*(&v41 + 1) + 8 * v29++) forDevice:uuidCopy];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v27);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = v35;
  v31 = [v30 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      v34 = 0;
      do
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(SAFenceManager *)self stopMonitorSafeLocation:*(*(&v37 + 1) + 8 * v34++) forDevice:uuidCopy];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v32);
  }
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    eventType = [v4 eventType];
    region = [v4 region];

    [(SAFenceManager *)self handleFenceEvent:eventType forRegion:region];
  }
}

- (void)handleFenceEvent:(unint64_t)event forRegion:(id)region
{
  v32 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  identifier = [regionCopy identifier];
  v8 = identifier;
  if (event <= 2)
  {
    if (event)
    {
      if (event != 1)
      {
        if (event != 2)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }

LABEL_15:
      if ([identifier hasPrefix:@"unsafe_"])
      {
        v12 = [(NSMutableDictionary *)self->_deviceUUIDsByUnsafeRegionIdentifier objectForKey:v8];

        if (!v12)
        {
          v13 = objc_alloc(MEMORY[0x277CCAD78]);
          v14 = [v8 substringFromIndex:{objc_msgSend(@"unsafe_", "length")}];
          v15 = [v13 initWithUUIDString:v14];

          v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v15, 0}];
          regionsByRegionIdentifier = [(SAFenceManager *)self regionsByRegionIdentifier];
          identifier2 = [regionCopy identifier];
          [regionsByRegionIdentifier setObject:regionCopy forKey:identifier2];

          deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
          identifier3 = [regionCopy identifier];
          [deviceUUIDsByUnsafeRegionIdentifier setObject:v16 forKey:identifier3];

          v21 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            v30 = 2113;
            v31 = v15;
            _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #fencemgr handleFenceEvent for unsafe location not in dictionary, deviceUUID:%{private}@}", buf, 0x1Cu);
          }
        }
      }

      if (event <= 2)
      {
        goto LABEL_26;
      }

LABEL_22:
      if ([(SAFenceManager *)self isSafeLocation:regionCopy])
      {
        selfCopy3 = self;
        v23 = 2;
LABEL_28:
        [(SAFenceManager *)selfCopy3 notifyState:v23 forSafeLocationRegion:regionCopy];
        goto LABEL_31;
      }

      selfCopy4 = self;
      v25 = 2;
LABEL_30:
      [(SAFenceManager *)selfCopy4 notifyState:v25 forUnsafeLocationRegion:regionCopy];
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (event <= 4)
  {
    if (event == 3)
    {
LABEL_26:
      if ([(SAFenceManager *)self isSafeLocation:regionCopy])
      {
        selfCopy3 = self;
        v23 = 1;
        goto LABEL_28;
      }

      selfCopy4 = self;
      v25 = 1;
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if (event == 5)
  {
LABEL_13:
    statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
    identifier4 = [regionCopy identifier];
    [statesByRegionIdentifier setObject:&unk_287710090 forKey:identifier4];
    goto LABEL_14;
  }

  if (event == 6)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      statesByRegionIdentifier = v9;
      identifier4 = [regionCopy identifier];
      *buf = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = identifier4;
      _os_log_impl(&dword_2656EA000, statesByRegionIdentifier, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #fencemgr, region monitoring error, regionUUID:%{private}@}", buf, 0x1Cu);
LABEL_14:
    }
  }

LABEL_31:
}

- (BOOL)isSafeLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = locationCopy;
    if (objc_opt_respondsToSelector())
    {
      isLowPower = [v4 isLowPower];
    }

    else
    {
      isLowPower = 0;
    }
  }

  else
  {
    isLowPower = 0;
  }

  return isLowPower;
}

- (void)notifyState:(unint64_t)state forSafeLocationRegion:(id)region
{
  v54 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  identifier = [regionCopy identifier];
  [statesByRegionIdentifier setObject:v8 forKey:identifier];

  safeLocationsByRegionIdentifier = [(SAFenceManager *)self safeLocationsByRegionIdentifier];
  identifier2 = [regionCopy identifier];
  v12 = [safeLocationsByRegionIdentifier objectForKey:identifier2];

  v13 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier3 = [regionCopy identifier];
    uTF8String = [identifier3 UTF8String];
    clients = [(SAFenceManager *)self clients];
    v18 = [clients count];
    v46 = 2082;
    v47 = "";
    v19 = "Yes";
    buf = 68289795;
    if (!v12)
    {
      v19 = "No";
    }

    v48 = 2081;
    v49 = uTF8String;
    v50 = 2049;
    v51 = v18;
    v52 = 2081;
    v53 = v19;
    _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #fencemgr, notify state for safe, regionUUID:%{private}s, Clients:%{private}ld, Found:%{private}s}", &buf, 0x30u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(SAFenceManager *)self clients];
  v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v33)
  {
    v31 = *v40;
    selfCopy = self;
    do
    {
      v20 = 0;
      do
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v20;
        v21 = *(*(&v39 + 1) + 8 * v20);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        deviceUUIDsBySafeLocation = [(SAFenceManager *)self deviceUUIDsBySafeLocation];
        v23 = [deviceUUIDsBySafeLocation objectForKey:v12];

        v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v36;
          do
          {
            v27 = 0;
            do
            {
              if (*v36 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v35 + 1) + 8 * v27);
              if (objc_opt_respondsToSelector())
              {
                [v21 didDetermineState:state forSafeLocation:v12 forDevice:v28];
              }

              ++v27;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v25);
        }

        v20 = v34 + 1;
        self = selfCopy;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v33);
  }
}

- (void)notifyState:(unint64_t)state forUnsafeLocationRegion:(id)region
{
  v47 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  statesByRegionIdentifier = [(SAFenceManager *)self statesByRegionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  identifier = [regionCopy identifier];
  [statesByRegionIdentifier setObject:v8 forKey:identifier];

  v10 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    identifier2 = [regionCopy identifier];
    uTF8String = [identifier2 UTF8String];
    clients = [(SAFenceManager *)self clients];
    buf = 68289539;
    v41 = 2082;
    v42 = "";
    v43 = 2081;
    v44 = uTF8String;
    v45 = 2049;
    v46 = [clients count];
    _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #fencemgr, notify state for unsafe, regionUUID:%{private}s, Clients:%{private}ld}", &buf, 0x26u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(SAFenceManager *)self clients];
  v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v26 = *v35;
    selfCopy = self;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v15;
        v16 = *(*(&v34 + 1) + 8 * v15);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        deviceUUIDsByUnsafeRegionIdentifier = [(SAFenceManager *)self deviceUUIDsByUnsafeRegionIdentifier];
        identifier3 = [regionCopy identifier];
        v19 = [deviceUUIDsByUnsafeRegionIdentifier objectForKey:identifier3];

        v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v31;
          do
          {
            v23 = 0;
            do
            {
              if (*v31 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v30 + 1) + 8 * v23);
              if (objc_opt_respondsToSelector())
              {
                [v16 didDetermineState:state forUnsafeLocation:regionCopy forDevice:v24];
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v21);
        }

        v15 = v29 + 1;
        self = selfCopy;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v28);
  }
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = [(SAFenceManager *)self clients];
  [clients addObject:clientCopy];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clients = [(SAFenceManager *)self clients];
  [clients removeObject:clientCopy];
}

@end