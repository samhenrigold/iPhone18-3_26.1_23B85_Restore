@interface GEOSearchAttributionInfo
- (BOOL)supportsActionURLs;
- (NSArray)attributionApps;
@end

@implementation GEOSearchAttributionInfo

- (BOOL)supportsActionURLs
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  attributionApps = [(GEOSearchAttributionInfo *)self attributionApps];
  v4 = [attributionApps countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(attributionApps);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        handledSchemes = [v8 handledSchemes];
        v10 = [handledSchemes countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(handledSchemes);
              }

              if ([*(*(&v16 + 1) + 8 * j) isEqualToString:@"com.apple.maps.action"])
              {

                v14 = 1;
                goto LABEL_18;
              }
            }

            v11 = [handledSchemes countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [attributionApps countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  attributionApps = [(GEOSearchAttributionInfo *)self webBaseActionURL];
  v14 = [attributionApps length] != 0;
LABEL_18:

  return v14;
}

- (NSArray)attributionApps
{
  source = self->_source;
  if (source)
  {
    [(GEOSearchAttributionSource *)self->_source _readAttributionApps];
    v3 = source->_attributionApps;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end