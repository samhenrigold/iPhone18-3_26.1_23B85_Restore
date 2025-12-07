@interface GCDeviceDBBundleDevice
@end

@implementation GCDeviceDBBundleDevice

void __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v30 = 0;
    v12 = GCHIDDeviceAttributesPredicateFromMatchingDictionary(v11, &v30);
    v13 = v30;
    v14 = v13;
    if (v12)
    {
      [*(a1 + 32) addObject:v12];
    }

    else
    {
      v23 = MEMORY[0x1E696ABC0];
      v33[0] = *MEMORY[0x1E696A588];
      v33[1] = 0x1F4E1C010;
      v34[0] = v13;
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v32 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v34[1] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v27 = [(NSError *)v23 gc_deviceDBError:v26 userInfo:?];
      v28 = *(*(a1 + 40) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      *a4 = 1;
    }
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v36[0] = *MEMORY[0x1E696A588];
    v16 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
    v36[1] = 0x1F4E1C010;
    v37[0] = v16;
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v35 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v37[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v20 = [(NSError *)v15 gc_deviceDBError:v19 userInfo:?];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    *a4 = 1;
  }
}

void __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke_2(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 32) addObject:v11];
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v22[0] = *MEMORY[0x1E696A588];
    v13 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
    v22[1] = 0x1F4E1C010;
    v23[0] = v13;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v21 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v23[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [(NSError *)v12 gc_deviceDBError:v16 userInfo:?];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }
}

@end