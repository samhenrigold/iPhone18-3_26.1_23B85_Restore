@interface TSURLRequestFactory
+ (id)_jsonBodyWithPostdata:(id)postdata;
+ (id)_urlEncodedBodyWithCarrierPostRawData:(id)data;
+ (id)_urlEncodedBodyWithPostdata:(id)postdata;
+ (id)requestWithType:(unint64_t)type URL:(id)l postdata:(id)postdata;
@end

@implementation TSURLRequestFactory

+ (id)requestWithType:(unint64_t)type URL:(id)l postdata:(id)postdata
{
  v53 = *MEMORY[0x277D85DE8];
  lCopy = l;
  postdataCopy = postdata;
  v9 = postdataCopy;
  if (lCopy && ([lCopy absoluteString], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
  {
    if (v9)
    {
      allKeys = [v9 allKeys];
      v13 = [allKeys count];

      if (v13)
      {
        if (type > 2)
        {
          if (type == 3)
          {
            postdataCopy = [TSURLRequestFactory _urlEncodedBodyWithCarrierPostRawData:v9];
LABEL_26:
            v24 = postdataCopy;
            v25 = @"application/x-www-form-urlencoded";
            if (postdataCopy)
            {
              goto LABEL_27;
            }

            goto LABEL_34;
          }

          if (type == 5)
          {
LABEL_20:
            postdataCopy = [TSURLRequestFactory _jsonBodyWithPostdata:v9];
            v24 = postdataCopy;
            v25 = @"application/json";
            if (!postdataCopy)
            {
              goto LABEL_34;
            }

LABEL_27:
            v22 = [MEMORY[0x277CCAB70] requestWithURL:lCopy];
            [v22 _setNonAppInitiated:1];
            [v22 setValue:v25 forHTTPHeaderField:@"content-type"];
            [v22 setHTTPMethod:@"POST"];
            [v22 setHTTPBody:v24];
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[NSObject length](v24, "length")];
            [v22 setValue:v34 forHTTPHeaderField:@"content-length"];

            v36 = _TSLogDomain(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [TSURLRequestFactory requestWithType:lCopy URL:v22 postdata:?];
            }

            v38 = _TSLogDomain(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              [TSURLRequestFactory requestWithType:v25 URL:v22 postdata:?];
            }

            v40 = _TSLogDomain(v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              +[TSURLRequestFactory requestWithType:URL:postdata:];
            }

            goto LABEL_37;
          }

          if (type != 6)
          {
LABEL_34:
            v24 = _TSLogDomain(postdataCopy);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [(TSURLRequestFactory *)v24 requestWithType:v41 URL:v42 postdata:v43, v44, v45, v46, v47];
            }

            v22 = 0;
LABEL_37:

            goto LABEL_38;
          }
        }

        else
        {
          if (!type)
          {
            v26 = _TSLogDomain(postdataCopy);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(TSURLRequestFactory *)v26 requestWithType:v27 URL:v28 postdata:v29, v30, v31, v32, v33];
            }

            goto LABEL_34;
          }

          if (type != 1)
          {
            if (type != 2)
            {
              goto LABEL_34;
            }

            goto LABEL_20;
          }
        }

        postdataCopy = [TSURLRequestFactory _urlEncodedBodyWithPostdata:v9];
        goto LABEL_26;
      }
    }

    v23 = _TSLogDomain(postdataCopy);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v50 = lCopy;
      v51 = 2080;
      v52 = "+[TSURLRequestFactory requestWithType:URL:postdata:]";
      _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_INFO, "[I] No postdata for: %@ @%s", buf, 0x16u);
    }

    v22 = [MEMORY[0x277CCAB70] requestWithURL:lCopy];
    [v22 _setNonAppInitiated:1];
  }

  else
  {
    v14 = _TSLogDomain(postdataCopy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(TSURLRequestFactory *)v14 requestWithType:v15 URL:v16 postdata:v17, v18, v19, v20, v21];
    }

    v22 = 0;
  }

LABEL_38:

  return v22;
}

+ (id)_urlEncodedBodyWithPostdata:(id)postdata
{
  v3 = MEMORY[0x277CBEB18];
  postdataCopy = postdata;
  array = [v3 array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__TSURLRequestFactory__urlEncodedBodyWithPostdata___block_invoke;
  v11[3] = &unk_279B451A8;
  v12 = array;
  v6 = array;
  [postdataCopy enumerateKeysAndObjectsUsingBlock:v11];

  v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v7 setQueryItems:v6];
  query = [v7 query];
  v9 = [query dataUsingEncoding:1];

  return v9;
}

void __51__TSURLRequestFactory__urlEncodedBodyWithPostdata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAD18];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithName:v7 value:v6];

  [*(a1 + 32) addObject:v8];
}

+ (id)_urlEncodedBodyWithCarrierPostRawData:(id)data
{
  v4 = *MEMORY[0x277CF96A0];
  v5 = [data objectForKeyedSubscript:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v7 = _TSLogDomain(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TSURLRequestFactory *)v5 _urlEncodedBodyWithCarrierPostRawData:v4, v7];
    }
  }

  v8 = [v5 dataUsingEncoding:4];

  return v8;
}

+ (id)_jsonBodyWithPostdata:(id)postdata
{
  v8 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:postdata options:0 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v4)
  {
    v6 = _TSLogDomain(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[TSURLRequestFactory _jsonBodyWithPostdata:];
    }
  }

  return v3;
}

+ (void)requestWithType:(uint64_t)a3 URL:(uint64_t)a4 postdata:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[TSURLRequestFactory requestWithType:URL:postdata:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Unknown request @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)requestWithType:(uint64_t)a1 URL:(void *)a2 postdata:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 allHTTPHeaderFields];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_262AA8000, v3, v4, "[Db] http request %@ headers: %@ @%s", v5, v6, v7, v8);
}

+ (void)requestWithType:(uint64_t)a1 URL:(void *)a2 postdata:.cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 HTTPBody];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_262AA8000, v3, v4, "[Db] contentType %@, body: %@ @%s", v5, v6, v7, v8);
}

+ (void)requestWithType:URL:postdata:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "+[TSURLRequestFactory requestWithType:URL:postdata:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] postdata: %@ @%s", v1, 0x16u);
}

+ (void)requestWithType:(uint64_t)a3 URL:(uint64_t)a4 postdata:(uint64_t)a5 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[TSURLRequestFactory requestWithType:URL:postdata:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid request body @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)requestWithType:(uint64_t)a3 URL:(uint64_t)a4 postdata:(uint64_t)a5 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[TSURLRequestFactory requestWithType:URL:postdata:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Empty URL @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)_urlEncodedBodyWithCarrierPostRawData:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 138412802;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  v10 = 2080;
  v11 = "+[TSURLRequestFactory _urlEncodedBodyWithCarrierPostRawData:]";
  v5 = v7;
  _os_log_error_impl(&dword_262AA8000, a3, OS_LOG_TYPE_ERROR, "[E]value type (%@) is unexpected for key (%@) @%s", &v6, 0x20u);
}

+ (void)_jsonBodyWithPostdata:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "+[TSURLRequestFactory _jsonBodyWithPostdata:]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed to create request body: %@ @%s", v1, 0x16u);
}

@end