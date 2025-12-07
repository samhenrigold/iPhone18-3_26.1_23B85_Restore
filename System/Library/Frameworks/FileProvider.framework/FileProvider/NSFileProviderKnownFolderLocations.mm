@interface NSFileProviderKnownFolderLocations
- (NSFileProviderKnownFolderLocations)init;
- (NSFileProviderKnownFolderLocations)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)providedKnownFolders;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderKnownFolderLocations

- (NSFileProviderKnownFolderLocations)init
{
  v3.receiver = self;
  v3.super_class = NSFileProviderKnownFolderLocations;
  result = [(NSFileProviderKnownFolderLocations *)&v3 init];
  if (result)
  {
    result->_shouldCreateBinaryCompatibilitySymlink = 1;
  }

  return result;
}

- (NSFileProviderKnownFolderLocations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NSFileProviderKnownFolderLocations;
  v5 = [(NSFileProviderKnownFolderLocations *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeBoolForKey:@"_shouldCreateBinaryCompatibilitySymlink"];
    v5->_shouldCreateBinaryCompatibilitySymlink = v6;
    v7 = knownFolderLocationConcreteClasses(v6);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_desktopLocation"];
    desktopLocation = v5->_desktopLocation;
    v5->_desktopLocation = v8;

    v11 = knownFolderLocationConcreteClasses(v10);
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_documentsLocation"];
    documentsLocation = v5->_documentsLocation;
    v5->_documentsLocation = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shouldCreateBinaryCompatibilitySymlink = self->_shouldCreateBinaryCompatibilitySymlink;
  coderCopy = coder;
  [coderCopy encodeBool:shouldCreateBinaryCompatibilitySymlink forKey:@"_shouldCreateBinaryCompatibilitySymlink"];
  [coderCopy encodeObject:self->_desktopLocation forKey:@"_desktopLocation"];
  [coderCopy encodeObject:self->_documentsLocation forKey:@"_documentsLocation"];
}

- (unint64_t)providedKnownFolders
{
  desktopLocation = self->_desktopLocation;
  v3 = desktopLocation == 0;
  v4 = desktopLocation != 0;
  v5 = 2;
  if (!v3)
  {
    v5 = 3;
  }

  if (self->_documentsLocation)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (id)description
{
  v2 = 78;
  if (self->_shouldCreateBinaryCompatibilitySymlink)
  {
    v2 = 89;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<KFLocations desktop:%@ documents:%@ lnk:%c>", self->_desktopLocation, self->_documentsLocation, v2];
}

@end