@interface GEOComposedRouteStep
- (BOOL)isStartOrResumeStep;
- (GEOComposedRoute)composedRoute;
- (GEOComposedRouteStep)getNextStep;
- (GEOPolylineCoordinateRange)routeCoordinateRange;
- (NSString)maneuverRoadName;
- (_NSRange)pointRange;
- (int)maneuverType;
- (int)transportType;
@end

@implementation GEOComposedRouteStep

- (GEOComposedRoute)composedRoute
{
  WeakRetained = objc_loadWeakRetained(&self->_composedRoute);

  return WeakRetained;
}

- (GEOComposedRouteStep)getNextStep
{
  composedRoute = [(GEOComposedRouteStep *)self composedRoute];
  steps = [composedRoute steps];
  v5 = [steps count];

  if (v5 && (v6 = -[GEOComposedRouteStep stepIndex](self, "stepIndex") + 1, -[GEOComposedRouteStep composedRoute](self, "composedRoute"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 stepsCount], v7, v6 < v8))
  {
    composedRoute2 = [(GEOComposedRouteStep *)self composedRoute];
    steps2 = [composedRoute2 steps];
    v11 = [steps2 objectAtIndex:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (GEOPolylineCoordinateRange)routeCoordinateRange
{
  endRouteCoordinate = self->_endRouteCoordinate;
  LODWORD(v3) = HIDWORD(*&self->_startRouteCoordinate);
  v4 = 0xBF80000000000000;
  v5 = floorf(v3);
  v6 = vcvtms_u32_f32(v3) + *&self->_startRouteCoordinate;
  if (v3 >= 0.0)
  {
    v4 = COERCE_UNSIGNED_INT(v3 - v5) << 32;
  }

  else
  {
    v6 = 0;
  }

  v7 = endRouteCoordinate.offset < 0.0;
  v8 = (vcvtms_u32_f32(endRouteCoordinate.offset) + endRouteCoordinate.index) | (COERCE_UNSIGNED_INT(endRouteCoordinate.offset - floorf(endRouteCoordinate.offset)) << 32);
  if (v7)
  {
    v9 = 0xBF80000000000000;
  }

  else
  {
    v9 = v8;
  }

  v10 = (v4 | v6);
  result.end = v9;
  result.start = v10;
  return result;
}

- (BOOL)isStartOrResumeStep
{
  geoStep = [(GEOComposedRouteStep *)self geoStep];

  if (!geoStep)
  {
    return 0;
  }

  geoStep2 = [(GEOComposedRouteStep *)self geoStep];
  maneuverType = [geoStep2 maneuverType];

  return maneuverType == 17 || maneuverType == 85;
}

- (NSString)maneuverRoadName
{
  selfCopy = self;
  v34 = *MEMORY[0x1E69E9840];
  maneuverRoadName = self->_maneuverRoadName;
  if (!maneuverRoadName)
  {
    geoStep = [(GEOComposedRouteStep *)selfCopy geoStep];
    v5 = geoStep;
    if (!geoStep)
    {
LABEL_31:

      maneuverRoadName = selfCopy->_maneuverRoadName;
      goto LABEL_32;
    }

    v27 = geoStep;
    v28 = selfCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    signposts = [geoStep signposts];
    v7 = [signposts countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      name3 = 0;
      name2 = 0;
      name4 = 0;
      v12 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(signposts);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          name = [v14 name];
          v16 = [name length];

          if (v16)
          {
            signType = [v14 signType];
            if (signType == 3)
            {
              if (!name2)
              {
                name2 = [v14 name];
              }
            }

            else if (signType == 2)
            {
              if (!name3)
              {
                name3 = [v14 name];
              }
            }

            else if (signType == 1 && name4 == 0)
            {
              name4 = [v14 name];
            }
          }
        }

        v8 = [signposts countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      name3 = 0;
      name2 = 0;
      name4 = 0;
    }

    if ([name2 length])
    {
      v19 = name2;
      v5 = v27;
      selfCopy = v28;
    }

    else
    {
      v5 = v27;
      firstNameInfo = [v27 firstNameInfo];
      name5 = [firstNameInfo name];
      v23 = [name5 length];

      selfCopy = v28;
      if (v23)
      {
        firstNameInfo2 = [v27 firstNameInfo];
        name6 = [firstNameInfo2 name];
        v25 = v28->_maneuverRoadName;
        v28->_maneuverRoadName = name6;

        goto LABEL_30;
      }

      if ([name4 length])
      {
        v19 = name4;
      }

      else
      {
        if (![name3 length])
        {
          firstNameInfo2 = v28->_maneuverRoadName;
          v28->_maneuverRoadName = &stru_1EF7F3698;
          goto LABEL_30;
        }

        v19 = name3;
      }
    }

    firstNameInfo2 = selfCopy->_maneuverRoadName;
    selfCopy->_maneuverRoadName = v19;
LABEL_30:

    goto LABEL_31;
  }

LABEL_32:

  return maneuverRoadName;
}

- (int)transportType
{
  v2 = self->_routeSegmentType - 1;
  if (v2 > 5)
  {
    return 4;
  }

  else
  {
    return dword_188032810[v2];
  }
}

- (int)maneuverType
{
  geoStep = self->_geoStep;
  if (geoStep)
  {
    LODWORD(geoStep) = [(GEOStep *)geoStep maneuverType];
  }

  return geoStep;
}

- (_NSRange)pointRange
{
  v2 = self->_endRouteCoordinate.index - self->_startRouteCoordinate.index + 1;
  index = self->_startRouteCoordinate.index;
  result.length = v2;
  result.location = index;
  return result;
}

@end