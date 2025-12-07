@interface SYDeviceMonitor
@end

@implementation SYDeviceMonitor

void __43___SYDeviceMonitor_currentTargetableDevice__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isTargetable])
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __34___SYDeviceMonitor_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedInstance___singleton;
  sharedInstance___singleton = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __38___SYDeviceMonitor__rebuildDeviceList__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) removeAllObjects];
  objc_autoreleasePoolPop(v2);
  v3 = [MEMORY[0x1E69B36C0] sharedInstance];
  v4 = [v3 getAllDevices];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [SYDevice alloc];
        v12 = [(SYDevice *)v11 initWithNRDevice:v10, v13];
        [*(*(a1 + 32) + 8) addObject:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void __35___SYDeviceMonitor_removeNRDevice___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35___SYDeviceMonitor_removeNRDevice___block_invoke_2;
  v12[3] = &unk_1E86CB0B8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v3 = [v2 objectsPassingTest:v12];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 32) + 8) removeObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v15 count:16];
    }

    while (v5);
  }
}

uint64_t __35___SYDeviceMonitor_removeNRDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 pairingID];
    v4 = [v2 isEqual:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    v3 = [a2 nrDevice];
    v4 = v5 == v3;
  }

  return v4;
}

void __38___SYDeviceMonitor_deviceForNRDevice___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 nrDevice];
        v9 = [v8 isEqual:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __39___SYDeviceMonitor_deviceForPairingID___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 pairingID];
        v9 = [v8 isEqual:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __30___SYDeviceMonitor_allDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end