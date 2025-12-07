@interface ANSTUtility
+ (int)createPixelBufferPoolWithCapacity:(unint64_t)capacity pixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height handle:(__CVPixelBufferPool *)handle;
+ (int)createPixelBufferWithPixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height handle:(__CVBuffer *)handle;
@end

@implementation ANSTUtility

+ (int)createPixelBufferWithPixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height handle:(__CVBuffer *)handle
{
  v9 = *&format;
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277CC4EC8];
  v10 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, width);
  v19[0] = v10;
  v18[1] = *MEMORY[0x277CC4DD8];
  v12 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v11, height);
  v19[1] = v12;
  v18[2] = *MEMORY[0x277CC4E30];
  v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, v9);
  v18[3] = *MEMORY[0x277CC4DE8];
  v19[2] = v14;
  v19[3] = MEMORY[0x277CBEC10];
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v19, v18, 4);

  LODWORD(handle) = CVPixelBufferCreate(0, width, height, v9, v16, handle);
  return handle;
}

+ (int)createPixelBufferPoolWithCapacity:(unint64_t)capacity pixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height handle:(__CVPixelBufferPool *)handle
{
  v10 = *&format;
  v26[1] = *MEMORY[0x277D85DE8];
  v25 = *MEMORY[0x277CC4E50];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, capacity);
  v26[0] = v11;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v26, &v25, 1);

  v23[0] = *MEMORY[0x277CC4EC8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v14, width);
  v24[0] = v15;
  v23[1] = *MEMORY[0x277CC4DD8];
  v17 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, height);
  v24[1] = v17;
  v23[2] = *MEMORY[0x277CC4E30];
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v10);
  v23[3] = *MEMORY[0x277CC4DE8];
  v24[2] = v19;
  v24[3] = MEMORY[0x277CBEC10];
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v24, v23, 4);

  LODWORD(handle) = CVPixelBufferPoolCreate(0, v13, v21, handle);
  return handle;
}

@end