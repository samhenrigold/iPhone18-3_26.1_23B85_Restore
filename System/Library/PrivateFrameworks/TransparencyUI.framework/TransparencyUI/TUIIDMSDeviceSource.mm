@interface TUIIDMSDeviceSource
- (TUIIDMSDeviceSource)initWithIdmsDeviceProtocol:(id)protocol;
- (id)mapDeviceWithMissing:(id)missing aaDevices:(id)devices;
@end

@implementation TUIIDMSDeviceSource

- (TUIIDMSDeviceSource)initWithIdmsDeviceProtocol:(id)protocol
{
  protocolCopy = protocol;
  v10.receiver = self;
  v10.super_class = TUIIDMSDeviceSource;
  v5 = [(TUIIDMSDeviceSource *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (protocolCopy)
    {
      [(TUIIDMSDeviceSource *)v5 setD:protocolCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277D73598]);
      [(TUIIDMSDeviceSource *)v6 setD:v7];
    }

    v8 = v6;
  }

  return v6;
}

- (id)mapDeviceWithMissing:(id)missing aaDevices:(id)devices
{
  v70 = *MEMORY[0x277D85DE8];
  missingCopy = missing;
  devicesCopy = devices;
  idmsDevices = [(TUIIDMSDeviceSource *)self idmsDevices];

  if (!idmsDevices)
  {
    v49 = devicesCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(TUIIDMSDeviceSource *)self setIdmsDevices:dictionary];

    v10 = [(TUIIDMSDeviceSource *)self d];
    v66 = 0;
    v11 = [v10 transparencyIDMSDeviceList:&v66];
    v12 = v66;

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v63;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v62 + 1) + 8 * i);
          pushToken = [v18 pushToken];

          if (pushToken)
          {
            idmsDevices2 = [(TUIIDMSDeviceSource *)self idmsDevices];
            pushToken2 = [v18 pushToken];
            [idmsDevices2 setObject:v18 forKeyedSubscript:pushToken2];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v15);
    }

    devicesCopy = v49;
  }

  idmsDevices3 = [(TUIIDMSDeviceSource *)self idmsDevices];
  v23 = [idmsDevices3 objectForKeyedSubscript:missingCopy];

  if (v23)
  {
    array = [MEMORY[0x277CBEB18] array];
    idmsDevices4 = [(TUIIDMSDeviceSource *)self idmsDevices];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __54__TUIIDMSDeviceSource_mapDeviceWithMissing_aaDevices___block_invoke_33;
    v59[3] = &unk_279DDA998;
    v60 = v23;
    v26 = array;
    v61 = v26;
    [idmsDevices4 enumerateKeysAndObjectsUsingBlock:v59];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v27 = v26;
    v45 = [v27 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v45)
    {
      v28 = *v56;
      v48 = missingCopy;
      v50 = devicesCopy;
      v46 = v27;
      v47 = v23;
      v44 = *v56;
      do
      {
        v29 = 0;
        do
        {
          if (*v56 != v28)
          {
            objc_enumerationMutation(v27);
          }

          v30 = *(*(&v55 + 1) + 8 * v29);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v31 = devicesCopy;
          v32 = [v31 countByEnumeratingWithState:&v51 objects:v67 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v52;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v52 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v51 + 1) + 8 * j);
                pushToken3 = [v36 pushToken];

                if (pushToken3)
                {
                  pushToken4 = [v30 pushToken];
                  pushToken5 = [v36 pushToken];
                  v40 = [pushToken4 isEqual:pushToken5];

                  if (v40)
                  {
                    v41 = v36;

                    missingCopy = v48;
                    devicesCopy = v50;
                    v27 = v46;
                    v23 = v47;
                    goto LABEL_37;
                  }
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v51 objects:v67 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          ++v29;
          v27 = v46;
          missingCopy = v48;
          devicesCopy = v50;
          v23 = v47;
          v28 = v44;
        }

        while (v29 != v45);
        v41 = 0;
        v45 = [v46 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v45);
    }

    else
    {
      v41 = 0;
    }

LABEL_37:
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK != -1)
    {
      [TUIIDMSDeviceSource mapDeviceWithMissing:aaDevices:];
    }

    v42 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      [(TUIIDMSDeviceSource *)missingCopy mapDeviceWithMissing:v42 aaDevices:?];
    }

    v41 = 0;
  }

  return v41;
}

uint64_t __54__TUIIDMSDeviceSource_mapDeviceWithMissing_aaDevices___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __54__TUIIDMSDeviceSource_mapDeviceWithMissing_aaDevices___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 serial];
  v5 = [*(a1 + 32) serial];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (void)mapDeviceWithMissing:(os_log_t)log aaDevices:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[TUIIDMSDeviceSource mapDeviceWithMissing:aaDevices:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_26F50B000, log, OS_LOG_TYPE_ERROR, "%s device unknown for IDMS list too: %@ on %{public}@", &v3, 0x20u);
}

@end