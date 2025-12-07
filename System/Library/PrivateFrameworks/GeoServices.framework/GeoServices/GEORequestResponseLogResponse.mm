@interface GEORequestResponseLogResponse
@end

@implementation GEORequestResponseLogResponse

void ___GEORequestResponseLogResponse_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 length];
    v4 = *(a1 + 32);
    if (v3 > 0x7000)
    {
      if ([*(a1 + 32) length] >> 12 > 0x22)
      {
        v27 = *(a1 + 40);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        v28 = *(a1 + 48);
        v29 = *(a1 + 32);
        v7 = v27;
        *buf = 138412802;
        v38 = v28;
        v39 = 1024;
        v40 = [v29 length];
        v41 = 1024;
        LODWORD(v42) = 143360;
        _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_DEBUG, "Response for task %@ of %u bytes was larger than max size %u, not logging", buf, 0x18u);
      }

      else
      {
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = protobufDataParts(v13, v15);

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v7 = v16;
        v17 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v7);
              }

              v21 = *(a1 + 40);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = *(*(&v32 + 1) + 8 * i);
                v23 = *(a1 + 48);
                v24 = v21;
                v25 = [v22 length];
                v26 = [v22 bytes];
                *buf = 138412803;
                v38 = v23;
                v39 = 1040;
                v40 = v25;
                v41 = 2097;
                v42 = v26;
                _os_log_impl(&dword_18660C000, v24, OS_LOG_TYPE_DEBUG, "Response for task %@ : %{private,geo:requestresponseV3/pbcodable}.*P", buf, 0x1Cu);
              }
            }

            v18 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v18);
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
        v10 = v8;
        *buf = 138412803;
        v38 = v9;
        v39 = 1040;
        v40 = [v7 length];
        v41 = 2097;
        v42 = [v7 bytes];
        _os_log_impl(&dword_18660C000, v10, OS_LOG_TYPE_DEBUG, "Response for task %@ : %{private,geo:requestresponseV3/pbcodable}.*P", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 48);
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_18660C000, v11, OS_LOG_TYPE_DEBUG, "Response for task %@ : nil", buf, 0xCu);
    }
  }

LABEL_21:
  v30 = rrPersister(*(a1 + 48));
  v31 = v30;
  if (v30)
  {
    [v30 persistResponseTask:*(a1 + 48) response:*(a1 + 32)];
  }
}

@end