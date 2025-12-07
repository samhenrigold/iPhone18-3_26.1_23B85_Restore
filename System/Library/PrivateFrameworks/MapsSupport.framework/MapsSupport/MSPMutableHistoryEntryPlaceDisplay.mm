@interface MSPMutableHistoryEntryPlaceDisplay
- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object;
- (GEOMapItem)geoMapItem;
- (MSPMutableHistoryEntryPlaceDisplay)initWithStorage:(id)storage;
- (NSUUID)supersededSearchStorageIdentifier;
- (id)transferToImmutableIfValidWithError:(id *)error;
- (void)setGeoMapItem:(id)item;
- (void)setSupersededSearchStorageIdentifier:(id)identifier;
@end

@implementation MSPMutableHistoryEntryPlaceDisplay

- (MSPMutableHistoryEntryPlaceDisplay)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    storageCopy = objc_alloc_init(MSPHistoryEntryStorage);
    [(MSPHistoryEntryStorage *)storageCopy setSearchType:3];
    v5 = objc_alloc_init(MSPPlaceDisplay);
    [(MSPHistoryEntryStorage *)storageCopy setPlaceDisplay:v5];
  }

  v14.receiver = self;
  v14.super_class = MSPMutableHistoryEntryPlaceDisplay;
  v6 = [(MSPMutableHistoryEntry *)&v14 initWithStorage:storageCopy];
  v7 = v6;
  if (!v6 || (-[MSPMutableHistoryEntry storage](v6, "storage"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 searchType], v8, v9 == 3) && (-[MSPMutableHistoryEntry storage](v7, "storage"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "placeDisplay"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)transferToImmutableIfValidWithError:(id *)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  geoMapItem = [(MSPMutableHistoryEntryPlaceDisplay *)self geoMapItem];

  if (!geoMapItem)
  {
    [v5 addObject:@"geoMapItem"];
  }

  geoMapItem2 = [(MSPMutableHistoryEntryPlaceDisplay *)self geoMapItem];
  isValid = [geoMapItem2 isValid];

  if ((isValid & 1) == 0)
  {
    [v5 addObject:@"geoMapItem"];
  }

  if ([v5 count])
  {
    if (error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v12[0] = @"MSPContainerUntransferableObject";
      v12[1] = @"MSPContainerUnavailableKeys";
      v13[0] = self;
      v13[1] = v5;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      *error = [v9 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:1 userInfo:v10];

      error = 0;
    }
  }

  else
  {
    [(MSPMutableHistoryEntry *)self _markImmutable];
    error = self;
  }

  return error;
}

- (GEOMapItem)geoMapItem
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  placeDisplay = [storage placeDisplay];
  placeMapItemStorage = [placeDisplay placeMapItemStorage];

  return placeMapItemStorage;
}

- (void)setGeoMapItem:(id)item
{
  itemCopy = item;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [MEMORY[0x277D0EBC0] mapItemStorageForGEOMapItem:itemCopy];

  storage = [(MSPMutableHistoryEntry *)self storage];
  placeDisplay = [storage placeDisplay];
  [placeDisplay setPlaceMapItemStorage:v7];
}

- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object
{
  objectCopy = object;
  geoMapItem = [(MSPMutableHistoryEntryPlaceDisplay *)self geoMapItem];
  geoMapItem2 = [objectCopy geoMapItem];

  LOBYTE(objectCopy) = GEOMapItemIsEqualToMapItemForPurpose();
  return objectCopy;
}

- (NSUUID)supersededSearchStorageIdentifier
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  placeDisplay = [storage placeDisplay];
  supersededSearchIdentifier = [placeDisplay supersededSearchIdentifier];

  if (supersededSearchIdentifier)
  {
    v5 = [MEMORY[0x277CCAD78] _maps_UUIDWithUUIDString:supersededSearchIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSupersededSearchStorageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  uUIDString = [identifierCopy UUIDString];

  v5 = [uUIDString copy];
  storage = [(MSPMutableHistoryEntry *)self storage];
  placeDisplay = [storage placeDisplay];
  [placeDisplay setSupersededSearchIdentifier:v5];
}

@end