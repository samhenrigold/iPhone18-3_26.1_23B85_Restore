@interface MCMContainerStagingPath
+ (Class)_containerClassPathClass;
+ (id)stagingContainerPathForDestinationContainerPath:(id)path stagingPathIdentifier:(id)identifier;
- (void)setDestinationContainerPath:(id)path;
@end

@implementation MCMContainerStagingPath

- (void)setDestinationContainerPath:(id)path
{
  p_destinationContainerPath = &self->_destinationContainerPath;

  objc_storeStrong(p_destinationContainerPath, path);
}

+ (id)stagingContainerPathForDestinationContainerPath:(id)path stagingPathIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  containerClassPath = [pathCopy containerClassPath];
  userIdentity = [containerClassPath userIdentity];
  v9 = +[MCMContainerPath containerPathForUserIdentity:containerClass:containerPathIdentifier:](MCMContainerStagingPath, "containerPathForUserIdentity:containerClass:containerPathIdentifier:", userIdentity, [containerClassPath containerClass], identifierCopy);

  [v9 setDestinationContainerPath:pathCopy];

  return v9;
}

+ (Class)_containerClassPathClass
{

  return objc_opt_class();
}

@end