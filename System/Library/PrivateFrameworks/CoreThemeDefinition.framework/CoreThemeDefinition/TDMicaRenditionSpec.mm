@interface TDMicaRenditionSpec
- (id)copyDataFromAttributes;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDMicaRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  dCopy = d;
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  production = [-[TDMicaRenditionSpec production](self production];
  v9 = [production fileURLWithDocument:document];
  if (([v9 checkResourceIsReachableAndReturnError:&v47] & 1) == 0)
  {
    v9 = [objc_msgSend(v9 "URLByDeletingPathExtension")];
  }

  if (([v9 checkResourceIsReachableAndReturnError:&v47] & 1) == 0)
  {
    v9 = [objc_msgSend(v9 "URLByDeletingPathExtension")];
  }

  if ([(TDMicaRenditionSpec *)self parentRendition])
  {
    v10 = [objc_alloc(MEMORY[0x277D02668]) initWithInternalReferenceRect:1000 layout:{0.0, 0.0, 128.0, 128.0}];
    [v10 setScaleFactor:1];
    [v10 setUtiType:*MEMORY[0x277CDA7E8]];
    [v10 addSliceRect:{0.0, 0.0, 128.0, 128.0}];
    v11 = objc_alloc_init(MEMORY[0x277D026D0]);
    v12 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(-[TDMicaRenditionSpec parentRendition](self, "parentRendition"), "keySpec"), "key")}];
    [v11 setReferenceKey:v12];
    [v10 addLayerReference:v11];
    v13 = [v10 CSIRepresentationWithCompression:1];
  }

  else if (production)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v47 = 0;
    if ([objc_msgSend(v9 "pathExtension")])
    {
      v14 = MEMORY[0x277CDA7F8];
    }

    else
    {
      v15 = [objc_msgSend(v9 "pathExtension")];
      v14 = MEMORY[0x277CDA7E8];
      if (v15)
      {
        v14 = MEMORY[0x277CDA800];
      }
    }

    v16 = *v14;
    v17 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v9 type:*v14 options:MEMORY[0x277CBEC10] error:&v47];
    if (!v17 || v47)
    {
      -[TDMicaRenditionSpec _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find Mica asset at %@ of type %@: %@", v9, v16, v47]);
      v13 = 0;
    }

    else
    {
      v35 = production;
      v36 = dCopy;
      rootLayer = [v17 rootLayer];
      selfCopy = self;
      layerPath = [(TDMicaRenditionSpec *)self layerPath];
      if ([layerPath length])
      {
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = [layerPath componentsSeparatedByString:@"/"];
        v20 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v44;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v44 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v43 + 1) + 8 * i);
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              sublayers = [rootLayer sublayers];
              v26 = [sublayers countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v40;
                while (2)
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v40 != v28)
                    {
                      objc_enumerationMutation(sublayers);
                    }

                    v30 = *(*(&v39 + 1) + 8 * j);
                    if ([objc_msgSend(v30 "name")])
                    {
                      rootLayer = v30;
                      goto LABEL_31;
                    }
                  }

                  v27 = [sublayers countByEnumeratingWithState:&v39 objects:v48 count:16];
                  if (v27)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_31:
              ;
            }

            v21 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
          }

          while (v21);
        }
      }

      v31 = CAEncodeLayerTree();
      if (v31)
      {
        v32 = v31;
        v33 = [objc_alloc(MEMORY[0x277D02668]) initWithRawData:v31 pixelFormat:1145132097 layout:1000];
        [v33 setScaleFactor:1];
        [v33 setUtiType:*MEMORY[0x277CDA7E8]];
        [v33 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Mica: %@", objc_msgSend(v35, "name"))}];
        [v33 setColorSpaceID:v36];
        [v33 setOpacity:1.0];
        [v33 setBlendMode:0];
        [v33 setIsTintable:{-[TDMicaRenditionSpec isTintable](selfCopy, "isTintable")}];
        [v33 setCompressionType:2];
        [v33 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](selfCopy, "propertiesAsDictionary")}];
        v13 = [v33 CSIRepresentationWithCompression:1];
      }

      else
      {
        v13 = 0;
      }
    }

    [MEMORY[0x277CD9FF0] commit];
  }

  else
  {
    return 0;
  }

  return v13;
}

- (id)copyDataFromAttributes
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:0];

  return [v3 copy];
}

@end