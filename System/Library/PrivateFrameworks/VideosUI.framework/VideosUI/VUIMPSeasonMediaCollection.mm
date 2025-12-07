@interface VUIMPSeasonMediaCollection
- (VUIMPSeasonMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (VUIMPSeasonMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection requestedProperties:(id)properties;
@end

@implementation VUIMPSeasonMediaCollection

- (VUIMPSeasonMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection requestedProperties:(id)properties
{
  libraryCopy = library;
  collectionCopy = collection;
  propertiesCopy = properties;
  if (libraryCopy)
  {
    if (collectionCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaItemCollection"}];
    if (propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  if (!collectionCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (propertiesCopy)
  {
    goto LABEL_4;
  }

LABEL_8:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
LABEL_4:
  representativeItem = [collectionCopy representativeItem];
  v12 = [VUIMPSeasonMediaCollectionIdentifier seasonIdentifierWithMediaItem:representativeItem];
  v13 = v12;
  if (v12)
  {
    v14 = VUIMPSeasonMediaCollectionKind(v12);
    v18.receiver = self;
    v18.super_class = VUIMPSeasonMediaCollection;
    v15 = [(VUIMPMediaCollection *)&v18 initWithMediaLibrary:libraryCopy mediaItemCollection:collectionCopy identifier:v13 requestedProperties:propertiesCopy kind:v14];

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIMPSeasonMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D940];
  v10 = NSStringFromSelector(a2);
  [v8 raise:v9 format:{@"The %@ initializer is not available.", v10}];

  return 0;
}

@end