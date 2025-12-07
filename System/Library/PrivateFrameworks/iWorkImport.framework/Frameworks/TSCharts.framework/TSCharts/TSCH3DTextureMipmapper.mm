@interface TSCH3DTextureMipmapper
+ (BOOL)p_generateMipmapsBuffer:(id)buffer level0Buffer:(id)level0Buffer skipFirstLevel:(BOOL)level;
+ (DataBuffer2DDimension)p_mapDimensionWithBuffer:(SEL)buffer skipFirstLevel:(id)level;
+ (id)mipmapsWithBuffer:(id)buffer skipFirstLevel:(BOOL)level;
@end

@implementation TSCH3DTextureMipmapper

+ (id)mipmapsWithBuffer:(id)buffer skipFirstLevel:(BOOL)level
{
  levelCopy = level;
  bufferCopy = buffer;
  objc_msgSend_p_mapDimensionWithBuffer_skipFirstLevel_(self, v7, v8, v9);
  v10 = objc_opt_class();
  v15 = objc_msgSend_bufferWithCapacityDimension_(v10, v11, v12, v13, v14, v26);
  objc_msgSend_fillCapacity(v15, v16, v17, v18, v19);
  if (objc_msgSend_p_generateMipmapsBuffer_level0Buffer_skipFirstLevel_(self, v20, v21, v22, v23, v15, bufferCopy, levelCopy))
  {
    v24 = v15;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (DataBuffer2DDimension)p_mapDimensionWithBuffer:(SEL)buffer skipFirstLevel:(id)level
{
  v5 = a5;
  levelCopy = level;
  v11 = levelCopy;
  if (levelCopy)
  {
    objc_msgSend_dimension(levelCopy, v8, v9, v10);
    if (v34)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "+[TSCH3DTextureMipmapper p_mapDimensionWithBuffer:skipFirstLevel:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 69, 0, "invalid mipmap for original image %@", v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  retstr->_size = vshl_s32(v32, vneg_s32(vdup_n_s32(v5)));
  retstr->_components = v33;
  retstr->_hasLevels = 1;

  return result;
}

+ (BOOL)p_generateMipmapsBuffer:(id)buffer level0Buffer:(id)level0Buffer skipFirstLevel:(BOOL)level
{
  levelCopy = level;
  bufferCopy = buffer;
  level0BufferCopy = level0Buffer;
  v13 = objc_msgSend_data(level0BufferCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_mutableData(bufferCopy, v14, v15, v16, v17);
  v22 = v18;
  if (v13)
  {
    v23 = v18 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (!v23)
  {
    if (level0BufferCopy)
    {
      objc_msgSend_dimension(level0BufferCopy, v19, v20, v21);
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v25 = levelCopy - 1;
    v26 = levelCopy;
    if (!levelCopy)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v27 = v31 * (SHIDWORD(v30) >> (v25 + 1)) * (v30 >> (v25 + 1));
      if (!v27)
      {
        break;
      }

      sub_2761D3A48(v30 >> v25, (SHIDWORD(v30) >> v25), v31, v13, v22, v19, v20, v21);
      while (1)
      {
        v13 = v22;
        v22 += v27;
        ++v25;
        if (++v26)
        {
          break;
        }

LABEL_14:
        v28 = SHIDWORD(v30) * v30;
        v27 = v31 * v28;
        if (!(v31 * v28))
        {
          goto LABEL_18;
        }

        memcpy(v22, v13, v31 * v28);
      }
    }
  }

LABEL_18:

  return v24;
}

@end