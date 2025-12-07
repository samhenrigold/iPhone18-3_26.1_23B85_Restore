@interface GCDeviceDBBundle
@end

@implementation GCDeviceDBBundle

void __42___GCDeviceDBBundle_initWithBundle_error___block_invoke(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = a1 + 56;
  v11 = *(*(a1 + 56) + 8);
  obj = *(v11 + 40);
  v12 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    v13 = [_GCDeviceDBBundleDevice alloc];
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 56) + 8);
    v32 = 0;
    v16 = [(_GCDeviceDBBundleDevice *)v13 initWithBundle:v14 dictionary:v12 error:&v32];
    objc_storeStrong((v15 + 40), v32);
    if (v16)
    {
      [*(a1 + 48) addObject:v16];
    }

    else
    {
      v25 = [*(*(*v10 + 8) + 40) code];
      v26 = _gc_log_devicedb(v25);
      v27 = v26;
      if (v25 == 5)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 40);
          v29 = [*(*(*(a1 + 56) + 8) + 40) localizedFailureReason];
          *buf = 138413058;
          v35 = v28;
          v36 = 2114;
          v37 = @"Devices";
          v38 = 2048;
          v39 = a3;
          v40 = 2114;
          v41 = v29;
          _os_log_debug_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_DEBUG, "📦 Skipping loading device definition at '%@' > '%{public}@' > [%zd]: %{public}@.", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        __42___GCDeviceDBBundle_initWithBundle_error___block_invoke_cold_1((a1 + 32), a1 + 56, v27);
      }

      v30 = *(*v10 + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = 0;
    }
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v43[0] = *MEMORY[0x1E696A588];
    v18 = [*(*(*v10 + 8) + 40) localizedFailureReason];
    v43[1] = 0x1F4E1C010;
    v44[0] = v18;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v42 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v44[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v22 = [(NSError *)v17 gc_deviceDBError:v21 userInfo:?];
    v23 = *(*v10 + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    *a4 = 1;
  }
}

void __42___GCDeviceDBBundle_initWithBundle_error___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*(*a2 + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_fault_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_FAULT, "📦 Error loading device definition in bundle %@: %{public}@", &v5, 0x16u);
}

@end