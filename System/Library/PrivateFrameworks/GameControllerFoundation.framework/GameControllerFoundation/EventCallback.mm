@interface EventCallback
@end

@implementation EventCallback

void ____EventCallback_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ____EventCallback_block_invoke_167;
  v12[3] = &unk_1E8414450;
  v2 = *(a1 + 32);
  v12[4] = v2;
  v12[5] = &v14;
  v13 = *(a1 + 40);
  v3 = *(v2 + 144);
  if (v3)
  {
    if (v3(*(v2 + 152), *(v2 + 160), *(a1 + 56)))
    {
      goto LABEL_10;
    }

    v2 = *(a1 + 32);
  }

  os_unfair_lock_lock((v2 + 120));
  v4 = *(*(a1 + 32) + 124);
  v5 = (&v12[-1] - ((8 * v4 + 15) & 0xFFFFFFFF0));
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  if (v7)
  {
    v8 = (&v12[-1] - ((8 * v4 + 15) & 0xFFFFFFFF0));
    do
    {
      *v8++ = v7;
      v7 = v7[4];
    }

    while (v7);
    v6 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v6 + 120));
  if (v4)
  {
    do
    {
      v9 = *v5;
      [(__GCHIDSystemObservation *)*v5 DO_OBSERVER_CALLOUT_FOR_EVENT:v12 FROM:?];

      ++v5;
      --v4;
    }

    while (v4);
  }

LABEL_10:
  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*(a1 + 56));
  _Block_object_dispose(&v14, 8);
}

uint64_t ____EventCallback_block_invoke_167(uint64_t a1)
{
  v2 = a1 + 40;
  result = *(*(*(a1 + 40) + 8) + 40);
  if (!result)
  {
    result = *(a1 + 48);
    if (result)
    {
      v4 = *(*(a1 + 32) + 8);
      if (v4)
      {
        v5 = **(v4 + 80);
      }

      else
      {
        v5 = MEMORY[0x1E696CD28];
      }

      v6 = v5();
      *(*(*v2 + 8) + 40) = [objc_getProperty(*(a1 + 32) services];
      result = *(*(*v2 + 8) + 40);
      if (!result)
      {
        ____EventCallback_block_invoke_167_cold_1();
        return v7;
      }
    }
  }

  return result;
}

GCHIDServiceInfo *____EventCallback_block_invoke_167_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v4 = v3;
  v5 = [GCHIDServiceInfo alloc];
  v6 = *(*v2 + 8);
  if (v6)
  {
    v7 = *(v6 + 80);
  }

  else
  {
    v7 = 0;
  }

  result = [(GCHIDServiceInfo *)v5 initWithService:*(v4 + 56) queue:*(*v2 + 16) functions:v7];
  *(*(*v1 + 8) + 40) = result;
  *v0 = *(*(*v1 + 8) + 40);
  return result;
}

@end