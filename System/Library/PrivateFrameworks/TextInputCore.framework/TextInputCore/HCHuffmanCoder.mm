@interface HCHuffmanCoder
+ (id)coderFromBurstTrieFile:(id)file indexTableFile:(id)tableFile;
+ (id)coderMatchingName:(id)name locale:(id)locale;
- (HCHuffmanCoder)initWithBurstTrie:(id)trie indexTable:(id)table;
- (NSUUID)versionUUID;
- (id)codeForKey:(id)key;
- (id)stringCodeForKey:(id)key;
- (unint64_t)count;
@end

@implementation HCHuffmanCoder

- (id)stringCodeForKey:(id)key
{
  v3 = [(HCHuffmanCoder *)self codeForKey:key];
  v4 = v3;
  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
    v6 = vcvtpd_u64_f64(log2(unsignedLongLongValue));
    for (i = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:v6]; v6; --v6)
    {
      if (unsignedLongLongValue)
      {
        v8 = @"1";
      }

      else
      {
        v8 = @"0";
      }

      [i insertString:v8 atIndex:0];
      unsignedLongLongValue >>= 1;
    }

    v9 = [i copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)codeForKey:(id)key
{
  keyCopy = key;
  burstTrie = self->_burstTrie;
  if (burstTrie && self->_indexTable)
  {
    v6 = [(HCBurstTrie *)burstTrie payloadForKey:keyCopy];
    v7 = v6;
    if (v6)
    {
      v8 = -[HCIndexTable codeAtIndex:](self->_indexTable, "codeAtIndex:", [v6 unsignedIntValue] - 1);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSUUID)versionUUID
{
  indexTable = [(HCHuffmanCoder *)self indexTable];
  versionUUID = [indexTable versionUUID];

  return versionUUID;
}

- (unint64_t)count
{
  v3 = [(HCBurstTrie *)self->_burstTrie count];
  [(HCIndexTable *)self->_indexTable count];
  return v3;
}

- (HCHuffmanCoder)initWithBurstTrie:(id)trie indexTable:(id)table
{
  trieCopy = trie;
  tableCopy = table;
  v12.receiver = self;
  v12.super_class = HCHuffmanCoder;
  v9 = [(HCHuffmanCoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_burstTrie, trie);
    objc_storeStrong(&v10->_indexTable, table);
  }

  return v10;
}

+ (id)coderFromBurstTrieFile:(id)file indexTableFile:(id)tableFile
{
  v13 = *MEMORY[0x277D85DE8];
  tableFileCopy = tableFile;
  v6 = [HCBurstTrie burstTrieFromFile:file];
  v7 = [HCIndexTable indexTableFromFile:tableFileCopy];

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "+[HCHuffmanCoder coderFromBurstTrieFile:indexTableFile:]";
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Could not load the huffman coder from the supplied file paths.", &v11, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [[HCHuffmanCoder alloc] initWithBurstTrie:v6 indexTable:v7];
  }

  return v9;
}

+ (id)coderMatchingName:(id)name locale:(id)locale
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  localeCopy = locale;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5808;
  v20 = __Block_byref_object_dispose__5809;
  v21 = 0;
  v15 = MEMORY[0x277D85DD0];
  LDEnumerateAssetDataItems();
  if (v17[5])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.triemap", nameCopy, v15, 3221225472, __43__HCHuffmanCoder_coderMatchingName_locale___block_invoke, &unk_278730200, &v16];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.htbl", nameCopy];
    v10 = [v17[5] URLByAppendingPathComponent:v8];
    v11 = [v17[5] URLByAppendingPathComponent:nameCopy];
    v12 = [self coderFromBurstTrieFile:v10 indexTableFile:v11];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      localeIdentifier = [localeCopy localeIdentifier];
      *buf = 136315394;
      v23 = "+[HCHuffmanCoder coderMatchingName:locale:]";
      v24 = 2112;
      v25 = localeIdentifier;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Couldn't find a Huffman coder for locale: '%@'", buf, 0x16u);
    }

    v12 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

void __43__HCHuffmanCoder_coderMatchingName_locale___block_invoke(uint64_t a1, const void *a2, int a3, int a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, @"DifferentialPrivacyHuffmanCoder", 0) == kCFCompareEqualTo)
  {
    v9 = CFRetain(a2);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a6 = 1;
  }
}

@end