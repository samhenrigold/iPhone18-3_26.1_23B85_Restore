@interface KMMapper_RTLocationOfInterest
- (KMMapper_RTLocationOfInterest)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_RTLocationOfInterest

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifier = [objectCopy identifier];
  uUIDString = [identifier UUIDString];

  builder = self->_builder;
  v49 = 0;
  v11 = [(KVItemBuilder *)builder setItemType:12 itemId:uUIDString error:&v49];
  v12 = v49;
  preferredName = [objectCopy preferredName];
  if (preferredName)
  {
    v14 = self->_builder;
    v48 = v12;
    v15 = [(KVItemBuilder *)v14 addFieldWithType:551 value:preferredName error:&v48];
    v16 = v48;

    if (!v15)
    {
      KMMapperSetBuilderError(error, v16);
      v34 = 0;
      goto LABEL_25;
    }

    v12 = v16;
  }

  mapItem = [objectCopy mapItem];
  name = [mapItem name];
  if (!name)
  {
    goto LABEL_7;
  }

  v19 = self->_builder;
  v47 = v12;
  v20 = [(KVItemBuilder *)v19 addFieldWithType:551 value:name error:&v47];
  v16 = v47;

  if (v20)
  {
    v12 = v16;
LABEL_7:
    v40 = name;
    address = [mapItem address];
    v22 = address;
    if (address)
    {
      v37 = mapItem;
      errorCopy = error;
      v39 = uUIDString;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v36 = address;
      siriVocabularySpatialNames = [address siriVocabularySpatialNames];
      v24 = [siriVocabularySpatialNames countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        while (2)
        {
          v27 = 0;
          v28 = v12;
          do
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(siriVocabularySpatialNames);
            }

            v29 = *(*(&v43 + 1) + 8 * v27);
            v30 = self->_builder;
            v42 = v28;
            v31 = [(KVItemBuilder *)v30 addFieldWithType:552 value:v29 error:&v42];
            v12 = v42;

            if (!v31)
            {
              KMMapperSetBuilderError(errorCopy, v12);
              v34 = 0;
              uUIDString = v39;
              v22 = v36;
              mapItem = v37;
              goto LABEL_23;
            }

            ++v27;
            v28 = v12;
          }

          while (v25 != v27);
          v25 = [siriVocabularySpatialNames countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      error = errorCopy;
      uUIDString = v39;
      v22 = v36;
      mapItem = v37;
    }

    v32 = v12;
    v33 = self->_builder;
    v41 = v12;
    siriVocabularySpatialNames = [(KVItemBuilder *)v33 buildItemWithError:&v41];
    v12 = v41;

    if (siriVocabularySpatialNames)
    {
      v50 = siriVocabularySpatialNames;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    }

    else
    {
      KMMapperSetBuilderError(error, v12);
      v34 = 0;
    }

LABEL_23:

    v16 = v12;
    name = v40;
    goto LABEL_24;
  }

  KMMapperSetBuilderError(error, v16);
  v34 = 0;
LABEL_24:

LABEL_25:

  return v34;
}

- (KMMapper_RTLocationOfInterest)init
{
  v6.receiver = self;
  v6.super_class = KMMapper_RTLocationOfInterest;
  v2 = [(KMMapper_RTLocationOfInterest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end