@interface FMLLocation
- (FMLLocation)initWithAddress:(id)address altitude:(double)altitude longitude:(double)longitude speed:(double)speed floorLevel:(int)level horizontalAccuracy:(double)accuracy labels:(id)labels latitude:(double)self0 timestamp:(double)self1 verticalAccuracy:(double)self2 locationType:(int64_t)self3 coarseAddressLabel:(id)self4;
- (id)debugDescription;
- (id)description;
- (id)locationTypeDescription;
@end

@implementation FMLLocation

- (FMLLocation)initWithAddress:(id)address altitude:(double)altitude longitude:(double)longitude speed:(double)speed floorLevel:(int)level horizontalAccuracy:(double)accuracy labels:(id)labels latitude:(double)self0 timestamp:(double)self1 verticalAccuracy:(double)self2 locationType:(int64_t)self3 coarseAddressLabel:(id)self4
{
  v21 = *&level;
  addressCopy = address;
  labelsCopy = labels;
  labelCopy = label;
  v33.receiver = self;
  v33.super_class = FMLLocation;
  v29 = [(FMLLocation *)&v33 init];
  v30 = v29;
  if (v29)
  {
    [(FMLLocation *)v29 setAddress:addressCopy];
    [(FMLLocation *)v30 setAltitude:altitude];
    [(FMLLocation *)v30 setLongitude:longitude];
    [(FMLLocation *)v30 setSpeed:speed];
    [(FMLLocation *)v30 setFloorLevel:v21];
    [(FMLLocation *)v30 setHorizontalAccuracy:accuracy];
    v31 = [labelsCopy copy];
    [(FMLLocation *)v30 setLabels:v31];

    [(FMLLocation *)v30 setLatitude:latitude];
    [(FMLLocation *)v30 setLongitude:longitude];
    [(FMLLocation *)v30 setTimestamp:timestamp];
    [(FMLLocation *)v30 setVerticalAccuracy:verticalAccuracy];
    [(FMLLocation *)v30 setLocationType:type];
    [(FMLLocation *)v30 setCoarseAddressLabel:labelCopy];
  }

  return v30;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(FMLLocation *)self longitude];
  v5 = v4;
  [(FMLLocation *)self latitude];
  v7 = v6;
  locationTypeDescription = [(FMLLocation *)self locationTypeDescription];
  coarseAddressLabel = [(FMLLocation *)self coarseAddressLabel];
  if (coarseAddressLabel)
  {
    coarseAddressLabel2 = [(FMLLocation *)self coarseAddressLabel];
    v11 = [v3 stringWithFormat:@"longitude:%.2f latitude:%.2f type:%@ coarseAddressLabel:%@", v5, v7, locationTypeDescription, coarseAddressLabel2];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"longitude:%.2f latitude:%.2f type:%@ coarseAddressLabel:%@", v5, v7, locationTypeDescription, &stru_285E3BA28];
  }

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMLLocation *)self description];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, v5];

  return v6;
}

- (id)locationTypeDescription
{
  v2 = self->_locationType - 1;
  if (v2 > 2)
  {
    return @"legacy";
  }

  else
  {
    return off_278FFFC18[v2];
  }
}

@end