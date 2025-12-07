@interface NMSPartialDownloadableItem
- (BOOL)isEqual:(id)equal;
- (NMSPartialDownloadableItem)initWithMediaLibraryIdentifier:(id)identifier externalLibraryIdentifier:(id)libraryIdentifier size:(unint64_t)size itemType:(unint64_t)type manuallyAdded:(BOOL)added minimumSize:(unint64_t)minimumSize offset:(unint64_t)offset;
- (id)description;
- (unint64_t)hash;
@end

@implementation NMSPartialDownloadableItem

- (NMSPartialDownloadableItem)initWithMediaLibraryIdentifier:(id)identifier externalLibraryIdentifier:(id)libraryIdentifier size:(unint64_t)size itemType:(unint64_t)type manuallyAdded:(BOOL)added minimumSize:(unint64_t)minimumSize offset:(unint64_t)offset
{
  v11.receiver = self;
  v11.super_class = NMSPartialDownloadableItem;
  result = [(NMSDownloadableItem *)&v11 initWithMediaLibraryIdentifier:identifier externalLibraryIdentifier:libraryIdentifier size:size itemType:type manuallyAdded:added];
  if (result)
  {
    result->_minimumSize = minimumSize;
    result->_offset = offset;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = NMSPartialDownloadableItem;
    if ([(NMSDownloadableItem *)&v12 isEqual:v6]&& (v7 = [(NMSPartialDownloadableItem *)self offset], v7 == [(NMSPartialDownloadableItem *)v6 offset]) && (v8 = [(NMSPartialDownloadableItem *)self minimumSize], v8 == [(NMSPartialDownloadableItem *)v6 minimumSize]))
    {
      v9 = [(NMSDownloadableItem *)self size];
      v10 = v9 == [(NMSDownloadableItem *)v6 size];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = NMSPartialDownloadableItem;
  v3 = self->_offset ^ [(NMSDownloadableItem *)&v6 hash];
  minimumSize = self->_minimumSize;
  return v3 ^ minimumSize ^ [(NMSDownloadableItem *)self size];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = NMSPartialDownloadableItem;
  v4 = [(NMSDownloadableItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ - minimumSize: %llu - offset: %llu>", v4, -[NMSPartialDownloadableItem minimumSize](self, "minimumSize"), -[NMSPartialDownloadableItem offset](self, "offset")];

  return v5;
}

@end