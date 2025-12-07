@interface MOResourceMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
- (id)clonedObjectWithContext:(id)context;
- (id)description;
- (id)getDedupeKeyError:(id *)error;
@end

@implementation MOResourceMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  objectCopy = object;
  contextCopy = context;
  photoAssetCloudIdentifier = [objectCopy photoAssetCloudIdentifier];
  v8 = photoAssetCloudIdentifier;
  if (photoAssetCloudIdentifier)
  {
    v9 = [photoAssetCloudIdentifier length]!= 0;
  }

  else
  {
    v9 = 0;
  }

  if ([objectCopy type] == 2 && !v9)
  {
    data = [objectCopy data];
    v35 = 0;
    v11 = [MOResource getDictionaryForData:data error:&v35];
    v12 = v35;
    v13 = [v11 mutableCopy];

    if (v13)
    {
      v14 = [v13 objectForKey:@"MOPhotoResourceLocalIdentifier"];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 length];
        if (v16)
        {
          v34 = v12;
          v17 = get_system_photo_library(v16);
          v40 = v15;
          v18 = [NSArray arrayWithObjects:&v40 count:1];
          v19 = [v17 cloudIdentifierMappingsForLocalIdentifiers:v18];

          allValues = [v19 allValues];
          firstObject = [allValues firstObject];
          cloudIdentifier = [firstObject cloudIdentifier];
          stringValue = [cloudIdentifier stringValue];

          if (stringValue && [stringValue length])
          {
            v24 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
            v12 = v34;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v37 = stringValue;
              v38 = 2112;
              v39 = v15;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MOResourceMO: Found photo asset cloud identifier (%@) for local asset identifier (%@)", buf, 0x16u);
            }

            v25 = v8;
            v8 = stringValue;
          }

          else
          {
            v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
            v12 = v34;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [MOResourceMO managedObjectWithObject:v15 inManagedObjectContext:v25];
            }
          }

LABEL_20:
          goto LABEL_21;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOResourceMO managedObjectWithObject:v19 inManagedObjectContext:?];
    }

    goto LABEL_20;
  }

LABEL_21:
  v26 = [[MOResourceMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOResourceMO *)v26 setIdentifier:identifier];

  [objectCopy value];
  [(MOResourceMO *)v26 setValue:?];
  name = [objectCopy name];
  [(MOResourceMO *)v26 setName:name];

  assets = [objectCopy assets];
  [(MOResourceMO *)v26 setAssets:assets];

  data2 = [objectCopy data];
  [(MOResourceMO *)v26 setData:data2];

  -[MOResourceMO setType:](v26, "setType:", [objectCopy type]);
  [objectCopy priorityScore];
  [(MOResourceMO *)v26 setPriorityScore:?];
  photoCurationScore = [objectCopy photoCurationScore];
  [(MOResourceMO *)v26 setPhotoCurationScore:photoCurationScore];

  -[MOResourceMO setPhotoFaceCount:](v26, "setPhotoFaceCount:", [objectCopy photoFaceCount]);
  -[MOResourceMO setPhotoAssetMediaType:](v26, "setPhotoAssetMediaType:", [objectCopy photoAssetMediaType]);
  [(MOResourceMO *)v26 setPhotoAssetCloudIdentifier:v8];
  -[MOResourceMO setSourceEventAccessType:](v26, "setSourceEventAccessType:", [objectCopy sourceEventAccessType]);
  sourceEventIdentifier = [objectCopy sourceEventIdentifier];
  [(MOResourceMO *)v26 setSourceEventIdentifier:sourceEventIdentifier];

  return v26;
}

- (id)clonedObjectWithContext:(id)context
{
  contextCopy = context;
  v5 = [[MOResource alloc] initWithResourceMO:self];
  v6 = [MOResourceMO managedObjectWithObject:v5 inManagedObjectContext:contextCopy];

  return v6;
}

- (id)description
{
  context = objc_autoreleasePoolPush();
  identifier = [(MOResourceMO *)self identifier];
  name = [(MOResourceMO *)self name];
  v5 = [MOResource getStringTypeForResources:[(MOResourceMO *)self type]];
  assets = [(MOResourceMO *)self assets];
  photoAssetCloudIdentifier = [(MOResourceMO *)self photoAssetCloudIdentifier];
  v8 = [(MOResourceMO *)self getDedupeKeyError:0];
  data = [(MOResourceMO *)self data];
  v10 = [data length];
  [(MOResourceMO *)self value];
  v12 = v11;
  sourceEventIdentifier = [(MOResourceMO *)self sourceEventIdentifier];
  v14 = [NSString stringWithFormat:@"<MOResourceMO identifier, %@, name, %@, type, %@, assets, %@, photoAssetCloudIdentifier, %@, dedupe key, %@, data.length, %lu, value, %f, sourceEventIdentifier, %@", identifier, name, v5, assets, photoAssetCloudIdentifier, v8, v10, v12, sourceEventIdentifier];

  objc_autoreleasePoolPop(context);

  return v14;
}

- (id)getDedupeKeyError:(id *)error
{
  v5 = objc_autoreleasePoolPush();
  data = [(MOResourceMO *)self data];
  v11 = 0;
  v7 = [MOResource getDedupeKeyForResourceData:data type:[(MOResourceMO *)self type] error:&v11];
  v8 = v11;

  objc_autoreleasePoolPop(v5);
  if (error)
  {
    v9 = v8;
    *error = v8;
  }

  return v7;
}

+ (void)managedObjectWithObject:(uint64_t)a1 inManagedObjectContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MOResourceMO: No photo cloud asset identifier could be found for photo local asset identifier (%@)", &v2, 0xCu);
}

@end