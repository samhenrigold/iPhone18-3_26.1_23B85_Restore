@interface MCMContainerSchemaContext
+ (MCMContainerSchemaContext)contextWithHomeDirectoryURL:(id)l containerPath:(id)path finalContainerPath:(id)containerPath POSIXMode:(unsigned __int16)mode POSIXOwner:(id)owner containerClass:(unint64_t)class dataProtectionClass:(int)protectionClass libraryRepair:(id)self0 identifier:(id)self1;
- (MCMContainerSchemaContext)initWithHomeDirectoryURL:(id)l containerPath:(id)path finalContainerPath:(id)containerPath POSIXMode:(unsigned __int16)mode POSIXOwner:(id)owner containerClass:(unint64_t)class dataProtectionClass:(int)protectionClass libraryRepair:(id)self0 identifier:(id)self1;
@end

@implementation MCMContainerSchemaContext

- (MCMContainerSchemaContext)initWithHomeDirectoryURL:(id)l containerPath:(id)path finalContainerPath:(id)containerPath POSIXMode:(unsigned __int16)mode POSIXOwner:(id)owner containerClass:(unint64_t)class dataProtectionClass:(int)protectionClass libraryRepair:(id)self0 identifier:(id)self1
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  pathCopy = path;
  containerPathCopy = containerPath;
  ownerCopy = owner;
  repairCopy = repair;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = MCMContainerSchemaContext;
  v19 = [(MCMContainerSchemaContext *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_homeDirectoryURL, l);
    objc_storeStrong(&v20->_containerPath, path);
    objc_storeStrong(&v20->_finalContainerPath, containerPath);
    v20->_posixMode = mode;
    objc_storeStrong(&v20->_posixOwner, owner);
    v20->_containerClass = class;
    v20->_dataProtectionClass = protectionClass;
    objc_storeStrong(&v20->_libraryRepair, repair);
    objc_storeStrong(&v20->_identifier, identifier);
  }

  return v20;
}

+ (MCMContainerSchemaContext)contextWithHomeDirectoryURL:(id)l containerPath:(id)path finalContainerPath:(id)containerPath POSIXMode:(unsigned __int16)mode POSIXOwner:(id)owner containerClass:(unint64_t)class dataProtectionClass:(int)protectionClass libraryRepair:(id)self0 identifier:(id)self1
{
  modeCopy = mode;
  identifierCopy = identifier;
  repairCopy = repair;
  ownerCopy = owner;
  containerPathCopy = containerPath;
  pathCopy = path;
  lCopy = l;
  LODWORD(v26) = protectionClass;
  v24 = [[self alloc] initWithHomeDirectoryURL:lCopy containerPath:pathCopy finalContainerPath:containerPathCopy POSIXMode:modeCopy POSIXOwner:ownerCopy containerClass:class dataProtectionClass:v26 libraryRepair:repairCopy identifier:identifierCopy];

  return v24;
}

@end