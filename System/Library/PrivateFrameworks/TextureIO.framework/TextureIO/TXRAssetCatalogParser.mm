@interface TXRAssetCatalogParser
+ (BOOL)exportSetConfig:(id)config face:(unsigned int)face directoryPath:(id)path error:(id *)error;
+ (id)exportSet:(id)set location:(id)location error:(id *)error;
@end

@implementation TXRAssetCatalogParser

+ (BOOL)exportSetConfig:(id)config face:(unsigned int)face directoryPath:(id)path error:(id *)error
{
  v8 = *&face;
  v53[3] = *MEMORY[0x277D85DE8];
  configCopy = config;
  pathCopy = path;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v52[0] = @"info";
  v52[1] = @"properties";
  v53[0] = &unk_287F0A090;
  v53[1] = v11;
  v52[2] = @"levels";
  v53[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];
  if ([configCopy mipmapOption] != 2)
  {
    if ([configCopy mipmapOption] == 3)
    {
      [TXRAssetCatalogParser exportSetConfig:v11 face:? directoryPath:? error:?];
    }

    if ([configCopy mipmapOption] == 1)
    {
      [TXRAssetCatalogParser exportSetConfig:v11 face:? directoryPath:? error:?];
    }

    if (![configCopy mipmapOption])
    {
      [v11 setObject:@"none" forKeyedSubscript:@"level-mode"];
    }
  }

  if (![configCopy mipmapOption] || objc_msgSend(configCopy, "mipmapOption") == 2)
  {
    v13 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"level-0"];
    texture = [configCopy texture];
    cubemap = [texture cubemap];

    if (cubemap)
    {
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" face-%d", v8];
      [v13 appendString:v16];
    }

    baseFileAttributes = [configCopy baseFileAttributes];
    fileFormat = [baseFileAttributes fileFormat];

    v47 = v10;
    errorCopy = error;
    v45 = v12;
    v46 = v11;
    if (fileFormat)
    {
      if (fileFormat != 1)
      {
        v43 = 0;
        goto LABEL_16;
      }

      v19 = MEMORY[0x277CC20C8];
      v20 = @".jpg";
    }

    else
    {
      v19 = MEMORY[0x277CC2120];
      v20 = @".png";
    }

    [v13 appendString:v20];
    v43 = *v19;
LABEL_16:
    v50[0] = @"filename";
    v50[1] = @"mipmap-level";
    v51[0] = v13;
    v51[1] = @"base";
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    texture2 = [configCopy texture];
    mipmapLevels = [texture2 mipmapLevels];
    v23 = [mipmapLevels objectAtIndexedSubscript:0];
    elements = [v23 elements];
    v25 = [elements objectAtIndexedSubscript:0];
    faces = [v25 faces];
    v27 = [faces objectAtIndexedSubscript:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v29 = [TXRImageIndependent alloc];
      texture3 = [configCopy texture];
      [texture3 dimensions];
      v42 = v31;
      texture4 = [configCopy texture];
      pixelFormat = [texture4 pixelFormat];
      texture5 = [configCopy texture];
      v28 = -[TXRImageIndependent initWithImage:dimensions:pixelFormat:alphaInfo:](v29, "initWithImage:dimensions:pixelFormat:alphaInfo:", v27, pixelFormat, [texture5 alphaInfo], v42);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", pathCopy, v13];
    v36 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v35 isDirectory:0];
    baseFileAttributes2 = [configCopy baseFileAttributes];
    colorSpace = [baseFileAttributes2 colorSpace];
    baseFileAttributes3 = [configCopy baseFileAttributes];
    error = errorCopy;
    +[TXRParserImageIO exportImage:url:uttype:colorSpace:orientation:error:](TXRParserImageIO, "exportImage:url:uttype:colorSpace:orientation:error:", v28, v36, v43, colorSpace, [baseFileAttributes3 exifOrientation], errorCopy);

    v10 = v47;
    [v47 addObject:v44];

    v12 = v45;
    v11 = v46;
  }

  v40 = writeContentsJsonAtPath(v12, pathCopy, error);

  return v40;
}

+ (id)exportSet:(id)set location:(id)location error:(id *)error
{
  v101[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  locationCopy = location;
  configs = [setCopy configs];
  v10 = [configs objectAtIndexedSubscript:0];
  texture = [v10 texture];
  cubemap = [texture cubemap];

  v13 = objc_alloc(MEMORY[0x277CCAB68]);
  v83 = locationCopy;
  absoluteString = [locationCopy absoluteString];
  name = [setCopy name];
  v16 = name;
  v91 = cubemap;
  if (cubemap)
  {
    v17 = @"%@/%@.cubetextureset";
  }

  else
  {
    v17 = @"%@/%@.textureset";
  }

  v18 = [v13 initWithFormat:v17, absoluteString, name];

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/Contents.json", v18];
  [MEMORY[0x277CCAA00] defaultManager];
  v90 = v96 = 0;
  errorCopy = error;
  v82 = setCopy;
  v80 = v19;
  if ([v90 fileExistsAtPath:v19 isDirectory:&v96] && (v96 & 1) == 0)
  {
    configs2 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithFileAtPath:v19];
    [configs2 open];
    v39 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:configs2 options:1 error:error];
    [configs2 close];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v39;
    }

    else
    {
      if (error)
      {
        *error = _newTXRErrorWithCodeAndErrorString(3, @"Unexpected format of Contents.json");

        v81 = 0;
        v85 = 0;
        v36 = 0;
        goto LABEL_92;
      }

      v36 = 0;
    }

    v67 = [v36 objectForKeyedSubscript:@"properties"];
    if (!v67)
    {
      goto LABEL_97;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = v67;
      goto LABEL_98;
    }

    if (!error)
    {
LABEL_97:
      v81 = 0;
LABEL_98:
      v69 = [v36 objectForKeyedSubscript:@"textures"];
      if (v69)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v85 = v69;
        }

        else
        {
          if (error)
          {
            _newTXRErrorWithCodeAndErrorString(3, @"Value of textures key is not an array");
            v74 = 0;
            *error = v85 = 0;
            goto LABEL_107;
          }

          v85 = 0;
        }
      }

      else
      {
        v70 = objc_alloc(MEMORY[0x277CBEB18]);
        [setCopy configs];
        v72 = v71 = configs2;
        v73 = [v70 initWithCapacity:{objc_msgSend(v72, "count")}];

        configs2 = v71;
        v85 = v73;
        [v36 setObject:v73 forKeyedSubscript:@"textures"];
      }

      v74 = 1;
LABEL_107:

      if ((v74 & 1) == 0)
      {
LABEL_111:
        v40 = 0;
        goto LABEL_94;
      }

      v37 = v81;
      if (![setCopy interpretation])
      {
        if (v81)
        {
          [v81 removeObjectForKey:@"interpretation"];
        }

LABEL_25:
        if ([setCopy origin] == 1)
        {
          if (v37)
          {
            [v37 setObject:@"bottom-left" forKeyedSubscript:@"origin"];
LABEL_36:
            v81 = v37;
            [v36 setObject:v37 forKeyedSubscript:@"properties"];
LABEL_38:
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            configs2 = [setCopy configs];
            v76 = [configs2 countByEnumeratingWithState:&v92 objects:v97 count:16];
            if (v76)
            {
              v41 = *v93;
              v84 = v18;
              v78 = configs2;
              v79 = v36;
              v75 = *v93;
              while (1)
              {
                v42 = 0;
LABEL_41:
                if (*v93 != v41)
                {
                  objc_enumerationMutation(configs2);
                }

                v43 = *(*(&v92 + 1) + 8 * v42);
                texture2 = [v43 texture];
                cubemap2 = [texture2 cubemap];

                if (v91 != cubemap2)
                {
                  break;
                }

                v77 = v42;
                v46 = 0;
                do
                {
                  idiom = [v43 idiom];
                  if (idiom > 5)
                  {
                    v48 = 0;
                    v49 = 0;
                  }

                  else
                  {
                    v48 = off_279DBC098[idiom];
                    v49 = off_279DBC0C8[idiom];
                  }

                  v50 = [v43 graphicsFeatureSet] - 1;
                  if (v50 > 3)
                  {
                    v88 = 0;
                    v89 = 0;
                  }

                  else
                  {
                    v88 = off_279DBC118[v50];
                    v89 = off_279DBC0F8[v50];
                  }

                  v51 = [v43 memory] - 1;
                  if (v51 > 3)
                  {
                    v52 = 0;
                    v53 = 0;
                  }

                  else
                  {
                    v52 = off_279DBC138[v51];
                    v53 = off_279DBC158[v51];
                  }

                  displayColorSpace = [v43 displayColorSpace];
                  v55 = @"sRGB";
                  if (displayColorSpace != 1)
                  {
                    v55 = 0;
                  }

                  if (displayColorSpace == 2)
                  {
                    v56 = @"P3";
                  }

                  else
                  {
                    v56 = v55;
                  }

                  v57 = 0;
                  v58 = [v43 scaleFactor] - 1;
                  if (v58 <= 2)
                  {
                    v57 = off_279DBC178[v58];
                  }

                  pixelFormat = [v43 pixelFormat];
                  if ((pixelFormat - 1) > 0xB)
                  {
                    v87 = 0;
                  }

                  else
                  {
                    v87 = off_279DBC190[pixelFormat - 1];
                  }

                  v60 = objc_alloc_init(MEMORY[0x277CCAB68]);
                  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v61 setObject:v49 forKeyedSubscript:@"idiom"];
                  [v60 setString:v48];
                  if (v91)
                  {
                    v62 = off_279DBC1F0[v46];
                    [v61 setObject:off_279DBC220[v46] forKeyedSubscript:@"cube-face"];
                    [v60 appendString:@" "];
                    [v60 appendString:v62];
                  }

                  if ([v43 memory])
                  {
                    [v61 setObject:v53 forKeyedSubscript:@"memory"];
                    [v60 appendString:@" "];
                    [v60 appendString:v52];
                  }

                  if ([v43 graphicsFeatureSet])
                  {
                    [v61 setObject:v88 forKeyedSubscript:@"graphics-feature-set"];
                    [v60 appendString:@" "];
                    [v60 appendString:v89];
                  }

                  error = errorCopy;
                  if ([v43 displayColorSpace])
                  {
                    [v61 setObject:v56 forKeyedSubscript:@"color-space"];
                    [v60 appendString:@" "];
                    [v60 appendString:v56];
                  }

                  if ([v43 scaleFactor])
                  {
                    [v61 setObject:v57 forKeyedSubscript:@"scale"];
                    [v60 appendString:@" "];
                    [v60 appendString:v57];
                  }

                  if ([v43 pixelFormat])
                  {
                    [v61 setObject:v87 forKeyedSubscript:@"pixel-format"];
                  }

                  [v60 appendString:@".mipmapset"];
                  [v61 setObject:v60 forKeyedSubscript:@"filename"];
                  [v85 addObject:v61];
                  v18 = v84;
                  v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v84, v60];
                  [v90 createDirectoryAtPath:v63 withIntermediateDirectories:1 attributes:0 error:errorCopy];
                  v64 = [TXRAssetCatalogParser exportSetConfig:v43 face:v46 directoryPath:v63 error:errorCopy];

                  if (!v64)
                  {
                    v40 = 0;
                    setCopy = v82;
                    configs2 = v78;
                    v36 = v79;
                    goto LABEL_93;
                  }

                  v65 = v46;
                  v46 = (v46 + 1);
                  if (v65 < 5)
                  {
                    v66 = v91;
                  }

                  else
                  {
                    v66 = 0;
                  }
                }

                while (v66 == 1);
                v42 = v77 + 1;
                setCopy = v82;
                configs2 = v78;
                v36 = v79;
                v41 = v75;
                if (v77 + 1 != v76)
                {
                  goto LABEL_41;
                }

                v76 = [v78 countByEnumeratingWithState:&v92 objects:v97 count:16];
                if (!v76)
                {
                  goto LABEL_83;
                }
              }

              _newTXRErrorWithCodeAndErrorString(7, @"Inconsistant set specifed.  Some mipmapsets specified are cubemap textures while other mipmapsets are 2D textures");
              *error = v40 = 0;
              setCopy = v82;
              v36 = v79;
              goto LABEL_93;
            }

LABEL_83:

            if (writeContentsJsonAtPath(v36, v18, error))
            {
              configs2 = [v18 stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
              v40 = [MEMORY[0x277CBEBC0] fileURLWithPath:configs2];
              goto LABEL_93;
            }

            goto LABEL_111;
          }

          v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v37 setObject:@"bottom-left" forKeyedSubscript:@"origin"];
          if (v37)
          {
            goto LABEL_36;
          }
        }

        else if (v37)
        {
          [v37 removeObjectForKey:@"origin"];
          goto LABEL_36;
        }

        v81 = 0;
        goto LABEL_38;
      }

      if (v81)
      {
LABEL_17:
        if ([setCopy interpretation] == 1)
        {
          v38 = @"non-premultiplied-colors";
        }

        else
        {
          if ([setCopy interpretation] != 2)
          {
            +[TXRAssetCatalogParser exportSet:location:error:];
          }

          v38 = @"data";
        }

        [v37 setObject:v38 forKeyedSubscript:@"interpretation"];
        goto LABEL_25;
      }

LABEL_16:
      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      goto LABEL_17;
    }

    *error = _newTXRErrorWithCodeAndErrorString(3, @"Value of properties key is not an object");

    v81 = 0;
    v85 = 0;
LABEL_92:
    v40 = 0;
    goto LABEL_93;
  }

  name2 = [setCopy name];
  v21 = [name2 componentsSeparatedByString:@"/"];

  v22 = objc_alloc(MEMORY[0x277CCAB68]);
  absoluteString2 = [locationCopy absoluteString];
  v24 = [v22 initWithFormat:@"%@", absoluteString2];

  configs2 = v21;
  if ([v21 count] == 1)
  {
    v26 = 1;
    v27 = v21;
LABEL_15:
    v31 = v26 & 1;
    error = errorCopy;
    [v90 createDirectoryAtPath:v18 withIntermediateDirectories:v31 attributes:0 error:errorCopy];
    v32 = objc_alloc(MEMORY[0x277CBEB18]);
    configs3 = [setCopy configs];
    v34 = [v32 initWithCapacity:{objc_msgSend(configs3, "count")}];

    v98[0] = @"info";
    v98[1] = @"textures";
    v99[0] = &unk_287F0A090;
    v99[1] = v34;
    v85 = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
    v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v35];

    if (![setCopy interpretation])
    {
      v37 = 0;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v28 = 0;
  v26 = 1;
  v27 = v21;
  while (1)
  {
    [v24 appendString:@"/"];
    v29 = [v27 objectAtIndexedSubscript:v28];
    [v24 appendString:v29];

    if ([v90 fileExistsAtPath:v24 isDirectory:&v96] && (v96 & 1) != 0)
    {
      goto LABEL_14;
    }

    if (([v90 createDirectoryAtPath:v24 withIntermediateDirectories:v26 & 1 attributes:0 error:errorCopy] & 1) == 0)
    {
      *errorCopy = _newTXRErrorWithCodeAndErrorString(5, @"Could not create folder hierarchy for texture name");
      goto LABEL_34;
    }

    v100 = @"info";
    v101[0] = &unk_287F0A090;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:&v100 count:1];
    if (!writeContentsJsonAtPath(v30, v24, errorCopy))
    {
      break;
    }

    v26 = 0;
LABEL_14:
    ++v28;
    v27 = v21;
    if (v28 >= [v21 count] - 1)
    {
      goto LABEL_15;
    }
  }

  *errorCopy = _newTXRErrorWithCodeAndErrorString(5, @"Could not create Content.json for hierarchy of texture name");

LABEL_34:
  v81 = 0;
  v85 = 0;
  v36 = 0;
  v40 = 0;
LABEL_93:

LABEL_94:

  return v40;
}

@end