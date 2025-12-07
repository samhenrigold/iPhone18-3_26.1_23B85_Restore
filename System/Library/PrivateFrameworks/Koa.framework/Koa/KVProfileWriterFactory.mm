@interface KVProfileWriterFactory
- (id)profileWriterForFormat:(unsigned __int8)format outputStream:(id)stream error:(id *)error;
@end

@implementation KVProfileWriterFactory

- (id)profileWriterForFormat:(unsigned __int8)format outputStream:(id)stream error:(id *)error
{
  formatCopy = format;
  v35[1] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if ((formatCopy - 1) >= 3)
  {
    v19 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v20 = MEMORY[0x277CCACA8];
    v21 = sub_2559B19E4(formatCopy, v7, v8, v9, v10, v11);
    v26 = objc_msgSend_stringWithFormat_(v20, v22, @"Unsupported profile format: %@", v23, v24, v25, v21, v34);
    v35[0] = v26;
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v35, &v34, 1, v28);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v30, @"com.apple.koa.profile", 3, v29, v31);
    if (error && v32)
    {
      v32 = v32;
      *error = v32;
    }

    v18 = 0;
  }

  else
  {
    v13 = objc_alloc(*off_279804158[(formatCopy - 1)]);
    v18 = objc_msgSend_initWithOutputStream_(v13, v14, streamCopy, v15, v16, v17);
  }

  return v18;
}

@end