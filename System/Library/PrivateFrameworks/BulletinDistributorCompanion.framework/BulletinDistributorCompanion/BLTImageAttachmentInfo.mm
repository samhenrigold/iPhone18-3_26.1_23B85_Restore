@interface BLTImageAttachmentInfo
+ (id)imageAttachmentInfoForImageURL:(id)l;
- (CGSize)size;
@end

@implementation BLTImageAttachmentInfo

+ (id)imageAttachmentInfoForImageURL:(id)l
{
  v18[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = objc_opt_new();
  identifier = [*MEMORY[0x277CE1E10] identifier];
  [v4 setContentType:identifier];

  v6 = CGImageSourceCreateWithURL(lCopy, 0);
  if (v6)
  {
    v7 = v6;
    v17 = *MEMORY[0x277CD3618];
    v18[0] = MEMORY[0x277CBEC28];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, v8);
    if (v9)
    {
      v10 = v9;
      v11 = CFDictionaryGetValue(v9, *MEMORY[0x277CD3368]);
      if (([v11 BOOLValue]& 1) == 0)
      {
        identifier2 = [*MEMORY[0x277CE1DC0] identifier];
        [v4 setContentType:identifier2];
      }

      v13 = CFDictionaryGetValue(v10, *MEMORY[0x277CD3448]);
      v14 = CFDictionaryGetValue(v10, *MEMORY[0x277CD3450]);
      [v4 setSize:{objc_msgSend(v14, "intValue"), objc_msgSend(v13, "intValue")}];
      CFRelease(v10);
      CFRelease(v7);
      v15 = v4;
    }

    else
    {
      v11 = blt_ids_log(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(BLTImageAttachmentInfo *)lCopy imageAttachmentInfoForImageURL:v11];
      }

      v15 = 0;
    }
  }

  else
  {
    v8 = blt_ids_log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BLTImageAttachmentInfo *)lCopy imageAttachmentInfoForImageURL:v8];
    }

    v15 = 0;
  }

  return v15;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)imageAttachmentInfoForImageURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "BLTImageAttachmentInfo CGImageSourceCopyPropertiesAtIndex failed for: %@", &v2, 0xCu);
}

+ (void)imageAttachmentInfoForImageURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "BLTImageAttachmentInfo CGImageSourceCreateWithURL failed for: %@", &v2, 0xCu);
}

@end