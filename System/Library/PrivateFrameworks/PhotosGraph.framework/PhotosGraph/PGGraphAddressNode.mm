@interface PGGraphAddressNode
+ (MANodeFilter)impreciseFilter;
+ (MANodeFilter)preciseFilter;
+ (MARelation)areaOfAddress;
+ (MARelation)cityOfAddress;
+ (MARelation)countryOfAddress;
+ (MARelation)countyOfAddress;
+ (MARelation)districtOfAddress;
+ (MARelation)frequentLocationOfAddress;
+ (MARelation)homeOfAddress;
+ (MARelation)homeWorkOfAddress;
+ (MARelation)languageOfAddress;
+ (MARelation)momentOfAddress;
+ (MARelation)numberOfAddress;
+ (MARelation)stateOfAddress;
+ (MARelation)streetOfAddress;
+ (MARelation)workOfAddress;
+ (id)continentOfAddress;
+ (id)filter;
+ (id)subcontinentOfAddress;
+ (void)setCoordinate:(CLLocationCoordinate2D)coordinate onAddressNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isPersonHomeOrWorkAddress;
- (CLLocation)location;
- (CLLocationCoordinate2D)coordinate;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSString)description;
- (PGGraphAddressNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphAddressNode)initWithLocationMode:(int64_t)mode coordinate:(CLLocationCoordinate2D)coordinate name:(id)name;
- (PGGraphAddressNodeCollection)collection;
- (PPLocationNamedEntities)pg_locationNamedEntity;
- (id)featureIdentifier;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
@end

@implementation PGGraphAddressNode

- (PPLocationNamedEntities)pg_locationNamedEntity
{
  v3 = objc_alloc_init(MEMORY[0x277D3A3E0]);
  collection = [(PGGraphAddressNode *)self collection];
  streetNodes = [collection streetNodes];
  anyNode = [streetNodes anyNode];
  name = [anyNode name];
  [v3 setStreetAddress:name];

  cityNodes = [collection cityNodes];
  anyNode2 = [cityNodes anyNode];
  name2 = [anyNode2 name];
  [v3 setCity:name2];

  stateNodes = [collection stateNodes];
  anyNode3 = [stateNodes anyNode];
  name3 = [anyNode3 name];
  [v3 setStateOrProvince:name3];

  countryNodes = [collection countryNodes];
  anyNode4 = [countryNodes anyNode];
  name4 = [anyNode4 name];
  [v3 setCountry:name4];

  location = [(PGGraphAddressNode *)self location];
  [v3 setLocation:location];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@|%@", v5, self->_uuid];

  return v6;
}

- (PGGraphAddressNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphAddressNodeCollection alloc] initWithNode:self];

  return v2;
}

- (BOOL)isPersonHomeOrWorkAddress
{
  v2 = [(MANode *)self anyEdgeWithLabel:@"IS_HOME_WORK" domain:202];
  v3 = v2 != 0;

  return v3;
}

- (CLLocation)location
{
  p_coordinate = &self->_coordinate;
  if (CLLocationCoordinate2DIsValid(self->_coordinate))
  {
    v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:p_coordinate->latitude longitude:p_coordinate->longitude];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = +[PGGraphAddressNode filter];
  uuid = self->_uuid;
  v8 = @"uuid";
  v9[0] = uuid;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 filterBySettingProperties:v5];

  return v6;
}

- (NSString)description
{
  locationMode = self->_locationMode;
  if (locationMode > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278886058[locationMode];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"PGGraphAddressNode (%@, <%f, %f>, %@)", self->_name, *&self->_coordinate.latitude, *&self->_coordinate.longitude, v5, v2, v3];
}

- (id)propertyForKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"lm"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_locationMode];
LABEL_8:
    v8 = v5;
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"lat"])
  {
    v6 = MEMORY[0x277CCABB0];
    latitude = self->_coordinate.latitude;
LABEL_7:
    v5 = [v6 numberWithDouble:latitude];
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"lng"])
  {
    v6 = MEMORY[0x277CCABB0];
    latitude = self->_coordinate.longitude;
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"name"])
  {
    v10 = 56;
LABEL_16:
    v5 = *(&self->super.super.super.super.super.isa + v10);
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"uuid"])
  {
    v10 = 64;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v11 = 138412290;
    v12 = keyCopy;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphAddressNode.", &v11, 0xCu);
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)propertyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_locationMode];
  [v3 setObject:v4 forKeyedSubscript:@"lm"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinate.latitude];
  [v3 setObject:v5 forKeyedSubscript:@"lat"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coordinate.longitude];
  [v3 setObject:v6 forKeyedSubscript:@"lng"];

  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_uuid forKeyedSubscript:@"uuid"];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"lm"];
    v7 = v6;
    v14 = 0;
    if (!v6 || self->_locationMode == [v6 shortValue])
    {

      v8 = [v5 objectForKeyedSubscript:@"lat"];
      v7 = v8;
      if (!v8 || ([v8 doubleValue], v9 == self->_coordinate.latitude))
      {

        v10 = [v5 objectForKeyedSubscript:@"lng"];
        v7 = v10;
        if (!v10 || ([v10 doubleValue], v11 == self->_coordinate.longitude))
        {

          v12 = [v5 objectForKeyedSubscript:@"name"];
          v7 = v12;
          if (!v12 || [v12 isEqual:self->_name])
          {

            v13 = [v5 objectForKeyedSubscript:@"uuid"];
            v7 = v13;
            if (!v13 || [v13 isEqual:self->_uuid])
            {
              v14 = 1;
            }
          }
        }
      }
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (PGGraphAddressNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v29 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"lm"];
  integerValue = [v7 integerValue];

  v9 = [propertiesCopy objectForKeyedSubscript:@"lat"];
  v10 = [propertiesCopy objectForKeyedSubscript:@"lng"];
  v11 = v10;
  if (v9 && v10)
  {
    [v9 doubleValue];
    v13 = v12;
    [v11 doubleValue];
    v15 = CLLocationCoordinate2DMake(v13, v14);
    latitude = v15.latitude;
    longitude = v15.longitude;
  }

  else
  {
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
  }

  v18 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v19 = [v18 copy];

  longitude = [(PGGraphAddressNode *)self initWithLocationMode:integerValue coordinate:v19 name:latitude, longitude];
  v21 = [propertiesCopy objectForKeyedSubscript:@"uuid"];
  v22 = v21;
  if (v21 && ([v21 isEqualToString:longitude->_uuid] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      uuid = longitude->_uuid;
      v25 = 138412546;
      v26 = uuid;
      v27 = 2112;
      v28 = v22;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Address node has a different uuid than expected, '%@' vs '%@'", &v25, 0x16u);
    }

    objc_storeStrong(&longitude->_uuid, v22);
  }

  return longitude;
}

- (PGGraphAddressNode)initWithLocationMode:(int64_t)mode coordinate:(CLLocationCoordinate2D)coordinate name:(id)name
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PGGraphAddressNode;
  v11 = [(PGGraphLocationNode *)&v19 init];
  v12 = v11;
  if (v11)
  {
    *(v11 + 6) = mode;
    v13 = v11 + 72;
    *(v11 + 9) = latitude;
    *(v11 + 10) = longitude;
    objc_storeStrong(v11 + 7, name);
    locationMode = v12->_locationMode;
    if (locationMode > 3)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_278886058[locationMode];
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%f, %f>|%@|%@", *v13, *&v12->_coordinate.longitude, v12->_name, v15];
    uuid = v12->_uuid;
    v12->_uuid = v16;
  }

  return v12;
}

+ (MARelation)frequentLocationOfAddress
{
  v2 = +[PGGraphFrequentLocationAtEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)areaOfAddress
{
  v2 = +[PGGraphAreaEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)momentOfAddress
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphAddressEdge filter];
  inRelation = [v3 inRelation];
  v10[0] = inRelation;
  v5 = +[PGGraphMomentNode filter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (MARelation)languageOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLanguageEdge filter];
  outRelation2 = [v8 outRelation];
  v13[2] = outRelation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (id)continentOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationContinentNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (id)subcontinentOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationSubcontinentNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (MARelation)countryOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationCountryNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (MARelation)stateOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationStateNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (MARelation)countyOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationCountyNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (MARelation)cityOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationCityNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (MARelation)districtOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationDistrictNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (MARelation)streetOfAddress
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  outRelation = [v5 outRelation];
  transitiveClosure = [outRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphLocationStreetNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (MARelation)numberOfAddress
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphLocationEdge filter];
  outRelation = [v3 outRelation];
  v10[0] = outRelation;
  v5 = +[PGGraphLocationNumberNode filter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (MARelation)homeWorkOfAddress
{
  v2 = +[PGGraphIsHomeWorkEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)workOfAddress
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphIsHomeWorkEdge filter];
  outRelation = [v3 outRelation];
  v10[0] = outRelation;
  v5 = +[PGGraphHomeWorkNode workFilter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (MARelation)homeOfAddress
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphIsHomeWorkEdge filter];
  outRelation = [v3 outRelation];
  v10[0] = outRelation;
  v5 = +[PGGraphHomeWorkNode homeFilter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (void)setCoordinate:(CLLocationCoordinate2D)coordinate onAddressNodeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"lat";
  v8 = MEMORY[0x277CCABB0];
  graphCopy = graph;
  v10 = [v8 numberWithDouble:latitude];
  v13[1] = @"lng";
  v14[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v14[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [graphCopy persistModelProperties:v12 forNodeWithIdentifier:identifier clobberExisting:0];
}

+ (MANodeFilter)impreciseFilter
{
  v7[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v6 = @"lm";
  v7[0] = &unk_2844862A0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [filter filterBySettingProperties:v3];

  return v4;
}

+ (MANodeFilter)preciseFilter
{
  v7[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v6 = @"lm";
  v7[0] = &unk_284486288;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [filter filterBySettingProperties:v3];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Address" domain:200];

  return v2;
}

@end