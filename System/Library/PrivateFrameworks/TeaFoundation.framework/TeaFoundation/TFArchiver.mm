@interface TFArchiver
- (BOOL)archiveDirectory:(id)directory toLocation:(id)location;
- (BOOL)unarchive:(id)unarchive toLocation:(id)location;
@end

@implementation TFArchiver

- (BOOL)archiveDirectory:(id)directory toLocation:(id)location
{
  v11[1] = *MEMORY[0x1E69E9840];
  locationCopy = location;
  directoryCopy = directory;
  BOMCopierNew();
  array = [MEMORY[0x1E695DF70] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v10 = @"createPKZip";
  v11[0] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [directoryCopy fileSystemRepresentation];

  [locationCopy fileSystemRepresentation];
  LODWORD(locationCopy) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  return locationCopy == 0;
}

- (BOOL)unarchive:(id)unarchive toLocation:(id)location
{
  v11[1] = *MEMORY[0x1E69E9840];
  locationCopy = location;
  unarchiveCopy = unarchive;
  BOMCopierNew();
  array = [MEMORY[0x1E695DF70] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v10 = @"extractPKZip";
  v11[0] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [unarchiveCopy fileSystemRepresentation];

  [locationCopy fileSystemRepresentation];
  LODWORD(locationCopy) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  return locationCopy == 0;
}

@end