@interface SIIOUtility_private
+ (BOOL)ImageInfoEqual:(id)equal to:(id)to;
+ (id)DictionaryFromImageInfo:(id)info;
+ (id)ImageInfoFromCVPixelBuffer:(__CVBuffer *)buffer;
+ (id)ImageInfoFromDictionary:(id)dictionary;
+ (id)StringFromOSType:(unsigned int)type;
+ (unsigned)GetDefaultPixelFormatForRawImageWithChannels:(unint64_t)channels bytesPerPixel:(unint64_t)pixel;
+ (unsigned)OSTypeFromString:(id)string;
@end

@implementation SIIOUtility_private

+ (unsigned)GetDefaultPixelFormatForRawImageWithChannels:(unint64_t)channels bytesPerPixel:(unint64_t)pixel
{
  if (channels > 2)
  {
    if (channels == 3)
    {
      if (pixel == 1)
      {
        return 24;
      }

      if (pixel != 2)
      {
        +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
      }

      return 1647589490;
    }

    if (channels == 4)
    {
      if (pixel == 1)
      {
        return 32;
      }

      if (pixel == 4)
      {
        return 1380410945;
      }

      if (pixel != 2)
      {
        +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
      }

      return 1647719521;
    }

    goto LABEL_26;
  }

  if (channels != 1)
  {
    if (channels == 2)
    {
      result = 843264056;
      if (pixel != 1)
      {
        if (pixel != 4)
        {
          if (pixel != 2)
          {
            +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
          }

LABEL_17:
          result += 254;
          return result;
        }

LABEL_21:
        result += 46;
        return result;
      }

      return result;
    }

LABEL_26:
    +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
  }

  result = 1278226488;
  if (pixel != 1)
  {
    if (pixel != 4)
    {
      if (pixel != 2)
      {
        +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
      }

      goto LABEL_17;
    }

    goto LABEL_21;
  }

  return result;
}

+ (unsigned)OSTypeFromString:(id)string
{
  stringCopy = string;
  uTF8String = [stringCopy UTF8String];
  if ([stringCopy length] >= 5)
  {
    __assert_rtn("+[SIIOUtility_private OSTypeFromString:]", "SIIOUtility.mm", 1151, "[str length] <= 4");
  }

  v5 = [stringCopy length];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = &v10;
  v7 = v5;
  do
  {
    *v6 = *(uTF8String - 1 + v7);
    v6 = (v6 + 1);
    --v7;
  }

  while (v7);
  if (v5 <= 3)
  {
LABEL_6:
    bzero(&v10 + v5, 4 - v5);
  }

  v8 = v10;

  return v8;
}

+ (id)StringFromOSType:(unsigned int)type
{
  if (!type)
  {
    +[SIIOUtility_private StringFromOSType:];
  }

  v3 = 0;
  v6[0] = HIBYTE(type);
  v6[1] = BYTE2(type);
  v6[2] = BYTE1(type);
  v6[3] = type;
  v6[4] = 0;
  while (!v6[v3])
  {
    if (++v3 == 4)
    {
      +[SIIOUtility_private StringFromOSType:];
    }
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v6[v3]];

  return v4;
}

+ (BOOL)ImageInfoEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  planes = [equalCopy planes];
  if (planes == [toCopy planes] && (v8 = objc_msgSend(equalCopy, "channels"), v8 == objc_msgSend(toCopy, "channels")) && (v9 = objc_msgSend(equalCopy, "planes"), v9 == objc_msgSend(toCopy, "planes")) && (v10 = objc_msgSend(equalCopy, "width"), !memcmp(v10, objc_msgSend(toCopy, "width"), objc_msgSend(equalCopy, "width") + 8 * objc_msgSend(equalCopy, "planes") - v10)) && (v11 = objc_msgSend(equalCopy, "height"), !memcmp(v11, objc_msgSend(toCopy, "height"), objc_msgSend(equalCopy, "height") + 8 * objc_msgSend(equalCopy, "planes") - v11)) && (v12 = objc_msgSend(equalCopy, "bytesPerRow"), !memcmp(v12, objc_msgSend(toCopy, "bytesPerRow"), objc_msgSend(equalCopy, "bytesPerRow") + 8 * objc_msgSend(equalCopy, "planes") - v12)) && (v13 = objc_msgSend(equalCopy, "bytesPerPixel"), !memcmp(v13, objc_msgSend(toCopy, "bytesPerPixel"), objc_msgSend(equalCopy, "bytesPerPixel") + 8 * objc_msgSend(equalCopy, "planes") - v13)))
  {
    v16 = [equalCopy size];
    v14 = memcmp(v16, [toCopy size], objc_msgSend(equalCopy, "size") + 8 * objc_msgSend(equalCopy, "planes") - v16) == 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)DictionaryFromImageInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([infoCopy planes] >= 3)
  {
    __assert_rtn("+[SIIOUtility_private DictionaryFromImageInfo:]", "SIIOUtility.mm", 1200, "info.planes < kSIRawImageInfoMaxPlanes");
  }

  v25[0] = @"width";
  width = [infoCopy width];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i < [infoCopy planes]; ++i)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(width + 8 * i)];
    [v5 addObject:v7];
  }

  v26[0] = v5;
  v25[1] = @"height";
  height = [infoCopy height];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (j = 0; j < [infoCopy planes]; ++j)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(height + 8 * j)];
    [v9 addObject:v11];
  }

  v26[1] = v9;
  v25[2] = @"channels";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(infoCopy, "channels")}];
  v25[3] = @"planes";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(infoCopy, "planes")}];
  v24 = v27;
  v28 = v12;
  v25[4] = @"bytesPerPixel";
  bytesPerPixel = [infoCopy bytesPerPixel];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (k = 0; k < [infoCopy planes]; ++k)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(bytesPerPixel + 8 * k)];
    [v14 addObject:v16];
  }

  v29 = v14;
  v25[5] = @"bytesPerRow";
  bytesPerRow = [infoCopy bytesPerRow];
  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (m = 0; m < [infoCopy planes]; ++m)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(bytesPerRow + 8 * m)];
    [v18 addObject:v20];
  }

  v30 = v18;
  v25[6] = @"pixelFormat";
  v21 = +[SIIOUtility_private StringFromOSType:](SIIOUtility_private, "StringFromOSType:", [infoCopy pixelFormat]);
  v31 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  return v22;
}

+ (id)ImageInfoFromDictionary:(id)dictionary
{
  v69[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1215, "infoDictionary");
  }

  v3 = objc_opt_new();
  v4 = [dictionaryCopy objectForKeyedSubscript:@"channels"];
  [v3 setChannels:{objc_msgSend(v4, "unsignedLongValue")}];

  v5 = [dictionaryCopy objectForKeyedSubscript:@"planes"];
  unsignedLongValue = [v5 unsignedLongValue];
  if (unsignedLongValue <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = unsignedLongValue;
  }

  [v3 setPlanes:v7];

  v60 = [dictionaryCopy objectForKeyedSubscript:@"bytesPerPixel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v60;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v60, "unsignedLongValue")}];
      v69[0] = v9;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"pixelFormat"];
  v57 = v10;
  if (!v10)
  {
    if ([v3 channels])
    {
      planes = [v3 planes];
      if (planes < 2)
      {
        if (!v8)
        {
          if (![0 count])
          {
            __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1253, "bytesPerPixel.count >= 1");
          }

          channels = [v3 channels];
          v52 = [0 objectAtIndexedSubscript:0];
          [v3 setPixelFormat:+[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:](SIIOUtility_private, "GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:", channels, objc_msgSend(v52, "unsignedLongValue"))];

          goto LABEL_12;
        }

        v13 = __SceneIntelligenceLogSharedInstance(planes);
        v59 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v66 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
          v67 = 1025;
          v68 = 1249;
          v14 = " %{private}s:%{private}d *** Must specify either byesPerPixel or pixelFormat ***";
          goto LABEL_59;
        }
      }

      else
      {
        v13 = __SceneIntelligenceLogSharedInstance(planes);
        v59 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v66 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
          v67 = 1025;
          v68 = 1245;
          v14 = " %{private}s:%{private}d *** Inferring PixelFormat from multiplanar images is not supported. ***";
LABEL_59:
          _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
        }
      }
    }

    else
    {
      v13 = __SceneIntelligenceLogSharedInstance(0);
      v59 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v66 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v67 = 1025;
        v68 = 1241;
        v14 = " %{private}s:%{private}d *** Must specify either channels or pixelFormat ***";
        goto LABEL_59;
      }
    }

    v40 = 0;
    goto LABEL_61;
  }

  [v3 setPixelFormat:+[SIIOUtility_private OSTypeFromString:](SIIOUtility_private, "OSTypeFromString:", v10)];
LABEL_12:
  if ([v3 planes] <= 1)
  {
    v11 = SIChannelCountForPixelFormat([v3 pixelFormat]);
  }

  else
  {
    v11 = 0;
  }

  channels2 = [v3 channels];
  if (channels2)
  {
    v16 = channels2;
  }

  else
  {
    v16 = v11;
  }

  [v3 setChannels:v16];
  if ([v3 planes] >= 4)
  {
    __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1261, "info.planes <= kSIRawImageInfoMaxPlanes");
  }

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "planes")}];
    for (i = 0; i < [v3 planes]; ++i)
    {
      if ([v3 planes] == 1)
      {
        v42 = SIBytesPerElementForPixelFormat([v3 pixelFormat]);
      }

      else
      {
        v42 = SIBytesPerElementForPlanarPixelFormat([v3 pixelFormat], i);
      }

      if (!v42)
      {
        __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1268, "bppInferred > 0");
      }

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v42];
      [v8 addObject:v43];
    }
  }

  if ([v3 planes] <= 1)
  {
    v17 = [v8 objectAtIndexedSubscript:0];
    unsignedIntValue = [v17 unsignedIntValue];
    if ([v3 channels] > unsignedIntValue)
    {
      __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1274, "info.planes > 1 || [bytesPerPixel[0] unsignedIntValue] >= info.channels");
    }
  }

  v59 = [dictionaryCopy objectForKeyedSubscript:@"width"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v59;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v53 = __SceneIntelligenceLogSharedInstance(isKindOfClass);
      [SIIOUtility_private ImageInfoFromDictionary:v53];
    }

    v64 = v59;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  }

  v21 = v19;
  v22 = [dictionaryCopy objectForKeyedSubscript:@"height"];
  v56 = v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    if ((v24 & 1) == 0)
    {
      v54 = __SceneIntelligenceLogSharedInstance(v24);
      [SIIOUtility_private ImageInfoFromDictionary:v54];
    }

    v63 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  }

  v25 = v23;
  v58 = [dictionaryCopy objectForKeyedSubscript:@"bytesPerRow"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v58;
  }

  else
  {
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();
    if (v27)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v58, "unsignedLongValue")}];
      v62 = v28;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    }

    else
    {
      if (v58)
      {
        v55 = __SceneIntelligenceLogSharedInstance(v27);
        [SIIOUtility_private ImageInfoFromDictionary:v55];
      }

      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "planes")}];
      for (j = 0; j < [v3 planes]; ++j)
      {
        v45 = MEMORY[0x277CCABB0];
        v46 = [v21 objectAtIndexedSubscript:j];
        unsignedLongValue2 = [v46 unsignedLongValue];
        v48 = [v8 objectAtIndexedSubscript:j];
        v49 = [v45 numberWithUnsignedLong:{objc_msgSend(v48, "unsignedLongValue") * unsignedLongValue2}];
        [v26 addObject:v49];
      }
    }
  }

  for (k = 0; k < [v3 planes]; ++k)
  {
    v30 = [v21 objectAtIndexedSubscript:k];
    unsignedLongValue3 = [v30 unsignedLongValue];
    *([v3 width] + 8 * k) = unsignedLongValue3;

    v32 = [v25 objectAtIndexedSubscript:k];
    unsignedLongValue4 = [v32 unsignedLongValue];
    *([v3 height] + 8 * k) = unsignedLongValue4;

    v34 = [v26 objectAtIndexedSubscript:k];
    unsignedLongValue5 = [v34 unsignedLongValue];
    *([v3 bytesPerRow] + 8 * k) = unsignedLongValue5;

    v36 = [v8 objectAtIndexedSubscript:k];
    unsignedLongValue6 = [v36 unsignedLongValue];
    *([v3 bytesPerPixel] + 8 * k) = unsignedLongValue6;

    v38 = *([v3 height] + 8 * k);
    v39 = *([v3 bytesPerRow] + 8 * k);
    *([v3 size] + 8 * k) = v39 * v38;
  }

  v40 = v3;

LABEL_61:

  return v40;
}

+ (id)ImageInfoFromCVPixelBuffer:(__CVBuffer *)buffer
{
  v58 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
  v48 = v5;
  PlaneCount = CVPixelBufferGetPlaneCount(buffer);
  v7 = PlaneCount;
  if (PlaneCount <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = PlaneCount;
  }

  v39 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F30]];
  v45 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  v46 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F28]];
  v47 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
  v9 = *MEMORY[0x277CC4ED8];
  v10 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v44 = PixelFormatType;
  unsignedIntValue = [v10 unsignedIntValue];

  v12 = *MEMORY[0x277CC4ED0];
  v13 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED0]];
  v14 = unsignedIntValue;
  unsignedIntValue2 = [v13 unsignedIntValue];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke;
  v49[3] = &unk_27833C2A8;
  v40 = v39;
  v50 = v40;
  v41 = v45;
  v51 = v41;
  v42 = v46;
  v52 = v42;
  v43 = v47;
  v53 = v43;
  v54 = v8;
  v55 = unsignedIntValue2;
  v56 = v14;
  v16 = __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke(v49);
  v17 = [(__CFDictionary *)v48 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v18 = v17;
  if (v17 && v8 != [v17 count])
  {
    __assert_rtn("+[SIIOUtility_private ImageInfoFromCVPixelBuffer:]", "SIIOUtility.mm", 1360, "!planesPixelDescr || planes == planesPixelDescr.count");
  }

  memset(v57, 0, sizeof(v57));
  if (v7 >= 2)
  {
    for (i = 0; i != v7; ++i)
    {
      v21 = [v18 objectAtIndexedSubscript:i];
      v22 = [v21 objectForKeyedSubscript:v12];
      *(v57 + i) = [v22 unsignedIntValue] >> 3;
    }
  }

  else
  {
    v19 = [(__CFDictionary *)v48 objectForKeyedSubscript:v9];
    *&v57[0] = ([v19 unsignedIntValue] * v16) >> 3;
  }

  v23 = objc_opt_new();
  [v23 setChannels:v16];
  [v23 setPlanes:v8];
  [v23 setPixelFormat:v44];
  for (j = 0; j != 3; ++j)
  {
    if (v7 > 1)
    {
      width = [v23 width];
      if (v8 <= j)
      {
        WidthOfPlane = 0;
      }

      else
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, j);
      }

      *(width + 8 * j) = WidthOfPlane;
      height = [v23 height];
      if (v8 <= j)
      {
        HeightOfPlane = 0;
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, j);
      }

      *(height + 8 * j) = HeightOfPlane;
      bytesPerRow = [v23 bytesPerRow];
      if (v8 > j)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, j);
        goto LABEL_29;
      }
    }

    else
    {
      width2 = [v23 width];
      if (v8 <= j)
      {
        Width = 0;
      }

      else
      {
        Width = CVPixelBufferGetWidth(buffer);
      }

      *(width2 + 8 * j) = Width;
      height2 = [v23 height];
      if (v8 <= j)
      {
        Height = 0;
      }

      else
      {
        Height = CVPixelBufferGetHeight(buffer);
      }

      *(height2 + 8 * j) = Height;
      bytesPerRow = [v23 bytesPerRow];
      if (v8 > j)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
        goto LABEL_29;
      }
    }

    BytesPerRowOfPlane = 0;
LABEL_29:
    *(bytesPerRow + 8 * j) = BytesPerRowOfPlane;
    v35 = *(v57 + j);
    *([v23 bytesPerPixel] + 8 * j) = v35;
    v36 = *([v23 height] + 8 * j);
    v37 = *([v23 bytesPerRow] + 8 * j);
    *([v23 size] + 8 * j) = v37 * v36;
  }

  return v23;
}

+ (void)ImageInfoFromDictionary:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136380931;
    *&v8[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    *&v8[12] = 1025;
    *&v8[14] = 1284;
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Unknown object type for width ***", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
  }

  abort();
}

+ (void)ImageInfoFromDictionary:(NSObject *)a1 .cold.2(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136380931;
    *&v8[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    *&v8[12] = 1025;
    *&v8[14] = 1295;
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Unknown object type for width ***", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
  }

  abort();
}

+ (void)ImageInfoFromDictionary:(NSObject *)a1 .cold.3(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136380931;
    *&v8[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    *&v8[12] = 1025;
    *&v8[14] = 1313;
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Unknown object type for bytesPerRow ***", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
  }

  abort();
}

@end