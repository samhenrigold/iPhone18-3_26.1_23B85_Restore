@interface KMMapper_EKEvent
- (KMMapper_EKEvent)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_EKEvent

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  builder = self->_builder;
  eventIdentifier = [objectCopy eventIdentifier];
  v33 = 0;
  v10 = [(KVItemBuilder *)builder setItemType:15 itemId:eventIdentifier error:&v33];
  v11 = v33;
  if (v10)
  {
    v12 = self->_builder;
    title = [objectCopy title];
    v32 = v11;
    v14 = [(KVItemBuilder *)v12 addFieldWithType:650 value:title error:&v32];
    v15 = v32;

    if (v14)
    {
      v27 = v14;
      v28 = title;
      errorCopy = error;
      v16 = self->_builder;
      structuredLocation = [objectCopy structuredLocation];
      title2 = [structuredLocation title];
      location = title2;
      if (!title2)
      {
        location = [objectCopy location];
      }

      v31 = v15;
      v19 = [(KVItemBuilder *)v16 addFieldWithType:651 value:location error:&v31];
      v20 = v31;

      v21 = v19 == 0;
      if (!title2)
      {
      }

      v15 = v20;
      title = v28;
      error = errorCopy;
      v14 = v27;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v23 = self->_builder;
      v30 = v15;
      v24 = [(KVItemBuilder *)v23 buildItemWithError:&v30];
      v11 = v30;

      if (v24)
      {
        v34[0] = v24;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      }

      else
      {
        KMMapperSetBuilderError(error, v11);
        v22 = 0;
      }

      goto LABEL_17;
    }

    v11 = v15;
  }

  else
  {
  }

  KMMapperSetBuilderError(error, v11);
  v22 = 0;
LABEL_17:

  return v22;
}

- (KMMapper_EKEvent)init
{
  v6.receiver = self;
  v6.super_class = KMMapper_EKEvent;
  v2 = [(KMMapper_EKEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end