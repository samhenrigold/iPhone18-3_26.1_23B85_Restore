@interface GEOCompanionRouteContext
- (id)simpleDescription;
- (int)origin;
@end

@implementation GEOCompanionRouteContext

- (id)simpleDescription
{
  if ([(GEOCompanionRouteContext *)self hasTimestamp])
  {
    [(GEOCompanionRouteContext *)self timestamp];
    legacyTimestamp = v3;
    v5 = "";
  }

  else
  {
    legacyTimestamp = [(GEOCompanionRouteContext *)self legacyTimestamp];
    v5 = " (legacy)";
  }

  v6 = MEMORY[0x1E696AEC0];
  origin = [(GEOCompanionRouteContext *)self origin];
  if (origin >= 3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", origin];
  }

  else
  {
    v8 = off_1E705AC60[origin];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:legacyTimestamp];
  v10 = [v6 stringWithFormat:@"{%@:%@%s}", v8, v9, v5];

  return v10;
}

- (int)origin
{
  if ((*&self->_flags & 4) != 0)
  {
    return self->_origin;
  }

  else
  {
    return 0;
  }
}

@end