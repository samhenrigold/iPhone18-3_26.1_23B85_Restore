@interface AVVCPluginRemoteInputHost
- (AVVCPluginRemoteInputHost)init;
- (AVVoiceController)mMotherController;
- (id)allBundles:(id *)bundles;
- (id)findDeviceWithIdentifier:(id)identifier;
- (id)findFirstBluetoothDevice;
- (id)mockPluginEndpoint;
- (void)dealloc;
- (void)inputPlugin:(id)plugin didPublishDevice:(id)device;
- (void)inputPlugin:(id)plugin didUnpublishDevice:(id)device;
- (void)invalidatePlugins;
- (void)setParentVoiceController:(id)controller;
@end

@implementation AVVCPluginRemoteInputHost

- (AVVoiceController)mMotherController
{
  WeakRetained = objc_loadWeakRetained(&self->_mMotherController);

  return WeakRetained;
}

- (id)mockPluginEndpoint
{
  v31 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    *buf = 136315906;
    v24 = "AVVCPluginRemoteInputHost.mm";
    v25 = 1024;
    v26 = 193;
    v27 = 2048;
    selfCopy = self;
    v29 = 2048;
    v30 = WeakRetained;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) controller(%p)", buf, 0x26u);
  }

LABEL_8:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->mPlugins;
  v8 = [(AVAudioRemoteInputPlugin *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
LABEL_10:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if ([v11 conformsToProtocol:{&unk_1F385C438, v18}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(AVAudioRemoteInputPlugin *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v14 = v11;
    mockPluginEndpoint = [v14 mockPluginEndpoint];

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "AVVCPluginRemoteInputHost.mm";
      v25 = 1024;
      v26 = 210;
      v27 = 2112;
      selfCopy = mockPluginEndpoint;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mock plugin endpoint (%@)", buf, 0x1Cu);
    }
  }

  else
  {
LABEL_16:

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        mockPluginEndpoint = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "AVVCPluginRemoteInputHost.mm";
      v25 = 1024;
      v26 = 207;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't find mock plugin", buf, 0x12u);
    }

    mockPluginEndpoint = 0;
  }

LABEL_30:

  return mockPluginEndpoint;
}

- (void)inputPlugin:(id)plugin didUnpublishDevice:(id)device
{
  v34 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  deviceCopy = device;
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    deviceIdentifier = [deviceCopy deviceIdentifier];
    *v23 = 136316674;
    *&v23[4] = "AVVCPluginRemoteInputHost.mm";
    *&v23[12] = 1024;
    *&v23[14] = 177;
    v24 = 2048;
    selfCopy = self;
    v26 = 2048;
    v27 = WeakRetained;
    v28 = 2048;
    v29 = pluginCopy;
    v30 = 2048;
    v31 = deviceCopy;
    v32 = 2112;
    v33 = deviceIdentifier;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) controller(%p) plugin(%p), did UNpublish device(%p) with id(%@)", v23, 0x44u);
  }

LABEL_8:
  if (deviceCopy)
  {
    v13 = objc_loadWeakRetained(&self->_mMotherController);
    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_mMotherController);
      objc_msgSend_impl(v14);
      if (*(*v23 + 520))
      {
        v15 = 0;
      }

      else
      {
        v17 = objc_loadWeakRetained(&self->_mMotherController);
        v15 = objc_opt_respondsToSelector();
      }

      if (*&v23[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v23[8]);
      }

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_mMotherController);
        [v16 handlePluginDidUnpublishDevice:pluginCopy withDevice:deviceCopy];
        goto LABEL_30;
      }
    }

    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *v23 = 136315394;
    *&v23[4] = "AVVCPluginRemoteInputHost.mm";
    *&v23[12] = 1024;
    *&v23[14] = 185;
    v19 = "%25s:%-5d WARNING: Not forwarding didUNpublish event to AVVC parent because it does not exist, or is deallocating.";
    v20 = v16;
    v21 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
    _os_log_impl(&dword_1BA5AC000, v20, v21, v19, v23, 0x12u);
    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v16 = *kAVVCScope;
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v23 = 136315394;
    *&v23[4] = "AVVCPluginRemoteInputHost.mm";
    *&v23[12] = 1024;
    *&v23[14] = 179;
    v19 = "%25s:%-5d ERROR: Received didUNpublishDevice with 'nil' device. Not forwarding event to AVVC parent.";
    v20 = v16;
    v21 = OS_LOG_TYPE_ERROR;
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
}

- (void)inputPlugin:(id)plugin didPublishDevice:(id)device
{
  v34 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  deviceCopy = device;
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    deviceIdentifier = [deviceCopy deviceIdentifier];
    *v23 = 136316674;
    *&v23[4] = "AVVCPluginRemoteInputHost.mm";
    *&v23[12] = 1024;
    *&v23[14] = 163;
    v24 = 2048;
    selfCopy = self;
    v26 = 2048;
    v27 = WeakRetained;
    v28 = 2048;
    v29 = pluginCopy;
    v30 = 2048;
    v31 = deviceCopy;
    v32 = 2112;
    v33 = deviceIdentifier;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) controller(%p) plugin(%p), did publish device(%p) with id(%@)", v23, 0x44u);
  }

LABEL_8:
  if (deviceCopy)
  {
    v13 = objc_loadWeakRetained(&self->_mMotherController);
    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_mMotherController);
      objc_msgSend_impl(v14);
      if (*(*v23 + 520))
      {
        v15 = 0;
      }

      else
      {
        v17 = objc_loadWeakRetained(&self->_mMotherController);
        v15 = objc_opt_respondsToSelector();
      }

      if (*&v23[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v23[8]);
      }

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_mMotherController);
        [v16 handlePluginDidPublishDevice:pluginCopy withDevice:deviceCopy];
        goto LABEL_30;
      }
    }

    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *v23 = 136315394;
    *&v23[4] = "AVVCPluginRemoteInputHost.mm";
    *&v23[12] = 1024;
    *&v23[14] = 171;
    v19 = "%25s:%-5d WARNING: Not forwarding didPublish event to AVVC parent because it does not exist, or is deallocating.";
    v20 = v16;
    v21 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
    _os_log_impl(&dword_1BA5AC000, v20, v21, v19, v23, 0x12u);
    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v16 = *kAVVCScope;
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v23 = 136315394;
    *&v23[4] = "AVVCPluginRemoteInputHost.mm";
    *&v23[12] = 1024;
    *&v23[14] = 165;
    v19 = "%25s:%-5d ERROR: Received didPublishDevice with 'nil' device. Not forwarding event to AVVC parent.";
    v20 = v16;
    v21 = OS_LOG_TYPE_ERROR;
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
}

- (void)setParentVoiceController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    v9 = 136316162;
    v10 = "AVVCPluginRemoteInputHost.mm";
    v11 = 1024;
    v12 = 157;
    v13 = 2048;
    selfCopy = self;
    v15 = 2048;
    v16 = WeakRetained;
    v17 = 2048;
    v18 = controllerCopy;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) oldController(%p) newController(%p)", &v9, 0x30u);
  }

LABEL_8:
  objc_storeWeak(&self->_mMotherController, controllerCopy);
}

- (id)findFirstBluetoothDevice
{
  v42 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->mPlugins;
  v2 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v26 objects:v41 count:16];
  if (!v2)
  {
    goto LABEL_25;
  }

  v19 = *v27;
  v20 = v2;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v27 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v3 = *(*(&v26 + 1) + 8 * i);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      devices = [v3 devices];
      v5 = [devices countByEnumeratingWithState:&v22 objects:v40 count:16];
      if (!v5)
      {
LABEL_21:

        continue;
      }

      v6 = *v23;
LABEL_8:
      v7 = 0;
      while (1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        if (kAVVCScope)
        {
          v9 = *kAVVCScope;
          if (!v9)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
          v9 = v10;
        }

        v12 = v9;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          deviceIdentifier = [v8 deviceIdentifier];
          devices2 = [v3 devices];
          v15 = [devices2 count];
          *buf = 136316162;
          v31 = "AVVCPluginRemoteInputHost.mm";
          v32 = 1024;
          v33 = 144;
          v34 = 2048;
          v35 = v8;
          v36 = 2112;
          v37 = deviceIdentifier;
          v38 = 1024;
          v39 = v15;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device(%p). Identifier: %@ (num devices = %d)", buf, 0x2Cu);
        }

LABEL_18:
        if ([v8 deviceCategory] == 1919510644)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [devices countByEnumeratingWithState:&v22 objects:v40 count:16];
          if (v5)
          {
            goto LABEL_8;
          }

          goto LABEL_21;
        }
      }

      v16 = v8;

      if (v16)
      {
        goto LABEL_26;
      }
    }

    v20 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v26 objects:v41 count:16];
  }

  while (v20);
LABEL_25:
  v16 = 0;
LABEL_26:

  return v16;
}

- (id)findDeviceWithIdentifier:(id)identifier
{
  v47 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVVCPluginRemoteInputHost_findDeviceWithIdentifier___block_invoke;
  block[3] = &unk_1E7EF6628;
  block[4] = self;
  if ([AVVCPluginRemoteInputHost findDeviceWithIdentifier:]::once != -1)
  {
    dispatch_once(&[AVVCPluginRemoteInputHost findDeviceWithIdentifier:]::once, block);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->mPlugins;
  v5 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (!v5)
  {
LABEL_28:

    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
        v20 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "AVVCPluginRemoteInputHost.mm";
      v39 = 1024;
      v40 = 129;
      v41 = 2112;
      v42 = identifierCopy;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot find Remote Input device %@", buf, 0x1Cu);
    }

    v20 = 0;
    goto LABEL_41;
  }

  v26 = *v33;
LABEL_5:
  v6 = 0;
  v27 = v5;
  while (1)
  {
    if (*v33 != v26)
    {
      objc_enumerationMutation(obj);
    }

    v7 = *(*(&v32 + 1) + 8 * v6);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    devices = [v7 devices];
    v9 = [devices countByEnumeratingWithState:&v28 objects:v45 count:16];
    if (v9)
    {
      break;
    }

LABEL_24:

LABEL_26:
    if (++v6 == v27)
    {
      v5 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (!v5)
      {
        goto LABEL_28;
      }

      goto LABEL_5;
    }
  }

  v10 = *v29;
LABEL_10:
  v11 = 0;
  while (1)
  {
    if (*v29 != v10)
    {
      objc_enumerationMutation(devices);
    }

    v12 = *(*(&v28 + 1) + 8 * v11);
    if (v12)
    {
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
        v13 = v14;
      }

      v16 = v13;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        deviceIdentifier = [v12 deviceIdentifier];
        *buf = 136315906;
        v38 = "AVVCPluginRemoteInputHost.mm";
        v39 = 1024;
        v40 = 117;
        v41 = 2048;
        v42 = v12;
        v43 = 2112;
        v44 = deviceIdentifier;
        _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device(%p). Identifier: %@", buf, 0x26u);
      }
    }

LABEL_21:
    deviceIdentifier2 = [v12 deviceIdentifier];
    v19 = areDeviceUIDsSame(deviceIdentifier2, identifierCopy);

    if (v19)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [devices countByEnumeratingWithState:&v28 objects:v45 count:16];
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }
  }

  v20 = v12;

  if (!v12)
  {
    goto LABEL_26;
  }

  if (kAVVCScope)
  {
    v21 = *kAVVCScope;
    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v38 = "AVVCPluginRemoteInputHost.mm";
    v39 = 1024;
    v40 = 132;
    v41 = 2112;
    v42 = identifierCopy;
    _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d findDeviceWithIdentifier: found the device %@", buf, 0x1Cu);
  }

LABEL_41:

LABEL_42:

  return v20;
}

void __54__AVVCPluginRemoteInputHost_findDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(*(a1 + 32) + 8);
  v14 = [obj countByEnumeratingWithState:&v20 objects:v35 count:16];
  if (v14)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v1 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v2 = [v1 devices];
        v3 = [v2 countByEnumeratingWithState:&v16 objects:v34 count:16];
        if (v3)
        {
          v4 = *v17;
          do
          {
            for (j = 0; j != v3; ++j)
            {
              if (*v17 != v4)
              {
                objc_enumerationMutation(v2);
              }

              v6 = *(*(&v16 + 1) + 8 * j);
              if (kAVVCScope)
              {
                v7 = *kAVVCScope;
                if (!v7)
                {
                  continue;
                }
              }

              else
              {
                v8 = MEMORY[0x1E69E9C10];
                v9 = MEMORY[0x1E69E9C10];
                v7 = v8;
              }

              v10 = v7;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                v11 = [v6 deviceIdentifier];
                *buf = 136316162;
                v25 = "AVVCPluginRemoteInputHost.mm";
                v26 = 1024;
                v27 = 106;
                v28 = 2048;
                v29 = v1;
                v30 = 2048;
                v31 = v6;
                v32 = 2112;
                v33 = v11;
                _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d plugin(%p) - device(%p) - id: %@", buf, 0x30u);
              }
            }

            v3 = [v2 countByEnumeratingWithState:&v16 objects:v34 count:16];
          }

          while (v3);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v20 objects:v35 count:16];
    }

    while (v14);
  }
}

- (id)allBundles:(id *)bundles
{
  v41 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v22 = [defaultManager URLsForDirectory:5 inDomains:10];
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v22;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v29;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);

        v8 = [v7 URLByAppendingPathComponent:@"Audio/Plug-Ins/RemoteInput/"];
        v27 = 0;
        LODWORD(v7) = [v8 checkResourceIsReachableAndReturnError:&v27];
        v9 = v27;
        v10 = v9;
        if (!v7)
        {
          v4 = v9;
          goto LABEL_24;
        }

        if (kAVVCScope)
        {
          if (*(kAVVCScope + 8))
          {
            v11 = *kAVVCScope;
            if (v11)
            {
              v12 = v11;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                absoluteString = [v8 absoluteString];
                *buf = 136315650;
                v33 = "AVVCPluginRemoteInputHost.mm";
                v34 = 1024;
                v35 = 84;
                v36 = 2112;
                v37 = absoluteString;
                _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Searching plugin path %@", buf, 0x1Cu);
              }
            }
          }
        }

        v26 = v10;
        v14 = [defaultManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:4 error:&v26];
        v4 = v26;

        if (v4)
        {
          if (!kAVVCScope)
          {
            v16 = MEMORY[0x1E69E9C10];
            v17 = MEMORY[0x1E69E9C10];
            v15 = v16;
LABEL_20:
            v18 = v15;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              absoluteString2 = [v8 absoluteString];
              v20 = [v4 debugDescription];
              *buf = 136315906;
              v33 = "AVVCPluginRemoteInputHost.mm";
              v34 = 1024;
              v35 = 87;
              v36 = 2112;
              v37 = absoluteString2;
              v38 = 2112;
              v39 = v20;
              _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Error enumerating the remote input bundles at %@: %@", buf, 0x26u);
            }

            goto LABEL_23;
          }

          v15 = *kAVVCScope;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        else
        {
          [array addObjectsFromArray:v14];
        }

LABEL_23:

LABEL_24:
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (!v3)
      {

        break;
      }
    }
  }

  return array;
}

- (void)invalidatePlugins
{
  v26 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "AVVCPluginRemoteInputHost.mm";
    v22 = 1024;
    v23 = 60;
    v24 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d invalidatePlugins : invalidating all plugins *** %p", buf, 0x1Cu);
  }

LABEL_8:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->mPlugins;
  v6 = [(AVAudioRemoteInputPlugin *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v8 = *v16;
    v9 = MEMORY[0x1E69E9C10];
    *&v7 = 136315650;
    v14 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (kAVVCScope)
        {
          v12 = *kAVVCScope;
          if (!v12)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v13 = v9;
          v12 = v9;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v21 = "AVVCPluginRemoteInputHost.mm";
          v22 = 1024;
          v23 = 62;
          v24 = 2048;
          selfCopy = v11;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d -----> calling invalidate on plugin instance %p", buf, 0x1Cu);
        }

LABEL_20:
        [(AVVCPluginRemoteInputHost *)v11 invalidate:v14];
      }

      v6 = [(AVAudioRemoteInputPlugin *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v7 = "AVVCPluginRemoteInputHost.mm";
    v8 = 1024;
    v9 = 55;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d dealloc : releasing all plugins *** %p", buf, 0x1Cu);
  }

LABEL_8:
  v5.receiver = self;
  v5.super_class = AVVCPluginRemoteInputHost;
  [(AVVCPluginRemoteInputHost *)&v5 dealloc];
}

- (AVVCPluginRemoteInputHost)init
{
  v42 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AVVCPluginRemoteInputHost;
  result = [(AVVCPluginRemoteInputHost *)&v34 init];
  if (result)
  {
    v27 = result;
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_9:
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        mPlugins = v27->mPlugins;
        v27->mPlugins = v5;

        v33 = 0;
        v7 = [(AVVCPluginRemoteInputHost *)v27 allBundles:&v33];
        v26 = v33;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = v7;
        v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (!v8)
        {
          goto LABEL_39;
        }

        v9 = *v30;
        v10 = MEMORY[0x1E69E9C10];
        while (1)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v30 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v29 + 1) + 8 * i);
            if (kAVVCScope)
            {
              v13 = *kAVVCScope;
              if (!v13)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v14 = v10;
              v13 = v10;
            }

            v15 = v13;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              absoluteString = [v12 absoluteString];
              *buf = 136315650;
              v37 = "AVVCPluginRemoteInputHost.mm";
              v38 = 1024;
              v39 = 33;
              v40 = 2112;
              v41 = absoluteString;
              _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Plugin Bundle URL: %@", buf, 0x1Cu);
            }

LABEL_21:
            v17 = [MEMORY[0x1E696AAE8] bundleWithURL:v12];
            v18 = v17;
            if (v17)
            {
              principalClass = [v17 principalClass];
              if (![principalClass conformsToProtocol:&unk_1F386CCB8])
              {
                goto LABEL_37;
              }

              v20 = [[principalClass alloc] initWithPluginDelegate:v27];
              [(AVAudioRemoteInputPlugin *)v27->mPlugins addObject:v20];
              if (kAVVCScope)
              {
                v21 = *kAVVCScope;
                if (!v21)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v23 = v10;
                v21 = v10;
              }

              v24 = v21;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = NSStringFromClass(principalClass);
                *buf = 136315650;
                v37 = "AVVCPluginRemoteInputHost.mm";
                v38 = 1024;
                v39 = 42;
                v40 = 2112;
                v41 = v25;
                _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d initialized plugin class %@", buf, 0x1Cu);
              }

              goto LABEL_36;
            }

            if (!kAVVCScope)
            {
              v22 = v10;
              v20 = v10;
LABEL_30:
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v37 = "AVVCPluginRemoteInputHost.mm";
                v38 = 1024;
                v39 = 46;
                _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to create the plugin bundle", buf, 0x12u);
              }

LABEL_36:

              goto LABEL_37;
            }

            v20 = *kAVVCScope;
            if (v20)
            {
              goto LABEL_30;
            }

LABEL_37:
          }

          v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (!v8)
          {
LABEL_39:

            return v27;
          }
        }
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v37 = "AVVCPluginRemoteInputHost.mm";
      v38 = 1024;
      v39 = 25;
      v40 = 2048;
      v41 = v27;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d *** InitializePlugins *** %p ", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  return result;
}

@end