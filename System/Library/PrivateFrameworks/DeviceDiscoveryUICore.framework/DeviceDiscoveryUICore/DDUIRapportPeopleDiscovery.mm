@interface DDUIRapportPeopleDiscovery
- (DDUIRapportPeopleDiscovery)initWithRemoteDisplayDiscovery:(id)discovery deviceSelectedHandler:(id)handler;
- (id)availablePeople;
- (id)getDiscoveredDevicesMap;
- (void)activateDiscoveryWithCompletion:(id)completion;
- (void)cancelPerson:(id)person;
- (void)invalidate;
- (void)selectPerson:(id)person forPairingType:(unsigned int)type;
- (void)setAvailablePeopleChangedHandler:(id)handler;
- (void)setDedicatedDeviceChangedHandler:(id)handler;
- (void)setDiscoverySessionChangedHandler:(id)handler;
- (void)setPersonDeclinedHandler:(id)handler;
@end

@implementation DDUIRapportPeopleDiscovery

- (DDUIRapportPeopleDiscovery)initWithRemoteDisplayDiscovery:(id)discovery deviceSelectedHandler:(id)handler
{
  discoveryCopy = discovery;
  handlerCopy = handler;
  objc_storeStrong(&self->_discovery, discovery);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDiscoveryFlags:[(RPRemoteDisplayDiscovery *)self->_discovery discoveryFlags]| 3];
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceSelectedHandler:handlerCopy];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke;
  v14[3] = &unk_2788F5FD0;
  objc_copyWeak(&v15, &location);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceFoundHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_1;
  v12[3] = &unk_2788F5FF8;
  objc_copyWeak(&v13, &location);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceChangedHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_3;
  v10[3] = &unk_2788F5FD0;
  objc_copyWeak(&v11, &location);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceLostHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return self;
}

void __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "RPRemoteDisplayDevice found: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained discoveredDevicesMap];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [WeakRetained setDiscoveredDevicesMap:v7];
  }

  v8 = [WeakRetained discoveredDevicesMap];
  v9 = [v3 idsDeviceIdentifier];
  [v8 setObject:v3 forKeyedSubscript:v9];
}

void __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "RPRemoteDisplayDevice changed: %@", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained discoveredDevicesMap];

  if (v6)
  {
    v7 = [WeakRetained discoveredDevicesMap];
    v8 = [v3 idsDeviceIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [WeakRetained discoveredDevicesMap];
      v11 = [v3 idsDeviceIdentifier];
      [v10 setObject:v3 forKeyedSubscript:v11];
    }
  }
}

void __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "RPRemoteDisplayDevice lost: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained discoveredDevicesMap];

  if (v6)
  {
    v7 = [WeakRetained discoveredDevicesMap];
    v8 = [v3 idsDeviceIdentifier];
    [v7 removeObjectForKey:v8];
  }
}

- (void)activateDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  discovery = self->_discovery;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__DDUIRapportPeopleDiscovery_activateDiscoveryWithCompletion___block_invoke;
  v7[3] = &unk_2788F6020;
  v7[4] = self;
  v6 = completionCopy;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [(RPRemoteDisplayDiscovery *)discovery activateWithCompletion:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __62__DDUIRapportPeopleDiscovery_activateDiscoveryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v17 = 134218242;
    v18 = v5;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIRapportPeopleDiscovery activated {self: %p, inError: %@}", &v17, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3 && WeakRetained)
  {
    v8 = [WeakRetained availablePeopleChangedHandler];

    if (v8)
    {
      v9 = [v7 availablePeopleChangedHandler];
      v10 = [v7 availablePeople];
      (v9)[2](v9, v10);
    }

    v11 = [v7 discoverySessionChangedHandler];

    if (v11)
    {
      v12 = [v7 discoverySessionChangedHandler];
      v13 = [v7 discovery];
      v14 = [v13 currentState];
      v15 = [v7 discovery];
      v16 = [v15 peerDeviceIdentifier];
      (v12)[2](v12, v14, v16);
    }
  }
}

- (id)availablePeople
{
  v74 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  discoveredPeople = [(RPRemoteDisplayDiscovery *)self->_discovery discoveredPeople];
  v5 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = discoveredPeople;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Finding available people among %@", buf, 0xCu);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = discoveredPeople;
  v6 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v66;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v65 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          accountAltDSID = [v10 accountAltDSID];
          if (accountAltDSID && [v56 containsObject:accountAltDSID] && objc_msgSend(v3, "count"))
          {
            v12 = 0;
            do
            {
              v13 = [v3 objectAtIndexedSubscript:v12];
              accountAltDSID2 = [v13 accountAltDSID];
              v15 = [accountAltDSID2 isEqual:accountAltDSID];

              if (v15)
              {
                [v3 removeObjectAtIndex:v12--];
              }

              ++v12;
            }

            while (v12 < [v3 count]);
          }

          v16 = _DDUICoreRapportLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v73 = v10;
            _os_log_impl(&dword_230EF9000, v16, OS_LOG_TYPE_DEFAULT, "Found acceptable person %@", buf, 0xCu);
          }

          [v3 addObject:v10];
          [v56 addObject:accountAltDSID];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v7);
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  previousAvailablePeople = [(DDUIRapportPeopleDiscovery *)selfCopy previousAvailablePeople];
  v19 = [previousAvailablePeople countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v62;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(previousAvailablePeople);
        }

        v23 = *(*(&v61 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          accountAltDSID3 = [v23 accountAltDSID];
          [v17 addObject:accountAltDSID3];
        }
      }

      v20 = [previousAvailablePeople countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v20);
  }

  v53 = [v56 mutableCopy];
  [v53 minusSet:v17];
  v51 = [v17 mutableCopy];
  [v51 minusSet:v56];
  v52 = [v17 mutableCopy];
  [v52 unionSet:v56];
  previousAvailablePeople2 = [(DDUIRapportPeopleDiscovery *)selfCopy previousAvailablePeople];
  v26 = [previousAvailablePeople2 mutableCopy];
  v27 = v26;
  v48 = v17;
  if (v26)
  {
    array = v26;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v29 = array;

  if ([v29 count])
  {
    v30 = 0;
    do
    {
      v31 = [v29 objectAtIndexedSubscript:{v30, v48}];
      if (objc_opt_respondsToSelector())
      {
        accountAltDSID4 = [v31 accountAltDSID];
        if ([v51 containsObject:accountAltDSID4])
        {
          [v29 removeObjectAtIndex:v30--];
        }
      }

      ++v30;
    }

    while (v30 < [v29 count]);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v54 = v3;
  v33 = [v54 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v58;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(v54);
        }

        v37 = *(*(&v57 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          v38 = v34;
          accountAltDSID5 = [v37 accountAltDSID];
          if ([v53 containsObject:accountAltDSID5])
          {
            [v29 addObject:v37];
          }

          else if ([v52 containsObject:accountAltDSID5] && objc_msgSend(v29, "count"))
          {
            v40 = 0;
            while (1)
            {
              v41 = [v29 objectAtIndexedSubscript:{v40, v48}];
              accountAltDSID6 = [v41 accountAltDSID];
              v43 = [accountAltDSID5 isEqual:accountAltDSID6];

              if (v43)
              {
                break;
              }

              if (++v40 >= [v29 count])
              {
                goto LABEL_55;
              }
            }

            [v29 replaceObjectAtIndex:v40 withObject:v37];
          }

LABEL_55:

          v34 = v38;
        }
      }

      v34 = [v54 countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v34);
  }

  v44 = [v29 copy];
  objc_autoreleasePoolPop(context);
  [(DDUIRapportPeopleDiscovery *)selfCopy setPreviousAvailablePeople:v44];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = v45;
    _os_log_impl(&dword_230EF9000, v46, OS_LOG_TYPE_DEFAULT, "rapport people: %@", buf, 0xCu);
  }

  return v45;
}

- (id)getDiscoveredDevicesMap
{
  discoveredDevicesMap = [(DDUIRapportPeopleDiscovery *)self discoveredDevicesMap];
  v3 = [discoveredDevicesMap copy];

  return v3;
}

- (void)setAvailablePeopleChangedHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_availablePeopleChangedHandler != handlerCopy)
  {
    v5 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(handlerCopy);
      *buf = 134218242;
      selfCopy = self;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPeopleDiscovery set people changed handler {self: %p, availableDevicesChangedHandler: %@}", buf, 0x16u);
    }

    v7 = _Block_copy(handlerCopy);
    availablePeopleChangedHandler = self->_availablePeopleChangedHandler;
    self->_availablePeopleChangedHandler = v7;

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke;
    v17[3] = &unk_2788F6048;
    objc_copyWeak(&v19, buf);
    v9 = handlerCopy;
    v18 = v9;
    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonFoundHandler:v17];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_2;
    v14[3] = &unk_2788F6048;
    objc_copyWeak(&v16, buf);
    v10 = v9;
    v15 = v10;
    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonChangedHandler:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_3;
    v11[3] = &unk_2788F6048;
    objc_copyWeak(&v13, buf);
    v12 = v10;
    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonLostHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availablePeople];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availablePeople];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availablePeople];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

- (void)setDiscoverySessionChangedHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_discoverySessionChangedHandler != handlerCopy)
  {
    v5 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(handlerCopy);
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPeopleDiscovery set session changed handler {self: %p, discoverySessionStateChangedHandler: %@}", &v9, 0x16u);
    }

    v7 = _Block_copy(handlerCopy);
    discoverySessionChangedHandler = self->_discoverySessionChangedHandler;
    self->_discoverySessionChangedHandler = v7;

    [(RPRemoteDisplayDiscovery *)self->_discovery setDiscoverySessionStateChangedHandler:self->_discoverySessionChangedHandler];
  }
}

- (void)setDedicatedDeviceChangedHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_dedicatedDeviceChangedHandler != handlerCopy)
  {
    v5 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(handlerCopy);
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPeopleDiscovery set dedicated device changed handler {self: %p, dedicatedDeviceChangedHandler: %@}", &v9, 0x16u);
    }

    v7 = _Block_copy(handlerCopy);
    dedicatedDeviceChangedHandler = self->_dedicatedDeviceChangedHandler;
    self->_dedicatedDeviceChangedHandler = v7;

    [(RPRemoteDisplayDiscovery *)self->_discovery setDedicatedDeviceChangedHandler:self->_dedicatedDeviceChangedHandler];
  }
}

void __62__DDUIRapportPeopleDiscovery_attemptDedicatedDeviceConnection__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "requestDedicatedDeviceConfirmation completed with error: %@", &v4, 0xCu);
  }
}

- (void)setPersonDeclinedHandler:(id)handler
{
  if (self->_personDeclinedHandler != handler)
  {
    handlerCopy = handler;
    v5 = _Block_copy(handlerCopy);
    personDeclinedHandler = self->_personDeclinedHandler;
    self->_personDeclinedHandler = v5;

    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonDeclinedHandler:handlerCopy];
  }
}

- (void)cancelPerson:(id)person
{
  v8 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = personCopy;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Canceling confirmation for person: %@", &v6, 0xCu);
  }

  [(RPRemoteDisplayDiscovery *)self->_discovery personCanceled:personCopy];
}

- (void)selectPerson:(id)person forPairingType:(unsigned int)type
{
  v4 = *&type;
  v18 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v7 = objc_opt_respondsToSelector();
  discovery = self->_discovery;
  if (v7)
  {
    [(RPRemoteDisplayDiscovery *)discovery setPersonSelected:personCopy forPairingType:v4];
  }

  else
  {
    [(RPRemoteDisplayDiscovery *)discovery setPersonSelected:personCopy forDedicatedPairing:v4 == 1];
  }

  v9 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 == 1)
    {
      v10 = @"[dedicated]";
    }

    else
    {
      v10 = &stru_2845BF6E0;
    }

    personSelected = [(RPRemoteDisplayDiscovery *)self->_discovery personSelected];
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = personSelected;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_230EF9000, v9, OS_LOG_TYPE_DEFAULT, "Setting RPRemoteDisplayDiscovery person selected %{public}@ to %@ for pairing type: %u", &v12, 0x1Cu);
  }
}

- (void)invalidate
{
  [(RPRemoteDisplayDiscovery *)self->_discovery invalidate];
  discovery = self->_discovery;
  self->_discovery = 0;
}

@end