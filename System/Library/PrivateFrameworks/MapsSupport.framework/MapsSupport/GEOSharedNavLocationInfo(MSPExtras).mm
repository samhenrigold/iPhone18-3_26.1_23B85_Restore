@interface GEOSharedNavLocationInfo(MSPExtras)
- (__CFString)mspDescription;
- (uint64_t)setMatchedCoordinate:()MSPExtras;
- (unint64_t)matchedCoordinate;
- (void)clearMatchedCoordinate;
- (void)hasMatchedCoordinate;
@end

@implementation GEOSharedNavLocationInfo(MSPExtras)

- (void)hasMatchedCoordinate
{
  result = [self hasMatchedCoordinateIndex];
  if (result)
  {

    return [self hasMatchedCoordinateOffset];
  }

  return result;
}

- (unint64_t)matchedCoordinate
{
  if ([self hasMatchedCoordinate])
  {
    matchedCoordinateIndex = [self matchedCoordinateIndex];
    [self matchedCoordinateOffset];
  }

  else
  {
    matchedCoordinateIndex = *MEMORY[0x277D0E9F8];
    v3 = *(MEMORY[0x277D0E9F8] + 4);
  }

  return matchedCoordinateIndex | (v3 << 32);
}

- (uint64_t)setMatchedCoordinate:()MSPExtras
{
  v4 = HIDWORD(a3);
  [self setMatchedCoordinateIndex:?];
  LODWORD(v5) = v4;

  return [self setMatchedCoordinateOffset:v5];
}

- (void)clearMatchedCoordinate
{
  result = [self hasMatchedCoordinate];
  if (result)
  {
    [self setMatchedCoordinateIndex:0];
    [self setHasMatchedCoordinateIndex:0];
    [self setMatchedCoordinateOffset:0.0];

    return [self setHasMatchedCoordinateOffset:0];
  }

  return result;
}

- (__CFString)mspDescription
{
  if ([self hasCoordinate])
  {
    v2 = MEMORY[0x277CCACA8];
    coordinate = [self coordinate];
    [coordinate lat];
    v5 = v4;
    coordinate2 = [self coordinate];
    [coordinate2 lng];
    v8 = [v2 stringWithFormat:@"(%lf, %lf)", v5, v7];
  }

  else
  {
    v8 = @"(no coordinate)";
  }

  return v8;
}

@end