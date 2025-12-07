@interface GEORequestResponseLogRequest
@end

@implementation GEORequestResponseLogRequest

void ___GEORequestResponseLogRequest_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 length];
    v4 = *(a1 + 32);
    if (v3 > 0x7000)
    {
      if ([*(a1 + 32) length] >> 12 > 0x22)
      {
        v30 = *(a1 + 40);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        v31 = *(a1 + 48);
        v32 = *(a1 + 32);
        v7 = v30;
        *buf = 138412802;
        v41 = v31;
        v42 = 1024;
        *v43 = [v32 length];
        *&v43[4] = 1024;
        *&v43[6] = 143360;
        _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_DEBUG, "Request with task %@ of %u bytes was larger than max size %u, not logging", buf, 0x18u);
      }

      else
      {
        v15 = *(a1 + 32);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = protobufDataParts(v15, v17);

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v7 = v18;
        v19 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v36;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v36 != v21)
              {
                objc_enumerationMutation(v7);
              }

              v23 = *(a1 + 40);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                v24 = *(*(&v35 + 1) + 8 * i);
                v25 = *(a1 + 48);
                v26 = *(a1 + 56);
                v27 = v23;
                v28 = [v24 length];
                v29 = [v24 bytes];
                *buf = 138413059;
                v41 = v25;
                v42 = 2113;
                *v43 = v26;
                *&v43[8] = 1040;
                v44 = v28;
                v45 = 2097;
                v46 = v29;
                _os_log_impl(&dword_18660C000, v27, OS_LOG_TYPE_DEBUG, "Request with task %@, URL %{private}@ : %{private,geo:requestresponseV3/pbcodable}.*P", buf, 0x26u);
              }
            }

            v20 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v20);
        }
      }
    }

    else
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = protobufDataWithHeader(v4, v6);

      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = v8;
        *buf = 138413059;
        v41 = v9;
        v42 = 2113;
        *v43 = v10;
        *&v43[8] = 1040;
        v44 = [v7 length];
        v45 = 2097;
        v46 = [v7 bytes];
        _os_log_impl(&dword_18660C000, v11, OS_LOG_TYPE_DEBUG, "Request with task %@, URL %{private}@ : %{private,geo:requestresponseV3/pbcodable}.*P", buf, 0x26u);
      }
    }
  }

  else
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 138412547;
      v41 = v13;
      v42 = 2113;
      *v43 = v14;
      _os_log_impl(&dword_18660C000, v12, OS_LOG_TYPE_DEBUG, "Request with task %@, URL %{private}@ : nil", buf, 0x16u);
    }
  }

LABEL_21:
  v33 = rrPersister(*(a1 + 48));
  v34 = v33;
  if (v33)
  {
    [v33 persistRequestTask:*(a1 + 48) url:*(a1 + 56) request:*(a1 + 32)];
  }
}

@end