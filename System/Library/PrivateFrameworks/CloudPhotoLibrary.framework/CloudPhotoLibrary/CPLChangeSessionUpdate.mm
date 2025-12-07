@interface CPLChangeSessionUpdate
- (CPLChangeSessionUpdate)initWithCoder:(id)coder;
- (CPLChangeSessionUpdate)initWithStore:(id)store;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLChangeSessionUpdate

- (void)encodeWithCoder:(id)coder
{
  libraryVersion = self->_libraryVersion;
  coderCopy = coder;
  [coderCopy encodeObject:libraryVersion forKey:@"libraryVersion"];
  [coderCopy encodeObject:self->_queuedDate forKey:@"date"];
}

- (CPLChangeSessionUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CPLChangeSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v12 init];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryVersion"], v6 = objc_claimAutoreleasedReturnValue(), libraryVersion = v5->_libraryVersion, v5->_libraryVersion = v6, libraryVersion, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"date"), v8 = objc_claimAutoreleasedReturnValue(), queuedDate = v5->_queuedDate, v5->_queuedDate = v8, queuedDate, !v5->_libraryVersion))
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (CPLChangeSessionUpdate)initWithStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = CPLChangeSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v11 init];
  if (v5)
  {
    createNewLibraryVersion = [storeCopy createNewLibraryVersion];
    libraryVersion = v5->_libraryVersion;
    v5->_libraryVersion = createNewLibraryVersion;

    date = [MEMORY[0x1E695DF00] date];
    queuedDate = v5->_queuedDate;
    v5->_queuedDate = date;
  }

  return v5;
}

@end