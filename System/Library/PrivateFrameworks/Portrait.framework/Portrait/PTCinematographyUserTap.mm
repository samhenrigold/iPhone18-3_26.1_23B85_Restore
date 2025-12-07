@interface PTCinematographyUserTap
- (NSNumber)trackNumber;
- (PTCinematographyUserTap)initWithTime:(id *)time tappedDetection:(id)detection strong:(BOOL)strong group:(BOOL)group;
- (id)focusIdentifier;
- (int64_t)groupIdentifier;
- (int64_t)trackIdentifier;
@end

@implementation PTCinematographyUserTap

- (PTCinematographyUserTap)initWithTime:(id *)time tappedDetection:(id)detection strong:(BOOL)strong group:(BOOL)group
{
  groupCopy = group;
  detectionCopy = detection;
  trackNumber = [detectionCopy trackNumber];

  if (trackNumber)
  {
    v21.receiver = self;
    v21.super_class = PTCinematographyUserTap;
    v14 = [(PTCinematographyUserTap *)&v21 init];
    v15 = v14;
    if (v14)
    {
      v16 = *&time->var0;
      *(v14 + 5) = time->var3;
      *(v14 + 24) = v16;
      objc_storeStrong(v14 + 2, detection);
      v15[8] = strong;
      v17 = groupCopy && PTGroupIDIsValid([detectionCopy groupIdentifier]);
      v15[9] = v17;
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    v18 = _PTLogSystem(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyUserTap initWithTime:v18 tappedDetection:? strong:? group:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)focusIdentifier
{
  detection = [(PTCinematographyUserTap *)self detection];
  focusIdentifier = [detection focusIdentifier];

  return focusIdentifier;
}

- (int64_t)trackIdentifier
{
  detection = [(PTCinematographyUserTap *)self detection];
  trackIdentifier = [detection trackIdentifier];

  return trackIdentifier;
}

- (NSNumber)trackNumber
{
  detection = [(PTCinematographyUserTap *)self detection];
  trackNumber = [detection trackNumber];

  return trackNumber;
}

- (int64_t)groupIdentifier
{
  detection = [(PTCinematographyUserTap *)self detection];
  groupIdentifier = [detection groupIdentifier];

  return groupIdentifier;
}

@end