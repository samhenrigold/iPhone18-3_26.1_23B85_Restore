@interface SHJSONLCustomCatalogContainer
+ (id)customCatalogURLFromURL:(id)l error:(id *)error;
- (BOOL)containsSignatureWithIdentifier:(id)identifier;
- (BOOL)loadFromData:(id)data error:(id *)error;
- (BOOL)loadFromURL:(id)l error:(id *)error;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (NSArray)referenceSignatures;
- (NSData)dataRepresentation;
- (SHJSONLCustomCatalogContainer)init;
- (id)jsonObjectRepresentationWithError:(id *)error;
- (id)matchReferenceAtIndex:(int64_t)index;
- (id)matchReferenceForTrackID:(unint64_t)d;
- (id)mediaItemsForReferenceSignature:(id)signature;
- (id)referenceSignatureForTrackID:(unint64_t)d;
- (int64_t)count;
- (void)addSignature:(id)signature representingMediaItems:(id)items;
- (void)removeSignatureWithID:(id)d;
@end

@implementation SHJSONLCustomCatalogContainer

- (SHJSONLCustomCatalogContainer)init
{
  v8.receiver = self;
  v8.super_class = SHJSONLCustomCatalogContainer;
  v2 = [(SHJSONLCustomCatalogContainer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SHJSONLCustomCatalogTransformer);
    transformer = v2->_transformer;
    v2->_transformer = v3;

    v5 = objc_alloc_init(SHCustomCatalogMemoryStorage);
    container = v2->_container;
    v2->_container = v5;
  }

  return v2;
}

- (BOOL)loadFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v7 = objc_alloc_init(MEMORY[0x277D54E18]);
    transformer = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v7 setDelegate:transformer];

    container = [(SHJSONLCustomCatalogContainer *)self container];
    transformer2 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [transformer2 setDelegate:container];

    v11 = [v7 loadData:dataCopy withCompression:517 error:error];
    transformer3 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [transformer3 reset];
  }

  else
  {
    [SHError annotateClientError:error code:300 underlyingError:0];
    v11 = 0;
  }

  return v11;
}

- (BOOL)loadFromURL:(id)l error:(id *)error
{
  v6 = [SHJSONLCustomCatalogContainer customCatalogURLFromURL:l error:?];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D54E18]);
    transformer = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v7 setDelegate:transformer];

    container = [(SHJSONLCustomCatalogContainer *)self container];
    transformer2 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [transformer2 setDelegate:container];

    v11 = [v7 loadDataFromURL:v6 withCompression:517 error:error];
    transformer3 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [transformer3 reset];
  }

  else
  {
    [SHError annotateClientError:error code:301 underlyingError:0];
    v11 = 0;
  }

  return v11;
}

- (NSData)dataRepresentation
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = [(SHJSONLCustomCatalogContainer *)self jsonObjectRepresentationWithError:&v11];
  v3 = v11;
  v4 = v3;
  if (v2)
  {
    v10 = v3;
    v5 = [MEMORY[0x277D54E20] dataForJSONObjects:v2 compression:517 error:&v10];
    v6 = v10;

    if (v5)
    {
      goto LABEL_10;
    }

    v8 = sh_log_object(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_230F52000, v8, OS_LOG_TYPE_ERROR, "Failed to compress contents: %@", buf, 0xCu);
    }

    v4 = v6;
  }

  else
  {
    v8 = sh_log_object(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_230F52000, v8, OS_LOG_TYPE_ERROR, "Failed to convert catalog contents to json representation: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  v6 = v4;
LABEL_10:

  return v5;
}

- (id)jsonObjectRepresentationWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = +[SHJSONLCustomCatalogTransformer outputFileHeader];
  v6 = [v4 arrayWithObject:v5];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  container = [(SHJSONLCustomCatalogContainer *)self container];
  referenceSignatures = [container referenceSignatures];

  obj = referenceSignatures;
  v9 = [referenceSignatures countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        signature = [v13 signature];
        v15 = [v13 ID];
        v16 = [SHJSONLCustomCatalogTransformer catalogFileRepresentationOfSignature:signature withID:v15];
        [v6 addObject:v16];

        v17 = [(SHJSONLCustomCatalogContainer *)self mediaItemsForReferenceSignature:v13];
        v18 = [v13 ID];
        v19 = [SHJSONLCustomCatalogTransformer catalogFileRepresentationOfMediaItems:v17 withID:v18 error:error];

        if (!v19)
        {

          v20 = 0;
          goto LABEL_11;
        }

        [v6 addObjectsFromArray:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v20 = v6;
LABEL_11:

  return v20;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [SHJSONLCustomCatalogContainer customCatalogURLFromURL:l error:?];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D54E20]) initWithDestination:v6 compression:517];
    v8 = [(SHJSONLCustomCatalogContainer *)self jsonObjectRepresentationWithError:error];
    v9 = v8;
    if (v8)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if (![v7 writeObject:*(*(&v17 + 1) + 8 * i) error:{error, v17}])
            {

              goto LABEL_14;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v15 = [v7 closeWithError:error];
    }

    else
    {
LABEL_14:
      v15 = 0;
    }
  }

  else
  {
    [SHError annotateClientError:error code:301 underlyingError:0];
    v15 = 0;
  }

  return v15;
}

+ (id)customCatalogURLFromURL:(id)l error:(id *)error
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v13 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    [defaultManager fileExistsAtPath:path isDirectory:&v13];

    if (v13 == 1)
    {
      v8 = [lCopy URLByAppendingPathComponent:@"Signatures"];

      sHCustomCatalogContentType = [MEMORY[0x277CE1CB8] SHCustomCatalogContentType];
      preferredFilenameExtension = [sHCustomCatalogContentType preferredFilenameExtension];
      lCopy = [v8 URLByAppendingPathExtension:preferredFilenameExtension];
    }

    lCopy = lCopy;
    v11 = lCopy;
  }

  else
  {
    [SHError annotateClientError:error code:301 underlyingError:0];
    v11 = 0;
  }

  return v11;
}

- (id)mediaItemsForReferenceSignature:(id)signature
{
  signatureCopy = signature;
  container = [(SHJSONLCustomCatalogContainer *)self container];
  v6 = [container mediaItemsForReferenceSignature:signatureCopy];

  return v6;
}

- (id)referenceSignatureForTrackID:(unint64_t)d
{
  container = [(SHJSONLCustomCatalogContainer *)self container];
  v5 = [container referenceSignatureForTrackID:d];

  return v5;
}

- (void)addSignature:(id)signature representingMediaItems:(id)items
{
  itemsCopy = items;
  signatureCopy = signature;
  container = [(SHJSONLCustomCatalogContainer *)self container];
  [container addSignature:signatureCopy representingMediaItems:itemsCopy];
}

- (void)removeSignatureWithID:(id)d
{
  dCopy = d;
  container = [(SHJSONLCustomCatalogContainer *)self container];
  [container removeSignatureWithID:dCopy];
}

- (NSArray)referenceSignatures
{
  container = [(SHJSONLCustomCatalogContainer *)self container];
  referenceSignatures = [container referenceSignatures];

  return referenceSignatures;
}

- (int64_t)count
{
  referenceSignatures = [(SHJSONLCustomCatalogContainer *)self referenceSignatures];
  v3 = [referenceSignatures count];

  return v3;
}

- (id)matchReferenceAtIndex:(int64_t)index
{
  referenceSignatures = [(SHJSONLCustomCatalogContainer *)self referenceSignatures];
  v6 = [referenceSignatures objectAtIndexedSubscript:index];

  v7 = [(SHJSONLCustomCatalogContainer *)self mediaItemsForReferenceSignature:v6];
  v8 = [SHReferenceMatch alloc];
  signature = [v6 signature];
  v10 = [(SHReferenceMatch *)v8 initWithSignature:signature mediaItems:v7];

  return v10;
}

- (id)matchReferenceForTrackID:(unint64_t)d
{
  v4 = [(SHJSONLCustomCatalogContainer *)self referenceSignatureForTrackID:d];
  if (v4)
  {
    v5 = [(SHJSONLCustomCatalogContainer *)self mediaItemsForReferenceSignature:v4];
    v6 = [SHReferenceMatch alloc];
    signature = [v4 signature];
    v8 = [(SHReferenceMatch *)v6 initWithSignature:signature mediaItems:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsSignatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  container = [(SHJSONLCustomCatalogContainer *)self container];
  v6 = [container signatureExistsForIdentifier:identifierCopy];

  return v6;
}

@end