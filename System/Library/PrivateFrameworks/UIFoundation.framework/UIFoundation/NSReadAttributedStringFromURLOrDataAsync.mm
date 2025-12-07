@interface NSReadAttributedStringFromURLOrDataAsync
@end

@implementation NSReadAttributedStringFromURLOrDataAsync

id ___NSReadAttributedStringFromURLOrDataAsync_block_invoke(uint64_t a1)
{
  _NSReadAttributedStringFromURLOrDataAsync_connectionQueue = dispatch_queue_create("_NSReadAttributedStringFromURLOrDataAsync", MEMORY[0x1E69E96A8]);
  v2 = [MEMORY[0x1E696AAB0] _allowedTokensClasses];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F01F0D98];
  [v3 setClasses:*(a1 + 32) forSelector:sel_readFromData_orFileURL_options_extensionTokens_withReply_ argumentIndex:2 ofReply:0];
  [v3 setClasses:v2 forSelector:sel_readFromData_orFileURL_options_extensionTokens_withReply_ argumentIndex:3 ofReply:0];
  [v3 setClasses:*(a1 + 32) forSelector:sel_readFromData_orFileURL_options_extensionTokens_withReply_ argumentIndex:1 ofReply:1];
  result = v3;
  _NSReadAttributedStringFromURLOrDataAsync_connectionInterface = result;
  return result;
}

uint64_t ___NSReadAttributedStringFromURLOrDataAsync_block_invoke_3(uint64_t a1)
{
  v33[2] = *MEMORY[0x1E69E9840];
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
    v33[0] = v2;
    v33[1] = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v33;
    v7 = 2;
  }

  else
  {
    v32 = v2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v32;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:v7];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
  [v9 setObject:v8 forKeyedSubscript:@"_WKReadAccessFileURLsOption"];
  v30 = 0u;
  v31 = 0u;
  v10 = *(a1 + 40);
  if (v10)
  {
    objc_msgSend_auditToken(v10);
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [*(a1 + 48) path];
  v13 = *MEMORY[0x1E69E9BA8];
  v28 = v30;
  v29 = v31;
  v14 = _extensionTokenForPath(&v28, v12, v13);
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = [v2 path];
  v28 = v30;
  v29 = v31;
  v16 = _extensionTokenForPath(&v28, v15, v13);
  if (v16)
  {
    [v11 addObject:v16];
  }

  v17 = [v4 path];
  v28 = v30;
  v29 = v31;
  v18 = _extensionTokenForPath(&v28, v17, v13);
  if (v18)
  {
    [v11 addObject:v18];
  }

  v19 = NSTemporaryDirectory();
  v20 = *MEMORY[0x1E69E9BB0];
  v28 = v30;
  v29 = v31;
  v21 = _extensionTokenForPath(&v28, v19, v20);
  if (v21)
  {
    [v11 addObject:v21];
  }

  v22 = [v11 copy];
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 48);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___NSReadAttributedStringFromURLOrDataAsync_block_invoke_4;
  v27[3] = &unk_1E72669E8;
  v27[4] = *(a1 + 72);
  return [v23 readFromData:v24 orFileURL:v25 options:v9 extensionTokens:v22 withReply:v27];
}

@end