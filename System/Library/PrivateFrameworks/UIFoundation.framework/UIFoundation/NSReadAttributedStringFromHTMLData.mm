@interface NSReadAttributedStringFromHTMLData
@end

@implementation NSReadAttributedStringFromHTMLData

id ___NSReadAttributedStringFromHTMLData_block_invoke(uint64_t a1)
{
  _NSReadAttributedStringFromHTMLData_connectionQueue = dispatch_queue_create("_NSReadAttributedStringFromHTMLData", MEMORY[0x1E69E96A8]);
  v2 = [MEMORY[0x1E696AAB0] _allowedTokensClasses];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F01F0D98];
  [v3 setClasses:*(a1 + 32) forSelector:sel_renderHTML_options_extensionTokens_withReply_ argumentIndex:1 ofReply:0];
  [v3 setClasses:v2 forSelector:sel_renderHTML_options_extensionTokens_withReply_ argumentIndex:2 ofReply:0];
  [v3 setClasses:*(a1 + 32) forSelector:sel_renderHTML_options_extensionTokens_withReply_ argumentIndex:0 ofReply:1];
  result = v3;
  _NSReadAttributedStringFromHTMLData_connectionInterface = result;
  return result;
}

void *___NSReadAttributedStringFromHTMLData_block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void ___NSReadAttributedStringFromHTMLData_block_invoke_3(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  dispatch_semaphore_signal(*(a1 + 32));
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

uint64_t ___NSReadAttributedStringFromHTMLData_block_invoke_4(uint64_t a1)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v3 = [*(a1 + 32) objectForKeyedSubscript:NSBaseURLDocumentOption];
  if ([v3 isFileURL])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v34[0] = v2;
    v34[1] = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v34;
    v7 = 2;
  }

  else
  {
    v33 = v2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v33;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:v7];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
  [v9 setObject:v8 forKeyedSubscript:@"_WKReadAccessFileURLsOption"];
  v31 = 0u;
  v32 = 0u;
  v10 = *(a1 + 40);
  if (v10)
  {
    objc_msgSend_auditToken(v10);
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [v2 path];
  v13 = *MEMORY[0x1E69E9BA8];
  v29 = v31;
  v30 = v32;
  v14 = _extensionTokenForPath(&v29, v12, v13);
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = [v4 path];
  v29 = v31;
  v30 = v32;
  v16 = _extensionTokenForPath(&v29, v15, v13);
  if (v16)
  {
    [v11 addObject:v16];
  }

  v17 = NSTemporaryDirectory();
  v18 = *MEMORY[0x1E69E9BB0];
  v29 = v31;
  v30 = v32;
  v19 = _extensionTokenForPath(&v29, v17, v18);
  if (v19)
  {
    [v11 addObject:v19];
  }

  v20 = [v11 copy];
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v23 = *(a1 + 64);
  v27 = *(a1 + 80);
  v25[2] = ___NSReadAttributedStringFromHTMLData_block_invoke_5;
  v25[3] = &unk_1E7266AD8;
  v25[4] = *(a1 + 32);
  v28 = *(a1 + 96);
  v26 = v23;
  return [v21 renderHTML:v22 options:v9 extensionTokens:v20 withReply:v25];
}

void ___NSReadAttributedStringFromHTMLData_block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  if (![a2 objectForKeyedSubscript:@"DocumentType"])
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"DocumentType"];
    if (v6)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = @"NSHTML";
    }

    [v9 setObject:v11 forKeyedSubscript:@"DocumentType"];
    v6 = [v10 copy];
  }

  *(*(*(a1 + 48) + 8) + 40) = [a3 mutableCopy];
  *(*(*(a1 + 56) + 8) + 40) = [v6 copy];
  *(*(*(a1 + 64) + 8) + 40) = [a4 copy];
  if ((*(a1 + 72) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    v12 = *(a1 + 40);

    dispatch_release(v12);
  }
}

@end