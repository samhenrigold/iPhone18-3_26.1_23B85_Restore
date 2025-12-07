@interface IKViewElement(VideosUI)
+ (id)_vui_updateEventDescriptorWithType:()VideosUI;
- (VUIViewElementDataSource)vui_DataSource;
- (id)vui_description;
- (id)vui_imageURL;
- (id)vui_title;
- (id)vui_updateEventDescriptors;
- (void)_parseElementIfNecessary;
@end

@implementation IKViewElement(VideosUI)

- (VUIViewElementDataSource)vui_DataSource
{
  v2 = [self objectForKeyedSubscript:@"ViewElementDataSourceKey"];
  if (!v2)
  {
    dataDictionary = [self dataDictionary];
    v2 = [[VUIViewElementDataSource alloc] initWithDataDictionary:dataDictionary viewElement:self];
    if (v2)
    {
      [self setObject:v2 forKeyedSubscript:@"ViewElementDataSourceKey"];
    }
  }

  return v2;
}

- (id)vui_updateEventDescriptors
{
  v52 = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  attributes = [self attributes];
  v2 = [attributes vui_stringForKey:@"vui-update-events"];
  v3 = v2;
  if (v2)
  {
    v34 = v2;
    v35 = attributes;
    v4 = [v2 componentsSeparatedByString:{@", "}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (!v5)
    {
      goto LABEL_36;
    }

    v6 = v5;
    v7 = *v48;
    v37 = v4;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v47 + 1) + 8 * i) componentsSeparatedByString:@":"];
        v10 = [v9 count];
        if (v10)
        {
          v11 = v10;
          v46 = 0;
          v12 = [v9 objectAtIndex:0];
          whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v14 = [v12 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          updated = VUIAppDocumentUpdateEventTypeFromStringRepresentation(v14, &v46);
          if (!updated)
          {
            goto LABEL_33;
          }

          if (v46 <= 2)
          {
            if (v11 == 1)
            {
              v16 = VUIDefaultLogObject(updated);
              if (os_log_type_enabled(&v16->super.super, OS_LOG_TYPE_ERROR))
              {
                [(IKViewElement(VideosUI) *)&v44 vui_updateEventDescriptors];
              }

              goto LABEL_32;
            }

            v17 = [v9 objectAtIndex:1];
            whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v16 = [v17 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

            v19 = [MEMORY[0x1E696AB90] decimalNumberWithString:v16];
            unsignedIntegerValue = [v19 unsignedIntegerValue];
            if (unsignedIntegerValue)
            {
              v21 = unsignedIntegerValue;
              if (v11 < 3)
              {
                v23 = 0;
              }

              else
              {
                v36 = [v9 objectAtIndex:2];
                whitespaceCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                v23 = [v36 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];
              }

              v30 = [VUIAppDocumentRefreshEventDescriptor alloc];
              v31 = [(VUIAppDocumentRefreshEventDescriptor *)v30 initWithEventType:v46 delayInSeconds:v21 name:v23];

              v16 = v31;
              v4 = v37;
              goto LABEL_30;
            }

            v26 = VUIDefaultLogObject(0);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(IKViewElement(VideosUI) *)&v42 vui_updateEventDescriptors];
            }

LABEL_32:
LABEL_33:

            goto LABEL_34;
          }

          if (v46 == 17)
          {
            v24 = objc_opt_class();
            v25 = 17;
          }

          else
          {
            if (v46 == 4)
            {
              if (v11 == 1)
              {
                v16 = VUIDefaultLogObject(updated);
                if (os_log_type_enabled(&v16->super.super, OS_LOG_TYPE_ERROR))
                {
                  [(IKViewElement(VideosUI) *)&v40 vui_updateEventDescriptors];
                }

                goto LABEL_32;
              }

              v27 = [v9 objectAtIndex:1];
              whitespaceCharacterSet4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v29 = [v27 stringByTrimmingCharactersInSet:whitespaceCharacterSet4];

              v4 = v37;
              v16 = [[VUIAppDocumentPurchaseEventDescriptor alloc] initWithCanonicalID:v29];

              goto LABEL_30;
            }

            v24 = objc_opt_class();
            v25 = v46;
          }

          v16 = [v24 _vui_updateEventDescriptorWithType:v25];
LABEL_30:
          if (v16)
          {
            [v39 addObject:v16];
            goto LABEL_32;
          }

          goto LABEL_33;
        }

LABEL_34:
      }

      v6 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v6)
      {
LABEL_36:

        v3 = v34;
        attributes = v35;
        break;
      }
    }
  }

  v32 = [v39 copy];

  return v32;
}

- (id)vui_title
{
  [self _parseElementIfNecessary];

  return objc_getAssociatedObject(self, @"VideosTitle");
}

- (id)vui_description
{
  [self _parseElementIfNecessary];

  return objc_getAssociatedObject(self, @"VideosDescription");
}

- (id)vui_imageURL
{
  [self _parseElementIfNecessary];

  return objc_getAssociatedObject(self, @"VideosImageURL");
}

+ (id)_vui_updateEventDescriptorWithType:()VideosUI
{
  v3 = 0;
  switch(a3)
  {
    case 3:
      v3 = +[VUIAppDocumentUpdateEventDescriptor purchases];
      break;
    case 5:
      v3 = +[VUIAppDocumentUpdateEventDescriptor playActivity];
      break;
    case 6:
      v3 = +[VUIAppDocumentUpdateEventDescriptor settings];
      break;
    case 7:
      v3 = +[VUIAppDocumentUpdateEventDescriptor upNext];
      break;
    case 9:
      v3 = +[VUIAppDocumentUpdateEventDescriptor favorites];
      break;
    case 11:
      v3 = +[VUIAppDocumentUpdateEventDescriptor accountChanged];
      break;
    case 12:
      v3 = +[VUIAppDocumentUpdateEventDescriptor removeFromPlayHistory];
      break;
    case 13:
      v3 = +[VUIAppDocumentUpdateEventDescriptor entitlements];
      break;
    case 14:
      v3 = +[VUIAppDocumentUpdateEventDescriptor utsk];
      break;
    case 15:
      v3 = +[VUIAppDocumentUpdateEventDescriptor restrictions];
      break;
    case 16:
      v3 = +[VUIAppDocumentUpdateEventDescriptor preferredVideoFormat];
      break;
    case 17:
      v3 = +[VUIAppDocumentUpdateEventDescriptor postPlay];
      break;
    case 18:
      v3 = +[VUIAppDocumentUpdateEventDescriptor appDidBecomeActive];
      break;
    case 19:
      v3 = +[VUIAppDocumentUpdateEventDescriptor playHistoryUpdated];
      break;
    case 20:
      v3 = +[VUIAppDocumentUpdateEventDescriptor clearPlayHistory];
      break;
    case 21:
      v3 = +[VUIAppDocumentUpdateEventDescriptor appRefresh];
      break;
    case 22:
      v3 = +[VUIAppDocumentUpdateEventDescriptor locationAuthorizationChanged];
      break;
    case 23:
      v3 = +[VUIAppDocumentUpdateEventDescriptor locationRetrieved];
      break;
    default:
      break;
  }

  return v3;
}

- (void)_parseElementIfNecessary
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, @"VideosHasParsedElement");
  bOOLValue = [v2 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    objc_setAssociatedObject(self, @"VideosHasParsedElement", MEMORY[0x1E695E118], 1);
    if (objc_opt_respondsToSelector())
    {
      selfCopy = self;
      [self relatedContent];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v32 = v46 = 0u;
      obj = [v32 children];
      v5 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v5)
      {
        goto LABEL_29;
      }

      v6 = v5;
      v7 = *v44;
      v8 = *MEMORY[0x1E69A86E8];
      v9 = *MEMORY[0x1E69A8798];
      v10 = *MEMORY[0x1E69A8680];
      v38 = *MEMORY[0x1E69A86C0];
      v33 = *MEMORY[0x1E69A86E8];
      v34 = *v44;
      while (1)
      {
        v11 = 0;
        v35 = v6;
        do
        {
          if (*v44 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          elementName = [v12 elementName];
          v14 = [elementName isEqualToString:v8];

          if (v14)
          {
            v37 = v11;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            children = [v12 children];
            v16 = [children countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (!v16)
            {
              goto LABEL_26;
            }

            v17 = v16;
            v18 = *v40;
            while (1)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(children);
                }

                v20 = *(*(&v39 + 1) + 8 * i);
                elementName2 = [v20 elementName];
                v22 = [elementName2 isEqualToString:v9];

                if (v22)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }

                  text = [v20 text];
                  string = [text string];

                  v25 = selfCopy;
                  v26 = @"VideosTitle";
                  goto LABEL_23;
                }

                elementName3 = [v20 elementName];
                v28 = [elementName3 isEqualToString:v10];

                if (v28)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }

                  text2 = [v20 text];
                  string = [text2 string];

                  v25 = selfCopy;
                  v26 = @"VideosDescription";
                  goto LABEL_23;
                }

                elementName4 = [v20 elementName];
                v31 = [elementName4 isEqualToString:v38];

                if (v31)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    string = [v20 url];
                    v25 = selfCopy;
                    v26 = @"VideosImageURL";
LABEL_23:
                    objc_setAssociatedObject(v25, v26, string, 1);

                    continue;
                  }
                }
              }

              v17 = [children countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (!v17)
              {
LABEL_26:

                v8 = v33;
                v7 = v34;
                v6 = v35;
                v11 = v37;
                break;
              }
            }
          }

          ++v11;
        }

        while (v11 != v6);
        v6 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (!v6)
        {
LABEL_29:

          return;
        }
      }
    }
  }
}

@end