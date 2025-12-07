@interface NMAPIModelObjectRequest
- (Class)responseParserClass;
- (NMAPIModelObjectRequest)initWithModelObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPIModelObjectRequest

- (NMAPIModelObjectRequest)initWithModelObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = NMAPIModelObjectRequest;
  v5 = [(MPStoreModelRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model Object: %@", v5->_modelObject];
    [(NMAPIModelObjectRequest *)v5 setLabel:v6];

    [(NMAPIModelObjectRequest *)v5 setModelObject:objectCopy];
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  v41[2] = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v7 = bagCopy;
  if (self->_modelObject)
  {
    v8 = MusicURLPathStorefrontWithURLBag(bagCopy);
    if (!v8)
    {
      v15 = NMLogForCategory(9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [NMAPIFitnessMultiroomRequest urlComponentsWithStoreURLBag:error:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *error = v14 = 0;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifiers = [(MPModelObject *)self->_modelObject identifiers];
      universalStore = [identifiers universalStore];
      globalPlaylistID = [universalStore globalPlaylistID];

      v12 = MediaAPIPlaylistsPathString;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = MEMORY[0x277CCABB0];
          identifiers2 = [(MPModelObject *)self->_modelObject identifiers];
          universalStore2 = [identifiers2 universalStore];
          v30 = [v27 numberWithLongLong:{objc_msgSend(universalStore2, "adamID")}];
          globalPlaylistID = [v30 stringValue];

          v20 = @"artists";
          v31 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"includeOnly" value:@"default-playable-content"];
          v41[0] = v31;
          v32 = objc_alloc(MEMORY[0x277CCAD18]);
          v33 = [&unk_286C7E420 componentsJoinedByString:{@", "}];
          v34 = [v32 initWithName:@"views" value:v33];
          v41[1] = v34;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];

          if (globalPlaylistID)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }

        goto LABEL_29;
      }

      v16 = MEMORY[0x277CCABB0];
      identifiers3 = [(MPModelObject *)self->_modelObject identifiers];
      universalStore3 = [identifiers3 universalStore];
      v19 = [v16 numberWithLongLong:{objc_msgSend(universalStore3, "adamID")}];
      globalPlaylistID = [v19 stringValue];

      v12 = MediaAPIAlbumsPathString;
    }

    v20 = *v12;
    v21 = 0;
    if (globalPlaylistID)
    {
LABEL_16:
      if (v20)
      {
        v39.receiver = self;
        v39.super_class = NMAPIModelObjectRequest;
        v14 = [(NMAPIRequest *)&v39 urlComponentsWithStoreURLBag:v7 error:error];
        v22 = MEMORY[0x277CCACA8];
        v40[0] = @"/v1/catalog";
        v40[1] = v8;
        v40[2] = v20;
        v40[3] = globalPlaylistID;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
        v24 = [v22 pathWithComponents:v23];
        [v14 setPath:v24];

        if (v21)
        {
          queryItems = [v14 queryItems];
          v26 = [queryItems arrayByAddingObjectsFromArray:v21];
          [v14 setQueryItems:v26];
        }

        goto LABEL_37;
      }

      v35 = NMLogForCategory(9);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
      }

      if (error)
      {
        v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
        v20 = 0;
LABEL_33:
        v14 = 0;
        *error = v36;
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v20 = 0;
      goto LABEL_36;
    }

LABEL_29:
    v37 = NMLogForCategory(9);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
    }

    if (error)
    {
      v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
      globalPlaylistID = 0;
      goto LABEL_33;
    }

    globalPlaylistID = 0;
LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  v13 = NMLogForCategory(9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_39:

  return v14;
}

- (Class)responseParserClass
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    responseParserClass = objc_opt_class();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NMAPIModelObjectRequest;
    responseParserClass = [(NMAPIRequest *)&v5 responseParserClass];
  }

  return responseParserClass;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NMAPIModelObjectRequest;
  v4 = [(NMAPIRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_modelObject);
  }

  return v5;
}

@end