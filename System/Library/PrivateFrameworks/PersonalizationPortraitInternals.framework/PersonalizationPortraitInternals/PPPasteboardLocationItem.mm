@interface PPPasteboardLocationItem
- (unint64_t)memoryFootprintEstimate;
@end

@implementation PPPasteboardLocationItem

- (unint64_t)memoryFootprintEstimate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(self->_text);
  v4 = __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(self->_bundleIdentifier) + v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSDictionary *)self->_addressComponents objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v4 += __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(*(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

uint64_t __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(void *a1)
{
  v1 = a1;
  if (malloc_size(v1))
  {
    v4 = 0;
    if ([v1 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v4])
    {
      v2 = v4;
    }

    else
    {
      v2 = [v1 lengthOfBytesUsingEncoding:10];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end