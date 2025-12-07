@interface VGVirtualGarage
- (BOOL)_persisterHasStaleStateForVehicle:(id)vehicle;
- (NSArray)vehicles;
- (NSString)description;
- (VGVehicle)selectedVehicle;
- (VGVirtualGarage)initWithCoder:(id)coder;
- (VGVirtualGarage)initWithGaragePersister:(id)persister;
- (VGVirtualGarageDelegate)delegate;
- (id)_garageCopy;
- (id)_vehicleWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addVehicle:(id)vehicle;
- (void)_endContinuousUpdates;
- (void)_executeQueuedCompletionHandlersIfNeeded;
- (void)_forceUpdateWithVehicles:(id)vehicles;
- (void)_notifyObserversGarageDidUpdateVehicles;
- (void)_onboardVehicle:(id)vehicle;
- (void)_removeVehicleWithIdentifier:(id)identifier;
- (void)_removeVehiclesWithUninstalledAppsIfNeeded;
- (void)_saveVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices;
- (void)_selectVehicleWithIdentifier:(id)identifier;
- (void)_setDataCoordintorRunning:(BOOL)running;
- (void)_setShouldUsePreferredNetworks:(BOOL)networks forVehicle:(id)vehicle;
- (void)_startContinuousUpdatesIfNeeded;
- (void)_unpairVehicle:(id)vehicle;
- (void)_updateDataCoordinatorAvailability;
- (void)dataCoordinator:(id)coordinator didUpdateUnpairedVehicles:(id)vehicles;
- (void)dataCoordinator:(id)coordinator wantsToUpdateVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices;
- (void)dataCoordinatorDidUpdateInstalledApps:(id)apps;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)garagePersister:(id)persister wantsToUpdateVehicles:(id)vehicles;
- (void)setShouldAssumeFullCharge:(BOOL)charge;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)virtualGarageForceFetchAllVehicles;
- (void)virtualGarageGetGarageWithReply:(id)reply;
- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)identifier syncAcrossDevices:(BOOL)devices withReply:(id)reply;
- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply;
- (void)virtualGarageRemoveVehicle:(id)vehicle;
- (void)virtualGarageSelectVehicle:(id)vehicle;
@end

@implementation VGVirtualGarage

- (void)_notifyObserversGarageDidUpdateVehicles
{
  _garageCopy = [(VGVirtualGarage *)self _garageCopy];
  delegate = [(VGVirtualGarage *)self delegate];
  [delegate virtualGarageDidUpdate:_garageCopy];
}

- (id)_garageCopy
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(VGVirtualGarage *)self copy];
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_DEBUG, "EV Routing not enabled. Will strip EV vehicles from VG.", buf, 2u);
    }

    v4 = VGFilter(*(v2 + 8), &__block_literal_global_1224);
    v5 = [v4 mutableCopy];
    v6 = *(v2 + 8);
    *(v2 + 8) = v5;

    if (*(v2 + 16))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = *(v2 + 8);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
LABEL_7:
        v11 = 0;
        while (1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          identifier = [*(*(&v15 + 1) + 8 * v11) identifier];
          v13 = [identifier isEqualToString:*(v2 + 16)];

          if (v13)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:

        v7 = *(v2 + 16);
        *(v2 + 16) = 0;
      }
    }
  }

  return v2;
}

- (VGVirtualGarageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDataCoordinatorAvailability
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_finishedLoadingVehicles)
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 0;
  }

  v4 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (BOOL)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = v5;
    if (GEOConfigGetBOOL())
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
    if (self->_finishedLoadingVehicles)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "_updateDataCoordinatorAvailability: %@, evRoutingEnabled: %@, vehiclesLoaded: %@", &v11, 0x20u);
  }

  [(VGVirtualGarage *)self _setDataCoordintorRunning:BOOL];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_persister)
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      persister = self->_persister;
      *buf = 134218240;
      selfCopy = self;
      v8 = 2048;
      v9 = persister;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "Deallocating virtualGarage: %p with persister: %p", buf, 0x16u);
    }
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  v5.receiver = self;
  v5.super_class = VGVirtualGarage;
  [(VGVirtualGarage *)&v5 dealloc];
}

- (VGVehicle)selectedVehicle
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(VGVirtualGarage *)selfCopy _vehicleWithIdentifier:selfCopy->_selectedVehicleIdentifier];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_removeVehiclesWithUninstalledAppsIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  if (!self->_dataCoordinator)
  {
    selfCopy = VGGetVirtualGarageLog();
    if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    Name = sel_getName(a2);
    v16 = "Tried to use a method (%s) that requires a dataCoordinator.";
    p_super = &selfCopy->super;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 12;
LABEL_21:
    _os_log_impl(&dword_270EC1000, p_super, v18, v16, buf, v19);
    goto LABEL_22;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    selfCopy = VGGetVirtualGarageLog();
    if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v16 = "Automatic unpairing is disabled. Will not remove vehicles.";
    p_super = &selfCopy->super;
    v18 = OS_LOG_TYPE_INFO;
    v19 = 2;
    goto LABEL_21;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  vehicles = [(VGVirtualGarage *)selfCopy vehicles];
  v5 = [vehicles copy];

  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    Name = [v5 count];
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "Will check for vehicles (%lu) that no longer have their paired apps.", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v10 = *v22;
    *&v9 = 138412290;
    v20 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([(VGDataCoordinator *)self->_dataCoordinator shouldUnpairVehicle:v12, v20, v21])
        {
          v13 = VGGetVirtualGarageLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            Name = v12;
            _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "The OEM app on the primary device was uninstalled. Will remove vehicle: %@", buf, 0xCu);
          }

          identifier = [v12 identifier];
          [(VGVirtualGarage *)selfCopy _removeVehicleWithIdentifier:identifier];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
LABEL_22:
}

- (NSArray)vehicles
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_vehicles copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_executeQueuedCompletionHandlersIfNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_queuedGetGarageCompletionHandlers count])
  {
    _garageCopy = [(VGVirtualGarage *)self _garageCopy];
    v4 = [(NSMutableArray *)self->_queuedGetGarageCompletionHandlers copy];
    [(NSMutableArray *)self->_queuedGetGarageCompletionHandlers removeAllObjects];
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v19 = [v4 count];
      v20 = 2112;
      v21 = _garageCopy;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Will execute %lu queued completionHandlers with garage: %@.", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v13 + 1) + 8 * v10) + 16))(*(*(&v13 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 count];
      *buf = 134217984;
      v19 = v12;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "Finished executing %lu queued completionHandlers", buf, 0xCu);
    }
  }

  else
  {
    _garageCopy = VGGetVirtualGarageLog();
    if (os_log_type_enabled(_garageCopy, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, _garageCopy, OS_LOG_TYPE_DEBUG, "There are no queued completion handlers, nothing to do.", buf, 2u);
    }
  }
}

- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)identifier syncAcrossDevices:(BOOL)devices withReply:(id)reply
{
  v47 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = replyCopy;
  if (identifierCopy)
  {
    if (replyCopy)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v12 = VGGetDataCoordinatorLog();
      v13 = os_signpost_id_generate(v12);

      v14 = VGGetDataCoordinatorLog();
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GetVehicleState", "", buf, 2u);
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke;
      v36[3] = &unk_279E26B18;
      v38 = v13;
      v37 = v10;
      v16 = MEMORY[0x2743B8310](v36);
      if ([identifierCopy isEqualToString:selfCopy->_selectedVehicleIdentifier])
      {
        [(VGVirtualGarage *)selfCopy selectedVehicle];
      }

      else
      {
        [(VGVirtualGarage *)selfCopy _vehicleWithIdentifier:identifierCopy];
      }
      v17 = ;
      v18 = v17;
      if (v17)
      {
        if ([v17 isPureElectricVehicle])
        {
          objc_initWeak(buf, selfCopy);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_44;
          v32[3] = &unk_279E26B68;
          objc_copyWeak(&v34, buf);
          v19 = v18;
          v33 = v19;
          devicesCopy = devices;
          v20 = MEMORY[0x2743B8310](v32);
          BOOL = GEOConfigGetBOOL();
          v22 = VGGetVirtualGarageLog();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
          if (BOOL)
          {
            if (v23)
            {
              *v31 = 0;
              _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_INFO, "EVRoutingSynchronousVehicleStateUpdate is on, will fetch SOC and wait before calling completion block.", v31, 2u);
            }

            v24 = v16;
          }

          else
          {
            if (v23)
            {
              *v31 = 0;
              _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_INFO, "EVRoutingSynchronousVehicleStateUpdate is off, getting latest SoC from what is currently in the garage.", v31, 2u);
            }

            (v16)[2](v16, v19, 0);
            v24 = 0;
          }

          (v20)[2](v20, v19, v24);

          objc_destroyWeak(&v34);
          objc_destroyWeak(buf);
LABEL_29:

          objc_sync_exit(selfCopy);
          goto LABEL_30;
        }

        v25 = @"Fetched vehicle is not an EV vehicle.";
      }

      else
      {
        v25 = @"Could not fetch a vehicle.";
      }

      v26 = MEMORY[0x277CCA9B8];
      v27 = GEOErrorDomain();
      v39 = *MEMORY[0x277CCA450];
      v40 = v25;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v29 = [v26 errorWithDomain:v27 code:-8 userInfo:v28];

      v30 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v29;
        _os_log_impl(&dword_270EC1000, v30, OS_LOG_TYPE_ERROR, "Unable to fetch a state for vehicle. Error: %@", buf, 0xCu);
      }

      (v16)[2](v16, 0, v29);
      goto LABEL_29;
    }

    selfCopy = VGGetAssertLog();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v42 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]";
      v43 = 2082;
      v44 = "reply == nil";
      v45 = 2082;
      v46 = "reply block cannot be nil";
      goto LABEL_12;
    }
  }

  else
  {
    selfCopy = VGGetAssertLog();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v42 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]";
      v43 = 2082;
      v44 = "identifier == nil";
      v45 = 2082;
      v46 = "vehicleIdentifier cannot be nil";
LABEL_12:
      _os_log_impl(&dword_270EC1000, &selfCopy->super, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }

LABEL_30:
}

void __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = VGGetDataCoordinatorLog();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "GetVehicleState", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 4);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_45;
    v11[3] = &unk_279E26B40;
    objc_copyWeak(&v14, (a1 + 40));
    v12 = *(a1 + 32);
    v15 = *(a1 + 48);
    v13 = v6;
    [v9 getLatestStateOfVehicle:v5 withReply:v11];

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]_block_invoke";
      v18 = 1024;
      v19 = 737;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v20 = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v6;
        v9 = "Failed to get the latest state of vehicle: %@. with error: %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
        goto LABEL_12;
      }
    }

    else if ([v5 isEqual:*(a1 + 32)])
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v5;
        v9 = "Updated vehicle: %@ is the same as the existing one. Not saving the state.";
        v10 = v8;
        v11 = OS_LOG_TYPE_INFO;
        v12 = 12;
LABEL_12:
        _os_log_impl(&dword_270EC1000, v10, v11, v9, &v20, v12);
      }
    }

    else
    {
      v17 = [v5 identifier];
      v8 = [WeakRetained _vehicleWithIdentifier:v17];

      if (v8)
      {
        v15 = [v8 _vehicleByUpdatingWithVehicle:v5];

        v18 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = 138412290;
          v21 = v15;
          _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_INFO, "Received the latest state of vehicle: %@ through virtualGarageGetLatestStateOfVehicle. Will save the state.", &v20, 0xCu);
        }

        [WeakRetained _saveVehicle:v15 syncAcrossDevices:*(a1 + 56)];
        goto LABEL_14;
      }

      v19 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v5;
        _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_INFO, "Received the latest state of vehicle: %@ through virtualGarageGetLatestStateOfVehicle, but the underlying vehicle was removed from the garage before the callback returned.", &v20, 0xCu);
      }

      v8 = 0;
    }

    v15 = v5;
LABEL_14:

    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v15, v6);
    }

    v5 = v15;
    goto LABEL_17;
  }

  v13 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]_block_invoke";
    v22 = 1024;
    LODWORD(v23) = 740;
    _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v20, 0x12u);
  }

LABEL_17:
}

- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply
{
  dataCoordinator = self->_dataCoordinator;
  replyCopy = reply;
  unpairedVehicles = [(VGDataCoordinator *)dataCoordinator unpairedVehicles];
  v6 = [unpairedVehicles copy];
  (*(reply + 2))(replyCopy, v6, 0);
}

- (void)virtualGarageForceFetchAllVehicles
{
  obj = self;
  objc_sync_enter(obj);
  [(VGDataCoordinator *)obj->_dataCoordinator forceFetchAllVehicles];
  objc_sync_exit(obj);
}

- (void)virtualGarageSelectVehicle:(id)vehicle
{
  v18 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  selectedVehicle = [(VGVirtualGarage *)self selectedVehicle];
  identifier = [vehicleCopy identifier];
  [(VGVirtualGarage *)self _selectVehicleWithIdentifier:identifier];

  if ([vehicleCopy isPureElectricVehicle])
  {
    identifier2 = [selectedVehicle identifier];
    identifier3 = [vehicleCopy identifier];
    v9 = [identifier2 isEqualToString:identifier3];

    if (!v9 || ([selectedVehicle currentVehicleState], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(vehicleCopy, "currentVehicleState"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isSignificantlyDifferentFromVehicleState:", v11), v11, v10, v12))
    {
      v13 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        identifier4 = [vehicleCopy identifier];
        v16 = 138412290;
        v17 = identifier4;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "Will fetch SoC for vehicle: (%@) after it's been selected.", &v16, 0xCu);
      }

      identifier5 = [vehicleCopy identifier];
      [(VGVirtualGarage *)self virtualGarageGetLatestStateOfVehicleWithIdentifier:identifier5 syncAcrossDevices:1 withReply:&__block_literal_global_31];
    }
  }
}

void __46__VGVirtualGarage_virtualGarageSelectVehicle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = VGGetVirtualGarageLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 identifier];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      v9 = "Failed fetching SoC for newly selected vehicle: (%@) with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_270EC1000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = [v4 identifier];
    v13 = 138412290;
    v14 = v8;
    v9 = "Did finish fetching SoC for vehicle: (%@) after it's been selected.";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }
}

- (void)virtualGarageGetGarageWithReply:(id)reply
{
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_finishedLoadingVehicles)
  {
    _garageCopy = [(VGVirtualGarage *)selfCopy _garageCopy];
    replyCopy[2](replyCopy, _garageCopy, 0);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__VGVirtualGarage_virtualGarageGetGarageWithReply___block_invoke;
    v12[3] = &unk_279E26AD0;
    v13 = replyCopy;
    v7 = MEMORY[0x2743B8310](v12);
    queuedGetGarageCompletionHandlers = selfCopy->_queuedGetGarageCompletionHandlers;
    v9 = MEMORY[0x2743B8310]();
    [(NSMutableArray *)queuedGetGarageCompletionHandlers addObject:v9];

    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 0;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Garage hasn't finished loading vehicles from persistor. Once finished, reply block will be executed", &v11, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)virtualGarageRemoveVehicle:(id)vehicle
{
  identifier = [vehicle identifier];
  [(VGVirtualGarage *)self _removeVehicleWithIdentifier:identifier];
}

- (void)dataCoordinatorDidUpdateInstalledApps:(id)apps
{
  v4 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "DataCoordinator updated installed apps. Will try to remove vehicles that have no OEM app.", v5, 2u);
  }

  [(VGVirtualGarage *)self _removeVehiclesWithUninstalledAppsIfNeeded];
}

- (void)dataCoordinator:(id)coordinator didUpdateUnpairedVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  delegate = [(VGVirtualGarage *)self delegate];
  [delegate virtualGarage:self didUpdateUnpairedVehicles:vehiclesCopy];
}

- (void)dataCoordinator:(id)coordinator wantsToUpdateVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices
{
  devicesCopy = devices;
  v11 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v8 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "DataCoordinator wants to save vehicle: %@", &v9, 0xCu);
  }

  [(VGVirtualGarage *)self _saveVehicle:vehicleCopy syncAcrossDevices:devicesCopy];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  if (key.var0 == *MEMORY[0x277D0EAA0] && key.var1 == *(MEMORY[0x277D0EAA0] + 8))
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      BOOL = GEOConfigGetBOOL();
      v7 = @"NO";
      if (BOOL)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "GEOConfigs changed, isEVRoutingEnabled: %@", &v9, 0xCu);
    }

    [(VGVirtualGarage *)self _updateDataCoordinatorAvailability];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableArray *)selfCopy->_vehicles mutableCopyWithZone:zone];
  v8 = *(v5 + 8);
  *(v5 + 8) = v7;

  v9 = [(NSString *)selfCopy->_selectedVehicleIdentifier copyWithZone:zone];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  *(v5 + 64) = selfCopy->_shouldAssumeFullCharge;
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_vehicles forKey:@"_vehicles"];
  [coderCopy encodeObject:selfCopy->_selectedVehicleIdentifier forKey:@"_selectedVehicleIdentifier"];
  objc_sync_exit(selfCopy);
}

- (void)garagePersister:(id)persister wantsToUpdateVehicles:(id)vehicles
{
  v17 = *MEMORY[0x277D85DE8];
  persisterCopy = persister;
  vehiclesCopy = vehicles;
  BOOL = GEOConfigGetBOOL();
  v9 = VGGetVirtualGarageLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (BOOL)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = vehiclesCopy;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "garagePersister: %@ wants to update vehicles with vehicles: %@", &v13, 0x16u);
    }

    [(VGVirtualGarage *)self _forceUpdateWithVehicles:vehiclesCopy];
    [(VGVirtualGarage *)self _removeVehiclesWithUninstalledAppsIfNeeded];
  }

  else
  {
    if (v10)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "GeoConfig_EVRoutingUseMapsSyncLiveUpdates is not set, we're ignoring live updates.", &v13, 2u);
    }
  }
}

- (void)_forceUpdateWithVehicles:(id)vehicles
{
  v73 = *MEMORY[0x277D85DE8];
  vehiclesCopy = vehicles;
  obj = self;
  objc_sync_enter(obj);
  v53 = vehiclesCopy;
  if (vehiclesCopy)
  {
    v5 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v6 = vehiclesCopy;
    v7 = [v6 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = *v59;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        currentVehicleState = [v10 currentVehicleState];
        dateOfUpdate = [currentVehicleState dateOfUpdate];

        if (!dateOfUpdate)
        {
          goto LABEL_14;
        }

        identifier = [v10 identifier];
        v14 = [(VGVirtualGarage *)obj _vehicleWithIdentifier:identifier];

        currentVehicleState2 = [v14 currentVehicleState];
        dateOfUpdate2 = [currentVehicleState2 dateOfUpdate];

        if (!dateOfUpdate2 || [dateOfUpdate2 compare:dateOfUpdate] != 1)
        {

LABEL_14:
          [v5 addObject:v10];
          goto LABEL_15;
        }

        [v5 addObject:v14];
        v17 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_ERROR, "Discarding vehicle with stale charge state: %@ in favor of: %@", buf, 0x16u);
        }

LABEL_15:
      }

      v7 = [v6 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (!v7)
      {
LABEL_17:

        v18 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v52 = v18;
          v19 = obj->_vehicles;
          v54 = v19;
          if (v19)
          {
            if ([(NSMutableArray *)v19 count])
            {
              v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v54, "count")}];
              v64 = 0u;
              v65 = 0u;
              *v62 = 0u;
              v63 = 0u;
              v21 = v54;
              v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:v62 objects:buf count:16];
              if (v22)
              {
                v23 = *v63;
                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v63 != v23)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v25 = *(*&v62[8] + 8 * j);
                    if (v25)
                    {
                      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v25];
                    }

                    else
                    {
                      v26 = @"<nil>";
                    }

                    [v20 addObject:v26];
                  }

                  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:v62 objects:buf count:16];
                }

                while (v22);
              }

              v27 = [(NSMutableArray *)v21 componentsJoinedByString:@", "];
              v28 = MEMORY[0x277CCACA8];
              v29 = v21;
              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v29];

              v31 = [v28 stringWithFormat:@"%@ [%@]", v30, v27];
            }

            else
            {
              v32 = MEMORY[0x277CCACA8];
              v33 = v54;
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v33];

              v31 = [v32 stringWithFormat:@"%@ (empty)", v20];
            }
          }

          else
          {
            v31 = @"<nil>";
          }

          v51 = v31;
          v34 = v5;
          v55 = v34;
          if (v34)
          {
            if ([v34 count])
            {
              v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](v55, "count")}];
              v64 = 0u;
              v65 = 0u;
              *v62 = 0u;
              v63 = 0u;
              v36 = v55;
              v37 = [v36 countByEnumeratingWithState:v62 objects:buf count:16];
              if (v37)
              {
                v38 = *v63;
                do
                {
                  for (k = 0; k != v37; ++k)
                  {
                    if (*v63 != v38)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v40 = *(*&v62[8] + 8 * k);
                    if (v40)
                    {
                      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v40];
                    }

                    else
                    {
                      v41 = @"<nil>";
                    }

                    [v35 addObject:v41];
                  }

                  v37 = [v36 countByEnumeratingWithState:v62 objects:buf count:16];
                }

                while (v37);
              }

              v42 = [v36 componentsJoinedByString:@", "];
              v43 = MEMORY[0x277CCACA8];
              v44 = v36;
              v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v44];

              v46 = [v43 stringWithFormat:@"%@ [%@]", v45, v42];
            }

            else
            {
              v47 = MEMORY[0x277CCACA8];
              v48 = v55;
              v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v48];

              v46 = [v47 stringWithFormat:@"%@ (empty)", v35];
            }
          }

          else
          {
            v46 = @"<nil>";
          }

          *v66 = 138412546;
          v67 = v51;
          v68 = 2112;
          v69 = v46;
          _os_log_impl(&dword_270EC1000, v52, OS_LOG_TYPE_INFO, "Force updating local vehicles: %@, with following vehicles: %@", v66, 0x16u);

          v18 = v52;
        }

        objc_storeStrong(&obj->_vehicles, v5);
        if (GEOConfigGetBOOL())
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v72 = 1;
          vehicles = obj->_vehicles;
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __44__VGVirtualGarage__forceUpdateWithVehicles___block_invoke;
          v57[3] = &unk_279E26AA8;
          v57[4] = obj;
          v57[5] = buf;
          [(NSMutableArray *)vehicles enumerateObjectsUsingBlock:v57];
          if (*(*&buf[8] + 24) == 1 && obj->_selectedVehicleIdentifier)
          {
            v50 = VGGetVirtualGarageLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *v62 = 0;
              _os_log_impl(&dword_270EC1000, v50, OS_LOG_TYPE_INFO, "Forced vehicle update removed the selected vehicle. Will deselect", v62, 2u);
            }

            [(VGVirtualGarage *)obj _selectVehicleWithIdentifier:0];
          }

          _Block_object_dispose(buf, 8);
        }

        [(VGVirtualGarage *)obj _notifyObserversGarageDidUpdateVehicles];
        goto LABEL_61;
      }
    }
  }

  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Tried to update local vehicles with nil vehicles.", buf, 2u);
  }

LABEL_61:

  objc_sync_exit(obj);
}

void __44__VGVirtualGarage__forceUpdateWithVehicles___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 16)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_endContinuousUpdates
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_dataCoordinator)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "Garage will end continuous updates.", &v6, 2u);
    }

    [(VGDataCoordinator *)self->_dataCoordinator endAllContinuousUpdates];
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = VGGetVirtualGarageLog();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", &v6, 0xCu);
    }
  }
}

- (void)_startContinuousUpdatesIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_dataCoordinator)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selectedVehicle = [(VGVirtualGarage *)selfCopy selectedVehicle];
    v5 = VGGetVirtualGarageLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (selectedVehicle)
    {
      if (v6)
      {
        v8 = 138412290;
        Name = selectedVehicle;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Garage will start continuous updates for vehicle: %@", &v8, 0xCu);
      }

      [(VGDataCoordinator *)self->_dataCoordinator startContinuousUpdatesForVehicle:selectedVehicle];
    }

    else
    {
      if (v6)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Garage will not start continuous updates, because there is no selected vehicle", &v8, 2u);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = VGGetVirtualGarageLog();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", &v8, 0xCu);
    }
  }
}

- (void)_setShouldUsePreferredNetworks:(BOOL)networks forVehicle:(id)vehicle
{
  networksCopy = networks;
  v18 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (networksCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "setShouldUsePreferredNetworks: %@ for vehicle: %@", &v14, 0x16u);
  }

  identifier = [vehicleCopy identifier];
  v12 = [(VGVirtualGarage *)selfCopy _vehicleWithIdentifier:identifier];

  v13 = [v12 _vehicleByUpdatingUsesPreferredNetworksForRouting:networksCopy];
  [(VGVirtualGarage *)selfCopy _saveVehicle:v13 syncAcrossDevices:1];

  objc_sync_exit(selfCopy);
}

- (void)_unpairVehicle:(id)vehicle
{
  v20 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v6 = vehicleCopy;
  if (self->_dataCoordinator)
  {
    if (!vehicleCopy)
    {
      v9 = VGGetAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315906;
        Name = "[VGVirtualGarage _unpairVehicle:]";
        v14 = 2080;
        v15 = "VGVirtualGarage.m";
        v16 = 1024;
        v17 = 362;
        v18 = 2080;
        v19 = "vehicle";
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v10 = VGGetAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v12 = 138412290;
          Name = callStackSymbols;
          _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      Name = v6;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "Unpairing vehicle: %@", &v12, 0xCu);
    }

    [(VGDataCoordinator *)self->_dataCoordinator unpairVehicle:v6];
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = VGGetVirtualGarageLog();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", &v12, 0xCu);
    }
  }
}

- (void)_onboardVehicle:(id)vehicle
{
  v44 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (self->_dataCoordinator)
  {
    obj = self;
    objc_sync_enter(obj);
    selfCopy = self;
    unpairedVehicles = [(VGDataCoordinator *)self->_dataCoordinator unpairedVehicles];
    v6 = MEMORY[0x277CCAC30];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __35__VGVirtualGarage__onboardVehicle___block_invoke;
    v32[3] = &unk_279E26A60;
    v30 = vehicleCopy;
    v33 = v30;
    v7 = [v6 predicateWithBlock:v32];
    v29 = [unpairedVehicles filteredArrayUsingPredicate:v7];

    if ([v29 count] != 1)
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v29;
        v26 = v9;
        if (v9)
        {
          if ([v9 count])
          {
            v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v11 = v26;
            v12 = [v11 countByEnumeratingWithState:&v34 objects:buf count:16];
            if (v12)
            {
              v13 = *v35;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v35 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v34 + 1) + 8 * i);
                  if (v15)
                  {
                    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
                  }

                  else
                  {
                    v16 = @"<nil>";
                  }

                  [v10 addObject:v16];
                }

                v12 = [v11 countByEnumeratingWithState:&v34 objects:buf count:16];
              }

              while (v12);
            }

            v17 = [v11 componentsJoinedByString:{@", "}];
            v18 = MEMORY[0x277CCACA8];
            v19 = v11;
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v19];

            v21 = [v18 stringWithFormat:@"%@ [%@]", v20, v17];
          }

          else
          {
            v23 = MEMORY[0x277CCACA8];
            v24 = v26;
            v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

            v21 = [v23 stringWithFormat:@"%@ (empty)", v10];
          }
        }

        else
        {
          v21 = @"<nil>";
        }

        *v38 = 138412546;
        v39 = v30;
        v40 = 2112;
        v41 = v21;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "_onboardVehicle will onboard vehicle %@, but we didn't find exactly one match in unpairedVehicles: %@", v38, 0x16u);
      }
    }

    v25 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      Name = v30;
      _os_log_impl(&dword_270EC1000, v25, OS_LOG_TYPE_INFO, "Onboarding vehicle: %@ in virtual garage.", buf, 0xCu);
    }

    [(VGDataCoordinator *)selfCopy->_dataCoordinator finishOnboardingVehicle:v30];
    [(VGVirtualGarage *)obj _addVehicle:v30];

    p_super = &obj->super;
    objc_sync_exit(obj);
  }

  else
  {
    p_super = VGGetVirtualGarageLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", buf, 0xCu);
    }
  }
}

- (void)_selectVehicleWithIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([identifierCopy isEqualToString:selfCopy->_selectedVehicleIdentifier] & 1) == 0)
  {
    v7 = [(VGVirtualGarage *)selfCopy _vehicleWithIdentifier:identifierCopy];
    v8 = v7;
    if (identifierCopy && !v7)
    {
      v10 = VGGetAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315906;
        v15 = "[VGVirtualGarage _selectVehicleWithIdentifier:]";
        v16 = 2080;
        v17 = "VGVirtualGarage.m";
        v18 = 1024;
        v19 = 326;
        v20 = 2080;
        v21 = "vehicleIdentifier == nil || vehicle";
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v14, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v11 = VGGetAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v14 = 138412290;
          v15 = callStackSymbols;
          _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }

      v13 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "selectVehicle: tried to select a vehicle that is not in the garage.", &v14, 2u);
      }
    }

    else
    {
      objc_storeStrong(&selfCopy->_selectedVehicleIdentifier, identifier);
      [(VGVirtualGaragePersisting *)selfCopy->_persister setSelectedVehicleIdentifier:identifierCopy];
      v9 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Selected vehicle: %@", &v14, 0xCu);
      }

      [(VGVirtualGarage *)selfCopy _notifyObserversGarageDidUpdateVehicles];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_removeVehicleWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(VGVirtualGarage *)selfCopy _vehicleWithIdentifier:identifierCopy];
  if (v6)
  {
    selectedVehicle = [(VGVirtualGarage *)selfCopy selectedVehicle];
    v8 = [v6 isEqual:selectedVehicle];

    if (v8)
    {
      [(VGVirtualGarage *)selfCopy _endContinuousUpdates];
    }

    [(NSMutableArray *)selfCopy->_vehicles removeObject:v6];
    [(VGVirtualGaragePersisting *)selfCopy->_persister removeVehicle:v6];
    v9 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(NSMutableArray *)selfCopy->_vehicles count];
      v16 = 138412546;
      v17 = v6;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Removed vehicle: %@, vehicles.count: %lu", &v16, 0x16u);
    }

    [(VGVirtualGarage *)selfCopy _unpairVehicle:v6];
    [(VGVirtualGarage *)selfCopy _notifyObserversGarageDidUpdateVehicles];
  }

  else
  {
    v11 = VGGetAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[VGVirtualGarage _removeVehicleWithIdentifier:]";
      v18 = 2080;
      v19 = "VGVirtualGarage.m";
      v20 = 1024;
      v21 = 300;
      v22 = 2080;
      v23 = "vehicle";
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v12 = VGGetAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v16 = 138412290;
        v17 = callStackSymbols;
        v14 = callStackSymbols;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }

    v15 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_ERROR, "removeVehicle: tried to remove a vehicle that is not in the garage.", &v16, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_saveVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices
{
  v46 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  obj = self;
  objc_sync_enter(obj);
  vehicles = obj->_vehicles;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __50__VGVirtualGarage__saveVehicle_syncAcrossDevices___block_invoke;
  v34[3] = &unk_279E26A38;
  v33 = vehicleCopy;
  v35 = v33;
  v8 = [(NSMutableArray *)vehicles indexOfObjectPassingTest:v34];
  v9 = VGGetVirtualGarageLog();
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v30 = v10;
      identifier = [v33 identifier];
      v11 = obj->_vehicles;
      v31 = v11;
      if (v11)
      {
        if ([(NSMutableArray *)v11 count])
        {
          v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v31, "count")}];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v13 = v31;
          v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v36 objects:buf count:16];
          if (v14)
          {
            v15 = *v37;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v37 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v36 + 1) + 8 * i);
                if (v17)
                {
                  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v17];
                }

                else
                {
                  v18 = @"<nil>";
                }

                [v12 addObject:v18];
              }

              v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v36 objects:buf count:16];
            }

            while (v14);
          }

          v19 = [(NSMutableArray *)v13 componentsJoinedByString:@", "];
          v20 = MEMORY[0x277CCACA8];
          v21 = v13;
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v21];

          v23 = [v20 stringWithFormat:@"%@ [%@]", v22, v19];
        }

        else
        {
          v27 = MEMORY[0x277CCACA8];
          v28 = v31;
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v28];

          v23 = [v27 stringWithFormat:@"%@ (empty)", v12];
        }
      }

      else
      {
        v23 = @"<nil>";
      }

      *v40 = 138412546;
      v41 = identifier;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_270EC1000, v30, OS_LOG_TYPE_ERROR, "_saveVehicle: Vehicle with ID: %@ wasn't found, it was removed before _save was called. vehicles: %@", v40, 0x16u);

      v10 = v30;
    }
  }

  else
  {
    v24 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v33;
      _os_log_impl(&dword_270EC1000, v24, OS_LOG_TYPE_INFO, "_saveVehicle: Vehicle was found, will replace it in local array: %@", buf, 0xCu);
    }

    [(NSMutableArray *)obj->_vehicles replaceObjectAtIndex:v8 withObject:v33];
    [(VGVirtualGarage *)obj _notifyObserversGarageDidUpdateVehicles];
    v25 = [(VGVirtualGarage *)obj _persisterHasStaleStateForVehicle:v33];
    if (v25)
    {
      v26 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = v33;
        _os_log_impl(&dword_270EC1000, v26, OS_LOG_TYPE_INFO, "_saveVehicle: Will force sync chargeState because persister has stale info for vehicle: %@", buf, 0xCu);
      }
    }

    [(VGVirtualGaragePersisting *)obj->_persister saveVehicle:v33 syncAcrossDevices:devices || v25];
  }

  objc_sync_exit(obj);
}

uint64_t __50__VGVirtualGarage__saveVehicle_syncAcrossDevices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)_addVehicle:(id)vehicle
{
  v24 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_vehicles containsObject:vehicleCopy])
  {
    v12 = VGGetAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[VGVirtualGarage _addVehicle:]";
      v18 = 2080;
      v19 = "VGVirtualGarage.m";
      v20 = 1024;
      v21 = 253;
      v22 = 2080;
      v23 = "![_vehicles containsObject:vehicle]";
      _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v13 = VGGetAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v16 = 138412290;
        v17 = callStackSymbols;
        v15 = callStackSymbols;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  if ([(NSMutableArray *)selfCopy->_vehicles containsObject:vehicleCopy])
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "addVehicle: tried to add a vehicle that is already in the garage.", &v16, 2u);
    }
  }

  else
  {
    [(NSMutableArray *)selfCopy->_vehicles addObject:vehicleCopy];
    [(VGVirtualGaragePersisting *)selfCopy->_persister addVehicle:vehicleCopy];
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableArray *)selfCopy->_vehicles count];
      v16 = 138412546;
      v17 = vehicleCopy;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Added vehicle: %@, vehicles.count: %lu", &v16, 0x16u);
    }

    if (!selfCopy->_selectedVehicleIdentifier)
    {
      v9 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        identifier = [vehicleCopy identifier];
        v16 = 138412290;
        v17 = identifier;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Default selecting new vehicle: %@", &v16, 0xCu);
      }

      identifier2 = [vehicleCopy identifier];
      [(VGVirtualGarage *)selfCopy _selectVehicleWithIdentifier:identifier2];
    }

    [(VGVirtualGarage *)selfCopy _notifyObserversGarageDidUpdateVehicles];
  }

  objc_sync_exit(selfCopy);
}

- (void)_setDataCoordintorRunning:(BOOL)running
{
  runningCopy = running;
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isDataCoordinatorRunning != runningCopy)
  {
    selfCopy->_isDataCoordinatorRunning = runningCopy;
    if (runningCopy)
    {
      v5 = [VGDataCoordinator alloc];
      v6 = objc_alloc_init(VGOEMApplicationFinder);
      v7 = objc_alloc_init(VGExternalAccessory);
      v8 = [(VGDataCoordinator *)v5 initWithApplicationFinder:v6 externalAccessory:v7 delegate:selfCopy];
      dataCoordinator = selfCopy->_dataCoordinator;
      selfCopy->_dataCoordinator = v8;

      p_super = VGGetVirtualGarageLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        v11 = selfCopy->_dataCoordinator;
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_INFO, "Instantiated a new _dataCoordinator %@ for VirtualGarage", &v13, 0xCu);
      }
    }

    else
    {
      v12 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_INFO, "Will not use dataCoordinator, EV routing isn't enabled", &v13, 2u);
      }

      p_super = &selfCopy->_dataCoordinator->super;
      selfCopy->_dataCoordinator = 0;
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_persisterHasStaleStateForVehicle:(id)vehicle
{
  v25 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = [(VGVirtualGaragePersisting *)self->_persister persistedVehicleForVehicle:vehicleCopy];
  if (!v5)
  {
    v21 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412290;
      v24 = vehicleCopy;
      _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_DEBUG, "_persisterHasStaleStateForVehicle: Didn't find persisted vehicle for vehicle: %@", &v23, 0xCu);
    }

    goto LABEL_8;
  }

  currentVehicleState = [vehicleCopy currentVehicleState];
  if (!currentVehicleState || (v7 = currentVehicleState, [v5 currentVehicleState], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
LABEL_8:
    v20 = 1;
    goto LABEL_9;
  }

  currentVehicleState2 = [vehicleCopy currentVehicleState];
  currentVehicleState3 = [v5 currentVehicleState];
  v11 = [currentVehicleState2 isSignificantlyDifferentFromVehicleState:currentVehicleState3];

  GEOConfigGetDouble();
  v13 = v12;
  currentVehicleState4 = [v5 currentVehicleState];
  dateOfUpdate = [currentVehicleState4 dateOfUpdate];
  currentVehicleState5 = [vehicleCopy currentVehicleState];
  dateOfUpdate2 = [currentVehicleState5 dateOfUpdate];
  [dateOfUpdate timeIntervalSinceDate:dateOfUpdate2];
  v19 = fabs(v18) > v13;

  v20 = v11 | v19;
LABEL_9:

  return v20 & 1;
}

- (void)setShouldAssumeFullCharge:(BOOL)charge
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldAssumeFullCharge = charge;
  [(VGVirtualGarage *)obj _notifyObserversGarageDidUpdateVehicles];
  objc_sync_exit(obj);
}

- (id)_vehicleWithIdentifier:(id)identifier
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = &selfCopy->super.isa;
  if (identifierCopy)
  {
    vehicles = selfCopy->_vehicles;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __42__VGVirtualGarage__vehicleWithIdentifier___block_invoke;
    v30[3] = &unk_279E26A38;
    v28 = identifierCopy;
    v31 = v28;
    v7 = [(NSMutableArray *)vehicles indexOfObjectPassingTest:v30];
    if (v7 >= [(NSMutableArray *)selfCopy->_vehicles count])
    {
      v9 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        log = v9;
        v10 = obj[1];
        v27 = v10;
        if (v10)
        {
          if ([v10 count])
          {
            v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count")}];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v12 = v27;
            v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v13)
            {
              v14 = *v33;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v33 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v32 + 1) + 8 * i);
                  if (v16)
                  {
                    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v16];
                  }

                  else
                  {
                    v17 = @"<nil>";
                  }

                  [v11 addObject:v17];
                }

                v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v13);
            }

            v18 = [v12 componentsJoinedByString:{@", "}];
            v19 = MEMORY[0x277CCACA8];
            v20 = v12;
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

            v22 = [v19 stringWithFormat:@"%@ [%@]", v21, v18];
          }

          else
          {
            v23 = MEMORY[0x277CCACA8];
            v24 = v27;
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

            v22 = [v23 stringWithFormat:@"%@ (empty)", v11];
          }
        }

        else
        {
          v22 = @"<nil>";
        }

        *buf = 138412546;
        v37 = v28;
        v38 = 2112;
        v39 = v22;
        _os_log_impl(&dword_270EC1000, log, OS_LOG_TYPE_ERROR, "Didn't find vehicle with identifier: %@ in vehicles: %@.", buf, 0x16u);

        v9 = log;
      }

      v8 = 0;
    }

    else
    {
      v8 = [(NSMutableArray *)selfCopy->_vehicles objectAtIndexedSubscript:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(obj);

  return v8;
}

uint64_t __42__VGVirtualGarage__vehicleWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (NSString)description
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = MEMORY[0x277CCACA8];
  obj = selfCopy;
  v3 = objc_opt_class();
  v24 = NSStringFromClass(v3);
  selectedVehicleIdentifier = selfCopy->_selectedVehicleIdentifier;
  v4 = selfCopy->_vehicles;
  v25 = v4;
  if (v4)
  {
    if ([(NSMutableArray *)v4 count])
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v25, "count")}];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v6 = v25;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        v8 = *v28;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v27 + 1) + 8 * i);
            if (v10)
            {
              v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
            }

            else
            {
              v11 = @"<nil>";
            }

            [v5 addObject:v11];
          }

          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v7);
      }

      v12 = [(NSMutableArray *)v6 componentsJoinedByString:@", "];
      v13 = MEMORY[0x277CCACA8];
      v14 = v6;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v14];

      v16 = [v13 stringWithFormat:@"%@ [%@]", v15, v12];
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = v25;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v18];

      v16 = [v17 stringWithFormat:@"%@ (empty)", v19];
    }
  }

  else
  {
    v16 = @"<nil>";
  }

  v20 = [v23 stringWithFormat:@"<%@:%p, \n _selectedVehicleIdentifier: %@, \n _vehicles: %@\n>", v24, obj, selectedVehicleIdentifier, v16];

  objc_sync_exit(obj);

  return v20;
}

- (VGVirtualGarage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VGVirtualGarage;
  v5 = [(VGVirtualGarage *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_vehicles"];
    vehicles = v5->_vehicles;
    v5->_vehicles = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_selectedVehicleIdentifier"];
    selectedVehicleIdentifier = v5->_selectedVehicleIdentifier;
    v5->_selectedVehicleIdentifier = v11;
  }

  return v5;
}

- (VGVirtualGarage)initWithGaragePersister:(id)persister
{
  v35 = *MEMORY[0x277D85DE8];
  persisterCopy = persister;
  if (persisterCopy)
  {
    v28.receiver = self;
    v28.super_class = VGVirtualGarage;
    v6 = [(VGVirtualGarage *)&v28 init];
    if (v6)
    {
      v7 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v30 = v6;
        v31 = 2048;
        v32 = persisterCopy;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Creating new virtualGarage: %p with persister: %p", buf, 0x16u);
      }

      objc_storeStrong(&v6->_persister, persister);
      [(VGVirtualGaragePersisting *)v6->_persister setDelegate:v6];
      array = [MEMORY[0x277CBEB18] array];
      vehicles = v6->_vehicles;
      v6->_vehicles = array;

      array2 = [MEMORY[0x277CBEB18] array];
      queuedGetGarageCompletionHandlers = v6->_queuedGetGarageCompletionHandlers;
      v6->_queuedGetGarageCompletionHandlers = array2;

      global_queue = geo_get_global_queue();
      _GEOConfigAddDelegateListenerForKey();

      v13 = VGGetPersistingLog();
      v14 = os_signpost_id_generate(v13);

      v15 = VGGetPersistingLog();
      v16 = v15;
      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LoadVehicles", "", buf, 2u);
      }

      objc_initWeak(buf, v6);
      persister = v6->_persister;
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __43__VGVirtualGarage_initWithGaragePersister___block_invoke;
      v26 = &unk_279E26A10;
      objc_copyWeak(v27, buf);
      v27[1] = v14;
      [(VGVirtualGaragePersisting *)persister loadVehiclesWithCompletion:&v23];
      v18 = [(VGVirtualGaragePersisting *)v6->_persister selectedVehicleIdentifier:v23];
      selectedVehicleIdentifier = v6->_selectedVehicleIdentifier;
      v6->_selectedVehicleIdentifier = v18;

      objc_destroyWeak(v27);
      objc_destroyWeak(buf);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v21 = VGGetAssertLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "[VGVirtualGarage initWithGaragePersister:]";
      v31 = 2082;
      v32 = "persister == nil";
      v33 = 2082;
      v34 = "Garage should be initialized with a persister.";
      _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

void __43__VGVirtualGarage_initWithGaragePersister___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v10 = VGGetPersistingLog();
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = v6;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "Failed to load virtual garage with error: %@", &v21, 0xCu);
      }

      v12 = VGGetPersistingLog();
      v13 = v12;
      v14 = *(a1 + 40);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v13, OS_SIGNPOST_INTERVAL_END, v14, "LoadVehicles", "", &v21, 2u);
      }

      LOBYTE(v9[6].isa) = 1;
      [v9 _updateDataCoordinatorAvailability];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "Garage did finish loading initial vehicles.", &v21, 2u);
      }

      if (!v5)
      {
        v18 = VGGetAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315906;
          v22 = "[VGVirtualGarage initWithGaragePersister:]_block_invoke";
          v23 = 2080;
          v24 = "VGVirtualGarage.m";
          v25 = 1024;
          v26 = 99;
          v27 = 2080;
          v28 = "vehicles != nil";
          _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v21, 0x26u);
        }

        if (_vg_isInternalInstall())
        {
          v19 = VGGetAssertLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [MEMORY[0x277CCACC8] callStackSymbols];
            v21 = 138412290;
            v22 = v20;
            _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
          }
        }
      }

      [v9 _forceUpdateWithVehicles:v5];
      v15 = VGGetPersistingLog();
      v16 = v15;
      v17 = *(a1 + 40);
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "LoadVehicles", "", &v21, 2u);
      }

      LOBYTE(v9[6].isa) = 1;
      [v9 _updateDataCoordinatorAvailability];
      [v9 _removeVehiclesWithUninstalledAppsIfNeeded];
    }

    [v9 _executeQueuedCompletionHandlersIfNeeded];
    objc_sync_exit(v9);
  }

  else
  {
    v9 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[VGVirtualGarage initWithGaragePersister:]_block_invoke";
      v23 = 1024;
      LODWORD(v24) = 83;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v21, 0x12u);
    }
  }
}

@end