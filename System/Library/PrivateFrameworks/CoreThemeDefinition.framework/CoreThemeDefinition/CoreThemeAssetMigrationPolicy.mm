@interface CoreThemeAssetMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation CoreThemeAssetMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v7.receiver = self;
  v7.super_class = CoreThemeAssetMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:instance entityMapping:mapping manager:manager error:error];
}

- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = CoreThemeAssetMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v15 createRelationshipsForDestinationInstance:instance entityMapping:mapping manager:manager error:error];
  name = [mapping name];
  v16[0] = instance;
  v11 = [objc_msgSend(manager sourceInstancesForEntityMappingNamed:name destinationInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v16, 1)), "objectAtIndex:", 0}];
  if ([objc_msgSend(objc_msgSend(objc_msgSend(v11 "entity")])
  {
    v12 = [objc_msgSend(v11 valueForKey:{@"template", "BOOLValue"}];
    v13 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RenderingMode"];
    [v13 setPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"identifier = %d", v12 ^ 1u)}];
    [instance setValue:objc_msgSend(objc_msgSend(objc_msgSend(manager forKey:{"destinationContext"), "executeFetchRequest:error:", v13, 0), "firstObject"), @"templateRenderingMode"}];
  }

  return v9;
}

@end