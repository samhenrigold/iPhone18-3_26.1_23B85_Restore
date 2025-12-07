@interface CoreThemeAlignmentMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation CoreThemeAlignmentMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = CoreThemeAlignmentMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v22 createDestinationInstancesForSourceInstance:instance entityMapping:mapping manager:manager error:error];
  name = [mapping name];
  v23[0] = instance;
  v11 = [objc_msgSend(manager destinationInstancesForEntityMappingNamed:name sourceInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v23, 1)), "firstObject"}];
  v12 = [instance valueForKey:@"production"];
  if ([objc_msgSend(v12 "entity")])
  {
    v13 = [v12 valueForKey:@"alignmentRectString"];
    v14 = MEMORY[0x277CCAE60];
    v24 = NSRectFromString(v13);
    v15 = v14;
  }

  else
  {
    v16 = *MEMORY[0x277CCA868];
    v17 = *(MEMORY[0x277CCA868] + 8);
    v18 = *(MEMORY[0x277CCA868] + 16);
    v19 = *(MEMORY[0x277CCA868] + 24);
    v25.origin.x = *MEMORY[0x277CCA868];
    v25.origin.y = v17;
    v25.size.width = v18;
    v25.size.height = v19;
    v13 = NSStringFromRect(v25);
    v15 = MEMORY[0x277CCAE60];
    v24.origin.x = v16;
    v24.origin.y = v17;
    v24.size.width = v18;
    v24.size.height = v19;
  }

  v20 = [v15 valueWithRect:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];
  [v11 setValue:v13 forKey:@"alignmentRectString"];
  [v11 setValue:v20 forKey:@"alignmentRect"];
  return v9;
}

- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v7.receiver = self;
  v7.super_class = CoreThemeAlignmentMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createRelationshipsForDestinationInstance:instance entityMapping:mapping manager:manager error:error];
}

@end