@interface MNRouteDivergenceResults
- (id)description;
@end

@implementation MNRouteDivergenceResults

- (id)description
{
  v30 = *MEMORY[0x1E69E9840];
  p_results = &self->_results;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_results, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *p_results;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        [v7 routeCoordinate];
        v9 = GEOPolylineCoordinateAsString();
        [v7 locationCoordinate];
        v11 = v10;
        [v7 locationCoordinate];
        v13 = v12;
        resultType = [v7 resultType];
        v15 = @"None";
        if (resultType == 1)
        {
          v15 = @"Divergence";
        }

        if (resultType == 2)
        {
          v15 = @"Convergence";
        }

        v16 = v15;
        v17 = [v8 stringWithFormat:@"%@ (%f, %f) - %@", v9, v11, v13, v16];
        [v3 addObject:v17];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  v18 = MEMORY[0x1E696AEC0];
  routeID = self->_routeID;
  v20 = [v3 componentsJoinedByString:@"\n    "];
  v21 = [v18 stringWithFormat:@"Route ID: %@\n    %@", routeID, v20];

  return v21;
}

@end