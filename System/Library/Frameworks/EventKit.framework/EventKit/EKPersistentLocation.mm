@interface EKPersistentLocation
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)semanticIdentifier;
@end

@implementation EKPersistentLocation

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_3 != -1)
  {
    +[EKPersistentLocation defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_3;

  return v3;
}

+ (id)relations
{
  if (relations_onceToken_6 != -1)
  {
    +[EKPersistentLocation relations];
  }

  v3 = relations_relations_6;

  return v3;
}

void __47__EKPersistentLocation_defaultPropertiesToLoad__block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992A30];
  v5[0] = *MEMORY[0x1E6992A88];
  v5[1] = v0;
  v1 = *MEMORY[0x1E6992A60];
  v5[2] = *MEMORY[0x1E6992A58];
  v5[3] = v1;
  v2 = *MEMORY[0x1E6992A68];
  v5[4] = *MEMORY[0x1E6992A48];
  v5[5] = v2;
  v5[6] = *MEMORY[0x1E6992A80];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v4 = defaultPropertiesToLoad_defaultPropertiesToLoad_3;
  defaultPropertiesToLoad_defaultPropertiesToLoad_3 = v3;
}

void __33__EKPersistentLocation_relations__block_invoke()
{
  v0 = *MEMORY[0x1E69926D8];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69926D8], *MEMORY[0x1E6992580], *MEMORY[0x1E69926F8], *MEMORY[0x1E69925A8], 0}];
  v8 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v1 ownsRelated:0];

  [v8 setInversePropertyIsApplicable:&__block_literal_global_11];
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = *MEMORY[0x1E6992A40];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:v0];
  v5 = [EKRelation relationWithEntityName:@"Alarm" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v6 = [v2 initWithObjectsAndKeys:{v8, v3, v5, *MEMORY[0x1E6992A38], 0}];
  v7 = relations_relations_6;
  relations_relations_6 = v6;
}

BOOL __33__EKPersistentLocation_relations__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 primitiveRelationValueForKey:v6];
    v10 = v9 == v8;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentLocation);
  title = [(EKPersistentLocation *)self title];
  [(EKPersistentLocation *)v4 setTitle:title];

  address = [(EKPersistentLocation *)self address];
  [(EKPersistentLocation *)v4 setAddress:address];

  latitude = [(EKPersistentLocation *)self latitude];
  [(EKPersistentLocation *)v4 setLatitude:latitude];

  longitude = [(EKPersistentLocation *)self longitude];
  [(EKPersistentLocation *)v4 setLongitude:longitude];

  contactLabel = [(EKPersistentLocation *)self contactLabel];
  [(EKPersistentLocation *)v4 setContactLabel:contactLabel];

  mapKitHandle = [(EKPersistentLocation *)self mapKitHandle];
  [(EKPersistentLocation *)v4 setMapKitHandle:mapKitHandle];

  radius = [(EKPersistentLocation *)self radius];
  [(EKPersistentLocation *)v4 setRadius:radius];

  routing = [(EKPersistentLocation *)self routing];
  [(EKPersistentLocation *)v4 setRouting:routing];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(EKPersistentLocation *)self title];
  address = [(EKPersistentLocation *)self address];
  latitude = [(EKPersistentLocation *)self latitude];
  longitude = [(EKPersistentLocation *)self longitude];
  contactLabel = [(EKPersistentLocation *)self contactLabel];
  radius = [(EKPersistentLocation *)self radius];
  routing = [(EKPersistentLocation *)self routing];
  v12 = [v3 stringWithFormat:@"%@ <%p> {title = %@ address = %@; lat = %@; long = %@; abID = %@; radius = %@, routing = %@}", v4, self, title, address, latitude, longitude, contactLabel, radius, routing];;

  return v12;
}

- (id)semanticIdentifier
{
  title = [(EKPersistentLocation *)self title];
  address = [(EKPersistentLocation *)self address];
  mapKitHandle = [(EKPersistentLocation *)self mapKitHandle];
  contactLabel = [(EKPersistentLocation *)self contactLabel];
  latitude = [(EKPersistentLocation *)self latitude];
  longitude = [(EKPersistentLocation *)self longitude];
  radius = [(EKPersistentLocation *)self radius];
  v10 = [EKStructuredLocationSemanticIdentifierGenerator semanticIdentifierForLocationWithTitle:title address:address mapKitHandle:mapKitHandle contactLabel:contactLabel latitude:latitude longitude:longitude radius:radius];

  return v10;
}

@end