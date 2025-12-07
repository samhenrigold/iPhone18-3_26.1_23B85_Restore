@interface BRCUbiquitousAttributes
+ (id)brc_attributesValues:(id)values localItem:(id)item;
+ (void)brc_getterForAttribute:(id)attribute;
@end

@implementation BRCUbiquitousAttributes

+ (void)brc_getterForAttribute:(id)attribute
{
  v3 = brc_getterForAttribute__onceToken;
  attributeCopy = attribute;
  if (v3 != -1)
  {
    +[BRCUbiquitousAttributes brc_getterForAttribute:];
  }

  v5 = [brc_getterForAttribute__ubiquitousAttributeToFunction objectForKeyedSubscript:attributeCopy];

  pointerValue = [v5 pointerValue];
  return pointerValue;
}

void __50__BRCUbiquitousAttributes_brc_getterForAttribute___block_invoke()
{
  v25[22] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277CBE958];
  v23 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemHasUnresolvedConflicts];
  v25[0] = v23;
  v24[1] = *MEMORY[0x277CBE960];
  v22 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsDownloading];
  v25[1] = v22;
  v24[2] = *MEMORY[0x277CBEBE0];
  v21 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsDownloadRequested];
  v25[2] = v21;
  v24[3] = *MEMORY[0x277CBE928];
  v20 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsDownloadRequested];
  v25[3] = v20;
  v24[4] = *MEMORY[0x277CBE990];
  v19 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemUploadingError];
  v25[4] = v19;
  v24[5] = *MEMORY[0x277CBE930];
  v18 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemDownloadingError];
  v25[5] = v18;
  v24[6] = *MEMORY[0x277CBE970];
  v17 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsShared];
  v25[6] = v17;
  v24[7] = *MEMORY[0x277CBE9D8];
  v16 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemRole];
  v25[7] = v16;
  v24[8] = *MEMORY[0x277CBE9A0];
  v15 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemRole];
  v25[8] = v15;
  v24[9] = *MEMORY[0x277CBE9B8];
  v14 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemOwnerName];
  v25[9] = v14;
  v24[10] = *MEMORY[0x277CBE9B0];
  v13 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemOwnerNameComponents];
  v25[10] = v13;
  v24[11] = *MEMORY[0x277CBE9A8];
  v12 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemLastEditorNameComponents];
  v25[11] = v12;
  v24[12] = *MEMORY[0x277CBE9C0];
  v0 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemOldPermissions];
  v25[12] = v0;
  v24[13] = *MEMORY[0x277CBE998];
  v1 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousSharedItemCurrentUserPermissions];
  v25[13] = v1;
  v24[14] = *MEMORY[0x277CBE988];
  v2 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsUploading];
  v25[14] = v2;
  v24[15] = *MEMORY[0x277CFAD38];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemLastEditorDeviceName];
  v25[15] = v3;
  v24[16] = *MEMORY[0x277CFAD40];
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemLastEditorName];
  v25[16] = v4;
  v24[17] = *MEMORY[0x277CFAD30];
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIsConflicted];
  v25[17] = v5;
  v24[18] = *MEMORY[0x277CFAD28];
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousItemIdentifier];
  v25[18] = v6;
  v24[19] = *MEMORY[0x277CFAD18];
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousDocumentRecordID];
  v25[19] = v7;
  v24[20] = *MEMORY[0x277CFACD0];
  v8 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousEditedSinceShared];
  v25[20] = v8;
  v24[21] = *MEMORY[0x277CFAD20];
  v9 = [MEMORY[0x277CCAE60] valueWithPointer:ubiquitousIsTopLevelSharedItem];
  v25[21] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:22];
  v11 = brc_getterForAttribute__ubiquitousAttributeToFunction;
  brc_getterForAttribute__ubiquitousAttributeToFunction = v10;
}

+ (id)brc_attributesValues:(id)values localItem:(id)item
{
  v38 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  itemCopy = item;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[BRCUbiquitousAttributes brc_attributesValues:localItem:];
  }

  v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = valuesCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v30;
    *&v12 = 138412546;
    v27 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [self brc_getterForAttribute:{v16, v27}];
        if (v17)
        {
          v18 = v17;
          v19 = [itemCopy db];
          v20 = v18(itemCopy, v19);

          if (v20)
          {
            [v28 setObject:v20 forKeyedSubscript:v16];
          }

          else
          {
            v22 = brc_bread_crumbs();
            v23 = brc_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = v27;
              v34 = v16;
              v35 = 2112;
              v36 = v22;
              _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] No value for attribute: %@%@", buf, 0x16u);
            }
          }
        }

        else
        {
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = v27;
            v34 = v16;
            v35 = 2112;
            v36 = v20;
            _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] unsupported attribute: %@%@", buf, 0x16u);
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v13);
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    +[BRCUbiquitousAttributes brc_attributesValues:localItem:];
  }

  return v28;
}

@end