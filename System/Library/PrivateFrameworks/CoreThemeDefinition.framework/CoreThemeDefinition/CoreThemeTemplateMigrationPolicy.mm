@interface CoreThemeTemplateMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation CoreThemeTemplateMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v7.receiver = self;
  v7.super_class = CoreThemeTemplateMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:instance entityMapping:mapping manager:manager error:error];
}

- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CoreThemeTemplateMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v13 createRelationshipsForDestinationInstance:instance entityMapping:mapping manager:manager error:error];
  name = [mapping name];
  v14[0] = instance;
  LODWORD(name) = [objc_msgSend(objc_msgSend(objc_msgSend(manager sourceInstancesForEntityMappingNamed:name destinationInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v14, 1)), "objectAtIndex:", 0), "valueForKey:", @"template", "BOOLValue"}];
  v11 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RenderingMode"];
  [v11 setPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"identifier = %d", name ^ 1)}];
  [instance setValue:objc_msgSend(objc_msgSend(objc_msgSend(manager forKey:{"destinationContext"), "executeFetchRequest:error:", v11, 0), "firstObject"), @"templateRenderingMode"}];
  return v9;
}

@end