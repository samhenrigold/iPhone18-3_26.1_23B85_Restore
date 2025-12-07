@interface CoreThemeSliceMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation CoreThemeSliceMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = CoreThemeSliceMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v15 createDestinationInstancesForSourceInstance:instance entityMapping:mapping manager:manager error:error];
  name = [mapping name];
  v16[0] = instance;
  v11 = [objc_msgSend(manager destinationInstancesForEntityMappingNamed:name sourceInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v16, 1)), "firstObject"}];
  v12 = [instance valueForKey:@"sliceRectString"];
  v13 = MEMORY[0x277CCAE60];
  v17 = NSRectFromString(v12);
  [v11 setValue:objc_msgSend(v13 forKey:{"valueWithRect:", v17.origin.x, v17.origin.y, v17.size.width, v17.size.height), @"sliceRect"}];
  return v9;
}

- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v7.receiver = self;
  v7.super_class = CoreThemeSliceMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createRelationshipsForDestinationInstance:instance entityMapping:mapping manager:manager error:error];
}

@end