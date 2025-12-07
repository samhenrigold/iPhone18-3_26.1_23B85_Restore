@interface GEOComposedRouteTraffic
- (NSArray)trafficIncidentOffsets;
- (NSArray)trafficIncidents;
- (id)description;
- (unsigned)trafficColorOffsets;
- (unsigned)trafficColors;
@end

@implementation GEOComposedRouteTraffic

- (NSArray)trafficIncidents
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_incidents;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        incident = [*(*(&v11 + 1) + 8 * i) incident];
        [array addObject:incident];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSArray)trafficIncidentOffsets
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_incidents;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MEMORY[0x1E696AD98];
        [*(*(&v12 + 1) + 8 * i) offsetMeters];
        v10 = [v9 numberWithDouble:?];
        [array addObject:v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [(NSArray *)self->_trafficColors componentsJoinedByString:@", "];
  [string appendFormat:@"%@", v4];

  if ([(NSArray *)self->_incidents count])
  {
    v5 = [(NSArray *)self->_incidents componentsJoinedByString:@"\n\t"];
    [string appendFormat:@"\nIncidents on route:\n\t%@", v5];
  }

  if ([(NSArray *)self->_offRouteIncidents count])
  {
    v6 = [(NSArray *)self->_offRouteIncidents componentsJoinedByString:@"\n\t"];
    [string appendFormat:@"\nIncidents off route:\n\t%@", v6];
  }

  return string;
}

- (unsigned)trafficColors
{
  v17 = *MEMORY[0x1E69E9840];
  data = [MEMORY[0x1E695DF88] data];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_trafficColors;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        color = [*(*(&v12 + 1) + 8 * v8) color];
        [data appendBytes:&color length:4];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  bytes = [data bytes];
  return bytes;
}

- (unsigned)trafficColorOffsets
{
  v18 = *MEMORY[0x1E69E9840];
  data = [MEMORY[0x1E695DF88] data];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_trafficColors;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * v8) offsetMeters];
        v12 = v9;
        [data appendBytes:&v12 length:4];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  bytes = [data bytes];
  return bytes;
}

@end