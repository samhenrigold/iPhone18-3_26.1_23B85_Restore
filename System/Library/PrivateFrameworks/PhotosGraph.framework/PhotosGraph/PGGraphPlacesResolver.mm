@interface PGGraphPlacesResolver
+ (id)_businessItemsAtCoordinate:(CLLocationCoordinate2D)coordinate inCache:(id)cache;
+ (id)_clusteredRegionsFromFeeder:(id)feeder;
+ (id)poiStringFromSpatialLookupCategory:(int64_t)category;
+ (id)resolvePlacesForMomentNode:(id)node feeder:(id)feeder poiCache:(id)cache;
+ (id)resolvedPlaceForRegion:(id)region withPlaceItems:(id)items;
@end

@implementation PGGraphPlacesResolver

+ (id)_businessItemsAtCoordinate:(CLLocationCoordinate2D)coordinate inCache:(id)cache
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  cacheCopy = cache;
  v18.latitude = latitude;
  v18.longitude = longitude;
  v7 = CLLocationCoordinate2DIsValid(v18);
  v8 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x277CBFBC8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v12 = [v9 initWithCenter:uUIDString radius:latitude identifier:{longitude, 100.0}];

    v13 = [cacheCopy businessItemsForRegion:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v8;
    }

    v8 = v15;
  }

  return v8;
}

+ (id)_clusteredRegionsFromFeeder:(id)feeder
{
  allItems = [feeder allItems];
  v4 = [MEMORY[0x277D3AD58] performClustering:0 dataset:allItems progressBlock:&__block_literal_global_47222];
  allKeys = [v4 allKeys];

  return allKeys;
}

+ (id)resolvedPlaceForRegion:(id)region withPlaceItems:(id)items
{
  v46 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  itemsCopy = items;
  v7 = [MEMORY[0x277CBEB58] set];
  [regionCopy center];
  v9 = v8;
  v11 = v10;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        categoryNames = [v17 categoryNames];
        if ([categoryNames count])
        {
          region = [v17 region];
          [region center];
          v21 = v20;
          v23 = v22;
          v24 = [region containsCoordinate:{v9, v11}];
          v25 = [regionCopy containsCoordinate:{v21, v23}];
          if ((v24 & 1) != 0 || v25)
          {
            [v7 addObjectsFromArray:categoryNames];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v14);
  }

  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = v7;
  v28 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v37;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v36 + 1) + 8 * j);
        v33 = [PGGraphResolvedPlace alloc];
        v34 = [(PGGraphResolvedPlace *)v33 initWithPlaceOfInterestType:v32 confidence:1.0, v36];
        [v26 addObject:v34];
      }

      v29 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v29);
  }

  return v26;
}

+ (id)poiStringFromSpatialLookupCategory:(int64_t)category
{
  v3 = 0;
  switch(category)
  {
    case 0:
    case 2:
    case 3:
      v3 = +[PGPhotosGraphProfile poiEntertainment];
      break;
    case 1:
      v3 = +[PGPhotosGraphProfile poiAmusementPark];
      break;
    case 4:
      v3 = +[PGPhotosGraphProfile poiStadium];
      break;
    case 6:
    case 7:
      v3 = +[PGPhotosGraphProfile poiCulture];
      break;
    case 8:
      v3 = +[PGPhotosGraphProfile poiMuseum];
      break;
    case 9:
      v3 = +[PGPhotosGraphProfile poiRestaurant];
      break;
    case 10:
      v3 = +[PGPhotosGraphProfile poiNightlife];
      break;
    case 11:
      v3 = +[PGPhotosGraphProfile poiPark];
      break;
    case 12:
      v3 = +[PGPhotosGraphProfile poiTravel];
      break;
    case 17:
      v3 = +[PGPhotosGraphProfile poiActivity];
      break;
    case 18:
      v3 = +[PGPhotosGraphProfile poiDiving];
      break;
    case 19:
      v3 = +[PGPhotosGraphProfile poiHiking];
      break;
    case 20:
      v3 = +[PGPhotosGraphProfile poiPerformance];
      break;
    case 21:
      v3 = +[PGPhotosGraphProfile poiHospital];
      break;
    default:
      break;
  }

  return v3;
}

+ (id)resolvePlacesForMomentNode:(id)node feeder:(id)feeder poiCache:(id)cache
{
  v25 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  cacheCopy = cache;
  if (feederCopy)
  {
    v8 = [objc_opt_class() _clusteredRegionsFromFeeder:feederCopy];
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = objc_opt_class();
          [v15 center];
          v17 = [v16 _businessItemsAtCoordinate:cacheCopy inCache:?];
          if ([v17 count])
          {
            v18 = [objc_opt_class() resolvedPlaceForRegion:v15 withPlaceItems:v17];
            [array addObjectsFromArray:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

@end